; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549790 () Bool)

(assert start!549790)

(declare-fun b!5195707 () Bool)

(assert (=> b!5195707 true))

(assert (=> b!5195707 true))

(declare-fun lambda!259963 () Int)

(declare-fun lambda!259962 () Int)

(assert (=> b!5195707 (not (= lambda!259963 lambda!259962))))

(assert (=> b!5195707 true))

(assert (=> b!5195707 true))

(declare-fun b!5195689 () Bool)

(declare-fun e!3235896 () Bool)

(declare-fun tp!1457536 () Bool)

(assert (=> b!5195689 (= e!3235896 tp!1457536)))

(declare-fun b!5195690 () Bool)

(declare-fun e!3235897 () Bool)

(declare-fun tp!1457539 () Bool)

(assert (=> b!5195690 (= e!3235897 tp!1457539)))

(declare-fun b!5195691 () Bool)

(declare-fun res!2206992 () Bool)

(declare-fun e!3235895 () Bool)

(assert (=> b!5195691 (=> (not res!2206992) (not e!3235895))))

(declare-datatypes ((C!29780 0))(
  ( (C!29781 (val!24592 Int)) )
))
(declare-datatypes ((Regex!14755 0))(
  ( (ElementMatch!14755 (c!895520 C!29780)) (Concat!23600 (regOne!30022 Regex!14755) (regTwo!30022 Regex!14755)) (EmptyExpr!14755) (Star!14755 (reg!15084 Regex!14755)) (EmptyLang!14755) (Union!14755 (regOne!30023 Regex!14755) (regTwo!30023 Regex!14755)) )
))
(declare-fun r!7292 () Regex!14755)

(declare-datatypes ((List!60564 0))(
  ( (Nil!60440) (Cons!60440 (h!66888 Regex!14755) (t!373717 List!60564)) )
))
(declare-datatypes ((Context!8278 0))(
  ( (Context!8279 (exprs!4639 List!60564)) )
))
(declare-datatypes ((List!60565 0))(
  ( (Nil!60441) (Cons!60441 (h!66889 Context!8278) (t!373718 List!60565)) )
))
(declare-fun zl!343 () List!60565)

(declare-fun unfocusZipper!497 (List!60565) Regex!14755)

(assert (=> b!5195691 (= res!2206992 (= r!7292 (unfocusZipper!497 zl!343)))))

(declare-fun b!5195692 () Bool)

(declare-fun e!3235894 () Bool)

(declare-fun tp_is_empty!38763 () Bool)

(assert (=> b!5195692 (= e!3235894 tp_is_empty!38763)))

(declare-fun b!5195693 () Bool)

(declare-fun e!3235890 () Bool)

(assert (=> b!5195693 (= e!3235895 (not e!3235890))))

(declare-fun res!2206986 () Bool)

(assert (=> b!5195693 (=> res!2206986 e!3235890)))

(get-info :version)

(assert (=> b!5195693 (= res!2206986 (not ((_ is Cons!60441) zl!343)))))

(declare-fun lt!2138791 () Bool)

(declare-datatypes ((List!60566 0))(
  ( (Nil!60442) (Cons!60442 (h!66890 C!29780) (t!373719 List!60566)) )
))
(declare-fun s!2326 () List!60566)

(declare-fun matchRSpec!1858 (Regex!14755 List!60566) Bool)

(assert (=> b!5195693 (= lt!2138791 (matchRSpec!1858 r!7292 s!2326))))

(declare-fun matchR!6940 (Regex!14755 List!60566) Bool)

(assert (=> b!5195693 (= lt!2138791 (matchR!6940 r!7292 s!2326))))

(declare-datatypes ((Unit!152344 0))(
  ( (Unit!152345) )
))
(declare-fun lt!2138789 () Unit!152344)

(declare-fun mainMatchTheorem!1858 (Regex!14755 List!60566) Unit!152344)

(assert (=> b!5195693 (= lt!2138789 (mainMatchTheorem!1858 r!7292 s!2326))))

(declare-fun b!5195694 () Bool)

