; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82346 () Bool)

(assert start!82346)

(declare-fun b!916047 () Bool)

(assert (=> b!916047 true))

(assert (=> b!916047 true))

(declare-fun lambda!29484 () Int)

(declare-fun lambda!29483 () Int)

(assert (=> b!916047 (not (= lambda!29484 lambda!29483))))

(assert (=> b!916047 true))

(assert (=> b!916047 true))

(declare-fun e!596964 () Bool)

(declare-fun e!596963 () Bool)

(assert (=> b!916047 (= e!596964 e!596963)))

(declare-fun res!416499 () Bool)

(assert (=> b!916047 (=> res!416499 e!596963)))

(declare-datatypes ((C!5484 0))(
  ( (C!5485 (val!2990 Int)) )
))
(declare-datatypes ((List!9687 0))(
  ( (Nil!9671) (Cons!9671 (h!15072 C!5484) (t!100733 List!9687)) )
))
(declare-fun s!10566 () List!9687)

(declare-fun isEmpty!5901 (List!9687) Bool)

(assert (=> b!916047 (= res!416499 (isEmpty!5901 s!10566))))

(declare-fun Exists!228 (Int) Bool)

(assert (=> b!916047 (= (Exists!228 lambda!29483) (Exists!228 lambda!29484))))

(declare-datatypes ((Unit!14533 0))(
  ( (Unit!14534) )
))
(declare-fun lt!337496 () Unit!14533)

(declare-datatypes ((Regex!2457 0))(
  ( (ElementMatch!2457 (c!148464 C!5484)) (Concat!4290 (regOne!5426 Regex!2457) (regTwo!5426 Regex!2457)) (EmptyExpr!2457) (Star!2457 (reg!2786 Regex!2457)) (EmptyLang!2457) (Union!2457 (regOne!5427 Regex!2457) (regTwo!5427 Regex!2457)) )
))
(declare-fun r!15766 () Regex!2457)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!140 (Regex!2457 Regex!2457 List!9687) Unit!14533)

(assert (=> b!916047 (= lt!337496 (lemmaExistCutMatchRandMatchRSpecEquivalent!140 (regOne!5426 r!15766) (regTwo!5426 r!15766) s!10566))))

(declare-datatypes ((tuple2!10900 0))(
  ( (tuple2!10901 (_1!6276 List!9687) (_2!6276 List!9687)) )
))
(declare-datatypes ((Option!2092 0))(
  ( (None!2091) (Some!2091 (v!19508 tuple2!10900)) )
))
(declare-fun isDefined!1734 (Option!2092) Bool)

(declare-fun findConcatSeparation!198 (Regex!2457 Regex!2457 List!9687 List!9687 List!9687) Option!2092)

(assert (=> b!916047 (= (isDefined!1734 (findConcatSeparation!198 (regOne!5426 r!15766) (regTwo!5426 r!15766) Nil!9671 s!10566 s!10566)) (Exists!228 lambda!29483))))

(declare-fun lt!337495 () Unit!14533)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!198 (Regex!2457 Regex!2457 List!9687) Unit!14533)

(assert (=> b!916047 (= lt!337495 (lemmaFindConcatSeparationEquivalentToExists!198 (regOne!5426 r!15766) (regTwo!5426 r!15766) s!10566))))

(declare-fun b!916048 () Bool)

(declare-fun e!596965 () Bool)

(assert (=> b!916048 (= e!596965 (not e!596964))))

(declare-fun res!416500 () Bool)

(assert (=> b!916048 (=> res!416500 e!596964)))

(declare-fun lt!337497 () Bool)

(get-info :version)

(assert (=> b!916048 (= res!416500 (or lt!337497 (and ((_ is Concat!4290) r!15766) ((_ is EmptyExpr!2457) (regOne!5426 r!15766))) (and ((_ is Concat!4290) r!15766) ((_ is EmptyExpr!2457) (regTwo!5426 r!15766))) (not ((_ is Concat!4290) r!15766))))))

(declare-fun matchRSpec!258 (Regex!2457 List!9687) Bool)

(assert (=> b!916048 (= lt!337497 (matchRSpec!258 r!15766 s!10566))))

(declare-fun matchR!995 (Regex!2457 List!9687) Bool)

(assert (=> b!916048 (= lt!337497 (matchR!995 r!15766 s!10566))))

(declare-fun lt!337494 () Unit!14533)

(declare-fun mainMatchTheorem!258 (Regex!2457 List!9687) Unit!14533)

