; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373360 () Bool)

(assert start!373360)

(declare-fun b!3968148 () Bool)

(declare-fun b_free!109749 () Bool)

(declare-fun b_next!110453 () Bool)

(assert (=> b!3968148 (= b_free!109749 (not b_next!110453))))

(declare-fun tp!1209328 () Bool)

(declare-fun b_and!304939 () Bool)

(assert (=> b!3968148 (= tp!1209328 b_and!304939)))

(declare-fun b_free!109751 () Bool)

(declare-fun b_next!110455 () Bool)

(assert (=> b!3968148 (= b_free!109751 (not b_next!110455))))

(declare-fun tp!1209334 () Bool)

(declare-fun b_and!304941 () Bool)

(assert (=> b!3968148 (= tp!1209334 b_and!304941)))

(declare-fun b!3968134 () Bool)

(declare-fun b_free!109753 () Bool)

(declare-fun b_next!110457 () Bool)

(assert (=> b!3968134 (= b_free!109753 (not b_next!110457))))

(declare-fun tp!1209341 () Bool)

(declare-fun b_and!304943 () Bool)

(assert (=> b!3968134 (= tp!1209341 b_and!304943)))

(declare-fun b_free!109755 () Bool)

(declare-fun b_next!110459 () Bool)

(assert (=> b!3968134 (= b_free!109755 (not b_next!110459))))

(declare-fun tp!1209330 () Bool)

(declare-fun b_and!304945 () Bool)

(assert (=> b!3968134 (= tp!1209330 b_and!304945)))

(declare-fun b!3968154 () Bool)

(declare-fun b_free!109757 () Bool)

(declare-fun b_next!110461 () Bool)

(assert (=> b!3968154 (= b_free!109757 (not b_next!110461))))

(declare-fun tp!1209331 () Bool)

(declare-fun b_and!304947 () Bool)

(assert (=> b!3968154 (= tp!1209331 b_and!304947)))

(declare-fun b_free!109759 () Bool)

(declare-fun b_next!110463 () Bool)

(assert (=> b!3968154 (= b_free!109759 (not b_next!110463))))

(declare-fun tp!1209336 () Bool)

(declare-fun b_and!304949 () Bool)

(assert (=> b!3968154 (= tp!1209336 b_and!304949)))

(declare-fun e!2457742 () Bool)

(assert (=> b!3968134 (= e!2457742 (and tp!1209341 tp!1209330))))

(declare-fun b!3968135 () Bool)

(declare-fun res!1606264 () Bool)

(declare-fun e!2457725 () Bool)

(assert (=> b!3968135 (=> (not res!1606264) (not e!2457725))))

(declare-datatypes ((C!23280 0))(
  ( (C!23281 (val!13734 Int)) )
))
(declare-datatypes ((List!42425 0))(
  ( (Nil!42301) (Cons!42301 (h!47721 C!23280) (t!330714 List!42425)) )
))
(declare-fun prefix!426 () List!42425)

(declare-fun isEmpty!25316 (List!42425) Bool)

(assert (=> b!3968135 (= res!1606264 (not (isEmpty!25316 prefix!426)))))

(declare-fun b!3968136 () Bool)

(declare-fun e!2457733 () Bool)

(declare-fun tp_is_empty!20065 () Bool)

(declare-fun tp!1209340 () Bool)

(assert (=> b!3968136 (= e!2457733 (and tp_is_empty!20065 tp!1209340))))

(declare-fun b!3968137 () Bool)

(declare-fun e!2457727 () Bool)

(declare-fun e!2457735 () Bool)

(declare-fun tp!1209337 () Bool)

(assert (=> b!3968137 (= e!2457727 (and e!2457735 tp!1209337))))

(declare-fun tp!1209343 () Bool)

(declare-fun b!3968138 () Bool)

(declare-fun e!2457737 () Bool)

(declare-fun e!2457732 () Bool)

(declare-datatypes ((List!42426 0))(
  ( (Nil!42302) (Cons!42302 (h!47722 (_ BitVec 16)) (t!330715 List!42426)) )
))
(declare-datatypes ((TokenValue!6872 0))(
  ( (FloatLiteralValue!13744 (text!48549 List!42426)) (TokenValueExt!6871 (__x!25961 Int)) (Broken!34360 (value!209905 List!42426)) (Object!6995) (End!6872) (Def!6872) (Underscore!6872) (Match!6872) (Else!6872) (Error!6872) (Case!6872) (If!6872) (Extends!6872) (Abstract!6872) (Class!6872) (Val!6872) (DelimiterValue!13744 (del!6932 List!42426)) (KeywordValue!6878 (value!209906 List!42426)) (CommentValue!13744 (value!209907 List!42426)) (WhitespaceValue!13744 (value!209908 List!42426)) (IndentationValue!6872 (value!209909 List!42426)) (String!48077) (Int32!6872) (Broken!34361 (value!209910 List!42426)) (Boolean!6873) (Unit!60977) (OperatorValue!6875 (op!6932 List!42426)) (IdentifierValue!13744 (value!209911 List!42426)) (IdentifierValue!13745 (value!209912 List!42426)) (WhitespaceValue!13745 (value!209913 List!42426)) (True!13744) (False!13744) (Broken!34362 (value!209914 List!42426)) (Broken!34363 (value!209915 List!42426)) (True!13745) (RightBrace!6872) (RightBracket!6872) (Colon!6872) (Null!6872) (Comma!6872) (LeftBracket!6872) (False!13745) (LeftBrace!6872) (ImaginaryLiteralValue!6872 (text!48550 List!42426)) (StringLiteralValue!20616 (value!209916 List!42426)) (EOFValue!6872 (value!209917 List!42426)) (IdentValue!6872 (value!209918 List!42426)) (DelimiterValue!13745 (value!209919 List!42426)) (DedentValue!6872 (value!209920 List!42426)) (NewLineValue!6872 (value!209921 List!42426)) (IntegerValue!20616 (value!209922 (_ BitVec 32)) (text!48551 List!42426)) (IntegerValue!20617 (value!209923 Int) (text!48552 List!42426)) (Times!6872) (Or!6872) (Equal!6872) (Minus!6872) (Broken!34364 (value!209924 List!42426)) (And!6872) (Div!6872) (LessEqual!6872) (Mod!6872) (Concat!18419) (Not!6872) (Plus!6872) (SpaceValue!6872 (value!209925 List!42426)) (IntegerValue!20618 (value!209926 Int) (text!48553 List!42426)) (StringLiteralValue!20617 (text!48554 List!42426)) (FloatLiteralValue!13745 (text!48555 List!42426)) (BytesLiteralValue!6872 (value!209927 List!42426)) (CommentValue!13745 (value!209928 List!42426)) (StringLiteralValue!20618 (value!209929 List!42426)) (ErrorTokenValue!6872 (msg!6933 List!42426)) )
))
(declare-datatypes ((Regex!11547 0))(
  ( (ElementMatch!11547 (c!688480 C!23280)) (Concat!18420 (regOne!23606 Regex!11547) (regTwo!23606 Regex!11547)) (EmptyExpr!11547) (Star!11547 (reg!11876 Regex!11547)) (EmptyLang!11547) (Union!11547 (regOne!23607 Regex!11547) (regTwo!23607 Regex!11547)) )
))
(declare-datatypes ((String!48078 0))(
  ( (String!48079 (value!209930 String)) )
))
(declare-datatypes ((IArray!25711 0))(
  ( (IArray!25712 (innerList!12913 List!42425)) )
))
(declare-datatypes ((Conc!12853 0))(
  ( (Node!12853 (left!32060 Conc!12853) (right!32390 Conc!12853) (csize!25936 Int) (cheight!13064 Int)) (Leaf!19881 (xs!16159 IArray!25711) (csize!25937 Int)) (Empty!12853) )
))
(declare-datatypes ((BalanceConc!25300 0))(
  ( (BalanceConc!25301 (c!688481 Conc!12853)) )
))
(declare-datatypes ((TokenValueInjection!13172 0))(
  ( (TokenValueInjection!13173 (toValue!9126 Int) (toChars!8985 Int)) )
))
(declare-datatypes ((Rule!13084 0))(
  ( (Rule!13085 (regex!6642 Regex!11547) (tag!7502 String!48078) (isSeparator!6642 Bool) (transformation!6642 TokenValueInjection!13172)) )
))
(declare-datatypes ((Token!12422 0))(
  ( (Token!12423 (value!209931 TokenValue!6872) (rule!9630 Rule!13084) (size!31663 Int) (originalCharacters!7242 List!42425)) )
))
(declare-datatypes ((List!42427 0))(
  ( (Nil!42303) (Cons!42303 (h!47723 Token!12422) (t!330716 List!42427)) )
))
(declare-fun suffixTokens!72 () List!42427)

(declare-fun inv!56533 (Token!12422) Bool)

(assert (=> b!3968138 (= e!2457737 (and (inv!56533 (h!47723 suffixTokens!72)) e!2457732 tp!1209343))))

(declare-fun b!3968139 () Bool)

(declare-fun res!1606258 () Bool)

(assert (=> b!3968139 (=> (not res!1606258) (not e!2457725))))

(declare-fun prefixTokens!80 () List!42427)

(declare-fun isEmpty!25317 (List!42427) Bool)

(assert (=> b!3968139 (= res!1606258 (not (isEmpty!25317 prefixTokens!80)))))

(declare-fun b!3968140 () Bool)

(declare-fun res!1606261 () Bool)

(assert (=> b!3968140 (=> (not res!1606261) (not e!2457725))))

(declare-datatypes ((LexerInterface!6231 0))(
  ( (LexerInterfaceExt!6228 (__x!25962 Int)) (Lexer!6229) )
))
(declare-fun thiss!20629 () LexerInterface!6231)

(declare-datatypes ((List!42428 0))(
  ( (Nil!42304) (Cons!42304 (h!47724 Rule!13084) (t!330717 List!42428)) )
))
(declare-fun rules!2768 () List!42428)

