#include "stdint.h"
#include "stdio.h"
#include <stdlib.h>

#include "system_lpc17xx.h"
#include "coos.h"

#include "ethernetif.h"
#include "lwip/debug.h"
#include "lwip/opt.h"
#include "lwip/def.h"
#include "lwip/mem.h"
#include "lwip/memp.h"
#include "lwip/pbuf.h"
#include "lwip/sys.h"
#include "lwip/tcpip.h"
#include "lwip/api.h"
#include "lwip/stats.h"
#include "netif/etharp.h"
#include "netif/loopif.h"

#define __INLINE          inline
extern U8 tcp_transfer_init(void);
extern U8 http_init(void);
void lwip_init_task(void);

struct netif *lpc17xx_netif;
struct netif *loop_netif;

int main()
{
	SystemInit();
	printf("aaa");
	CoInitOS();
	lwip_init_task();
	http_init();
	CoStartOS();

	while(1);
}

void lwip_init_task(void)
{
	struct ip_addr ipaddr, netmask, gw;

	tcpip_init(NULL, NULL);

	lpc17xx_netif = mem_malloc(sizeof(struct netif));

	IP4_ADDR(&gw, 192,168,223,2);
	IP4_ADDR(&ipaddr, 192,168,223,17);
	IP4_ADDR(&netmask, 255,255,255,128);

	netif_set_default(netif_add(lpc17xx_netif, &ipaddr, &netmask, &gw, NULL, ethernetif_init, tcpip_input));
	netif_set_up(lpc17xx_netif);
}

