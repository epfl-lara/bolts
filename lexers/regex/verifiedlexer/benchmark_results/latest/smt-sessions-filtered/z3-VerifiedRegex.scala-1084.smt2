; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55692 () Bool)

(assert start!55692)

(declare-fun b!592540 () Bool)

(declare-fun b_free!16677 () Bool)

(declare-fun b_next!16693 () Bool)

(assert (=> b!592540 (= b_free!16677 (not b_next!16693))))

(declare-fun tp!184815 () Bool)

(declare-fun b_and!58419 () Bool)

(assert (=> b!592540 (= tp!184815 b_and!58419)))

(declare-fun b_free!16679 () Bool)

(declare-fun b_next!16695 () Bool)

(assert (=> b!592540 (= b_free!16679 (not b_next!16695))))

(declare-fun tp!184819 () Bool)

(declare-fun b_and!58421 () Bool)

(assert (=> b!592540 (= tp!184819 b_and!58421)))

(declare-fun b!592528 () Bool)

(declare-fun b_free!16681 () Bool)

(declare-fun b_next!16697 () Bool)

(assert (=> b!592528 (= b_free!16681 (not b_next!16697))))

(declare-fun tp!184811 () Bool)

(declare-fun b_and!58423 () Bool)

(assert (=> b!592528 (= tp!184811 b_and!58423)))

(declare-fun b_free!16683 () Bool)

(declare-fun b_next!16699 () Bool)

(assert (=> b!592528 (= b_free!16683 (not b_next!16699))))

(declare-fun tp!184813 () Bool)

(declare-fun b_and!58425 () Bool)

(assert (=> b!592528 (= tp!184813 b_and!58425)))

(declare-fun b!592523 () Bool)

(declare-fun e!358387 () Bool)

(declare-fun tp_is_empty!3333 () Bool)

(declare-fun tp!184814 () Bool)

(assert (=> b!592523 (= e!358387 (and tp_is_empty!3333 tp!184814))))

(declare-fun b!592524 () Bool)

(declare-fun res!255540 () Bool)

(declare-fun e!358378 () Bool)

(assert (=> b!592524 (=> (not res!255540) (not e!358378))))

(declare-datatypes ((C!3900 0))(
  ( (C!3901 (val!2176 Int)) )
))
(declare-datatypes ((Regex!1489 0))(
  ( (ElementMatch!1489 (c!110455 C!3900)) (Concat!2668 (regOne!3490 Regex!1489) (regTwo!3490 Regex!1489)) (EmptyExpr!1489) (Star!1489 (reg!1818 Regex!1489)) (EmptyLang!1489) (Union!1489 (regOne!3491 Regex!1489) (regTwo!3491 Regex!1489)) )
))
(declare-datatypes ((String!7638 0))(
  ( (String!7639 (value!37758 String)) )
))
(declare-datatypes ((List!5878 0))(
  ( (Nil!5868) (Cons!5868 (h!11269 (_ BitVec 16)) (t!79101 List!5878)) )
))
(declare-datatypes ((TokenValue!1179 0))(
  ( (FloatLiteralValue!2358 (text!8698 List!5878)) (TokenValueExt!1178 (__x!4256 Int)) (Broken!5895 (value!37759 List!5878)) (Object!1188) (End!1179) (Def!1179) (Underscore!1179) (Match!1179) (Else!1179) (Error!1179) (Case!1179) (If!1179) (Extends!1179) (Abstract!1179) (Class!1179) (Val!1179) (DelimiterValue!2358 (del!1239 List!5878)) (KeywordValue!1185 (value!37760 List!5878)) (CommentValue!2358 (value!37761 List!5878)) (WhitespaceValue!2358 (value!37762 List!5878)) (IndentationValue!1179 (value!37763 List!5878)) (String!7640) (Int32!1179) (Broken!5896 (value!37764 List!5878)) (Boolean!1180) (Unit!10664) (OperatorValue!1182 (op!1239 List!5878)) (IdentifierValue!2358 (value!37765 List!5878)) (IdentifierValue!2359 (value!37766 List!5878)) (WhitespaceValue!2359 (value!37767 List!5878)) (True!2358) (False!2358) (Broken!5897 (value!37768 List!5878)) (Broken!5898 (value!37769 List!5878)) (True!2359) (RightBrace!1179) (RightBracket!1179) (Colon!1179) (Null!1179) (Comma!1179) (LeftBracket!1179) (False!2359) (LeftBrace!1179) (ImaginaryLiteralValue!1179 (text!8699 List!5878)) (StringLiteralValue!3537 (value!37770 List!5878)) (EOFValue!1179 (value!37771 List!5878)) (IdentValue!1179 (value!37772 List!5878)) (DelimiterValue!2359 (value!37773 List!5878)) (DedentValue!1179 (value!37774 List!5878)) (NewLineValue!1179 (value!37775 List!5878)) (IntegerValue!3537 (value!37776 (_ BitVec 32)) (text!8700 List!5878)) (IntegerValue!3538 (value!37777 Int) (text!8701 List!5878)) (Times!1179) (Or!1179) (Equal!1179) (Minus!1179) (Broken!5899 (value!37778 List!5878)) (And!1179) (Div!1179) (LessEqual!1179) (Mod!1179) (Concat!2669) (Not!1179) (Plus!1179) (SpaceValue!1179 (value!37779 List!5878)) (IntegerValue!3539 (value!37780 Int) (text!8702 List!5878)) (StringLiteralValue!3538 (text!8703 List!5878)) (FloatLiteralValue!2359 (text!8704 List!5878)) (BytesLiteralValue!1179 (value!37781 List!5878)) (CommentValue!2359 (value!37782 List!5878)) (StringLiteralValue!3539 (value!37783 List!5878)) (ErrorTokenValue!1179 (msg!1240 List!5878)) )
))
(declare-datatypes ((List!5879 0))(
  ( (Nil!5869) (Cons!5869 (h!11270 C!3900) (t!79102 List!5879)) )
))
(declare-datatypes ((IArray!3745 0))(
  ( (IArray!3746 (innerList!1930 List!5879)) )
))
(declare-datatypes ((Conc!1872 0))(
  ( (Node!1872 (left!4758 Conc!1872) (right!5088 Conc!1872) (csize!3974 Int) (cheight!2083 Int)) (Leaf!2957 (xs!4509 IArray!3745) (csize!3975 Int)) (Empty!1872) )
))
(declare-datatypes ((BalanceConc!3752 0))(
  ( (BalanceConc!3753 (c!110456 Conc!1872)) )
))
(declare-datatypes ((TokenValueInjection!2126 0))(
  ( (TokenValueInjection!2127 (toValue!2042 Int) (toChars!1901 Int)) )
))
(declare-datatypes ((Rule!2110 0))(
  ( (Rule!2111 (regex!1155 Regex!1489) (tag!1417 String!7638) (isSeparator!1155 Bool) (transformation!1155 TokenValueInjection!2126)) )
))
(declare-datatypes ((List!5880 0))(
  ( (Nil!5870) (Cons!5870 (h!11271 Rule!2110) (t!79103 List!5880)) )
))
(declare-fun rules!3103 () List!5880)

(declare-fun isEmpty!4237 (List!5880) Bool)

(assert (=> b!592524 (= res!255540 (not (isEmpty!4237 rules!3103)))))

(declare-fun b!592525 () Bool)

(declare-fun e!358376 () Bool)

(assert (=> b!592525 (= e!358378 e!358376)))

(declare-fun res!255535 () Bool)

(assert (=> b!592525 (=> (not res!255535) (not e!358376))))

(declare-fun lt!251238 () List!5879)

(declare-fun input!2705 () List!5879)

(assert (=> b!592525 (= res!255535 (= lt!251238 input!2705))))

(declare-datatypes ((Token!2046 0))(
  ( (Token!2047 (value!37784 TokenValue!1179) (rule!1923 Rule!2110) (size!4642 Int) (originalCharacters!1194 List!5879)) )
))
(declare-fun token!491 () Token!2046)

(declare-fun list!2456 (BalanceConc!3752) List!5879)

(declare-fun charsOf!784 (Token!2046) BalanceConc!3752)

(assert (=> b!592525 (= lt!251238 (list!2456 (charsOf!784 token!491)))))

(declare-fun lt!251223 () Int)

(declare-fun e!358389 () Bool)

(declare-datatypes ((tuple2!6800 0))(
  ( (tuple2!6801 (_1!3664 Token!2046) (_2!3664 List!5879)) )
))
(declare-datatypes ((Option!1506 0))(
  ( (None!1505) (Some!1505 (v!16390 tuple2!6800)) )
))
(declare-fun lt!251233 () Option!1506)

(declare-fun lt!251228 () List!5879)

(declare-fun b!592526 () Bool)

(assert (=> b!592526 (= e!358389 (and (= (size!4642 (_1!3664 (v!16390 lt!251233))) lt!251223) (= (originalCharacters!1194 (_1!3664 (v!16390 lt!251233))) lt!251228)))))

(declare-fun b!592527 () Bool)

(declare-fun e!358372 () Bool)

(assert (=> b!592527 (= e!358376 e!358372)))

(declare-fun res!255534 () Bool)

(assert (=> b!592527 (=> (not res!255534) (not e!358372))))

(declare-fun lt!251242 () Option!1506)

(declare-fun isDefined!1317 (Option!1506) Bool)

(assert (=> b!592527 (= res!255534 (isDefined!1317 lt!251242))))

(declare-datatypes ((LexerInterface!1041 0))(
  ( (LexerInterfaceExt!1038 (__x!4257 Int)) (Lexer!1039) )
))
(declare-fun thiss!22590 () LexerInterface!1041)

(declare-fun lt!251225 () List!5879)

(declare-fun maxPrefix!739 (LexerInterface!1041 List!5880 List!5879) Option!1506)

(assert (=> b!592527 (= lt!251242 (maxPrefix!739 thiss!22590 rules!3103 lt!251225))))

(declare-fun suffix!1342 () List!5879)

(declare-fun ++!1643 (List!5879 List!5879) List!5879)

(assert (=> b!592527 (= lt!251225 (++!1643 input!2705 suffix!1342))))

(declare-fun e!358381 () Bool)

(assert (=> b!592528 (= e!358381 (and tp!184811 tp!184813))))

(declare-fun b!592529 () Bool)

(declare-fun res!255541 () Bool)

(declare-fun e!358375 () Bool)

(assert (=> b!592529 (=> (not res!255541) (not e!358375))))

(assert (=> b!592529 (= res!255541 (= (++!1643 lt!251238 suffix!1342) lt!251225))))

(declare-fun b!592530 () Bool)

(declare-fun res!255537 () Bool)

(assert (=> b!592530 (=> (not res!255537) (not e!358389))))

(declare-fun size!4643 (List!5879) Int)

(assert (=> b!592530 (= res!255537 (= (size!4642 (_1!3664 (v!16390 lt!251233))) (size!4643 (originalCharacters!1194 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun b!592531 () Bool)

(declare-fun res!255533 () Bool)

(assert (=> b!592531 (=> (not res!255533) (not e!358378))))

(declare-fun rulesInvariant!1004 (LexerInterface!1041 List!5880) Bool)

(assert (=> b!592531 (= res!255533 (rulesInvariant!1004 thiss!22590 rules!3103))))

(declare-fun e!358386 () Bool)

(declare-fun tp!184818 () Bool)

(declare-fun b!592532 () Bool)

(declare-fun inv!7428 (String!7638) Bool)

(declare-fun inv!7431 (TokenValueInjection!2126) Bool)

(assert (=> b!592532 (= e!358386 (and tp!184818 (inv!7428 (tag!1417 (rule!1923 token!491))) (inv!7431 (transformation!1155 (rule!1923 token!491))) e!358381))))

(declare-fun res!255542 () Bool)

(assert (=> start!55692 (=> (not res!255542) (not e!358378))))

(get-info :version)

(assert (=> start!55692 (= res!255542 ((_ is Lexer!1039) thiss!22590))))

(assert (=> start!55692 e!358378))

(declare-fun e!358373 () Bool)

(assert (=> start!55692 e!358373))

(declare-fun e!358385 () Bool)

(assert (=> start!55692 e!358385))

(declare-fun e!358374 () Bool)

(declare-fun inv!7432 (Token!2046) Bool)

(assert (=> start!55692 (and (inv!7432 token!491) e!358374)))

(assert (=> start!55692 true))

(assert (=> start!55692 e!358387))

(declare-fun b!592533 () Bool)

(declare-datatypes ((Unit!10665 0))(
  ( (Unit!10666) )
))
(declare-fun e!358383 () Unit!10665)

(declare-fun Unit!10667 () Unit!10665)

(assert (=> b!592533 (= e!358383 Unit!10667)))

(assert (=> b!592533 false))

(declare-fun b!592534 () Bool)

(declare-fun tp!184812 () Bool)

(assert (=> b!592534 (= e!358373 (and tp_is_empty!3333 tp!184812))))

(declare-fun lt!251224 () TokenValue!1179)

(declare-fun b!592535 () Bool)

(assert (=> b!592535 (= e!358375 (not (inv!7432 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))

(assert (=> b!592535 e!358389))

(declare-fun res!255539 () Bool)

(assert (=> b!592535 (=> (not res!255539) (not e!358389))))

(assert (=> b!592535 (= res!255539 (= (value!37784 (_1!3664 (v!16390 lt!251233))) lt!251224))))

(declare-fun apply!1408 (TokenValueInjection!2126 BalanceConc!3752) TokenValue!1179)

(declare-fun seqFromList!1331 (List!5879) BalanceConc!3752)

(assert (=> b!592535 (= lt!251224 (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))) (seqFromList!1331 lt!251228)))))

(declare-fun lt!251226 () Unit!10665)

(declare-fun lemmaInv!263 (TokenValueInjection!2126) Unit!10665)

(assert (=> b!592535 (= lt!251226 (lemmaInv!263 (transformation!1155 (rule!1923 token!491))))))

(declare-fun lt!251230 () Unit!10665)

(assert (=> b!592535 (= lt!251230 (lemmaInv!263 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun ruleValid!353 (LexerInterface!1041 Rule!2110) Bool)

(assert (=> b!592535 (ruleValid!353 thiss!22590 (rule!1923 token!491))))

(declare-fun lt!251231 () Unit!10665)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!200 (LexerInterface!1041 Rule!2110 List!5880) Unit!10665)

(assert (=> b!592535 (= lt!251231 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!200 thiss!22590 (rule!1923 token!491) rules!3103))))

(assert (=> b!592535 (ruleValid!353 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233))))))

(declare-fun lt!251235 () Unit!10665)

(assert (=> b!592535 (= lt!251235 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!200 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233))) rules!3103))))

(declare-fun isPrefix!783 (List!5879 List!5879) Bool)

(assert (=> b!592535 (isPrefix!783 input!2705 input!2705)))

(declare-fun lt!251236 () Unit!10665)

(declare-fun lemmaIsPrefixRefl!519 (List!5879 List!5879) Unit!10665)

(assert (=> b!592535 (= lt!251236 (lemmaIsPrefixRefl!519 input!2705 input!2705))))

(declare-fun lt!251227 () List!5879)

(assert (=> b!592535 (= (_2!3664 (v!16390 lt!251233)) lt!251227)))

(declare-fun lt!251237 () Unit!10665)

(declare-fun lemmaSamePrefixThenSameSuffix!496 (List!5879 List!5879 List!5879 List!5879 List!5879) Unit!10665)

(assert (=> b!592535 (= lt!251237 (lemmaSamePrefixThenSameSuffix!496 lt!251228 (_2!3664 (v!16390 lt!251233)) lt!251228 lt!251227 input!2705))))

(declare-fun getSuffix!300 (List!5879 List!5879) List!5879)

(assert (=> b!592535 (= lt!251227 (getSuffix!300 input!2705 lt!251228))))

(assert (=> b!592535 (isPrefix!783 lt!251228 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))))

(declare-fun lt!251241 () Unit!10665)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!628 (List!5879 List!5879) Unit!10665)

(assert (=> b!592535 (= lt!251241 (lemmaConcatTwoListThenFirstIsPrefix!628 lt!251228 (_2!3664 (v!16390 lt!251233))))))

(declare-fun lt!251234 () Unit!10665)

(declare-fun lemmaCharactersSize!214 (Token!2046) Unit!10665)

(assert (=> b!592535 (= lt!251234 (lemmaCharactersSize!214 token!491))))

(declare-fun lt!251239 () Unit!10665)

(assert (=> b!592535 (= lt!251239 (lemmaCharactersSize!214 (_1!3664 (v!16390 lt!251233))))))

(declare-fun lt!251232 () Unit!10665)

(assert (=> b!592535 (= lt!251232 e!358383)))

(declare-fun c!110454 () Bool)

(assert (=> b!592535 (= c!110454 (> lt!251223 (size!4643 lt!251238)))))

(assert (=> b!592535 (= lt!251223 (size!4643 lt!251228))))

(assert (=> b!592535 (= lt!251228 (list!2456 (charsOf!784 (_1!3664 (v!16390 lt!251233)))))))

(assert (=> b!592535 (= lt!251233 (Some!1505 (v!16390 lt!251233)))))

(declare-fun lt!251229 () Unit!10665)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!228 (List!5879 List!5879 List!5879 List!5879) Unit!10665)

(assert (=> b!592535 (= lt!251229 (lemmaConcatSameAndSameSizesThenSameLists!228 lt!251238 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!592536 () Bool)

(declare-fun e!358384 () Bool)

(declare-fun tp!184816 () Bool)

(assert (=> b!592536 (= e!358385 (and e!358384 tp!184816))))

(declare-fun b!592537 () Bool)

(declare-fun e!358380 () Bool)

(assert (=> b!592537 (= e!358380 e!358375)))

(declare-fun res!255532 () Bool)

(assert (=> b!592537 (=> (not res!255532) (not e!358375))))

(assert (=> b!592537 (= res!255532 ((_ is Some!1505) lt!251233))))

(assert (=> b!592537 (= lt!251233 (maxPrefix!739 thiss!22590 rules!3103 input!2705))))

(declare-fun e!358377 () Bool)

(declare-fun b!592538 () Bool)

(declare-fun tp!184820 () Bool)

(assert (=> b!592538 (= e!358384 (and tp!184820 (inv!7428 (tag!1417 (h!11271 rules!3103))) (inv!7431 (transformation!1155 (h!11271 rules!3103))) e!358377))))

(declare-fun b!592539 () Bool)

(declare-fun res!255536 () Bool)

(assert (=> b!592539 (=> (not res!255536) (not e!358378))))

(declare-fun isEmpty!4238 (List!5879) Bool)

(assert (=> b!592539 (= res!255536 (not (isEmpty!4238 input!2705)))))

(assert (=> b!592540 (= e!358377 (and tp!184815 tp!184819))))

(declare-fun b!592541 () Bool)

(assert (=> b!592541 (= e!358372 e!358380)))

(declare-fun res!255538 () Bool)

(assert (=> b!592541 (=> (not res!255538) (not e!358380))))

(declare-fun lt!251240 () tuple2!6800)

(assert (=> b!592541 (= res!255538 (and (= (_1!3664 lt!251240) token!491) (= (_2!3664 lt!251240) suffix!1342)))))

(declare-fun get!2247 (Option!1506) tuple2!6800)

(assert (=> b!592541 (= lt!251240 (get!2247 lt!251242))))

(declare-fun b!592542 () Bool)

(declare-fun Unit!10668 () Unit!10665)

(assert (=> b!592542 (= e!358383 Unit!10668)))

(declare-fun tp!184817 () Bool)

(declare-fun b!592543 () Bool)

(declare-fun inv!21 (TokenValue!1179) Bool)

(assert (=> b!592543 (= e!358374 (and (inv!21 (value!37784 token!491)) e!358386 tp!184817))))

(assert (= (and start!55692 res!255542) b!592524))

(assert (= (and b!592524 res!255540) b!592531))

(assert (= (and b!592531 res!255533) b!592539))

(assert (= (and b!592539 res!255536) b!592525))

(assert (= (and b!592525 res!255535) b!592527))

(assert (= (and b!592527 res!255534) b!592541))

(assert (= (and b!592541 res!255538) b!592537))

(assert (= (and b!592537 res!255532) b!592529))

(assert (= (and b!592529 res!255541) b!592535))

(assert (= (and b!592535 c!110454) b!592533))

(assert (= (and b!592535 (not c!110454)) b!592542))

(assert (= (and b!592535 res!255539) b!592530))

(assert (= (and b!592530 res!255537) b!592526))

(assert (= (and start!55692 ((_ is Cons!5869) suffix!1342)) b!592534))

(assert (= b!592538 b!592540))

(assert (= b!592536 b!592538))

(assert (= (and start!55692 ((_ is Cons!5870) rules!3103)) b!592536))

(assert (= b!592532 b!592528))

(assert (= b!592543 b!592532))

(assert (= start!55692 b!592543))

(assert (= (and start!55692 ((_ is Cons!5869) input!2705)) b!592523))

(declare-fun m!854067 () Bool)

(assert (=> b!592527 m!854067))

(declare-fun m!854069 () Bool)

(assert (=> b!592527 m!854069))

(declare-fun m!854071 () Bool)

(assert (=> b!592527 m!854071))

(declare-fun m!854073 () Bool)

(assert (=> b!592530 m!854073))

(declare-fun m!854075 () Bool)

(assert (=> b!592524 m!854075))

(declare-fun m!854077 () Bool)

(assert (=> b!592538 m!854077))

(declare-fun m!854079 () Bool)

(assert (=> b!592538 m!854079))

(declare-fun m!854081 () Bool)

(assert (=> b!592537 m!854081))

(declare-fun m!854083 () Bool)

(assert (=> b!592543 m!854083))

(declare-fun m!854085 () Bool)

(assert (=> b!592539 m!854085))

(declare-fun m!854087 () Bool)

(assert (=> start!55692 m!854087))

(declare-fun m!854089 () Bool)

(assert (=> b!592531 m!854089))

(declare-fun m!854091 () Bool)

(assert (=> b!592525 m!854091))

(assert (=> b!592525 m!854091))

(declare-fun m!854093 () Bool)

(assert (=> b!592525 m!854093))

(declare-fun m!854095 () Bool)

(assert (=> b!592535 m!854095))

(declare-fun m!854097 () Bool)

(assert (=> b!592535 m!854097))

(declare-fun m!854099 () Bool)

(assert (=> b!592535 m!854099))

(declare-fun m!854101 () Bool)

(assert (=> b!592535 m!854101))

(declare-fun m!854103 () Bool)

(assert (=> b!592535 m!854103))

(declare-fun m!854105 () Bool)

(assert (=> b!592535 m!854105))

(declare-fun m!854107 () Bool)

(assert (=> b!592535 m!854107))

(declare-fun m!854109 () Bool)

(assert (=> b!592535 m!854109))

(declare-fun m!854111 () Bool)

(assert (=> b!592535 m!854111))

(declare-fun m!854113 () Bool)

(assert (=> b!592535 m!854113))

(declare-fun m!854115 () Bool)

(assert (=> b!592535 m!854115))

(declare-fun m!854117 () Bool)

(assert (=> b!592535 m!854117))

(assert (=> b!592535 m!854109))

(declare-fun m!854119 () Bool)

(assert (=> b!592535 m!854119))

(declare-fun m!854121 () Bool)

(assert (=> b!592535 m!854121))

(declare-fun m!854123 () Bool)

(assert (=> b!592535 m!854123))

(assert (=> b!592535 m!854097))

(declare-fun m!854125 () Bool)

(assert (=> b!592535 m!854125))

(declare-fun m!854127 () Bool)

(assert (=> b!592535 m!854127))

(declare-fun m!854129 () Bool)

(assert (=> b!592535 m!854129))

(declare-fun m!854131 () Bool)

(assert (=> b!592535 m!854131))

(declare-fun m!854133 () Bool)

(assert (=> b!592535 m!854133))

(declare-fun m!854135 () Bool)

(assert (=> b!592535 m!854135))

(assert (=> b!592535 m!854121))

(declare-fun m!854137 () Bool)

(assert (=> b!592535 m!854137))

(declare-fun m!854139 () Bool)

(assert (=> b!592535 m!854139))

(declare-fun m!854141 () Bool)

(assert (=> b!592529 m!854141))

(declare-fun m!854143 () Bool)

(assert (=> b!592532 m!854143))

(declare-fun m!854145 () Bool)

(assert (=> b!592532 m!854145))

(declare-fun m!854147 () Bool)

(assert (=> b!592541 m!854147))

(check-sat (not b_next!16693) (not b_next!16699) (not b!592537) (not b!592539) b_and!58421 (not b!592527) (not b!592536) (not b!592524) (not b!592523) b_and!58419 (not b!592525) (not start!55692) b_and!58425 (not b!592529) (not b_next!16695) (not b!592530) tp_is_empty!3333 (not b!592535) (not b_next!16697) b_and!58423 (not b!592538) (not b!592543) (not b!592541) (not b!592534) (not b!592532) (not b!592531))
(check-sat (not b_next!16693) (not b_next!16699) (not b_next!16695) b_and!58421 b_and!58419 b_and!58425 (not b_next!16697) b_and!58423)
(get-model)

(declare-fun d!208357 () Bool)

(assert (=> d!208357 (= (inv!7428 (tag!1417 (rule!1923 token!491))) (= (mod (str.len (value!37758 (tag!1417 (rule!1923 token!491)))) 2) 0))))

(assert (=> b!592532 d!208357))

(declare-fun d!208359 () Bool)

(declare-fun res!255550 () Bool)

(declare-fun e!358392 () Bool)

(assert (=> d!208359 (=> (not res!255550) (not e!358392))))

(declare-fun semiInverseModEq!457 (Int Int) Bool)

(assert (=> d!208359 (= res!255550 (semiInverseModEq!457 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))))))

(assert (=> d!208359 (= (inv!7431 (transformation!1155 (rule!1923 token!491))) e!358392)))

(declare-fun b!592546 () Bool)

(declare-fun equivClasses!440 (Int Int) Bool)

(assert (=> b!592546 (= e!358392 (equivClasses!440 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))))))

(assert (= (and d!208359 res!255550) b!592546))

(declare-fun m!854149 () Bool)

(assert (=> d!208359 m!854149))

(declare-fun m!854151 () Bool)

(assert (=> b!592546 m!854151))

(assert (=> b!592532 d!208359))

(declare-fun d!208361 () Bool)

(declare-fun res!255558 () Bool)

(declare-fun e!358395 () Bool)

(assert (=> d!208361 (=> (not res!255558) (not e!358395))))

(assert (=> d!208361 (= res!255558 (not (isEmpty!4238 (originalCharacters!1194 token!491))))))

(assert (=> d!208361 (= (inv!7432 token!491) e!358395)))

(declare-fun b!592551 () Bool)

(declare-fun res!255559 () Bool)

(assert (=> b!592551 (=> (not res!255559) (not e!358395))))

(declare-fun dynLambda!3414 (Int TokenValue!1179) BalanceConc!3752)

(assert (=> b!592551 (= res!255559 (= (originalCharacters!1194 token!491) (list!2456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))))))

(declare-fun b!592552 () Bool)

(assert (=> b!592552 (= e!358395 (= (size!4642 token!491) (size!4643 (originalCharacters!1194 token!491))))))

(assert (= (and d!208361 res!255558) b!592551))

(assert (= (and b!592551 res!255559) b!592552))

(declare-fun b_lambda!23337 () Bool)

(assert (=> (not b_lambda!23337) (not b!592551)))

(declare-fun tb!51763 () Bool)

(declare-fun t!79105 () Bool)

(assert (=> (and b!592540 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 token!491)))) t!79105) tb!51763))

(declare-fun b!592557 () Bool)

(declare-fun e!358398 () Bool)

(declare-fun tp!184823 () Bool)

(declare-fun inv!7435 (Conc!1872) Bool)

(assert (=> b!592557 (= e!358398 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))) tp!184823))))

(declare-fun result!58102 () Bool)

(declare-fun inv!7436 (BalanceConc!3752) Bool)

(assert (=> tb!51763 (= result!58102 (and (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))) e!358398))))

(assert (= tb!51763 b!592557))

(declare-fun m!854155 () Bool)

(assert (=> b!592557 m!854155))

(declare-fun m!854157 () Bool)

(assert (=> tb!51763 m!854157))

(assert (=> b!592551 t!79105))

(declare-fun b_and!58427 () Bool)

(assert (= b_and!58421 (and (=> t!79105 result!58102) b_and!58427)))

(declare-fun t!79107 () Bool)

(declare-fun tb!51765 () Bool)

(assert (=> (and b!592528 (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (rule!1923 token!491)))) t!79107) tb!51765))

(declare-fun result!58106 () Bool)

(assert (= result!58106 result!58102))

(assert (=> b!592551 t!79107))

(declare-fun b_and!58429 () Bool)

(assert (= b_and!58425 (and (=> t!79107 result!58106) b_and!58429)))

(declare-fun m!854159 () Bool)

(assert (=> d!208361 m!854159))

(declare-fun m!854161 () Bool)

(assert (=> b!592551 m!854161))

(assert (=> b!592551 m!854161))

(declare-fun m!854163 () Bool)

(assert (=> b!592551 m!854163))

(declare-fun m!854165 () Bool)

(assert (=> b!592552 m!854165))

(assert (=> start!55692 d!208361))

(declare-fun d!208367 () Bool)

(declare-fun res!255565 () Bool)

(declare-fun e!358407 () Bool)

(assert (=> d!208367 (=> (not res!255565) (not e!358407))))

(declare-fun rulesValid!421 (LexerInterface!1041 List!5880) Bool)

(assert (=> d!208367 (= res!255565 (rulesValid!421 thiss!22590 rules!3103))))

(assert (=> d!208367 (= (rulesInvariant!1004 thiss!22590 rules!3103) e!358407)))

(declare-fun b!592568 () Bool)

(declare-datatypes ((List!5882 0))(
  ( (Nil!5872) (Cons!5872 (h!11273 String!7638) (t!79153 List!5882)) )
))
(declare-fun noDuplicateTag!421 (LexerInterface!1041 List!5880 List!5882) Bool)

(assert (=> b!592568 (= e!358407 (noDuplicateTag!421 thiss!22590 rules!3103 Nil!5872))))

(assert (= (and d!208367 res!255565) b!592568))

(declare-fun m!854179 () Bool)

(assert (=> d!208367 m!854179))

(declare-fun m!854181 () Bool)

(assert (=> b!592568 m!854181))

(assert (=> b!592531 d!208367))

(declare-fun b!592582 () Bool)

(declare-fun e!358418 () Bool)

(declare-fun inv!16 (TokenValue!1179) Bool)

(assert (=> b!592582 (= e!358418 (inv!16 (value!37784 token!491)))))

(declare-fun b!592583 () Bool)

(declare-fun e!358417 () Bool)

(assert (=> b!592583 (= e!358418 e!358417)))

(declare-fun c!110462 () Bool)

(assert (=> b!592583 (= c!110462 ((_ is IntegerValue!3538) (value!37784 token!491)))))

(declare-fun b!592584 () Bool)

(declare-fun res!255571 () Bool)

(declare-fun e!358419 () Bool)

(assert (=> b!592584 (=> res!255571 e!358419)))

(assert (=> b!592584 (= res!255571 (not ((_ is IntegerValue!3539) (value!37784 token!491))))))

(assert (=> b!592584 (= e!358417 e!358419)))

(declare-fun d!208377 () Bool)

(declare-fun c!110461 () Bool)

(assert (=> d!208377 (= c!110461 ((_ is IntegerValue!3537) (value!37784 token!491)))))

(assert (=> d!208377 (= (inv!21 (value!37784 token!491)) e!358418)))

(declare-fun b!592585 () Bool)

(declare-fun inv!17 (TokenValue!1179) Bool)

(assert (=> b!592585 (= e!358417 (inv!17 (value!37784 token!491)))))

(declare-fun b!592586 () Bool)

(declare-fun inv!15 (TokenValue!1179) Bool)

(assert (=> b!592586 (= e!358419 (inv!15 (value!37784 token!491)))))

(assert (= (and d!208377 c!110461) b!592582))

(assert (= (and d!208377 (not c!110461)) b!592583))

(assert (= (and b!592583 c!110462) b!592585))

(assert (= (and b!592583 (not c!110462)) b!592584))

(assert (= (and b!592584 (not res!255571)) b!592586))

(declare-fun m!854187 () Bool)

(assert (=> b!592582 m!854187))

(declare-fun m!854189 () Bool)

(assert (=> b!592585 m!854189))

(declare-fun m!854191 () Bool)

(assert (=> b!592586 m!854191))

(assert (=> b!592543 d!208377))

(declare-fun d!208381 () Bool)

(declare-fun e!358424 () Bool)

(assert (=> d!208381 e!358424))

(declare-fun res!255576 () Bool)

(assert (=> d!208381 (=> (not res!255576) (not e!358424))))

(declare-fun lt!251248 () List!5879)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1057 (List!5879) (InoxSet C!3900))

(assert (=> d!208381 (= res!255576 (= (content!1057 lt!251248) ((_ map or) (content!1057 lt!251238) (content!1057 suffix!1342))))))

(declare-fun e!358425 () List!5879)

(assert (=> d!208381 (= lt!251248 e!358425)))

(declare-fun c!110465 () Bool)

(assert (=> d!208381 (= c!110465 ((_ is Nil!5869) lt!251238))))

(assert (=> d!208381 (= (++!1643 lt!251238 suffix!1342) lt!251248)))

(declare-fun b!592598 () Bool)

(assert (=> b!592598 (= e!358424 (or (not (= suffix!1342 Nil!5869)) (= lt!251248 lt!251238)))))

(declare-fun b!592597 () Bool)

(declare-fun res!255577 () Bool)

(assert (=> b!592597 (=> (not res!255577) (not e!358424))))

(assert (=> b!592597 (= res!255577 (= (size!4643 lt!251248) (+ (size!4643 lt!251238) (size!4643 suffix!1342))))))

(declare-fun b!592596 () Bool)

(assert (=> b!592596 (= e!358425 (Cons!5869 (h!11270 lt!251238) (++!1643 (t!79102 lt!251238) suffix!1342)))))

(declare-fun b!592595 () Bool)

(assert (=> b!592595 (= e!358425 suffix!1342)))

(assert (= (and d!208381 c!110465) b!592595))

(assert (= (and d!208381 (not c!110465)) b!592596))

(assert (= (and d!208381 res!255576) b!592597))

(assert (= (and b!592597 res!255577) b!592598))

(declare-fun m!854193 () Bool)

(assert (=> d!208381 m!854193))

(declare-fun m!854195 () Bool)

(assert (=> d!208381 m!854195))

(declare-fun m!854197 () Bool)

(assert (=> d!208381 m!854197))

(declare-fun m!854199 () Bool)

(assert (=> b!592597 m!854199))

(assert (=> b!592597 m!854117))

(declare-fun m!854201 () Bool)

(assert (=> b!592597 m!854201))

(declare-fun m!854203 () Bool)

