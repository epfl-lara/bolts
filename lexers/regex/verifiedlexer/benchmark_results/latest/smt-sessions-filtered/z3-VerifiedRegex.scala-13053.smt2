; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715064 () Bool)

(assert start!715064)

(declare-fun b!7325865 () Bool)

(declare-fun e!4386538 () Bool)

(declare-fun e!4386545 () Bool)

(assert (=> b!7325865 (= e!4386538 e!4386545)))

(declare-fun res!2961047 () Bool)

(assert (=> b!7325865 (=> (not res!2961047) (not e!4386545))))

(declare-datatypes ((C!38264 0))(
  ( (C!38265 (val!29492 Int)) )
))
(declare-datatypes ((Regex!18995 0))(
  ( (ElementMatch!18995 (c!1359782 C!38264)) (Concat!27840 (regOne!38502 Regex!18995) (regTwo!38502 Regex!18995)) (EmptyExpr!18995) (Star!18995 (reg!19324 Regex!18995)) (EmptyLang!18995) (Union!18995 (regOne!38503 Regex!18995) (regTwo!38503 Regex!18995)) )
))
(declare-datatypes ((List!71491 0))(
  ( (Nil!71367) (Cons!71367 (h!77815 Regex!18995) (t!385876 List!71491)) )
))
(declare-datatypes ((Context!15870 0))(
  ( (Context!15871 (exprs!8435 List!71491)) )
))
(declare-fun ct1!256 () Context!15870)

(declare-fun nullable!8099 (Regex!18995) Bool)

(assert (=> b!7325865 (= res!2961047 (nullable!8099 (h!77815 (exprs!8435 ct1!256))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2606107 () (InoxSet Context!15870))

(declare-fun c!10305 () C!38264)

(declare-fun lt!2606115 () Context!15870)

(declare-fun derivationStepZipperDown!2826 (Regex!18995 Context!15870 C!38264) (InoxSet Context!15870))

(assert (=> b!7325865 (= lt!2606107 (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) lt!2606115 c!10305))))

(declare-fun lt!2606113 () List!71491)

(assert (=> b!7325865 (= lt!2606115 (Context!15871 lt!2606113))))

(declare-fun tail!14684 (List!71491) List!71491)

(assert (=> b!7325865 (= lt!2606113 (tail!14684 (exprs!8435 ct1!256)))))

(declare-fun b!7325866 () Bool)

(declare-fun e!4386539 () Bool)

(assert (=> b!7325866 (= e!4386545 e!4386539)))

(declare-fun res!2961050 () Bool)

(assert (=> b!7325866 (=> (not res!2961050) (not e!4386539))))

(declare-fun cWitness!35 () Context!15870)

(declare-fun lt!2606108 () (InoxSet Context!15870))

(declare-fun lt!2606110 () (InoxSet Context!15870))

(assert (=> b!7325866 (= res!2961050 (and (= lt!2606108 ((_ map or) lt!2606107 lt!2606110)) (or (select lt!2606107 cWitness!35) (select lt!2606110 cWitness!35)) (not (select lt!2606110 cWitness!35))))))

(declare-fun derivationStepZipperUp!2675 (Context!15870 C!38264) (InoxSet Context!15870))

(assert (=> b!7325866 (= lt!2606110 (derivationStepZipperUp!2675 lt!2606115 c!10305))))

(declare-fun b!7325867 () Bool)

(declare-fun e!4386541 () Bool)

(assert (=> b!7325867 (= e!4386541 e!4386538)))

(declare-fun res!2961045 () Bool)

(assert (=> b!7325867 (=> (not res!2961045) (not e!4386538))))

(get-info :version)

(assert (=> b!7325867 (= res!2961045 ((_ is Cons!71367) (exprs!8435 ct1!256)))))

(declare-fun lt!2606104 () List!71491)

(declare-fun ct2!352 () Context!15870)

(declare-fun ++!16819 (List!71491 List!71491) List!71491)

(assert (=> b!7325867 (= lt!2606104 (++!16819 (exprs!8435 ct1!256) (exprs!8435 ct2!352)))))

(declare-fun lambda!454046 () Int)

(declare-datatypes ((Unit!164955 0))(
  ( (Unit!164956) )
))
(declare-fun lt!2606109 () Unit!164955)

(declare-fun lemmaConcatPreservesForall!1676 (List!71491 List!71491 Int) Unit!164955)

(assert (=> b!7325867 (= lt!2606109 (lemmaConcatPreservesForall!1676 (exprs!8435 ct1!256) (exprs!8435 ct2!352) lambda!454046))))

(declare-fun b!7325868 () Bool)

(declare-fun e!4386540 () Bool)

(declare-fun tp!2080494 () Bool)

(assert (=> b!7325868 (= e!4386540 tp!2080494)))

(declare-fun res!2961048 () Bool)

(assert (=> start!715064 (=> (not res!2961048) (not e!4386541))))

(assert (=> start!715064 (= res!2961048 (select lt!2606108 cWitness!35))))

(assert (=> start!715064 (= lt!2606108 (derivationStepZipperUp!2675 ct1!256 c!10305))))

(assert (=> start!715064 e!4386541))

(declare-fun tp_is_empty!48235 () Bool)

(assert (=> start!715064 tp_is_empty!48235))

(declare-fun e!4386542 () Bool)

(declare-fun inv!90827 (Context!15870) Bool)

(assert (=> start!715064 (and (inv!90827 cWitness!35) e!4386542)))

(assert (=> start!715064 (and (inv!90827 ct1!256) e!4386540)))

(declare-fun e!4386543 () Bool)

(assert (=> start!715064 (and (inv!90827 ct2!352) e!4386543)))

(declare-fun b!7325869 () Bool)

(declare-fun e!4386544 () Bool)

(declare-fun forall!17847 (List!71491 Int) Bool)

(assert (=> b!7325869 (= e!4386544 (forall!17847 (exprs!8435 ct2!352) lambda!454046))))

(declare-fun b!7325870 () Bool)

(declare-fun e!4386537 () Bool)

(assert (=> b!7325870 (= e!4386539 (not e!4386537))))

(declare-fun res!2961044 () Bool)

(assert (=> b!7325870 (=> res!2961044 e!4386537)))

(declare-fun lt!2606105 () Context!15870)

(declare-fun lt!2606116 () (InoxSet Context!15870))

(assert (=> b!7325870 (= res!2961044 (not (select lt!2606116 lt!2606105)))))

(declare-fun lt!2606114 () Unit!164955)

(assert (=> b!7325870 (= lt!2606114 (lemmaConcatPreservesForall!1676 (exprs!8435 cWitness!35) (exprs!8435 ct2!352) lambda!454046))))

(assert (=> b!7325870 (select (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) (Context!15871 (++!16819 lt!2606113 (exprs!8435 ct2!352))) c!10305) lt!2606105)))

(assert (=> b!7325870 (= lt!2606105 (Context!15871 (++!16819 (exprs!8435 cWitness!35) (exprs!8435 ct2!352))))))

(declare-fun lt!2606112 () Unit!164955)

(assert (=> b!7325870 (= lt!2606112 (lemmaConcatPreservesForall!1676 lt!2606113 (exprs!8435 ct2!352) lambda!454046))))

(declare-fun lt!2606111 () Unit!164955)

(assert (=> b!7325870 (= lt!2606111 (lemmaConcatPreservesForall!1676 (exprs!8435 cWitness!35) (exprs!8435 ct2!352) lambda!454046))))

(declare-fun lt!2606106 () Unit!164955)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!8 (Regex!18995 Context!15870 Context!15870 Context!15870 C!38264) Unit!164955)

(assert (=> b!7325870 (= lt!2606106 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!8 (h!77815 (exprs!8435 ct1!256)) lt!2606115 ct2!352 cWitness!35 c!10305))))

(assert (=> b!7325870 (= lt!2606116 (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) (Context!15871 (tail!14684 lt!2606104)) c!10305))))

(declare-fun b!7325871 () Bool)

(declare-fun res!2961049 () Bool)

(assert (=> b!7325871 (=> (not res!2961049) (not e!4386538))))

(declare-fun isEmpty!40913 (List!71491) Bool)

