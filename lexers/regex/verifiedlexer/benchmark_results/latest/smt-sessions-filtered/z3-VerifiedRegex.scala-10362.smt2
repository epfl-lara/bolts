; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537764 () Bool)

(assert start!537764)

(declare-fun setNonEmpty!29122 () Bool)

(declare-fun setRes!29122 () Bool)

(declare-fun tp!1421974 () Bool)

(declare-fun e!3179967 () Bool)

(declare-datatypes ((C!28296 0))(
  ( (C!28297 (val!23800 Int)) )
))
(declare-datatypes ((Regex!14019 0))(
  ( (ElementMatch!14019 (c!876125 C!28296)) (Concat!22864 (regOne!28550 Regex!14019) (regTwo!28550 Regex!14019)) (EmptyExpr!14019) (Star!14019 (reg!14348 Regex!14019)) (EmptyLang!14019) (Union!14019 (regOne!28551 Regex!14019) (regTwo!28551 Regex!14019)) )
))
(declare-datatypes ((List!58843 0))(
  ( (Nil!58719) (Cons!58719 (h!65167 Regex!14019) (t!371844 List!58843)) )
))
(declare-datatypes ((Context!6806 0))(
  ( (Context!6807 (exprs!3903 List!58843)) )
))
(declare-fun setElem!29122 () Context!6806)

(declare-fun inv!78222 (Context!6806) Bool)

(assert (=> setNonEmpty!29122 (= setRes!29122 (and tp!1421974 (inv!78222 setElem!29122) e!3179967))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6806))

(declare-fun setRest!29122 () (InoxSet Context!6806))

(assert (=> setNonEmpty!29122 (= z!4303 ((_ map or) (store ((as const (Array Context!6806 Bool)) false) setElem!29122 true) setRest!29122))))

(declare-fun b!5098894 () Bool)

(declare-fun e!3179964 () Bool)

(declare-fun e!3179956 () Bool)

(assert (=> b!5098894 (= e!3179964 (not e!3179956))))

(declare-fun res!2170005 () Bool)

(assert (=> b!5098894 (=> res!2170005 e!3179956)))

(declare-fun e!3179961 () Bool)

(assert (=> b!5098894 (= res!2170005 e!3179961)))

(declare-fun res!2170012 () Bool)

(assert (=> b!5098894 (=> (not res!2170012) (not e!3179961))))

(declare-datatypes ((List!58844 0))(
  ( (Nil!58720) (Cons!58720 (h!65168 C!28296) (t!371845 List!58844)) )
))
(declare-datatypes ((tuple2!63424 0))(
  ( (tuple2!63425 (_1!35015 List!58844) (_2!35015 List!58844)) )
))
(declare-fun lt!2095430 () tuple2!63424)

(declare-fun matchZipper!695 ((InoxSet Context!6806) List!58844) Bool)

(assert (=> b!5098894 (= res!2170012 (not (matchZipper!695 z!4303 (_1!35015 lt!2095430))))))

(declare-fun e!3179966 () Bool)

(assert (=> b!5098894 e!3179966))

(declare-fun res!2170003 () Bool)

(assert (=> b!5098894 (=> res!2170003 e!3179966)))

(declare-fun lt!2095432 () tuple2!63424)

(declare-fun isEmpty!31768 (List!58844) Bool)

(assert (=> b!5098894 (= res!2170003 (isEmpty!31768 (_1!35015 lt!2095432)))))

(declare-fun r!12920 () Regex!14019)

(declare-fun lt!2095427 () Int)

(declare-fun input!5654 () List!58844)

(declare-fun lt!2095421 () Int)

(declare-fun findLongestMatchInner!2032 (Regex!14019 List!58844 Int List!58844 List!58844 Int) tuple2!63424)

(assert (=> b!5098894 (= lt!2095432 (findLongestMatchInner!2032 r!12920 Nil!58720 lt!2095421 input!5654 input!5654 lt!2095427))))

(declare-datatypes ((Unit!149762 0))(
  ( (Unit!149763) )
))
(declare-fun lt!2095428 () Unit!149762)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1992 (Regex!14019 List!58844) Unit!149762)

(assert (=> b!5098894 (= lt!2095428 (longestMatchIsAcceptedByMatchOrIsEmpty!1992 r!12920 input!5654))))

(declare-fun e!3179960 () Bool)

(assert (=> b!5098894 e!3179960))

