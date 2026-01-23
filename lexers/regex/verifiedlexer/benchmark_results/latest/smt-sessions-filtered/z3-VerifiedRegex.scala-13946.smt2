; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739348 () Bool)

(assert start!739348)

(declare-fun b!7760052 () Bool)

(assert (=> b!7760052 true))

(assert (=> b!7760052 true))

(assert (=> b!7760052 true))

(declare-fun b!7760048 () Bool)

(declare-fun e!4599157 () Bool)

(declare-fun tp!2278597 () Bool)

(declare-fun tp!2278603 () Bool)

(assert (=> b!7760048 (= e!4599157 (and tp!2278597 tp!2278603))))

(declare-fun b!7760049 () Bool)

(declare-fun res!3093696 () Bool)

(declare-fun e!4599158 () Bool)

(assert (=> b!7760049 (=> (not res!3093696) (not e!4599158))))

(declare-datatypes ((C!41700 0))(
  ( (C!41701 (val!31290 Int)) )
))
(declare-datatypes ((List!73530 0))(
  ( (Nil!73406) (Cons!73406 (h!79854 C!41700) (t!388265 List!73530)) )
))
(declare-datatypes ((tuple2!69760 0))(
  ( (tuple2!69761 (_1!38183 List!73530) (_2!38183 List!73530)) )
))
(declare-fun lt!2670248 () tuple2!69760)

(declare-fun isPrefix!6241 (List!73530 List!73530) Bool)

(assert (=> b!7760049 (= res!3093696 (isPrefix!6241 Nil!73406 (_1!38183 lt!2670248)))))

(declare-fun b!7760050 () Bool)

(declare-fun e!4599161 () Bool)

(declare-fun tp_is_empty!51729 () Bool)

(declare-fun tp!2278600 () Bool)

(assert (=> b!7760050 (= e!4599161 (and tp_is_empty!51729 tp!2278600))))

(declare-fun b!7760051 () Bool)

(declare-fun res!3093694 () Bool)

(assert (=> b!7760051 (=> (not res!3093694) (not e!4599158))))

(declare-datatypes ((Regex!20687 0))(
  ( (ElementMatch!20687 (c!1430676 C!41700)) (Concat!29532 (regOne!41886 Regex!20687) (regTwo!41886 Regex!20687)) (EmptyExpr!20687) (Star!20687 (reg!21016 Regex!20687)) (EmptyLang!20687) (Union!20687 (regOne!41887 Regex!20687) (regTwo!41887 Regex!20687)) )
))
(declare-fun r2!3230 () Regex!20687)

(declare-fun matchR!10155 (Regex!20687 List!73530) Bool)

(assert (=> b!7760051 (= res!3093694 (matchR!10155 r2!3230 (_2!38183 lt!2670248)))))

(declare-fun b!7760053 () Bool)

(assert (=> b!7760053 (= e!4599157 tp_is_empty!51729)))

(declare-fun b!7760054 () Bool)

(declare-fun tp!2278596 () Bool)

(declare-fun tp!2278602 () Bool)

(assert (=> b!7760054 (= e!4599157 (and tp!2278596 tp!2278602))))

(declare-fun b!7760055 () Bool)

(declare-fun e!4599160 () Bool)

(declare-fun tp!2278601 () Bool)

(declare-fun tp!2278604 () Bool)

(assert (=> b!7760055 (= e!4599160 (and tp!2278601 tp!2278604))))

(declare-fun b!7760056 () Bool)

(declare-fun res!3093691 () Bool)

(declare-fun e!4599156 () Bool)

(assert (=> b!7760056 (=> (not res!3093691) (not e!4599156))))

(declare-datatypes ((Option!17674 0))(
  ( (None!17673) (Some!17673 (v!54808 tuple2!69760)) )
))
(declare-fun lt!2670250 () Option!17674)

(declare-fun isEmpty!42070 (Option!17674) Bool)

(assert (=> b!7760056 (= res!3093691 (isEmpty!42070 lt!2670250))))

(declare-fun b!7760057 () Bool)

(assert (=> b!7760057 (= e!4599158 false)))

(declare-fun lt!2670249 () List!73530)

(declare-fun s!10216 () List!73530)

(declare-fun ++!17862 (List!73530 List!73530) List!73530)

(assert (=> b!7760057 (= lt!2670249 (++!17862 Nil!73406 s!10216))))

(declare-fun b!7760058 () Bool)

(declare-fun tp!2278599 () Bool)

(assert (=> b!7760058 (= e!4599160 tp!2278599)))

(declare-fun b!7760059 () Bool)

(declare-fun e!4599159 () Bool)

(assert (=> b!7760059 (= e!4599159 e!4599156)))

(declare-fun res!3093695 () Bool)

(assert (=> b!7760059 (=> (not res!3093695) (not e!4599156))))

(declare-fun isDefined!14286 (Option!17674) Bool)

(assert (=> b!7760059 (= res!3093695 (not (isDefined!14286 lt!2670250)))))

(declare-fun r1!3330 () Regex!20687)

(declare-fun findConcatSeparation!3704 (Regex!20687 Regex!20687 List!73530 List!73530 List!73530) Option!17674)

(assert (=> b!7760059 (= lt!2670250 (findConcatSeparation!3704 r1!3330 r2!3230 Nil!73406 s!10216 s!10216))))

(declare-fun b!7760060 () Bool)

