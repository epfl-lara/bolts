; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340278 () Bool)

(assert start!340278)

(declare-fun b!3642849 () Bool)

(declare-fun b_free!95577 () Bool)

(declare-fun b_next!96281 () Bool)

(assert (=> b!3642849 (= b_free!95577 (not b_next!96281))))

(declare-fun tp!1111212 () Bool)

(declare-fun b_and!268691 () Bool)

(assert (=> b!3642849 (= tp!1111212 b_and!268691)))

(declare-fun b_free!95579 () Bool)

(declare-fun b_next!96283 () Bool)

(assert (=> b!3642849 (= b_free!95579 (not b_next!96283))))

(declare-fun tp!1111206 () Bool)

(declare-fun b_and!268693 () Bool)

(assert (=> b!3642849 (= tp!1111206 b_and!268693)))

(declare-fun b!3642837 () Bool)

(declare-fun b_free!95581 () Bool)

(declare-fun b_next!96285 () Bool)

(assert (=> b!3642837 (= b_free!95581 (not b_next!96285))))

(declare-fun tp!1111215 () Bool)

(declare-fun b_and!268695 () Bool)

(assert (=> b!3642837 (= tp!1111215 b_and!268695)))

(declare-fun b_free!95583 () Bool)

(declare-fun b_next!96287 () Bool)

(assert (=> b!3642837 (= b_free!95583 (not b_next!96287))))

(declare-fun tp!1111213 () Bool)

(declare-fun b_and!268697 () Bool)

(assert (=> b!3642837 (= tp!1111213 b_and!268697)))

(declare-fun b!3642833 () Bool)

(declare-fun b_free!95585 () Bool)

(declare-fun b_next!96289 () Bool)

(assert (=> b!3642833 (= b_free!95585 (not b_next!96289))))

(declare-fun tp!1111204 () Bool)

(declare-fun b_and!268699 () Bool)

(assert (=> b!3642833 (= tp!1111204 b_and!268699)))

(declare-fun b_free!95587 () Bool)

(declare-fun b_next!96291 () Bool)

(assert (=> b!3642833 (= b_free!95587 (not b_next!96291))))

(declare-fun tp!1111214 () Bool)

(declare-fun b_and!268701 () Bool)

(assert (=> b!3642833 (= tp!1111214 b_and!268701)))

(declare-fun b!3642853 () Bool)

(declare-fun b_free!95589 () Bool)

(declare-fun b_next!96293 () Bool)

(assert (=> b!3642853 (= b_free!95589 (not b_next!96293))))

(declare-fun tp!1111210 () Bool)

(declare-fun b_and!268703 () Bool)

(assert (=> b!3642853 (= tp!1111210 b_and!268703)))

(declare-fun b_free!95591 () Bool)

(declare-fun b_next!96295 () Bool)

(assert (=> b!3642853 (= b_free!95591 (not b_next!96295))))

(declare-fun tp!1111216 () Bool)

(declare-fun b_and!268705 () Bool)

(assert (=> b!3642853 (= tp!1111216 b_and!268705)))

(declare-fun b!3642826 () Bool)

(declare-fun res!1476840 () Bool)

(declare-fun e!2255124 () Bool)

(assert (=> b!3642826 (=> res!1476840 e!2255124)))

(declare-datatypes ((C!21184 0))(
  ( (C!21185 (val!12640 Int)) )
))
(declare-datatypes ((List!38523 0))(
  ( (Nil!38399) (Cons!38399 (h!43819 C!21184) (t!296666 List!38523)) )
))
(declare-fun lt!1261771 () List!38523)

(declare-fun lt!1261769 () C!21184)

(declare-fun contains!7545 (List!38523 C!21184) Bool)

(assert (=> b!3642826 (= res!1476840 (not (contains!7545 lt!1261771 lt!1261769)))))

(declare-fun b!3642827 () Bool)

(declare-datatypes ((List!38524 0))(
  ( (Nil!38400) (Cons!38400 (h!43820 (_ BitVec 16)) (t!296667 List!38524)) )
))
(declare-datatypes ((TokenValue!5970 0))(
  ( (FloatLiteralValue!11940 (text!42235 List!38524)) (TokenValueExt!5969 (__x!24157 Int)) (Broken!29850 (value!184024 List!38524)) (Object!6093) (End!5970) (Def!5970) (Underscore!5970) (Match!5970) (Else!5970) (Error!5970) (Case!5970) (If!5970) (Extends!5970) (Abstract!5970) (Class!5970) (Val!5970) (DelimiterValue!11940 (del!6030 List!38524)) (KeywordValue!5976 (value!184025 List!38524)) (CommentValue!11940 (value!184026 List!38524)) (WhitespaceValue!11940 (value!184027 List!38524)) (IndentationValue!5970 (value!184028 List!38524)) (String!43183) (Int32!5970) (Broken!29851 (value!184029 List!38524)) (Boolean!5971) (Unit!55263) (OperatorValue!5973 (op!6030 List!38524)) (IdentifierValue!11940 (value!184030 List!38524)) (IdentifierValue!11941 (value!184031 List!38524)) (WhitespaceValue!11941 (value!184032 List!38524)) (True!11940) (False!11940) (Broken!29852 (value!184033 List!38524)) (Broken!29853 (value!184034 List!38524)) (True!11941) (RightBrace!5970) (RightBracket!5970) (Colon!5970) (Null!5970) (Comma!5970) (LeftBracket!5970) (False!11941) (LeftBrace!5970) (ImaginaryLiteralValue!5970 (text!42236 List!38524)) (StringLiteralValue!17910 (value!184035 List!38524)) (EOFValue!5970 (value!184036 List!38524)) (IdentValue!5970 (value!184037 List!38524)) (DelimiterValue!11941 (value!184038 List!38524)) (DedentValue!5970 (value!184039 List!38524)) (NewLineValue!5970 (value!184040 List!38524)) (IntegerValue!17910 (value!184041 (_ BitVec 32)) (text!42237 List!38524)) (IntegerValue!17911 (value!184042 Int) (text!42238 List!38524)) (Times!5970) (Or!5970) (Equal!5970) (Minus!5970) (Broken!29854 (value!184043 List!38524)) (And!5970) (Div!5970) (LessEqual!5970) (Mod!5970) (Concat!16469) (Not!5970) (Plus!5970) (SpaceValue!5970 (value!184044 List!38524)) (IntegerValue!17912 (value!184045 Int) (text!42239 List!38524)) (StringLiteralValue!17911 (text!42240 List!38524)) (FloatLiteralValue!11941 (text!42241 List!38524)) (BytesLiteralValue!5970 (value!184046 List!38524)) (CommentValue!11941 (value!184047 List!38524)) (StringLiteralValue!17912 (value!184048 List!38524)) (ErrorTokenValue!5970 (msg!6031 List!38524)) )
))
(declare-datatypes ((Regex!10499 0))(
  ( (ElementMatch!10499 (c!629782 C!21184)) (Concat!16470 (regOne!21510 Regex!10499) (regTwo!21510 Regex!10499)) (EmptyExpr!10499) (Star!10499 (reg!10828 Regex!10499)) (EmptyLang!10499) (Union!10499 (regOne!21511 Regex!10499) (regTwo!21511 Regex!10499)) )
))
(declare-datatypes ((String!43184 0))(
  ( (String!43185 (value!184049 String)) )
))
(declare-datatypes ((IArray!23459 0))(
  ( (IArray!23460 (innerList!11787 List!38523)) )
))
(declare-datatypes ((Conc!11727 0))(
  ( (Node!11727 (left!29979 Conc!11727) (right!30309 Conc!11727) (csize!23684 Int) (cheight!11938 Int)) (Leaf!18208 (xs!14929 IArray!23459) (csize!23685 Int)) (Empty!11727) )
))
(declare-datatypes ((BalanceConc!23068 0))(
  ( (BalanceConc!23069 (c!629783 Conc!11727)) )
))
(declare-datatypes ((TokenValueInjection!11368 0))(
  ( (TokenValueInjection!11369 (toValue!8032 Int) (toChars!7891 Int)) )
))
(declare-datatypes ((Rule!11280 0))(
  ( (Rule!11281 (regex!5740 Regex!10499) (tag!6492 String!43184) (isSeparator!5740 Bool) (transformation!5740 TokenValueInjection!11368)) )
))
(declare-datatypes ((List!38525 0))(
  ( (Nil!38401) (Cons!38401 (h!43821 Rule!11280) (t!296668 List!38525)) )
))
(declare-fun rules!3307 () List!38525)

(declare-datatypes ((Token!10846 0))(
  ( (Token!10847 (value!184050 TokenValue!5970) (rule!8526 Rule!11280) (size!29311 Int) (originalCharacters!6454 List!38523)) )
))
(declare-datatypes ((tuple2!38268 0))(
  ( (tuple2!38269 (_1!22268 Token!10846) (_2!22268 List!38523)) )
))
(declare-fun lt!1261749 () tuple2!38268)

(declare-fun contains!7546 (List!38525 Rule!11280) Bool)

(assert (=> b!3642827 (= e!2255124 (contains!7546 rules!3307 (rule!8526 (_1!22268 lt!1261749))))))

(declare-fun b!3642828 () Bool)

(declare-fun res!1476842 () Bool)

(declare-fun e!2255135 () Bool)

(assert (=> b!3642828 (=> res!1476842 e!2255135)))

(declare-fun suffix!1395 () List!38523)

(declare-fun isEmpty!22740 (List!38523) Bool)

(assert (=> b!3642828 (= res!1476842 (isEmpty!22740 suffix!1395))))

(declare-fun b!3642829 () Bool)

(declare-fun e!2255138 () Bool)

(declare-fun e!2255136 () Bool)

(assert (=> b!3642829 (= e!2255138 e!2255136)))

(declare-fun res!1476854 () Bool)

(assert (=> b!3642829 (=> (not res!1476854) (not e!2255136))))

(declare-datatypes ((Option!8108 0))(
  ( (None!8107) (Some!8107 (v!37943 tuple2!38268)) )
))
(declare-fun lt!1261751 () Option!8108)

(declare-fun isDefined!6340 (Option!8108) Bool)

(assert (=> b!3642829 (= res!1476854 (isDefined!6340 lt!1261751))))

(declare-datatypes ((LexerInterface!5329 0))(
  ( (LexerInterfaceExt!5326 (__x!24158 Int)) (Lexer!5327) )
))
(declare-fun thiss!23823 () LexerInterface!5329)

(declare-fun maxPrefix!2863 (LexerInterface!5329 List!38525 List!38523) Option!8108)

(assert (=> b!3642829 (= lt!1261751 (maxPrefix!2863 thiss!23823 rules!3307 lt!1261771))))

(declare-fun token!511 () Token!10846)

(declare-fun list!14218 (BalanceConc!23068) List!38523)

(declare-fun charsOf!3754 (Token!10846) BalanceConc!23068)

(assert (=> b!3642829 (= lt!1261771 (list!14218 (charsOf!3754 token!511)))))

(declare-fun b!3642830 () Bool)

(declare-datatypes ((Unit!55264 0))(
  ( (Unit!55265) )
))
(declare-fun e!2255147 () Unit!55264)

(declare-fun Unit!55266 () Unit!55264)

(assert (=> b!3642830 (= e!2255147 Unit!55266)))

(declare-fun b!3642831 () Bool)

(declare-fun e!2255127 () Bool)

(declare-fun lt!1261764 () Rule!11280)

(assert (=> b!3642831 (= e!2255127 (= (rule!8526 (_1!22268 lt!1261749)) lt!1261764))))

(declare-fun b!3642832 () Bool)

(declare-fun e!2255128 () Bool)

(assert (=> b!3642832 (= e!2255136 e!2255128)))

(declare-fun res!1476841 () Bool)

(assert (=> b!3642832 (=> (not res!1476841) (not e!2255128))))

(declare-fun lt!1261766 () tuple2!38268)

(assert (=> b!3642832 (= res!1476841 (= (_1!22268 lt!1261766) token!511))))

(declare-fun get!12588 (Option!8108) tuple2!38268)

(assert (=> b!3642832 (= lt!1261766 (get!12588 lt!1261751))))

(declare-fun e!2255144 () Bool)

(assert (=> b!3642833 (= e!2255144 (and tp!1111204 tp!1111214))))

(declare-fun res!1476849 () Bool)

(assert (=> start!340278 (=> (not res!1476849) (not e!2255138))))

(get-info :version)

(assert (=> start!340278 (= res!1476849 ((_ is Lexer!5327) thiss!23823))))

(assert (=> start!340278 e!2255138))

(declare-fun e!2255133 () Bool)

(assert (=> start!340278 e!2255133))

(declare-fun e!2255129 () Bool)

(assert (=> start!340278 e!2255129))

(assert (=> start!340278 true))

(declare-fun e!2255142 () Bool)

(declare-fun inv!51838 (Token!10846) Bool)

(assert (=> start!340278 (and (inv!51838 token!511) e!2255142)))

(declare-fun e!2255130 () Bool)

(assert (=> start!340278 e!2255130))

(declare-fun e!2255145 () Bool)

(assert (=> start!340278 e!2255145))

(declare-fun b!3642834 () Bool)

(declare-fun res!1476837 () Bool)

(assert (=> b!3642834 (=> (not res!1476837) (not e!2255138))))

(declare-fun anOtherTypeRule!33 () Rule!11280)

(assert (=> b!3642834 (= res!1476837 (contains!7546 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3642835 () Bool)

(declare-fun tp_is_empty!18081 () Bool)

(declare-fun tp!1111211 () Bool)

(assert (=> b!3642835 (= e!2255129 (and tp_is_empty!18081 tp!1111211))))

(declare-fun b!3642836 () Bool)

(assert (=> b!3642836 (= e!2255128 (not e!2255135))))

(declare-fun res!1476857 () Bool)

(assert (=> b!3642836 (=> res!1476857 e!2255135)))

(declare-fun rule!403 () Rule!11280)

(declare-fun matchR!5068 (Regex!10499 List!38523) Bool)

(assert (=> b!3642836 (= res!1476857 (not (matchR!5068 (regex!5740 rule!403) lt!1261771)))))

(declare-fun ruleValid!2004 (LexerInterface!5329 Rule!11280) Bool)

(assert (=> b!3642836 (ruleValid!2004 thiss!23823 rule!403)))

(declare-fun lt!1261756 () Unit!55264)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1158 (LexerInterface!5329 Rule!11280 List!38525) Unit!55264)

(assert (=> b!3642836 (= lt!1261756 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1158 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2255131 () Bool)

(assert (=> b!3642837 (= e!2255131 (and tp!1111215 tp!1111213))))

(declare-fun b!3642838 () Bool)

(declare-fun res!1476850 () Bool)

(assert (=> b!3642838 (=> (not res!1476850) (not e!2255138))))

(declare-fun rulesInvariant!4726 (LexerInterface!5329 List!38525) Bool)

(assert (=> b!3642838 (= res!1476850 (rulesInvariant!4726 thiss!23823 rules!3307))))

(declare-fun b!3642839 () Bool)

(declare-fun res!1476834 () Bool)

(assert (=> b!3642839 (=> (not res!1476834) (not e!2255138))))

(assert (=> b!3642839 (= res!1476834 (contains!7546 rules!3307 rule!403))))

(declare-fun b!3642840 () Bool)

(declare-fun e!2255139 () Bool)

(assert (=> b!3642840 (= e!2255135 e!2255139)))

(declare-fun res!1476838 () Bool)

(assert (=> b!3642840 (=> res!1476838 e!2255139)))

(declare-fun lt!1261757 () List!38523)

(declare-fun lt!1261770 () C!21184)

(assert (=> b!3642840 (= res!1476838 (contains!7545 lt!1261757 lt!1261770))))

(declare-fun head!7742 (List!38523) C!21184)

(assert (=> b!3642840 (= lt!1261770 (head!7742 suffix!1395))))

(declare-fun usedCharacters!952 (Regex!10499) List!38523)

(assert (=> b!3642840 (= lt!1261757 (usedCharacters!952 (regex!5740 rule!403)))))

(declare-fun b!3642841 () Bool)

(declare-fun e!2255122 () Bool)

(assert (=> b!3642841 (= e!2255122 e!2255124)))

(declare-fun res!1476843 () Bool)

(assert (=> b!3642841 (=> res!1476843 e!2255124)))

(assert (=> b!3642841 (= res!1476843 (or (isSeparator!5740 rule!403) (not (isSeparator!5740 (rule!8526 (_1!22268 lt!1261749))))))))

(declare-fun lt!1261763 () Unit!55264)

(assert (=> b!3642841 (= lt!1261763 e!2255147)))

(declare-fun c!629781 () Bool)

(declare-fun lt!1261761 () Bool)

(assert (=> b!3642841 (= c!629781 lt!1261761)))

(assert (=> b!3642841 (= lt!1261761 (not (contains!7545 lt!1261757 lt!1261769)))))

(declare-fun lt!1261768 () List!38523)

(assert (=> b!3642841 (= lt!1261769 (head!7742 lt!1261768))))

(declare-fun e!2255148 () Bool)

(declare-fun b!3642842 () Bool)

(declare-fun tp!1111209 () Bool)

(declare-fun e!2255143 () Bool)

(declare-fun inv!51835 (String!43184) Bool)

(declare-fun inv!51839 (TokenValueInjection!11368) Bool)

(assert (=> b!3642842 (= e!2255143 (and tp!1111209 (inv!51835 (tag!6492 (rule!8526 token!511))) (inv!51839 (transformation!5740 (rule!8526 token!511))) e!2255148))))

(declare-fun b!3642843 () Bool)

(declare-fun res!1476856 () Bool)

(assert (=> b!3642843 (=> (not res!1476856) (not e!2255128))))

(assert (=> b!3642843 (= res!1476856 (isEmpty!22740 (_2!22268 lt!1261766)))))

(declare-fun b!3642844 () Bool)

(declare-fun tp!1111205 () Bool)

(assert (=> b!3642844 (= e!2255130 (and tp!1111205 (inv!51835 (tag!6492 rule!403)) (inv!51839 (transformation!5740 rule!403)) e!2255131))))

(declare-fun b!3642845 () Bool)

(declare-fun res!1476836 () Bool)

(assert (=> b!3642845 (=> res!1476836 e!2255139)))

(assert (=> b!3642845 (= res!1476836 (not (contains!7545 (usedCharacters!952 (regex!5740 anOtherTypeRule!33)) lt!1261770)))))

(declare-fun b!3642846 () Bool)

(declare-fun e!2255126 () Bool)

(declare-fun e!2255121 () Bool)

(assert (=> b!3642846 (= e!2255126 e!2255121)))

(declare-fun res!1476844 () Bool)

(assert (=> b!3642846 (=> res!1476844 e!2255121)))

(declare-fun lt!1261755 () Option!8108)

(declare-fun lt!1261765 () BalanceConc!23068)

(declare-fun apply!9242 (TokenValueInjection!11368 BalanceConc!23068) TokenValue!5970)

(declare-fun size!29312 (BalanceConc!23068) Int)

(assert (=> b!3642846 (= res!1476844 (not (= lt!1261755 (Some!8107 (tuple2!38269 (Token!10847 (apply!9242 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261765) (rule!8526 (_1!22268 lt!1261749)) (size!29312 lt!1261765) lt!1261768) (_2!22268 lt!1261749))))))))

(declare-fun lt!1261760 () Unit!55264)

(declare-fun lemmaCharactersSize!785 (Token!10846) Unit!55264)

(assert (=> b!3642846 (= lt!1261760 (lemmaCharactersSize!785 (_1!22268 lt!1261749)))))

(declare-fun lt!1261752 () Unit!55264)

(declare-fun lemmaEqSameImage!923 (TokenValueInjection!11368 BalanceConc!23068 BalanceConc!23068) Unit!55264)

(declare-fun seqFromList!4289 (List!38523) BalanceConc!23068)

(assert (=> b!3642846 (= lt!1261752 (lemmaEqSameImage!923 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261765 (seqFromList!4289 (originalCharacters!6454 (_1!22268 lt!1261749)))))))

(declare-fun lt!1261753 () Unit!55264)

(declare-fun lemmaSemiInverse!1489 (TokenValueInjection!11368 BalanceConc!23068) Unit!55264)

(assert (=> b!3642846 (= lt!1261753 (lemmaSemiInverse!1489 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261765))))

(declare-fun tp!1111217 () Bool)

(declare-fun b!3642847 () Bool)

(declare-fun inv!21 (TokenValue!5970) Bool)

(assert (=> b!3642847 (= e!2255142 (and (inv!21 (value!184050 token!511)) e!2255143 tp!1111217))))

(declare-fun tp!1111208 () Bool)

(declare-fun b!3642848 () Bool)

(assert (=> b!3642848 (= e!2255145 (and tp!1111208 (inv!51835 (tag!6492 anOtherTypeRule!33)) (inv!51839 (transformation!5740 anOtherTypeRule!33)) e!2255144))))

(assert (=> b!3642849 (= e!2255148 (and tp!1111212 tp!1111206))))

(declare-fun b!3642850 () Bool)

(declare-fun res!1476855 () Bool)

(assert (=> b!3642850 (=> res!1476855 e!2255126)))

(assert (=> b!3642850 (= res!1476855 (not (matchR!5068 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261768)))))

(declare-fun b!3642851 () Bool)

(declare-fun e!2255125 () Bool)

(assert (=> b!3642851 (= e!2255125 e!2255127)))

(declare-fun res!1476845 () Bool)

(assert (=> b!3642851 (=> (not res!1476845) (not e!2255127))))

(assert (=> b!3642851 (= res!1476845 (matchR!5068 (regex!5740 lt!1261764) (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))))))

(declare-datatypes ((Option!8109 0))(
  ( (None!8108) (Some!8108 (v!37944 Rule!11280)) )
))
(declare-fun lt!1261754 () Option!8109)

(declare-fun get!12589 (Option!8109) Rule!11280)

(assert (=> b!3642851 (= lt!1261764 (get!12589 lt!1261754))))

(declare-fun b!3642852 () Bool)

(declare-fun res!1476847 () Bool)

(assert (=> b!3642852 (=> (not res!1476847) (not e!2255138))))

(declare-fun isEmpty!22741 (List!38525) Bool)

(assert (=> b!3642852 (= res!1476847 (not (isEmpty!22741 rules!3307)))))

(declare-fun e!2255140 () Bool)

(assert (=> b!3642853 (= e!2255140 (and tp!1111210 tp!1111216))))

(declare-fun b!3642854 () Bool)

(assert (=> b!3642854 (= e!2255139 e!2255126)))

(declare-fun res!1476852 () Bool)

(assert (=> b!3642854 (=> res!1476852 e!2255126)))

(declare-fun lt!1261747 () List!38523)

(declare-fun isPrefix!3103 (List!38523 List!38523) Bool)

(assert (=> b!3642854 (= res!1476852 (not (isPrefix!3103 lt!1261768 lt!1261747)))))

(declare-fun ++!9556 (List!38523 List!38523) List!38523)

(assert (=> b!3642854 (isPrefix!3103 lt!1261768 (++!9556 lt!1261768 (_2!22268 lt!1261749)))))

(declare-fun lt!1261762 () Unit!55264)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2022 (List!38523 List!38523) Unit!55264)

(assert (=> b!3642854 (= lt!1261762 (lemmaConcatTwoListThenFirstIsPrefix!2022 lt!1261768 (_2!22268 lt!1261749)))))

(assert (=> b!3642854 (= lt!1261768 (list!14218 lt!1261765))))

(assert (=> b!3642854 (= lt!1261765 (charsOf!3754 (_1!22268 lt!1261749)))))

(assert (=> b!3642854 e!2255125))

(declare-fun res!1476853 () Bool)

(assert (=> b!3642854 (=> (not res!1476853) (not e!2255125))))

(declare-fun isDefined!6341 (Option!8109) Bool)

(assert (=> b!3642854 (= res!1476853 (isDefined!6341 lt!1261754))))

(declare-fun getRuleFromTag!1344 (LexerInterface!5329 List!38525 String!43184) Option!8109)

(assert (=> b!3642854 (= lt!1261754 (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 (_1!22268 lt!1261749)))))))

(declare-fun lt!1261746 () Unit!55264)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1344 (LexerInterface!5329 List!38525 List!38523 Token!10846) Unit!55264)

(assert (=> b!3642854 (= lt!1261746 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1344 thiss!23823 rules!3307 lt!1261747 (_1!22268 lt!1261749)))))

(assert (=> b!3642854 (= lt!1261749 (get!12588 lt!1261755))))

(declare-fun lt!1261758 () Unit!55264)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1007 (LexerInterface!5329 List!38525 List!38523 List!38523) Unit!55264)

(assert (=> b!3642854 (= lt!1261758 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1007 thiss!23823 rules!3307 lt!1261771 suffix!1395))))

(assert (=> b!3642854 (= lt!1261755 (maxPrefix!2863 thiss!23823 rules!3307 lt!1261747))))

(assert (=> b!3642854 (isPrefix!3103 lt!1261771 lt!1261747)))

(declare-fun lt!1261767 () Unit!55264)

(assert (=> b!3642854 (= lt!1261767 (lemmaConcatTwoListThenFirstIsPrefix!2022 lt!1261771 suffix!1395))))

(assert (=> b!3642854 (= lt!1261747 (++!9556 lt!1261771 suffix!1395))))

(declare-fun b!3642855 () Bool)

(declare-fun res!1476835 () Bool)

(assert (=> b!3642855 (=> (not res!1476835) (not e!2255128))))

(assert (=> b!3642855 (= res!1476835 (= (rule!8526 token!511) rule!403))))

(declare-fun e!2255141 () Bool)

(declare-fun tp!1111218 () Bool)

(declare-fun b!3642856 () Bool)

(assert (=> b!3642856 (= e!2255141 (and tp!1111218 (inv!51835 (tag!6492 (h!43821 rules!3307))) (inv!51839 (transformation!5740 (h!43821 rules!3307))) e!2255140))))

