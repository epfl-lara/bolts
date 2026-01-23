; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538008 () Bool)

(assert start!538008)

(declare-fun b!5101498 () Bool)

(declare-fun e!3181651 () Bool)

(declare-datatypes ((C!28348 0))(
  ( (C!28349 (val!23826 Int)) )
))
(declare-datatypes ((Regex!14045 0))(
  ( (ElementMatch!14045 (c!876447 C!28348)) (Concat!22890 (regOne!28602 Regex!14045) (regTwo!28602 Regex!14045)) (EmptyExpr!14045) (Star!14045 (reg!14374 Regex!14045)) (EmptyLang!14045) (Union!14045 (regOne!28603 Regex!14045) (regTwo!28603 Regex!14045)) )
))
(declare-fun r!12920 () Regex!14045)

(declare-datatypes ((List!58921 0))(
  ( (Nil!58797) (Cons!58797 (h!65245 C!28348) (t!371922 List!58921)) )
))
(declare-datatypes ((tuple2!63476 0))(
  ( (tuple2!63477 (_1!35041 List!58921) (_2!35041 List!58921)) )
))
(declare-fun lt!2097708 () tuple2!63476)

(declare-fun matchR!6830 (Regex!14045 List!58921) Bool)

(assert (=> b!5101498 (= e!3181651 (matchR!6830 r!12920 (_1!35041 lt!2097708)))))

(declare-fun b!5101499 () Bool)

(declare-fun e!3181642 () Bool)

(declare-fun tp_is_empty!37355 () Bool)

(assert (=> b!5101499 (= e!3181642 tp_is_empty!37355)))

(declare-fun b!5101500 () Bool)

(declare-fun e!3181643 () Bool)

(declare-fun lt!2097705 () tuple2!63476)

(declare-fun isEmpty!31790 (List!58921) Bool)

(assert (=> b!5101500 (= e!3181643 (not (isEmpty!31790 (_1!35041 lt!2097705))))))

(declare-fun b!5101501 () Bool)

(declare-fun e!3181647 () Bool)

(declare-fun tp!1422996 () Bool)

(assert (=> b!5101501 (= e!3181647 (and tp_is_empty!37355 tp!1422996))))

(declare-fun b!5101502 () Bool)

(declare-fun tp!1422998 () Bool)

(declare-fun tp!1422997 () Bool)

(assert (=> b!5101502 (= e!3181642 (and tp!1422998 tp!1422997))))

(declare-fun tp!1422999 () Bool)

(declare-fun setNonEmpty!29224 () Bool)

(declare-datatypes ((List!58922 0))(
  ( (Nil!58798) (Cons!58798 (h!65246 Regex!14045) (t!371923 List!58922)) )
))
(declare-datatypes ((Context!6858 0))(
  ( (Context!6859 (exprs!3929 List!58922)) )
))
(declare-fun setElem!29224 () Context!6858)

(declare-fun e!3181650 () Bool)

(declare-fun setRes!29224 () Bool)

(declare-fun inv!78287 (Context!6858) Bool)

(assert (=> setNonEmpty!29224 (= setRes!29224 (and tp!1422999 (inv!78287 setElem!29224) e!3181650))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6858))

(declare-fun setRest!29224 () (InoxSet Context!6858))

(assert (=> setNonEmpty!29224 (= z!4303 ((_ map or) (store ((as const (Array Context!6858 Bool)) false) setElem!29224 true) setRest!29224))))

(declare-fun b!5101503 () Bool)

(declare-fun e!3181648 () Bool)

(declare-fun lt!2097703 () tuple2!63476)

(declare-fun matchZipper!717 ((InoxSet Context!6858) List!58921) Bool)

(assert (=> b!5101503 (= e!3181648 (matchZipper!717 z!4303 (_1!35041 lt!2097703)))))

(declare-fun b!5101504 () Bool)

(declare-fun e!3181649 () Bool)

(declare-fun e!3181645 () Bool)

(assert (=> b!5101504 (= e!3181649 e!3181645)))

(declare-fun res!2171189 () Bool)

(assert (=> b!5101504 (=> (not res!2171189) (not e!3181645))))

(declare-fun lt!2097712 () List!58921)

(declare-fun input!5654 () List!58921)

(assert (=> b!5101504 (= res!2171189 (= lt!2097712 input!5654))))

(declare-fun lt!2097702 () tuple2!63476)

