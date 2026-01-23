; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!369946 () Bool)

(assert start!369946)

(declare-fun b!3940018 () Bool)

(declare-fun b_free!107705 () Bool)

(declare-fun b_next!108409 () Bool)

(assert (=> b!3940018 (= b_free!107705 (not b_next!108409))))

(declare-fun tp!1198841 () Bool)

(declare-fun b_and!300971 () Bool)

(assert (=> b!3940018 (= tp!1198841 b_and!300971)))

(declare-fun b_free!107707 () Bool)

(declare-fun b_next!108411 () Bool)

(assert (=> b!3940018 (= b_free!107707 (not b_next!108411))))

(declare-fun tp!1198845 () Bool)

(declare-fun b_and!300973 () Bool)

(assert (=> b!3940018 (= tp!1198845 b_and!300973)))

(declare-fun b!3940025 () Bool)

(declare-fun b_free!107709 () Bool)

(declare-fun b_next!108413 () Bool)

(assert (=> b!3940025 (= b_free!107709 (not b_next!108413))))

(declare-fun tp!1198850 () Bool)

(declare-fun b_and!300975 () Bool)

(assert (=> b!3940025 (= tp!1198850 b_and!300975)))

(declare-fun b_free!107711 () Bool)

(declare-fun b_next!108415 () Bool)

(assert (=> b!3940025 (= b_free!107711 (not b_next!108415))))

(declare-fun tp!1198843 () Bool)

(declare-fun b_and!300977 () Bool)

(assert (=> b!3940025 (= tp!1198843 b_and!300977)))

(declare-fun b!3940015 () Bool)

(declare-fun b_free!107713 () Bool)

(declare-fun b_next!108417 () Bool)

(assert (=> b!3940015 (= b_free!107713 (not b_next!108417))))

(declare-fun tp!1198840 () Bool)

(declare-fun b_and!300979 () Bool)

(assert (=> b!3940015 (= tp!1198840 b_and!300979)))

(declare-fun b_free!107715 () Bool)

(declare-fun b_next!108419 () Bool)

(assert (=> b!3940015 (= b_free!107715 (not b_next!108419))))

(declare-fun tp!1198842 () Bool)

(declare-fun b_and!300981 () Bool)

(assert (=> b!3940015 (= tp!1198842 b_and!300981)))

(declare-fun b!3940005 () Bool)

(declare-fun e!2437781 () Bool)

(declare-fun e!2437783 () Bool)

(declare-fun tp!1198847 () Bool)

(assert (=> b!3940005 (= e!2437781 (and e!2437783 tp!1198847))))

(declare-fun res!1594582 () Bool)

(declare-fun e!2437784 () Bool)

(assert (=> start!369946 (=> (not res!1594582) (not e!2437784))))

(declare-datatypes ((LexerInterface!6126 0))(
  ( (LexerInterfaceExt!6123 (__x!25751 Int)) (Lexer!6124) )
))
(declare-fun thiss!20629 () LexerInterface!6126)

(assert (=> start!369946 (= res!1594582 (is-Lexer!6124 thiss!20629))))

(assert (=> start!369946 e!2437784))

(declare-fun e!2437800 () Bool)

(assert (=> start!369946 e!2437800))

(assert (=> start!369946 true))

(declare-fun e!2437789 () Bool)

(assert (=> start!369946 e!2437789))

(assert (=> start!369946 e!2437781))

(declare-fun e!2437786 () Bool)

(assert (=> start!369946 e!2437786))

(declare-fun e!2437788 () Bool)

(assert (=> start!369946 e!2437788))

(declare-fun e!2437798 () Bool)

(assert (=> start!369946 e!2437798))

(declare-fun e!2437790 () Bool)

(declare-fun b!3940006 () Bool)

(declare-fun tp!1198851 () Bool)

(declare-fun e!2437791 () Bool)

(declare-datatypes ((List!41957 0))(
  ( (Nil!41833) (Cons!41833 (h!47253 (_ BitVec 16)) (t!326728 List!41957)) )
))
(declare-datatypes ((TokenValue!6767 0))(
  ( (FloatLiteralValue!13534 (text!47814 List!41957)) (TokenValueExt!6766 (__x!25752 Int)) (Broken!33835 (value!206914 List!41957)) (Object!6890) (End!6767) (Def!6767) (Underscore!6767) (Match!6767) (Else!6767) (Error!6767) (Case!6767) (If!6767) (Extends!6767) (Abstract!6767) (Class!6767) (Val!6767) (DelimiterValue!13534 (del!6827 List!41957)) (KeywordValue!6773 (value!206915 List!41957)) (CommentValue!13534 (value!206916 List!41957)) (WhitespaceValue!13534 (value!206917 List!41957)) (IndentationValue!6767 (value!206918 List!41957)) (String!47554) (Int32!6767) (Broken!33836 (value!206919 List!41957)) (Boolean!6768) (Unit!60392) (OperatorValue!6770 (op!6827 List!41957)) (IdentifierValue!13534 (value!206920 List!41957)) (IdentifierValue!13535 (value!206921 List!41957)) (WhitespaceValue!13535 (value!206922 List!41957)) (True!13534) (False!13534) (Broken!33837 (value!206923 List!41957)) (Broken!33838 (value!206924 List!41957)) (True!13535) (RightBrace!6767) (RightBracket!6767) (Colon!6767) (Null!6767) (Comma!6767) (LeftBracket!6767) (False!13535) (LeftBrace!6767) (ImaginaryLiteralValue!6767 (text!47815 List!41957)) (StringLiteralValue!20301 (value!206925 List!41957)) (EOFValue!6767 (value!206926 List!41957)) (IdentValue!6767 (value!206927 List!41957)) (DelimiterValue!13535 (value!206928 List!41957)) (DedentValue!6767 (value!206929 List!41957)) (NewLineValue!6767 (value!206930 List!41957)) (IntegerValue!20301 (value!206931 (_ BitVec 32)) (text!47816 List!41957)) (IntegerValue!20302 (value!206932 Int) (text!47817 List!41957)) (Times!6767) (Or!6767) (Equal!6767) (Minus!6767) (Broken!33839 (value!206933 List!41957)) (And!6767) (Div!6767) (LessEqual!6767) (Mod!6767) (Concat!18209) (Not!6767) (Plus!6767) (SpaceValue!6767 (value!206934 List!41957)) (IntegerValue!20303 (value!206935 Int) (text!47818 List!41957)) (StringLiteralValue!20302 (text!47819 List!41957)) (FloatLiteralValue!13535 (text!47820 List!41957)) (BytesLiteralValue!6767 (value!206936 List!41957)) (CommentValue!13535 (value!206937 List!41957)) (StringLiteralValue!20303 (value!206938 List!41957)) (ErrorTokenValue!6767 (msg!6828 List!41957)) )
))
(declare-datatypes ((C!23070 0))(
  ( (C!23071 (val!13629 Int)) )
))
(declare-datatypes ((Regex!11442 0))(
  ( (ElementMatch!11442 (c!684545 C!23070)) (Concat!18210 (regOne!23396 Regex!11442) (regTwo!23396 Regex!11442)) (EmptyExpr!11442) (Star!11442 (reg!11771 Regex!11442)) (EmptyLang!11442) (Union!11442 (regOne!23397 Regex!11442) (regTwo!23397 Regex!11442)) )
))
(declare-datatypes ((String!47555 0))(
  ( (String!47556 (value!206939 String)) )
))
(declare-datatypes ((List!41958 0))(
  ( (Nil!41834) (Cons!41834 (h!47254 C!23070) (t!326729 List!41958)) )
))
(declare-datatypes ((IArray!25501 0))(
  ( (IArray!25502 (innerList!12808 List!41958)) )
))
(declare-datatypes ((Conc!12748 0))(
  ( (Node!12748 (left!31875 Conc!12748) (right!32205 Conc!12748) (csize!25726 Int) (cheight!12959 Int)) (Leaf!19724 (xs!16054 IArray!25501) (csize!25727 Int)) (Empty!12748) )
))
(declare-datatypes ((BalanceConc!25090 0))(
  ( (BalanceConc!25091 (c!684546 Conc!12748)) )
))
(declare-datatypes ((TokenValueInjection!12962 0))(
  ( (TokenValueInjection!12963 (toValue!8997 Int) (toChars!8856 Int)) )
))
(declare-datatypes ((Rule!12874 0))(
  ( (Rule!12875 (regex!6537 Regex!11442) (tag!7397 String!47555) (isSeparator!6537 Bool) (transformation!6537 TokenValueInjection!12962)) )
))
(declare-datatypes ((Token!12212 0))(
  ( (Token!12213 (value!206940 TokenValue!6767) (rule!9495 Rule!12874) (size!31380 Int) (originalCharacters!7137 List!41958)) )
))
(declare-datatypes ((List!41959 0))(
  ( (Nil!41835) (Cons!41835 (h!47255 Token!12212) (t!326730 List!41959)) )
))
(declare-fun prefixTokens!80 () List!41959)

(declare-fun inv!56034 (String!47555) Bool)

(declare-fun inv!56037 (TokenValueInjection!12962) Bool)