(assert (=> b!7325871 (= res!2961049 (not (isEmpty!40913 (exprs!8435 ct1!256))))))

(declare-fun b!7325872 () Bool)

(declare-fun res!2961046 () Bool)

(assert (=> b!7325872 (=> (not res!2961046) (not e!4386539))))

(assert (=> b!7325872 (= res!2961046 (not (isEmpty!40913 lt!2606104)))))

(declare-fun b!7325873 () Bool)

(assert (=> b!7325873 (= e!4386537 e!4386544)))

(declare-fun res!2961043 () Bool)

(assert (=> b!7325873 (=> res!2961043 e!4386544)))

(assert (=> b!7325873 (= res!2961043 (not (forall!17847 (exprs!8435 cWitness!35) lambda!454046)))))

(declare-fun b!7325874 () Bool)

(declare-fun tp!2080493 () Bool)

(assert (=> b!7325874 (= e!4386543 tp!2080493)))

(declare-fun b!7325875 () Bool)

(declare-fun tp!2080495 () Bool)

(assert (=> b!7325875 (= e!4386542 tp!2080495)))

(assert (= (and start!715064 res!2961048) b!7325867))

(assert (= (and b!7325867 res!2961045) b!7325871))

(assert (= (and b!7325871 res!2961049) b!7325865))

(assert (= (and b!7325865 res!2961047) b!7325866))

(assert (= (and b!7325866 res!2961050) b!7325872))

(assert (= (and b!7325872 res!2961046) b!7325870))

(assert (= (and b!7325870 (not res!2961044)) b!7325873))

(assert (= (and b!7325873 (not res!2961043)) b!7325869))

(assert (= start!715064 b!7325875))

(assert (= start!715064 b!7325868))

(assert (= start!715064 b!7325874))

(declare-fun m!7991712 () Bool)

(assert (=> b!7325867 m!7991712))

(declare-fun m!7991714 () Bool)

(assert (=> b!7325867 m!7991714))

(declare-fun m!7991716 () Bool)

(assert (=> b!7325872 m!7991716))

(declare-fun m!7991718 () Bool)

(assert (=> b!7325869 m!7991718))

(declare-fun m!7991720 () Bool)

(assert (=> b!7325865 m!7991720))

(declare-fun m!7991722 () Bool)

(assert (=> b!7325865 m!7991722))

(declare-fun m!7991724 () Bool)

(assert (=> b!7325865 m!7991724))

(declare-fun m!7991726 () Bool)

(assert (=> b!7325871 m!7991726))

(declare-fun m!7991728 () Bool)

(assert (=> b!7325873 m!7991728))

(declare-fun m!7991730 () Bool)

(assert (=> start!715064 m!7991730))

(declare-fun m!7991732 () Bool)

(assert (=> start!715064 m!7991732))

(declare-fun m!7991734 () Bool)

(assert (=> start!715064 m!7991734))

(declare-fun m!7991736 () Bool)

(assert (=> start!715064 m!7991736))

(declare-fun m!7991738 () Bool)

(assert (=> start!715064 m!7991738))

(declare-fun m!7991740 () Bool)

(assert (=> b!7325870 m!7991740))

(declare-fun m!7991742 () Bool)

(assert (=> b!7325870 m!7991742))

(declare-fun m!7991744 () Bool)

(assert (=> b!7325870 m!7991744))

(declare-fun m!7991746 () Bool)

(assert (=> b!7325870 m!7991746))

(declare-fun m!7991748 () Bool)

(assert (=> b!7325870 m!7991748))

(declare-fun m!7991750 () Bool)

(assert (=> b!7325870 m!7991750))

(declare-fun m!7991752 () Bool)

(assert (=> b!7325870 m!7991752))

(declare-fun m!7991754 () Bool)

(assert (=> b!7325870 m!7991754))

(assert (=> b!7325870 m!7991746))

(declare-fun m!7991756 () Bool)

(assert (=> b!7325870 m!7991756))

(declare-fun m!7991758 () Bool)

(assert (=> b!7325870 m!7991758))

(declare-fun m!7991760 () Bool)

(assert (=> b!7325866 m!7991760))

(declare-fun m!7991762 () Bool)

(assert (=> b!7325866 m!7991762))

(declare-fun m!7991764 () Bool)

(assert (=> b!7325866 m!7991764))

(check-sat (not b!7325874) (not b!7325872) (not b!7325869) (not b!7325866) (not b!7325870) (not start!715064) (not b!7325867) (not b!7325875) tp_is_empty!48235 (not b!7325868) (not b!7325865) (not b!7325873) (not b!7325871))
(check-sat)
(get-model)

(declare-fun b!7325886 () Bool)

(declare-fun e!4386554 () (InoxSet Context!15870))

(declare-fun call!666662 () (InoxSet Context!15870))

(assert (=> b!7325886 (= e!4386554 call!666662)))

(declare-fun b!7325887 () Bool)

(assert (=> b!7325887 (= e!4386554 ((as const (Array Context!15870 Bool)) false))))

(declare-fun bm!666657 () Bool)

(assert (=> bm!666657 (= call!666662 (derivationStepZipperDown!2826 (h!77815 (exprs!8435 lt!2606115)) (Context!15871 (t!385876 (exprs!8435 lt!2606115))) c!10305))))

(declare-fun b!7325888 () Bool)

(declare-fun e!4386552 () (InoxSet Context!15870))

(assert (=> b!7325888 (= e!4386552 e!4386554)))

(declare-fun c!1359787 () Bool)

(assert (=> b!7325888 (= c!1359787 ((_ is Cons!71367) (exprs!8435 lt!2606115)))))

(declare-fun b!7325889 () Bool)

(assert (=> b!7325889 (= e!4386552 ((_ map or) call!666662 (derivationStepZipperUp!2675 (Context!15871 (t!385876 (exprs!8435 lt!2606115))) c!10305)))))

(declare-fun d!2274978 () Bool)

(declare-fun c!1359788 () Bool)

(declare-fun e!4386553 () Bool)

(assert (=> d!2274978 (= c!1359788 e!4386553)))

(declare-fun res!2961053 () Bool)

(assert (=> d!2274978 (=> (not res!2961053) (not e!4386553))))

(assert (=> d!2274978 (= res!2961053 ((_ is Cons!71367) (exprs!8435 lt!2606115)))))

(assert (=> d!2274978 (= (derivationStepZipperUp!2675 lt!2606115 c!10305) e!4386552)))

(declare-fun b!7325890 () Bool)

(assert (=> b!7325890 (= e!4386553 (nullable!8099 (h!77815 (exprs!8435 lt!2606115))))))

(assert (= (and d!2274978 res!2961053) b!7325890))

(assert (= (and d!2274978 c!1359788) b!7325889))

(assert (= (and d!2274978 (not c!1359788)) b!7325888))

(assert (= (and b!7325888 c!1359787) b!7325886))

(assert (= (and b!7325888 (not c!1359787)) b!7325887))

(assert (= (or b!7325889 b!7325886) bm!666657))

(declare-fun m!7991766 () Bool)

(assert (=> bm!666657 m!7991766))

(declare-fun m!7991768 () Bool)

(assert (=> b!7325889 m!7991768))

(declare-fun m!7991770 () Bool)

(assert (=> b!7325890 m!7991770))

(assert (=> b!7325866 d!2274978))

(declare-fun b!7325891 () Bool)

(declare-fun e!4386557 () (InoxSet Context!15870))

(declare-fun call!666663 () (InoxSet Context!15870))

(assert (=> b!7325891 (= e!4386557 call!666663)))

(declare-fun b!7325892 () Bool)

(assert (=> b!7325892 (= e!4386557 ((as const (Array Context!15870 Bool)) false))))

(declare-fun bm!666658 () Bool)

(assert (=> bm!666658 (= call!666663 (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) (Context!15871 (t!385876 (exprs!8435 ct1!256))) c!10305))))

(declare-fun b!7325893 () Bool)

(declare-fun e!4386555 () (InoxSet Context!15870))

(assert (=> b!7325893 (= e!4386555 e!4386557)))

(declare-fun c!1359789 () Bool)

(assert (=> b!7325893 (= c!1359789 ((_ is Cons!71367) (exprs!8435 ct1!256)))))

