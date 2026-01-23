; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530062 () Bool)

(assert start!530062)

(declare-fun lt!2075893 () Int)

(declare-fun lt!2075900 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27872 0))(
  ( (C!27873 (val!23302 Int)) )
))
(declare-datatypes ((Regex!13811 0))(
  ( (ElementMatch!13811 (c!857235 C!27872)) (Concat!22604 (regOne!28134 Regex!13811) (regTwo!28134 Regex!13811)) (EmptyExpr!13811) (Star!13811 (reg!14140 Regex!13811)) (EmptyLang!13811) (Union!13811 (regOne!28135 Regex!13811) (regTwo!28135 Regex!13811)) )
))
(declare-datatypes ((List!58037 0))(
  ( (Nil!57913) (Cons!57913 (h!64361 Regex!13811) (t!370413 List!58037)) )
))
(declare-datatypes ((Context!6472 0))(
  ( (Context!6473 (exprs!3736 List!58037)) )
))
(declare-fun z!4183 () (InoxSet Context!6472))

(declare-datatypes ((List!58038 0))(
  ( (Nil!57914) (Cons!57914 (h!64362 C!27872) (t!370414 List!58038)) )
))
(declare-fun lt!2075898 () List!58038)

(declare-fun b!5016956 () Bool)

(declare-fun e!3134122 () Bool)

(declare-fun matchZipper!579 ((InoxSet Context!6472) List!58038) Bool)

(declare-fun take!670 (List!58038 Int) List!58038)

(declare-fun drop!2474 (List!58038 Int) List!58038)

(assert (=> b!5016956 (= e!3134122 (matchZipper!579 z!4183 (take!670 (drop!2474 lt!2075898 lt!2075893) lt!2075900)))))

(declare-fun b!5016957 () Bool)

(declare-fun e!3134121 () Bool)

(declare-datatypes ((IArray!30721 0))(
  ( (IArray!30722 (innerList!15418 List!58038)) )
))
(declare-datatypes ((Conc!15330 0))(
  ( (Node!15330 (left!42341 Conc!15330) (right!42671 Conc!15330) (csize!30890 Int) (cheight!15541 Int)) (Leaf!25444 (xs!18656 IArray!30721) (csize!30891 Int)) (Empty!15330) )
))
(declare-datatypes ((BalanceConc!30090 0))(
  ( (BalanceConc!30091 (c!857236 Conc!15330)) )
))
(declare-datatypes ((tuple2!63092 0))(
  ( (tuple2!63093 (_1!34849 BalanceConc!30090) (_2!34849 BalanceConc!30090)) )
))
(declare-fun lt!2075914 () tuple2!63092)

(declare-fun isEmpty!31385 (BalanceConc!30090) Bool)

(assert (=> b!5016957 (= e!3134121 (not (isEmpty!31385 (_1!34849 lt!2075914))))))

(declare-fun b!5016958 () Bool)

(declare-fun e!3134131 () Bool)

(declare-fun tp!1406872 () Bool)

(declare-fun tp!1406873 () Bool)

(assert (=> b!5016958 (= e!3134131 (and tp!1406872 tp!1406873))))

(declare-fun setElem!28498 () Context!6472)

(declare-fun tp!1406877 () Bool)

(declare-fun setNonEmpty!28498 () Bool)

(declare-fun setRes!28498 () Bool)

(declare-fun e!3134123 () Bool)

(declare-fun inv!76131 (Context!6472) Bool)

(assert (=> setNonEmpty!28498 (= setRes!28498 (and tp!1406877 (inv!76131 setElem!28498) e!3134123))))

(declare-fun setRest!28498 () (InoxSet Context!6472))

(assert (=> setNonEmpty!28498 (= z!4183 ((_ map or) (store ((as const (Array Context!6472 Bool)) false) setElem!28498 true) setRest!28498))))

(declare-fun b!5016960 () Bool)

(declare-fun e!3134120 () Bool)

(declare-fun e!3134128 () Bool)

(assert (=> b!5016960 (= e!3134120 e!3134128)))

