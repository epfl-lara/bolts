; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668114 () Bool)

(assert start!668114)

(declare-fun bs!1858583 () Bool)

(declare-fun b!6964217 () Bool)

(assert (= bs!1858583 (and b!6964217 start!668114)))

(declare-fun lambda!397382 () Int)

(declare-fun lambda!397381 () Int)

(assert (=> bs!1858583 (not (= lambda!397382 lambda!397381))))

(assert (=> b!6964217 true))

(declare-fun e!4186992 () Bool)

(assert (=> b!6964217 (= e!4186992 true)))

(declare-fun lt!2479265 () Bool)

(declare-datatypes ((C!34476 0))(
  ( (C!34477 (val!26940 Int)) )
))
(declare-datatypes ((Regex!17103 0))(
  ( (ElementMatch!17103 (c!1291243 C!34476)) (Concat!25948 (regOne!34718 Regex!17103) (regTwo!34718 Regex!17103)) (EmptyExpr!17103) (Star!17103 (reg!17432 Regex!17103)) (EmptyLang!17103) (Union!17103 (regOne!34719 Regex!17103) (regTwo!34719 Regex!17103)) )
))
(declare-datatypes ((List!66891 0))(
  ( (Nil!66767) (Cons!66767 (h!73215 Regex!17103) (t!380634 List!66891)) )
))
(declare-fun lt!2479269 () List!66891)

(declare-fun exists!2863 (List!66891 Int) Bool)

(assert (=> b!6964217 (= lt!2479265 (exists!2863 lt!2479269 lambda!397382))))

(declare-datatypes ((List!66892 0))(
  ( (Nil!66768) (Cons!66768 (h!73216 C!34476) (t!380635 List!66892)) )
))
(declare-fun s!9351 () List!66892)

(declare-datatypes ((Unit!160866 0))(
  ( (Unit!160867) )
))
(declare-fun lt!2479267 () Unit!160866)

(declare-fun r!13765 () Regex!17103)

(declare-fun matchRGenUnionSpec!350 (Regex!17103 List!66891 List!66892) Unit!160866)

(assert (=> b!6964217 (= lt!2479267 (matchRGenUnionSpec!350 (regTwo!34719 r!13765) lt!2479269 s!9351))))

(declare-fun b!6964218 () Bool)

(declare-fun e!4186991 () Bool)

(declare-fun tp!1920445 () Bool)

(declare-fun tp!1920440 () Bool)

(assert (=> b!6964218 (= e!4186991 (and tp!1920445 tp!1920440))))

(declare-fun b!6964220 () Bool)

(declare-fun e!4186988 () Bool)

(declare-fun matchRSpec!4124 (Regex!17103 List!66892) Bool)

(assert (=> b!6964220 (= e!4186988 (matchRSpec!4124 (regTwo!34719 r!13765) s!9351))))

(declare-fun b!6964221 () Bool)

(declare-fun e!4186993 () Bool)

(declare-fun tp!1920436 () Bool)

(declare-fun tp!1920437 () Bool)

(assert (=> b!6964221 (= e!4186993 (and tp!1920436 tp!1920437))))

(declare-fun b!6964222 () Bool)

(declare-fun res!2841502 () Bool)

(assert (=> b!6964222 (=> res!2841502 e!4186992)))

(declare-fun generalisedUnion!2578 (List!66891) Regex!17103)

(assert (=> b!6964222 (= res!2841502 (not (= (regTwo!34719 r!13765) (generalisedUnion!2578 lt!2479269))))))

(declare-fun b!6964223 () Bool)

(declare-fun e!4186990 () Bool)

(declare-fun tp_is_empty!43431 () Bool)

(assert (=> b!6964223 (= e!4186990 tp_is_empty!43431)))

(declare-fun b!6964224 () Bool)

(declare-fun res!2841508 () Bool)

(declare-fun e!4186987 () Bool)

(assert (=> b!6964224 (=> res!2841508 e!4186987)))

(declare-fun l!9142 () List!66891)

(declare-fun isEmpty!38978 (List!66891) Bool)

(assert (=> b!6964224 (= res!2841508 (isEmpty!38978 l!9142))))

(declare-fun b!6964225 () Bool)

(declare-fun tp!1920433 () Bool)

(assert (=> b!6964225 (= e!4186991 tp!1920433)))

(declare-fun b!6964226 () Bool)

(declare-fun e!4186989 () Bool)

(assert (=> b!6964226 (= e!4186987 e!4186989)))

(declare-fun res!2841509 () Bool)