(declare-fun ++!12894 (List!58921 List!58921) List!58921)

(assert (=> b!5101504 (= lt!2097712 (++!12894 (_1!35041 lt!2097702) (_2!35041 lt!2097702)))))

(declare-fun b!5101505 () Bool)

(declare-fun tp!1422995 () Bool)

(declare-fun tp!1422994 () Bool)

(assert (=> b!5101505 (= e!3181642 (and tp!1422995 tp!1422994))))

(declare-fun b!5101506 () Bool)

(declare-fun e!3181644 () Bool)

(assert (=> b!5101506 (= e!3181644 e!3181649)))

(declare-fun res!2171187 () Bool)

(assert (=> b!5101506 (=> (not res!2171187) (not e!3181649))))

(declare-fun lt!2097699 () List!58921)

(assert (=> b!5101506 (= res!2171187 (= lt!2097699 input!5654))))

(assert (=> b!5101506 (= lt!2097699 (++!12894 (_1!35041 lt!2097705) (_2!35041 lt!2097705)))))

(declare-fun findLongestMatch!1875 (Regex!14045 List!58921) tuple2!63476)

(assert (=> b!5101506 (= lt!2097702 (findLongestMatch!1875 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!69 ((InoxSet Context!6858) List!58921) tuple2!63476)

(assert (=> b!5101506 (= lt!2097705 (findLongestMatchZipper!69 z!4303 input!5654))))

(declare-fun b!5101507 () Bool)

(declare-fun tp!1422992 () Bool)

(assert (=> b!5101507 (= e!3181642 tp!1422992)))

(declare-fun b!5101508 () Bool)

(declare-fun e!3181646 () Bool)

(declare-fun e!3181653 () Bool)

(assert (=> b!5101508 (= e!3181646 e!3181653)))

(declare-fun res!2171192 () Bool)

(assert (=> b!5101508 (=> res!2171192 e!3181653)))

(declare-fun e!3181652 () Bool)

(assert (=> b!5101508 (= res!2171192 e!3181652)))

(declare-fun res!2171195 () Bool)

(assert (=> b!5101508 (=> (not res!2171195) (not e!3181652))))

(declare-fun lt!2097707 () Bool)

(assert (=> b!5101508 (= res!2171195 (not lt!2097707))))

(assert (=> b!5101508 (= lt!2097707 (matchR!6830 r!12920 (_1!35041 lt!2097702)))))

(declare-fun b!5101509 () Bool)

(declare-fun e!3181641 () Bool)

(assert (=> b!5101509 (= e!3181641 e!3181644)))

(declare-fun res!2171194 () Bool)

(assert (=> b!5101509 (=> (not res!2171194) (not e!3181644))))

(declare-fun lt!2097700 () Regex!14045)

(assert (=> b!5101509 (= res!2171194 (= lt!2097700 r!12920))))

(declare-datatypes ((List!58923 0))(
  ( (Nil!58799) (Cons!58799 (h!65247 Context!6858) (t!371924 List!58923)) )
))
(declare-fun lt!2097709 () List!58923)

(declare-fun unfocusZipper!387 (List!58923) Regex!14045)

(assert (=> b!5101509 (= lt!2097700 (unfocusZipper!387 lt!2097709))))

(declare-fun toList!8179 ((InoxSet Context!6858)) List!58923)

(assert (=> b!5101509 (= lt!2097709 (toList!8179 z!4303))))

(declare-fun b!5101510 () Bool)

(assert (=> b!5101510 (= e!3181652 (not (isEmpty!31790 (_1!35041 lt!2097702))))))

(declare-fun res!2171190 () Bool)

(assert (=> start!538008 (=> (not res!2171190) (not e!3181641))))

(declare-fun validRegex!6172 (Regex!14045) Bool)

(assert (=> start!538008 (= res!2171190 (validRegex!6172 r!12920))))

(assert (=> start!538008 e!3181641))

(assert (=> start!538008 e!3181642))

(declare-fun condSetEmpty!29224 () Bool)

(assert (=> start!538008 (= condSetEmpty!29224 (= z!4303 ((as const (Array Context!6858 Bool)) false)))))

(assert (=> start!538008 setRes!29224))

(assert (=> start!538008 e!3181647))

(declare-fun b!5101511 () Bool)

(declare-fun tp!1422993 () Bool)

(assert (=> b!5101511 (= e!3181650 tp!1422993)))

(declare-fun b!5101512 () Bool)

(assert (=> b!5101512 (= e!3181645 (not e!3181646))))

(declare-fun res!2171191 () Bool)

(assert (=> b!5101512 (=> res!2171191 e!3181646)))

(assert (=> b!5101512 (= res!2171191 e!3181643)))

(declare-fun res!2171188 () Bool)

(assert (=> b!5101512 (=> (not res!2171188) (not e!3181643))))

(assert (=> b!5101512 (= res!2171188 (not (matchZipper!717 z!4303 (_1!35041 lt!2097705))))))

(assert (=> b!5101512 e!3181651))

(declare-fun res!2171196 () Bool)

(assert (=> b!5101512 (=> res!2171196 e!3181651)))

(assert (=> b!5101512 (= res!2171196 (isEmpty!31790 (_1!35041 lt!2097708)))))

(declare-fun lt!2097706 () Int)

(declare-fun lt!2097710 () Int)

(declare-fun findLongestMatchInner!2058 (Regex!14045 List!58921 Int List!58921 List!58921 Int) tuple2!63476)

(assert (=> b!5101512 (= lt!2097708 (findLongestMatchInner!2058 r!12920 Nil!58797 lt!2097706 input!5654 input!5654 lt!2097710))))

(declare-datatypes ((Unit!149838 0))(
  ( (Unit!149839) )
))
(declare-fun lt!2097713 () Unit!149838)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2036 (Regex!14045 List!58921) Unit!149838)

(assert (=> b!5101512 (= lt!2097713 (longestMatchIsAcceptedByMatchOrIsEmpty!2036 r!12920 input!5654))))

(assert (=> b!5101512 e!3181648))

(declare-fun res!2171193 () Bool)

(assert (=> b!5101512 (=> res!2171193 e!3181648)))

(assert (=> b!5101512 (= res!2171193 (isEmpty!31790 (_1!35041 lt!2097703)))))

(declare-fun findLongestMatchInnerZipper!119 ((InoxSet Context!6858) List!58921 Int List!58921 List!58921 Int) tuple2!63476)

(assert (=> b!5101512 (= lt!2097703 (findLongestMatchInnerZipper!119 z!4303 Nil!58797 lt!2097706 input!5654 input!5654 lt!2097710))))

(declare-fun size!39347 (List!58921) Int)

(assert (=> b!5101512 (= lt!2097710 (size!39347 input!5654))))

(assert (=> b!5101512 (= lt!2097706 (size!39347 Nil!58797))))

(declare-fun lt!2097714 () Unit!149838)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2037 ((InoxSet Context!6858) List!58921) Unit!149838)

(assert (=> b!5101512 (= lt!2097714 (longestMatchIsAcceptedByMatchOrIsEmpty!2037 z!4303 input!5654))))

(declare-fun isPrefix!5446 (List!58921 List!58921) Bool)

(assert (=> b!5101512 (isPrefix!5446 (_1!35041 lt!2097702) lt!2097712)))

(declare-fun lt!2097701 () Unit!149838)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3504 (List!58921 List!58921) Unit!149838)

