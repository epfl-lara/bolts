; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538020 () Bool)

(assert start!538020)

(declare-fun b!5101819 () Bool)

(declare-fun e!3181897 () Bool)

(declare-fun tp!1423141 () Bool)

(assert (=> b!5101819 (= e!3181897 tp!1423141)))

(declare-fun b!5101820 () Bool)

(declare-fun e!3181901 () Bool)

(declare-fun e!3181896 () Bool)

(assert (=> b!5101820 (= e!3181901 e!3181896)))

(declare-fun res!2171407 () Bool)

(assert (=> b!5101820 (=> (not res!2171407) (not e!3181896))))

(declare-datatypes ((C!28360 0))(
  ( (C!28361 (val!23832 Int)) )
))
(declare-datatypes ((Regex!14051 0))(
  ( (ElementMatch!14051 (c!876453 C!28360)) (Concat!22896 (regOne!28614 Regex!14051) (regTwo!28614 Regex!14051)) (EmptyExpr!14051) (Star!14051 (reg!14380 Regex!14051)) (EmptyLang!14051) (Union!14051 (regOne!28615 Regex!14051) (regTwo!28615 Regex!14051)) )
))
(declare-datatypes ((List!58939 0))(
  ( (Nil!58815) (Cons!58815 (h!65263 Regex!14051) (t!371940 List!58939)) )
))
(declare-datatypes ((Context!6870 0))(
  ( (Context!6871 (exprs!3935 List!58939)) )
))
(declare-datatypes ((List!58940 0))(
  ( (Nil!58816) (Cons!58816 (h!65264 Context!6870) (t!371941 List!58940)) )
))
(declare-fun lt!2098020 () List!58940)

(declare-fun r!12920 () Regex!14051)

(declare-fun unfocusZipper!393 (List!58940) Regex!14051)

(assert (=> b!5101820 (= res!2171407 (= (unfocusZipper!393 lt!2098020) r!12920))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6870))

(declare-fun toList!8185 ((InoxSet Context!6870)) List!58940)

(assert (=> b!5101820 (= lt!2098020 (toList!8185 z!4303))))

(declare-fun b!5101821 () Bool)

(declare-fun res!2171411 () Bool)

(declare-fun e!3181902 () Bool)

(assert (=> b!5101821 (=> res!2171411 e!3181902)))

(declare-datatypes ((List!58941 0))(
  ( (Nil!58817) (Cons!58817 (h!65265 C!28360) (t!371942 List!58941)) )
))
(declare-datatypes ((tuple2!63488 0))(
  ( (tuple2!63489 (_1!35047 List!58941) (_2!35047 List!58941)) )
))
(declare-fun lt!2098021 () tuple2!63488)

(declare-fun input!5654 () List!58941)

(declare-fun isPrefix!5452 (List!58941 List!58941) Bool)

(assert (=> b!5101821 (= res!2171411 (not (isPrefix!5452 (_1!35047 lt!2098021) input!5654)))))

(declare-fun b!5101823 () Bool)

(declare-fun e!3181905 () Bool)

(declare-fun e!3181892 () Bool)

(assert (=> b!5101823 (= e!3181905 e!3181892)))

(declare-fun res!2171410 () Bool)

(assert (=> b!5101823 (=> (not res!2171410) (not e!3181892))))

(declare-fun lt!2098019 () List!58941)

(assert (=> b!5101823 (= res!2171410 (= lt!2098019 input!5654))))

(declare-fun lt!2098031 () tuple2!63488)

(declare-fun ++!12900 (List!58941 List!58941) List!58941)

(assert (=> b!5101823 (= lt!2098019 (++!12900 (_1!35047 lt!2098031) (_2!35047 lt!2098031)))))

(declare-fun b!5101824 () Bool)

(declare-fun e!3181899 () Bool)

(declare-fun isEmpty!31796 (List!58941) Bool)

(assert (=> b!5101824 (= e!3181899 (not (isEmpty!31796 (_1!35047 lt!2098021))))))

(declare-fun b!5101825 () Bool)

