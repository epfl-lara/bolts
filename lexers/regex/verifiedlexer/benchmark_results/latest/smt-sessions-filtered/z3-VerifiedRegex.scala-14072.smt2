; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741974 () Bool)

(assert start!741974)

(declare-fun b!7820237 () Bool)

(declare-fun e!4626955 () Bool)

(declare-fun tp_is_empty!52233 () Bool)

(assert (=> b!7820237 (= e!4626955 tp_is_empty!52233)))

(declare-fun b!7820238 () Bool)

(declare-fun res!3112752 () Bool)

(declare-fun e!4626959 () Bool)

(assert (=> b!7820238 (=> res!3112752 e!4626959)))

(declare-datatypes ((C!42204 0))(
  ( (C!42205 (val!31542 Int)) )
))
(declare-datatypes ((List!73776 0))(
  ( (Nil!73652) (Cons!73652 (h!80100 C!42204) (t!388511 List!73776)) )
))
(declare-fun s1!4101 () List!73776)

(declare-fun s!14274 () List!73776)

(declare-fun isPrefix!6289 (List!73776 List!73776) Bool)

(assert (=> b!7820238 (= res!3112752 (not (isPrefix!6289 s1!4101 s!14274)))))

(declare-fun b!7820239 () Bool)

(declare-fun e!4626961 () Bool)

(assert (=> b!7820239 (= e!4626961 (not e!4626959))))

(declare-fun res!3112749 () Bool)

(assert (=> b!7820239 (=> res!3112749 e!4626959)))

(declare-fun s1Rec!453 () List!73776)

(declare-fun size!42741 (List!73776) Int)

(assert (=> b!7820239 (= res!3112749 (not (= (size!42741 s1Rec!453) (size!42741 s1!4101))))))

(declare-fun lt!2676278 () List!73776)

(declare-fun lt!2676280 () List!73776)

(assert (=> b!7820239 (isPrefix!6289 lt!2676278 lt!2676280)))

(declare-datatypes ((Unit!168654 0))(
  ( (Unit!168655) )
))
(declare-fun lt!2676273 () Unit!168654)

(declare-fun s2Rec!453 () List!73776)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3753 (List!73776 List!73776) Unit!168654)

(assert (=> b!7820239 (= lt!2676273 (lemmaConcatTwoListThenFirstIsPrefix!3753 lt!2676278 (t!388511 s2Rec!453)))))

(assert (=> b!7820239 (= lt!2676280 s!14274)))

(declare-fun ++!17973 (List!73776 List!73776) List!73776)

(assert (=> b!7820239 (= lt!2676280 (++!17973 lt!2676278 (t!388511 s2Rec!453)))))

(assert (=> b!7820239 (= lt!2676278 (++!17973 s1Rec!453 (Cons!73652 (h!80100 s2Rec!453) Nil!73652)))))

(declare-fun lt!2676281 () Unit!168654)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3426 (List!73776 C!42204 List!73776 List!73776) Unit!168654)

(assert (=> b!7820239 (= lt!2676281 (lemmaMoveElementToOtherListKeepsConcatEq!3426 s1Rec!453 (h!80100 s2Rec!453) (t!388511 s2Rec!453) s!14274))))

(declare-fun lt!2676277 () Unit!168654)

(declare-fun e!4626954 () Unit!168654)

(assert (=> b!7820239 (= lt!2676277 e!4626954)))

(declare-fun c!1439299 () Bool)

(assert (=> b!7820239 (= c!1439299 (= s1Rec!453 s1!4101))))

(declare-fun lt!2676279 () List!73776)

(assert (=> b!7820239 (isPrefix!6289 s1Rec!453 lt!2676279)))

(declare-fun lt!2676272 () Unit!168654)

(assert (=> b!7820239 (= lt!2676272 (lemmaConcatTwoListThenFirstIsPrefix!3753 s1Rec!453 s2Rec!453))))

(declare-fun lt!2676276 () List!73776)

(assert (=> b!7820239 (isPrefix!6289 s1!4101 lt!2676276)))

(declare-fun lt!2676274 () Unit!168654)

(declare-fun s2!3721 () List!73776)

(assert (=> b!7820239 (= lt!2676274 (lemmaConcatTwoListThenFirstIsPrefix!3753 s1!4101 s2!3721))))

