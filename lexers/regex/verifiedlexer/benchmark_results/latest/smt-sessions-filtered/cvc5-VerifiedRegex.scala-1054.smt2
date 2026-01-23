; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!52966 () Bool)

(assert start!52966)

(declare-fun b!574710 () Bool)

(declare-fun b_free!15989 () Bool)

(declare-fun b_next!16005 () Bool)

(assert (=> b!574710 (= b_free!15989 (not b_next!16005))))

(declare-fun tp!180381 () Bool)

(declare-fun b_and!56219 () Bool)

(assert (=> b!574710 (= tp!180381 b_and!56219)))

(declare-fun b_free!15991 () Bool)

(declare-fun b_next!16007 () Bool)

(assert (=> b!574710 (= b_free!15991 (not b_next!16007))))

(declare-fun tp!180380 () Bool)

(declare-fun b_and!56221 () Bool)

(assert (=> b!574710 (= tp!180380 b_and!56221)))

(declare-fun b!574698 () Bool)

(declare-fun b_free!15993 () Bool)

(declare-fun b_next!16009 () Bool)

(assert (=> b!574698 (= b_free!15993 (not b_next!16009))))

(declare-fun tp!180377 () Bool)

(declare-fun b_and!56223 () Bool)

(assert (=> b!574698 (= tp!180377 b_and!56223)))

(declare-fun b_free!15995 () Bool)

(declare-fun b_next!16011 () Bool)

(assert (=> b!574698 (= b_free!15995 (not b_next!16011))))

(declare-fun tp!180382 () Bool)

(declare-fun b_and!56225 () Bool)

(assert (=> b!574698 (= tp!180382 b_and!56225)))

(declare-fun b!574696 () Bool)

(declare-fun e!347297 () Bool)

(declare-fun e!347276 () Bool)

(assert (=> b!574696 (= e!347297 e!347276)))

(declare-fun res!246852 () Bool)

(assert (=> b!574696 (=> (not res!246852) (not e!347276))))

(declare-datatypes ((C!3778 0))(
  ( (C!3779 (val!2115 Int)) )
))
(declare-datatypes ((List!5659 0))(
  ( (Nil!5649) (Cons!5649 (h!11050 C!3778) (t!77228 List!5659)) )
))
(declare-fun lt!242976 () List!5659)

(declare-fun input!2705 () List!5659)

(assert (=> b!574696 (= res!246852 (= lt!242976 input!2705))))

(declare-datatypes ((Regex!1428 0))(
  ( (ElementMatch!1428 (c!107720 C!3778)) (Concat!2546 (regOne!3368 Regex!1428) (regTwo!3368 Regex!1428)) (EmptyExpr!1428) (Star!1428 (reg!1757 Regex!1428)) (EmptyLang!1428) (Union!1428 (regOne!3369 Regex!1428) (regTwo!3369 Regex!1428)) )
))
(declare-datatypes ((List!5660 0))(
  ( (Nil!5650) (Cons!5650 (h!11051 (_ BitVec 16)) (t!77229 List!5660)) )
))
(declare-datatypes ((TokenValue!1118 0))(
  ( (FloatLiteralValue!2236 (text!8271 List!5660)) (TokenValueExt!1117 (__x!4134 Int)) (Broken!5590 (value!36021 List!5660)) (Object!1127) (End!1118) (Def!1118) (Underscore!1118) (Match!1118) (Else!1118) (Error!1118) (Case!1118) (If!1118) (Extends!1118) (Abstract!1118) (Class!1118) (Val!1118) (DelimiterValue!2236 (del!1178 List!5660)) (KeywordValue!1124 (value!36022 List!5660)) (CommentValue!2236 (value!36023 List!5660)) (WhitespaceValue!2236 (value!36024 List!5660)) (IndentationValue!1118 (value!36025 List!5660)) (String!7335) (Int32!1118) (Broken!5591 (value!36026 List!5660)) (Boolean!1119) (Unit!10185) (OperatorValue!1121 (op!1178 List!5660)) (IdentifierValue!2236 (value!36027 List!5660)) (IdentifierValue!2237 (value!36028 List!5660)) (WhitespaceValue!2237 (value!36029 List!5660)) (True!2236) (False!2236) (Broken!5592 (value!36030 List!5660)) (Broken!5593 (value!36031 List!5660)) (True!2237) (RightBrace!1118) (RightBracket!1118) (Colon!1118) (Null!1118) (Comma!1118) (LeftBracket!1118) (False!2237) (LeftBrace!1118) (ImaginaryLiteralValue!1118 (text!8272 List!5660)) (StringLiteralValue!3354 (value!36032 List!5660)) (EOFValue!1118 (value!36033 List!5660)) (IdentValue!1118 (value!36034 List!5660)) (DelimiterValue!2237 (value!36035 List!5660)) (DedentValue!1118 (value!36036 List!5660)) (NewLineValue!1118 (value!36037 List!5660)) (IntegerValue!3354 (value!36038 (_ BitVec 32)) (text!8273 List!5660)) (IntegerValue!3355 (value!36039 Int) (text!8274 List!5660)) (Times!1118) (Or!1118) (Equal!1118) (Minus!1118) (Broken!5594 (value!36040 List!5660)) (And!1118) (Div!1118) (LessEqual!1118) (Mod!1118) (Concat!2547) (Not!1118) (Plus!1118) (SpaceValue!1118 (value!36041 List!5660)) (IntegerValue!3356 (value!36042 Int) (text!8275 List!5660)) (StringLiteralValue!3355 (text!8276 List!5660)) (FloatLiteralValue!2237 (text!8277 List!5660)) (BytesLiteralValue!1118 (value!36043 List!5660)) (CommentValue!2237 (value!36044 List!5660)) (StringLiteralValue!3356 (value!36045 List!5660)) (ErrorTokenValue!1118 (msg!1179 List!5660)) )
))
(declare-datatypes ((String!7336 0))(
  ( (String!7337 (value!36046 String)) )
))
(declare-datatypes ((IArray!3623 0))(
  ( (IArray!3624 (innerList!1869 List!5659)) )
))
(declare-datatypes ((Conc!1811 0))(
  ( (Node!1811 (left!4615 Conc!1811) (right!4945 Conc!1811) (csize!3852 Int) (cheight!2022 Int)) (Leaf!2866 (xs!4448 IArray!3623) (csize!3853 Int)) (Empty!1811) )
))
(declare-datatypes ((BalanceConc!3630 0))(
  ( (BalanceConc!3631 (c!107721 Conc!1811)) )
))
(declare-datatypes ((TokenValueInjection!2004 0))(
  ( (TokenValueInjection!2005 (toValue!1953 Int) (toChars!1812 Int)) )
))
(declare-datatypes ((Rule!1988 0))(
  ( (Rule!1989 (regex!1094 Regex!1428) (tag!1356 String!7336) (isSeparator!1094 Bool) (transformation!1094 TokenValueInjection!2004)) )
))
(declare-datatypes ((Token!1924 0))(
  ( (Token!1925 (value!36047 TokenValue!1118) (rule!1840 Rule!1988) (size!4498 Int) (originalCharacters!1133 List!5659)) )
))
(declare-fun token!491 () Token!1924)

(declare-fun list!2346 (BalanceConc!3630) List!5659)

(declare-fun charsOf!723 (Token!1924) BalanceConc!3630)

(assert (=> b!574696 (= lt!242976 (list!2346 (charsOf!723 token!491)))))

(declare-fun b!574697 () Bool)

(declare-fun e!347293 () Bool)

(assert (=> b!574697 (= e!347293 false)))

(declare-fun e!347281 () Bool)

(assert (=> b!574698 (= e!347281 (and tp!180377 tp!180382))))

(declare-fun b!574699 () Bool)

(declare-fun e!347284 () Bool)

(declare-fun e!347299 () Bool)

(assert (=> b!574699 (= e!347284 e!347299)))

(declare-fun res!246849 () Bool)

(assert (=> b!574699 (=> (not res!246849) (not e!347299))))

(declare-datatypes ((tuple2!6634 0))(
  ( (tuple2!6635 (_1!3581 Token!1924) (_2!3581 List!5659)) )
))
(declare-datatypes ((Option!1445 0))(
  ( (None!1444) (Some!1444 (v!16301 tuple2!6634)) )
))
(declare-fun lt!242987 () Option!1445)

(assert (=> b!574699 (= res!246849 (is-Some!1444 lt!242987))))

(declare-datatypes ((List!5661 0))(
  ( (Nil!5651) (Cons!5651 (h!11052 Rule!1988) (t!77230 List!5661)) )
))
(declare-fun rules!3103 () List!5661)

(declare-datatypes ((LexerInterface!980 0))(
  ( (LexerInterfaceExt!977 (__x!4135 Int)) (Lexer!978) )
))
(declare-fun thiss!22590 () LexerInterface!980)

(declare-fun maxPrefix!678 (LexerInterface!980 List!5661 List!5659) Option!1445)

(assert (=> b!574699 (= lt!242987 (maxPrefix!678 thiss!22590 rules!3103 input!2705))))

(declare-fun b!574700 () Bool)

(declare-fun e!347296 () Bool)

(declare-fun e!347279 () Bool)

(assert (=> b!574700 (= e!347296 (not e!347279))))

(declare-fun res!246848 () Bool)

(assert (=> b!574700 (=> res!246848 e!347279)))

(declare-fun lt!242955 () List!5659)

(declare-fun isPrefix!728 (List!5659 List!5659) Bool)

(assert (=> b!574700 (= res!246848 (not (isPrefix!728 input!2705 lt!242955)))))

(assert (=> b!574700 (isPrefix!728 lt!242976 lt!242955)))

(declare-datatypes ((Unit!10186 0))(
  ( (Unit!10187) )
))
(declare-fun lt!242961 () Unit!10186)

(declare-fun suffix!1342 () List!5659)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!575 (List!5659 List!5659) Unit!10186)

(assert (=> b!574700 (= lt!242961 (lemmaConcatTwoListThenFirstIsPrefix!575 lt!242976 suffix!1342))))

(declare-fun lt!242974 () List!5659)

(assert (=> b!574700 (isPrefix!728 input!2705 lt!242974)))

(declare-fun lt!242977 () Unit!10186)

(assert (=> b!574700 (= lt!242977 (lemmaConcatTwoListThenFirstIsPrefix!575 input!2705 suffix!1342))))

(declare-fun e!347292 () Bool)

(assert (=> b!574700 e!347292))

(declare-fun res!246847 () Bool)

(assert (=> b!574700 (=> (not res!246847) (not e!347292))))

(declare-fun lt!242966 () TokenValue!1118)

(assert (=> b!574700 (= res!246847 (= (value!36047 (_1!3581 (v!16301 lt!242987))) lt!242966))))

(declare-fun lt!242983 () BalanceConc!3630)

(declare-fun apply!1359 (TokenValueInjection!2004 BalanceConc!3630) TokenValue!1118)

(assert (=> b!574700 (= lt!242966 (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) lt!242983))))

(declare-fun lt!242973 () List!5659)

(declare-fun seqFromList!1282 (List!5659) BalanceConc!3630)

(assert (=> b!574700 (= lt!242983 (seqFromList!1282 lt!242973))))

(declare-fun lt!242984 () Unit!10186)

(declare-fun lemmaInv!230 (TokenValueInjection!2004) Unit!10186)

(assert (=> b!574700 (= lt!242984 (lemmaInv!230 (transformation!1094 (rule!1840 token!491))))))

(declare-fun lt!242968 () Unit!10186)

(assert (=> b!574700 (= lt!242968 (lemmaInv!230 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))))))

(declare-fun ruleValid!304 (LexerInterface!980 Rule!1988) Bool)

(assert (=> b!574700 (ruleValid!304 thiss!22590 (rule!1840 token!491))))

(declare-fun lt!242971 () Unit!10186)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!161 (LexerInterface!980 Rule!1988 List!5661) Unit!10186)

(assert (=> b!574700 (= lt!242971 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!161 thiss!22590 (rule!1840 token!491) rules!3103))))

(assert (=> b!574700 (ruleValid!304 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))))))

(declare-fun lt!242982 () Unit!10186)

(assert (=> b!574700 (= lt!242982 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!161 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))) rules!3103))))

(assert (=> b!574700 (isPrefix!728 input!2705 input!2705)))

(declare-fun lt!242986 () Unit!10186)

(declare-fun lemmaIsPrefixRefl!466 (List!5659 List!5659) Unit!10186)

(assert (=> b!574700 (= lt!242986 (lemmaIsPrefixRefl!466 input!2705 input!2705))))

(declare-fun lt!242967 () List!5659)

(assert (=> b!574700 (= (_2!3581 (v!16301 lt!242987)) lt!242967)))

(declare-fun lt!242988 () Unit!10186)

(declare-fun lemmaSamePrefixThenSameSuffix!451 (List!5659 List!5659 List!5659 List!5659 List!5659) Unit!10186)

(assert (=> b!574700 (= lt!242988 (lemmaSamePrefixThenSameSuffix!451 lt!242973 (_2!3581 (v!16301 lt!242987)) lt!242973 lt!242967 input!2705))))

(declare-fun getSuffix!247 (List!5659 List!5659) List!5659)

(assert (=> b!574700 (= lt!242967 (getSuffix!247 input!2705 lt!242973))))

(declare-fun lt!242953 () List!5659)

(assert (=> b!574700 (isPrefix!728 lt!242973 lt!242953)))

(declare-fun ++!1582 (List!5659 List!5659) List!5659)

(assert (=> b!574700 (= lt!242953 (++!1582 lt!242973 (_2!3581 (v!16301 lt!242987))))))

(declare-fun lt!242952 () Unit!10186)

(assert (=> b!574700 (= lt!242952 (lemmaConcatTwoListThenFirstIsPrefix!575 lt!242973 (_2!3581 (v!16301 lt!242987))))))

(declare-fun lt!242985 () Unit!10186)

(declare-fun lemmaCharactersSize!161 (Token!1924) Unit!10186)

(assert (=> b!574700 (= lt!242985 (lemmaCharactersSize!161 token!491))))

(declare-fun lt!242958 () Unit!10186)

(assert (=> b!574700 (= lt!242958 (lemmaCharactersSize!161 (_1!3581 (v!16301 lt!242987))))))

(declare-fun lt!242965 () Unit!10186)

(declare-fun e!347283 () Unit!10186)

(assert (=> b!574700 (= lt!242965 e!347283)))

(declare-fun c!107718 () Bool)

(declare-fun lt!242959 () Int)

(declare-fun lt!242954 () Int)

(assert (=> b!574700 (= c!107718 (> lt!242959 lt!242954))))

(declare-fun size!4499 (List!5659) Int)

(assert (=> b!574700 (= lt!242954 (size!4499 lt!242976))))

(assert (=> b!574700 (= lt!242959 (size!4499 lt!242973))))

(assert (=> b!574700 (= lt!242973 (list!2346 (charsOf!723 (_1!3581 (v!16301 lt!242987)))))))

(declare-fun lt!242980 () tuple2!6634)

(assert (=> b!574700 (= lt!242987 (Some!1444 lt!242980))))

(assert (=> b!574700 (= lt!242980 (tuple2!6635 (_1!3581 (v!16301 lt!242987)) (_2!3581 (v!16301 lt!242987))))))

(declare-fun lt!242963 () Unit!10186)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!171 (List!5659 List!5659 List!5659 List!5659) Unit!10186)

(assert (=> b!574700 (= lt!242963 (lemmaConcatSameAndSameSizesThenSameLists!171 lt!242976 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!574701 () Bool)

(assert (=> b!574701 (= e!347292 (and (= (size!4498 (_1!3581 (v!16301 lt!242987))) lt!242959) (= (originalCharacters!1133 (_1!3581 (v!16301 lt!242987))) lt!242973) (= lt!242980 (tuple2!6635 (Token!1925 lt!242966 (rule!1840 (_1!3581 (v!16301 lt!242987))) lt!242959 lt!242973) lt!242967))))))

(declare-fun b!574702 () Bool)

(declare-fun tp!180379 () Bool)

(declare-fun e!347285 () Bool)

(declare-fun inv!7105 (String!7336) Bool)

(declare-fun inv!7108 (TokenValueInjection!2004) Bool)

(assert (=> b!574702 (= e!347285 (and tp!180379 (inv!7105 (tag!1356 (h!11052 rules!3103))) (inv!7108 (transformation!1094 (h!11052 rules!3103))) e!347281))))

(declare-fun b!574703 () Bool)

(assert (=> b!574703 (= e!347299 e!347296)))

(declare-fun res!246834 () Bool)

(assert (=> b!574703 (=> (not res!246834) (not e!347296))))

(assert (=> b!574703 (= res!246834 (= lt!242955 lt!242974))))

(assert (=> b!574703 (= lt!242955 (++!1582 lt!242976 suffix!1342))))

(declare-fun b!574704 () Bool)

(declare-fun e!347286 () Bool)

(declare-fun tp_is_empty!3211 () Bool)

(declare-fun tp!180384 () Bool)

(assert (=> b!574704 (= e!347286 (and tp_is_empty!3211 tp!180384))))

(declare-fun b!574705 () Bool)

(declare-fun e!347287 () Bool)

(declare-fun e!347294 () Bool)

(assert (=> b!574705 (= e!347287 e!347294)))

(declare-fun res!246843 () Bool)

(assert (=> b!574705 (=> res!246843 e!347294)))

(assert (=> b!574705 (= res!246843 (>= lt!242959 lt!242954))))

(declare-fun b!574706 () Bool)

(declare-fun Unit!10188 () Unit!10186)

(assert (=> b!574706 (= e!347283 Unit!10188)))

(assert (=> b!574706 false))

(declare-fun b!574707 () Bool)

(declare-fun e!347291 () Unit!10186)

(declare-fun Unit!10189 () Unit!10186)

(assert (=> b!574707 (= e!347291 Unit!10189)))

(declare-fun b!574708 () Bool)

(declare-fun e!347288 () Bool)

(declare-fun tp!180385 () Bool)

(assert (=> b!574708 (= e!347288 (and tp_is_empty!3211 tp!180385))))

(declare-fun b!574709 () Bool)

(declare-fun res!246840 () Bool)

(assert (=> b!574709 (=> (not res!246840) (not e!347297))))

(declare-fun isEmpty!4079 (List!5659) Bool)

(assert (=> b!574709 (= res!246840 (not (isEmpty!4079 input!2705)))))

(declare-fun e!347277 () Bool)

(assert (=> b!574710 (= e!347277 (and tp!180381 tp!180380))))

(declare-fun b!574711 () Bool)

(declare-fun e!347301 () Bool)

(assert (=> b!574711 (= e!347279 e!347301)))

(declare-fun res!246850 () Bool)

(assert (=> b!574711 (=> res!246850 e!347301)))

(assert (=> b!574711 (= res!246850 (or (not (= lt!242959 lt!242954)) (not (= lt!242953 input!2705)) (not (= lt!242953 lt!242976))))))

(declare-fun lt!242956 () Unit!10186)

(declare-fun lt!242970 () BalanceConc!3630)

(declare-fun lemmaSemiInverse!197 (TokenValueInjection!2004 BalanceConc!3630) Unit!10186)

(assert (=> b!574711 (= lt!242956 (lemmaSemiInverse!197 (transformation!1094 (rule!1840 token!491)) lt!242970))))

(declare-fun lt!242981 () Unit!10186)

(assert (=> b!574711 (= lt!242981 (lemmaSemiInverse!197 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) lt!242983))))

(declare-fun lt!242979 () Unit!10186)

(assert (=> b!574711 (= lt!242979 e!347291)))

(declare-fun c!107719 () Bool)

(assert (=> b!574711 (= c!107719 (< lt!242959 lt!242954))))

(assert (=> b!574711 e!347287))

(declare-fun res!246833 () Bool)

(assert (=> b!574711 (=> (not res!246833) (not e!347287))))

(declare-fun lt!242969 () TokenValue!1118)

(declare-fun maxPrefixOneRule!379 (LexerInterface!980 Rule!1988 List!5659) Option!1445)

(assert (=> b!574711 (= res!246833 (= (maxPrefixOneRule!379 thiss!22590 (rule!1840 token!491) lt!242974) (Some!1444 (tuple2!6635 (Token!1925 lt!242969 (rule!1840 token!491) lt!242954 lt!242976) suffix!1342))))))

(declare-fun lt!242964 () Unit!10186)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!129 (LexerInterface!980 List!5661 List!5659 List!5659 List!5659 Rule!1988) Unit!10186)

(assert (=> b!574711 (= lt!242964 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!129 thiss!22590 rules!3103 lt!242976 lt!242974 suffix!1342 (rule!1840 token!491)))))