(declare-fun tp!1457533 () Bool)

(declare-fun tp!1457540 () Bool)

(assert (=> b!5195694 (= e!3235894 (and tp!1457533 tp!1457540))))

(declare-fun b!5195695 () Bool)

(declare-fun e!3235891 () Bool)

(assert (=> b!5195695 (= e!3235891 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2138790 () (InoxSet Context!8278))

(declare-fun derivationStepZipperUp!127 (Context!8278 C!29780) (InoxSet Context!8278))

(assert (=> b!5195695 (= lt!2138790 (derivationStepZipperUp!127 (Context!8279 (Cons!60440 r!7292 Nil!60440)) (h!66890 s!2326)))))

(declare-fun b!5195696 () Bool)

(declare-fun res!2206982 () Bool)

(assert (=> b!5195696 (=> res!2206982 e!3235890)))

(assert (=> b!5195696 (= res!2206982 (or ((_ is EmptyExpr!14755) r!7292) ((_ is EmptyLang!14755) r!7292) ((_ is ElementMatch!14755) r!7292) ((_ is Union!14755) r!7292) (not ((_ is Concat!23600) r!7292))))))

(declare-fun b!5195697 () Bool)

(declare-fun res!2206988 () Bool)

(assert (=> b!5195697 (=> (not res!2206988) (not e!3235895))))

(declare-fun z!1189 () (InoxSet Context!8278))

(declare-fun toList!8539 ((InoxSet Context!8278)) List!60565)

(assert (=> b!5195697 (= res!2206988 (= (toList!8539 z!1189) zl!343))))

(declare-fun b!5195698 () Bool)

(declare-fun res!2206983 () Bool)

(assert (=> b!5195698 (=> res!2206983 e!3235891)))

(declare-fun isEmpty!32362 (List!60564) Bool)

(assert (=> b!5195698 (= res!2206983 (not (isEmpty!32362 (t!373717 (exprs!4639 (h!66889 zl!343))))))))

(declare-fun b!5195699 () Bool)

(declare-fun res!2206989 () Bool)

(assert (=> b!5195699 (=> res!2206989 e!3235890)))

(declare-fun generalisedConcat!424 (List!60564) Regex!14755)

(assert (=> b!5195699 (= res!2206989 (not (= r!7292 (generalisedConcat!424 (exprs!4639 (h!66889 zl!343))))))))

(declare-fun tp!1457537 () Bool)

(declare-fun b!5195700 () Bool)

(declare-fun e!3235893 () Bool)

(declare-fun inv!80134 (Context!8278) Bool)

(assert (=> b!5195700 (= e!3235893 (and (inv!80134 (h!66889 zl!343)) e!3235897 tp!1457537))))

(declare-fun b!5195701 () Bool)

(declare-fun tp!1457535 () Bool)

(declare-fun tp!1457532 () Bool)

(assert (=> b!5195701 (= e!3235894 (and tp!1457535 tp!1457532))))

(declare-fun b!5195702 () Bool)

(declare-fun res!2206987 () Bool)

(assert (=> b!5195702 (=> res!2206987 e!3235890)))

(assert (=> b!5195702 (= res!2206987 (not ((_ is Cons!60440) (exprs!4639 (h!66889 zl!343)))))))

(declare-fun setElem!32878 () Context!8278)

(declare-fun tp!1457538 () Bool)

(declare-fun setRes!32878 () Bool)

(declare-fun setNonEmpty!32878 () Bool)

(assert (=> setNonEmpty!32878 (= setRes!32878 (and tp!1457538 (inv!80134 setElem!32878) e!3235896))))

(declare-fun setRest!32878 () (InoxSet Context!8278))

(assert (=> setNonEmpty!32878 (= z!1189 ((_ map or) (store ((as const (Array Context!8278 Bool)) false) setElem!32878 true) setRest!32878))))

(declare-fun b!5195703 () Bool)

(declare-fun res!2206991 () Bool)

(assert (=> b!5195703 (=> res!2206991 e!3235890)))

(declare-fun isEmpty!32363 (List!60565) Bool)

(assert (=> b!5195703 (= res!2206991 (not (isEmpty!32363 (t!373718 zl!343))))))

(declare-fun setIsEmpty!32878 () Bool)

(assert (=> setIsEmpty!32878 setRes!32878))

(declare-fun b!5195704 () Bool)

(declare-fun e!3235892 () Bool)

(declare-fun tp!1457534 () Bool)

(assert (=> b!5195704 (= e!3235892 (and tp_is_empty!38763 tp!1457534))))

(declare-fun b!5195705 () Bool)

(declare-fun tp!1457541 () Bool)

(assert (=> b!5195705 (= e!3235894 tp!1457541)))

(declare-fun b!5195706 () Bool)

(declare-fun res!2206990 () Bool)

(assert (=> b!5195706 (=> res!2206990 e!3235890)))

(declare-fun generalisedUnion!684 (List!60564) Regex!14755)

(declare-fun unfocusZipperList!197 (List!60565) List!60564)

(assert (=> b!5195706 (= res!2206990 (not (= r!7292 (generalisedUnion!684 (unfocusZipperList!197 zl!343)))))))

(declare-fun res!2206985 () Bool)

(assert (=> start!549790 (=> (not res!2206985) (not e!3235895))))

(declare-fun validRegex!6491 (Regex!14755) Bool)

(assert (=> start!549790 (= res!2206985 (validRegex!6491 r!7292))))

(assert (=> start!549790 e!3235895))

(assert (=> start!549790 e!3235894))

(declare-fun condSetEmpty!32878 () Bool)

(assert (=> start!549790 (= condSetEmpty!32878 (= z!1189 ((as const (Array Context!8278 Bool)) false)))))

(assert (=> start!549790 setRes!32878))

(assert (=> start!549790 e!3235893))

(assert (=> start!549790 e!3235892))

(assert (=> b!5195707 (= e!3235890 e!3235891)))

(declare-fun res!2206984 () Bool)

(assert (=> b!5195707 (=> res!2206984 e!3235891)))

(declare-fun lt!2138787 () Bool)

(assert (=> b!5195707 (= res!2206984 (or (not (= lt!2138791 lt!2138787)) ((_ is Nil!60442) s!2326)))))

(declare-fun Exists!1936 (Int) Bool)

(assert (=> b!5195707 (= (Exists!1936 lambda!259962) (Exists!1936 lambda!259963))))

(declare-fun lt!2138788 () Unit!152344)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!590 (Regex!14755 Regex!14755 List!60566) Unit!152344)

(assert (=> b!5195707 (= lt!2138788 (lemmaExistCutMatchRandMatchRSpecEquivalent!590 (regOne!30022 r!7292) (regTwo!30022 r!7292) s!2326))))

(assert (=> b!5195707 (= lt!2138787 (Exists!1936 lambda!259962))))

(declare-datatypes ((tuple2!63908 0))(
  ( (tuple2!63909 (_1!35257 List!60566) (_2!35257 List!60566)) )
))
(declare-datatypes ((Option!14866 0))(
  ( (None!14865) (Some!14865 (v!50894 tuple2!63908)) )
))
(declare-fun isDefined!11569 (Option!14866) Bool)

(declare-fun findConcatSeparation!1280 (Regex!14755 Regex!14755 List!60566 List!60566 List!60566) Option!14866)

(assert (=> b!5195707 (= lt!2138787 (isDefined!11569 (findConcatSeparation!1280 (regOne!30022 r!7292) (regTwo!30022 r!7292) Nil!60442 s!2326 s!2326)))))

(declare-fun lt!2138786 () Unit!152344)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1044 (Regex!14755 Regex!14755 List!60566) Unit!152344)