(declare-fun res!2139219 () Bool)

(assert (=> b!5016960 (=> res!2139219 e!3134128)))

(declare-fun e!3134117 () Bool)

(assert (=> b!5016960 (= res!2139219 e!3134117)))

(declare-fun res!2139220 () Bool)

(assert (=> b!5016960 (=> (not res!2139220) (not e!3134117))))

(declare-fun lt!2075906 () Bool)

(assert (=> b!5016960 (= res!2139220 (not lt!2075906))))

(declare-fun r!12727 () Regex!13811)

(declare-datatypes ((tuple2!63094 0))(
  ( (tuple2!63095 (_1!34850 List!58038) (_2!34850 List!58038)) )
))
(declare-fun lt!2075913 () tuple2!63094)

(declare-fun matchR!6775 (Regex!13811 List!58038) Bool)

(assert (=> b!5016960 (= lt!2075906 (matchR!6775 r!12727 (_1!34850 lt!2075913)))))

(declare-fun b!5016961 () Bool)

(declare-fun tp_is_empty!36619 () Bool)

(assert (=> b!5016961 (= e!3134131 tp_is_empty!36619)))

(declare-fun b!5016962 () Bool)

(declare-fun e!3134129 () Bool)

(declare-fun input!5597 () BalanceConc!30090)

(declare-fun tp!1406878 () Bool)

(declare-fun inv!76132 (Conc!15330) Bool)

(assert (=> b!5016962 (= e!3134129 (and (inv!76132 (c!857236 input!5597)) tp!1406878))))

(declare-fun b!5016963 () Bool)

(declare-fun e!3134125 () Bool)

(declare-fun e!3134126 () Bool)

(assert (=> b!5016963 (= e!3134125 e!3134126)))

(declare-fun res!2139217 () Bool)

(assert (=> b!5016963 (=> (not res!2139217) (not e!3134126))))

(declare-fun lt!2075894 () List!58038)

(declare-fun lt!2075916 () List!58038)

(assert (=> b!5016963 (= res!2139217 (= lt!2075894 lt!2075916))))

(declare-fun ++!12659 (List!58038 List!58038) List!58038)

(assert (=> b!5016963 (= lt!2075894 (++!12659 (_1!34850 lt!2075913) (_2!34850 lt!2075913)))))

(declare-fun setIsEmpty!28498 () Bool)

(assert (=> setIsEmpty!28498 setRes!28498))

(declare-fun b!5016964 () Bool)

(declare-fun e!3134130 () Bool)

(declare-fun e!3134124 () Bool)

(assert (=> b!5016964 (= e!3134130 e!3134124)))

(declare-fun res!2139218 () Bool)

(assert (=> b!5016964 (=> (not res!2139218) (not e!3134124))))

(declare-fun isSuffix!1377 (List!58038 List!58038) Bool)

(assert (=> b!5016964 (= res!2139218 (isSuffix!1377 lt!2075916 lt!2075898))))

(declare-fun totalInput!1012 () BalanceConc!30090)

(declare-fun list!18656 (BalanceConc!30090) List!58038)

(assert (=> b!5016964 (= lt!2075898 (list!18656 totalInput!1012))))

(assert (=> b!5016964 (= lt!2075916 (list!18656 input!5597))))

(declare-fun b!5016965 () Bool)

(declare-fun e!3134116 () Bool)

(assert (=> b!5016965 (= e!3134128 e!3134116)))

(declare-fun res!2139216 () Bool)

(assert (=> b!5016965 (=> res!2139216 e!3134116)))

(declare-fun lt!2075905 () Int)

(declare-fun lt!2075908 () Int)

(assert (=> b!5016965 (= res!2139216 (or (> lt!2075905 lt!2075908) (> lt!2075908 lt!2075905)))))

(declare-fun size!38506 (BalanceConc!30090) Int)

(assert (=> b!5016965 (= lt!2075908 (size!38506 (_1!34849 lt!2075914)))))

(declare-fun size!38507 (List!58038) Int)

