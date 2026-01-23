; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573818 () Bool)

(assert start!573818)

(declare-fun b!5489898 () Bool)

(assert (=> b!5489898 true))

(declare-fun b!5489914 () Bool)

(assert (=> b!5489914 true))

(declare-fun bs!1267178 () Bool)

(declare-fun b!5489903 () Bool)

(assert (= bs!1267178 (and b!5489903 b!5489898)))

(declare-fun lambda!293949 () Int)

(declare-fun lambda!293947 () Int)

(assert (=> bs!1267178 (not (= lambda!293949 lambda!293947))))

(declare-fun tp!1509268 () Bool)

(declare-fun e!3396926 () Bool)

(declare-datatypes ((C!31164 0))(
  ( (C!31165 (val!25284 Int)) )
))
(declare-datatypes ((Regex!15447 0))(
  ( (ElementMatch!15447 (c!958647 C!31164)) (Concat!24292 (regOne!31406 Regex!15447) (regTwo!31406 Regex!15447)) (EmptyExpr!15447) (Star!15447 (reg!15776 Regex!15447)) (EmptyLang!15447) (Union!15447 (regOne!31407 Regex!15447) (regTwo!31407 Regex!15447)) )
))
(declare-datatypes ((List!62640 0))(
  ( (Nil!62516) (Cons!62516 (h!68964 Regex!15447) (t!375871 List!62640)) )
))
(declare-datatypes ((Context!9662 0))(
  ( (Context!9663 (exprs!5331 List!62640)) )
))
(declare-fun setElem!36309 () Context!9662)

(declare-fun setRes!36309 () Bool)

(declare-fun setNonEmpty!36309 () Bool)

(declare-fun inv!81864 (Context!9662) Bool)

(assert (=> setNonEmpty!36309 (= setRes!36309 (and tp!1509268 (inv!81864 setElem!36309) e!3396926))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9662))

(declare-fun setRest!36309 () (InoxSet Context!9662))

(assert (=> setNonEmpty!36309 (= z!1189 ((_ map or) (store ((as const (Array Context!9662 Bool)) false) setElem!36309 true) setRest!36309))))

(declare-fun b!5489891 () Bool)

(declare-fun e!3396929 () Bool)

(declare-fun e!3396925 () Bool)

(assert (=> b!5489891 (= e!3396929 (not e!3396925))))

(declare-fun res!2341550 () Bool)

(assert (=> b!5489891 (=> res!2341550 e!3396925)))

(declare-fun e!3396927 () Bool)

(assert (=> b!5489891 (= res!2341550 e!3396927)))

(declare-fun res!2341554 () Bool)

(assert (=> b!5489891 (=> (not res!2341554) (not e!3396927))))

(declare-datatypes ((List!62641 0))(
  ( (Nil!62517) (Cons!62517 (h!68965 Context!9662) (t!375872 List!62641)) )
))
(declare-fun zl!343 () List!62641)

(get-info :version)

(assert (=> b!5489891 (= res!2341554 ((_ is Cons!62517) zl!343))))

(declare-fun lt!2242214 () Bool)

(declare-fun r!7292 () Regex!15447)

(declare-datatypes ((List!62642 0))(
  ( (Nil!62518) (Cons!62518 (h!68966 C!31164) (t!375873 List!62642)) )
))
(declare-fun s!2326 () List!62642)

(declare-fun matchRSpec!2550 (Regex!15447 List!62642) Bool)

(assert (=> b!5489891 (= lt!2242214 (matchRSpec!2550 r!7292 s!2326))))

(declare-fun matchR!7632 (Regex!15447 List!62642) Bool)

(assert (=> b!5489891 (= lt!2242214 (matchR!7632 r!7292 s!2326))))

(declare-datatypes ((Unit!155350 0))(
  ( (Unit!155351) )
))
(declare-fun lt!2242212 () Unit!155350)

(declare-fun mainMatchTheorem!2550 (Regex!15447 List!62642) Unit!155350)

(assert (=> b!5489891 (= lt!2242212 (mainMatchTheorem!2550 r!7292 s!2326))))

(declare-fun e!3396920 () Bool)

(declare-fun tp!1509279 () Bool)

(declare-fun e!3396924 () Bool)

(declare-fun b!5489892 () Bool)