(assert (=> b!5101512 (= lt!2097701 (lemmaConcatTwoListThenFirstIsPrefix!3504 (_1!35041 lt!2097702) (_2!35041 lt!2097702)))))

(assert (=> b!5101512 (isPrefix!5446 (_1!35041 lt!2097705) lt!2097699)))

(declare-fun lt!2097704 () Unit!149838)

(assert (=> b!5101512 (= lt!2097704 (lemmaConcatTwoListThenFirstIsPrefix!3504 (_1!35041 lt!2097705) (_2!35041 lt!2097705)))))

(declare-fun b!5101513 () Bool)

(assert (=> b!5101513 (= e!3181653 (= r!12920 lt!2097700))))

(assert (=> b!5101513 (= lt!2097707 (matchZipper!717 z!4303 (_1!35041 lt!2097702)))))

(declare-fun lt!2097711 () Unit!149838)

(declare-fun theoremZipperRegexEquiv!209 ((InoxSet Context!6858) List!58923 Regex!14045 List!58921) Unit!149838)

(assert (=> b!5101513 (= lt!2097711 (theoremZipperRegexEquiv!209 z!4303 lt!2097709 r!12920 (_1!35041 lt!2097702)))))

(declare-fun setIsEmpty!29224 () Bool)

(assert (=> setIsEmpty!29224 setRes!29224))

(assert (= (and start!538008 res!2171190) b!5101509))