(declare-fun b!7325894 () Bool)

(assert (=> b!7325894 (= e!4386555 ((_ map or) call!666663 (derivationStepZipperUp!2675 (Context!15871 (t!385876 (exprs!8435 ct1!256))) c!10305)))))

(declare-fun d!2274982 () Bool)

(declare-fun c!1359790 () Bool)

(declare-fun e!4386556 () Bool)

(assert (=> d!2274982 (= c!1359790 e!4386556)))

(declare-fun res!2961054 () Bool)

(assert (=> d!2274982 (=> (not res!2961054) (not e!4386556))))

(assert (=> d!2274982 (= res!2961054 ((_ is Cons!71367) (exprs!8435 ct1!256)))))

(assert (=> d!2274982 (= (derivationStepZipperUp!2675 ct1!256 c!10305) e!4386555)))

(declare-fun b!7325895 () Bool)

(assert (=> b!7325895 (= e!4386556 (nullable!8099 (h!77815 (exprs!8435 ct1!256))))))

(assert (= (and d!2274982 res!2961054) b!7325895))

(assert (= (and d!2274982 c!1359790) b!7325894))

(assert (= (and d!2274982 (not c!1359790)) b!7325893))

(assert (= (and b!7325893 c!1359789) b!7325891))

(assert (= (and b!7325893 (not c!1359789)) b!7325892))

(assert (= (or b!7325894 b!7325891) bm!666658))

(declare-fun m!7991772 () Bool)

(assert (=> bm!666658 m!7991772))

(declare-fun m!7991774 () Bool)

(assert (=> b!7325894 m!7991774))

(assert (=> b!7325895 m!7991720))

(assert (=> start!715064 d!2274982))

(declare-fun bs!1916652 () Bool)

(declare-fun d!2274984 () Bool)

(assert (= bs!1916652 (and d!2274984 b!7325867)))

(declare-fun lambda!454049 () Int)

(assert (=> bs!1916652 (= lambda!454049 lambda!454046)))

(assert (=> d!2274984 (= (inv!90827 cWitness!35) (forall!17847 (exprs!8435 cWitness!35) lambda!454049))))

(declare-fun bs!1916653 () Bool)

(assert (= bs!1916653 d!2274984))

(declare-fun m!7991776 () Bool)

(assert (=> bs!1916653 m!7991776))

(assert (=> start!715064 d!2274984))

(declare-fun bs!1916654 () Bool)

(declare-fun d!2274986 () Bool)

(assert (= bs!1916654 (and d!2274986 b!7325867)))

(declare-fun lambda!454050 () Int)

(assert (=> bs!1916654 (= lambda!454050 lambda!454046)))

(declare-fun bs!1916655 () Bool)

(assert (= bs!1916655 (and d!2274986 d!2274984)))

(assert (=> bs!1916655 (= lambda!454050 lambda!454049)))

(assert (=> d!2274986 (= (inv!90827 ct1!256) (forall!17847 (exprs!8435 ct1!256) lambda!454050))))

(declare-fun bs!1916656 () Bool)

(assert (= bs!1916656 d!2274986))

(declare-fun m!7991778 () Bool)

(assert (=> bs!1916656 m!7991778))

(assert (=> start!715064 d!2274986))

(declare-fun bs!1916657 () Bool)

(declare-fun d!2274988 () Bool)

(assert (= bs!1916657 (and d!2274988 b!7325867)))

(declare-fun lambda!454051 () Int)

(assert (=> bs!1916657 (= lambda!454051 lambda!454046)))

(declare-fun bs!1916658 () Bool)

(assert (= bs!1916658 (and d!2274988 d!2274984)))

(assert (=> bs!1916658 (= lambda!454051 lambda!454049)))

(declare-fun bs!1916659 () Bool)

(assert (= bs!1916659 (and d!2274988 d!2274986)))

(assert (=> bs!1916659 (= lambda!454051 lambda!454050)))

(assert (=> d!2274988 (= (inv!90827 ct2!352) (forall!17847 (exprs!8435 ct2!352) lambda!454051))))

(declare-fun bs!1916660 () Bool)

(assert (= bs!1916660 d!2274988))

(declare-fun m!7991780 () Bool)

(assert (=> bs!1916660 m!7991780))

(assert (=> start!715064 d!2274988))

(declare-fun d!2274990 () Bool)

(assert (=> d!2274990 (= (isEmpty!40913 (exprs!8435 ct1!256)) ((_ is Nil!71367) (exprs!8435 ct1!256)))))

(assert (=> b!7325871 d!2274990))

(declare-fun d!2274994 () Bool)

(declare-fun res!2961062 () Bool)

(declare-fun e!4386571 () Bool)

(assert (=> d!2274994 (=> res!2961062 e!4386571)))

(assert (=> d!2274994 (= res!2961062 ((_ is Nil!71367) (exprs!8435 cWitness!35)))))

(assert (=> d!2274994 (= (forall!17847 (exprs!8435 cWitness!35) lambda!454046) e!4386571)))

(declare-fun b!7325915 () Bool)

(declare-fun e!4386572 () Bool)

(assert (=> b!7325915 (= e!4386571 e!4386572)))

(declare-fun res!2961063 () Bool)

(assert (=> b!7325915 (=> (not res!2961063) (not e!4386572))))

(declare-fun dynLambda!29404 (Int Regex!18995) Bool)

(assert (=> b!7325915 (= res!2961063 (dynLambda!29404 lambda!454046 (h!77815 (exprs!8435 cWitness!35))))))

(declare-fun b!7325916 () Bool)

(assert (=> b!7325916 (= e!4386572 (forall!17847 (t!385876 (exprs!8435 cWitness!35)) lambda!454046))))

(assert (= (and d!2274994 (not res!2961062)) b!7325915))

(assert (= (and b!7325915 res!2961063) b!7325916))

(declare-fun b_lambda!283339 () Bool)

(assert (=> (not b_lambda!283339) (not b!7325915)))

(declare-fun m!7991790 () Bool)

(assert (=> b!7325915 m!7991790))

(declare-fun m!7991792 () Bool)

(assert (=> b!7325916 m!7991792))

(assert (=> b!7325873 d!2274994))

(declare-fun d!2275000 () Bool)

(assert (=> d!2275000 (= (isEmpty!40913 lt!2606104) ((_ is Nil!71367) lt!2606104))))

(assert (=> b!7325872 d!2275000))

(declare-fun b!7325931 () Bool)

(declare-fun e!4386584 () List!71491)

(assert (=> b!7325931 (= e!4386584 (exprs!8435 ct2!352))))

(declare-fun b!7325933 () Bool)

(declare-fun res!2961075 () Bool)

(declare-fun e!4386583 () Bool)

(assert (=> b!7325933 (=> (not res!2961075) (not e!4386583))))

(declare-fun lt!2606119 () List!71491)

(declare-fun size!41915 (List!71491) Int)

(assert (=> b!7325933 (= res!2961075 (= (size!41915 lt!2606119) (+ (size!41915 (exprs!8435 ct1!256)) (size!41915 (exprs!8435 ct2!352)))))))

(declare-fun b!7325934 () Bool)

(assert (=> b!7325934 (= e!4386583 (or (not (= (exprs!8435 ct2!352) Nil!71367)) (= lt!2606119 (exprs!8435 ct1!256))))))

(declare-fun b!7325932 () Bool)

(assert (=> b!7325932 (= e!4386584 (Cons!71367 (h!77815 (exprs!8435 ct1!256)) (++!16819 (t!385876 (exprs!8435 ct1!256)) (exprs!8435 ct2!352))))))

(declare-fun d!2275002 () Bool)

(assert (=> d!2275002 e!4386583))

(declare-fun res!2961074 () Bool)

(assert (=> d!2275002 (=> (not res!2961074) (not e!4386583))))

(declare-fun content!14938 (List!71491) (InoxSet Regex!18995))

(assert (=> d!2275002 (= res!2961074 (= (content!14938 lt!2606119) ((_ map or) (content!14938 (exprs!8435 ct1!256)) (content!14938 (exprs!8435 ct2!352)))))))

(assert (=> d!2275002 (= lt!2606119 e!4386584)))

