; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106866 () Bool)

(assert start!106866)

(declare-fun b!1267572 () Bool)

(declare-fun res!843879 () Bool)

(declare-fun e!722152 () Bool)

(assert (=> b!1267572 (=> (not res!843879) (not e!722152))))

(declare-datatypes ((B!2092 0))(
  ( (B!2093 (val!16381 Int)) )
))
(declare-datatypes ((tuple2!21430 0))(
  ( (tuple2!21431 (_1!10725 (_ BitVec 64)) (_2!10725 B!2092)) )
))
(declare-datatypes ((List!28548 0))(
  ( (Nil!28545) (Cons!28544 (h!29753 tuple2!21430) (t!42082 List!28548)) )
))
(declare-fun l!874 () List!28548)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!687 (List!28548 (_ BitVec 64)) Bool)

(assert (=> b!1267572 (= res!843879 (not (containsKey!687 l!874 key!235)))))

(declare-fun b!1267573 () Bool)

(declare-fun e!722151 () Bool)

(declare-fun tp_is_empty!32613 () Bool)

(declare-fun tp!96645 () Bool)

(assert (=> b!1267573 (= e!722151 (and tp_is_empty!32613 tp!96645))))

(declare-fun b!1267574 () Bool)

(declare-fun res!843877 () Bool)

(assert (=> b!1267574 (=> (not res!843877) (not e!722152))))

(declare-fun isStrictlySorted!826 (List!28548) Bool)

(assert (=> b!1267574 (= res!843877 (isStrictlySorted!826 (t!42082 l!874)))))

(declare-fun b!1267575 () Bool)

(declare-fun removeStrictlySorted!169 (List!28548 (_ BitVec 64)) List!28548)

(assert (=> b!1267575 (= e!722152 (not (= (removeStrictlySorted!169 l!874 key!235) l!874)))))

(assert (=> b!1267575 (= (removeStrictlySorted!169 (t!42082 l!874) key!235) (t!42082 l!874))))

(declare-datatypes ((Unit!42172 0))(
  ( (Unit!42173) )
))
(declare-fun lt!574283 () Unit!42172)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!8 (List!28548 (_ BitVec 64)) Unit!42172)

(assert (=> b!1267575 (= lt!574283 (lemmaRemoveStrictlySortedNotPresentPreserves!8 (t!42082 l!874) key!235))))

(declare-fun res!843880 () Bool)

(assert (=> start!106866 (=> (not res!843880) (not e!722152))))

(assert (=> start!106866 (= res!843880 (isStrictlySorted!826 l!874))))

(assert (=> start!106866 e!722152))

(assert (=> start!106866 e!722151))

(assert (=> start!106866 true))

(declare-fun b!1267576 () Bool)

(declare-fun res!843878 () Bool)

(assert (=> b!1267576 (=> (not res!843878) (not e!722152))))

(assert (=> b!1267576 (= res!843878 (not (containsKey!687 (t!42082 l!874) key!235)))))

(declare-fun b!1267577 () Bool)

(declare-fun res!843876 () Bool)

(assert (=> b!1267577 (=> (not res!843876) (not e!722152))))

(get-info :version)

(assert (=> b!1267577 (= res!843876 ((_ is Cons!28544) l!874))))

(assert (= (and start!106866 res!843880) b!1267572))

(assert (= (and b!1267572 res!843879) b!1267577))

(assert (= (and b!1267577 res!843876) b!1267574))

(assert (= (and b!1267574 res!843877) b!1267576))

(assert (= (and b!1267576 res!843878) b!1267575))

(assert (= (and start!106866 ((_ is Cons!28544) l!874)) b!1267573))

(declare-fun m!1166771 () Bool)

(assert (=> b!1267575 m!1166771))

(declare-fun m!1166773 () Bool)

(assert (=> b!1267575 m!1166773))

(declare-fun m!1166775 () Bool)

(assert (=> b!1267575 m!1166775))

(declare-fun m!1166777 () Bool)