(declare-fun b!3642857 () Bool)

(declare-fun res!1476839 () Bool)

(assert (=> b!3642857 (=> (not res!1476839) (not e!2255138))))

(assert (=> b!3642857 (= res!1476839 (not (= (isSeparator!5740 anOtherTypeRule!33) (isSeparator!5740 rule!403))))))

(declare-fun b!3642858 () Bool)

(assert (=> b!3642858 (= e!2255121 e!2255122)))

(declare-fun res!1476848 () Bool)

(assert (=> b!3642858 (=> res!1476848 e!2255122)))

(declare-fun lt!1261750 () Option!8108)

(declare-fun lt!1261743 () List!38523)

(assert (=> b!3642858 (= res!1476848 (or (not (= lt!1261743 (_2!22268 lt!1261749))) (not (= lt!1261750 (Some!8107 (tuple2!38269 (_1!22268 lt!1261749) lt!1261743))))))))

(assert (=> b!3642858 (= (_2!22268 lt!1261749) lt!1261743)))

(declare-fun lt!1261748 () Unit!55264)

(declare-fun lemmaSamePrefixThenSameSuffix!1430 (List!38523 List!38523 List!38523 List!38523 List!38523) Unit!55264)

(assert (=> b!3642858 (= lt!1261748 (lemmaSamePrefixThenSameSuffix!1430 lt!1261768 (_2!22268 lt!1261749) lt!1261768 lt!1261743 lt!1261747))))

(declare-fun getSuffix!1656 (List!38523 List!38523) List!38523)

(assert (=> b!3642858 (= lt!1261743 (getSuffix!1656 lt!1261747 lt!1261768))))

(declare-fun lt!1261744 () Int)

(declare-fun lt!1261745 () TokenValue!5970)

(assert (=> b!3642858 (= lt!1261750 (Some!8107 (tuple2!38269 (Token!10847 lt!1261745 (rule!8526 (_1!22268 lt!1261749)) lt!1261744 lt!1261768) (_2!22268 lt!1261749))))))

(declare-fun maxPrefixOneRule!2001 (LexerInterface!5329 Rule!11280 List!38523) Option!8108)

(assert (=> b!3642858 (= lt!1261750 (maxPrefixOneRule!2001 thiss!23823 (rule!8526 (_1!22268 lt!1261749)) lt!1261747))))

(declare-fun size!29313 (List!38523) Int)

(assert (=> b!3642858 (= lt!1261744 (size!29313 lt!1261768))))

(assert (=> b!3642858 (= lt!1261745 (apply!9242 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) (seqFromList!4289 lt!1261768)))))

(declare-fun lt!1261772 () Unit!55264)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1057 (LexerInterface!5329 List!38525 List!38523 List!38523 List!38523 Rule!11280) Unit!55264)

(assert (=> b!3642858 (= lt!1261772 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1057 thiss!23823 rules!3307 lt!1261768 lt!1261747 (_2!22268 lt!1261749) (rule!8526 (_1!22268 lt!1261749))))))

(declare-fun b!3642859 () Bool)

(declare-fun tp!1111207 () Bool)

(assert (=> b!3642859 (= e!2255133 (and e!2255141 tp!1111207))))

(declare-fun b!3642860 () Bool)

(declare-fun Unit!55267 () Unit!55264)

(assert (=> b!3642860 (= e!2255147 Unit!55267)))

(declare-fun lt!1261759 () Unit!55264)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!688 (Regex!10499 List!38523 C!21184) Unit!55264)

(assert (=> b!3642860 (= lt!1261759 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!688 (regex!5740 rule!403) lt!1261771 lt!1261769))))

(assert (=> b!3642860 false))

(declare-fun b!3642861 () Bool)

(declare-fun res!1476846 () Bool)

(assert (=> b!3642861 (=> res!1476846 e!2255139)))

(declare-fun sepAndNonSepRulesDisjointChars!1908 (List!38525 List!38525) Bool)

(assert (=> b!3642861 (= res!1476846 (not (sepAndNonSepRulesDisjointChars!1908 rules!3307 rules!3307)))))

(declare-fun b!3642862 () Bool)

(declare-fun res!1476851 () Bool)

(assert (=> b!3642862 (=> res!1476851 e!2255124)))

(assert (=> b!3642862 (= res!1476851 lt!1261761)))

(assert (= (and start!340278 res!1476849) b!3642852))

(assert (= (and b!3642852 res!1476847) b!3642838))

(assert (= (and b!3642838 res!1476850) b!3642839))

(assert (= (and b!3642839 res!1476834) b!3642834))

(assert (= (and b!3642834 res!1476837) b!3642857))

(assert (= (and b!3642857 res!1476839) b!3642829))

(assert (= (and b!3642829 res!1476854) b!3642832))

(assert (= (and b!3642832 res!1476841) b!3642843))

(assert (= (and b!3642843 res!1476856) b!3642855))

(assert (= (and b!3642855 res!1476835) b!3642836))

(assert (= (and b!3642836 (not res!1476857)) b!3642828))

(assert (= (and b!3642828 (not res!1476842)) b!3642840))

(assert (= (and b!3642840 (not res!1476838)) b!3642845))

(assert (= (and b!3642845 (not res!1476836)) b!3642861))

(assert (= (and b!3642861 (not res!1476846)) b!3642854))

(assert (= (and b!3642854 res!1476853) b!3642851))

(assert (= (and b!3642851 res!1476845) b!3642831))

(assert (= (and b!3642854 (not res!1476852)) b!3642850))

(assert (= (and b!3642850 (not res!1476855)) b!3642846))

(assert (= (and b!3642846 (not res!1476844)) b!3642858))

(assert (= (and b!3642858 (not res!1476848)) b!3642841))

(assert (= (and b!3642841 c!629781) b!3642860))

(assert (= (and b!3642841 (not c!629781)) b!3642830))

(assert (= (and b!3642841 (not res!1476843)) b!3642826))

(assert (= (and b!3642826 (not res!1476840)) b!3642862))

(assert (= (and b!3642862 (not res!1476851)) b!3642827))

(assert (= b!3642856 b!3642853))

(assert (= b!3642859 b!3642856))

(assert (= (and start!340278 ((_ is Cons!38401) rules!3307)) b!3642859))

(assert (= (and start!340278 ((_ is Cons!38399) suffix!1395)) b!3642835))

(assert (= b!3642842 b!3642849))

(assert (= b!3642847 b!3642842))

(assert (= start!340278 b!3642847))

(assert (= b!3642844 b!3642837))

(assert (= start!340278 b!3642844))

(assert (= b!3642848 b!3642833))

(assert (= start!340278 b!3642848))

(declare-fun m!4146127 () Bool)

(assert (=> b!3642861 m!4146127))

(declare-fun m!4146129 () Bool)

(assert (=> b!3642838 m!4146129))

(declare-fun m!4146131 () Bool)

(assert (=> b!3642846 m!4146131))

(declare-fun m!4146133 () Bool)

(assert (=> b!3642846 m!4146133))

(declare-fun m!4146135 () Bool)

(assert (=> b!3642846 m!4146135))

(declare-fun m!4146137 () Bool)

(assert (=> b!3642846 m!4146137))

(declare-fun m!4146139 () Bool)

(assert (=> b!3642846 m!4146139))

(assert (=> b!3642846 m!4146133))

(declare-fun m!4146141 () Bool)

(assert (=> b!3642846 m!4146141))

(declare-fun m!4146143 () Bool)

(assert (=> b!3642832 m!4146143))

(declare-fun m!4146145 () Bool)

(assert (=> b!3642847 m!4146145))

(declare-fun m!4146147 () Bool)

(assert (=> b!3642827 m!4146147))

(declare-fun m!4146149 () Bool)

(assert (=> b!3642845 m!4146149))

(assert (=> b!3642845 m!4146149))

(declare-fun m!4146151 () Bool)

(assert (=> b!3642845 m!4146151))

(declare-fun m!4146153 () Bool)

(assert (=> b!3642852 m!4146153))

(declare-fun m!4146155 () Bool)

(assert (=> b!3642856 m!4146155))

(declare-fun m!4146157 () Bool)

(assert (=> b!3642856 m!4146157))

(declare-fun m!4146159 () Bool)

(assert (=> b!3642858 m!4146159))

(declare-fun m!4146161 () Bool)

(assert (=> b!3642858 m!4146161))

(declare-fun m!4146163 () Bool)

(assert (=> b!3642858 m!4146163))

(declare-fun m!4146165 () Bool)

(assert (=> b!3642858 m!4146165))

(assert (=> b!3642858 m!4146165))

(declare-fun m!4146167 () Bool)

(assert (=> b!3642858 m!4146167))

(declare-fun m!4146169 () Bool)

(assert (=> b!3642858 m!4146169))

(declare-fun m!4146171 () Bool)

(assert (=> b!3642858 m!4146171))

(declare-fun m!4146173 () Bool)

(assert (=> b!3642860 m!4146173))

(declare-fun m!4146175 () Bool)

(assert (=> b!3642829 m!4146175))

(declare-fun m!4146177 () Bool)

(assert (=> b!3642829 m!4146177))

(declare-fun m!4146179 () Bool)

(assert (=> b!3642829 m!4146179))

(assert (=> b!3642829 m!4146179))

(declare-fun m!4146181 () Bool)

(assert (=> b!3642829 m!4146181))

(declare-fun m!4146183 () Bool)

(assert (=> b!3642839 m!4146183))

(declare-fun m!4146185 () Bool)

(assert (=> b!3642843 m!4146185))

(declare-fun m!4146187 () Bool)

(assert (=> b!3642840 m!4146187))

(declare-fun m!4146189 () Bool)

(assert (=> b!3642840 m!4146189))

(declare-fun m!4146191 () Bool)

(assert (=> b!3642840 m!4146191))

(declare-fun m!4146193 () Bool)

(assert (=> b!3642844 m!4146193))

(declare-fun m!4146195 () Bool)

(assert (=> b!3642844 m!4146195))

(declare-fun m!4146197 () Bool)

(assert (=> b!3642841 m!4146197))

(declare-fun m!4146199 () Bool)

(assert (=> b!3642841 m!4146199))

(declare-fun m!4146201 () Bool)

(assert (=> b!3642854 m!4146201))

(declare-fun m!4146203 () Bool)

(assert (=> b!3642854 m!4146203))

(declare-fun m!4146205 () Bool)

(assert (=> b!3642854 m!4146205))

(declare-fun m!4146207 () Bool)

(assert (=> b!3642854 m!4146207))

(declare-fun m!4146209 () Bool)

(assert (=> b!3642854 m!4146209))

(assert (=> b!3642854 m!4146205))

(declare-fun m!4146211 () Bool)

(assert (=> b!3642854 m!4146211))

(declare-fun m!4146213 () Bool)

(assert (=> b!3642854 m!4146213))

(declare-fun m!4146215 () Bool)

(assert (=> b!3642854 m!4146215))

(declare-fun m!4146217 () Bool)

(assert (=> b!3642854 m!4146217))

(declare-fun m!4146219 () Bool)

(assert (=> b!3642854 m!4146219))

(declare-fun m!4146221 () Bool)

(assert (=> b!3642854 m!4146221))

(declare-fun m!4146223 () Bool)

(assert (=> b!3642854 m!4146223))

(declare-fun m!4146225 () Bool)

(assert (=> b!3642854 m!4146225))

(declare-fun m!4146227 () Bool)

(assert (=> b!3642854 m!4146227))

(declare-fun m!4146229 () Bool)

(assert (=> b!3642854 m!4146229))

(declare-fun m!4146231 () Bool)

(assert (=> b!3642850 m!4146231))

(declare-fun m!4146233 () Bool)

(assert (=> b!3642826 m!4146233))

(declare-fun m!4146235 () Bool)

(assert (=> b!3642834 m!4146235))

(declare-fun m!4146237 () Bool)

(assert (=> b!3642836 m!4146237))

(declare-fun m!4146239 () Bool)

(assert (=> b!3642836 m!4146239))

(declare-fun m!4146241 () Bool)

(assert (=> b!3642836 m!4146241))

(assert (=> b!3642851 m!4146227))

(assert (=> b!3642851 m!4146227))

(declare-fun m!4146243 () Bool)

(assert (=> b!3642851 m!4146243))

(assert (=> b!3642851 m!4146243))

(declare-fun m!4146245 () Bool)

(assert (=> b!3642851 m!4146245))

(declare-fun m!4146247 () Bool)

(assert (=> b!3642851 m!4146247))

(declare-fun m!4146249 () Bool)

(assert (=> b!3642848 m!4146249))

(declare-fun m!4146251 () Bool)

(assert (=> b!3642848 m!4146251))

(declare-fun m!4146253 () Bool)

(assert (=> b!3642842 m!4146253))

(declare-fun m!4146255 () Bool)

(assert (=> b!3642842 m!4146255))

(declare-fun m!4146257 () Bool)

(assert (=> start!340278 m!4146257))

(declare-fun m!4146259 () Bool)

(assert (=> b!3642828 m!4146259))

(check-sat b_and!268699 (not b!3642860) (not b!3642838) (not b!3642846) (not b_next!96285) b_and!268693 (not b_next!96289) (not b!3642832) (not b!3642829) (not b!3642843) (not b!3642836) (not start!340278) (not b!3642854) b_and!268705 (not b_next!96293) (not b_next!96281) (not b!3642840) b_and!268703 (not b!3642848) (not b!3642841) (not b_next!96291) (not b!3642834) (not b!3642856) (not b_next!96287) (not b!3642852) tp_is_empty!18081 b_and!268697 (not b_next!96295) b_and!268691 (not b!3642826) (not b!3642835) (not b!3642844) b_and!268701 (not b!3642839) (not b!3642845) (not b!3642842) (not b!3642858) (not b!3642859) (not b!3642851) (not b!3642847) (not b!3642828) b_and!268695 (not b_next!96283) (not b!3642861) (not b!3642827) (not b!3642850))
(check-sat b_and!268699 b_and!268703 (not b_next!96291) (not b_next!96287) (not b_next!96285) b_and!268693 b_and!268697 (not b_next!96289) b_and!268701 b_and!268705 (not b_next!96293) (not b_next!96281) (not b_next!96295) b_and!268691 b_and!268695 (not b_next!96283))
(get-model)

(declare-fun d!1070921 () Bool)

(declare-fun lt!1261804 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5530 (List!38523) (InoxSet C!21184))

(assert (=> d!1070921 (= lt!1261804 (select (content!5530 (usedCharacters!952 (regex!5740 anOtherTypeRule!33))) lt!1261770))))

(declare-fun e!2255218 () Bool)

(assert (=> d!1070921 (= lt!1261804 e!2255218)))

(declare-fun res!1476929 () Bool)

(assert (=> d!1070921 (=> (not res!1476929) (not e!2255218))))

(assert (=> d!1070921 (= res!1476929 ((_ is Cons!38399) (usedCharacters!952 (regex!5740 anOtherTypeRule!33))))))

(assert (=> d!1070921 (= (contains!7545 (usedCharacters!952 (regex!5740 anOtherTypeRule!33)) lt!1261770) lt!1261804)))

(declare-fun b!3642965 () Bool)

(declare-fun e!2255217 () Bool)

(assert (=> b!3642965 (= e!2255218 e!2255217)))

(declare-fun res!1476928 () Bool)

(assert (=> b!3642965 (=> res!1476928 e!2255217)))

(assert (=> b!3642965 (= res!1476928 (= (h!43819 (usedCharacters!952 (regex!5740 anOtherTypeRule!33))) lt!1261770))))

(declare-fun b!3642966 () Bool)

(assert (=> b!3642966 (= e!2255217 (contains!7545 (t!296666 (usedCharacters!952 (regex!5740 anOtherTypeRule!33))) lt!1261770))))

(assert (= (and d!1070921 res!1476929) b!3642965))

(assert (= (and b!3642965 (not res!1476928)) b!3642966))

(assert (=> d!1070921 m!4146149))

(declare-fun m!4146369 () Bool)

(assert (=> d!1070921 m!4146369))

(declare-fun m!4146371 () Bool)

(assert (=> d!1070921 m!4146371))

(declare-fun m!4146373 () Bool)

(assert (=> b!3642966 m!4146373))

(assert (=> b!3642845 d!1070921))

(declare-fun b!3642989 () Bool)

(declare-fun e!2255230 () List!38523)

(declare-fun call!263301 () List!38523)

(assert (=> b!3642989 (= e!2255230 call!263301)))

(declare-fun d!1070929 () Bool)

(declare-fun c!629813 () Bool)

(assert (=> d!1070929 (= c!629813 (or ((_ is EmptyExpr!10499) (regex!5740 anOtherTypeRule!33)) ((_ is EmptyLang!10499) (regex!5740 anOtherTypeRule!33))))))

(declare-fun e!2255232 () List!38523)

(assert (=> d!1070929 (= (usedCharacters!952 (regex!5740 anOtherTypeRule!33)) e!2255232)))

(declare-fun b!3642990 () Bool)

(declare-fun e!2255231 () List!38523)

(assert (=> b!3642990 (= e!2255230 e!2255231)))

(declare-fun c!629815 () Bool)

(assert (=> b!3642990 (= c!629815 ((_ is Union!10499) (regex!5740 anOtherTypeRule!33)))))

(declare-fun b!3642991 () Bool)

(declare-fun call!263304 () List!38523)

(assert (=> b!3642991 (= e!2255231 call!263304)))

(declare-fun b!3642992 () Bool)

(declare-fun e!2255233 () List!38523)

(assert (=> b!3642992 (= e!2255232 e!2255233)))

(declare-fun c!629816 () Bool)

(assert (=> b!3642992 (= c!629816 ((_ is ElementMatch!10499) (regex!5740 anOtherTypeRule!33)))))

(declare-fun bm!263296 () Bool)

(declare-fun call!263303 () List!38523)

(declare-fun call!263302 () List!38523)

(assert (=> bm!263296 (= call!263304 (++!9556 (ite c!629815 call!263303 call!263302) (ite c!629815 call!263302 call!263303)))))

(declare-fun c!629814 () Bool)

(declare-fun bm!263297 () Bool)

(assert (=> bm!263297 (= call!263301 (usedCharacters!952 (ite c!629814 (reg!10828 (regex!5740 anOtherTypeRule!33)) (ite c!629815 (regOne!21511 (regex!5740 anOtherTypeRule!33)) (regTwo!21510 (regex!5740 anOtherTypeRule!33))))))))

(declare-fun b!3642993 () Bool)

(assert (=> b!3642993 (= e!2255232 Nil!38399)))

(declare-fun b!3642994 () Bool)

(assert (=> b!3642994 (= e!2255231 call!263304)))

(declare-fun bm!263298 () Bool)

(assert (=> bm!263298 (= call!263303 call!263301)))

(declare-fun b!3642995 () Bool)

(assert (=> b!3642995 (= e!2255233 (Cons!38399 (c!629782 (regex!5740 anOtherTypeRule!33)) Nil!38399))))

(declare-fun b!3642996 () Bool)

(assert (=> b!3642996 (= c!629814 ((_ is Star!10499) (regex!5740 anOtherTypeRule!33)))))

(assert (=> b!3642996 (= e!2255233 e!2255230)))

(declare-fun bm!263299 () Bool)

(assert (=> bm!263299 (= call!263302 (usedCharacters!952 (ite c!629815 (regTwo!21511 (regex!5740 anOtherTypeRule!33)) (regOne!21510 (regex!5740 anOtherTypeRule!33)))))))

(assert (= (and d!1070929 c!629813) b!3642993))

(assert (= (and d!1070929 (not c!629813)) b!3642992))

(assert (= (and b!3642992 c!629816) b!3642995))

(assert (= (and b!3642992 (not c!629816)) b!3642996))

(assert (= (and b!3642996 c!629814) b!3642989))

(assert (= (and b!3642996 (not c!629814)) b!3642990))

(assert (= (and b!3642990 c!629815) b!3642994))

(assert (= (and b!3642990 (not c!629815)) b!3642991))

(assert (= (or b!3642994 b!3642991) bm!263298))

(assert (= (or b!3642994 b!3642991) bm!263299))

(assert (= (or b!3642994 b!3642991) bm!263296))

(assert (= (or b!3642989 bm!263298) bm!263297))

(declare-fun m!4146385 () Bool)

(assert (=> bm!263296 m!4146385))

(declare-fun m!4146387 () Bool)

(assert (=> bm!263297 m!4146387))

(declare-fun m!4146389 () Bool)

(assert (=> bm!263299 m!4146389))

(assert (=> b!3642845 d!1070929))

(declare-fun b!3643214 () Bool)

(declare-fun e!2255350 () Bool)

(assert (=> b!3643214 (= e!2255350 true)))

(declare-fun d!1070937 () Bool)

(assert (=> d!1070937 e!2255350))

(assert (= d!1070937 b!3643214))

(declare-fun lambda!124406 () Int)

(declare-fun order!21107 () Int)

(declare-fun order!21109 () Int)

(declare-fun dynLambda!16712 (Int Int) Int)

(declare-fun dynLambda!16713 (Int Int) Int)

(assert (=> b!3643214 (< (dynLambda!16712 order!21107 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) (dynLambda!16713 order!21109 lambda!124406))))

(declare-fun order!21111 () Int)

(declare-fun dynLambda!16714 (Int Int) Int)

(assert (=> b!3643214 (< (dynLambda!16714 order!21111 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) (dynLambda!16713 order!21109 lambda!124406))))

(declare-fun dynLambda!16715 (Int TokenValue!5970) BalanceConc!23068)

(declare-fun dynLambda!16716 (Int BalanceConc!23068) TokenValue!5970)

(assert (=> d!1070937 (= (list!14218 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) lt!1261765))) (list!14218 lt!1261765))))

(declare-fun lt!1261931 () Unit!55264)

(declare-fun ForallOf!701 (Int BalanceConc!23068) Unit!55264)

(assert (=> d!1070937 (= lt!1261931 (ForallOf!701 lambda!124406 lt!1261765))))

(assert (=> d!1070937 (= (lemmaSemiInverse!1489 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261765) lt!1261931)))

(declare-fun b_lambda!107997 () Bool)

(assert (=> (not b_lambda!107997) (not d!1070937)))

(declare-fun t!296702 () Bool)

(declare-fun tb!209933 () Bool)

(assert (=> (and b!3642849 (= (toChars!7891 (transformation!5740 (rule!8526 token!511))) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296702) tb!209933))

(declare-fun tp!1111225 () Bool)

(declare-fun b!3643219 () Bool)

(declare-fun e!2255353 () Bool)

(declare-fun inv!51842 (Conc!11727) Bool)

(assert (=> b!3643219 (= e!2255353 (and (inv!51842 (c!629783 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) lt!1261765)))) tp!1111225))))

(declare-fun result!255678 () Bool)

(declare-fun inv!51843 (BalanceConc!23068) Bool)

(assert (=> tb!209933 (= result!255678 (and (inv!51843 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) lt!1261765))) e!2255353))))

(assert (= tb!209933 b!3643219))

(declare-fun m!4146671 () Bool)

(assert (=> b!3643219 m!4146671))

(declare-fun m!4146673 () Bool)

(assert (=> tb!209933 m!4146673))

(assert (=> d!1070937 t!296702))

(declare-fun b_and!268747 () Bool)

(assert (= b_and!268693 (and (=> t!296702 result!255678) b_and!268747)))

(declare-fun tb!209935 () Bool)

(declare-fun t!296704 () Bool)

