; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7274 () Bool)

(assert start!7274)

(declare-fun b!46511 () Bool)

(declare-fun res!27161 () Bool)

(declare-fun e!29647 () Bool)

(assert (=> b!46511 (=> (not res!27161) (not e!29647))))

(declare-datatypes ((B!894 0))(
  ( (B!895 (val!1034 Int)) )
))
(declare-datatypes ((tuple2!1720 0))(
  ( (tuple2!1721 (_1!870 (_ BitVec 64)) (_2!870 B!894)) )
))
(declare-datatypes ((List!1268 0))(
  ( (Nil!1265) (Cons!1264 (h!1844 tuple2!1720) (t!4301 List!1268)) )
))
(declare-fun l!812 () List!1268)

(declare-fun isStrictlySorted!239 (List!1268) Bool)

(assert (=> b!46511 (= res!27161 (isStrictlySorted!239 (t!4301 l!812)))))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun b!46512 () Bool)

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!45 (List!1268 (_ BitVec 64)) List!1268)

(assert (=> b!46512 (= e!29647 (not (= (removeStrictlySorted!45 (removeStrictlySorted!45 l!812 key1!43) key2!27) (removeStrictlySorted!45 (removeStrictlySorted!45 l!812 key2!27) key1!43))))))

(assert (=> b!46512 (= (removeStrictlySorted!45 (removeStrictlySorted!45 (t!4301 l!812) key1!43) key2!27) (removeStrictlySorted!45 (removeStrictlySorted!45 (t!4301 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1325 0))(
  ( (Unit!1326) )
))
(declare-fun lt!20318 () Unit!1325)

(declare-fun lemmaRemoveStrictlySortedCommutative!18 (List!1268 (_ BitVec 64) (_ BitVec 64)) Unit!1325)

(assert (=> b!46512 (= lt!20318 (lemmaRemoveStrictlySortedCommutative!18 (t!4301 l!812) key1!43 key2!27))))

(declare-fun res!27163 () Bool)

(assert (=> start!7274 (=> (not res!27163) (not e!29647))))

(assert (=> start!7274 (= res!27163 (isStrictlySorted!239 l!812))))

(assert (=> start!7274 e!29647))

(declare-fun e!29648 () Bool)

(assert (=> start!7274 e!29648))

(assert (=> start!7274 true))

(declare-fun b!46513 () Bool)

(declare-fun tp_is_empty!1991 () Bool)

(declare-fun tp!6143 () Bool)

(assert (=> b!46513 (= e!29648 (and tp_is_empty!1991 tp!6143))))

(declare-fun b!46510 () Bool)

(declare-fun res!27162 () Bool)

(assert (=> b!46510 (=> (not res!27162) (not e!29647))))

(assert (=> b!46510 (= res!27162 (is-Cons!1264 l!812))))

(assert (= (and start!7274 res!27163) b!46510))

(assert (= (and b!46510 res!27162) b!46511))

(assert (= (and b!46511 res!27161) b!46512))

(assert (= (and start!7274 (is-Cons!1264 l!812)) b!46513))

(declare-fun m!40823 () Bool)

(assert (=> b!46511 m!40823))

(declare-fun m!40825 () Bool)

(assert (=> b!46512 m!40825))

(declare-fun m!40827 () Bool)

(assert (=> b!46512 m!40827))

(declare-fun m!40829 () Bool)

(assert (=> b!46512 m!40829))

(assert (=> b!46512 m!40827))

(declare-fun m!40831 () Bool)

(assert (=> b!46512 m!40831))

(declare-fun m!40833 () Bool)

(assert (=> b!46512 m!40833))

(declare-fun m!40835 () Bool)

(assert (=> b!46512 m!40835))

(assert (=> b!46512 m!40825))

(declare-fun m!40837 () Bool)

(assert (=> b!46512 m!40837))

(declare-fun m!40839 () Bool)

(assert (=> b!46512 m!40839))

(assert (=> b!46512 m!40835))

(declare-fun m!40841 () Bool)

(assert (=> b!46512 m!40841))

(assert (=> b!46512 m!40831))

(declare-fun m!40843 () Bool)

(assert (=> start!7274 m!40843))

(push 1)

(assert (not b!46513))

(assert (not b!46511))

(assert (not b!46512))

(assert tp_is_empty!1991)

(assert (not start!7274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!46540 () Bool)

(declare-fun e!29671 () Bool)

(declare-fun lt!20321 () List!1268)

(declare-fun containsKey!89 (List!1268 (_ BitVec 64)) Bool)

(assert (=> b!46540 (= e!29671 (not (containsKey!89 lt!20321 key1!43)))))

(declare-fun b!46541 () Bool)

(declare-fun e!29673 () List!1268)

(assert (=> b!46541 (= e!29673 (t!4301 (removeStrictlySorted!45 l!812 key2!27)))))

(declare-fun d!9129 () Bool)

(assert (=> d!9129 e!29671))

(declare-fun res!27182 () Bool)

(assert (=> d!9129 (=> (not res!27182) (not e!29671))))

(assert (=> d!9129 (= res!27182 (isStrictlySorted!239 lt!20321))))

(assert (=> d!9129 (= lt!20321 e!29673)))

(declare-fun c!6287 () Bool)

(assert (=> d!9129 (= c!6287 (and (is-Cons!1264 (removeStrictlySorted!45 l!812 key2!27)) (= (_1!870 (h!1844 (removeStrictlySorted!45 l!812 key2!27))) key1!43)))))

(assert (=> d!9129 (isStrictlySorted!239 (removeStrictlySorted!45 l!812 key2!27))))

(assert (=> d!9129 (= (removeStrictlySorted!45 (removeStrictlySorted!45 l!812 key2!27) key1!43) lt!20321)))

(declare-fun b!46542 () Bool)

(declare-fun e!29672 () List!1268)

(assert (=> b!46542 (= e!29672 Nil!1265)))

(declare-fun b!46543 () Bool)

(declare-fun $colon$colon!43 (List!1268 tuple2!1720) List!1268)

(assert (=> b!46543 (= e!29672 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (removeStrictlySorted!45 l!812 key2!27)) key1!43) (h!1844 (removeStrictlySorted!45 l!812 key2!27))))))

(declare-fun b!46544 () Bool)

(assert (=> b!46544 (= e!29673 e!29672)))

(declare-fun c!6288 () Bool)

(assert (=> b!46544 (= c!6288 (and (is-Cons!1264 (removeStrictlySorted!45 l!812 key2!27)) (not (= (_1!870 (h!1844 (removeStrictlySorted!45 l!812 key2!27))) key1!43))))))

(assert (= (and d!9129 c!6287) b!46541))

(assert (= (and d!9129 (not c!6287)) b!46544))

(assert (= (and b!46544 c!6288) b!46543))

(assert (= (and b!46544 (not c!6288)) b!46542))

(assert (= (and d!9129 res!27182) b!46540))

(declare-fun m!40849 () Bool)

(assert (=> b!46540 m!40849))

(declare-fun m!40851 () Bool)

(assert (=> d!9129 m!40851))

(assert (=> d!9129 m!40827))

(declare-fun m!40853 () Bool)

(assert (=> d!9129 m!40853))

(declare-fun m!40855 () Bool)

(assert (=> b!46543 m!40855))

(assert (=> b!46543 m!40855))

(declare-fun m!40857 () Bool)

(assert (=> b!46543 m!40857))

(assert (=> b!46512 d!9129))

(declare-fun b!46547 () Bool)

(declare-fun e!29674 () Bool)

(declare-fun lt!20324 () List!1268)

(assert (=> b!46547 (= e!29674 (not (containsKey!89 lt!20324 key1!43)))))

(declare-fun b!46548 () Bool)

(declare-fun e!29676 () List!1268)

(assert (=> b!46548 (= e!29676 (t!4301 l!812))))

(declare-fun d!9141 () Bool)

(assert (=> d!9141 e!29674))

(declare-fun res!27183 () Bool)

(assert (=> d!9141 (=> (not res!27183) (not e!29674))))

(assert (=> d!9141 (= res!27183 (isStrictlySorted!239 lt!20324))))

(assert (=> d!9141 (= lt!20324 e!29676)))

(declare-fun c!6289 () Bool)

(assert (=> d!9141 (= c!6289 (and (is-Cons!1264 l!812) (= (_1!870 (h!1844 l!812)) key1!43)))))

(assert (=> d!9141 (isStrictlySorted!239 l!812)))

(assert (=> d!9141 (= (removeStrictlySorted!45 l!812 key1!43) lt!20324)))

(declare-fun b!46549 () Bool)

(declare-fun e!29675 () List!1268)

(assert (=> b!46549 (= e!29675 Nil!1265)))

(declare-fun b!46550 () Bool)

(assert (=> b!46550 (= e!29675 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 l!812) key1!43) (h!1844 l!812)))))

