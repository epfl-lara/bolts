; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87996 () Bool)

(assert start!87996)

(declare-fun b!1015780 () Bool)

(assert (=> b!1015780 true))

(assert (=> b!1015780 true))

(declare-fun bs!29463 () Bool)

(declare-fun b!1015776 () Bool)

(assert (= bs!29463 (and b!1015776 b!1015780)))

(declare-fun lambda!962 () Int)

(declare-datatypes ((B!1510 0))(
  ( (B!1511 (val!11839 Int)) )
))
(declare-datatypes ((tuple2!15314 0))(
  ( (tuple2!15315 (_1!7667 (_ BitVec 64)) (_2!7667 B!1510)) )
))
(declare-datatypes ((List!21615 0))(
  ( (Nil!21612) (Cons!21611 (h!22809 tuple2!15314) (t!30624 List!21615)) )
))
(declare-fun lt!449188 () List!21615)

(declare-fun l!1114 () List!21615)

(declare-fun lambda!963 () Int)

(assert (=> bs!29463 (= (= lt!449188 l!1114) (= lambda!963 lambda!962))))

(assert (=> b!1015776 true))

(assert (=> b!1015776 true))

(declare-fun res!681433 () Bool)

(declare-fun e!571452 () Bool)

(assert (=> start!87996 (=> (not res!681433) (not e!571452))))

(declare-fun isStrictlySorted!603 (List!21615) Bool)

(assert (=> start!87996 (= res!681433 (isStrictlySorted!603 l!1114))))

(assert (=> start!87996 e!571452))

(declare-fun e!571453 () Bool)

(assert (=> start!87996 e!571453))

(assert (=> start!87996 true))

(declare-fun tp_is_empty!23577 () Bool)

(assert (=> start!87996 tp_is_empty!23577))

(declare-fun b!1015775 () Bool)

(declare-fun tp!70704 () Bool)

(assert (=> b!1015775 (= e!571453 (and tp_is_empty!23577 tp!70704))))

(declare-fun e!571454 () Bool)

(assert (=> b!1015776 (= e!571454 (isStrictlySorted!603 lt!449188))))

(declare-datatypes ((List!21616 0))(
  ( (Nil!21613) (Cons!21612 (h!22810 (_ BitVec 64)) (t!30625 List!21616)) )
))
(declare-fun keys!40 () List!21616)

(declare-fun forall!272 (List!21616 Int) Bool)

(assert (=> b!1015776 (forall!272 (t!30625 keys!40) lambda!963)))

(declare-fun value!178 () B!1510)

(declare-fun newHead!31 () tuple2!15314)

(declare-datatypes ((Unit!33206 0))(
  ( (Unit!33207) )
))
(declare-fun lt!449190 () Unit!33206)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!52 (List!21615 List!21616 B!1510 tuple2!15314) Unit!33206)

(assert (=> b!1015776 (= lt!449190 (lemmaForallGetValueByKeySameWithASmallerHead!52 l!1114 (t!30625 keys!40) value!178 newHead!31))))

(declare-fun b!1015777 () Bool)

(assert (=> b!1015777 (= e!571452 (not e!571454))))

(declare-fun res!681436 () Bool)

(assert (=> b!1015777 (=> res!681436 e!571454)))

(assert (=> b!1015777 (= res!681436 (not (forall!272 (t!30625 keys!40) lambda!962)))))

(declare-datatypes ((Option!596 0))(
  ( (Some!595 (v!14444 B!1510)) (None!594) )
))
(declare-fun isDefined!397 (Option!596) Bool)

(declare-fun getValueByKey!545 (List!21615 (_ BitVec 64)) Option!596)

(assert (=> b!1015777 (isDefined!397 (getValueByKey!545 lt!449188 (h!22810 keys!40)))))

(declare-fun lt!449189 () Unit!33206)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!381 (List!21615 (_ BitVec 64)) Unit!33206)

(assert (=> b!1015777 (= lt!449189 (lemmaContainsKeyImpliesGetValueByKeyDefined!381 lt!449188 (h!22810 keys!40)))))