(declare-fun e!3181900 () Bool)

(declare-fun tp!1423142 () Bool)

(declare-fun tp!1423137 () Bool)

(assert (=> b!5101825 (= e!3181900 (and tp!1423142 tp!1423137))))

(declare-fun b!5101826 () Bool)

(declare-fun e!3181904 () Bool)

(declare-fun lt!2098028 () tuple2!63488)

(declare-fun matchR!6836 (Regex!14051 List!58941) Bool)

(assert (=> b!5101826 (= e!3181904 (matchR!6836 r!12920 (_1!35047 lt!2098028)))))

(declare-fun setElem!29242 () Context!6870)

(declare-fun tp!1423140 () Bool)

(declare-fun setNonEmpty!29242 () Bool)

(declare-fun setRes!29242 () Bool)

(declare-fun inv!78302 (Context!6870) Bool)

(assert (=> setNonEmpty!29242 (= setRes!29242 (and tp!1423140 (inv!78302 setElem!29242) e!3181897))))

(declare-fun setRest!29242 () (InoxSet Context!6870))

(assert (=> setNonEmpty!29242 (= z!4303 ((_ map or) (store ((as const (Array Context!6870 Bool)) false) setElem!29242 true) setRest!29242))))

(declare-fun b!5101827 () Bool)

(declare-fun tp_is_empty!37367 () Bool)

(assert (=> b!5101827 (= e!3181900 tp_is_empty!37367)))

(declare-fun b!5101828 () Bool)

(declare-fun tp!1423138 () Bool)

(assert (=> b!5101828 (= e!3181900 tp!1423138)))

(declare-fun b!5101829 () Bool)

(declare-fun e!3181898 () Bool)

(assert (=> b!5101829 (= e!3181892 (not e!3181898))))

(declare-fun res!2171401 () Bool)

(assert (=> b!5101829 (=> res!2171401 e!3181898)))

(assert (=> b!5101829 (= res!2171401 e!3181899)))

(declare-fun res!2171408 () Bool)

(assert (=> b!5101829 (=> (not res!2171408) (not e!3181899))))

(declare-fun lt!2098023 () Bool)

(assert (=> b!5101829 (= res!2171408 (not lt!2098023))))

(declare-fun matchZipper!723 ((InoxSet Context!6870) List!58941) Bool)

(assert (=> b!5101829 (= lt!2098023 (matchZipper!723 z!4303 (_1!35047 lt!2098021)))))

(assert (=> b!5101829 e!3181904))

(declare-fun res!2171409 () Bool)

(assert (=> b!5101829 (=> res!2171409 e!3181904)))

(assert (=> b!5101829 (= res!2171409 (isEmpty!31796 (_1!35047 lt!2098028)))))

(declare-fun lt!2098025 () Int)

(declare-fun lt!2098030 () Int)

(declare-fun findLongestMatchInner!2064 (Regex!14051 List!58941 Int List!58941 List!58941 Int) tuple2!63488)

(assert (=> b!5101829 (= lt!2098028 (findLongestMatchInner!2064 r!12920 Nil!58817 lt!2098030 input!5654 input!5654 lt!2098025))))

(declare-datatypes ((Unit!149850 0))(
  ( (Unit!149851) )
))
(declare-fun lt!2098017 () Unit!149850)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2048 (Regex!14051 List!58941) Unit!149850)

(assert (=> b!5101829 (= lt!2098017 (longestMatchIsAcceptedByMatchOrIsEmpty!2048 r!12920 input!5654))))

(declare-fun e!3181893 () Bool)

(assert (=> b!5101829 e!3181893))

(declare-fun res!2171405 () Bool)

(assert (=> b!5101829 (=> res!2171405 e!3181893)))

(declare-fun lt!2098014 () tuple2!63488)

(assert (=> b!5101829 (= res!2171405 (isEmpty!31796 (_1!35047 lt!2098014)))))

(declare-fun findLongestMatchInnerZipper!125 ((InoxSet Context!6870) List!58941 Int List!58941 List!58941 Int) tuple2!63488)

