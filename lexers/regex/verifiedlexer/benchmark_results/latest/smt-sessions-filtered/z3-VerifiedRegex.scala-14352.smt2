; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749402 () Bool)

(assert start!749402)

(declare-fun b!7939907 () Bool)

(declare-fun e!4684953 () Bool)

(declare-fun tp_is_empty!53313 () Bool)

(assert (=> b!7939907 (= e!4684953 tp_is_empty!53313)))

(declare-fun b!7939909 () Bool)

(declare-fun tp!2360720 () Bool)

(declare-fun tp!2360721 () Bool)

(assert (=> b!7939909 (= e!4684953 (and tp!2360720 tp!2360721))))

(declare-fun b!7939910 () Bool)

(declare-fun res!3149848 () Bool)

(declare-fun e!4684954 () Bool)

(assert (=> b!7939910 (=> res!3149848 e!4684954)))

(declare-fun lt!2695856 () Int)

(assert (=> b!7939910 (= res!3149848 (not (= 0 lt!2695856)))))

(declare-fun b!7939911 () Bool)

(declare-datatypes ((C!43116 0))(
  ( (C!43117 (val!32102 Int)) )
))
(declare-datatypes ((List!74614 0))(
  ( (Nil!74490) (Cons!74490 (h!80938 C!43116) (t!390357 List!74614)) )
))
(declare-fun input!6707 () List!74614)

(declare-fun lt!2695853 () Int)

(declare-fun sizeTr!481 (List!74614 Int) Int)

(assert (=> b!7939911 (= e!4684954 (= (sizeTr!481 input!6707 0) lt!2695853))))

(declare-fun b!7939912 () Bool)

(declare-fun e!4684955 () Bool)

(assert (=> b!7939912 (= e!4684955 (not e!4684954))))

(declare-fun res!3149847 () Bool)

(assert (=> b!7939912 (=> res!3149847 e!4684954)))

(declare-fun ++!18291 (List!74614 List!74614) List!74614)

(assert (=> b!7939912 (= res!3149847 (not (= (++!18291 Nil!74490 input!6707) input!6707)))))

(assert (=> b!7939912 (= 0 lt!2695856)))

(declare-fun size!43324 (List!74614) Int)

(assert (=> b!7939912 (= lt!2695856 (size!43324 Nil!74490))))

(declare-datatypes ((Unit!169597 0))(
  ( (Unit!169598) )
))
(declare-fun lt!2695854 () Unit!169597)

(declare-fun lemmaSizeTrEqualsSize!480 (List!74614 Int) Unit!169597)

(assert (=> b!7939912 (= lt!2695854 (lemmaSizeTrEqualsSize!480 Nil!74490 0))))

(assert (=> b!7939912 (= (sizeTr!481 input!6707 0) lt!2695853)))

(assert (=> b!7939912 (= lt!2695853 (size!43324 input!6707))))

(declare-fun lt!2695855 () Unit!169597)

(assert (=> b!7939912 (= lt!2695855 (lemmaSizeTrEqualsSize!480 input!6707 0))))

(declare-fun b!7939913 () Bool)

(declare-fun e!4684956 () Bool)

(declare-fun tp!2360722 () Bool)

(assert (=> b!7939913 (= e!4684956 (and tp_is_empty!53313 tp!2360722))))

(declare-fun b!7939914 () Bool)

(declare-fun tp!2360718 () Bool)

(assert (=> b!7939914 (= e!4684953 tp!2360718)))

(declare-fun b!7939908 () Bool)

(declare-fun tp!2360717 () Bool)

(declare-fun tp!2360719 () Bool)

(assert (=> b!7939908 (= e!4684953 (and tp!2360717 tp!2360719))))

(declare-fun res!3149846 () Bool)

(assert (=> start!749402 (=> (not res!3149846) (not e!4684955))))

(declare-datatypes ((Regex!21389 0))(
  ( (ElementMatch!21389 (c!1458728 C!43116)) (Concat!30388 (regOne!43290 Regex!21389) (regTwo!43290 Regex!21389)) (EmptyExpr!21389) (Star!21389 (reg!21718 Regex!21389)) (EmptyLang!21389) (Union!21389 (regOne!43291 Regex!21389) (regTwo!43291 Regex!21389)) )
))
(declare-fun r!15416 () Regex!21389)

(declare-fun validRegex!11693 (Regex!21389) Bool)

(assert (=> start!749402 (= res!3149846 (validRegex!11693 r!15416))))

(assert (=> start!749402 e!4684955))

(assert (=> start!749402 e!4684953))

(assert (=> start!749402 e!4684956))

(assert (= (and start!749402 res!3149846) b!7939912))

(assert (= (and b!7939912 (not res!3149847)) b!7939910))

(assert (= (and b!7939910 (not res!3149848)) b!7939911))

(get-info :version)

(assert (= (and start!749402 ((_ is ElementMatch!21389) r!15416)) b!7939907))

(assert (= (and start!749402 ((_ is Concat!30388) r!15416)) b!7939909))

(assert (= (and start!749402 ((_ is Star!21389) r!15416)) b!7939914))

(assert (= (and start!749402 ((_ is Union!21389) r!15416)) b!7939908))

(assert (= (and start!749402 ((_ is Cons!74490) input!6707)) b!7939913))

(declare-fun m!8329302 () Bool)

(assert (=> b!7939911 m!8329302))

(declare-fun m!8329304 () Bool)

(assert (=> b!7939912 m!8329304))

(declare-fun m!8329306 () Bool)

(assert (=> b!7939912 m!8329306))

(declare-fun m!8329308 () Bool)

(assert (=> b!7939912 m!8329308))

(declare-fun m!8329310 () Bool)

(assert (=> b!7939912 m!8329310))

(declare-fun m!8329312 () Bool)

(assert (=> b!7939912 m!8329312))

(assert (=> b!7939912 m!8329302))

(declare-fun m!8329314 () Bool)

(assert (=> start!749402 m!8329314))

(check-sat (not b!7939911) (not b!7939909) (not b!7939908) (not start!749402) (not b!7939914) tp_is_empty!53313 (not b!7939912) (not b!7939913))
(check-sat)