(assert (=> b!1015777 (= lt!449188 (Cons!21611 newHead!31 l!1114))))

(declare-fun containsKey!489 (List!21615 (_ BitVec 64)) Bool)

(assert (=> b!1015777 (containsKey!489 l!1114 (h!22810 keys!40))))

(declare-fun lt!449187 () Unit!33206)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!8 (List!21615 (_ BitVec 64)) Unit!33206)

(assert (=> b!1015777 (= lt!449187 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!8 l!1114 (h!22810 keys!40)))))

(declare-fun b!1015778 () Bool)

(declare-fun res!681432 () Bool)

(assert (=> b!1015778 (=> (not res!681432) (not e!571452))))

(declare-fun isEmpty!871 (List!21615) Bool)

(assert (=> b!1015778 (= res!681432 (not (isEmpty!871 l!1114)))))

(declare-fun b!1015779 () Bool)

(declare-fun res!681431 () Bool)

(assert (=> b!1015779 (=> (not res!681431) (not e!571452))))

(declare-fun head!954 (List!21615) tuple2!15314)

(assert (=> b!1015779 (= res!681431 (bvslt (_1!7667 newHead!31) (_1!7667 (head!954 l!1114))))))

(declare-fun res!681434 () Bool)

(assert (=> b!1015780 (=> (not res!681434) (not e!571452))))

(assert (=> b!1015780 (= res!681434 (forall!272 keys!40 lambda!962))))

(declare-fun b!1015781 () Bool)

(declare-fun res!681435 () Bool)

(assert (=> b!1015781 (=> (not res!681435) (not e!571452))))

(get-info :version)

(assert (=> b!1015781 (= res!681435 ((_ is Cons!21612) keys!40))))

(assert (= (and start!87996 res!681433) b!1015778))

(assert (= (and b!1015778 res!681432) b!1015780))

(assert (= (and b!1015780 res!681434) b!1015779))

(assert (= (and b!1015779 res!681431) b!1015781))

(assert (= (and b!1015781 res!681435) b!1015777))

(assert (= (and b!1015777 (not res!681436)) b!1015776))

(assert (= (and start!87996 ((_ is Cons!21611) l!1114)) b!1015775))

(declare-fun m!937841 () Bool)

(assert (=> start!87996 m!937841))

(declare-fun m!937843 () Bool)

(assert (=> b!1015779 m!937843))

(declare-fun m!937845 () Bool)

(assert (=> b!1015778 m!937845))

(declare-fun m!937847 () Bool)

(assert (=> b!1015776 m!937847))

(declare-fun m!937849 () Bool)

(assert (=> b!1015776 m!937849))

(declare-fun m!937851 () Bool)

(assert (=> b!1015776 m!937851))

(declare-fun m!937853 () Bool)

(assert (=> b!1015780 m!937853))

(declare-fun m!937855 () Bool)

(assert (=> b!1015777 m!937855))

(declare-fun m!937857 () Bool)

(assert (=> b!1015777 m!937857))

(declare-fun m!937859 () Bool)

(assert (=> b!1015777 m!937859))

(declare-fun m!937861 () Bool)

(assert (=> b!1015777 m!937861))

(declare-fun m!937863 () Bool)

(assert (=> b!1015777 m!937863))

(declare-fun m!937865 () Bool)

(assert (=> b!1015777 m!937865))

(assert (=> b!1015777 m!937859))

(check-sat (not b!1015775) (not b!1015776) (not b!1015779) tp_is_empty!23577 (not b!1015780) (not start!87996) (not b!1015777) (not b!1015778))
(check-sat)
(get-model)

(declare-fun d!120991 () Bool)

(declare-fun res!681459 () Bool)

(declare-fun e!571468 () Bool)

(assert (=> d!120991 (=> res!681459 e!571468)))

(assert (=> d!120991 (= res!681459 (or ((_ is Nil!21612) lt!449188) ((_ is Nil!21612) (t!30624 lt!449188))))))

(assert (=> d!120991 (= (isStrictlySorted!603 lt!449188) e!571468)))