(declare-fun b!46551 () Bool)

(assert (=> b!46551 (= e!29676 e!29675)))

(declare-fun c!6290 () Bool)

(assert (=> b!46551 (= c!6290 (and (is-Cons!1264 l!812) (not (= (_1!870 (h!1844 l!812)) key1!43))))))

(assert (= (and d!9141 c!6289) b!46548))

(assert (= (and d!9141 (not c!6289)) b!46551))

(assert (= (and b!46551 c!6290) b!46550))

(assert (= (and b!46551 (not c!6290)) b!46549))

(assert (= (and d!9141 res!27183) b!46547))

(declare-fun m!40859 () Bool)

(assert (=> b!46547 m!40859))

(declare-fun m!40861 () Bool)

(assert (=> d!9141 m!40861))

(assert (=> d!9141 m!40843))

(assert (=> b!46550 m!40831))

(assert (=> b!46550 m!40831))

(declare-fun m!40863 () Bool)

(assert (=> b!46550 m!40863))

(assert (=> b!46512 d!9141))

(declare-fun b!46566 () Bool)

(declare-fun e!29685 () Bool)

(declare-fun lt!20327 () List!1268)

(assert (=> b!46566 (= e!29685 (not (containsKey!89 lt!20327 key2!27)))))

(declare-fun b!46567 () Bool)

