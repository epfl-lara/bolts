; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374100 () Bool)

(assert start!374100)

(declare-fun b!3974679 () Bool)

(declare-fun b_free!110193 () Bool)

(declare-fun b_next!110897 () Bool)

(assert (=> b!3974679 (= b_free!110193 (not b_next!110897))))

(declare-fun tp!1211856 () Bool)

(declare-fun b_and!305535 () Bool)

(assert (=> b!3974679 (= tp!1211856 b_and!305535)))

(declare-fun b_free!110195 () Bool)

(declare-fun b_next!110899 () Bool)

(assert (=> b!3974679 (= b_free!110195 (not b_next!110899))))

(declare-fun tp!1211858 () Bool)

(declare-fun b_and!305537 () Bool)

(assert (=> b!3974679 (= tp!1211858 b_and!305537)))

(declare-fun b!3974668 () Bool)

(declare-fun b_free!110197 () Bool)

(declare-fun b_next!110901 () Bool)

(assert (=> b!3974668 (= b_free!110197 (not b_next!110901))))

(declare-fun tp!1211853 () Bool)

(declare-fun b_and!305539 () Bool)

(assert (=> b!3974668 (= tp!1211853 b_and!305539)))

(declare-fun b_free!110199 () Bool)

(declare-fun b_next!110903 () Bool)

(assert (=> b!3974668 (= b_free!110199 (not b_next!110903))))

(declare-fun tp!1211860 () Bool)

(declare-fun b_and!305541 () Bool)

(assert (=> b!3974668 (= tp!1211860 b_and!305541)))

(declare-fun b!3974660 () Bool)

(declare-fun e!2462468 () Bool)

(declare-fun e!2462456 () Bool)

(assert (=> b!3974660 (= e!2462468 e!2462456)))

(declare-fun res!1609507 () Bool)

(assert (=> b!3974660 (=> res!1609507 e!2462456)))

(declare-datatypes ((C!23368 0))(
  ( (C!23369 (val!13778 Int)) )
))
(declare-datatypes ((List!42574 0))(
  ( (Nil!42450) (Cons!42450 (h!47870 C!23368) (t!331037 List!42574)) )
))
(declare-fun lt!1393072 () List!42574)

(declare-fun lt!1393080 () List!42574)

(declare-fun lt!1393057 () List!42574)

(assert (=> b!3974660 (= res!1609507 (or (not (= lt!1393080 lt!1393072)) (not (= lt!1393080 lt!1393057))))))

(assert (=> b!3974660 (= lt!1393072 lt!1393057)))

(declare-fun lt!1393061 () List!42574)

(declare-fun lt!1393063 () List!42574)

(declare-fun ++!11088 (List!42574 List!42574) List!42574)

(assert (=> b!3974660 (= lt!1393057 (++!11088 lt!1393061 lt!1393063))))

(declare-fun lt!1393064 () List!42574)

(declare-fun suffix!1299 () List!42574)

(assert (=> b!3974660 (= lt!1393072 (++!11088 lt!1393064 suffix!1299))))

(declare-fun lt!1393084 () List!42574)

(assert (=> b!3974660 (= lt!1393063 (++!11088 lt!1393084 suffix!1299))))

(declare-datatypes ((Unit!61100 0))(
  ( (Unit!61101) )
))
(declare-fun lt!1393083 () Unit!61100)

(declare-fun lemmaConcatAssociativity!2408 (List!42574 List!42574 List!42574) Unit!61100)

(assert (=> b!3974660 (= lt!1393083 (lemmaConcatAssociativity!2408 lt!1393061 lt!1393084 suffix!1299))))

(declare-fun b!3974661 () Bool)

(declare-fun e!2462462 () Bool)

(declare-fun tp_is_empty!20153 () Bool)

(declare-fun tp!1211861 () Bool)

(assert (=> b!3974661 (= e!2462462 (and tp_is_empty!20153 tp!1211861))))

(declare-fun b!3974662 () Bool)

(declare-fun e!2462460 () Bool)

(declare-fun e!2462467 () Bool)

(assert (=> b!3974662 (= e!2462460 e!2462467)))

(declare-fun res!1609505 () Bool)

(assert (=> b!3974662 (=> res!1609505 e!2462467)))

(declare-fun lt!1393073 () List!42574)

(assert (=> b!3974662 (= res!1609505 (not (= lt!1393073 lt!1393080)))))

