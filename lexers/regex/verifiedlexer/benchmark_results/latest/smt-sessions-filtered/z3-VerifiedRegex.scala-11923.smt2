; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668026 () Bool)

(assert start!668026)

(declare-fun b!6962785 () Bool)

(declare-fun e!4186213 () Bool)

(declare-fun tp!1919974 () Bool)

(declare-fun tp!1919976 () Bool)

(assert (=> b!6962785 (= e!4186213 (and tp!1919974 tp!1919976))))

(declare-fun b!6962786 () Bool)

(declare-fun tp_is_empty!43411 () Bool)

(assert (=> b!6962786 (= e!4186213 tp_is_empty!43411)))

(declare-fun b!6962788 () Bool)

(declare-fun res!2840893 () Bool)

(declare-fun e!4186211 () Bool)

(assert (=> b!6962788 (=> res!2840893 e!4186211)))

(declare-datatypes ((C!34456 0))(
  ( (C!34457 (val!26930 Int)) )
))
(declare-datatypes ((Regex!17093 0))(
  ( (ElementMatch!17093 (c!1291025 C!34456)) (Concat!25938 (regOne!34698 Regex!17093) (regTwo!34698 Regex!17093)) (EmptyExpr!17093) (Star!17093 (reg!17422 Regex!17093)) (EmptyLang!17093) (Union!17093 (regOne!34699 Regex!17093) (regTwo!34699 Regex!17093)) )
))
(declare-datatypes ((List!66871 0))(
  ( (Nil!66747) (Cons!66747 (h!73195 Regex!17093) (t!380614 List!66871)) )
))
(declare-fun l!9142 () List!66871)

(declare-fun isEmpty!38964 (List!66871) Bool)

(declare-fun tail!13045 (List!66871) List!66871)

(assert (=> b!6962788 (= res!2840893 (isEmpty!38964 (tail!13045 l!9142)))))

(declare-fun b!6962789 () Bool)

(declare-fun e!4186209 () Bool)

(declare-fun r!13765 () Regex!17093)

(declare-datatypes ((List!66872 0))(
  ( (Nil!66748) (Cons!66748 (h!73196 C!34456) (t!380615 List!66872)) )
))
(declare-fun s!9351 () List!66872)

(declare-fun matchRSpec!4114 (Regex!17093 List!66872) Bool)

(assert (=> b!6962789 (= e!4186209 (matchRSpec!4114 (regTwo!34699 r!13765) s!9351))))

(declare-fun b!6962790 () Bool)

(declare-fun tp!1919977 () Bool)

(declare-fun tp!1919973 () Bool)

(assert (=> b!6962790 (= e!4186213 (and tp!1919977 tp!1919973))))

(declare-fun b!6962791 () Bool)

(declare-fun e!4186210 () Bool)

(assert (=> b!6962791 (= e!4186211 e!4186210)))

(declare-fun res!2840888 () Bool)

(assert (=> b!6962791 (=> res!2840888 e!4186210)))

(declare-fun lt!2479012 () Bool)

(assert (=> b!6962791 (= res!2840888 (not (= lt!2479012 e!4186209)))))

(declare-fun res!2840892 () Bool)

(assert (=> b!6962791 (=> res!2840892 e!4186209)))

(declare-fun lt!2479010 () Bool)

(assert (=> b!6962791 (= res!2840892 lt!2479010)))

(assert (=> b!6962791 (= lt!2479010 (matchRSpec!4114 (regOne!34699 r!13765) s!9351))))

(declare-fun b!6962792 () Bool)

(declare-fun e!4186208 () Bool)

(declare-fun tp!1919979 () Bool)

(declare-fun tp!1919972 () Bool)

(assert (=> b!6962792 (= e!4186208 (and tp!1919979 tp!1919972))))

(declare-fun b!6962793 () Bool)

(declare-fun res!2840894 () Bool)

(declare-fun e!4186214 () Bool)

(assert (=> b!6962793 (=> (not res!2840894) (not e!4186214))))

(declare-fun generalisedUnion!2568 (List!66871) Regex!17093)

(assert (=> b!6962793 (= res!2840894 (= r!13765 (generalisedUnion!2568 l!9142)))))

(declare-fun b!6962794 () Bool)

(assert (=> b!6962794 (= e!4186210 true)))

(declare-fun matchR!9199 (Regex!17093 List!66872) Bool)

(assert (=> b!6962794 (= (matchR!9199 (regOne!34699 r!13765) s!9351) lt!2479010)))

(declare-datatypes ((Unit!160846 0))(
  ( (Unit!160847) )
))
(declare-fun lt!2479013 () Unit!160846)