(assert (=> b!5016965 (= lt!2075905 (size!38507 (_1!34850 lt!2075913)))))

(declare-fun lt!2075903 () List!58038)

(declare-fun lt!2075895 () Bool)

(assert (=> b!5016965 (= (matchR!6775 r!12727 lt!2075903) lt!2075895)))

(declare-datatypes ((List!58039 0))(
  ( (Nil!57915) (Cons!57915 (h!64363 Context!6472) (t!370415 List!58039)) )
))
(declare-fun lt!2075901 () List!58039)

(declare-datatypes ((Unit!149153 0))(
  ( (Unit!149154) )
))
(declare-fun lt!2075912 () Unit!149153)

(declare-fun theoremZipperRegexEquiv!183 ((InoxSet Context!6472) List!58039 Regex!13811 List!58038) Unit!149153)

(assert (=> b!5016965 (= lt!2075912 (theoremZipperRegexEquiv!183 z!4183 lt!2075901 r!12727 lt!2075903))))

(assert (=> b!5016965 (= lt!2075906 (matchZipper!579 z!4183 (_1!34850 lt!2075913)))))

(declare-fun lt!2075910 () Unit!149153)

(assert (=> b!5016965 (= lt!2075910 (theoremZipperRegexEquiv!183 z!4183 lt!2075901 r!12727 (_1!34850 lt!2075913)))))

(declare-fun b!5016966 () Bool)

(declare-fun tp!1406874 () Bool)

(declare-fun tp!1406871 () Bool)

(assert (=> b!5016966 (= e!3134131 (and tp!1406874 tp!1406871))))

(declare-fun b!5016967 () Bool)

(declare-fun e!3134119 () Bool)

(declare-fun lt!2075897 () tuple2!63094)

(assert (=> b!5016967 (= e!3134119 (matchR!6775 r!12727 (_1!34850 lt!2075897)))))

(declare-fun b!5016968 () Bool)

(assert (=> b!5016968 (= e!3134126 (not e!3134120))))

(declare-fun res!2139221 () Bool)

(assert (=> b!5016968 (=> res!2139221 e!3134120)))

(assert (=> b!5016968 (= res!2139221 e!3134121)))

(declare-fun res!2139223 () Bool)

(assert (=> b!5016968 (=> (not res!2139223) (not e!3134121))))

(assert (=> b!5016968 (= res!2139223 (not lt!2075895))))

(assert (=> b!5016968 (= lt!2075895 (matchZipper!579 z!4183 lt!2075903))))

(assert (=> b!5016968 e!3134119))

(declare-fun res!2139224 () Bool)

(assert (=> b!5016968 (=> res!2139224 e!3134119)))

(declare-fun isEmpty!31386 (List!58038) Bool)

(assert (=> b!5016968 (= res!2139224 (isEmpty!31386 (_1!34850 lt!2075897)))))

(declare-fun findLongestMatchInner!2000 (Regex!13811 List!58038 Int List!58038 List!58038 Int) tuple2!63094)

(assert (=> b!5016968 (= lt!2075897 (findLongestMatchInner!2000 r!12727 Nil!57914 (size!38507 Nil!57914) lt!2075916 lt!2075916 (size!38507 lt!2075916)))))

(declare-fun lt!2075915 () Unit!149153)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1953 (Regex!13811 List!58038) Unit!149153)

(assert (=> b!5016968 (= lt!2075915 (longestMatchIsAcceptedByMatchOrIsEmpty!1953 r!12727 lt!2075916))))

(assert (=> b!5016968 e!3134122))

(declare-fun res!2139225 () Bool)

(assert (=> b!5016968 (=> res!2139225 e!3134122)))

(assert (=> b!5016968 (= res!2139225 (= lt!2075900 0))))

(declare-fun lt!2075909 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!151 ((InoxSet Context!6472) Int BalanceConc!30090 Int) Int)

(assert (=> b!5016968 (= lt!2075900 (findLongestMatchInnerZipperFastV2!151 z!4183 lt!2075893 totalInput!1012 lt!2075909))))

