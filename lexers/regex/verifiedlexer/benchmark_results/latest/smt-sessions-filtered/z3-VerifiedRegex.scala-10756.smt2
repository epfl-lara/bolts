; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549798 () Bool)

(assert start!549798)

(declare-fun b!5196001 () Bool)

(assert (=> b!5196001 true))

(assert (=> b!5196001 true))

(declare-fun lambda!260000 () Int)

(declare-fun lambda!259999 () Int)

(assert (=> b!5196001 (not (= lambda!260000 lambda!259999))))

(assert (=> b!5196001 true))

(assert (=> b!5196001 true))

(declare-fun b!5196005 () Bool)

(assert (=> b!5196005 true))

(declare-fun b!5195993 () Bool)

(declare-fun e!3236021 () Bool)

(declare-fun tp!1457657 () Bool)

(declare-fun tp!1457652 () Bool)

(assert (=> b!5195993 (= e!3236021 (and tp!1457657 tp!1457652))))

(declare-fun res!2207184 () Bool)

(declare-fun e!3236028 () Bool)

(assert (=> start!549798 (=> (not res!2207184) (not e!3236028))))

(declare-datatypes ((C!29788 0))(
  ( (C!29789 (val!24596 Int)) )
))
(declare-datatypes ((Regex!14759 0))(
  ( (ElementMatch!14759 (c!895530 C!29788)) (Concat!23604 (regOne!30030 Regex!14759) (regTwo!30030 Regex!14759)) (EmptyExpr!14759) (Star!14759 (reg!15088 Regex!14759)) (EmptyLang!14759) (Union!14759 (regOne!30031 Regex!14759) (regTwo!30031 Regex!14759)) )
))
(declare-fun r!7292 () Regex!14759)

(declare-fun validRegex!6495 (Regex!14759) Bool)

(assert (=> start!549798 (= res!2207184 (validRegex!6495 r!7292))))

(assert (=> start!549798 e!3236028))

(assert (=> start!549798 e!3236021))

(declare-fun condSetEmpty!32890 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60576 0))(
  ( (Nil!60452) (Cons!60452 (h!66900 Regex!14759) (t!373729 List!60576)) )
))
(declare-datatypes ((Context!8286 0))(
  ( (Context!8287 (exprs!4643 List!60576)) )
))
(declare-fun z!1189 () (InoxSet Context!8286))

(assert (=> start!549798 (= condSetEmpty!32890 (= z!1189 ((as const (Array Context!8286 Bool)) false)))))

(declare-fun setRes!32890 () Bool)

(assert (=> start!549798 setRes!32890))

(declare-fun e!3236025 () Bool)

(assert (=> start!549798 e!3236025))

(declare-fun e!3236029 () Bool)

(assert (=> start!549798 e!3236029))

(declare-fun b!5195994 () Bool)

(declare-fun tp!1457655 () Bool)

(declare-datatypes ((List!60577 0))(
  ( (Nil!60453) (Cons!60453 (h!66901 Context!8286) (t!373730 List!60577)) )
))
(declare-fun zl!343 () List!60577)

(declare-fun e!3236020 () Bool)

(declare-fun inv!80144 (Context!8286) Bool)

(assert (=> b!5195994 (= e!3236025 (and (inv!80144 (h!66901 zl!343)) e!3236020 tp!1457655))))

(declare-fun b!5195995 () Bool)

(declare-fun res!2207177 () Bool)

(declare-fun e!3236023 () Bool)

(assert (=> b!5195995 (=> res!2207177 e!3236023)))

(get-info :version)

(assert (=> b!5195995 (= res!2207177 (or ((_ is EmptyExpr!14759) r!7292) ((_ is EmptyLang!14759) r!7292) ((_ is ElementMatch!14759) r!7292) ((_ is Union!14759) r!7292) (not ((_ is Concat!23604) r!7292))))))

(declare-fun b!5195996 () Bool)

(declare-fun res!2207179 () Bool)