(declare-fun c!1359799 () Bool)

(assert (=> d!2275002 (= c!1359799 ((_ is Nil!71367) (exprs!8435 ct1!256)))))

(assert (=> d!2275002 (= (++!16819 (exprs!8435 ct1!256) (exprs!8435 ct2!352)) lt!2606119)))

(assert (= (and d!2275002 c!1359799) b!7325931))

(assert (= (and d!2275002 (not c!1359799)) b!7325932))

(assert (= (and d!2275002 res!2961074) b!7325933))

(assert (= (and b!7325933 res!2961075) b!7325934))

(declare-fun m!7991800 () Bool)

(assert (=> b!7325933 m!7991800))

(declare-fun m!7991802 () Bool)

(assert (=> b!7325933 m!7991802))

(declare-fun m!7991804 () Bool)

(assert (=> b!7325933 m!7991804))

(declare-fun m!7991806 () Bool)

(assert (=> b!7325932 m!7991806))

(declare-fun m!7991808 () Bool)

(assert (=> d!2275002 m!7991808))

(declare-fun m!7991810 () Bool)

(assert (=> d!2275002 m!7991810))

(declare-fun m!7991812 () Bool)

(assert (=> d!2275002 m!7991812))

(assert (=> b!7325867 d!2275002))

(declare-fun d!2275008 () Bool)

(assert (=> d!2275008 (forall!17847 (++!16819 (exprs!8435 ct1!256) (exprs!8435 ct2!352)) lambda!454046)))

(declare-fun lt!2606122 () Unit!164955)

(declare-fun choose!56970 (List!71491 List!71491 Int) Unit!164955)

(assert (=> d!2275008 (= lt!2606122 (choose!56970 (exprs!8435 ct1!256) (exprs!8435 ct2!352) lambda!454046))))

(assert (=> d!2275008 (forall!17847 (exprs!8435 ct1!256) lambda!454046)))

(assert (=> d!2275008 (= (lemmaConcatPreservesForall!1676 (exprs!8435 ct1!256) (exprs!8435 ct2!352) lambda!454046) lt!2606122)))

(declare-fun bs!1916670 () Bool)

(assert (= bs!1916670 d!2275008))

(assert (=> bs!1916670 m!7991712))

(assert (=> bs!1916670 m!7991712))

(declare-fun m!7991814 () Bool)

(assert (=> bs!1916670 m!7991814))

(declare-fun m!7991816 () Bool)

(assert (=> bs!1916670 m!7991816))

(declare-fun m!7991818 () Bool)

(assert (=> bs!1916670 m!7991818))

(assert (=> b!7325867 d!2275008))

(declare-fun d!2275010 () Bool)

(declare-fun res!2961076 () Bool)

(declare-fun e!4386585 () Bool)

(assert (=> d!2275010 (=> res!2961076 e!4386585)))

(assert (=> d!2275010 (= res!2961076 ((_ is Nil!71367) (exprs!8435 ct2!352)))))

(assert (=> d!2275010 (= (forall!17847 (exprs!8435 ct2!352) lambda!454046) e!4386585)))

(declare-fun b!7325935 () Bool)

(declare-fun e!4386586 () Bool)

(assert (=> b!7325935 (= e!4386585 e!4386586)))

(declare-fun res!2961077 () Bool)

(assert (=> b!7325935 (=> (not res!2961077) (not e!4386586))))

(assert (=> b!7325935 (= res!2961077 (dynLambda!29404 lambda!454046 (h!77815 (exprs!8435 ct2!352))))))

(declare-fun b!7325936 () Bool)

(assert (=> b!7325936 (= e!4386586 (forall!17847 (t!385876 (exprs!8435 ct2!352)) lambda!454046))))

(assert (= (and d!2275010 (not res!2961076)) b!7325935))

(assert (= (and b!7325935 res!2961077) b!7325936))

(declare-fun b_lambda!283343 () Bool)

(assert (=> (not b_lambda!283343) (not b!7325935)))

(declare-fun m!7991820 () Bool)

(assert (=> b!7325935 m!7991820))

(declare-fun m!7991822 () Bool)

(assert (=> b!7325936 m!7991822))

(assert (=> b!7325869 d!2275010))

(declare-fun b!7325981 () Bool)

(declare-fun e!4386613 () Bool)

(assert (=> b!7325981 (= e!4386613 (nullable!8099 (regOne!38502 (h!77815 (exprs!8435 ct1!256)))))))

(declare-fun b!7325982 () Bool)

(declare-fun e!4386616 () (InoxSet Context!15870))

(declare-fun call!666692 () (InoxSet Context!15870))

(declare-fun call!666695 () (InoxSet Context!15870))

(assert (=> b!7325982 (= e!4386616 ((_ map or) call!666692 call!666695))))

(declare-fun bm!666686 () Bool)

(declare-fun call!666691 () (InoxSet Context!15870))

(assert (=> bm!666686 (= call!666691 call!666695)))

(declare-fun call!666694 () List!71491)

(declare-fun c!1359821 () Bool)

(declare-fun bm!666687 () Bool)

(assert (=> bm!666687 (= call!666692 (derivationStepZipperDown!2826 (ite c!1359821 (regOne!38503 (h!77815 (exprs!8435 ct1!256))) (regOne!38502 (h!77815 (exprs!8435 ct1!256)))) (ite c!1359821 (Context!15871 (tail!14684 lt!2606104)) (Context!15871 call!666694)) c!10305))))

(declare-fun b!7325983 () Bool)

(declare-fun e!4386611 () (InoxSet Context!15870))

(assert (=> b!7325983 (= e!4386616 e!4386611)))

(declare-fun c!1359825 () Bool)

(assert (=> b!7325983 (= c!1359825 ((_ is Concat!27840) (h!77815 (exprs!8435 ct1!256))))))

(declare-fun b!7325984 () Bool)

(declare-fun e!4386612 () (InoxSet Context!15870))

(declare-fun e!4386614 () (InoxSet Context!15870))

(assert (=> b!7325984 (= e!4386612 e!4386614)))

(assert (=> b!7325984 (= c!1359821 ((_ is Union!18995) (h!77815 (exprs!8435 ct1!256))))))

(declare-fun d!2275012 () Bool)

(declare-fun c!1359822 () Bool)

(assert (=> d!2275012 (= c!1359822 (and ((_ is ElementMatch!18995) (h!77815 (exprs!8435 ct1!256))) (= (c!1359782 (h!77815 (exprs!8435 ct1!256))) c!10305)))))

(assert (=> d!2275012 (= (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) (Context!15871 (tail!14684 lt!2606104)) c!10305) e!4386612)))

(declare-fun b!7325985 () Bool)

(assert (=> b!7325985 (= e!4386611 call!666691)))

(declare-fun b!7325986 () Bool)

(assert (=> b!7325986 (= e!4386612 (store ((as const (Array Context!15870 Bool)) false) (Context!15871 (tail!14684 lt!2606104)) true))))

(declare-fun bm!666688 () Bool)

(declare-fun call!666696 () List!71491)

(assert (=> bm!666688 (= call!666696 call!666694)))

(declare-fun bm!666689 () Bool)

(declare-fun call!666693 () (InoxSet Context!15870))

(assert (=> bm!666689 (= call!666695 call!666693)))

(declare-fun b!7325987 () Bool)

(declare-fun e!4386615 () (InoxSet Context!15870))

(assert (=> b!7325987 (= e!4386615 ((as const (Array Context!15870 Bool)) false))))

(declare-fun b!7325988 () Bool)

(assert (=> b!7325988 (= e!4386614 ((_ map or) call!666692 call!666693))))

(declare-fun bm!666690 () Bool)

(declare-fun c!1359823 () Bool)

(declare-fun $colon$colon!3028 (List!71491 Regex!18995) List!71491)

(assert (=> bm!666690 (= call!666694 ($colon$colon!3028 (exprs!8435 (Context!15871 (tail!14684 lt!2606104))) (ite (or c!1359823 c!1359825) (regTwo!38502 (h!77815 (exprs!8435 ct1!256))) (h!77815 (exprs!8435 ct1!256)))))))

(declare-fun b!7325989 () Bool)

(assert (=> b!7325989 (= e!4386615 call!666691)))

