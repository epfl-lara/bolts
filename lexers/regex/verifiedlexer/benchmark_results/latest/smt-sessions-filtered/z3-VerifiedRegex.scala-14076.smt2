; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741990 () Bool)

(assert start!741990)

(declare-fun b!7820867 () Bool)

(declare-fun e!4627255 () Bool)

(declare-fun tp_is_empty!52249 () Bool)

(declare-fun tp!2308249 () Bool)

(assert (=> b!7820867 (= e!4627255 (and tp_is_empty!52249 tp!2308249))))

(declare-fun b!7820868 () Bool)

(declare-fun e!4627250 () Bool)

(declare-fun tp!2308244 () Bool)

(assert (=> b!7820868 (= e!4627250 (and tp_is_empty!52249 tp!2308244))))

(declare-fun b!7820869 () Bool)

(declare-fun e!4627251 () Bool)

(declare-fun tp!2308246 () Bool)

(declare-fun tp!2308252 () Bool)

(assert (=> b!7820869 (= e!4627251 (and tp!2308246 tp!2308252))))

(declare-fun b!7820870 () Bool)

(declare-fun e!4627247 () Bool)

(assert (=> b!7820870 (= e!4627247 false)))

(declare-fun lt!2676528 () Bool)

(declare-fun e!4627248 () Bool)

(assert (=> b!7820870 (= lt!2676528 e!4627248)))

(declare-fun res!3112997 () Bool)

(assert (=> b!7820870 (=> res!3112997 e!4627248)))

(declare-datatypes ((C!42220 0))(
  ( (C!42221 (val!31550 Int)) )
))
(declare-datatypes ((Regex!20947 0))(
  ( (ElementMatch!20947 (c!1439344 C!42220)) (Concat!29792 (regOne!42406 Regex!20947) (regTwo!42406 Regex!20947)) (EmptyExpr!20947) (Star!20947 (reg!21276 Regex!20947)) (EmptyLang!20947) (Union!20947 (regOne!42407 Regex!20947) (regTwo!42407 Regex!20947)) )
))
(declare-fun r1!6261 () Regex!20947)

(declare-datatypes ((List!73784 0))(
  ( (Nil!73660) (Cons!73660 (h!80108 C!42220) (t!388519 List!73784)) )
))
(declare-fun s1Rec!453 () List!73784)

(declare-fun matchR!10403 (Regex!20947 List!73784) Bool)

(assert (=> b!7820870 (= res!3112997 (not (matchR!10403 r1!6261 s1Rec!453)))))

(declare-fun b!7820871 () Bool)

(declare-fun e!4627252 () Bool)

(declare-fun tp!2308254 () Bool)

(declare-fun tp!2308250 () Bool)

(assert (=> b!7820871 (= e!4627252 (and tp!2308254 tp!2308250))))

(declare-fun b!7820872 () Bool)

(assert (=> b!7820872 (= e!4627252 tp_is_empty!52249)))

(declare-fun b!7820873 () Bool)

(declare-fun res!3112995 () Bool)

(assert (=> b!7820873 (=> (not res!3112995) (not e!4627247))))

(declare-fun s1!4101 () List!73784)

(declare-fun s2!3721 () List!73784)

(declare-fun s!14274 () List!73784)

(declare-fun ++!17981 (List!73784 List!73784) List!73784)

(assert (=> b!7820873 (= res!3112995 (= (++!17981 s1!4101 s2!3721) s!14274))))

(declare-fun b!7820874 () Bool)

(declare-fun tp!2308257 () Bool)

(declare-fun tp!2308255 () Bool)

(assert (=> b!7820874 (= e!4627252 (and tp!2308257 tp!2308255))))

(declare-fun b!7820875 () Bool)

(declare-fun e!4627249 () Bool)

(declare-fun tp!2308247 () Bool)

(assert (=> b!7820875 (= e!4627249 (and tp_is_empty!52249 tp!2308247))))

(declare-fun b!7820876 () Bool)

(declare-fun res!3112999 () Bool)

(assert (=> b!7820876 (=> (not res!3112999) (not e!4627247))))

(declare-fun r2!6199 () Regex!20947)

(assert (=> b!7820876 (= res!3112999 (matchR!10403 r2!6199 s2!3721))))

(declare-fun b!7820877 () Bool)

(declare-fun res!3112996 () Bool)

(assert (=> b!7820877 (=> (not res!3112996) (not e!4627247))))

(declare-fun isPrefix!6297 (List!73784 List!73784) Bool)

(assert (=> b!7820877 (= res!3112996 (isPrefix!6297 s1Rec!453 s1!4101))))

(declare-fun b!7820878 () Bool)

(declare-fun e!4627253 () Bool)

(declare-fun tp!2308243 () Bool)

(assert (=> b!7820878 (= e!4627253 (and tp_is_empty!52249 tp!2308243))))

(declare-fun res!3112998 () Bool)

(assert (=> start!741990 (=> (not res!3112998) (not e!4627247))))

(declare-fun validRegex!11361 (Regex!20947) Bool)

(assert (=> start!741990 (= res!3112998 (validRegex!11361 r1!6261))))

(assert (=> start!741990 e!4627247))

(assert (=> start!741990 e!4627251))

(assert (=> start!741990 e!4627250))