(assert (=> b!5101829 (= lt!2098014 (findLongestMatchInnerZipper!125 z!4303 Nil!58817 lt!2098030 input!5654 input!5654 lt!2098025))))

(declare-fun size!39353 (List!58941) Int)

(assert (=> b!5101829 (= lt!2098025 (size!39353 input!5654))))

(assert (=> b!5101829 (= lt!2098030 (size!39353 Nil!58817))))

(declare-fun lt!2098018 () Unit!149850)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2049 ((InoxSet Context!6870) List!58941) Unit!149850)

(assert (=> b!5101829 (= lt!2098018 (longestMatchIsAcceptedByMatchOrIsEmpty!2049 z!4303 input!5654))))

(assert (=> b!5101829 (isPrefix!5452 (_1!35047 lt!2098031) lt!2098019)))

(declare-fun lt!2098027 () Unit!149850)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3510 (List!58941 List!58941) Unit!149850)

(assert (=> b!5101829 (= lt!2098027 (lemmaConcatTwoListThenFirstIsPrefix!3510 (_1!35047 lt!2098031) (_2!35047 lt!2098031)))))

(declare-fun lt!2098026 () List!58941)

(assert (=> b!5101829 (isPrefix!5452 (_1!35047 lt!2098021) lt!2098026)))

(declare-fun lt!2098022 () Unit!149850)

(assert (=> b!5101829 (= lt!2098022 (lemmaConcatTwoListThenFirstIsPrefix!3510 (_1!35047 lt!2098021) (_2!35047 lt!2098021)))))

(declare-fun b!5101830 () Bool)

(declare-fun e!3181895 () Bool)

(assert (=> b!5101830 (= e!3181895 (not (isEmpty!31796 (_1!35047 lt!2098031))))))

(declare-fun b!5101822 () Bool)

(assert (=> b!5101822 (= e!3181896 e!3181905)))

(declare-fun res!2171403 () Bool)

(assert (=> b!5101822 (=> (not res!2171403) (not e!3181905))))

(assert (=> b!5101822 (= res!2171403 (= lt!2098026 input!5654))))

(assert (=> b!5101822 (= lt!2098026 (++!12900 (_1!35047 lt!2098021) (_2!35047 lt!2098021)))))

(declare-fun findLongestMatch!1881 (Regex!14051 List!58941) tuple2!63488)

