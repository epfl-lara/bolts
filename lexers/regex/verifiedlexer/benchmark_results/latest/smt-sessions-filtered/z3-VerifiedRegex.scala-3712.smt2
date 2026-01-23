; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208866 () Bool)

(assert start!208866)

(assert (=> start!208866 true))

(declare-fun bs!445704 () Bool)

(declare-fun b!2152820 () Bool)

(assert (= bs!445704 (and b!2152820 start!208866)))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(declare-fun lambda!81121 () Int)

(declare-fun lambda!81122 () Int)

(assert (=> bs!445704 (= (= res2!7 res1!7) (= lambda!81122 lambda!81121))))

(assert (=> b!2152820 true))

(declare-fun setIsEmpty!17380 () Bool)

(declare-fun setRes!17380 () Bool)

(assert (=> setIsEmpty!17380 setRes!17380))

(declare-fun b!2152819 () Bool)

(declare-fun res!928304 () Bool)

(declare-fun e!1376824 () Bool)

(assert (=> b!2152819 (=> res!928304 e!1376824)))

(declare-datatypes ((C!11928 0))(
  ( (C!11929 (val!6950 Int)) )
))
(declare-datatypes ((List!24842 0))(
  ( (Nil!24758) (Cons!24758 (h!30159 C!11928) (t!197390 List!24842)) )
))
(declare-datatypes ((IArray!16059 0))(
  ( (IArray!16060 (innerList!8087 List!24842)) )
))
(declare-datatypes ((Conc!8027 0))(
  ( (Node!8027 (left!19043 Conc!8027) (right!19373 Conc!8027) (csize!16284 Int) (cheight!8238 Int)) (Leaf!11740 (xs!10969 IArray!16059) (csize!16285 Int)) (Empty!8027) )
))
(declare-datatypes ((Regex!5891 0))(
  ( (ElementMatch!5891 (c!341379 C!11928)) (Concat!10193 (regOne!12294 Regex!5891) (regTwo!12294 Regex!5891)) (EmptyExpr!5891) (Star!5891 (reg!6220 Regex!5891)) (EmptyLang!5891) (Union!5891 (regOne!12295 Regex!5891) (regTwo!12295 Regex!5891)) )
))
(declare-datatypes ((List!24843 0))(
  ( (Nil!24759) (Cons!24759 (h!30160 Regex!5891) (t!197391 List!24843)) )
))
(declare-datatypes ((Context!2922 0))(
  ( (Context!2923 (exprs!1961 List!24843)) )
))
(declare-datatypes ((BalanceConc!15816 0))(
  ( (BalanceConc!15817 (c!341380 Conc!8027)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!316 0))(
  ( (StackFrame!317 (z!5960 (InoxSet Context!2922)) (from!2803 Int) (lastNullablePos!490 Int) (res!928306 Int) (totalInput!3292 BalanceConc!15816)) )
))
(declare-datatypes ((List!24844 0))(
  ( (Nil!24760) (Cons!24760 (h!30161 StackFrame!316) (t!197392 List!24844)) )
))
(declare-fun s!7978 () List!24844)

(assert (=> b!2152819 (= res!928304 (or (not (= (res!928306 (h!30161 s!7978)) res1!7)) (not (= (res!928306 (h!30161 s!7978)) res2!7))))))

(declare-fun e!1376820 () Bool)

(assert (=> b!2152820 (= e!1376820 (not e!1376824))))

(declare-fun res!928305 () Bool)

(assert (=> b!2152820 (=> res!928305 e!1376824)))

(declare-fun forall!5071 (List!24844 Int) Bool)

(assert (=> b!2152820 (= res!928305 (not (forall!5071 (t!197392 s!7978) lambda!81122)))))

(assert (=> b!2152820 (forall!5071 (t!197392 s!7978) lambda!81122)))

(declare-datatypes ((Unit!37902 0))(
  ( (Unit!37903) )
))
(declare-fun lt!801296 () Unit!37902)

(declare-fun lemmaStackPreservesForEqualRes!41 (List!24844 Int Int) Unit!37902)

(assert (=> b!2152820 (= lt!801296 (lemmaStackPreservesForEqualRes!41 (t!197392 s!7978) res1!7 res2!7))))

(declare-fun lt!801295 () Unit!37902)

(declare-fun lemmaInv!805 (StackFrame!316) Unit!37902)

(assert (=> b!2152820 (= lt!801295 (lemmaInv!805 (h!30161 s!7978)))))

(declare-fun b!2152821 () Bool)

(assert (=> b!2152821 (= e!1376824 (forall!5071 s!7978 lambda!81122))))

(declare-fun b!2152822 () Bool)

(declare-fun e!1376819 () Bool)

(declare-fun tp!669340 () Bool)

(declare-fun inv!32689 (Conc!8027) Bool)

(assert (=> b!2152822 (= e!1376819 (and (inv!32689 (c!341380 (totalInput!3292 (h!30161 s!7978)))) tp!669340))))

(declare-fun res!928303 () Bool)

(assert (=> start!208866 (=> (not res!928303) (not e!1376820))))

(assert (=> start!208866 (= res!928303 (forall!5071 s!7978 lambda!81121))))

(assert (=> start!208866 e!1376820))

(declare-fun e!1376821 () Bool)

(assert (=> start!208866 e!1376821))

(assert (=> start!208866 true))

(declare-fun e!1376823 () Bool)

(declare-fun tp!669339 () Bool)

(declare-fun setNonEmpty!17380 () Bool)

(declare-fun setElem!17380 () Context!2922)

(declare-fun inv!32690 (Context!2922) Bool)

(assert (=> setNonEmpty!17380 (= setRes!17380 (and tp!669339 (inv!32690 setElem!17380) e!1376823))))

(declare-fun setRest!17380 () (InoxSet Context!2922))

(assert (=> setNonEmpty!17380 (= (z!5960 (h!30161 s!7978)) ((_ map or) (store ((as const (Array Context!2922 Bool)) false) setElem!17380 true) setRest!17380))))

(declare-fun b!2152823 () Bool)

(declare-fun res!928302 () Bool)

(assert (=> b!2152823 (=> (not res!928302) (not e!1376820))))

(get-info :version)

(assert (=> b!2152823 (= res!928302 (and (= res1!7 res2!7) (not ((_ is Nil!24760) s!7978))))))

(declare-fun b!2152824 () Bool)

(declare-fun tp!669338 () Bool)

(assert (=> b!2152824 (= e!1376823 tp!669338)))

(declare-fun e!1376822 () Bool)

(declare-fun b!2152825 () Bool)

(declare-fun tp!669341 () Bool)

(declare-fun inv!32691 (StackFrame!316) Bool)

(assert (=> b!2152825 (= e!1376821 (and (inv!32691 (h!30161 s!7978)) e!1376822 tp!669341))))

(declare-fun b!2152826 () Bool)

(declare-fun inv!32692 (BalanceConc!15816) Bool)

(assert (=> b!2152826 (= e!1376822 (and setRes!17380 (inv!32692 (totalInput!3292 (h!30161 s!7978))) e!1376819))))

(declare-fun condSetEmpty!17380 () Bool)

(assert (=> b!2152826 (= condSetEmpty!17380 (= (z!5960 (h!30161 s!7978)) ((as const (Array Context!2922 Bool)) false)))))

(assert (= (and start!208866 res!928303) b!2152823))

(assert (= (and b!2152823 res!928302) b!2152820))

(assert (= (and b!2152820 (not res!928305)) b!2152819))

(assert (= (and b!2152819 (not res!928304)) b!2152821))

(assert (= (and b!2152826 condSetEmpty!17380) setIsEmpty!17380))

(assert (= (and b!2152826 (not condSetEmpty!17380)) setNonEmpty!17380))

(assert (= setNonEmpty!17380 b!2152824))

(assert (= b!2152826 b!2152822))

(assert (= b!2152825 b!2152826))

(assert (= (and start!208866 ((_ is Cons!24760) s!7978)) b!2152825))

(declare-fun m!2594820 () Bool)

(assert (=> b!2152820 m!2594820))

(assert (=> b!2152820 m!2594820))

(declare-fun m!2594822 () Bool)

(assert (=> b!2152820 m!2594822))

(declare-fun m!2594824 () Bool)

(assert (=> b!2152820 m!2594824))

(declare-fun m!2594826 () Bool)

(assert (=> b!2152821 m!2594826))

(declare-fun m!2594828 () Bool)

(assert (=> setNonEmpty!17380 m!2594828))

(declare-fun m!2594830 () Bool)

(assert (=> b!2152825 m!2594830))

(declare-fun m!2594832 () Bool)

(assert (=> start!208866 m!2594832))

(declare-fun m!2594834 () Bool)

(assert (=> b!2152826 m!2594834))

(declare-fun m!2594836 () Bool)

(assert (=> b!2152822 m!2594836))

(check-sat (not b!2152825) (not b!2152826) (not b!2152822) (not b!2152824) (not b!2152820) (not b!2152821) (not setNonEmpty!17380) (not start!208866))
(check-sat)
