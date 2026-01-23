; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734232 () Bool)

(assert start!734232)

(declare-fun b!7623221 () Bool)

(assert (=> b!7623221 true))

(assert (=> b!7623221 true))

(declare-fun b!7623213 () Bool)

(declare-fun res!3052295 () Bool)

(declare-fun e!4532754 () Bool)

(assert (=> b!7623213 (=> res!3052295 e!4532754)))

(declare-datatypes ((C!40976 0))(
  ( (C!40977 (val!30928 Int)) )
))
(declare-datatypes ((Regex!20325 0))(
  ( (ElementMatch!20325 (c!1404870 C!40976)) (Concat!29170 (regOne!41162 Regex!20325) (regTwo!41162 Regex!20325)) (EmptyExpr!20325) (Star!20325 (reg!20654 Regex!20325)) (EmptyLang!20325) (Union!20325 (regOne!41163 Regex!20325) (regTwo!41163 Regex!20325)) )
))
(declare-fun r!14126 () Regex!20325)

(declare-datatypes ((List!73178 0))(
  ( (Nil!73054) (Cons!73054 (h!79502 C!40976) (t!387913 List!73178)) )
))
(declare-datatypes ((tuple2!69212 0))(
  ( (tuple2!69213 (_1!37909 List!73178) (_2!37909 List!73178)) )
))
(declare-fun cut!9 () tuple2!69212)

(declare-fun matchR!9832 (Regex!20325 List!73178) Bool)

(assert (=> b!7623213 (= res!3052295 (not (matchR!9832 (reg!20654 r!14126) (_1!37909 cut!9))))))

(declare-fun b!7623214 () Bool)

(declare-fun e!4532758 () Bool)

(declare-fun tp_is_empty!51005 () Bool)

(declare-fun tp!2225694 () Bool)

(assert (=> b!7623214 (= e!4532758 (and tp_is_empty!51005 tp!2225694))))

(declare-fun b!7623215 () Bool)

(declare-fun e!4532755 () Bool)

(declare-fun tp!2225697 () Bool)

(declare-fun tp!2225698 () Bool)

(assert (=> b!7623215 (= e!4532755 (and tp!2225697 tp!2225698))))

(declare-fun res!3052292 () Bool)

(declare-fun e!4532756 () Bool)

(assert (=> start!734232 (=> (not res!3052292) (not e!4532756))))

(declare-fun validRegex!10745 (Regex!20325) Bool)

(assert (=> start!734232 (= res!3052292 (validRegex!10745 r!14126))))

(assert (=> start!734232 e!4532756))

(assert (=> start!734232 e!4532755))

(assert (=> start!734232 e!4532758))

(declare-fun e!4532752 () Bool)

(declare-fun e!4532757 () Bool)

(assert (=> start!734232 (and e!4532752 e!4532757)))

(declare-fun b!7623216 () Bool)

(declare-fun res!3052293 () Bool)

(assert (=> b!7623216 (=> (not res!3052293) (not e!4532756))))

(declare-fun s!9605 () List!73178)

(declare-fun isEmpty!41678 (List!73178) Bool)

(assert (=> b!7623216 (= res!3052293 (not (isEmpty!41678 s!9605)))))

(declare-fun b!7623217 () Bool)

(assert (=> b!7623217 (= e!4532754 (validRegex!10745 r!14126))))

(declare-fun b!7623218 () Bool)

(declare-fun tp!2225696 () Bool)

(declare-fun tp!2225692 () Bool)

(assert (=> b!7623218 (= e!4532755 (and tp!2225696 tp!2225692))))

(declare-fun b!7623219 () Bool)

(declare-datatypes ((Unit!167540 0))(
  ( (Unit!167541) )
))
(declare-fun e!4532759 () Unit!167540)

(declare-fun Unit!167542 () Unit!167540)

(assert (=> b!7623219 (= e!4532759 Unit!167542)))

(declare-fun b!7623220 () Bool)

(declare-fun tp!2225693 () Bool)

(assert (=> b!7623220 (= e!4532757 (and tp_is_empty!51005 tp!2225693))))

(declare-fun e!4532753 () Bool)

(assert (=> b!7623221 (= e!4532756 (not e!4532753))))

(declare-fun res!3052296 () Bool)

(assert (=> b!7623221 (=> res!3052296 e!4532753)))

(declare-fun lt!2657322 () Bool)

(assert (=> b!7623221 (= res!3052296 lt!2657322)))

(declare-fun lambda!468569 () Int)

(declare-fun Exists!4481 (Int) Bool)

(assert (=> b!7623221 (= lt!2657322 (Exists!4481 lambda!468569))))

(declare-datatypes ((Option!17400 0))(
  ( (None!17399) (Some!17399 (v!54534 tuple2!69212)) )
))
(declare-fun isDefined!14016 (Option!17400) Bool)

(declare-fun findConcatSeparation!3430 (Regex!20325 Regex!20325 List!73178 List!73178 List!73178) Option!17400)

(assert (=> b!7623221 (= lt!2657322 (isDefined!14016 (findConcatSeparation!3430 (reg!20654 r!14126) r!14126 Nil!73054 s!9605 s!9605)))))

(declare-fun lt!2657320 () Unit!167540)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3188 (Regex!20325 Regex!20325 List!73178) Unit!167540)

(assert (=> b!7623221 (= lt!2657320 (lemmaFindConcatSeparationEquivalentToExists!3188 (reg!20654 r!14126) r!14126 s!9605))))