(assert (=> (and b!3642837 (= (toChars!7891 (transformation!5740 rule!403)) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296704) tb!209935))

(declare-fun result!255682 () Bool)

(assert (= result!255682 result!255678))

(assert (=> d!1070937 t!296704))

(declare-fun b_and!268749 () Bool)

(assert (= b_and!268697 (and (=> t!296704 result!255682) b_and!268749)))

(declare-fun t!296706 () Bool)

(declare-fun tb!209937 () Bool)

(assert (=> (and b!3642833 (= (toChars!7891 (transformation!5740 anOtherTypeRule!33)) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296706) tb!209937))

(declare-fun result!255684 () Bool)

(assert (= result!255684 result!255678))

(assert (=> d!1070937 t!296706))

(declare-fun b_and!268751 () Bool)

(assert (= b_and!268701 (and (=> t!296706 result!255684) b_and!268751)))

(declare-fun t!296708 () Bool)

(declare-fun tb!209939 () Bool)

(assert (=> (and b!3642853 (= (toChars!7891 (transformation!5740 (h!43821 rules!3307))) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296708) tb!209939))

(declare-fun result!255686 () Bool)

(assert (= result!255686 result!255678))

(assert (=> d!1070937 t!296708))

(declare-fun b_and!268753 () Bool)

(assert (= b_and!268705 (and (=> t!296708 result!255686) b_and!268753)))

(declare-fun b_lambda!107999 () Bool)

(assert (=> (not b_lambda!107999) (not d!1070937)))

(declare-fun tb!209941 () Bool)

(declare-fun t!296710 () Bool)

(assert (=> (and b!3642849 (= (toValue!8032 (transformation!5740 (rule!8526 token!511))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296710) tb!209941))

(declare-fun result!255688 () Bool)

(assert (=> tb!209941 (= result!255688 (inv!21 (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) lt!1261765)))))

(declare-fun m!4146675 () Bool)

(assert (=> tb!209941 m!4146675))

(assert (=> d!1070937 t!296710))

(declare-fun b_and!268755 () Bool)

(assert (= b_and!268691 (and (=> t!296710 result!255688) b_and!268755)))

(declare-fun t!296712 () Bool)

(declare-fun tb!209943 () Bool)

(assert (=> (and b!3642837 (= (toValue!8032 (transformation!5740 rule!403)) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296712) tb!209943))

(declare-fun result!255692 () Bool)

(assert (= result!255692 result!255688))

(assert (=> d!1070937 t!296712))

(declare-fun b_and!268757 () Bool)

(assert (= b_and!268695 (and (=> t!296712 result!255692) b_and!268757)))

(declare-fun t!296714 () Bool)

(declare-fun tb!209945 () Bool)

(assert (=> (and b!3642833 (= (toValue!8032 (transformation!5740 anOtherTypeRule!33)) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296714) tb!209945))

(declare-fun result!255694 () Bool)

(assert (= result!255694 result!255688))

(assert (=> d!1070937 t!296714))

(declare-fun b_and!268759 () Bool)

(assert (= b_and!268699 (and (=> t!296714 result!255694) b_and!268759)))

(declare-fun tb!209947 () Bool)

(declare-fun t!296716 () Bool)

(assert (=> (and b!3642853 (= (toValue!8032 (transformation!5740 (h!43821 rules!3307))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296716) tb!209947))

(declare-fun result!255696 () Bool)

(assert (= result!255696 result!255688))

(assert (=> d!1070937 t!296716))

(declare-fun b_and!268761 () Bool)

(assert (= b_and!268703 (and (=> t!296716 result!255696) b_and!268761)))

(declare-fun m!4146677 () Bool)

(assert (=> d!1070937 m!4146677))

(declare-fun m!4146679 () Bool)

(assert (=> d!1070937 m!4146679))

(declare-fun m!4146681 () Bool)

(assert (=> d!1070937 m!4146681))

(assert (=> d!1070937 m!4146677))

(assert (=> d!1070937 m!4146681))

(declare-fun m!4146683 () Bool)

(assert (=> d!1070937 m!4146683))

(assert (=> d!1070937 m!4146211))

(assert (=> b!3642846 d!1070937))

(declare-fun d!1071013 () Bool)

(assert (=> d!1071013 (= (apply!9242 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261765) (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) lt!1261765))))

(declare-fun b_lambda!108001 () Bool)

(assert (=> (not b_lambda!108001) (not d!1071013)))

(assert (=> d!1071013 t!296710))

(declare-fun b_and!268763 () Bool)

(assert (= b_and!268755 (and (=> t!296710 result!255688) b_and!268763)))

(assert (=> d!1071013 t!296712))

(declare-fun b_and!268765 () Bool)

(assert (= b_and!268757 (and (=> t!296712 result!255692) b_and!268765)))

(assert (=> d!1071013 t!296714))

(declare-fun b_and!268767 () Bool)

(assert (= b_and!268759 (and (=> t!296714 result!255694) b_and!268767)))

(assert (=> d!1071013 t!296716))

(declare-fun b_and!268769 () Bool)

(assert (= b_and!268761 (and (=> t!296716 result!255696) b_and!268769)))

(assert (=> d!1071013 m!4146681))

(assert (=> b!3642846 d!1071013))

(declare-fun b!3643228 () Bool)

(declare-fun e!2255361 () Bool)

(assert (=> b!3643228 (= e!2255361 true)))

(declare-fun d!1071015 () Bool)

(assert (=> d!1071015 e!2255361))

(assert (= d!1071015 b!3643228))

(declare-fun lambda!124409 () Int)

(declare-fun order!21113 () Int)

(declare-fun dynLambda!16717 (Int Int) Int)

(assert (=> b!3643228 (< (dynLambda!16712 order!21107 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) (dynLambda!16717 order!21113 lambda!124409))))

(assert (=> b!3643228 (< (dynLambda!16714 order!21111 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) (dynLambda!16717 order!21113 lambda!124409))))

(assert (=> d!1071015 (= (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) lt!1261765) (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (seqFromList!4289 (originalCharacters!6454 (_1!22268 lt!1261749)))))))

(declare-fun lt!1261934 () Unit!55264)

(declare-fun Forall2of!359 (Int BalanceConc!23068 BalanceConc!23068) Unit!55264)

(assert (=> d!1071015 (= lt!1261934 (Forall2of!359 lambda!124409 lt!1261765 (seqFromList!4289 (originalCharacters!6454 (_1!22268 lt!1261749)))))))

(assert (=> d!1071015 (= (list!14218 lt!1261765) (list!14218 (seqFromList!4289 (originalCharacters!6454 (_1!22268 lt!1261749)))))))

(assert (=> d!1071015 (= (lemmaEqSameImage!923 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261765 (seqFromList!4289 (originalCharacters!6454 (_1!22268 lt!1261749)))) lt!1261934)))

(declare-fun b_lambda!108003 () Bool)

(assert (=> (not b_lambda!108003) (not d!1071015)))

(assert (=> d!1071015 t!296710))

(declare-fun b_and!268771 () Bool)

(assert (= b_and!268763 (and (=> t!296710 result!255688) b_and!268771)))

(assert (=> d!1071015 t!296712))

(declare-fun b_and!268773 () Bool)

(assert (= b_and!268765 (and (=> t!296712 result!255692) b_and!268773)))

(assert (=> d!1071015 t!296714))

(declare-fun b_and!268775 () Bool)

(assert (= b_and!268767 (and (=> t!296714 result!255694) b_and!268775)))

(assert (=> d!1071015 t!296716))

(declare-fun b_and!268777 () Bool)

(assert (= b_and!268769 (and (=> t!296716 result!255696) b_and!268777)))

(declare-fun b_lambda!108005 () Bool)

(assert (=> (not b_lambda!108005) (not d!1071015)))

(declare-fun tb!209949 () Bool)

(declare-fun t!296718 () Bool)

(assert (=> (and b!3642849 (= (toValue!8032 (transformation!5740 (rule!8526 token!511))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296718) tb!209949))

(declare-fun result!255698 () Bool)

(assert (=> tb!209949 (= result!255698 (inv!21 (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (seqFromList!4289 (originalCharacters!6454 (_1!22268 lt!1261749))))))))

(declare-fun m!4146685 () Bool)

(assert (=> tb!209949 m!4146685))

(assert (=> d!1071015 t!296718))

(declare-fun b_and!268779 () Bool)

(assert (= b_and!268771 (and (=> t!296718 result!255698) b_and!268779)))

(declare-fun tb!209951 () Bool)

(declare-fun t!296720 () Bool)

(assert (=> (and b!3642837 (= (toValue!8032 (transformation!5740 rule!403)) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296720) tb!209951))

(declare-fun result!255700 () Bool)

(assert (= result!255700 result!255698))

(assert (=> d!1071015 t!296720))

(declare-fun b_and!268781 () Bool)

(assert (= b_and!268773 (and (=> t!296720 result!255700) b_and!268781)))

(declare-fun t!296722 () Bool)

(declare-fun tb!209953 () Bool)

(assert (=> (and b!3642833 (= (toValue!8032 (transformation!5740 anOtherTypeRule!33)) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296722) tb!209953))

(declare-fun result!255702 () Bool)

(assert (= result!255702 result!255698))

(assert (=> d!1071015 t!296722))

(declare-fun b_and!268783 () Bool)

(assert (= b_and!268775 (and (=> t!296722 result!255702) b_and!268783)))

(declare-fun tb!209955 () Bool)

(declare-fun t!296724 () Bool)

(assert (=> (and b!3642853 (= (toValue!8032 (transformation!5740 (h!43821 rules!3307))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296724) tb!209955))

(declare-fun result!255704 () Bool)

(assert (= result!255704 result!255698))

(assert (=> d!1071015 t!296724))

(declare-fun b_and!268785 () Bool)

(assert (= b_and!268777 (and (=> t!296724 result!255704) b_and!268785)))

(assert (=> d!1071015 m!4146133))

(declare-fun m!4146687 () Bool)

(assert (=> d!1071015 m!4146687))

(assert (=> d!1071015 m!4146133))

(declare-fun m!4146689 () Bool)

(assert (=> d!1071015 m!4146689))

(assert (=> d!1071015 m!4146211))

(assert (=> d!1071015 m!4146681))

(assert (=> d!1071015 m!4146133))

(declare-fun m!4146691 () Bool)

(assert (=> d!1071015 m!4146691))

(assert (=> b!3642846 d!1071015))

(declare-fun d!1071017 () Bool)

(declare-fun lt!1261937 () Int)

(assert (=> d!1071017 (= lt!1261937 (size!29313 (list!14218 lt!1261765)))))

(declare-fun size!29314 (Conc!11727) Int)

(assert (=> d!1071017 (= lt!1261937 (size!29314 (c!629783 lt!1261765)))))

(assert (=> d!1071017 (= (size!29312 lt!1261765) lt!1261937)))

(declare-fun bs!572010 () Bool)

(assert (= bs!572010 d!1071017))

(assert (=> bs!572010 m!4146211))

(assert (=> bs!572010 m!4146211))

(declare-fun m!4146693 () Bool)

(assert (=> bs!572010 m!4146693))

(declare-fun m!4146695 () Bool)

(assert (=> bs!572010 m!4146695))

(assert (=> b!3642846 d!1071017))

(declare-fun d!1071019 () Bool)

(declare-fun fromListB!1981 (List!38523) BalanceConc!23068)

(assert (=> d!1071019 (= (seqFromList!4289 (originalCharacters!6454 (_1!22268 lt!1261749))) (fromListB!1981 (originalCharacters!6454 (_1!22268 lt!1261749))))))

(declare-fun bs!572011 () Bool)

(assert (= bs!572011 d!1071019))

(declare-fun m!4146697 () Bool)

(assert (=> bs!572011 m!4146697))

(assert (=> b!3642846 d!1071019))

(declare-fun d!1071021 () Bool)

(assert (=> d!1071021 (= (size!29311 (_1!22268 lt!1261749)) (size!29313 (originalCharacters!6454 (_1!22268 lt!1261749))))))

(declare-fun Unit!55270 () Unit!55264)

(assert (=> d!1071021 (= (lemmaCharactersSize!785 (_1!22268 lt!1261749)) Unit!55270)))

(declare-fun bs!572012 () Bool)

(assert (= bs!572012 d!1071021))

(declare-fun m!4146699 () Bool)

(assert (=> bs!572012 m!4146699))

(assert (=> b!3642846 d!1071021))

(declare-fun b!3643239 () Bool)

(declare-fun e!2255371 () Bool)

(declare-fun e!2255369 () Bool)

(assert (=> b!3643239 (= e!2255371 e!2255369)))

(declare-fun c!629866 () Bool)

(assert (=> b!3643239 (= c!629866 ((_ is IntegerValue!17911) (value!184050 token!511)))))

(declare-fun d!1071023 () Bool)

(declare-fun c!629867 () Bool)

(assert (=> d!1071023 (= c!629867 ((_ is IntegerValue!17910) (value!184050 token!511)))))

(assert (=> d!1071023 (= (inv!21 (value!184050 token!511)) e!2255371)))

(declare-fun b!3643240 () Bool)

(declare-fun inv!16 (TokenValue!5970) Bool)

(assert (=> b!3643240 (= e!2255371 (inv!16 (value!184050 token!511)))))

(declare-fun b!3643241 () Bool)

(declare-fun res!1477062 () Bool)

(declare-fun e!2255370 () Bool)

(assert (=> b!3643241 (=> res!1477062 e!2255370)))

(assert (=> b!3643241 (= res!1477062 (not ((_ is IntegerValue!17912) (value!184050 token!511))))))

(assert (=> b!3643241 (= e!2255369 e!2255370)))

(declare-fun b!3643242 () Bool)

(declare-fun inv!17 (TokenValue!5970) Bool)

(assert (=> b!3643242 (= e!2255369 (inv!17 (value!184050 token!511)))))

(declare-fun b!3643243 () Bool)

(declare-fun inv!15 (TokenValue!5970) Bool)

(assert (=> b!3643243 (= e!2255370 (inv!15 (value!184050 token!511)))))

(assert (= (and d!1071023 c!629867) b!3643240))

(assert (= (and d!1071023 (not c!629867)) b!3643239))

(assert (= (and b!3643239 c!629866) b!3643242))

(assert (= (and b!3643239 (not c!629866)) b!3643241))

(assert (= (and b!3643241 (not res!1477062)) b!3643243))

(declare-fun m!4146701 () Bool)

(assert (=> b!3643240 m!4146701))

(declare-fun m!4146703 () Bool)

(assert (=> b!3643242 m!4146703))

(declare-fun m!4146705 () Bool)

(assert (=> b!3643243 m!4146705))

(assert (=> b!3642847 d!1071023))

(declare-fun d!1071025 () Bool)

(declare-fun lt!1261938 () Bool)

(assert (=> d!1071025 (= lt!1261938 (select (content!5530 lt!1261771) lt!1261769))))

(declare-fun e!2255373 () Bool)

(assert (=> d!1071025 (= lt!1261938 e!2255373)))

(declare-fun res!1477064 () Bool)

(assert (=> d!1071025 (=> (not res!1477064) (not e!2255373))))

(assert (=> d!1071025 (= res!1477064 ((_ is Cons!38399) lt!1261771))))

(assert (=> d!1071025 (= (contains!7545 lt!1261771 lt!1261769) lt!1261938)))

(declare-fun b!3643244 () Bool)

(declare-fun e!2255372 () Bool)

(assert (=> b!3643244 (= e!2255373 e!2255372)))

(declare-fun res!1477063 () Bool)

(assert (=> b!3643244 (=> res!1477063 e!2255372)))

(assert (=> b!3643244 (= res!1477063 (= (h!43819 lt!1261771) lt!1261769))))

(declare-fun b!3643245 () Bool)

(assert (=> b!3643245 (= e!2255372 (contains!7545 (t!296666 lt!1261771) lt!1261769))))

(assert (= (and d!1071025 res!1477064) b!3643244))

(assert (= (and b!3643244 (not res!1477063)) b!3643245))

(declare-fun m!4146707 () Bool)

(assert (=> d!1071025 m!4146707))

(declare-fun m!4146709 () Bool)

(assert (=> d!1071025 m!4146709))

(declare-fun m!4146711 () Bool)

(assert (=> b!3643245 m!4146711))

(assert (=> b!3642826 d!1071025))

(declare-fun d!1071027 () Bool)

(assert (=> d!1071027 (= (isEmpty!22740 (_2!22268 lt!1261766)) ((_ is Nil!38399) (_2!22268 lt!1261766)))))

(assert (=> b!3642843 d!1071027))

(declare-fun d!1071029 () Bool)

(assert (=> d!1071029 (= (inv!51835 (tag!6492 rule!403)) (= (mod (str.len (value!184049 (tag!6492 rule!403))) 2) 0))))

(assert (=> b!3642844 d!1071029))

(declare-fun d!1071031 () Bool)

(declare-fun res!1477067 () Bool)

(declare-fun e!2255376 () Bool)

(assert (=> d!1071031 (=> (not res!1477067) (not e!2255376))))

(declare-fun semiInverseModEq!2445 (Int Int) Bool)

(assert (=> d!1071031 (= res!1477067 (semiInverseModEq!2445 (toChars!7891 (transformation!5740 rule!403)) (toValue!8032 (transformation!5740 rule!403))))))

(assert (=> d!1071031 (= (inv!51839 (transformation!5740 rule!403)) e!2255376)))

(declare-fun b!3643248 () Bool)

(declare-fun equivClasses!2344 (Int Int) Bool)

(assert (=> b!3643248 (= e!2255376 (equivClasses!2344 (toChars!7891 (transformation!5740 rule!403)) (toValue!8032 (transformation!5740 rule!403))))))

(assert (= (and d!1071031 res!1477067) b!3643248))

(declare-fun m!4146713 () Bool)

(assert (=> d!1071031 m!4146713))

(declare-fun m!4146715 () Bool)

(assert (=> b!3643248 m!4146715))

(assert (=> b!3642844 d!1071031))

(declare-fun d!1071033 () Bool)

(declare-fun res!1477072 () Bool)

(declare-fun e!2255381 () Bool)

(assert (=> d!1071033 (=> res!1477072 e!2255381)))

(assert (=> d!1071033 (= res!1477072 (not ((_ is Cons!38401) rules!3307)))))

(assert (=> d!1071033 (= (sepAndNonSepRulesDisjointChars!1908 rules!3307 rules!3307) e!2255381)))

(declare-fun b!3643253 () Bool)

(declare-fun e!2255382 () Bool)

(assert (=> b!3643253 (= e!2255381 e!2255382)))

(declare-fun res!1477073 () Bool)

(assert (=> b!3643253 (=> (not res!1477073) (not e!2255382))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!869 (Rule!11280 List!38525) Bool)

(assert (=> b!3643253 (= res!1477073 (ruleDisjointCharsFromAllFromOtherType!869 (h!43821 rules!3307) rules!3307))))

(declare-fun b!3643254 () Bool)

(assert (=> b!3643254 (= e!2255382 (sepAndNonSepRulesDisjointChars!1908 rules!3307 (t!296668 rules!3307)))))

(assert (= (and d!1071033 (not res!1477072)) b!3643253))

(assert (= (and b!3643253 res!1477073) b!3643254))

(declare-fun m!4146717 () Bool)

(assert (=> b!3643253 m!4146717))

(declare-fun m!4146719 () Bool)

(assert (=> b!3643254 m!4146719))

(assert (=> b!3642861 d!1071033))

(declare-fun d!1071035 () Bool)

(declare-fun lt!1261939 () Bool)

(assert (=> d!1071035 (= lt!1261939 (select (content!5530 lt!1261757) lt!1261770))))

(declare-fun e!2255384 () Bool)

(assert (=> d!1071035 (= lt!1261939 e!2255384)))

(declare-fun res!1477075 () Bool)

(assert (=> d!1071035 (=> (not res!1477075) (not e!2255384))))

(assert (=> d!1071035 (= res!1477075 ((_ is Cons!38399) lt!1261757))))

(assert (=> d!1071035 (= (contains!7545 lt!1261757 lt!1261770) lt!1261939)))

(declare-fun b!3643255 () Bool)

(declare-fun e!2255383 () Bool)

(assert (=> b!3643255 (= e!2255384 e!2255383)))

(declare-fun res!1477074 () Bool)

(assert (=> b!3643255 (=> res!1477074 e!2255383)))

(assert (=> b!3643255 (= res!1477074 (= (h!43819 lt!1261757) lt!1261770))))

(declare-fun b!3643256 () Bool)

(assert (=> b!3643256 (= e!2255383 (contains!7545 (t!296666 lt!1261757) lt!1261770))))

(assert (= (and d!1071035 res!1477075) b!3643255))

(assert (= (and b!3643255 (not res!1477074)) b!3643256))

(declare-fun m!4146721 () Bool)

(assert (=> d!1071035 m!4146721))

(declare-fun m!4146723 () Bool)

(assert (=> d!1071035 m!4146723))

(declare-fun m!4146725 () Bool)

(assert (=> b!3643256 m!4146725))

(assert (=> b!3642840 d!1071035))

(declare-fun d!1071037 () Bool)

(assert (=> d!1071037 (= (head!7742 suffix!1395) (h!43819 suffix!1395))))

(assert (=> b!3642840 d!1071037))

(declare-fun b!3643257 () Bool)

(declare-fun e!2255385 () List!38523)

(declare-fun call!263318 () List!38523)

(assert (=> b!3643257 (= e!2255385 call!263318)))

(declare-fun d!1071039 () Bool)

(declare-fun c!629868 () Bool)

(assert (=> d!1071039 (= c!629868 (or ((_ is EmptyExpr!10499) (regex!5740 rule!403)) ((_ is EmptyLang!10499) (regex!5740 rule!403))))))

(declare-fun e!2255387 () List!38523)

(assert (=> d!1071039 (= (usedCharacters!952 (regex!5740 rule!403)) e!2255387)))

(declare-fun b!3643258 () Bool)

(declare-fun e!2255386 () List!38523)

(assert (=> b!3643258 (= e!2255385 e!2255386)))

(declare-fun c!629870 () Bool)

(assert (=> b!3643258 (= c!629870 ((_ is Union!10499) (regex!5740 rule!403)))))

(declare-fun b!3643259 () Bool)

(declare-fun call!263321 () List!38523)

(assert (=> b!3643259 (= e!2255386 call!263321)))

(declare-fun b!3643260 () Bool)

(declare-fun e!2255388 () List!38523)

(assert (=> b!3643260 (= e!2255387 e!2255388)))

(declare-fun c!629871 () Bool)

(assert (=> b!3643260 (= c!629871 ((_ is ElementMatch!10499) (regex!5740 rule!403)))))

(declare-fun bm!263313 () Bool)

(declare-fun call!263320 () List!38523)

(declare-fun call!263319 () List!38523)

(assert (=> bm!263313 (= call!263321 (++!9556 (ite c!629870 call!263320 call!263319) (ite c!629870 call!263319 call!263320)))))

(declare-fun c!629869 () Bool)

(declare-fun bm!263314 () Bool)

(assert (=> bm!263314 (= call!263318 (usedCharacters!952 (ite c!629869 (reg!10828 (regex!5740 rule!403)) (ite c!629870 (regOne!21511 (regex!5740 rule!403)) (regTwo!21510 (regex!5740 rule!403))))))))

(declare-fun b!3643261 () Bool)

(assert (=> b!3643261 (= e!2255387 Nil!38399)))

(declare-fun b!3643262 () Bool)

(assert (=> b!3643262 (= e!2255386 call!263321)))

(declare-fun bm!263315 () Bool)

(assert (=> bm!263315 (= call!263320 call!263318)))

(declare-fun b!3643263 () Bool)

(assert (=> b!3643263 (= e!2255388 (Cons!38399 (c!629782 (regex!5740 rule!403)) Nil!38399))))

(declare-fun b!3643264 () Bool)

(assert (=> b!3643264 (= c!629869 ((_ is Star!10499) (regex!5740 rule!403)))))

(assert (=> b!3643264 (= e!2255388 e!2255385)))

(declare-fun bm!263316 () Bool)

(assert (=> bm!263316 (= call!263319 (usedCharacters!952 (ite c!629870 (regTwo!21511 (regex!5740 rule!403)) (regOne!21510 (regex!5740 rule!403)))))))

(assert (= (and d!1071039 c!629868) b!3643261))

(assert (= (and d!1071039 (not c!629868)) b!3643260))

(assert (= (and b!3643260 c!629871) b!3643263))

(assert (= (and b!3643260 (not c!629871)) b!3643264))

(assert (= (and b!3643264 c!629869) b!3643257))

(assert (= (and b!3643264 (not c!629869)) b!3643258))

(assert (= (and b!3643258 c!629870) b!3643262))

(assert (= (and b!3643258 (not c!629870)) b!3643259))

(assert (= (or b!3643262 b!3643259) bm!263315))

(assert (= (or b!3643262 b!3643259) bm!263316))

(assert (= (or b!3643262 b!3643259) bm!263313))

(assert (= (or b!3643257 bm!263315) bm!263314))

(declare-fun m!4146727 () Bool)

(assert (=> bm!263313 m!4146727))

(declare-fun m!4146729 () Bool)

(assert (=> bm!263314 m!4146729))

(declare-fun m!4146731 () Bool)

(assert (=> bm!263316 m!4146731))

(assert (=> b!3642840 d!1071039))

(declare-fun d!1071041 () Bool)

(declare-fun lt!1261940 () Bool)

(assert (=> d!1071041 (= lt!1261940 (select (content!5530 lt!1261757) lt!1261769))))

(declare-fun e!2255390 () Bool)

(assert (=> d!1071041 (= lt!1261940 e!2255390)))

(declare-fun res!1477077 () Bool)

(assert (=> d!1071041 (=> (not res!1477077) (not e!2255390))))

(assert (=> d!1071041 (= res!1477077 ((_ is Cons!38399) lt!1261757))))

(assert (=> d!1071041 (= (contains!7545 lt!1261757 lt!1261769) lt!1261940)))

(declare-fun b!3643265 () Bool)

(declare-fun e!2255389 () Bool)

(assert (=> b!3643265 (= e!2255390 e!2255389)))

(declare-fun res!1477076 () Bool)

(assert (=> b!3643265 (=> res!1477076 e!2255389)))

(assert (=> b!3643265 (= res!1477076 (= (h!43819 lt!1261757) lt!1261769))))

(declare-fun b!3643266 () Bool)

(assert (=> b!3643266 (= e!2255389 (contains!7545 (t!296666 lt!1261757) lt!1261769))))

(assert (= (and d!1071041 res!1477077) b!3643265))

(assert (= (and b!3643265 (not res!1477076)) b!3643266))

(assert (=> d!1071041 m!4146721))

(declare-fun m!4146733 () Bool)

(assert (=> d!1071041 m!4146733))

(declare-fun m!4146735 () Bool)

(assert (=> b!3643266 m!4146735))

(assert (=> b!3642841 d!1071041))

(declare-fun d!1071043 () Bool)

(assert (=> d!1071043 (= (head!7742 lt!1261768) (h!43819 lt!1261768))))

(assert (=> b!3642841 d!1071043))

(declare-fun d!1071045 () Bool)

(assert (=> d!1071045 (= (inv!51835 (tag!6492 (rule!8526 token!511))) (= (mod (str.len (value!184049 (tag!6492 (rule!8526 token!511)))) 2) 0))))

(assert (=> b!3642842 d!1071045))

(declare-fun d!1071047 () Bool)

(declare-fun res!1477078 () Bool)

(declare-fun e!2255391 () Bool)

(assert (=> d!1071047 (=> (not res!1477078) (not e!2255391))))

(assert (=> d!1071047 (= res!1477078 (semiInverseModEq!2445 (toChars!7891 (transformation!5740 (rule!8526 token!511))) (toValue!8032 (transformation!5740 (rule!8526 token!511)))))))

(assert (=> d!1071047 (= (inv!51839 (transformation!5740 (rule!8526 token!511))) e!2255391)))

(declare-fun b!3643267 () Bool)

(assert (=> b!3643267 (= e!2255391 (equivClasses!2344 (toChars!7891 (transformation!5740 (rule!8526 token!511))) (toValue!8032 (transformation!5740 (rule!8526 token!511)))))))

(assert (= (and d!1071047 res!1477078) b!3643267))

(declare-fun m!4146737 () Bool)

(assert (=> d!1071047 m!4146737))

(declare-fun m!4146739 () Bool)

(assert (=> b!3643267 m!4146739))

(assert (=> b!3642842 d!1071047))

(declare-fun d!1071049 () Bool)

(declare-fun res!1477083 () Bool)

(declare-fun e!2255394 () Bool)

(assert (=> d!1071049 (=> (not res!1477083) (not e!2255394))))

(assert (=> d!1071049 (= res!1477083 (not (isEmpty!22740 (originalCharacters!6454 token!511))))))

(assert (=> d!1071049 (= (inv!51838 token!511) e!2255394)))

(declare-fun b!3643272 () Bool)

(declare-fun res!1477084 () Bool)

(assert (=> b!3643272 (=> (not res!1477084) (not e!2255394))))

(assert (=> b!3643272 (= res!1477084 (= (originalCharacters!6454 token!511) (list!14218 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 token!511))) (value!184050 token!511)))))))

(declare-fun b!3643273 () Bool)

(assert (=> b!3643273 (= e!2255394 (= (size!29311 token!511) (size!29313 (originalCharacters!6454 token!511))))))

(assert (= (and d!1071049 res!1477083) b!3643272))

(assert (= (and b!3643272 res!1477084) b!3643273))

(declare-fun b_lambda!108007 () Bool)

(assert (=> (not b_lambda!108007) (not b!3643272)))

(declare-fun t!296726 () Bool)

(declare-fun tb!209957 () Bool)

(assert (=> (and b!3642849 (= (toChars!7891 (transformation!5740 (rule!8526 token!511))) (toChars!7891 (transformation!5740 (rule!8526 token!511)))) t!296726) tb!209957))

(declare-fun b!3643274 () Bool)

(declare-fun e!2255395 () Bool)

(declare-fun tp!1111226 () Bool)

(assert (=> b!3643274 (= e!2255395 (and (inv!51842 (c!629783 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 token!511))) (value!184050 token!511)))) tp!1111226))))

(declare-fun result!255706 () Bool)

(assert (=> tb!209957 (= result!255706 (and (inv!51843 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 token!511))) (value!184050 token!511))) e!2255395))))

(assert (= tb!209957 b!3643274))

(declare-fun m!4146741 () Bool)

(assert (=> b!3643274 m!4146741))

(declare-fun m!4146743 () Bool)

(assert (=> tb!209957 m!4146743))

(assert (=> b!3643272 t!296726))

(declare-fun b_and!268787 () Bool)

(assert (= b_and!268747 (and (=> t!296726 result!255706) b_and!268787)))

(declare-fun tb!209959 () Bool)

(declare-fun t!296728 () Bool)

(assert (=> (and b!3642837 (= (toChars!7891 (transformation!5740 rule!403)) (toChars!7891 (transformation!5740 (rule!8526 token!511)))) t!296728) tb!209959))

(declare-fun result!255708 () Bool)

(assert (= result!255708 result!255706))

(assert (=> b!3643272 t!296728))

(declare-fun b_and!268789 () Bool)

(assert (= b_and!268749 (and (=> t!296728 result!255708) b_and!268789)))

(declare-fun tb!209961 () Bool)

(declare-fun t!296730 () Bool)

(assert (=> (and b!3642833 (= (toChars!7891 (transformation!5740 anOtherTypeRule!33)) (toChars!7891 (transformation!5740 (rule!8526 token!511)))) t!296730) tb!209961))

(declare-fun result!255710 () Bool)

(assert (= result!255710 result!255706))

(assert (=> b!3643272 t!296730))

(declare-fun b_and!268791 () Bool)

(assert (= b_and!268751 (and (=> t!296730 result!255710) b_and!268791)))

(declare-fun t!296732 () Bool)

(declare-fun tb!209963 () Bool)

(assert (=> (and b!3642853 (= (toChars!7891 (transformation!5740 (h!43821 rules!3307))) (toChars!7891 (transformation!5740 (rule!8526 token!511)))) t!296732) tb!209963))

(declare-fun result!255712 () Bool)

(assert (= result!255712 result!255706))

(assert (=> b!3643272 t!296732))

(declare-fun b_and!268793 () Bool)

(assert (= b_and!268753 (and (=> t!296732 result!255712) b_and!268793)))

(declare-fun m!4146745 () Bool)

(assert (=> d!1071049 m!4146745))

(declare-fun m!4146747 () Bool)

(assert (=> b!3643272 m!4146747))

(assert (=> b!3643272 m!4146747))

(declare-fun m!4146749 () Bool)

(assert (=> b!3643272 m!4146749))

(declare-fun m!4146751 () Bool)

(assert (=> b!3643273 m!4146751))

(assert (=> start!340278 d!1071049))

(declare-fun d!1071051 () Bool)

(declare-fun res!1477087 () Bool)

(declare-fun e!2255398 () Bool)

(assert (=> d!1071051 (=> (not res!1477087) (not e!2255398))))

(declare-fun rulesValid!2202 (LexerInterface!5329 List!38525) Bool)

(assert (=> d!1071051 (= res!1477087 (rulesValid!2202 thiss!23823 rules!3307))))

(assert (=> d!1071051 (= (rulesInvariant!4726 thiss!23823 rules!3307) e!2255398)))

(declare-fun b!3643277 () Bool)

(declare-datatypes ((List!38528 0))(
  ( (Nil!38404) (Cons!38404 (h!43824 String!43184) (t!296791 List!38528)) )
))
(declare-fun noDuplicateTag!2198 (LexerInterface!5329 List!38525 List!38528) Bool)

(assert (=> b!3643277 (= e!2255398 (noDuplicateTag!2198 thiss!23823 rules!3307 Nil!38404))))

(assert (= (and d!1071051 res!1477087) b!3643277))

(declare-fun m!4146753 () Bool)

(assert (=> d!1071051 m!4146753))

(declare-fun m!4146755 () Bool)

(assert (=> b!3643277 m!4146755))

(assert (=> b!3642838 d!1071051))

(declare-fun d!1071053 () Bool)

(assert (=> d!1071053 (not (matchR!5068 (regex!5740 rule!403) lt!1261771))))

(declare-fun lt!1261943 () Unit!55264)

(declare-fun choose!21433 (Regex!10499 List!38523 C!21184) Unit!55264)

(assert (=> d!1071053 (= lt!1261943 (choose!21433 (regex!5740 rule!403) lt!1261771 lt!1261769))))

(declare-fun validRegex!4807 (Regex!10499) Bool)

(assert (=> d!1071053 (validRegex!4807 (regex!5740 rule!403))))

(assert (=> d!1071053 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!688 (regex!5740 rule!403) lt!1261771 lt!1261769) lt!1261943)))