(assert (=> b!574711 (= (maxPrefixOneRule!379 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))) input!2705) (Some!1444 (tuple2!6635 (Token!1925 lt!242966 (rule!1840 (_1!3581 (v!16301 lt!242987))) lt!242959 lt!242973) (_2!3581 (v!16301 lt!242987)))))))

(declare-fun lt!242957 () Unit!10186)

(assert (=> b!574711 (= lt!242957 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!129 thiss!22590 rules!3103 lt!242973 input!2705 (_2!3581 (v!16301 lt!242987)) (rule!1840 (_1!3581 (v!16301 lt!242987)))))))

(declare-fun e!347282 () Bool)

(assert (=> b!574711 e!347282))

(declare-fun res!246842 () Bool)

(assert (=> b!574711 (=> (not res!246842) (not e!347282))))

(assert (=> b!574711 (= res!246842 (= (value!36047 token!491) lt!242969))))

(assert (=> b!574711 (= lt!242969 (apply!1359 (transformation!1094 (rule!1840 token!491)) lt!242970))))

(assert (=> b!574711 (= lt!242970 (seqFromList!1282 lt!242976))))

(declare-fun lt!242975 () List!5659)

(assert (=> b!574711 (= suffix!1342 lt!242975)))

(declare-fun lt!242972 () Unit!10186)

(assert (=> b!574711 (= lt!242972 (lemmaSamePrefixThenSameSuffix!451 lt!242976 suffix!1342 lt!242976 lt!242975 lt!242974))))

(assert (=> b!574711 (= lt!242975 (getSuffix!247 lt!242974 lt!242976))))

(declare-fun b!574712 () Bool)

(declare-fun res!246837 () Bool)

(assert (=> b!574712 (=> (not res!246837) (not e!347292))))

(assert (=> b!574712 (= res!246837 (= (size!4498 (_1!3581 (v!16301 lt!242987))) (size!4499 (originalCharacters!1133 (_1!3581 (v!16301 lt!242987))))))))

(declare-fun b!574713 () Bool)

(declare-fun res!246835 () Bool)

(declare-fun e!347298 () Bool)

(assert (=> b!574713 (=> (not res!246835) (not e!347298))))

(declare-fun get!2156 (Option!1445) tuple2!6634)

(assert (=> b!574713 (= res!246835 (= (_1!3581 (get!2156 lt!242987)) (_1!3581 (v!16301 lt!242987))))))

(declare-fun e!347290 () Bool)

(declare-fun b!574714 () Bool)

(declare-fun tp!180383 () Bool)

(assert (=> b!574714 (= e!347290 (and tp!180383 (inv!7105 (tag!1356 (rule!1840 token!491))) (inv!7108 (transformation!1094 (rule!1840 token!491))) e!347277))))

(declare-fun b!574715 () Bool)

(assert (=> b!574715 (= e!347294 e!347298)))

(declare-fun res!246836 () Bool)

(assert (=> b!574715 (=> (not res!246836) (not e!347298))))

(declare-fun isDefined!1256 (Option!1445) Bool)

(assert (=> b!574715 (= res!246836 (isDefined!1256 lt!242987))))

(declare-fun b!574716 () Bool)

(declare-fun res!246846 () Bool)

(assert (=> b!574716 (=> res!246846 e!347301)))

(assert (=> b!574716 (= res!246846 (or (not (= lt!242973 lt!242976)) (not (= (originalCharacters!1133 (_1!3581 (v!16301 lt!242987))) (originalCharacters!1133 token!491)))))))

(declare-fun b!574717 () Bool)

(declare-fun e!347280 () Bool)

(assert (=> b!574717 (= e!347276 e!347280)))

(declare-fun res!246851 () Bool)

(assert (=> b!574717 (=> (not res!246851) (not e!347280))))

(declare-fun lt!242951 () Option!1445)

(assert (=> b!574717 (= res!246851 (isDefined!1256 lt!242951))))

(assert (=> b!574717 (= lt!242951 (maxPrefix!678 thiss!22590 rules!3103 lt!242974))))

(assert (=> b!574717 (= lt!242974 (++!1582 input!2705 suffix!1342))))

(declare-fun b!574718 () Bool)

(declare-fun res!246841 () Bool)

(assert (=> b!574718 (=> res!246841 e!347301)))

(assert (=> b!574718 (= res!246841 (not (isEmpty!4079 (_2!3581 (v!16301 lt!242987)))))))

(declare-fun b!574719 () Bool)

(declare-fun Unit!10190 () Unit!10186)

(assert (=> b!574719 (= e!347291 Unit!10190)))

(declare-fun lt!242978 () Unit!10186)

(assert (=> b!574719 (= lt!242978 (lemmaSemiInverse!197 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) lt!242983))))

(declare-fun lt!242960 () Unit!10186)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!53 (LexerInterface!980 List!5661 Rule!1988 List!5659 List!5659 List!5659 Rule!1988) Unit!10186)

(assert (=> b!574719 (= lt!242960 (lemmaMaxPrefixOutputsMaxPrefix!53 thiss!22590 rules!3103 (rule!1840 (_1!3581 (v!16301 lt!242987))) lt!242973 input!2705 input!2705 (rule!1840 token!491)))))

(declare-fun res!246844 () Bool)

(declare-fun matchR!575 (Regex!1428 List!5659) Bool)

(assert (=> b!574719 (= res!246844 (not (matchR!575 (regex!1094 (rule!1840 token!491)) input!2705)))))

(assert (=> b!574719 (=> (not res!246844) (not e!347293))))

(assert (=> b!574719 e!347293))

(declare-fun res!246838 () Bool)

(assert (=> start!52966 (=> (not res!246838) (not e!347297))))

(assert (=> start!52966 (= res!246838 (is-Lexer!978 thiss!22590))))

(assert (=> start!52966 e!347297))

(assert (=> start!52966 e!347286))

(declare-fun e!347289 () Bool)

(assert (=> start!52966 e!347289))

(declare-fun e!347302 () Bool)

(declare-fun inv!7109 (Token!1924) Bool)

(assert (=> start!52966 (and (inv!7109 token!491) e!347302)))

(assert (=> start!52966 true))

(assert (=> start!52966 e!347288))

(declare-fun b!574720 () Bool)

(declare-fun res!246845 () Bool)

(assert (=> b!574720 (=> (not res!246845) (not e!347297))))

(declare-fun isEmpty!4080 (List!5661) Bool)

(assert (=> b!574720 (= res!246845 (not (isEmpty!4080 rules!3103)))))

(declare-fun b!574721 () Bool)

(declare-fun res!246832 () Bool)

(assert (=> b!574721 (=> (not res!246832) (not e!347282))))

(assert (=> b!574721 (= res!246832 (= (size!4498 token!491) (size!4499 (originalCharacters!1133 token!491))))))

(declare-fun b!574722 () Bool)

(declare-fun res!246831 () Bool)

(assert (=> b!574722 (=> (not res!246831) (not e!347297))))

(declare-fun rulesInvariant!943 (LexerInterface!980 List!5661) Bool)

(assert (=> b!574722 (= res!246831 (rulesInvariant!943 thiss!22590 rules!3103))))

(declare-fun b!574723 () Bool)

(assert (=> b!574723 (= e!347280 e!347284)))

(declare-fun res!246839 () Bool)

(assert (=> b!574723 (=> (not res!246839) (not e!347284))))

(declare-fun lt!242962 () tuple2!6634)

(assert (=> b!574723 (= res!246839 (and (= (_1!3581 lt!242962) token!491) (= (_2!3581 lt!242962) suffix!1342)))))

(assert (=> b!574723 (= lt!242962 (get!2156 lt!242951))))

(declare-fun b!574724 () Bool)

(declare-fun contains!1324 (List!5661 Rule!1988) Bool)

(assert (=> b!574724 (= e!347301 (contains!1324 rules!3103 (rule!1840 (_1!3581 (v!16301 lt!242987)))))))

(declare-fun b!574725 () Bool)

(assert (=> b!574725 (= e!347298 (= lt!242967 (_2!3581 (v!16301 lt!242987))))))

(declare-fun b!574726 () Bool)

(declare-fun Unit!10191 () Unit!10186)

(assert (=> b!574726 (= e!347283 Unit!10191)))

(declare-fun b!574727 () Bool)

(declare-fun tp!180378 () Bool)

(assert (=> b!574727 (= e!347289 (and e!347285 tp!180378))))

(declare-fun b!574728 () Bool)

(declare-fun tp!180386 () Bool)

(declare-fun inv!21 (TokenValue!1118) Bool)

(assert (=> b!574728 (= e!347302 (and (inv!21 (value!36047 token!491)) e!347290 tp!180386))))

(declare-fun b!574729 () Bool)

(assert (=> b!574729 (= e!347282 (and (= (size!4498 token!491) lt!242954) (= (originalCharacters!1133 token!491) lt!242976) (= (tuple2!6635 token!491 suffix!1342) (tuple2!6635 (Token!1925 lt!242969 (rule!1840 token!491) lt!242954 lt!242976) lt!242975))))))

(assert (= (and start!52966 res!246838) b!574720))

(assert (= (and b!574720 res!246845) b!574722))

(assert (= (and b!574722 res!246831) b!574709))

(assert (= (and b!574709 res!246840) b!574696))

(assert (= (and b!574696 res!246852) b!574717))

(assert (= (and b!574717 res!246851) b!574723))

(assert (= (and b!574723 res!246839) b!574699))

(assert (= (and b!574699 res!246849) b!574703))

(assert (= (and b!574703 res!246834) b!574700))

(assert (= (and b!574700 c!107718) b!574706))

(assert (= (and b!574700 (not c!107718)) b!574726))

(assert (= (and b!574700 res!246847) b!574712))

(assert (= (and b!574712 res!246837) b!574701))

(assert (= (and b!574700 (not res!246848)) b!574711))

(assert (= (and b!574711 res!246842) b!574721))

(assert (= (and b!574721 res!246832) b!574729))

(assert (= (and b!574711 res!246833) b!574705))

(assert (= (and b!574705 (not res!246843)) b!574715))

(assert (= (and b!574715 res!246836) b!574713))

(assert (= (and b!574713 res!246835) b!574725))

(assert (= (and b!574711 c!107719) b!574719))

(assert (= (and b!574711 (not c!107719)) b!574707))

(assert (= (and b!574719 res!246844) b!574697))

(assert (= (and b!574711 (not res!246850)) b!574718))

(assert (= (and b!574718 (not res!246841)) b!574716))

(assert (= (and b!574716 (not res!246846)) b!574724))

(assert (= (and start!52966 (is-Cons!5649 suffix!1342)) b!574704))

(assert (= b!574702 b!574698))

(assert (= b!574727 b!574702))

(assert (= (and start!52966 (is-Cons!5651 rules!3103)) b!574727))

(assert (= b!574714 b!574710))

(assert (= b!574728 b!574714))

(assert (= start!52966 b!574728))

(assert (= (and start!52966 (is-Cons!5649 input!2705)) b!574708))

(declare-fun m!831549 () Bool)

(assert (=> start!52966 m!831549))

(declare-fun m!831551 () Bool)

(assert (=> b!574709 m!831551))

(declare-fun m!831553 () Bool)

(assert (=> b!574699 m!831553))

(declare-fun m!831555 () Bool)

(assert (=> b!574712 m!831555))

(declare-fun m!831557 () Bool)

(assert (=> b!574720 m!831557))

(declare-fun m!831559 () Bool)

(assert (=> b!574696 m!831559))

(assert (=> b!574696 m!831559))

(declare-fun m!831561 () Bool)

(assert (=> b!574696 m!831561))

(declare-fun m!831563 () Bool)

(assert (=> b!574722 m!831563))

(declare-fun m!831565 () Bool)

(assert (=> b!574718 m!831565))

(declare-fun m!831567 () Bool)

(assert (=> b!574703 m!831567))

(declare-fun m!831569 () Bool)

(assert (=> b!574700 m!831569))

(declare-fun m!831571 () Bool)

(assert (=> b!574700 m!831571))

(declare-fun m!831573 () Bool)

(assert (=> b!574700 m!831573))

(declare-fun m!831575 () Bool)

(assert (=> b!574700 m!831575))

(declare-fun m!831577 () Bool)

(assert (=> b!574700 m!831577))

(declare-fun m!831579 () Bool)

(assert (=> b!574700 m!831579))

(declare-fun m!831581 () Bool)

(assert (=> b!574700 m!831581))

(declare-fun m!831583 () Bool)

(assert (=> b!574700 m!831583))

(declare-fun m!831585 () Bool)

(assert (=> b!574700 m!831585))

(assert (=> b!574700 m!831573))

(declare-fun m!831587 () Bool)

(assert (=> b!574700 m!831587))

(declare-fun m!831589 () Bool)

(assert (=> b!574700 m!831589))

(declare-fun m!831591 () Bool)

(assert (=> b!574700 m!831591))

(declare-fun m!831593 () Bool)

(assert (=> b!574700 m!831593))

(declare-fun m!831595 () Bool)

(assert (=> b!574700 m!831595))

(declare-fun m!831597 () Bool)

(assert (=> b!574700 m!831597))

(declare-fun m!831599 () Bool)

(assert (=> b!574700 m!831599))

(declare-fun m!831601 () Bool)

(assert (=> b!574700 m!831601))

(declare-fun m!831603 () Bool)

(assert (=> b!574700 m!831603))

(declare-fun m!831605 () Bool)

(assert (=> b!574700 m!831605))

(declare-fun m!831607 () Bool)

(assert (=> b!574700 m!831607))

(declare-fun m!831609 () Bool)

(assert (=> b!574700 m!831609))

(declare-fun m!831611 () Bool)

(assert (=> b!574700 m!831611))

(declare-fun m!831613 () Bool)

(assert (=> b!574700 m!831613))

(declare-fun m!831615 () Bool)

(assert (=> b!574700 m!831615))

(declare-fun m!831617 () Bool)

(assert (=> b!574700 m!831617))

(declare-fun m!831619 () Bool)

(assert (=> b!574700 m!831619))

(declare-fun m!831621 () Bool)

(assert (=> b!574700 m!831621))

(declare-fun m!831623 () Bool)

(assert (=> b!574728 m!831623))

(declare-fun m!831625 () Bool)

(assert (=> b!574723 m!831625))

(declare-fun m!831627 () Bool)

(assert (=> b!574717 m!831627))

(declare-fun m!831629 () Bool)

(assert (=> b!574717 m!831629))

(declare-fun m!831631 () Bool)

(assert (=> b!574717 m!831631))

(declare-fun m!831633 () Bool)

(assert (=> b!574713 m!831633))

(declare-fun m!831635 () Bool)

(assert (=> b!574702 m!831635))

(declare-fun m!831637 () Bool)

(assert (=> b!574702 m!831637))

(declare-fun m!831639 () Bool)

(assert (=> b!574715 m!831639))

(declare-fun m!831641 () Bool)

(assert (=> b!574721 m!831641))

(declare-fun m!831643 () Bool)

(assert (=> b!574719 m!831643))

(declare-fun m!831645 () Bool)

(assert (=> b!574719 m!831645))

(declare-fun m!831647 () Bool)

(assert (=> b!574719 m!831647))

(declare-fun m!831649 () Bool)

(assert (=> b!574724 m!831649))

(declare-fun m!831651 () Bool)

(assert (=> b!574711 m!831651))

(declare-fun m!831653 () Bool)

(assert (=> b!574711 m!831653))

(declare-fun m!831655 () Bool)

(assert (=> b!574711 m!831655))

(assert (=> b!574711 m!831643))

(declare-fun m!831657 () Bool)

(assert (=> b!574711 m!831657))

(declare-fun m!831659 () Bool)

(assert (=> b!574711 m!831659))

(declare-fun m!831661 () Bool)

(assert (=> b!574711 m!831661))

(declare-fun m!831663 () Bool)

(assert (=> b!574711 m!831663))

(declare-fun m!831665 () Bool)

(assert (=> b!574711 m!831665))

(declare-fun m!831667 () Bool)

(assert (=> b!574711 m!831667))

(declare-fun m!831669 () Bool)

(assert (=> b!574714 m!831669))

(declare-fun m!831671 () Bool)

(assert (=> b!574714 m!831671))

(push 1)

(assert (not b!574713))

(assert b_and!56221)

(assert (not b_next!16005))

(assert (not b!574702))

(assert (not b!574708))

(assert (not b!574703))

(assert (not b!574714))

(assert (not b!574728))

(assert (not b!574718))

(assert b_and!56223)

(assert (not start!52966))

(assert (not b!574722))

(assert (not b!574696))

(assert (not b!574721))

(assert (not b_next!16011))

(assert (not b!574720))

(assert tp_is_empty!3211)

(assert (not b!574712))

(assert (not b!574723))

(assert (not b!574700))

(assert (not b!574711))

(assert (not b!574715))

(assert (not b!574724))

(assert b_and!56225)

(assert (not b!574717))

(assert (not b!574727))

(assert (not b!574704))

(assert (not b!574709))

(assert (not b!574699))

(assert (not b!574719))

(assert (not b_next!16009))

(assert (not b_next!16007))

(assert b_and!56219)

(check-sat)

(pop 1)

(push 1)

(assert b_and!56223)

(assert (not b_next!16011))

(assert b_and!56225)

(assert b_and!56221)

(assert (not b_next!16005))

(assert (not b_next!16009))

(assert (not b_next!16007))

(assert b_and!56219)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!201843 () Bool)

(assert (=> d!201843 (= (isEmpty!4079 (_2!3581 (v!16301 lt!242987))) (is-Nil!5649 (_2!3581 (v!16301 lt!242987))))))

(assert (=> b!574718 d!201843))

(declare-fun b!574842 () Bool)

(declare-fun e!347390 () Bool)

(declare-fun inv!17 (TokenValue!1118) Bool)

(assert (=> b!574842 (= e!347390 (inv!17 (value!36047 token!491)))))

(declare-fun b!574843 () Bool)

(declare-fun e!347391 () Bool)

(declare-fun inv!16 (TokenValue!1118) Bool)

(assert (=> b!574843 (= e!347391 (inv!16 (value!36047 token!491)))))

(declare-fun b!574844 () Bool)

(declare-fun res!246929 () Bool)

(declare-fun e!347392 () Bool)

(assert (=> b!574844 (=> res!246929 e!347392)))

(assert (=> b!574844 (= res!246929 (not (is-IntegerValue!3356 (value!36047 token!491))))))

(assert (=> b!574844 (= e!347390 e!347392)))

(declare-fun b!574845 () Bool)

(declare-fun inv!15 (TokenValue!1118) Bool)

(assert (=> b!574845 (= e!347392 (inv!15 (value!36047 token!491)))))

(declare-fun b!574846 () Bool)

(assert (=> b!574846 (= e!347391 e!347390)))

(declare-fun c!107736 () Bool)

(assert (=> b!574846 (= c!107736 (is-IntegerValue!3355 (value!36047 token!491)))))

(declare-fun d!201845 () Bool)

(declare-fun c!107735 () Bool)

(assert (=> d!201845 (= c!107735 (is-IntegerValue!3354 (value!36047 token!491)))))

(assert (=> d!201845 (= (inv!21 (value!36047 token!491)) e!347391)))

(assert (= (and d!201845 c!107735) b!574843))

(assert (= (and d!201845 (not c!107735)) b!574846))

(assert (= (and b!574846 c!107736) b!574842))

(assert (= (and b!574846 (not c!107736)) b!574844))

(assert (= (and b!574844 (not res!246929)) b!574845))

(declare-fun m!831797 () Bool)

(assert (=> b!574842 m!831797))

(declare-fun m!831799 () Bool)

(assert (=> b!574843 m!831799))

(declare-fun m!831801 () Bool)

(assert (=> b!574845 m!831801))

(assert (=> b!574728 d!201845))

(declare-fun d!201847 () Bool)

(declare-fun list!2348 (Conc!1811) List!5659)

(assert (=> d!201847 (= (list!2346 (charsOf!723 token!491)) (list!2348 (c!107721 (charsOf!723 token!491))))))

(declare-fun bs!69286 () Bool)

(assert (= bs!69286 d!201847))

(declare-fun m!831803 () Bool)

(assert (=> bs!69286 m!831803))

(assert (=> b!574696 d!201847))

(declare-fun d!201849 () Bool)

(declare-fun lt!243105 () BalanceConc!3630)

(assert (=> d!201849 (= (list!2346 lt!243105) (originalCharacters!1133 token!491))))

