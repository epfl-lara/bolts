; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689458 () Bool)

(assert start!689458)

(declare-fun b!7083713 () Bool)

(declare-fun e!4258743 () Bool)

(declare-fun tp!1944218 () Bool)

(declare-fun tp!1944220 () Bool)

(assert (=> b!7083713 (= e!4258743 (and tp!1944218 tp!1944220))))

(declare-fun res!2893953 () Bool)

(declare-fun e!4258744 () Bool)

(assert (=> start!689458 (=> (not res!2893953) (not e!4258744))))

(declare-datatypes ((C!35710 0))(
  ( (C!35711 (val!27561 Int)) )
))
(declare-datatypes ((Regex!17720 0))(
  ( (ElementMatch!17720 (c!1322231 C!35710)) (Concat!26565 (regOne!35952 Regex!17720) (regTwo!35952 Regex!17720)) (EmptyExpr!17720) (Star!17720 (reg!18049 Regex!17720)) (EmptyLang!17720) (Union!17720 (regOne!35953 Regex!17720) (regTwo!35953 Regex!17720)) )
))
(declare-fun r!11554 () Regex!17720)

(declare-fun validRegex!8995 (Regex!17720) Bool)

(assert (=> start!689458 (= res!2893953 (validRegex!8995 r!11554))))

(assert (=> start!689458 e!4258744))

(assert (=> start!689458 e!4258743))

(declare-datatypes ((List!68683 0))(
  ( (Nil!68559) (Cons!68559 (h!75007 Regex!17720) (t!382468 List!68683)) )
))
(declare-datatypes ((Context!13432 0))(
  ( (Context!13433 (exprs!7216 List!68683)) )
))
(declare-fun cz!4 () Context!13432)

(declare-fun e!4258745 () Bool)

(declare-fun inv!87166 (Context!13432) Bool)

(assert (=> start!689458 (and (inv!87166 cz!4) e!4258745)))

(declare-fun b!7083714 () Bool)

(declare-fun lambda!428760 () Int)

(declare-fun forall!16676 (List!68683 Int) Bool)

(assert (=> b!7083714 (= e!4258744 (not (forall!16676 (exprs!7216 cz!4) lambda!428760)))))

(declare-fun b!7083715 () Bool)

(declare-fun tp!1944217 () Bool)

(assert (=> b!7083715 (= e!4258743 tp!1944217)))

(declare-fun b!7083716 () Bool)

(declare-fun tp!1944219 () Bool)

(assert (=> b!7083716 (= e!4258745 tp!1944219)))

(declare-fun b!7083717 () Bool)

(declare-fun tp_is_empty!44673 () Bool)

(assert (=> b!7083717 (= e!4258743 tp_is_empty!44673)))

(declare-fun b!7083718 () Bool)

(declare-fun tp!1944222 () Bool)

(declare-fun tp!1944221 () Bool)

(assert (=> b!7083718 (= e!4258743 (and tp!1944222 tp!1944221))))

(assert (= (and start!689458 res!2893953) b!7083714))

(assert (= (and start!689458 (is-ElementMatch!17720 r!11554)) b!7083717))

(assert (= (and start!689458 (is-Concat!26565 r!11554)) b!7083718))

(assert (= (and start!689458 (is-Star!17720 r!11554)) b!7083715))

(assert (= (and start!689458 (is-Union!17720 r!11554)) b!7083713))

(assert (= start!689458 b!7083716))

(declare-fun m!7815856 () Bool)

(assert (=> start!689458 m!7815856))

(declare-fun m!7815858 () Bool)

(assert (=> start!689458 m!7815858))

(declare-fun m!7815860 () Bool)

(assert (=> b!7083714 m!7815860))

(push 1)

(assert (not start!689458))

(assert (not b!7083713))

(assert (not b!7083718))

(assert (not b!7083714))

(assert (not b!7083716))

(assert tp_is_empty!44673)