(assert (=> b!1267574 m!1166777))

(declare-fun m!1166779 () Bool)

(assert (=> b!1267576 m!1166779))

(declare-fun m!1166781 () Bool)

(assert (=> start!106866 m!1166781))

(declare-fun m!1166783 () Bool)

(assert (=> b!1267572 m!1166783))

(check-sat tp_is_empty!32613 (not b!1267575) (not b!1267572) (not start!106866) (not b!1267573) (not b!1267576) (not b!1267574))
(check-sat)
(get-model)

(declare-fun d!139445 () Bool)

(declare-fun res!843910 () Bool)

(declare-fun e!722173 () Bool)

(assert (=> d!139445 (=> res!843910 e!722173)))

(assert (=> d!139445 (= res!843910 (and ((_ is Cons!28544) l!874) (= (_1!10725 (h!29753 l!874)) key!235)))))

(assert (=> d!139445 (= (containsKey!687 l!874 key!235) e!722173)))

(declare-fun b!1267610 () Bool)

(declare-fun e!722174 () Bool)

(assert (=> b!1267610 (= e!722173 e!722174)))

(declare-fun res!843911 () Bool)

(assert (=> b!1267610 (=> (not res!843911) (not e!722174))))

(assert (=> b!1267610 (= res!843911 (and (or (not ((_ is Cons!28544) l!874)) (bvsle (_1!10725 (h!29753 l!874)) key!235)) ((_ is Cons!28544) l!874) (bvslt (_1!10725 (h!29753 l!874)) key!235)))))

(declare-fun b!1267611 () Bool)

(assert (=> b!1267611 (= e!722174 (containsKey!687 (t!42082 l!874) key!235))))

(assert (= (and d!139445 (not res!843910)) b!1267610))

(assert (= (and b!1267610 res!843911) b!1267611))

(assert (=> b!1267611 m!1166779))

(assert (=> b!1267572 d!139445))

(declare-fun d!139451 () Bool)

(declare-fun res!843912 () Bool)

(declare-fun e!722175 () Bool)

(assert (=> d!139451 (=> res!843912 e!722175)))

(assert (=> d!139451 (= res!843912 (and ((_ is Cons!28544) (t!42082 l!874)) (= (_1!10725 (h!29753 (t!42082 l!874))) key!235)))))

(assert (=> d!139451 (= (containsKey!687 (t!42082 l!874) key!235) e!722175)))

(declare-fun b!1267612 () Bool)

(declare-fun e!722176 () Bool)

(assert (=> b!1267612 (= e!722175 e!722176)))

(declare-fun res!843913 () Bool)

(assert (=> b!1267612 (=> (not res!843913) (not e!722176))))

(assert (=> b!1267612 (= res!843913 (and (or (not ((_ is Cons!28544) (t!42082 l!874))) (bvsle (_1!10725 (h!29753 (t!42082 l!874))) key!235)) ((_ is Cons!28544) (t!42082 l!874)) (bvslt (_1!10725 (h!29753 (t!42082 l!874))) key!235)))))

(declare-fun b!1267613 () Bool)

(assert (=> b!1267613 (= e!722176 (containsKey!687 (t!42082 (t!42082 l!874)) key!235))))

(assert (= (and d!139451 (not res!843912)) b!1267612))

(assert (= (and b!1267612 res!843913) b!1267613))

(declare-fun m!1166799 () Bool)

(assert (=> b!1267613 m!1166799))

(assert (=> b!1267576 d!139451))

(declare-fun b!1267658 () Bool)

(declare-fun e!722205 () List!28548)

(declare-fun $colon$colon!652 (List!28548 tuple2!21430) List!28548)

(assert (=> b!1267658 (= e!722205 ($colon$colon!652 (removeStrictlySorted!169 (t!42082 l!874) key!235) (h!29753 l!874)))))

(declare-fun b!1267659 () Bool)

(assert (=> b!1267659 (= e!722205 Nil!28545)))