(declare-fun dynLambda!3266 (Int TokenValue!1118) BalanceConc!3630)

(assert (=> d!201849 (= lt!243105 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (value!36047 token!491)))))

(assert (=> d!201849 (= (charsOf!723 token!491) lt!243105)))

(declare-fun b_lambda!22377 () Bool)

(assert (=> (not b_lambda!22377) (not d!201849)))

(declare-fun t!77235 () Bool)

(declare-fun tb!50123 () Bool)

(assert (=> (and b!574710 (= (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toChars!1812 (transformation!1094 (rule!1840 token!491)))) t!77235) tb!50123))

(declare-fun b!574851 () Bool)

(declare-fun e!347395 () Bool)

(declare-fun tp!180419 () Bool)

(declare-fun inv!7112 (Conc!1811) Bool)

(assert (=> b!574851 (= e!347395 (and (inv!7112 (c!107721 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (value!36047 token!491)))) tp!180419))))

(declare-fun result!56090 () Bool)

(declare-fun inv!7113 (BalanceConc!3630) Bool)

(assert (=> tb!50123 (= result!56090 (and (inv!7113 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (value!36047 token!491))) e!347395))))

(assert (= tb!50123 b!574851))

(declare-fun m!831805 () Bool)

(assert (=> b!574851 m!831805))

(declare-fun m!831807 () Bool)

(assert (=> tb!50123 m!831807))

(assert (=> d!201849 t!77235))

(declare-fun b_and!56235 () Bool)

(assert (= b_and!56221 (and (=> t!77235 result!56090) b_and!56235)))

(declare-fun tb!50125 () Bool)

(declare-fun t!77237 () Bool)

(assert (=> (and b!574698 (= (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toChars!1812 (transformation!1094 (rule!1840 token!491)))) t!77237) tb!50125))

(declare-fun result!56094 () Bool)

(assert (= result!56094 result!56090))

(assert (=> d!201849 t!77237))

(declare-fun b_and!56237 () Bool)

(assert (= b_and!56225 (and (=> t!77237 result!56094) b_and!56237)))

(declare-fun m!831809 () Bool)

(assert (=> d!201849 m!831809))

(declare-fun m!831811 () Bool)

(assert (=> d!201849 m!831811))

(assert (=> b!574696 d!201849))

(declare-fun d!201851 () Bool)

(declare-fun isEmpty!4083 (Option!1445) Bool)

(assert (=> d!201851 (= (isDefined!1256 lt!242951) (not (isEmpty!4083 lt!242951)))))

(declare-fun bs!69287 () Bool)

(assert (= bs!69287 d!201851))

(declare-fun m!831813 () Bool)

(assert (=> bs!69287 m!831813))

(assert (=> b!574717 d!201851))

(declare-fun b!574880 () Bool)

(declare-fun res!246951 () Bool)

(declare-fun e!347408 () Bool)

(assert (=> b!574880 (=> (not res!246951) (not e!347408))))

(declare-fun lt!243118 () Option!1445)

(assert (=> b!574880 (= res!246951 (< (size!4499 (_2!3581 (get!2156 lt!243118))) (size!4499 lt!242974)))))

(declare-fun b!574881 () Bool)

(declare-fun e!347409 () Option!1445)

(declare-fun call!39802 () Option!1445)

(assert (=> b!574881 (= e!347409 call!39802)))

(declare-fun b!574882 () Bool)

(declare-fun res!246952 () Bool)

(assert (=> b!574882 (=> (not res!246952) (not e!347408))))

(assert (=> b!574882 (= res!246952 (matchR!575 (regex!1094 (rule!1840 (_1!3581 (get!2156 lt!243118)))) (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243118))))))))

(declare-fun b!574883 () Bool)

(declare-fun lt!243117 () Option!1445)

(declare-fun lt!243116 () Option!1445)

(assert (=> b!574883 (= e!347409 (ite (and (is-None!1444 lt!243117) (is-None!1444 lt!243116)) None!1444 (ite (is-None!1444 lt!243116) lt!243117 (ite (is-None!1444 lt!243117) lt!243116 (ite (>= (size!4498 (_1!3581 (v!16301 lt!243117))) (size!4498 (_1!3581 (v!16301 lt!243116)))) lt!243117 lt!243116)))))))

(assert (=> b!574883 (= lt!243117 call!39802)))

(assert (=> b!574883 (= lt!243116 (maxPrefix!678 thiss!22590 (t!77230 rules!3103) lt!242974))))

(declare-fun b!574884 () Bool)

(declare-fun res!246954 () Bool)

(assert (=> b!574884 (=> (not res!246954) (not e!347408))))

(assert (=> b!574884 (= res!246954 (= (++!1582 (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243118)))) (_2!3581 (get!2156 lt!243118))) lt!242974))))

(declare-fun b!574885 () Bool)

(declare-fun res!246956 () Bool)

(assert (=> b!574885 (=> (not res!246956) (not e!347408))))

(assert (=> b!574885 (= res!246956 (= (value!36047 (_1!3581 (get!2156 lt!243118))) (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (get!2156 lt!243118)))) (seqFromList!1282 (originalCharacters!1133 (_1!3581 (get!2156 lt!243118)))))))))

(declare-fun d!201853 () Bool)

(declare-fun e!347407 () Bool)

(assert (=> d!201853 e!347407))

(declare-fun res!246953 () Bool)

(assert (=> d!201853 (=> res!246953 e!347407)))

(assert (=> d!201853 (= res!246953 (isEmpty!4083 lt!243118))))

(assert (=> d!201853 (= lt!243118 e!347409)))

(declare-fun c!107739 () Bool)

(assert (=> d!201853 (= c!107739 (and (is-Cons!5651 rules!3103) (is-Nil!5651 (t!77230 rules!3103))))))

(declare-fun lt!243119 () Unit!10186)

(declare-fun lt!243120 () Unit!10186)

(assert (=> d!201853 (= lt!243119 lt!243120)))

(assert (=> d!201853 (isPrefix!728 lt!242974 lt!242974)))

(assert (=> d!201853 (= lt!243120 (lemmaIsPrefixRefl!466 lt!242974 lt!242974))))

(declare-fun rulesValidInductive!389 (LexerInterface!980 List!5661) Bool)

(assert (=> d!201853 (rulesValidInductive!389 thiss!22590 rules!3103)))

(assert (=> d!201853 (= (maxPrefix!678 thiss!22590 rules!3103 lt!242974) lt!243118)))

(declare-fun b!574886 () Bool)

(assert (=> b!574886 (= e!347408 (contains!1324 rules!3103 (rule!1840 (_1!3581 (get!2156 lt!243118)))))))

(declare-fun bm!39797 () Bool)

(assert (=> bm!39797 (= call!39802 (maxPrefixOneRule!379 thiss!22590 (h!11052 rules!3103) lt!242974))))

(declare-fun b!574887 () Bool)

(declare-fun res!246950 () Bool)

(assert (=> b!574887 (=> (not res!246950) (not e!347408))))

(assert (=> b!574887 (= res!246950 (= (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243118)))) (originalCharacters!1133 (_1!3581 (get!2156 lt!243118)))))))

(declare-fun b!574888 () Bool)

(assert (=> b!574888 (= e!347407 e!347408)))

(declare-fun res!246955 () Bool)

(assert (=> b!574888 (=> (not res!246955) (not e!347408))))

(assert (=> b!574888 (= res!246955 (isDefined!1256 lt!243118))))

(assert (= (and d!201853 c!107739) b!574881))

(assert (= (and d!201853 (not c!107739)) b!574883))

(assert (= (or b!574881 b!574883) bm!39797))

(assert (= (and d!201853 (not res!246953)) b!574888))

(assert (= (and b!574888 res!246955) b!574887))

(assert (= (and b!574887 res!246950) b!574880))

(assert (= (and b!574880 res!246951) b!574884))

(assert (= (and b!574884 res!246954) b!574885))

(assert (= (and b!574885 res!246956) b!574882))

(assert (= (and b!574882 res!246952) b!574886))

(declare-fun m!831823 () Bool)

(assert (=> b!574880 m!831823))

(declare-fun m!831827 () Bool)

(assert (=> b!574880 m!831827))

(declare-fun m!831829 () Bool)

(assert (=> b!574880 m!831829))

(declare-fun m!831831 () Bool)

(assert (=> d!201853 m!831831))

(declare-fun m!831833 () Bool)

(assert (=> d!201853 m!831833))

(declare-fun m!831835 () Bool)

(assert (=> d!201853 m!831835))

(declare-fun m!831837 () Bool)

(assert (=> d!201853 m!831837))

(declare-fun m!831839 () Bool)

(assert (=> b!574883 m!831839))

(assert (=> b!574886 m!831823))

(declare-fun m!831841 () Bool)

(assert (=> b!574886 m!831841))

(assert (=> b!574884 m!831823))

(declare-fun m!831843 () Bool)

(assert (=> b!574884 m!831843))

(assert (=> b!574884 m!831843))

(declare-fun m!831845 () Bool)

(assert (=> b!574884 m!831845))

(assert (=> b!574884 m!831845))

(declare-fun m!831847 () Bool)

(assert (=> b!574884 m!831847))

(assert (=> b!574887 m!831823))

(assert (=> b!574887 m!831843))

(assert (=> b!574887 m!831843))

(assert (=> b!574887 m!831845))

(declare-fun m!831849 () Bool)

(assert (=> b!574888 m!831849))

(assert (=> b!574885 m!831823))

(declare-fun m!831851 () Bool)

(assert (=> b!574885 m!831851))

(assert (=> b!574885 m!831851))

(declare-fun m!831853 () Bool)

(assert (=> b!574885 m!831853))

(declare-fun m!831855 () Bool)

(assert (=> bm!39797 m!831855))

(assert (=> b!574882 m!831823))

(assert (=> b!574882 m!831843))

(assert (=> b!574882 m!831843))

(assert (=> b!574882 m!831845))

(assert (=> b!574882 m!831845))

(declare-fun m!831857 () Bool)

(assert (=> b!574882 m!831857))

(assert (=> b!574717 d!201853))

(declare-fun lt!243126 () List!5659)

(declare-fun e!347415 () Bool)

(declare-fun b!574901 () Bool)

(assert (=> b!574901 (= e!347415 (or (not (= suffix!1342 Nil!5649)) (= lt!243126 input!2705)))))

(declare-fun b!574900 () Bool)

(declare-fun res!246962 () Bool)

(assert (=> b!574900 (=> (not res!246962) (not e!347415))))

(assert (=> b!574900 (= res!246962 (= (size!4499 lt!243126) (+ (size!4499 input!2705) (size!4499 suffix!1342))))))

(declare-fun b!574898 () Bool)

(declare-fun e!347416 () List!5659)

(assert (=> b!574898 (= e!347416 suffix!1342)))

(declare-fun d!201861 () Bool)

(assert (=> d!201861 e!347415))

(declare-fun res!246961 () Bool)

(assert (=> d!201861 (=> (not res!246961) (not e!347415))))

(declare-fun content!993 (List!5659) (Set C!3778))

(assert (=> d!201861 (= res!246961 (= (content!993 lt!243126) (set.union (content!993 input!2705) (content!993 suffix!1342))))))

(assert (=> d!201861 (= lt!243126 e!347416)))

(declare-fun c!107742 () Bool)

(assert (=> d!201861 (= c!107742 (is-Nil!5649 input!2705))))

(assert (=> d!201861 (= (++!1582 input!2705 suffix!1342) lt!243126)))

(declare-fun b!574899 () Bool)

(assert (=> b!574899 (= e!347416 (Cons!5649 (h!11050 input!2705) (++!1582 (t!77228 input!2705) suffix!1342)))))

(assert (= (and d!201861 c!107742) b!574898))

(assert (= (and d!201861 (not c!107742)) b!574899))

(assert (= (and d!201861 res!246961) b!574900))

(assert (= (and b!574900 res!246962) b!574901))

(declare-fun m!831863 () Bool)

(assert (=> b!574900 m!831863))

(declare-fun m!831865 () Bool)

(assert (=> b!574900 m!831865))

(declare-fun m!831867 () Bool)

(assert (=> b!574900 m!831867))

(declare-fun m!831869 () Bool)

(assert (=> d!201861 m!831869))

(declare-fun m!831871 () Bool)

(assert (=> d!201861 m!831871))

(declare-fun m!831873 () Bool)

(assert (=> d!201861 m!831873))

(declare-fun m!831875 () Bool)

(assert (=> b!574899 m!831875))

(assert (=> b!574717 d!201861))

(declare-fun d!201865 () Bool)

(assert (=> d!201865 (= (isDefined!1256 lt!242987) (not (isEmpty!4083 lt!242987)))))

(declare-fun bs!69289 () Bool)

(assert (= bs!69289 d!201865))

(declare-fun m!831877 () Bool)

(assert (=> bs!69289 m!831877))

(assert (=> b!574715 d!201865))

(declare-fun d!201867 () Bool)

(assert (=> d!201867 (= (inv!7105 (tag!1356 (rule!1840 token!491))) (= (mod (str.len (value!36046 (tag!1356 (rule!1840 token!491)))) 2) 0))))

(assert (=> b!574714 d!201867))

(declare-fun d!201869 () Bool)

(declare-fun res!246965 () Bool)

(declare-fun e!347422 () Bool)

(assert (=> d!201869 (=> (not res!246965) (not e!347422))))

(declare-fun semiInverseModEq!420 (Int Int) Bool)

(assert (=> d!201869 (= res!246965 (semiInverseModEq!420 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toValue!1953 (transformation!1094 (rule!1840 token!491)))))))

(assert (=> d!201869 (= (inv!7108 (transformation!1094 (rule!1840 token!491))) e!347422)))

(declare-fun b!574906 () Bool)

(declare-fun equivClasses!403 (Int Int) Bool)

(assert (=> b!574906 (= e!347422 (equivClasses!403 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toValue!1953 (transformation!1094 (rule!1840 token!491)))))))

(assert (= (and d!201869 res!246965) b!574906))

(declare-fun m!831883 () Bool)

(assert (=> d!201869 m!831883))

(declare-fun m!831885 () Bool)

(assert (=> b!574906 m!831885))

(assert (=> b!574714 d!201869))

(declare-fun b!574910 () Bool)

(declare-fun lt!243127 () List!5659)

(declare-fun e!347423 () Bool)

(assert (=> b!574910 (= e!347423 (or (not (= suffix!1342 Nil!5649)) (= lt!243127 lt!242976)))))

(declare-fun b!574909 () Bool)

(declare-fun res!246967 () Bool)

(assert (=> b!574909 (=> (not res!246967) (not e!347423))))

(assert (=> b!574909 (= res!246967 (= (size!4499 lt!243127) (+ (size!4499 lt!242976) (size!4499 suffix!1342))))))

(declare-fun b!574907 () Bool)

(declare-fun e!347424 () List!5659)

(assert (=> b!574907 (= e!347424 suffix!1342)))

(declare-fun d!201873 () Bool)

(assert (=> d!201873 e!347423))

(declare-fun res!246966 () Bool)

(assert (=> d!201873 (=> (not res!246966) (not e!347423))))

(assert (=> d!201873 (= res!246966 (= (content!993 lt!243127) (set.union (content!993 lt!242976) (content!993 suffix!1342))))))

(assert (=> d!201873 (= lt!243127 e!347424)))

(declare-fun c!107743 () Bool)

(assert (=> d!201873 (= c!107743 (is-Nil!5649 lt!242976))))

(assert (=> d!201873 (= (++!1582 lt!242976 suffix!1342) lt!243127)))

(declare-fun b!574908 () Bool)

(assert (=> b!574908 (= e!347424 (Cons!5649 (h!11050 lt!242976) (++!1582 (t!77228 lt!242976) suffix!1342)))))

(assert (= (and d!201873 c!107743) b!574907))

(assert (= (and d!201873 (not c!107743)) b!574908))

(assert (= (and d!201873 res!246966) b!574909))

(assert (= (and b!574909 res!246967) b!574910))

(declare-fun m!831887 () Bool)

(assert (=> b!574909 m!831887))

(assert (=> b!574909 m!831621))

(assert (=> b!574909 m!831867))

(declare-fun m!831889 () Bool)

(assert (=> d!201873 m!831889))

(declare-fun m!831891 () Bool)

(assert (=> d!201873 m!831891))

(assert (=> d!201873 m!831873))

(declare-fun m!831893 () Bool)

(assert (=> b!574908 m!831893))

(assert (=> b!574703 d!201873))

(declare-fun d!201875 () Bool)

(declare-fun res!246972 () Bool)

(declare-fun e!347427 () Bool)

(assert (=> d!201875 (=> (not res!246972) (not e!347427))))

(assert (=> d!201875 (= res!246972 (not (isEmpty!4079 (originalCharacters!1133 token!491))))))

(assert (=> d!201875 (= (inv!7109 token!491) e!347427)))

(declare-fun b!574915 () Bool)

(declare-fun res!246973 () Bool)

(assert (=> b!574915 (=> (not res!246973) (not e!347427))))

(assert (=> b!574915 (= res!246973 (= (originalCharacters!1133 token!491) (list!2346 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (value!36047 token!491)))))))

(declare-fun b!574916 () Bool)

(assert (=> b!574916 (= e!347427 (= (size!4498 token!491) (size!4499 (originalCharacters!1133 token!491))))))

(assert (= (and d!201875 res!246972) b!574915))

(assert (= (and b!574915 res!246973) b!574916))

(declare-fun b_lambda!22383 () Bool)

(assert (=> (not b_lambda!22383) (not b!574915)))

(assert (=> b!574915 t!77235))

(declare-fun b_and!56247 () Bool)

(assert (= b_and!56235 (and (=> t!77235 result!56090) b_and!56247)))

(assert (=> b!574915 t!77237))

(declare-fun b_and!56249 () Bool)

(assert (= b_and!56237 (and (=> t!77237 result!56094) b_and!56249)))

(declare-fun m!831895 () Bool)

(assert (=> d!201875 m!831895))

(assert (=> b!574915 m!831811))

(assert (=> b!574915 m!831811))

(declare-fun m!831897 () Bool)

(assert (=> b!574915 m!831897))

(assert (=> b!574916 m!831641))

(assert (=> start!52966 d!201875))

(declare-fun d!201877 () Bool)

(assert (=> d!201877 (= (inv!7105 (tag!1356 (h!11052 rules!3103))) (= (mod (str.len (value!36046 (tag!1356 (h!11052 rules!3103)))) 2) 0))))

(assert (=> b!574702 d!201877))

(declare-fun d!201879 () Bool)

(declare-fun res!246974 () Bool)

(declare-fun e!347428 () Bool)

(assert (=> d!201879 (=> (not res!246974) (not e!347428))))

(assert (=> d!201879 (= res!246974 (semiInverseModEq!420 (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toValue!1953 (transformation!1094 (h!11052 rules!3103)))))))

(assert (=> d!201879 (= (inv!7108 (transformation!1094 (h!11052 rules!3103))) e!347428)))

(declare-fun b!574917 () Bool)

(assert (=> b!574917 (= e!347428 (equivClasses!403 (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toValue!1953 (transformation!1094 (h!11052 rules!3103)))))))

(assert (= (and d!201879 res!246974) b!574917))

(declare-fun m!831899 () Bool)

(assert (=> d!201879 m!831899))

(declare-fun m!831901 () Bool)

(assert (=> b!574917 m!831901))

(assert (=> b!574702 d!201879))

(declare-fun d!201881 () Bool)

(assert (=> d!201881 (= (get!2156 lt!242951) (v!16301 lt!242951))))

(assert (=> b!574723 d!201881))

(declare-fun d!201883 () Bool)

(declare-fun lt!243132 () Bool)

(declare-fun content!994 (List!5661) (Set Rule!1988))

(assert (=> d!201883 (= lt!243132 (set.member (rule!1840 (_1!3581 (v!16301 lt!242987))) (content!994 rules!3103)))))

(declare-fun e!347439 () Bool)

(assert (=> d!201883 (= lt!243132 e!347439)))

(declare-fun res!246988 () Bool)

(assert (=> d!201883 (=> (not res!246988) (not e!347439))))

(assert (=> d!201883 (= res!246988 (is-Cons!5651 rules!3103))))

(assert (=> d!201883 (= (contains!1324 rules!3103 (rule!1840 (_1!3581 (v!16301 lt!242987)))) lt!243132)))

(declare-fun b!574930 () Bool)

(declare-fun e!347440 () Bool)

(assert (=> b!574930 (= e!347439 e!347440)))