(assert (=> b!5489892 (= e!3396924 (and (inv!81864 (h!68965 zl!343)) e!3396920 tp!1509279))))

(declare-fun b!5489893 () Bool)

(declare-fun res!2341544 () Bool)

(assert (=> b!5489893 (=> res!2341544 e!3396925)))

(assert (=> b!5489893 (= res!2341544 (or (not ((_ is Cons!62517) zl!343)) ((_ is Nil!62518) s!2326) (not (= zl!343 (Cons!62517 (h!68965 zl!343) (t!375872 zl!343))))))))

(declare-fun b!5489894 () Bool)

(declare-fun e!3396921 () Bool)

(declare-fun tp!1509266 () Bool)

(declare-fun tp!1509277 () Bool)

(assert (=> b!5489894 (= e!3396921 (and tp!1509266 tp!1509277))))

(declare-fun b!5489895 () Bool)

(declare-fun res!2341551 () Bool)

(declare-fun e!3396930 () Bool)

(assert (=> b!5489895 (=> res!2341551 e!3396930)))

(declare-fun matchZipper!1631 ((InoxSet Context!9662) List!62642) Bool)

(assert (=> b!5489895 (= res!2341551 (not (matchZipper!1631 z!1189 s!2326)))))

(declare-fun b!5489896 () Bool)

(declare-fun res!2341553 () Bool)

(assert (=> b!5489896 (=> res!2341553 e!3396925)))

(declare-fun isEmpty!34337 (List!62641) Bool)

(assert (=> b!5489896 (= res!2341553 (isEmpty!34337 (t!375872 zl!343)))))

(declare-fun b!5489897 () Bool)

(declare-fun res!2341548 () Bool)

(assert (=> b!5489897 (=> (not res!2341548) (not e!3396929))))

(declare-fun toList!9231 ((InoxSet Context!9662)) List!62641)

(assert (=> b!5489897 (= res!2341548 (= (toList!9231 z!1189) zl!343))))

(declare-fun setIsEmpty!36309 () Bool)

(assert (=> setIsEmpty!36309 setRes!36309))

(assert (=> b!5489898 (= e!3396925 e!3396930)))

(declare-fun res!2341555 () Bool)

(assert (=> b!5489898 (=> res!2341555 e!3396930)))

(assert (=> b!5489898 (= res!2341555 lt!2242214)))

(declare-fun lt!2242206 () List!62640)

(declare-fun exists!2118 (List!62640 Int) Bool)

(assert (=> b!5489898 (= lt!2242214 (exists!2118 lt!2242206 lambda!293947))))

(declare-fun lt!2242201 () Unit!155350)

(declare-fun matchRGenUnionSpec!280 (Regex!15447 List!62640 List!62642) Unit!155350)

(assert (=> b!5489898 (= lt!2242201 (matchRGenUnionSpec!280 r!7292 lt!2242206 s!2326))))

(declare-fun unfocusZipperList!879 (List!62641) List!62640)

(assert (=> b!5489898 (= lt!2242206 (unfocusZipperList!879 zl!343))))

(declare-fun b!5489899 () Bool)

(declare-fun res!2341549 () Bool)

(assert (=> b!5489899 (=> (not res!2341549) (not e!3396929))))

(declare-fun unfocusZipper!1189 (List!62641) Regex!15447)

(assert (=> b!5489899 (= res!2341549 (= r!7292 (unfocusZipper!1189 zl!343)))))

(declare-fun b!5489900 () Bool)

(declare-fun tp!1509272 () Bool)

(declare-fun tp!1509274 () Bool)

(assert (=> b!5489900 (= e!3396921 (and tp!1509272 tp!1509274))))

(declare-fun b!5489901 () Bool)

(declare-fun e!3396932 () Bool)

(declare-fun tp!1509278 () Bool)

(assert (=> b!5489901 (= e!3396932 tp!1509278)))

(declare-fun b!5489902 () Bool)

(declare-fun tp!1509275 () Bool)

(declare-fun tp!1509270 () Bool)

(assert (=> b!5489902 (= e!3396932 (and tp!1509275 tp!1509270))))

(declare-fun b!5489890 () Bool)

(declare-fun tp!1509276 () Bool)

(assert (=> b!5489890 (= e!3396920 tp!1509276)))