(declare-fun b!7325990 () Bool)

(assert (=> b!7325990 (= c!1359823 e!4386613)))

(declare-fun res!2961082 () Bool)

(assert (=> b!7325990 (=> (not res!2961082) (not e!4386613))))

(assert (=> b!7325990 (= res!2961082 ((_ is Concat!27840) (h!77815 (exprs!8435 ct1!256))))))

(assert (=> b!7325990 (= e!4386614 e!4386616)))

(declare-fun b!7325991 () Bool)

(declare-fun c!1359824 () Bool)

(assert (=> b!7325991 (= c!1359824 ((_ is Star!18995) (h!77815 (exprs!8435 ct1!256))))))

(assert (=> b!7325991 (= e!4386611 e!4386615)))

(declare-fun bm!666691 () Bool)

(assert (=> bm!666691 (= call!666693 (derivationStepZipperDown!2826 (ite c!1359821 (regTwo!38503 (h!77815 (exprs!8435 ct1!256))) (ite c!1359823 (regTwo!38502 (h!77815 (exprs!8435 ct1!256))) (ite c!1359825 (regOne!38502 (h!77815 (exprs!8435 ct1!256))) (reg!19324 (h!77815 (exprs!8435 ct1!256)))))) (ite (or c!1359821 c!1359823) (Context!15871 (tail!14684 lt!2606104)) (Context!15871 call!666696)) c!10305))))

(assert (= (and d!2275012 c!1359822) b!7325986))

(assert (= (and d!2275012 (not c!1359822)) b!7325984))

(assert (= (and b!7325984 c!1359821) b!7325988))

(assert (= (and b!7325984 (not c!1359821)) b!7325990))

(assert (= (and b!7325990 res!2961082) b!7325981))

(assert (= (and b!7325990 c!1359823) b!7325982))

(assert (= (and b!7325990 (not c!1359823)) b!7325983))

(assert (= (and b!7325983 c!1359825) b!7325985))

(assert (= (and b!7325983 (not c!1359825)) b!7325991))

(assert (= (and b!7325991 c!1359824) b!7325989))

(assert (= (and b!7325991 (not c!1359824)) b!7325987))

(assert (= (or b!7325985 b!7325989) bm!666688))

(assert (= (or b!7325985 b!7325989) bm!666686))

(assert (= (or b!7325982 bm!666686) bm!666689))

(assert (= (or b!7325982 bm!666688) bm!666690))

(assert (= (or b!7325988 bm!666689) bm!666691))

(assert (= (or b!7325988 b!7325982) bm!666687))

(declare-fun m!7991838 () Bool)

(assert (=> b!7325981 m!7991838))

(declare-fun m!7991840 () Bool)

(assert (=> bm!666687 m!7991840))

(declare-fun m!7991842 () Bool)

(assert (=> bm!666690 m!7991842))

(declare-fun m!7991844 () Bool)

(assert (=> bm!666691 m!7991844))

(declare-fun m!7991846 () Bool)

(assert (=> b!7325986 m!7991846))

(assert (=> b!7325870 d!2275012))

(declare-fun d!2275018 () Bool)

(assert (=> d!2275018 (forall!17847 (++!16819 lt!2606113 (exprs!8435 ct2!352)) lambda!454046)))

(declare-fun lt!2606132 () Unit!164955)

(assert (=> d!2275018 (= lt!2606132 (choose!56970 lt!2606113 (exprs!8435 ct2!352) lambda!454046))))

(assert (=> d!2275018 (forall!17847 lt!2606113 lambda!454046)))

(assert (=> d!2275018 (= (lemmaConcatPreservesForall!1676 lt!2606113 (exprs!8435 ct2!352) lambda!454046) lt!2606132)))

(declare-fun bs!1916676 () Bool)

(assert (= bs!1916676 d!2275018))

(assert (=> bs!1916676 m!7991752))

(assert (=> bs!1916676 m!7991752))

(declare-fun m!7991848 () Bool)

(assert (=> bs!1916676 m!7991848))

(declare-fun m!7991850 () Bool)

(assert (=> bs!1916676 m!7991850))

(declare-fun m!7991852 () Bool)

(assert (=> bs!1916676 m!7991852))

(assert (=> b!7325870 d!2275018))

(declare-fun d!2275020 () Bool)

(assert (=> d!2275020 (= (tail!14684 lt!2606104) (t!385876 lt!2606104))))

(assert (=> b!7325870 d!2275020))

(declare-fun b!7325992 () Bool)

(declare-fun e!4386618 () List!71491)

(assert (=> b!7325992 (= e!4386618 (exprs!8435 ct2!352))))

(declare-fun b!7325994 () Bool)

(declare-fun res!2961084 () Bool)

(declare-fun e!4386617 () Bool)

(assert (=> b!7325994 (=> (not res!2961084) (not e!4386617))))

(declare-fun lt!2606133 () List!71491)

(assert (=> b!7325994 (= res!2961084 (= (size!41915 lt!2606133) (+ (size!41915 (exprs!8435 cWitness!35)) (size!41915 (exprs!8435 ct2!352)))))))

(declare-fun b!7325995 () Bool)

(assert (=> b!7325995 (= e!4386617 (or (not (= (exprs!8435 ct2!352) Nil!71367)) (= lt!2606133 (exprs!8435 cWitness!35))))))

(declare-fun b!7325993 () Bool)

(assert (=> b!7325993 (= e!4386618 (Cons!71367 (h!77815 (exprs!8435 cWitness!35)) (++!16819 (t!385876 (exprs!8435 cWitness!35)) (exprs!8435 ct2!352))))))

(declare-fun d!2275022 () Bool)

(assert (=> d!2275022 e!4386617))

(declare-fun res!2961083 () Bool)

(assert (=> d!2275022 (=> (not res!2961083) (not e!4386617))))

(assert (=> d!2275022 (= res!2961083 (= (content!14938 lt!2606133) ((_ map or) (content!14938 (exprs!8435 cWitness!35)) (content!14938 (exprs!8435 ct2!352)))))))

(assert (=> d!2275022 (= lt!2606133 e!4386618)))

(declare-fun c!1359826 () Bool)

(assert (=> d!2275022 (= c!1359826 ((_ is Nil!71367) (exprs!8435 cWitness!35)))))

(assert (=> d!2275022 (= (++!16819 (exprs!8435 cWitness!35) (exprs!8435 ct2!352)) lt!2606133)))

(assert (= (and d!2275022 c!1359826) b!7325992))

(assert (= (and d!2275022 (not c!1359826)) b!7325993))

(assert (= (and d!2275022 res!2961083) b!7325994))

(assert (= (and b!7325994 res!2961084) b!7325995))

(declare-fun m!7991854 () Bool)

(assert (=> b!7325994 m!7991854))

(declare-fun m!7991856 () Bool)

(assert (=> b!7325994 m!7991856))

(assert (=> b!7325994 m!7991804))

(declare-fun m!7991858 () Bool)

(assert (=> b!7325993 m!7991858))

(declare-fun m!7991860 () Bool)

(assert (=> d!2275022 m!7991860))

(declare-fun m!7991862 () Bool)

(assert (=> d!2275022 m!7991862))

(assert (=> d!2275022 m!7991812))

(assert (=> b!7325870 d!2275022))

(declare-fun b!7325996 () Bool)

(declare-fun e!4386620 () List!71491)

(assert (=> b!7325996 (= e!4386620 (exprs!8435 ct2!352))))

(declare-fun b!7325998 () Bool)

(declare-fun res!2961086 () Bool)

(declare-fun e!4386619 () Bool)

(assert (=> b!7325998 (=> (not res!2961086) (not e!4386619))))

(declare-fun lt!2606134 () List!71491)

(assert (=> b!7325998 (= res!2961086 (= (size!41915 lt!2606134) (+ (size!41915 lt!2606113) (size!41915 (exprs!8435 ct2!352)))))))

(declare-fun b!7325999 () Bool)

(assert (=> b!7325999 (= e!4386619 (or (not (= (exprs!8435 ct2!352) Nil!71367)) (= lt!2606134 lt!2606113)))))

(declare-fun b!7325997 () Bool)