(declare-fun rulesInvariant!5574 (LexerInterface!6231 List!42428) Bool)

(assert (=> b!3968140 (= res!1606261 (rulesInvariant!5574 thiss!20629 rules!2768))))

(declare-fun e!2457739 () Bool)

(declare-fun e!2457738 () Bool)

(declare-fun b!3968141 () Bool)

(declare-fun tp!1209339 () Bool)

(declare-fun inv!56530 (String!48078) Bool)

(declare-fun inv!56534 (TokenValueInjection!13172) Bool)

(assert (=> b!3968141 (= e!2457739 (and tp!1209339 (inv!56530 (tag!7502 (rule!9630 (h!47723 prefixTokens!80)))) (inv!56534 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) e!2457738))))

(declare-fun b!3968142 () Bool)

(declare-fun tp!1209338 () Bool)

(declare-fun e!2457740 () Bool)

(assert (=> b!3968142 (= e!2457740 (and tp!1209338 (inv!56530 (tag!7502 (rule!9630 (h!47723 suffixTokens!72)))) (inv!56534 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) e!2457742))))

(declare-fun res!1606259 () Bool)

(assert (=> start!373360 (=> (not res!1606259) (not e!2457725))))

(get-info :version)

(assert (=> start!373360 (= res!1606259 ((_ is Lexer!6229) thiss!20629))))

(assert (=> start!373360 e!2457725))

(declare-fun e!2457728 () Bool)

(assert (=> start!373360 e!2457728))

(assert (=> start!373360 true))

(assert (=> start!373360 e!2457733))

(assert (=> start!373360 e!2457727))

(declare-fun e!2457729 () Bool)

(assert (=> start!373360 e!2457729))

(assert (=> start!373360 e!2457737))

(declare-fun e!2457731 () Bool)

(assert (=> start!373360 e!2457731))

(declare-fun e!2457736 () Bool)

(declare-fun b!3968143 () Bool)

(declare-fun tp!1209329 () Bool)

(assert (=> b!3968143 (= e!2457729 (and (inv!56533 (h!47723 prefixTokens!80)) e!2457736 tp!1209329))))

(declare-fun b!3968144 () Bool)

(declare-fun res!1606263 () Bool)

(assert (=> b!3968144 (=> (not res!1606263) (not e!2457725))))

(declare-fun isEmpty!25318 (List!42428) Bool)

(assert (=> b!3968144 (= res!1606263 (not (isEmpty!25318 rules!2768)))))

(declare-fun b!3968145 () Bool)

(declare-fun tp!1209335 () Bool)

(assert (=> b!3968145 (= e!2457728 (and tp_is_empty!20065 tp!1209335))))

(declare-fun b!3968146 () Bool)

(declare-fun e!2457741 () Bool)

(assert (=> b!3968146 (= e!2457725 e!2457741)))

(declare-fun res!1606262 () Bool)

(assert (=> b!3968146 (=> (not res!1606262) (not e!2457741))))

(declare-fun suffixResult!91 () List!42425)

(declare-fun lt!1390077 () List!42425)

(declare-datatypes ((tuple2!41602 0))(
  ( (tuple2!41603 (_1!23935 List!42427) (_2!23935 List!42425)) )
))
(declare-fun lexList!1999 (LexerInterface!6231 List!42428 List!42425) tuple2!41602)

(declare-fun ++!11041 (List!42427 List!42427) List!42427)

