; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106868 () Bool)

(assert start!106868)

(declare-fun b!1267590 () Bool)

(declare-fun e!722158 () Bool)

(declare-fun tp_is_empty!32615 () Bool)

(declare-fun tp!96648 () Bool)

(assert (=> b!1267590 (= e!722158 (and tp_is_empty!32615 tp!96648))))

(declare-fun b!1267591 () Bool)

(declare-fun res!843894 () Bool)

(declare-fun e!722157 () Bool)

(assert (=> b!1267591 (=> (not res!843894) (not e!722157))))

(declare-datatypes ((B!2094 0))(
  ( (B!2095 (val!16382 Int)) )
))
(declare-datatypes ((tuple2!21432 0))(
  ( (tuple2!21433 (_1!10726 (_ BitVec 64)) (_2!10726 B!2094)) )
))
(declare-datatypes ((List!28549 0))(
  ( (Nil!28546) (Cons!28545 (h!29754 tuple2!21432) (t!42083 List!28549)) )
))
(declare-fun l!874 () List!28549)

(assert (=> b!1267591 (= res!843894 (is-Cons!28545 l!874))))

(declare-fun res!843891 () Bool)

(assert (=> start!106868 (=> (not res!843891) (not e!722157))))

(declare-fun isStrictlySorted!827 (List!28549) Bool)

(assert (=> start!106868 (= res!843891 (isStrictlySorted!827 l!874))))

(assert (=> start!106868 e!722157))

(assert (=> start!106868 e!722158))

(assert (=> start!106868 true))

(declare-fun b!1267592 () Bool)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun removeStrictlySorted!170 (List!28549 (_ BitVec 64)) List!28549)

(assert (=> b!1267592 (= e!722157 (not (= (removeStrictlySorted!170 l!874 key!235) l!874)))))

(assert (=> b!1267592 (= (removeStrictlySorted!170 (t!42083 l!874) key!235) (t!42083 l!874))))

(declare-datatypes ((Unit!42174 0))(
  ( (Unit!42175) )
))
(declare-fun lt!574286 () Unit!42174)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!9 (List!28549 (_ BitVec 64)) Unit!42174)

(assert (=> b!1267592 (= lt!574286 (lemmaRemoveStrictlySortedNotPresentPreserves!9 (t!42083 l!874) key!235))))

(declare-fun b!1267593 () Bool)

(declare-fun res!843893 () Bool)

(assert (=> b!1267593 (=> (not res!843893) (not e!722157))))

(declare-fun containsKey!688 (List!28549 (_ BitVec 64)) Bool)

(assert (=> b!1267593 (= res!843893 (not (containsKey!688 (t!42083 l!874) key!235)))))

(declare-fun b!1267594 () Bool)

(declare-fun res!843892 () Bool)

(assert (=> b!1267594 (=> (not res!843892) (not e!722157))))

(assert (=> b!1267594 (= res!843892 (not (containsKey!688 l!874 key!235)))))

(declare-fun b!1267595 () Bool)

(declare-fun res!843895 () Bool)

(assert (=> b!1267595 (=> (not res!843895) (not e!722157))))

(assert (=> b!1267595 (= res!843895 (isStrictlySorted!827 (t!42083 l!874)))))

(assert (= (and start!106868 res!843891) b!1267594))

(assert (= (and b!1267594 res!843892) b!1267591))

(assert (= (and b!1267591 res!843894) b!1267595))

(assert (= (and b!1267595 res!843895) b!1267593))

(assert (= (and b!1267593 res!843893) b!1267592))

(assert (= (and start!106868 (is-Cons!28545 l!874)) b!1267590))

(declare-fun m!1166785 () Bool)

(assert (=> b!1267595 m!1166785))

(declare-fun m!1166787 () Bool)

(assert (=> b!1267592 m!1166787))

(declare-fun m!1166789 () Bool)

(assert (=> b!1267592 m!1166789))

(declare-fun m!1166791 () Bool)

(assert (=> b!1267592 m!1166791))

(declare-fun m!1166793 () Bool)

(assert (=> b!1267593 m!1166793))

(declare-fun m!1166795 () Bool)

(assert (=> b!1267594 m!1166795))

(declare-fun m!1166797 () Bool)

(assert (=> start!106868 m!1166797))

(push 1)

(assert (not b!1267595))

(assert (not b!1267592))