(assert (not b!7083715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2215698 () Bool)

(declare-fun res!2893970 () Bool)

(declare-fun e!4258772 () Bool)

(assert (=> d!2215698 (=> res!2893970 e!4258772)))

(assert (=> d!2215698 (= res!2893970 (is-ElementMatch!17720 r!11554))))

(assert (=> d!2215698 (= (validRegex!8995 r!11554) e!4258772)))

(declare-fun c!1322237 () Bool)

(declare-fun c!1322238 () Bool)

(declare-fun call!643626 () Bool)

(declare-fun bm!643621 () Bool)

(assert (=> bm!643621 (= call!643626 (validRegex!8995 (ite c!1322237 (reg!18049 r!11554) (ite c!1322238 (regOne!35953 r!11554) (regTwo!35952 r!11554)))))))

(declare-fun b!7083755 () Bool)

(declare-fun e!4258773 () Bool)

(assert (=> b!7083755 (= e!4258772 e!4258773)))

(assert (=> b!7083755 (= c!1322237 (is-Star!17720 r!11554))))

(declare-fun b!7083756 () Bool)

(declare-fun e!4258769 () Bool)

(assert (=> b!7083756 (= e!4258773 e!4258769)))

(declare-fun res!2893967 () Bool)

(declare-fun nullable!7378 (Regex!17720) Bool)

(assert (=> b!7083756 (= res!2893967 (not (nullable!7378 (reg!18049 r!11554))))))

(assert (=> b!7083756 (=> (not res!2893967) (not e!4258769))))

(declare-fun b!7083757 () Bool)

(declare-fun e!4258771 () Bool)

(assert (=> b!7083757 (= e!4258773 e!4258771)))

(assert (=> b!7083757 (= c!1322238 (is-Union!17720 r!11554))))

(declare-fun b!7083758 () Bool)

(declare-fun e!4258775 () Bool)

(declare-fun call!643627 () Bool)

(assert (=> b!7083758 (= e!4258775 call!643627)))

(declare-fun b!7083759 () Bool)

(declare-fun res!2893968 () Bool)

(declare-fun e!4258770 () Bool)

(assert (=> b!7083759 (=> res!2893968 e!4258770)))

(assert (=> b!7083759 (= res!2893968 (not (is-Concat!26565 r!11554)))))

(assert (=> b!7083759 (= e!4258771 e!4258770)))

(declare-fun b!7083760 () Bool)

(assert (=> b!7083760 (= e!4258769 call!643626)))

(declare-fun b!7083761 () Bool)

(assert (=> b!7083761 (= e!4258770 e!4258775)))

(declare-fun res!2893969 () Bool)

(assert (=> b!7083761 (=> (not res!2893969) (not e!4258775))))

(declare-fun call!643628 () Bool)

(assert (=> b!7083761 (= res!2893969 call!643628)))

(declare-fun b!7083762 () Bool)

(declare-fun e!4258774 () Bool)

(assert (=> b!7083762 (= e!4258774 call!643628)))

(declare-fun bm!643622 () Bool)

(assert (=> bm!643622 (= call!643628 (validRegex!8995 (ite c!1322238 (regTwo!35953 r!11554) (regOne!35952 r!11554))))))

(declare-fun b!7083763 () Bool)

(declare-fun res!2893971 () Bool)

(assert (=> b!7083763 (=> (not res!2893971) (not e!4258774))))

(assert (=> b!7083763 (= res!2893971 call!643627)))

(assert (=> b!7083763 (= e!4258771 e!4258774)))

(declare-fun bm!643623 () Bool)

(assert (=> bm!643623 (= call!643627 call!643626)))

(assert (= (and d!2215698 (not res!2893970)) b!7083755))

(assert (= (and b!7083755 c!1322237) b!7083756))

(assert (= (and b!7083755 (not c!1322237)) b!7083757))

(assert (= (and b!7083756 res!2893967) b!7083760))

(assert (= (and b!7083757 c!1322238) b!7083763))

(assert (= (and b!7083757 (not c!1322238)) b!7083759))

(assert (= (and b!7083763 res!2893971) b!7083762))

(assert (= (and b!7083759 (not res!2893968)) b!7083761))

(assert (= (and b!7083761 res!2893969) b!7083758))

(assert (= (or b!7083763 b!7083758) bm!643623))

(assert (= (or b!7083762 b!7083761) bm!643622))

(assert (= (or b!7083760 bm!643623) bm!643621))

(declare-fun m!7815868 () Bool)

(assert (=> bm!643621 m!7815868))

(declare-fun m!7815870 () Bool)

(assert (=> b!7083756 m!7815870))

(declare-fun m!7815872 () Bool)

(assert (=> bm!643622 m!7815872))

(assert (=> start!689458 d!2215698))

(declare-fun bs!1882745 () Bool)

(declare-fun d!2215702 () Bool)

(assert (= bs!1882745 (and d!2215702 b!7083714)))

(declare-fun lambda!428766 () Int)

(assert (=> bs!1882745 (= lambda!428766 lambda!428760)))

(assert (=> d!2215702 (= (inv!87166 cz!4) (forall!16676 (exprs!7216 cz!4) lambda!428766))))

(declare-fun bs!1882746 () Bool)

(assert (= bs!1882746 d!2215702))

(declare-fun m!7815874 () Bool)

(assert (=> bs!1882746 m!7815874))

(assert (=> start!689458 d!2215702))

(declare-fun d!2215704 () Bool)

(declare-fun res!2893980 () Bool)

(declare-fun e!4258784 () Bool)

(assert (=> d!2215704 (=> res!2893980 e!4258784)))

(assert (=> d!2215704 (= res!2893980 (is-Nil!68559 (exprs!7216 cz!4)))))

(assert (=> d!2215704 (= (forall!16676 (exprs!7216 cz!4) lambda!428760) e!4258784)))

(declare-fun b!7083772 () Bool)

(declare-fun e!4258785 () Bool)

(assert (=> b!7083772 (= e!4258784 e!4258785)))

(declare-fun res!2893981 () Bool)

(assert (=> b!7083772 (=> (not res!2893981) (not e!4258785))))

(declare-fun dynLambda!27949 (Int Regex!17720) Bool)

(assert (=> b!7083772 (= res!2893981 (dynLambda!27949 lambda!428760 (h!75007 (exprs!7216 cz!4))))))

(declare-fun b!7083773 () Bool)

(assert (=> b!7083773 (= e!4258785 (forall!16676 (t!382468 (exprs!7216 cz!4)) lambda!428760))))

(assert (= (and d!2215704 (not res!2893980)) b!7083772))

(assert (= (and b!7083772 res!2893981) b!7083773))

(declare-fun b_lambda!270729 () Bool)

(assert (=> (not b_lambda!270729) (not b!7083772)))

(declare-fun m!7815876 () Bool)

(assert (=> b!7083772 m!7815876))

(declare-fun m!7815878 () Bool)

(assert (=> b!7083773 m!7815878))

(assert (=> b!7083714 d!2215704))

(declare-fun b!7083780 () Bool)

(declare-fun e!4258790 () Bool)

(declare-fun tp!1944245 () Bool)

(declare-fun tp!1944246 () Bool)

(assert (=> b!7083780 (= e!4258790 (and tp!1944245 tp!1944246))))

(assert (=> b!7083716 (= tp!1944219 e!4258790)))

(assert (= (and b!7083716 (is-Cons!68559 (exprs!7216 cz!4))) b!7083780))

(declare-fun b!7083794 () Bool)

(declare-fun e!4258793 () Bool)

(declare-fun tp!1944259 () Bool)

(declare-fun tp!1944261 () Bool)

(assert (=> b!7083794 (= e!4258793 (and tp!1944259 tp!1944261))))

(declare-fun b!7083792 () Bool)

(declare-fun tp!1944258 () Bool)

(declare-fun tp!1944260 () Bool)

(assert (=> b!7083792 (= e!4258793 (and tp!1944258 tp!1944260))))

(declare-fun b!7083793 () Bool)

(declare-fun tp!1944257 () Bool)

(assert (=> b!7083793 (= e!4258793 tp!1944257)))

(assert (=> b!7083713 (= tp!1944218 e!4258793)))

(declare-fun b!7083791 () Bool)

(assert (=> b!7083791 (= e!4258793 tp_is_empty!44673)))

(assert (= (and b!7083713 (is-ElementMatch!17720 (regOne!35953 r!11554))) b!7083791))

(assert (= (and b!7083713 (is-Concat!26565 (regOne!35953 r!11554))) b!7083792))

(assert (= (and b!7083713 (is-Star!17720 (regOne!35953 r!11554))) b!7083793))

(assert (= (and b!7083713 (is-Union!17720 (regOne!35953 r!11554))) b!7083794))

(declare-fun b!7083798 () Bool)

(declare-fun e!4258794 () Bool)

(declare-fun tp!1944264 () Bool)

(declare-fun tp!1944266 () Bool)

(assert (=> b!7083798 (= e!4258794 (and tp!1944264 tp!1944266))))

(declare-fun b!7083796 () Bool)

(declare-fun tp!1944263 () Bool)

(declare-fun tp!1944265 () Bool)

(assert (=> b!7083796 (= e!4258794 (and tp!1944263 tp!1944265))))

(declare-fun b!7083797 () Bool)

(declare-fun tp!1944262 () Bool)

(assert (=> b!7083797 (= e!4258794 tp!1944262)))

(assert (=> b!7083713 (= tp!1944220 e!4258794)))

(declare-fun b!7083795 () Bool)

(assert (=> b!7083795 (= e!4258794 tp_is_empty!44673)))

(assert (= (and b!7083713 (is-ElementMatch!17720 (regTwo!35953 r!11554))) b!7083795))

(assert (= (and b!7083713 (is-Concat!26565 (regTwo!35953 r!11554))) b!7083796))

(assert (= (and b!7083713 (is-Star!17720 (regTwo!35953 r!11554))) b!7083797))

(assert (= (and b!7083713 (is-Union!17720 (regTwo!35953 r!11554))) b!7083798))

(declare-fun b!7083802 () Bool)

(declare-fun e!4258795 () Bool)

(declare-fun tp!1944269 () Bool)

(declare-fun tp!1944271 () Bool)

(assert (=> b!7083802 (= e!4258795 (and tp!1944269 tp!1944271))))

(declare-fun b!7083800 () Bool)

(declare-fun tp!1944268 () Bool)

(declare-fun tp!1944270 () Bool)

(assert (=> b!7083800 (= e!4258795 (and tp!1944268 tp!1944270))))

(declare-fun b!7083801 () Bool)

(declare-fun tp!1944267 () Bool)

(assert (=> b!7083801 (= e!4258795 tp!1944267)))

(assert (=> b!7083718 (= tp!1944222 e!4258795)))

(declare-fun b!7083799 () Bool)

(assert (=> b!7083799 (= e!4258795 tp_is_empty!44673)))

(assert (= (and b!7083718 (is-ElementMatch!17720 (regOne!35952 r!11554))) b!7083799))

(assert (= (and b!7083718 (is-Concat!26565 (regOne!35952 r!11554))) b!7083800))

(assert (= (and b!7083718 (is-Star!17720 (regOne!35952 r!11554))) b!7083801))

(assert (= (and b!7083718 (is-Union!17720 (regOne!35952 r!11554))) b!7083802))

(declare-fun b!7083806 () Bool)

(declare-fun e!4258796 () Bool)

(declare-fun tp!1944274 () Bool)

(declare-fun tp!1944276 () Bool)

(assert (=> b!7083806 (= e!4258796 (and tp!1944274 tp!1944276))))

(declare-fun b!7083804 () Bool)

(declare-fun tp!1944273 () Bool)

(declare-fun tp!1944275 () Bool)

(assert (=> b!7083804 (= e!4258796 (and tp!1944273 tp!1944275))))

(declare-fun b!7083805 () Bool)

(declare-fun tp!1944272 () Bool)

(assert (=> b!7083805 (= e!4258796 tp!1944272)))

(assert (=> b!7083718 (= tp!1944221 e!4258796)))

(declare-fun b!7083803 () Bool)

(assert (=> b!7083803 (= e!4258796 tp_is_empty!44673)))

(assert (= (and b!7083718 (is-ElementMatch!17720 (regTwo!35952 r!11554))) b!7083803))

(assert (= (and b!7083718 (is-Concat!26565 (regTwo!35952 r!11554))) b!7083804))

(assert (= (and b!7083718 (is-Star!17720 (regTwo!35952 r!11554))) b!7083805))

(assert (= (and b!7083718 (is-Union!17720 (regTwo!35952 r!11554))) b!7083806))

(declare-fun b!7083810 () Bool)

(declare-fun e!4258797 () Bool)

(declare-fun tp!1944279 () Bool)

(declare-fun tp!1944281 () Bool)

(assert (=> b!7083810 (= e!4258797 (and tp!1944279 tp!1944281))))

(declare-fun b!7083808 () Bool)

(declare-fun tp!1944278 () Bool)

(declare-fun tp!1944280 () Bool)

(assert (=> b!7083808 (= e!4258797 (and tp!1944278 tp!1944280))))

(declare-fun b!7083809 () Bool)

(declare-fun tp!1944277 () Bool)

(assert (=> b!7083809 (= e!4258797 tp!1944277)))

(assert (=> b!7083715 (= tp!1944217 e!4258797)))

(declare-fun b!7083807 () Bool)

(assert (=> b!7083807 (= e!4258797 tp_is_empty!44673)))

(assert (= (and b!7083715 (is-ElementMatch!17720 (reg!18049 r!11554))) b!7083807))

(assert (= (and b!7083715 (is-Concat!26565 (reg!18049 r!11554))) b!7083808))

(assert (= (and b!7083715 (is-Star!17720 (reg!18049 r!11554))) b!7083809))

(assert (= (and b!7083715 (is-Union!17720 (reg!18049 r!11554))) b!7083810))

(declare-fun b_lambda!270733 () Bool)

(assert (= b_lambda!270729 (or b!7083714 b_lambda!270733)))

(declare-fun bs!1882747 () Bool)

(declare-fun d!2215708 () Bool)

(assert (= bs!1882747 (and d!2215708 b!7083714)))

(assert (=> bs!1882747 (= (dynLambda!27949 lambda!428760 (h!75007 (exprs!7216 cz!4))) (validRegex!8995 (h!75007 (exprs!7216 cz!4))))))

(declare-fun m!7815884 () Bool)

(assert (=> bs!1882747 m!7815884))

(assert (=> b!7083772 d!2215708))

(push 1)

(assert (not b!7083808))

(assert (not bs!1882747))

(assert (not d!2215702))

(assert (not b!7083756))

(assert (not b!7083773))

(assert (not b!7083796))

(assert (not b!7083809))

(assert (not b!7083804))

(assert (not b!7083800))

(assert (not b!7083806))

(assert tp_is_empty!44673)

(assert (not b!7083793))

(assert (not b!7083801))

(assert (not b!7083805))

(assert (not b!7083810))

(assert (not bm!643622))

(assert (not b!7083780))

(assert (not b!7083792))

(assert (not b!7083802))

(assert (not b!7083798))

(assert (not b_lambda!270733))

(assert (not b!7083794))

(assert (not b!7083797))

(assert (not bm!643621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

