; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53100 () Bool)

(assert start!53100)

(declare-fun b!575601 () Bool)

(declare-fun b_free!16021 () Bool)

(declare-fun b_next!16037 () Bool)

(assert (=> b!575601 (= b_free!16021 (not b_next!16037))))

(declare-fun tp!180558 () Bool)

(declare-fun b_and!56323 () Bool)

(assert (=> b!575601 (= tp!180558 b_and!56323)))

(declare-fun b_free!16023 () Bool)

(declare-fun b_next!16039 () Bool)

(assert (=> b!575601 (= b_free!16023 (not b_next!16039))))

(declare-fun tp!180554 () Bool)

(declare-fun b_and!56325 () Bool)

(assert (=> b!575601 (= tp!180554 b_and!56325)))

(declare-fun b!575590 () Bool)

(declare-fun b_free!16025 () Bool)

(declare-fun b_next!16041 () Bool)

(assert (=> b!575590 (= b_free!16025 (not b_next!16041))))

(declare-fun tp!180561 () Bool)

(declare-fun b_and!56327 () Bool)

(assert (=> b!575590 (= tp!180561 b_and!56327)))

(declare-fun b_free!16027 () Bool)

(declare-fun b_next!16043 () Bool)

(assert (=> b!575590 (= b_free!16027 (not b_next!16043))))

(declare-fun tp!180557 () Bool)

(declare-fun b_and!56329 () Bool)

(assert (=> b!575590 (= tp!180557 b_and!56329)))

(declare-fun b!575567 () Bool)

(declare-fun e!347840 () Bool)

(declare-fun e!347854 () Bool)

(assert (=> b!575567 (= e!347840 (not e!347854))))

(declare-fun res!247352 () Bool)

(assert (=> b!575567 (=> res!247352 e!347854)))

(declare-datatypes ((C!3784 0))(
  ( (C!3785 (val!2118 Int)) )
))
(declare-datatypes ((List!5670 0))(
  ( (Nil!5660) (Cons!5660 (h!11061 C!3784) (t!77311 List!5670)) )
))
(declare-fun input!2705 () List!5670)

(declare-fun lt!243531 () List!5670)

(declare-fun isPrefix!731 (List!5670 List!5670) Bool)

(assert (=> b!575567 (= res!247352 (not (isPrefix!731 input!2705 lt!243531)))))

(declare-fun lt!243530 () List!5670)

(assert (=> b!575567 (isPrefix!731 lt!243530 lt!243531)))

(declare-datatypes ((Unit!10214 0))(
  ( (Unit!10215) )
))
(declare-fun lt!243510 () Unit!10214)

(declare-fun suffix!1342 () List!5670)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!578 (List!5670 List!5670) Unit!10214)

(assert (=> b!575567 (= lt!243510 (lemmaConcatTwoListThenFirstIsPrefix!578 lt!243530 suffix!1342))))

(declare-fun lt!243521 () List!5670)

(assert (=> b!575567 (isPrefix!731 input!2705 lt!243521)))

(declare-fun lt!243512 () Unit!10214)

(assert (=> b!575567 (= lt!243512 (lemmaConcatTwoListThenFirstIsPrefix!578 input!2705 suffix!1342))))

(declare-fun e!347848 () Bool)

(assert (=> b!575567 e!347848))

(declare-fun res!247350 () Bool)

(assert (=> b!575567 (=> (not res!247350) (not e!347848))))

(declare-datatypes ((Regex!1431 0))(
  ( (ElementMatch!1431 (c!107825 C!3784)) (Concat!2552 (regOne!3374 Regex!1431) (regTwo!3374 Regex!1431)) (EmptyExpr!1431) (Star!1431 (reg!1760 Regex!1431)) (EmptyLang!1431) (Union!1431 (regOne!3375 Regex!1431) (regTwo!3375 Regex!1431)) )
))
(declare-datatypes ((List!5671 0))(
  ( (Nil!5661) (Cons!5661 (h!11062 (_ BitVec 16)) (t!77312 List!5671)) )
))
(declare-datatypes ((IArray!3629 0))(
  ( (IArray!3630 (innerList!1872 List!5670)) )
))
(declare-datatypes ((Conc!1814 0))(
  ( (Node!1814 (left!4623 Conc!1814) (right!4953 Conc!1814) (csize!3858 Int) (cheight!2025 Int)) (Leaf!2870 (xs!4451 IArray!3629) (csize!3859 Int)) (Empty!1814) )
))
(declare-datatypes ((BalanceConc!3636 0))(
  ( (BalanceConc!3637 (c!107826 Conc!1814)) )
))
(declare-datatypes ((TokenValue!1121 0))(
  ( (FloatLiteralValue!2242 (text!8292 List!5671)) (TokenValueExt!1120 (__x!4140 Int)) (Broken!5605 (value!36105 List!5671)) (Object!1130) (End!1121) (Def!1121) (Underscore!1121) (Match!1121) (Else!1121) (Error!1121) (Case!1121) (If!1121) (Extends!1121) (Abstract!1121) (Class!1121) (Val!1121) (DelimiterValue!2242 (del!1181 List!5671)) (KeywordValue!1127 (value!36106 List!5671)) (CommentValue!2242 (value!36107 List!5671)) (WhitespaceValue!2242 (value!36108 List!5671)) (IndentationValue!1121 (value!36109 List!5671)) (String!7348) (Int32!1121) (Broken!5606 (value!36110 List!5671)) (Boolean!1122) (Unit!10216) (OperatorValue!1124 (op!1181 List!5671)) (IdentifierValue!2242 (value!36111 List!5671)) (IdentifierValue!2243 (value!36112 List!5671)) (WhitespaceValue!2243 (value!36113 List!5671)) (True!2242) (False!2242) (Broken!5607 (value!36114 List!5671)) (Broken!5608 (value!36115 List!5671)) (True!2243) (RightBrace!1121) (RightBracket!1121) (Colon!1121) (Null!1121) (Comma!1121) (LeftBracket!1121) (False!2243) (LeftBrace!1121) (ImaginaryLiteralValue!1121 (text!8293 List!5671)) (StringLiteralValue!3363 (value!36116 List!5671)) (EOFValue!1121 (value!36117 List!5671)) (IdentValue!1121 (value!36118 List!5671)) (DelimiterValue!2243 (value!36119 List!5671)) (DedentValue!1121 (value!36120 List!5671)) (NewLineValue!1121 (value!36121 List!5671)) (IntegerValue!3363 (value!36122 (_ BitVec 32)) (text!8294 List!5671)) (IntegerValue!3364 (value!36123 Int) (text!8295 List!5671)) (Times!1121) (Or!1121) (Equal!1121) (Minus!1121) (Broken!5609 (value!36124 List!5671)) (And!1121) (Div!1121) (LessEqual!1121) (Mod!1121) (Concat!2553) (Not!1121) (Plus!1121) (SpaceValue!1121 (value!36125 List!5671)) (IntegerValue!3365 (value!36126 Int) (text!8296 List!5671)) (StringLiteralValue!3364 (text!8297 List!5671)) (FloatLiteralValue!2243 (text!8298 List!5671)) (BytesLiteralValue!1121 (value!36127 List!5671)) (CommentValue!2243 (value!36128 List!5671)) (StringLiteralValue!3365 (value!36129 List!5671)) (ErrorTokenValue!1121 (msg!1182 List!5671)) )
))
(declare-datatypes ((String!7349 0))(
  ( (String!7350 (value!36130 String)) )
))
(declare-datatypes ((TokenValueInjection!2010 0))(
  ( (TokenValueInjection!2011 (toValue!1956 Int) (toChars!1815 Int)) )
))
(declare-datatypes ((Rule!1994 0))(
  ( (Rule!1995 (regex!1097 Regex!1431) (tag!1359 String!7349) (isSeparator!1097 Bool) (transformation!1097 TokenValueInjection!2010)) )
))
(declare-datatypes ((Token!1930 0))(
  ( (Token!1931 (value!36131 TokenValue!1121) (rule!1845 Rule!1994) (size!4506 Int) (originalCharacters!1136 List!5670)) )
))
(declare-datatypes ((tuple2!6644 0))(
  ( (tuple2!6645 (_1!3586 Token!1930) (_2!3586 List!5670)) )
))
(declare-datatypes ((Option!1448 0))(
  ( (None!1447) (Some!1447 (v!16306 tuple2!6644)) )
))
(declare-fun lt!243508 () Option!1448)

(declare-fun lt!243522 () TokenValue!1121)

(assert (=> b!575567 (= res!247350 (= (value!36131 (_1!3586 (v!16306 lt!243508))) lt!243522))))

(declare-fun lt!243504 () BalanceConc!3636)

(declare-fun apply!1362 (TokenValueInjection!2010 BalanceConc!3636) TokenValue!1121)

(assert (=> b!575567 (= lt!243522 (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) lt!243504))))

(declare-fun lt!243529 () List!5670)

(declare-fun seqFromList!1285 (List!5670) BalanceConc!3636)

(assert (=> b!575567 (= lt!243504 (seqFromList!1285 lt!243529))))

(declare-fun lt!243532 () Unit!10214)

(declare-fun token!491 () Token!1930)

(declare-fun lemmaInv!233 (TokenValueInjection!2010) Unit!10214)

(assert (=> b!575567 (= lt!243532 (lemmaInv!233 (transformation!1097 (rule!1845 token!491))))))

(declare-fun lt!243507 () Unit!10214)

(assert (=> b!575567 (= lt!243507 (lemmaInv!233 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))))))

(declare-datatypes ((LexerInterface!983 0))(
  ( (LexerInterfaceExt!980 (__x!4141 Int)) (Lexer!981) )
))
(declare-fun thiss!22590 () LexerInterface!983)

(declare-fun ruleValid!307 (LexerInterface!983 Rule!1994) Bool)

(assert (=> b!575567 (ruleValid!307 thiss!22590 (rule!1845 token!491))))

(declare-fun lt!243498 () Unit!10214)

(declare-datatypes ((List!5672 0))(
  ( (Nil!5662) (Cons!5662 (h!11063 Rule!1994) (t!77313 List!5672)) )
))
(declare-fun rules!3103 () List!5672)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!164 (LexerInterface!983 Rule!1994 List!5672) Unit!10214)

(assert (=> b!575567 (= lt!243498 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!164 thiss!22590 (rule!1845 token!491) rules!3103))))

(assert (=> b!575567 (ruleValid!307 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))))))

(declare-fun lt!243525 () Unit!10214)

(assert (=> b!575567 (= lt!243525 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!164 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))) rules!3103))))

(assert (=> b!575567 (isPrefix!731 input!2705 input!2705)))

(declare-fun lt!243524 () Unit!10214)

(declare-fun lemmaIsPrefixRefl!469 (List!5670 List!5670) Unit!10214)

(assert (=> b!575567 (= lt!243524 (lemmaIsPrefixRefl!469 input!2705 input!2705))))

(declare-fun lt!243518 () List!5670)

(assert (=> b!575567 (= (_2!3586 (v!16306 lt!243508)) lt!243518)))

(declare-fun lt!243505 () Unit!10214)

(declare-fun lemmaSamePrefixThenSameSuffix!454 (List!5670 List!5670 List!5670 List!5670 List!5670) Unit!10214)

(assert (=> b!575567 (= lt!243505 (lemmaSamePrefixThenSameSuffix!454 lt!243529 (_2!3586 (v!16306 lt!243508)) lt!243529 lt!243518 input!2705))))

(declare-fun getSuffix!250 (List!5670 List!5670) List!5670)

(assert (=> b!575567 (= lt!243518 (getSuffix!250 input!2705 lt!243529))))

(declare-fun lt!243528 () List!5670)

(assert (=> b!575567 (isPrefix!731 lt!243529 lt!243528)))

(declare-fun ++!1585 (List!5670 List!5670) List!5670)

(assert (=> b!575567 (= lt!243528 (++!1585 lt!243529 (_2!3586 (v!16306 lt!243508))))))

(declare-fun lt!243503 () Unit!10214)

(assert (=> b!575567 (= lt!243503 (lemmaConcatTwoListThenFirstIsPrefix!578 lt!243529 (_2!3586 (v!16306 lt!243508))))))

(declare-fun lt!243517 () Unit!10214)

(declare-fun lemmaCharactersSize!164 (Token!1930) Unit!10214)

(assert (=> b!575567 (= lt!243517 (lemmaCharactersSize!164 token!491))))

(declare-fun lt!243520 () Unit!10214)

(assert (=> b!575567 (= lt!243520 (lemmaCharactersSize!164 (_1!3586 (v!16306 lt!243508))))))

(declare-fun lt!243501 () Unit!10214)

(declare-fun e!347839 () Unit!10214)

(assert (=> b!575567 (= lt!243501 e!347839)))

(declare-fun c!107823 () Bool)

(declare-fun lt!243514 () Int)

(declare-fun lt!243499 () Int)

(assert (=> b!575567 (= c!107823 (> lt!243514 lt!243499))))

(declare-fun size!4507 (List!5670) Int)

(assert (=> b!575567 (= lt!243499 (size!4507 lt!243530))))

(assert (=> b!575567 (= lt!243514 (size!4507 lt!243529))))

(declare-fun list!2351 (BalanceConc!3636) List!5670)

(declare-fun charsOf!726 (Token!1930) BalanceConc!3636)

(assert (=> b!575567 (= lt!243529 (list!2351 (charsOf!726 (_1!3586 (v!16306 lt!243508)))))))

(declare-fun lt!243534 () tuple2!6644)

(assert (=> b!575567 (= lt!243508 (Some!1447 lt!243534))))

(assert (=> b!575567 (= lt!243534 (tuple2!6645 (_1!3586 (v!16306 lt!243508)) (_2!3586 (v!16306 lt!243508))))))

(declare-fun lt!243509 () Unit!10214)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!174 (List!5670 List!5670 List!5670 List!5670) Unit!10214)

(assert (=> b!575567 (= lt!243509 (lemmaConcatSameAndSameSizesThenSameLists!174 lt!243530 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!575568 () Bool)

(declare-fun res!247349 () Bool)

(declare-fun e!347838 () Bool)

(assert (=> b!575568 (=> res!247349 e!347838)))

(declare-fun isEmpty!4087 (List!5670) Bool)

(assert (=> b!575568 (= res!247349 (not (isEmpty!4087 (_2!3586 (v!16306 lt!243508)))))))

(declare-fun res!247355 () Bool)

(declare-fun e!347858 () Bool)

(assert (=> start!53100 (=> (not res!247355) (not e!347858))))

(get-info :version)

(assert (=> start!53100 (= res!247355 ((_ is Lexer!981) thiss!22590))))

(assert (=> start!53100 e!347858))

(declare-fun e!347860 () Bool)

(assert (=> start!53100 e!347860))

(declare-fun e!347861 () Bool)

(assert (=> start!53100 e!347861))

(declare-fun e!347851 () Bool)

(declare-fun inv!7121 (Token!1930) Bool)

(assert (=> start!53100 (and (inv!7121 token!491) e!347851)))

(assert (=> start!53100 true))

(declare-fun e!347846 () Bool)

(assert (=> start!53100 e!347846))

(declare-fun b!575569 () Bool)

(declare-fun tp_is_empty!3217 () Bool)

(declare-fun tp!180556 () Bool)

(assert (=> b!575569 (= e!347860 (and tp_is_empty!3217 tp!180556))))

(declare-fun b!575570 () Bool)

(declare-fun res!247363 () Bool)

(declare-fun e!347835 () Bool)

(assert (=> b!575570 (=> (not res!247363) (not e!347835))))

(assert (=> b!575570 (= res!247363 (= (size!4506 token!491) (size!4507 (originalCharacters!1136 token!491))))))

(declare-fun b!575571 () Bool)

(declare-fun e!347856 () Unit!10214)

(declare-fun Unit!10217 () Unit!10214)

(assert (=> b!575571 (= e!347856 Unit!10217)))

(declare-fun lt!243500 () Unit!10214)

(declare-fun lemmaSemiInverse!200 (TokenValueInjection!2010 BalanceConc!3636) Unit!10214)

(assert (=> b!575571 (= lt!243500 (lemmaSemiInverse!200 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) lt!243504))))

(declare-fun lt!243526 () Unit!10214)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!56 (LexerInterface!983 List!5672 Rule!1994 List!5670 List!5670 List!5670 Rule!1994) Unit!10214)

(assert (=> b!575571 (= lt!243526 (lemmaMaxPrefixOutputsMaxPrefix!56 thiss!22590 rules!3103 (rule!1845 (_1!3586 (v!16306 lt!243508))) lt!243529 input!2705 input!2705 (rule!1845 token!491)))))

(declare-fun res!247362 () Bool)

(declare-fun matchR!578 (Regex!1431 List!5670) Bool)

(assert (=> b!575571 (= res!247362 (not (matchR!578 (regex!1097 (rule!1845 token!491)) input!2705)))))

(declare-fun e!347844 () Bool)

(assert (=> b!575571 (=> (not res!247362) (not e!347844))))

(assert (=> b!575571 e!347844))

(declare-fun b!575572 () Bool)

(declare-fun res!247358 () Bool)

(assert (=> b!575572 (=> res!247358 e!347838)))

(assert (=> b!575572 (= res!247358 (or (not (= lt!243529 lt!243530)) (not (= (originalCharacters!1136 (_1!3586 (v!16306 lt!243508))) (originalCharacters!1136 token!491)))))))

(declare-fun b!575573 () Bool)

(assert (=> b!575573 (= e!347854 e!347838)))

(declare-fun res!247353 () Bool)

(assert (=> b!575573 (=> res!247353 e!347838)))

(assert (=> b!575573 (= res!247353 (or (not (= lt!243514 lt!243499)) (not (= lt!243528 input!2705)) (not (= lt!243528 lt!243530))))))

(declare-fun lt!243511 () Unit!10214)

(declare-fun lt!243513 () BalanceConc!3636)

(assert (=> b!575573 (= lt!243511 (lemmaSemiInverse!200 (transformation!1097 (rule!1845 token!491)) lt!243513))))

(declare-fun lt!243502 () Unit!10214)

(assert (=> b!575573 (= lt!243502 (lemmaSemiInverse!200 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) lt!243504))))

(declare-fun lt!243506 () Unit!10214)

(assert (=> b!575573 (= lt!243506 e!347856)))

(declare-fun c!107824 () Bool)

(assert (=> b!575573 (= c!107824 (< lt!243514 lt!243499))))

(declare-fun e!347837 () Bool)

(assert (=> b!575573 e!347837))

(declare-fun res!247365 () Bool)

(assert (=> b!575573 (=> (not res!247365) (not e!347837))))

(declare-fun lt!243497 () TokenValue!1121)

(declare-fun maxPrefixOneRule!382 (LexerInterface!983 Rule!1994 List!5670) Option!1448)

(assert (=> b!575573 (= res!247365 (= (maxPrefixOneRule!382 thiss!22590 (rule!1845 token!491) lt!243521) (Some!1447 (tuple2!6645 (Token!1931 lt!243497 (rule!1845 token!491) lt!243499 lt!243530) suffix!1342))))))

(declare-fun lt!243515 () Unit!10214)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!132 (LexerInterface!983 List!5672 List!5670 List!5670 List!5670 Rule!1994) Unit!10214)

(assert (=> b!575573 (= lt!243515 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!132 thiss!22590 rules!3103 lt!243530 lt!243521 suffix!1342 (rule!1845 token!491)))))

(assert (=> b!575573 (= (maxPrefixOneRule!382 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))) input!2705) (Some!1447 (tuple2!6645 (Token!1931 lt!243522 (rule!1845 (_1!3586 (v!16306 lt!243508))) lt!243514 lt!243529) (_2!3586 (v!16306 lt!243508)))))))

(declare-fun lt!243516 () Unit!10214)

(assert (=> b!575573 (= lt!243516 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!132 thiss!22590 rules!3103 lt!243529 input!2705 (_2!3586 (v!16306 lt!243508)) (rule!1845 (_1!3586 (v!16306 lt!243508)))))))

(assert (=> b!575573 e!347835))

(declare-fun res!247367 () Bool)

(assert (=> b!575573 (=> (not res!247367) (not e!347835))))

(assert (=> b!575573 (= res!247367 (= (value!36131 token!491) lt!243497))))

(assert (=> b!575573 (= lt!243497 (apply!1362 (transformation!1097 (rule!1845 token!491)) lt!243513))))

(assert (=> b!575573 (= lt!243513 (seqFromList!1285 lt!243530))))

(declare-fun lt!243523 () List!5670)