(assert (=> b!6964226 (=> res!2841509 e!4186989)))

(assert (=> b!6964226 (= res!2841509 (isEmpty!38978 lt!2479269))))

(declare-fun tail!13059 (List!66891) List!66891)

(assert (=> b!6964226 (= lt!2479269 (tail!13059 l!9142))))

(declare-fun b!6964227 () Bool)

(declare-fun e!4186996 () Bool)

(assert (=> b!6964227 (= e!4186996 e!4186992)))

(declare-fun res!2841506 () Bool)

(assert (=> b!6964227 (=> res!2841506 e!4186992)))

(declare-fun forall!15974 (List!66891 Int) Bool)

(assert (=> b!6964227 (= res!2841506 (not (forall!15974 lt!2479269 lambda!397381)))))

(assert (=> b!6964227 (= lt!2479265 (matchRSpec!4124 (regTwo!34719 r!13765) s!9351))))

(declare-fun matchR!9209 (Regex!17103 List!66892) Bool)

(assert (=> b!6964227 (= lt!2479265 (matchR!9209 (regTwo!34719 r!13765) s!9351))))

(declare-fun lt!2479271 () Unit!160866)

(declare-fun mainMatchTheorem!4118 (Regex!17103 List!66892) Unit!160866)

(assert (=> b!6964227 (= lt!2479271 (mainMatchTheorem!4118 (regTwo!34719 r!13765) s!9351))))

(declare-fun lt!2479264 () Bool)

(assert (=> b!6964227 (= (matchR!9209 (regOne!34719 r!13765) s!9351) lt!2479264)))

(declare-fun lt!2479270 () Unit!160866)

(assert (=> b!6964227 (= lt!2479270 (mainMatchTheorem!4118 (regOne!34719 r!13765) s!9351))))

(declare-fun b!6964228 () Bool)

(declare-fun tp!1920443 () Bool)

(declare-fun tp!1920439 () Bool)

(assert (=> b!6964228 (= e!4186990 (and tp!1920443 tp!1920439))))

(declare-fun b!6964229 () Bool)

(assert (=> b!6964229 (= e!4186991 tp_is_empty!43431)))

(declare-fun res!2841503 () Bool)

(declare-fun e!4186995 () Bool)

(assert (=> start!668114 (=> (not res!2841503) (not e!4186995))))

(assert (=> start!668114 (= res!2841503 (forall!15974 l!9142 lambda!397381))))

(assert (=> start!668114 e!4186995))

(assert (=> start!668114 e!4186993))

(assert (=> start!668114 e!4186991))

(declare-fun e!4186994 () Bool)

(assert (=> start!668114 e!4186994))

(assert (=> start!668114 e!4186990))

(declare-fun b!6964219 () Bool)

(assert (=> b!6964219 (= e!4186989 e!4186996)))

(declare-fun res!2841504 () Bool)

(assert (=> b!6964219 (=> res!2841504 e!4186996)))

(declare-fun lt!2479268 () Bool)

(assert (=> b!6964219 (= res!2841504 (not (= lt!2479268 e!4186988)))))

(declare-fun res!2841507 () Bool)

(assert (=> b!6964219 (=> res!2841507 e!4186988)))

(assert (=> b!6964219 (= res!2841507 lt!2479264)))

(assert (=> b!6964219 (= lt!2479264 (matchRSpec!4124 (regOne!34719 r!13765) s!9351))))

(declare-fun b!6964230 () Bool)

(assert (=> b!6964230 (= e!4186995 (not e!4186987))))

(declare-fun res!2841505 () Bool)

(assert (=> b!6964230 (=> res!2841505 e!4186987)))

(get-info :version)

(assert (=> b!6964230 (= res!2841505 (not ((_ is Union!17103) r!13765)))))

(assert (=> b!6964230 (= lt!2479268 (matchRSpec!4124 r!13765 s!9351))))

(assert (=> b!6964230 (= lt!2479268 (matchR!9209 r!13765 s!9351))))

(declare-fun lt!2479266 () Unit!160866)

(assert (=> b!6964230 (= lt!2479266 (mainMatchTheorem!4118 r!13765 s!9351))))

(declare-fun b!6964231 () Bool)

(declare-fun tp!1920435 () Bool)

(declare-fun tp!1920444 () Bool)

(assert (=> b!6964231 (= e!4186990 (and tp!1920435 tp!1920444))))

(declare-fun b!6964232 () Bool)

(declare-fun tp!1920442 () Bool)

