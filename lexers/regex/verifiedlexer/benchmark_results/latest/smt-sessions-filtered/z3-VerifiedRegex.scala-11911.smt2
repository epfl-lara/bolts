; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667698 () Bool)

(assert start!667698)

(declare-fun b!6958358 () Bool)

(declare-fun res!2839370 () Bool)

(declare-fun e!4183969 () Bool)

(assert (=> b!6958358 (=> (not res!2839370) (not e!4183969))))

(declare-datatypes ((C!34408 0))(
  ( (C!34409 (val!26906 Int)) )
))
(declare-datatypes ((Regex!17069 0))(
  ( (ElementMatch!17069 (c!1290301 C!34408)) (Concat!25914 (regOne!34650 Regex!17069) (regTwo!34650 Regex!17069)) (EmptyExpr!17069) (Star!17069 (reg!17398 Regex!17069)) (EmptyLang!17069) (Union!17069 (regOne!34651 Regex!17069) (regTwo!34651 Regex!17069)) )
))
(declare-fun r!13765 () Regex!17069)

(declare-datatypes ((List!66823 0))(
  ( (Nil!66699) (Cons!66699 (h!73147 Regex!17069) (t!380566 List!66823)) )
))
(declare-fun l!9142 () List!66823)

(declare-fun generalisedUnion!2544 (List!66823) Regex!17069)

(assert (=> b!6958358 (= res!2839370 (= r!13765 (generalisedUnion!2544 l!9142)))))

(declare-fun res!2839369 () Bool)

(assert (=> start!667698 (=> (not res!2839369) (not e!4183969))))

(declare-fun lambda!396994 () Int)

(declare-fun forall!15940 (List!66823 Int) Bool)

(assert (=> start!667698 (= res!2839369 (forall!15940 l!9142 lambda!396994))))

(assert (=> start!667698 e!4183969))

(declare-fun e!4183971 () Bool)

(assert (=> start!667698 e!4183971))

(declare-fun e!4183970 () Bool)

(assert (=> start!667698 e!4183970))

(declare-fun e!4183972 () Bool)

(assert (=> start!667698 e!4183972))

(declare-fun b!6958359 () Bool)

(declare-fun tp!1918240 () Bool)

(declare-fun tp!1918243 () Bool)

(assert (=> b!6958359 (= e!4183970 (and tp!1918240 tp!1918243))))

(declare-fun b!6958360 () Bool)

(declare-fun tp_is_empty!43363 () Bool)

(declare-fun tp!1918237 () Bool)

(assert (=> b!6958360 (= e!4183972 (and tp_is_empty!43363 tp!1918237))))

(declare-fun b!6958361 () Bool)

(declare-fun tp!1918238 () Bool)

(assert (=> b!6958361 (= e!4183970 tp!1918238)))

(declare-fun b!6958362 () Bool)

(assert (=> b!6958362 (= e!4183969 (not true))))

(declare-datatypes ((List!66824 0))(
  ( (Nil!66700) (Cons!66700 (h!73148 C!34408) (t!380567 List!66824)) )
))
(declare-fun s!9351 () List!66824)

(declare-fun matchR!9175 (Regex!17069 List!66824) Bool)

(declare-fun matchRSpec!4090 (Regex!17069 List!66824) Bool)

(assert (=> b!6958362 (= (matchR!9175 r!13765 s!9351) (matchRSpec!4090 r!13765 s!9351))))

(declare-datatypes ((Unit!160798 0))(
  ( (Unit!160799) )
))
(declare-fun lt!2478729 () Unit!160798)

(declare-fun mainMatchTheorem!4084 (Regex!17069 List!66824) Unit!160798)

(assert (=> b!6958362 (= lt!2478729 (mainMatchTheorem!4084 r!13765 s!9351))))

(declare-fun b!6958363 () Bool)

(assert (=> b!6958363 (= e!4183970 tp_is_empty!43363)))

(declare-fun b!6958364 () Bool)

(declare-fun tp!1918239 () Bool)

(declare-fun tp!1918242 () Bool)

(assert (=> b!6958364 (= e!4183970 (and tp!1918239 tp!1918242))))

(declare-fun b!6958365 () Bool)

(declare-fun tp!1918241 () Bool)

(declare-fun tp!1918236 () Bool)

(assert (=> b!6958365 (= e!4183971 (and tp!1918241 tp!1918236))))

(assert (= (and start!667698 res!2839369) b!6958358))

(assert (= (and b!6958358 res!2839370) b!6958362))

(get-info :version)

(assert (= (and start!667698 ((_ is Cons!66699) l!9142)) b!6958365))

(assert (= (and start!667698 ((_ is ElementMatch!17069) r!13765)) b!6958363))

(assert (= (and start!667698 ((_ is Concat!25914) r!13765)) b!6958364))

(assert (= (and start!667698 ((_ is Star!17069) r!13765)) b!6958361))

(assert (= (and start!667698 ((_ is Union!17069) r!13765)) b!6958359))

(assert (= (and start!667698 ((_ is Cons!66700) s!9351)) b!6958360))

(declare-fun m!7655246 () Bool)

(assert (=> b!6958358 m!7655246))

(declare-fun m!7655248 () Bool)

(assert (=> start!667698 m!7655248))

(declare-fun m!7655250 () Bool)

(assert (=> b!6958362 m!7655250))

(declare-fun m!7655252 () Bool)

(assert (=> b!6958362 m!7655252))

(declare-fun m!7655254 () Bool)

(assert (=> b!6958362 m!7655254))

(check-sat tp_is_empty!43363 (not b!6958365) (not start!667698) (not b!6958359) (not b!6958362) (not b!6958364) (not b!6958361) (not b!6958360) (not b!6958358))
(check-sat)