(assert (=> b!575573 (= suffix!1342 lt!243523)))

(declare-fun lt!243527 () Unit!10214)

(assert (=> b!575573 (= lt!243527 (lemmaSamePrefixThenSameSuffix!454 lt!243530 suffix!1342 lt!243530 lt!243523 lt!243521))))

(assert (=> b!575573 (= lt!243523 (getSuffix!250 lt!243521 lt!243530))))

(declare-fun b!575574 () Bool)

(declare-fun res!247364 () Bool)

(assert (=> b!575574 (=> (not res!247364) (not e!347858))))

(declare-fun rulesInvariant!946 (LexerInterface!983 List!5672) Bool)

(assert (=> b!575574 (= res!247364 (rulesInvariant!946 thiss!22590 rules!3103))))

(declare-fun b!575575 () Bool)

(declare-fun e!347859 () Bool)

(declare-fun e!347850 () Bool)

(declare-fun tp!180560 () Bool)

(declare-fun inv!7118 (String!7349) Bool)

(declare-fun inv!7122 (TokenValueInjection!2010) Bool)

(assert (=> b!575575 (= e!347850 (and tp!180560 (inv!7118 (tag!1359 (rule!1845 token!491))) (inv!7122 (transformation!1097 (rule!1845 token!491))) e!347859))))

(declare-fun b!575576 () Bool)

(declare-fun tp!180553 () Bool)

(assert (=> b!575576 (= e!347846 (and tp_is_empty!3217 tp!180553))))

(declare-fun b!575577 () Bool)

(assert (=> b!575577 (= e!347848 (and (= (size!4506 (_1!3586 (v!16306 lt!243508))) lt!243514) (= (originalCharacters!1136 (_1!3586 (v!16306 lt!243508))) lt!243529) (= lt!243534 (tuple2!6645 (Token!1931 lt!243522 (rule!1845 (_1!3586 (v!16306 lt!243508))) lt!243514 lt!243529) lt!243518))))))

(declare-fun b!575578 () Bool)

(declare-fun res!247351 () Bool)

(declare-fun e!347853 () Bool)

(assert (=> b!575578 (=> (not res!247351) (not e!347853))))

(declare-fun get!2160 (Option!1448) tuple2!6644)

(assert (=> b!575578 (= res!247351 (= (_1!3586 (get!2160 lt!243508)) (_1!3586 (v!16306 lt!243508))))))

(declare-fun b!575579 () Bool)

(declare-fun e!347842 () Bool)

(assert (=> b!575579 (= e!347858 e!347842)))

(declare-fun res!247347 () Bool)

(assert (=> b!575579 (=> (not res!247347) (not e!347842))))

(assert (=> b!575579 (= res!247347 (= lt!243530 input!2705))))

(assert (=> b!575579 (= lt!243530 (list!2351 (charsOf!726 token!491)))))

(declare-fun b!575580 () Bool)

(assert (=> b!575580 (= e!347853 (= lt!243518 (_2!3586 (v!16306 lt!243508))))))

(declare-fun b!575581 () Bool)

(declare-fun e!347836 () Bool)

(declare-fun e!347849 () Bool)

(assert (=> b!575581 (= e!347836 e!347849)))

(declare-fun res!247368 () Bool)

(assert (=> b!575581 (=> (not res!247368) (not e!347849))))

(assert (=> b!575581 (= res!247368 ((_ is Some!1447) lt!243508))))

(declare-fun maxPrefix!681 (LexerInterface!983 List!5672 List!5670) Option!1448)

(assert (=> b!575581 (= lt!243508 (maxPrefix!681 thiss!22590 rules!3103 input!2705))))

(declare-fun b!575582 () Bool)

(declare-fun e!347857 () Bool)

(assert (=> b!575582 (= e!347857 e!347853)))

(declare-fun res!247348 () Bool)

(assert (=> b!575582 (=> (not res!247348) (not e!347853))))

(declare-fun isDefined!1259 (Option!1448) Bool)

(assert (=> b!575582 (= res!247348 (isDefined!1259 lt!243508))))

(declare-fun tp!180559 () Bool)

(declare-fun b!575583 () Bool)

(declare-fun inv!21 (TokenValue!1121) Bool)

(assert (=> b!575583 (= e!347851 (and (inv!21 (value!36131 token!491)) e!347850 tp!180559))))

(declare-fun b!575584 () Bool)

(assert (=> b!575584 (= e!347837 e!347857)))

(declare-fun res!247356 () Bool)

(assert (=> b!575584 (=> res!247356 e!347857)))

(assert (=> b!575584 (= res!247356 (>= lt!243514 lt!243499))))

(declare-fun b!575585 () Bool)

(declare-fun e!347855 () Bool)

(assert (=> b!575585 (= e!347855 e!347836)))

(declare-fun res!247366 () Bool)

(assert (=> b!575585 (=> (not res!247366) (not e!347836))))

(declare-fun lt!243533 () tuple2!6644)

(assert (=> b!575585 (= res!247366 (and (= (_1!3586 lt!243533) token!491) (= (_2!3586 lt!243533) suffix!1342)))))

(declare-fun lt!243519 () Option!1448)

(assert (=> b!575585 (= lt!243533 (get!2160 lt!243519))))

(declare-fun b!575586 () Bool)

(declare-fun res!247357 () Bool)

(assert (=> b!575586 (=> res!247357 e!347838)))

(declare-fun contains!1327 (List!5672 Rule!1994) Bool)

(assert (=> b!575586 (= res!247357 (not (contains!1327 rules!3103 (rule!1845 (_1!3586 (v!16306 lt!243508))))))))

(declare-fun b!575587 () Bool)

(declare-fun e!347841 () Bool)

(declare-fun tp!180562 () Bool)

(assert (=> b!575587 (= e!347861 (and e!347841 tp!180562))))

(declare-fun b!575588 () Bool)

(assert (=> b!575588 (= e!347835 (and (= (size!4506 token!491) lt!243499) (= (originalCharacters!1136 token!491) lt!243530) (= (tuple2!6645 token!491 suffix!1342) (tuple2!6645 (Token!1931 lt!243497 (rule!1845 token!491) lt!243499 lt!243530) lt!243523))))))

(declare-fun b!575589 () Bool)

(assert (=> b!575589 (= e!347838 (contains!1327 rules!3103 (rule!1845 token!491)))))

(declare-fun e!347847 () Bool)

(assert (=> b!575590 (= e!347847 (and tp!180561 tp!180557))))

(declare-fun b!575591 () Bool)

(assert (=> b!575591 (= e!347849 e!347840)))

(declare-fun res!247361 () Bool)

(assert (=> b!575591 (=> (not res!247361) (not e!347840))))

(assert (=> b!575591 (= res!247361 (= lt!243531 lt!243521))))

(assert (=> b!575591 (= lt!243531 (++!1585 lt!243530 suffix!1342))))

(declare-fun b!575592 () Bool)

(declare-fun Unit!10218 () Unit!10214)

(assert (=> b!575592 (= e!347839 Unit!10218)))

(assert (=> b!575592 false))

(declare-fun b!575593 () Bool)

(assert (=> b!575593 (= e!347842 e!347855)))

(declare-fun res!247360 () Bool)

(assert (=> b!575593 (=> (not res!247360) (not e!347855))))

(assert (=> b!575593 (= res!247360 (isDefined!1259 lt!243519))))

(assert (=> b!575593 (= lt!243519 (maxPrefix!681 thiss!22590 rules!3103 lt!243521))))

(assert (=> b!575593 (= lt!243521 (++!1585 input!2705 suffix!1342))))

(declare-fun b!575594 () Bool)

(declare-fun res!247354 () Bool)

(assert (=> b!575594 (=> (not res!247354) (not e!347848))))

(assert (=> b!575594 (= res!247354 (= (size!4506 (_1!3586 (v!16306 lt!243508))) (size!4507 (originalCharacters!1136 (_1!3586 (v!16306 lt!243508))))))))

(declare-fun b!575595 () Bool)

(declare-fun Unit!10219 () Unit!10214)

(assert (=> b!575595 (= e!347856 Unit!10219)))

(declare-fun b!575596 () Bool)

(assert (=> b!575596 (= e!347844 false)))

(declare-fun b!575597 () Bool)

(declare-fun res!247346 () Bool)

(assert (=> b!575597 (=> (not res!247346) (not e!347858))))

(declare-fun isEmpty!4088 (List!5672) Bool)

(assert (=> b!575597 (= res!247346 (not (isEmpty!4088 rules!3103)))))

(declare-fun b!575598 () Bool)

(declare-fun res!247359 () Bool)

(assert (=> b!575598 (=> (not res!247359) (not e!347858))))

(assert (=> b!575598 (= res!247359 (not (isEmpty!4087 input!2705)))))

(declare-fun b!575599 () Bool)

(declare-fun tp!180555 () Bool)

(assert (=> b!575599 (= e!347841 (and tp!180555 (inv!7118 (tag!1359 (h!11063 rules!3103))) (inv!7122 (transformation!1097 (h!11063 rules!3103))) e!347847))))

(declare-fun b!575600 () Bool)

(declare-fun Unit!10220 () Unit!10214)

(assert (=> b!575600 (= e!347839 Unit!10220)))

(assert (=> b!575601 (= e!347859 (and tp!180558 tp!180554))))

(assert (= (and start!53100 res!247355) b!575597))

(assert (= (and b!575597 res!247346) b!575574))

(assert (= (and b!575574 res!247364) b!575598))

(assert (= (and b!575598 res!247359) b!575579))

(assert (= (and b!575579 res!247347) b!575593))

(assert (= (and b!575593 res!247360) b!575585))

(assert (= (and b!575585 res!247366) b!575581))

(assert (= (and b!575581 res!247368) b!575591))

(assert (= (and b!575591 res!247361) b!575567))

(assert (= (and b!575567 c!107823) b!575592))

(assert (= (and b!575567 (not c!107823)) b!575600))

(assert (= (and b!575567 res!247350) b!575594))

(assert (= (and b!575594 res!247354) b!575577))

(assert (= (and b!575567 (not res!247352)) b!575573))

(assert (= (and b!575573 res!247367) b!575570))

(assert (= (and b!575570 res!247363) b!575588))

(assert (= (and b!575573 res!247365) b!575584))

(assert (= (and b!575584 (not res!247356)) b!575582))

(assert (= (and b!575582 res!247348) b!575578))

(assert (= (and b!575578 res!247351) b!575580))

(assert (= (and b!575573 c!107824) b!575571))

(assert (= (and b!575573 (not c!107824)) b!575595))

(assert (= (and b!575571 res!247362) b!575596))

(assert (= (and b!575573 (not res!247353)) b!575568))

(assert (= (and b!575568 (not res!247349)) b!575572))

(assert (= (and b!575572 (not res!247358)) b!575586))

(assert (= (and b!575586 (not res!247357)) b!575589))

(assert (= (and start!53100 ((_ is Cons!5660) suffix!1342)) b!575569))

(assert (= b!575599 b!575590))

(assert (= b!575587 b!575599))

(assert (= (and start!53100 ((_ is Cons!5662) rules!3103)) b!575587))

(assert (= b!575575 b!575601))

(assert (= b!575583 b!575575))

(assert (= start!53100 b!575583))

(assert (= (and start!53100 ((_ is Cons!5660) input!2705)) b!575576))

(declare-fun m!832683 () Bool)

(assert (=> b!575597 m!832683))

(declare-fun m!832685 () Bool)

(assert (=> b!575575 m!832685))

(declare-fun m!832687 () Bool)

(assert (=> b!575575 m!832687))

(declare-fun m!832689 () Bool)

(assert (=> b!575599 m!832689))

(declare-fun m!832691 () Bool)

(assert (=> b!575599 m!832691))

(declare-fun m!832693 () Bool)

(assert (=> b!575591 m!832693))

(declare-fun m!832695 () Bool)

(assert (=> b!575585 m!832695))

(declare-fun m!832697 () Bool)

(assert (=> b!575586 m!832697))

(declare-fun m!832699 () Bool)

(assert (=> b!575570 m!832699))

(declare-fun m!832701 () Bool)

(assert (=> b!575581 m!832701))

(declare-fun m!832703 () Bool)

(assert (=> b!575567 m!832703))

(declare-fun m!832705 () Bool)

(assert (=> b!575567 m!832705))

(declare-fun m!832707 () Bool)

(assert (=> b!575567 m!832707))

(declare-fun m!832709 () Bool)

(assert (=> b!575567 m!832709))

(declare-fun m!832711 () Bool)

(assert (=> b!575567 m!832711))

(declare-fun m!832713 () Bool)

(assert (=> b!575567 m!832713))

(declare-fun m!832715 () Bool)

(assert (=> b!575567 m!832715))

(declare-fun m!832717 () Bool)

(assert (=> b!575567 m!832717))

(declare-fun m!832719 () Bool)

(assert (=> b!575567 m!832719))

(declare-fun m!832721 () Bool)

(assert (=> b!575567 m!832721))

(declare-fun m!832723 () Bool)

(assert (=> b!575567 m!832723))

(declare-fun m!832725 () Bool)

(assert (=> b!575567 m!832725))

(declare-fun m!832727 () Bool)

(assert (=> b!575567 m!832727))

(declare-fun m!832729 () Bool)

(assert (=> b!575567 m!832729))

(declare-fun m!832731 () Bool)

(assert (=> b!575567 m!832731))

(declare-fun m!832733 () Bool)

(assert (=> b!575567 m!832733))

(declare-fun m!832735 () Bool)

(assert (=> b!575567 m!832735))

(declare-fun m!832737 () Bool)

(assert (=> b!575567 m!832737))

(declare-fun m!832739 () Bool)

(assert (=> b!575567 m!832739))

(declare-fun m!832741 () Bool)

(assert (=> b!575567 m!832741))

(declare-fun m!832743 () Bool)

(assert (=> b!575567 m!832743))

(declare-fun m!832745 () Bool)

(assert (=> b!575567 m!832745))

(declare-fun m!832747 () Bool)

(assert (=> b!575567 m!832747))

(assert (=> b!575567 m!832745))

(declare-fun m!832749 () Bool)

(assert (=> b!575567 m!832749))

(declare-fun m!832751 () Bool)

(assert (=> b!575567 m!832751))

(declare-fun m!832753 () Bool)

(assert (=> b!575567 m!832753))

(declare-fun m!832755 () Bool)

(assert (=> b!575567 m!832755))

(declare-fun m!832757 () Bool)

(assert (=> b!575579 m!832757))

(assert (=> b!575579 m!832757))

(declare-fun m!832759 () Bool)

(assert (=> b!575579 m!832759))

(declare-fun m!832761 () Bool)

(assert (=> start!53100 m!832761))

(declare-fun m!832763 () Bool)

(assert (=> b!575578 m!832763))

(declare-fun m!832765 () Bool)

(assert (=> b!575583 m!832765))

(declare-fun m!832767 () Bool)

(assert (=> b!575574 m!832767))

(declare-fun m!832769 () Bool)

(assert (=> b!575568 m!832769))

(declare-fun m!832771 () Bool)

(assert (=> b!575593 m!832771))

(declare-fun m!832773 () Bool)

(assert (=> b!575593 m!832773))

(declare-fun m!832775 () Bool)

(assert (=> b!575593 m!832775))

(declare-fun m!832777 () Bool)

(assert (=> b!575589 m!832777))

(declare-fun m!832779 () Bool)

(assert (=> b!575582 m!832779))

(declare-fun m!832781 () Bool)

(assert (=> b!575573 m!832781))

(declare-fun m!832783 () Bool)

(assert (=> b!575573 m!832783))

(declare-fun m!832785 () Bool)

(assert (=> b!575573 m!832785))

(declare-fun m!832787 () Bool)

(assert (=> b!575573 m!832787))

(declare-fun m!832789 () Bool)

(assert (=> b!575573 m!832789))

(declare-fun m!832791 () Bool)

(assert (=> b!575573 m!832791))

(declare-fun m!832793 () Bool)

(assert (=> b!575573 m!832793))

(declare-fun m!832795 () Bool)

(assert (=> b!575573 m!832795))

(declare-fun m!832797 () Bool)

(assert (=> b!575573 m!832797))

(declare-fun m!832799 () Bool)

(assert (=> b!575573 m!832799))

(declare-fun m!832801 () Bool)

(assert (=> b!575594 m!832801))

(declare-fun m!832803 () Bool)

(assert (=> b!575598 m!832803))

(assert (=> b!575571 m!832791))

(declare-fun m!832805 () Bool)

(assert (=> b!575571 m!832805))

(declare-fun m!832807 () Bool)

(assert (=> b!575571 m!832807))

(check-sat (not b!575571) (not b!575585) (not b!575597) (not b!575578) (not b!575591) (not b!575598) (not b!575573) (not b!575568) b_and!56325 tp_is_empty!3217 (not b!575583) (not b!575579) b_and!56327 (not b!575574) (not b!575589) b_and!56323 (not start!53100) (not b!575586) (not b!575599) (not b_next!16037) (not b_next!16041) (not b!575576) (not b_next!16039) (not b!575582) (not b!575567) (not b!575594) b_and!56329 (not b!575569) (not b!575575) (not b!575593) (not b_next!16043) (not b!575581) (not b!575587) (not b!575570))
(check-sat b_and!56323 (not b_next!16039) b_and!56325 b_and!56329 (not b_next!16043) b_and!56327 (not b_next!16037) (not b_next!16041))
(get-model)

(declare-fun d!202092 () Bool)

(assert (=> d!202092 (= (isEmpty!4087 input!2705) ((_ is Nil!5660) input!2705))))

(assert (=> b!575598 d!202092))

(declare-fun d!202094 () Bool)

(assert (=> d!202094 (= (isEmpty!4088 rules!3103) ((_ is Nil!5662) rules!3103))))

(assert (=> b!575597 d!202094))

(declare-fun d!202096 () Bool)

(declare-fun lt!243537 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!998 (List!5672) (InoxSet Rule!1994))

(assert (=> d!202096 (= lt!243537 (select (content!998 rules!3103) (rule!1845 (_1!3586 (v!16306 lt!243508)))))))

(declare-fun e!347866 () Bool)

(assert (=> d!202096 (= lt!243537 e!347866)))

(declare-fun res!247382 () Bool)

(assert (=> d!202096 (=> (not res!247382) (not e!347866))))

(assert (=> d!202096 (= res!247382 ((_ is Cons!5662) rules!3103))))

(assert (=> d!202096 (= (contains!1327 rules!3103 (rule!1845 (_1!3586 (v!16306 lt!243508)))) lt!243537)))

(declare-fun b!575606 () Bool)

(declare-fun e!347867 () Bool)

(assert (=> b!575606 (= e!347866 e!347867)))

(declare-fun res!247381 () Bool)

(assert (=> b!575606 (=> res!247381 e!347867)))

(assert (=> b!575606 (= res!247381 (= (h!11063 rules!3103) (rule!1845 (_1!3586 (v!16306 lt!243508)))))))

(declare-fun b!575607 () Bool)

(assert (=> b!575607 (= e!347867 (contains!1327 (t!77313 rules!3103) (rule!1845 (_1!3586 (v!16306 lt!243508)))))))

(assert (= (and d!202096 res!247382) b!575606))

(assert (= (and b!575606 (not res!247381)) b!575607))

(declare-fun m!832809 () Bool)

(assert (=> d!202096 m!832809))

(declare-fun m!832811 () Bool)

(assert (=> d!202096 m!832811))

(declare-fun m!832813 () Bool)

(assert (=> b!575607 m!832813))

(assert (=> b!575586 d!202096))

(declare-fun d!202098 () Bool)

(assert (=> d!202098 (= (inv!7118 (tag!1359 (rule!1845 token!491))) (= (mod (str.len (value!36130 (tag!1359 (rule!1845 token!491)))) 2) 0))))

(assert (=> b!575575 d!202098))

(declare-fun d!202100 () Bool)

(declare-fun res!247388 () Bool)

(declare-fun e!347873 () Bool)

(assert (=> d!202100 (=> (not res!247388) (not e!347873))))

(declare-fun semiInverseModEq!423 (Int Int) Bool)

(assert (=> d!202100 (= res!247388 (semiInverseModEq!423 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toValue!1956 (transformation!1097 (rule!1845 token!491)))))))

(assert (=> d!202100 (= (inv!7122 (transformation!1097 (rule!1845 token!491))) e!347873)))

(declare-fun b!575613 () Bool)

(declare-fun equivClasses!406 (Int Int) Bool)