(declare-fun res!2341545 () Bool)

(assert (=> start!573818 (=> (not res!2341545) (not e!3396929))))

(declare-fun validRegex!7183 (Regex!15447) Bool)

(assert (=> start!573818 (= res!2341545 (validRegex!7183 r!7292))))

(assert (=> start!573818 e!3396929))

(assert (=> start!573818 e!3396932))

(declare-fun e!3396922 () Bool)

(assert (=> start!573818 e!3396922))

(assert (=> start!573818 e!3396921))

(declare-fun condSetEmpty!36309 () Bool)

(assert (=> start!573818 (= condSetEmpty!36309 (= z!1189 ((as const (Array Context!9662 Bool)) false)))))

(assert (=> start!573818 setRes!36309))

(assert (=> start!573818 e!3396924))

(declare-fun e!3396923 () Bool)

(declare-fun e!3396928 () Bool)

(assert (=> b!5489903 (= e!3396923 e!3396928)))

(declare-fun res!2341547 () Bool)

(assert (=> b!5489903 (=> res!2341547 e!3396928)))

(declare-fun lt!2242213 () Context!9662)

(declare-fun forall!14644 (List!62640 Int) Bool)

(assert (=> b!5489903 (= res!2341547 (not (forall!14644 (exprs!5331 lt!2242213) lambda!293949)))))

(assert (=> b!5489903 (forall!14644 (exprs!5331 lt!2242213) lambda!293949)))

(declare-fun lt!2242202 () Unit!155350)

(declare-fun lemmaContextForallValidExprs!52 (Context!9662 List!62640) Unit!155350)

(assert (=> b!5489903 (= lt!2242202 (lemmaContextForallValidExprs!52 lt!2242213 (exprs!5331 lt!2242213)))))

(declare-fun lambda!293948 () Int)

(declare-fun getWitness!908 (List!62641 Int) Context!9662)

(assert (=> b!5489903 (= lt!2242213 (getWitness!908 zl!343 lambda!293948))))

(declare-fun b!5489904 () Bool)

(declare-fun tp!1509271 () Bool)

(assert (=> b!5489904 (= e!3396926 tp!1509271)))

(declare-fun b!5489905 () Bool)

(declare-fun e!3396931 () Bool)

(assert (=> b!5489905 (= e!3396928 e!3396931)))

(declare-fun res!2341552 () Bool)

(assert (=> b!5489905 (=> res!2341552 e!3396931)))

(declare-fun lt!2242211 () Int)

(declare-fun lt!2242208 () List!62641)

(declare-fun zipperDepthTotal!212 (List!62641) Int)

(assert (=> b!5489905 (= res!2341552 (<= lt!2242211 (zipperDepthTotal!212 lt!2242208)))))

(assert (=> b!5489905 (= lt!2242208 (Cons!62517 lt!2242213 Nil!62517))))

(declare-fun lt!2242207 () Int)

(assert (=> b!5489905 (< lt!2242207 lt!2242211)))

(assert (=> b!5489905 (= lt!2242211 (zipperDepthTotal!212 zl!343))))

(declare-fun contextDepthTotal!192 (Context!9662) Int)

(assert (=> b!5489905 (= lt!2242207 (contextDepthTotal!192 lt!2242213))))

(declare-fun lt!2242210 () Unit!155350)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!20 (List!62641 Context!9662) Unit!155350)

(assert (=> b!5489905 (= lt!2242210 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!20 zl!343 lt!2242213))))

(declare-fun b!5489906 () Bool)

(declare-fun tp!1509269 () Bool)

(assert (=> b!5489906 (= e!3396921 tp!1509269)))

(declare-fun b!5489907 () Bool)

(assert (=> b!5489907 (= e!3396927 (isEmpty!34337 (t!375872 zl!343)))))

(declare-fun b!5489908 () Bool)

(declare-fun tp_is_empty!40147 () Bool)

(assert (=> b!5489908 (= e!3396921 tp_is_empty!40147)))

(declare-fun b!5489909 () Bool)

(assert (=> b!5489909 (= e!3396932 tp_is_empty!40147)))

(declare-fun b!5489910 () Bool)

(declare-fun tp!1509273 () Bool)