(assert (=> b!3940006 (= e!2437791 (and tp!1198851 (inv!56034 (tag!7397 (rule!9495 (h!47255 prefixTokens!80)))) (inv!56037 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) e!2437790))))

(declare-fun tp!1198853 () Bool)

(declare-fun b!3940007 () Bool)

(declare-fun e!2437799 () Bool)

(declare-fun inv!56038 (Token!12212) Bool)

(assert (=> b!3940007 (= e!2437786 (and (inv!56038 (h!47255 prefixTokens!80)) e!2437799 tp!1198853))))

(declare-fun tp!1198838 () Bool)

(declare-fun e!2437795 () Bool)

(declare-fun e!2437794 () Bool)

(declare-fun b!3940008 () Bool)

(declare-fun suffixTokens!72 () List!41959)

(assert (=> b!3940008 (= e!2437794 (and tp!1198838 (inv!56034 (tag!7397 (rule!9495 (h!47255 suffixTokens!72)))) (inv!56037 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) e!2437795))))

(declare-fun b!3940009 () Bool)

(declare-fun e!2437792 () Bool)

(declare-fun tp!1198846 () Bool)

(assert (=> b!3940009 (= e!2437788 (and (inv!56038 (h!47255 suffixTokens!72)) e!2437792 tp!1198846))))

(declare-fun b!3940010 () Bool)

(declare-fun tp_is_empty!19855 () Bool)

(declare-fun tp!1198848 () Bool)

(assert (=> b!3940010 (= e!2437800 (and tp_is_empty!19855 tp!1198848))))

(declare-fun tp!1198839 () Bool)

(declare-fun b!3940011 () Bool)

(declare-fun inv!21 (TokenValue!6767) Bool)

(assert (=> b!3940011 (= e!2437799 (and (inv!21 (value!206940 (h!47255 prefixTokens!80))) e!2437791 tp!1198839))))

(declare-fun b!3940012 () Bool)

(declare-fun res!1594585 () Bool)

(assert (=> b!3940012 (=> (not res!1594585) (not e!2437784))))

(declare-fun suffixResult!91 () List!41958)

(declare-datatypes ((List!41960 0))(
  ( (Nil!41836) (Cons!41836 (h!47256 Rule!12874) (t!326731 List!41960)) )
))
(declare-fun rules!2768 () List!41960)

(declare-fun suffix!1176 () List!41958)

(declare-datatypes ((tuple2!41122 0))(
  ( (tuple2!41123 (_1!23695 List!41959) (_2!23695 List!41958)) )
))
(declare-fun lexList!1894 (LexerInterface!6126 List!41960 List!41958) tuple2!41122)

