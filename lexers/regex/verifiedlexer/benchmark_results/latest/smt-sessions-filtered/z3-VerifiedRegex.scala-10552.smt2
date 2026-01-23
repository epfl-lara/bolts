; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543326 () Bool)

(assert start!543326)

(declare-fun b!5134617 () Bool)

(declare-fun e!3202599 () Bool)

(declare-fun e!3202600 () Bool)

(assert (=> b!5134617 (= e!3202599 (not e!3202600))))

(declare-fun res!2187079 () Bool)

(assert (=> b!5134617 (=> res!2187079 e!3202600)))

(declare-datatypes ((C!29056 0))(
  ( (C!29057 (val!24180 Int)) )
))
(declare-datatypes ((Regex!14395 0))(
  ( (ElementMatch!14395 (c!883728 C!29056)) (Concat!23240 (regOne!29302 Regex!14395) (regTwo!29302 Regex!14395)) (EmptyExpr!14395) (Star!14395 (reg!14724 Regex!14395)) (EmptyLang!14395) (Union!14395 (regOne!29303 Regex!14395) (regTwo!29303 Regex!14395)) )
))
(declare-datatypes ((List!59722 0))(
  ( (Nil!59598) (Cons!59598 (h!66046 Regex!14395) (t!372749 List!59722)) )
))
(declare-datatypes ((Context!7558 0))(
  ( (Context!7559 (exprs!4279 List!59722)) )
))
(declare-fun ctx!74 () Context!7558)

(declare-fun lostCause!1350 (Context!7558) Bool)

(assert (=> b!5134617 (= res!2187079 (not (lostCause!1350 (Context!7559 (t!372749 (exprs!4279 ctx!74))))))))

(declare-fun lostCause!1351 (Regex!14395) Bool)

(assert (=> b!5134617 (not (lostCause!1351 (h!66046 (exprs!4279 ctx!74))))))

(declare-datatypes ((Unit!150933 0))(
  ( (Unit!150934) )
))
(declare-fun lt!2118791 () Unit!150933)

(declare-fun lemmaNullableThenNotLostCause!46 (Regex!14395) Unit!150933)

(assert (=> b!5134617 (= lt!2118791 (lemmaNullableThenNotLostCause!46 (h!66046 (exprs!4279 ctx!74))))))

(declare-fun b!5134618 () Bool)

(declare-fun e!3202598 () Bool)

(declare-fun tp!1432249 () Bool)

(assert (=> b!5134618 (= e!3202598 tp!1432249)))

(declare-fun b!5134620 () Bool)

(declare-fun res!2187078 () Bool)

(assert (=> b!5134620 (=> (not res!2187078) (not e!3202599))))

(declare-fun nullable!4768 (Regex!14395) Bool)

(assert (=> b!5134620 (= res!2187078 (nullable!4768 (h!66046 (exprs!4279 ctx!74))))))

(declare-fun b!5134621 () Bool)

(declare-fun res!2187077 () Bool)

(assert (=> b!5134621 (=> (not res!2187077) (not e!3202599))))

(get-info :version)

(assert (=> b!5134621 (= res!2187077 ((_ is Cons!59598) (exprs!4279 ctx!74)))))

(declare-fun res!2187080 () Bool)

(assert (=> start!543326 (=> (not res!2187080) (not e!3202599))))

(assert (=> start!543326 (= res!2187080 (lostCause!1350 ctx!74))))

(assert (=> start!543326 e!3202599))

(declare-fun inv!79168 (Context!7558) Bool)

(assert (=> start!543326 (and (inv!79168 ctx!74) e!3202598)))

(declare-fun b!5134619 () Bool)

(declare-fun size!39567 (List!59722) Int)

(assert (=> b!5134619 (= e!3202600 (< (size!39567 (t!372749 (exprs!4279 ctx!74))) (size!39567 (exprs!4279 ctx!74))))))

(assert (= (and start!543326 res!2187080) b!5134621))

(assert (= (and b!5134621 res!2187077) b!5134620))

(assert (= (and b!5134620 res!2187078) b!5134617))

(assert (= (and b!5134617 (not res!2187079)) b!5134619))

(assert (= start!543326 b!5134618))