(assert (=> b!7325997 (= e!4386620 (Cons!71367 (h!77815 lt!2606113) (++!16819 (t!385876 lt!2606113) (exprs!8435 ct2!352))))))

(declare-fun d!2275024 () Bool)

(assert (=> d!2275024 e!4386619))

(declare-fun res!2961085 () Bool)

(assert (=> d!2275024 (=> (not res!2961085) (not e!4386619))))

(assert (=> d!2275024 (= res!2961085 (= (content!14938 lt!2606134) ((_ map or) (content!14938 lt!2606113) (content!14938 (exprs!8435 ct2!352)))))))

(assert (=> d!2275024 (= lt!2606134 e!4386620)))

(declare-fun c!1359827 () Bool)

(assert (=> d!2275024 (= c!1359827 ((_ is Nil!71367) lt!2606113))))

(assert (=> d!2275024 (= (++!16819 lt!2606113 (exprs!8435 ct2!352)) lt!2606134)))

(assert (= (and d!2275024 c!1359827) b!7325996))

(assert (= (and d!2275024 (not c!1359827)) b!7325997))

(assert (= (and d!2275024 res!2961085) b!7325998))

(assert (= (and b!7325998 res!2961086) b!7325999))

(declare-fun m!7991864 () Bool)

(assert (=> b!7325998 m!7991864))

(declare-fun m!7991866 () Bool)

(assert (=> b!7325998 m!7991866))

(assert (=> b!7325998 m!7991804))

(declare-fun m!7991868 () Bool)

(assert (=> b!7325997 m!7991868))

(declare-fun m!7991870 () Bool)

(assert (=> d!2275024 m!7991870))

(declare-fun m!7991872 () Bool)

(assert (=> d!2275024 m!7991872))

(assert (=> d!2275024 m!7991812))

(assert (=> b!7325870 d!2275024))

(declare-fun b!7326000 () Bool)

(declare-fun e!4386623 () Bool)

(assert (=> b!7326000 (= e!4386623 (nullable!8099 (regOne!38502 (h!77815 (exprs!8435 ct1!256)))))))

(declare-fun b!7326001 () Bool)

(declare-fun e!4386626 () (InoxSet Context!15870))

(declare-fun call!666698 () (InoxSet Context!15870))

(declare-fun call!666701 () (InoxSet Context!15870))

(assert (=> b!7326001 (= e!4386626 ((_ map or) call!666698 call!666701))))

(declare-fun bm!666692 () Bool)

(declare-fun call!666697 () (InoxSet Context!15870))

(assert (=> bm!666692 (= call!666697 call!666701)))

(declare-fun bm!666693 () Bool)

(declare-fun call!666700 () List!71491)

(declare-fun c!1359828 () Bool)

(assert (=> bm!666693 (= call!666698 (derivationStepZipperDown!2826 (ite c!1359828 (regOne!38503 (h!77815 (exprs!8435 ct1!256))) (regOne!38502 (h!77815 (exprs!8435 ct1!256)))) (ite c!1359828 (Context!15871 (++!16819 lt!2606113 (exprs!8435 ct2!352))) (Context!15871 call!666700)) c!10305))))

(declare-fun b!7326002 () Bool)

(declare-fun e!4386621 () (InoxSet Context!15870))

(assert (=> b!7326002 (= e!4386626 e!4386621)))

(declare-fun c!1359832 () Bool)

(assert (=> b!7326002 (= c!1359832 ((_ is Concat!27840) (h!77815 (exprs!8435 ct1!256))))))

(declare-fun b!7326003 () Bool)

(declare-fun e!4386622 () (InoxSet Context!15870))

(declare-fun e!4386624 () (InoxSet Context!15870))

(assert (=> b!7326003 (= e!4386622 e!4386624)))

(assert (=> b!7326003 (= c!1359828 ((_ is Union!18995) (h!77815 (exprs!8435 ct1!256))))))

(declare-fun d!2275026 () Bool)

(declare-fun c!1359829 () Bool)

(assert (=> d!2275026 (= c!1359829 (and ((_ is ElementMatch!18995) (h!77815 (exprs!8435 ct1!256))) (= (c!1359782 (h!77815 (exprs!8435 ct1!256))) c!10305)))))

(assert (=> d!2275026 (= (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) (Context!15871 (++!16819 lt!2606113 (exprs!8435 ct2!352))) c!10305) e!4386622)))

(declare-fun b!7326004 () Bool)

(assert (=> b!7326004 (= e!4386621 call!666697)))

(declare-fun b!7326005 () Bool)

(assert (=> b!7326005 (= e!4386622 (store ((as const (Array Context!15870 Bool)) false) (Context!15871 (++!16819 lt!2606113 (exprs!8435 ct2!352))) true))))

(declare-fun bm!666694 () Bool)

(declare-fun call!666702 () List!71491)

(assert (=> bm!666694 (= call!666702 call!666700)))

(declare-fun bm!666695 () Bool)

(declare-fun call!666699 () (InoxSet Context!15870))

(assert (=> bm!666695 (= call!666701 call!666699)))

(declare-fun b!7326006 () Bool)

(declare-fun e!4386625 () (InoxSet Context!15870))

(assert (=> b!7326006 (= e!4386625 ((as const (Array Context!15870 Bool)) false))))

(declare-fun b!7326007 () Bool)

(assert (=> b!7326007 (= e!4386624 ((_ map or) call!666698 call!666699))))

(declare-fun bm!666696 () Bool)

(declare-fun c!1359830 () Bool)

(assert (=> bm!666696 (= call!666700 ($colon$colon!3028 (exprs!8435 (Context!15871 (++!16819 lt!2606113 (exprs!8435 ct2!352)))) (ite (or c!1359830 c!1359832) (regTwo!38502 (h!77815 (exprs!8435 ct1!256))) (h!77815 (exprs!8435 ct1!256)))))))

(declare-fun b!7326008 () Bool)

(assert (=> b!7326008 (= e!4386625 call!666697)))

(declare-fun b!7326009 () Bool)

(assert (=> b!7326009 (= c!1359830 e!4386623)))

(declare-fun res!2961087 () Bool)

(assert (=> b!7326009 (=> (not res!2961087) (not e!4386623))))

(assert (=> b!7326009 (= res!2961087 ((_ is Concat!27840) (h!77815 (exprs!8435 ct1!256))))))

(assert (=> b!7326009 (= e!4386624 e!4386626)))

(declare-fun b!7326010 () Bool)

(declare-fun c!1359831 () Bool)

(assert (=> b!7326010 (= c!1359831 ((_ is Star!18995) (h!77815 (exprs!8435 ct1!256))))))

(assert (=> b!7326010 (= e!4386621 e!4386625)))

(declare-fun bm!666697 () Bool)

(assert (=> bm!666697 (= call!666699 (derivationStepZipperDown!2826 (ite c!1359828 (regTwo!38503 (h!77815 (exprs!8435 ct1!256))) (ite c!1359830 (regTwo!38502 (h!77815 (exprs!8435 ct1!256))) (ite c!1359832 (regOne!38502 (h!77815 (exprs!8435 ct1!256))) (reg!19324 (h!77815 (exprs!8435 ct1!256)))))) (ite (or c!1359828 c!1359830) (Context!15871 (++!16819 lt!2606113 (exprs!8435 ct2!352))) (Context!15871 call!666702)) c!10305))))

(assert (= (and d!2275026 c!1359829) b!7326005))

(assert (= (and d!2275026 (not c!1359829)) b!7326003))

(assert (= (and b!7326003 c!1359828) b!7326007))

(assert (= (and b!7326003 (not c!1359828)) b!7326009))

(assert (= (and b!7326009 res!2961087) b!7326000))

(assert (= (and b!7326009 c!1359830) b!7326001))

(assert (= (and b!7326009 (not c!1359830)) b!7326002))

(assert (= (and b!7326002 c!1359832) b!7326004))

(assert (= (and b!7326002 (not c!1359832)) b!7326010))

(assert (= (and b!7326010 c!1359831) b!7326008))

(assert (= (and b!7326010 (not c!1359831)) b!7326006))

(assert (= (or b!7326004 b!7326008) bm!666694))

(assert (= (or b!7326004 b!7326008) bm!666692))