(declare-fun res!246987 () Bool)

(assert (=> b!574930 (=> res!246987 e!347440)))

(assert (=> b!574930 (= res!246987 (= (h!11052 rules!3103) (rule!1840 (_1!3581 (v!16301 lt!242987)))))))

(declare-fun b!574931 () Bool)

(assert (=> b!574931 (= e!347440 (contains!1324 (t!77230 rules!3103) (rule!1840 (_1!3581 (v!16301 lt!242987)))))))

(assert (= (and d!201883 res!246988) b!574930))

(assert (= (and b!574930 (not res!246987)) b!574931))

(declare-fun m!831903 () Bool)

(assert (=> d!201883 m!831903))

(declare-fun m!831905 () Bool)

(assert (=> d!201883 m!831905))

(declare-fun m!831907 () Bool)

(assert (=> b!574931 m!831907))

(assert (=> b!574724 d!201883))

(declare-fun d!201885 () Bool)

(assert (=> d!201885 (= (get!2156 lt!242987) (v!16301 lt!242987))))

(assert (=> b!574713 d!201885))

(declare-fun d!201887 () Bool)

(declare-fun res!246999 () Bool)

(declare-fun e!347449 () Bool)

(assert (=> d!201887 (=> (not res!246999) (not e!347449))))

(declare-fun rulesValid!384 (LexerInterface!980 List!5661) Bool)

(assert (=> d!201887 (= res!246999 (rulesValid!384 thiss!22590 rules!3103))))

(assert (=> d!201887 (= (rulesInvariant!943 thiss!22590 rules!3103) e!347449)))

(declare-fun b!574942 () Bool)

(declare-datatypes ((List!5665 0))(
  ( (Nil!5655) (Cons!5655 (h!11056 String!7336) (t!77282 List!5665)) )
))
(declare-fun noDuplicateTag!384 (LexerInterface!980 List!5661 List!5665) Bool)

(assert (=> b!574942 (= e!347449 (noDuplicateTag!384 thiss!22590 rules!3103 Nil!5655))))

(assert (= (and d!201887 res!246999) b!574942))

(declare-fun m!831921 () Bool)

(assert (=> d!201887 m!831921))

(declare-fun m!831923 () Bool)

(assert (=> b!574942 m!831923))

(assert (=> b!574722 d!201887))

(declare-fun d!201891 () Bool)

(assert (=> d!201891 (= (maxPrefixOneRule!379 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))) input!2705) (Some!1444 (tuple2!6635 (Token!1925 (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) (seqFromList!1282 lt!242973)) (rule!1840 (_1!3581 (v!16301 lt!242987))) (size!4499 lt!242973) lt!242973) (_2!3581 (v!16301 lt!242987)))))))

(declare-fun lt!243137 () Unit!10186)

(declare-fun choose!4098 (LexerInterface!980 List!5661 List!5659 List!5659 List!5659 Rule!1988) Unit!10186)

(assert (=> d!201891 (= lt!243137 (choose!4098 thiss!22590 rules!3103 lt!242973 input!2705 (_2!3581 (v!16301 lt!242987)) (rule!1840 (_1!3581 (v!16301 lt!242987)))))))

(assert (=> d!201891 (not (isEmpty!4080 rules!3103))))

(assert (=> d!201891 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!129 thiss!22590 rules!3103 lt!242973 input!2705 (_2!3581 (v!16301 lt!242987)) (rule!1840 (_1!3581 (v!16301 lt!242987)))) lt!243137)))

(declare-fun bs!69290 () Bool)

(assert (= bs!69290 d!201891))

(declare-fun m!831937 () Bool)

(assert (=> bs!69290 m!831937))

(assert (=> bs!69290 m!831651))

(assert (=> bs!69290 m!831557))

(assert (=> bs!69290 m!831591))

(assert (=> bs!69290 m!831591))

(declare-fun m!831939 () Bool)

(assert (=> bs!69290 m!831939))

(assert (=> bs!69290 m!831603))

(assert (=> b!574711 d!201891))

(declare-fun d!201897 () Bool)

(assert (=> d!201897 (= suffix!1342 lt!242975)))

(declare-fun lt!243140 () Unit!10186)

(declare-fun choose!4099 (List!5659 List!5659 List!5659 List!5659 List!5659) Unit!10186)

(assert (=> d!201897 (= lt!243140 (choose!4099 lt!242976 suffix!1342 lt!242976 lt!242975 lt!242974))))

(assert (=> d!201897 (isPrefix!728 lt!242976 lt!242974)))

(assert (=> d!201897 (= (lemmaSamePrefixThenSameSuffix!451 lt!242976 suffix!1342 lt!242976 lt!242975 lt!242974) lt!243140)))

(declare-fun bs!69291 () Bool)

(assert (= bs!69291 d!201897))

(declare-fun m!831945 () Bool)

(assert (=> bs!69291 m!831945))

(declare-fun m!831947 () Bool)

(assert (=> bs!69291 m!831947))

(assert (=> b!574711 d!201897))

(declare-fun b!575067 () Bool)

(declare-fun e!347513 () Bool)

(assert (=> b!575067 (= e!347513 true)))

(declare-fun d!201901 () Bool)

(assert (=> d!201901 e!347513))

(assert (= d!201901 b!575067))

(declare-fun order!4595 () Int)

(declare-fun order!4597 () Int)

(declare-fun lambda!15693 () Int)

(declare-fun dynLambda!3267 (Int Int) Int)

(declare-fun dynLambda!3268 (Int Int) Int)

(assert (=> b!575067 (< (dynLambda!3267 order!4595 (toValue!1953 (transformation!1094 (rule!1840 token!491)))) (dynLambda!3268 order!4597 lambda!15693))))

(declare-fun order!4599 () Int)

(declare-fun dynLambda!3269 (Int Int) Int)

(assert (=> b!575067 (< (dynLambda!3269 order!4599 (toChars!1812 (transformation!1094 (rule!1840 token!491)))) (dynLambda!3268 order!4597 lambda!15693))))

(declare-fun dynLambda!3270 (Int BalanceConc!3630) TokenValue!1118)

(assert (=> d!201901 (= (list!2346 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 token!491))) lt!242970))) (list!2346 lt!242970))))

(declare-fun lt!243206 () Unit!10186)

(declare-fun ForallOf!103 (Int BalanceConc!3630) Unit!10186)

(assert (=> d!201901 (= lt!243206 (ForallOf!103 lambda!15693 lt!242970))))

(assert (=> d!201901 (= (lemmaSemiInverse!197 (transformation!1094 (rule!1840 token!491)) lt!242970) lt!243206)))

(declare-fun b_lambda!22387 () Bool)

(assert (=> (not b_lambda!22387) (not d!201901)))

(declare-fun t!77251 () Bool)

(declare-fun tb!50139 () Bool)

(assert (=> (and b!574710 (= (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toChars!1812 (transformation!1094 (rule!1840 token!491)))) t!77251) tb!50139))

(declare-fun tp!180424 () Bool)

(declare-fun b!575068 () Bool)

(declare-fun e!347514 () Bool)

(assert (=> b!575068 (= e!347514 (and (inv!7112 (c!107721 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 token!491))) lt!242970)))) tp!180424))))

(declare-fun result!56112 () Bool)

(assert (=> tb!50139 (= result!56112 (and (inv!7113 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 token!491))) lt!242970))) e!347514))))

(assert (= tb!50139 b!575068))

(declare-fun m!832103 () Bool)

(assert (=> b!575068 m!832103))

(declare-fun m!832105 () Bool)

(assert (=> tb!50139 m!832105))

(assert (=> d!201901 t!77251))

(declare-fun b_and!56255 () Bool)

(assert (= b_and!56247 (and (=> t!77251 result!56112) b_and!56255)))

(declare-fun tb!50141 () Bool)

(declare-fun t!77253 () Bool)

(assert (=> (and b!574698 (= (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toChars!1812 (transformation!1094 (rule!1840 token!491)))) t!77253) tb!50141))

(declare-fun result!56114 () Bool)

(assert (= result!56114 result!56112))

(assert (=> d!201901 t!77253))

(declare-fun b_and!56257 () Bool)

(assert (= b_and!56249 (and (=> t!77253 result!56114) b_and!56257)))

(declare-fun b_lambda!22389 () Bool)

(assert (=> (not b_lambda!22389) (not d!201901)))

(declare-fun t!77255 () Bool)

(declare-fun tb!50143 () Bool)

(assert (=> (and b!574710 (= (toValue!1953 (transformation!1094 (rule!1840 token!491))) (toValue!1953 (transformation!1094 (rule!1840 token!491)))) t!77255) tb!50143))

(declare-fun result!56116 () Bool)

(assert (=> tb!50143 (= result!56116 (inv!21 (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 token!491))) lt!242970)))))

(declare-fun m!832107 () Bool)

(assert (=> tb!50143 m!832107))

(assert (=> d!201901 t!77255))

(declare-fun b_and!56259 () Bool)

(assert (= b_and!56219 (and (=> t!77255 result!56116) b_and!56259)))

(declare-fun tb!50145 () Bool)

(declare-fun t!77257 () Bool)

(assert (=> (and b!574698 (= (toValue!1953 (transformation!1094 (h!11052 rules!3103))) (toValue!1953 (transformation!1094 (rule!1840 token!491)))) t!77257) tb!50145))

(declare-fun result!56120 () Bool)

(assert (= result!56120 result!56116))

(assert (=> d!201901 t!77257))

(declare-fun b_and!56261 () Bool)

(assert (= b_and!56223 (and (=> t!77257 result!56120) b_and!56261)))

(declare-fun m!832115 () Bool)

(assert (=> d!201901 m!832115))

(declare-fun m!832117 () Bool)

(assert (=> d!201901 m!832117))

(assert (=> d!201901 m!832117))

(declare-fun m!832123 () Bool)

(assert (=> d!201901 m!832123))

(declare-fun m!832125 () Bool)

(assert (=> d!201901 m!832125))

(assert (=> d!201901 m!832115))

(declare-fun m!832129 () Bool)

(assert (=> d!201901 m!832129))

(assert (=> b!574711 d!201901))

(declare-fun b!575089 () Bool)

(declare-fun e!347528 () Option!1445)

(assert (=> b!575089 (= e!347528 None!1444)))

(declare-fun b!575090 () Bool)

(declare-datatypes ((tuple2!6638 0))(
  ( (tuple2!6639 (_1!3583 List!5659) (_2!3583 List!5659)) )
))
(declare-fun lt!243225 () tuple2!6638)

(declare-fun size!4502 (BalanceConc!3630) Int)

(assert (=> b!575090 (= e!347528 (Some!1444 (tuple2!6635 (Token!1925 (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) (seqFromList!1282 (_1!3583 lt!243225))) (rule!1840 (_1!3581 (v!16301 lt!242987))) (size!4502 (seqFromList!1282 (_1!3583 lt!243225))) (_1!3583 lt!243225)) (_2!3583 lt!243225))))))

(declare-fun lt!243227 () Unit!10186)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!150 (Regex!1428 List!5659) Unit!10186)

(assert (=> b!575090 (= lt!243227 (longestMatchIsAcceptedByMatchOrIsEmpty!150 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) input!2705))))

(declare-fun res!247097 () Bool)

(declare-fun findLongestMatchInner!166 (Regex!1428 List!5659 Int List!5659 List!5659 Int) tuple2!6638)

(assert (=> b!575090 (= res!247097 (isEmpty!4079 (_1!3583 (findLongestMatchInner!166 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) Nil!5649 (size!4499 Nil!5649) input!2705 input!2705 (size!4499 input!2705)))))))

(declare-fun e!347529 () Bool)

(assert (=> b!575090 (=> res!247097 e!347529)))

(assert (=> b!575090 e!347529))

(declare-fun lt!243224 () Unit!10186)

(assert (=> b!575090 (= lt!243224 lt!243227)))

(declare-fun lt!243228 () Unit!10186)

(assert (=> b!575090 (= lt!243228 (lemmaSemiInverse!197 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) (seqFromList!1282 (_1!3583 lt!243225))))))

(declare-fun b!575091 () Bool)

(declare-fun e!347527 () Bool)

(declare-fun e!347526 () Bool)

(assert (=> b!575091 (= e!347527 e!347526)))

(declare-fun res!247094 () Bool)

(assert (=> b!575091 (=> (not res!247094) (not e!347526))))

(declare-fun lt!243226 () Option!1445)

(assert (=> b!575091 (= res!247094 (matchR!575 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243226))))))))

(declare-fun d!201965 () Bool)

(assert (=> d!201965 e!347527))

(declare-fun res!247095 () Bool)

(assert (=> d!201965 (=> res!247095 e!347527)))

(assert (=> d!201965 (= res!247095 (isEmpty!4083 lt!243226))))

(assert (=> d!201965 (= lt!243226 e!347528)))

(declare-fun c!107768 () Bool)

(assert (=> d!201965 (= c!107768 (isEmpty!4079 (_1!3583 lt!243225)))))

(declare-fun findLongestMatch!145 (Regex!1428 List!5659) tuple2!6638)

(assert (=> d!201965 (= lt!243225 (findLongestMatch!145 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) input!2705))))

(assert (=> d!201965 (ruleValid!304 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))))))

(assert (=> d!201965 (= (maxPrefixOneRule!379 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))) input!2705) lt!243226)))

(declare-fun b!575092 () Bool)

(assert (=> b!575092 (= e!347529 (matchR!575 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) (_1!3583 (findLongestMatchInner!166 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) Nil!5649 (size!4499 Nil!5649) input!2705 input!2705 (size!4499 input!2705)))))))

(declare-fun b!575093 () Bool)

(declare-fun res!247096 () Bool)

(assert (=> b!575093 (=> (not res!247096) (not e!347526))))

(assert (=> b!575093 (= res!247096 (= (value!36047 (_1!3581 (get!2156 lt!243226))) (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (get!2156 lt!243226)))) (seqFromList!1282 (originalCharacters!1133 (_1!3581 (get!2156 lt!243226)))))))))

(declare-fun b!575094 () Bool)

(declare-fun res!247098 () Bool)

(assert (=> b!575094 (=> (not res!247098) (not e!347526))))

(assert (=> b!575094 (= res!247098 (< (size!4499 (_2!3581 (get!2156 lt!243226))) (size!4499 input!2705)))))

(declare-fun b!575095 () Bool)

(declare-fun res!247099 () Bool)

(assert (=> b!575095 (=> (not res!247099) (not e!347526))))

(assert (=> b!575095 (= res!247099 (= (++!1582 (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243226)))) (_2!3581 (get!2156 lt!243226))) input!2705))))

(declare-fun b!575096 () Bool)

(declare-fun res!247093 () Bool)

(assert (=> b!575096 (=> (not res!247093) (not e!347526))))

(assert (=> b!575096 (= res!247093 (= (rule!1840 (_1!3581 (get!2156 lt!243226))) (rule!1840 (_1!3581 (v!16301 lt!242987)))))))

(declare-fun b!575097 () Bool)

(assert (=> b!575097 (= e!347526 (= (size!4498 (_1!3581 (get!2156 lt!243226))) (size!4499 (originalCharacters!1133 (_1!3581 (get!2156 lt!243226))))))))

(assert (= (and d!201965 c!107768) b!575089))

(assert (= (and d!201965 (not c!107768)) b!575090))

(assert (= (and b!575090 (not res!247097)) b!575092))

(assert (= (and d!201965 (not res!247095)) b!575091))

(assert (= (and b!575091 res!247094) b!575095))

(assert (= (and b!575095 res!247099) b!575094))

(assert (= (and b!575094 res!247098) b!575096))

(assert (= (and b!575096 res!247093) b!575093))

(assert (= (and b!575093 res!247096) b!575097))

(declare-fun m!832161 () Bool)

(assert (=> b!575093 m!832161))

(declare-fun m!832163 () Bool)

(assert (=> b!575093 m!832163))

(assert (=> b!575093 m!832163))

(declare-fun m!832165 () Bool)

(assert (=> b!575093 m!832165))

(declare-fun m!832167 () Bool)

(assert (=> b!575092 m!832167))

(assert (=> b!575092 m!831865))

(assert (=> b!575092 m!832167))

(assert (=> b!575092 m!831865))

(declare-fun m!832169 () Bool)

(assert (=> b!575092 m!832169))

(declare-fun m!832171 () Bool)

(assert (=> b!575092 m!832171))

(assert (=> b!575091 m!832161))

(declare-fun m!832173 () Bool)

(assert (=> b!575091 m!832173))

(assert (=> b!575091 m!832173))

(declare-fun m!832175 () Bool)

(assert (=> b!575091 m!832175))

(assert (=> b!575091 m!832175))

(declare-fun m!832177 () Bool)

(assert (=> b!575091 m!832177))

(assert (=> b!575094 m!832161))

(declare-fun m!832179 () Bool)

(assert (=> b!575094 m!832179))

(assert (=> b!575094 m!831865))

(assert (=> b!575097 m!832161))

(declare-fun m!832181 () Bool)

(assert (=> b!575097 m!832181))

(declare-fun m!832183 () Bool)

(assert (=> b!575090 m!832183))

(declare-fun m!832185 () Bool)

(assert (=> b!575090 m!832185))

(assert (=> b!575090 m!832167))

(assert (=> b!575090 m!831865))

(assert (=> b!575090 m!832169))

(declare-fun m!832187 () Bool)

(assert (=> b!575090 m!832187))

(assert (=> b!575090 m!832183))

(declare-fun m!832189 () Bool)

(assert (=> b!575090 m!832189))

(assert (=> b!575090 m!832167))

(declare-fun m!832191 () Bool)

(assert (=> b!575090 m!832191))

(assert (=> b!575090 m!832183))

(assert (=> b!575090 m!832183))

(declare-fun m!832193 () Bool)

(assert (=> b!575090 m!832193))

(assert (=> b!575090 m!831865))

(assert (=> b!575096 m!832161))

(assert (=> b!575095 m!832161))

(assert (=> b!575095 m!832173))

(assert (=> b!575095 m!832173))

(assert (=> b!575095 m!832175))

(assert (=> b!575095 m!832175))

(declare-fun m!832195 () Bool)

(assert (=> b!575095 m!832195))

(declare-fun m!832197 () Bool)

(assert (=> d!201965 m!832197))

(declare-fun m!832199 () Bool)

(assert (=> d!201965 m!832199))

(declare-fun m!832201 () Bool)

(assert (=> d!201965 m!832201))

(assert (=> d!201965 m!831569))

(assert (=> b!574711 d!201965))

(declare-fun d!201969 () Bool)

(declare-fun lt!243231 () List!5659)

(assert (=> d!201969 (= (++!1582 lt!242976 lt!243231) lt!242974)))

(declare-fun e!347532 () List!5659)

(assert (=> d!201969 (= lt!243231 e!347532)))

(declare-fun c!107771 () Bool)

(assert (=> d!201969 (= c!107771 (is-Cons!5649 lt!242976))))

(assert (=> d!201969 (>= (size!4499 lt!242974) (size!4499 lt!242976))))

(assert (=> d!201969 (= (getSuffix!247 lt!242974 lt!242976) lt!243231)))

(declare-fun b!575102 () Bool)

(declare-fun tail!748 (List!5659) List!5659)

(assert (=> b!575102 (= e!347532 (getSuffix!247 (tail!748 lt!242974) (t!77228 lt!242976)))))

(declare-fun b!575103 () Bool)

(assert (=> b!575103 (= e!347532 lt!242974)))

(assert (= (and d!201969 c!107771) b!575102))

(assert (= (and d!201969 (not c!107771)) b!575103))

(declare-fun m!832203 () Bool)

(assert (=> d!201969 m!832203))

(assert (=> d!201969 m!831829))

(assert (=> d!201969 m!831621))

(declare-fun m!832205 () Bool)

(assert (=> b!575102 m!832205))

(assert (=> b!575102 m!832205))

(declare-fun m!832207 () Bool)

(assert (=> b!575102 m!832207))

(assert (=> b!574711 d!201969))

(declare-fun d!201971 () Bool)

(assert (=> d!201971 (= (apply!1359 (transformation!1094 (rule!1840 token!491)) lt!242970) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 token!491))) lt!242970))))

(declare-fun b_lambda!22391 () Bool)

(assert (=> (not b_lambda!22391) (not d!201971)))

(assert (=> d!201971 t!77255))

(declare-fun b_and!56263 () Bool)

(assert (= b_and!56259 (and (=> t!77255 result!56116) b_and!56263)))

(assert (=> d!201971 t!77257))