(declare-fun bs!572013 () Bool)

(assert (= bs!572013 d!1071053))

(assert (=> bs!572013 m!4146237))

(declare-fun m!4146757 () Bool)

(assert (=> bs!572013 m!4146757))

(declare-fun m!4146759 () Bool)

(assert (=> bs!572013 m!4146759))

(assert (=> b!3642860 d!1071053))

(declare-fun d!1071055 () Bool)

(declare-fun lt!1261946 () Bool)

(declare-fun content!5531 (List!38525) (InoxSet Rule!11280))

(assert (=> d!1071055 (= lt!1261946 (select (content!5531 rules!3307) rule!403))))

(declare-fun e!2255404 () Bool)

(assert (=> d!1071055 (= lt!1261946 e!2255404)))

(declare-fun res!1477093 () Bool)

(assert (=> d!1071055 (=> (not res!1477093) (not e!2255404))))

(assert (=> d!1071055 (= res!1477093 ((_ is Cons!38401) rules!3307))))

(assert (=> d!1071055 (= (contains!7546 rules!3307 rule!403) lt!1261946)))

(declare-fun b!3643282 () Bool)

(declare-fun e!2255403 () Bool)

(assert (=> b!3643282 (= e!2255404 e!2255403)))

(declare-fun res!1477092 () Bool)

(assert (=> b!3643282 (=> res!1477092 e!2255403)))

(assert (=> b!3643282 (= res!1477092 (= (h!43821 rules!3307) rule!403))))

(declare-fun b!3643283 () Bool)

(assert (=> b!3643283 (= e!2255403 (contains!7546 (t!296668 rules!3307) rule!403))))

(assert (= (and d!1071055 res!1477093) b!3643282))

(assert (= (and b!3643282 (not res!1477092)) b!3643283))

(declare-fun m!4146761 () Bool)

(assert (=> d!1071055 m!4146761))

(declare-fun m!4146763 () Bool)

(assert (=> d!1071055 m!4146763))

(declare-fun m!4146765 () Bool)

(assert (=> b!3643283 m!4146765))

(assert (=> b!3642839 d!1071055))

(declare-fun d!1071057 () Bool)

(assert (=> d!1071057 (= (inv!51835 (tag!6492 (h!43821 rules!3307))) (= (mod (str.len (value!184049 (tag!6492 (h!43821 rules!3307)))) 2) 0))))

(assert (=> b!3642856 d!1071057))

(declare-fun d!1071059 () Bool)

(declare-fun res!1477094 () Bool)

(declare-fun e!2255405 () Bool)

(assert (=> d!1071059 (=> (not res!1477094) (not e!2255405))))

(assert (=> d!1071059 (= res!1477094 (semiInverseModEq!2445 (toChars!7891 (transformation!5740 (h!43821 rules!3307))) (toValue!8032 (transformation!5740 (h!43821 rules!3307)))))))

(assert (=> d!1071059 (= (inv!51839 (transformation!5740 (h!43821 rules!3307))) e!2255405)))

(declare-fun b!3643284 () Bool)

(assert (=> b!3643284 (= e!2255405 (equivClasses!2344 (toChars!7891 (transformation!5740 (h!43821 rules!3307))) (toValue!8032 (transformation!5740 (h!43821 rules!3307)))))))

(assert (= (and d!1071059 res!1477094) b!3643284))

(declare-fun m!4146767 () Bool)

(assert (=> d!1071059 m!4146767))

(declare-fun m!4146769 () Bool)

(assert (=> b!3643284 m!4146769))

(assert (=> b!3642856 d!1071059))

(declare-fun b!3643313 () Bool)

(declare-fun res!1477118 () Bool)

(declare-fun e!2255420 () Bool)

(assert (=> b!3643313 (=> (not res!1477118) (not e!2255420))))

(declare-fun call!263324 () Bool)

(assert (=> b!3643313 (= res!1477118 (not call!263324))))

(declare-fun b!3643314 () Bool)

(declare-fun e!2255425 () Bool)

(declare-fun nullable!3645 (Regex!10499) Bool)

(assert (=> b!3643314 (= e!2255425 (nullable!3645 (regex!5740 rule!403)))))

(declare-fun b!3643315 () Bool)

(declare-fun e!2255423 () Bool)

(declare-fun lt!1261949 () Bool)

(assert (=> b!3643315 (= e!2255423 (not lt!1261949))))

(declare-fun b!3643316 () Bool)

(declare-fun e!2255424 () Bool)

(declare-fun e!2255422 () Bool)

(assert (=> b!3643316 (= e!2255424 e!2255422)))

(declare-fun res!1477115 () Bool)

(assert (=> b!3643316 (=> res!1477115 e!2255422)))

(assert (=> b!3643316 (= res!1477115 call!263324)))

(declare-fun b!3643317 () Bool)

(declare-fun res!1477113 () Bool)

(assert (=> b!3643317 (=> (not res!1477113) (not e!2255420))))

(declare-fun tail!5643 (List!38523) List!38523)

(assert (=> b!3643317 (= res!1477113 (isEmpty!22740 (tail!5643 lt!1261771)))))

(declare-fun bm!263319 () Bool)

(assert (=> bm!263319 (= call!263324 (isEmpty!22740 lt!1261771))))

(declare-fun d!1071061 () Bool)

(declare-fun e!2255426 () Bool)

(assert (=> d!1071061 e!2255426))

(declare-fun c!629880 () Bool)

(assert (=> d!1071061 (= c!629880 ((_ is EmptyExpr!10499) (regex!5740 rule!403)))))

(assert (=> d!1071061 (= lt!1261949 e!2255425)))

(declare-fun c!629881 () Bool)

(assert (=> d!1071061 (= c!629881 (isEmpty!22740 lt!1261771))))

(assert (=> d!1071061 (validRegex!4807 (regex!5740 rule!403))))

(assert (=> d!1071061 (= (matchR!5068 (regex!5740 rule!403) lt!1261771) lt!1261949)))

(declare-fun b!3643318 () Bool)

(assert (=> b!3643318 (= e!2255426 e!2255423)))

(declare-fun c!629879 () Bool)

(assert (=> b!3643318 (= c!629879 ((_ is EmptyLang!10499) (regex!5740 rule!403)))))

(declare-fun b!3643319 () Bool)

(assert (=> b!3643319 (= e!2255422 (not (= (head!7742 lt!1261771) (c!629782 (regex!5740 rule!403)))))))

(declare-fun b!3643320 () Bool)

(declare-fun res!1477111 () Bool)

(declare-fun e!2255421 () Bool)

(assert (=> b!3643320 (=> res!1477111 e!2255421)))

(assert (=> b!3643320 (= res!1477111 e!2255420)))

(declare-fun res!1477114 () Bool)

(assert (=> b!3643320 (=> (not res!1477114) (not e!2255420))))

(assert (=> b!3643320 (= res!1477114 lt!1261949)))

(declare-fun b!3643321 () Bool)

(declare-fun derivativeStep!3194 (Regex!10499 C!21184) Regex!10499)

(assert (=> b!3643321 (= e!2255425 (matchR!5068 (derivativeStep!3194 (regex!5740 rule!403) (head!7742 lt!1261771)) (tail!5643 lt!1261771)))))

(declare-fun b!3643322 () Bool)

(declare-fun res!1477112 () Bool)

(assert (=> b!3643322 (=> res!1477112 e!2255421)))

(assert (=> b!3643322 (= res!1477112 (not ((_ is ElementMatch!10499) (regex!5740 rule!403))))))

(assert (=> b!3643322 (= e!2255423 e!2255421)))

(declare-fun b!3643323 () Bool)

(declare-fun res!1477116 () Bool)

(assert (=> b!3643323 (=> res!1477116 e!2255422)))

(assert (=> b!3643323 (= res!1477116 (not (isEmpty!22740 (tail!5643 lt!1261771))))))

(declare-fun b!3643324 () Bool)

(assert (=> b!3643324 (= e!2255421 e!2255424)))

(declare-fun res!1477117 () Bool)

(assert (=> b!3643324 (=> (not res!1477117) (not e!2255424))))

(assert (=> b!3643324 (= res!1477117 (not lt!1261949))))

(declare-fun b!3643325 () Bool)

(assert (=> b!3643325 (= e!2255420 (= (head!7742 lt!1261771) (c!629782 (regex!5740 rule!403))))))

(declare-fun b!3643326 () Bool)

(assert (=> b!3643326 (= e!2255426 (= lt!1261949 call!263324))))

(assert (= (and d!1071061 c!629881) b!3643314))

(assert (= (and d!1071061 (not c!629881)) b!3643321))

(assert (= (and d!1071061 c!629880) b!3643326))

(assert (= (and d!1071061 (not c!629880)) b!3643318))

(assert (= (and b!3643318 c!629879) b!3643315))

(assert (= (and b!3643318 (not c!629879)) b!3643322))

(assert (= (and b!3643322 (not res!1477112)) b!3643320))

(assert (= (and b!3643320 res!1477114) b!3643313))

(assert (= (and b!3643313 res!1477118) b!3643317))

(assert (= (and b!3643317 res!1477113) b!3643325))

(assert (= (and b!3643320 (not res!1477111)) b!3643324))

(assert (= (and b!3643324 res!1477117) b!3643316))

(assert (= (and b!3643316 (not res!1477115)) b!3643323))

(assert (= (and b!3643323 (not res!1477116)) b!3643319))

(assert (= (or b!3643326 b!3643313 b!3643316) bm!263319))

(declare-fun m!4146771 () Bool)

(assert (=> b!3643321 m!4146771))

(assert (=> b!3643321 m!4146771))

(declare-fun m!4146773 () Bool)

(assert (=> b!3643321 m!4146773))

(declare-fun m!4146775 () Bool)

(assert (=> b!3643321 m!4146775))

(assert (=> b!3643321 m!4146773))

(assert (=> b!3643321 m!4146775))

(declare-fun m!4146777 () Bool)

(assert (=> b!3643321 m!4146777))

(assert (=> b!3643323 m!4146775))

(assert (=> b!3643323 m!4146775))

(declare-fun m!4146779 () Bool)

(assert (=> b!3643323 m!4146779))

(assert (=> b!3643325 m!4146771))

(assert (=> b!3643319 m!4146771))

(declare-fun m!4146781 () Bool)

(assert (=> bm!263319 m!4146781))

(declare-fun m!4146783 () Bool)

(assert (=> b!3643314 m!4146783))

(assert (=> b!3643317 m!4146775))

(assert (=> b!3643317 m!4146775))

(assert (=> b!3643317 m!4146779))

(assert (=> d!1071061 m!4146781))

(assert (=> d!1071061 m!4146759))

(assert (=> b!3642836 d!1071061))

(declare-fun d!1071063 () Bool)

(declare-fun res!1477123 () Bool)

(declare-fun e!2255429 () Bool)

(assert (=> d!1071063 (=> (not res!1477123) (not e!2255429))))

(assert (=> d!1071063 (= res!1477123 (validRegex!4807 (regex!5740 rule!403)))))

(assert (=> d!1071063 (= (ruleValid!2004 thiss!23823 rule!403) e!2255429)))

(declare-fun b!3643331 () Bool)

(declare-fun res!1477124 () Bool)

(assert (=> b!3643331 (=> (not res!1477124) (not e!2255429))))

(assert (=> b!3643331 (= res!1477124 (not (nullable!3645 (regex!5740 rule!403))))))

(declare-fun b!3643332 () Bool)

(assert (=> b!3643332 (= e!2255429 (not (= (tag!6492 rule!403) (String!43185 ""))))))

(assert (= (and d!1071063 res!1477123) b!3643331))

(assert (= (and b!3643331 res!1477124) b!3643332))

(assert (=> d!1071063 m!4146759))

(assert (=> b!3643331 m!4146783))

(assert (=> b!3642836 d!1071063))

(declare-fun d!1071065 () Bool)

(assert (=> d!1071065 (ruleValid!2004 thiss!23823 rule!403)))

(declare-fun lt!1261952 () Unit!55264)

(declare-fun choose!21434 (LexerInterface!5329 Rule!11280 List!38525) Unit!55264)

(assert (=> d!1071065 (= lt!1261952 (choose!21434 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1071065 (contains!7546 rules!3307 rule!403)))

(assert (=> d!1071065 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1158 thiss!23823 rule!403 rules!3307) lt!1261952)))

(declare-fun bs!572014 () Bool)

(assert (= bs!572014 d!1071065))

(assert (=> bs!572014 m!4146239))

(declare-fun m!4146785 () Bool)

(assert (=> bs!572014 m!4146785))

(assert (=> bs!572014 m!4146183))

(assert (=> b!3642836 d!1071065))

(declare-fun d!1071067 () Bool)

(assert (=> d!1071067 (= (_2!22268 lt!1261749) lt!1261743)))

(declare-fun lt!1261955 () Unit!55264)

(declare-fun choose!21435 (List!38523 List!38523 List!38523 List!38523 List!38523) Unit!55264)

(assert (=> d!1071067 (= lt!1261955 (choose!21435 lt!1261768 (_2!22268 lt!1261749) lt!1261768 lt!1261743 lt!1261747))))

(assert (=> d!1071067 (isPrefix!3103 lt!1261768 lt!1261747)))

(assert (=> d!1071067 (= (lemmaSamePrefixThenSameSuffix!1430 lt!1261768 (_2!22268 lt!1261749) lt!1261768 lt!1261743 lt!1261747) lt!1261955)))

(declare-fun bs!572015 () Bool)

(assert (= bs!572015 d!1071067))

(declare-fun m!4146787 () Bool)

(assert (=> bs!572015 m!4146787))

(assert (=> bs!572015 m!4146229))

(assert (=> b!3642858 d!1071067))

(declare-fun d!1071069 () Bool)

(assert (=> d!1071069 (= (apply!9242 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) (seqFromList!4289 lt!1261768)) (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (seqFromList!4289 lt!1261768)))))

(declare-fun b_lambda!108009 () Bool)

(assert (=> (not b_lambda!108009) (not d!1071069)))

(declare-fun tb!209965 () Bool)

(declare-fun t!296734 () Bool)

(assert (=> (and b!3642849 (= (toValue!8032 (transformation!5740 (rule!8526 token!511))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296734) tb!209965))

(declare-fun result!255714 () Bool)

(assert (=> tb!209965 (= result!255714 (inv!21 (dynLambda!16716 (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (seqFromList!4289 lt!1261768))))))

(declare-fun m!4146789 () Bool)

(assert (=> tb!209965 m!4146789))

(assert (=> d!1071069 t!296734))

(declare-fun b_and!268795 () Bool)

(assert (= b_and!268779 (and (=> t!296734 result!255714) b_and!268795)))

(declare-fun t!296736 () Bool)

(declare-fun tb!209967 () Bool)

(assert (=> (and b!3642837 (= (toValue!8032 (transformation!5740 rule!403)) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296736) tb!209967))

(declare-fun result!255716 () Bool)

(assert (= result!255716 result!255714))

(assert (=> d!1071069 t!296736))

(declare-fun b_and!268797 () Bool)

(assert (= b_and!268781 (and (=> t!296736 result!255716) b_and!268797)))

(declare-fun tb!209969 () Bool)

(declare-fun t!296738 () Bool)

(assert (=> (and b!3642833 (= (toValue!8032 (transformation!5740 anOtherTypeRule!33)) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296738) tb!209969))

(declare-fun result!255718 () Bool)

(assert (= result!255718 result!255714))

(assert (=> d!1071069 t!296738))

(declare-fun b_and!268799 () Bool)

(assert (= b_and!268783 (and (=> t!296738 result!255718) b_and!268799)))

(declare-fun t!296740 () Bool)

(declare-fun tb!209971 () Bool)

(assert (=> (and b!3642853 (= (toValue!8032 (transformation!5740 (h!43821 rules!3307))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296740) tb!209971))

(declare-fun result!255720 () Bool)

(assert (= result!255720 result!255714))

(assert (=> d!1071069 t!296740))

(declare-fun b_and!268801 () Bool)

(assert (= b_and!268785 (and (=> t!296740 result!255720) b_and!268801)))

(assert (=> d!1071069 m!4146165))

(declare-fun m!4146791 () Bool)

(assert (=> d!1071069 m!4146791))

(assert (=> b!3642858 d!1071069))

(declare-fun d!1071071 () Bool)

(assert (=> d!1071071 (= (seqFromList!4289 lt!1261768) (fromListB!1981 lt!1261768))))

(declare-fun bs!572016 () Bool)

(assert (= bs!572016 d!1071071))

(declare-fun m!4146793 () Bool)

(assert (=> bs!572016 m!4146793))

(assert (=> b!3642858 d!1071071))

(declare-fun d!1071073 () Bool)

(declare-fun lt!1261958 () Int)

(assert (=> d!1071073 (>= lt!1261958 0)))

(declare-fun e!2255433 () Int)

(assert (=> d!1071073 (= lt!1261958 e!2255433)))

(declare-fun c!629884 () Bool)

(assert (=> d!1071073 (= c!629884 ((_ is Nil!38399) lt!1261768))))

(assert (=> d!1071073 (= (size!29313 lt!1261768) lt!1261958)))

(declare-fun b!3643337 () Bool)

(assert (=> b!3643337 (= e!2255433 0)))

(declare-fun b!3643338 () Bool)

(assert (=> b!3643338 (= e!2255433 (+ 1 (size!29313 (t!296666 lt!1261768))))))

(assert (= (and d!1071073 c!629884) b!3643337))

(assert (= (and d!1071073 (not c!629884)) b!3643338))

(declare-fun m!4146795 () Bool)

(assert (=> b!3643338 m!4146795))

(assert (=> b!3642858 d!1071073))

(declare-fun b!3643357 () Bool)

(declare-fun e!2255443 () Option!8108)

(assert (=> b!3643357 (= e!2255443 None!8107)))

(declare-fun b!3643358 () Bool)

(declare-fun res!1477142 () Bool)

(declare-fun e!2255445 () Bool)

(assert (=> b!3643358 (=> (not res!1477142) (not e!2255445))))

(declare-fun lt!1261970 () Option!8108)

(assert (=> b!3643358 (= res!1477142 (= (rule!8526 (_1!22268 (get!12588 lt!1261970))) (rule!8526 (_1!22268 lt!1261749))))))

(declare-fun b!3643360 () Bool)

(declare-fun res!1477144 () Bool)

(assert (=> b!3643360 (=> (not res!1477144) (not e!2255445))))

(assert (=> b!3643360 (= res!1477144 (= (++!9556 (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1261970)))) (_2!22268 (get!12588 lt!1261970))) lt!1261747))))

(declare-fun b!3643361 () Bool)

(declare-datatypes ((tuple2!38274 0))(
  ( (tuple2!38275 (_1!22271 List!38523) (_2!22271 List!38523)) )
))
(declare-fun lt!1261971 () tuple2!38274)

(assert (=> b!3643361 (= e!2255443 (Some!8107 (tuple2!38269 (Token!10847 (apply!9242 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) (seqFromList!4289 (_1!22271 lt!1261971))) (rule!8526 (_1!22268 lt!1261749)) (size!29312 (seqFromList!4289 (_1!22271 lt!1261971))) (_1!22271 lt!1261971)) (_2!22271 lt!1261971))))))

(declare-fun lt!1261969 () Unit!55264)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1014 (Regex!10499 List!38523) Unit!55264)

(assert (=> b!3643361 (= lt!1261969 (longestMatchIsAcceptedByMatchOrIsEmpty!1014 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261747))))

(declare-fun res!1477139 () Bool)

(declare-fun findLongestMatchInner!1041 (Regex!10499 List!38523 Int List!38523 List!38523 Int) tuple2!38274)

(assert (=> b!3643361 (= res!1477139 (isEmpty!22740 (_1!22271 (findLongestMatchInner!1041 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) Nil!38399 (size!29313 Nil!38399) lt!1261747 lt!1261747 (size!29313 lt!1261747)))))))

(declare-fun e!2255442 () Bool)

(assert (=> b!3643361 (=> res!1477139 e!2255442)))

(assert (=> b!3643361 e!2255442))

(declare-fun lt!1261972 () Unit!55264)

(assert (=> b!3643361 (= lt!1261972 lt!1261969)))

(declare-fun lt!1261973 () Unit!55264)

(assert (=> b!3643361 (= lt!1261973 (lemmaSemiInverse!1489 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) (seqFromList!4289 (_1!22271 lt!1261971))))))

