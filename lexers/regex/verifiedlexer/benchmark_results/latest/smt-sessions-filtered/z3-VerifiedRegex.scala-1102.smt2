; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56920 () Bool)

(assert start!56920)

(declare-fun b!600089 () Bool)

(declare-fun b_free!17053 () Bool)

(declare-fun b_next!17069 () Bool)

(assert (=> b!600089 (= b_free!17053 (not b_next!17069))))

(declare-fun tp!186948 () Bool)

(declare-fun b_and!59243 () Bool)

(assert (=> b!600089 (= tp!186948 b_and!59243)))

(declare-fun b_free!17055 () Bool)

(declare-fun b_next!17071 () Bool)

(assert (=> b!600089 (= b_free!17055 (not b_next!17071))))

(declare-fun tp!186942 () Bool)

(declare-fun b_and!59245 () Bool)

(assert (=> b!600089 (= tp!186942 b_and!59245)))

(declare-fun b!600103 () Bool)

(declare-fun b_free!17057 () Bool)

(declare-fun b_next!17073 () Bool)

(assert (=> b!600103 (= b_free!17057 (not b_next!17073))))

(declare-fun tp!186946 () Bool)

(declare-fun b_and!59247 () Bool)

(assert (=> b!600103 (= tp!186946 b_and!59247)))

(declare-fun b_free!17059 () Bool)

(declare-fun b_next!17075 () Bool)

(assert (=> b!600103 (= b_free!17059 (not b_next!17075))))

(declare-fun tp!186949 () Bool)

(declare-fun b_and!59249 () Bool)

(assert (=> b!600103 (= tp!186949 b_and!59249)))

(declare-datatypes ((C!3972 0))(
  ( (C!3973 (val!2212 Int)) )
))
(declare-datatypes ((List!6004 0))(
  ( (Nil!5994) (Cons!5994 (h!11395 C!3972) (t!79811 List!6004)) )
))
(declare-fun lt!255534 () List!6004)

(declare-datatypes ((List!6005 0))(
  ( (Nil!5995) (Cons!5995 (h!11396 (_ BitVec 16)) (t!79812 List!6005)) )
))
(declare-datatypes ((TokenValue!1215 0))(
  ( (FloatLiteralValue!2430 (text!8950 List!6005)) (TokenValueExt!1214 (__x!4328 Int)) (Broken!6075 (value!38784 List!6005)) (Object!1224) (End!1215) (Def!1215) (Underscore!1215) (Match!1215) (Else!1215) (Error!1215) (Case!1215) (If!1215) (Extends!1215) (Abstract!1215) (Class!1215) (Val!1215) (DelimiterValue!2430 (del!1275 List!6005)) (KeywordValue!1221 (value!38785 List!6005)) (CommentValue!2430 (value!38786 List!6005)) (WhitespaceValue!2430 (value!38787 List!6005)) (IndentationValue!1215 (value!38788 List!6005)) (String!7818) (Int32!1215) (Broken!6076 (value!38789 List!6005)) (Boolean!1216) (Unit!10911) (OperatorValue!1218 (op!1275 List!6005)) (IdentifierValue!2430 (value!38790 List!6005)) (IdentifierValue!2431 (value!38791 List!6005)) (WhitespaceValue!2431 (value!38792 List!6005)) (True!2430) (False!2430) (Broken!6077 (value!38793 List!6005)) (Broken!6078 (value!38794 List!6005)) (True!2431) (RightBrace!1215) (RightBracket!1215) (Colon!1215) (Null!1215) (Comma!1215) (LeftBracket!1215) (False!2431) (LeftBrace!1215) (ImaginaryLiteralValue!1215 (text!8951 List!6005)) (StringLiteralValue!3645 (value!38795 List!6005)) (EOFValue!1215 (value!38796 List!6005)) (IdentValue!1215 (value!38797 List!6005)) (DelimiterValue!2431 (value!38798 List!6005)) (DedentValue!1215 (value!38799 List!6005)) (NewLineValue!1215 (value!38800 List!6005)) (IntegerValue!3645 (value!38801 (_ BitVec 32)) (text!8952 List!6005)) (IntegerValue!3646 (value!38802 Int) (text!8953 List!6005)) (Times!1215) (Or!1215) (Equal!1215) (Minus!1215) (Broken!6079 (value!38803 List!6005)) (And!1215) (Div!1215) (LessEqual!1215) (Mod!1215) (Concat!2740) (Not!1215) (Plus!1215) (SpaceValue!1215 (value!38804 List!6005)) (IntegerValue!3647 (value!38805 Int) (text!8954 List!6005)) (StringLiteralValue!3646 (text!8955 List!6005)) (FloatLiteralValue!2431 (text!8956 List!6005)) (BytesLiteralValue!1215 (value!38806 List!6005)) (CommentValue!2431 (value!38807 List!6005)) (StringLiteralValue!3647 (value!38808 List!6005)) (ErrorTokenValue!1215 (msg!1276 List!6005)) )
))
(declare-fun lt!255514 () TokenValue!1215)

