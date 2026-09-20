const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '招聘信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'招聘信息',
							url:'/index/zhaopinxinxiList'
						},
					]
				},
				{
					name: '筹款信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'筹款信息',
							url:'/index/choukuanxinxiList'
						},
					]
				},
				{
					name: '新闻资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'新闻资讯',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '论坛交流',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'论坛交流',
							url:'/index/forumList'
						},
					]
				},
				{
					name: '捐款信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'捐款信息',
							url:'/index/juankuanxinxiList'
						},
					]
				},
				{
					name: '校友会管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'校友会',
							url:'/index/xiaoyouhuiList'
						},
					]
				},
				{
					name: '捐赠物品管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'捐赠物品',
							url:'/index/juanzengwupinList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "校友录管理系统"
        } 
    }
}
export default config