(declare-fun b!3643362 () Bool)

(assert (=> b!3643362 (= e!2255445 (= (size!29311 (_1!22268 (get!12588 lt!1261970))) (size!29313 (originalCharacters!6454 (_1!22268 (get!12588 lt!1261970))))))))

(declare-fun b!3643363 () Bool)

(declare-fun res!1477140 () Bool)

(assert (=> b!3643363 (=> (not res!1477140) (not e!2255445))))

(assert (=> b!3643363 (= res!1477140 (< (size!29313 (_2!22268 (get!12588 lt!1261970))) (size!29313 lt!1261747)))))

(declare-fun b!3643359 () Bool)

(declare-fun res!1477145 () Bool)

(assert (=> b!3643359 (=> (not res!1477145) (not e!2255445))))

(assert (=> b!3643359 (= res!1477145 (= (value!184050 (_1!22268 (get!12588 lt!1261970))) (apply!9242 (transformation!5740 (rule!8526 (_1!22268 (get!12588 lt!1261970)))) (seqFromList!4289 (originalCharacters!6454 (_1!22268 (get!12588 lt!1261970)))))))))

(declare-fun d!1071075 () Bool)

(declare-fun e!2255444 () Bool)

(assert (=> d!1071075 e!2255444))

(declare-fun res!1477143 () Bool)

(assert (=> d!1071075 (=> res!1477143 e!2255444)))

(declare-fun isEmpty!22744 (Option!8108) Bool)

(assert (=> d!1071075 (= res!1477143 (isEmpty!22744 lt!1261970))))

(assert (=> d!1071075 (= lt!1261970 e!2255443)))

(declare-fun c!629887 () Bool)

(assert (=> d!1071075 (= c!629887 (isEmpty!22740 (_1!22271 lt!1261971)))))

(declare-fun findLongestMatch!956 (Regex!10499 List!38523) tuple2!38274)

(assert (=> d!1071075 (= lt!1261971 (findLongestMatch!956 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261747))))

(assert (=> d!1071075 (ruleValid!2004 thiss!23823 (rule!8526 (_1!22268 lt!1261749)))))

(assert (=> d!1071075 (= (maxPrefixOneRule!2001 thiss!23823 (rule!8526 (_1!22268 lt!1261749)) lt!1261747) lt!1261970)))

(declare-fun b!3643364 () Bool)

(assert (=> b!3643364 (= e!2255444 e!2255445)))

(declare-fun res!1477141 () Bool)

(assert (=> b!3643364 (=> (not res!1477141) (not e!2255445))))

(assert (=> b!3643364 (= res!1477141 (matchR!5068 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1261970))))))))

(declare-fun b!3643365 () Bool)

(assert (=> b!3643365 (= e!2255442 (matchR!5068 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) (_1!22271 (findLongestMatchInner!1041 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) Nil!38399 (size!29313 Nil!38399) lt!1261747 lt!1261747 (size!29313 lt!1261747)))))))

(assert (= (and d!1071075 c!629887) b!3643357))

(assert (= (and d!1071075 (not c!629887)) b!3643361))

(assert (= (and b!3643361 (not res!1477139)) b!3643365))

(assert (= (and d!1071075 (not res!1477143)) b!3643364))

(assert (= (and b!3643364 res!1477141) b!3643360))

(assert (= (and b!3643360 res!1477144) b!3643363))

(assert (= (and b!3643363 res!1477140) b!3643358))

(assert (= (and b!3643358 res!1477142) b!3643359))

(assert (= (and b!3643359 res!1477145) b!3643362))

(declare-fun m!4146797 () Bool)

(assert (=> b!3643361 m!4146797))

(declare-fun m!4146799 () Bool)

(assert (=> b!3643361 m!4146799))

(declare-fun m!4146801 () Bool)

(assert (=> b!3643361 m!4146801))

(assert (=> b!3643361 m!4146799))

(declare-fun m!4146803 () Bool)

(assert (=> b!3643361 m!4146803))

(declare-fun m!4146805 () Bool)

(assert (=> b!3643361 m!4146805))

(declare-fun m!4146807 () Bool)

(assert (=> b!3643361 m!4146807))

(assert (=> b!3643361 m!4146799))

(declare-fun m!4146809 () Bool)

(assert (=> b!3643361 m!4146809))

(assert (=> b!3643361 m!4146799))

(declare-fun m!4146811 () Bool)

(assert (=> b!3643361 m!4146811))

(assert (=> b!3643361 m!4146807))

(assert (=> b!3643361 m!4146797))

(declare-fun m!4146813 () Bool)

(assert (=> b!3643361 m!4146813))

(declare-fun m!4146815 () Bool)

(assert (=> b!3643362 m!4146815))

(declare-fun m!4146817 () Bool)

(assert (=> b!3643362 m!4146817))

(assert (=> b!3643364 m!4146815))

(declare-fun m!4146819 () Bool)

(assert (=> b!3643364 m!4146819))

(assert (=> b!3643364 m!4146819))

(declare-fun m!4146821 () Bool)

(assert (=> b!3643364 m!4146821))

(assert (=> b!3643364 m!4146821))

(declare-fun m!4146823 () Bool)

(assert (=> b!3643364 m!4146823))

(assert (=> b!3643360 m!4146815))

(assert (=> b!3643360 m!4146819))

(assert (=> b!3643360 m!4146819))

(assert (=> b!3643360 m!4146821))

(assert (=> b!3643360 m!4146821))

(declare-fun m!4146825 () Bool)

(assert (=> b!3643360 m!4146825))

(declare-fun m!4146827 () Bool)

(assert (=> d!1071075 m!4146827))

(declare-fun m!4146829 () Bool)

(assert (=> d!1071075 m!4146829))

(declare-fun m!4146831 () Bool)

(assert (=> d!1071075 m!4146831))

(declare-fun m!4146833 () Bool)

(assert (=> d!1071075 m!4146833))

(assert (=> b!3643363 m!4146815))

(declare-fun m!4146835 () Bool)

(assert (=> b!3643363 m!4146835))

(assert (=> b!3643363 m!4146797))

(assert (=> b!3643358 m!4146815))

(assert (=> b!3643365 m!4146807))

(assert (=> b!3643365 m!4146797))

(assert (=> b!3643365 m!4146807))

(assert (=> b!3643365 m!4146797))

(assert (=> b!3643365 m!4146813))

(declare-fun m!4146837 () Bool)

(assert (=> b!3643365 m!4146837))

(assert (=> b!3643359 m!4146815))

(declare-fun m!4146839 () Bool)

(assert (=> b!3643359 m!4146839))

(assert (=> b!3643359 m!4146839))

(declare-fun m!4146841 () Bool)

(assert (=> b!3643359 m!4146841))

(assert (=> b!3642858 d!1071075))

(declare-fun d!1071077 () Bool)

(declare-fun lt!1261976 () List!38523)

(assert (=> d!1071077 (= (++!9556 lt!1261768 lt!1261976) lt!1261747)))

(declare-fun e!2255448 () List!38523)

(assert (=> d!1071077 (= lt!1261976 e!2255448)))

(declare-fun c!629890 () Bool)

(assert (=> d!1071077 (= c!629890 ((_ is Cons!38399) lt!1261768))))

(assert (=> d!1071077 (>= (size!29313 lt!1261747) (size!29313 lt!1261768))))

(assert (=> d!1071077 (= (getSuffix!1656 lt!1261747 lt!1261768) lt!1261976)))

(declare-fun b!3643370 () Bool)

(assert (=> b!3643370 (= e!2255448 (getSuffix!1656 (tail!5643 lt!1261747) (t!296666 lt!1261768)))))

(declare-fun b!3643371 () Bool)

(assert (=> b!3643371 (= e!2255448 lt!1261747)))

(assert (= (and d!1071077 c!629890) b!3643370))

(assert (= (and d!1071077 (not c!629890)) b!3643371))

(declare-fun m!4146843 () Bool)

(assert (=> d!1071077 m!4146843))

(assert (=> d!1071077 m!4146797))

(assert (=> d!1071077 m!4146171))

(declare-fun m!4146845 () Bool)

(assert (=> b!3643370 m!4146845))

(assert (=> b!3643370 m!4146845))

(declare-fun m!4146847 () Bool)

(assert (=> b!3643370 m!4146847))

(assert (=> b!3642858 d!1071077))

(declare-fun d!1071079 () Bool)

(assert (=> d!1071079 (= (maxPrefixOneRule!2001 thiss!23823 (rule!8526 (_1!22268 lt!1261749)) lt!1261747) (Some!8107 (tuple2!38269 (Token!10847 (apply!9242 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))) (seqFromList!4289 lt!1261768)) (rule!8526 (_1!22268 lt!1261749)) (size!29313 lt!1261768) lt!1261768) (_2!22268 lt!1261749))))))

(declare-fun lt!1261979 () Unit!55264)

(declare-fun choose!21436 (LexerInterface!5329 List!38525 List!38523 List!38523 List!38523 Rule!11280) Unit!55264)

(assert (=> d!1071079 (= lt!1261979 (choose!21436 thiss!23823 rules!3307 lt!1261768 lt!1261747 (_2!22268 lt!1261749) (rule!8526 (_1!22268 lt!1261749))))))

(assert (=> d!1071079 (not (isEmpty!22741 rules!3307))))

(assert (=> d!1071079 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1057 thiss!23823 rules!3307 lt!1261768 lt!1261747 (_2!22268 lt!1261749) (rule!8526 (_1!22268 lt!1261749))) lt!1261979)))

(declare-fun bs!572017 () Bool)

(assert (= bs!572017 d!1071079))

(declare-fun m!4146849 () Bool)

(assert (=> bs!572017 m!4146849))

(assert (=> bs!572017 m!4146165))

(assert (=> bs!572017 m!4146153))

(assert (=> bs!572017 m!4146165))

(assert (=> bs!572017 m!4146167))

(assert (=> bs!572017 m!4146161))

(assert (=> bs!572017 m!4146171))

(assert (=> b!3642858 d!1071079))

(declare-fun d!1071081 () Bool)

(assert (=> d!1071081 (= (get!12588 lt!1261751) (v!37943 lt!1261751))))

(assert (=> b!3642832 d!1071081))

(declare-fun b!3643384 () Bool)

(declare-fun e!2255458 () Option!8109)

(assert (=> b!3643384 (= e!2255458 None!8108)))

(declare-fun b!3643385 () Bool)

(declare-fun e!2255459 () Bool)

(declare-fun e!2255460 () Bool)

(assert (=> b!3643385 (= e!2255459 e!2255460)))

(declare-fun res!1477150 () Bool)

(assert (=> b!3643385 (=> (not res!1477150) (not e!2255460))))

(declare-fun lt!1261987 () Option!8109)

(assert (=> b!3643385 (= res!1477150 (contains!7546 rules!3307 (get!12589 lt!1261987)))))

(declare-fun d!1071083 () Bool)

(assert (=> d!1071083 e!2255459))

(declare-fun res!1477151 () Bool)

(assert (=> d!1071083 (=> res!1477151 e!2255459)))

(declare-fun isEmpty!22745 (Option!8109) Bool)

(assert (=> d!1071083 (= res!1477151 (isEmpty!22745 lt!1261987))))

(declare-fun e!2255457 () Option!8109)

(assert (=> d!1071083 (= lt!1261987 e!2255457)))

(declare-fun c!629895 () Bool)

(assert (=> d!1071083 (= c!629895 (and ((_ is Cons!38401) rules!3307) (= (tag!6492 (h!43821 rules!3307)) (tag!6492 (rule!8526 (_1!22268 lt!1261749))))))))

(assert (=> d!1071083 (rulesInvariant!4726 thiss!23823 rules!3307)))

(assert (=> d!1071083 (= (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 (_1!22268 lt!1261749)))) lt!1261987)))

(declare-fun b!3643386 () Bool)

(declare-fun lt!1261988 () Unit!55264)

(declare-fun lt!1261986 () Unit!55264)

(assert (=> b!3643386 (= lt!1261988 lt!1261986)))

(assert (=> b!3643386 (rulesInvariant!4726 thiss!23823 (t!296668 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!575 (LexerInterface!5329 Rule!11280 List!38525) Unit!55264)

(assert (=> b!3643386 (= lt!1261986 (lemmaInvariantOnRulesThenOnTail!575 thiss!23823 (h!43821 rules!3307) (t!296668 rules!3307)))))

(assert (=> b!3643386 (= e!2255458 (getRuleFromTag!1344 thiss!23823 (t!296668 rules!3307) (tag!6492 (rule!8526 (_1!22268 lt!1261749)))))))

(declare-fun b!3643387 () Bool)

(assert (=> b!3643387 (= e!2255457 (Some!8108 (h!43821 rules!3307)))))

(declare-fun b!3643388 () Bool)

(assert (=> b!3643388 (= e!2255460 (= (tag!6492 (get!12589 lt!1261987)) (tag!6492 (rule!8526 (_1!22268 lt!1261749)))))))

(declare-fun b!3643389 () Bool)

(assert (=> b!3643389 (= e!2255457 e!2255458)))

(declare-fun c!629896 () Bool)

(assert (=> b!3643389 (= c!629896 (and ((_ is Cons!38401) rules!3307) (not (= (tag!6492 (h!43821 rules!3307)) (tag!6492 (rule!8526 (_1!22268 lt!1261749)))))))))

(assert (= (and d!1071083 c!629895) b!3643387))

(assert (= (and d!1071083 (not c!629895)) b!3643389))

(assert (= (and b!3643389 c!629896) b!3643386))

(assert (= (and b!3643389 (not c!629896)) b!3643384))

(assert (= (and d!1071083 (not res!1477151)) b!3643385))

(assert (= (and b!3643385 res!1477150) b!3643388))

(declare-fun m!4146851 () Bool)

(assert (=> b!3643385 m!4146851))

(assert (=> b!3643385 m!4146851))

(declare-fun m!4146853 () Bool)

(assert (=> b!3643385 m!4146853))

(declare-fun m!4146855 () Bool)

(assert (=> d!1071083 m!4146855))

(assert (=> d!1071083 m!4146129))

(declare-fun m!4146857 () Bool)

(assert (=> b!3643386 m!4146857))

(declare-fun m!4146859 () Bool)

(assert (=> b!3643386 m!4146859))

(declare-fun m!4146861 () Bool)

(assert (=> b!3643386 m!4146861))

(assert (=> b!3643388 m!4146851))

(assert (=> b!3642854 d!1071083))

(declare-fun b!3643404 () Bool)

(declare-fun e!2255472 () Bool)

(declare-fun e!2255471 () Bool)

(assert (=> b!3643404 (= e!2255472 e!2255471)))

(declare-fun res!1477163 () Bool)

(assert (=> b!3643404 (=> (not res!1477163) (not e!2255471))))

(assert (=> b!3643404 (= res!1477163 (not ((_ is Nil!38399) (++!9556 lt!1261768 (_2!22268 lt!1261749)))))))

(declare-fun b!3643405 () Bool)

(declare-fun res!1477162 () Bool)

(assert (=> b!3643405 (=> (not res!1477162) (not e!2255471))))

(assert (=> b!3643405 (= res!1477162 (= (head!7742 lt!1261768) (head!7742 (++!9556 lt!1261768 (_2!22268 lt!1261749)))))))

(declare-fun d!1071085 () Bool)

(declare-fun e!2255473 () Bool)

(assert (=> d!1071085 e!2255473))

(declare-fun res!1477161 () Bool)

(assert (=> d!1071085 (=> res!1477161 e!2255473)))

(declare-fun lt!1261992 () Bool)

(assert (=> d!1071085 (= res!1477161 (not lt!1261992))))

(assert (=> d!1071085 (= lt!1261992 e!2255472)))

(declare-fun res!1477160 () Bool)

(assert (=> d!1071085 (=> res!1477160 e!2255472)))

(assert (=> d!1071085 (= res!1477160 ((_ is Nil!38399) lt!1261768))))

(assert (=> d!1071085 (= (isPrefix!3103 lt!1261768 (++!9556 lt!1261768 (_2!22268 lt!1261749))) lt!1261992)))

(declare-fun b!3643407 () Bool)

(assert (=> b!3643407 (= e!2255473 (>= (size!29313 (++!9556 lt!1261768 (_2!22268 lt!1261749))) (size!29313 lt!1261768)))))

(declare-fun b!3643406 () Bool)

(assert (=> b!3643406 (= e!2255471 (isPrefix!3103 (tail!5643 lt!1261768) (tail!5643 (++!9556 lt!1261768 (_2!22268 lt!1261749)))))))

(assert (= (and d!1071085 (not res!1477160)) b!3643404))

(assert (= (and b!3643404 res!1477163) b!3643405))

(assert (= (and b!3643405 res!1477162) b!3643406))

(assert (= (and d!1071085 (not res!1477161)) b!3643407))

(assert (=> b!3643405 m!4146199))

(assert (=> b!3643405 m!4146205))

(declare-fun m!4146867 () Bool)

(assert (=> b!3643405 m!4146867))

(assert (=> b!3643407 m!4146205))

(declare-fun m!4146869 () Bool)

(assert (=> b!3643407 m!4146869))

(assert (=> b!3643407 m!4146171))

(declare-fun m!4146873 () Bool)

(assert (=> b!3643406 m!4146873))

(assert (=> b!3643406 m!4146205))

(declare-fun m!4146875 () Bool)

(assert (=> b!3643406 m!4146875))

(assert (=> b!3643406 m!4146873))

(assert (=> b!3643406 m!4146875))

(declare-fun m!4146879 () Bool)

(assert (=> b!3643406 m!4146879))

(assert (=> b!3642854 d!1071085))

(declare-fun b!3643408 () Bool)

(declare-fun e!2255475 () Bool)

(declare-fun e!2255474 () Bool)

(assert (=> b!3643408 (= e!2255475 e!2255474)))

(declare-fun res!1477167 () Bool)

(assert (=> b!3643408 (=> (not res!1477167) (not e!2255474))))

(assert (=> b!3643408 (= res!1477167 (not ((_ is Nil!38399) lt!1261747)))))

(declare-fun b!3643409 () Bool)

(declare-fun res!1477166 () Bool)

(assert (=> b!3643409 (=> (not res!1477166) (not e!2255474))))

(assert (=> b!3643409 (= res!1477166 (= (head!7742 lt!1261771) (head!7742 lt!1261747)))))

(declare-fun d!1071087 () Bool)

(declare-fun e!2255476 () Bool)

(assert (=> d!1071087 e!2255476))

(declare-fun res!1477165 () Bool)

(assert (=> d!1071087 (=> res!1477165 e!2255476)))

(declare-fun lt!1261993 () Bool)

(assert (=> d!1071087 (= res!1477165 (not lt!1261993))))

(assert (=> d!1071087 (= lt!1261993 e!2255475)))

(declare-fun res!1477164 () Bool)

(assert (=> d!1071087 (=> res!1477164 e!2255475)))

(assert (=> d!1071087 (= res!1477164 ((_ is Nil!38399) lt!1261771))))

(assert (=> d!1071087 (= (isPrefix!3103 lt!1261771 lt!1261747) lt!1261993)))

(declare-fun b!3643411 () Bool)

(assert (=> b!3643411 (= e!2255476 (>= (size!29313 lt!1261747) (size!29313 lt!1261771)))))

(declare-fun b!3643410 () Bool)

(assert (=> b!3643410 (= e!2255474 (isPrefix!3103 (tail!5643 lt!1261771) (tail!5643 lt!1261747)))))

(assert (= (and d!1071087 (not res!1477164)) b!3643408))

(assert (= (and b!3643408 res!1477167) b!3643409))

(assert (= (and b!3643409 res!1477166) b!3643410))

(assert (= (and d!1071087 (not res!1477165)) b!3643411))

(assert (=> b!3643409 m!4146771))

(declare-fun m!4146883 () Bool)

(assert (=> b!3643409 m!4146883))

(assert (=> b!3643411 m!4146797))

(declare-fun m!4146885 () Bool)

(assert (=> b!3643411 m!4146885))

(assert (=> b!3643410 m!4146775))

(assert (=> b!3643410 m!4146845))

(assert (=> b!3643410 m!4146775))

(assert (=> b!3643410 m!4146845))

(declare-fun m!4146887 () Bool)

(assert (=> b!3643410 m!4146887))

(assert (=> b!3642854 d!1071087))

(declare-fun b!3643477 () Bool)

(declare-fun e!2255513 () Unit!55264)

(declare-fun Unit!55272 () Unit!55264)

(assert (=> b!3643477 (= e!2255513 Unit!55272)))

(declare-fun d!1071091 () Bool)

(assert (=> d!1071091 (isDefined!6340 (maxPrefix!2863 thiss!23823 rules!3307 (++!9556 lt!1261771 suffix!1395)))))

(declare-fun lt!1262040 () Unit!55264)

(assert (=> d!1071091 (= lt!1262040 e!2255513)))

(declare-fun c!629899 () Bool)

(assert (=> d!1071091 (= c!629899 (isEmpty!22744 (maxPrefix!2863 thiss!23823 rules!3307 (++!9556 lt!1261771 suffix!1395))))))

(declare-fun lt!1262048 () Unit!55264)

(declare-fun lt!1262047 () Unit!55264)

(assert (=> d!1071091 (= lt!1262048 lt!1262047)))

(declare-fun e!2255514 () Bool)

(assert (=> d!1071091 e!2255514))

(declare-fun res!1477178 () Bool)

(assert (=> d!1071091 (=> (not res!1477178) (not e!2255514))))

(declare-fun lt!1262034 () Token!10846)

(assert (=> d!1071091 (= res!1477178 (isDefined!6341 (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 lt!1262034)))))))

(assert (=> d!1071091 (= lt!1262047 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1344 thiss!23823 rules!3307 lt!1261771 lt!1262034))))

(declare-fun lt!1262043 () Unit!55264)

(declare-fun lt!1262037 () Unit!55264)

(assert (=> d!1071091 (= lt!1262043 lt!1262037)))

(declare-fun lt!1262039 () List!38523)

(assert (=> d!1071091 (isPrefix!3103 lt!1262039 (++!9556 lt!1261771 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!496 (List!38523 List!38523 List!38523) Unit!55264)

(assert (=> d!1071091 (= lt!1262037 (lemmaPrefixStaysPrefixWhenAddingToSuffix!496 lt!1262039 lt!1261771 suffix!1395))))

(assert (=> d!1071091 (= lt!1262039 (list!14218 (charsOf!3754 lt!1262034)))))

(declare-fun lt!1262042 () Unit!55264)

(declare-fun lt!1262038 () Unit!55264)

(assert (=> d!1071091 (= lt!1262042 lt!1262038)))

(declare-fun lt!1262044 () List!38523)

(declare-fun lt!1262032 () List!38523)

(assert (=> d!1071091 (isPrefix!3103 lt!1262044 (++!9556 lt!1262044 lt!1262032))))

(assert (=> d!1071091 (= lt!1262038 (lemmaConcatTwoListThenFirstIsPrefix!2022 lt!1262044 lt!1262032))))

(assert (=> d!1071091 (= lt!1262032 (_2!22268 (get!12588 (maxPrefix!2863 thiss!23823 rules!3307 lt!1261771))))))

(assert (=> d!1071091 (= lt!1262044 (list!14218 (charsOf!3754 lt!1262034)))))

(declare-datatypes ((List!38529 0))(
  ( (Nil!38405) (Cons!38405 (h!43825 Token!10846) (t!296792 List!38529)) )
))
(declare-fun head!7744 (List!38529) Token!10846)

(declare-datatypes ((IArray!23463 0))(
  ( (IArray!23464 (innerList!11789 List!38529)) )
))
(declare-datatypes ((Conc!11729 0))(
  ( (Node!11729 (left!29985 Conc!11729) (right!30315 Conc!11729) (csize!23688 Int) (cheight!11940 Int)) (Leaf!18210 (xs!14931 IArray!23463) (csize!23689 Int)) (Empty!11729) )
))
(declare-datatypes ((BalanceConc!23072 0))(
  ( (BalanceConc!23073 (c!629915 Conc!11729)) )
))
(declare-fun list!14221 (BalanceConc!23072) List!38529)

(declare-datatypes ((tuple2!38276 0))(
  ( (tuple2!38277 (_1!22272 BalanceConc!23072) (_2!22272 BalanceConc!23068)) )
))
(declare-fun lex!2528 (LexerInterface!5329 List!38525 BalanceConc!23068) tuple2!38276)

(assert (=> d!1071091 (= lt!1262034 (head!7744 (list!14221 (_1!22272 (lex!2528 thiss!23823 rules!3307 (seqFromList!4289 lt!1261771))))))))

(assert (=> d!1071091 (not (isEmpty!22741 rules!3307))))

(assert (=> d!1071091 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1007 thiss!23823 rules!3307 lt!1261771 suffix!1395) lt!1262040)))

(declare-fun b!3643476 () Bool)

(declare-fun Unit!55273 () Unit!55264)

(assert (=> b!3643476 (= e!2255513 Unit!55273)))

(declare-fun lt!1262035 () List!38523)

(assert (=> b!3643476 (= lt!1262035 (++!9556 lt!1261771 suffix!1395))))

(declare-fun lt!1262045 () Unit!55264)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!532 (LexerInterface!5329 Rule!11280 List!38525 List!38523) Unit!55264)