(assert (= (or b!7326001 bm!666692) bm!666695))

(assert (= (or b!7326001 bm!666694) bm!666696))

(assert (= (or b!7326007 bm!666695) bm!666697))

(assert (= (or b!7326007 b!7326001) bm!666693))

(assert (=> b!7326000 m!7991838))

(declare-fun m!7991874 () Bool)

(assert (=> bm!666693 m!7991874))

(declare-fun m!7991876 () Bool)

(assert (=> bm!666696 m!7991876))

(declare-fun m!7991878 () Bool)

(assert (=> bm!666697 m!7991878))

(declare-fun m!7991880 () Bool)

(assert (=> b!7326005 m!7991880))

(assert (=> b!7325870 d!2275026))

(declare-fun bs!1916678 () Bool)

(declare-fun d!2275028 () Bool)

(assert (= bs!1916678 (and d!2275028 b!7325867)))

(declare-fun lambda!454066 () Int)

(assert (=> bs!1916678 (= lambda!454066 lambda!454046)))

(declare-fun bs!1916679 () Bool)

(assert (= bs!1916679 (and d!2275028 d!2274984)))

(assert (=> bs!1916679 (= lambda!454066 lambda!454049)))

(declare-fun bs!1916680 () Bool)

(assert (= bs!1916680 (and d!2275028 d!2274986)))

(assert (=> bs!1916680 (= lambda!454066 lambda!454050)))

(declare-fun bs!1916681 () Bool)

(assert (= bs!1916681 (and d!2275028 d!2274988)))

(assert (=> bs!1916681 (= lambda!454066 lambda!454051)))

(assert (=> d!2275028 (select (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) (Context!15871 (++!16819 (exprs!8435 lt!2606115) (exprs!8435 ct2!352))) c!10305) (Context!15871 (++!16819 (exprs!8435 cWitness!35) (exprs!8435 ct2!352))))))

(declare-fun lt!2606149 () Unit!164955)

(assert (=> d!2275028 (= lt!2606149 (lemmaConcatPreservesForall!1676 (exprs!8435 lt!2606115) (exprs!8435 ct2!352) lambda!454066))))

(declare-fun lt!2606148 () Unit!164955)

(assert (=> d!2275028 (= lt!2606148 (lemmaConcatPreservesForall!1676 (exprs!8435 cWitness!35) (exprs!8435 ct2!352) lambda!454066))))

(declare-fun lt!2606147 () Unit!164955)

(declare-fun choose!56973 (Regex!18995 Context!15870 Context!15870 Context!15870 C!38264) Unit!164955)

