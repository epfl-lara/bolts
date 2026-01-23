; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716904 () Bool)

(assert start!716904)

(declare-fun b!7339697 () Bool)

(declare-fun e!4395025 () Bool)

(declare-fun tp!2084050 () Bool)

(assert (=> b!7339697 (= e!4395025 tp!2084050)))

(declare-fun b!7339698 () Bool)

(declare-fun e!4395021 () Bool)

(declare-fun e!4395023 () Bool)

(assert (=> b!7339698 (= e!4395021 e!4395023)))

(declare-fun res!2965299 () Bool)

(assert (=> b!7339698 (=> (not res!2965299) (not e!4395023))))

(declare-datatypes ((C!38484 0))(
  ( (C!38485 (val!29602 Int)) )
))
(declare-datatypes ((Regex!19105 0))(
  ( (ElementMatch!19105 (c!1363225 C!38484)) (Concat!27950 (regOne!38722 Regex!19105) (regTwo!38722 Regex!19105)) (EmptyExpr!19105) (Star!19105 (reg!19434 Regex!19105)) (EmptyLang!19105) (Union!19105 (regOne!38723 Regex!19105) (regTwo!38723 Regex!19105)) )
))
(declare-fun r1!2370 () Regex!19105)

(declare-fun c!10362 () C!38484)

(get-info :version)