(assert (=> b!3643476 (= lt!1262045 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!532 thiss!23823 (rule!8526 lt!1262034) rules!3307 lt!1262035))))

(assert (=> b!3643476 (isEmpty!22744 (maxPrefixOneRule!2001 thiss!23823 (rule!8526 lt!1262034) lt!1262035))))

(declare-fun lt!1262041 () Unit!55264)

(assert (=> b!3643476 (= lt!1262041 lt!1262045)))

(declare-fun lt!1262036 () List!38523)

(assert (=> b!3643476 (= lt!1262036 (list!14218 (charsOf!3754 lt!1262034)))))

(declare-fun lt!1262046 () Unit!55264)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!520 (LexerInterface!5329 Rule!11280 List!38523 List!38523) Unit!55264)

(assert (=> b!3643476 (= lt!1262046 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!520 thiss!23823 (rule!8526 lt!1262034) lt!1262036 (++!9556 lt!1261771 suffix!1395)))))

(assert (=> b!3643476 (not (matchR!5068 (regex!5740 (rule!8526 lt!1262034)) lt!1262036))))

(declare-fun lt!1262033 () Unit!55264)

(assert (=> b!3643476 (= lt!1262033 lt!1262046)))

(assert (=> b!3643476 false))

(declare-fun b!3643474 () Bool)

(declare-fun res!1477179 () Bool)

(assert (=> b!3643474 (=> (not res!1477179) (not e!2255514))))

(assert (=> b!3643474 (= res!1477179 (matchR!5068 (regex!5740 (get!12589 (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 lt!1262034))))) (list!14218 (charsOf!3754 lt!1262034))))))

(declare-fun b!3643475 () Bool)

(assert (=> b!3643475 (= e!2255514 (= (rule!8526 lt!1262034) (get!12589 (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 lt!1262034))))))))

(assert (= (and d!1071091 res!1477178) b!3643474))

(assert (= (and b!3643474 res!1477179) b!3643475))

(assert (= (and d!1071091 c!629899) b!3643476))

(assert (= (and d!1071091 (not c!629899)) b!3643477))

(declare-fun m!4146915 () Bool)

(assert (=> d!1071091 m!4146915))

(declare-fun m!4146917 () Bool)

(assert (=> d!1071091 m!4146917))

(declare-fun m!4146919 () Bool)

(assert (=> d!1071091 m!4146919))

(assert (=> d!1071091 m!4146217))

(declare-fun m!4146921 () Bool)

(assert (=> d!1071091 m!4146921))

(declare-fun m!4146923 () Bool)

(assert (=> d!1071091 m!4146923))

(declare-fun m!4146925 () Bool)

(assert (=> d!1071091 m!4146925))

(declare-fun m!4146927 () Bool)

(assert (=> d!1071091 m!4146927))

(declare-fun m!4146929 () Bool)

(assert (=> d!1071091 m!4146929))

(declare-fun m!4146931 () Bool)

(assert (=> d!1071091 m!4146931))

(declare-fun m!4146933 () Bool)

(assert (=> d!1071091 m!4146933))

(declare-fun m!4146935 () Bool)

(assert (=> d!1071091 m!4146935))

(assert (=> d!1071091 m!4146217))

(declare-fun m!4146937 () Bool)

(assert (=> d!1071091 m!4146937))

(assert (=> d!1071091 m!4146925))

(assert (=> d!1071091 m!4146915))

(declare-fun m!4146939 () Bool)

(assert (=> d!1071091 m!4146939))

(assert (=> d!1071091 m!4146921))

(assert (=> d!1071091 m!4146217))

(assert (=> d!1071091 m!4146917))

(declare-fun m!4146941 () Bool)

(assert (=> d!1071091 m!4146941))

(assert (=> d!1071091 m!4146153))

(assert (=> d!1071091 m!4146933))

(assert (=> d!1071091 m!4146177))

(assert (=> d!1071091 m!4146929))

(declare-fun m!4146943 () Bool)

(assert (=> d!1071091 m!4146943))

(assert (=> d!1071091 m!4146177))

(declare-fun m!4146945 () Bool)

(assert (=> d!1071091 m!4146945))

(assert (=> d!1071091 m!4146917))

(declare-fun m!4146947 () Bool)

(assert (=> d!1071091 m!4146947))

(declare-fun m!4146949 () Bool)

(assert (=> d!1071091 m!4146949))

(assert (=> b!3643476 m!4146915))

(assert (=> b!3643476 m!4146217))

(declare-fun m!4146951 () Bool)

(assert (=> b!3643476 m!4146951))

(declare-fun m!4146953 () Bool)

(assert (=> b!3643476 m!4146953))

(declare-fun m!4146955 () Bool)

(assert (=> b!3643476 m!4146955))

(assert (=> b!3643476 m!4146953))

(declare-fun m!4146957 () Bool)

(assert (=> b!3643476 m!4146957))

(assert (=> b!3643476 m!4146217))

(declare-fun m!4146959 () Bool)

(assert (=> b!3643476 m!4146959))

(assert (=> b!3643476 m!4146915))

(assert (=> b!3643476 m!4146939))

(assert (=> b!3643474 m!4146915))

(assert (=> b!3643474 m!4146929))

(declare-fun m!4146961 () Bool)

(assert (=> b!3643474 m!4146961))

(assert (=> b!3643474 m!4146939))

(declare-fun m!4146963 () Bool)

(assert (=> b!3643474 m!4146963))

(assert (=> b!3643474 m!4146915))

(assert (=> b!3643474 m!4146939))

(assert (=> b!3643474 m!4146929))

(assert (=> b!3643475 m!4146929))

(assert (=> b!3643475 m!4146929))

(assert (=> b!3643475 m!4146961))

(assert (=> b!3642854 d!1071091))

(declare-fun b!3643488 () Bool)

(declare-fun res!1477185 () Bool)

(declare-fun e!2255519 () Bool)

(assert (=> b!3643488 (=> (not res!1477185) (not e!2255519))))

(declare-fun lt!1262051 () List!38523)

(assert (=> b!3643488 (= res!1477185 (= (size!29313 lt!1262051) (+ (size!29313 lt!1261768) (size!29313 (_2!22268 lt!1261749)))))))

(declare-fun d!1071105 () Bool)

(assert (=> d!1071105 e!2255519))

(declare-fun res!1477184 () Bool)

(assert (=> d!1071105 (=> (not res!1477184) (not e!2255519))))

(assert (=> d!1071105 (= res!1477184 (= (content!5530 lt!1262051) ((_ map or) (content!5530 lt!1261768) (content!5530 (_2!22268 lt!1261749)))))))

(declare-fun e!2255520 () List!38523)

(assert (=> d!1071105 (= lt!1262051 e!2255520)))

(declare-fun c!629902 () Bool)

(assert (=> d!1071105 (= c!629902 ((_ is Nil!38399) lt!1261768))))

(assert (=> d!1071105 (= (++!9556 lt!1261768 (_2!22268 lt!1261749)) lt!1262051)))

(declare-fun b!3643489 () Bool)

(assert (=> b!3643489 (= e!2255519 (or (not (= (_2!22268 lt!1261749) Nil!38399)) (= lt!1262051 lt!1261768)))))

(declare-fun b!3643486 () Bool)

(assert (=> b!3643486 (= e!2255520 (_2!22268 lt!1261749))))

(declare-fun b!3643487 () Bool)

(assert (=> b!3643487 (= e!2255520 (Cons!38399 (h!43819 lt!1261768) (++!9556 (t!296666 lt!1261768) (_2!22268 lt!1261749))))))

(assert (= (and d!1071105 c!629902) b!3643486))

(assert (= (and d!1071105 (not c!629902)) b!3643487))

(assert (= (and d!1071105 res!1477184) b!3643488))

(assert (= (and b!3643488 res!1477185) b!3643489))

(declare-fun m!4146965 () Bool)

(assert (=> b!3643488 m!4146965))

(assert (=> b!3643488 m!4146171))

(declare-fun m!4146967 () Bool)

(assert (=> b!3643488 m!4146967))

(declare-fun m!4146969 () Bool)

(assert (=> d!1071105 m!4146969))

(declare-fun m!4146971 () Bool)

(assert (=> d!1071105 m!4146971))

(declare-fun m!4146973 () Bool)

(assert (=> d!1071105 m!4146973))

(declare-fun m!4146975 () Bool)

(assert (=> b!3643487 m!4146975))

(assert (=> b!3642854 d!1071105))

(declare-fun d!1071107 () Bool)

(assert (=> d!1071107 (isPrefix!3103 lt!1261768 (++!9556 lt!1261768 (_2!22268 lt!1261749)))))

(declare-fun lt!1262054 () Unit!55264)

(declare-fun choose!21437 (List!38523 List!38523) Unit!55264)

(assert (=> d!1071107 (= lt!1262054 (choose!21437 lt!1261768 (_2!22268 lt!1261749)))))

(assert (=> d!1071107 (= (lemmaConcatTwoListThenFirstIsPrefix!2022 lt!1261768 (_2!22268 lt!1261749)) lt!1262054)))

(declare-fun bs!572019 () Bool)

(assert (= bs!572019 d!1071107))

(assert (=> bs!572019 m!4146205))

(assert (=> bs!572019 m!4146205))

(assert (=> bs!572019 m!4146207))

(declare-fun m!4146977 () Bool)

(assert (=> bs!572019 m!4146977))

(assert (=> b!3642854 d!1071107))

(declare-fun d!1071109 () Bool)

(declare-fun e!2255523 () Bool)

(assert (=> d!1071109 e!2255523))

(declare-fun res!1477190 () Bool)

(assert (=> d!1071109 (=> (not res!1477190) (not e!2255523))))

(assert (=> d!1071109 (= res!1477190 (isDefined!6341 (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 (_1!22268 lt!1261749))))))))

(declare-fun lt!1262057 () Unit!55264)

(declare-fun choose!21438 (LexerInterface!5329 List!38525 List!38523 Token!10846) Unit!55264)

(assert (=> d!1071109 (= lt!1262057 (choose!21438 thiss!23823 rules!3307 lt!1261747 (_1!22268 lt!1261749)))))

(assert (=> d!1071109 (rulesInvariant!4726 thiss!23823 rules!3307)))

(assert (=> d!1071109 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1344 thiss!23823 rules!3307 lt!1261747 (_1!22268 lt!1261749)) lt!1262057)))

(declare-fun b!3643494 () Bool)

(declare-fun res!1477191 () Bool)

(assert (=> b!3643494 (=> (not res!1477191) (not e!2255523))))

(assert (=> b!3643494 (= res!1477191 (matchR!5068 (regex!5740 (get!12589 (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 (_1!22268 lt!1261749)))))) (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))))))

(declare-fun b!3643495 () Bool)

(assert (=> b!3643495 (= e!2255523 (= (rule!8526 (_1!22268 lt!1261749)) (get!12589 (getRuleFromTag!1344 thiss!23823 rules!3307 (tag!6492 (rule!8526 (_1!22268 lt!1261749)))))))))

(assert (= (and d!1071109 res!1477190) b!3643494))

(assert (= (and b!3643494 res!1477191) b!3643495))

(assert (=> d!1071109 m!4146213))

(assert (=> d!1071109 m!4146213))

(declare-fun m!4146979 () Bool)

(assert (=> d!1071109 m!4146979))

(declare-fun m!4146981 () Bool)

(assert (=> d!1071109 m!4146981))

(assert (=> d!1071109 m!4146129))

(assert (=> b!3643494 m!4146227))

(assert (=> b!3643494 m!4146243))

(assert (=> b!3643494 m!4146227))

(assert (=> b!3643494 m!4146243))

(declare-fun m!4146983 () Bool)

(assert (=> b!3643494 m!4146983))

(assert (=> b!3643494 m!4146213))

(declare-fun m!4146985 () Bool)

(assert (=> b!3643494 m!4146985))

(assert (=> b!3643494 m!4146213))

(assert (=> b!3643495 m!4146213))

(assert (=> b!3643495 m!4146213))

(assert (=> b!3643495 m!4146985))

(assert (=> b!3642854 d!1071109))

(declare-fun d!1071111 () Bool)

(declare-fun list!14222 (Conc!11727) List!38523)

(assert (=> d!1071111 (= (list!14218 lt!1261765) (list!14222 (c!629783 lt!1261765)))))

(declare-fun bs!572020 () Bool)

(assert (= bs!572020 d!1071111))

(declare-fun m!4146987 () Bool)

(assert (=> bs!572020 m!4146987))

(assert (=> b!3642854 d!1071111))

(declare-fun b!3643498 () Bool)

(declare-fun res!1477193 () Bool)

(declare-fun e!2255524 () Bool)

(assert (=> b!3643498 (=> (not res!1477193) (not e!2255524))))

(declare-fun lt!1262058 () List!38523)

(assert (=> b!3643498 (= res!1477193 (= (size!29313 lt!1262058) (+ (size!29313 lt!1261771) (size!29313 suffix!1395))))))

(declare-fun d!1071113 () Bool)

(assert (=> d!1071113 e!2255524))

(declare-fun res!1477192 () Bool)

(assert (=> d!1071113 (=> (not res!1477192) (not e!2255524))))

(assert (=> d!1071113 (= res!1477192 (= (content!5530 lt!1262058) ((_ map or) (content!5530 lt!1261771) (content!5530 suffix!1395))))))

(declare-fun e!2255525 () List!38523)

(assert (=> d!1071113 (= lt!1262058 e!2255525)))

(declare-fun c!629903 () Bool)

(assert (=> d!1071113 (= c!629903 ((_ is Nil!38399) lt!1261771))))

(assert (=> d!1071113 (= (++!9556 lt!1261771 suffix!1395) lt!1262058)))

(declare-fun b!3643499 () Bool)

(assert (=> b!3643499 (= e!2255524 (or (not (= suffix!1395 Nil!38399)) (= lt!1262058 lt!1261771)))))

(declare-fun b!3643496 () Bool)

(assert (=> b!3643496 (= e!2255525 suffix!1395)))

(declare-fun b!3643497 () Bool)

(assert (=> b!3643497 (= e!2255525 (Cons!38399 (h!43819 lt!1261771) (++!9556 (t!296666 lt!1261771) suffix!1395)))))

(assert (= (and d!1071113 c!629903) b!3643496))

(assert (= (and d!1071113 (not c!629903)) b!3643497))

(assert (= (and d!1071113 res!1477192) b!3643498))

(assert (= (and b!3643498 res!1477193) b!3643499))

(declare-fun m!4146989 () Bool)

(assert (=> b!3643498 m!4146989))

(assert (=> b!3643498 m!4146885))

(declare-fun m!4146991 () Bool)

(assert (=> b!3643498 m!4146991))

(declare-fun m!4146993 () Bool)

(assert (=> d!1071113 m!4146993))

(assert (=> d!1071113 m!4146707))

(declare-fun m!4146995 () Bool)

(assert (=> d!1071113 m!4146995))

(declare-fun m!4146997 () Bool)

(assert (=> b!3643497 m!4146997))

(assert (=> b!3642854 d!1071113))

(declare-fun d!1071115 () Bool)

(declare-fun lt!1262061 () BalanceConc!23068)

(assert (=> d!1071115 (= (list!14218 lt!1262061) (originalCharacters!6454 (_1!22268 lt!1261749)))))

(assert (=> d!1071115 (= lt!1262061 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (value!184050 (_1!22268 lt!1261749))))))

(assert (=> d!1071115 (= (charsOf!3754 (_1!22268 lt!1261749)) lt!1262061)))

(declare-fun b_lambda!108023 () Bool)

(assert (=> (not b_lambda!108023) (not d!1071115)))

(declare-fun tb!210001 () Bool)

(declare-fun t!296771 () Bool)

(assert (=> (and b!3642849 (= (toChars!7891 (transformation!5740 (rule!8526 token!511))) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296771) tb!210001))

(declare-fun b!3643500 () Bool)

(declare-fun e!2255526 () Bool)

(declare-fun tp!1111274 () Bool)

(assert (=> b!3643500 (= e!2255526 (and (inv!51842 (c!629783 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (value!184050 (_1!22268 lt!1261749))))) tp!1111274))))

(declare-fun result!255756 () Bool)

(assert (=> tb!210001 (= result!255756 (and (inv!51843 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749)))) (value!184050 (_1!22268 lt!1261749)))) e!2255526))))

(assert (= tb!210001 b!3643500))

(declare-fun m!4146999 () Bool)

(assert (=> b!3643500 m!4146999))

(declare-fun m!4147001 () Bool)

(assert (=> tb!210001 m!4147001))

(assert (=> d!1071115 t!296771))

(declare-fun b_and!268839 () Bool)

(assert (= b_and!268787 (and (=> t!296771 result!255756) b_and!268839)))

(declare-fun t!296773 () Bool)

(declare-fun tb!210003 () Bool)

(assert (=> (and b!3642837 (= (toChars!7891 (transformation!5740 rule!403)) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296773) tb!210003))

(declare-fun result!255758 () Bool)

(assert (= result!255758 result!255756))

(assert (=> d!1071115 t!296773))

(declare-fun b_and!268841 () Bool)

(assert (= b_and!268789 (and (=> t!296773 result!255758) b_and!268841)))

(declare-fun tb!210005 () Bool)

(declare-fun t!296775 () Bool)

(assert (=> (and b!3642833 (= (toChars!7891 (transformation!5740 anOtherTypeRule!33)) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296775) tb!210005))

(declare-fun result!255760 () Bool)

(assert (= result!255760 result!255756))

(assert (=> d!1071115 t!296775))

(declare-fun b_and!268843 () Bool)

(assert (= b_and!268791 (and (=> t!296775 result!255760) b_and!268843)))

(declare-fun t!296777 () Bool)

(declare-fun tb!210007 () Bool)

(assert (=> (and b!3642853 (= (toChars!7891 (transformation!5740 (h!43821 rules!3307))) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296777) tb!210007))

(declare-fun result!255762 () Bool)

(assert (= result!255762 result!255756))

(assert (=> d!1071115 t!296777))

(declare-fun b_and!268845 () Bool)

(assert (= b_and!268793 (and (=> t!296777 result!255762) b_and!268845)))

(declare-fun m!4147003 () Bool)

(assert (=> d!1071115 m!4147003))

(declare-fun m!4147005 () Bool)

(assert (=> d!1071115 m!4147005))

(assert (=> b!3642854 d!1071115))

(declare-fun d!1071117 () Bool)

(assert (=> d!1071117 (= (isDefined!6341 lt!1261754) (not (isEmpty!22745 lt!1261754)))))

(declare-fun bs!572021 () Bool)

(assert (= bs!572021 d!1071117))

(declare-fun m!4147007 () Bool)

(assert (=> bs!572021 m!4147007))

(assert (=> b!3642854 d!1071117))

(declare-fun d!1071119 () Bool)

(assert (=> d!1071119 (isPrefix!3103 lt!1261771 (++!9556 lt!1261771 suffix!1395))))

(declare-fun lt!1262062 () Unit!55264)

(assert (=> d!1071119 (= lt!1262062 (choose!21437 lt!1261771 suffix!1395))))

(assert (=> d!1071119 (= (lemmaConcatTwoListThenFirstIsPrefix!2022 lt!1261771 suffix!1395) lt!1262062)))

(declare-fun bs!572022 () Bool)

(assert (= bs!572022 d!1071119))

(assert (=> bs!572022 m!4146217))

(assert (=> bs!572022 m!4146217))

(declare-fun m!4147009 () Bool)

(assert (=> bs!572022 m!4147009))

(declare-fun m!4147011 () Bool)

(assert (=> bs!572022 m!4147011))

(assert (=> b!3642854 d!1071119))

(declare-fun b!3643519 () Bool)

(declare-fun res!1477212 () Bool)

(declare-fun e!2255535 () Bool)

(assert (=> b!3643519 (=> (not res!1477212) (not e!2255535))))

(declare-fun lt!1262074 () Option!8108)

(assert (=> b!3643519 (= res!1477212 (= (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1262074)))) (originalCharacters!6454 (_1!22268 (get!12588 lt!1262074)))))))

(declare-fun d!1071121 () Bool)

(declare-fun e!2255534 () Bool)

(assert (=> d!1071121 e!2255534))

(declare-fun res!1477208 () Bool)

(assert (=> d!1071121 (=> res!1477208 e!2255534)))

(assert (=> d!1071121 (= res!1477208 (isEmpty!22744 lt!1262074))))

(declare-fun e!2255533 () Option!8108)

(assert (=> d!1071121 (= lt!1262074 e!2255533)))

(declare-fun c!629906 () Bool)

(assert (=> d!1071121 (= c!629906 (and ((_ is Cons!38401) rules!3307) ((_ is Nil!38401) (t!296668 rules!3307))))))

(declare-fun lt!1262077 () Unit!55264)

(declare-fun lt!1262073 () Unit!55264)

(assert (=> d!1071121 (= lt!1262077 lt!1262073)))

(assert (=> d!1071121 (isPrefix!3103 lt!1261747 lt!1261747)))

(declare-fun lemmaIsPrefixRefl!1966 (List!38523 List!38523) Unit!55264)

(assert (=> d!1071121 (= lt!1262073 (lemmaIsPrefixRefl!1966 lt!1261747 lt!1261747))))

(declare-fun rulesValidInductive!2031 (LexerInterface!5329 List!38525) Bool)

(assert (=> d!1071121 (rulesValidInductive!2031 thiss!23823 rules!3307)))

(assert (=> d!1071121 (= (maxPrefix!2863 thiss!23823 rules!3307 lt!1261747) lt!1262074)))

(declare-fun b!3643520 () Bool)

(assert (=> b!3643520 (= e!2255534 e!2255535)))

(declare-fun res!1477213 () Bool)

(assert (=> b!3643520 (=> (not res!1477213) (not e!2255535))))

(assert (=> b!3643520 (= res!1477213 (isDefined!6340 lt!1262074))))

(declare-fun bm!263322 () Bool)

(declare-fun call!263327 () Option!8108)

(assert (=> bm!263322 (= call!263327 (maxPrefixOneRule!2001 thiss!23823 (h!43821 rules!3307) lt!1261747))))

(declare-fun b!3643521 () Bool)

(declare-fun res!1477214 () Bool)

(assert (=> b!3643521 (=> (not res!1477214) (not e!2255535))))

(assert (=> b!3643521 (= res!1477214 (matchR!5068 (regex!5740 (rule!8526 (_1!22268 (get!12588 lt!1262074)))) (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1262074))))))))

(declare-fun b!3643522 () Bool)

(declare-fun res!1477209 () Bool)

(assert (=> b!3643522 (=> (not res!1477209) (not e!2255535))))

(assert (=> b!3643522 (= res!1477209 (< (size!29313 (_2!22268 (get!12588 lt!1262074))) (size!29313 lt!1261747)))))

(declare-fun b!3643523 () Bool)

(declare-fun res!1477211 () Bool)

(assert (=> b!3643523 (=> (not res!1477211) (not e!2255535))))

(assert (=> b!3643523 (= res!1477211 (= (value!184050 (_1!22268 (get!12588 lt!1262074))) (apply!9242 (transformation!5740 (rule!8526 (_1!22268 (get!12588 lt!1262074)))) (seqFromList!4289 (originalCharacters!6454 (_1!22268 (get!12588 lt!1262074)))))))))

(declare-fun b!3643524 () Bool)

(declare-fun res!1477210 () Bool)

(assert (=> b!3643524 (=> (not res!1477210) (not e!2255535))))

(assert (=> b!3643524 (= res!1477210 (= (++!9556 (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1262074)))) (_2!22268 (get!12588 lt!1262074))) lt!1261747))))

(declare-fun b!3643525 () Bool)

(assert (=> b!3643525 (= e!2255535 (contains!7546 rules!3307 (rule!8526 (_1!22268 (get!12588 lt!1262074)))))))

(declare-fun b!3643526 () Bool)

(declare-fun lt!1262076 () Option!8108)

(declare-fun lt!1262075 () Option!8108)

(assert (=> b!3643526 (= e!2255533 (ite (and ((_ is None!8107) lt!1262076) ((_ is None!8107) lt!1262075)) None!8107 (ite ((_ is None!8107) lt!1262075) lt!1262076 (ite ((_ is None!8107) lt!1262076) lt!1262075 (ite (>= (size!29311 (_1!22268 (v!37943 lt!1262076))) (size!29311 (_1!22268 (v!37943 lt!1262075)))) lt!1262076 lt!1262075)))))))

(assert (=> b!3643526 (= lt!1262076 call!263327)))

(assert (=> b!3643526 (= lt!1262075 (maxPrefix!2863 thiss!23823 (t!296668 rules!3307) lt!1261747))))

(declare-fun b!3643527 () Bool)

(assert (=> b!3643527 (= e!2255533 call!263327)))

(assert (= (and d!1071121 c!629906) b!3643527))

(assert (= (and d!1071121 (not c!629906)) b!3643526))

(assert (= (or b!3643527 b!3643526) bm!263322))

(assert (= (and d!1071121 (not res!1477208)) b!3643520))

(assert (= (and b!3643520 res!1477213) b!3643519))

(assert (= (and b!3643519 res!1477212) b!3643522))

(assert (= (and b!3643522 res!1477209) b!3643524))

(assert (= (and b!3643524 res!1477210) b!3643523))

