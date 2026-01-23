; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544134 () Bool)

(assert start!544134)

(declare-fun b!5138884 () Bool)

(declare-fun e!3205266 () Bool)

(declare-datatypes ((C!29146 0))(
  ( (C!29147 (val!24225 Int)) )
))
(declare-datatypes ((Regex!14440 0))(
  ( (ElementMatch!14440 (c!884878 C!29146)) (Concat!23285 (regOne!29392 Regex!14440) (regTwo!29392 Regex!14440)) (EmptyExpr!14440) (Star!14440 (reg!14769 Regex!14440)) (EmptyLang!14440) (Union!14440 (regOne!29393 Regex!14440) (regTwo!29393 Regex!14440)) )
))
(declare-datatypes ((List!59810 0))(
  ( (Nil!59686) (Cons!59686 (h!66134 Regex!14440) (t!372841 List!59810)) )
))
(declare-datatypes ((Context!7648 0))(
  ( (Context!7649 (exprs!4324 List!59810)) )
))
(declare-fun ctx!100 () Context!7648)

(declare-fun lostCause!1432 (Context!7648) Bool)

(assert (=> b!5138884 (= e!3205266 (lostCause!1432 ctx!100))))

(declare-fun b!5138885 () Bool)

(declare-fun e!3205264 () Bool)

(declare-fun tp_is_empty!38029 () Bool)

(assert (=> b!5138885 (= e!3205264 tp_is_empty!38029)))

(declare-fun b!5138886 () Bool)

(declare-fun tp!1433332 () Bool)

(declare-fun tp!1433331 () Bool)

(assert (=> b!5138886 (= e!3205264 (and tp!1433332 tp!1433331))))

(declare-fun b!5138887 () Bool)

(declare-fun e!3205268 () Bool)

(assert (=> b!5138887 (= e!3205268 (lostCause!1432 ctx!100))))

(declare-fun b!5138888 () Bool)

(declare-fun res!2188662 () Bool)

(declare-fun e!3205269 () Bool)

(assert (=> b!5138888 (=> (not res!2188662) (not e!3205269))))

(declare-fun expr!117 () Regex!14440)

(declare-fun nullable!4799 (Regex!14440) Bool)

(assert (=> b!5138888 (= res!2188662 (nullable!4799 (regOne!29392 expr!117)))))

(declare-fun b!5138889 () Bool)

(declare-fun e!3205265 () Bool)

(assert (=> b!5138889 (= e!3205269 (not e!3205265))))

(declare-fun res!2188660 () Bool)

(assert (=> b!5138889 (=> res!2188660 e!3205265)))

(declare-fun validRegex!6295 (Regex!14440) Bool)

(assert (=> b!5138889 (= res!2188660 (not (validRegex!6295 (regTwo!29392 expr!117))))))

(declare-fun lostCause!1433 (Regex!14440) Bool)

(assert (=> b!5138889 (not (lostCause!1433 (regOne!29392 expr!117)))))

(declare-datatypes ((Unit!151063 0))(
  ( (Unit!151064) )
))
(declare-fun lt!2120098 () Unit!151063)

(declare-fun lemmaNullableThenNotLostCause!63 (Regex!14440) Unit!151063)

(assert (=> b!5138889 (= lt!2120098 (lemmaNullableThenNotLostCause!63 (regOne!29392 expr!117)))))

(declare-fun b!5138890 () Bool)

(declare-fun e!3205267 () Bool)

(declare-fun tp!1433328 () Bool)

(assert (=> b!5138890 (= e!3205267 tp!1433328)))

(declare-fun b!5138891 () Bool)

(assert (=> b!5138891 (= e!3205265 true)))

(declare-fun lt!2120095 () Bool)

(assert (=> b!5138891 (= lt!2120095 e!3205266)))

(declare-fun res!2188659 () Bool)

(assert (=> b!5138891 (=> res!2188659 e!3205266)))

(assert (=> b!5138891 (= res!2188659 (lostCause!1433 (regTwo!29392 expr!117)))))

(declare-fun lt!2120096 () Context!7648)

(declare-fun a!1296 () C!29146)

(declare-fun lostCauseZipper!1252 ((Set Context!7648)) Bool)

(declare-fun derivationStepZipperDown!133 (Regex!14440 Context!7648 C!29146) (Set Context!7648))

(assert (=> b!5138891 (lostCauseZipper!1252 (derivationStepZipperDown!133 (regOne!29392 expr!117) lt!2120096 a!1296))))

(declare-fun lt!2120097 () Unit!151063)

(declare-fun lemmaLostCauseFixPointDerivDown!25 (Regex!14440 Context!7648 C!29146) Unit!151063)

