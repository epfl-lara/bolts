; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!366974 () Bool)

(assert start!366974)

(declare-fun b!3915811 () Bool)

(declare-fun b_free!106337 () Bool)

(declare-fun b_next!107041 () Bool)

(assert (=> b!3915811 (= b_free!106337 (not b_next!107041))))

(declare-fun tp!1191940 () Bool)

(declare-fun b_and!298127 () Bool)

(assert (=> b!3915811 (= tp!1191940 b_and!298127)))

(declare-fun b_free!106339 () Bool)

(declare-fun b_next!107043 () Bool)

(assert (=> b!3915811 (= b_free!106339 (not b_next!107043))))

(declare-fun tp!1191937 () Bool)

(declare-fun b_and!298129 () Bool)

(assert (=> b!3915811 (= tp!1191937 b_and!298129)))

(declare-fun b!3915820 () Bool)

(declare-fun b_free!106341 () Bool)

(declare-fun b_next!107045 () Bool)

(assert (=> b!3915820 (= b_free!106341 (not b_next!107045))))

(declare-fun tp!1191935 () Bool)

(declare-fun b_and!298131 () Bool)

(assert (=> b!3915820 (= tp!1191935 b_and!298131)))

(declare-fun b_free!106343 () Bool)

(declare-fun b_next!107047 () Bool)

(assert (=> b!3915820 (= b_free!106343 (not b_next!107047))))

(declare-fun tp!1191934 () Bool)

(declare-fun b_and!298133 () Bool)

(assert (=> b!3915820 (= tp!1191934 b_and!298133)))

(declare-fun b!3915796 () Bool)

(declare-fun b_free!106345 () Bool)

(declare-fun b_next!107049 () Bool)

(assert (=> b!3915796 (= b_free!106345 (not b_next!107049))))

(declare-fun tp!1191936 () Bool)

(declare-fun b_and!298135 () Bool)

(assert (=> b!3915796 (= tp!1191936 b_and!298135)))

(declare-fun b_free!106347 () Bool)

(declare-fun b_next!107051 () Bool)

(assert (=> b!3915796 (= b_free!106347 (not b_next!107051))))

(declare-fun tp!1191929 () Bool)

(declare-fun b_and!298137 () Bool)

(assert (=> b!3915796 (= tp!1191929 b_and!298137)))

(declare-fun b!3915785 () Bool)

(declare-fun e!2421133 () Bool)

(declare-datatypes ((List!41627 0))(
  ( (Nil!41503) (Cons!41503 (h!46923 (_ BitVec 16)) (t!323728 List!41627)) )
))
(declare-datatypes ((TokenValue!6693 0))(
  ( (FloatLiteralValue!13386 (text!47296 List!41627)) (TokenValueExt!6692 (__x!25603 Int)) (Broken!33465 (value!204805 List!41627)) (Object!6816) (End!6693) (Def!6693) (Underscore!6693) (Match!6693) (Else!6693) (Error!6693) (Case!6693) (If!6693) (Extends!6693) (Abstract!6693) (Class!6693) (Val!6693) (DelimiterValue!13386 (del!6753 List!41627)) (KeywordValue!6699 (value!204806 List!41627)) (CommentValue!13386 (value!204807 List!41627)) (WhitespaceValue!13386 (value!204808 List!41627)) (IndentationValue!6693 (value!204809 List!41627)) (String!47184) (Int32!6693) (Broken!33466 (value!204810 List!41627)) (Boolean!6694) (Unit!59639) (OperatorValue!6696 (op!6753 List!41627)) (IdentifierValue!13386 (value!204811 List!41627)) (IdentifierValue!13387 (value!204812 List!41627)) (WhitespaceValue!13387 (value!204813 List!41627)) (True!13386) (False!13386) (Broken!33467 (value!204814 List!41627)) (Broken!33468 (value!204815 List!41627)) (True!13387) (RightBrace!6693) (RightBracket!6693) (Colon!6693) (Null!6693) (Comma!6693) (LeftBracket!6693) (False!13387) (LeftBrace!6693) (ImaginaryLiteralValue!6693 (text!47297 List!41627)) (StringLiteralValue!20079 (value!204816 List!41627)) (EOFValue!6693 (value!204817 List!41627)) (IdentValue!6693 (value!204818 List!41627)) (DelimiterValue!13387 (value!204819 List!41627)) (DedentValue!6693 (value!204820 List!41627)) (NewLineValue!6693 (value!204821 List!41627)) (IntegerValue!20079 (value!204822 (_ BitVec 32)) (text!47298 List!41627)) (IntegerValue!20080 (value!204823 Int) (text!47299 List!41627)) (Times!6693) (Or!6693) (Equal!6693) (Minus!6693) (Broken!33469 (value!204824 List!41627)) (And!6693) (Div!6693) (LessEqual!6693) (Mod!6693) (Concat!18061) (Not!6693) (Plus!6693) (SpaceValue!6693 (value!204825 List!41627)) (IntegerValue!20081 (value!204826 Int) (text!47300 List!41627)) (StringLiteralValue!20080 (text!47301 List!41627)) (FloatLiteralValue!13387 (text!47302 List!41627)) (BytesLiteralValue!6693 (value!204827 List!41627)) (CommentValue!13387 (value!204828 List!41627)) (StringLiteralValue!20081 (value!204829 List!41627)) (ErrorTokenValue!6693 (msg!6754 List!41627)) )
))
(declare-datatypes ((C!22922 0))(
  ( (C!22923 (val!13555 Int)) )
))
(declare-datatypes ((Regex!11368 0))(
  ( (ElementMatch!11368 (c!680555 C!22922)) (Concat!18062 (regOne!23248 Regex!11368) (regTwo!23248 Regex!11368)) (EmptyExpr!11368) (Star!11368 (reg!11697 Regex!11368)) (EmptyLang!11368) (Union!11368 (regOne!23249 Regex!11368) (regTwo!23249 Regex!11368)) )
))
(declare-datatypes ((String!47185 0))(
  ( (String!47186 (value!204830 String)) )
))
(declare-datatypes ((List!41628 0))(
  ( (Nil!41504) (Cons!41504 (h!46924 C!22922) (t!323729 List!41628)) )
))
(declare-datatypes ((IArray!25353 0))(
  ( (IArray!25354 (innerList!12734 List!41628)) )
))
(declare-datatypes ((Conc!12674 0))(
  ( (Node!12674 (left!31752 Conc!12674) (right!32082 Conc!12674) (csize!25578 Int) (cheight!12885 Int)) (Leaf!19613 (xs!15980 IArray!25353) (csize!25579 Int)) (Empty!12674) )
))
(declare-datatypes ((BalanceConc!24942 0))(
  ( (BalanceConc!24943 (c!680556 Conc!12674)) )
))
(declare-datatypes ((TokenValueInjection!12814 0))(
  ( (TokenValueInjection!12815 (toValue!8911 Int) (toChars!8770 Int)) )
))
(declare-datatypes ((Rule!12726 0))(
  ( (Rule!12727 (regex!6463 Regex!11368) (tag!7323 String!47185) (isSeparator!6463 Bool) (transformation!6463 TokenValueInjection!12814)) )
))
(declare-datatypes ((Token!12064 0))(
  ( (Token!12065 (value!204831 TokenValue!6693) (rule!9387 Rule!12726) (size!31161 Int) (originalCharacters!7063 List!41628)) )
))
(declare-datatypes ((tuple2!40758 0))(
  ( (tuple2!40759 (_1!23513 Token!12064) (_2!23513 List!41628)) )
))
(declare-datatypes ((Option!8883 0))(
  ( (None!8882) (Some!8882 (v!39206 tuple2!40758)) )
))
(declare-fun lt!1364311 () Option!8883)

(declare-fun size!31162 (List!41628) Int)

(assert (=> b!3915785 (= e!2421133 (= (size!31161 (_1!23513 (v!39206 lt!1364311))) (size!31162 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3915786 () Bool)

(declare-fun res!1583952 () Bool)

(declare-fun e!2421112 () Bool)

(assert (=> b!3915786 (=> res!1583952 e!2421112)))

(declare-datatypes ((List!41629 0))(
  ( (Nil!41505) (Cons!41505 (h!46925 Token!12064) (t!323730 List!41629)) )
))
(declare-fun prefixTokens!80 () List!41629)

(declare-fun lt!1364309 () Token!12064)

(assert (=> b!3915786 (= res!1583952 (or (not (= prefixTokens!80 (Cons!41505 lt!1364309 Nil!41505))) (not (= (_1!23513 (v!39206 lt!1364311)) lt!1364309))))))

(declare-fun b!3915787 () Bool)

(declare-fun e!2421123 () Bool)

(declare-fun tp!1191930 () Bool)

(declare-fun e!2421114 () Bool)

(declare-fun inv!55696 (Token!12064) Bool)

(assert (=> b!3915787 (= e!2421114 (and (inv!55696 (h!46925 prefixTokens!80)) e!2421123 tp!1191930))))

(declare-fun tp!1191941 () Bool)

(declare-fun suffixTokens!72 () List!41629)

(declare-fun e!2421120 () Bool)

(declare-fun e!2421132 () Bool)

(declare-fun b!3915788 () Bool)

(assert (=> b!3915788 (= e!2421132 (and (inv!55696 (h!46925 suffixTokens!72)) e!2421120 tp!1191941))))

(declare-fun b!3915789 () Bool)

(declare-fun res!1583950 () Bool)

(declare-fun e!2421125 () Bool)

(assert (=> b!3915789 (=> (not res!1583950) (not e!2421125))))

(declare-datatypes ((LexerInterface!6052 0))(
  ( (LexerInterfaceExt!6049 (__x!25604 Int)) (Lexer!6050) )
))
(declare-fun thiss!20629 () LexerInterface!6052)

(declare-datatypes ((List!41630 0))(
  ( (Nil!41506) (Cons!41506 (h!46926 Rule!12726) (t!323731 List!41630)) )
))
(declare-fun rules!2768 () List!41630)

(declare-fun rulesInvariant!5395 (LexerInterface!6052 List!41630) Bool)

(assert (=> b!3915789 (= res!1583950 (rulesInvariant!5395 thiss!20629 rules!2768))))

(declare-fun b!3915790 () Bool)

(declare-fun e!2421115 () Bool)

(declare-fun tp_is_empty!19707 () Bool)

(declare-fun tp!1191944 () Bool)

(assert (=> b!3915790 (= e!2421115 (and tp_is_empty!19707 tp!1191944))))

(declare-fun b!3915791 () Bool)

(declare-fun res!1583945 () Bool)

(assert (=> b!3915791 (=> (not res!1583945) (not e!2421125))))

(declare-fun isEmpty!24699 (List!41629) Bool)

(assert (=> b!3915791 (= res!1583945 (not (isEmpty!24699 prefixTokens!80)))))

(declare-fun tp!1191933 () Bool)

(declare-fun b!3915792 () Bool)

(declare-fun e!2421127 () Bool)

(declare-fun inv!21 (TokenValue!6693) Bool)

(assert (=> b!3915792 (= e!2421120 (and (inv!21 (value!204831 (h!46925 suffixTokens!72))) e!2421127 tp!1191933))))

(declare-fun b!3915793 () Bool)

(declare-fun e!2421137 () Bool)

(declare-fun tp!1191942 () Bool)

(assert (=> b!3915793 (= e!2421137 (and tp_is_empty!19707 tp!1191942))))

(declare-fun b!3915794 () Bool)

(declare-fun e!2421117 () Bool)

(declare-fun e!2421142 () Bool)

(assert (=> b!3915794 (= e!2421117 e!2421142)))

(declare-fun res!1583944 () Bool)

(assert (=> b!3915794 (=> (not res!1583944) (not e!2421142))))

(assert (=> b!3915794 (= res!1583944 (is-Some!8882 lt!1364311))))

(declare-fun lt!1364304 () List!41628)

(declare-fun maxPrefix!3356 (LexerInterface!6052 List!41630 List!41628) Option!8883)

(assert (=> b!3915794 (= lt!1364311 (maxPrefix!3356 thiss!20629 rules!2768 lt!1364304))))

(declare-fun tp!1191931 () Bool)

(declare-fun b!3915795 () Bool)

(declare-fun e!2421131 () Bool)

(declare-fun e!2421113 () Bool)

(declare-fun inv!55693 (String!47185) Bool)

(declare-fun inv!55697 (TokenValueInjection!12814) Bool)

(assert (=> b!3915795 (= e!2421113 (and tp!1191931 (inv!55693 (tag!7323 (h!46926 rules!2768))) (inv!55697 (transformation!6463 (h!46926 rules!2768))) e!2421131))))

(declare-fun e!2421136 () Bool)

(assert (=> b!3915796 (= e!2421136 (and tp!1191936 tp!1191929))))

(declare-fun b!3915797 () Bool)

(declare-fun res!1583946 () Bool)

(declare-fun e!2421140 () Bool)

(assert (=> b!3915797 (=> res!1583946 e!2421140)))

(declare-datatypes ((tuple2!40760 0))(
  ( (tuple2!40761 (_1!23514 List!41629) (_2!23514 List!41628)) )
))
(declare-fun lt!1364297 () tuple2!40760)

(declare-fun suffix!1176 () List!41628)

(assert (=> b!3915797 (= res!1583946 (or (not (= lt!1364297 (tuple2!40761 (_1!23514 lt!1364297) (_2!23514 lt!1364297)))) (= (_2!23513 (v!39206 lt!1364311)) suffix!1176)))))

(declare-fun b!3915798 () Bool)

(declare-fun tp!1191938 () Bool)

(assert (=> b!3915798 (= e!2421127 (and tp!1191938 (inv!55693 (tag!7323 (rule!9387 (h!46925 suffixTokens!72)))) (inv!55697 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) e!2421136))))

(declare-fun b!3915799 () Bool)

(declare-fun res!1583947 () Bool)

(assert (=> b!3915799 (=> (not res!1583947) (not e!2421125))))

(declare-fun isEmpty!24700 (List!41630) Bool)

(assert (=> b!3915799 (= res!1583947 (not (isEmpty!24700 rules!2768)))))

(declare-fun b!3915800 () Bool)

(declare-fun res!1583956 () Bool)

(assert (=> b!3915800 (=> res!1583956 e!2421112)))

(declare-fun tail!5994 (List!41629) List!41629)

(assert (=> b!3915800 (= res!1583956 (not (isEmpty!24699 (tail!5994 prefixTokens!80))))))

(declare-fun res!1583955 () Bool)

(assert (=> start!366974 (=> (not res!1583955) (not e!2421125))))

(assert (=> start!366974 (= res!1583955 (is-Lexer!6050 thiss!20629))))

(assert (=> start!366974 e!2421125))

(assert (=> start!366974 e!2421115))

(assert (=> start!366974 true))

(declare-fun e!2421134 () Bool)

(assert (=> start!366974 e!2421134))

(declare-fun e!2421141 () Bool)

(assert (=> start!366974 e!2421141))

(assert (=> start!366974 e!2421114))

(assert (=> start!366974 e!2421132))

(assert (=> start!366974 e!2421137))

(declare-fun lt!1364301 () tuple2!40758)

(declare-fun lt!1364319 () tuple2!40760)

(declare-fun b!3915801 () Bool)

(declare-fun e!2421118 () Bool)

(declare-fun lexList!1820 (LexerInterface!6052 List!41630 List!41628) tuple2!40760)

(assert (=> b!3915801 (= e!2421118 (= (lexList!1820 thiss!20629 rules!2768 (_2!23513 lt!1364301)) lt!1364319))))

(declare-fun b!3915802 () Bool)

(declare-fun res!1583959 () Bool)

(assert (=> b!3915802 (=> res!1583959 e!2421112)))

(declare-fun lt!1364302 () List!41628)

(declare-fun lt!1364317 () List!41628)

(declare-fun ++!10683 (List!41628 List!41628) List!41628)

(assert (=> b!3915802 (= res!1583959 (not (= lt!1364302 (++!10683 lt!1364317 (_2!23513 lt!1364301)))))))

(declare-fun b!3915803 () Bool)

(declare-fun res!1583960 () Bool)

(assert (=> b!3915803 (=> (not res!1583960) (not e!2421125))))

(declare-fun prefix!426 () List!41628)

(declare-fun isEmpty!24701 (List!41628) Bool)

(assert (=> b!3915803 (= res!1583960 (not (isEmpty!24701 prefix!426)))))

(declare-fun e!2421119 () Bool)

(declare-fun e!2421138 () Bool)

(declare-fun tp!1191932 () Bool)

(declare-fun b!3915804 () Bool)

(assert (=> b!3915804 (= e!2421138 (and tp!1191932 (inv!55693 (tag!7323 (rule!9387 (h!46925 prefixTokens!80)))) (inv!55697 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) e!2421119))))

(declare-fun b!3915805 () Bool)

(declare-fun e!2421139 () Bool)

(assert (=> b!3915805 (= e!2421139 e!2421112)))

(declare-fun res!1583962 () Bool)

(assert (=> b!3915805 (=> res!1583962 e!2421112)))

(declare-fun lt!1364303 () Int)

(declare-fun lt!1364312 () Int)

(assert (=> b!3915805 (= res!1583962 (>= lt!1364303 lt!1364312))))

(assert (=> b!3915805 (= lt!1364303 (size!31162 (_2!23513 lt!1364301)))))

(declare-fun b!3915806 () Bool)

(declare-fun tp!1191943 () Bool)

(assert (=> b!3915806 (= e!2421141 (and e!2421113 tp!1191943))))

(declare-fun b!3915807 () Bool)

(declare-fun tp!1191939 () Bool)

(assert (=> b!3915807 (= e!2421134 (and tp_is_empty!19707 tp!1191939))))

(declare-fun b!3915808 () Bool)

(declare-fun e!2421124 () Bool)

(declare-fun e!2421126 () Bool)

(assert (=> b!3915808 (= e!2421124 e!2421126)))

(declare-fun res!1583958 () Bool)

(assert (=> b!3915808 (=> res!1583958 e!2421126)))

(declare-fun lt!1364315 () Int)

(declare-fun lt!1364306 () Int)

(declare-fun lt!1364318 () Int)

(assert (=> b!3915808 (= res!1583958 (not (= (+ lt!1364318 lt!1364306) lt!1364315)))))

(assert (=> b!3915808 (= lt!1364315 (size!31162 lt!1364304))))

(declare-fun b!3915809 () Bool)

(declare-fun tp!1191945 () Bool)

(assert (=> b!3915809 (= e!2421123 (and (inv!21 (value!204831 (h!46925 prefixTokens!80))) e!2421138 tp!1191945))))

(declare-fun b!3915810 () Bool)

(declare-fun e!2421116 () Bool)

(declare-fun e!2421130 () Bool)

(assert (=> b!3915810 (= e!2421116 e!2421130)))

(declare-fun res!1583954 () Bool)

(assert (=> b!3915810 (=> res!1583954 e!2421130)))

(declare-fun matchR!5457 (Regex!11368 List!41628) Bool)

(assert (=> b!3915810 (= res!1583954 (not (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364317)))))

(declare-fun lt!1364298 () TokenValue!6693)

(declare-fun maxPrefixOneRule!2426 (LexerInterface!6052 Rule!12726 List!41628) Option!8883)

(assert (=> b!3915810 (= (maxPrefixOneRule!2426 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) lt!1364304) (Some!8882 (tuple2!40759 (Token!12065 lt!1364298 (rule!9387 (_1!23513 (v!39206 lt!1364311))) lt!1364318 lt!1364317) (_2!23513 (v!39206 lt!1364311)))))))

(declare-datatypes ((Unit!59640 0))(
  ( (Unit!59641) )
))
(declare-fun lt!1364296 () Unit!59640)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1294 (LexerInterface!6052 List!41630 List!41628 List!41628 List!41628 Rule!12726) Unit!59640)

(assert (=> b!3915810 (= lt!1364296 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1294 thiss!20629 rules!2768 lt!1364317 lt!1364304 (_2!23513 (v!39206 lt!1364311)) (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> b!3915811 (= e!2421131 (and tp!1191940 tp!1191937))))

(declare-fun b!3915812 () Bool)

(declare-fun e!2421121 () Bool)

(assert (=> b!3915812 (= e!2421121 e!2421117)))

(declare-fun res!1583942 () Bool)

(assert (=> b!3915812 (=> (not res!1583942) (not e!2421117))))

(assert (=> b!3915812 (= res!1583942 (= (lexList!1820 thiss!20629 rules!2768 suffix!1176) lt!1364319))))

(declare-fun suffixResult!91 () List!41628)

(assert (=> b!3915812 (= lt!1364319 (tuple2!40761 suffixTokens!72 suffixResult!91))))

(declare-fun b!3915813 () Bool)

(assert (=> b!3915813 (= e!2421140 e!2421124)))

(declare-fun res!1583951 () Bool)

(assert (=> b!3915813 (=> res!1583951 e!2421124)))

(assert (=> b!3915813 (= res!1583951 (>= lt!1364306 lt!1364312))))

(assert (=> b!3915813 (= lt!1364312 (size!31162 suffix!1176))))

(assert (=> b!3915813 (= lt!1364306 (size!31162 (_2!23513 (v!39206 lt!1364311))))))

(declare-fun b!3915814 () Bool)

(assert (=> b!3915814 (= e!2421126 e!2421116)))

(declare-fun res!1583961 () Bool)

(assert (=> b!3915814 (=> res!1583961 e!2421116)))

(declare-fun lt!1364313 () Int)

(assert (=> b!3915814 (= res!1583961 (or (not (= (+ lt!1364313 lt!1364312) lt!1364315)) (<= lt!1364318 lt!1364313)))))

(assert (=> b!3915814 (= lt!1364313 (size!31162 prefix!426))))

(declare-fun b!3915815 () Bool)

(assert (=> b!3915815 (= e!2421125 e!2421121)))

(declare-fun res!1583953 () Bool)

(assert (=> b!3915815 (=> (not res!1583953) (not e!2421121))))

(declare-fun lt!1364310 () tuple2!40760)

(declare-fun lt!1364300 () List!41629)

(assert (=> b!3915815 (= res!1583953 (= lt!1364310 (tuple2!40761 lt!1364300 suffixResult!91)))))

(assert (=> b!3915815 (= lt!1364310 (lexList!1820 thiss!20629 rules!2768 lt!1364304))))

(declare-fun ++!10684 (List!41629 List!41629) List!41629)

(assert (=> b!3915815 (= lt!1364300 (++!10684 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3915815 (= lt!1364304 (++!10683 prefix!426 suffix!1176))))

(declare-fun b!3915816 () Bool)

(assert (=> b!3915816 (= e!2421142 (not e!2421140))))

(declare-fun res!1583949 () Bool)

(assert (=> b!3915816 (=> res!1583949 e!2421140)))

(assert (=> b!3915816 (= res!1583949 (not (= lt!1364302 lt!1364304)))))

(assert (=> b!3915816 (= lt!1364297 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364311))))))

(declare-fun lt!1364314 () List!41628)

(assert (=> b!3915816 (and (= (size!31161 (_1!23513 (v!39206 lt!1364311))) lt!1364318) (= (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311))) lt!1364317) (= (v!39206 lt!1364311) (tuple2!40759 (Token!12065 lt!1364298 (rule!9387 (_1!23513 (v!39206 lt!1364311))) lt!1364318 lt!1364317) lt!1364314)))))

(assert (=> b!3915816 (= lt!1364318 (size!31162 lt!1364317))))

(assert (=> b!3915816 e!2421133))

(declare-fun res!1583948 () Bool)

(assert (=> b!3915816 (=> (not res!1583948) (not e!2421133))))

(assert (=> b!3915816 (= res!1583948 (= (value!204831 (_1!23513 (v!39206 lt!1364311))) lt!1364298))))

(declare-fun apply!9702 (TokenValueInjection!12814 BalanceConc!24942) TokenValue!6693)

(declare-fun seqFromList!4730 (List!41628) BalanceConc!24942)

(assert (=> b!3915816 (= lt!1364298 (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 lt!1364317)))))

(assert (=> b!3915816 (= (_2!23513 (v!39206 lt!1364311)) lt!1364314)))

(declare-fun lt!1364305 () Unit!59640)

(declare-fun lemmaSamePrefixThenSameSuffix!1779 (List!41628 List!41628 List!41628 List!41628 List!41628) Unit!59640)

(assert (=> b!3915816 (= lt!1364305 (lemmaSamePrefixThenSameSuffix!1779 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 lt!1364314 lt!1364304))))

(declare-fun getSuffix!2013 (List!41628 List!41628) List!41628)

(assert (=> b!3915816 (= lt!1364314 (getSuffix!2013 lt!1364304 lt!1364317))))

(declare-fun isPrefix!3558 (List!41628 List!41628) Bool)

(assert (=> b!3915816 (isPrefix!3558 lt!1364317 lt!1364302)))

(assert (=> b!3915816 (= lt!1364302 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))

(declare-fun lt!1364307 () Unit!59640)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2421 (List!41628 List!41628) Unit!59640)

(assert (=> b!3915816 (= lt!1364307 (lemmaConcatTwoListThenFirstIsPrefix!2421 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))

(declare-fun list!15430 (BalanceConc!24942) List!41628)

(declare-fun charsOf!4287 (Token!12064) BalanceConc!24942)

(assert (=> b!3915816 (= lt!1364317 (list!15430 (charsOf!4287 (_1!23513 (v!39206 lt!1364311)))))))

(declare-fun ruleValid!2411 (LexerInterface!6052 Rule!12726) Bool)

(assert (=> b!3915816 (ruleValid!2411 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))

(declare-fun lt!1364299 () Unit!59640)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1491 (LexerInterface!6052 Rule!12726 List!41630) Unit!59640)

(assert (=> b!3915816 (= lt!1364299 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1491 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) rules!2768))))

(declare-fun lt!1364308 () Unit!59640)

(declare-fun lemmaCharactersSize!1120 (Token!12064) Unit!59640)

(assert (=> b!3915816 (= lt!1364308 (lemmaCharactersSize!1120 (_1!23513 (v!39206 lt!1364311))))))

(declare-fun b!3915817 () Bool)

(assert (=> b!3915817 (= e!2421130 e!2421139)))

(declare-fun res!1583943 () Bool)

(assert (=> b!3915817 (=> res!1583943 e!2421139)))

(assert (=> b!3915817 (= res!1583943 (not (= (_1!23513 lt!1364301) lt!1364309)))))

(declare-fun head!8278 (List!41629) Token!12064)

(assert (=> b!3915817 (= lt!1364309 (head!8278 prefixTokens!80))))

(declare-fun get!13715 (Option!8883) tuple2!40758)

(assert (=> b!3915817 (= lt!1364301 (get!13715 lt!1364311))))

(declare-fun b!3915818 () Bool)

(assert (=> b!3915818 (= e!2421112 e!2421118)))

(declare-fun res!1583957 () Bool)

(assert (=> b!3915818 (=> res!1583957 e!2421118)))

(assert (=> b!3915818 (= res!1583957 (not (= lt!1364306 lt!1364303)))))

(assert (=> b!3915818 (= (_2!23513 (v!39206 lt!1364311)) (_2!23513 lt!1364301))))

(declare-fun lt!1364316 () Unit!59640)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!515 (List!41628 List!41628 List!41628 List!41628) Unit!59640)

(assert (=> b!3915818 (= lt!1364316 (lemmaConcatSameAndSameSizesThenSameLists!515 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 (_2!23513 lt!1364301)))))

(declare-fun b!3915819 () Bool)

(declare-fun res!1583941 () Bool)

(assert (=> b!3915819 (=> res!1583941 e!2421140)))

(assert (=> b!3915819 (= res!1583941 (not (= lt!1364310 (tuple2!40761 (++!10684 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505) (_1!23514 lt!1364297)) (_2!23514 lt!1364297)))))))

(assert (=> b!3915820 (= e!2421119 (and tp!1191935 tp!1191934))))

(assert (= (and start!366974 res!1583955) b!3915799))

(assert (= (and b!3915799 res!1583947) b!3915789))

(assert (= (and b!3915789 res!1583950) b!3915791))

(assert (= (and b!3915791 res!1583945) b!3915803))

(assert (= (and b!3915803 res!1583960) b!3915815))

(assert (= (and b!3915815 res!1583953) b!3915812))

(assert (= (and b!3915812 res!1583942) b!3915794))

(assert (= (and b!3915794 res!1583944) b!3915816))

(assert (= (and b!3915816 res!1583948) b!3915785))

(assert (= (and b!3915816 (not res!1583949)) b!3915819))

(assert (= (and b!3915819 (not res!1583941)) b!3915797))

(assert (= (and b!3915797 (not res!1583946)) b!3915813))

(assert (= (and b!3915813 (not res!1583951)) b!3915808))

(assert (= (and b!3915808 (not res!1583958)) b!3915814))

(assert (= (and b!3915814 (not res!1583961)) b!3915810))

(assert (= (and b!3915810 (not res!1583954)) b!3915817))

(assert (= (and b!3915817 (not res!1583943)) b!3915805))

(assert (= (and b!3915805 (not res!1583962)) b!3915800))

(assert (= (and b!3915800 (not res!1583956)) b!3915786))

(assert (= (and b!3915786 (not res!1583952)) b!3915802))

(assert (= (and b!3915802 (not res!1583959)) b!3915818))

(assert (= (and b!3915818 (not res!1583957)) b!3915801))

(assert (= (and start!366974 (is-Cons!41504 suffixResult!91)) b!3915790))

(assert (= (and start!366974 (is-Cons!41504 suffix!1176)) b!3915807))

(assert (= b!3915795 b!3915811))

(assert (= b!3915806 b!3915795))

(assert (= (and start!366974 (is-Cons!41506 rules!2768)) b!3915806))

(assert (= b!3915804 b!3915820))

(assert (= b!3915809 b!3915804))

(assert (= b!3915787 b!3915809))

(assert (= (and start!366974 (is-Cons!41505 prefixTokens!80)) b!3915787))

(assert (= b!3915798 b!3915796))

(assert (= b!3915792 b!3915798))

(assert (= b!3915788 b!3915792))

(assert (= (and start!366974 (is-Cons!41505 suffixTokens!72)) b!3915788))

(assert (= (and start!366974 (is-Cons!41504 prefix!426)) b!3915793))

(declare-fun m!4479093 () Bool)

(assert (=> b!3915805 m!4479093))

(declare-fun m!4479095 () Bool)

(assert (=> b!3915792 m!4479095))

(declare-fun m!4479097 () Bool)

(assert (=> b!3915817 m!4479097))

(declare-fun m!4479099 () Bool)

(assert (=> b!3915817 m!4479099))

(declare-fun m!4479101 () Bool)

(assert (=> b!3915800 m!4479101))

(assert (=> b!3915800 m!4479101))

(declare-fun m!4479103 () Bool)

(assert (=> b!3915800 m!4479103))

(declare-fun m!4479105 () Bool)

(assert (=> b!3915810 m!4479105))

(declare-fun m!4479107 () Bool)

(assert (=> b!3915810 m!4479107))

(declare-fun m!4479109 () Bool)

(assert (=> b!3915810 m!4479109))

(declare-fun m!4479111 () Bool)

(assert (=> b!3915801 m!4479111))

(declare-fun m!4479113 () Bool)

(assert (=> b!3915785 m!4479113))

(declare-fun m!4479115 () Bool)

(assert (=> b!3915794 m!4479115))

(declare-fun m!4479117 () Bool)

(assert (=> b!3915809 m!4479117))

(declare-fun m!4479119 () Bool)

(assert (=> b!3915815 m!4479119))

(declare-fun m!4479121 () Bool)

(assert (=> b!3915815 m!4479121))

(declare-fun m!4479123 () Bool)

(assert (=> b!3915815 m!4479123))

(declare-fun m!4479125 () Bool)

(assert (=> b!3915808 m!4479125))

(declare-fun m!4479127 () Bool)

(assert (=> b!3915788 m!4479127))

(declare-fun m!4479129 () Bool)

(assert (=> b!3915791 m!4479129))

(declare-fun m!4479131 () Bool)

(assert (=> b!3915818 m!4479131))

(declare-fun m!4479133 () Bool)

(assert (=> b!3915813 m!4479133))

(declare-fun m!4479135 () Bool)

(assert (=> b!3915813 m!4479135))

(declare-fun m!4479137 () Bool)

(assert (=> b!3915798 m!4479137))

(declare-fun m!4479139 () Bool)

(assert (=> b!3915798 m!4479139))

(declare-fun m!4479141 () Bool)

(assert (=> b!3915802 m!4479141))

(declare-fun m!4479143 () Bool)

(assert (=> b!3915804 m!4479143))

(declare-fun m!4479145 () Bool)

(assert (=> b!3915804 m!4479145))

(declare-fun m!4479147 () Bool)

(assert (=> b!3915819 m!4479147))

(declare-fun m!4479149 () Bool)

(assert (=> b!3915789 m!4479149))

(declare-fun m!4479151 () Bool)

(assert (=> b!3915812 m!4479151))

(declare-fun m!4479153 () Bool)

(assert (=> b!3915787 m!4479153))

(declare-fun m!4479155 () Bool)

(assert (=> b!3915816 m!4479155))

(declare-fun m!4479157 () Bool)

(assert (=> b!3915816 m!4479157))

(declare-fun m!4479159 () Bool)

(assert (=> b!3915816 m!4479159))

(declare-fun m!4479161 () Bool)

(assert (=> b!3915816 m!4479161))

(declare-fun m!4479163 () Bool)

(assert (=> b!3915816 m!4479163))

(declare-fun m!4479165 () Bool)

(assert (=> b!3915816 m!4479165))

(declare-fun m!4479167 () Bool)

(assert (=> b!3915816 m!4479167))

(declare-fun m!4479169 () Bool)

(assert (=> b!3915816 m!4479169))

(declare-fun m!4479171 () Bool)

(assert (=> b!3915816 m!4479171))

(declare-fun m!4479173 () Bool)

(assert (=> b!3915816 m!4479173))

(declare-fun m!4479175 () Bool)

(assert (=> b!3915816 m!4479175))

(declare-fun m!4479177 () Bool)

(assert (=> b!3915816 m!4479177))

(assert (=> b!3915816 m!4479155))

(declare-fun m!4479179 () Bool)

(assert (=> b!3915816 m!4479179))

(assert (=> b!3915816 m!4479175))

(declare-fun m!4479181 () Bool)

(assert (=> b!3915816 m!4479181))

(declare-fun m!4479183 () Bool)

(assert (=> b!3915814 m!4479183))

(declare-fun m!4479185 () Bool)

(assert (=> b!3915803 m!4479185))

(declare-fun m!4479187 () Bool)

(assert (=> b!3915799 m!4479187))

(declare-fun m!4479189 () Bool)

(assert (=> b!3915795 m!4479189))

(declare-fun m!4479191 () Bool)

(assert (=> b!3915795 m!4479191))

(push 1)

(assert (not b!3915795))

(assert (not b!3915798))

(assert (not b!3915790))

(assert tp_is_empty!19707)

(assert (not b!3915815))

(assert (not b!3915799))

(assert (not b!3915812))

(assert (not b!3915810))

(assert (not b!3915809))

(assert (not b!3915803))

(assert (not b_next!107049))

(assert (not b!3915806))

(assert (not b!3915807))

(assert b_and!298131)

(assert (not b!3915804))

(assert (not b!3915785))

(assert (not b!3915814))

(assert (not b!3915800))

(assert (not b!3915794))

(assert (not b!3915819))

(assert (not b!3915788))

(assert b_and!298129)

(assert b_and!298137)

(assert b_and!298127)

(assert b_and!298135)

(assert (not b!3915787))

(assert (not b!3915791))

(assert (not b!3915818))

(assert (not b!3915816))

(assert b_and!298133)

(assert (not b_next!107051))

(assert (not b!3915789))

(assert (not b_next!107045))

(assert (not b!3915813))

(assert (not b!3915792))

(assert (not b!3915801))

(assert (not b!3915802))

(assert (not b_next!107041))

(assert (not b!3915793))

(assert (not b!3915805))

(assert (not b!3915808))

(assert (not b_next!107043))

(assert (not b_next!107047))

(assert (not b!3915817))

(check-sat)

(pop 1)

(push 1)

(assert b_and!298131)

(assert (not b_next!107045))

(assert (not b_next!107041))

(assert (not b_next!107043))

(assert (not b_next!107047))

(assert (not b_next!107049))

(assert b_and!298129)

(assert b_and!298137)

(assert b_and!298127)

(assert b_and!298135)

(assert b_and!298133)

(assert (not b_next!107051))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1161503 () Bool)

(assert (=> d!1161503 (= (head!8278 prefixTokens!80) (h!46925 prefixTokens!80))))

(assert (=> b!3915817 d!1161503))

(declare-fun d!1161505 () Bool)

(assert (=> d!1161505 (= (get!13715 lt!1364311) (v!39206 lt!1364311))))

(assert (=> b!3915817 d!1161505))

(declare-fun d!1161507 () Bool)

(assert (=> d!1161507 (= (inv!55693 (tag!7323 (h!46926 rules!2768))) (= (mod (str.len (value!204830 (tag!7323 (h!46926 rules!2768)))) 2) 0))))

(assert (=> b!3915795 d!1161507))

(declare-fun d!1161509 () Bool)

(declare-fun res!1584038 () Bool)

(declare-fun e!2421241 () Bool)

(assert (=> d!1161509 (=> (not res!1584038) (not e!2421241))))

(declare-fun semiInverseModEq!2778 (Int Int) Bool)

(assert (=> d!1161509 (= res!1584038 (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (h!46926 rules!2768)))))))

(assert (=> d!1161509 (= (inv!55697 (transformation!6463 (h!46926 rules!2768))) e!2421241)))

(declare-fun b!3915931 () Bool)

(declare-fun equivClasses!2677 (Int Int) Bool)

(assert (=> b!3915931 (= e!2421241 (equivClasses!2677 (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (h!46926 rules!2768)))))))

(assert (= (and d!1161509 res!1584038) b!3915931))

(declare-fun m!4479293 () Bool)

(assert (=> d!1161509 m!4479293))

(declare-fun m!4479295 () Bool)

(assert (=> b!3915931 m!4479295))

(assert (=> b!3915795 d!1161509))

(declare-fun d!1161511 () Bool)

(declare-fun res!1584043 () Bool)

(declare-fun e!2421244 () Bool)

(assert (=> d!1161511 (=> (not res!1584043) (not e!2421244))))

(declare-fun validRegex!5177 (Regex!11368) Bool)

(assert (=> d!1161511 (= res!1584043 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(assert (=> d!1161511 (= (ruleValid!2411 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) e!2421244)))

(declare-fun b!3915936 () Bool)

(declare-fun res!1584044 () Bool)

(assert (=> b!3915936 (=> (not res!1584044) (not e!2421244))))

(declare-fun nullable!3978 (Regex!11368) Bool)

(assert (=> b!3915936 (= res!1584044 (not (nullable!3978 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun b!3915937 () Bool)

(assert (=> b!3915937 (= e!2421244 (not (= (tag!7323 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (String!47186 ""))))))

(assert (= (and d!1161511 res!1584043) b!3915936))

(assert (= (and b!3915936 res!1584044) b!3915937))

(declare-fun m!4479297 () Bool)

(assert (=> d!1161511 m!4479297))

(declare-fun m!4479299 () Bool)

(assert (=> b!3915936 m!4479299))

(assert (=> b!3915816 d!1161511))

(declare-fun d!1161513 () Bool)

(assert (=> d!1161513 (isPrefix!3558 lt!1364317 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))

(declare-fun lt!1364394 () Unit!59640)

(declare-fun choose!23193 (List!41628 List!41628) Unit!59640)

(assert (=> d!1161513 (= lt!1364394 (choose!23193 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161513 (= (lemmaConcatTwoListThenFirstIsPrefix!2421 lt!1364317 (_2!23513 (v!39206 lt!1364311))) lt!1364394)))

(declare-fun bs!585701 () Bool)

(assert (= bs!585701 d!1161513))

(assert (=> bs!585701 m!4479159))

(assert (=> bs!585701 m!4479159))

(declare-fun m!4479301 () Bool)

(assert (=> bs!585701 m!4479301))

(declare-fun m!4479303 () Bool)

(assert (=> bs!585701 m!4479303))

(assert (=> b!3915816 d!1161513))

(declare-fun d!1161515 () Bool)

(declare-fun fromListB!2187 (List!41628) BalanceConc!24942)

(assert (=> d!1161515 (= (seqFromList!4730 lt!1364317) (fromListB!2187 lt!1364317))))

(declare-fun bs!585702 () Bool)

(assert (= bs!585702 d!1161515))

(declare-fun m!4479305 () Bool)

(assert (=> bs!585702 m!4479305))

(assert (=> b!3915816 d!1161515))

(declare-fun b!3915948 () Bool)

(declare-fun e!2421252 () Bool)

(declare-fun tail!5996 (List!41628) List!41628)

(assert (=> b!3915948 (= e!2421252 (isPrefix!3558 (tail!5996 lt!1364317) (tail!5996 lt!1364302)))))

(declare-fun d!1161517 () Bool)

(declare-fun e!2421253 () Bool)

(assert (=> d!1161517 e!2421253))

(declare-fun res!1584054 () Bool)

(assert (=> d!1161517 (=> res!1584054 e!2421253)))

(declare-fun lt!1364397 () Bool)

(assert (=> d!1161517 (= res!1584054 (not lt!1364397))))

(declare-fun e!2421251 () Bool)

(assert (=> d!1161517 (= lt!1364397 e!2421251)))

(declare-fun res!1584053 () Bool)

(assert (=> d!1161517 (=> res!1584053 e!2421251)))

(assert (=> d!1161517 (= res!1584053 (is-Nil!41504 lt!1364317))))

(assert (=> d!1161517 (= (isPrefix!3558 lt!1364317 lt!1364302) lt!1364397)))

(declare-fun b!3915946 () Bool)

(assert (=> b!3915946 (= e!2421251 e!2421252)))

(declare-fun res!1584056 () Bool)

(assert (=> b!3915946 (=> (not res!1584056) (not e!2421252))))

(assert (=> b!3915946 (= res!1584056 (not (is-Nil!41504 lt!1364302)))))

(declare-fun b!3915949 () Bool)

(assert (=> b!3915949 (= e!2421253 (>= (size!31162 lt!1364302) (size!31162 lt!1364317)))))

(declare-fun b!3915947 () Bool)

(declare-fun res!1584055 () Bool)

(assert (=> b!3915947 (=> (not res!1584055) (not e!2421252))))

(declare-fun head!8280 (List!41628) C!22922)

(assert (=> b!3915947 (= res!1584055 (= (head!8280 lt!1364317) (head!8280 lt!1364302)))))

(assert (= (and d!1161517 (not res!1584053)) b!3915946))

(assert (= (and b!3915946 res!1584056) b!3915947))

(assert (= (and b!3915947 res!1584055) b!3915948))

(assert (= (and d!1161517 (not res!1584054)) b!3915949))

(declare-fun m!4479307 () Bool)

(assert (=> b!3915948 m!4479307))

(declare-fun m!4479309 () Bool)

(assert (=> b!3915948 m!4479309))

(assert (=> b!3915948 m!4479307))

(assert (=> b!3915948 m!4479309))

(declare-fun m!4479311 () Bool)

(assert (=> b!3915948 m!4479311))

(declare-fun m!4479313 () Bool)

(assert (=> b!3915949 m!4479313))

(assert (=> b!3915949 m!4479171))

(declare-fun m!4479315 () Bool)

(assert (=> b!3915947 m!4479315))

(declare-fun m!4479317 () Bool)

(assert (=> b!3915947 m!4479317))

(assert (=> b!3915816 d!1161517))

(declare-fun d!1161519 () Bool)

(assert (=> d!1161519 (= (_2!23513 (v!39206 lt!1364311)) lt!1364314)))

(declare-fun lt!1364400 () Unit!59640)

(declare-fun choose!23194 (List!41628 List!41628 List!41628 List!41628 List!41628) Unit!59640)

(assert (=> d!1161519 (= lt!1364400 (choose!23194 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 lt!1364314 lt!1364304))))

(assert (=> d!1161519 (isPrefix!3558 lt!1364317 lt!1364304)))

(assert (=> d!1161519 (= (lemmaSamePrefixThenSameSuffix!1779 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 lt!1364314 lt!1364304) lt!1364400)))

(declare-fun bs!585703 () Bool)

(assert (= bs!585703 d!1161519))

(declare-fun m!4479319 () Bool)

(assert (=> bs!585703 m!4479319))

(declare-fun m!4479321 () Bool)

(assert (=> bs!585703 m!4479321))

(assert (=> b!3915816 d!1161519))

(declare-fun d!1161521 () Bool)

(assert (=> d!1161521 (= (size!31161 (_1!23513 (v!39206 lt!1364311))) (size!31162 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311)))))))

(declare-fun Unit!59645 () Unit!59640)

(assert (=> d!1161521 (= (lemmaCharactersSize!1120 (_1!23513 (v!39206 lt!1364311))) Unit!59645)))

(declare-fun bs!585704 () Bool)

(assert (= bs!585704 d!1161521))

(assert (=> bs!585704 m!4479113))

(assert (=> b!3915816 d!1161521))

(declare-fun d!1161523 () Bool)

(declare-fun list!15432 (Conc!12674) List!41628)

(assert (=> d!1161523 (= (list!15430 (charsOf!4287 (_1!23513 (v!39206 lt!1364311)))) (list!15432 (c!680556 (charsOf!4287 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun bs!585705 () Bool)

(assert (= bs!585705 d!1161523))

(declare-fun m!4479323 () Bool)

(assert (=> bs!585705 m!4479323))

(assert (=> b!3915816 d!1161523))

(declare-fun d!1161525 () Bool)

(assert (=> d!1161525 (ruleValid!2411 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))

(declare-fun lt!1364403 () Unit!59640)

(declare-fun choose!23195 (LexerInterface!6052 Rule!12726 List!41630) Unit!59640)

(assert (=> d!1161525 (= lt!1364403 (choose!23195 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) rules!2768))))

(declare-fun contains!8340 (List!41630 Rule!12726) Bool)

(assert (=> d!1161525 (contains!8340 rules!2768 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161525 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1491 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) rules!2768) lt!1364403)))

(declare-fun bs!585706 () Bool)

(assert (= bs!585706 d!1161525))

(assert (=> bs!585706 m!4479173))

(declare-fun m!4479325 () Bool)

(assert (=> bs!585706 m!4479325))

(declare-fun m!4479327 () Bool)

(assert (=> bs!585706 m!4479327))

(assert (=> b!3915816 d!1161525))

(declare-fun b!3915987 () Bool)

(declare-fun e!2421277 () Bool)

(declare-fun e!2421275 () Bool)

(assert (=> b!3915987 (= e!2421277 e!2421275)))

(declare-fun res!1584067 () Bool)

(declare-fun lt!1364413 () tuple2!40760)

(assert (=> b!3915987 (= res!1584067 (< (size!31162 (_2!23514 lt!1364413)) (size!31162 (_2!23513 (v!39206 lt!1364311)))))))

(assert (=> b!3915987 (=> (not res!1584067) (not e!2421275))))

(declare-fun b!3915988 () Bool)

(assert (=> b!3915988 (= e!2421277 (= (_2!23514 lt!1364413) (_2!23513 (v!39206 lt!1364311))))))

(declare-fun b!3915989 () Bool)

(declare-fun e!2421276 () tuple2!40760)

(assert (=> b!3915989 (= e!2421276 (tuple2!40761 Nil!41505 (_2!23513 (v!39206 lt!1364311))))))

(declare-fun b!3915990 () Bool)

(assert (=> b!3915990 (= e!2421275 (not (isEmpty!24699 (_1!23514 lt!1364413))))))

(declare-fun b!3915991 () Bool)

(declare-fun lt!1364414 () Option!8883)

(declare-fun lt!1364415 () tuple2!40760)

(assert (=> b!3915991 (= e!2421276 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364414)) (_1!23514 lt!1364415)) (_2!23514 lt!1364415)))))

(assert (=> b!3915991 (= lt!1364415 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364414))))))

(declare-fun d!1161529 () Bool)

(assert (=> d!1161529 e!2421277))

(declare-fun c!680571 () Bool)

(declare-fun size!31165 (List!41629) Int)

(assert (=> d!1161529 (= c!680571 (> (size!31165 (_1!23514 lt!1364413)) 0))))

(assert (=> d!1161529 (= lt!1364413 e!2421276)))

(declare-fun c!680572 () Bool)

(assert (=> d!1161529 (= c!680572 (is-Some!8882 lt!1364414))))

(assert (=> d!1161529 (= lt!1364414 (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161529 (= (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364311))) lt!1364413)))

(assert (= (and d!1161529 c!680572) b!3915991))

(assert (= (and d!1161529 (not c!680572)) b!3915989))

(assert (= (and d!1161529 c!680571) b!3915987))

(assert (= (and d!1161529 (not c!680571)) b!3915988))

(assert (= (and b!3915987 res!1584067) b!3915990))

(declare-fun m!4479343 () Bool)

(assert (=> b!3915987 m!4479343))

(assert (=> b!3915987 m!4479135))

(declare-fun m!4479345 () Bool)

(assert (=> b!3915990 m!4479345))

(declare-fun m!4479347 () Bool)

(assert (=> b!3915991 m!4479347))

(declare-fun m!4479349 () Bool)

(assert (=> d!1161529 m!4479349))

(declare-fun m!4479351 () Bool)

(assert (=> d!1161529 m!4479351))

(assert (=> b!3915816 d!1161529))

(declare-fun b!3916007 () Bool)

(declare-fun res!1584074 () Bool)

(declare-fun e!2421286 () Bool)

(assert (=> b!3916007 (=> (not res!1584074) (not e!2421286))))

(declare-fun lt!1364418 () List!41628)

(assert (=> b!3916007 (= res!1584074 (= (size!31162 lt!1364418) (+ (size!31162 lt!1364317) (size!31162 (_2!23513 (v!39206 lt!1364311))))))))

(declare-fun d!1161535 () Bool)

(assert (=> d!1161535 e!2421286))

(declare-fun res!1584073 () Bool)

(assert (=> d!1161535 (=> (not res!1584073) (not e!2421286))))

(declare-fun content!6239 (List!41628) (Set C!22922))

(assert (=> d!1161535 (= res!1584073 (= (content!6239 lt!1364418) (set.union (content!6239 lt!1364317) (content!6239 (_2!23513 (v!39206 lt!1364311))))))))

(declare-fun e!2421285 () List!41628)

(assert (=> d!1161535 (= lt!1364418 e!2421285)))

(declare-fun c!680577 () Bool)

(assert (=> d!1161535 (= c!680577 (is-Nil!41504 lt!1364317))))

(assert (=> d!1161535 (= (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))) lt!1364418)))

(declare-fun b!3916005 () Bool)

(assert (=> b!3916005 (= e!2421285 (_2!23513 (v!39206 lt!1364311)))))

(declare-fun b!3916006 () Bool)

(assert (=> b!3916006 (= e!2421285 (Cons!41504 (h!46924 lt!1364317) (++!10683 (t!323729 lt!1364317) (_2!23513 (v!39206 lt!1364311)))))))

(declare-fun b!3916008 () Bool)

(assert (=> b!3916008 (= e!2421286 (or (not (= (_2!23513 (v!39206 lt!1364311)) Nil!41504)) (= lt!1364418 lt!1364317)))))

(assert (= (and d!1161535 c!680577) b!3916005))

(assert (= (and d!1161535 (not c!680577)) b!3916006))

(assert (= (and d!1161535 res!1584073) b!3916007))

(assert (= (and b!3916007 res!1584074) b!3916008))

(declare-fun m!4479359 () Bool)

(assert (=> b!3916007 m!4479359))

(assert (=> b!3916007 m!4479171))

(assert (=> b!3916007 m!4479135))

(declare-fun m!4479361 () Bool)

(assert (=> d!1161535 m!4479361))

(declare-fun m!4479363 () Bool)

(assert (=> d!1161535 m!4479363))

(declare-fun m!4479365 () Bool)

(assert (=> d!1161535 m!4479365))

(declare-fun m!4479367 () Bool)

(assert (=> b!3916006 m!4479367))

(assert (=> b!3915816 d!1161535))

(declare-fun d!1161539 () Bool)

(declare-fun lt!1364423 () List!41628)

(assert (=> d!1161539 (= (++!10683 lt!1364317 lt!1364423) lt!1364304)))

(declare-fun e!2421293 () List!41628)

(assert (=> d!1161539 (= lt!1364423 e!2421293)))

(declare-fun c!680582 () Bool)

(assert (=> d!1161539 (= c!680582 (is-Cons!41504 lt!1364317))))

(assert (=> d!1161539 (>= (size!31162 lt!1364304) (size!31162 lt!1364317))))

(assert (=> d!1161539 (= (getSuffix!2013 lt!1364304 lt!1364317) lt!1364423)))

(declare-fun b!3916021 () Bool)

(assert (=> b!3916021 (= e!2421293 (getSuffix!2013 (tail!5996 lt!1364304) (t!323729 lt!1364317)))))

(declare-fun b!3916022 () Bool)

(assert (=> b!3916022 (= e!2421293 lt!1364304)))

(assert (= (and d!1161539 c!680582) b!3916021))

(assert (= (and d!1161539 (not c!680582)) b!3916022))

(declare-fun m!4479369 () Bool)

(assert (=> d!1161539 m!4479369))

(assert (=> d!1161539 m!4479125))

(assert (=> d!1161539 m!4479171))

(declare-fun m!4479371 () Bool)

(assert (=> b!3916021 m!4479371))

(assert (=> b!3916021 m!4479371))

(declare-fun m!4479373 () Bool)

(assert (=> b!3916021 m!4479373))

(assert (=> b!3915816 d!1161539))

(declare-fun d!1161541 () Bool)

(declare-fun dynLambda!17827 (Int BalanceConc!24942) TokenValue!6693)

(assert (=> d!1161541 (= (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 lt!1364317)) (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317)))))

(declare-fun b_lambda!114649 () Bool)

(assert (=> (not b_lambda!114649) (not d!1161541)))

(declare-fun tb!233387 () Bool)

(declare-fun t!323743 () Bool)

(assert (=> (and b!3915811 (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323743) tb!233387))

(declare-fun result!282866 () Bool)

(assert (=> tb!233387 (= result!282866 (inv!21 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317))))))

(declare-fun m!4479381 () Bool)

(assert (=> tb!233387 m!4479381))

(assert (=> d!1161541 t!323743))

(declare-fun b_and!298157 () Bool)

(assert (= b_and!298127 (and (=> t!323743 result!282866) b_and!298157)))

(declare-fun tb!233389 () Bool)

(declare-fun t!323745 () Bool)

(assert (=> (and b!3915820 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323745) tb!233389))

(declare-fun result!282870 () Bool)

(assert (= result!282870 result!282866))

(assert (=> d!1161541 t!323745))

(declare-fun b_and!298159 () Bool)

(assert (= b_and!298131 (and (=> t!323745 result!282870) b_and!298159)))

(declare-fun t!323747 () Bool)

(declare-fun tb!233391 () Bool)

(assert (=> (and b!3915796 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323747) tb!233391))

(declare-fun result!282872 () Bool)

(assert (= result!282872 result!282866))

(assert (=> d!1161541 t!323747))

(declare-fun b_and!298161 () Bool)

(assert (= b_and!298135 (and (=> t!323747 result!282872) b_and!298161)))

(assert (=> d!1161541 m!4479175))

(declare-fun m!4479387 () Bool)

(assert (=> d!1161541 m!4479387))

(assert (=> b!3915816 d!1161541))

(declare-fun d!1161545 () Bool)

(declare-fun lt!1364427 () BalanceConc!24942)

(assert (=> d!1161545 (= (list!15430 lt!1364427) (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311))))))

(declare-fun dynLambda!17828 (Int TokenValue!6693) BalanceConc!24942)

(assert (=> d!1161545 (= lt!1364427 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161545 (= (charsOf!4287 (_1!23513 (v!39206 lt!1364311))) lt!1364427)))

(declare-fun b_lambda!114651 () Bool)

(assert (=> (not b_lambda!114651) (not d!1161545)))

(declare-fun t!323749 () Bool)

(declare-fun tb!233393 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323749) tb!233393))

(declare-fun b!3916033 () Bool)

(declare-fun e!2421301 () Bool)

(declare-fun tp!1192002 () Bool)

(declare-fun inv!55700 (Conc!12674) Bool)

(assert (=> b!3916033 (= e!2421301 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))) tp!1192002))))

(declare-fun result!282874 () Bool)

(declare-fun inv!55701 (BalanceConc!24942) Bool)

(assert (=> tb!233393 (= result!282874 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))) e!2421301))))

(assert (= tb!233393 b!3916033))

(declare-fun m!4479389 () Bool)

(assert (=> b!3916033 m!4479389))

(declare-fun m!4479391 () Bool)

(assert (=> tb!233393 m!4479391))

(assert (=> d!1161545 t!323749))

(declare-fun b_and!298163 () Bool)

(assert (= b_and!298129 (and (=> t!323749 result!282874) b_and!298163)))

(declare-fun tb!233395 () Bool)

(declare-fun t!323751 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323751) tb!233395))

(declare-fun result!282878 () Bool)

(assert (= result!282878 result!282874))

(assert (=> d!1161545 t!323751))

(declare-fun b_and!298165 () Bool)

(assert (= b_and!298133 (and (=> t!323751 result!282878) b_and!298165)))

(declare-fun tb!233397 () Bool)

(declare-fun t!323753 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323753) tb!233397))

(declare-fun result!282880 () Bool)

(assert (= result!282880 result!282874))

(assert (=> d!1161545 t!323753))

(declare-fun b_and!298167 () Bool)

(assert (= b_and!298137 (and (=> t!323753 result!282880) b_and!298167)))

(declare-fun m!4479393 () Bool)

(assert (=> d!1161545 m!4479393))

(declare-fun m!4479395 () Bool)

(assert (=> d!1161545 m!4479395))

(assert (=> b!3915816 d!1161545))

(declare-fun d!1161549 () Bool)

(declare-fun lt!1364430 () Int)

(assert (=> d!1161549 (>= lt!1364430 0)))

(declare-fun e!2421306 () Int)

(assert (=> d!1161549 (= lt!1364430 e!2421306)))

(declare-fun c!680586 () Bool)

(assert (=> d!1161549 (= c!680586 (is-Nil!41504 lt!1364317))))

(assert (=> d!1161549 (= (size!31162 lt!1364317) lt!1364430)))

(declare-fun b!3916040 () Bool)

(assert (=> b!3916040 (= e!2421306 0)))

(declare-fun b!3916041 () Bool)

(assert (=> b!3916041 (= e!2421306 (+ 1 (size!31162 (t!323729 lt!1364317))))))

(assert (= (and d!1161549 c!680586) b!3916040))

(assert (= (and d!1161549 (not c!680586)) b!3916041))

(declare-fun m!4479397 () Bool)

(assert (=> b!3916041 m!4479397))

(assert (=> b!3915816 d!1161549))

(declare-fun d!1161551 () Bool)

(assert (=> d!1161551 (and (= lt!1364317 lt!1364317) (= (_2!23513 (v!39206 lt!1364311)) (_2!23513 lt!1364301)))))

(declare-fun lt!1364433 () Unit!59640)

(declare-fun choose!23196 (List!41628 List!41628 List!41628 List!41628) Unit!59640)

(assert (=> d!1161551 (= lt!1364433 (choose!23196 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 (_2!23513 lt!1364301)))))

(assert (=> d!1161551 (= (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))) (++!10683 lt!1364317 (_2!23513 lt!1364301)))))

(assert (=> d!1161551 (= (lemmaConcatSameAndSameSizesThenSameLists!515 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 (_2!23513 lt!1364301)) lt!1364433)))

(declare-fun bs!585707 () Bool)

(assert (= bs!585707 d!1161551))

(declare-fun m!4479403 () Bool)

(assert (=> bs!585707 m!4479403))

(assert (=> bs!585707 m!4479159))

(assert (=> bs!585707 m!4479141))

(assert (=> b!3915818 d!1161551))

(declare-fun d!1161555 () Bool)

(declare-fun lt!1364434 () Int)

(assert (=> d!1161555 (>= lt!1364434 0)))

(declare-fun e!2421308 () Int)

(assert (=> d!1161555 (= lt!1364434 e!2421308)))

(declare-fun c!680587 () Bool)

(assert (=> d!1161555 (= c!680587 (is-Nil!41504 prefix!426))))

(assert (=> d!1161555 (= (size!31162 prefix!426) lt!1364434)))

(declare-fun b!3916043 () Bool)

(assert (=> b!3916043 (= e!2421308 0)))

(declare-fun b!3916044 () Bool)

(assert (=> b!3916044 (= e!2421308 (+ 1 (size!31162 (t!323729 prefix!426))))))

(assert (= (and d!1161555 c!680587) b!3916043))

(assert (= (and d!1161555 (not c!680587)) b!3916044))

(declare-fun m!4479405 () Bool)

(assert (=> b!3916044 m!4479405))

(assert (=> b!3915814 d!1161555))

(declare-fun b!3916055 () Bool)

(declare-fun res!1584086 () Bool)

(declare-fun e!2421315 () Bool)

(assert (=> b!3916055 (=> res!1584086 e!2421315)))

(assert (=> b!3916055 (= res!1584086 (not (is-IntegerValue!20081 (value!204831 (h!46925 suffixTokens!72)))))))

(declare-fun e!2421316 () Bool)

(assert (=> b!3916055 (= e!2421316 e!2421315)))

(declare-fun d!1161557 () Bool)

(declare-fun c!680592 () Bool)

(assert (=> d!1161557 (= c!680592 (is-IntegerValue!20079 (value!204831 (h!46925 suffixTokens!72))))))

(declare-fun e!2421317 () Bool)

(assert (=> d!1161557 (= (inv!21 (value!204831 (h!46925 suffixTokens!72))) e!2421317)))

(declare-fun b!3916056 () Bool)

(declare-fun inv!16 (TokenValue!6693) Bool)

(assert (=> b!3916056 (= e!2421317 (inv!16 (value!204831 (h!46925 suffixTokens!72))))))

(declare-fun b!3916057 () Bool)

(declare-fun inv!17 (TokenValue!6693) Bool)

(assert (=> b!3916057 (= e!2421316 (inv!17 (value!204831 (h!46925 suffixTokens!72))))))

(declare-fun b!3916058 () Bool)

(declare-fun inv!15 (TokenValue!6693) Bool)

(assert (=> b!3916058 (= e!2421315 (inv!15 (value!204831 (h!46925 suffixTokens!72))))))

(declare-fun b!3916059 () Bool)

(assert (=> b!3916059 (= e!2421317 e!2421316)))

(declare-fun c!680593 () Bool)

(assert (=> b!3916059 (= c!680593 (is-IntegerValue!20080 (value!204831 (h!46925 suffixTokens!72))))))

(assert (= (and d!1161557 c!680592) b!3916056))

(assert (= (and d!1161557 (not c!680592)) b!3916059))

(assert (= (and b!3916059 c!680593) b!3916057))

(assert (= (and b!3916059 (not c!680593)) b!3916055))

(assert (= (and b!3916055 (not res!1584086)) b!3916058))

(declare-fun m!4479407 () Bool)

(assert (=> b!3916056 m!4479407))

(declare-fun m!4479409 () Bool)

(assert (=> b!3916057 m!4479409))

(declare-fun m!4479411 () Bool)

(assert (=> b!3916058 m!4479411))

(assert (=> b!3915792 d!1161557))

(declare-fun b!3916078 () Bool)

(declare-fun res!1584102 () Bool)

(declare-fun e!2421326 () Bool)

(assert (=> b!3916078 (=> (not res!1584102) (not e!2421326))))

(declare-fun lt!1364448 () Option!8883)

(assert (=> b!3916078 (= res!1584102 (< (size!31162 (_2!23513 (get!13715 lt!1364448))) (size!31162 lt!1364304)))))

(declare-fun b!3916079 () Bool)

(declare-fun res!1584104 () Bool)

(assert (=> b!3916079 (=> (not res!1584104) (not e!2421326))))

(assert (=> b!3916079 (= res!1584104 (= (value!204831 (_1!23513 (get!13715 lt!1364448))) (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448)))))))))

(declare-fun b!3916080 () Bool)

(declare-fun e!2421324 () Option!8883)

(declare-fun lt!1364446 () Option!8883)

(declare-fun lt!1364447 () Option!8883)

(assert (=> b!3916080 (= e!2421324 (ite (and (is-None!8882 lt!1364446) (is-None!8882 lt!1364447)) None!8882 (ite (is-None!8882 lt!1364447) lt!1364446 (ite (is-None!8882 lt!1364446) lt!1364447 (ite (>= (size!31161 (_1!23513 (v!39206 lt!1364446))) (size!31161 (_1!23513 (v!39206 lt!1364447)))) lt!1364446 lt!1364447)))))))

(declare-fun call!284439 () Option!8883)

(assert (=> b!3916080 (= lt!1364446 call!284439)))

(assert (=> b!3916080 (= lt!1364447 (maxPrefix!3356 thiss!20629 (t!323731 rules!2768) lt!1364304))))

(declare-fun b!3916081 () Bool)

(declare-fun res!1584106 () Bool)

(assert (=> b!3916081 (=> (not res!1584106) (not e!2421326))))

(assert (=> b!3916081 (= res!1584106 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))))))

(declare-fun b!3916082 () Bool)

(declare-fun res!1584105 () Bool)

(assert (=> b!3916082 (=> (not res!1584105) (not e!2421326))))

(assert (=> b!3916082 (= res!1584105 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))) (_2!23513 (get!13715 lt!1364448))) lt!1364304))))

(declare-fun b!3916083 () Bool)

(assert (=> b!3916083 (= e!2421324 call!284439)))

(declare-fun bm!284434 () Bool)

(assert (=> bm!284434 (= call!284439 (maxPrefixOneRule!2426 thiss!20629 (h!46926 rules!2768) lt!1364304))))

(declare-fun b!3916085 () Bool)

(declare-fun e!2421325 () Bool)

(assert (=> b!3916085 (= e!2421325 e!2421326)))

(declare-fun res!1584101 () Bool)

(assert (=> b!3916085 (=> (not res!1584101) (not e!2421326))))

(declare-fun isDefined!6926 (Option!8883) Bool)

(assert (=> b!3916085 (= res!1584101 (isDefined!6926 lt!1364448))))

(declare-fun b!3916086 () Bool)

(assert (=> b!3916086 (= e!2421326 (contains!8340 rules!2768 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))))

(declare-fun b!3916084 () Bool)

(declare-fun res!1584107 () Bool)

(assert (=> b!3916084 (=> (not res!1584107) (not e!2421326))))

(assert (=> b!3916084 (= res!1584107 (= (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))) (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448)))))))

(declare-fun d!1161559 () Bool)

(assert (=> d!1161559 e!2421325))

(declare-fun res!1584103 () Bool)

(assert (=> d!1161559 (=> res!1584103 e!2421325)))

(declare-fun isEmpty!24705 (Option!8883) Bool)

(assert (=> d!1161559 (= res!1584103 (isEmpty!24705 lt!1364448))))

(assert (=> d!1161559 (= lt!1364448 e!2421324)))

(declare-fun c!680596 () Bool)

(assert (=> d!1161559 (= c!680596 (and (is-Cons!41506 rules!2768) (is-Nil!41506 (t!323731 rules!2768))))))

(declare-fun lt!1364449 () Unit!59640)

(declare-fun lt!1364445 () Unit!59640)

(assert (=> d!1161559 (= lt!1364449 lt!1364445)))

(assert (=> d!1161559 (isPrefix!3558 lt!1364304 lt!1364304)))

(declare-fun lemmaIsPrefixRefl!2257 (List!41628 List!41628) Unit!59640)

(assert (=> d!1161559 (= lt!1364445 (lemmaIsPrefixRefl!2257 lt!1364304 lt!1364304))))

(declare-fun rulesValidInductive!2327 (LexerInterface!6052 List!41630) Bool)

(assert (=> d!1161559 (rulesValidInductive!2327 thiss!20629 rules!2768)))

(assert (=> d!1161559 (= (maxPrefix!3356 thiss!20629 rules!2768 lt!1364304) lt!1364448)))

(assert (= (and d!1161559 c!680596) b!3916083))

(assert (= (and d!1161559 (not c!680596)) b!3916080))

(assert (= (or b!3916083 b!3916080) bm!284434))

(assert (= (and d!1161559 (not res!1584103)) b!3916085))

(assert (= (and b!3916085 res!1584101) b!3916084))

(assert (= (and b!3916084 res!1584107) b!3916078))

(assert (= (and b!3916078 res!1584102) b!3916082))

(assert (= (and b!3916082 res!1584105) b!3916079))

(assert (= (and b!3916079 res!1584104) b!3916081))

(assert (= (and b!3916081 res!1584106) b!3916086))

(declare-fun m!4479413 () Bool)

(assert (=> b!3916078 m!4479413))

(declare-fun m!4479415 () Bool)

(assert (=> b!3916078 m!4479415))

(assert (=> b!3916078 m!4479125))

(assert (=> b!3916081 m!4479413))

(declare-fun m!4479417 () Bool)

(assert (=> b!3916081 m!4479417))

(assert (=> b!3916081 m!4479417))

(declare-fun m!4479419 () Bool)

(assert (=> b!3916081 m!4479419))

(assert (=> b!3916081 m!4479419))

(declare-fun m!4479421 () Bool)

(assert (=> b!3916081 m!4479421))

(assert (=> b!3916082 m!4479413))

(assert (=> b!3916082 m!4479417))

(assert (=> b!3916082 m!4479417))

(assert (=> b!3916082 m!4479419))

(assert (=> b!3916082 m!4479419))

(declare-fun m!4479423 () Bool)

(assert (=> b!3916082 m!4479423))

(declare-fun m!4479425 () Bool)

(assert (=> b!3916085 m!4479425))

(assert (=> b!3916079 m!4479413))

(declare-fun m!4479427 () Bool)

(assert (=> b!3916079 m!4479427))

(assert (=> b!3916079 m!4479427))

(declare-fun m!4479429 () Bool)

(assert (=> b!3916079 m!4479429))

(declare-fun m!4479431 () Bool)

(assert (=> b!3916080 m!4479431))

(declare-fun m!4479433 () Bool)

(assert (=> bm!284434 m!4479433))

(declare-fun m!4479435 () Bool)

(assert (=> d!1161559 m!4479435))

(declare-fun m!4479437 () Bool)

(assert (=> d!1161559 m!4479437))

(declare-fun m!4479439 () Bool)

(assert (=> d!1161559 m!4479439))

(declare-fun m!4479441 () Bool)

(assert (=> d!1161559 m!4479441))

(assert (=> b!3916084 m!4479413))

(assert (=> b!3916084 m!4479417))

(assert (=> b!3916084 m!4479417))

(assert (=> b!3916084 m!4479419))

(assert (=> b!3916086 m!4479413))

(declare-fun m!4479443 () Bool)

(assert (=> b!3916086 m!4479443))

(assert (=> b!3915794 d!1161559))

(declare-fun b!3916087 () Bool)

(declare-fun e!2421329 () Bool)

(declare-fun e!2421327 () Bool)

(assert (=> b!3916087 (= e!2421329 e!2421327)))

(declare-fun res!1584108 () Bool)

(declare-fun lt!1364450 () tuple2!40760)

(assert (=> b!3916087 (= res!1584108 (< (size!31162 (_2!23514 lt!1364450)) (size!31162 lt!1364304)))))

(assert (=> b!3916087 (=> (not res!1584108) (not e!2421327))))

(declare-fun b!3916088 () Bool)

(assert (=> b!3916088 (= e!2421329 (= (_2!23514 lt!1364450) lt!1364304))))

(declare-fun b!3916089 () Bool)

(declare-fun e!2421328 () tuple2!40760)

(assert (=> b!3916089 (= e!2421328 (tuple2!40761 Nil!41505 lt!1364304))))

(declare-fun b!3916090 () Bool)

(assert (=> b!3916090 (= e!2421327 (not (isEmpty!24699 (_1!23514 lt!1364450))))))

(declare-fun b!3916091 () Bool)

(declare-fun lt!1364451 () Option!8883)

(declare-fun lt!1364452 () tuple2!40760)

(assert (=> b!3916091 (= e!2421328 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364451)) (_1!23514 lt!1364452)) (_2!23514 lt!1364452)))))

(assert (=> b!3916091 (= lt!1364452 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364451))))))

(declare-fun d!1161561 () Bool)

(assert (=> d!1161561 e!2421329))

(declare-fun c!680597 () Bool)

(assert (=> d!1161561 (= c!680597 (> (size!31165 (_1!23514 lt!1364450)) 0))))

(assert (=> d!1161561 (= lt!1364450 e!2421328)))

(declare-fun c!680598 () Bool)

(assert (=> d!1161561 (= c!680598 (is-Some!8882 lt!1364451))))

(assert (=> d!1161561 (= lt!1364451 (maxPrefix!3356 thiss!20629 rules!2768 lt!1364304))))

(assert (=> d!1161561 (= (lexList!1820 thiss!20629 rules!2768 lt!1364304) lt!1364450)))

(assert (= (and d!1161561 c!680598) b!3916091))

(assert (= (and d!1161561 (not c!680598)) b!3916089))

(assert (= (and d!1161561 c!680597) b!3916087))

(assert (= (and d!1161561 (not c!680597)) b!3916088))

(assert (= (and b!3916087 res!1584108) b!3916090))

(declare-fun m!4479445 () Bool)

(assert (=> b!3916087 m!4479445))

(assert (=> b!3916087 m!4479125))

(declare-fun m!4479447 () Bool)

(assert (=> b!3916090 m!4479447))

(declare-fun m!4479449 () Bool)

(assert (=> b!3916091 m!4479449))

(declare-fun m!4479451 () Bool)

(assert (=> d!1161561 m!4479451))

(assert (=> d!1161561 m!4479115))

(assert (=> b!3915815 d!1161561))

(declare-fun d!1161563 () Bool)

(declare-fun e!2421334 () Bool)

(assert (=> d!1161563 e!2421334))

(declare-fun res!1584114 () Bool)

(assert (=> d!1161563 (=> (not res!1584114) (not e!2421334))))

(declare-fun lt!1364461 () List!41629)

(declare-fun content!6240 (List!41629) (Set Token!12064))

(assert (=> d!1161563 (= res!1584114 (= (content!6240 lt!1364461) (set.union (content!6240 prefixTokens!80) (content!6240 suffixTokens!72))))))

(declare-fun e!2421335 () List!41629)

(assert (=> d!1161563 (= lt!1364461 e!2421335)))

(declare-fun c!680601 () Bool)

(assert (=> d!1161563 (= c!680601 (is-Nil!41505 prefixTokens!80))))

(assert (=> d!1161563 (= (++!10684 prefixTokens!80 suffixTokens!72) lt!1364461)))

(declare-fun b!3916105 () Bool)

(assert (=> b!3916105 (= e!2421334 (or (not (= suffixTokens!72 Nil!41505)) (= lt!1364461 prefixTokens!80)))))

(declare-fun b!3916103 () Bool)

(assert (=> b!3916103 (= e!2421335 (Cons!41505 (h!46925 prefixTokens!80) (++!10684 (t!323730 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3916104 () Bool)

(declare-fun res!1584113 () Bool)

(assert (=> b!3916104 (=> (not res!1584113) (not e!2421334))))

(assert (=> b!3916104 (= res!1584113 (= (size!31165 lt!1364461) (+ (size!31165 prefixTokens!80) (size!31165 suffixTokens!72))))))

(declare-fun b!3916102 () Bool)

(assert (=> b!3916102 (= e!2421335 suffixTokens!72)))

(assert (= (and d!1161563 c!680601) b!3916102))

(assert (= (and d!1161563 (not c!680601)) b!3916103))

(assert (= (and d!1161563 res!1584114) b!3916104))

(assert (= (and b!3916104 res!1584113) b!3916105))

(declare-fun m!4479453 () Bool)

(assert (=> d!1161563 m!4479453))

(declare-fun m!4479455 () Bool)

(assert (=> d!1161563 m!4479455))

(declare-fun m!4479457 () Bool)

(assert (=> d!1161563 m!4479457))

(declare-fun m!4479459 () Bool)

(assert (=> b!3916103 m!4479459))

(declare-fun m!4479461 () Bool)

(assert (=> b!3916104 m!4479461))

(declare-fun m!4479463 () Bool)

(assert (=> b!3916104 m!4479463))

(declare-fun m!4479465 () Bool)

(assert (=> b!3916104 m!4479465))

(assert (=> b!3915815 d!1161563))

(declare-fun b!3916110 () Bool)

(declare-fun res!1584116 () Bool)

(declare-fun e!2421339 () Bool)

(assert (=> b!3916110 (=> (not res!1584116) (not e!2421339))))

(declare-fun lt!1364466 () List!41628)

(assert (=> b!3916110 (= res!1584116 (= (size!31162 lt!1364466) (+ (size!31162 prefix!426) (size!31162 suffix!1176))))))

(declare-fun d!1161565 () Bool)

(assert (=> d!1161565 e!2421339))

(declare-fun res!1584115 () Bool)

(assert (=> d!1161565 (=> (not res!1584115) (not e!2421339))))

(assert (=> d!1161565 (= res!1584115 (= (content!6239 lt!1364466) (set.union (content!6239 prefix!426) (content!6239 suffix!1176))))))

(declare-fun e!2421338 () List!41628)

(assert (=> d!1161565 (= lt!1364466 e!2421338)))

(declare-fun c!680604 () Bool)

(assert (=> d!1161565 (= c!680604 (is-Nil!41504 prefix!426))))

(assert (=> d!1161565 (= (++!10683 prefix!426 suffix!1176) lt!1364466)))

(declare-fun b!3916108 () Bool)

(assert (=> b!3916108 (= e!2421338 suffix!1176)))

(declare-fun b!3916109 () Bool)

(assert (=> b!3916109 (= e!2421338 (Cons!41504 (h!46924 prefix!426) (++!10683 (t!323729 prefix!426) suffix!1176)))))

(declare-fun b!3916111 () Bool)

(assert (=> b!3916111 (= e!2421339 (or (not (= suffix!1176 Nil!41504)) (= lt!1364466 prefix!426)))))

(assert (= (and d!1161565 c!680604) b!3916108))

(assert (= (and d!1161565 (not c!680604)) b!3916109))

(assert (= (and d!1161565 res!1584115) b!3916110))

(assert (= (and b!3916110 res!1584116) b!3916111))

(declare-fun m!4479467 () Bool)

(assert (=> b!3916110 m!4479467))

(assert (=> b!3916110 m!4479183))

(assert (=> b!3916110 m!4479133))

(declare-fun m!4479469 () Bool)

(assert (=> d!1161565 m!4479469))

(declare-fun m!4479471 () Bool)

(assert (=> d!1161565 m!4479471))

(declare-fun m!4479473 () Bool)

(assert (=> d!1161565 m!4479473))

(declare-fun m!4479475 () Bool)

(assert (=> b!3916109 m!4479475))

(assert (=> b!3915815 d!1161565))

(declare-fun b!3916112 () Bool)

(declare-fun e!2421342 () Bool)

(declare-fun e!2421340 () Bool)

(assert (=> b!3916112 (= e!2421342 e!2421340)))

(declare-fun res!1584117 () Bool)

(declare-fun lt!1364467 () tuple2!40760)

(assert (=> b!3916112 (= res!1584117 (< (size!31162 (_2!23514 lt!1364467)) (size!31162 (_2!23513 lt!1364301))))))

(assert (=> b!3916112 (=> (not res!1584117) (not e!2421340))))

(declare-fun b!3916113 () Bool)

(assert (=> b!3916113 (= e!2421342 (= (_2!23514 lt!1364467) (_2!23513 lt!1364301)))))

(declare-fun b!3916114 () Bool)

(declare-fun e!2421341 () tuple2!40760)

(assert (=> b!3916114 (= e!2421341 (tuple2!40761 Nil!41505 (_2!23513 lt!1364301)))))

(declare-fun b!3916115 () Bool)

(assert (=> b!3916115 (= e!2421340 (not (isEmpty!24699 (_1!23514 lt!1364467))))))

(declare-fun b!3916116 () Bool)

(declare-fun lt!1364468 () Option!8883)

(declare-fun lt!1364469 () tuple2!40760)

(assert (=> b!3916116 (= e!2421341 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364468)) (_1!23514 lt!1364469)) (_2!23514 lt!1364469)))))

(assert (=> b!3916116 (= lt!1364469 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364468))))))

(declare-fun d!1161567 () Bool)

(assert (=> d!1161567 e!2421342))

(declare-fun c!680605 () Bool)

(assert (=> d!1161567 (= c!680605 (> (size!31165 (_1!23514 lt!1364467)) 0))))

(assert (=> d!1161567 (= lt!1364467 e!2421341)))

(declare-fun c!680606 () Bool)

(assert (=> d!1161567 (= c!680606 (is-Some!8882 lt!1364468))))

(assert (=> d!1161567 (= lt!1364468 (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 lt!1364301)))))

(assert (=> d!1161567 (= (lexList!1820 thiss!20629 rules!2768 (_2!23513 lt!1364301)) lt!1364467)))

(assert (= (and d!1161567 c!680606) b!3916116))

(assert (= (and d!1161567 (not c!680606)) b!3916114))

(assert (= (and d!1161567 c!680605) b!3916112))

(assert (= (and d!1161567 (not c!680605)) b!3916113))

(assert (= (and b!3916112 res!1584117) b!3916115))

(declare-fun m!4479477 () Bool)

(assert (=> b!3916112 m!4479477))

(assert (=> b!3916112 m!4479093))

(declare-fun m!4479479 () Bool)

(assert (=> b!3916115 m!4479479))

(declare-fun m!4479481 () Bool)

(assert (=> b!3916116 m!4479481))

(declare-fun m!4479483 () Bool)

(assert (=> d!1161567 m!4479483))

(declare-fun m!4479485 () Bool)

(assert (=> d!1161567 m!4479485))

(assert (=> b!3915801 d!1161567))

(declare-fun d!1161569 () Bool)

(assert (=> d!1161569 (= (isEmpty!24699 (tail!5994 prefixTokens!80)) (is-Nil!41505 (tail!5994 prefixTokens!80)))))

(assert (=> b!3915800 d!1161569))

(declare-fun d!1161571 () Bool)

(assert (=> d!1161571 (= (tail!5994 prefixTokens!80) (t!323730 prefixTokens!80))))

(assert (=> b!3915800 d!1161571))

(declare-fun b!3916129 () Bool)

(declare-fun res!1584129 () Bool)

(declare-fun e!2421348 () Bool)

(assert (=> b!3916129 (=> (not res!1584129) (not e!2421348))))

(declare-fun lt!1364470 () List!41628)

(assert (=> b!3916129 (= res!1584129 (= (size!31162 lt!1364470) (+ (size!31162 lt!1364317) (size!31162 (_2!23513 lt!1364301)))))))

(declare-fun d!1161573 () Bool)

(assert (=> d!1161573 e!2421348))

(declare-fun res!1584128 () Bool)

(assert (=> d!1161573 (=> (not res!1584128) (not e!2421348))))

(assert (=> d!1161573 (= res!1584128 (= (content!6239 lt!1364470) (set.union (content!6239 lt!1364317) (content!6239 (_2!23513 lt!1364301)))))))

(declare-fun e!2421347 () List!41628)

(assert (=> d!1161573 (= lt!1364470 e!2421347)))

(declare-fun c!680607 () Bool)

(assert (=> d!1161573 (= c!680607 (is-Nil!41504 lt!1364317))))

(assert (=> d!1161573 (= (++!10683 lt!1364317 (_2!23513 lt!1364301)) lt!1364470)))

(declare-fun b!3916127 () Bool)

(assert (=> b!3916127 (= e!2421347 (_2!23513 lt!1364301))))

(declare-fun b!3916128 () Bool)

(assert (=> b!3916128 (= e!2421347 (Cons!41504 (h!46924 lt!1364317) (++!10683 (t!323729 lt!1364317) (_2!23513 lt!1364301))))))

(declare-fun b!3916130 () Bool)

(assert (=> b!3916130 (= e!2421348 (or (not (= (_2!23513 lt!1364301) Nil!41504)) (= lt!1364470 lt!1364317)))))

(assert (= (and d!1161573 c!680607) b!3916127))

(assert (= (and d!1161573 (not c!680607)) b!3916128))

(assert (= (and d!1161573 res!1584128) b!3916129))

(assert (= (and b!3916129 res!1584129) b!3916130))

(declare-fun m!4479487 () Bool)

(assert (=> b!3916129 m!4479487))

(assert (=> b!3916129 m!4479171))

(assert (=> b!3916129 m!4479093))

(declare-fun m!4479489 () Bool)

(assert (=> d!1161573 m!4479489))

(assert (=> d!1161573 m!4479363))

(declare-fun m!4479491 () Bool)

(assert (=> d!1161573 m!4479491))

(declare-fun m!4479493 () Bool)

(assert (=> b!3916128 m!4479493))

(assert (=> b!3915802 d!1161573))

(declare-fun d!1161575 () Bool)

(assert (=> d!1161575 (= (inv!55693 (tag!7323 (rule!9387 (h!46925 suffixTokens!72)))) (= (mod (str.len (value!204830 (tag!7323 (rule!9387 (h!46925 suffixTokens!72))))) 2) 0))))

(assert (=> b!3915798 d!1161575))

(declare-fun d!1161577 () Bool)

(declare-fun res!1584134 () Bool)

(declare-fun e!2421349 () Bool)

(assert (=> d!1161577 (=> (not res!1584134) (not e!2421349))))

(assert (=> d!1161577 (= res!1584134 (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))))))

(assert (=> d!1161577 (= (inv!55697 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) e!2421349)))

(declare-fun b!3916135 () Bool)

(assert (=> b!3916135 (= e!2421349 (equivClasses!2677 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))))))

(assert (= (and d!1161577 res!1584134) b!3916135))

(declare-fun m!4479495 () Bool)

(assert (=> d!1161577 m!4479495))

(declare-fun m!4479497 () Bool)

(assert (=> b!3916135 m!4479497))

(assert (=> b!3915798 d!1161577))

(declare-fun d!1161579 () Bool)

(declare-fun e!2421350 () Bool)

(assert (=> d!1161579 e!2421350))

(declare-fun res!1584136 () Bool)

(assert (=> d!1161579 (=> (not res!1584136) (not e!2421350))))

(declare-fun lt!1364471 () List!41629)

(assert (=> d!1161579 (= res!1584136 (= (content!6240 lt!1364471) (set.union (content!6240 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) (content!6240 (_1!23514 lt!1364297)))))))

(declare-fun e!2421351 () List!41629)

(assert (=> d!1161579 (= lt!1364471 e!2421351)))

(declare-fun c!680608 () Bool)

(assert (=> d!1161579 (= c!680608 (is-Nil!41505 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)))))

(assert (=> d!1161579 (= (++!10684 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505) (_1!23514 lt!1364297)) lt!1364471)))

(declare-fun b!3916139 () Bool)

(assert (=> b!3916139 (= e!2421350 (or (not (= (_1!23514 lt!1364297) Nil!41505)) (= lt!1364471 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505))))))

(declare-fun b!3916137 () Bool)

(assert (=> b!3916137 (= e!2421351 (Cons!41505 (h!46925 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) (++!10684 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) (_1!23514 lt!1364297))))))

(declare-fun b!3916138 () Bool)

(declare-fun res!1584135 () Bool)

(assert (=> b!3916138 (=> (not res!1584135) (not e!2421350))))

(assert (=> b!3916138 (= res!1584135 (= (size!31165 lt!1364471) (+ (size!31165 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) (size!31165 (_1!23514 lt!1364297)))))))

(declare-fun b!3916136 () Bool)

(assert (=> b!3916136 (= e!2421351 (_1!23514 lt!1364297))))

(assert (= (and d!1161579 c!680608) b!3916136))

(assert (= (and d!1161579 (not c!680608)) b!3916137))

(assert (= (and d!1161579 res!1584136) b!3916138))

(assert (= (and b!3916138 res!1584135) b!3916139))

(declare-fun m!4479499 () Bool)

(assert (=> d!1161579 m!4479499))

(declare-fun m!4479501 () Bool)

(assert (=> d!1161579 m!4479501))

(declare-fun m!4479503 () Bool)

(assert (=> d!1161579 m!4479503))

(declare-fun m!4479505 () Bool)

(assert (=> b!3916137 m!4479505))

(declare-fun m!4479507 () Bool)

(assert (=> b!3916138 m!4479507))

(declare-fun m!4479509 () Bool)

(assert (=> b!3916138 m!4479509))

(declare-fun m!4479511 () Bool)

(assert (=> b!3916138 m!4479511))

(assert (=> b!3915819 d!1161579))

(declare-fun d!1161581 () Bool)

(assert (=> d!1161581 (= (isEmpty!24700 rules!2768) (is-Nil!41506 rules!2768))))

(assert (=> b!3915799 d!1161581))

(declare-fun d!1161583 () Bool)

(declare-fun lt!1364472 () Int)

(assert (=> d!1161583 (>= lt!1364472 0)))

(declare-fun e!2421352 () Int)

(assert (=> d!1161583 (= lt!1364472 e!2421352)))

(declare-fun c!680609 () Bool)

(assert (=> d!1161583 (= c!680609 (is-Nil!41504 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161583 (= (size!31162 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311)))) lt!1364472)))

(declare-fun b!3916140 () Bool)

(assert (=> b!3916140 (= e!2421352 0)))

(declare-fun b!3916141 () Bool)

(assert (=> b!3916141 (= e!2421352 (+ 1 (size!31162 (t!323729 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311)))))))))

(assert (= (and d!1161583 c!680609) b!3916140))

(assert (= (and d!1161583 (not c!680609)) b!3916141))

(declare-fun m!4479513 () Bool)

(assert (=> b!3916141 m!4479513))

(assert (=> b!3915785 d!1161583))

(declare-fun d!1161585 () Bool)

(assert (=> d!1161585 (= (isEmpty!24701 prefix!426) (is-Nil!41504 prefix!426))))

(assert (=> b!3915803 d!1161585))

(declare-fun d!1161587 () Bool)

(declare-fun lt!1364473 () Int)

(assert (=> d!1161587 (>= lt!1364473 0)))

(declare-fun e!2421353 () Int)

(assert (=> d!1161587 (= lt!1364473 e!2421353)))

(declare-fun c!680610 () Bool)

(assert (=> d!1161587 (= c!680610 (is-Nil!41504 (_2!23513 lt!1364301)))))

(assert (=> d!1161587 (= (size!31162 (_2!23513 lt!1364301)) lt!1364473)))

(declare-fun b!3916142 () Bool)

(assert (=> b!3916142 (= e!2421353 0)))

(declare-fun b!3916143 () Bool)

(assert (=> b!3916143 (= e!2421353 (+ 1 (size!31162 (t!323729 (_2!23513 lt!1364301)))))))

(assert (= (and d!1161587 c!680610) b!3916142))

(assert (= (and d!1161587 (not c!680610)) b!3916143))

(declare-fun m!4479515 () Bool)

(assert (=> b!3916143 m!4479515))

(assert (=> b!3915805 d!1161587))

(declare-fun d!1161589 () Bool)

(assert (=> d!1161589 (= (inv!55693 (tag!7323 (rule!9387 (h!46925 prefixTokens!80)))) (= (mod (str.len (value!204830 (tag!7323 (rule!9387 (h!46925 prefixTokens!80))))) 2) 0))))

(assert (=> b!3915804 d!1161589))

(declare-fun d!1161591 () Bool)

(declare-fun res!1584137 () Bool)

(declare-fun e!2421354 () Bool)

(assert (=> d!1161591 (=> (not res!1584137) (not e!2421354))))

(assert (=> d!1161591 (= res!1584137 (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))))))

(assert (=> d!1161591 (= (inv!55697 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) e!2421354)))

(declare-fun b!3916144 () Bool)

(assert (=> b!3916144 (= e!2421354 (equivClasses!2677 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))))))

(assert (= (and d!1161591 res!1584137) b!3916144))

(declare-fun m!4479517 () Bool)

(assert (=> d!1161591 m!4479517))

(declare-fun m!4479519 () Bool)

(assert (=> b!3916144 m!4479519))

(assert (=> b!3915804 d!1161591))

(declare-fun d!1161593 () Bool)

(declare-fun lt!1364474 () Int)

(assert (=> d!1161593 (>= lt!1364474 0)))

(declare-fun e!2421355 () Int)

(assert (=> d!1161593 (= lt!1364474 e!2421355)))

(declare-fun c!680611 () Bool)

(assert (=> d!1161593 (= c!680611 (is-Nil!41504 suffix!1176))))

(assert (=> d!1161593 (= (size!31162 suffix!1176) lt!1364474)))

(declare-fun b!3916145 () Bool)

(assert (=> b!3916145 (= e!2421355 0)))

(declare-fun b!3916146 () Bool)

(assert (=> b!3916146 (= e!2421355 (+ 1 (size!31162 (t!323729 suffix!1176))))))

(assert (= (and d!1161593 c!680611) b!3916145))

(assert (= (and d!1161593 (not c!680611)) b!3916146))

(declare-fun m!4479521 () Bool)

(assert (=> b!3916146 m!4479521))

(assert (=> b!3915813 d!1161593))

(declare-fun d!1161595 () Bool)

(declare-fun lt!1364475 () Int)

(assert (=> d!1161595 (>= lt!1364475 0)))

(declare-fun e!2421356 () Int)

(assert (=> d!1161595 (= lt!1364475 e!2421356)))

(declare-fun c!680612 () Bool)

(assert (=> d!1161595 (= c!680612 (is-Nil!41504 (_2!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161595 (= (size!31162 (_2!23513 (v!39206 lt!1364311))) lt!1364475)))

(declare-fun b!3916147 () Bool)

(assert (=> b!3916147 (= e!2421356 0)))

(declare-fun b!3916148 () Bool)

(assert (=> b!3916148 (= e!2421356 (+ 1 (size!31162 (t!323729 (_2!23513 (v!39206 lt!1364311))))))))

(assert (= (and d!1161595 c!680612) b!3916147))

(assert (= (and d!1161595 (not c!680612)) b!3916148))

(declare-fun m!4479523 () Bool)

(assert (=> b!3916148 m!4479523))

(assert (=> b!3915813 d!1161595))

(declare-fun d!1161597 () Bool)

(assert (=> d!1161597 (= (isEmpty!24699 prefixTokens!80) (is-Nil!41505 prefixTokens!80))))

(assert (=> b!3915791 d!1161597))

(declare-fun b!3916149 () Bool)

(declare-fun e!2421359 () Bool)

(declare-fun e!2421357 () Bool)

(assert (=> b!3916149 (= e!2421359 e!2421357)))

(declare-fun res!1584138 () Bool)

(declare-fun lt!1364476 () tuple2!40760)

(assert (=> b!3916149 (= res!1584138 (< (size!31162 (_2!23514 lt!1364476)) (size!31162 suffix!1176)))))

(assert (=> b!3916149 (=> (not res!1584138) (not e!2421357))))

(declare-fun b!3916150 () Bool)

(assert (=> b!3916150 (= e!2421359 (= (_2!23514 lt!1364476) suffix!1176))))

(declare-fun b!3916151 () Bool)

(declare-fun e!2421358 () tuple2!40760)

(assert (=> b!3916151 (= e!2421358 (tuple2!40761 Nil!41505 suffix!1176))))

(declare-fun b!3916152 () Bool)

(assert (=> b!3916152 (= e!2421357 (not (isEmpty!24699 (_1!23514 lt!1364476))))))

(declare-fun b!3916153 () Bool)

(declare-fun lt!1364477 () Option!8883)

(declare-fun lt!1364478 () tuple2!40760)

(assert (=> b!3916153 (= e!2421358 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364477)) (_1!23514 lt!1364478)) (_2!23514 lt!1364478)))))

(assert (=> b!3916153 (= lt!1364478 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364477))))))

(declare-fun d!1161599 () Bool)

(assert (=> d!1161599 e!2421359))

(declare-fun c!680613 () Bool)

(assert (=> d!1161599 (= c!680613 (> (size!31165 (_1!23514 lt!1364476)) 0))))

(assert (=> d!1161599 (= lt!1364476 e!2421358)))

(declare-fun c!680614 () Bool)

(assert (=> d!1161599 (= c!680614 (is-Some!8882 lt!1364477))))

(assert (=> d!1161599 (= lt!1364477 (maxPrefix!3356 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1161599 (= (lexList!1820 thiss!20629 rules!2768 suffix!1176) lt!1364476)))

(assert (= (and d!1161599 c!680614) b!3916153))

(assert (= (and d!1161599 (not c!680614)) b!3916151))

(assert (= (and d!1161599 c!680613) b!3916149))

(assert (= (and d!1161599 (not c!680613)) b!3916150))

(assert (= (and b!3916149 res!1584138) b!3916152))

(declare-fun m!4479525 () Bool)

(assert (=> b!3916149 m!4479525))

(assert (=> b!3916149 m!4479133))

(declare-fun m!4479527 () Bool)

(assert (=> b!3916152 m!4479527))

(declare-fun m!4479529 () Bool)

(assert (=> b!3916153 m!4479529))

(declare-fun m!4479531 () Bool)

(assert (=> d!1161599 m!4479531))

(declare-fun m!4479533 () Bool)

(assert (=> d!1161599 m!4479533))

(assert (=> b!3915812 d!1161599))

(declare-fun b!3916154 () Bool)

(declare-fun res!1584139 () Bool)

(declare-fun e!2421360 () Bool)

(assert (=> b!3916154 (=> res!1584139 e!2421360)))

(assert (=> b!3916154 (= res!1584139 (not (is-IntegerValue!20081 (value!204831 (h!46925 prefixTokens!80)))))))

(declare-fun e!2421361 () Bool)

(assert (=> b!3916154 (= e!2421361 e!2421360)))

(declare-fun d!1161601 () Bool)

(declare-fun c!680615 () Bool)

(assert (=> d!1161601 (= c!680615 (is-IntegerValue!20079 (value!204831 (h!46925 prefixTokens!80))))))

(declare-fun e!2421362 () Bool)

(assert (=> d!1161601 (= (inv!21 (value!204831 (h!46925 prefixTokens!80))) e!2421362)))

(declare-fun b!3916155 () Bool)

(assert (=> b!3916155 (= e!2421362 (inv!16 (value!204831 (h!46925 prefixTokens!80))))))

(declare-fun b!3916156 () Bool)

(assert (=> b!3916156 (= e!2421361 (inv!17 (value!204831 (h!46925 prefixTokens!80))))))

(declare-fun b!3916157 () Bool)

(assert (=> b!3916157 (= e!2421360 (inv!15 (value!204831 (h!46925 prefixTokens!80))))))

(declare-fun b!3916158 () Bool)

(assert (=> b!3916158 (= e!2421362 e!2421361)))

(declare-fun c!680616 () Bool)

(assert (=> b!3916158 (= c!680616 (is-IntegerValue!20080 (value!204831 (h!46925 prefixTokens!80))))))

(assert (= (and d!1161601 c!680615) b!3916155))

(assert (= (and d!1161601 (not c!680615)) b!3916158))

(assert (= (and b!3916158 c!680616) b!3916156))

(assert (= (and b!3916158 (not c!680616)) b!3916154))

(assert (= (and b!3916154 (not res!1584139)) b!3916157))

(declare-fun m!4479535 () Bool)

(assert (=> b!3916155 m!4479535))

(declare-fun m!4479537 () Bool)

(assert (=> b!3916156 m!4479537))

(declare-fun m!4479539 () Bool)

(assert (=> b!3916157 m!4479539))

(assert (=> b!3915809 d!1161601))

(declare-fun d!1161603 () Bool)

(declare-fun res!1584144 () Bool)

(declare-fun e!2421365 () Bool)

(assert (=> d!1161603 (=> (not res!1584144) (not e!2421365))))

(assert (=> d!1161603 (= res!1584144 (not (isEmpty!24701 (originalCharacters!7063 (h!46925 prefixTokens!80)))))))

(assert (=> d!1161603 (= (inv!55696 (h!46925 prefixTokens!80)) e!2421365)))

(declare-fun b!3916163 () Bool)

(declare-fun res!1584145 () Bool)

(assert (=> b!3916163 (=> (not res!1584145) (not e!2421365))))

(assert (=> b!3916163 (= res!1584145 (= (originalCharacters!7063 (h!46925 prefixTokens!80)) (list!15430 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))))))

(declare-fun b!3916164 () Bool)

(assert (=> b!3916164 (= e!2421365 (= (size!31161 (h!46925 prefixTokens!80)) (size!31162 (originalCharacters!7063 (h!46925 prefixTokens!80)))))))

(assert (= (and d!1161603 res!1584144) b!3916163))

(assert (= (and b!3916163 res!1584145) b!3916164))

(declare-fun b_lambda!114653 () Bool)

(assert (=> (not b_lambda!114653) (not b!3916163)))

(declare-fun tb!233399 () Bool)

(declare-fun t!323755 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323755) tb!233399))

(declare-fun b!3916165 () Bool)

(declare-fun e!2421366 () Bool)

(declare-fun tp!1192003 () Bool)

(assert (=> b!3916165 (= e!2421366 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))) tp!1192003))))

(declare-fun result!282882 () Bool)

(assert (=> tb!233399 (= result!282882 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))) e!2421366))))

(assert (= tb!233399 b!3916165))

(declare-fun m!4479541 () Bool)

(assert (=> b!3916165 m!4479541))

(declare-fun m!4479543 () Bool)

(assert (=> tb!233399 m!4479543))

(assert (=> b!3916163 t!323755))

(declare-fun b_and!298169 () Bool)

(assert (= b_and!298163 (and (=> t!323755 result!282882) b_and!298169)))

(declare-fun t!323757 () Bool)

(declare-fun tb!233401 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323757) tb!233401))

(declare-fun result!282884 () Bool)

(assert (= result!282884 result!282882))

(assert (=> b!3916163 t!323757))

(declare-fun b_and!298171 () Bool)

(assert (= b_and!298165 (and (=> t!323757 result!282884) b_and!298171)))

(declare-fun tb!233403 () Bool)

(declare-fun t!323759 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323759) tb!233403))

(declare-fun result!282886 () Bool)

(assert (= result!282886 result!282882))

(assert (=> b!3916163 t!323759))

(declare-fun b_and!298173 () Bool)

(assert (= b_and!298167 (and (=> t!323759 result!282886) b_and!298173)))

(declare-fun m!4479545 () Bool)

(assert (=> d!1161603 m!4479545))

(declare-fun m!4479547 () Bool)

(assert (=> b!3916163 m!4479547))

(assert (=> b!3916163 m!4479547))

(declare-fun m!4479549 () Bool)

(assert (=> b!3916163 m!4479549))

(declare-fun m!4479551 () Bool)

(assert (=> b!3916164 m!4479551))

(assert (=> b!3915787 d!1161603))

(declare-fun d!1161605 () Bool)

(declare-fun lt!1364479 () Int)

(assert (=> d!1161605 (>= lt!1364479 0)))

(declare-fun e!2421367 () Int)

(assert (=> d!1161605 (= lt!1364479 e!2421367)))

(declare-fun c!680617 () Bool)

(assert (=> d!1161605 (= c!680617 (is-Nil!41504 lt!1364304))))

(assert (=> d!1161605 (= (size!31162 lt!1364304) lt!1364479)))

(declare-fun b!3916166 () Bool)

(assert (=> b!3916166 (= e!2421367 0)))

(declare-fun b!3916167 () Bool)

(assert (=> b!3916167 (= e!2421367 (+ 1 (size!31162 (t!323729 lt!1364304))))))

(assert (= (and d!1161605 c!680617) b!3916166))

(assert (= (and d!1161605 (not c!680617)) b!3916167))

(declare-fun m!4479553 () Bool)

(assert (=> b!3916167 m!4479553))

(assert (=> b!3915808 d!1161605))

(declare-fun d!1161607 () Bool)

(declare-fun res!1584155 () Bool)

(declare-fun e!2421373 () Bool)

(assert (=> d!1161607 (=> (not res!1584155) (not e!2421373))))

(declare-fun rulesValid!2512 (LexerInterface!6052 List!41630) Bool)

(assert (=> d!1161607 (= res!1584155 (rulesValid!2512 thiss!20629 rules!2768))))

(assert (=> d!1161607 (= (rulesInvariant!5395 thiss!20629 rules!2768) e!2421373)))

(declare-fun b!3916179 () Bool)

(declare-datatypes ((List!41635 0))(
  ( (Nil!41511) (Cons!41511 (h!46931 String!47185) (t!323832 List!41635)) )
))
(declare-fun noDuplicateTag!2513 (LexerInterface!6052 List!41630 List!41635) Bool)

(assert (=> b!3916179 (= e!2421373 (noDuplicateTag!2513 thiss!20629 rules!2768 Nil!41511))))

(assert (= (and d!1161607 res!1584155) b!3916179))

(declare-fun m!4479555 () Bool)

(assert (=> d!1161607 m!4479555))

(declare-fun m!4479557 () Bool)

(assert (=> b!3916179 m!4479557))

(assert (=> b!3915789 d!1161607))

(declare-fun b!3916211 () Bool)

(declare-fun e!2421392 () Bool)

(assert (=> b!3916211 (= e!2421392 (= (head!8280 lt!1364317) (c!680555 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun b!3916212 () Bool)

(declare-fun res!1584174 () Bool)

(assert (=> b!3916212 (=> (not res!1584174) (not e!2421392))))

(assert (=> b!3916212 (= res!1584174 (isEmpty!24701 (tail!5996 lt!1364317)))))

(declare-fun b!3916213 () Bool)

(declare-fun e!2421393 () Bool)

(declare-fun lt!1364488 () Bool)

(declare-fun call!284445 () Bool)

(assert (=> b!3916213 (= e!2421393 (= lt!1364488 call!284445))))

(declare-fun b!3916214 () Bool)

(declare-fun e!2421391 () Bool)

(assert (=> b!3916214 (= e!2421391 (not lt!1364488))))

(declare-fun d!1161609 () Bool)

(assert (=> d!1161609 e!2421393))

(declare-fun c!680626 () Bool)

(assert (=> d!1161609 (= c!680626 (is-EmptyExpr!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun e!2421390 () Bool)

(assert (=> d!1161609 (= lt!1364488 e!2421390)))

(declare-fun c!680627 () Bool)

(assert (=> d!1161609 (= c!680627 (isEmpty!24701 lt!1364317))))

(assert (=> d!1161609 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161609 (= (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364317) lt!1364488)))

(declare-fun b!3916215 () Bool)

(declare-fun res!1584173 () Bool)

(declare-fun e!2421394 () Bool)

(assert (=> b!3916215 (=> res!1584173 e!2421394)))

(assert (=> b!3916215 (= res!1584173 e!2421392)))

(declare-fun res!1584176 () Bool)

(assert (=> b!3916215 (=> (not res!1584176) (not e!2421392))))

(assert (=> b!3916215 (= res!1584176 lt!1364488)))

(declare-fun b!3916216 () Bool)

(declare-fun res!1584175 () Bool)

(assert (=> b!3916216 (=> (not res!1584175) (not e!2421392))))

(assert (=> b!3916216 (= res!1584175 (not call!284445))))

(declare-fun b!3916217 () Bool)

(declare-fun e!2421396 () Bool)

(declare-fun e!2421395 () Bool)

(assert (=> b!3916217 (= e!2421396 e!2421395)))

(declare-fun res!1584179 () Bool)

(assert (=> b!3916217 (=> res!1584179 e!2421395)))

(assert (=> b!3916217 (= res!1584179 call!284445)))

(declare-fun b!3916218 () Bool)

(assert (=> b!3916218 (= e!2421395 (not (= (head!8280 lt!1364317) (c!680555 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))))

(declare-fun bm!284440 () Bool)

(assert (=> bm!284440 (= call!284445 (isEmpty!24701 lt!1364317))))

(declare-fun b!3916219 () Bool)

(assert (=> b!3916219 (= e!2421393 e!2421391)))

(declare-fun c!680628 () Bool)

(assert (=> b!3916219 (= c!680628 (is-EmptyLang!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916220 () Bool)

(assert (=> b!3916220 (= e!2421394 e!2421396)))

(declare-fun res!1584178 () Bool)

(assert (=> b!3916220 (=> (not res!1584178) (not e!2421396))))

(assert (=> b!3916220 (= res!1584178 (not lt!1364488))))

(declare-fun b!3916221 () Bool)

(assert (=> b!3916221 (= e!2421390 (nullable!3978 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916222 () Bool)

(declare-fun res!1584180 () Bool)

(assert (=> b!3916222 (=> res!1584180 e!2421394)))

(assert (=> b!3916222 (= res!1584180 (not (is-ElementMatch!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(assert (=> b!3916222 (= e!2421391 e!2421394)))

(declare-fun b!3916223 () Bool)

(declare-fun res!1584177 () Bool)

(assert (=> b!3916223 (=> res!1584177 e!2421395)))

(assert (=> b!3916223 (= res!1584177 (not (isEmpty!24701 (tail!5996 lt!1364317))))))

(declare-fun b!3916224 () Bool)

(declare-fun derivativeStep!3443 (Regex!11368 C!22922) Regex!11368)

(assert (=> b!3916224 (= e!2421390 (matchR!5457 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317)) (tail!5996 lt!1364317)))))

(assert (= (and d!1161609 c!680627) b!3916221))

(assert (= (and d!1161609 (not c!680627)) b!3916224))

(assert (= (and d!1161609 c!680626) b!3916213))

(assert (= (and d!1161609 (not c!680626)) b!3916219))

(assert (= (and b!3916219 c!680628) b!3916214))

(assert (= (and b!3916219 (not c!680628)) b!3916222))

(assert (= (and b!3916222 (not res!1584180)) b!3916215))

(assert (= (and b!3916215 res!1584176) b!3916216))

(assert (= (and b!3916216 res!1584175) b!3916212))

(assert (= (and b!3916212 res!1584174) b!3916211))

(assert (= (and b!3916215 (not res!1584173)) b!3916220))

(assert (= (and b!3916220 res!1584178) b!3916217))

(assert (= (and b!3916217 (not res!1584179)) b!3916223))

(assert (= (and b!3916223 (not res!1584177)) b!3916218))

(assert (= (or b!3916213 b!3916216 b!3916217) bm!284440))

(assert (=> b!3916212 m!4479307))

(assert (=> b!3916212 m!4479307))

(declare-fun m!4479597 () Bool)

(assert (=> b!3916212 m!4479597))

(assert (=> b!3916211 m!4479315))

(declare-fun m!4479599 () Bool)

(assert (=> bm!284440 m!4479599))

(assert (=> b!3916218 m!4479315))

(assert (=> b!3916224 m!4479315))

(assert (=> b!3916224 m!4479315))

(declare-fun m!4479601 () Bool)

(assert (=> b!3916224 m!4479601))

(assert (=> b!3916224 m!4479307))

(assert (=> b!3916224 m!4479601))

(assert (=> b!3916224 m!4479307))

(declare-fun m!4479603 () Bool)

(assert (=> b!3916224 m!4479603))

(assert (=> b!3916221 m!4479299))

(assert (=> d!1161609 m!4479599))

(assert (=> d!1161609 m!4479297))

(assert (=> b!3916223 m!4479307))

(assert (=> b!3916223 m!4479307))

(assert (=> b!3916223 m!4479597))

(assert (=> b!3915810 d!1161609))

(declare-fun b!3916316 () Bool)

(declare-fun res!1584228 () Bool)

(declare-fun e!2421448 () Bool)

(assert (=> b!3916316 (=> (not res!1584228) (not e!2421448))))

(declare-fun lt!1364518 () Option!8883)

(assert (=> b!3916316 (= res!1584228 (= (value!204831 (_1!23513 (get!13715 lt!1364518))) (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518)))))))))

(declare-fun b!3916317 () Bool)

(assert (=> b!3916317 (= e!2421448 (= (size!31161 (_1!23513 (get!13715 lt!1364518))) (size!31162 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518))))))))

(declare-fun b!3916318 () Bool)

(declare-fun e!2421447 () Option!8883)

(declare-datatypes ((tuple2!40766 0))(
  ( (tuple2!40767 (_1!23517 List!41628) (_2!23517 List!41628)) )
))
(declare-fun lt!1364515 () tuple2!40766)

(declare-fun size!31167 (BalanceConc!24942) Int)

(assert (=> b!3916318 (= e!2421447 (Some!8882 (tuple2!40759 (Token!12065 (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 (_1!23517 lt!1364515))) (rule!9387 (_1!23513 (v!39206 lt!1364311))) (size!31167 (seqFromList!4730 (_1!23517 lt!1364515))) (_1!23517 lt!1364515)) (_2!23517 lt!1364515))))))

(declare-fun lt!1364519 () Unit!59640)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1212 (Regex!11368 List!41628) Unit!59640)

(assert (=> b!3916318 (= lt!1364519 (longestMatchIsAcceptedByMatchOrIsEmpty!1212 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364304))))

(declare-fun res!1584232 () Bool)

(declare-fun findLongestMatchInner!1239 (Regex!11368 List!41628 Int List!41628 List!41628 Int) tuple2!40766)

(assert (=> b!3916318 (= res!1584232 (isEmpty!24701 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(declare-fun e!2421446 () Bool)

(assert (=> b!3916318 (=> res!1584232 e!2421446)))

(assert (=> b!3916318 e!2421446))

(declare-fun lt!1364517 () Unit!59640)

(assert (=> b!3916318 (= lt!1364517 lt!1364519)))

(declare-fun lt!1364516 () Unit!59640)

(declare-fun lemmaSemiInverse!1745 (TokenValueInjection!12814 BalanceConc!24942) Unit!59640)

(assert (=> b!3916318 (= lt!1364516 (lemmaSemiInverse!1745 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 (_1!23517 lt!1364515))))))

(declare-fun b!3916319 () Bool)

(declare-fun e!2421445 () Bool)

(assert (=> b!3916319 (= e!2421445 e!2421448)))

(declare-fun res!1584229 () Bool)

(assert (=> b!3916319 (=> (not res!1584229) (not e!2421448))))

(assert (=> b!3916319 (= res!1584229 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))))))

(declare-fun b!3916320 () Bool)

(declare-fun res!1584227 () Bool)

(assert (=> b!3916320 (=> (not res!1584227) (not e!2421448))))

(assert (=> b!3916320 (= res!1584227 (= (rule!9387 (_1!23513 (get!13715 lt!1364518))) (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(declare-fun d!1161625 () Bool)

(assert (=> d!1161625 e!2421445))

(declare-fun res!1584233 () Bool)

(assert (=> d!1161625 (=> res!1584233 e!2421445)))

(assert (=> d!1161625 (= res!1584233 (isEmpty!24705 lt!1364518))))

(assert (=> d!1161625 (= lt!1364518 e!2421447)))

(declare-fun c!680651 () Bool)

(assert (=> d!1161625 (= c!680651 (isEmpty!24701 (_1!23517 lt!1364515)))))

(declare-fun findLongestMatch!1152 (Regex!11368 List!41628) tuple2!40766)

(assert (=> d!1161625 (= lt!1364515 (findLongestMatch!1152 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364304))))

(assert (=> d!1161625 (ruleValid!2411 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161625 (= (maxPrefixOneRule!2426 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) lt!1364304) lt!1364518)))

(declare-fun b!3916321 () Bool)

(assert (=> b!3916321 (= e!2421446 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(declare-fun b!3916322 () Bool)

(declare-fun res!1584230 () Bool)

(assert (=> b!3916322 (=> (not res!1584230) (not e!2421448))))

(assert (=> b!3916322 (= res!1584230 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518)))) (_2!23513 (get!13715 lt!1364518))) lt!1364304))))

(declare-fun b!3916323 () Bool)

(assert (=> b!3916323 (= e!2421447 None!8882)))

(declare-fun b!3916324 () Bool)

(declare-fun res!1584231 () Bool)

(assert (=> b!3916324 (=> (not res!1584231) (not e!2421448))))

(assert (=> b!3916324 (= res!1584231 (< (size!31162 (_2!23513 (get!13715 lt!1364518))) (size!31162 lt!1364304)))))

(assert (= (and d!1161625 c!680651) b!3916323))

(assert (= (and d!1161625 (not c!680651)) b!3916318))

(assert (= (and b!3916318 (not res!1584232)) b!3916321))

(assert (= (and d!1161625 (not res!1584233)) b!3916319))

(assert (= (and b!3916319 res!1584229) b!3916322))

(assert (= (and b!3916322 res!1584230) b!3916324))

(assert (= (and b!3916324 res!1584231) b!3916320))

(assert (= (and b!3916320 res!1584227) b!3916316))

(assert (= (and b!3916316 res!1584228) b!3916317))

(declare-fun m!4479665 () Bool)

(assert (=> b!3916317 m!4479665))

(declare-fun m!4479667 () Bool)

(assert (=> b!3916317 m!4479667))

(declare-fun m!4479669 () Bool)

(assert (=> b!3916321 m!4479669))

(assert (=> b!3916321 m!4479125))

(assert (=> b!3916321 m!4479669))

(assert (=> b!3916321 m!4479125))

(declare-fun m!4479671 () Bool)

(assert (=> b!3916321 m!4479671))

(declare-fun m!4479673 () Bool)

(assert (=> b!3916321 m!4479673))

(assert (=> b!3916316 m!4479665))

(declare-fun m!4479675 () Bool)

(assert (=> b!3916316 m!4479675))

(assert (=> b!3916316 m!4479675))

(declare-fun m!4479677 () Bool)

(assert (=> b!3916316 m!4479677))

(declare-fun m!4479679 () Bool)

(assert (=> d!1161625 m!4479679))

(declare-fun m!4479681 () Bool)

(assert (=> d!1161625 m!4479681))

(declare-fun m!4479683 () Bool)

(assert (=> d!1161625 m!4479683))

(assert (=> d!1161625 m!4479173))

(assert (=> b!3916318 m!4479669))

(assert (=> b!3916318 m!4479125))

(assert (=> b!3916318 m!4479671))

(assert (=> b!3916318 m!4479669))

(declare-fun m!4479685 () Bool)

(assert (=> b!3916318 m!4479685))

(declare-fun m!4479687 () Bool)

(assert (=> b!3916318 m!4479687))

(assert (=> b!3916318 m!4479687))

(declare-fun m!4479689 () Bool)

(assert (=> b!3916318 m!4479689))

(declare-fun m!4479691 () Bool)

(assert (=> b!3916318 m!4479691))

(assert (=> b!3916318 m!4479687))

(declare-fun m!4479693 () Bool)

(assert (=> b!3916318 m!4479693))

(assert (=> b!3916318 m!4479125))

(assert (=> b!3916318 m!4479687))

(declare-fun m!4479695 () Bool)

(assert (=> b!3916318 m!4479695))

(assert (=> b!3916319 m!4479665))

(declare-fun m!4479697 () Bool)

(assert (=> b!3916319 m!4479697))

(assert (=> b!3916319 m!4479697))

(declare-fun m!4479699 () Bool)

(assert (=> b!3916319 m!4479699))

(assert (=> b!3916319 m!4479699))

(declare-fun m!4479701 () Bool)

(assert (=> b!3916319 m!4479701))

(assert (=> b!3916322 m!4479665))

(assert (=> b!3916322 m!4479697))

(assert (=> b!3916322 m!4479697))

(assert (=> b!3916322 m!4479699))

(assert (=> b!3916322 m!4479699))

(declare-fun m!4479703 () Bool)

(assert (=> b!3916322 m!4479703))

(assert (=> b!3916320 m!4479665))

(assert (=> b!3916324 m!4479665))

(declare-fun m!4479705 () Bool)

(assert (=> b!3916324 m!4479705))

(assert (=> b!3916324 m!4479125))

(assert (=> b!3915810 d!1161625))

(declare-fun d!1161651 () Bool)

(assert (=> d!1161651 (= (maxPrefixOneRule!2426 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) lt!1364304) (Some!8882 (tuple2!40759 (Token!12065 (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 lt!1364317)) (rule!9387 (_1!23513 (v!39206 lt!1364311))) (size!31162 lt!1364317) lt!1364317) (_2!23513 (v!39206 lt!1364311)))))))

(declare-fun lt!1364522 () Unit!59640)

(declare-fun choose!23197 (LexerInterface!6052 List!41630 List!41628 List!41628 List!41628 Rule!12726) Unit!59640)

(assert (=> d!1161651 (= lt!1364522 (choose!23197 thiss!20629 rules!2768 lt!1364317 lt!1364304 (_2!23513 (v!39206 lt!1364311)) (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161651 (not (isEmpty!24700 rules!2768))))

(assert (=> d!1161651 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1294 thiss!20629 rules!2768 lt!1364317 lt!1364304 (_2!23513 (v!39206 lt!1364311)) (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364522)))

(declare-fun bs!585708 () Bool)

(assert (= bs!585708 d!1161651))

(assert (=> bs!585708 m!4479171))

(assert (=> bs!585708 m!4479187))

(assert (=> bs!585708 m!4479175))

(assert (=> bs!585708 m!4479181))

(assert (=> bs!585708 m!4479175))

(assert (=> bs!585708 m!4479107))

(declare-fun m!4479707 () Bool)

(assert (=> bs!585708 m!4479707))

(assert (=> b!3915810 d!1161651))

(declare-fun d!1161653 () Bool)

(declare-fun res!1584234 () Bool)

(declare-fun e!2421449 () Bool)

(assert (=> d!1161653 (=> (not res!1584234) (not e!2421449))))

(assert (=> d!1161653 (= res!1584234 (not (isEmpty!24701 (originalCharacters!7063 (h!46925 suffixTokens!72)))))))

(assert (=> d!1161653 (= (inv!55696 (h!46925 suffixTokens!72)) e!2421449)))

(declare-fun b!3916325 () Bool)

(declare-fun res!1584235 () Bool)

(assert (=> b!3916325 (=> (not res!1584235) (not e!2421449))))

(assert (=> b!3916325 (= res!1584235 (= (originalCharacters!7063 (h!46925 suffixTokens!72)) (list!15430 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))))))

(declare-fun b!3916326 () Bool)

(assert (=> b!3916326 (= e!2421449 (= (size!31161 (h!46925 suffixTokens!72)) (size!31162 (originalCharacters!7063 (h!46925 suffixTokens!72)))))))

(assert (= (and d!1161653 res!1584234) b!3916325))

(assert (= (and b!3916325 res!1584235) b!3916326))

(declare-fun b_lambda!114657 () Bool)

(assert (=> (not b_lambda!114657) (not b!3916325)))

(declare-fun t!323767 () Bool)

(declare-fun tb!233411 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323767) tb!233411))

(declare-fun b!3916327 () Bool)

(declare-fun e!2421450 () Bool)

(declare-fun tp!1192005 () Bool)

(assert (=> b!3916327 (= e!2421450 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))) tp!1192005))))

(declare-fun result!282894 () Bool)

(assert (=> tb!233411 (= result!282894 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))) e!2421450))))

(assert (= tb!233411 b!3916327))

(declare-fun m!4479709 () Bool)

(assert (=> b!3916327 m!4479709))

(declare-fun m!4479711 () Bool)

(assert (=> tb!233411 m!4479711))

(assert (=> b!3916325 t!323767))

(declare-fun b_and!298181 () Bool)

(assert (= b_and!298169 (and (=> t!323767 result!282894) b_and!298181)))

(declare-fun t!323769 () Bool)

(declare-fun tb!233413 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323769) tb!233413))

(declare-fun result!282896 () Bool)

(assert (= result!282896 result!282894))

(assert (=> b!3916325 t!323769))

(declare-fun b_and!298183 () Bool)

(assert (= b_and!298171 (and (=> t!323769 result!282896) b_and!298183)))

(declare-fun t!323771 () Bool)

(declare-fun tb!233415 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323771) tb!233415))

(declare-fun result!282898 () Bool)

(assert (= result!282898 result!282894))

(assert (=> b!3916325 t!323771))

(declare-fun b_and!298185 () Bool)

(assert (= b_and!298173 (and (=> t!323771 result!282898) b_and!298185)))

(declare-fun m!4479713 () Bool)

(assert (=> d!1161653 m!4479713))

(declare-fun m!4479715 () Bool)

(assert (=> b!3916325 m!4479715))

(assert (=> b!3916325 m!4479715))

(declare-fun m!4479717 () Bool)

(assert (=> b!3916325 m!4479717))

(declare-fun m!4479719 () Bool)

(assert (=> b!3916326 m!4479719))

(assert (=> b!3915788 d!1161653))

(declare-fun b!3916338 () Bool)

(declare-fun b_free!106361 () Bool)

(declare-fun b_next!107065 () Bool)

(assert (=> b!3916338 (= b_free!106361 (not b_next!107065))))

(declare-fun tb!233417 () Bool)

(declare-fun t!323773 () Bool)

(assert (=> (and b!3916338 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323773) tb!233417))

(declare-fun result!282902 () Bool)

(assert (= result!282902 result!282866))

(assert (=> d!1161541 t!323773))

(declare-fun tp!1192014 () Bool)

(declare-fun b_and!298187 () Bool)

(assert (=> b!3916338 (= tp!1192014 (and (=> t!323773 result!282902) b_and!298187))))

(declare-fun b_free!106363 () Bool)

(declare-fun b_next!107067 () Bool)

(assert (=> b!3916338 (= b_free!106363 (not b_next!107067))))

(declare-fun t!323775 () Bool)

(declare-fun tb!233419 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323775) tb!233419))

(declare-fun result!282904 () Bool)

(assert (= result!282904 result!282874))

(assert (=> d!1161545 t!323775))

(declare-fun t!323777 () Bool)

(declare-fun tb!233421 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323777) tb!233421))

(declare-fun result!282906 () Bool)

(assert (= result!282906 result!282882))

(assert (=> b!3916163 t!323777))

(declare-fun t!323779 () Bool)

(declare-fun tb!233423 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323779) tb!233423))

(declare-fun result!282908 () Bool)

(assert (= result!282908 result!282894))

(assert (=> b!3916325 t!323779))

(declare-fun tp!1192015 () Bool)

(declare-fun b_and!298189 () Bool)

(assert (=> b!3916338 (= tp!1192015 (and (=> t!323775 result!282904) (=> t!323777 result!282906) (=> t!323779 result!282908) b_and!298189))))

(declare-fun e!2421459 () Bool)

(assert (=> b!3916338 (= e!2421459 (and tp!1192014 tp!1192015))))

(declare-fun tp!1192017 () Bool)

(declare-fun b!3916337 () Bool)

(declare-fun e!2421461 () Bool)

(assert (=> b!3916337 (= e!2421461 (and tp!1192017 (inv!55693 (tag!7323 (h!46926 (t!323731 rules!2768)))) (inv!55697 (transformation!6463 (h!46926 (t!323731 rules!2768)))) e!2421459))))

(declare-fun b!3916336 () Bool)

(declare-fun e!2421460 () Bool)

(declare-fun tp!1192016 () Bool)

(assert (=> b!3916336 (= e!2421460 (and e!2421461 tp!1192016))))

(assert (=> b!3915806 (= tp!1191943 e!2421460)))

(assert (= b!3916337 b!3916338))

(assert (= b!3916336 b!3916337))

(assert (= (and b!3915806 (is-Cons!41506 (t!323731 rules!2768))) b!3916336))

(declare-fun m!4479721 () Bool)

(assert (=> b!3916337 m!4479721))

(declare-fun m!4479723 () Bool)

(assert (=> b!3916337 m!4479723))

(declare-fun b!3916349 () Bool)

(declare-fun e!2421465 () Bool)

(assert (=> b!3916349 (= e!2421465 tp_is_empty!19707)))

(declare-fun b!3916352 () Bool)

(declare-fun tp!1192029 () Bool)

(declare-fun tp!1192032 () Bool)

(assert (=> b!3916352 (= e!2421465 (and tp!1192029 tp!1192032))))

(assert (=> b!3915795 (= tp!1191931 e!2421465)))

(declare-fun b!3916351 () Bool)

(declare-fun tp!1192030 () Bool)

(assert (=> b!3916351 (= e!2421465 tp!1192030)))

(declare-fun b!3916350 () Bool)

(declare-fun tp!1192031 () Bool)

(declare-fun tp!1192028 () Bool)

(assert (=> b!3916350 (= e!2421465 (and tp!1192031 tp!1192028))))

(assert (= (and b!3915795 (is-ElementMatch!11368 (regex!6463 (h!46926 rules!2768)))) b!3916349))

(assert (= (and b!3915795 (is-Concat!18062 (regex!6463 (h!46926 rules!2768)))) b!3916350))

(assert (= (and b!3915795 (is-Star!11368 (regex!6463 (h!46926 rules!2768)))) b!3916351))

(assert (= (and b!3915795 (is-Union!11368 (regex!6463 (h!46926 rules!2768)))) b!3916352))

(declare-fun b!3916357 () Bool)

(declare-fun e!2421468 () Bool)

(declare-fun tp!1192035 () Bool)

(assert (=> b!3916357 (= e!2421468 (and tp_is_empty!19707 tp!1192035))))

(assert (=> b!3915807 (= tp!1191939 e!2421468)))

(assert (= (and b!3915807 (is-Cons!41504 (t!323729 suffix!1176))) b!3916357))

(declare-fun b!3916358 () Bool)

(declare-fun e!2421469 () Bool)

(declare-fun tp!1192036 () Bool)

(assert (=> b!3916358 (= e!2421469 (and tp_is_empty!19707 tp!1192036))))

(assert (=> b!3915793 (= tp!1191942 e!2421469)))

(assert (= (and b!3915793 (is-Cons!41504 (t!323729 prefix!426))) b!3916358))

(declare-fun b!3916359 () Bool)

(declare-fun e!2421470 () Bool)

(declare-fun tp!1192037 () Bool)

(assert (=> b!3916359 (= e!2421470 (and tp_is_empty!19707 tp!1192037))))

(assert (=> b!3915792 (= tp!1191933 e!2421470)))

(assert (= (and b!3915792 (is-Cons!41504 (originalCharacters!7063 (h!46925 suffixTokens!72)))) b!3916359))

(declare-fun b!3916360 () Bool)

(declare-fun e!2421471 () Bool)

(assert (=> b!3916360 (= e!2421471 tp_is_empty!19707)))

(declare-fun b!3916363 () Bool)

(declare-fun tp!1192039 () Bool)

(declare-fun tp!1192042 () Bool)

(assert (=> b!3916363 (= e!2421471 (and tp!1192039 tp!1192042))))

(assert (=> b!3915804 (= tp!1191932 e!2421471)))

(declare-fun b!3916362 () Bool)

(declare-fun tp!1192040 () Bool)

(assert (=> b!3916362 (= e!2421471 tp!1192040)))

(declare-fun b!3916361 () Bool)

(declare-fun tp!1192041 () Bool)

(declare-fun tp!1192038 () Bool)

(assert (=> b!3916361 (= e!2421471 (and tp!1192041 tp!1192038))))

(assert (= (and b!3915804 (is-ElementMatch!11368 (regex!6463 (rule!9387 (h!46925 prefixTokens!80))))) b!3916360))

(assert (= (and b!3915804 (is-Concat!18062 (regex!6463 (rule!9387 (h!46925 prefixTokens!80))))) b!3916361))

(assert (= (and b!3915804 (is-Star!11368 (regex!6463 (rule!9387 (h!46925 prefixTokens!80))))) b!3916362))

(assert (= (and b!3915804 (is-Union!11368 (regex!6463 (rule!9387 (h!46925 prefixTokens!80))))) b!3916363))

(declare-fun b!3916364 () Bool)

(declare-fun e!2421472 () Bool)

(declare-fun tp!1192043 () Bool)

(assert (=> b!3916364 (= e!2421472 (and tp_is_empty!19707 tp!1192043))))

(assert (=> b!3915790 (= tp!1191944 e!2421472)))

(assert (= (and b!3915790 (is-Cons!41504 (t!323729 suffixResult!91))) b!3916364))

(declare-fun b!3916365 () Bool)

(declare-fun e!2421473 () Bool)

(declare-fun tp!1192044 () Bool)

(assert (=> b!3916365 (= e!2421473 (and tp_is_empty!19707 tp!1192044))))

(assert (=> b!3915809 (= tp!1191945 e!2421473)))

(assert (= (and b!3915809 (is-Cons!41504 (originalCharacters!7063 (h!46925 prefixTokens!80)))) b!3916365))

(declare-fun b!3916366 () Bool)

(declare-fun e!2421474 () Bool)

(assert (=> b!3916366 (= e!2421474 tp_is_empty!19707)))

(declare-fun b!3916369 () Bool)

(declare-fun tp!1192046 () Bool)

(declare-fun tp!1192049 () Bool)

(assert (=> b!3916369 (= e!2421474 (and tp!1192046 tp!1192049))))

(assert (=> b!3915798 (= tp!1191938 e!2421474)))

(declare-fun b!3916368 () Bool)

(declare-fun tp!1192047 () Bool)

(assert (=> b!3916368 (= e!2421474 tp!1192047)))

(declare-fun b!3916367 () Bool)

(declare-fun tp!1192048 () Bool)

(declare-fun tp!1192045 () Bool)

(assert (=> b!3916367 (= e!2421474 (and tp!1192048 tp!1192045))))

(assert (= (and b!3915798 (is-ElementMatch!11368 (regex!6463 (rule!9387 (h!46925 suffixTokens!72))))) b!3916366))

(assert (= (and b!3915798 (is-Concat!18062 (regex!6463 (rule!9387 (h!46925 suffixTokens!72))))) b!3916367))

(assert (= (and b!3915798 (is-Star!11368 (regex!6463 (rule!9387 (h!46925 suffixTokens!72))))) b!3916368))

(assert (= (and b!3915798 (is-Union!11368 (regex!6463 (rule!9387 (h!46925 suffixTokens!72))))) b!3916369))

(declare-fun b!3916383 () Bool)

(declare-fun b_free!106365 () Bool)

(declare-fun b_next!107069 () Bool)

(assert (=> b!3916383 (= b_free!106365 (not b_next!107069))))

(declare-fun tb!233425 () Bool)

(declare-fun t!323781 () Bool)

(assert (=> (and b!3916383 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323781) tb!233425))

(declare-fun result!282916 () Bool)

(assert (= result!282916 result!282866))

(assert (=> d!1161541 t!323781))

(declare-fun b_and!298191 () Bool)

(declare-fun tp!1192062 () Bool)

(assert (=> b!3916383 (= tp!1192062 (and (=> t!323781 result!282916) b_and!298191))))

(declare-fun b_free!106367 () Bool)

(declare-fun b_next!107071 () Bool)

(assert (=> b!3916383 (= b_free!106367 (not b_next!107071))))

(declare-fun t!323783 () Bool)

(declare-fun tb!233427 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323783) tb!233427))

(declare-fun result!282918 () Bool)

(assert (= result!282918 result!282874))

(assert (=> d!1161545 t!323783))

(declare-fun t!323785 () Bool)

(declare-fun tb!233429 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323785) tb!233429))

(declare-fun result!282920 () Bool)

(assert (= result!282920 result!282882))

(assert (=> b!3916163 t!323785))

(declare-fun tb!233431 () Bool)

(declare-fun t!323787 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323787) tb!233431))

(declare-fun result!282922 () Bool)

(assert (= result!282922 result!282894))

(assert (=> b!3916325 t!323787))

(declare-fun tp!1192063 () Bool)

(declare-fun b_and!298193 () Bool)

(assert (=> b!3916383 (= tp!1192063 (and (=> t!323783 result!282918) (=> t!323785 result!282920) (=> t!323787 result!282922) b_and!298193))))

(declare-fun e!2421492 () Bool)

(assert (=> b!3916383 (= e!2421492 (and tp!1192062 tp!1192063))))

(declare-fun tp!1192061 () Bool)

(declare-fun e!2421488 () Bool)

(declare-fun b!3916380 () Bool)

(declare-fun e!2421491 () Bool)

(assert (=> b!3916380 (= e!2421491 (and (inv!55696 (h!46925 (t!323730 prefixTokens!80))) e!2421488 tp!1192061))))

(assert (=> b!3915787 (= tp!1191930 e!2421491)))

(declare-fun tp!1192064 () Bool)

(declare-fun b!3916382 () Bool)

(declare-fun e!2421487 () Bool)

(assert (=> b!3916382 (= e!2421487 (and tp!1192064 (inv!55693 (tag!7323 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (inv!55697 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) e!2421492))))

(declare-fun b!3916381 () Bool)

(declare-fun tp!1192060 () Bool)

(assert (=> b!3916381 (= e!2421488 (and (inv!21 (value!204831 (h!46925 (t!323730 prefixTokens!80)))) e!2421487 tp!1192060))))

(assert (= b!3916382 b!3916383))

(assert (= b!3916381 b!3916382))

(assert (= b!3916380 b!3916381))

(assert (= (and b!3915787 (is-Cons!41505 (t!323730 prefixTokens!80))) b!3916380))

(declare-fun m!4479725 () Bool)

(assert (=> b!3916380 m!4479725))

(declare-fun m!4479727 () Bool)

(assert (=> b!3916382 m!4479727))

(declare-fun m!4479729 () Bool)

(assert (=> b!3916382 m!4479729))

(declare-fun m!4479731 () Bool)

(assert (=> b!3916381 m!4479731))

(declare-fun b!3916387 () Bool)

(declare-fun b_free!106369 () Bool)

(declare-fun b_next!107073 () Bool)

(assert (=> b!3916387 (= b_free!106369 (not b_next!107073))))

(declare-fun tb!233433 () Bool)

(declare-fun t!323789 () Bool)

(assert (=> (and b!3916387 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323789) tb!233433))

(declare-fun result!282924 () Bool)

(assert (= result!282924 result!282866))

(assert (=> d!1161541 t!323789))

(declare-fun b_and!298195 () Bool)

(declare-fun tp!1192067 () Bool)

(assert (=> b!3916387 (= tp!1192067 (and (=> t!323789 result!282924) b_and!298195))))

(declare-fun b_free!106371 () Bool)

(declare-fun b_next!107075 () Bool)

(assert (=> b!3916387 (= b_free!106371 (not b_next!107075))))

(declare-fun t!323791 () Bool)

(declare-fun tb!233435 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323791) tb!233435))

(declare-fun result!282926 () Bool)

(assert (= result!282926 result!282874))

(assert (=> d!1161545 t!323791))

(declare-fun t!323793 () Bool)

(declare-fun tb!233437 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323793) tb!233437))

(declare-fun result!282928 () Bool)

(assert (= result!282928 result!282882))

(assert (=> b!3916163 t!323793))

(declare-fun t!323795 () Bool)

(declare-fun tb!233439 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323795) tb!233439))

(declare-fun result!282930 () Bool)

(assert (= result!282930 result!282894))

(assert (=> b!3916325 t!323795))

(declare-fun tp!1192068 () Bool)

(declare-fun b_and!298197 () Bool)

(assert (=> b!3916387 (= tp!1192068 (and (=> t!323791 result!282926) (=> t!323793 result!282928) (=> t!323795 result!282930) b_and!298197))))

(declare-fun e!2421498 () Bool)

(assert (=> b!3916387 (= e!2421498 (and tp!1192067 tp!1192068))))

(declare-fun b!3916384 () Bool)

(declare-fun e!2421497 () Bool)

(declare-fun e!2421494 () Bool)

(declare-fun tp!1192066 () Bool)

(assert (=> b!3916384 (= e!2421497 (and (inv!55696 (h!46925 (t!323730 suffixTokens!72))) e!2421494 tp!1192066))))

(assert (=> b!3915788 (= tp!1191941 e!2421497)))

(declare-fun e!2421493 () Bool)

(declare-fun tp!1192069 () Bool)

(declare-fun b!3916386 () Bool)

(assert (=> b!3916386 (= e!2421493 (and tp!1192069 (inv!55693 (tag!7323 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (inv!55697 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) e!2421498))))

(declare-fun b!3916385 () Bool)

(declare-fun tp!1192065 () Bool)

(assert (=> b!3916385 (= e!2421494 (and (inv!21 (value!204831 (h!46925 (t!323730 suffixTokens!72)))) e!2421493 tp!1192065))))

(assert (= b!3916386 b!3916387))

(assert (= b!3916385 b!3916386))

(assert (= b!3916384 b!3916385))

(assert (= (and b!3915788 (is-Cons!41505 (t!323730 suffixTokens!72))) b!3916384))

(declare-fun m!4479733 () Bool)

(assert (=> b!3916384 m!4479733))

(declare-fun m!4479735 () Bool)

(assert (=> b!3916386 m!4479735))

(declare-fun m!4479737 () Bool)

(assert (=> b!3916386 m!4479737))

(declare-fun m!4479739 () Bool)

(assert (=> b!3916385 m!4479739))

(declare-fun b_lambda!114659 () Bool)

(assert (= b_lambda!114657 (or (and b!3916338 b_free!106363 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))))) (and b!3915796 b_free!106347) (and b!3916383 b_free!106367 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))))) (and b!3915811 b_free!106339 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))))) (and b!3916387 b_free!106371 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))))) (and b!3915820 b_free!106343 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b_lambda!114659)))

(declare-fun b_lambda!114661 () Bool)

(assert (= b_lambda!114653 (or (and b!3916338 b_free!106363 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))))) (and b!3915796 b_free!106347 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))))) (and b!3916387 b_free!106371 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))))) (and b!3915820 b_free!106343) (and b!3915811 b_free!106339 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))))) (and b!3916383 b_free!106367 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b_lambda!114661)))

(push 1)

(assert (not b_next!107071))

(assert (not b!3916385))

(assert (not b!3916084))

(assert (not b_lambda!114661))

(assert (not b!3916085))

(assert (not b!3916179))

(assert (not b!3916167))

(assert (not b!3916163))

(assert (not d!1161567))

(assert (not b_next!107065))

(assert (not d!1161523))

(assert (not b!3916325))

(assert b_and!298181)

(assert (not b!3916135))

(assert (not b!3916317))

(assert (not b!3916221))

(assert (not b!3916141))

(assert (not b!3916007))

(assert b_and!298183)

(assert (not b!3916103))

(assert b_and!298195)

(assert (not b!3916146))

(assert (not b!3916211))

(assert (not d!1161539))

(assert (not b!3916128))

(assert (not b!3916080))

(assert (not b_next!107069))

(assert (not b!3916109))

(assert (not b!3916115))

(assert (not d!1161521))

(assert (not b!3916164))

(assert (not b_next!107051))

(assert (not b!3916351))

(assert (not b!3916078))

(assert (not b!3916212))

(assert (not d!1161625))

(assert (not d!1161653))

(assert (not b_next!107045))

(assert (not b!3916357))

(assert (not b!3916086))

(assert (not d!1161651))

(assert (not b!3916362))

(assert (not b!3916358))

(assert (not b!3916087))

(assert (not b!3916058))

(assert (not b!3916090))

(assert (not b!3916223))

(assert (not b!3916157))

(assert (not b_next!107041))

(assert tp_is_empty!19707)

(assert (not b!3916381))

(assert (not tb!233393))

(assert (not b!3916321))

(assert (not b!3916156))

(assert (not b_lambda!114659))

(assert (not b!3916350))

(assert (not b!3916153))

(assert (not b!3916319))

(assert b_and!298187)

(assert (not b!3915936))

(assert (not b!3916041))

(assert b_and!298159)

(assert (not b!3916081))

(assert (not b!3916386))

(assert (not b!3916091))

(assert (not b!3916137))

(assert (not b!3916116))

(assert b_and!298185)

(assert (not b!3916149))

(assert (not b!3916316))

(assert (not b!3916021))

(assert (not b!3916033))

(assert (not b_next!107067))

(assert (not b!3916056))

(assert (not b!3916110))

(assert (not b!3915947))

(assert b_and!298161)

(assert (not d!1161515))

(assert (not tb!233411))

(assert (not d!1161579))

(assert (not d!1161511))

(assert (not d!1161535))

(assert (not b!3916165))

(assert (not d!1161609))

(assert (not b!3916104))

(assert (not b!3916365))

(assert (not b!3916361))

(assert (not d!1161529))

(assert b_and!298193)

(assert (not b_next!107043))

(assert (not b!3916006))

(assert (not d!1161591))

(assert b_and!298157)

(assert (not tb!233387))

(assert b_and!298189)

(assert (not d!1161599))

(assert (not d!1161577))

(assert (not b_next!107073))

(assert (not d!1161519))

(assert (not d!1161525))

(assert (not b!3916143))

(assert (not bm!284440))

(assert (not b!3916368))

(assert (not b!3916129))

(assert (not d!1161545))

(assert (not b!3915990))

(assert (not d!1161513))

(assert (not b!3916224))

(assert (not b!3916322))

(assert b_and!298191)

(assert (not d!1161509))

(assert (not b!3916057))

(assert (not b!3916327))

(assert (not d!1161565))

(assert (not b!3916318))

(assert (not b!3916079))

(assert (not b!3916337))

(assert (not b!3916384))

(assert (not b!3916155))

(assert (not d!1161603))

(assert (not b!3916352))

(assert (not b!3915948))

(assert (not b_lambda!114649))

(assert (not b_next!107047))

(assert (not b!3916218))

(assert (not d!1161563))

(assert (not b_lambda!114651))

(assert (not b!3916367))

(assert (not b!3916148))

(assert (not b!3916363))

(assert (not b!3916336))

(assert (not b_next!107049))

(assert (not b!3915949))

(assert b_and!298197)

(assert (not b!3916138))

(assert (not b!3916320))

(assert (not b!3916144))

(assert (not b!3915931))

(assert (not d!1161561))

(assert (not b!3916324))

(assert (not b!3916359))

(assert (not b!3915991))

(assert (not b!3916369))

(assert (not d!1161551))

(assert (not b_next!107075))

(assert (not d!1161559))

(assert (not d!1161573))

(assert (not b!3916082))

(assert (not b!3916326))

(assert (not b!3916112))

(assert (not b!3915987))

(assert (not b!3916364))

(assert (not b!3916380))

(assert (not tb!233399))

(assert (not b!3916152))

(assert (not b!3916044))

(assert (not d!1161607))

(assert (not b!3916382))

(assert (not bm!284434))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!107071))

(assert (not b_next!107065))

(assert b_and!298181)

(assert b_and!298183)

(assert b_and!298195)

(assert (not b_next!107069))

(assert (not b_next!107051))

(assert (not b_next!107045))

(assert (not b_next!107041))

(assert b_and!298187)

(assert (not b_next!107067))

(assert b_and!298161)

(assert (not b_next!107073))

(assert b_and!298191)

(assert (not b_next!107047))

(assert (not b_next!107075))

(assert b_and!298159)

(assert b_and!298185)

(assert b_and!298193)

(assert (not b_next!107043))

(assert b_and!298157)

(assert b_and!298189)

(assert (not b_next!107049))

(assert b_and!298197)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3916549 () Bool)

(declare-fun res!1584293 () Bool)

(declare-fun e!2421604 () Bool)

(assert (=> b!3916549 (=> (not res!1584293) (not e!2421604))))

(declare-fun lt!1364578 () List!41628)

(assert (=> b!3916549 (= res!1584293 (= (size!31162 lt!1364578) (+ (size!31162 (t!323729 lt!1364317)) (size!31162 (_2!23513 lt!1364301)))))))

(declare-fun d!1161703 () Bool)

(assert (=> d!1161703 e!2421604))

(declare-fun res!1584292 () Bool)

(assert (=> d!1161703 (=> (not res!1584292) (not e!2421604))))

(assert (=> d!1161703 (= res!1584292 (= (content!6239 lt!1364578) (set.union (content!6239 (t!323729 lt!1364317)) (content!6239 (_2!23513 lt!1364301)))))))

(declare-fun e!2421603 () List!41628)

(assert (=> d!1161703 (= lt!1364578 e!2421603)))

(declare-fun c!680672 () Bool)

(assert (=> d!1161703 (= c!680672 (is-Nil!41504 (t!323729 lt!1364317)))))

(assert (=> d!1161703 (= (++!10683 (t!323729 lt!1364317) (_2!23513 lt!1364301)) lt!1364578)))

(declare-fun b!3916547 () Bool)

(assert (=> b!3916547 (= e!2421603 (_2!23513 lt!1364301))))

(declare-fun b!3916548 () Bool)

(assert (=> b!3916548 (= e!2421603 (Cons!41504 (h!46924 (t!323729 lt!1364317)) (++!10683 (t!323729 (t!323729 lt!1364317)) (_2!23513 lt!1364301))))))

(declare-fun b!3916550 () Bool)

(assert (=> b!3916550 (= e!2421604 (or (not (= (_2!23513 lt!1364301) Nil!41504)) (= lt!1364578 (t!323729 lt!1364317))))))

(assert (= (and d!1161703 c!680672) b!3916547))

(assert (= (and d!1161703 (not c!680672)) b!3916548))

(assert (= (and d!1161703 res!1584292) b!3916549))

(assert (= (and b!3916549 res!1584293) b!3916550))

(declare-fun m!4479925 () Bool)

(assert (=> b!3916549 m!4479925))

(assert (=> b!3916549 m!4479397))

(assert (=> b!3916549 m!4479093))

(declare-fun m!4479927 () Bool)

(assert (=> d!1161703 m!4479927))

(declare-fun m!4479929 () Bool)

(assert (=> d!1161703 m!4479929))

(assert (=> d!1161703 m!4479491))

(declare-fun m!4479931 () Bool)

(assert (=> b!3916548 m!4479931))

(assert (=> b!3916128 d!1161703))

(declare-fun d!1161705 () Bool)

(assert (=> d!1161705 (= (isEmpty!24701 (tail!5996 lt!1364317)) (is-Nil!41504 (tail!5996 lt!1364317)))))

(assert (=> b!3916223 d!1161705))

(declare-fun d!1161707 () Bool)

(assert (=> d!1161707 (= (tail!5996 lt!1364317) (t!323729 lt!1364317))))

(assert (=> b!3916223 d!1161707))

(declare-fun b!3916551 () Bool)

(declare-fun res!1584294 () Bool)

(declare-fun e!2421605 () Bool)

(assert (=> b!3916551 (=> res!1584294 e!2421605)))

(assert (=> b!3916551 (= res!1584294 (not (is-IntegerValue!20081 (value!204831 (h!46925 (t!323730 suffixTokens!72))))))))

(declare-fun e!2421606 () Bool)

(assert (=> b!3916551 (= e!2421606 e!2421605)))

(declare-fun d!1161709 () Bool)

(declare-fun c!680673 () Bool)

(assert (=> d!1161709 (= c!680673 (is-IntegerValue!20079 (value!204831 (h!46925 (t!323730 suffixTokens!72)))))))

(declare-fun e!2421607 () Bool)

(assert (=> d!1161709 (= (inv!21 (value!204831 (h!46925 (t!323730 suffixTokens!72)))) e!2421607)))

(declare-fun b!3916552 () Bool)

(assert (=> b!3916552 (= e!2421607 (inv!16 (value!204831 (h!46925 (t!323730 suffixTokens!72)))))))

(declare-fun b!3916553 () Bool)

(assert (=> b!3916553 (= e!2421606 (inv!17 (value!204831 (h!46925 (t!323730 suffixTokens!72)))))))

(declare-fun b!3916554 () Bool)

(assert (=> b!3916554 (= e!2421605 (inv!15 (value!204831 (h!46925 (t!323730 suffixTokens!72)))))))

(declare-fun b!3916555 () Bool)

(assert (=> b!3916555 (= e!2421607 e!2421606)))

(declare-fun c!680674 () Bool)

(assert (=> b!3916555 (= c!680674 (is-IntegerValue!20080 (value!204831 (h!46925 (t!323730 suffixTokens!72)))))))

(assert (= (and d!1161709 c!680673) b!3916552))

(assert (= (and d!1161709 (not c!680673)) b!3916555))

(assert (= (and b!3916555 c!680674) b!3916553))

(assert (= (and b!3916555 (not c!680674)) b!3916551))

(assert (= (and b!3916551 (not res!1584294)) b!3916554))

(declare-fun m!4479933 () Bool)

(assert (=> b!3916552 m!4479933))

(declare-fun m!4479935 () Bool)

(assert (=> b!3916553 m!4479935))

(declare-fun m!4479937 () Bool)

(assert (=> b!3916554 m!4479937))

(assert (=> b!3916385 d!1161709))

(declare-fun d!1161711 () Bool)

(declare-fun lt!1364579 () Int)

(assert (=> d!1161711 (>= lt!1364579 0)))

(declare-fun e!2421608 () Int)

(assert (=> d!1161711 (= lt!1364579 e!2421608)))

(declare-fun c!680675 () Bool)

(assert (=> d!1161711 (= c!680675 (is-Nil!41504 (t!323729 prefix!426)))))

(assert (=> d!1161711 (= (size!31162 (t!323729 prefix!426)) lt!1364579)))

(declare-fun b!3916556 () Bool)

(assert (=> b!3916556 (= e!2421608 0)))

(declare-fun b!3916557 () Bool)

(assert (=> b!3916557 (= e!2421608 (+ 1 (size!31162 (t!323729 (t!323729 prefix!426)))))))

(assert (= (and d!1161711 c!680675) b!3916556))

(assert (= (and d!1161711 (not c!680675)) b!3916557))

(declare-fun m!4479939 () Bool)

(assert (=> b!3916557 m!4479939))

(assert (=> b!3916044 d!1161711))

(declare-fun b!3916560 () Bool)

(declare-fun res!1584296 () Bool)

(declare-fun e!2421610 () Bool)

(assert (=> b!3916560 (=> (not res!1584296) (not e!2421610))))

(declare-fun lt!1364580 () List!41628)

(assert (=> b!3916560 (= res!1584296 (= (size!31162 lt!1364580) (+ (size!31162 (t!323729 prefix!426)) (size!31162 suffix!1176))))))

(declare-fun d!1161713 () Bool)

(assert (=> d!1161713 e!2421610))

(declare-fun res!1584295 () Bool)

(assert (=> d!1161713 (=> (not res!1584295) (not e!2421610))))

(assert (=> d!1161713 (= res!1584295 (= (content!6239 lt!1364580) (set.union (content!6239 (t!323729 prefix!426)) (content!6239 suffix!1176))))))

(declare-fun e!2421609 () List!41628)

(assert (=> d!1161713 (= lt!1364580 e!2421609)))

(declare-fun c!680676 () Bool)

(assert (=> d!1161713 (= c!680676 (is-Nil!41504 (t!323729 prefix!426)))))

(assert (=> d!1161713 (= (++!10683 (t!323729 prefix!426) suffix!1176) lt!1364580)))

(declare-fun b!3916558 () Bool)

(assert (=> b!3916558 (= e!2421609 suffix!1176)))

(declare-fun b!3916559 () Bool)

(assert (=> b!3916559 (= e!2421609 (Cons!41504 (h!46924 (t!323729 prefix!426)) (++!10683 (t!323729 (t!323729 prefix!426)) suffix!1176)))))

(declare-fun b!3916561 () Bool)

(assert (=> b!3916561 (= e!2421610 (or (not (= suffix!1176 Nil!41504)) (= lt!1364580 (t!323729 prefix!426))))))

(assert (= (and d!1161713 c!680676) b!3916558))

(assert (= (and d!1161713 (not c!680676)) b!3916559))

(assert (= (and d!1161713 res!1584295) b!3916560))

(assert (= (and b!3916560 res!1584296) b!3916561))

(declare-fun m!4479941 () Bool)

(assert (=> b!3916560 m!4479941))

(assert (=> b!3916560 m!4479405))

(assert (=> b!3916560 m!4479133))

(declare-fun m!4479943 () Bool)

(assert (=> d!1161713 m!4479943))

(declare-fun m!4479945 () Bool)

(assert (=> d!1161713 m!4479945))

(assert (=> d!1161713 m!4479473))

(declare-fun m!4479947 () Bool)

(assert (=> b!3916559 m!4479947))

(assert (=> b!3916109 d!1161713))

(declare-fun b!3916564 () Bool)

(declare-fun res!1584298 () Bool)

(declare-fun e!2421612 () Bool)

(assert (=> b!3916564 (=> (not res!1584298) (not e!2421612))))

(declare-fun lt!1364581 () List!41628)

(assert (=> b!3916564 (= res!1584298 (= (size!31162 lt!1364581) (+ (size!31162 lt!1364317) (size!31162 lt!1364423))))))

(declare-fun d!1161715 () Bool)

(assert (=> d!1161715 e!2421612))

(declare-fun res!1584297 () Bool)

(assert (=> d!1161715 (=> (not res!1584297) (not e!2421612))))

(assert (=> d!1161715 (= res!1584297 (= (content!6239 lt!1364581) (set.union (content!6239 lt!1364317) (content!6239 lt!1364423))))))

(declare-fun e!2421611 () List!41628)

(assert (=> d!1161715 (= lt!1364581 e!2421611)))

(declare-fun c!680677 () Bool)

(assert (=> d!1161715 (= c!680677 (is-Nil!41504 lt!1364317))))

(assert (=> d!1161715 (= (++!10683 lt!1364317 lt!1364423) lt!1364581)))

(declare-fun b!3916562 () Bool)

(assert (=> b!3916562 (= e!2421611 lt!1364423)))

(declare-fun b!3916563 () Bool)

(assert (=> b!3916563 (= e!2421611 (Cons!41504 (h!46924 lt!1364317) (++!10683 (t!323729 lt!1364317) lt!1364423)))))

(declare-fun b!3916565 () Bool)

(assert (=> b!3916565 (= e!2421612 (or (not (= lt!1364423 Nil!41504)) (= lt!1364581 lt!1364317)))))

(assert (= (and d!1161715 c!680677) b!3916562))

(assert (= (and d!1161715 (not c!680677)) b!3916563))

(assert (= (and d!1161715 res!1584297) b!3916564))

(assert (= (and b!3916564 res!1584298) b!3916565))

(declare-fun m!4479949 () Bool)

(assert (=> b!3916564 m!4479949))

(assert (=> b!3916564 m!4479171))

(declare-fun m!4479951 () Bool)

(assert (=> b!3916564 m!4479951))

(declare-fun m!4479953 () Bool)

(assert (=> d!1161715 m!4479953))

(assert (=> d!1161715 m!4479363))

(declare-fun m!4479955 () Bool)

(assert (=> d!1161715 m!4479955))

(declare-fun m!4479957 () Bool)

(assert (=> b!3916563 m!4479957))

(assert (=> d!1161539 d!1161715))

(assert (=> d!1161539 d!1161605))

(assert (=> d!1161539 d!1161549))

(declare-fun d!1161717 () Bool)

(declare-fun lt!1364584 () Int)

(assert (=> d!1161717 (>= lt!1364584 0)))

(declare-fun e!2421615 () Int)

(assert (=> d!1161717 (= lt!1364584 e!2421615)))

(declare-fun c!680680 () Bool)

(assert (=> d!1161717 (= c!680680 (is-Nil!41505 (_1!23514 lt!1364450)))))

(assert (=> d!1161717 (= (size!31165 (_1!23514 lt!1364450)) lt!1364584)))

(declare-fun b!3916570 () Bool)

(assert (=> b!3916570 (= e!2421615 0)))

(declare-fun b!3916571 () Bool)

(assert (=> b!3916571 (= e!2421615 (+ 1 (size!31165 (t!323730 (_1!23514 lt!1364450)))))))

(assert (= (and d!1161717 c!680680) b!3916570))

(assert (= (and d!1161717 (not c!680680)) b!3916571))

(declare-fun m!4479959 () Bool)

(assert (=> b!3916571 m!4479959))

(assert (=> d!1161561 d!1161717))

(assert (=> d!1161561 d!1161559))

(declare-fun d!1161719 () Bool)

(assert (=> d!1161719 (= (get!13715 lt!1364448) (v!39206 lt!1364448))))

(assert (=> b!3916079 d!1161719))

(declare-fun d!1161721 () Bool)

(assert (=> d!1161721 (= (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448))))) (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448))))))))

(declare-fun b_lambda!114671 () Bool)

(assert (=> (not b_lambda!114671) (not d!1161721)))

(declare-fun tb!233477 () Bool)

(declare-fun t!323835 () Bool)

(assert (=> (and b!3916387 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323835) tb!233477))

(declare-fun result!282978 () Bool)

(assert (=> tb!233477 (= result!282978 (inv!21 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448)))))))))

(declare-fun m!4479961 () Bool)

(assert (=> tb!233477 m!4479961))

(assert (=> d!1161721 t!323835))

(declare-fun b_and!298223 () Bool)

(assert (= b_and!298195 (and (=> t!323835 result!282978) b_and!298223)))

(declare-fun tb!233479 () Bool)

(declare-fun t!323837 () Bool)

(assert (=> (and b!3916338 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323837) tb!233479))

(declare-fun result!282980 () Bool)

(assert (= result!282980 result!282978))

(assert (=> d!1161721 t!323837))

(declare-fun b_and!298225 () Bool)

(assert (= b_and!298187 (and (=> t!323837 result!282980) b_and!298225)))

(declare-fun t!323839 () Bool)

(declare-fun tb!233481 () Bool)

(assert (=> (and b!3915820 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323839) tb!233481))

(declare-fun result!282982 () Bool)

(assert (= result!282982 result!282978))

(assert (=> d!1161721 t!323839))

(declare-fun b_and!298227 () Bool)

(assert (= b_and!298159 (and (=> t!323839 result!282982) b_and!298227)))

(declare-fun t!323841 () Bool)

(declare-fun tb!233483 () Bool)

(assert (=> (and b!3916383 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323841) tb!233483))

(declare-fun result!282984 () Bool)

(assert (= result!282984 result!282978))

(assert (=> d!1161721 t!323841))

(declare-fun b_and!298229 () Bool)

(assert (= b_and!298191 (and (=> t!323841 result!282984) b_and!298229)))

(declare-fun tb!233485 () Bool)

(declare-fun t!323843 () Bool)

(assert (=> (and b!3915811 (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323843) tb!233485))

(declare-fun result!282986 () Bool)

(assert (= result!282986 result!282978))

(assert (=> d!1161721 t!323843))

(declare-fun b_and!298231 () Bool)

(assert (= b_and!298157 (and (=> t!323843 result!282986) b_and!298231)))

(declare-fun t!323845 () Bool)

(declare-fun tb!233487 () Bool)

(assert (=> (and b!3915796 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323845) tb!233487))

(declare-fun result!282988 () Bool)

(assert (= result!282988 result!282978))

(assert (=> d!1161721 t!323845))

(declare-fun b_and!298233 () Bool)

(assert (= b_and!298161 (and (=> t!323845 result!282988) b_and!298233)))

(assert (=> d!1161721 m!4479427))

(declare-fun m!4479963 () Bool)

(assert (=> d!1161721 m!4479963))

(assert (=> b!3916079 d!1161721))

(declare-fun d!1161723 () Bool)

(assert (=> d!1161723 (= (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448)))) (fromListB!2187 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448)))))))

(declare-fun bs!585717 () Bool)

(assert (= bs!585717 d!1161723))

(declare-fun m!4479965 () Bool)

(assert (=> bs!585717 m!4479965))

(assert (=> b!3916079 d!1161723))

(declare-fun d!1161725 () Bool)

(assert (=> d!1161725 (= (list!15430 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))) (list!15432 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))))))

(declare-fun bs!585718 () Bool)

(assert (= bs!585718 d!1161725))

(declare-fun m!4479967 () Bool)

(assert (=> bs!585718 m!4479967))

(assert (=> b!3916163 d!1161725))

(declare-fun b!3916572 () Bool)

(declare-fun res!1584299 () Bool)

(declare-fun e!2421617 () Bool)

(assert (=> b!3916572 (=> res!1584299 e!2421617)))

(assert (=> b!3916572 (= res!1584299 (not (is-IntegerValue!20081 (value!204831 (h!46925 (t!323730 prefixTokens!80))))))))

(declare-fun e!2421618 () Bool)

(assert (=> b!3916572 (= e!2421618 e!2421617)))

(declare-fun d!1161727 () Bool)

(declare-fun c!680681 () Bool)

(assert (=> d!1161727 (= c!680681 (is-IntegerValue!20079 (value!204831 (h!46925 (t!323730 prefixTokens!80)))))))

(declare-fun e!2421619 () Bool)

(assert (=> d!1161727 (= (inv!21 (value!204831 (h!46925 (t!323730 prefixTokens!80)))) e!2421619)))

(declare-fun b!3916573 () Bool)

(assert (=> b!3916573 (= e!2421619 (inv!16 (value!204831 (h!46925 (t!323730 prefixTokens!80)))))))

(declare-fun b!3916574 () Bool)

(assert (=> b!3916574 (= e!2421618 (inv!17 (value!204831 (h!46925 (t!323730 prefixTokens!80)))))))

(declare-fun b!3916575 () Bool)

(assert (=> b!3916575 (= e!2421617 (inv!15 (value!204831 (h!46925 (t!323730 prefixTokens!80)))))))

(declare-fun b!3916576 () Bool)

(assert (=> b!3916576 (= e!2421619 e!2421618)))

(declare-fun c!680682 () Bool)

(assert (=> b!3916576 (= c!680682 (is-IntegerValue!20080 (value!204831 (h!46925 (t!323730 prefixTokens!80)))))))

(assert (= (and d!1161727 c!680681) b!3916573))

(assert (= (and d!1161727 (not c!680681)) b!3916576))

(assert (= (and b!3916576 c!680682) b!3916574))

(assert (= (and b!3916576 (not c!680682)) b!3916572))

(assert (= (and b!3916572 (not res!1584299)) b!3916575))

(declare-fun m!4479969 () Bool)

(assert (=> b!3916573 m!4479969))

(declare-fun m!4479971 () Bool)

(assert (=> b!3916574 m!4479971))

(declare-fun m!4479973 () Bool)

(assert (=> b!3916575 m!4479973))

(assert (=> b!3916381 d!1161727))

(declare-fun d!1161729 () Bool)

(declare-fun lt!1364585 () Int)

(assert (=> d!1161729 (>= lt!1364585 0)))

(declare-fun e!2421620 () Int)

(assert (=> d!1161729 (= lt!1364585 e!2421620)))

(declare-fun c!680683 () Bool)

(assert (=> d!1161729 (= c!680683 (is-Nil!41504 lt!1364418))))

(assert (=> d!1161729 (= (size!31162 lt!1364418) lt!1364585)))

(declare-fun b!3916577 () Bool)

(assert (=> b!3916577 (= e!2421620 0)))

(declare-fun b!3916578 () Bool)

(assert (=> b!3916578 (= e!2421620 (+ 1 (size!31162 (t!323729 lt!1364418))))))

(assert (= (and d!1161729 c!680683) b!3916577))

(assert (= (and d!1161729 (not c!680683)) b!3916578))

(declare-fun m!4479975 () Bool)

(assert (=> b!3916578 m!4479975))

(assert (=> b!3916007 d!1161729))

(assert (=> b!3916007 d!1161549))

(assert (=> b!3916007 d!1161595))

(declare-fun b!3916581 () Bool)

(declare-fun res!1584301 () Bool)

(declare-fun e!2421622 () Bool)

(assert (=> b!3916581 (=> (not res!1584301) (not e!2421622))))

(declare-fun lt!1364586 () List!41628)

(assert (=> b!3916581 (= res!1584301 (= (size!31162 lt!1364586) (+ (size!31162 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))) (size!31162 (_2!23513 (get!13715 lt!1364518))))))))

(declare-fun d!1161731 () Bool)

(assert (=> d!1161731 e!2421622))

(declare-fun res!1584300 () Bool)

(assert (=> d!1161731 (=> (not res!1584300) (not e!2421622))))

(assert (=> d!1161731 (= res!1584300 (= (content!6239 lt!1364586) (set.union (content!6239 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))) (content!6239 (_2!23513 (get!13715 lt!1364518))))))))

(declare-fun e!2421621 () List!41628)

(assert (=> d!1161731 (= lt!1364586 e!2421621)))

(declare-fun c!680684 () Bool)

(assert (=> d!1161731 (= c!680684 (is-Nil!41504 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))))))

(assert (=> d!1161731 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518)))) (_2!23513 (get!13715 lt!1364518))) lt!1364586)))

(declare-fun b!3916579 () Bool)

(assert (=> b!3916579 (= e!2421621 (_2!23513 (get!13715 lt!1364518)))))

(declare-fun b!3916580 () Bool)

(assert (=> b!3916580 (= e!2421621 (Cons!41504 (h!46924 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))) (++!10683 (t!323729 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))) (_2!23513 (get!13715 lt!1364518)))))))

(declare-fun b!3916582 () Bool)

(assert (=> b!3916582 (= e!2421622 (or (not (= (_2!23513 (get!13715 lt!1364518)) Nil!41504)) (= lt!1364586 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518)))))))))

(assert (= (and d!1161731 c!680684) b!3916579))

(assert (= (and d!1161731 (not c!680684)) b!3916580))

(assert (= (and d!1161731 res!1584300) b!3916581))

(assert (= (and b!3916581 res!1584301) b!3916582))

(declare-fun m!4479977 () Bool)

(assert (=> b!3916581 m!4479977))

(assert (=> b!3916581 m!4479699))

(declare-fun m!4479979 () Bool)

(assert (=> b!3916581 m!4479979))

(assert (=> b!3916581 m!4479705))

(declare-fun m!4479981 () Bool)

(assert (=> d!1161731 m!4479981))

(assert (=> d!1161731 m!4479699))

(declare-fun m!4479983 () Bool)

(assert (=> d!1161731 m!4479983))

(declare-fun m!4479985 () Bool)

(assert (=> d!1161731 m!4479985))

(declare-fun m!4479987 () Bool)

(assert (=> b!3916580 m!4479987))

(assert (=> b!3916322 d!1161731))

(declare-fun d!1161733 () Bool)

(assert (=> d!1161733 (= (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518)))) (list!15432 (c!680556 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))))))

(declare-fun bs!585719 () Bool)

(assert (= bs!585719 d!1161733))

(declare-fun m!4479989 () Bool)

(assert (=> bs!585719 m!4479989))

(assert (=> b!3916322 d!1161733))

(declare-fun d!1161735 () Bool)

(declare-fun lt!1364587 () BalanceConc!24942)

(assert (=> d!1161735 (= (list!15430 lt!1364587) (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518))))))

(assert (=> d!1161735 (= lt!1364587 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518))))) (value!204831 (_1!23513 (get!13715 lt!1364518)))))))

(assert (=> d!1161735 (= (charsOf!4287 (_1!23513 (get!13715 lt!1364518))) lt!1364587)))

(declare-fun b_lambda!114673 () Bool)

(assert (=> (not b_lambda!114673) (not d!1161735)))

(declare-fun tb!233489 () Bool)

(declare-fun t!323847 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323847) tb!233489))

(declare-fun b!3916583 () Bool)

(declare-fun e!2421623 () Bool)

(declare-fun tp!1192135 () Bool)

(assert (=> b!3916583 (= e!2421623 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518))))) (value!204831 (_1!23513 (get!13715 lt!1364518)))))) tp!1192135))))

(declare-fun result!282990 () Bool)

(assert (=> tb!233489 (= result!282990 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518))))) (value!204831 (_1!23513 (get!13715 lt!1364518))))) e!2421623))))

(assert (= tb!233489 b!3916583))

(declare-fun m!4479991 () Bool)

(assert (=> b!3916583 m!4479991))

(declare-fun m!4479993 () Bool)

(assert (=> tb!233489 m!4479993))

(assert (=> d!1161735 t!323847))

(declare-fun b_and!298235 () Bool)

(assert (= b_and!298193 (and (=> t!323847 result!282990) b_and!298235)))

(declare-fun tb!233491 () Bool)

(declare-fun t!323849 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323849) tb!233491))

(declare-fun result!282992 () Bool)

(assert (= result!282992 result!282990))

(assert (=> d!1161735 t!323849))

(declare-fun b_and!298237 () Bool)

(assert (= b_and!298189 (and (=> t!323849 result!282992) b_and!298237)))

(declare-fun t!323851 () Bool)

(declare-fun tb!233493 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323851) tb!233493))

(declare-fun result!282994 () Bool)

(assert (= result!282994 result!282990))

(assert (=> d!1161735 t!323851))

(declare-fun b_and!298239 () Bool)

(assert (= b_and!298183 (and (=> t!323851 result!282994) b_and!298239)))

(declare-fun t!323853 () Bool)

(declare-fun tb!233495 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323853) tb!233495))

(declare-fun result!282996 () Bool)

(assert (= result!282996 result!282990))

(assert (=> d!1161735 t!323853))

(declare-fun b_and!298241 () Bool)

(assert (= b_and!298197 (and (=> t!323853 result!282996) b_and!298241)))

(declare-fun t!323855 () Bool)

(declare-fun tb!233497 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323855) tb!233497))

(declare-fun result!282998 () Bool)

(assert (= result!282998 result!282990))

(assert (=> d!1161735 t!323855))

(declare-fun b_and!298243 () Bool)

(assert (= b_and!298185 (and (=> t!323855 result!282998) b_and!298243)))

(declare-fun t!323857 () Bool)

(declare-fun tb!233499 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323857) tb!233499))

(declare-fun result!283000 () Bool)

(assert (= result!283000 result!282990))

(assert (=> d!1161735 t!323857))

(declare-fun b_and!298245 () Bool)

(assert (= b_and!298181 (and (=> t!323857 result!283000) b_and!298245)))

(declare-fun m!4479995 () Bool)

(assert (=> d!1161735 m!4479995))

(declare-fun m!4479997 () Bool)

(assert (=> d!1161735 m!4479997))

(assert (=> b!3916322 d!1161735))

(declare-fun d!1161737 () Bool)

(assert (=> d!1161737 (= (get!13715 lt!1364518) (v!39206 lt!1364518))))

(assert (=> b!3916322 d!1161737))

(declare-fun d!1161739 () Bool)

(declare-fun lt!1364590 () Bool)

(declare-fun content!6243 (List!41630) (Set Rule!12726))

(assert (=> d!1161739 (= lt!1364590 (set.member (rule!9387 (_1!23513 (get!13715 lt!1364448))) (content!6243 rules!2768)))))

(declare-fun e!2421629 () Bool)

(assert (=> d!1161739 (= lt!1364590 e!2421629)))

(declare-fun res!1584306 () Bool)

(assert (=> d!1161739 (=> (not res!1584306) (not e!2421629))))

(assert (=> d!1161739 (= res!1584306 (is-Cons!41506 rules!2768))))

(assert (=> d!1161739 (= (contains!8340 rules!2768 (rule!9387 (_1!23513 (get!13715 lt!1364448)))) lt!1364590)))

(declare-fun b!3916588 () Bool)

(declare-fun e!2421628 () Bool)

(assert (=> b!3916588 (= e!2421629 e!2421628)))

(declare-fun res!1584307 () Bool)

(assert (=> b!3916588 (=> res!1584307 e!2421628)))

(assert (=> b!3916588 (= res!1584307 (= (h!46926 rules!2768) (rule!9387 (_1!23513 (get!13715 lt!1364448)))))))

(declare-fun b!3916589 () Bool)

(assert (=> b!3916589 (= e!2421628 (contains!8340 (t!323731 rules!2768) (rule!9387 (_1!23513 (get!13715 lt!1364448)))))))

(assert (= (and d!1161739 res!1584306) b!3916588))

(assert (= (and b!3916588 (not res!1584307)) b!3916589))

(declare-fun m!4479999 () Bool)

(assert (=> d!1161739 m!4479999))

(declare-fun m!4480001 () Bool)

(assert (=> d!1161739 m!4480001))

(declare-fun m!4480003 () Bool)

(assert (=> b!3916589 m!4480003))

(assert (=> b!3916086 d!1161739))

(assert (=> b!3916086 d!1161719))

(declare-fun d!1161741 () Bool)

(declare-fun c!680687 () Bool)

(assert (=> d!1161741 (= c!680687 (is-Nil!41505 lt!1364471))))

(declare-fun e!2421632 () (Set Token!12064))

(assert (=> d!1161741 (= (content!6240 lt!1364471) e!2421632)))

(declare-fun b!3916594 () Bool)

(assert (=> b!3916594 (= e!2421632 (as set.empty (Set Token!12064)))))

(declare-fun b!3916595 () Bool)

(assert (=> b!3916595 (= e!2421632 (set.union (set.insert (h!46925 lt!1364471) (as set.empty (Set Token!12064))) (content!6240 (t!323730 lt!1364471))))))

(assert (= (and d!1161741 c!680687) b!3916594))

(assert (= (and d!1161741 (not c!680687)) b!3916595))

(declare-fun m!4480005 () Bool)

(assert (=> b!3916595 m!4480005))

(declare-fun m!4480007 () Bool)

(assert (=> b!3916595 m!4480007))

(assert (=> d!1161579 d!1161741))

(declare-fun d!1161743 () Bool)

(declare-fun c!680688 () Bool)

(assert (=> d!1161743 (= c!680688 (is-Nil!41505 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)))))

(declare-fun e!2421633 () (Set Token!12064))

(assert (=> d!1161743 (= (content!6240 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) e!2421633)))

(declare-fun b!3916596 () Bool)

(assert (=> b!3916596 (= e!2421633 (as set.empty (Set Token!12064)))))

(declare-fun b!3916597 () Bool)

(assert (=> b!3916597 (= e!2421633 (set.union (set.insert (h!46925 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) (as set.empty (Set Token!12064))) (content!6240 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)))))))

(assert (= (and d!1161743 c!680688) b!3916596))

(assert (= (and d!1161743 (not c!680688)) b!3916597))

(declare-fun m!4480009 () Bool)

(assert (=> b!3916597 m!4480009))

(declare-fun m!4480011 () Bool)

(assert (=> b!3916597 m!4480011))

(assert (=> d!1161579 d!1161743))

(declare-fun d!1161745 () Bool)

(declare-fun c!680689 () Bool)

(assert (=> d!1161745 (= c!680689 (is-Nil!41505 (_1!23514 lt!1364297)))))

(declare-fun e!2421634 () (Set Token!12064))

(assert (=> d!1161745 (= (content!6240 (_1!23514 lt!1364297)) e!2421634)))

(declare-fun b!3916598 () Bool)

(assert (=> b!3916598 (= e!2421634 (as set.empty (Set Token!12064)))))

(declare-fun b!3916599 () Bool)

(assert (=> b!3916599 (= e!2421634 (set.union (set.insert (h!46925 (_1!23514 lt!1364297)) (as set.empty (Set Token!12064))) (content!6240 (t!323730 (_1!23514 lt!1364297)))))))

(assert (= (and d!1161745 c!680689) b!3916598))

(assert (= (and d!1161745 (not c!680689)) b!3916599))

(declare-fun m!4480013 () Bool)

(assert (=> b!3916599 m!4480013))

(declare-fun m!4480015 () Bool)

(assert (=> b!3916599 m!4480015))

(assert (=> d!1161579 d!1161745))

(assert (=> b!3916318 d!1161605))

(declare-fun d!1161747 () Bool)

(assert (=> d!1161747 (= (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 (_1!23517 lt!1364515))) (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 (_1!23517 lt!1364515))))))

(declare-fun b_lambda!114675 () Bool)

(assert (=> (not b_lambda!114675) (not d!1161747)))

(declare-fun t!323859 () Bool)

(declare-fun tb!233501 () Bool)

(assert (=> (and b!3916387 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323859) tb!233501))

(declare-fun result!283002 () Bool)

(assert (=> tb!233501 (= result!283002 (inv!21 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 (_1!23517 lt!1364515)))))))

(declare-fun m!4480017 () Bool)

(assert (=> tb!233501 m!4480017))

(assert (=> d!1161747 t!323859))

(declare-fun b_and!298247 () Bool)

(assert (= b_and!298223 (and (=> t!323859 result!283002) b_and!298247)))

(declare-fun t!323861 () Bool)

(declare-fun tb!233503 () Bool)

(assert (=> (and b!3915820 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323861) tb!233503))

(declare-fun result!283004 () Bool)

(assert (= result!283004 result!283002))

(assert (=> d!1161747 t!323861))

(declare-fun b_and!298249 () Bool)

(assert (= b_and!298227 (and (=> t!323861 result!283004) b_and!298249)))

(declare-fun tb!233505 () Bool)

(declare-fun t!323863 () Bool)

(assert (=> (and b!3915811 (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323863) tb!233505))

(declare-fun result!283006 () Bool)

(assert (= result!283006 result!283002))

(assert (=> d!1161747 t!323863))

(declare-fun b_and!298251 () Bool)

(assert (= b_and!298231 (and (=> t!323863 result!283006) b_and!298251)))

(declare-fun t!323865 () Bool)

(declare-fun tb!233507 () Bool)

(assert (=> (and b!3916383 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323865) tb!233507))

(declare-fun result!283008 () Bool)

(assert (= result!283008 result!283002))

(assert (=> d!1161747 t!323865))

(declare-fun b_and!298253 () Bool)

(assert (= b_and!298229 (and (=> t!323865 result!283008) b_and!298253)))

(declare-fun t!323867 () Bool)

(declare-fun tb!233509 () Bool)

(assert (=> (and b!3915796 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323867) tb!233509))

(declare-fun result!283010 () Bool)

(assert (= result!283010 result!283002))

(assert (=> d!1161747 t!323867))

(declare-fun b_and!298255 () Bool)

(assert (= b_and!298233 (and (=> t!323867 result!283010) b_and!298255)))

(declare-fun t!323869 () Bool)

(declare-fun tb!233511 () Bool)

(assert (=> (and b!3916338 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323869) tb!233511))

(declare-fun result!283012 () Bool)

(assert (= result!283012 result!283002))

(assert (=> d!1161747 t!323869))

(declare-fun b_and!298257 () Bool)

(assert (= b_and!298225 (and (=> t!323869 result!283012) b_and!298257)))

(assert (=> d!1161747 m!4479687))

(declare-fun m!4480019 () Bool)

(assert (=> d!1161747 m!4480019))

(assert (=> b!3916318 d!1161747))

(declare-fun b!3916628 () Bool)

(declare-fun e!2421659 () tuple2!40766)

(assert (=> b!3916628 (= e!2421659 (tuple2!40767 Nil!41504 lt!1364304))))

(declare-fun b!3916629 () Bool)

(declare-fun c!680707 () Bool)

(declare-fun call!284471 () Bool)

(assert (=> b!3916629 (= c!680707 call!284471)))

(declare-fun lt!1364668 () Unit!59640)

(declare-fun lt!1364670 () Unit!59640)

(assert (=> b!3916629 (= lt!1364668 lt!1364670)))

(declare-fun lt!1364667 () C!22922)

(declare-fun lt!1364666 () List!41628)

(assert (=> b!3916629 (= (++!10683 (++!10683 Nil!41504 (Cons!41504 lt!1364667 Nil!41504)) lt!1364666) lt!1364304)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1229 (List!41628 C!22922 List!41628 List!41628) Unit!59640)

(assert (=> b!3916629 (= lt!1364670 (lemmaMoveElementToOtherListKeepsConcatEq!1229 Nil!41504 lt!1364667 lt!1364666 lt!1364304))))

(assert (=> b!3916629 (= lt!1364666 (tail!5996 lt!1364304))))

(assert (=> b!3916629 (= lt!1364667 (head!8280 lt!1364304))))

(declare-fun lt!1364672 () Unit!59640)

(declare-fun lt!1364662 () Unit!59640)

(assert (=> b!3916629 (= lt!1364672 lt!1364662)))

(assert (=> b!3916629 (isPrefix!3558 (++!10683 Nil!41504 (Cons!41504 (head!8280 (getSuffix!2013 lt!1364304 Nil!41504)) Nil!41504)) lt!1364304)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!611 (List!41628 List!41628) Unit!59640)

(assert (=> b!3916629 (= lt!1364662 (lemmaAddHeadSuffixToPrefixStillPrefix!611 Nil!41504 lt!1364304))))

(declare-fun lt!1364651 () Unit!59640)

(declare-fun lt!1364664 () Unit!59640)

(assert (=> b!3916629 (= lt!1364651 lt!1364664)))

(assert (=> b!3916629 (= lt!1364664 (lemmaAddHeadSuffixToPrefixStillPrefix!611 Nil!41504 lt!1364304))))

(declare-fun lt!1364663 () List!41628)

(assert (=> b!3916629 (= lt!1364663 (++!10683 Nil!41504 (Cons!41504 (head!8280 lt!1364304) Nil!41504)))))

(declare-fun lt!1364653 () Unit!59640)

(declare-fun e!2421653 () Unit!59640)

(assert (=> b!3916629 (= lt!1364653 e!2421653)))

(declare-fun c!680703 () Bool)

(assert (=> b!3916629 (= c!680703 (= (size!31162 Nil!41504) (size!31162 lt!1364304)))))

(declare-fun lt!1364671 () Unit!59640)

(declare-fun lt!1364674 () Unit!59640)

(assert (=> b!3916629 (= lt!1364671 lt!1364674)))

(assert (=> b!3916629 (<= (size!31162 Nil!41504) (size!31162 lt!1364304))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!419 (List!41628 List!41628) Unit!59640)

(assert (=> b!3916629 (= lt!1364674 (lemmaIsPrefixThenSmallerEqSize!419 Nil!41504 lt!1364304))))

(declare-fun e!2421656 () tuple2!40766)

(declare-fun e!2421658 () tuple2!40766)

(assert (=> b!3916629 (= e!2421656 e!2421658)))

(declare-fun b!3916631 () Bool)

(declare-fun Unit!59647 () Unit!59640)

(assert (=> b!3916631 (= e!2421653 Unit!59647)))

(declare-fun lt!1364656 () Unit!59640)

(declare-fun call!284470 () Unit!59640)

(assert (=> b!3916631 (= lt!1364656 call!284470)))

(declare-fun call!284466 () Bool)

(assert (=> b!3916631 call!284466))

(declare-fun lt!1364648 () Unit!59640)

(assert (=> b!3916631 (= lt!1364648 lt!1364656)))

(declare-fun lt!1364652 () Unit!59640)

(declare-fun call!284465 () Unit!59640)

(assert (=> b!3916631 (= lt!1364652 call!284465)))

(assert (=> b!3916631 (= lt!1364304 Nil!41504)))

(declare-fun lt!1364673 () Unit!59640)

(assert (=> b!3916631 (= lt!1364673 lt!1364652)))

(assert (=> b!3916631 false))

(declare-fun bm!284460 () Bool)

(declare-fun call!284467 () List!41628)

(assert (=> bm!284460 (= call!284467 (tail!5996 lt!1364304))))

(declare-fun bm!284461 () Bool)

(assert (=> bm!284461 (= call!284466 (isPrefix!3558 lt!1364304 lt!1364304))))

(declare-fun bm!284462 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!768 (List!41628 List!41628 List!41628) Unit!59640)

(assert (=> bm!284462 (= call!284465 (lemmaIsPrefixSameLengthThenSameList!768 lt!1364304 Nil!41504 lt!1364304))))

(declare-fun bm!284463 () Bool)

(assert (=> bm!284463 (= call!284471 (nullable!3978 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916632 () Bool)

(declare-fun e!2421657 () tuple2!40766)

(assert (=> b!3916632 (= e!2421658 e!2421657)))

(declare-fun lt!1364659 () tuple2!40766)

(declare-fun call!284472 () tuple2!40766)

(assert (=> b!3916632 (= lt!1364659 call!284472)))

(declare-fun c!680704 () Bool)

(assert (=> b!3916632 (= c!680704 (isEmpty!24701 (_1!23517 lt!1364659)))))

(declare-fun b!3916633 () Bool)

(declare-fun e!2421652 () tuple2!40766)

(assert (=> b!3916633 (= e!2421652 (tuple2!40767 Nil!41504 lt!1364304))))

(declare-fun b!3916634 () Bool)

(declare-fun e!2421654 () Bool)

(declare-fun lt!1364665 () tuple2!40766)

(assert (=> b!3916634 (= e!2421654 (>= (size!31162 (_1!23517 lt!1364665)) (size!31162 Nil!41504)))))

(declare-fun b!3916635 () Bool)

(declare-fun Unit!59648 () Unit!59640)

(assert (=> b!3916635 (= e!2421653 Unit!59648)))

(declare-fun bm!284464 () Bool)

(declare-fun call!284469 () Regex!11368)

(declare-fun call!284468 () C!22922)

(assert (=> bm!284464 (= call!284469 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) call!284468))))

(declare-fun b!3916636 () Bool)

(assert (=> b!3916636 (= e!2421659 e!2421656)))

(declare-fun c!680705 () Bool)

(assert (=> b!3916636 (= c!680705 (= (size!31162 Nil!41504) (size!31162 lt!1364304)))))

(declare-fun d!1161749 () Bool)

(declare-fun e!2421655 () Bool)

(assert (=> d!1161749 e!2421655))

(declare-fun res!1584313 () Bool)

(assert (=> d!1161749 (=> (not res!1584313) (not e!2421655))))

(assert (=> d!1161749 (= res!1584313 (= (++!10683 (_1!23517 lt!1364665) (_2!23517 lt!1364665)) lt!1364304))))

(assert (=> d!1161749 (= lt!1364665 e!2421659)))

(declare-fun c!680702 () Bool)

(declare-fun lostCause!985 (Regex!11368) Bool)

(assert (=> d!1161749 (= c!680702 (lostCause!985 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun lt!1364660 () Unit!59640)

(declare-fun Unit!59649 () Unit!59640)

(assert (=> d!1161749 (= lt!1364660 Unit!59649)))

(assert (=> d!1161749 (= (getSuffix!2013 lt!1364304 Nil!41504) lt!1364304)))

(declare-fun lt!1364661 () Unit!59640)

(declare-fun lt!1364657 () Unit!59640)

(assert (=> d!1161749 (= lt!1364661 lt!1364657)))

(declare-fun lt!1364650 () List!41628)

(assert (=> d!1161749 (= lt!1364304 lt!1364650)))

(assert (=> d!1161749 (= lt!1364657 (lemmaSamePrefixThenSameSuffix!1779 Nil!41504 lt!1364304 Nil!41504 lt!1364650 lt!1364304))))

(assert (=> d!1161749 (= lt!1364650 (getSuffix!2013 lt!1364304 Nil!41504))))

(declare-fun lt!1364655 () Unit!59640)

(declare-fun lt!1364649 () Unit!59640)

(assert (=> d!1161749 (= lt!1364655 lt!1364649)))

(assert (=> d!1161749 (isPrefix!3558 Nil!41504 (++!10683 Nil!41504 lt!1364304))))

(assert (=> d!1161749 (= lt!1364649 (lemmaConcatTwoListThenFirstIsPrefix!2421 Nil!41504 lt!1364304))))

(assert (=> d!1161749 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161749 (= (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)) lt!1364665)))

(declare-fun b!3916630 () Bool)

(assert (=> b!3916630 (= e!2421657 lt!1364659)))

(declare-fun bm!284465 () Bool)

(assert (=> bm!284465 (= call!284472 (findLongestMatchInner!1239 call!284469 lt!1364663 (+ (size!31162 Nil!41504) 1) call!284467 lt!1364304 (size!31162 lt!1364304)))))

(declare-fun b!3916637 () Bool)

(declare-fun c!680706 () Bool)

(assert (=> b!3916637 (= c!680706 call!284471)))

(declare-fun lt!1364669 () Unit!59640)

(declare-fun lt!1364654 () Unit!59640)

(assert (=> b!3916637 (= lt!1364669 lt!1364654)))

(assert (=> b!3916637 (= lt!1364304 Nil!41504)))

(assert (=> b!3916637 (= lt!1364654 call!284465)))

(declare-fun lt!1364647 () Unit!59640)

(declare-fun lt!1364658 () Unit!59640)

(assert (=> b!3916637 (= lt!1364647 lt!1364658)))

(assert (=> b!3916637 call!284466))

(assert (=> b!3916637 (= lt!1364658 call!284470)))

(assert (=> b!3916637 (= e!2421656 e!2421652)))

(declare-fun bm!284466 () Bool)

(assert (=> bm!284466 (= call!284470 (lemmaIsPrefixRefl!2257 lt!1364304 lt!1364304))))

(declare-fun b!3916638 () Bool)

(assert (=> b!3916638 (= e!2421652 (tuple2!40767 Nil!41504 Nil!41504))))

(declare-fun b!3916639 () Bool)

(assert (=> b!3916639 (= e!2421657 (tuple2!40767 Nil!41504 lt!1364304))))

(declare-fun b!3916640 () Bool)

(assert (=> b!3916640 (= e!2421655 e!2421654)))

(declare-fun res!1584312 () Bool)

(assert (=> b!3916640 (=> res!1584312 e!2421654)))

(assert (=> b!3916640 (= res!1584312 (isEmpty!24701 (_1!23517 lt!1364665)))))

(declare-fun bm!284467 () Bool)

(assert (=> bm!284467 (= call!284468 (head!8280 lt!1364304))))

(declare-fun b!3916641 () Bool)

(assert (=> b!3916641 (= e!2421658 call!284472)))

(assert (= (and d!1161749 c!680702) b!3916628))

(assert (= (and d!1161749 (not c!680702)) b!3916636))

(assert (= (and b!3916636 c!680705) b!3916637))

(assert (= (and b!3916636 (not c!680705)) b!3916629))

(assert (= (and b!3916637 c!680706) b!3916638))

(assert (= (and b!3916637 (not c!680706)) b!3916633))

(assert (= (and b!3916629 c!680703) b!3916631))

(assert (= (and b!3916629 (not c!680703)) b!3916635))

(assert (= (and b!3916629 c!680707) b!3916632))

(assert (= (and b!3916629 (not c!680707)) b!3916641))

(assert (= (and b!3916632 c!680704) b!3916639))

(assert (= (and b!3916632 (not c!680704)) b!3916630))

(assert (= (or b!3916632 b!3916641) bm!284467))

(assert (= (or b!3916632 b!3916641) bm!284460))

(assert (= (or b!3916632 b!3916641) bm!284464))

(assert (= (or b!3916632 b!3916641) bm!284465))

(assert (= (or b!3916637 b!3916631) bm!284462))

(assert (= (or b!3916637 b!3916629) bm!284463))

(assert (= (or b!3916637 b!3916631) bm!284461))

(assert (= (or b!3916637 b!3916631) bm!284466))

(assert (= (and d!1161749 res!1584313) b!3916640))

(assert (= (and b!3916640 (not res!1584312)) b!3916634))

(declare-fun m!4480021 () Bool)

(assert (=> b!3916629 m!4480021))

(declare-fun m!4480023 () Bool)

(assert (=> b!3916629 m!4480023))

(declare-fun m!4480025 () Bool)

(assert (=> b!3916629 m!4480025))

(declare-fun m!4480027 () Bool)

(assert (=> b!3916629 m!4480027))

(declare-fun m!4480029 () Bool)

(assert (=> b!3916629 m!4480029))

(declare-fun m!4480031 () Bool)

(assert (=> b!3916629 m!4480031))

(declare-fun m!4480033 () Bool)

(assert (=> b!3916629 m!4480033))

(assert (=> b!3916629 m!4480021))

(assert (=> b!3916629 m!4480025))

(declare-fun m!4480035 () Bool)

(assert (=> b!3916629 m!4480035))

(declare-fun m!4480037 () Bool)

(assert (=> b!3916629 m!4480037))

(assert (=> b!3916629 m!4479125))

(assert (=> b!3916629 m!4479669))

(assert (=> b!3916629 m!4479371))

(declare-fun m!4480039 () Bool)

(assert (=> b!3916629 m!4480039))

(assert (=> b!3916629 m!4480029))

(declare-fun m!4480041 () Bool)

(assert (=> b!3916629 m!4480041))

(assert (=> bm!284467 m!4480039))

(declare-fun m!4480043 () Bool)

(assert (=> b!3916632 m!4480043))

(declare-fun m!4480045 () Bool)

(assert (=> bm!284462 m!4480045))

(assert (=> bm!284463 m!4479299))

(assert (=> bm!284466 m!4479439))

(declare-fun m!4480047 () Bool)

(assert (=> bm!284464 m!4480047))

(declare-fun m!4480049 () Bool)

(assert (=> b!3916640 m!4480049))

(assert (=> bm!284460 m!4479371))

(assert (=> bm!284461 m!4479437))

(assert (=> bm!284465 m!4479125))

(declare-fun m!4480051 () Bool)

(assert (=> bm!284465 m!4480051))

(declare-fun m!4480053 () Bool)

(assert (=> b!3916634 m!4480053))

(assert (=> b!3916634 m!4479669))

(declare-fun m!4480055 () Bool)

(assert (=> d!1161749 m!4480055))

(declare-fun m!4480057 () Bool)

(assert (=> d!1161749 m!4480057))

(assert (=> d!1161749 m!4480055))

(declare-fun m!4480059 () Bool)

(assert (=> d!1161749 m!4480059))

(declare-fun m!4480061 () Bool)

(assert (=> d!1161749 m!4480061))

(assert (=> d!1161749 m!4480021))

(declare-fun m!4480063 () Bool)

(assert (=> d!1161749 m!4480063))

(declare-fun m!4480065 () Bool)

(assert (=> d!1161749 m!4480065))

(assert (=> d!1161749 m!4479297))

(assert (=> b!3916318 d!1161749))

(declare-fun b!3916646 () Bool)

(declare-fun e!2421662 () Bool)

(assert (=> b!3916646 (= e!2421662 true)))

(declare-fun d!1161751 () Bool)

(assert (=> d!1161751 e!2421662))

(assert (= d!1161751 b!3916646))

(declare-fun lambda!126518 () Int)

(declare-fun order!22273 () Int)

(declare-fun order!22271 () Int)

(declare-fun dynLambda!17831 (Int Int) Int)

(declare-fun dynLambda!17832 (Int Int) Int)

(assert (=> b!3916646 (< (dynLambda!17831 order!22271 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) (dynLambda!17832 order!22273 lambda!126518))))

(declare-fun order!22275 () Int)

(declare-fun dynLambda!17833 (Int Int) Int)

(assert (=> b!3916646 (< (dynLambda!17833 order!22275 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) (dynLambda!17832 order!22273 lambda!126518))))

(assert (=> d!1161751 (= (list!15430 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 (_1!23517 lt!1364515))))) (list!15430 (seqFromList!4730 (_1!23517 lt!1364515))))))

(declare-fun lt!1364677 () Unit!59640)

(declare-fun ForallOf!793 (Int BalanceConc!24942) Unit!59640)

(assert (=> d!1161751 (= lt!1364677 (ForallOf!793 lambda!126518 (seqFromList!4730 (_1!23517 lt!1364515))))))

(assert (=> d!1161751 (= (lemmaSemiInverse!1745 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 (_1!23517 lt!1364515))) lt!1364677)))

(declare-fun b_lambda!114677 () Bool)

(assert (=> (not b_lambda!114677) (not d!1161751)))

(declare-fun t!323871 () Bool)

(declare-fun tb!233513 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323871) tb!233513))

(declare-fun tp!1192136 () Bool)

(declare-fun b!3916647 () Bool)

(declare-fun e!2421663 () Bool)

(assert (=> b!3916647 (= e!2421663 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 (_1!23517 lt!1364515)))))) tp!1192136))))

(declare-fun result!283014 () Bool)

(assert (=> tb!233513 (= result!283014 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 (_1!23517 lt!1364515))))) e!2421663))))

(assert (= tb!233513 b!3916647))

(declare-fun m!4480067 () Bool)

(assert (=> b!3916647 m!4480067))

(declare-fun m!4480069 () Bool)

(assert (=> tb!233513 m!4480069))

(assert (=> d!1161751 t!323871))

(declare-fun b_and!298259 () Bool)

(assert (= b_and!298235 (and (=> t!323871 result!283014) b_and!298259)))

(declare-fun tb!233515 () Bool)

(declare-fun t!323873 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323873) tb!233515))

(declare-fun result!283016 () Bool)

(assert (= result!283016 result!283014))

(assert (=> d!1161751 t!323873))

(declare-fun b_and!298261 () Bool)

(assert (= b_and!298237 (and (=> t!323873 result!283016) b_and!298261)))

(declare-fun t!323875 () Bool)

(declare-fun tb!233517 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323875) tb!233517))

(declare-fun result!283018 () Bool)

(assert (= result!283018 result!283014))

(assert (=> d!1161751 t!323875))

(declare-fun b_and!298263 () Bool)

(assert (= b_and!298239 (and (=> t!323875 result!283018) b_and!298263)))

(declare-fun tb!233519 () Bool)

(declare-fun t!323877 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323877) tb!233519))

(declare-fun result!283020 () Bool)

(assert (= result!283020 result!283014))

(assert (=> d!1161751 t!323877))

(declare-fun b_and!298265 () Bool)

(assert (= b_and!298241 (and (=> t!323877 result!283020) b_and!298265)))

(declare-fun tb!233521 () Bool)

(declare-fun t!323879 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323879) tb!233521))

(declare-fun result!283022 () Bool)

(assert (= result!283022 result!283014))

(assert (=> d!1161751 t!323879))

(declare-fun b_and!298267 () Bool)

(assert (= b_and!298243 (and (=> t!323879 result!283022) b_and!298267)))

(declare-fun t!323881 () Bool)

(declare-fun tb!233523 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323881) tb!233523))

(declare-fun result!283024 () Bool)

(assert (= result!283024 result!283014))

(assert (=> d!1161751 t!323881))

(declare-fun b_and!298269 () Bool)

(assert (= b_and!298245 (and (=> t!323881 result!283024) b_and!298269)))

(declare-fun b_lambda!114679 () Bool)

(assert (=> (not b_lambda!114679) (not d!1161751)))

(assert (=> d!1161751 t!323863))

(declare-fun b_and!298271 () Bool)

(assert (= b_and!298251 (and (=> t!323863 result!283006) b_and!298271)))

(assert (=> d!1161751 t!323867))

(declare-fun b_and!298273 () Bool)

(assert (= b_and!298255 (and (=> t!323867 result!283010) b_and!298273)))

(assert (=> d!1161751 t!323859))

(declare-fun b_and!298275 () Bool)

(assert (= b_and!298247 (and (=> t!323859 result!283002) b_and!298275)))

(assert (=> d!1161751 t!323865))

(declare-fun b_and!298277 () Bool)

(assert (= b_and!298253 (and (=> t!323865 result!283008) b_and!298277)))

(assert (=> d!1161751 t!323869))

(declare-fun b_and!298279 () Bool)

(assert (= b_and!298257 (and (=> t!323869 result!283012) b_and!298279)))

(assert (=> d!1161751 t!323861))

(declare-fun b_and!298281 () Bool)

(assert (= b_and!298249 (and (=> t!323861 result!283004) b_and!298281)))

(declare-fun m!4480071 () Bool)

(assert (=> d!1161751 m!4480071))

(declare-fun m!4480073 () Bool)

(assert (=> d!1161751 m!4480073))

(assert (=> d!1161751 m!4479687))

(assert (=> d!1161751 m!4480019))

(assert (=> d!1161751 m!4479687))

(declare-fun m!4480075 () Bool)

(assert (=> d!1161751 m!4480075))

(assert (=> d!1161751 m!4480019))

(assert (=> d!1161751 m!4480071))

(assert (=> d!1161751 m!4479687))

(declare-fun m!4480077 () Bool)

(assert (=> d!1161751 m!4480077))

(assert (=> b!3916318 d!1161751))

(declare-fun d!1161753 () Bool)

(assert (=> d!1161753 (= (isEmpty!24701 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))) (is-Nil!41504 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(assert (=> b!3916318 d!1161753))

(declare-fun d!1161755 () Bool)

(declare-fun e!2421666 () Bool)

(assert (=> d!1161755 e!2421666))

(declare-fun res!1584316 () Bool)

(assert (=> d!1161755 (=> res!1584316 e!2421666)))

(assert (=> d!1161755 (= res!1584316 (isEmpty!24701 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(declare-fun lt!1364680 () Unit!59640)

(declare-fun choose!23203 (Regex!11368 List!41628) Unit!59640)

(assert (=> d!1161755 (= lt!1364680 (choose!23203 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364304))))

(assert (=> d!1161755 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161755 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1212 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364304) lt!1364680)))

(declare-fun b!3916650 () Bool)

(assert (=> b!3916650 (= e!2421666 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(assert (= (and d!1161755 (not res!1584316)) b!3916650))

(assert (=> d!1161755 m!4479669))

(assert (=> d!1161755 m!4479125))

(assert (=> d!1161755 m!4479671))

(assert (=> d!1161755 m!4479691))

(assert (=> d!1161755 m!4479669))

(assert (=> d!1161755 m!4479297))

(declare-fun m!4480079 () Bool)

(assert (=> d!1161755 m!4480079))

(assert (=> d!1161755 m!4479125))

(assert (=> b!3916650 m!4479669))

(assert (=> b!3916650 m!4479125))

(assert (=> b!3916650 m!4479669))

(assert (=> b!3916650 m!4479125))

(assert (=> b!3916650 m!4479671))

(assert (=> b!3916650 m!4479673))

(assert (=> b!3916318 d!1161755))

(declare-fun d!1161757 () Bool)

(declare-fun lt!1364683 () Int)

(assert (=> d!1161757 (= lt!1364683 (size!31162 (list!15430 (seqFromList!4730 (_1!23517 lt!1364515)))))))

(declare-fun size!31169 (Conc!12674) Int)

(assert (=> d!1161757 (= lt!1364683 (size!31169 (c!680556 (seqFromList!4730 (_1!23517 lt!1364515)))))))

(assert (=> d!1161757 (= (size!31167 (seqFromList!4730 (_1!23517 lt!1364515))) lt!1364683)))

(declare-fun bs!585720 () Bool)

(assert (= bs!585720 d!1161757))

(assert (=> bs!585720 m!4479687))

(assert (=> bs!585720 m!4480077))

(assert (=> bs!585720 m!4480077))

(declare-fun m!4480081 () Bool)

(assert (=> bs!585720 m!4480081))

(declare-fun m!4480083 () Bool)

(assert (=> bs!585720 m!4480083))

(assert (=> b!3916318 d!1161757))

(declare-fun d!1161759 () Bool)

(declare-fun lt!1364684 () Int)

(assert (=> d!1161759 (>= lt!1364684 0)))

(declare-fun e!2421667 () Int)

(assert (=> d!1161759 (= lt!1364684 e!2421667)))

(declare-fun c!680709 () Bool)

(assert (=> d!1161759 (= c!680709 (is-Nil!41504 Nil!41504))))

(assert (=> d!1161759 (= (size!31162 Nil!41504) lt!1364684)))

(declare-fun b!3916651 () Bool)

(assert (=> b!3916651 (= e!2421667 0)))

(declare-fun b!3916652 () Bool)

(assert (=> b!3916652 (= e!2421667 (+ 1 (size!31162 (t!323729 Nil!41504))))))

(assert (= (and d!1161759 c!680709) b!3916651))

(assert (= (and d!1161759 (not c!680709)) b!3916652))

(declare-fun m!4480085 () Bool)

(assert (=> b!3916652 m!4480085))

(assert (=> b!3916318 d!1161759))

(declare-fun d!1161761 () Bool)

(assert (=> d!1161761 (= (seqFromList!4730 (_1!23517 lt!1364515)) (fromListB!2187 (_1!23517 lt!1364515)))))

(declare-fun bs!585721 () Bool)

(assert (= bs!585721 d!1161761))

(declare-fun m!4480087 () Bool)

(assert (=> bs!585721 m!4480087))

(assert (=> b!3916318 d!1161761))

(declare-fun d!1161763 () Bool)

(assert (=> d!1161763 true))

(declare-fun order!22277 () Int)

(declare-fun lambda!126521 () Int)

(declare-fun dynLambda!17834 (Int Int) Int)

(assert (=> d!1161763 (< (dynLambda!17831 order!22271 (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (dynLambda!17834 order!22277 lambda!126521))))

(declare-fun Forall2!1045 (Int) Bool)

(assert (=> d!1161763 (= (equivClasses!2677 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (Forall2!1045 lambda!126521))))

(declare-fun bs!585722 () Bool)

(assert (= bs!585722 d!1161763))

(declare-fun m!4480089 () Bool)

(assert (=> bs!585722 m!4480089))

(assert (=> b!3916144 d!1161763))

(declare-fun b!3916657 () Bool)

(declare-fun res!1584319 () Bool)

(declare-fun e!2421670 () Bool)

(assert (=> b!3916657 (=> res!1584319 e!2421670)))

(assert (=> b!3916657 (= res!1584319 (not (is-IntegerValue!20081 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317)))))))

(declare-fun e!2421671 () Bool)

(assert (=> b!3916657 (= e!2421671 e!2421670)))

(declare-fun d!1161765 () Bool)

(declare-fun c!680710 () Bool)

(assert (=> d!1161765 (= c!680710 (is-IntegerValue!20079 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317))))))

(declare-fun e!2421672 () Bool)

(assert (=> d!1161765 (= (inv!21 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317))) e!2421672)))

(declare-fun b!3916658 () Bool)

(assert (=> b!3916658 (= e!2421672 (inv!16 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317))))))

(declare-fun b!3916659 () Bool)

(assert (=> b!3916659 (= e!2421671 (inv!17 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317))))))

(declare-fun b!3916660 () Bool)

(assert (=> b!3916660 (= e!2421670 (inv!15 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317))))))

(declare-fun b!3916661 () Bool)

(assert (=> b!3916661 (= e!2421672 e!2421671)))

(declare-fun c!680711 () Bool)

(assert (=> b!3916661 (= c!680711 (is-IntegerValue!20080 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (seqFromList!4730 lt!1364317))))))

(assert (= (and d!1161765 c!680710) b!3916658))

(assert (= (and d!1161765 (not c!680710)) b!3916661))

(assert (= (and b!3916661 c!680711) b!3916659))

(assert (= (and b!3916661 (not c!680711)) b!3916657))

(assert (= (and b!3916657 (not res!1584319)) b!3916660))

(declare-fun m!4480091 () Bool)

(assert (=> b!3916658 m!4480091))

(declare-fun m!4480093 () Bool)

(assert (=> b!3916659 m!4480093))

(declare-fun m!4480095 () Bool)

(assert (=> b!3916660 m!4480095))

(assert (=> tb!233387 d!1161765))

(declare-fun d!1161767 () Bool)

(assert (=> d!1161767 (= (isEmpty!24701 (originalCharacters!7063 (h!46925 prefixTokens!80))) (is-Nil!41504 (originalCharacters!7063 (h!46925 prefixTokens!80))))))

(assert (=> d!1161603 d!1161767))

(declare-fun d!1161769 () Bool)

(assert (=> d!1161769 (= (head!8280 lt!1364317) (h!46924 lt!1364317))))

(assert (=> b!3916211 d!1161769))

(declare-fun d!1161771 () Bool)

(declare-fun lt!1364685 () Int)

(assert (=> d!1161771 (>= lt!1364685 0)))

(declare-fun e!2421673 () Int)

(assert (=> d!1161771 (= lt!1364685 e!2421673)))

(declare-fun c!680712 () Bool)

(assert (=> d!1161771 (= c!680712 (is-Nil!41504 (originalCharacters!7063 (h!46925 suffixTokens!72))))))

(assert (=> d!1161771 (= (size!31162 (originalCharacters!7063 (h!46925 suffixTokens!72))) lt!1364685)))

(declare-fun b!3916662 () Bool)

(assert (=> b!3916662 (= e!2421673 0)))

(declare-fun b!3916663 () Bool)

(assert (=> b!3916663 (= e!2421673 (+ 1 (size!31162 (t!323729 (originalCharacters!7063 (h!46925 suffixTokens!72))))))))

(assert (= (and d!1161771 c!680712) b!3916662))

(assert (= (and d!1161771 (not c!680712)) b!3916663))

(declare-fun m!4480097 () Bool)

(assert (=> b!3916663 m!4480097))

(assert (=> b!3916326 d!1161771))

(declare-fun d!1161773 () Bool)

(declare-fun lt!1364686 () Int)

(assert (=> d!1161773 (>= lt!1364686 0)))

(declare-fun e!2421674 () Int)

(assert (=> d!1161773 (= lt!1364686 e!2421674)))

(declare-fun c!680713 () Bool)

(assert (=> d!1161773 (= c!680713 (is-Nil!41505 (_1!23514 lt!1364413)))))

(assert (=> d!1161773 (= (size!31165 (_1!23514 lt!1364413)) lt!1364686)))

(declare-fun b!3916664 () Bool)

(assert (=> b!3916664 (= e!2421674 0)))

(declare-fun b!3916665 () Bool)

(assert (=> b!3916665 (= e!2421674 (+ 1 (size!31165 (t!323730 (_1!23514 lt!1364413)))))))

(assert (= (and d!1161773 c!680713) b!3916664))

(assert (= (and d!1161773 (not c!680713)) b!3916665))

(declare-fun m!4480099 () Bool)

(assert (=> b!3916665 m!4480099))

(assert (=> d!1161529 d!1161773))

(declare-fun b!3916666 () Bool)

(declare-fun res!1584321 () Bool)

(declare-fun e!2421677 () Bool)

(assert (=> b!3916666 (=> (not res!1584321) (not e!2421677))))

(declare-fun lt!1364690 () Option!8883)

(assert (=> b!3916666 (= res!1584321 (< (size!31162 (_2!23513 (get!13715 lt!1364690))) (size!31162 (_2!23513 (v!39206 lt!1364311)))))))

(declare-fun b!3916667 () Bool)

(declare-fun res!1584323 () Bool)

(assert (=> b!3916667 (=> (not res!1584323) (not e!2421677))))

(assert (=> b!3916667 (= res!1584323 (= (value!204831 (_1!23513 (get!13715 lt!1364690))) (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364690)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364690)))))))))

(declare-fun b!3916668 () Bool)

(declare-fun e!2421675 () Option!8883)

(declare-fun lt!1364688 () Option!8883)

(declare-fun lt!1364689 () Option!8883)

(assert (=> b!3916668 (= e!2421675 (ite (and (is-None!8882 lt!1364688) (is-None!8882 lt!1364689)) None!8882 (ite (is-None!8882 lt!1364689) lt!1364688 (ite (is-None!8882 lt!1364688) lt!1364689 (ite (>= (size!31161 (_1!23513 (v!39206 lt!1364688))) (size!31161 (_1!23513 (v!39206 lt!1364689)))) lt!1364688 lt!1364689)))))))

(declare-fun call!284473 () Option!8883)

(assert (=> b!3916668 (= lt!1364688 call!284473)))

(assert (=> b!3916668 (= lt!1364689 (maxPrefix!3356 thiss!20629 (t!323731 rules!2768) (_2!23513 (v!39206 lt!1364311))))))

(declare-fun b!3916669 () Bool)

(declare-fun res!1584325 () Bool)

(assert (=> b!3916669 (=> (not res!1584325) (not e!2421677))))

(assert (=> b!3916669 (= res!1584325 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364690)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364690))))))))

(declare-fun b!3916670 () Bool)

(declare-fun res!1584324 () Bool)

(assert (=> b!3916670 (=> (not res!1584324) (not e!2421677))))

(assert (=> b!3916670 (= res!1584324 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364690)))) (_2!23513 (get!13715 lt!1364690))) (_2!23513 (v!39206 lt!1364311))))))

(declare-fun b!3916671 () Bool)

(assert (=> b!3916671 (= e!2421675 call!284473)))

(declare-fun bm!284468 () Bool)

(assert (=> bm!284468 (= call!284473 (maxPrefixOneRule!2426 thiss!20629 (h!46926 rules!2768) (_2!23513 (v!39206 lt!1364311))))))

(declare-fun b!3916673 () Bool)

(declare-fun e!2421676 () Bool)

(assert (=> b!3916673 (= e!2421676 e!2421677)))

(declare-fun res!1584320 () Bool)

(assert (=> b!3916673 (=> (not res!1584320) (not e!2421677))))

(assert (=> b!3916673 (= res!1584320 (isDefined!6926 lt!1364690))))

(declare-fun b!3916674 () Bool)

(assert (=> b!3916674 (= e!2421677 (contains!8340 rules!2768 (rule!9387 (_1!23513 (get!13715 lt!1364690)))))))

(declare-fun b!3916672 () Bool)

(declare-fun res!1584326 () Bool)

(assert (=> b!3916672 (=> (not res!1584326) (not e!2421677))))

(assert (=> b!3916672 (= res!1584326 (= (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364690)))) (originalCharacters!7063 (_1!23513 (get!13715 lt!1364690)))))))

(declare-fun d!1161775 () Bool)

(assert (=> d!1161775 e!2421676))

(declare-fun res!1584322 () Bool)

(assert (=> d!1161775 (=> res!1584322 e!2421676)))

(assert (=> d!1161775 (= res!1584322 (isEmpty!24705 lt!1364690))))

(assert (=> d!1161775 (= lt!1364690 e!2421675)))

(declare-fun c!680714 () Bool)

(assert (=> d!1161775 (= c!680714 (and (is-Cons!41506 rules!2768) (is-Nil!41506 (t!323731 rules!2768))))))

(declare-fun lt!1364691 () Unit!59640)

(declare-fun lt!1364687 () Unit!59640)

(assert (=> d!1161775 (= lt!1364691 lt!1364687)))

(assert (=> d!1161775 (isPrefix!3558 (_2!23513 (v!39206 lt!1364311)) (_2!23513 (v!39206 lt!1364311)))))

(assert (=> d!1161775 (= lt!1364687 (lemmaIsPrefixRefl!2257 (_2!23513 (v!39206 lt!1364311)) (_2!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161775 (rulesValidInductive!2327 thiss!20629 rules!2768)))

(assert (=> d!1161775 (= (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364311))) lt!1364690)))

(assert (= (and d!1161775 c!680714) b!3916671))

(assert (= (and d!1161775 (not c!680714)) b!3916668))

(assert (= (or b!3916671 b!3916668) bm!284468))

(assert (= (and d!1161775 (not res!1584322)) b!3916673))

(assert (= (and b!3916673 res!1584320) b!3916672))

(assert (= (and b!3916672 res!1584326) b!3916666))

(assert (= (and b!3916666 res!1584321) b!3916670))

(assert (= (and b!3916670 res!1584324) b!3916667))

(assert (= (and b!3916667 res!1584323) b!3916669))

(assert (= (and b!3916669 res!1584325) b!3916674))

(declare-fun m!4480101 () Bool)

(assert (=> b!3916666 m!4480101))

(declare-fun m!4480103 () Bool)

(assert (=> b!3916666 m!4480103))

(assert (=> b!3916666 m!4479135))

(assert (=> b!3916669 m!4480101))

(declare-fun m!4480105 () Bool)

(assert (=> b!3916669 m!4480105))

(assert (=> b!3916669 m!4480105))

(declare-fun m!4480107 () Bool)

(assert (=> b!3916669 m!4480107))

(assert (=> b!3916669 m!4480107))

(declare-fun m!4480109 () Bool)

(assert (=> b!3916669 m!4480109))

(assert (=> b!3916670 m!4480101))

(assert (=> b!3916670 m!4480105))

(assert (=> b!3916670 m!4480105))

(assert (=> b!3916670 m!4480107))

(assert (=> b!3916670 m!4480107))

(declare-fun m!4480111 () Bool)

(assert (=> b!3916670 m!4480111))

(declare-fun m!4480113 () Bool)

(assert (=> b!3916673 m!4480113))

(assert (=> b!3916667 m!4480101))

(declare-fun m!4480115 () Bool)

(assert (=> b!3916667 m!4480115))

(assert (=> b!3916667 m!4480115))

(declare-fun m!4480117 () Bool)

(assert (=> b!3916667 m!4480117))

(declare-fun m!4480119 () Bool)

(assert (=> b!3916668 m!4480119))

(declare-fun m!4480121 () Bool)

(assert (=> bm!284468 m!4480121))

(declare-fun m!4480123 () Bool)

(assert (=> d!1161775 m!4480123))

(declare-fun m!4480125 () Bool)

(assert (=> d!1161775 m!4480125))

(declare-fun m!4480127 () Bool)

(assert (=> d!1161775 m!4480127))

(assert (=> d!1161775 m!4479441))

(assert (=> b!3916672 m!4480101))

(assert (=> b!3916672 m!4480105))

(assert (=> b!3916672 m!4480105))

(assert (=> b!3916672 m!4480107))

(assert (=> b!3916674 m!4480101))

(declare-fun m!4480129 () Bool)

(assert (=> b!3916674 m!4480129))

(assert (=> d!1161529 d!1161775))

(assert (=> d!1161651 d!1161581))

(assert (=> d!1161651 d!1161625))

(assert (=> d!1161651 d!1161549))

(assert (=> d!1161651 d!1161541))

(assert (=> d!1161651 d!1161515))

(declare-fun d!1161777 () Bool)

(assert (=> d!1161777 (= (maxPrefixOneRule!2426 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) lt!1364304) (Some!8882 (tuple2!40759 (Token!12065 (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (seqFromList!4730 lt!1364317)) (rule!9387 (_1!23513 (v!39206 lt!1364311))) (size!31162 lt!1364317) lt!1364317) (_2!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161777 true))

(declare-fun _$59!608 () Unit!59640)

(assert (=> d!1161777 (= (choose!23197 thiss!20629 rules!2768 lt!1364317 lt!1364304 (_2!23513 (v!39206 lt!1364311)) (rule!9387 (_1!23513 (v!39206 lt!1364311)))) _$59!608)))

(declare-fun bs!585723 () Bool)

(assert (= bs!585723 d!1161777))

(assert (=> bs!585723 m!4479107))

(assert (=> bs!585723 m!4479175))

(assert (=> bs!585723 m!4479175))

(assert (=> bs!585723 m!4479181))

(assert (=> bs!585723 m!4479171))

(assert (=> d!1161651 d!1161777))

(declare-fun b!3916693 () Bool)

(declare-fun e!2421692 () Bool)

(declare-fun e!2421695 () Bool)

(assert (=> b!3916693 (= e!2421692 e!2421695)))

(declare-fun res!1584341 () Bool)

(assert (=> b!3916693 (= res!1584341 (not (nullable!3978 (reg!11697 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))))

(assert (=> b!3916693 (=> (not res!1584341) (not e!2421695))))

(declare-fun b!3916694 () Bool)

(declare-fun call!284482 () Bool)

(assert (=> b!3916694 (= e!2421695 call!284482)))

(declare-fun bm!284475 () Bool)

(declare-fun call!284480 () Bool)

(declare-fun c!680720 () Bool)

(assert (=> bm!284475 (= call!284480 (validRegex!5177 (ite c!680720 (regTwo!23249 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (regOne!23248 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))))

(declare-fun b!3916696 () Bool)

(declare-fun e!2421693 () Bool)

(assert (=> b!3916696 (= e!2421692 e!2421693)))

(assert (=> b!3916696 (= c!680720 (is-Union!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916697 () Bool)

(declare-fun e!2421698 () Bool)

(declare-fun e!2421694 () Bool)

(assert (=> b!3916697 (= e!2421698 e!2421694)))

(declare-fun res!1584337 () Bool)

(assert (=> b!3916697 (=> (not res!1584337) (not e!2421694))))

(assert (=> b!3916697 (= res!1584337 call!284480)))

(declare-fun b!3916698 () Bool)

(declare-fun res!1584338 () Bool)

(declare-fun e!2421697 () Bool)

(assert (=> b!3916698 (=> (not res!1584338) (not e!2421697))))

(declare-fun call!284481 () Bool)

(assert (=> b!3916698 (= res!1584338 call!284481)))

(assert (=> b!3916698 (= e!2421693 e!2421697)))

(declare-fun bm!284476 () Bool)

(declare-fun c!680719 () Bool)

(assert (=> bm!284476 (= call!284482 (validRegex!5177 (ite c!680719 (reg!11697 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (ite c!680720 (regOne!23249 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (regTwo!23248 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))))

(declare-fun b!3916699 () Bool)

(declare-fun res!1584339 () Bool)

(assert (=> b!3916699 (=> res!1584339 e!2421698)))

(assert (=> b!3916699 (= res!1584339 (not (is-Concat!18062 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(assert (=> b!3916699 (= e!2421693 e!2421698)))

(declare-fun bm!284477 () Bool)

(assert (=> bm!284477 (= call!284481 call!284482)))

(declare-fun d!1161779 () Bool)

(declare-fun res!1584340 () Bool)

(declare-fun e!2421696 () Bool)

(assert (=> d!1161779 (=> res!1584340 e!2421696)))

(assert (=> d!1161779 (= res!1584340 (is-ElementMatch!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(assert (=> d!1161779 (= (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) e!2421696)))

(declare-fun b!3916695 () Bool)

(assert (=> b!3916695 (= e!2421696 e!2421692)))

(assert (=> b!3916695 (= c!680719 (is-Star!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916700 () Bool)

(assert (=> b!3916700 (= e!2421694 call!284481)))

(declare-fun b!3916701 () Bool)

(assert (=> b!3916701 (= e!2421697 call!284480)))

(assert (= (and d!1161779 (not res!1584340)) b!3916695))

(assert (= (and b!3916695 c!680719) b!3916693))

(assert (= (and b!3916695 (not c!680719)) b!3916696))

(assert (= (and b!3916693 res!1584341) b!3916694))

(assert (= (and b!3916696 c!680720) b!3916698))

(assert (= (and b!3916696 (not c!680720)) b!3916699))

(assert (= (and b!3916698 res!1584338) b!3916701))

(assert (= (and b!3916699 (not res!1584339)) b!3916697))

(assert (= (and b!3916697 res!1584337) b!3916700))

(assert (= (or b!3916701 b!3916697) bm!284475))

(assert (= (or b!3916698 b!3916700) bm!284477))

(assert (= (or b!3916694 bm!284477) bm!284476))

(declare-fun m!4480131 () Bool)

(assert (=> b!3916693 m!4480131))

(declare-fun m!4480133 () Bool)

(assert (=> bm!284475 m!4480133))

(declare-fun m!4480135 () Bool)

(assert (=> bm!284476 m!4480135))

(assert (=> d!1161511 d!1161779))

(declare-fun d!1161781 () Bool)

(declare-fun charsToInt!0 (List!41627) (_ BitVec 32))

(assert (=> d!1161781 (= (inv!16 (value!204831 (h!46925 suffixTokens!72))) (= (charsToInt!0 (text!47298 (value!204831 (h!46925 suffixTokens!72)))) (value!204822 (value!204831 (h!46925 suffixTokens!72)))))))

(declare-fun bs!585724 () Bool)

(assert (= bs!585724 d!1161781))

(declare-fun m!4480137 () Bool)

(assert (=> bs!585724 m!4480137))

(assert (=> b!3916056 d!1161781))

(declare-fun d!1161783 () Bool)

(assert (=> d!1161783 (= (isEmpty!24701 lt!1364317) (is-Nil!41504 lt!1364317))))

(assert (=> bm!284440 d!1161783))

(declare-fun d!1161785 () Bool)

(declare-fun c!680723 () Bool)

(assert (=> d!1161785 (= c!680723 (is-Node!12674 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))))))

(declare-fun e!2421703 () Bool)

(assert (=> d!1161785 (= (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))) e!2421703)))

(declare-fun b!3916708 () Bool)

(declare-fun inv!55704 (Conc!12674) Bool)

(assert (=> b!3916708 (= e!2421703 (inv!55704 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))))))

(declare-fun b!3916709 () Bool)

(declare-fun e!2421704 () Bool)

(assert (=> b!3916709 (= e!2421703 e!2421704)))

(declare-fun res!1584344 () Bool)

(assert (=> b!3916709 (= res!1584344 (not (is-Leaf!19613 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))))))))

(assert (=> b!3916709 (=> res!1584344 e!2421704)))

(declare-fun b!3916710 () Bool)

(declare-fun inv!55705 (Conc!12674) Bool)

(assert (=> b!3916710 (= e!2421704 (inv!55705 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))))))

(assert (= (and d!1161785 c!680723) b!3916708))

(assert (= (and d!1161785 (not c!680723)) b!3916709))

(assert (= (and b!3916709 (not res!1584344)) b!3916710))

(declare-fun m!4480139 () Bool)

(assert (=> b!3916708 m!4480139))

(declare-fun m!4480141 () Bool)

(assert (=> b!3916710 m!4480141))

(assert (=> b!3916165 d!1161785))

(assert (=> d!1161525 d!1161511))

(declare-fun d!1161787 () Bool)

(assert (=> d!1161787 (ruleValid!2411 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161787 true))

(declare-fun _$65!1371 () Unit!59640)

(assert (=> d!1161787 (= (choose!23195 thiss!20629 (rule!9387 (_1!23513 (v!39206 lt!1364311))) rules!2768) _$65!1371)))

(declare-fun bs!585725 () Bool)

(assert (= bs!585725 d!1161787))

(assert (=> bs!585725 m!4479173))

(assert (=> d!1161525 d!1161787))

(declare-fun d!1161789 () Bool)

(declare-fun lt!1364692 () Bool)

(assert (=> d!1161789 (= lt!1364692 (set.member (rule!9387 (_1!23513 (v!39206 lt!1364311))) (content!6243 rules!2768)))))

(declare-fun e!2421706 () Bool)

(assert (=> d!1161789 (= lt!1364692 e!2421706)))

(declare-fun res!1584345 () Bool)

(assert (=> d!1161789 (=> (not res!1584345) (not e!2421706))))

(assert (=> d!1161789 (= res!1584345 (is-Cons!41506 rules!2768))))

(assert (=> d!1161789 (= (contains!8340 rules!2768 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364692)))

(declare-fun b!3916711 () Bool)

(declare-fun e!2421705 () Bool)

(assert (=> b!3916711 (= e!2421706 e!2421705)))

(declare-fun res!1584346 () Bool)

(assert (=> b!3916711 (=> res!1584346 e!2421705)))

(assert (=> b!3916711 (= res!1584346 (= (h!46926 rules!2768) (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(declare-fun b!3916712 () Bool)

(assert (=> b!3916712 (= e!2421705 (contains!8340 (t!323731 rules!2768) (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (= (and d!1161789 res!1584345) b!3916711))

(assert (= (and b!3916711 (not res!1584346)) b!3916712))

(assert (=> d!1161789 m!4479999))

(declare-fun m!4480143 () Bool)

(assert (=> d!1161789 m!4480143))

(declare-fun m!4480145 () Bool)

(assert (=> b!3916712 m!4480145))

(assert (=> d!1161525 d!1161789))

(declare-fun d!1161791 () Bool)

(declare-fun lt!1364693 () Int)

(assert (=> d!1161791 (>= lt!1364693 0)))

(declare-fun e!2421707 () Int)

(assert (=> d!1161791 (= lt!1364693 e!2421707)))

(declare-fun c!680724 () Bool)

(assert (=> d!1161791 (= c!680724 (is-Nil!41504 (t!323729 (_2!23513 lt!1364301))))))

(assert (=> d!1161791 (= (size!31162 (t!323729 (_2!23513 lt!1364301))) lt!1364693)))

(declare-fun b!3916713 () Bool)

(assert (=> b!3916713 (= e!2421707 0)))

(declare-fun b!3916714 () Bool)

(assert (=> b!3916714 (= e!2421707 (+ 1 (size!31162 (t!323729 (t!323729 (_2!23513 lt!1364301))))))))

(assert (= (and d!1161791 c!680724) b!3916713))

(assert (= (and d!1161791 (not c!680724)) b!3916714))

(declare-fun m!4480147 () Bool)

(assert (=> b!3916714 m!4480147))

(assert (=> b!3916143 d!1161791))

(declare-fun d!1161793 () Bool)

(declare-fun e!2421708 () Bool)

(assert (=> d!1161793 e!2421708))

(declare-fun res!1584348 () Bool)

(assert (=> d!1161793 (=> (not res!1584348) (not e!2421708))))

(declare-fun lt!1364694 () List!41629)

(assert (=> d!1161793 (= res!1584348 (= (content!6240 lt!1364694) (set.union (content!6240 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505))) (content!6240 (_1!23514 lt!1364297)))))))

(declare-fun e!2421709 () List!41629)

(assert (=> d!1161793 (= lt!1364694 e!2421709)))

(declare-fun c!680725 () Bool)

(assert (=> d!1161793 (= c!680725 (is-Nil!41505 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505))))))

(assert (=> d!1161793 (= (++!10684 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) (_1!23514 lt!1364297)) lt!1364694)))

(declare-fun b!3916718 () Bool)

(assert (=> b!3916718 (= e!2421708 (or (not (= (_1!23514 lt!1364297) Nil!41505)) (= lt!1364694 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)))))))

(declare-fun b!3916716 () Bool)

(assert (=> b!3916716 (= e!2421709 (Cons!41505 (h!46925 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505))) (++!10684 (t!323730 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505))) (_1!23514 lt!1364297))))))

(declare-fun b!3916717 () Bool)

(declare-fun res!1584347 () Bool)

(assert (=> b!3916717 (=> (not res!1584347) (not e!2421708))))

(assert (=> b!3916717 (= res!1584347 (= (size!31165 lt!1364694) (+ (size!31165 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505))) (size!31165 (_1!23514 lt!1364297)))))))

(declare-fun b!3916715 () Bool)

(assert (=> b!3916715 (= e!2421709 (_1!23514 lt!1364297))))

(assert (= (and d!1161793 c!680725) b!3916715))

(assert (= (and d!1161793 (not c!680725)) b!3916716))

(assert (= (and d!1161793 res!1584348) b!3916717))

(assert (= (and b!3916717 res!1584347) b!3916718))

(declare-fun m!4480149 () Bool)

(assert (=> d!1161793 m!4480149))

(assert (=> d!1161793 m!4480011))

(assert (=> d!1161793 m!4479503))

(declare-fun m!4480151 () Bool)

(assert (=> b!3916716 m!4480151))

(declare-fun m!4480153 () Bool)

(assert (=> b!3916717 m!4480153))

(declare-fun m!4480155 () Bool)

(assert (=> b!3916717 m!4480155))

(assert (=> b!3916717 m!4479511))

(assert (=> b!3916137 d!1161793))

(declare-fun b!3916721 () Bool)

(declare-fun e!2421711 () Bool)

(assert (=> b!3916721 (= e!2421711 (isPrefix!3558 (tail!5996 lt!1364317) (tail!5996 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))))

(declare-fun d!1161795 () Bool)

(declare-fun e!2421712 () Bool)

(assert (=> d!1161795 e!2421712))

(declare-fun res!1584350 () Bool)

(assert (=> d!1161795 (=> res!1584350 e!2421712)))

(declare-fun lt!1364695 () Bool)

(assert (=> d!1161795 (= res!1584350 (not lt!1364695))))

(declare-fun e!2421710 () Bool)

(assert (=> d!1161795 (= lt!1364695 e!2421710)))

(declare-fun res!1584349 () Bool)

(assert (=> d!1161795 (=> res!1584349 e!2421710)))

(assert (=> d!1161795 (= res!1584349 (is-Nil!41504 lt!1364317))))

(assert (=> d!1161795 (= (isPrefix!3558 lt!1364317 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311)))) lt!1364695)))

(declare-fun b!3916719 () Bool)

(assert (=> b!3916719 (= e!2421710 e!2421711)))

(declare-fun res!1584352 () Bool)

(assert (=> b!3916719 (=> (not res!1584352) (not e!2421711))))

(assert (=> b!3916719 (= res!1584352 (not (is-Nil!41504 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916722 () Bool)

(assert (=> b!3916722 (= e!2421712 (>= (size!31162 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311)))) (size!31162 lt!1364317)))))

(declare-fun b!3916720 () Bool)

(declare-fun res!1584351 () Bool)

(assert (=> b!3916720 (=> (not res!1584351) (not e!2421711))))

(assert (=> b!3916720 (= res!1584351 (= (head!8280 lt!1364317) (head!8280 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))))

(assert (= (and d!1161795 (not res!1584349)) b!3916719))

(assert (= (and b!3916719 res!1584352) b!3916720))

(assert (= (and b!3916720 res!1584351) b!3916721))

(assert (= (and d!1161795 (not res!1584350)) b!3916722))

(assert (=> b!3916721 m!4479307))

(assert (=> b!3916721 m!4479159))

(declare-fun m!4480157 () Bool)

(assert (=> b!3916721 m!4480157))

(assert (=> b!3916721 m!4479307))

(assert (=> b!3916721 m!4480157))

(declare-fun m!4480159 () Bool)

(assert (=> b!3916721 m!4480159))

(assert (=> b!3916722 m!4479159))

(declare-fun m!4480161 () Bool)

(assert (=> b!3916722 m!4480161))

(assert (=> b!3916722 m!4479171))

(assert (=> b!3916720 m!4479315))

(assert (=> b!3916720 m!4479159))

(declare-fun m!4480163 () Bool)

(assert (=> b!3916720 m!4480163))

(assert (=> d!1161513 d!1161795))

(assert (=> d!1161513 d!1161535))

(declare-fun d!1161797 () Bool)

(assert (=> d!1161797 (isPrefix!3558 lt!1364317 (++!10683 lt!1364317 (_2!23513 (v!39206 lt!1364311))))))

(assert (=> d!1161797 true))

(declare-fun _$46!1558 () Unit!59640)

(assert (=> d!1161797 (= (choose!23193 lt!1364317 (_2!23513 (v!39206 lt!1364311))) _$46!1558)))

(declare-fun bs!585726 () Bool)

(assert (= bs!585726 d!1161797))

(assert (=> bs!585726 m!4479159))

(assert (=> bs!585726 m!4479159))

(assert (=> bs!585726 m!4479301))

(assert (=> d!1161513 d!1161797))

(declare-fun d!1161799 () Bool)

(declare-fun c!680726 () Bool)

(assert (=> d!1161799 (= c!680726 (is-Node!12674 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun e!2421713 () Bool)

(assert (=> d!1161799 (= (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))) e!2421713)))

(declare-fun b!3916723 () Bool)

(assert (=> b!3916723 (= e!2421713 (inv!55704 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun b!3916724 () Bool)

(declare-fun e!2421714 () Bool)

(assert (=> b!3916724 (= e!2421713 e!2421714)))

(declare-fun res!1584353 () Bool)

(assert (=> b!3916724 (= res!1584353 (not (is-Leaf!19613 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))))))))

(assert (=> b!3916724 (=> res!1584353 e!2421714)))

(declare-fun b!3916725 () Bool)

(assert (=> b!3916725 (= e!2421714 (inv!55705 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))))))

(assert (= (and d!1161799 c!680726) b!3916723))

(assert (= (and d!1161799 (not c!680726)) b!3916724))

(assert (= (and b!3916724 (not res!1584353)) b!3916725))

(declare-fun m!4480165 () Bool)

(assert (=> b!3916723 m!4480165))

(declare-fun m!4480167 () Bool)

(assert (=> b!3916725 m!4480167))

(assert (=> b!3916033 d!1161799))

(declare-fun d!1161801 () Bool)

(declare-fun lt!1364696 () Int)

(assert (=> d!1161801 (>= lt!1364696 0)))

(declare-fun e!2421715 () Int)

(assert (=> d!1161801 (= lt!1364696 e!2421715)))

(declare-fun c!680727 () Bool)

(assert (=> d!1161801 (= c!680727 (is-Nil!41504 lt!1364470))))

(assert (=> d!1161801 (= (size!31162 lt!1364470) lt!1364696)))

(declare-fun b!3916726 () Bool)

(assert (=> b!3916726 (= e!2421715 0)))

(declare-fun b!3916727 () Bool)

(assert (=> b!3916727 (= e!2421715 (+ 1 (size!31162 (t!323729 lt!1364470))))))

(assert (= (and d!1161801 c!680727) b!3916726))

(assert (= (and d!1161801 (not c!680727)) b!3916727))

(declare-fun m!4480169 () Bool)

(assert (=> b!3916727 m!4480169))

(assert (=> b!3916129 d!1161801))

(assert (=> b!3916129 d!1161549))

(assert (=> b!3916129 d!1161587))

(declare-fun b!3916728 () Bool)

(declare-fun res!1584355 () Bool)

(declare-fun e!2421718 () Bool)

(assert (=> b!3916728 (=> (not res!1584355) (not e!2421718))))

(declare-fun lt!1364700 () Option!8883)

(assert (=> b!3916728 (= res!1584355 (< (size!31162 (_2!23513 (get!13715 lt!1364700))) (size!31162 lt!1364304)))))

(declare-fun b!3916729 () Bool)

(declare-fun res!1584357 () Bool)

(assert (=> b!3916729 (=> (not res!1584357) (not e!2421718))))

(assert (=> b!3916729 (= res!1584357 (= (value!204831 (_1!23513 (get!13715 lt!1364700))) (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364700)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364700)))))))))

(declare-fun b!3916730 () Bool)

(declare-fun e!2421716 () Option!8883)

(declare-fun lt!1364698 () Option!8883)

(declare-fun lt!1364699 () Option!8883)

(assert (=> b!3916730 (= e!2421716 (ite (and (is-None!8882 lt!1364698) (is-None!8882 lt!1364699)) None!8882 (ite (is-None!8882 lt!1364699) lt!1364698 (ite (is-None!8882 lt!1364698) lt!1364699 (ite (>= (size!31161 (_1!23513 (v!39206 lt!1364698))) (size!31161 (_1!23513 (v!39206 lt!1364699)))) lt!1364698 lt!1364699)))))))

(declare-fun call!284483 () Option!8883)

(assert (=> b!3916730 (= lt!1364698 call!284483)))

(assert (=> b!3916730 (= lt!1364699 (maxPrefix!3356 thiss!20629 (t!323731 (t!323731 rules!2768)) lt!1364304))))

(declare-fun b!3916731 () Bool)

(declare-fun res!1584359 () Bool)

(assert (=> b!3916731 (=> (not res!1584359) (not e!2421718))))

(assert (=> b!3916731 (= res!1584359 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364700)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364700))))))))

(declare-fun b!3916732 () Bool)

(declare-fun res!1584358 () Bool)

(assert (=> b!3916732 (=> (not res!1584358) (not e!2421718))))

(assert (=> b!3916732 (= res!1584358 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364700)))) (_2!23513 (get!13715 lt!1364700))) lt!1364304))))

(declare-fun b!3916733 () Bool)

(assert (=> b!3916733 (= e!2421716 call!284483)))

(declare-fun bm!284478 () Bool)

(assert (=> bm!284478 (= call!284483 (maxPrefixOneRule!2426 thiss!20629 (h!46926 (t!323731 rules!2768)) lt!1364304))))

(declare-fun b!3916735 () Bool)

(declare-fun e!2421717 () Bool)

(assert (=> b!3916735 (= e!2421717 e!2421718)))

(declare-fun res!1584354 () Bool)

(assert (=> b!3916735 (=> (not res!1584354) (not e!2421718))))

(assert (=> b!3916735 (= res!1584354 (isDefined!6926 lt!1364700))))

(declare-fun b!3916736 () Bool)

(assert (=> b!3916736 (= e!2421718 (contains!8340 (t!323731 rules!2768) (rule!9387 (_1!23513 (get!13715 lt!1364700)))))))

(declare-fun b!3916734 () Bool)

(declare-fun res!1584360 () Bool)

(assert (=> b!3916734 (=> (not res!1584360) (not e!2421718))))

(assert (=> b!3916734 (= res!1584360 (= (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364700)))) (originalCharacters!7063 (_1!23513 (get!13715 lt!1364700)))))))

(declare-fun d!1161803 () Bool)

(assert (=> d!1161803 e!2421717))

(declare-fun res!1584356 () Bool)

(assert (=> d!1161803 (=> res!1584356 e!2421717)))

(assert (=> d!1161803 (= res!1584356 (isEmpty!24705 lt!1364700))))

(assert (=> d!1161803 (= lt!1364700 e!2421716)))

(declare-fun c!680728 () Bool)

(assert (=> d!1161803 (= c!680728 (and (is-Cons!41506 (t!323731 rules!2768)) (is-Nil!41506 (t!323731 (t!323731 rules!2768)))))))

(declare-fun lt!1364701 () Unit!59640)

(declare-fun lt!1364697 () Unit!59640)

(assert (=> d!1161803 (= lt!1364701 lt!1364697)))

(assert (=> d!1161803 (isPrefix!3558 lt!1364304 lt!1364304)))

(assert (=> d!1161803 (= lt!1364697 (lemmaIsPrefixRefl!2257 lt!1364304 lt!1364304))))

(assert (=> d!1161803 (rulesValidInductive!2327 thiss!20629 (t!323731 rules!2768))))

(assert (=> d!1161803 (= (maxPrefix!3356 thiss!20629 (t!323731 rules!2768) lt!1364304) lt!1364700)))

(assert (= (and d!1161803 c!680728) b!3916733))

(assert (= (and d!1161803 (not c!680728)) b!3916730))

(assert (= (or b!3916733 b!3916730) bm!284478))

(assert (= (and d!1161803 (not res!1584356)) b!3916735))

(assert (= (and b!3916735 res!1584354) b!3916734))

(assert (= (and b!3916734 res!1584360) b!3916728))

(assert (= (and b!3916728 res!1584355) b!3916732))

(assert (= (and b!3916732 res!1584358) b!3916729))

(assert (= (and b!3916729 res!1584357) b!3916731))

(assert (= (and b!3916731 res!1584359) b!3916736))

(declare-fun m!4480171 () Bool)

(assert (=> b!3916728 m!4480171))

(declare-fun m!4480173 () Bool)

(assert (=> b!3916728 m!4480173))

(assert (=> b!3916728 m!4479125))

(assert (=> b!3916731 m!4480171))

(declare-fun m!4480175 () Bool)

(assert (=> b!3916731 m!4480175))

(assert (=> b!3916731 m!4480175))

(declare-fun m!4480177 () Bool)

(assert (=> b!3916731 m!4480177))

(assert (=> b!3916731 m!4480177))

(declare-fun m!4480179 () Bool)

(assert (=> b!3916731 m!4480179))

(assert (=> b!3916732 m!4480171))

(assert (=> b!3916732 m!4480175))

(assert (=> b!3916732 m!4480175))

(assert (=> b!3916732 m!4480177))

(assert (=> b!3916732 m!4480177))

(declare-fun m!4480181 () Bool)

(assert (=> b!3916732 m!4480181))

(declare-fun m!4480183 () Bool)

(assert (=> b!3916735 m!4480183))

(assert (=> b!3916729 m!4480171))

(declare-fun m!4480185 () Bool)

(assert (=> b!3916729 m!4480185))

(assert (=> b!3916729 m!4480185))

(declare-fun m!4480187 () Bool)

(assert (=> b!3916729 m!4480187))

(declare-fun m!4480189 () Bool)

(assert (=> b!3916730 m!4480189))

(declare-fun m!4480191 () Bool)

(assert (=> bm!284478 m!4480191))

(declare-fun m!4480193 () Bool)

(assert (=> d!1161803 m!4480193))

(assert (=> d!1161803 m!4479437))

(assert (=> d!1161803 m!4479439))

(declare-fun m!4480195 () Bool)

(assert (=> d!1161803 m!4480195))

(assert (=> b!3916734 m!4480171))

(assert (=> b!3916734 m!4480175))

(assert (=> b!3916734 m!4480175))

(assert (=> b!3916734 m!4480177))

(assert (=> b!3916736 m!4480171))

(declare-fun m!4480197 () Bool)

(assert (=> b!3916736 m!4480197))

(assert (=> b!3916080 d!1161803))

(declare-fun d!1161805 () Bool)

(assert (=> d!1161805 (= (inv!55693 (tag!7323 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (= (mod (str.len (value!204830 (tag!7323 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3916386 d!1161805))

(declare-fun d!1161807 () Bool)

(declare-fun res!1584361 () Bool)

(declare-fun e!2421719 () Bool)

(assert (=> d!1161807 (=> (not res!1584361) (not e!2421719))))

(assert (=> d!1161807 (= res!1584361 (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))))))

(assert (=> d!1161807 (= (inv!55697 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) e!2421719)))

(declare-fun b!3916737 () Bool)

(assert (=> b!3916737 (= e!2421719 (equivClasses!2677 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))))))

(assert (= (and d!1161807 res!1584361) b!3916737))

(declare-fun m!4480199 () Bool)

(assert (=> d!1161807 m!4480199))

(declare-fun m!4480201 () Bool)

(assert (=> b!3916737 m!4480201))

(assert (=> b!3916386 d!1161807))

(declare-fun b!3916738 () Bool)

(declare-fun e!2421722 () Bool)

(assert (=> b!3916738 (= e!2421722 (= (head!8280 (tail!5996 lt!1364317)) (c!680555 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317)))))))

(declare-fun b!3916739 () Bool)

(declare-fun res!1584363 () Bool)

(assert (=> b!3916739 (=> (not res!1584363) (not e!2421722))))

(assert (=> b!3916739 (= res!1584363 (isEmpty!24701 (tail!5996 (tail!5996 lt!1364317))))))

(declare-fun b!3916740 () Bool)

(declare-fun e!2421723 () Bool)

(declare-fun lt!1364702 () Bool)

(declare-fun call!284484 () Bool)

(assert (=> b!3916740 (= e!2421723 (= lt!1364702 call!284484))))

(declare-fun b!3916741 () Bool)

(declare-fun e!2421721 () Bool)

(assert (=> b!3916741 (= e!2421721 (not lt!1364702))))

(declare-fun d!1161809 () Bool)

(assert (=> d!1161809 e!2421723))

(declare-fun c!680729 () Bool)

(assert (=> d!1161809 (= c!680729 (is-EmptyExpr!11368 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317))))))

(declare-fun e!2421720 () Bool)

(assert (=> d!1161809 (= lt!1364702 e!2421720)))

(declare-fun c!680730 () Bool)

(assert (=> d!1161809 (= c!680730 (isEmpty!24701 (tail!5996 lt!1364317)))))

(assert (=> d!1161809 (validRegex!5177 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317)))))

(assert (=> d!1161809 (= (matchR!5457 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317)) (tail!5996 lt!1364317)) lt!1364702)))

(declare-fun b!3916742 () Bool)

(declare-fun res!1584362 () Bool)

(declare-fun e!2421724 () Bool)

(assert (=> b!3916742 (=> res!1584362 e!2421724)))

(assert (=> b!3916742 (= res!1584362 e!2421722)))

(declare-fun res!1584365 () Bool)

(assert (=> b!3916742 (=> (not res!1584365) (not e!2421722))))

(assert (=> b!3916742 (= res!1584365 lt!1364702)))

(declare-fun b!3916743 () Bool)

(declare-fun res!1584364 () Bool)

(assert (=> b!3916743 (=> (not res!1584364) (not e!2421722))))

(assert (=> b!3916743 (= res!1584364 (not call!284484))))

(declare-fun b!3916744 () Bool)

(declare-fun e!2421726 () Bool)

(declare-fun e!2421725 () Bool)

(assert (=> b!3916744 (= e!2421726 e!2421725)))

(declare-fun res!1584368 () Bool)

(assert (=> b!3916744 (=> res!1584368 e!2421725)))

(assert (=> b!3916744 (= res!1584368 call!284484)))

(declare-fun b!3916745 () Bool)

(assert (=> b!3916745 (= e!2421725 (not (= (head!8280 (tail!5996 lt!1364317)) (c!680555 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317))))))))

(declare-fun bm!284479 () Bool)

(assert (=> bm!284479 (= call!284484 (isEmpty!24701 (tail!5996 lt!1364317)))))

(declare-fun b!3916746 () Bool)

(assert (=> b!3916746 (= e!2421723 e!2421721)))

(declare-fun c!680731 () Bool)

(assert (=> b!3916746 (= c!680731 (is-EmptyLang!11368 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317))))))

(declare-fun b!3916747 () Bool)

(assert (=> b!3916747 (= e!2421724 e!2421726)))

(declare-fun res!1584367 () Bool)

(assert (=> b!3916747 (=> (not res!1584367) (not e!2421726))))

(assert (=> b!3916747 (= res!1584367 (not lt!1364702))))

(declare-fun b!3916748 () Bool)

(assert (=> b!3916748 (= e!2421720 (nullable!3978 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317))))))

(declare-fun b!3916749 () Bool)

(declare-fun res!1584369 () Bool)

(assert (=> b!3916749 (=> res!1584369 e!2421724)))

(assert (=> b!3916749 (= res!1584369 (not (is-ElementMatch!11368 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317)))))))

(assert (=> b!3916749 (= e!2421721 e!2421724)))

(declare-fun b!3916750 () Bool)

(declare-fun res!1584366 () Bool)

(assert (=> b!3916750 (=> res!1584366 e!2421725)))

(assert (=> b!3916750 (= res!1584366 (not (isEmpty!24701 (tail!5996 (tail!5996 lt!1364317)))))))

(declare-fun b!3916751 () Bool)

(assert (=> b!3916751 (= e!2421720 (matchR!5457 (derivativeStep!3443 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317)) (head!8280 (tail!5996 lt!1364317))) (tail!5996 (tail!5996 lt!1364317))))))

(assert (= (and d!1161809 c!680730) b!3916748))

(assert (= (and d!1161809 (not c!680730)) b!3916751))

(assert (= (and d!1161809 c!680729) b!3916740))

(assert (= (and d!1161809 (not c!680729)) b!3916746))

(assert (= (and b!3916746 c!680731) b!3916741))

(assert (= (and b!3916746 (not c!680731)) b!3916749))

(assert (= (and b!3916749 (not res!1584369)) b!3916742))

(assert (= (and b!3916742 res!1584365) b!3916743))

(assert (= (and b!3916743 res!1584364) b!3916739))

(assert (= (and b!3916739 res!1584363) b!3916738))

(assert (= (and b!3916742 (not res!1584362)) b!3916747))

(assert (= (and b!3916747 res!1584367) b!3916744))

(assert (= (and b!3916744 (not res!1584368)) b!3916750))

(assert (= (and b!3916750 (not res!1584366)) b!3916745))

(assert (= (or b!3916740 b!3916743 b!3916744) bm!284479))

(assert (=> b!3916739 m!4479307))

(declare-fun m!4480203 () Bool)

(assert (=> b!3916739 m!4480203))

(assert (=> b!3916739 m!4480203))

(declare-fun m!4480205 () Bool)

(assert (=> b!3916739 m!4480205))

(assert (=> b!3916738 m!4479307))

(declare-fun m!4480207 () Bool)

(assert (=> b!3916738 m!4480207))

(assert (=> bm!284479 m!4479307))

(assert (=> bm!284479 m!4479597))

(assert (=> b!3916745 m!4479307))

(assert (=> b!3916745 m!4480207))

(assert (=> b!3916751 m!4479307))

(assert (=> b!3916751 m!4480207))

(assert (=> b!3916751 m!4479601))

(assert (=> b!3916751 m!4480207))

(declare-fun m!4480209 () Bool)

(assert (=> b!3916751 m!4480209))

(assert (=> b!3916751 m!4479307))

(assert (=> b!3916751 m!4480203))

(assert (=> b!3916751 m!4480209))

(assert (=> b!3916751 m!4480203))

(declare-fun m!4480211 () Bool)

(assert (=> b!3916751 m!4480211))

(assert (=> b!3916748 m!4479601))

(declare-fun m!4480213 () Bool)

(assert (=> b!3916748 m!4480213))

(assert (=> d!1161809 m!4479307))

(assert (=> d!1161809 m!4479597))

(assert (=> d!1161809 m!4479601))

(declare-fun m!4480215 () Bool)

(assert (=> d!1161809 m!4480215))

(assert (=> b!3916750 m!4479307))

(assert (=> b!3916750 m!4480203))

(assert (=> b!3916750 m!4480203))

(assert (=> b!3916750 m!4480205))

(assert (=> b!3916224 d!1161809))

(declare-fun b!3916772 () Bool)

(declare-fun e!2421737 () Regex!11368)

(assert (=> b!3916772 (= e!2421737 EmptyLang!11368)))

(declare-fun c!680744 () Bool)

(declare-fun bm!284488 () Bool)

(declare-fun call!284493 () Regex!11368)

(declare-fun c!680745 () Bool)

(assert (=> bm!284488 (= call!284493 (derivativeStep!3443 (ite c!680745 (regOne!23249 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (ite c!680744 (reg!11697 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (regOne!23248 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (head!8280 lt!1364317)))))

(declare-fun b!3916773 () Bool)

(declare-fun e!2421738 () Regex!11368)

(declare-fun call!284495 () Regex!11368)

(assert (=> b!3916773 (= e!2421738 (Concat!18062 call!284495 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916774 () Bool)

(declare-fun c!680746 () Bool)

(assert (=> b!3916774 (= c!680746 (nullable!3978 (regOne!23248 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun e!2421740 () Regex!11368)

(assert (=> b!3916774 (= e!2421738 e!2421740)))

(declare-fun b!3916775 () Bool)

(declare-fun e!2421739 () Regex!11368)

(assert (=> b!3916775 (= e!2421737 e!2421739)))

(declare-fun c!680743 () Bool)

(assert (=> b!3916775 (= c!680743 (is-ElementMatch!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun d!1161811 () Bool)

(declare-fun lt!1364705 () Regex!11368)

(assert (=> d!1161811 (validRegex!5177 lt!1364705)))

(assert (=> d!1161811 (= lt!1364705 e!2421737)))

(declare-fun c!680742 () Bool)

(assert (=> d!1161811 (= c!680742 (or (is-EmptyExpr!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (is-EmptyLang!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(assert (=> d!1161811 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161811 (= (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 lt!1364317)) lt!1364705)))

(declare-fun b!3916776 () Bool)

(declare-fun e!2421741 () Regex!11368)

(declare-fun call!284496 () Regex!11368)

(assert (=> b!3916776 (= e!2421741 (Union!11368 call!284493 call!284496))))

(declare-fun b!3916777 () Bool)

(assert (=> b!3916777 (= e!2421741 e!2421738)))

(assert (=> b!3916777 (= c!680744 (is-Star!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun bm!284489 () Bool)

(assert (=> bm!284489 (= call!284495 call!284493)))

(declare-fun bm!284490 () Bool)

(assert (=> bm!284490 (= call!284496 (derivativeStep!3443 (ite c!680745 (regTwo!23249 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (regTwo!23248 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) (head!8280 lt!1364317)))))

(declare-fun b!3916778 () Bool)

(declare-fun call!284494 () Regex!11368)

(assert (=> b!3916778 (= e!2421740 (Union!11368 (Concat!18062 call!284494 (regTwo!23248 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) call!284496))))

(declare-fun b!3916779 () Bool)

(assert (=> b!3916779 (= e!2421740 (Union!11368 (Concat!18062 call!284494 (regTwo!23248 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) EmptyLang!11368))))

(declare-fun bm!284491 () Bool)

(assert (=> bm!284491 (= call!284494 call!284495)))

(declare-fun b!3916780 () Bool)

(assert (=> b!3916780 (= e!2421739 (ite (= (head!8280 lt!1364317) (c!680555 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) EmptyExpr!11368 EmptyLang!11368))))

(declare-fun b!3916781 () Bool)

(assert (=> b!3916781 (= c!680745 (is-Union!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(assert (=> b!3916781 (= e!2421739 e!2421741)))

(assert (= (and d!1161811 c!680742) b!3916772))

(assert (= (and d!1161811 (not c!680742)) b!3916775))

(assert (= (and b!3916775 c!680743) b!3916780))

(assert (= (and b!3916775 (not c!680743)) b!3916781))

(assert (= (and b!3916781 c!680745) b!3916776))

(assert (= (and b!3916781 (not c!680745)) b!3916777))

(assert (= (and b!3916777 c!680744) b!3916773))

(assert (= (and b!3916777 (not c!680744)) b!3916774))

(assert (= (and b!3916774 c!680746) b!3916778))

(assert (= (and b!3916774 (not c!680746)) b!3916779))

(assert (= (or b!3916778 b!3916779) bm!284491))

(assert (= (or b!3916773 bm!284491) bm!284489))

(assert (= (or b!3916776 b!3916778) bm!284490))

(assert (= (or b!3916776 bm!284489) bm!284488))

(assert (=> bm!284488 m!4479315))

(declare-fun m!4480217 () Bool)

(assert (=> bm!284488 m!4480217))

(declare-fun m!4480219 () Bool)

(assert (=> b!3916774 m!4480219))

(declare-fun m!4480221 () Bool)

(assert (=> d!1161811 m!4480221))

(assert (=> d!1161811 m!4479297))

(assert (=> bm!284490 m!4479315))

(declare-fun m!4480223 () Bool)

(assert (=> bm!284490 m!4480223))

(assert (=> b!3916224 d!1161811))

(assert (=> b!3916224 d!1161769))

(assert (=> b!3916224 d!1161707))

(declare-fun d!1161813 () Bool)

(declare-fun lt!1364706 () Int)

(assert (=> d!1161813 (>= lt!1364706 0)))

(declare-fun e!2421742 () Int)

(assert (=> d!1161813 (= lt!1364706 e!2421742)))

(declare-fun c!680747 () Bool)

(assert (=> d!1161813 (= c!680747 (is-Nil!41504 lt!1364466))))

(assert (=> d!1161813 (= (size!31162 lt!1364466) lt!1364706)))

(declare-fun b!3916782 () Bool)

(assert (=> b!3916782 (= e!2421742 0)))

(declare-fun b!3916783 () Bool)

(assert (=> b!3916783 (= e!2421742 (+ 1 (size!31162 (t!323729 lt!1364466))))))

(assert (= (and d!1161813 c!680747) b!3916782))

(assert (= (and d!1161813 (not c!680747)) b!3916783))

(declare-fun m!4480225 () Bool)

(assert (=> b!3916783 m!4480225))

(assert (=> b!3916110 d!1161813))

(assert (=> b!3916110 d!1161555))

(assert (=> b!3916110 d!1161593))

(declare-fun d!1161815 () Bool)

(declare-fun charsToBigInt!0 (List!41627 Int) Int)

(assert (=> d!1161815 (= (inv!15 (value!204831 (h!46925 suffixTokens!72))) (= (charsToBigInt!0 (text!47300 (value!204831 (h!46925 suffixTokens!72))) 0) (value!204826 (value!204831 (h!46925 suffixTokens!72)))))))

(declare-fun bs!585727 () Bool)

(assert (= bs!585727 d!1161815))

(declare-fun m!4480227 () Bool)

(assert (=> bs!585727 m!4480227))

(assert (=> b!3916058 d!1161815))

(declare-fun d!1161817 () Bool)

(assert (=> d!1161817 (= (isEmpty!24699 (_1!23514 lt!1364476)) (is-Nil!41505 (_1!23514 lt!1364476)))))

(assert (=> b!3916152 d!1161817))

(declare-fun d!1161819 () Bool)

(assert (=> d!1161819 (= (inv!16 (value!204831 (h!46925 prefixTokens!80))) (= (charsToInt!0 (text!47298 (value!204831 (h!46925 prefixTokens!80)))) (value!204822 (value!204831 (h!46925 prefixTokens!80)))))))

(declare-fun bs!585728 () Bool)

(assert (= bs!585728 d!1161819))

(declare-fun m!4480229 () Bool)

(assert (=> bs!585728 m!4480229))

(assert (=> b!3916155 d!1161819))

(declare-fun bs!585729 () Bool)

(declare-fun d!1161821 () Bool)

(assert (= bs!585729 (and d!1161821 d!1161751)))

(declare-fun lambda!126524 () Int)

(assert (=> bs!585729 (= (and (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (= lambda!126524 lambda!126518))))

(assert (=> d!1161821 true))

(assert (=> d!1161821 (< (dynLambda!17833 order!22275 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (dynLambda!17832 order!22273 lambda!126524))))

(assert (=> d!1161821 true))

(assert (=> d!1161821 (< (dynLambda!17831 order!22271 (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (dynLambda!17832 order!22273 lambda!126524))))

(declare-fun Forall!1447 (Int) Bool)

(assert (=> d!1161821 (= (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (Forall!1447 lambda!126524))))

(declare-fun bs!585730 () Bool)

(assert (= bs!585730 d!1161821))

(declare-fun m!4480231 () Bool)

(assert (=> bs!585730 m!4480231))

(assert (=> d!1161591 d!1161821))

(declare-fun d!1161823 () Bool)

(declare-fun lt!1364707 () Int)

(assert (=> d!1161823 (>= lt!1364707 0)))

(declare-fun e!2421743 () Int)

(assert (=> d!1161823 (= lt!1364707 e!2421743)))

(declare-fun c!680748 () Bool)

(assert (=> d!1161823 (= c!680748 (is-Nil!41504 (originalCharacters!7063 (h!46925 prefixTokens!80))))))

(assert (=> d!1161823 (= (size!31162 (originalCharacters!7063 (h!46925 prefixTokens!80))) lt!1364707)))

(declare-fun b!3916788 () Bool)

(assert (=> b!3916788 (= e!2421743 0)))

(declare-fun b!3916789 () Bool)

(assert (=> b!3916789 (= e!2421743 (+ 1 (size!31162 (t!323729 (originalCharacters!7063 (h!46925 prefixTokens!80))))))))

(assert (= (and d!1161823 c!680748) b!3916788))

(assert (= (and d!1161823 (not c!680748)) b!3916789))

(declare-fun m!4480233 () Bool)

(assert (=> b!3916789 m!4480233))

(assert (=> b!3916164 d!1161823))

(declare-fun d!1161825 () Bool)

(assert (=> d!1161825 (= (inv!55693 (tag!7323 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (= (mod (str.len (value!204830 (tag!7323 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3916382 d!1161825))

(declare-fun d!1161827 () Bool)

(declare-fun res!1584370 () Bool)

(declare-fun e!2421744 () Bool)

(assert (=> d!1161827 (=> (not res!1584370) (not e!2421744))))

(assert (=> d!1161827 (= res!1584370 (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))))))

(assert (=> d!1161827 (= (inv!55697 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) e!2421744)))

(declare-fun b!3916790 () Bool)

(assert (=> b!3916790 (= e!2421744 (equivClasses!2677 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))))))

(assert (= (and d!1161827 res!1584370) b!3916790))

(declare-fun m!4480235 () Bool)

(assert (=> d!1161827 m!4480235))

(declare-fun m!4480237 () Bool)

(assert (=> b!3916790 m!4480237))

(assert (=> b!3916382 d!1161827))

(declare-fun d!1161829 () Bool)

(declare-fun lt!1364708 () Int)

(assert (=> d!1161829 (>= lt!1364708 0)))

(declare-fun e!2421745 () Int)

(assert (=> d!1161829 (= lt!1364708 e!2421745)))

(declare-fun c!680749 () Bool)

(assert (=> d!1161829 (= c!680749 (is-Nil!41505 (_1!23514 lt!1364476)))))

(assert (=> d!1161829 (= (size!31165 (_1!23514 lt!1364476)) lt!1364708)))

(declare-fun b!3916791 () Bool)

(assert (=> b!3916791 (= e!2421745 0)))

(declare-fun b!3916792 () Bool)

(assert (=> b!3916792 (= e!2421745 (+ 1 (size!31165 (t!323730 (_1!23514 lt!1364476)))))))

(assert (= (and d!1161829 c!680749) b!3916791))

(assert (= (and d!1161829 (not c!680749)) b!3916792))

(declare-fun m!4480239 () Bool)

(assert (=> b!3916792 m!4480239))

(assert (=> d!1161599 d!1161829))

(declare-fun b!3916793 () Bool)

(declare-fun res!1584372 () Bool)

(declare-fun e!2421748 () Bool)

(assert (=> b!3916793 (=> (not res!1584372) (not e!2421748))))

(declare-fun lt!1364712 () Option!8883)

(assert (=> b!3916793 (= res!1584372 (< (size!31162 (_2!23513 (get!13715 lt!1364712))) (size!31162 suffix!1176)))))

(declare-fun b!3916794 () Bool)

(declare-fun res!1584374 () Bool)

(assert (=> b!3916794 (=> (not res!1584374) (not e!2421748))))

(assert (=> b!3916794 (= res!1584374 (= (value!204831 (_1!23513 (get!13715 lt!1364712))) (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364712)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364712)))))))))

(declare-fun b!3916795 () Bool)

(declare-fun e!2421746 () Option!8883)

(declare-fun lt!1364710 () Option!8883)

(declare-fun lt!1364711 () Option!8883)

(assert (=> b!3916795 (= e!2421746 (ite (and (is-None!8882 lt!1364710) (is-None!8882 lt!1364711)) None!8882 (ite (is-None!8882 lt!1364711) lt!1364710 (ite (is-None!8882 lt!1364710) lt!1364711 (ite (>= (size!31161 (_1!23513 (v!39206 lt!1364710))) (size!31161 (_1!23513 (v!39206 lt!1364711)))) lt!1364710 lt!1364711)))))))

(declare-fun call!284497 () Option!8883)

(assert (=> b!3916795 (= lt!1364710 call!284497)))

(assert (=> b!3916795 (= lt!1364711 (maxPrefix!3356 thiss!20629 (t!323731 rules!2768) suffix!1176))))

(declare-fun b!3916796 () Bool)

(declare-fun res!1584376 () Bool)

(assert (=> b!3916796 (=> (not res!1584376) (not e!2421748))))

(assert (=> b!3916796 (= res!1584376 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364712)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364712))))))))

(declare-fun b!3916797 () Bool)

(declare-fun res!1584375 () Bool)

(assert (=> b!3916797 (=> (not res!1584375) (not e!2421748))))

(assert (=> b!3916797 (= res!1584375 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364712)))) (_2!23513 (get!13715 lt!1364712))) suffix!1176))))

(declare-fun b!3916798 () Bool)

(assert (=> b!3916798 (= e!2421746 call!284497)))

(declare-fun bm!284492 () Bool)

(assert (=> bm!284492 (= call!284497 (maxPrefixOneRule!2426 thiss!20629 (h!46926 rules!2768) suffix!1176))))

(declare-fun b!3916800 () Bool)

(declare-fun e!2421747 () Bool)

(assert (=> b!3916800 (= e!2421747 e!2421748)))

(declare-fun res!1584371 () Bool)

(assert (=> b!3916800 (=> (not res!1584371) (not e!2421748))))

(assert (=> b!3916800 (= res!1584371 (isDefined!6926 lt!1364712))))

(declare-fun b!3916801 () Bool)

(assert (=> b!3916801 (= e!2421748 (contains!8340 rules!2768 (rule!9387 (_1!23513 (get!13715 lt!1364712)))))))

(declare-fun b!3916799 () Bool)

(declare-fun res!1584377 () Bool)

(assert (=> b!3916799 (=> (not res!1584377) (not e!2421748))))

(assert (=> b!3916799 (= res!1584377 (= (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364712)))) (originalCharacters!7063 (_1!23513 (get!13715 lt!1364712)))))))

(declare-fun d!1161831 () Bool)

(assert (=> d!1161831 e!2421747))

(declare-fun res!1584373 () Bool)

(assert (=> d!1161831 (=> res!1584373 e!2421747)))

(assert (=> d!1161831 (= res!1584373 (isEmpty!24705 lt!1364712))))

(assert (=> d!1161831 (= lt!1364712 e!2421746)))

(declare-fun c!680750 () Bool)

(assert (=> d!1161831 (= c!680750 (and (is-Cons!41506 rules!2768) (is-Nil!41506 (t!323731 rules!2768))))))

(declare-fun lt!1364713 () Unit!59640)

(declare-fun lt!1364709 () Unit!59640)

(assert (=> d!1161831 (= lt!1364713 lt!1364709)))

(assert (=> d!1161831 (isPrefix!3558 suffix!1176 suffix!1176)))

(assert (=> d!1161831 (= lt!1364709 (lemmaIsPrefixRefl!2257 suffix!1176 suffix!1176))))

(assert (=> d!1161831 (rulesValidInductive!2327 thiss!20629 rules!2768)))

(assert (=> d!1161831 (= (maxPrefix!3356 thiss!20629 rules!2768 suffix!1176) lt!1364712)))

(assert (= (and d!1161831 c!680750) b!3916798))

(assert (= (and d!1161831 (not c!680750)) b!3916795))

(assert (= (or b!3916798 b!3916795) bm!284492))

(assert (= (and d!1161831 (not res!1584373)) b!3916800))

(assert (= (and b!3916800 res!1584371) b!3916799))

(assert (= (and b!3916799 res!1584377) b!3916793))

(assert (= (and b!3916793 res!1584372) b!3916797))

(assert (= (and b!3916797 res!1584375) b!3916794))

(assert (= (and b!3916794 res!1584374) b!3916796))

(assert (= (and b!3916796 res!1584376) b!3916801))

(declare-fun m!4480241 () Bool)

(assert (=> b!3916793 m!4480241))

(declare-fun m!4480243 () Bool)

(assert (=> b!3916793 m!4480243))

(assert (=> b!3916793 m!4479133))

(assert (=> b!3916796 m!4480241))

(declare-fun m!4480245 () Bool)

(assert (=> b!3916796 m!4480245))

(assert (=> b!3916796 m!4480245))

(declare-fun m!4480247 () Bool)

(assert (=> b!3916796 m!4480247))

(assert (=> b!3916796 m!4480247))

(declare-fun m!4480249 () Bool)

(assert (=> b!3916796 m!4480249))

(assert (=> b!3916797 m!4480241))

(assert (=> b!3916797 m!4480245))

(assert (=> b!3916797 m!4480245))

(assert (=> b!3916797 m!4480247))

(assert (=> b!3916797 m!4480247))

(declare-fun m!4480251 () Bool)

(assert (=> b!3916797 m!4480251))

(declare-fun m!4480253 () Bool)

(assert (=> b!3916800 m!4480253))

(assert (=> b!3916794 m!4480241))

(declare-fun m!4480255 () Bool)

(assert (=> b!3916794 m!4480255))

(assert (=> b!3916794 m!4480255))

(declare-fun m!4480257 () Bool)

(assert (=> b!3916794 m!4480257))

(declare-fun m!4480259 () Bool)

(assert (=> b!3916795 m!4480259))

(declare-fun m!4480261 () Bool)

(assert (=> bm!284492 m!4480261))

(declare-fun m!4480263 () Bool)

(assert (=> d!1161831 m!4480263))

(declare-fun m!4480265 () Bool)

(assert (=> d!1161831 m!4480265))

(declare-fun m!4480267 () Bool)

(assert (=> d!1161831 m!4480267))

(assert (=> d!1161831 m!4479441))

(assert (=> b!3916799 m!4480241))

(assert (=> b!3916799 m!4480245))

(assert (=> b!3916799 m!4480245))

(assert (=> b!3916799 m!4480247))

(assert (=> b!3916801 m!4480241))

(declare-fun m!4480269 () Bool)

(assert (=> b!3916801 m!4480269))

(assert (=> d!1161599 d!1161831))

(declare-fun b!3916802 () Bool)

(declare-fun e!2421751 () Bool)

(assert (=> b!3916802 (= e!2421751 (= (head!8280 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))) (c!680555 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun b!3916803 () Bool)

(declare-fun res!1584379 () Bool)

(assert (=> b!3916803 (=> (not res!1584379) (not e!2421751))))

(assert (=> b!3916803 (= res!1584379 (isEmpty!24701 (tail!5996 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518)))))))))

(declare-fun b!3916804 () Bool)

(declare-fun e!2421752 () Bool)

(declare-fun lt!1364714 () Bool)

(declare-fun call!284498 () Bool)

(assert (=> b!3916804 (= e!2421752 (= lt!1364714 call!284498))))

(declare-fun b!3916805 () Bool)

(declare-fun e!2421750 () Bool)

(assert (=> b!3916805 (= e!2421750 (not lt!1364714))))

(declare-fun d!1161833 () Bool)

(assert (=> d!1161833 e!2421752))

(declare-fun c!680751 () Bool)

(assert (=> d!1161833 (= c!680751 (is-EmptyExpr!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun e!2421749 () Bool)

(assert (=> d!1161833 (= lt!1364714 e!2421749)))

(declare-fun c!680752 () Bool)

(assert (=> d!1161833 (= c!680752 (isEmpty!24701 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))))))

(assert (=> d!1161833 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161833 (= (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))) lt!1364714)))

(declare-fun b!3916806 () Bool)

(declare-fun res!1584378 () Bool)

(declare-fun e!2421753 () Bool)

(assert (=> b!3916806 (=> res!1584378 e!2421753)))

(assert (=> b!3916806 (= res!1584378 e!2421751)))

(declare-fun res!1584381 () Bool)

(assert (=> b!3916806 (=> (not res!1584381) (not e!2421751))))

(assert (=> b!3916806 (= res!1584381 lt!1364714)))

(declare-fun b!3916807 () Bool)

(declare-fun res!1584380 () Bool)

(assert (=> b!3916807 (=> (not res!1584380) (not e!2421751))))

(assert (=> b!3916807 (= res!1584380 (not call!284498))))

(declare-fun b!3916808 () Bool)

(declare-fun e!2421755 () Bool)

(declare-fun e!2421754 () Bool)

(assert (=> b!3916808 (= e!2421755 e!2421754)))

(declare-fun res!1584384 () Bool)

(assert (=> b!3916808 (=> res!1584384 e!2421754)))

(assert (=> b!3916808 (= res!1584384 call!284498)))

(declare-fun b!3916809 () Bool)

(assert (=> b!3916809 (= e!2421754 (not (= (head!8280 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))) (c!680555 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))))

(declare-fun bm!284493 () Bool)

(assert (=> bm!284493 (= call!284498 (isEmpty!24701 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))))))

(declare-fun b!3916810 () Bool)

(assert (=> b!3916810 (= e!2421752 e!2421750)))

(declare-fun c!680753 () Bool)

(assert (=> b!3916810 (= c!680753 (is-EmptyLang!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916811 () Bool)

(assert (=> b!3916811 (= e!2421753 e!2421755)))

(declare-fun res!1584383 () Bool)

(assert (=> b!3916811 (=> (not res!1584383) (not e!2421755))))

(assert (=> b!3916811 (= res!1584383 (not lt!1364714))))

(declare-fun b!3916812 () Bool)

(assert (=> b!3916812 (= e!2421749 (nullable!3978 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916813 () Bool)

(declare-fun res!1584385 () Bool)

(assert (=> b!3916813 (=> res!1584385 e!2421753)))

(assert (=> b!3916813 (= res!1584385 (not (is-ElementMatch!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(assert (=> b!3916813 (= e!2421750 e!2421753)))

(declare-fun b!3916814 () Bool)

(declare-fun res!1584382 () Bool)

(assert (=> b!3916814 (=> res!1584382 e!2421754)))

(assert (=> b!3916814 (= res!1584382 (not (isEmpty!24701 (tail!5996 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518))))))))))

(declare-fun b!3916815 () Bool)

(assert (=> b!3916815 (= e!2421749 (matchR!5457 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518)))))) (tail!5996 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364518)))))))))

(assert (= (and d!1161833 c!680752) b!3916812))

(assert (= (and d!1161833 (not c!680752)) b!3916815))

(assert (= (and d!1161833 c!680751) b!3916804))

(assert (= (and d!1161833 (not c!680751)) b!3916810))

(assert (= (and b!3916810 c!680753) b!3916805))

(assert (= (and b!3916810 (not c!680753)) b!3916813))

(assert (= (and b!3916813 (not res!1584385)) b!3916806))

(assert (= (and b!3916806 res!1584381) b!3916807))

(assert (= (and b!3916807 res!1584380) b!3916803))

(assert (= (and b!3916803 res!1584379) b!3916802))

(assert (= (and b!3916806 (not res!1584378)) b!3916811))

(assert (= (and b!3916811 res!1584383) b!3916808))

(assert (= (and b!3916808 (not res!1584384)) b!3916814))

(assert (= (and b!3916814 (not res!1584382)) b!3916809))

(assert (= (or b!3916804 b!3916807 b!3916808) bm!284493))

(assert (=> b!3916803 m!4479699))

(declare-fun m!4480271 () Bool)

(assert (=> b!3916803 m!4480271))

(assert (=> b!3916803 m!4480271))

(declare-fun m!4480273 () Bool)

(assert (=> b!3916803 m!4480273))

(assert (=> b!3916802 m!4479699))

(declare-fun m!4480275 () Bool)

(assert (=> b!3916802 m!4480275))

(assert (=> bm!284493 m!4479699))

(declare-fun m!4480277 () Bool)

(assert (=> bm!284493 m!4480277))

(assert (=> b!3916809 m!4479699))

(assert (=> b!3916809 m!4480275))

(assert (=> b!3916815 m!4479699))

(assert (=> b!3916815 m!4480275))

(assert (=> b!3916815 m!4480275))

(declare-fun m!4480279 () Bool)

(assert (=> b!3916815 m!4480279))

(assert (=> b!3916815 m!4479699))

(assert (=> b!3916815 m!4480271))

(assert (=> b!3916815 m!4480279))

(assert (=> b!3916815 m!4480271))

(declare-fun m!4480281 () Bool)

(assert (=> b!3916815 m!4480281))

(assert (=> b!3916812 m!4479299))

(assert (=> d!1161833 m!4479699))

(assert (=> d!1161833 m!4480277))

(assert (=> d!1161833 m!4479297))

(assert (=> b!3916814 m!4479699))

(assert (=> b!3916814 m!4480271))

(assert (=> b!3916814 m!4480271))

(assert (=> b!3916814 m!4480273))

(assert (=> b!3916319 d!1161833))

(assert (=> b!3916319 d!1161733))

(assert (=> b!3916319 d!1161735))

(assert (=> b!3916319 d!1161737))

(declare-fun d!1161835 () Bool)

(declare-fun isBalanced!3637 (Conc!12674) Bool)

(assert (=> d!1161835 (= (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))) (isBalanced!3637 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun bs!585731 () Bool)

(assert (= bs!585731 d!1161835))

(declare-fun m!4480283 () Bool)

(assert (=> bs!585731 m!4480283))

(assert (=> tb!233393 d!1161835))

(declare-fun d!1161837 () Bool)

(assert (=> d!1161837 (= (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))) (list!15432 (c!680556 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))))))

(declare-fun bs!585732 () Bool)

(assert (= bs!585732 d!1161837))

(declare-fun m!4480285 () Bool)

(assert (=> bs!585732 m!4480285))

(assert (=> b!3916084 d!1161837))

(declare-fun d!1161839 () Bool)

(declare-fun lt!1364715 () BalanceConc!24942)

(assert (=> d!1161839 (= (list!15430 lt!1364715) (originalCharacters!7063 (_1!23513 (get!13715 lt!1364448))))))

(assert (=> d!1161839 (= lt!1364715 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))) (value!204831 (_1!23513 (get!13715 lt!1364448)))))))

(assert (=> d!1161839 (= (charsOf!4287 (_1!23513 (get!13715 lt!1364448))) lt!1364715)))

(declare-fun b_lambda!114681 () Bool)

(assert (=> (not b_lambda!114681) (not d!1161839)))

(declare-fun tb!233525 () Bool)

(declare-fun t!323883 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323883) tb!233525))

(declare-fun b!3916816 () Bool)

(declare-fun e!2421756 () Bool)

(declare-fun tp!1192137 () Bool)

(assert (=> b!3916816 (= e!2421756 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))) (value!204831 (_1!23513 (get!13715 lt!1364448)))))) tp!1192137))))

(declare-fun result!283026 () Bool)

(assert (=> tb!233525 (= result!283026 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))) (value!204831 (_1!23513 (get!13715 lt!1364448))))) e!2421756))))

(assert (= tb!233525 b!3916816))

(declare-fun m!4480287 () Bool)

(assert (=> b!3916816 m!4480287))

(declare-fun m!4480289 () Bool)

(assert (=> tb!233525 m!4480289))

(assert (=> d!1161839 t!323883))

(declare-fun b_and!298283 () Bool)

(assert (= b_and!298261 (and (=> t!323883 result!283026) b_and!298283)))

(declare-fun t!323885 () Bool)

(declare-fun tb!233527 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323885) tb!233527))

(declare-fun result!283028 () Bool)

(assert (= result!283028 result!283026))

(assert (=> d!1161839 t!323885))

(declare-fun b_and!298285 () Bool)

(assert (= b_and!298265 (and (=> t!323885 result!283028) b_and!298285)))

(declare-fun tb!233529 () Bool)

(declare-fun t!323887 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323887) tb!233529))

(declare-fun result!283030 () Bool)

(assert (= result!283030 result!283026))

(assert (=> d!1161839 t!323887))

(declare-fun b_and!298287 () Bool)

(assert (= b_and!298259 (and (=> t!323887 result!283030) b_and!298287)))

(declare-fun tb!233531 () Bool)

(declare-fun t!323889 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323889) tb!233531))

(declare-fun result!283032 () Bool)

(assert (= result!283032 result!283026))

(assert (=> d!1161839 t!323889))

(declare-fun b_and!298289 () Bool)

(assert (= b_and!298269 (and (=> t!323889 result!283032) b_and!298289)))

(declare-fun tb!233533 () Bool)

(declare-fun t!323891 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323891) tb!233533))

(declare-fun result!283034 () Bool)

(assert (= result!283034 result!283026))

(assert (=> d!1161839 t!323891))

(declare-fun b_and!298291 () Bool)

(assert (= b_and!298263 (and (=> t!323891 result!283034) b_and!298291)))

(declare-fun t!323893 () Bool)

(declare-fun tb!233535 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323893) tb!233535))

(declare-fun result!283036 () Bool)

(assert (= result!283036 result!283026))

(assert (=> d!1161839 t!323893))

(declare-fun b_and!298293 () Bool)

(assert (= b_and!298267 (and (=> t!323893 result!283036) b_and!298293)))

(declare-fun m!4480291 () Bool)

(assert (=> d!1161839 m!4480291))

(declare-fun m!4480293 () Bool)

(assert (=> d!1161839 m!4480293))

(assert (=> b!3916084 d!1161839))

(assert (=> b!3916084 d!1161719))

(declare-fun d!1161841 () Bool)

(declare-fun c!680756 () Bool)

(assert (=> d!1161841 (= c!680756 (is-Nil!41504 lt!1364466))))

(declare-fun e!2421759 () (Set C!22922))

(assert (=> d!1161841 (= (content!6239 lt!1364466) e!2421759)))

(declare-fun b!3916821 () Bool)

(assert (=> b!3916821 (= e!2421759 (as set.empty (Set C!22922)))))

(declare-fun b!3916822 () Bool)

(assert (=> b!3916822 (= e!2421759 (set.union (set.insert (h!46924 lt!1364466) (as set.empty (Set C!22922))) (content!6239 (t!323729 lt!1364466))))))

(assert (= (and d!1161841 c!680756) b!3916821))

(assert (= (and d!1161841 (not c!680756)) b!3916822))

(declare-fun m!4480295 () Bool)

(assert (=> b!3916822 m!4480295))

(declare-fun m!4480297 () Bool)

(assert (=> b!3916822 m!4480297))

(assert (=> d!1161565 d!1161841))

(declare-fun d!1161843 () Bool)

(declare-fun c!680757 () Bool)

(assert (=> d!1161843 (= c!680757 (is-Nil!41504 prefix!426))))

(declare-fun e!2421760 () (Set C!22922))

(assert (=> d!1161843 (= (content!6239 prefix!426) e!2421760)))

(declare-fun b!3916823 () Bool)

(assert (=> b!3916823 (= e!2421760 (as set.empty (Set C!22922)))))

(declare-fun b!3916824 () Bool)

(assert (=> b!3916824 (= e!2421760 (set.union (set.insert (h!46924 prefix!426) (as set.empty (Set C!22922))) (content!6239 (t!323729 prefix!426))))))

(assert (= (and d!1161843 c!680757) b!3916823))

(assert (= (and d!1161843 (not c!680757)) b!3916824))

(declare-fun m!4480299 () Bool)

(assert (=> b!3916824 m!4480299))

(assert (=> b!3916824 m!4479945))

(assert (=> d!1161565 d!1161843))

(declare-fun d!1161845 () Bool)

(declare-fun c!680758 () Bool)

(assert (=> d!1161845 (= c!680758 (is-Nil!41504 suffix!1176))))

(declare-fun e!2421761 () (Set C!22922))

(assert (=> d!1161845 (= (content!6239 suffix!1176) e!2421761)))

(declare-fun b!3916825 () Bool)

(assert (=> b!3916825 (= e!2421761 (as set.empty (Set C!22922)))))

(declare-fun b!3916826 () Bool)

(assert (=> b!3916826 (= e!2421761 (set.union (set.insert (h!46924 suffix!1176) (as set.empty (Set C!22922))) (content!6239 (t!323729 suffix!1176))))))

(assert (= (and d!1161845 c!680758) b!3916825))

(assert (= (and d!1161845 (not c!680758)) b!3916826))

(declare-fun m!4480301 () Bool)

(assert (=> b!3916826 m!4480301))

(declare-fun m!4480303 () Bool)

(assert (=> b!3916826 m!4480303))

(assert (=> d!1161565 d!1161845))

(declare-fun d!1161847 () Bool)

(assert (=> d!1161847 (= (isEmpty!24699 (_1!23514 lt!1364450)) (is-Nil!41505 (_1!23514 lt!1364450)))))

(assert (=> b!3916090 d!1161847))

(declare-fun d!1161849 () Bool)

(declare-fun res!1584390 () Bool)

(declare-fun e!2421766 () Bool)

(assert (=> d!1161849 (=> res!1584390 e!2421766)))

(assert (=> d!1161849 (= res!1584390 (is-Nil!41506 rules!2768))))

(assert (=> d!1161849 (= (noDuplicateTag!2513 thiss!20629 rules!2768 Nil!41511) e!2421766)))

(declare-fun b!3916831 () Bool)

(declare-fun e!2421767 () Bool)

(assert (=> b!3916831 (= e!2421766 e!2421767)))

(declare-fun res!1584391 () Bool)

(assert (=> b!3916831 (=> (not res!1584391) (not e!2421767))))

(declare-fun contains!8342 (List!41635 String!47185) Bool)

(assert (=> b!3916831 (= res!1584391 (not (contains!8342 Nil!41511 (tag!7323 (h!46926 rules!2768)))))))

(declare-fun b!3916832 () Bool)

(assert (=> b!3916832 (= e!2421767 (noDuplicateTag!2513 thiss!20629 (t!323731 rules!2768) (Cons!41511 (tag!7323 (h!46926 rules!2768)) Nil!41511)))))

(assert (= (and d!1161849 (not res!1584390)) b!3916831))

(assert (= (and b!3916831 res!1584391) b!3916832))

(declare-fun m!4480305 () Bool)

(assert (=> b!3916831 m!4480305))

(declare-fun m!4480307 () Bool)

(assert (=> b!3916832 m!4480307))

(assert (=> b!3916179 d!1161849))

(declare-fun d!1161851 () Bool)

(assert (=> d!1161851 (= (list!15430 lt!1364427) (list!15432 (c!680556 lt!1364427)))))

(declare-fun bs!585733 () Bool)

(assert (= bs!585733 d!1161851))

(declare-fun m!4480309 () Bool)

(assert (=> bs!585733 m!4480309))

(assert (=> d!1161545 d!1161851))

(declare-fun d!1161853 () Bool)

(declare-fun c!680759 () Bool)

(assert (=> d!1161853 (= c!680759 (is-Nil!41504 lt!1364470))))

(declare-fun e!2421768 () (Set C!22922))

(assert (=> d!1161853 (= (content!6239 lt!1364470) e!2421768)))

(declare-fun b!3916833 () Bool)

(assert (=> b!3916833 (= e!2421768 (as set.empty (Set C!22922)))))

(declare-fun b!3916834 () Bool)

(assert (=> b!3916834 (= e!2421768 (set.union (set.insert (h!46924 lt!1364470) (as set.empty (Set C!22922))) (content!6239 (t!323729 lt!1364470))))))

(assert (= (and d!1161853 c!680759) b!3916833))

(assert (= (and d!1161853 (not c!680759)) b!3916834))

(declare-fun m!4480311 () Bool)

(assert (=> b!3916834 m!4480311))

(declare-fun m!4480313 () Bool)

(assert (=> b!3916834 m!4480313))

(assert (=> d!1161573 d!1161853))

(declare-fun d!1161855 () Bool)

(declare-fun c!680760 () Bool)

(assert (=> d!1161855 (= c!680760 (is-Nil!41504 lt!1364317))))

(declare-fun e!2421769 () (Set C!22922))

(assert (=> d!1161855 (= (content!6239 lt!1364317) e!2421769)))

(declare-fun b!3916835 () Bool)

(assert (=> b!3916835 (= e!2421769 (as set.empty (Set C!22922)))))

(declare-fun b!3916836 () Bool)

(assert (=> b!3916836 (= e!2421769 (set.union (set.insert (h!46924 lt!1364317) (as set.empty (Set C!22922))) (content!6239 (t!323729 lt!1364317))))))

(assert (= (and d!1161855 c!680760) b!3916835))

(assert (= (and d!1161855 (not c!680760)) b!3916836))

(declare-fun m!4480315 () Bool)

(assert (=> b!3916836 m!4480315))

(assert (=> b!3916836 m!4479929))

(assert (=> d!1161573 d!1161855))

(declare-fun d!1161857 () Bool)

(declare-fun c!680761 () Bool)

(assert (=> d!1161857 (= c!680761 (is-Nil!41504 (_2!23513 lt!1364301)))))

(declare-fun e!2421770 () (Set C!22922))

(assert (=> d!1161857 (= (content!6239 (_2!23513 lt!1364301)) e!2421770)))

(declare-fun b!3916837 () Bool)

(assert (=> b!3916837 (= e!2421770 (as set.empty (Set C!22922)))))

(declare-fun b!3916838 () Bool)

(assert (=> b!3916838 (= e!2421770 (set.union (set.insert (h!46924 (_2!23513 lt!1364301)) (as set.empty (Set C!22922))) (content!6239 (t!323729 (_2!23513 lt!1364301)))))))

(assert (= (and d!1161857 c!680761) b!3916837))

(assert (= (and d!1161857 (not c!680761)) b!3916838))

(declare-fun m!4480317 () Bool)

(assert (=> b!3916838 m!4480317))

(declare-fun m!4480319 () Bool)

(assert (=> b!3916838 m!4480319))

(assert (=> d!1161573 d!1161857))

(assert (=> b!3916212 d!1161705))

(assert (=> b!3916212 d!1161707))

(declare-fun d!1161859 () Bool)

(declare-fun e!2421773 () Bool)

(assert (=> d!1161859 e!2421773))

(declare-fun res!1584394 () Bool)

(assert (=> d!1161859 (=> (not res!1584394) (not e!2421773))))

(declare-fun lt!1364718 () BalanceConc!24942)

(assert (=> d!1161859 (= res!1584394 (= (list!15430 lt!1364718) lt!1364317))))

(declare-fun fromList!827 (List!41628) Conc!12674)

(assert (=> d!1161859 (= lt!1364718 (BalanceConc!24943 (fromList!827 lt!1364317)))))

(assert (=> d!1161859 (= (fromListB!2187 lt!1364317) lt!1364718)))

(declare-fun b!3916841 () Bool)

(assert (=> b!3916841 (= e!2421773 (isBalanced!3637 (fromList!827 lt!1364317)))))

(assert (= (and d!1161859 res!1584394) b!3916841))

(declare-fun m!4480321 () Bool)

(assert (=> d!1161859 m!4480321))

(declare-fun m!4480323 () Bool)

(assert (=> d!1161859 m!4480323))

(assert (=> b!3916841 m!4480323))

(assert (=> b!3916841 m!4480323))

(declare-fun m!4480325 () Bool)

(assert (=> b!3916841 m!4480325))

(assert (=> d!1161515 d!1161859))

(declare-fun d!1161861 () Bool)

(declare-fun lt!1364719 () Int)

(assert (=> d!1161861 (>= lt!1364719 0)))

(declare-fun e!2421774 () Int)

(assert (=> d!1161861 (= lt!1364719 e!2421774)))

(declare-fun c!680763 () Bool)

(assert (=> d!1161861 (= c!680763 (is-Nil!41505 lt!1364471))))

(assert (=> d!1161861 (= (size!31165 lt!1364471) lt!1364719)))

(declare-fun b!3916842 () Bool)

(assert (=> b!3916842 (= e!2421774 0)))

(declare-fun b!3916843 () Bool)

(assert (=> b!3916843 (= e!2421774 (+ 1 (size!31165 (t!323730 lt!1364471))))))

(assert (= (and d!1161861 c!680763) b!3916842))

(assert (= (and d!1161861 (not c!680763)) b!3916843))

(declare-fun m!4480327 () Bool)

(assert (=> b!3916843 m!4480327))

(assert (=> b!3916138 d!1161861))

(declare-fun d!1161863 () Bool)

(declare-fun lt!1364720 () Int)

(assert (=> d!1161863 (>= lt!1364720 0)))

(declare-fun e!2421775 () Int)

(assert (=> d!1161863 (= lt!1364720 e!2421775)))

(declare-fun c!680764 () Bool)

(assert (=> d!1161863 (= c!680764 (is-Nil!41505 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)))))

(assert (=> d!1161863 (= (size!31165 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)) lt!1364720)))

(declare-fun b!3916844 () Bool)

(assert (=> b!3916844 (= e!2421775 0)))

(declare-fun b!3916845 () Bool)

(assert (=> b!3916845 (= e!2421775 (+ 1 (size!31165 (t!323730 (Cons!41505 (_1!23513 (v!39206 lt!1364311)) Nil!41505)))))))

(assert (= (and d!1161863 c!680764) b!3916844))

(assert (= (and d!1161863 (not c!680764)) b!3916845))

(assert (=> b!3916845 m!4480155))

(assert (=> b!3916138 d!1161863))

(declare-fun d!1161865 () Bool)

(declare-fun lt!1364721 () Int)

(assert (=> d!1161865 (>= lt!1364721 0)))

(declare-fun e!2421776 () Int)

(assert (=> d!1161865 (= lt!1364721 e!2421776)))

(declare-fun c!680765 () Bool)

(assert (=> d!1161865 (= c!680765 (is-Nil!41505 (_1!23514 lt!1364297)))))

(assert (=> d!1161865 (= (size!31165 (_1!23514 lt!1364297)) lt!1364721)))

(declare-fun b!3916846 () Bool)

(assert (=> b!3916846 (= e!2421776 0)))

(declare-fun b!3916847 () Bool)

(assert (=> b!3916847 (= e!2421776 (+ 1 (size!31165 (t!323730 (_1!23514 lt!1364297)))))))

(assert (= (and d!1161865 c!680765) b!3916846))

(assert (= (and d!1161865 (not c!680765)) b!3916847))

(declare-fun m!4480329 () Bool)

(assert (=> b!3916847 m!4480329))

(assert (=> b!3916138 d!1161865))

(declare-fun d!1161867 () Bool)

(declare-fun charsToBigInt!1 (List!41627) Int)

(assert (=> d!1161867 (= (inv!17 (value!204831 (h!46925 suffixTokens!72))) (= (charsToBigInt!1 (text!47299 (value!204831 (h!46925 suffixTokens!72)))) (value!204823 (value!204831 (h!46925 suffixTokens!72)))))))

(declare-fun bs!585734 () Bool)

(assert (= bs!585734 d!1161867))

(declare-fun m!4480331 () Bool)

(assert (=> bs!585734 m!4480331))

(assert (=> b!3916057 d!1161867))

(declare-fun d!1161869 () Bool)

(declare-fun lt!1364722 () List!41628)

(assert (=> d!1161869 (= (++!10683 (t!323729 lt!1364317) lt!1364722) (tail!5996 lt!1364304))))

(declare-fun e!2421777 () List!41628)

(assert (=> d!1161869 (= lt!1364722 e!2421777)))

(declare-fun c!680766 () Bool)

(assert (=> d!1161869 (= c!680766 (is-Cons!41504 (t!323729 lt!1364317)))))

(assert (=> d!1161869 (>= (size!31162 (tail!5996 lt!1364304)) (size!31162 (t!323729 lt!1364317)))))

(assert (=> d!1161869 (= (getSuffix!2013 (tail!5996 lt!1364304) (t!323729 lt!1364317)) lt!1364722)))

(declare-fun b!3916848 () Bool)

(assert (=> b!3916848 (= e!2421777 (getSuffix!2013 (tail!5996 (tail!5996 lt!1364304)) (t!323729 (t!323729 lt!1364317))))))

(declare-fun b!3916849 () Bool)

(assert (=> b!3916849 (= e!2421777 (tail!5996 lt!1364304))))

(assert (= (and d!1161869 c!680766) b!3916848))

(assert (= (and d!1161869 (not c!680766)) b!3916849))

(declare-fun m!4480333 () Bool)

(assert (=> d!1161869 m!4480333))

(assert (=> d!1161869 m!4479371))

(declare-fun m!4480335 () Bool)

(assert (=> d!1161869 m!4480335))

(assert (=> d!1161869 m!4479397))

(assert (=> b!3916848 m!4479371))

(declare-fun m!4480337 () Bool)

(assert (=> b!3916848 m!4480337))

(assert (=> b!3916848 m!4480337))

(declare-fun m!4480339 () Bool)

(assert (=> b!3916848 m!4480339))

(assert (=> b!3916021 d!1161869))

(declare-fun d!1161871 () Bool)

(assert (=> d!1161871 (= (tail!5996 lt!1364304) (t!323729 lt!1364304))))

(assert (=> b!3916021 d!1161871))

(assert (=> d!1161521 d!1161583))

(declare-fun b!3916850 () Bool)

(declare-fun e!2421780 () Bool)

(declare-fun e!2421778 () Bool)

(assert (=> b!3916850 (= e!2421780 e!2421778)))

(declare-fun res!1584395 () Bool)

(declare-fun lt!1364723 () tuple2!40760)

(assert (=> b!3916850 (= res!1584395 (< (size!31162 (_2!23514 lt!1364723)) (size!31162 (_2!23513 (v!39206 lt!1364477)))))))

(assert (=> b!3916850 (=> (not res!1584395) (not e!2421778))))

(declare-fun b!3916851 () Bool)

(assert (=> b!3916851 (= e!2421780 (= (_2!23514 lt!1364723) (_2!23513 (v!39206 lt!1364477))))))

(declare-fun b!3916852 () Bool)

(declare-fun e!2421779 () tuple2!40760)

(assert (=> b!3916852 (= e!2421779 (tuple2!40761 Nil!41505 (_2!23513 (v!39206 lt!1364477))))))

(declare-fun b!3916853 () Bool)

(assert (=> b!3916853 (= e!2421778 (not (isEmpty!24699 (_1!23514 lt!1364723))))))

(declare-fun b!3916854 () Bool)

(declare-fun lt!1364724 () Option!8883)

(declare-fun lt!1364725 () tuple2!40760)

(assert (=> b!3916854 (= e!2421779 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364724)) (_1!23514 lt!1364725)) (_2!23514 lt!1364725)))))

(assert (=> b!3916854 (= lt!1364725 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364724))))))

(declare-fun d!1161873 () Bool)

(assert (=> d!1161873 e!2421780))

(declare-fun c!680767 () Bool)

(assert (=> d!1161873 (= c!680767 (> (size!31165 (_1!23514 lt!1364723)) 0))))

(assert (=> d!1161873 (= lt!1364723 e!2421779)))

(declare-fun c!680768 () Bool)

(assert (=> d!1161873 (= c!680768 (is-Some!8882 lt!1364724))))

(assert (=> d!1161873 (= lt!1364724 (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364477))))))

(assert (=> d!1161873 (= (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364477))) lt!1364723)))

(assert (= (and d!1161873 c!680768) b!3916854))

(assert (= (and d!1161873 (not c!680768)) b!3916852))

(assert (= (and d!1161873 c!680767) b!3916850))

(assert (= (and d!1161873 (not c!680767)) b!3916851))

(assert (= (and b!3916850 res!1584395) b!3916853))

(declare-fun m!4480341 () Bool)

(assert (=> b!3916850 m!4480341))

(declare-fun m!4480343 () Bool)

(assert (=> b!3916850 m!4480343))

(declare-fun m!4480345 () Bool)

(assert (=> b!3916853 m!4480345))

(declare-fun m!4480347 () Bool)

(assert (=> b!3916854 m!4480347))

(declare-fun m!4480349 () Bool)

(assert (=> d!1161873 m!4480349))

(declare-fun m!4480351 () Bool)

(assert (=> d!1161873 m!4480351))

(assert (=> b!3916153 d!1161873))

(declare-fun d!1161875 () Bool)

(declare-fun lt!1364726 () Int)

(assert (=> d!1161875 (>= lt!1364726 0)))

(declare-fun e!2421781 () Int)

(assert (=> d!1161875 (= lt!1364726 e!2421781)))

(declare-fun c!680769 () Bool)

(assert (=> d!1161875 (= c!680769 (is-Nil!41504 (t!323729 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311))))))))

(assert (=> d!1161875 (= (size!31162 (t!323729 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311))))) lt!1364726)))

(declare-fun b!3916855 () Bool)

(assert (=> b!3916855 (= e!2421781 0)))

(declare-fun b!3916856 () Bool)

(assert (=> b!3916856 (= e!2421781 (+ 1 (size!31162 (t!323729 (t!323729 (originalCharacters!7063 (_1!23513 (v!39206 lt!1364311))))))))))

(assert (= (and d!1161875 c!680769) b!3916855))

(assert (= (and d!1161875 (not c!680769)) b!3916856))

(declare-fun m!4480353 () Bool)

(assert (=> b!3916856 m!4480353))

(assert (=> b!3916141 d!1161875))

(assert (=> b!3916316 d!1161737))

(declare-fun d!1161877 () Bool)

(assert (=> d!1161877 (= (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518))))) (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518))))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518))))))))

(declare-fun b_lambda!114683 () Bool)

(assert (=> (not b_lambda!114683) (not d!1161877)))

(declare-fun tb!233537 () Bool)

(declare-fun t!323895 () Bool)

(assert (=> (and b!3915820 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323895) tb!233537))

(declare-fun result!283038 () Bool)

(assert (=> tb!233537 (= result!283038 (inv!21 (dynLambda!17827 (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518))))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518)))))))))

(declare-fun m!4480355 () Bool)

(assert (=> tb!233537 m!4480355))

(assert (=> d!1161877 t!323895))

(declare-fun b_and!298295 () Bool)

(assert (= b_and!298281 (and (=> t!323895 result!283038) b_and!298295)))

(declare-fun t!323897 () Bool)

(declare-fun tb!233539 () Bool)

(assert (=> (and b!3916383 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323897) tb!233539))

(declare-fun result!283040 () Bool)

(assert (= result!283040 result!283038))

(assert (=> d!1161877 t!323897))

(declare-fun b_and!298297 () Bool)

(assert (= b_and!298277 (and (=> t!323897 result!283040) b_and!298297)))

(declare-fun tb!233541 () Bool)

(declare-fun t!323899 () Bool)

(assert (=> (and b!3915811 (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323899) tb!233541))

(declare-fun result!283042 () Bool)

(assert (= result!283042 result!283038))

(assert (=> d!1161877 t!323899))

(declare-fun b_and!298299 () Bool)

(assert (= b_and!298271 (and (=> t!323899 result!283042) b_and!298299)))

(declare-fun tb!233543 () Bool)

(declare-fun t!323901 () Bool)

(assert (=> (and b!3915796 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323901) tb!233543))

(declare-fun result!283044 () Bool)

(assert (= result!283044 result!283038))

(assert (=> d!1161877 t!323901))

(declare-fun b_and!298301 () Bool)

(assert (= b_and!298273 (and (=> t!323901 result!283044) b_and!298301)))

(declare-fun t!323903 () Bool)

(declare-fun tb!233545 () Bool)

(assert (=> (and b!3916387 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323903) tb!233545))

(declare-fun result!283046 () Bool)

(assert (= result!283046 result!283038))

(assert (=> d!1161877 t!323903))

(declare-fun b_and!298303 () Bool)

(assert (= b_and!298275 (and (=> t!323903 result!283046) b_and!298303)))

(declare-fun t!323905 () Bool)

(declare-fun tb!233547 () Bool)

(assert (=> (and b!3916338 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323905) tb!233547))

(declare-fun result!283048 () Bool)

(assert (= result!283048 result!283038))

(assert (=> d!1161877 t!323905))

(declare-fun b_and!298305 () Bool)

(assert (= b_and!298279 (and (=> t!323905 result!283048) b_and!298305)))

(assert (=> d!1161877 m!4479675))

(declare-fun m!4480357 () Bool)

(assert (=> d!1161877 m!4480357))

(assert (=> b!3916316 d!1161877))

(declare-fun d!1161879 () Bool)

(assert (=> d!1161879 (= (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518)))) (fromListB!2187 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518)))))))

(declare-fun bs!585735 () Bool)

(assert (= bs!585735 d!1161879))

(declare-fun m!4480359 () Bool)

(assert (=> bs!585735 m!4480359))

(assert (=> b!3916316 d!1161879))

(declare-fun b!3916857 () Bool)

(declare-fun e!2421785 () Bool)

(assert (=> b!3916857 (= e!2421785 (= (head!8280 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))) (c!680555 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))))))

(declare-fun b!3916858 () Bool)

(declare-fun res!1584397 () Bool)

(assert (=> b!3916858 (=> (not res!1584397) (not e!2421785))))

(assert (=> b!3916858 (= res!1584397 (isEmpty!24701 (tail!5996 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))))))))

(declare-fun b!3916859 () Bool)

(declare-fun e!2421786 () Bool)

(declare-fun lt!1364727 () Bool)

(declare-fun call!284499 () Bool)

(assert (=> b!3916859 (= e!2421786 (= lt!1364727 call!284499))))

(declare-fun b!3916860 () Bool)

(declare-fun e!2421784 () Bool)

(assert (=> b!3916860 (= e!2421784 (not lt!1364727))))

(declare-fun d!1161881 () Bool)

(assert (=> d!1161881 e!2421786))

(declare-fun c!680770 () Bool)

(assert (=> d!1161881 (= c!680770 (is-EmptyExpr!11368 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))))))

(declare-fun e!2421783 () Bool)

(assert (=> d!1161881 (= lt!1364727 e!2421783)))

(declare-fun c!680771 () Bool)

(assert (=> d!1161881 (= c!680771 (isEmpty!24701 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))))))

(assert (=> d!1161881 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))))

(assert (=> d!1161881 (= (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))) lt!1364727)))

(declare-fun b!3916861 () Bool)

(declare-fun res!1584396 () Bool)

(declare-fun e!2421787 () Bool)

(assert (=> b!3916861 (=> res!1584396 e!2421787)))

(assert (=> b!3916861 (= res!1584396 e!2421785)))

(declare-fun res!1584399 () Bool)

(assert (=> b!3916861 (=> (not res!1584399) (not e!2421785))))

(assert (=> b!3916861 (= res!1584399 lt!1364727)))

(declare-fun b!3916862 () Bool)

(declare-fun res!1584398 () Bool)

(assert (=> b!3916862 (=> (not res!1584398) (not e!2421785))))

(assert (=> b!3916862 (= res!1584398 (not call!284499))))

(declare-fun b!3916863 () Bool)

(declare-fun e!2421789 () Bool)

(declare-fun e!2421788 () Bool)

(assert (=> b!3916863 (= e!2421789 e!2421788)))

(declare-fun res!1584402 () Bool)

(assert (=> b!3916863 (=> res!1584402 e!2421788)))

(assert (=> b!3916863 (= res!1584402 call!284499)))

(declare-fun b!3916864 () Bool)

(assert (=> b!3916864 (= e!2421788 (not (= (head!8280 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))) (c!680555 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))))))))

(declare-fun bm!284494 () Bool)

(assert (=> bm!284494 (= call!284499 (isEmpty!24701 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))))))

(declare-fun b!3916865 () Bool)

(assert (=> b!3916865 (= e!2421786 e!2421784)))

(declare-fun c!680772 () Bool)

(assert (=> b!3916865 (= c!680772 (is-EmptyLang!11368 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))))))

(declare-fun b!3916866 () Bool)

(assert (=> b!3916866 (= e!2421787 e!2421789)))

(declare-fun res!1584401 () Bool)

(assert (=> b!3916866 (=> (not res!1584401) (not e!2421789))))

(assert (=> b!3916866 (= res!1584401 (not lt!1364727))))

(declare-fun b!3916867 () Bool)

(assert (=> b!3916867 (= e!2421783 (nullable!3978 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448))))))))

(declare-fun b!3916868 () Bool)

(declare-fun res!1584403 () Bool)

(assert (=> b!3916868 (=> res!1584403 e!2421787)))

(assert (=> b!3916868 (= res!1584403 (not (is-ElementMatch!11368 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))))))

(assert (=> b!3916868 (= e!2421784 e!2421787)))

(declare-fun b!3916869 () Bool)

(declare-fun res!1584400 () Bool)

(assert (=> b!3916869 (=> res!1584400 e!2421788)))

(assert (=> b!3916869 (= res!1584400 (not (isEmpty!24701 (tail!5996 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))))))))

(declare-fun b!3916870 () Bool)

(assert (=> b!3916870 (= e!2421783 (matchR!5457 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))) (head!8280 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))))) (tail!5996 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))))))))

(assert (= (and d!1161881 c!680771) b!3916867))

(assert (= (and d!1161881 (not c!680771)) b!3916870))

(assert (= (and d!1161881 c!680770) b!3916859))

(assert (= (and d!1161881 (not c!680770)) b!3916865))

(assert (= (and b!3916865 c!680772) b!3916860))

(assert (= (and b!3916865 (not c!680772)) b!3916868))

(assert (= (and b!3916868 (not res!1584403)) b!3916861))

(assert (= (and b!3916861 res!1584399) b!3916862))

(assert (= (and b!3916862 res!1584398) b!3916858))

(assert (= (and b!3916858 res!1584397) b!3916857))

(assert (= (and b!3916861 (not res!1584396)) b!3916866))

(assert (= (and b!3916866 res!1584401) b!3916863))

(assert (= (and b!3916863 (not res!1584402)) b!3916869))

(assert (= (and b!3916869 (not res!1584400)) b!3916864))

(assert (= (or b!3916859 b!3916862 b!3916863) bm!284494))

(assert (=> b!3916858 m!4479419))

(declare-fun m!4480361 () Bool)

(assert (=> b!3916858 m!4480361))

(assert (=> b!3916858 m!4480361))

(declare-fun m!4480363 () Bool)

(assert (=> b!3916858 m!4480363))

(assert (=> b!3916857 m!4479419))

(declare-fun m!4480365 () Bool)

(assert (=> b!3916857 m!4480365))

(assert (=> bm!284494 m!4479419))

(declare-fun m!4480367 () Bool)

(assert (=> bm!284494 m!4480367))

(assert (=> b!3916864 m!4479419))

(assert (=> b!3916864 m!4480365))

(assert (=> b!3916870 m!4479419))

(assert (=> b!3916870 m!4480365))

(assert (=> b!3916870 m!4480365))

(declare-fun m!4480369 () Bool)

(assert (=> b!3916870 m!4480369))

(assert (=> b!3916870 m!4479419))

(assert (=> b!3916870 m!4480361))

(assert (=> b!3916870 m!4480369))

(assert (=> b!3916870 m!4480361))

(declare-fun m!4480371 () Bool)

(assert (=> b!3916870 m!4480371))

(declare-fun m!4480373 () Bool)

(assert (=> b!3916867 m!4480373))

(assert (=> d!1161881 m!4479419))

(assert (=> d!1161881 m!4480367))

(declare-fun m!4480375 () Bool)

(assert (=> d!1161881 m!4480375))

(assert (=> b!3916869 m!4479419))

(assert (=> b!3916869 m!4480361))

(assert (=> b!3916869 m!4480361))

(assert (=> b!3916869 m!4480363))

(assert (=> b!3916081 d!1161881))

(assert (=> b!3916081 d!1161719))

(assert (=> b!3916081 d!1161837))

(assert (=> b!3916081 d!1161839))

(declare-fun bs!585736 () Bool)

(declare-fun d!1161883 () Bool)

(assert (= bs!585736 (and d!1161883 d!1161763)))

(declare-fun lambda!126525 () Int)

(assert (=> bs!585736 (= (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (= lambda!126525 lambda!126521))))

(assert (=> d!1161883 true))

(assert (=> d!1161883 (< (dynLambda!17831 order!22271 (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) (dynLambda!17834 order!22277 lambda!126525))))

(assert (=> d!1161883 (= (equivClasses!2677 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) (Forall2!1045 lambda!126525))))

(declare-fun bs!585737 () Bool)

(assert (= bs!585737 d!1161883))

(declare-fun m!4480377 () Bool)

(assert (=> bs!585737 m!4480377))

(assert (=> b!3916135 d!1161883))

(assert (=> d!1161609 d!1161783))

(assert (=> d!1161609 d!1161779))

(declare-fun d!1161885 () Bool)

(declare-fun nullableFct!1127 (Regex!11368) Bool)

(assert (=> d!1161885 (= (nullable!3978 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (nullableFct!1127 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun bs!585738 () Bool)

(assert (= bs!585738 d!1161885))

(declare-fun m!4480379 () Bool)

(assert (=> bs!585738 m!4480379))

(assert (=> b!3916221 d!1161885))

(declare-fun d!1161887 () Bool)

(assert (=> d!1161887 (= (inv!17 (value!204831 (h!46925 prefixTokens!80))) (= (charsToBigInt!1 (text!47299 (value!204831 (h!46925 prefixTokens!80)))) (value!204823 (value!204831 (h!46925 prefixTokens!80)))))))

(declare-fun bs!585739 () Bool)

(assert (= bs!585739 d!1161887))

(declare-fun m!4480381 () Bool)

(assert (=> bs!585739 m!4480381))

(assert (=> b!3916156 d!1161887))

(declare-fun d!1161889 () Bool)

(declare-fun c!680773 () Bool)

(assert (=> d!1161889 (= c!680773 (is-Node!12674 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))))))

(declare-fun e!2421790 () Bool)

(assert (=> d!1161889 (= (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))) e!2421790)))

(declare-fun b!3916871 () Bool)

(assert (=> b!3916871 (= e!2421790 (inv!55704 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))))))

(declare-fun b!3916872 () Bool)

(declare-fun e!2421791 () Bool)

(assert (=> b!3916872 (= e!2421790 e!2421791)))

(declare-fun res!1584404 () Bool)

(assert (=> b!3916872 (= res!1584404 (not (is-Leaf!19613 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))))))))

(assert (=> b!3916872 (=> res!1584404 e!2421791)))

(declare-fun b!3916873 () Bool)

(assert (=> b!3916873 (= e!2421791 (inv!55705 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))))))

(assert (= (and d!1161889 c!680773) b!3916871))

(assert (= (and d!1161889 (not c!680773)) b!3916872))

(assert (= (and b!3916872 (not res!1584404)) b!3916873))

(declare-fun m!4480383 () Bool)

(assert (=> b!3916871 m!4480383))

(declare-fun m!4480385 () Bool)

(assert (=> b!3916873 m!4480385))

(assert (=> b!3916327 d!1161889))

(declare-fun b!3916874 () Bool)

(declare-fun res!1584406 () Bool)

(declare-fun e!2421795 () Bool)

(assert (=> b!3916874 (=> (not res!1584406) (not e!2421795))))

(declare-fun lt!1364731 () Option!8883)

(assert (=> b!3916874 (= res!1584406 (= (value!204831 (_1!23513 (get!13715 lt!1364731))) (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364731)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364731)))))))))

(declare-fun b!3916875 () Bool)

(assert (=> b!3916875 (= e!2421795 (= (size!31161 (_1!23513 (get!13715 lt!1364731))) (size!31162 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364731))))))))

(declare-fun b!3916876 () Bool)

(declare-fun e!2421794 () Option!8883)

(declare-fun lt!1364728 () tuple2!40766)

(assert (=> b!3916876 (= e!2421794 (Some!8882 (tuple2!40759 (Token!12065 (apply!9702 (transformation!6463 (h!46926 rules!2768)) (seqFromList!4730 (_1!23517 lt!1364728))) (h!46926 rules!2768) (size!31167 (seqFromList!4730 (_1!23517 lt!1364728))) (_1!23517 lt!1364728)) (_2!23517 lt!1364728))))))

(declare-fun lt!1364732 () Unit!59640)

(assert (=> b!3916876 (= lt!1364732 (longestMatchIsAcceptedByMatchOrIsEmpty!1212 (regex!6463 (h!46926 rules!2768)) lt!1364304))))

(declare-fun res!1584410 () Bool)

(assert (=> b!3916876 (= res!1584410 (isEmpty!24701 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (h!46926 rules!2768)) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(declare-fun e!2421793 () Bool)

(assert (=> b!3916876 (=> res!1584410 e!2421793)))

(assert (=> b!3916876 e!2421793))

(declare-fun lt!1364730 () Unit!59640)

(assert (=> b!3916876 (= lt!1364730 lt!1364732)))

(declare-fun lt!1364729 () Unit!59640)

(assert (=> b!3916876 (= lt!1364729 (lemmaSemiInverse!1745 (transformation!6463 (h!46926 rules!2768)) (seqFromList!4730 (_1!23517 lt!1364728))))))

(declare-fun b!3916877 () Bool)

(declare-fun e!2421792 () Bool)

(assert (=> b!3916877 (= e!2421792 e!2421795)))

(declare-fun res!1584407 () Bool)

(assert (=> b!3916877 (=> (not res!1584407) (not e!2421795))))

(assert (=> b!3916877 (= res!1584407 (matchR!5457 (regex!6463 (h!46926 rules!2768)) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364731))))))))

(declare-fun b!3916878 () Bool)

(declare-fun res!1584405 () Bool)

(assert (=> b!3916878 (=> (not res!1584405) (not e!2421795))))

(assert (=> b!3916878 (= res!1584405 (= (rule!9387 (_1!23513 (get!13715 lt!1364731))) (h!46926 rules!2768)))))

(declare-fun d!1161891 () Bool)

(assert (=> d!1161891 e!2421792))

(declare-fun res!1584411 () Bool)

(assert (=> d!1161891 (=> res!1584411 e!2421792)))

(assert (=> d!1161891 (= res!1584411 (isEmpty!24705 lt!1364731))))

(assert (=> d!1161891 (= lt!1364731 e!2421794)))

(declare-fun c!680774 () Bool)

(assert (=> d!1161891 (= c!680774 (isEmpty!24701 (_1!23517 lt!1364728)))))

(assert (=> d!1161891 (= lt!1364728 (findLongestMatch!1152 (regex!6463 (h!46926 rules!2768)) lt!1364304))))

(assert (=> d!1161891 (ruleValid!2411 thiss!20629 (h!46926 rules!2768))))

(assert (=> d!1161891 (= (maxPrefixOneRule!2426 thiss!20629 (h!46926 rules!2768) lt!1364304) lt!1364731)))

(declare-fun b!3916879 () Bool)

(assert (=> b!3916879 (= e!2421793 (matchR!5457 (regex!6463 (h!46926 rules!2768)) (_1!23517 (findLongestMatchInner!1239 (regex!6463 (h!46926 rules!2768)) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(declare-fun b!3916880 () Bool)

(declare-fun res!1584408 () Bool)

(assert (=> b!3916880 (=> (not res!1584408) (not e!2421795))))

(assert (=> b!3916880 (= res!1584408 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364731)))) (_2!23513 (get!13715 lt!1364731))) lt!1364304))))

(declare-fun b!3916881 () Bool)

(assert (=> b!3916881 (= e!2421794 None!8882)))

(declare-fun b!3916882 () Bool)

(declare-fun res!1584409 () Bool)

(assert (=> b!3916882 (=> (not res!1584409) (not e!2421795))))

(assert (=> b!3916882 (= res!1584409 (< (size!31162 (_2!23513 (get!13715 lt!1364731))) (size!31162 lt!1364304)))))

(assert (= (and d!1161891 c!680774) b!3916881))

(assert (= (and d!1161891 (not c!680774)) b!3916876))

(assert (= (and b!3916876 (not res!1584410)) b!3916879))

(assert (= (and d!1161891 (not res!1584411)) b!3916877))

(assert (= (and b!3916877 res!1584407) b!3916880))

(assert (= (and b!3916880 res!1584408) b!3916882))

(assert (= (and b!3916882 res!1584409) b!3916878))

(assert (= (and b!3916878 res!1584405) b!3916874))

(assert (= (and b!3916874 res!1584406) b!3916875))

(declare-fun m!4480387 () Bool)

(assert (=> b!3916875 m!4480387))

(declare-fun m!4480389 () Bool)

(assert (=> b!3916875 m!4480389))

(assert (=> b!3916879 m!4479669))

(assert (=> b!3916879 m!4479125))

(assert (=> b!3916879 m!4479669))

(assert (=> b!3916879 m!4479125))

(declare-fun m!4480391 () Bool)

(assert (=> b!3916879 m!4480391))

(declare-fun m!4480393 () Bool)

(assert (=> b!3916879 m!4480393))

(assert (=> b!3916874 m!4480387))

(declare-fun m!4480395 () Bool)

(assert (=> b!3916874 m!4480395))

(assert (=> b!3916874 m!4480395))

(declare-fun m!4480397 () Bool)

(assert (=> b!3916874 m!4480397))

(declare-fun m!4480399 () Bool)

(assert (=> d!1161891 m!4480399))

(declare-fun m!4480401 () Bool)

(assert (=> d!1161891 m!4480401))

(declare-fun m!4480403 () Bool)

(assert (=> d!1161891 m!4480403))

(declare-fun m!4480405 () Bool)

(assert (=> d!1161891 m!4480405))

(assert (=> b!3916876 m!4479669))

(assert (=> b!3916876 m!4479125))

(assert (=> b!3916876 m!4480391))

(assert (=> b!3916876 m!4479669))

(declare-fun m!4480407 () Bool)

(assert (=> b!3916876 m!4480407))

(declare-fun m!4480409 () Bool)

(assert (=> b!3916876 m!4480409))

(assert (=> b!3916876 m!4480409))

(declare-fun m!4480411 () Bool)

(assert (=> b!3916876 m!4480411))

(declare-fun m!4480413 () Bool)

(assert (=> b!3916876 m!4480413))

(assert (=> b!3916876 m!4480409))

(declare-fun m!4480415 () Bool)

(assert (=> b!3916876 m!4480415))

(assert (=> b!3916876 m!4479125))

(assert (=> b!3916876 m!4480409))

(declare-fun m!4480417 () Bool)

(assert (=> b!3916876 m!4480417))

(assert (=> b!3916877 m!4480387))

(declare-fun m!4480419 () Bool)

(assert (=> b!3916877 m!4480419))

(assert (=> b!3916877 m!4480419))

(declare-fun m!4480421 () Bool)

(assert (=> b!3916877 m!4480421))

(assert (=> b!3916877 m!4480421))

(declare-fun m!4480423 () Bool)

(assert (=> b!3916877 m!4480423))

(assert (=> b!3916880 m!4480387))

(assert (=> b!3916880 m!4480419))

(assert (=> b!3916880 m!4480419))

(assert (=> b!3916880 m!4480421))

(assert (=> b!3916880 m!4480421))

(declare-fun m!4480425 () Bool)

(assert (=> b!3916880 m!4480425))

(assert (=> b!3916878 m!4480387))

(assert (=> b!3916882 m!4480387))

(declare-fun m!4480427 () Bool)

(assert (=> b!3916882 m!4480427))

(assert (=> b!3916882 m!4479125))

(assert (=> bm!284434 d!1161891))

(declare-fun d!1161893 () Bool)

(assert (=> d!1161893 (= (isEmpty!24699 (_1!23514 lt!1364467)) (is-Nil!41505 (_1!23514 lt!1364467)))))

(assert (=> b!3916115 d!1161893))

(declare-fun d!1161895 () Bool)

(assert (=> d!1161895 (= (isEmpty!24705 lt!1364448) (not (is-Some!8882 lt!1364448)))))

(assert (=> d!1161559 d!1161895))

(declare-fun b!3916885 () Bool)

(declare-fun e!2421797 () Bool)

(assert (=> b!3916885 (= e!2421797 (isPrefix!3558 (tail!5996 lt!1364304) (tail!5996 lt!1364304)))))

(declare-fun d!1161897 () Bool)

(declare-fun e!2421798 () Bool)

(assert (=> d!1161897 e!2421798))

(declare-fun res!1584413 () Bool)

(assert (=> d!1161897 (=> res!1584413 e!2421798)))

(declare-fun lt!1364733 () Bool)

(assert (=> d!1161897 (= res!1584413 (not lt!1364733))))

(declare-fun e!2421796 () Bool)

(assert (=> d!1161897 (= lt!1364733 e!2421796)))

(declare-fun res!1584412 () Bool)

(assert (=> d!1161897 (=> res!1584412 e!2421796)))

(assert (=> d!1161897 (= res!1584412 (is-Nil!41504 lt!1364304))))

(assert (=> d!1161897 (= (isPrefix!3558 lt!1364304 lt!1364304) lt!1364733)))

(declare-fun b!3916883 () Bool)

(assert (=> b!3916883 (= e!2421796 e!2421797)))

(declare-fun res!1584415 () Bool)

(assert (=> b!3916883 (=> (not res!1584415) (not e!2421797))))

(assert (=> b!3916883 (= res!1584415 (not (is-Nil!41504 lt!1364304)))))

(declare-fun b!3916886 () Bool)

(assert (=> b!3916886 (= e!2421798 (>= (size!31162 lt!1364304) (size!31162 lt!1364304)))))

(declare-fun b!3916884 () Bool)

(declare-fun res!1584414 () Bool)

(assert (=> b!3916884 (=> (not res!1584414) (not e!2421797))))

(assert (=> b!3916884 (= res!1584414 (= (head!8280 lt!1364304) (head!8280 lt!1364304)))))

(assert (= (and d!1161897 (not res!1584412)) b!3916883))

(assert (= (and b!3916883 res!1584415) b!3916884))

(assert (= (and b!3916884 res!1584414) b!3916885))

(assert (= (and d!1161897 (not res!1584413)) b!3916886))

(assert (=> b!3916885 m!4479371))

(assert (=> b!3916885 m!4479371))

(assert (=> b!3916885 m!4479371))

(assert (=> b!3916885 m!4479371))

(declare-fun m!4480429 () Bool)

(assert (=> b!3916885 m!4480429))

(assert (=> b!3916886 m!4479125))

(assert (=> b!3916886 m!4479125))

(assert (=> b!3916884 m!4480039))

(assert (=> b!3916884 m!4480039))

(assert (=> d!1161559 d!1161897))

(declare-fun d!1161899 () Bool)

(assert (=> d!1161899 (isPrefix!3558 lt!1364304 lt!1364304)))

(declare-fun lt!1364736 () Unit!59640)

(declare-fun choose!23204 (List!41628 List!41628) Unit!59640)

(assert (=> d!1161899 (= lt!1364736 (choose!23204 lt!1364304 lt!1364304))))

(assert (=> d!1161899 (= (lemmaIsPrefixRefl!2257 lt!1364304 lt!1364304) lt!1364736)))

(declare-fun bs!585740 () Bool)

(assert (= bs!585740 d!1161899))

(assert (=> bs!585740 m!4479437))

(declare-fun m!4480431 () Bool)

(assert (=> bs!585740 m!4480431))

(assert (=> d!1161559 d!1161899))

(declare-fun d!1161901 () Bool)

(assert (=> d!1161901 true))

(declare-fun lt!1364739 () Bool)

(declare-fun lambda!126528 () Int)

(declare-fun forall!8311 (List!41630 Int) Bool)

(assert (=> d!1161901 (= lt!1364739 (forall!8311 rules!2768 lambda!126528))))

(declare-fun e!2421804 () Bool)

(assert (=> d!1161901 (= lt!1364739 e!2421804)))

(declare-fun res!1584421 () Bool)

(assert (=> d!1161901 (=> res!1584421 e!2421804)))

(assert (=> d!1161901 (= res!1584421 (not (is-Cons!41506 rules!2768)))))

(assert (=> d!1161901 (= (rulesValidInductive!2327 thiss!20629 rules!2768) lt!1364739)))

(declare-fun b!3916891 () Bool)

(declare-fun e!2421803 () Bool)

(assert (=> b!3916891 (= e!2421804 e!2421803)))

(declare-fun res!1584420 () Bool)

(assert (=> b!3916891 (=> (not res!1584420) (not e!2421803))))

(assert (=> b!3916891 (= res!1584420 (ruleValid!2411 thiss!20629 (h!46926 rules!2768)))))

(declare-fun b!3916892 () Bool)

(assert (=> b!3916892 (= e!2421803 (rulesValidInductive!2327 thiss!20629 (t!323731 rules!2768)))))

(assert (= (and d!1161901 (not res!1584421)) b!3916891))

(assert (= (and b!3916891 res!1584420) b!3916892))

(declare-fun m!4480433 () Bool)

(assert (=> d!1161901 m!4480433))

(assert (=> b!3916891 m!4480405))

(assert (=> b!3916892 m!4480195))

(assert (=> d!1161559 d!1161901))

(declare-fun b!3916903 () Bool)

(declare-fun e!2421809 () List!41628)

(assert (=> b!3916903 (= e!2421809 Nil!41504)))

(declare-fun b!3916906 () Bool)

(declare-fun e!2421810 () List!41628)

(assert (=> b!3916906 (= e!2421810 (++!10683 (list!15432 (left!31752 (c!680556 (charsOf!4287 (_1!23513 (v!39206 lt!1364311)))))) (list!15432 (right!32082 (c!680556 (charsOf!4287 (_1!23513 (v!39206 lt!1364311))))))))))

(declare-fun b!3916904 () Bool)

(assert (=> b!3916904 (= e!2421809 e!2421810)))

(declare-fun c!680780 () Bool)

(assert (=> b!3916904 (= c!680780 (is-Leaf!19613 (c!680556 (charsOf!4287 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916905 () Bool)

(declare-fun list!15434 (IArray!25353) List!41628)

(assert (=> b!3916905 (= e!2421810 (list!15434 (xs!15980 (c!680556 (charsOf!4287 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun d!1161903 () Bool)

(declare-fun c!680779 () Bool)

(assert (=> d!1161903 (= c!680779 (is-Empty!12674 (c!680556 (charsOf!4287 (_1!23513 (v!39206 lt!1364311))))))))

(assert (=> d!1161903 (= (list!15432 (c!680556 (charsOf!4287 (_1!23513 (v!39206 lt!1364311))))) e!2421809)))

(assert (= (and d!1161903 c!680779) b!3916903))

(assert (= (and d!1161903 (not c!680779)) b!3916904))

(assert (= (and b!3916904 c!680780) b!3916905))

(assert (= (and b!3916904 (not c!680780)) b!3916906))

(declare-fun m!4480435 () Bool)

(assert (=> b!3916906 m!4480435))

(declare-fun m!4480437 () Bool)

(assert (=> b!3916906 m!4480437))

(assert (=> b!3916906 m!4480435))

(assert (=> b!3916906 m!4480437))

(declare-fun m!4480439 () Bool)

(assert (=> b!3916906 m!4480439))

(declare-fun m!4480441 () Bool)

(assert (=> b!3916905 m!4480441))

(assert (=> d!1161523 d!1161903))

(declare-fun d!1161905 () Bool)

(assert (=> d!1161905 (= (isEmpty!24699 (_1!23514 lt!1364413)) (is-Nil!41505 (_1!23514 lt!1364413)))))

(assert (=> b!3915990 d!1161905))

(declare-fun d!1161907 () Bool)

(declare-fun e!2421811 () Bool)

(assert (=> d!1161907 e!2421811))

(declare-fun res!1584423 () Bool)

(assert (=> d!1161907 (=> (not res!1584423) (not e!2421811))))

(declare-fun lt!1364740 () List!41629)

(assert (=> d!1161907 (= res!1584423 (= (content!6240 lt!1364740) (set.union (content!6240 (t!323730 prefixTokens!80)) (content!6240 suffixTokens!72))))))

(declare-fun e!2421812 () List!41629)

(assert (=> d!1161907 (= lt!1364740 e!2421812)))

(declare-fun c!680781 () Bool)

(assert (=> d!1161907 (= c!680781 (is-Nil!41505 (t!323730 prefixTokens!80)))))

(assert (=> d!1161907 (= (++!10684 (t!323730 prefixTokens!80) suffixTokens!72) lt!1364740)))

(declare-fun b!3916910 () Bool)

(assert (=> b!3916910 (= e!2421811 (or (not (= suffixTokens!72 Nil!41505)) (= lt!1364740 (t!323730 prefixTokens!80))))))

(declare-fun b!3916908 () Bool)

(assert (=> b!3916908 (= e!2421812 (Cons!41505 (h!46925 (t!323730 prefixTokens!80)) (++!10684 (t!323730 (t!323730 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3916909 () Bool)

(declare-fun res!1584422 () Bool)

(assert (=> b!3916909 (=> (not res!1584422) (not e!2421811))))

(assert (=> b!3916909 (= res!1584422 (= (size!31165 lt!1364740) (+ (size!31165 (t!323730 prefixTokens!80)) (size!31165 suffixTokens!72))))))

(declare-fun b!3916907 () Bool)

(assert (=> b!3916907 (= e!2421812 suffixTokens!72)))

(assert (= (and d!1161907 c!680781) b!3916907))

(assert (= (and d!1161907 (not c!680781)) b!3916908))

(assert (= (and d!1161907 res!1584423) b!3916909))

(assert (= (and b!3916909 res!1584422) b!3916910))

(declare-fun m!4480443 () Bool)

(assert (=> d!1161907 m!4480443))

(declare-fun m!4480445 () Bool)

(assert (=> d!1161907 m!4480445))

(assert (=> d!1161907 m!4479457))

(declare-fun m!4480447 () Bool)

(assert (=> b!3916908 m!4480447))

(declare-fun m!4480449 () Bool)

(assert (=> b!3916909 m!4480449))

(declare-fun m!4480451 () Bool)

(assert (=> b!3916909 m!4480451))

(assert (=> b!3916909 m!4479465))

(assert (=> b!3916103 d!1161907))

(assert (=> b!3916320 d!1161737))

(declare-fun d!1161909 () Bool)

(declare-fun lt!1364741 () Int)

(assert (=> d!1161909 (>= lt!1364741 0)))

(declare-fun e!2421813 () Int)

(assert (=> d!1161909 (= lt!1364741 e!2421813)))

(declare-fun c!680782 () Bool)

(assert (=> d!1161909 (= c!680782 (is-Nil!41504 (t!323729 lt!1364317)))))

(assert (=> d!1161909 (= (size!31162 (t!323729 lt!1364317)) lt!1364741)))

(declare-fun b!3916911 () Bool)

(assert (=> b!3916911 (= e!2421813 0)))

(declare-fun b!3916912 () Bool)

(assert (=> b!3916912 (= e!2421813 (+ 1 (size!31162 (t!323729 (t!323729 lt!1364317)))))))

(assert (= (and d!1161909 c!680782) b!3916911))

(assert (= (and d!1161909 (not c!680782)) b!3916912))

(declare-fun m!4480453 () Bool)

(assert (=> b!3916912 m!4480453))

(assert (=> b!3916041 d!1161909))

(declare-fun b!3916913 () Bool)

(declare-fun e!2421816 () Bool)

(declare-fun e!2421814 () Bool)

(assert (=> b!3916913 (= e!2421816 e!2421814)))

(declare-fun res!1584424 () Bool)

(declare-fun lt!1364742 () tuple2!40760)

(assert (=> b!3916913 (= res!1584424 (< (size!31162 (_2!23514 lt!1364742)) (size!31162 (_2!23513 (v!39206 lt!1364451)))))))

(assert (=> b!3916913 (=> (not res!1584424) (not e!2421814))))

(declare-fun b!3916914 () Bool)

(assert (=> b!3916914 (= e!2421816 (= (_2!23514 lt!1364742) (_2!23513 (v!39206 lt!1364451))))))

(declare-fun b!3916915 () Bool)

(declare-fun e!2421815 () tuple2!40760)

(assert (=> b!3916915 (= e!2421815 (tuple2!40761 Nil!41505 (_2!23513 (v!39206 lt!1364451))))))

(declare-fun b!3916916 () Bool)

(assert (=> b!3916916 (= e!2421814 (not (isEmpty!24699 (_1!23514 lt!1364742))))))

(declare-fun b!3916917 () Bool)

(declare-fun lt!1364743 () Option!8883)

(declare-fun lt!1364744 () tuple2!40760)

(assert (=> b!3916917 (= e!2421815 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364743)) (_1!23514 lt!1364744)) (_2!23514 lt!1364744)))))

(assert (=> b!3916917 (= lt!1364744 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364743))))))

(declare-fun d!1161911 () Bool)

(assert (=> d!1161911 e!2421816))

(declare-fun c!680783 () Bool)

(assert (=> d!1161911 (= c!680783 (> (size!31165 (_1!23514 lt!1364742)) 0))))

(assert (=> d!1161911 (= lt!1364742 e!2421815)))

(declare-fun c!680784 () Bool)

(assert (=> d!1161911 (= c!680784 (is-Some!8882 lt!1364743))))

(assert (=> d!1161911 (= lt!1364743 (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364451))))))

(assert (=> d!1161911 (= (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364451))) lt!1364742)))

(assert (= (and d!1161911 c!680784) b!3916917))

(assert (= (and d!1161911 (not c!680784)) b!3916915))

(assert (= (and d!1161911 c!680783) b!3916913))

(assert (= (and d!1161911 (not c!680783)) b!3916914))

(assert (= (and b!3916913 res!1584424) b!3916916))

(declare-fun m!4480455 () Bool)

(assert (=> b!3916913 m!4480455))

(declare-fun m!4480457 () Bool)

(assert (=> b!3916913 m!4480457))

(declare-fun m!4480459 () Bool)

(assert (=> b!3916916 m!4480459))

(declare-fun m!4480461 () Bool)

(assert (=> b!3916917 m!4480461))

(declare-fun m!4480463 () Bool)

(assert (=> d!1161911 m!4480463))

(declare-fun m!4480465 () Bool)

(assert (=> d!1161911 m!4480465))

(assert (=> b!3916091 d!1161911))

(declare-fun d!1161913 () Bool)

(declare-fun lt!1364745 () Int)

(assert (=> d!1161913 (>= lt!1364745 0)))

(declare-fun e!2421817 () Int)

(assert (=> d!1161913 (= lt!1364745 e!2421817)))

(declare-fun c!680785 () Bool)

(assert (=> d!1161913 (= c!680785 (is-Nil!41504 (_2!23514 lt!1364450)))))

(assert (=> d!1161913 (= (size!31162 (_2!23514 lt!1364450)) lt!1364745)))

(declare-fun b!3916918 () Bool)

(assert (=> b!3916918 (= e!2421817 0)))

(declare-fun b!3916919 () Bool)

(assert (=> b!3916919 (= e!2421817 (+ 1 (size!31162 (t!323729 (_2!23514 lt!1364450)))))))

(assert (= (and d!1161913 c!680785) b!3916918))

(assert (= (and d!1161913 (not c!680785)) b!3916919))

(declare-fun m!4480467 () Bool)

(assert (=> b!3916919 m!4480467))

(assert (=> b!3916087 d!1161913))

(assert (=> b!3916087 d!1161605))

(declare-fun d!1161915 () Bool)

(declare-fun lt!1364746 () Int)

(assert (=> d!1161915 (>= lt!1364746 0)))

(declare-fun e!2421818 () Int)

(assert (=> d!1161915 (= lt!1364746 e!2421818)))

(declare-fun c!680786 () Bool)

(assert (=> d!1161915 (= c!680786 (is-Nil!41504 (_2!23513 (get!13715 lt!1364518))))))

(assert (=> d!1161915 (= (size!31162 (_2!23513 (get!13715 lt!1364518))) lt!1364746)))

(declare-fun b!3916920 () Bool)

(assert (=> b!3916920 (= e!2421818 0)))

(declare-fun b!3916921 () Bool)

(assert (=> b!3916921 (= e!2421818 (+ 1 (size!31162 (t!323729 (_2!23513 (get!13715 lt!1364518))))))))

(assert (= (and d!1161915 c!680786) b!3916920))

(assert (= (and d!1161915 (not c!680786)) b!3916921))

(declare-fun m!4480469 () Bool)

(assert (=> b!3916921 m!4480469))

(assert (=> b!3916324 d!1161915))

(assert (=> b!3916324 d!1161737))

(assert (=> b!3916324 d!1161605))

(declare-fun bs!585741 () Bool)

(declare-fun d!1161917 () Bool)

(assert (= bs!585741 (and d!1161917 d!1161763)))

(declare-fun lambda!126529 () Int)

(assert (=> bs!585741 (= (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (= lambda!126529 lambda!126521))))

(declare-fun bs!585742 () Bool)

(assert (= bs!585742 (and d!1161917 d!1161883)))

(assert (=> bs!585742 (= (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) (= lambda!126529 lambda!126525))))

(assert (=> d!1161917 true))

(assert (=> d!1161917 (< (dynLambda!17831 order!22271 (toValue!8911 (transformation!6463 (h!46926 rules!2768)))) (dynLambda!17834 order!22277 lambda!126529))))

(assert (=> d!1161917 (= (equivClasses!2677 (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (h!46926 rules!2768)))) (Forall2!1045 lambda!126529))))

(declare-fun bs!585743 () Bool)

(assert (= bs!585743 d!1161917))

(declare-fun m!4480471 () Bool)

(assert (=> bs!585743 m!4480471))

(assert (=> b!3915931 d!1161917))

(assert (=> b!3915947 d!1161769))

(declare-fun d!1161919 () Bool)

(assert (=> d!1161919 (= (head!8280 lt!1364302) (h!46924 lt!1364302))))

(assert (=> b!3915947 d!1161919))

(declare-fun d!1161921 () Bool)

(assert (=> d!1161921 (and (= lt!1364317 lt!1364317) (= (_2!23513 (v!39206 lt!1364311)) (_2!23513 lt!1364301)))))

(assert (=> d!1161921 true))

(declare-fun _$50!361 () Unit!59640)

(assert (=> d!1161921 (= (choose!23196 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 (_2!23513 lt!1364301)) _$50!361)))

(assert (=> d!1161551 d!1161921))

(assert (=> d!1161551 d!1161535))

(assert (=> d!1161551 d!1161573))

(declare-fun d!1161923 () Bool)

(declare-fun lt!1364747 () Int)

(assert (=> d!1161923 (>= lt!1364747 0)))

(declare-fun e!2421819 () Int)

(assert (=> d!1161923 (= lt!1364747 e!2421819)))

(declare-fun c!680787 () Bool)

(assert (=> d!1161923 (= c!680787 (is-Nil!41505 (_1!23514 lt!1364467)))))

(assert (=> d!1161923 (= (size!31165 (_1!23514 lt!1364467)) lt!1364747)))

(declare-fun b!3916922 () Bool)

(assert (=> b!3916922 (= e!2421819 0)))

(declare-fun b!3916923 () Bool)

(assert (=> b!3916923 (= e!2421819 (+ 1 (size!31165 (t!323730 (_1!23514 lt!1364467)))))))

(assert (= (and d!1161923 c!680787) b!3916922))

(assert (= (and d!1161923 (not c!680787)) b!3916923))

(declare-fun m!4480473 () Bool)

(assert (=> b!3916923 m!4480473))

(assert (=> d!1161567 d!1161923))

(declare-fun b!3916924 () Bool)

(declare-fun res!1584426 () Bool)

(declare-fun e!2421822 () Bool)

(assert (=> b!3916924 (=> (not res!1584426) (not e!2421822))))

(declare-fun lt!1364751 () Option!8883)

(assert (=> b!3916924 (= res!1584426 (< (size!31162 (_2!23513 (get!13715 lt!1364751))) (size!31162 (_2!23513 lt!1364301))))))

(declare-fun b!3916925 () Bool)

(declare-fun res!1584428 () Bool)

(assert (=> b!3916925 (=> (not res!1584428) (not e!2421822))))

(assert (=> b!3916925 (= res!1584428 (= (value!204831 (_1!23513 (get!13715 lt!1364751))) (apply!9702 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364751)))) (seqFromList!4730 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364751)))))))))

(declare-fun b!3916926 () Bool)

(declare-fun e!2421820 () Option!8883)

(declare-fun lt!1364749 () Option!8883)

(declare-fun lt!1364750 () Option!8883)

(assert (=> b!3916926 (= e!2421820 (ite (and (is-None!8882 lt!1364749) (is-None!8882 lt!1364750)) None!8882 (ite (is-None!8882 lt!1364750) lt!1364749 (ite (is-None!8882 lt!1364749) lt!1364750 (ite (>= (size!31161 (_1!23513 (v!39206 lt!1364749))) (size!31161 (_1!23513 (v!39206 lt!1364750)))) lt!1364749 lt!1364750)))))))

(declare-fun call!284500 () Option!8883)

(assert (=> b!3916926 (= lt!1364749 call!284500)))

(assert (=> b!3916926 (= lt!1364750 (maxPrefix!3356 thiss!20629 (t!323731 rules!2768) (_2!23513 lt!1364301)))))

(declare-fun b!3916927 () Bool)

(declare-fun res!1584430 () Bool)

(assert (=> b!3916927 (=> (not res!1584430) (not e!2421822))))

(assert (=> b!3916927 (= res!1584430 (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (get!13715 lt!1364751)))) (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364751))))))))

(declare-fun b!3916928 () Bool)

(declare-fun res!1584429 () Bool)

(assert (=> b!3916928 (=> (not res!1584429) (not e!2421822))))

(assert (=> b!3916928 (= res!1584429 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364751)))) (_2!23513 (get!13715 lt!1364751))) (_2!23513 lt!1364301)))))

(declare-fun b!3916929 () Bool)

(assert (=> b!3916929 (= e!2421820 call!284500)))

(declare-fun bm!284495 () Bool)

(assert (=> bm!284495 (= call!284500 (maxPrefixOneRule!2426 thiss!20629 (h!46926 rules!2768) (_2!23513 lt!1364301)))))

(declare-fun b!3916931 () Bool)

(declare-fun e!2421821 () Bool)

(assert (=> b!3916931 (= e!2421821 e!2421822)))

(declare-fun res!1584425 () Bool)

(assert (=> b!3916931 (=> (not res!1584425) (not e!2421822))))

(assert (=> b!3916931 (= res!1584425 (isDefined!6926 lt!1364751))))

(declare-fun b!3916932 () Bool)

(assert (=> b!3916932 (= e!2421822 (contains!8340 rules!2768 (rule!9387 (_1!23513 (get!13715 lt!1364751)))))))

(declare-fun b!3916930 () Bool)

(declare-fun res!1584431 () Bool)

(assert (=> b!3916930 (=> (not res!1584431) (not e!2421822))))

(assert (=> b!3916930 (= res!1584431 (= (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364751)))) (originalCharacters!7063 (_1!23513 (get!13715 lt!1364751)))))))

(declare-fun d!1161925 () Bool)

(assert (=> d!1161925 e!2421821))

(declare-fun res!1584427 () Bool)

(assert (=> d!1161925 (=> res!1584427 e!2421821)))

(assert (=> d!1161925 (= res!1584427 (isEmpty!24705 lt!1364751))))

(assert (=> d!1161925 (= lt!1364751 e!2421820)))

(declare-fun c!680788 () Bool)

(assert (=> d!1161925 (= c!680788 (and (is-Cons!41506 rules!2768) (is-Nil!41506 (t!323731 rules!2768))))))

(declare-fun lt!1364752 () Unit!59640)

(declare-fun lt!1364748 () Unit!59640)

(assert (=> d!1161925 (= lt!1364752 lt!1364748)))

(assert (=> d!1161925 (isPrefix!3558 (_2!23513 lt!1364301) (_2!23513 lt!1364301))))

(assert (=> d!1161925 (= lt!1364748 (lemmaIsPrefixRefl!2257 (_2!23513 lt!1364301) (_2!23513 lt!1364301)))))

(assert (=> d!1161925 (rulesValidInductive!2327 thiss!20629 rules!2768)))

(assert (=> d!1161925 (= (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 lt!1364301)) lt!1364751)))

(assert (= (and d!1161925 c!680788) b!3916929))

(assert (= (and d!1161925 (not c!680788)) b!3916926))

(assert (= (or b!3916929 b!3916926) bm!284495))

(assert (= (and d!1161925 (not res!1584427)) b!3916931))

(assert (= (and b!3916931 res!1584425) b!3916930))

(assert (= (and b!3916930 res!1584431) b!3916924))

(assert (= (and b!3916924 res!1584426) b!3916928))

(assert (= (and b!3916928 res!1584429) b!3916925))

(assert (= (and b!3916925 res!1584428) b!3916927))

(assert (= (and b!3916927 res!1584430) b!3916932))

(declare-fun m!4480475 () Bool)

(assert (=> b!3916924 m!4480475))

(declare-fun m!4480477 () Bool)

(assert (=> b!3916924 m!4480477))

(assert (=> b!3916924 m!4479093))

(assert (=> b!3916927 m!4480475))

(declare-fun m!4480479 () Bool)

(assert (=> b!3916927 m!4480479))

(assert (=> b!3916927 m!4480479))

(declare-fun m!4480481 () Bool)

(assert (=> b!3916927 m!4480481))

(assert (=> b!3916927 m!4480481))

(declare-fun m!4480483 () Bool)

(assert (=> b!3916927 m!4480483))

(assert (=> b!3916928 m!4480475))

(assert (=> b!3916928 m!4480479))

(assert (=> b!3916928 m!4480479))

(assert (=> b!3916928 m!4480481))

(assert (=> b!3916928 m!4480481))

(declare-fun m!4480485 () Bool)

(assert (=> b!3916928 m!4480485))

(declare-fun m!4480487 () Bool)

(assert (=> b!3916931 m!4480487))

(assert (=> b!3916925 m!4480475))

(declare-fun m!4480489 () Bool)

(assert (=> b!3916925 m!4480489))

(assert (=> b!3916925 m!4480489))

(declare-fun m!4480491 () Bool)

(assert (=> b!3916925 m!4480491))

(declare-fun m!4480493 () Bool)

(assert (=> b!3916926 m!4480493))

(declare-fun m!4480495 () Bool)

(assert (=> bm!284495 m!4480495))

(declare-fun m!4480497 () Bool)

(assert (=> d!1161925 m!4480497))

(declare-fun m!4480499 () Bool)

(assert (=> d!1161925 m!4480499))

(declare-fun m!4480501 () Bool)

(assert (=> d!1161925 m!4480501))

(assert (=> d!1161925 m!4479441))

(assert (=> b!3916930 m!4480475))

(assert (=> b!3916930 m!4480479))

(assert (=> b!3916930 m!4480479))

(assert (=> b!3916930 m!4480481))

(assert (=> b!3916932 m!4480475))

(declare-fun m!4480503 () Bool)

(assert (=> b!3916932 m!4480503))

(assert (=> d!1161567 d!1161925))

(declare-fun d!1161927 () Bool)

(assert (=> d!1161927 (= (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))) (isBalanced!3637 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))))))

(declare-fun bs!585744 () Bool)

(assert (= bs!585744 d!1161927))

(declare-fun m!4480505 () Bool)

(assert (=> bs!585744 m!4480505))

(assert (=> tb!233411 d!1161927))

(declare-fun d!1161929 () Bool)

(assert (=> d!1161929 (= (inv!15 (value!204831 (h!46925 prefixTokens!80))) (= (charsToBigInt!0 (text!47300 (value!204831 (h!46925 prefixTokens!80))) 0) (value!204826 (value!204831 (h!46925 prefixTokens!80)))))))

(declare-fun bs!585745 () Bool)

(assert (= bs!585745 d!1161929))

(declare-fun m!4480507 () Bool)

(assert (=> bs!585745 m!4480507))

(assert (=> b!3916157 d!1161929))

(declare-fun d!1161931 () Bool)

(declare-fun c!680789 () Bool)

(assert (=> d!1161931 (= c!680789 (is-Nil!41505 lt!1364461))))

(declare-fun e!2421823 () (Set Token!12064))

(assert (=> d!1161931 (= (content!6240 lt!1364461) e!2421823)))

(declare-fun b!3916933 () Bool)

(assert (=> b!3916933 (= e!2421823 (as set.empty (Set Token!12064)))))

(declare-fun b!3916934 () Bool)

(assert (=> b!3916934 (= e!2421823 (set.union (set.insert (h!46925 lt!1364461) (as set.empty (Set Token!12064))) (content!6240 (t!323730 lt!1364461))))))

(assert (= (and d!1161931 c!680789) b!3916933))

(assert (= (and d!1161931 (not c!680789)) b!3916934))

(declare-fun m!4480509 () Bool)

(assert (=> b!3916934 m!4480509))

(declare-fun m!4480511 () Bool)

(assert (=> b!3916934 m!4480511))

(assert (=> d!1161563 d!1161931))

(declare-fun d!1161933 () Bool)

(declare-fun c!680790 () Bool)

(assert (=> d!1161933 (= c!680790 (is-Nil!41505 prefixTokens!80))))

(declare-fun e!2421824 () (Set Token!12064))

(assert (=> d!1161933 (= (content!6240 prefixTokens!80) e!2421824)))

(declare-fun b!3916935 () Bool)

(assert (=> b!3916935 (= e!2421824 (as set.empty (Set Token!12064)))))

(declare-fun b!3916936 () Bool)

(assert (=> b!3916936 (= e!2421824 (set.union (set.insert (h!46925 prefixTokens!80) (as set.empty (Set Token!12064))) (content!6240 (t!323730 prefixTokens!80))))))

(assert (= (and d!1161933 c!680790) b!3916935))

(assert (= (and d!1161933 (not c!680790)) b!3916936))

(declare-fun m!4480513 () Bool)

(assert (=> b!3916936 m!4480513))

(assert (=> b!3916936 m!4480445))

(assert (=> d!1161563 d!1161933))

(declare-fun d!1161935 () Bool)

(declare-fun c!680791 () Bool)

(assert (=> d!1161935 (= c!680791 (is-Nil!41505 suffixTokens!72))))

(declare-fun e!2421825 () (Set Token!12064))

(assert (=> d!1161935 (= (content!6240 suffixTokens!72) e!2421825)))

(declare-fun b!3916937 () Bool)

(assert (=> b!3916937 (= e!2421825 (as set.empty (Set Token!12064)))))

(declare-fun b!3916938 () Bool)

(assert (=> b!3916938 (= e!2421825 (set.union (set.insert (h!46925 suffixTokens!72) (as set.empty (Set Token!12064))) (content!6240 (t!323730 suffixTokens!72))))))

(assert (= (and d!1161935 c!680791) b!3916937))

(assert (= (and d!1161935 (not c!680791)) b!3916938))

(declare-fun m!4480515 () Bool)

(assert (=> b!3916938 m!4480515))

(declare-fun m!4480517 () Bool)

(assert (=> b!3916938 m!4480517))

(assert (=> d!1161563 d!1161935))

(declare-fun d!1161937 () Bool)

(declare-fun lt!1364753 () Int)

(assert (=> d!1161937 (>= lt!1364753 0)))

(declare-fun e!2421826 () Int)

(assert (=> d!1161937 (= lt!1364753 e!2421826)))

(declare-fun c!680792 () Bool)

(assert (=> d!1161937 (= c!680792 (is-Nil!41504 (t!323729 (_2!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161937 (= (size!31162 (t!323729 (_2!23513 (v!39206 lt!1364311)))) lt!1364753)))

(declare-fun b!3916939 () Bool)

(assert (=> b!3916939 (= e!2421826 0)))

(declare-fun b!3916940 () Bool)

(assert (=> b!3916940 (= e!2421826 (+ 1 (size!31162 (t!323729 (t!323729 (_2!23513 (v!39206 lt!1364311)))))))))

(assert (= (and d!1161937 c!680792) b!3916939))

(assert (= (and d!1161937 (not c!680792)) b!3916940))

(declare-fun m!4480519 () Bool)

(assert (=> b!3916940 m!4480519))

(assert (=> b!3916148 d!1161937))

(assert (=> b!3916317 d!1161737))

(declare-fun d!1161939 () Bool)

(declare-fun lt!1364754 () Int)

(assert (=> d!1161939 (>= lt!1364754 0)))

(declare-fun e!2421827 () Int)

(assert (=> d!1161939 (= lt!1364754 e!2421827)))

(declare-fun c!680793 () Bool)

(assert (=> d!1161939 (= c!680793 (is-Nil!41504 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518)))))))

(assert (=> d!1161939 (= (size!31162 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518)))) lt!1364754)))

(declare-fun b!3916941 () Bool)

(assert (=> b!3916941 (= e!2421827 0)))

(declare-fun b!3916942 () Bool)

(assert (=> b!3916942 (= e!2421827 (+ 1 (size!31162 (t!323729 (originalCharacters!7063 (_1!23513 (get!13715 lt!1364518)))))))))

(assert (= (and d!1161939 c!680793) b!3916941))

(assert (= (and d!1161939 (not c!680793)) b!3916942))

(declare-fun m!4480521 () Bool)

(assert (=> b!3916942 m!4480521))

(assert (=> b!3916317 d!1161939))

(declare-fun d!1161941 () Bool)

(declare-fun lt!1364755 () Int)

(assert (=> d!1161941 (>= lt!1364755 0)))

(declare-fun e!2421828 () Int)

(assert (=> d!1161941 (= lt!1364755 e!2421828)))

(declare-fun c!680794 () Bool)

(assert (=> d!1161941 (= c!680794 (is-Nil!41504 (_2!23514 lt!1364413)))))

(assert (=> d!1161941 (= (size!31162 (_2!23514 lt!1364413)) lt!1364755)))

(declare-fun b!3916943 () Bool)

(assert (=> b!3916943 (= e!2421828 0)))

(declare-fun b!3916944 () Bool)

(assert (=> b!3916944 (= e!2421828 (+ 1 (size!31162 (t!323729 (_2!23514 lt!1364413)))))))

(assert (= (and d!1161941 c!680794) b!3916943))

(assert (= (and d!1161941 (not c!680794)) b!3916944))

(declare-fun m!4480523 () Bool)

(assert (=> b!3916944 m!4480523))

(assert (=> b!3915987 d!1161941))

(assert (=> b!3915987 d!1161595))

(declare-fun d!1161943 () Bool)

(declare-fun lt!1364756 () Int)

(assert (=> d!1161943 (>= lt!1364756 0)))

(declare-fun e!2421829 () Int)

(assert (=> d!1161943 (= lt!1364756 e!2421829)))

(declare-fun c!680795 () Bool)

(assert (=> d!1161943 (= c!680795 (is-Nil!41504 lt!1364302))))

(assert (=> d!1161943 (= (size!31162 lt!1364302) lt!1364756)))

(declare-fun b!3916945 () Bool)

(assert (=> b!3916945 (= e!2421829 0)))

(declare-fun b!3916946 () Bool)

(assert (=> b!3916946 (= e!2421829 (+ 1 (size!31162 (t!323729 lt!1364302))))))

(assert (= (and d!1161943 c!680795) b!3916945))

(assert (= (and d!1161943 (not c!680795)) b!3916946))

(declare-fun m!4480525 () Bool)

(assert (=> b!3916946 m!4480525))

(assert (=> b!3915949 d!1161943))

(assert (=> b!3915949 d!1161549))

(declare-fun d!1161945 () Bool)

(declare-fun lt!1364757 () Int)

(assert (=> d!1161945 (>= lt!1364757 0)))

(declare-fun e!2421830 () Int)

(assert (=> d!1161945 (= lt!1364757 e!2421830)))

(declare-fun c!680796 () Bool)

(assert (=> d!1161945 (= c!680796 (is-Nil!41504 (_2!23513 (get!13715 lt!1364448))))))

(assert (=> d!1161945 (= (size!31162 (_2!23513 (get!13715 lt!1364448))) lt!1364757)))

(declare-fun b!3916947 () Bool)

(assert (=> b!3916947 (= e!2421830 0)))

(declare-fun b!3916948 () Bool)

(assert (=> b!3916948 (= e!2421830 (+ 1 (size!31162 (t!323729 (_2!23513 (get!13715 lt!1364448))))))))

(assert (= (and d!1161945 c!680796) b!3916947))

(assert (= (and d!1161945 (not c!680796)) b!3916948))

(declare-fun m!4480527 () Bool)

(assert (=> b!3916948 m!4480527))

(assert (=> b!3916078 d!1161945))

(assert (=> b!3916078 d!1161719))

(assert (=> b!3916078 d!1161605))

(declare-fun bs!585746 () Bool)

(declare-fun d!1161947 () Bool)

(assert (= bs!585746 (and d!1161947 d!1161751)))

(declare-fun lambda!126530 () Int)

(assert (=> bs!585746 (= (and (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (= lambda!126530 lambda!126518))))

(declare-fun bs!585747 () Bool)

(assert (= bs!585747 (and d!1161947 d!1161821)))

(assert (=> bs!585747 (= (and (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))))) (= lambda!126530 lambda!126524))))

(assert (=> d!1161947 true))

(assert (=> d!1161947 (< (dynLambda!17833 order!22275 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) (dynLambda!17832 order!22273 lambda!126530))))

(assert (=> d!1161947 true))

(assert (=> d!1161947 (< (dynLambda!17831 order!22271 (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) (dynLambda!17832 order!22273 lambda!126530))))

(assert (=> d!1161947 (= (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) (Forall!1447 lambda!126530))))

(declare-fun bs!585748 () Bool)

(assert (= bs!585748 d!1161947))

(declare-fun m!4480529 () Bool)

(assert (=> bs!585748 m!4480529))

(assert (=> d!1161577 d!1161947))

(declare-fun d!1161949 () Bool)

(declare-fun res!1584432 () Bool)

(declare-fun e!2421831 () Bool)

(assert (=> d!1161949 (=> (not res!1584432) (not e!2421831))))

(assert (=> d!1161949 (= res!1584432 (not (isEmpty!24701 (originalCharacters!7063 (h!46925 (t!323730 suffixTokens!72))))))))

(assert (=> d!1161949 (= (inv!55696 (h!46925 (t!323730 suffixTokens!72))) e!2421831)))

(declare-fun b!3916949 () Bool)

(declare-fun res!1584433 () Bool)

(assert (=> b!3916949 (=> (not res!1584433) (not e!2421831))))

(assert (=> b!3916949 (= res!1584433 (= (originalCharacters!7063 (h!46925 (t!323730 suffixTokens!72))) (list!15430 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (value!204831 (h!46925 (t!323730 suffixTokens!72)))))))))

(declare-fun b!3916950 () Bool)

(assert (=> b!3916950 (= e!2421831 (= (size!31161 (h!46925 (t!323730 suffixTokens!72))) (size!31162 (originalCharacters!7063 (h!46925 (t!323730 suffixTokens!72))))))))

(assert (= (and d!1161949 res!1584432) b!3916949))

(assert (= (and b!3916949 res!1584433) b!3916950))

(declare-fun b_lambda!114685 () Bool)

(assert (=> (not b_lambda!114685) (not b!3916949)))

(declare-fun t!323908 () Bool)

(declare-fun tb!233549 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323908) tb!233549))

(declare-fun b!3916951 () Bool)

(declare-fun e!2421832 () Bool)

(declare-fun tp!1192138 () Bool)

(assert (=> b!3916951 (= e!2421832 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (value!204831 (h!46925 (t!323730 suffixTokens!72)))))) tp!1192138))))

(declare-fun result!283050 () Bool)

(assert (=> tb!233549 (= result!283050 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (value!204831 (h!46925 (t!323730 suffixTokens!72))))) e!2421832))))

(assert (= tb!233549 b!3916951))

(declare-fun m!4480531 () Bool)

(assert (=> b!3916951 m!4480531))

(declare-fun m!4480533 () Bool)

(assert (=> tb!233549 m!4480533))

(assert (=> b!3916949 t!323908))

(declare-fun b_and!298307 () Bool)

(assert (= b_and!298285 (and (=> t!323908 result!283050) b_and!298307)))

(declare-fun tb!233551 () Bool)

(declare-fun t!323910 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323910) tb!233551))

(declare-fun result!283052 () Bool)

(assert (= result!283052 result!283050))

(assert (=> b!3916949 t!323910))

(declare-fun b_and!298309 () Bool)

(assert (= b_and!298289 (and (=> t!323910 result!283052) b_and!298309)))

(declare-fun tb!233553 () Bool)

(declare-fun t!323912 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323912) tb!233553))

(declare-fun result!283054 () Bool)

(assert (= result!283054 result!283050))

(assert (=> b!3916949 t!323912))

(declare-fun b_and!298311 () Bool)

(assert (= b_and!298287 (and (=> t!323912 result!283054) b_and!298311)))

(declare-fun t!323914 () Bool)

(declare-fun tb!233555 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323914) tb!233555))

(declare-fun result!283056 () Bool)

(assert (= result!283056 result!283050))

(assert (=> b!3916949 t!323914))

(declare-fun b_and!298313 () Bool)

(assert (= b_and!298293 (and (=> t!323914 result!283056) b_and!298313)))

(declare-fun t!323916 () Bool)

(declare-fun tb!233557 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323916) tb!233557))

(declare-fun result!283058 () Bool)

(assert (= result!283058 result!283050))

(assert (=> b!3916949 t!323916))

(declare-fun b_and!298315 () Bool)

(assert (= b_and!298291 (and (=> t!323916 result!283058) b_and!298315)))

(declare-fun t!323918 () Bool)

(declare-fun tb!233559 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323918) tb!233559))

(declare-fun result!283060 () Bool)

(assert (= result!283060 result!283050))

(assert (=> b!3916949 t!323918))

(declare-fun b_and!298317 () Bool)

(assert (= b_and!298283 (and (=> t!323918 result!283060) b_and!298317)))

(declare-fun m!4480535 () Bool)

(assert (=> d!1161949 m!4480535))

(declare-fun m!4480537 () Bool)

(assert (=> b!3916949 m!4480537))

(assert (=> b!3916949 m!4480537))

(declare-fun m!4480539 () Bool)

(assert (=> b!3916949 m!4480539))

(declare-fun m!4480541 () Bool)

(assert (=> b!3916950 m!4480541))

(assert (=> b!3916384 d!1161949))

(declare-fun b!3916952 () Bool)

(declare-fun e!2421835 () Bool)

(assert (=> b!3916952 (= e!2421835 (= (head!8280 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))) (c!680555 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(declare-fun b!3916953 () Bool)

(declare-fun res!1584435 () Bool)

(assert (=> b!3916953 (=> (not res!1584435) (not e!2421835))))

(assert (=> b!3916953 (= res!1584435 (isEmpty!24701 (tail!5996 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304))))))))

(declare-fun b!3916954 () Bool)

(declare-fun e!2421836 () Bool)

(declare-fun lt!1364758 () Bool)

(declare-fun call!284501 () Bool)

(assert (=> b!3916954 (= e!2421836 (= lt!1364758 call!284501))))

(declare-fun b!3916955 () Bool)

(declare-fun e!2421834 () Bool)

(assert (=> b!3916955 (= e!2421834 (not lt!1364758))))

(declare-fun d!1161951 () Bool)

(assert (=> d!1161951 e!2421836))

(declare-fun c!680797 () Bool)

(assert (=> d!1161951 (= c!680797 (is-EmptyExpr!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun e!2421833 () Bool)

(assert (=> d!1161951 (= lt!1364758 e!2421833)))

(declare-fun c!680798 () Bool)

(assert (=> d!1161951 (= c!680798 (isEmpty!24701 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(assert (=> d!1161951 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161951 (= (matchR!5457 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))) lt!1364758)))

(declare-fun b!3916956 () Bool)

(declare-fun res!1584434 () Bool)

(declare-fun e!2421837 () Bool)

(assert (=> b!3916956 (=> res!1584434 e!2421837)))

(assert (=> b!3916956 (= res!1584434 e!2421835)))

(declare-fun res!1584437 () Bool)

(assert (=> b!3916956 (=> (not res!1584437) (not e!2421835))))

(assert (=> b!3916956 (= res!1584437 lt!1364758)))

(declare-fun b!3916957 () Bool)

(declare-fun res!1584436 () Bool)

(assert (=> b!3916957 (=> (not res!1584436) (not e!2421835))))

(assert (=> b!3916957 (= res!1584436 (not call!284501))))

(declare-fun b!3916958 () Bool)

(declare-fun e!2421839 () Bool)

(declare-fun e!2421838 () Bool)

(assert (=> b!3916958 (= e!2421839 e!2421838)))

(declare-fun res!1584440 () Bool)

(assert (=> b!3916958 (=> res!1584440 e!2421838)))

(assert (=> b!3916958 (= res!1584440 call!284501)))

(declare-fun b!3916959 () Bool)

(assert (=> b!3916959 (= e!2421838 (not (= (head!8280 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))) (c!680555 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))))

(declare-fun bm!284496 () Bool)

(assert (=> bm!284496 (= call!284501 (isEmpty!24701 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))

(declare-fun b!3916960 () Bool)

(assert (=> b!3916960 (= e!2421836 e!2421834)))

(declare-fun c!680799 () Bool)

(assert (=> b!3916960 (= c!680799 (is-EmptyLang!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916961 () Bool)

(assert (=> b!3916961 (= e!2421837 e!2421839)))

(declare-fun res!1584439 () Bool)

(assert (=> b!3916961 (=> (not res!1584439) (not e!2421839))))

(assert (=> b!3916961 (= res!1584439 (not lt!1364758))))

(declare-fun b!3916962 () Bool)

(assert (=> b!3916962 (= e!2421833 (nullable!3978 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))))

(declare-fun b!3916963 () Bool)

(declare-fun res!1584441 () Bool)

(assert (=> b!3916963 (=> res!1584441 e!2421837)))

(assert (=> b!3916963 (= res!1584441 (not (is-ElementMatch!11368 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))))

(assert (=> b!3916963 (= e!2421834 e!2421837)))

(declare-fun b!3916964 () Bool)

(declare-fun res!1584438 () Bool)

(assert (=> b!3916964 (=> res!1584438 e!2421838)))

(assert (=> b!3916964 (= res!1584438 (not (isEmpty!24701 (tail!5996 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304)))))))))

(declare-fun b!3916965 () Bool)

(assert (=> b!3916965 (= e!2421833 (matchR!5457 (derivativeStep!3443 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) (head!8280 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304))))) (tail!5996 (_1!23517 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 (size!31162 Nil!41504) lt!1364304 lt!1364304 (size!31162 lt!1364304))))))))

(assert (= (and d!1161951 c!680798) b!3916962))

(assert (= (and d!1161951 (not c!680798)) b!3916965))

(assert (= (and d!1161951 c!680797) b!3916954))

(assert (= (and d!1161951 (not c!680797)) b!3916960))

(assert (= (and b!3916960 c!680799) b!3916955))

(assert (= (and b!3916960 (not c!680799)) b!3916963))

(assert (= (and b!3916963 (not res!1584441)) b!3916956))

(assert (= (and b!3916956 res!1584437) b!3916957))

(assert (= (and b!3916957 res!1584436) b!3916953))

(assert (= (and b!3916953 res!1584435) b!3916952))

(assert (= (and b!3916956 (not res!1584434)) b!3916961))

(assert (= (and b!3916961 res!1584439) b!3916958))

(assert (= (and b!3916958 (not res!1584440)) b!3916964))

(assert (= (and b!3916964 (not res!1584438)) b!3916959))

(assert (= (or b!3916954 b!3916957 b!3916958) bm!284496))

(declare-fun m!4480543 () Bool)

(assert (=> b!3916953 m!4480543))

(assert (=> b!3916953 m!4480543))

(declare-fun m!4480545 () Bool)

(assert (=> b!3916953 m!4480545))

(declare-fun m!4480547 () Bool)

(assert (=> b!3916952 m!4480547))

(assert (=> bm!284496 m!4479691))

(assert (=> b!3916959 m!4480547))

(assert (=> b!3916965 m!4480547))

(assert (=> b!3916965 m!4480547))

(declare-fun m!4480549 () Bool)

(assert (=> b!3916965 m!4480549))

(assert (=> b!3916965 m!4480543))

(assert (=> b!3916965 m!4480549))

(assert (=> b!3916965 m!4480543))

(declare-fun m!4480551 () Bool)

(assert (=> b!3916965 m!4480551))

(assert (=> b!3916962 m!4479299))

(assert (=> d!1161951 m!4479691))

(assert (=> d!1161951 m!4479297))

(assert (=> b!3916964 m!4480543))

(assert (=> b!3916964 m!4480543))

(assert (=> b!3916964 m!4480545))

(assert (=> b!3916321 d!1161951))

(assert (=> b!3916321 d!1161749))

(assert (=> b!3916321 d!1161759))

(assert (=> b!3916321 d!1161605))

(declare-fun b!3916966 () Bool)

(declare-fun e!2421842 () Bool)

(declare-fun e!2421840 () Bool)

(assert (=> b!3916966 (= e!2421842 e!2421840)))

(declare-fun res!1584442 () Bool)

(declare-fun lt!1364759 () tuple2!40760)

(assert (=> b!3916966 (= res!1584442 (< (size!31162 (_2!23514 lt!1364759)) (size!31162 (_2!23513 (v!39206 lt!1364414)))))))

(assert (=> b!3916966 (=> (not res!1584442) (not e!2421840))))

(declare-fun b!3916967 () Bool)

(assert (=> b!3916967 (= e!2421842 (= (_2!23514 lt!1364759) (_2!23513 (v!39206 lt!1364414))))))

(declare-fun b!3916968 () Bool)

(declare-fun e!2421841 () tuple2!40760)

(assert (=> b!3916968 (= e!2421841 (tuple2!40761 Nil!41505 (_2!23513 (v!39206 lt!1364414))))))

(declare-fun b!3916969 () Bool)

(assert (=> b!3916969 (= e!2421840 (not (isEmpty!24699 (_1!23514 lt!1364759))))))

(declare-fun b!3916970 () Bool)

(declare-fun lt!1364760 () Option!8883)

(declare-fun lt!1364761 () tuple2!40760)

(assert (=> b!3916970 (= e!2421841 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364760)) (_1!23514 lt!1364761)) (_2!23514 lt!1364761)))))

(assert (=> b!3916970 (= lt!1364761 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364760))))))

(declare-fun d!1161953 () Bool)

(assert (=> d!1161953 e!2421842))

(declare-fun c!680800 () Bool)

(assert (=> d!1161953 (= c!680800 (> (size!31165 (_1!23514 lt!1364759)) 0))))

(assert (=> d!1161953 (= lt!1364759 e!2421841)))

(declare-fun c!680801 () Bool)

(assert (=> d!1161953 (= c!680801 (is-Some!8882 lt!1364760))))

(assert (=> d!1161953 (= lt!1364760 (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364414))))))

(assert (=> d!1161953 (= (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364414))) lt!1364759)))

(assert (= (and d!1161953 c!680801) b!3916970))

(assert (= (and d!1161953 (not c!680801)) b!3916968))

(assert (= (and d!1161953 c!680800) b!3916966))

(assert (= (and d!1161953 (not c!680800)) b!3916967))

(assert (= (and b!3916966 res!1584442) b!3916969))

(declare-fun m!4480553 () Bool)

(assert (=> b!3916966 m!4480553))

(declare-fun m!4480555 () Bool)

(assert (=> b!3916966 m!4480555))

(declare-fun m!4480557 () Bool)

(assert (=> b!3916969 m!4480557))

(declare-fun m!4480559 () Bool)

(assert (=> b!3916970 m!4480559))

(declare-fun m!4480561 () Bool)

(assert (=> d!1161953 m!4480561))

(declare-fun m!4480563 () Bool)

(assert (=> d!1161953 m!4480563))

(assert (=> b!3915991 d!1161953))

(declare-fun d!1161955 () Bool)

(assert (=> d!1161955 (= (isDefined!6926 lt!1364448) (not (isEmpty!24705 lt!1364448)))))

(declare-fun bs!585749 () Bool)

(assert (= bs!585749 d!1161955))

(assert (=> bs!585749 m!4479435))

(assert (=> b!3916085 d!1161955))

(declare-fun b!3916973 () Bool)

(declare-fun res!1584444 () Bool)

(declare-fun e!2421844 () Bool)

(assert (=> b!3916973 (=> (not res!1584444) (not e!2421844))))

(declare-fun lt!1364762 () List!41628)

(assert (=> b!3916973 (= res!1584444 (= (size!31162 lt!1364762) (+ (size!31162 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))) (size!31162 (_2!23513 (get!13715 lt!1364448))))))))

(declare-fun d!1161957 () Bool)

(assert (=> d!1161957 e!2421844))

(declare-fun res!1584443 () Bool)

(assert (=> d!1161957 (=> (not res!1584443) (not e!2421844))))

(assert (=> d!1161957 (= res!1584443 (= (content!6239 lt!1364762) (set.union (content!6239 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))) (content!6239 (_2!23513 (get!13715 lt!1364448))))))))

(declare-fun e!2421843 () List!41628)

(assert (=> d!1161957 (= lt!1364762 e!2421843)))

(declare-fun c!680802 () Bool)

(assert (=> d!1161957 (= c!680802 (is-Nil!41504 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))))))

(assert (=> d!1161957 (= (++!10683 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))) (_2!23513 (get!13715 lt!1364448))) lt!1364762)))

(declare-fun b!3916971 () Bool)

(assert (=> b!3916971 (= e!2421843 (_2!23513 (get!13715 lt!1364448)))))

(declare-fun b!3916972 () Bool)

(assert (=> b!3916972 (= e!2421843 (Cons!41504 (h!46924 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))) (++!10683 (t!323729 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448))))) (_2!23513 (get!13715 lt!1364448)))))))

(declare-fun b!3916974 () Bool)

(assert (=> b!3916974 (= e!2421844 (or (not (= (_2!23513 (get!13715 lt!1364448)) Nil!41504)) (= lt!1364762 (list!15430 (charsOf!4287 (_1!23513 (get!13715 lt!1364448)))))))))

(assert (= (and d!1161957 c!680802) b!3916971))

(assert (= (and d!1161957 (not c!680802)) b!3916972))

(assert (= (and d!1161957 res!1584443) b!3916973))

(assert (= (and b!3916973 res!1584444) b!3916974))

(declare-fun m!4480565 () Bool)

(assert (=> b!3916973 m!4480565))

(assert (=> b!3916973 m!4479419))

(declare-fun m!4480567 () Bool)

(assert (=> b!3916973 m!4480567))

(assert (=> b!3916973 m!4479415))

(declare-fun m!4480569 () Bool)

(assert (=> d!1161957 m!4480569))

(assert (=> d!1161957 m!4479419))

(declare-fun m!4480571 () Bool)

(assert (=> d!1161957 m!4480571))

(declare-fun m!4480573 () Bool)

(assert (=> d!1161957 m!4480573))

(declare-fun m!4480575 () Bool)

(assert (=> b!3916972 m!4480575))

(assert (=> b!3916082 d!1161957))

(assert (=> b!3916082 d!1161837))

(assert (=> b!3916082 d!1161839))

(assert (=> b!3916082 d!1161719))

(declare-fun d!1161959 () Bool)

(assert (=> d!1161959 (= (inv!55693 (tag!7323 (h!46926 (t!323731 rules!2768)))) (= (mod (str.len (value!204830 (tag!7323 (h!46926 (t!323731 rules!2768))))) 2) 0))))

(assert (=> b!3916337 d!1161959))

(declare-fun d!1161961 () Bool)

(declare-fun res!1584445 () Bool)

(declare-fun e!2421845 () Bool)

(assert (=> d!1161961 (=> (not res!1584445) (not e!2421845))))

(assert (=> d!1161961 (= res!1584445 (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toValue!8911 (transformation!6463 (h!46926 (t!323731 rules!2768))))))))

(assert (=> d!1161961 (= (inv!55697 (transformation!6463 (h!46926 (t!323731 rules!2768)))) e!2421845)))

(declare-fun b!3916975 () Bool)

(assert (=> b!3916975 (= e!2421845 (equivClasses!2677 (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toValue!8911 (transformation!6463 (h!46926 (t!323731 rules!2768))))))))

(assert (= (and d!1161961 res!1584445) b!3916975))

(declare-fun m!4480577 () Bool)

(assert (=> d!1161961 m!4480577))

(declare-fun m!4480579 () Bool)

(assert (=> b!3916975 m!4480579))

(assert (=> b!3916337 d!1161961))

(declare-fun b!3916978 () Bool)

(declare-fun res!1584447 () Bool)

(declare-fun e!2421847 () Bool)

(assert (=> b!3916978 (=> (not res!1584447) (not e!2421847))))

(declare-fun lt!1364763 () List!41628)

(assert (=> b!3916978 (= res!1584447 (= (size!31162 lt!1364763) (+ (size!31162 (t!323729 lt!1364317)) (size!31162 (_2!23513 (v!39206 lt!1364311))))))))

(declare-fun d!1161963 () Bool)

(assert (=> d!1161963 e!2421847))

(declare-fun res!1584446 () Bool)

(assert (=> d!1161963 (=> (not res!1584446) (not e!2421847))))

(assert (=> d!1161963 (= res!1584446 (= (content!6239 lt!1364763) (set.union (content!6239 (t!323729 lt!1364317)) (content!6239 (_2!23513 (v!39206 lt!1364311))))))))

(declare-fun e!2421846 () List!41628)

(assert (=> d!1161963 (= lt!1364763 e!2421846)))

(declare-fun c!680803 () Bool)

(assert (=> d!1161963 (= c!680803 (is-Nil!41504 (t!323729 lt!1364317)))))

(assert (=> d!1161963 (= (++!10683 (t!323729 lt!1364317) (_2!23513 (v!39206 lt!1364311))) lt!1364763)))

(declare-fun b!3916976 () Bool)

(assert (=> b!3916976 (= e!2421846 (_2!23513 (v!39206 lt!1364311)))))

(declare-fun b!3916977 () Bool)

(assert (=> b!3916977 (= e!2421846 (Cons!41504 (h!46924 (t!323729 lt!1364317)) (++!10683 (t!323729 (t!323729 lt!1364317)) (_2!23513 (v!39206 lt!1364311)))))))

(declare-fun b!3916979 () Bool)

(assert (=> b!3916979 (= e!2421847 (or (not (= (_2!23513 (v!39206 lt!1364311)) Nil!41504)) (= lt!1364763 (t!323729 lt!1364317))))))

(assert (= (and d!1161963 c!680803) b!3916976))

(assert (= (and d!1161963 (not c!680803)) b!3916977))

(assert (= (and d!1161963 res!1584446) b!3916978))

(assert (= (and b!3916978 res!1584447) b!3916979))

(declare-fun m!4480581 () Bool)

(assert (=> b!3916978 m!4480581))

(assert (=> b!3916978 m!4479397))

(assert (=> b!3916978 m!4479135))

(declare-fun m!4480583 () Bool)

(assert (=> d!1161963 m!4480583))

(assert (=> d!1161963 m!4479929))

(assert (=> d!1161963 m!4479365))

(declare-fun m!4480585 () Bool)

(assert (=> b!3916977 m!4480585))

(assert (=> b!3916006 d!1161963))

(declare-fun d!1161965 () Bool)

(declare-fun lt!1364764 () Int)

(assert (=> d!1161965 (>= lt!1364764 0)))

(declare-fun e!2421848 () Int)

(assert (=> d!1161965 (= lt!1364764 e!2421848)))

(declare-fun c!680804 () Bool)

(assert (=> d!1161965 (= c!680804 (is-Nil!41504 (_2!23514 lt!1364467)))))

(assert (=> d!1161965 (= (size!31162 (_2!23514 lt!1364467)) lt!1364764)))

(declare-fun b!3916980 () Bool)

(assert (=> b!3916980 (= e!2421848 0)))

(declare-fun b!3916981 () Bool)

(assert (=> b!3916981 (= e!2421848 (+ 1 (size!31162 (t!323729 (_2!23514 lt!1364467)))))))

(assert (= (and d!1161965 c!680804) b!3916980))

(assert (= (and d!1161965 (not c!680804)) b!3916981))

(declare-fun m!4480587 () Bool)

(assert (=> b!3916981 m!4480587))

(assert (=> b!3916112 d!1161965))

(assert (=> b!3916112 d!1161587))

(declare-fun d!1161967 () Bool)

(declare-fun lt!1364765 () Int)

(assert (=> d!1161967 (>= lt!1364765 0)))

(declare-fun e!2421849 () Int)

(assert (=> d!1161967 (= lt!1364765 e!2421849)))

(declare-fun c!680805 () Bool)

(assert (=> d!1161967 (= c!680805 (is-Nil!41505 lt!1364461))))

(assert (=> d!1161967 (= (size!31165 lt!1364461) lt!1364765)))

(declare-fun b!3916982 () Bool)

(assert (=> b!3916982 (= e!2421849 0)))

(declare-fun b!3916983 () Bool)

(assert (=> b!3916983 (= e!2421849 (+ 1 (size!31165 (t!323730 lt!1364461))))))

(assert (= (and d!1161967 c!680805) b!3916982))

(assert (= (and d!1161967 (not c!680805)) b!3916983))

(declare-fun m!4480589 () Bool)

(assert (=> b!3916983 m!4480589))

(assert (=> b!3916104 d!1161967))

(declare-fun d!1161969 () Bool)

(declare-fun lt!1364766 () Int)

(assert (=> d!1161969 (>= lt!1364766 0)))

(declare-fun e!2421850 () Int)

(assert (=> d!1161969 (= lt!1364766 e!2421850)))

(declare-fun c!680806 () Bool)

(assert (=> d!1161969 (= c!680806 (is-Nil!41505 prefixTokens!80))))

(assert (=> d!1161969 (= (size!31165 prefixTokens!80) lt!1364766)))

(declare-fun b!3916984 () Bool)

(assert (=> b!3916984 (= e!2421850 0)))

(declare-fun b!3916985 () Bool)

(assert (=> b!3916985 (= e!2421850 (+ 1 (size!31165 (t!323730 prefixTokens!80))))))

(assert (= (and d!1161969 c!680806) b!3916984))

(assert (= (and d!1161969 (not c!680806)) b!3916985))

(assert (=> b!3916985 m!4480451))

(assert (=> b!3916104 d!1161969))

(declare-fun d!1161971 () Bool)

(declare-fun lt!1364767 () Int)

(assert (=> d!1161971 (>= lt!1364767 0)))

(declare-fun e!2421851 () Int)

(assert (=> d!1161971 (= lt!1364767 e!2421851)))

(declare-fun c!680807 () Bool)

(assert (=> d!1161971 (= c!680807 (is-Nil!41505 suffixTokens!72))))

(assert (=> d!1161971 (= (size!31165 suffixTokens!72) lt!1364767)))

(declare-fun b!3916986 () Bool)

(assert (=> b!3916986 (= e!2421851 0)))

(declare-fun b!3916987 () Bool)

(assert (=> b!3916987 (= e!2421851 (+ 1 (size!31165 (t!323730 suffixTokens!72))))))

(assert (= (and d!1161971 c!680807) b!3916986))

(assert (= (and d!1161971 (not c!680807)) b!3916987))

(declare-fun m!4480591 () Bool)

(assert (=> b!3916987 m!4480591))

(assert (=> b!3916104 d!1161971))

(declare-fun d!1161973 () Bool)

(assert (=> d!1161973 (= (isEmpty!24701 (originalCharacters!7063 (h!46925 suffixTokens!72))) (is-Nil!41504 (originalCharacters!7063 (h!46925 suffixTokens!72))))))

(assert (=> d!1161653 d!1161973))

(declare-fun d!1161975 () Bool)

(declare-fun res!1584448 () Bool)

(declare-fun e!2421852 () Bool)

(assert (=> d!1161975 (=> (not res!1584448) (not e!2421852))))

(assert (=> d!1161975 (= res!1584448 (not (isEmpty!24701 (originalCharacters!7063 (h!46925 (t!323730 prefixTokens!80))))))))

(assert (=> d!1161975 (= (inv!55696 (h!46925 (t!323730 prefixTokens!80))) e!2421852)))

(declare-fun b!3916988 () Bool)

(declare-fun res!1584449 () Bool)

(assert (=> b!3916988 (=> (not res!1584449) (not e!2421852))))

(assert (=> b!3916988 (= res!1584449 (= (originalCharacters!7063 (h!46925 (t!323730 prefixTokens!80))) (list!15430 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (value!204831 (h!46925 (t!323730 prefixTokens!80)))))))))

(declare-fun b!3916989 () Bool)

(assert (=> b!3916989 (= e!2421852 (= (size!31161 (h!46925 (t!323730 prefixTokens!80))) (size!31162 (originalCharacters!7063 (h!46925 (t!323730 prefixTokens!80))))))))

(assert (= (and d!1161975 res!1584448) b!3916988))

(assert (= (and b!3916988 res!1584449) b!3916989))

(declare-fun b_lambda!114687 () Bool)

(assert (=> (not b_lambda!114687) (not b!3916988)))

(declare-fun t!323920 () Bool)

(declare-fun tb!233561 () Bool)

(assert (=> (and b!3916383 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323920) tb!233561))

(declare-fun b!3916990 () Bool)

(declare-fun e!2421853 () Bool)

(declare-fun tp!1192139 () Bool)

(assert (=> b!3916990 (= e!2421853 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (value!204831 (h!46925 (t!323730 prefixTokens!80)))))) tp!1192139))))

(declare-fun result!283062 () Bool)

(assert (=> tb!233561 (= result!283062 (and (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (value!204831 (h!46925 (t!323730 prefixTokens!80))))) e!2421853))))

(assert (= tb!233561 b!3916990))

(declare-fun m!4480593 () Bool)

(assert (=> b!3916990 m!4480593))

(declare-fun m!4480595 () Bool)

(assert (=> tb!233561 m!4480595))

(assert (=> b!3916988 t!323920))

(declare-fun b_and!298319 () Bool)

(assert (= b_and!298311 (and (=> t!323920 result!283062) b_and!298319)))

(declare-fun tb!233563 () Bool)

(declare-fun t!323922 () Bool)

(assert (=> (and b!3916338 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323922) tb!233563))

(declare-fun result!283064 () Bool)

(assert (= result!283064 result!283062))

(assert (=> b!3916988 t!323922))

(declare-fun b_and!298321 () Bool)

(assert (= b_and!298317 (and (=> t!323922 result!283064) b_and!298321)))

(declare-fun t!323924 () Bool)

(declare-fun tb!233565 () Bool)

(assert (=> (and b!3915820 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323924) tb!233565))

(declare-fun result!283066 () Bool)

(assert (= result!283066 result!283062))

(assert (=> b!3916988 t!323924))

(declare-fun b_and!298323 () Bool)

(assert (= b_and!298315 (and (=> t!323924 result!283066) b_and!298323)))

(declare-fun tb!233567 () Bool)

(declare-fun t!323926 () Bool)

(assert (=> (and b!3916387 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323926) tb!233567))

(declare-fun result!283068 () Bool)

(assert (= result!283068 result!283062))

(assert (=> b!3916988 t!323926))

(declare-fun b_and!298325 () Bool)

(assert (= b_and!298307 (and (=> t!323926 result!283068) b_and!298325)))

(declare-fun tb!233569 () Bool)

(declare-fun t!323928 () Bool)

(assert (=> (and b!3915811 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323928) tb!233569))

(declare-fun result!283070 () Bool)

(assert (= result!283070 result!283062))

(assert (=> b!3916988 t!323928))

(declare-fun b_and!298327 () Bool)

(assert (= b_and!298309 (and (=> t!323928 result!283070) b_and!298327)))

(declare-fun tb!233571 () Bool)

(declare-fun t!323930 () Bool)

(assert (=> (and b!3915796 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323930) tb!233571))

(declare-fun result!283072 () Bool)

(assert (= result!283072 result!283062))

(assert (=> b!3916988 t!323930))

(declare-fun b_and!298329 () Bool)

(assert (= b_and!298313 (and (=> t!323930 result!283072) b_and!298329)))

(declare-fun m!4480597 () Bool)

(assert (=> d!1161975 m!4480597))

(declare-fun m!4480599 () Bool)

(assert (=> b!3916988 m!4480599))

(assert (=> b!3916988 m!4480599))

(declare-fun m!4480601 () Bool)

(assert (=> b!3916988 m!4480601))

(declare-fun m!4480603 () Bool)

(assert (=> b!3916989 m!4480603))

(assert (=> b!3916380 d!1161975))

(declare-fun d!1161977 () Bool)

(declare-fun lt!1364768 () Int)

(assert (=> d!1161977 (>= lt!1364768 0)))

(declare-fun e!2421854 () Int)

(assert (=> d!1161977 (= lt!1364768 e!2421854)))

(declare-fun c!680808 () Bool)

(assert (=> d!1161977 (= c!680808 (is-Nil!41504 (t!323729 lt!1364304)))))

(assert (=> d!1161977 (= (size!31162 (t!323729 lt!1364304)) lt!1364768)))

(declare-fun b!3916991 () Bool)

(assert (=> b!3916991 (= e!2421854 0)))

(declare-fun b!3916992 () Bool)

(assert (=> b!3916992 (= e!2421854 (+ 1 (size!31162 (t!323729 (t!323729 lt!1364304)))))))

(assert (= (and d!1161977 c!680808) b!3916991))

(assert (= (and d!1161977 (not c!680808)) b!3916992))

(declare-fun m!4480605 () Bool)

(assert (=> b!3916992 m!4480605))

(assert (=> b!3916167 d!1161977))

(declare-fun d!1161979 () Bool)

(assert (=> d!1161979 (= (inv!55701 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))) (isBalanced!3637 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))))))

(declare-fun bs!585750 () Bool)

(assert (= bs!585750 d!1161979))

(declare-fun m!4480607 () Bool)

(assert (=> bs!585750 m!4480607))

(assert (=> tb!233399 d!1161979))

(declare-fun d!1161981 () Bool)

(assert (=> d!1161981 (= (isEmpty!24705 lt!1364518) (not (is-Some!8882 lt!1364518)))))

(assert (=> d!1161625 d!1161981))

(declare-fun d!1161983 () Bool)

(assert (=> d!1161983 (= (isEmpty!24701 (_1!23517 lt!1364515)) (is-Nil!41504 (_1!23517 lt!1364515)))))

(assert (=> d!1161625 d!1161983))

(declare-fun d!1161985 () Bool)

(declare-fun lt!1364790 () tuple2!40766)

(assert (=> d!1161985 (= (++!10683 (_1!23517 lt!1364790) (_2!23517 lt!1364790)) lt!1364304)))

(declare-fun sizeTr!248 (List!41628 Int) Int)

(assert (=> d!1161985 (= lt!1364790 (findLongestMatchInner!1239 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) Nil!41504 0 lt!1364304 lt!1364304 (sizeTr!248 lt!1364304 0)))))

(declare-fun lt!1364787 () Unit!59640)

(declare-fun lt!1364786 () Unit!59640)

(assert (=> d!1161985 (= lt!1364787 lt!1364786)))

(declare-fun lt!1364791 () List!41628)

(declare-fun lt!1364792 () Int)

(assert (=> d!1161985 (= (sizeTr!248 lt!1364791 lt!1364792) (+ (size!31162 lt!1364791) lt!1364792))))

(declare-fun lemmaSizeTrEqualsSize!247 (List!41628 Int) Unit!59640)

(assert (=> d!1161985 (= lt!1364786 (lemmaSizeTrEqualsSize!247 lt!1364791 lt!1364792))))

(assert (=> d!1161985 (= lt!1364792 0)))

(assert (=> d!1161985 (= lt!1364791 Nil!41504)))

(declare-fun lt!1364785 () Unit!59640)

(declare-fun lt!1364789 () Unit!59640)

(assert (=> d!1161985 (= lt!1364785 lt!1364789)))

(declare-fun lt!1364788 () Int)

(assert (=> d!1161985 (= (sizeTr!248 lt!1364304 lt!1364788) (+ (size!31162 lt!1364304) lt!1364788))))

(assert (=> d!1161985 (= lt!1364789 (lemmaSizeTrEqualsSize!247 lt!1364304 lt!1364788))))

(assert (=> d!1161985 (= lt!1364788 0)))

(assert (=> d!1161985 (validRegex!5177 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))))

(assert (=> d!1161985 (= (findLongestMatch!1152 (regex!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))) lt!1364304) lt!1364790)))

(declare-fun bs!585751 () Bool)

(assert (= bs!585751 d!1161985))

(declare-fun m!4480609 () Bool)

(assert (=> bs!585751 m!4480609))

(assert (=> bs!585751 m!4479125))

(declare-fun m!4480611 () Bool)

(assert (=> bs!585751 m!4480611))

(declare-fun m!4480613 () Bool)

(assert (=> bs!585751 m!4480613))

(declare-fun m!4480615 () Bool)

(assert (=> bs!585751 m!4480615))

(declare-fun m!4480617 () Bool)

(assert (=> bs!585751 m!4480617))

(assert (=> bs!585751 m!4479297))

(declare-fun m!4480619 () Bool)

(assert (=> bs!585751 m!4480619))

(declare-fun m!4480621 () Bool)

(assert (=> bs!585751 m!4480621))

(assert (=> bs!585751 m!4480611))

(declare-fun m!4480623 () Bool)

(assert (=> bs!585751 m!4480623))

(assert (=> d!1161625 d!1161985))

(assert (=> d!1161625 d!1161511))

(declare-fun b!3916993 () Bool)

(declare-fun e!2421857 () Bool)

(declare-fun e!2421855 () Bool)

(assert (=> b!3916993 (= e!2421857 e!2421855)))

(declare-fun res!1584450 () Bool)

(declare-fun lt!1364793 () tuple2!40760)

(assert (=> b!3916993 (= res!1584450 (< (size!31162 (_2!23514 lt!1364793)) (size!31162 (_2!23513 (v!39206 lt!1364468)))))))

(assert (=> b!3916993 (=> (not res!1584450) (not e!2421855))))

(declare-fun b!3916994 () Bool)

(assert (=> b!3916994 (= e!2421857 (= (_2!23514 lt!1364793) (_2!23513 (v!39206 lt!1364468))))))

(declare-fun b!3916995 () Bool)

(declare-fun e!2421856 () tuple2!40760)

(assert (=> b!3916995 (= e!2421856 (tuple2!40761 Nil!41505 (_2!23513 (v!39206 lt!1364468))))))

(declare-fun b!3916996 () Bool)

(assert (=> b!3916996 (= e!2421855 (not (isEmpty!24699 (_1!23514 lt!1364793))))))

(declare-fun b!3916997 () Bool)

(declare-fun lt!1364794 () Option!8883)

(declare-fun lt!1364795 () tuple2!40760)

(assert (=> b!3916997 (= e!2421856 (tuple2!40761 (Cons!41505 (_1!23513 (v!39206 lt!1364794)) (_1!23514 lt!1364795)) (_2!23514 lt!1364795)))))

(assert (=> b!3916997 (= lt!1364795 (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364794))))))

(declare-fun d!1161987 () Bool)

(assert (=> d!1161987 e!2421857))

(declare-fun c!680809 () Bool)

(assert (=> d!1161987 (= c!680809 (> (size!31165 (_1!23514 lt!1364793)) 0))))

(assert (=> d!1161987 (= lt!1364793 e!2421856)))

(declare-fun c!680810 () Bool)

(assert (=> d!1161987 (= c!680810 (is-Some!8882 lt!1364794))))

(assert (=> d!1161987 (= lt!1364794 (maxPrefix!3356 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364468))))))

(assert (=> d!1161987 (= (lexList!1820 thiss!20629 rules!2768 (_2!23513 (v!39206 lt!1364468))) lt!1364793)))

(assert (= (and d!1161987 c!680810) b!3916997))

(assert (= (and d!1161987 (not c!680810)) b!3916995))

(assert (= (and d!1161987 c!680809) b!3916993))

(assert (= (and d!1161987 (not c!680809)) b!3916994))

(assert (= (and b!3916993 res!1584450) b!3916996))

(declare-fun m!4480625 () Bool)

(assert (=> b!3916993 m!4480625))

(declare-fun m!4480627 () Bool)

(assert (=> b!3916993 m!4480627))

(declare-fun m!4480629 () Bool)

(assert (=> b!3916996 m!4480629))

(declare-fun m!4480631 () Bool)

(assert (=> b!3916997 m!4480631))

(declare-fun m!4480633 () Bool)

(assert (=> d!1161987 m!4480633))

(declare-fun m!4480635 () Bool)

(assert (=> d!1161987 m!4480635))

(assert (=> b!3916116 d!1161987))

(declare-fun d!1161989 () Bool)

(assert (=> d!1161989 (= (list!15430 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))) (list!15432 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))))))

(declare-fun bs!585752 () Bool)

(assert (= bs!585752 d!1161989))

(declare-fun m!4480637 () Bool)

(assert (=> bs!585752 m!4480637))

(assert (=> b!3916325 d!1161989))

(assert (=> b!3916218 d!1161769))

(declare-fun d!1161991 () Bool)

(declare-fun lt!1364796 () Int)

(assert (=> d!1161991 (>= lt!1364796 0)))

(declare-fun e!2421858 () Int)

(assert (=> d!1161991 (= lt!1364796 e!2421858)))

(declare-fun c!680811 () Bool)

(assert (=> d!1161991 (= c!680811 (is-Nil!41504 (_2!23514 lt!1364476)))))

(assert (=> d!1161991 (= (size!31162 (_2!23514 lt!1364476)) lt!1364796)))

(declare-fun b!3916998 () Bool)

(assert (=> b!3916998 (= e!2421858 0)))

(declare-fun b!3916999 () Bool)

(assert (=> b!3916999 (= e!2421858 (+ 1 (size!31162 (t!323729 (_2!23514 lt!1364476)))))))

(assert (= (and d!1161991 c!680811) b!3916998))

(assert (= (and d!1161991 (not c!680811)) b!3916999))

(declare-fun m!4480639 () Bool)

(assert (=> b!3916999 m!4480639))

(assert (=> b!3916149 d!1161991))

(assert (=> b!3916149 d!1161593))

(declare-fun d!1161993 () Bool)

(declare-fun c!680812 () Bool)

(assert (=> d!1161993 (= c!680812 (is-Nil!41504 lt!1364418))))

(declare-fun e!2421859 () (Set C!22922))

(assert (=> d!1161993 (= (content!6239 lt!1364418) e!2421859)))

(declare-fun b!3917000 () Bool)

(assert (=> b!3917000 (= e!2421859 (as set.empty (Set C!22922)))))

(declare-fun b!3917001 () Bool)

(assert (=> b!3917001 (= e!2421859 (set.union (set.insert (h!46924 lt!1364418) (as set.empty (Set C!22922))) (content!6239 (t!323729 lt!1364418))))))

(assert (= (and d!1161993 c!680812) b!3917000))

(assert (= (and d!1161993 (not c!680812)) b!3917001))

(declare-fun m!4480641 () Bool)

(assert (=> b!3917001 m!4480641))

(declare-fun m!4480643 () Bool)

(assert (=> b!3917001 m!4480643))

(assert (=> d!1161535 d!1161993))

(assert (=> d!1161535 d!1161855))

(declare-fun d!1161995 () Bool)

(declare-fun c!680813 () Bool)

(assert (=> d!1161995 (= c!680813 (is-Nil!41504 (_2!23513 (v!39206 lt!1364311))))))

(declare-fun e!2421860 () (Set C!22922))

(assert (=> d!1161995 (= (content!6239 (_2!23513 (v!39206 lt!1364311))) e!2421860)))

(declare-fun b!3917002 () Bool)

(assert (=> b!3917002 (= e!2421860 (as set.empty (Set C!22922)))))

(declare-fun b!3917003 () Bool)

(assert (=> b!3917003 (= e!2421860 (set.union (set.insert (h!46924 (_2!23513 (v!39206 lt!1364311))) (as set.empty (Set C!22922))) (content!6239 (t!323729 (_2!23513 (v!39206 lt!1364311))))))))

(assert (= (and d!1161995 c!680813) b!3917002))

(assert (= (and d!1161995 (not c!680813)) b!3917003))

(declare-fun m!4480645 () Bool)

(assert (=> b!3917003 m!4480645))

(declare-fun m!4480647 () Bool)

(assert (=> b!3917003 m!4480647))

(assert (=> d!1161535 d!1161995))

(declare-fun b!3917006 () Bool)

(declare-fun e!2421862 () Bool)

(assert (=> b!3917006 (= e!2421862 (isPrefix!3558 (tail!5996 (tail!5996 lt!1364317)) (tail!5996 (tail!5996 lt!1364302))))))

(declare-fun d!1161997 () Bool)

(declare-fun e!2421863 () Bool)

(assert (=> d!1161997 e!2421863))

(declare-fun res!1584452 () Bool)

(assert (=> d!1161997 (=> res!1584452 e!2421863)))

(declare-fun lt!1364797 () Bool)

(assert (=> d!1161997 (= res!1584452 (not lt!1364797))))

(declare-fun e!2421861 () Bool)

(assert (=> d!1161997 (= lt!1364797 e!2421861)))

(declare-fun res!1584451 () Bool)

(assert (=> d!1161997 (=> res!1584451 e!2421861)))

(assert (=> d!1161997 (= res!1584451 (is-Nil!41504 (tail!5996 lt!1364317)))))

(assert (=> d!1161997 (= (isPrefix!3558 (tail!5996 lt!1364317) (tail!5996 lt!1364302)) lt!1364797)))

(declare-fun b!3917004 () Bool)

(assert (=> b!3917004 (= e!2421861 e!2421862)))

(declare-fun res!1584454 () Bool)

(assert (=> b!3917004 (=> (not res!1584454) (not e!2421862))))

(assert (=> b!3917004 (= res!1584454 (not (is-Nil!41504 (tail!5996 lt!1364302))))))

(declare-fun b!3917007 () Bool)

(assert (=> b!3917007 (= e!2421863 (>= (size!31162 (tail!5996 lt!1364302)) (size!31162 (tail!5996 lt!1364317))))))

(declare-fun b!3917005 () Bool)

(declare-fun res!1584453 () Bool)

(assert (=> b!3917005 (=> (not res!1584453) (not e!2421862))))

(assert (=> b!3917005 (= res!1584453 (= (head!8280 (tail!5996 lt!1364317)) (head!8280 (tail!5996 lt!1364302))))))

(assert (= (and d!1161997 (not res!1584451)) b!3917004))

(assert (= (and b!3917004 res!1584454) b!3917005))

(assert (= (and b!3917005 res!1584453) b!3917006))

(assert (= (and d!1161997 (not res!1584452)) b!3917007))

(assert (=> b!3917006 m!4479307))

(assert (=> b!3917006 m!4480203))

(assert (=> b!3917006 m!4479309))

(declare-fun m!4480649 () Bool)

(assert (=> b!3917006 m!4480649))

(assert (=> b!3917006 m!4480203))

(assert (=> b!3917006 m!4480649))

(declare-fun m!4480651 () Bool)

(assert (=> b!3917006 m!4480651))

(assert (=> b!3917007 m!4479309))

(declare-fun m!4480653 () Bool)

(assert (=> b!3917007 m!4480653))

(assert (=> b!3917007 m!4479307))

(declare-fun m!4480655 () Bool)

(assert (=> b!3917007 m!4480655))

(assert (=> b!3917005 m!4479307))

(assert (=> b!3917005 m!4480207))

(assert (=> b!3917005 m!4479309))

(declare-fun m!4480657 () Bool)

(assert (=> b!3917005 m!4480657))

(assert (=> b!3915948 d!1161997))

(assert (=> b!3915948 d!1161707))

(declare-fun d!1161999 () Bool)

(assert (=> d!1161999 (= (tail!5996 lt!1364302) (t!323729 lt!1364302))))

(assert (=> b!3915948 d!1161999))

(declare-fun d!1162001 () Bool)

(declare-fun lt!1364798 () Int)

(assert (=> d!1162001 (>= lt!1364798 0)))

(declare-fun e!2421864 () Int)

(assert (=> d!1162001 (= lt!1364798 e!2421864)))

(declare-fun c!680814 () Bool)

(assert (=> d!1162001 (= c!680814 (is-Nil!41504 (t!323729 suffix!1176)))))

(assert (=> d!1162001 (= (size!31162 (t!323729 suffix!1176)) lt!1364798)))

(declare-fun b!3917008 () Bool)

(assert (=> b!3917008 (= e!2421864 0)))

(declare-fun b!3917009 () Bool)

(assert (=> b!3917009 (= e!2421864 (+ 1 (size!31162 (t!323729 (t!323729 suffix!1176)))))))

(assert (= (and d!1162001 c!680814) b!3917008))

(assert (= (and d!1162001 (not c!680814)) b!3917009))

(declare-fun m!4480659 () Bool)

(assert (=> b!3917009 m!4480659))

(assert (=> b!3916146 d!1162001))

(declare-fun d!1162003 () Bool)

(assert (=> d!1162003 (= (_2!23513 (v!39206 lt!1364311)) lt!1364314)))

(assert (=> d!1162003 true))

(declare-fun _$63!980 () Unit!59640)

(assert (=> d!1162003 (= (choose!23194 lt!1364317 (_2!23513 (v!39206 lt!1364311)) lt!1364317 lt!1364314 lt!1364304) _$63!980)))

(assert (=> d!1161519 d!1162003))

(declare-fun b!3917012 () Bool)

(declare-fun e!2421866 () Bool)

(assert (=> b!3917012 (= e!2421866 (isPrefix!3558 (tail!5996 lt!1364317) (tail!5996 lt!1364304)))))

(declare-fun d!1162005 () Bool)

(declare-fun e!2421867 () Bool)

(assert (=> d!1162005 e!2421867))

(declare-fun res!1584456 () Bool)

(assert (=> d!1162005 (=> res!1584456 e!2421867)))

(declare-fun lt!1364799 () Bool)

(assert (=> d!1162005 (= res!1584456 (not lt!1364799))))

(declare-fun e!2421865 () Bool)

(assert (=> d!1162005 (= lt!1364799 e!2421865)))

(declare-fun res!1584455 () Bool)

(assert (=> d!1162005 (=> res!1584455 e!2421865)))

(assert (=> d!1162005 (= res!1584455 (is-Nil!41504 lt!1364317))))

(assert (=> d!1162005 (= (isPrefix!3558 lt!1364317 lt!1364304) lt!1364799)))

(declare-fun b!3917010 () Bool)

(assert (=> b!3917010 (= e!2421865 e!2421866)))

(declare-fun res!1584458 () Bool)

(assert (=> b!3917010 (=> (not res!1584458) (not e!2421866))))

(assert (=> b!3917010 (= res!1584458 (not (is-Nil!41504 lt!1364304)))))

(declare-fun b!3917013 () Bool)

(assert (=> b!3917013 (= e!2421867 (>= (size!31162 lt!1364304) (size!31162 lt!1364317)))))

(declare-fun b!3917011 () Bool)

(declare-fun res!1584457 () Bool)

(assert (=> b!3917011 (=> (not res!1584457) (not e!2421866))))

(assert (=> b!3917011 (= res!1584457 (= (head!8280 lt!1364317) (head!8280 lt!1364304)))))

(assert (= (and d!1162005 (not res!1584455)) b!3917010))

(assert (= (and b!3917010 res!1584458) b!3917011))

(assert (= (and b!3917011 res!1584457) b!3917012))

(assert (= (and d!1162005 (not res!1584456)) b!3917013))

(assert (=> b!3917012 m!4479307))

(assert (=> b!3917012 m!4479371))

(assert (=> b!3917012 m!4479307))

(assert (=> b!3917012 m!4479371))

(declare-fun m!4480661 () Bool)

(assert (=> b!3917012 m!4480661))

(assert (=> b!3917013 m!4479125))

(assert (=> b!3917013 m!4479171))

(assert (=> b!3917011 m!4479315))

(assert (=> b!3917011 m!4480039))

(assert (=> d!1161519 d!1162005))

(declare-fun bs!585753 () Bool)

(declare-fun d!1162007 () Bool)

(assert (= bs!585753 (and d!1162007 d!1161751)))

(declare-fun lambda!126531 () Int)

(assert (=> bs!585753 (= (and (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (= lambda!126531 lambda!126518))))

(declare-fun bs!585754 () Bool)

(assert (= bs!585754 (and d!1162007 d!1161821)))

(assert (=> bs!585754 (= (and (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))))) (= lambda!126531 lambda!126524))))

(declare-fun bs!585755 () Bool)

(assert (= bs!585755 (and d!1162007 d!1161947)))

(assert (=> bs!585755 (= (and (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))))) (= lambda!126531 lambda!126530))))

(assert (=> d!1162007 true))

(assert (=> d!1162007 (< (dynLambda!17833 order!22275 (toChars!8770 (transformation!6463 (h!46926 rules!2768)))) (dynLambda!17832 order!22273 lambda!126531))))

(assert (=> d!1162007 true))

(assert (=> d!1162007 (< (dynLambda!17831 order!22271 (toValue!8911 (transformation!6463 (h!46926 rules!2768)))) (dynLambda!17832 order!22273 lambda!126531))))

(assert (=> d!1162007 (= (semiInverseModEq!2778 (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (h!46926 rules!2768)))) (Forall!1447 lambda!126531))))

(declare-fun bs!585756 () Bool)

(assert (= bs!585756 d!1162007))

(declare-fun m!4480663 () Bool)

(assert (=> bs!585756 m!4480663))

(assert (=> d!1161509 d!1162007))

(declare-fun bs!585757 () Bool)

(declare-fun d!1162009 () Bool)

(assert (= bs!585757 (and d!1162009 d!1161901)))

(declare-fun lambda!126534 () Int)

(assert (=> bs!585757 (= lambda!126534 lambda!126528)))

(assert (=> d!1162009 true))

(declare-fun lt!1364802 () Bool)

(assert (=> d!1162009 (= lt!1364802 (rulesValidInductive!2327 thiss!20629 rules!2768))))

(assert (=> d!1162009 (= lt!1364802 (forall!8311 rules!2768 lambda!126534))))

(assert (=> d!1162009 (= (rulesValid!2512 thiss!20629 rules!2768) lt!1364802)))

(declare-fun bs!585758 () Bool)

(assert (= bs!585758 d!1162009))

(assert (=> bs!585758 m!4479441))

(declare-fun m!4480665 () Bool)

(assert (=> bs!585758 m!4480665))

(assert (=> d!1161607 d!1162009))

(assert (=> b!3915936 d!1161885))

(declare-fun tp!1192147 () Bool)

(declare-fun b!3917022 () Bool)

(declare-fun tp!1192148 () Bool)

(declare-fun e!2421873 () Bool)

(assert (=> b!3917022 (= e!2421873 (and (inv!55700 (left!31752 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))))) tp!1192148 (inv!55700 (right!32082 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))))) tp!1192147))))

(declare-fun b!3917024 () Bool)

(declare-fun e!2421872 () Bool)

(declare-fun tp!1192146 () Bool)

(assert (=> b!3917024 (= e!2421872 tp!1192146)))

(declare-fun b!3917023 () Bool)

(declare-fun inv!55708 (IArray!25353) Bool)

(assert (=> b!3917023 (= e!2421873 (and (inv!55708 (xs!15980 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))))) e!2421872))))

(assert (=> b!3916033 (= tp!1192002 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311)))))) e!2421873))))

(assert (= (and b!3916033 (is-Node!12674 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))))) b!3917022))

(assert (= b!3917023 b!3917024))

(assert (= (and b!3916033 (is-Leaf!19613 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))) (value!204831 (_1!23513 (v!39206 lt!1364311))))))) b!3917023))

(declare-fun m!4480667 () Bool)

(assert (=> b!3917022 m!4480667))

(declare-fun m!4480669 () Bool)

(assert (=> b!3917022 m!4480669))

(declare-fun m!4480671 () Bool)

(assert (=> b!3917023 m!4480671))

(assert (=> b!3916033 m!4479389))

(declare-fun b!3917025 () Bool)

(declare-fun e!2421874 () Bool)

(declare-fun tp!1192149 () Bool)

(assert (=> b!3917025 (= e!2421874 (and tp_is_empty!19707 tp!1192149))))

(assert (=> b!3916385 (= tp!1192065 e!2421874)))

(assert (= (and b!3916385 (is-Cons!41504 (originalCharacters!7063 (h!46925 (t!323730 suffixTokens!72))))) b!3917025))

(declare-fun b!3917026 () Bool)

(declare-fun e!2421875 () Bool)

(assert (=> b!3917026 (= e!2421875 tp_is_empty!19707)))

(declare-fun b!3917029 () Bool)

(declare-fun tp!1192151 () Bool)

(declare-fun tp!1192154 () Bool)

(assert (=> b!3917029 (= e!2421875 (and tp!1192151 tp!1192154))))

(assert (=> b!3916386 (= tp!1192069 e!2421875)))

(declare-fun b!3917028 () Bool)

(declare-fun tp!1192152 () Bool)

(assert (=> b!3917028 (= e!2421875 tp!1192152)))

(declare-fun b!3917027 () Bool)

(declare-fun tp!1192153 () Bool)

(declare-fun tp!1192150 () Bool)

(assert (=> b!3917027 (= e!2421875 (and tp!1192153 tp!1192150))))

(assert (= (and b!3916386 (is-ElementMatch!11368 (regex!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) b!3917026))

(assert (= (and b!3916386 (is-Concat!18062 (regex!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) b!3917027))

(assert (= (and b!3916386 (is-Star!11368 (regex!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) b!3917028))

(assert (= (and b!3916386 (is-Union!11368 (regex!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) b!3917029))

(declare-fun b!3917032 () Bool)

(declare-fun b_free!106385 () Bool)

(declare-fun b_next!107089 () Bool)

(assert (=> b!3917032 (= b_free!106385 (not b_next!107089))))

(declare-fun tb!233573 () Bool)

(declare-fun t!323932 () Bool)

(assert (=> (and b!3917032 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323932) tb!233573))

(declare-fun result!283076 () Bool)

(assert (= result!283076 result!283002))

(assert (=> d!1161751 t!323932))

(declare-fun t!323934 () Bool)

(declare-fun tb!233575 () Bool)

(assert (=> (and b!3917032 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323934) tb!233575))

(declare-fun result!283078 () Bool)

(assert (= result!283078 result!283038))

(assert (=> d!1161877 t!323934))

(declare-fun tb!233577 () Bool)

(declare-fun t!323936 () Bool)

(assert (=> (and b!3917032 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323936) tb!233577))

(declare-fun result!283080 () Bool)

(assert (= result!283080 result!282978))

(assert (=> d!1161721 t!323936))

(declare-fun t!323938 () Bool)

(declare-fun tb!233579 () Bool)

(assert (=> (and b!3917032 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323938) tb!233579))

(declare-fun result!283082 () Bool)

(assert (= result!283082 result!282866))

(assert (=> d!1161541 t!323938))

(assert (=> d!1161747 t!323932))

(declare-fun tp!1192155 () Bool)

(declare-fun b_and!298331 () Bool)

(assert (=> b!3917032 (= tp!1192155 (and (=> t!323938 result!283082) (=> t!323932 result!283076) (=> t!323934 result!283078) (=> t!323936 result!283080) b_and!298331))))

(declare-fun b_free!106387 () Bool)

(declare-fun b_next!107091 () Bool)

(assert (=> b!3917032 (= b_free!106387 (not b_next!107091))))

(declare-fun t!323940 () Bool)

(declare-fun tb!233581 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323940) tb!233581))

(declare-fun result!283084 () Bool)

(assert (= result!283084 result!283026))

(assert (=> d!1161839 t!323940))

(declare-fun tb!233583 () Bool)

(declare-fun t!323942 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323942) tb!233583))

(declare-fun result!283086 () Bool)

(assert (= result!283086 result!282874))

(assert (=> d!1161545 t!323942))

(declare-fun t!323944 () Bool)

(declare-fun tb!233585 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323944) tb!233585))

(declare-fun result!283088 () Bool)

(assert (= result!283088 result!283014))

(assert (=> d!1161751 t!323944))

(declare-fun t!323946 () Bool)

(declare-fun tb!233587 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323946) tb!233587))

(declare-fun result!283090 () Bool)

(assert (= result!283090 result!282990))

(assert (=> d!1161735 t!323946))

(declare-fun t!323948 () Bool)

(declare-fun tb!233589 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323948) tb!233589))

(declare-fun result!283092 () Bool)

(assert (= result!283092 result!283050))

(assert (=> b!3916949 t!323948))

(declare-fun t!323950 () Bool)

(declare-fun tb!233591 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323950) tb!233591))

(declare-fun result!283094 () Bool)

(assert (= result!283094 result!282882))

(assert (=> b!3916163 t!323950))

(declare-fun t!323952 () Bool)

(declare-fun tb!233593 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323952) tb!233593))

(declare-fun result!283096 () Bool)

(assert (= result!283096 result!283062))

(assert (=> b!3916988 t!323952))

(declare-fun tb!233595 () Bool)

(declare-fun t!323954 () Bool)

(assert (=> (and b!3917032 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323954) tb!233595))

(declare-fun result!283098 () Bool)

(assert (= result!283098 result!282894))

(assert (=> b!3916325 t!323954))

(declare-fun b_and!298333 () Bool)

(declare-fun tp!1192156 () Bool)

(assert (=> b!3917032 (= tp!1192156 (and (=> t!323940 result!283084) (=> t!323948 result!283092) (=> t!323946 result!283090) (=> t!323944 result!283088) (=> t!323950 result!283094) (=> t!323954 result!283098) (=> t!323942 result!283086) (=> t!323952 result!283096) b_and!298333))))

(declare-fun e!2421876 () Bool)

(assert (=> b!3917032 (= e!2421876 (and tp!1192155 tp!1192156))))

(declare-fun e!2421878 () Bool)

(declare-fun tp!1192158 () Bool)

(declare-fun b!3917031 () Bool)

(assert (=> b!3917031 (= e!2421878 (and tp!1192158 (inv!55693 (tag!7323 (h!46926 (t!323731 (t!323731 rules!2768))))) (inv!55697 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) e!2421876))))

(declare-fun b!3917030 () Bool)

(declare-fun e!2421877 () Bool)

(declare-fun tp!1192157 () Bool)

(assert (=> b!3917030 (= e!2421877 (and e!2421878 tp!1192157))))

(assert (=> b!3916336 (= tp!1192016 e!2421877)))

(assert (= b!3917031 b!3917032))

(assert (= b!3917030 b!3917031))

(assert (= (and b!3916336 (is-Cons!41506 (t!323731 (t!323731 rules!2768)))) b!3917030))

(declare-fun m!4480673 () Bool)

(assert (=> b!3917031 m!4480673))

(declare-fun m!4480675 () Bool)

(assert (=> b!3917031 m!4480675))

(declare-fun b!3917033 () Bool)

(declare-fun e!2421880 () Bool)

(assert (=> b!3917033 (= e!2421880 tp_is_empty!19707)))

(declare-fun b!3917036 () Bool)

(declare-fun tp!1192160 () Bool)

(declare-fun tp!1192163 () Bool)

(assert (=> b!3917036 (= e!2421880 (and tp!1192160 tp!1192163))))

(assert (=> b!3916367 (= tp!1192048 e!2421880)))

(declare-fun b!3917035 () Bool)

(declare-fun tp!1192161 () Bool)

(assert (=> b!3917035 (= e!2421880 tp!1192161)))

(declare-fun b!3917034 () Bool)

(declare-fun tp!1192162 () Bool)

(declare-fun tp!1192159 () Bool)

(assert (=> b!3917034 (= e!2421880 (and tp!1192162 tp!1192159))))

(assert (= (and b!3916367 (is-ElementMatch!11368 (regOne!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917033))

(assert (= (and b!3916367 (is-Concat!18062 (regOne!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917034))

(assert (= (and b!3916367 (is-Star!11368 (regOne!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917035))

(assert (= (and b!3916367 (is-Union!11368 (regOne!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917036))

(declare-fun b!3917037 () Bool)

(declare-fun e!2421881 () Bool)

(assert (=> b!3917037 (= e!2421881 tp_is_empty!19707)))

(declare-fun b!3917040 () Bool)

(declare-fun tp!1192165 () Bool)

(declare-fun tp!1192168 () Bool)

(assert (=> b!3917040 (= e!2421881 (and tp!1192165 tp!1192168))))

(assert (=> b!3916367 (= tp!1192045 e!2421881)))

(declare-fun b!3917039 () Bool)

(declare-fun tp!1192166 () Bool)

(assert (=> b!3917039 (= e!2421881 tp!1192166)))

(declare-fun b!3917038 () Bool)

(declare-fun tp!1192167 () Bool)

(declare-fun tp!1192164 () Bool)

(assert (=> b!3917038 (= e!2421881 (and tp!1192167 tp!1192164))))

(assert (= (and b!3916367 (is-ElementMatch!11368 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917037))

(assert (= (and b!3916367 (is-Concat!18062 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917038))

(assert (= (and b!3916367 (is-Star!11368 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917039))

(assert (= (and b!3916367 (is-Union!11368 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917040))

(declare-fun b!3917041 () Bool)

(declare-fun e!2421882 () Bool)

(assert (=> b!3917041 (= e!2421882 tp_is_empty!19707)))

(declare-fun b!3917044 () Bool)

(declare-fun tp!1192170 () Bool)

(declare-fun tp!1192173 () Bool)

(assert (=> b!3917044 (= e!2421882 (and tp!1192170 tp!1192173))))

(assert (=> b!3916368 (= tp!1192047 e!2421882)))

(declare-fun b!3917043 () Bool)

(declare-fun tp!1192171 () Bool)

(assert (=> b!3917043 (= e!2421882 tp!1192171)))

(declare-fun b!3917042 () Bool)

(declare-fun tp!1192172 () Bool)

(declare-fun tp!1192169 () Bool)

(assert (=> b!3917042 (= e!2421882 (and tp!1192172 tp!1192169))))

(assert (= (and b!3916368 (is-ElementMatch!11368 (reg!11697 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917041))

(assert (= (and b!3916368 (is-Concat!18062 (reg!11697 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917042))

(assert (= (and b!3916368 (is-Star!11368 (reg!11697 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917043))

(assert (= (and b!3916368 (is-Union!11368 (reg!11697 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917044))

(declare-fun tp!1192176 () Bool)

(declare-fun e!2421884 () Bool)

(declare-fun b!3917045 () Bool)

(declare-fun tp!1192175 () Bool)

(assert (=> b!3917045 (= e!2421884 (and (inv!55700 (left!31752 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))))) tp!1192176 (inv!55700 (right!32082 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))))) tp!1192175))))

(declare-fun b!3917047 () Bool)

(declare-fun e!2421883 () Bool)

(declare-fun tp!1192174 () Bool)

(assert (=> b!3917047 (= e!2421883 tp!1192174)))

(declare-fun b!3917046 () Bool)

(assert (=> b!3917046 (= e!2421884 (and (inv!55708 (xs!15980 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))))) e!2421883))))

(assert (=> b!3916327 (= tp!1192005 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72))))) e!2421884))))

(assert (= (and b!3916327 (is-Node!12674 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))))) b!3917045))

(assert (= b!3917046 b!3917047))

(assert (= (and b!3916327 (is-Leaf!19613 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (value!204831 (h!46925 suffixTokens!72)))))) b!3917046))

(declare-fun m!4480677 () Bool)

(assert (=> b!3917045 m!4480677))

(declare-fun m!4480679 () Bool)

(assert (=> b!3917045 m!4480679))

(declare-fun m!4480681 () Bool)

(assert (=> b!3917046 m!4480681))

(assert (=> b!3916327 m!4479709))

(declare-fun b!3917048 () Bool)

(declare-fun e!2421885 () Bool)

(assert (=> b!3917048 (= e!2421885 tp_is_empty!19707)))

(declare-fun b!3917051 () Bool)

(declare-fun tp!1192178 () Bool)

(declare-fun tp!1192181 () Bool)

(assert (=> b!3917051 (= e!2421885 (and tp!1192178 tp!1192181))))

(assert (=> b!3916369 (= tp!1192046 e!2421885)))

(declare-fun b!3917050 () Bool)

(declare-fun tp!1192179 () Bool)

(assert (=> b!3917050 (= e!2421885 tp!1192179)))

(declare-fun b!3917049 () Bool)

(declare-fun tp!1192180 () Bool)

(declare-fun tp!1192177 () Bool)

(assert (=> b!3917049 (= e!2421885 (and tp!1192180 tp!1192177))))

(assert (= (and b!3916369 (is-ElementMatch!11368 (regOne!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917048))

(assert (= (and b!3916369 (is-Concat!18062 (regOne!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917049))

(assert (= (and b!3916369 (is-Star!11368 (regOne!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917050))

(assert (= (and b!3916369 (is-Union!11368 (regOne!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917051))

(declare-fun b!3917052 () Bool)

(declare-fun e!2421886 () Bool)

(assert (=> b!3917052 (= e!2421886 tp_is_empty!19707)))

(declare-fun b!3917055 () Bool)

(declare-fun tp!1192183 () Bool)

(declare-fun tp!1192186 () Bool)

(assert (=> b!3917055 (= e!2421886 (and tp!1192183 tp!1192186))))

(assert (=> b!3916369 (= tp!1192049 e!2421886)))

(declare-fun b!3917054 () Bool)

(declare-fun tp!1192184 () Bool)

(assert (=> b!3917054 (= e!2421886 tp!1192184)))

(declare-fun b!3917053 () Bool)

(declare-fun tp!1192185 () Bool)

(declare-fun tp!1192182 () Bool)

(assert (=> b!3917053 (= e!2421886 (and tp!1192185 tp!1192182))))

(assert (= (and b!3916369 (is-ElementMatch!11368 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917052))

(assert (= (and b!3916369 (is-Concat!18062 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917053))

(assert (= (and b!3916369 (is-Star!11368 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917054))

(assert (= (and b!3916369 (is-Union!11368 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 suffixTokens!72)))))) b!3917055))

(declare-fun b!3917059 () Bool)

(declare-fun b_free!106389 () Bool)

(declare-fun b_next!107093 () Bool)

(assert (=> b!3917059 (= b_free!106389 (not b_next!107093))))

(declare-fun tb!233597 () Bool)

(declare-fun t!323956 () Bool)

(assert (=> (and b!3917059 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323956) tb!233597))

(declare-fun result!283100 () Bool)

(assert (= result!283100 result!283002))

(assert (=> d!1161751 t!323956))

(declare-fun t!323958 () Bool)

(declare-fun tb!233599 () Bool)

(assert (=> (and b!3917059 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323958) tb!233599))

(declare-fun result!283102 () Bool)

(assert (= result!283102 result!283038))

(assert (=> d!1161877 t!323958))

(declare-fun t!323960 () Bool)

(declare-fun tb!233601 () Bool)

(assert (=> (and b!3917059 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323960) tb!233601))

(declare-fun result!283104 () Bool)

(assert (= result!283104 result!282978))

(assert (=> d!1161721 t!323960))

(declare-fun t!323962 () Bool)

(declare-fun tb!233603 () Bool)

(assert (=> (and b!3917059 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323962) tb!233603))

(declare-fun result!283106 () Bool)

(assert (= result!283106 result!282866))

(assert (=> d!1161541 t!323962))

(assert (=> d!1161747 t!323956))

(declare-fun tp!1192189 () Bool)

(declare-fun b_and!298335 () Bool)

(assert (=> b!3917059 (= tp!1192189 (and (=> t!323962 result!283106) (=> t!323958 result!283102) (=> t!323960 result!283104) (=> t!323956 result!283100) b_and!298335))))

(declare-fun b_free!106391 () Bool)

(declare-fun b_next!107095 () Bool)

(assert (=> b!3917059 (= b_free!106391 (not b_next!107095))))

(declare-fun t!323964 () Bool)

(declare-fun tb!233605 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323964) tb!233605))

(declare-fun result!283108 () Bool)

(assert (= result!283108 result!283026))

(assert (=> d!1161839 t!323964))

(declare-fun t!323966 () Bool)

(declare-fun tb!233607 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323966) tb!233607))

(declare-fun result!283110 () Bool)

(assert (= result!283110 result!282874))

(assert (=> d!1161545 t!323966))

(declare-fun t!323968 () Bool)

(declare-fun tb!233609 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323968) tb!233609))

(declare-fun result!283112 () Bool)

(assert (= result!283112 result!283014))

(assert (=> d!1161751 t!323968))

(declare-fun tb!233611 () Bool)

(declare-fun t!323970 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323970) tb!233611))

(declare-fun result!283114 () Bool)

(assert (= result!283114 result!282990))

(assert (=> d!1161735 t!323970))

(declare-fun t!323972 () Bool)

(declare-fun tb!233613 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323972) tb!233613))

(declare-fun result!283116 () Bool)

(assert (= result!283116 result!283050))

(assert (=> b!3916949 t!323972))

(declare-fun t!323974 () Bool)

(declare-fun tb!233615 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323974) tb!233615))

(declare-fun result!283118 () Bool)

(assert (= result!283118 result!282882))

(assert (=> b!3916163 t!323974))

(declare-fun tb!233617 () Bool)

(declare-fun t!323976 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!323976) tb!233617))

(declare-fun result!283120 () Bool)

(assert (= result!283120 result!283062))

(assert (=> b!3916988 t!323976))

(declare-fun t!323978 () Bool)

(declare-fun tb!233619 () Bool)

(assert (=> (and b!3917059 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!323978) tb!233619))

(declare-fun result!283122 () Bool)

(assert (= result!283122 result!282894))

(assert (=> b!3916325 t!323978))

(declare-fun tp!1192190 () Bool)

(declare-fun b_and!298337 () Bool)

(assert (=> b!3917059 (= tp!1192190 (and (=> t!323972 result!283116) (=> t!323964 result!283108) (=> t!323968 result!283112) (=> t!323966 result!283110) (=> t!323970 result!283114) (=> t!323978 result!283122) (=> t!323976 result!283120) (=> t!323974 result!283118) b_and!298337))))

(declare-fun e!2421892 () Bool)

(assert (=> b!3917059 (= e!2421892 (and tp!1192189 tp!1192190))))

(declare-fun e!2421891 () Bool)

(declare-fun e!2421888 () Bool)

(declare-fun tp!1192188 () Bool)

(declare-fun b!3917056 () Bool)

(assert (=> b!3917056 (= e!2421891 (and (inv!55696 (h!46925 (t!323730 (t!323730 suffixTokens!72)))) e!2421888 tp!1192188))))

(assert (=> b!3916384 (= tp!1192066 e!2421891)))

(declare-fun e!2421887 () Bool)

(declare-fun b!3917058 () Bool)

(declare-fun tp!1192191 () Bool)

(assert (=> b!3917058 (= e!2421887 (and tp!1192191 (inv!55693 (tag!7323 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (inv!55697 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) e!2421892))))

(declare-fun b!3917057 () Bool)

(declare-fun tp!1192187 () Bool)

(assert (=> b!3917057 (= e!2421888 (and (inv!21 (value!204831 (h!46925 (t!323730 (t!323730 suffixTokens!72))))) e!2421887 tp!1192187))))

(assert (= b!3917058 b!3917059))

(assert (= b!3917057 b!3917058))

(assert (= b!3917056 b!3917057))

(assert (= (and b!3916384 (is-Cons!41505 (t!323730 (t!323730 suffixTokens!72)))) b!3917056))

(declare-fun m!4480683 () Bool)

(assert (=> b!3917056 m!4480683))

(declare-fun m!4480685 () Bool)

(assert (=> b!3917058 m!4480685))

(declare-fun m!4480687 () Bool)

(assert (=> b!3917058 m!4480687))

(declare-fun m!4480689 () Bool)

(assert (=> b!3917057 m!4480689))

(declare-fun b!3917060 () Bool)

(declare-fun e!2421893 () Bool)

(declare-fun tp!1192192 () Bool)

(assert (=> b!3917060 (= e!2421893 (and tp_is_empty!19707 tp!1192192))))

(assert (=> b!3916381 (= tp!1192060 e!2421893)))

(assert (= (and b!3916381 (is-Cons!41504 (originalCharacters!7063 (h!46925 (t!323730 prefixTokens!80))))) b!3917060))

(declare-fun b!3917061 () Bool)

(declare-fun e!2421894 () Bool)

(assert (=> b!3917061 (= e!2421894 tp_is_empty!19707)))

(declare-fun b!3917064 () Bool)

(declare-fun tp!1192194 () Bool)

(declare-fun tp!1192197 () Bool)

(assert (=> b!3917064 (= e!2421894 (and tp!1192194 tp!1192197))))

(assert (=> b!3916382 (= tp!1192064 e!2421894)))

(declare-fun b!3917063 () Bool)

(declare-fun tp!1192195 () Bool)

(assert (=> b!3917063 (= e!2421894 tp!1192195)))

(declare-fun b!3917062 () Bool)

(declare-fun tp!1192196 () Bool)

(declare-fun tp!1192193 () Bool)

(assert (=> b!3917062 (= e!2421894 (and tp!1192196 tp!1192193))))

(assert (= (and b!3916382 (is-ElementMatch!11368 (regex!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) b!3917061))

(assert (= (and b!3916382 (is-Concat!18062 (regex!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) b!3917062))

(assert (= (and b!3916382 (is-Star!11368 (regex!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) b!3917063))

(assert (= (and b!3916382 (is-Union!11368 (regex!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) b!3917064))

(declare-fun b!3917065 () Bool)

(declare-fun e!2421895 () Bool)

(declare-fun tp!1192198 () Bool)

(assert (=> b!3917065 (= e!2421895 (and tp_is_empty!19707 tp!1192198))))

(assert (=> b!3916364 (= tp!1192043 e!2421895)))

(assert (= (and b!3916364 (is-Cons!41504 (t!323729 (t!323729 suffixResult!91)))) b!3917065))

(declare-fun b!3917066 () Bool)

(declare-fun e!2421896 () Bool)

(assert (=> b!3917066 (= e!2421896 tp_is_empty!19707)))

(declare-fun b!3917069 () Bool)

(declare-fun tp!1192200 () Bool)

(declare-fun tp!1192203 () Bool)

(assert (=> b!3917069 (= e!2421896 (and tp!1192200 tp!1192203))))

(assert (=> b!3916361 (= tp!1192041 e!2421896)))

(declare-fun b!3917068 () Bool)

(declare-fun tp!1192201 () Bool)

(assert (=> b!3917068 (= e!2421896 tp!1192201)))

(declare-fun b!3917067 () Bool)

(declare-fun tp!1192202 () Bool)

(declare-fun tp!1192199 () Bool)

(assert (=> b!3917067 (= e!2421896 (and tp!1192202 tp!1192199))))

(assert (= (and b!3916361 (is-ElementMatch!11368 (regOne!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917066))

(assert (= (and b!3916361 (is-Concat!18062 (regOne!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917067))

(assert (= (and b!3916361 (is-Star!11368 (regOne!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917068))

(assert (= (and b!3916361 (is-Union!11368 (regOne!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917069))

(declare-fun b!3917070 () Bool)

(declare-fun e!2421897 () Bool)

(assert (=> b!3917070 (= e!2421897 tp_is_empty!19707)))

(declare-fun b!3917073 () Bool)

(declare-fun tp!1192205 () Bool)

(declare-fun tp!1192208 () Bool)

(assert (=> b!3917073 (= e!2421897 (and tp!1192205 tp!1192208))))

(assert (=> b!3916361 (= tp!1192038 e!2421897)))

(declare-fun b!3917072 () Bool)

(declare-fun tp!1192206 () Bool)

(assert (=> b!3917072 (= e!2421897 tp!1192206)))

(declare-fun b!3917071 () Bool)

(declare-fun tp!1192207 () Bool)

(declare-fun tp!1192204 () Bool)

(assert (=> b!3917071 (= e!2421897 (and tp!1192207 tp!1192204))))

(assert (= (and b!3916361 (is-ElementMatch!11368 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917070))

(assert (= (and b!3916361 (is-Concat!18062 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917071))

(assert (= (and b!3916361 (is-Star!11368 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917072))

(assert (= (and b!3916361 (is-Union!11368 (regTwo!23248 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917073))

(declare-fun b!3917074 () Bool)

(declare-fun e!2421898 () Bool)

(assert (=> b!3917074 (= e!2421898 tp_is_empty!19707)))

(declare-fun b!3917077 () Bool)

(declare-fun tp!1192210 () Bool)

(declare-fun tp!1192213 () Bool)

(assert (=> b!3917077 (= e!2421898 (and tp!1192210 tp!1192213))))

(assert (=> b!3916337 (= tp!1192017 e!2421898)))

(declare-fun b!3917076 () Bool)

(declare-fun tp!1192211 () Bool)

(assert (=> b!3917076 (= e!2421898 tp!1192211)))

(declare-fun b!3917075 () Bool)

(declare-fun tp!1192212 () Bool)

(declare-fun tp!1192209 () Bool)

(assert (=> b!3917075 (= e!2421898 (and tp!1192212 tp!1192209))))

(assert (= (and b!3916337 (is-ElementMatch!11368 (regex!6463 (h!46926 (t!323731 rules!2768))))) b!3917074))

(assert (= (and b!3916337 (is-Concat!18062 (regex!6463 (h!46926 (t!323731 rules!2768))))) b!3917075))

(assert (= (and b!3916337 (is-Star!11368 (regex!6463 (h!46926 (t!323731 rules!2768))))) b!3917076))

(assert (= (and b!3916337 (is-Union!11368 (regex!6463 (h!46926 (t!323731 rules!2768))))) b!3917077))

(declare-fun b!3917078 () Bool)

(declare-fun e!2421899 () Bool)

(assert (=> b!3917078 (= e!2421899 tp_is_empty!19707)))

(declare-fun b!3917081 () Bool)

(declare-fun tp!1192215 () Bool)

(declare-fun tp!1192218 () Bool)

(assert (=> b!3917081 (= e!2421899 (and tp!1192215 tp!1192218))))

(assert (=> b!3916362 (= tp!1192040 e!2421899)))

(declare-fun b!3917080 () Bool)

(declare-fun tp!1192216 () Bool)

(assert (=> b!3917080 (= e!2421899 tp!1192216)))

(declare-fun b!3917079 () Bool)

(declare-fun tp!1192217 () Bool)

(declare-fun tp!1192214 () Bool)

(assert (=> b!3917079 (= e!2421899 (and tp!1192217 tp!1192214))))

(assert (= (and b!3916362 (is-ElementMatch!11368 (reg!11697 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917078))

(assert (= (and b!3916362 (is-Concat!18062 (reg!11697 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917079))

(assert (= (and b!3916362 (is-Star!11368 (reg!11697 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917080))

(assert (= (and b!3916362 (is-Union!11368 (reg!11697 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917081))

(declare-fun b!3917082 () Bool)

(declare-fun e!2421900 () Bool)

(assert (=> b!3917082 (= e!2421900 tp_is_empty!19707)))

(declare-fun b!3917085 () Bool)

(declare-fun tp!1192220 () Bool)

(declare-fun tp!1192223 () Bool)

(assert (=> b!3917085 (= e!2421900 (and tp!1192220 tp!1192223))))

(assert (=> b!3916363 (= tp!1192039 e!2421900)))

(declare-fun b!3917084 () Bool)

(declare-fun tp!1192221 () Bool)

(assert (=> b!3917084 (= e!2421900 tp!1192221)))

(declare-fun b!3917083 () Bool)

(declare-fun tp!1192222 () Bool)

(declare-fun tp!1192219 () Bool)

(assert (=> b!3917083 (= e!2421900 (and tp!1192222 tp!1192219))))

(assert (= (and b!3916363 (is-ElementMatch!11368 (regOne!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917082))

(assert (= (and b!3916363 (is-Concat!18062 (regOne!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917083))

(assert (= (and b!3916363 (is-Star!11368 (regOne!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917084))

(assert (= (and b!3916363 (is-Union!11368 (regOne!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917085))

(declare-fun b!3917086 () Bool)

(declare-fun e!2421901 () Bool)

(assert (=> b!3917086 (= e!2421901 tp_is_empty!19707)))

(declare-fun b!3917089 () Bool)

(declare-fun tp!1192225 () Bool)

(declare-fun tp!1192228 () Bool)

(assert (=> b!3917089 (= e!2421901 (and tp!1192225 tp!1192228))))

(assert (=> b!3916363 (= tp!1192042 e!2421901)))

(declare-fun b!3917088 () Bool)

(declare-fun tp!1192226 () Bool)

(assert (=> b!3917088 (= e!2421901 tp!1192226)))

(declare-fun b!3917087 () Bool)

(declare-fun tp!1192227 () Bool)

(declare-fun tp!1192224 () Bool)

(assert (=> b!3917087 (= e!2421901 (and tp!1192227 tp!1192224))))

(assert (= (and b!3916363 (is-ElementMatch!11368 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917086))

(assert (= (and b!3916363 (is-Concat!18062 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917087))

(assert (= (and b!3916363 (is-Star!11368 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917088))

(assert (= (and b!3916363 (is-Union!11368 (regTwo!23249 (regex!6463 (rule!9387 (h!46925 prefixTokens!80)))))) b!3917089))

(declare-fun b!3917093 () Bool)

(declare-fun b_free!106393 () Bool)

(declare-fun b_next!107097 () Bool)

(assert (=> b!3917093 (= b_free!106393 (not b_next!107097))))

(declare-fun tb!233621 () Bool)

(declare-fun t!323980 () Bool)

(assert (=> (and b!3917093 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323980) tb!233621))

(declare-fun result!283124 () Bool)

(assert (= result!283124 result!283002))

(assert (=> d!1161751 t!323980))

(declare-fun tb!233623 () Bool)

(declare-fun t!323982 () Bool)

(assert (=> (and b!3917093 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323982) tb!233623))

(declare-fun result!283126 () Bool)

(assert (= result!283126 result!283038))

(assert (=> d!1161877 t!323982))

(declare-fun tb!233625 () Bool)

(declare-fun t!323984 () Bool)

(assert (=> (and b!3917093 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323984) tb!233625))

(declare-fun result!283128 () Bool)

(assert (= result!283128 result!282978))

(assert (=> d!1161721 t!323984))

(declare-fun t!323986 () Bool)

(declare-fun tb!233627 () Bool)

(assert (=> (and b!3917093 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323986) tb!233627))

(declare-fun result!283130 () Bool)

(assert (= result!283130 result!282866))

(assert (=> d!1161541 t!323986))

(assert (=> d!1161747 t!323980))

(declare-fun tp!1192231 () Bool)

(declare-fun b_and!298339 () Bool)

(assert (=> b!3917093 (= tp!1192231 (and (=> t!323980 result!283124) (=> t!323982 result!283126) (=> t!323986 result!283130) (=> t!323984 result!283128) b_and!298339))))

(declare-fun b_free!106395 () Bool)

(declare-fun b_next!107099 () Bool)

(assert (=> b!3917093 (= b_free!106395 (not b_next!107099))))

(declare-fun tb!233629 () Bool)

(declare-fun t!323988 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364448)))))) t!323988) tb!233629))

(declare-fun result!283132 () Bool)

(assert (= result!283132 result!283026))

(assert (=> d!1161839 t!323988))

(declare-fun tb!233631 () Bool)

(declare-fun t!323990 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323990) tb!233631))

(declare-fun result!283134 () Bool)

(assert (= result!283134 result!282874))

(assert (=> d!1161545 t!323990))

(declare-fun t!323992 () Bool)

(declare-fun tb!233633 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311)))))) t!323992) tb!233633))

(declare-fun result!283136 () Bool)

(assert (= result!283136 result!283014))

(assert (=> d!1161751 t!323992))

(declare-fun tb!233635 () Bool)

(declare-fun t!323994 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (get!13715 lt!1364518)))))) t!323994) tb!233635))

(declare-fun result!283138 () Bool)

(assert (= result!283138 result!282990))

(assert (=> d!1161735 t!323994))

(declare-fun t!323996 () Bool)

(declare-fun tb!233637 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72)))))) t!323996) tb!233637))

(declare-fun result!283140 () Bool)

(assert (= result!283140 result!283050))

(assert (=> b!3916949 t!323996))

(declare-fun t!323998 () Bool)

(declare-fun tb!233639 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80))))) t!323998) tb!233639))

(declare-fun result!283142 () Bool)

(assert (= result!283142 result!282882))

(assert (=> b!3916163 t!323998))

(declare-fun t!324000 () Bool)

(declare-fun tb!233641 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80)))))) t!324000) tb!233641))

(declare-fun result!283144 () Bool)

(assert (= result!283144 result!283062))

(assert (=> b!3916988 t!324000))

(declare-fun tb!233643 () Bool)

(declare-fun t!324002 () Bool)

(assert (=> (and b!3917093 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72))))) t!324002) tb!233643))

(declare-fun result!283146 () Bool)

(assert (= result!283146 result!282894))

(assert (=> b!3916325 t!324002))

(declare-fun b_and!298341 () Bool)

(declare-fun tp!1192232 () Bool)

(assert (=> b!3917093 (= tp!1192232 (and (=> t!323988 result!283132) (=> t!323992 result!283136) (=> t!323996 result!283140) (=> t!324002 result!283146) (=> t!323990 result!283134) (=> t!323994 result!283138) (=> t!323998 result!283142) (=> t!324000 result!283144) b_and!298341))))

(declare-fun e!2421907 () Bool)

(assert (=> b!3917093 (= e!2421907 (and tp!1192231 tp!1192232))))

(declare-fun e!2421906 () Bool)

(declare-fun tp!1192230 () Bool)

(declare-fun b!3917090 () Bool)

(declare-fun e!2421903 () Bool)

(assert (=> b!3917090 (= e!2421906 (and (inv!55696 (h!46925 (t!323730 (t!323730 prefixTokens!80)))) e!2421903 tp!1192230))))

(assert (=> b!3916380 (= tp!1192061 e!2421906)))

(declare-fun e!2421902 () Bool)

(declare-fun tp!1192233 () Bool)

(declare-fun b!3917092 () Bool)

(assert (=> b!3917092 (= e!2421902 (and tp!1192233 (inv!55693 (tag!7323 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (inv!55697 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) e!2421907))))

(declare-fun tp!1192229 () Bool)

(declare-fun b!3917091 () Bool)

(assert (=> b!3917091 (= e!2421903 (and (inv!21 (value!204831 (h!46925 (t!323730 (t!323730 prefixTokens!80))))) e!2421902 tp!1192229))))

(assert (= b!3917092 b!3917093))

(assert (= b!3917091 b!3917092))

(assert (= b!3917090 b!3917091))

(assert (= (and b!3916380 (is-Cons!41505 (t!323730 (t!323730 prefixTokens!80)))) b!3917090))

(declare-fun m!4480691 () Bool)

(assert (=> b!3917090 m!4480691))

(declare-fun m!4480693 () Bool)

(assert (=> b!3917092 m!4480693))

(declare-fun m!4480695 () Bool)

(assert (=> b!3917092 m!4480695))

(declare-fun m!4480697 () Bool)

(assert (=> b!3917091 m!4480697))

(declare-fun b!3917094 () Bool)

(declare-fun e!2421908 () Bool)

(declare-fun tp!1192234 () Bool)

(assert (=> b!3917094 (= e!2421908 (and tp_is_empty!19707 tp!1192234))))

(assert (=> b!3916365 (= tp!1192044 e!2421908)))

(assert (= (and b!3916365 (is-Cons!41504 (t!323729 (originalCharacters!7063 (h!46925 prefixTokens!80))))) b!3917094))

(declare-fun b!3917095 () Bool)

(declare-fun e!2421909 () Bool)

(declare-fun tp!1192235 () Bool)

(assert (=> b!3917095 (= e!2421909 (and tp_is_empty!19707 tp!1192235))))

(assert (=> b!3916358 (= tp!1192036 e!2421909)))

(assert (= (and b!3916358 (is-Cons!41504 (t!323729 (t!323729 prefix!426)))) b!3917095))

(declare-fun b!3917096 () Bool)

(declare-fun e!2421910 () Bool)

(declare-fun tp!1192236 () Bool)

(assert (=> b!3917096 (= e!2421910 (and tp_is_empty!19707 tp!1192236))))

(assert (=> b!3916357 (= tp!1192035 e!2421910)))

(assert (= (and b!3916357 (is-Cons!41504 (t!323729 (t!323729 suffix!1176)))) b!3917096))

(declare-fun b!3917097 () Bool)

(declare-fun e!2421911 () Bool)

(declare-fun tp!1192237 () Bool)

(assert (=> b!3917097 (= e!2421911 (and tp_is_empty!19707 tp!1192237))))

(assert (=> b!3916359 (= tp!1192037 e!2421911)))

(assert (= (and b!3916359 (is-Cons!41504 (t!323729 (originalCharacters!7063 (h!46925 suffixTokens!72))))) b!3917097))

(declare-fun b!3917098 () Bool)

(declare-fun e!2421912 () Bool)

(assert (=> b!3917098 (= e!2421912 tp_is_empty!19707)))

(declare-fun b!3917101 () Bool)

(declare-fun tp!1192239 () Bool)

(declare-fun tp!1192242 () Bool)

(assert (=> b!3917101 (= e!2421912 (and tp!1192239 tp!1192242))))

(assert (=> b!3916352 (= tp!1192029 e!2421912)))

(declare-fun b!3917100 () Bool)

(declare-fun tp!1192240 () Bool)

(assert (=> b!3917100 (= e!2421912 tp!1192240)))

(declare-fun b!3917099 () Bool)

(declare-fun tp!1192241 () Bool)

(declare-fun tp!1192238 () Bool)

(assert (=> b!3917099 (= e!2421912 (and tp!1192241 tp!1192238))))

(assert (= (and b!3916352 (is-ElementMatch!11368 (regOne!23249 (regex!6463 (h!46926 rules!2768))))) b!3917098))

(assert (= (and b!3916352 (is-Concat!18062 (regOne!23249 (regex!6463 (h!46926 rules!2768))))) b!3917099))

(assert (= (and b!3916352 (is-Star!11368 (regOne!23249 (regex!6463 (h!46926 rules!2768))))) b!3917100))

(assert (= (and b!3916352 (is-Union!11368 (regOne!23249 (regex!6463 (h!46926 rules!2768))))) b!3917101))

(declare-fun b!3917102 () Bool)

(declare-fun e!2421913 () Bool)

(assert (=> b!3917102 (= e!2421913 tp_is_empty!19707)))

(declare-fun b!3917105 () Bool)

(declare-fun tp!1192244 () Bool)

(declare-fun tp!1192247 () Bool)

(assert (=> b!3917105 (= e!2421913 (and tp!1192244 tp!1192247))))

(assert (=> b!3916352 (= tp!1192032 e!2421913)))

(declare-fun b!3917104 () Bool)

(declare-fun tp!1192245 () Bool)

(assert (=> b!3917104 (= e!2421913 tp!1192245)))

(declare-fun b!3917103 () Bool)

(declare-fun tp!1192246 () Bool)

(declare-fun tp!1192243 () Bool)

(assert (=> b!3917103 (= e!2421913 (and tp!1192246 tp!1192243))))

(assert (= (and b!3916352 (is-ElementMatch!11368 (regTwo!23249 (regex!6463 (h!46926 rules!2768))))) b!3917102))

(assert (= (and b!3916352 (is-Concat!18062 (regTwo!23249 (regex!6463 (h!46926 rules!2768))))) b!3917103))

(assert (= (and b!3916352 (is-Star!11368 (regTwo!23249 (regex!6463 (h!46926 rules!2768))))) b!3917104))

(assert (= (and b!3916352 (is-Union!11368 (regTwo!23249 (regex!6463 (h!46926 rules!2768))))) b!3917105))

(declare-fun tp!1192249 () Bool)

(declare-fun b!3917106 () Bool)

(declare-fun tp!1192250 () Bool)

(declare-fun e!2421915 () Bool)

(assert (=> b!3917106 (= e!2421915 (and (inv!55700 (left!31752 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))))) tp!1192250 (inv!55700 (right!32082 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))))) tp!1192249))))

(declare-fun b!3917108 () Bool)

(declare-fun e!2421914 () Bool)

(declare-fun tp!1192248 () Bool)

(assert (=> b!3917108 (= e!2421914 tp!1192248)))

(declare-fun b!3917107 () Bool)

(assert (=> b!3917107 (= e!2421915 (and (inv!55708 (xs!15980 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))))) e!2421914))))

(assert (=> b!3916165 (= tp!1192003 (and (inv!55700 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80))))) e!2421915))))

(assert (= (and b!3916165 (is-Node!12674 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))))) b!3917106))

(assert (= b!3917107 b!3917108))

(assert (= (and b!3916165 (is-Leaf!19613 (c!680556 (dynLambda!17828 (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (value!204831 (h!46925 prefixTokens!80)))))) b!3917107))

(declare-fun m!4480699 () Bool)

(assert (=> b!3917106 m!4480699))

(declare-fun m!4480701 () Bool)

(assert (=> b!3917106 m!4480701))

(declare-fun m!4480703 () Bool)

(assert (=> b!3917107 m!4480703))

(assert (=> b!3916165 m!4479541))

(declare-fun b!3917109 () Bool)

(declare-fun e!2421916 () Bool)

(assert (=> b!3917109 (= e!2421916 tp_is_empty!19707)))

(declare-fun b!3917112 () Bool)

(declare-fun tp!1192252 () Bool)

(declare-fun tp!1192255 () Bool)

(assert (=> b!3917112 (= e!2421916 (and tp!1192252 tp!1192255))))

(assert (=> b!3916350 (= tp!1192031 e!2421916)))

(declare-fun b!3917111 () Bool)

(declare-fun tp!1192253 () Bool)

(assert (=> b!3917111 (= e!2421916 tp!1192253)))

(declare-fun b!3917110 () Bool)

(declare-fun tp!1192254 () Bool)

(declare-fun tp!1192251 () Bool)

(assert (=> b!3917110 (= e!2421916 (and tp!1192254 tp!1192251))))

(assert (= (and b!3916350 (is-ElementMatch!11368 (regOne!23248 (regex!6463 (h!46926 rules!2768))))) b!3917109))

(assert (= (and b!3916350 (is-Concat!18062 (regOne!23248 (regex!6463 (h!46926 rules!2768))))) b!3917110))

(assert (= (and b!3916350 (is-Star!11368 (regOne!23248 (regex!6463 (h!46926 rules!2768))))) b!3917111))

(assert (= (and b!3916350 (is-Union!11368 (regOne!23248 (regex!6463 (h!46926 rules!2768))))) b!3917112))

(declare-fun b!3917113 () Bool)

(declare-fun e!2421917 () Bool)

(assert (=> b!3917113 (= e!2421917 tp_is_empty!19707)))

(declare-fun b!3917116 () Bool)

(declare-fun tp!1192257 () Bool)

(declare-fun tp!1192260 () Bool)

(assert (=> b!3917116 (= e!2421917 (and tp!1192257 tp!1192260))))

(assert (=> b!3916350 (= tp!1192028 e!2421917)))

(declare-fun b!3917115 () Bool)

(declare-fun tp!1192258 () Bool)

(assert (=> b!3917115 (= e!2421917 tp!1192258)))

(declare-fun b!3917114 () Bool)

(declare-fun tp!1192259 () Bool)

(declare-fun tp!1192256 () Bool)

(assert (=> b!3917114 (= e!2421917 (and tp!1192259 tp!1192256))))

(assert (= (and b!3916350 (is-ElementMatch!11368 (regTwo!23248 (regex!6463 (h!46926 rules!2768))))) b!3917113))

(assert (= (and b!3916350 (is-Concat!18062 (regTwo!23248 (regex!6463 (h!46926 rules!2768))))) b!3917114))

(assert (= (and b!3916350 (is-Star!11368 (regTwo!23248 (regex!6463 (h!46926 rules!2768))))) b!3917115))

(assert (= (and b!3916350 (is-Union!11368 (regTwo!23248 (regex!6463 (h!46926 rules!2768))))) b!3917116))

(declare-fun b!3917117 () Bool)

(declare-fun e!2421918 () Bool)

(assert (=> b!3917117 (= e!2421918 tp_is_empty!19707)))

(declare-fun b!3917120 () Bool)

(declare-fun tp!1192262 () Bool)

(declare-fun tp!1192265 () Bool)

(assert (=> b!3917120 (= e!2421918 (and tp!1192262 tp!1192265))))

(assert (=> b!3916351 (= tp!1192030 e!2421918)))

(declare-fun b!3917119 () Bool)

(declare-fun tp!1192263 () Bool)

(assert (=> b!3917119 (= e!2421918 tp!1192263)))

(declare-fun b!3917118 () Bool)

(declare-fun tp!1192264 () Bool)

(declare-fun tp!1192261 () Bool)

(assert (=> b!3917118 (= e!2421918 (and tp!1192264 tp!1192261))))

(assert (= (and b!3916351 (is-ElementMatch!11368 (reg!11697 (regex!6463 (h!46926 rules!2768))))) b!3917117))

(assert (= (and b!3916351 (is-Concat!18062 (reg!11697 (regex!6463 (h!46926 rules!2768))))) b!3917118))

(assert (= (and b!3916351 (is-Star!11368 (reg!11697 (regex!6463 (h!46926 rules!2768))))) b!3917119))

(assert (= (and b!3916351 (is-Union!11368 (reg!11697 (regex!6463 (h!46926 rules!2768))))) b!3917120))

(declare-fun b_lambda!114689 () Bool)

(assert (= b_lambda!114687 (or (and b!3917032 b_free!106387 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) (and b!3916387 b_free!106371 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) (and b!3915796 b_free!106347 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) (and b!3917093 b_free!106395 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) (and b!3917059 b_free!106391 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) (and b!3915811 b_free!106339 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) (and b!3916338 b_free!106363 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) (and b!3916383 b_free!106367) (and b!3915820 b_free!106343 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))))) b_lambda!114689)))

(declare-fun b_lambda!114691 () Bool)

(assert (= b_lambda!114649 (or (and b!3917093 b_free!106393 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3916383 b_free!106365 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3916387 b_free!106369 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3916338 b_free!106361 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3917059 b_free!106389 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3915796 b_free!106345 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3915820 b_free!106341 (= (toValue!8911 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3915811 b_free!106337 (= (toValue!8911 (transformation!6463 (h!46926 rules!2768))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3917032 b_free!106385 (= (toValue!8911 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toValue!8911 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) b_lambda!114691)))

(declare-fun b_lambda!114693 () Bool)

(assert (= b_lambda!114685 (or (and b!3917032 b_free!106387 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) (and b!3916338 b_free!106363 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) (and b!3917093 b_free!106395 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) (and b!3916383 b_free!106367 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) (and b!3917059 b_free!106391 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) (and b!3915820 b_free!106343 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) (and b!3915811 b_free!106339 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) (and b!3916387 b_free!106371) (and b!3915796 b_free!106347 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))))) b_lambda!114693)))

(declare-fun b_lambda!114695 () Bool)

(assert (= b_lambda!114651 (or (and b!3916387 b_free!106371 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 suffixTokens!72))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3916383 b_free!106367 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 prefixTokens!80))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3915811 b_free!106339 (= (toChars!8770 (transformation!6463 (h!46926 rules!2768))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3917093 b_free!106395 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 prefixTokens!80)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3917032 b_free!106387 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 (t!323731 rules!2768))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3915796 b_free!106347 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 suffixTokens!72)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3916338 b_free!106363 (= (toChars!8770 (transformation!6463 (h!46926 (t!323731 rules!2768)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3915820 b_free!106343 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 prefixTokens!80)))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) (and b!3917059 b_free!106391 (= (toChars!8770 (transformation!6463 (rule!9387 (h!46925 (t!323730 (t!323730 suffixTokens!72)))))) (toChars!8770 (transformation!6463 (rule!9387 (_1!23513 (v!39206 lt!1364311))))))) b_lambda!114695)))

(push 1)

(assert (not b!3916953))

(assert (not bm!284468))

(assert (not b!3916999))

(assert (not b!3916554))

(assert (not b!3917058))

(assert (not b!3916795))

(assert (not b!3917112))

(assert (not b_next!107071))

(assert (not d!1161907))

(assert (not b!3916693))

(assert (not d!1161879))

(assert (not b!3916965))

(assert (not b!3916975))

(assert (not b_lambda!114681))

(assert (not bm!284460))

(assert (not b!3917030))

(assert (not b_lambda!114661))

(assert (not b!3916832))

(assert (not b!3916996))

(assert (not b!3916854))

(assert (not b!3916553))

(assert (not b_next!107095))

(assert (not b!3916988))

(assert (not b!3917088))

(assert (not b!3916599))

(assert (not b!3916783))

(assert (not b!3917003))

(assert (not d!1161985))

(assert (not b!3917087))

(assert (not b!3916870))

(assert (not b_next!107065))

(assert (not b!3916884))

(assert (not b!3917001))

(assert (not b_lambda!114689))

(assert (not d!1161961))

(assert (not b!3917115))

(assert (not d!1161725))

(assert (not b!3916930))

(assert (not b!3917035))

(assert (not b!3917111))

(assert (not b_next!107097))

(assert (not b!3916794))

(assert (not b!3917090))

(assert (not b!3916792))

(assert (not b!3917036))

(assert (not d!1161775))

(assert (not b!3916670))

(assert (not b!3916663))

(assert (not d!1161867))

(assert (not b!3916972))

(assert (not b!3916658))

(assert (not b!3916843))

(assert (not b_next!107089))

(assert (not d!1161777))

(assert (not b!3916864))

(assert (not bm!284493))

(assert (not b!3917110))

(assert (not d!1161807))

(assert b_and!298329)

(assert (not b!3917064))

(assert (not b!3916940))

(assert (not b!3917072))

(assert (not b!3917085))

(assert (not b!3917039))

(assert (not b!3916858))

(assert b_and!298333)

(assert (not d!1161979))

(assert (not b!3916729))

(assert (not b!3916876))

(assert (not tb!233501))

(assert (not b!3917095))

(assert b_and!298297)

(assert (not b!3916993))

(assert b_and!298341)

(assert (not b!3916891))

(assert (not d!1161859))

(assert (not b!3917101))

(assert (not d!1161815))

(assert (not b!3916946))

(assert (not b!3916640))

(assert (not d!1161749))

(assert (not b!3917051))

(assert (not b!3916803))

(assert (not b!3917089))

(assert b_and!298327)

(assert (not b_next!107093))

(assert (not d!1161883))

(assert (not b!3916919))

(assert (not d!1161723))

(assert (not d!1161833))

(assert (not b!3916882))

(assert (not b!3916841))

(assert (not tb!233477))

(assert (not b!3917023))

(assert (not b!3916797))

(assert (not b!3916850))

(assert (not d!1161821))

(assert (not b!3916560))

(assert (not b!3916873))

(assert (not b!3916714))

(assert (not bm!284490))

(assert (not b!3917040))

(assert (not b!3917104))

(assert (not b_next!107069))

(assert (not d!1161715))

(assert (not b!3917013))

(assert (not b_next!107099))

(assert (not b!3916949))

(assert (not b!3916774))

(assert (not b!3916809))

(assert (not b_next!107051))

(assert (not b!3916836))

(assert (not b!3916869))

(assert (not b!3917083))

(assert (not b!3916867))

(assert (not b!3917084))

(assert (not d!1161831))

(assert (not d!1161811))

(assert (not d!1161953))

(assert (not b!3916666))

(assert (not b!3916595))

(assert (not b!3917106))

(assert (not b!3916959))

(assert (not b!3916563))

(assert (not d!1161751))

(assert (not b!3916822))

(assert (not b_next!107045))

(assert (not d!1161887))

(assert (not b!3916938))

(assert (not b!3916951))

(assert (not b!3916874))

(assert (not b!3916892))

(assert (not d!1161947))

(assert (not d!1161901))

(assert (not b!3916750))

(assert (not b!3916908))

(assert (not b!3916581))

(assert (not b!3916799))

(assert (not d!1161911))

(assert (not b!3916966))

(assert (not b!3916989))

(assert (not b_lambda!114677))

(assert (not b_next!107041))

(assert (not b!3916751))

(assert (not b!3916589))

(assert (not b!3916814))

(assert (not b!3916826))

(assert (not b!3916801))

(assert (not b!3916802))

(assert (not b!3916932))

(assert (not d!1161963))

(assert (not b!3916720))

(assert (not d!1161917))

(assert (not b!3916725))

(assert (not tb!233489))

(assert (not b_lambda!114659))

(assert (not b!3916964))

(assert (not b!3917096))

(assert (not b!3916800))

(assert tp_is_empty!19707)

(assert (not b!3916997))

(assert (not d!1161957))

(assert (not b!3916927))

(assert (not bm!284476))

(assert (not b!3916942))

(assert (not b!3916962))

(assert (not d!1161731))

(assert (not b!3917042))

(assert (not b!3917108))

(assert (not b!3916575))

(assert (not d!1161987))

(assert (not b!3916668))

(assert (not b!3916815))

(assert (not b!3917049))

(assert (not b!3916793))

(assert (not d!1161809))

(assert (not b!3916948))

(assert (not b!3917077))

(assert (not b!3917038))

(assert (not b!3917068))

(assert (not d!1161839))

(assert b_and!298301)

(assert (not b!3916564))

(assert (not b!3917047))

(assert (not d!1161885))

(assert (not b!3916952))

(assert (not b_lambda!114675))

(assert (not d!1161713))

(assert (not b!3917050))

(assert (not b!3916674))

(assert (not b!3916571))

(assert (not b!3917114))

(assert (not b!3916033))

(assert (not b!3916857))

(assert (not bm!284492))

(assert (not b!3916905))

(assert (not bm!284478))

(assert (not b!3917079))

(assert (not b_lambda!114671))

(assert (not bm!284466))

(assert (not b!3916739))

(assert (not b!3916931))

(assert (not d!1161733))

(assert (not b!3917120))

(assert (not b!3917028))

(assert (not d!1161975))

(assert (not d!1161703))

(assert (not d!1161891))

(assert (not b!3916856))

(assert (not b_next!107067))

(assert (not b!3916973))

(assert (not d!1161899))

(assert (not b!3916716))

(assert (not d!1161797))

(assert b_and!298299)

(assert (not b!3916923))

(assert (not d!1161925))

(assert b_and!298295)

(assert (not b!3916731))

(assert (not b!3916950))

(assert (not b!3916875))

(assert (not b!3916732))

(assert (not b!3917022))

(assert (not b!3916831))

(assert (not b!3917081))

(assert (not bm!284463))

(assert (not tb!233525))

(assert (not b!3916977))

(assert (not b!3916165))

(assert (not b!3917073))

(assert (not b!3916886))

(assert (not b!3917080))

(assert (not b!3917099))

(assert (not b!3917027))

(assert (not b!3916913))

(assert (not b!3917060))

(assert (not bm!284464))

(assert (not b!3916936))

(assert (not bm!284467))

(assert (not b!3917043))

(assert (not d!1161881))

(assert (not b!3917069))

(assert (not b!3916796))

(assert (not b!3916634))

(assert (not b!3916652))

(assert (not b_next!107043))

(assert (not b!3917116))

(assert (not b!3916710))

(assert (not b!3916573))

(assert (not b!3916912))

(assert (not b!3917024))

(assert (not b!3917103))

(assert (not b!3916853))

(assert (not b!3916552))

(assert b_and!298325)

(assert (not b!3916944))

(assert (not b!3916737))

(assert b_and!298335)

(assert (not tb!233561))

(assert (not b!3916580))

(assert (not b_next!107091))

(assert (not b!3916578))

(assert (not b!3916985))

(assert (not b!3916659))

(assert (not b_next!107073))

(assert (not b!3917056))

(assert (not b!3916583))

(assert (not d!1161989))

(assert (not b!3917046))

(assert (not b!3916928))

(assert (not b!3916790))

(assert (not b!3917045))

(assert (not b!3916632))

(assert (not b!3917065))

(assert (not d!1161827))

(assert (not d!1161955))

(assert (not b!3916667))

(assert (not b_lambda!114691))

(assert (not b!3916712))

(assert (not b!3916983))

(assert (not b!3916735))

(assert (not tb!233513))

(assert (not bm!284494))

(assert b_and!298337)

(assert (not b!3917071))

(assert b_and!298331)

(assert (not b!3916925))

(assert (not b!3916723))

(assert (not b!3917075))

(assert (not d!1161781))

(assert (not b!3916730))

(assert (not b!3916669))

(assert (not b!3917031))

(assert (not bm!284475))

(assert (not b!3917118))

(assert (not d!1161951))

(assert (not b!3916727))

(assert (not b!3916789))

(assert (not b!3916906))

(assert (not bm!284496))

(assert (not b!3917107))

(assert (not d!1161763))

(assert b_and!298323)

(assert (not b_lambda!114693))

(assert (not d!1161755))

(assert (not b!3916981))

(assert (not b!3916559))

(assert b_and!298321)

(assert (not d!1161761))

(assert (not b!3916708))

(assert (not b!3917053))

(assert (not b!3916665))

(assert (not b!3916327))

(assert b_and!298319)

(assert (not b!3917097))

(assert (not b_lambda!114679))

(assert (not b!3916548))

(assert (not b!3917057))

(assert (not b!3916838))

(assert (not b!3917044))

(assert (not b!3916934))

(assert (not d!1161851))

(assert (not d!1161739))

(assert (not b!3916847))

(assert (not b!3917009))

(assert (not d!1162009))

(assert (not b!3917025))

(assert (not b_lambda!114695))

(assert (not b!3916924))

(assert (not b!3917029))

(assert (not b!3916717))

(assert (not b!3916549))

(assert (not b!3916816))

(assert (not b!3916745))

(assert (not b!3916880))

(assert (not d!1161949))

(assert (not b!3917063))

(assert (not bm!284465))

(assert (not b!3916574))

(assert (not b!3916992))

(assert (not b!3916721))

(assert (not d!1161837))

(assert (not b!3917091))

(assert (not bm!284461))

(assert (not b!3916736))

(assert (not b!3916978))

(assert (not b!3916557))

(assert (not d!1161835))

(assert (not b!3916824))

(assert (not b!3916921))

(assert (not d!1162007))

(assert (not b!3916879))

(assert (not d!1161735))

(assert (not d!1161869))

(assert (not b_next!107047))

(assert (not b_lambda!114683))

(assert (not b!3916970))

(assert (not b!3917105))

(assert (not b!3916885))

(assert (not b!3916845))

(assert (not b!3917005))

(assert (not b!3916629))

(assert (not bm!284495))

(assert (not b!3916909))

(assert (not b!3916990))

(assert (not d!1161787))

(assert (not b!3916834))

(assert (not b_lambda!114673))

(assert b_and!298305)

(assert (not b!3916728))

(assert (not b!3917094))

(assert (not b!3917119))

(assert (not d!1161819))

(assert b_and!298303)

(assert (not b!3916748))

(assert (not b_next!107049))

(assert (not d!1161927))

(assert (not b!3916871))

(assert (not d!1161757))

(assert (not b!3917092))

(assert (not b!3917011))

(assert (not b!3916647))

(assert (not b!3916877))

(assert (not b!3916926))

(assert (not d!1161803))

(assert (not bm!284462))

(assert (not d!1161873))

(assert (not d!1161929))

(assert (not bm!284488))

(assert (not tb!233549))

(assert (not b!3916597))

(assert (not b!3916660))

(assert (not b!3916672))

(assert (not b!3917076))

(assert (not d!1161793))

(assert (not b!3917100))

(assert (not b_next!107075))

(assert (not d!1161789))

(assert (not b!3916878))

(assert (not b!3916917))

(assert (not b!3917034))

(assert (not b!3916848))

(assert (not b!3916650))

(assert (not b!3916734))

(assert (not b!3917062))

(assert b_and!298339)

(assert (not b!3916916))

(assert (not b!3916673))

(assert (not tb!233537))

(assert (not b!3916812))

(assert (not b!3917054))

(assert (not b!3917006))

(assert (not b!3916738))

(assert (not b!3917007))

(assert (not bm!284479))

(assert (not b!3916969))

(assert (not b!3917055))

(assert (not b!3917067))

(assert (not b!3917012))

(assert (not b!3916722))

(assert (not b!3916987))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!107071))

(assert (not b_next!107097))

(assert (not b_next!107089))

(assert b_and!298341)

(assert (not b_next!107069))

(assert (not b_next!107045))

(assert (not b_next!107041))

(assert b_and!298301)

(assert (not b_next!107067))

(assert (not b_next!107043))

(assert (not b_next!107073))

(assert (not b_next!107047))

(assert b_and!298305)

(assert (not b_next!107075))

(assert b_and!298339)

(assert (not b_next!107095))

(assert (not b_next!107065))

(assert b_and!298329)

(assert b_and!298297)

(assert b_and!298333)

(assert (not b_next!107093))

(assert b_and!298327)

(assert (not b_next!107099))

(assert (not b_next!107051))

(assert b_and!298299)

(assert b_and!298295)

(assert (not b_next!107091))

(assert b_and!298325)

(assert b_and!298335)

(assert b_and!298337)

(assert b_and!298331)

(assert b_and!298323)

(assert b_and!298321)

(assert b_and!298319)

(assert b_and!298303)

(assert (not b_next!107049))

(check-sat)

(pop 1)