(declare-fun res!3093693 () Bool)

(assert (=> b!7760060 (=> (not res!3093693) (not e!4599159))))

(declare-fun validRegex!11103 (Regex!20687) Bool)

(assert (=> b!7760060 (= res!3093693 (validRegex!11103 r2!3230))))

(declare-fun b!7760061 () Bool)

(assert (=> b!7760061 (= e!4599160 tp_is_empty!51729)))

(declare-fun b!7760062 () Bool)

(declare-fun tp!2278595 () Bool)

(declare-fun tp!2278598 () Bool)

(assert (=> b!7760062 (= e!4599160 (and tp!2278595 tp!2278598))))

(declare-fun b!7760063 () Bool)

(assert (=> b!7760063 (= e!4599156 e!4599158)))

(declare-fun res!3093692 () Bool)

(assert (=> b!7760063 (=> (not res!3093692) (not e!4599158))))

(assert (=> b!7760063 (= res!3093692 (= (++!17862 (_1!38183 lt!2670248) (_2!38183 lt!2670248)) s!10216))))

(declare-fun lambda!472009 () Int)

(declare-fun pickWitness!560 (Int) tuple2!69760)

(assert (=> b!7760063 (= lt!2670248 (pickWitness!560 lambda!472009))))

(declare-fun b!7760064 () Bool)

(declare-fun res!3093697 () Bool)

(assert (=> b!7760064 (=> (not res!3093697) (not e!4599158))))

(assert (=> b!7760064 (= res!3093697 (matchR!10155 r1!3330 (_1!38183 lt!2670248)))))

(declare-fun b!7760065 () Bool)

(declare-fun tp!2278605 () Bool)

(assert (=> b!7760065 (= e!4599157 tp!2278605)))

(declare-fun res!3093690 () Bool)

(assert (=> start!739348 (=> (not res!3093690) (not e!4599159))))

(assert (=> start!739348 (= res!3093690 (validRegex!11103 r1!3330))))

(assert (=> start!739348 e!4599159))

(assert (=> start!739348 e!4599157))

(assert (=> start!739348 e!4599160))

(assert (=> start!739348 e!4599161))

(declare-fun res!3093698 () Bool)

(assert (=> b!7760052 (=> (not res!3093698) (not e!4599156))))

(declare-fun Exists!4733 (Int) Bool)

(assert (=> b!7760052 (= res!3093698 (Exists!4733 lambda!472009))))

(assert (= (and start!739348 res!3093690) b!7760060))

(assert (= (and b!7760060 res!3093693) b!7760059))

(assert (= (and b!7760059 res!3093695) b!7760056))

(assert (= (and b!7760056 res!3093691) b!7760052))

(assert (= (and b!7760052 res!3093698) b!7760063))

(assert (= (and b!7760063 res!3093692) b!7760064))

(assert (= (and b!7760064 res!3093697) b!7760051))

(assert (= (and b!7760051 res!3093694) b!7760049))

(assert (= (and b!7760049 res!3093696) b!7760057))

(get-info :version)

(assert (= (and start!739348 ((_ is ElementMatch!20687) r1!3330)) b!7760053))

(assert (= (and start!739348 ((_ is Concat!29532) r1!3330)) b!7760048))

(assert (= (and start!739348 ((_ is Star!20687) r1!3330)) b!7760065))

(assert (= (and start!739348 ((_ is Union!20687) r1!3330)) b!7760054))

(assert (= (and start!739348 ((_ is ElementMatch!20687) r2!3230)) b!7760061))

(assert (= (and start!739348 ((_ is Concat!29532) r2!3230)) b!7760062))

(assert (= (and start!739348 ((_ is Star!20687) r2!3230)) b!7760058))

(assert (= (and start!739348 ((_ is Union!20687) r2!3230)) b!7760055))

(assert (= (and start!739348 ((_ is Cons!73406) s!10216)) b!7760050))

(declare-fun m!8220366 () Bool)

(assert (=> b!7760049 m!8220366))

(declare-fun m!8220368 () Bool)

(assert (=> b!7760060 m!8220368))

(declare-fun m!8220370 () Bool)

(assert (=> start!739348 m!8220370))

(declare-fun m!8220372 () Bool)

(assert (=> b!7760064 m!8220372))

(declare-fun m!8220374 () Bool)

(assert (=> b!7760051 m!8220374))

(declare-fun m!8220376 () Bool)

(assert (=> b!7760059 m!8220376))

(declare-fun m!8220378 () Bool)

(assert (=> b!7760059 m!8220378))

(declare-fun m!8220380 () Bool)

(assert (=> b!7760056 m!8220380))

(declare-fun m!8220382 () Bool)

(assert (=> b!7760052 m!8220382))

(declare-fun m!8220384 () Bool)

(assert (=> b!7760063 m!8220384))

(declare-fun m!8220386 () Bool)

(assert (=> b!7760063 m!8220386))

(declare-fun m!8220388 () Bool)

(assert (=> b!7760057 m!8220388))

(check-sat (not b!7760062) (not b!7760054) (not b!7760064) (not b!7760048) (not b!7760058) (not b!7760055) (not b!7760059) tp_is_empty!51729 (not b!7760056) (not b!7760057) (not b!7760060) (not b!7760063) (not b!7760049) (not b!7760065) (not b!7760051) (not b!7760050) (not start!739348) (not b!7760052))
(check-sat)