(assert (= (and b!3643523 res!1477211) b!3643521))

(assert (= (and b!3643521 res!1477214) b!3643525))

(declare-fun m!4147013 () Bool)

(assert (=> d!1071121 m!4147013))

(declare-fun m!4147015 () Bool)

(assert (=> d!1071121 m!4147015))

(declare-fun m!4147017 () Bool)

(assert (=> d!1071121 m!4147017))

(declare-fun m!4147019 () Bool)

(assert (=> d!1071121 m!4147019))

(declare-fun m!4147021 () Bool)

(assert (=> bm!263322 m!4147021))

(declare-fun m!4147023 () Bool)

(assert (=> b!3643519 m!4147023))

(declare-fun m!4147025 () Bool)

(assert (=> b!3643519 m!4147025))

(assert (=> b!3643519 m!4147025))

(declare-fun m!4147027 () Bool)

(assert (=> b!3643519 m!4147027))

(assert (=> b!3643524 m!4147023))

(assert (=> b!3643524 m!4147025))

(assert (=> b!3643524 m!4147025))

(assert (=> b!3643524 m!4147027))

(assert (=> b!3643524 m!4147027))

(declare-fun m!4147029 () Bool)

(assert (=> b!3643524 m!4147029))

(assert (=> b!3643522 m!4147023))

(declare-fun m!4147031 () Bool)

(assert (=> b!3643522 m!4147031))

(assert (=> b!3643522 m!4146797))

(declare-fun m!4147033 () Bool)

(assert (=> b!3643520 m!4147033))

(declare-fun m!4147035 () Bool)

(assert (=> b!3643526 m!4147035))

(assert (=> b!3643523 m!4147023))

(declare-fun m!4147037 () Bool)

(assert (=> b!3643523 m!4147037))

(assert (=> b!3643523 m!4147037))

(declare-fun m!4147039 () Bool)

(assert (=> b!3643523 m!4147039))

(assert (=> b!3643525 m!4147023))

(declare-fun m!4147041 () Bool)

(assert (=> b!3643525 m!4147041))

(assert (=> b!3643521 m!4147023))

(assert (=> b!3643521 m!4147025))

(assert (=> b!3643521 m!4147025))

(assert (=> b!3643521 m!4147027))

(assert (=> b!3643521 m!4147027))

(declare-fun m!4147043 () Bool)

(assert (=> b!3643521 m!4147043))

(assert (=> b!3642854 d!1071121))

(declare-fun b!3643528 () Bool)

(declare-fun e!2255537 () Bool)

(declare-fun e!2255536 () Bool)

(assert (=> b!3643528 (= e!2255537 e!2255536)))

(declare-fun res!1477218 () Bool)

(assert (=> b!3643528 (=> (not res!1477218) (not e!2255536))))

(assert (=> b!3643528 (= res!1477218 (not ((_ is Nil!38399) lt!1261747)))))

(declare-fun b!3643529 () Bool)

(declare-fun res!1477217 () Bool)

(assert (=> b!3643529 (=> (not res!1477217) (not e!2255536))))

(assert (=> b!3643529 (= res!1477217 (= (head!7742 lt!1261768) (head!7742 lt!1261747)))))

(declare-fun d!1071123 () Bool)

(declare-fun e!2255538 () Bool)

(assert (=> d!1071123 e!2255538))

(declare-fun res!1477216 () Bool)

(assert (=> d!1071123 (=> res!1477216 e!2255538)))

(declare-fun lt!1262078 () Bool)

(assert (=> d!1071123 (= res!1477216 (not lt!1262078))))

(assert (=> d!1071123 (= lt!1262078 e!2255537)))

(declare-fun res!1477215 () Bool)

(assert (=> d!1071123 (=> res!1477215 e!2255537)))

(assert (=> d!1071123 (= res!1477215 ((_ is Nil!38399) lt!1261768))))

(assert (=> d!1071123 (= (isPrefix!3103 lt!1261768 lt!1261747) lt!1262078)))

(declare-fun b!3643531 () Bool)

(assert (=> b!3643531 (= e!2255538 (>= (size!29313 lt!1261747) (size!29313 lt!1261768)))))

(declare-fun b!3643530 () Bool)

(assert (=> b!3643530 (= e!2255536 (isPrefix!3103 (tail!5643 lt!1261768) (tail!5643 lt!1261747)))))

(assert (= (and d!1071123 (not res!1477215)) b!3643528))

(assert (= (and b!3643528 res!1477218) b!3643529))

(assert (= (and b!3643529 res!1477217) b!3643530))

(assert (= (and d!1071123 (not res!1477216)) b!3643531))

(assert (=> b!3643529 m!4146199))

(assert (=> b!3643529 m!4146883))

(assert (=> b!3643531 m!4146797))

(assert (=> b!3643531 m!4146171))

(assert (=> b!3643530 m!4146873))

(assert (=> b!3643530 m!4146845))

(assert (=> b!3643530 m!4146873))

(assert (=> b!3643530 m!4146845))

(declare-fun m!4147045 () Bool)

(assert (=> b!3643530 m!4147045))

(assert (=> b!3642854 d!1071123))

(declare-fun d!1071125 () Bool)

(assert (=> d!1071125 (= (get!12588 lt!1261755) (v!37943 lt!1261755))))

(assert (=> b!3642854 d!1071125))

(declare-fun d!1071127 () Bool)

(declare-fun lt!1262079 () Bool)

(assert (=> d!1071127 (= lt!1262079 (select (content!5531 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2255540 () Bool)

(assert (=> d!1071127 (= lt!1262079 e!2255540)))

(declare-fun res!1477220 () Bool)

(assert (=> d!1071127 (=> (not res!1477220) (not e!2255540))))

(assert (=> d!1071127 (= res!1477220 ((_ is Cons!38401) rules!3307))))

(assert (=> d!1071127 (= (contains!7546 rules!3307 anOtherTypeRule!33) lt!1262079)))

(declare-fun b!3643532 () Bool)

(declare-fun e!2255539 () Bool)

(assert (=> b!3643532 (= e!2255540 e!2255539)))

(declare-fun res!1477219 () Bool)

(assert (=> b!3643532 (=> res!1477219 e!2255539)))

(assert (=> b!3643532 (= res!1477219 (= (h!43821 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3643533 () Bool)

(assert (=> b!3643533 (= e!2255539 (contains!7546 (t!296668 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1071127 res!1477220) b!3643532))

(assert (= (and b!3643532 (not res!1477219)) b!3643533))

(assert (=> d!1071127 m!4146761))

(declare-fun m!4147047 () Bool)

(assert (=> d!1071127 m!4147047))

(declare-fun m!4147049 () Bool)

(assert (=> b!3643533 m!4147049))

(assert (=> b!3642834 d!1071127))

(declare-fun d!1071129 () Bool)

(assert (=> d!1071129 (= (isDefined!6340 lt!1261751) (not (isEmpty!22744 lt!1261751)))))

(declare-fun bs!572023 () Bool)

(assert (= bs!572023 d!1071129))

(declare-fun m!4147051 () Bool)

(assert (=> bs!572023 m!4147051))

(assert (=> b!3642829 d!1071129))

(declare-fun b!3643534 () Bool)

(declare-fun res!1477225 () Bool)

(declare-fun e!2255543 () Bool)

(assert (=> b!3643534 (=> (not res!1477225) (not e!2255543))))

(declare-fun lt!1262081 () Option!8108)

(assert (=> b!3643534 (= res!1477225 (= (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1262081)))) (originalCharacters!6454 (_1!22268 (get!12588 lt!1262081)))))))

(declare-fun d!1071131 () Bool)

(declare-fun e!2255542 () Bool)

(assert (=> d!1071131 e!2255542))

(declare-fun res!1477221 () Bool)

(assert (=> d!1071131 (=> res!1477221 e!2255542)))

(assert (=> d!1071131 (= res!1477221 (isEmpty!22744 lt!1262081))))

(declare-fun e!2255541 () Option!8108)

(assert (=> d!1071131 (= lt!1262081 e!2255541)))

(declare-fun c!629907 () Bool)

(assert (=> d!1071131 (= c!629907 (and ((_ is Cons!38401) rules!3307) ((_ is Nil!38401) (t!296668 rules!3307))))))

(declare-fun lt!1262084 () Unit!55264)

(declare-fun lt!1262080 () Unit!55264)

(assert (=> d!1071131 (= lt!1262084 lt!1262080)))

(assert (=> d!1071131 (isPrefix!3103 lt!1261771 lt!1261771)))

(assert (=> d!1071131 (= lt!1262080 (lemmaIsPrefixRefl!1966 lt!1261771 lt!1261771))))

(assert (=> d!1071131 (rulesValidInductive!2031 thiss!23823 rules!3307)))

(assert (=> d!1071131 (= (maxPrefix!2863 thiss!23823 rules!3307 lt!1261771) lt!1262081)))

(declare-fun b!3643535 () Bool)

(assert (=> b!3643535 (= e!2255542 e!2255543)))

(declare-fun res!1477226 () Bool)

(assert (=> b!3643535 (=> (not res!1477226) (not e!2255543))))

(assert (=> b!3643535 (= res!1477226 (isDefined!6340 lt!1262081))))

(declare-fun bm!263323 () Bool)

(declare-fun call!263328 () Option!8108)

(assert (=> bm!263323 (= call!263328 (maxPrefixOneRule!2001 thiss!23823 (h!43821 rules!3307) lt!1261771))))

(declare-fun b!3643536 () Bool)

(declare-fun res!1477227 () Bool)

(assert (=> b!3643536 (=> (not res!1477227) (not e!2255543))))

(assert (=> b!3643536 (= res!1477227 (matchR!5068 (regex!5740 (rule!8526 (_1!22268 (get!12588 lt!1262081)))) (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1262081))))))))

(declare-fun b!3643537 () Bool)

(declare-fun res!1477222 () Bool)

(assert (=> b!3643537 (=> (not res!1477222) (not e!2255543))))

(assert (=> b!3643537 (= res!1477222 (< (size!29313 (_2!22268 (get!12588 lt!1262081))) (size!29313 lt!1261771)))))

(declare-fun b!3643538 () Bool)

(declare-fun res!1477224 () Bool)

(assert (=> b!3643538 (=> (not res!1477224) (not e!2255543))))

(assert (=> b!3643538 (= res!1477224 (= (value!184050 (_1!22268 (get!12588 lt!1262081))) (apply!9242 (transformation!5740 (rule!8526 (_1!22268 (get!12588 lt!1262081)))) (seqFromList!4289 (originalCharacters!6454 (_1!22268 (get!12588 lt!1262081)))))))))

(declare-fun b!3643539 () Bool)

(declare-fun res!1477223 () Bool)

(assert (=> b!3643539 (=> (not res!1477223) (not e!2255543))))

(assert (=> b!3643539 (= res!1477223 (= (++!9556 (list!14218 (charsOf!3754 (_1!22268 (get!12588 lt!1262081)))) (_2!22268 (get!12588 lt!1262081))) lt!1261771))))

(declare-fun b!3643540 () Bool)

(assert (=> b!3643540 (= e!2255543 (contains!7546 rules!3307 (rule!8526 (_1!22268 (get!12588 lt!1262081)))))))

(declare-fun b!3643541 () Bool)

(declare-fun lt!1262083 () Option!8108)

(declare-fun lt!1262082 () Option!8108)

(assert (=> b!3643541 (= e!2255541 (ite (and ((_ is None!8107) lt!1262083) ((_ is None!8107) lt!1262082)) None!8107 (ite ((_ is None!8107) lt!1262082) lt!1262083 (ite ((_ is None!8107) lt!1262083) lt!1262082 (ite (>= (size!29311 (_1!22268 (v!37943 lt!1262083))) (size!29311 (_1!22268 (v!37943 lt!1262082)))) lt!1262083 lt!1262082)))))))

(assert (=> b!3643541 (= lt!1262083 call!263328)))

(assert (=> b!3643541 (= lt!1262082 (maxPrefix!2863 thiss!23823 (t!296668 rules!3307) lt!1261771))))

(declare-fun b!3643542 () Bool)

(assert (=> b!3643542 (= e!2255541 call!263328)))

(assert (= (and d!1071131 c!629907) b!3643542))

(assert (= (and d!1071131 (not c!629907)) b!3643541))

(assert (= (or b!3643542 b!3643541) bm!263323))

(assert (= (and d!1071131 (not res!1477221)) b!3643535))

(assert (= (and b!3643535 res!1477226) b!3643534))

(assert (= (and b!3643534 res!1477225) b!3643537))

(assert (= (and b!3643537 res!1477222) b!3643539))

(assert (= (and b!3643539 res!1477223) b!3643538))

(assert (= (and b!3643538 res!1477224) b!3643536))

(assert (= (and b!3643536 res!1477227) b!3643540))

(declare-fun m!4147053 () Bool)

(assert (=> d!1071131 m!4147053))

(declare-fun m!4147055 () Bool)

(assert (=> d!1071131 m!4147055))

(declare-fun m!4147057 () Bool)

(assert (=> d!1071131 m!4147057))

(assert (=> d!1071131 m!4147019))

(declare-fun m!4147059 () Bool)

(assert (=> bm!263323 m!4147059))

(declare-fun m!4147061 () Bool)

(assert (=> b!3643534 m!4147061))

(declare-fun m!4147063 () Bool)

(assert (=> b!3643534 m!4147063))

(assert (=> b!3643534 m!4147063))

(declare-fun m!4147065 () Bool)

(assert (=> b!3643534 m!4147065))

(assert (=> b!3643539 m!4147061))

(assert (=> b!3643539 m!4147063))

(assert (=> b!3643539 m!4147063))

(assert (=> b!3643539 m!4147065))

(assert (=> b!3643539 m!4147065))

(declare-fun m!4147067 () Bool)

(assert (=> b!3643539 m!4147067))

(assert (=> b!3643537 m!4147061))

(declare-fun m!4147069 () Bool)

(assert (=> b!3643537 m!4147069))

(assert (=> b!3643537 m!4146885))

(declare-fun m!4147071 () Bool)

(assert (=> b!3643535 m!4147071))

(declare-fun m!4147073 () Bool)

(assert (=> b!3643541 m!4147073))

(assert (=> b!3643538 m!4147061))

(declare-fun m!4147075 () Bool)

(assert (=> b!3643538 m!4147075))

(assert (=> b!3643538 m!4147075))

(declare-fun m!4147077 () Bool)

(assert (=> b!3643538 m!4147077))

(assert (=> b!3643540 m!4147061))

(declare-fun m!4147079 () Bool)

(assert (=> b!3643540 m!4147079))

(assert (=> b!3643536 m!4147061))

(assert (=> b!3643536 m!4147063))

(assert (=> b!3643536 m!4147063))

(assert (=> b!3643536 m!4147065))

(assert (=> b!3643536 m!4147065))

(declare-fun m!4147081 () Bool)

(assert (=> b!3643536 m!4147081))

(assert (=> b!3642829 d!1071131))

(declare-fun d!1071133 () Bool)

(assert (=> d!1071133 (= (list!14218 (charsOf!3754 token!511)) (list!14222 (c!629783 (charsOf!3754 token!511))))))

(declare-fun bs!572024 () Bool)

(assert (= bs!572024 d!1071133))

(declare-fun m!4147083 () Bool)

(assert (=> bs!572024 m!4147083))

(assert (=> b!3642829 d!1071133))

(declare-fun d!1071135 () Bool)

(declare-fun lt!1262085 () BalanceConc!23068)

(assert (=> d!1071135 (= (list!14218 lt!1262085) (originalCharacters!6454 token!511))))

(assert (=> d!1071135 (= lt!1262085 (dynLambda!16715 (toChars!7891 (transformation!5740 (rule!8526 token!511))) (value!184050 token!511)))))

(assert (=> d!1071135 (= (charsOf!3754 token!511) lt!1262085)))

(declare-fun b_lambda!108025 () Bool)

(assert (=> (not b_lambda!108025) (not d!1071135)))

(assert (=> d!1071135 t!296726))

(declare-fun b_and!268847 () Bool)

(assert (= b_and!268839 (and (=> t!296726 result!255706) b_and!268847)))

(assert (=> d!1071135 t!296728))

(declare-fun b_and!268849 () Bool)

(assert (= b_and!268841 (and (=> t!296728 result!255708) b_and!268849)))

(assert (=> d!1071135 t!296730))

(declare-fun b_and!268851 () Bool)

(assert (= b_and!268843 (and (=> t!296730 result!255710) b_and!268851)))

(assert (=> d!1071135 t!296732))

(declare-fun b_and!268853 () Bool)

(assert (= b_and!268845 (and (=> t!296732 result!255712) b_and!268853)))

(declare-fun m!4147085 () Bool)

(assert (=> d!1071135 m!4147085))

(assert (=> d!1071135 m!4146747))

(assert (=> b!3642829 d!1071135))

(declare-fun b!3643543 () Bool)

(declare-fun res!1477235 () Bool)

(declare-fun e!2255544 () Bool)

(assert (=> b!3643543 (=> (not res!1477235) (not e!2255544))))

(declare-fun call!263329 () Bool)

(assert (=> b!3643543 (= res!1477235 (not call!263329))))

(declare-fun b!3643544 () Bool)

(declare-fun e!2255549 () Bool)

(assert (=> b!3643544 (= e!2255549 (nullable!3645 (regex!5740 lt!1261764)))))

(declare-fun b!3643545 () Bool)

(declare-fun e!2255547 () Bool)

(declare-fun lt!1262086 () Bool)

(assert (=> b!3643545 (= e!2255547 (not lt!1262086))))

(declare-fun b!3643546 () Bool)

(declare-fun e!2255548 () Bool)

(declare-fun e!2255546 () Bool)

(assert (=> b!3643546 (= e!2255548 e!2255546)))

(declare-fun res!1477232 () Bool)

(assert (=> b!3643546 (=> res!1477232 e!2255546)))

(assert (=> b!3643546 (= res!1477232 call!263329)))

(declare-fun b!3643547 () Bool)

(declare-fun res!1477230 () Bool)

(assert (=> b!3643547 (=> (not res!1477230) (not e!2255544))))

(assert (=> b!3643547 (= res!1477230 (isEmpty!22740 (tail!5643 (list!14218 (charsOf!3754 (_1!22268 lt!1261749))))))))

(declare-fun bm!263324 () Bool)

(assert (=> bm!263324 (= call!263329 (isEmpty!22740 (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))))))

(declare-fun d!1071137 () Bool)

(declare-fun e!2255550 () Bool)

(assert (=> d!1071137 e!2255550))

(declare-fun c!629909 () Bool)

(assert (=> d!1071137 (= c!629909 ((_ is EmptyExpr!10499) (regex!5740 lt!1261764)))))

(assert (=> d!1071137 (= lt!1262086 e!2255549)))

(declare-fun c!629910 () Bool)

(assert (=> d!1071137 (= c!629910 (isEmpty!22740 (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))))))

(assert (=> d!1071137 (validRegex!4807 (regex!5740 lt!1261764))))

(assert (=> d!1071137 (= (matchR!5068 (regex!5740 lt!1261764) (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))) lt!1262086)))

(declare-fun b!3643548 () Bool)

(assert (=> b!3643548 (= e!2255550 e!2255547)))

(declare-fun c!629908 () Bool)

(assert (=> b!3643548 (= c!629908 ((_ is EmptyLang!10499) (regex!5740 lt!1261764)))))

(declare-fun b!3643549 () Bool)

(assert (=> b!3643549 (= e!2255546 (not (= (head!7742 (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))) (c!629782 (regex!5740 lt!1261764)))))))

(declare-fun b!3643550 () Bool)

(declare-fun res!1477228 () Bool)

(declare-fun e!2255545 () Bool)

(assert (=> b!3643550 (=> res!1477228 e!2255545)))

(assert (=> b!3643550 (= res!1477228 e!2255544)))

(declare-fun res!1477231 () Bool)

(assert (=> b!3643550 (=> (not res!1477231) (not e!2255544))))

(assert (=> b!3643550 (= res!1477231 lt!1262086)))

(declare-fun b!3643551 () Bool)

(assert (=> b!3643551 (= e!2255549 (matchR!5068 (derivativeStep!3194 (regex!5740 lt!1261764) (head!7742 (list!14218 (charsOf!3754 (_1!22268 lt!1261749))))) (tail!5643 (list!14218 (charsOf!3754 (_1!22268 lt!1261749))))))))

(declare-fun b!3643552 () Bool)

(declare-fun res!1477229 () Bool)

(assert (=> b!3643552 (=> res!1477229 e!2255545)))

(assert (=> b!3643552 (= res!1477229 (not ((_ is ElementMatch!10499) (regex!5740 lt!1261764))))))

(assert (=> b!3643552 (= e!2255547 e!2255545)))

(declare-fun b!3643553 () Bool)

(declare-fun res!1477233 () Bool)

(assert (=> b!3643553 (=> res!1477233 e!2255546)))

(assert (=> b!3643553 (= res!1477233 (not (isEmpty!22740 (tail!5643 (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))))))))

(declare-fun b!3643554 () Bool)

(assert (=> b!3643554 (= e!2255545 e!2255548)))

(declare-fun res!1477234 () Bool)

(assert (=> b!3643554 (=> (not res!1477234) (not e!2255548))))

(assert (=> b!3643554 (= res!1477234 (not lt!1262086))))

(declare-fun b!3643555 () Bool)

(assert (=> b!3643555 (= e!2255544 (= (head!7742 (list!14218 (charsOf!3754 (_1!22268 lt!1261749)))) (c!629782 (regex!5740 lt!1261764))))))

(declare-fun b!3643556 () Bool)

(assert (=> b!3643556 (= e!2255550 (= lt!1262086 call!263329))))

(assert (= (and d!1071137 c!629910) b!3643544))

(assert (= (and d!1071137 (not c!629910)) b!3643551))

(assert (= (and d!1071137 c!629909) b!3643556))

(assert (= (and d!1071137 (not c!629909)) b!3643548))

(assert (= (and b!3643548 c!629908) b!3643545))

(assert (= (and b!3643548 (not c!629908)) b!3643552))

(assert (= (and b!3643552 (not res!1477229)) b!3643550))

(assert (= (and b!3643550 res!1477231) b!3643543))

(assert (= (and b!3643543 res!1477235) b!3643547))

(assert (= (and b!3643547 res!1477230) b!3643555))

(assert (= (and b!3643550 (not res!1477228)) b!3643554))

(assert (= (and b!3643554 res!1477234) b!3643546))

(assert (= (and b!3643546 (not res!1477232)) b!3643553))

(assert (= (and b!3643553 (not res!1477233)) b!3643549))

(assert (= (or b!3643556 b!3643543 b!3643546) bm!263324))

(assert (=> b!3643551 m!4146243))

(declare-fun m!4147087 () Bool)

(assert (=> b!3643551 m!4147087))

(assert (=> b!3643551 m!4147087))

(declare-fun m!4147089 () Bool)

(assert (=> b!3643551 m!4147089))

(assert (=> b!3643551 m!4146243))

(declare-fun m!4147091 () Bool)

(assert (=> b!3643551 m!4147091))

(assert (=> b!3643551 m!4147089))

(assert (=> b!3643551 m!4147091))

(declare-fun m!4147093 () Bool)

(assert (=> b!3643551 m!4147093))

(assert (=> b!3643553 m!4146243))

(assert (=> b!3643553 m!4147091))

(assert (=> b!3643553 m!4147091))

(declare-fun m!4147095 () Bool)

(assert (=> b!3643553 m!4147095))

(assert (=> b!3643555 m!4146243))

(assert (=> b!3643555 m!4147087))

(assert (=> b!3643549 m!4146243))

(assert (=> b!3643549 m!4147087))

(assert (=> bm!263324 m!4146243))

(declare-fun m!4147097 () Bool)

(assert (=> bm!263324 m!4147097))

(declare-fun m!4147099 () Bool)

(assert (=> b!3643544 m!4147099))

(assert (=> b!3643547 m!4146243))

(assert (=> b!3643547 m!4147091))

(assert (=> b!3643547 m!4147091))

(assert (=> b!3643547 m!4147095))

(assert (=> d!1071137 m!4146243))

(assert (=> d!1071137 m!4147097))

(declare-fun m!4147101 () Bool)

(assert (=> d!1071137 m!4147101))

(assert (=> b!3642851 d!1071137))

(declare-fun d!1071139 () Bool)

(assert (=> d!1071139 (= (list!14218 (charsOf!3754 (_1!22268 lt!1261749))) (list!14222 (c!629783 (charsOf!3754 (_1!22268 lt!1261749)))))))

(declare-fun bs!572025 () Bool)

(assert (= bs!572025 d!1071139))

(declare-fun m!4147103 () Bool)

(assert (=> bs!572025 m!4147103))

(assert (=> b!3642851 d!1071139))

(assert (=> b!3642851 d!1071115))

(declare-fun d!1071141 () Bool)

(assert (=> d!1071141 (= (get!12589 lt!1261754) (v!37944 lt!1261754))))

(assert (=> b!3642851 d!1071141))

(declare-fun d!1071143 () Bool)

(assert (=> d!1071143 (= (isEmpty!22741 rules!3307) ((_ is Nil!38401) rules!3307))))

(assert (=> b!3642852 d!1071143))

(declare-fun d!1071145 () Bool)