(declare-fun e!29687 () List!1268)

(assert (=> b!46567 (= e!29687 (t!4301 l!812))))

(declare-fun d!9143 () Bool)

(assert (=> d!9143 e!29685))

(declare-fun res!27184 () Bool)

(assert (=> d!9143 (=> (not res!27184) (not e!29685))))

(assert (=> d!9143 (= res!27184 (isStrictlySorted!239 lt!20327))))

(assert (=> d!9143 (= lt!20327 e!29687)))

(declare-fun c!6299 () Bool)

(assert (=> d!9143 (= c!6299 (and (is-Cons!1264 l!812) (= (_1!870 (h!1844 l!812)) key2!27)))))

(assert (=> d!9143 (isStrictlySorted!239 l!812)))

(assert (=> d!9143 (= (removeStrictlySorted!45 l!812 key2!27) lt!20327)))

(declare-fun b!46568 () Bool)

(declare-fun e!29686 () List!1268)

(assert (=> b!46568 (= e!29686 Nil!1265)))

(declare-fun b!46569 () Bool)

(assert (=> b!46569 (= e!29686 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 l!812) key2!27) (h!1844 l!812)))))

(declare-fun b!46570 () Bool)

(assert (=> b!46570 (= e!29687 e!29686)))

(declare-fun c!6300 () Bool)

(assert (=> b!46570 (= c!6300 (and (is-Cons!1264 l!812) (not (= (_1!870 (h!1844 l!812)) key2!27))))))

(assert (= (and d!9143 c!6299) b!46567))

(assert (= (and d!9143 (not c!6299)) b!46570))

(assert (= (and b!46570 c!6300) b!46569))

(assert (= (and b!46570 (not c!6300)) b!46568))

(assert (= (and d!9143 res!27184) b!46566))

(declare-fun m!40865 () Bool)

(assert (=> b!46566 m!40865))

(declare-fun m!40867 () Bool)

(assert (=> d!9143 m!40867))

(assert (=> d!9143 m!40843))

(assert (=> b!46569 m!40825))

(assert (=> b!46569 m!40825))

(declare-fun m!40869 () Bool)

(assert (=> b!46569 m!40869))

(assert (=> b!46512 d!9143))

(declare-fun d!9145 () Bool)

(assert (=> d!9145 (= (removeStrictlySorted!45 (removeStrictlySorted!45 (t!4301 l!812) key1!43) key2!27) (removeStrictlySorted!45 (removeStrictlySorted!45 (t!4301 l!812) key2!27) key1!43))))

(declare-fun lt!20336 () Unit!1325)

(declare-fun choose!287 (List!1268 (_ BitVec 64) (_ BitVec 64)) Unit!1325)

(assert (=> d!9145 (= lt!20336 (choose!287 (t!4301 l!812) key1!43 key2!27))))

(assert (=> d!9145 (isStrictlySorted!239 (t!4301 l!812))))

(assert (=> d!9145 (= (lemmaRemoveStrictlySortedCommutative!18 (t!4301 l!812) key1!43 key2!27) lt!20336)))

(declare-fun bs!2183 () Bool)

(assert (= bs!2183 d!9145))

(assert (=> bs!2183 m!40831))

(assert (=> bs!2183 m!40833))

(assert (=> bs!2183 m!40823))

(assert (=> bs!2183 m!40825))

(assert (=> bs!2183 m!40831))

(declare-fun m!40913 () Bool)

(assert (=> bs!2183 m!40913))

(assert (=> bs!2183 m!40825))

(assert (=> bs!2183 m!40837))

(assert (=> b!46512 d!9145))

(declare-fun b!46605 () Bool)

(declare-fun e!29710 () Bool)

(declare-fun lt!20337 () List!1268)

(assert (=> b!46605 (= e!29710 (not (containsKey!89 lt!20337 key2!27)))))

(declare-fun b!46606 () Bool)

(declare-fun e!29712 () List!1268)

(assert (=> b!46606 (= e!29712 (t!4301 (removeStrictlySorted!45 (t!4301 l!812) key1!43)))))

(declare-fun d!9159 () Bool)

(assert (=> d!9159 e!29710))