(declare-fun lt!2075896 () Unit!149153)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!70 ((InoxSet Context!6472) Int BalanceConc!30090) Unit!149153)

(assert (=> b!5016968 (= lt!2075896 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!70 z!4183 lt!2075893 totalInput!1012))))

(declare-fun isPrefix!5364 (List!58038 List!58038) Bool)

(assert (=> b!5016968 (isPrefix!5364 (take!670 lt!2075898 lt!2075893) lt!2075898)))

(declare-fun lt!2075899 () Unit!149153)

(declare-fun lemmaTakeIsPrefix!164 (List!58038 Int) Unit!149153)

(assert (=> b!5016968 (= lt!2075899 (lemmaTakeIsPrefix!164 lt!2075898 lt!2075893))))

(assert (=> b!5016968 (isPrefix!5364 (_1!34850 lt!2075913) lt!2075894)))

(declare-fun lt!2075911 () Unit!149153)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3462 (List!58038 List!58038) Unit!149153)

(assert (=> b!5016968 (= lt!2075911 (lemmaConcatTwoListThenFirstIsPrefix!3462 (_1!34850 lt!2075913) (_2!34850 lt!2075913)))))

(declare-fun lt!2075907 () List!58038)

(assert (=> b!5016968 (isPrefix!5364 lt!2075903 lt!2075907)))

(declare-fun lt!2075902 () Unit!149153)

(declare-fun lt!2075904 () List!58038)

(assert (=> b!5016968 (= lt!2075902 (lemmaConcatTwoListThenFirstIsPrefix!3462 lt!2075903 lt!2075904))))

(declare-fun b!5016969 () Bool)

(declare-fun tp!1406876 () Bool)

(assert (=> b!5016969 (= e!3134123 tp!1406876)))

(declare-fun b!5016970 () Bool)

(assert (=> b!5016970 (= e!3134124 e!3134125)))

(declare-fun res!2139215 () Bool)

(assert (=> b!5016970 (=> (not res!2139215) (not e!3134125))))

(assert (=> b!5016970 (= res!2139215 (= lt!2075907 lt!2075916))))

(assert (=> b!5016970 (= lt!2075907 (++!12659 lt!2075903 lt!2075904))))

(assert (=> b!5016970 (= lt!2075904 (list!18656 (_2!34849 lt!2075914)))))

(assert (=> b!5016970 (= lt!2075903 (list!18656 (_1!34849 lt!2075914)))))

(declare-fun findLongestMatch!1824 (Regex!13811 List!58038) tuple2!63094)

(assert (=> b!5016970 (= lt!2075913 (findLongestMatch!1824 r!12727 lt!2075916))))

(assert (=> b!5016970 (= lt!2075893 (- lt!2075909 (size!38506 input!5597)))))