(assert (=> b!575613 (= e!347873 (equivClasses!406 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toValue!1956 (transformation!1097 (rule!1845 token!491)))))))

(assert (= (and d!202100 res!247388) b!575613))

(declare-fun m!832821 () Bool)

(assert (=> d!202100 m!832821))

(declare-fun m!832823 () Bool)

(assert (=> b!575613 m!832823))

(assert (=> b!575575 d!202100))

(declare-fun d!202108 () Bool)

(assert (=> d!202108 (= (get!2160 lt!243519) (v!16306 lt!243519))))

(assert (=> b!575585 d!202108))

(declare-fun d!202110 () Bool)

(declare-fun list!2353 (Conc!1814) List!5670)

(assert (=> d!202110 (= (list!2351 (charsOf!726 token!491)) (list!2353 (c!107826 (charsOf!726 token!491))))))

(declare-fun bs!69331 () Bool)

(assert (= bs!69331 d!202110))

(declare-fun m!832831 () Bool)

(assert (=> bs!69331 m!832831))

(assert (=> b!575579 d!202110))

(declare-fun d!202114 () Bool)

(declare-fun lt!243543 () BalanceConc!3636)

(assert (=> d!202114 (= (list!2351 lt!243543) (originalCharacters!1136 token!491))))

(declare-fun dynLambda!3281 (Int TokenValue!1121) BalanceConc!3636)

(assert (=> d!202114 (= lt!243543 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (value!36131 token!491)))))

(assert (=> d!202114 (= (charsOf!726 token!491) lt!243543)))

(declare-fun b_lambda!22435 () Bool)

(assert (=> (not b_lambda!22435) (not d!202114)))

(declare-fun t!77319 () Bool)

(declare-fun tb!50199 () Bool)

(assert (=> (and b!575601 (= (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toChars!1815 (transformation!1097 (rule!1845 token!491)))) t!77319) tb!50199))

(declare-fun b!575638 () Bool)

(declare-fun e!347891 () Bool)

(declare-fun tp!180568 () Bool)

(declare-fun inv!7125 (Conc!1814) Bool)

(assert (=> b!575638 (= e!347891 (and (inv!7125 (c!107826 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (value!36131 token!491)))) tp!180568))))

(declare-fun result!56188 () Bool)

(declare-fun inv!7126 (BalanceConc!3636) Bool)

(assert (=> tb!50199 (= result!56188 (and (inv!7126 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (value!36131 token!491))) e!347891))))

(assert (= tb!50199 b!575638))

(declare-fun m!832847 () Bool)

(assert (=> b!575638 m!832847))

(declare-fun m!832849 () Bool)

(assert (=> tb!50199 m!832849))

(assert (=> d!202114 t!77319))

(declare-fun b_and!56335 () Bool)

(assert (= b_and!56325 (and (=> t!77319 result!56188) b_and!56335)))

(declare-fun tb!50201 () Bool)

(declare-fun t!77321 () Bool)

(assert (=> (and b!575590 (= (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toChars!1815 (transformation!1097 (rule!1845 token!491)))) t!77321) tb!50201))

(declare-fun result!56192 () Bool)

(assert (= result!56192 result!56188))

(assert (=> d!202114 t!77321))

(declare-fun b_and!56337 () Bool)

(assert (= b_and!56329 (and (=> t!77321 result!56192) b_and!56337)))

(declare-fun m!832851 () Bool)

(assert (=> d!202114 m!832851))

(declare-fun m!832853 () Bool)

(assert (=> d!202114 m!832853))

(assert (=> b!575579 d!202114))

(declare-fun d!202130 () Bool)

(assert (=> d!202130 (= (isEmpty!4087 (_2!3586 (v!16306 lt!243508))) ((_ is Nil!5660) (_2!3586 (v!16306 lt!243508))))))

(assert (=> b!575568 d!202130))

(declare-fun d!202132 () Bool)

(declare-fun lt!243544 () Bool)

(assert (=> d!202132 (= lt!243544 (select (content!998 rules!3103) (rule!1845 token!491)))))

(declare-fun e!347892 () Bool)

(assert (=> d!202132 (= lt!243544 e!347892)))

(declare-fun res!247405 () Bool)

(assert (=> d!202132 (=> (not res!247405) (not e!347892))))

(assert (=> d!202132 (= res!247405 ((_ is Cons!5662) rules!3103))))

(assert (=> d!202132 (= (contains!1327 rules!3103 (rule!1845 token!491)) lt!243544)))

(declare-fun b!575639 () Bool)

(declare-fun e!347893 () Bool)

(assert (=> b!575639 (= e!347892 e!347893)))

(declare-fun res!247404 () Bool)

(assert (=> b!575639 (=> res!247404 e!347893)))

(assert (=> b!575639 (= res!247404 (= (h!11063 rules!3103) (rule!1845 token!491)))))

(declare-fun b!575640 () Bool)

(assert (=> b!575640 (= e!347893 (contains!1327 (t!77313 rules!3103) (rule!1845 token!491)))))

(assert (= (and d!202132 res!247405) b!575639))

(assert (= (and b!575639 (not res!247404)) b!575640))

(assert (=> d!202132 m!832809))

(declare-fun m!832855 () Bool)

(assert (=> d!202132 m!832855))

(declare-fun m!832857 () Bool)

(assert (=> b!575640 m!832857))

(assert (=> b!575589 d!202132))

(declare-fun d!202134 () Bool)

(assert (=> d!202134 (= (get!2160 lt!243508) (v!16306 lt!243508))))

(assert (=> b!575578 d!202134))

(declare-fun d!202136 () Bool)

(assert (=> d!202136 (= (inv!7118 (tag!1359 (h!11063 rules!3103))) (= (mod (str.len (value!36130 (tag!1359 (h!11063 rules!3103)))) 2) 0))))

(assert (=> b!575599 d!202136))

(declare-fun d!202138 () Bool)

(declare-fun res!247406 () Bool)

(declare-fun e!347896 () Bool)

(assert (=> d!202138 (=> (not res!247406) (not e!347896))))

(assert (=> d!202138 (= res!247406 (semiInverseModEq!423 (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toValue!1956 (transformation!1097 (h!11063 rules!3103)))))))

(assert (=> d!202138 (= (inv!7122 (transformation!1097 (h!11063 rules!3103))) e!347896)))

(declare-fun b!575645 () Bool)

(assert (=> b!575645 (= e!347896 (equivClasses!406 (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toValue!1956 (transformation!1097 (h!11063 rules!3103)))))))

(assert (= (and d!202138 res!247406) b!575645))

(declare-fun m!832859 () Bool)

(assert (=> d!202138 m!832859))

(declare-fun m!832861 () Bool)

(assert (=> b!575645 m!832861))

(assert (=> b!575599 d!202138))

(declare-fun d!202140 () Bool)

(assert (=> d!202140 (= (_2!3586 (v!16306 lt!243508)) lt!243518)))

(declare-fun lt!243550 () Unit!10214)

(declare-fun choose!4112 (List!5670 List!5670 List!5670 List!5670 List!5670) Unit!10214)

(assert (=> d!202140 (= lt!243550 (choose!4112 lt!243529 (_2!3586 (v!16306 lt!243508)) lt!243529 lt!243518 input!2705))))

(assert (=> d!202140 (isPrefix!731 lt!243529 input!2705)))

(assert (=> d!202140 (= (lemmaSamePrefixThenSameSuffix!454 lt!243529 (_2!3586 (v!16306 lt!243508)) lt!243529 lt!243518 input!2705) lt!243550)))

(declare-fun bs!69333 () Bool)

(assert (= bs!69333 d!202140))

(declare-fun m!832877 () Bool)

(assert (=> bs!69333 m!832877))

(declare-fun m!832879 () Bool)

(assert (=> bs!69333 m!832879))

(assert (=> b!575567 d!202140))

(declare-fun d!202146 () Bool)

(assert (=> d!202146 (ruleValid!307 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))))))

(declare-fun lt!243553 () Unit!10214)

(declare-fun choose!4113 (LexerInterface!983 Rule!1994 List!5672) Unit!10214)

(assert (=> d!202146 (= lt!243553 (choose!4113 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))) rules!3103))))

(assert (=> d!202146 (contains!1327 rules!3103 (rule!1845 (_1!3586 (v!16306 lt!243508))))))

(assert (=> d!202146 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!164 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))) rules!3103) lt!243553)))

(declare-fun bs!69334 () Bool)

(assert (= bs!69334 d!202146))

(assert (=> bs!69334 m!832729))

(declare-fun m!832881 () Bool)

(assert (=> bs!69334 m!832881))

(assert (=> bs!69334 m!832697))

(assert (=> b!575567 d!202146))

(declare-fun b!575665 () Bool)

(declare-fun lt!243556 () List!5670)

(declare-fun e!347905 () Bool)

(assert (=> b!575665 (= e!347905 (or (not (= (_2!3586 (v!16306 lt!243508)) Nil!5660)) (= lt!243556 lt!243529)))))

(declare-fun d!202148 () Bool)

(assert (=> d!202148 e!347905))

(declare-fun res!247417 () Bool)

(assert (=> d!202148 (=> (not res!247417) (not e!347905))))

(declare-fun content!999 (List!5670) (InoxSet C!3784))

(assert (=> d!202148 (= res!247417 (= (content!999 lt!243556) ((_ map or) (content!999 lt!243529) (content!999 (_2!3586 (v!16306 lt!243508))))))))

(declare-fun e!347906 () List!5670)

(assert (=> d!202148 (= lt!243556 e!347906)))

(declare-fun c!107832 () Bool)

(assert (=> d!202148 (= c!107832 ((_ is Nil!5660) lt!243529))))

(assert (=> d!202148 (= (++!1585 lt!243529 (_2!3586 (v!16306 lt!243508))) lt!243556)))

(declare-fun b!575664 () Bool)

(declare-fun res!247418 () Bool)

(assert (=> b!575664 (=> (not res!247418) (not e!347905))))

(assert (=> b!575664 (= res!247418 (= (size!4507 lt!243556) (+ (size!4507 lt!243529) (size!4507 (_2!3586 (v!16306 lt!243508))))))))

(declare-fun b!575662 () Bool)

(assert (=> b!575662 (= e!347906 (_2!3586 (v!16306 lt!243508)))))

(declare-fun b!575663 () Bool)

(assert (=> b!575663 (= e!347906 (Cons!5660 (h!11061 lt!243529) (++!1585 (t!77311 lt!243529) (_2!3586 (v!16306 lt!243508)))))))

(assert (= (and d!202148 c!107832) b!575662))

(assert (= (and d!202148 (not c!107832)) b!575663))

(assert (= (and d!202148 res!247417) b!575664))

(assert (= (and b!575664 res!247418) b!575665))

(declare-fun m!832883 () Bool)

(assert (=> d!202148 m!832883))

(declare-fun m!832885 () Bool)

(assert (=> d!202148 m!832885))

(declare-fun m!832887 () Bool)

(assert (=> d!202148 m!832887))

(declare-fun m!832889 () Bool)

(assert (=> b!575664 m!832889))

(assert (=> b!575664 m!832727))

(declare-fun m!832891 () Bool)

(assert (=> b!575664 m!832891))

(declare-fun m!832893 () Bool)

(assert (=> b!575663 m!832893))

(assert (=> b!575567 d!202148))

(declare-fun b!575707 () Bool)

(declare-fun e!347925 () Bool)

(declare-fun tail!751 (List!5670) List!5670)

(assert (=> b!575707 (= e!347925 (isPrefix!731 (tail!751 input!2705) (tail!751 input!2705)))))

(declare-fun b!575705 () Bool)

(declare-fun e!347926 () Bool)

(assert (=> b!575705 (= e!347926 e!347925)))

(declare-fun res!247451 () Bool)

(assert (=> b!575705 (=> (not res!247451) (not e!347925))))

(assert (=> b!575705 (= res!247451 (not ((_ is Nil!5660) input!2705)))))

(declare-fun b!575706 () Bool)

(declare-fun res!247452 () Bool)

(assert (=> b!575706 (=> (not res!247452) (not e!347925))))

(declare-fun head!1222 (List!5670) C!3784)

(assert (=> b!575706 (= res!247452 (= (head!1222 input!2705) (head!1222 input!2705)))))

(declare-fun b!575708 () Bool)

(declare-fun e!347924 () Bool)

(assert (=> b!575708 (= e!347924 (>= (size!4507 input!2705) (size!4507 input!2705)))))

(declare-fun d!202150 () Bool)

(assert (=> d!202150 e!347924))

(declare-fun res!247453 () Bool)

(assert (=> d!202150 (=> res!247453 e!347924)))

(declare-fun lt!243575 () Bool)

(assert (=> d!202150 (= res!247453 (not lt!243575))))

(assert (=> d!202150 (= lt!243575 e!347926)))

(declare-fun res!247450 () Bool)

(assert (=> d!202150 (=> res!247450 e!347926)))

(assert (=> d!202150 (= res!247450 ((_ is Nil!5660) input!2705))))

(assert (=> d!202150 (= (isPrefix!731 input!2705 input!2705) lt!243575)))

(assert (= (and d!202150 (not res!247450)) b!575705))

(assert (= (and b!575705 res!247451) b!575706))

(assert (= (and b!575706 res!247452) b!575707))

(assert (= (and d!202150 (not res!247453)) b!575708))

(declare-fun m!832939 () Bool)

(assert (=> b!575707 m!832939))

(assert (=> b!575707 m!832939))

(assert (=> b!575707 m!832939))

(assert (=> b!575707 m!832939))

(declare-fun m!832941 () Bool)

(assert (=> b!575707 m!832941))

(declare-fun m!832943 () Bool)

(assert (=> b!575706 m!832943))

(assert (=> b!575706 m!832943))

(declare-fun m!832945 () Bool)

(assert (=> b!575708 m!832945))

(assert (=> b!575708 m!832945))

(assert (=> b!575567 d!202150))

(declare-fun d!202156 () Bool)

(declare-fun res!247460 () Bool)

(declare-fun e!347934 () Bool)

(assert (=> d!202156 (=> (not res!247460) (not e!347934))))

(declare-fun validRegex!480 (Regex!1431) Bool)

(assert (=> d!202156 (= res!247460 (validRegex!480 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))))))

(assert (=> d!202156 (= (ruleValid!307 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508)))) e!347934)))

(declare-fun b!575721 () Bool)

(declare-fun res!247461 () Bool)

(assert (=> b!575721 (=> (not res!247461) (not e!347934))))

(declare-fun nullable!385 (Regex!1431) Bool)

(assert (=> b!575721 (= res!247461 (not (nullable!385 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))))))

(declare-fun b!575722 () Bool)

(assert (=> b!575722 (= e!347934 (not (= (tag!1359 (rule!1845 (_1!3586 (v!16306 lt!243508)))) (String!7350 ""))))))

(assert (= (and d!202156 res!247460) b!575721))

(assert (= (and b!575721 res!247461) b!575722))

(declare-fun m!832957 () Bool)

(assert (=> d!202156 m!832957))

(declare-fun m!832959 () Bool)

(assert (=> b!575721 m!832959))

(assert (=> b!575567 d!202156))

(declare-fun d!202166 () Bool)

(declare-fun dynLambda!3282 (Int BalanceConc!3636) TokenValue!1121)

(assert (=> d!202166 (= (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) lt!243504) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) lt!243504))))

(declare-fun b_lambda!22439 () Bool)

(assert (=> (not b_lambda!22439) (not d!202166)))

(declare-fun t!77323 () Bool)

(declare-fun tb!50203 () Bool)