(declare-fun b!1015815 () Bool)

(declare-fun e!571469 () Bool)

(assert (=> b!1015815 (= e!571468 e!571469)))

(declare-fun res!681460 () Bool)

(assert (=> b!1015815 (=> (not res!681460) (not e!571469))))

(assert (=> b!1015815 (= res!681460 (bvslt (_1!7667 (h!22809 lt!449188)) (_1!7667 (h!22809 (t!30624 lt!449188)))))))

(declare-fun b!1015816 () Bool)

(assert (=> b!1015816 (= e!571469 (isStrictlySorted!603 (t!30624 lt!449188)))))

(assert (= (and d!120991 (not res!681459)) b!1015815))

(assert (= (and b!1015815 res!681460) b!1015816))

(declare-fun m!937893 () Bool)

(assert (=> b!1015816 m!937893))

(assert (=> b!1015776 d!120991))

(declare-fun d!120993 () Bool)

(declare-fun res!681465 () Bool)

(declare-fun e!571474 () Bool)

(assert (=> d!120993 (=> res!681465 e!571474)))

(assert (=> d!120993 (= res!681465 ((_ is Nil!21613) (t!30625 keys!40)))))

(assert (=> d!120993 (= (forall!272 (t!30625 keys!40) lambda!963) e!571474)))

(declare-fun b!1015821 () Bool)

(declare-fun e!571475 () Bool)

(assert (=> b!1015821 (= e!571474 e!571475)))

(declare-fun res!681466 () Bool)

(assert (=> b!1015821 (=> (not res!681466) (not e!571475))))

(declare-fun dynLambda!1909 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015821 (= res!681466 (dynLambda!1909 lambda!963 (h!22810 (t!30625 keys!40))))))

(declare-fun b!1015822 () Bool)

(assert (=> b!1015822 (= e!571475 (forall!272 (t!30625 (t!30625 keys!40)) lambda!963))))

(assert (= (and d!120993 (not res!681465)) b!1015821))

(assert (= (and b!1015821 res!681466) b!1015822))

(declare-fun b_lambda!15469 () Bool)

(assert (=> (not b_lambda!15469) (not b!1015821)))

(declare-fun m!937895 () Bool)

(assert (=> b!1015821 m!937895))

(declare-fun m!937897 () Bool)

(assert (=> b!1015822 m!937897))

(assert (=> b!1015776 d!120993))

(declare-fun bs!29466 () Bool)

(declare-fun b!1015847 () Bool)

(assert (= bs!29466 (and b!1015847 b!1015780)))

(declare-fun lambda!976 () Int)

(assert (=> bs!29466 (= lambda!976 lambda!962)))

(declare-fun bs!29467 () Bool)

(assert (= bs!29467 (and b!1015847 b!1015776)))

(assert (=> bs!29467 (= (= l!1114 lt!449188) (= lambda!976 lambda!963))))

(assert (=> b!1015847 true))

(assert (=> b!1015847 true))

(declare-fun bs!29468 () Bool)

(declare-fun d!120997 () Bool)

(assert (= bs!29468 (and d!120997 b!1015780)))

(declare-fun lambda!977 () Int)

(assert (=> bs!29468 (= (= (Cons!21611 newHead!31 l!1114) l!1114) (= lambda!977 lambda!962))))

(declare-fun bs!29469 () Bool)

(assert (= bs!29469 (and d!120997 b!1015776)))

(assert (=> bs!29469 (= (= (Cons!21611 newHead!31 l!1114) lt!449188) (= lambda!977 lambda!963))))

(declare-fun bs!29470 () Bool)

(assert (= bs!29470 (and d!120997 b!1015847)))

(assert (=> bs!29470 (= (= (Cons!21611 newHead!31 l!1114) l!1114) (= lambda!977 lambda!976))))

(assert (=> d!120997 true))

(assert (=> d!120997 true))

(assert (=> d!120997 true))

(assert (=> d!120997 (forall!272 (t!30625 keys!40) lambda!977)))

(declare-fun lt!449210 () Unit!33206)