(assert (=> b!3940012 (= res!1594585 (= (lexList!1894 thiss!20629 rules!2768 suffix!1176) (tuple2!41123 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3940013 () Bool)

(declare-fun res!1594583 () Bool)

(assert (=> b!3940013 (=> (not res!1594583) (not e!2437784))))

(declare-fun isEmpty!24955 (List!41959) Bool)

(assert (=> b!3940013 (= res!1594583 (not (isEmpty!24955 prefixTokens!80)))))

(declare-fun b!3940014 () Bool)

(declare-fun res!1594586 () Bool)

(assert (=> b!3940014 (=> (not res!1594586) (not e!2437784))))

(declare-fun isEmpty!24956 (List!41960) Bool)

(assert (=> b!3940014 (= res!1594586 (not (isEmpty!24956 rules!2768)))))

(assert (=> b!3940015 (= e!2437790 (and tp!1198840 tp!1198842))))

(declare-fun b!3940016 () Bool)

(declare-fun res!1594580 () Bool)

(assert (=> b!3940016 (=> (not res!1594580) (not e!2437784))))

(declare-fun prefix!426 () List!41958)

(declare-fun ++!10831 (List!41958 List!41958) List!41958)

(declare-fun ++!10832 (List!41959 List!41959) List!41959)

(assert (=> b!3940016 (= res!1594580 (= (lexList!1894 thiss!20629 rules!2768 (++!10831 prefix!426 suffix!1176)) (tuple2!41123 (++!10832 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun b!3940017 () Bool)

(declare-fun res!1594584 () Bool)

(assert (=> b!3940017 (=> (not res!1594584) (not e!2437784))))

(declare-fun rulesInvariant!5469 (LexerInterface!6126 List!41960) Bool)

(assert (=> b!3940017 (= res!1594584 (rulesInvariant!5469 thiss!20629 rules!2768))))

(assert (=> b!3940018 (= e!2437795 (and tp!1198841 tp!1198845))))

(declare-fun b!3940019 () Bool)

(declare-fun size!31381 (List!41958) Int)

(assert (=> b!3940019 (= e!2437784 (< (size!31381 prefix!426) 0))))

(declare-fun tp!1198852 () Bool)

(declare-fun e!2437797 () Bool)

(declare-fun b!3940020 () Bool)

(assert (=> b!3940020 (= e!2437783 (and tp!1198852 (inv!56034 (tag!7397 (h!47256 rules!2768))) (inv!56037 (transformation!6537 (h!47256 rules!2768))) e!2437797))))

(declare-fun tp!1198837 () Bool)

(declare-fun b!3940021 () Bool)

(assert (=> b!3940021 (= e!2437792 (and (inv!21 (value!206940 (h!47255 suffixTokens!72))) e!2437794 tp!1198837))))

(declare-fun b!3940022 () Bool)

(declare-fun tp!1198849 () Bool)

(assert (=> b!3940022 (= e!2437789 (and tp_is_empty!19855 tp!1198849))))

(declare-fun b!3940023 () Bool)

(declare-fun tp!1198844 () Bool)

(assert (=> b!3940023 (= e!2437798 (and tp_is_empty!19855 tp!1198844))))

(declare-fun b!3940024 () Bool)

(declare-fun res!1594581 () Bool)

(assert (=> b!3940024 (=> (not res!1594581) (not e!2437784))))

(declare-fun isEmpty!24957 (List!41958) Bool)

(assert (=> b!3940024 (= res!1594581 (not (isEmpty!24957 prefix!426)))))

(assert (=> b!3940025 (= e!2437797 (and tp!1198850 tp!1198843))))

(assert (= (and start!369946 res!1594582) b!3940014))

(assert (= (and b!3940014 res!1594586) b!3940017))

(assert (= (and b!3940017 res!1594584) b!3940013))

(assert (= (and b!3940013 res!1594583) b!3940024))

(assert (= (and b!3940024 res!1594581) b!3940016))

(assert (= (and b!3940016 res!1594580) b!3940012))

(assert (= (and b!3940012 res!1594585) b!3940019))

(assert (= (and start!369946 (is-Cons!41834 suffixResult!91)) b!3940010))

(assert (= (and start!369946 (is-Cons!41834 suffix!1176)) b!3940022))

(assert (= b!3940020 b!3940025))

(assert (= b!3940005 b!3940020))

(assert (= (and start!369946 (is-Cons!41836 rules!2768)) b!3940005))

(assert (= b!3940006 b!3940015))

(assert (= b!3940011 b!3940006))

(assert (= b!3940007 b!3940011))

(assert (= (and start!369946 (is-Cons!41835 prefixTokens!80)) b!3940007))

(assert (= b!3940008 b!3940018))

(assert (= b!3940021 b!3940008))

(assert (= b!3940009 b!3940021))

(assert (= (and start!369946 (is-Cons!41835 suffixTokens!72)) b!3940009))

(assert (= (and start!369946 (is-Cons!41834 prefix!426)) b!3940023))

(declare-fun m!4508837 () Bool)

(assert (=> b!3940008 m!4508837))

(declare-fun m!4508839 () Bool)

(assert (=> b!3940008 m!4508839))

(declare-fun m!4508841 () Bool)

(assert (=> b!3940012 m!4508841))

(declare-fun m!4508843 () Bool)

(assert (=> b!3940006 m!4508843))

(declare-fun m!4508845 () Bool)

(assert (=> b!3940006 m!4508845))

(declare-fun m!4508847 () Bool)

(assert (=> b!3940009 m!4508847))

(declare-fun m!4508849 () Bool)

(assert (=> b!3940016 m!4508849))

(assert (=> b!3940016 m!4508849))

(declare-fun m!4508851 () Bool)

(assert (=> b!3940016 m!4508851))

(declare-fun m!4508853 () Bool)

(assert (=> b!3940016 m!4508853))

(declare-fun m!4508855 () Bool)

(assert (=> b!3940021 m!4508855))

(declare-fun m!4508857 () Bool)

(assert (=> b!3940020 m!4508857))

(declare-fun m!4508859 () Bool)

(assert (=> b!3940020 m!4508859))

(declare-fun m!4508861 () Bool)

(assert (=> b!3940014 m!4508861))

(declare-fun m!4508863 () Bool)

(assert (=> b!3940007 m!4508863))

(declare-fun m!4508865 () Bool)

(assert (=> b!3940024 m!4508865))

(declare-fun m!4508867 () Bool)

(assert (=> b!3940017 m!4508867))

(declare-fun m!4508869 () Bool)

(assert (=> b!3940013 m!4508869))

(declare-fun m!4508871 () Bool)

(assert (=> b!3940019 m!4508871))

(declare-fun m!4508873 () Bool)

(assert (=> b!3940011 m!4508873))

(push 1)

(assert (not b!3940022))

(assert b_and!300979)

(assert (not b!3940020))

(assert (not b!3940016))

(assert (not b!3940023))

(assert (not b!3940005))

(assert (not b!3940013))

(assert tp_is_empty!19855)

(assert (not b_next!108415))

(assert b_and!300977)

(assert (not b!3940021))

(assert (not b!3940012))

(assert (not b_next!108419))

(assert (not b!3940007))

(assert (not b!3940008))

(assert b_and!300973)

(assert (not b_next!108411))

(assert (not b_next!108413))

(assert (not b!3940006))

(assert (not b_next!108417))

(assert (not b!3940019))

(assert (not b!3940014))

(assert (not b!3940024))

(assert (not b!3940011))

(assert b_and!300981)

(assert (not b!3940017))

(assert (not b!3940010))

(assert (not b!3940009))

(assert b_and!300975)

(assert b_and!300971)

(assert (not b_next!108409))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108419))

(assert b_and!300979)

(assert (not b_next!108415))

(assert (not b_next!108413))

(assert b_and!300977)

(assert (not b_next!108417))

(assert b_and!300981)

(assert b_and!300975)

(assert b_and!300973)

(assert (not b_next!108411))

(assert b_and!300971)

(assert (not b_next!108409))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1168694 () Bool)

(assert (=> d!1168694 (= (isEmpty!24955 prefixTokens!80) (is-Nil!41835 prefixTokens!80))))

(assert (=> b!3940013 d!1168694))

(declare-fun b!3940132 () Bool)

(declare-fun e!2437891 () Bool)

(declare-fun lt!1378307 () tuple2!41122)

(assert (=> b!3940132 (= e!2437891 (not (isEmpty!24955 (_1!23695 lt!1378307))))))

(declare-fun b!3940133 () Bool)

(declare-fun e!2437889 () Bool)

(assert (=> b!3940133 (= e!2437889 e!2437891)))

(declare-fun res!1594626 () Bool)

(assert (=> b!3940133 (= res!1594626 (< (size!31381 (_2!23695 lt!1378307)) (size!31381 suffix!1176)))))

(assert (=> b!3940133 (=> (not res!1594626) (not e!2437891))))

(declare-fun d!1168696 () Bool)

(assert (=> d!1168696 e!2437889))

(declare-fun c!684560 () Bool)

(declare-fun size!31384 (List!41959) Int)

(assert (=> d!1168696 (= c!684560 (> (size!31384 (_1!23695 lt!1378307)) 0))))

(declare-fun e!2437890 () tuple2!41122)

(assert (=> d!1168696 (= lt!1378307 e!2437890)))

(declare-fun c!684561 () Bool)

(declare-datatypes ((tuple2!41126 0))(
  ( (tuple2!41127 (_1!23697 Token!12212) (_2!23697 List!41958)) )
))
(declare-datatypes ((Option!8957 0))(
  ( (None!8956) (Some!8956 (v!39286 tuple2!41126)) )
))
(declare-fun lt!1378308 () Option!8957)

(assert (=> d!1168696 (= c!684561 (is-Some!8956 lt!1378308))))

(declare-fun maxPrefix!3430 (LexerInterface!6126 List!41960 List!41958) Option!8957)

(assert (=> d!1168696 (= lt!1378308 (maxPrefix!3430 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1168696 (= (lexList!1894 thiss!20629 rules!2768 suffix!1176) lt!1378307)))

(declare-fun b!3940134 () Bool)

(assert (=> b!3940134 (= e!2437890 (tuple2!41123 Nil!41835 suffix!1176))))

(declare-fun b!3940135 () Bool)

(declare-fun lt!1378306 () tuple2!41122)

(assert (=> b!3940135 (= e!2437890 (tuple2!41123 (Cons!41835 (_1!23697 (v!39286 lt!1378308)) (_1!23695 lt!1378306)) (_2!23695 lt!1378306)))))

(assert (=> b!3940135 (= lt!1378306 (lexList!1894 thiss!20629 rules!2768 (_2!23697 (v!39286 lt!1378308))))))

(declare-fun b!3940136 () Bool)

(assert (=> b!3940136 (= e!2437889 (= (_2!23695 lt!1378307) suffix!1176))))

(assert (= (and d!1168696 c!684561) b!3940135))

(assert (= (and d!1168696 (not c!684561)) b!3940134))

(assert (= (and d!1168696 c!684560) b!3940133))

(assert (= (and d!1168696 (not c!684560)) b!3940136))

(assert (= (and b!3940133 res!1594626) b!3940132))

(declare-fun m!4508943 () Bool)

(assert (=> b!3940132 m!4508943))

(declare-fun m!4508945 () Bool)

(assert (=> b!3940133 m!4508945))

(declare-fun m!4508947 () Bool)

(assert (=> b!3940133 m!4508947))

(declare-fun m!4508949 () Bool)

(assert (=> d!1168696 m!4508949))

(declare-fun m!4508951 () Bool)

(assert (=> d!1168696 m!4508951))

(declare-fun m!4508953 () Bool)

(assert (=> b!3940135 m!4508953))

(assert (=> b!3940012 d!1168696))

(declare-fun d!1168714 () Bool)

(assert (=> d!1168714 (= (isEmpty!24956 rules!2768) (is-Nil!41836 rules!2768))))

(assert (=> b!3940014 d!1168714))

(declare-fun d!1168716 () Bool)

(assert (=> d!1168716 (= (isEmpty!24957 prefix!426) (is-Nil!41834 prefix!426))))

(assert (=> b!3940024 d!1168716))

(declare-fun d!1168718 () Bool)

(assert (=> d!1168718 (= (inv!56034 (tag!7397 (rule!9495 (h!47255 prefixTokens!80)))) (= (mod (str.len (value!206939 (tag!7397 (rule!9495 (h!47255 prefixTokens!80))))) 2) 0))))

(assert (=> b!3940006 d!1168718))

(declare-fun d!1168720 () Bool)

(declare-fun res!1594629 () Bool)

(declare-fun e!2437894 () Bool)

(assert (=> d!1168720 (=> (not res!1594629) (not e!2437894))))

(declare-fun semiInverseModEq!2812 (Int Int) Bool)

(assert (=> d!1168720 (= res!1594629 (semiInverseModEq!2812 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (toValue!8997 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))))))

(assert (=> d!1168720 (= (inv!56037 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) e!2437894)))

(declare-fun b!3940139 () Bool)

(declare-fun equivClasses!2711 (Int Int) Bool)

(assert (=> b!3940139 (= e!2437894 (equivClasses!2711 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (toValue!8997 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))))))

(assert (= (and d!1168720 res!1594629) b!3940139))

(declare-fun m!4508955 () Bool)

(assert (=> d!1168720 m!4508955))

(declare-fun m!4508957 () Bool)

(assert (=> b!3940139 m!4508957))

(assert (=> b!3940006 d!1168720))

(declare-fun d!1168722 () Bool)

(declare-fun res!1594632 () Bool)

(declare-fun e!2437897 () Bool)

(assert (=> d!1168722 (=> (not res!1594632) (not e!2437897))))

(declare-fun rulesValid!2546 (LexerInterface!6126 List!41960) Bool)

(assert (=> d!1168722 (= res!1594632 (rulesValid!2546 thiss!20629 rules!2768))))

(assert (=> d!1168722 (= (rulesInvariant!5469 thiss!20629 rules!2768) e!2437897)))

(declare-fun b!3940142 () Bool)

(declare-datatypes ((List!41965 0))(
  ( (Nil!41841) (Cons!41841 (h!47261 String!47555) (t!326766 List!41965)) )
))
(declare-fun noDuplicateTag!2547 (LexerInterface!6126 List!41960 List!41965) Bool)

(assert (=> b!3940142 (= e!2437897 (noDuplicateTag!2547 thiss!20629 rules!2768 Nil!41841))))

(assert (= (and d!1168722 res!1594632) b!3940142))

(declare-fun m!4508959 () Bool)

(assert (=> d!1168722 m!4508959))

(declare-fun m!4508961 () Bool)

(assert (=> b!3940142 m!4508961))

(assert (=> b!3940017 d!1168722))

(declare-fun b!3940143 () Bool)

(declare-fun e!2437900 () Bool)

(declare-fun lt!1378310 () tuple2!41122)

(assert (=> b!3940143 (= e!2437900 (not (isEmpty!24955 (_1!23695 lt!1378310))))))

(declare-fun b!3940144 () Bool)

(declare-fun e!2437898 () Bool)

(assert (=> b!3940144 (= e!2437898 e!2437900)))

(declare-fun res!1594633 () Bool)

(assert (=> b!3940144 (= res!1594633 (< (size!31381 (_2!23695 lt!1378310)) (size!31381 (++!10831 prefix!426 suffix!1176))))))

(assert (=> b!3940144 (=> (not res!1594633) (not e!2437900))))

(declare-fun d!1168724 () Bool)

(assert (=> d!1168724 e!2437898))

(declare-fun c!684562 () Bool)

(assert (=> d!1168724 (= c!684562 (> (size!31384 (_1!23695 lt!1378310)) 0))))

(declare-fun e!2437899 () tuple2!41122)

(assert (=> d!1168724 (= lt!1378310 e!2437899)))

(declare-fun c!684563 () Bool)

(declare-fun lt!1378311 () Option!8957)

(assert (=> d!1168724 (= c!684563 (is-Some!8956 lt!1378311))))

(assert (=> d!1168724 (= lt!1378311 (maxPrefix!3430 thiss!20629 rules!2768 (++!10831 prefix!426 suffix!1176)))))

(assert (=> d!1168724 (= (lexList!1894 thiss!20629 rules!2768 (++!10831 prefix!426 suffix!1176)) lt!1378310)))

(declare-fun b!3940145 () Bool)

(assert (=> b!3940145 (= e!2437899 (tuple2!41123 Nil!41835 (++!10831 prefix!426 suffix!1176)))))

(declare-fun b!3940146 () Bool)

(declare-fun lt!1378309 () tuple2!41122)

(assert (=> b!3940146 (= e!2437899 (tuple2!41123 (Cons!41835 (_1!23697 (v!39286 lt!1378311)) (_1!23695 lt!1378309)) (_2!23695 lt!1378309)))))

(assert (=> b!3940146 (= lt!1378309 (lexList!1894 thiss!20629 rules!2768 (_2!23697 (v!39286 lt!1378311))))))

(declare-fun b!3940147 () Bool)

(assert (=> b!3940147 (= e!2437898 (= (_2!23695 lt!1378310) (++!10831 prefix!426 suffix!1176)))))

(assert (= (and d!1168724 c!684563) b!3940146))

(assert (= (and d!1168724 (not c!684563)) b!3940145))

(assert (= (and d!1168724 c!684562) b!3940144))

(assert (= (and d!1168724 (not c!684562)) b!3940147))

(assert (= (and b!3940144 res!1594633) b!3940143))

(declare-fun m!4508963 () Bool)

(assert (=> b!3940143 m!4508963))

(declare-fun m!4508965 () Bool)

(assert (=> b!3940144 m!4508965))

(assert (=> b!3940144 m!4508849))

(declare-fun m!4508967 () Bool)

(assert (=> b!3940144 m!4508967))

(declare-fun m!4508969 () Bool)

(assert (=> d!1168724 m!4508969))

(assert (=> d!1168724 m!4508849))

(declare-fun m!4508971 () Bool)

(assert (=> d!1168724 m!4508971))

(declare-fun m!4508973 () Bool)

(assert (=> b!3940146 m!4508973))

(assert (=> b!3940016 d!1168724))

(declare-fun b!3940156 () Bool)

(declare-fun e!2437905 () List!41958)

(assert (=> b!3940156 (= e!2437905 suffix!1176)))

(declare-fun e!2437906 () Bool)

(declare-fun lt!1378314 () List!41958)

(declare-fun b!3940159 () Bool)

(assert (=> b!3940159 (= e!2437906 (or (not (= suffix!1176 Nil!41834)) (= lt!1378314 prefix!426)))))

(declare-fun d!1168726 () Bool)

(assert (=> d!1168726 e!2437906))

(declare-fun res!1594639 () Bool)

(assert (=> d!1168726 (=> (not res!1594639) (not e!2437906))))

(declare-fun content!6312 (List!41958) (Set C!23070))

(assert (=> d!1168726 (= res!1594639 (= (content!6312 lt!1378314) (set.union (content!6312 prefix!426) (content!6312 suffix!1176))))))

(assert (=> d!1168726 (= lt!1378314 e!2437905)))

(declare-fun c!684566 () Bool)

(assert (=> d!1168726 (= c!684566 (is-Nil!41834 prefix!426))))

(assert (=> d!1168726 (= (++!10831 prefix!426 suffix!1176) lt!1378314)))

(declare-fun b!3940157 () Bool)

(assert (=> b!3940157 (= e!2437905 (Cons!41834 (h!47254 prefix!426) (++!10831 (t!326729 prefix!426) suffix!1176)))))

(declare-fun b!3940158 () Bool)

(declare-fun res!1594638 () Bool)

(assert (=> b!3940158 (=> (not res!1594638) (not e!2437906))))

(assert (=> b!3940158 (= res!1594638 (= (size!31381 lt!1378314) (+ (size!31381 prefix!426) (size!31381 suffix!1176))))))

(assert (= (and d!1168726 c!684566) b!3940156))

(assert (= (and d!1168726 (not c!684566)) b!3940157))

(assert (= (and d!1168726 res!1594639) b!3940158))

(assert (= (and b!3940158 res!1594638) b!3940159))

(declare-fun m!4508975 () Bool)

(assert (=> d!1168726 m!4508975))

(declare-fun m!4508977 () Bool)

(assert (=> d!1168726 m!4508977))

(declare-fun m!4508979 () Bool)

(assert (=> d!1168726 m!4508979))

(declare-fun m!4508981 () Bool)

(assert (=> b!3940157 m!4508981))

(declare-fun m!4508983 () Bool)

(assert (=> b!3940158 m!4508983))

(assert (=> b!3940158 m!4508871))

(assert (=> b!3940158 m!4508947))

(assert (=> b!3940016 d!1168726))

(declare-fun d!1168728 () Bool)

(declare-fun e!2437911 () Bool)

(assert (=> d!1168728 e!2437911))

(declare-fun res!1594645 () Bool)

(assert (=> d!1168728 (=> (not res!1594645) (not e!2437911))))

(declare-fun lt!1378317 () List!41959)

(declare-fun content!6313 (List!41959) (Set Token!12212))

(assert (=> d!1168728 (= res!1594645 (= (content!6313 lt!1378317) (set.union (content!6313 prefixTokens!80) (content!6313 suffixTokens!72))))))

(declare-fun e!2437912 () List!41959)

(assert (=> d!1168728 (= lt!1378317 e!2437912)))

(declare-fun c!684569 () Bool)

(assert (=> d!1168728 (= c!684569 (is-Nil!41835 prefixTokens!80))))

(assert (=> d!1168728 (= (++!10832 prefixTokens!80 suffixTokens!72) lt!1378317)))

(declare-fun b!3940169 () Bool)

(assert (=> b!3940169 (= e!2437912 (Cons!41835 (h!47255 prefixTokens!80) (++!10832 (t!326730 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3940171 () Bool)

(assert (=> b!3940171 (= e!2437911 (or (not (= suffixTokens!72 Nil!41835)) (= lt!1378317 prefixTokens!80)))))

(declare-fun b!3940168 () Bool)

(assert (=> b!3940168 (= e!2437912 suffixTokens!72)))

(declare-fun b!3940170 () Bool)

(declare-fun res!1594644 () Bool)

(assert (=> b!3940170 (=> (not res!1594644) (not e!2437911))))

(assert (=> b!3940170 (= res!1594644 (= (size!31384 lt!1378317) (+ (size!31384 prefixTokens!80) (size!31384 suffixTokens!72))))))

(assert (= (and d!1168728 c!684569) b!3940168))

(assert (= (and d!1168728 (not c!684569)) b!3940169))

(assert (= (and d!1168728 res!1594645) b!3940170))

(assert (= (and b!3940170 res!1594644) b!3940171))

(declare-fun m!4508985 () Bool)

(assert (=> d!1168728 m!4508985))

(declare-fun m!4508987 () Bool)

(assert (=> d!1168728 m!4508987))

(declare-fun m!4508989 () Bool)

(assert (=> d!1168728 m!4508989))

(declare-fun m!4508991 () Bool)

(assert (=> b!3940169 m!4508991))

(declare-fun m!4508993 () Bool)

(assert (=> b!3940170 m!4508993))

(declare-fun m!4508995 () Bool)

(assert (=> b!3940170 m!4508995))

(declare-fun m!4508997 () Bool)

(assert (=> b!3940170 m!4508997))

(assert (=> b!3940016 d!1168728))

(declare-fun d!1168730 () Bool)

(declare-fun res!1594652 () Bool)

(declare-fun e!2437921 () Bool)

(assert (=> d!1168730 (=> (not res!1594652) (not e!2437921))))

(assert (=> d!1168730 (= res!1594652 (not (isEmpty!24957 (originalCharacters!7137 (h!47255 prefixTokens!80)))))))

(assert (=> d!1168730 (= (inv!56038 (h!47255 prefixTokens!80)) e!2437921)))

(declare-fun b!3940186 () Bool)

(declare-fun res!1594653 () Bool)

(assert (=> b!3940186 (=> (not res!1594653) (not e!2437921))))

(declare-fun list!15541 (BalanceConc!25090) List!41958)

(declare-fun dynLambda!17915 (Int TokenValue!6767) BalanceConc!25090)

(assert (=> b!3940186 (= res!1594653 (= (originalCharacters!7137 (h!47255 prefixTokens!80)) (list!15541 (dynLambda!17915 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (value!206940 (h!47255 prefixTokens!80))))))))

(declare-fun b!3940187 () Bool)

(assert (=> b!3940187 (= e!2437921 (= (size!31380 (h!47255 prefixTokens!80)) (size!31381 (originalCharacters!7137 (h!47255 prefixTokens!80)))))))

(assert (= (and d!1168730 res!1594652) b!3940186))

(assert (= (and b!3940186 res!1594653) b!3940187))

(declare-fun b_lambda!115217 () Bool)

(assert (=> (not b_lambda!115217) (not b!3940186)))

(declare-fun tb!236051 () Bool)

(declare-fun t!326743 () Bool)

(assert (=> (and b!3940018 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))) t!326743) tb!236051))

(declare-fun b!3940192 () Bool)

(declare-fun e!2437924 () Bool)

(declare-fun tp!1198910 () Bool)

(declare-fun inv!56041 (Conc!12748) Bool)

(assert (=> b!3940192 (= e!2437924 (and (inv!56041 (c!684546 (dynLambda!17915 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (value!206940 (h!47255 prefixTokens!80))))) tp!1198910))))

(declare-fun result!285950 () Bool)

(declare-fun inv!56042 (BalanceConc!25090) Bool)

(assert (=> tb!236051 (= result!285950 (and (inv!56042 (dynLambda!17915 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (value!206940 (h!47255 prefixTokens!80)))) e!2437924))))

(assert (= tb!236051 b!3940192))

(declare-fun m!4508999 () Bool)

(assert (=> b!3940192 m!4508999))

(declare-fun m!4509001 () Bool)

(assert (=> tb!236051 m!4509001))

(assert (=> b!3940186 t!326743))

(declare-fun b_and!301001 () Bool)

(assert (= b_and!300973 (and (=> t!326743 result!285950) b_and!301001)))

(declare-fun t!326745 () Bool)

(declare-fun tb!236053 () Bool)

(assert (=> (and b!3940025 (= (toChars!8856 (transformation!6537 (h!47256 rules!2768))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))) t!326745) tb!236053))

(declare-fun result!285954 () Bool)

(assert (= result!285954 result!285950))

(assert (=> b!3940186 t!326745))

(declare-fun b_and!301003 () Bool)

(assert (= b_and!300977 (and (=> t!326745 result!285954) b_and!301003)))

(declare-fun t!326747 () Bool)

(declare-fun tb!236055 () Bool)

(assert (=> (and b!3940015 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))) t!326747) tb!236055))

(declare-fun result!285956 () Bool)

(assert (= result!285956 result!285950))

(assert (=> b!3940186 t!326747))

(declare-fun b_and!301005 () Bool)

(assert (= b_and!300981 (and (=> t!326747 result!285956) b_and!301005)))

(declare-fun m!4509003 () Bool)

(assert (=> d!1168730 m!4509003))

(declare-fun m!4509005 () Bool)

(assert (=> b!3940186 m!4509005))

(assert (=> b!3940186 m!4509005))

(declare-fun m!4509007 () Bool)

(assert (=> b!3940186 m!4509007))

(declare-fun m!4509009 () Bool)

(assert (=> b!3940187 m!4509009))

(assert (=> b!3940007 d!1168730))

(declare-fun d!1168732 () Bool)

(declare-fun res!1594654 () Bool)

(declare-fun e!2437925 () Bool)

(assert (=> d!1168732 (=> (not res!1594654) (not e!2437925))))

(assert (=> d!1168732 (= res!1594654 (not (isEmpty!24957 (originalCharacters!7137 (h!47255 suffixTokens!72)))))))

(assert (=> d!1168732 (= (inv!56038 (h!47255 suffixTokens!72)) e!2437925)))

(declare-fun b!3940193 () Bool)

(declare-fun res!1594655 () Bool)

(assert (=> b!3940193 (=> (not res!1594655) (not e!2437925))))

(assert (=> b!3940193 (= res!1594655 (= (originalCharacters!7137 (h!47255 suffixTokens!72)) (list!15541 (dynLambda!17915 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (value!206940 (h!47255 suffixTokens!72))))))))

(declare-fun b!3940194 () Bool)

(assert (=> b!3940194 (= e!2437925 (= (size!31380 (h!47255 suffixTokens!72)) (size!31381 (originalCharacters!7137 (h!47255 suffixTokens!72)))))))

(assert (= (and d!1168732 res!1594654) b!3940193))

(assert (= (and b!3940193 res!1594655) b!3940194))

(declare-fun b_lambda!115219 () Bool)

(assert (=> (not b_lambda!115219) (not b!3940193)))

(declare-fun t!326749 () Bool)

(declare-fun tb!236057 () Bool)

(assert (=> (and b!3940018 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))) t!326749) tb!236057))

(declare-fun b!3940195 () Bool)

(declare-fun e!2437926 () Bool)

(declare-fun tp!1198911 () Bool)

(assert (=> b!3940195 (= e!2437926 (and (inv!56041 (c!684546 (dynLambda!17915 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (value!206940 (h!47255 suffixTokens!72))))) tp!1198911))))

(declare-fun result!285958 () Bool)

(assert (=> tb!236057 (= result!285958 (and (inv!56042 (dynLambda!17915 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (value!206940 (h!47255 suffixTokens!72)))) e!2437926))))

(assert (= tb!236057 b!3940195))

(declare-fun m!4509011 () Bool)

(assert (=> b!3940195 m!4509011))

(declare-fun m!4509013 () Bool)

(assert (=> tb!236057 m!4509013))

(assert (=> b!3940193 t!326749))

(declare-fun b_and!301007 () Bool)

(assert (= b_and!301001 (and (=> t!326749 result!285958) b_and!301007)))

(declare-fun tb!236059 () Bool)

(declare-fun t!326751 () Bool)

(assert (=> (and b!3940025 (= (toChars!8856 (transformation!6537 (h!47256 rules!2768))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))) t!326751) tb!236059))