(declare-fun b!1267660 () Bool)

(declare-fun e!722207 () List!28548)

(assert (=> b!1267660 (= e!722207 e!722205)))

(declare-fun c!123534 () Bool)

(assert (=> b!1267660 (= c!123534 (and ((_ is Cons!28544) l!874) (not (= (_1!10725 (h!29753 l!874)) key!235))))))

(declare-fun b!1267661 () Bool)

(declare-fun e!722206 () Bool)

(declare-fun lt!574295 () List!28548)

(assert (=> b!1267661 (= e!722206 (not (containsKey!687 lt!574295 key!235)))))

(declare-fun d!139453 () Bool)

(assert (=> d!139453 e!722206))

(declare-fun res!843926 () Bool)

(assert (=> d!139453 (=> (not res!843926) (not e!722206))))

(assert (=> d!139453 (= res!843926 (isStrictlySorted!826 lt!574295))))

(assert (=> d!139453 (= lt!574295 e!722207)))

(declare-fun c!123535 () Bool)

(assert (=> d!139453 (= c!123535 (and ((_ is Cons!28544) l!874) (= (_1!10725 (h!29753 l!874)) key!235)))))

(assert (=> d!139453 (isStrictlySorted!826 l!874)))

(assert (=> d!139453 (= (removeStrictlySorted!169 l!874 key!235) lt!574295)))

(declare-fun b!1267662 () Bool)

(assert (=> b!1267662 (= e!722207 (t!42082 l!874))))

(assert (= (and d!139453 c!123535) b!1267662))

(assert (= (and d!139453 (not c!123535)) b!1267660))

(assert (= (and b!1267660 c!123534) b!1267658))

(assert (= (and b!1267660 (not c!123534)) b!1267659))

(assert (= (and d!139453 res!843926) b!1267661))

(assert (=> b!1267658 m!1166773))

(assert (=> b!1267658 m!1166773))

(declare-fun m!1166817 () Bool)

(assert (=> b!1267658 m!1166817))

(declare-fun m!1166819 () Bool)

(assert (=> b!1267661 m!1166819))

(declare-fun m!1166821 () Bool)

(assert (=> d!139453 m!1166821))

(assert (=> d!139453 m!1166781))

(assert (=> b!1267575 d!139453))

(declare-fun b!1267663 () Bool)

(declare-fun e!722208 () List!28548)

(assert (=> b!1267663 (= e!722208 ($colon$colon!652 (removeStrictlySorted!169 (t!42082 (t!42082 l!874)) key!235) (h!29753 (t!42082 l!874))))))

(declare-fun b!1267664 () Bool)

(assert (=> b!1267664 (= e!722208 Nil!28545)))

(declare-fun b!1267665 () Bool)

(declare-fun e!722210 () List!28548)

(assert (=> b!1267665 (= e!722210 e!722208)))

(declare-fun c!123536 () Bool)

(assert (=> b!1267665 (= c!123536 (and ((_ is Cons!28544) (t!42082 l!874)) (not (= (_1!10725 (h!29753 (t!42082 l!874))) key!235))))))

(declare-fun b!1267666 () Bool)

(declare-fun e!722209 () Bool)

(declare-fun lt!574296 () List!28548)

(assert (=> b!1267666 (= e!722209 (not (containsKey!687 lt!574296 key!235)))))

(declare-fun d!139463 () Bool)

(assert (=> d!139463 e!722209))

(declare-fun res!843927 () Bool)

(assert (=> d!139463 (=> (not res!843927) (not e!722209))))

(assert (=> d!139463 (= res!843927 (isStrictlySorted!826 lt!574296))))

(assert (=> d!139463 (= lt!574296 e!722210)))

(declare-fun c!123537 () Bool)

(assert (=> d!139463 (= c!123537 (and ((_ is Cons!28544) (t!42082 l!874)) (= (_1!10725 (h!29753 (t!42082 l!874))) key!235)))))