(assert (=> b!3968146 (= res!1606262 (= (lexList!1999 thiss!20629 rules!2768 lt!1390077) (tuple2!41603 (++!11041 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!42425)

(declare-fun ++!11042 (List!42425 List!42425) List!42425)

(assert (=> b!3968146 (= lt!1390077 (++!11042 prefix!426 suffix!1176))))

(declare-fun b!3968147 () Bool)

(declare-fun res!1606260 () Bool)

(assert (=> b!3968147 (=> (not res!1606260) (not e!2457741))))

(assert (=> b!3968147 (= res!1606260 (= (lexList!1999 thiss!20629 rules!2768 suffix!1176) (tuple2!41603 suffixTokens!72 suffixResult!91)))))

(assert (=> b!3968148 (= e!2457738 (and tp!1209328 tp!1209334))))

(declare-fun b!3968149 () Bool)

(declare-datatypes ((tuple2!41604 0))(
  ( (tuple2!41605 (_1!23936 Token!12422) (_2!23936 List!42425)) )
))
(declare-datatypes ((Option!9062 0))(
  ( (None!9061) (Some!9061 (v!39409 tuple2!41604)) )
))
(declare-fun maxPrefix!3535 (LexerInterface!6231 List!42428 List!42425) Option!9062)

(assert (=> b!3968149 (= e!2457741 (not ((_ is Some!9061) (maxPrefix!3535 thiss!20629 rules!2768 lt!1390077))))))

(declare-fun b!3968150 () Bool)

(declare-fun tp!1209332 () Bool)

(assert (=> b!3968150 (= e!2457731 (and tp_is_empty!20065 tp!1209332))))

(declare-fun e!2457734 () Bool)

(declare-fun b!3968151 () Bool)

(declare-fun tp!1209333 () Bool)

(assert (=> b!3968151 (= e!2457735 (and tp!1209333 (inv!56530 (tag!7502 (h!47724 rules!2768))) (inv!56534 (transformation!6642 (h!47724 rules!2768))) e!2457734))))

(declare-fun b!3968152 () Bool)

(declare-fun tp!1209342 () Bool)

(declare-fun inv!21 (TokenValue!6872) Bool)

(assert (=> b!3968152 (= e!2457732 (and (inv!21 (value!209931 (h!47723 suffixTokens!72))) e!2457740 tp!1209342))))

(declare-fun tp!1209344 () Bool)

(declare-fun b!3968153 () Bool)

(assert (=> b!3968153 (= e!2457736 (and (inv!21 (value!209931 (h!47723 prefixTokens!80))) e!2457739 tp!1209344))))

(assert (=> b!3968154 (= e!2457734 (and tp!1209331 tp!1209336))))

(assert (= (and start!373360 res!1606259) b!3968144))

(assert (= (and b!3968144 res!1606263) b!3968140))

(assert (= (and b!3968140 res!1606261) b!3968139))

(assert (= (and b!3968139 res!1606258) b!3968135))

(assert (= (and b!3968135 res!1606264) b!3968146))

(assert (= (and b!3968146 res!1606262) b!3968147))

(assert (= (and b!3968147 res!1606260) b!3968149))

(assert (= (and start!373360 ((_ is Cons!42301) suffixResult!91)) b!3968145))

(assert (= (and start!373360 ((_ is Cons!42301) suffix!1176)) b!3968136))

(assert (= b!3968151 b!3968154))

(assert (= b!3968137 b!3968151))

(assert (= (and start!373360 ((_ is Cons!42304) rules!2768)) b!3968137))

(assert (= b!3968141 b!3968148))

(assert (= b!3968153 b!3968141))

(assert (= b!3968143 b!3968153))

(assert (= (and start!373360 ((_ is Cons!42303) prefixTokens!80)) b!3968143))

(assert (= b!3968142 b!3968134))

(assert (= b!3968152 b!3968142))

(assert (= b!3968138 b!3968152))

(assert (= (and start!373360 ((_ is Cons!42303) suffixTokens!72)) b!3968138))

(assert (= (and start!373360 ((_ is Cons!42301) prefix!426)) b!3968150))

(declare-fun m!4538747 () Bool)

(assert (=> b!3968152 m!4538747))

(declare-fun m!4538749 () Bool)

(assert (=> b!3968146 m!4538749))

(declare-fun m!4538751 () Bool)

(assert (=> b!3968146 m!4538751))

(declare-fun m!4538753 () Bool)

(assert (=> b!3968146 m!4538753))

(declare-fun m!4538755 () Bool)

(assert (=> b!3968149 m!4538755))

(declare-fun m!4538757 () Bool)

(assert (=> b!3968153 m!4538757))

(declare-fun m!4538759 () Bool)

(assert (=> b!3968143 m!4538759))

(declare-fun m!4538761 () Bool)

(assert (=> b!3968138 m!4538761))

(declare-fun m!4538763 () Bool)

(assert (=> b!3968147 m!4538763))

(declare-fun m!4538765 () Bool)

(assert (=> b!3968144 m!4538765))

(declare-fun m!4538767 () Bool)

(assert (=> b!3968141 m!4538767))

(declare-fun m!4538769 () Bool)

(assert (=> b!3968141 m!4538769))

(declare-fun m!4538771 () Bool)

(assert (=> b!3968151 m!4538771))

(declare-fun m!4538773 () Bool)

(assert (=> b!3968151 m!4538773))

(declare-fun m!4538775 () Bool)

(assert (=> b!3968139 m!4538775))

(declare-fun m!4538777 () Bool)

(assert (=> b!3968142 m!4538777))

(declare-fun m!4538779 () Bool)

(assert (=> b!3968142 m!4538779))

(declare-fun m!4538781 () Bool)

(assert (=> b!3968140 m!4538781))

(declare-fun m!4538783 () Bool)

(assert (=> b!3968135 m!4538783))

(check-sat b_and!304941 (not b_next!110461) (not b!3968139) (not b_next!110457) (not b!3968147) (not b_next!110453) b_and!304939 (not b!3968150) (not b_next!110459) (not b!3968136) (not b!3968144) tp_is_empty!20065 (not b!3968143) b_and!304943 (not b!3968140) (not b_next!110463) (not b!3968138) (not b!3968145) (not b!3968152) (not b!3968146) (not b!3968142) b_and!304947 b_and!304949 (not b!3968149) (not b!3968141) b_and!304945 (not b!3968137) (not b!3968153) (not b_next!110455) (not b!3968151) (not b!3968135))
(check-sat (not b_next!110463) b_and!304941 (not b_next!110461) b_and!304945 (not b_next!110457) (not b_next!110453) b_and!304939 (not b_next!110459) (not b_next!110455) b_and!304943 b_and!304947 b_and!304949)
(get-model)

(declare-fun d!1175780 () Bool)

(assert (=> d!1175780 (= (isEmpty!25318 rules!2768) ((_ is Nil!42304) rules!2768))))

(assert (=> b!3968144 d!1175780))

(declare-fun d!1175782 () Bool)

(assert (=> d!1175782 (= (isEmpty!25316 prefix!426) ((_ is Nil!42301) prefix!426))))

(assert (=> b!3968135 d!1175782))

(declare-fun d!1175784 () Bool)

(declare-fun e!2457756 () Bool)

(assert (=> d!1175784 e!2457756))

(declare-fun c!688486 () Bool)

(declare-fun lt!1390084 () tuple2!41602)

(declare-fun size!31664 (List!42427) Int)

(assert (=> d!1175784 (= c!688486 (> (size!31664 (_1!23935 lt!1390084)) 0))))

(declare-fun e!2457754 () tuple2!41602)

(assert (=> d!1175784 (= lt!1390084 e!2457754)))

(declare-fun c!688487 () Bool)

(declare-fun lt!1390085 () Option!9062)

(assert (=> d!1175784 (= c!688487 ((_ is Some!9061) lt!1390085))))

(assert (=> d!1175784 (= lt!1390085 (maxPrefix!3535 thiss!20629 rules!2768 lt!1390077))))

(assert (=> d!1175784 (= (lexList!1999 thiss!20629 rules!2768 lt!1390077) lt!1390084)))

(declare-fun b!3968168 () Bool)

(declare-fun lt!1390086 () tuple2!41602)

(assert (=> b!3968168 (= e!2457754 (tuple2!41603 (Cons!42303 (_1!23936 (v!39409 lt!1390085)) (_1!23935 lt!1390086)) (_2!23935 lt!1390086)))))

(assert (=> b!3968168 (= lt!1390086 (lexList!1999 thiss!20629 rules!2768 (_2!23936 (v!39409 lt!1390085))))))

(declare-fun b!3968169 () Bool)

(assert (=> b!3968169 (= e!2457754 (tuple2!41603 Nil!42303 lt!1390077))))

(declare-fun b!3968170 () Bool)

(declare-fun e!2457755 () Bool)

(assert (=> b!3968170 (= e!2457756 e!2457755)))

(declare-fun res!1606270 () Bool)

(declare-fun size!31665 (List!42425) Int)

(assert (=> b!3968170 (= res!1606270 (< (size!31665 (_2!23935 lt!1390084)) (size!31665 lt!1390077)))))

(assert (=> b!3968170 (=> (not res!1606270) (not e!2457755))))

(declare-fun b!3968171 () Bool)

(assert (=> b!3968171 (= e!2457755 (not (isEmpty!25317 (_1!23935 lt!1390084))))))

(declare-fun b!3968172 () Bool)

(assert (=> b!3968172 (= e!2457756 (= (_2!23935 lt!1390084) lt!1390077))))

(assert (= (and d!1175784 c!688487) b!3968168))

(assert (= (and d!1175784 (not c!688487)) b!3968169))

(assert (= (and d!1175784 c!688486) b!3968170))

(assert (= (and d!1175784 (not c!688486)) b!3968172))

(assert (= (and b!3968170 res!1606270) b!3968171))

(declare-fun m!4538789 () Bool)

(assert (=> d!1175784 m!4538789))

(assert (=> d!1175784 m!4538755))

(declare-fun m!4538791 () Bool)

(assert (=> b!3968168 m!4538791))

(declare-fun m!4538793 () Bool)

(assert (=> b!3968170 m!4538793))

(declare-fun m!4538795 () Bool)

(assert (=> b!3968170 m!4538795))

(declare-fun m!4538797 () Bool)

(assert (=> b!3968171 m!4538797))

(assert (=> b!3968146 d!1175784))

(declare-fun b!3968186 () Bool)

(declare-fun lt!1390089 () List!42427)

(declare-fun e!2457764 () Bool)

(assert (=> b!3968186 (= e!2457764 (or (not (= suffixTokens!72 Nil!42303)) (= lt!1390089 prefixTokens!80)))))

(declare-fun b!3968185 () Bool)

(declare-fun res!1606277 () Bool)

(assert (=> b!3968185 (=> (not res!1606277) (not e!2457764))))

(assert (=> b!3968185 (= res!1606277 (= (size!31664 lt!1390089) (+ (size!31664 prefixTokens!80) (size!31664 suffixTokens!72))))))

(declare-fun b!3968183 () Bool)

(declare-fun e!2457763 () List!42427)

(assert (=> b!3968183 (= e!2457763 suffixTokens!72)))

(declare-fun d!1175794 () Bool)

(assert (=> d!1175794 e!2457764))

(declare-fun res!1606278 () Bool)

(assert (=> d!1175794 (=> (not res!1606278) (not e!2457764))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6426 (List!42427) (InoxSet Token!12422))

(assert (=> d!1175794 (= res!1606278 (= (content!6426 lt!1390089) ((_ map or) (content!6426 prefixTokens!80) (content!6426 suffixTokens!72))))))

(assert (=> d!1175794 (= lt!1390089 e!2457763)))

(declare-fun c!688490 () Bool)

(assert (=> d!1175794 (= c!688490 ((_ is Nil!42303) prefixTokens!80))))

(assert (=> d!1175794 (= (++!11041 prefixTokens!80 suffixTokens!72) lt!1390089)))

(declare-fun b!3968184 () Bool)

(assert (=> b!3968184 (= e!2457763 (Cons!42303 (h!47723 prefixTokens!80) (++!11041 (t!330716 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1175794 c!688490) b!3968183))

(assert (= (and d!1175794 (not c!688490)) b!3968184))

(assert (= (and d!1175794 res!1606278) b!3968185))

(assert (= (and b!3968185 res!1606277) b!3968186))

(declare-fun m!4538799 () Bool)

(assert (=> b!3968185 m!4538799))

(declare-fun m!4538803 () Bool)

(assert (=> b!3968185 m!4538803))

(declare-fun m!4538805 () Bool)

(assert (=> b!3968185 m!4538805))

(declare-fun m!4538807 () Bool)

(assert (=> d!1175794 m!4538807))

(declare-fun m!4538811 () Bool)

(assert (=> d!1175794 m!4538811))

(declare-fun m!4538813 () Bool)

(assert (=> d!1175794 m!4538813))

(declare-fun m!4538815 () Bool)

(assert (=> b!3968184 m!4538815))

(assert (=> b!3968146 d!1175794))

(declare-fun d!1175798 () Bool)

(declare-fun e!2457771 () Bool)

(assert (=> d!1175798 e!2457771))

(declare-fun res!1606285 () Bool)

(assert (=> d!1175798 (=> (not res!1606285) (not e!2457771))))

(declare-fun lt!1390092 () List!42425)

(declare-fun content!6427 (List!42425) (InoxSet C!23280))

(assert (=> d!1175798 (= res!1606285 (= (content!6427 lt!1390092) ((_ map or) (content!6427 prefix!426) (content!6427 suffix!1176))))))

(declare-fun e!2457770 () List!42425)

(assert (=> d!1175798 (= lt!1390092 e!2457770)))

(declare-fun c!688493 () Bool)

(assert (=> d!1175798 (= c!688493 ((_ is Nil!42301) prefix!426))))

(assert (=> d!1175798 (= (++!11042 prefix!426 suffix!1176) lt!1390092)))

(declare-fun b!3968199 () Bool)

(assert (=> b!3968199 (= e!2457771 (or (not (= suffix!1176 Nil!42301)) (= lt!1390092 prefix!426)))))

(declare-fun b!3968197 () Bool)

(assert (=> b!3968197 (= e!2457770 (Cons!42301 (h!47721 prefix!426) (++!11042 (t!330714 prefix!426) suffix!1176)))))

(declare-fun b!3968198 () Bool)

(declare-fun res!1606284 () Bool)

(assert (=> b!3968198 (=> (not res!1606284) (not e!2457771))))

(assert (=> b!3968198 (= res!1606284 (= (size!31665 lt!1390092) (+ (size!31665 prefix!426) (size!31665 suffix!1176))))))

(declare-fun b!3968196 () Bool)

(assert (=> b!3968196 (= e!2457770 suffix!1176)))

(assert (= (and d!1175798 c!688493) b!3968196))

(assert (= (and d!1175798 (not c!688493)) b!3968197))

(assert (= (and d!1175798 res!1606285) b!3968198))

(assert (= (and b!3968198 res!1606284) b!3968199))

(declare-fun m!4538817 () Bool)

(assert (=> d!1175798 m!4538817))

(declare-fun m!4538819 () Bool)

(assert (=> d!1175798 m!4538819))

(declare-fun m!4538821 () Bool)

(assert (=> d!1175798 m!4538821))

(declare-fun m!4538823 () Bool)

(assert (=> b!3968197 m!4538823))

(declare-fun m!4538825 () Bool)

(assert (=> b!3968198 m!4538825))

(declare-fun m!4538827 () Bool)

(assert (=> b!3968198 m!4538827))

(declare-fun m!4538829 () Bool)

(assert (=> b!3968198 m!4538829))

(assert (=> b!3968146 d!1175798))

(declare-fun d!1175800 () Bool)

(declare-fun e!2457774 () Bool)

(assert (=> d!1175800 e!2457774))

(declare-fun c!688494 () Bool)

(declare-fun lt!1390093 () tuple2!41602)

(assert (=> d!1175800 (= c!688494 (> (size!31664 (_1!23935 lt!1390093)) 0))))

(declare-fun e!2457772 () tuple2!41602)

(assert (=> d!1175800 (= lt!1390093 e!2457772)))

(declare-fun c!688495 () Bool)

(declare-fun lt!1390094 () Option!9062)

(assert (=> d!1175800 (= c!688495 ((_ is Some!9061) lt!1390094))))

(assert (=> d!1175800 (= lt!1390094 (maxPrefix!3535 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1175800 (= (lexList!1999 thiss!20629 rules!2768 suffix!1176) lt!1390093)))

(declare-fun b!3968200 () Bool)

(declare-fun lt!1390095 () tuple2!41602)

(assert (=> b!3968200 (= e!2457772 (tuple2!41603 (Cons!42303 (_1!23936 (v!39409 lt!1390094)) (_1!23935 lt!1390095)) (_2!23935 lt!1390095)))))

(assert (=> b!3968200 (= lt!1390095 (lexList!1999 thiss!20629 rules!2768 (_2!23936 (v!39409 lt!1390094))))))

(declare-fun b!3968201 () Bool)

(assert (=> b!3968201 (= e!2457772 (tuple2!41603 Nil!42303 suffix!1176))))

(declare-fun b!3968202 () Bool)

(declare-fun e!2457773 () Bool)

(assert (=> b!3968202 (= e!2457774 e!2457773)))

(declare-fun res!1606286 () Bool)

(assert (=> b!3968202 (= res!1606286 (< (size!31665 (_2!23935 lt!1390093)) (size!31665 suffix!1176)))))

(assert (=> b!3968202 (=> (not res!1606286) (not e!2457773))))

(declare-fun b!3968203 () Bool)

(assert (=> b!3968203 (= e!2457773 (not (isEmpty!25317 (_1!23935 lt!1390093))))))

(declare-fun b!3968204 () Bool)

(assert (=> b!3968204 (= e!2457774 (= (_2!23935 lt!1390093) suffix!1176))))

(assert (= (and d!1175800 c!688495) b!3968200))

(assert (= (and d!1175800 (not c!688495)) b!3968201))

(assert (= (and d!1175800 c!688494) b!3968202))

(assert (= (and d!1175800 (not c!688494)) b!3968204))

(assert (= (and b!3968202 res!1606286) b!3968203))

(declare-fun m!4538831 () Bool)

(assert (=> d!1175800 m!4538831))

(declare-fun m!4538833 () Bool)

(assert (=> d!1175800 m!4538833))

(declare-fun m!4538835 () Bool)

(assert (=> b!3968200 m!4538835))

(declare-fun m!4538837 () Bool)

(assert (=> b!3968202 m!4538837))

(assert (=> b!3968202 m!4538829))

(declare-fun m!4538839 () Bool)

(assert (=> b!3968203 m!4538839))

(assert (=> b!3968147 d!1175800))

(declare-fun d!1175802 () Bool)

(declare-fun res!1606291 () Bool)

(declare-fun e!2457777 () Bool)

(assert (=> d!1175802 (=> (not res!1606291) (not e!2457777))))

(assert (=> d!1175802 (= res!1606291 (not (isEmpty!25316 (originalCharacters!7242 (h!47723 suffixTokens!72)))))))

(assert (=> d!1175802 (= (inv!56533 (h!47723 suffixTokens!72)) e!2457777)))

(declare-fun b!3968209 () Bool)

(declare-fun res!1606292 () Bool)

(assert (=> b!3968209 (=> (not res!1606292) (not e!2457777))))

(declare-fun list!15697 (BalanceConc!25300) List!42425)

(declare-fun dynLambda!18054 (Int TokenValue!6872) BalanceConc!25300)

(assert (=> b!3968209 (= res!1606292 (= (originalCharacters!7242 (h!47723 suffixTokens!72)) (list!15697 (dynLambda!18054 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (value!209931 (h!47723 suffixTokens!72))))))))

(declare-fun b!3968210 () Bool)

(assert (=> b!3968210 (= e!2457777 (= (size!31663 (h!47723 suffixTokens!72)) (size!31665 (originalCharacters!7242 (h!47723 suffixTokens!72)))))))

(assert (= (and d!1175802 res!1606291) b!3968209))

(assert (= (and b!3968209 res!1606292) b!3968210))

(declare-fun b_lambda!116007 () Bool)

(assert (=> (not b_lambda!116007) (not b!3968209)))

(declare-fun t!330719 () Bool)

(declare-fun tb!239553 () Bool)

(assert (=> (and b!3968148 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))) t!330719) tb!239553))

(declare-fun b!3968215 () Bool)

(declare-fun e!2457780 () Bool)

(declare-fun tp!1209347 () Bool)

(declare-fun inv!56535 (Conc!12853) Bool)

(assert (=> b!3968215 (= e!2457780 (and (inv!56535 (c!688481 (dynLambda!18054 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (value!209931 (h!47723 suffixTokens!72))))) tp!1209347))))

(declare-fun result!290038 () Bool)

(declare-fun inv!56536 (BalanceConc!25300) Bool)

(assert (=> tb!239553 (= result!290038 (and (inv!56536 (dynLambda!18054 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (value!209931 (h!47723 suffixTokens!72)))) e!2457780))))

(assert (= tb!239553 b!3968215))

(declare-fun m!4538841 () Bool)

(assert (=> b!3968215 m!4538841))

(declare-fun m!4538843 () Bool)

(assert (=> tb!239553 m!4538843))

(assert (=> b!3968209 t!330719))

(declare-fun b_and!304951 () Bool)

(assert (= b_and!304941 (and (=> t!330719 result!290038) b_and!304951)))

(declare-fun t!330721 () Bool)

(declare-fun tb!239555 () Bool)

(assert (=> (and b!3968134 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))) t!330721) tb!239555))

(declare-fun result!290042 () Bool)

(assert (= result!290042 result!290038))

(assert (=> b!3968209 t!330721))

(declare-fun b_and!304953 () Bool)

(assert (= b_and!304945 (and (=> t!330721 result!290042) b_and!304953)))

(declare-fun tb!239557 () Bool)

(declare-fun t!330723 () Bool)

(assert (=> (and b!3968154 (= (toChars!8985 (transformation!6642 (h!47724 rules!2768))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))) t!330723) tb!239557))

(declare-fun result!290044 () Bool)

(assert (= result!290044 result!290038))

(assert (=> b!3968209 t!330723))

(declare-fun b_and!304955 () Bool)

(assert (= b_and!304949 (and (=> t!330723 result!290044) b_and!304955)))

(declare-fun m!4538845 () Bool)

(assert (=> d!1175802 m!4538845))

(declare-fun m!4538847 () Bool)

(assert (=> b!3968209 m!4538847))

(assert (=> b!3968209 m!4538847))

(declare-fun m!4538849 () Bool)

(assert (=> b!3968209 m!4538849))

(declare-fun m!4538851 () Bool)

(assert (=> b!3968210 m!4538851))

(assert (=> b!3968138 d!1175802))

(declare-fun d!1175804 () Bool)

(assert (=> d!1175804 (= (isEmpty!25317 prefixTokens!80) ((_ is Nil!42303) prefixTokens!80))))

(assert (=> b!3968139 d!1175804))

(declare-fun b!3968251 () Bool)

(declare-fun res!1606314 () Bool)

(declare-fun e!2457798 () Bool)

(assert (=> b!3968251 (=> (not res!1606314) (not e!2457798))))

(declare-fun lt!1390116 () Option!9062)

(declare-fun get!13952 (Option!9062) tuple2!41604)

(declare-fun apply!9872 (TokenValueInjection!13172 BalanceConc!25300) TokenValue!6872)

(declare-fun seqFromList!4900 (List!42425) BalanceConc!25300)

(assert (=> b!3968251 (= res!1606314 (= (value!209931 (_1!23936 (get!13952 lt!1390116))) (apply!9872 (transformation!6642 (rule!9630 (_1!23936 (get!13952 lt!1390116)))) (seqFromList!4900 (originalCharacters!7242 (_1!23936 (get!13952 lt!1390116)))))))))

(declare-fun call!285591 () Option!9062)

(declare-fun bm!285586 () Bool)

(declare-fun maxPrefixOneRule!2584 (LexerInterface!6231 Rule!13084 List!42425) Option!9062)

(assert (=> bm!285586 (= call!285591 (maxPrefixOneRule!2584 thiss!20629 (h!47724 rules!2768) lt!1390077))))

(declare-fun b!3968252 () Bool)

(declare-fun res!1606313 () Bool)

(assert (=> b!3968252 (=> (not res!1606313) (not e!2457798))))

(assert (=> b!3968252 (= res!1606313 (< (size!31665 (_2!23936 (get!13952 lt!1390116))) (size!31665 lt!1390077)))))

(declare-fun b!3968253 () Bool)

(declare-fun res!1606317 () Bool)

(assert (=> b!3968253 (=> (not res!1606317) (not e!2457798))))

(declare-fun charsOf!4459 (Token!12422) BalanceConc!25300)

(assert (=> b!3968253 (= res!1606317 (= (++!11042 (list!15697 (charsOf!4459 (_1!23936 (get!13952 lt!1390116)))) (_2!23936 (get!13952 lt!1390116))) lt!1390077))))

(declare-fun b!3968254 () Bool)

(declare-fun e!2457800 () Bool)

(assert (=> b!3968254 (= e!2457800 e!2457798)))

(declare-fun res!1606318 () Bool)

(assert (=> b!3968254 (=> (not res!1606318) (not e!2457798))))

(declare-fun isDefined!7008 (Option!9062) Bool)

(assert (=> b!3968254 (= res!1606318 (isDefined!7008 lt!1390116))))

(declare-fun b!3968255 () Bool)

(declare-fun res!1606312 () Bool)

(assert (=> b!3968255 (=> (not res!1606312) (not e!2457798))))

(assert (=> b!3968255 (= res!1606312 (= (list!15697 (charsOf!4459 (_1!23936 (get!13952 lt!1390116)))) (originalCharacters!7242 (_1!23936 (get!13952 lt!1390116)))))))

(declare-fun b!3968257 () Bool)

(declare-fun e!2457799 () Option!9062)

(declare-fun lt!1390117 () Option!9062)

(declare-fun lt!1390118 () Option!9062)

(assert (=> b!3968257 (= e!2457799 (ite (and ((_ is None!9061) lt!1390117) ((_ is None!9061) lt!1390118)) None!9061 (ite ((_ is None!9061) lt!1390118) lt!1390117 (ite ((_ is None!9061) lt!1390117) lt!1390118 (ite (>= (size!31663 (_1!23936 (v!39409 lt!1390117))) (size!31663 (_1!23936 (v!39409 lt!1390118)))) lt!1390117 lt!1390118)))))))

(assert (=> b!3968257 (= lt!1390117 call!285591)))

(assert (=> b!3968257 (= lt!1390118 (maxPrefix!3535 thiss!20629 (t!330717 rules!2768) lt!1390077))))

(declare-fun b!3968258 () Bool)

(declare-fun res!1606316 () Bool)

(assert (=> b!3968258 (=> (not res!1606316) (not e!2457798))))

(declare-fun matchR!5547 (Regex!11547 List!42425) Bool)

(assert (=> b!3968258 (= res!1606316 (matchR!5547 (regex!6642 (rule!9630 (_1!23936 (get!13952 lt!1390116)))) (list!15697 (charsOf!4459 (_1!23936 (get!13952 lt!1390116))))))))

(declare-fun b!3968259 () Bool)

(assert (=> b!3968259 (= e!2457799 call!285591)))

(declare-fun d!1175806 () Bool)

(assert (=> d!1175806 e!2457800))

(declare-fun res!1606315 () Bool)

(assert (=> d!1175806 (=> res!1606315 e!2457800)))

(declare-fun isEmpty!25319 (Option!9062) Bool)

(assert (=> d!1175806 (= res!1606315 (isEmpty!25319 lt!1390116))))

(assert (=> d!1175806 (= lt!1390116 e!2457799)))

(declare-fun c!688504 () Bool)

(assert (=> d!1175806 (= c!688504 (and ((_ is Cons!42304) rules!2768) ((_ is Nil!42304) (t!330717 rules!2768))))))

(declare-datatypes ((Unit!60978 0))(
  ( (Unit!60979) )
))
(declare-fun lt!1390115 () Unit!60978)

(declare-fun lt!1390119 () Unit!60978)

(assert (=> d!1175806 (= lt!1390115 lt!1390119)))

(declare-fun isPrefix!3730 (List!42425 List!42425) Bool)

(assert (=> d!1175806 (isPrefix!3730 lt!1390077 lt!1390077)))

(declare-fun lemmaIsPrefixRefl!2349 (List!42425 List!42425) Unit!60978)

(assert (=> d!1175806 (= lt!1390119 (lemmaIsPrefixRefl!2349 lt!1390077 lt!1390077))))

(declare-fun rulesValidInductive!2407 (LexerInterface!6231 List!42428) Bool)

(assert (=> d!1175806 (rulesValidInductive!2407 thiss!20629 rules!2768)))

(assert (=> d!1175806 (= (maxPrefix!3535 thiss!20629 rules!2768 lt!1390077) lt!1390116)))

(declare-fun b!3968256 () Bool)

(declare-fun contains!8439 (List!42428 Rule!13084) Bool)

(assert (=> b!3968256 (= e!2457798 (contains!8439 rules!2768 (rule!9630 (_1!23936 (get!13952 lt!1390116)))))))

(assert (= (and d!1175806 c!688504) b!3968259))

(assert (= (and d!1175806 (not c!688504)) b!3968257))

(assert (= (or b!3968259 b!3968257) bm!285586))

(assert (= (and d!1175806 (not res!1606315)) b!3968254))

(assert (= (and b!3968254 res!1606318) b!3968255))

(assert (= (and b!3968255 res!1606312) b!3968252))

(assert (= (and b!3968252 res!1606313) b!3968253))

(assert (= (and b!3968253 res!1606317) b!3968251))

(assert (= (and b!3968251 res!1606314) b!3968258))

(assert (= (and b!3968258 res!1606316) b!3968256))

(declare-fun m!4538873 () Bool)

(assert (=> b!3968253 m!4538873))

(declare-fun m!4538875 () Bool)

(assert (=> b!3968253 m!4538875))

(assert (=> b!3968253 m!4538875))

(declare-fun m!4538877 () Bool)

(assert (=> b!3968253 m!4538877))

(assert (=> b!3968253 m!4538877))

(declare-fun m!4538879 () Bool)

(assert (=> b!3968253 m!4538879))

(declare-fun m!4538881 () Bool)

(assert (=> b!3968257 m!4538881))

(assert (=> b!3968251 m!4538873))

(declare-fun m!4538883 () Bool)

(assert (=> b!3968251 m!4538883))

(assert (=> b!3968251 m!4538883))

(declare-fun m!4538885 () Bool)

(assert (=> b!3968251 m!4538885))

(declare-fun m!4538887 () Bool)

(assert (=> bm!285586 m!4538887))

(assert (=> b!3968256 m!4538873))

(declare-fun m!4538889 () Bool)

(assert (=> b!3968256 m!4538889))

(declare-fun m!4538891 () Bool)

(assert (=> d!1175806 m!4538891))

(declare-fun m!4538893 () Bool)

(assert (=> d!1175806 m!4538893))

(declare-fun m!4538895 () Bool)

(assert (=> d!1175806 m!4538895))

(declare-fun m!4538897 () Bool)

(assert (=> d!1175806 m!4538897))

(assert (=> b!3968255 m!4538873))

(assert (=> b!3968255 m!4538875))

(assert (=> b!3968255 m!4538875))

(assert (=> b!3968255 m!4538877))

(assert (=> b!3968258 m!4538873))

(assert (=> b!3968258 m!4538875))

(assert (=> b!3968258 m!4538875))

(assert (=> b!3968258 m!4538877))

(assert (=> b!3968258 m!4538877))

(declare-fun m!4538899 () Bool)

(assert (=> b!3968258 m!4538899))

(assert (=> b!3968252 m!4538873))

(declare-fun m!4538901 () Bool)

(assert (=> b!3968252 m!4538901))

(assert (=> b!3968252 m!4538795))

(declare-fun m!4538903 () Bool)

(assert (=> b!3968254 m!4538903))

(assert (=> b!3968149 d!1175806))

(declare-fun d!1175822 () Bool)

(assert (=> d!1175822 (= (inv!56530 (tag!7502 (h!47724 rules!2768))) (= (mod (str.len (value!209930 (tag!7502 (h!47724 rules!2768)))) 2) 0))))

(assert (=> b!3968151 d!1175822))

(declare-fun d!1175824 () Bool)

(declare-fun res!1606327 () Bool)

(declare-fun e!2457809 () Bool)

(assert (=> d!1175824 (=> (not res!1606327) (not e!2457809))))

(declare-fun semiInverseModEq!2861 (Int Int) Bool)

(assert (=> d!1175824 (= res!1606327 (semiInverseModEq!2861 (toChars!8985 (transformation!6642 (h!47724 rules!2768))) (toValue!9126 (transformation!6642 (h!47724 rules!2768)))))))

(assert (=> d!1175824 (= (inv!56534 (transformation!6642 (h!47724 rules!2768))) e!2457809)))

(declare-fun b!3968273 () Bool)

(declare-fun equivClasses!2760 (Int Int) Bool)

(assert (=> b!3968273 (= e!2457809 (equivClasses!2760 (toChars!8985 (transformation!6642 (h!47724 rules!2768))) (toValue!9126 (transformation!6642 (h!47724 rules!2768)))))))

(assert (= (and d!1175824 res!1606327) b!3968273))

(declare-fun m!4538915 () Bool)

(assert (=> d!1175824 m!4538915))

(declare-fun m!4538919 () Bool)

(assert (=> b!3968273 m!4538919))

(assert (=> b!3968151 d!1175824))

(declare-fun d!1175828 () Bool)

(declare-fun res!1606330 () Bool)

(declare-fun e!2457812 () Bool)

(assert (=> d!1175828 (=> (not res!1606330) (not e!2457812))))

(declare-fun rulesValid!2595 (LexerInterface!6231 List!42428) Bool)

(assert (=> d!1175828 (= res!1606330 (rulesValid!2595 thiss!20629 rules!2768))))

(assert (=> d!1175828 (= (rulesInvariant!5574 thiss!20629 rules!2768) e!2457812)))

(declare-fun b!3968276 () Bool)

(declare-datatypes ((List!42430 0))(
  ( (Nil!42306) (Cons!42306 (h!47726 String!48078) (t!330767 List!42430)) )
))
(declare-fun noDuplicateTag!2596 (LexerInterface!6231 List!42428 List!42430) Bool)

(assert (=> b!3968276 (= e!2457812 (noDuplicateTag!2596 thiss!20629 rules!2768 Nil!42306))))

(assert (= (and d!1175828 res!1606330) b!3968276))

(declare-fun m!4538921 () Bool)

(assert (=> d!1175828 m!4538921))

(declare-fun m!4538923 () Bool)

(assert (=> b!3968276 m!4538923))

(assert (=> b!3968140 d!1175828))

(declare-fun d!1175830 () Bool)

(assert (=> d!1175830 (= (inv!56530 (tag!7502 (rule!9630 (h!47723 suffixTokens!72)))) (= (mod (str.len (value!209930 (tag!7502 (rule!9630 (h!47723 suffixTokens!72))))) 2) 0))))

(assert (=> b!3968142 d!1175830))

(declare-fun d!1175832 () Bool)

(declare-fun res!1606331 () Bool)

(declare-fun e!2457813 () Bool)

(assert (=> d!1175832 (=> (not res!1606331) (not e!2457813))))

(assert (=> d!1175832 (= res!1606331 (semiInverseModEq!2861 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (toValue!9126 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))))))

(assert (=> d!1175832 (= (inv!56534 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) e!2457813)))

(declare-fun b!3968277 () Bool)

(assert (=> b!3968277 (= e!2457813 (equivClasses!2760 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (toValue!9126 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))))))

(assert (= (and d!1175832 res!1606331) b!3968277))

(declare-fun m!4538925 () Bool)

(assert (=> d!1175832 m!4538925))

(declare-fun m!4538927 () Bool)

(assert (=> b!3968277 m!4538927))

(assert (=> b!3968142 d!1175832))

(declare-fun d!1175834 () Bool)

(assert (=> d!1175834 (= (inv!56530 (tag!7502 (rule!9630 (h!47723 prefixTokens!80)))) (= (mod (str.len (value!209930 (tag!7502 (rule!9630 (h!47723 prefixTokens!80))))) 2) 0))))

(assert (=> b!3968141 d!1175834))

(declare-fun d!1175836 () Bool)

(declare-fun res!1606332 () Bool)

(declare-fun e!2457814 () Bool)

(assert (=> d!1175836 (=> (not res!1606332) (not e!2457814))))

(assert (=> d!1175836 (= res!1606332 (semiInverseModEq!2861 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (toValue!9126 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))))))

(assert (=> d!1175836 (= (inv!56534 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) e!2457814)))

(declare-fun b!3968278 () Bool)

(assert (=> b!3968278 (= e!2457814 (equivClasses!2760 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (toValue!9126 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))))))

