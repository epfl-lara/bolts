; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239314 () Bool)

(assert start!239314)

(declare-fun b!2451224 () Bool)

(declare-fun res!1039522 () Bool)

(declare-fun e!1555812 () Bool)

(assert (=> b!2451224 (=> res!1039522 e!1555812)))

(declare-datatypes ((C!14568 0))(
  ( (C!14569 (val!8526 Int)) )
))
(declare-datatypes ((Regex!7205 0))(
  ( (ElementMatch!7205 (c!391149 C!14568)) (Concat!11841 (regOne!14922 Regex!7205) (regTwo!14922 Regex!7205)) (EmptyExpr!7205) (Star!7205 (reg!7534 Regex!7205)) (EmptyLang!7205) (Union!7205 (regOne!14923 Regex!7205) (regTwo!14923 Regex!7205)) )
))
(declare-datatypes ((List!28646 0))(
  ( (Nil!28548) (Cons!28548 (h!33949 Regex!7205) (t!208623 List!28646)) )
))
(declare-fun l!9164 () List!28646)

(declare-datatypes ((List!28647 0))(
  ( (Nil!28549) (Cons!28549 (h!33950 C!14568) (t!208624 List!28647)) )
))
(declare-fun s!9460 () List!28647)

(declare-fun matchR!3320 (Regex!7205 List!28647) Bool)

(declare-fun head!5575 (List!28646) Regex!7205)

(assert (=> b!2451224 (= res!1039522 (not (matchR!3320 (head!5575 l!9164) s!9460)))))

(declare-fun b!2451225 () Bool)

(declare-fun e!1555816 () Bool)

(declare-fun tp_is_empty!11823 () Bool)

(assert (=> b!2451225 (= e!1555816 tp_is_empty!11823)))

(declare-fun b!2451226 () Bool)

(declare-fun tp!779653 () Bool)

(declare-fun tp!779651 () Bool)

(assert (=> b!2451226 (= e!1555816 (and tp!779653 tp!779651))))

(declare-fun b!2451227 () Bool)

(declare-fun e!1555814 () Bool)

(declare-fun e!1555811 () Bool)

(assert (=> b!2451227 (= e!1555814 (not e!1555811))))

(declare-fun res!1039525 () Bool)

(assert (=> b!2451227 (=> res!1039525 e!1555811)))

(declare-fun r!13927 () Regex!7205)

(get-info :version)

(assert (=> b!2451227 (= res!1039525 (or ((_ is Concat!11841) r!13927) ((_ is EmptyExpr!7205) r!13927)))))

(declare-fun matchRSpec!1052 (Regex!7205 List!28647) Bool)

(assert (=> b!2451227 (= (matchR!3320 r!13927 s!9460) (matchRSpec!1052 r!13927 s!9460))))

(declare-datatypes ((Unit!41865 0))(
  ( (Unit!41866) )
))
(declare-fun lt!879763 () Unit!41865)

(declare-fun mainMatchTheorem!1052 (Regex!7205 List!28647) Unit!41865)

(assert (=> b!2451227 (= lt!879763 (mainMatchTheorem!1052 r!13927 s!9460))))

(declare-fun b!2451228 () Bool)

(declare-fun e!1555813 () Bool)

(declare-fun tp!779655 () Bool)

(assert (=> b!2451228 (= e!1555813 (and tp_is_empty!11823 tp!779655))))

(declare-fun res!1039523 () Bool)

(assert (=> start!239314 (=> (not res!1039523) (not e!1555814))))

(declare-fun lambda!92843 () Int)

(declare-fun forall!5839 (List!28646 Int) Bool)

(assert (=> start!239314 (= res!1039523 (forall!5839 l!9164 lambda!92843))))

(assert (=> start!239314 e!1555814))

(declare-fun e!1555815 () Bool)

(assert (=> start!239314 e!1555815))

(assert (=> start!239314 e!1555816))

(assert (=> start!239314 e!1555813))

(declare-fun b!2451229 () Bool)

(declare-fun tp!779650 () Bool)

(declare-fun tp!779654 () Bool)

(assert (=> b!2451229 (= e!1555816 (and tp!779650 tp!779654))))

(declare-fun b!2451230 () Bool)

(declare-fun tp!779648 () Bool)

(declare-fun tp!779649 () Bool)