(assert (=> d!139463 (isStrictlySorted!826 (t!42082 l!874))))

(assert (=> d!139463 (= (removeStrictlySorted!169 (t!42082 l!874) key!235) lt!574296)))

(declare-fun b!1267667 () Bool)

(assert (=> b!1267667 (= e!722210 (t!42082 (t!42082 l!874)))))

(assert (= (and d!139463 c!123537) b!1267667))

(assert (= (and d!139463 (not c!123537)) b!1267665))

(assert (= (and b!1267665 c!123536) b!1267663))

(assert (= (and b!1267665 (not c!123536)) b!1267664))

(assert (= (and d!139463 res!843927) b!1267666))

(declare-fun m!1166823 () Bool)

(assert (=> b!1267663 m!1166823))

(assert (=> b!1267663 m!1166823))

(declare-fun m!1166825 () Bool)

(assert (=> b!1267663 m!1166825))

(declare-fun m!1166827 () Bool)

(assert (=> b!1267666 m!1166827))

(declare-fun m!1166829 () Bool)

(assert (=> d!139463 m!1166829))

(assert (=> d!139463 m!1166777))

(assert (=> b!1267575 d!139463))

(declare-fun d!139465 () Bool)

(assert (=> d!139465 (= (removeStrictlySorted!169 (t!42082 l!874) key!235) (t!42082 l!874))))

(declare-fun lt!574304 () Unit!42172)

(declare-fun choose!1902 (List!28548 (_ BitVec 64)) Unit!42172)

(assert (=> d!139465 (= lt!574304 (choose!1902 (t!42082 l!874) key!235))))

(assert (=> d!139465 (isStrictlySorted!826 (t!42082 l!874))))

(assert (=> d!139465 (= (lemmaRemoveStrictlySortedNotPresentPreserves!8 (t!42082 l!874) key!235) lt!574304)))

(declare-fun bs!35897 () Bool)

(assert (= bs!35897 d!139465))

(assert (=> bs!35897 m!1166773))

(declare-fun m!1166847 () Bool)

(assert (=> bs!35897 m!1166847))

(assert (=> bs!35897 m!1166777))

(assert (=> b!1267575 d!139465))

(declare-fun d!139473 () Bool)

(declare-fun res!843948 () Bool)

(declare-fun e!722237 () Bool)

(assert (=> d!139473 (=> res!843948 e!722237)))

(assert (=> d!139473 (= res!843948 (or ((_ is Nil!28545) (t!42082 l!874)) ((_ is Nil!28545) (t!42082 (t!42082 l!874)))))))

(assert (=> d!139473 (= (isStrictlySorted!826 (t!42082 l!874)) e!722237)))

(declare-fun b!1267700 () Bool)

(declare-fun e!722238 () Bool)

(assert (=> b!1267700 (= e!722237 e!722238)))

(declare-fun res!843949 () Bool)

(assert (=> b!1267700 (=> (not res!843949) (not e!722238))))

(assert (=> b!1267700 (= res!843949 (bvslt (_1!10725 (h!29753 (t!42082 l!874))) (_1!10725 (h!29753 (t!42082 (t!42082 l!874))))))))

(declare-fun b!1267701 () Bool)

(assert (=> b!1267701 (= e!722238 (isStrictlySorted!826 (t!42082 (t!42082 l!874))))))

(assert (= (and d!139473 (not res!843948)) b!1267700))

(assert (= (and b!1267700 res!843949) b!1267701))

(declare-fun m!1166855 () Bool)

(assert (=> b!1267701 m!1166855))

(assert (=> b!1267574 d!139473))

(declare-fun d!139481 () Bool)

(declare-fun res!843950 () Bool)

(declare-fun e!722240 () Bool)

(assert (=> d!139481 (=> res!843950 e!722240)))

(assert (=> d!139481 (= res!843950 (or ((_ is Nil!28545) l!874) ((_ is Nil!28545) (t!42082 l!874))))))