(declare-fun e!363504 () Bool)

(declare-datatypes ((Regex!1525 0))(
  ( (ElementMatch!1525 (c!111423 C!3972)) (Concat!2741 (regOne!3562 Regex!1525) (regTwo!3562 Regex!1525)) (EmptyExpr!1525) (Star!1525 (reg!1854 Regex!1525)) (EmptyLang!1525) (Union!1525 (regOne!3563 Regex!1525) (regTwo!3563 Regex!1525)) )
))
(declare-datatypes ((IArray!3817 0))(
  ( (IArray!3818 (innerList!1966 List!6004)) )
))
(declare-datatypes ((Conc!1908 0))(
  ( (Node!1908 (left!4820 Conc!1908) (right!5150 Conc!1908) (csize!4046 Int) (cheight!2119 Int)) (Leaf!3011 (xs!4545 IArray!3817) (csize!4047 Int)) (Empty!1908) )
))
(declare-datatypes ((BalanceConc!3824 0))(
  ( (BalanceConc!3825 (c!111424 Conc!1908)) )
))
(declare-datatypes ((String!7819 0))(
  ( (String!7820 (value!38809 String)) )
))
(declare-datatypes ((TokenValueInjection!2198 0))(
  ( (TokenValueInjection!2199 (toValue!2086 Int) (toChars!1945 Int)) )
))
(declare-datatypes ((Rule!2182 0))(
  ( (Rule!2183 (regex!1191 Regex!1525) (tag!1453 String!7819) (isSeparator!1191 Bool) (transformation!1191 TokenValueInjection!2198)) )
))
(declare-datatypes ((Token!2118 0))(
  ( (Token!2119 (value!38810 TokenValue!1215) (rule!1963 Rule!2182) (size!4718 Int) (originalCharacters!1230 List!6004)) )
))
(declare-datatypes ((tuple2!6880 0))(
  ( (tuple2!6881 (_1!3704 Token!2118) (_2!3704 List!6004)) )
))
(declare-datatypes ((Option!1542 0))(
  ( (None!1541) (Some!1541 (v!16434 tuple2!6880)) )
))
(declare-fun lt!255526 () Option!1542)

(declare-fun lt!255519 () tuple2!6880)

(declare-fun lt!255531 () List!6004)

(declare-fun b!600083 () Bool)

(declare-fun lt!255510 () Int)

(assert (=> b!600083 (= e!363504 (and (= (size!4718 (_1!3704 (v!16434 lt!255526))) lt!255510) (= (originalCharacters!1230 (_1!3704 (v!16434 lt!255526))) lt!255531) (= lt!255519 (tuple2!6881 (Token!2119 lt!255514 (rule!1963 (_1!3704 (v!16434 lt!255526))) lt!255510 lt!255531) lt!255534))))))

(declare-fun b!600084 () Bool)

(declare-fun e!363507 () Bool)

(declare-fun tp_is_empty!3405 () Bool)

(declare-fun tp!186944 () Bool)

(assert (=> b!600084 (= e!363507 (and tp_is_empty!3405 tp!186944))))

(declare-fun b!600085 () Bool)

(declare-fun e!363503 () Bool)

(declare-fun e!363505 () Bool)