(declare-fun lt!1393071 () List!42574)

(assert (=> b!3974662 (= lt!1393073 (++!11088 lt!1393061 lt!1393071))))

(declare-fun getSuffix!2204 (List!42574 List!42574) List!42574)

(assert (=> b!3974662 (= lt!1393071 (getSuffix!2204 lt!1393080 lt!1393061))))

(declare-fun e!2462450 () Bool)

(assert (=> b!3974662 e!2462450))

(declare-fun res!1609502 () Bool)

(assert (=> b!3974662 (=> (not res!1609502) (not e!2462450))))

(declare-fun isPrefix!3773 (List!42574 List!42574) Bool)

(assert (=> b!3974662 (= res!1609502 (isPrefix!3773 lt!1393080 lt!1393080))))

(declare-fun lt!1393055 () Unit!61100)

(declare-fun lemmaIsPrefixRefl!2365 (List!42574 List!42574) Unit!61100)

(assert (=> b!3974662 (= lt!1393055 (lemmaIsPrefixRefl!2365 lt!1393080 lt!1393080))))

(declare-fun res!1609512 () Bool)

(declare-fun e!2462466 () Bool)

(assert (=> start!374100 (=> (not res!1609512) (not e!2462466))))

(declare-datatypes ((LexerInterface!6275 0))(
  ( (LexerInterfaceExt!6272 (__x!26049 Int)) (Lexer!6273) )
))
(declare-fun thiss!21717 () LexerInterface!6275)

(get-info :version)

(assert (=> start!374100 (= res!1609512 ((_ is Lexer!6273) thiss!21717))))

(assert (=> start!374100 e!2462466))

(assert (=> start!374100 e!2462462))

(declare-datatypes ((IArray!25799 0))(
  ( (IArray!25800 (innerList!12957 List!42574)) )
))
(declare-datatypes ((Conc!12897 0))(
  ( (Node!12897 (left!32134 Conc!12897) (right!32464 Conc!12897) (csize!26024 Int) (cheight!13108 Int)) (Leaf!19947 (xs!16203 IArray!25799) (csize!26025 Int)) (Empty!12897) )
))
(declare-datatypes ((BalanceConc!25388 0))(
  ( (BalanceConc!25389 (c!689126 Conc!12897)) )
))
(declare-datatypes ((List!42575 0))(
  ( (Nil!42451) (Cons!42451 (h!47871 (_ BitVec 16)) (t!331038 List!42575)) )
))
(declare-datatypes ((TokenValue!6916 0))(
  ( (FloatLiteralValue!13832 (text!48857 List!42575)) (TokenValueExt!6915 (__x!26050 Int)) (Broken!34580 (value!211159 List!42575)) (Object!7039) (End!6916) (Def!6916) (Underscore!6916) (Match!6916) (Else!6916) (Error!6916) (Case!6916) (If!6916) (Extends!6916) (Abstract!6916) (Class!6916) (Val!6916) (DelimiterValue!13832 (del!6976 List!42575)) (KeywordValue!6922 (value!211160 List!42575)) (CommentValue!13832 (value!211161 List!42575)) (WhitespaceValue!13832 (value!211162 List!42575)) (IndentationValue!6916 (value!211163 List!42575)) (String!48297) (Int32!6916) (Broken!34581 (value!211164 List!42575)) (Boolean!6917) (Unit!61102) (OperatorValue!6919 (op!6976 List!42575)) (IdentifierValue!13832 (value!211165 List!42575)) (IdentifierValue!13833 (value!211166 List!42575)) (WhitespaceValue!13833 (value!211167 List!42575)) (True!13832) (False!13832) (Broken!34582 (value!211168 List!42575)) (Broken!34583 (value!211169 List!42575)) (True!13833) (RightBrace!6916) (RightBracket!6916) (Colon!6916) (Null!6916) (Comma!6916) (LeftBracket!6916) (False!13833) (LeftBrace!6916) (ImaginaryLiteralValue!6916 (text!48858 List!42575)) (StringLiteralValue!20748 (value!211170 List!42575)) (EOFValue!6916 (value!211171 List!42575)) (IdentValue!6916 (value!211172 List!42575)) (DelimiterValue!13833 (value!211173 List!42575)) (DedentValue!6916 (value!211174 List!42575)) (NewLineValue!6916 (value!211175 List!42575)) (IntegerValue!20748 (value!211176 (_ BitVec 32)) (text!48859 List!42575)) (IntegerValue!20749 (value!211177 Int) (text!48860 List!42575)) (Times!6916) (Or!6916) (Equal!6916) (Minus!6916) (Broken!34584 (value!211178 List!42575)) (And!6916) (Div!6916) (LessEqual!6916) (Mod!6916) (Concat!18507) (Not!6916) (Plus!6916) (SpaceValue!6916 (value!211179 List!42575)) (IntegerValue!20750 (value!211180 Int) (text!48861 List!42575)) (StringLiteralValue!20749 (text!48862 List!42575)) (FloatLiteralValue!13833 (text!48863 List!42575)) (BytesLiteralValue!6916 (value!211181 List!42575)) (CommentValue!13833 (value!211182 List!42575)) (StringLiteralValue!20750 (value!211183 List!42575)) (ErrorTokenValue!6916 (msg!6977 List!42575)) )
))
(declare-datatypes ((Regex!11591 0))(
  ( (ElementMatch!11591 (c!689127 C!23368)) (Concat!18508 (regOne!23694 Regex!11591) (regTwo!23694 Regex!11591)) (EmptyExpr!11591) (Star!11591 (reg!11920 Regex!11591)) (EmptyLang!11591) (Union!11591 (regOne!23695 Regex!11591) (regTwo!23695 Regex!11591)) )
))
(declare-datatypes ((String!48298 0))(
  ( (String!48299 (value!211184 String)) )
))
(declare-datatypes ((TokenValueInjection!13260 0))(
  ( (TokenValueInjection!13261 (toValue!9174 Int) (toChars!9033 Int)) )
))
(declare-datatypes ((Rule!13172 0))(
  ( (Rule!13173 (regex!6686 Regex!11591) (tag!7546 String!48298) (isSeparator!6686 Bool) (transformation!6686 TokenValueInjection!13260)) )
))
(declare-datatypes ((Token!12510 0))(
  ( (Token!12511 (value!211185 TokenValue!6916) (rule!9682 Rule!13172) (size!31760 Int) (originalCharacters!7286 List!42574)) )
))
(declare-fun token!484 () Token!12510)