(assert (= (and b!5101509 res!2171194) b!5101506))

(assert (= (and b!5101506 res!2171187) b!5101504))

(assert (= (and b!5101504 res!2171189) b!5101512))

(assert (= (and b!5101512 (not res!2171193)) b!5101503))

(assert (= (and b!5101512 (not res!2171196)) b!5101498))

(assert (= (and b!5101512 res!2171188) b!5101500))

(assert (= (and b!5101512 (not res!2171191)) b!5101508))

(assert (= (and b!5101508 res!2171195) b!5101510))

(assert (= (and b!5101508 (not res!2171192)) b!5101513))

(get-info :version)

(assert (= (and start!538008 ((_ is ElementMatch!14045) r!12920)) b!5101499))

(assert (= (and start!538008 ((_ is Concat!22890) r!12920)) b!5101502))

(assert (= (and start!538008 ((_ is Star!14045) r!12920)) b!5101507))

(assert (= (and start!538008 ((_ is Union!14045) r!12920)) b!5101505))

(assert (= (and start!538008 condSetEmpty!29224) setIsEmpty!29224))

(assert (= (and start!538008 (not condSetEmpty!29224)) setNonEmpty!29224))

(assert (= setNonEmpty!29224 b!5101511))

(assert (= (and start!538008 ((_ is Cons!58797) input!5654)) b!5101501))

(declare-fun m!6158786 () Bool)

(assert (=> b!5101509 m!6158786))

(declare-fun m!6158788 () Bool)

(assert (=> b!5101509 m!6158788))

(declare-fun m!6158790 () Bool)

(assert (=> b!5101508 m!6158790))

(declare-fun m!6158792 () Bool)

(assert (=> b!5101510 m!6158792))

(declare-fun m!6158794 () Bool)

(assert (=> b!5101504 m!6158794))

(declare-fun m!6158796 () Bool)

(assert (=> b!5101506 m!6158796))

(declare-fun m!6158798 () Bool)

(assert (=> b!5101506 m!6158798))

(declare-fun m!6158800 () Bool)

(assert (=> b!5101506 m!6158800))

(declare-fun m!6158802 () Bool)

(assert (=> b!5101500 m!6158802))

(declare-fun m!6158804 () Bool)

(assert (=> start!538008 m!6158804))

(declare-fun m!6158806 () Bool)

(assert (=> b!5101498 m!6158806))

(declare-fun m!6158808 () Bool)

(assert (=> setNonEmpty!29224 m!6158808))

(declare-fun m!6158810 () Bool)

(assert (=> b!5101513 m!6158810))

(declare-fun m!6158812 () Bool)

(assert (=> b!5101513 m!6158812))

(declare-fun m!6158814 () Bool)

(assert (=> b!5101503 m!6158814))

(declare-fun m!6158816 () Bool)

(assert (=> b!5101512 m!6158816))

(declare-fun m!6158818 () Bool)

(assert (=> b!5101512 m!6158818))

(declare-fun m!6158820 () Bool)

(assert (=> b!5101512 m!6158820))

(declare-fun m!6158822 () Bool)

(assert (=> b!5101512 m!6158822))

(declare-fun m!6158824 () Bool)

(assert (=> b!5101512 m!6158824))

(declare-fun m!6158826 () Bool)

(assert (=> b!5101512 m!6158826))

(declare-fun m!6158828 () Bool)

(assert (=> b!5101512 m!6158828))

(declare-fun m!6158830 () Bool)

(assert (=> b!5101512 m!6158830))

(declare-fun m!6158832 () Bool)

(assert (=> b!5101512 m!6158832))

(declare-fun m!6158834 () Bool)

(assert (=> b!5101512 m!6158834))

(declare-fun m!6158836 () Bool)

(assert (=> b!5101512 m!6158836))

(declare-fun m!6158838 () Bool)

(assert (=> b!5101512 m!6158838))

(declare-fun m!6158840 () Bool)

(assert (=> b!5101512 m!6158840))

(check-sat (not b!5101501) (not b!5101507) (not setNonEmpty!29224) (not b!5101506) (not b!5101508) (not start!538008) (not b!5101513) (not b!5101502) (not b!5101505) (not b!5101498) tp_is_empty!37355 (not b!5101512) (not b!5101503) (not b!5101509) (not b!5101500) (not b!5101511) (not b!5101510) (not b!5101504))
(check-sat)
