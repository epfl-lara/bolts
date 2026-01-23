; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538190 () Bool)

(assert start!538190)

(declare-fun b!5103576 () Bool)

(declare-fun e!3183019 () Bool)

(declare-fun tp!1423604 () Bool)

(declare-fun tp!1423606 () Bool)

(assert (=> b!5103576 (= e!3183019 (and tp!1423604 tp!1423606))))

(declare-fun b!5103577 () Bool)

(declare-fun e!3183016 () Bool)

(declare-datatypes ((C!28382 0))(
  ( (C!28383 (val!23843 Int)) )
))
(declare-datatypes ((List!58972 0))(
  ( (Nil!58848) (Cons!58848 (h!65296 C!28382) (t!371973 List!58972)) )
))
(declare-datatypes ((tuple2!63510 0))(
  ( (tuple2!63511 (_1!35058 List!58972) (_2!35058 List!58972)) )
))
(declare-fun lt!2099612 () tuple2!63510)

(declare-fun isEmpty!31807 (List!58972) Bool)

(assert (=> b!5103577 (= e!3183016 (not (isEmpty!31807 (_1!35058 lt!2099612))))))

(declare-fun b!5103578 () Bool)

(declare-fun res!2172215 () Bool)

(declare-fun e!3183008 () Bool)

(assert (=> b!5103578 (=> res!2172215 e!3183008)))

(declare-fun lt!2099610 () tuple2!63510)

(declare-fun input!5654 () List!58972)

(declare-fun isPrefix!5463 (List!58972 List!58972) Bool)

(assert (=> b!5103578 (= res!2172215 (not (isPrefix!5463 (_1!35058 lt!2099610) input!5654)))))

(declare-fun b!5103579 () Bool)

(declare-fun tp!1423602 () Bool)

(declare-fun tp!1423605 () Bool)

(assert (=> b!5103579 (= e!3183019 (and tp!1423602 tp!1423605))))

(declare-fun b!5103580 () Bool)

(declare-fun e!3183012 () Bool)

(declare-datatypes ((Regex!14062 0))(
  ( (ElementMatch!14062 (c!876752 C!28382)) (Concat!22907 (regOne!28636 Regex!14062) (regTwo!28636 Regex!14062)) (EmptyExpr!14062) (Star!14062 (reg!14391 Regex!14062)) (EmptyLang!14062) (Union!14062 (regOne!28637 Regex!14062) (regTwo!28637 Regex!14062)) )
))
(declare-datatypes ((List!58973 0))(
  ( (Nil!58849) (Cons!58849 (h!65297 Regex!14062) (t!371974 List!58973)) )
))
(declare-datatypes ((Context!6892 0))(
  ( (Context!6893 (exprs!3946 List!58973)) )
))
(declare-fun z!4303 () (Set Context!6892))

(declare-fun lt!2099603 () tuple2!63510)

(declare-fun matchZipper!734 ((Set Context!6892) List!58972) Bool)

(assert (=> b!5103580 (= e!3183012 (matchZipper!734 z!4303 (_1!35058 lt!2099603)))))

(declare-fun setIsEmpty!29287 () Bool)

(declare-fun setRes!29287 () Bool)

(assert (=> setIsEmpty!29287 setRes!29287))

(declare-fun b!5103582 () Bool)

(declare-fun e!3183014 () Bool)

(declare-fun tp_is_empty!37389 () Bool)

(declare-fun tp!1423603 () Bool)

(assert (=> b!5103582 (= e!3183014 (and tp_is_empty!37389 tp!1423603))))

(declare-fun b!5103583 () Bool)

(declare-fun tp!1423607 () Bool)

(assert (=> b!5103583 (= e!3183019 tp!1423607)))

(declare-fun b!5103584 () Bool)

(declare-fun e!3183018 () Bool)

(declare-fun e!3183011 () Bool)

(assert (=> b!5103584 (= e!3183018 e!3183011)))

(declare-fun res!2172213 () Bool)

(assert (=> b!5103584 (=> res!2172213 e!3183011)))