(declare-fun choose!1648 (List!21615 List!21616 B!1510 tuple2!15314) Unit!33206)

(assert (=> d!120997 (= lt!449210 (choose!1648 l!1114 (t!30625 keys!40) value!178 newHead!31))))

(declare-fun e!571495 () Bool)

(assert (=> d!120997 e!571495))

(declare-fun res!681490 () Bool)

(assert (=> d!120997 (=> (not res!681490) (not e!571495))))

(assert (=> d!120997 (= res!681490 (isStrictlySorted!603 l!1114))))

(assert (=> d!120997 (= (lemmaForallGetValueByKeySameWithASmallerHead!52 l!1114 (t!30625 keys!40) value!178 newHead!31) lt!449210)))

(declare-fun b!1015846 () Bool)

(declare-fun res!681491 () Bool)

(assert (=> b!1015846 (=> (not res!681491) (not e!571495))))

(assert (=> b!1015846 (= res!681491 (not (isEmpty!871 l!1114)))))

(declare-fun res!681492 () Bool)

(assert (=> b!1015847 (=> (not res!681492) (not e!571495))))

(assert (=> b!1015847 (= res!681492 (forall!272 (t!30625 keys!40) lambda!976))))

(declare-fun b!1015848 () Bool)

(assert (=> b!1015848 (= e!571495 (bvslt (_1!7667 newHead!31) (_1!7667 (head!954 l!1114))))))

(assert (= (and d!120997 res!681490) b!1015846))

(assert (= (and b!1015846 res!681491) b!1015847))

(assert (= (and b!1015847 res!681492) b!1015848))

(declare-fun m!937913 () Bool)

(assert (=> d!120997 m!937913))

(declare-fun m!937915 () Bool)

(assert (=> d!120997 m!937915))

(assert (=> d!120997 m!937841))

(assert (=> b!1015846 m!937845))

(declare-fun m!937917 () Bool)

(assert (=> b!1015847 m!937917))

(assert (=> b!1015848 m!937843))

(assert (=> b!1015776 d!120997))

(declare-fun d!121017 () Bool)

(declare-fun res!681500 () Bool)

(declare-fun e!571503 () Bool)

(assert (=> d!121017 (=> res!681500 e!571503)))

(assert (=> d!121017 (= res!681500 (or ((_ is Nil!21612) l!1114) ((_ is Nil!21612) (t!30624 l!1114))))))

(assert (=> d!121017 (= (isStrictlySorted!603 l!1114) e!571503)))

(declare-fun b!1015858 () Bool)

(declare-fun e!571504 () Bool)

(assert (=> b!1015858 (= e!571503 e!571504)))

(declare-fun res!681501 () Bool)

(assert (=> b!1015858 (=> (not res!681501) (not e!571504))))

(assert (=> b!1015858 (= res!681501 (bvslt (_1!7667 (h!22809 l!1114)) (_1!7667 (h!22809 (t!30624 l!1114)))))))

(declare-fun b!1015859 () Bool)

(assert (=> b!1015859 (= e!571504 (isStrictlySorted!603 (t!30624 l!1114)))))

(assert (= (and d!121017 (not res!681500)) b!1015858))

(assert (= (and b!1015858 res!681501) b!1015859))

(declare-fun m!937919 () Bool)

(assert (=> b!1015859 m!937919))

(assert (=> start!87996 d!121017))

(declare-fun d!121019 () Bool)

(declare-fun res!681502 () Bool)

(declare-fun e!571505 () Bool)

(assert (=> d!121019 (=> res!681502 e!571505)))

(assert (=> d!121019 (= res!681502 ((_ is Nil!21613) keys!40))))

(assert (=> d!121019 (= (forall!272 keys!40 lambda!962) e!571505)))

(declare-fun b!1015860 () Bool)

(declare-fun e!571506 () Bool)

(assert (=> b!1015860 (= e!571505 e!571506)))

(declare-fun res!681503 () Bool)

(assert (=> b!1015860 (=> (not res!681503) (not e!571506))))

