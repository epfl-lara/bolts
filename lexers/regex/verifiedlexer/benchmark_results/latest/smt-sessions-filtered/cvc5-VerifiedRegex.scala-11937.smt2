; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668360 () Bool)

(assert start!668360)

(declare-fun bs!1858978 () Bool)

(declare-fun b!6969314 () Bool)

(assert (= bs!1858978 (and b!6969314 start!668360)))

(declare-fun lambda!397596 () Int)

(declare-fun lambda!397595 () Int)

(assert (=> bs!1858978 (not (= lambda!397596 lambda!397595))))

(assert (=> b!6969314 true))

(declare-fun b!6969312 () Bool)

(declare-fun lt!2479478 () Bool)

(declare-datatypes ((C!34510 0))(
  ( (C!34511 (val!26957 Int)) )
))
(declare-datatypes ((Regex!17120 0))(
  ( (ElementMatch!17120 (c!1291944 C!34510)) (Concat!25965 (regOne!34752 Regex!17120) (regTwo!34752 Regex!17120)) (EmptyExpr!17120) (Star!17120 (reg!17449 Regex!17120)) (EmptyLang!17120) (Union!17120 (regOne!34753 Regex!17120) (regTwo!34753 Regex!17120)) )
))
(declare-datatypes ((List!66921 0))(
  ( (Nil!66797) (Cons!66797 (h!73245 Regex!17120) (t!380664 List!66921)) )
))
(declare-fun l!9142 () List!66921)

(declare-fun e!4189352 () Bool)

(declare-fun exists!2866 (List!66921 Int) Bool)

(assert (=> b!6969312 (= e!4189352 (= lt!2479478 (exists!2866 l!9142 lambda!397596)))))

(declare-fun b!6969313 () Bool)

(declare-fun e!4189350 () Bool)

(declare-fun tp_is_empty!43465 () Bool)

(declare-fun tp!1923420 () Bool)

(assert (=> b!6969313 (= e!4189350 (and tp_is_empty!43465 tp!1923420))))

(declare-fun res!2842766 () Bool)

(declare-fun e!4189349 () Bool)

(assert (=> start!668360 (=> (not res!2842766) (not e!4189349))))

(declare-fun forall!15991 (List!66921 Int) Bool)

(assert (=> start!668360 (= res!2842766 (forall!15991 l!9142 lambda!397595))))

(assert (=> start!668360 e!4189349))

(declare-fun e!4189351 () Bool)

(assert (=> start!668360 e!4189351))

(declare-fun e!4189347 () Bool)

(assert (=> start!668360 e!4189347))

(assert (=> start!668360 e!4189350))

(declare-fun res!2842763 () Bool)

(assert (=> b!6969314 (=> res!2842763 e!4189352)))

(assert (=> b!6969314 (= res!2842763 (not (= lt!2479478 (exists!2866 l!9142 lambda!397596))))))

(declare-fun b!6969315 () Bool)

(declare-fun tp!1923425 () Bool)

(declare-fun tp!1923421 () Bool)

(assert (=> b!6969315 (= e!4189351 (and tp!1923425 tp!1923421))))

(declare-fun b!6969316 () Bool)

(declare-fun tp!1923426 () Bool)

(assert (=> b!6969316 (= e!4189347 tp!1923426)))

(declare-fun b!6969317 () Bool)

(declare-fun res!2842769 () Bool)

(declare-fun e!4189348 () Bool)

(assert (=> b!6969317 (=> res!2842769 e!4189348)))

(declare-fun isEmpty!39002 (List!66921) Bool)

(assert (=> b!6969317 (= res!2842769 (isEmpty!39002 l!9142))))

(declare-fun b!6969318 () Bool)

(declare-fun tp!1923427 () Bool)

(declare-fun tp!1923422 () Bool)

(assert (=> b!6969318 (= e!4189347 (and tp!1923427 tp!1923422))))

(declare-fun b!6969319 () Bool)

(declare-fun res!2842768 () Bool)

(assert (=> b!6969319 (=> res!2842768 e!4189352)))

(declare-fun lt!2479477 () List!66921)

(declare-fun generalisedUnion!2595 (List!66921) Regex!17120)

(assert (=> b!6969319 (= res!2842768 (not (= (generalisedUnion!2595 lt!2479477) EmptyLang!17120)))))

(declare-fun b!6969320 () Bool)

(assert (=> b!6969320 (= e!4189347 tp_is_empty!43465)))

(declare-fun b!6969321 () Bool)

(assert (=> b!6969321 (= e!4189348 e!4189352)))

(declare-fun res!2842764 () Bool)