(assert (= (and d!1175836 res!1606332) b!3968278))

(declare-fun m!4538929 () Bool)

(assert (=> d!1175836 m!4538929))

(declare-fun m!4538931 () Bool)

(assert (=> b!3968278 m!4538931))

(assert (=> b!3968141 d!1175836))

(declare-fun b!3968304 () Bool)

(declare-fun e!2457831 () Bool)

(declare-fun inv!17 (TokenValue!6872) Bool)

(assert (=> b!3968304 (= e!2457831 (inv!17 (value!209931 (h!47723 suffixTokens!72))))))

(declare-fun b!3968305 () Bool)

(declare-fun e!2457832 () Bool)

(declare-fun inv!16 (TokenValue!6872) Bool)

(assert (=> b!3968305 (= e!2457832 (inv!16 (value!209931 (h!47723 suffixTokens!72))))))

(declare-fun b!3968306 () Bool)

(declare-fun e!2457830 () Bool)

(declare-fun inv!15 (TokenValue!6872) Bool)

(assert (=> b!3968306 (= e!2457830 (inv!15 (value!209931 (h!47723 suffixTokens!72))))))

(declare-fun d!1175838 () Bool)

(declare-fun c!688515 () Bool)

(assert (=> d!1175838 (= c!688515 ((_ is IntegerValue!20616) (value!209931 (h!47723 suffixTokens!72))))))

