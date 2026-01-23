; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668062 () Bool)

(assert start!668062)

(declare-fun b!6963389 () Bool)

(declare-fun e!4186531 () Bool)

(declare-fun tp!1920172 () Bool)

(declare-fun tp!1920173 () Bool)

(assert (=> b!6963389 (= e!4186531 (and tp!1920172 tp!1920173))))

(declare-fun b!6963390 () Bool)

(declare-fun e!4186534 () Bool)

(declare-fun tp_is_empty!43419 () Bool)

(declare-fun tp!1920171 () Bool)

(assert (=> b!6963390 (= e!4186534 (and tp_is_empty!43419 tp!1920171))))

(declare-fun b!6963391 () Bool)

(declare-fun tp!1920168 () Bool)

(assert (=> b!6963391 (= e!4186531 tp!1920168)))

(declare-fun b!6963392 () Bool)

(declare-fun e!4186532 () Bool)

(declare-datatypes ((C!34464 0))(
  ( (C!34465 (val!26934 Int)) )
))
(declare-datatypes ((Regex!17097 0))(
  ( (ElementMatch!17097 (c!1291123 C!34464)) (Concat!25942 (regOne!34706 Regex!17097) (regTwo!34706 Regex!17097)) (EmptyExpr!17097) (Star!17097 (reg!17426 Regex!17097)) (EmptyLang!17097) (Union!17097 (regOne!34707 Regex!17097) (regTwo!34707 Regex!17097)) )
))
(declare-fun r!13765 () Regex!17097)

(declare-datatypes ((List!66879 0))(
  ( (Nil!66755) (Cons!66755 (h!73203 C!34464) (t!380622 List!66879)) )
))
(declare-fun s!9351 () List!66879)

(declare-fun matchRSpec!4118 (Regex!17097 List!66879) Bool)

(assert (=> b!6963392 (= e!4186532 (matchRSpec!4118 (regTwo!34707 r!13765) s!9351))))

(declare-fun b!6963393 () Bool)

(assert (=> b!6963393 (= e!4186531 tp_is_empty!43419)))

(declare-fun b!6963394 () Bool)

(declare-fun e!4186533 () Bool)

(declare-fun e!4186526 () Bool)

(assert (=> b!6963394 (= e!4186533 (not e!4186526))))

(declare-fun res!2841139 () Bool)

(assert (=> b!6963394 (=> res!2841139 e!4186526)))

(get-info :version)

(assert (=> b!6963394 (= res!2841139 (not ((_ is Union!17097) r!13765)))))

(declare-fun lt!2479105 () Bool)

(assert (=> b!6963394 (= lt!2479105 (matchRSpec!4118 r!13765 s!9351))))

(declare-fun matchR!9203 (Regex!17097 List!66879) Bool)

(assert (=> b!6963394 (= lt!2479105 (matchR!9203 r!13765 s!9351))))

(declare-datatypes ((Unit!160854 0))(
  ( (Unit!160855) )
))
(declare-fun lt!2479100 () Unit!160854)

(declare-fun mainMatchTheorem!4112 (Regex!17097 List!66879) Unit!160854)

(assert (=> b!6963394 (= lt!2479100 (mainMatchTheorem!4112 r!13765 s!9351))))

(declare-fun b!6963395 () Bool)

(declare-fun e!4186530 () Bool)

(declare-datatypes ((List!66880 0))(
  ( (Nil!66756) (Cons!66756 (h!73204 Regex!17097) (t!380623 List!66880)) )
))
(declare-fun lt!2479104 () List!66880)

(declare-fun lambda!397294 () Int)

(declare-fun forall!15968 (List!66880 Int) Bool)

(assert (=> b!6963395 (= e!4186530 (forall!15968 lt!2479104 lambda!397294))))

(declare-fun b!6963396 () Bool)

(declare-fun res!2841142 () Bool)

(assert (=> b!6963396 (=> (not res!2841142) (not e!4186533))))

(declare-fun l!9142 () List!66880)

(declare-fun generalisedUnion!2572 (List!66880) Regex!17097)

(assert (=> b!6963396 (= res!2841142 (= r!13765 (generalisedUnion!2572 l!9142)))))

(declare-fun b!6963397 () Bool)

(declare-fun e!4186528 () Bool)

(assert (=> b!6963397 (= e!4186526 e!4186528)))

(declare-fun res!2841136 () Bool)

(assert (=> b!6963397 (=> res!2841136 e!4186528)))

(declare-fun isEmpty!38970 (List!66880) Bool)

(assert (=> b!6963397 (= res!2841136 (isEmpty!38970 lt!2479104))))

(declare-fun tail!13051 (List!66880) List!66880)

(assert (=> b!6963397 (= lt!2479104 (tail!13051 l!9142))))

(declare-fun b!6963398 () Bool)

(declare-fun res!2841137 () Bool)

(assert (=> b!6963398 (=> res!2841137 e!4186526)))

(assert (=> b!6963398 (= res!2841137 (isEmpty!38970 l!9142))))

(declare-fun b!6963400 () Bool)

(declare-fun e!4186527 () Bool)

(assert (=> b!6963400 (= e!4186528 e!4186527)))

(declare-fun res!2841143 () Bool)

(assert (=> b!6963400 (=> res!2841143 e!4186527)))

(assert (=> b!6963400 (= res!2841143 (not (= lt!2479105 e!4186532)))))

(declare-fun res!2841138 () Bool)

(assert (=> b!6963400 (=> res!2841138 e!4186532)))

(declare-fun lt!2479101 () Bool)

