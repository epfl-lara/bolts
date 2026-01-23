; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13426 () Bool)

(assert start!13426)

(declare-fun b!129714 () Bool)

(declare-fun res!59750 () Bool)

(declare-fun e!74709 () Bool)

(assert (=> b!129714 (=> (not res!59750) (not e!74709))))

(declare-fun e!74711 () Bool)

(assert (=> b!129714 (= res!59750 e!74711)))

(declare-fun res!59751 () Bool)

(assert (=> b!129714 (=> res!59751 e!74711)))

(declare-datatypes ((B!701 0))(
  ( (B!702 (val!836 Int)) )
))
(declare-datatypes ((List!2154 0))(
  ( (Nil!2148) (Cons!2148 (h!7545 B!701) (t!22740 List!2154)) )
))
(declare-fun newList!20 () List!2154)

(get-info :version)

(assert (=> b!129714 (= res!59751 (not ((_ is Cons!2148) newList!20)))))

(declare-fun b!129715 () Bool)

(declare-fun e!74705 () Bool)

(declare-fun lt!38932 () List!2154)

(declare-fun lt!38936 () List!2154)

(declare-fun isPrefix!149 (List!2154 List!2154) Bool)

(assert (=> b!129715 (= e!74705 (isPrefix!149 lt!38932 lt!38936))))

(declare-fun b!129716 () Bool)

(declare-fun e!74707 () Bool)

(assert (=> b!129716 (= e!74707 e!74705)))

(declare-fun res!59746 () Bool)

(assert (=> b!129716 (=> (not res!59746) (not e!74705))))

(declare-fun lt!38937 () List!2154)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!265 (List!2154) (InoxSet B!701))

(assert (=> b!129716 (= res!59746 (= (content!265 lt!38937) (content!265 lt!38936)))))

(declare-fun ++!430 (List!2154 List!2154) List!2154)

(assert (=> b!129716 (= lt!38937 (++!430 lt!38932 (t!22740 newList!20)))))

(declare-fun b!129717 () Bool)

(declare-fun res!59744 () Bool)

(declare-fun e!74706 () Bool)

(assert (=> b!129717 (=> res!59744 e!74706)))

(assert (=> b!129717 (= res!59744 (not (= (content!265 (++!430 lt!38932 newList!20)) (content!265 lt!38936))))))

(declare-fun b!129718 () Bool)

(declare-fun e!74710 () Bool)

(declare-fun tp_is_empty!1345 () Bool)

(declare-fun tp!70179 () Bool)

(assert (=> b!129718 (= e!74710 (and tp_is_empty!1345 tp!70179))))

(declare-fun b!129719 () Bool)

(assert (=> b!129719 (= e!74709 (not e!74706))))

(declare-fun res!59745 () Bool)

(assert (=> b!129719 (=> res!59745 e!74706)))

(declare-fun lt!38935 () Bool)

(assert (=> b!129719 (= res!59745 lt!38935)))

(assert (=> b!129719 e!74707))

(declare-fun res!59748 () Bool)

(assert (=> b!129719 (=> (not res!59748) (not e!74707))))

(assert (=> b!129719 (= res!59748 (not lt!38935))))

(declare-fun noDuplicate!44 (List!2154) Bool)

(assert (=> b!129719 (= lt!38935 (not (noDuplicate!44 lt!38936)))))

(declare-fun concatWithoutDuplicates!8 (List!2154 List!2154) List!2154)

(assert (=> b!129719 (= lt!38936 (concatWithoutDuplicates!8 lt!38932 (t!22740 newList!20)))))

(assert (=> b!129719 (noDuplicate!44 lt!38932)))

(declare-datatypes ((Unit!1680 0))(
  ( (Unit!1681) )
))
(declare-fun lt!38928 () Unit!1680)

(declare-fun baseList!9 () List!2154)

(declare-fun lemmaAppendNewElementElementPreserves!6 (List!2154 B!701) Unit!1680)

(assert (=> b!129719 (= lt!38928 (lemmaAppendNewElementElementPreserves!6 baseList!9 (h!7545 newList!20)))))