(declare-fun res!27195 () Bool)

(assert (=> d!9159 (=> (not res!27195) (not e!29710))))

(assert (=> d!9159 (= res!27195 (isStrictlySorted!239 lt!20337))))

(assert (=> d!9159 (= lt!20337 e!29712)))

(declare-fun c!6313 () Bool)

(assert (=> d!9159 (= c!6313 (and (is-Cons!1264 (removeStrictlySorted!45 (t!4301 l!812) key1!43)) (= (_1!870 (h!1844 (removeStrictlySorted!45 (t!4301 l!812) key1!43))) key2!27)))))

(assert (=> d!9159 (isStrictlySorted!239 (removeStrictlySorted!45 (t!4301 l!812) key1!43))))

(assert (=> d!9159 (= (removeStrictlySorted!45 (removeStrictlySorted!45 (t!4301 l!812) key1!43) key2!27) lt!20337)))

(declare-fun b!46607 () Bool)

(declare-fun e!29711 () List!1268)

(assert (=> b!46607 (= e!29711 Nil!1265)))

(declare-fun b!46608 () Bool)

(assert (=> b!46608 (= e!29711 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (removeStrictlySorted!45 (t!4301 l!812) key1!43)) key2!27) (h!1844 (removeStrictlySorted!45 (t!4301 l!812) key1!43))))))

(declare-fun b!46609 () Bool)

(assert (=> b!46609 (= e!29712 e!29711)))

(declare-fun c!6314 () Bool)

(assert (=> b!46609 (= c!6314 (and (is-Cons!1264 (removeStrictlySorted!45 (t!4301 l!812) key1!43)) (not (= (_1!870 (h!1844 (removeStrictlySorted!45 (t!4301 l!812) key1!43))) key2!27))))))

(assert (= (and d!9159 c!6313) b!46606))

(assert (= (and d!9159 (not c!6313)) b!46609))

(assert (= (and b!46609 c!6314) b!46608))

(assert (= (and b!46609 (not c!6314)) b!46607))

(assert (= (and d!9159 res!27195) b!46605))

(declare-fun m!40917 () Bool)

(assert (=> b!46605 m!40917))

(declare-fun m!40919 () Bool)

(assert (=> d!9159 m!40919))

(assert (=> d!9159 m!40831))

(declare-fun m!40921 () Bool)

(assert (=> d!9159 m!40921))

(declare-fun m!40923 () Bool)

(assert (=> b!46608 m!40923))

(assert (=> b!46608 m!40923))

(declare-fun m!40925 () Bool)

(assert (=> b!46608 m!40925))

(assert (=> b!46512 d!9159))

(declare-fun b!46610 () Bool)

(declare-fun e!29713 () Bool)

(declare-fun lt!20338 () List!1268)

(assert (=> b!46610 (= e!29713 (not (containsKey!89 lt!20338 key1!43)))))

(declare-fun b!46611 () Bool)

(declare-fun e!29715 () List!1268)

(assert (=> b!46611 (= e!29715 (t!4301 (t!4301 l!812)))))

(declare-fun d!9161 () Bool)

(assert (=> d!9161 e!29713))

(declare-fun res!27196 () Bool)

(assert (=> d!9161 (=> (not res!27196) (not e!29713))))

(assert (=> d!9161 (= res!27196 (isStrictlySorted!239 lt!20338))))

(assert (=> d!9161 (= lt!20338 e!29715)))

(declare-fun c!6315 () Bool)

(assert (=> d!9161 (= c!6315 (and (is-Cons!1264 (t!4301 l!812)) (= (_1!870 (h!1844 (t!4301 l!812))) key1!43)))))

(assert (=> d!9161 (isStrictlySorted!239 (t!4301 l!812))))

(assert (=> d!9161 (= (removeStrictlySorted!45 (t!4301 l!812) key1!43) lt!20338)))

(declare-fun b!46612 () Bool)

(declare-fun e!29714 () List!1268)

(assert (=> b!46612 (= e!29714 Nil!1265)))

(declare-fun b!46613 () Bool)

(assert (=> b!46613 (= e!29714 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (t!4301 l!812)) key1!43) (h!1844 (t!4301 l!812))))))

(declare-fun b!46614 () Bool)

(assert (=> b!46614 (= e!29715 e!29714)))

(declare-fun c!6316 () Bool)

(assert (=> b!46614 (= c!6316 (and (is-Cons!1264 (t!4301 l!812)) (not (= (_1!870 (h!1844 (t!4301 l!812))) key1!43))))))

(assert (= (and d!9161 c!6315) b!46611))

(assert (= (and d!9161 (not c!6315)) b!46614))

(assert (= (and b!46614 c!6316) b!46613))

(assert (= (and b!46614 (not c!6316)) b!46612))

(assert (= (and d!9161 res!27196) b!46610))

