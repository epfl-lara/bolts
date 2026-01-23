; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667002 () Bool)

(assert start!667002)

(declare-fun b!6948534 () Bool)

(assert (=> b!6948534 true))

(assert (=> b!6948534 true))

(declare-fun bs!1857535 () Bool)

(declare-fun b!6948529 () Bool)

(assert (= bs!1857535 (and b!6948529 b!6948534)))

(declare-fun lambda!396226 () Int)

(declare-fun lambda!396225 () Int)

(assert (=> bs!1857535 (not (= lambda!396226 lambda!396225))))

(assert (=> b!6948529 true))

(assert (=> b!6948529 true))

(assert (=> b!6948529 true))

(declare-fun b!6948528 () Bool)

(declare-fun e!4179292 () Bool)

(declare-fun tp_is_empty!43231 () Bool)

(assert (=> b!6948528 (= e!4179292 tp_is_empty!43231)))

(declare-fun e!4179290 () Bool)

(assert (=> b!6948529 (= e!4179290 true)))

(declare-datatypes ((C!34276 0))(
  ( (C!34277 (val!26840 Int)) )
))
(declare-datatypes ((List!66756 0))(
  ( (Nil!66632) (Cons!66632 (h!73080 C!34276) (t!380499 List!66756)) )
))
(declare-fun lt!2477702 () List!66756)

(declare-datatypes ((tuple2!67716 0))(
  ( (tuple2!67717 (_1!37161 List!66756) (_2!37161 List!66756)) )
))
(declare-fun cut!41 () tuple2!67716)

(declare-fun ++!15040 (List!66756 List!66756) List!66756)

(assert (=> b!6948529 (= lt!2477702 (++!15040 (_1!37161 cut!41) (_2!37161 cut!41)))))

(declare-datatypes ((Unit!160726 0))(
  ( (Unit!160727) )
))
(declare-fun lt!2477704 () Unit!160726)

(declare-fun lt!2477709 () tuple2!67716)

(declare-fun ExistsThe!18 (tuple2!67716 Int) Unit!160726)

(assert (=> b!6948529 (= lt!2477704 (ExistsThe!18 lt!2477709 lambda!396226))))

(declare-fun b!6948530 () Bool)

(declare-fun e!4179295 () Bool)

(assert (=> b!6948530 (= e!4179295 (not e!4179290))))

(declare-fun res!2834735 () Bool)

(assert (=> b!6948530 (=> res!2834735 e!4179290)))

(declare-fun lt!2477706 () Bool)

(declare-fun lt!2477707 () Bool)

(assert (=> b!6948530 (= res!2834735 (or (not lt!2477706) (not lt!2477707)))))

(declare-datatypes ((Regex!17003 0))(
  ( (ElementMatch!17003 (c!1289021 C!34276)) (Concat!25848 (regOne!34518 Regex!17003) (regTwo!34518 Regex!17003)) (EmptyExpr!17003) (Star!17003 (reg!17332 Regex!17003)) (EmptyLang!17003) (Union!17003 (regOne!34519 Regex!17003) (regTwo!34519 Regex!17003)) )
))
(declare-fun lt!2477705 () Regex!17003)

(declare-fun matchRSpec!4048 (Regex!17003 List!66756) Bool)

(assert (=> b!6948530 (= lt!2477707 (matchRSpec!4048 lt!2477705 (_2!37161 lt!2477709)))))

(declare-fun matchR!9134 (Regex!17003 List!66756) Bool)

(assert (=> b!6948530 (= lt!2477707 (matchR!9134 lt!2477705 (_2!37161 lt!2477709)))))

(declare-fun lt!2477703 () Unit!160726)

(declare-fun mainMatchTheorem!4048 (Regex!17003 List!66756) Unit!160726)

(assert (=> b!6948530 (= lt!2477703 (mainMatchTheorem!4048 lt!2477705 (_2!37161 lt!2477709)))))

(declare-fun rInner!765 () Regex!17003)

(assert (=> b!6948530 (= lt!2477705 (Star!17003 rInner!765))))

(assert (=> b!6948530 (= lt!2477706 (matchRSpec!4048 rInner!765 (_1!37161 lt!2477709)))))

(assert (=> b!6948530 (= lt!2477706 (matchR!9134 rInner!765 (_1!37161 lt!2477709)))))

(declare-fun lt!2477708 () Unit!160726)

(assert (=> b!6948530 (= lt!2477708 (mainMatchTheorem!4048 rInner!765 (_1!37161 lt!2477709)))))

(declare-fun res!2834734 () Bool)

(declare-fun e!4179291 () Bool)

(assert (=> start!667002 (=> (not res!2834734) (not e!4179291))))

(declare-fun validRegex!8709 (Regex!17003) Bool)

(assert (=> start!667002 (= res!2834734 (validRegex!8709 rInner!765))))

(assert (=> start!667002 e!4179291))

(assert (=> start!667002 e!4179292))

(declare-fun e!4179294 () Bool)

(assert (=> start!667002 e!4179294))

(declare-fun e!4179296 () Bool)

(declare-fun e!4179293 () Bool)