(declare-fun e!2462455 () Bool)

(declare-fun inv!56720 (Token!12510) Bool)

(assert (=> start!374100 (and (inv!56720 token!484) e!2462455)))

(declare-fun e!2462464 () Bool)

(assert (=> start!374100 e!2462464))

(declare-fun e!2462471 () Bool)

(assert (=> start!374100 e!2462471))

(declare-fun e!2462452 () Bool)

(assert (=> start!374100 e!2462452))

(assert (=> start!374100 true))

(declare-fun e!2462447 () Bool)

(assert (=> start!374100 e!2462447))

(declare-fun e!2462459 () Bool)

(assert (=> start!374100 e!2462459))

(declare-fun b!3974663 () Bool)

(declare-fun tp!1211851 () Bool)

(assert (=> b!3974663 (= e!2462471 (and tp_is_empty!20153 tp!1211851))))

(declare-fun b!3974664 () Bool)

(declare-fun e!2462457 () Bool)

(assert (=> b!3974664 (= e!2462457 e!2462468)))

(declare-fun res!1609503 () Bool)

(assert (=> b!3974664 (=> res!1609503 e!2462468)))

(declare-fun prefix!494 () List!42574)

(assert (=> b!3974664 (= res!1609503 (not (= lt!1393064 prefix!494)))))

(assert (=> b!3974664 (= lt!1393064 (++!11088 lt!1393061 lt!1393084))))

(assert (=> b!3974664 (= lt!1393084 (getSuffix!2204 prefix!494 lt!1393061))))

(assert (=> b!3974664 (isPrefix!3773 lt!1393061 prefix!494)))

(declare-fun lt!1393067 () Unit!61100)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!351 (List!42574 List!42574 List!42574) Unit!61100)

(assert (=> b!3974664 (= lt!1393067 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!351 prefix!494 lt!1393061 lt!1393080))))

(declare-fun b!3974665 () Bool)

(declare-fun e!2462461 () Bool)

(declare-fun e!2462453 () Bool)

(declare-fun tp!1211854 () Bool)

(declare-fun inv!56717 (String!48298) Bool)

(declare-fun inv!56721 (TokenValueInjection!13260) Bool)

