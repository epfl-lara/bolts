; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371048 () Bool)

(assert start!371048)

(declare-fun b!3947896 () Bool)

(declare-fun b_free!108269 () Bool)

(declare-fun b_next!108973 () Bool)

(assert (=> b!3947896 (= b_free!108269 (not b_next!108973))))

(declare-fun tp!1202148 () Bool)

(declare-fun b_and!302195 () Bool)

(assert (=> b!3947896 (= tp!1202148 b_and!302195)))

(declare-fun b_free!108271 () Bool)

(declare-fun b_next!108975 () Bool)

(assert (=> b!3947896 (= b_free!108271 (not b_next!108975))))

(declare-fun tp!1202145 () Bool)

(declare-fun b_and!302197 () Bool)

(assert (=> b!3947896 (= tp!1202145 b_and!302197)))

(declare-fun b!3947908 () Bool)

(declare-fun b_free!108273 () Bool)

(declare-fun b_next!108977 () Bool)

(assert (=> b!3947908 (= b_free!108273 (not b_next!108977))))

(declare-fun tp!1202138 () Bool)

(declare-fun b_and!302199 () Bool)

(assert (=> b!3947908 (= tp!1202138 b_and!302199)))

(declare-fun b_free!108275 () Bool)

(declare-fun b_next!108979 () Bool)

(assert (=> b!3947908 (= b_free!108275 (not b_next!108979))))

(declare-fun tp!1202147 () Bool)

(declare-fun b_and!302201 () Bool)

(assert (=> b!3947908 (= tp!1202147 b_and!302201)))

(declare-fun b!3947895 () Bool)

(declare-fun b_free!108277 () Bool)

(declare-fun b_next!108981 () Bool)

(assert (=> b!3947895 (= b_free!108277 (not b_next!108981))))

(declare-fun tp!1202137 () Bool)

(declare-fun b_and!302203 () Bool)

(assert (=> b!3947895 (= tp!1202137 b_and!302203)))

(declare-fun b_free!108279 () Bool)

(declare-fun b_next!108983 () Bool)

(assert (=> b!3947895 (= b_free!108279 (not b_next!108983))))

(declare-fun tp!1202135 () Bool)

(declare-fun b_and!302205 () Bool)

(assert (=> b!3947895 (= tp!1202135 b_and!302205)))

(declare-fun b!3947887 () Bool)

(declare-fun e!2443079 () Bool)

(declare-fun e!2443072 () Bool)

(assert (=> b!3947887 (= e!2443079 e!2443072)))

(declare-fun res!1597400 () Bool)

(assert (=> b!3947887 (=> (not res!1597400) (not e!2443072))))