(declare-fun b_and!56265 () Bool)

(assert (= b_and!56261 (and (=> t!77257 result!56120) b_and!56265)))

(assert (=> d!201971 m!832115))

(assert (=> b!574711 d!201971))

(declare-fun d!201973 () Bool)

(declare-fun fromListB!556 (List!5659) BalanceConc!3630)

(assert (=> d!201973 (= (seqFromList!1282 lt!242976) (fromListB!556 lt!242976))))

(declare-fun bs!69306 () Bool)

(assert (= bs!69306 d!201973))

(declare-fun m!832209 () Bool)

(assert (=> bs!69306 m!832209))

(assert (=> b!574711 d!201973))

(declare-fun b!575104 () Bool)

(declare-fun e!347535 () Option!1445)

(assert (=> b!575104 (= e!347535 None!1444)))

(declare-fun b!575105 () Bool)

(declare-fun lt!243233 () tuple2!6638)

(assert (=> b!575105 (= e!347535 (Some!1444 (tuple2!6635 (Token!1925 (apply!1359 (transformation!1094 (rule!1840 token!491)) (seqFromList!1282 (_1!3583 lt!243233))) (rule!1840 token!491) (size!4502 (seqFromList!1282 (_1!3583 lt!243233))) (_1!3583 lt!243233)) (_2!3583 lt!243233))))))

(declare-fun lt!243235 () Unit!10186)

(assert (=> b!575105 (= lt!243235 (longestMatchIsAcceptedByMatchOrIsEmpty!150 (regex!1094 (rule!1840 token!491)) lt!242974))))

(declare-fun res!247104 () Bool)

(assert (=> b!575105 (= res!247104 (isEmpty!4079 (_1!3583 (findLongestMatchInner!166 (regex!1094 (rule!1840 token!491)) Nil!5649 (size!4499 Nil!5649) lt!242974 lt!242974 (size!4499 lt!242974)))))))

(declare-fun e!347536 () Bool)

(assert (=> b!575105 (=> res!247104 e!347536)))

(assert (=> b!575105 e!347536))

(declare-fun lt!243232 () Unit!10186)

(assert (=> b!575105 (= lt!243232 lt!243235)))

(declare-fun lt!243236 () Unit!10186)

(assert (=> b!575105 (= lt!243236 (lemmaSemiInverse!197 (transformation!1094 (rule!1840 token!491)) (seqFromList!1282 (_1!3583 lt!243233))))))

(declare-fun b!575106 () Bool)

(declare-fun e!347534 () Bool)

(declare-fun e!347533 () Bool)

(assert (=> b!575106 (= e!347534 e!347533)))

(declare-fun res!247101 () Bool)

(assert (=> b!575106 (=> (not res!247101) (not e!347533))))

(declare-fun lt!243234 () Option!1445)

(assert (=> b!575106 (= res!247101 (matchR!575 (regex!1094 (rule!1840 token!491)) (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243234))))))))

(declare-fun d!201975 () Bool)

(assert (=> d!201975 e!347534))

(declare-fun res!247102 () Bool)

(assert (=> d!201975 (=> res!247102 e!347534)))

(assert (=> d!201975 (= res!247102 (isEmpty!4083 lt!243234))))

(assert (=> d!201975 (= lt!243234 e!347535)))

(declare-fun c!107772 () Bool)

(assert (=> d!201975 (= c!107772 (isEmpty!4079 (_1!3583 lt!243233)))))

(assert (=> d!201975 (= lt!243233 (findLongestMatch!145 (regex!1094 (rule!1840 token!491)) lt!242974))))

(assert (=> d!201975 (ruleValid!304 thiss!22590 (rule!1840 token!491))))

(assert (=> d!201975 (= (maxPrefixOneRule!379 thiss!22590 (rule!1840 token!491) lt!242974) lt!243234)))

(declare-fun b!575107 () Bool)

(assert (=> b!575107 (= e!347536 (matchR!575 (regex!1094 (rule!1840 token!491)) (_1!3583 (findLongestMatchInner!166 (regex!1094 (rule!1840 token!491)) Nil!5649 (size!4499 Nil!5649) lt!242974 lt!242974 (size!4499 lt!242974)))))))

(declare-fun b!575108 () Bool)

(declare-fun res!247103 () Bool)

(assert (=> b!575108 (=> (not res!247103) (not e!347533))))

(assert (=> b!575108 (= res!247103 (= (value!36047 (_1!3581 (get!2156 lt!243234))) (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (get!2156 lt!243234)))) (seqFromList!1282 (originalCharacters!1133 (_1!3581 (get!2156 lt!243234)))))))))

(declare-fun b!575109 () Bool)

(declare-fun res!247105 () Bool)

(assert (=> b!575109 (=> (not res!247105) (not e!347533))))

(assert (=> b!575109 (= res!247105 (< (size!4499 (_2!3581 (get!2156 lt!243234))) (size!4499 lt!242974)))))

(declare-fun b!575110 () Bool)

(declare-fun res!247106 () Bool)

(assert (=> b!575110 (=> (not res!247106) (not e!347533))))

(assert (=> b!575110 (= res!247106 (= (++!1582 (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243234)))) (_2!3581 (get!2156 lt!243234))) lt!242974))))

(declare-fun b!575111 () Bool)

(declare-fun res!247100 () Bool)

(assert (=> b!575111 (=> (not res!247100) (not e!347533))))

(assert (=> b!575111 (= res!247100 (= (rule!1840 (_1!3581 (get!2156 lt!243234))) (rule!1840 token!491)))))

(declare-fun b!575112 () Bool)

(assert (=> b!575112 (= e!347533 (= (size!4498 (_1!3581 (get!2156 lt!243234))) (size!4499 (originalCharacters!1133 (_1!3581 (get!2156 lt!243234))))))))

(assert (= (and d!201975 c!107772) b!575104))

(assert (= (and d!201975 (not c!107772)) b!575105))

(assert (= (and b!575105 (not res!247104)) b!575107))

(assert (= (and d!201975 (not res!247102)) b!575106))

(assert (= (and b!575106 res!247101) b!575110))

(assert (= (and b!575110 res!247106) b!575109))

(assert (= (and b!575109 res!247105) b!575111))

(assert (= (and b!575111 res!247100) b!575108))

(assert (= (and b!575108 res!247103) b!575112))

(declare-fun m!832211 () Bool)

(assert (=> b!575108 m!832211))

(declare-fun m!832213 () Bool)

(assert (=> b!575108 m!832213))

(assert (=> b!575108 m!832213))

(declare-fun m!832215 () Bool)

(assert (=> b!575108 m!832215))

(assert (=> b!575107 m!832167))

(assert (=> b!575107 m!831829))

(assert (=> b!575107 m!832167))

(assert (=> b!575107 m!831829))

(declare-fun m!832217 () Bool)

(assert (=> b!575107 m!832217))

(declare-fun m!832219 () Bool)

(assert (=> b!575107 m!832219))

(assert (=> b!575106 m!832211))

(declare-fun m!832221 () Bool)

(assert (=> b!575106 m!832221))

(assert (=> b!575106 m!832221))

(declare-fun m!832223 () Bool)

(assert (=> b!575106 m!832223))

(assert (=> b!575106 m!832223))

(declare-fun m!832225 () Bool)

(assert (=> b!575106 m!832225))

(assert (=> b!575109 m!832211))

(declare-fun m!832227 () Bool)

(assert (=> b!575109 m!832227))

(assert (=> b!575109 m!831829))

(assert (=> b!575112 m!832211))

(declare-fun m!832229 () Bool)

(assert (=> b!575112 m!832229))

(declare-fun m!832231 () Bool)

(assert (=> b!575105 m!832231))

(declare-fun m!832233 () Bool)

(assert (=> b!575105 m!832233))

(assert (=> b!575105 m!832167))

(assert (=> b!575105 m!831829))

(assert (=> b!575105 m!832217))

(declare-fun m!832235 () Bool)

(assert (=> b!575105 m!832235))

(assert (=> b!575105 m!832231))

(declare-fun m!832237 () Bool)

(assert (=> b!575105 m!832237))

(assert (=> b!575105 m!832167))

(declare-fun m!832239 () Bool)

(assert (=> b!575105 m!832239))

(assert (=> b!575105 m!832231))

(assert (=> b!575105 m!832231))

(declare-fun m!832241 () Bool)

(assert (=> b!575105 m!832241))

(assert (=> b!575105 m!831829))

(assert (=> b!575111 m!832211))

(assert (=> b!575110 m!832211))

(assert (=> b!575110 m!832221))

(assert (=> b!575110 m!832221))

(assert (=> b!575110 m!832223))

(assert (=> b!575110 m!832223))

(declare-fun m!832243 () Bool)

(assert (=> b!575110 m!832243))

(declare-fun m!832245 () Bool)

(assert (=> d!201975 m!832245))

(declare-fun m!832247 () Bool)

(assert (=> d!201975 m!832247))

(declare-fun m!832249 () Bool)

(assert (=> d!201975 m!832249))

(assert (=> d!201975 m!831593))

(assert (=> b!574711 d!201975))

(declare-fun d!201977 () Bool)

(assert (=> d!201977 (= (maxPrefixOneRule!379 thiss!22590 (rule!1840 token!491) lt!242974) (Some!1444 (tuple2!6635 (Token!1925 (apply!1359 (transformation!1094 (rule!1840 token!491)) (seqFromList!1282 lt!242976)) (rule!1840 token!491) (size!4499 lt!242976) lt!242976) suffix!1342)))))

(declare-fun lt!243237 () Unit!10186)

(assert (=> d!201977 (= lt!243237 (choose!4098 thiss!22590 rules!3103 lt!242976 lt!242974 suffix!1342 (rule!1840 token!491)))))

(assert (=> d!201977 (not (isEmpty!4080 rules!3103))))

(assert (=> d!201977 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!129 thiss!22590 rules!3103 lt!242976 lt!242974 suffix!1342 (rule!1840 token!491)) lt!243237)))

(declare-fun bs!69307 () Bool)

(assert (= bs!69307 d!201977))

(declare-fun m!832251 () Bool)

(assert (=> bs!69307 m!832251))

(assert (=> bs!69307 m!831657))

(assert (=> bs!69307 m!831557))

(assert (=> bs!69307 m!831661))

(assert (=> bs!69307 m!831661))

(declare-fun m!832253 () Bool)

(assert (=> bs!69307 m!832253))

(assert (=> bs!69307 m!831621))

(assert (=> b!574711 d!201977))

(declare-fun bs!69308 () Bool)

(declare-fun d!201979 () Bool)

(assert (= bs!69308 (and d!201979 d!201901)))

(declare-fun lambda!15694 () Int)

(assert (=> bs!69308 (= (and (= (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (toChars!1812 (transformation!1094 (rule!1840 token!491)))) (= (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (toValue!1953 (transformation!1094 (rule!1840 token!491))))) (= lambda!15694 lambda!15693))))

(declare-fun b!575113 () Bool)

(declare-fun e!347537 () Bool)

(assert (=> b!575113 (= e!347537 true)))

(assert (=> d!201979 e!347537))

(assert (= d!201979 b!575113))

(assert (=> b!575113 (< (dynLambda!3267 order!4595 (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) (dynLambda!3268 order!4597 lambda!15694))))

(assert (=> b!575113 (< (dynLambda!3269 order!4599 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) (dynLambda!3268 order!4597 lambda!15694))))

(assert (=> d!201979 (= (list!2346 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) lt!242983))) (list!2346 lt!242983))))

(declare-fun lt!243238 () Unit!10186)

(assert (=> d!201979 (= lt!243238 (ForallOf!103 lambda!15694 lt!242983))))

(assert (=> d!201979 (= (lemmaSemiInverse!197 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) lt!242983) lt!243238)))

(declare-fun b_lambda!22393 () Bool)

(assert (=> (not b_lambda!22393) (not d!201979)))

(declare-fun tb!50147 () Bool)

(declare-fun t!77259 () Bool)

(assert (=> (and b!574710 (= (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77259) tb!50147))

(declare-fun b!575114 () Bool)

(declare-fun tp!180425 () Bool)

(declare-fun e!347538 () Bool)

(assert (=> b!575114 (= e!347538 (and (inv!7112 (c!107721 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) lt!242983)))) tp!180425))))

(declare-fun result!56122 () Bool)

(assert (=> tb!50147 (= result!56122 (and (inv!7113 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) lt!242983))) e!347538))))

(assert (= tb!50147 b!575114))

(declare-fun m!832255 () Bool)

(assert (=> b!575114 m!832255))

(declare-fun m!832257 () Bool)

(assert (=> tb!50147 m!832257))

(assert (=> d!201979 t!77259))

(declare-fun b_and!56267 () Bool)

(assert (= b_and!56255 (and (=> t!77259 result!56122) b_and!56267)))

(declare-fun tb!50149 () Bool)

(declare-fun t!77261 () Bool)

(assert (=> (and b!574698 (= (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77261) tb!50149))

(declare-fun result!56124 () Bool)

(assert (= result!56124 result!56122))

(assert (=> d!201979 t!77261))

(declare-fun b_and!56269 () Bool)

(assert (= b_and!56257 (and (=> t!77261 result!56124) b_and!56269)))

(declare-fun b_lambda!22395 () Bool)

(assert (=> (not b_lambda!22395) (not d!201979)))

(declare-fun t!77263 () Bool)

(declare-fun tb!50151 () Bool)

(assert (=> (and b!574710 (= (toValue!1953 (transformation!1094 (rule!1840 token!491))) (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77263) tb!50151))

(declare-fun result!56126 () Bool)

(assert (=> tb!50151 (= result!56126 (inv!21 (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) lt!242983)))))

(declare-fun m!832259 () Bool)

(assert (=> tb!50151 m!832259))

(assert (=> d!201979 t!77263))

(declare-fun b_and!56271 () Bool)

(assert (= b_and!56263 (and (=> t!77263 result!56126) b_and!56271)))

(declare-fun t!77265 () Bool)

(declare-fun tb!50153 () Bool)

(assert (=> (and b!574698 (= (toValue!1953 (transformation!1094 (h!11052 rules!3103))) (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77265) tb!50153))

(declare-fun result!56128 () Bool)

(assert (= result!56128 result!56126))

(assert (=> d!201979 t!77265))

(declare-fun b_and!56273 () Bool)

(assert (= b_and!56265 (and (=> t!77265 result!56128) b_and!56273)))

(declare-fun m!832261 () Bool)

(assert (=> d!201979 m!832261))

(declare-fun m!832263 () Bool)

(assert (=> d!201979 m!832263))

(assert (=> d!201979 m!832263))

(declare-fun m!832265 () Bool)

(assert (=> d!201979 m!832265))

(declare-fun m!832267 () Bool)

(assert (=> d!201979 m!832267))

(assert (=> d!201979 m!832261))

(declare-fun m!832269 () Bool)

(assert (=> d!201979 m!832269))

(assert (=> b!574711 d!201979))

(declare-fun d!201981 () Bool)

(declare-fun lt!243241 () Int)

(assert (=> d!201981 (>= lt!243241 0)))

(declare-fun e!347542 () Int)

(assert (=> d!201981 (= lt!243241 e!347542)))

(declare-fun c!107775 () Bool)

(assert (=> d!201981 (= c!107775 (is-Nil!5649 (originalCharacters!1133 (_1!3581 (v!16301 lt!242987)))))))

(assert (=> d!201981 (= (size!4499 (originalCharacters!1133 (_1!3581 (v!16301 lt!242987)))) lt!243241)))

(declare-fun b!575119 () Bool)

(assert (=> b!575119 (= e!347542 0)))

(declare-fun b!575120 () Bool)

(assert (=> b!575120 (= e!347542 (+ 1 (size!4499 (t!77228 (originalCharacters!1133 (_1!3581 (v!16301 lt!242987)))))))))

(assert (= (and d!201981 c!107775) b!575119))

(assert (= (and d!201981 (not c!107775)) b!575120))

(declare-fun m!832271 () Bool)

(assert (=> b!575120 m!832271))

(assert (=> b!574712 d!201981))

(declare-fun b!575121 () Bool)

(declare-fun res!247108 () Bool)

(declare-fun e!347544 () Bool)

(assert (=> b!575121 (=> (not res!247108) (not e!347544))))

(declare-fun lt!243244 () Option!1445)

(assert (=> b!575121 (= res!247108 (< (size!4499 (_2!3581 (get!2156 lt!243244))) (size!4499 input!2705)))))

(declare-fun b!575122 () Bool)

(declare-fun e!347545 () Option!1445)

(declare-fun call!39806 () Option!1445)

(assert (=> b!575122 (= e!347545 call!39806)))

(declare-fun b!575123 () Bool)

(declare-fun res!247109 () Bool)

(assert (=> b!575123 (=> (not res!247109) (not e!347544))))

(assert (=> b!575123 (= res!247109 (matchR!575 (regex!1094 (rule!1840 (_1!3581 (get!2156 lt!243244)))) (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243244))))))))

(declare-fun b!575124 () Bool)

(declare-fun lt!243243 () Option!1445)

(declare-fun lt!243242 () Option!1445)

(assert (=> b!575124 (= e!347545 (ite (and (is-None!1444 lt!243243) (is-None!1444 lt!243242)) None!1444 (ite (is-None!1444 lt!243242) lt!243243 (ite (is-None!1444 lt!243243) lt!243242 (ite (>= (size!4498 (_1!3581 (v!16301 lt!243243))) (size!4498 (_1!3581 (v!16301 lt!243242)))) lt!243243 lt!243242)))))))

(assert (=> b!575124 (= lt!243243 call!39806)))

(assert (=> b!575124 (= lt!243242 (maxPrefix!678 thiss!22590 (t!77230 rules!3103) input!2705))))

(declare-fun b!575125 () Bool)

(declare-fun res!247111 () Bool)

(assert (=> b!575125 (=> (not res!247111) (not e!347544))))

(assert (=> b!575125 (= res!247111 (= (++!1582 (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243244)))) (_2!3581 (get!2156 lt!243244))) input!2705))))

(declare-fun b!575126 () Bool)

(declare-fun res!247113 () Bool)

(assert (=> b!575126 (=> (not res!247113) (not e!347544))))

(assert (=> b!575126 (= res!247113 (= (value!36047 (_1!3581 (get!2156 lt!243244))) (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (get!2156 lt!243244)))) (seqFromList!1282 (originalCharacters!1133 (_1!3581 (get!2156 lt!243244)))))))))

(declare-fun d!201983 () Bool)

(declare-fun e!347543 () Bool)

(assert (=> d!201983 e!347543))

(declare-fun res!247110 () Bool)

(assert (=> d!201983 (=> res!247110 e!347543)))

(assert (=> d!201983 (= res!247110 (isEmpty!4083 lt!243244))))

(assert (=> d!201983 (= lt!243244 e!347545)))

(declare-fun c!107776 () Bool)

(assert (=> d!201983 (= c!107776 (and (is-Cons!5651 rules!3103) (is-Nil!5651 (t!77230 rules!3103))))))

(declare-fun lt!243245 () Unit!10186)

(declare-fun lt!243246 () Unit!10186)

(assert (=> d!201983 (= lt!243245 lt!243246)))

(assert (=> d!201983 (isPrefix!728 input!2705 input!2705)))

(assert (=> d!201983 (= lt!243246 (lemmaIsPrefixRefl!466 input!2705 input!2705))))

(assert (=> d!201983 (rulesValidInductive!389 thiss!22590 rules!3103)))

(assert (=> d!201983 (= (maxPrefix!678 thiss!22590 rules!3103 input!2705) lt!243244)))

(declare-fun b!575127 () Bool)

(assert (=> b!575127 (= e!347544 (contains!1324 rules!3103 (rule!1840 (_1!3581 (get!2156 lt!243244)))))))

(declare-fun bm!39801 () Bool)

(assert (=> bm!39801 (= call!39806 (maxPrefixOneRule!379 thiss!22590 (h!11052 rules!3103) input!2705))))

(declare-fun b!575128 () Bool)

(declare-fun res!247107 () Bool)

(assert (=> b!575128 (=> (not res!247107) (not e!347544))))

(assert (=> b!575128 (= res!247107 (= (list!2346 (charsOf!723 (_1!3581 (get!2156 lt!243244)))) (originalCharacters!1133 (_1!3581 (get!2156 lt!243244)))))))

(declare-fun b!575129 () Bool)

(assert (=> b!575129 (= e!347543 e!347544)))

(declare-fun res!247112 () Bool)

(assert (=> b!575129 (=> (not res!247112) (not e!347544))))