(assert (=> b!2451230 (= e!1555815 (and tp!779648 tp!779649))))

(declare-fun b!2451231 () Bool)

(declare-fun tp!779652 () Bool)

(assert (=> b!2451231 (= e!1555816 tp!779652)))

(declare-fun b!2451232 () Bool)

(declare-fun res!1039526 () Bool)

(assert (=> b!2451232 (=> res!1039526 e!1555812)))

(declare-fun lt!879764 () List!28646)

(declare-fun generalisedConcat!306 (List!28646) Regex!7205)

(assert (=> b!2451232 (= res!1039526 (not (= (generalisedConcat!306 lt!879764) EmptyExpr!7205)))))

(declare-fun b!2451233 () Bool)

(declare-fun res!1039524 () Bool)

(assert (=> b!2451233 (=> res!1039524 e!1555811)))

(declare-fun isEmpty!16582 (List!28646) Bool)

(assert (=> b!2451233 (= res!1039524 (isEmpty!16582 l!9164))))

(declare-fun b!2451234 () Bool)

(assert (=> b!2451234 (= e!1555812 true)))

(declare-fun b!2451235 () Bool)

(declare-fun res!1039520 () Bool)

(assert (=> b!2451235 (=> (not res!1039520) (not e!1555814))))

(assert (=> b!2451235 (= res!1039520 (= r!13927 (generalisedConcat!306 l!9164)))))

(declare-fun b!2451236 () Bool)

(assert (=> b!2451236 (= e!1555811 e!1555812)))

(declare-fun res!1039521 () Bool)

(assert (=> b!2451236 (=> res!1039521 e!1555812)))

(assert (=> b!2451236 (= res!1039521 (not (isEmpty!16582 lt!879764)))))

(declare-fun tail!3848 (List!28646) List!28646)

(assert (=> b!2451236 (= lt!879764 (tail!3848 l!9164))))

(assert (= (and start!239314 res!1039523) b!2451235))

(assert (= (and b!2451235 res!1039520) b!2451227))

(assert (= (and b!2451227 (not res!1039525)) b!2451233))

(assert (= (and b!2451233 (not res!1039524)) b!2451236))

(assert (= (and b!2451236 (not res!1039521)) b!2451232))

(assert (= (and b!2451232 (not res!1039526)) b!2451224))

(assert (= (and b!2451224 (not res!1039522)) b!2451234))

(assert (= (and start!239314 ((_ is Cons!28548) l!9164)) b!2451230))

(assert (= (and start!239314 ((_ is ElementMatch!7205) r!13927)) b!2451225))

(assert (= (and start!239314 ((_ is Concat!11841) r!13927)) b!2451229))

(assert (= (and start!239314 ((_ is Star!7205) r!13927)) b!2451231))

(assert (= (and start!239314 ((_ is Union!7205) r!13927)) b!2451226))

(assert (= (and start!239314 ((_ is Cons!28549) s!9460)) b!2451228))

(declare-fun m!2824769 () Bool)

(assert (=> b!2451233 m!2824769))

(declare-fun m!2824771 () Bool)

(assert (=> b!2451227 m!2824771))

(declare-fun m!2824773 () Bool)

(assert (=> b!2451227 m!2824773))

(declare-fun m!2824775 () Bool)

(assert (=> b!2451227 m!2824775))

(declare-fun m!2824777 () Bool)

(assert (=> b!2451235 m!2824777))

(declare-fun m!2824779 () Bool)

(assert (=> b!2451232 m!2824779))

(declare-fun m!2824781 () Bool)

(assert (=> b!2451224 m!2824781))

(assert (=> b!2451224 m!2824781))

(declare-fun m!2824783 () Bool)

(assert (=> b!2451224 m!2824783))

(declare-fun m!2824785 () Bool)

(assert (=> start!239314 m!2824785))

(declare-fun m!2824787 () Bool)

(assert (=> b!2451236 m!2824787))

(declare-fun m!2824789 () Bool)

(assert (=> b!2451236 m!2824789))

(check-sat (not b!2451226) tp_is_empty!11823 (not b!2451227) (not b!2451231) (not b!2451232) (not b!2451236) (not start!239314) (not b!2451230) (not b!2451235) (not b!2451228) (not b!2451224) (not b!2451229) (not b!2451233))
(check-sat)