(declare-fun res!2170011 () Bool)

(assert (=> b!5098894 (=> res!2170011 e!3179960)))

(declare-fun lt!2095425 () tuple2!63424)

(assert (=> b!5098894 (= res!2170011 (isEmpty!31768 (_1!35015 lt!2095425)))))

(declare-fun findLongestMatchInnerZipper!93 ((InoxSet Context!6806) List!58844 Int List!58844 List!58844 Int) tuple2!63424)

(assert (=> b!5098894 (= lt!2095425 (findLongestMatchInnerZipper!93 z!4303 Nil!58720 lt!2095421 input!5654 input!5654 lt!2095427))))

(declare-fun size!39321 (List!58844) Int)

(assert (=> b!5098894 (= lt!2095427 (size!39321 input!5654))))

(assert (=> b!5098894 (= lt!2095421 (size!39321 Nil!58720))))

(declare-fun lt!2095429 () Unit!149762)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1993 ((InoxSet Context!6806) List!58844) Unit!149762)

(assert (=> b!5098894 (= lt!2095429 (longestMatchIsAcceptedByMatchOrIsEmpty!1993 z!4303 input!5654))))

(declare-fun lt!2095423 () tuple2!63424)

(declare-fun lt!2095418 () List!58844)

(declare-fun isPrefix!5424 (List!58844 List!58844) Bool)

(assert (=> b!5098894 (isPrefix!5424 (_1!35015 lt!2095423) lt!2095418)))

(declare-fun lt!2095426 () Unit!149762)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3482 (List!58844 List!58844) Unit!149762)

(assert (=> b!5098894 (= lt!2095426 (lemmaConcatTwoListThenFirstIsPrefix!3482 (_1!35015 lt!2095423) (_2!35015 lt!2095423)))))

(declare-fun lt!2095431 () List!58844)

(assert (=> b!5098894 (isPrefix!5424 (_1!35015 lt!2095430) lt!2095431)))

(declare-fun lt!2095420 () Unit!149762)

(assert (=> b!5098894 (= lt!2095420 (lemmaConcatTwoListThenFirstIsPrefix!3482 (_1!35015 lt!2095430) (_2!35015 lt!2095430)))))

(declare-fun b!5098896 () Bool)

(declare-fun e!3179955 () Bool)

(assert (=> b!5098896 (= e!3179955 e!3179964)))

(declare-fun res!2170008 () Bool)

(assert (=> b!5098896 (=> (not res!2170008) (not e!3179964))))

(assert (=> b!5098896 (= res!2170008 (= lt!2095418 input!5654))))

(declare-fun ++!12868 (List!58844 List!58844) List!58844)

(assert (=> b!5098896 (= lt!2095418 (++!12868 (_1!35015 lt!2095423) (_2!35015 lt!2095423)))))

(declare-fun b!5098897 () Bool)

(declare-fun e!3179965 () Bool)

(declare-fun tp!1421973 () Bool)

(declare-fun tp!1421975 () Bool)

(assert (=> b!5098897 (= e!3179965 (and tp!1421973 tp!1421975))))

(declare-fun setIsEmpty!29122 () Bool)

(assert (=> setIsEmpty!29122 setRes!29122))

(declare-fun b!5098898 () Bool)

(assert (=> b!5098898 (= e!3179961 (not (isEmpty!31768 (_1!35015 lt!2095430))))))

(declare-fun b!5098899 () Bool)

(declare-fun tp!1421972 () Bool)

(declare-fun tp!1421968 () Bool)

(assert (=> b!5098899 (= e!3179965 (and tp!1421972 tp!1421968))))

(declare-fun b!5098900 () Bool)

(declare-fun matchR!6808 (Regex!14019 List!58844) Bool)

(assert (=> b!5098900 (= e!3179966 (matchR!6808 r!12920 (_1!35015 lt!2095432)))))

(declare-fun b!5098901 () Bool)

(declare-fun e!3179963 () Bool)

(assert (=> b!5098901 (= e!3179956 e!3179963)))

(declare-fun res!2170009 () Bool)

(assert (=> b!5098901 (=> res!2170009 e!3179963)))

(declare-fun e!3179962 () Bool)

(assert (=> b!5098901 (= res!2170009 e!3179962)))

(declare-fun res!2170007 () Bool)

(assert (=> b!5098901 (=> (not res!2170007) (not e!3179962))))

(declare-fun lt!2095424 () Bool)

