; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279634 () Bool)

(assert start!279634)

(declare-fun res!1189869 () Bool)

(declare-fun e!1814446 () Bool)

(assert (=> start!279634 (=> (not res!1189869) (not e!1814446))))

(declare-datatypes ((C!17576 0))(
  ( (C!17577 (val!10822 Int)) )
))
(declare-datatypes ((Regex!8697 0))(
  ( (ElementMatch!8697 (c!462766 C!17576)) (Concat!14018 (regOne!17906 Regex!8697) (regTwo!17906 Regex!8697)) (EmptyExpr!8697) (Star!8697 (reg!9026 Regex!8697)) (EmptyLang!8697) (Union!8697 (regOne!17907 Regex!8697) (regTwo!17907 Regex!8697)) )
))
(declare-datatypes ((List!34416 0))(
  ( (Nil!34292) (Cons!34292 (h!39712 Regex!8697) (t!233459 List!34416)) )
))
(declare-datatypes ((Context!5314 0))(
  ( (Context!5315 (exprs!3157 List!34416)) )
))
(declare-fun c!7184 () Context!5314)

(declare-fun lostCause!789 (Context!5314) Bool)

(assert (=> start!279634 (= res!1189869 (not (lostCause!789 c!7184)))))

(assert (=> start!279634 e!1814446))

(declare-fun e!1814450 () Bool)

(declare-fun inv!46329 (Context!5314) Bool)

(assert (=> start!279634 (and (inv!46329 c!7184) e!1814450)))

(declare-fun b!2866090 () Bool)

(declare-fun e!1814449 () Bool)

(declare-fun e!1814448 () Bool)

(assert (=> b!2866090 (= e!1814449 (not e!1814448))))

(declare-fun res!1189875 () Bool)

(assert (=> b!2866090 (=> res!1189875 e!1814448)))

(declare-datatypes ((List!34417 0))(
  ( (Nil!34293) (Cons!34293 (h!39713 C!17576) (t!233460 List!34417)) )
))
(declare-datatypes ((Option!6376 0))(
  ( (None!6375) (Some!6375 (v!34497 List!34417)) )
))
(declare-fun lt!1016738 () Option!6376)

(declare-fun matchR!3717 (Regex!8697 List!34417) Bool)

(assert (=> b!2866090 (= res!1189875 (not (matchR!3717 (h!39712 (exprs!3157 c!7184)) (v!34497 lt!1016738))))))

(declare-fun lt!1016740 () Context!5314)

(declare-fun lt!1016742 () Option!6376)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!463 ((InoxSet Context!5314) List!34417) Bool)

(declare-fun get!10292 (Option!6376) List!34417)

(assert (=> b!2866090 (matchZipper!463 (store ((as const (Array Context!5314 Bool)) false) lt!1016740 true) (get!10292 lt!1016742))))

(declare-datatypes ((Unit!47931 0))(
  ( (Unit!47932) )
))
(declare-fun lt!1016744 () Unit!47931)

(declare-fun lemmaGetWitnessMatchesContext!22 (Context!5314) Unit!47931)

(assert (=> b!2866090 (= lt!1016744 (lemmaGetWitnessMatchesContext!22 lt!1016740))))

(assert (=> b!2866090 (matchR!3717 (h!39712 (exprs!3157 c!7184)) (get!10292 lt!1016738))))

(declare-fun lt!1016743 () Unit!47931)

(declare-fun lemmaGetWitnessMatches!24 (Regex!8697) Unit!47931)

(assert (=> b!2866090 (= lt!1016743 (lemmaGetWitnessMatches!24 (h!39712 (exprs!3157 c!7184))))))

(declare-fun b!2866091 () Bool)

(declare-fun e!1814447 () Bool)

(assert (=> b!2866091 (= e!1814447 true)))

(declare-fun lt!1016739 () Regex!8697)

(declare-datatypes ((List!34418 0))(
  ( (Nil!34294) (Cons!34294 (h!39714 Context!5314) (t!233461 List!34418)) )
))
(declare-fun lt!1016737 () List!34418)

(declare-fun unfocusZipper!239 (List!34418) Regex!8697)

(assert (=> b!2866091 (= lt!1016739 (unfocusZipper!239 lt!1016737))))

(declare-fun b!2866092 () Bool)

(declare-fun tp!922914 () Bool)

(assert (=> b!2866092 (= e!1814450 tp!922914)))

(declare-fun b!2866093 () Bool)

(declare-fun e!1814451 () Bool)

(assert (=> b!2866093 (= e!1814451 e!1814449)))

(declare-fun res!1189872 () Bool)

(assert (=> b!2866093 (=> (not res!1189872) (not e!1814449))))

(get-info :version)

(assert (=> b!2866093 (= res!1189872 ((_ is Some!6375) lt!1016742))))