(assert (=> d!1071145 (= (inv!51835 (tag!6492 anOtherTypeRule!33)) (= (mod (str.len (value!184049 (tag!6492 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3642848 d!1071145))

(declare-fun d!1071147 () Bool)

(declare-fun res!1477236 () Bool)

(declare-fun e!2255551 () Bool)

(assert (=> d!1071147 (=> (not res!1477236) (not e!2255551))))

(assert (=> d!1071147 (= res!1477236 (semiInverseModEq!2445 (toChars!7891 (transformation!5740 anOtherTypeRule!33)) (toValue!8032 (transformation!5740 anOtherTypeRule!33))))))

(assert (=> d!1071147 (= (inv!51839 (transformation!5740 anOtherTypeRule!33)) e!2255551)))

(declare-fun b!3643557 () Bool)

(assert (=> b!3643557 (= e!2255551 (equivClasses!2344 (toChars!7891 (transformation!5740 anOtherTypeRule!33)) (toValue!8032 (transformation!5740 anOtherTypeRule!33))))))

(assert (= (and d!1071147 res!1477236) b!3643557))

(declare-fun m!4147105 () Bool)

(assert (=> d!1071147 m!4147105))

(declare-fun m!4147107 () Bool)

(assert (=> b!3643557 m!4147107))

(assert (=> b!3642848 d!1071147))

(declare-fun d!1071149 () Bool)

(declare-fun lt!1262087 () Bool)

(assert (=> d!1071149 (= lt!1262087 (select (content!5531 rules!3307) (rule!8526 (_1!22268 lt!1261749))))))

(declare-fun e!2255553 () Bool)

(assert (=> d!1071149 (= lt!1262087 e!2255553)))

(declare-fun res!1477238 () Bool)

(assert (=> d!1071149 (=> (not res!1477238) (not e!2255553))))

(assert (=> d!1071149 (= res!1477238 ((_ is Cons!38401) rules!3307))))

(assert (=> d!1071149 (= (contains!7546 rules!3307 (rule!8526 (_1!22268 lt!1261749))) lt!1262087)))

(declare-fun b!3643558 () Bool)

(declare-fun e!2255552 () Bool)

(assert (=> b!3643558 (= e!2255553 e!2255552)))

(declare-fun res!1477237 () Bool)

(assert (=> b!3643558 (=> res!1477237 e!2255552)))

(assert (=> b!3643558 (= res!1477237 (= (h!43821 rules!3307) (rule!8526 (_1!22268 lt!1261749))))))

(declare-fun b!3643559 () Bool)

(assert (=> b!3643559 (= e!2255552 (contains!7546 (t!296668 rules!3307) (rule!8526 (_1!22268 lt!1261749))))))

(assert (= (and d!1071149 res!1477238) b!3643558))

(assert (= (and b!3643558 (not res!1477237)) b!3643559))

(assert (=> d!1071149 m!4146761))

(declare-fun m!4147109 () Bool)

(assert (=> d!1071149 m!4147109))

(declare-fun m!4147111 () Bool)

(assert (=> b!3643559 m!4147111))

(assert (=> b!3642827 d!1071149))

(declare-fun d!1071151 () Bool)

(assert (=> d!1071151 (= (isEmpty!22740 suffix!1395) ((_ is Nil!38399) suffix!1395))))

(assert (=> b!3642828 d!1071151))

(declare-fun b!3643560 () Bool)

(declare-fun res!1477246 () Bool)

(declare-fun e!2255554 () Bool)

(assert (=> b!3643560 (=> (not res!1477246) (not e!2255554))))

(declare-fun call!263330 () Bool)

(assert (=> b!3643560 (= res!1477246 (not call!263330))))

(declare-fun b!3643561 () Bool)

(declare-fun e!2255559 () Bool)

(assert (=> b!3643561 (= e!2255559 (nullable!3645 (regex!5740 (rule!8526 (_1!22268 lt!1261749)))))))

(declare-fun b!3643562 () Bool)

(declare-fun e!2255557 () Bool)

(declare-fun lt!1262088 () Bool)

(assert (=> b!3643562 (= e!2255557 (not lt!1262088))))

(declare-fun b!3643563 () Bool)

(declare-fun e!2255558 () Bool)

(declare-fun e!2255556 () Bool)

(assert (=> b!3643563 (= e!2255558 e!2255556)))

(declare-fun res!1477243 () Bool)

(assert (=> b!3643563 (=> res!1477243 e!2255556)))

(assert (=> b!3643563 (= res!1477243 call!263330)))

(declare-fun b!3643564 () Bool)

(declare-fun res!1477241 () Bool)

(assert (=> b!3643564 (=> (not res!1477241) (not e!2255554))))

(assert (=> b!3643564 (= res!1477241 (isEmpty!22740 (tail!5643 lt!1261768)))))

(declare-fun bm!263325 () Bool)

(assert (=> bm!263325 (= call!263330 (isEmpty!22740 lt!1261768))))

(declare-fun d!1071153 () Bool)

(declare-fun e!2255560 () Bool)

(assert (=> d!1071153 e!2255560))

(declare-fun c!629912 () Bool)

(assert (=> d!1071153 (= c!629912 ((_ is EmptyExpr!10499) (regex!5740 (rule!8526 (_1!22268 lt!1261749)))))))

(assert (=> d!1071153 (= lt!1262088 e!2255559)))

(declare-fun c!629913 () Bool)

(assert (=> d!1071153 (= c!629913 (isEmpty!22740 lt!1261768))))

(assert (=> d!1071153 (validRegex!4807 (regex!5740 (rule!8526 (_1!22268 lt!1261749))))))

(assert (=> d!1071153 (= (matchR!5068 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) lt!1261768) lt!1262088)))

(declare-fun b!3643565 () Bool)

(assert (=> b!3643565 (= e!2255560 e!2255557)))

(declare-fun c!629911 () Bool)

(assert (=> b!3643565 (= c!629911 ((_ is EmptyLang!10499) (regex!5740 (rule!8526 (_1!22268 lt!1261749)))))))

(declare-fun b!3643566 () Bool)

(assert (=> b!3643566 (= e!2255556 (not (= (head!7742 lt!1261768) (c!629782 (regex!5740 (rule!8526 (_1!22268 lt!1261749)))))))))

(declare-fun b!3643567 () Bool)

(declare-fun res!1477239 () Bool)

(declare-fun e!2255555 () Bool)

(assert (=> b!3643567 (=> res!1477239 e!2255555)))

(assert (=> b!3643567 (= res!1477239 e!2255554)))

(declare-fun res!1477242 () Bool)

(assert (=> b!3643567 (=> (not res!1477242) (not e!2255554))))

(assert (=> b!3643567 (= res!1477242 lt!1262088)))

(declare-fun b!3643568 () Bool)

(assert (=> b!3643568 (= e!2255559 (matchR!5068 (derivativeStep!3194 (regex!5740 (rule!8526 (_1!22268 lt!1261749))) (head!7742 lt!1261768)) (tail!5643 lt!1261768)))))

(declare-fun b!3643569 () Bool)

(declare-fun res!1477240 () Bool)

(assert (=> b!3643569 (=> res!1477240 e!2255555)))

(assert (=> b!3643569 (= res!1477240 (not ((_ is ElementMatch!10499) (regex!5740 (rule!8526 (_1!22268 lt!1261749))))))))

(assert (=> b!3643569 (= e!2255557 e!2255555)))

(declare-fun b!3643570 () Bool)

(declare-fun res!1477244 () Bool)

(assert (=> b!3643570 (=> res!1477244 e!2255556)))

(assert (=> b!3643570 (= res!1477244 (not (isEmpty!22740 (tail!5643 lt!1261768))))))

(declare-fun b!3643571 () Bool)

(assert (=> b!3643571 (= e!2255555 e!2255558)))

(declare-fun res!1477245 () Bool)

(assert (=> b!3643571 (=> (not res!1477245) (not e!2255558))))

(assert (=> b!3643571 (= res!1477245 (not lt!1262088))))

(declare-fun b!3643572 () Bool)

(assert (=> b!3643572 (= e!2255554 (= (head!7742 lt!1261768) (c!629782 (regex!5740 (rule!8526 (_1!22268 lt!1261749))))))))

(declare-fun b!3643573 () Bool)

(assert (=> b!3643573 (= e!2255560 (= lt!1262088 call!263330))))

(assert (= (and d!1071153 c!629913) b!3643561))

(assert (= (and d!1071153 (not c!629913)) b!3643568))

(assert (= (and d!1071153 c!629912) b!3643573))

(assert (= (and d!1071153 (not c!629912)) b!3643565))

(assert (= (and b!3643565 c!629911) b!3643562))

(assert (= (and b!3643565 (not c!629911)) b!3643569))

(assert (= (and b!3643569 (not res!1477240)) b!3643567))

(assert (= (and b!3643567 res!1477242) b!3643560))

(assert (= (and b!3643560 res!1477246) b!3643564))

(assert (= (and b!3643564 res!1477241) b!3643572))

(assert (= (and b!3643567 (not res!1477239)) b!3643571))

(assert (= (and b!3643571 res!1477245) b!3643563))

(assert (= (and b!3643563 (not res!1477243)) b!3643570))

(assert (= (and b!3643570 (not res!1477244)) b!3643566))

(assert (= (or b!3643573 b!3643560 b!3643563) bm!263325))

(assert (=> b!3643568 m!4146199))

(assert (=> b!3643568 m!4146199))

(declare-fun m!4147113 () Bool)

(assert (=> b!3643568 m!4147113))

(assert (=> b!3643568 m!4146873))

(assert (=> b!3643568 m!4147113))

(assert (=> b!3643568 m!4146873))

(declare-fun m!4147115 () Bool)

(assert (=> b!3643568 m!4147115))

(assert (=> b!3643570 m!4146873))

(assert (=> b!3643570 m!4146873))

(declare-fun m!4147117 () Bool)

(assert (=> b!3643570 m!4147117))

(assert (=> b!3643572 m!4146199))

(assert (=> b!3643566 m!4146199))

(declare-fun m!4147119 () Bool)

(assert (=> bm!263325 m!4147119))

(declare-fun m!4147121 () Bool)

(assert (=> b!3643561 m!4147121))

(assert (=> b!3643564 m!4146873))

(assert (=> b!3643564 m!4146873))

(assert (=> b!3643564 m!4147117))

(assert (=> d!1071153 m!4147119))

(declare-fun m!4147123 () Bool)

(assert (=> d!1071153 m!4147123))

(assert (=> b!3642850 d!1071153))

(declare-fun b!3643586 () Bool)

(declare-fun e!2255563 () Bool)

(declare-fun tp!1111288 () Bool)

(assert (=> b!3643586 (= e!2255563 tp!1111288)))

(declare-fun b!3643585 () Bool)

(declare-fun tp!1111289 () Bool)

(declare-fun tp!1111286 () Bool)

(assert (=> b!3643585 (= e!2255563 (and tp!1111289 tp!1111286))))

(assert (=> b!3642856 (= tp!1111218 e!2255563)))

(declare-fun b!3643584 () Bool)

(assert (=> b!3643584 (= e!2255563 tp_is_empty!18081)))

(declare-fun b!3643587 () Bool)

(declare-fun tp!1111285 () Bool)

(declare-fun tp!1111287 () Bool)

(assert (=> b!3643587 (= e!2255563 (and tp!1111285 tp!1111287))))

(assert (= (and b!3642856 ((_ is ElementMatch!10499) (regex!5740 (h!43821 rules!3307)))) b!3643584))

(assert (= (and b!3642856 ((_ is Concat!16470) (regex!5740 (h!43821 rules!3307)))) b!3643585))

(assert (= (and b!3642856 ((_ is Star!10499) (regex!5740 (h!43821 rules!3307)))) b!3643586))

(assert (= (and b!3642856 ((_ is Union!10499) (regex!5740 (h!43821 rules!3307)))) b!3643587))

(declare-fun b!3643592 () Bool)

(declare-fun e!2255566 () Bool)

(declare-fun tp!1111292 () Bool)

(assert (=> b!3643592 (= e!2255566 (and tp_is_empty!18081 tp!1111292))))

(assert (=> b!3642835 (= tp!1111211 e!2255566)))

(assert (= (and b!3642835 ((_ is Cons!38399) (t!296666 suffix!1395))) b!3643592))

(declare-fun b!3643593 () Bool)

(declare-fun e!2255567 () Bool)

(declare-fun tp!1111293 () Bool)

(assert (=> b!3643593 (= e!2255567 (and tp_is_empty!18081 tp!1111293))))

(assert (=> b!3642847 (= tp!1111217 e!2255567)))

(assert (= (and b!3642847 ((_ is Cons!38399) (originalCharacters!6454 token!511))) b!3643593))

(declare-fun b!3643596 () Bool)

(declare-fun e!2255568 () Bool)

(declare-fun tp!1111297 () Bool)

(assert (=> b!3643596 (= e!2255568 tp!1111297)))

(declare-fun b!3643595 () Bool)

(declare-fun tp!1111298 () Bool)

(declare-fun tp!1111295 () Bool)

(assert (=> b!3643595 (= e!2255568 (and tp!1111298 tp!1111295))))

(assert (=> b!3642842 (= tp!1111209 e!2255568)))

(declare-fun b!3643594 () Bool)

(assert (=> b!3643594 (= e!2255568 tp_is_empty!18081)))

(declare-fun b!3643597 () Bool)

(declare-fun tp!1111294 () Bool)

(declare-fun tp!1111296 () Bool)

(assert (=> b!3643597 (= e!2255568 (and tp!1111294 tp!1111296))))

(assert (= (and b!3642842 ((_ is ElementMatch!10499) (regex!5740 (rule!8526 token!511)))) b!3643594))

(assert (= (and b!3642842 ((_ is Concat!16470) (regex!5740 (rule!8526 token!511)))) b!3643595))

(assert (= (and b!3642842 ((_ is Star!10499) (regex!5740 (rule!8526 token!511)))) b!3643596))

(assert (= (and b!3642842 ((_ is Union!10499) (regex!5740 (rule!8526 token!511)))) b!3643597))

(declare-fun b!3643600 () Bool)

(declare-fun e!2255569 () Bool)

(declare-fun tp!1111302 () Bool)

(assert (=> b!3643600 (= e!2255569 tp!1111302)))

(declare-fun b!3643599 () Bool)

(declare-fun tp!1111303 () Bool)

(declare-fun tp!1111300 () Bool)

(assert (=> b!3643599 (= e!2255569 (and tp!1111303 tp!1111300))))

(assert (=> b!3642848 (= tp!1111208 e!2255569)))

(declare-fun b!3643598 () Bool)

(assert (=> b!3643598 (= e!2255569 tp_is_empty!18081)))

(declare-fun b!3643601 () Bool)

(declare-fun tp!1111299 () Bool)

(declare-fun tp!1111301 () Bool)

(assert (=> b!3643601 (= e!2255569 (and tp!1111299 tp!1111301))))

(assert (= (and b!3642848 ((_ is ElementMatch!10499) (regex!5740 anOtherTypeRule!33))) b!3643598))

(assert (= (and b!3642848 ((_ is Concat!16470) (regex!5740 anOtherTypeRule!33))) b!3643599))

(assert (= (and b!3642848 ((_ is Star!10499) (regex!5740 anOtherTypeRule!33))) b!3643600))

(assert (= (and b!3642848 ((_ is Union!10499) (regex!5740 anOtherTypeRule!33))) b!3643601))

(declare-fun b!3643612 () Bool)

(declare-fun b_free!95597 () Bool)

(declare-fun b_next!96301 () Bool)

(assert (=> b!3643612 (= b_free!95597 (not b_next!96301))))

(declare-fun t!296779 () Bool)

(declare-fun tb!210009 () Bool)

(assert (=> (and b!3643612 (= (toValue!8032 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296779) tb!210009))

(declare-fun result!255770 () Bool)

(assert (= result!255770 result!255698))

(assert (=> d!1071015 t!296779))

(declare-fun tb!210011 () Bool)

(declare-fun t!296781 () Bool)

(assert (=> (and b!3643612 (= (toValue!8032 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296781) tb!210011))

(declare-fun result!255772 () Bool)

(assert (= result!255772 result!255688))

(assert (=> d!1071015 t!296781))

(assert (=> d!1071013 t!296781))

(assert (=> d!1070937 t!296781))

(declare-fun t!296783 () Bool)

(declare-fun tb!210013 () Bool)

(assert (=> (and b!3643612 (= (toValue!8032 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toValue!8032 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296783) tb!210013))

(declare-fun result!255774 () Bool)

(assert (= result!255774 result!255714))

(assert (=> d!1071069 t!296783))

(declare-fun b_and!268855 () Bool)

(declare-fun tp!1111313 () Bool)

(assert (=> b!3643612 (= tp!1111313 (and (=> t!296779 result!255770) (=> t!296781 result!255772) (=> t!296783 result!255774) b_and!268855))))

(declare-fun b_free!95599 () Bool)

(declare-fun b_next!96303 () Bool)

(assert (=> b!3643612 (= b_free!95599 (not b_next!96303))))

(declare-fun t!296785 () Bool)

(declare-fun tb!210015 () Bool)

(assert (=> (and b!3643612 (= (toChars!7891 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296785) tb!210015))

(declare-fun result!255776 () Bool)

(assert (= result!255776 result!255678))

(assert (=> d!1070937 t!296785))

(declare-fun tb!210017 () Bool)

(declare-fun t!296787 () Bool)

(assert (=> (and b!3643612 (= (toChars!7891 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toChars!7891 (transformation!5740 (rule!8526 token!511)))) t!296787) tb!210017))

(declare-fun result!255778 () Bool)

(assert (= result!255778 result!255706))

(assert (=> b!3643272 t!296787))

(declare-fun t!296789 () Bool)

(declare-fun tb!210019 () Bool)

(assert (=> (and b!3643612 (= (toChars!7891 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toChars!7891 (transformation!5740 (rule!8526 (_1!22268 lt!1261749))))) t!296789) tb!210019))

(declare-fun result!255780 () Bool)

(assert (= result!255780 result!255756))

(assert (=> d!1071115 t!296789))

(assert (=> d!1071135 t!296787))

(declare-fun tp!1111314 () Bool)

(declare-fun b_and!268857 () Bool)

(assert (=> b!3643612 (= tp!1111314 (and (=> t!296785 result!255776) (=> t!296787 result!255778) (=> t!296789 result!255780) b_and!268857))))

(declare-fun e!2255581 () Bool)

(assert (=> b!3643612 (= e!2255581 (and tp!1111313 tp!1111314))))

(declare-fun b!3643611 () Bool)

(declare-fun e!2255579 () Bool)

(declare-fun tp!1111315 () Bool)

(assert (=> b!3643611 (= e!2255579 (and tp!1111315 (inv!51835 (tag!6492 (h!43821 (t!296668 rules!3307)))) (inv!51839 (transformation!5740 (h!43821 (t!296668 rules!3307)))) e!2255581))))

(declare-fun b!3643610 () Bool)

(declare-fun e!2255580 () Bool)

(declare-fun tp!1111312 () Bool)

(assert (=> b!3643610 (= e!2255580 (and e!2255579 tp!1111312))))

(assert (=> b!3642859 (= tp!1111207 e!2255580)))

(assert (= b!3643611 b!3643612))

(assert (= b!3643610 b!3643611))

(assert (= (and b!3642859 ((_ is Cons!38401) (t!296668 rules!3307))) b!3643610))

(declare-fun m!4147125 () Bool)

(assert (=> b!3643611 m!4147125))

(declare-fun m!4147127 () Bool)

(assert (=> b!3643611 m!4147127))

(declare-fun b!3643615 () Bool)

(declare-fun e!2255582 () Bool)

(declare-fun tp!1111319 () Bool)

(assert (=> b!3643615 (= e!2255582 tp!1111319)))

(declare-fun b!3643614 () Bool)

(declare-fun tp!1111320 () Bool)

(declare-fun tp!1111317 () Bool)

(assert (=> b!3643614 (= e!2255582 (and tp!1111320 tp!1111317))))

(assert (=> b!3642844 (= tp!1111205 e!2255582)))

(declare-fun b!3643613 () Bool)

(assert (=> b!3643613 (= e!2255582 tp_is_empty!18081)))

(declare-fun b!3643616 () Bool)

(declare-fun tp!1111316 () Bool)

(declare-fun tp!1111318 () Bool)

(assert (=> b!3643616 (= e!2255582 (and tp!1111316 tp!1111318))))

(assert (= (and b!3642844 ((_ is ElementMatch!10499) (regex!5740 rule!403))) b!3643613))

(assert (= (and b!3642844 ((_ is Concat!16470) (regex!5740 rule!403))) b!3643614))

(assert (= (and b!3642844 ((_ is Star!10499) (regex!5740 rule!403))) b!3643615))

(assert (= (and b!3642844 ((_ is Union!10499) (regex!5740 rule!403))) b!3643616))

(declare-fun b_lambda!108027 () Bool)

(assert (= b_lambda!108025 (or (and b!3642837 b_free!95583 (= (toChars!7891 (transformation!5740 rule!403)) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) (and b!3642853 b_free!95591 (= (toChars!7891 (transformation!5740 (h!43821 rules!3307))) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) (and b!3642833 b_free!95587 (= (toChars!7891 (transformation!5740 anOtherTypeRule!33)) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) (and b!3642849 b_free!95579) (and b!3643612 b_free!95599 (= (toChars!7891 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) b_lambda!108027)))

(declare-fun b_lambda!108029 () Bool)

(assert (= b_lambda!108007 (or (and b!3642837 b_free!95583 (= (toChars!7891 (transformation!5740 rule!403)) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) (and b!3642853 b_free!95591 (= (toChars!7891 (transformation!5740 (h!43821 rules!3307))) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) (and b!3642833 b_free!95587 (= (toChars!7891 (transformation!5740 anOtherTypeRule!33)) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) (and b!3642849 b_free!95579) (and b!3643612 b_free!95599 (= (toChars!7891 (transformation!5740 (h!43821 (t!296668 rules!3307)))) (toChars!7891 (transformation!5740 (rule!8526 token!511))))) b_lambda!108029)))

(check-sat (not d!1071149) (not b_lambda!108009) (not b!3643321) (not d!1071129) (not b!3643537) (not b!3643595) (not b!3643533) (not b!3643616) (not b!3643338) (not b_lambda!108029) (not d!1071119) (not d!1071049) (not b!3643497) (not b!3643407) (not b!3643488) (not b!3643570) (not b!3643538) (not d!1071131) (not b_lambda!107999) (not b!3643557) (not b!3643530) (not b!3643587) (not b!3643406) (not d!1071083) (not d!1071147) (not b!3643495) (not b!3643370) (not d!1071139) b_and!268795 (not b!3643596) (not b_next!96293) (not b!3643559) (not tb!209957) (not b_next!96281) (not d!1071079) (not b!3643487) b_and!268853 (not d!1071019) (not b!3643253) (not d!1071135) (not d!1071091) (not d!1071021) (not d!1071153) (not d!1070921) (not b!3643362) (not b!3643524) (not b!3643475) (not b!3643611) (not d!1071117) (not b!3643267) (not d!1071015) (not b_lambda!108001) b_and!268849 (not b!3643331) (not b!3643498) (not b!3643365) (not b!3643494) (not tb!209949) (not b!3643592) (not b_next!96301) (not b!3643610) (not b!3643519) (not b!3643531) (not b!3643317) (not b!3643526) b_and!268797 (not bm!263314) (not b!3643553) (not b_next!96291) (not b!3643523) (not d!1071113) (not bm!263313) (not b!3643500) (not b!3643555) (not b!3643410) (not d!1071067) (not b!3643314) (not b_next!96287) (not b!3643522) (not b!3643409) (not b_lambda!107997) (not b!3643525) (not tb!210001) (not b_next!96285) b_and!268857 (not b!3643593) (not d!1071077) (not b!3643476) (not b!3643284) (not d!1071105) (not d!1071031) (not b!3643385) (not b!3643243) (not d!1071053) (not b!3643568) (not tb!209965) tp_is_empty!18081 (not b!3643599) (not d!1071121) (not tb!209941) (not bm!263319) (not b!3643363) (not d!1071063) b_and!268855 (not b!3643256) (not b!3643360) (not b_next!96289) (not d!1071051) (not b_next!96295) (not d!1071059) (not d!1071107) (not b!3643539) (not d!1071035) (not b!3643614) (not b!3643388) (not b!3643585) (not bm!263316) (not d!1071133) (not bm!263323) (not d!1071055) (not bm!263324) (not b!3643597) (not d!1071111) (not d!1070937) (not b!3643520) (not b!3643254) (not b!3643359) b_and!268847 (not d!1071071) (not d!1071025) (not b!3643586) (not b_lambda!108005) (not b!3643219) (not d!1071137) (not b!3643561) (not b!3643386) (not b!3642966) (not b!3643540) (not b!3643266) (not b!3643601) (not d!1071115) (not b_lambda!108027) (not d!1071065) (not b!3643242) (not bm!263296) (not b!3643547) (not b!3643536) (not d!1071127) (not bm!263322) (not d!1071017) (not b!3643364) (not b!3643405) (not b!3643277) (not d!1071109) (not b!3643566) (not b!3643248) (not b!3643534) (not b!3643245) (not b!3643361) (not b_next!96303) (not b!3643549) (not d!1071061) (not bm!263297) (not b!3643572) (not b_next!96283) (not b!3643544) (not b!3643541) (not b!3643274) (not b!3643358) (not b!3643600) (not b!3643319) (not b!3643551) (not b_lambda!108003) (not b!3643240) (not bm!263299) (not d!1071047) (not b!3643283) (not b!3643323) (not b!3643564) (not b_lambda!108023) b_and!268801 (not b!3643474) (not d!1071075) (not b!3643521) (not b!3643325) (not tb!209933) (not b!3643529) (not d!1071041) (not b!3643535) b_and!268799 (not b!3643272) (not bm!263325) (not b!3643615) (not b!3643273) (not b!3643411) b_and!268851)
(check-sat b_and!268853 (not b_next!96287) (not b_next!96295) b_and!268847 (not b_next!96303) (not b_next!96283) b_and!268801 b_and!268799 b_and!268851 b_and!268795 (not b_next!96293) (not b_next!96281) b_and!268849 (not b_next!96301) b_and!268797 (not b_next!96291) (not b_next!96285) b_and!268857 b_and!268855 (not b_next!96289))