(assert (=> b!5103584 (= res!2172213 e!3183016)))

(declare-fun res!2172205 () Bool)

(assert (=> b!5103584 (=> (not res!2172205) (not e!3183016))))

(declare-fun lt!2099615 () Bool)

(assert (=> b!5103584 (= res!2172205 (not lt!2099615))))

(declare-fun r!12920 () Regex!14062)

(declare-fun matchR!6847 (Regex!14062 List!58972) Bool)

(assert (=> b!5103584 (= lt!2099615 (matchR!6847 r!12920 (_1!35058 lt!2099612)))))

(declare-fun b!5103585 () Bool)

(assert (=> b!5103585 (= e!3183019 tp_is_empty!37389)))

(declare-fun b!5103586 () Bool)

(declare-fun e!3183017 () Bool)

(declare-fun lt!2099604 () tuple2!63510)

(assert (=> b!5103586 (= e!3183017 (matchR!6847 r!12920 (_1!35058 lt!2099604)))))

(declare-fun b!5103587 () Bool)

(declare-fun e!3183010 () Bool)

(assert (=> b!5103587 (= e!3183010 (not e!3183018))))

(declare-fun res!2172209 () Bool)

(assert (=> b!5103587 (=> res!2172209 e!3183018)))

(declare-fun e!3183006 () Bool)

(assert (=> b!5103587 (= res!2172209 e!3183006)))

(declare-fun res!2172210 () Bool)

(assert (=> b!5103587 (=> (not res!2172210) (not e!3183006))))

(declare-fun lt!2099606 () Bool)

(assert (=> b!5103587 (= res!2172210 (not lt!2099606))))

(assert (=> b!5103587 (= lt!2099606 (matchZipper!734 z!4303 (_1!35058 lt!2099610)))))

(assert (=> b!5103587 e!3183017))

(declare-fun res!2172211 () Bool)

(assert (=> b!5103587 (=> res!2172211 e!3183017)))

(assert (=> b!5103587 (= res!2172211 (isEmpty!31807 (_1!35058 lt!2099604)))))

(declare-fun lt!2099611 () Int)

(declare-fun lt!2099609 () Int)

(declare-fun findLongestMatchInner!2075 (Regex!14062 List!58972 Int List!58972 List!58972 Int) tuple2!63510)

(assert (=> b!5103587 (= lt!2099604 (findLongestMatchInner!2075 r!12920 Nil!58848 lt!2099611 input!5654 input!5654 lt!2099609))))

(declare-datatypes ((Unit!149896 0))(
  ( (Unit!149897) )
))
(declare-fun lt!2099617 () Unit!149896)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2070 (Regex!14062 List!58972) Unit!149896)

(assert (=> b!5103587 (= lt!2099617 (longestMatchIsAcceptedByMatchOrIsEmpty!2070 r!12920 input!5654))))

(assert (=> b!5103587 e!3183012))

(declare-fun res!2172206 () Bool)

(assert (=> b!5103587 (=> res!2172206 e!3183012)))

(assert (=> b!5103587 (= res!2172206 (isEmpty!31807 (_1!35058 lt!2099603)))))

(declare-fun findLongestMatchInnerZipper!136 ((Set Context!6892) List!58972 Int List!58972 List!58972 Int) tuple2!63510)

(assert (=> b!5103587 (= lt!2099603 (findLongestMatchInnerZipper!136 z!4303 Nil!58848 lt!2099611 input!5654 input!5654 lt!2099609))))

(declare-fun size!39364 (List!58972) Int)

(assert (=> b!5103587 (= lt!2099609 (size!39364 input!5654))))

(assert (=> b!5103587 (= lt!2099611 (size!39364 Nil!58848))))

(declare-fun lt!2099599 () Unit!149896)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2071 ((Set Context!6892) List!58972) Unit!149896)

(assert (=> b!5103587 (= lt!2099599 (longestMatchIsAcceptedByMatchOrIsEmpty!2071 z!4303 input!5654))))

(declare-fun lt!2099605 () List!58972)

(assert (=> b!5103587 (isPrefix!5463 (_1!35058 lt!2099612) lt!2099605)))