(declare-datatypes ((List!42065 0))(
  ( (Nil!41941) (Cons!41941 (h!47361 (_ BitVec 16)) (t!328114 List!42065)) )
))
(declare-datatypes ((TokenValue!6790 0))(
  ( (FloatLiteralValue!13580 (text!47975 List!42065)) (TokenValueExt!6789 (__x!25797 Int)) (Broken!33950 (value!207568 List!42065)) (Object!6913) (End!6790) (Def!6790) (Underscore!6790) (Match!6790) (Else!6790) (Error!6790) (Case!6790) (If!6790) (Extends!6790) (Abstract!6790) (Class!6790) (Val!6790) (DelimiterValue!13580 (del!6850 List!42065)) (KeywordValue!6796 (value!207569 List!42065)) (CommentValue!13580 (value!207570 List!42065)) (WhitespaceValue!13580 (value!207571 List!42065)) (IndentationValue!6790 (value!207572 List!42065)) (String!47667) (Int32!6790) (Broken!33951 (value!207573 List!42065)) (Boolean!6791) (Unit!60471) (OperatorValue!6793 (op!6850 List!42065)) (IdentifierValue!13580 (value!207574 List!42065)) (IdentifierValue!13581 (value!207575 List!42065)) (WhitespaceValue!13581 (value!207576 List!42065)) (True!13580) (False!13580) (Broken!33952 (value!207577 List!42065)) (Broken!33953 (value!207578 List!42065)) (True!13581) (RightBrace!6790) (RightBracket!6790) (Colon!6790) (Null!6790) (Comma!6790) (LeftBracket!6790) (False!13581) (LeftBrace!6790) (ImaginaryLiteralValue!6790 (text!47976 List!42065)) (StringLiteralValue!20370 (value!207579 List!42065)) (EOFValue!6790 (value!207580 List!42065)) (IdentValue!6790 (value!207581 List!42065)) (DelimiterValue!13581 (value!207582 List!42065)) (DedentValue!6790 (value!207583 List!42065)) (NewLineValue!6790 (value!207584 List!42065)) (IntegerValue!20370 (value!207585 (_ BitVec 32)) (text!47977 List!42065)) (IntegerValue!20371 (value!207586 Int) (text!47978 List!42065)) (Times!6790) (Or!6790) (Equal!6790) (Minus!6790) (Broken!33954 (value!207587 List!42065)) (And!6790) (Div!6790) (LessEqual!6790) (Mod!6790) (Concat!18255) (Not!6790) (Plus!6790) (SpaceValue!6790 (value!207588 List!42065)) (IntegerValue!20372 (value!207589 Int) (text!47979 List!42065)) (StringLiteralValue!20371 (text!47980 List!42065)) (FloatLiteralValue!13581 (text!47981 List!42065)) (BytesLiteralValue!6790 (value!207590 List!42065)) (CommentValue!13581 (value!207591 List!42065)) (StringLiteralValue!20372 (value!207592 List!42065)) (ErrorTokenValue!6790 (msg!6851 List!42065)) )
))
(declare-datatypes ((C!23116 0))(
  ( (C!23117 (val!13652 Int)) )
))
(declare-datatypes ((Regex!11465 0))(
  ( (ElementMatch!11465 (c!685676 C!23116)) (Concat!18256 (regOne!23442 Regex!11465) (regTwo!23442 Regex!11465)) (EmptyExpr!11465) (Star!11465 (reg!11794 Regex!11465)) (EmptyLang!11465) (Union!11465 (regOne!23443 Regex!11465) (regTwo!23443 Regex!11465)) )
))
(declare-datatypes ((String!47668 0))(
  ( (String!47669 (value!207593 String)) )
))
(declare-datatypes ((List!42066 0))(
  ( (Nil!41942) (Cons!41942 (h!47362 C!23116) (t!328115 List!42066)) )
))
(declare-datatypes ((IArray!25547 0))(
  ( (IArray!25548 (innerList!12831 List!42066)) )
))
(declare-datatypes ((Conc!12771 0))(
  ( (Node!12771 (left!31929 Conc!12771) (right!32259 Conc!12771) (csize!25772 Int) (cheight!12982 Int)) (Leaf!19758 (xs!16077 IArray!25547) (csize!25773 Int)) (Empty!12771) )
))
(declare-datatypes ((BalanceConc!25136 0))(
  ( (BalanceConc!25137 (c!685677 Conc!12771)) )
))
(declare-datatypes ((TokenValueInjection!13008 0))(
  ( (TokenValueInjection!13009 (toValue!9036 Int) (toChars!8895 Int)) )
))
(declare-datatypes ((Rule!12920 0))(
  ( (Rule!12921 (regex!6560 Regex!11465) (tag!7420 String!47668) (isSeparator!6560 Bool) (transformation!6560 TokenValueInjection!13008)) )
))
(declare-datatypes ((Token!12258 0))(
  ( (Token!12259 (value!207594 TokenValue!6790) (rule!9526 Rule!12920) (size!31444 Int) (originalCharacters!7160 List!42066)) )
))
(declare-datatypes ((tuple2!41230 0))(
  ( (tuple2!41231 (_1!23749 Token!12258) (_2!23749 List!42066)) )
))
(declare-datatypes ((Option!8980 0))(
  ( (None!8979) (Some!8979 (v!39319 tuple2!41230)) )
))
(declare-fun lt!1380068 () Option!8980)

(get-info :version)

(assert (=> b!3947887 (= res!1597400 ((_ is Some!8979) lt!1380068))))

(declare-datatypes ((LexerInterface!6149 0))(
  ( (LexerInterfaceExt!6146 (__x!25798 Int)) (Lexer!6147) )
))
(declare-fun thiss!20629 () LexerInterface!6149)

(declare-fun lt!1380072 () List!42066)

(declare-datatypes ((List!42067 0))(
  ( (Nil!41943) (Cons!41943 (h!47363 Rule!12920) (t!328116 List!42067)) )
))
(declare-fun rules!2768 () List!42067)

(declare-fun maxPrefix!3453 (LexerInterface!6149 List!42067 List!42066) Option!8980)