(assert (=> d!1175838 (= (inv!21 (value!209931 (h!47723 suffixTokens!72))) e!2457832)))

(declare-fun b!3968307 () Bool)

(assert (=> b!3968307 (= e!2457832 e!2457831)))

(declare-fun c!688516 () Bool)

(assert (=> b!3968307 (= c!688516 ((_ is IntegerValue!20617) (value!209931 (h!47723 suffixTokens!72))))))

(declare-fun b!3968308 () Bool)

(declare-fun res!1606338 () Bool)

(assert (=> b!3968308 (=> res!1606338 e!2457830)))

(assert (=> b!3968308 (= res!1606338 (not ((_ is IntegerValue!20618) (value!209931 (h!47723 suffixTokens!72)))))))

(assert (=> b!3968308 (= e!2457831 e!2457830)))

(assert (= (and d!1175838 c!688515) b!3968305))

(assert (= (and d!1175838 (not c!688515)) b!3968307))

(assert (= (and b!3968307 c!688516) b!3968304))

(assert (= (and b!3968307 (not c!688516)) b!3968308))

(assert (= (and b!3968308 (not res!1606338)) b!3968306))

(declare-fun m!4538933 () Bool)

(assert (=> b!3968304 m!4538933))

(declare-fun m!4538935 () Bool)