(assert (=> b!592596 m!854203))

(assert (=> b!592529 d!208381))

(declare-fun d!208383 () Bool)

(assert (=> d!208383 (= (isEmpty!4238 input!2705) ((_ is Nil!5869) input!2705))))

(assert (=> b!592539 d!208383))

(declare-fun d!208385 () Bool)

(assert (=> d!208385 (= (get!2247 lt!251242) (v!16390 lt!251242))))

(assert (=> b!592541 d!208385))

(declare-fun d!208387 () Bool)

(declare-fun lt!251257 () Int)

(assert (=> d!208387 (>= lt!251257 0)))

(declare-fun e!358430 () Int)

(assert (=> d!208387 (= lt!251257 e!358430)))

(declare-fun c!110470 () Bool)

(assert (=> d!208387 (= c!110470 ((_ is Nil!5869) (originalCharacters!1194 (_1!3664 (v!16390 lt!251233)))))))

(assert (=> d!208387 (= (size!4643 (originalCharacters!1194 (_1!3664 (v!16390 lt!251233)))) lt!251257)))

(declare-fun b!592607 () Bool)

(assert (=> b!592607 (= e!358430 0)))

(declare-fun b!592608 () Bool)

(assert (=> b!592608 (= e!358430 (+ 1 (size!4643 (t!79102 (originalCharacters!1194 (_1!3664 (v!16390 lt!251233)))))))))

(assert (= (and d!208387 c!110470) b!592607))

(assert (= (and d!208387 (not c!110470)) b!592608))

(declare-fun m!854205 () Bool)

(assert (=> b!592608 m!854205))

(assert (=> b!592530 d!208387))

(declare-fun d!208389 () Bool)

(declare-fun e!358527 () Bool)

(assert (=> d!208389 e!358527))

(declare-fun res!255676 () Bool)

(assert (=> d!208389 (=> res!255676 e!358527)))

(declare-fun lt!251316 () Option!1506)

(declare-fun isEmpty!4240 (Option!1506) Bool)

(assert (=> d!208389 (= res!255676 (isEmpty!4240 lt!251316))))

(declare-fun e!358525 () Option!1506)

(assert (=> d!208389 (= lt!251316 e!358525)))

(declare-fun c!110494 () Bool)

(assert (=> d!208389 (= c!110494 (and ((_ is Cons!5870) rules!3103) ((_ is Nil!5870) (t!79103 rules!3103))))))

(declare-fun lt!251319 () Unit!10665)

(declare-fun lt!251320 () Unit!10665)

(assert (=> d!208389 (= lt!251319 lt!251320)))

(assert (=> d!208389 (isPrefix!783 input!2705 input!2705)))

(assert (=> d!208389 (= lt!251320 (lemmaIsPrefixRefl!519 input!2705 input!2705))))

(declare-fun rulesValidInductive!426 (LexerInterface!1041 List!5880) Bool)

(assert (=> d!208389 (rulesValidInductive!426 thiss!22590 rules!3103)))

(assert (=> d!208389 (= (maxPrefix!739 thiss!22590 rules!3103 input!2705) lt!251316)))

(declare-fun b!592787 () Bool)

(declare-fun res!255673 () Bool)

(declare-fun e!358526 () Bool)

(assert (=> b!592787 (=> (not res!255673) (not e!358526))))

(assert (=> b!592787 (= res!255673 (< (size!4643 (_2!3664 (get!2247 lt!251316))) (size!4643 input!2705)))))

(declare-fun call!40344 () Option!1506)

(declare-fun bm!40339 () Bool)

(declare-fun maxPrefixOneRule!422 (LexerInterface!1041 Rule!2110 List!5879) Option!1506)

(assert (=> bm!40339 (= call!40344 (maxPrefixOneRule!422 thiss!22590 (h!11271 rules!3103) input!2705))))

(declare-fun b!592788 () Bool)

(declare-fun contains!1381 (List!5880 Rule!2110) Bool)

(assert (=> b!592788 (= e!358526 (contains!1381 rules!3103 (rule!1923 (_1!3664 (get!2247 lt!251316)))))))

(declare-fun b!592789 () Bool)

(declare-fun lt!251318 () Option!1506)

(declare-fun lt!251317 () Option!1506)

(assert (=> b!592789 (= e!358525 (ite (and ((_ is None!1505) lt!251318) ((_ is None!1505) lt!251317)) None!1505 (ite ((_ is None!1505) lt!251317) lt!251318 (ite ((_ is None!1505) lt!251318) lt!251317 (ite (>= (size!4642 (_1!3664 (v!16390 lt!251318))) (size!4642 (_1!3664 (v!16390 lt!251317)))) lt!251318 lt!251317)))))))

(assert (=> b!592789 (= lt!251318 call!40344)))

(assert (=> b!592789 (= lt!251317 (maxPrefix!739 thiss!22590 (t!79103 rules!3103) input!2705))))

(declare-fun b!592790 () Bool)

(declare-fun res!255674 () Bool)

(assert (=> b!592790 (=> (not res!255674) (not e!358526))))

(assert (=> b!592790 (= res!255674 (= (value!37784 (_1!3664 (get!2247 lt!251316))) (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251316)))))))))

(declare-fun b!592791 () Bool)

(declare-fun res!255672 () Bool)

(assert (=> b!592791 (=> (not res!255672) (not e!358526))))

(declare-fun matchR!618 (Regex!1489 List!5879) Bool)

(assert (=> b!592791 (= res!255672 (matchR!618 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))))))

(declare-fun b!592792 () Bool)

(assert (=> b!592792 (= e!358525 call!40344)))

(declare-fun b!592793 () Bool)

(assert (=> b!592793 (= e!358527 e!358526)))

(declare-fun res!255670 () Bool)

(assert (=> b!592793 (=> (not res!255670) (not e!358526))))

(assert (=> b!592793 (= res!255670 (isDefined!1317 lt!251316))))

(declare-fun b!592794 () Bool)

(declare-fun res!255671 () Bool)

(assert (=> b!592794 (=> (not res!255671) (not e!358526))))

(assert (=> b!592794 (= res!255671 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))) (_2!3664 (get!2247 lt!251316))) input!2705))))

(declare-fun b!592795 () Bool)

(declare-fun res!255675 () Bool)

(assert (=> b!592795 (=> (not res!255675) (not e!358526))))

(assert (=> b!592795 (= res!255675 (= (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))) (originalCharacters!1194 (_1!3664 (get!2247 lt!251316)))))))

(assert (= (and d!208389 c!110494) b!592792))

(assert (= (and d!208389 (not c!110494)) b!592789))

(assert (= (or b!592792 b!592789) bm!40339))

(assert (= (and d!208389 (not res!255676)) b!592793))

(assert (= (and b!592793 res!255670) b!592795))

(assert (= (and b!592795 res!255675) b!592787))

(assert (= (and b!592787 res!255673) b!592794))

(assert (= (and b!592794 res!255671) b!592790))

(assert (= (and b!592790 res!255674) b!592791))

(assert (= (and b!592791 res!255672) b!592788))

(declare-fun m!854409 () Bool)

(assert (=> b!592794 m!854409))

(declare-fun m!854411 () Bool)

(assert (=> b!592794 m!854411))

(assert (=> b!592794 m!854411))

(declare-fun m!854413 () Bool)

(assert (=> b!592794 m!854413))

(assert (=> b!592794 m!854413))

(declare-fun m!854415 () Bool)

(assert (=> b!592794 m!854415))

(assert (=> b!592795 m!854409))

(assert (=> b!592795 m!854411))

(assert (=> b!592795 m!854411))

(assert (=> b!592795 m!854413))

(assert (=> b!592787 m!854409))

(declare-fun m!854417 () Bool)

(assert (=> b!592787 m!854417))

(declare-fun m!854419 () Bool)

(assert (=> b!592787 m!854419))

(declare-fun m!854421 () Bool)

(assert (=> b!592793 m!854421))

(assert (=> b!592788 m!854409))

(declare-fun m!854423 () Bool)

(assert (=> b!592788 m!854423))

(assert (=> b!592791 m!854409))

(assert (=> b!592791 m!854411))

(assert (=> b!592791 m!854411))

(assert (=> b!592791 m!854413))

(assert (=> b!592791 m!854413))

(declare-fun m!854425 () Bool)

(assert (=> b!592791 m!854425))

(declare-fun m!854427 () Bool)

(assert (=> b!592789 m!854427))

(declare-fun m!854429 () Bool)

(assert (=> bm!40339 m!854429))

(declare-fun m!854431 () Bool)

(assert (=> d!208389 m!854431))

(assert (=> d!208389 m!854115))

(assert (=> d!208389 m!854111))

(declare-fun m!854433 () Bool)

(assert (=> d!208389 m!854433))

(assert (=> b!592790 m!854409))

(declare-fun m!854435 () Bool)

(assert (=> b!592790 m!854435))

(assert (=> b!592790 m!854435))

(declare-fun m!854437 () Bool)

(assert (=> b!592790 m!854437))

(assert (=> b!592537 d!208389))

(declare-fun d!208459 () Bool)

(assert (=> d!208459 (= (inv!7428 (tag!1417 (h!11271 rules!3103))) (= (mod (str.len (value!37758 (tag!1417 (h!11271 rules!3103)))) 2) 0))))

(assert (=> b!592538 d!208459))

(declare-fun d!208461 () Bool)

(declare-fun res!255677 () Bool)

(declare-fun e!358528 () Bool)

(assert (=> d!208461 (=> (not res!255677) (not e!358528))))

(assert (=> d!208461 (= res!255677 (semiInverseModEq!457 (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (h!11271 rules!3103)))))))

(assert (=> d!208461 (= (inv!7431 (transformation!1155 (h!11271 rules!3103))) e!358528)))

(declare-fun b!592796 () Bool)

(assert (=> b!592796 (= e!358528 (equivClasses!440 (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (h!11271 rules!3103)))))))

(assert (= (and d!208461 res!255677) b!592796))

(declare-fun m!854439 () Bool)

(assert (=> d!208461 m!854439))

(declare-fun m!854441 () Bool)

(assert (=> b!592796 m!854441))

(assert (=> b!592538 d!208461))

(declare-fun d!208463 () Bool)

(assert (=> d!208463 (= (isDefined!1317 lt!251242) (not (isEmpty!4240 lt!251242)))))

(declare-fun bs!70420 () Bool)

(assert (= bs!70420 d!208463))

(declare-fun m!854443 () Bool)

(assert (=> bs!70420 m!854443))

(assert (=> b!592527 d!208463))

(declare-fun d!208465 () Bool)

(declare-fun e!358531 () Bool)

(assert (=> d!208465 e!358531))

(declare-fun res!255684 () Bool)

(assert (=> d!208465 (=> res!255684 e!358531)))

(declare-fun lt!251321 () Option!1506)

(assert (=> d!208465 (= res!255684 (isEmpty!4240 lt!251321))))

(declare-fun e!358529 () Option!1506)

(assert (=> d!208465 (= lt!251321 e!358529)))

(declare-fun c!110495 () Bool)

(assert (=> d!208465 (= c!110495 (and ((_ is Cons!5870) rules!3103) ((_ is Nil!5870) (t!79103 rules!3103))))))

(declare-fun lt!251324 () Unit!10665)

(declare-fun lt!251325 () Unit!10665)

(assert (=> d!208465 (= lt!251324 lt!251325)))

(assert (=> d!208465 (isPrefix!783 lt!251225 lt!251225)))

(assert (=> d!208465 (= lt!251325 (lemmaIsPrefixRefl!519 lt!251225 lt!251225))))

(assert (=> d!208465 (rulesValidInductive!426 thiss!22590 rules!3103)))

(assert (=> d!208465 (= (maxPrefix!739 thiss!22590 rules!3103 lt!251225) lt!251321)))

(declare-fun b!592797 () Bool)

(declare-fun res!255681 () Bool)

(declare-fun e!358530 () Bool)

(assert (=> b!592797 (=> (not res!255681) (not e!358530))))

(assert (=> b!592797 (= res!255681 (< (size!4643 (_2!3664 (get!2247 lt!251321))) (size!4643 lt!251225)))))

(declare-fun call!40345 () Option!1506)

(declare-fun bm!40340 () Bool)

(assert (=> bm!40340 (= call!40345 (maxPrefixOneRule!422 thiss!22590 (h!11271 rules!3103) lt!251225))))

(declare-fun b!592798 () Bool)

(assert (=> b!592798 (= e!358530 (contains!1381 rules!3103 (rule!1923 (_1!3664 (get!2247 lt!251321)))))))

(declare-fun b!592799 () Bool)

(declare-fun lt!251323 () Option!1506)

(declare-fun lt!251322 () Option!1506)

(assert (=> b!592799 (= e!358529 (ite (and ((_ is None!1505) lt!251323) ((_ is None!1505) lt!251322)) None!1505 (ite ((_ is None!1505) lt!251322) lt!251323 (ite ((_ is None!1505) lt!251323) lt!251322 (ite (>= (size!4642 (_1!3664 (v!16390 lt!251323))) (size!4642 (_1!3664 (v!16390 lt!251322)))) lt!251323 lt!251322)))))))

(assert (=> b!592799 (= lt!251323 call!40345)))

(assert (=> b!592799 (= lt!251322 (maxPrefix!739 thiss!22590 (t!79103 rules!3103) lt!251225))))

(declare-fun b!592800 () Bool)

(declare-fun res!255682 () Bool)

(assert (=> b!592800 (=> (not res!255682) (not e!358530))))

(assert (=> b!592800 (= res!255682 (= (value!37784 (_1!3664 (get!2247 lt!251321))) (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251321)))))))))

(declare-fun b!592801 () Bool)

(declare-fun res!255680 () Bool)

(assert (=> b!592801 (=> (not res!255680) (not e!358530))))

(assert (=> b!592801 (= res!255680 (matchR!618 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))))))

(declare-fun b!592802 () Bool)

(assert (=> b!592802 (= e!358529 call!40345)))

(declare-fun b!592803 () Bool)

(assert (=> b!592803 (= e!358531 e!358530)))

(declare-fun res!255678 () Bool)

(assert (=> b!592803 (=> (not res!255678) (not e!358530))))

(assert (=> b!592803 (= res!255678 (isDefined!1317 lt!251321))))

(declare-fun b!592804 () Bool)

(declare-fun res!255679 () Bool)

(assert (=> b!592804 (=> (not res!255679) (not e!358530))))

(assert (=> b!592804 (= res!255679 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))) (_2!3664 (get!2247 lt!251321))) lt!251225))))

(declare-fun b!592805 () Bool)

(declare-fun res!255683 () Bool)

(assert (=> b!592805 (=> (not res!255683) (not e!358530))))

(assert (=> b!592805 (= res!255683 (= (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))) (originalCharacters!1194 (_1!3664 (get!2247 lt!251321)))))))

(assert (= (and d!208465 c!110495) b!592802))

(assert (= (and d!208465 (not c!110495)) b!592799))

(assert (= (or b!592802 b!592799) bm!40340))

(assert (= (and d!208465 (not res!255684)) b!592803))

(assert (= (and b!592803 res!255678) b!592805))

(assert (= (and b!592805 res!255683) b!592797))

(assert (= (and b!592797 res!255681) b!592804))

(assert (= (and b!592804 res!255679) b!592800))

(assert (= (and b!592800 res!255682) b!592801))

(assert (= (and b!592801 res!255680) b!592798))

(declare-fun m!854445 () Bool)

(assert (=> b!592804 m!854445))

(declare-fun m!854447 () Bool)

(assert (=> b!592804 m!854447))

(assert (=> b!592804 m!854447))

(declare-fun m!854449 () Bool)

(assert (=> b!592804 m!854449))

(assert (=> b!592804 m!854449))

(declare-fun m!854451 () Bool)

(assert (=> b!592804 m!854451))

(assert (=> b!592805 m!854445))

(assert (=> b!592805 m!854447))

(assert (=> b!592805 m!854447))

(assert (=> b!592805 m!854449))

(assert (=> b!592797 m!854445))

(declare-fun m!854453 () Bool)

(assert (=> b!592797 m!854453))

(declare-fun m!854455 () Bool)

(assert (=> b!592797 m!854455))

(declare-fun m!854457 () Bool)

(assert (=> b!592803 m!854457))

(assert (=> b!592798 m!854445))

(declare-fun m!854459 () Bool)

(assert (=> b!592798 m!854459))

(assert (=> b!592801 m!854445))

(assert (=> b!592801 m!854447))

(assert (=> b!592801 m!854447))

(assert (=> b!592801 m!854449))

(assert (=> b!592801 m!854449))

(declare-fun m!854461 () Bool)

(assert (=> b!592801 m!854461))

(declare-fun m!854463 () Bool)

(assert (=> b!592799 m!854463))

(declare-fun m!854465 () Bool)

(assert (=> bm!40340 m!854465))

(declare-fun m!854467 () Bool)

(assert (=> d!208465 m!854467))

(declare-fun m!854469 () Bool)

(assert (=> d!208465 m!854469))

(declare-fun m!854471 () Bool)

(assert (=> d!208465 m!854471))

(assert (=> d!208465 m!854433))

(assert (=> b!592800 m!854445))

(declare-fun m!854473 () Bool)

(assert (=> b!592800 m!854473))

(assert (=> b!592800 m!854473))

(declare-fun m!854475 () Bool)

(assert (=> b!592800 m!854475))

(assert (=> b!592527 d!208465))

(declare-fun d!208467 () Bool)

(declare-fun e!358532 () Bool)

(assert (=> d!208467 e!358532))

(declare-fun res!255685 () Bool)

(assert (=> d!208467 (=> (not res!255685) (not e!358532))))

(declare-fun lt!251326 () List!5879)

(assert (=> d!208467 (= res!255685 (= (content!1057 lt!251326) ((_ map or) (content!1057 input!2705) (content!1057 suffix!1342))))))

(declare-fun e!358533 () List!5879)

(assert (=> d!208467 (= lt!251326 e!358533)))

(declare-fun c!110496 () Bool)

(assert (=> d!208467 (= c!110496 ((_ is Nil!5869) input!2705))))

(assert (=> d!208467 (= (++!1643 input!2705 suffix!1342) lt!251326)))

(declare-fun b!592809 () Bool)

(assert (=> b!592809 (= e!358532 (or (not (= suffix!1342 Nil!5869)) (= lt!251326 input!2705)))))

(declare-fun b!592808 () Bool)

(declare-fun res!255686 () Bool)

(assert (=> b!592808 (=> (not res!255686) (not e!358532))))

(assert (=> b!592808 (= res!255686 (= (size!4643 lt!251326) (+ (size!4643 input!2705) (size!4643 suffix!1342))))))

(declare-fun b!592807 () Bool)

(assert (=> b!592807 (= e!358533 (Cons!5869 (h!11270 input!2705) (++!1643 (t!79102 input!2705) suffix!1342)))))

(declare-fun b!592806 () Bool)

(assert (=> b!592806 (= e!358533 suffix!1342)))

(assert (= (and d!208467 c!110496) b!592806))

(assert (= (and d!208467 (not c!110496)) b!592807))

(assert (= (and d!208467 res!255685) b!592808))

(assert (= (and b!592808 res!255686) b!592809))

(declare-fun m!854477 () Bool)

(assert (=> d!208467 m!854477))

(declare-fun m!854479 () Bool)

(assert (=> d!208467 m!854479))

(assert (=> d!208467 m!854197))

(declare-fun m!854481 () Bool)

(assert (=> b!592808 m!854481))

(assert (=> b!592808 m!854419))

(assert (=> b!592808 m!854201))

(declare-fun m!854483 () Bool)

(assert (=> b!592807 m!854483))

(assert (=> b!592527 d!208467))

(declare-fun d!208469 () Bool)

(assert (=> d!208469 (= (isEmpty!4237 rules!3103) ((_ is Nil!5870) rules!3103))))

(assert (=> b!592524 d!208469))

(declare-fun d!208471 () Bool)

(declare-fun list!2458 (Conc!1872) List!5879)

(assert (=> d!208471 (= (list!2456 (charsOf!784 token!491)) (list!2458 (c!110456 (charsOf!784 token!491))))))

(declare-fun bs!70421 () Bool)

(assert (= bs!70421 d!208471))

(declare-fun m!854485 () Bool)

(assert (=> bs!70421 m!854485))

(assert (=> b!592525 d!208471))

(declare-fun d!208473 () Bool)

(declare-fun lt!251329 () BalanceConc!3752)

(assert (=> d!208473 (= (list!2456 lt!251329) (originalCharacters!1194 token!491))))

(assert (=> d!208473 (= lt!251329 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))))

(assert (=> d!208473 (= (charsOf!784 token!491) lt!251329)))

(declare-fun b_lambda!23353 () Bool)

(assert (=> (not b_lambda!23353) (not d!208473)))

(assert (=> d!208473 t!79105))

(declare-fun b_and!58455 () Bool)

(assert (= b_and!58427 (and (=> t!79105 result!58102) b_and!58455)))

(assert (=> d!208473 t!79107))

(declare-fun b_and!58457 () Bool)

(assert (= b_and!58429 (and (=> t!79107 result!58106) b_and!58457)))

(declare-fun m!854487 () Bool)

(assert (=> d!208473 m!854487))

(assert (=> d!208473 m!854161))

(assert (=> b!592525 d!208473))

(declare-fun d!208475 () Bool)

(declare-fun dynLambda!3416 (Int BalanceConc!3752) TokenValue!1179)

(assert (=> d!208475 (= (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))) (seqFromList!1331 lt!251228)) (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228)))))

(declare-fun b_lambda!23355 () Bool)

(assert (=> (not b_lambda!23355) (not d!208475)))

(declare-fun t!79134 () Bool)

(declare-fun tb!51791 () Bool)

(assert (=> (and b!592540 (= (toValue!2042 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79134) tb!51791))

(declare-fun result!58142 () Bool)

(assert (=> tb!51791 (= result!58142 (inv!21 (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228))))))

(declare-fun m!854489 () Bool)

(assert (=> tb!51791 m!854489))

(assert (=> d!208475 t!79134))

(declare-fun b_and!58459 () Bool)

(assert (= b_and!58419 (and (=> t!79134 result!58142) b_and!58459)))

(declare-fun t!79136 () Bool)

(declare-fun tb!51793 () Bool)

(assert (=> (and b!592528 (= (toValue!2042 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79136) tb!51793))

(declare-fun result!58146 () Bool)

(assert (= result!58146 result!58142))

(assert (=> d!208475 t!79136))

(declare-fun b_and!58461 () Bool)

(assert (= b_and!58423 (and (=> t!79136 result!58146) b_and!58461)))

(assert (=> d!208475 m!854097))

(declare-fun m!854491 () Bool)

(assert (=> d!208475 m!854491))

(assert (=> b!592535 d!208475))

(declare-fun d!208477 () Bool)

(declare-fun e!358539 () Bool)

(assert (=> d!208477 e!358539))

(declare-fun res!255689 () Bool)

(assert (=> d!208477 (=> (not res!255689) (not e!358539))))

(assert (=> d!208477 (= res!255689 (semiInverseModEq!457 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))))))

(declare-fun Unit!10673 () Unit!10665)

(assert (=> d!208477 (= (lemmaInv!263 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) Unit!10673)))

(declare-fun b!592814 () Bool)

(assert (=> b!592814 (= e!358539 (equivClasses!440 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))))))

(assert (= (and d!208477 res!255689) b!592814))

(declare-fun m!854493 () Bool)

(assert (=> d!208477 m!854493))

(declare-fun m!854495 () Bool)

(assert (=> b!592814 m!854495))

(assert (=> b!592535 d!208477))

(declare-fun d!208479 () Bool)

(assert (=> d!208479 (ruleValid!353 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233))))))

(declare-fun lt!251332 () Unit!10665)

(declare-fun choose!4293 (LexerInterface!1041 Rule!2110 List!5880) Unit!10665)

(assert (=> d!208479 (= lt!251332 (choose!4293 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233))) rules!3103))))

(assert (=> d!208479 (contains!1381 rules!3103 (rule!1923 (_1!3664 (v!16390 lt!251233))))))

(assert (=> d!208479 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!200 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233))) rules!3103) lt!251332)))

(declare-fun bs!70422 () Bool)

(assert (= bs!70422 d!208479))

(assert (=> bs!70422 m!854127))

(declare-fun m!854497 () Bool)

(assert (=> bs!70422 m!854497))

(declare-fun m!854499 () Bool)

(assert (=> bs!70422 m!854499))

(assert (=> b!592535 d!208479))

(declare-fun d!208481 () Bool)

(assert (=> d!208481 (= (_2!3664 (v!16390 lt!251233)) lt!251227)))

(declare-fun lt!251335 () Unit!10665)

(declare-fun choose!4294 (List!5879 List!5879 List!5879 List!5879 List!5879) Unit!10665)

(assert (=> d!208481 (= lt!251335 (choose!4294 lt!251228 (_2!3664 (v!16390 lt!251233)) lt!251228 lt!251227 input!2705))))

(assert (=> d!208481 (isPrefix!783 lt!251228 input!2705)))

(assert (=> d!208481 (= (lemmaSamePrefixThenSameSuffix!496 lt!251228 (_2!3664 (v!16390 lt!251233)) lt!251228 lt!251227 input!2705) lt!251335)))

(declare-fun bs!70423 () Bool)

(assert (= bs!70423 d!208481))

(declare-fun m!854501 () Bool)

(assert (=> bs!70423 m!854501))

(declare-fun m!854503 () Bool)

(assert (=> bs!70423 m!854503))

(assert (=> b!592535 d!208481))

(declare-fun d!208483 () Bool)

(declare-fun lt!251336 () Int)

(assert (=> d!208483 (>= lt!251336 0)))

(declare-fun e!358540 () Int)

(assert (=> d!208483 (= lt!251336 e!358540)))

(declare-fun c!110497 () Bool)

(assert (=> d!208483 (= c!110497 ((_ is Nil!5869) lt!251238))))

(assert (=> d!208483 (= (size!4643 lt!251238) lt!251336)))

(declare-fun b!592815 () Bool)

(assert (=> b!592815 (= e!358540 0)))

(declare-fun b!592816 () Bool)

(assert (=> b!592816 (= e!358540 (+ 1 (size!4643 (t!79102 lt!251238))))))

(assert (= (and d!208483 c!110497) b!592815))

(assert (= (and d!208483 (not c!110497)) b!592816))

(declare-fun m!854505 () Bool)

(assert (=> b!592816 m!854505))

(assert (=> b!592535 d!208483))

(declare-fun b!592828 () Bool)

(declare-fun e!358548 () Bool)

(assert (=> b!592828 (= e!358548 (>= (size!4643 input!2705) (size!4643 input!2705)))))

(declare-fun d!208485 () Bool)

(assert (=> d!208485 e!358548))

(declare-fun res!255700 () Bool)

(assert (=> d!208485 (=> res!255700 e!358548)))

(declare-fun lt!251339 () Bool)

(assert (=> d!208485 (= res!255700 (not lt!251339))))

(declare-fun e!358549 () Bool)

(assert (=> d!208485 (= lt!251339 e!358549)))

(declare-fun res!255698 () Bool)

(assert (=> d!208485 (=> res!255698 e!358549)))

(assert (=> d!208485 (= res!255698 ((_ is Nil!5869) input!2705))))

(assert (=> d!208485 (= (isPrefix!783 input!2705 input!2705) lt!251339)))

(declare-fun b!592825 () Bool)

(declare-fun e!358547 () Bool)

(assert (=> b!592825 (= e!358549 e!358547)))

(declare-fun res!255699 () Bool)

(assert (=> b!592825 (=> (not res!255699) (not e!358547))))

(assert (=> b!592825 (= res!255699 (not ((_ is Nil!5869) input!2705)))))

(declare-fun b!592827 () Bool)

(declare-fun tail!785 (List!5879) List!5879)

(assert (=> b!592827 (= e!358547 (isPrefix!783 (tail!785 input!2705) (tail!785 input!2705)))))

(declare-fun b!592826 () Bool)

(declare-fun res!255701 () Bool)

(assert (=> b!592826 (=> (not res!255701) (not e!358547))))

(declare-fun head!1256 (List!5879) C!3900)

(assert (=> b!592826 (= res!255701 (= (head!1256 input!2705) (head!1256 input!2705)))))

(assert (= (and d!208485 (not res!255698)) b!592825))

(assert (= (and b!592825 res!255699) b!592826))

(assert (= (and b!592826 res!255701) b!592827))

(assert (= (and d!208485 (not res!255700)) b!592828))

(assert (=> b!592828 m!854419))

(assert (=> b!592828 m!854419))

(declare-fun m!854507 () Bool)

(assert (=> b!592827 m!854507))

(assert (=> b!592827 m!854507))

(assert (=> b!592827 m!854507))

(assert (=> b!592827 m!854507))

(declare-fun m!854509 () Bool)

(assert (=> b!592827 m!854509))

(declare-fun m!854511 () Bool)

(assert (=> b!592826 m!854511))

(assert (=> b!592826 m!854511))

(assert (=> b!592535 d!208485))

(declare-fun d!208487 () Bool)

(declare-fun lt!251342 () List!5879)

(assert (=> d!208487 (= (++!1643 lt!251228 lt!251342) input!2705)))

(declare-fun e!358552 () List!5879)

(assert (=> d!208487 (= lt!251342 e!358552)))

(declare-fun c!110500 () Bool)

(assert (=> d!208487 (= c!110500 ((_ is Cons!5869) lt!251228))))

(assert (=> d!208487 (>= (size!4643 input!2705) (size!4643 lt!251228))))

(assert (=> d!208487 (= (getSuffix!300 input!2705 lt!251228) lt!251342)))

(declare-fun b!592833 () Bool)

(assert (=> b!592833 (= e!358552 (getSuffix!300 (tail!785 input!2705) (t!79102 lt!251228)))))

(declare-fun b!592834 () Bool)

(assert (=> b!592834 (= e!358552 input!2705)))

(assert (= (and d!208487 c!110500) b!592833))

(assert (= (and d!208487 (not c!110500)) b!592834))

(declare-fun m!854513 () Bool)

(assert (=> d!208487 m!854513))

(assert (=> d!208487 m!854419))

(assert (=> d!208487 m!854103))

(assert (=> b!592833 m!854507))

(assert (=> b!592833 m!854507))

(declare-fun m!854515 () Bool)

(assert (=> b!592833 m!854515))

(assert (=> b!592535 d!208487))

(declare-fun d!208489 () Bool)

(assert (=> d!208489 (= (size!4642 (_1!3664 (v!16390 lt!251233))) (size!4643 (originalCharacters!1194 (_1!3664 (v!16390 lt!251233)))))))

(declare-fun Unit!10674 () Unit!10665)

(assert (=> d!208489 (= (lemmaCharactersSize!214 (_1!3664 (v!16390 lt!251233))) Unit!10674)))

(declare-fun bs!70424 () Bool)

(assert (= bs!70424 d!208489))

(assert (=> bs!70424 m!854073))

(assert (=> b!592535 d!208489))

(declare-fun d!208491 () Bool)

(declare-fun fromListB!584 (List!5879) BalanceConc!3752)

(assert (=> d!208491 (= (seqFromList!1331 lt!251228) (fromListB!584 lt!251228))))

(declare-fun bs!70425 () Bool)

(assert (= bs!70425 d!208491))

(declare-fun m!854517 () Bool)

(assert (=> bs!70425 m!854517))

(assert (=> b!592535 d!208491))

(declare-fun d!208493 () Bool)

(assert (=> d!208493 (isPrefix!783 input!2705 input!2705)))

(declare-fun lt!251345 () Unit!10665)

(declare-fun choose!4295 (List!5879 List!5879) Unit!10665)

(assert (=> d!208493 (= lt!251345 (choose!4295 input!2705 input!2705))))

(assert (=> d!208493 (= (lemmaIsPrefixRefl!519 input!2705 input!2705) lt!251345)))

(declare-fun bs!70426 () Bool)

(assert (= bs!70426 d!208493))

(assert (=> bs!70426 m!854115))

(declare-fun m!854519 () Bool)

(assert (=> bs!70426 m!854519))

(assert (=> b!592535 d!208493))

(declare-fun d!208495 () Bool)