(declare-fun m!6200308 () Bool)

(assert (=> b!5134617 m!6200308))

(declare-fun m!6200310 () Bool)

(assert (=> b!5134617 m!6200310))

(declare-fun m!6200312 () Bool)

(assert (=> b!5134617 m!6200312))

(declare-fun m!6200314 () Bool)

(assert (=> b!5134620 m!6200314))

(declare-fun m!6200316 () Bool)

(assert (=> start!543326 m!6200316))

(declare-fun m!6200318 () Bool)

(assert (=> start!543326 m!6200318))

(declare-fun m!6200320 () Bool)

(assert (=> b!5134619 m!6200320))

(declare-fun m!6200322 () Bool)

(assert (=> b!5134619 m!6200322))

(check-sat (not b!5134618) (not start!543326) (not b!5134619) (not b!5134620) (not b!5134617))
(check-sat)
(get-model)

(declare-fun d!1661401 () Bool)

(declare-fun nullableFct!1291 (Regex!14395) Bool)

(assert (=> d!1661401 (= (nullable!4768 (h!66046 (exprs!4279 ctx!74))) (nullableFct!1291 (h!66046 (exprs!4279 ctx!74))))))

(declare-fun bs!1199511 () Bool)

(assert (= bs!1199511 d!1661401))

(declare-fun m!6200324 () Bool)

(assert (=> bs!1199511 m!6200324))

(assert (=> b!5134620 d!1661401))

(declare-fun d!1661403 () Bool)

(declare-fun lambda!255552 () Int)

(declare-fun exists!1719 (List!59722 Int) Bool)

(assert (=> d!1661403 (= (lostCause!1350 ctx!74) (exists!1719 (exprs!4279 ctx!74) lambda!255552))))

(declare-fun bs!1199512 () Bool)

(assert (= bs!1199512 d!1661403))

(declare-fun m!6200326 () Bool)

(assert (=> bs!1199512 m!6200326))

(assert (=> start!543326 d!1661403))

(declare-fun bs!1199513 () Bool)

(declare-fun d!1661407 () Bool)

(assert (= bs!1199513 (and d!1661407 d!1661403)))

(declare-fun lambda!255555 () Int)

(assert (=> bs!1199513 (not (= lambda!255555 lambda!255552))))

(declare-fun forall!13843 (List!59722 Int) Bool)

(assert (=> d!1661407 (= (inv!79168 ctx!74) (forall!13843 (exprs!4279 ctx!74) lambda!255555))))

(declare-fun bs!1199514 () Bool)

(assert (= bs!1199514 d!1661407))

(declare-fun m!6200328 () Bool)

(assert (=> bs!1199514 m!6200328))

(assert (=> start!543326 d!1661407))

(declare-fun bs!1199515 () Bool)

(declare-fun d!1661409 () Bool)

(assert (= bs!1199515 (and d!1661409 d!1661403)))

(declare-fun lambda!255556 () Int)

(assert (=> bs!1199515 (= lambda!255556 lambda!255552)))

(declare-fun bs!1199516 () Bool)

(assert (= bs!1199516 (and d!1661409 d!1661407)))

(assert (=> bs!1199516 (not (= lambda!255556 lambda!255555))))

(assert (=> d!1661409 (= (lostCause!1350 (Context!7559 (t!372749 (exprs!4279 ctx!74)))) (exists!1719 (exprs!4279 (Context!7559 (t!372749 (exprs!4279 ctx!74)))) lambda!255556))))

(declare-fun bs!1199517 () Bool)

(assert (= bs!1199517 d!1661409))

(declare-fun m!6200330 () Bool)

(assert (=> bs!1199517 m!6200330))

(assert (=> b!5134617 d!1661409))

(declare-fun d!1661411 () Bool)

(declare-fun lostCauseFct!322 (Regex!14395) Bool)

(assert (=> d!1661411 (= (lostCause!1351 (h!66046 (exprs!4279 ctx!74))) (lostCauseFct!322 (h!66046 (exprs!4279 ctx!74))))))

(declare-fun bs!1199518 () Bool)

(assert (= bs!1199518 d!1661411))

(declare-fun m!6200332 () Bool)