(assert (=> (and b!575601 (= (toValue!1956 (transformation!1097 (rule!1845 token!491))) (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77323) tb!50203))

(declare-fun result!56194 () Bool)

(assert (=> tb!50203 (= result!56194 (inv!21 (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) lt!243504)))))

(declare-fun m!832961 () Bool)

(assert (=> tb!50203 m!832961))

(assert (=> d!202166 t!77323))

(declare-fun b_and!56343 () Bool)

(assert (= b_and!56323 (and (=> t!77323 result!56194) b_and!56343)))

(declare-fun tb!50205 () Bool)

(declare-fun t!77325 () Bool)

(assert (=> (and b!575590 (= (toValue!1956 (transformation!1097 (h!11063 rules!3103))) (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77325) tb!50205))

(declare-fun result!56198 () Bool)

(assert (= result!56198 result!56194))

(assert (=> d!202166 t!77325))

(declare-fun b_and!56345 () Bool)

(assert (= b_and!56327 (and (=> t!77325 result!56198) b_and!56345)))

(declare-fun m!832963 () Bool)

(assert (=> d!202166 m!832963))

(assert (=> b!575567 d!202166))

(declare-fun d!202168 () Bool)

(assert (=> d!202168 (isPrefix!731 input!2705 input!2705)))

(declare-fun lt!243587 () Unit!10214)

(declare-fun choose!4114 (List!5670 List!5670) Unit!10214)

(assert (=> d!202168 (= lt!243587 (choose!4114 input!2705 input!2705))))

(assert (=> d!202168 (= (lemmaIsPrefixRefl!469 input!2705 input!2705) lt!243587)))

(declare-fun bs!69336 () Bool)

(assert (= bs!69336 d!202168))

(assert (=> bs!69336 m!832723))

(declare-fun m!832965 () Bool)

(assert (=> bs!69336 m!832965))

(assert (=> b!575567 d!202168))

(declare-fun b!575727 () Bool)

(declare-fun e!347939 () Bool)

(assert (=> b!575727 (= e!347939 (isPrefix!731 (tail!751 lt!243530) (tail!751 lt!243531)))))

(declare-fun b!575725 () Bool)

(declare-fun e!347940 () Bool)

(assert (=> b!575725 (= e!347940 e!347939)))

(declare-fun res!247463 () Bool)

(assert (=> b!575725 (=> (not res!247463) (not e!347939))))

(assert (=> b!575725 (= res!247463 (not ((_ is Nil!5660) lt!243531)))))

(declare-fun b!575726 () Bool)

(declare-fun res!247464 () Bool)

(assert (=> b!575726 (=> (not res!247464) (not e!347939))))

(assert (=> b!575726 (= res!247464 (= (head!1222 lt!243530) (head!1222 lt!243531)))))

(declare-fun b!575728 () Bool)

(declare-fun e!347938 () Bool)

(assert (=> b!575728 (= e!347938 (>= (size!4507 lt!243531) (size!4507 lt!243530)))))

(declare-fun d!202170 () Bool)

(assert (=> d!202170 e!347938))

(declare-fun res!247465 () Bool)

(assert (=> d!202170 (=> res!247465 e!347938)))

(declare-fun lt!243588 () Bool)

(assert (=> d!202170 (= res!247465 (not lt!243588))))

(assert (=> d!202170 (= lt!243588 e!347940)))

(declare-fun res!247462 () Bool)

(assert (=> d!202170 (=> res!247462 e!347940)))

(assert (=> d!202170 (= res!247462 ((_ is Nil!5660) lt!243530))))

(assert (=> d!202170 (= (isPrefix!731 lt!243530 lt!243531) lt!243588)))

(assert (= (and d!202170 (not res!247462)) b!575725))

(assert (= (and b!575725 res!247463) b!575726))

(assert (= (and b!575726 res!247464) b!575727))

(assert (= (and d!202170 (not res!247465)) b!575728))

(declare-fun m!832967 () Bool)

(assert (=> b!575727 m!832967))

(declare-fun m!832969 () Bool)

(assert (=> b!575727 m!832969))

(assert (=> b!575727 m!832967))

(assert (=> b!575727 m!832969))

(declare-fun m!832971 () Bool)

(assert (=> b!575727 m!832971))

(declare-fun m!832973 () Bool)

(assert (=> b!575726 m!832973))

(declare-fun m!832975 () Bool)

(assert (=> b!575726 m!832975))

(declare-fun m!832977 () Bool)

(assert (=> b!575728 m!832977))

(assert (=> b!575728 m!832713))

(assert (=> b!575567 d!202170))

(declare-fun d!202172 () Bool)

(declare-fun lt!243591 () List!5670)

(assert (=> d!202172 (= (++!1585 lt!243529 lt!243591) input!2705)))

(declare-fun e!347943 () List!5670)

(assert (=> d!202172 (= lt!243591 e!347943)))

(declare-fun c!107843 () Bool)

(assert (=> d!202172 (= c!107843 ((_ is Cons!5660) lt!243529))))

(assert (=> d!202172 (>= (size!4507 input!2705) (size!4507 lt!243529))))

(assert (=> d!202172 (= (getSuffix!250 input!2705 lt!243529) lt!243591)))

(declare-fun b!575733 () Bool)

(assert (=> b!575733 (= e!347943 (getSuffix!250 (tail!751 input!2705) (t!77311 lt!243529)))))

(declare-fun b!575734 () Bool)

(assert (=> b!575734 (= e!347943 input!2705)))

(assert (= (and d!202172 c!107843) b!575733))

(assert (= (and d!202172 (not c!107843)) b!575734))

(declare-fun m!832979 () Bool)

(assert (=> d!202172 m!832979))

(assert (=> d!202172 m!832945))

(assert (=> d!202172 m!832727))

(assert (=> b!575733 m!832939))

(assert (=> b!575733 m!832939))

(declare-fun m!832981 () Bool)

(assert (=> b!575733 m!832981))

(assert (=> b!575567 d!202172))

(declare-fun d!202174 () Bool)

(assert (=> d!202174 (and (= lt!243530 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!243594 () Unit!10214)

(declare-fun choose!4115 (List!5670 List!5670 List!5670 List!5670) Unit!10214)

(assert (=> d!202174 (= lt!243594 (choose!4115 lt!243530 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!202174 (= (++!1585 lt!243530 suffix!1342) (++!1585 input!2705 suffix!1342))))

(assert (=> d!202174 (= (lemmaConcatSameAndSameSizesThenSameLists!174 lt!243530 suffix!1342 input!2705 suffix!1342) lt!243594)))

(declare-fun bs!69337 () Bool)

(assert (= bs!69337 d!202174))

(declare-fun m!832983 () Bool)

(assert (=> bs!69337 m!832983))

(assert (=> bs!69337 m!832693))

(assert (=> bs!69337 m!832775))

(assert (=> b!575567 d!202174))

(declare-fun d!202176 () Bool)

(declare-fun lt!243595 () BalanceConc!3636)

(assert (=> d!202176 (= (list!2351 lt!243595) (originalCharacters!1136 (_1!3586 (v!16306 lt!243508))))))

(assert (=> d!202176 (= lt!243595 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (value!36131 (_1!3586 (v!16306 lt!243508)))))))

(assert (=> d!202176 (= (charsOf!726 (_1!3586 (v!16306 lt!243508))) lt!243595)))

(declare-fun b_lambda!22441 () Bool)

(assert (=> (not b_lambda!22441) (not d!202176)))

(declare-fun tb!50207 () Bool)

(declare-fun t!77327 () Bool)

(assert (=> (and b!575601 (= (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77327) tb!50207))

(declare-fun b!575735 () Bool)

(declare-fun e!347944 () Bool)

(declare-fun tp!180569 () Bool)

(assert (=> b!575735 (= e!347944 (and (inv!7125 (c!107826 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (value!36131 (_1!3586 (v!16306 lt!243508)))))) tp!180569))))

(declare-fun result!56200 () Bool)

(assert (=> tb!50207 (= result!56200 (and (inv!7126 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (value!36131 (_1!3586 (v!16306 lt!243508))))) e!347944))))

(assert (= tb!50207 b!575735))

(declare-fun m!832985 () Bool)

(assert (=> b!575735 m!832985))

(declare-fun m!832987 () Bool)

(assert (=> tb!50207 m!832987))

(assert (=> d!202176 t!77327))

(declare-fun b_and!56347 () Bool)

(assert (= b_and!56335 (and (=> t!77327 result!56200) b_and!56347)))

(declare-fun tb!50209 () Bool)

(declare-fun t!77329 () Bool)

(assert (=> (and b!575590 (= (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77329) tb!50209))

(declare-fun result!56202 () Bool)

(assert (= result!56202 result!56200))

(assert (=> d!202176 t!77329))

(declare-fun b_and!56349 () Bool)

(assert (= b_and!56337 (and (=> t!77329 result!56202) b_and!56349)))

(declare-fun m!832989 () Bool)

(assert (=> d!202176 m!832989))

(declare-fun m!832991 () Bool)

(assert (=> d!202176 m!832991))

(assert (=> b!575567 d!202176))

(declare-fun d!202178 () Bool)

(assert (=> d!202178 (isPrefix!731 lt!243530 (++!1585 lt!243530 suffix!1342))))

(declare-fun lt!243598 () Unit!10214)

(declare-fun choose!4116 (List!5670 List!5670) Unit!10214)

(assert (=> d!202178 (= lt!243598 (choose!4116 lt!243530 suffix!1342))))

(assert (=> d!202178 (= (lemmaConcatTwoListThenFirstIsPrefix!578 lt!243530 suffix!1342) lt!243598)))

(declare-fun bs!69338 () Bool)

(assert (= bs!69338 d!202178))

(assert (=> bs!69338 m!832693))

(assert (=> bs!69338 m!832693))

(declare-fun m!832993 () Bool)

(assert (=> bs!69338 m!832993))

(declare-fun m!832995 () Bool)

(assert (=> bs!69338 m!832995))

(assert (=> b!575567 d!202178))

(declare-fun d!202180 () Bool)

(assert (=> d!202180 (= (size!4506 (_1!3586 (v!16306 lt!243508))) (size!4507 (originalCharacters!1136 (_1!3586 (v!16306 lt!243508)))))))

(declare-fun Unit!10221 () Unit!10214)

(assert (=> d!202180 (= (lemmaCharactersSize!164 (_1!3586 (v!16306 lt!243508))) Unit!10221)))

(declare-fun bs!69339 () Bool)

(assert (= bs!69339 d!202180))

(assert (=> bs!69339 m!832801))

(assert (=> b!575567 d!202180))

(declare-fun b!575738 () Bool)

(declare-fun e!347946 () Bool)

(assert (=> b!575738 (= e!347946 (isPrefix!731 (tail!751 input!2705) (tail!751 lt!243521)))))

(declare-fun b!575736 () Bool)

(declare-fun e!347947 () Bool)

(assert (=> b!575736 (= e!347947 e!347946)))

(declare-fun res!247467 () Bool)

(assert (=> b!575736 (=> (not res!247467) (not e!347946))))

(assert (=> b!575736 (= res!247467 (not ((_ is Nil!5660) lt!243521)))))

(declare-fun b!575737 () Bool)

(declare-fun res!247468 () Bool)

(assert (=> b!575737 (=> (not res!247468) (not e!347946))))

(assert (=> b!575737 (= res!247468 (= (head!1222 input!2705) (head!1222 lt!243521)))))

(declare-fun b!575739 () Bool)

(declare-fun e!347945 () Bool)

(assert (=> b!575739 (= e!347945 (>= (size!4507 lt!243521) (size!4507 input!2705)))))

(declare-fun d!202182 () Bool)

(assert (=> d!202182 e!347945))

(declare-fun res!247469 () Bool)

(assert (=> d!202182 (=> res!247469 e!347945)))

(declare-fun lt!243599 () Bool)

(assert (=> d!202182 (= res!247469 (not lt!243599))))

(assert (=> d!202182 (= lt!243599 e!347947)))

(declare-fun res!247466 () Bool)

(assert (=> d!202182 (=> res!247466 e!347947)))

(assert (=> d!202182 (= res!247466 ((_ is Nil!5660) input!2705))))

(assert (=> d!202182 (= (isPrefix!731 input!2705 lt!243521) lt!243599)))

(assert (= (and d!202182 (not res!247466)) b!575736))

(assert (= (and b!575736 res!247467) b!575737))

(assert (= (and b!575737 res!247468) b!575738))

(assert (= (and d!202182 (not res!247469)) b!575739))

(assert (=> b!575738 m!832939))

(declare-fun m!832997 () Bool)

(assert (=> b!575738 m!832997))

(assert (=> b!575738 m!832939))

(assert (=> b!575738 m!832997))

(declare-fun m!832999 () Bool)

(assert (=> b!575738 m!832999))

(assert (=> b!575737 m!832943))

(declare-fun m!833001 () Bool)

(assert (=> b!575737 m!833001))

(declare-fun m!833003 () Bool)

(assert (=> b!575739 m!833003))

(assert (=> b!575739 m!832945))

(assert (=> b!575567 d!202182))

(declare-fun d!202184 () Bool)

(declare-fun fromListB!558 (List!5670) BalanceConc!3636)

(assert (=> d!202184 (= (seqFromList!1285 lt!243529) (fromListB!558 lt!243529))))

(declare-fun bs!69340 () Bool)

(assert (= bs!69340 d!202184))

(declare-fun m!833005 () Bool)

(assert (=> bs!69340 m!833005))

(assert (=> b!575567 d!202184))

(declare-fun b!575742 () Bool)

(declare-fun e!347949 () Bool)

(assert (=> b!575742 (= e!347949 (isPrefix!731 (tail!751 input!2705) (tail!751 lt!243531)))))

(declare-fun b!575740 () Bool)

(declare-fun e!347950 () Bool)

(assert (=> b!575740 (= e!347950 e!347949)))

(declare-fun res!247471 () Bool)

(assert (=> b!575740 (=> (not res!247471) (not e!347949))))

(assert (=> b!575740 (= res!247471 (not ((_ is Nil!5660) lt!243531)))))

(declare-fun b!575741 () Bool)

(declare-fun res!247472 () Bool)

(assert (=> b!575741 (=> (not res!247472) (not e!347949))))

(assert (=> b!575741 (= res!247472 (= (head!1222 input!2705) (head!1222 lt!243531)))))

(declare-fun b!575743 () Bool)

(declare-fun e!347948 () Bool)

(assert (=> b!575743 (= e!347948 (>= (size!4507 lt!243531) (size!4507 input!2705)))))

(declare-fun d!202186 () Bool)

(assert (=> d!202186 e!347948))

(declare-fun res!247473 () Bool)

(assert (=> d!202186 (=> res!247473 e!347948)))

(declare-fun lt!243600 () Bool)

(assert (=> d!202186 (= res!247473 (not lt!243600))))

(assert (=> d!202186 (= lt!243600 e!347950)))

(declare-fun res!247470 () Bool)

(assert (=> d!202186 (=> res!247470 e!347950)))

(assert (=> d!202186 (= res!247470 ((_ is Nil!5660) input!2705))))

(assert (=> d!202186 (= (isPrefix!731 input!2705 lt!243531) lt!243600)))

(assert (= (and d!202186 (not res!247470)) b!575740))

(assert (= (and b!575740 res!247471) b!575741))

(assert (= (and b!575741 res!247472) b!575742))

(assert (= (and d!202186 (not res!247473)) b!575743))

(assert (=> b!575742 m!832939))

(assert (=> b!575742 m!832969))

(assert (=> b!575742 m!832939))

(assert (=> b!575742 m!832969))

(declare-fun m!833007 () Bool)

(assert (=> b!575742 m!833007))

(assert (=> b!575741 m!832943))

(assert (=> b!575741 m!832975))

(assert (=> b!575743 m!832977))

(assert (=> b!575743 m!832945))

(assert (=> b!575567 d!202186))

(declare-fun d!202188 () Bool)

(assert (=> d!202188 (ruleValid!307 thiss!22590 (rule!1845 token!491))))

(declare-fun lt!243601 () Unit!10214)

(assert (=> d!202188 (= lt!243601 (choose!4113 thiss!22590 (rule!1845 token!491) rules!3103))))

(assert (=> d!202188 (contains!1327 rules!3103 (rule!1845 token!491))))

(assert (=> d!202188 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!164 thiss!22590 (rule!1845 token!491) rules!3103) lt!243601)))

(declare-fun bs!69341 () Bool)

(assert (= bs!69341 d!202188))

(assert (=> bs!69341 m!832705))

(declare-fun m!833009 () Bool)

(assert (=> bs!69341 m!833009))

(assert (=> bs!69341 m!832777))

(assert (=> b!575567 d!202188))

(declare-fun d!202190 () Bool)

(assert (=> d!202190 (isPrefix!731 input!2705 (++!1585 input!2705 suffix!1342))))

(declare-fun lt!243602 () Unit!10214)

(assert (=> d!202190 (= lt!243602 (choose!4116 input!2705 suffix!1342))))

(assert (=> d!202190 (= (lemmaConcatTwoListThenFirstIsPrefix!578 input!2705 suffix!1342) lt!243602)))

(declare-fun bs!69342 () Bool)

(assert (= bs!69342 d!202190))

(assert (=> bs!69342 m!832775))

(assert (=> bs!69342 m!832775))

(declare-fun m!833011 () Bool)

(assert (=> bs!69342 m!833011))

(declare-fun m!833013 () Bool)

(assert (=> bs!69342 m!833013))

(assert (=> b!575567 d!202190))

(declare-fun d!202192 () Bool)

(declare-fun res!247474 () Bool)

(declare-fun e!347951 () Bool)

(assert (=> d!202192 (=> (not res!247474) (not e!347951))))

(assert (=> d!202192 (= res!247474 (validRegex!480 (regex!1097 (rule!1845 token!491))))))

(assert (=> d!202192 (= (ruleValid!307 thiss!22590 (rule!1845 token!491)) e!347951)))

(declare-fun b!575744 () Bool)

(declare-fun res!247475 () Bool)

(assert (=> b!575744 (=> (not res!247475) (not e!347951))))

(assert (=> b!575744 (= res!247475 (not (nullable!385 (regex!1097 (rule!1845 token!491)))))))

(declare-fun b!575745 () Bool)

(assert (=> b!575745 (= e!347951 (not (= (tag!1359 (rule!1845 token!491)) (String!7350 ""))))))

(assert (= (and d!202192 res!247474) b!575744))

(assert (= (and b!575744 res!247475) b!575745))

(declare-fun m!833015 () Bool)

(assert (=> d!202192 m!833015))

(declare-fun m!833017 () Bool)

(assert (=> b!575744 m!833017))

(assert (=> b!575567 d!202192))

(declare-fun d!202194 () Bool)

(assert (=> d!202194 (= (list!2351 (charsOf!726 (_1!3586 (v!16306 lt!243508)))) (list!2353 (c!107826 (charsOf!726 (_1!3586 (v!16306 lt!243508))))))))

(declare-fun bs!69343 () Bool)

(assert (= bs!69343 d!202194))

(declare-fun m!833019 () Bool)

(assert (=> bs!69343 m!833019))

(assert (=> b!575567 d!202194))

(declare-fun d!202196 () Bool)

(declare-fun lt!243605 () Int)

(assert (=> d!202196 (>= lt!243605 0)))

(declare-fun e!347954 () Int)

(assert (=> d!202196 (= lt!243605 e!347954)))

(declare-fun c!107846 () Bool)

(assert (=> d!202196 (= c!107846 ((_ is Nil!5660) lt!243530))))

(assert (=> d!202196 (= (size!4507 lt!243530) lt!243605)))

(declare-fun b!575750 () Bool)

(assert (=> b!575750 (= e!347954 0)))

(declare-fun b!575751 () Bool)

(assert (=> b!575751 (= e!347954 (+ 1 (size!4507 (t!77311 lt!243530))))))

(assert (= (and d!202196 c!107846) b!575750))

(assert (= (and d!202196 (not c!107846)) b!575751))

(declare-fun m!833021 () Bool)

(assert (=> b!575751 m!833021))

(assert (=> b!575567 d!202196))

(declare-fun b!575754 () Bool)

(declare-fun e!347956 () Bool)

(assert (=> b!575754 (= e!347956 (isPrefix!731 (tail!751 lt!243529) (tail!751 lt!243528)))))

(declare-fun b!575752 () Bool)

(declare-fun e!347957 () Bool)

(assert (=> b!575752 (= e!347957 e!347956)))

(declare-fun res!247477 () Bool)

(assert (=> b!575752 (=> (not res!247477) (not e!347956))))

(assert (=> b!575752 (= res!247477 (not ((_ is Nil!5660) lt!243528)))))

(declare-fun b!575753 () Bool)

(declare-fun res!247478 () Bool)

(assert (=> b!575753 (=> (not res!247478) (not e!347956))))

(assert (=> b!575753 (= res!247478 (= (head!1222 lt!243529) (head!1222 lt!243528)))))

(declare-fun b!575755 () Bool)

(declare-fun e!347955 () Bool)

(assert (=> b!575755 (= e!347955 (>= (size!4507 lt!243528) (size!4507 lt!243529)))))

(declare-fun d!202198 () Bool)

(assert (=> d!202198 e!347955))

(declare-fun res!247479 () Bool)

(assert (=> d!202198 (=> res!247479 e!347955)))

(declare-fun lt!243606 () Bool)

(assert (=> d!202198 (= res!247479 (not lt!243606))))

(assert (=> d!202198 (= lt!243606 e!347957)))

(declare-fun res!247476 () Bool)

(assert (=> d!202198 (=> res!247476 e!347957)))

(assert (=> d!202198 (= res!247476 ((_ is Nil!5660) lt!243529))))

(assert (=> d!202198 (= (isPrefix!731 lt!243529 lt!243528) lt!243606)))

(assert (= (and d!202198 (not res!247476)) b!575752))

(assert (= (and b!575752 res!247477) b!575753))

(assert (= (and b!575753 res!247478) b!575754))

(assert (= (and d!202198 (not res!247479)) b!575755))

(declare-fun m!833023 () Bool)

(assert (=> b!575754 m!833023))

(declare-fun m!833025 () Bool)

(assert (=> b!575754 m!833025))

(assert (=> b!575754 m!833023))

(assert (=> b!575754 m!833025))

(declare-fun m!833027 () Bool)

(assert (=> b!575754 m!833027))

(declare-fun m!833029 () Bool)

(assert (=> b!575753 m!833029))

(declare-fun m!833031 () Bool)

(assert (=> b!575753 m!833031))

(declare-fun m!833033 () Bool)

(assert (=> b!575755 m!833033))

(assert (=> b!575755 m!832727))

(assert (=> b!575567 d!202198))

(declare-fun d!202200 () Bool)

(declare-fun lt!243607 () Int)

(assert (=> d!202200 (>= lt!243607 0)))

(declare-fun e!347958 () Int)

(assert (=> d!202200 (= lt!243607 e!347958)))

(declare-fun c!107847 () Bool)

(assert (=> d!202200 (= c!107847 ((_ is Nil!5660) lt!243529))))

(assert (=> d!202200 (= (size!4507 lt!243529) lt!243607)))

(declare-fun b!575756 () Bool)

(assert (=> b!575756 (= e!347958 0)))

(declare-fun b!575757 () Bool)

(assert (=> b!575757 (= e!347958 (+ 1 (size!4507 (t!77311 lt!243529))))))

(assert (= (and d!202200 c!107847) b!575756))

(assert (= (and d!202200 (not c!107847)) b!575757))

(declare-fun m!833035 () Bool)

(assert (=> b!575757 m!833035))

(assert (=> b!575567 d!202200))

(declare-fun d!202202 () Bool)

(declare-fun e!347961 () Bool)

(assert (=> d!202202 e!347961))

(declare-fun res!247482 () Bool)

(assert (=> d!202202 (=> (not res!247482) (not e!347961))))

(assert (=> d!202202 (= res!247482 (semiInverseModEq!423 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toValue!1956 (transformation!1097 (rule!1845 token!491)))))))

(declare-fun Unit!10222 () Unit!10214)

(assert (=> d!202202 (= (lemmaInv!233 (transformation!1097 (rule!1845 token!491))) Unit!10222)))

(declare-fun b!575760 () Bool)

(assert (=> b!575760 (= e!347961 (equivClasses!406 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toValue!1956 (transformation!1097 (rule!1845 token!491)))))))

(assert (= (and d!202202 res!247482) b!575760))

(assert (=> d!202202 m!832821))

(assert (=> b!575760 m!832823))

(assert (=> b!575567 d!202202))

(declare-fun d!202204 () Bool)

(assert (=> d!202204 (isPrefix!731 lt!243529 (++!1585 lt!243529 (_2!3586 (v!16306 lt!243508))))))

(declare-fun lt!243608 () Unit!10214)

(assert (=> d!202204 (= lt!243608 (choose!4116 lt!243529 (_2!3586 (v!16306 lt!243508))))))

(assert (=> d!202204 (= (lemmaConcatTwoListThenFirstIsPrefix!578 lt!243529 (_2!3586 (v!16306 lt!243508))) lt!243608)))

(declare-fun bs!69344 () Bool)

(assert (= bs!69344 d!202204))

(assert (=> bs!69344 m!832707))

(assert (=> bs!69344 m!832707))

(declare-fun m!833037 () Bool)

(assert (=> bs!69344 m!833037))

(declare-fun m!833039 () Bool)

(assert (=> bs!69344 m!833039))

(assert (=> b!575567 d!202204))

(declare-fun d!202206 () Bool)

(assert (=> d!202206 (= (size!4506 token!491) (size!4507 (originalCharacters!1136 token!491)))))

(declare-fun Unit!10223 () Unit!10214)

(assert (=> d!202206 (= (lemmaCharactersSize!164 token!491) Unit!10223)))

(declare-fun bs!69345 () Bool)

(assert (= bs!69345 d!202206))

(assert (=> bs!69345 m!832699))

(assert (=> b!575567 d!202206))

(declare-fun d!202208 () Bool)

(declare-fun e!347962 () Bool)

(assert (=> d!202208 e!347962))

(declare-fun res!247483 () Bool)

(assert (=> d!202208 (=> (not res!247483) (not e!347962))))

(assert (=> d!202208 (= res!247483 (semiInverseModEq!423 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))))))

(declare-fun Unit!10224 () Unit!10214)

(assert (=> d!202208 (= (lemmaInv!233 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) Unit!10224)))

(declare-fun b!575761 () Bool)

(assert (=> b!575761 (= e!347962 (equivClasses!406 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))))))

(assert (= (and d!202208 res!247483) b!575761))

(declare-fun m!833041 () Bool)

(assert (=> d!202208 m!833041))

(declare-fun m!833043 () Bool)

(assert (=> b!575761 m!833043))

(assert (=> b!575567 d!202208))

(declare-fun d!202210 () Bool)

(declare-fun isEmpty!4090 (Option!1448) Bool)

(assert (=> d!202210 (= (isDefined!1259 lt!243508) (not (isEmpty!4090 lt!243508)))))

(declare-fun bs!69346 () Bool)

(assert (= bs!69346 d!202210))

(declare-fun m!833045 () Bool)

(assert (=> bs!69346 m!833045))

(assert (=> b!575582 d!202210))

(declare-fun b!575829 () Bool)

(declare-fun e!347997 () Bool)

(assert (=> b!575829 (= e!347997 true)))

(declare-fun d!202212 () Bool)

(assert (=> d!202212 e!347997))

(assert (= d!202212 b!575829))

(declare-fun order!4615 () Int)

(declare-fun lambda!15704 () Int)

(declare-fun order!4613 () Int)

(declare-fun dynLambda!3283 (Int Int) Int)

(declare-fun dynLambda!3284 (Int Int) Int)

(assert (=> b!575829 (< (dynLambda!3283 order!4613 (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) (dynLambda!3284 order!4615 lambda!15704))))

(declare-fun order!4617 () Int)

(declare-fun dynLambda!3285 (Int Int) Int)

(assert (=> b!575829 (< (dynLambda!3285 order!4617 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) (dynLambda!3284 order!4615 lambda!15704))))

(assert (=> d!202212 (= (list!2351 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) lt!243504))) (list!2351 lt!243504))))