(assert (=> d!208495 (and (= lt!251238 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!251348 () Unit!10665)

(declare-fun choose!4296 (List!5879 List!5879 List!5879 List!5879) Unit!10665)

(assert (=> d!208495 (= lt!251348 (choose!4296 lt!251238 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!208495 (= (++!1643 lt!251238 suffix!1342) (++!1643 input!2705 suffix!1342))))

(assert (=> d!208495 (= (lemmaConcatSameAndSameSizesThenSameLists!228 lt!251238 suffix!1342 input!2705 suffix!1342) lt!251348)))

(declare-fun bs!70427 () Bool)

(assert (= bs!70427 d!208495))

(declare-fun m!854521 () Bool)

(assert (=> bs!70427 m!854521))

(assert (=> bs!70427 m!854141))

(assert (=> bs!70427 m!854071))

(assert (=> b!592535 d!208495))

(declare-fun d!208497 () Bool)

(assert (=> d!208497 (= (size!4642 token!491) (size!4643 (originalCharacters!1194 token!491)))))

(declare-fun Unit!10675 () Unit!10665)

(assert (=> d!208497 (= (lemmaCharactersSize!214 token!491) Unit!10675)))

(declare-fun bs!70428 () Bool)

(assert (= bs!70428 d!208497))

(assert (=> bs!70428 m!854165))

(assert (=> b!592535 d!208497))

(declare-fun d!208499 () Bool)

(assert (=> d!208499 (= (list!2456 (charsOf!784 (_1!3664 (v!16390 lt!251233)))) (list!2458 (c!110456 (charsOf!784 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun bs!70429 () Bool)

(assert (= bs!70429 d!208499))

(declare-fun m!854523 () Bool)

(assert (=> bs!70429 m!854523))

(assert (=> b!592535 d!208499))

(declare-fun d!208501 () Bool)

(assert (=> d!208501 (isPrefix!783 lt!251228 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))))

(declare-fun lt!251351 () Unit!10665)

(declare-fun choose!4297 (List!5879 List!5879) Unit!10665)

(assert (=> d!208501 (= lt!251351 (choose!4297 lt!251228 (_2!3664 (v!16390 lt!251233))))))

(assert (=> d!208501 (= (lemmaConcatTwoListThenFirstIsPrefix!628 lt!251228 (_2!3664 (v!16390 lt!251233))) lt!251351)))

(declare-fun bs!70430 () Bool)

(assert (= bs!70430 d!208501))

(assert (=> bs!70430 m!854109))

(assert (=> bs!70430 m!854109))

(assert (=> bs!70430 m!854119))

(declare-fun m!854525 () Bool)

(assert (=> bs!70430 m!854525))

(assert (=> b!592535 d!208501))

(declare-fun d!208503 () Bool)

(declare-fun lt!251352 () BalanceConc!3752)

(assert (=> d!208503 (= (list!2456 lt!251352) (originalCharacters!1194 (_1!3664 (v!16390 lt!251233))))))

(assert (=> d!208503 (= lt!251352 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))))

(assert (=> d!208503 (= (charsOf!784 (_1!3664 (v!16390 lt!251233))) lt!251352)))

(declare-fun b_lambda!23357 () Bool)

(assert (=> (not b_lambda!23357) (not d!208503)))

(declare-fun t!79138 () Bool)

(declare-fun tb!51795 () Bool)

(assert (=> (and b!592540 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79138) tb!51795))

(declare-fun b!592835 () Bool)

(declare-fun e!358553 () Bool)

(declare-fun tp!184866 () Bool)

(assert (=> b!592835 (= e!358553 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))) tp!184866))))

(declare-fun result!58148 () Bool)

(assert (=> tb!51795 (= result!58148 (and (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))) e!358553))))

(assert (= tb!51795 b!592835))

(declare-fun m!854527 () Bool)

(assert (=> b!592835 m!854527))

(declare-fun m!854529 () Bool)

(assert (=> tb!51795 m!854529))

(assert (=> d!208503 t!79138))

(declare-fun b_and!58463 () Bool)

(assert (= b_and!58455 (and (=> t!79138 result!58148) b_and!58463)))

(declare-fun t!79140 () Bool)

(declare-fun tb!51797 () Bool)

(assert (=> (and b!592528 (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79140) tb!51797))

(declare-fun result!58150 () Bool)

(assert (= result!58150 result!58148))

(assert (=> d!208503 t!79140))

(declare-fun b_and!58465 () Bool)

(assert (= b_and!58457 (and (=> t!79140 result!58150) b_and!58465)))

(declare-fun m!854531 () Bool)

(assert (=> d!208503 m!854531))

(declare-fun m!854533 () Bool)

(assert (=> d!208503 m!854533))

(assert (=> b!592535 d!208503))

(declare-fun d!208505 () Bool)

(assert (=> d!208505 (ruleValid!353 thiss!22590 (rule!1923 token!491))))

(declare-fun lt!251353 () Unit!10665)

(assert (=> d!208505 (= lt!251353 (choose!4293 thiss!22590 (rule!1923 token!491) rules!3103))))

(assert (=> d!208505 (contains!1381 rules!3103 (rule!1923 token!491))))

(assert (=> d!208505 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!200 thiss!22590 (rule!1923 token!491) rules!3103) lt!251353)))

(declare-fun bs!70431 () Bool)

(assert (= bs!70431 d!208505))

(assert (=> bs!70431 m!854129))

(declare-fun m!854535 () Bool)

(assert (=> bs!70431 m!854535))

(declare-fun m!854537 () Bool)

(assert (=> bs!70431 m!854537))

(assert (=> b!592535 d!208505))

(declare-fun d!208507 () Bool)

(declare-fun lt!251354 () Int)

(assert (=> d!208507 (>= lt!251354 0)))

(declare-fun e!358554 () Int)

(assert (=> d!208507 (= lt!251354 e!358554)))

(declare-fun c!110501 () Bool)

(assert (=> d!208507 (= c!110501 ((_ is Nil!5869) lt!251228))))

(assert (=> d!208507 (= (size!4643 lt!251228) lt!251354)))

(declare-fun b!592836 () Bool)

(assert (=> b!592836 (= e!358554 0)))

(declare-fun b!592837 () Bool)

(assert (=> b!592837 (= e!358554 (+ 1 (size!4643 (t!79102 lt!251228))))))

(assert (= (and d!208507 c!110501) b!592836))

(assert (= (and d!208507 (not c!110501)) b!592837))

(declare-fun m!854539 () Bool)

(assert (=> b!592837 m!854539))

(assert (=> b!592535 d!208507))

(declare-fun d!208509 () Bool)

(declare-fun e!358555 () Bool)

(assert (=> d!208509 e!358555))

(declare-fun res!255702 () Bool)

(assert (=> d!208509 (=> (not res!255702) (not e!358555))))

(declare-fun lt!251355 () List!5879)

(assert (=> d!208509 (= res!255702 (= (content!1057 lt!251355) ((_ map or) (content!1057 lt!251228) (content!1057 (_2!3664 (v!16390 lt!251233))))))))

(declare-fun e!358556 () List!5879)

(assert (=> d!208509 (= lt!251355 e!358556)))

(declare-fun c!110502 () Bool)

(assert (=> d!208509 (= c!110502 ((_ is Nil!5869) lt!251228))))

(assert (=> d!208509 (= (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))) lt!251355)))

(declare-fun b!592841 () Bool)

(assert (=> b!592841 (= e!358555 (or (not (= (_2!3664 (v!16390 lt!251233)) Nil!5869)) (= lt!251355 lt!251228)))))

(declare-fun b!592840 () Bool)

(declare-fun res!255703 () Bool)

(assert (=> b!592840 (=> (not res!255703) (not e!358555))))

(assert (=> b!592840 (= res!255703 (= (size!4643 lt!251355) (+ (size!4643 lt!251228) (size!4643 (_2!3664 (v!16390 lt!251233))))))))

(declare-fun b!592839 () Bool)

(assert (=> b!592839 (= e!358556 (Cons!5869 (h!11270 lt!251228) (++!1643 (t!79102 lt!251228) (_2!3664 (v!16390 lt!251233)))))))

(declare-fun b!592838 () Bool)

(assert (=> b!592838 (= e!358556 (_2!3664 (v!16390 lt!251233)))))

(assert (= (and d!208509 c!110502) b!592838))

(assert (= (and d!208509 (not c!110502)) b!592839))

(assert (= (and d!208509 res!255702) b!592840))

(assert (= (and b!592840 res!255703) b!592841))

(declare-fun m!854541 () Bool)

(assert (=> d!208509 m!854541))

(declare-fun m!854543 () Bool)

(assert (=> d!208509 m!854543))

(declare-fun m!854545 () Bool)

(assert (=> d!208509 m!854545))

(declare-fun m!854547 () Bool)

(assert (=> b!592840 m!854547))

(assert (=> b!592840 m!854103))

(declare-fun m!854549 () Bool)

(assert (=> b!592840 m!854549))

(declare-fun m!854551 () Bool)

(assert (=> b!592839 m!854551))

(assert (=> b!592535 d!208509))

(declare-fun d!208511 () Bool)

(declare-fun res!255708 () Bool)

(declare-fun e!358559 () Bool)

(assert (=> d!208511 (=> (not res!255708) (not e!358559))))

(declare-fun validRegex!510 (Regex!1489) Bool)

(assert (=> d!208511 (= res!255708 (validRegex!510 (regex!1155 (rule!1923 token!491))))))

(assert (=> d!208511 (= (ruleValid!353 thiss!22590 (rule!1923 token!491)) e!358559)))

(declare-fun b!592846 () Bool)

(declare-fun res!255709 () Bool)

(assert (=> b!592846 (=> (not res!255709) (not e!358559))))

(declare-fun nullable!415 (Regex!1489) Bool)

(assert (=> b!592846 (= res!255709 (not (nullable!415 (regex!1155 (rule!1923 token!491)))))))

(declare-fun b!592847 () Bool)

(assert (=> b!592847 (= e!358559 (not (= (tag!1417 (rule!1923 token!491)) (String!7639 ""))))))

(assert (= (and d!208511 res!255708) b!592846))

(assert (= (and b!592846 res!255709) b!592847))

(declare-fun m!854553 () Bool)

(assert (=> d!208511 m!854553))

(declare-fun m!854555 () Bool)

(assert (=> b!592846 m!854555))

(assert (=> b!592535 d!208511))

(declare-fun d!208513 () Bool)

(declare-fun res!255710 () Bool)

(declare-fun e!358560 () Bool)

(assert (=> d!208513 (=> (not res!255710) (not e!358560))))

(assert (=> d!208513 (= res!255710 (not (isEmpty!4238 (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))))

(assert (=> d!208513 (= (inv!7432 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)) e!358560)))

(declare-fun b!592848 () Bool)

(declare-fun res!255711 () Bool)

(assert (=> b!592848 (=> (not res!255711) (not e!358560))))

(assert (=> b!592848 (= res!255711 (= (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)) (list!2456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))))

(declare-fun b!592849 () Bool)

(assert (=> b!592849 (= e!358560 (= (size!4642 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)) (size!4643 (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))))

(assert (= (and d!208513 res!255710) b!592848))

(assert (= (and b!592848 res!255711) b!592849))

(declare-fun b_lambda!23359 () Bool)

(assert (=> (not b_lambda!23359) (not b!592848)))

(declare-fun tb!51799 () Bool)

(declare-fun t!79142 () Bool)

(assert (=> (and b!592540 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))) t!79142) tb!51799))

(declare-fun e!358561 () Bool)

(declare-fun b!592850 () Bool)

(declare-fun tp!184867 () Bool)

(assert (=> b!592850 (= e!358561 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))) tp!184867))))

(declare-fun result!58152 () Bool)

(assert (=> tb!51799 (= result!58152 (and (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) e!358561))))

(assert (= tb!51799 b!592850))

(declare-fun m!854557 () Bool)

(assert (=> b!592850 m!854557))

(declare-fun m!854559 () Bool)

(assert (=> tb!51799 m!854559))

(assert (=> b!592848 t!79142))

(declare-fun b_and!58467 () Bool)

(assert (= b_and!58463 (and (=> t!79142 result!58152) b_and!58467)))

(declare-fun t!79144 () Bool)

(declare-fun tb!51801 () Bool)

(assert (=> (and b!592528 (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))) t!79144) tb!51801))

(declare-fun result!58154 () Bool)

(assert (= result!58154 result!58152))

(assert (=> b!592848 t!79144))

(declare-fun b_and!58469 () Bool)

(assert (= b_and!58465 (and (=> t!79144 result!58154) b_and!58469)))

(declare-fun m!854561 () Bool)

(assert (=> d!208513 m!854561))

(declare-fun m!854563 () Bool)

(assert (=> b!592848 m!854563))

(assert (=> b!592848 m!854563))

(declare-fun m!854565 () Bool)

(assert (=> b!592848 m!854565))

(declare-fun m!854567 () Bool)

(assert (=> b!592849 m!854567))

(assert (=> b!592535 d!208513))

(declare-fun d!208515 () Bool)

(declare-fun res!255712 () Bool)

(declare-fun e!358562 () Bool)

(assert (=> d!208515 (=> (not res!255712) (not e!358562))))

(assert (=> d!208515 (= res!255712 (validRegex!510 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))

(assert (=> d!208515 (= (ruleValid!353 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233)))) e!358562)))

(declare-fun b!592851 () Bool)

(declare-fun res!255713 () Bool)

(assert (=> b!592851 (=> (not res!255713) (not e!358562))))

(assert (=> b!592851 (= res!255713 (not (nullable!415 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))))))

(declare-fun b!592852 () Bool)

(assert (=> b!592852 (= e!358562 (not (= (tag!1417 (rule!1923 (_1!3664 (v!16390 lt!251233)))) (String!7639 ""))))))

(assert (= (and d!208515 res!255712) b!592851))

(assert (= (and b!592851 res!255713) b!592852))

(declare-fun m!854569 () Bool)

(assert (=> d!208515 m!854569))

(declare-fun m!854571 () Bool)

(assert (=> b!592851 m!854571))

(assert (=> b!592535 d!208515))

(declare-fun b!592856 () Bool)

(declare-fun e!358564 () Bool)

(assert (=> b!592856 (= e!358564 (>= (size!4643 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))) (size!4643 lt!251228)))))

(declare-fun d!208517 () Bool)

(assert (=> d!208517 e!358564))

(declare-fun res!255716 () Bool)

(assert (=> d!208517 (=> res!255716 e!358564)))

(declare-fun lt!251356 () Bool)

(assert (=> d!208517 (= res!255716 (not lt!251356))))

(declare-fun e!358565 () Bool)

(assert (=> d!208517 (= lt!251356 e!358565)))

(declare-fun res!255714 () Bool)

(assert (=> d!208517 (=> res!255714 e!358565)))

(assert (=> d!208517 (= res!255714 ((_ is Nil!5869) lt!251228))))

(assert (=> d!208517 (= (isPrefix!783 lt!251228 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))) lt!251356)))

(declare-fun b!592853 () Bool)

(declare-fun e!358563 () Bool)

(assert (=> b!592853 (= e!358565 e!358563)))

(declare-fun res!255715 () Bool)

(assert (=> b!592853 (=> (not res!255715) (not e!358563))))

(assert (=> b!592853 (= res!255715 (not ((_ is Nil!5869) (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))))))

(declare-fun b!592855 () Bool)

(assert (=> b!592855 (= e!358563 (isPrefix!783 (tail!785 lt!251228) (tail!785 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))))))

(declare-fun b!592854 () Bool)

(declare-fun res!255717 () Bool)

(assert (=> b!592854 (=> (not res!255717) (not e!358563))))

(assert (=> b!592854 (= res!255717 (= (head!1256 lt!251228) (head!1256 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))))))

(assert (= (and d!208517 (not res!255714)) b!592853))

(assert (= (and b!592853 res!255715) b!592854))

(assert (= (and b!592854 res!255717) b!592855))

(assert (= (and d!208517 (not res!255716)) b!592856))

(assert (=> b!592856 m!854109))

(declare-fun m!854573 () Bool)

(assert (=> b!592856 m!854573))

(assert (=> b!592856 m!854103))

(declare-fun m!854575 () Bool)

(assert (=> b!592855 m!854575))

(assert (=> b!592855 m!854109))

(declare-fun m!854577 () Bool)

(assert (=> b!592855 m!854577))

(assert (=> b!592855 m!854575))

(assert (=> b!592855 m!854577))

(declare-fun m!854579 () Bool)

(assert (=> b!592855 m!854579))

(declare-fun m!854581 () Bool)

(assert (=> b!592854 m!854581))

(assert (=> b!592854 m!854109))

(declare-fun m!854583 () Bool)

(assert (=> b!592854 m!854583))

(assert (=> b!592535 d!208517))

(declare-fun d!208519 () Bool)

(declare-fun e!358566 () Bool)

(assert (=> d!208519 e!358566))

(declare-fun res!255718 () Bool)

(assert (=> d!208519 (=> (not res!255718) (not e!358566))))

(assert (=> d!208519 (= res!255718 (semiInverseModEq!457 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))))))

(declare-fun Unit!10676 () Unit!10665)

(assert (=> d!208519 (= (lemmaInv!263 (transformation!1155 (rule!1923 token!491))) Unit!10676)))

(declare-fun b!592857 () Bool)

(assert (=> b!592857 (= e!358566 (equivClasses!440 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))))))

(assert (= (and d!208519 res!255718) b!592857))

(assert (=> d!208519 m!854149))

(assert (=> b!592857 m!854151))

(assert (=> b!592535 d!208519))

(declare-fun b!592870 () Bool)

(declare-fun e!358569 () Bool)

(declare-fun tp!184882 () Bool)

(assert (=> b!592870 (= e!358569 tp!184882)))

(declare-fun b!592868 () Bool)

(assert (=> b!592868 (= e!358569 tp_is_empty!3333)))

(declare-fun b!592871 () Bool)

(declare-fun tp!184881 () Bool)

(declare-fun tp!184880 () Bool)

(assert (=> b!592871 (= e!358569 (and tp!184881 tp!184880))))

(assert (=> b!592532 (= tp!184818 e!358569)))

(declare-fun b!592869 () Bool)

(declare-fun tp!184878 () Bool)

(declare-fun tp!184879 () Bool)

(assert (=> b!592869 (= e!358569 (and tp!184878 tp!184879))))

(assert (= (and b!592532 ((_ is ElementMatch!1489) (regex!1155 (rule!1923 token!491)))) b!592868))

(assert (= (and b!592532 ((_ is Concat!2668) (regex!1155 (rule!1923 token!491)))) b!592869))

(assert (= (and b!592532 ((_ is Star!1489) (regex!1155 (rule!1923 token!491)))) b!592870))

(assert (= (and b!592532 ((_ is Union!1489) (regex!1155 (rule!1923 token!491)))) b!592871))

(declare-fun b!592874 () Bool)

(declare-fun e!358570 () Bool)

(declare-fun tp!184887 () Bool)

(assert (=> b!592874 (= e!358570 tp!184887)))

(declare-fun b!592872 () Bool)

(assert (=> b!592872 (= e!358570 tp_is_empty!3333)))

(declare-fun b!592875 () Bool)

(declare-fun tp!184886 () Bool)

(declare-fun tp!184885 () Bool)

(assert (=> b!592875 (= e!358570 (and tp!184886 tp!184885))))

(assert (=> b!592538 (= tp!184820 e!358570)))

(declare-fun b!592873 () Bool)

(declare-fun tp!184883 () Bool)

(declare-fun tp!184884 () Bool)

(assert (=> b!592873 (= e!358570 (and tp!184883 tp!184884))))

(assert (= (and b!592538 ((_ is ElementMatch!1489) (regex!1155 (h!11271 rules!3103)))) b!592872))

(assert (= (and b!592538 ((_ is Concat!2668) (regex!1155 (h!11271 rules!3103)))) b!592873))

(assert (= (and b!592538 ((_ is Star!1489) (regex!1155 (h!11271 rules!3103)))) b!592874))

(assert (= (and b!592538 ((_ is Union!1489) (regex!1155 (h!11271 rules!3103)))) b!592875))

(declare-fun b!592880 () Bool)

(declare-fun e!358573 () Bool)

(declare-fun tp!184890 () Bool)

(assert (=> b!592880 (= e!358573 (and tp_is_empty!3333 tp!184890))))

(assert (=> b!592543 (= tp!184817 e!358573)))

(assert (= (and b!592543 ((_ is Cons!5869) (originalCharacters!1194 token!491))) b!592880))

(declare-fun b!592881 () Bool)

(declare-fun e!358574 () Bool)

(declare-fun tp!184891 () Bool)

(assert (=> b!592881 (= e!358574 (and tp_is_empty!3333 tp!184891))))

(assert (=> b!592534 (= tp!184812 e!358574)))

(assert (= (and b!592534 ((_ is Cons!5869) (t!79102 suffix!1342))) b!592881))

(declare-fun b!592882 () Bool)

(declare-fun e!358575 () Bool)

(declare-fun tp!184892 () Bool)

(assert (=> b!592882 (= e!358575 (and tp_is_empty!3333 tp!184892))))

(assert (=> b!592523 (= tp!184814 e!358575)))

(assert (= (and b!592523 ((_ is Cons!5869) (t!79102 input!2705))) b!592882))

(declare-fun b!592893 () Bool)

(declare-fun b_free!16689 () Bool)

(declare-fun b_next!16705 () Bool)

(assert (=> b!592893 (= b_free!16689 (not b_next!16705))))

(declare-fun t!79146 () Bool)

(declare-fun tb!51803 () Bool)

(assert (=> (and b!592893 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79146) tb!51803))

(declare-fun result!58162 () Bool)

(assert (= result!58162 result!58142))

(assert (=> d!208475 t!79146))

(declare-fun b_and!58471 () Bool)

(declare-fun tp!184903 () Bool)

(assert (=> b!592893 (= tp!184903 (and (=> t!79146 result!58162) b_and!58471))))

(declare-fun b_free!16691 () Bool)

(declare-fun b_next!16707 () Bool)

(assert (=> b!592893 (= b_free!16691 (not b_next!16707))))

(declare-fun t!79148 () Bool)

(declare-fun tb!51805 () Bool)

(assert (=> (and b!592893 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 token!491)))) t!79148) tb!51805))

(declare-fun result!58164 () Bool)

(assert (= result!58164 result!58102))

(assert (=> b!592551 t!79148))

(assert (=> d!208473 t!79148))

(declare-fun t!79150 () Bool)

(declare-fun tb!51807 () Bool)

(assert (=> (and b!592893 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79150) tb!51807))

(declare-fun result!58166 () Bool)

(assert (= result!58166 result!58148))

(assert (=> d!208503 t!79150))

(declare-fun tb!51809 () Bool)

(declare-fun t!79152 () Bool)

(assert (=> (and b!592893 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))) t!79152) tb!51809))

(declare-fun result!58168 () Bool)

(assert (= result!58168 result!58152))

(assert (=> b!592848 t!79152))

(declare-fun b_and!58473 () Bool)

(declare-fun tp!184901 () Bool)

(assert (=> b!592893 (= tp!184901 (and (=> t!79148 result!58164) (=> t!79150 result!58166) (=> t!79152 result!58168) b_and!58473))))

(declare-fun e!358585 () Bool)

(assert (=> b!592893 (= e!358585 (and tp!184903 tp!184901))))

(declare-fun e!358584 () Bool)

(declare-fun b!592892 () Bool)

(declare-fun tp!184904 () Bool)

(assert (=> b!592892 (= e!358584 (and tp!184904 (inv!7428 (tag!1417 (h!11271 (t!79103 rules!3103)))) (inv!7431 (transformation!1155 (h!11271 (t!79103 rules!3103)))) e!358585))))

(declare-fun b!592891 () Bool)

(declare-fun e!358587 () Bool)

(declare-fun tp!184902 () Bool)

(assert (=> b!592891 (= e!358587 (and e!358584 tp!184902))))

(assert (=> b!592536 (= tp!184816 e!358587)))

(assert (= b!592892 b!592893))

(assert (= b!592891 b!592892))

(assert (= (and b!592536 ((_ is Cons!5870) (t!79103 rules!3103))) b!592891))

(declare-fun m!854585 () Bool)

(assert (=> b!592892 m!854585))

(declare-fun m!854587 () Bool)

(assert (=> b!592892 m!854587))

(declare-fun b_lambda!23361 () Bool)

(assert (= b_lambda!23353 (or (and b!592540 b_free!16679 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 token!491))))) (and b!592528 b_free!16683) (and b!592893 b_free!16691 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 token!491))))) b_lambda!23361)))

(declare-fun b_lambda!23363 () Bool)

(assert (= b_lambda!23337 (or (and b!592540 b_free!16679 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 token!491))))) (and b!592528 b_free!16683) (and b!592893 b_free!16691 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 token!491))))) b_lambda!23363)))

(check-sat (not d!208513) b_and!58471 (not b!592787) (not b!592849) (not b!592854) (not b!592828) (not b!592855) (not b!592881) (not b_next!16693) (not d!208487) (not b!592788) (not b!592808) (not tb!51795) (not b!592826) (not b!592546) (not b_lambda!23363) (not d!208467) (not b_next!16699) (not bm!40339) (not b!592875) b_and!58473 (not b!592814) (not b!592835) (not d!208481) (not b!592790) (not b_next!16695) (not b_lambda!23359) (not b!592799) (not d!208511) (not b!592869) (not b!592807) (not d!208359) (not b!592800) (not b!592568) (not d!208367) (not b!592873) (not b_next!16707) (not b!592557) (not b!592805) (not d!208503) (not b!592585) (not b!592892) (not b!592857) tp_is_empty!3333 (not b!592880) (not d!208361) (not b!592797) (not d!208479) (not d!208471) (not d!208489) (not b!592791) (not d!208495) (not b!592846) (not b!592795) (not b!592870) (not b!592874) (not b_lambda!23357) (not b!592850) (not b_next!16697) (not b!592871) (not b!592597) (not d!208493) (not tb!51799) (not d!208505) (not d!208461) (not b!592839) (not b!592801) (not b!592848) (not b_lambda!23361) (not d!208509) (not b!592798) (not b!592837) (not b!592794) (not b!592804) (not d!208463) (not d!208515) (not d!208473) (not b!592856) (not b!592552) (not b_lambda!23355) b_and!58461 (not b!592551) (not b!592840) (not b!592608) (not b_next!16705) (not bm!40340) b_and!58469 (not d!208519) b_and!58467 (not b!592596) (not d!208477) (not b!592796) (not tb!51791) (not b!592891) (not b!592851) (not d!208499) (not d!208389) (not d!208501) (not d!208491) (not tb!51763) (not b!592582) (not b!592789) (not d!208465) (not d!208381) (not b!592803) (not b!592793) (not b!592833) b_and!58459 (not d!208497) (not b!592586) (not b!592882) (not b!592827) (not b!592816))
(check-sat (not b_next!16693) (not b_next!16699) b_and!58473 (not b_next!16695) (not b_next!16707) (not b_next!16697) b_and!58471 b_and!58459 b_and!58461 (not b_next!16705) b_and!58469 b_and!58467)
(get-model)

(declare-fun b!593017 () Bool)

(declare-fun res!255789 () Bool)

(declare-fun e!358665 () Bool)

(assert (=> b!593017 (=> (not res!255789) (not e!358665))))

(declare-fun lt!251390 () Option!1506)

(assert (=> b!593017 (= res!255789 (< (size!4643 (_2!3664 (get!2247 lt!251390))) (size!4643 lt!251225)))))

(declare-fun b!593018 () Bool)

(declare-fun res!255790 () Bool)

(assert (=> b!593018 (=> (not res!255790) (not e!358665))))

(assert (=> b!593018 (= res!255790 (= (value!37784 (_1!3664 (get!2247 lt!251390))) (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251390)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251390)))))))))

(declare-fun b!593019 () Bool)

(declare-fun e!358663 () Bool)

(assert (=> b!593019 (= e!358663 e!358665)))

(declare-fun res!255786 () Bool)

(assert (=> b!593019 (=> (not res!255786) (not e!358665))))

(assert (=> b!593019 (= res!255786 (matchR!618 (regex!1155 (h!11271 rules!3103)) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251390))))))))

(declare-fun b!593020 () Bool)

(declare-fun res!255788 () Bool)

(assert (=> b!593020 (=> (not res!255788) (not e!358665))))

(assert (=> b!593020 (= res!255788 (= (rule!1923 (_1!3664 (get!2247 lt!251390))) (h!11271 rules!3103)))))

(declare-fun b!593021 () Bool)

(declare-fun e!358662 () Option!1506)

(assert (=> b!593021 (= e!358662 None!1505)))

(declare-fun b!593022 () Bool)

(declare-datatypes ((tuple2!6804 0))(
  ( (tuple2!6805 (_1!3666 List!5879) (_2!3666 List!5879)) )
))
(declare-fun lt!251388 () tuple2!6804)

(declare-fun size!4645 (BalanceConc!3752) Int)

(assert (=> b!593022 (= e!358662 (Some!1505 (tuple2!6801 (Token!2047 (apply!1408 (transformation!1155 (h!11271 rules!3103)) (seqFromList!1331 (_1!3666 lt!251388))) (h!11271 rules!3103) (size!4645 (seqFromList!1331 (_1!3666 lt!251388))) (_1!3666 lt!251388)) (_2!3666 lt!251388))))))

(declare-fun lt!251389 () Unit!10665)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!173 (Regex!1489 List!5879) Unit!10665)

(assert (=> b!593022 (= lt!251389 (longestMatchIsAcceptedByMatchOrIsEmpty!173 (regex!1155 (h!11271 rules!3103)) lt!251225))))

(declare-fun res!255785 () Bool)

(declare-fun findLongestMatchInner!189 (Regex!1489 List!5879 Int List!5879 List!5879 Int) tuple2!6804)

(assert (=> b!593022 (= res!255785 (isEmpty!4238 (_1!3666 (findLongestMatchInner!189 (regex!1155 (h!11271 rules!3103)) Nil!5869 (size!4643 Nil!5869) lt!251225 lt!251225 (size!4643 lt!251225)))))))

(declare-fun e!358664 () Bool)

(assert (=> b!593022 (=> res!255785 e!358664)))

(assert (=> b!593022 e!358664))

(declare-fun lt!251387 () Unit!10665)

(assert (=> b!593022 (= lt!251387 lt!251389)))

(declare-fun lt!251386 () Unit!10665)

(declare-fun lemmaSemiInverse!226 (TokenValueInjection!2126 BalanceConc!3752) Unit!10665)

(assert (=> b!593022 (= lt!251386 (lemmaSemiInverse!226 (transformation!1155 (h!11271 rules!3103)) (seqFromList!1331 (_1!3666 lt!251388))))))

(declare-fun b!593023 () Bool)

(declare-fun res!255791 () Bool)

(assert (=> b!593023 (=> (not res!255791) (not e!358665))))

(assert (=> b!593023 (= res!255791 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251390)))) (_2!3664 (get!2247 lt!251390))) lt!251225))))

(declare-fun b!593024 () Bool)

(assert (=> b!593024 (= e!358665 (= (size!4642 (_1!3664 (get!2247 lt!251390))) (size!4643 (originalCharacters!1194 (_1!3664 (get!2247 lt!251390))))))))

(declare-fun d!208567 () Bool)

(assert (=> d!208567 e!358663))

(declare-fun res!255787 () Bool)

(assert (=> d!208567 (=> res!255787 e!358663)))

(assert (=> d!208567 (= res!255787 (isEmpty!4240 lt!251390))))

(assert (=> d!208567 (= lt!251390 e!358662)))

(declare-fun c!110527 () Bool)

(assert (=> d!208567 (= c!110527 (isEmpty!4238 (_1!3666 lt!251388)))))

(declare-fun findLongestMatch!168 (Regex!1489 List!5879) tuple2!6804)

(assert (=> d!208567 (= lt!251388 (findLongestMatch!168 (regex!1155 (h!11271 rules!3103)) lt!251225))))

(assert (=> d!208567 (ruleValid!353 thiss!22590 (h!11271 rules!3103))))

(assert (=> d!208567 (= (maxPrefixOneRule!422 thiss!22590 (h!11271 rules!3103) lt!251225) lt!251390)))

(declare-fun b!593025 () Bool)

(assert (=> b!593025 (= e!358664 (matchR!618 (regex!1155 (h!11271 rules!3103)) (_1!3666 (findLongestMatchInner!189 (regex!1155 (h!11271 rules!3103)) Nil!5869 (size!4643 Nil!5869) lt!251225 lt!251225 (size!4643 lt!251225)))))))

(assert (= (and d!208567 c!110527) b!593021))

(assert (= (and d!208567 (not c!110527)) b!593022))

(assert (= (and b!593022 (not res!255785)) b!593025))

(assert (= (and d!208567 (not res!255787)) b!593019))

(assert (= (and b!593019 res!255786) b!593023))

(assert (= (and b!593023 res!255791) b!593017))

(assert (= (and b!593017 res!255789) b!593020))

(assert (= (and b!593020 res!255788) b!593018))

(assert (= (and b!593018 res!255790) b!593024))

(declare-fun m!854717 () Bool)

(assert (=> b!593022 m!854717))

(assert (=> b!593022 m!854717))

(declare-fun m!854719 () Bool)

(assert (=> b!593022 m!854719))

(declare-fun m!854721 () Bool)

(assert (=> b!593022 m!854721))

(assert (=> b!593022 m!854455))

(declare-fun m!854723 () Bool)

(assert (=> b!593022 m!854723))

(assert (=> b!593022 m!854455))

(assert (=> b!593022 m!854717))

(declare-fun m!854725 () Bool)

(assert (=> b!593022 m!854725))

(declare-fun m!854727 () Bool)

(assert (=> b!593022 m!854727))

(assert (=> b!593022 m!854717))

(declare-fun m!854729 () Bool)

(assert (=> b!593022 m!854729))

(assert (=> b!593022 m!854721))

(declare-fun m!854731 () Bool)

(assert (=> b!593022 m!854731))

(declare-fun m!854733 () Bool)

(assert (=> b!593019 m!854733))

(declare-fun m!854735 () Bool)

(assert (=> b!593019 m!854735))

(assert (=> b!593019 m!854735))

(declare-fun m!854737 () Bool)

(assert (=> b!593019 m!854737))

(assert (=> b!593019 m!854737))

(declare-fun m!854739 () Bool)

(assert (=> b!593019 m!854739))

(assert (=> b!593025 m!854721))

(assert (=> b!593025 m!854455))

(assert (=> b!593025 m!854721))

(assert (=> b!593025 m!854455))

(assert (=> b!593025 m!854723))

(declare-fun m!854741 () Bool)

(assert (=> b!593025 m!854741))

(assert (=> b!593017 m!854733))

(declare-fun m!854743 () Bool)

(assert (=> b!593017 m!854743))

(assert (=> b!593017 m!854455))

(assert (=> b!593023 m!854733))

(assert (=> b!593023 m!854735))

(assert (=> b!593023 m!854735))

(assert (=> b!593023 m!854737))

(assert (=> b!593023 m!854737))

(declare-fun m!854745 () Bool)

(assert (=> b!593023 m!854745))

(assert (=> b!593024 m!854733))

(declare-fun m!854747 () Bool)

(assert (=> b!593024 m!854747))

(declare-fun m!854749 () Bool)

(assert (=> d!208567 m!854749))

(declare-fun m!854751 () Bool)

(assert (=> d!208567 m!854751))

(declare-fun m!854753 () Bool)

(assert (=> d!208567 m!854753))

(declare-fun m!854755 () Bool)

(assert (=> d!208567 m!854755))

(assert (=> b!593018 m!854733))

(declare-fun m!854757 () Bool)

(assert (=> b!593018 m!854757))

(assert (=> b!593018 m!854757))

(declare-fun m!854759 () Bool)

(assert (=> b!593018 m!854759))

(assert (=> b!593020 m!854733))

(assert (=> bm!40340 d!208567))

(declare-fun d!208587 () Bool)

(assert (=> d!208587 true))

(declare-fun lambda!15985 () Int)

(declare-fun order!4763 () Int)

(declare-fun order!4765 () Int)

(declare-fun dynLambda!3421 (Int Int) Int)

(declare-fun dynLambda!3422 (Int Int) Int)

(assert (=> d!208587 (< (dynLambda!3421 order!4763 (toValue!2042 (transformation!1155 (rule!1923 token!491)))) (dynLambda!3422 order!4765 lambda!15985))))

(declare-fun Forall2!224 (Int) Bool)

(assert (=> d!208587 (= (equivClasses!440 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))) (Forall2!224 lambda!15985))))

(declare-fun bs!70469 () Bool)

(assert (= bs!70469 d!208587))

(declare-fun m!855125 () Bool)

(assert (=> bs!70469 m!855125))

(assert (=> b!592546 d!208587))

(declare-fun d!208737 () Bool)

(assert (=> d!208737 (= (isEmpty!4240 lt!251316) (not ((_ is Some!1505) lt!251316)))))

(assert (=> d!208389 d!208737))

(assert (=> d!208389 d!208485))

(assert (=> d!208389 d!208493))

(declare-fun d!208739 () Bool)

(assert (=> d!208739 true))

(declare-fun lt!251452 () Bool)

(declare-fun lambda!15988 () Int)

(declare-fun forall!1554 (List!5880 Int) Bool)

(assert (=> d!208739 (= lt!251452 (forall!1554 rules!3103 lambda!15988))))

(declare-fun e!358817 () Bool)

(assert (=> d!208739 (= lt!251452 e!358817)))

(declare-fun res!255905 () Bool)

(assert (=> d!208739 (=> res!255905 e!358817)))

(assert (=> d!208739 (= res!255905 (not ((_ is Cons!5870) rules!3103)))))