(assert (=> b!600085 (= e!363503 e!363505)))

(declare-fun res!259497 () Bool)

(assert (=> b!600085 (=> (not res!259497) (not e!363505))))

(declare-fun lt!255527 () List!6004)

(declare-fun input!2705 () List!6004)

(assert (=> b!600085 (= res!259497 (= lt!255527 input!2705))))

(declare-fun token!491 () Token!2118)

(declare-fun list!2514 (BalanceConc!3824) List!6004)

(declare-fun charsOf!820 (Token!2118) BalanceConc!3824)

(assert (=> b!600085 (= lt!255527 (list!2514 (charsOf!820 token!491)))))

(declare-fun e!363508 () Bool)

(declare-fun e!363490 () Bool)

(declare-fun b!600086 () Bool)

(declare-fun tp!186943 () Bool)

(declare-fun inv!7602 (String!7819) Bool)

(declare-fun inv!7605 (TokenValueInjection!2198) Bool)

(assert (=> b!600086 (= e!363490 (and tp!186943 (inv!7602 (tag!1453 (rule!1963 token!491))) (inv!7605 (transformation!1191 (rule!1963 token!491))) e!363508))))

(declare-fun b!600088 () Bool)

(declare-fun e!363498 () Bool)

(declare-fun e!363506 () Bool)

(assert (=> b!600088 (= e!363498 e!363506)))

(declare-fun res!259507 () Bool)

(assert (=> b!600088 (=> (not res!259507) (not e!363506))))

(get-info :version)

(assert (=> b!600088 (= res!259507 ((_ is Some!1541) lt!255526))))

(declare-datatypes ((List!6006 0))(
  ( (Nil!5996) (Cons!5996 (h!11397 Rule!2182) (t!79813 List!6006)) )
))
(declare-fun rules!3103 () List!6006)

(declare-datatypes ((LexerInterface!1077 0))(
  ( (LexerInterfaceExt!1074 (__x!4329 Int)) (Lexer!1075) )
))
(declare-fun thiss!22590 () LexerInterface!1077)

(declare-fun maxPrefix!775 (LexerInterface!1077 List!6006 List!6004) Option!1542)

(assert (=> b!600088 (= lt!255526 (maxPrefix!775 thiss!22590 rules!3103 input!2705))))

(declare-fun e!363496 () Bool)

(assert (=> b!600089 (= e!363496 (and tp!186948 tp!186942))))

(declare-fun b!600090 () Bool)

(declare-fun e!363502 () Bool)

(assert (=> b!600090 (= e!363502 e!363498)))

(declare-fun res!259498 () Bool)

(assert (=> b!600090 (=> (not res!259498) (not e!363498))))

(declare-fun suffix!1342 () List!6004)

(declare-fun lt!255528 () tuple2!6880)

(assert (=> b!600090 (= res!259498 (and (= (_1!3704 lt!255528) token!491) (= (_2!3704 lt!255528) suffix!1342)))))

(declare-fun lt!255523 () Option!1542)

(declare-fun get!2301 (Option!1542) tuple2!6880)

(assert (=> b!600090 (= lt!255528 (get!2301 lt!255523))))

(declare-fun b!600091 () Bool)

(declare-fun res!259504 () Bool)

(assert (=> b!600091 (=> (not res!259504) (not e!363503))))

(declare-fun isEmpty!4327 (List!6004) Bool)

(assert (=> b!600091 (= res!259504 (not (isEmpty!4327 input!2705)))))

(declare-fun b!600092 () Bool)

(assert (=> b!600092 (= e!363505 e!363502)))

(declare-fun res!259494 () Bool)

(assert (=> b!600092 (=> (not res!259494) (not e!363502))))

(declare-fun isDefined!1353 (Option!1542) Bool)

(assert (=> b!600092 (= res!259494 (isDefined!1353 lt!255523))))

(declare-fun lt!255536 () List!6004)

(assert (=> b!600092 (= lt!255523 (maxPrefix!775 thiss!22590 rules!3103 lt!255536))))

(declare-fun ++!1679 (List!6004 List!6004) List!6004)

(assert (=> b!600092 (= lt!255536 (++!1679 input!2705 suffix!1342))))