(assert (=> b!3968305 m!4538935))

(declare-fun m!4538937 () Bool)

(assert (=> b!3968306 m!4538937))

(assert (=> b!3968152 d!1175838))

(declare-fun d!1175840 () Bool)

(declare-fun res!1606339 () Bool)

(declare-fun e!2457833 () Bool)

(assert (=> d!1175840 (=> (not res!1606339) (not e!2457833))))

(assert (=> d!1175840 (= res!1606339 (not (isEmpty!25316 (originalCharacters!7242 (h!47723 prefixTokens!80)))))))

(assert (=> d!1175840 (= (inv!56533 (h!47723 prefixTokens!80)) e!2457833)))

(declare-fun b!3968309 () Bool)

(declare-fun res!1606340 () Bool)

(assert (=> b!3968309 (=> (not res!1606340) (not e!2457833))))

(assert (=> b!3968309 (= res!1606340 (= (originalCharacters!7242 (h!47723 prefixTokens!80)) (list!15697 (dynLambda!18054 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (value!209931 (h!47723 prefixTokens!80))))))))

(declare-fun b!3968310 () Bool)

(assert (=> b!3968310 (= e!2457833 (= (size!31663 (h!47723 prefixTokens!80)) (size!31665 (originalCharacters!7242 (h!47723 prefixTokens!80)))))))

(assert (= (and d!1175840 res!1606339) b!3968309))

(assert (= (and b!3968309 res!1606340) b!3968310))

(declare-fun b_lambda!116011 () Bool)

(assert (=> (not b_lambda!116011) (not b!3968309)))

(declare-fun t!330731 () Bool)

(declare-fun tb!239565 () Bool)

(assert (=> (and b!3968148 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))) t!330731) tb!239565))

(declare-fun b!3968316 () Bool)

(declare-fun e!2457837 () Bool)

(declare-fun tp!1209351 () Bool)

(assert (=> b!3968316 (= e!2457837 (and (inv!56535 (c!688481 (dynLambda!18054 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (value!209931 (h!47723 prefixTokens!80))))) tp!1209351))))

(declare-fun result!290054 () Bool)

(assert (=> tb!239565 (= result!290054 (and (inv!56536 (dynLambda!18054 (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (value!209931 (h!47723 prefixTokens!80)))) e!2457837))))

(assert (= tb!239565 b!3968316))

(declare-fun m!4538945 () Bool)

(assert (=> b!3968316 m!4538945))

(declare-fun m!4538947 () Bool)

(assert (=> tb!239565 m!4538947))

(assert (=> b!3968309 t!330731))

(declare-fun b_and!304963 () Bool)

(assert (= b_and!304951 (and (=> t!330731 result!290054) b_and!304963)))

(declare-fun tb!239567 () Bool)

(declare-fun t!330733 () Bool)

(assert (=> (and b!3968134 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))) t!330733) tb!239567))

(declare-fun result!290056 () Bool)

(assert (= result!290056 result!290054))

(assert (=> b!3968309 t!330733))

(declare-fun b_and!304965 () Bool)

(assert (= b_and!304953 (and (=> t!330733 result!290056) b_and!304965)))

(declare-fun tb!239569 () Bool)

(declare-fun t!330735 () Bool)

(assert (=> (and b!3968154 (= (toChars!8985 (transformation!6642 (h!47724 rules!2768))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))) t!330735) tb!239569))

(declare-fun result!290058 () Bool)

(assert (= result!290058 result!290054))

(assert (=> b!3968309 t!330735))

(declare-fun b_and!304967 () Bool)

(assert (= b_and!304955 (and (=> t!330735 result!290058) b_and!304967)))

(declare-fun m!4538949 () Bool)

(assert (=> d!1175840 m!4538949))

(declare-fun m!4538951 () Bool)

(assert (=> b!3968309 m!4538951))

(assert (=> b!3968309 m!4538951))

(declare-fun m!4538953 () Bool)

(assert (=> b!3968309 m!4538953))

(declare-fun m!4538955 () Bool)

(assert (=> b!3968310 m!4538955))

(assert (=> b!3968143 d!1175840))

(declare-fun b!3968317 () Bool)

(declare-fun e!2457839 () Bool)

(assert (=> b!3968317 (= e!2457839 (inv!17 (value!209931 (h!47723 prefixTokens!80))))))

(declare-fun b!3968318 () Bool)

(declare-fun e!2457840 () Bool)

(assert (=> b!3968318 (= e!2457840 (inv!16 (value!209931 (h!47723 prefixTokens!80))))))

(declare-fun b!3968319 () Bool)

(declare-fun e!2457838 () Bool)

(assert (=> b!3968319 (= e!2457838 (inv!15 (value!209931 (h!47723 prefixTokens!80))))))

(declare-fun d!1175844 () Bool)

(declare-fun c!688519 () Bool)

(assert (=> d!1175844 (= c!688519 ((_ is IntegerValue!20616) (value!209931 (h!47723 prefixTokens!80))))))

(assert (=> d!1175844 (= (inv!21 (value!209931 (h!47723 prefixTokens!80))) e!2457840)))

(declare-fun b!3968320 () Bool)

(assert (=> b!3968320 (= e!2457840 e!2457839)))

(declare-fun c!688520 () Bool)

(assert (=> b!3968320 (= c!688520 ((_ is IntegerValue!20617) (value!209931 (h!47723 prefixTokens!80))))))

(declare-fun b!3968321 () Bool)

(declare-fun res!1606342 () Bool)

(assert (=> b!3968321 (=> res!1606342 e!2457838)))

(assert (=> b!3968321 (= res!1606342 (not ((_ is IntegerValue!20618) (value!209931 (h!47723 prefixTokens!80)))))))

(assert (=> b!3968321 (= e!2457839 e!2457838)))

(assert (= (and d!1175844 c!688519) b!3968318))

(assert (= (and d!1175844 (not c!688519)) b!3968320))

(assert (= (and b!3968320 c!688520) b!3968317))

(assert (= (and b!3968320 (not c!688520)) b!3968321))

(assert (= (and b!3968321 (not res!1606342)) b!3968319))

(declare-fun m!4538965 () Bool)

(assert (=> b!3968317 m!4538965))

(declare-fun m!4538967 () Bool)

(assert (=> b!3968318 m!4538967))

(declare-fun m!4538969 () Bool)