(declare-fun e!4627254 () Bool)

(assert (=> start!741990 e!4627254))

(assert (=> start!741990 e!4627255))

(assert (=> start!741990 e!4627249))

(assert (=> start!741990 e!4627252))

(assert (=> start!741990 e!4627253))

(declare-fun b!7820879 () Bool)

(declare-fun tp!2308253 () Bool)

(assert (=> b!7820879 (= e!4627252 tp!2308253)))

(declare-fun b!7820880 () Bool)

(declare-fun res!3112994 () Bool)

(assert (=> b!7820880 (=> (not res!3112994) (not e!4627247))))

(assert (=> b!7820880 (= res!3112994 (matchR!10403 r1!6261 s1!4101))))

(declare-fun b!7820881 () Bool)

(declare-fun tp!2308251 () Bool)

(assert (=> b!7820881 (= e!4627254 (and tp_is_empty!52249 tp!2308251))))

(declare-fun b!7820882 () Bool)

(declare-fun res!3113000 () Bool)

(assert (=> b!7820882 (=> (not res!3113000) (not e!4627247))))

(declare-fun s2Rec!453 () List!73784)

(assert (=> b!7820882 (= res!3113000 (= (++!17981 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7820883 () Bool)

(assert (=> b!7820883 (= e!4627251 tp_is_empty!52249)))

(declare-fun b!7820884 () Bool)

(declare-fun tp!2308256 () Bool)

(assert (=> b!7820884 (= e!4627251 tp!2308256)))

(declare-fun b!7820885 () Bool)

(declare-fun tp!2308245 () Bool)

(declare-fun tp!2308248 () Bool)

(assert (=> b!7820885 (= e!4627251 (and tp!2308245 tp!2308248))))

(declare-fun b!7820886 () Bool)

(declare-fun res!3112993 () Bool)

(assert (=> b!7820886 (=> (not res!3112993) (not e!4627247))))

(assert (=> b!7820886 (= res!3112993 (validRegex!11361 r2!6199))))

(declare-fun b!7820887 () Bool)

(assert (=> b!7820887 (= e!4627248 (not (matchR!10403 r2!6199 s2Rec!453)))))

(assert (= (and start!741990 res!3112998) b!7820886))

(assert (= (and b!7820886 res!3112993) b!7820873))

(assert (= (and b!7820873 res!3112995) b!7820877))

(assert (= (and b!7820877 res!3112996) b!7820882))

(assert (= (and b!7820882 res!3113000) b!7820880))

(assert (= (and b!7820880 res!3112994) b!7820876))

(assert (= (and b!7820876 res!3112999) b!7820870))

(assert (= (and b!7820870 (not res!3112997)) b!7820887))

(get-info :version)

(assert (= (and start!741990 ((_ is ElementMatch!20947) r2!6199)) b!7820883))

(assert (= (and start!741990 ((_ is Concat!29792) r2!6199)) b!7820885))

(assert (= (and start!741990 ((_ is Star!20947) r2!6199)) b!7820884))

(assert (= (and start!741990 ((_ is Union!20947) r2!6199)) b!7820869))

(assert (= (and start!741990 ((_ is Cons!73660) s1!4101)) b!7820868))

(assert (= (and start!741990 ((_ is Cons!73660) s2!3721)) b!7820881))

(assert (= (and start!741990 ((_ is Cons!73660) s2Rec!453)) b!7820867))

(assert (= (and start!741990 ((_ is Cons!73660) s!14274)) b!7820875))

(assert (= (and start!741990 ((_ is ElementMatch!20947) r1!6261)) b!7820872))

(assert (= (and start!741990 ((_ is Concat!29792) r1!6261)) b!7820874))

(assert (= (and start!741990 ((_ is Star!20947) r1!6261)) b!7820879))

(assert (= (and start!741990 ((_ is Union!20947) r1!6261)) b!7820871))

(assert (= (and start!741990 ((_ is Cons!73660) s1Rec!453)) b!7820878))

(declare-fun m!8245152 () Bool)

(assert (=> b!7820880 m!8245152))

(declare-fun m!8245154 () Bool)

(assert (=> b!7820870 m!8245154))

(declare-fun m!8245156 () Bool)

(assert (=> b!7820873 m!8245156))

(declare-fun m!8245158 () Bool)

(assert (=> b!7820886 m!8245158))

(declare-fun m!8245160 () Bool)

(assert (=> b!7820882 m!8245160))

(declare-fun m!8245162 () Bool)

(assert (=> b!7820887 m!8245162))

(declare-fun m!8245164 () Bool)

(assert (=> b!7820876 m!8245164))

(declare-fun m!8245166 () Bool)

(assert (=> start!741990 m!8245166))

(declare-fun m!8245168 () Bool)

(assert (=> b!7820877 m!8245168))

(check-sat (not start!741990) (not b!7820878) (not b!7820884) (not b!7820876) (not b!7820870) (not b!7820871) (not b!7820868) tp_is_empty!52249 (not b!7820873) (not b!7820885) (not b!7820875) (not b!7820879) (not b!7820874) (not b!7820880) (not b!7820882) (not b!7820886) (not b!7820887) (not b!7820877) (not b!7820867) (not b!7820869) (not b!7820881))
(check-sat)