(declare-fun e!3236027 () Bool)

(assert (=> b!5195996 (=> res!2207179 e!3236027)))

(declare-fun isEmpty!32370 (List!60576) Bool)

(assert (=> b!5195996 (= res!2207179 (not (isEmpty!32370 (t!373729 (exprs!4643 (h!66901 zl!343))))))))

(declare-fun b!5195997 () Bool)

(declare-fun tp_is_empty!38771 () Bool)

(assert (=> b!5195997 (= e!3236021 tp_is_empty!38771)))

(declare-fun b!5195998 () Bool)

(declare-fun tp!1457661 () Bool)

(declare-fun tp!1457653 () Bool)

(assert (=> b!5195998 (= e!3236021 (and tp!1457661 tp!1457653))))

(declare-fun b!5195999 () Bool)

(declare-fun tp!1457654 () Bool)

(assert (=> b!5195999 (= e!3236021 tp!1457654)))

(declare-fun b!5196000 () Bool)

(declare-fun e!3236026 () Bool)

(assert (=> b!5196000 (= e!3236026 true)))

(declare-fun lt!2138895 () (InoxSet Context!8286))

(declare-fun lt!2138892 () List!60576)

(declare-datatypes ((List!60578 0))(
  ( (Nil!60454) (Cons!60454 (h!66902 C!29788) (t!373731 List!60578)) )
))
(declare-fun s!2326 () List!60578)

(declare-fun derivationStepZipperUp!131 (Context!8286 C!29788) (InoxSet Context!8286))

(assert (=> b!5196000 (= lt!2138895 (derivationStepZipperUp!131 (Context!8287 lt!2138892) (h!66902 s!2326)))))

(declare-fun lt!2138896 () (InoxSet Context!8286))

(assert (=> b!5196000 (= lt!2138896 (derivationStepZipperUp!131 (Context!8287 (Cons!60452 (regOne!30030 r!7292) lt!2138892)) (h!66902 s!2326)))))

(assert (=> b!5196000 (= lt!2138892 (Cons!60452 (regTwo!30030 r!7292) Nil!60452))))

(assert (=> b!5196001 (= e!3236023 e!3236027)))

(declare-fun res!2207181 () Bool)

(assert (=> b!5196001 (=> res!2207181 e!3236027)))

(declare-fun lt!2138890 () Bool)

(declare-fun lt!2138889 () Bool)

(assert (=> b!5196001 (= res!2207181 (or (not (= lt!2138889 lt!2138890)) ((_ is Nil!60454) s!2326)))))

(declare-fun Exists!1940 (Int) Bool)

(assert (=> b!5196001 (= (Exists!1940 lambda!259999) (Exists!1940 lambda!260000))))

(declare-datatypes ((Unit!152352 0))(
  ( (Unit!152353) )
))
(declare-fun lt!2138897 () Unit!152352)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!594 (Regex!14759 Regex!14759 List!60578) Unit!152352)

(assert (=> b!5196001 (= lt!2138897 (lemmaExistCutMatchRandMatchRSpecEquivalent!594 (regOne!30030 r!7292) (regTwo!30030 r!7292) s!2326))))

(assert (=> b!5196001 (= lt!2138890 (Exists!1940 lambda!259999))))

(declare-datatypes ((tuple2!63916 0))(
  ( (tuple2!63917 (_1!35261 List!60578) (_2!35261 List!60578)) )
))
(declare-datatypes ((Option!14870 0))(
  ( (None!14869) (Some!14869 (v!50898 tuple2!63916)) )
))
(declare-fun isDefined!11573 (Option!14870) Bool)

(declare-fun findConcatSeparation!1284 (Regex!14759 Regex!14759 List!60578 List!60578 List!60578) Option!14870)

(assert (=> b!5196001 (= lt!2138890 (isDefined!11573 (findConcatSeparation!1284 (regOne!30030 r!7292) (regTwo!30030 r!7292) Nil!60454 s!2326 s!2326)))))