(assert (=> b!3968319 m!4538969))

(assert (=> b!3968153 d!1175844))

(declare-fun b!3968326 () Bool)

(declare-fun e!2457843 () Bool)

(declare-fun tp!1209354 () Bool)

(assert (=> b!3968326 (= e!2457843 (and tp_is_empty!20065 tp!1209354))))

(assert (=> b!3968145 (= tp!1209335 e!2457843)))

(assert (= (and b!3968145 ((_ is Cons!42301) (t!330714 suffixResult!91))) b!3968326))

(declare-fun b!3968327 () Bool)

(declare-fun e!2457844 () Bool)

(declare-fun tp!1209355 () Bool)

(assert (=> b!3968327 (= e!2457844 (and tp_is_empty!20065 tp!1209355))))

(assert (=> b!3968136 (= tp!1209340 e!2457844)))

(assert (= (and b!3968136 ((_ is Cons!42301) (t!330714 suffix!1176))) b!3968327))

(declare-fun b!3968341 () Bool)

(declare-fun b_free!109761 () Bool)

(declare-fun b_next!110465 () Bool)

(assert (=> b!3968341 (= b_free!109761 (not b_next!110465))))

(declare-fun tp!1209366 () Bool)

(declare-fun b_and!304969 () Bool)

(assert (=> b!3968341 (= tp!1209366 b_and!304969)))

(declare-fun b_free!109763 () Bool)

(declare-fun b_next!110467 () Bool)

(assert (=> b!3968341 (= b_free!109763 (not b_next!110467))))

(declare-fun t!330737 () Bool)

(declare-fun tb!239571 () Bool)

(assert (=> (and b!3968341 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 suffixTokens!72))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))) t!330737) tb!239571))

(declare-fun result!290064 () Bool)

(assert (= result!290064 result!290038))

(assert (=> b!3968209 t!330737))

(declare-fun tb!239573 () Bool)

(declare-fun t!330739 () Bool)

(assert (=> (and b!3968341 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 suffixTokens!72))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))) t!330739) tb!239573))

(declare-fun result!290066 () Bool)

(assert (= result!290066 result!290054))

(assert (=> b!3968309 t!330739))

(declare-fun tp!1209370 () Bool)

(declare-fun b_and!304971 () Bool)

(assert (=> b!3968341 (= tp!1209370 (and (=> t!330737 result!290064) (=> t!330739 result!290066) b_and!304971))))

(declare-fun e!2457861 () Bool)

(declare-fun b!3968340 () Bool)

(declare-fun tp!1209367 () Bool)

(declare-fun e!2457857 () Bool)

(assert (=> b!3968340 (= e!2457861 (and tp!1209367 (inv!56530 (tag!7502 (rule!9630 (h!47723 (t!330716 suffixTokens!72))))) (inv!56534 (transformation!6642 (rule!9630 (h!47723 (t!330716 suffixTokens!72))))) e!2457857))))

(assert (=> b!3968341 (= e!2457857 (and tp!1209366 tp!1209370))))

(declare-fun tp!1209368 () Bool)

(declare-fun b!3968339 () Bool)

(declare-fun e!2457859 () Bool)

(assert (=> b!3968339 (= e!2457859 (and (inv!21 (value!209931 (h!47723 (t!330716 suffixTokens!72)))) e!2457861 tp!1209368))))

(declare-fun e!2457862 () Bool)

(assert (=> b!3968138 (= tp!1209343 e!2457862)))

(declare-fun b!3968338 () Bool)

(declare-fun tp!1209369 () Bool)

(assert (=> b!3968338 (= e!2457862 (and (inv!56533 (h!47723 (t!330716 suffixTokens!72))) e!2457859 tp!1209369))))

(assert (= b!3968340 b!3968341))

(assert (= b!3968339 b!3968340))

(assert (= b!3968338 b!3968339))

(assert (= (and b!3968138 ((_ is Cons!42303) (t!330716 suffixTokens!72))) b!3968338))

(declare-fun m!4538973 () Bool)

(assert (=> b!3968340 m!4538973))

(declare-fun m!4538975 () Bool)

(assert (=> b!3968340 m!4538975))

(declare-fun m!4538977 () Bool)

(assert (=> b!3968339 m!4538977))

(declare-fun m!4538979 () Bool)

(assert (=> b!3968338 m!4538979))

(declare-fun b!3968360 () Bool)

(declare-fun b_free!109765 () Bool)

(declare-fun b_next!110469 () Bool)

(assert (=> b!3968360 (= b_free!109765 (not b_next!110469))))

(declare-fun tp!1209382 () Bool)

(declare-fun b_and!304973 () Bool)

(assert (=> b!3968360 (= tp!1209382 b_and!304973)))

(declare-fun b_free!109767 () Bool)

(declare-fun b_next!110471 () Bool)

(assert (=> b!3968360 (= b_free!109767 (not b_next!110471))))

(declare-fun t!330741 () Bool)

(declare-fun tb!239575 () Bool)

(assert (=> (and b!3968360 (= (toChars!8985 (transformation!6642 (h!47724 (t!330717 rules!2768)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))) t!330741) tb!239575))

(declare-fun result!290070 () Bool)

(assert (= result!290070 result!290038))

(assert (=> b!3968209 t!330741))

(declare-fun tb!239577 () Bool)

(declare-fun t!330743 () Bool)

(assert (=> (and b!3968360 (= (toChars!8985 (transformation!6642 (h!47724 (t!330717 rules!2768)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))) t!330743) tb!239577))

(declare-fun result!290072 () Bool)

(assert (= result!290072 result!290054))

(assert (=> b!3968309 t!330743))

(declare-fun tp!1209379 () Bool)

(declare-fun b_and!304975 () Bool)

(assert (=> b!3968360 (= tp!1209379 (and (=> t!330741 result!290070) (=> t!330743 result!290072) b_and!304975))))

(declare-fun e!2457876 () Bool)

(assert (=> b!3968360 (= e!2457876 (and tp!1209382 tp!1209379))))

(declare-fun tp!1209381 () Bool)

(declare-fun b!3968359 () Bool)

(declare-fun e!2457875 () Bool)

(assert (=> b!3968359 (= e!2457875 (and tp!1209381 (inv!56530 (tag!7502 (h!47724 (t!330717 rules!2768)))) (inv!56534 (transformation!6642 (h!47724 (t!330717 rules!2768)))) e!2457876))))

(declare-fun b!3968358 () Bool)

(declare-fun e!2457877 () Bool)

(declare-fun tp!1209380 () Bool)

(assert (=> b!3968358 (= e!2457877 (and e!2457875 tp!1209380))))

(assert (=> b!3968137 (= tp!1209337 e!2457877)))

(assert (= b!3968359 b!3968360))

(assert (= b!3968358 b!3968359))

(assert (= (and b!3968137 ((_ is Cons!42304) (t!330717 rules!2768))) b!3968358))

(declare-fun m!4538981 () Bool)

(assert (=> b!3968359 m!4538981))

(declare-fun m!4538983 () Bool)

(assert (=> b!3968359 m!4538983))

(declare-fun b!3968361 () Bool)

(declare-fun e!2457879 () Bool)

(declare-fun tp!1209383 () Bool)

(assert (=> b!3968361 (= e!2457879 (and tp_is_empty!20065 tp!1209383))))

(assert (=> b!3968150 (= tp!1209332 e!2457879)))

(assert (= (and b!3968150 ((_ is Cons!42301) (t!330714 prefix!426))) b!3968361))

(declare-fun b!3968372 () Bool)

(declare-fun e!2457882 () Bool)

(assert (=> b!3968372 (= e!2457882 tp_is_empty!20065)))

(declare-fun b!3968373 () Bool)

(declare-fun tp!1209397 () Bool)

(declare-fun tp!1209398 () Bool)

(assert (=> b!3968373 (= e!2457882 (and tp!1209397 tp!1209398))))

(declare-fun b!3968375 () Bool)

(declare-fun tp!1209395 () Bool)

(declare-fun tp!1209396 () Bool)

(assert (=> b!3968375 (= e!2457882 (and tp!1209395 tp!1209396))))

(declare-fun b!3968374 () Bool)

(declare-fun tp!1209394 () Bool)

(assert (=> b!3968374 (= e!2457882 tp!1209394)))

(assert (=> b!3968151 (= tp!1209333 e!2457882)))

(assert (= (and b!3968151 ((_ is ElementMatch!11547) (regex!6642 (h!47724 rules!2768)))) b!3968372))

(assert (= (and b!3968151 ((_ is Concat!18420) (regex!6642 (h!47724 rules!2768)))) b!3968373))

(assert (= (and b!3968151 ((_ is Star!11547) (regex!6642 (h!47724 rules!2768)))) b!3968374))

(assert (= (and b!3968151 ((_ is Union!11547) (regex!6642 (h!47724 rules!2768)))) b!3968375))

(declare-fun b!3968376 () Bool)

(declare-fun e!2457883 () Bool)

(assert (=> b!3968376 (= e!2457883 tp_is_empty!20065)))

(declare-fun b!3968377 () Bool)

(declare-fun tp!1209402 () Bool)

(declare-fun tp!1209403 () Bool)

(assert (=> b!3968377 (= e!2457883 (and tp!1209402 tp!1209403))))

(declare-fun b!3968379 () Bool)

(declare-fun tp!1209400 () Bool)

(declare-fun tp!1209401 () Bool)

(assert (=> b!3968379 (= e!2457883 (and tp!1209400 tp!1209401))))

(declare-fun b!3968378 () Bool)

(declare-fun tp!1209399 () Bool)

(assert (=> b!3968378 (= e!2457883 tp!1209399)))

(assert (=> b!3968142 (= tp!1209338 e!2457883)))

(assert (= (and b!3968142 ((_ is ElementMatch!11547) (regex!6642 (rule!9630 (h!47723 suffixTokens!72))))) b!3968376))

(assert (= (and b!3968142 ((_ is Concat!18420) (regex!6642 (rule!9630 (h!47723 suffixTokens!72))))) b!3968377))

(assert (= (and b!3968142 ((_ is Star!11547) (regex!6642 (rule!9630 (h!47723 suffixTokens!72))))) b!3968378))

(assert (= (and b!3968142 ((_ is Union!11547) (regex!6642 (rule!9630 (h!47723 suffixTokens!72))))) b!3968379))

(declare-fun b!3968380 () Bool)

(declare-fun e!2457884 () Bool)

(assert (=> b!3968380 (= e!2457884 tp_is_empty!20065)))

(declare-fun b!3968381 () Bool)

(declare-fun tp!1209407 () Bool)

(declare-fun tp!1209408 () Bool)

(assert (=> b!3968381 (= e!2457884 (and tp!1209407 tp!1209408))))

(declare-fun b!3968383 () Bool)

(declare-fun tp!1209405 () Bool)

(declare-fun tp!1209406 () Bool)

(assert (=> b!3968383 (= e!2457884 (and tp!1209405 tp!1209406))))

(declare-fun b!3968382 () Bool)

(declare-fun tp!1209404 () Bool)

(assert (=> b!3968382 (= e!2457884 tp!1209404)))

(assert (=> b!3968141 (= tp!1209339 e!2457884)))

(assert (= (and b!3968141 ((_ is ElementMatch!11547) (regex!6642 (rule!9630 (h!47723 prefixTokens!80))))) b!3968380))

(assert (= (and b!3968141 ((_ is Concat!18420) (regex!6642 (rule!9630 (h!47723 prefixTokens!80))))) b!3968381))

(assert (= (and b!3968141 ((_ is Star!11547) (regex!6642 (rule!9630 (h!47723 prefixTokens!80))))) b!3968382))

(assert (= (and b!3968141 ((_ is Union!11547) (regex!6642 (rule!9630 (h!47723 prefixTokens!80))))) b!3968383))

(declare-fun b!3968384 () Bool)

(declare-fun e!2457885 () Bool)

(declare-fun tp!1209409 () Bool)

(assert (=> b!3968384 (= e!2457885 (and tp_is_empty!20065 tp!1209409))))

(assert (=> b!3968152 (= tp!1209342 e!2457885)))

(assert (= (and b!3968152 ((_ is Cons!42301) (originalCharacters!7242 (h!47723 suffixTokens!72)))) b!3968384))

(declare-fun b!3968388 () Bool)

(declare-fun b_free!109769 () Bool)

(declare-fun b_next!110473 () Bool)

(assert (=> b!3968388 (= b_free!109769 (not b_next!110473))))

(declare-fun tp!1209410 () Bool)

(declare-fun b_and!304977 () Bool)

(assert (=> b!3968388 (= tp!1209410 b_and!304977)))

(declare-fun b_free!109771 () Bool)

(declare-fun b_next!110475 () Bool)

(assert (=> b!3968388 (= b_free!109771 (not b_next!110475))))

(declare-fun tb!239579 () Bool)

(declare-fun t!330745 () Bool)

(assert (=> (and b!3968388 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 prefixTokens!80))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72))))) t!330745) tb!239579))