(assert (=> b!5195707 (= lt!2138786 (lemmaFindConcatSeparationEquivalentToExists!1044 (regOne!30022 r!7292) (regTwo!30022 r!7292) s!2326))))

(assert (= (and start!549790 res!2206985) b!5195697))

(assert (= (and b!5195697 res!2206988) b!5195691))

(assert (= (and b!5195691 res!2206992) b!5195693))

(assert (= (and b!5195693 (not res!2206986)) b!5195703))

(assert (= (and b!5195703 (not res!2206991)) b!5195699))

(assert (= (and b!5195699 (not res!2206989)) b!5195702))

(assert (= (and b!5195702 (not res!2206987)) b!5195706))

(assert (= (and b!5195706 (not res!2206990)) b!5195696))

(assert (= (and b!5195696 (not res!2206982)) b!5195707))

(assert (= (and b!5195707 (not res!2206984)) b!5195698))

(assert (= (and b!5195698 (not res!2206983)) b!5195695))

(assert (= (and start!549790 ((_ is ElementMatch!14755) r!7292)) b!5195692))

(assert (= (and start!549790 ((_ is Concat!23600) r!7292)) b!5195701))

(assert (= (and start!549790 ((_ is Star!14755) r!7292)) b!5195705))

(assert (= (and start!549790 ((_ is Union!14755) r!7292)) b!5195694))