(declare-fun lt!243624 () Unit!10214)

(declare-fun ForallOf!106 (Int BalanceConc!3636) Unit!10214)

(assert (=> d!202212 (= lt!243624 (ForallOf!106 lambda!15704 lt!243504))))

(assert (=> d!202212 (= (lemmaSemiInverse!200 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) lt!243504) lt!243624)))

(declare-fun b_lambda!22447 () Bool)

(assert (=> (not b_lambda!22447) (not d!202212)))

(declare-fun t!77339 () Bool)

(declare-fun tb!50219 () Bool)

(assert (=> (and b!575601 (= (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77339) tb!50219))

(declare-fun tp!180571 () Bool)

(declare-fun b!575834 () Bool)

(declare-fun e!348002 () Bool)

(assert (=> b!575834 (= e!348002 (and (inv!7125 (c!107826 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) lt!243504)))) tp!180571))))

(declare-fun result!56214 () Bool)

(assert (=> tb!50219 (= result!56214 (and (inv!7126 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))) lt!243504))) e!348002))))

(assert (= tb!50219 b!575834))

(declare-fun m!833109 () Bool)

(assert (=> b!575834 m!833109))

(declare-fun m!833111 () Bool)

(assert (=> tb!50219 m!833111))

(assert (=> d!202212 t!77339))

(declare-fun b_and!56359 () Bool)

(assert (= b_and!56347 (and (=> t!77339 result!56214) b_and!56359)))

(declare-fun tb!50221 () Bool)

(declare-fun t!77341 () Bool)

(assert (=> (and b!575590 (= (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77341) tb!50221))

(declare-fun result!56216 () Bool)

(assert (= result!56216 result!56214))

(assert (=> d!202212 t!77341))

(declare-fun b_and!56361 () Bool)

(assert (= b_and!56349 (and (=> t!77341 result!56216) b_and!56361)))

(declare-fun b_lambda!22449 () Bool)

(assert (=> (not b_lambda!22449) (not d!202212)))

(assert (=> d!202212 t!77323))

(declare-fun b_and!56363 () Bool)

(assert (= b_and!56343 (and (=> t!77323 result!56194) b_and!56363)))

(assert (=> d!202212 t!77325))

(declare-fun b_and!56365 () Bool)

(assert (= b_and!56345 (and (=> t!77325 result!56198) b_and!56365)))

(assert (=> d!202212 m!832963))

(declare-fun m!833113 () Bool)

(assert (=> d!202212 m!833113))

(assert (=> d!202212 m!832963))

(declare-fun m!833115 () Bool)

(assert (=> d!202212 m!833115))

(declare-fun m!833117 () Bool)

(assert (=> d!202212 m!833117))

(assert (=> d!202212 m!833113))

(declare-fun m!833119 () Bool)

(assert (=> d!202212 m!833119))

(assert (=> b!575571 d!202212))

(declare-fun d!202224 () Bool)

(assert (=> d!202224 (not (matchR!578 (regex!1097 (rule!1845 token!491)) input!2705))))

(declare-fun lt!243637 () Unit!10214)

(declare-fun choose!4119 (LexerInterface!983 List!5672 Rule!1994 List!5670 List!5670 List!5670 Rule!1994) Unit!10214)

(assert (=> d!202224 (= lt!243637 (choose!4119 thiss!22590 rules!3103 (rule!1845 (_1!3586 (v!16306 lt!243508))) lt!243529 input!2705 input!2705 (rule!1845 token!491)))))

(assert (=> d!202224 (isPrefix!731 lt!243529 input!2705)))

(assert (=> d!202224 (= (lemmaMaxPrefixOutputsMaxPrefix!56 thiss!22590 rules!3103 (rule!1845 (_1!3586 (v!16306 lt!243508))) lt!243529 input!2705 input!2705 (rule!1845 token!491)) lt!243637)))

(declare-fun bs!69348 () Bool)

(assert (= bs!69348 d!202224))

(assert (=> bs!69348 m!832807))

(declare-fun m!833121 () Bool)

(assert (=> bs!69348 m!833121))

(assert (=> bs!69348 m!832879))

(assert (=> b!575571 d!202224))

(declare-fun b!575884 () Bool)

(declare-fun res!247556 () Bool)

(declare-fun e!348029 () Bool)

(assert (=> b!575884 (=> (not res!247556) (not e!348029))))

(assert (=> b!575884 (= res!247556 (isEmpty!4087 (tail!751 input!2705)))))

(declare-fun b!575885 () Bool)

(declare-fun e!348028 () Bool)

(declare-fun lt!243645 () Bool)

(assert (=> b!575885 (= e!348028 (not lt!243645))))

(declare-fun b!575886 () Bool)

(declare-fun e!348026 () Bool)

(assert (=> b!575886 (= e!348026 (not (= (head!1222 input!2705) (c!107825 (regex!1097 (rule!1845 token!491))))))))

(declare-fun b!575887 () Bool)

(declare-fun e!348027 () Bool)

(assert (=> b!575887 (= e!348027 (nullable!385 (regex!1097 (rule!1845 token!491))))))

(declare-fun b!575888 () Bool)

(declare-fun e!348030 () Bool)

(assert (=> b!575888 (= e!348030 e!348026)))

(declare-fun res!247553 () Bool)

(assert (=> b!575888 (=> res!247553 e!348026)))

(declare-fun call!39823 () Bool)

(assert (=> b!575888 (= res!247553 call!39823)))

(declare-fun b!575889 () Bool)

(declare-fun res!247555 () Bool)

(declare-fun e!348025 () Bool)

(assert (=> b!575889 (=> res!247555 e!348025)))

(assert (=> b!575889 (= res!247555 (not ((_ is ElementMatch!1431) (regex!1097 (rule!1845 token!491)))))))

(assert (=> b!575889 (= e!348028 e!348025)))

(declare-fun b!575890 () Bool)

(declare-fun derivativeStep!298 (Regex!1431 C!3784) Regex!1431)

(assert (=> b!575890 (= e!348027 (matchR!578 (derivativeStep!298 (regex!1097 (rule!1845 token!491)) (head!1222 input!2705)) (tail!751 input!2705)))))

(declare-fun b!575891 () Bool)

(declare-fun e!348031 () Bool)

(assert (=> b!575891 (= e!348031 e!348028)))

(declare-fun c!107871 () Bool)

(assert (=> b!575891 (= c!107871 ((_ is EmptyLang!1431) (regex!1097 (rule!1845 token!491))))))

(declare-fun b!575892 () Bool)

(assert (=> b!575892 (= e!348029 (= (head!1222 input!2705) (c!107825 (regex!1097 (rule!1845 token!491)))))))

(declare-fun b!575893 () Bool)

(assert (=> b!575893 (= e!348031 (= lt!243645 call!39823))))

(declare-fun b!575894 () Bool)

(declare-fun res!247559 () Bool)

(assert (=> b!575894 (=> res!247559 e!348026)))

(assert (=> b!575894 (= res!247559 (not (isEmpty!4087 (tail!751 input!2705))))))

(declare-fun bm!39818 () Bool)

(assert (=> bm!39818 (= call!39823 (isEmpty!4087 input!2705))))

(declare-fun d!202226 () Bool)

(assert (=> d!202226 e!348031))

(declare-fun c!107869 () Bool)

(assert (=> d!202226 (= c!107869 ((_ is EmptyExpr!1431) (regex!1097 (rule!1845 token!491))))))

(assert (=> d!202226 (= lt!243645 e!348027)))

(declare-fun c!107870 () Bool)

(assert (=> d!202226 (= c!107870 (isEmpty!4087 input!2705))))

(assert (=> d!202226 (validRegex!480 (regex!1097 (rule!1845 token!491)))))

(assert (=> d!202226 (= (matchR!578 (regex!1097 (rule!1845 token!491)) input!2705) lt!243645)))

(declare-fun b!575895 () Bool)

(declare-fun res!247558 () Bool)

(assert (=> b!575895 (=> (not res!247558) (not e!348029))))

(assert (=> b!575895 (= res!247558 (not call!39823))))

(declare-fun b!575896 () Bool)

(declare-fun res!247557 () Bool)

(assert (=> b!575896 (=> res!247557 e!348025)))

(assert (=> b!575896 (= res!247557 e!348029)))

(declare-fun res!247552 () Bool)

(assert (=> b!575896 (=> (not res!247552) (not e!348029))))

(assert (=> b!575896 (= res!247552 lt!243645)))

(declare-fun b!575897 () Bool)

(assert (=> b!575897 (= e!348025 e!348030)))

(declare-fun res!247554 () Bool)

(assert (=> b!575897 (=> (not res!247554) (not e!348030))))

(assert (=> b!575897 (= res!247554 (not lt!243645))))

(assert (= (and d!202226 c!107870) b!575887))

(assert (= (and d!202226 (not c!107870)) b!575890))

(assert (= (and d!202226 c!107869) b!575893))

(assert (= (and d!202226 (not c!107869)) b!575891))

(assert (= (and b!575891 c!107871) b!575885))

(assert (= (and b!575891 (not c!107871)) b!575889))

(assert (= (and b!575889 (not res!247555)) b!575896))

(assert (= (and b!575896 res!247552) b!575895))

(assert (= (and b!575895 res!247558) b!575884))

(assert (= (and b!575884 res!247556) b!575892))

(assert (= (and b!575896 (not res!247557)) b!575897))

(assert (= (and b!575897 res!247554) b!575888))

(assert (= (and b!575888 (not res!247553)) b!575894))

(assert (= (and b!575894 (not res!247559)) b!575886))

(assert (= (or b!575893 b!575888 b!575895) bm!39818))

(assert (=> b!575892 m!832943))

(assert (=> d!202226 m!832803))

(assert (=> d!202226 m!833015))

(assert (=> bm!39818 m!832803))

(assert (=> b!575886 m!832943))

(assert (=> b!575884 m!832939))

(assert (=> b!575884 m!832939))

(declare-fun m!833165 () Bool)

(assert (=> b!575884 m!833165))

(assert (=> b!575890 m!832943))

(assert (=> b!575890 m!832943))

(declare-fun m!833167 () Bool)

(assert (=> b!575890 m!833167))

(assert (=> b!575890 m!832939))

(assert (=> b!575890 m!833167))

(assert (=> b!575890 m!832939))

(declare-fun m!833169 () Bool)

(assert (=> b!575890 m!833169))

(assert (=> b!575894 m!832939))

(assert (=> b!575894 m!832939))

(assert (=> b!575894 m!833165))

(assert (=> b!575887 m!833017))

(assert (=> b!575571 d!202226))

(declare-fun b!575954 () Bool)

(declare-fun res!247602 () Bool)

(declare-fun e!348065 () Bool)

(assert (=> b!575954 (=> (not res!247602) (not e!348065))))

(declare-fun lt!243682 () Option!1448)

(assert (=> b!575954 (= res!247602 (= (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243682)))) (originalCharacters!1136 (_1!3586 (get!2160 lt!243682)))))))

(declare-fun b!575955 () Bool)

(declare-fun e!348064 () Option!1448)

(declare-fun lt!243684 () Option!1448)

(declare-fun lt!243685 () Option!1448)

(assert (=> b!575955 (= e!348064 (ite (and ((_ is None!1447) lt!243684) ((_ is None!1447) lt!243685)) None!1447 (ite ((_ is None!1447) lt!243685) lt!243684 (ite ((_ is None!1447) lt!243684) lt!243685 (ite (>= (size!4506 (_1!3586 (v!16306 lt!243684))) (size!4506 (_1!3586 (v!16306 lt!243685)))) lt!243684 lt!243685)))))))

(declare-fun call!39826 () Option!1448)

(assert (=> b!575955 (= lt!243684 call!39826)))

(assert (=> b!575955 (= lt!243685 (maxPrefix!681 thiss!22590 (t!77313 rules!3103) input!2705))))

(declare-fun b!575956 () Bool)

(declare-fun e!348063 () Bool)

(assert (=> b!575956 (= e!348063 e!348065)))

(declare-fun res!247603 () Bool)

(assert (=> b!575956 (=> (not res!247603) (not e!348065))))

(assert (=> b!575956 (= res!247603 (isDefined!1259 lt!243682))))

(declare-fun b!575957 () Bool)

(declare-fun res!247600 () Bool)

(assert (=> b!575957 (=> (not res!247600) (not e!348065))))

(assert (=> b!575957 (= res!247600 (< (size!4507 (_2!3586 (get!2160 lt!243682))) (size!4507 input!2705)))))

(declare-fun d!202230 () Bool)

(assert (=> d!202230 e!348063))

(declare-fun res!247604 () Bool)

(assert (=> d!202230 (=> res!247604 e!348063)))

(assert (=> d!202230 (= res!247604 (isEmpty!4090 lt!243682))))

(assert (=> d!202230 (= lt!243682 e!348064)))

(declare-fun c!107880 () Bool)

(assert (=> d!202230 (= c!107880 (and ((_ is Cons!5662) rules!3103) ((_ is Nil!5662) (t!77313 rules!3103))))))

(declare-fun lt!243686 () Unit!10214)

(declare-fun lt!243683 () Unit!10214)

(assert (=> d!202230 (= lt!243686 lt!243683)))

(assert (=> d!202230 (isPrefix!731 input!2705 input!2705)))

(assert (=> d!202230 (= lt!243683 (lemmaIsPrefixRefl!469 input!2705 input!2705))))

(declare-fun rulesValidInductive!392 (LexerInterface!983 List!5672) Bool)

(assert (=> d!202230 (rulesValidInductive!392 thiss!22590 rules!3103)))

(assert (=> d!202230 (= (maxPrefix!681 thiss!22590 rules!3103 input!2705) lt!243682)))

(declare-fun b!575958 () Bool)

(declare-fun res!247601 () Bool)

(assert (=> b!575958 (=> (not res!247601) (not e!348065))))

(assert (=> b!575958 (= res!247601 (matchR!578 (regex!1097 (rule!1845 (_1!3586 (get!2160 lt!243682)))) (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243682))))))))

(declare-fun bm!39821 () Bool)

(assert (=> bm!39821 (= call!39826 (maxPrefixOneRule!382 thiss!22590 (h!11063 rules!3103) input!2705))))

(declare-fun b!575959 () Bool)

(declare-fun res!247599 () Bool)

(assert (=> b!575959 (=> (not res!247599) (not e!348065))))

(assert (=> b!575959 (= res!247599 (= (value!36131 (_1!3586 (get!2160 lt!243682))) (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (get!2160 lt!243682)))) (seqFromList!1285 (originalCharacters!1136 (_1!3586 (get!2160 lt!243682)))))))))

(declare-fun b!575960 () Bool)

(declare-fun res!247598 () Bool)

(assert (=> b!575960 (=> (not res!247598) (not e!348065))))

(assert (=> b!575960 (= res!247598 (= (++!1585 (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243682)))) (_2!3586 (get!2160 lt!243682))) input!2705))))

(declare-fun b!575961 () Bool)

(assert (=> b!575961 (= e!348064 call!39826)))

(declare-fun b!575962 () Bool)

(assert (=> b!575962 (= e!348065 (contains!1327 rules!3103 (rule!1845 (_1!3586 (get!2160 lt!243682)))))))

(assert (= (and d!202230 c!107880) b!575961))

(assert (= (and d!202230 (not c!107880)) b!575955))

(assert (= (or b!575961 b!575955) bm!39821))

(assert (= (and d!202230 (not res!247604)) b!575956))

(assert (= (and b!575956 res!247603) b!575954))

(assert (= (and b!575954 res!247602) b!575957))

(assert (= (and b!575957 res!247600) b!575960))

(assert (= (and b!575960 res!247598) b!575959))

(assert (= (and b!575959 res!247599) b!575958))

(assert (= (and b!575958 res!247601) b!575962))

(declare-fun m!833271 () Bool)

(assert (=> b!575954 m!833271))

(declare-fun m!833273 () Bool)

(assert (=> b!575954 m!833273))

(assert (=> b!575954 m!833273))

(declare-fun m!833275 () Bool)

(assert (=> b!575954 m!833275))

(declare-fun m!833277 () Bool)

(assert (=> d!202230 m!833277))

(assert (=> d!202230 m!832723))

(assert (=> d!202230 m!832717))

(declare-fun m!833279 () Bool)

(assert (=> d!202230 m!833279))

(assert (=> b!575958 m!833271))

(assert (=> b!575958 m!833273))

(assert (=> b!575958 m!833273))

(assert (=> b!575958 m!833275))

(assert (=> b!575958 m!833275))

(declare-fun m!833281 () Bool)

(assert (=> b!575958 m!833281))

(assert (=> b!575960 m!833271))

(assert (=> b!575960 m!833273))

(assert (=> b!575960 m!833273))

(assert (=> b!575960 m!833275))

(assert (=> b!575960 m!833275))

(declare-fun m!833283 () Bool)

(assert (=> b!575960 m!833283))

(assert (=> b!575962 m!833271))

(declare-fun m!833285 () Bool)

(assert (=> b!575962 m!833285))

(declare-fun m!833287 () Bool)

(assert (=> bm!39821 m!833287))

(assert (=> b!575959 m!833271))

(declare-fun m!833289 () Bool)

(assert (=> b!575959 m!833289))

(assert (=> b!575959 m!833289))

(declare-fun m!833291 () Bool)

(assert (=> b!575959 m!833291))

(declare-fun m!833293 () Bool)

(assert (=> b!575955 m!833293))

(declare-fun m!833295 () Bool)

(assert (=> b!575956 m!833295))

(assert (=> b!575957 m!833271))

(declare-fun m!833297 () Bool)

(assert (=> b!575957 m!833297))

(assert (=> b!575957 m!832945))

(assert (=> b!575581 d!202230))

(declare-fun d!202272 () Bool)

(declare-fun lt!243690 () Int)

(assert (=> d!202272 (>= lt!243690 0)))

(declare-fun e!348068 () Int)