(assert (=> d!208739 (= (rulesValidInductive!426 thiss!22590 rules!3103) lt!251452)))

(declare-fun b!593310 () Bool)

(declare-fun e!358818 () Bool)

(assert (=> b!593310 (= e!358817 e!358818)))

(declare-fun res!255904 () Bool)

(assert (=> b!593310 (=> (not res!255904) (not e!358818))))

(assert (=> b!593310 (= res!255904 (ruleValid!353 thiss!22590 (h!11271 rules!3103)))))

(declare-fun b!593311 () Bool)

(assert (=> b!593311 (= e!358818 (rulesValidInductive!426 thiss!22590 (t!79103 rules!3103)))))

(assert (= (and d!208739 (not res!255905)) b!593310))

(assert (= (and b!593310 res!255904) b!593311))

(declare-fun m!855127 () Bool)

(assert (=> d!208739 m!855127))

(assert (=> b!593310 m!854755))

(declare-fun m!855129 () Bool)

(assert (=> b!593311 m!855129))

(assert (=> d!208389 d!208739))

(declare-fun d!208741 () Bool)

(declare-fun e!358821 () Bool)

(assert (=> d!208741 e!358821))

(declare-fun res!255912 () Bool)

(assert (=> d!208741 (=> res!255912 e!358821)))

(declare-fun lt!251453 () Option!1506)

(assert (=> d!208741 (= res!255912 (isEmpty!4240 lt!251453))))

(declare-fun e!358819 () Option!1506)

(assert (=> d!208741 (= lt!251453 e!358819)))

(declare-fun c!110580 () Bool)

(assert (=> d!208741 (= c!110580 (and ((_ is Cons!5870) (t!79103 rules!3103)) ((_ is Nil!5870) (t!79103 (t!79103 rules!3103)))))))

(declare-fun lt!251456 () Unit!10665)

(declare-fun lt!251457 () Unit!10665)

(assert (=> d!208741 (= lt!251456 lt!251457)))

(assert (=> d!208741 (isPrefix!783 input!2705 input!2705)))

(assert (=> d!208741 (= lt!251457 (lemmaIsPrefixRefl!519 input!2705 input!2705))))

(assert (=> d!208741 (rulesValidInductive!426 thiss!22590 (t!79103 rules!3103))))

(assert (=> d!208741 (= (maxPrefix!739 thiss!22590 (t!79103 rules!3103) input!2705) lt!251453)))

(declare-fun b!593314 () Bool)

(declare-fun res!255909 () Bool)

(declare-fun e!358820 () Bool)

(assert (=> b!593314 (=> (not res!255909) (not e!358820))))

(assert (=> b!593314 (= res!255909 (< (size!4643 (_2!3664 (get!2247 lt!251453))) (size!4643 input!2705)))))

(declare-fun call!40364 () Option!1506)

(declare-fun bm!40359 () Bool)

(assert (=> bm!40359 (= call!40364 (maxPrefixOneRule!422 thiss!22590 (h!11271 (t!79103 rules!3103)) input!2705))))

(declare-fun b!593315 () Bool)

(assert (=> b!593315 (= e!358820 (contains!1381 (t!79103 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251453)))))))

(declare-fun b!593316 () Bool)

(declare-fun lt!251455 () Option!1506)

(declare-fun lt!251454 () Option!1506)

(assert (=> b!593316 (= e!358819 (ite (and ((_ is None!1505) lt!251455) ((_ is None!1505) lt!251454)) None!1505 (ite ((_ is None!1505) lt!251454) lt!251455 (ite ((_ is None!1505) lt!251455) lt!251454 (ite (>= (size!4642 (_1!3664 (v!16390 lt!251455))) (size!4642 (_1!3664 (v!16390 lt!251454)))) lt!251455 lt!251454)))))))

(assert (=> b!593316 (= lt!251455 call!40364)))

(assert (=> b!593316 (= lt!251454 (maxPrefix!739 thiss!22590 (t!79103 (t!79103 rules!3103)) input!2705))))

(declare-fun b!593317 () Bool)

(declare-fun res!255910 () Bool)

(assert (=> b!593317 (=> (not res!255910) (not e!358820))))

(assert (=> b!593317 (= res!255910 (= (value!37784 (_1!3664 (get!2247 lt!251453))) (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251453)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251453)))))))))

(declare-fun b!593318 () Bool)

(declare-fun res!255908 () Bool)

(assert (=> b!593318 (=> (not res!255908) (not e!358820))))

(assert (=> b!593318 (= res!255908 (matchR!618 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251453)))) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251453))))))))

(declare-fun b!593319 () Bool)

(assert (=> b!593319 (= e!358819 call!40364)))

(declare-fun b!593320 () Bool)

(assert (=> b!593320 (= e!358821 e!358820)))

(declare-fun res!255906 () Bool)

(assert (=> b!593320 (=> (not res!255906) (not e!358820))))

(assert (=> b!593320 (= res!255906 (isDefined!1317 lt!251453))))

(declare-fun b!593321 () Bool)

(declare-fun res!255907 () Bool)

(assert (=> b!593321 (=> (not res!255907) (not e!358820))))

(assert (=> b!593321 (= res!255907 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251453)))) (_2!3664 (get!2247 lt!251453))) input!2705))))

(declare-fun b!593322 () Bool)

(declare-fun res!255911 () Bool)

(assert (=> b!593322 (=> (not res!255911) (not e!358820))))

(assert (=> b!593322 (= res!255911 (= (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251453)))) (originalCharacters!1194 (_1!3664 (get!2247 lt!251453)))))))

(assert (= (and d!208741 c!110580) b!593319))

(assert (= (and d!208741 (not c!110580)) b!593316))

(assert (= (or b!593319 b!593316) bm!40359))

(assert (= (and d!208741 (not res!255912)) b!593320))

(assert (= (and b!593320 res!255906) b!593322))

(assert (= (and b!593322 res!255911) b!593314))

(assert (= (and b!593314 res!255909) b!593321))

(assert (= (and b!593321 res!255907) b!593317))

(assert (= (and b!593317 res!255910) b!593318))

(assert (= (and b!593318 res!255908) b!593315))

(declare-fun m!855131 () Bool)

(assert (=> b!593321 m!855131))

(declare-fun m!855133 () Bool)

(assert (=> b!593321 m!855133))

(assert (=> b!593321 m!855133))

(declare-fun m!855135 () Bool)

(assert (=> b!593321 m!855135))

(assert (=> b!593321 m!855135))

(declare-fun m!855137 () Bool)

(assert (=> b!593321 m!855137))

(assert (=> b!593322 m!855131))

(assert (=> b!593322 m!855133))

(assert (=> b!593322 m!855133))

(assert (=> b!593322 m!855135))

(assert (=> b!593314 m!855131))

(declare-fun m!855139 () Bool)

(assert (=> b!593314 m!855139))

(assert (=> b!593314 m!854419))

(declare-fun m!855141 () Bool)

(assert (=> b!593320 m!855141))

(assert (=> b!593315 m!855131))

(declare-fun m!855143 () Bool)

(assert (=> b!593315 m!855143))

(assert (=> b!593318 m!855131))

(assert (=> b!593318 m!855133))

(assert (=> b!593318 m!855133))

(assert (=> b!593318 m!855135))

(assert (=> b!593318 m!855135))

(declare-fun m!855145 () Bool)

(assert (=> b!593318 m!855145))

(declare-fun m!855147 () Bool)

(assert (=> b!593316 m!855147))

(declare-fun m!855149 () Bool)

(assert (=> bm!40359 m!855149))

(declare-fun m!855151 () Bool)

(assert (=> d!208741 m!855151))

(assert (=> d!208741 m!854115))

(assert (=> d!208741 m!854111))

(assert (=> d!208741 m!855129))

(assert (=> b!593317 m!855131))

(declare-fun m!855153 () Bool)

(assert (=> b!593317 m!855153))

(assert (=> b!593317 m!855153))

(declare-fun m!855155 () Bool)

(assert (=> b!593317 m!855155))

(assert (=> b!592789 d!208741))

(declare-fun d!208743 () Bool)

(declare-fun lt!251458 () Int)

(assert (=> d!208743 (>= lt!251458 0)))

(declare-fun e!358822 () Int)

(assert (=> d!208743 (= lt!251458 e!358822)))

(declare-fun c!110581 () Bool)

(assert (=> d!208743 (= c!110581 ((_ is Nil!5869) (originalCharacters!1194 token!491)))))

(assert (=> d!208743 (= (size!4643 (originalCharacters!1194 token!491)) lt!251458)))

(declare-fun b!593323 () Bool)

(assert (=> b!593323 (= e!358822 0)))

(declare-fun b!593324 () Bool)

(assert (=> b!593324 (= e!358822 (+ 1 (size!4643 (t!79102 (originalCharacters!1194 token!491)))))))

(assert (= (and d!208743 c!110581) b!593323))

(assert (= (and d!208743 (not c!110581)) b!593324))

(declare-fun m!855157 () Bool)

(assert (=> b!593324 m!855157))

(assert (=> b!592552 d!208743))

(declare-fun d!208745 () Bool)

(declare-fun e!358825 () Bool)

(assert (=> d!208745 e!358825))

(declare-fun res!255919 () Bool)

(assert (=> d!208745 (=> res!255919 e!358825)))

(declare-fun lt!251459 () Option!1506)

(assert (=> d!208745 (= res!255919 (isEmpty!4240 lt!251459))))

(declare-fun e!358823 () Option!1506)

(assert (=> d!208745 (= lt!251459 e!358823)))

(declare-fun c!110582 () Bool)

(assert (=> d!208745 (= c!110582 (and ((_ is Cons!5870) (t!79103 rules!3103)) ((_ is Nil!5870) (t!79103 (t!79103 rules!3103)))))))

(declare-fun lt!251462 () Unit!10665)

(declare-fun lt!251463 () Unit!10665)

(assert (=> d!208745 (= lt!251462 lt!251463)))

(assert (=> d!208745 (isPrefix!783 lt!251225 lt!251225)))

(assert (=> d!208745 (= lt!251463 (lemmaIsPrefixRefl!519 lt!251225 lt!251225))))

(assert (=> d!208745 (rulesValidInductive!426 thiss!22590 (t!79103 rules!3103))))

(assert (=> d!208745 (= (maxPrefix!739 thiss!22590 (t!79103 rules!3103) lt!251225) lt!251459)))

(declare-fun b!593325 () Bool)

(declare-fun res!255916 () Bool)

(declare-fun e!358824 () Bool)

(assert (=> b!593325 (=> (not res!255916) (not e!358824))))

(assert (=> b!593325 (= res!255916 (< (size!4643 (_2!3664 (get!2247 lt!251459))) (size!4643 lt!251225)))))

(declare-fun bm!40360 () Bool)

(declare-fun call!40365 () Option!1506)

(assert (=> bm!40360 (= call!40365 (maxPrefixOneRule!422 thiss!22590 (h!11271 (t!79103 rules!3103)) lt!251225))))

(declare-fun b!593326 () Bool)

(assert (=> b!593326 (= e!358824 (contains!1381 (t!79103 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251459)))))))

(declare-fun b!593327 () Bool)

(declare-fun lt!251461 () Option!1506)

(declare-fun lt!251460 () Option!1506)

(assert (=> b!593327 (= e!358823 (ite (and ((_ is None!1505) lt!251461) ((_ is None!1505) lt!251460)) None!1505 (ite ((_ is None!1505) lt!251460) lt!251461 (ite ((_ is None!1505) lt!251461) lt!251460 (ite (>= (size!4642 (_1!3664 (v!16390 lt!251461))) (size!4642 (_1!3664 (v!16390 lt!251460)))) lt!251461 lt!251460)))))))

(assert (=> b!593327 (= lt!251461 call!40365)))

(assert (=> b!593327 (= lt!251460 (maxPrefix!739 thiss!22590 (t!79103 (t!79103 rules!3103)) lt!251225))))

(declare-fun b!593328 () Bool)

(declare-fun res!255917 () Bool)

(assert (=> b!593328 (=> (not res!255917) (not e!358824))))

(assert (=> b!593328 (= res!255917 (= (value!37784 (_1!3664 (get!2247 lt!251459))) (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251459)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251459)))))))))

(declare-fun b!593329 () Bool)

(declare-fun res!255915 () Bool)

(assert (=> b!593329 (=> (not res!255915) (not e!358824))))

(assert (=> b!593329 (= res!255915 (matchR!618 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251459)))) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251459))))))))

(declare-fun b!593330 () Bool)

(assert (=> b!593330 (= e!358823 call!40365)))

(declare-fun b!593331 () Bool)

(assert (=> b!593331 (= e!358825 e!358824)))

(declare-fun res!255913 () Bool)

(assert (=> b!593331 (=> (not res!255913) (not e!358824))))

(assert (=> b!593331 (= res!255913 (isDefined!1317 lt!251459))))

(declare-fun b!593332 () Bool)

(declare-fun res!255914 () Bool)

(assert (=> b!593332 (=> (not res!255914) (not e!358824))))

(assert (=> b!593332 (= res!255914 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251459)))) (_2!3664 (get!2247 lt!251459))) lt!251225))))

(declare-fun b!593333 () Bool)

(declare-fun res!255918 () Bool)

(assert (=> b!593333 (=> (not res!255918) (not e!358824))))

(assert (=> b!593333 (= res!255918 (= (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251459)))) (originalCharacters!1194 (_1!3664 (get!2247 lt!251459)))))))

(assert (= (and d!208745 c!110582) b!593330))

(assert (= (and d!208745 (not c!110582)) b!593327))

(assert (= (or b!593330 b!593327) bm!40360))

(assert (= (and d!208745 (not res!255919)) b!593331))

(assert (= (and b!593331 res!255913) b!593333))

(assert (= (and b!593333 res!255918) b!593325))

(assert (= (and b!593325 res!255916) b!593332))

(assert (= (and b!593332 res!255914) b!593328))

(assert (= (and b!593328 res!255917) b!593329))

(assert (= (and b!593329 res!255915) b!593326))

(declare-fun m!855159 () Bool)

(assert (=> b!593332 m!855159))

(declare-fun m!855161 () Bool)

(assert (=> b!593332 m!855161))

(assert (=> b!593332 m!855161))

(declare-fun m!855163 () Bool)

(assert (=> b!593332 m!855163))

(assert (=> b!593332 m!855163))

(declare-fun m!855165 () Bool)

(assert (=> b!593332 m!855165))

(assert (=> b!593333 m!855159))

(assert (=> b!593333 m!855161))

(assert (=> b!593333 m!855161))

(assert (=> b!593333 m!855163))

(assert (=> b!593325 m!855159))

(declare-fun m!855167 () Bool)

(assert (=> b!593325 m!855167))

(assert (=> b!593325 m!854455))

(declare-fun m!855169 () Bool)

(assert (=> b!593331 m!855169))

(assert (=> b!593326 m!855159))

(declare-fun m!855171 () Bool)

(assert (=> b!593326 m!855171))

(assert (=> b!593329 m!855159))

(assert (=> b!593329 m!855161))

(assert (=> b!593329 m!855161))

(assert (=> b!593329 m!855163))

(assert (=> b!593329 m!855163))

(declare-fun m!855173 () Bool)

(assert (=> b!593329 m!855173))

(declare-fun m!855175 () Bool)

(assert (=> b!593327 m!855175))

(declare-fun m!855177 () Bool)

(assert (=> bm!40360 m!855177))

(declare-fun m!855179 () Bool)

(assert (=> d!208745 m!855179))

(assert (=> d!208745 m!854469))

(assert (=> d!208745 m!854471))

(assert (=> d!208745 m!855129))

(assert (=> b!593328 m!855159))

(declare-fun m!855181 () Bool)

(assert (=> b!593328 m!855181))

(assert (=> b!593328 m!855181))

(declare-fun m!855183 () Bool)

(assert (=> b!593328 m!855183))

(assert (=> b!592799 d!208745))

(assert (=> d!208493 d!208485))

(declare-fun d!208747 () Bool)

(assert (=> d!208747 (isPrefix!783 input!2705 input!2705)))

(assert (=> d!208747 true))

(declare-fun _$45!1306 () Unit!10665)

(assert (=> d!208747 (= (choose!4295 input!2705 input!2705) _$45!1306)))

(declare-fun bs!70470 () Bool)

(assert (= bs!70470 d!208747))

(assert (=> bs!70470 m!854115))

(assert (=> d!208493 d!208747))

(declare-fun d!208749 () Bool)

(declare-fun lt!251464 () List!5879)

(assert (=> d!208749 (= (++!1643 (t!79102 lt!251228) lt!251464) (tail!785 input!2705))))

(declare-fun e!358826 () List!5879)

(assert (=> d!208749 (= lt!251464 e!358826)))

(declare-fun c!110583 () Bool)

(assert (=> d!208749 (= c!110583 ((_ is Cons!5869) (t!79102 lt!251228)))))

(assert (=> d!208749 (>= (size!4643 (tail!785 input!2705)) (size!4643 (t!79102 lt!251228)))))

(assert (=> d!208749 (= (getSuffix!300 (tail!785 input!2705) (t!79102 lt!251228)) lt!251464)))

(declare-fun b!593334 () Bool)

(assert (=> b!593334 (= e!358826 (getSuffix!300 (tail!785 (tail!785 input!2705)) (t!79102 (t!79102 lt!251228))))))

(declare-fun b!593335 () Bool)

(assert (=> b!593335 (= e!358826 (tail!785 input!2705))))

(assert (= (and d!208749 c!110583) b!593334))

(assert (= (and d!208749 (not c!110583)) b!593335))

(declare-fun m!855185 () Bool)

(assert (=> d!208749 m!855185))

(assert (=> d!208749 m!854507))

(declare-fun m!855187 () Bool)

(assert (=> d!208749 m!855187))

(assert (=> d!208749 m!854539))

(assert (=> b!593334 m!854507))

(declare-fun m!855189 () Bool)

(assert (=> b!593334 m!855189))

(assert (=> b!593334 m!855189))

(declare-fun m!855191 () Bool)

(assert (=> b!593334 m!855191))

(assert (=> b!592833 d!208749))

(declare-fun d!208751 () Bool)

(assert (=> d!208751 (= (tail!785 input!2705) (t!79102 input!2705))))

(assert (=> b!592833 d!208751))

(declare-fun d!208753 () Bool)

(assert (=> d!208753 (= (list!2456 lt!251329) (list!2458 (c!110456 lt!251329)))))

(declare-fun bs!70471 () Bool)

(assert (= bs!70471 d!208753))

(declare-fun m!855193 () Bool)

(assert (=> bs!70471 m!855193))

(assert (=> d!208473 d!208753))

(declare-fun b!593336 () Bool)

(declare-fun res!255924 () Bool)

(declare-fun e!358830 () Bool)

(assert (=> b!593336 (=> (not res!255924) (not e!358830))))

(declare-fun lt!251469 () Option!1506)

(assert (=> b!593336 (= res!255924 (< (size!4643 (_2!3664 (get!2247 lt!251469))) (size!4643 input!2705)))))

(declare-fun b!593337 () Bool)

(declare-fun res!255925 () Bool)

(assert (=> b!593337 (=> (not res!255925) (not e!358830))))

(assert (=> b!593337 (= res!255925 (= (value!37784 (_1!3664 (get!2247 lt!251469))) (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251469)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251469)))))))))

(declare-fun b!593338 () Bool)

(declare-fun e!358828 () Bool)

(assert (=> b!593338 (= e!358828 e!358830)))

(declare-fun res!255921 () Bool)

(assert (=> b!593338 (=> (not res!255921) (not e!358830))))

(assert (=> b!593338 (= res!255921 (matchR!618 (regex!1155 (h!11271 rules!3103)) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251469))))))))

(declare-fun b!593339 () Bool)

(declare-fun res!255923 () Bool)

(assert (=> b!593339 (=> (not res!255923) (not e!358830))))

(assert (=> b!593339 (= res!255923 (= (rule!1923 (_1!3664 (get!2247 lt!251469))) (h!11271 rules!3103)))))

(declare-fun b!593340 () Bool)

(declare-fun e!358827 () Option!1506)

(assert (=> b!593340 (= e!358827 None!1505)))

(declare-fun b!593341 () Bool)

(declare-fun lt!251467 () tuple2!6804)

(assert (=> b!593341 (= e!358827 (Some!1505 (tuple2!6801 (Token!2047 (apply!1408 (transformation!1155 (h!11271 rules!3103)) (seqFromList!1331 (_1!3666 lt!251467))) (h!11271 rules!3103) (size!4645 (seqFromList!1331 (_1!3666 lt!251467))) (_1!3666 lt!251467)) (_2!3666 lt!251467))))))

(declare-fun lt!251468 () Unit!10665)

(assert (=> b!593341 (= lt!251468 (longestMatchIsAcceptedByMatchOrIsEmpty!173 (regex!1155 (h!11271 rules!3103)) input!2705))))

(declare-fun res!255920 () Bool)

(assert (=> b!593341 (= res!255920 (isEmpty!4238 (_1!3666 (findLongestMatchInner!189 (regex!1155 (h!11271 rules!3103)) Nil!5869 (size!4643 Nil!5869) input!2705 input!2705 (size!4643 input!2705)))))))

(declare-fun e!358829 () Bool)

(assert (=> b!593341 (=> res!255920 e!358829)))

(assert (=> b!593341 e!358829))

(declare-fun lt!251466 () Unit!10665)

(assert (=> b!593341 (= lt!251466 lt!251468)))

(declare-fun lt!251465 () Unit!10665)

(assert (=> b!593341 (= lt!251465 (lemmaSemiInverse!226 (transformation!1155 (h!11271 rules!3103)) (seqFromList!1331 (_1!3666 lt!251467))))))

(declare-fun b!593342 () Bool)

(declare-fun res!255926 () Bool)

(assert (=> b!593342 (=> (not res!255926) (not e!358830))))

(assert (=> b!593342 (= res!255926 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251469)))) (_2!3664 (get!2247 lt!251469))) input!2705))))

(declare-fun b!593343 () Bool)

(assert (=> b!593343 (= e!358830 (= (size!4642 (_1!3664 (get!2247 lt!251469))) (size!4643 (originalCharacters!1194 (_1!3664 (get!2247 lt!251469))))))))

(declare-fun d!208755 () Bool)

(assert (=> d!208755 e!358828))

(declare-fun res!255922 () Bool)

(assert (=> d!208755 (=> res!255922 e!358828)))

(assert (=> d!208755 (= res!255922 (isEmpty!4240 lt!251469))))

(assert (=> d!208755 (= lt!251469 e!358827)))

(declare-fun c!110584 () Bool)

(assert (=> d!208755 (= c!110584 (isEmpty!4238 (_1!3666 lt!251467)))))

(assert (=> d!208755 (= lt!251467 (findLongestMatch!168 (regex!1155 (h!11271 rules!3103)) input!2705))))

(assert (=> d!208755 (ruleValid!353 thiss!22590 (h!11271 rules!3103))))

(assert (=> d!208755 (= (maxPrefixOneRule!422 thiss!22590 (h!11271 rules!3103) input!2705) lt!251469)))

(declare-fun b!593344 () Bool)

(assert (=> b!593344 (= e!358829 (matchR!618 (regex!1155 (h!11271 rules!3103)) (_1!3666 (findLongestMatchInner!189 (regex!1155 (h!11271 rules!3103)) Nil!5869 (size!4643 Nil!5869) input!2705 input!2705 (size!4643 input!2705)))))))

(assert (= (and d!208755 c!110584) b!593340))

(assert (= (and d!208755 (not c!110584)) b!593341))

(assert (= (and b!593341 (not res!255920)) b!593344))

(assert (= (and d!208755 (not res!255922)) b!593338))

(assert (= (and b!593338 res!255921) b!593342))

(assert (= (and b!593342 res!255926) b!593336))

(assert (= (and b!593336 res!255924) b!593339))

(assert (= (and b!593339 res!255923) b!593337))

(assert (= (and b!593337 res!255925) b!593343))

(declare-fun m!855195 () Bool)

(assert (=> b!593341 m!855195))

(assert (=> b!593341 m!855195))

(declare-fun m!855197 () Bool)

(assert (=> b!593341 m!855197))

(assert (=> b!593341 m!854721))

(assert (=> b!593341 m!854419))

(declare-fun m!855199 () Bool)

(assert (=> b!593341 m!855199))

(assert (=> b!593341 m!854419))

(assert (=> b!593341 m!855195))

(declare-fun m!855201 () Bool)

(assert (=> b!593341 m!855201))

(declare-fun m!855203 () Bool)

(assert (=> b!593341 m!855203))

(assert (=> b!593341 m!855195))

(declare-fun m!855205 () Bool)

(assert (=> b!593341 m!855205))

(assert (=> b!593341 m!854721))

(declare-fun m!855207 () Bool)

(assert (=> b!593341 m!855207))

(declare-fun m!855209 () Bool)

(assert (=> b!593338 m!855209))

(declare-fun m!855211 () Bool)

(assert (=> b!593338 m!855211))

(assert (=> b!593338 m!855211))

(declare-fun m!855213 () Bool)

(assert (=> b!593338 m!855213))

(assert (=> b!593338 m!855213))

(declare-fun m!855215 () Bool)

(assert (=> b!593338 m!855215))

(assert (=> b!593344 m!854721))

(assert (=> b!593344 m!854419))

(assert (=> b!593344 m!854721))

(assert (=> b!593344 m!854419))

(assert (=> b!593344 m!855199))

(declare-fun m!855217 () Bool)

(assert (=> b!593344 m!855217))

(assert (=> b!593336 m!855209))

(declare-fun m!855219 () Bool)

(assert (=> b!593336 m!855219))

(assert (=> b!593336 m!854419))

(assert (=> b!593342 m!855209))

(assert (=> b!593342 m!855211))

(assert (=> b!593342 m!855211))

(assert (=> b!593342 m!855213))

(assert (=> b!593342 m!855213))

(declare-fun m!855221 () Bool)

(assert (=> b!593342 m!855221))

(assert (=> b!593343 m!855209))

(declare-fun m!855223 () Bool)

(assert (=> b!593343 m!855223))

(declare-fun m!855225 () Bool)

(assert (=> d!208755 m!855225))

(declare-fun m!855227 () Bool)

(assert (=> d!208755 m!855227))

(declare-fun m!855229 () Bool)

(assert (=> d!208755 m!855229))

(assert (=> d!208755 m!854755))

(assert (=> b!593337 m!855209))

(declare-fun m!855231 () Bool)

(assert (=> b!593337 m!855231))

(assert (=> b!593337 m!855231))

(declare-fun m!855233 () Bool)

(assert (=> b!593337 m!855233))

(assert (=> b!593339 m!855209))

(assert (=> bm!40339 d!208755))

(declare-fun d!208757 () Bool)

(declare-fun lt!251470 () Int)

(assert (=> d!208757 (>= lt!251470 0)))

(declare-fun e!358831 () Int)

(assert (=> d!208757 (= lt!251470 e!358831)))

(declare-fun c!110585 () Bool)

(assert (=> d!208757 (= c!110585 ((_ is Nil!5869) (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))

(assert (=> d!208757 (= (size!4643 (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))) lt!251470)))

(declare-fun b!593345 () Bool)

(assert (=> b!593345 (= e!358831 0)))

(declare-fun b!593346 () Bool)

(assert (=> b!593346 (= e!358831 (+ 1 (size!4643 (t!79102 (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))))

(assert (= (and d!208757 c!110585) b!593345))

(assert (= (and d!208757 (not c!110585)) b!593346))

(declare-fun m!855235 () Bool)

(assert (=> b!593346 m!855235))

(assert (=> b!592849 d!208757))

(declare-fun d!208759 () Bool)

(assert (=> d!208759 (= (isEmpty!4240 lt!251242) (not ((_ is Some!1505) lt!251242)))))

(assert (=> d!208463 d!208759))

(declare-fun d!208761 () Bool)

(declare-fun charsToBigInt!0 (List!5878 Int) Int)

(assert (=> d!208761 (= (inv!15 (value!37784 token!491)) (= (charsToBigInt!0 (text!8702 (value!37784 token!491)) 0) (value!37780 (value!37784 token!491))))))

(declare-fun bs!70472 () Bool)

(assert (= bs!70472 d!208761))

(declare-fun m!855237 () Bool)

(assert (=> bs!70472 m!855237))

(assert (=> b!592586 d!208761))

(declare-fun d!208763 () Bool)

(declare-fun e!358832 () Bool)

(assert (=> d!208763 e!358832))

(declare-fun res!255927 () Bool)

(assert (=> d!208763 (=> (not res!255927) (not e!358832))))

(declare-fun lt!251471 () List!5879)

(assert (=> d!208763 (= res!255927 (= (content!1057 lt!251471) ((_ map or) (content!1057 (t!79102 lt!251228)) (content!1057 (_2!3664 (v!16390 lt!251233))))))))

(declare-fun e!358833 () List!5879)

(assert (=> d!208763 (= lt!251471 e!358833)))

(declare-fun c!110586 () Bool)

(assert (=> d!208763 (= c!110586 ((_ is Nil!5869) (t!79102 lt!251228)))))

(assert (=> d!208763 (= (++!1643 (t!79102 lt!251228) (_2!3664 (v!16390 lt!251233))) lt!251471)))

(declare-fun b!593350 () Bool)

(assert (=> b!593350 (= e!358832 (or (not (= (_2!3664 (v!16390 lt!251233)) Nil!5869)) (= lt!251471 (t!79102 lt!251228))))))

(declare-fun b!593349 () Bool)

(declare-fun res!255928 () Bool)

(assert (=> b!593349 (=> (not res!255928) (not e!358832))))

(assert (=> b!593349 (= res!255928 (= (size!4643 lt!251471) (+ (size!4643 (t!79102 lt!251228)) (size!4643 (_2!3664 (v!16390 lt!251233))))))))

(declare-fun b!593348 () Bool)

(assert (=> b!593348 (= e!358833 (Cons!5869 (h!11270 (t!79102 lt!251228)) (++!1643 (t!79102 (t!79102 lt!251228)) (_2!3664 (v!16390 lt!251233)))))))

(declare-fun b!593347 () Bool)

(assert (=> b!593347 (= e!358833 (_2!3664 (v!16390 lt!251233)))))

(assert (= (and d!208763 c!110586) b!593347))

(assert (= (and d!208763 (not c!110586)) b!593348))

(assert (= (and d!208763 res!255927) b!593349))

(assert (= (and b!593349 res!255928) b!593350))

(declare-fun m!855239 () Bool)

(assert (=> d!208763 m!855239))

(declare-fun m!855241 () Bool)

(assert (=> d!208763 m!855241))

(assert (=> d!208763 m!854545))

(declare-fun m!855243 () Bool)

(assert (=> b!593349 m!855243))

(assert (=> b!593349 m!854539))

(assert (=> b!593349 m!854549))

(declare-fun m!855245 () Bool)

(assert (=> b!593348 m!855245))

(assert (=> b!592839 d!208763))

(declare-fun b!593354 () Bool)

(declare-fun e!358835 () Bool)

(assert (=> b!593354 (= e!358835 (>= (size!4643 (tail!785 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))) (size!4643 (tail!785 lt!251228))))))

(declare-fun d!208765 () Bool)

(assert (=> d!208765 e!358835))

(declare-fun res!255931 () Bool)

(assert (=> d!208765 (=> res!255931 e!358835)))

(declare-fun lt!251472 () Bool)

(assert (=> d!208765 (= res!255931 (not lt!251472))))

(declare-fun e!358836 () Bool)

(assert (=> d!208765 (= lt!251472 e!358836)))

(declare-fun res!255929 () Bool)

(assert (=> d!208765 (=> res!255929 e!358836)))

(assert (=> d!208765 (= res!255929 ((_ is Nil!5869) (tail!785 lt!251228)))))

(assert (=> d!208765 (= (isPrefix!783 (tail!785 lt!251228) (tail!785 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))) lt!251472)))

(declare-fun b!593351 () Bool)

(declare-fun e!358834 () Bool)

(assert (=> b!593351 (= e!358836 e!358834)))

(declare-fun res!255930 () Bool)

(assert (=> b!593351 (=> (not res!255930) (not e!358834))))

(assert (=> b!593351 (= res!255930 (not ((_ is Nil!5869) (tail!785 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))))))))

(declare-fun b!593353 () Bool)

(assert (=> b!593353 (= e!358834 (isPrefix!783 (tail!785 (tail!785 lt!251228)) (tail!785 (tail!785 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))))))))

(declare-fun b!593352 () Bool)

(declare-fun res!255932 () Bool)

(assert (=> b!593352 (=> (not res!255932) (not e!358834))))

(assert (=> b!593352 (= res!255932 (= (head!1256 (tail!785 lt!251228)) (head!1256 (tail!785 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))))))))

(assert (= (and d!208765 (not res!255929)) b!593351))

(assert (= (and b!593351 res!255930) b!593352))

(assert (= (and b!593352 res!255932) b!593353))

(assert (= (and d!208765 (not res!255931)) b!593354))

(assert (=> b!593354 m!854577))

(declare-fun m!855247 () Bool)

(assert (=> b!593354 m!855247))

(assert (=> b!593354 m!854575))

(declare-fun m!855249 () Bool)

(assert (=> b!593354 m!855249))

(assert (=> b!593353 m!854575))

(declare-fun m!855251 () Bool)

(assert (=> b!593353 m!855251))

(assert (=> b!593353 m!854577))

(declare-fun m!855253 () Bool)

(assert (=> b!593353 m!855253))

(assert (=> b!593353 m!855251))

(assert (=> b!593353 m!855253))

(declare-fun m!855255 () Bool)

(assert (=> b!593353 m!855255))

(assert (=> b!593352 m!854575))

(declare-fun m!855257 () Bool)

(assert (=> b!593352 m!855257))

(assert (=> b!593352 m!854577))

(declare-fun m!855259 () Bool)

(assert (=> b!593352 m!855259))

(assert (=> b!592855 d!208765))

(declare-fun d!208767 () Bool)

(assert (=> d!208767 (= (tail!785 lt!251228) (t!79102 lt!251228))))

(assert (=> b!592855 d!208767))

(declare-fun d!208769 () Bool)

(assert (=> d!208769 (= (tail!785 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))) (t!79102 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))))))

(assert (=> b!592855 d!208769))

(assert (=> d!208505 d!208511))

(declare-fun d!208771 () Bool)

(assert (=> d!208771 (ruleValid!353 thiss!22590 (rule!1923 token!491))))

(assert (=> d!208771 true))

(declare-fun _$65!856 () Unit!10665)

(assert (=> d!208771 (= (choose!4293 thiss!22590 (rule!1923 token!491) rules!3103) _$65!856)))

(declare-fun bs!70473 () Bool)

(assert (= bs!70473 d!208771))

(assert (=> bs!70473 m!854129))

(assert (=> d!208505 d!208771))

(declare-fun d!208773 () Bool)

(declare-fun lt!251475 () Bool)

(declare-fun content!1059 (List!5880) (InoxSet Rule!2110))