(assert (=> d!139481 (= (isStrictlySorted!826 l!874) e!722240)))

(declare-fun b!1267703 () Bool)

(declare-fun e!722241 () Bool)

(assert (=> b!1267703 (= e!722240 e!722241)))

(declare-fun res!843951 () Bool)

(assert (=> b!1267703 (=> (not res!843951) (not e!722241))))

(assert (=> b!1267703 (= res!843951 (bvslt (_1!10725 (h!29753 l!874)) (_1!10725 (h!29753 (t!42082 l!874)))))))

(declare-fun b!1267704 () Bool)

(assert (=> b!1267704 (= e!722241 (isStrictlySorted!826 (t!42082 l!874)))))

(assert (= (and d!139481 (not res!843950)) b!1267703))

(assert (= (and b!1267703 res!843951) b!1267704))

(assert (=> b!1267704 m!1166777))

(assert (=> start!106866 d!139481))

(declare-fun b!1267711 () Bool)

(declare-fun e!722246 () Bool)

(declare-fun tp!96654 () Bool)

(assert (=> b!1267711 (= e!722246 (and tp_is_empty!32613 tp!96654))))

(assert (=> b!1267573 (= tp!96645 e!722246)))

(assert (= (and b!1267573 ((_ is Cons!28544) (t!42082 l!874))) b!1267711))

(check-sat (not b!1267661) tp_is_empty!32613 (not b!1267701) (not b!1267658) (not d!139463) (not b!1267613) (not b!1267711) (not b!1267611) (not b!1267663) (not b!1267666) (not d!139453) (not b!1267704) (not d!139465))
(check-sat)
(get-model)

(declare-fun d!139485 () Bool)

(declare-fun res!843956 () Bool)

(declare-fun e!722252 () Bool)

(assert (=> d!139485 (=> res!843956 e!722252)))

(assert (=> d!139485 (= res!843956 (or ((_ is Nil!28545) lt!574295) ((_ is Nil!28545) (t!42082 lt!574295))))))

(assert (=> d!139485 (= (isStrictlySorted!826 lt!574295) e!722252)))

(declare-fun b!1267719 () Bool)

(declare-fun e!722253 () Bool)

(assert (=> b!1267719 (= e!722252 e!722253)))

(declare-fun res!843957 () Bool)

(assert (=> b!1267719 (=> (not res!843957) (not e!722253))))

(assert (=> b!1267719 (= res!843957 (bvslt (_1!10725 (h!29753 lt!574295)) (_1!10725 (h!29753 (t!42082 lt!574295)))))))

(declare-fun b!1267720 () Bool)

(assert (=> b!1267720 (= e!722253 (isStrictlySorted!826 (t!42082 lt!574295)))))

(assert (= (and d!139485 (not res!843956)) b!1267719))

(assert (= (and b!1267719 res!843957) b!1267720))

(declare-fun m!1166859 () Bool)

(assert (=> b!1267720 m!1166859))

(assert (=> d!139453 d!139485))

(assert (=> d!139453 d!139481))

(declare-fun d!139487 () Bool)

(declare-fun res!843958 () Bool)

(declare-fun e!722254 () Bool)

(assert (=> d!139487 (=> res!843958 e!722254)))

(assert (=> d!139487 (= res!843958 (and ((_ is Cons!28544) lt!574295) (= (_1!10725 (h!29753 lt!574295)) key!235)))))

(assert (=> d!139487 (= (containsKey!687 lt!574295 key!235) e!722254)))

(declare-fun b!1267721 () Bool)

(declare-fun e!722255 () Bool)

(assert (=> b!1267721 (= e!722254 e!722255)))

(declare-fun res!843959 () Bool)

(assert (=> b!1267721 (=> (not res!843959) (not e!722255))))

(assert (=> b!1267721 (= res!843959 (and (or (not ((_ is Cons!28544) lt!574295)) (bvsle (_1!10725 (h!29753 lt!574295)) key!235)) ((_ is Cons!28544) lt!574295) (bvslt (_1!10725 (h!29753 lt!574295)) key!235)))))

