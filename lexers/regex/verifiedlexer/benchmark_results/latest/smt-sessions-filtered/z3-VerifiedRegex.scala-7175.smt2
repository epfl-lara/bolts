; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381896 () Bool)

(assert start!381896)

(declare-fun b!4049527 () Bool)

(declare-fun b_free!112705 () Bool)

(declare-fun b_next!113409 () Bool)

(assert (=> b!4049527 (= b_free!112705 (not b_next!113409))))

(declare-fun tp!1228271 () Bool)

(declare-fun b_and!311411 () Bool)

(assert (=> b!4049527 (= tp!1228271 b_and!311411)))

(declare-fun b_free!112707 () Bool)

(declare-fun b_next!113411 () Bool)

(assert (=> b!4049527 (= b_free!112707 (not b_next!113411))))

(declare-fun tp!1228273 () Bool)

(declare-fun b_and!311413 () Bool)

(assert (=> b!4049527 (= tp!1228273 b_and!311413)))

(declare-fun b!4049543 () Bool)

(declare-fun b_free!112709 () Bool)

(declare-fun b_next!113413 () Bool)

(assert (=> b!4049543 (= b_free!112709 (not b_next!113413))))

(declare-fun tp!1228269 () Bool)

(declare-fun b_and!311415 () Bool)

(assert (=> b!4049543 (= tp!1228269 b_and!311415)))

(declare-fun b_free!112711 () Bool)

(declare-fun b_next!113415 () Bool)

(assert (=> b!4049543 (= b_free!112711 (not b_next!113415))))

(declare-fun tp!1228264 () Bool)

(declare-fun b_and!311417 () Bool)

(assert (=> b!4049543 (= tp!1228264 b_and!311417)))

(declare-fun b!4049525 () Bool)

(declare-fun res!1650119 () Bool)

(declare-fun e!2512674 () Bool)

(assert (=> b!4049525 (=> res!1650119 e!2512674)))

(declare-datatypes ((C!23872 0))(
  ( (C!23873 (val!14030 Int)) )
))
(declare-datatypes ((List!43421 0))(
  ( (Nil!43297) (Cons!43297 (h!48717 C!23872) (t!335824 List!43421)) )
))
(declare-datatypes ((IArray!26303 0))(
  ( (IArray!26304 (innerList!13209 List!43421)) )
))
(declare-datatypes ((Conc!13149 0))(
  ( (Node!13149 (left!32604 Conc!13149) (right!32934 Conc!13149) (csize!26528 Int) (cheight!13360 Int)) (Leaf!20325 (xs!16455 IArray!26303) (csize!26529 Int)) (Empty!13149) )
))
(declare-datatypes ((BalanceConc!25892 0))(
  ( (BalanceConc!25893 (c!699568 Conc!13149)) )
))
(declare-datatypes ((String!49557 0))(
  ( (String!49558 (value!218341 String)) )
))
(declare-datatypes ((List!43422 0))(
  ( (Nil!43298) (Cons!43298 (h!48718 (_ BitVec 16)) (t!335825 List!43422)) )
))
(declare-datatypes ((TokenValue!7168 0))(
  ( (FloatLiteralValue!14336 (text!50621 List!43422)) (TokenValueExt!7167 (__x!26553 Int)) (Broken!35840 (value!218342 List!43422)) (Object!7291) (End!7168) (Def!7168) (Underscore!7168) (Match!7168) (Else!7168) (Error!7168) (Case!7168) (If!7168) (Extends!7168) (Abstract!7168) (Class!7168) (Val!7168) (DelimiterValue!14336 (del!7228 List!43422)) (KeywordValue!7174 (value!218343 List!43422)) (CommentValue!14336 (value!218344 List!43422)) (WhitespaceValue!14336 (value!218345 List!43422)) (IndentationValue!7168 (value!218346 List!43422)) (String!49559) (Int32!7168) (Broken!35841 (value!218347 List!43422)) (Boolean!7169) (Unit!62572) (OperatorValue!7171 (op!7228 List!43422)) (IdentifierValue!14336 (value!218348 List!43422)) (IdentifierValue!14337 (value!218349 List!43422)) (WhitespaceValue!14337 (value!218350 List!43422)) (True!14336) (False!14336) (Broken!35842 (value!218351 List!43422)) (Broken!35843 (value!218352 List!43422)) (True!14337) (RightBrace!7168) (RightBracket!7168) (Colon!7168) (Null!7168) (Comma!7168) (LeftBracket!7168) (False!14337) (LeftBrace!7168) (ImaginaryLiteralValue!7168 (text!50622 List!43422)) (StringLiteralValue!21504 (value!218353 List!43422)) (EOFValue!7168 (value!218354 List!43422)) (IdentValue!7168 (value!218355 List!43422)) (DelimiterValue!14337 (value!218356 List!43422)) (DedentValue!7168 (value!218357 List!43422)) (NewLineValue!7168 (value!218358 List!43422)) (IntegerValue!21504 (value!218359 (_ BitVec 32)) (text!50623 List!43422)) (IntegerValue!21505 (value!218360 Int) (text!50624 List!43422)) (Times!7168) (Or!7168) (Equal!7168) (Minus!7168) (Broken!35844 (value!218361 List!43422)) (And!7168) (Div!7168) (LessEqual!7168) (Mod!7168) (Concat!19011) (Not!7168) (Plus!7168) (SpaceValue!7168 (value!218362 List!43422)) (IntegerValue!21506 (value!218363 Int) (text!50625 List!43422)) (StringLiteralValue!21505 (text!50626 List!43422)) (FloatLiteralValue!14337 (text!50627 List!43422)) (BytesLiteralValue!7168 (value!218364 List!43422)) (CommentValue!14337 (value!218365 List!43422)) (StringLiteralValue!21506 (value!218366 List!43422)) (ErrorTokenValue!7168 (msg!7229 List!43422)) )
))
(declare-datatypes ((Regex!11843 0))(
  ( (ElementMatch!11843 (c!699569 C!23872)) (Concat!19012 (regOne!24198 Regex!11843) (regTwo!24198 Regex!11843)) (EmptyExpr!11843) (Star!11843 (reg!12172 Regex!11843)) (EmptyLang!11843) (Union!11843 (regOne!24199 Regex!11843) (regTwo!24199 Regex!11843)) )
))
(declare-datatypes ((TokenValueInjection!13764 0))(
  ( (TokenValueInjection!13765 (toValue!9490 Int) (toChars!9349 Int)) )
))
(declare-datatypes ((Rule!13676 0))(
  ( (Rule!13677 (regex!6938 Regex!11843) (tag!7798 String!49557) (isSeparator!6938 Bool) (transformation!6938 TokenValueInjection!13764)) )
))
(declare-datatypes ((List!43423 0))(
  ( (Nil!43299) (Cons!43299 (h!48719 Rule!13676) (t!335826 List!43423)) )
))
(declare-fun rules!2999 () List!43423)

(declare-datatypes ((Token!13014 0))(
  ( (Token!13015 (value!218367 TokenValue!7168) (rule!10018 Rule!13676) (size!32371 Int) (originalCharacters!7538 List!43421)) )
))
(declare-datatypes ((tuple2!42370 0))(
  ( (tuple2!42371 (_1!24319 Token!13014) (_2!24319 List!43421)) )
))
(declare-datatypes ((Option!9352 0))(
  ( (None!9351) (Some!9351 (v!39759 tuple2!42370)) )
))
(declare-fun lt!1443176 () Option!9352)

(declare-fun contains!8610 (List!43423 Rule!13676) Bool)

(assert (=> b!4049525 (= res!1650119 (not (contains!8610 rules!2999 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))))

(declare-fun b!4049526 () Bool)

(declare-fun e!2512652 () Bool)

(assert (=> b!4049526 (= e!2512652 false)))

(declare-fun b!4049528 () Bool)

(declare-fun e!2512676 () Bool)

(declare-fun tp_is_empty!20657 () Bool)

(declare-fun tp!1228276 () Bool)

(assert (=> b!4049528 (= e!2512676 (and tp_is_empty!20657 tp!1228276))))

(declare-fun b!4049529 () Bool)

(declare-fun e!2512651 () Bool)

(declare-fun tp!1228265 () Bool)

(assert (=> b!4049529 (= e!2512651 (and tp_is_empty!20657 tp!1228265))))

(declare-fun b!4049530 () Bool)

(declare-fun e!2512667 () Bool)

(declare-fun e!2512682 () Bool)

(assert (=> b!4049530 (= e!2512667 e!2512682)))

(declare-fun res!1650108 () Bool)

(assert (=> b!4049530 (=> res!1650108 e!2512682)))

(declare-fun lt!1443161 () List!43421)

(declare-fun lt!1443177 () List!43421)

(assert (=> b!4049530 (= res!1650108 (not (= lt!1443161 lt!1443177)))))

(declare-fun lt!1443165 () List!43421)

(declare-fun lt!1443151 () List!43421)

(declare-fun ++!11340 (List!43421 List!43421) List!43421)

(assert (=> b!4049530 (= lt!1443161 (++!11340 lt!1443165 lt!1443151))))

(declare-fun getSuffix!2442 (List!43421 List!43421) List!43421)

(assert (=> b!4049530 (= lt!1443151 (getSuffix!2442 lt!1443177 lt!1443165))))

(declare-fun e!2512662 () Bool)

(assert (=> b!4049530 e!2512662))

(declare-fun res!1650113 () Bool)

(assert (=> b!4049530 (=> (not res!1650113) (not e!2512662))))

(declare-fun isPrefix!4025 (List!43421 List!43421) Bool)

(assert (=> b!4049530 (= res!1650113 (isPrefix!4025 lt!1443177 lt!1443177))))

(declare-datatypes ((Unit!62573 0))(
  ( (Unit!62574) )
))
(declare-fun lt!1443179 () Unit!62573)

(declare-fun lemmaIsPrefixRefl!2592 (List!43421 List!43421) Unit!62573)

(assert (=> b!4049530 (= lt!1443179 (lemmaIsPrefixRefl!2592 lt!1443177 lt!1443177))))

(declare-fun b!4049531 () Bool)

(declare-fun e!2512668 () Bool)

(declare-fun e!2512656 () Bool)

(declare-fun tp!1228275 () Bool)

(assert (=> b!4049531 (= e!2512668 (and e!2512656 tp!1228275))))

(declare-fun b!4049532 () Bool)

(declare-fun e!2512650 () Bool)

(declare-fun tp!1228267 () Bool)

(assert (=> b!4049532 (= e!2512650 (and tp_is_empty!20657 tp!1228267))))

(declare-fun b!4049533 () Bool)

(declare-fun e!2512683 () Bool)

(declare-fun tp!1228266 () Bool)

(assert (=> b!4049533 (= e!2512683 (and tp_is_empty!20657 tp!1228266))))

(declare-fun b!4049534 () Bool)

(declare-fun token!484 () Token!13014)

(assert (=> b!4049534 (= e!2512674 (contains!8610 rules!2999 (rule!10018 token!484)))))

(declare-fun b!4049535 () Bool)

(declare-fun e!2512654 () Bool)

(declare-fun e!2512677 () Bool)

(assert (=> b!4049535 (= e!2512654 e!2512677)))

(declare-fun res!1650118 () Bool)

(assert (=> b!4049535 (=> res!1650118 e!2512677)))

(declare-fun lt!1443163 () List!43421)

(declare-fun prefix!494 () List!43421)

(assert (=> b!4049535 (= res!1650118 (not (= lt!1443163 prefix!494)))))

(declare-fun lt!1443157 () List!43421)

(assert (=> b!4049535 (= lt!1443163 (++!11340 lt!1443165 lt!1443157))))

(assert (=> b!4049535 (= lt!1443157 (getSuffix!2442 prefix!494 lt!1443165))))

(assert (=> b!4049535 (isPrefix!4025 lt!1443165 prefix!494)))

(declare-fun lt!1443167 () Unit!62573)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!589 (List!43421 List!43421 List!43421) Unit!62573)

(assert (=> b!4049535 (= lt!1443167 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!589 prefix!494 lt!1443165 lt!1443177))))

(declare-fun b!4049536 () Bool)

(declare-fun e!2512664 () Bool)

(assert (=> b!4049536 (= e!2512664 e!2512674)))

(declare-fun res!1650093 () Bool)

(assert (=> b!4049536 (=> res!1650093 e!2512674)))

(declare-fun lt!1443189 () Int)

(declare-fun lt!1443159 () Int)

(assert (=> b!4049536 (= res!1650093 (>= lt!1443189 lt!1443159))))

(declare-fun lt!1443150 () Unit!62573)

(declare-fun e!2512661 () Unit!62573)

(assert (=> b!4049536 (= lt!1443150 e!2512661)))

(declare-fun c!699567 () Bool)

(assert (=> b!4049536 (= c!699567 (> lt!1443189 lt!1443159))))

(declare-fun lt!1443197 () List!43421)

(assert (=> b!4049536 (= (_2!24319 (v!39759 lt!1443176)) lt!1443197)))

(declare-fun lt!1443187 () List!43421)

(declare-fun lt!1443175 () List!43421)

(declare-fun lt!1443144 () Unit!62573)

(declare-fun lemmaSamePrefixThenSameSuffix!2186 (List!43421 List!43421 List!43421 List!43421 List!43421) Unit!62573)

(assert (=> b!4049536 (= lt!1443144 (lemmaSamePrefixThenSameSuffix!2186 lt!1443187 (_2!24319 (v!39759 lt!1443176)) lt!1443187 lt!1443197 lt!1443175))))

(declare-fun lt!1443174 () List!43421)

(assert (=> b!4049536 (isPrefix!4025 lt!1443187 lt!1443174)))

(declare-fun lt!1443170 () Unit!62573)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2860 (List!43421 List!43421) Unit!62573)

(assert (=> b!4049536 (= lt!1443170 (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443187 lt!1443197))))

(declare-fun b!4049537 () Bool)

(declare-fun res!1650110 () Bool)

(declare-fun e!2512655 () Bool)

(assert (=> b!4049537 (=> (not res!1650110) (not e!2512655))))

(declare-fun isEmpty!25839 (List!43423) Bool)

(assert (=> b!4049537 (= res!1650110 (not (isEmpty!25839 rules!2999)))))

(declare-fun b!4049538 () Bool)

(declare-fun e!2512659 () Bool)

(declare-fun e!2512669 () Bool)

(assert (=> b!4049538 (= e!2512659 e!2512669)))

(declare-fun res!1650100 () Bool)

(assert (=> b!4049538 (=> res!1650100 e!2512669)))

(declare-fun lt!1443146 () List!43421)

(declare-fun suffix!1299 () List!43421)

(assert (=> b!4049538 (= res!1650100 (not (= lt!1443146 suffix!1299)))))

(declare-fun newSuffix!27 () List!43421)

(declare-fun lt!1443166 () List!43421)

(assert (=> b!4049538 (= lt!1443146 (++!11340 newSuffix!27 lt!1443166))))

(assert (=> b!4049538 (= lt!1443166 (getSuffix!2442 suffix!1299 newSuffix!27))))

(declare-fun b!4049539 () Bool)

(declare-fun Unit!62575 () Unit!62573)

(assert (=> b!4049539 (= e!2512661 Unit!62575)))

(declare-fun tp!1228270 () Bool)

(declare-fun e!2512658 () Bool)

(declare-fun b!4049540 () Bool)

(declare-fun e!2512660 () Bool)

(declare-fun inv!21 (TokenValue!7168) Bool)

(assert (=> b!4049540 (= e!2512660 (and (inv!21 (value!218367 token!484)) e!2512658 tp!1228270))))

(declare-fun b!4049541 () Bool)

(declare-fun tp!1228274 () Bool)

(declare-fun e!2512670 () Bool)

(declare-fun inv!57875 (String!49557) Bool)

(declare-fun inv!57878 (TokenValueInjection!13764) Bool)

(assert (=> b!4049541 (= e!2512656 (and tp!1228274 (inv!57875 (tag!7798 (h!48719 rules!2999))) (inv!57878 (transformation!6938 (h!48719 rules!2999))) e!2512670))))

(declare-fun b!4049542 () Bool)

(declare-fun res!1650098 () Bool)

(assert (=> b!4049542 (=> (not res!1650098) (not e!2512662))))

(declare-fun size!32372 (List!43421) Int)

(assert (=> b!4049542 (= res!1650098 (= (size!32371 token!484) (size!32372 (originalCharacters!7538 token!484))))))

(declare-fun res!1650091 () Bool)

(assert (=> start!381896 (=> (not res!1650091) (not e!2512655))))

(declare-datatypes ((LexerInterface!6527 0))(
  ( (LexerInterfaceExt!6524 (__x!26554 Int)) (Lexer!6525) )
))
(declare-fun thiss!21717 () LexerInterface!6527)

(get-info :version)

(assert (=> start!381896 (= res!1650091 ((_ is Lexer!6525) thiss!21717))))

(assert (=> start!381896 e!2512655))

(assert (=> start!381896 e!2512683))

(declare-fun inv!57879 (Token!13014) Bool)

(assert (=> start!381896 (and (inv!57879 token!484) e!2512660)))

(assert (=> start!381896 e!2512676))

(assert (=> start!381896 e!2512650))

(assert (=> start!381896 e!2512651))

(assert (=> start!381896 true))

(assert (=> start!381896 e!2512668))

(declare-fun e!2512653 () Bool)

(assert (=> start!381896 e!2512653))

(declare-fun e!2512666 () Bool)

(assert (=> b!4049527 (= e!2512666 (and tp!1228271 tp!1228273))))

(assert (=> b!4049543 (= e!2512670 (and tp!1228269 tp!1228264))))

(declare-fun b!4049544 () Bool)

(declare-fun e!2512672 () Bool)

(assert (=> b!4049544 (= e!2512655 e!2512672)))

(declare-fun res!1650115 () Bool)

(assert (=> b!4049544 (=> (not res!1650115) (not e!2512672))))

(declare-fun lt!1443142 () Int)

(assert (=> b!4049544 (= res!1650115 (>= lt!1443142 lt!1443159))))

(assert (=> b!4049544 (= lt!1443159 (size!32372 lt!1443165))))

(assert (=> b!4049544 (= lt!1443142 (size!32372 prefix!494))))

(declare-fun list!16130 (BalanceConc!25892) List!43421)

(declare-fun charsOf!4754 (Token!13014) BalanceConc!25892)

(assert (=> b!4049544 (= lt!1443165 (list!16130 (charsOf!4754 token!484)))))

(declare-fun b!4049545 () Bool)

(declare-fun e!2512678 () Bool)

(assert (=> b!4049545 (= e!2512678 e!2512664)))

(declare-fun res!1650105 () Bool)

(assert (=> b!4049545 (=> res!1650105 e!2512664)))

(assert (=> b!4049545 (= res!1650105 (not (= lt!1443174 lt!1443175)))))

(assert (=> b!4049545 (= lt!1443174 (++!11340 lt!1443187 lt!1443197))))

(assert (=> b!4049545 (= lt!1443197 (getSuffix!2442 lt!1443175 lt!1443187))))

(declare-fun b!4049546 () Bool)

(declare-fun e!2512671 () Bool)

(declare-fun e!2512657 () Bool)

(assert (=> b!4049546 (= e!2512671 e!2512657)))

(declare-fun res!1650106 () Bool)

(assert (=> b!4049546 (=> res!1650106 e!2512657)))

(declare-fun lt!1443158 () Option!9352)

(declare-fun lt!1443147 () Option!9352)

(assert (=> b!4049546 (= res!1650106 (not (= lt!1443158 lt!1443147)))))

(declare-fun lt!1443182 () Token!13014)

(declare-fun suffixResult!105 () List!43421)

(assert (=> b!4049546 (= lt!1443158 (Some!9351 (tuple2!42371 lt!1443182 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2837 (LexerInterface!6527 Rule!13676 List!43421) Option!9352)

(assert (=> b!4049546 (= lt!1443158 (maxPrefixOneRule!2837 thiss!21717 (rule!10018 token!484) lt!1443177))))

(declare-fun lt!1443145 () TokenValue!7168)

(assert (=> b!4049546 (= lt!1443182 (Token!13015 lt!1443145 (rule!10018 token!484) lt!1443159 lt!1443165))))

(declare-fun apply!10127 (TokenValueInjection!13764 BalanceConc!25892) TokenValue!7168)

(declare-fun seqFromList!5155 (List!43421) BalanceConc!25892)

(assert (=> b!4049546 (= lt!1443145 (apply!10127 (transformation!6938 (rule!10018 token!484)) (seqFromList!5155 lt!1443165)))))

(declare-fun lt!1443192 () Unit!62573)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1643 (LexerInterface!6527 List!43423 List!43421 List!43421 List!43421 Rule!13676) Unit!62573)

(assert (=> b!4049546 (= lt!1443192 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1643 thiss!21717 rules!2999 lt!1443165 lt!1443177 suffixResult!105 (rule!10018 token!484)))))

(declare-fun lt!1443155 () List!43421)

(assert (=> b!4049546 (= lt!1443155 suffixResult!105)))

(declare-fun lt!1443178 () Unit!62573)

(assert (=> b!4049546 (= lt!1443178 (lemmaSamePrefixThenSameSuffix!2186 lt!1443165 lt!1443155 lt!1443165 suffixResult!105 lt!1443177))))

(declare-fun lt!1443149 () List!43421)

(assert (=> b!4049546 (isPrefix!4025 lt!1443165 lt!1443149)))

(declare-fun lt!1443171 () Unit!62573)

(assert (=> b!4049546 (= lt!1443171 (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443165 lt!1443155))))

(declare-fun b!4049547 () Bool)

(declare-fun res!1650103 () Bool)

(assert (=> b!4049547 (=> res!1650103 e!2512678)))

(declare-fun lt!1443185 () List!43421)

(assert (=> b!4049547 (= res!1650103 (not (= lt!1443185 lt!1443175)))))

(declare-fun b!4049548 () Bool)

(declare-fun res!1650102 () Bool)

(assert (=> b!4049548 (=> (not res!1650102) (not e!2512662))))

(assert (=> b!4049548 (= res!1650102 (= (value!218367 token!484) lt!1443145))))

(declare-fun b!4049549 () Bool)

(declare-fun e!2512665 () Bool)

(assert (=> b!4049549 (= e!2512672 e!2512665)))

(declare-fun res!1650107 () Bool)

(assert (=> b!4049549 (=> (not res!1650107) (not e!2512665))))

(declare-fun lt!1443186 () List!43421)

(assert (=> b!4049549 (= res!1650107 (= lt!1443186 lt!1443175))))

(assert (=> b!4049549 (= lt!1443175 (++!11340 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43421)

(assert (=> b!4049549 (= lt!1443186 (++!11340 lt!1443165 newSuffixResult!27))))

(declare-fun b!4049550 () Bool)

(declare-fun e!2512675 () Bool)

(assert (=> b!4049550 (= e!2512675 e!2512654)))

(declare-fun res!1650096 () Bool)

(assert (=> b!4049550 (=> res!1650096 e!2512654)))

(assert (=> b!4049550 (= res!1650096 (not (isPrefix!4025 lt!1443165 lt!1443177)))))

(assert (=> b!4049550 (isPrefix!4025 prefix!494 lt!1443177)))

(declare-fun lt!1443141 () Unit!62573)

(assert (=> b!4049550 (= lt!1443141 (lemmaConcatTwoListThenFirstIsPrefix!2860 prefix!494 suffix!1299))))

(declare-fun lt!1443181 () List!43421)

(assert (=> b!4049550 (isPrefix!4025 lt!1443165 lt!1443181)))

(declare-fun lt!1443195 () Unit!62573)

(assert (=> b!4049550 (= lt!1443195 (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443165 suffixResult!105))))

(declare-fun b!4049551 () Bool)

(declare-fun res!1650109 () Bool)

(assert (=> b!4049551 (=> (not res!1650109) (not e!2512655))))

(declare-fun rulesInvariant!5870 (LexerInterface!6527 List!43423) Bool)

(assert (=> b!4049551 (= res!1650109 (rulesInvariant!5870 thiss!21717 rules!2999))))

(declare-fun b!4049552 () Bool)

(declare-fun e!2512681 () Bool)

(assert (=> b!4049552 (= e!2512669 e!2512681)))

(declare-fun res!1650117 () Bool)

(assert (=> b!4049552 (=> res!1650117 e!2512681)))

(declare-fun lt!1443152 () List!43421)

(assert (=> b!4049552 (= res!1650117 (not (= lt!1443152 lt!1443177)))))

(assert (=> b!4049552 (= lt!1443152 (++!11340 prefix!494 lt!1443146))))

(assert (=> b!4049552 (= lt!1443152 (++!11340 lt!1443175 lt!1443166))))

(declare-fun lt!1443190 () Unit!62573)

(declare-fun lemmaConcatAssociativity!2642 (List!43421 List!43421 List!43421) Unit!62573)

(assert (=> b!4049552 (= lt!1443190 (lemmaConcatAssociativity!2642 prefix!494 newSuffix!27 lt!1443166))))

(declare-fun b!4049553 () Bool)

(declare-fun e!2512684 () Bool)

(assert (=> b!4049553 (= e!2512682 e!2512684)))

(declare-fun res!1650097 () Bool)

(assert (=> b!4049553 (=> res!1650097 e!2512684)))

(assert (=> b!4049553 (= res!1650097 (not ((_ is Some!9351) lt!1443176)))))

(declare-fun maxPrefix!3825 (LexerInterface!6527 List!43423 List!43421) Option!9352)

(assert (=> b!4049553 (= lt!1443176 (maxPrefix!3825 thiss!21717 rules!2999 lt!1443175))))

(declare-fun lt!1443193 () tuple2!42370)

(assert (=> b!4049553 (and (= suffixResult!105 lt!1443151) (= lt!1443193 (tuple2!42371 lt!1443182 lt!1443151)))))

(declare-fun lt!1443172 () Unit!62573)

(assert (=> b!4049553 (= lt!1443172 (lemmaSamePrefixThenSameSuffix!2186 lt!1443165 suffixResult!105 lt!1443165 lt!1443151 lt!1443177))))

(assert (=> b!4049553 (isPrefix!4025 lt!1443165 lt!1443161)))

(declare-fun lt!1443143 () Unit!62573)

(assert (=> b!4049553 (= lt!1443143 (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443165 lt!1443151))))

(declare-fun b!4049554 () Bool)

(assert (=> b!4049554 (= e!2512684 e!2512659)))

(declare-fun res!1650114 () Bool)

(assert (=> b!4049554 (=> res!1650114 e!2512659)))

(declare-fun lt!1443164 () Option!9352)

(assert (=> b!4049554 (= res!1650114 (not (= lt!1443164 (Some!9351 (v!39759 lt!1443176)))))))

(assert (=> b!4049554 (isPrefix!4025 lt!1443187 (++!11340 lt!1443187 newSuffixResult!27))))

(declare-fun lt!1443183 () Unit!62573)

(assert (=> b!4049554 (= lt!1443183 (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443187 newSuffixResult!27))))

(assert (=> b!4049554 (isPrefix!4025 lt!1443187 lt!1443185)))

(assert (=> b!4049554 (= lt!1443185 (++!11340 lt!1443187 (_2!24319 (v!39759 lt!1443176))))))

(declare-fun lt!1443194 () Unit!62573)

(assert (=> b!4049554 (= lt!1443194 (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443187 (_2!24319 (v!39759 lt!1443176))))))

(declare-fun lt!1443196 () TokenValue!7168)

(assert (=> b!4049554 (= lt!1443164 (Some!9351 (tuple2!42371 (Token!13015 lt!1443196 (rule!10018 (_1!24319 (v!39759 lt!1443176))) lt!1443189 lt!1443187) (_2!24319 (v!39759 lt!1443176)))))))

(assert (=> b!4049554 (= lt!1443164 (maxPrefixOneRule!2837 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))) lt!1443175))))

(assert (=> b!4049554 (= lt!1443189 (size!32372 lt!1443187))))

(assert (=> b!4049554 (= lt!1443196 (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (seqFromList!5155 lt!1443187)))))

(declare-fun lt!1443160 () Unit!62573)

(assert (=> b!4049554 (= lt!1443160 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1643 thiss!21717 rules!2999 lt!1443187 lt!1443175 (_2!24319 (v!39759 lt!1443176)) (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(assert (=> b!4049554 (= lt!1443187 (list!16130 (charsOf!4754 (_1!24319 (v!39759 lt!1443176)))))))

(declare-fun lt!1443184 () Unit!62573)

(declare-fun lemmaInv!1147 (TokenValueInjection!13764) Unit!62573)

(assert (=> b!4049554 (= lt!1443184 (lemmaInv!1147 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))))

(declare-fun ruleValid!2868 (LexerInterface!6527 Rule!13676) Bool)

(assert (=> b!4049554 (ruleValid!2868 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))

(declare-fun lt!1443180 () Unit!62573)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1938 (LexerInterface!6527 Rule!13676 List!43423) Unit!62573)

(assert (=> b!4049554 (= lt!1443180 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1938 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))) rules!2999))))

(declare-fun lt!1443191 () Unit!62573)

(declare-fun lemmaCharactersSize!1457 (Token!13014) Unit!62573)

(assert (=> b!4049554 (= lt!1443191 (lemmaCharactersSize!1457 token!484))))

(declare-fun lt!1443168 () Unit!62573)

(assert (=> b!4049554 (= lt!1443168 (lemmaCharactersSize!1457 (_1!24319 (v!39759 lt!1443176))))))

(declare-fun b!4049555 () Bool)

(assert (=> b!4049555 (= e!2512681 e!2512678)))

(declare-fun res!1650101 () Bool)

(assert (=> b!4049555 (=> res!1650101 e!2512678)))

(assert (=> b!4049555 (= res!1650101 (not (isPrefix!4025 lt!1443187 lt!1443177)))))

(assert (=> b!4049555 (isPrefix!4025 lt!1443187 lt!1443152)))

(declare-fun lt!1443153 () Unit!62573)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!818 (List!43421 List!43421 List!43421) Unit!62573)

(assert (=> b!4049555 (= lt!1443153 (lemmaPrefixStaysPrefixWhenAddingToSuffix!818 lt!1443187 lt!1443175 lt!1443166))))

(declare-fun b!4049556 () Bool)

(declare-fun res!1650104 () Bool)

(assert (=> b!4049556 (=> (not res!1650104) (not e!2512655))))

(assert (=> b!4049556 (= res!1650104 (>= (size!32372 suffix!1299) (size!32372 newSuffix!27)))))

(declare-fun b!4049557 () Bool)

(declare-fun e!2512680 () Bool)

(assert (=> b!4049557 (= e!2512680 (not e!2512675))))

(declare-fun res!1650095 () Bool)

(assert (=> b!4049557 (=> res!1650095 e!2512675)))

(assert (=> b!4049557 (= res!1650095 (not (= lt!1443181 lt!1443177)))))

(assert (=> b!4049557 (= lt!1443181 (++!11340 lt!1443165 suffixResult!105))))

(declare-fun lt!1443162 () Unit!62573)

(assert (=> b!4049557 (= lt!1443162 (lemmaInv!1147 (transformation!6938 (rule!10018 token!484))))))

(assert (=> b!4049557 (ruleValid!2868 thiss!21717 (rule!10018 token!484))))

(declare-fun lt!1443154 () Unit!62573)

(assert (=> b!4049557 (= lt!1443154 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1938 thiss!21717 (rule!10018 token!484) rules!2999))))

(declare-fun b!4049558 () Bool)

(assert (=> b!4049558 (= e!2512665 e!2512680)))

(declare-fun res!1650111 () Bool)