(assert (=> b!129719 (isPrefix!149 baseList!9 lt!38932)))

(declare-fun lt!38929 () List!2154)

(assert (=> b!129719 (= lt!38932 (++!430 baseList!9 lt!38929))))

(declare-fun lt!38930 () Unit!1680)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!88 (List!2154 List!2154) Unit!1680)

(assert (=> b!129719 (= lt!38930 (lemmaConcatTwoListThenFirstIsPrefix!88 baseList!9 lt!38929))))

(assert (=> b!129719 (= lt!38929 (Cons!2148 (h!7545 newList!20) Nil!2148))))

(declare-fun b!129720 () Bool)

(declare-fun contains!328 (List!2154 B!701) Bool)

(assert (=> b!129720 (= e!74711 (not (contains!328 baseList!9 (h!7545 newList!20))))))

(declare-fun b!129721 () Bool)

(declare-fun res!59747 () Bool)

(assert (=> b!129721 (=> (not res!59747) (not e!74709))))

(assert (=> b!129721 (= res!59747 ((_ is Cons!2148) newList!20))))

(declare-fun b!129722 () Bool)

(declare-fun e!74708 () Bool)

(declare-fun e!74712 () Bool)

(assert (=> b!129722 (= e!74708 e!74712)))

(declare-fun res!59749 () Bool)

(assert (=> b!129722 (=> res!59749 e!74712)))

(declare-fun lt!38931 () List!2154)

(declare-fun subseq!19 (List!2154 List!2154) Bool)

(assert (=> b!129722 (= res!59749 (not (subseq!19 lt!38936 lt!38931)))))

(declare-fun lt!38934 () List!2154)

(assert (=> b!129722 (= lt!38934 lt!38931)))

(assert (=> b!129722 (= lt!38931 (++!430 baseList!9 (++!430 lt!38929 (t!22740 newList!20))))))

(declare-fun lt!38938 () Unit!1680)

(declare-fun lemmaConcatAssociativity!124 (List!2154 List!2154 List!2154) Unit!1680)

(assert (=> b!129722 (= lt!38938 (lemmaConcatAssociativity!124 baseList!9 lt!38929 (t!22740 newList!20)))))

(declare-fun b!129723 () Bool)

(declare-fun res!59753 () Bool)

(assert (=> b!129723 (=> (not res!59753) (not e!74709))))

(assert (=> b!129723 (= res!59753 (not (contains!328 baseList!9 (h!7545 newList!20))))))

(declare-fun res!59754 () Bool)

(assert (=> start!13426 (=> (not res!59754) (not e!74709))))

(assert (=> start!13426 (= res!59754 (noDuplicate!44 baseList!9))))

(assert (=> start!13426 e!74709))

(assert (=> start!13426 e!74710))

(declare-fun e!74713 () Bool)

(assert (=> start!13426 e!74713))

(declare-fun b!129724 () Bool)

(declare-fun tp!70180 () Bool)

(assert (=> b!129724 (= e!74713 (and tp_is_empty!1345 tp!70180))))

(declare-fun b!129725 () Bool)

(assert (=> b!129725 (= e!74706 e!74708)))

(declare-fun res!59756 () Bool)

(assert (=> b!129725 (=> res!59756 e!74708)))

(assert (=> b!129725 (= res!59756 (not (subseq!19 lt!38936 lt!38934)))))

(assert (=> b!129725 (= lt!38934 (++!430 lt!38932 (t!22740 newList!20)))))

(declare-fun b!129726 () Bool)

(declare-fun res!59752 () Bool)

(assert (=> b!129726 (=> (not res!59752) (not e!74705))))

(assert (=> b!129726 (= res!59752 (subseq!19 lt!38936 lt!38937))))

(declare-fun b!129727 () Bool)

(declare-fun res!59755 () Bool)

(assert (=> b!129727 (=> res!59755 e!74712)))

(assert (=> b!129727 (= res!59755 (not (isPrefix!149 lt!38932 lt!38936)))))

(declare-fun b!129728 () Bool)