(assert (=> b!3974665 (= e!2462461 (and tp!1211854 (inv!56717 (tag!7546 (rule!9682 token!484))) (inv!56721 (transformation!6686 (rule!9682 token!484))) e!2462453))))

(declare-fun b!3974666 () Bool)

(declare-fun tp!1211862 () Bool)

(assert (=> b!3974666 (= e!2462452 (and tp_is_empty!20153 tp!1211862))))

(declare-fun b!3974667 () Bool)

(declare-fun res!1609498 () Bool)

(assert (=> b!3974667 (=> (not res!1609498) (not e!2462466))))

(declare-fun newSuffix!27 () List!42574)

(declare-fun size!31761 (List!42574) Int)

(assert (=> b!3974667 (= res!1609498 (>= (size!31761 suffix!1299) (size!31761 newSuffix!27)))))

(assert (=> b!3974668 (= e!2462453 (and tp!1211853 tp!1211860))))

(declare-fun lt!1393078 () Int)

(declare-fun b!3974669 () Bool)

(assert (=> b!3974669 (= e!2462450 (and (= (size!31760 token!484) lt!1393078) (= (originalCharacters!7286 token!484) lt!1393061)))))

(declare-fun b!3974670 () Bool)

(declare-fun res!1609514 () Bool)

(assert (=> b!3974670 (=> (not res!1609514) (not e!2462450))))

(assert (=> b!3974670 (= res!1609514 (= (size!31760 token!484) (size!31761 (originalCharacters!7286 token!484))))))

(declare-fun b!3974671 () Bool)

(declare-fun e!2462458 () Bool)

(assert (=> b!3974671 (= e!2462458 e!2462457)))

(declare-fun res!1609509 () Bool)

(assert (=> b!3974671 (=> res!1609509 e!2462457)))

(assert (=> b!3974671 (= res!1609509 (not (isPrefix!3773 lt!1393061 lt!1393080)))))

(assert (=> b!3974671 (isPrefix!3773 prefix!494 lt!1393080)))

(declare-fun lt!1393077 () Unit!61100)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2616 (List!42574 List!42574) Unit!61100)

(assert (=> b!3974671 (= lt!1393077 (lemmaConcatTwoListThenFirstIsPrefix!2616 prefix!494 suffix!1299))))

(declare-fun lt!1393062 () List!42574)

(assert (=> b!3974671 (isPrefix!3773 lt!1393061 lt!1393062)))

(declare-fun lt!1393068 () Unit!61100)

(declare-fun suffixResult!105 () List!42574)

(assert (=> b!3974671 (= lt!1393068 (lemmaConcatTwoListThenFirstIsPrefix!2616 lt!1393061 suffixResult!105))))

(declare-fun b!3974672 () Bool)

(declare-fun res!1609499 () Bool)

(assert (=> b!3974672 (=> (not res!1609499) (not e!2462466))))

(declare-datatypes ((List!42576 0))(
  ( (Nil!42452) (Cons!42452 (h!47872 Rule!13172) (t!331039 List!42576)) )
))
(declare-fun rules!2999 () List!42576)

(declare-fun rulesInvariant!5618 (LexerInterface!6275 List!42576) Bool)

(assert (=> b!3974672 (= res!1609499 (rulesInvariant!5618 thiss!21717 rules!2999))))

(declare-fun b!3974673 () Bool)

(declare-fun res!1609497 () Bool)

(assert (=> b!3974673 (=> (not res!1609497) (not e!2462450))))

(declare-fun lt!1393056 () TokenValue!6916)

(assert (=> b!3974673 (= res!1609497 (= (value!211185 token!484) lt!1393056))))

(declare-fun b!3974674 () Bool)

(declare-fun e!2462448 () Bool)

(declare-fun e!2462470 () Bool)

(assert (=> b!3974674 (= e!2462448 e!2462470)))

(declare-fun res!1609510 () Bool)

(assert (=> b!3974674 (=> (not res!1609510) (not e!2462470))))

(declare-datatypes ((tuple2!41700 0))(
  ( (tuple2!41701 (_1!23984 Token!12510) (_2!23984 List!42574)) )
))
(declare-datatypes ((Option!9100 0))(
  ( (None!9099) (Some!9099 (v!39447 tuple2!41700)) )
))
(declare-fun lt!1393081 () Option!9100)