(declare-fun lt!2099602 () Unit!149896)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3521 (List!58972 List!58972) Unit!149896)

(assert (=> b!5103587 (= lt!2099602 (lemmaConcatTwoListThenFirstIsPrefix!3521 (_1!35058 lt!2099612) (_2!35058 lt!2099612)))))

(declare-fun lt!2099608 () List!58972)

(assert (=> b!5103587 (isPrefix!5463 (_1!35058 lt!2099610) lt!2099608)))

(declare-fun lt!2099613 () Unit!149896)

(assert (=> b!5103587 (= lt!2099613 (lemmaConcatTwoListThenFirstIsPrefix!3521 (_1!35058 lt!2099610) (_2!35058 lt!2099610)))))

(declare-fun b!5103581 () Bool)

(declare-fun e!3183015 () Bool)

(declare-fun e!3183009 () Bool)

(assert (=> b!5103581 (= e!3183015 e!3183009)))

(declare-fun res!2172208 () Bool)

(assert (=> b!5103581 (=> (not res!2172208) (not e!3183009))))

(declare-datatypes ((List!58974 0))(
  ( (Nil!58850) (Cons!58850 (h!65298 Context!6892) (t!371975 List!58974)) )
))
(declare-fun lt!2099614 () List!58974)

(declare-fun unfocusZipper!404 (List!58974) Regex!14062)

(assert (=> b!5103581 (= res!2172208 (= (unfocusZipper!404 lt!2099614) r!12920))))

(declare-fun toList!8196 ((Set Context!6892)) List!58974)

(assert (=> b!5103581 (= lt!2099614 (toList!8196 z!4303))))

(declare-fun res!2172214 () Bool)

(assert (=> start!538190 (=> (not res!2172214) (not e!3183015))))

(declare-fun validRegex!6189 (Regex!14062) Bool)

(assert (=> start!538190 (= res!2172214 (validRegex!6189 r!12920))))

(assert (=> start!538190 e!3183015))

(assert (=> start!538190 e!3183019))

(declare-fun condSetEmpty!29287 () Bool)

(assert (=> start!538190 (= condSetEmpty!29287 (= z!4303 (as set.empty (Set Context!6892))))))

(assert (=> start!538190 setRes!29287))

(assert (=> start!538190 e!3183014))

(declare-fun b!5103588 () Bool)

(declare-fun e!3183013 () Bool)

(declare-fun tp!1423600 () Bool)

(assert (=> b!5103588 (= e!3183013 tp!1423600)))

(declare-fun b!5103589 () Bool)

(declare-fun e!3183007 () Bool)

(assert (=> b!5103589 (= e!3183009 e!3183007)))

(declare-fun res!2172207 () Bool)

(assert (=> b!5103589 (=> (not res!2172207) (not e!3183007))))

(assert (=> b!5103589 (= res!2172207 (= lt!2099608 input!5654))))

(declare-fun ++!12911 (List!58972 List!58972) List!58972)

(assert (=> b!5103589 (= lt!2099608 (++!12911 (_1!35058 lt!2099610) (_2!35058 lt!2099610)))))

(declare-fun findLongestMatch!1892 (Regex!14062 List!58972) tuple2!63510)