(assert (=> b!129728 (= e!74712 true)))

(assert (=> b!129728 (isPrefix!149 baseList!9 lt!38936)))

(declare-fun lt!38933 () Unit!1680)

(declare-fun lemmaRemoveLastConcatenatedPrefixStillPrefix!2 (List!2154 B!701 List!2154) Unit!1680)

(assert (=> b!129728 (= lt!38933 (lemmaRemoveLastConcatenatedPrefixStillPrefix!2 baseList!9 (h!7545 newList!20) lt!38936))))

(assert (= (and start!13426 res!59754) b!129714))

(assert (= (and b!129714 (not res!59751)) b!129720))

(assert (= (and b!129714 res!59750) b!129721))

(assert (= (and b!129721 res!59747) b!129723))

(assert (= (and b!129723 res!59753) b!129719))

(assert (= (and b!129719 res!59748) b!129716))

(assert (= (and b!129716 res!59746) b!129726))

(assert (= (and b!129726 res!59752) b!129715))

(assert (= (and b!129719 (not res!59745)) b!129717))

(assert (= (and b!129717 (not res!59744)) b!129725))

(assert (= (and b!129725 (not res!59756)) b!129722))

(assert (= (and b!129722 (not res!59749)) b!129727))

(assert (= (and b!129727 (not res!59755)) b!129728))

(assert (= (and start!13426 ((_ is Cons!2148) baseList!9)) b!129718))

(assert (= (and start!13426 ((_ is Cons!2148) newList!20)) b!129724))

(declare-fun m!114259 () Bool)

(assert (=> b!129717 m!114259))

(assert (=> b!129717 m!114259))

(declare-fun m!114261 () Bool)

(assert (=> b!129717 m!114261))

(declare-fun m!114263 () Bool)

(assert (=> b!129717 m!114263))

(declare-fun m!114265 () Bool)

(assert (=> b!129715 m!114265))

(declare-fun m!114267 () Bool)

(assert (=> b!129723 m!114267))

(declare-fun m!114269 () Bool)

(assert (=> b!129722 m!114269))

(declare-fun m!114271 () Bool)

(assert (=> b!129722 m!114271))

(assert (=> b!129722 m!114271))

(declare-fun m!114273 () Bool)

(assert (=> b!129722 m!114273))

(declare-fun m!114275 () Bool)

(assert (=> b!129722 m!114275))

(assert (=> b!129727 m!114265))

(declare-fun m!114277 () Bool)

(assert (=> b!129719 m!114277))

(declare-fun m!114279 () Bool)

(assert (=> b!129719 m!114279))

(declare-fun m!114281 () Bool)

(assert (=> b!129719 m!114281))

(declare-fun m!114283 () Bool)

(assert (=> b!129719 m!114283))

(declare-fun m!114285 () Bool)

(assert (=> b!129719 m!114285))

(declare-fun m!114287 () Bool)

(assert (=> b!129719 m!114287))

(declare-fun m!114289 () Bool)

(assert (=> b!129719 m!114289))

(declare-fun m!114291 () Bool)

(assert (=> b!129716 m!114291))

(assert (=> b!129716 m!114263))

(declare-fun m!114293 () Bool)

(assert (=> b!129716 m!114293))

(declare-fun m!114295 () Bool)

(assert (=> b!129726 m!114295))

(assert (=> b!129720 m!114267))

(declare-fun m!114297 () Bool)

(assert (=> b!129725 m!114297))

(assert (=> b!129725 m!114293))

(declare-fun m!114299 () Bool)

(assert (=> start!13426 m!114299))

(declare-fun m!114301 () Bool)

(assert (=> b!129728 m!114301))

(declare-fun m!114303 () Bool)

(assert (=> b!129728 m!114303))

(check-sat (not b!129728) (not start!13426) (not b!129726) (not b!129715) (not b!129723) (not b!129720) (not b!129722) (not b!129718) (not b!129716) (not b!129724) (not b!129719) (not b!129725) (not b!129717) tp_is_empty!1345 (not b!129727))
(check-sat)
