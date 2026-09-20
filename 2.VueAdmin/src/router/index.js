	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import forum from '@/views/forum/list'
	import zhaopinxinxi from '@/views/zhaopinxinxi/list'
	import juanzengwupin from '@/views/juanzengwupin/list'
	import yonghu from '@/views/yonghu/list'
	import juankuanxinxi from '@/views/juankuanxinxi/list'
	import jiaruxiaoyouhui from '@/views/jiaruxiaoyouhui/list'
	import config from '@/views/config/list'
	import xiaoyouhui from '@/views/xiaoyouhui/list'
	import users from '@/views/users/list'
	import choukuanxinxi from '@/views/choukuanxinxi/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/news',
			name: '新闻资讯',
			component: news
		}
		,{
			path: '/forum',
			name: '论坛交流',
			component: forum
		}
		,{
			path: '/zhaopinxinxi',
			name: '招聘信息',
			component: zhaopinxinxi
		}
		,{
			path: '/juanzengwupin',
			name: '捐赠物品',
			component: juanzengwupin
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/juankuanxinxi',
			name: '捐款信息',
			component: juankuanxinxi
		}
		,{
			path: '/jiaruxiaoyouhui',
			name: '加入校友会',
			component: jiaruxiaoyouhui
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/xiaoyouhui',
			name: '校友会',
			component: xiaoyouhui
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/choukuanxinxi',
			name: '筹款信息',
			component: choukuanxinxi
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