(assert (=> b!1015860 (= res!681503 (dynLambda!1909 lambda!962 (h!22810 keys!40)))))

(declare-fun b!1015861 () Bool)

(assert (=> b!1015861 (= e!571506 (forall!272 (t!30625 keys!40) lambda!962))))

(assert (= (and d!121019 (not res!681502)) b!1015860))

(assert (= (and b!1015860 res!681503) b!1015861))

(declare-fun b_lambda!15471 () Bool)

(assert (=> (not b_lambda!15471) (not b!1015860)))

(declare-fun m!937921 () Bool)

(assert (=> b!1015860 m!937921))

(assert (=> b!1015861 m!937857))

(assert (=> b!1015780 d!121019))

(declare-fun d!121021 () Bool)

(assert (=> d!121021 (= (isEmpty!871 l!1114) ((_ is Nil!21612) l!1114))))

(assert (=> b!1015778 d!121021))

(declare-fun d!121023 () Bool)

(assert (=> d!121023 (= (head!954 l!1114) (h!22809 l!1114))))

(assert (=> b!1015779 d!121023))

(declare-fun d!121029 () Bool)

(declare-fun res!681511 () Bool)

(declare-fun e!571522 () Bool)

(assert (=> d!121029 (=> res!681511 e!571522)))

(assert (=> d!121029 (= res!681511 (and ((_ is Cons!21611) l!1114) (= (_1!7667 (h!22809 l!1114)) (h!22810 keys!40))))))

(assert (=> d!121029 (= (containsKey!489 l!1114 (h!22810 keys!40)) e!571522)))

(declare-fun b!1015885 () Bool)

(declare-fun e!571523 () Bool)

(assert (=> b!1015885 (= e!571522 e!571523)))

(declare-fun res!681512 () Bool)

(assert (=> b!1015885 (=> (not res!681512) (not e!571523))))

(assert (=> b!1015885 (= res!681512 (and (or (not ((_ is Cons!21611) l!1114)) (bvsle (_1!7667 (h!22809 l!1114)) (h!22810 keys!40))) ((_ is Cons!21611) l!1114) (bvslt (_1!7667 (h!22809 l!1114)) (h!22810 keys!40))))))

(declare-fun b!1015886 () Bool)

(assert (=> b!1015886 (= e!571523 (containsKey!489 (t!30624 l!1114) (h!22810 keys!40)))))

(assert (= (and d!121029 (not res!681511)) b!1015885))

(assert (= (and b!1015885 res!681512) b!1015886))

(declare-fun m!937933 () Bool)

(assert (=> b!1015886 m!937933))

(assert (=> b!1015777 d!121029))

(declare-fun d!121031 () Bool)

(assert (=> d!121031 (isDefined!397 (getValueByKey!545 lt!449188 (h!22810 keys!40)))))

(declare-fun lt!449217 () Unit!33206)

(declare-fun choose!1649 (List!21615 (_ BitVec 64)) Unit!33206)

(assert (=> d!121031 (= lt!449217 (choose!1649 lt!449188 (h!22810 keys!40)))))

(declare-fun e!571530 () Bool)

(assert (=> d!121031 e!571530))

(declare-fun res!681515 () Bool)

(assert (=> d!121031 (=> (not res!681515) (not e!571530))))

(assert (=> d!121031 (= res!681515 (isStrictlySorted!603 lt!449188))))

(assert (=> d!121031 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!381 lt!449188 (h!22810 keys!40)) lt!449217)))

(declare-fun b!1015897 () Bool)

(assert (=> b!1015897 (= e!571530 (containsKey!489 lt!449188 (h!22810 keys!40)))))

(assert (= (and d!121031 res!681515) b!1015897))

(assert (=> d!121031 m!937859))

(assert (=> d!121031 m!937859))

(assert (=> d!121031 m!937861))

(declare-fun m!937939 () Bool)

(assert (=> d!121031 m!937939))

(assert (=> d!121031 m!937847))

(declare-fun m!937941 () Bool)

(assert (=> b!1015897 m!937941))

(assert (=> b!1015777 d!121031))