(declare-fun lt!2138893 () Unit!152352)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1048 (Regex!14759 Regex!14759 List!60578) Unit!152352)

(assert (=> b!5196001 (= lt!2138893 (lemmaFindConcatSeparationEquivalentToExists!1048 (regOne!30030 r!7292) (regTwo!30030 r!7292) s!2326))))

(declare-fun b!5196002 () Bool)

(declare-fun res!2207178 () Bool)

(assert (=> b!5196002 (=> (not res!2207178) (not e!3236028))))

(declare-fun unfocusZipper!501 (List!60577) Regex!14759)

(assert (=> b!5196002 (= res!2207178 (= r!7292 (unfocusZipper!501 zl!343)))))

(declare-fun b!5196003 () Bool)

(assert (=> b!5196003 (= e!3236028 (not e!3236023))))

(declare-fun res!2207173 () Bool)

(assert (=> b!5196003 (=> res!2207173 e!3236023)))

(assert (=> b!5196003 (= res!2207173 (not ((_ is Cons!60453) zl!343)))))

(declare-fun matchRSpec!1862 (Regex!14759 List!60578) Bool)

(assert (=> b!5196003 (= lt!2138889 (matchRSpec!1862 r!7292 s!2326))))

(declare-fun matchR!6944 (Regex!14759 List!60578) Bool)

(assert (=> b!5196003 (= lt!2138889 (matchR!6944 r!7292 s!2326))))

(declare-fun lt!2138891 () Unit!152352)

(declare-fun mainMatchTheorem!1862 (Regex!14759 List!60578) Unit!152352)

(assert (=> b!5196003 (= lt!2138891 (mainMatchTheorem!1862 r!7292 s!2326))))

(declare-fun b!5196004 () Bool)

(declare-fun tp!1457656 () Bool)

(assert (=> b!5196004 (= e!3236020 tp!1457656)))

(declare-fun setIsEmpty!32890 () Bool)

(assert (=> setIsEmpty!32890 setRes!32890))

(declare-fun e!3236022 () Bool)

(assert (=> b!5196005 (= e!3236022 e!3236026)))

(declare-fun res!2207174 () Bool)

(assert (=> b!5196005 (=> res!2207174 e!3236026)))

(declare-fun lt!2138898 () (InoxSet Context!8286))

(declare-fun derivationStepZipper!1039 ((InoxSet Context!8286) C!29788) (InoxSet Context!8286))

(assert (=> b!5196005 (= res!2207174 (not (= (derivationStepZipper!1039 z!1189 (h!66902 s!2326)) lt!2138898)))))

(declare-fun lambda!260001 () Int)

(declare-fun flatMap!490 ((InoxSet Context!8286) Int) (InoxSet Context!8286))

(assert (=> b!5196005 (= (flatMap!490 z!1189 lambda!260001) (derivationStepZipperUp!131 (h!66901 zl!343) (h!66902 s!2326)))))

(declare-fun lt!2138899 () Unit!152352)

(declare-fun lemmaFlatMapOnSingletonSet!22 ((InoxSet Context!8286) Context!8286 Int) Unit!152352)

(assert (=> b!5196005 (= lt!2138899 (lemmaFlatMapOnSingletonSet!22 z!1189 (h!66901 zl!343) lambda!260001))))

(declare-fun tp!1457660 () Bool)

(declare-fun e!3236024 () Bool)

(declare-fun setNonEmpty!32890 () Bool)

(declare-fun setElem!32890 () Context!8286)

(assert (=> setNonEmpty!32890 (= setRes!32890 (and tp!1457660 (inv!80144 setElem!32890) e!3236024))))

(declare-fun setRest!32890 () (InoxSet Context!8286))

(assert (=> setNonEmpty!32890 (= z!1189 ((_ map or) (store ((as const (Array Context!8286 Bool)) false) setElem!32890 true) setRest!32890))))

(declare-fun b!5196006 () Bool)

(declare-fun res!2207180 () Bool)