(assert (=> b!4049558 (=> (not res!1650111) (not e!2512680))))

(assert (=> b!4049558 (= res!1650111 (= (maxPrefix!3825 thiss!21717 rules!2999 lt!1443177) lt!1443147))))

(assert (=> b!4049558 (= lt!1443147 (Some!9351 lt!1443193))))

(assert (=> b!4049558 (= lt!1443193 (tuple2!42371 token!484 suffixResult!105))))

(assert (=> b!4049558 (= lt!1443177 (++!11340 prefix!494 suffix!1299))))

(declare-fun b!4049559 () Bool)

(assert (=> b!4049559 (= e!2512662 (and (= (size!32371 token!484) lt!1443159) (= (originalCharacters!7538 token!484) lt!1443165)))))

(declare-fun b!4049560 () Bool)

(declare-fun Unit!62576 () Unit!62573)

(assert (=> b!4049560 (= e!2512661 Unit!62576)))

(declare-fun lt!1443156 () Unit!62573)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!464 (LexerInterface!6527 List!43423 Rule!13676 List!43421 List!43421 List!43421 Rule!13676) Unit!62573)

(assert (=> b!4049560 (= lt!1443156 (lemmaMaxPrefixOutputsMaxPrefix!464 thiss!21717 rules!2999 (rule!10018 token!484) lt!1443165 lt!1443177 lt!1443187 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(declare-fun res!1650094 () Bool)

(declare-fun matchR!5796 (Regex!11843 List!43421) Bool)

(assert (=> b!4049560 (= res!1650094 (not (matchR!5796 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443187)))))

(assert (=> b!4049560 (=> (not res!1650094) (not e!2512652))))

(assert (=> b!4049560 e!2512652))

(declare-fun b!4049561 () Bool)

(declare-fun res!1650099 () Bool)

(assert (=> b!4049561 (=> res!1650099 e!2512674)))

(assert (=> b!4049561 (= res!1650099 (not (isPrefix!4025 lt!1443187 lt!1443175)))))

(declare-fun b!4049562 () Bool)

(declare-fun tp!1228268 () Bool)

(assert (=> b!4049562 (= e!2512653 (and tp_is_empty!20657 tp!1228268))))

(declare-fun tp!1228272 () Bool)

(declare-fun b!4049563 () Bool)

(assert (=> b!4049563 (= e!2512658 (and tp!1228272 (inv!57875 (tag!7798 (rule!10018 token!484))) (inv!57878 (transformation!6938 (rule!10018 token!484))) e!2512666))))

(declare-fun b!4049564 () Bool)

(assert (=> b!4049564 (= e!2512677 e!2512671)))

(declare-fun res!1650112 () Bool)

(assert (=> b!4049564 (=> res!1650112 e!2512671)))

(declare-fun lt!1443188 () List!43421)

(assert (=> b!4049564 (= res!1650112 (or (not (= lt!1443177 lt!1443188)) (not (= lt!1443177 lt!1443149))))))

(assert (=> b!4049564 (= lt!1443188 lt!1443149)))

(assert (=> b!4049564 (= lt!1443149 (++!11340 lt!1443165 lt!1443155))))

(assert (=> b!4049564 (= lt!1443188 (++!11340 lt!1443163 suffix!1299))))

(assert (=> b!4049564 (= lt!1443155 (++!11340 lt!1443157 suffix!1299))))

(declare-fun lt!1443173 () Unit!62573)

(assert (=> b!4049564 (= lt!1443173 (lemmaConcatAssociativity!2642 lt!1443165 lt!1443157 suffix!1299))))

(declare-fun b!4049565 () Bool)

(declare-fun res!1650092 () Bool)

(assert (=> b!4049565 (=> (not res!1650092) (not e!2512655))))

(assert (=> b!4049565 (= res!1650092 (isPrefix!4025 newSuffix!27 suffix!1299))))

(declare-fun b!4049566 () Bool)

(assert (=> b!4049566 (= e!2512657 e!2512667)))

(declare-fun res!1650116 () Bool)

(assert (=> b!4049566 (=> res!1650116 e!2512667)))

(assert (=> b!4049566 (= res!1650116 (not (matchR!5796 (regex!6938 (rule!10018 token!484)) lt!1443165)))))

(assert (=> b!4049566 (isPrefix!4025 lt!1443165 lt!1443175)))

(declare-fun lt!1443148 () Unit!62573)

(assert (=> b!4049566 (= lt!1443148 (lemmaPrefixStaysPrefixWhenAddingToSuffix!818 lt!1443165 prefix!494 newSuffix!27))))

(declare-fun lt!1443169 () Unit!62573)

(assert (=> b!4049566 (= lt!1443169 (lemmaPrefixStaysPrefixWhenAddingToSuffix!818 lt!1443165 prefix!494 suffix!1299))))

(assert (= (and start!381896 res!1650091) b!4049537))

(assert (= (and b!4049537 res!1650110) b!4049551))

(assert (= (and b!4049551 res!1650109) b!4049556))

(assert (= (and b!4049556 res!1650104) b!4049565))

(assert (= (and b!4049565 res!1650092) b!4049544))

(assert (= (and b!4049544 res!1650115) b!4049549))

(assert (= (and b!4049549 res!1650107) b!4049558))

(assert (= (and b!4049558 res!1650111) b!4049557))

(assert (= (and b!4049557 (not res!1650095)) b!4049550))

(assert (= (and b!4049550 (not res!1650096)) b!4049535))

(assert (= (and b!4049535 (not res!1650118)) b!4049564))

(assert (= (and b!4049564 (not res!1650112)) b!4049546))

(assert (= (and b!4049546 (not res!1650106)) b!4049566))

(assert (= (and b!4049566 (not res!1650116)) b!4049530))

(assert (= (and b!4049530 res!1650113) b!4049548))

(assert (= (and b!4049548 res!1650102) b!4049542))

(assert (= (and b!4049542 res!1650098) b!4049559))

(assert (= (and b!4049530 (not res!1650108)) b!4049553))

(assert (= (and b!4049553 (not res!1650097)) b!4049554))

(assert (= (and b!4049554 (not res!1650114)) b!4049538))

(assert (= (and b!4049538 (not res!1650100)) b!4049552))

(assert (= (and b!4049552 (not res!1650117)) b!4049555))

(assert (= (and b!4049555 (not res!1650101)) b!4049547))

(assert (= (and b!4049547 (not res!1650103)) b!4049545))

(assert (= (and b!4049545 (not res!1650105)) b!4049536))

(assert (= (and b!4049536 c!699567) b!4049560))

(assert (= (and b!4049536 (not c!699567)) b!4049539))

(assert (= (and b!4049560 res!1650094) b!4049526))

(assert (= (and b!4049536 (not res!1650093)) b!4049561))

(assert (= (and b!4049561 (not res!1650099)) b!4049525))

(assert (= (and b!4049525 (not res!1650119)) b!4049534))

(assert (= (and start!381896 ((_ is Cons!43297) prefix!494)) b!4049533))

(assert (= b!4049563 b!4049527))

(assert (= b!4049540 b!4049563))

(assert (= start!381896 b!4049540))

(assert (= (and start!381896 ((_ is Cons!43297) suffixResult!105)) b!4049528))

(assert (= (and start!381896 ((_ is Cons!43297) suffix!1299)) b!4049532))

(assert (= (and start!381896 ((_ is Cons!43297) newSuffix!27)) b!4049529))

(assert (= b!4049541 b!4049543))

(assert (= b!4049531 b!4049541))

(assert (= (and start!381896 ((_ is Cons!43299) rules!2999)) b!4049531))

(assert (= (and start!381896 ((_ is Cons!43297) newSuffixResult!27)) b!4049562))

(declare-fun m!4649881 () Bool)

(assert (=> b!4049538 m!4649881))

(declare-fun m!4649883 () Bool)

(assert (=> b!4049538 m!4649883))

(declare-fun m!4649885 () Bool)

(assert (=> b!4049537 m!4649885))

(declare-fun m!4649887 () Bool)

(assert (=> b!4049554 m!4649887))

(declare-fun m!4649889 () Bool)

(assert (=> b!4049554 m!4649889))

(declare-fun m!4649891 () Bool)

(assert (=> b!4049554 m!4649891))

(declare-fun m!4649893 () Bool)

(assert (=> b!4049554 m!4649893))

(declare-fun m!4649895 () Bool)

(assert (=> b!4049554 m!4649895))

(declare-fun m!4649897 () Bool)

(assert (=> b!4049554 m!4649897))

(declare-fun m!4649899 () Bool)

(assert (=> b!4049554 m!4649899))

(declare-fun m!4649901 () Bool)

(assert (=> b!4049554 m!4649901))

(assert (=> b!4049554 m!4649895))

(declare-fun m!4649903 () Bool)

(assert (=> b!4049554 m!4649903))

(declare-fun m!4649905 () Bool)

(assert (=> b!4049554 m!4649905))

(declare-fun m!4649907 () Bool)

(assert (=> b!4049554 m!4649907))

(declare-fun m!4649909 () Bool)

(assert (=> b!4049554 m!4649909))

(declare-fun m!4649911 () Bool)

(assert (=> b!4049554 m!4649911))

(declare-fun m!4649913 () Bool)

(assert (=> b!4049554 m!4649913))

(declare-fun m!4649915 () Bool)

(assert (=> b!4049554 m!4649915))

(declare-fun m!4649917 () Bool)

(assert (=> b!4049554 m!4649917))

(assert (=> b!4049554 m!4649909))

(declare-fun m!4649919 () Bool)

(assert (=> b!4049554 m!4649919))

(assert (=> b!4049554 m!4649915))

(declare-fun m!4649921 () Bool)

(assert (=> b!4049554 m!4649921))

(declare-fun m!4649923 () Bool)

(assert (=> b!4049551 m!4649923))

(declare-fun m!4649925 () Bool)

(assert (=> b!4049563 m!4649925))

(declare-fun m!4649927 () Bool)

(assert (=> b!4049563 m!4649927))

(declare-fun m!4649929 () Bool)

(assert (=> b!4049556 m!4649929))

(declare-fun m!4649931 () Bool)

(assert (=> b!4049556 m!4649931))

(declare-fun m!4649933 () Bool)

(assert (=> b!4049557 m!4649933))

(declare-fun m!4649935 () Bool)

(assert (=> b!4049557 m!4649935))

(declare-fun m!4649937 () Bool)

(assert (=> b!4049557 m!4649937))

(declare-fun m!4649939 () Bool)

(assert (=> b!4049557 m!4649939))

(declare-fun m!4649941 () Bool)

(assert (=> b!4049540 m!4649941))

(declare-fun m!4649943 () Bool)

(assert (=> b!4049566 m!4649943))

(declare-fun m!4649945 () Bool)

(assert (=> b!4049566 m!4649945))

(declare-fun m!4649947 () Bool)

(assert (=> b!4049566 m!4649947))

(declare-fun m!4649949 () Bool)

(assert (=> b!4049566 m!4649949))

(declare-fun m!4649951 () Bool)

(assert (=> start!381896 m!4649951))

(declare-fun m!4649953 () Bool)

(assert (=> b!4049534 m!4649953))

(declare-fun m!4649955 () Bool)

(assert (=> b!4049558 m!4649955))

(declare-fun m!4649957 () Bool)

(assert (=> b!4049558 m!4649957))

(declare-fun m!4649959 () Bool)

(assert (=> b!4049530 m!4649959))

(declare-fun m!4649961 () Bool)

(assert (=> b!4049530 m!4649961))

(declare-fun m!4649963 () Bool)

(assert (=> b!4049530 m!4649963))

(declare-fun m!4649965 () Bool)

(assert (=> b!4049530 m!4649965))

(declare-fun m!4649967 () Bool)

(assert (=> b!4049544 m!4649967))

(declare-fun m!4649969 () Bool)

(assert (=> b!4049544 m!4649969))

(declare-fun m!4649971 () Bool)

(assert (=> b!4049544 m!4649971))

(assert (=> b!4049544 m!4649971))

(declare-fun m!4649973 () Bool)

(assert (=> b!4049544 m!4649973))

(declare-fun m!4649975 () Bool)

(assert (=> b!4049545 m!4649975))

(declare-fun m!4649977 () Bool)

(assert (=> b!4049545 m!4649977))

(declare-fun m!4649979 () Bool)

(assert (=> b!4049549 m!4649979))

(declare-fun m!4649981 () Bool)

(assert (=> b!4049549 m!4649981))

(declare-fun m!4649983 () Bool)

(assert (=> b!4049561 m!4649983))

(declare-fun m!4649985 () Bool)

(assert (=> b!4049560 m!4649985))

(declare-fun m!4649987 () Bool)

(assert (=> b!4049560 m!4649987))

(declare-fun m!4649989 () Bool)

(assert (=> b!4049541 m!4649989))

(declare-fun m!4649991 () Bool)

(assert (=> b!4049541 m!4649991))

(declare-fun m!4649993 () Bool)

(assert (=> b!4049565 m!4649993))

(declare-fun m!4649995 () Bool)

(assert (=> b!4049555 m!4649995))

(declare-fun m!4649997 () Bool)

(assert (=> b!4049555 m!4649997))

(declare-fun m!4649999 () Bool)

(assert (=> b!4049555 m!4649999))

(declare-fun m!4650001 () Bool)

(assert (=> b!4049550 m!4650001))

(declare-fun m!4650003 () Bool)

(assert (=> b!4049550 m!4650003))

(declare-fun m!4650005 () Bool)

(assert (=> b!4049550 m!4650005))

(declare-fun m!4650007 () Bool)

(assert (=> b!4049550 m!4650007))

(declare-fun m!4650009 () Bool)

(assert (=> b!4049550 m!4650009))

(declare-fun m!4650011 () Bool)

(assert (=> b!4049564 m!4650011))

(declare-fun m!4650013 () Bool)

(assert (=> b!4049564 m!4650013))

(declare-fun m!4650015 () Bool)

(assert (=> b!4049564 m!4650015))

(declare-fun m!4650017 () Bool)

(assert (=> b!4049564 m!4650017))

(declare-fun m!4650019 () Bool)

(assert (=> b!4049536 m!4650019))

(declare-fun m!4650021 () Bool)

(assert (=> b!4049536 m!4650021))

(declare-fun m!4650023 () Bool)

(assert (=> b!4049536 m!4650023))

(declare-fun m!4650025 () Bool)

(assert (=> b!4049546 m!4650025))

(declare-fun m!4650027 () Bool)

(assert (=> b!4049546 m!4650027))

(assert (=> b!4049546 m!4650025))

(declare-fun m!4650029 () Bool)

(assert (=> b!4049546 m!4650029))

(declare-fun m!4650031 () Bool)

(assert (=> b!4049546 m!4650031))

(declare-fun m!4650033 () Bool)

(assert (=> b!4049546 m!4650033))

(declare-fun m!4650035 () Bool)

(assert (=> b!4049546 m!4650035))

(declare-fun m!4650037 () Bool)

(assert (=> b!4049546 m!4650037))

(declare-fun m!4650039 () Bool)

(assert (=> b!4049553 m!4650039))

(declare-fun m!4650041 () Bool)

(assert (=> b!4049553 m!4650041))

(declare-fun m!4650043 () Bool)

(assert (=> b!4049553 m!4650043))

(declare-fun m!4650045 () Bool)

(assert (=> b!4049553 m!4650045))

(declare-fun m!4650047 () Bool)

(assert (=> b!4049552 m!4650047))

(declare-fun m!4650049 () Bool)

(assert (=> b!4049552 m!4650049))

(declare-fun m!4650051 () Bool)

(assert (=> b!4049552 m!4650051))

(declare-fun m!4650053 () Bool)

(assert (=> b!4049542 m!4650053))

(declare-fun m!4650055 () Bool)

(assert (=> b!4049535 m!4650055))

(declare-fun m!4650057 () Bool)

(assert (=> b!4049535 m!4650057))

(declare-fun m!4650059 () Bool)

(assert (=> b!4049535 m!4650059))

(declare-fun m!4650061 () Bool)

(assert (=> b!4049535 m!4650061))

(declare-fun m!4650063 () Bool)

(assert (=> b!4049525 m!4650063))

(check-sat b_and!311417 b_and!311413 (not b!4049550) (not b!4049535) (not b!4049528) (not b!4049562) (not b!4049537) (not b!4049557) b_and!311411 (not b!4049554) (not b!4049531) (not b!4049533) (not b!4049538) (not b!4049565) (not b!4049532) (not b!4049558) (not b!4049555) (not b!4049552) (not b_next!113411) (not b!4049560) (not b!4049542) b_and!311415 (not b!4049566) (not b!4049564) (not b!4049536) (not b!4049549) (not b!4049525) (not b!4049553) (not b!4049529) (not b!4049530) (not b_next!113415) tp_is_empty!20657 (not b!4049546) (not b!4049534) (not b_next!113409) (not b!4049556) (not b!4049561) (not b!4049544) (not b!4049563) (not b!4049551) (not b!4049540) (not b!4049541) (not start!381896) (not b!4049545) (not b_next!113413))
(check-sat b_and!311417 (not b_next!113411) b_and!311413 b_and!311415 b_and!311411 (not b_next!113415) (not b_next!113409) (not b_next!113413))
(get-model)

(declare-fun b!4049642 () Bool)

(declare-fun res!1650170 () Bool)

(declare-fun e!2512721 () Bool)

(assert (=> b!4049642 (=> (not res!1650170) (not e!2512721))))

(declare-fun lt!1443227 () Option!9352)

(declare-fun get!14204 (Option!9352) tuple2!42370)

(assert (=> b!4049642 (= res!1650170 (matchR!5796 (regex!6938 (rule!10018 (_1!24319 (get!14204 lt!1443227)))) (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443227))))))))

(declare-fun b!4049643 () Bool)

(declare-fun e!2512720 () Option!9352)

(declare-fun lt!1443226 () Option!9352)

(declare-fun lt!1443224 () Option!9352)

(assert (=> b!4049643 (= e!2512720 (ite (and ((_ is None!9351) lt!1443226) ((_ is None!9351) lt!1443224)) None!9351 (ite ((_ is None!9351) lt!1443224) lt!1443226 (ite ((_ is None!9351) lt!1443226) lt!1443224 (ite (>= (size!32371 (_1!24319 (v!39759 lt!1443226))) (size!32371 (_1!24319 (v!39759 lt!1443224)))) lt!1443226 lt!1443224)))))))

(declare-fun call!287835 () Option!9352)

(assert (=> b!4049643 (= lt!1443226 call!287835)))

(assert (=> b!4049643 (= lt!1443224 (maxPrefix!3825 thiss!21717 (t!335826 rules!2999) lt!1443175))))

(declare-fun b!4049644 () Bool)

(assert (=> b!4049644 (= e!2512720 call!287835)))

(declare-fun b!4049645 () Bool)

(declare-fun res!1650171 () Bool)

(assert (=> b!4049645 (=> (not res!1650171) (not e!2512721))))

(assert (=> b!4049645 (= res!1650171 (= (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443227)))) (originalCharacters!7538 (_1!24319 (get!14204 lt!1443227)))))))

(declare-fun b!4049646 () Bool)

(declare-fun res!1650169 () Bool)

(assert (=> b!4049646 (=> (not res!1650169) (not e!2512721))))

(assert (=> b!4049646 (= res!1650169 (< (size!32372 (_2!24319 (get!14204 lt!1443227))) (size!32372 lt!1443175)))))

(declare-fun d!1202548 () Bool)

(declare-fun e!2512722 () Bool)

(assert (=> d!1202548 e!2512722))

(declare-fun res!1650167 () Bool)

(assert (=> d!1202548 (=> res!1650167 e!2512722)))

(declare-fun isEmpty!25841 (Option!9352) Bool)

(assert (=> d!1202548 (= res!1650167 (isEmpty!25841 lt!1443227))))

(assert (=> d!1202548 (= lt!1443227 e!2512720)))

(declare-fun c!699586 () Bool)

(assert (=> d!1202548 (= c!699586 (and ((_ is Cons!43299) rules!2999) ((_ is Nil!43299) (t!335826 rules!2999))))))

(declare-fun lt!1443228 () Unit!62573)

(declare-fun lt!1443225 () Unit!62573)

(assert (=> d!1202548 (= lt!1443228 lt!1443225)))

(assert (=> d!1202548 (isPrefix!4025 lt!1443175 lt!1443175)))

(assert (=> d!1202548 (= lt!1443225 (lemmaIsPrefixRefl!2592 lt!1443175 lt!1443175))))

(declare-fun rulesValidInductive!2532 (LexerInterface!6527 List!43423) Bool)

(assert (=> d!1202548 (rulesValidInductive!2532 thiss!21717 rules!2999)))

(assert (=> d!1202548 (= (maxPrefix!3825 thiss!21717 rules!2999 lt!1443175) lt!1443227)))

(declare-fun b!4049647 () Bool)

(assert (=> b!4049647 (= e!2512721 (contains!8610 rules!2999 (rule!10018 (_1!24319 (get!14204 lt!1443227)))))))

(declare-fun b!4049648 () Bool)

(declare-fun res!1650172 () Bool)

(assert (=> b!4049648 (=> (not res!1650172) (not e!2512721))))

(assert (=> b!4049648 (= res!1650172 (= (++!11340 (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443227)))) (_2!24319 (get!14204 lt!1443227))) lt!1443175))))

(declare-fun b!4049649 () Bool)

(assert (=> b!4049649 (= e!2512722 e!2512721)))

(declare-fun res!1650168 () Bool)

(assert (=> b!4049649 (=> (not res!1650168) (not e!2512721))))

(declare-fun isDefined!7111 (Option!9352) Bool)

(assert (=> b!4049649 (= res!1650168 (isDefined!7111 lt!1443227))))

(declare-fun b!4049650 () Bool)

(declare-fun res!1650166 () Bool)

(assert (=> b!4049650 (=> (not res!1650166) (not e!2512721))))

(assert (=> b!4049650 (= res!1650166 (= (value!218367 (_1!24319 (get!14204 lt!1443227))) (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (get!14204 lt!1443227)))) (seqFromList!5155 (originalCharacters!7538 (_1!24319 (get!14204 lt!1443227)))))))))

(declare-fun bm!287830 () Bool)

(assert (=> bm!287830 (= call!287835 (maxPrefixOneRule!2837 thiss!21717 (h!48719 rules!2999) lt!1443175))))

(assert (= (and d!1202548 c!699586) b!4049644))

(assert (= (and d!1202548 (not c!699586)) b!4049643))

(assert (= (or b!4049644 b!4049643) bm!287830))

(assert (= (and d!1202548 (not res!1650167)) b!4049649))

(assert (= (and b!4049649 res!1650168) b!4049645))

(assert (= (and b!4049645 res!1650171) b!4049646))

(assert (= (and b!4049646 res!1650169) b!4049648))

(assert (= (and b!4049648 res!1650172) b!4049650))

(assert (= (and b!4049650 res!1650166) b!4049642))

(assert (= (and b!4049642 res!1650170) b!4049647))

(declare-fun m!4650111 () Bool)

(assert (=> b!4049648 m!4650111))

(declare-fun m!4650121 () Bool)

(assert (=> b!4049648 m!4650121))

(assert (=> b!4049648 m!4650121))

(declare-fun m!4650129 () Bool)

(assert (=> b!4049648 m!4650129))

(assert (=> b!4049648 m!4650129))

(declare-fun m!4650133 () Bool)

(assert (=> b!4049648 m!4650133))

(assert (=> b!4049646 m!4650111))

(declare-fun m!4650135 () Bool)

(assert (=> b!4049646 m!4650135))

(declare-fun m!4650137 () Bool)

(assert (=> b!4049646 m!4650137))

(declare-fun m!4650139 () Bool)

(assert (=> b!4049643 m!4650139))

(declare-fun m!4650141 () Bool)

(assert (=> d!1202548 m!4650141))

(declare-fun m!4650143 () Bool)

(assert (=> d!1202548 m!4650143))

(declare-fun m!4650145 () Bool)

(assert (=> d!1202548 m!4650145))

(declare-fun m!4650147 () Bool)

(assert (=> d!1202548 m!4650147))

(assert (=> b!4049645 m!4650111))

(assert (=> b!4049645 m!4650121))

(assert (=> b!4049645 m!4650121))

(assert (=> b!4049645 m!4650129))

(declare-fun m!4650149 () Bool)

(assert (=> b!4049649 m!4650149))

(assert (=> b!4049642 m!4650111))

(assert (=> b!4049642 m!4650121))

(assert (=> b!4049642 m!4650121))

(assert (=> b!4049642 m!4650129))

(assert (=> b!4049642 m!4650129))

(declare-fun m!4650151 () Bool)

(assert (=> b!4049642 m!4650151))

(assert (=> b!4049647 m!4650111))

(declare-fun m!4650153 () Bool)

(assert (=> b!4049647 m!4650153))

(assert (=> b!4049650 m!4650111))

(declare-fun m!4650155 () Bool)

(assert (=> b!4049650 m!4650155))

(assert (=> b!4049650 m!4650155))

(declare-fun m!4650157 () Bool)

(assert (=> b!4049650 m!4650157))

(declare-fun m!4650159 () Bool)

(assert (=> bm!287830 m!4650159))

(assert (=> b!4049553 d!1202548))

(declare-fun d!1202568 () Bool)

(assert (=> d!1202568 (= suffixResult!105 lt!1443151)))

(declare-fun lt!1443238 () Unit!62573)

(declare-fun choose!24557 (List!43421 List!43421 List!43421 List!43421 List!43421) Unit!62573)

(assert (=> d!1202568 (= lt!1443238 (choose!24557 lt!1443165 suffixResult!105 lt!1443165 lt!1443151 lt!1443177))))

(assert (=> d!1202568 (isPrefix!4025 lt!1443165 lt!1443177)))

(assert (=> d!1202568 (= (lemmaSamePrefixThenSameSuffix!2186 lt!1443165 suffixResult!105 lt!1443165 lt!1443151 lt!1443177) lt!1443238)))

(declare-fun bs!591455 () Bool)

(assert (= bs!591455 d!1202568))

(declare-fun m!4650175 () Bool)

(assert (=> bs!591455 m!4650175))

(assert (=> bs!591455 m!4650003))

(assert (=> b!4049553 d!1202568))

(declare-fun b!4049716 () Bool)

(declare-fun e!2512767 () Bool)

(declare-fun e!2512766 () Bool)

(assert (=> b!4049716 (= e!2512767 e!2512766)))

(declare-fun res!1650220 () Bool)

(assert (=> b!4049716 (=> (not res!1650220) (not e!2512766))))

(assert (=> b!4049716 (= res!1650220 (not ((_ is Nil!43297) lt!1443161)))))

(declare-fun b!4049719 () Bool)

(declare-fun e!2512765 () Bool)

(assert (=> b!4049719 (= e!2512765 (>= (size!32372 lt!1443161) (size!32372 lt!1443165)))))

(declare-fun b!4049717 () Bool)

(declare-fun res!1650218 () Bool)

(assert (=> b!4049717 (=> (not res!1650218) (not e!2512766))))

(declare-fun head!8561 (List!43421) C!23872)

(assert (=> b!4049717 (= res!1650218 (= (head!8561 lt!1443165) (head!8561 lt!1443161)))))

(declare-fun d!1202576 () Bool)

(assert (=> d!1202576 e!2512765))

(declare-fun res!1650219 () Bool)

(assert (=> d!1202576 (=> res!1650219 e!2512765)))

(declare-fun lt!1443250 () Bool)

(assert (=> d!1202576 (= res!1650219 (not lt!1443250))))

(assert (=> d!1202576 (= lt!1443250 e!2512767)))

(declare-fun res!1650221 () Bool)

(assert (=> d!1202576 (=> res!1650221 e!2512767)))

(assert (=> d!1202576 (= res!1650221 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202576 (= (isPrefix!4025 lt!1443165 lt!1443161) lt!1443250)))

(declare-fun b!4049718 () Bool)

(declare-fun tail!6293 (List!43421) List!43421)

(assert (=> b!4049718 (= e!2512766 (isPrefix!4025 (tail!6293 lt!1443165) (tail!6293 lt!1443161)))))

(assert (= (and d!1202576 (not res!1650221)) b!4049716))

(assert (= (and b!4049716 res!1650220) b!4049717))

(assert (= (and b!4049717 res!1650218) b!4049718))

(assert (= (and d!1202576 (not res!1650219)) b!4049719))

(declare-fun m!4650221 () Bool)

(assert (=> b!4049719 m!4650221))

(assert (=> b!4049719 m!4649967))

(declare-fun m!4650223 () Bool)

(assert (=> b!4049717 m!4650223))

(declare-fun m!4650225 () Bool)

(assert (=> b!4049717 m!4650225))

(declare-fun m!4650227 () Bool)

(assert (=> b!4049718 m!4650227))

(declare-fun m!4650229 () Bool)

(assert (=> b!4049718 m!4650229))

(assert (=> b!4049718 m!4650227))

(assert (=> b!4049718 m!4650229))

(declare-fun m!4650231 () Bool)

(assert (=> b!4049718 m!4650231))

(assert (=> b!4049553 d!1202576))

(declare-fun d!1202594 () Bool)

(assert (=> d!1202594 (isPrefix!4025 lt!1443165 (++!11340 lt!1443165 lt!1443151))))

(declare-fun lt!1443259 () Unit!62573)

(declare-fun choose!24558 (List!43421 List!43421) Unit!62573)

(assert (=> d!1202594 (= lt!1443259 (choose!24558 lt!1443165 lt!1443151))))

(assert (=> d!1202594 (= (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443165 lt!1443151) lt!1443259)))

(declare-fun bs!591458 () Bool)

(assert (= bs!591458 d!1202594))

(assert (=> bs!591458 m!4649959))

(assert (=> bs!591458 m!4649959))

(declare-fun m!4650245 () Bool)

(assert (=> bs!591458 m!4650245))

(declare-fun m!4650247 () Bool)

(assert (=> bs!591458 m!4650247))

(assert (=> b!4049553 d!1202594))

(declare-fun d!1202600 () Bool)

(declare-fun dynLambda!18396 (Int BalanceConc!25892) TokenValue!7168)

(assert (=> d!1202600 (= (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (seqFromList!5155 lt!1443187)) (dynLambda!18396 (toValue!9490 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) (seqFromList!5155 lt!1443187)))))

(declare-fun b_lambda!118337 () Bool)

(assert (=> (not b_lambda!118337) (not d!1202600)))

(declare-fun tb!243637 () Bool)

(declare-fun t!335832 () Bool)

(assert (=> (and b!4049527 (= (toValue!9490 (transformation!6938 (rule!10018 token!484))) (toValue!9490 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))) t!335832) tb!243637))

(declare-fun result!295228 () Bool)

(assert (=> tb!243637 (= result!295228 (inv!21 (dynLambda!18396 (toValue!9490 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) (seqFromList!5155 lt!1443187))))))

(declare-fun m!4650269 () Bool)

(assert (=> tb!243637 m!4650269))

(assert (=> d!1202600 t!335832))

(declare-fun b_and!311423 () Bool)

(assert (= b_and!311411 (and (=> t!335832 result!295228) b_and!311423)))

(declare-fun tb!243639 () Bool)

(declare-fun t!335834 () Bool)

(assert (=> (and b!4049543 (= (toValue!9490 (transformation!6938 (h!48719 rules!2999))) (toValue!9490 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))) t!335834) tb!243639))

(declare-fun result!295232 () Bool)

(assert (= result!295232 result!295228))

(assert (=> d!1202600 t!335834))

(declare-fun b_and!311425 () Bool)

(assert (= b_and!311415 (and (=> t!335834 result!295232) b_and!311425)))