(assert (=> b!3947887 (= lt!1380068 (maxPrefix!3453 thiss!20629 rules!2768 lt!1380072))))

(declare-fun b!3947888 () Bool)

(declare-fun e!2443076 () Bool)

(assert (=> b!3947888 (= e!2443076 e!2443079)))

(declare-fun res!1597398 () Bool)

(assert (=> b!3947888 (=> (not res!1597398) (not e!2443079))))

(declare-fun suffixResult!91 () List!42066)

(declare-datatypes ((List!42068 0))(
  ( (Nil!41944) (Cons!41944 (h!47364 Token!12258) (t!328117 List!42068)) )
))
(declare-fun prefixTokens!80 () List!42068)

(declare-fun suffixTokens!72 () List!42068)

(declare-datatypes ((tuple2!41232 0))(
  ( (tuple2!41233 (_1!23750 List!42068) (_2!23750 List!42066)) )
))
(declare-fun lexList!1917 (LexerInterface!6149 List!42067 List!42066) tuple2!41232)

(declare-fun ++!10877 (List!42068 List!42068) List!42068)

(assert (=> b!3947888 (= res!1597398 (= (lexList!1917 thiss!20629 rules!2768 lt!1380072) (tuple2!41233 (++!10877 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!42066)

(declare-fun suffix!1176 () List!42066)

(declare-fun ++!10878 (List!42066 List!42066) List!42066)

(assert (=> b!3947888 (= lt!1380072 (++!10878 prefix!426 suffix!1176))))

(declare-fun b!3947889 () Bool)

(declare-fun res!1597401 () Bool)

(assert (=> b!3947889 (=> (not res!1597401) (not e!2443079))))

(assert (=> b!3947889 (= res!1597401 (= (lexList!1917 thiss!20629 rules!2768 suffix!1176) (tuple2!41233 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3947890 () Bool)

(declare-fun res!1597395 () Bool)

(assert (=> b!3947890 (=> (not res!1597395) (not e!2443076))))

(declare-fun isEmpty!25038 (List!42067) Bool)

(assert (=> b!3947890 (= res!1597395 (not (isEmpty!25038 rules!2768)))))

(declare-fun b!3947891 () Bool)

(declare-fun e!2443075 () Bool)

(declare-fun e!2443067 () Bool)

(declare-fun tp!1202144 () Bool)

(declare-fun inv!56170 (Token!12258) Bool)

(assert (=> b!3947891 (= e!2443075 (and (inv!56170 (h!47364 suffixTokens!72)) e!2443067 tp!1202144))))

(declare-fun b!3947892 () Bool)

(declare-fun res!1597397 () Bool)

(assert (=> b!3947892 (=> (not res!1597397) (not e!2443076))))

(declare-fun isEmpty!25039 (List!42066) Bool)

(assert (=> b!3947892 (= res!1597397 (not (isEmpty!25039 prefix!426)))))

(declare-fun b!3947893 () Bool)

(declare-fun e!2443068 () Bool)

(declare-fun tp_is_empty!19901 () Bool)

(declare-fun tp!1202136 () Bool)

(assert (=> b!3947893 (= e!2443068 (and tp_is_empty!19901 tp!1202136))))

(declare-fun b!3947894 () Bool)

(declare-fun res!1597399 () Bool)

(assert (=> b!3947894 (=> (not res!1597399) (not e!2443076))))

(declare-fun rulesInvariant!5492 (LexerInterface!6149 List!42067) Bool)

(assert (=> b!3947894 (= res!1597399 (rulesInvariant!5492 thiss!20629 rules!2768))))

(declare-fun e!2443080 () Bool)

(assert (=> b!3947895 (= e!2443080 (and tp!1202137 tp!1202135))))

(declare-fun e!2443073 () Bool)

(assert (=> b!3947896 (= e!2443073 (and tp!1202148 tp!1202145))))

(declare-fun b!3947897 () Bool)

(declare-fun e!2443074 () Bool)

(declare-fun size!31445 (List!42066) Int)

(assert (=> b!3947897 (= e!2443074 (= (size!31444 (_1!23749 (v!39319 lt!1380068))) (size!31445 (originalCharacters!7160 (_1!23749 (v!39319 lt!1380068))))))))

(declare-fun e!2443070 () Bool)

(declare-fun tp!1202141 () Bool)

(declare-fun e!2443081 () Bool)

(declare-fun b!3947898 () Bool)

(declare-fun inv!56167 (String!47668) Bool)

(declare-fun inv!56171 (TokenValueInjection!13008) Bool)

(assert (=> b!3947898 (= e!2443070 (and tp!1202141 (inv!56167 (tag!7420 (rule!9526 (h!47364 prefixTokens!80)))) (inv!56171 (transformation!6560 (rule!9526 (h!47364 prefixTokens!80)))) e!2443081))))

(declare-fun b!3947899 () Bool)

(declare-fun res!1597403 () Bool)

(assert (=> b!3947899 (=> (not res!1597403) (not e!2443076))))

(declare-fun isEmpty!25040 (List!42068) Bool)

(assert (=> b!3947899 (= res!1597403 (not (isEmpty!25040 prefixTokens!80)))))

(declare-fun b!3947900 () Bool)

(declare-fun e!2443065 () Bool)

(declare-fun tp!1202142 () Bool)

(assert (=> b!3947900 (= e!2443065 (and tp_is_empty!19901 tp!1202142))))

(declare-fun b!3947901 () Bool)

(declare-fun e!2443086 () Bool)

(declare-fun e!2443071 () Bool)

(declare-fun tp!1202143 () Bool)

(assert (=> b!3947901 (= e!2443086 (and e!2443071 tp!1202143))))

(declare-fun tp!1202149 () Bool)

(declare-fun b!3947902 () Bool)

(declare-fun e!2443069 () Bool)

(declare-fun inv!21 (TokenValue!6790) Bool)

(assert (=> b!3947902 (= e!2443067 (and (inv!21 (value!207594 (h!47364 suffixTokens!72))) e!2443069 tp!1202149))))

(declare-fun b!3947903 () Bool)

(declare-fun e!2443085 () Bool)

(declare-fun tp!1202146 () Bool)

(assert (=> b!3947903 (= e!2443085 (and (inv!21 (value!207594 (h!47364 prefixTokens!80))) e!2443070 tp!1202146))))

(declare-fun b!3947904 () Bool)

(assert (=> b!3947904 (= e!2443072 (not true))))

(assert (=> b!3947904 e!2443074))

(declare-fun res!1597396 () Bool)

(assert (=> b!3947904 (=> (not res!1597396) (not e!2443074))))

(declare-fun lt!1380066 () List!42066)

(assert (=> b!3947904 (= res!1597396 (= (_2!23749 (v!39319 lt!1380068)) lt!1380066))))

(declare-fun lt!1380069 () List!42066)

(declare-datatypes ((Unit!60472 0))(
  ( (Unit!60473) )
))
(declare-fun lt!1380067 () Unit!60472)

(declare-fun lemmaSamePrefixThenSameSuffix!1858 (List!42066 List!42066 List!42066 List!42066 List!42066) Unit!60472)

(assert (=> b!3947904 (= lt!1380067 (lemmaSamePrefixThenSameSuffix!1858 lt!1380069 (_2!23749 (v!39319 lt!1380068)) lt!1380069 lt!1380066 lt!1380072))))

(declare-fun getSuffix!2100 (List!42066 List!42066) List!42066)

(assert (=> b!3947904 (= lt!1380066 (getSuffix!2100 lt!1380072 lt!1380069))))

(declare-fun isPrefix!3649 (List!42066 List!42066) Bool)

(assert (=> b!3947904 (isPrefix!3649 lt!1380069 (++!10878 lt!1380069 (_2!23749 (v!39319 lt!1380068))))))

(declare-fun lt!1380073 () Unit!60472)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2508 (List!42066 List!42066) Unit!60472)

(assert (=> b!3947904 (= lt!1380073 (lemmaConcatTwoListThenFirstIsPrefix!2508 lt!1380069 (_2!23749 (v!39319 lt!1380068))))))

(declare-fun list!15580 (BalanceConc!25136) List!42066)

(declare-fun charsOf!4378 (Token!12258) BalanceConc!25136)

(assert (=> b!3947904 (= lt!1380069 (list!15580 (charsOf!4378 (_1!23749 (v!39319 lt!1380068)))))))

(declare-fun ruleValid!2502 (LexerInterface!6149 Rule!12920) Bool)

(assert (=> b!3947904 (ruleValid!2502 thiss!20629 (rule!9526 (_1!23749 (v!39319 lt!1380068))))))

(declare-fun lt!1380070 () Unit!60472)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1578 (LexerInterface!6149 Rule!12920 List!42067) Unit!60472)

(assert (=> b!3947904 (= lt!1380070 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1578 thiss!20629 (rule!9526 (_1!23749 (v!39319 lt!1380068))) rules!2768))))

(declare-fun lt!1380071 () Unit!60472)

(declare-fun lemmaCharactersSize!1213 (Token!12258) Unit!60472)

(assert (=> b!3947904 (= lt!1380071 (lemmaCharactersSize!1213 (_1!23749 (v!39319 lt!1380068))))))

(declare-fun b!3947905 () Bool)

(declare-fun res!1597404 () Bool)

(assert (=> b!3947905 (=> (not res!1597404) (not e!2443074))))

(declare-fun apply!9791 (TokenValueInjection!13008 BalanceConc!25136) TokenValue!6790)

(declare-fun seqFromList!4819 (List!42066) BalanceConc!25136)

(assert (=> b!3947905 (= res!1597404 (= (value!207594 (_1!23749 (v!39319 lt!1380068))) (apply!9791 (transformation!6560 (rule!9526 (_1!23749 (v!39319 lt!1380068)))) (seqFromList!4819 lt!1380069))))))

(declare-fun b!3947906 () Bool)

(declare-fun tp!1202139 () Bool)

(assert (=> b!3947906 (= e!2443071 (and tp!1202139 (inv!56167 (tag!7420 (h!47363 rules!2768))) (inv!56171 (transformation!6560 (h!47363 rules!2768))) e!2443073))))

(declare-fun b!3947907 () Bool)

(declare-fun e!2443078 () Bool)

(declare-fun tp!1202134 () Bool)

(assert (=> b!3947907 (= e!2443078 (and tp_is_empty!19901 tp!1202134))))

(assert (=> b!3947908 (= e!2443081 (and tp!1202138 tp!1202147))))

(declare-fun res!1597402 () Bool)

(assert (=> start!371048 (=> (not res!1597402) (not e!2443076))))

(assert (=> start!371048 (= res!1597402 ((_ is Lexer!6147) thiss!20629))))

(assert (=> start!371048 e!2443076))

(assert (=> start!371048 e!2443078))

(assert (=> start!371048 true))

(assert (=> start!371048 e!2443065))

(assert (=> start!371048 e!2443086))

(declare-fun e!2443066 () Bool)

(assert (=> start!371048 e!2443066))

(assert (=> start!371048 e!2443075))

(assert (=> start!371048 e!2443068))

(declare-fun tp!1202150 () Bool)

(declare-fun b!3947909 () Bool)

(assert (=> b!3947909 (= e!2443069 (and tp!1202150 (inv!56167 (tag!7420 (rule!9526 (h!47364 suffixTokens!72)))) (inv!56171 (transformation!6560 (rule!9526 (h!47364 suffixTokens!72)))) e!2443080))))

(declare-fun b!3947910 () Bool)

(declare-fun tp!1202140 () Bool)

(assert (=> b!3947910 (= e!2443066 (and (inv!56170 (h!47364 prefixTokens!80)) e!2443085 tp!1202140))))

(assert (= (and start!371048 res!1597402) b!3947890))

(assert (= (and b!3947890 res!1597395) b!3947894))

(assert (= (and b!3947894 res!1597399) b!3947899))

(assert (= (and b!3947899 res!1597403) b!3947892))

(assert (= (and b!3947892 res!1597397) b!3947888))

(assert (= (and b!3947888 res!1597398) b!3947889))

(assert (= (and b!3947889 res!1597401) b!3947887))

(assert (= (and b!3947887 res!1597400) b!3947904))

(assert (= (and b!3947904 res!1597396) b!3947905))

(assert (= (and b!3947905 res!1597404) b!3947897))

(assert (= (and start!371048 ((_ is Cons!41942) suffixResult!91)) b!3947907))

(assert (= (and start!371048 ((_ is Cons!41942) suffix!1176)) b!3947900))

(assert (= b!3947906 b!3947896))

(assert (= b!3947901 b!3947906))

(assert (= (and start!371048 ((_ is Cons!41943) rules!2768)) b!3947901))

(assert (= b!3947898 b!3947908))

(assert (= b!3947903 b!3947898))

(assert (= b!3947910 b!3947903))

(assert (= (and start!371048 ((_ is Cons!41944) prefixTokens!80)) b!3947910))

(assert (= b!3947909 b!3947895))

(assert (= b!3947902 b!3947909))

(assert (= b!3947891 b!3947902))

(assert (= (and start!371048 ((_ is Cons!41944) suffixTokens!72)) b!3947891))

(assert (= (and start!371048 ((_ is Cons!41942) prefix!426)) b!3947893))

(declare-fun m!4516745 () Bool)

(assert (=> b!3947906 m!4516745))

(declare-fun m!4516747 () Bool)

(assert (=> b!3947906 m!4516747))

(declare-fun m!4516749 () Bool)

(assert (=> b!3947898 m!4516749))

(declare-fun m!4516751 () Bool)

(assert (=> b!3947898 m!4516751))

(declare-fun m!4516753 () Bool)

(assert (=> b!3947897 m!4516753))

(declare-fun m!4516755 () Bool)

(assert (=> b!3947903 m!4516755))

(declare-fun m!4516757 () Bool)

(assert (=> b!3947902 m!4516757))

(declare-fun m!4516759 () Bool)

(assert (=> b!3947890 m!4516759))

(declare-fun m!4516761 () Bool)

(assert (=> b!3947887 m!4516761))

(declare-fun m!4516763 () Bool)

(assert (=> b!3947888 m!4516763))

(declare-fun m!4516765 () Bool)

(assert (=> b!3947888 m!4516765))

(declare-fun m!4516767 () Bool)

(assert (=> b!3947888 m!4516767))

(declare-fun m!4516769 () Bool)

(assert (=> b!3947909 m!4516769))

(declare-fun m!4516771 () Bool)

(assert (=> b!3947909 m!4516771))

(declare-fun m!4516773 () Bool)

(assert (=> b!3947891 m!4516773))

(declare-fun m!4516775 () Bool)

(assert (=> b!3947899 m!4516775))

(declare-fun m!4516777 () Bool)

(assert (=> b!3947910 m!4516777))

(declare-fun m!4516779 () Bool)

(assert (=> b!3947892 m!4516779))

(declare-fun m!4516781 () Bool)

(assert (=> b!3947905 m!4516781))

(assert (=> b!3947905 m!4516781))

(declare-fun m!4516783 () Bool)

(assert (=> b!3947905 m!4516783))

(declare-fun m!4516785 () Bool)

(assert (=> b!3947889 m!4516785))

(declare-fun m!4516787 () Bool)

(assert (=> b!3947904 m!4516787))

(declare-fun m!4516789 () Bool)

(assert (=> b!3947904 m!4516789))

(declare-fun m!4516791 () Bool)

(assert (=> b!3947904 m!4516791))

(declare-fun m!4516793 () Bool)

(assert (=> b!3947904 m!4516793))

(declare-fun m!4516795 () Bool)

(assert (=> b!3947904 m!4516795))

(declare-fun m!4516797 () Bool)

(assert (=> b!3947904 m!4516797))

(declare-fun m!4516799 () Bool)

(assert (=> b!3947904 m!4516799))

(declare-fun m!4516801 () Bool)

(assert (=> b!3947904 m!4516801))

(declare-fun m!4516803 () Bool)

(assert (=> b!3947904 m!4516803))

(assert (=> b!3947904 m!4516791))

(declare-fun m!4516805 () Bool)

(assert (=> b!3947904 m!4516805))

(assert (=> b!3947904 m!4516787))

(declare-fun m!4516807 () Bool)

(assert (=> b!3947894 m!4516807))

(check-sat (not b!3947906) (not b!3947907) b_and!302195 (not b_next!108973) tp_is_empty!19901 b_and!302201 (not b!3947898) b_and!302205 (not b_next!108977) (not b!3947904) (not b_next!108979) (not b!3947891) (not b!3947892) (not b!3947910) (not b!3947905) (not b!3947899) (not b!3947889) (not b!3947897) (not b!3947893) (not b_next!108983) (not b!3947900) (not b!3947890) b_and!302199 (not b_next!108981) (not b!3947894) (not b_next!108975) (not b!3947909) (not b!3947902) (not b!3947888) (not b!3947901) b_and!302203 (not b!3947903) (not b!3947887) b_and!302197)
(check-sat b_and!302195 (not b_next!108973) (not b_next!108983) b_and!302199 b_and!302201 b_and!302205 (not b_next!108977) b_and!302203 b_and!302197 (not b_next!108979) (not b_next!108981) (not b_next!108975))