(assert (=> b!575129 (= res!247112 (isDefined!1256 lt!243244))))

(assert (= (and d!201983 c!107776) b!575122))

(assert (= (and d!201983 (not c!107776)) b!575124))

(assert (= (or b!575122 b!575124) bm!39801))

(assert (= (and d!201983 (not res!247110)) b!575129))

(assert (= (and b!575129 res!247112) b!575128))

(assert (= (and b!575128 res!247107) b!575121))

(assert (= (and b!575121 res!247108) b!575125))

(assert (= (and b!575125 res!247111) b!575126))

(assert (= (and b!575126 res!247113) b!575123))

(assert (= (and b!575123 res!247109) b!575127))

(declare-fun m!832273 () Bool)

(assert (=> b!575121 m!832273))

(declare-fun m!832275 () Bool)

(assert (=> b!575121 m!832275))

(assert (=> b!575121 m!831865))

(declare-fun m!832277 () Bool)

(assert (=> d!201983 m!832277))

(assert (=> d!201983 m!831619))

(assert (=> d!201983 m!831587))

(assert (=> d!201983 m!831837))

(declare-fun m!832279 () Bool)

(assert (=> b!575124 m!832279))

(assert (=> b!575127 m!832273))

(declare-fun m!832281 () Bool)

(assert (=> b!575127 m!832281))

(assert (=> b!575125 m!832273))

(declare-fun m!832283 () Bool)

(assert (=> b!575125 m!832283))

(assert (=> b!575125 m!832283))

(declare-fun m!832285 () Bool)

(assert (=> b!575125 m!832285))

(assert (=> b!575125 m!832285))

(declare-fun m!832287 () Bool)

(assert (=> b!575125 m!832287))

(assert (=> b!575128 m!832273))

(assert (=> b!575128 m!832283))

(assert (=> b!575128 m!832283))

(assert (=> b!575128 m!832285))

(declare-fun m!832289 () Bool)

(assert (=> b!575129 m!832289))

(assert (=> b!575126 m!832273))

(declare-fun m!832291 () Bool)

(assert (=> b!575126 m!832291))

(assert (=> b!575126 m!832291))

(declare-fun m!832293 () Bool)

(assert (=> b!575126 m!832293))

(declare-fun m!832295 () Bool)

(assert (=> bm!39801 m!832295))

(assert (=> b!575123 m!832273))

(assert (=> b!575123 m!832283))

(assert (=> b!575123 m!832283))

(assert (=> b!575123 m!832285))

(assert (=> b!575123 m!832285))

(declare-fun m!832297 () Bool)

(assert (=> b!575123 m!832297))

(assert (=> b!574699 d!201983))

(declare-fun d!201985 () Bool)

(declare-fun lt!243247 () Int)

(assert (=> d!201985 (>= lt!243247 0)))

(declare-fun e!347546 () Int)

(assert (=> d!201985 (= lt!243247 e!347546)))

(declare-fun c!107777 () Bool)

(assert (=> d!201985 (= c!107777 (is-Nil!5649 lt!242973))))

(assert (=> d!201985 (= (size!4499 lt!242973) lt!243247)))

(declare-fun b!575130 () Bool)

(assert (=> b!575130 (= e!347546 0)))

(declare-fun b!575131 () Bool)

(assert (=> b!575131 (= e!347546 (+ 1 (size!4499 (t!77228 lt!242973))))))

(assert (= (and d!201985 c!107777) b!575130))

(assert (= (and d!201985 (not c!107777)) b!575131))

(declare-fun m!832299 () Bool)

(assert (=> b!575131 m!832299))

(assert (=> b!574700 d!201985))

(declare-fun d!201987 () Bool)

(assert (=> d!201987 (= (seqFromList!1282 lt!242973) (fromListB!556 lt!242973))))

(declare-fun bs!69309 () Bool)

(assert (= bs!69309 d!201987))

(declare-fun m!832301 () Bool)

(assert (=> bs!69309 m!832301))

(assert (=> b!574700 d!201987))

(declare-fun d!201989 () Bool)

(assert (=> d!201989 (ruleValid!304 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))))))

(declare-fun lt!243250 () Unit!10186)

(declare-fun choose!4100 (LexerInterface!980 Rule!1988 List!5661) Unit!10186)

(assert (=> d!201989 (= lt!243250 (choose!4100 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))) rules!3103))))

(assert (=> d!201989 (contains!1324 rules!3103 (rule!1840 (_1!3581 (v!16301 lt!242987))))))

(assert (=> d!201989 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!161 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987))) rules!3103) lt!243250)))

(declare-fun bs!69310 () Bool)

(assert (= bs!69310 d!201989))

(assert (=> bs!69310 m!831569))

(declare-fun m!832303 () Bool)

(assert (=> bs!69310 m!832303))

(assert (=> bs!69310 m!831649))

(assert (=> b!574700 d!201989))

(declare-fun d!201991 () Bool)

(assert (=> d!201991 (= (list!2346 (charsOf!723 (_1!3581 (v!16301 lt!242987)))) (list!2348 (c!107721 (charsOf!723 (_1!3581 (v!16301 lt!242987))))))))

(declare-fun bs!69311 () Bool)

(assert (= bs!69311 d!201991))

(declare-fun m!832305 () Bool)

(assert (=> bs!69311 m!832305))

(assert (=> b!574700 d!201991))

(declare-fun b!575142 () Bool)

(declare-fun e!347554 () Bool)

(assert (=> b!575142 (= e!347554 (isPrefix!728 (tail!748 input!2705) (tail!748 lt!242974)))))

(declare-fun b!575143 () Bool)

(declare-fun e!347553 () Bool)

(assert (=> b!575143 (= e!347553 (>= (size!4499 lt!242974) (size!4499 input!2705)))))

(declare-fun b!575141 () Bool)

(declare-fun res!247122 () Bool)

(assert (=> b!575141 (=> (not res!247122) (not e!347554))))

(declare-fun head!1219 (List!5659) C!3778)

(assert (=> b!575141 (= res!247122 (= (head!1219 input!2705) (head!1219 lt!242974)))))

(declare-fun b!575140 () Bool)

(declare-fun e!347555 () Bool)

(assert (=> b!575140 (= e!347555 e!347554)))

(declare-fun res!247124 () Bool)

(assert (=> b!575140 (=> (not res!247124) (not e!347554))))

(assert (=> b!575140 (= res!247124 (not (is-Nil!5649 lt!242974)))))

(declare-fun d!201993 () Bool)

(assert (=> d!201993 e!347553))

(declare-fun res!247123 () Bool)

(assert (=> d!201993 (=> res!247123 e!347553)))

(declare-fun lt!243253 () Bool)

(assert (=> d!201993 (= res!247123 (not lt!243253))))

(assert (=> d!201993 (= lt!243253 e!347555)))

(declare-fun res!247125 () Bool)

(assert (=> d!201993 (=> res!247125 e!347555)))

(assert (=> d!201993 (= res!247125 (is-Nil!5649 input!2705))))

(assert (=> d!201993 (= (isPrefix!728 input!2705 lt!242974) lt!243253)))

(assert (= (and d!201993 (not res!247125)) b!575140))

(assert (= (and b!575140 res!247124) b!575141))

(assert (= (and b!575141 res!247122) b!575142))

(assert (= (and d!201993 (not res!247123)) b!575143))

(declare-fun m!832307 () Bool)

(assert (=> b!575142 m!832307))

(assert (=> b!575142 m!832205))

(assert (=> b!575142 m!832307))

(assert (=> b!575142 m!832205))

(declare-fun m!832309 () Bool)

(assert (=> b!575142 m!832309))

(assert (=> b!575143 m!831829))

(assert (=> b!575143 m!831865))

(declare-fun m!832311 () Bool)

(assert (=> b!575141 m!832311))

(declare-fun m!832313 () Bool)

(assert (=> b!575141 m!832313))

(assert (=> b!574700 d!201993))

(declare-fun d!201995 () Bool)

(assert (=> d!201995 (and (= lt!242976 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!243256 () Unit!10186)

(declare-fun choose!4102 (List!5659 List!5659 List!5659 List!5659) Unit!10186)

(assert (=> d!201995 (= lt!243256 (choose!4102 lt!242976 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!201995 (= (++!1582 lt!242976 suffix!1342) (++!1582 input!2705 suffix!1342))))

(assert (=> d!201995 (= (lemmaConcatSameAndSameSizesThenSameLists!171 lt!242976 suffix!1342 input!2705 suffix!1342) lt!243256)))

(declare-fun bs!69312 () Bool)

(assert (= bs!69312 d!201995))

(declare-fun m!832315 () Bool)

(assert (=> bs!69312 m!832315))

(assert (=> bs!69312 m!831567))

(assert (=> bs!69312 m!831631))

(assert (=> b!574700 d!201995))

(declare-fun d!201997 () Bool)

(declare-fun lt!243257 () List!5659)

(assert (=> d!201997 (= (++!1582 lt!242973 lt!243257) input!2705)))

(declare-fun e!347556 () List!5659)

(assert (=> d!201997 (= lt!243257 e!347556)))

(declare-fun c!107778 () Bool)

(assert (=> d!201997 (= c!107778 (is-Cons!5649 lt!242973))))

(assert (=> d!201997 (>= (size!4499 input!2705) (size!4499 lt!242973))))

(assert (=> d!201997 (= (getSuffix!247 input!2705 lt!242973) lt!243257)))

(declare-fun b!575144 () Bool)

(assert (=> b!575144 (= e!347556 (getSuffix!247 (tail!748 input!2705) (t!77228 lt!242973)))))

(declare-fun b!575145 () Bool)

(assert (=> b!575145 (= e!347556 input!2705)))

(assert (= (and d!201997 c!107778) b!575144))

(assert (= (and d!201997 (not c!107778)) b!575145))

(declare-fun m!832317 () Bool)

(assert (=> d!201997 m!832317))

(assert (=> d!201997 m!831865))

(assert (=> d!201997 m!831603))

(assert (=> b!575144 m!832307))

(assert (=> b!575144 m!832307))

(declare-fun m!832319 () Bool)

(assert (=> b!575144 m!832319))

(assert (=> b!574700 d!201997))

(declare-fun d!201999 () Bool)

(assert (=> d!201999 (= (_2!3581 (v!16301 lt!242987)) lt!242967)))

(declare-fun lt!243258 () Unit!10186)

(assert (=> d!201999 (= lt!243258 (choose!4099 lt!242973 (_2!3581 (v!16301 lt!242987)) lt!242973 lt!242967 input!2705))))

(assert (=> d!201999 (isPrefix!728 lt!242973 input!2705)))

(assert (=> d!201999 (= (lemmaSamePrefixThenSameSuffix!451 lt!242973 (_2!3581 (v!16301 lt!242987)) lt!242973 lt!242967 input!2705) lt!243258)))

(declare-fun bs!69313 () Bool)

(assert (= bs!69313 d!201999))

(declare-fun m!832321 () Bool)

(assert (=> bs!69313 m!832321))

(declare-fun m!832323 () Bool)

(assert (=> bs!69313 m!832323))

(assert (=> b!574700 d!201999))

(declare-fun d!202001 () Bool)

(declare-fun res!247130 () Bool)

(declare-fun e!347559 () Bool)

(assert (=> d!202001 (=> (not res!247130) (not e!347559))))

(declare-fun validRegex!477 (Regex!1428) Bool)

(assert (=> d!202001 (= res!247130 (validRegex!477 (regex!1094 (rule!1840 token!491))))))

(assert (=> d!202001 (= (ruleValid!304 thiss!22590 (rule!1840 token!491)) e!347559)))

(declare-fun b!575150 () Bool)

(declare-fun res!247131 () Bool)

(assert (=> b!575150 (=> (not res!247131) (not e!347559))))

(declare-fun nullable!382 (Regex!1428) Bool)

(assert (=> b!575150 (= res!247131 (not (nullable!382 (regex!1094 (rule!1840 token!491)))))))

(declare-fun b!575151 () Bool)

(assert (=> b!575151 (= e!347559 (not (= (tag!1356 (rule!1840 token!491)) (String!7337 ""))))))

(assert (= (and d!202001 res!247130) b!575150))

(assert (= (and b!575150 res!247131) b!575151))

(declare-fun m!832325 () Bool)

(assert (=> d!202001 m!832325))

(declare-fun m!832327 () Bool)

(assert (=> b!575150 m!832327))

(assert (=> b!574700 d!202001))

(declare-fun b!575155 () Bool)

(declare-fun e!347560 () Bool)

(declare-fun lt!243259 () List!5659)

(assert (=> b!575155 (= e!347560 (or (not (= (_2!3581 (v!16301 lt!242987)) Nil!5649)) (= lt!243259 lt!242973)))))

(declare-fun b!575154 () Bool)

(declare-fun res!247133 () Bool)

(assert (=> b!575154 (=> (not res!247133) (not e!347560))))

(assert (=> b!575154 (= res!247133 (= (size!4499 lt!243259) (+ (size!4499 lt!242973) (size!4499 (_2!3581 (v!16301 lt!242987))))))))

(declare-fun b!575152 () Bool)

(declare-fun e!347561 () List!5659)

(assert (=> b!575152 (= e!347561 (_2!3581 (v!16301 lt!242987)))))

(declare-fun d!202003 () Bool)

(assert (=> d!202003 e!347560))

(declare-fun res!247132 () Bool)

(assert (=> d!202003 (=> (not res!247132) (not e!347560))))

(assert (=> d!202003 (= res!247132 (= (content!993 lt!243259) (set.union (content!993 lt!242973) (content!993 (_2!3581 (v!16301 lt!242987))))))))

(assert (=> d!202003 (= lt!243259 e!347561)))

(declare-fun c!107779 () Bool)

(assert (=> d!202003 (= c!107779 (is-Nil!5649 lt!242973))))

(assert (=> d!202003 (= (++!1582 lt!242973 (_2!3581 (v!16301 lt!242987))) lt!243259)))

(declare-fun b!575153 () Bool)

(assert (=> b!575153 (= e!347561 (Cons!5649 (h!11050 lt!242973) (++!1582 (t!77228 lt!242973) (_2!3581 (v!16301 lt!242987)))))))

(assert (= (and d!202003 c!107779) b!575152))

(assert (= (and d!202003 (not c!107779)) b!575153))

(assert (= (and d!202003 res!247132) b!575154))

(assert (= (and b!575154 res!247133) b!575155))

(declare-fun m!832329 () Bool)

(assert (=> b!575154 m!832329))

(assert (=> b!575154 m!831603))

(declare-fun m!832331 () Bool)

(assert (=> b!575154 m!832331))

(declare-fun m!832333 () Bool)

(assert (=> d!202003 m!832333))

(declare-fun m!832335 () Bool)

(assert (=> d!202003 m!832335))

(declare-fun m!832337 () Bool)

(assert (=> d!202003 m!832337))

(declare-fun m!832339 () Bool)

(assert (=> b!575153 m!832339))

(assert (=> b!574700 d!202003))

(declare-fun d!202005 () Bool)

(assert (=> d!202005 (= (size!4498 (_1!3581 (v!16301 lt!242987))) (size!4499 (originalCharacters!1133 (_1!3581 (v!16301 lt!242987)))))))

(declare-fun Unit!10199 () Unit!10186)

(assert (=> d!202005 (= (lemmaCharactersSize!161 (_1!3581 (v!16301 lt!242987))) Unit!10199)))

(declare-fun bs!69314 () Bool)

(assert (= bs!69314 d!202005))

(assert (=> bs!69314 m!831555))

(assert (=> b!574700 d!202005))

(declare-fun d!202007 () Bool)

(assert (=> d!202007 (= (apply!1359 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))) lt!242983) (dynLambda!3270 (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) lt!242983))))

(declare-fun b_lambda!22397 () Bool)

(assert (=> (not b_lambda!22397) (not d!202007)))

(assert (=> d!202007 t!77263))

(declare-fun b_and!56275 () Bool)

(assert (= b_and!56271 (and (=> t!77263 result!56126) b_and!56275)))

(assert (=> d!202007 t!77265))

(declare-fun b_and!56277 () Bool)

(assert (= b_and!56273 (and (=> t!77265 result!56128) b_and!56277)))

(assert (=> d!202007 m!832261))

(assert (=> b!574700 d!202007))

(declare-fun d!202009 () Bool)

(assert (=> d!202009 (isPrefix!728 input!2705 input!2705)))

(declare-fun lt!243262 () Unit!10186)

(declare-fun choose!4103 (List!5659 List!5659) Unit!10186)

(assert (=> d!202009 (= lt!243262 (choose!4103 input!2705 input!2705))))

(assert (=> d!202009 (= (lemmaIsPrefixRefl!466 input!2705 input!2705) lt!243262)))

(declare-fun bs!69315 () Bool)

(assert (= bs!69315 d!202009))

(assert (=> bs!69315 m!831619))

(declare-fun m!832341 () Bool)

(assert (=> bs!69315 m!832341))

(assert (=> b!574700 d!202009))

(declare-fun b!575158 () Bool)

(declare-fun e!347563 () Bool)

(assert (=> b!575158 (= e!347563 (isPrefix!728 (tail!748 lt!242973) (tail!748 lt!242953)))))

(declare-fun b!575159 () Bool)

(declare-fun e!347562 () Bool)

(assert (=> b!575159 (= e!347562 (>= (size!4499 lt!242953) (size!4499 lt!242973)))))

(declare-fun b!575157 () Bool)

(declare-fun res!247134 () Bool)

(assert (=> b!575157 (=> (not res!247134) (not e!347563))))

(assert (=> b!575157 (= res!247134 (= (head!1219 lt!242973) (head!1219 lt!242953)))))

(declare-fun b!575156 () Bool)

(declare-fun e!347564 () Bool)

(assert (=> b!575156 (= e!347564 e!347563)))

(declare-fun res!247136 () Bool)

(assert (=> b!575156 (=> (not res!247136) (not e!347563))))

(assert (=> b!575156 (= res!247136 (not (is-Nil!5649 lt!242953)))))

(declare-fun d!202011 () Bool)

(assert (=> d!202011 e!347562))

(declare-fun res!247135 () Bool)

(assert (=> d!202011 (=> res!247135 e!347562)))

(declare-fun lt!243263 () Bool)

(assert (=> d!202011 (= res!247135 (not lt!243263))))

(assert (=> d!202011 (= lt!243263 e!347564)))

(declare-fun res!247137 () Bool)

(assert (=> d!202011 (=> res!247137 e!347564)))

(assert (=> d!202011 (= res!247137 (is-Nil!5649 lt!242973))))

(assert (=> d!202011 (= (isPrefix!728 lt!242973 lt!242953) lt!243263)))

(assert (= (and d!202011 (not res!247137)) b!575156))

(assert (= (and b!575156 res!247136) b!575157))

(assert (= (and b!575157 res!247134) b!575158))

(assert (= (and d!202011 (not res!247135)) b!575159))

(declare-fun m!832343 () Bool)

(assert (=> b!575158 m!832343))

(declare-fun m!832345 () Bool)

(assert (=> b!575158 m!832345))

(assert (=> b!575158 m!832343))

(assert (=> b!575158 m!832345))

(declare-fun m!832347 () Bool)

(assert (=> b!575158 m!832347))

(declare-fun m!832349 () Bool)

(assert (=> b!575159 m!832349))

(assert (=> b!575159 m!831603))

(declare-fun m!832351 () Bool)

(assert (=> b!575157 m!832351))

(declare-fun m!832353 () Bool)

(assert (=> b!575157 m!832353))

(assert (=> b!574700 d!202011))

(declare-fun b!575162 () Bool)

(declare-fun e!347566 () Bool)

(assert (=> b!575162 (= e!347566 (isPrefix!728 (tail!748 lt!242976) (tail!748 lt!242955)))))

(declare-fun b!575163 () Bool)

(declare-fun e!347565 () Bool)

(assert (=> b!575163 (= e!347565 (>= (size!4499 lt!242955) (size!4499 lt!242976)))))

(declare-fun b!575161 () Bool)

(declare-fun res!247138 () Bool)

(assert (=> b!575161 (=> (not res!247138) (not e!347566))))

(assert (=> b!575161 (= res!247138 (= (head!1219 lt!242976) (head!1219 lt!242955)))))

(declare-fun b!575160 () Bool)

(declare-fun e!347567 () Bool)

(assert (=> b!575160 (= e!347567 e!347566)))

(declare-fun res!247140 () Bool)

(assert (=> b!575160 (=> (not res!247140) (not e!347566))))

(assert (=> b!575160 (= res!247140 (not (is-Nil!5649 lt!242955)))))

(declare-fun d!202013 () Bool)

(assert (=> d!202013 e!347565))

(declare-fun res!247139 () Bool)

(assert (=> d!202013 (=> res!247139 e!347565)))

(declare-fun lt!243264 () Bool)

(assert (=> d!202013 (= res!247139 (not lt!243264))))

(assert (=> d!202013 (= lt!243264 e!347567)))

(declare-fun res!247141 () Bool)

(assert (=> d!202013 (=> res!247141 e!347567)))

(assert (=> d!202013 (= res!247141 (is-Nil!5649 lt!242976))))

(assert (=> d!202013 (= (isPrefix!728 lt!242976 lt!242955) lt!243264)))

(assert (= (and d!202013 (not res!247141)) b!575160))

(assert (= (and b!575160 res!247140) b!575161))

(assert (= (and b!575161 res!247138) b!575162))

(assert (= (and d!202013 (not res!247139)) b!575163))

(declare-fun m!832355 () Bool)

(assert (=> b!575162 m!832355))

(declare-fun m!832357 () Bool)

(assert (=> b!575162 m!832357))

(assert (=> b!575162 m!832355))

(assert (=> b!575162 m!832357))

(declare-fun m!832359 () Bool)

(assert (=> b!575162 m!832359))

(declare-fun m!832361 () Bool)

(assert (=> b!575163 m!832361))

(assert (=> b!575163 m!831621))

(declare-fun m!832363 () Bool)

(assert (=> b!575161 m!832363))

(declare-fun m!832365 () Bool)

(assert (=> b!575161 m!832365))

(assert (=> b!574700 d!202013))

(declare-fun d!202015 () Bool)

(declare-fun res!247142 () Bool)

(declare-fun e!347568 () Bool)

(assert (=> d!202015 (=> (not res!247142) (not e!347568))))

(assert (=> d!202015 (= res!247142 (validRegex!477 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))))))