(assert (=> d!208773 (= lt!251475 (select (content!1059 rules!3103) (rule!1923 token!491)))))

(declare-fun e!358842 () Bool)

(assert (=> d!208773 (= lt!251475 e!358842)))

(declare-fun res!255937 () Bool)

(assert (=> d!208773 (=> (not res!255937) (not e!358842))))

(assert (=> d!208773 (= res!255937 ((_ is Cons!5870) rules!3103))))

(assert (=> d!208773 (= (contains!1381 rules!3103 (rule!1923 token!491)) lt!251475)))

(declare-fun b!593359 () Bool)

(declare-fun e!358841 () Bool)

(assert (=> b!593359 (= e!358842 e!358841)))

(declare-fun res!255938 () Bool)

(assert (=> b!593359 (=> res!255938 e!358841)))

(assert (=> b!593359 (= res!255938 (= (h!11271 rules!3103) (rule!1923 token!491)))))

(declare-fun b!593360 () Bool)

(assert (=> b!593360 (= e!358841 (contains!1381 (t!79103 rules!3103) (rule!1923 token!491)))))

(assert (= (and d!208773 res!255937) b!593359))

(assert (= (and b!593359 (not res!255938)) b!593360))

(declare-fun m!855261 () Bool)

(assert (=> d!208773 m!855261))

(declare-fun m!855263 () Bool)

(assert (=> d!208773 m!855263))

(declare-fun m!855265 () Bool)

(assert (=> b!593360 m!855265))

(assert (=> d!208505 d!208773))

(declare-fun d!208775 () Bool)

(declare-fun e!358843 () Bool)

(assert (=> d!208775 e!358843))

(declare-fun res!255939 () Bool)

(assert (=> d!208775 (=> (not res!255939) (not e!358843))))

(declare-fun lt!251476 () List!5879)

(assert (=> d!208775 (= res!255939 (= (content!1057 lt!251476) ((_ map or) (content!1057 (t!79102 lt!251238)) (content!1057 suffix!1342))))))

(declare-fun e!358844 () List!5879)

(assert (=> d!208775 (= lt!251476 e!358844)))

(declare-fun c!110587 () Bool)

(assert (=> d!208775 (= c!110587 ((_ is Nil!5869) (t!79102 lt!251238)))))

(assert (=> d!208775 (= (++!1643 (t!79102 lt!251238) suffix!1342) lt!251476)))

(declare-fun b!593364 () Bool)

(assert (=> b!593364 (= e!358843 (or (not (= suffix!1342 Nil!5869)) (= lt!251476 (t!79102 lt!251238))))))

(declare-fun b!593363 () Bool)

(declare-fun res!255940 () Bool)

(assert (=> b!593363 (=> (not res!255940) (not e!358843))))

(assert (=> b!593363 (= res!255940 (= (size!4643 lt!251476) (+ (size!4643 (t!79102 lt!251238)) (size!4643 suffix!1342))))))

(declare-fun b!593362 () Bool)

(assert (=> b!593362 (= e!358844 (Cons!5869 (h!11270 (t!79102 lt!251238)) (++!1643 (t!79102 (t!79102 lt!251238)) suffix!1342)))))

(declare-fun b!593361 () Bool)

(assert (=> b!593361 (= e!358844 suffix!1342)))

(assert (= (and d!208775 c!110587) b!593361))

(assert (= (and d!208775 (not c!110587)) b!593362))

(assert (= (and d!208775 res!255939) b!593363))

(assert (= (and b!593363 res!255940) b!593364))

(declare-fun m!855267 () Bool)

(assert (=> d!208775 m!855267))

(declare-fun m!855269 () Bool)

(assert (=> d!208775 m!855269))

(assert (=> d!208775 m!854197))

(declare-fun m!855271 () Bool)

(assert (=> b!593363 m!855271))

(assert (=> b!593363 m!854505))

(assert (=> b!593363 m!854201))

(declare-fun m!855273 () Bool)

(assert (=> b!593362 m!855273))

(assert (=> b!592596 d!208775))

(declare-fun d!208777 () Bool)

(declare-fun e!358845 () Bool)

(assert (=> d!208777 e!358845))

(declare-fun res!255941 () Bool)

(assert (=> d!208777 (=> (not res!255941) (not e!358845))))

(declare-fun lt!251477 () List!5879)

(assert (=> d!208777 (= res!255941 (= (content!1057 lt!251477) ((_ map or) (content!1057 (t!79102 input!2705)) (content!1057 suffix!1342))))))

(declare-fun e!358846 () List!5879)

(assert (=> d!208777 (= lt!251477 e!358846)))

(declare-fun c!110588 () Bool)

(assert (=> d!208777 (= c!110588 ((_ is Nil!5869) (t!79102 input!2705)))))

(assert (=> d!208777 (= (++!1643 (t!79102 input!2705) suffix!1342) lt!251477)))

(declare-fun b!593368 () Bool)

(assert (=> b!593368 (= e!358845 (or (not (= suffix!1342 Nil!5869)) (= lt!251477 (t!79102 input!2705))))))

(declare-fun b!593367 () Bool)

(declare-fun res!255942 () Bool)

(assert (=> b!593367 (=> (not res!255942) (not e!358845))))

(assert (=> b!593367 (= res!255942 (= (size!4643 lt!251477) (+ (size!4643 (t!79102 input!2705)) (size!4643 suffix!1342))))))

(declare-fun b!593366 () Bool)

(assert (=> b!593366 (= e!358846 (Cons!5869 (h!11270 (t!79102 input!2705)) (++!1643 (t!79102 (t!79102 input!2705)) suffix!1342)))))

(declare-fun b!593365 () Bool)

(assert (=> b!593365 (= e!358846 suffix!1342)))

(assert (= (and d!208777 c!110588) b!593365))

(assert (= (and d!208777 (not c!110588)) b!593366))

(assert (= (and d!208777 res!255941) b!593367))

(assert (= (and b!593367 res!255942) b!593368))

(declare-fun m!855275 () Bool)

(assert (=> d!208777 m!855275))

(declare-fun m!855277 () Bool)

(assert (=> d!208777 m!855277))

(assert (=> d!208777 m!854197))

(declare-fun m!855279 () Bool)

(assert (=> b!593367 m!855279))

(declare-fun m!855281 () Bool)

(assert (=> b!593367 m!855281))

(assert (=> b!593367 m!854201))

(declare-fun m!855283 () Bool)

(assert (=> b!593366 m!855283))

(assert (=> b!592807 d!208777))

(declare-fun d!208779 () Bool)

(declare-fun e!358849 () Bool)

(assert (=> d!208779 e!358849))

(declare-fun res!255945 () Bool)

(assert (=> d!208779 (=> (not res!255945) (not e!358849))))

(declare-fun lt!251480 () BalanceConc!3752)

(assert (=> d!208779 (= res!255945 (= (list!2456 lt!251480) lt!251228))))

(declare-fun fromList!275 (List!5879) Conc!1872)

(assert (=> d!208779 (= lt!251480 (BalanceConc!3753 (fromList!275 lt!251228)))))

(assert (=> d!208779 (= (fromListB!584 lt!251228) lt!251480)))

(declare-fun b!593371 () Bool)

(declare-fun isBalanced!524 (Conc!1872) Bool)

(assert (=> b!593371 (= e!358849 (isBalanced!524 (fromList!275 lt!251228)))))

(assert (= (and d!208779 res!255945) b!593371))

(declare-fun m!855285 () Bool)

(assert (=> d!208779 m!855285))

(declare-fun m!855287 () Bool)

(assert (=> d!208779 m!855287))

(assert (=> b!593371 m!855287))

(assert (=> b!593371 m!855287))

(declare-fun m!855289 () Bool)

(assert (=> b!593371 m!855289))

(assert (=> d!208491 d!208779))

(assert (=> d!208479 d!208515))

(declare-fun d!208781 () Bool)

(assert (=> d!208781 (ruleValid!353 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233))))))

(assert (=> d!208781 true))

(declare-fun _$65!857 () Unit!10665)

(assert (=> d!208781 (= (choose!4293 thiss!22590 (rule!1923 (_1!3664 (v!16390 lt!251233))) rules!3103) _$65!857)))

(declare-fun bs!70474 () Bool)

(assert (= bs!70474 d!208781))

(assert (=> bs!70474 m!854127))

(assert (=> d!208479 d!208781))

(declare-fun d!208783 () Bool)

(declare-fun lt!251481 () Bool)

(assert (=> d!208783 (= lt!251481 (select (content!1059 rules!3103) (rule!1923 (_1!3664 (v!16390 lt!251233)))))))

(declare-fun e!358851 () Bool)

(assert (=> d!208783 (= lt!251481 e!358851)))

(declare-fun res!255946 () Bool)

(assert (=> d!208783 (=> (not res!255946) (not e!358851))))

(assert (=> d!208783 (= res!255946 ((_ is Cons!5870) rules!3103))))

(assert (=> d!208783 (= (contains!1381 rules!3103 (rule!1923 (_1!3664 (v!16390 lt!251233)))) lt!251481)))

(declare-fun b!593372 () Bool)

(declare-fun e!358850 () Bool)

(assert (=> b!593372 (= e!358851 e!358850)))

(declare-fun res!255947 () Bool)

(assert (=> b!593372 (=> res!255947 e!358850)))

(assert (=> b!593372 (= res!255947 (= (h!11271 rules!3103) (rule!1923 (_1!3664 (v!16390 lt!251233)))))))

(declare-fun b!593373 () Bool)

(assert (=> b!593373 (= e!358850 (contains!1381 (t!79103 rules!3103) (rule!1923 (_1!3664 (v!16390 lt!251233)))))))

(assert (= (and d!208783 res!255946) b!593372))

(assert (= (and b!593372 (not res!255947)) b!593373))

(assert (=> d!208783 m!855261))

(declare-fun m!855291 () Bool)

(assert (=> d!208783 m!855291))

(declare-fun m!855293 () Bool)

(assert (=> b!593373 m!855293))

(assert (=> d!208479 d!208783))

(declare-fun d!208785 () Bool)

(assert (=> d!208785 (= (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))) (isBalanced!524 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))))))

(declare-fun bs!70475 () Bool)

(assert (= bs!70475 d!208785))

(declare-fun m!855295 () Bool)

(assert (=> bs!70475 m!855295))

(assert (=> tb!51763 d!208785))

(declare-fun d!208787 () Bool)

(declare-fun lt!251482 () Int)

(assert (=> d!208787 (>= lt!251482 0)))

(declare-fun e!358852 () Int)

(assert (=> d!208787 (= lt!251482 e!358852)))

(declare-fun c!110590 () Bool)

(assert (=> d!208787 (= c!110590 ((_ is Nil!5869) input!2705))))

(assert (=> d!208787 (= (size!4643 input!2705) lt!251482)))

(declare-fun b!593374 () Bool)

(assert (=> b!593374 (= e!358852 0)))

(declare-fun b!593375 () Bool)

(assert (=> b!593375 (= e!358852 (+ 1 (size!4643 (t!79102 input!2705))))))

(assert (= (and d!208787 c!110590) b!593374))

(assert (= (and d!208787 (not c!110590)) b!593375))

(assert (=> b!593375 m!855281))

(assert (=> b!592828 d!208787))

(assert (=> d!208501 d!208517))

(assert (=> d!208501 d!208509))

(declare-fun d!208789 () Bool)

(assert (=> d!208789 (isPrefix!783 lt!251228 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233))))))

(assert (=> d!208789 true))

(declare-fun _$46!965 () Unit!10665)

(assert (=> d!208789 (= (choose!4297 lt!251228 (_2!3664 (v!16390 lt!251233))) _$46!965)))

(declare-fun bs!70476 () Bool)

(assert (= bs!70476 d!208789))

(assert (=> bs!70476 m!854109))

(assert (=> bs!70476 m!854109))

(assert (=> bs!70476 m!854119))

(assert (=> d!208501 d!208789))

(declare-fun d!208791 () Bool)

(declare-fun charsToInt!0 (List!5878) (_ BitVec 32))

(assert (=> d!208791 (= (inv!16 (value!37784 token!491)) (= (charsToInt!0 (text!8700 (value!37784 token!491))) (value!37776 (value!37784 token!491))))))

(declare-fun bs!70477 () Bool)

(assert (= bs!70477 d!208791))

(declare-fun m!855297 () Bool)

(assert (=> bs!70477 m!855297))

(assert (=> b!592582 d!208791))

(declare-fun d!208793 () Bool)

(declare-fun lt!251483 () Int)

(assert (=> d!208793 (>= lt!251483 0)))

(declare-fun e!358853 () Int)

(assert (=> d!208793 (= lt!251483 e!358853)))

(declare-fun c!110591 () Bool)

(assert (=> d!208793 (= c!110591 ((_ is Nil!5869) (t!79102 (originalCharacters!1194 (_1!3664 (v!16390 lt!251233))))))))

(assert (=> d!208793 (= (size!4643 (t!79102 (originalCharacters!1194 (_1!3664 (v!16390 lt!251233))))) lt!251483)))

(declare-fun b!593376 () Bool)

(assert (=> b!593376 (= e!358853 0)))

(declare-fun b!593377 () Bool)

(assert (=> b!593377 (= e!358853 (+ 1 (size!4643 (t!79102 (t!79102 (originalCharacters!1194 (_1!3664 (v!16390 lt!251233))))))))))

(assert (= (and d!208793 c!110591) b!593376))

(assert (= (and d!208793 (not c!110591)) b!593377))

(declare-fun m!855299 () Bool)

(assert (=> b!593377 m!855299))

(assert (=> b!592608 d!208793))

(declare-fun d!208795 () Bool)

(declare-fun nullableFct!139 (Regex!1489) Bool)

(assert (=> d!208795 (= (nullable!415 (regex!1155 (rule!1923 token!491))) (nullableFct!139 (regex!1155 (rule!1923 token!491))))))

(declare-fun bs!70478 () Bool)

(assert (= bs!70478 d!208795))

(declare-fun m!855301 () Bool)

(assert (=> bs!70478 m!855301))

(assert (=> b!592846 d!208795))

(declare-fun d!208797 () Bool)

(declare-fun e!358854 () Bool)

(assert (=> d!208797 e!358854))

(declare-fun res!255948 () Bool)

(assert (=> d!208797 (=> (not res!255948) (not e!358854))))

(declare-fun lt!251484 () List!5879)

(assert (=> d!208797 (= res!255948 (= (content!1057 lt!251484) ((_ map or) (content!1057 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))) (content!1057 (_2!3664 (get!2247 lt!251316))))))))

(declare-fun e!358855 () List!5879)

(assert (=> d!208797 (= lt!251484 e!358855)))

(declare-fun c!110592 () Bool)

(assert (=> d!208797 (= c!110592 ((_ is Nil!5869) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))))))

(assert (=> d!208797 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))) (_2!3664 (get!2247 lt!251316))) lt!251484)))

(declare-fun b!593381 () Bool)

(assert (=> b!593381 (= e!358854 (or (not (= (_2!3664 (get!2247 lt!251316)) Nil!5869)) (= lt!251484 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))))))))

(declare-fun b!593380 () Bool)

(declare-fun res!255949 () Bool)

(assert (=> b!593380 (=> (not res!255949) (not e!358854))))

(assert (=> b!593380 (= res!255949 (= (size!4643 lt!251484) (+ (size!4643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))) (size!4643 (_2!3664 (get!2247 lt!251316))))))))

(declare-fun b!593379 () Bool)

(assert (=> b!593379 (= e!358855 (Cons!5869 (h!11270 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))) (++!1643 (t!79102 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))) (_2!3664 (get!2247 lt!251316)))))))

(declare-fun b!593378 () Bool)

(assert (=> b!593378 (= e!358855 (_2!3664 (get!2247 lt!251316)))))

(assert (= (and d!208797 c!110592) b!593378))

(assert (= (and d!208797 (not c!110592)) b!593379))

(assert (= (and d!208797 res!255948) b!593380))

(assert (= (and b!593380 res!255949) b!593381))

(declare-fun m!855303 () Bool)

(assert (=> d!208797 m!855303))

(assert (=> d!208797 m!854413))

(declare-fun m!855305 () Bool)

(assert (=> d!208797 m!855305))

(declare-fun m!855307 () Bool)

(assert (=> d!208797 m!855307))

(declare-fun m!855309 () Bool)

(assert (=> b!593380 m!855309))

(assert (=> b!593380 m!854413))

(declare-fun m!855311 () Bool)

(assert (=> b!593380 m!855311))

(assert (=> b!593380 m!854417))

(declare-fun m!855313 () Bool)

(assert (=> b!593379 m!855313))

(assert (=> b!592794 d!208797))

(declare-fun d!208799 () Bool)

(assert (=> d!208799 (= (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))) (list!2458 (c!110456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))))))

(declare-fun bs!70479 () Bool)

(assert (= bs!70479 d!208799))

(declare-fun m!855315 () Bool)

(assert (=> bs!70479 m!855315))

(assert (=> b!592794 d!208799))

(declare-fun d!208801 () Bool)

(declare-fun lt!251485 () BalanceConc!3752)

(assert (=> d!208801 (= (list!2456 lt!251485) (originalCharacters!1194 (_1!3664 (get!2247 lt!251316))))))

(assert (=> d!208801 (= lt!251485 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))) (value!37784 (_1!3664 (get!2247 lt!251316)))))))

(assert (=> d!208801 (= (charsOf!784 (_1!3664 (get!2247 lt!251316))) lt!251485)))

(declare-fun b_lambda!23379 () Bool)

(assert (=> (not b_lambda!23379) (not d!208801)))

(declare-fun tb!51851 () Bool)

(declare-fun t!79196 () Bool)

(assert (=> (and b!592540 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79196) tb!51851))

(declare-fun b!593382 () Bool)

(declare-fun e!358856 () Bool)

(declare-fun tp!184984 () Bool)

(assert (=> b!593382 (= e!358856 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))) (value!37784 (_1!3664 (get!2247 lt!251316)))))) tp!184984))))

(declare-fun result!58212 () Bool)

(assert (=> tb!51851 (= result!58212 (and (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))) (value!37784 (_1!3664 (get!2247 lt!251316))))) e!358856))))

(assert (= tb!51851 b!593382))

(declare-fun m!855317 () Bool)

(assert (=> b!593382 m!855317))

(declare-fun m!855319 () Bool)

(assert (=> tb!51851 m!855319))

(assert (=> d!208801 t!79196))

(declare-fun b_and!58503 () Bool)

(assert (= b_and!58467 (and (=> t!79196 result!58212) b_and!58503)))

(declare-fun tb!51853 () Bool)

(declare-fun t!79198 () Bool)

(assert (=> (and b!592528 (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79198) tb!51853))

(declare-fun result!58214 () Bool)

(assert (= result!58214 result!58212))

(assert (=> d!208801 t!79198))

(declare-fun b_and!58505 () Bool)

(assert (= b_and!58469 (and (=> t!79198 result!58214) b_and!58505)))

(declare-fun tb!51855 () Bool)

(declare-fun t!79200 () Bool)

(assert (=> (and b!592893 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79200) tb!51855))

(declare-fun result!58216 () Bool)

(assert (= result!58216 result!58212))

(assert (=> d!208801 t!79200))

(declare-fun b_and!58507 () Bool)

(assert (= b_and!58473 (and (=> t!79200 result!58216) b_and!58507)))

(declare-fun m!855321 () Bool)

(assert (=> d!208801 m!855321))

(declare-fun m!855323 () Bool)

(assert (=> d!208801 m!855323))

(assert (=> b!592794 d!208801))

(declare-fun d!208803 () Bool)

(assert (=> d!208803 (= (get!2247 lt!251316) (v!16390 lt!251316))))

(assert (=> b!592794 d!208803))

(declare-fun d!208805 () Bool)

(assert (=> d!208805 (= (head!1256 input!2705) (h!11270 input!2705))))

(assert (=> b!592826 d!208805))

(declare-fun d!208807 () Bool)

(declare-fun c!110595 () Bool)

(assert (=> d!208807 (= c!110595 ((_ is Nil!5869) lt!251355))))

(declare-fun e!358859 () (InoxSet C!3900))

(assert (=> d!208807 (= (content!1057 lt!251355) e!358859)))

(declare-fun b!593387 () Bool)

(assert (=> b!593387 (= e!358859 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593388 () Bool)

(assert (=> b!593388 (= e!358859 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 lt!251355) true) (content!1057 (t!79102 lt!251355))))))

(assert (= (and d!208807 c!110595) b!593387))

(assert (= (and d!208807 (not c!110595)) b!593388))

(declare-fun m!855325 () Bool)

(assert (=> b!593388 m!855325))

(declare-fun m!855327 () Bool)

(assert (=> b!593388 m!855327))

(assert (=> d!208509 d!208807))

(declare-fun d!208809 () Bool)

(declare-fun c!110596 () Bool)

(assert (=> d!208809 (= c!110596 ((_ is Nil!5869) lt!251228))))

(declare-fun e!358860 () (InoxSet C!3900))

(assert (=> d!208809 (= (content!1057 lt!251228) e!358860)))

(declare-fun b!593389 () Bool)

(assert (=> b!593389 (= e!358860 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593390 () Bool)

(assert (=> b!593390 (= e!358860 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 lt!251228) true) (content!1057 (t!79102 lt!251228))))))

(assert (= (and d!208809 c!110596) b!593389))

(assert (= (and d!208809 (not c!110596)) b!593390))

(declare-fun m!855329 () Bool)

(assert (=> b!593390 m!855329))

(assert (=> b!593390 m!855241))

(assert (=> d!208509 d!208809))

(declare-fun d!208811 () Bool)

(declare-fun c!110597 () Bool)

(assert (=> d!208811 (= c!110597 ((_ is Nil!5869) (_2!3664 (v!16390 lt!251233))))))

(declare-fun e!358861 () (InoxSet C!3900))

(assert (=> d!208811 (= (content!1057 (_2!3664 (v!16390 lt!251233))) e!358861)))

(declare-fun b!593391 () Bool)

(assert (=> b!593391 (= e!358861 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593392 () Bool)

(assert (=> b!593392 (= e!358861 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 (_2!3664 (v!16390 lt!251233))) true) (content!1057 (t!79102 (_2!3664 (v!16390 lt!251233))))))))

(assert (= (and d!208811 c!110597) b!593391))

(assert (= (and d!208811 (not c!110597)) b!593392))

(declare-fun m!855331 () Bool)

(assert (=> b!593392 m!855331))

(declare-fun m!855333 () Bool)

(assert (=> b!593392 m!855333))

(assert (=> d!208509 d!208811))

(declare-fun d!208813 () Bool)

(declare-fun c!110600 () Bool)

(assert (=> d!208813 (= c!110600 ((_ is Node!1872) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))))

(declare-fun e!358866 () Bool)

(assert (=> d!208813 (= (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))) e!358866)))

(declare-fun b!593399 () Bool)

(declare-fun inv!7439 (Conc!1872) Bool)

(assert (=> b!593399 (= e!358866 (inv!7439 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))))

(declare-fun b!593400 () Bool)

(declare-fun e!358867 () Bool)

(assert (=> b!593400 (= e!358866 e!358867)))

(declare-fun res!255952 () Bool)

(assert (=> b!593400 (= res!255952 (not ((_ is Leaf!2957) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))))))

(assert (=> b!593400 (=> res!255952 e!358867)))

(declare-fun b!593401 () Bool)

(declare-fun inv!7440 (Conc!1872) Bool)

(assert (=> b!593401 (= e!358867 (inv!7440 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))))

(assert (= (and d!208813 c!110600) b!593399))

(assert (= (and d!208813 (not c!110600)) b!593400))

(assert (= (and b!593400 (not res!255952)) b!593401))

(declare-fun m!855335 () Bool)

(assert (=> b!593399 m!855335))

(declare-fun m!855337 () Bool)

(assert (=> b!593401 m!855337))

(assert (=> b!592850 d!208813))

(declare-fun d!208815 () Bool)

(assert (=> d!208815 (= (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))) (isBalanced!524 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))))))

(declare-fun bs!70480 () Bool)

(assert (= bs!70480 d!208815))

(declare-fun m!855339 () Bool)

(assert (=> bs!70480 m!855339))

(assert (=> tb!51795 d!208815))

(declare-fun b!593402 () Bool)

(declare-fun e!358869 () Bool)

(assert (=> b!593402 (= e!358869 (inv!16 (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228))))))

(declare-fun b!593403 () Bool)

(declare-fun e!358868 () Bool)

(assert (=> b!593403 (= e!358869 e!358868)))

(declare-fun c!110602 () Bool)

(assert (=> b!593403 (= c!110602 ((_ is IntegerValue!3538) (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228))))))

(declare-fun b!593404 () Bool)

(declare-fun res!255953 () Bool)

(declare-fun e!358870 () Bool)

(assert (=> b!593404 (=> res!255953 e!358870)))

(assert (=> b!593404 (= res!255953 (not ((_ is IntegerValue!3539) (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228)))))))

(assert (=> b!593404 (= e!358868 e!358870)))

(declare-fun d!208817 () Bool)

(declare-fun c!110601 () Bool)

(assert (=> d!208817 (= c!110601 ((_ is IntegerValue!3537) (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228))))))

(assert (=> d!208817 (= (inv!21 (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228))) e!358869)))

(declare-fun b!593405 () Bool)

(assert (=> b!593405 (= e!358868 (inv!17 (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228))))))

(declare-fun b!593406 () Bool)

(assert (=> b!593406 (= e!358870 (inv!15 (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (seqFromList!1331 lt!251228))))))

(assert (= (and d!208817 c!110601) b!593402))

(assert (= (and d!208817 (not c!110601)) b!593403))

(assert (= (and b!593403 c!110602) b!593405))

(assert (= (and b!593403 (not c!110602)) b!593404))

(assert (= (and b!593404 (not res!255953)) b!593406))

(declare-fun m!855341 () Bool)

(assert (=> b!593402 m!855341))

(declare-fun m!855343 () Bool)

(assert (=> b!593405 m!855343))

(declare-fun m!855345 () Bool)

(assert (=> b!593406 m!855345))

(assert (=> tb!51791 d!208817))

(declare-fun d!208819 () Bool)

(declare-fun lt!251486 () Int)

(assert (=> d!208819 (>= lt!251486 0)))

(declare-fun e!358871 () Int)

(assert (=> d!208819 (= lt!251486 e!358871)))

(declare-fun c!110603 () Bool)

(assert (=> d!208819 (= c!110603 ((_ is Nil!5869) (t!79102 lt!251228)))))

(assert (=> d!208819 (= (size!4643 (t!79102 lt!251228)) lt!251486)))

(declare-fun b!593407 () Bool)

(assert (=> b!593407 (= e!358871 0)))

(declare-fun b!593408 () Bool)

(assert (=> b!593408 (= e!358871 (+ 1 (size!4643 (t!79102 (t!79102 lt!251228)))))))

(assert (= (and d!208819 c!110603) b!593407))

(assert (= (and d!208819 (not c!110603)) b!593408))

(declare-fun m!855347 () Bool)

(assert (=> b!593408 m!855347))

(assert (=> b!592837 d!208819))

(declare-fun d!208821 () Bool)

(assert (=> d!208821 true))

(declare-fun lambda!15991 () Int)

(declare-fun order!4767 () Int)

(declare-fun order!4769 () Int)

(declare-fun dynLambda!3423 (Int Int) Int)

(declare-fun dynLambda!3424 (Int Int) Int)

(assert (=> d!208821 (< (dynLambda!3423 order!4767 (toChars!1901 (transformation!1155 (h!11271 rules!3103)))) (dynLambda!3424 order!4769 lambda!15991))))

(assert (=> d!208821 true))

(assert (=> d!208821 (< (dynLambda!3421 order!4763 (toValue!2042 (transformation!1155 (h!11271 rules!3103)))) (dynLambda!3424 order!4769 lambda!15991))))

(declare-fun Forall!298 (Int) Bool)

(assert (=> d!208821 (= (semiInverseModEq!457 (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (h!11271 rules!3103)))) (Forall!298 lambda!15991))))

(declare-fun bs!70481 () Bool)

(assert (= bs!70481 d!208821))

(declare-fun m!855349 () Bool)

(assert (=> bs!70481 m!855349))

(assert (=> d!208461 d!208821))

(declare-fun d!208823 () Bool)

(declare-fun c!110604 () Bool)

(assert (=> d!208823 (= c!110604 ((_ is Nil!5869) lt!251326))))

(declare-fun e!358872 () (InoxSet C!3900))

(assert (=> d!208823 (= (content!1057 lt!251326) e!358872)))

(declare-fun b!593413 () Bool)

(assert (=> b!593413 (= e!358872 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593414 () Bool)

(assert (=> b!593414 (= e!358872 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 lt!251326) true) (content!1057 (t!79102 lt!251326))))))

(assert (= (and d!208823 c!110604) b!593413))

(assert (= (and d!208823 (not c!110604)) b!593414))

(declare-fun m!855351 () Bool)

(assert (=> b!593414 m!855351))

(declare-fun m!855353 () Bool)

(assert (=> b!593414 m!855353))

(assert (=> d!208467 d!208823))

(declare-fun d!208825 () Bool)

(declare-fun c!110605 () Bool)

(assert (=> d!208825 (= c!110605 ((_ is Nil!5869) input!2705))))

(declare-fun e!358873 () (InoxSet C!3900))

(assert (=> d!208825 (= (content!1057 input!2705) e!358873)))

(declare-fun b!593415 () Bool)

(assert (=> b!593415 (= e!358873 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593416 () Bool)

(assert (=> b!593416 (= e!358873 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 input!2705) true) (content!1057 (t!79102 input!2705))))))

(assert (= (and d!208825 c!110605) b!593415))

(assert (= (and d!208825 (not c!110605)) b!593416))

(declare-fun m!855355 () Bool)

(assert (=> b!593416 m!855355))

(assert (=> b!593416 m!855277))

(assert (=> d!208467 d!208825))

(declare-fun d!208827 () Bool)

(declare-fun c!110606 () Bool)

(assert (=> d!208827 (= c!110606 ((_ is Nil!5869) suffix!1342))))

(declare-fun e!358874 () (InoxSet C!3900))

(assert (=> d!208827 (= (content!1057 suffix!1342) e!358874)))

(declare-fun b!593417 () Bool)

(assert (=> b!593417 (= e!358874 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593418 () Bool)

(assert (=> b!593418 (= e!358874 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 suffix!1342) true) (content!1057 (t!79102 suffix!1342))))))

(assert (= (and d!208827 c!110606) b!593417))

(assert (= (and d!208827 (not c!110606)) b!593418))

(declare-fun m!855357 () Bool)

(assert (=> b!593418 m!855357))

(declare-fun m!855359 () Bool)

(assert (=> b!593418 m!855359))

(assert (=> d!208467 d!208827))

(declare-fun bs!70482 () Bool)

(declare-fun d!208829 () Bool)

(assert (= bs!70482 (and d!208829 d!208821)))

(declare-fun lambda!15992 () Int)

(assert (=> bs!70482 (= (and (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (h!11271 rules!3103)))) (= (toValue!2042 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (h!11271 rules!3103))))) (= lambda!15992 lambda!15991))))

(assert (=> d!208829 true))

(assert (=> d!208829 (< (dynLambda!3423 order!4767 (toChars!1901 (transformation!1155 (rule!1923 token!491)))) (dynLambda!3424 order!4769 lambda!15992))))

(assert (=> d!208829 true))

(assert (=> d!208829 (< (dynLambda!3421 order!4763 (toValue!2042 (transformation!1155 (rule!1923 token!491)))) (dynLambda!3424 order!4769 lambda!15992))))

(assert (=> d!208829 (= (semiInverseModEq!457 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))) (Forall!298 lambda!15992))))

(declare-fun bs!70483 () Bool)

(assert (= bs!70483 d!208829))

(declare-fun m!855361 () Bool)

(assert (=> bs!70483 m!855361))

(assert (=> d!208519 d!208829))

(declare-fun d!208831 () Bool)

(declare-fun e!358875 () Bool)

(assert (=> d!208831 e!358875))

(declare-fun res!255954 () Bool)

(assert (=> d!208831 (=> (not res!255954) (not e!358875))))

(declare-fun lt!251487 () List!5879)

(assert (=> d!208831 (= res!255954 (= (content!1057 lt!251487) ((_ map or) (content!1057 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))) (content!1057 (_2!3664 (get!2247 lt!251321))))))))

(declare-fun e!358876 () List!5879)

(assert (=> d!208831 (= lt!251487 e!358876)))

(declare-fun c!110607 () Bool)

(assert (=> d!208831 (= c!110607 ((_ is Nil!5869) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))))))

(assert (=> d!208831 (= (++!1643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))) (_2!3664 (get!2247 lt!251321))) lt!251487)))

(declare-fun b!593422 () Bool)

(assert (=> b!593422 (= e!358875 (or (not (= (_2!3664 (get!2247 lt!251321)) Nil!5869)) (= lt!251487 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))))))))

(declare-fun b!593421 () Bool)

(declare-fun res!255955 () Bool)

(assert (=> b!593421 (=> (not res!255955) (not e!358875))))

(assert (=> b!593421 (= res!255955 (= (size!4643 lt!251487) (+ (size!4643 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))) (size!4643 (_2!3664 (get!2247 lt!251321))))))))

(declare-fun b!593420 () Bool)

(assert (=> b!593420 (= e!358876 (Cons!5869 (h!11270 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))) (++!1643 (t!79102 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))) (_2!3664 (get!2247 lt!251321)))))))

(declare-fun b!593419 () Bool)

(assert (=> b!593419 (= e!358876 (_2!3664 (get!2247 lt!251321)))))

(assert (= (and d!208831 c!110607) b!593419))

(assert (= (and d!208831 (not c!110607)) b!593420))

(assert (= (and d!208831 res!255954) b!593421))

(assert (= (and b!593421 res!255955) b!593422))

(declare-fun m!855363 () Bool)

(assert (=> d!208831 m!855363))

(assert (=> d!208831 m!854449))

(declare-fun m!855365 () Bool)

(assert (=> d!208831 m!855365))

(declare-fun m!855367 () Bool)

(assert (=> d!208831 m!855367))

(declare-fun m!855369 () Bool)

(assert (=> b!593421 m!855369))

(assert (=> b!593421 m!854449))

(declare-fun m!855371 () Bool)

(assert (=> b!593421 m!855371))

(assert (=> b!593421 m!854453))

(declare-fun m!855373 () Bool)

(assert (=> b!593420 m!855373))

(assert (=> b!592804 d!208831))

(declare-fun d!208833 () Bool)

(assert (=> d!208833 (= (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))) (list!2458 (c!110456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))))))

(declare-fun bs!70484 () Bool)

(assert (= bs!70484 d!208833))

(declare-fun m!855375 () Bool)

(assert (=> bs!70484 m!855375))

(assert (=> b!592804 d!208833))

(declare-fun d!208835 () Bool)

(declare-fun lt!251488 () BalanceConc!3752)