(assert (=> b!5489910 (= e!3396922 (and tp_is_empty!40147 tp!1509273))))

(declare-fun b!5489911 () Bool)

(declare-fun res!2341556 () Bool)

(assert (=> b!5489911 (=> res!2341556 e!3396930)))

(assert (=> b!5489911 (= res!2341556 (exists!2118 lt!2242206 lambda!293947))))

(declare-fun b!5489912 () Bool)

(declare-fun tp!1509265 () Bool)

(declare-fun tp!1509267 () Bool)

(assert (=> b!5489912 (= e!3396932 (and tp!1509265 tp!1509267))))

(declare-fun b!5489913 () Bool)

(assert (=> b!5489913 (= e!3396931 true)))

(declare-fun lt!2242215 () Regex!15447)

(declare-fun contains!19759 (List!62640 Regex!15447) Bool)

(assert (=> b!5489913 (contains!19759 lt!2242206 lt!2242215)))

(declare-fun lt!2242209 () Unit!155350)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!4 (List!62641 Context!9662) Unit!155350)

(assert (=> b!5489913 (= lt!2242209 (lemmaZipperContainsContextUnfocusListContainsConcat!4 zl!343 lt!2242213))))

(declare-fun lt!2242203 () (InoxSet Context!9662))

(assert (=> b!5489913 (= (matchR!7632 lt!2242215 s!2326) (matchZipper!1631 lt!2242203 s!2326))))

(declare-fun lt!2242204 () Unit!155350)

(declare-fun theoremZipperRegexEquiv!605 ((InoxSet Context!9662) List!62641 Regex!15447 List!62642) Unit!155350)

(assert (=> b!5489913 (= lt!2242204 (theoremZipperRegexEquiv!605 lt!2242203 lt!2242208 lt!2242215 s!2326))))

(declare-fun generalisedConcat!1066 (List!62640) Regex!15447)

(assert (=> b!5489913 (= lt!2242215 (generalisedConcat!1066 (exprs!5331 lt!2242213)))))

(assert (=> b!5489913 (= lt!2242203 (store ((as const (Array Context!9662 Bool)) false) lt!2242213 true))))

(assert (=> b!5489914 (= e!3396930 e!3396923)))

(declare-fun res!2341546 () Bool)

(assert (=> b!5489914 (=> res!2341546 e!3396923)))

(declare-fun exists!2119 (List!62641 Int) Bool)

(assert (=> b!5489914 (= res!2341546 (not (exists!2119 zl!343 lambda!293948)))))

(assert (=> b!5489914 (exists!2119 zl!343 lambda!293948)))

(declare-fun lt!2242205 () Unit!155350)

(declare-fun lemmaZipperMatchesExistsMatchingContext!74 (List!62641 List!62642) Unit!155350)

(assert (=> b!5489914 (= lt!2242205 (lemmaZipperMatchesExistsMatchingContext!74 zl!343 s!2326))))

(assert (= (and start!573818 res!2341545) b!5489897))

(assert (= (and b!5489897 res!2341548) b!5489899))

(assert (= (and b!5489899 res!2341549) b!5489891))

(assert (= (and b!5489891 res!2341554) b!5489907))

(assert (= (and b!5489891 (not res!2341550)) b!5489893))

(assert (= (and b!5489893 (not res!2341544)) b!5489896))

(assert (= (and b!5489896 (not res!2341553)) b!5489898))

(assert (= (and b!5489898 (not res!2341555)) b!5489911))

(assert (= (and b!5489911 (not res!2341556)) b!5489895))

(assert (= (and b!5489895 (not res!2341551)) b!5489914))

(assert (= (and b!5489914 (not res!2341546)) b!5489903))

(assert (= (and b!5489903 (not res!2341547)) b!5489905))

(assert (= (and b!5489905 (not res!2341552)) b!5489913))

(assert (= (and start!573818 ((_ is ElementMatch!15447) r!7292)) b!5489909))

(assert (= (and start!573818 ((_ is Concat!24292) r!7292)) b!5489912))

(assert (= (and start!573818 ((_ is Star!15447) r!7292)) b!5489901))

(assert (= (and start!573818 ((_ is Union!15447) r!7292)) b!5489902))

(assert (= (and start!573818 ((_ is Cons!62518) s!2326)) b!5489910))