(declare-fun maxPrefix!3573 (LexerInterface!6275 List!42576 List!42574) Option!9100)

(assert (=> b!3974674 (= res!1609510 (= (maxPrefix!3573 thiss!21717 rules!2999 lt!1393080) lt!1393081))))

(assert (=> b!3974674 (= lt!1393081 (Some!9099 (tuple2!41701 token!484 suffixResult!105)))))

(assert (=> b!3974674 (= lt!1393080 (++!11088 prefix!494 suffix!1299))))

(declare-fun b!3974675 () Bool)

(declare-fun e!2462454 () Bool)

(declare-fun e!2462465 () Bool)

(declare-fun tp!1211857 () Bool)

(assert (=> b!3974675 (= e!2462465 (and tp!1211857 (inv!56717 (tag!7546 (h!47872 rules!2999))) (inv!56721 (transformation!6686 (h!47872 rules!2999))) e!2462454))))

(declare-fun b!3974676 () Bool)

(declare-fun tp!1211850 () Bool)

(assert (=> b!3974676 (= e!2462459 (and tp_is_empty!20153 tp!1211850))))

(declare-fun b!3974677 () Bool)

(declare-fun tp!1211859 () Bool)

(assert (=> b!3974677 (= e!2462464 (and tp_is_empty!20153 tp!1211859))))

(declare-fun b!3974678 () Bool)

(declare-fun res!1609508 () Bool)

(assert (=> b!3974678 (=> (not res!1609508) (not e!2462466))))

(assert (=> b!3974678 (= res!1609508 (isPrefix!3773 newSuffix!27 suffix!1299))))

(assert (=> b!3974679 (= e!2462454 (and tp!1211856 tp!1211858))))

(declare-fun b!3974680 () Bool)

(declare-fun tp!1211852 () Bool)

(declare-fun inv!21 (TokenValue!6916) Bool)

(assert (=> b!3974680 (= e!2462455 (and (inv!21 (value!211185 token!484)) e!2462461 tp!1211852))))

(declare-fun b!3974681 () Bool)

(declare-fun e!2462472 () Bool)

(assert (=> b!3974681 (= e!2462466 e!2462472)))

(declare-fun res!1609504 () Bool)

(assert (=> b!3974681 (=> (not res!1609504) (not e!2462472))))

(declare-fun lt!1393058 () Int)

(assert (=> b!3974681 (= res!1609504 (>= lt!1393058 lt!1393078))))

(assert (=> b!3974681 (= lt!1393078 (size!31761 lt!1393061))))

(assert (=> b!3974681 (= lt!1393058 (size!31761 prefix!494))))

(declare-fun list!15754 (BalanceConc!25388) List!42574)

(declare-fun charsOf!4502 (Token!12510) BalanceConc!25388)

(assert (=> b!3974681 (= lt!1393061 (list!15754 (charsOf!4502 token!484)))))

(declare-fun b!3974682 () Bool)

(declare-fun e!2462451 () Bool)

(assert (=> b!3974682 (= e!2462451 e!2462460)))

(declare-fun res!1609501 () Bool)

(assert (=> b!3974682 (=> res!1609501 e!2462460)))

(declare-fun matchR!5568 (Regex!11591 List!42574) Bool)

(assert (=> b!3974682 (= res!1609501 (not (matchR!5568 (regex!6686 (rule!9682 token!484)) lt!1393061)))))

(declare-fun lt!1393069 () List!42574)

(assert (=> b!3974682 (isPrefix!3773 lt!1393061 lt!1393069)))

(declare-fun lt!1393059 () Unit!61100)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!606 (List!42574 List!42574 List!42574) Unit!61100)

(assert (=> b!3974682 (= lt!1393059 (lemmaPrefixStaysPrefixWhenAddingToSuffix!606 lt!1393061 prefix!494 newSuffix!27))))

(declare-fun lt!1393075 () Unit!61100)

(assert (=> b!3974682 (= lt!1393075 (lemmaPrefixStaysPrefixWhenAddingToSuffix!606 lt!1393061 prefix!494 suffix!1299))))

(declare-fun b!3974683 () Bool)

(assert (=> b!3974683 (= e!2462470 (not e!2462458))))

(declare-fun res!1609500 () Bool)

(assert (=> b!3974683 (=> res!1609500 e!2462458)))

(assert (=> b!3974683 (= res!1609500 (not (= lt!1393062 lt!1393080)))))