(assert (=> b!5016970 (= lt!2075909 (size!38506 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!113 ((InoxSet Context!6472) BalanceConc!30090 BalanceConc!30090) tuple2!63092)

(assert (=> b!5016970 (= lt!2075914 (findLongestMatchZipperFastV2!113 z!4183 input!5597 totalInput!1012))))

(declare-fun res!2139222 () Bool)

(declare-fun e!3134127 () Bool)

(assert (=> start!530062 (=> (not res!2139222) (not e!3134127))))

(declare-fun validRegex!6108 (Regex!13811) Bool)

(assert (=> start!530062 (= res!2139222 (validRegex!6108 r!12727))))

(assert (=> start!530062 e!3134127))

(assert (=> start!530062 e!3134131))

(declare-fun inv!76133 (BalanceConc!30090) Bool)

(assert (=> start!530062 (and (inv!76133 input!5597) e!3134129)))

(declare-fun condSetEmpty!28498 () Bool)

(assert (=> start!530062 (= condSetEmpty!28498 (= z!4183 ((as const (Array Context!6472 Bool)) false)))))

(assert (=> start!530062 setRes!28498))

(declare-fun e!3134118 () Bool)

(assert (=> start!530062 (and (inv!76133 totalInput!1012) e!3134118)))

(declare-fun b!5016959 () Bool)

(assert (=> b!5016959 (= e!3134116 (isPrefix!5364 lt!2075903 lt!2075916))))

(declare-fun b!5016971 () Bool)

(declare-fun tp!1406870 () Bool)

(assert (=> b!5016971 (= e!3134131 tp!1406870)))

(declare-fun b!5016972 () Bool)

(declare-fun tp!1406875 () Bool)

(assert (=> b!5016972 (= e!3134118 (and (inv!76132 (c!857236 totalInput!1012)) tp!1406875))))

(declare-fun b!5016973 () Bool)

(assert (=> b!5016973 (= e!3134127 e!3134130)))

(declare-fun res!2139214 () Bool)

(assert (=> b!5016973 (=> (not res!2139214) (not e!3134130))))

(declare-fun unfocusZipper!338 (List!58039) Regex!13811)

(assert (=> b!5016973 (= res!2139214 (= (unfocusZipper!338 lt!2075901) r!12727))))

(declare-fun toList!8096 ((InoxSet Context!6472)) List!58039)

(assert (=> b!5016973 (= lt!2075901 (toList!8096 z!4183))))

(declare-fun b!5016974 () Bool)

(assert (=> b!5016974 (= e!3134117 (not (isEmpty!31386 (_1!34850 lt!2075913))))))

(assert (= (and start!530062 res!2139222) b!5016973))

(assert (= (and b!5016973 res!2139214) b!5016964))

(assert (= (and b!5016964 res!2139218) b!5016970))

(assert (= (and b!5016970 res!2139215) b!5016963))

(assert (= (and b!5016963 res!2139217) b!5016968))

(assert (= (and b!5016968 (not res!2139225)) b!5016956))

(assert (= (and b!5016968 (not res!2139224)) b!5016967))

(assert (= (and b!5016968 res!2139223) b!5016957))

(assert (= (and b!5016968 (not res!2139221)) b!5016960))

(assert (= (and b!5016960 res!2139220) b!5016974))

(assert (= (and b!5016960 (not res!2139219)) b!5016965))

(assert (= (and b!5016965 (not res!2139216)) b!5016959))

(get-info :version)

(assert (= (and start!530062 ((_ is ElementMatch!13811) r!12727)) b!5016961))

(assert (= (and start!530062 ((_ is Concat!22604) r!12727)) b!5016958))

(assert (= (and start!530062 ((_ is Star!13811) r!12727)) b!5016971))

(assert (= (and start!530062 ((_ is Union!13811) r!12727)) b!5016966))

(assert (= start!530062 b!5016962))

(assert (= (and start!530062 condSetEmpty!28498) setIsEmpty!28498))

(assert (= (and start!530062 (not condSetEmpty!28498)) setNonEmpty!28498))

(assert (= setNonEmpty!28498 b!5016969))

(assert (= start!530062 b!5016972))

(declare-fun m!6051918 () Bool)

(assert (=> b!5016972 m!6051918))

(declare-fun m!6051920 () Bool)

(assert (=> b!5016967 m!6051920))

(declare-fun m!6051922 () Bool)

(assert (=> b!5016974 m!6051922))

(declare-fun m!6051924 () Bool)

(assert (=> b!5016973 m!6051924))

(declare-fun m!6051926 () Bool)

(assert (=> b!5016973 m!6051926))

(declare-fun m!6051928 () Bool)

(assert (=> b!5016965 m!6051928))

(declare-fun m!6051930 () Bool)

(assert (=> b!5016965 m!6051930))

(declare-fun m!6051932 () Bool)

(assert (=> b!5016965 m!6051932))

(declare-fun m!6051934 () Bool)

(assert (=> b!5016965 m!6051934))

(declare-fun m!6051936 () Bool)

(assert (=> b!5016965 m!6051936))

(declare-fun m!6051938 () Bool)

(assert (=> b!5016965 m!6051938))

(declare-fun m!6051940 () Bool)

(assert (=> b!5016962 m!6051940))

(declare-fun m!6051942 () Bool)

(assert (=> b!5016957 m!6051942))

(declare-fun m!6051944 () Bool)

(assert (=> b!5016964 m!6051944))

(declare-fun m!6051946 () Bool)

(assert (=> b!5016964 m!6051946))

(declare-fun m!6051948 () Bool)

(assert (=> b!5016964 m!6051948))

(declare-fun m!6051950 () Bool)

(assert (=> b!5016959 m!6051950))

(declare-fun m!6051952 () Bool)

(assert (=> start!530062 m!6051952))

(declare-fun m!6051954 () Bool)

(assert (=> start!530062 m!6051954))

(declare-fun m!6051956 () Bool)

(assert (=> start!530062 m!6051956))

(declare-fun m!6051958 () Bool)

(assert (=> b!5016968 m!6051958))

(declare-fun m!6051960 () Bool)

(assert (=> b!5016968 m!6051960))

(declare-fun m!6051962 () Bool)

(assert (=> b!5016968 m!6051962))

(declare-fun m!6051964 () Bool)

(assert (=> b!5016968 m!6051964))

(declare-fun m!6051966 () Bool)

(assert (=> b!5016968 m!6051966))

(declare-fun m!6051968 () Bool)

(assert (=> b!5016968 m!6051968))

(declare-fun m!6051970 () Bool)

(assert (=> b!5016968 m!6051970))

(declare-fun m!6051972 () Bool)

(assert (=> b!5016968 m!6051972))

(declare-fun m!6051974 () Bool)

(assert (=> b!5016968 m!6051974))

(declare-fun m!6051976 () Bool)

(assert (=> b!5016968 m!6051976))

(declare-fun m!6051978 () Bool)

(assert (=> b!5016968 m!6051978))

(assert (=> b!5016968 m!6051974))

(declare-fun m!6051980 () Bool)

(assert (=> b!5016968 m!6051980))

(declare-fun m!6051982 () Bool)

(assert (=> b!5016968 m!6051982))

(assert (=> b!5016968 m!6051958))

(assert (=> b!5016968 m!6051982))

(declare-fun m!6051984 () Bool)

(assert (=> b!5016968 m!6051984))

(declare-fun m!6051986 () Bool)

(assert (=> b!5016968 m!6051986))

(declare-fun m!6051988 () Bool)

(assert (=> b!5016970 m!6051988))

(declare-fun m!6051990 () Bool)

(assert (=> b!5016970 m!6051990))

(declare-fun m!6051992 () Bool)

(assert (=> b!5016970 m!6051992))

(declare-fun m!6051994 () Bool)

(assert (=> b!5016970 m!6051994))

(declare-fun m!6051996 () Bool)

(assert (=> b!5016970 m!6051996))

(declare-fun m!6051998 () Bool)

(assert (=> b!5016970 m!6051998))

(declare-fun m!6052000 () Bool)

(assert (=> b!5016970 m!6052000))

(declare-fun m!6052002 () Bool)

(assert (=> b!5016963 m!6052002))

(declare-fun m!6052004 () Bool)

(assert (=> b!5016956 m!6052004))

(assert (=> b!5016956 m!6052004))

(declare-fun m!6052006 () Bool)

(assert (=> b!5016956 m!6052006))

(assert (=> b!5016956 m!6052006))

(declare-fun m!6052008 () Bool)

(assert (=> b!5016956 m!6052008))

(declare-fun m!6052010 () Bool)

(assert (=> setNonEmpty!28498 m!6052010))

(declare-fun m!6052012 () Bool)

(assert (=> b!5016960 m!6052012))

(check-sat (not b!5016965) (not b!5016960) (not b!5016966) (not b!5016967) (not b!5016970) (not b!5016962) (not b!5016963) (not b!5016956) (not b!5016968) (not b!5016971) (not b!5016974) (not b!5016973) (not setNonEmpty!28498) (not b!5016957) (not b!5016959) (not b!5016958) (not b!5016972) (not b!5016964) (not start!530062) tp_is_empty!36619 (not b!5016969))
(check-sat)