(assert (=> b!5101822 (= lt!2098031 (findLongestMatch!1881 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!75 ((InoxSet Context!6870) List!58941) tuple2!63488)

(assert (=> b!5101822 (= lt!2098021 (findLongestMatchZipper!75 z!4303 input!5654))))

(declare-fun res!2171402 () Bool)

(assert (=> start!538020 (=> (not res!2171402) (not e!3181901))))

(declare-fun validRegex!6178 (Regex!14051) Bool)

(assert (=> start!538020 (= res!2171402 (validRegex!6178 r!12920))))

(assert (=> start!538020 e!3181901))

(assert (=> start!538020 e!3181900))

(declare-fun condSetEmpty!29242 () Bool)

(assert (=> start!538020 (= condSetEmpty!29242 (= z!4303 ((as const (Array Context!6870 Bool)) false)))))

(assert (=> start!538020 setRes!29242))

(declare-fun e!3181894 () Bool)

(assert (=> start!538020 e!3181894))

(declare-fun b!5101831 () Bool)

(declare-fun e!3181903 () Bool)

(assert (=> b!5101831 (= e!3181903 e!3181902)))

(declare-fun res!2171412 () Bool)

(assert (=> b!5101831 (=> res!2171412 e!3181902)))

(declare-fun lt!2098032 () Int)

(declare-fun lt!2098024 () Int)

(assert (=> b!5101831 (= res!2171412 (<= lt!2098032 lt!2098024))))

(assert (=> b!5101831 (= lt!2098024 (size!39353 (_1!35047 lt!2098021)))))

(assert (=> b!5101831 (= lt!2098032 (size!39353 (_1!35047 lt!2098031)))))

(assert (=> b!5101831 (= (matchR!6836 r!12920 (_1!35047 lt!2098021)) lt!2098023)))

(declare-fun lt!2098016 () Unit!149850)

(declare-fun theoremZipperRegexEquiv!215 ((InoxSet Context!6870) List!58940 Regex!14051 List!58941) Unit!149850)

(assert (=> b!5101831 (= lt!2098016 (theoremZipperRegexEquiv!215 z!4303 lt!2098020 r!12920 (_1!35047 lt!2098021)))))

(declare-fun lt!2098029 () Bool)

(assert (=> b!5101831 (= lt!2098029 (matchZipper!723 z!4303 (_1!35047 lt!2098031)))))

(declare-fun lt!2098015 () Unit!149850)

(assert (=> b!5101831 (= lt!2098015 (theoremZipperRegexEquiv!215 z!4303 lt!2098020 r!12920 (_1!35047 lt!2098031)))))

(declare-fun b!5101832 () Bool)

(declare-fun tp!1423143 () Bool)

(assert (=> b!5101832 (= e!3181894 (and tp_is_empty!37367 tp!1423143))))

(declare-fun b!5101833 () Bool)

(declare-fun res!2171406 () Bool)

(assert (=> b!5101833 (=> res!2171406 e!3181902)))

(assert (=> b!5101833 (= res!2171406 (not (isPrefix!5452 (_1!35047 lt!2098031) input!5654)))))

(declare-fun b!5101834 () Bool)

(assert (=> b!5101834 (= e!3181898 e!3181903)))

(declare-fun res!2171400 () Bool)

(assert (=> b!5101834 (=> res!2171400 e!3181903)))

(assert (=> b!5101834 (= res!2171400 e!3181895)))

(declare-fun res!2171404 () Bool)

(assert (=> b!5101834 (=> (not res!2171404) (not e!3181895))))

(assert (=> b!5101834 (= res!2171404 (not lt!2098029))))

(assert (=> b!5101834 (= lt!2098029 (matchR!6836 r!12920 (_1!35047 lt!2098031)))))

(declare-fun b!5101835 () Bool)

(declare-fun tp!1423139 () Bool)

(declare-fun tp!1423136 () Bool)

(assert (=> b!5101835 (= e!3181900 (and tp!1423139 tp!1423136))))

(declare-fun setIsEmpty!29242 () Bool)

(assert (=> setIsEmpty!29242 setRes!29242))

(declare-fun b!5101836 () Bool)

(assert (=> b!5101836 (= e!3181902 (>= lt!2098032 lt!2098024))))

(declare-fun b!5101837 () Bool)

(assert (=> b!5101837 (= e!3181893 (matchZipper!723 z!4303 (_1!35047 lt!2098014)))))

(assert (= (and start!538020 res!2171402) b!5101820))

(assert (= (and b!5101820 res!2171407) b!5101822))

(assert (= (and b!5101822 res!2171403) b!5101823))

(assert (= (and b!5101823 res!2171410) b!5101829))

(assert (= (and b!5101829 (not res!2171405)) b!5101837))

(assert (= (and b!5101829 (not res!2171409)) b!5101826))

(assert (= (and b!5101829 res!2171408) b!5101824))

(assert (= (and b!5101829 (not res!2171401)) b!5101834))

(assert (= (and b!5101834 res!2171404) b!5101830))

(assert (= (and b!5101834 (not res!2171400)) b!5101831))

(assert (= (and b!5101831 (not res!2171412)) b!5101821))

(assert (= (and b!5101821 (not res!2171411)) b!5101833))

(assert (= (and b!5101833 (not res!2171406)) b!5101836))

(get-info :version)

(assert (= (and start!538020 ((_ is ElementMatch!14051) r!12920)) b!5101827))

(assert (= (and start!538020 ((_ is Concat!22896) r!12920)) b!5101825))

(assert (= (and start!538020 ((_ is Star!14051) r!12920)) b!5101828))

(assert (= (and start!538020 ((_ is Union!14051) r!12920)) b!5101835))

(assert (= (and start!538020 condSetEmpty!29242) setIsEmpty!29242))

(assert (= (and start!538020 (not condSetEmpty!29242)) setNonEmpty!29242))

(assert (= setNonEmpty!29242 b!5101819))

(assert (= (and start!538020 ((_ is Cons!58817) input!5654)) b!5101832))

(declare-fun m!6159178 () Bool)

(assert (=> b!5101820 m!6159178))

(declare-fun m!6159180 () Bool)

(assert (=> b!5101820 m!6159180))

(declare-fun m!6159182 () Bool)

(assert (=> b!5101830 m!6159182))

(declare-fun m!6159184 () Bool)

(assert (=> b!5101826 m!6159184))

(declare-fun m!6159186 () Bool)

(assert (=> b!5101822 m!6159186))

(declare-fun m!6159188 () Bool)

(assert (=> b!5101822 m!6159188))

(declare-fun m!6159190 () Bool)

(assert (=> b!5101822 m!6159190))

(declare-fun m!6159192 () Bool)

(assert (=> b!5101829 m!6159192))

(declare-fun m!6159194 () Bool)

(assert (=> b!5101829 m!6159194))

(declare-fun m!6159196 () Bool)

(assert (=> b!5101829 m!6159196))

(declare-fun m!6159198 () Bool)

(assert (=> b!5101829 m!6159198))

(declare-fun m!6159200 () Bool)

(assert (=> b!5101829 m!6159200))

(declare-fun m!6159202 () Bool)

(assert (=> b!5101829 m!6159202))

(declare-fun m!6159204 () Bool)

(assert (=> b!5101829 m!6159204))

(declare-fun m!6159206 () Bool)

(assert (=> b!5101829 m!6159206))

(declare-fun m!6159208 () Bool)

(assert (=> b!5101829 m!6159208))

(declare-fun m!6159210 () Bool)

(assert (=> b!5101829 m!6159210))

(declare-fun m!6159212 () Bool)

(assert (=> b!5101829 m!6159212))

(declare-fun m!6159214 () Bool)

(assert (=> b!5101829 m!6159214))

(declare-fun m!6159216 () Bool)

(assert (=> b!5101829 m!6159216))

(declare-fun m!6159218 () Bool)

(assert (=> setNonEmpty!29242 m!6159218))

(declare-fun m!6159220 () Bool)

(assert (=> start!538020 m!6159220))

(declare-fun m!6159222 () Bool)

(assert (=> b!5101834 m!6159222))

(declare-fun m!6159224 () Bool)

(assert (=> b!5101824 m!6159224))

(declare-fun m!6159226 () Bool)

(assert (=> b!5101821 m!6159226))

(declare-fun m!6159228 () Bool)

(assert (=> b!5101831 m!6159228))

(declare-fun m!6159230 () Bool)

(assert (=> b!5101831 m!6159230))

(declare-fun m!6159232 () Bool)

(assert (=> b!5101831 m!6159232))

(declare-fun m!6159234 () Bool)

(assert (=> b!5101831 m!6159234))

(declare-fun m!6159236 () Bool)

(assert (=> b!5101831 m!6159236))

(declare-fun m!6159238 () Bool)

(assert (=> b!5101831 m!6159238))

(declare-fun m!6159240 () Bool)

(assert (=> b!5101837 m!6159240))

(declare-fun m!6159242 () Bool)

(assert (=> b!5101833 m!6159242))

(declare-fun m!6159244 () Bool)

(assert (=> b!5101823 m!6159244))

(check-sat (not setNonEmpty!29242) (not b!5101829) (not b!5101825) (not b!5101831) (not b!5101820) (not b!5101822) (not b!5101835) (not b!5101837) (not b!5101833) tp_is_empty!37367 (not b!5101821) (not b!5101828) (not b!5101826) (not b!5101832) (not b!5101823) (not b!5101830) (not b!5101834) (not b!5101819) (not b!5101824) (not start!538020))
(check-sat)