(assert (=> d!202272 (= lt!243690 e!348068)))

(declare-fun c!107881 () Bool)

(assert (=> d!202272 (= c!107881 ((_ is Nil!5660) (originalCharacters!1136 token!491)))))

(assert (=> d!202272 (= (size!4507 (originalCharacters!1136 token!491)) lt!243690)))

(declare-fun b!575964 () Bool)

(assert (=> b!575964 (= e!348068 0)))

(declare-fun b!575965 () Bool)

(assert (=> b!575965 (= e!348068 (+ 1 (size!4507 (t!77311 (originalCharacters!1136 token!491)))))))

(assert (= (and d!202272 c!107881) b!575964))

(assert (= (and d!202272 (not c!107881)) b!575965))

(declare-fun m!833299 () Bool)

(assert (=> b!575965 m!833299))

(assert (=> b!575570 d!202272))

(declare-fun e!348069 () Bool)

(declare-fun lt!243691 () List!5670)

(declare-fun b!575970 () Bool)

(assert (=> b!575970 (= e!348069 (or (not (= suffix!1342 Nil!5660)) (= lt!243691 lt!243530)))))

(declare-fun d!202274 () Bool)

(assert (=> d!202274 e!348069))

(declare-fun res!247607 () Bool)

(assert (=> d!202274 (=> (not res!247607) (not e!348069))))

(assert (=> d!202274 (= res!247607 (= (content!999 lt!243691) ((_ map or) (content!999 lt!243530) (content!999 suffix!1342))))))

(declare-fun e!348070 () List!5670)

(assert (=> d!202274 (= lt!243691 e!348070)))

(declare-fun c!107882 () Bool)

(assert (=> d!202274 (= c!107882 ((_ is Nil!5660) lt!243530))))

(assert (=> d!202274 (= (++!1585 lt!243530 suffix!1342) lt!243691)))

(declare-fun b!575969 () Bool)

(declare-fun res!247608 () Bool)

(assert (=> b!575969 (=> (not res!247608) (not e!348069))))

(assert (=> b!575969 (= res!247608 (= (size!4507 lt!243691) (+ (size!4507 lt!243530) (size!4507 suffix!1342))))))

(declare-fun b!575967 () Bool)

(assert (=> b!575967 (= e!348070 suffix!1342)))

(declare-fun b!575968 () Bool)

(assert (=> b!575968 (= e!348070 (Cons!5660 (h!11061 lt!243530) (++!1585 (t!77311 lt!243530) suffix!1342)))))

(assert (= (and d!202274 c!107882) b!575967))

(assert (= (and d!202274 (not c!107882)) b!575968))

(assert (= (and d!202274 res!247607) b!575969))

(assert (= (and b!575969 res!247608) b!575970))

(declare-fun m!833301 () Bool)

(assert (=> d!202274 m!833301))

(declare-fun m!833303 () Bool)

(assert (=> d!202274 m!833303))

(declare-fun m!833305 () Bool)

(assert (=> d!202274 m!833305))

(declare-fun m!833307 () Bool)

(assert (=> b!575969 m!833307))

(assert (=> b!575969 m!832713))

(declare-fun m!833309 () Bool)

(assert (=> b!575969 m!833309))

(declare-fun m!833311 () Bool)

(assert (=> b!575968 m!833311))

(assert (=> b!575591 d!202274))

(declare-fun d!202276 () Bool)

(declare-fun res!247619 () Bool)

(declare-fun e!348079 () Bool)

(assert (=> d!202276 (=> (not res!247619) (not e!348079))))

(assert (=> d!202276 (= res!247619 (not (isEmpty!4087 (originalCharacters!1136 token!491))))))

(assert (=> d!202276 (= (inv!7121 token!491) e!348079)))

(declare-fun b!575982 () Bool)

(declare-fun res!247620 () Bool)

(assert (=> b!575982 (=> (not res!247620) (not e!348079))))

(assert (=> b!575982 (= res!247620 (= (originalCharacters!1136 token!491) (list!2351 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (value!36131 token!491)))))))

(declare-fun b!575983 () Bool)

(assert (=> b!575983 (= e!348079 (= (size!4506 token!491) (size!4507 (originalCharacters!1136 token!491))))))

(assert (= (and d!202276 res!247619) b!575982))

(assert (= (and b!575982 res!247620) b!575983))

(declare-fun b_lambda!22461 () Bool)

(assert (=> (not b_lambda!22461) (not b!575982)))

(assert (=> b!575982 t!77319))

(declare-fun b_and!56387 () Bool)

(assert (= b_and!56359 (and (=> t!77319 result!56188) b_and!56387)))

(assert (=> b!575982 t!77321))

(declare-fun b_and!56389 () Bool)

(assert (= b_and!56361 (and (=> t!77321 result!56192) b_and!56389)))

(declare-fun m!833337 () Bool)

(assert (=> d!202276 m!833337))

(assert (=> b!575982 m!832853))

(assert (=> b!575982 m!832853))

(declare-fun m!833339 () Bool)

(assert (=> b!575982 m!833339))

(assert (=> b!575983 m!832699))

(assert (=> start!53100 d!202276))

(declare-fun d!202288 () Bool)

(declare-fun res!247623 () Bool)

(declare-fun e!348082 () Bool)

(assert (=> d!202288 (=> (not res!247623) (not e!348082))))

(declare-fun rulesValid!387 (LexerInterface!983 List!5672) Bool)

(assert (=> d!202288 (= res!247623 (rulesValid!387 thiss!22590 rules!3103))))

(assert (=> d!202288 (= (rulesInvariant!946 thiss!22590 rules!3103) e!348082)))

(declare-fun b!575986 () Bool)

(declare-datatypes ((List!5674 0))(
  ( (Nil!5664) (Cons!5664 (h!11065 String!7349) (t!77387 List!5674)) )
))
(declare-fun noDuplicateTag!387 (LexerInterface!983 List!5672 List!5674) Bool)

(assert (=> b!575986 (= e!348082 (noDuplicateTag!387 thiss!22590 rules!3103 Nil!5664))))

(assert (= (and d!202288 res!247623) b!575986))

(declare-fun m!833345 () Bool)

(assert (=> d!202288 m!833345))

(declare-fun m!833347 () Bool)

(assert (=> b!575986 m!833347))

(assert (=> b!575574 d!202288))

(declare-fun d!202292 () Bool)

(assert (=> d!202292 (= (seqFromList!1285 lt!243530) (fromListB!558 lt!243530))))

(declare-fun bs!69360 () Bool)

(assert (= bs!69360 d!202292))

(declare-fun m!833349 () Bool)

(assert (=> bs!69360 m!833349))

(assert (=> b!575573 d!202292))

(declare-fun d!202294 () Bool)

(assert (=> d!202294 (= suffix!1342 lt!243523)))

(declare-fun lt!243697 () Unit!10214)

(assert (=> d!202294 (= lt!243697 (choose!4112 lt!243530 suffix!1342 lt!243530 lt!243523 lt!243521))))

(assert (=> d!202294 (isPrefix!731 lt!243530 lt!243521)))

(assert (=> d!202294 (= (lemmaSamePrefixThenSameSuffix!454 lt!243530 suffix!1342 lt!243530 lt!243523 lt!243521) lt!243697)))

(declare-fun bs!69361 () Bool)

(assert (= bs!69361 d!202294))

(declare-fun m!833351 () Bool)

(assert (=> bs!69361 m!833351))

(declare-fun m!833353 () Bool)

(assert (=> bs!69361 m!833353))

(assert (=> b!575573 d!202294))

(declare-fun d!202296 () Bool)

(assert (=> d!202296 (= (maxPrefixOneRule!382 thiss!22590 (rule!1845 token!491) lt!243521) (Some!1447 (tuple2!6645 (Token!1931 (apply!1362 (transformation!1097 (rule!1845 token!491)) (seqFromList!1285 lt!243530)) (rule!1845 token!491) (size!4507 lt!243530) lt!243530) suffix!1342)))))

(declare-fun lt!243710 () Unit!10214)

(declare-fun choose!4123 (LexerInterface!983 List!5672 List!5670 List!5670 List!5670 Rule!1994) Unit!10214)

(assert (=> d!202296 (= lt!243710 (choose!4123 thiss!22590 rules!3103 lt!243530 lt!243521 suffix!1342 (rule!1845 token!491)))))

(assert (=> d!202296 (not (isEmpty!4088 rules!3103))))

(assert (=> d!202296 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!132 thiss!22590 rules!3103 lt!243530 lt!243521 suffix!1342 (rule!1845 token!491)) lt!243710)))

(declare-fun bs!69368 () Bool)

(assert (= bs!69368 d!202296))

(assert (=> bs!69368 m!832683))

(assert (=> bs!69368 m!832713))

(assert (=> bs!69368 m!832797))

(assert (=> bs!69368 m!832795))

(assert (=> bs!69368 m!832797))

(declare-fun m!833407 () Bool)

(assert (=> bs!69368 m!833407))

(declare-fun m!833409 () Bool)

(assert (=> bs!69368 m!833409))

(assert (=> b!575573 d!202296))

(declare-fun d!202322 () Bool)

(assert (=> d!202322 (= (maxPrefixOneRule!382 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))) input!2705) (Some!1447 (tuple2!6645 (Token!1931 (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) (seqFromList!1285 lt!243529)) (rule!1845 (_1!3586 (v!16306 lt!243508))) (size!4507 lt!243529) lt!243529) (_2!3586 (v!16306 lt!243508)))))))

(declare-fun lt!243711 () Unit!10214)

(assert (=> d!202322 (= lt!243711 (choose!4123 thiss!22590 rules!3103 lt!243529 input!2705 (_2!3586 (v!16306 lt!243508)) (rule!1845 (_1!3586 (v!16306 lt!243508)))))))

(assert (=> d!202322 (not (isEmpty!4088 rules!3103))))

(assert (=> d!202322 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!132 thiss!22590 rules!3103 lt!243529 input!2705 (_2!3586 (v!16306 lt!243508)) (rule!1845 (_1!3586 (v!16306 lt!243508)))) lt!243711)))

(declare-fun bs!69369 () Bool)

(assert (= bs!69369 d!202322))

(assert (=> bs!69369 m!832683))

(assert (=> bs!69369 m!832727))

(assert (=> bs!69369 m!832749))

(assert (=> bs!69369 m!832781))

(assert (=> bs!69369 m!832749))

(declare-fun m!833411 () Bool)

(assert (=> bs!69369 m!833411))

(declare-fun m!833413 () Bool)

(assert (=> bs!69369 m!833413))

(assert (=> b!575573 d!202322))

(assert (=> b!575573 d!202212))

(declare-fun bs!69370 () Bool)

(declare-fun d!202324 () Bool)

(assert (= bs!69370 (and d!202324 d!202212)))

(declare-fun lambda!15706 () Int)

(assert (=> bs!69370 (= (and (= (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) (= (toValue!1956 (transformation!1097 (rule!1845 token!491))) (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508))))))) (= lambda!15706 lambda!15704))))

(declare-fun b!576051 () Bool)

(declare-fun e!348119 () Bool)

(assert (=> b!576051 (= e!348119 true)))

(assert (=> d!202324 e!348119))

(assert (= d!202324 b!576051))

(assert (=> b!576051 (< (dynLambda!3283 order!4613 (toValue!1956 (transformation!1097 (rule!1845 token!491)))) (dynLambda!3284 order!4615 lambda!15706))))

(assert (=> b!576051 (< (dynLambda!3285 order!4617 (toChars!1815 (transformation!1097 (rule!1845 token!491)))) (dynLambda!3284 order!4615 lambda!15706))))

(assert (=> d!202324 (= (list!2351 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 token!491))) lt!243513))) (list!2351 lt!243513))))

(declare-fun lt!243712 () Unit!10214)

(assert (=> d!202324 (= lt!243712 (ForallOf!106 lambda!15706 lt!243513))))

(assert (=> d!202324 (= (lemmaSemiInverse!200 (transformation!1097 (rule!1845 token!491)) lt!243513) lt!243712)))

(declare-fun b_lambda!22463 () Bool)

(assert (=> (not b_lambda!22463) (not d!202324)))

(declare-fun t!77359 () Bool)

(declare-fun tb!50239 () Bool)

(assert (=> (and b!575601 (= (toChars!1815 (transformation!1097 (rule!1845 token!491))) (toChars!1815 (transformation!1097 (rule!1845 token!491)))) t!77359) tb!50239))

(declare-fun tp!180604 () Bool)

(declare-fun e!348124 () Bool)

(declare-fun b!576055 () Bool)

(assert (=> b!576055 (= e!348124 (and (inv!7125 (c!107826 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 token!491))) lt!243513)))) tp!180604))))

(declare-fun result!56240 () Bool)

(assert (=> tb!50239 (= result!56240 (and (inv!7126 (dynLambda!3281 (toChars!1815 (transformation!1097 (rule!1845 token!491))) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 token!491))) lt!243513))) e!348124))))

(assert (= tb!50239 b!576055))

(declare-fun m!833415 () Bool)

(assert (=> b!576055 m!833415))

(declare-fun m!833417 () Bool)

(assert (=> tb!50239 m!833417))

(assert (=> d!202324 t!77359))

(declare-fun b_and!56395 () Bool)

(assert (= b_and!56387 (and (=> t!77359 result!56240) b_and!56395)))

(declare-fun tb!50249 () Bool)

(declare-fun t!77369 () Bool)

(assert (=> (and b!575590 (= (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toChars!1815 (transformation!1097 (rule!1845 token!491)))) t!77369) tb!50249))

(declare-fun result!56250 () Bool)

(assert (= result!56250 result!56240))

(assert (=> d!202324 t!77369))

(declare-fun b_and!56397 () Bool)

(assert (= b_and!56389 (and (=> t!77369 result!56250) b_and!56397)))

(declare-fun b_lambda!22465 () Bool)

(assert (=> (not b_lambda!22465) (not d!202324)))

(declare-fun t!77371 () Bool)

(declare-fun tb!50251 () Bool)

(assert (=> (and b!575601 (= (toValue!1956 (transformation!1097 (rule!1845 token!491))) (toValue!1956 (transformation!1097 (rule!1845 token!491)))) t!77371) tb!50251))

(declare-fun result!56252 () Bool)

(assert (=> tb!50251 (= result!56252 (inv!21 (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 token!491))) lt!243513)))))

(declare-fun m!833423 () Bool)

(assert (=> tb!50251 m!833423))

(assert (=> d!202324 t!77371))

(declare-fun b_and!56399 () Bool)

(assert (= b_and!56363 (and (=> t!77371 result!56252) b_and!56399)))

(declare-fun t!77373 () Bool)

(declare-fun tb!50253 () Bool)

(assert (=> (and b!575590 (= (toValue!1956 (transformation!1097 (h!11063 rules!3103))) (toValue!1956 (transformation!1097 (rule!1845 token!491)))) t!77373) tb!50253))

(declare-fun result!56254 () Bool)

(assert (= result!56254 result!56252))

(assert (=> d!202324 t!77373))

(declare-fun b_and!56401 () Bool)

(assert (= b_and!56365 (and (=> t!77373 result!56254) b_and!56401)))

(declare-fun m!833425 () Bool)

(assert (=> d!202324 m!833425))

(declare-fun m!833427 () Bool)

(assert (=> d!202324 m!833427))

(assert (=> d!202324 m!833425))

(declare-fun m!833429 () Bool)

(assert (=> d!202324 m!833429))

(declare-fun m!833431 () Bool)

(assert (=> d!202324 m!833431))

(assert (=> d!202324 m!833427))

(declare-fun m!833433 () Bool)

(assert (=> d!202324 m!833433))

(assert (=> b!575573 d!202324))

(declare-fun b!576080 () Bool)

(declare-fun e!348139 () Bool)

(declare-fun e!348138 () Bool)

(assert (=> b!576080 (= e!348139 e!348138)))

(declare-fun res!247660 () Bool)

(assert (=> b!576080 (=> (not res!247660) (not e!348138))))

(declare-fun lt!243724 () Option!1448)

(assert (=> b!576080 (= res!247660 (matchR!578 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243724))))))))

(declare-fun b!576081 () Bool)

(assert (=> b!576081 (= e!348138 (= (size!4506 (_1!3586 (get!2160 lt!243724))) (size!4507 (originalCharacters!1136 (_1!3586 (get!2160 lt!243724))))))))

(declare-fun b!576082 () Bool)

(declare-fun e!348140 () Option!1448)

(declare-datatypes ((tuple2!6648 0))(
  ( (tuple2!6649 (_1!3588 List!5670) (_2!3588 List!5670)) )
))
(declare-fun lt!243725 () tuple2!6648)

(declare-fun size!4509 (BalanceConc!3636) Int)

(assert (=> b!576082 (= e!348140 (Some!1447 (tuple2!6645 (Token!1931 (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) (seqFromList!1285 (_1!3588 lt!243725))) (rule!1845 (_1!3586 (v!16306 lt!243508))) (size!4509 (seqFromList!1285 (_1!3588 lt!243725))) (_1!3588 lt!243725)) (_2!3588 lt!243725))))))

(declare-fun lt!243723 () Unit!10214)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!153 (Regex!1431 List!5670) Unit!10214)

(assert (=> b!576082 (= lt!243723 (longestMatchIsAcceptedByMatchOrIsEmpty!153 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) input!2705))))

(declare-fun res!247659 () Bool)

(declare-fun findLongestMatchInner!169 (Regex!1431 List!5670 Int List!5670 List!5670 Int) tuple2!6648)

(assert (=> b!576082 (= res!247659 (isEmpty!4087 (_1!3588 (findLongestMatchInner!169 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) Nil!5660 (size!4507 Nil!5660) input!2705 input!2705 (size!4507 input!2705)))))))

(declare-fun e!348137 () Bool)

(assert (=> b!576082 (=> res!247659 e!348137)))

(assert (=> b!576082 e!348137))

(declare-fun lt!243726 () Unit!10214)

(assert (=> b!576082 (= lt!243726 lt!243723)))

(declare-fun lt!243727 () Unit!10214)

(assert (=> b!576082 (= lt!243727 (lemmaSemiInverse!200 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) (seqFromList!1285 (_1!3588 lt!243725))))))

(declare-fun b!576083 () Bool)

(declare-fun res!247663 () Bool)

(assert (=> b!576083 (=> (not res!247663) (not e!348138))))

(assert (=> b!576083 (= res!247663 (< (size!4507 (_2!3586 (get!2160 lt!243724))) (size!4507 input!2705)))))

(declare-fun b!576084 () Bool)

(declare-fun res!247661 () Bool)

(assert (=> b!576084 (=> (not res!247661) (not e!348138))))

(assert (=> b!576084 (= res!247661 (= (rule!1845 (_1!3586 (get!2160 lt!243724))) (rule!1845 (_1!3586 (v!16306 lt!243508)))))))

(declare-fun d!202326 () Bool)

(assert (=> d!202326 e!348139))

(declare-fun res!247664 () Bool)

(assert (=> d!202326 (=> res!247664 e!348139)))

(assert (=> d!202326 (= res!247664 (isEmpty!4090 lt!243724))))

(assert (=> d!202326 (= lt!243724 e!348140)))

(declare-fun c!107893 () Bool)

(assert (=> d!202326 (= c!107893 (isEmpty!4087 (_1!3588 lt!243725)))))

(declare-fun findLongestMatch!148 (Regex!1431 List!5670) tuple2!6648)

(assert (=> d!202326 (= lt!243725 (findLongestMatch!148 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) input!2705))))

(assert (=> d!202326 (ruleValid!307 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))))))

(assert (=> d!202326 (= (maxPrefixOneRule!382 thiss!22590 (rule!1845 (_1!3586 (v!16306 lt!243508))) input!2705) lt!243724)))

(declare-fun b!576085 () Bool)

(assert (=> b!576085 (= e!348140 None!1447)))

(declare-fun b!576086 () Bool)

(declare-fun res!247665 () Bool)

(assert (=> b!576086 (=> (not res!247665) (not e!348138))))

(assert (=> b!576086 (= res!247665 (= (value!36131 (_1!3586 (get!2160 lt!243724))) (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (get!2160 lt!243724)))) (seqFromList!1285 (originalCharacters!1136 (_1!3586 (get!2160 lt!243724)))))))))

(declare-fun b!576087 () Bool)

(declare-fun res!247662 () Bool)

(assert (=> b!576087 (=> (not res!247662) (not e!348138))))

(assert (=> b!576087 (= res!247662 (= (++!1585 (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243724)))) (_2!3586 (get!2160 lt!243724))) input!2705))))