(assert (=> b!5196006 (=> res!2207180 e!3236023)))

(declare-fun generalisedUnion!688 (List!60576) Regex!14759)

(declare-fun unfocusZipperList!201 (List!60577) List!60576)

(assert (=> b!5196006 (= res!2207180 (not (= r!7292 (generalisedUnion!688 (unfocusZipperList!201 zl!343)))))))

(declare-fun b!5196007 () Bool)

(declare-fun res!2207175 () Bool)

(assert (=> b!5196007 (=> (not res!2207175) (not e!3236028))))

(declare-fun toList!8543 ((InoxSet Context!8286)) List!60577)

(assert (=> b!5196007 (= res!2207175 (= (toList!8543 z!1189) zl!343))))

(declare-fun b!5196008 () Bool)

(assert (=> b!5196008 (= e!3236027 e!3236022)))

(declare-fun res!2207183 () Bool)

(assert (=> b!5196008 (=> res!2207183 e!3236022)))

(declare-fun lt!2138894 () (InoxSet Context!8286))

(assert (=> b!5196008 (= res!2207183 (not (= lt!2138894 lt!2138898)))))

(declare-fun derivationStepZipperDown!208 (Regex!14759 Context!8286 C!29788) (InoxSet Context!8286))

(assert (=> b!5196008 (= lt!2138898 (derivationStepZipperDown!208 r!7292 (Context!8287 Nil!60452) (h!66902 s!2326)))))

(assert (=> b!5196008 (= lt!2138894 (derivationStepZipperUp!131 (Context!8287 (Cons!60452 r!7292 Nil!60452)) (h!66902 s!2326)))))

(declare-fun b!5196009 () Bool)

(declare-fun res!2207176 () Bool)

(assert (=> b!5196009 (=> res!2207176 e!3236023)))

(declare-fun generalisedConcat!428 (List!60576) Regex!14759)

(assert (=> b!5196009 (= res!2207176 (not (= r!7292 (generalisedConcat!428 (exprs!4643 (h!66901 zl!343))))))))

(declare-fun b!5196010 () Bool)

(declare-fun tp!1457659 () Bool)

(assert (=> b!5196010 (= e!3236024 tp!1457659)))

(declare-fun b!5196011 () Bool)

(declare-fun tp!1457658 () Bool)

(assert (=> b!5196011 (= e!3236029 (and tp_is_empty!38771 tp!1457658))))

(declare-fun b!5196012 () Bool)

(declare-fun res!2207172 () Bool)

(assert (=> b!5196012 (=> res!2207172 e!3236023)))

(declare-fun isEmpty!32371 (List!60577) Bool)

(assert (=> b!5196012 (= res!2207172 (not (isEmpty!32371 (t!373730 zl!343))))))

(declare-fun b!5196013 () Bool)

(declare-fun res!2207182 () Bool)

(assert (=> b!5196013 (=> res!2207182 e!3236023)))

(assert (=> b!5196013 (= res!2207182 (not ((_ is Cons!60452) (exprs!4643 (h!66901 zl!343)))))))

(assert (= (and start!549798 res!2207184) b!5196007))

(assert (= (and b!5196007 res!2207175) b!5196002))

(assert (= (and b!5196002 res!2207178) b!5196003))

(assert (= (and b!5196003 (not res!2207173)) b!5196012))

(assert (= (and b!5196012 (not res!2207172)) b!5196009))

(assert (= (and b!5196009 (not res!2207176)) b!5196013))

(assert (= (and b!5196013 (not res!2207182)) b!5196006))

(assert (= (and b!5196006 (not res!2207180)) b!5195995))

(assert (= (and b!5195995 (not res!2207177)) b!5196001))

(assert (= (and b!5196001 (not res!2207181)) b!5195996))

(assert (= (and b!5195996 (not res!2207179)) b!5196008))

(assert (= (and b!5196008 (not res!2207183)) b!5196005))

(assert (= (and b!5196005 (not res!2207174)) b!5196000))