(assert (=> b!3974683 (= lt!1393062 (++!11088 lt!1393061 suffixResult!105))))

(declare-fun lt!1393082 () Unit!61100)

(declare-fun lemmaInv!901 (TokenValueInjection!13260) Unit!61100)

(assert (=> b!3974683 (= lt!1393082 (lemmaInv!901 (transformation!6686 (rule!9682 token!484))))))

(declare-fun ruleValid!2618 (LexerInterface!6275 Rule!13172) Bool)

(assert (=> b!3974683 (ruleValid!2618 thiss!21717 (rule!9682 token!484))))

(declare-fun lt!1393076 () Unit!61100)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1692 (LexerInterface!6275 Rule!13172 List!42576) Unit!61100)

(assert (=> b!3974683 (= lt!1393076 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1692 thiss!21717 (rule!9682 token!484) rules!2999))))

(declare-fun b!3974684 () Bool)

(assert (=> b!3974684 (= e!2462456 e!2462451)))

(declare-fun res!1609511 () Bool)

(assert (=> b!3974684 (=> res!1609511 e!2462451)))

(declare-fun lt!1393085 () Option!9100)

(assert (=> b!3974684 (= res!1609511 (not (= lt!1393085 lt!1393081)))))

(assert (=> b!3974684 (= lt!1393085 (Some!9099 (tuple2!41701 (Token!12511 lt!1393056 (rule!9682 token!484) lt!1393078 lt!1393061) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2607 (LexerInterface!6275 Rule!13172 List!42574) Option!9100)

(assert (=> b!3974684 (= lt!1393085 (maxPrefixOneRule!2607 thiss!21717 (rule!9682 token!484) lt!1393080))))

(declare-fun apply!9897 (TokenValueInjection!13260 BalanceConc!25388) TokenValue!6916)

(declare-fun seqFromList!4925 (List!42574) BalanceConc!25388)

(assert (=> b!3974684 (= lt!1393056 (apply!9897 (transformation!6686 (rule!9682 token!484)) (seqFromList!4925 lt!1393061)))))

(declare-fun lt!1393066 () Unit!61100)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1429 (LexerInterface!6275 List!42576 List!42574 List!42574 List!42574 Rule!13172) Unit!61100)

(assert (=> b!3974684 (= lt!1393066 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1429 thiss!21717 rules!2999 lt!1393061 lt!1393080 suffixResult!105 (rule!9682 token!484)))))

(assert (=> b!3974684 (= lt!1393063 suffixResult!105)))

(declare-fun lt!1393079 () Unit!61100)

(declare-fun lemmaSamePrefixThenSameSuffix!1960 (List!42574 List!42574 List!42574 List!42574 List!42574) Unit!61100)

(assert (=> b!3974684 (= lt!1393079 (lemmaSamePrefixThenSameSuffix!1960 lt!1393061 lt!1393063 lt!1393061 suffixResult!105 lt!1393080))))

(assert (=> b!3974684 (isPrefix!3773 lt!1393061 lt!1393057)))

(declare-fun lt!1393070 () Unit!61100)

(assert (=> b!3974684 (= lt!1393070 (lemmaConcatTwoListThenFirstIsPrefix!2616 lt!1393061 lt!1393063))))

(declare-fun b!3974685 () Bool)

(assert (=> b!3974685 (= e!2462472 e!2462448)))

(declare-fun res!1609513 () Bool)

(assert (=> b!3974685 (=> (not res!1609513) (not e!2462448))))

(declare-fun lt!1393060 () List!42574)

(assert (=> b!3974685 (= res!1609513 (= lt!1393060 lt!1393069))))

(assert (=> b!3974685 (= lt!1393069 (++!11088 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42574)

(assert (=> b!3974685 (= lt!1393060 (++!11088 lt!1393061 newSuffixResult!27))))

(declare-fun b!3974686 () Bool)

(declare-fun tp!1211855 () Bool)

(assert (=> b!3974686 (= e!2462447 (and e!2462465 tp!1211855))))

(declare-fun b!3974687 () Bool)

(declare-fun res!1609506 () Bool)

(assert (=> b!3974687 (=> (not res!1609506) (not e!2462466))))

(declare-fun isEmpty!25392 (List!42576) Bool)

(assert (=> b!3974687 (= res!1609506 (not (isEmpty!25392 rules!2999)))))

(declare-fun b!3974688 () Bool)

(assert (=> b!3974688 (= e!2462467 true)))

(declare-fun lt!1393074 () Int)

(assert (=> b!3974688 (= lt!1393074 (size!31761 lt!1393080))))

(assert (=> b!3974688 (isPrefix!3773 lt!1393061 lt!1393073)))

(declare-fun lt!1393065 () Unit!61100)

(assert (=> b!3974688 (= lt!1393065 (lemmaConcatTwoListThenFirstIsPrefix!2616 lt!1393061 lt!1393071))))

(assert (= (and start!374100 res!1609512) b!3974687))

(assert (= (and b!3974687 res!1609506) b!3974672))

(assert (= (and b!3974672 res!1609499) b!3974667))

(assert (= (and b!3974667 res!1609498) b!3974678))

(assert (= (and b!3974678 res!1609508) b!3974681))

(assert (= (and b!3974681 res!1609504) b!3974685))

(assert (= (and b!3974685 res!1609513) b!3974674))

(assert (= (and b!3974674 res!1609510) b!3974683))

(assert (= (and b!3974683 (not res!1609500)) b!3974671))

(assert (= (and b!3974671 (not res!1609509)) b!3974664))

(assert (= (and b!3974664 (not res!1609503)) b!3974660))

(assert (= (and b!3974660 (not res!1609507)) b!3974684))

(assert (= (and b!3974684 (not res!1609511)) b!3974682))

(assert (= (and b!3974682 (not res!1609501)) b!3974662))

(assert (= (and b!3974662 res!1609502) b!3974673))

(assert (= (and b!3974673 res!1609497) b!3974670))

(assert (= (and b!3974670 res!1609514) b!3974669))

(assert (= (and b!3974662 (not res!1609505)) b!3974688))

(assert (= (and start!374100 ((_ is Cons!42450) prefix!494)) b!3974661))

(assert (= b!3974665 b!3974668))

(assert (= b!3974680 b!3974665))

(assert (= start!374100 b!3974680))

(assert (= (and start!374100 ((_ is Cons!42450) suffixResult!105)) b!3974677))

(assert (= (and start!374100 ((_ is Cons!42450) suffix!1299)) b!3974663))

(assert (= (and start!374100 ((_ is Cons!42450) newSuffix!27)) b!3974666))

(assert (= b!3974675 b!3974679))

(assert (= b!3974686 b!3974675))

(assert (= (and start!374100 ((_ is Cons!42452) rules!2999)) b!3974686))

(assert (= (and start!374100 ((_ is Cons!42450) newSuffixResult!27)) b!3974676))

(declare-fun m!4545479 () Bool)

(assert (=> b!3974683 m!4545479))

(declare-fun m!4545481 () Bool)

(assert (=> b!3974683 m!4545481))

(declare-fun m!4545483 () Bool)

(assert (=> b!3974683 m!4545483))

(declare-fun m!4545485 () Bool)

(assert (=> b!3974683 m!4545485))

(declare-fun m!4545487 () Bool)

(assert (=> b!3974667 m!4545487))

(declare-fun m!4545489 () Bool)

(assert (=> b!3974667 m!4545489))

(declare-fun m!4545491 () Bool)

(assert (=> b!3974688 m!4545491))

(declare-fun m!4545493 () Bool)

(assert (=> b!3974688 m!4545493))

(declare-fun m!4545495 () Bool)

(assert (=> b!3974688 m!4545495))

(declare-fun m!4545497 () Bool)

(assert (=> b!3974687 m!4545497))

(declare-fun m!4545499 () Bool)

(assert (=> b!3974662 m!4545499))

(declare-fun m!4545501 () Bool)

(assert (=> b!3974662 m!4545501))

(declare-fun m!4545503 () Bool)

(assert (=> b!3974662 m!4545503))

(declare-fun m!4545505 () Bool)

(assert (=> b!3974662 m!4545505))

(declare-fun m!4545507 () Bool)

(assert (=> b!3974672 m!4545507))

(declare-fun m!4545509 () Bool)

(assert (=> b!3974684 m!4545509))

(assert (=> b!3974684 m!4545509))

(declare-fun m!4545511 () Bool)

(assert (=> b!3974684 m!4545511))

(declare-fun m!4545513 () Bool)

(assert (=> b!3974684 m!4545513))

(declare-fun m!4545515 () Bool)

(assert (=> b!3974684 m!4545515))

(declare-fun m!4545517 () Bool)

(assert (=> b!3974684 m!4545517))

(declare-fun m!4545519 () Bool)

(assert (=> b!3974684 m!4545519))

(declare-fun m!4545521 () Bool)

(assert (=> b!3974684 m!4545521))

(declare-fun m!4545523 () Bool)

(assert (=> b!3974665 m!4545523))

(declare-fun m!4545525 () Bool)

(assert (=> b!3974665 m!4545525))

(declare-fun m!4545527 () Bool)

(assert (=> b!3974682 m!4545527))

(declare-fun m!4545529 () Bool)

(assert (=> b!3974682 m!4545529))

(declare-fun m!4545531 () Bool)

(assert (=> b!3974682 m!4545531))

(declare-fun m!4545533 () Bool)

(assert (=> b!3974682 m!4545533))

(declare-fun m!4545535 () Bool)

(assert (=> b!3974678 m!4545535))

(declare-fun m!4545537 () Bool)

(assert (=> b!3974685 m!4545537))

(declare-fun m!4545539 () Bool)

(assert (=> b!3974685 m!4545539))

(declare-fun m!4545541 () Bool)

(assert (=> b!3974671 m!4545541))

(declare-fun m!4545543 () Bool)

(assert (=> b!3974671 m!4545543))

(declare-fun m!4545545 () Bool)

(assert (=> b!3974671 m!4545545))

(declare-fun m!4545547 () Bool)

(assert (=> b!3974671 m!4545547))

(declare-fun m!4545549 () Bool)

(assert (=> b!3974671 m!4545549))

(declare-fun m!4545551 () Bool)

(assert (=> b!3974664 m!4545551))

(declare-fun m!4545553 () Bool)

(assert (=> b!3974664 m!4545553))

(declare-fun m!4545555 () Bool)

(assert (=> b!3974664 m!4545555))

(declare-fun m!4545557 () Bool)

(assert (=> b!3974664 m!4545557))

(declare-fun m!4545559 () Bool)

(assert (=> b!3974670 m!4545559))

(declare-fun m!4545561 () Bool)

(assert (=> b!3974680 m!4545561))

(declare-fun m!4545563 () Bool)

(assert (=> b!3974675 m!4545563))

(declare-fun m!4545565 () Bool)

(assert (=> b!3974675 m!4545565))

(declare-fun m!4545567 () Bool)

(assert (=> start!374100 m!4545567))

(declare-fun m!4545569 () Bool)

(assert (=> b!3974681 m!4545569))

(declare-fun m!4545571 () Bool)

(assert (=> b!3974681 m!4545571))

(declare-fun m!4545573 () Bool)

(assert (=> b!3974681 m!4545573))

(assert (=> b!3974681 m!4545573))

(declare-fun m!4545575 () Bool)

(assert (=> b!3974681 m!4545575))

(declare-fun m!4545577 () Bool)

(assert (=> b!3974674 m!4545577))

(declare-fun m!4545579 () Bool)

(assert (=> b!3974674 m!4545579))

(declare-fun m!4545581 () Bool)

(assert (=> b!3974660 m!4545581))

(declare-fun m!4545583 () Bool)

(assert (=> b!3974660 m!4545583))

(declare-fun m!4545585 () Bool)

(assert (=> b!3974660 m!4545585))

(declare-fun m!4545587 () Bool)

(assert (=> b!3974660 m!4545587))

(check-sat b_and!305539 (not b!3974684) (not b!3974664) (not b!3974687) (not b!3974671) (not b!3974688) b_and!305535 (not b!3974667) (not b!3974661) (not b_next!110897) (not b!3974672) (not b!3974674) (not b!3974660) (not b!3974666) (not b!3974682) b_and!305541 (not b!3974680) (not b!3974678) (not b_next!110901) (not b!3974685) (not b!3974665) (not b!3974677) (not b!3974683) (not b_next!110899) b_and!305537 (not b!3974663) (not b!3974670) tp_is_empty!20153 (not start!374100) (not b!3974686) (not b!3974676) (not b!3974662) (not b_next!110903) (not b!3974675) (not b!3974681))
(check-sat b_and!305539 b_and!305541 (not b_next!110901) b_and!305535 (not b_next!110903) (not b_next!110897) b_and!305537 (not b_next!110899))