(assert (=> d!208835 (= (list!2456 lt!251488) (originalCharacters!1194 (_1!3664 (get!2247 lt!251321))))))

(assert (=> d!208835 (= lt!251488 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))) (value!37784 (_1!3664 (get!2247 lt!251321)))))))

(assert (=> d!208835 (= (charsOf!784 (_1!3664 (get!2247 lt!251321))) lt!251488)))

(declare-fun b_lambda!23381 () Bool)

(assert (=> (not b_lambda!23381) (not d!208835)))

(declare-fun t!79202 () Bool)

(declare-fun tb!51857 () Bool)

(assert (=> (and b!592540 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79202) tb!51857))

(declare-fun b!593423 () Bool)

(declare-fun e!358877 () Bool)

(declare-fun tp!184985 () Bool)

(assert (=> b!593423 (= e!358877 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))) (value!37784 (_1!3664 (get!2247 lt!251321)))))) tp!184985))))

(declare-fun result!58218 () Bool)

(assert (=> tb!51857 (= result!58218 (and (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))) (value!37784 (_1!3664 (get!2247 lt!251321))))) e!358877))))

(assert (= tb!51857 b!593423))

(declare-fun m!855377 () Bool)

(assert (=> b!593423 m!855377))

(declare-fun m!855379 () Bool)

(assert (=> tb!51857 m!855379))

(assert (=> d!208835 t!79202))

(declare-fun b_and!58509 () Bool)

(assert (= b_and!58503 (and (=> t!79202 result!58218) b_and!58509)))

(declare-fun t!79204 () Bool)

(declare-fun tb!51859 () Bool)

(assert (=> (and b!592528 (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79204) tb!51859))

(declare-fun result!58220 () Bool)

(assert (= result!58220 result!58218))

(assert (=> d!208835 t!79204))

(declare-fun b_and!58511 () Bool)

(assert (= b_and!58505 (and (=> t!79204 result!58220) b_and!58511)))

(declare-fun tb!51861 () Bool)

(declare-fun t!79206 () Bool)

(assert (=> (and b!592893 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79206) tb!51861))

(declare-fun result!58222 () Bool)

(assert (= result!58222 result!58218))

(assert (=> d!208835 t!79206))

(declare-fun b_and!58513 () Bool)

(assert (= b_and!58507 (and (=> t!79206 result!58222) b_and!58513)))

(declare-fun m!855381 () Bool)

(assert (=> d!208835 m!855381))

(declare-fun m!855383 () Bool)

(assert (=> d!208835 m!855383))

(assert (=> b!592804 d!208835))

(declare-fun d!208837 () Bool)

(assert (=> d!208837 (= (get!2247 lt!251321) (v!16390 lt!251321))))

(assert (=> b!592804 d!208837))

(assert (=> b!592790 d!208803))

(declare-fun d!208839 () Bool)

(assert (=> d!208839 (= (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251316))))) (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251316))))))))

(declare-fun b_lambda!23383 () Bool)

(assert (=> (not b_lambda!23383) (not d!208839)))

(declare-fun tb!51863 () Bool)

(declare-fun t!79208 () Bool)

(assert (=> (and b!592540 (= (toValue!2042 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79208) tb!51863))

(declare-fun result!58224 () Bool)

(assert (=> tb!51863 (= result!58224 (inv!21 (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251316)))))))))

(declare-fun m!855385 () Bool)

(assert (=> tb!51863 m!855385))

(assert (=> d!208839 t!79208))

(declare-fun b_and!58515 () Bool)

(assert (= b_and!58459 (and (=> t!79208 result!58224) b_and!58515)))

(declare-fun tb!51865 () Bool)

(declare-fun t!79210 () Bool)

(assert (=> (and b!592528 (= (toValue!2042 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79210) tb!51865))

(declare-fun result!58226 () Bool)

(assert (= result!58226 result!58224))

(assert (=> d!208839 t!79210))

(declare-fun b_and!58517 () Bool)

(assert (= b_and!58461 (and (=> t!79210 result!58226) b_and!58517)))

(declare-fun tb!51867 () Bool)

(declare-fun t!79212 () Bool)

(assert (=> (and b!592893 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79212) tb!51867))

(declare-fun result!58228 () Bool)

(assert (= result!58228 result!58224))

(assert (=> d!208839 t!79212))

(declare-fun b_and!58519 () Bool)

(assert (= b_and!58471 (and (=> t!79212 result!58228) b_and!58519)))

(assert (=> d!208839 m!854435))

(declare-fun m!855387 () Bool)

(assert (=> d!208839 m!855387))

(assert (=> b!592790 d!208839))

(declare-fun d!208841 () Bool)

(assert (=> d!208841 (= (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251316)))) (fromListB!584 (originalCharacters!1194 (_1!3664 (get!2247 lt!251316)))))))

(declare-fun bs!70485 () Bool)

(assert (= bs!70485 d!208841))

(declare-fun m!855389 () Bool)

(assert (=> bs!70485 m!855389))

(assert (=> b!592790 d!208841))

(assert (=> b!592800 d!208837))

(declare-fun d!208843 () Bool)

(assert (=> d!208843 (= (apply!1408 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251321))))) (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251321))))))))

(declare-fun b_lambda!23385 () Bool)

(assert (=> (not b_lambda!23385) (not d!208843)))

(declare-fun t!79214 () Bool)

(declare-fun tb!51869 () Bool)

(assert (=> (and b!592540 (= (toValue!2042 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79214) tb!51869))

(declare-fun result!58230 () Bool)

(assert (=> tb!51869 (= result!58230 (inv!21 (dynLambda!3416 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))) (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251321)))))))))

(declare-fun m!855391 () Bool)

(assert (=> tb!51869 m!855391))

(assert (=> d!208843 t!79214))

(declare-fun b_and!58521 () Bool)

(assert (= b_and!58515 (and (=> t!79214 result!58230) b_and!58521)))

(declare-fun t!79216 () Bool)

(declare-fun tb!51871 () Bool)

(assert (=> (and b!592528 (= (toValue!2042 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79216) tb!51871))

(declare-fun result!58232 () Bool)

(assert (= result!58232 result!58230))

(assert (=> d!208843 t!79216))

(declare-fun b_and!58523 () Bool)

(assert (= b_and!58517 (and (=> t!79216 result!58232) b_and!58523)))

(declare-fun t!79218 () Bool)

(declare-fun tb!51873 () Bool)

(assert (=> (and b!592893 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79218) tb!51873))

(declare-fun result!58234 () Bool)

(assert (= result!58234 result!58230))

(assert (=> d!208843 t!79218))

(declare-fun b_and!58525 () Bool)

(assert (= b_and!58519 (and (=> t!79218 result!58234) b_and!58525)))

(assert (=> d!208843 m!854473))

(declare-fun m!855393 () Bool)

(assert (=> d!208843 m!855393))

(assert (=> b!592800 d!208843))

(declare-fun d!208845 () Bool)

(assert (=> d!208845 (= (seqFromList!1331 (originalCharacters!1194 (_1!3664 (get!2247 lt!251321)))) (fromListB!584 (originalCharacters!1194 (_1!3664 (get!2247 lt!251321)))))))

(declare-fun bs!70486 () Bool)

(assert (= bs!70486 d!208845))

(declare-fun m!855395 () Bool)

(assert (=> bs!70486 m!855395))

(assert (=> b!592800 d!208845))

(assert (=> d!208497 d!208743))

(assert (=> d!208489 d!208387))

(declare-fun bs!70487 () Bool)

(declare-fun d!208847 () Bool)

(assert (= bs!70487 (and d!208847 d!208587)))

(declare-fun lambda!15993 () Int)

(assert (=> bs!70487 (= (= (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))) (= lambda!15993 lambda!15985))))

(assert (=> d!208847 true))

(assert (=> d!208847 (< (dynLambda!3421 order!4763 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) (dynLambda!3422 order!4765 lambda!15993))))

(assert (=> d!208847 (= (equivClasses!440 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) (Forall2!224 lambda!15993))))

(declare-fun bs!70488 () Bool)

(assert (= bs!70488 d!208847))

(declare-fun m!855397 () Bool)

(assert (=> bs!70488 m!855397))

(assert (=> b!592814 d!208847))

(assert (=> d!208359 d!208829))

(declare-fun d!208849 () Bool)

(assert (=> d!208849 (= (_2!3664 (v!16390 lt!251233)) lt!251227)))

(assert (=> d!208849 true))

(declare-fun _$63!727 () Unit!10665)

(assert (=> d!208849 (= (choose!4294 lt!251228 (_2!3664 (v!16390 lt!251233)) lt!251228 lt!251227 input!2705) _$63!727)))

(assert (=> d!208481 d!208849))

(declare-fun b!593427 () Bool)

(declare-fun e!358881 () Bool)

(assert (=> b!593427 (= e!358881 (>= (size!4643 input!2705) (size!4643 lt!251228)))))

(declare-fun d!208851 () Bool)

(assert (=> d!208851 e!358881))

(declare-fun res!255958 () Bool)

(assert (=> d!208851 (=> res!255958 e!358881)))

(declare-fun lt!251489 () Bool)

(assert (=> d!208851 (= res!255958 (not lt!251489))))

(declare-fun e!358882 () Bool)

(assert (=> d!208851 (= lt!251489 e!358882)))

(declare-fun res!255956 () Bool)

(assert (=> d!208851 (=> res!255956 e!358882)))

(assert (=> d!208851 (= res!255956 ((_ is Nil!5869) lt!251228))))

(assert (=> d!208851 (= (isPrefix!783 lt!251228 input!2705) lt!251489)))

(declare-fun b!593424 () Bool)

(declare-fun e!358880 () Bool)

(assert (=> b!593424 (= e!358882 e!358880)))

(declare-fun res!255957 () Bool)

(assert (=> b!593424 (=> (not res!255957) (not e!358880))))

(assert (=> b!593424 (= res!255957 (not ((_ is Nil!5869) input!2705)))))

(declare-fun b!593426 () Bool)

(assert (=> b!593426 (= e!358880 (isPrefix!783 (tail!785 lt!251228) (tail!785 input!2705)))))

(declare-fun b!593425 () Bool)

(declare-fun res!255959 () Bool)

(assert (=> b!593425 (=> (not res!255959) (not e!358880))))

(assert (=> b!593425 (= res!255959 (= (head!1256 lt!251228) (head!1256 input!2705)))))

(assert (= (and d!208851 (not res!255956)) b!593424))

(assert (= (and b!593424 res!255957) b!593425))

(assert (= (and b!593425 res!255959) b!593426))

(assert (= (and d!208851 (not res!255958)) b!593427))

(assert (=> b!593427 m!854419))

(assert (=> b!593427 m!854103))

(assert (=> b!593426 m!854575))

(assert (=> b!593426 m!854507))

(assert (=> b!593426 m!854575))

(assert (=> b!593426 m!854507))

(declare-fun m!855399 () Bool)

(assert (=> b!593426 m!855399))

(assert (=> b!593425 m!854581))

(assert (=> b!593425 m!854511))

(assert (=> d!208481 d!208851))

(declare-fun d!208853 () Bool)

(assert (=> d!208853 (= (list!2456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))) (list!2458 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))))))

(declare-fun bs!70489 () Bool)

(assert (= bs!70489 d!208853))

(declare-fun m!855401 () Bool)

(assert (=> bs!70489 m!855401))

(assert (=> b!592551 d!208853))

(declare-fun d!208855 () Bool)

(declare-fun lt!251490 () Bool)

(assert (=> d!208855 (= lt!251490 (select (content!1059 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251316)))))))

(declare-fun e!358884 () Bool)

(assert (=> d!208855 (= lt!251490 e!358884)))

(declare-fun res!255960 () Bool)

(assert (=> d!208855 (=> (not res!255960) (not e!358884))))

(assert (=> d!208855 (= res!255960 ((_ is Cons!5870) rules!3103))))

(assert (=> d!208855 (= (contains!1381 rules!3103 (rule!1923 (_1!3664 (get!2247 lt!251316)))) lt!251490)))

(declare-fun b!593428 () Bool)

(declare-fun e!358883 () Bool)

(assert (=> b!593428 (= e!358884 e!358883)))

(declare-fun res!255961 () Bool)

(assert (=> b!593428 (=> res!255961 e!358883)))

(assert (=> b!593428 (= res!255961 (= (h!11271 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251316)))))))

(declare-fun b!593429 () Bool)

(assert (=> b!593429 (= e!358883 (contains!1381 (t!79103 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251316)))))))

(assert (= (and d!208855 res!255960) b!593428))

(assert (= (and b!593428 (not res!255961)) b!593429))

(assert (=> d!208855 m!855261))

(declare-fun m!855403 () Bool)

(assert (=> d!208855 m!855403))

(declare-fun m!855405 () Bool)

(assert (=> b!593429 m!855405))

(assert (=> b!592788 d!208855))

(assert (=> b!592788 d!208803))

(declare-fun d!208857 () Bool)

(declare-fun lt!251491 () Bool)

(assert (=> d!208857 (= lt!251491 (select (content!1059 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251321)))))))

(declare-fun e!358886 () Bool)

(assert (=> d!208857 (= lt!251491 e!358886)))

(declare-fun res!255962 () Bool)

(assert (=> d!208857 (=> (not res!255962) (not e!358886))))

(assert (=> d!208857 (= res!255962 ((_ is Cons!5870) rules!3103))))

(assert (=> d!208857 (= (contains!1381 rules!3103 (rule!1923 (_1!3664 (get!2247 lt!251321)))) lt!251491)))

(declare-fun b!593430 () Bool)

(declare-fun e!358885 () Bool)

(assert (=> b!593430 (= e!358886 e!358885)))

(declare-fun res!255963 () Bool)

(assert (=> b!593430 (=> res!255963 e!358885)))

(assert (=> b!593430 (= res!255963 (= (h!11271 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251321)))))))

(declare-fun b!593431 () Bool)

(assert (=> b!593431 (= e!358885 (contains!1381 (t!79103 rules!3103) (rule!1923 (_1!3664 (get!2247 lt!251321)))))))

(assert (= (and d!208857 res!255962) b!593430))

(assert (= (and b!593430 (not res!255963)) b!593431))

(assert (=> d!208857 m!855261))

(declare-fun m!855407 () Bool)

(assert (=> d!208857 m!855407))

(declare-fun m!855409 () Bool)

(assert (=> b!593431 m!855409))

(assert (=> b!592798 d!208857))

(assert (=> b!592798 d!208837))

(declare-fun d!208859 () Bool)

(assert (=> d!208859 (= (list!2456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (list!2458 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))))

(declare-fun bs!70490 () Bool)

(assert (= bs!70490 d!208859))

(declare-fun m!855411 () Bool)

(assert (=> bs!70490 m!855411))

(assert (=> b!592848 d!208859))

(declare-fun bs!70491 () Bool)

(declare-fun d!208861 () Bool)

(assert (= bs!70491 (and d!208861 d!208739)))

(declare-fun lambda!15996 () Int)

(assert (=> bs!70491 (= lambda!15996 lambda!15988)))

(assert (=> d!208861 true))

(declare-fun lt!251494 () Bool)

(assert (=> d!208861 (= lt!251494 (rulesValidInductive!426 thiss!22590 rules!3103))))

(assert (=> d!208861 (= lt!251494 (forall!1554 rules!3103 lambda!15996))))

(assert (=> d!208861 (= (rulesValid!421 thiss!22590 rules!3103) lt!251494)))

(declare-fun bs!70492 () Bool)

(assert (= bs!70492 d!208861))

(assert (=> bs!70492 m!854433))

(declare-fun m!855413 () Bool)

(assert (=> bs!70492 m!855413))

(assert (=> d!208367 d!208861))

(declare-fun d!208863 () Bool)

(declare-fun lt!251495 () Int)

(assert (=> d!208863 (>= lt!251495 0)))

(declare-fun e!358887 () Int)

(assert (=> d!208863 (= lt!251495 e!358887)))

(declare-fun c!110608 () Bool)

(assert (=> d!208863 (= c!110608 ((_ is Nil!5869) (_2!3664 (get!2247 lt!251316))))))

(assert (=> d!208863 (= (size!4643 (_2!3664 (get!2247 lt!251316))) lt!251495)))

(declare-fun b!593432 () Bool)

(assert (=> b!593432 (= e!358887 0)))

(declare-fun b!593433 () Bool)

(assert (=> b!593433 (= e!358887 (+ 1 (size!4643 (t!79102 (_2!3664 (get!2247 lt!251316))))))))

(assert (= (and d!208863 c!110608) b!593432))

(assert (= (and d!208863 (not c!110608)) b!593433))

(declare-fun m!855415 () Bool)

(assert (=> b!593433 m!855415))

(assert (=> b!592787 d!208863))

(assert (=> b!592787 d!208803))

(assert (=> b!592787 d!208787))

(declare-fun d!208865 () Bool)

(declare-fun res!255968 () Bool)

(declare-fun e!358892 () Bool)

(assert (=> d!208865 (=> res!255968 e!358892)))

(assert (=> d!208865 (= res!255968 ((_ is Nil!5870) rules!3103))))

(assert (=> d!208865 (= (noDuplicateTag!421 thiss!22590 rules!3103 Nil!5872) e!358892)))

(declare-fun b!593438 () Bool)

(declare-fun e!358893 () Bool)

(assert (=> b!593438 (= e!358892 e!358893)))

(declare-fun res!255969 () Bool)

(assert (=> b!593438 (=> (not res!255969) (not e!358893))))

(declare-fun contains!1383 (List!5882 String!7638) Bool)

(assert (=> b!593438 (= res!255969 (not (contains!1383 Nil!5872 (tag!1417 (h!11271 rules!3103)))))))

(declare-fun b!593439 () Bool)

(assert (=> b!593439 (= e!358893 (noDuplicateTag!421 thiss!22590 (t!79103 rules!3103) (Cons!5872 (tag!1417 (h!11271 rules!3103)) Nil!5872)))))

(assert (= (and d!208865 (not res!255968)) b!593438))

(assert (= (and b!593438 res!255969) b!593439))

(declare-fun m!855417 () Bool)

(assert (=> b!593438 m!855417))

(declare-fun m!855419 () Bool)

(assert (=> b!593439 m!855419))

(assert (=> b!592568 d!208865))

(declare-fun d!208867 () Bool)

(declare-fun e!358894 () Bool)

(assert (=> d!208867 e!358894))

(declare-fun res!255970 () Bool)

(assert (=> d!208867 (=> (not res!255970) (not e!358894))))

(declare-fun lt!251496 () List!5879)

(assert (=> d!208867 (= res!255970 (= (content!1057 lt!251496) ((_ map or) (content!1057 lt!251228) (content!1057 lt!251342))))))

(declare-fun e!358895 () List!5879)

(assert (=> d!208867 (= lt!251496 e!358895)))

(declare-fun c!110609 () Bool)

(assert (=> d!208867 (= c!110609 ((_ is Nil!5869) lt!251228))))

(assert (=> d!208867 (= (++!1643 lt!251228 lt!251342) lt!251496)))

(declare-fun b!593443 () Bool)

(assert (=> b!593443 (= e!358894 (or (not (= lt!251342 Nil!5869)) (= lt!251496 lt!251228)))))

(declare-fun b!593442 () Bool)

(declare-fun res!255971 () Bool)

(assert (=> b!593442 (=> (not res!255971) (not e!358894))))

(assert (=> b!593442 (= res!255971 (= (size!4643 lt!251496) (+ (size!4643 lt!251228) (size!4643 lt!251342))))))

(declare-fun b!593441 () Bool)

(assert (=> b!593441 (= e!358895 (Cons!5869 (h!11270 lt!251228) (++!1643 (t!79102 lt!251228) lt!251342)))))

(declare-fun b!593440 () Bool)

(assert (=> b!593440 (= e!358895 lt!251342)))

(assert (= (and d!208867 c!110609) b!593440))

(assert (= (and d!208867 (not c!110609)) b!593441))

(assert (= (and d!208867 res!255970) b!593442))

(assert (= (and b!593442 res!255971) b!593443))

(declare-fun m!855421 () Bool)

(assert (=> d!208867 m!855421))

(assert (=> d!208867 m!854543))

(declare-fun m!855423 () Bool)

(assert (=> d!208867 m!855423))

(declare-fun m!855425 () Bool)

(assert (=> b!593442 m!855425))

(assert (=> b!593442 m!854103))

(declare-fun m!855427 () Bool)

(assert (=> b!593442 m!855427))

(declare-fun m!855429 () Bool)

(assert (=> b!593441 m!855429))

(assert (=> d!208487 d!208867))

(assert (=> d!208487 d!208787))

(assert (=> d!208487 d!208507))

(declare-fun d!208869 () Bool)

(declare-fun lt!251497 () Int)

(assert (=> d!208869 (>= lt!251497 0)))

(declare-fun e!358896 () Int)

(assert (=> d!208869 (= lt!251497 e!358896)))

(declare-fun c!110610 () Bool)

(assert (=> d!208869 (= c!110610 ((_ is Nil!5869) (_2!3664 (get!2247 lt!251321))))))

(assert (=> d!208869 (= (size!4643 (_2!3664 (get!2247 lt!251321))) lt!251497)))

(declare-fun b!593444 () Bool)

(assert (=> b!593444 (= e!358896 0)))

(declare-fun b!593445 () Bool)

(assert (=> b!593445 (= e!358896 (+ 1 (size!4643 (t!79102 (_2!3664 (get!2247 lt!251321))))))))

(assert (= (and d!208869 c!110610) b!593444))

(assert (= (and d!208869 (not c!110610)) b!593445))

(declare-fun m!855431 () Bool)

(assert (=> b!593445 m!855431))

(assert (=> b!592797 d!208869))

(assert (=> b!592797 d!208837))

(declare-fun d!208871 () Bool)

(declare-fun lt!251498 () Int)

(assert (=> d!208871 (>= lt!251498 0)))

(declare-fun e!358897 () Int)

(assert (=> d!208871 (= lt!251498 e!358897)))

(declare-fun c!110611 () Bool)

(assert (=> d!208871 (= c!110611 ((_ is Nil!5869) lt!251225))))

(assert (=> d!208871 (= (size!4643 lt!251225) lt!251498)))

(declare-fun b!593446 () Bool)

(assert (=> b!593446 (= e!358897 0)))

(declare-fun b!593447 () Bool)

(assert (=> b!593447 (= e!358897 (+ 1 (size!4643 (t!79102 lt!251225))))))

(assert (= (and d!208871 c!110611) b!593446))

(assert (= (and d!208871 (not c!110611)) b!593447))

(declare-fun m!855433 () Bool)

(assert (=> b!593447 m!855433))

(assert (=> b!592797 d!208871))

(declare-fun d!208873 () Bool)

(assert (=> d!208873 (= (nullable!415 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (nullableFct!139 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun bs!70493 () Bool)

(assert (= bs!70493 d!208873))

(declare-fun m!855435 () Bool)

(assert (=> bs!70493 m!855435))

(assert (=> b!592851 d!208873))

(declare-fun d!208875 () Bool)

(declare-fun lt!251499 () Int)

(assert (=> d!208875 (>= lt!251499 0)))

(declare-fun e!358898 () Int)

(assert (=> d!208875 (= lt!251499 e!358898)))

(declare-fun c!110612 () Bool)

(assert (=> d!208875 (= c!110612 ((_ is Nil!5869) lt!251355))))

(assert (=> d!208875 (= (size!4643 lt!251355) lt!251499)))

(declare-fun b!593448 () Bool)

(assert (=> b!593448 (= e!358898 0)))

(declare-fun b!593449 () Bool)

(assert (=> b!593449 (= e!358898 (+ 1 (size!4643 (t!79102 lt!251355))))))

(assert (= (and d!208875 c!110612) b!593448))

(assert (= (and d!208875 (not c!110612)) b!593449))

(declare-fun m!855437 () Bool)

(assert (=> b!593449 m!855437))

(assert (=> b!592840 d!208875))

(assert (=> b!592840 d!208507))

(declare-fun d!208877 () Bool)

(declare-fun lt!251500 () Int)

(assert (=> d!208877 (>= lt!251500 0)))

(declare-fun e!358899 () Int)

(assert (=> d!208877 (= lt!251500 e!358899)))

(declare-fun c!110613 () Bool)

(assert (=> d!208877 (= c!110613 ((_ is Nil!5869) (_2!3664 (v!16390 lt!251233))))))

(assert (=> d!208877 (= (size!4643 (_2!3664 (v!16390 lt!251233))) lt!251500)))

(declare-fun b!593450 () Bool)

(assert (=> b!593450 (= e!358899 0)))

(declare-fun b!593451 () Bool)

(assert (=> b!593451 (= e!358899 (+ 1 (size!4643 (t!79102 (_2!3664 (v!16390 lt!251233))))))))

(assert (= (and d!208877 c!110613) b!593450))

(assert (= (and d!208877 (not c!110613)) b!593451))

(declare-fun m!855439 () Bool)

(assert (=> b!593451 m!855439))

(assert (=> b!592840 d!208877))

(declare-fun d!208879 () Bool)

(declare-fun lt!251501 () Int)

(assert (=> d!208879 (>= lt!251501 0)))

(declare-fun e!358900 () Int)

(assert (=> d!208879 (= lt!251501 e!358900)))

(declare-fun c!110614 () Bool)

(assert (=> d!208879 (= c!110614 ((_ is Nil!5869) lt!251248))))

(assert (=> d!208879 (= (size!4643 lt!251248) lt!251501)))

(declare-fun b!593452 () Bool)

(assert (=> b!593452 (= e!358900 0)))

(declare-fun b!593453 () Bool)

(assert (=> b!593453 (= e!358900 (+ 1 (size!4643 (t!79102 lt!251248))))))

(assert (= (and d!208879 c!110614) b!593452))

(assert (= (and d!208879 (not c!110614)) b!593453))

(declare-fun m!855441 () Bool)

(assert (=> b!593453 m!855441))

(assert (=> b!592597 d!208879))

(assert (=> b!592597 d!208483))

(declare-fun d!208881 () Bool)

(declare-fun lt!251502 () Int)

(assert (=> d!208881 (>= lt!251502 0)))

(declare-fun e!358901 () Int)

(assert (=> d!208881 (= lt!251502 e!358901)))

(declare-fun c!110615 () Bool)

(assert (=> d!208881 (= c!110615 ((_ is Nil!5869) suffix!1342))))

(assert (=> d!208881 (= (size!4643 suffix!1342) lt!251502)))

(declare-fun b!593454 () Bool)

(assert (=> b!593454 (= e!358901 0)))

(declare-fun b!593455 () Bool)

(assert (=> b!593455 (= e!358901 (+ 1 (size!4643 (t!79102 suffix!1342))))))

(assert (= (and d!208881 c!110615) b!593454))

(assert (= (and d!208881 (not c!110615)) b!593455))

(declare-fun m!855443 () Bool)

(assert (=> b!593455 m!855443))

(assert (=> b!592597 d!208881))

(declare-fun d!208883 () Bool)

(declare-fun c!110616 () Bool)

(assert (=> d!208883 (= c!110616 ((_ is Node!1872) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))))))

(declare-fun e!358902 () Bool)

(assert (=> d!208883 (= (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))) e!358902)))

(declare-fun b!593456 () Bool)

(assert (=> b!593456 (= e!358902 (inv!7439 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))))))

(declare-fun b!593457 () Bool)

(declare-fun e!358903 () Bool)

(assert (=> b!593457 (= e!358902 e!358903)))

(declare-fun res!255972 () Bool)

(assert (=> b!593457 (= res!255972 (not ((_ is Leaf!2957) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))))))))

(assert (=> b!593457 (=> res!255972 e!358903)))

(declare-fun b!593458 () Bool)

(assert (=> b!593458 (= e!358903 (inv!7440 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))))))

(assert (= (and d!208883 c!110616) b!593456))

(assert (= (and d!208883 (not c!110616)) b!593457))

(assert (= (and b!593457 (not res!255972)) b!593458))

(declare-fun m!855445 () Bool)

(assert (=> b!593456 m!855445))

(declare-fun m!855447 () Bool)

(assert (=> b!593458 m!855447))

(assert (=> b!592557 d!208883))

(declare-fun d!208885 () Bool)

(declare-fun c!110617 () Bool)

(assert (=> d!208885 (= c!110617 ((_ is Node!1872) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))))))

(declare-fun e!358904 () Bool)

(assert (=> d!208885 (= (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))) e!358904)))

(declare-fun b!593459 () Bool)

(assert (=> b!593459 (= e!358904 (inv!7439 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))))))

(declare-fun b!593460 () Bool)

(declare-fun e!358905 () Bool)

(assert (=> b!593460 (= e!358904 e!358905)))

(declare-fun res!255973 () Bool)

(assert (=> b!593460 (= res!255973 (not ((_ is Leaf!2957) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))))))))

(assert (=> b!593460 (=> res!255973 e!358905)))

(declare-fun b!593461 () Bool)

(assert (=> b!593461 (= e!358905 (inv!7440 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))))))

(assert (= (and d!208885 c!110617) b!593459))

(assert (= (and d!208885 (not c!110617)) b!593460))

(assert (= (and b!593460 (not res!255973)) b!593461))

(declare-fun m!855449 () Bool)

(assert (=> b!593459 m!855449))

(declare-fun m!855451 () Bool)

(assert (=> b!593461 m!855451))

(assert (=> b!592835 d!208885))

(declare-fun d!208887 () Bool)

(declare-fun lt!251503 () Int)

(assert (=> d!208887 (>= lt!251503 0)))

(declare-fun e!358906 () Int)

(assert (=> d!208887 (= lt!251503 e!358906)))

(declare-fun c!110618 () Bool)

(assert (=> d!208887 (= c!110618 ((_ is Nil!5869) (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))))))

(assert (=> d!208887 (= (size!4643 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))) lt!251503)))

(declare-fun b!593462 () Bool)

(assert (=> b!593462 (= e!358906 0)))

(declare-fun b!593463 () Bool)

(assert (=> b!593463 (= e!358906 (+ 1 (size!4643 (t!79102 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))))))))

(assert (= (and d!208887 c!110618) b!593462))

(assert (= (and d!208887 (not c!110618)) b!593463))

(declare-fun m!855453 () Bool)

(assert (=> b!593463 m!855453))

(assert (=> b!592856 d!208887))

(assert (=> b!592856 d!208507))

(declare-fun d!208889 () Bool)