(assert (=> b!916048 (= lt!337494 (mainMatchTheorem!258 r!15766 s!10566))))

(declare-fun b!916050 () Bool)

(declare-fun e!596962 () Bool)

(declare-fun tp_is_empty!4557 () Bool)

(assert (=> b!916050 (= e!596962 tp_is_empty!4557)))

(declare-fun b!916051 () Bool)

(declare-fun tp!286008 () Bool)

(declare-fun tp!286003 () Bool)

(assert (=> b!916051 (= e!596962 (and tp!286008 tp!286003))))

(declare-fun b!916052 () Bool)

(declare-fun e!596961 () Bool)

(declare-fun tp!286005 () Bool)

(assert (=> b!916052 (= e!596961 (and tp_is_empty!4557 tp!286005))))

(declare-fun b!916053 () Bool)

(declare-fun tp!286007 () Bool)

(declare-fun tp!286006 () Bool)

(assert (=> b!916053 (= e!596962 (and tp!286007 tp!286006))))

(declare-fun res!416501 () Bool)

(assert (=> start!82346 (=> (not res!416501) (not e!596965))))

(declare-fun validRegex!926 (Regex!2457) Bool)

(assert (=> start!82346 (= res!416501 (validRegex!926 r!15766))))

(assert (=> start!82346 e!596965))

(assert (=> start!82346 e!596962))

(assert (=> start!82346 e!596961))

(declare-fun b!916049 () Bool)

(assert (=> b!916049 (= e!596963 true)))

(declare-fun b!916054 () Bool)

(declare-fun tp!286004 () Bool)

(assert (=> b!916054 (= e!596962 tp!286004)))

(declare-fun b!916055 () Bool)

(declare-fun res!416502 () Bool)

(assert (=> b!916055 (=> res!416502 e!596963)))

(declare-fun removeUselessConcat!134 (Regex!2457) Regex!2457)

(assert (=> b!916055 (= res!416502 (not (matchR!995 (Concat!4290 (removeUselessConcat!134 (regOne!5426 r!15766)) (removeUselessConcat!134 (regTwo!5426 r!15766))) s!10566)))))

(assert (= (and start!82346 res!416501) b!916048))

(assert (= (and b!916048 (not res!416500)) b!916047))

(assert (= (and b!916047 (not res!416499)) b!916055))

(assert (= (and b!916055 (not res!416502)) b!916049))

(assert (= (and start!82346 ((_ is ElementMatch!2457) r!15766)) b!916050))

(assert (= (and start!82346 ((_ is Concat!4290) r!15766)) b!916051))

(assert (= (and start!82346 ((_ is Star!2457) r!15766)) b!916054))

(assert (= (and start!82346 ((_ is Union!2457) r!15766)) b!916053))

(assert (= (and start!82346 ((_ is Cons!9671) s!10566)) b!916052))

(declare-fun m!1145509 () Bool)

(assert (=> b!916047 m!1145509))

(declare-fun m!1145511 () Bool)

(assert (=> b!916047 m!1145511))

(declare-fun m!1145513 () Bool)

(assert (=> b!916047 m!1145513))

(declare-fun m!1145515 () Bool)

(assert (=> b!916047 m!1145515))

(declare-fun m!1145517 () Bool)

(assert (=> b!916047 m!1145517))

(declare-fun m!1145519 () Bool)

(assert (=> b!916047 m!1145519))

(assert (=> b!916047 m!1145511))

(declare-fun m!1145521 () Bool)

(assert (=> b!916047 m!1145521))

(assert (=> b!916047 m!1145509))

(declare-fun m!1145523 () Bool)

(assert (=> b!916048 m!1145523))

(declare-fun m!1145525 () Bool)

(assert (=> b!916048 m!1145525))

(declare-fun m!1145527 () Bool)

(assert (=> b!916048 m!1145527))

(declare-fun m!1145529 () Bool)

(assert (=> start!82346 m!1145529))

(declare-fun m!1145531 () Bool)

(assert (=> b!916055 m!1145531))

(declare-fun m!1145533 () Bool)

(assert (=> b!916055 m!1145533))

(declare-fun m!1145535 () Bool)

(assert (=> b!916055 m!1145535))

(check-sat (not b!916051) tp_is_empty!4557 (not b!916054) (not b!916052) (not b!916047) (not b!916053) (not start!82346) (not b!916055) (not b!916048))
(check-sat)