(declare-fun e!363511 () Bool)

(declare-fun lt!255509 () List!6004)

(declare-fun b!600093 () Bool)

(declare-fun lt!255515 () TokenValue!1215)

(declare-fun lt!255524 () Int)

(assert (=> b!600093 (= e!363511 (and (= (size!4718 token!491) lt!255524) (= (originalCharacters!1230 token!491) lt!255527) (= (tuple2!6881 token!491 suffix!1342) (tuple2!6881 (Token!2119 lt!255515 (rule!1963 token!491) lt!255524 lt!255527) lt!255509))))))

(declare-fun b!600094 () Bool)

(declare-fun e!363500 () Bool)

(declare-fun e!363499 () Bool)

(declare-fun tp!186950 () Bool)

(assert (=> b!600094 (= e!363500 (and e!363499 tp!186950))))

(declare-fun b!600095 () Bool)

(declare-fun tp!186941 () Bool)

(assert (=> b!600095 (= e!363499 (and tp!186941 (inv!7602 (tag!1453 (h!11397 rules!3103))) (inv!7605 (transformation!1191 (h!11397 rules!3103))) e!363496))))

(declare-fun b!600096 () Bool)

(declare-datatypes ((Unit!10912 0))(
  ( (Unit!10913) )
))
(declare-fun e!363510 () Unit!10912)

(declare-fun Unit!10914 () Unit!10912)

(assert (=> b!600096 (= e!363510 Unit!10914)))

(declare-fun b!600097 () Bool)

(declare-fun e!363495 () Bool)

(declare-fun e!363492 () Bool)

(assert (=> b!600097 (= e!363495 e!363492)))

(declare-fun res!259508 () Bool)

(assert (=> b!600097 (=> res!259508 e!363492)))

(declare-fun contains!1403 (List!6006 Rule!2182) Bool)

(assert (=> b!600097 (= res!259508 (not (contains!1403 rules!3103 (rule!1963 (_1!3704 (v!16434 lt!255526))))))))

(assert (=> b!600097 e!363511))

(declare-fun res!259495 () Bool)

(assert (=> b!600097 (=> (not res!259495) (not e!363511))))

(assert (=> b!600097 (= res!259495 (= (value!38810 token!491) lt!255515))))

(declare-fun apply!1444 (TokenValueInjection!2198 BalanceConc!3824) TokenValue!1215)

(declare-fun seqFromList!1367 (List!6004) BalanceConc!3824)

(assert (=> b!600097 (= lt!255515 (apply!1444 (transformation!1191 (rule!1963 token!491)) (seqFromList!1367 lt!255527)))))

(assert (=> b!600097 (= suffix!1342 lt!255509)))

(declare-fun lt!255525 () Unit!10912)

(declare-fun lemmaSamePrefixThenSameSuffix!532 (List!6004 List!6004 List!6004 List!6004 List!6004) Unit!10912)

(assert (=> b!600097 (= lt!255525 (lemmaSamePrefixThenSameSuffix!532 lt!255527 suffix!1342 lt!255527 lt!255509 lt!255536))))

(declare-fun getSuffix!336 (List!6004 List!6004) List!6004)

(assert (=> b!600097 (= lt!255509 (getSuffix!336 lt!255536 lt!255527))))

(declare-fun b!600098 () Bool)

(declare-fun res!259499 () Bool)

(assert (=> b!600098 (=> (not res!259499) (not e!363504))))

(declare-fun size!4719 (List!6004) Int)

(assert (=> b!600098 (= res!259499 (= (size!4718 (_1!3704 (v!16434 lt!255526))) (size!4719 (originalCharacters!1230 (_1!3704 (v!16434 lt!255526))))))))

(declare-fun e!363494 () Bool)

(declare-fun tp!186947 () Bool)

(declare-fun b!600099 () Bool)

(declare-fun inv!21 (TokenValue!1215) Bool)

(assert (=> b!600099 (= e!363494 (and (inv!21 (value!38810 token!491)) e!363490 tp!186947))))

(declare-fun b!600100 () Bool)

(declare-fun res!259496 () Bool)