(assert (=> b!5098901 (= res!2170007 (not lt!2095424))))

(assert (=> b!5098901 (= lt!2095424 (matchR!6808 r!12920 (_1!35015 lt!2095423)))))

(declare-fun b!5098902 () Bool)

(assert (=> b!5098902 (= e!3179960 (matchZipper!695 z!4303 (_1!35015 lt!2095425)))))

(declare-fun b!5098903 () Bool)

(declare-fun e!3179957 () Bool)

(declare-fun tp_is_empty!37303 () Bool)

(declare-fun tp!1421970 () Bool)

(assert (=> b!5098903 (= e!3179957 (and tp_is_empty!37303 tp!1421970))))

(declare-fun b!5098895 () Bool)

(declare-fun tp!1421969 () Bool)

(assert (=> b!5098895 (= e!3179965 tp!1421969)))

(declare-fun res!2170010 () Bool)

(declare-fun e!3179959 () Bool)

(assert (=> start!537764 (=> (not res!2170010) (not e!3179959))))

(declare-fun validRegex!6146 (Regex!14019) Bool)

(assert (=> start!537764 (= res!2170010 (validRegex!6146 r!12920))))

(assert (=> start!537764 e!3179959))

(assert (=> start!537764 e!3179965))

(declare-fun condSetEmpty!29122 () Bool)

(assert (=> start!537764 (= condSetEmpty!29122 (= z!4303 ((as const (Array Context!6806 Bool)) false)))))

(assert (=> start!537764 setRes!29122))

(assert (=> start!537764 e!3179957))

(declare-fun b!5098904 () Bool)

(assert (=> b!5098904 (= e!3179963 true)))

(assert (=> b!5098904 (= lt!2095424 (matchZipper!695 z!4303 (_1!35015 lt!2095423)))))

(declare-datatypes ((List!58845 0))(
  ( (Nil!58721) (Cons!58721 (h!65169 Context!6806) (t!371846 List!58845)) )
))
(declare-fun lt!2095422 () List!58845)

(declare-fun lt!2095419 () Unit!149762)

(declare-fun theoremZipperRegexEquiv!193 ((InoxSet Context!6806) List!58845 Regex!14019 List!58844) Unit!149762)

(assert (=> b!5098904 (= lt!2095419 (theoremZipperRegexEquiv!193 z!4303 lt!2095422 r!12920 (_1!35015 lt!2095423)))))

(declare-fun b!5098905 () Bool)

(assert (=> b!5098905 (= e!3179962 (not (isEmpty!31768 (_1!35015 lt!2095423))))))

(declare-fun b!5098906 () Bool)

(declare-fun e!3179958 () Bool)

(assert (=> b!5098906 (= e!3179959 e!3179958)))

(declare-fun res!2170004 () Bool)

(assert (=> b!5098906 (=> (not res!2170004) (not e!3179958))))

(declare-fun unfocusZipper!361 (List!58845) Regex!14019)

(assert (=> b!5098906 (= res!2170004 (= (unfocusZipper!361 lt!2095422) r!12920))))

(declare-fun toList!8153 ((InoxSet Context!6806)) List!58845)

(assert (=> b!5098906 (= lt!2095422 (toList!8153 z!4303))))

(declare-fun b!5098907 () Bool)

(assert (=> b!5098907 (= e!3179958 e!3179955)))

(declare-fun res!2170006 () Bool)

(assert (=> b!5098907 (=> (not res!2170006) (not e!3179955))))

(assert (=> b!5098907 (= res!2170006 (= lt!2095431 input!5654))))

(assert (=> b!5098907 (= lt!2095431 (++!12868 (_1!35015 lt!2095430) (_2!35015 lt!2095430)))))

(declare-fun findLongestMatch!1849 (Regex!14019 List!58844) tuple2!63424)