(declare-fun b!1015916 () Bool)

(declare-fun e!571544 () Option!596)

(declare-fun e!571545 () Option!596)

(assert (=> b!1015916 (= e!571544 e!571545)))

(declare-fun c!102861 () Bool)

(assert (=> b!1015916 (= c!102861 (and ((_ is Cons!21611) lt!449188) (not (= (_1!7667 (h!22809 lt!449188)) (h!22810 keys!40)))))))

(declare-fun b!1015917 () Bool)

(assert (=> b!1015917 (= e!571545 (getValueByKey!545 (t!30624 lt!449188) (h!22810 keys!40)))))

(declare-fun b!1015915 () Bool)

(assert (=> b!1015915 (= e!571544 (Some!595 (_2!7667 (h!22809 lt!449188))))))

(declare-fun d!121037 () Bool)

(declare-fun c!102860 () Bool)

(assert (=> d!121037 (= c!102860 (and ((_ is Cons!21611) lt!449188) (= (_1!7667 (h!22809 lt!449188)) (h!22810 keys!40))))))

(assert (=> d!121037 (= (getValueByKey!545 lt!449188 (h!22810 keys!40)) e!571544)))

(declare-fun b!1015918 () Bool)

(assert (=> b!1015918 (= e!571545 None!594)))

(assert (= (and d!121037 c!102860) b!1015915))

(assert (= (and d!121037 (not c!102860)) b!1015916))

(assert (= (and b!1015916 c!102861) b!1015917))

(assert (= (and b!1015916 (not c!102861)) b!1015918))

(declare-fun m!937951 () Bool)

(assert (=> b!1015917 m!937951))

(assert (=> b!1015777 d!121037))

(declare-fun d!121043 () Bool)

(declare-fun res!681525 () Bool)

(declare-fun e!571546 () Bool)

(assert (=> d!121043 (=> res!681525 e!571546)))

(assert (=> d!121043 (= res!681525 ((_ is Nil!21613) (t!30625 keys!40)))))

(assert (=> d!121043 (= (forall!272 (t!30625 keys!40) lambda!962) e!571546)))

(declare-fun b!1015919 () Bool)

(declare-fun e!571547 () Bool)

(assert (=> b!1015919 (= e!571546 e!571547)))

(declare-fun res!681526 () Bool)

(assert (=> b!1015919 (=> (not res!681526) (not e!571547))))

(assert (=> b!1015919 (= res!681526 (dynLambda!1909 lambda!962 (h!22810 (t!30625 keys!40))))))

(declare-fun b!1015920 () Bool)

(assert (=> b!1015920 (= e!571547 (forall!272 (t!30625 (t!30625 keys!40)) lambda!962))))

(assert (= (and d!121043 (not res!681525)) b!1015919))

(assert (= (and b!1015919 res!681526) b!1015920))

(declare-fun b_lambda!15477 () Bool)

(assert (=> (not b_lambda!15477) (not b!1015919)))

(declare-fun m!937955 () Bool)

(assert (=> b!1015919 m!937955))

(declare-fun m!937957 () Bool)

(assert (=> b!1015920 m!937957))

(assert (=> b!1015777 d!121043))

(declare-fun d!121047 () Bool)

(assert (=> d!121047 (containsKey!489 l!1114 (h!22810 keys!40))))

(declare-fun lt!449223 () Unit!33206)

(declare-fun choose!1653 (List!21615 (_ BitVec 64)) Unit!33206)

(assert (=> d!121047 (= lt!449223 (choose!1653 l!1114 (h!22810 keys!40)))))

(declare-fun e!571554 () Bool)

(assert (=> d!121047 e!571554))

(declare-fun res!681533 () Bool)

(assert (=> d!121047 (=> (not res!681533) (not e!571554))))

(assert (=> d!121047 (= res!681533 (isStrictlySorted!603 l!1114))))

(assert (=> d!121047 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!8 l!1114 (h!22810 keys!40)) lt!449223)))

(declare-fun b!1015927 () Bool)

