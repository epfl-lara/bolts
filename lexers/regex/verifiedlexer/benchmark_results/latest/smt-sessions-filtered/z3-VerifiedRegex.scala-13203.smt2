; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719640 () Bool)

(assert start!719640)

(declare-fun b!7374510 () Bool)

(declare-fun e!4414644 () Bool)

(declare-fun tp!2096790 () Bool)

(declare-fun tp!2096791 () Bool)

(assert (=> b!7374510 (= e!4414644 (and tp!2096790 tp!2096791))))

(declare-fun b!7374511 () Bool)

(declare-fun tp!2096792 () Bool)

(assert (=> b!7374511 (= e!4414644 tp!2096792)))

(declare-fun b!7374512 () Bool)

(declare-fun e!4414647 () Bool)

(declare-fun tp!2096795 () Bool)

(assert (=> b!7374512 (= e!4414647 tp!2096795)))

(declare-fun b!7374513 () Bool)

(declare-fun res!2975181 () Bool)

(declare-fun e!4414645 () Bool)

(assert (=> b!7374513 (=> (not res!2975181) (not e!4414645))))

(declare-datatypes ((C!38864 0))(
  ( (C!38865 (val!29792 Int)) )
))
(declare-datatypes ((Regex!19295 0))(
  ( (ElementMatch!19295 (c!1370643 C!38864)) (Concat!28140 (regOne!39102 Regex!19295) (regTwo!39102 Regex!19295)) (EmptyExpr!19295) (Star!19295 (reg!19624 Regex!19295)) (EmptyLang!19295) (Union!19295 (regOne!39103 Regex!19295) (regTwo!39103 Regex!19295)) )
))
(declare-fun r1!2370 () Regex!19295)

(get-info :version)

(assert (=> b!7374513 (= res!2975181 ((_ is Concat!28140) r1!2370))))

(declare-fun b!7374514 () Bool)

(assert (=> b!7374514 (= e!4414645 false)))

(declare-fun c!10362 () C!38864)

(declare-datatypes ((List!71791 0))(
  ( (Nil!71667) (Cons!71667 (h!78115 Regex!19295) (t!386264 List!71791)) )
))
(declare-datatypes ((Context!16470 0))(
  ( (Context!16471 (exprs!8735 List!71791)) )
))
(declare-fun ct1!282 () Context!16470)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2616137 () (InoxSet Context!16470))

(declare-fun derivationStepZipperDown!3121 (Regex!19295 Context!16470 C!38864) (InoxSet Context!16470))

(declare-fun $colon$colon!3277 (List!71791 Regex!19295) List!71791)

(assert (=> b!7374514 (= lt!2616137 (derivationStepZipperDown!3121 (regOne!39102 r1!2370) (Context!16471 ($colon$colon!3277 (exprs!8735 ct1!282) (regTwo!39102 r1!2370))) c!10362))))

(declare-fun b!7374515 () Bool)

(declare-fun e!4414648 () Bool)

(declare-fun nullable!8371 (Regex!19295) Bool)

(assert (=> b!7374515 (= e!4414648 (not (nullable!8371 (regOne!39102 r1!2370))))))

(declare-fun b!7374516 () Bool)

(declare-fun e!4414642 () Bool)

(declare-fun tp!2096789 () Bool)

(assert (=> b!7374516 (= e!4414642 tp!2096789)))

(declare-fun b!7374517 () Bool)

(declare-fun res!2975182 () Bool)

(assert (=> b!7374517 (=> (not res!2975182) (not e!4414645))))

(assert (=> b!7374517 (= res!2975182 e!4414648)))

(declare-fun res!2975179 () Bool)

(assert (=> b!7374517 (=> res!2975179 e!4414648)))

(assert (=> b!7374517 (= res!2975179 (not ((_ is Concat!28140) r1!2370)))))

(declare-fun b!7374518 () Bool)

(declare-fun tp_is_empty!48835 () Bool)

(assert (=> b!7374518 (= e!4414644 tp_is_empty!48835)))

(declare-fun b!7374520 () Bool)

(declare-fun e!4414643 () Bool)

(assert (=> b!7374520 (= e!4414643 e!4414645)))

(declare-fun res!2975176 () Bool)

(assert (=> b!7374520 (=> (not res!2975176) (not e!4414645))))

(assert (=> b!7374520 (= res!2975176 (and (or (not ((_ is ElementMatch!19295) r1!2370)) (not (= c!10362 (c!1370643 r1!2370)))) (not ((_ is Union!19295) r1!2370))))))

(declare-fun lt!2616136 () (InoxSet Context!16470))

(declare-fun ct2!378 () Context!16470)

(declare-fun ++!17111 (List!71791 List!71791) List!71791)

(assert (=> b!7374520 (= lt!2616136 (derivationStepZipperDown!3121 r1!2370 (Context!16471 (++!17111 (exprs!8735 ct1!282) (exprs!8735 ct2!378))) c!10362))))