(assert (=> b!7339698 (= res!2965299 (and (or (not ((_ is ElementMatch!19105) r1!2370)) (not (= c!10362 (c!1363225 r1!2370)))) ((_ is Union!19105) r1!2370)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!71601 0))(
  ( (Nil!71477) (Cons!71477 (h!77925 Regex!19105) (t!385996 List!71601)) )
))
(declare-datatypes ((Context!16090 0))(
  ( (Context!16091 (exprs!8545 List!71601)) )
))
(declare-fun lt!2609749 () (InoxSet Context!16090))

(declare-fun ct1!282 () Context!16090)

(declare-fun ct2!378 () Context!16090)

(declare-fun derivationStepZipperDown!2931 (Regex!19105 Context!16090 C!38484) (InoxSet Context!16090))

(declare-fun ++!16923 (List!71601 List!71601) List!71601)

(assert (=> b!7339698 (= lt!2609749 (derivationStepZipperDown!2931 r1!2370 (Context!16091 (++!16923 (exprs!8545 ct1!282) (exprs!8545 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165163 0))(
  ( (Unit!165164) )
))
(declare-fun lt!2609750 () Unit!165163)

(declare-fun lambda!455473 () Int)

(declare-fun lemmaConcatPreservesForall!1780 (List!71601 List!71601 Int) Unit!165163)

(assert (=> b!7339698 (= lt!2609750 (lemmaConcatPreservesForall!1780 (exprs!8545 ct1!282) (exprs!8545 ct2!378) lambda!455473))))

(declare-fun b!7339699 () Bool)

(declare-fun e!4395026 () Bool)

(declare-fun tp_is_empty!48455 () Bool)

(assert (=> b!7339699 (= e!4395026 tp_is_empty!48455)))

(declare-fun b!7339700 () Bool)

(declare-fun tp!2084056 () Bool)

(declare-fun tp!2084055 () Bool)

(assert (=> b!7339700 (= e!4395026 (and tp!2084056 tp!2084055))))

(declare-fun b!7339701 () Bool)

(assert (=> b!7339701 (= e!4395023 false)))

(declare-fun b!7339702 () Bool)

(declare-fun tp!2084051 () Bool)

(declare-fun tp!2084054 () Bool)

(assert (=> b!7339702 (= e!4395026 (and tp!2084051 tp!2084054))))

(declare-fun b!7339703 () Bool)

(declare-fun e!4395022 () Bool)

(declare-fun tp!2084057 () Bool)

(assert (=> b!7339703 (= e!4395022 tp!2084057)))

(declare-fun res!2965298 () Bool)

(declare-fun e!4395024 () Bool)

(assert (=> start!716904 (=> (not res!2965298) (not e!4395024))))

(declare-fun validRegex!9701 (Regex!19105) Bool)

(assert (=> start!716904 (= res!2965298 (validRegex!9701 r1!2370))))

(assert (=> start!716904 e!4395024))

(assert (=> start!716904 tp_is_empty!48455))

(declare-fun cWitness!61 () Context!16090)

(declare-fun inv!91102 (Context!16090) Bool)

(assert (=> start!716904 (and (inv!91102 cWitness!61) e!4395025)))

(assert (=> start!716904 (and (inv!91102 ct1!282) e!4395022)))

(assert (=> start!716904 e!4395026))

(declare-fun e!4395020 () Bool)

(assert (=> start!716904 (and (inv!91102 ct2!378) e!4395020)))

(declare-fun b!7339704 () Bool)

(declare-fun tp!2084052 () Bool)

(assert (=> b!7339704 (= e!4395020 tp!2084052)))

(declare-fun b!7339705 () Bool)

(declare-fun res!2965300 () Bool)

(assert (=> b!7339705 (=> (not res!2965300) (not e!4395023))))

(declare-fun lt!2609751 () (InoxSet Context!16090))

(assert (=> b!7339705 (= res!2965300 (= lt!2609751 ((_ map or) (derivationStepZipperDown!2931 (regOne!38723 r1!2370) ct1!282 c!10362) (derivationStepZipperDown!2931 (regTwo!38723 r1!2370) ct1!282 c!10362))))))

(declare-fun b!7339706 () Bool)

(declare-fun tp!2084053 () Bool)

(assert (=> b!7339706 (= e!4395026 tp!2084053)))

(declare-fun b!7339707 () Bool)

(assert (=> b!7339707 (= e!4395024 e!4395021)))

(declare-fun res!2965297 () Bool)

(assert (=> b!7339707 (=> (not res!2965297) (not e!4395021))))

(assert (=> b!7339707 (= res!2965297 (select lt!2609751 cWitness!61))))

(assert (=> b!7339707 (= lt!2609751 (derivationStepZipperDown!2931 r1!2370 ct1!282 c!10362))))

(assert (= (and start!716904 res!2965298) b!7339707))

(assert (= (and b!7339707 res!2965297) b!7339698))

(assert (= (and b!7339698 res!2965299) b!7339705))

(assert (= (and b!7339705 res!2965300) b!7339701))

(assert (= start!716904 b!7339697))

(assert (= start!716904 b!7339703))

(assert (= (and start!716904 ((_ is ElementMatch!19105) r1!2370)) b!7339699))

(assert (= (and start!716904 ((_ is Concat!27950) r1!2370)) b!7339702))

(assert (= (and start!716904 ((_ is Star!19105) r1!2370)) b!7339706))

(assert (= (and start!716904 ((_ is Union!19105) r1!2370)) b!7339700))

(assert (= start!716904 b!7339704))

(declare-fun m!8003824 () Bool)

(assert (=> b!7339698 m!8003824))

(declare-fun m!8003826 () Bool)

(assert (=> b!7339698 m!8003826))

(declare-fun m!8003828 () Bool)

(assert (=> b!7339698 m!8003828))

(declare-fun m!8003830 () Bool)

(assert (=> start!716904 m!8003830))

(declare-fun m!8003832 () Bool)

(assert (=> start!716904 m!8003832))

(declare-fun m!8003834 () Bool)

(assert (=> start!716904 m!8003834))

(declare-fun m!8003836 () Bool)

(assert (=> start!716904 m!8003836))

(declare-fun m!8003838 () Bool)

(assert (=> b!7339705 m!8003838))

(declare-fun m!8003840 () Bool)

(assert (=> b!7339705 m!8003840))

(declare-fun m!8003842 () Bool)

(assert (=> b!7339707 m!8003842))

(declare-fun m!8003844 () Bool)

(assert (=> b!7339707 m!8003844))

(check-sat (not b!7339707) (not b!7339702) (not b!7339697) (not b!7339706) (not b!7339703) (not b!7339705) (not b!7339700) (not b!7339698) tp_is_empty!48455 (not b!7339704) (not start!716904))
(check-sat)