(assert (=> b!5138891 (= lt!2120097 (lemmaLostCauseFixPointDerivDown!25 (regOne!29392 expr!117) lt!2120096 a!1296))))

(declare-fun $colon$colon!1178 (List!59810 Regex!14440) List!59810)

(assert (=> b!5138891 (= lt!2120096 (Context!7649 ($colon$colon!1178 (exprs!4324 ctx!100) (regTwo!29392 expr!117))))))

(declare-fun b!5138892 () Bool)

(declare-fun res!2188663 () Bool)

(assert (=> b!5138892 (=> (not res!2188663) (not e!3205269))))

(assert (=> b!5138892 (= res!2188663 e!3205268)))

(declare-fun res!2188658 () Bool)

(assert (=> b!5138892 (=> res!2188658 e!3205268)))

(assert (=> b!5138892 (= res!2188658 (lostCause!1433 expr!117))))

(declare-fun b!5138893 () Bool)

(declare-fun res!2188661 () Bool)

(assert (=> b!5138893 (=> (not res!2188661) (not e!3205269))))

(assert (=> b!5138893 (= res!2188661 (and (or (not (is-ElementMatch!14440 expr!117)) (not (= (c!884878 expr!117) a!1296))) (not (is-Union!14440 expr!117)) (is-Concat!23285 expr!117)))))

(declare-fun b!5138894 () Bool)

(declare-fun tp!1433333 () Bool)

(declare-fun tp!1433330 () Bool)

(assert (=> b!5138894 (= e!3205264 (and tp!1433333 tp!1433330))))

(declare-fun b!5138895 () Bool)

(declare-fun tp!1433329 () Bool)

(assert (=> b!5138895 (= e!3205264 tp!1433329)))

(declare-fun res!2188657 () Bool)

(assert (=> start!544134 (=> (not res!2188657) (not e!3205269))))

(assert (=> start!544134 (= res!2188657 (validRegex!6295 expr!117))))

(assert (=> start!544134 e!3205269))

(assert (=> start!544134 e!3205264))

(declare-fun inv!79282 (Context!7648) Bool)

(assert (=> start!544134 (and (inv!79282 ctx!100) e!3205267)))

(assert (=> start!544134 tp_is_empty!38029))

(assert (= (and start!544134 res!2188657) b!5138892))

(assert (= (and b!5138892 (not res!2188658)) b!5138887))

(assert (= (and b!5138892 res!2188663) b!5138893))

(assert (= (and b!5138893 res!2188661) b!5138888))

(assert (= (and b!5138888 res!2188662) b!5138889))

(assert (= (and b!5138889 (not res!2188660)) b!5138891))

(assert (= (and b!5138891 (not res!2188659)) b!5138884))

(assert (= (and start!544134 (is-ElementMatch!14440 expr!117)) b!5138885))

(assert (= (and start!544134 (is-Concat!23285 expr!117)) b!5138894))

(assert (= (and start!544134 (is-Star!14440 expr!117)) b!5138895))

(assert (= (and start!544134 (is-Union!14440 expr!117)) b!5138886))

(assert (= start!544134 b!5138890))

(declare-fun m!6203560 () Bool)

(assert (=> b!5138888 m!6203560))

(declare-fun m!6203562 () Bool)

(assert (=> b!5138887 m!6203562))

(declare-fun m!6203564 () Bool)

(assert (=> b!5138892 m!6203564))

(declare-fun m!6203566 () Bool)

(assert (=> b!5138889 m!6203566))

(declare-fun m!6203568 () Bool)

(assert (=> b!5138889 m!6203568))

(declare-fun m!6203570 () Bool)

(assert (=> b!5138889 m!6203570))

(declare-fun m!6203572 () Bool)

(assert (=> b!5138891 m!6203572))

(declare-fun m!6203574 () Bool)

(assert (=> b!5138891 m!6203574))

(declare-fun m!6203576 () Bool)

(assert (=> b!5138891 m!6203576))

(assert (=> b!5138891 m!6203572))

(declare-fun m!6203578 () Bool)

(assert (=> b!5138891 m!6203578))

(declare-fun m!6203580 () Bool)

(assert (=> b!5138891 m!6203580))

(declare-fun m!6203582 () Bool)

(assert (=> start!544134 m!6203582))

(declare-fun m!6203584 () Bool)

(assert (=> start!544134 m!6203584))

(assert (=> b!5138884 m!6203562))

(push 1)

(assert (not b!5138894))

(assert (not b!5138886))

(assert tp_is_empty!38029)

(assert (not b!5138884))

(assert (not b!5138888))

(assert (not b!5138895))

(assert (not b!5138890))

(assert (not b!5138889))

(assert (not b!5138887))

(assert (not b!5138891))

(assert (not start!544134))

(assert (not b!5138892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