(declare-fun getLanguageWitness!358 (Context!5314) Option!6376)

(assert (=> b!2866093 (= lt!1016742 (getLanguageWitness!358 lt!1016740))))

(assert (=> b!2866093 (= lt!1016740 (Context!5315 (t!233459 (exprs!3157 c!7184))))))

(declare-fun b!2866094 () Bool)

(assert (=> b!2866094 (= e!1814446 e!1814451)))

(declare-fun res!1189874 () Bool)

(assert (=> b!2866094 (=> (not res!1189874) (not e!1814451))))

(assert (=> b!2866094 (= res!1189874 ((_ is Some!6375) lt!1016738))))

(declare-fun getLanguageWitness!359 (Regex!8697) Option!6376)

(assert (=> b!2866094 (= lt!1016738 (getLanguageWitness!359 (h!39712 (exprs!3157 c!7184))))))

(declare-fun b!2866095 () Bool)

(assert (=> b!2866095 (= e!1814448 e!1814447)))

(declare-fun res!1189873 () Bool)

(assert (=> b!2866095 (=> res!1189873 e!1814447)))

(declare-fun validRegex!3494 (Regex!8697) Bool)

(assert (=> b!2866095 (= res!1189873 (not (validRegex!3494 (h!39712 (exprs!3157 c!7184)))))))

(declare-fun lt!1016741 () Context!5314)

(assert (=> b!2866095 (= lt!1016737 (Cons!34294 lt!1016741 Nil!34294))))

(assert (=> b!2866095 (= lt!1016741 (Context!5315 (Cons!34292 (h!39712 (exprs!3157 c!7184)) Nil!34292)))))

(declare-fun b!2866096 () Bool)

(declare-fun res!1189871 () Bool)

(assert (=> b!2866096 (=> res!1189871 e!1814447)))

(declare-fun toList!2020 ((InoxSet Context!5314)) List!34418)

(assert (=> b!2866096 (= res!1189871 (not (= (toList!2020 (store ((as const (Array Context!5314 Bool)) false) lt!1016741 true)) lt!1016737)))))

(declare-fun b!2866097 () Bool)

(declare-fun res!1189870 () Bool)

(assert (=> b!2866097 (=> (not res!1189870) (not e!1814446))))

(assert (=> b!2866097 (= res!1189870 ((_ is Cons!34292) (exprs!3157 c!7184)))))

(assert (= (and start!279634 res!1189869) b!2866097))

(assert (= (and b!2866097 res!1189870) b!2866094))

(assert (= (and b!2866094 res!1189874) b!2866093))

(assert (= (and b!2866093 res!1189872) b!2866090))

(assert (= (and b!2866090 (not res!1189875)) b!2866095))

(assert (= (and b!2866095 (not res!1189873)) b!2866096))

(assert (= (and b!2866096 (not res!1189871)) b!2866091))

(assert (= start!279634 b!2866092))

(declare-fun m!3286355 () Bool)

(assert (=> start!279634 m!3286355))

(declare-fun m!3286357 () Bool)

(assert (=> start!279634 m!3286357))

(declare-fun m!3286359 () Bool)

(assert (=> b!2866096 m!3286359))

(assert (=> b!2866096 m!3286359))

(declare-fun m!3286361 () Bool)

(assert (=> b!2866096 m!3286361))

(declare-fun m!3286363 () Bool)

(assert (=> b!2866090 m!3286363))

(declare-fun m!3286365 () Bool)

(assert (=> b!2866090 m!3286365))

(declare-fun m!3286367 () Bool)

(assert (=> b!2866090 m!3286367))

(declare-fun m!3286369 () Bool)

(assert (=> b!2866090 m!3286369))

(declare-fun m!3286371 () Bool)

(assert (=> b!2866090 m!3286371))

(declare-fun m!3286373 () Bool)

(assert (=> b!2866090 m!3286373))

(declare-fun m!3286375 () Bool)

(assert (=> b!2866090 m!3286375))

(declare-fun m!3286377 () Bool)

(assert (=> b!2866090 m!3286377))

(assert (=> b!2866090 m!3286375))

(assert (=> b!2866090 m!3286363))

(assert (=> b!2866090 m!3286373))

(declare-fun m!3286379 () Bool)

(assert (=> b!2866091 m!3286379))

(declare-fun m!3286381 () Bool)

(assert (=> b!2866094 m!3286381))

(declare-fun m!3286383 () Bool)

(assert (=> b!2866095 m!3286383))

(declare-fun m!3286385 () Bool)

(assert (=> b!2866093 m!3286385))

(check-sat (not b!2866094) (not b!2866096) (not b!2866092) (not b!2866090) (not b!2866093) (not b!2866095) (not b!2866091) (not start!279634))
(check-sat)