(declare-fun mainMatchTheorem!4108 (Regex!17093 List!66872) Unit!160846)

(assert (=> b!6962794 (= lt!2479013 (mainMatchTheorem!4108 (regOne!34699 r!13765) s!9351))))

(declare-fun res!2840891 () Bool)

(assert (=> start!668026 (=> (not res!2840891) (not e!4186214))))

(declare-fun lambda!397248 () Int)

(declare-fun forall!15964 (List!66871 Int) Bool)

(assert (=> start!668026 (= res!2840891 (forall!15964 l!9142 lambda!397248))))

(assert (=> start!668026 e!4186214))

(assert (=> start!668026 e!4186208))

(assert (=> start!668026 e!4186213))

(declare-fun e!4186212 () Bool)

(assert (=> start!668026 e!4186212))

(declare-fun b!6962787 () Bool)

(declare-fun res!2840889 () Bool)

(assert (=> b!6962787 (=> res!2840889 e!4186211)))

(assert (=> b!6962787 (= res!2840889 (isEmpty!38964 l!9142))))

(declare-fun b!6962795 () Bool)

(declare-fun tp!1919978 () Bool)

(assert (=> b!6962795 (= e!4186213 tp!1919978)))

(declare-fun b!6962796 () Bool)

(assert (=> b!6962796 (= e!4186214 (not e!4186211))))

(declare-fun res!2840890 () Bool)

(assert (=> b!6962796 (=> res!2840890 e!4186211)))

(get-info :version)

(assert (=> b!6962796 (= res!2840890 (not ((_ is Union!17093) r!13765)))))

(assert (=> b!6962796 (= lt!2479012 (matchRSpec!4114 r!13765 s!9351))))

(assert (=> b!6962796 (= lt!2479012 (matchR!9199 r!13765 s!9351))))

(declare-fun lt!2479011 () Unit!160846)

(assert (=> b!6962796 (= lt!2479011 (mainMatchTheorem!4108 r!13765 s!9351))))

(declare-fun b!6962797 () Bool)

(declare-fun tp!1919975 () Bool)

(assert (=> b!6962797 (= e!4186212 (and tp_is_empty!43411 tp!1919975))))

(assert (= (and start!668026 res!2840891) b!6962793))

(assert (= (and b!6962793 res!2840894) b!6962796))

(assert (= (and b!6962796 (not res!2840890)) b!6962787))

(assert (= (and b!6962787 (not res!2840889)) b!6962788))

(assert (= (and b!6962788 (not res!2840893)) b!6962791))

(assert (= (and b!6962791 (not res!2840892)) b!6962789))

(assert (= (and b!6962791 (not res!2840888)) b!6962794))

(assert (= (and start!668026 ((_ is Cons!66747) l!9142)) b!6962792))

(assert (= (and start!668026 ((_ is ElementMatch!17093) r!13765)) b!6962786))

(assert (= (and start!668026 ((_ is Concat!25938) r!13765)) b!6962790))

(assert (= (and start!668026 ((_ is Star!17093) r!13765)) b!6962795))

(assert (= (and start!668026 ((_ is Union!17093) r!13765)) b!6962785))

(assert (= (and start!668026 ((_ is Cons!66748) s!9351)) b!6962797))

(declare-fun m!7656724 () Bool)

(assert (=> b!6962789 m!7656724))

(declare-fun m!7656726 () Bool)

(assert (=> b!6962788 m!7656726))

(assert (=> b!6962788 m!7656726))

(declare-fun m!7656728 () Bool)

(assert (=> b!6962788 m!7656728))

(declare-fun m!7656730 () Bool)

(assert (=> b!6962796 m!7656730))

(declare-fun m!7656732 () Bool)

(assert (=> b!6962796 m!7656732))

(declare-fun m!7656734 () Bool)

(assert (=> b!6962796 m!7656734))

(declare-fun m!7656736 () Bool)

(assert (=> b!6962791 m!7656736))

(declare-fun m!7656738 () Bool)

(assert (=> b!6962787 m!7656738))

(declare-fun m!7656740 () Bool)

(assert (=> b!6962793 m!7656740))

(declare-fun m!7656742 () Bool)

(assert (=> start!668026 m!7656742))

(declare-fun m!7656744 () Bool)

(assert (=> b!6962794 m!7656744))

(declare-fun m!7656746 () Bool)

(assert (=> b!6962794 m!7656746))

(check-sat (not b!6962787) (not b!6962793) (not start!668026) (not b!6962794) tp_is_empty!43411 (not b!6962797) (not b!6962796) (not b!6962791) (not b!6962790) (not b!6962792) (not b!6962789) (not b!6962785) (not b!6962795) (not b!6962788))
(check-sat)