(declare-fun result!285960 () Bool)

(assert (= result!285960 result!285958))

(assert (=> b!3940193 t!326751))

(declare-fun b_and!301009 () Bool)

(assert (= b_and!301003 (and (=> t!326751 result!285960) b_and!301009)))

(declare-fun t!326753 () Bool)

(declare-fun tb!236061 () Bool)

(assert (=> (and b!3940015 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))) t!326753) tb!236061))

(declare-fun result!285962 () Bool)

(assert (= result!285962 result!285958))

(assert (=> b!3940193 t!326753))

(declare-fun b_and!301011 () Bool)

(assert (= b_and!301005 (and (=> t!326753 result!285962) b_and!301011)))

(declare-fun m!4509015 () Bool)

(assert (=> d!1168732 m!4509015))

(declare-fun m!4509017 () Bool)

(assert (=> b!3940193 m!4509017))

(assert (=> b!3940193 m!4509017))

(declare-fun m!4509019 () Bool)

(assert (=> b!3940193 m!4509019))

(declare-fun m!4509021 () Bool)

(assert (=> b!3940194 m!4509021))

(assert (=> b!3940009 d!1168732))

(declare-fun d!1168734 () Bool)

(assert (=> d!1168734 (= (inv!56034 (tag!7397 (rule!9495 (h!47255 suffixTokens!72)))) (= (mod (str.len (value!206939 (tag!7397 (rule!9495 (h!47255 suffixTokens!72))))) 2) 0))))