(assert (=> b!600100 (=> (not res!259496) (not e!363511))))

(assert (=> b!600100 (= res!259496 (= (size!4718 token!491) (size!4719 (originalCharacters!1230 token!491))))))

(declare-fun b!600101 () Bool)

(declare-fun e!363497 () Bool)

(assert (=> b!600101 (= e!363506 e!363497)))

(declare-fun res!259503 () Bool)

(assert (=> b!600101 (=> (not res!259503) (not e!363497))))

(declare-fun lt!255518 () List!6004)

(assert (=> b!600101 (= res!259503 (= lt!255518 lt!255536))))

(assert (=> b!600101 (= lt!255518 (++!1679 lt!255527 suffix!1342))))

(declare-fun b!600102 () Bool)

(declare-fun Unit!10915 () Unit!10912)

(assert (=> b!600102 (= e!363510 Unit!10915)))

(assert (=> b!600102 false))

(assert (=> b!600103 (= e!363508 (and tp!186946 tp!186949))))

(declare-fun b!600104 () Bool)

(declare-fun res!259493 () Bool)

(assert (=> b!600104 (=> (not res!259493) (not e!363503))))

(declare-fun rulesInvariant!1040 (LexerInterface!1077 List!6006) Bool)

(assert (=> b!600104 (= res!259493 (rulesInvariant!1040 thiss!22590 rules!3103))))

(declare-fun res!259501 () Bool)

(assert (=> start!56920 (=> (not res!259501) (not e!363503))))

(assert (=> start!56920 (= res!259501 ((_ is Lexer!1075) thiss!22590))))

(assert (=> start!56920 e!363503))

(assert (=> start!56920 e!363507))

(assert (=> start!56920 e!363500))

(declare-fun inv!7606 (Token!2118) Bool)

(assert (=> start!56920 (and (inv!7606 token!491) e!363494)))

(assert (=> start!56920 true))

(declare-fun e!363501 () Bool)

(assert (=> start!56920 e!363501))

(declare-fun b!600087 () Bool)

(declare-fun res!259500 () Bool)

(assert (=> b!600087 (=> res!259500 e!363492)))

(assert (=> b!600087 (= res!259500 (isEmpty!4327 lt!255531))))

(declare-fun b!600105 () Bool)

(assert (=> b!600105 (= e!363492 (= lt!255526 (Some!1541 (tuple2!6881 (Token!2119 lt!255514 (rule!1963 (_1!3704 (v!16434 lt!255526))) lt!255510 lt!255531) (_2!3704 (v!16434 lt!255526))))))))

(declare-fun lt!255507 () Unit!10912)

(declare-fun lt!255522 () BalanceConc!3824)

(declare-fun lemmaSemiInverse!230 (TokenValueInjection!2198 BalanceConc!3824) Unit!10912)

(assert (=> b!600105 (= lt!255507 (lemmaSemiInverse!230 (transformation!1191 (rule!1963 (_1!3704 (v!16434 lt!255526)))) lt!255522))))

(declare-fun b!600106 () Bool)

(assert (=> b!600106 (= e!363497 (not e!363495))))

(declare-fun res!259492 () Bool)

(assert (=> b!600106 (=> res!259492 e!363495)))

(declare-fun isPrefix!819 (List!6004 List!6004) Bool)

(assert (=> b!600106 (= res!259492 (not (isPrefix!819 input!2705 lt!255518)))))

(assert (=> b!600106 (isPrefix!819 lt!255527 lt!255518)))

(declare-fun lt!255530 () Unit!10912)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!664 (List!6004 List!6004) Unit!10912)

(assert (=> b!600106 (= lt!255530 (lemmaConcatTwoListThenFirstIsPrefix!664 lt!255527 suffix!1342))))

(assert (=> b!600106 (isPrefix!819 input!2705 lt!255536)))

(declare-fun lt!255506 () Unit!10912)

(assert (=> b!600106 (= lt!255506 (lemmaConcatTwoListThenFirstIsPrefix!664 input!2705 suffix!1342))))

(assert (=> b!600106 e!363504))

(declare-fun res!259505 () Bool)