(declare-fun b!7820240 () Bool)

(declare-fun Unit!168656 () Unit!168654)

(assert (=> b!7820240 (= e!4626954 Unit!168656)))

(declare-fun lt!2676275 () Unit!168654)

(declare-fun lemmaSamePrefixThenSameSuffix!2897 (List!73776 List!73776 List!73776 List!73776 List!73776) Unit!168654)

(assert (=> b!7820240 (= lt!2676275 (lemmaSamePrefixThenSameSuffix!2897 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7820240 false))

(declare-fun b!7820241 () Bool)

(declare-fun e!4626960 () Bool)

(declare-fun tp!2307889 () Bool)

(declare-fun tp!2307890 () Bool)

(assert (=> b!7820241 (= e!4626960 (and tp!2307889 tp!2307890))))

(declare-fun b!7820242 () Bool)

(declare-fun res!3112757 () Bool)

(assert (=> b!7820242 (=> (not res!3112757) (not e!4626961))))

(get-info :version)

(assert (=> b!7820242 (= res!3112757 (not ((_ is Nil!73652) s2Rec!453)))))

(declare-fun b!7820243 () Bool)

(declare-fun e!4626953 () Bool)

(assert (=> b!7820243 (= e!4626953 e!4626961)))

(declare-fun res!3112760 () Bool)

(assert (=> b!7820243 (=> (not res!3112760) (not e!4626961))))

(assert (=> b!7820243 (= res!3112760 (= lt!2676279 s!14274))))

(assert (=> b!7820243 (= lt!2676279 (++!17973 s1Rec!453 s2Rec!453))))

(declare-fun b!7820244 () Bool)

(assert (=> b!7820244 (= e!4626959 true)))

(declare-fun lt!2676282 () Bool)

(assert (=> b!7820244 (= lt!2676282 (isPrefix!6289 s1Rec!453 s!14274))))

(declare-fun b!7820245 () Bool)

(declare-fun tp!2307897 () Bool)

(assert (=> b!7820245 (= e!4626955 tp!2307897)))

(declare-fun b!7820246 () Bool)

(declare-fun e!4626958 () Bool)

(declare-fun tp!2307884 () Bool)

(assert (=> b!7820246 (= e!4626958 (and tp_is_empty!52233 tp!2307884))))

(declare-fun b!7820248 () Bool)

(declare-fun e!4626952 () Bool)

(declare-fun tp!2307892 () Bool)

(assert (=> b!7820248 (= e!4626952 (and tp_is_empty!52233 tp!2307892))))

(declare-fun b!7820249 () Bool)

(declare-fun res!3112751 () Bool)

(assert (=> b!7820249 (=> (not res!3112751) (not e!4626961))))

(declare-datatypes ((Regex!20939 0))(
  ( (ElementMatch!20939 (c!1439300 C!42204)) (Concat!29784 (regOne!42390 Regex!20939) (regTwo!42390 Regex!20939)) (EmptyExpr!20939) (Star!20939 (reg!21268 Regex!20939)) (EmptyLang!20939) (Union!20939 (regOne!42391 Regex!20939) (regTwo!42391 Regex!20939)) )
))
(declare-fun r2!6199 () Regex!20939)

(declare-fun matchR!10395 (Regex!20939 List!73776) Bool)

(assert (=> b!7820249 (= res!3112751 (matchR!10395 r2!6199 s2!3721))))

(declare-fun b!7820250 () Bool)

(declare-fun tp!2307888 () Bool)

(declare-fun tp!2307896 () Bool)

(assert (=> b!7820250 (= e!4626960 (and tp!2307888 tp!2307896))))

(declare-fun b!7820251 () Bool)

(declare-fun res!3112756 () Bool)

(assert (=> b!7820251 (=> (not res!3112756) (not e!4626953))))

(assert (=> b!7820251 (= res!3112756 (isPrefix!6289 s1Rec!453 s1!4101))))

(declare-fun b!7820252 () Bool)

(declare-fun e!4626956 () Bool)

(assert (=> b!7820252 (= e!4626956 e!4626953)))

(declare-fun res!3112754 () Bool)

(assert (=> b!7820252 (=> (not res!3112754) (not e!4626953))))

(assert (=> b!7820252 (= res!3112754 (= lt!2676276 s!14274))))

(assert (=> b!7820252 (= lt!2676276 (++!17973 s1!4101 s2!3721))))

(declare-fun b!7820253 () Bool)

(declare-fun e!4626950 () Bool)

(declare-fun tp!2307885 () Bool)

(assert (=> b!7820253 (= e!4626950 (and tp_is_empty!52233 tp!2307885))))

(declare-fun b!7820254 () Bool)

(declare-fun Unit!168657 () Unit!168654)

(assert (=> b!7820254 (= e!4626954 Unit!168657)))

(declare-fun b!7820255 () Bool)

(declare-fun res!3112753 () Bool)

(assert (=> b!7820255 (=> (not res!3112753) (not e!4626961))))

(declare-fun e!4626957 () Bool)

(assert (=> b!7820255 (= res!3112753 e!4626957)))

(declare-fun res!3112758 () Bool)

(assert (=> b!7820255 (=> res!3112758 e!4626957)))

(declare-fun r1!6261 () Regex!20939)

(assert (=> b!7820255 (= res!3112758 (not (matchR!10395 r1!6261 s1Rec!453)))))

(declare-fun b!7820256 () Bool)

(declare-fun tp!2307895 () Bool)

(declare-fun tp!2307886 () Bool)

(assert (=> b!7820256 (= e!4626955 (and tp!2307895 tp!2307886))))

(declare-fun b!7820257 () Bool)

(declare-fun res!3112755 () Bool)

(assert (=> b!7820257 (=> (not res!3112755) (not e!4626961))))

(assert (=> b!7820257 (= res!3112755 (matchR!10395 r1!6261 s1!4101))))

(declare-fun b!7820258 () Bool)

(declare-fun res!3112759 () Bool)

(assert (=> b!7820258 (=> (not res!3112759) (not e!4626956))))

(declare-fun validRegex!11353 (Regex!20939) Bool)

(assert (=> b!7820258 (= res!3112759 (validRegex!11353 r2!6199))))

(declare-fun b!7820259 () Bool)

(declare-fun tp!2307894 () Bool)

(declare-fun tp!2307891 () Bool)

(assert (=> b!7820259 (= e!4626955 (and tp!2307894 tp!2307891))))

(declare-fun b!7820260 () Bool)

(declare-fun e!4626951 () Bool)

(declare-fun tp!2307883 () Bool)

(assert (=> b!7820260 (= e!4626951 (and tp_is_empty!52233 tp!2307883))))

(declare-fun b!7820247 () Bool)

(declare-fun e!4626949 () Bool)

(declare-fun tp!2307893 () Bool)

(assert (=> b!7820247 (= e!4626949 (and tp_is_empty!52233 tp!2307893))))

(declare-fun res!3112750 () Bool)

(assert (=> start!741974 (=> (not res!3112750) (not e!4626956))))

(assert (=> start!741974 (= res!3112750 (validRegex!11353 r1!6261))))

(assert (=> start!741974 e!4626956))

(assert (=> start!741974 e!4626960))

(assert (=> start!741974 e!4626949))

(assert (=> start!741974 e!4626952))

(assert (=> start!741974 e!4626950))

(assert (=> start!741974 e!4626958))

(assert (=> start!741974 e!4626955))

(assert (=> start!741974 e!4626951))

(declare-fun b!7820261 () Bool)

(assert (=> b!7820261 (= e!4626957 (not (matchR!10395 r2!6199 s2Rec!453)))))

(declare-fun b!7820262 () Bool)

(declare-fun tp!2307887 () Bool)

(assert (=> b!7820262 (= e!4626960 tp!2307887)))

(declare-fun b!7820263 () Bool)

(assert (=> b!7820263 (= e!4626960 tp_is_empty!52233)))

(assert (= (and start!741974 res!3112750) b!7820258))

(assert (= (and b!7820258 res!3112759) b!7820252))

(assert (= (and b!7820252 res!3112754) b!7820251))

(assert (= (and b!7820251 res!3112756) b!7820243))

(assert (= (and b!7820243 res!3112760) b!7820257))

(assert (= (and b!7820257 res!3112755) b!7820249))

(assert (= (and b!7820249 res!3112751) b!7820255))

(assert (= (and b!7820255 (not res!3112758)) b!7820261))

(assert (= (and b!7820255 res!3112753) b!7820242))

(assert (= (and b!7820242 res!3112757) b!7820239))

(assert (= (and b!7820239 c!1439299) b!7820240))

(assert (= (and b!7820239 (not c!1439299)) b!7820254))

(assert (= (and b!7820239 (not res!3112749)) b!7820238))

(assert (= (and b!7820238 (not res!3112752)) b!7820244))

(assert (= (and start!741974 ((_ is ElementMatch!20939) r2!6199)) b!7820263))

(assert (= (and start!741974 ((_ is Concat!29784) r2!6199)) b!7820241))

(assert (= (and start!741974 ((_ is Star!20939) r2!6199)) b!7820262))

(assert (= (and start!741974 ((_ is Union!20939) r2!6199)) b!7820250))

(assert (= (and start!741974 ((_ is Cons!73652) s1!4101)) b!7820247))

(assert (= (and start!741974 ((_ is Cons!73652) s2!3721)) b!7820248))

(assert (= (and start!741974 ((_ is Cons!73652) s2Rec!453)) b!7820253))

(assert (= (and start!741974 ((_ is Cons!73652) s!14274)) b!7820246))

(assert (= (and start!741974 ((_ is ElementMatch!20939) r1!6261)) b!7820237))

(assert (= (and start!741974 ((_ is Concat!29784) r1!6261)) b!7820256))

(assert (= (and start!741974 ((_ is Star!20939) r1!6261)) b!7820245))

(assert (= (and start!741974 ((_ is Union!20939) r1!6261)) b!7820259))

(assert (= (and start!741974 ((_ is Cons!73652) s1Rec!453)) b!7820260))

(declare-fun m!8244784 () Bool)

(assert (=> b!7820243 m!8244784))

(declare-fun m!8244786 () Bool)

(assert (=> b!7820238 m!8244786))

(declare-fun m!8244788 () Bool)

(assert (=> b!7820255 m!8244788))

(declare-fun m!8244790 () Bool)

(assert (=> b!7820239 m!8244790))

(declare-fun m!8244792 () Bool)

(assert (=> b!7820239 m!8244792))

(declare-fun m!8244794 () Bool)

(assert (=> b!7820239 m!8244794))

(declare-fun m!8244796 () Bool)

(assert (=> b!7820239 m!8244796))

(declare-fun m!8244798 () Bool)

(assert (=> b!7820239 m!8244798))

(declare-fun m!8244800 () Bool)

(assert (=> b!7820239 m!8244800))

(declare-fun m!8244802 () Bool)

(assert (=> b!7820239 m!8244802))

(declare-fun m!8244804 () Bool)

(assert (=> b!7820239 m!8244804))

(declare-fun m!8244806 () Bool)

(assert (=> b!7820239 m!8244806))

(declare-fun m!8244808 () Bool)

(assert (=> b!7820239 m!8244808))

(declare-fun m!8244810 () Bool)

(assert (=> b!7820239 m!8244810))

(declare-fun m!8244812 () Bool)

(assert (=> b!7820244 m!8244812))

(declare-fun m!8244814 () Bool)

(assert (=> b!7820261 m!8244814))

(declare-fun m!8244816 () Bool)

(assert (=> b!7820251 m!8244816))

(declare-fun m!8244818 () Bool)

(assert (=> b!7820240 m!8244818))

(declare-fun m!8244820 () Bool)

(assert (=> b!7820258 m!8244820))

(declare-fun m!8244822 () Bool)

(assert (=> b!7820249 m!8244822))

(declare-fun m!8244824 () Bool)

(assert (=> start!741974 m!8244824))

(declare-fun m!8244826 () Bool)

(assert (=> b!7820252 m!8244826))

(declare-fun m!8244828 () Bool)

(assert (=> b!7820257 m!8244828))

(check-sat (not b!7820260) (not b!7820245) (not b!7820258) (not b!7820259) (not b!7820253) (not b!7820243) (not b!7820255) (not b!7820247) (not b!7820240) (not b!7820239) (not b!7820241) (not b!7820257) (not b!7820251) (not start!741974) (not b!7820252) (not b!7820250) (not b!7820246) tp_is_empty!52233 (not b!7820256) (not b!7820249) (not b!7820238) (not b!7820261) (not b!7820244) (not b!7820262) (not b!7820248))
(check-sat)