(assert (=> b!3940008 d!1168734))

(declare-fun d!1168736 () Bool)

(declare-fun res!1594656 () Bool)

(declare-fun e!2437927 () Bool)

(assert (=> d!1168736 (=> (not res!1594656) (not e!2437927))))

(assert (=> d!1168736 (= res!1594656 (semiInverseModEq!2812 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (toValue!8997 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))))))

(assert (=> d!1168736 (= (inv!56037 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) e!2437927)))

(declare-fun b!3940196 () Bool)

(assert (=> b!3940196 (= e!2437927 (equivClasses!2711 (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (toValue!8997 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))))))

(assert (= (and d!1168736 res!1594656) b!3940196))

(declare-fun m!4509023 () Bool)

(assert (=> d!1168736 m!4509023))

(declare-fun m!4509025 () Bool)

(assert (=> b!3940196 m!4509025))

(assert (=> b!3940008 d!1168736))

(declare-fun d!1168738 () Bool)

(declare-fun lt!1378329 () Int)

(assert (=> d!1168738 (>= lt!1378329 0)))

(declare-fun e!2437933 () Int)

(assert (=> d!1168738 (= lt!1378329 e!2437933)))

(declare-fun c!684578 () Bool)

(assert (=> d!1168738 (= c!684578 (is-Nil!41834 prefix!426))))

(assert (=> d!1168738 (= (size!31381 prefix!426) lt!1378329)))

(declare-fun b!3940206 () Bool)

(assert (=> b!3940206 (= e!2437933 0)))

(declare-fun b!3940207 () Bool)

(assert (=> b!3940207 (= e!2437933 (+ 1 (size!31381 (t!326729 prefix!426))))))