(assert (= (and start!549790 condSetEmpty!32878) setIsEmpty!32878))

(assert (= (and start!549790 (not condSetEmpty!32878)) setNonEmpty!32878))

(assert (= setNonEmpty!32878 b!5195689))

(assert (= b!5195700 b!5195690))

(assert (= (and start!549790 ((_ is Cons!60441) zl!343)) b!5195700))

(assert (= (and start!549790 ((_ is Cons!60442) s!2326)) b!5195704))

(declare-fun m!6249910 () Bool)

(assert (=> b!5195695 m!6249910))

(declare-fun m!6249912 () Bool)

(assert (=> setNonEmpty!32878 m!6249912))

(declare-fun m!6249914 () Bool)

(assert (=> b!5195707 m!6249914))

(declare-fun m!6249916 () Bool)

(assert (=> b!5195707 m!6249916))

(declare-fun m!6249918 () Bool)

(assert (=> b!5195707 m!6249918))

(declare-fun m!6249920 () Bool)

(assert (=> b!5195707 m!6249920))

(assert (=> b!5195707 m!6249918))

(declare-fun m!6249922 () Bool)

(assert (=> b!5195707 m!6249922))

(assert (=> b!5195707 m!6249916))

(declare-fun m!6249924 () Bool)

(assert (=> b!5195707 m!6249924))

(declare-fun m!6249926 () Bool)

(assert (=> b!5195706 m!6249926))

(assert (=> b!5195706 m!6249926))

(declare-fun m!6249928 () Bool)

(assert (=> b!5195706 m!6249928))

(declare-fun m!6249930 () Bool)

(assert (=> b!5195698 m!6249930))

(declare-fun m!6249932 () Bool)

(assert (=> b!5195703 m!6249932))

(declare-fun m!6249934 () Bool)

(assert (=> b!5195691 m!6249934))

(declare-fun m!6249936 () Bool)

(assert (=> b!5195700 m!6249936))

(declare-fun m!6249938 () Bool)

(assert (=> b!5195697 m!6249938))

(declare-fun m!6249940 () Bool)

(assert (=> start!549790 m!6249940))

(declare-fun m!6249942 () Bool)

(assert (=> b!5195699 m!6249942))

(declare-fun m!6249944 () Bool)

(assert (=> b!5195693 m!6249944))

(declare-fun m!6249946 () Bool)

(assert (=> b!5195693 m!6249946))

(declare-fun m!6249948 () Bool)

(assert (=> b!5195693 m!6249948))

(check-sat (not b!5195707) (not b!5195690) (not b!5195700) tp_is_empty!38763 (not b!5195693) (not b!5195701) (not setNonEmpty!32878) (not b!5195704) (not b!5195705) (not b!5195694) (not b!5195698) (not b!5195699) (not b!5195697) (not start!549790) (not b!5195695) (not b!5195703) (not b!5195706) (not b!5195691) (not b!5195689))
(check-sat)