(assert (=> d!202015 (= (ruleValid!304 thiss!22590 (rule!1840 (_1!3581 (v!16301 lt!242987)))) e!347568)))

(declare-fun b!575164 () Bool)

(declare-fun res!247143 () Bool)

(assert (=> b!575164 (=> (not res!247143) (not e!347568))))

(assert (=> b!575164 (= res!247143 (not (nullable!382 (regex!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))))))

(declare-fun b!575165 () Bool)

(assert (=> b!575165 (= e!347568 (not (= (tag!1356 (rule!1840 (_1!3581 (v!16301 lt!242987)))) (String!7337 ""))))))

(assert (= (and d!202015 res!247142) b!575164))

(assert (= (and b!575164 res!247143) b!575165))

(declare-fun m!832367 () Bool)

(assert (=> d!202015 m!832367))

(declare-fun m!832369 () Bool)

(assert (=> b!575164 m!832369))

(assert (=> b!574700 d!202015))

(declare-fun d!202017 () Bool)

(assert (=> d!202017 (isPrefix!728 lt!242973 (++!1582 lt!242973 (_2!3581 (v!16301 lt!242987))))))

(declare-fun lt!243267 () Unit!10186)

(declare-fun choose!4104 (List!5659 List!5659) Unit!10186)

(assert (=> d!202017 (= lt!243267 (choose!4104 lt!242973 (_2!3581 (v!16301 lt!242987))))))

(assert (=> d!202017 (= (lemmaConcatTwoListThenFirstIsPrefix!575 lt!242973 (_2!3581 (v!16301 lt!242987))) lt!243267)))

(declare-fun bs!69316 () Bool)

(assert (= bs!69316 d!202017))

(assert (=> bs!69316 m!831583))

(assert (=> bs!69316 m!831583))

(declare-fun m!832371 () Bool)

(assert (=> bs!69316 m!832371))

(declare-fun m!832373 () Bool)

(assert (=> bs!69316 m!832373))

(assert (=> b!574700 d!202017))

(declare-fun b!575168 () Bool)

(declare-fun e!347570 () Bool)

(assert (=> b!575168 (= e!347570 (isPrefix!728 (tail!748 input!2705) (tail!748 input!2705)))))

(declare-fun b!575169 () Bool)

(declare-fun e!347569 () Bool)

(assert (=> b!575169 (= e!347569 (>= (size!4499 input!2705) (size!4499 input!2705)))))

(declare-fun b!575167 () Bool)

(declare-fun res!247144 () Bool)

(assert (=> b!575167 (=> (not res!247144) (not e!347570))))

(assert (=> b!575167 (= res!247144 (= (head!1219 input!2705) (head!1219 input!2705)))))

(declare-fun b!575166 () Bool)

(declare-fun e!347571 () Bool)

(assert (=> b!575166 (= e!347571 e!347570)))

(declare-fun res!247146 () Bool)

(assert (=> b!575166 (=> (not res!247146) (not e!347570))))

(assert (=> b!575166 (= res!247146 (not (is-Nil!5649 input!2705)))))

(declare-fun d!202019 () Bool)

(assert (=> d!202019 e!347569))

(declare-fun res!247145 () Bool)

(assert (=> d!202019 (=> res!247145 e!347569)))

(declare-fun lt!243268 () Bool)

(assert (=> d!202019 (= res!247145 (not lt!243268))))

(assert (=> d!202019 (= lt!243268 e!347571)))

(declare-fun res!247147 () Bool)

(assert (=> d!202019 (=> res!247147 e!347571)))

(assert (=> d!202019 (= res!247147 (is-Nil!5649 input!2705))))

(assert (=> d!202019 (= (isPrefix!728 input!2705 input!2705) lt!243268)))

(assert (= (and d!202019 (not res!247147)) b!575166))

(assert (= (and b!575166 res!247146) b!575167))

(assert (= (and b!575167 res!247144) b!575168))

(assert (= (and d!202019 (not res!247145)) b!575169))

(assert (=> b!575168 m!832307))

(assert (=> b!575168 m!832307))

(assert (=> b!575168 m!832307))

(assert (=> b!575168 m!832307))

(declare-fun m!832375 () Bool)

(assert (=> b!575168 m!832375))

(assert (=> b!575169 m!831865))

(assert (=> b!575169 m!831865))

(assert (=> b!575167 m!832311))

(assert (=> b!575167 m!832311))

(assert (=> b!574700 d!202019))

(declare-fun d!202021 () Bool)

(assert (=> d!202021 (ruleValid!304 thiss!22590 (rule!1840 token!491))))

(declare-fun lt!243269 () Unit!10186)

(assert (=> d!202021 (= lt!243269 (choose!4100 thiss!22590 (rule!1840 token!491) rules!3103))))

(assert (=> d!202021 (contains!1324 rules!3103 (rule!1840 token!491))))

(assert (=> d!202021 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!161 thiss!22590 (rule!1840 token!491) rules!3103) lt!243269)))

(declare-fun bs!69317 () Bool)

(assert (= bs!69317 d!202021))

(assert (=> bs!69317 m!831593))

(declare-fun m!832377 () Bool)

(assert (=> bs!69317 m!832377))

(declare-fun m!832379 () Bool)

(assert (=> bs!69317 m!832379))

(assert (=> b!574700 d!202021))

(declare-fun d!202023 () Bool)

(assert (=> d!202023 (isPrefix!728 input!2705 (++!1582 input!2705 suffix!1342))))

(declare-fun lt!243270 () Unit!10186)

(assert (=> d!202023 (= lt!243270 (choose!4104 input!2705 suffix!1342))))

(assert (=> d!202023 (= (lemmaConcatTwoListThenFirstIsPrefix!575 input!2705 suffix!1342) lt!243270)))

(declare-fun bs!69318 () Bool)

(assert (= bs!69318 d!202023))

(assert (=> bs!69318 m!831631))

(assert (=> bs!69318 m!831631))

(declare-fun m!832381 () Bool)

(assert (=> bs!69318 m!832381))

(declare-fun m!832383 () Bool)

(assert (=> bs!69318 m!832383))

(assert (=> b!574700 d!202023))

(declare-fun d!202025 () Bool)

(assert (=> d!202025 (isPrefix!728 lt!242976 (++!1582 lt!242976 suffix!1342))))

(declare-fun lt!243271 () Unit!10186)

(assert (=> d!202025 (= lt!243271 (choose!4104 lt!242976 suffix!1342))))

(assert (=> d!202025 (= (lemmaConcatTwoListThenFirstIsPrefix!575 lt!242976 suffix!1342) lt!243271)))

(declare-fun bs!69319 () Bool)

(assert (= bs!69319 d!202025))

(assert (=> bs!69319 m!831567))

(assert (=> bs!69319 m!831567))

(declare-fun m!832385 () Bool)

(assert (=> bs!69319 m!832385))

(declare-fun m!832387 () Bool)

(assert (=> bs!69319 m!832387))

(assert (=> b!574700 d!202025))

(declare-fun d!202027 () Bool)

(declare-fun e!347574 () Bool)

(assert (=> d!202027 e!347574))

(declare-fun res!247150 () Bool)

(assert (=> d!202027 (=> (not res!247150) (not e!347574))))

(assert (=> d!202027 (= res!247150 (semiInverseModEq!420 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))))))

(declare-fun Unit!10201 () Unit!10186)

(assert (=> d!202027 (= (lemmaInv!230 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) Unit!10201)))

(declare-fun b!575172 () Bool)

(assert (=> b!575172 (= e!347574 (equivClasses!403 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))))))

(assert (= (and d!202027 res!247150) b!575172))

(declare-fun m!832389 () Bool)

(assert (=> d!202027 m!832389))

(declare-fun m!832391 () Bool)

(assert (=> b!575172 m!832391))

(assert (=> b!574700 d!202027))

(declare-fun d!202029 () Bool)

(declare-fun e!347575 () Bool)

(assert (=> d!202029 e!347575))

(declare-fun res!247151 () Bool)

(assert (=> d!202029 (=> (not res!247151) (not e!347575))))

(assert (=> d!202029 (= res!247151 (semiInverseModEq!420 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toValue!1953 (transformation!1094 (rule!1840 token!491)))))))

(declare-fun Unit!10202 () Unit!10186)

(assert (=> d!202029 (= (lemmaInv!230 (transformation!1094 (rule!1840 token!491))) Unit!10202)))

(declare-fun b!575173 () Bool)

(assert (=> b!575173 (= e!347575 (equivClasses!403 (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toValue!1953 (transformation!1094 (rule!1840 token!491)))))))

(assert (= (and d!202029 res!247151) b!575173))

(assert (=> d!202029 m!831883))

(assert (=> b!575173 m!831885))

(assert (=> b!574700 d!202029))

(declare-fun b!575176 () Bool)

(declare-fun e!347577 () Bool)

(assert (=> b!575176 (= e!347577 (isPrefix!728 (tail!748 input!2705) (tail!748 lt!242955)))))

(declare-fun b!575177 () Bool)

(declare-fun e!347576 () Bool)

(assert (=> b!575177 (= e!347576 (>= (size!4499 lt!242955) (size!4499 input!2705)))))

(declare-fun b!575175 () Bool)

(declare-fun res!247152 () Bool)

(assert (=> b!575175 (=> (not res!247152) (not e!347577))))

(assert (=> b!575175 (= res!247152 (= (head!1219 input!2705) (head!1219 lt!242955)))))

(declare-fun b!575174 () Bool)

(declare-fun e!347578 () Bool)

(assert (=> b!575174 (= e!347578 e!347577)))

(declare-fun res!247154 () Bool)

(assert (=> b!575174 (=> (not res!247154) (not e!347577))))

(assert (=> b!575174 (= res!247154 (not (is-Nil!5649 lt!242955)))))

(declare-fun d!202031 () Bool)

(assert (=> d!202031 e!347576))

(declare-fun res!247153 () Bool)

(assert (=> d!202031 (=> res!247153 e!347576)))

(declare-fun lt!243272 () Bool)

(assert (=> d!202031 (= res!247153 (not lt!243272))))

(assert (=> d!202031 (= lt!243272 e!347578)))

(declare-fun res!247155 () Bool)

(assert (=> d!202031 (=> res!247155 e!347578)))

(assert (=> d!202031 (= res!247155 (is-Nil!5649 input!2705))))

(assert (=> d!202031 (= (isPrefix!728 input!2705 lt!242955) lt!243272)))

(assert (= (and d!202031 (not res!247155)) b!575174))

(assert (= (and b!575174 res!247154) b!575175))

(assert (= (and b!575175 res!247152) b!575176))

(assert (= (and d!202031 (not res!247153)) b!575177))

(assert (=> b!575176 m!832307))

(assert (=> b!575176 m!832357))

(assert (=> b!575176 m!832307))

(assert (=> b!575176 m!832357))

(declare-fun m!832393 () Bool)

(assert (=> b!575176 m!832393))

(assert (=> b!575177 m!832361))

(assert (=> b!575177 m!831865))

(assert (=> b!575175 m!832311))

(assert (=> b!575175 m!832365))

(assert (=> b!574700 d!202031))

(declare-fun d!202033 () Bool)

(declare-fun lt!243273 () Int)

(assert (=> d!202033 (>= lt!243273 0)))

(declare-fun e!347579 () Int)

(assert (=> d!202033 (= lt!243273 e!347579)))

(declare-fun c!107780 () Bool)

(assert (=> d!202033 (= c!107780 (is-Nil!5649 lt!242976))))

(assert (=> d!202033 (= (size!4499 lt!242976) lt!243273)))

(declare-fun b!575178 () Bool)

(assert (=> b!575178 (= e!347579 0)))

(declare-fun b!575179 () Bool)

(assert (=> b!575179 (= e!347579 (+ 1 (size!4499 (t!77228 lt!242976))))))

(assert (= (and d!202033 c!107780) b!575178))

(assert (= (and d!202033 (not c!107780)) b!575179))

(declare-fun m!832395 () Bool)

(assert (=> b!575179 m!832395))

(assert (=> b!574700 d!202033))

(declare-fun d!202035 () Bool)

(declare-fun lt!243274 () BalanceConc!3630)

(assert (=> d!202035 (= (list!2346 lt!243274) (originalCharacters!1133 (_1!3581 (v!16301 lt!242987))))))

(assert (=> d!202035 (= lt!243274 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (value!36047 (_1!3581 (v!16301 lt!242987)))))))

(assert (=> d!202035 (= (charsOf!723 (_1!3581 (v!16301 lt!242987))) lt!243274)))

(declare-fun b_lambda!22399 () Bool)

(assert (=> (not b_lambda!22399) (not d!202035)))

(declare-fun t!77267 () Bool)

(declare-fun tb!50155 () Bool)

(assert (=> (and b!574710 (= (toChars!1812 (transformation!1094 (rule!1840 token!491))) (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77267) tb!50155))

(declare-fun b!575180 () Bool)

(declare-fun e!347580 () Bool)

(declare-fun tp!180426 () Bool)

(assert (=> b!575180 (= e!347580 (and (inv!7112 (c!107721 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (value!36047 (_1!3581 (v!16301 lt!242987)))))) tp!180426))))

(declare-fun result!56130 () Bool)

(assert (=> tb!50155 (= result!56130 (and (inv!7113 (dynLambda!3266 (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987))))) (value!36047 (_1!3581 (v!16301 lt!242987))))) e!347580))))

(assert (= tb!50155 b!575180))

(declare-fun m!832397 () Bool)

(assert (=> b!575180 m!832397))

(declare-fun m!832399 () Bool)

(assert (=> tb!50155 m!832399))

(assert (=> d!202035 t!77267))

(declare-fun b_and!56279 () Bool)

(assert (= b_and!56267 (and (=> t!77267 result!56130) b_and!56279)))

(declare-fun t!77269 () Bool)

(declare-fun tb!50157 () Bool)