(declare-fun b!576088 () Bool)

(assert (=> b!576088 (= e!348137 (matchR!578 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) (_1!3588 (findLongestMatchInner!169 (regex!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))) Nil!5660 (size!4507 Nil!5660) input!2705 input!2705 (size!4507 input!2705)))))))

(assert (= (and d!202326 c!107893) b!576085))

(assert (= (and d!202326 (not c!107893)) b!576082))

(assert (= (and b!576082 (not res!247659)) b!576088))

(assert (= (and d!202326 (not res!247664)) b!576080))

(assert (= (and b!576080 res!247660) b!576087))

(assert (= (and b!576087 res!247662) b!576083))

(assert (= (and b!576083 res!247663) b!576084))

(assert (= (and b!576084 res!247661) b!576086))

(assert (= (and b!576086 res!247665) b!576081))

(declare-fun m!833435 () Bool)

(assert (=> b!576083 m!833435))

(declare-fun m!833437 () Bool)

(assert (=> b!576083 m!833437))

(assert (=> b!576083 m!832945))

(assert (=> b!576086 m!833435))

(declare-fun m!833439 () Bool)

(assert (=> b!576086 m!833439))

(assert (=> b!576086 m!833439))

(declare-fun m!833441 () Bool)

(assert (=> b!576086 m!833441))

(declare-fun m!833443 () Bool)

(assert (=> b!576088 m!833443))

(assert (=> b!576088 m!832945))

(assert (=> b!576088 m!833443))

(assert (=> b!576088 m!832945))

(declare-fun m!833445 () Bool)

(assert (=> b!576088 m!833445))

(declare-fun m!833447 () Bool)

(assert (=> b!576088 m!833447))

(assert (=> b!576084 m!833435))

(declare-fun m!833449 () Bool)

(assert (=> d!202326 m!833449))

(declare-fun m!833451 () Bool)

(assert (=> d!202326 m!833451))

(declare-fun m!833453 () Bool)

(assert (=> d!202326 m!833453))

(assert (=> d!202326 m!832729))

(assert (=> b!576080 m!833435))

(declare-fun m!833455 () Bool)

(assert (=> b!576080 m!833455))

(assert (=> b!576080 m!833455))

(declare-fun m!833457 () Bool)

(assert (=> b!576080 m!833457))

(assert (=> b!576080 m!833457))

(declare-fun m!833459 () Bool)

(assert (=> b!576080 m!833459))

(declare-fun m!833461 () Bool)

(assert (=> b!576082 m!833461))

(declare-fun m!833463 () Bool)

(assert (=> b!576082 m!833463))

(assert (=> b!576082 m!832945))

(declare-fun m!833465 () Bool)

(assert (=> b!576082 m!833465))

(assert (=> b!576082 m!833461))

(declare-fun m!833467 () Bool)

(assert (=> b!576082 m!833467))

(assert (=> b!576082 m!833461))

(declare-fun m!833469 () Bool)

(assert (=> b!576082 m!833469))

(assert (=> b!576082 m!833443))

(declare-fun m!833471 () Bool)

(assert (=> b!576082 m!833471))

(assert (=> b!576082 m!833461))

(assert (=> b!576082 m!833443))

(assert (=> b!576082 m!832945))

(assert (=> b!576082 m!833445))

(assert (=> b!576087 m!833435))

(assert (=> b!576087 m!833455))

(assert (=> b!576087 m!833455))

(assert (=> b!576087 m!833457))

(assert (=> b!576087 m!833457))

(declare-fun m!833473 () Bool)

(assert (=> b!576087 m!833473))

(assert (=> b!576081 m!833435))

(declare-fun m!833475 () Bool)

(assert (=> b!576081 m!833475))

(assert (=> b!575573 d!202326))

(declare-fun b!576089 () Bool)

(declare-fun e!348143 () Bool)

(declare-fun e!348142 () Bool)

(assert (=> b!576089 (= e!348143 e!348142)))

(declare-fun res!247667 () Bool)

(assert (=> b!576089 (=> (not res!247667) (not e!348142))))

(declare-fun lt!243729 () Option!1448)

(assert (=> b!576089 (= res!247667 (matchR!578 (regex!1097 (rule!1845 token!491)) (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243729))))))))

(declare-fun b!576090 () Bool)

(assert (=> b!576090 (= e!348142 (= (size!4506 (_1!3586 (get!2160 lt!243729))) (size!4507 (originalCharacters!1136 (_1!3586 (get!2160 lt!243729))))))))

(declare-fun b!576091 () Bool)

(declare-fun e!348144 () Option!1448)

(declare-fun lt!243730 () tuple2!6648)

(assert (=> b!576091 (= e!348144 (Some!1447 (tuple2!6645 (Token!1931 (apply!1362 (transformation!1097 (rule!1845 token!491)) (seqFromList!1285 (_1!3588 lt!243730))) (rule!1845 token!491) (size!4509 (seqFromList!1285 (_1!3588 lt!243730))) (_1!3588 lt!243730)) (_2!3588 lt!243730))))))

(declare-fun lt!243728 () Unit!10214)

(assert (=> b!576091 (= lt!243728 (longestMatchIsAcceptedByMatchOrIsEmpty!153 (regex!1097 (rule!1845 token!491)) lt!243521))))

(declare-fun res!247666 () Bool)

(assert (=> b!576091 (= res!247666 (isEmpty!4087 (_1!3588 (findLongestMatchInner!169 (regex!1097 (rule!1845 token!491)) Nil!5660 (size!4507 Nil!5660) lt!243521 lt!243521 (size!4507 lt!243521)))))))

(declare-fun e!348141 () Bool)

(assert (=> b!576091 (=> res!247666 e!348141)))

(assert (=> b!576091 e!348141))

(declare-fun lt!243731 () Unit!10214)

(assert (=> b!576091 (= lt!243731 lt!243728)))

(declare-fun lt!243732 () Unit!10214)

(assert (=> b!576091 (= lt!243732 (lemmaSemiInverse!200 (transformation!1097 (rule!1845 token!491)) (seqFromList!1285 (_1!3588 lt!243730))))))

(declare-fun b!576092 () Bool)

(declare-fun res!247670 () Bool)

(assert (=> b!576092 (=> (not res!247670) (not e!348142))))

(assert (=> b!576092 (= res!247670 (< (size!4507 (_2!3586 (get!2160 lt!243729))) (size!4507 lt!243521)))))

(declare-fun b!576093 () Bool)

(declare-fun res!247668 () Bool)

(assert (=> b!576093 (=> (not res!247668) (not e!348142))))

(assert (=> b!576093 (= res!247668 (= (rule!1845 (_1!3586 (get!2160 lt!243729))) (rule!1845 token!491)))))

(declare-fun d!202328 () Bool)

(assert (=> d!202328 e!348143))

(declare-fun res!247671 () Bool)

(assert (=> d!202328 (=> res!247671 e!348143)))

(assert (=> d!202328 (= res!247671 (isEmpty!4090 lt!243729))))

(assert (=> d!202328 (= lt!243729 e!348144)))

(declare-fun c!107894 () Bool)

(assert (=> d!202328 (= c!107894 (isEmpty!4087 (_1!3588 lt!243730)))))

(assert (=> d!202328 (= lt!243730 (findLongestMatch!148 (regex!1097 (rule!1845 token!491)) lt!243521))))

(assert (=> d!202328 (ruleValid!307 thiss!22590 (rule!1845 token!491))))

(assert (=> d!202328 (= (maxPrefixOneRule!382 thiss!22590 (rule!1845 token!491) lt!243521) lt!243729)))

(declare-fun b!576094 () Bool)

(assert (=> b!576094 (= e!348144 None!1447)))

(declare-fun b!576095 () Bool)

(declare-fun res!247672 () Bool)

(assert (=> b!576095 (=> (not res!247672) (not e!348142))))

(assert (=> b!576095 (= res!247672 (= (value!36131 (_1!3586 (get!2160 lt!243729))) (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (get!2160 lt!243729)))) (seqFromList!1285 (originalCharacters!1136 (_1!3586 (get!2160 lt!243729)))))))))

(declare-fun b!576096 () Bool)

(declare-fun res!247669 () Bool)

(assert (=> b!576096 (=> (not res!247669) (not e!348142))))

(assert (=> b!576096 (= res!247669 (= (++!1585 (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243729)))) (_2!3586 (get!2160 lt!243729))) lt!243521))))

(declare-fun b!576097 () Bool)

(assert (=> b!576097 (= e!348141 (matchR!578 (regex!1097 (rule!1845 token!491)) (_1!3588 (findLongestMatchInner!169 (regex!1097 (rule!1845 token!491)) Nil!5660 (size!4507 Nil!5660) lt!243521 lt!243521 (size!4507 lt!243521)))))))

(assert (= (and d!202328 c!107894) b!576094))

(assert (= (and d!202328 (not c!107894)) b!576091))

(assert (= (and b!576091 (not res!247666)) b!576097))

(assert (= (and d!202328 (not res!247671)) b!576089))

(assert (= (and b!576089 res!247667) b!576096))

(assert (= (and b!576096 res!247669) b!576092))

(assert (= (and b!576092 res!247670) b!576093))

(assert (= (and b!576093 res!247668) b!576095))

(assert (= (and b!576095 res!247672) b!576090))

(declare-fun m!833477 () Bool)

(assert (=> b!576092 m!833477))

(declare-fun m!833479 () Bool)

(assert (=> b!576092 m!833479))

(assert (=> b!576092 m!833003))

(assert (=> b!576095 m!833477))

(declare-fun m!833481 () Bool)

(assert (=> b!576095 m!833481))

(assert (=> b!576095 m!833481))

(declare-fun m!833483 () Bool)

(assert (=> b!576095 m!833483))

(assert (=> b!576097 m!833443))

(assert (=> b!576097 m!833003))

(assert (=> b!576097 m!833443))

(assert (=> b!576097 m!833003))

(declare-fun m!833485 () Bool)

(assert (=> b!576097 m!833485))

(declare-fun m!833487 () Bool)

(assert (=> b!576097 m!833487))

(assert (=> b!576093 m!833477))

(declare-fun m!833489 () Bool)

(assert (=> d!202328 m!833489))

(declare-fun m!833491 () Bool)

(assert (=> d!202328 m!833491))

(declare-fun m!833493 () Bool)

(assert (=> d!202328 m!833493))

(assert (=> d!202328 m!832705))

(assert (=> b!576089 m!833477))

(declare-fun m!833495 () Bool)

(assert (=> b!576089 m!833495))

(assert (=> b!576089 m!833495))

(declare-fun m!833497 () Bool)

(assert (=> b!576089 m!833497))

(assert (=> b!576089 m!833497))

(declare-fun m!833499 () Bool)

(assert (=> b!576089 m!833499))

(declare-fun m!833501 () Bool)

(assert (=> b!576091 m!833501))

(declare-fun m!833503 () Bool)

(assert (=> b!576091 m!833503))

(assert (=> b!576091 m!833003))

(declare-fun m!833505 () Bool)

(assert (=> b!576091 m!833505))

(assert (=> b!576091 m!833501))

(declare-fun m!833507 () Bool)

(assert (=> b!576091 m!833507))

(assert (=> b!576091 m!833501))

(declare-fun m!833509 () Bool)

(assert (=> b!576091 m!833509))

(assert (=> b!576091 m!833443))

(declare-fun m!833511 () Bool)

(assert (=> b!576091 m!833511))

(assert (=> b!576091 m!833501))

(assert (=> b!576091 m!833443))

(assert (=> b!576091 m!833003))

(assert (=> b!576091 m!833485))

(assert (=> b!576096 m!833477))

(assert (=> b!576096 m!833495))

(assert (=> b!576096 m!833495))

(assert (=> b!576096 m!833497))

(assert (=> b!576096 m!833497))

(declare-fun m!833513 () Bool)

(assert (=> b!576096 m!833513))

(assert (=> b!576090 m!833477))

(declare-fun m!833515 () Bool)

(assert (=> b!576090 m!833515))

(assert (=> b!575573 d!202328))

(declare-fun d!202330 () Bool)

(assert (=> d!202330 (= (apply!1362 (transformation!1097 (rule!1845 token!491)) lt!243513) (dynLambda!3282 (toValue!1956 (transformation!1097 (rule!1845 token!491))) lt!243513))))

(declare-fun b_lambda!22477 () Bool)

(assert (=> (not b_lambda!22477) (not d!202330)))

(assert (=> d!202330 t!77371))

(declare-fun b_and!56403 () Bool)

(assert (= b_and!56399 (and (=> t!77371 result!56252) b_and!56403)))

(assert (=> d!202330 t!77373))

(declare-fun b_and!56405 () Bool)

(assert (= b_and!56401 (and (=> t!77373 result!56254) b_and!56405)))

(assert (=> d!202330 m!833425))

(assert (=> b!575573 d!202330))

(declare-fun d!202332 () Bool)

(declare-fun lt!243733 () List!5670)

(assert (=> d!202332 (= (++!1585 lt!243530 lt!243733) lt!243521)))

(declare-fun e!348145 () List!5670)

(assert (=> d!202332 (= lt!243733 e!348145)))

(declare-fun c!107895 () Bool)

(assert (=> d!202332 (= c!107895 ((_ is Cons!5660) lt!243530))))

(assert (=> d!202332 (>= (size!4507 lt!243521) (size!4507 lt!243530))))

(assert (=> d!202332 (= (getSuffix!250 lt!243521 lt!243530) lt!243733)))

(declare-fun b!576098 () Bool)

(assert (=> b!576098 (= e!348145 (getSuffix!250 (tail!751 lt!243521) (t!77311 lt!243530)))))

(declare-fun b!576099 () Bool)

(assert (=> b!576099 (= e!348145 lt!243521)))

(assert (= (and d!202332 c!107895) b!576098))

(assert (= (and d!202332 (not c!107895)) b!576099))

(declare-fun m!833517 () Bool)

(assert (=> d!202332 m!833517))

(assert (=> d!202332 m!833003))

(assert (=> d!202332 m!832713))

(assert (=> b!576098 m!832997))

(assert (=> b!576098 m!832997))

(declare-fun m!833519 () Bool)

(assert (=> b!576098 m!833519))

(assert (=> b!575573 d!202332))

(declare-fun d!202334 () Bool)

(declare-fun lt!243734 () Int)

(assert (=> d!202334 (>= lt!243734 0)))

(declare-fun e!348146 () Int)

(assert (=> d!202334 (= lt!243734 e!348146)))

(declare-fun c!107896 () Bool)

(assert (=> d!202334 (= c!107896 ((_ is Nil!5660) (originalCharacters!1136 (_1!3586 (v!16306 lt!243508)))))))

(assert (=> d!202334 (= (size!4507 (originalCharacters!1136 (_1!3586 (v!16306 lt!243508)))) lt!243734)))

(declare-fun b!576100 () Bool)

(assert (=> b!576100 (= e!348146 0)))

(declare-fun b!576101 () Bool)

(assert (=> b!576101 (= e!348146 (+ 1 (size!4507 (t!77311 (originalCharacters!1136 (_1!3586 (v!16306 lt!243508)))))))))

(assert (= (and d!202334 c!107896) b!576100))

(assert (= (and d!202334 (not c!107896)) b!576101))

(declare-fun m!833521 () Bool)

(assert (=> b!576101 m!833521))

(assert (=> b!575594 d!202334))

(declare-fun d!202336 () Bool)

(declare-fun c!107901 () Bool)

(assert (=> d!202336 (= c!107901 ((_ is IntegerValue!3363) (value!36131 token!491)))))

(declare-fun e!348154 () Bool)

(assert (=> d!202336 (= (inv!21 (value!36131 token!491)) e!348154)))

(declare-fun b!576112 () Bool)

(declare-fun e!348155 () Bool)

(assert (=> b!576112 (= e!348154 e!348155)))

(declare-fun c!107902 () Bool)

(assert (=> b!576112 (= c!107902 ((_ is IntegerValue!3364) (value!36131 token!491)))))

(declare-fun b!576113 () Bool)

(declare-fun res!247675 () Bool)

(declare-fun e!348153 () Bool)

(assert (=> b!576113 (=> res!247675 e!348153)))

(assert (=> b!576113 (= res!247675 (not ((_ is IntegerValue!3365) (value!36131 token!491))))))

(assert (=> b!576113 (= e!348155 e!348153)))

(declare-fun b!576114 () Bool)

(declare-fun inv!17 (TokenValue!1121) Bool)

(assert (=> b!576114 (= e!348155 (inv!17 (value!36131 token!491)))))

(declare-fun b!576115 () Bool)

(declare-fun inv!16 (TokenValue!1121) Bool)

(assert (=> b!576115 (= e!348154 (inv!16 (value!36131 token!491)))))

(declare-fun b!576116 () Bool)

(declare-fun inv!15 (TokenValue!1121) Bool)

(assert (=> b!576116 (= e!348153 (inv!15 (value!36131 token!491)))))

(assert (= (and d!202336 c!107901) b!576115))

(assert (= (and d!202336 (not c!107901)) b!576112))

(assert (= (and b!576112 c!107902) b!576114))

(assert (= (and b!576112 (not c!107902)) b!576113))

(assert (= (and b!576113 (not res!247675)) b!576116))

(declare-fun m!833523 () Bool)

(assert (=> b!576114 m!833523))

(declare-fun m!833525 () Bool)

(assert (=> b!576115 m!833525))

(declare-fun m!833527 () Bool)

(assert (=> b!576116 m!833527))

(assert (=> b!575583 d!202336))

(declare-fun d!202338 () Bool)

(assert (=> d!202338 (= (isDefined!1259 lt!243519) (not (isEmpty!4090 lt!243519)))))

(declare-fun bs!69371 () Bool)

(assert (= bs!69371 d!202338))

(declare-fun m!833529 () Bool)

(assert (=> bs!69371 m!833529))

(assert (=> b!575593 d!202338))

(declare-fun b!576117 () Bool)

(declare-fun res!247680 () Bool)

(declare-fun e!348158 () Bool)

(assert (=> b!576117 (=> (not res!247680) (not e!348158))))

(declare-fun lt!243735 () Option!1448)

(assert (=> b!576117 (= res!247680 (= (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243735)))) (originalCharacters!1136 (_1!3586 (get!2160 lt!243735)))))))

(declare-fun b!576118 () Bool)

(declare-fun e!348157 () Option!1448)

(declare-fun lt!243737 () Option!1448)

(declare-fun lt!243738 () Option!1448)

(assert (=> b!576118 (= e!348157 (ite (and ((_ is None!1447) lt!243737) ((_ is None!1447) lt!243738)) None!1447 (ite ((_ is None!1447) lt!243738) lt!243737 (ite ((_ is None!1447) lt!243737) lt!243738 (ite (>= (size!4506 (_1!3586 (v!16306 lt!243737))) (size!4506 (_1!3586 (v!16306 lt!243738)))) lt!243737 lt!243738)))))))

(declare-fun call!39827 () Option!1448)

(assert (=> b!576118 (= lt!243737 call!39827)))

(assert (=> b!576118 (= lt!243738 (maxPrefix!681 thiss!22590 (t!77313 rules!3103) lt!243521))))

(declare-fun b!576119 () Bool)

(declare-fun e!348156 () Bool)

(assert (=> b!576119 (= e!348156 e!348158)))

(declare-fun res!247681 () Bool)

(assert (=> b!576119 (=> (not res!247681) (not e!348158))))

(assert (=> b!576119 (= res!247681 (isDefined!1259 lt!243735))))

(declare-fun b!576120 () Bool)

(declare-fun res!247678 () Bool)

(assert (=> b!576120 (=> (not res!247678) (not e!348158))))

(assert (=> b!576120 (= res!247678 (< (size!4507 (_2!3586 (get!2160 lt!243735))) (size!4507 lt!243521)))))

(declare-fun d!202340 () Bool)

(assert (=> d!202340 e!348156))

(declare-fun res!247682 () Bool)

(assert (=> d!202340 (=> res!247682 e!348156)))

(assert (=> d!202340 (= res!247682 (isEmpty!4090 lt!243735))))

(assert (=> d!202340 (= lt!243735 e!348157)))

(declare-fun c!107903 () Bool)

(assert (=> d!202340 (= c!107903 (and ((_ is Cons!5662) rules!3103) ((_ is Nil!5662) (t!77313 rules!3103))))))

(declare-fun lt!243739 () Unit!10214)

(declare-fun lt!243736 () Unit!10214)

(assert (=> d!202340 (= lt!243739 lt!243736)))