(assert (=> b!600106 (=> (not res!259505) (not e!363504))))

(assert (=> b!600106 (= res!259505 (= (value!38810 (_1!3704 (v!16434 lt!255526))) lt!255514))))

(assert (=> b!600106 (= lt!255514 (apply!1444 (transformation!1191 (rule!1963 (_1!3704 (v!16434 lt!255526)))) lt!255522))))

(assert (=> b!600106 (= lt!255522 (seqFromList!1367 lt!255531))))

(declare-fun lt!255512 () Unit!10912)

(declare-fun lemmaInv!299 (TokenValueInjection!2198) Unit!10912)

(assert (=> b!600106 (= lt!255512 (lemmaInv!299 (transformation!1191 (rule!1963 token!491))))))

(declare-fun lt!255513 () Unit!10912)

(assert (=> b!600106 (= lt!255513 (lemmaInv!299 (transformation!1191 (rule!1963 (_1!3704 (v!16434 lt!255526))))))))

(declare-fun ruleValid!389 (LexerInterface!1077 Rule!2182) Bool)

(assert (=> b!600106 (ruleValid!389 thiss!22590 (rule!1963 token!491))))

(declare-fun lt!255508 () Unit!10912)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!236 (LexerInterface!1077 Rule!2182 List!6006) Unit!10912)

(assert (=> b!600106 (= lt!255508 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!236 thiss!22590 (rule!1963 token!491) rules!3103))))

(assert (=> b!600106 (ruleValid!389 thiss!22590 (rule!1963 (_1!3704 (v!16434 lt!255526))))))

(declare-fun lt!255516 () Unit!10912)

(assert (=> b!600106 (= lt!255516 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!236 thiss!22590 (rule!1963 (_1!3704 (v!16434 lt!255526))) rules!3103))))

(assert (=> b!600106 (isPrefix!819 input!2705 input!2705)))

(declare-fun lt!255529 () Unit!10912)

(declare-fun lemmaIsPrefixRefl!555 (List!6004 List!6004) Unit!10912)

(assert (=> b!600106 (= lt!255529 (lemmaIsPrefixRefl!555 input!2705 input!2705))))

(assert (=> b!600106 (= (_2!3704 (v!16434 lt!255526)) lt!255534)))

(declare-fun lt!255535 () Unit!10912)

(assert (=> b!600106 (= lt!255535 (lemmaSamePrefixThenSameSuffix!532 lt!255531 (_2!3704 (v!16434 lt!255526)) lt!255531 lt!255534 input!2705))))

(assert (=> b!600106 (= lt!255534 (getSuffix!336 input!2705 lt!255531))))

(declare-fun lt!255517 () List!6004)

(assert (=> b!600106 (isPrefix!819 lt!255531 lt!255517)))

(assert (=> b!600106 (= lt!255517 (++!1679 lt!255531 (_2!3704 (v!16434 lt!255526))))))

(declare-fun lt!255521 () Unit!10912)

(assert (=> b!600106 (= lt!255521 (lemmaConcatTwoListThenFirstIsPrefix!664 lt!255531 (_2!3704 (v!16434 lt!255526))))))

(declare-fun lt!255532 () Unit!10912)

(declare-fun lemmaCharactersSize!250 (Token!2118) Unit!10912)

(assert (=> b!600106 (= lt!255532 (lemmaCharactersSize!250 token!491))))

(declare-fun lt!255511 () Unit!10912)

(assert (=> b!600106 (= lt!255511 (lemmaCharactersSize!250 (_1!3704 (v!16434 lt!255526))))))

(declare-fun lt!255533 () Unit!10912)

(assert (=> b!600106 (= lt!255533 e!363510)))

(declare-fun c!111422 () Bool)

(assert (=> b!600106 (= c!111422 (> lt!255510 lt!255524))))

(assert (=> b!600106 (= lt!255524 (size!4719 lt!255527))))

(assert (=> b!600106 (= lt!255510 (size!4719 lt!255531))))

(assert (=> b!600106 (= lt!255531 (list!2514 (charsOf!820 (_1!3704 (v!16434 lt!255526)))))))