(assert (=> b!6963400 (= res!2841138 lt!2479101)))

(assert (=> b!6963400 (= lt!2479101 (matchRSpec!4118 (regOne!34707 r!13765) s!9351))))

(declare-fun b!6963401 () Bool)

(declare-fun tp!1920170 () Bool)

(declare-fun tp!1920166 () Bool)

(assert (=> b!6963401 (= e!4186531 (and tp!1920170 tp!1920166))))

(declare-fun b!6963402 () Bool)

(declare-fun e!4186529 () Bool)

(declare-fun tp!1920167 () Bool)

(declare-fun tp!1920169 () Bool)

(assert (=> b!6963402 (= e!4186529 (and tp!1920167 tp!1920169))))

(declare-fun b!6963403 () Bool)

(assert (=> b!6963403 (= e!4186527 e!4186530)))

(declare-fun res!2841140 () Bool)

(assert (=> b!6963403 (=> res!2841140 e!4186530)))

(assert (=> b!6963403 (= res!2841140 (not (forall!15968 lt!2479104 lambda!397294)))))

(assert (=> b!6963403 (= (matchR!9203 (regTwo!34707 r!13765) s!9351) (matchRSpec!4118 (regTwo!34707 r!13765) s!9351))))

(declare-fun lt!2479102 () Unit!160854)

(assert (=> b!6963403 (= lt!2479102 (mainMatchTheorem!4112 (regTwo!34707 r!13765) s!9351))))

(assert (=> b!6963403 (= (matchR!9203 (regOne!34707 r!13765) s!9351) lt!2479101)))

(declare-fun lt!2479103 () Unit!160854)

(assert (=> b!6963403 (= lt!2479103 (mainMatchTheorem!4112 (regOne!34707 r!13765) s!9351))))

(declare-fun res!2841144 () Bool)

(assert (=> start!668062 (=> (not res!2841144) (not e!4186533))))

(assert (=> start!668062 (= res!2841144 (forall!15968 l!9142 lambda!397294))))

(assert (=> start!668062 e!4186533))

(assert (=> start!668062 e!4186529))

(assert (=> start!668062 e!4186531))

(assert (=> start!668062 e!4186534))

(declare-fun b!6963399 () Bool)

(declare-fun res!2841141 () Bool)

(assert (=> b!6963399 (=> res!2841141 e!4186530)))

(assert (=> b!6963399 (= res!2841141 (not (= (regTwo!34707 r!13765) (generalisedUnion!2572 lt!2479104))))))

(assert (= (and start!668062 res!2841144) b!6963396))

(assert (= (and b!6963396 res!2841142) b!6963394))

(assert (= (and b!6963394 (not res!2841139)) b!6963398))

(assert (= (and b!6963398 (not res!2841137)) b!6963397))

(assert (= (and b!6963397 (not res!2841136)) b!6963400))

(assert (= (and b!6963400 (not res!2841138)) b!6963392))

(assert (= (and b!6963400 (not res!2841143)) b!6963403))

(assert (= (and b!6963403 (not res!2841140)) b!6963399))

(assert (= (and b!6963399 (not res!2841141)) b!6963395))

(assert (= (and start!668062 ((_ is Cons!66756) l!9142)) b!6963402))

(assert (= (and start!668062 ((_ is ElementMatch!17097) r!13765)) b!6963393))

(assert (= (and start!668062 ((_ is Concat!25942) r!13765)) b!6963389))

(assert (= (and start!668062 ((_ is Star!17097) r!13765)) b!6963391))

(assert (= (and start!668062 ((_ is Union!17097) r!13765)) b!6963401))

(assert (= (and start!668062 ((_ is Cons!66755) s!9351)) b!6963390))

(declare-fun m!7656980 () Bool)

(assert (=> b!6963395 m!7656980))

(declare-fun m!7656982 () Bool)

(assert (=> b!6963399 m!7656982))

(declare-fun m!7656984 () Bool)

(assert (=> b!6963396 m!7656984))

(declare-fun m!7656986 () Bool)

(assert (=> b!6963400 m!7656986))

(declare-fun m!7656988 () Bool)

(assert (=> b!6963398 m!7656988))

(declare-fun m!7656990 () Bool)

(assert (=> b!6963397 m!7656990))

(declare-fun m!7656992 () Bool)

(assert (=> b!6963397 m!7656992))

(declare-fun m!7656994 () Bool)

(assert (=> b!6963394 m!7656994))

(declare-fun m!7656996 () Bool)

(assert (=> b!6963394 m!7656996))

(declare-fun m!7656998 () Bool)

(assert (=> b!6963394 m!7656998))

(declare-fun m!7657000 () Bool)

(assert (=> b!6963403 m!7657000))

(declare-fun m!7657002 () Bool)

(assert (=> b!6963403 m!7657002))

(assert (=> b!6963403 m!7656980))

(declare-fun m!7657004 () Bool)

(assert (=> b!6963403 m!7657004))

(declare-fun m!7657006 () Bool)

(assert (=> b!6963403 m!7657006))

(declare-fun m!7657008 () Bool)

(assert (=> b!6963403 m!7657008))

(assert (=> b!6963392 m!7657008))

(declare-fun m!7657010 () Bool)

(assert (=> start!668062 m!7657010))

(check-sat tp_is_empty!43419 (not b!6963395) (not b!6963392) (not b!6963390) (not b!6963391) (not b!6963400) (not start!668062) (not b!6963394) (not b!6963397) (not b!6963402) (not b!6963401) (not b!6963398) (not b!6963396) (not b!6963403) (not b!6963389) (not b!6963399))
(check-sat)