(assert (= (and d!1168738 c!684578) b!3940206))

(assert (= (and d!1168738 (not c!684578)) b!3940207))

(declare-fun m!4509039 () Bool)

(assert (=> b!3940207 m!4509039))

(assert (=> b!3940019 d!1168738))

(declare-fun b!3940218 () Bool)

(declare-fun e!2437942 () Bool)

(declare-fun inv!17 (TokenValue!6767) Bool)

(assert (=> b!3940218 (= e!2437942 (inv!17 (value!206940 (h!47255 suffixTokens!72))))))

(declare-fun b!3940219 () Bool)

(declare-fun e!2437941 () Bool)

(assert (=> b!3940219 (= e!2437941 e!2437942)))

(declare-fun c!684584 () Bool)

(assert (=> b!3940219 (= c!684584 (is-IntegerValue!20302 (value!206940 (h!47255 suffixTokens!72))))))

(declare-fun b!3940220 () Bool)

(declare-fun res!1594660 () Bool)

(declare-fun e!2437940 () Bool)

(assert (=> b!3940220 (=> res!1594660 e!2437940)))

(assert (=> b!3940220 (= res!1594660 (not (is-IntegerValue!20303 (value!206940 (h!47255 suffixTokens!72)))))))

(assert (=> b!3940220 (= e!2437942 e!2437940)))

(declare-fun d!1168742 () Bool)

(declare-fun c!684583 () Bool)

(assert (=> d!1168742 (= c!684583 (is-IntegerValue!20301 (value!206940 (h!47255 suffixTokens!72))))))

(assert (=> d!1168742 (= (inv!21 (value!206940 (h!47255 suffixTokens!72))) e!2437941)))

(declare-fun b!3940221 () Bool)

(declare-fun inv!15 (TokenValue!6767) Bool)

(assert (=> b!3940221 (= e!2437940 (inv!15 (value!206940 (h!47255 suffixTokens!72))))))

(declare-fun b!3940222 () Bool)

(declare-fun inv!16 (TokenValue!6767) Bool)

(assert (=> b!3940222 (= e!2437941 (inv!16 (value!206940 (h!47255 suffixTokens!72))))))

(assert (= (and d!1168742 c!684583) b!3940222))

(assert (= (and d!1168742 (not c!684583)) b!3940219))

(assert (= (and b!3940219 c!684584) b!3940218))

(assert (= (and b!3940219 (not c!684584)) b!3940220))

(assert (= (and b!3940220 (not res!1594660)) b!3940221))

(declare-fun m!4509041 () Bool)

(assert (=> b!3940218 m!4509041))

(declare-fun m!4509043 () Bool)

(assert (=> b!3940221 m!4509043))

(declare-fun m!4509045 () Bool)

(assert (=> b!3940222 m!4509045))

(assert (=> b!3940021 d!1168742))

(declare-fun d!1168744 () Bool)

(assert (=> d!1168744 (= (inv!56034 (tag!7397 (h!47256 rules!2768))) (= (mod (str.len (value!206939 (tag!7397 (h!47256 rules!2768)))) 2) 0))))

(assert (=> b!3940020 d!1168744))

(declare-fun d!1168746 () Bool)

(declare-fun res!1594661 () Bool)

(declare-fun e!2437943 () Bool)

(assert (=> d!1168746 (=> (not res!1594661) (not e!2437943))))

(assert (=> d!1168746 (= res!1594661 (semiInverseModEq!2812 (toChars!8856 (transformation!6537 (h!47256 rules!2768))) (toValue!8997 (transformation!6537 (h!47256 rules!2768)))))))

(assert (=> d!1168746 (= (inv!56037 (transformation!6537 (h!47256 rules!2768))) e!2437943)))

(declare-fun b!3940223 () Bool)

(assert (=> b!3940223 (= e!2437943 (equivClasses!2711 (toChars!8856 (transformation!6537 (h!47256 rules!2768))) (toValue!8997 (transformation!6537 (h!47256 rules!2768)))))))

(assert (= (and d!1168746 res!1594661) b!3940223))

(declare-fun m!4509047 () Bool)

(assert (=> d!1168746 m!4509047))

(declare-fun m!4509049 () Bool)

(assert (=> b!3940223 m!4509049))

(assert (=> b!3940020 d!1168746))

(declare-fun b!3940224 () Bool)

(declare-fun e!2437946 () Bool)

(assert (=> b!3940224 (= e!2437946 (inv!17 (value!206940 (h!47255 prefixTokens!80))))))

(declare-fun b!3940225 () Bool)

(declare-fun e!2437945 () Bool)

(assert (=> b!3940225 (= e!2437945 e!2437946)))

(declare-fun c!684586 () Bool)

(assert (=> b!3940225 (= c!684586 (is-IntegerValue!20302 (value!206940 (h!47255 prefixTokens!80))))))

(declare-fun b!3940226 () Bool)

(declare-fun res!1594662 () Bool)

(declare-fun e!2437944 () Bool)

(assert (=> b!3940226 (=> res!1594662 e!2437944)))

(assert (=> b!3940226 (= res!1594662 (not (is-IntegerValue!20303 (value!206940 (h!47255 prefixTokens!80)))))))

(assert (=> b!3940226 (= e!2437946 e!2437944)))

(declare-fun d!1168748 () Bool)

(declare-fun c!684585 () Bool)

(assert (=> d!1168748 (= c!684585 (is-IntegerValue!20301 (value!206940 (h!47255 prefixTokens!80))))))

(assert (=> d!1168748 (= (inv!21 (value!206940 (h!47255 prefixTokens!80))) e!2437945)))

(declare-fun b!3940227 () Bool)

(assert (=> b!3940227 (= e!2437944 (inv!15 (value!206940 (h!47255 prefixTokens!80))))))

(declare-fun b!3940228 () Bool)

(assert (=> b!3940228 (= e!2437945 (inv!16 (value!206940 (h!47255 prefixTokens!80))))))

(assert (= (and d!1168748 c!684585) b!3940228))

(assert (= (and d!1168748 (not c!684585)) b!3940225))

(assert (= (and b!3940225 c!684586) b!3940224))

(assert (= (and b!3940225 (not c!684586)) b!3940226))

(assert (= (and b!3940226 (not res!1594662)) b!3940227))

(declare-fun m!4509051 () Bool)

(assert (=> b!3940224 m!4509051))

(declare-fun m!4509053 () Bool)

(assert (=> b!3940227 m!4509053))

(declare-fun m!4509055 () Bool)

(assert (=> b!3940228 m!4509055))

(assert (=> b!3940011 d!1168748))

(declare-fun b!3940233 () Bool)

(declare-fun e!2437949 () Bool)

(declare-fun tp!1198914 () Bool)

(assert (=> b!3940233 (= e!2437949 (and tp_is_empty!19855 tp!1198914))))

(assert (=> b!3940023 (= tp!1198844 e!2437949)))

(assert (= (and b!3940023 (is-Cons!41834 (t!326729 prefix!426))) b!3940233))

(declare-fun b!3940252 () Bool)

(declare-fun b_free!107729 () Bool)

(declare-fun b_next!108433 () Bool)

(assert (=> b!3940252 (= b_free!107729 (not b_next!108433))))

(declare-fun tp!1198925 () Bool)

(declare-fun b_and!301013 () Bool)

(assert (=> b!3940252 (= tp!1198925 b_and!301013)))

(declare-fun b_free!107731 () Bool)

(declare-fun b_next!108435 () Bool)

(assert (=> b!3940252 (= b_free!107731 (not b_next!108435))))

(declare-fun tb!236063 () Bool)

(declare-fun t!326755 () Bool)