(assert (=> d!1202600 m!4649895))

(declare-fun m!4650275 () Bool)

(assert (=> d!1202600 m!4650275))

(assert (=> b!4049554 d!1202600))

(declare-fun d!1202612 () Bool)

(assert (=> d!1202612 (isPrefix!4025 lt!1443187 (++!11340 lt!1443187 (_2!24319 (v!39759 lt!1443176))))))

(declare-fun lt!1443267 () Unit!62573)

(assert (=> d!1202612 (= lt!1443267 (choose!24558 lt!1443187 (_2!24319 (v!39759 lt!1443176))))))

(assert (=> d!1202612 (= (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443187 (_2!24319 (v!39759 lt!1443176))) lt!1443267)))

(declare-fun bs!591460 () Bool)

(assert (= bs!591460 d!1202612))

(assert (=> bs!591460 m!4649907))

(assert (=> bs!591460 m!4649907))

(declare-fun m!4650277 () Bool)

(assert (=> bs!591460 m!4650277))

(declare-fun m!4650279 () Bool)

(assert (=> bs!591460 m!4650279))

(assert (=> b!4049554 d!1202612))

(declare-fun d!1202616 () Bool)

(declare-fun lt!1443271 () BalanceConc!25892)

(assert (=> d!1202616 (= (list!16130 lt!1443271) (originalCharacters!7538 (_1!24319 (v!39759 lt!1443176))))))

(declare-fun dynLambda!18397 (Int TokenValue!7168) BalanceConc!25892)

(assert (=> d!1202616 (= lt!1443271 (dynLambda!18397 (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) (value!218367 (_1!24319 (v!39759 lt!1443176)))))))

(assert (=> d!1202616 (= (charsOf!4754 (_1!24319 (v!39759 lt!1443176))) lt!1443271)))

(declare-fun b_lambda!118339 () Bool)

(assert (=> (not b_lambda!118339) (not d!1202616)))

(declare-fun t!335836 () Bool)

(declare-fun tb!243641 () Bool)

(assert (=> (and b!4049527 (= (toChars!9349 (transformation!6938 (rule!10018 token!484))) (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))) t!335836) tb!243641))

(declare-fun b!4049758 () Bool)

(declare-fun e!2512796 () Bool)

(declare-fun tp!1228283 () Bool)

(declare-fun inv!57882 (Conc!13149) Bool)

(assert (=> b!4049758 (= e!2512796 (and (inv!57882 (c!699568 (dynLambda!18397 (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) (value!218367 (_1!24319 (v!39759 lt!1443176)))))) tp!1228283))))

(declare-fun result!295234 () Bool)

(declare-fun inv!57883 (BalanceConc!25892) Bool)

(assert (=> tb!243641 (= result!295234 (and (inv!57883 (dynLambda!18397 (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) (value!218367 (_1!24319 (v!39759 lt!1443176))))) e!2512796))))

(assert (= tb!243641 b!4049758))

(declare-fun m!4650307 () Bool)

(assert (=> b!4049758 m!4650307))

(declare-fun m!4650311 () Bool)

(assert (=> tb!243641 m!4650311))

(assert (=> d!1202616 t!335836))

(declare-fun b_and!311431 () Bool)

(assert (= b_and!311413 (and (=> t!335836 result!295234) b_and!311431)))

(declare-fun tb!243647 () Bool)

(declare-fun t!335842 () Bool)

(assert (=> (and b!4049543 (= (toChars!9349 (transformation!6938 (h!48719 rules!2999))) (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))) t!335842) tb!243647))

(declare-fun result!295242 () Bool)

(assert (= result!295242 result!295234))

(assert (=> d!1202616 t!335842))

(declare-fun b_and!311433 () Bool)

(assert (= b_and!311417 (and (=> t!335842 result!295242) b_and!311433)))

(declare-fun m!4650313 () Bool)

(assert (=> d!1202616 m!4650313))

(declare-fun m!4650315 () Bool)

(assert (=> d!1202616 m!4650315))

(assert (=> b!4049554 d!1202616))

(declare-fun d!1202630 () Bool)

(assert (=> d!1202630 (isPrefix!4025 lt!1443187 (++!11340 lt!1443187 newSuffixResult!27))))

(declare-fun lt!1443275 () Unit!62573)

(assert (=> d!1202630 (= lt!1443275 (choose!24558 lt!1443187 newSuffixResult!27))))

(assert (=> d!1202630 (= (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443187 newSuffixResult!27) lt!1443275)))

(declare-fun bs!591464 () Bool)

(assert (= bs!591464 d!1202630))

(assert (=> bs!591464 m!4649915))

(assert (=> bs!591464 m!4649915))

(assert (=> bs!591464 m!4649921))

(declare-fun m!4650327 () Bool)

(assert (=> bs!591464 m!4650327))

(assert (=> b!4049554 d!1202630))

(declare-fun b!4049767 () Bool)

(declare-fun e!2512804 () Bool)

(declare-fun e!2512803 () Bool)

(assert (=> b!4049767 (= e!2512804 e!2512803)))

(declare-fun res!1650249 () Bool)

(assert (=> b!4049767 (=> (not res!1650249) (not e!2512803))))

(assert (=> b!4049767 (= res!1650249 (not ((_ is Nil!43297) lt!1443185)))))

(declare-fun b!4049770 () Bool)

(declare-fun e!2512802 () Bool)

(assert (=> b!4049770 (= e!2512802 (>= (size!32372 lt!1443185) (size!32372 lt!1443187)))))

(declare-fun b!4049768 () Bool)

(declare-fun res!1650247 () Bool)

(assert (=> b!4049768 (=> (not res!1650247) (not e!2512803))))

(assert (=> b!4049768 (= res!1650247 (= (head!8561 lt!1443187) (head!8561 lt!1443185)))))

(declare-fun d!1202634 () Bool)

(assert (=> d!1202634 e!2512802))

(declare-fun res!1650248 () Bool)

(assert (=> d!1202634 (=> res!1650248 e!2512802)))

(declare-fun lt!1443277 () Bool)

(assert (=> d!1202634 (= res!1650248 (not lt!1443277))))

(assert (=> d!1202634 (= lt!1443277 e!2512804)))

(declare-fun res!1650250 () Bool)

(assert (=> d!1202634 (=> res!1650250 e!2512804)))

(assert (=> d!1202634 (= res!1650250 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202634 (= (isPrefix!4025 lt!1443187 lt!1443185) lt!1443277)))

(declare-fun b!4049769 () Bool)

(assert (=> b!4049769 (= e!2512803 (isPrefix!4025 (tail!6293 lt!1443187) (tail!6293 lt!1443185)))))

(assert (= (and d!1202634 (not res!1650250)) b!4049767))

(assert (= (and b!4049767 res!1650249) b!4049768))

(assert (= (and b!4049768 res!1650247) b!4049769))

(assert (= (and d!1202634 (not res!1650248)) b!4049770))

(declare-fun m!4650347 () Bool)

(assert (=> b!4049770 m!4650347))

(assert (=> b!4049770 m!4649889))

(declare-fun m!4650349 () Bool)

(assert (=> b!4049768 m!4650349))

(declare-fun m!4650351 () Bool)

(assert (=> b!4049768 m!4650351))

(declare-fun m!4650353 () Bool)

(assert (=> b!4049769 m!4650353))

(declare-fun m!4650355 () Bool)

(assert (=> b!4049769 m!4650355))

(assert (=> b!4049769 m!4650353))

(assert (=> b!4049769 m!4650355))

(declare-fun m!4650357 () Bool)

(assert (=> b!4049769 m!4650357))

(assert (=> b!4049554 d!1202634))

(declare-fun d!1202642 () Bool)

(declare-fun list!16132 (Conc!13149) List!43421)

(assert (=> d!1202642 (= (list!16130 (charsOf!4754 (_1!24319 (v!39759 lt!1443176)))) (list!16132 (c!699568 (charsOf!4754 (_1!24319 (v!39759 lt!1443176))))))))

(declare-fun bs!591466 () Bool)

(assert (= bs!591466 d!1202642))

(declare-fun m!4650359 () Bool)

(assert (=> bs!591466 m!4650359))

(assert (=> b!4049554 d!1202642))

(declare-fun b!4049824 () Bool)

(declare-fun res!1650297 () Bool)

(declare-fun e!2512837 () Bool)

(assert (=> b!4049824 (=> (not res!1650297) (not e!2512837))))

(declare-fun lt!1443308 () Option!9352)

(assert (=> b!4049824 (= res!1650297 (= (value!218367 (_1!24319 (get!14204 lt!1443308))) (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (get!14204 lt!1443308)))) (seqFromList!5155 (originalCharacters!7538 (_1!24319 (get!14204 lt!1443308)))))))))

(declare-fun b!4049825 () Bool)

(declare-fun res!1650294 () Bool)

(assert (=> b!4049825 (=> (not res!1650294) (not e!2512837))))

(assert (=> b!4049825 (= res!1650294 (= (rule!10018 (_1!24319 (get!14204 lt!1443308))) (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(declare-fun b!4049826 () Bool)

(declare-fun e!2512834 () Option!9352)

(declare-datatypes ((tuple2!42372 0))(
  ( (tuple2!42373 (_1!24320 List!43421) (_2!24320 List!43421)) )
))
(declare-fun lt!1443309 () tuple2!42372)

(declare-fun size!32373 (BalanceConc!25892) Int)

(assert (=> b!4049826 (= e!2512834 (Some!9351 (tuple2!42371 (Token!13015 (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (seqFromList!5155 (_1!24320 lt!1443309))) (rule!10018 (_1!24319 (v!39759 lt!1443176))) (size!32373 (seqFromList!5155 (_1!24320 lt!1443309))) (_1!24320 lt!1443309)) (_2!24320 lt!1443309))))))

(declare-fun lt!1443307 () Unit!62573)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1367 (Regex!11843 List!43421) Unit!62573)

(assert (=> b!4049826 (= lt!1443307 (longestMatchIsAcceptedByMatchOrIsEmpty!1367 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443175))))

(declare-fun res!1650293 () Bool)

(declare-fun isEmpty!25842 (List!43421) Bool)

(declare-fun findLongestMatchInner!1394 (Regex!11843 List!43421 Int List!43421 List!43421 Int) tuple2!42372)

(assert (=> b!4049826 (= res!1650293 (isEmpty!25842 (_1!24320 (findLongestMatchInner!1394 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) Nil!43297 (size!32372 Nil!43297) lt!1443175 lt!1443175 (size!32372 lt!1443175)))))))

(declare-fun e!2512836 () Bool)

(assert (=> b!4049826 (=> res!1650293 e!2512836)))

(assert (=> b!4049826 e!2512836))

(declare-fun lt!1443310 () Unit!62573)

(assert (=> b!4049826 (= lt!1443310 lt!1443307)))

(declare-fun lt!1443311 () Unit!62573)

(declare-fun lemmaSemiInverse!1916 (TokenValueInjection!13764 BalanceConc!25892) Unit!62573)

(assert (=> b!4049826 (= lt!1443311 (lemmaSemiInverse!1916 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (seqFromList!5155 (_1!24320 lt!1443309))))))

(declare-fun b!4049827 () Bool)

(declare-fun res!1650298 () Bool)

(assert (=> b!4049827 (=> (not res!1650298) (not e!2512837))))

(assert (=> b!4049827 (= res!1650298 (= (++!11340 (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443308)))) (_2!24319 (get!14204 lt!1443308))) lt!1443175))))

(declare-fun b!4049828 () Bool)

(assert (=> b!4049828 (= e!2512836 (matchR!5796 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (_1!24320 (findLongestMatchInner!1394 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) Nil!43297 (size!32372 Nil!43297) lt!1443175 lt!1443175 (size!32372 lt!1443175)))))))

(declare-fun b!4049830 () Bool)

(assert (=> b!4049830 (= e!2512834 None!9351)))

(declare-fun b!4049831 () Bool)

(assert (=> b!4049831 (= e!2512837 (= (size!32371 (_1!24319 (get!14204 lt!1443308))) (size!32372 (originalCharacters!7538 (_1!24319 (get!14204 lt!1443308))))))))

(declare-fun b!4049832 () Bool)

(declare-fun e!2512835 () Bool)

(assert (=> b!4049832 (= e!2512835 e!2512837)))

(declare-fun res!1650292 () Bool)

(assert (=> b!4049832 (=> (not res!1650292) (not e!2512837))))

(assert (=> b!4049832 (= res!1650292 (matchR!5796 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443308))))))))

(declare-fun d!1202644 () Bool)

(assert (=> d!1202644 e!2512835))

(declare-fun res!1650295 () Bool)

(assert (=> d!1202644 (=> res!1650295 e!2512835)))

(assert (=> d!1202644 (= res!1650295 (isEmpty!25841 lt!1443308))))

(assert (=> d!1202644 (= lt!1443308 e!2512834)))

(declare-fun c!699609 () Bool)

(assert (=> d!1202644 (= c!699609 (isEmpty!25842 (_1!24320 lt!1443309)))))

(declare-fun findLongestMatch!1307 (Regex!11843 List!43421) tuple2!42372)

(assert (=> d!1202644 (= lt!1443309 (findLongestMatch!1307 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443175))))

(assert (=> d!1202644 (ruleValid!2868 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))

(assert (=> d!1202644 (= (maxPrefixOneRule!2837 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))) lt!1443175) lt!1443308)))

(declare-fun b!4049829 () Bool)

(declare-fun res!1650296 () Bool)

(assert (=> b!4049829 (=> (not res!1650296) (not e!2512837))))

(assert (=> b!4049829 (= res!1650296 (< (size!32372 (_2!24319 (get!14204 lt!1443308))) (size!32372 lt!1443175)))))

(assert (= (and d!1202644 c!699609) b!4049830))

(assert (= (and d!1202644 (not c!699609)) b!4049826))

(assert (= (and b!4049826 (not res!1650293)) b!4049828))

(assert (= (and d!1202644 (not res!1650295)) b!4049832))

(assert (= (and b!4049832 res!1650292) b!4049827))

(assert (= (and b!4049827 res!1650298) b!4049829))

(assert (= (and b!4049829 res!1650296) b!4049825))

(assert (= (and b!4049825 res!1650294) b!4049824))

(assert (= (and b!4049824 res!1650297) b!4049831))

(declare-fun m!4650389 () Bool)

(assert (=> b!4049826 m!4650389))

(declare-fun m!4650391 () Bool)

(assert (=> b!4049826 m!4650391))

(declare-fun m!4650393 () Bool)

(assert (=> b!4049826 m!4650393))

(assert (=> b!4049826 m!4650137))

(declare-fun m!4650395 () Bool)

(assert (=> b!4049826 m!4650395))

(declare-fun m!4650397 () Bool)

(assert (=> b!4049826 m!4650397))

(declare-fun m!4650399 () Bool)

(assert (=> b!4049826 m!4650399))

(assert (=> b!4049826 m!4650393))

(assert (=> b!4049826 m!4650397))

(declare-fun m!4650401 () Bool)

(assert (=> b!4049826 m!4650401))

(assert (=> b!4049826 m!4650137))

(assert (=> b!4049826 m!4650397))

(declare-fun m!4650403 () Bool)

(assert (=> b!4049826 m!4650403))

(assert (=> b!4049826 m!4650397))

(declare-fun m!4650405 () Bool)

(assert (=> b!4049831 m!4650405))

(declare-fun m!4650407 () Bool)

(assert (=> b!4049831 m!4650407))

(assert (=> b!4049825 m!4650405))

(assert (=> b!4049827 m!4650405))

(declare-fun m!4650409 () Bool)

(assert (=> b!4049827 m!4650409))

(assert (=> b!4049827 m!4650409))

(declare-fun m!4650411 () Bool)

(assert (=> b!4049827 m!4650411))

(assert (=> b!4049827 m!4650411))

(declare-fun m!4650413 () Bool)

(assert (=> b!4049827 m!4650413))

(assert (=> b!4049828 m!4650393))

(assert (=> b!4049828 m!4650137))

(assert (=> b!4049828 m!4650393))

(assert (=> b!4049828 m!4650137))

(assert (=> b!4049828 m!4650395))

(declare-fun m!4650415 () Bool)

(assert (=> b!4049828 m!4650415))

(assert (=> b!4049829 m!4650405))

(declare-fun m!4650417 () Bool)

(assert (=> b!4049829 m!4650417))

(assert (=> b!4049829 m!4650137))

(assert (=> b!4049832 m!4650405))

(assert (=> b!4049832 m!4650409))

(assert (=> b!4049832 m!4650409))

(assert (=> b!4049832 m!4650411))

(assert (=> b!4049832 m!4650411))

(declare-fun m!4650419 () Bool)

(assert (=> b!4049832 m!4650419))

(assert (=> b!4049824 m!4650405))

(declare-fun m!4650421 () Bool)

(assert (=> b!4049824 m!4650421))

(assert (=> b!4049824 m!4650421))

(declare-fun m!4650423 () Bool)

(assert (=> b!4049824 m!4650423))

(declare-fun m!4650425 () Bool)

(assert (=> d!1202644 m!4650425))

(declare-fun m!4650427 () Bool)

(assert (=> d!1202644 m!4650427))

(declare-fun m!4650429 () Bool)

(assert (=> d!1202644 m!4650429))

(assert (=> d!1202644 m!4649911))

(assert (=> b!4049554 d!1202644))

(declare-fun b!4049858 () Bool)

(declare-fun e!2512851 () List!43421)

(assert (=> b!4049858 (= e!2512851 (Cons!43297 (h!48717 lt!1443187) (++!11340 (t!335824 lt!1443187) (_2!24319 (v!39759 lt!1443176)))))))

(declare-fun d!1202662 () Bool)

(declare-fun e!2512850 () Bool)

(assert (=> d!1202662 e!2512850))

(declare-fun res!1650316 () Bool)

(assert (=> d!1202662 (=> (not res!1650316) (not e!2512850))))

(declare-fun lt!1443321 () List!43421)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6594 (List!43421) (InoxSet C!23872))

(assert (=> d!1202662 (= res!1650316 (= (content!6594 lt!1443321) ((_ map or) (content!6594 lt!1443187) (content!6594 (_2!24319 (v!39759 lt!1443176))))))))

(assert (=> d!1202662 (= lt!1443321 e!2512851)))

(declare-fun c!699614 () Bool)

(assert (=> d!1202662 (= c!699614 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202662 (= (++!11340 lt!1443187 (_2!24319 (v!39759 lt!1443176))) lt!1443321)))

(declare-fun b!4049857 () Bool)

(assert (=> b!4049857 (= e!2512851 (_2!24319 (v!39759 lt!1443176)))))

(declare-fun b!4049859 () Bool)

(declare-fun res!1650315 () Bool)

(assert (=> b!4049859 (=> (not res!1650315) (not e!2512850))))

(assert (=> b!4049859 (= res!1650315 (= (size!32372 lt!1443321) (+ (size!32372 lt!1443187) (size!32372 (_2!24319 (v!39759 lt!1443176))))))))

(declare-fun b!4049860 () Bool)

(assert (=> b!4049860 (= e!2512850 (or (not (= (_2!24319 (v!39759 lt!1443176)) Nil!43297)) (= lt!1443321 lt!1443187)))))

(assert (= (and d!1202662 c!699614) b!4049857))

(assert (= (and d!1202662 (not c!699614)) b!4049858))

(assert (= (and d!1202662 res!1650316) b!4049859))

(assert (= (and b!4049859 res!1650315) b!4049860))

(declare-fun m!4650485 () Bool)

(assert (=> b!4049858 m!4650485))

(declare-fun m!4650487 () Bool)

(assert (=> d!1202662 m!4650487))

(declare-fun m!4650489 () Bool)

(assert (=> d!1202662 m!4650489))

(declare-fun m!4650491 () Bool)

(assert (=> d!1202662 m!4650491))

(declare-fun m!4650493 () Bool)

(assert (=> b!4049859 m!4650493))

(assert (=> b!4049859 m!4649889))

(declare-fun m!4650495 () Bool)

(assert (=> b!4049859 m!4650495))

(assert (=> b!4049554 d!1202662))

(declare-fun b!4049861 () Bool)

(declare-fun e!2512854 () Bool)

(declare-fun e!2512853 () Bool)

(assert (=> b!4049861 (= e!2512854 e!2512853)))

(declare-fun res!1650319 () Bool)

(assert (=> b!4049861 (=> (not res!1650319) (not e!2512853))))

(assert (=> b!4049861 (= res!1650319 (not ((_ is Nil!43297) (++!11340 lt!1443187 newSuffixResult!27))))))

(declare-fun b!4049864 () Bool)

(declare-fun e!2512852 () Bool)

(assert (=> b!4049864 (= e!2512852 (>= (size!32372 (++!11340 lt!1443187 newSuffixResult!27)) (size!32372 lt!1443187)))))

(declare-fun b!4049862 () Bool)

(declare-fun res!1650317 () Bool)

(assert (=> b!4049862 (=> (not res!1650317) (not e!2512853))))

(assert (=> b!4049862 (= res!1650317 (= (head!8561 lt!1443187) (head!8561 (++!11340 lt!1443187 newSuffixResult!27))))))

(declare-fun d!1202674 () Bool)

(assert (=> d!1202674 e!2512852))

(declare-fun res!1650318 () Bool)

(assert (=> d!1202674 (=> res!1650318 e!2512852)))

(declare-fun lt!1443324 () Bool)

(assert (=> d!1202674 (= res!1650318 (not lt!1443324))))

(assert (=> d!1202674 (= lt!1443324 e!2512854)))

(declare-fun res!1650320 () Bool)

(assert (=> d!1202674 (=> res!1650320 e!2512854)))

(assert (=> d!1202674 (= res!1650320 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202674 (= (isPrefix!4025 lt!1443187 (++!11340 lt!1443187 newSuffixResult!27)) lt!1443324)))

(declare-fun b!4049863 () Bool)

(assert (=> b!4049863 (= e!2512853 (isPrefix!4025 (tail!6293 lt!1443187) (tail!6293 (++!11340 lt!1443187 newSuffixResult!27))))))

(assert (= (and d!1202674 (not res!1650320)) b!4049861))

(assert (= (and b!4049861 res!1650319) b!4049862))

(assert (= (and b!4049862 res!1650317) b!4049863))

(assert (= (and d!1202674 (not res!1650318)) b!4049864))

(assert (=> b!4049864 m!4649915))

(declare-fun m!4650499 () Bool)

(assert (=> b!4049864 m!4650499))

(assert (=> b!4049864 m!4649889))

(assert (=> b!4049862 m!4650349))

(assert (=> b!4049862 m!4649915))

(declare-fun m!4650501 () Bool)

(assert (=> b!4049862 m!4650501))

(assert (=> b!4049863 m!4650353))

(assert (=> b!4049863 m!4649915))

(declare-fun m!4650503 () Bool)

(assert (=> b!4049863 m!4650503))

(assert (=> b!4049863 m!4650353))

(assert (=> b!4049863 m!4650503))

(declare-fun m!4650505 () Bool)

(assert (=> b!4049863 m!4650505))

(assert (=> b!4049554 d!1202674))

(declare-fun d!1202678 () Bool)

(declare-fun lt!1443334 () Int)

(assert (=> d!1202678 (>= lt!1443334 0)))

(declare-fun e!2512867 () Int)

(assert (=> d!1202678 (= lt!1443334 e!2512867)))

(declare-fun c!699618 () Bool)

(assert (=> d!1202678 (= c!699618 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202678 (= (size!32372 lt!1443187) lt!1443334)))

(declare-fun b!4049883 () Bool)

(assert (=> b!4049883 (= e!2512867 0)))

(declare-fun b!4049884 () Bool)

(assert (=> b!4049884 (= e!2512867 (+ 1 (size!32372 (t!335824 lt!1443187))))))

(assert (= (and d!1202678 c!699618) b!4049883))

(assert (= (and d!1202678 (not c!699618)) b!4049884))

(declare-fun m!4650539 () Bool)

(assert (=> b!4049884 m!4650539))

(assert (=> b!4049554 d!1202678))

(declare-fun d!1202692 () Bool)

(assert (=> d!1202692 (= (size!32371 (_1!24319 (v!39759 lt!1443176))) (size!32372 (originalCharacters!7538 (_1!24319 (v!39759 lt!1443176)))))))

(declare-fun Unit!62577 () Unit!62573)

(assert (=> d!1202692 (= (lemmaCharactersSize!1457 (_1!24319 (v!39759 lt!1443176))) Unit!62577)))

(declare-fun bs!591475 () Bool)

(assert (= bs!591475 d!1202692))

(declare-fun m!4650541 () Bool)

(assert (=> bs!591475 m!4650541))

(assert (=> b!4049554 d!1202692))

(declare-fun d!1202694 () Bool)

(assert (=> d!1202694 (ruleValid!2868 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))

(declare-fun lt!1443343 () Unit!62573)

(declare-fun choose!24561 (LexerInterface!6527 Rule!13676 List!43423) Unit!62573)

(assert (=> d!1202694 (= lt!1443343 (choose!24561 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))) rules!2999))))

(assert (=> d!1202694 (contains!8610 rules!2999 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))

(assert (=> d!1202694 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1938 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))) rules!2999) lt!1443343)))

(declare-fun bs!591477 () Bool)

(assert (= bs!591477 d!1202694))

(assert (=> bs!591477 m!4649911))

(declare-fun m!4650585 () Bool)

(assert (=> bs!591477 m!4650585))

(assert (=> bs!591477 m!4650063))

(assert (=> b!4049554 d!1202694))

(declare-fun d!1202700 () Bool)

(declare-fun res!1650344 () Bool)

(declare-fun e!2512875 () Bool)

(assert (=> d!1202700 (=> (not res!1650344) (not e!2512875))))

(declare-fun validRegex!5358 (Regex!11843) Bool)

(assert (=> d!1202700 (= res!1650344 (validRegex!5358 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))))

(assert (=> d!1202700 (= (ruleValid!2868 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) e!2512875)))

(declare-fun b!4049898 () Bool)

(declare-fun res!1650345 () Bool)

(assert (=> b!4049898 (=> (not res!1650345) (not e!2512875))))

(declare-fun nullable!4158 (Regex!11843) Bool)