(declare-fun rr!35 () Regex!15447)

(assert (= (and start!573818 ((_ is ElementMatch!15447) rr!35)) b!5489908))

(assert (= (and start!573818 ((_ is Concat!24292) rr!35)) b!5489894))

(assert (= (and start!573818 ((_ is Star!15447) rr!35)) b!5489906))

(assert (= (and start!573818 ((_ is Union!15447) rr!35)) b!5489900))

(assert (= (and start!573818 condSetEmpty!36309) setIsEmpty!36309))

(assert (= (and start!573818 (not condSetEmpty!36309)) setNonEmpty!36309))

(assert (= setNonEmpty!36309 b!5489904))

(assert (= b!5489892 b!5489890))

(assert (= (and start!573818 ((_ is Cons!62517) zl!343)) b!5489892))

(declare-fun m!6503222 () Bool)

(assert (=> b!5489899 m!6503222))

(declare-fun m!6503224 () Bool)

(assert (=> b!5489911 m!6503224))

(declare-fun m!6503226 () Bool)

(assert (=> b!5489913 m!6503226))

(declare-fun m!6503228 () Bool)

(assert (=> b!5489913 m!6503228))

(declare-fun m!6503230 () Bool)

(assert (=> b!5489913 m!6503230))

(declare-fun m!6503232 () Bool)

(assert (=> b!5489913 m!6503232))

(declare-fun m!6503234 () Bool)

(assert (=> b!5489913 m!6503234))

(declare-fun m!6503236 () Bool)

(assert (=> b!5489913 m!6503236))

(declare-fun m!6503238 () Bool)

(assert (=> b!5489913 m!6503238))

(declare-fun m!6503240 () Bool)

(assert (=> setNonEmpty!36309 m!6503240))

(declare-fun m!6503242 () Bool)

(assert (=> b!5489895 m!6503242))

(declare-fun m!6503244 () Bool)

(assert (=> start!573818 m!6503244))

(declare-fun m!6503246 () Bool)

(assert (=> b!5489914 m!6503246))

(assert (=> b!5489914 m!6503246))

(declare-fun m!6503248 () Bool)

(assert (=> b!5489914 m!6503248))

(declare-fun m!6503250 () Bool)

(assert (=> b!5489907 m!6503250))

(assert (=> b!5489898 m!6503224))

(declare-fun m!6503252 () Bool)

(assert (=> b!5489898 m!6503252))

(declare-fun m!6503254 () Bool)

(assert (=> b!5489898 m!6503254))

(declare-fun m!6503256 () Bool)

(assert (=> b!5489891 m!6503256))

(declare-fun m!6503258 () Bool)

(assert (=> b!5489891 m!6503258))

(declare-fun m!6503260 () Bool)

(assert (=> b!5489891 m!6503260))

(declare-fun m!6503262 () Bool)

(assert (=> b!5489897 m!6503262))

(declare-fun m!6503264 () Bool)

(assert (=> b!5489892 m!6503264))

(assert (=> b!5489896 m!6503250))

(declare-fun m!6503266 () Bool)

(assert (=> b!5489905 m!6503266))

(declare-fun m!6503268 () Bool)

(assert (=> b!5489905 m!6503268))

(declare-fun m!6503270 () Bool)

(assert (=> b!5489905 m!6503270))

(declare-fun m!6503272 () Bool)

(assert (=> b!5489905 m!6503272))

(declare-fun m!6503274 () Bool)

(assert (=> b!5489903 m!6503274))

(assert (=> b!5489903 m!6503274))

(declare-fun m!6503276 () Bool)

(assert (=> b!5489903 m!6503276))

(declare-fun m!6503278 () Bool)

(assert (=> b!5489903 m!6503278))

(check-sat (not b!5489897) (not b!5489910) (not b!5489907) tp_is_empty!40147 (not b!5489899) (not b!5489894) (not b!5489901) (not b!5489904) (not b!5489905) (not b!5489913) (not b!5489914) (not b!5489890) (not b!5489911) (not b!5489898) (not start!573818) (not b!5489891) (not b!5489895) (not b!5489903) (not b!5489902) (not setNonEmpty!36309) (not b!5489912) (not b!5489892) (not b!5489900) (not b!5489896) (not b!5489906))
(check-sat)