(declare-fun m!40927 () Bool)

(assert (=> b!46610 m!40927))

(declare-fun m!40929 () Bool)

(assert (=> d!9161 m!40929))

(assert (=> d!9161 m!40823))

(declare-fun m!40931 () Bool)

(assert (=> b!46613 m!40931))

(assert (=> b!46613 m!40931))

(declare-fun m!40933 () Bool)

(assert (=> b!46613 m!40933))

(assert (=> b!46512 d!9161))

(declare-fun b!46615 () Bool)

(declare-fun e!29716 () Bool)

(declare-fun lt!20339 () List!1268)

(assert (=> b!46615 (= e!29716 (not (containsKey!89 lt!20339 key1!43)))))

(declare-fun b!46616 () Bool)

(declare-fun e!29718 () List!1268)

(assert (=> b!46616 (= e!29718 (t!4301 (removeStrictlySorted!45 (t!4301 l!812) key2!27)))))

(declare-fun d!9163 () Bool)

(assert (=> d!9163 e!29716))

(declare-fun res!27197 () Bool)

(assert (=> d!9163 (=> (not res!27197) (not e!29716))))

(assert (=> d!9163 (= res!27197 (isStrictlySorted!239 lt!20339))))

(assert (=> d!9163 (= lt!20339 e!29718)))

(declare-fun c!6317 () Bool)

(assert (=> d!9163 (= c!6317 (and (is-Cons!1264 (removeStrictlySorted!45 (t!4301 l!812) key2!27)) (= (_1!870 (h!1844 (removeStrictlySorted!45 (t!4301 l!812) key2!27))) key1!43)))))

(assert (=> d!9163 (isStrictlySorted!239 (removeStrictlySorted!45 (t!4301 l!812) key2!27))))

(assert (=> d!9163 (= (removeStrictlySorted!45 (removeStrictlySorted!45 (t!4301 l!812) key2!27) key1!43) lt!20339)))

(declare-fun b!46617 () Bool)

(declare-fun e!29717 () List!1268)

(assert (=> b!46617 (= e!29717 Nil!1265)))

(declare-fun b!46618 () Bool)

(assert (=> b!46618 (= e!29717 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (removeStrictlySorted!45 (t!4301 l!812) key2!27)) key1!43) (h!1844 (removeStrictlySorted!45 (t!4301 l!812) key2!27))))))

(declare-fun b!46619 () Bool)

(assert (=> b!46619 (= e!29718 e!29717)))

(declare-fun c!6318 () Bool)

(assert (=> b!46619 (= c!6318 (and (is-Cons!1264 (removeStrictlySorted!45 (t!4301 l!812) key2!27)) (not (= (_1!870 (h!1844 (removeStrictlySorted!45 (t!4301 l!812) key2!27))) key1!43))))))

(assert (= (and d!9163 c!6317) b!46616))

(assert (= (and d!9163 (not c!6317)) b!46619))

(assert (= (and b!46619 c!6318) b!46618))

(assert (= (and b!46619 (not c!6318)) b!46617))

(assert (= (and d!9163 res!27197) b!46615))

(declare-fun m!40935 () Bool)

(assert (=> b!46615 m!40935))

(declare-fun m!40937 () Bool)

(assert (=> d!9163 m!40937))

(assert (=> d!9163 m!40825))

(declare-fun m!40939 () Bool)

(assert (=> d!9163 m!40939))

(declare-fun m!40941 () Bool)

(assert (=> b!46618 m!40941))

(assert (=> b!46618 m!40941))

(declare-fun m!40943 () Bool)

(assert (=> b!46618 m!40943))

(assert (=> b!46512 d!9163))

(declare-fun b!46620 () Bool)

(declare-fun e!29719 () Bool)

(declare-fun lt!20344 () List!1268)

(assert (=> b!46620 (= e!29719 (not (containsKey!89 lt!20344 key2!27)))))

(declare-fun b!46621 () Bool)

(declare-fun e!29721 () List!1268)

(assert (=> b!46621 (= e!29721 (t!4301 (t!4301 l!812)))))

(declare-fun d!9165 () Bool)

(assert (=> d!9165 e!29719))

(declare-fun res!27198 () Bool)

(assert (=> d!9165 (=> (not res!27198) (not e!29719))))

(assert (=> d!9165 (= res!27198 (isStrictlySorted!239 lt!20344))))

(assert (=> d!9165 (= lt!20344 e!29721)))

(declare-fun c!6319 () Bool)

(assert (=> d!9165 (= c!6319 (and (is-Cons!1264 (t!4301 l!812)) (= (_1!870 (h!1844 (t!4301 l!812))) key2!27)))))

(assert (=> d!9165 (isStrictlySorted!239 (t!4301 l!812))))

(assert (=> d!9165 (= (removeStrictlySorted!45 (t!4301 l!812) key2!27) lt!20344)))