(assert (=> b!1015927 (= e!571554 (isDefined!397 (getValueByKey!545 l!1114 (h!22810 keys!40))))))

(assert (= (and d!121047 res!681533) b!1015927))

(assert (=> d!121047 m!937855))

(declare-fun m!937961 () Bool)

(assert (=> d!121047 m!937961))

(assert (=> d!121047 m!937841))

(declare-fun m!937963 () Bool)

(assert (=> b!1015927 m!937963))

(assert (=> b!1015927 m!937963))

(declare-fun m!937965 () Bool)

(assert (=> b!1015927 m!937965))

(assert (=> b!1015777 d!121047))

(declare-fun d!121051 () Bool)

(declare-fun isEmpty!874 (Option!596) Bool)

(assert (=> d!121051 (= (isDefined!397 (getValueByKey!545 lt!449188 (h!22810 keys!40))) (not (isEmpty!874 (getValueByKey!545 lt!449188 (h!22810 keys!40)))))))

(declare-fun bs!29472 () Bool)

(assert (= bs!29472 d!121051))

(assert (=> bs!29472 m!937859))

(declare-fun m!937969 () Bool)

(assert (=> bs!29472 m!937969))

(assert (=> b!1015777 d!121051))

(declare-fun b!1015940 () Bool)

(declare-fun e!571565 () Bool)

(declare-fun tp!70710 () Bool)

(assert (=> b!1015940 (= e!571565 (and tp_is_empty!23577 tp!70710))))

(assert (=> b!1015775 (= tp!70704 e!571565)))

(assert (= (and b!1015775 ((_ is Cons!21611) (t!30624 l!1114))) b!1015940))

(declare-fun b_lambda!15481 () Bool)

(assert (= b_lambda!15477 (or b!1015780 b_lambda!15481)))

(declare-fun bs!29473 () Bool)

(declare-fun d!121057 () Bool)

(assert (= bs!29473 (and d!121057 b!1015780)))

(assert (=> bs!29473 (= (dynLambda!1909 lambda!962 (h!22810 (t!30625 keys!40))) (= (getValueByKey!545 l!1114 (h!22810 (t!30625 keys!40))) (Some!595 value!178)))))

(declare-fun m!937975 () Bool)

(assert (=> bs!29473 m!937975))

(assert (=> b!1015919 d!121057))

(declare-fun b_lambda!15483 () Bool)

(assert (= b_lambda!15469 (or b!1015776 b_lambda!15483)))

(declare-fun bs!29474 () Bool)

(declare-fun d!121059 () Bool)

(assert (= bs!29474 (and d!121059 b!1015776)))

(assert (=> bs!29474 (= (dynLambda!1909 lambda!963 (h!22810 (t!30625 keys!40))) (= (getValueByKey!545 lt!449188 (h!22810 (t!30625 keys!40))) (Some!595 value!178)))))

(declare-fun m!937977 () Bool)

(assert (=> bs!29474 m!937977))

(assert (=> b!1015821 d!121059))

(declare-fun b_lambda!15485 () Bool)

(assert (= b_lambda!15471 (or b!1015780 b_lambda!15485)))

(declare-fun bs!29475 () Bool)

(declare-fun d!121061 () Bool)

(assert (= bs!29475 (and d!121061 b!1015780)))

(assert (=> bs!29475 (= (dynLambda!1909 lambda!962 (h!22810 keys!40)) (= (getValueByKey!545 l!1114 (h!22810 keys!40)) (Some!595 value!178)))))

(assert (=> bs!29475 m!937963))

(assert (=> b!1015860 d!121061))

(check-sat (not bs!29475) (not d!120997) (not b!1015816) (not b!1015927) tp_is_empty!23577 (not b_lambda!15483) (not b!1015917) (not b!1015822) (not d!121031) (not b!1015940) (not b!1015848) (not bs!29474) (not b!1015886) (not b_lambda!15485) (not d!121047) (not b_lambda!15481) (not b!1015920) (not b!1015861) (not bs!29473) (not b!1015847) (not b!1015897) (not d!121051) (not b!1015859) (not b!1015846))
(check-sat)