(assert (=> b!4049898 (= res!1650345 (not (nullable!4158 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))))

(declare-fun b!4049899 () Bool)

(assert (=> b!4049899 (= e!2512875 (not (= (tag!7798 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (String!49558 ""))))))

(assert (= (and d!1202700 res!1650344) b!4049898))

(assert (= (and b!4049898 res!1650345) b!4049899))

(declare-fun m!4650597 () Bool)

(assert (=> d!1202700 m!4650597))

(declare-fun m!4650599 () Bool)

(assert (=> b!4049898 m!4650599))

(assert (=> b!4049554 d!1202700))

(declare-fun b!4049901 () Bool)

(declare-fun e!2512877 () List!43421)

(assert (=> b!4049901 (= e!2512877 (Cons!43297 (h!48717 lt!1443187) (++!11340 (t!335824 lt!1443187) newSuffixResult!27)))))

(declare-fun d!1202708 () Bool)

(declare-fun e!2512876 () Bool)

(assert (=> d!1202708 e!2512876))

(declare-fun res!1650347 () Bool)

(assert (=> d!1202708 (=> (not res!1650347) (not e!2512876))))

(declare-fun lt!1443345 () List!43421)

(assert (=> d!1202708 (= res!1650347 (= (content!6594 lt!1443345) ((_ map or) (content!6594 lt!1443187) (content!6594 newSuffixResult!27))))))

(assert (=> d!1202708 (= lt!1443345 e!2512877)))

(declare-fun c!699620 () Bool)

(assert (=> d!1202708 (= c!699620 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202708 (= (++!11340 lt!1443187 newSuffixResult!27) lt!1443345)))

(declare-fun b!4049900 () Bool)

(assert (=> b!4049900 (= e!2512877 newSuffixResult!27)))

(declare-fun b!4049902 () Bool)

(declare-fun res!1650346 () Bool)

(assert (=> b!4049902 (=> (not res!1650346) (not e!2512876))))

(assert (=> b!4049902 (= res!1650346 (= (size!32372 lt!1443345) (+ (size!32372 lt!1443187) (size!32372 newSuffixResult!27))))))

(declare-fun b!4049903 () Bool)

(assert (=> b!4049903 (= e!2512876 (or (not (= newSuffixResult!27 Nil!43297)) (= lt!1443345 lt!1443187)))))

(assert (= (and d!1202708 c!699620) b!4049900))

(assert (= (and d!1202708 (not c!699620)) b!4049901))

(assert (= (and d!1202708 res!1650347) b!4049902))

(assert (= (and b!4049902 res!1650346) b!4049903))

(declare-fun m!4650601 () Bool)

(assert (=> b!4049901 m!4650601))

(declare-fun m!4650603 () Bool)

(assert (=> d!1202708 m!4650603))

(assert (=> d!1202708 m!4650489))

(declare-fun m!4650605 () Bool)

(assert (=> d!1202708 m!4650605))

(declare-fun m!4650607 () Bool)

(assert (=> b!4049902 m!4650607))

(assert (=> b!4049902 m!4649889))

(declare-fun m!4650609 () Bool)

(assert (=> b!4049902 m!4650609))

(assert (=> b!4049554 d!1202708))

(declare-fun d!1202710 () Bool)

(declare-fun e!2512880 () Bool)

(assert (=> d!1202710 e!2512880))

(declare-fun res!1650350 () Bool)

(assert (=> d!1202710 (=> (not res!1650350) (not e!2512880))))

(declare-fun semiInverseModEq!2966 (Int Int) Bool)

(assert (=> d!1202710 (= res!1650350 (semiInverseModEq!2966 (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) (toValue!9490 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))))

(declare-fun Unit!62579 () Unit!62573)

(assert (=> d!1202710 (= (lemmaInv!1147 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) Unit!62579)))

(declare-fun b!4049906 () Bool)

(declare-fun equivClasses!2865 (Int Int) Bool)

(assert (=> b!4049906 (= e!2512880 (equivClasses!2865 (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))) (toValue!9490 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))))

(assert (= (and d!1202710 res!1650350) b!4049906))

(declare-fun m!4650611 () Bool)

(assert (=> d!1202710 m!4650611))

(declare-fun m!4650613 () Bool)

(assert (=> b!4049906 m!4650613))

(assert (=> b!4049554 d!1202710))

(declare-fun d!1202712 () Bool)

(assert (=> d!1202712 (= (size!32371 token!484) (size!32372 (originalCharacters!7538 token!484)))))

(declare-fun Unit!62580 () Unit!62573)

(assert (=> d!1202712 (= (lemmaCharactersSize!1457 token!484) Unit!62580)))

(declare-fun bs!591480 () Bool)

(assert (= bs!591480 d!1202712))

(assert (=> bs!591480 m!4650053))

(assert (=> b!4049554 d!1202712))

(declare-fun d!1202714 () Bool)

(declare-fun fromListB!2351 (List!43421) BalanceConc!25892)

(assert (=> d!1202714 (= (seqFromList!5155 lt!1443187) (fromListB!2351 lt!1443187))))

(declare-fun bs!591481 () Bool)

(assert (= bs!591481 d!1202714))

(declare-fun m!4650615 () Bool)

(assert (=> bs!591481 m!4650615))

(assert (=> b!4049554 d!1202714))

(declare-fun d!1202716 () Bool)

(assert (=> d!1202716 (= (maxPrefixOneRule!2837 thiss!21717 (rule!10018 (_1!24319 (v!39759 lt!1443176))) lt!1443175) (Some!9351 (tuple2!42371 (Token!13015 (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (seqFromList!5155 lt!1443187)) (rule!10018 (_1!24319 (v!39759 lt!1443176))) (size!32372 lt!1443187) lt!1443187) (_2!24319 (v!39759 lt!1443176)))))))

(declare-fun lt!1443348 () Unit!62573)

(declare-fun choose!24562 (LexerInterface!6527 List!43423 List!43421 List!43421 List!43421 Rule!13676) Unit!62573)

(assert (=> d!1202716 (= lt!1443348 (choose!24562 thiss!21717 rules!2999 lt!1443187 lt!1443175 (_2!24319 (v!39759 lt!1443176)) (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(assert (=> d!1202716 (not (isEmpty!25839 rules!2999))))

(assert (=> d!1202716 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1643 thiss!21717 rules!2999 lt!1443187 lt!1443175 (_2!24319 (v!39759 lt!1443176)) (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443348)))

(declare-fun bs!591482 () Bool)

(assert (= bs!591482 d!1202716))

(assert (=> bs!591482 m!4649895))

(assert (=> bs!591482 m!4649897))

(assert (=> bs!591482 m!4649895))

(assert (=> bs!591482 m!4649901))

(declare-fun m!4650617 () Bool)

(assert (=> bs!591482 m!4650617))

(assert (=> bs!591482 m!4649885))

(assert (=> bs!591482 m!4649889))

(assert (=> b!4049554 d!1202716))

(declare-fun b!4049907 () Bool)

(declare-fun e!2512883 () Bool)

(declare-fun e!2512882 () Bool)

(assert (=> b!4049907 (= e!2512883 e!2512882)))

(declare-fun res!1650353 () Bool)

(assert (=> b!4049907 (=> (not res!1650353) (not e!2512882))))

(assert (=> b!4049907 (= res!1650353 (not ((_ is Nil!43297) lt!1443181)))))

(declare-fun b!4049910 () Bool)

(declare-fun e!2512881 () Bool)

(assert (=> b!4049910 (= e!2512881 (>= (size!32372 lt!1443181) (size!32372 lt!1443165)))))

(declare-fun b!4049908 () Bool)

(declare-fun res!1650351 () Bool)

(assert (=> b!4049908 (=> (not res!1650351) (not e!2512882))))

(assert (=> b!4049908 (= res!1650351 (= (head!8561 lt!1443165) (head!8561 lt!1443181)))))

(declare-fun d!1202718 () Bool)

(assert (=> d!1202718 e!2512881))

(declare-fun res!1650352 () Bool)

(assert (=> d!1202718 (=> res!1650352 e!2512881)))

(declare-fun lt!1443349 () Bool)

(assert (=> d!1202718 (= res!1650352 (not lt!1443349))))

(assert (=> d!1202718 (= lt!1443349 e!2512883)))

(declare-fun res!1650354 () Bool)

(assert (=> d!1202718 (=> res!1650354 e!2512883)))

(assert (=> d!1202718 (= res!1650354 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202718 (= (isPrefix!4025 lt!1443165 lt!1443181) lt!1443349)))

(declare-fun b!4049909 () Bool)

(assert (=> b!4049909 (= e!2512882 (isPrefix!4025 (tail!6293 lt!1443165) (tail!6293 lt!1443181)))))

(assert (= (and d!1202718 (not res!1650354)) b!4049907))

(assert (= (and b!4049907 res!1650353) b!4049908))

(assert (= (and b!4049908 res!1650351) b!4049909))

(assert (= (and d!1202718 (not res!1650352)) b!4049910))

(declare-fun m!4650619 () Bool)

(assert (=> b!4049910 m!4650619))

(assert (=> b!4049910 m!4649967))

(assert (=> b!4049908 m!4650223))

(declare-fun m!4650621 () Bool)

(assert (=> b!4049908 m!4650621))

(assert (=> b!4049909 m!4650227))

(declare-fun m!4650623 () Bool)

(assert (=> b!4049909 m!4650623))

(assert (=> b!4049909 m!4650227))

(assert (=> b!4049909 m!4650623))

(declare-fun m!4650625 () Bool)

(assert (=> b!4049909 m!4650625))

(assert (=> b!4049550 d!1202718))

(declare-fun d!1202720 () Bool)

(assert (=> d!1202720 (isPrefix!4025 lt!1443165 (++!11340 lt!1443165 suffixResult!105))))

(declare-fun lt!1443350 () Unit!62573)

(assert (=> d!1202720 (= lt!1443350 (choose!24558 lt!1443165 suffixResult!105))))

(assert (=> d!1202720 (= (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443165 suffixResult!105) lt!1443350)))

(declare-fun bs!591483 () Bool)

(assert (= bs!591483 d!1202720))

(assert (=> bs!591483 m!4649933))

(assert (=> bs!591483 m!4649933))

(declare-fun m!4650627 () Bool)

(assert (=> bs!591483 m!4650627))

(declare-fun m!4650629 () Bool)

(assert (=> bs!591483 m!4650629))

(assert (=> b!4049550 d!1202720))

(declare-fun d!1202722 () Bool)

(assert (=> d!1202722 (isPrefix!4025 prefix!494 (++!11340 prefix!494 suffix!1299))))

(declare-fun lt!1443351 () Unit!62573)

(assert (=> d!1202722 (= lt!1443351 (choose!24558 prefix!494 suffix!1299))))

(assert (=> d!1202722 (= (lemmaConcatTwoListThenFirstIsPrefix!2860 prefix!494 suffix!1299) lt!1443351)))

(declare-fun bs!591484 () Bool)

(assert (= bs!591484 d!1202722))

(assert (=> bs!591484 m!4649957))

(assert (=> bs!591484 m!4649957))

(declare-fun m!4650631 () Bool)

(assert (=> bs!591484 m!4650631))

(declare-fun m!4650633 () Bool)

(assert (=> bs!591484 m!4650633))

(assert (=> b!4049550 d!1202722))

(declare-fun b!4049911 () Bool)

(declare-fun e!2512886 () Bool)

(declare-fun e!2512885 () Bool)

(assert (=> b!4049911 (= e!2512886 e!2512885)))

(declare-fun res!1650357 () Bool)

(assert (=> b!4049911 (=> (not res!1650357) (not e!2512885))))

(assert (=> b!4049911 (= res!1650357 (not ((_ is Nil!43297) lt!1443177)))))

(declare-fun b!4049914 () Bool)

(declare-fun e!2512884 () Bool)

(assert (=> b!4049914 (= e!2512884 (>= (size!32372 lt!1443177) (size!32372 lt!1443165)))))

(declare-fun b!4049912 () Bool)

(declare-fun res!1650355 () Bool)

(assert (=> b!4049912 (=> (not res!1650355) (not e!2512885))))

(assert (=> b!4049912 (= res!1650355 (= (head!8561 lt!1443165) (head!8561 lt!1443177)))))

(declare-fun d!1202724 () Bool)

(assert (=> d!1202724 e!2512884))

(declare-fun res!1650356 () Bool)

(assert (=> d!1202724 (=> res!1650356 e!2512884)))

(declare-fun lt!1443352 () Bool)

(assert (=> d!1202724 (= res!1650356 (not lt!1443352))))

(assert (=> d!1202724 (= lt!1443352 e!2512886)))

(declare-fun res!1650358 () Bool)

(assert (=> d!1202724 (=> res!1650358 e!2512886)))

(assert (=> d!1202724 (= res!1650358 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202724 (= (isPrefix!4025 lt!1443165 lt!1443177) lt!1443352)))

(declare-fun b!4049913 () Bool)

(assert (=> b!4049913 (= e!2512885 (isPrefix!4025 (tail!6293 lt!1443165) (tail!6293 lt!1443177)))))

(assert (= (and d!1202724 (not res!1650358)) b!4049911))

(assert (= (and b!4049911 res!1650357) b!4049912))

(assert (= (and b!4049912 res!1650355) b!4049913))

(assert (= (and d!1202724 (not res!1650356)) b!4049914))

(declare-fun m!4650635 () Bool)

(assert (=> b!4049914 m!4650635))

(assert (=> b!4049914 m!4649967))

(assert (=> b!4049912 m!4650223))

(declare-fun m!4650637 () Bool)

(assert (=> b!4049912 m!4650637))

(assert (=> b!4049913 m!4650227))

(declare-fun m!4650639 () Bool)

(assert (=> b!4049913 m!4650639))

(assert (=> b!4049913 m!4650227))

(assert (=> b!4049913 m!4650639))

(declare-fun m!4650641 () Bool)

(assert (=> b!4049913 m!4650641))

(assert (=> b!4049550 d!1202724))

(declare-fun b!4049915 () Bool)

(declare-fun e!2512889 () Bool)

(declare-fun e!2512888 () Bool)

(assert (=> b!4049915 (= e!2512889 e!2512888)))

(declare-fun res!1650361 () Bool)

(assert (=> b!4049915 (=> (not res!1650361) (not e!2512888))))

(assert (=> b!4049915 (= res!1650361 (not ((_ is Nil!43297) lt!1443177)))))

(declare-fun b!4049918 () Bool)

(declare-fun e!2512887 () Bool)

(assert (=> b!4049918 (= e!2512887 (>= (size!32372 lt!1443177) (size!32372 prefix!494)))))

(declare-fun b!4049916 () Bool)

(declare-fun res!1650359 () Bool)

(assert (=> b!4049916 (=> (not res!1650359) (not e!2512888))))

(assert (=> b!4049916 (= res!1650359 (= (head!8561 prefix!494) (head!8561 lt!1443177)))))

(declare-fun d!1202726 () Bool)

(assert (=> d!1202726 e!2512887))

(declare-fun res!1650360 () Bool)

(assert (=> d!1202726 (=> res!1650360 e!2512887)))

(declare-fun lt!1443353 () Bool)

(assert (=> d!1202726 (= res!1650360 (not lt!1443353))))

(assert (=> d!1202726 (= lt!1443353 e!2512889)))

(declare-fun res!1650362 () Bool)

(assert (=> d!1202726 (=> res!1650362 e!2512889)))

(assert (=> d!1202726 (= res!1650362 ((_ is Nil!43297) prefix!494))))

(assert (=> d!1202726 (= (isPrefix!4025 prefix!494 lt!1443177) lt!1443353)))

(declare-fun b!4049917 () Bool)

(assert (=> b!4049917 (= e!2512888 (isPrefix!4025 (tail!6293 prefix!494) (tail!6293 lt!1443177)))))

(assert (= (and d!1202726 (not res!1650362)) b!4049915))

(assert (= (and b!4049915 res!1650361) b!4049916))

(assert (= (and b!4049916 res!1650359) b!4049917))

(assert (= (and d!1202726 (not res!1650360)) b!4049918))

(assert (=> b!4049918 m!4650635))

(assert (=> b!4049918 m!4649969))

(declare-fun m!4650643 () Bool)

(assert (=> b!4049916 m!4650643))

(assert (=> b!4049916 m!4650637))

(declare-fun m!4650645 () Bool)

(assert (=> b!4049917 m!4650645))

(assert (=> b!4049917 m!4650639))

(assert (=> b!4049917 m!4650645))

(assert (=> b!4049917 m!4650639))

(declare-fun m!4650647 () Bool)

(assert (=> b!4049917 m!4650647))

(assert (=> b!4049550 d!1202726))

(declare-fun b!4049920 () Bool)

(declare-fun e!2512891 () List!43421)

(assert (=> b!4049920 (= e!2512891 (Cons!43297 (h!48717 lt!1443165) (++!11340 (t!335824 lt!1443165) lt!1443151)))))

(declare-fun d!1202728 () Bool)

(declare-fun e!2512890 () Bool)

(assert (=> d!1202728 e!2512890))

(declare-fun res!1650364 () Bool)

(assert (=> d!1202728 (=> (not res!1650364) (not e!2512890))))

(declare-fun lt!1443354 () List!43421)

(assert (=> d!1202728 (= res!1650364 (= (content!6594 lt!1443354) ((_ map or) (content!6594 lt!1443165) (content!6594 lt!1443151))))))

(assert (=> d!1202728 (= lt!1443354 e!2512891)))

(declare-fun c!699621 () Bool)

(assert (=> d!1202728 (= c!699621 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202728 (= (++!11340 lt!1443165 lt!1443151) lt!1443354)))

(declare-fun b!4049919 () Bool)

(assert (=> b!4049919 (= e!2512891 lt!1443151)))

(declare-fun b!4049921 () Bool)

(declare-fun res!1650363 () Bool)

(assert (=> b!4049921 (=> (not res!1650363) (not e!2512890))))

(assert (=> b!4049921 (= res!1650363 (= (size!32372 lt!1443354) (+ (size!32372 lt!1443165) (size!32372 lt!1443151))))))

(declare-fun b!4049922 () Bool)

(assert (=> b!4049922 (= e!2512890 (or (not (= lt!1443151 Nil!43297)) (= lt!1443354 lt!1443165)))))

(assert (= (and d!1202728 c!699621) b!4049919))

(assert (= (and d!1202728 (not c!699621)) b!4049920))

(assert (= (and d!1202728 res!1650364) b!4049921))

(assert (= (and b!4049921 res!1650363) b!4049922))

(declare-fun m!4650649 () Bool)

(assert (=> b!4049920 m!4650649))

(declare-fun m!4650651 () Bool)

(assert (=> d!1202728 m!4650651))

(declare-fun m!4650653 () Bool)

(assert (=> d!1202728 m!4650653))

(declare-fun m!4650655 () Bool)

(assert (=> d!1202728 m!4650655))

(declare-fun m!4650657 () Bool)

(assert (=> b!4049921 m!4650657))

(assert (=> b!4049921 m!4649967))

(declare-fun m!4650659 () Bool)

(assert (=> b!4049921 m!4650659))

(assert (=> b!4049530 d!1202728))

(declare-fun d!1202730 () Bool)

(declare-fun lt!1443367 () List!43421)

(assert (=> d!1202730 (= (++!11340 lt!1443165 lt!1443367) lt!1443177)))

(declare-fun e!2512900 () List!43421)

(assert (=> d!1202730 (= lt!1443367 e!2512900)))

(declare-fun c!699626 () Bool)

(assert (=> d!1202730 (= c!699626 ((_ is Cons!43297) lt!1443165))))

(assert (=> d!1202730 (>= (size!32372 lt!1443177) (size!32372 lt!1443165))))

(assert (=> d!1202730 (= (getSuffix!2442 lt!1443177 lt!1443165) lt!1443367)))

(declare-fun b!4049945 () Bool)

(assert (=> b!4049945 (= e!2512900 (getSuffix!2442 (tail!6293 lt!1443177) (t!335824 lt!1443165)))))

(declare-fun b!4049946 () Bool)

(assert (=> b!4049946 (= e!2512900 lt!1443177)))

(assert (= (and d!1202730 c!699626) b!4049945))

(assert (= (and d!1202730 (not c!699626)) b!4049946))

(declare-fun m!4650661 () Bool)

(assert (=> d!1202730 m!4650661))

(assert (=> d!1202730 m!4650635))

(assert (=> d!1202730 m!4649967))

(assert (=> b!4049945 m!4650639))

(assert (=> b!4049945 m!4650639))

(declare-fun m!4650663 () Bool)

(assert (=> b!4049945 m!4650663))

(assert (=> b!4049530 d!1202730))

(declare-fun b!4049947 () Bool)

(declare-fun e!2512903 () Bool)

(declare-fun e!2512902 () Bool)

(assert (=> b!4049947 (= e!2512903 e!2512902)))

(declare-fun res!1650381 () Bool)

(assert (=> b!4049947 (=> (not res!1650381) (not e!2512902))))

(assert (=> b!4049947 (= res!1650381 (not ((_ is Nil!43297) lt!1443177)))))

(declare-fun b!4049950 () Bool)

(declare-fun e!2512901 () Bool)

(assert (=> b!4049950 (= e!2512901 (>= (size!32372 lt!1443177) (size!32372 lt!1443177)))))

(declare-fun b!4049948 () Bool)

(declare-fun res!1650379 () Bool)

(assert (=> b!4049948 (=> (not res!1650379) (not e!2512902))))

(assert (=> b!4049948 (= res!1650379 (= (head!8561 lt!1443177) (head!8561 lt!1443177)))))

(declare-fun d!1202732 () Bool)

(assert (=> d!1202732 e!2512901))

(declare-fun res!1650380 () Bool)

(assert (=> d!1202732 (=> res!1650380 e!2512901)))

(declare-fun lt!1443368 () Bool)

(assert (=> d!1202732 (= res!1650380 (not lt!1443368))))

(assert (=> d!1202732 (= lt!1443368 e!2512903)))

(declare-fun res!1650382 () Bool)

(assert (=> d!1202732 (=> res!1650382 e!2512903)))

(assert (=> d!1202732 (= res!1650382 ((_ is Nil!43297) lt!1443177))))

(assert (=> d!1202732 (= (isPrefix!4025 lt!1443177 lt!1443177) lt!1443368)))

(declare-fun b!4049949 () Bool)

(assert (=> b!4049949 (= e!2512902 (isPrefix!4025 (tail!6293 lt!1443177) (tail!6293 lt!1443177)))))

(assert (= (and d!1202732 (not res!1650382)) b!4049947))

(assert (= (and b!4049947 res!1650381) b!4049948))

(assert (= (and b!4049948 res!1650379) b!4049949))

(assert (= (and d!1202732 (not res!1650380)) b!4049950))

(assert (=> b!4049950 m!4650635))

(assert (=> b!4049950 m!4650635))

(assert (=> b!4049948 m!4650637))

(assert (=> b!4049948 m!4650637))

(assert (=> b!4049949 m!4650639))

(assert (=> b!4049949 m!4650639))

(assert (=> b!4049949 m!4650639))

(assert (=> b!4049949 m!4650639))

(declare-fun m!4650665 () Bool)

(assert (=> b!4049949 m!4650665))

(assert (=> b!4049530 d!1202732))

(declare-fun d!1202734 () Bool)

(assert (=> d!1202734 (isPrefix!4025 lt!1443177 lt!1443177)))

(declare-fun lt!1443371 () Unit!62573)

(declare-fun choose!24564 (List!43421 List!43421) Unit!62573)

(assert (=> d!1202734 (= lt!1443371 (choose!24564 lt!1443177 lt!1443177))))

(assert (=> d!1202734 (= (lemmaIsPrefixRefl!2592 lt!1443177 lt!1443177) lt!1443371)))

(declare-fun bs!591485 () Bool)

(assert (= bs!591485 d!1202734))

(assert (=> bs!591485 m!4649963))

(declare-fun m!4650667 () Bool)

(assert (=> bs!591485 m!4650667))

(assert (=> b!4049530 d!1202734))

(declare-fun d!1202736 () Bool)

(declare-fun res!1650392 () Bool)

(declare-fun e!2512909 () Bool)

(assert (=> d!1202736 (=> (not res!1650392) (not e!2512909))))

(declare-fun rulesValid!2699 (LexerInterface!6527 List!43423) Bool)

(assert (=> d!1202736 (= res!1650392 (rulesValid!2699 thiss!21717 rules!2999))))

(assert (=> d!1202736 (= (rulesInvariant!5870 thiss!21717 rules!2999) e!2512909)))

(declare-fun b!4049962 () Bool)

(declare-datatypes ((List!43424 0))(
  ( (Nil!43300) (Cons!43300 (h!48720 String!49557) (t!335875 List!43424)) )
))
(declare-fun noDuplicateTag!2700 (LexerInterface!6527 List!43423 List!43424) Bool)

(assert (=> b!4049962 (= e!2512909 (noDuplicateTag!2700 thiss!21717 rules!2999 Nil!43300))))

(assert (= (and d!1202736 res!1650392) b!4049962))

(declare-fun m!4650669 () Bool)

(assert (=> d!1202736 m!4650669))

(declare-fun m!4650671 () Bool)

(assert (=> b!4049962 m!4650671))

(assert (=> b!4049551 d!1202736))

(declare-fun b!4049964 () Bool)

(declare-fun e!2512911 () List!43421)

(assert (=> b!4049964 (= e!2512911 (Cons!43297 (h!48717 prefix!494) (++!11340 (t!335824 prefix!494) lt!1443146)))))

(declare-fun d!1202738 () Bool)

(declare-fun e!2512910 () Bool)

(assert (=> d!1202738 e!2512910))

(declare-fun res!1650394 () Bool)

(assert (=> d!1202738 (=> (not res!1650394) (not e!2512910))))

(declare-fun lt!1443377 () List!43421)

(assert (=> d!1202738 (= res!1650394 (= (content!6594 lt!1443377) ((_ map or) (content!6594 prefix!494) (content!6594 lt!1443146))))))

(assert (=> d!1202738 (= lt!1443377 e!2512911)))

(declare-fun c!699628 () Bool)

(assert (=> d!1202738 (= c!699628 ((_ is Nil!43297) prefix!494))))

(assert (=> d!1202738 (= (++!11340 prefix!494 lt!1443146) lt!1443377)))

(declare-fun b!4049963 () Bool)

(assert (=> b!4049963 (= e!2512911 lt!1443146)))

(declare-fun b!4049965 () Bool)

(declare-fun res!1650393 () Bool)

(assert (=> b!4049965 (=> (not res!1650393) (not e!2512910))))

(assert (=> b!4049965 (= res!1650393 (= (size!32372 lt!1443377) (+ (size!32372 prefix!494) (size!32372 lt!1443146))))))

(declare-fun b!4049966 () Bool)

(assert (=> b!4049966 (= e!2512910 (or (not (= lt!1443146 Nil!43297)) (= lt!1443377 prefix!494)))))

(assert (= (and d!1202738 c!699628) b!4049963))

(assert (= (and d!1202738 (not c!699628)) b!4049964))

(assert (= (and d!1202738 res!1650394) b!4049965))

(assert (= (and b!4049965 res!1650393) b!4049966))

(declare-fun m!4650673 () Bool)

(assert (=> b!4049964 m!4650673))

(declare-fun m!4650675 () Bool)

(assert (=> d!1202738 m!4650675))

(declare-fun m!4650677 () Bool)

(assert (=> d!1202738 m!4650677))

(declare-fun m!4650679 () Bool)

(assert (=> d!1202738 m!4650679))

(declare-fun m!4650681 () Bool)

(assert (=> b!4049965 m!4650681))

(assert (=> b!4049965 m!4649969))

(declare-fun m!4650683 () Bool)

(assert (=> b!4049965 m!4650683))

(assert (=> b!4049552 d!1202738))

(declare-fun b!4049968 () Bool)

(declare-fun e!2512913 () List!43421)

(assert (=> b!4049968 (= e!2512913 (Cons!43297 (h!48717 lt!1443175) (++!11340 (t!335824 lt!1443175) lt!1443166)))))

(declare-fun d!1202740 () Bool)

(declare-fun e!2512912 () Bool)

(assert (=> d!1202740 e!2512912))

(declare-fun res!1650396 () Bool)

(assert (=> d!1202740 (=> (not res!1650396) (not e!2512912))))

(declare-fun lt!1443378 () List!43421)

(assert (=> d!1202740 (= res!1650396 (= (content!6594 lt!1443378) ((_ map or) (content!6594 lt!1443175) (content!6594 lt!1443166))))))

(assert (=> d!1202740 (= lt!1443378 e!2512913)))

(declare-fun c!699629 () Bool)

(assert (=> d!1202740 (= c!699629 ((_ is Nil!43297) lt!1443175))))

(assert (=> d!1202740 (= (++!11340 lt!1443175 lt!1443166) lt!1443378)))

(declare-fun b!4049967 () Bool)

(assert (=> b!4049967 (= e!2512913 lt!1443166)))

(declare-fun b!4049969 () Bool)

(declare-fun res!1650395 () Bool)

(assert (=> b!4049969 (=> (not res!1650395) (not e!2512912))))

(assert (=> b!4049969 (= res!1650395 (= (size!32372 lt!1443378) (+ (size!32372 lt!1443175) (size!32372 lt!1443166))))))

(declare-fun b!4049970 () Bool)

(assert (=> b!4049970 (= e!2512912 (or (not (= lt!1443166 Nil!43297)) (= lt!1443378 lt!1443175)))))

(assert (= (and d!1202740 c!699629) b!4049967))

(assert (= (and d!1202740 (not c!699629)) b!4049968))

(assert (= (and d!1202740 res!1650396) b!4049969))

(assert (= (and b!4049969 res!1650395) b!4049970))

(declare-fun m!4650685 () Bool)

(assert (=> b!4049968 m!4650685))

(declare-fun m!4650687 () Bool)

(assert (=> d!1202740 m!4650687))

(declare-fun m!4650689 () Bool)

(assert (=> d!1202740 m!4650689))

(declare-fun m!4650691 () Bool)

(assert (=> d!1202740 m!4650691))

(declare-fun m!4650693 () Bool)

(assert (=> b!4049969 m!4650693))

(assert (=> b!4049969 m!4650137))

(declare-fun m!4650695 () Bool)

(assert (=> b!4049969 m!4650695))

(assert (=> b!4049552 d!1202740))

(declare-fun d!1202742 () Bool)

(assert (=> d!1202742 (= (++!11340 (++!11340 prefix!494 newSuffix!27) lt!1443166) (++!11340 prefix!494 (++!11340 newSuffix!27 lt!1443166)))))

(declare-fun lt!1443383 () Unit!62573)

(declare-fun choose!24566 (List!43421 List!43421 List!43421) Unit!62573)

(assert (=> d!1202742 (= lt!1443383 (choose!24566 prefix!494 newSuffix!27 lt!1443166))))

(assert (=> d!1202742 (= (lemmaConcatAssociativity!2642 prefix!494 newSuffix!27 lt!1443166) lt!1443383)))

(declare-fun bs!591487 () Bool)

(assert (= bs!591487 d!1202742))

(assert (=> bs!591487 m!4649979))

(assert (=> bs!591487 m!4649881))

(declare-fun m!4650739 () Bool)

(assert (=> bs!591487 m!4650739))

(assert (=> bs!591487 m!4649881))

(declare-fun m!4650741 () Bool)

(assert (=> bs!591487 m!4650741))

(assert (=> bs!591487 m!4649979))

(declare-fun m!4650743 () Bool)

(assert (=> bs!591487 m!4650743))

(assert (=> b!4049552 d!1202742))

(declare-fun b!4049976 () Bool)

(declare-fun e!2512918 () List!43421)

(assert (=> b!4049976 (= e!2512918 (Cons!43297 (h!48717 prefix!494) (++!11340 (t!335824 prefix!494) newSuffix!27)))))

(declare-fun d!1202750 () Bool)

(declare-fun e!2512917 () Bool)

(assert (=> d!1202750 e!2512917))

(declare-fun res!1650402 () Bool)

(assert (=> d!1202750 (=> (not res!1650402) (not e!2512917))))

(declare-fun lt!1443385 () List!43421)

(assert (=> d!1202750 (= res!1650402 (= (content!6594 lt!1443385) ((_ map or) (content!6594 prefix!494) (content!6594 newSuffix!27))))))

(assert (=> d!1202750 (= lt!1443385 e!2512918)))

(declare-fun c!699630 () Bool)

(assert (=> d!1202750 (= c!699630 ((_ is Nil!43297) prefix!494))))

(assert (=> d!1202750 (= (++!11340 prefix!494 newSuffix!27) lt!1443385)))

(declare-fun b!4049975 () Bool)

(assert (=> b!4049975 (= e!2512918 newSuffix!27)))

(declare-fun b!4049977 () Bool)

(declare-fun res!1650401 () Bool)

(assert (=> b!4049977 (=> (not res!1650401) (not e!2512917))))

(assert (=> b!4049977 (= res!1650401 (= (size!32372 lt!1443385) (+ (size!32372 prefix!494) (size!32372 newSuffix!27))))))

(declare-fun b!4049978 () Bool)

(assert (=> b!4049978 (= e!2512917 (or (not (= newSuffix!27 Nil!43297)) (= lt!1443385 prefix!494)))))

(assert (= (and d!1202750 c!699630) b!4049975))

(assert (= (and d!1202750 (not c!699630)) b!4049976))

(assert (= (and d!1202750 res!1650402) b!4049977))

(assert (= (and b!4049977 res!1650401) b!4049978))

(declare-fun m!4650749 () Bool)

(assert (=> b!4049976 m!4650749))

(declare-fun m!4650751 () Bool)

(assert (=> d!1202750 m!4650751))

(assert (=> d!1202750 m!4650677))

(declare-fun m!4650753 () Bool)

(assert (=> d!1202750 m!4650753))

(declare-fun m!4650755 () Bool)

(assert (=> b!4049977 m!4650755))

(assert (=> b!4049977 m!4649969))

(assert (=> b!4049977 m!4649931))

(assert (=> b!4049549 d!1202750))

(declare-fun b!4049984 () Bool)

(declare-fun e!2512923 () List!43421)

(assert (=> b!4049984 (= e!2512923 (Cons!43297 (h!48717 lt!1443165) (++!11340 (t!335824 lt!1443165) newSuffixResult!27)))))

(declare-fun d!1202754 () Bool)

(declare-fun e!2512922 () Bool)

(assert (=> d!1202754 e!2512922))

(declare-fun res!1650408 () Bool)

(assert (=> d!1202754 (=> (not res!1650408) (not e!2512922))))

(declare-fun lt!1443387 () List!43421)

(assert (=> d!1202754 (= res!1650408 (= (content!6594 lt!1443387) ((_ map or) (content!6594 lt!1443165) (content!6594 newSuffixResult!27))))))

(assert (=> d!1202754 (= lt!1443387 e!2512923)))

(declare-fun c!699631 () Bool)

(assert (=> d!1202754 (= c!699631 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202754 (= (++!11340 lt!1443165 newSuffixResult!27) lt!1443387)))

(declare-fun b!4049983 () Bool)

(assert (=> b!4049983 (= e!2512923 newSuffixResult!27)))

(declare-fun b!4049985 () Bool)

(declare-fun res!1650407 () Bool)

(assert (=> b!4049985 (=> (not res!1650407) (not e!2512922))))

(assert (=> b!4049985 (= res!1650407 (= (size!32372 lt!1443387) (+ (size!32372 lt!1443165) (size!32372 newSuffixResult!27))))))

(declare-fun b!4049986 () Bool)

(assert (=> b!4049986 (= e!2512922 (or (not (= newSuffixResult!27 Nil!43297)) (= lt!1443387 lt!1443165)))))

(assert (= (and d!1202754 c!699631) b!4049983))

(assert (= (and d!1202754 (not c!699631)) b!4049984))

(assert (= (and d!1202754 res!1650408) b!4049985))

(assert (= (and b!4049985 res!1650407) b!4049986))

(declare-fun m!4650761 () Bool)

(assert (=> b!4049984 m!4650761))

(declare-fun m!4650763 () Bool)

(assert (=> d!1202754 m!4650763))

(assert (=> d!1202754 m!4650653))

(assert (=> d!1202754 m!4650605))

(declare-fun m!4650765 () Bool)

(assert (=> b!4049985 m!4650765))

(assert (=> b!4049985 m!4649967))

(assert (=> b!4049985 m!4650609))

(assert (=> b!4049549 d!1202754))

(declare-fun b!4050064 () Bool)

(declare-fun e!2512970 () Bool)

(assert (=> b!4050064 (= e!2512970 (nullable!4158 (regex!6938 (rule!10018 token!484))))))

(declare-fun b!4050065 () Bool)

(declare-fun res!1650462 () Bool)

(declare-fun e!2512967 () Bool)

(assert (=> b!4050065 (=> (not res!1650462) (not e!2512967))))

(assert (=> b!4050065 (= res!1650462 (isEmpty!25842 (tail!6293 lt!1443165)))))

(declare-fun b!4050066 () Bool)

(declare-fun res!1650461 () Bool)

(assert (=> b!4050066 (=> (not res!1650461) (not e!2512967))))

(declare-fun call!287842 () Bool)

(assert (=> b!4050066 (= res!1650461 (not call!287842))))

(declare-fun d!1202760 () Bool)

(declare-fun e!2512972 () Bool)

(assert (=> d!1202760 e!2512972))

(declare-fun c!699647 () Bool)

(assert (=> d!1202760 (= c!699647 ((_ is EmptyExpr!11843) (regex!6938 (rule!10018 token!484))))))

(declare-fun lt!1443407 () Bool)

(assert (=> d!1202760 (= lt!1443407 e!2512970)))

(declare-fun c!699648 () Bool)

(assert (=> d!1202760 (= c!699648 (isEmpty!25842 lt!1443165))))

(assert (=> d!1202760 (validRegex!5358 (regex!6938 (rule!10018 token!484)))))

(assert (=> d!1202760 (= (matchR!5796 (regex!6938 (rule!10018 token!484)) lt!1443165) lt!1443407)))

(declare-fun b!4050067 () Bool)

(declare-fun res!1650456 () Bool)

(declare-fun e!2512966 () Bool)

(assert (=> b!4050067 (=> res!1650456 e!2512966)))

(assert (=> b!4050067 (= res!1650456 e!2512967)))

(declare-fun res!1650457 () Bool)

(assert (=> b!4050067 (=> (not res!1650457) (not e!2512967))))

(assert (=> b!4050067 (= res!1650457 lt!1443407)))

(declare-fun bm!287837 () Bool)

(assert (=> bm!287837 (= call!287842 (isEmpty!25842 lt!1443165))))

(declare-fun b!4050068 () Bool)

(declare-fun derivativeStep!3563 (Regex!11843 C!23872) Regex!11843)

(assert (=> b!4050068 (= e!2512970 (matchR!5796 (derivativeStep!3563 (regex!6938 (rule!10018 token!484)) (head!8561 lt!1443165)) (tail!6293 lt!1443165)))))

(declare-fun b!4050069 () Bool)

(assert (=> b!4050069 (= e!2512972 (= lt!1443407 call!287842))))

(declare-fun b!4050070 () Bool)

(declare-fun e!2512968 () Bool)

(declare-fun e!2512969 () Bool)

(assert (=> b!4050070 (= e!2512968 e!2512969)))

(declare-fun res!1650458 () Bool)

(assert (=> b!4050070 (=> res!1650458 e!2512969)))

(assert (=> b!4050070 (= res!1650458 call!287842)))

(declare-fun b!4050071 () Bool)

(declare-fun res!1650463 () Bool)

(assert (=> b!4050071 (=> res!1650463 e!2512966)))

(assert (=> b!4050071 (= res!1650463 (not ((_ is ElementMatch!11843) (regex!6938 (rule!10018 token!484)))))))

(declare-fun e!2512971 () Bool)

(assert (=> b!4050071 (= e!2512971 e!2512966)))

(declare-fun b!4050072 () Bool)

(assert (=> b!4050072 (= e!2512966 e!2512968)))

(declare-fun res!1650459 () Bool)

(assert (=> b!4050072 (=> (not res!1650459) (not e!2512968))))

(assert (=> b!4050072 (= res!1650459 (not lt!1443407))))

(declare-fun b!4050073 () Bool)

(assert (=> b!4050073 (= e!2512972 e!2512971)))

(declare-fun c!699649 () Bool)

(assert (=> b!4050073 (= c!699649 ((_ is EmptyLang!11843) (regex!6938 (rule!10018 token!484))))))

(declare-fun b!4050074 () Bool)

(assert (=> b!4050074 (= e!2512967 (= (head!8561 lt!1443165) (c!699569 (regex!6938 (rule!10018 token!484)))))))

(declare-fun b!4050075 () Bool)

(declare-fun res!1650460 () Bool)

(assert (=> b!4050075 (=> res!1650460 e!2512969)))

(assert (=> b!4050075 (= res!1650460 (not (isEmpty!25842 (tail!6293 lt!1443165))))))

(declare-fun b!4050076 () Bool)

(assert (=> b!4050076 (= e!2512969 (not (= (head!8561 lt!1443165) (c!699569 (regex!6938 (rule!10018 token!484))))))))

(declare-fun b!4050077 () Bool)

(assert (=> b!4050077 (= e!2512971 (not lt!1443407))))

(assert (= (and d!1202760 c!699648) b!4050064))

(assert (= (and d!1202760 (not c!699648)) b!4050068))

(assert (= (and d!1202760 c!699647) b!4050069))

(assert (= (and d!1202760 (not c!699647)) b!4050073))

(assert (= (and b!4050073 c!699649) b!4050077))

(assert (= (and b!4050073 (not c!699649)) b!4050071))

(assert (= (and b!4050071 (not res!1650463)) b!4050067))

(assert (= (and b!4050067 res!1650457) b!4050066))

(assert (= (and b!4050066 res!1650461) b!4050065))

(assert (= (and b!4050065 res!1650462) b!4050074))

(assert (= (and b!4050067 (not res!1650456)) b!4050072))

(assert (= (and b!4050072 res!1650459) b!4050070))

(assert (= (and b!4050070 (not res!1650458)) b!4050075))

(assert (= (and b!4050075 (not res!1650460)) b!4050076))

(assert (= (or b!4050069 b!4050066 b!4050070) bm!287837))

(assert (=> b!4050076 m!4650223))

(declare-fun m!4650855 () Bool)

(assert (=> b!4050064 m!4650855))

(declare-fun m!4650857 () Bool)

(assert (=> d!1202760 m!4650857))

(declare-fun m!4650859 () Bool)

(assert (=> d!1202760 m!4650859))

(assert (=> b!4050068 m!4650223))

(assert (=> b!4050068 m!4650223))

(declare-fun m!4650861 () Bool)

(assert (=> b!4050068 m!4650861))

(assert (=> b!4050068 m!4650227))

(assert (=> b!4050068 m!4650861))

(assert (=> b!4050068 m!4650227))

(declare-fun m!4650863 () Bool)

(assert (=> b!4050068 m!4650863))

(assert (=> b!4050075 m!4650227))

(assert (=> b!4050075 m!4650227))

(declare-fun m!4650865 () Bool)

(assert (=> b!4050075 m!4650865))

(assert (=> b!4050065 m!4650227))

(assert (=> b!4050065 m!4650227))

(assert (=> b!4050065 m!4650865))

(assert (=> bm!287837 m!4650857))

(assert (=> b!4050074 m!4650223))

(assert (=> b!4049566 d!1202760))

(declare-fun b!4050087 () Bool)

(declare-fun e!2512978 () Bool)

(declare-fun e!2512977 () Bool)

(assert (=> b!4050087 (= e!2512978 e!2512977)))

(declare-fun res!1650473 () Bool)

(assert (=> b!4050087 (=> (not res!1650473) (not e!2512977))))

(assert (=> b!4050087 (= res!1650473 (not ((_ is Nil!43297) lt!1443175)))))

(declare-fun b!4050090 () Bool)

(declare-fun e!2512976 () Bool)

(assert (=> b!4050090 (= e!2512976 (>= (size!32372 lt!1443175) (size!32372 lt!1443165)))))

(declare-fun b!4050088 () Bool)

(declare-fun res!1650471 () Bool)

(assert (=> b!4050088 (=> (not res!1650471) (not e!2512977))))

(assert (=> b!4050088 (= res!1650471 (= (head!8561 lt!1443165) (head!8561 lt!1443175)))))

(declare-fun d!1202796 () Bool)

(assert (=> d!1202796 e!2512976))

(declare-fun res!1650472 () Bool)

(assert (=> d!1202796 (=> res!1650472 e!2512976)))

(declare-fun lt!1443413 () Bool)

(assert (=> d!1202796 (= res!1650472 (not lt!1443413))))

(assert (=> d!1202796 (= lt!1443413 e!2512978)))

(declare-fun res!1650474 () Bool)

(assert (=> d!1202796 (=> res!1650474 e!2512978)))

(assert (=> d!1202796 (= res!1650474 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202796 (= (isPrefix!4025 lt!1443165 lt!1443175) lt!1443413)))

(declare-fun b!4050089 () Bool)

(assert (=> b!4050089 (= e!2512977 (isPrefix!4025 (tail!6293 lt!1443165) (tail!6293 lt!1443175)))))

(assert (= (and d!1202796 (not res!1650474)) b!4050087))

(assert (= (and b!4050087 res!1650473) b!4050088))

(assert (= (and b!4050088 res!1650471) b!4050089))

(assert (= (and d!1202796 (not res!1650472)) b!4050090))

(assert (=> b!4050090 m!4650137))

(assert (=> b!4050090 m!4649967))

(assert (=> b!4050088 m!4650223))

(declare-fun m!4650867 () Bool)

(assert (=> b!4050088 m!4650867))

(assert (=> b!4050089 m!4650227))

(declare-fun m!4650869 () Bool)

(assert (=> b!4050089 m!4650869))

(assert (=> b!4050089 m!4650227))

(assert (=> b!4050089 m!4650869))

(declare-fun m!4650873 () Bool)

(assert (=> b!4050089 m!4650873))

(assert (=> b!4049566 d!1202796))

(declare-fun d!1202798 () Bool)

(assert (=> d!1202798 (isPrefix!4025 lt!1443165 (++!11340 prefix!494 newSuffix!27))))

(declare-fun lt!1443417 () Unit!62573)

(declare-fun choose!24568 (List!43421 List!43421 List!43421) Unit!62573)

(assert (=> d!1202798 (= lt!1443417 (choose!24568 lt!1443165 prefix!494 newSuffix!27))))

(assert (=> d!1202798 (isPrefix!4025 lt!1443165 prefix!494)))

(assert (=> d!1202798 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!818 lt!1443165 prefix!494 newSuffix!27) lt!1443417)))

(declare-fun bs!591492 () Bool)

(assert (= bs!591492 d!1202798))

(assert (=> bs!591492 m!4649979))

(assert (=> bs!591492 m!4649979))

(declare-fun m!4650905 () Bool)

(assert (=> bs!591492 m!4650905))

(declare-fun m!4650907 () Bool)

(assert (=> bs!591492 m!4650907))

(assert (=> bs!591492 m!4650059))

(assert (=> b!4049566 d!1202798))

(declare-fun d!1202804 () Bool)

(assert (=> d!1202804 (isPrefix!4025 lt!1443165 (++!11340 prefix!494 suffix!1299))))

(declare-fun lt!1443418 () Unit!62573)

(assert (=> d!1202804 (= lt!1443418 (choose!24568 lt!1443165 prefix!494 suffix!1299))))

(assert (=> d!1202804 (isPrefix!4025 lt!1443165 prefix!494)))

(assert (=> d!1202804 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!818 lt!1443165 prefix!494 suffix!1299) lt!1443418)))

(declare-fun bs!591493 () Bool)

(assert (= bs!591493 d!1202804))

(assert (=> bs!591493 m!4649957))

(assert (=> bs!591493 m!4649957))

(declare-fun m!4650909 () Bool)

(assert (=> bs!591493 m!4650909))

(declare-fun m!4650911 () Bool)

(assert (=> bs!591493 m!4650911))

(assert (=> bs!591493 m!4650059))

(assert (=> b!4049566 d!1202804))

(declare-fun b!4050096 () Bool)

(declare-fun e!2512982 () List!43421)

(assert (=> b!4050096 (= e!2512982 (Cons!43297 (h!48717 lt!1443187) (++!11340 (t!335824 lt!1443187) lt!1443197)))))

(declare-fun d!1202806 () Bool)

(declare-fun e!2512981 () Bool)

(assert (=> d!1202806 e!2512981))

(declare-fun res!1650478 () Bool)

(assert (=> d!1202806 (=> (not res!1650478) (not e!2512981))))

(declare-fun lt!1443419 () List!43421)

(assert (=> d!1202806 (= res!1650478 (= (content!6594 lt!1443419) ((_ map or) (content!6594 lt!1443187) (content!6594 lt!1443197))))))

(assert (=> d!1202806 (= lt!1443419 e!2512982)))

(declare-fun c!699652 () Bool)

(assert (=> d!1202806 (= c!699652 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202806 (= (++!11340 lt!1443187 lt!1443197) lt!1443419)))

(declare-fun b!4050095 () Bool)

(assert (=> b!4050095 (= e!2512982 lt!1443197)))

(declare-fun b!4050097 () Bool)

(declare-fun res!1650477 () Bool)

(assert (=> b!4050097 (=> (not res!1650477) (not e!2512981))))

(assert (=> b!4050097 (= res!1650477 (= (size!32372 lt!1443419) (+ (size!32372 lt!1443187) (size!32372 lt!1443197))))))

(declare-fun b!4050098 () Bool)

(assert (=> b!4050098 (= e!2512981 (or (not (= lt!1443197 Nil!43297)) (= lt!1443419 lt!1443187)))))

(assert (= (and d!1202806 c!699652) b!4050095))

(assert (= (and d!1202806 (not c!699652)) b!4050096))

(assert (= (and d!1202806 res!1650478) b!4050097))

(assert (= (and b!4050097 res!1650477) b!4050098))

(declare-fun m!4650913 () Bool)

(assert (=> b!4050096 m!4650913))

(declare-fun m!4650915 () Bool)

(assert (=> d!1202806 m!4650915))

(assert (=> d!1202806 m!4650489))

(declare-fun m!4650917 () Bool)

(assert (=> d!1202806 m!4650917))

(declare-fun m!4650919 () Bool)

(assert (=> b!4050097 m!4650919))

(assert (=> b!4050097 m!4649889))

(declare-fun m!4650921 () Bool)

(assert (=> b!4050097 m!4650921))

(assert (=> b!4049545 d!1202806))

(declare-fun d!1202808 () Bool)

(declare-fun lt!1443420 () List!43421)

(assert (=> d!1202808 (= (++!11340 lt!1443187 lt!1443420) lt!1443175)))

(declare-fun e!2512983 () List!43421)

(assert (=> d!1202808 (= lt!1443420 e!2512983)))

(declare-fun c!699653 () Bool)

(assert (=> d!1202808 (= c!699653 ((_ is Cons!43297) lt!1443187))))

(assert (=> d!1202808 (>= (size!32372 lt!1443175) (size!32372 lt!1443187))))

(assert (=> d!1202808 (= (getSuffix!2442 lt!1443175 lt!1443187) lt!1443420)))

(declare-fun b!4050099 () Bool)

(assert (=> b!4050099 (= e!2512983 (getSuffix!2442 (tail!6293 lt!1443175) (t!335824 lt!1443187)))))

(declare-fun b!4050100 () Bool)

(assert (=> b!4050100 (= e!2512983 lt!1443175)))

(assert (= (and d!1202808 c!699653) b!4050099))

(assert (= (and d!1202808 (not c!699653)) b!4050100))

(declare-fun m!4650923 () Bool)

(assert (=> d!1202808 m!4650923))

(assert (=> d!1202808 m!4650137))

(assert (=> d!1202808 m!4649889))

(assert (=> b!4050099 m!4650869))

(assert (=> b!4050099 m!4650869))

(declare-fun m!4650925 () Bool)

(assert (=> b!4050099 m!4650925))

(assert (=> b!4049545 d!1202808))

(declare-fun d!1202810 () Bool)

(assert (=> d!1202810 (= lt!1443155 suffixResult!105)))

(declare-fun lt!1443421 () Unit!62573)

(assert (=> d!1202810 (= lt!1443421 (choose!24557 lt!1443165 lt!1443155 lt!1443165 suffixResult!105 lt!1443177))))

(assert (=> d!1202810 (isPrefix!4025 lt!1443165 lt!1443177)))

(assert (=> d!1202810 (= (lemmaSamePrefixThenSameSuffix!2186 lt!1443165 lt!1443155 lt!1443165 suffixResult!105 lt!1443177) lt!1443421)))

(declare-fun bs!591494 () Bool)

(assert (= bs!591494 d!1202810))

(declare-fun m!4650927 () Bool)

(assert (=> bs!591494 m!4650927))

(assert (=> bs!591494 m!4650003))

(assert (=> b!4049546 d!1202810))

(declare-fun b!4050101 () Bool)

(declare-fun res!1650484 () Bool)

(declare-fun e!2512987 () Bool)

(assert (=> b!4050101 (=> (not res!1650484) (not e!2512987))))

(declare-fun lt!1443423 () Option!9352)

(assert (=> b!4050101 (= res!1650484 (= (value!218367 (_1!24319 (get!14204 lt!1443423))) (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (get!14204 lt!1443423)))) (seqFromList!5155 (originalCharacters!7538 (_1!24319 (get!14204 lt!1443423)))))))))

(declare-fun b!4050102 () Bool)

(declare-fun res!1650481 () Bool)

(assert (=> b!4050102 (=> (not res!1650481) (not e!2512987))))

(assert (=> b!4050102 (= res!1650481 (= (rule!10018 (_1!24319 (get!14204 lt!1443423))) (rule!10018 token!484)))))

(declare-fun b!4050103 () Bool)

(declare-fun e!2512984 () Option!9352)

(declare-fun lt!1443424 () tuple2!42372)

(assert (=> b!4050103 (= e!2512984 (Some!9351 (tuple2!42371 (Token!13015 (apply!10127 (transformation!6938 (rule!10018 token!484)) (seqFromList!5155 (_1!24320 lt!1443424))) (rule!10018 token!484) (size!32373 (seqFromList!5155 (_1!24320 lt!1443424))) (_1!24320 lt!1443424)) (_2!24320 lt!1443424))))))

(declare-fun lt!1443422 () Unit!62573)

(assert (=> b!4050103 (= lt!1443422 (longestMatchIsAcceptedByMatchOrIsEmpty!1367 (regex!6938 (rule!10018 token!484)) lt!1443177))))

(declare-fun res!1650480 () Bool)

(assert (=> b!4050103 (= res!1650480 (isEmpty!25842 (_1!24320 (findLongestMatchInner!1394 (regex!6938 (rule!10018 token!484)) Nil!43297 (size!32372 Nil!43297) lt!1443177 lt!1443177 (size!32372 lt!1443177)))))))

(declare-fun e!2512986 () Bool)

(assert (=> b!4050103 (=> res!1650480 e!2512986)))

(assert (=> b!4050103 e!2512986))

(declare-fun lt!1443425 () Unit!62573)

(assert (=> b!4050103 (= lt!1443425 lt!1443422)))

(declare-fun lt!1443426 () Unit!62573)

(assert (=> b!4050103 (= lt!1443426 (lemmaSemiInverse!1916 (transformation!6938 (rule!10018 token!484)) (seqFromList!5155 (_1!24320 lt!1443424))))))

(declare-fun b!4050104 () Bool)

(declare-fun res!1650485 () Bool)

(assert (=> b!4050104 (=> (not res!1650485) (not e!2512987))))

(assert (=> b!4050104 (= res!1650485 (= (++!11340 (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443423)))) (_2!24319 (get!14204 lt!1443423))) lt!1443177))))

(declare-fun b!4050105 () Bool)

(assert (=> b!4050105 (= e!2512986 (matchR!5796 (regex!6938 (rule!10018 token!484)) (_1!24320 (findLongestMatchInner!1394 (regex!6938 (rule!10018 token!484)) Nil!43297 (size!32372 Nil!43297) lt!1443177 lt!1443177 (size!32372 lt!1443177)))))))

(declare-fun b!4050107 () Bool)

(assert (=> b!4050107 (= e!2512984 None!9351)))

(declare-fun b!4050108 () Bool)

(assert (=> b!4050108 (= e!2512987 (= (size!32371 (_1!24319 (get!14204 lt!1443423))) (size!32372 (originalCharacters!7538 (_1!24319 (get!14204 lt!1443423))))))))

(declare-fun b!4050109 () Bool)

(declare-fun e!2512985 () Bool)

(assert (=> b!4050109 (= e!2512985 e!2512987)))

(declare-fun res!1650479 () Bool)

(assert (=> b!4050109 (=> (not res!1650479) (not e!2512987))))

(assert (=> b!4050109 (= res!1650479 (matchR!5796 (regex!6938 (rule!10018 token!484)) (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443423))))))))

(declare-fun d!1202812 () Bool)

(assert (=> d!1202812 e!2512985))

(declare-fun res!1650482 () Bool)

(assert (=> d!1202812 (=> res!1650482 e!2512985)))

(assert (=> d!1202812 (= res!1650482 (isEmpty!25841 lt!1443423))))

(assert (=> d!1202812 (= lt!1443423 e!2512984)))

(declare-fun c!699654 () Bool)

(assert (=> d!1202812 (= c!699654 (isEmpty!25842 (_1!24320 lt!1443424)))))

(assert (=> d!1202812 (= lt!1443424 (findLongestMatch!1307 (regex!6938 (rule!10018 token!484)) lt!1443177))))

(assert (=> d!1202812 (ruleValid!2868 thiss!21717 (rule!10018 token!484))))

(assert (=> d!1202812 (= (maxPrefixOneRule!2837 thiss!21717 (rule!10018 token!484) lt!1443177) lt!1443423)))

(declare-fun b!4050106 () Bool)

(declare-fun res!1650483 () Bool)

(assert (=> b!4050106 (=> (not res!1650483) (not e!2512987))))

(assert (=> b!4050106 (= res!1650483 (< (size!32372 (_2!24319 (get!14204 lt!1443423))) (size!32372 lt!1443177)))))

(assert (= (and d!1202812 c!699654) b!4050107))

(assert (= (and d!1202812 (not c!699654)) b!4050103))

(assert (= (and b!4050103 (not res!1650480)) b!4050105))

(assert (= (and d!1202812 (not res!1650482)) b!4050109))

(assert (= (and b!4050109 res!1650479) b!4050104))

(assert (= (and b!4050104 res!1650485) b!4050106))

(assert (= (and b!4050106 res!1650483) b!4050102))

(assert (= (and b!4050102 res!1650481) b!4050101))

(assert (= (and b!4050101 res!1650484) b!4050108))

(declare-fun m!4650931 () Bool)

(assert (=> b!4050103 m!4650931))

(declare-fun m!4650933 () Bool)

(assert (=> b!4050103 m!4650933))

(assert (=> b!4050103 m!4650393))

(assert (=> b!4050103 m!4650635))

(declare-fun m!4650935 () Bool)

(assert (=> b!4050103 m!4650935))

(declare-fun m!4650937 () Bool)

(assert (=> b!4050103 m!4650937))

(declare-fun m!4650939 () Bool)

(assert (=> b!4050103 m!4650939))

(assert (=> b!4050103 m!4650393))

(assert (=> b!4050103 m!4650937))

(declare-fun m!4650941 () Bool)

(assert (=> b!4050103 m!4650941))

(assert (=> b!4050103 m!4650635))

(assert (=> b!4050103 m!4650937))

(declare-fun m!4650943 () Bool)

(assert (=> b!4050103 m!4650943))

(assert (=> b!4050103 m!4650937))

(declare-fun m!4650945 () Bool)

(assert (=> b!4050108 m!4650945))

(declare-fun m!4650947 () Bool)

(assert (=> b!4050108 m!4650947))

(assert (=> b!4050102 m!4650945))

(assert (=> b!4050104 m!4650945))

(declare-fun m!4650949 () Bool)

(assert (=> b!4050104 m!4650949))

(assert (=> b!4050104 m!4650949))

(declare-fun m!4650953 () Bool)

(assert (=> b!4050104 m!4650953))

(assert (=> b!4050104 m!4650953))

(declare-fun m!4650957 () Bool)

(assert (=> b!4050104 m!4650957))

(assert (=> b!4050105 m!4650393))

(assert (=> b!4050105 m!4650635))

(assert (=> b!4050105 m!4650393))

(assert (=> b!4050105 m!4650635))

(assert (=> b!4050105 m!4650935))

(declare-fun m!4650963 () Bool)

(assert (=> b!4050105 m!4650963))

(assert (=> b!4050106 m!4650945))

(declare-fun m!4650965 () Bool)

(assert (=> b!4050106 m!4650965))

(assert (=> b!4050106 m!4650635))

(assert (=> b!4050109 m!4650945))

(assert (=> b!4050109 m!4650949))

(assert (=> b!4050109 m!4650949))

(assert (=> b!4050109 m!4650953))

(assert (=> b!4050109 m!4650953))

(declare-fun m!4650967 () Bool)

(assert (=> b!4050109 m!4650967))

(assert (=> b!4050101 m!4650945))

(declare-fun m!4650969 () Bool)

(assert (=> b!4050101 m!4650969))

(assert (=> b!4050101 m!4650969))

(declare-fun m!4650971 () Bool)

(assert (=> b!4050101 m!4650971))

(declare-fun m!4650973 () Bool)

(assert (=> d!1202812 m!4650973))

(declare-fun m!4650975 () Bool)

(assert (=> d!1202812 m!4650975))

(declare-fun m!4650977 () Bool)

(assert (=> d!1202812 m!4650977))

(assert (=> d!1202812 m!4649937))

(assert (=> b!4049546 d!1202812))

(declare-fun b!4050124 () Bool)

(declare-fun e!2512997 () Bool)

(declare-fun e!2512996 () Bool)

(assert (=> b!4050124 (= e!2512997 e!2512996)))

(declare-fun res!1650496 () Bool)

(assert (=> b!4050124 (=> (not res!1650496) (not e!2512996))))

(assert (=> b!4050124 (= res!1650496 (not ((_ is Nil!43297) lt!1443149)))))

(declare-fun b!4050127 () Bool)

(declare-fun e!2512995 () Bool)

(assert (=> b!4050127 (= e!2512995 (>= (size!32372 lt!1443149) (size!32372 lt!1443165)))))

(declare-fun b!4050125 () Bool)

(declare-fun res!1650494 () Bool)

(assert (=> b!4050125 (=> (not res!1650494) (not e!2512996))))

(assert (=> b!4050125 (= res!1650494 (= (head!8561 lt!1443165) (head!8561 lt!1443149)))))

(declare-fun d!1202818 () Bool)

(assert (=> d!1202818 e!2512995))

(declare-fun res!1650495 () Bool)

(assert (=> d!1202818 (=> res!1650495 e!2512995)))

(declare-fun lt!1443431 () Bool)

(assert (=> d!1202818 (= res!1650495 (not lt!1443431))))

(assert (=> d!1202818 (= lt!1443431 e!2512997)))

(declare-fun res!1650497 () Bool)

(assert (=> d!1202818 (=> res!1650497 e!2512997)))

(assert (=> d!1202818 (= res!1650497 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202818 (= (isPrefix!4025 lt!1443165 lt!1443149) lt!1443431)))

(declare-fun b!4050126 () Bool)

(assert (=> b!4050126 (= e!2512996 (isPrefix!4025 (tail!6293 lt!1443165) (tail!6293 lt!1443149)))))

(assert (= (and d!1202818 (not res!1650497)) b!4050124))

(assert (= (and b!4050124 res!1650496) b!4050125))

(assert (= (and b!4050125 res!1650494) b!4050126))

(assert (= (and d!1202818 (not res!1650495)) b!4050127))

(declare-fun m!4650979 () Bool)

(assert (=> b!4050127 m!4650979))

(assert (=> b!4050127 m!4649967))

(assert (=> b!4050125 m!4650223))

(declare-fun m!4650981 () Bool)

(assert (=> b!4050125 m!4650981))

(assert (=> b!4050126 m!4650227))

(declare-fun m!4650983 () Bool)

(assert (=> b!4050126 m!4650983))

(assert (=> b!4050126 m!4650227))

(assert (=> b!4050126 m!4650983))

(declare-fun m!4650985 () Bool)

(assert (=> b!4050126 m!4650985))

(assert (=> b!4049546 d!1202818))

(declare-fun d!1202820 () Bool)

(assert (=> d!1202820 (= (maxPrefixOneRule!2837 thiss!21717 (rule!10018 token!484) lt!1443177) (Some!9351 (tuple2!42371 (Token!13015 (apply!10127 (transformation!6938 (rule!10018 token!484)) (seqFromList!5155 lt!1443165)) (rule!10018 token!484) (size!32372 lt!1443165) lt!1443165) suffixResult!105)))))

(declare-fun lt!1443432 () Unit!62573)

(assert (=> d!1202820 (= lt!1443432 (choose!24562 thiss!21717 rules!2999 lt!1443165 lt!1443177 suffixResult!105 (rule!10018 token!484)))))

(assert (=> d!1202820 (not (isEmpty!25839 rules!2999))))

(assert (=> d!1202820 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1643 thiss!21717 rules!2999 lt!1443165 lt!1443177 suffixResult!105 (rule!10018 token!484)) lt!1443432)))