(declare-fun b!46622 () Bool)

(declare-fun e!29720 () List!1268)

(assert (=> b!46622 (= e!29720 Nil!1265)))

(declare-fun b!46623 () Bool)

(assert (=> b!46623 (= e!29720 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (t!4301 l!812)) key2!27) (h!1844 (t!4301 l!812))))))

(declare-fun b!46624 () Bool)

(assert (=> b!46624 (= e!29721 e!29720)))

(declare-fun c!6320 () Bool)

(assert (=> b!46624 (= c!6320 (and (is-Cons!1264 (t!4301 l!812)) (not (= (_1!870 (h!1844 (t!4301 l!812))) key2!27))))))

(assert (= (and d!9165 c!6319) b!46621))

(assert (= (and d!9165 (not c!6319)) b!46624))

(assert (= (and b!46624 c!6320) b!46623))

(assert (= (and b!46624 (not c!6320)) b!46622))

(assert (= (and d!9165 res!27198) b!46620))

(declare-fun m!40945 () Bool)

(assert (=> b!46620 m!40945))

(declare-fun m!40947 () Bool)

(assert (=> d!9165 m!40947))

(assert (=> d!9165 m!40823))

(declare-fun m!40949 () Bool)

(assert (=> b!46623 m!40949))

(assert (=> b!46623 m!40949))

(declare-fun m!40951 () Bool)

(assert (=> b!46623 m!40951))

(assert (=> b!46512 d!9165))

(declare-fun b!46625 () Bool)

(declare-fun e!29722 () Bool)

(declare-fun lt!20347 () List!1268)

(assert (=> b!46625 (= e!29722 (not (containsKey!89 lt!20347 key2!27)))))

(declare-fun b!46626 () Bool)

(declare-fun e!29724 () List!1268)

(assert (=> b!46626 (= e!29724 (t!4301 (removeStrictlySorted!45 l!812 key1!43)))))

(declare-fun d!9167 () Bool)

(assert (=> d!9167 e!29722))

(declare-fun res!27199 () Bool)

(assert (=> d!9167 (=> (not res!27199) (not e!29722))))

(assert (=> d!9167 (= res!27199 (isStrictlySorted!239 lt!20347))))

(assert (=> d!9167 (= lt!20347 e!29724)))

(declare-fun c!6321 () Bool)

(assert (=> d!9167 (= c!6321 (and (is-Cons!1264 (removeStrictlySorted!45 l!812 key1!43)) (= (_1!870 (h!1844 (removeStrictlySorted!45 l!812 key1!43))) key2!27)))))

(assert (=> d!9167 (isStrictlySorted!239 (removeStrictlySorted!45 l!812 key1!43))))

(assert (=> d!9167 (= (removeStrictlySorted!45 (removeStrictlySorted!45 l!812 key1!43) key2!27) lt!20347)))

(declare-fun b!46627 () Bool)

(declare-fun e!29723 () List!1268)

(assert (=> b!46627 (= e!29723 Nil!1265)))

(declare-fun b!46628 () Bool)

(assert (=> b!46628 (= e!29723 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (removeStrictlySorted!45 l!812 key1!43)) key2!27) (h!1844 (removeStrictlySorted!45 l!812 key1!43))))))

(declare-fun b!46629 () Bool)

(assert (=> b!46629 (= e!29724 e!29723)))

(declare-fun c!6322 () Bool)

(assert (=> b!46629 (= c!6322 (and (is-Cons!1264 (removeStrictlySorted!45 l!812 key1!43)) (not (= (_1!870 (h!1844 (removeStrictlySorted!45 l!812 key1!43))) key2!27))))))

(assert (= (and d!9167 c!6321) b!46626))

(assert (= (and d!9167 (not c!6321)) b!46629))

(assert (= (and b!46629 c!6322) b!46628))

(assert (= (and b!46629 (not c!6322)) b!46627))

(assert (= (and d!9167 res!27199) b!46625))

(declare-fun m!40957 () Bool)

(assert (=> b!46625 m!40957))

(declare-fun m!40959 () Bool)

(assert (=> d!9167 m!40959))

(assert (=> d!9167 m!40835))

(declare-fun m!40961 () Bool)

(assert (=> d!9167 m!40961))

(declare-fun m!40963 () Bool)

(assert (=> b!46628 m!40963))

(assert (=> b!46628 m!40963))

(declare-fun m!40965 () Bool)

(assert (=> b!46628 m!40965))

(assert (=> b!46512 d!9167))

(declare-fun d!9173 () Bool)

(declare-fun res!27212 () Bool)

(declare-fun e!29753 () Bool)

(assert (=> d!9173 (=> res!27212 e!29753)))

(assert (=> d!9173 (= res!27212 (or (is-Nil!1265 l!812) (is-Nil!1265 (t!4301 l!812))))))