(declare-fun b!1267722 () Bool)

(assert (=> b!1267722 (= e!722255 (containsKey!687 (t!42082 lt!574295) key!235))))

(assert (= (and d!139487 (not res!843958)) b!1267721))

(assert (= (and b!1267721 res!843959) b!1267722))

(declare-fun m!1166861 () Bool)

(assert (=> b!1267722 m!1166861))

(assert (=> b!1267661 d!139487))

(assert (=> b!1267611 d!139451))

(declare-fun d!139489 () Bool)

(declare-fun res!843960 () Bool)

(declare-fun e!722256 () Bool)

(assert (=> d!139489 (=> res!843960 e!722256)))

(assert (=> d!139489 (= res!843960 (and ((_ is Cons!28544) lt!574296) (= (_1!10725 (h!29753 lt!574296)) key!235)))))

(assert (=> d!139489 (= (containsKey!687 lt!574296 key!235) e!722256)))

(declare-fun b!1267723 () Bool)

(declare-fun e!722257 () Bool)

(assert (=> b!1267723 (= e!722256 e!722257)))

(declare-fun res!843961 () Bool)

(assert (=> b!1267723 (=> (not res!843961) (not e!722257))))

(assert (=> b!1267723 (= res!843961 (and (or (not ((_ is Cons!28544) lt!574296)) (bvsle (_1!10725 (h!29753 lt!574296)) key!235)) ((_ is Cons!28544) lt!574296) (bvslt (_1!10725 (h!29753 lt!574296)) key!235)))))

(declare-fun b!1267724 () Bool)

(assert (=> b!1267724 (= e!722257 (containsKey!687 (t!42082 lt!574296) key!235))))

(assert (= (and d!139489 (not res!843960)) b!1267723))

(assert (= (and b!1267723 res!843961) b!1267724))

(declare-fun m!1166863 () Bool)

(assert (=> b!1267724 m!1166863))

(assert (=> b!1267666 d!139489))

(assert (=> b!1267704 d!139473))

(declare-fun d!139491 () Bool)

(declare-fun res!843962 () Bool)

(declare-fun e!722258 () Bool)

(assert (=> d!139491 (=> res!843962 e!722258)))

(assert (=> d!139491 (= res!843962 (or ((_ is Nil!28545) lt!574296) ((_ is Nil!28545) (t!42082 lt!574296))))))

(assert (=> d!139491 (= (isStrictlySorted!826 lt!574296) e!722258)))

(declare-fun b!1267725 () Bool)

(declare-fun e!722259 () Bool)

(assert (=> b!1267725 (= e!722258 e!722259)))

(declare-fun res!843963 () Bool)

(assert (=> b!1267725 (=> (not res!843963) (not e!722259))))

(assert (=> b!1267725 (= res!843963 (bvslt (_1!10725 (h!29753 lt!574296)) (_1!10725 (h!29753 (t!42082 lt!574296)))))))

(declare-fun b!1267726 () Bool)

(assert (=> b!1267726 (= e!722259 (isStrictlySorted!826 (t!42082 lt!574296)))))

(assert (= (and d!139491 (not res!843962)) b!1267725))

(assert (= (and b!1267725 res!843963) b!1267726))

(declare-fun m!1166865 () Bool)

(assert (=> b!1267726 m!1166865))

(assert (=> d!139463 d!139491))

(assert (=> d!139463 d!139473))

(declare-fun d!139493 () Bool)

(declare-fun res!843964 () Bool)

(declare-fun e!722260 () Bool)

(assert (=> d!139493 (=> res!843964 e!722260)))

(assert (=> d!139493 (= res!843964 (or ((_ is Nil!28545) (t!42082 (t!42082 l!874))) ((_ is Nil!28545) (t!42082 (t!42082 (t!42082 l!874))))))))