(assert (=> b!6964232 (= e!4186994 (and tp_is_empty!43431 tp!1920442))))

(declare-fun b!6964233 () Bool)

(declare-fun tp!1920438 () Bool)

(declare-fun tp!1920441 () Bool)

(assert (=> b!6964233 (= e!4186991 (and tp!1920438 tp!1920441))))

(declare-fun b!6964234 () Bool)

(declare-fun res!2841510 () Bool)

(assert (=> b!6964234 (=> (not res!2841510) (not e!4186995))))

(assert (=> b!6964234 (= res!2841510 (= r!13765 (generalisedUnion!2578 l!9142)))))

(declare-fun b!6964235 () Bool)

(declare-fun tp!1920434 () Bool)

(assert (=> b!6964235 (= e!4186990 tp!1920434)))

(assert (= (and start!668114 res!2841503) b!6964234))

(assert (= (and b!6964234 res!2841510) b!6964230))

(assert (= (and b!6964230 (not res!2841505)) b!6964224))

(assert (= (and b!6964224 (not res!2841508)) b!6964226))

(assert (= (and b!6964226 (not res!2841509)) b!6964219))

(assert (= (and b!6964219 (not res!2841507)) b!6964220))

(assert (= (and b!6964219 (not res!2841504)) b!6964227))

(assert (= (and b!6964227 (not res!2841506)) b!6964222))

(assert (= (and b!6964222 (not res!2841502)) b!6964217))

(assert (= (and start!668114 ((_ is Cons!66767) l!9142)) b!6964221))

(assert (= (and start!668114 ((_ is ElementMatch!17103) r!13765)) b!6964229))

(assert (= (and start!668114 ((_ is Concat!25948) r!13765)) b!6964218))

(assert (= (and start!668114 ((_ is Star!17103) r!13765)) b!6964225))

(assert (= (and start!668114 ((_ is Union!17103) r!13765)) b!6964233))

(assert (= (and start!668114 ((_ is Cons!66768) s!9351)) b!6964232))

(declare-fun rr!16 () Regex!17103)

(assert (= (and start!668114 ((_ is ElementMatch!17103) rr!16)) b!6964223))

(assert (= (and start!668114 ((_ is Concat!25948) rr!16)) b!6964231))

(assert (= (and start!668114 ((_ is Star!17103) rr!16)) b!6964235))

(assert (= (and start!668114 ((_ is Union!17103) rr!16)) b!6964228))

(declare-fun m!7657408 () Bool)

(assert (=> start!668114 m!7657408))

(declare-fun m!7657410 () Bool)

(assert (=> b!6964219 m!7657410))

(declare-fun m!7657412 () Bool)

(assert (=> b!6964224 m!7657412))

(declare-fun m!7657414 () Bool)

(assert (=> b!6964217 m!7657414))

(declare-fun m!7657416 () Bool)

(assert (=> b!6964217 m!7657416))

(declare-fun m!7657418 () Bool)

(assert (=> b!6964226 m!7657418))

(declare-fun m!7657420 () Bool)

(assert (=> b!6964226 m!7657420))

(declare-fun m!7657422 () Bool)

(assert (=> b!6964220 m!7657422))

(declare-fun m!7657424 () Bool)

(assert (=> b!6964227 m!7657424))

(declare-fun m!7657426 () Bool)

(assert (=> b!6964227 m!7657426))

(declare-fun m!7657428 () Bool)

(assert (=> b!6964227 m!7657428))

(assert (=> b!6964227 m!7657422))

(declare-fun m!7657430 () Bool)

(assert (=> b!6964227 m!7657430))

(declare-fun m!7657432 () Bool)

(assert (=> b!6964227 m!7657432))

(declare-fun m!7657434 () Bool)

(assert (=> b!6964222 m!7657434))

(declare-fun m!7657436 () Bool)

(assert (=> b!6964230 m!7657436))

(declare-fun m!7657438 () Bool)

(assert (=> b!6964230 m!7657438))

(declare-fun m!7657440 () Bool)

(assert (=> b!6964230 m!7657440))

(declare-fun m!7657442 () Bool)

(assert (=> b!6964234 m!7657442))

(check-sat (not b!6964233) (not b!6964219) (not b!6964228) (not b!6964218) (not b!6964234) (not b!6964235) (not b!6964221) (not b!6964230) (not b!6964220) (not b!6964231) (not b!6964226) (not b!6964225) (not b!6964224) (not b!6964232) (not b!6964217) (not start!668114) tp_is_empty!43431 (not b!6964222) (not b!6964227))
(check-sat)