(assert (=> d!9173 (= (isStrictlySorted!239 l!812) e!29753)))

(declare-fun b!46674 () Bool)

(declare-fun e!29754 () Bool)

(assert (=> b!46674 (= e!29753 e!29754)))

(declare-fun res!27213 () Bool)

(assert (=> b!46674 (=> (not res!27213) (not e!29754))))

(assert (=> b!46674 (= res!27213 (bvslt (_1!870 (h!1844 l!812)) (_1!870 (h!1844 (t!4301 l!812)))))))

(declare-fun b!46675 () Bool)

(assert (=> b!46675 (= e!29754 (isStrictlySorted!239 (t!4301 l!812)))))

(assert (= (and d!9173 (not res!27212)) b!46674))

(assert (= (and b!46674 res!27213) b!46675))

(assert (=> b!46675 m!40823))

(assert (=> start!7274 d!9173))

(declare-fun d!9189 () Bool)

(declare-fun res!27215 () Bool)

(declare-fun e!29758 () Bool)

(assert (=> d!9189 (=> res!27215 e!29758)))

(assert (=> d!9189 (= res!27215 (or (is-Nil!1265 (t!4301 l!812)) (is-Nil!1265 (t!4301 (t!4301 l!812)))))))

(assert (=> d!9189 (= (isStrictlySorted!239 (t!4301 l!812)) e!29758)))

(declare-fun b!46681 () Bool)

(declare-fun e!29759 () Bool)

(assert (=> b!46681 (= e!29758 e!29759)))

(declare-fun res!27216 () Bool)

(assert (=> b!46681 (=> (not res!27216) (not e!29759))))

(assert (=> b!46681 (= res!27216 (bvslt (_1!870 (h!1844 (t!4301 l!812))) (_1!870 (h!1844 (t!4301 (t!4301 l!812))))))))

(declare-fun b!46682 () Bool)

(assert (=> b!46682 (= e!29759 (isStrictlySorted!239 (t!4301 (t!4301 l!812))))))

(assert (= (and d!9189 (not res!27215)) b!46681))

(assert (= (and b!46681 res!27216) b!46682))

(declare-fun m!41039 () Bool)

(assert (=> b!46682 m!41039))

(assert (=> b!46511 d!9189))

(declare-fun b!46700 () Bool)

(declare-fun e!29769 () Bool)

(declare-fun tp!6150 () Bool)

(assert (=> b!46700 (= e!29769 (and tp_is_empty!1991 tp!6150))))

(assert (=> b!46513 (= tp!6143 e!29769)))

(assert (= (and b!46513 (is-Cons!1264 (t!4301 l!812))) b!46700))

(push 1)

(assert (not b!46682))

(assert (not d!9167))

(assert (not b!46628))

(assert (not b!46540))

(assert (not b!46547))

(assert (not d!9165))

(assert (not b!46618))

(assert (not b!46675))

(assert (not d!9159))

(assert (not b!46615))

(assert (not b!46608))

(assert (not b!46620))

(assert (not b!46605))

(assert (not d!9161))

(assert (not b!46566))

(assert (not d!9143))

(assert (not b!46613))

(assert (not d!9145))

(assert (not b!46569))

(assert (not b!46550))

(assert (not d!9163))

(assert (not d!9141))

(assert tp_is_empty!1991)

(assert (not b!46700))

(assert (not b!46623))

(assert (not d!9129))

(assert (not b!46625))

(assert (not b!46610))

(assert (not b!46543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!46675 d!9189))

(declare-fun d!9337 () Bool)

(assert (=> d!9337 (= ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (t!4301 l!812)) key2!27) (h!1844 (t!4301 l!812))) (Cons!1264 (h!1844 (t!4301 l!812)) (removeStrictlySorted!45 (t!4301 (t!4301 l!812)) key2!27)))))

(assert (=> b!46623 d!9337))

(declare-fun b!46857 () Bool)

(declare-fun e!29902 () Bool)

(declare-fun lt!20370 () List!1268)

(assert (=> b!46857 (= e!29902 (not (containsKey!89 lt!20370 key2!27)))))

(declare-fun b!46858 () Bool)

(declare-fun e!29904 () List!1268)

(assert (=> b!46858 (= e!29904 (t!4301 (t!4301 (t!4301 l!812))))))

(declare-fun d!9339 () Bool)

(assert (=> d!9339 e!29902))

(declare-fun res!27322 () Bool)

(assert (=> d!9339 (=> (not res!27322) (not e!29902))))

(assert (=> d!9339 (= res!27322 (isStrictlySorted!239 lt!20370))))

(assert (=> d!9339 (= lt!20370 e!29904)))

(declare-fun c!6367 () Bool)