(assert (=> d!202340 (isPrefix!731 lt!243521 lt!243521)))

(assert (=> d!202340 (= lt!243736 (lemmaIsPrefixRefl!469 lt!243521 lt!243521))))

(assert (=> d!202340 (rulesValidInductive!392 thiss!22590 rules!3103)))

(assert (=> d!202340 (= (maxPrefix!681 thiss!22590 rules!3103 lt!243521) lt!243735)))

(declare-fun b!576121 () Bool)

(declare-fun res!247679 () Bool)

(assert (=> b!576121 (=> (not res!247679) (not e!348158))))

(assert (=> b!576121 (= res!247679 (matchR!578 (regex!1097 (rule!1845 (_1!3586 (get!2160 lt!243735)))) (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243735))))))))

(declare-fun bm!39822 () Bool)

(assert (=> bm!39822 (= call!39827 (maxPrefixOneRule!382 thiss!22590 (h!11063 rules!3103) lt!243521))))

(declare-fun b!576122 () Bool)

(declare-fun res!247677 () Bool)

(assert (=> b!576122 (=> (not res!247677) (not e!348158))))

(assert (=> b!576122 (= res!247677 (= (value!36131 (_1!3586 (get!2160 lt!243735))) (apply!1362 (transformation!1097 (rule!1845 (_1!3586 (get!2160 lt!243735)))) (seqFromList!1285 (originalCharacters!1136 (_1!3586 (get!2160 lt!243735)))))))))

(declare-fun b!576123 () Bool)

(declare-fun res!247676 () Bool)

(assert (=> b!576123 (=> (not res!247676) (not e!348158))))

(assert (=> b!576123 (= res!247676 (= (++!1585 (list!2351 (charsOf!726 (_1!3586 (get!2160 lt!243735)))) (_2!3586 (get!2160 lt!243735))) lt!243521))))

(declare-fun b!576124 () Bool)

(assert (=> b!576124 (= e!348157 call!39827)))

(declare-fun b!576125 () Bool)

(assert (=> b!576125 (= e!348158 (contains!1327 rules!3103 (rule!1845 (_1!3586 (get!2160 lt!243735)))))))

(assert (= (and d!202340 c!107903) b!576124))

(assert (= (and d!202340 (not c!107903)) b!576118))

(assert (= (or b!576124 b!576118) bm!39822))

(assert (= (and d!202340 (not res!247682)) b!576119))

(assert (= (and b!576119 res!247681) b!576117))

(assert (= (and b!576117 res!247680) b!576120))

(assert (= (and b!576120 res!247678) b!576123))

(assert (= (and b!576123 res!247676) b!576122))

(assert (= (and b!576122 res!247677) b!576121))

(assert (= (and b!576121 res!247679) b!576125))

(declare-fun m!833531 () Bool)

(assert (=> b!576117 m!833531))

(declare-fun m!833533 () Bool)

(assert (=> b!576117 m!833533))

(assert (=> b!576117 m!833533))

(declare-fun m!833535 () Bool)

(assert (=> b!576117 m!833535))

(declare-fun m!833537 () Bool)

(assert (=> d!202340 m!833537))

(declare-fun m!833539 () Bool)

(assert (=> d!202340 m!833539))

(declare-fun m!833541 () Bool)

(assert (=> d!202340 m!833541))

(assert (=> d!202340 m!833279))

(assert (=> b!576121 m!833531))

(assert (=> b!576121 m!833533))

(assert (=> b!576121 m!833533))

(assert (=> b!576121 m!833535))

(assert (=> b!576121 m!833535))

(declare-fun m!833543 () Bool)

(assert (=> b!576121 m!833543))

(assert (=> b!576123 m!833531))

(assert (=> b!576123 m!833533))

(assert (=> b!576123 m!833533))

(assert (=> b!576123 m!833535))

(assert (=> b!576123 m!833535))

(declare-fun m!833545 () Bool)

(assert (=> b!576123 m!833545))

(assert (=> b!576125 m!833531))

(declare-fun m!833547 () Bool)

(assert (=> b!576125 m!833547))

(declare-fun m!833549 () Bool)

(assert (=> bm!39822 m!833549))

(assert (=> b!576122 m!833531))

(declare-fun m!833551 () Bool)

(assert (=> b!576122 m!833551))

(assert (=> b!576122 m!833551))

(declare-fun m!833553 () Bool)

(assert (=> b!576122 m!833553))

(declare-fun m!833555 () Bool)

(assert (=> b!576118 m!833555))

(declare-fun m!833557 () Bool)

(assert (=> b!576119 m!833557))

(assert (=> b!576120 m!833531))

(declare-fun m!833559 () Bool)

(assert (=> b!576120 m!833559))

(assert (=> b!576120 m!833003))

(assert (=> b!575593 d!202340))

(declare-fun b!576129 () Bool)

(declare-fun lt!243740 () List!5670)

(declare-fun e!348159 () Bool)

(assert (=> b!576129 (= e!348159 (or (not (= suffix!1342 Nil!5660)) (= lt!243740 input!2705)))))

(declare-fun d!202342 () Bool)

(assert (=> d!202342 e!348159))

(declare-fun res!247683 () Bool)

(assert (=> d!202342 (=> (not res!247683) (not e!348159))))

(assert (=> d!202342 (= res!247683 (= (content!999 lt!243740) ((_ map or) (content!999 input!2705) (content!999 suffix!1342))))))

(declare-fun e!348160 () List!5670)

(assert (=> d!202342 (= lt!243740 e!348160)))

(declare-fun c!107904 () Bool)

(assert (=> d!202342 (= c!107904 ((_ is Nil!5660) input!2705))))

(assert (=> d!202342 (= (++!1585 input!2705 suffix!1342) lt!243740)))

(declare-fun b!576128 () Bool)

(declare-fun res!247684 () Bool)

(assert (=> b!576128 (=> (not res!247684) (not e!348159))))

(assert (=> b!576128 (= res!247684 (= (size!4507 lt!243740) (+ (size!4507 input!2705) (size!4507 suffix!1342))))))

(declare-fun b!576126 () Bool)

(assert (=> b!576126 (= e!348160 suffix!1342)))

(declare-fun b!576127 () Bool)

(assert (=> b!576127 (= e!348160 (Cons!5660 (h!11061 input!2705) (++!1585 (t!77311 input!2705) suffix!1342)))))

(assert (= (and d!202342 c!107904) b!576126))

(assert (= (and d!202342 (not c!107904)) b!576127))

(assert (= (and d!202342 res!247683) b!576128))

(assert (= (and b!576128 res!247684) b!576129))

(declare-fun m!833561 () Bool)

(assert (=> d!202342 m!833561))

(declare-fun m!833563 () Bool)

(assert (=> d!202342 m!833563))

(assert (=> d!202342 m!833305))

(declare-fun m!833565 () Bool)

(assert (=> b!576128 m!833565))

(assert (=> b!576128 m!832945))

(assert (=> b!576128 m!833309))

(declare-fun m!833567 () Bool)

(assert (=> b!576127 m!833567))

(assert (=> b!575593 d!202342))

(declare-fun b!576140 () Bool)

(declare-fun b_free!16033 () Bool)

(declare-fun b_next!16049 () Bool)

(assert (=> b!576140 (= b_free!16033 (not b_next!16049))))

(declare-fun tb!50255 () Bool)

(declare-fun t!77376 () Bool)

(assert (=> (and b!576140 (= (toValue!1956 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toValue!1956 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77376) tb!50255))

(declare-fun result!56258 () Bool)

(assert (= result!56258 result!56194))

(assert (=> d!202166 t!77376))

(assert (=> d!202212 t!77376))

(declare-fun tb!50257 () Bool)

(declare-fun t!77378 () Bool)

(assert (=> (and b!576140 (= (toValue!1956 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toValue!1956 (transformation!1097 (rule!1845 token!491)))) t!77378) tb!50257))

(declare-fun result!56260 () Bool)

(assert (= result!56260 result!56252))

(assert (=> d!202324 t!77378))

(assert (=> d!202330 t!77378))

(declare-fun b_and!56407 () Bool)

(declare-fun tp!180623 () Bool)

(assert (=> b!576140 (= tp!180623 (and (=> t!77376 result!56258) (=> t!77378 result!56260) b_and!56407))))

(declare-fun b_free!16035 () Bool)

(declare-fun b_next!16051 () Bool)

(assert (=> b!576140 (= b_free!16035 (not b_next!16051))))

(declare-fun tb!50259 () Bool)

(declare-fun t!77380 () Bool)

(assert (=> (and b!576140 (= (toChars!1815 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77380) tb!50259))

(declare-fun result!56262 () Bool)

(assert (= result!56262 result!56214))

(assert (=> d!202212 t!77380))

(declare-fun t!77382 () Bool)

(declare-fun tb!50261 () Bool)

(assert (=> (and b!576140 (= (toChars!1815 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toChars!1815 (transformation!1097 (rule!1845 token!491)))) t!77382) tb!50261))

(declare-fun result!56264 () Bool)

(assert (= result!56264 result!56188))

(assert (=> d!202114 t!77382))

(assert (=> b!575982 t!77382))

(declare-fun t!77384 () Bool)

(declare-fun tb!50263 () Bool)

(assert (=> (and b!576140 (= (toChars!1815 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toChars!1815 (transformation!1097 (rule!1845 (_1!3586 (v!16306 lt!243508)))))) t!77384) tb!50263))

(declare-fun result!56266 () Bool)

(assert (= result!56266 result!56200))

(assert (=> d!202176 t!77384))

(declare-fun t!77386 () Bool)

(declare-fun tb!50265 () Bool)

(assert (=> (and b!576140 (= (toChars!1815 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toChars!1815 (transformation!1097 (rule!1845 token!491)))) t!77386) tb!50265))

(declare-fun result!56268 () Bool)

(assert (= result!56268 result!56240))

(assert (=> d!202324 t!77386))

(declare-fun b_and!56409 () Bool)

(declare-fun tp!180621 () Bool)

(assert (=> b!576140 (= tp!180621 (and (=> t!77382 result!56264) (=> t!77384 result!56266) (=> t!77380 result!56262) (=> t!77386 result!56268) b_and!56409))))

(declare-fun e!348169 () Bool)

(assert (=> b!576140 (= e!348169 (and tp!180623 tp!180621))))

(declare-fun tp!180620 () Bool)

(declare-fun b!576139 () Bool)

(declare-fun e!348171 () Bool)

(assert (=> b!576139 (= e!348171 (and tp!180620 (inv!7118 (tag!1359 (h!11063 (t!77313 rules!3103)))) (inv!7122 (transformation!1097 (h!11063 (t!77313 rules!3103)))) e!348169))))

(declare-fun b!576138 () Bool)

(declare-fun e!348170 () Bool)

(declare-fun tp!180622 () Bool)

(assert (=> b!576138 (= e!348170 (and e!348171 tp!180622))))

(assert (=> b!575587 (= tp!180562 e!348170)))

(assert (= b!576139 b!576140))

(assert (= b!576138 b!576139))

(assert (= (and b!575587 ((_ is Cons!5662) (t!77313 rules!3103))) b!576138))

(declare-fun m!833569 () Bool)

(assert (=> b!576139 m!833569))

(declare-fun m!833571 () Bool)

(assert (=> b!576139 m!833571))

(declare-fun b!576145 () Bool)

(declare-fun e!348175 () Bool)

(declare-fun tp!180626 () Bool)

(assert (=> b!576145 (= e!348175 (and tp_is_empty!3217 tp!180626))))

(assert (=> b!575576 (= tp!180553 e!348175)))

(assert (= (and b!575576 ((_ is Cons!5660) (t!77311 input!2705))) b!576145))

(declare-fun b!576158 () Bool)

(declare-fun e!348178 () Bool)

(declare-fun tp!180641 () Bool)

(assert (=> b!576158 (= e!348178 tp!180641)))

(declare-fun b!576159 () Bool)

(declare-fun tp!180640 () Bool)

(declare-fun tp!180638 () Bool)

(assert (=> b!576159 (= e!348178 (and tp!180640 tp!180638))))

(assert (=> b!575575 (= tp!180560 e!348178)))

(declare-fun b!576157 () Bool)

(declare-fun tp!180637 () Bool)

(declare-fun tp!180639 () Bool)

(assert (=> b!576157 (= e!348178 (and tp!180637 tp!180639))))

(declare-fun b!576156 () Bool)

(assert (=> b!576156 (= e!348178 tp_is_empty!3217)))

(assert (= (and b!575575 ((_ is ElementMatch!1431) (regex!1097 (rule!1845 token!491)))) b!576156))

(assert (= (and b!575575 ((_ is Concat!2552) (regex!1097 (rule!1845 token!491)))) b!576157))

(assert (= (and b!575575 ((_ is Star!1431) (regex!1097 (rule!1845 token!491)))) b!576158))

(assert (= (and b!575575 ((_ is Union!1431) (regex!1097 (rule!1845 token!491)))) b!576159))

(declare-fun b!576160 () Bool)

(declare-fun e!348179 () Bool)

(declare-fun tp!180642 () Bool)

(assert (=> b!576160 (= e!348179 (and tp_is_empty!3217 tp!180642))))

(assert (=> b!575569 (= tp!180556 e!348179)))

(assert (= (and b!575569 ((_ is Cons!5660) (t!77311 suffix!1342))) b!576160))

(declare-fun b!576161 () Bool)

(declare-fun e!348180 () Bool)

(declare-fun tp!180643 () Bool)

(assert (=> b!576161 (= e!348180 (and tp_is_empty!3217 tp!180643))))

(assert (=> b!575583 (= tp!180559 e!348180)))

(assert (= (and b!575583 ((_ is Cons!5660) (originalCharacters!1136 token!491))) b!576161))

(declare-fun b!576164 () Bool)

(declare-fun e!348181 () Bool)

(declare-fun tp!180648 () Bool)

(assert (=> b!576164 (= e!348181 tp!180648)))

(declare-fun b!576165 () Bool)

(declare-fun tp!180647 () Bool)

(declare-fun tp!180645 () Bool)

(assert (=> b!576165 (= e!348181 (and tp!180647 tp!180645))))

(assert (=> b!575599 (= tp!180555 e!348181)))

(declare-fun b!576163 () Bool)

(declare-fun tp!180644 () Bool)

(declare-fun tp!180646 () Bool)

(assert (=> b!576163 (= e!348181 (and tp!180644 tp!180646))))

(declare-fun b!576162 () Bool)

(assert (=> b!576162 (= e!348181 tp_is_empty!3217)))

(assert (= (and b!575599 ((_ is ElementMatch!1431) (regex!1097 (h!11063 rules!3103)))) b!576162))

(assert (= (and b!575599 ((_ is Concat!2552) (regex!1097 (h!11063 rules!3103)))) b!576163))

(assert (= (and b!575599 ((_ is Star!1431) (regex!1097 (h!11063 rules!3103)))) b!576164))

(assert (= (and b!575599 ((_ is Union!1431) (regex!1097 (h!11063 rules!3103)))) b!576165))

(declare-fun b_lambda!22479 () Bool)

(assert (= b_lambda!22463 (or (and b!575601 b_free!16023) (and b!575590 b_free!16027 (= (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toChars!1815 (transformation!1097 (rule!1845 token!491))))) (and b!576140 b_free!16035 (= (toChars!1815 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toChars!1815 (transformation!1097 (rule!1845 token!491))))) b_lambda!22479)))

(declare-fun b_lambda!22481 () Bool)

(assert (= b_lambda!22465 (or (and b!575601 b_free!16021) (and b!575590 b_free!16025 (= (toValue!1956 (transformation!1097 (h!11063 rules!3103))) (toValue!1956 (transformation!1097 (rule!1845 token!491))))) (and b!576140 b_free!16033 (= (toValue!1956 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toValue!1956 (transformation!1097 (rule!1845 token!491))))) b_lambda!22481)))

(declare-fun b_lambda!22483 () Bool)

(assert (= b_lambda!22461 (or (and b!575601 b_free!16023) (and b!575590 b_free!16027 (= (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toChars!1815 (transformation!1097 (rule!1845 token!491))))) (and b!576140 b_free!16035 (= (toChars!1815 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toChars!1815 (transformation!1097 (rule!1845 token!491))))) b_lambda!22483)))

(declare-fun b_lambda!22485 () Bool)

(assert (= b_lambda!22435 (or (and b!575601 b_free!16023) (and b!575590 b_free!16027 (= (toChars!1815 (transformation!1097 (h!11063 rules!3103))) (toChars!1815 (transformation!1097 (rule!1845 token!491))))) (and b!576140 b_free!16035 (= (toChars!1815 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toChars!1815 (transformation!1097 (rule!1845 token!491))))) b_lambda!22485)))

(declare-fun b_lambda!22487 () Bool)

(assert (= b_lambda!22477 (or (and b!575601 b_free!16021) (and b!575590 b_free!16025 (= (toValue!1956 (transformation!1097 (h!11063 rules!3103))) (toValue!1956 (transformation!1097 (rule!1845 token!491))))) (and b!576140 b_free!16033 (= (toValue!1956 (transformation!1097 (h!11063 (t!77313 rules!3103)))) (toValue!1956 (transformation!1097 (rule!1845 token!491))))) b_lambda!22487)))

(check-sat (not b_next!16049) (not b!576093) (not b!576127) (not tb!50203) (not d!202100) (not b!576087) (not b_lambda!22479) (not b!575613) (not b!576139) (not b!576158) (not d!202208) (not b!575753) (not d!202328) (not d!202202) (not b!576163) (not b!575761) (not d!202292) b_and!56407 (not b!575890) (not b!575959) (not b!576115) (not d!202178) (not d!202148) (not bm!39821) (not b_lambda!22441) (not tb!50219) (not b!575965) (not b!576164) (not b!576088) (not b!576084) (not b!576121) (not b!575735) (not b!575982) b_and!56405 (not d!202204) (not b!576089) (not b!575892) (not d!202340) b_and!56409 (not b!575887) (not d!202326) (not b!575955) (not d!202184) (not b!575663) (not d!202192) (not b!576117) (not b!575755) (not d!202322) (not b!575741) (not d!202226) (not b!576082) (not b!576145) (not b!576119) (not bm!39818) (not d!202096) (not b!575707) (not b_next!16041) (not b!575739) b_and!56403 (not b_next!16037) (not b_lambda!22447) (not b!575738) (not b!575894) (not b_next!16051) (not b!575760) (not b!576165) (not b!575708) (not b!575886) (not d!202168) (not d!202146) (not b!575737) (not b_lambda!22481) (not d!202140) (not b!575751) (not b!576101) (not b!576095) (not b!576090) (not b!576157) (not b_next!16039) (not b!575969) (not b_lambda!22483) (not b!575726) (not b!575962) (not b!575607) (not b!575958) (not b!575727) (not tb!50239) (not b!576125) (not bm!39822) (not b!576116) (not d!202274) (not b!575664) (not b!575742) (not b!576138) (not b!575834) (not b!575956) (not d!202288) (not b!576092) (not d!202276) (not b!575968) (not b!576160) (not d!202296) (not b!576086) (not b!575954) (not b!575721) (not b!575743) (not d!202206) (not b!576083) (not b!575706) (not b!575983) (not b!576080) (not b!575884) (not b!576114) (not tb!50251) tp_is_empty!3217 (not b!575754) (not b!576161) (not b!576096) (not b!575986) (not d!202212) (not b!576081) (not b_lambda!22485) (not b_lambda!22449) (not d!202342) (not b!576091) (not d!202110) (not b_next!16043) (not b!575640) (not d!202176) b_and!56397 b_and!56395 (not d!202230) (not b_lambda!22487) (not b!575638) (not d!202294) (not b!575960) (not d!202156) (not d!202324) (not d!202338) (not d!202332) (not d!202174) (not d!202210) (not d!202114) (not tb!50199) (not b_lambda!22439) (not b!576159) (not b!576055) (not b!576123) (not b!576120) (not b!575645) (not b!575957) (not d!202190) (not b!576098) (not tb!50207) (not b!576122) (not b!575733) (not d!202180) (not b!575757) (not d!202224) (not b!576097) (not d!202138) (not b!576128) (not b!575744) (not d!202188) (not d!202132) (not d!202194) (not b!576118) (not d!202172) (not b!575728))
(check-sat b_and!56407 b_and!56405 b_and!56409 (not b_next!16051) (not b_next!16039) (not b_next!16049) (not b_next!16037) (not b_next!16041) b_and!56403 (not b_next!16043) b_and!56395 b_and!56397)
