//
//  KCMainViewController.m
//  xiAnimation
//
//  Created by mxbj on 2017/4/11.
//  Copyright © 2017年 Animation. All rights reserved.
//

#import "KCMainViewController.h"
#import "KCView.h"

@interface KCMainViewController ()

@end

@implementation KCMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    KCView *view=[[KCView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    view.backgroundColor=[UIColor colorWithRed:249.0/255.0 green:249.0/255.0 blue:249.0/255.0 alpha:1];
//    private String nation = "'中国','阿富汗','阿尔巴尼亚','阿尔及利亚','美国萨摩亚群岛','安道尔','安哥拉','安圭拉岛','安提瓜岛和巴布达岛','阿根廷','亚美尼亚','阿鲁巴岛','在海上','澳大利亚','奥地利','阿塞拜疆','巴哈马群岛','巴林','孟加拉国','巴巴多斯','白俄罗斯','比利时','伯利兹','贝宁','百慕大','不丹','玻利维亚','博内尔岛','波斯尼亚-黑塞哥维那','博茨瓦纳','巴西','英属印度洋领地','文莱','保加利亚','布基纳法索','缅甸',BRND:布隆迪,CBDA:柬埔寨,CMRN:喀麦隆,CAN:加拿大,CAVI:佛得角,CAYI:开曼群岛,CAFR:中非共和国,CHAD:乍得,CHIL:智利,CHRI:圣诞岛,COCI:科科斯基林群岛,COL:哥伦比亚,COMO:科摩罗,COD:刚果民主共和国的,CONB:刚果共和国的,CKIS:库克群岛,CSTR:哥斯达黎加,IVCO:科特迪瓦,HRV:克罗地亚,CUBA:古巴,CUR:库拉索岛,CYPR:塞浦路斯,CZEC:捷克共和国,DEN:丹麦,DJI:吉布提,DOMN:多米尼加,DOMR:多明尼加共和国,ECUA:厄瓜多尔,EGYP:埃及,ELSL:萨尔瓦多,EGN:赤道几内亚,ERI:厄立特里亚,EST:爱沙尼亚,ETH:埃塞俄比亚,FKLI:福克兰群岛,FRO:法罗群岛,FIJI:斐济,FIN:芬兰,FRAN:法国,FRGN:法属圭亚那,FPOL:法属波利尼西亚,FSAT:法属南部和南极领地,GABN:加蓬,GAM:冈比亚的,XGZ:加沙地带,GEO:格鲁吉亚,GER:德国,GHAN:加纳,GIB:直布罗陀,GRC:希腊,GRLD:格陵兰岛,GREN:格林纳达,GUAD:瓜德罗普岛,GUAM:关岛,GUAT:危地马拉,GNEA:几内亚,GUIB:几内亚比绍,GUY:圭亚那,HAT:海地,HMD:赫德和麦克唐纳群岛,VAT:教廷（梵蒂冈城）,HOND:洪都拉斯,HOKO:香港BNO,HNK:香港SAR,XHI:豪兰岛,HUNG:匈牙利,ICLD:冰岛,XIR:在空中,IND:印度,IDSA:印度尼西亚,IRAN:伊朗,IRAQ:伊拉克,IRE:爱尔兰,ISRL:以色列,ITLY:意大利,JAM:贾马西亚,JPN:日本,JRSM:耶路撒冷,JORD:约旦,KAZ:哈萨克斯坦,KENY:肯尼亚,KIRI:基里巴斯,PRK:韩国民主共和国（北）,KOR:韩国，共和国（南）,KSV:科索沃,KUWT:科威特,KGZ:吉尔吉斯斯坦,LAOS:老挝,LATV:拉脱维亚,LEBN:黎巴嫩,LES:莱索托,LIBR:利比里亚,LBYA:利比亚,LCHT:列支敦士登,LITH:立陶宛,LXM:卢森堡,MAC:澳门,MKD:马其顿,MADG:马达加斯加,MALW:马拉维,MLAS:马来西亚,MLDI:马尔登岛,MLDV:马尔代夫,MALI:马里,MLTA:马耳他,RMI:马绍尔群岛,MART:马提尼克,MAUR:毛里塔尼亚,MRTS:毛里求斯,MYT:马约特岛,AGS:墨西哥-阿瓜斯卡连特斯,BC:墨西哥-加利福尼亚州北卡罗来纳州,BCSR:墨西哥-加利福尼亚州BAJA,CAMP:墨西哥-坎佩切,CHIS:墨西哥-芝加哥,CHIH:墨西哥-奇瓦瓦,COAH:墨西哥-科阿韦拉州,COLI:墨西哥-科利马,DF:墨西哥-联邦首都区,DGO:墨西哥-杜兰戈,GTO:墨西哥-瓜纳华托,GRO:墨西哥-格雷罗,HGO:墨西哥-伊达尔戈,JAL:墨西哥-哈利斯科州,MCH:墨西哥-米却肯州,MOR:墨西哥-莫雷洛斯,NAY:墨西哥-纳亚里特州,NL:墨西哥-新列昂,OAX:墨西哥-瓦哈卡,PUE:墨西哥-普埃布拉,QRO:墨西哥-克雷塔罗,QROO:墨西哥-金塔纳罗奥州,SLP:墨西哥-圣路易斯波托西,SIN:墨西哥-锡那罗亚州,SON:墨西哥-索诺拉,MXCO:墨西哥-墨西哥州,TAB:墨西哥-塔巴斯科,TAMP:墨西哥-塔毛利帕斯州,TLAX:墨西哥-特拉斯卡拉,VER:墨西哥-韦拉克鲁斯,YUC:墨西哥-尤卡坦,ZAC:墨西哥-萨卡特卡斯,FSM:密克罗尼西亚,MDWI:中途岛,MLD:摩尔多瓦,MON:摩纳哥,MONG:蒙古,MTG:黑山,MONT:蒙特塞拉特岛,MORO:摩洛哥,MOZ:莫桑比克,NAMB:纳米比亚,NAU:瑙鲁,NEP:尼泊尔,NETH:荷兰,NCAL:新喀里多尼亚,NZLD:新西兰,NIC:尼加拉瓜,NIR:尼日尔,NRA:尼日利亚,NIUE:纽埃,NFK:诺福克岛,MNP:北马里亚纳群岛,NIRE:北爱尔兰,NORW:挪威,OMAN:阿曼,PKST:巴基斯坦,PALA:帕劳,PLMR:帕迈拉环礁,PAN:巴拿马,PNG:巴布亚新几内亚,PARA:巴拉圭,PERU:秘鲁,PHIL:菲律宾,PITC:皮特开恩群岛,POL:波兰,PORT:葡萄牙,PR:波多黎各,QTAR:卡塔尔,REUN:留尼汪岛,ROM:罗马尼亚,RUS:俄罗斯,RWND:卢旺达,SABA:萨巴岛,MAF:圣马丁,WSAM:萨摩亚,SMAR:圣马力诺,STPR:圣多美和普林西比,SARB:沙特阿拉伯,SENG:塞内加尔,SBA:塞尔维亚,SEYC:塞舌尔共和国,SLEO:塞拉利昂共和国,SING:新加坡,STM:圣马丁,SVK:斯洛伐克,SVN:斯洛文尼亚,SLMN:所罗门群岛,SOMA:索马里,SAFR:南非,SGS:南乔治亚州和南部三藩市,SSDN:南苏丹,SPN:西班牙,SRL:斯里兰卡,STBR:圣巴泰勒米岛,STEU:圣圣尤斯特歇斯,SHEL:圣海伦娜,STCN:圣基茨和尼维斯,SLCA:圣露西亚,SPMI:圣皮埃尔和密克隆圣,STVN:圣文森特和格林纳丁斯,SUDA:苏丹,SURM:苏里南,SJM:斯瓦尔巴德岛,SZLD:斯威士兰,SWDN:瑞典,SWTZ:瑞士,SYR:叙利亚,TWAN:台湾,TJK:塔吉克斯坦,TAZN:坦桑尼亚,THAI:泰国,TMOR:东帝汶,TOGO:多哥,TKL:托克劳群岛,TONG:汤加,TRIN:特立尼达和多巴哥,TNSA:突尼斯,TRKY:土耳其,TKM:土库曼斯坦,TCIS:特克斯和凯科斯群岛,TUV:图瓦卢,UGAN:乌干达,UKR:乌克兰,UAE:阿拉伯联合酋长国,GRBR:英国,USA:美利坚合众国,URU:乌拉圭,UZB:乌兹别克斯坦,VANU:瓦努阿图,VENZ:委内瑞拉,VTNM:越南,VI:维尔京群岛（美国）,BRVI:英属维尔京群岛,WKI:威克岛,WAFT:沃利斯和富图纳群岛,XWB:西岸,SSAH:西撒哈拉,YEM:也门,ZAMB:赞比亚,ZIMB:津巴布韦";
    
    
    NSString
    *string = @"'中国','阿富汗',ALB:阿尔巴尼亚,ALGR:阿尔及利亚,ASMO:美国萨摩亚群岛,ANDO:安道尔,ANGL:安哥拉,ANGU:安圭拉岛,ANTI:安提瓜岛和巴布达岛,ARG:阿根廷,ARM:亚美尼亚,ARB:阿鲁巴岛,XAS:在海上,ASTL:澳大利亚,AUST:奥地利,AZR:阿塞拜疆,BAMA:巴哈马群岛,BAHR:巴林,BANG:孟加拉国,BRDO:巴巴多斯,BYS:白俄罗斯,BELG:比利时,BLZ:伯利兹,BENN:贝宁,BERM:百慕大,BHU:不丹,BOL:玻利维亚,BON:博内尔岛,BIH:波斯尼亚-黑塞哥维那,BOT:博茨瓦纳,BRZL:巴西,IOT:英属印度洋领地,BRNI:文莱,BULG:保加利亚,BURK:布基纳法索FASO,BURM:缅甸,BRND:布隆迪,CBDA:柬埔寨,CMRN:喀麦隆,CAN:加拿大,CAVI:佛得角,CAYI:开曼群岛,CAFR:中非共和国,CHAD:乍得,CHIL:智利,CHRI:圣诞岛,COCI:科科斯基林群岛,COL:哥伦比亚,COMO:科摩罗,COD:刚果民主共和国的,CONB:刚果共和国的,CKIS:库克群岛,CSTR:哥斯达黎加,IVCO:科特迪瓦,HRV:克罗地亚,CUBA:古巴,CUR:库拉索岛,CYPR:塞浦路斯,CZEC:捷克共和国,DEN:丹麦,DJI:吉布提,DOMN:多米尼加,DOMR:多明尼加共和国,ECUA:厄瓜多尔,EGYP:埃及,ELSL:萨尔瓦多,EGN:赤道几内亚,ERI:厄立特里亚,EST:爱沙尼亚,ETH:埃塞俄比亚,FKLI:福克兰群岛,FRO:法罗群岛,FIJI:斐济,FIN:芬兰,FRAN:法国,FRGN:法属圭亚那,FPOL:法属波利尼西亚,FSAT:法属南部和南极领地,GABN:加蓬,GAM:冈比亚的,XGZ:加沙地带,GEO:格鲁吉亚,GER:德国,GHAN:加纳,GIB:直布罗陀,GRC:希腊,GRLD:格陵兰岛,GREN:格林纳达,GUAD:瓜德罗普岛,GUAM:关岛,GUAT:危地马拉,GNEA:几内亚,GUIB:几内亚比绍,GUY:圭亚那,HAT:海地,HMD:赫德和麦克唐纳群岛,VAT:教廷（梵蒂冈城）,HOND:洪都拉斯,HOKO:香港BNO,HNK:香港SAR,XHI:豪兰岛,HUNG:匈牙利,ICLD:冰岛,XIR:在空中,IND:印度,IDSA:印度尼西亚,IRAN:伊朗,IRAQ:伊拉克,IRE:爱尔兰,ISRL:以色列,ITLY:意大利,JAM:贾马西亚,JPN:日本,JRSM:耶路撒冷,JORD:约旦,KAZ:哈萨克斯坦,KENY:肯尼亚,KIRI:基里巴斯,PRK:韩国民主共和国（北）,KOR:韩国，共和国（南）,KSV:科索沃,KUWT:科威特,KGZ:吉尔吉斯斯坦,LAOS:老挝,LATV:拉脱维亚,LEBN:黎巴嫩,LES:莱索托,LIBR:利比里亚,LBYA:利比亚,LCHT:列支敦士登,LITH:立陶宛,LXM:卢森堡,MAC:澳门,MKD:马其顿,MADG:马达加斯加,MALW:马拉维,MLAS:马来西亚,MLDI:马尔登岛,MLDV:马尔代夫,MALI:马里,MLTA:马耳他,RMI:马绍尔群岛,MART:马提尼克,MAUR:毛里塔尼亚,MRTS:毛里求斯,MYT:马约特岛,AGS:墨西哥-阿瓜斯卡连特斯,BC:墨西哥-加利福尼亚州北卡罗来纳州,BCSR:墨西哥-加利福尼亚州BAJA,CAMP:墨西哥-坎佩切,CHIS:墨西哥-芝加哥,CHIH:墨西哥-奇瓦瓦,COAH:墨西哥-科阿韦拉州,COLI:墨西哥-科利马,DF:墨西哥-联邦首都区,DGO:墨西哥-杜兰戈,GTO:墨西哥-瓜纳华托,GRO:墨西哥-格雷罗,HGO:墨西哥-伊达尔戈,JAL:墨西哥-哈利斯科州,MCH:墨西哥-米却肯州,MOR:墨西哥-莫雷洛斯,NAY:墨西哥-纳亚里特州,NL:墨西哥-新列昂,OAX:墨西哥-瓦哈卡,PUE:墨西哥-普埃布拉,QRO:墨西哥-克雷塔罗,QROO:墨西哥-金塔纳罗奥州,SLP:墨西哥-圣路易斯波托西,SIN:墨西哥-锡那罗亚州,SON:墨西哥-索诺拉,MXCO:墨西哥-墨西哥州,TAB:墨西哥-塔巴斯科,TAMP:墨西哥-塔毛利帕斯州,TLAX:墨西哥-特拉斯卡拉,VER:墨西哥-韦拉克鲁斯,YUC:墨西哥-尤卡坦,ZAC:墨西哥-萨卡特卡斯,FSM:密克罗尼西亚,MDWI:中途岛,MLD:摩尔多瓦,MON:摩纳哥,MONG:蒙古,MTG:黑山,MONT:蒙特塞拉特岛,MORO:摩洛哥,MOZ:莫桑比克,NAMB:纳米比亚,NAU:瑙鲁,NEP:尼泊尔,NETH:荷兰,NCAL:新喀里多尼亚,NZLD:新西兰,NIC:尼加拉瓜,NIR:尼日尔,NRA:尼日利亚,NIUE:纽埃,NFK:诺福克岛,MNP:北马里亚纳群岛,NIRE:北爱尔兰,NORW:挪威,OMAN:阿曼,PKST:巴基斯坦,PALA:帕劳,PLMR:帕迈拉环礁,PAN:巴拿马,PNG:巴布亚新几内亚,PARA:巴拉圭,PERU:秘鲁,PHIL:菲律宾,PITC:皮特开恩群岛,POL:波兰,PORT:葡萄牙,PR:波多黎各,QTAR:卡塔尔,REUN:留尼汪岛,ROM:罗马尼亚,RUS:俄罗斯,RWND:卢旺达,SABA:萨巴岛,MAF:圣马丁,WSAM:萨摩亚,SMAR:圣马力诺,STPR:圣多美和普林西比,SARB:沙特阿拉伯,SENG:塞内加尔,SBA:塞尔维亚,SEYC:塞舌尔共和国,SLEO:塞拉利昂共和国,SING:新加坡,STM:圣马丁,SVK:斯洛伐克,SVN:斯洛文尼亚,SLMN:所罗门群岛,SOMA:索马里,SAFR:南非,SGS:南乔治亚州和南部三藩市,SSDN:南苏丹,SPN:西班牙,SRL:斯里兰卡,STBR:圣巴泰勒米岛,STEU:圣圣尤斯特歇斯,SHEL:圣海伦娜,STCN:圣基茨和尼维斯,SLCA:圣露西亚,SPMI:圣皮埃尔和密克隆圣,STVN:圣文森特和格林纳丁斯,SUDA:苏丹,SURM:苏里南,SJM:斯瓦尔巴德岛,SZLD:斯威士兰,SWDN:瑞典,SWTZ:瑞士,SYR:叙利亚,TWAN:台湾,TJK:塔吉克斯坦,TAZN:坦桑尼亚,THAI:泰国,TMOR:东帝汶,TOGO:多哥,TKL:托克劳群岛,TONG:汤加,TRIN:特立尼达和多巴哥,TNSA:突尼斯,TRKY:土耳其,TKM:土库曼斯坦,TCIS:特克斯和凯科斯群岛,TUV:图瓦卢,UGAN:乌干达,UKR:乌克兰,UAE:阿拉伯联合酋长国,GRBR:英国,USA:美利坚合众国,URU:乌拉圭,UZB:乌兹别克斯坦,VANU:瓦努阿图,VENZ:委内瑞拉,VTNM:越南,VI:维尔京群岛（美国）,BRVI:英属维尔京群岛,WKI:威克岛,WAFT:沃利斯和富图纳群岛,XWB:西岸,SSAH:西撒哈拉,YEM:也门,ZAMB:赞比亚,ZIMB:津巴布韦";;
    
    NSRange
    startRange = [string rangeOfString:@","];
    
    NSRange
    endRange = [string rangeOfString:@":"];
    
    NSRange
    range = NSMakeRange(startRange.location
                        + startRange.length,
                        endRange.location
                        - startRange.location
                        - startRange.length);
    
    NSString
    *result = [string substringWithRange:range];
    
    NSLog(@"%@",result);
    
    NSLog(@"你好，你叫什么名字");

    NSLog(@"%@",string);
//    [self.view addSubview:view];
}


@end