(assert (= (and start!549798 ((_ is ElementMatch!14759) r!7292)) b!5195997))

(assert (= (and start!549798 ((_ is Concat!23604) r!7292)) b!5195998))

(assert (= (and start!549798 ((_ is Star!14759) r!7292)) b!5195999))

(assert (= (and start!549798 ((_ is Union!14759) r!7292)) b!5195993))

(assert (= (and start!549798 condSetEmpty!32890) setIsEmpty!32890))

(assert (= (and start!549798 (not condSetEmpty!32890)) setNonEmpty!32890))

(assert (= setNonEmpty!32890 b!5196010))

(assert (= b!5195994 b!5196004))

(assert (= (and start!549798 ((_ is Cons!60453) zl!343)) b!5195994))

(assert (= (and start!549798 ((_ is Cons!60454) s!2326)) b!5196011))

(declare-fun m!6250088 () Bool)

(assert (=> b!5196006 m!6250088))

(assert (=> b!5196006 m!6250088))

(declare-fun m!6250090 () Bool)

(assert (=> b!5196006 m!6250090))

(declare-fun m!6250092 () Bool)

(assert (=> b!5196009 m!6250092))

(declare-fun m!6250094 () Bool)

(assert (=> b!5196012 m!6250094))

(declare-fun m!6250096 () Bool)

(assert (=> b!5195996 m!6250096))

(declare-fun m!6250098 () Bool)

(assert (=> b!5196002 m!6250098))

(declare-fun m!6250100 () Bool)

(assert (=> b!5196000 m!6250100))

(declare-fun m!6250102 () Bool)

(assert (=> b!5196000 m!6250102))

(declare-fun m!6250104 () Bool)

(assert (=> b!5196007 m!6250104))

(declare-fun m!6250106 () Bool)

(assert (=> b!5195994 m!6250106))

(declare-fun m!6250108 () Bool)

(assert (=> start!549798 m!6250108))

(declare-fun m!6250110 () Bool)

(assert (=> setNonEmpty!32890 m!6250110))

(declare-fun m!6250112 () Bool)

(assert (=> b!5196008 m!6250112))

(declare-fun m!6250114 () Bool)

(assert (=> b!5196008 m!6250114))

(declare-fun m!6250116 () Bool)

(assert (=> b!5196005 m!6250116))

(declare-fun m!6250118 () Bool)

(assert (=> b!5196005 m!6250118))

(declare-fun m!6250120 () Bool)

(assert (=> b!5196005 m!6250120))

(declare-fun m!6250122 () Bool)

(assert (=> b!5196005 m!6250122))

(declare-fun m!6250124 () Bool)

(assert (=> b!5196003 m!6250124))

(declare-fun m!6250126 () Bool)

(assert (=> b!5196003 m!6250126))

(declare-fun m!6250128 () Bool)

(assert (=> b!5196003 m!6250128))

(declare-fun m!6250130 () Bool)

(assert (=> b!5196001 m!6250130))

(declare-fun m!6250132 () Bool)

(assert (=> b!5196001 m!6250132))

(declare-fun m!6250134 () Bool)

(assert (=> b!5196001 m!6250134))

(assert (=> b!5196001 m!6250130))

(declare-fun m!6250136 () Bool)

(assert (=> b!5196001 m!6250136))

(declare-fun m!6250138 () Bool)

(assert (=> b!5196001 m!6250138))

(assert (=> b!5196001 m!6250132))

(declare-fun m!6250140 () Bool)

(assert (=> b!5196001 m!6250140))

(check-sat (not b!5196011) (not b!5196006) (not b!5195993) (not setNonEmpty!32890) (not b!5196008) (not b!5196003) (not b!5196004) (not b!5196002) (not b!5195999) (not b!5196010) tp_is_empty!38771 (not b!5196005) (not start!549798) (not b!5196012) (not b!5195996) (not b!5196009) (not b!5196007) (not b!5195994) (not b!5196001) (not b!5196000) (not b!5195998))
(check-sat)