(assert (=> d!2275028 (= lt!2606147 (choose!56973 (h!77815 (exprs!8435 ct1!256)) lt!2606115 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9635 (Regex!18995) Bool)

(assert (=> d!2275028 (validRegex!9635 (h!77815 (exprs!8435 ct1!256)))))

(assert (=> d!2275028 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!8 (h!77815 (exprs!8435 ct1!256)) lt!2606115 ct2!352 cWitness!35 c!10305) lt!2606147)))

(declare-fun bs!1916683 () Bool)

(assert (= bs!1916683 d!2275028))

(declare-fun m!7991916 () Bool)

(assert (=> bs!1916683 m!7991916))

(declare-fun m!7991918 () Bool)

(assert (=> bs!1916683 m!7991918))

(assert (=> bs!1916683 m!7991754))

(declare-fun m!7991920 () Bool)

(assert (=> bs!1916683 m!7991920))

(declare-fun m!7991922 () Bool)

(assert (=> bs!1916683 m!7991922))

(declare-fun m!7991924 () Bool)

(assert (=> bs!1916683 m!7991924))

(declare-fun m!7991926 () Bool)

(assert (=> bs!1916683 m!7991926))

(declare-fun m!7991928 () Bool)

(assert (=> bs!1916683 m!7991928))

(assert (=> b!7325870 d!2275028))

(declare-fun d!2275038 () Bool)

(assert (=> d!2275038 (forall!17847 (++!16819 (exprs!8435 cWitness!35) (exprs!8435 ct2!352)) lambda!454046)))

(declare-fun lt!2606151 () Unit!164955)

(assert (=> d!2275038 (= lt!2606151 (choose!56970 (exprs!8435 cWitness!35) (exprs!8435 ct2!352) lambda!454046))))

(assert (=> d!2275038 (forall!17847 (exprs!8435 cWitness!35) lambda!454046)))

(assert (=> d!2275038 (= (lemmaConcatPreservesForall!1676 (exprs!8435 cWitness!35) (exprs!8435 ct2!352) lambda!454046) lt!2606151)))

(declare-fun bs!1916684 () Bool)

(assert (= bs!1916684 d!2275038))

(assert (=> bs!1916684 m!7991754))

(assert (=> bs!1916684 m!7991754))

(declare-fun m!7991930 () Bool)

(assert (=> bs!1916684 m!7991930))

(declare-fun m!7991932 () Bool)

(assert (=> bs!1916684 m!7991932))

(assert (=> bs!1916684 m!7991728))

(assert (=> b!7325870 d!2275038))

(declare-fun d!2275040 () Bool)

(declare-fun nullableFct!3212 (Regex!18995) Bool)

(assert (=> d!2275040 (= (nullable!8099 (h!77815 (exprs!8435 ct1!256))) (nullableFct!3212 (h!77815 (exprs!8435 ct1!256))))))

(declare-fun bs!1916685 () Bool)

(assert (= bs!1916685 d!2275040))

(declare-fun m!7991942 () Bool)

(assert (=> bs!1916685 m!7991942))

(assert (=> b!7325865 d!2275040))

(declare-fun b!7326049 () Bool)

(declare-fun e!4386649 () Bool)

(assert (=> b!7326049 (= e!4386649 (nullable!8099 (regOne!38502 (h!77815 (exprs!8435 ct1!256)))))))

(declare-fun b!7326050 () Bool)

(declare-fun e!4386652 () (InoxSet Context!15870))

(declare-fun call!666716 () (InoxSet Context!15870))

(declare-fun call!666719 () (InoxSet Context!15870))

(assert (=> b!7326050 (= e!4386652 ((_ map or) call!666716 call!666719))))

(declare-fun bm!666710 () Bool)

(declare-fun call!666715 () (InoxSet Context!15870))

(assert (=> bm!666710 (= call!666715 call!666719)))

(declare-fun bm!666711 () Bool)

(declare-fun c!1359848 () Bool)

(declare-fun call!666718 () List!71491)

(assert (=> bm!666711 (= call!666716 (derivationStepZipperDown!2826 (ite c!1359848 (regOne!38503 (h!77815 (exprs!8435 ct1!256))) (regOne!38502 (h!77815 (exprs!8435 ct1!256)))) (ite c!1359848 lt!2606115 (Context!15871 call!666718)) c!10305))))

(declare-fun b!7326051 () Bool)

(declare-fun e!4386647 () (InoxSet Context!15870))

(assert (=> b!7326051 (= e!4386652 e!4386647)))

(declare-fun c!1359852 () Bool)

(assert (=> b!7326051 (= c!1359852 ((_ is Concat!27840) (h!77815 (exprs!8435 ct1!256))))))

(declare-fun b!7326052 () Bool)

(declare-fun e!4386648 () (InoxSet Context!15870))

(declare-fun e!4386650 () (InoxSet Context!15870))

(assert (=> b!7326052 (= e!4386648 e!4386650)))

(assert (=> b!7326052 (= c!1359848 ((_ is Union!18995) (h!77815 (exprs!8435 ct1!256))))))

(declare-fun d!2275044 () Bool)

(declare-fun c!1359849 () Bool)

(assert (=> d!2275044 (= c!1359849 (and ((_ is ElementMatch!18995) (h!77815 (exprs!8435 ct1!256))) (= (c!1359782 (h!77815 (exprs!8435 ct1!256))) c!10305)))))

(assert (=> d!2275044 (= (derivationStepZipperDown!2826 (h!77815 (exprs!8435 ct1!256)) lt!2606115 c!10305) e!4386648)))

(declare-fun b!7326053 () Bool)

(assert (=> b!7326053 (= e!4386647 call!666715)))

(declare-fun b!7326054 () Bool)

(assert (=> b!7326054 (= e!4386648 (store ((as const (Array Context!15870 Bool)) false) lt!2606115 true))))

(declare-fun bm!666712 () Bool)

(declare-fun call!666720 () List!71491)

(assert (=> bm!666712 (= call!666720 call!666718)))

(declare-fun bm!666713 () Bool)

(declare-fun call!666717 () (InoxSet Context!15870))

(assert (=> bm!666713 (= call!666719 call!666717)))

(declare-fun b!7326055 () Bool)

(declare-fun e!4386651 () (InoxSet Context!15870))

(assert (=> b!7326055 (= e!4386651 ((as const (Array Context!15870 Bool)) false))))

(declare-fun b!7326056 () Bool)

(assert (=> b!7326056 (= e!4386650 ((_ map or) call!666716 call!666717))))

(declare-fun c!1359850 () Bool)

(declare-fun bm!666714 () Bool)

(assert (=> bm!666714 (= call!666718 ($colon$colon!3028 (exprs!8435 lt!2606115) (ite (or c!1359850 c!1359852) (regTwo!38502 (h!77815 (exprs!8435 ct1!256))) (h!77815 (exprs!8435 ct1!256)))))))

(declare-fun b!7326057 () Bool)

(assert (=> b!7326057 (= e!4386651 call!666715)))

(declare-fun b!7326058 () Bool)

(assert (=> b!7326058 (= c!1359850 e!4386649)))

(declare-fun res!2961098 () Bool)

(assert (=> b!7326058 (=> (not res!2961098) (not e!4386649))))

(assert (=> b!7326058 (= res!2961098 ((_ is Concat!27840) (h!77815 (exprs!8435 ct1!256))))))

(assert (=> b!7326058 (= e!4386650 e!4386652)))

(declare-fun b!7326059 () Bool)

(declare-fun c!1359851 () Bool)

(assert (=> b!7326059 (= c!1359851 ((_ is Star!18995) (h!77815 (exprs!8435 ct1!256))))))

(assert (=> b!7326059 (= e!4386647 e!4386651)))

(declare-fun bm!666715 () Bool)

(assert (=> bm!666715 (= call!666717 (derivationStepZipperDown!2826 (ite c!1359848 (regTwo!38503 (h!77815 (exprs!8435 ct1!256))) (ite c!1359850 (regTwo!38502 (h!77815 (exprs!8435 ct1!256))) (ite c!1359852 (regOne!38502 (h!77815 (exprs!8435 ct1!256))) (reg!19324 (h!77815 (exprs!8435 ct1!256)))))) (ite (or c!1359848 c!1359850) lt!2606115 (Context!15871 call!666720)) c!10305))))

(assert (= (and d!2275044 c!1359849) b!7326054))

(assert (= (and d!2275044 (not c!1359849)) b!7326052))

(assert (= (and b!7326052 c!1359848) b!7326056))

(assert (= (and b!7326052 (not c!1359848)) b!7326058))

(assert (= (and b!7326058 res!2961098) b!7326049))

(assert (= (and b!7326058 c!1359850) b!7326050))

(assert (= (and b!7326058 (not c!1359850)) b!7326051))

(assert (= (and b!7326051 c!1359852) b!7326053))

(assert (= (and b!7326051 (not c!1359852)) b!7326059))

(assert (= (and b!7326059 c!1359851) b!7326057))

(assert (= (and b!7326059 (not c!1359851)) b!7326055))

(assert (= (or b!7326053 b!7326057) bm!666712))

(assert (= (or b!7326053 b!7326057) bm!666710))

(assert (= (or b!7326050 bm!666710) bm!666713))

(assert (= (or b!7326050 bm!666712) bm!666714))

(assert (= (or b!7326056 bm!666713) bm!666715))

(assert (= (or b!7326056 b!7326050) bm!666711))

(assert (=> b!7326049 m!7991838))

(declare-fun m!7991956 () Bool)

(assert (=> bm!666711 m!7991956))

(declare-fun m!7991958 () Bool)

(assert (=> bm!666714 m!7991958))

(declare-fun m!7991960 () Bool)

(assert (=> bm!666715 m!7991960))

(declare-fun m!7991962 () Bool)

(assert (=> b!7326054 m!7991962))

(assert (=> b!7325865 d!2275044))

(declare-fun d!2275050 () Bool)

(assert (=> d!2275050 (= (tail!14684 (exprs!8435 ct1!256)) (t!385876 (exprs!8435 ct1!256)))))

(assert (=> b!7325865 d!2275050))

(declare-fun b!7326075 () Bool)

(declare-fun e!4386661 () Bool)

(declare-fun tp!2080500 () Bool)

(declare-fun tp!2080501 () Bool)

(assert (=> b!7326075 (= e!4386661 (and tp!2080500 tp!2080501))))

(assert (=> b!7325874 (= tp!2080493 e!4386661)))

(assert (= (and b!7325874 ((_ is Cons!71367) (exprs!8435 ct2!352))) b!7326075))

(declare-fun b!7326076 () Bool)

(declare-fun e!4386662 () Bool)

(declare-fun tp!2080502 () Bool)

(declare-fun tp!2080503 () Bool)

(assert (=> b!7326076 (= e!4386662 (and tp!2080502 tp!2080503))))

(assert (=> b!7325868 (= tp!2080494 e!4386662)))

(assert (= (and b!7325868 ((_ is Cons!71367) (exprs!8435 ct1!256))) b!7326076))

(declare-fun b!7326077 () Bool)

(declare-fun e!4386663 () Bool)

(declare-fun tp!2080504 () Bool)

(declare-fun tp!2080505 () Bool)

(assert (=> b!7326077 (= e!4386663 (and tp!2080504 tp!2080505))))

(assert (=> b!7325875 (= tp!2080495 e!4386663)))

(assert (= (and b!7325875 ((_ is Cons!71367) (exprs!8435 cWitness!35))) b!7326077))

(declare-fun b_lambda!283345 () Bool)

(assert (= b_lambda!283343 (or b!7325867 b_lambda!283345)))

(declare-fun bs!1916687 () Bool)

(declare-fun d!2275056 () Bool)

(assert (= bs!1916687 (and d!2275056 b!7325867)))

(assert (=> bs!1916687 (= (dynLambda!29404 lambda!454046 (h!77815 (exprs!8435 ct2!352))) (validRegex!9635 (h!77815 (exprs!8435 ct2!352))))))

(declare-fun m!7991972 () Bool)

(assert (=> bs!1916687 m!7991972))

(assert (=> b!7325935 d!2275056))

(declare-fun b_lambda!283347 () Bool)

(assert (= b_lambda!283339 (or b!7325867 b_lambda!283347)))

(declare-fun bs!1916688 () Bool)

(declare-fun d!2275058 () Bool)

(assert (= bs!1916688 (and d!2275058 b!7325867)))

(assert (=> bs!1916688 (= (dynLambda!29404 lambda!454046 (h!77815 (exprs!8435 cWitness!35))) (validRegex!9635 (h!77815 (exprs!8435 cWitness!35))))))

(declare-fun m!7991974 () Bool)

(assert (=> bs!1916688 m!7991974))

(assert (=> b!7325915 d!2275058))

(check-sat (not b!7325890) (not b!7325916) (not bs!1916688) (not d!2274988) (not d!2275008) (not d!2275038) (not b!7325998) (not b!7326075) (not bm!666693) (not b!7325932) (not b_lambda!283345) (not bm!666690) (not d!2275040) (not b!7325894) (not b!7326076) (not b!7325895) (not d!2275002) (not bs!1916687) (not d!2274986) (not b_lambda!283347) (not d!2275022) (not bm!666687) (not bm!666697) (not bm!666657) (not bm!666711) (not b!7325997) tp_is_empty!48235 (not b!7325993) (not b!7325981) (not b!7326049) (not d!2275018) (not d!2275024) (not bm!666714) (not b!7326077) (not bm!666696) (not b!7325994) (not bm!666691) (not b!7326000) (not b!7325933) (not d!2275028) (not bm!666715) (not bm!666658) (not b!7325889) (not b!7325936) (not d!2274984))
(check-sat)