(assert (=> d!208889 (= (isEmpty!4238 (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))) ((_ is Nil!5869) (originalCharacters!1194 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))

(assert (=> d!208513 d!208889))

(declare-fun d!208891 () Bool)

(declare-fun lt!251504 () Int)

(assert (=> d!208891 (>= lt!251504 0)))

(declare-fun e!358907 () Int)

(assert (=> d!208891 (= lt!251504 e!358907)))

(declare-fun c!110619 () Bool)

(assert (=> d!208891 (= c!110619 ((_ is Nil!5869) lt!251326))))

(assert (=> d!208891 (= (size!4643 lt!251326) lt!251504)))

(declare-fun b!593464 () Bool)

(assert (=> b!593464 (= e!358907 0)))

(declare-fun b!593465 () Bool)

(assert (=> b!593465 (= e!358907 (+ 1 (size!4643 (t!79102 lt!251326))))))

(assert (= (and d!208891 c!110619) b!593464))

(assert (= (and d!208891 (not c!110619)) b!593465))

(declare-fun m!855455 () Bool)

(assert (=> b!593465 m!855455))

(assert (=> b!592808 d!208891))

(assert (=> b!592808 d!208787))

(assert (=> b!592808 d!208881))

(declare-fun d!208893 () Bool)

(declare-fun charsToBigInt!1 (List!5878) Int)

(assert (=> d!208893 (= (inv!17 (value!37784 token!491)) (= (charsToBigInt!1 (text!8701 (value!37784 token!491))) (value!37777 (value!37784 token!491))))))

(declare-fun bs!70494 () Bool)

(assert (= bs!70494 d!208893))

(declare-fun m!855457 () Bool)

(assert (=> bs!70494 m!855457))

(assert (=> b!592585 d!208893))

(declare-fun b!593469 () Bool)

(declare-fun e!358909 () Bool)

(assert (=> b!593469 (= e!358909 (>= (size!4643 (tail!785 input!2705)) (size!4643 (tail!785 input!2705))))))

(declare-fun d!208895 () Bool)

(assert (=> d!208895 e!358909))

(declare-fun res!255976 () Bool)

(assert (=> d!208895 (=> res!255976 e!358909)))

(declare-fun lt!251505 () Bool)

(assert (=> d!208895 (= res!255976 (not lt!251505))))

(declare-fun e!358910 () Bool)

(assert (=> d!208895 (= lt!251505 e!358910)))

(declare-fun res!255974 () Bool)

(assert (=> d!208895 (=> res!255974 e!358910)))

(assert (=> d!208895 (= res!255974 ((_ is Nil!5869) (tail!785 input!2705)))))

(assert (=> d!208895 (= (isPrefix!783 (tail!785 input!2705) (tail!785 input!2705)) lt!251505)))

(declare-fun b!593466 () Bool)

(declare-fun e!358908 () Bool)

(assert (=> b!593466 (= e!358910 e!358908)))

(declare-fun res!255975 () Bool)

(assert (=> b!593466 (=> (not res!255975) (not e!358908))))

(assert (=> b!593466 (= res!255975 (not ((_ is Nil!5869) (tail!785 input!2705))))))

(declare-fun b!593468 () Bool)

(assert (=> b!593468 (= e!358908 (isPrefix!783 (tail!785 (tail!785 input!2705)) (tail!785 (tail!785 input!2705))))))

(declare-fun b!593467 () Bool)

(declare-fun res!255977 () Bool)

(assert (=> b!593467 (=> (not res!255977) (not e!358908))))

(assert (=> b!593467 (= res!255977 (= (head!1256 (tail!785 input!2705)) (head!1256 (tail!785 input!2705))))))

(assert (= (and d!208895 (not res!255974)) b!593466))

(assert (= (and b!593466 res!255975) b!593467))

(assert (= (and b!593467 res!255977) b!593468))

(assert (= (and d!208895 (not res!255976)) b!593469))

(assert (=> b!593469 m!854507))

(assert (=> b!593469 m!855187))

(assert (=> b!593469 m!854507))

(assert (=> b!593469 m!855187))

(assert (=> b!593468 m!854507))

(assert (=> b!593468 m!855189))

(assert (=> b!593468 m!854507))

(assert (=> b!593468 m!855189))

(assert (=> b!593468 m!855189))

(assert (=> b!593468 m!855189))

(declare-fun m!855459 () Bool)

(assert (=> b!593468 m!855459))

(assert (=> b!593467 m!854507))

(declare-fun m!855461 () Bool)

(assert (=> b!593467 m!855461))

(assert (=> b!593467 m!854507))

(assert (=> b!593467 m!855461))

(assert (=> b!592827 d!208895))

(assert (=> b!592827 d!208751))

(declare-fun b!593480 () Bool)

(declare-fun e!358916 () List!5879)

(declare-fun list!2460 (IArray!3745) List!5879)

(assert (=> b!593480 (= e!358916 (list!2460 (xs!4509 (c!110456 (charsOf!784 token!491)))))))

(declare-fun d!208897 () Bool)

(declare-fun c!110624 () Bool)

(assert (=> d!208897 (= c!110624 ((_ is Empty!1872) (c!110456 (charsOf!784 token!491))))))

(declare-fun e!358915 () List!5879)

(assert (=> d!208897 (= (list!2458 (c!110456 (charsOf!784 token!491))) e!358915)))

(declare-fun b!593481 () Bool)

(assert (=> b!593481 (= e!358916 (++!1643 (list!2458 (left!4758 (c!110456 (charsOf!784 token!491)))) (list!2458 (right!5088 (c!110456 (charsOf!784 token!491))))))))

(declare-fun b!593479 () Bool)

(assert (=> b!593479 (= e!358915 e!358916)))

(declare-fun c!110625 () Bool)

(assert (=> b!593479 (= c!110625 ((_ is Leaf!2957) (c!110456 (charsOf!784 token!491))))))

(declare-fun b!593478 () Bool)

(assert (=> b!593478 (= e!358915 Nil!5869)))

(assert (= (and d!208897 c!110624) b!593478))

(assert (= (and d!208897 (not c!110624)) b!593479))

(assert (= (and b!593479 c!110625) b!593480))

(assert (= (and b!593479 (not c!110625)) b!593481))

(declare-fun m!855463 () Bool)

(assert (=> b!593480 m!855463))

(declare-fun m!855465 () Bool)

(assert (=> b!593481 m!855465))

(declare-fun m!855467 () Bool)

(assert (=> b!593481 m!855467))

(assert (=> b!593481 m!855465))

(assert (=> b!593481 m!855467))

(declare-fun m!855469 () Bool)

(assert (=> b!593481 m!855469))

(assert (=> d!208471 d!208897))

(declare-fun bs!70495 () Bool)

(declare-fun d!208899 () Bool)

(assert (= bs!70495 (and d!208899 d!208821)))

(declare-fun lambda!15997 () Int)

(assert (=> bs!70495 (= (and (= (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toChars!1901 (transformation!1155 (h!11271 rules!3103)))) (= (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toValue!2042 (transformation!1155 (h!11271 rules!3103))))) (= lambda!15997 lambda!15991))))

(declare-fun bs!70496 () Bool)

(assert (= bs!70496 (and d!208899 d!208829)))

(assert (=> bs!70496 (= (and (= (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toChars!1901 (transformation!1155 (rule!1923 token!491)))) (= (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toValue!2042 (transformation!1155 (rule!1923 token!491))))) (= lambda!15997 lambda!15992))))

(assert (=> d!208899 true))

(assert (=> d!208899 (< (dynLambda!3423 order!4767 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) (dynLambda!3424 order!4769 lambda!15997))))

(assert (=> d!208899 true))

(assert (=> d!208899 (< (dynLambda!3421 order!4763 (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) (dynLambda!3424 order!4769 lambda!15997))))

(assert (=> d!208899 (= (semiInverseModEq!457 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) (Forall!298 lambda!15997))))

(declare-fun bs!70497 () Bool)

(assert (= bs!70497 d!208899))

(declare-fun m!855471 () Bool)

(assert (=> bs!70497 m!855471))

(assert (=> d!208477 d!208899))

(declare-fun d!208901 () Bool)

(assert (=> d!208901 (= (isEmpty!4238 (originalCharacters!1194 token!491)) ((_ is Nil!5869) (originalCharacters!1194 token!491)))))

(assert (=> d!208361 d!208901))

(declare-fun b!593500 () Bool)

(declare-fun e!358936 () Bool)

(declare-fun e!358932 () Bool)

(assert (=> b!593500 (= e!358936 e!358932)))

(declare-fun c!110631 () Bool)

(assert (=> b!593500 (= c!110631 ((_ is Star!1489) (regex!1155 (rule!1923 token!491))))))

(declare-fun b!593501 () Bool)

(declare-fun e!358937 () Bool)

(declare-fun call!40373 () Bool)

(assert (=> b!593501 (= e!358937 call!40373)))

(declare-fun b!593502 () Bool)

(declare-fun res!255992 () Bool)

(declare-fun e!358933 () Bool)

(assert (=> b!593502 (=> res!255992 e!358933)))

(assert (=> b!593502 (= res!255992 (not ((_ is Concat!2668) (regex!1155 (rule!1923 token!491)))))))

(declare-fun e!358934 () Bool)

(assert (=> b!593502 (= e!358934 e!358933)))

(declare-fun b!593503 () Bool)

(declare-fun e!358931 () Bool)

(assert (=> b!593503 (= e!358933 e!358931)))

(declare-fun res!255988 () Bool)

(assert (=> b!593503 (=> (not res!255988) (not e!358931))))

(assert (=> b!593503 (= res!255988 call!40373)))

(declare-fun b!593504 () Bool)

(declare-fun res!255990 () Bool)

(assert (=> b!593504 (=> (not res!255990) (not e!358937))))

(declare-fun call!40374 () Bool)

(assert (=> b!593504 (= res!255990 call!40374)))

(assert (=> b!593504 (= e!358934 e!358937)))

(declare-fun b!593505 () Bool)

(declare-fun e!358935 () Bool)

(declare-fun call!40372 () Bool)

(assert (=> b!593505 (= e!358935 call!40372)))

(declare-fun bm!40367 () Bool)

(assert (=> bm!40367 (= call!40373 call!40372)))

(declare-fun b!593506 () Bool)

(assert (=> b!593506 (= e!358932 e!358935)))

(declare-fun res!255991 () Bool)

(assert (=> b!593506 (= res!255991 (not (nullable!415 (reg!1818 (regex!1155 (rule!1923 token!491))))))))

(assert (=> b!593506 (=> (not res!255991) (not e!358935))))

(declare-fun d!208903 () Bool)

(declare-fun res!255989 () Bool)

(assert (=> d!208903 (=> res!255989 e!358936)))

(assert (=> d!208903 (= res!255989 ((_ is ElementMatch!1489) (regex!1155 (rule!1923 token!491))))))

(assert (=> d!208903 (= (validRegex!510 (regex!1155 (rule!1923 token!491))) e!358936)))

(declare-fun bm!40368 () Bool)

(declare-fun c!110630 () Bool)

(assert (=> bm!40368 (= call!40374 (validRegex!510 (ite c!110630 (regOne!3491 (regex!1155 (rule!1923 token!491))) (regTwo!3490 (regex!1155 (rule!1923 token!491))))))))

(declare-fun b!593507 () Bool)

(assert (=> b!593507 (= e!358932 e!358934)))

(assert (=> b!593507 (= c!110630 ((_ is Union!1489) (regex!1155 (rule!1923 token!491))))))

(declare-fun b!593508 () Bool)

(assert (=> b!593508 (= e!358931 call!40374)))

(declare-fun bm!40369 () Bool)

(assert (=> bm!40369 (= call!40372 (validRegex!510 (ite c!110631 (reg!1818 (regex!1155 (rule!1923 token!491))) (ite c!110630 (regTwo!3491 (regex!1155 (rule!1923 token!491))) (regOne!3490 (regex!1155 (rule!1923 token!491)))))))))

(assert (= (and d!208903 (not res!255989)) b!593500))

(assert (= (and b!593500 c!110631) b!593506))

(assert (= (and b!593500 (not c!110631)) b!593507))

(assert (= (and b!593506 res!255991) b!593505))

(assert (= (and b!593507 c!110630) b!593504))

(assert (= (and b!593507 (not c!110630)) b!593502))

(assert (= (and b!593504 res!255990) b!593501))

(assert (= (and b!593502 (not res!255992)) b!593503))

(assert (= (and b!593503 res!255988) b!593508))

(assert (= (or b!593504 b!593508) bm!40368))

(assert (= (or b!593501 b!593503) bm!40367))

(assert (= (or b!593505 bm!40367) bm!40369))

(declare-fun m!855473 () Bool)

(assert (=> b!593506 m!855473))

(declare-fun m!855475 () Bool)

(assert (=> bm!40368 m!855475))

(declare-fun m!855477 () Bool)

(assert (=> bm!40369 m!855477))

(assert (=> d!208511 d!208903))

(declare-fun b!593509 () Bool)

(declare-fun e!358943 () Bool)

(declare-fun e!358939 () Bool)

(assert (=> b!593509 (= e!358943 e!358939)))

(declare-fun c!110633 () Bool)

(assert (=> b!593509 (= c!110633 ((_ is Star!1489) (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun b!593510 () Bool)

(declare-fun e!358944 () Bool)

(declare-fun call!40376 () Bool)

(assert (=> b!593510 (= e!358944 call!40376)))

(declare-fun b!593511 () Bool)

(declare-fun res!255997 () Bool)

(declare-fun e!358940 () Bool)

(assert (=> b!593511 (=> res!255997 e!358940)))

(assert (=> b!593511 (= res!255997 (not ((_ is Concat!2668) (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))))))

(declare-fun e!358941 () Bool)

(assert (=> b!593511 (= e!358941 e!358940)))

(declare-fun b!593512 () Bool)

(declare-fun e!358938 () Bool)

(assert (=> b!593512 (= e!358940 e!358938)))

(declare-fun res!255993 () Bool)

(assert (=> b!593512 (=> (not res!255993) (not e!358938))))

(assert (=> b!593512 (= res!255993 call!40376)))

(declare-fun b!593513 () Bool)

(declare-fun res!255995 () Bool)

(assert (=> b!593513 (=> (not res!255995) (not e!358944))))

(declare-fun call!40377 () Bool)

(assert (=> b!593513 (= res!255995 call!40377)))

(assert (=> b!593513 (= e!358941 e!358944)))

(declare-fun b!593514 () Bool)

(declare-fun e!358942 () Bool)

(declare-fun call!40375 () Bool)

(assert (=> b!593514 (= e!358942 call!40375)))

(declare-fun bm!40370 () Bool)

(assert (=> bm!40370 (= call!40376 call!40375)))

(declare-fun b!593515 () Bool)

(assert (=> b!593515 (= e!358939 e!358942)))

(declare-fun res!255996 () Bool)

(assert (=> b!593515 (= res!255996 (not (nullable!415 (reg!1818 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))))

(assert (=> b!593515 (=> (not res!255996) (not e!358942))))

(declare-fun d!208905 () Bool)

(declare-fun res!255994 () Bool)

(assert (=> d!208905 (=> res!255994 e!358943)))

(assert (=> d!208905 (= res!255994 ((_ is ElementMatch!1489) (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))

(assert (=> d!208905 (= (validRegex!510 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) e!358943)))

(declare-fun bm!40371 () Bool)

(declare-fun c!110632 () Bool)

(assert (=> bm!40371 (= call!40377 (validRegex!510 (ite c!110632 (regOne!3491 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (regTwo!3490 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))))

(declare-fun b!593516 () Bool)

(assert (=> b!593516 (= e!358939 e!358941)))

(assert (=> b!593516 (= c!110632 ((_ is Union!1489) (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun b!593517 () Bool)

(assert (=> b!593517 (= e!358938 call!40377)))

(declare-fun bm!40372 () Bool)

(assert (=> bm!40372 (= call!40375 (validRegex!510 (ite c!110633 (reg!1818 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (ite c!110632 (regTwo!3491 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (regOne!3490 (regex!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))))))))

(assert (= (and d!208905 (not res!255994)) b!593509))

(assert (= (and b!593509 c!110633) b!593515))

(assert (= (and b!593509 (not c!110633)) b!593516))

(assert (= (and b!593515 res!255996) b!593514))

(assert (= (and b!593516 c!110632) b!593513))

(assert (= (and b!593516 (not c!110632)) b!593511))

(assert (= (and b!593513 res!255995) b!593510))

(assert (= (and b!593511 (not res!255997)) b!593512))

(assert (= (and b!593512 res!255993) b!593517))

(assert (= (or b!593513 b!593517) bm!40371))

(assert (= (or b!593510 b!593512) bm!40370))

(assert (= (or b!593514 bm!40370) bm!40372))

(declare-fun m!855479 () Bool)

(assert (=> b!593515 m!855479))

(declare-fun m!855481 () Bool)

(assert (=> bm!40371 m!855481))

(declare-fun m!855483 () Bool)

(assert (=> bm!40372 m!855483))

(assert (=> d!208515 d!208905))

(declare-fun d!208907 () Bool)

(assert (=> d!208907 (= (head!1256 lt!251228) (h!11270 lt!251228))))

(assert (=> b!592854 d!208907))

(declare-fun d!208909 () Bool)

(assert (=> d!208909 (= (head!1256 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))) (h!11270 (++!1643 lt!251228 (_2!3664 (v!16390 lt!251233)))))))

(assert (=> b!592854 d!208909))

(assert (=> b!592805 d!208833))

(assert (=> b!592805 d!208835))

(assert (=> b!592805 d!208837))

(declare-fun bs!70498 () Bool)

(declare-fun d!208911 () Bool)

(assert (= bs!70498 (and d!208911 d!208587)))

(declare-fun lambda!15998 () Int)

(assert (=> bs!70498 (= (= (toValue!2042 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (rule!1923 token!491)))) (= lambda!15998 lambda!15985))))

(declare-fun bs!70499 () Bool)

(assert (= bs!70499 (and d!208911 d!208847)))

(assert (=> bs!70499 (= (= (toValue!2042 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) (= lambda!15998 lambda!15993))))

(assert (=> d!208911 true))

(assert (=> d!208911 (< (dynLambda!3421 order!4763 (toValue!2042 (transformation!1155 (h!11271 rules!3103)))) (dynLambda!3422 order!4765 lambda!15998))))

(assert (=> d!208911 (= (equivClasses!440 (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (h!11271 rules!3103)))) (Forall2!224 lambda!15998))))

(declare-fun bs!70500 () Bool)

(assert (= bs!70500 d!208911))

(declare-fun m!855485 () Bool)

(assert (=> bs!70500 m!855485))

(assert (=> b!592796 d!208911))

(declare-fun d!208913 () Bool)

(assert (=> d!208913 (= (inv!7428 (tag!1417 (h!11271 (t!79103 rules!3103)))) (= (mod (str.len (value!37758 (tag!1417 (h!11271 (t!79103 rules!3103))))) 2) 0))))

(assert (=> b!592892 d!208913))

(declare-fun d!208915 () Bool)

(declare-fun res!255998 () Bool)

(declare-fun e!358945 () Bool)

(assert (=> d!208915 (=> (not res!255998) (not e!358945))))

(assert (=> d!208915 (= res!255998 (semiInverseModEq!457 (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toValue!2042 (transformation!1155 (h!11271 (t!79103 rules!3103))))))))

(assert (=> d!208915 (= (inv!7431 (transformation!1155 (h!11271 (t!79103 rules!3103)))) e!358945)))

(declare-fun b!593518 () Bool)

(assert (=> b!593518 (= e!358945 (equivClasses!440 (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toValue!2042 (transformation!1155 (h!11271 (t!79103 rules!3103))))))))

(assert (= (and d!208915 res!255998) b!593518))

(declare-fun m!855487 () Bool)

(assert (=> d!208915 m!855487))

(declare-fun m!855489 () Bool)

(assert (=> b!593518 m!855489))

(assert (=> b!592892 d!208915))

(declare-fun d!208917 () Bool)

(assert (=> d!208917 (and (= lt!251238 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!208917 true))

(declare-fun _$50!268 () Unit!10665)

(assert (=> d!208917 (= (choose!4296 lt!251238 suffix!1342 input!2705 suffix!1342) _$50!268)))

(assert (=> d!208495 d!208917))

(assert (=> d!208495 d!208381))

(assert (=> d!208495 d!208467))

(assert (=> b!592795 d!208799))

(assert (=> b!592795 d!208801))

(assert (=> b!592795 d!208803))

(assert (=> b!592857 d!208587))

(declare-fun d!208919 () Bool)

(assert (=> d!208919 (= (inv!7436 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (isBalanced!524 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))))))

(declare-fun bs!70501 () Bool)

(assert (= bs!70501 d!208919))

(declare-fun m!855491 () Bool)

(assert (=> bs!70501 m!855491))

(assert (=> tb!51799 d!208919))

(declare-fun d!208921 () Bool)

(assert (=> d!208921 (= (isDefined!1317 lt!251321) (not (isEmpty!4240 lt!251321)))))

(declare-fun bs!70502 () Bool)

(assert (= bs!70502 d!208921))

(assert (=> bs!70502 m!854467))

(assert (=> b!592803 d!208921))

(declare-fun d!208923 () Bool)

(assert (=> d!208923 (= (isDefined!1317 lt!251316) (not (isEmpty!4240 lt!251316)))))

(declare-fun bs!70503 () Bool)

(assert (= bs!70503 d!208923))

(assert (=> bs!70503 m!854431))

(assert (=> b!592793 d!208923))

(declare-fun b!593521 () Bool)

(declare-fun e!358947 () List!5879)

(assert (=> b!593521 (= e!358947 (list!2460 (xs!4509 (c!110456 (charsOf!784 (_1!3664 (v!16390 lt!251233)))))))))

(declare-fun d!208925 () Bool)

(declare-fun c!110634 () Bool)

(assert (=> d!208925 (= c!110634 ((_ is Empty!1872) (c!110456 (charsOf!784 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun e!358946 () List!5879)

(assert (=> d!208925 (= (list!2458 (c!110456 (charsOf!784 (_1!3664 (v!16390 lt!251233))))) e!358946)))

(declare-fun b!593522 () Bool)

(assert (=> b!593522 (= e!358947 (++!1643 (list!2458 (left!4758 (c!110456 (charsOf!784 (_1!3664 (v!16390 lt!251233)))))) (list!2458 (right!5088 (c!110456 (charsOf!784 (_1!3664 (v!16390 lt!251233))))))))))

(declare-fun b!593520 () Bool)

(assert (=> b!593520 (= e!358946 e!358947)))

(declare-fun c!110635 () Bool)

(assert (=> b!593520 (= c!110635 ((_ is Leaf!2957) (c!110456 (charsOf!784 (_1!3664 (v!16390 lt!251233))))))))

(declare-fun b!593519 () Bool)

(assert (=> b!593519 (= e!358946 Nil!5869)))

(assert (= (and d!208925 c!110634) b!593519))

(assert (= (and d!208925 (not c!110634)) b!593520))

(assert (= (and b!593520 c!110635) b!593521))

(assert (= (and b!593520 (not c!110635)) b!593522))

(declare-fun m!855493 () Bool)

(assert (=> b!593521 m!855493))

(declare-fun m!855495 () Bool)

(assert (=> b!593522 m!855495))

(declare-fun m!855497 () Bool)

(assert (=> b!593522 m!855497))

(assert (=> b!593522 m!855495))

(assert (=> b!593522 m!855497))

(declare-fun m!855499 () Bool)

(assert (=> b!593522 m!855499))

(assert (=> d!208499 d!208925))

(declare-fun d!208927 () Bool)

(declare-fun lt!251506 () Int)

(assert (=> d!208927 (>= lt!251506 0)))

(declare-fun e!358948 () Int)

(assert (=> d!208927 (= lt!251506 e!358948)))

(declare-fun c!110636 () Bool)

(assert (=> d!208927 (= c!110636 ((_ is Nil!5869) (t!79102 lt!251238)))))

(assert (=> d!208927 (= (size!4643 (t!79102 lt!251238)) lt!251506)))

(declare-fun b!593523 () Bool)

(assert (=> b!593523 (= e!358948 0)))

(declare-fun b!593524 () Bool)

(assert (=> b!593524 (= e!358948 (+ 1 (size!4643 (t!79102 (t!79102 lt!251238)))))))

(assert (= (and d!208927 c!110636) b!593523))

(assert (= (and d!208927 (not c!110636)) b!593524))

(declare-fun m!855501 () Bool)

(assert (=> b!593524 m!855501))

(assert (=> b!592816 d!208927))

(declare-fun d!208929 () Bool)

(assert (=> d!208929 (= (list!2456 lt!251352) (list!2458 (c!110456 lt!251352)))))

(declare-fun bs!70504 () Bool)

(assert (= bs!70504 d!208929))

(declare-fun m!855503 () Bool)

(assert (=> bs!70504 m!855503))

(assert (=> d!208503 d!208929))

(declare-fun d!208931 () Bool)

(assert (=> d!208931 (= (isEmpty!4240 lt!251321) (not ((_ is Some!1505) lt!251321)))))

(assert (=> d!208465 d!208931))

(declare-fun b!593528 () Bool)

(declare-fun e!358950 () Bool)

(assert (=> b!593528 (= e!358950 (>= (size!4643 lt!251225) (size!4643 lt!251225)))))

(declare-fun d!208933 () Bool)

(assert (=> d!208933 e!358950))

(declare-fun res!256001 () Bool)

(assert (=> d!208933 (=> res!256001 e!358950)))

(declare-fun lt!251507 () Bool)

(assert (=> d!208933 (= res!256001 (not lt!251507))))

(declare-fun e!358951 () Bool)

(assert (=> d!208933 (= lt!251507 e!358951)))

(declare-fun res!255999 () Bool)

(assert (=> d!208933 (=> res!255999 e!358951)))

(assert (=> d!208933 (= res!255999 ((_ is Nil!5869) lt!251225))))

(assert (=> d!208933 (= (isPrefix!783 lt!251225 lt!251225) lt!251507)))

(declare-fun b!593525 () Bool)

(declare-fun e!358949 () Bool)

(assert (=> b!593525 (= e!358951 e!358949)))

(declare-fun res!256000 () Bool)

(assert (=> b!593525 (=> (not res!256000) (not e!358949))))

(assert (=> b!593525 (= res!256000 (not ((_ is Nil!5869) lt!251225)))))

(declare-fun b!593527 () Bool)

(assert (=> b!593527 (= e!358949 (isPrefix!783 (tail!785 lt!251225) (tail!785 lt!251225)))))

(declare-fun b!593526 () Bool)

(declare-fun res!256002 () Bool)

(assert (=> b!593526 (=> (not res!256002) (not e!358949))))

(assert (=> b!593526 (= res!256002 (= (head!1256 lt!251225) (head!1256 lt!251225)))))

(assert (= (and d!208933 (not res!255999)) b!593525))

(assert (= (and b!593525 res!256000) b!593526))

(assert (= (and b!593526 res!256002) b!593527))

(assert (= (and d!208933 (not res!256001)) b!593528))

(assert (=> b!593528 m!854455))

(assert (=> b!593528 m!854455))

(declare-fun m!855505 () Bool)

(assert (=> b!593527 m!855505))

(assert (=> b!593527 m!855505))

(assert (=> b!593527 m!855505))

(assert (=> b!593527 m!855505))

(declare-fun m!855507 () Bool)

(assert (=> b!593527 m!855507))

(declare-fun m!855509 () Bool)

(assert (=> b!593526 m!855509))

(assert (=> b!593526 m!855509))

(assert (=> d!208465 d!208933))

(declare-fun d!208935 () Bool)

(assert (=> d!208935 (isPrefix!783 lt!251225 lt!251225)))

(declare-fun lt!251508 () Unit!10665)

(assert (=> d!208935 (= lt!251508 (choose!4295 lt!251225 lt!251225))))

(assert (=> d!208935 (= (lemmaIsPrefixRefl!519 lt!251225 lt!251225) lt!251508)))

(declare-fun bs!70505 () Bool)

(assert (= bs!70505 d!208935))

(assert (=> bs!70505 m!854469))

(declare-fun m!855511 () Bool)

(assert (=> bs!70505 m!855511))

(assert (=> d!208465 d!208935))

(assert (=> d!208465 d!208739))

(declare-fun d!208937 () Bool)

(declare-fun c!110637 () Bool)

(assert (=> d!208937 (= c!110637 ((_ is Nil!5869) lt!251248))))

(declare-fun e!358952 () (InoxSet C!3900))

(assert (=> d!208937 (= (content!1057 lt!251248) e!358952)))

(declare-fun b!593529 () Bool)

(assert (=> b!593529 (= e!358952 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593530 () Bool)

(assert (=> b!593530 (= e!358952 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 lt!251248) true) (content!1057 (t!79102 lt!251248))))))

(assert (= (and d!208937 c!110637) b!593529))

(assert (= (and d!208937 (not c!110637)) b!593530))

(declare-fun m!855513 () Bool)

(assert (=> b!593530 m!855513))

(declare-fun m!855515 () Bool)

(assert (=> b!593530 m!855515))

(assert (=> d!208381 d!208937))

(declare-fun d!208939 () Bool)

(declare-fun c!110638 () Bool)

(assert (=> d!208939 (= c!110638 ((_ is Nil!5869) lt!251238))))

(declare-fun e!358953 () (InoxSet C!3900))

(assert (=> d!208939 (= (content!1057 lt!251238) e!358953)))

(declare-fun b!593531 () Bool)

(assert (=> b!593531 (= e!358953 ((as const (Array C!3900 Bool)) false))))

(declare-fun b!593532 () Bool)

(assert (=> b!593532 (= e!358953 ((_ map or) (store ((as const (Array C!3900 Bool)) false) (h!11270 lt!251238) true) (content!1057 (t!79102 lt!251238))))))

(assert (= (and d!208939 c!110638) b!593531))

(assert (= (and d!208939 (not c!110638)) b!593532))

(declare-fun m!855517 () Bool)

(assert (=> b!593532 m!855517))

(assert (=> b!593532 m!855269))

(assert (=> d!208381 d!208939))

(assert (=> d!208381 d!208827))

(declare-fun b!593561 () Bool)

(declare-fun e!358972 () Bool)

(declare-fun lt!251511 () Bool)

(declare-fun call!40380 () Bool)

(assert (=> b!593561 (= e!358972 (= lt!251511 call!40380))))

(declare-fun bm!40375 () Bool)

(assert (=> bm!40375 (= call!40380 (isEmpty!4238 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))))))

(declare-fun d!208941 () Bool)

(assert (=> d!208941 e!358972))

(declare-fun c!110647 () Bool)

(assert (=> d!208941 (= c!110647 ((_ is EmptyExpr!1489) (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))))))

(declare-fun e!358974 () Bool)

(assert (=> d!208941 (= lt!251511 e!358974)))

(declare-fun c!110645 () Bool)

(assert (=> d!208941 (= c!110645 (isEmpty!4238 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))))))

(assert (=> d!208941 (validRegex!510 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))))

(assert (=> d!208941 (= (matchR!618 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))) lt!251511)))

(declare-fun b!593562 () Bool)

(declare-fun res!256024 () Bool)

(declare-fun e!358970 () Bool)

(assert (=> b!593562 (=> res!256024 e!358970)))

(assert (=> b!593562 (= res!256024 (not ((_ is ElementMatch!1489) (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))))))

(declare-fun e!358973 () Bool)

(assert (=> b!593562 (= e!358973 e!358970)))

(declare-fun b!593563 () Bool)

(declare-fun res!256026 () Bool)

(declare-fun e!358969 () Bool)

(assert (=> b!593563 (=> (not res!256026) (not e!358969))))

(assert (=> b!593563 (= res!256026 (not call!40380))))

(declare-fun b!593564 () Bool)

(assert (=> b!593564 (= e!358969 (= (head!1256 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))) (c!110455 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))))))

(declare-fun b!593565 () Bool)

(declare-fun res!256020 () Bool)

(assert (=> b!593565 (=> res!256020 e!358970)))

(assert (=> b!593565 (= res!256020 e!358969)))

(declare-fun res!256023 () Bool)

(assert (=> b!593565 (=> (not res!256023) (not e!358969))))

(assert (=> b!593565 (= res!256023 lt!251511)))

(declare-fun b!593566 () Bool)

(declare-fun e!358968 () Bool)

(declare-fun e!358971 () Bool)

(assert (=> b!593566 (= e!358968 e!358971)))

(declare-fun res!256021 () Bool)

(assert (=> b!593566 (=> res!256021 e!358971)))

(assert (=> b!593566 (= res!256021 call!40380)))

(declare-fun b!593567 () Bool)

(assert (=> b!593567 (= e!358971 (not (= (head!1256 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))) (c!110455 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))))))))

(declare-fun b!593568 () Bool)

(assert (=> b!593568 (= e!358973 (not lt!251511))))

(declare-fun b!593569 () Bool)

(assert (=> b!593569 (= e!358970 e!358968)))

(declare-fun res!256025 () Bool)

(assert (=> b!593569 (=> (not res!256025) (not e!358968))))

(assert (=> b!593569 (= res!256025 (not lt!251511))))

(declare-fun b!593570 () Bool)

(declare-fun res!256022 () Bool)

(assert (=> b!593570 (=> (not res!256022) (not e!358969))))

(assert (=> b!593570 (= res!256022 (isEmpty!4238 (tail!785 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))))))))

(declare-fun b!593571 () Bool)

(declare-fun derivativeStep!318 (Regex!1489 C!3900) Regex!1489)

(assert (=> b!593571 (= e!358974 (matchR!618 (derivativeStep!318 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))) (head!1256 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))))) (tail!785 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316)))))))))

(declare-fun b!593572 () Bool)

(assert (=> b!593572 (= e!358974 (nullable!415 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))))))

(declare-fun b!593573 () Bool)

(declare-fun res!256019 () Bool)

(assert (=> b!593573 (=> res!256019 e!358971)))

(assert (=> b!593573 (= res!256019 (not (isEmpty!4238 (tail!785 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251316))))))))))

(declare-fun b!593574 () Bool)

(assert (=> b!593574 (= e!358972 e!358973)))

(declare-fun c!110646 () Bool)

(assert (=> b!593574 (= c!110646 ((_ is EmptyLang!1489) (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251316))))))))

(assert (= (and d!208941 c!110645) b!593572))

(assert (= (and d!208941 (not c!110645)) b!593571))

(assert (= (and d!208941 c!110647) b!593561))

(assert (= (and d!208941 (not c!110647)) b!593574))

(assert (= (and b!593574 c!110646) b!593568))

(assert (= (and b!593574 (not c!110646)) b!593562))

(assert (= (and b!593562 (not res!256024)) b!593565))

(assert (= (and b!593565 res!256023) b!593563))

(assert (= (and b!593563 res!256026) b!593570))

(assert (= (and b!593570 res!256022) b!593564))

(assert (= (and b!593565 (not res!256020)) b!593569))

(assert (= (and b!593569 res!256025) b!593566))

(assert (= (and b!593566 (not res!256021)) b!593573))

(assert (= (and b!593573 (not res!256019)) b!593567))

(assert (= (or b!593561 b!593563 b!593566) bm!40375))

(assert (=> b!593571 m!854413))

(declare-fun m!855519 () Bool)

(assert (=> b!593571 m!855519))

(assert (=> b!593571 m!855519))

(declare-fun m!855521 () Bool)

(assert (=> b!593571 m!855521))

(assert (=> b!593571 m!854413))

(declare-fun m!855523 () Bool)

(assert (=> b!593571 m!855523))

(assert (=> b!593571 m!855521))

(assert (=> b!593571 m!855523))

(declare-fun m!855525 () Bool)

(assert (=> b!593571 m!855525))

(assert (=> b!593567 m!854413))

(assert (=> b!593567 m!855519))

(assert (=> b!593564 m!854413))

(assert (=> b!593564 m!855519))

(assert (=> b!593570 m!854413))

(assert (=> b!593570 m!855523))

(assert (=> b!593570 m!855523))

(declare-fun m!855527 () Bool)

(assert (=> b!593570 m!855527))

(assert (=> bm!40375 m!854413))

(declare-fun m!855529 () Bool)

(assert (=> bm!40375 m!855529))

(declare-fun m!855531 () Bool)

(assert (=> b!593572 m!855531))

(assert (=> d!208941 m!854413))

(assert (=> d!208941 m!855529))

(declare-fun m!855533 () Bool)

(assert (=> d!208941 m!855533))

(assert (=> b!593573 m!854413))

(assert (=> b!593573 m!855523))

(assert (=> b!593573 m!855523))

(assert (=> b!593573 m!855527))

(assert (=> b!592791 d!208941))

(assert (=> b!592791 d!208803))

(assert (=> b!592791 d!208799))

(assert (=> b!592791 d!208801))

(declare-fun b!593575 () Bool)

(declare-fun e!358979 () Bool)

(declare-fun lt!251512 () Bool)

(declare-fun call!40381 () Bool)

(assert (=> b!593575 (= e!358979 (= lt!251512 call!40381))))

(declare-fun bm!40376 () Bool)

(assert (=> bm!40376 (= call!40381 (isEmpty!4238 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))))))

(declare-fun d!208943 () Bool)

(assert (=> d!208943 e!358979))

(declare-fun c!110650 () Bool)

(assert (=> d!208943 (= c!110650 ((_ is EmptyExpr!1489) (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))))))

(declare-fun e!358981 () Bool)

(assert (=> d!208943 (= lt!251512 e!358981)))

(declare-fun c!110648 () Bool)

(assert (=> d!208943 (= c!110648 (isEmpty!4238 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))))))

(assert (=> d!208943 (validRegex!510 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))))

(assert (=> d!208943 (= (matchR!618 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))) (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))) lt!251512)))

(declare-fun b!593576 () Bool)

(declare-fun res!256032 () Bool)

(declare-fun e!358977 () Bool)

(assert (=> b!593576 (=> res!256032 e!358977)))

(assert (=> b!593576 (= res!256032 (not ((_ is ElementMatch!1489) (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))))))

(declare-fun e!358980 () Bool)

(assert (=> b!593576 (= e!358980 e!358977)))

(declare-fun b!593577 () Bool)

(declare-fun res!256034 () Bool)

(declare-fun e!358976 () Bool)

(assert (=> b!593577 (=> (not res!256034) (not e!358976))))

(assert (=> b!593577 (= res!256034 (not call!40381))))

(declare-fun b!593578 () Bool)

(assert (=> b!593578 (= e!358976 (= (head!1256 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))) (c!110455 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))))))

(declare-fun b!593579 () Bool)

(declare-fun res!256028 () Bool)

(assert (=> b!593579 (=> res!256028 e!358977)))

(assert (=> b!593579 (= res!256028 e!358976)))

(declare-fun res!256031 () Bool)

(assert (=> b!593579 (=> (not res!256031) (not e!358976))))

(assert (=> b!593579 (= res!256031 lt!251512)))

(declare-fun b!593580 () Bool)

(declare-fun e!358975 () Bool)

(declare-fun e!358978 () Bool)

(assert (=> b!593580 (= e!358975 e!358978)))

(declare-fun res!256029 () Bool)

(assert (=> b!593580 (=> res!256029 e!358978)))

(assert (=> b!593580 (= res!256029 call!40381)))

(declare-fun b!593581 () Bool)

(assert (=> b!593581 (= e!358978 (not (= (head!1256 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))) (c!110455 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))))))))

(declare-fun b!593582 () Bool)

(assert (=> b!593582 (= e!358980 (not lt!251512))))

(declare-fun b!593583 () Bool)

