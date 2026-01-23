; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537752 () Bool)

(assert start!537752)

(declare-fun b!5098647 () Bool)

(declare-fun e!3179776 () Bool)

(declare-fun tp!1421827 () Bool)

(declare-fun tp!1421830 () Bool)

(assert (=> b!5098647 (= e!3179776 (and tp!1421827 tp!1421830))))

(declare-fun b!5098648 () Bool)

(declare-fun res!2169865 () Bool)

(declare-fun e!3179779 () Bool)

(assert (=> b!5098648 (=> (not res!2169865) (not e!3179779))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28284 0))(
  ( (C!28285 (val!23794 Int)) )
))
(declare-datatypes ((Regex!14013 0))(
  ( (ElementMatch!14013 (c!876119 C!28284)) (Concat!22858 (regOne!28538 Regex!14013) (regTwo!28538 Regex!14013)) (EmptyExpr!14013) (Star!14013 (reg!14342 Regex!14013)) (EmptyLang!14013) (Union!14013 (regOne!28539 Regex!14013) (regTwo!28539 Regex!14013)) )
))
(declare-datatypes ((List!58825 0))(
  ( (Nil!58701) (Cons!58701 (h!65149 Regex!14013) (t!371826 List!58825)) )
))
(declare-datatypes ((Context!6794 0))(
  ( (Context!6795 (exprs!3897 List!58825)) )
))
(declare-fun z!4303 () (InoxSet Context!6794))

(declare-fun r!12920 () Regex!14013)

(declare-datatypes ((List!58826 0))(
  ( (Nil!58702) (Cons!58702 (h!65150 Context!6794) (t!371827 List!58826)) )
))
(declare-fun unfocusZipper!355 (List!58826) Regex!14013)

(declare-fun toList!8147 ((InoxSet Context!6794)) List!58826)

(assert (=> b!5098648 (= res!2169865 (= (unfocusZipper!355 (toList!8147 z!4303)) r!12920))))

(declare-fun b!5098649 () Bool)

(declare-fun e!3179778 () Bool)

(declare-fun tp!1421831 () Bool)

(assert (=> b!5098649 (= e!3179778 tp!1421831)))

(declare-fun b!5098650 () Bool)

(declare-fun e!3179777 () Bool)

(assert (=> b!5098650 (= e!3179779 e!3179777)))

(declare-fun res!2169866 () Bool)

(assert (=> b!5098650 (=> (not res!2169866) (not e!3179777))))

(declare-datatypes ((List!58827 0))(
  ( (Nil!58703) (Cons!58703 (h!65151 C!28284) (t!371828 List!58827)) )
))
(declare-fun lt!2095183 () List!58827)

(declare-fun input!5654 () List!58827)

(assert (=> b!5098650 (= res!2169866 (= lt!2095183 input!5654))))

(declare-datatypes ((tuple2!63412 0))(
  ( (tuple2!63413 (_1!35009 List!58827) (_2!35009 List!58827)) )
))
(declare-fun lt!2095182 () tuple2!63412)

(declare-fun ++!12862 (List!58827 List!58827) List!58827)

(assert (=> b!5098650 (= lt!2095183 (++!12862 (_1!35009 lt!2095182) (_2!35009 lt!2095182)))))

(declare-fun lt!2095181 () tuple2!63412)

(declare-fun findLongestMatch!1843 (Regex!14013 List!58827) tuple2!63412)