(declare-fun b!7623222 () Bool)

(declare-fun tp!2225695 () Bool)

(assert (=> b!7623222 (= e!4532752 (and tp_is_empty!51005 tp!2225695))))

(declare-fun b!7623223 () Bool)

(declare-fun Unit!167543 () Unit!167540)

(assert (=> b!7623223 (= e!4532759 Unit!167543)))

(declare-fun lt!2657318 () Unit!167540)

(declare-fun lemmaStarAppConcat!6 (Regex!20325 List!73178) Unit!167540)

(assert (=> b!7623223 (= lt!2657318 (lemmaStarAppConcat!6 (reg!20654 r!14126) s!9605))))

(assert (=> b!7623223 (matchR!9832 (Concat!29170 (reg!20654 r!14126) r!14126) s!9605)))

(declare-fun lt!2657321 () Unit!167540)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!238 (Regex!20325 Regex!20325 List!73178) Unit!167540)

(assert (=> b!7623223 (= lt!2657321 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!238 (reg!20654 r!14126) r!14126 s!9605))))

(assert (=> b!7623223 false))

(declare-fun b!7623224 () Bool)

(declare-fun tp!2225699 () Bool)

(assert (=> b!7623224 (= e!4532755 tp!2225699)))

(declare-fun b!7623225 () Bool)

(assert (=> b!7623225 (= e!4532753 e!4532754)))

(declare-fun res!3052294 () Bool)

(assert (=> b!7623225 (=> res!3052294 e!4532754)))

(declare-fun ++!17631 (List!73178 List!73178) List!73178)

(assert (=> b!7623225 (= res!3052294 (not (= (++!17631 (_1!37909 cut!9) (_2!37909 cut!9)) s!9605)))))

(declare-fun lt!2657319 () Unit!167540)

(assert (=> b!7623225 (= lt!2657319 e!4532759)))

(declare-fun c!1404869 () Bool)

(assert (=> b!7623225 (= c!1404869 (matchR!9832 r!14126 s!9605))))

(declare-fun b!7623226 () Bool)

(assert (=> b!7623226 (= e!4532755 tp_is_empty!51005)))

(declare-fun b!7623227 () Bool)

(declare-fun res!3052291 () Bool)

(assert (=> b!7623227 (=> (not res!3052291) (not e!4532756))))

(get-info :version)

(assert (=> b!7623227 (= res!3052291 (and (not ((_ is EmptyExpr!20325) r!14126)) (not ((_ is EmptyLang!20325) r!14126)) (not ((_ is ElementMatch!20325) r!14126)) (not ((_ is Union!20325) r!14126)) ((_ is Star!20325) r!14126)))))

(assert (= (and start!734232 res!3052292) b!7623227))

(assert (= (and b!7623227 res!3052291) b!7623216))

(assert (= (and b!7623216 res!3052293) b!7623221))

(assert (= (and b!7623221 (not res!3052296)) b!7623225))

(assert (= (and b!7623225 c!1404869) b!7623223))

(assert (= (and b!7623225 (not c!1404869)) b!7623219))

(assert (= (and b!7623225 (not res!3052294)) b!7623213))

(assert (= (and b!7623213 (not res!3052295)) b!7623217))

(assert (= (and start!734232 ((_ is ElementMatch!20325) r!14126)) b!7623226))

(assert (= (and start!734232 ((_ is Concat!29170) r!14126)) b!7623218))

(assert (= (and start!734232 ((_ is Star!20325) r!14126)) b!7623224))

(assert (= (and start!734232 ((_ is Union!20325) r!14126)) b!7623215))

(assert (= (and start!734232 ((_ is Cons!73054) s!9605)) b!7623214))

(assert (= (and start!734232 ((_ is Cons!73054) (_1!37909 cut!9))) b!7623222))

(assert (= (and start!734232 ((_ is Cons!73054) (_2!37909 cut!9))) b!7623220))

(declare-fun m!8154142 () Bool)

(assert (=> b!7623225 m!8154142))

(declare-fun m!8154144 () Bool)

(assert (=> b!7623225 m!8154144))

(declare-fun m!8154146 () Bool)

(assert (=> b!7623221 m!8154146))

(declare-fun m!8154148 () Bool)

(assert (=> b!7623221 m!8154148))

(assert (=> b!7623221 m!8154148))

(declare-fun m!8154150 () Bool)

(assert (=> b!7623221 m!8154150))

(declare-fun m!8154152 () Bool)

(assert (=> b!7623221 m!8154152))

(declare-fun m!8154154 () Bool)

(assert (=> b!7623223 m!8154154))

(declare-fun m!8154156 () Bool)

(assert (=> b!7623223 m!8154156))

(declare-fun m!8154158 () Bool)

(assert (=> b!7623223 m!8154158))

(declare-fun m!8154160 () Bool)

(assert (=> b!7623216 m!8154160))

(declare-fun m!8154162 () Bool)

(assert (=> b!7623217 m!8154162))

(declare-fun m!8154164 () Bool)

(assert (=> b!7623213 m!8154164))

(assert (=> start!734232 m!8154162))

(check-sat (not b!7623217) (not b!7623225) (not b!7623218) (not b!7623215) (not b!7623221) (not b!7623220) (not b!7623222) (not b!7623214) tp_is_empty!51005 (not start!734232) (not b!7623223) (not b!7623216) (not b!7623224) (not b!7623213))
(check-sat)