(declare-fun lambda!458247 () Int)

(declare-datatypes ((Unit!165539 0))(
  ( (Unit!165540) )
))
(declare-fun lt!2616135 () Unit!165539)

(declare-fun lemmaConcatPreservesForall!1968 (List!71791 List!71791 Int) Unit!165539)

(assert (=> b!7374520 (= lt!2616135 (lemmaConcatPreservesForall!1968 (exprs!8735 ct1!282) (exprs!8735 ct2!378) lambda!458247))))

(declare-fun b!7374521 () Bool)

(declare-fun tp!2096793 () Bool)

(declare-fun tp!2096788 () Bool)

(assert (=> b!7374521 (= e!4414644 (and tp!2096793 tp!2096788))))

(declare-fun b!7374522 () Bool)

(declare-fun e!4414646 () Bool)

(declare-fun tp!2096794 () Bool)

(assert (=> b!7374522 (= e!4414646 tp!2096794)))

(declare-fun b!7374523 () Bool)

(declare-fun res!2975180 () Bool)

(assert (=> b!7374523 (=> (not res!2975180) (not e!4414643))))

(declare-fun cWitness!61 () Context!16470)

(assert (=> b!7374523 (= res!2975180 (select (derivationStepZipperDown!3121 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7374519 () Bool)

(declare-fun res!2975178 () Bool)

(assert (=> b!7374519 (=> (not res!2975178) (not e!4414645))))

(declare-fun validRegex!9891 (Regex!19295) Bool)

(assert (=> b!7374519 (= res!2975178 (validRegex!9891 (regTwo!39102 r1!2370)))))

(declare-fun res!2975177 () Bool)

(assert (=> start!719640 (=> (not res!2975177) (not e!4414643))))

(assert (=> start!719640 (= res!2975177 (validRegex!9891 r1!2370))))

(assert (=> start!719640 e!4414643))

(assert (=> start!719640 tp_is_empty!48835))

(declare-fun inv!91577 (Context!16470) Bool)

(assert (=> start!719640 (and (inv!91577 cWitness!61) e!4414646)))

(assert (=> start!719640 (and (inv!91577 ct1!282) e!4414642)))

(assert (=> start!719640 e!4414644))

(assert (=> start!719640 (and (inv!91577 ct2!378) e!4414647)))

(assert (= (and start!719640 res!2975177) b!7374523))

(assert (= (and b!7374523 res!2975180) b!7374520))

(assert (= (and b!7374520 res!2975176) b!7374517))

(assert (= (and b!7374517 (not res!2975179)) b!7374515))

(assert (= (and b!7374517 res!2975182) b!7374513))

(assert (= (and b!7374513 res!2975181) b!7374519))

(assert (= (and b!7374519 res!2975178) b!7374514))

(assert (= start!719640 b!7374522))

(assert (= start!719640 b!7374516))

(assert (= (and start!719640 ((_ is ElementMatch!19295) r1!2370)) b!7374518))

(assert (= (and start!719640 ((_ is Concat!28140) r1!2370)) b!7374510))

(assert (= (and start!719640 ((_ is Star!19295) r1!2370)) b!7374511))

(assert (= (and start!719640 ((_ is Union!19295) r1!2370)) b!7374521))

(assert (= start!719640 b!7374512))

(declare-fun m!8027024 () Bool)

(assert (=> start!719640 m!8027024))

(declare-fun m!8027026 () Bool)

(assert (=> start!719640 m!8027026))

(declare-fun m!8027028 () Bool)

(assert (=> start!719640 m!8027028))

(declare-fun m!8027030 () Bool)

(assert (=> start!719640 m!8027030))

(declare-fun m!8027032 () Bool)

(assert (=> b!7374514 m!8027032))

(declare-fun m!8027034 () Bool)

(assert (=> b!7374514 m!8027034))

(declare-fun m!8027036 () Bool)

(assert (=> b!7374520 m!8027036))

(declare-fun m!8027038 () Bool)

(assert (=> b!7374520 m!8027038))

(declare-fun m!8027040 () Bool)

(assert (=> b!7374520 m!8027040))

(declare-fun m!8027042 () Bool)

(assert (=> b!7374519 m!8027042))

(declare-fun m!8027044 () Bool)

(assert (=> b!7374523 m!8027044))

(declare-fun m!8027046 () Bool)

(assert (=> b!7374523 m!8027046))

(declare-fun m!8027048 () Bool)

(assert (=> b!7374515 m!8027048))

(check-sat (not b!7374512) (not b!7374514) (not b!7374522) (not b!7374511) (not b!7374520) (not b!7374510) tp_is_empty!48835 (not b!7374523) (not b!7374516) (not start!719640) (not b!7374519) (not b!7374515) (not b!7374521))
(check-sat)