(assert (=> d!139493 (= (isStrictlySorted!826 (t!42082 (t!42082 l!874))) e!722260)))

(declare-fun b!1267727 () Bool)

(declare-fun e!722261 () Bool)

(assert (=> b!1267727 (= e!722260 e!722261)))

(declare-fun res!843965 () Bool)

(assert (=> b!1267727 (=> (not res!843965) (not e!722261))))

(assert (=> b!1267727 (= res!843965 (bvslt (_1!10725 (h!29753 (t!42082 (t!42082 l!874)))) (_1!10725 (h!29753 (t!42082 (t!42082 (t!42082 l!874)))))))))

(declare-fun b!1267728 () Bool)

(assert (=> b!1267728 (= e!722261 (isStrictlySorted!826 (t!42082 (t!42082 (t!42082 l!874)))))))

(assert (= (and d!139493 (not res!843964)) b!1267727))

(assert (= (and b!1267727 res!843965) b!1267728))

(declare-fun m!1166867 () Bool)

(assert (=> b!1267728 m!1166867))

(assert (=> b!1267701 d!139493))

(declare-fun d!139495 () Bool)

(assert (=> d!139495 (= ($colon$colon!652 (removeStrictlySorted!169 (t!42082 l!874) key!235) (h!29753 l!874)) (Cons!28544 (h!29753 l!874) (removeStrictlySorted!169 (t!42082 l!874) key!235)))))

(assert (=> b!1267658 d!139495))

(assert (=> b!1267658 d!139463))

(declare-fun d!139497 () Bool)

(declare-fun res!843966 () Bool)

(declare-fun e!722262 () Bool)

(assert (=> d!139497 (=> res!843966 e!722262)))

(assert (=> d!139497 (= res!843966 (and ((_ is Cons!28544) (t!42082 (t!42082 l!874))) (= (_1!10725 (h!29753 (t!42082 (t!42082 l!874)))) key!235)))))

(assert (=> d!139497 (= (containsKey!687 (t!42082 (t!42082 l!874)) key!235) e!722262)))

(declare-fun b!1267729 () Bool)

(declare-fun e!722263 () Bool)

(assert (=> b!1267729 (= e!722262 e!722263)))

(declare-fun res!843967 () Bool)

(assert (=> b!1267729 (=> (not res!843967) (not e!722263))))

(assert (=> b!1267729 (= res!843967 (and (or (not ((_ is Cons!28544) (t!42082 (t!42082 l!874)))) (bvsle (_1!10725 (h!29753 (t!42082 (t!42082 l!874)))) key!235)) ((_ is Cons!28544) (t!42082 (t!42082 l!874))) (bvslt (_1!10725 (h!29753 (t!42082 (t!42082 l!874)))) key!235)))))

(declare-fun b!1267730 () Bool)

(assert (=> b!1267730 (= e!722263 (containsKey!687 (t!42082 (t!42082 (t!42082 l!874))) key!235))))

(assert (= (and d!139497 (not res!843966)) b!1267729))

(assert (= (and b!1267729 res!843967) b!1267730))

(declare-fun m!1166869 () Bool)

(assert (=> b!1267730 m!1166869))

(assert (=> b!1267613 d!139497))

(declare-fun d!139499 () Bool)

(assert (=> d!139499 (= ($colon$colon!652 (removeStrictlySorted!169 (t!42082 (t!42082 l!874)) key!235) (h!29753 (t!42082 l!874))) (Cons!28544 (h!29753 (t!42082 l!874)) (removeStrictlySorted!169 (t!42082 (t!42082 l!874)) key!235)))))

(assert (=> b!1267663 d!139499))

(declare-fun b!1267731 () Bool)

(declare-fun e!722264 () List!28548)

(assert (=> b!1267731 (= e!722264 ($colon$colon!652 (removeStrictlySorted!169 (t!42082 (t!42082 (t!42082 l!874))) key!235) (h!29753 (t!42082 (t!42082 l!874)))))))

(declare-fun b!1267732 () Bool)