(assert (=> b!6969321 (=> res!2842764 e!4189352)))

(assert (=> b!6969321 (= res!2842764 (not (isEmpty!39002 lt!2479477)))))

(declare-fun tail!13082 (List!66921) List!66921)

(assert (=> b!6969321 (= lt!2479477 (tail!13082 l!9142))))

(declare-fun b!6969322 () Bool)

(declare-fun res!2842767 () Bool)

(assert (=> b!6969322 (=> (not res!2842767) (not e!4189349))))

(declare-fun r!13765 () Regex!17120)

(assert (=> b!6969322 (= res!2842767 (= r!13765 (generalisedUnion!2595 l!9142)))))

(declare-fun b!6969323 () Bool)

(assert (=> b!6969323 (= e!4189349 (not e!4189348))))

(declare-fun res!2842765 () Bool)

(assert (=> b!6969323 (=> res!2842765 e!4189348)))

(assert (=> b!6969323 (= res!2842765 (not (is-Union!17120 r!13765)))))

(declare-datatypes ((List!66922 0))(
  ( (Nil!66798) (Cons!66798 (h!73246 C!34510) (t!380665 List!66922)) )
))
(declare-fun s!9351 () List!66922)

(declare-fun matchRSpec!4137 (Regex!17120 List!66922) Bool)

(assert (=> b!6969323 (= lt!2479478 (matchRSpec!4137 r!13765 s!9351))))

(declare-fun matchR!9222 (Regex!17120 List!66922) Bool)

(assert (=> b!6969323 (= lt!2479478 (matchR!9222 r!13765 s!9351))))

(declare-datatypes ((Unit!160892 0))(
  ( (Unit!160893) )
))
(declare-fun lt!2479476 () Unit!160892)

(declare-fun mainMatchTheorem!4131 (Regex!17120 List!66922) Unit!160892)

(assert (=> b!6969323 (= lt!2479476 (mainMatchTheorem!4131 r!13765 s!9351))))

(declare-fun b!6969324 () Bool)

(declare-fun tp!1923423 () Bool)

(declare-fun tp!1923424 () Bool)

(assert (=> b!6969324 (= e!4189347 (and tp!1923423 tp!1923424))))

(assert (= (and start!668360 res!2842766) b!6969322))

(assert (= (and b!6969322 res!2842767) b!6969323))

(assert (= (and b!6969323 (not res!2842765)) b!6969317))

(assert (= (and b!6969317 (not res!2842769)) b!6969321))

(assert (= (and b!6969321 (not res!2842764)) b!6969319))

(assert (= (and b!6969319 (not res!2842768)) b!6969314))

(assert (= (and b!6969314 (not res!2842763)) b!6969312))

(assert (= (and start!668360 (is-Cons!66797 l!9142)) b!6969315))

(assert (= (and start!668360 (is-ElementMatch!17120 r!13765)) b!6969320))

(assert (= (and start!668360 (is-Concat!25965 r!13765)) b!6969318))

(assert (= (and start!668360 (is-Star!17120 r!13765)) b!6969316))

(assert (= (and start!668360 (is-Union!17120 r!13765)) b!6969324))

(assert (= (and start!668360 (is-Cons!66798 s!9351)) b!6969313))

(declare-fun m!7659068 () Bool)

(assert (=> b!6969323 m!7659068))

(declare-fun m!7659070 () Bool)

(assert (=> b!6969323 m!7659070))

(declare-fun m!7659072 () Bool)

(assert (=> b!6969323 m!7659072))

(declare-fun m!7659074 () Bool)

(assert (=> b!6969317 m!7659074))

(declare-fun m!7659076 () Bool)

(assert (=> b!6969312 m!7659076))

(declare-fun m!7659078 () Bool)

(assert (=> b!6969321 m!7659078))

(declare-fun m!7659080 () Bool)

(assert (=> b!6969321 m!7659080))

(declare-fun m!7659082 () Bool)

(assert (=> b!6969319 m!7659082))

(declare-fun m!7659084 () Bool)

(assert (=> b!6969322 m!7659084))

(assert (=> b!6969314 m!7659076))

(declare-fun m!7659086 () Bool)

(assert (=> start!668360 m!7659086))

(push 1)

(assert (not b!6969322))

(assert (not b!6969315))

(assert (not b!6969324))

(assert (not b!6969319))

(assert (not b!6969323))

(assert (not start!668360))

(assert (not b!6969317))

(assert (not b!6969313))

(assert (not b!6969312))

(assert (not b!6969321))

(assert (not b!6969314))

(assert (not b!6969318))

(assert (not b!6969316))

(assert tp_is_empty!43465)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