(assert (=> bs!1199518 m!6200332))

(assert (=> b!5134617 d!1661411))

(declare-fun d!1661413 () Bool)

(assert (=> d!1661413 (not (lostCause!1351 (h!66046 (exprs!4279 ctx!74))))))

(declare-fun lt!2118794 () Unit!150933)

(declare-fun choose!37964 (Regex!14395) Unit!150933)

(assert (=> d!1661413 (= lt!2118794 (choose!37964 (h!66046 (exprs!4279 ctx!74))))))

(declare-fun validRegex!6254 (Regex!14395) Bool)

(assert (=> d!1661413 (validRegex!6254 (h!66046 (exprs!4279 ctx!74)))))

(assert (=> d!1661413 (= (lemmaNullableThenNotLostCause!46 (h!66046 (exprs!4279 ctx!74))) lt!2118794)))

(declare-fun bs!1199519 () Bool)

(assert (= bs!1199519 d!1661413))

(assert (=> bs!1199519 m!6200310))

(declare-fun m!6200334 () Bool)

(assert (=> bs!1199519 m!6200334))

(declare-fun m!6200336 () Bool)

(assert (=> bs!1199519 m!6200336))

(assert (=> b!5134617 d!1661413))

(declare-fun d!1661415 () Bool)

(declare-fun lt!2118797 () Int)

(assert (=> d!1661415 (>= lt!2118797 0)))

(declare-fun e!3202603 () Int)

(assert (=> d!1661415 (= lt!2118797 e!3202603)))

(declare-fun c!883731 () Bool)

(assert (=> d!1661415 (= c!883731 ((_ is Nil!59598) (t!372749 (exprs!4279 ctx!74))))))

(assert (=> d!1661415 (= (size!39567 (t!372749 (exprs!4279 ctx!74))) lt!2118797)))

(declare-fun b!5134626 () Bool)

(assert (=> b!5134626 (= e!3202603 0)))

(declare-fun b!5134627 () Bool)

(assert (=> b!5134627 (= e!3202603 (+ 1 (size!39567 (t!372749 (t!372749 (exprs!4279 ctx!74))))))))

(assert (= (and d!1661415 c!883731) b!5134626))

(assert (= (and d!1661415 (not c!883731)) b!5134627))

(declare-fun m!6200338 () Bool)

(assert (=> b!5134627 m!6200338))

(assert (=> b!5134619 d!1661415))

(declare-fun d!1661417 () Bool)

(declare-fun lt!2118798 () Int)

(assert (=> d!1661417 (>= lt!2118798 0)))

(declare-fun e!3202604 () Int)

(assert (=> d!1661417 (= lt!2118798 e!3202604)))

(declare-fun c!883732 () Bool)

(assert (=> d!1661417 (= c!883732 ((_ is Nil!59598) (exprs!4279 ctx!74)))))

(assert (=> d!1661417 (= (size!39567 (exprs!4279 ctx!74)) lt!2118798)))

(declare-fun b!5134628 () Bool)

(assert (=> b!5134628 (= e!3202604 0)))

(declare-fun b!5134629 () Bool)

(assert (=> b!5134629 (= e!3202604 (+ 1 (size!39567 (t!372749 (exprs!4279 ctx!74)))))))

(assert (= (and d!1661417 c!883732) b!5134628))

(assert (= (and d!1661417 (not c!883732)) b!5134629))

(assert (=> b!5134629 m!6200320))

(assert (=> b!5134619 d!1661417))

(declare-fun b!5134634 () Bool)

(declare-fun e!3202607 () Bool)

(declare-fun tp!1432254 () Bool)

(declare-fun tp!1432255 () Bool)

(assert (=> b!5134634 (= e!3202607 (and tp!1432254 tp!1432255))))

(assert (=> b!5134618 (= tp!1432249 e!3202607)))

(assert (= (and b!5134618 ((_ is Cons!59598) (exprs!4279 ctx!74))) b!5134634))

(check-sat (not b!5134634) (not b!5134629) (not d!1661409) (not d!1661413) (not b!5134627) (not d!1661407) (not d!1661411) (not d!1661403) (not d!1661401))
(check-sat)