(assert (=> (and b!3940252 (= (toChars!8856 (transformation!6537 (h!47256 (t!326731 rules!2768)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))) t!326755) tb!236063))

(declare-fun result!285968 () Bool)

(assert (= result!285968 result!285950))

(assert (=> b!3940186 t!326755))

(declare-fun tb!236065 () Bool)

(declare-fun t!326757 () Bool)

(assert (=> (and b!3940252 (= (toChars!8856 (transformation!6537 (h!47256 (t!326731 rules!2768)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))) t!326757) tb!236065))

(declare-fun result!285970 () Bool)

(assert (= result!285970 result!285958))

(assert (=> b!3940193 t!326757))

(declare-fun tp!1198924 () Bool)

(declare-fun b_and!301015 () Bool)

(assert (=> b!3940252 (= tp!1198924 (and (=> t!326755 result!285968) (=> t!326757 result!285970) b_and!301015))))

(declare-fun e!2437965 () Bool)

(assert (=> b!3940252 (= e!2437965 (and tp!1198925 tp!1198924))))

(declare-fun b!3940251 () Bool)

(declare-fun e!2437964 () Bool)

(declare-fun tp!1198923 () Bool)

(assert (=> b!3940251 (= e!2437964 (and tp!1198923 (inv!56034 (tag!7397 (h!47256 (t!326731 rules!2768)))) (inv!56037 (transformation!6537 (h!47256 (t!326731 rules!2768)))) e!2437965))))

(declare-fun b!3940250 () Bool)

(declare-fun e!2437963 () Bool)

(declare-fun tp!1198926 () Bool)

(assert (=> b!3940250 (= e!2437963 (and e!2437964 tp!1198926))))

(assert (=> b!3940005 (= tp!1198847 e!2437963)))

(assert (= b!3940251 b!3940252))

(assert (= b!3940250 b!3940251))

(assert (= (and b!3940005 (is-Cons!41836 (t!326731 rules!2768))) b!3940250))

(declare-fun m!4509057 () Bool)

(assert (=> b!3940251 m!4509057))

(declare-fun m!4509059 () Bool)

(assert (=> b!3940251 m!4509059))

(declare-fun e!2437968 () Bool)

(assert (=> b!3940006 (= tp!1198851 e!2437968)))

(declare-fun b!3940265 () Bool)

(declare-fun tp!1198941 () Bool)

(assert (=> b!3940265 (= e!2437968 tp!1198941)))

(declare-fun b!3940264 () Bool)

(declare-fun tp!1198938 () Bool)

(declare-fun tp!1198940 () Bool)

(assert (=> b!3940264 (= e!2437968 (and tp!1198938 tp!1198940))))

(declare-fun b!3940263 () Bool)

(assert (=> b!3940263 (= e!2437968 tp_is_empty!19855)))

(declare-fun b!3940266 () Bool)

(declare-fun tp!1198939 () Bool)

(declare-fun tp!1198937 () Bool)

(assert (=> b!3940266 (= e!2437968 (and tp!1198939 tp!1198937))))

(assert (= (and b!3940006 (is-ElementMatch!11442 (regex!6537 (rule!9495 (h!47255 prefixTokens!80))))) b!3940263))

(assert (= (and b!3940006 (is-Concat!18210 (regex!6537 (rule!9495 (h!47255 prefixTokens!80))))) b!3940264))

(assert (= (and b!3940006 (is-Star!11442 (regex!6537 (rule!9495 (h!47255 prefixTokens!80))))) b!3940265))

(assert (= (and b!3940006 (is-Union!11442 (regex!6537 (rule!9495 (h!47255 prefixTokens!80))))) b!3940266))

(declare-fun b!3940284 () Bool)

(declare-fun b_free!107733 () Bool)

(declare-fun b_next!108437 () Bool)

(assert (=> b!3940284 (= b_free!107733 (not b_next!108437))))

(declare-fun tp!1198956 () Bool)

(declare-fun b_and!301017 () Bool)

(assert (=> b!3940284 (= tp!1198956 b_and!301017)))

(declare-fun b_free!107735 () Bool)

(declare-fun b_next!108439 () Bool)

(assert (=> b!3940284 (= b_free!107735 (not b_next!108439))))

(declare-fun t!326759 () Bool)

(declare-fun tb!236067 () Bool)

(assert (=> (and b!3940284 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 prefixTokens!80))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))) t!326759) tb!236067))

(declare-fun result!285976 () Bool)

(assert (= result!285976 result!285950))

(assert (=> b!3940186 t!326759))

(declare-fun t!326761 () Bool)

(declare-fun tb!236069 () Bool)

(assert (=> (and b!3940284 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 prefixTokens!80))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))) t!326761) tb!236069))

(declare-fun result!285978 () Bool)

(assert (= result!285978 result!285958))

(assert (=> b!3940193 t!326761))

(declare-fun tp!1198955 () Bool)

(declare-fun b_and!301019 () Bool)

(assert (=> b!3940284 (= tp!1198955 (and (=> t!326759 result!285976) (=> t!326761 result!285978) b_and!301019))))

(declare-fun b!3940282 () Bool)

(declare-fun e!2437984 () Bool)

(declare-fun tp!1198953 () Bool)

(declare-fun e!2437986 () Bool)

(assert (=> b!3940282 (= e!2437984 (and (inv!21 (value!206940 (h!47255 (t!326730 prefixTokens!80)))) e!2437986 tp!1198953))))

(declare-fun e!2437987 () Bool)

(declare-fun b!3940281 () Bool)

(declare-fun tp!1198954 () Bool)

(assert (=> b!3940281 (= e!2437987 (and (inv!56038 (h!47255 (t!326730 prefixTokens!80))) e!2437984 tp!1198954))))

(assert (=> b!3940007 (= tp!1198853 e!2437987)))

(declare-fun b!3940283 () Bool)

(declare-fun e!2437985 () Bool)

(declare-fun tp!1198952 () Bool)

(assert (=> b!3940283 (= e!2437986 (and tp!1198952 (inv!56034 (tag!7397 (rule!9495 (h!47255 (t!326730 prefixTokens!80))))) (inv!56037 (transformation!6537 (rule!9495 (h!47255 (t!326730 prefixTokens!80))))) e!2437985))))

(assert (=> b!3940284 (= e!2437985 (and tp!1198956 tp!1198955))))

(assert (= b!3940283 b!3940284))

(assert (= b!3940282 b!3940283))

(assert (= b!3940281 b!3940282))

(assert (= (and b!3940007 (is-Cons!41835 (t!326730 prefixTokens!80))) b!3940281))

(declare-fun m!4509073 () Bool)

(assert (=> b!3940282 m!4509073))

(declare-fun m!4509075 () Bool)

(assert (=> b!3940281 m!4509075))

(declare-fun m!4509077 () Bool)

(assert (=> b!3940283 m!4509077))

(declare-fun m!4509079 () Bool)

(assert (=> b!3940283 m!4509079))

(declare-fun b!3940288 () Bool)

(declare-fun b_free!107737 () Bool)

(declare-fun b_next!108441 () Bool)

(assert (=> b!3940288 (= b_free!107737 (not b_next!108441))))

(declare-fun tp!1198961 () Bool)

(declare-fun b_and!301021 () Bool)

(assert (=> b!3940288 (= tp!1198961 b_and!301021)))

(declare-fun b_free!107739 () Bool)

(declare-fun b_next!108443 () Bool)

(assert (=> b!3940288 (= b_free!107739 (not b_next!108443))))

(declare-fun tb!236071 () Bool)

(declare-fun t!326763 () Bool)

(assert (=> (and b!3940288 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 suffixTokens!72))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80))))) t!326763) tb!236071))

(declare-fun result!285980 () Bool)

(assert (= result!285980 result!285950))

(assert (=> b!3940186 t!326763))

(declare-fun t!326765 () Bool)

(declare-fun tb!236073 () Bool)

(assert (=> (and b!3940288 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 suffixTokens!72))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72))))) t!326765) tb!236073))

(declare-fun result!285982 () Bool)

(assert (= result!285982 result!285958))

(assert (=> b!3940193 t!326765))

(declare-fun tp!1198960 () Bool)

(declare-fun b_and!301023 () Bool)

(assert (=> b!3940288 (= tp!1198960 (and (=> t!326763 result!285980) (=> t!326765 result!285982) b_and!301023))))

(declare-fun tp!1198958 () Bool)

(declare-fun e!2437992 () Bool)

(declare-fun b!3940286 () Bool)

(declare-fun e!2437990 () Bool)

(assert (=> b!3940286 (= e!2437990 (and (inv!21 (value!206940 (h!47255 (t!326730 suffixTokens!72)))) e!2437992 tp!1198958))))

(declare-fun b!3940285 () Bool)

(declare-fun e!2437993 () Bool)

(declare-fun tp!1198959 () Bool)

(assert (=> b!3940285 (= e!2437993 (and (inv!56038 (h!47255 (t!326730 suffixTokens!72))) e!2437990 tp!1198959))))

(assert (=> b!3940009 (= tp!1198846 e!2437993)))

(declare-fun e!2437991 () Bool)

(declare-fun tp!1198957 () Bool)

(declare-fun b!3940287 () Bool)

(assert (=> b!3940287 (= e!2437992 (and tp!1198957 (inv!56034 (tag!7397 (rule!9495 (h!47255 (t!326730 suffixTokens!72))))) (inv!56037 (transformation!6537 (rule!9495 (h!47255 (t!326730 suffixTokens!72))))) e!2437991))))

(assert (=> b!3940288 (= e!2437991 (and tp!1198961 tp!1198960))))

(assert (= b!3940287 b!3940288))

(assert (= b!3940286 b!3940287))

(assert (= b!3940285 b!3940286))

(assert (= (and b!3940009 (is-Cons!41835 (t!326730 suffixTokens!72))) b!3940285))

(declare-fun m!4509081 () Bool)

(assert (=> b!3940286 m!4509081))

(declare-fun m!4509083 () Bool)

(assert (=> b!3940285 m!4509083))

(declare-fun m!4509085 () Bool)

(assert (=> b!3940287 m!4509085))

(declare-fun m!4509087 () Bool)

(assert (=> b!3940287 m!4509087))

(declare-fun e!2437995 () Bool)

(assert (=> b!3940008 (= tp!1198838 e!2437995)))

(declare-fun b!3940291 () Bool)

(declare-fun tp!1198966 () Bool)

(assert (=> b!3940291 (= e!2437995 tp!1198966)))

(declare-fun b!3940290 () Bool)