(assert (=> (and b!574698 (= (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77269) tb!50157))

(declare-fun result!56132 () Bool)

(assert (= result!56132 result!56130))

(assert (=> d!202035 t!77269))

(declare-fun b_and!56281 () Bool)

(assert (= b_and!56269 (and (=> t!77269 result!56132) b_and!56281)))

(declare-fun m!832401 () Bool)

(assert (=> d!202035 m!832401))

(declare-fun m!832403 () Bool)

(assert (=> d!202035 m!832403))

(assert (=> b!574700 d!202035))

(declare-fun d!202037 () Bool)

(assert (=> d!202037 (= (size!4498 token!491) (size!4499 (originalCharacters!1133 token!491)))))

(declare-fun Unit!10203 () Unit!10186)

(assert (=> d!202037 (= (lemmaCharactersSize!161 token!491) Unit!10203)))

(declare-fun bs!69320 () Bool)

(assert (= bs!69320 d!202037))

(assert (=> bs!69320 m!831641))

(assert (=> b!574700 d!202037))

(declare-fun d!202039 () Bool)

(declare-fun lt!243275 () Int)

(assert (=> d!202039 (>= lt!243275 0)))

(declare-fun e!347581 () Int)

(assert (=> d!202039 (= lt!243275 e!347581)))

(declare-fun c!107781 () Bool)

(assert (=> d!202039 (= c!107781 (is-Nil!5649 (originalCharacters!1133 token!491)))))

(assert (=> d!202039 (= (size!4499 (originalCharacters!1133 token!491)) lt!243275)))

(declare-fun b!575181 () Bool)

(assert (=> b!575181 (= e!347581 0)))

(declare-fun b!575182 () Bool)

(assert (=> b!575182 (= e!347581 (+ 1 (size!4499 (t!77228 (originalCharacters!1133 token!491)))))))

(assert (= (and d!202039 c!107781) b!575181))

(assert (= (and d!202039 (not c!107781)) b!575182))

(declare-fun m!832405 () Bool)

(assert (=> b!575182 m!832405))

(assert (=> b!574721 d!202039))

(assert (=> b!574719 d!201979))

(declare-fun d!202041 () Bool)

(assert (=> d!202041 (not (matchR!575 (regex!1094 (rule!1840 token!491)) input!2705))))

(declare-fun lt!243278 () Unit!10186)

(declare-fun choose!4108 (LexerInterface!980 List!5661 Rule!1988 List!5659 List!5659 List!5659 Rule!1988) Unit!10186)

(assert (=> d!202041 (= lt!243278 (choose!4108 thiss!22590 rules!3103 (rule!1840 (_1!3581 (v!16301 lt!242987))) lt!242973 input!2705 input!2705 (rule!1840 token!491)))))

(assert (=> d!202041 (isPrefix!728 lt!242973 input!2705)))

(assert (=> d!202041 (= (lemmaMaxPrefixOutputsMaxPrefix!53 thiss!22590 rules!3103 (rule!1840 (_1!3581 (v!16301 lt!242987))) lt!242973 input!2705 input!2705 (rule!1840 token!491)) lt!243278)))

(declare-fun bs!69321 () Bool)

(assert (= bs!69321 d!202041))

(assert (=> bs!69321 m!831647))

(declare-fun m!832407 () Bool)

(assert (=> bs!69321 m!832407))

(assert (=> bs!69321 m!832323))

(assert (=> b!574719 d!202041))

(declare-fun b!575211 () Bool)

(declare-fun e!347596 () Bool)

(declare-fun e!347600 () Bool)

(assert (=> b!575211 (= e!347596 e!347600)))

(declare-fun c!107789 () Bool)

(assert (=> b!575211 (= c!107789 (is-EmptyLang!1428 (regex!1094 (rule!1840 token!491))))))

(declare-fun b!575212 () Bool)

(declare-fun res!247172 () Bool)

(declare-fun e!347602 () Bool)

(assert (=> b!575212 (=> res!247172 e!347602)))

(assert (=> b!575212 (= res!247172 (not (is-ElementMatch!1428 (regex!1094 (rule!1840 token!491)))))))

(assert (=> b!575212 (= e!347600 e!347602)))

(declare-fun bm!39804 () Bool)

(declare-fun call!39809 () Bool)

(assert (=> bm!39804 (= call!39809 (isEmpty!4079 input!2705))))

(declare-fun b!575213 () Bool)

(declare-fun res!247174 () Bool)

(declare-fun e!347599 () Bool)

(assert (=> b!575213 (=> res!247174 e!347599)))

(assert (=> b!575213 (= res!247174 (not (isEmpty!4079 (tail!748 input!2705))))))

(declare-fun b!575214 () Bool)

(declare-fun lt!243281 () Bool)

(assert (=> b!575214 (= e!347600 (not lt!243281))))

(declare-fun b!575215 () Bool)

(declare-fun e!347597 () Bool)

(assert (=> b!575215 (= e!347597 (nullable!382 (regex!1094 (rule!1840 token!491))))))

(declare-fun b!575216 () Bool)

(assert (=> b!575216 (= e!347599 (not (= (head!1219 input!2705) (c!107720 (regex!1094 (rule!1840 token!491))))))))

(declare-fun b!575217 () Bool)

(declare-fun derivativeStep!296 (Regex!1428 C!3778) Regex!1428)

(assert (=> b!575217 (= e!347597 (matchR!575 (derivativeStep!296 (regex!1094 (rule!1840 token!491)) (head!1219 input!2705)) (tail!748 input!2705)))))

(declare-fun b!575218 () Bool)

(declare-fun e!347598 () Bool)

(assert (=> b!575218 (= e!347598 e!347599)))

(declare-fun res!247173 () Bool)

(assert (=> b!575218 (=> res!247173 e!347599)))

(assert (=> b!575218 (= res!247173 call!39809)))

(declare-fun b!575219 () Bool)

(declare-fun res!247176 () Bool)

(assert (=> b!575219 (=> res!247176 e!347602)))

(declare-fun e!347601 () Bool)

(assert (=> b!575219 (= res!247176 e!347601)))

(declare-fun res!247177 () Bool)

(assert (=> b!575219 (=> (not res!247177) (not e!347601))))

(assert (=> b!575219 (= res!247177 lt!243281)))

(declare-fun b!575220 () Bool)

(declare-fun res!247179 () Bool)

(assert (=> b!575220 (=> (not res!247179) (not e!347601))))

(assert (=> b!575220 (= res!247179 (not call!39809))))

(declare-fun b!575221 () Bool)

(assert (=> b!575221 (= e!347596 (= lt!243281 call!39809))))

(declare-fun d!202043 () Bool)

(assert (=> d!202043 e!347596))

(declare-fun c!107788 () Bool)

(assert (=> d!202043 (= c!107788 (is-EmptyExpr!1428 (regex!1094 (rule!1840 token!491))))))

(assert (=> d!202043 (= lt!243281 e!347597)))

(declare-fun c!107790 () Bool)

(assert (=> d!202043 (= c!107790 (isEmpty!4079 input!2705))))

(assert (=> d!202043 (validRegex!477 (regex!1094 (rule!1840 token!491)))))

(assert (=> d!202043 (= (matchR!575 (regex!1094 (rule!1840 token!491)) input!2705) lt!243281)))

(declare-fun b!575222 () Bool)

(assert (=> b!575222 (= e!347601 (= (head!1219 input!2705) (c!107720 (regex!1094 (rule!1840 token!491)))))))

(declare-fun b!575223 () Bool)

(assert (=> b!575223 (= e!347602 e!347598)))

(declare-fun res!247178 () Bool)

(assert (=> b!575223 (=> (not res!247178) (not e!347598))))

(assert (=> b!575223 (= res!247178 (not lt!243281))))

(declare-fun b!575224 () Bool)

(declare-fun res!247175 () Bool)

(assert (=> b!575224 (=> (not res!247175) (not e!347601))))

(assert (=> b!575224 (= res!247175 (isEmpty!4079 (tail!748 input!2705)))))

(assert (= (and d!202043 c!107790) b!575215))

(assert (= (and d!202043 (not c!107790)) b!575217))

(assert (= (and d!202043 c!107788) b!575221))

(assert (= (and d!202043 (not c!107788)) b!575211))

(assert (= (and b!575211 c!107789) b!575214))

(assert (= (and b!575211 (not c!107789)) b!575212))

(assert (= (and b!575212 (not res!247172)) b!575219))

(assert (= (and b!575219 res!247177) b!575220))

(assert (= (and b!575220 res!247179) b!575224))

(assert (= (and b!575224 res!247175) b!575222))

(assert (= (and b!575219 (not res!247176)) b!575223))

(assert (= (and b!575223 res!247178) b!575218))

(assert (= (and b!575218 (not res!247173)) b!575213))

(assert (= (and b!575213 (not res!247174)) b!575216))

(assert (= (or b!575221 b!575218 b!575220) bm!39804))

(assert (=> bm!39804 m!831551))

(assert (=> b!575213 m!832307))

(assert (=> b!575213 m!832307))

(declare-fun m!832409 () Bool)

(assert (=> b!575213 m!832409))

(assert (=> b!575224 m!832307))

(assert (=> b!575224 m!832307))

(assert (=> b!575224 m!832409))

(assert (=> b!575215 m!832327))

(assert (=> b!575216 m!832311))

(assert (=> d!202043 m!831551))

(assert (=> d!202043 m!832325))

(assert (=> b!575222 m!832311))

(assert (=> b!575217 m!832311))

(assert (=> b!575217 m!832311))

(declare-fun m!832411 () Bool)

(assert (=> b!575217 m!832411))

(assert (=> b!575217 m!832307))

(assert (=> b!575217 m!832411))

(assert (=> b!575217 m!832307))

(declare-fun m!832413 () Bool)

(assert (=> b!575217 m!832413))

(assert (=> b!574719 d!202043))

(declare-fun d!202045 () Bool)

(assert (=> d!202045 (= (isEmpty!4080 rules!3103) (is-Nil!5651 rules!3103))))

(assert (=> b!574720 d!202045))

(declare-fun d!202047 () Bool)

(assert (=> d!202047 (= (isEmpty!4079 input!2705) (is-Nil!5649 input!2705))))

(assert (=> b!574709 d!202047))

(declare-fun b!575237 () Bool)

(declare-fun e!347605 () Bool)

(declare-fun tp!180437 () Bool)

(assert (=> b!575237 (= e!347605 tp!180437)))

(assert (=> b!574702 (= tp!180379 e!347605)))

(declare-fun b!575236 () Bool)

(declare-fun tp!180441 () Bool)

(declare-fun tp!180439 () Bool)

(assert (=> b!575236 (= e!347605 (and tp!180441 tp!180439))))

(declare-fun b!575235 () Bool)

(assert (=> b!575235 (= e!347605 tp_is_empty!3211)))

(declare-fun b!575238 () Bool)

(declare-fun tp!180438 () Bool)

(declare-fun tp!180440 () Bool)

(assert (=> b!575238 (= e!347605 (and tp!180438 tp!180440))))

(assert (= (and b!574702 (is-ElementMatch!1428 (regex!1094 (h!11052 rules!3103)))) b!575235))

(assert (= (and b!574702 (is-Concat!2546 (regex!1094 (h!11052 rules!3103)))) b!575236))

(assert (= (and b!574702 (is-Star!1428 (regex!1094 (h!11052 rules!3103)))) b!575237))

(assert (= (and b!574702 (is-Union!1428 (regex!1094 (h!11052 rules!3103)))) b!575238))

(declare-fun b!575243 () Bool)

(declare-fun e!347608 () Bool)

(declare-fun tp!180444 () Bool)

(assert (=> b!575243 (= e!347608 (and tp_is_empty!3211 tp!180444))))

(assert (=> b!574708 (= tp!180385 e!347608)))

(assert (= (and b!574708 (is-Cons!5649 (t!77228 input!2705))) b!575243))

(declare-fun b!575254 () Bool)

(declare-fun b_free!16005 () Bool)

(declare-fun b_next!16021 () Bool)

(assert (=> b!575254 (= b_free!16005 (not b_next!16021))))

(declare-fun tb!50159 () Bool)

(declare-fun t!77271 () Bool)

(assert (=> (and b!575254 (= (toValue!1953 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toValue!1953 (transformation!1094 (rule!1840 token!491)))) t!77271) tb!50159))

(declare-fun result!56140 () Bool)

(assert (= result!56140 result!56116))

(assert (=> d!201901 t!77271))

(assert (=> d!201971 t!77271))

(declare-fun tb!50161 () Bool)

(declare-fun t!77273 () Bool)

(assert (=> (and b!575254 (= (toValue!1953 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toValue!1953 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77273) tb!50161))

(declare-fun result!56142 () Bool)

(assert (= result!56142 result!56126))

(assert (=> d!201979 t!77273))

(assert (=> d!202007 t!77273))

(declare-fun tp!180453 () Bool)

(declare-fun b_and!56283 () Bool)

(assert (=> b!575254 (= tp!180453 (and (=> t!77271 result!56140) (=> t!77273 result!56142) b_and!56283))))

(declare-fun b_free!16007 () Bool)

(declare-fun b_next!16023 () Bool)

(assert (=> b!575254 (= b_free!16007 (not b_next!16023))))

(declare-fun t!77275 () Bool)

(declare-fun tb!50163 () Bool)

(assert (=> (and b!575254 (= (toChars!1812 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toChars!1812 (transformation!1094 (rule!1840 token!491)))) t!77275) tb!50163))

(declare-fun result!56144 () Bool)

(assert (= result!56144 result!56112))

(assert (=> d!201901 t!77275))

(declare-fun t!77277 () Bool)

(declare-fun tb!50165 () Bool)

(assert (=> (and b!575254 (= (toChars!1812 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77277) tb!50165))

(declare-fun result!56146 () Bool)

(assert (= result!56146 result!56130))

(assert (=> d!202035 t!77277))

(declare-fun tb!50167 () Bool)

(declare-fun t!77279 () Bool)

(assert (=> (and b!575254 (= (toChars!1812 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toChars!1812 (transformation!1094 (rule!1840 token!491)))) t!77279) tb!50167))

(declare-fun result!56148 () Bool)

(assert (= result!56148 result!56090))

(assert (=> b!574915 t!77279))

(declare-fun tb!50169 () Bool)

(declare-fun t!77281 () Bool)

(assert (=> (and b!575254 (= (toChars!1812 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toChars!1812 (transformation!1094 (rule!1840 (_1!3581 (v!16301 lt!242987)))))) t!77281) tb!50169))

(declare-fun result!56150 () Bool)

(assert (= result!56150 result!56122))

(assert (=> d!201979 t!77281))

(assert (=> d!201849 t!77279))

(declare-fun tp!180454 () Bool)

(declare-fun b_and!56285 () Bool)

(assert (=> b!575254 (= tp!180454 (and (=> t!77279 result!56148) (=> t!77277 result!56146) (=> t!77281 result!56150) (=> t!77275 result!56144) b_and!56285))))

(declare-fun e!347618 () Bool)

(assert (=> b!575254 (= e!347618 (and tp!180453 tp!180454))))

(declare-fun tp!180455 () Bool)

(declare-fun e!347619 () Bool)

(declare-fun b!575253 () Bool)

(assert (=> b!575253 (= e!347619 (and tp!180455 (inv!7105 (tag!1356 (h!11052 (t!77230 rules!3103)))) (inv!7108 (transformation!1094 (h!11052 (t!77230 rules!3103)))) e!347618))))

(declare-fun b!575252 () Bool)

(declare-fun e!347617 () Bool)

(declare-fun tp!180456 () Bool)

(assert (=> b!575252 (= e!347617 (and e!347619 tp!180456))))

(assert (=> b!574727 (= tp!180378 e!347617)))

(assert (= b!575253 b!575254))

(assert (= b!575252 b!575253))

(assert (= (and b!574727 (is-Cons!5651 (t!77230 rules!3103))) b!575252))

(declare-fun m!832415 () Bool)

(assert (=> b!575253 m!832415))

(declare-fun m!832417 () Bool)

(assert (=> b!575253 m!832417))

(declare-fun b!575255 () Bool)

(declare-fun e!347621 () Bool)

(declare-fun tp!180457 () Bool)

(assert (=> b!575255 (= e!347621 (and tp_is_empty!3211 tp!180457))))

(assert (=> b!574728 (= tp!180386 e!347621)))

(assert (= (and b!574728 (is-Cons!5649 (originalCharacters!1133 token!491))) b!575255))

(declare-fun b!575258 () Bool)

(declare-fun e!347622 () Bool)

(declare-fun tp!180458 () Bool)

(assert (=> b!575258 (= e!347622 tp!180458)))

(assert (=> b!574714 (= tp!180383 e!347622)))

(declare-fun b!575257 () Bool)

(declare-fun tp!180462 () Bool)

(declare-fun tp!180460 () Bool)

(assert (=> b!575257 (= e!347622 (and tp!180462 tp!180460))))

(declare-fun b!575256 () Bool)

(assert (=> b!575256 (= e!347622 tp_is_empty!3211)))

(declare-fun b!575259 () Bool)

(declare-fun tp!180459 () Bool)

(declare-fun tp!180461 () Bool)

(assert (=> b!575259 (= e!347622 (and tp!180459 tp!180461))))

(assert (= (and b!574714 (is-ElementMatch!1428 (regex!1094 (rule!1840 token!491)))) b!575256))

(assert (= (and b!574714 (is-Concat!2546 (regex!1094 (rule!1840 token!491)))) b!575257))

(assert (= (and b!574714 (is-Star!1428 (regex!1094 (rule!1840 token!491)))) b!575258))

(assert (= (and b!574714 (is-Union!1428 (regex!1094 (rule!1840 token!491)))) b!575259))

(declare-fun b!575260 () Bool)

(declare-fun e!347623 () Bool)

(declare-fun tp!180463 () Bool)

(assert (=> b!575260 (= e!347623 (and tp_is_empty!3211 tp!180463))))

(assert (=> b!574704 (= tp!180384 e!347623)))

(assert (= (and b!574704 (is-Cons!5649 (t!77228 suffix!1342))) b!575260))

(declare-fun b_lambda!22401 () Bool)

(assert (= b_lambda!22377 (or (and b!574710 b_free!15991) (and b!574698 b_free!15995 (= (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toChars!1812 (transformation!1094 (rule!1840 token!491))))) (and b!575254 b_free!16007 (= (toChars!1812 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toChars!1812 (transformation!1094 (rule!1840 token!491))))) b_lambda!22401)))

(declare-fun b_lambda!22403 () Bool)

(assert (= b_lambda!22383 (or (and b!574710 b_free!15991) (and b!574698 b_free!15995 (= (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toChars!1812 (transformation!1094 (rule!1840 token!491))))) (and b!575254 b_free!16007 (= (toChars!1812 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toChars!1812 (transformation!1094 (rule!1840 token!491))))) b_lambda!22403)))

(declare-fun b_lambda!22405 () Bool)

(assert (= b_lambda!22389 (or (and b!574710 b_free!15989) (and b!574698 b_free!15993 (= (toValue!1953 (transformation!1094 (h!11052 rules!3103))) (toValue!1953 (transformation!1094 (rule!1840 token!491))))) (and b!575254 b_free!16005 (= (toValue!1953 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toValue!1953 (transformation!1094 (rule!1840 token!491))))) b_lambda!22405)))

(declare-fun b_lambda!22407 () Bool)

(assert (= b_lambda!22387 (or (and b!574710 b_free!15991) (and b!574698 b_free!15995 (= (toChars!1812 (transformation!1094 (h!11052 rules!3103))) (toChars!1812 (transformation!1094 (rule!1840 token!491))))) (and b!575254 b_free!16007 (= (toChars!1812 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toChars!1812 (transformation!1094 (rule!1840 token!491))))) b_lambda!22407)))

(declare-fun b_lambda!22409 () Bool)

(assert (= b_lambda!22391 (or (and b!574710 b_free!15989) (and b!574698 b_free!15993 (= (toValue!1953 (transformation!1094 (h!11052 rules!3103))) (toValue!1953 (transformation!1094 (rule!1840 token!491))))) (and b!575254 b_free!16005 (= (toValue!1953 (transformation!1094 (h!11052 (t!77230 rules!3103)))) (toValue!1953 (transformation!1094 (rule!1840 token!491))))) b_lambda!22409)))

(push 1)

(assert (not d!201965))

(assert (not b!575158))

(assert (not b!575179))

(assert (not b!575150))

(assert (not b!574916))

(assert b_and!56279)

(assert (not d!201973))

(assert (not b!574845))

(assert (not d!202021))

(assert (not d!201989))

(assert (not b_lambda!22405))

(assert (not d!202029))

(assert (not bm!39797))

(assert (not d!201891))

(assert (not b!575120))

(assert (not d!201873))

(assert (not b!575176))

(assert (not b!574843))

(assert (not b!575180))

(assert (not b!575131))

(assert (not d!201997))

(assert (not b!575182))

(assert (not b_lambda!22395))

(assert (not b!574886))

(assert (not b!575215))

(assert (not d!202035))

(assert (not d!202023))

(assert (not b!574880))

(assert (not b!575255))

(assert (not b!575253))

(assert (not d!202017))

(assert (not b!575096))

(assert (not b_next!16023))

(assert (not b_next!16011))

(assert (not b!574842))

(assert (not d!202015))

(assert (not b!575157))

(assert (not b!575153))

(assert (not d!201901))

(assert (not tb!50147))

(assert (not b!575259))

(assert (not b!574942))

(assert (not b!575173))

(assert (not b!575236))

(assert (not d!201977))

(assert (not b!574885))

(assert tp_is_empty!3211)

(assert (not b!575097))

(assert (not d!201995))

(assert (not d!201875))

(assert (not d!201879))

(assert (not b!575260))

(assert (not b!575105))

(assert (not b!574887))

(assert (not d!201865))

(assert (not d!202037))

(assert (not b!575164))

(assert (not b!575102))

(assert (not b!575162))

(assert (not d!202041))

(assert (not b_lambda!22393))

(assert (not b!575106))

(assert (not b!575224))

(assert (not b!574908))

(assert (not b!574882))

(assert (not d!201883))

(assert (not d!201851))

(assert b_and!56281)

(assert (not b!575093))

(assert (not b!575129))

(assert (not b_lambda!22403))

(assert (not b!575222))

(assert (not b!575110))

(assert (not b!574906))

(assert (not b!574900))

(assert (not b!575114))

(assert (not b!575090))

(assert (not b!575123))

(assert (not b!575142))

(assert (not d!201991))

(assert (not b!575217))

(assert (not b!575091))

(assert (not d!201969))

(assert (not b!575252))

(assert (not b!575094))

(assert (not b!575125))

(assert (not tb!50155))

(assert (not b!575127))

(assert (not b!575095))

(assert (not b!575108))

(assert (not d!202043))

(assert (not b!575154))

(assert (not b_next!16005))

(assert (not b!574888))

(assert (not d!201849))

(assert (not b!575124))

(assert (not b!575169))

(assert (not d!202025))

(assert (not b!574915))

(assert b_and!56285)

(assert (not b_lambda!22407))

(assert b_and!56275)

(assert (not d!202027))

(assert (not d!202003))

(assert (not d!201983))

(assert (not b!575159))

(assert (not b!575167))

(assert (not b!575161))

(assert (not b!575168))

(assert (not b!575243))

(assert b_and!56283)

(assert (not b!574884))

(assert (not tb!50123))

(assert (not d!201869))

(assert (not b_lambda!22409))

(assert (not b!575068))

(assert (not b!574931))

(assert (not d!201861))

(assert (not b!575257))

(assert (not b!574851))

(assert (not b_lambda!22399))

(assert (not b!575112))

(assert (not d!202005))

(assert (not d!201987))

(assert (not b!574917))

(assert (not b!574883))

(assert (not b!575128))

(assert (not b!575163))

(assert (not d!201897))

(assert (not b!575121))

(assert (not d!201887))

(assert (not b!575175))

(assert (not b!575237))

(assert (not b!575213))

(assert (not bm!39801))

(assert (not b!575216))

(assert (not b!575144))

(assert (not d!201853))

(assert (not b!575238))

(assert (not d!201975))

(assert (not d!201979))

(assert (not d!201999))

(assert (not b!575107))

(assert (not tb!50139))

(assert (not d!201847))

(assert (not bm!39804))

(assert (not b!575143))

(assert (not b!575126))

(assert (not b!575141))

(assert (not b_next!16021))

(assert (not b!574899))

(assert (not b!575111))

(assert (not b_next!16009))

(assert (not b!575109))

(assert (not d!202001))

(assert (not tb!50151))

(assert (not b!574909))

(assert (not b!575177))

(assert (not b_lambda!22397))

(assert (not b!575172))

(assert (not b!575258))

(assert (not b_next!16007))

(assert (not b_lambda!22401))

(assert (not tb!50143))

(assert b_and!56277)

(assert (not b!575092))

(assert (not d!202009))

(check-sat)

(pop 1)

(push 1)

(assert b_and!56279)

(assert b_and!56281)

(assert (not b_next!16005))

(assert b_and!56283)

(assert (not b_next!16007))

(assert b_and!56277)

(assert (not b_next!16023))

(assert (not b_next!16011))

(assert b_and!56285)

(assert b_and!56275)

(assert (not b_next!16021))

(assert (not b_next!16009))

(check-sat)

(pop 1)