(assert (=> b!5098650 (= lt!2095181 (findLongestMatch!1843 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!37 ((InoxSet Context!6794) List!58827) tuple2!63412)

(assert (=> b!5098650 (= lt!2095182 (findLongestMatchZipper!37 z!4303 input!5654))))

(declare-fun b!5098652 () Bool)

(declare-fun e!3179781 () Bool)

(declare-fun tp_is_empty!37291 () Bool)

(declare-fun tp!1421825 () Bool)

(assert (=> b!5098652 (= e!3179781 (and tp_is_empty!37291 tp!1421825))))

(declare-fun b!5098653 () Bool)

(declare-fun tp!1421828 () Bool)

(assert (=> b!5098653 (= e!3179776 tp!1421828)))

(declare-fun b!5098654 () Bool)

(declare-fun tp!1421829 () Bool)

(declare-fun tp!1421826 () Bool)

(assert (=> b!5098654 (= e!3179776 (and tp!1421829 tp!1421826))))

(declare-fun tp!1421824 () Bool)

(declare-fun setRes!29104 () Bool)

(declare-fun setNonEmpty!29104 () Bool)

(declare-fun setElem!29104 () Context!6794)

(declare-fun inv!78207 (Context!6794) Bool)

(assert (=> setNonEmpty!29104 (= setRes!29104 (and tp!1421824 (inv!78207 setElem!29104) e!3179778))))

(declare-fun setRest!29104 () (InoxSet Context!6794))

(assert (=> setNonEmpty!29104 (= z!4303 ((_ map or) (store ((as const (Array Context!6794 Bool)) false) setElem!29104 true) setRest!29104))))

(declare-fun b!5098655 () Bool)

(assert (=> b!5098655 (= e!3179776 tp_is_empty!37291)))

(declare-fun b!5098656 () Bool)

(declare-fun e!3179775 () Bool)

(declare-fun lt!2095185 () tuple2!63412)

(declare-fun matchZipper!689 ((InoxSet Context!6794) List!58827) Bool)

(assert (=> b!5098656 (= e!3179775 (matchZipper!689 z!4303 (_1!35009 lt!2095185)))))

(declare-fun b!5098657 () Bool)

(declare-fun e!3179780 () Bool)

(assert (=> b!5098657 (= e!3179777 e!3179780)))

(declare-fun res!2169864 () Bool)

(assert (=> b!5098657 (=> (not res!2169864) (not e!3179780))))

(declare-fun lt!2095180 () List!58827)

(assert (=> b!5098657 (= res!2169864 (= lt!2095180 input!5654))))

(assert (=> b!5098657 (= lt!2095180 (++!12862 (_1!35009 lt!2095181) (_2!35009 lt!2095181)))))

(declare-fun setIsEmpty!29104 () Bool)

(assert (=> setIsEmpty!29104 setRes!29104))

(declare-fun res!2169868 () Bool)

(assert (=> start!537752 (=> (not res!2169868) (not e!3179779))))

(declare-fun validRegex!6140 (Regex!14013) Bool)

(assert (=> start!537752 (= res!2169868 (validRegex!6140 r!12920))))

(assert (=> start!537752 e!3179779))

(assert (=> start!537752 e!3179776))

(declare-fun condSetEmpty!29104 () Bool)

(assert (=> start!537752 (= condSetEmpty!29104 (= z!4303 ((as const (Array Context!6794 Bool)) false)))))

(assert (=> start!537752 setRes!29104))

(assert (=> start!537752 e!3179781))

(declare-fun b!5098651 () Bool)

(assert (=> b!5098651 (= e!3179780 (not true))))

(assert (=> b!5098651 e!3179775))

(declare-fun res!2169867 () Bool)

(assert (=> b!5098651 (=> res!2169867 e!3179775)))

(declare-fun isEmpty!31762 (List!58827) Bool)

(assert (=> b!5098651 (= res!2169867 (isEmpty!31762 (_1!35009 lt!2095185)))))

(declare-fun findLongestMatchInnerZipper!87 ((InoxSet Context!6794) List!58827 Int List!58827 List!58827 Int) tuple2!63412)

(declare-fun size!39315 (List!58827) Int)

(assert (=> b!5098651 (= lt!2095185 (findLongestMatchInnerZipper!87 z!4303 Nil!58703 (size!39315 Nil!58703) input!5654 input!5654 (size!39315 input!5654)))))

(declare-datatypes ((Unit!149750 0))(
  ( (Unit!149751) )
))
(declare-fun lt!2095179 () Unit!149750)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1981 ((InoxSet Context!6794) List!58827) Unit!149750)

(assert (=> b!5098651 (= lt!2095179 (longestMatchIsAcceptedByMatchOrIsEmpty!1981 z!4303 input!5654))))

(declare-fun isPrefix!5418 (List!58827 List!58827) Bool)

(assert (=> b!5098651 (isPrefix!5418 (_1!35009 lt!2095181) lt!2095180)))

(declare-fun lt!2095184 () Unit!149750)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3476 (List!58827 List!58827) Unit!149750)

(assert (=> b!5098651 (= lt!2095184 (lemmaConcatTwoListThenFirstIsPrefix!3476 (_1!35009 lt!2095181) (_2!35009 lt!2095181)))))

(assert (=> b!5098651 (isPrefix!5418 (_1!35009 lt!2095182) lt!2095183)))

(declare-fun lt!2095186 () Unit!149750)

(assert (=> b!5098651 (= lt!2095186 (lemmaConcatTwoListThenFirstIsPrefix!3476 (_1!35009 lt!2095182) (_2!35009 lt!2095182)))))

(assert (= (and start!537752 res!2169868) b!5098648))

(assert (= (and b!5098648 res!2169865) b!5098650))

(assert (= (and b!5098650 res!2169866) b!5098657))

(assert (= (and b!5098657 res!2169864) b!5098651))

(assert (= (and b!5098651 (not res!2169867)) b!5098656))

(get-info :version)

(assert (= (and start!537752 ((_ is ElementMatch!14013) r!12920)) b!5098655))

(assert (= (and start!537752 ((_ is Concat!22858) r!12920)) b!5098654))

(assert (= (and start!537752 ((_ is Star!14013) r!12920)) b!5098653))

(assert (= (and start!537752 ((_ is Union!14013) r!12920)) b!5098647))

(assert (= (and start!537752 condSetEmpty!29104) setIsEmpty!29104))

(assert (= (and start!537752 (not condSetEmpty!29104)) setNonEmpty!29104))

(assert (= setNonEmpty!29104 b!5098649))

(assert (= (and start!537752 ((_ is Cons!58703) input!5654)) b!5098652))

(declare-fun m!6155886 () Bool)

(assert (=> b!5098650 m!6155886))

(declare-fun m!6155888 () Bool)

(assert (=> b!5098650 m!6155888))

(declare-fun m!6155890 () Bool)

(assert (=> b!5098650 m!6155890))

(declare-fun m!6155892 () Bool)

(assert (=> b!5098657 m!6155892))

(declare-fun m!6155894 () Bool)

(assert (=> start!537752 m!6155894))

(declare-fun m!6155896 () Bool)

(assert (=> b!5098648 m!6155896))

(assert (=> b!5098648 m!6155896))

(declare-fun m!6155898 () Bool)

(assert (=> b!5098648 m!6155898))

(declare-fun m!6155900 () Bool)

(assert (=> b!5098651 m!6155900))

(declare-fun m!6155902 () Bool)

(assert (=> b!5098651 m!6155902))

(declare-fun m!6155904 () Bool)

(assert (=> b!5098651 m!6155904))

(declare-fun m!6155906 () Bool)

(assert (=> b!5098651 m!6155906))

(declare-fun m!6155908 () Bool)

(assert (=> b!5098651 m!6155908))

(declare-fun m!6155910 () Bool)

(assert (=> b!5098651 m!6155910))

(declare-fun m!6155912 () Bool)

(assert (=> b!5098651 m!6155912))

(assert (=> b!5098651 m!6155902))

(declare-fun m!6155914 () Bool)

(assert (=> b!5098651 m!6155914))

(assert (=> b!5098651 m!6155912))

(declare-fun m!6155916 () Bool)

(assert (=> b!5098651 m!6155916))

(declare-fun m!6155918 () Bool)

(assert (=> b!5098656 m!6155918))

(declare-fun m!6155920 () Bool)

(assert (=> setNonEmpty!29104 m!6155920))

(check-sat (not b!5098656) (not b!5098651) (not b!5098652) (not b!5098650) (not setNonEmpty!29104) (not b!5098653) (not b!5098657) (not start!537752) (not b!5098649) (not b!5098647) (not b!5098654) tp_is_empty!37291 (not b!5098648))
(check-sat)