(assert (=> d!9339 (= c!6367 (and (is-Cons!1264 (t!4301 (t!4301 l!812))) (= (_1!870 (h!1844 (t!4301 (t!4301 l!812)))) key2!27)))))

(assert (=> d!9339 (isStrictlySorted!239 (t!4301 (t!4301 l!812)))))

(assert (=> d!9339 (= (removeStrictlySorted!45 (t!4301 (t!4301 l!812)) key2!27) lt!20370)))

(declare-fun b!46859 () Bool)

(declare-fun e!29903 () List!1268)

(assert (=> b!46859 (= e!29903 Nil!1265)))

(declare-fun b!46860 () Bool)

(assert (=> b!46860 (= e!29903 ($colon$colon!43 (removeStrictlySorted!45 (t!4301 (t!4301 (t!4301 l!812))) key2!27) (h!1844 (t!4301 (t!4301 l!812)))))))

(declare-fun b!46861 () Bool)

(assert (=> b!46861 (= e!29904 e!29903)))

(declare-fun c!6368 () Bool)

(assert (=> b!46861 (= c!6368 (and (is-Cons!1264 (t!4301 (t!4301 l!812))) (not (= (_1!870 (h!1844 (t!4301 (t!4301 l!812)))) key2!27))))))

(assert (= (and d!9339 c!6367) b!46858))

(assert (= (and d!9339 (not c!6367)) b!46861))

(assert (= (and b!46861 c!6368) b!46860))

(assert (= (and b!46861 (not c!6368)) b!46859))

(assert (= (and d!9339 res!27322) b!46857))

(declare-fun m!41241 () Bool)

(assert (=> b!46857 m!41241))

(declare-fun m!41243 () Bool)

(assert (=> d!9339 m!41243))

(assert (=> d!9339 m!41039))

(declare-fun m!41245 () Bool)

(assert (=> b!46860 m!41245))

(assert (=> b!46860 m!41245))

(declare-fun m!41247 () Bool)

(assert (=> b!46860 m!41247))

(assert (=> b!46623 d!9339))

(declare-fun d!9341 () Bool)

(declare-fun res!27327 () Bool)

(declare-fun e!29909 () Bool)

(assert (=> d!9341 (=> res!27327 e!29909)))

(assert (=> d!9341 (= res!27327 (and (is-Cons!1264 lt!20338) (= (_1!870 (h!1844 lt!20338)) key1!43)))))

(assert (=> d!9341 (= (containsKey!89 lt!20338 key1!43) e!29909)))

(declare-fun b!46866 () Bool)

(declare-fun e!29910 () Bool)

(assert (=> b!46866 (= e!29909 e!29910)))

(declare-fun res!27328 () Bool)

(assert (=> b!46866 (=> (not res!27328) (not e!29910))))

(assert (=> b!46866 (= res!27328 (and (or (not (is-Cons!1264 lt!20338)) (bvsle (_1!870 (h!1844 lt!20338)) key1!43)) (is-Cons!1264 lt!20338) (bvslt (_1!870 (h!1844 lt!20338)) key1!43)))))

(declare-fun b!46867 () Bool)

(assert (=> b!46867 (= e!29910 (containsKey!89 (t!4301 lt!20338) key1!43))))

(assert (= (and d!9341 (not res!27327)) b!46866))

(assert (= (and b!46866 res!27328) b!46867))

(declare-fun m!41249 () Bool)

(assert (=> b!46867 m!41249))

(assert (=> b!46610 d!9341))

(declare-fun d!9343 () Bool)

(declare-fun res!27329 () Bool)

(declare-fun e!29911 () Bool)

(assert (=> d!9343 (=> res!27329 e!29911)))

(assert (=> d!9343 (= res!27329 (and (is-Cons!1264 lt!20347) (= (_1!870 (h!1844 lt!20347)) key2!27)))))

(assert (=> d!9343 (= (containsKey!89 lt!20347 key2!27) e!29911)))

(declare-fun b!46868 () Bool)

(declare-fun e!29912 () Bool)

(assert (=> b!46868 (= e!29911 e!29912)))

(declare-fun res!27330 () Bool)

(assert (=> b!46868 (=> (not res!27330) (not e!29912))))

(assert (=> b!46868 (= res!27330 (and (or (not (is-Cons!1264 lt!20347)) (bvsle (_1!870 (h!1844 lt!20347)) key2!27)) (is-Cons!1264 lt!20347) (bvslt (_1!870 (h!1844 lt!20347)) key2!27)))))

(declare-fun b!46869 () Bool)

(assert (=> b!46869 (= e!29912 (containsKey!89 (t!4301 lt!20347) key2!27))))

(assert (= (and d!9343 (not res!27329)) b!46868))

(assert (= (and b!46868 res!27330) b!46869))

(declare-fun m!41251 () Bool)

(assert (=> b!46869 m!41251))

(assert (=> b!46625 d!9343))

