; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106864 () Bool)

(assert start!106864)

(declare-fun b!1267554 () Bool)

(declare-fun res!843863 () Bool)

(declare-fun e!722145 () Bool)

(assert (=> b!1267554 (=> (not res!843863) (not e!722145))))

(declare-datatypes ((B!2090 0))(
  ( (B!2091 (val!16380 Int)) )
))
(declare-datatypes ((tuple2!21428 0))(
  ( (tuple2!21429 (_1!10724 (_ BitVec 64)) (_2!10724 B!2090)) )
))
(declare-datatypes ((List!28547 0))(
  ( (Nil!28544) (Cons!28543 (h!29752 tuple2!21428) (t!42081 List!28547)) )
))
(declare-fun l!874 () List!28547)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!686 (List!28547 (_ BitVec 64)) Bool)

(assert (=> b!1267554 (= res!843863 (not (containsKey!686 l!874 key!235)))))

(declare-fun b!1267555 () Bool)

(declare-fun removeStrictlySorted!168 (List!28547 (_ BitVec 64)) List!28547)

(assert (=> b!1267555 (= e!722145 (not (= (removeStrictlySorted!168 l!874 key!235) l!874)))))

(assert (=> b!1267555 (= (removeStrictlySorted!168 (t!42081 l!874) key!235) (t!42081 l!874))))

(declare-datatypes ((Unit!42170 0))(
  ( (Unit!42171) )
))
(declare-fun lt!574280 () Unit!42170)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!7 (List!28547 (_ BitVec 64)) Unit!42170)

(assert (=> b!1267555 (= lt!574280 (lemmaRemoveStrictlySortedNotPresentPreserves!7 (t!42081 l!874) key!235))))

(declare-fun b!1267556 () Bool)

(declare-fun res!843861 () Bool)

(assert (=> b!1267556 (=> (not res!843861) (not e!722145))))

(assert (=> b!1267556 (= res!843861 (is-Cons!28543 l!874))))

(declare-fun res!843865 () Bool)

(assert (=> start!106864 (=> (not res!843865) (not e!722145))))

(declare-fun isStrictlySorted!825 (List!28547) Bool)

(assert (=> start!106864 (= res!843865 (isStrictlySorted!825 l!874))))

(assert (=> start!106864 e!722145))

(declare-fun e!722146 () Bool)

(assert (=> start!106864 e!722146))

(assert (=> start!106864 true))

(declare-fun b!1267557 () Bool)

(declare-fun res!843864 () Bool)

(assert (=> b!1267557 (=> (not res!843864) (not e!722145))))

(assert (=> b!1267557 (= res!843864 (not (containsKey!686 (t!42081 l!874) key!235)))))

(declare-fun b!1267558 () Bool)

(declare-fun tp_is_empty!32611 () Bool)

(declare-fun tp!96642 () Bool)

(assert (=> b!1267558 (= e!722146 (and tp_is_empty!32611 tp!96642))))

(declare-fun b!1267559 () Bool)

(declare-fun res!843862 () Bool)

(assert (=> b!1267559 (=> (not res!843862) (not e!722145))))

(assert (=> b!1267559 (= res!843862 (isStrictlySorted!825 (t!42081 l!874)))))

(assert (= (and start!106864 res!843865) b!1267554))

(assert (= (and b!1267554 res!843863) b!1267556))

(assert (= (and b!1267556 res!843861) b!1267559))

(assert (= (and b!1267559 res!843862) b!1267557))

(assert (= (and b!1267557 res!843864) b!1267555))

(assert (= (and start!106864 (is-Cons!28543 l!874)) b!1267558))

(declare-fun m!1166757 () Bool)

(assert (=> b!1267559 m!1166757))

(declare-fun m!1166759 () Bool)

(assert (=> start!106864 m!1166759))

(declare-fun m!1166761 () Bool)

(assert (=> b!1267555 m!1166761))