(assert (=> start!667002 (and e!4179296 e!4179293)))

(declare-fun b!6948531 () Bool)

(declare-fun res!2834736 () Bool)

(assert (=> b!6948531 (=> (not res!2834736) (not e!4179291))))

(declare-fun nullable!6816 (Regex!17003) Bool)

(assert (=> b!6948531 (= res!2834736 (not (nullable!6816 rInner!765)))))

(declare-fun b!6948532 () Bool)

(declare-fun tp!1915404 () Bool)

(assert (=> b!6948532 (= e!4179296 (and tp_is_empty!43231 tp!1915404))))

(declare-fun b!6948533 () Bool)

(declare-fun tp!1915399 () Bool)

(assert (=> b!6948533 (= e!4179294 (and tp_is_empty!43231 tp!1915399))))

(declare-fun res!2834738 () Bool)

(assert (=> b!6948534 (=> (not res!2834738) (not e!4179291))))

(declare-fun Exists!3999 (Int) Bool)

(assert (=> b!6948534 (= res!2834738 (Exists!3999 lambda!396225))))

(declare-fun b!6948535 () Bool)

(declare-fun tp!1915405 () Bool)

(assert (=> b!6948535 (= e!4179293 (and tp_is_empty!43231 tp!1915405))))

(declare-fun b!6948536 () Bool)

(declare-fun tp!1915402 () Bool)

(declare-fun tp!1915403 () Bool)

(assert (=> b!6948536 (= e!4179292 (and tp!1915402 tp!1915403))))

(declare-fun b!6948537 () Bool)

(declare-fun tp!1915398 () Bool)

(assert (=> b!6948537 (= e!4179292 tp!1915398)))

(declare-fun b!6948538 () Bool)

(declare-fun tp!1915400 () Bool)

(declare-fun tp!1915401 () Bool)

(assert (=> b!6948538 (= e!4179292 (and tp!1915400 tp!1915401))))

(declare-fun b!6948539 () Bool)

(assert (=> b!6948539 (= e!4179291 e!4179295)))

(declare-fun res!2834737 () Bool)

(assert (=> b!6948539 (=> (not res!2834737) (not e!4179295))))

(declare-fun s!10388 () List!66756)

(assert (=> b!6948539 (= res!2834737 (= (++!15040 (_1!37161 lt!2477709) (_2!37161 lt!2477709)) s!10388))))

(declare-fun pickWitness!348 (Int) tuple2!67716)

(assert (=> b!6948539 (= lt!2477709 (pickWitness!348 lambda!396225))))

(assert (= (and start!667002 res!2834734) b!6948531))

(assert (= (and b!6948531 res!2834736) b!6948534))

(assert (= (and b!6948534 res!2834738) b!6948539))

(assert (= (and b!6948539 res!2834737) b!6948530))

(assert (= (and b!6948530 (not res!2834735)) b!6948529))

(get-info :version)

(assert (= (and start!667002 ((_ is ElementMatch!17003) rInner!765)) b!6948528))

(assert (= (and start!667002 ((_ is Concat!25848) rInner!765)) b!6948538))

(assert (= (and start!667002 ((_ is Star!17003) rInner!765)) b!6948537))

(assert (= (and start!667002 ((_ is Union!17003) rInner!765)) b!6948536))

(assert (= (and start!667002 ((_ is Cons!66632) s!10388)) b!6948533))

(assert (= (and start!667002 ((_ is Cons!66632) (_1!37161 cut!41))) b!6948532))

(assert (= (and start!667002 ((_ is Cons!66632) (_2!37161 cut!41))) b!6948535))

(declare-fun m!7651382 () Bool)

(assert (=> b!6948534 m!7651382))

(declare-fun m!7651384 () Bool)

(assert (=> b!6948530 m!7651384))

(declare-fun m!7651386 () Bool)

(assert (=> b!6948530 m!7651386))

(declare-fun m!7651388 () Bool)

(assert (=> b!6948530 m!7651388))

(declare-fun m!7651390 () Bool)

(assert (=> b!6948530 m!7651390))

(declare-fun m!7651392 () Bool)

(assert (=> b!6948530 m!7651392))

(declare-fun m!7651394 () Bool)

(assert (=> b!6948530 m!7651394))

(declare-fun m!7651396 () Bool)

(assert (=> b!6948539 m!7651396))

(declare-fun m!7651398 () Bool)

(assert (=> b!6948539 m!7651398))

(declare-fun m!7651400 () Bool)

(assert (=> start!667002 m!7651400))

(declare-fun m!7651402 () Bool)

(assert (=> b!6948529 m!7651402))

(declare-fun m!7651404 () Bool)

(assert (=> b!6948529 m!7651404))

(declare-fun m!7651406 () Bool)

(assert (=> b!6948531 m!7651406))

(check-sat (not b!6948530) (not b!6948537) tp_is_empty!43231 (not b!6948533) (not b!6948539) (not b!6948532) (not b!6948534) (not b!6948536) (not b!6948531) (not b!6948538) (not b!6948529) (not b!6948535) (not start!667002))
(check-sat)
