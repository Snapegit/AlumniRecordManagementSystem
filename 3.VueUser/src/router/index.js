import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import newsList from '@/views/pages/news/list'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import xiaoyouhuiList from '@/views/pages/xiaoyouhui/list'
import xiaoyouhuiDetail from '@/views/pages/xiaoyouhui/formModel'
import xiaoyouhuiAdd from '@/views/pages/xiaoyouhui/formAdd'
import jiaruxiaoyouhuiList from '@/views/pages/jiaruxiaoyouhui/list'
import jiaruxiaoyouhuiDetail from '@/views/pages/jiaruxiaoyouhui/formModel'
import jiaruxiaoyouhuiAdd from '@/views/pages/jiaruxiaoyouhui/formAdd'
import zhaopinxinxiList from '@/views/pages/zhaopinxinxi/list'
import zhaopinxinxiDetail from '@/views/pages/zhaopinxinxi/formModel'
import zhaopinxinxiAdd from '@/views/pages/zhaopinxinxi/formAdd'
import forumList from '@/views/pages/forum/list'
import juanzengwupinList from '@/views/pages/juanzengwupin/list'
import juanzengwupinDetail from '@/views/pages/juanzengwupin/formModel'
import juanzengwupinAdd from '@/views/pages/juanzengwupin/formAdd'
import choukuanxinxiList from '@/views/pages/choukuanxinxi/list'
import choukuanxinxiDetail from '@/views/pages/choukuanxinxi/formModel'
import choukuanxinxiAdd from '@/views/pages/choukuanxinxi/formAdd'
import juankuanxinxiList from '@/views/pages/juankuanxinxi/list'
import juankuanxinxiDetail from '@/views/pages/juankuanxinxi/formModel'
import juankuanxinxiAdd from '@/views/pages/juankuanxinxi/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'xiaoyouhuiList',
			component: xiaoyouhuiList
		}, {
			path: 'xiaoyouhuiDetail',
			component: xiaoyouhuiDetail
		}, {
			path: 'xiaoyouhuiAdd',
			component: xiaoyouhuiAdd
		}
		, {
			path: 'jiaruxiaoyouhuiList',
			component: jiaruxiaoyouhuiList
		}, {
			path: 'jiaruxiaoyouhuiDetail',
			component: jiaruxiaoyouhuiDetail
		}, {
			path: 'jiaruxiaoyouhuiAdd',
			component: jiaruxiaoyouhuiAdd
		}
		, {
			path: 'zhaopinxinxiList',
			component: zhaopinxinxiList
		}, {
			path: 'zhaopinxinxiDetail',
			component: zhaopinxinxiDetail
		}, {
			path: 'zhaopinxinxiAdd',
			component: zhaopinxinxiAdd
		}
		, {
			path: 'forumList',
			component: forumList
		}
		, {
			path: 'juanzengwupinList',
			component: juanzengwupinList
		}, {
			path: 'juanzengwupinDetail',
			component: juanzengwupinDetail
		}, {
			path: 'juanzengwupinAdd',
			component: juanzengwupinAdd
		}
		, {
			path: 'choukuanxinxiList',
			component: choukuanxinxiList
		}, {
			path: 'choukuanxinxiDetail',
			component: choukuanxinxiDetail
		}, {
			path: 'choukuanxinxiAdd',
			component: choukuanxinxiAdd
		}
		, {
			path: 'juankuanxinxiList',
			component: juankuanxinxiList
		}, {
			path: 'juankuanxinxiDetail',
			component: juankuanxinxiDetail
		}, {
			path: 'juankuanxinxiAdd',
			component: juankuanxinxiAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