(declare-fun m!1166763 () Bool)

(assert (=> b!1267555 m!1166763))

(declare-fun m!1166765 () Bool)

(assert (=> b!1267555 m!1166765))

(declare-fun m!1166767 () Bool)

(assert (=> b!1267554 m!1166767))

(declare-fun m!1166769 () Bool)

(assert (=> b!1267557 m!1166769))

(push 1)

(assert (not b!1267559))

(assert tp_is_empty!32611)

(assert (not b!1267555))

(assert (not start!106864))

(assert (not b!1267558))

(assert (not b!1267554))

(assert (not b!1267557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139443 () Bool)

(declare-fun res!843900 () Bool)

(declare-fun e!722163 () Bool)

(assert (=> d!139443 (=> res!843900 e!722163)))

(assert (=> d!139443 (= res!843900 (or (is-Nil!28544 l!874) (is-Nil!28544 (t!42081 l!874))))))

(assert (=> d!139443 (= (isStrictlySorted!825 l!874) e!722163)))

(declare-fun b!1267600 () Bool)

(declare-fun e!722164 () Bool)

(assert (=> b!1267600 (= e!722163 e!722164)))

(declare-fun res!843901 () Bool)

(assert (=> b!1267600 (=> (not res!843901) (not e!722164))))

(assert (=> b!1267600 (= res!843901 (bvslt (_1!10724 (h!29752 l!874)) (_1!10724 (h!29752 (t!42081 l!874)))))))

(declare-fun b!1267601 () Bool)

(assert (=> b!1267601 (= e!722164 (isStrictlySorted!825 (t!42081 l!874)))))

(assert (= (and d!139443 (not res!843900)) b!1267600))

(assert (= (and b!1267600 res!843901) b!1267601))

(assert (=> b!1267601 m!1166757))

(assert (=> start!106864 d!139443))

(declare-fun b!1267636 () Bool)

(declare-fun e!722191 () List!28547)

(declare-fun e!722192 () List!28547)

(assert (=> b!1267636 (= e!722191 e!722192)))

(declare-fun c!123526 () Bool)

(assert (=> b!1267636 (= c!123526 (and (is-Cons!28543 l!874) (not (= (_1!10724 (h!29752 l!874)) key!235))))))

(declare-fun b!1267637 () Bool)

(declare-fun e!722193 () Bool)

(declare-fun lt!574291 () List!28547)

(assert (=> b!1267637 (= e!722193 (not (containsKey!686 lt!574291 key!235)))))

(declare-fun b!1267638 () Bool)

(declare-fun $colon$colon!651 (List!28547 tuple2!21428) List!28547)

(assert (=> b!1267638 (= e!722192 ($colon$colon!651 (removeStrictlySorted!168 (t!42081 l!874) key!235) (h!29752 l!874)))))

(declare-fun b!1267639 () Bool)

(assert (=> b!1267639 (= e!722192 Nil!28544)))

(declare-fun d!139449 () Bool)

(assert (=> d!139449 e!722193))

(declare-fun res!843920 () Bool)

(assert (=> d!139449 (=> (not res!843920) (not e!722193))))

(assert (=> d!139449 (= res!843920 (isStrictlySorted!825 lt!574291))))

(assert (=> d!139449 (= lt!574291 e!722191)))

(declare-fun c!123527 () Bool)

(assert (=> d!139449 (= c!123527 (and (is-Cons!28543 l!874) (= (_1!10724 (h!29752 l!874)) key!235)))))

(assert (=> d!139449 (isStrictlySorted!825 l!874)))

(assert (=> d!139449 (= (removeStrictlySorted!168 l!874 key!235) lt!574291)))

(declare-fun b!1267640 () Bool)

(assert (=> b!1267640 (= e!722191 (t!42081 l!874))))

(assert (= (and d!139449 c!123527) b!1267640))

(assert (= (and d!139449 (not c!123527)) b!1267636))

(assert (= (and b!1267636 c!123526) b!1267638))

(assert (= (and b!1267636 (not c!123526)) b!1267639))

(assert (= (and d!139449 res!843920) b!1267637))

(declare-fun m!1166803 () Bool)

(assert (=> b!1267637 m!1166803))

(assert (=> b!1267638 m!1166763))

(assert (=> b!1267638 m!1166763))

(declare-fun m!1166805 () Bool)

(assert (=> b!1267638 m!1166805))

(declare-fun m!1166807 () Bool)

(assert (=> d!139449 m!1166807))

(assert (=> d!139449 m!1166759))

(assert (=> b!1267555 d!139449))

(declare-fun b!1267651 () Bool)

(declare-fun e!722200 () List!28547)

(declare-fun e!722201 () List!28547)

(assert (=> b!1267651 (= e!722200 e!722201)))

(declare-fun c!123532 () Bool)

(assert (=> b!1267651 (= c!123532 (and (is-Cons!28543 (t!42081 l!874)) (not (= (_1!10724 (h!29752 (t!42081 l!874))) key!235))))))

(declare-fun b!1267652 () Bool)

(declare-fun e!722202 () Bool)

(declare-fun lt!574294 () List!28547)

(assert (=> b!1267652 (= e!722202 (not (containsKey!686 lt!574294 key!235)))))

(declare-fun b!1267653 () Bool)

(assert (=> b!1267653 (= e!722201 ($colon$colon!651 (removeStrictlySorted!168 (t!42081 (t!42081 l!874)) key!235) (h!29752 (t!42081 l!874))))))

(declare-fun b!1267654 () Bool)

(assert (=> b!1267654 (= e!722201 Nil!28544)))

(declare-fun d!139459 () Bool)

(assert (=> d!139459 e!722202))

(declare-fun res!843923 () Bool)

(assert (=> d!139459 (=> (not res!843923) (not e!722202))))

(assert (=> d!139459 (= res!843923 (isStrictlySorted!825 lt!574294))))

(assert (=> d!139459 (= lt!574294 e!722200)))

(declare-fun c!123533 () Bool)

(assert (=> d!139459 (= c!123533 (and (is-Cons!28543 (t!42081 l!874)) (= (_1!10724 (h!29752 (t!42081 l!874))) key!235)))))

(assert (=> d!139459 (isStrictlySorted!825 (t!42081 l!874))))

(assert (=> d!139459 (= (removeStrictlySorted!168 (t!42081 l!874) key!235) lt!574294)))

(declare-fun b!1267655 () Bool)

(assert (=> b!1267655 (= e!722200 (t!42081 (t!42081 l!874)))))

(assert (= (and d!139459 c!123533) b!1267655))

(assert (= (and d!139459 (not c!123533)) b!1267651))

(assert (= (and b!1267651 c!123532) b!1267653))

(assert (= (and b!1267651 (not c!123532)) b!1267654))

(assert (= (and d!139459 res!843923) b!1267652))

(declare-fun m!1166809 () Bool)

(assert (=> b!1267652 m!1166809))

(declare-fun m!1166811 () Bool)

(assert (=> b!1267653 m!1166811))

(assert (=> b!1267653 m!1166811))

(declare-fun m!1166813 () Bool)

(assert (=> b!1267653 m!1166813))

(declare-fun m!1166815 () Bool)

(assert (=> d!139459 m!1166815))

(assert (=> d!139459 m!1166757))

(assert (=> b!1267555 d!139459))

(declare-fun d!139461 () Bool)

(assert (=> d!139461 (= (removeStrictlySorted!168 (t!42081 l!874) key!235) (t!42081 l!874))))

(declare-fun lt!574300 () Unit!42170)

(declare-fun choose!1901 (List!28547 (_ BitVec 64)) Unit!42170)

(assert (=> d!139461 (= lt!574300 (choose!1901 (t!42081 l!874) key!235))))

(assert (=> d!139461 (isStrictlySorted!825 (t!42081 l!874))))

(assert (=> d!139461 (= (lemmaRemoveStrictlySortedNotPresentPreserves!7 (t!42081 l!874) key!235) lt!574300)))

(declare-fun bs!35896 () Bool)

(assert (= bs!35896 d!139461))

(assert (=> bs!35896 m!1166763))

(declare-fun m!1166837 () Bool)

(assert (=> bs!35896 m!1166837))

(assert (=> bs!35896 m!1166757))

(assert (=> b!1267555 d!139461))

(declare-fun d!139469 () Bool)

(declare-fun res!843934 () Bool)

(declare-fun e!722221 () Bool)

(assert (=> d!139469 (=> res!843934 e!722221)))

(assert (=> d!139469 (= res!843934 (and (is-Cons!28543 l!874) (= (_1!10724 (h!29752 l!874)) key!235)))))

(assert (=> d!139469 (= (containsKey!686 l!874 key!235) e!722221)))

(declare-fun b!1267682 () Bool)

(declare-fun e!722222 () Bool)

(assert (=> b!1267682 (= e!722221 e!722222)))

(declare-fun res!843935 () Bool)

(assert (=> b!1267682 (=> (not res!843935) (not e!722222))))

(assert (=> b!1267682 (= res!843935 (and (or (not (is-Cons!28543 l!874)) (bvsle (_1!10724 (h!29752 l!874)) key!235)) (is-Cons!28543 l!874) (bvslt (_1!10724 (h!29752 l!874)) key!235)))))

(declare-fun b!1267683 () Bool)

(assert (=> b!1267683 (= e!722222 (containsKey!686 (t!42081 l!874) key!235))))

(assert (= (and d!139469 (not res!843934)) b!1267682))

(assert (= (and b!1267682 res!843935) b!1267683))

(assert (=> b!1267683 m!1166769))

(assert (=> b!1267554 d!139469))

(declare-fun d!139477 () Bool)

(declare-fun res!843936 () Bool)

(declare-fun e!722223 () Bool)

(assert (=> d!139477 (=> res!843936 e!722223)))

(assert (=> d!139477 (= res!843936 (or (is-Nil!28544 (t!42081 l!874)) (is-Nil!28544 (t!42081 (t!42081 l!874)))))))

(assert (=> d!139477 (= (isStrictlySorted!825 (t!42081 l!874)) e!722223)))

(declare-fun b!1267684 () Bool)

(declare-fun e!722224 () Bool)

(assert (=> b!1267684 (= e!722223 e!722224)))

(declare-fun res!843937 () Bool)

(assert (=> b!1267684 (=> (not res!843937) (not e!722224))))

(assert (=> b!1267684 (= res!843937 (bvslt (_1!10724 (h!29752 (t!42081 l!874))) (_1!10724 (h!29752 (t!42081 (t!42081 l!874))))))))

(declare-fun b!1267685 () Bool)

(assert (=> b!1267685 (= e!722224 (isStrictlySorted!825 (t!42081 (t!42081 l!874))))))

(assert (= (and d!139477 (not res!843936)) b!1267684))

(assert (= (and b!1267684 res!843937) b!1267685))

(declare-fun m!1166851 () Bool)

(assert (=> b!1267685 m!1166851))

(assert (=> b!1267559 d!139477))

(declare-fun d!139479 () Bool)

(declare-fun res!843942 () Bool)

(declare-fun e!722229 () Bool)

(assert (=> d!139479 (=> res!843942 e!722229)))

(assert (=> d!139479 (= res!843942 (and (is-Cons!28543 (t!42081 l!874)) (= (_1!10724 (h!29752 (t!42081 l!874))) key!235)))))

(assert (=> d!139479 (= (containsKey!686 (t!42081 l!874) key!235) e!722229)))

(declare-fun b!1267690 () Bool)

(declare-fun e!722230 () Bool)

(assert (=> b!1267690 (= e!722229 e!722230)))

(declare-fun res!843943 () Bool)

(assert (=> b!1267690 (=> (not res!843943) (not e!722230))))

(assert (=> b!1267690 (= res!843943 (and (or (not (is-Cons!28543 (t!42081 l!874))) (bvsle (_1!10724 (h!29752 (t!42081 l!874))) key!235)) (is-Cons!28543 (t!42081 l!874)) (bvslt (_1!10724 (h!29752 (t!42081 l!874))) key!235)))))

(declare-fun b!1267691 () Bool)

(assert (=> b!1267691 (= e!722230 (containsKey!686 (t!42081 (t!42081 l!874)) key!235))))

(assert (= (and d!139479 (not res!843942)) b!1267690))

(assert (= (and b!1267690 res!843943) b!1267691))

(declare-fun m!1166853 () Bool)

(assert (=> b!1267691 m!1166853))

(assert (=> b!1267557 d!139479))

(declare-fun b!1267702 () Bool)

(declare-fun e!722239 () Bool)

(declare-fun tp!96651 () Bool)

(assert (=> b!1267702 (= e!722239 (and tp_is_empty!32611 tp!96651))))

(assert (=> b!1267558 (= tp!96642 e!722239)))

(assert (= (and b!1267558 (is-Cons!28543 (t!42081 l!874))) b!1267702))

(push 1)

(assert (not d!139459))

(assert (not b!1267601))

(assert (not b!1267653))

(assert (not b!1267702))

(assert (not d!139461))

(assert (not b!1267691))

(assert (not b!1267683))

(assert (not b!1267638))

(assert (not d!139449))

(assert (not b!1267637))

(assert tp_is_empty!32611)

(assert (not b!1267652))

(assert (not b!1267685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!139461 d!139459))

(declare-fun d!139505 () Bool)

(assert (=> d!139505 (= (removeStrictlySorted!168 (t!42081 l!874) key!235) (t!42081 l!874))))

(assert (=> d!139505 true))

(declare-fun _$7!134 () Unit!42170)

(assert (=> d!139505 (= (choose!1901 (t!42081 l!874) key!235) _$7!134)))

(declare-fun bs!35900 () Bool)

(assert (= bs!35900 d!139505))

(assert (=> bs!35900 m!1166763))

(assert (=> d!139461 d!139505))

(assert (=> d!139461 d!139477))

(declare-fun d!139507 () Bool)

(assert (=> d!139507 (= ($colon$colon!651 (removeStrictlySorted!168 (t!42081 (t!42081 l!874)) key!235) (h!29752 (t!42081 l!874))) (Cons!28543 (h!29752 (t!42081 l!874)) (removeStrictlySorted!168 (t!42081 (t!42081 l!874)) key!235)))))

(assert (=> b!1267653 d!139507))

(declare-fun b!1267737 () Bool)

(declare-fun e!722268 () List!28547)

(declare-fun e!722269 () List!28547)

(assert (=> b!1267737 (= e!722268 e!722269)))

(declare-fun c!123544 () Bool)

(assert (=> b!1267737 (= c!123544 (and (is-Cons!28543 (t!42081 (t!42081 l!874))) (not (= (_1!10724 (h!29752 (t!42081 (t!42081 l!874)))) key!235))))))

(declare-fun b!1267738 () Bool)

(declare-fun e!722270 () Bool)

(declare-fun lt!574309 () List!28547)

(assert (=> b!1267738 (= e!722270 (not (containsKey!686 lt!574309 key!235)))))

(declare-fun b!1267739 () Bool)

(assert (=> b!1267739 (= e!722269 ($colon$colon!651 (removeStrictlySorted!168 (t!42081 (t!42081 (t!42081 l!874))) key!235) (h!29752 (t!42081 (t!42081 l!874)))))))

(declare-fun b!1267740 () Bool)

(assert (=> b!1267740 (= e!722269 Nil!28544)))

(declare-fun d!139509 () Bool)

(assert (=> d!139509 e!722270))

(declare-fun res!843969 () Bool)

(assert (=> d!139509 (=> (not res!843969) (not e!722270))))

(assert (=> d!139509 (= res!843969 (isStrictlySorted!825 lt!574309))))

(assert (=> d!139509 (= lt!574309 e!722268)))

(declare-fun c!123545 () Bool)

(assert (=> d!139509 (= c!123545 (and (is-Cons!28543 (t!42081 (t!42081 l!874))) (= (_1!10724 (h!29752 (t!42081 (t!42081 l!874)))) key!235)))))

(assert (=> d!139509 (isStrictlySorted!825 (t!42081 (t!42081 l!874)))))

(assert (=> d!139509 (= (removeStrictlySorted!168 (t!42081 (t!42081 l!874)) key!235) lt!574309)))

(declare-fun b!1267741 () Bool)

(assert (=> b!1267741 (= e!722268 (t!42081 (t!42081 (t!42081 l!874))))))

(assert (= (and d!139509 c!123545) b!1267741))

(assert (= (and d!139509 (not c!123545)) b!1267737))

(assert (= (and b!1267737 c!123544) b!1267739))

(assert (= (and b!1267737 (not c!123544)) b!1267740))

(assert (= (and d!139509 res!843969) b!1267738))

(declare-fun m!1166879 () Bool)

(assert (=> b!1267738 m!1166879))

(declare-fun m!1166881 () Bool)

(assert (=> b!1267739 m!1166881))

(assert (=> b!1267739 m!1166881))

(declare-fun m!1166883 () Bool)

(assert (=> b!1267739 m!1166883))

(declare-fun m!1166885 () Bool)

(assert (=> d!139509 m!1166885))

(assert (=> d!139509 m!1166851))

(assert (=> b!1267653 d!139509))

(assert (=> b!1267683 d!139479))

(declare-fun d!139511 () Bool)

(assert (=> d!139511 (= ($colon$colon!651 (removeStrictlySorted!168 (t!42081 l!874) key!235) (h!29752 l!874)) (Cons!28543 (h!29752 l!874) (removeStrictlySorted!168 (t!42081 l!874) key!235)))))

(assert (=> b!1267638 d!139511))

(assert (=> b!1267638 d!139459))

(declare-fun d!139513 () Bool)

(declare-fun res!843970 () Bool)

(declare-fun e!722271 () Bool)

(assert (=> d!139513 (=> res!843970 e!722271)))

(assert (=> d!139513 (= res!843970 (and (is-Cons!28543 (t!42081 (t!42081 l!874))) (= (_1!10724 (h!29752 (t!42081 (t!42081 l!874)))) key!235)))))

(assert (=> d!139513 (= (containsKey!686 (t!42081 (t!42081 l!874)) key!235) e!722271)))

(declare-fun b!1267742 () Bool)

(declare-fun e!722272 () Bool)

(assert (=> b!1267742 (= e!722271 e!722272)))

(declare-fun res!843971 () Bool)

(assert (=> b!1267742 (=> (not res!843971) (not e!722272))))

(assert (=> b!1267742 (= res!843971 (and (or (not (is-Cons!28543 (t!42081 (t!42081 l!874)))) (bvsle (_1!10724 (h!29752 (t!42081 (t!42081 l!874)))) key!235)) (is-Cons!28543 (t!42081 (t!42081 l!874))) (bvslt (_1!10724 (h!29752 (t!42081 (t!42081 l!874)))) key!235)))))

(declare-fun b!1267743 () Bool)

(assert (=> b!1267743 (= e!722272 (containsKey!686 (t!42081 (t!42081 (t!42081 l!874))) key!235))))

(assert (= (and d!139513 (not res!843970)) b!1267742))

(assert (= (and b!1267742 res!843971) b!1267743))

(declare-fun m!1166887 () Bool)

(assert (=> b!1267743 m!1166887))

(assert (=> b!1267691 d!139513))

(declare-fun d!139515 () Bool)

(declare-fun res!843972 () Bool)

(declare-fun e!722273 () Bool)

(assert (=> d!139515 (=> res!843972 e!722273)))

(assert (=> d!139515 (= res!843972 (or (is-Nil!28544 lt!574294) (is-Nil!28544 (t!42081 lt!574294))))))

(assert (=> d!139515 (= (isStrictlySorted!825 lt!574294) e!722273)))

(declare-fun b!1267744 () Bool)

(declare-fun e!722274 () Bool)

(assert (=> b!1267744 (= e!722273 e!722274)))

(declare-fun res!843973 () Bool)

(assert (=> b!1267744 (=> (not res!843973) (not e!722274))))

(assert (=> b!1267744 (= res!843973 (bvslt (_1!10724 (h!29752 lt!574294)) (_1!10724 (h!29752 (t!42081 lt!574294)))))))

(declare-fun b!1267745 () Bool)

(assert (=> b!1267745 (= e!722274 (isStrictlySorted!825 (t!42081 lt!574294)))))

(assert (= (and d!139515 (not res!843972)) b!1267744))

(assert (= (and b!1267744 res!843973) b!1267745))

(declare-fun m!1166889 () Bool)

(assert (=> b!1267745 m!1166889))

(assert (=> d!139459 d!139515))

(assert (=> d!139459 d!139477))

(declare-fun d!139517 () Bool)

(declare-fun res!843974 () Bool)

(declare-fun e!722275 () Bool)

(assert (=> d!139517 (=> res!843974 e!722275)))

(assert (=> d!139517 (= res!843974 (and (is-Cons!28543 lt!574294) (= (_1!10724 (h!29752 lt!574294)) key!235)))))

(assert (=> d!139517 (= (containsKey!686 lt!574294 key!235) e!722275)))

(declare-fun b!1267746 () Bool)

(declare-fun e!722276 () Bool)

(assert (=> b!1267746 (= e!722275 e!722276)))

(declare-fun res!843975 () Bool)

(assert (=> b!1267746 (=> (not res!843975) (not e!722276))))

(assert (=> b!1267746 (= res!843975 (and (or (not (is-Cons!28543 lt!574294)) (bvsle (_1!10724 (h!29752 lt!574294)) key!235)) (is-Cons!28543 lt!574294) (bvslt (_1!10724 (h!29752 lt!574294)) key!235)))))

(declare-fun b!1267747 () Bool)

(assert (=> b!1267747 (= e!722276 (containsKey!686 (t!42081 lt!574294) key!235))))

(assert (= (and d!139517 (not res!843974)) b!1267746))

(assert (= (and b!1267746 res!843975) b!1267747))

(declare-fun m!1166891 () Bool)

(assert (=> b!1267747 m!1166891))

(assert (=> b!1267652 d!139517))

(declare-fun d!139519 () Bool)

(declare-fun res!843976 () Bool)

(declare-fun e!722277 () Bool)

(assert (=> d!139519 (=> res!843976 e!722277)))

(assert (=> d!139519 (= res!843976 (or (is-Nil!28544 lt!574291) (is-Nil!28544 (t!42081 lt!574291))))))

(assert (=> d!139519 (= (isStrictlySorted!825 lt!574291) e!722277)))

(declare-fun b!1267748 () Bool)

(declare-fun e!722278 () Bool)

(assert (=> b!1267748 (= e!722277 e!722278)))

(declare-fun res!843977 () Bool)

(assert (=> b!1267748 (=> (not res!843977) (not e!722278))))

(assert (=> b!1267748 (= res!843977 (bvslt (_1!10724 (h!29752 lt!574291)) (_1!10724 (h!29752 (t!42081 lt!574291)))))))

(declare-fun b!1267749 () Bool)

(assert (=> b!1267749 (= e!722278 (isStrictlySorted!825 (t!42081 lt!574291)))))

(assert (= (and d!139519 (not res!843976)) b!1267748))

(assert (= (and b!1267748 res!843977) b!1267749))

(declare-fun m!1166893 () Bool)

(assert (=> b!1267749 m!1166893))

(assert (=> d!139449 d!139519))

(assert (=> d!139449 d!139443))

(declare-fun d!139521 () Bool)

(declare-fun res!843978 () Bool)

(declare-fun e!722279 () Bool)

(assert (=> d!139521 (=> res!843978 e!722279)))

(assert (=> d!139521 (= res!843978 (and (is-Cons!28543 lt!574291) (= (_1!10724 (h!29752 lt!574291)) key!235)))))

(assert (=> d!139521 (= (containsKey!686 lt!574291 key!235) e!722279)))

(declare-fun b!1267750 () Bool)

(declare-fun e!722280 () Bool)

(assert (=> b!1267750 (= e!722279 e!722280)))

(declare-fun res!843979 () Bool)

(assert (=> b!1267750 (=> (not res!843979) (not e!722280))))

(assert (=> b!1267750 (= res!843979 (and (or (not (is-Cons!28543 lt!574291)) (bvsle (_1!10724 (h!29752 lt!574291)) key!235)) (is-Cons!28543 lt!574291) (bvslt (_1!10724 (h!29752 lt!574291)) key!235)))))

(declare-fun b!1267751 () Bool)

(assert (=> b!1267751 (= e!722280 (containsKey!686 (t!42081 lt!574291) key!235))))

(assert (= (and d!139521 (not res!843978)) b!1267750))

(assert (= (and b!1267750 res!843979) b!1267751))

(declare-fun m!1166895 () Bool)

(assert (=> b!1267751 m!1166895))

(assert (=> b!1267637 d!139521))

(assert (=> b!1267601 d!139477))

(declare-fun d!139523 () Bool)

(declare-fun res!843980 () Bool)

(declare-fun e!722281 () Bool)

(assert (=> d!139523 (=> res!843980 e!722281)))

(assert (=> d!139523 (= res!843980 (or (is-Nil!28544 (t!42081 (t!42081 l!874))) (is-Nil!28544 (t!42081 (t!42081 (t!42081 l!874))))))))

(assert (=> d!139523 (= (isStrictlySorted!825 (t!42081 (t!42081 l!874))) e!722281)))

(declare-fun b!1267752 () Bool)

(declare-fun e!722282 () Bool)

(assert (=> b!1267752 (= e!722281 e!722282)))

(declare-fun res!843981 () Bool)

(assert (=> b!1267752 (=> (not res!843981) (not e!722282))))

(assert (=> b!1267752 (= res!843981 (bvslt (_1!10724 (h!29752 (t!42081 (t!42081 l!874)))) (_1!10724 (h!29752 (t!42081 (t!42081 (t!42081 l!874)))))))))

(declare-fun b!1267753 () Bool)

(assert (=> b!1267753 (= e!722282 (isStrictlySorted!825 (t!42081 (t!42081 (t!42081 l!874)))))))

(assert (= (and d!139523 (not res!843980)) b!1267752))

(assert (= (and b!1267752 res!843981) b!1267753))

(declare-fun m!1166897 () Bool)

(assert (=> b!1267753 m!1166897))

(assert (=> b!1267685 d!139523))

(declare-fun b!1267754 () Bool)

(declare-fun e!722283 () Bool)

(declare-fun tp!96659 () Bool)

(assert (=> b!1267754 (= e!722283 (and tp_is_empty!32611 tp!96659))))

(assert (=> b!1267702 (= tp!96651 e!722283)))

(assert (= (and b!1267702 (is-Cons!28543 (t!42081 (t!42081 l!874)))) b!1267754))

(push 1)