(assert (=> b!593583 (= e!358977 e!358975)))

(declare-fun res!256033 () Bool)

(assert (=> b!593583 (=> (not res!256033) (not e!358975))))

(assert (=> b!593583 (= res!256033 (not lt!251512))))

(declare-fun b!593584 () Bool)

(declare-fun res!256030 () Bool)

(assert (=> b!593584 (=> (not res!256030) (not e!358976))))

(assert (=> b!593584 (= res!256030 (isEmpty!4238 (tail!785 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))))))))

(declare-fun b!593585 () Bool)

(assert (=> b!593585 (= e!358981 (matchR!618 (derivativeStep!318 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))) (head!1256 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))))) (tail!785 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321)))))))))

(declare-fun b!593586 () Bool)

(assert (=> b!593586 (= e!358981 (nullable!415 (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))))))

(declare-fun b!593587 () Bool)

(declare-fun res!256027 () Bool)

(assert (=> b!593587 (=> res!256027 e!358978)))

(assert (=> b!593587 (= res!256027 (not (isEmpty!4238 (tail!785 (list!2456 (charsOf!784 (_1!3664 (get!2247 lt!251321))))))))))

(declare-fun b!593588 () Bool)

(assert (=> b!593588 (= e!358979 e!358980)))

(declare-fun c!110649 () Bool)

(assert (=> b!593588 (= c!110649 ((_ is EmptyLang!1489) (regex!1155 (rule!1923 (_1!3664 (get!2247 lt!251321))))))))

(assert (= (and d!208943 c!110648) b!593586))

(assert (= (and d!208943 (not c!110648)) b!593585))

(assert (= (and d!208943 c!110650) b!593575))

(assert (= (and d!208943 (not c!110650)) b!593588))

(assert (= (and b!593588 c!110649) b!593582))

(assert (= (and b!593588 (not c!110649)) b!593576))

(assert (= (and b!593576 (not res!256032)) b!593579))

(assert (= (and b!593579 res!256031) b!593577))

(assert (= (and b!593577 res!256034) b!593584))

(assert (= (and b!593584 res!256030) b!593578))

(assert (= (and b!593579 (not res!256028)) b!593583))

(assert (= (and b!593583 res!256033) b!593580))

(assert (= (and b!593580 (not res!256029)) b!593587))

(assert (= (and b!593587 (not res!256027)) b!593581))

(assert (= (or b!593575 b!593577 b!593580) bm!40376))

(assert (=> b!593585 m!854449))

(declare-fun m!855535 () Bool)

(assert (=> b!593585 m!855535))

(assert (=> b!593585 m!855535))

(declare-fun m!855537 () Bool)

(assert (=> b!593585 m!855537))

(assert (=> b!593585 m!854449))

(declare-fun m!855539 () Bool)

(assert (=> b!593585 m!855539))

(assert (=> b!593585 m!855537))

(assert (=> b!593585 m!855539))

(declare-fun m!855541 () Bool)

(assert (=> b!593585 m!855541))

(assert (=> b!593581 m!854449))

(assert (=> b!593581 m!855535))

(assert (=> b!593578 m!854449))

(assert (=> b!593578 m!855535))

(assert (=> b!593584 m!854449))

(assert (=> b!593584 m!855539))

(assert (=> b!593584 m!855539))

(declare-fun m!855543 () Bool)

(assert (=> b!593584 m!855543))

(assert (=> bm!40376 m!854449))

(declare-fun m!855545 () Bool)

(assert (=> bm!40376 m!855545))

(declare-fun m!855547 () Bool)

(assert (=> b!593586 m!855547))

(assert (=> d!208943 m!854449))

(assert (=> d!208943 m!855545))

(declare-fun m!855549 () Bool)

(assert (=> d!208943 m!855549))

(assert (=> b!593587 m!854449))

(assert (=> b!593587 m!855539))

(assert (=> b!593587 m!855539))

(assert (=> b!593587 m!855543))

(assert (=> b!592801 d!208943))

(assert (=> b!592801 d!208837))

(assert (=> b!592801 d!208833))

(assert (=> b!592801 d!208835))

(declare-fun b!593591 () Bool)

(declare-fun e!358982 () Bool)

(declare-fun tp!184990 () Bool)

(assert (=> b!593591 (= e!358982 tp!184990)))

(declare-fun b!593589 () Bool)

(assert (=> b!593589 (= e!358982 tp_is_empty!3333)))

(declare-fun b!593592 () Bool)

(declare-fun tp!184989 () Bool)

(declare-fun tp!184988 () Bool)

(assert (=> b!593592 (= e!358982 (and tp!184989 tp!184988))))

(assert (=> b!592873 (= tp!184883 e!358982)))

(declare-fun b!593590 () Bool)

(declare-fun tp!184986 () Bool)

(declare-fun tp!184987 () Bool)

(assert (=> b!593590 (= e!358982 (and tp!184986 tp!184987))))

(assert (= (and b!592873 ((_ is ElementMatch!1489) (regOne!3490 (regex!1155 (h!11271 rules!3103))))) b!593589))

(assert (= (and b!592873 ((_ is Concat!2668) (regOne!3490 (regex!1155 (h!11271 rules!3103))))) b!593590))

(assert (= (and b!592873 ((_ is Star!1489) (regOne!3490 (regex!1155 (h!11271 rules!3103))))) b!593591))

(assert (= (and b!592873 ((_ is Union!1489) (regOne!3490 (regex!1155 (h!11271 rules!3103))))) b!593592))

(declare-fun b!593595 () Bool)

(declare-fun e!358983 () Bool)

(declare-fun tp!184995 () Bool)

(assert (=> b!593595 (= e!358983 tp!184995)))

(declare-fun b!593593 () Bool)

(assert (=> b!593593 (= e!358983 tp_is_empty!3333)))

(declare-fun b!593596 () Bool)

(declare-fun tp!184994 () Bool)

(declare-fun tp!184993 () Bool)

(assert (=> b!593596 (= e!358983 (and tp!184994 tp!184993))))

(assert (=> b!592873 (= tp!184884 e!358983)))

(declare-fun b!593594 () Bool)

(declare-fun tp!184991 () Bool)

(declare-fun tp!184992 () Bool)

(assert (=> b!593594 (= e!358983 (and tp!184991 tp!184992))))

(assert (= (and b!592873 ((_ is ElementMatch!1489) (regTwo!3490 (regex!1155 (h!11271 rules!3103))))) b!593593))

(assert (= (and b!592873 ((_ is Concat!2668) (regTwo!3490 (regex!1155 (h!11271 rules!3103))))) b!593594))

(assert (= (and b!592873 ((_ is Star!1489) (regTwo!3490 (regex!1155 (h!11271 rules!3103))))) b!593595))

(assert (= (and b!592873 ((_ is Union!1489) (regTwo!3490 (regex!1155 (h!11271 rules!3103))))) b!593596))

(declare-fun b!593599 () Bool)

(declare-fun e!358984 () Bool)

(declare-fun tp!185000 () Bool)

(assert (=> b!593599 (= e!358984 tp!185000)))

(declare-fun b!593597 () Bool)

(assert (=> b!593597 (= e!358984 tp_is_empty!3333)))

(declare-fun b!593600 () Bool)

(declare-fun tp!184999 () Bool)

(declare-fun tp!184998 () Bool)

(assert (=> b!593600 (= e!358984 (and tp!184999 tp!184998))))

(assert (=> b!592869 (= tp!184878 e!358984)))

(declare-fun b!593598 () Bool)

(declare-fun tp!184996 () Bool)

(declare-fun tp!184997 () Bool)

(assert (=> b!593598 (= e!358984 (and tp!184996 tp!184997))))

(assert (= (and b!592869 ((_ is ElementMatch!1489) (regOne!3490 (regex!1155 (rule!1923 token!491))))) b!593597))

(assert (= (and b!592869 ((_ is Concat!2668) (regOne!3490 (regex!1155 (rule!1923 token!491))))) b!593598))

(assert (= (and b!592869 ((_ is Star!1489) (regOne!3490 (regex!1155 (rule!1923 token!491))))) b!593599))

(assert (= (and b!592869 ((_ is Union!1489) (regOne!3490 (regex!1155 (rule!1923 token!491))))) b!593600))

(declare-fun b!593603 () Bool)

(declare-fun e!358985 () Bool)

(declare-fun tp!185005 () Bool)

(assert (=> b!593603 (= e!358985 tp!185005)))

(declare-fun b!593601 () Bool)

(assert (=> b!593601 (= e!358985 tp_is_empty!3333)))

(declare-fun b!593604 () Bool)

(declare-fun tp!185004 () Bool)

(declare-fun tp!185003 () Bool)

(assert (=> b!593604 (= e!358985 (and tp!185004 tp!185003))))

(assert (=> b!592869 (= tp!184879 e!358985)))

(declare-fun b!593602 () Bool)

(declare-fun tp!185001 () Bool)

(declare-fun tp!185002 () Bool)

(assert (=> b!593602 (= e!358985 (and tp!185001 tp!185002))))

(assert (= (and b!592869 ((_ is ElementMatch!1489) (regTwo!3490 (regex!1155 (rule!1923 token!491))))) b!593601))

(assert (= (and b!592869 ((_ is Concat!2668) (regTwo!3490 (regex!1155 (rule!1923 token!491))))) b!593602))

(assert (= (and b!592869 ((_ is Star!1489) (regTwo!3490 (regex!1155 (rule!1923 token!491))))) b!593603))

(assert (= (and b!592869 ((_ is Union!1489) (regTwo!3490 (regex!1155 (rule!1923 token!491))))) b!593604))

(declare-fun b!593607 () Bool)

(declare-fun e!358986 () Bool)

(declare-fun tp!185010 () Bool)

(assert (=> b!593607 (= e!358986 tp!185010)))

(declare-fun b!593605 () Bool)

(assert (=> b!593605 (= e!358986 tp_is_empty!3333)))

(declare-fun b!593608 () Bool)

(declare-fun tp!185009 () Bool)

(declare-fun tp!185008 () Bool)

(assert (=> b!593608 (= e!358986 (and tp!185009 tp!185008))))

(assert (=> b!592874 (= tp!184887 e!358986)))

(declare-fun b!593606 () Bool)

(declare-fun tp!185006 () Bool)

(declare-fun tp!185007 () Bool)

(assert (=> b!593606 (= e!358986 (and tp!185006 tp!185007))))

(assert (= (and b!592874 ((_ is ElementMatch!1489) (reg!1818 (regex!1155 (h!11271 rules!3103))))) b!593605))

(assert (= (and b!592874 ((_ is Concat!2668) (reg!1818 (regex!1155 (h!11271 rules!3103))))) b!593606))

(assert (= (and b!592874 ((_ is Star!1489) (reg!1818 (regex!1155 (h!11271 rules!3103))))) b!593607))

(assert (= (and b!592874 ((_ is Union!1489) (reg!1818 (regex!1155 (h!11271 rules!3103))))) b!593608))

(declare-fun b!593611 () Bool)

(declare-fun e!358987 () Bool)

(declare-fun tp!185015 () Bool)

(assert (=> b!593611 (= e!358987 tp!185015)))

(declare-fun b!593609 () Bool)

(assert (=> b!593609 (= e!358987 tp_is_empty!3333)))

(declare-fun b!593612 () Bool)

(declare-fun tp!185014 () Bool)

(declare-fun tp!185013 () Bool)

(assert (=> b!593612 (= e!358987 (and tp!185014 tp!185013))))

(assert (=> b!592892 (= tp!184904 e!358987)))

(declare-fun b!593610 () Bool)

(declare-fun tp!185011 () Bool)

(declare-fun tp!185012 () Bool)

(assert (=> b!593610 (= e!358987 (and tp!185011 tp!185012))))

(assert (= (and b!592892 ((_ is ElementMatch!1489) (regex!1155 (h!11271 (t!79103 rules!3103))))) b!593609))

(assert (= (and b!592892 ((_ is Concat!2668) (regex!1155 (h!11271 (t!79103 rules!3103))))) b!593610))

(assert (= (and b!592892 ((_ is Star!1489) (regex!1155 (h!11271 (t!79103 rules!3103))))) b!593611))

(assert (= (and b!592892 ((_ is Union!1489) (regex!1155 (h!11271 (t!79103 rules!3103))))) b!593612))

(declare-fun b!593613 () Bool)

(declare-fun e!358988 () Bool)

(declare-fun tp!185016 () Bool)

(assert (=> b!593613 (= e!358988 (and tp_is_empty!3333 tp!185016))))

(assert (=> b!592881 (= tp!184891 e!358988)))

(assert (= (and b!592881 ((_ is Cons!5869) (t!79102 (t!79102 suffix!1342)))) b!593613))

(declare-fun b!593622 () Bool)

(declare-fun tp!185023 () Bool)

(declare-fun tp!185024 () Bool)

(declare-fun e!358993 () Bool)

(assert (=> b!593622 (= e!358993 (and (inv!7435 (left!4758 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) tp!185023 (inv!7435 (right!5088 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) tp!185024))))

(declare-fun b!593624 () Bool)

(declare-fun e!358994 () Bool)

(declare-fun tp!185025 () Bool)

(assert (=> b!593624 (= e!358994 tp!185025)))

(declare-fun b!593623 () Bool)

(declare-fun inv!7442 (IArray!3745) Bool)

(assert (=> b!593623 (= e!358993 (and (inv!7442 (xs!4509 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) e!358994))))

(assert (=> b!592850 (= tp!184867 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))) e!358993))))

(assert (= (and b!592850 ((_ is Node!1872) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) b!593622))

(assert (= b!593623 b!593624))

(assert (= (and b!592850 ((_ is Leaf!2957) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))) (value!37784 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) b!593623))

(declare-fun m!855551 () Bool)

(assert (=> b!593622 m!855551))

(declare-fun m!855553 () Bool)

(assert (=> b!593622 m!855553))

(declare-fun m!855555 () Bool)

(assert (=> b!593623 m!855555))

(assert (=> b!592850 m!854557))

(declare-fun b!593627 () Bool)

(declare-fun b_free!16697 () Bool)

(declare-fun b_next!16713 () Bool)

(assert (=> b!593627 (= b_free!16697 (not b_next!16713))))

(declare-fun t!79221 () Bool)

(declare-fun tb!51875 () Bool)

(assert (=> (and b!593627 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79221) tb!51875))

(declare-fun result!58238 () Bool)

(assert (= result!58238 result!58142))

(assert (=> d!208475 t!79221))

(declare-fun tb!51877 () Bool)

(declare-fun t!79223 () Bool)

(assert (=> (and b!593627 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79223) tb!51877))

(declare-fun result!58240 () Bool)

(assert (= result!58240 result!58224))

(assert (=> d!208839 t!79223))

(declare-fun tb!51879 () Bool)

(declare-fun t!79225 () Bool)

(assert (=> (and b!593627 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79225) tb!51879))

(declare-fun result!58242 () Bool)

(assert (= result!58242 result!58230))

(assert (=> d!208843 t!79225))

(declare-fun tp!185028 () Bool)

(declare-fun b_and!58527 () Bool)

(assert (=> b!593627 (= tp!185028 (and (=> t!79221 result!58238) (=> t!79223 result!58240) (=> t!79225 result!58242) b_and!58527))))

(declare-fun b_free!16699 () Bool)

(declare-fun b_next!16715 () Bool)

(assert (=> b!593627 (= b_free!16699 (not b_next!16715))))

(declare-fun tb!51881 () Bool)

(declare-fun t!79227 () Bool)

(assert (=> (and b!593627 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251316)))))) t!79227) tb!51881))

(declare-fun result!58244 () Bool)

(assert (= result!58244 result!58212))

(assert (=> d!208801 t!79227))

(declare-fun t!79229 () Bool)

(declare-fun tb!51883 () Bool)

(assert (=> (and b!593627 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toChars!1901 (transformation!1155 (rule!1923 token!491)))) t!79229) tb!51883))

(declare-fun result!58246 () Bool)

(assert (= result!58246 result!58102))

(assert (=> b!592551 t!79229))

(declare-fun tb!51885 () Bool)

(declare-fun t!79231 () Bool)

(assert (=> (and b!593627 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233)))))) t!79231) tb!51885))

(declare-fun result!58248 () Bool)

(assert (= result!58248 result!58148))

(assert (=> d!208503 t!79231))

(declare-fun tb!51887 () Bool)

(declare-fun t!79233 () Bool)

(assert (=> (and b!593627 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228))))) t!79233) tb!51887))

(declare-fun result!58250 () Bool)

(assert (= result!58250 result!58152))

(assert (=> b!592848 t!79233))

(assert (=> d!208473 t!79229))

(declare-fun tb!51889 () Bool)

(declare-fun t!79235 () Bool)

(assert (=> (and b!593627 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (get!2247 lt!251321)))))) t!79235) tb!51889))

(declare-fun result!58252 () Bool)

(assert (= result!58252 result!58218))

(assert (=> d!208835 t!79235))

(declare-fun b_and!58529 () Bool)

(declare-fun tp!185026 () Bool)

(assert (=> b!593627 (= tp!185026 (and (=> t!79233 result!58250) (=> t!79235 result!58252) (=> t!79227 result!58244) (=> t!79229 result!58246) (=> t!79231 result!58248) b_and!58529))))

(declare-fun e!358996 () Bool)

(assert (=> b!593627 (= e!358996 (and tp!185028 tp!185026))))

(declare-fun tp!185029 () Bool)

(declare-fun b!593626 () Bool)

(declare-fun e!358995 () Bool)

(assert (=> b!593626 (= e!358995 (and tp!185029 (inv!7428 (tag!1417 (h!11271 (t!79103 (t!79103 rules!3103))))) (inv!7431 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) e!358996))))

(declare-fun b!593625 () Bool)

(declare-fun e!358998 () Bool)

(declare-fun tp!185027 () Bool)

(assert (=> b!593625 (= e!358998 (and e!358995 tp!185027))))

(assert (=> b!592891 (= tp!184902 e!358998)))

(assert (= b!593626 b!593627))

(assert (= b!593625 b!593626))

(assert (= (and b!592891 ((_ is Cons!5870) (t!79103 (t!79103 rules!3103)))) b!593625))

(declare-fun m!855557 () Bool)

(assert (=> b!593626 m!855557))

(declare-fun m!855559 () Bool)

(assert (=> b!593626 m!855559))

(declare-fun b!593628 () Bool)

(declare-fun e!358999 () Bool)

(declare-fun tp!185030 () Bool)

(assert (=> b!593628 (= e!358999 (and tp_is_empty!3333 tp!185030))))

(assert (=> b!592880 (= tp!184890 e!358999)))

(assert (= (and b!592880 ((_ is Cons!5869) (t!79102 (originalCharacters!1194 token!491)))) b!593628))

(declare-fun b!593631 () Bool)

(declare-fun e!359000 () Bool)

(declare-fun tp!185035 () Bool)

(assert (=> b!593631 (= e!359000 tp!185035)))

(declare-fun b!593629 () Bool)

(assert (=> b!593629 (= e!359000 tp_is_empty!3333)))

(declare-fun b!593632 () Bool)

(declare-fun tp!185034 () Bool)

(declare-fun tp!185033 () Bool)

(assert (=> b!593632 (= e!359000 (and tp!185034 tp!185033))))

(assert (=> b!592875 (= tp!184886 e!359000)))

(declare-fun b!593630 () Bool)

(declare-fun tp!185031 () Bool)

(declare-fun tp!185032 () Bool)

(assert (=> b!593630 (= e!359000 (and tp!185031 tp!185032))))

(assert (= (and b!592875 ((_ is ElementMatch!1489) (regOne!3491 (regex!1155 (h!11271 rules!3103))))) b!593629))

(assert (= (and b!592875 ((_ is Concat!2668) (regOne!3491 (regex!1155 (h!11271 rules!3103))))) b!593630))

(assert (= (and b!592875 ((_ is Star!1489) (regOne!3491 (regex!1155 (h!11271 rules!3103))))) b!593631))

(assert (= (and b!592875 ((_ is Union!1489) (regOne!3491 (regex!1155 (h!11271 rules!3103))))) b!593632))

(declare-fun b!593635 () Bool)

(declare-fun e!359001 () Bool)

(declare-fun tp!185040 () Bool)

(assert (=> b!593635 (= e!359001 tp!185040)))

(declare-fun b!593633 () Bool)

(assert (=> b!593633 (= e!359001 tp_is_empty!3333)))

(declare-fun b!593636 () Bool)

(declare-fun tp!185039 () Bool)

(declare-fun tp!185038 () Bool)

(assert (=> b!593636 (= e!359001 (and tp!185039 tp!185038))))

(assert (=> b!592875 (= tp!184885 e!359001)))

(declare-fun b!593634 () Bool)

(declare-fun tp!185036 () Bool)

(declare-fun tp!185037 () Bool)

(assert (=> b!593634 (= e!359001 (and tp!185036 tp!185037))))

(assert (= (and b!592875 ((_ is ElementMatch!1489) (regTwo!3491 (regex!1155 (h!11271 rules!3103))))) b!593633))

(assert (= (and b!592875 ((_ is Concat!2668) (regTwo!3491 (regex!1155 (h!11271 rules!3103))))) b!593634))

(assert (= (and b!592875 ((_ is Star!1489) (regTwo!3491 (regex!1155 (h!11271 rules!3103))))) b!593635))

(assert (= (and b!592875 ((_ is Union!1489) (regTwo!3491 (regex!1155 (h!11271 rules!3103))))) b!593636))

(declare-fun b!593639 () Bool)

(declare-fun e!359002 () Bool)

(declare-fun tp!185045 () Bool)

(assert (=> b!593639 (= e!359002 tp!185045)))

(declare-fun b!593637 () Bool)

(assert (=> b!593637 (= e!359002 tp_is_empty!3333)))

(declare-fun b!593640 () Bool)

(declare-fun tp!185044 () Bool)

(declare-fun tp!185043 () Bool)

(assert (=> b!593640 (= e!359002 (and tp!185044 tp!185043))))

(assert (=> b!592870 (= tp!184882 e!359002)))

(declare-fun b!593638 () Bool)

(declare-fun tp!185041 () Bool)

(declare-fun tp!185042 () Bool)

(assert (=> b!593638 (= e!359002 (and tp!185041 tp!185042))))

(assert (= (and b!592870 ((_ is ElementMatch!1489) (reg!1818 (regex!1155 (rule!1923 token!491))))) b!593637))

(assert (= (and b!592870 ((_ is Concat!2668) (reg!1818 (regex!1155 (rule!1923 token!491))))) b!593638))

(assert (= (and b!592870 ((_ is Star!1489) (reg!1818 (regex!1155 (rule!1923 token!491))))) b!593639))

(assert (= (and b!592870 ((_ is Union!1489) (reg!1818 (regex!1155 (rule!1923 token!491))))) b!593640))

(declare-fun b!593641 () Bool)

(declare-fun e!359003 () Bool)

(declare-fun tp!185046 () Bool)

(assert (=> b!593641 (= e!359003 (and tp_is_empty!3333 tp!185046))))

(assert (=> b!592882 (= tp!184892 e!359003)))

(assert (= (and b!592882 ((_ is Cons!5869) (t!79102 (t!79102 input!2705)))) b!593641))

(declare-fun tp!185047 () Bool)

(declare-fun e!359004 () Bool)

(declare-fun tp!185048 () Bool)

(declare-fun b!593642 () Bool)

(assert (=> b!593642 (= e!359004 (and (inv!7435 (left!4758 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))))) tp!185047 (inv!7435 (right!5088 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))))) tp!185048))))

(declare-fun b!593644 () Bool)

(declare-fun e!359005 () Bool)

(declare-fun tp!185049 () Bool)

(assert (=> b!593644 (= e!359005 tp!185049)))

(declare-fun b!593643 () Bool)

(assert (=> b!593643 (= e!359004 (and (inv!7442 (xs!4509 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))))) e!359005))))

(assert (=> b!592557 (= tp!184823 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491)))) e!359004))))

(assert (= (and b!592557 ((_ is Node!1872) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))))) b!593642))

(assert (= b!593643 b!593644))

(assert (= (and b!592557 ((_ is Leaf!2957) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 token!491))) (value!37784 token!491))))) b!593643))

(declare-fun m!855561 () Bool)

(assert (=> b!593642 m!855561))

(declare-fun m!855563 () Bool)

(assert (=> b!593642 m!855563))

(declare-fun m!855565 () Bool)

(assert (=> b!593643 m!855565))

(assert (=> b!592557 m!854155))

(declare-fun b!593647 () Bool)

(declare-fun e!359006 () Bool)

(declare-fun tp!185054 () Bool)

(assert (=> b!593647 (= e!359006 tp!185054)))

(declare-fun b!593645 () Bool)

(assert (=> b!593645 (= e!359006 tp_is_empty!3333)))

(declare-fun b!593648 () Bool)

(declare-fun tp!185053 () Bool)

(declare-fun tp!185052 () Bool)

(assert (=> b!593648 (= e!359006 (and tp!185053 tp!185052))))

(assert (=> b!592871 (= tp!184881 e!359006)))

(declare-fun b!593646 () Bool)

(declare-fun tp!185050 () Bool)

(declare-fun tp!185051 () Bool)

(assert (=> b!593646 (= e!359006 (and tp!185050 tp!185051))))

(assert (= (and b!592871 ((_ is ElementMatch!1489) (regOne!3491 (regex!1155 (rule!1923 token!491))))) b!593645))

(assert (= (and b!592871 ((_ is Concat!2668) (regOne!3491 (regex!1155 (rule!1923 token!491))))) b!593646))

(assert (= (and b!592871 ((_ is Star!1489) (regOne!3491 (regex!1155 (rule!1923 token!491))))) b!593647))

(assert (= (and b!592871 ((_ is Union!1489) (regOne!3491 (regex!1155 (rule!1923 token!491))))) b!593648))

(declare-fun b!593651 () Bool)

(declare-fun e!359007 () Bool)

(declare-fun tp!185059 () Bool)

(assert (=> b!593651 (= e!359007 tp!185059)))

(declare-fun b!593649 () Bool)

(assert (=> b!593649 (= e!359007 tp_is_empty!3333)))

(declare-fun b!593652 () Bool)

(declare-fun tp!185058 () Bool)

(declare-fun tp!185057 () Bool)

(assert (=> b!593652 (= e!359007 (and tp!185058 tp!185057))))

(assert (=> b!592871 (= tp!184880 e!359007)))

(declare-fun b!593650 () Bool)

(declare-fun tp!185055 () Bool)

(declare-fun tp!185056 () Bool)

(assert (=> b!593650 (= e!359007 (and tp!185055 tp!185056))))

(assert (= (and b!592871 ((_ is ElementMatch!1489) (regTwo!3491 (regex!1155 (rule!1923 token!491))))) b!593649))

(assert (= (and b!592871 ((_ is Concat!2668) (regTwo!3491 (regex!1155 (rule!1923 token!491))))) b!593650))

(assert (= (and b!592871 ((_ is Star!1489) (regTwo!3491 (regex!1155 (rule!1923 token!491))))) b!593651))

(assert (= (and b!592871 ((_ is Union!1489) (regTwo!3491 (regex!1155 (rule!1923 token!491))))) b!593652))

(declare-fun b!593653 () Bool)

(declare-fun tp!185061 () Bool)

(declare-fun tp!185060 () Bool)

(declare-fun e!359008 () Bool)

(assert (=> b!593653 (= e!359008 (and (inv!7435 (left!4758 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))))) tp!185060 (inv!7435 (right!5088 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))))) tp!185061))))

(declare-fun b!593655 () Bool)

(declare-fun e!359009 () Bool)

(declare-fun tp!185062 () Bool)

(assert (=> b!593655 (= e!359009 tp!185062)))

(declare-fun b!593654 () Bool)

(assert (=> b!593654 (= e!359008 (and (inv!7442 (xs!4509 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))))) e!359009))))

(assert (=> b!592835 (= tp!184866 (and (inv!7435 (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233)))))) e!359008))))

(assert (= (and b!592835 ((_ is Node!1872) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))))) b!593653))

(assert (= b!593654 b!593655))

(assert (= (and b!592835 ((_ is Leaf!2957) (c!110456 (dynLambda!3414 (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))) (value!37784 (_1!3664 (v!16390 lt!251233))))))) b!593654))

(declare-fun m!855567 () Bool)

(assert (=> b!593653 m!855567))

(declare-fun m!855569 () Bool)

(assert (=> b!593653 m!855569))

(declare-fun m!855571 () Bool)

(assert (=> b!593654 m!855571))

(assert (=> b!592835 m!854527))

(declare-fun b_lambda!23387 () Bool)

(assert (= b_lambda!23359 (or (and b!592540 b_free!16679 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) (and b!592528 b_free!16683 (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) (and b!592893 b_free!16691 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) (and b!593627 b_free!16699 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toChars!1901 (transformation!1155 (rule!1923 (Token!2047 lt!251224 (rule!1923 (_1!3664 (v!16390 lt!251233))) lt!251223 lt!251228)))))) b_lambda!23387)))

(declare-fun b_lambda!23389 () Bool)

(assert (= b_lambda!23355 (or (and b!592540 b_free!16677 (= (toValue!2042 (transformation!1155 (h!11271 rules!3103))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) (and b!592528 b_free!16681 (= (toValue!2042 (transformation!1155 (rule!1923 token!491))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) (and b!592893 b_free!16689 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) (and b!593627 b_free!16697 (= (toValue!2042 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toValue!2042 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) b_lambda!23389)))

(declare-fun b_lambda!23391 () Bool)

(assert (= b_lambda!23357 (or (and b!592540 b_free!16679 (= (toChars!1901 (transformation!1155 (h!11271 rules!3103))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) (and b!592528 b_free!16683 (= (toChars!1901 (transformation!1155 (rule!1923 token!491))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) (and b!592893 b_free!16691 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 rules!3103)))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) (and b!593627 b_free!16699 (= (toChars!1901 (transformation!1155 (h!11271 (t!79103 (t!79103 rules!3103))))) (toChars!1901 (transformation!1155 (rule!1923 (_1!3664 (v!16390 lt!251233))))))) b_lambda!23391)))

(check-sat (not b!593650) (not b_lambda!23381) (not b!593646) (not b!593591) (not d!208941) (not b!593420) (not b!593401) (not b!593018) (not b!593402) (not d!208795) (not d!208791) (not b!593608) b_and!58509 (not b!593584) b_and!58521 (not b_next!16693) (not b!593518) (not d!208801) (not b!593634) (not b!593653) (not d!208833) (not b!593362) (not b!593651) (not b!593456) (not d!208773) (not b!593315) (not b!593019) (not b!593344) (not b!593592) (not b!593445) (not d!208859) (not d!208911) (not d!208847) (not b!593572) (not b_lambda!23363) (not b!593573) (not d!208921) (not b!593449) (not d!208923) (not b!593327) (not b!593647) (not d!208783) (not d!208915) (not b_next!16699) (not b!593607) (not b!593581) (not b_lambda!23387) (not d!208919) (not b!593024) (not b!593349) (not b!593465) (not d!208829) (not bm!40372) (not b!593524) (not b!592835) (not b!593564) (not b!593320) (not bm!40360) b_and!58527 (not d!208831) (not b_next!16695) (not b!593414) (not b!593341) (not b!593468) (not b!593447) (not b!593321) (not b!593652) (not d!208893) (not b_next!16715) (not b!593360) (not d!208797) (not b_lambda!23391) (not b!593602) (not b!593342) (not d!208779) (not b!593377) (not d!208853) (not b!592557) (not b_next!16707) (not b!593522) (not b!593311) (not b!593604) (not b!593337) (not d!208761) (not b!593599) (not b!593442) (not b!593571) (not b!593631) (not b!593480) tp_is_empty!3333 (not b!593643) (not d!208899) (not b!593632) (not b!593425) (not b!593594) (not b!593458) (not d!208821) (not b!593418) (not b!593328) (not b_lambda!23389) (not b!593451) (not d!208935) (not b!593363) (not b!593336) (not b!593373) (not b!593515) (not b!593318) (not b!593343) b_and!58525 (not b!593329) (not b!593459) (not b!593427) b_and!58529 (not d!208763) (not bm!40369) (not b!593641) (not d!208775) (not bm!40359) (not d!208747) (not d!208741) (not b!592850) (not b!593399) (not b!593638) (not b_next!16697) b_and!58511 (not b!593636) (not b!593595) (not b!593453) (not b!593338) (not b!593331) (not b!593622) (not b!593333) (not d!208739) (not tb!51857) (not d!208845) (not b!593598) (not b!593352) (not b!593348) (not b!593324) (not b!593606) (not b!593578) (not d!208789) (not b_lambda!23361) (not b!593654) (not b!593570) (not b!593521) (not b!593317) (not b!593310) (not d!208867) (not b!593644) (not b!593421) (not b!593455) (not b!593439) (not d!208835) (not b!593334) (not b!593640) (not b_lambda!23385) (not d!208943) (not b!593367) (not b!593626) (not b!593390) (not b!593603) (not b!593406) (not b!593332) (not b_next!16705) (not b!593375) (not b!593639) (not b!593461) (not b!593380) (not b!593433) (not d!208815) (not b!593339) (not b!593025) (not d!208771) (not b!593532) (not tb!51863) (not b!593354) (not b!593630) (not bm!40376) (not d!208745) (not d!208755) (not bm!40371) (not d!208749) (not b!593438) (not d!208781) (not d!208567) (not b!593642) (not bm!40375) (not tb!51851) (not d!208753) (not b!593648) (not b!593528) (not d!208777) (not b_lambda!23383) (not b!593469) (not b!593624) (not b!593567) (not b!593322) (not d!208785) (not b!593346) (not b!593587) (not b!593382) (not b!593429) (not tb!51869) (not b!593423) (not d!208587) (not b!593481) (not b!593625) (not b!593596) (not b!593441) (not b!593314) (not b!593426) (not b!593506) (not b!593023) (not b!593326) (not b!593388) (not b!593612) (not d!208855) (not b!593353) (not b!593585) (not b!593392) (not b!593020) (not b!593366) (not b!593408) (not b!593371) (not b!593463) (not b!593655) (not b!593613) (not b!593635) (not b!593431) (not d!208841) b_and!58513 (not b!593022) (not b!593316) (not b!593628) (not d!208873) b_and!58523 (not d!208857) (not b!593610) (not b!593527) (not d!208799) (not b!593586) (not b!593530) (not b!593600) (not d!208929) (not b!593325) (not b_lambda!23379) (not b!593611) (not b!593623) (not b!593405) (not b!593590) (not b!593379) (not d!208861) (not bm!40368) (not b!593416) (not b!593467) (not b!593526) (not b!593017) (not b_next!16713))
(check-sat (not b_next!16699) (not b_next!16715) (not b_next!16707) b_and!58525 b_and!58529 (not b_next!16705) b_and!58513 b_and!58523 (not b_next!16713) b_and!58509 b_and!58521 (not b_next!16693) b_and!58527 (not b_next!16695) (not b_next!16697) b_and!58511)