(assert (=> b!600106 (= lt!255526 (Some!1541 lt!255519))))

(assert (=> b!600106 (= lt!255519 (tuple2!6881 (_1!3704 (v!16434 lt!255526)) (_2!3704 (v!16434 lt!255526))))))

(declare-fun lt!255520 () Unit!10912)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!264 (List!6004 List!6004 List!6004 List!6004) Unit!10912)

(assert (=> b!600106 (= lt!255520 (lemmaConcatSameAndSameSizesThenSameLists!264 lt!255527 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!600107 () Bool)

(declare-fun tp!186945 () Bool)

(assert (=> b!600107 (= e!363501 (and tp_is_empty!3405 tp!186945))))

(declare-fun b!600108 () Bool)

(declare-fun res!259506 () Bool)

(assert (=> b!600108 (=> res!259506 e!363492)))

(assert (=> b!600108 (= res!259506 (not (= input!2705 lt!255517)))))

(declare-fun b!600109 () Bool)

(declare-fun res!259502 () Bool)

(assert (=> b!600109 (=> (not res!259502) (not e!363503))))

(declare-fun isEmpty!4328 (List!6006) Bool)

(assert (=> b!600109 (= res!259502 (not (isEmpty!4328 rules!3103)))))

(assert (= (and start!56920 res!259501) b!600109))

(assert (= (and b!600109 res!259502) b!600104))

(assert (= (and b!600104 res!259493) b!600091))

(assert (= (and b!600091 res!259504) b!600085))

(assert (= (and b!600085 res!259497) b!600092))

(assert (= (and b!600092 res!259494) b!600090))

(assert (= (and b!600090 res!259498) b!600088))

(assert (= (and b!600088 res!259507) b!600101))

(assert (= (and b!600101 res!259503) b!600106))

(assert (= (and b!600106 c!111422) b!600102))

(assert (= (and b!600106 (not c!111422)) b!600096))

(assert (= (and b!600106 res!259505) b!600098))

(assert (= (and b!600098 res!259499) b!600083))

(assert (= (and b!600106 (not res!259492)) b!600097))

(assert (= (and b!600097 res!259495) b!600100))

(assert (= (and b!600100 res!259496) b!600093))

(assert (= (and b!600097 (not res!259508)) b!600108))

(assert (= (and b!600108 (not res!259506)) b!600087))

(assert (= (and b!600087 (not res!259500)) b!600105))

(assert (= (and start!56920 ((_ is Cons!5994) suffix!1342)) b!600084))

(assert (= b!600095 b!600089))

(assert (= b!600094 b!600095))

(assert (= (and start!56920 ((_ is Cons!5996) rules!3103)) b!600094))

(assert (= b!600086 b!600103))

(assert (= b!600099 b!600086))

(assert (= start!56920 b!600099))

(assert (= (and start!56920 ((_ is Cons!5994) input!2705)) b!600107))

(declare-fun m!864159 () Bool)

(assert (=> b!600098 m!864159))

(declare-fun m!864161 () Bool)

(assert (=> b!600097 m!864161))

(declare-fun m!864163 () Bool)

(assert (=> b!600097 m!864163))

(declare-fun m!864165 () Bool)

(assert (=> b!600097 m!864165))

(declare-fun m!864167 () Bool)

(assert (=> b!600097 m!864167))

(assert (=> b!600097 m!864167))

(declare-fun m!864169 () Bool)

(assert (=> b!600097 m!864169))

(declare-fun m!864171 () Bool)

(assert (=> b!600092 m!864171))

(declare-fun m!864173 () Bool)

(assert (=> b!600092 m!864173))

(declare-fun m!864175 () Bool)

(assert (=> b!600092 m!864175))

(declare-fun m!864177 () Bool)

(assert (=> b!600101 m!864177))

(declare-fun m!864179 () Bool)

(assert (=> b!600090 m!864179))

(declare-fun m!864181 () Bool)

(assert (=> b!600085 m!864181))

(assert (=> b!600085 m!864181))

(declare-fun m!864183 () Bool)

(assert (=> b!600085 m!864183))

(declare-fun m!864185 () Bool)

(assert (=> b!600109 m!864185))

(declare-fun m!864187 () Bool)

(assert (=> b!600099 m!864187))

(declare-fun m!864189 () Bool)

(assert (=> b!600087 m!864189))

(declare-fun m!864191 () Bool)

(assert (=> b!600106 m!864191))

(declare-fun m!864193 () Bool)

(assert (=> b!600106 m!864193))

(declare-fun m!864195 () Bool)

(assert (=> b!600106 m!864195))

(declare-fun m!864197 () Bool)

(assert (=> b!600106 m!864197))

(declare-fun m!864199 () Bool)

(assert (=> b!600106 m!864199))

(declare-fun m!864201 () Bool)

(assert (=> b!600106 m!864201))

(declare-fun m!864203 () Bool)

(assert (=> b!600106 m!864203))

(declare-fun m!864205 () Bool)

(assert (=> b!600106 m!864205))

(declare-fun m!864207 () Bool)

(assert (=> b!600106 m!864207))

(declare-fun m!864209 () Bool)

(assert (=> b!600106 m!864209))

(declare-fun m!864211 () Bool)

(assert (=> b!600106 m!864211))

(declare-fun m!864213 () Bool)

(assert (=> b!600106 m!864213))

(declare-fun m!864215 () Bool)

(assert (=> b!600106 m!864215))

(declare-fun m!864217 () Bool)

(assert (=> b!600106 m!864217))

(declare-fun m!864219 () Bool)

(assert (=> b!600106 m!864219))

(declare-fun m!864221 () Bool)

(assert (=> b!600106 m!864221))

(declare-fun m!864223 () Bool)

(assert (=> b!600106 m!864223))

(declare-fun m!864225 () Bool)

(assert (=> b!600106 m!864225))

(declare-fun m!864227 () Bool)

(assert (=> b!600106 m!864227))

(declare-fun m!864229 () Bool)

(assert (=> b!600106 m!864229))

(declare-fun m!864231 () Bool)

(assert (=> b!600106 m!864231))

(declare-fun m!864233 () Bool)

(assert (=> b!600106 m!864233))

(declare-fun m!864235 () Bool)

(assert (=> b!600106 m!864235))

(declare-fun m!864237 () Bool)

(assert (=> b!600106 m!864237))

(declare-fun m!864239 () Bool)

(assert (=> b!600106 m!864239))

(declare-fun m!864241 () Bool)

(assert (=> b!600106 m!864241))

(declare-fun m!864243 () Bool)

(assert (=> b!600106 m!864243))

(assert (=> b!600106 m!864217))

(declare-fun m!864245 () Bool)

(assert (=> b!600105 m!864245))

(declare-fun m!864247 () Bool)

(assert (=> start!56920 m!864247))

(declare-fun m!864249 () Bool)

(assert (=> b!600095 m!864249))

(declare-fun m!864251 () Bool)

(assert (=> b!600095 m!864251))

(declare-fun m!864253 () Bool)

(assert (=> b!600086 m!864253))

(declare-fun m!864255 () Bool)

(assert (=> b!600086 m!864255))

(declare-fun m!864257 () Bool)

(assert (=> b!600100 m!864257))

(declare-fun m!864259 () Bool)

(assert (=> b!600088 m!864259))

(declare-fun m!864261 () Bool)

(assert (=> b!600091 m!864261))

(declare-fun m!864263 () Bool)

(assert (=> b!600104 m!864263))

(check-sat (not b!600100) (not b!600084) (not start!56920) (not b_next!17071) (not b!600087) (not b!600095) (not b!600107) (not b!600092) b_and!59247 (not b!600098) (not b!600086) (not b!600094) (not b!600104) (not b_next!17073) (not b!600088) b_and!59245 (not b_next!17075) (not b!600090) tp_is_empty!3405 (not b!600109) b_and!59249 (not b!600101) (not b!600085) (not b!600105) (not b!600106) (not b!600091) (not b_next!17069) b_and!59243 (not b!600097) (not b!600099))
(check-sat (not b_next!17071) b_and!59247 (not b_next!17073) b_and!59245 (not b_next!17075) b_and!59249 (not b_next!17069) b_and!59243)