(declare-fun result!290076 () Bool)

(assert (= result!290076 result!290038))

(assert (=> b!3968209 t!330745))

(declare-fun t!330747 () Bool)

(declare-fun tb!239581 () Bool)

(assert (=> (and b!3968388 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 prefixTokens!80))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80))))) t!330747) tb!239581))

(declare-fun result!290078 () Bool)

(assert (= result!290078 result!290054))

(assert (=> b!3968309 t!330747))

(declare-fun tp!1209414 () Bool)

(declare-fun b_and!304979 () Bool)

(assert (=> b!3968388 (= tp!1209414 (and (=> t!330745 result!290076) (=> t!330747 result!290078) b_and!304979))))

(declare-fun b!3968387 () Bool)

(declare-fun tp!1209411 () Bool)

(declare-fun e!2457886 () Bool)

(declare-fun e!2457890 () Bool)

(assert (=> b!3968387 (= e!2457890 (and tp!1209411 (inv!56530 (tag!7502 (rule!9630 (h!47723 (t!330716 prefixTokens!80))))) (inv!56534 (transformation!6642 (rule!9630 (h!47723 (t!330716 prefixTokens!80))))) e!2457886))))

(assert (=> b!3968388 (= e!2457886 (and tp!1209410 tp!1209414))))

(declare-fun b!3968386 () Bool)

(declare-fun tp!1209412 () Bool)

(declare-fun e!2457888 () Bool)

(assert (=> b!3968386 (= e!2457888 (and (inv!21 (value!209931 (h!47723 (t!330716 prefixTokens!80)))) e!2457890 tp!1209412))))

(declare-fun e!2457891 () Bool)

(assert (=> b!3968143 (= tp!1209329 e!2457891)))

(declare-fun b!3968385 () Bool)

(declare-fun tp!1209413 () Bool)

(assert (=> b!3968385 (= e!2457891 (and (inv!56533 (h!47723 (t!330716 prefixTokens!80))) e!2457888 tp!1209413))))

(assert (= b!3968387 b!3968388))

(assert (= b!3968386 b!3968387))

(assert (= b!3968385 b!3968386))

(assert (= (and b!3968143 ((_ is Cons!42303) (t!330716 prefixTokens!80))) b!3968385))

(declare-fun m!4538985 () Bool)

(assert (=> b!3968387 m!4538985))

(declare-fun m!4538987 () Bool)

(assert (=> b!3968387 m!4538987))

(declare-fun m!4538989 () Bool)

(assert (=> b!3968386 m!4538989))

(declare-fun m!4538991 () Bool)

(assert (=> b!3968385 m!4538991))

(declare-fun b!3968393 () Bool)

(declare-fun e!2457894 () Bool)

(declare-fun tp!1209415 () Bool)

(assert (=> b!3968393 (= e!2457894 (and tp_is_empty!20065 tp!1209415))))

(assert (=> b!3968153 (= tp!1209344 e!2457894)))

(assert (= (and b!3968153 ((_ is Cons!42301) (originalCharacters!7242 (h!47723 prefixTokens!80)))) b!3968393))

(declare-fun b_lambda!116013 () Bool)

(assert (= b_lambda!116007 (or (and b!3968388 b_free!109771 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 prefixTokens!80))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))))) (and b!3968341 b_free!109763 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 suffixTokens!72))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))))) (and b!3968154 b_free!109759 (= (toChars!8985 (transformation!6642 (h!47724 rules!2768))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))))) (and b!3968134 b_free!109755) (and b!3968148 b_free!109751 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))))) (and b!3968360 b_free!109767 (= (toChars!8985 (transformation!6642 (h!47724 (t!330717 rules!2768)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))))) b_lambda!116013)))

(declare-fun b_lambda!116015 () Bool)

(assert (= b_lambda!116011 (or (and b!3968360 b_free!109767 (= (toChars!8985 (transformation!6642 (h!47724 (t!330717 rules!2768)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))))) (and b!3968134 b_free!109755 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 suffixTokens!72)))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))))) (and b!3968388 b_free!109771 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 prefixTokens!80))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))))) (and b!3968148 b_free!109751) (and b!3968341 b_free!109763 (= (toChars!8985 (transformation!6642 (rule!9630 (h!47723 (t!330716 suffixTokens!72))))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))))) (and b!3968154 b_free!109759 (= (toChars!8985 (transformation!6642 (h!47724 rules!2768))) (toChars!8985 (transformation!6642 (rule!9630 (h!47723 prefixTokens!80)))))) b_lambda!116015)))

(check-sat (not b!3968339) (not b_next!110457) (not b!3968257) (not b!3968318) (not b!3968382) (not b_next!110463) (not b!3968361) b_and!304967 (not b!3968379) (not b!3968393) (not b!3968378) b_and!304963 (not b!3968215) b_and!304965 (not b!3968203) (not b_lambda!116013) (not b!3968375) (not b!3968381) b_and!304969 (not b!3968358) (not b_next!110461) (not b_next!110473) (not b!3968200) (not b!3968258) (not b!3968198) (not b_next!110471) b_and!304947 (not d!1175784) (not b!3968317) (not b!3968251) (not b_next!110475) (not b!3968338) (not b!3968374) (not d!1175798) (not bm!285586) b_and!304977 (not b!3968278) (not b!3968310) (not b!3968384) (not d!1175806) (not b!3968277) (not b!3968327) (not d!1175840) b_and!304979 (not b!3968202) (not b!3968256) (not b!3968326) (not b!3968185) (not b!3968373) (not b!3968383) (not b!3968316) (not b!3968304) b_and!304973 (not d!1175794) (not tb!239565) (not b!3968254) (not b_next!110453) (not b!3968255) (not b!3968252) (not b_lambda!116015) b_and!304939 (not b!3968273) (not d!1175800) (not b_next!110465) (not d!1175824) (not d!1175836) (not b!3968359) (not b_next!110467) (not b!3968168) (not b!3968377) (not b_next!110459) (not d!1175828) (not b_next!110455) (not b!3968305) (not b!3968306) (not d!1175802) (not d!1175832) (not b!3968385) (not b!3968340) (not b!3968309) (not b!3968197) b_and!304975 (not tb!239553) (not b!3968253) (not b!3968184) tp_is_empty!20065 (not b!3968210) (not b!3968319) (not b!3968209) (not b!3968170) (not b!3968386) (not b!3968171) (not b!3968387) (not b_next!110469) b_and!304971 (not b!3968276) b_and!304943)
(check-sat b_and!304963 b_and!304965 (not b_next!110475) b_and!304977 (not b_next!110457) b_and!304979 b_and!304973 (not b_next!110453) b_and!304939 (not b_next!110465) (not b_next!110455) b_and!304975 (not b_next!110463) b_and!304967 b_and!304969 (not b_next!110461) (not b_next!110473) (not b_next!110471) b_and!304947 (not b_next!110467) (not b_next!110459) b_and!304943 (not b_next!110469) b_and!304971)