(assert (=> b!5098907 (= lt!2095423 (findLongestMatch!1849 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!43 ((InoxSet Context!6806) List!58844) tuple2!63424)

(assert (=> b!5098907 (= lt!2095430 (findLongestMatchZipper!43 z!4303 input!5654))))

(declare-fun b!5098908 () Bool)

(assert (=> b!5098908 (= e!3179965 tp_is_empty!37303)))

(declare-fun b!5098909 () Bool)

(declare-fun tp!1421971 () Bool)

(assert (=> b!5098909 (= e!3179967 tp!1421971)))

(assert (= (and start!537764 res!2170010) b!5098906))

(assert (= (and b!5098906 res!2170004) b!5098907))

(assert (= (and b!5098907 res!2170006) b!5098896))

(assert (= (and b!5098896 res!2170008) b!5098894))

(assert (= (and b!5098894 (not res!2170011)) b!5098902))

(assert (= (and b!5098894 (not res!2170003)) b!5098900))

(assert (= (and b!5098894 res!2170012) b!5098898))

(assert (= (and b!5098894 (not res!2170005)) b!5098901))

(assert (= (and b!5098901 res!2170007) b!5098905))

(assert (= (and b!5098901 (not res!2170009)) b!5098904))

(get-info :version)

(assert (= (and start!537764 ((_ is ElementMatch!14019) r!12920)) b!5098908))

(assert (= (and start!537764 ((_ is Concat!22864) r!12920)) b!5098899))

(assert (= (and start!537764 ((_ is Star!14019) r!12920)) b!5098895))

(assert (= (and start!537764 ((_ is Union!14019) r!12920)) b!5098897))

(assert (= (and start!537764 condSetEmpty!29122) setIsEmpty!29122))

(assert (= (and start!537764 (not condSetEmpty!29122)) setNonEmpty!29122))

(assert (= setNonEmpty!29122 b!5098909))

(assert (= (and start!537764 ((_ is Cons!58720) input!5654)) b!5098903))

(declare-fun m!6156170 () Bool)

(assert (=> b!5098898 m!6156170))

(declare-fun m!6156172 () Bool)

(assert (=> b!5098901 m!6156172))

(declare-fun m!6156174 () Bool)

(assert (=> setNonEmpty!29122 m!6156174))

(declare-fun m!6156176 () Bool)

(assert (=> start!537764 m!6156176))

(declare-fun m!6156178 () Bool)

(assert (=> b!5098905 m!6156178))

(declare-fun m!6156180 () Bool)

(assert (=> b!5098907 m!6156180))

(declare-fun m!6156182 () Bool)

(assert (=> b!5098907 m!6156182))

(declare-fun m!6156184 () Bool)

(assert (=> b!5098907 m!6156184))

(declare-fun m!6156186 () Bool)

(assert (=> b!5098906 m!6156186))

(declare-fun m!6156188 () Bool)

(assert (=> b!5098906 m!6156188))

(declare-fun m!6156190 () Bool)

(assert (=> b!5098904 m!6156190))

(declare-fun m!6156192 () Bool)

(assert (=> b!5098904 m!6156192))

(declare-fun m!6156194 () Bool)

(assert (=> b!5098902 m!6156194))

(declare-fun m!6156196 () Bool)

(assert (=> b!5098896 m!6156196))

(declare-fun m!6156198 () Bool)

(assert (=> b!5098894 m!6156198))

(declare-fun m!6156200 () Bool)

(assert (=> b!5098894 m!6156200))

(declare-fun m!6156202 () Bool)

(assert (=> b!5098894 m!6156202))

(declare-fun m!6156204 () Bool)

(assert (=> b!5098894 m!6156204))

(declare-fun m!6156206 () Bool)

(assert (=> b!5098894 m!6156206))

(declare-fun m!6156208 () Bool)

(assert (=> b!5098894 m!6156208))

(declare-fun m!6156210 () Bool)

(assert (=> b!5098894 m!6156210))

(declare-fun m!6156212 () Bool)

(assert (=> b!5098894 m!6156212))

(declare-fun m!6156214 () Bool)

(assert (=> b!5098894 m!6156214))

(declare-fun m!6156216 () Bool)

(assert (=> b!5098894 m!6156216))

(declare-fun m!6156218 () Bool)

(assert (=> b!5098894 m!6156218))

(declare-fun m!6156220 () Bool)

(assert (=> b!5098894 m!6156220))

(declare-fun m!6156222 () Bool)

(assert (=> b!5098894 m!6156222))

(declare-fun m!6156224 () Bool)

(assert (=> b!5098900 m!6156224))

(check-sat (not b!5098898) (not b!5098904) (not b!5098899) tp_is_empty!37303 (not b!5098905) (not b!5098897) (not b!5098895) (not b!5098894) (not b!5098903) (not b!5098906) (not b!5098896) (not b!5098907) (not b!5098901) (not start!537764) (not b!5098909) (not setNonEmpty!29122) (not b!5098900) (not b!5098902))
(check-sat)