(declare-fun bs!591496 () Bool)

(assert (= bs!591496 d!1202820))

(assert (=> bs!591496 m!4650025))

(assert (=> bs!591496 m!4650029))

(assert (=> bs!591496 m!4650025))

(assert (=> bs!591496 m!4650027))

(declare-fun m!4650987 () Bool)

(assert (=> bs!591496 m!4650987))

(assert (=> bs!591496 m!4649885))

(assert (=> bs!591496 m!4649967))

(assert (=> b!4049546 d!1202820))

(declare-fun d!1202822 () Bool)

(assert (=> d!1202822 (= (seqFromList!5155 lt!1443165) (fromListB!2351 lt!1443165))))

(declare-fun bs!591497 () Bool)

(assert (= bs!591497 d!1202822))

(declare-fun m!4650989 () Bool)

(assert (=> bs!591497 m!4650989))

(assert (=> b!4049546 d!1202822))

(declare-fun d!1202824 () Bool)

(assert (=> d!1202824 (= (apply!10127 (transformation!6938 (rule!10018 token!484)) (seqFromList!5155 lt!1443165)) (dynLambda!18396 (toValue!9490 (transformation!6938 (rule!10018 token!484))) (seqFromList!5155 lt!1443165)))))

(declare-fun b_lambda!118349 () Bool)

(assert (=> (not b_lambda!118349) (not d!1202824)))

(declare-fun t!335852 () Bool)

(declare-fun tb!243657 () Bool)

(assert (=> (and b!4049527 (= (toValue!9490 (transformation!6938 (rule!10018 token!484))) (toValue!9490 (transformation!6938 (rule!10018 token!484)))) t!335852) tb!243657))

(declare-fun result!295254 () Bool)

(assert (=> tb!243657 (= result!295254 (inv!21 (dynLambda!18396 (toValue!9490 (transformation!6938 (rule!10018 token!484))) (seqFromList!5155 lt!1443165))))))

(declare-fun m!4650991 () Bool)

(assert (=> tb!243657 m!4650991))

(assert (=> d!1202824 t!335852))

(declare-fun b_and!311447 () Bool)

(assert (= b_and!311423 (and (=> t!335852 result!295254) b_and!311447)))

(declare-fun t!335854 () Bool)

(declare-fun tb!243659 () Bool)

(assert (=> (and b!4049543 (= (toValue!9490 (transformation!6938 (h!48719 rules!2999))) (toValue!9490 (transformation!6938 (rule!10018 token!484)))) t!335854) tb!243659))

(declare-fun result!295256 () Bool)

(assert (= result!295256 result!295254))

(assert (=> d!1202824 t!335854))

(declare-fun b_and!311449 () Bool)

(assert (= b_and!311425 (and (=> t!335854 result!295256) b_and!311449)))

(assert (=> d!1202824 m!4650025))

(declare-fun m!4650997 () Bool)

(assert (=> d!1202824 m!4650997))

(assert (=> b!4049546 d!1202824))