(assert (=> b!1267732 (= e!722264 Nil!28545)))

(declare-fun b!1267733 () Bool)

(declare-fun e!722266 () List!28548)

(assert (=> b!1267733 (= e!722266 e!722264)))

(declare-fun c!123542 () Bool)

(assert (=> b!1267733 (= c!123542 (and ((_ is Cons!28544) (t!42082 (t!42082 l!874))) (not (= (_1!10725 (h!29753 (t!42082 (t!42082 l!874)))) key!235))))))

(declare-fun b!1267734 () Bool)

(declare-fun e!722265 () Bool)

(declare-fun lt!574308 () List!28548)

(assert (=> b!1267734 (= e!722265 (not (containsKey!687 lt!574308 key!235)))))

(declare-fun d!139501 () Bool)

(assert (=> d!139501 e!722265))

(declare-fun res!843968 () Bool)

(assert (=> d!139501 (=> (not res!843968) (not e!722265))))

(assert (=> d!139501 (= res!843968 (isStrictlySorted!826 lt!574308))))

(assert (=> d!139501 (= lt!574308 e!722266)))

(declare-fun c!123543 () Bool)

(assert (=> d!139501 (= c!123543 (and ((_ is Cons!28544) (t!42082 (t!42082 l!874))) (= (_1!10725 (h!29753 (t!42082 (t!42082 l!874)))) key!235)))))

(assert (=> d!139501 (isStrictlySorted!826 (t!42082 (t!42082 l!874)))))

(assert (=> d!139501 (= (removeStrictlySorted!169 (t!42082 (t!42082 l!874)) key!235) lt!574308)))

(declare-fun b!1267735 () Bool)

(assert (=> b!1267735 (= e!722266 (t!42082 (t!42082 (t!42082 l!874))))))

(assert (= (and d!139501 c!123543) b!1267735))

(assert (= (and d!139501 (not c!123543)) b!1267733))

(assert (= (and b!1267733 c!123542) b!1267731))

(assert (= (and b!1267733 (not c!123542)) b!1267732))

(assert (= (and d!139501 res!843968) b!1267734))

(declare-fun m!1166871 () Bool)

(assert (=> b!1267731 m!1166871))

(assert (=> b!1267731 m!1166871))

(declare-fun m!1166873 () Bool)

(assert (=> b!1267731 m!1166873))

(declare-fun m!1166875 () Bool)

(assert (=> b!1267734 m!1166875))

(declare-fun m!1166877 () Bool)

(assert (=> d!139501 m!1166877))

(assert (=> d!139501 m!1166855))

(assert (=> b!1267663 d!139501))

(assert (=> d!139465 d!139463))

(declare-fun d!139503 () Bool)

(assert (=> d!139503 (= (removeStrictlySorted!169 (t!42082 l!874) key!235) (t!42082 l!874))))

(assert (=> d!139503 true))

(declare-fun _$7!131 () Unit!42172)

(assert (=> d!139503 (= (choose!1902 (t!42082 l!874) key!235) _$7!131)))

(declare-fun bs!35899 () Bool)

(assert (= bs!35899 d!139503))

(assert (=> bs!35899 m!1166773))

(assert (=> d!139465 d!139503))

(assert (=> d!139465 d!139473))

(declare-fun b!1267736 () Bool)

(declare-fun e!722267 () Bool)

(declare-fun tp!96658 () Bool)

(assert (=> b!1267736 (= e!722267 (and tp_is_empty!32613 tp!96658))))

(assert (=> b!1267711 (= tp!96654 e!722267)))

(assert (= (and b!1267711 ((_ is Cons!28544) (t!42082 (t!42082 l!874)))) b!1267736))

(check-sat (not b!1267731) tp_is_empty!32613 (not d!139503) (not b!1267736) (not b!1267722) (not b!1267734) (not d!139501) (not b!1267730) (not b!1267726) (not b!1267728) (not b!1267724) (not b!1267720))
(check-sat)