(declare-fun tp!1198963 () Bool)

(declare-fun tp!1198965 () Bool)

(assert (=> b!3940290 (= e!2437995 (and tp!1198963 tp!1198965))))

(declare-fun b!3940289 () Bool)

(assert (=> b!3940289 (= e!2437995 tp_is_empty!19855)))

(declare-fun b!3940292 () Bool)

(declare-fun tp!1198964 () Bool)

(declare-fun tp!1198962 () Bool)

(assert (=> b!3940292 (= e!2437995 (and tp!1198964 tp!1198962))))

(assert (= (and b!3940008 (is-ElementMatch!11442 (regex!6537 (rule!9495 (h!47255 suffixTokens!72))))) b!3940289))

(assert (= (and b!3940008 (is-Concat!18210 (regex!6537 (rule!9495 (h!47255 suffixTokens!72))))) b!3940290))

(assert (= (and b!3940008 (is-Star!11442 (regex!6537 (rule!9495 (h!47255 suffixTokens!72))))) b!3940291))

(assert (= (and b!3940008 (is-Union!11442 (regex!6537 (rule!9495 (h!47255 suffixTokens!72))))) b!3940292))

(declare-fun b!3940293 () Bool)

(declare-fun e!2437996 () Bool)

(declare-fun tp!1198967 () Bool)

(assert (=> b!3940293 (= e!2437996 (and tp_is_empty!19855 tp!1198967))))

(assert (=> b!3940010 (= tp!1198848 e!2437996)))

(assert (= (and b!3940010 (is-Cons!41834 (t!326729 suffixResult!91))) b!3940293))

(declare-fun b!3940294 () Bool)

(declare-fun e!2437997 () Bool)

(declare-fun tp!1198968 () Bool)

(assert (=> b!3940294 (= e!2437997 (and tp_is_empty!19855 tp!1198968))))

(assert (=> b!3940021 (= tp!1198837 e!2437997)))

(assert (= (and b!3940021 (is-Cons!41834 (originalCharacters!7137 (h!47255 suffixTokens!72)))) b!3940294))

(declare-fun e!2437998 () Bool)

(assert (=> b!3940020 (= tp!1198852 e!2437998)))

(declare-fun b!3940297 () Bool)

(declare-fun tp!1198973 () Bool)

(assert (=> b!3940297 (= e!2437998 tp!1198973)))

(declare-fun b!3940296 () Bool)

(declare-fun tp!1198970 () Bool)

(declare-fun tp!1198972 () Bool)

(assert (=> b!3940296 (= e!2437998 (and tp!1198970 tp!1198972))))

(declare-fun b!3940295 () Bool)

(assert (=> b!3940295 (= e!2437998 tp_is_empty!19855)))

(declare-fun b!3940298 () Bool)

(declare-fun tp!1198971 () Bool)

(declare-fun tp!1198969 () Bool)

(assert (=> b!3940298 (= e!2437998 (and tp!1198971 tp!1198969))))

(assert (= (and b!3940020 (is-ElementMatch!11442 (regex!6537 (h!47256 rules!2768)))) b!3940295))

(assert (= (and b!3940020 (is-Concat!18210 (regex!6537 (h!47256 rules!2768)))) b!3940296))

(assert (= (and b!3940020 (is-Star!11442 (regex!6537 (h!47256 rules!2768)))) b!3940297))

(assert (= (and b!3940020 (is-Union!11442 (regex!6537 (h!47256 rules!2768)))) b!3940298))

(declare-fun b!3940299 () Bool)

(declare-fun e!2437999 () Bool)

(declare-fun tp!1198974 () Bool)

(assert (=> b!3940299 (= e!2437999 (and tp_is_empty!19855 tp!1198974))))

(assert (=> b!3940022 (= tp!1198849 e!2437999)))

(assert (= (and b!3940022 (is-Cons!41834 (t!326729 suffix!1176))) b!3940299))

(declare-fun b!3940300 () Bool)

(declare-fun e!2438000 () Bool)

(declare-fun tp!1198975 () Bool)

(assert (=> b!3940300 (= e!2438000 (and tp_is_empty!19855 tp!1198975))))

(assert (=> b!3940011 (= tp!1198839 e!2438000)))

(assert (= (and b!3940011 (is-Cons!41834 (originalCharacters!7137 (h!47255 prefixTokens!80)))) b!3940300))

(declare-fun b_lambda!115221 () Bool)

(assert (= b_lambda!115219 (or (and b!3940015 b_free!107715 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))))) (and b!3940252 b_free!107731 (= (toChars!8856 (transformation!6537 (h!47256 (t!326731 rules!2768)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))))) (and b!3940018 b_free!107707) (and b!3940288 b_free!107739 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 suffixTokens!72))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))))) (and b!3940025 b_free!107711 (= (toChars!8856 (transformation!6537 (h!47256 rules!2768))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))))) (and b!3940284 b_free!107735 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 prefixTokens!80))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))))) b_lambda!115221)))

(declare-fun b_lambda!115223 () Bool)

(assert (= b_lambda!115217 (or (and b!3940018 b_free!107707 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 suffixTokens!72)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))))) (and b!3940284 b_free!107735 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 prefixTokens!80))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))))) (and b!3940015 b_free!107715) (and b!3940252 b_free!107731 (= (toChars!8856 (transformation!6537 (h!47256 (t!326731 rules!2768)))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))))) (and b!3940025 b_free!107711 (= (toChars!8856 (transformation!6537 (h!47256 rules!2768))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))))) (and b!3940288 b_free!107739 (= (toChars!8856 (transformation!6537 (rule!9495 (h!47255 (t!326730 suffixTokens!72))))) (toChars!8856 (transformation!6537 (rule!9495 (h!47255 prefixTokens!80)))))) b_lambda!115223)))

(push 1)

(assert (not b!3940292))

(assert (not b!3940287))

(assert (not b!3940133))

(assert b_and!300975)

(assert (not b_lambda!115223))

(assert (not b_next!108419))

(assert (not b!3940143))

(assert (not b!3940169))

(assert (not tb!236051))

(assert (not b!3940218))

(assert b_and!300979)

(assert (not b_next!108433))

(assert (not b!3940142))

(assert (not b!3940132))

(assert (not b!3940283))

(assert (not b!3940221))

(assert (not b_next!108443))

(assert (not b_next!108439))

(assert (not d!1168736))

(assert (not b!3940186))

(assert (not b!3940223))

(assert b_and!301011)

(assert (not b!3940298))

(assert (not b!3940192))

(assert (not b_next!108411))

(assert (not b!3940296))

(assert (not b!3940266))

(assert (not b!3940281))

(assert (not b!3940157))

(assert (not b!3940285))

(assert (not b!3940290))

(assert (not b!3940139))

(assert (not d!1168746))

(assert (not d!1168722))

(assert b_and!301015)

(assert (not d!1168730))

(assert (not b!3940195))

(assert (not b!3940193))

(assert (not b_next!108437))

(assert (not b_next!108441))

(assert (not b_next!108435))

(assert (not b!3940265))

(assert (not b!3940224))

(assert (not b!3940135))

(assert b_and!301013)

(assert (not b!3940297))

(assert (not b!3940300))

(assert b_and!301017)

(assert (not b!3940299))

(assert (not b!3940291))

(assert tp_is_empty!19855)

(assert (not d!1168732))

(assert (not b_next!108415))

(assert (not b!3940233))

(assert (not b!3940250))

(assert b_and!301021)

(assert (not b!3940227))

(assert (not b!3940251))

(assert b_and!301007)

(assert (not b!3940222))

(assert (not b!3940207))

(assert (not d!1168724))

(assert (not b!3940187))

(assert (not b!3940286))

(assert (not tb!236057))

(assert (not b!3940144))

(assert b_and!301019)

(assert (not b!3940196))

(assert (not b_next!108413))

(assert (not d!1168728))

(assert (not b!3940293))

(assert b_and!301023)

(assert (not b_next!108417))

(assert (not b!3940228))

(assert (not b!3940264))

(assert (not b!3940282))

(assert (not b!3940146))

(assert (not b!3940158))

(assert (not b!3940194))

(assert (not b!3940170))

(assert (not b!3940294))

(assert (not d!1168720))

(assert b_and!300971)

(assert (not b_next!108409))

(assert b_and!301009)

(assert (not d!1168726))

(assert (not d!1168696))

(assert (not b_lambda!115221))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108419))

(assert b_and!300979)

(assert (not b_next!108433))

(assert (not b_next!108443))

(assert (not b_next!108439))

(assert b_and!301015)

(assert b_and!301007)

(assert b_and!300975)

(assert b_and!301011)

(assert (not b_next!108411))

(assert (not b_next!108437))

(assert (not b_next!108441))

(assert (not b_next!108435))

(assert b_and!301013)

(assert b_and!301017)

(assert (not b_next!108415))

(assert b_and!301021)

(assert b_and!301019)

(assert (not b_next!108413))

(assert b_and!301023)

(assert (not b_next!108417))

(assert b_and!300971)

(assert (not b_next!108409))

(assert b_and!301009)

(check-sat)

(pop 1)

