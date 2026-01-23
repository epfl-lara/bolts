; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527362 () Bool)

(assert start!527362)

(declare-fun b!4988861 () Bool)

(declare-fun e!3117913 () Bool)

(assert (=> b!4988861 (= e!3117913 false)))

(declare-datatypes ((C!27688 0))(
  ( (C!27689 (val!23210 Int)) )
))
(declare-datatypes ((Regex!13719 0))(
  ( (ElementMatch!13719 (c!851283 C!27688)) (Concat!22512 (regOne!27950 Regex!13719) (regTwo!27950 Regex!13719)) (EmptyExpr!13719) (Star!13719 (reg!14048 Regex!13719)) (EmptyLang!13719) (Union!13719 (regOne!27951 Regex!13719) (regTwo!27951 Regex!13719)) )
))
(declare-fun lt!2062448 () Regex!13719)

(declare-fun r!15264 () Regex!13719)

(declare-datatypes ((List!57767 0))(
  ( (Nil!57643) (Cons!57643 (h!64091 Regex!13719) (t!370093 List!57767)) )
))
(declare-datatypes ((Context!6288 0))(
  ( (Context!6289 (exprs!3644 List!57767)) )
))
(declare-datatypes ((List!57768 0))(
  ( (Nil!57644) (Cons!57644 (h!64092 Context!6288) (t!370094 List!57768)) )
))
(declare-fun unfocusZipper!252 (List!57768) Regex!13719)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!8010 ((InoxSet Context!6288)) List!57768)

(declare-fun focus!352 (Regex!13719) (InoxSet Context!6288))

(assert (=> b!4988861 (= lt!2062448 (unfocusZipper!252 (toList!8010 (focus!352 r!15264))))))

(declare-fun res!2129724 () Bool)

(assert (=> start!527362 (=> (not res!2129724) (not e!3117913))))

(declare-fun validRegex!6016 (Regex!13719) Bool)

(assert (=> start!527362 (= res!2129724 (validRegex!6016 r!15264))))

(assert (=> start!527362 e!3117913))

(declare-fun e!3117910 () Bool)

(assert (=> start!527362 e!3117910))

(declare-datatypes ((List!57769 0))(
  ( (Nil!57645) (Cons!57645 (h!64093 C!27688) (t!370095 List!57769)) )
))
(declare-datatypes ((IArray!30537 0))(
  ( (IArray!30538 (innerList!15326 List!57769)) )
))
(declare-datatypes ((Conc!15238 0))(
  ( (Node!15238 (left!42187 Conc!15238) (right!42517 Conc!15238) (csize!30706 Int) (cheight!15449 Int)) (Leaf!25306 (xs!18564 IArray!30537) (csize!30707 Int)) (Empty!15238) )
))
(declare-datatypes ((BalanceConc!29906 0))(
  ( (BalanceConc!29907 (c!851284 Conc!15238)) )
))
(declare-fun input!6528 () BalanceConc!29906)

(declare-fun e!3117912 () Bool)

(declare-fun inv!75626 (BalanceConc!29906) Bool)

(assert (=> start!527362 (and (inv!75626 input!6528) e!3117912)))

(declare-fun totalInput!1177 () BalanceConc!29906)

(declare-fun e!3117911 () Bool)

(assert (=> start!527362 (and (inv!75626 totalInput!1177) e!3117911)))

(declare-fun b!4988862 () Bool)

(declare-fun res!2129725 () Bool)

(assert (=> b!4988862 (=> (not res!2129725) (not e!3117913))))

(declare-fun isSuffix!1285 (List!57769 List!57769) Bool)

(declare-fun list!18520 (BalanceConc!29906) List!57769)

(assert (=> b!4988862 (= res!2129725 (isSuffix!1285 (list!18520 input!6528) (list!18520 totalInput!1177)))))

(declare-fun b!4988863 () Bool)

(declare-fun tp_is_empty!36435 () Bool)

(assert (=> b!4988863 (= e!3117910 tp_is_empty!36435)))

(declare-fun b!4988864 () Bool)

(declare-fun tp!1398050 () Bool)

(declare-fun inv!75627 (Conc!15238) Bool)

(assert (=> b!4988864 (= e!3117911 (and (inv!75627 (c!851284 totalInput!1177)) tp!1398050))))

(declare-fun b!4988865 () Bool)

(declare-fun tp!1398056 () Bool)

(declare-fun tp!1398055 () Bool)

(assert (=> b!4988865 (= e!3117910 (and tp!1398056 tp!1398055))))

(declare-fun b!4988866 () Bool)

(declare-fun tp!1398054 () Bool)

(declare-fun tp!1398053 () Bool)

(assert (=> b!4988866 (= e!3117910 (and tp!1398054 tp!1398053))))

(declare-fun b!4988867 () Bool)

(declare-fun tp!1398052 () Bool)

(assert (=> b!4988867 (= e!3117910 tp!1398052)))

(declare-fun b!4988868 () Bool)

(declare-fun tp!1398051 () Bool)

(assert (=> b!4988868 (= e!3117912 (and (inv!75627 (c!851284 input!6528)) tp!1398051))))

(assert (= (and start!527362 res!2129724) b!4988862))

(assert (= (and b!4988862 res!2129725) b!4988861))

(get-info :version)

(assert (= (and start!527362 ((_ is ElementMatch!13719) r!15264)) b!4988863))

(assert (= (and start!527362 ((_ is Concat!22512) r!15264)) b!4988866))

(assert (= (and start!527362 ((_ is Star!13719) r!15264)) b!4988867))

(assert (= (and start!527362 ((_ is Union!13719) r!15264)) b!4988865))

(assert (= start!527362 b!4988868))

(assert (= start!527362 b!4988864))

(declare-fun m!6020824 () Bool)

(assert (=> b!4988862 m!6020824))

(declare-fun m!6020826 () Bool)

(assert (=> b!4988862 m!6020826))

(assert (=> b!4988862 m!6020824))

(assert (=> b!4988862 m!6020826))

(declare-fun m!6020828 () Bool)

(assert (=> b!4988862 m!6020828))

(declare-fun m!6020830 () Bool)

(assert (=> start!527362 m!6020830))

(declare-fun m!6020832 () Bool)

(assert (=> start!527362 m!6020832))

(declare-fun m!6020834 () Bool)

(assert (=> start!527362 m!6020834))

(declare-fun m!6020836 () Bool)

(assert (=> b!4988868 m!6020836))

(declare-fun m!6020838 () Bool)

(assert (=> b!4988864 m!6020838))

(declare-fun m!6020840 () Bool)

(assert (=> b!4988861 m!6020840))

(assert (=> b!4988861 m!6020840))

(declare-fun m!6020842 () Bool)

(assert (=> b!4988861 m!6020842))

(assert (=> b!4988861 m!6020842))

(declare-fun m!6020844 () Bool)

(assert (=> b!4988861 m!6020844))

(check-sat (not start!527362) (not b!4988866) (not b!4988865) (not b!4988862) tp_is_empty!36435 (not b!4988861) (not b!4988868) (not b!4988867) (not b!4988864))
(check-sat)