(assert (=> b!5103589 (= lt!2099612 (findLongestMatch!1892 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!86 ((Set Context!6892) List!58972) tuple2!63510)

(assert (=> b!5103589 (= lt!2099610 (findLongestMatchZipper!86 z!4303 input!5654))))

(declare-fun tp!1423601 () Bool)

(declare-fun setNonEmpty!29287 () Bool)

(declare-fun setElem!29287 () Context!6892)

(declare-fun inv!78331 (Context!6892) Bool)

(assert (=> setNonEmpty!29287 (= setRes!29287 (and tp!1423601 (inv!78331 setElem!29287) e!3183013))))

(declare-fun setRest!29287 () (Set Context!6892))

(assert (=> setNonEmpty!29287 (= z!4303 (set.union (set.insert setElem!29287 (as set.empty (Set Context!6892))) setRest!29287))))

(declare-fun b!5103590 () Bool)

(assert (=> b!5103590 (= e!3183007 e!3183010)))

(declare-fun res!2172203 () Bool)

(assert (=> b!5103590 (=> (not res!2172203) (not e!3183010))))

(assert (=> b!5103590 (= res!2172203 (= lt!2099605 input!5654))))

(assert (=> b!5103590 (= lt!2099605 (++!12911 (_1!35058 lt!2099612) (_2!35058 lt!2099612)))))

(declare-fun b!5103591 () Bool)

(declare-fun lt!2099607 () Int)

(declare-fun lt!2099600 () Int)

(assert (=> b!5103591 (= e!3183008 (>= lt!2099607 lt!2099600))))

(declare-fun b!5103592 () Bool)

(assert (=> b!5103592 (= e!3183006 (not (isEmpty!31807 (_1!35058 lt!2099610))))))

(declare-fun b!5103593 () Bool)

(declare-fun res!2172212 () Bool)

(assert (=> b!5103593 (=> res!2172212 e!3183008)))

(assert (=> b!5103593 (= res!2172212 (not (isPrefix!5463 (_1!35058 lt!2099612) input!5654)))))

(declare-fun b!5103594 () Bool)

(assert (=> b!5103594 (= e!3183011 e!3183008)))

(declare-fun res!2172204 () Bool)

(assert (=> b!5103594 (=> res!2172204 e!3183008)))

(assert (=> b!5103594 (= res!2172204 (or (> lt!2099600 lt!2099607) (<= lt!2099607 lt!2099600)))))

(assert (=> b!5103594 (= lt!2099607 (size!39364 (_1!35058 lt!2099610)))))

(assert (=> b!5103594 (= lt!2099600 (size!39364 (_1!35058 lt!2099612)))))

(assert (=> b!5103594 (= (matchR!6847 r!12920 (_1!35058 lt!2099610)) lt!2099606)))

(declare-fun lt!2099616 () Unit!149896)

(declare-fun theoremZipperRegexEquiv!226 ((Set Context!6892) List!58974 Regex!14062 List!58972) Unit!149896)

(assert (=> b!5103594 (= lt!2099616 (theoremZipperRegexEquiv!226 z!4303 lt!2099614 r!12920 (_1!35058 lt!2099610)))))

(assert (=> b!5103594 (= lt!2099615 (matchZipper!734 z!4303 (_1!35058 lt!2099612)))))

(declare-fun lt!2099601 () Unit!149896)

(assert (=> b!5103594 (= lt!2099601 (theoremZipperRegexEquiv!226 z!4303 lt!2099614 r!12920 (_1!35058 lt!2099612)))))

(assert (= (and start!538190 res!2172214) b!5103581))

(assert (= (and b!5103581 res!2172208) b!5103589))

(assert (= (and b!5103589 res!2172207) b!5103590))

(assert (= (and b!5103590 res!2172203) b!5103587))

(assert (= (and b!5103587 (not res!2172206)) b!5103580))

(assert (= (and b!5103587 (not res!2172211)) b!5103586))

(assert (= (and b!5103587 res!2172210) b!5103592))

(assert (= (and b!5103587 (not res!2172209)) b!5103584))

(assert (= (and b!5103584 res!2172205) b!5103577))

(assert (= (and b!5103584 (not res!2172213)) b!5103594))

(assert (= (and b!5103594 (not res!2172204)) b!5103593))

(assert (= (and b!5103593 (not res!2172212)) b!5103578))

(assert (= (and b!5103578 (not res!2172215)) b!5103591))

(assert (= (and start!538190 (is-ElementMatch!14062 r!12920)) b!5103585))

(assert (= (and start!538190 (is-Concat!22907 r!12920)) b!5103579))

(assert (= (and start!538190 (is-Star!14062 r!12920)) b!5103583))

(assert (= (and start!538190 (is-Union!14062 r!12920)) b!5103576))

(assert (= (and start!538190 condSetEmpty!29287) setIsEmpty!29287))

(assert (= (and start!538190 (not condSetEmpty!29287)) setNonEmpty!29287))

(assert (= setNonEmpty!29287 b!5103588))

(assert (= (and start!538190 (is-Cons!58848 input!5654)) b!5103582))

(declare-fun m!6160910 () Bool)

(assert (=> b!5103580 m!6160910))

(declare-fun m!6160912 () Bool)

(assert (=> b!5103578 m!6160912))

(declare-fun m!6160914 () Bool)

(assert (=> b!5103587 m!6160914))

(declare-fun m!6160916 () Bool)

(assert (=> b!5103587 m!6160916))

(declare-fun m!6160918 () Bool)

(assert (=> b!5103587 m!6160918))

(declare-fun m!6160920 () Bool)

(assert (=> b!5103587 m!6160920))

(declare-fun m!6160922 () Bool)

(assert (=> b!5103587 m!6160922))

(declare-fun m!6160924 () Bool)

(assert (=> b!5103587 m!6160924))

(declare-fun m!6160926 () Bool)

(assert (=> b!5103587 m!6160926))

(declare-fun m!6160928 () Bool)

(assert (=> b!5103587 m!6160928))

(declare-fun m!6160930 () Bool)

(assert (=> b!5103587 m!6160930))

(declare-fun m!6160932 () Bool)

(assert (=> b!5103587 m!6160932))

(declare-fun m!6160934 () Bool)

(assert (=> b!5103587 m!6160934))

(declare-fun m!6160936 () Bool)

(assert (=> b!5103587 m!6160936))

(declare-fun m!6160938 () Bool)

(assert (=> b!5103587 m!6160938))

(declare-fun m!6160940 () Bool)

(assert (=> b!5103594 m!6160940))

(declare-fun m!6160942 () Bool)

(assert (=> b!5103594 m!6160942))

(declare-fun m!6160944 () Bool)

(assert (=> b!5103594 m!6160944))

(declare-fun m!6160946 () Bool)

(assert (=> b!5103594 m!6160946))

(declare-fun m!6160948 () Bool)

(assert (=> b!5103594 m!6160948))

(declare-fun m!6160950 () Bool)

(assert (=> b!5103594 m!6160950))

(declare-fun m!6160952 () Bool)

(assert (=> b!5103577 m!6160952))

(declare-fun m!6160954 () Bool)

(assert (=> start!538190 m!6160954))

(declare-fun m!6160956 () Bool)

(assert (=> b!5103581 m!6160956))

(declare-fun m!6160958 () Bool)

(assert (=> b!5103581 m!6160958))

(declare-fun m!6160960 () Bool)

(assert (=> b!5103586 m!6160960))

(declare-fun m!6160962 () Bool)

(assert (=> b!5103584 m!6160962))

(declare-fun m!6160964 () Bool)

(assert (=> b!5103589 m!6160964))

(declare-fun m!6160966 () Bool)

(assert (=> b!5103589 m!6160966))

(declare-fun m!6160968 () Bool)

(assert (=> b!5103589 m!6160968))

(declare-fun m!6160970 () Bool)

(assert (=> setNonEmpty!29287 m!6160970))

(declare-fun m!6160972 () Bool)

(assert (=> b!5103593 m!6160972))

(declare-fun m!6160974 () Bool)

(assert (=> b!5103590 m!6160974))

(declare-fun m!6160976 () Bool)

(assert (=> b!5103592 m!6160976))

(push 1)

(assert (not b!5103588))

(assert tp_is_empty!37389)

(assert (not setNonEmpty!29287))

(assert (not b!5103579))

(assert (not b!5103578))

(assert (not b!5103576))

(assert (not b!5103582))

(assert (not b!5103580))

(assert (not start!538190))

(assert (not b!5103589))

(assert (not b!5103583))

(assert (not b!5103584))

(assert (not b!5103577))

(assert (not b!5103594))

(assert (not b!5103593))

(assert (not b!5103581))

(assert (not b!5103590))

(assert (not b!5103586))

(assert (not b!5103592))

(assert (not b!5103587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