(declare-fun d!1202828 () Bool)

(assert (=> d!1202828 (isPrefix!4025 lt!1443165 (++!11340 lt!1443165 lt!1443155))))

(declare-fun lt!1443434 () Unit!62573)

(assert (=> d!1202828 (= lt!1443434 (choose!24558 lt!1443165 lt!1443155))))

(assert (=> d!1202828 (= (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443165 lt!1443155) lt!1443434)))

(declare-fun bs!591498 () Bool)

(assert (= bs!591498 d!1202828))

(assert (=> bs!591498 m!4650011))

(assert (=> bs!591498 m!4650011))

(declare-fun m!4650999 () Bool)

(assert (=> bs!591498 m!4650999))

(declare-fun m!4651001 () Bool)

(assert (=> bs!591498 m!4651001))

(assert (=> b!4049546 d!1202828))

(declare-fun d!1202830 () Bool)

(declare-fun lt!1443438 () Bool)

(declare-fun content!6595 (List!43423) (InoxSet Rule!13676))

(assert (=> d!1202830 (= lt!1443438 (select (content!6595 rules!2999) (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(declare-fun e!2513017 () Bool)

(assert (=> d!1202830 (= lt!1443438 e!2513017)))

(declare-fun res!1650507 () Bool)

(assert (=> d!1202830 (=> (not res!1650507) (not e!2513017))))

(assert (=> d!1202830 (= res!1650507 ((_ is Cons!43299) rules!2999))))

(assert (=> d!1202830 (= (contains!8610 rules!2999 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443438)))

(declare-fun b!4050165 () Bool)

(declare-fun e!2513018 () Bool)

(assert (=> b!4050165 (= e!2513017 e!2513018)))

(declare-fun res!1650508 () Bool)

(assert (=> b!4050165 (=> res!1650508 e!2513018)))

(assert (=> b!4050165 (= res!1650508 (= (h!48719 rules!2999) (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(declare-fun b!4050166 () Bool)

(assert (=> b!4050166 (= e!2513018 (contains!8610 (t!335826 rules!2999) (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(assert (= (and d!1202830 res!1650507) b!4050165))

(assert (= (and b!4050165 (not res!1650508)) b!4050166))

(declare-fun m!4651017 () Bool)

(assert (=> d!1202830 m!4651017))

(declare-fun m!4651019 () Bool)

(assert (=> d!1202830 m!4651019))

(declare-fun m!4651021 () Bool)

(assert (=> b!4050166 m!4651021))

(assert (=> b!4049525 d!1202830))

(declare-fun d!1202834 () Bool)

(declare-fun lt!1443439 () Int)

(assert (=> d!1202834 (>= lt!1443439 0)))

(declare-fun e!2513024 () Int)

(assert (=> d!1202834 (= lt!1443439 e!2513024)))

(declare-fun c!699660 () Bool)

(assert (=> d!1202834 (= c!699660 ((_ is Nil!43297) (originalCharacters!7538 token!484)))))

(assert (=> d!1202834 (= (size!32372 (originalCharacters!7538 token!484)) lt!1443439)))

(declare-fun b!4050174 () Bool)

(assert (=> b!4050174 (= e!2513024 0)))

(declare-fun b!4050175 () Bool)

(assert (=> b!4050175 (= e!2513024 (+ 1 (size!32372 (t!335824 (originalCharacters!7538 token!484)))))))

(assert (= (and d!1202834 c!699660) b!4050174))

(assert (= (and d!1202834 (not c!699660)) b!4050175))

(declare-fun m!4651023 () Bool)

(assert (=> b!4050175 m!4651023))

(assert (=> b!4049542 d!1202834))

(declare-fun d!1202836 () Bool)

(assert (=> d!1202836 (= (inv!57875 (tag!7798 (rule!10018 token!484))) (= (mod (str.len (value!218341 (tag!7798 (rule!10018 token!484)))) 2) 0))))

(assert (=> b!4049563 d!1202836))

(declare-fun d!1202838 () Bool)

(declare-fun res!1650511 () Bool)

(declare-fun e!2513038 () Bool)

(assert (=> d!1202838 (=> (not res!1650511) (not e!2513038))))

(assert (=> d!1202838 (= res!1650511 (semiInverseModEq!2966 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (toValue!9490 (transformation!6938 (rule!10018 token!484)))))))

(assert (=> d!1202838 (= (inv!57878 (transformation!6938 (rule!10018 token!484))) e!2513038)))

(declare-fun b!4050186 () Bool)

(assert (=> b!4050186 (= e!2513038 (equivClasses!2865 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (toValue!9490 (transformation!6938 (rule!10018 token!484)))))))

(assert (= (and d!1202838 res!1650511) b!4050186))

(declare-fun m!4651029 () Bool)

(assert (=> d!1202838 m!4651029))

(declare-fun m!4651031 () Bool)

(assert (=> b!4050186 m!4651031))

(assert (=> b!4049563 d!1202838))

(declare-fun b!4050188 () Bool)

(declare-fun e!2513040 () List!43421)

(assert (=> b!4050188 (= e!2513040 (Cons!43297 (h!48717 lt!1443165) (++!11340 (t!335824 lt!1443165) lt!1443155)))))

(declare-fun d!1202840 () Bool)

(declare-fun e!2513039 () Bool)

(assert (=> d!1202840 e!2513039))

(declare-fun res!1650513 () Bool)

(assert (=> d!1202840 (=> (not res!1650513) (not e!2513039))))

(declare-fun lt!1443440 () List!43421)

(assert (=> d!1202840 (= res!1650513 (= (content!6594 lt!1443440) ((_ map or) (content!6594 lt!1443165) (content!6594 lt!1443155))))))

(assert (=> d!1202840 (= lt!1443440 e!2513040)))

(declare-fun c!699661 () Bool)

(assert (=> d!1202840 (= c!699661 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202840 (= (++!11340 lt!1443165 lt!1443155) lt!1443440)))

(declare-fun b!4050187 () Bool)

(assert (=> b!4050187 (= e!2513040 lt!1443155)))

(declare-fun b!4050189 () Bool)

(declare-fun res!1650512 () Bool)

(assert (=> b!4050189 (=> (not res!1650512) (not e!2513039))))

(assert (=> b!4050189 (= res!1650512 (= (size!32372 lt!1443440) (+ (size!32372 lt!1443165) (size!32372 lt!1443155))))))

(declare-fun b!4050190 () Bool)

(assert (=> b!4050190 (= e!2513039 (or (not (= lt!1443155 Nil!43297)) (= lt!1443440 lt!1443165)))))

(assert (= (and d!1202840 c!699661) b!4050187))

(assert (= (and d!1202840 (not c!699661)) b!4050188))

(assert (= (and d!1202840 res!1650513) b!4050189))

(assert (= (and b!4050189 res!1650512) b!4050190))

(declare-fun m!4651033 () Bool)

(assert (=> b!4050188 m!4651033))

(declare-fun m!4651035 () Bool)

(assert (=> d!1202840 m!4651035))

(assert (=> d!1202840 m!4650653))

(declare-fun m!4651037 () Bool)

(assert (=> d!1202840 m!4651037))

(declare-fun m!4651039 () Bool)

(assert (=> b!4050189 m!4651039))

(assert (=> b!4050189 m!4649967))

(declare-fun m!4651041 () Bool)

(assert (=> b!4050189 m!4651041))

(assert (=> b!4049564 d!1202840))

(declare-fun b!4050192 () Bool)

(declare-fun e!2513042 () List!43421)

(assert (=> b!4050192 (= e!2513042 (Cons!43297 (h!48717 lt!1443163) (++!11340 (t!335824 lt!1443163) suffix!1299)))))

(declare-fun d!1202842 () Bool)

(declare-fun e!2513041 () Bool)

(assert (=> d!1202842 e!2513041))

(declare-fun res!1650515 () Bool)

(assert (=> d!1202842 (=> (not res!1650515) (not e!2513041))))

(declare-fun lt!1443441 () List!43421)

(assert (=> d!1202842 (= res!1650515 (= (content!6594 lt!1443441) ((_ map or) (content!6594 lt!1443163) (content!6594 suffix!1299))))))

(assert (=> d!1202842 (= lt!1443441 e!2513042)))

(declare-fun c!699662 () Bool)

(assert (=> d!1202842 (= c!699662 ((_ is Nil!43297) lt!1443163))))

(assert (=> d!1202842 (= (++!11340 lt!1443163 suffix!1299) lt!1443441)))

(declare-fun b!4050191 () Bool)

(assert (=> b!4050191 (= e!2513042 suffix!1299)))

(declare-fun b!4050193 () Bool)

(declare-fun res!1650514 () Bool)

(assert (=> b!4050193 (=> (not res!1650514) (not e!2513041))))

(assert (=> b!4050193 (= res!1650514 (= (size!32372 lt!1443441) (+ (size!32372 lt!1443163) (size!32372 suffix!1299))))))

(declare-fun b!4050194 () Bool)

(assert (=> b!4050194 (= e!2513041 (or (not (= suffix!1299 Nil!43297)) (= lt!1443441 lt!1443163)))))

(assert (= (and d!1202842 c!699662) b!4050191))

(assert (= (and d!1202842 (not c!699662)) b!4050192))

(assert (= (and d!1202842 res!1650515) b!4050193))

(assert (= (and b!4050193 res!1650514) b!4050194))

(declare-fun m!4651043 () Bool)

(assert (=> b!4050192 m!4651043))

(declare-fun m!4651045 () Bool)

(assert (=> d!1202842 m!4651045))

(declare-fun m!4651047 () Bool)

(assert (=> d!1202842 m!4651047))

(declare-fun m!4651049 () Bool)

(assert (=> d!1202842 m!4651049))

(declare-fun m!4651051 () Bool)

(assert (=> b!4050193 m!4651051))

(declare-fun m!4651053 () Bool)

(assert (=> b!4050193 m!4651053))

(assert (=> b!4050193 m!4649929))

(assert (=> b!4049564 d!1202842))

(declare-fun b!4050196 () Bool)

(declare-fun e!2513044 () List!43421)

(assert (=> b!4050196 (= e!2513044 (Cons!43297 (h!48717 lt!1443157) (++!11340 (t!335824 lt!1443157) suffix!1299)))))

(declare-fun d!1202844 () Bool)

(declare-fun e!2513043 () Bool)

(assert (=> d!1202844 e!2513043))

(declare-fun res!1650517 () Bool)

(assert (=> d!1202844 (=> (not res!1650517) (not e!2513043))))

(declare-fun lt!1443442 () List!43421)

(assert (=> d!1202844 (= res!1650517 (= (content!6594 lt!1443442) ((_ map or) (content!6594 lt!1443157) (content!6594 suffix!1299))))))

(assert (=> d!1202844 (= lt!1443442 e!2513044)))

(declare-fun c!699663 () Bool)

(assert (=> d!1202844 (= c!699663 ((_ is Nil!43297) lt!1443157))))

(assert (=> d!1202844 (= (++!11340 lt!1443157 suffix!1299) lt!1443442)))

(declare-fun b!4050195 () Bool)

(assert (=> b!4050195 (= e!2513044 suffix!1299)))

(declare-fun b!4050197 () Bool)

(declare-fun res!1650516 () Bool)

(assert (=> b!4050197 (=> (not res!1650516) (not e!2513043))))

(assert (=> b!4050197 (= res!1650516 (= (size!32372 lt!1443442) (+ (size!32372 lt!1443157) (size!32372 suffix!1299))))))

(declare-fun b!4050198 () Bool)

(assert (=> b!4050198 (= e!2513043 (or (not (= suffix!1299 Nil!43297)) (= lt!1443442 lt!1443157)))))

(assert (= (and d!1202844 c!699663) b!4050195))

(assert (= (and d!1202844 (not c!699663)) b!4050196))

(assert (= (and d!1202844 res!1650517) b!4050197))

(assert (= (and b!4050197 res!1650516) b!4050198))

(declare-fun m!4651055 () Bool)

(assert (=> b!4050196 m!4651055))

(declare-fun m!4651057 () Bool)

(assert (=> d!1202844 m!4651057))

(declare-fun m!4651059 () Bool)

(assert (=> d!1202844 m!4651059))

(assert (=> d!1202844 m!4651049))

(declare-fun m!4651061 () Bool)

(assert (=> b!4050197 m!4651061))

(declare-fun m!4651063 () Bool)

(assert (=> b!4050197 m!4651063))

(assert (=> b!4050197 m!4649929))

(assert (=> b!4049564 d!1202844))

(declare-fun d!1202846 () Bool)

(assert (=> d!1202846 (= (++!11340 (++!11340 lt!1443165 lt!1443157) suffix!1299) (++!11340 lt!1443165 (++!11340 lt!1443157 suffix!1299)))))

(declare-fun lt!1443443 () Unit!62573)

(assert (=> d!1202846 (= lt!1443443 (choose!24566 lt!1443165 lt!1443157 suffix!1299))))

(assert (=> d!1202846 (= (lemmaConcatAssociativity!2642 lt!1443165 lt!1443157 suffix!1299) lt!1443443)))

(declare-fun bs!591499 () Bool)

(assert (= bs!591499 d!1202846))

(assert (=> bs!591499 m!4650055))

(assert (=> bs!591499 m!4650015))

(declare-fun m!4651065 () Bool)

(assert (=> bs!591499 m!4651065))

(assert (=> bs!591499 m!4650015))

(declare-fun m!4651067 () Bool)

(assert (=> bs!591499 m!4651067))

(assert (=> bs!591499 m!4650055))

(declare-fun m!4651069 () Bool)

(assert (=> bs!591499 m!4651069))

(assert (=> b!4049564 d!1202846))

(declare-fun d!1202848 () Bool)

(declare-fun res!1650522 () Bool)

(declare-fun e!2513047 () Bool)

(assert (=> d!1202848 (=> (not res!1650522) (not e!2513047))))

(assert (=> d!1202848 (= res!1650522 (not (isEmpty!25842 (originalCharacters!7538 token!484))))))

(assert (=> d!1202848 (= (inv!57879 token!484) e!2513047)))

(declare-fun b!4050203 () Bool)

(declare-fun res!1650523 () Bool)

(assert (=> b!4050203 (=> (not res!1650523) (not e!2513047))))

(assert (=> b!4050203 (= res!1650523 (= (originalCharacters!7538 token!484) (list!16130 (dynLambda!18397 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (value!218367 token!484)))))))

(declare-fun b!4050204 () Bool)

(assert (=> b!4050204 (= e!2513047 (= (size!32371 token!484) (size!32372 (originalCharacters!7538 token!484))))))

(assert (= (and d!1202848 res!1650522) b!4050203))

(assert (= (and b!4050203 res!1650523) b!4050204))

(declare-fun b_lambda!118357 () Bool)

(assert (=> (not b_lambda!118357) (not b!4050203)))

(declare-fun t!335864 () Bool)

(declare-fun tb!243669 () Bool)

(assert (=> (and b!4049527 (= (toChars!9349 (transformation!6938 (rule!10018 token!484))) (toChars!9349 (transformation!6938 (rule!10018 token!484)))) t!335864) tb!243669))

(declare-fun b!4050205 () Bool)

(declare-fun e!2513048 () Bool)

(declare-fun tp!1228324 () Bool)

(assert (=> b!4050205 (= e!2513048 (and (inv!57882 (c!699568 (dynLambda!18397 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (value!218367 token!484)))) tp!1228324))))

(declare-fun result!295272 () Bool)

(assert (=> tb!243669 (= result!295272 (and (inv!57883 (dynLambda!18397 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (value!218367 token!484))) e!2513048))))

(assert (= tb!243669 b!4050205))

(declare-fun m!4651071 () Bool)

(assert (=> b!4050205 m!4651071))

(declare-fun m!4651073 () Bool)

(assert (=> tb!243669 m!4651073))

(assert (=> b!4050203 t!335864))

(declare-fun b_and!311455 () Bool)

(assert (= b_and!311431 (and (=> t!335864 result!295272) b_and!311455)))

(declare-fun t!335866 () Bool)

(declare-fun tb!243671 () Bool)

(assert (=> (and b!4049543 (= (toChars!9349 (transformation!6938 (h!48719 rules!2999))) (toChars!9349 (transformation!6938 (rule!10018 token!484)))) t!335866) tb!243671))

(declare-fun result!295274 () Bool)

(assert (= result!295274 result!295272))

(assert (=> b!4050203 t!335866))

(declare-fun b_and!311457 () Bool)

(assert (= b_and!311433 (and (=> t!335866 result!295274) b_and!311457)))

(declare-fun m!4651075 () Bool)

(assert (=> d!1202848 m!4651075))

(declare-fun m!4651077 () Bool)

(assert (=> b!4050203 m!4651077))

(assert (=> b!4050203 m!4651077))

(declare-fun m!4651079 () Bool)

(assert (=> b!4050203 m!4651079))

(assert (=> b!4050204 m!4650053))

(assert (=> start!381896 d!1202848))

(declare-fun d!1202850 () Bool)

(declare-fun lt!1443444 () Int)

(assert (=> d!1202850 (>= lt!1443444 0)))

(declare-fun e!2513049 () Int)

(assert (=> d!1202850 (= lt!1443444 e!2513049)))

(declare-fun c!699664 () Bool)

(assert (=> d!1202850 (= c!699664 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202850 (= (size!32372 lt!1443165) lt!1443444)))

(declare-fun b!4050206 () Bool)

(assert (=> b!4050206 (= e!2513049 0)))

(declare-fun b!4050207 () Bool)

(assert (=> b!4050207 (= e!2513049 (+ 1 (size!32372 (t!335824 lt!1443165))))))

(assert (= (and d!1202850 c!699664) b!4050206))

(assert (= (and d!1202850 (not c!699664)) b!4050207))

(declare-fun m!4651081 () Bool)

(assert (=> b!4050207 m!4651081))

(assert (=> b!4049544 d!1202850))

(declare-fun d!1202852 () Bool)

(declare-fun lt!1443445 () Int)

(assert (=> d!1202852 (>= lt!1443445 0)))

(declare-fun e!2513050 () Int)

(assert (=> d!1202852 (= lt!1443445 e!2513050)))

(declare-fun c!699665 () Bool)

(assert (=> d!1202852 (= c!699665 ((_ is Nil!43297) prefix!494))))

(assert (=> d!1202852 (= (size!32372 prefix!494) lt!1443445)))

(declare-fun b!4050208 () Bool)

(assert (=> b!4050208 (= e!2513050 0)))

(declare-fun b!4050209 () Bool)

(assert (=> b!4050209 (= e!2513050 (+ 1 (size!32372 (t!335824 prefix!494))))))

(assert (= (and d!1202852 c!699665) b!4050208))

(assert (= (and d!1202852 (not c!699665)) b!4050209))

(declare-fun m!4651083 () Bool)

(assert (=> b!4050209 m!4651083))

(assert (=> b!4049544 d!1202852))

(declare-fun d!1202854 () Bool)

(assert (=> d!1202854 (= (list!16130 (charsOf!4754 token!484)) (list!16132 (c!699568 (charsOf!4754 token!484))))))

(declare-fun bs!591500 () Bool)

(assert (= bs!591500 d!1202854))

(declare-fun m!4651085 () Bool)

(assert (=> bs!591500 m!4651085))

(assert (=> b!4049544 d!1202854))

(declare-fun d!1202856 () Bool)

(declare-fun lt!1443446 () BalanceConc!25892)

(assert (=> d!1202856 (= (list!16130 lt!1443446) (originalCharacters!7538 token!484))))

(assert (=> d!1202856 (= lt!1443446 (dynLambda!18397 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (value!218367 token!484)))))

(assert (=> d!1202856 (= (charsOf!4754 token!484) lt!1443446)))

(declare-fun b_lambda!118359 () Bool)

(assert (=> (not b_lambda!118359) (not d!1202856)))

(assert (=> d!1202856 t!335864))

(declare-fun b_and!311459 () Bool)

(assert (= b_and!311455 (and (=> t!335864 result!295272) b_and!311459)))

(assert (=> d!1202856 t!335866))

(declare-fun b_and!311461 () Bool)

(assert (= b_and!311457 (and (=> t!335866 result!295274) b_and!311461)))

(declare-fun m!4651087 () Bool)

(assert (=> d!1202856 m!4651087))

(assert (=> d!1202856 m!4651077))

(assert (=> b!4049544 d!1202856))

(declare-fun b!4050210 () Bool)

(declare-fun e!2513053 () Bool)

(declare-fun e!2513052 () Bool)

(assert (=> b!4050210 (= e!2513053 e!2513052)))

(declare-fun res!1650526 () Bool)

(assert (=> b!4050210 (=> (not res!1650526) (not e!2513052))))

(assert (=> b!4050210 (= res!1650526 (not ((_ is Nil!43297) suffix!1299)))))

(declare-fun b!4050213 () Bool)

(declare-fun e!2513051 () Bool)

(assert (=> b!4050213 (= e!2513051 (>= (size!32372 suffix!1299) (size!32372 newSuffix!27)))))

(declare-fun b!4050211 () Bool)

(declare-fun res!1650524 () Bool)

(assert (=> b!4050211 (=> (not res!1650524) (not e!2513052))))

(assert (=> b!4050211 (= res!1650524 (= (head!8561 newSuffix!27) (head!8561 suffix!1299)))))

(declare-fun d!1202858 () Bool)

(assert (=> d!1202858 e!2513051))

(declare-fun res!1650525 () Bool)

(assert (=> d!1202858 (=> res!1650525 e!2513051)))

(declare-fun lt!1443447 () Bool)

(assert (=> d!1202858 (= res!1650525 (not lt!1443447))))

(assert (=> d!1202858 (= lt!1443447 e!2513053)))

(declare-fun res!1650527 () Bool)

(assert (=> d!1202858 (=> res!1650527 e!2513053)))

(assert (=> d!1202858 (= res!1650527 ((_ is Nil!43297) newSuffix!27))))

(assert (=> d!1202858 (= (isPrefix!4025 newSuffix!27 suffix!1299) lt!1443447)))

(declare-fun b!4050212 () Bool)

(assert (=> b!4050212 (= e!2513052 (isPrefix!4025 (tail!6293 newSuffix!27) (tail!6293 suffix!1299)))))

(assert (= (and d!1202858 (not res!1650527)) b!4050210))

(assert (= (and b!4050210 res!1650526) b!4050211))

(assert (= (and b!4050211 res!1650524) b!4050212))

(assert (= (and d!1202858 (not res!1650525)) b!4050213))

(assert (=> b!4050213 m!4649929))

(assert (=> b!4050213 m!4649931))

(declare-fun m!4651089 () Bool)

(assert (=> b!4050211 m!4651089))

(declare-fun m!4651091 () Bool)

(assert (=> b!4050211 m!4651091))

(declare-fun m!4651093 () Bool)

(assert (=> b!4050212 m!4651093))

(declare-fun m!4651095 () Bool)

(assert (=> b!4050212 m!4651095))

(assert (=> b!4050212 m!4651093))

(assert (=> b!4050212 m!4651095))

(declare-fun m!4651097 () Bool)

(assert (=> b!4050212 m!4651097))

(assert (=> b!4049565 d!1202858))

(declare-fun b!4050224 () Bool)

(declare-fun e!2513060 () Bool)

(declare-fun e!2513062 () Bool)

(assert (=> b!4050224 (= e!2513060 e!2513062)))

(declare-fun c!699671 () Bool)

(assert (=> b!4050224 (= c!699671 ((_ is IntegerValue!21505) (value!218367 token!484)))))

(declare-fun b!4050225 () Bool)

(declare-fun inv!17 (TokenValue!7168) Bool)

(assert (=> b!4050225 (= e!2513062 (inv!17 (value!218367 token!484)))))

(declare-fun b!4050226 () Bool)

(declare-fun res!1650530 () Bool)

(declare-fun e!2513061 () Bool)

(assert (=> b!4050226 (=> res!1650530 e!2513061)))

(assert (=> b!4050226 (= res!1650530 (not ((_ is IntegerValue!21506) (value!218367 token!484))))))

(assert (=> b!4050226 (= e!2513062 e!2513061)))

(declare-fun b!4050228 () Bool)

(declare-fun inv!16 (TokenValue!7168) Bool)

(assert (=> b!4050228 (= e!2513060 (inv!16 (value!218367 token!484)))))

(declare-fun b!4050227 () Bool)

(declare-fun inv!15 (TokenValue!7168) Bool)

(assert (=> b!4050227 (= e!2513061 (inv!15 (value!218367 token!484)))))

(declare-fun d!1202860 () Bool)

(declare-fun c!699670 () Bool)

(assert (=> d!1202860 (= c!699670 ((_ is IntegerValue!21504) (value!218367 token!484)))))

(assert (=> d!1202860 (= (inv!21 (value!218367 token!484)) e!2513060)))

(assert (= (and d!1202860 c!699670) b!4050228))

(assert (= (and d!1202860 (not c!699670)) b!4050224))

(assert (= (and b!4050224 c!699671) b!4050225))

(assert (= (and b!4050224 (not c!699671)) b!4050226))

(assert (= (and b!4050226 (not res!1650530)) b!4050227))

(declare-fun m!4651099 () Bool)

(assert (=> b!4050225 m!4651099))

(declare-fun m!4651101 () Bool)

(assert (=> b!4050228 m!4651101))

(declare-fun m!4651103 () Bool)

(assert (=> b!4050227 m!4651103))

(assert (=> b!4049540 d!1202860))

(declare-fun b!4050229 () Bool)

(declare-fun e!2513065 () Bool)

(declare-fun e!2513064 () Bool)

(assert (=> b!4050229 (= e!2513065 e!2513064)))

(declare-fun res!1650533 () Bool)

(assert (=> b!4050229 (=> (not res!1650533) (not e!2513064))))

(assert (=> b!4050229 (= res!1650533 (not ((_ is Nil!43297) lt!1443175)))))

(declare-fun b!4050232 () Bool)

(declare-fun e!2513063 () Bool)

(assert (=> b!4050232 (= e!2513063 (>= (size!32372 lt!1443175) (size!32372 lt!1443187)))))

(declare-fun b!4050230 () Bool)

(declare-fun res!1650531 () Bool)

(assert (=> b!4050230 (=> (not res!1650531) (not e!2513064))))

(assert (=> b!4050230 (= res!1650531 (= (head!8561 lt!1443187) (head!8561 lt!1443175)))))

(declare-fun d!1202862 () Bool)

(assert (=> d!1202862 e!2513063))

(declare-fun res!1650532 () Bool)

(assert (=> d!1202862 (=> res!1650532 e!2513063)))

(declare-fun lt!1443448 () Bool)

(assert (=> d!1202862 (= res!1650532 (not lt!1443448))))

(assert (=> d!1202862 (= lt!1443448 e!2513065)))

(declare-fun res!1650534 () Bool)

(assert (=> d!1202862 (=> res!1650534 e!2513065)))

(assert (=> d!1202862 (= res!1650534 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202862 (= (isPrefix!4025 lt!1443187 lt!1443175) lt!1443448)))

(declare-fun b!4050231 () Bool)

(assert (=> b!4050231 (= e!2513064 (isPrefix!4025 (tail!6293 lt!1443187) (tail!6293 lt!1443175)))))

(assert (= (and d!1202862 (not res!1650534)) b!4050229))

(assert (= (and b!4050229 res!1650533) b!4050230))

(assert (= (and b!4050230 res!1650531) b!4050231))

(assert (= (and d!1202862 (not res!1650532)) b!4050232))

(assert (=> b!4050232 m!4650137))

(assert (=> b!4050232 m!4649889))

(assert (=> b!4050230 m!4650349))

(assert (=> b!4050230 m!4650867))

(assert (=> b!4050231 m!4650353))

(assert (=> b!4050231 m!4650869))

(assert (=> b!4050231 m!4650353))

(assert (=> b!4050231 m!4650869))

(declare-fun m!4651105 () Bool)

(assert (=> b!4050231 m!4651105))

(assert (=> b!4049561 d!1202862))

(declare-fun d!1202864 () Bool)

(assert (=> d!1202864 (= (inv!57875 (tag!7798 (h!48719 rules!2999))) (= (mod (str.len (value!218341 (tag!7798 (h!48719 rules!2999)))) 2) 0))))

(assert (=> b!4049541 d!1202864))

(declare-fun d!1202866 () Bool)

(declare-fun res!1650535 () Bool)

(declare-fun e!2513066 () Bool)

(assert (=> d!1202866 (=> (not res!1650535) (not e!2513066))))

(assert (=> d!1202866 (= res!1650535 (semiInverseModEq!2966 (toChars!9349 (transformation!6938 (h!48719 rules!2999))) (toValue!9490 (transformation!6938 (h!48719 rules!2999)))))))

(assert (=> d!1202866 (= (inv!57878 (transformation!6938 (h!48719 rules!2999))) e!2513066)))

(declare-fun b!4050233 () Bool)

(assert (=> b!4050233 (= e!2513066 (equivClasses!2865 (toChars!9349 (transformation!6938 (h!48719 rules!2999))) (toValue!9490 (transformation!6938 (h!48719 rules!2999)))))))

(assert (= (and d!1202866 res!1650535) b!4050233))

(declare-fun m!4651107 () Bool)

(assert (=> d!1202866 m!4651107))

(declare-fun m!4651109 () Bool)

(assert (=> b!4050233 m!4651109))

(assert (=> b!4049541 d!1202866))

(declare-fun b!4050234 () Bool)

(declare-fun res!1650540 () Bool)

(declare-fun e!2513068 () Bool)

(assert (=> b!4050234 (=> (not res!1650540) (not e!2513068))))

(declare-fun lt!1443452 () Option!9352)

(assert (=> b!4050234 (= res!1650540 (matchR!5796 (regex!6938 (rule!10018 (_1!24319 (get!14204 lt!1443452)))) (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443452))))))))

(declare-fun b!4050235 () Bool)

(declare-fun e!2513067 () Option!9352)

(declare-fun lt!1443451 () Option!9352)

(declare-fun lt!1443449 () Option!9352)

(assert (=> b!4050235 (= e!2513067 (ite (and ((_ is None!9351) lt!1443451) ((_ is None!9351) lt!1443449)) None!9351 (ite ((_ is None!9351) lt!1443449) lt!1443451 (ite ((_ is None!9351) lt!1443451) lt!1443449 (ite (>= (size!32371 (_1!24319 (v!39759 lt!1443451))) (size!32371 (_1!24319 (v!39759 lt!1443449)))) lt!1443451 lt!1443449)))))))

(declare-fun call!287845 () Option!9352)

(assert (=> b!4050235 (= lt!1443451 call!287845)))

(assert (=> b!4050235 (= lt!1443449 (maxPrefix!3825 thiss!21717 (t!335826 rules!2999) lt!1443177))))

(declare-fun b!4050236 () Bool)

(assert (=> b!4050236 (= e!2513067 call!287845)))

(declare-fun b!4050237 () Bool)

(declare-fun res!1650541 () Bool)

(assert (=> b!4050237 (=> (not res!1650541) (not e!2513068))))

(assert (=> b!4050237 (= res!1650541 (= (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443452)))) (originalCharacters!7538 (_1!24319 (get!14204 lt!1443452)))))))

(declare-fun b!4050238 () Bool)

(declare-fun res!1650539 () Bool)

(assert (=> b!4050238 (=> (not res!1650539) (not e!2513068))))

(assert (=> b!4050238 (= res!1650539 (< (size!32372 (_2!24319 (get!14204 lt!1443452))) (size!32372 lt!1443177)))))

(declare-fun d!1202868 () Bool)

(declare-fun e!2513069 () Bool)

(assert (=> d!1202868 e!2513069))

(declare-fun res!1650537 () Bool)

(assert (=> d!1202868 (=> res!1650537 e!2513069)))

(assert (=> d!1202868 (= res!1650537 (isEmpty!25841 lt!1443452))))

(assert (=> d!1202868 (= lt!1443452 e!2513067)))

(declare-fun c!699672 () Bool)

(assert (=> d!1202868 (= c!699672 (and ((_ is Cons!43299) rules!2999) ((_ is Nil!43299) (t!335826 rules!2999))))))

(declare-fun lt!1443453 () Unit!62573)

(declare-fun lt!1443450 () Unit!62573)

(assert (=> d!1202868 (= lt!1443453 lt!1443450)))

(assert (=> d!1202868 (isPrefix!4025 lt!1443177 lt!1443177)))

(assert (=> d!1202868 (= lt!1443450 (lemmaIsPrefixRefl!2592 lt!1443177 lt!1443177))))

(assert (=> d!1202868 (rulesValidInductive!2532 thiss!21717 rules!2999)))

(assert (=> d!1202868 (= (maxPrefix!3825 thiss!21717 rules!2999 lt!1443177) lt!1443452)))

(declare-fun b!4050239 () Bool)

(assert (=> b!4050239 (= e!2513068 (contains!8610 rules!2999 (rule!10018 (_1!24319 (get!14204 lt!1443452)))))))

(declare-fun b!4050240 () Bool)

(declare-fun res!1650542 () Bool)

(assert (=> b!4050240 (=> (not res!1650542) (not e!2513068))))

(assert (=> b!4050240 (= res!1650542 (= (++!11340 (list!16130 (charsOf!4754 (_1!24319 (get!14204 lt!1443452)))) (_2!24319 (get!14204 lt!1443452))) lt!1443177))))

(declare-fun b!4050241 () Bool)

(assert (=> b!4050241 (= e!2513069 e!2513068)))

(declare-fun res!1650538 () Bool)

(assert (=> b!4050241 (=> (not res!1650538) (not e!2513068))))

(assert (=> b!4050241 (= res!1650538 (isDefined!7111 lt!1443452))))

(declare-fun b!4050242 () Bool)

(declare-fun res!1650536 () Bool)

(assert (=> b!4050242 (=> (not res!1650536) (not e!2513068))))

(assert (=> b!4050242 (= res!1650536 (= (value!218367 (_1!24319 (get!14204 lt!1443452))) (apply!10127 (transformation!6938 (rule!10018 (_1!24319 (get!14204 lt!1443452)))) (seqFromList!5155 (originalCharacters!7538 (_1!24319 (get!14204 lt!1443452)))))))))

(declare-fun bm!287840 () Bool)

(assert (=> bm!287840 (= call!287845 (maxPrefixOneRule!2837 thiss!21717 (h!48719 rules!2999) lt!1443177))))

(assert (= (and d!1202868 c!699672) b!4050236))

(assert (= (and d!1202868 (not c!699672)) b!4050235))

(assert (= (or b!4050236 b!4050235) bm!287840))

(assert (= (and d!1202868 (not res!1650537)) b!4050241))

(assert (= (and b!4050241 res!1650538) b!4050237))

(assert (= (and b!4050237 res!1650541) b!4050238))

(assert (= (and b!4050238 res!1650539) b!4050240))

(assert (= (and b!4050240 res!1650542) b!4050242))

(assert (= (and b!4050242 res!1650536) b!4050234))

(assert (= (and b!4050234 res!1650540) b!4050239))

(declare-fun m!4651111 () Bool)

(assert (=> b!4050240 m!4651111))

(declare-fun m!4651113 () Bool)

(assert (=> b!4050240 m!4651113))

(assert (=> b!4050240 m!4651113))

(declare-fun m!4651115 () Bool)

(assert (=> b!4050240 m!4651115))

(assert (=> b!4050240 m!4651115))

(declare-fun m!4651117 () Bool)

(assert (=> b!4050240 m!4651117))

(assert (=> b!4050238 m!4651111))

(declare-fun m!4651119 () Bool)

(assert (=> b!4050238 m!4651119))

(assert (=> b!4050238 m!4650635))

(declare-fun m!4651121 () Bool)

(assert (=> b!4050235 m!4651121))

(declare-fun m!4651123 () Bool)

(assert (=> d!1202868 m!4651123))

(assert (=> d!1202868 m!4649963))

(assert (=> d!1202868 m!4649965))

(assert (=> d!1202868 m!4650147))

(assert (=> b!4050237 m!4651111))

(assert (=> b!4050237 m!4651113))

(assert (=> b!4050237 m!4651113))

(assert (=> b!4050237 m!4651115))

(declare-fun m!4651125 () Bool)

(assert (=> b!4050241 m!4651125))

(assert (=> b!4050234 m!4651111))

(assert (=> b!4050234 m!4651113))

(assert (=> b!4050234 m!4651113))

(assert (=> b!4050234 m!4651115))

(assert (=> b!4050234 m!4651115))

(declare-fun m!4651127 () Bool)

(assert (=> b!4050234 m!4651127))

(assert (=> b!4050239 m!4651111))

(declare-fun m!4651129 () Bool)

(assert (=> b!4050239 m!4651129))

(assert (=> b!4050242 m!4651111))

(declare-fun m!4651131 () Bool)

(assert (=> b!4050242 m!4651131))

(assert (=> b!4050242 m!4651131))

(declare-fun m!4651133 () Bool)

(assert (=> b!4050242 m!4651133))

(declare-fun m!4651135 () Bool)

(assert (=> bm!287840 m!4651135))

(assert (=> b!4049558 d!1202868))

(declare-fun b!4050244 () Bool)

(declare-fun e!2513071 () List!43421)

(assert (=> b!4050244 (= e!2513071 (Cons!43297 (h!48717 prefix!494) (++!11340 (t!335824 prefix!494) suffix!1299)))))

(declare-fun d!1202870 () Bool)

(declare-fun e!2513070 () Bool)

(assert (=> d!1202870 e!2513070))

(declare-fun res!1650544 () Bool)

(assert (=> d!1202870 (=> (not res!1650544) (not e!2513070))))

(declare-fun lt!1443454 () List!43421)

(assert (=> d!1202870 (= res!1650544 (= (content!6594 lt!1443454) ((_ map or) (content!6594 prefix!494) (content!6594 suffix!1299))))))

(assert (=> d!1202870 (= lt!1443454 e!2513071)))

(declare-fun c!699673 () Bool)

(assert (=> d!1202870 (= c!699673 ((_ is Nil!43297) prefix!494))))

(assert (=> d!1202870 (= (++!11340 prefix!494 suffix!1299) lt!1443454)))

(declare-fun b!4050243 () Bool)

(assert (=> b!4050243 (= e!2513071 suffix!1299)))

(declare-fun b!4050245 () Bool)

(declare-fun res!1650543 () Bool)

(assert (=> b!4050245 (=> (not res!1650543) (not e!2513070))))

(assert (=> b!4050245 (= res!1650543 (= (size!32372 lt!1443454) (+ (size!32372 prefix!494) (size!32372 suffix!1299))))))

(declare-fun b!4050246 () Bool)

(assert (=> b!4050246 (= e!2513070 (or (not (= suffix!1299 Nil!43297)) (= lt!1443454 prefix!494)))))

(assert (= (and d!1202870 c!699673) b!4050243))

(assert (= (and d!1202870 (not c!699673)) b!4050244))

(assert (= (and d!1202870 res!1650544) b!4050245))

(assert (= (and b!4050245 res!1650543) b!4050246))

(declare-fun m!4651137 () Bool)

(assert (=> b!4050244 m!4651137))

(declare-fun m!4651139 () Bool)

(assert (=> d!1202870 m!4651139))

(assert (=> d!1202870 m!4650677))

(assert (=> d!1202870 m!4651049))

(declare-fun m!4651141 () Bool)

(assert (=> b!4050245 m!4651141))

(assert (=> b!4050245 m!4649969))

(assert (=> b!4050245 m!4649929))

(assert (=> b!4049558 d!1202870))

(declare-fun d!1202872 () Bool)

(assert (=> d!1202872 (= (isEmpty!25839 rules!2999) ((_ is Nil!43299) rules!2999))))

(assert (=> b!4049537 d!1202872))

(declare-fun b!4050248 () Bool)

(declare-fun e!2513073 () List!43421)

(assert (=> b!4050248 (= e!2513073 (Cons!43297 (h!48717 newSuffix!27) (++!11340 (t!335824 newSuffix!27) lt!1443166)))))

(declare-fun d!1202874 () Bool)

(declare-fun e!2513072 () Bool)

(assert (=> d!1202874 e!2513072))

(declare-fun res!1650546 () Bool)

(assert (=> d!1202874 (=> (not res!1650546) (not e!2513072))))

(declare-fun lt!1443455 () List!43421)

(assert (=> d!1202874 (= res!1650546 (= (content!6594 lt!1443455) ((_ map or) (content!6594 newSuffix!27) (content!6594 lt!1443166))))))

(assert (=> d!1202874 (= lt!1443455 e!2513073)))

(declare-fun c!699674 () Bool)

(assert (=> d!1202874 (= c!699674 ((_ is Nil!43297) newSuffix!27))))

(assert (=> d!1202874 (= (++!11340 newSuffix!27 lt!1443166) lt!1443455)))

(declare-fun b!4050247 () Bool)

(assert (=> b!4050247 (= e!2513073 lt!1443166)))

(declare-fun b!4050249 () Bool)

(declare-fun res!1650545 () Bool)

(assert (=> b!4050249 (=> (not res!1650545) (not e!2513072))))

(assert (=> b!4050249 (= res!1650545 (= (size!32372 lt!1443455) (+ (size!32372 newSuffix!27) (size!32372 lt!1443166))))))

(declare-fun b!4050250 () Bool)

(assert (=> b!4050250 (= e!2513072 (or (not (= lt!1443166 Nil!43297)) (= lt!1443455 newSuffix!27)))))

(assert (= (and d!1202874 c!699674) b!4050247))

(assert (= (and d!1202874 (not c!699674)) b!4050248))

(assert (= (and d!1202874 res!1650546) b!4050249))

(assert (= (and b!4050249 res!1650545) b!4050250))

(declare-fun m!4651143 () Bool)

(assert (=> b!4050248 m!4651143))

(declare-fun m!4651145 () Bool)

(assert (=> d!1202874 m!4651145))

(assert (=> d!1202874 m!4650753))

(assert (=> d!1202874 m!4650691))

(declare-fun m!4651147 () Bool)

(assert (=> b!4050249 m!4651147))

(assert (=> b!4050249 m!4649931))

(assert (=> b!4050249 m!4650695))

(assert (=> b!4049538 d!1202874))

(declare-fun d!1202876 () Bool)

(declare-fun lt!1443456 () List!43421)

(assert (=> d!1202876 (= (++!11340 newSuffix!27 lt!1443456) suffix!1299)))

(declare-fun e!2513074 () List!43421)

(assert (=> d!1202876 (= lt!1443456 e!2513074)))

(declare-fun c!699675 () Bool)

(assert (=> d!1202876 (= c!699675 ((_ is Cons!43297) newSuffix!27))))

(assert (=> d!1202876 (>= (size!32372 suffix!1299) (size!32372 newSuffix!27))))

(assert (=> d!1202876 (= (getSuffix!2442 suffix!1299 newSuffix!27) lt!1443456)))

(declare-fun b!4050251 () Bool)

(assert (=> b!4050251 (= e!2513074 (getSuffix!2442 (tail!6293 suffix!1299) (t!335824 newSuffix!27)))))

(declare-fun b!4050252 () Bool)

(assert (=> b!4050252 (= e!2513074 suffix!1299)))

(assert (= (and d!1202876 c!699675) b!4050251))

(assert (= (and d!1202876 (not c!699675)) b!4050252))

(declare-fun m!4651149 () Bool)

(assert (=> d!1202876 m!4651149))

(assert (=> d!1202876 m!4649929))

(assert (=> d!1202876 m!4649931))

(assert (=> b!4050251 m!4651095))

(assert (=> b!4050251 m!4651095))

(declare-fun m!4651151 () Bool)

(assert (=> b!4050251 m!4651151))

(assert (=> b!4049538 d!1202876))

(declare-fun d!1202878 () Bool)

(assert (=> d!1202878 (not (matchR!5796 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443187))))

(declare-fun lt!1443459 () Unit!62573)

(declare-fun choose!24570 (LexerInterface!6527 List!43423 Rule!13676 List!43421 List!43421 List!43421 Rule!13676) Unit!62573)

(assert (=> d!1202878 (= lt!1443459 (choose!24570 thiss!21717 rules!2999 (rule!10018 token!484) lt!1443165 lt!1443177 lt!1443187 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(assert (=> d!1202878 (isPrefix!4025 lt!1443165 lt!1443177)))

(assert (=> d!1202878 (= (lemmaMaxPrefixOutputsMaxPrefix!464 thiss!21717 rules!2999 (rule!10018 token!484) lt!1443165 lt!1443177 lt!1443187 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443459)))

(declare-fun bs!591501 () Bool)

(assert (= bs!591501 d!1202878))

(assert (=> bs!591501 m!4649987))

(declare-fun m!4651153 () Bool)

(assert (=> bs!591501 m!4651153))

(assert (=> bs!591501 m!4650003))

(assert (=> b!4049560 d!1202878))

(declare-fun b!4050253 () Bool)

(declare-fun e!2513079 () Bool)

(assert (=> b!4050253 (= e!2513079 (nullable!4158 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))))

(declare-fun b!4050254 () Bool)

(declare-fun res!1650553 () Bool)

(declare-fun e!2513076 () Bool)

(assert (=> b!4050254 (=> (not res!1650553) (not e!2513076))))

(assert (=> b!4050254 (= res!1650553 (isEmpty!25842 (tail!6293 lt!1443187)))))

(declare-fun b!4050255 () Bool)

(declare-fun res!1650552 () Bool)

(assert (=> b!4050255 (=> (not res!1650552) (not e!2513076))))

(declare-fun call!287846 () Bool)

(assert (=> b!4050255 (= res!1650552 (not call!287846))))

(declare-fun d!1202880 () Bool)

(declare-fun e!2513081 () Bool)

(assert (=> d!1202880 e!2513081))

(declare-fun c!699676 () Bool)

(assert (=> d!1202880 (= c!699676 ((_ is EmptyExpr!11843) (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))))

(declare-fun lt!1443460 () Bool)

(assert (=> d!1202880 (= lt!1443460 e!2513079)))

(declare-fun c!699677 () Bool)

(assert (=> d!1202880 (= c!699677 (isEmpty!25842 lt!1443187))))

(assert (=> d!1202880 (validRegex!5358 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))

(assert (=> d!1202880 (= (matchR!5796 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) lt!1443187) lt!1443460)))

(declare-fun b!4050256 () Bool)

(declare-fun res!1650547 () Bool)

(declare-fun e!2513075 () Bool)

(assert (=> b!4050256 (=> res!1650547 e!2513075)))

(assert (=> b!4050256 (= res!1650547 e!2513076)))

(declare-fun res!1650548 () Bool)

(assert (=> b!4050256 (=> (not res!1650548) (not e!2513076))))

(assert (=> b!4050256 (= res!1650548 lt!1443460)))

(declare-fun bm!287841 () Bool)

(assert (=> bm!287841 (= call!287846 (isEmpty!25842 lt!1443187))))

(declare-fun b!4050257 () Bool)

(assert (=> b!4050257 (= e!2513079 (matchR!5796 (derivativeStep!3563 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))) (head!8561 lt!1443187)) (tail!6293 lt!1443187)))))

(declare-fun b!4050258 () Bool)

(assert (=> b!4050258 (= e!2513081 (= lt!1443460 call!287846))))

(declare-fun b!4050259 () Bool)

(declare-fun e!2513077 () Bool)

(declare-fun e!2513078 () Bool)

(assert (=> b!4050259 (= e!2513077 e!2513078)))

(declare-fun res!1650549 () Bool)

(assert (=> b!4050259 (=> res!1650549 e!2513078)))

(assert (=> b!4050259 (= res!1650549 call!287846)))

(declare-fun b!4050260 () Bool)

(declare-fun res!1650554 () Bool)

(assert (=> b!4050260 (=> res!1650554 e!2513075)))

(assert (=> b!4050260 (= res!1650554 (not ((_ is ElementMatch!11843) (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))))

(declare-fun e!2513080 () Bool)

(assert (=> b!4050260 (= e!2513080 e!2513075)))

(declare-fun b!4050261 () Bool)

(assert (=> b!4050261 (= e!2513075 e!2513077)))

(declare-fun res!1650550 () Bool)

(assert (=> b!4050261 (=> (not res!1650550) (not e!2513077))))

(assert (=> b!4050261 (= res!1650550 (not lt!1443460))))

(declare-fun b!4050262 () Bool)

(assert (=> b!4050262 (= e!2513081 e!2513080)))

(declare-fun c!699678 () Bool)

(assert (=> b!4050262 (= c!699678 ((_ is EmptyLang!11843) (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))))

(declare-fun b!4050263 () Bool)

(assert (=> b!4050263 (= e!2513076 (= (head!8561 lt!1443187) (c!699569 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))))))

(declare-fun b!4050264 () Bool)

(declare-fun res!1650551 () Bool)

(assert (=> b!4050264 (=> res!1650551 e!2513078)))

(assert (=> b!4050264 (= res!1650551 (not (isEmpty!25842 (tail!6293 lt!1443187))))))

(declare-fun b!4050265 () Bool)

(assert (=> b!4050265 (= e!2513078 (not (= (head!8561 lt!1443187) (c!699569 (regex!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176))))))))))

(declare-fun b!4050266 () Bool)

(assert (=> b!4050266 (= e!2513080 (not lt!1443460))))

(assert (= (and d!1202880 c!699677) b!4050253))

(assert (= (and d!1202880 (not c!699677)) b!4050257))

(assert (= (and d!1202880 c!699676) b!4050258))

(assert (= (and d!1202880 (not c!699676)) b!4050262))

(assert (= (and b!4050262 c!699678) b!4050266))

(assert (= (and b!4050262 (not c!699678)) b!4050260))

(assert (= (and b!4050260 (not res!1650554)) b!4050256))

(assert (= (and b!4050256 res!1650548) b!4050255))

(assert (= (and b!4050255 res!1650552) b!4050254))

(assert (= (and b!4050254 res!1650553) b!4050263))

(assert (= (and b!4050256 (not res!1650547)) b!4050261))

(assert (= (and b!4050261 res!1650550) b!4050259))

(assert (= (and b!4050259 (not res!1650549)) b!4050264))

(assert (= (and b!4050264 (not res!1650551)) b!4050265))

(assert (= (or b!4050258 b!4050255 b!4050259) bm!287841))

(assert (=> b!4050265 m!4650349))

(assert (=> b!4050253 m!4650599))

(declare-fun m!4651155 () Bool)

(assert (=> d!1202880 m!4651155))

(assert (=> d!1202880 m!4650597))

(assert (=> b!4050257 m!4650349))

(assert (=> b!4050257 m!4650349))

(declare-fun m!4651157 () Bool)

(assert (=> b!4050257 m!4651157))

(assert (=> b!4050257 m!4650353))

(assert (=> b!4050257 m!4651157))

(assert (=> b!4050257 m!4650353))

(declare-fun m!4651159 () Bool)

(assert (=> b!4050257 m!4651159))

(assert (=> b!4050264 m!4650353))

(assert (=> b!4050264 m!4650353))

(declare-fun m!4651161 () Bool)

(assert (=> b!4050264 m!4651161))

(assert (=> b!4050254 m!4650353))

(assert (=> b!4050254 m!4650353))

(assert (=> b!4050254 m!4651161))

(assert (=> bm!287841 m!4651155))

(assert (=> b!4050263 m!4650349))

(assert (=> b!4049560 d!1202880))

(declare-fun d!1202882 () Bool)

(declare-fun lt!1443461 () Bool)

(assert (=> d!1202882 (= lt!1443461 (select (content!6595 rules!2999) (rule!10018 token!484)))))

(declare-fun e!2513082 () Bool)

(assert (=> d!1202882 (= lt!1443461 e!2513082)))

(declare-fun res!1650555 () Bool)

(assert (=> d!1202882 (=> (not res!1650555) (not e!2513082))))

(assert (=> d!1202882 (= res!1650555 ((_ is Cons!43299) rules!2999))))

(assert (=> d!1202882 (= (contains!8610 rules!2999 (rule!10018 token!484)) lt!1443461)))

(declare-fun b!4050267 () Bool)

(declare-fun e!2513083 () Bool)

(assert (=> b!4050267 (= e!2513082 e!2513083)))

(declare-fun res!1650556 () Bool)

(assert (=> b!4050267 (=> res!1650556 e!2513083)))

(assert (=> b!4050267 (= res!1650556 (= (h!48719 rules!2999) (rule!10018 token!484)))))

(declare-fun b!4050268 () Bool)

(assert (=> b!4050268 (= e!2513083 (contains!8610 (t!335826 rules!2999) (rule!10018 token!484)))))

(assert (= (and d!1202882 res!1650555) b!4050267))

(assert (= (and b!4050267 (not res!1650556)) b!4050268))

(assert (=> d!1202882 m!4651017))

(declare-fun m!4651163 () Bool)

(assert (=> d!1202882 m!4651163))

(declare-fun m!4651165 () Bool)

(assert (=> b!4050268 m!4651165))

(assert (=> b!4049534 d!1202882))

(declare-fun b!4050269 () Bool)

(declare-fun e!2513086 () Bool)

(declare-fun e!2513085 () Bool)

(assert (=> b!4050269 (= e!2513086 e!2513085)))

(declare-fun res!1650559 () Bool)

(assert (=> b!4050269 (=> (not res!1650559) (not e!2513085))))

(assert (=> b!4050269 (= res!1650559 (not ((_ is Nil!43297) lt!1443177)))))

(declare-fun b!4050272 () Bool)

(declare-fun e!2513084 () Bool)

(assert (=> b!4050272 (= e!2513084 (>= (size!32372 lt!1443177) (size!32372 lt!1443187)))))

(declare-fun b!4050270 () Bool)

(declare-fun res!1650557 () Bool)

(assert (=> b!4050270 (=> (not res!1650557) (not e!2513085))))

(assert (=> b!4050270 (= res!1650557 (= (head!8561 lt!1443187) (head!8561 lt!1443177)))))

(declare-fun d!1202884 () Bool)

(assert (=> d!1202884 e!2513084))

(declare-fun res!1650558 () Bool)

(assert (=> d!1202884 (=> res!1650558 e!2513084)))

(declare-fun lt!1443462 () Bool)

(assert (=> d!1202884 (= res!1650558 (not lt!1443462))))

(assert (=> d!1202884 (= lt!1443462 e!2513086)))

(declare-fun res!1650560 () Bool)

(assert (=> d!1202884 (=> res!1650560 e!2513086)))

(assert (=> d!1202884 (= res!1650560 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202884 (= (isPrefix!4025 lt!1443187 lt!1443177) lt!1443462)))

(declare-fun b!4050271 () Bool)

(assert (=> b!4050271 (= e!2513085 (isPrefix!4025 (tail!6293 lt!1443187) (tail!6293 lt!1443177)))))

(assert (= (and d!1202884 (not res!1650560)) b!4050269))

(assert (= (and b!4050269 res!1650559) b!4050270))

(assert (= (and b!4050270 res!1650557) b!4050271))

(assert (= (and d!1202884 (not res!1650558)) b!4050272))

(assert (=> b!4050272 m!4650635))

(assert (=> b!4050272 m!4649889))

(assert (=> b!4050270 m!4650349))

(assert (=> b!4050270 m!4650637))

(assert (=> b!4050271 m!4650353))

(assert (=> b!4050271 m!4650639))

(assert (=> b!4050271 m!4650353))

(assert (=> b!4050271 m!4650639))

(declare-fun m!4651167 () Bool)

(assert (=> b!4050271 m!4651167))

(assert (=> b!4049555 d!1202884))

(declare-fun b!4050273 () Bool)

(declare-fun e!2513089 () Bool)

(declare-fun e!2513088 () Bool)

(assert (=> b!4050273 (= e!2513089 e!2513088)))

(declare-fun res!1650563 () Bool)

(assert (=> b!4050273 (=> (not res!1650563) (not e!2513088))))

(assert (=> b!4050273 (= res!1650563 (not ((_ is Nil!43297) lt!1443152)))))

(declare-fun b!4050276 () Bool)

(declare-fun e!2513087 () Bool)

(assert (=> b!4050276 (= e!2513087 (>= (size!32372 lt!1443152) (size!32372 lt!1443187)))))

(declare-fun b!4050274 () Bool)

(declare-fun res!1650561 () Bool)

(assert (=> b!4050274 (=> (not res!1650561) (not e!2513088))))

(assert (=> b!4050274 (= res!1650561 (= (head!8561 lt!1443187) (head!8561 lt!1443152)))))

(declare-fun d!1202886 () Bool)

(assert (=> d!1202886 e!2513087))

(declare-fun res!1650562 () Bool)

(assert (=> d!1202886 (=> res!1650562 e!2513087)))

(declare-fun lt!1443463 () Bool)

(assert (=> d!1202886 (= res!1650562 (not lt!1443463))))

(assert (=> d!1202886 (= lt!1443463 e!2513089)))

(declare-fun res!1650564 () Bool)

(assert (=> d!1202886 (=> res!1650564 e!2513089)))

(assert (=> d!1202886 (= res!1650564 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202886 (= (isPrefix!4025 lt!1443187 lt!1443152) lt!1443463)))

(declare-fun b!4050275 () Bool)

(assert (=> b!4050275 (= e!2513088 (isPrefix!4025 (tail!6293 lt!1443187) (tail!6293 lt!1443152)))))

(assert (= (and d!1202886 (not res!1650564)) b!4050273))

(assert (= (and b!4050273 res!1650563) b!4050274))

(assert (= (and b!4050274 res!1650561) b!4050275))

(assert (= (and d!1202886 (not res!1650562)) b!4050276))

(declare-fun m!4651169 () Bool)

(assert (=> b!4050276 m!4651169))

(assert (=> b!4050276 m!4649889))

(assert (=> b!4050274 m!4650349))

(declare-fun m!4651171 () Bool)

(assert (=> b!4050274 m!4651171))

(assert (=> b!4050275 m!4650353))

(declare-fun m!4651173 () Bool)

(assert (=> b!4050275 m!4651173))

(assert (=> b!4050275 m!4650353))

(assert (=> b!4050275 m!4651173))

(declare-fun m!4651175 () Bool)

(assert (=> b!4050275 m!4651175))

(assert (=> b!4049555 d!1202886))

(declare-fun d!1202888 () Bool)

(assert (=> d!1202888 (isPrefix!4025 lt!1443187 (++!11340 lt!1443175 lt!1443166))))

(declare-fun lt!1443464 () Unit!62573)

(assert (=> d!1202888 (= lt!1443464 (choose!24568 lt!1443187 lt!1443175 lt!1443166))))

(assert (=> d!1202888 (isPrefix!4025 lt!1443187 lt!1443175)))

(assert (=> d!1202888 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!818 lt!1443187 lt!1443175 lt!1443166) lt!1443464)))

(declare-fun bs!591502 () Bool)

(assert (= bs!591502 d!1202888))

(assert (=> bs!591502 m!4650049))

(assert (=> bs!591502 m!4650049))

(declare-fun m!4651177 () Bool)

(assert (=> bs!591502 m!4651177))

(declare-fun m!4651179 () Bool)

(assert (=> bs!591502 m!4651179))

(assert (=> bs!591502 m!4649983))

(assert (=> b!4049555 d!1202888))

(declare-fun d!1202890 () Bool)

(declare-fun lt!1443465 () Int)

(assert (=> d!1202890 (>= lt!1443465 0)))

(declare-fun e!2513090 () Int)

(assert (=> d!1202890 (= lt!1443465 e!2513090)))

(declare-fun c!699679 () Bool)

(assert (=> d!1202890 (= c!699679 ((_ is Nil!43297) suffix!1299))))

(assert (=> d!1202890 (= (size!32372 suffix!1299) lt!1443465)))

(declare-fun b!4050277 () Bool)

(assert (=> b!4050277 (= e!2513090 0)))

(declare-fun b!4050278 () Bool)

(assert (=> b!4050278 (= e!2513090 (+ 1 (size!32372 (t!335824 suffix!1299))))))

(assert (= (and d!1202890 c!699679) b!4050277))

(assert (= (and d!1202890 (not c!699679)) b!4050278))

(declare-fun m!4651181 () Bool)

(assert (=> b!4050278 m!4651181))

(assert (=> b!4049556 d!1202890))

(declare-fun d!1202892 () Bool)

(declare-fun lt!1443466 () Int)

(assert (=> d!1202892 (>= lt!1443466 0)))

(declare-fun e!2513091 () Int)

(assert (=> d!1202892 (= lt!1443466 e!2513091)))

(declare-fun c!699680 () Bool)

(assert (=> d!1202892 (= c!699680 ((_ is Nil!43297) newSuffix!27))))

(assert (=> d!1202892 (= (size!32372 newSuffix!27) lt!1443466)))

(declare-fun b!4050279 () Bool)

(assert (=> b!4050279 (= e!2513091 0)))

(declare-fun b!4050280 () Bool)

(assert (=> b!4050280 (= e!2513091 (+ 1 (size!32372 (t!335824 newSuffix!27))))))

(assert (= (and d!1202892 c!699680) b!4050279))

(assert (= (and d!1202892 (not c!699680)) b!4050280))

(declare-fun m!4651183 () Bool)

(assert (=> b!4050280 m!4651183))

(assert (=> b!4049556 d!1202892))

(declare-fun b!4050282 () Bool)

(declare-fun e!2513093 () List!43421)

(assert (=> b!4050282 (= e!2513093 (Cons!43297 (h!48717 lt!1443165) (++!11340 (t!335824 lt!1443165) lt!1443157)))))

(declare-fun d!1202894 () Bool)

(declare-fun e!2513092 () Bool)

(assert (=> d!1202894 e!2513092))

(declare-fun res!1650566 () Bool)

(assert (=> d!1202894 (=> (not res!1650566) (not e!2513092))))

(declare-fun lt!1443467 () List!43421)

(assert (=> d!1202894 (= res!1650566 (= (content!6594 lt!1443467) ((_ map or) (content!6594 lt!1443165) (content!6594 lt!1443157))))))

(assert (=> d!1202894 (= lt!1443467 e!2513093)))

(declare-fun c!699681 () Bool)

(assert (=> d!1202894 (= c!699681 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202894 (= (++!11340 lt!1443165 lt!1443157) lt!1443467)))

(declare-fun b!4050281 () Bool)

(assert (=> b!4050281 (= e!2513093 lt!1443157)))

(declare-fun b!4050283 () Bool)

(declare-fun res!1650565 () Bool)

(assert (=> b!4050283 (=> (not res!1650565) (not e!2513092))))

(assert (=> b!4050283 (= res!1650565 (= (size!32372 lt!1443467) (+ (size!32372 lt!1443165) (size!32372 lt!1443157))))))

(declare-fun b!4050284 () Bool)

(assert (=> b!4050284 (= e!2513092 (or (not (= lt!1443157 Nil!43297)) (= lt!1443467 lt!1443165)))))

(assert (= (and d!1202894 c!699681) b!4050281))

(assert (= (and d!1202894 (not c!699681)) b!4050282))

(assert (= (and d!1202894 res!1650566) b!4050283))

(assert (= (and b!4050283 res!1650565) b!4050284))

(declare-fun m!4651185 () Bool)

(assert (=> b!4050282 m!4651185))

(declare-fun m!4651187 () Bool)

(assert (=> d!1202894 m!4651187))

(assert (=> d!1202894 m!4650653))

(assert (=> d!1202894 m!4651059))

(declare-fun m!4651189 () Bool)

(assert (=> b!4050283 m!4651189))

(assert (=> b!4050283 m!4649967))

(assert (=> b!4050283 m!4651063))

(assert (=> b!4049535 d!1202894))

(declare-fun d!1202896 () Bool)

(declare-fun lt!1443468 () List!43421)

(assert (=> d!1202896 (= (++!11340 lt!1443165 lt!1443468) prefix!494)))

(declare-fun e!2513094 () List!43421)

(assert (=> d!1202896 (= lt!1443468 e!2513094)))

(declare-fun c!699682 () Bool)

(assert (=> d!1202896 (= c!699682 ((_ is Cons!43297) lt!1443165))))

(assert (=> d!1202896 (>= (size!32372 prefix!494) (size!32372 lt!1443165))))

(assert (=> d!1202896 (= (getSuffix!2442 prefix!494 lt!1443165) lt!1443468)))

(declare-fun b!4050285 () Bool)

(assert (=> b!4050285 (= e!2513094 (getSuffix!2442 (tail!6293 prefix!494) (t!335824 lt!1443165)))))

(declare-fun b!4050286 () Bool)

(assert (=> b!4050286 (= e!2513094 prefix!494)))

(assert (= (and d!1202896 c!699682) b!4050285))

(assert (= (and d!1202896 (not c!699682)) b!4050286))

(declare-fun m!4651191 () Bool)

(assert (=> d!1202896 m!4651191))

(assert (=> d!1202896 m!4649969))

(assert (=> d!1202896 m!4649967))

(assert (=> b!4050285 m!4650645))

(assert (=> b!4050285 m!4650645))

(declare-fun m!4651193 () Bool)

(assert (=> b!4050285 m!4651193))

(assert (=> b!4049535 d!1202896))

(declare-fun b!4050287 () Bool)

(declare-fun e!2513097 () Bool)

(declare-fun e!2513096 () Bool)

(assert (=> b!4050287 (= e!2513097 e!2513096)))

(declare-fun res!1650569 () Bool)

(assert (=> b!4050287 (=> (not res!1650569) (not e!2513096))))

(assert (=> b!4050287 (= res!1650569 (not ((_ is Nil!43297) prefix!494)))))

(declare-fun b!4050290 () Bool)

(declare-fun e!2513095 () Bool)

(assert (=> b!4050290 (= e!2513095 (>= (size!32372 prefix!494) (size!32372 lt!1443165)))))

(declare-fun b!4050288 () Bool)

(declare-fun res!1650567 () Bool)

(assert (=> b!4050288 (=> (not res!1650567) (not e!2513096))))

(assert (=> b!4050288 (= res!1650567 (= (head!8561 lt!1443165) (head!8561 prefix!494)))))

(declare-fun d!1202898 () Bool)

(assert (=> d!1202898 e!2513095))

(declare-fun res!1650568 () Bool)

(assert (=> d!1202898 (=> res!1650568 e!2513095)))

(declare-fun lt!1443469 () Bool)

(assert (=> d!1202898 (= res!1650568 (not lt!1443469))))

(assert (=> d!1202898 (= lt!1443469 e!2513097)))

(declare-fun res!1650570 () Bool)

(assert (=> d!1202898 (=> res!1650570 e!2513097)))

(assert (=> d!1202898 (= res!1650570 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202898 (= (isPrefix!4025 lt!1443165 prefix!494) lt!1443469)))

(declare-fun b!4050289 () Bool)

(assert (=> b!4050289 (= e!2513096 (isPrefix!4025 (tail!6293 lt!1443165) (tail!6293 prefix!494)))))

(assert (= (and d!1202898 (not res!1650570)) b!4050287))

(assert (= (and b!4050287 res!1650569) b!4050288))

(assert (= (and b!4050288 res!1650567) b!4050289))

(assert (= (and d!1202898 (not res!1650568)) b!4050290))

(assert (=> b!4050290 m!4649969))

(assert (=> b!4050290 m!4649967))

(assert (=> b!4050288 m!4650223))

(assert (=> b!4050288 m!4650643))

(assert (=> b!4050289 m!4650227))

(assert (=> b!4050289 m!4650645))

(assert (=> b!4050289 m!4650227))

(assert (=> b!4050289 m!4650645))

(declare-fun m!4651195 () Bool)

(assert (=> b!4050289 m!4651195))

(assert (=> b!4049535 d!1202898))

(declare-fun d!1202900 () Bool)

(assert (=> d!1202900 (isPrefix!4025 lt!1443165 prefix!494)))

(declare-fun lt!1443472 () Unit!62573)

(declare-fun choose!24572 (List!43421 List!43421 List!43421) Unit!62573)

(assert (=> d!1202900 (= lt!1443472 (choose!24572 prefix!494 lt!1443165 lt!1443177))))

(assert (=> d!1202900 (isPrefix!4025 prefix!494 lt!1443177)))

(assert (=> d!1202900 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!589 prefix!494 lt!1443165 lt!1443177) lt!1443472)))

(declare-fun bs!591503 () Bool)

(assert (= bs!591503 d!1202900))

(assert (=> bs!591503 m!4650059))

(declare-fun m!4651197 () Bool)

(assert (=> bs!591503 m!4651197))

(assert (=> bs!591503 m!4650005))

(assert (=> b!4049535 d!1202900))

(declare-fun d!1202902 () Bool)

(assert (=> d!1202902 (= (_2!24319 (v!39759 lt!1443176)) lt!1443197)))

(declare-fun lt!1443473 () Unit!62573)

(assert (=> d!1202902 (= lt!1443473 (choose!24557 lt!1443187 (_2!24319 (v!39759 lt!1443176)) lt!1443187 lt!1443197 lt!1443175))))

(assert (=> d!1202902 (isPrefix!4025 lt!1443187 lt!1443175)))

(assert (=> d!1202902 (= (lemmaSamePrefixThenSameSuffix!2186 lt!1443187 (_2!24319 (v!39759 lt!1443176)) lt!1443187 lt!1443197 lt!1443175) lt!1443473)))

(declare-fun bs!591504 () Bool)

(assert (= bs!591504 d!1202902))

(declare-fun m!4651199 () Bool)

(assert (=> bs!591504 m!4651199))

(assert (=> bs!591504 m!4649983))

(assert (=> b!4049536 d!1202902))

(declare-fun b!4050291 () Bool)

(declare-fun e!2513100 () Bool)

(declare-fun e!2513099 () Bool)

(assert (=> b!4050291 (= e!2513100 e!2513099)))

(declare-fun res!1650573 () Bool)

(assert (=> b!4050291 (=> (not res!1650573) (not e!2513099))))

(assert (=> b!4050291 (= res!1650573 (not ((_ is Nil!43297) lt!1443174)))))

(declare-fun b!4050294 () Bool)

(declare-fun e!2513098 () Bool)

(assert (=> b!4050294 (= e!2513098 (>= (size!32372 lt!1443174) (size!32372 lt!1443187)))))

(declare-fun b!4050292 () Bool)

(declare-fun res!1650571 () Bool)

(assert (=> b!4050292 (=> (not res!1650571) (not e!2513099))))

(assert (=> b!4050292 (= res!1650571 (= (head!8561 lt!1443187) (head!8561 lt!1443174)))))

(declare-fun d!1202904 () Bool)

(assert (=> d!1202904 e!2513098))

(declare-fun res!1650572 () Bool)

(assert (=> d!1202904 (=> res!1650572 e!2513098)))

(declare-fun lt!1443474 () Bool)

(assert (=> d!1202904 (= res!1650572 (not lt!1443474))))

(assert (=> d!1202904 (= lt!1443474 e!2513100)))

(declare-fun res!1650574 () Bool)

(assert (=> d!1202904 (=> res!1650574 e!2513100)))

(assert (=> d!1202904 (= res!1650574 ((_ is Nil!43297) lt!1443187))))

(assert (=> d!1202904 (= (isPrefix!4025 lt!1443187 lt!1443174) lt!1443474)))

(declare-fun b!4050293 () Bool)

(assert (=> b!4050293 (= e!2513099 (isPrefix!4025 (tail!6293 lt!1443187) (tail!6293 lt!1443174)))))

(assert (= (and d!1202904 (not res!1650574)) b!4050291))

(assert (= (and b!4050291 res!1650573) b!4050292))

(assert (= (and b!4050292 res!1650571) b!4050293))

(assert (= (and d!1202904 (not res!1650572)) b!4050294))

(declare-fun m!4651201 () Bool)

(assert (=> b!4050294 m!4651201))

(assert (=> b!4050294 m!4649889))

(assert (=> b!4050292 m!4650349))

(declare-fun m!4651203 () Bool)

(assert (=> b!4050292 m!4651203))

(assert (=> b!4050293 m!4650353))

(declare-fun m!4651205 () Bool)

(assert (=> b!4050293 m!4651205))

(assert (=> b!4050293 m!4650353))

(assert (=> b!4050293 m!4651205))

(declare-fun m!4651207 () Bool)

(assert (=> b!4050293 m!4651207))

(assert (=> b!4049536 d!1202904))

(declare-fun d!1202906 () Bool)

(assert (=> d!1202906 (isPrefix!4025 lt!1443187 (++!11340 lt!1443187 lt!1443197))))

(declare-fun lt!1443475 () Unit!62573)

(assert (=> d!1202906 (= lt!1443475 (choose!24558 lt!1443187 lt!1443197))))

(assert (=> d!1202906 (= (lemmaConcatTwoListThenFirstIsPrefix!2860 lt!1443187 lt!1443197) lt!1443475)))

(declare-fun bs!591505 () Bool)

(assert (= bs!591505 d!1202906))

(assert (=> bs!591505 m!4649975))

(assert (=> bs!591505 m!4649975))

(declare-fun m!4651209 () Bool)

(assert (=> bs!591505 m!4651209))

(declare-fun m!4651211 () Bool)

(assert (=> bs!591505 m!4651211))

(assert (=> b!4049536 d!1202906))

(declare-fun b!4050296 () Bool)

(declare-fun e!2513102 () List!43421)

(assert (=> b!4050296 (= e!2513102 (Cons!43297 (h!48717 lt!1443165) (++!11340 (t!335824 lt!1443165) suffixResult!105)))))

(declare-fun d!1202908 () Bool)

(declare-fun e!2513101 () Bool)

(assert (=> d!1202908 e!2513101))

(declare-fun res!1650576 () Bool)

(assert (=> d!1202908 (=> (not res!1650576) (not e!2513101))))

(declare-fun lt!1443476 () List!43421)

(assert (=> d!1202908 (= res!1650576 (= (content!6594 lt!1443476) ((_ map or) (content!6594 lt!1443165) (content!6594 suffixResult!105))))))

(assert (=> d!1202908 (= lt!1443476 e!2513102)))

(declare-fun c!699683 () Bool)

(assert (=> d!1202908 (= c!699683 ((_ is Nil!43297) lt!1443165))))

(assert (=> d!1202908 (= (++!11340 lt!1443165 suffixResult!105) lt!1443476)))

(declare-fun b!4050295 () Bool)

(assert (=> b!4050295 (= e!2513102 suffixResult!105)))

(declare-fun b!4050297 () Bool)

(declare-fun res!1650575 () Bool)

(assert (=> b!4050297 (=> (not res!1650575) (not e!2513101))))

(assert (=> b!4050297 (= res!1650575 (= (size!32372 lt!1443476) (+ (size!32372 lt!1443165) (size!32372 suffixResult!105))))))

(declare-fun b!4050298 () Bool)

(assert (=> b!4050298 (= e!2513101 (or (not (= suffixResult!105 Nil!43297)) (= lt!1443476 lt!1443165)))))

(assert (= (and d!1202908 c!699683) b!4050295))

(assert (= (and d!1202908 (not c!699683)) b!4050296))

(assert (= (and d!1202908 res!1650576) b!4050297))

(assert (= (and b!4050297 res!1650575) b!4050298))

(declare-fun m!4651213 () Bool)

(assert (=> b!4050296 m!4651213))

(declare-fun m!4651215 () Bool)

(assert (=> d!1202908 m!4651215))

(assert (=> d!1202908 m!4650653))

(declare-fun m!4651217 () Bool)

(assert (=> d!1202908 m!4651217))

(declare-fun m!4651219 () Bool)

(assert (=> b!4050297 m!4651219))

(assert (=> b!4050297 m!4649967))

(declare-fun m!4651221 () Bool)

(assert (=> b!4050297 m!4651221))

(assert (=> b!4049557 d!1202908))

(declare-fun d!1202910 () Bool)

(declare-fun e!2513103 () Bool)

(assert (=> d!1202910 e!2513103))

(declare-fun res!1650577 () Bool)

(assert (=> d!1202910 (=> (not res!1650577) (not e!2513103))))

(assert (=> d!1202910 (= res!1650577 (semiInverseModEq!2966 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (toValue!9490 (transformation!6938 (rule!10018 token!484)))))))

(declare-fun Unit!62584 () Unit!62573)

(assert (=> d!1202910 (= (lemmaInv!1147 (transformation!6938 (rule!10018 token!484))) Unit!62584)))

(declare-fun b!4050299 () Bool)

(assert (=> b!4050299 (= e!2513103 (equivClasses!2865 (toChars!9349 (transformation!6938 (rule!10018 token!484))) (toValue!9490 (transformation!6938 (rule!10018 token!484)))))))

(assert (= (and d!1202910 res!1650577) b!4050299))

(assert (=> d!1202910 m!4651029))

(assert (=> b!4050299 m!4651031))

(assert (=> b!4049557 d!1202910))

(declare-fun d!1202912 () Bool)

(declare-fun res!1650578 () Bool)

(declare-fun e!2513104 () Bool)

(assert (=> d!1202912 (=> (not res!1650578) (not e!2513104))))

(assert (=> d!1202912 (= res!1650578 (validRegex!5358 (regex!6938 (rule!10018 token!484))))))

(assert (=> d!1202912 (= (ruleValid!2868 thiss!21717 (rule!10018 token!484)) e!2513104)))

(declare-fun b!4050300 () Bool)

(declare-fun res!1650579 () Bool)

(assert (=> b!4050300 (=> (not res!1650579) (not e!2513104))))

(assert (=> b!4050300 (= res!1650579 (not (nullable!4158 (regex!6938 (rule!10018 token!484)))))))

(declare-fun b!4050301 () Bool)

(assert (=> b!4050301 (= e!2513104 (not (= (tag!7798 (rule!10018 token!484)) (String!49558 ""))))))

(assert (= (and d!1202912 res!1650578) b!4050300))

(assert (= (and b!4050300 res!1650579) b!4050301))

(assert (=> d!1202912 m!4650859))

(assert (=> b!4050300 m!4650855))

(assert (=> b!4049557 d!1202912))

(declare-fun d!1202914 () Bool)

(assert (=> d!1202914 (ruleValid!2868 thiss!21717 (rule!10018 token!484))))

(declare-fun lt!1443477 () Unit!62573)

(assert (=> d!1202914 (= lt!1443477 (choose!24561 thiss!21717 (rule!10018 token!484) rules!2999))))

(assert (=> d!1202914 (contains!8610 rules!2999 (rule!10018 token!484))))

(assert (=> d!1202914 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1938 thiss!21717 (rule!10018 token!484) rules!2999) lt!1443477)))

(declare-fun bs!591506 () Bool)

(assert (= bs!591506 d!1202914))

(assert (=> bs!591506 m!4649937))

(declare-fun m!4651223 () Bool)

(assert (=> bs!591506 m!4651223))

(assert (=> bs!591506 m!4649953))

(assert (=> b!4049557 d!1202914))

(declare-fun b!4050312 () Bool)

(declare-fun b_free!112717 () Bool)

(declare-fun b_next!113421 () Bool)

(assert (=> b!4050312 (= b_free!112717 (not b_next!113421))))

(declare-fun t!335868 () Bool)

(declare-fun tb!243673 () Bool)

(assert (=> (and b!4050312 (= (toValue!9490 (transformation!6938 (h!48719 (t!335826 rules!2999)))) (toValue!9490 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))) t!335868) tb!243673))

(declare-fun result!295278 () Bool)

(assert (= result!295278 result!295228))

(assert (=> d!1202600 t!335868))

(declare-fun t!335870 () Bool)

(declare-fun tb!243675 () Bool)

(assert (=> (and b!4050312 (= (toValue!9490 (transformation!6938 (h!48719 (t!335826 rules!2999)))) (toValue!9490 (transformation!6938 (rule!10018 token!484)))) t!335870) tb!243675))

(declare-fun result!295280 () Bool)

(assert (= result!295280 result!295254))

(assert (=> d!1202824 t!335870))

(declare-fun tp!1228335 () Bool)

(declare-fun b_and!311463 () Bool)

(assert (=> b!4050312 (= tp!1228335 (and (=> t!335868 result!295278) (=> t!335870 result!295280) b_and!311463))))

(declare-fun b_free!112719 () Bool)

(declare-fun b_next!113423 () Bool)

(assert (=> b!4050312 (= b_free!112719 (not b_next!113423))))

(declare-fun tb!243677 () Bool)

(declare-fun t!335872 () Bool)

(assert (=> (and b!4050312 (= (toChars!9349 (transformation!6938 (h!48719 (t!335826 rules!2999)))) (toChars!9349 (transformation!6938 (rule!10018 (_1!24319 (v!39759 lt!1443176)))))) t!335872) tb!243677))

(declare-fun result!295282 () Bool)

(assert (= result!295282 result!295234))

(assert (=> d!1202616 t!335872))

(declare-fun t!335874 () Bool)

(declare-fun tb!243679 () Bool)

(assert (=> (and b!4050312 (= (toChars!9349 (transformation!6938 (h!48719 (t!335826 rules!2999)))) (toChars!9349 (transformation!6938 (rule!10018 token!484)))) t!335874) tb!243679))

(declare-fun result!295284 () Bool)

(assert (= result!295284 result!295272))

(assert (=> b!4050203 t!335874))

(assert (=> d!1202856 t!335874))

(declare-fun b_and!311465 () Bool)

(declare-fun tp!1228333 () Bool)

(assert (=> b!4050312 (= tp!1228333 (and (=> t!335872 result!295282) (=> t!335874 result!295284) b_and!311465))))

(declare-fun e!2513115 () Bool)

(assert (=> b!4050312 (= e!2513115 (and tp!1228335 tp!1228333))))

(declare-fun b!4050311 () Bool)

(declare-fun tp!1228334 () Bool)

(declare-fun e!2513114 () Bool)

(assert (=> b!4050311 (= e!2513114 (and tp!1228334 (inv!57875 (tag!7798 (h!48719 (t!335826 rules!2999)))) (inv!57878 (transformation!6938 (h!48719 (t!335826 rules!2999)))) e!2513115))))

(declare-fun b!4050310 () Bool)

(declare-fun e!2513116 () Bool)

(declare-fun tp!1228336 () Bool)

(assert (=> b!4050310 (= e!2513116 (and e!2513114 tp!1228336))))

(assert (=> b!4049531 (= tp!1228275 e!2513116)))

(assert (= b!4050311 b!4050312))

(assert (= b!4050310 b!4050311))

(assert (= (and b!4049531 ((_ is Cons!43299) (t!335826 rules!2999))) b!4050310))

(declare-fun m!4651225 () Bool)

(assert (=> b!4050311 m!4651225))

(declare-fun m!4651227 () Bool)

(assert (=> b!4050311 m!4651227))

(declare-fun b!4050326 () Bool)

(declare-fun e!2513119 () Bool)

(declare-fun tp!1228348 () Bool)

(declare-fun tp!1228349 () Bool)

(assert (=> b!4050326 (= e!2513119 (and tp!1228348 tp!1228349))))

(declare-fun b!4050325 () Bool)

(declare-fun tp!1228347 () Bool)

(assert (=> b!4050325 (= e!2513119 tp!1228347)))

(declare-fun b!4050323 () Bool)

(assert (=> b!4050323 (= e!2513119 tp_is_empty!20657)))

(assert (=> b!4049563 (= tp!1228272 e!2513119)))

(declare-fun b!4050324 () Bool)

(declare-fun tp!1228350 () Bool)

(declare-fun tp!1228351 () Bool)

(assert (=> b!4050324 (= e!2513119 (and tp!1228350 tp!1228351))))

(assert (= (and b!4049563 ((_ is ElementMatch!11843) (regex!6938 (rule!10018 token!484)))) b!4050323))

(assert (= (and b!4049563 ((_ is Concat!19012) (regex!6938 (rule!10018 token!484)))) b!4050324))

(assert (= (and b!4049563 ((_ is Star!11843) (regex!6938 (rule!10018 token!484)))) b!4050325))

(assert (= (and b!4049563 ((_ is Union!11843) (regex!6938 (rule!10018 token!484)))) b!4050326))

(declare-fun b!4050331 () Bool)

(declare-fun e!2513122 () Bool)

(declare-fun tp!1228354 () Bool)

(assert (=> b!4050331 (= e!2513122 (and tp_is_empty!20657 tp!1228354))))

(assert (=> b!4049532 (= tp!1228267 e!2513122)))

(assert (= (and b!4049532 ((_ is Cons!43297) (t!335824 suffix!1299))) b!4050331))

(declare-fun b!4050332 () Bool)

(declare-fun e!2513123 () Bool)

(declare-fun tp!1228355 () Bool)

(assert (=> b!4050332 (= e!2513123 (and tp_is_empty!20657 tp!1228355))))

(assert (=> b!4049528 (= tp!1228276 e!2513123)))

(assert (= (and b!4049528 ((_ is Cons!43297) (t!335824 suffixResult!105))) b!4050332))

(declare-fun b!4050333 () Bool)

(declare-fun e!2513124 () Bool)

(declare-fun tp!1228356 () Bool)

(assert (=> b!4050333 (= e!2513124 (and tp_is_empty!20657 tp!1228356))))

(assert (=> b!4049533 (= tp!1228266 e!2513124)))

(assert (= (and b!4049533 ((_ is Cons!43297) (t!335824 prefix!494))) b!4050333))

(declare-fun b!4050334 () Bool)

(declare-fun e!2513125 () Bool)

(declare-fun tp!1228357 () Bool)

(assert (=> b!4050334 (= e!2513125 (and tp_is_empty!20657 tp!1228357))))

(assert (=> b!4049540 (= tp!1228270 e!2513125)))

(assert (= (and b!4049540 ((_ is Cons!43297) (originalCharacters!7538 token!484))) b!4050334))

(declare-fun b!4050335 () Bool)

(declare-fun e!2513126 () Bool)

(declare-fun tp!1228358 () Bool)

(assert (=> b!4050335 (= e!2513126 (and tp_is_empty!20657 tp!1228358))))

(assert (=> b!4049529 (= tp!1228265 e!2513126)))

(assert (= (and b!4049529 ((_ is Cons!43297) (t!335824 newSuffix!27))) b!4050335))

(declare-fun b!4050336 () Bool)

(declare-fun e!2513127 () Bool)

(declare-fun tp!1228359 () Bool)

(assert (=> b!4050336 (= e!2513127 (and tp_is_empty!20657 tp!1228359))))

(assert (=> b!4049562 (= tp!1228268 e!2513127)))

(assert (= (and b!4049562 ((_ is Cons!43297) (t!335824 newSuffixResult!27))) b!4050336))

(declare-fun b!4050340 () Bool)

(declare-fun e!2513128 () Bool)

(declare-fun tp!1228361 () Bool)

(declare-fun tp!1228362 () Bool)

(assert (=> b!4050340 (= e!2513128 (and tp!1228361 tp!1228362))))

(declare-fun b!4050339 () Bool)

(declare-fun tp!1228360 () Bool)

(assert (=> b!4050339 (= e!2513128 tp!1228360)))

(declare-fun b!4050337 () Bool)

(assert (=> b!4050337 (= e!2513128 tp_is_empty!20657)))

(assert (=> b!4049541 (= tp!1228274 e!2513128)))

(declare-fun b!4050338 () Bool)

(declare-fun tp!1228363 () Bool)

(declare-fun tp!1228364 () Bool)

(assert (=> b!4050338 (= e!2513128 (and tp!1228363 tp!1228364))))

(assert (= (and b!4049541 ((_ is ElementMatch!11843) (regex!6938 (h!48719 rules!2999)))) b!4050337))

(assert (= (and b!4049541 ((_ is Concat!19012) (regex!6938 (h!48719 rules!2999)))) b!4050338))

(assert (= (and b!4049541 ((_ is Star!11843) (regex!6938 (h!48719 rules!2999)))) b!4050339))

(assert (= (and b!4049541 ((_ is Union!11843) (regex!6938 (h!48719 rules!2999)))) b!4050340))

(declare-fun b_lambda!118361 () Bool)

(assert (= b_lambda!118359 (or (and b!4049527 b_free!112707) (and b!4049543 b_free!112711 (= (toChars!9349 (transformation!6938 (h!48719 rules!2999))) (toChars!9349 (transformation!6938 (rule!10018 token!484))))) (and b!4050312 b_free!112719 (= (toChars!9349 (transformation!6938 (h!48719 (t!335826 rules!2999)))) (toChars!9349 (transformation!6938 (rule!10018 token!484))))) b_lambda!118361)))

(declare-fun b_lambda!118363 () Bool)

(assert (= b_lambda!118349 (or (and b!4049527 b_free!112705) (and b!4049543 b_free!112709 (= (toValue!9490 (transformation!6938 (h!48719 rules!2999))) (toValue!9490 (transformation!6938 (rule!10018 token!484))))) (and b!4050312 b_free!112717 (= (toValue!9490 (transformation!6938 (h!48719 (t!335826 rules!2999)))) (toValue!9490 (transformation!6938 (rule!10018 token!484))))) b_lambda!118363)))

(declare-fun b_lambda!118365 () Bool)

(assert (= b_lambda!118357 (or (and b!4049527 b_free!112707) (and b!4049543 b_free!112711 (= (toChars!9349 (transformation!6938 (h!48719 rules!2999))) (toChars!9349 (transformation!6938 (rule!10018 token!484))))) (and b!4050312 b_free!112719 (= (toChars!9349 (transformation!6938 (h!48719 (t!335826 rules!2999)))) (toChars!9349 (transformation!6938 (rule!10018 token!484))))) b_lambda!118365)))

(check-sat (not b!4050325) (not b!4049826) (not b!4050249) (not b!4050292) (not b!4050088) (not b!4049643) (not b!4050272) (not b!4050270) (not b!4050108) (not d!1202548) (not b!4049948) (not d!1202730) (not b!4049649) b_and!311461 b_and!311465 (not b!4050196) (not b!4050203) (not b_next!113411) (not d!1202594) (not b!4050276) (not b!4049945) (not b!4050280) (not d!1202712) (not b!4050241) (not b!4049718) (not b!4050257) (not b!4049901) (not b!4050089) (not d!1202880) (not b!4050293) (not b!4050065) (not b!4049985) (not d!1202612) (not d!1202568) (not b!4049825) (not b!4050189) (not b!4050235) (not b!4050103) (not d!1202716) (not b!4050075) (not b!4050192) (not d!1202734) (not d!1202708) (not d!1202798) (not d!1202616) (not d!1202914) (not b!4049864) (not b!4049648) (not b!4050268) (not b!4050332) (not d!1202714) (not b!4049908) (not d!1202738) (not d!1202742) (not b!4049824) (not b!4050264) (not b!4050288) (not b!4050097) (not b!4049858) (not d!1202868) (not b!4050204) (not b!4049969) (not b!4050193) (not b!4049950) (not d!1202828) (not b!4050125) (not b!4050205) (not b!4050251) (not d!1202856) (not d!1202878) (not d!1202894) (not b!4050311) (not b!4050127) (not d!1202876) (not b!4050265) (not d!1202806) (not b!4050248) (not b!4050104) (not b!4049642) (not b!4049968) (not d!1202728) (not b!4050076) (not b!4050211) (not b!4050274) (not b!4050230) (not d!1202754) (not d!1202694) (not b!4050290) (not b!4050068) (not b_lambda!118339) (not b!4050225) (not b!4049650) (not b!4049962) (not d!1202692) (not b_lambda!118365) (not d!1202908) (not b_lambda!118363) (not b!4049770) (not b!4050263) (not b!4050228) (not d!1202842) (not d!1202722) (not d!1202760) (not b!4049949) (not d!1202812) (not b!4049859) (not bm!287841) (not b!4050240) (not b!4050064) (not b!4049646) (not b!4050299) (not b!4050231) (not b!4049914) (not b_lambda!118361) (not b!4050331) (not tb!243641) (not b!4050238) (not b!4049768) (not b!4050101) (not b!4050105) b_and!311447 (not b!4050237) (not d!1202838) (not b!4049918) (not b!4049912) (not b!4050207) (not b!4049977) (not b!4050338) (not d!1202854) (not d!1202900) (not b!4050271) (not b!4050339) (not b!4049647) (not b!4049913) (not b!4050326) (not b!4049827) (not b!4050209) (not b!4050232) (not b!4050102) (not d!1202642) (not b!4050254) (not d!1202820) (not d!1202710) (not d!1202750) (not b!4050300) (not b!4050310) (not b!4050334) (not b!4050333) (not b!4049645) (not b!4050212) (not b_next!113415) (not bm!287830) (not d!1202912) tp_is_empty!20657 (not b!4050335) (not tb!243657) (not d!1202822) (not b!4049976) (not d!1202630) (not b!4050289) (not b!4050186) (not b!4049719) (not b!4050188) (not d!1202910) (not d!1202844) (not b_next!113409) (not b!4050126) (not b!4050324) (not b!4049717) (not b!4050233) (not d!1202896) (not b!4049862) (not b!4049906) (not b!4050244) (not b!4050166) (not b!4049965) (not b!4050253) (not b!4049921) (not b!4049916) (not tb!243637) (not d!1202866) (not b!4050197) (not d!1202736) b_and!311449 (not b!4050234) (not b!4050090) (not b!4049769) (not b!4050340) (not b!4050297) b_and!311459 (not b!4050294) (not b_lambda!118337) (not b!4050283) (not d!1202740) (not d!1202808) (not b!4049902) (not d!1202848) (not d!1202810) (not b_next!113423) (not d!1202906) (not b!4050109) (not b!4050096) (not d!1202870) b_and!311463 (not b!4049917) (not d!1202662) (not b!4049920) (not b!4050099) (not d!1202804) (not b!4050296) (not b_next!113421) (not tb!243669) (not b!4049909) (not b!4050245) (not b!4050242) (not b!4049898) (not d!1202888) (not b!4050074) (not b!4050282) (not b!4049910) (not bm!287837) (not b!4049884) (not b!4050275) (not d!1202874) (not b!4049829) (not d!1202846) (not d!1202644) (not b!4049758) (not b!4050213) (not b!4050175) (not b!4050106) (not d!1202720) (not b!4050336) (not b!4049964) (not b!4049832) (not b!4049831) (not b!4049863) (not b_next!113413) (not b!4050227) (not b!4050278) (not d!1202882) (not bm!287840) (not d!1202840) (not d!1202830) (not d!1202700) (not d!1202902) (not b!4050285) (not b!4049828) (not b!4050239) (not b!4049984))
(check-sat (not b_next!113411) b_and!311447 (not b_next!113415) (not b_next!113409) (not b_next!113421) (not b_next!113413) b_and!311461 b_and!311465 b_and!311449 b_and!311459 (not b_next!113423) b_and!311463)