(assert tp_is_empty!32615)

(assert (not b!1267590))

(assert (not start!106868))

(assert (not b!1267594))

(assert (not b!1267593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139447 () Bool)

(declare-fun res!843914 () Bool)

(declare-fun e!722177 () Bool)

(assert (=> d!139447 (=> res!843914 e!722177)))

(assert (=> d!139447 (= res!843914 (and (is-Cons!28545 l!874) (= (_1!10726 (h!29754 l!874)) key!235)))))

(assert (=> d!139447 (= (containsKey!688 l!874 key!235) e!722177)))

(declare-fun b!1267614 () Bool)

(declare-fun e!722178 () Bool)

(assert (=> b!1267614 (= e!722177 e!722178)))

(declare-fun res!843915 () Bool)

(assert (=> b!1267614 (=> (not res!843915) (not e!722178))))

(assert (=> b!1267614 (= res!843915 (and (or (not (is-Cons!28545 l!874)) (bvsle (_1!10726 (h!29754 l!874)) key!235)) (is-Cons!28545 l!874) (bvslt (_1!10726 (h!29754 l!874)) key!235)))))

(declare-fun b!1267615 () Bool)

(assert (=> b!1267615 (= e!722178 (containsKey!688 (t!42083 l!874) key!235))))

(assert (= (and d!139447 (not res!843914)) b!1267614))

(assert (= (and b!1267614 res!843915) b!1267615))

(assert (=> b!1267615 m!1166793))

(assert (=> b!1267594 d!139447))

(declare-fun d!139455 () Bool)

(declare-fun res!843916 () Bool)

(declare-fun e!722179 () Bool)

(assert (=> d!139455 (=> res!843916 e!722179)))

(assert (=> d!139455 (= res!843916 (and (is-Cons!28545 (t!42083 l!874)) (= (_1!10726 (h!29754 (t!42083 l!874))) key!235)))))

(assert (=> d!139455 (= (containsKey!688 (t!42083 l!874) key!235) e!722179)))

(declare-fun b!1267616 () Bool)

(declare-fun e!722180 () Bool)

(assert (=> b!1267616 (= e!722179 e!722180)))

(declare-fun res!843917 () Bool)

(assert (=> b!1267616 (=> (not res!843917) (not e!722180))))

(assert (=> b!1267616 (= res!843917 (and (or (not (is-Cons!28545 (t!42083 l!874))) (bvsle (_1!10726 (h!29754 (t!42083 l!874))) key!235)) (is-Cons!28545 (t!42083 l!874)) (bvslt (_1!10726 (h!29754 (t!42083 l!874))) key!235)))))

(declare-fun b!1267617 () Bool)

(assert (=> b!1267617 (= e!722180 (containsKey!688 (t!42083 (t!42083 l!874)) key!235))))

(assert (= (and d!139455 (not res!843916)) b!1267616))

(assert (= (and b!1267616 res!843917) b!1267617))

(declare-fun m!1166801 () Bool)

(assert (=> b!1267617 m!1166801))

(assert (=> b!1267593 d!139455))

(declare-fun d!139457 () Bool)

(declare-fun e!722212 () Bool)

(assert (=> d!139457 e!722212))

(declare-fun res!843928 () Bool)

(assert (=> d!139457 (=> (not res!843928) (not e!722212))))

(declare-fun lt!574297 () List!28549)

(assert (=> d!139457 (= res!843928 (isStrictlySorted!827 lt!574297))))

(declare-fun e!722213 () List!28549)

(assert (=> d!139457 (= lt!574297 e!722213)))

(declare-fun c!123539 () Bool)

(assert (=> d!139457 (= c!123539 (and (is-Cons!28545 l!874) (= (_1!10726 (h!29754 l!874)) key!235)))))

(assert (=> d!139457 (isStrictlySorted!827 l!874)))

(assert (=> d!139457 (= (removeStrictlySorted!170 l!874 key!235) lt!574297)))

(declare-fun b!1267668 () Bool)

(declare-fun e!722211 () List!28549)

(declare-fun $colon$colon!653 (List!28549 tuple2!21432) List!28549)

(assert (=> b!1267668 (= e!722211 ($colon$colon!653 (removeStrictlySorted!170 (t!42083 l!874) key!235) (h!29754 l!874)))))

(declare-fun b!1267669 () Bool)

(assert (=> b!1267669 (= e!722212 (not (containsKey!688 lt!574297 key!235)))))

(declare-fun b!1267670 () Bool)

(assert (=> b!1267670 (= e!722213 e!722211)))

(declare-fun c!123538 () Bool)

(assert (=> b!1267670 (= c!123538 (and (is-Cons!28545 l!874) (not (= (_1!10726 (h!29754 l!874)) key!235))))))

(declare-fun b!1267671 () Bool)

(assert (=> b!1267671 (= e!722213 (t!42083 l!874))))

(declare-fun b!1267672 () Bool)

(assert (=> b!1267672 (= e!722211 Nil!28546)))

(assert (= (and d!139457 c!123539) b!1267671))

(assert (= (and d!139457 (not c!123539)) b!1267670))

(assert (= (and b!1267670 c!123538) b!1267668))

(assert (= (and b!1267670 (not c!123538)) b!1267672))

(assert (= (and d!139457 res!843928) b!1267669))

(declare-fun m!1166831 () Bool)

(assert (=> d!139457 m!1166831))

(assert (=> d!139457 m!1166797))

(assert (=> b!1267668 m!1166789))

(assert (=> b!1267668 m!1166789))

(declare-fun m!1166833 () Bool)

(assert (=> b!1267668 m!1166833))

(declare-fun m!1166835 () Bool)

(assert (=> b!1267669 m!1166835))

(assert (=> b!1267592 d!139457))

(declare-fun d!139467 () Bool)

(declare-fun e!722215 () Bool)

(assert (=> d!139467 e!722215))

(declare-fun res!843929 () Bool)

(assert (=> d!139467 (=> (not res!843929) (not e!722215))))

(declare-fun lt!574301 () List!28549)

(assert (=> d!139467 (= res!843929 (isStrictlySorted!827 lt!574301))))

(declare-fun e!722216 () List!28549)

(assert (=> d!139467 (= lt!574301 e!722216)))

(declare-fun c!123541 () Bool)

(assert (=> d!139467 (= c!123541 (and (is-Cons!28545 (t!42083 l!874)) (= (_1!10726 (h!29754 (t!42083 l!874))) key!235)))))

(assert (=> d!139467 (isStrictlySorted!827 (t!42083 l!874))))

(assert (=> d!139467 (= (removeStrictlySorted!170 (t!42083 l!874) key!235) lt!574301)))

(declare-fun b!1267673 () Bool)

(declare-fun e!722214 () List!28549)

(assert (=> b!1267673 (= e!722214 ($colon$colon!653 (removeStrictlySorted!170 (t!42083 (t!42083 l!874)) key!235) (h!29754 (t!42083 l!874))))))

(declare-fun b!1267674 () Bool)

(assert (=> b!1267674 (= e!722215 (not (containsKey!688 lt!574301 key!235)))))

(declare-fun b!1267675 () Bool)

(assert (=> b!1267675 (= e!722216 e!722214)))

(declare-fun c!123540 () Bool)

(assert (=> b!1267675 (= c!123540 (and (is-Cons!28545 (t!42083 l!874)) (not (= (_1!10726 (h!29754 (t!42083 l!874))) key!235))))))

(declare-fun b!1267676 () Bool)

(assert (=> b!1267676 (= e!722216 (t!42083 (t!42083 l!874)))))

(declare-fun b!1267677 () Bool)

(assert (=> b!1267677 (= e!722214 Nil!28546)))

(assert (= (and d!139467 c!123541) b!1267676))

(assert (= (and d!139467 (not c!123541)) b!1267675))

(assert (= (and b!1267675 c!123540) b!1267673))

(assert (= (and b!1267675 (not c!123540)) b!1267677))

(assert (= (and d!139467 res!843929) b!1267674))

(declare-fun m!1166839 () Bool)

(assert (=> d!139467 m!1166839))

(assert (=> d!139467 m!1166785))

(declare-fun m!1166841 () Bool)

(assert (=> b!1267673 m!1166841))

(assert (=> b!1267673 m!1166841))

(declare-fun m!1166843 () Bool)

(assert (=> b!1267673 m!1166843))

(declare-fun m!1166845 () Bool)

(assert (=> b!1267674 m!1166845))

(assert (=> b!1267592 d!139467))

(declare-fun d!139471 () Bool)

(assert (=> d!139471 (= (removeStrictlySorted!170 (t!42083 l!874) key!235) (t!42083 l!874))))

(declare-fun lt!574307 () Unit!42174)

(declare-fun choose!1903 (List!28549 (_ BitVec 64)) Unit!42174)

(assert (=> d!139471 (= lt!574307 (choose!1903 (t!42083 l!874) key!235))))

(assert (=> d!139471 (isStrictlySorted!827 (t!42083 l!874))))

(assert (=> d!139471 (= (lemmaRemoveStrictlySortedNotPresentPreserves!9 (t!42083 l!874) key!235) lt!574307)))

(declare-fun bs!35898 () Bool)

(assert (= bs!35898 d!139471))

(assert (=> bs!35898 m!1166789))

(declare-fun m!1166849 () Bool)

(assert (=> bs!35898 m!1166849))

(assert (=> bs!35898 m!1166785))

(assert (=> b!1267592 d!139471))

(declare-fun d!139475 () Bool)

(declare-fun res!843952 () Bool)

(declare-fun e!722244 () Bool)

(assert (=> d!139475 (=> res!843952 e!722244)))

(assert (=> d!139475 (= res!843952 (or (is-Nil!28546 l!874) (is-Nil!28546 (t!42083 l!874))))))

(assert (=> d!139475 (= (isStrictlySorted!827 l!874) e!722244)))

(declare-fun b!1267709 () Bool)

(declare-fun e!722245 () Bool)

(assert (=> b!1267709 (= e!722244 e!722245)))

(declare-fun res!843953 () Bool)

(assert (=> b!1267709 (=> (not res!843953) (not e!722245))))

(assert (=> b!1267709 (= res!843953 (bvslt (_1!10726 (h!29754 l!874)) (_1!10726 (h!29754 (t!42083 l!874)))))))

(declare-fun b!1267710 () Bool)

(assert (=> b!1267710 (= e!722245 (isStrictlySorted!827 (t!42083 l!874)))))

(assert (= (and d!139475 (not res!843952)) b!1267709))

(assert (= (and b!1267709 res!843953) b!1267710))

(assert (=> b!1267710 m!1166785))

(assert (=> start!106868 d!139475))

(declare-fun d!139483 () Bool)

(declare-fun res!843954 () Bool)

(declare-fun e!722247 () Bool)

(assert (=> d!139483 (=> res!843954 e!722247)))

(assert (=> d!139483 (= res!843954 (or (is-Nil!28546 (t!42083 l!874)) (is-Nil!28546 (t!42083 (t!42083 l!874)))))))

(assert (=> d!139483 (= (isStrictlySorted!827 (t!42083 l!874)) e!722247)))

(declare-fun b!1267712 () Bool)

(declare-fun e!722248 () Bool)

(assert (=> b!1267712 (= e!722247 e!722248)))

(declare-fun res!843955 () Bool)

(assert (=> b!1267712 (=> (not res!843955) (not e!722248))))

(assert (=> b!1267712 (= res!843955 (bvslt (_1!10726 (h!29754 (t!42083 l!874))) (_1!10726 (h!29754 (t!42083 (t!42083 l!874))))))))

(declare-fun b!1267713 () Bool)

(assert (=> b!1267713 (= e!722248 (isStrictlySorted!827 (t!42083 (t!42083 l!874))))))

(assert (= (and d!139483 (not res!843954)) b!1267712))

(assert (= (and b!1267712 res!843955) b!1267713))

(declare-fun m!1166857 () Bool)

(assert (=> b!1267713 m!1166857))

(assert (=> b!1267595 d!139483))

(declare-fun b!1267718 () Bool)

(declare-fun e!722251 () Bool)

(declare-fun tp!96657 () Bool)

(assert (=> b!1267718 (= e!722251 (and tp_is_empty!32615 tp!96657))))

(assert (=> b!1267590 (= tp!96648 e!722251)))

(assert (= (and b!1267590 (is-Cons!28545 (t!42083 l!874))) b!1267718))

(push 1)

(assert (not b!1267615))

(assert (not b!1267617))

(assert (not b!1267669))

(assert (not b!1267668))

(assert (not b!1267673))

(assert (not d!139471))

(assert (not b!1267710))

(assert (not b!1267718))

(assert (not b!1267713))

(assert (not d!139467))

(assert (not d!139457))

(assert tp_is_empty!32615)

(assert (not b!1267674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

