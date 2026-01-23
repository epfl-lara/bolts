; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375520 () Bool)

(assert start!375520)

(declare-fun b!3990347 () Bool)

(declare-fun b_free!110841 () Bool)

(declare-fun b_next!111545 () Bool)

(assert (=> b!3990347 (= b_free!110841 (not b_next!111545))))

(declare-fun tp!1215544 () Bool)

(declare-fun b_and!306591 () Bool)

(assert (=> b!3990347 (= tp!1215544 b_and!306591)))

(declare-fun b_free!110843 () Bool)

(declare-fun b_next!111547 () Bool)

(assert (=> b!3990347 (= b_free!110843 (not b_next!111547))))

(declare-fun tp!1215553 () Bool)

(declare-fun b_and!306593 () Bool)

(assert (=> b!3990347 (= tp!1215553 b_and!306593)))

(declare-fun b!3990344 () Bool)

(declare-fun b_free!110845 () Bool)

(declare-fun b_next!111549 () Bool)

(assert (=> b!3990344 (= b_free!110845 (not b_next!111549))))

(declare-fun tp!1215549 () Bool)

(declare-fun b_and!306595 () Bool)

(assert (=> b!3990344 (= tp!1215549 b_and!306595)))

(declare-fun b_free!110847 () Bool)

(declare-fun b_next!111551 () Bool)

(assert (=> b!3990344 (= b_free!110847 (not b_next!111551))))

(declare-fun tp!1215555 () Bool)

(declare-fun b_and!306597 () Bool)

(assert (=> b!3990344 (= tp!1215555 b_and!306597)))

(declare-fun b!3990325 () Bool)

(declare-fun e!2473622 () Bool)

(declare-fun tp_is_empty!20293 () Bool)

(declare-fun tp!1215546 () Bool)

(assert (=> b!3990325 (= e!2473622 (and tp_is_empty!20293 tp!1215546))))

(declare-fun b!3990326 () Bool)

(declare-datatypes ((Unit!61448 0))(
  ( (Unit!61449) )
))
(declare-fun e!2473638 () Unit!61448)

(declare-fun Unit!61450 () Unit!61448)

(assert (=> b!3990326 (= e!2473638 Unit!61450)))

(declare-datatypes ((C!23508 0))(
  ( (C!23509 (val!13848 Int)) )
))
(declare-datatypes ((List!42806 0))(
  ( (Nil!42682) (Cons!42682 (h!48102 C!23508) (t!331749 List!42806)) )
))
(declare-datatypes ((IArray!25939 0))(
  ( (IArray!25940 (innerList!13027 List!42806)) )
))
(declare-datatypes ((Conc!12967 0))(
  ( (Node!12967 (left!32251 Conc!12967) (right!32581 Conc!12967) (csize!26164 Int) (cheight!13178 Int)) (Leaf!20052 (xs!16273 IArray!25939) (csize!26165 Int)) (Empty!12967) )
))
(declare-datatypes ((BalanceConc!25528 0))(
  ( (BalanceConc!25529 (c!690624 Conc!12967)) )
))
(declare-datatypes ((List!42807 0))(
  ( (Nil!42683) (Cons!42683 (h!48103 (_ BitVec 16)) (t!331750 List!42807)) )
))
(declare-datatypes ((TokenValue!6986 0))(
  ( (FloatLiteralValue!13972 (text!49347 List!42807)) (TokenValueExt!6985 (__x!26189 Int)) (Broken!34930 (value!213154 List!42807)) (Object!7109) (End!6986) (Def!6986) (Underscore!6986) (Match!6986) (Else!6986) (Error!6986) (Case!6986) (If!6986) (Extends!6986) (Abstract!6986) (Class!6986) (Val!6986) (DelimiterValue!13972 (del!7046 List!42807)) (KeywordValue!6992 (value!213155 List!42807)) (CommentValue!13972 (value!213156 List!42807)) (WhitespaceValue!13972 (value!213157 List!42807)) (IndentationValue!6986 (value!213158 List!42807)) (String!48647) (Int32!6986) (Broken!34931 (value!213159 List!42807)) (Boolean!6987) (Unit!61451) (OperatorValue!6989 (op!7046 List!42807)) (IdentifierValue!13972 (value!213160 List!42807)) (IdentifierValue!13973 (value!213161 List!42807)) (WhitespaceValue!13973 (value!213162 List!42807)) (True!13972) (False!13972) (Broken!34932 (value!213163 List!42807)) (Broken!34933 (value!213164 List!42807)) (True!13973) (RightBrace!6986) (RightBracket!6986) (Colon!6986) (Null!6986) (Comma!6986) (LeftBracket!6986) (False!13973) (LeftBrace!6986) (ImaginaryLiteralValue!6986 (text!49348 List!42807)) (StringLiteralValue!20958 (value!213165 List!42807)) (EOFValue!6986 (value!213166 List!42807)) (IdentValue!6986 (value!213167 List!42807)) (DelimiterValue!13973 (value!213168 List!42807)) (DedentValue!6986 (value!213169 List!42807)) (NewLineValue!6986 (value!213170 List!42807)) (IntegerValue!20958 (value!213171 (_ BitVec 32)) (text!49349 List!42807)) (IntegerValue!20959 (value!213172 Int) (text!49350 List!42807)) (Times!6986) (Or!6986) (Equal!6986) (Minus!6986) (Broken!34934 (value!213173 List!42807)) (And!6986) (Div!6986) (LessEqual!6986) (Mod!6986) (Concat!18647) (Not!6986) (Plus!6986) (SpaceValue!6986 (value!213174 List!42807)) (IntegerValue!20960 (value!213175 Int) (text!49351 List!42807)) (StringLiteralValue!20959 (text!49352 List!42807)) (FloatLiteralValue!13973 (text!49353 List!42807)) (BytesLiteralValue!6986 (value!213176 List!42807)) (CommentValue!13973 (value!213177 List!42807)) (StringLiteralValue!20960 (value!213178 List!42807)) (ErrorTokenValue!6986 (msg!7047 List!42807)) )
))
(declare-datatypes ((Regex!11661 0))(
  ( (ElementMatch!11661 (c!690625 C!23508)) (Concat!18648 (regOne!23834 Regex!11661) (regTwo!23834 Regex!11661)) (EmptyExpr!11661) (Star!11661 (reg!11990 Regex!11661)) (EmptyLang!11661) (Union!11661 (regOne!23835 Regex!11661) (regTwo!23835 Regex!11661)) )
))
(declare-datatypes ((String!48648 0))(
  ( (String!48649 (value!213179 String)) )
))
(declare-datatypes ((TokenValueInjection!13400 0))(
  ( (TokenValueInjection!13401 (toValue!9244 Int) (toChars!9103 Int)) )
))
(declare-datatypes ((Rule!13312 0))(
  ( (Rule!13313 (regex!6756 Regex!11661) (tag!7616 String!48648) (isSeparator!6756 Bool) (transformation!6756 TokenValueInjection!13400)) )
))
(declare-datatypes ((Token!12650 0))(
  ( (Token!12651 (value!213180 TokenValue!6986) (rule!9774 Rule!13312) (size!31922 Int) (originalCharacters!7356 List!42806)) )
))
(declare-datatypes ((tuple2!41884 0))(
  ( (tuple2!41885 (_1!24076 Token!12650) (_2!24076 List!42806)) )
))
(declare-datatypes ((Option!9170 0))(
  ( (None!9169) (Some!9169 (v!39525 tuple2!41884)) )
))
(declare-fun lt!1406624 () Option!9170)

(declare-fun token!484 () Token!12650)

(declare-fun lt!1406612 () List!42806)

(declare-datatypes ((LexerInterface!6345 0))(
  ( (LexerInterfaceExt!6342 (__x!26190 Int)) (Lexer!6343) )
))
(declare-fun thiss!21717 () LexerInterface!6345)

(declare-datatypes ((List!42808 0))(
  ( (Nil!42684) (Cons!42684 (h!48104 Rule!13312) (t!331751 List!42808)) )
))
(declare-fun rules!2999 () List!42808)

(declare-fun lt!1406628 () List!42806)

(declare-fun lt!1406618 () Unit!61448)

(declare-fun lt!1406584 () List!42806)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!410 (LexerInterface!6345 List!42808 Rule!13312 List!42806 List!42806 List!42806 Rule!13312) Unit!61448)

(assert (=> b!3990326 (= lt!1406618 (lemmaMaxPrefixOutputsMaxPrefix!410 thiss!21717 rules!2999 (rule!9774 token!484) lt!1406612 lt!1406628 lt!1406584 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))

(declare-fun res!1619321 () Bool)

(declare-fun matchR!5638 (Regex!11661 List!42806) Bool)

(assert (=> b!3990326 (= res!1619321 (not (matchR!5638 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406584)))))

(declare-fun e!2473624 () Bool)

(assert (=> b!3990326 (=> (not res!1619321) (not e!2473624))))

(assert (=> b!3990326 e!2473624))

(declare-fun b!3990327 () Bool)

(declare-fun e!2473627 () Bool)

(declare-fun e!2473619 () Bool)

(assert (=> b!3990327 (= e!2473627 e!2473619)))

(declare-fun res!1619299 () Bool)

(assert (=> b!3990327 (=> res!1619299 e!2473619)))

(declare-fun lt!1406581 () Option!9170)

(declare-fun lt!1406639 () Option!9170)

(assert (=> b!3990327 (= res!1619299 (not (= lt!1406581 lt!1406639)))))

(declare-fun lt!1406604 () Token!12650)

(declare-fun suffixResult!105 () List!42806)

(assert (=> b!3990327 (= lt!1406581 (Some!9169 (tuple2!41885 lt!1406604 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2677 (LexerInterface!6345 Rule!13312 List!42806) Option!9170)

(assert (=> b!3990327 (= lt!1406581 (maxPrefixOneRule!2677 thiss!21717 (rule!9774 token!484) lt!1406628))))

(declare-fun lt!1406633 () Int)

(declare-fun lt!1406631 () TokenValue!6986)

(assert (=> b!3990327 (= lt!1406604 (Token!12651 lt!1406631 (rule!9774 token!484) lt!1406633 lt!1406612))))

(declare-fun apply!9967 (TokenValueInjection!13400 BalanceConc!25528) TokenValue!6986)

(declare-fun seqFromList!4995 (List!42806) BalanceConc!25528)

(assert (=> b!3990327 (= lt!1406631 (apply!9967 (transformation!6756 (rule!9774 token!484)) (seqFromList!4995 lt!1406612)))))

(declare-fun lt!1406597 () Unit!61448)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1499 (LexerInterface!6345 List!42808 List!42806 List!42806 List!42806 Rule!13312) Unit!61448)

(assert (=> b!3990327 (= lt!1406597 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1499 thiss!21717 rules!2999 lt!1406612 lt!1406628 suffixResult!105 (rule!9774 token!484)))))

(declare-fun lt!1406626 () List!42806)

(assert (=> b!3990327 (= lt!1406626 suffixResult!105)))

(declare-fun lt!1406602 () Unit!61448)

(declare-fun lemmaSamePrefixThenSameSuffix!2030 (List!42806 List!42806 List!42806 List!42806 List!42806) Unit!61448)

(assert (=> b!3990327 (= lt!1406602 (lemmaSamePrefixThenSameSuffix!2030 lt!1406612 lt!1406626 lt!1406612 suffixResult!105 lt!1406628))))

(declare-fun lt!1406605 () List!42806)

(declare-fun isPrefix!3843 (List!42806 List!42806) Bool)

(assert (=> b!3990327 (isPrefix!3843 lt!1406612 lt!1406605)))

(declare-fun lt!1406603 () Unit!61448)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2686 (List!42806 List!42806) Unit!61448)

(assert (=> b!3990327 (= lt!1406603 (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406612 lt!1406626))))

(declare-fun tp!1215547 () Bool)

(declare-fun b!3990328 () Bool)

(declare-fun e!2473640 () Bool)

(declare-fun e!2473644 () Bool)

(declare-fun inv!57006 (String!48648) Bool)

(declare-fun inv!57009 (TokenValueInjection!13400) Bool)

(assert (=> b!3990328 (= e!2473644 (and tp!1215547 (inv!57006 (tag!7616 (rule!9774 token!484))) (inv!57009 (transformation!6756 (rule!9774 token!484))) e!2473640))))

(declare-fun b!3990329 () Bool)

(declare-fun tp!1215551 () Bool)

(declare-fun e!2473637 () Bool)

(declare-fun e!2473639 () Bool)

(assert (=> b!3990329 (= e!2473639 (and tp!1215551 (inv!57006 (tag!7616 (h!48104 rules!2999))) (inv!57009 (transformation!6756 (h!48104 rules!2999))) e!2473637))))

(declare-fun b!3990330 () Bool)

(declare-fun e!2473636 () Bool)

(declare-fun e!2473620 () Bool)

(assert (=> b!3990330 (= e!2473636 e!2473620)))

(declare-fun res!1619313 () Bool)

(assert (=> b!3990330 (=> res!1619313 e!2473620)))

(assert (=> b!3990330 (= res!1619313 (not (isPrefix!3843 lt!1406612 lt!1406628)))))

(declare-fun prefix!494 () List!42806)

(assert (=> b!3990330 (isPrefix!3843 prefix!494 lt!1406628)))

(declare-fun lt!1406590 () Unit!61448)

(declare-fun suffix!1299 () List!42806)

(assert (=> b!3990330 (= lt!1406590 (lemmaConcatTwoListThenFirstIsPrefix!2686 prefix!494 suffix!1299))))

(declare-fun lt!1406608 () List!42806)

(assert (=> b!3990330 (isPrefix!3843 lt!1406612 lt!1406608)))

(declare-fun lt!1406586 () Unit!61448)

(assert (=> b!3990330 (= lt!1406586 (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406612 suffixResult!105))))

(declare-fun b!3990331 () Bool)

(assert (=> b!3990331 (= e!2473624 false)))

(declare-fun b!3990333 () Bool)

(declare-fun e!2473634 () Bool)

(declare-fun tp!1215548 () Bool)

(assert (=> b!3990333 (= e!2473634 (and tp_is_empty!20293 tp!1215548))))

(declare-fun b!3990334 () Bool)

(declare-fun e!2473649 () Bool)

(declare-fun tp!1215545 () Bool)

(assert (=> b!3990334 (= e!2473649 (and tp_is_empty!20293 tp!1215545))))

(declare-fun b!3990335 () Bool)

(declare-fun e!2473628 () Bool)

(declare-fun e!2473615 () Bool)

(assert (=> b!3990335 (= e!2473628 e!2473615)))

(declare-fun res!1619312 () Bool)

(assert (=> b!3990335 (=> (not res!1619312) (not e!2473615))))

(declare-fun maxPrefix!3643 (LexerInterface!6345 List!42808 List!42806) Option!9170)

(assert (=> b!3990335 (= res!1619312 (= (maxPrefix!3643 thiss!21717 rules!2999 lt!1406628) lt!1406639))))

(declare-fun lt!1406634 () tuple2!41884)

(assert (=> b!3990335 (= lt!1406639 (Some!9169 lt!1406634))))

(assert (=> b!3990335 (= lt!1406634 (tuple2!41885 token!484 suffixResult!105))))

(declare-fun ++!11158 (List!42806 List!42806) List!42806)

(assert (=> b!3990335 (= lt!1406628 (++!11158 prefix!494 suffix!1299))))

(declare-fun b!3990336 () Bool)

(declare-fun res!1619315 () Bool)

(declare-fun e!2473631 () Bool)

(assert (=> b!3990336 (=> (not res!1619315) (not e!2473631))))

(assert (=> b!3990336 (= res!1619315 (= (value!213180 token!484) lt!1406631))))

(declare-fun e!2473626 () Bool)

(declare-fun b!3990337 () Bool)

(declare-fun tp!1215552 () Bool)

(declare-fun inv!21 (TokenValue!6986) Bool)

(assert (=> b!3990337 (= e!2473626 (and (inv!21 (value!213180 token!484)) e!2473644 tp!1215552))))

(declare-fun b!3990338 () Bool)

(declare-fun e!2473635 () Bool)

(declare-fun tp!1215556 () Bool)

(assert (=> b!3990338 (= e!2473635 (and tp_is_empty!20293 tp!1215556))))

(declare-fun b!3990339 () Bool)

(declare-fun res!1619316 () Bool)

(declare-fun e!2473643 () Bool)

(assert (=> b!3990339 (=> res!1619316 e!2473643)))

(declare-fun lt!1406583 () List!42806)

(assert (=> b!3990339 (= res!1619316 (not (isPrefix!3843 lt!1406584 lt!1406583)))))

(declare-fun b!3990340 () Bool)

(declare-fun e!2473642 () Bool)

(assert (=> b!3990340 (= e!2473620 e!2473642)))

(declare-fun res!1619309 () Bool)

(assert (=> b!3990340 (=> res!1619309 e!2473642)))

(declare-fun lt!1406629 () List!42806)

(assert (=> b!3990340 (= res!1619309 (not (= lt!1406629 prefix!494)))))

(declare-fun lt!1406610 () List!42806)

(assert (=> b!3990340 (= lt!1406629 (++!11158 lt!1406612 lt!1406610))))

(declare-fun getSuffix!2274 (List!42806 List!42806) List!42806)

(assert (=> b!3990340 (= lt!1406610 (getSuffix!2274 prefix!494 lt!1406612))))

(assert (=> b!3990340 (isPrefix!3843 lt!1406612 prefix!494)))

(declare-fun lt!1406595 () Unit!61448)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!421 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> b!3990340 (= lt!1406595 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!421 prefix!494 lt!1406612 lt!1406628))))

(declare-fun b!3990341 () Bool)

(declare-fun res!1619302 () Bool)

(declare-fun e!2473650 () Bool)

(assert (=> b!3990341 (=> (not res!1619302) (not e!2473650))))

(declare-fun newSuffix!27 () List!42806)

(assert (=> b!3990341 (= res!1619302 (isPrefix!3843 newSuffix!27 suffix!1299))))

(declare-fun b!3990342 () Bool)

(declare-fun res!1619322 () Bool)

(declare-fun e!2473625 () Bool)

(assert (=> b!3990342 (=> res!1619322 e!2473625)))

(declare-fun lt!1406598 () List!42806)

(assert (=> b!3990342 (= res!1619322 (not (= lt!1406598 lt!1406583)))))

(declare-fun b!3990343 () Bool)

(declare-fun e!2473621 () Unit!61448)

(declare-fun Unit!61452 () Unit!61448)

(assert (=> b!3990343 (= e!2473621 Unit!61452)))

(assert (=> b!3990344 (= e!2473640 (and tp!1215549 tp!1215555))))

(declare-fun b!3990345 () Bool)

(declare-fun e!2473617 () Bool)

(assert (=> b!3990345 (= e!2473617 e!2473643)))

(declare-fun res!1619306 () Bool)

(assert (=> b!3990345 (=> res!1619306 e!2473643)))

(declare-fun lt!1406615 () Int)

(assert (=> b!3990345 (= res!1619306 (not (= lt!1406633 lt!1406615)))))

(declare-fun lt!1406593 () Unit!61448)

(assert (=> b!3990345 (= lt!1406593 e!2473621)))

(declare-fun c!690622 () Bool)

(assert (=> b!3990345 (= c!690622 (< lt!1406615 lt!1406633))))

(declare-fun lt!1406637 () Unit!61448)

(assert (=> b!3990345 (= lt!1406637 e!2473638)))

(declare-fun c!690623 () Bool)

(assert (=> b!3990345 (= c!690623 (> lt!1406615 lt!1406633))))

(declare-fun lt!1406621 () List!42806)

(assert (=> b!3990345 (= (_2!24076 (v!39525 lt!1406624)) lt!1406621)))

(declare-fun lt!1406611 () Unit!61448)

(assert (=> b!3990345 (= lt!1406611 (lemmaSamePrefixThenSameSuffix!2030 lt!1406584 (_2!24076 (v!39525 lt!1406624)) lt!1406584 lt!1406621 lt!1406583))))

(declare-fun lt!1406585 () List!42806)

(assert (=> b!3990345 (isPrefix!3843 lt!1406584 lt!1406585)))

(declare-fun lt!1406596 () Unit!61448)

(assert (=> b!3990345 (= lt!1406596 (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406584 lt!1406621))))

(declare-fun b!3990346 () Bool)

(declare-fun e!2473641 () Bool)

(assert (=> b!3990346 (= e!2473643 e!2473641)))

(declare-fun res!1619298 () Bool)

(assert (=> b!3990346 (=> res!1619298 e!2473641)))

(declare-fun getIndex!526 (List!42808 Rule!13312) Int)

(assert (=> b!3990346 (= res!1619298 (>= (getIndex!526 rules!2999 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (getIndex!526 rules!2999 (rule!9774 token!484))))))

(declare-fun newSuffixResult!27 () List!42806)

(assert (=> b!3990346 (= (_2!24076 (v!39525 lt!1406624)) newSuffixResult!27)))

(declare-fun lt!1406592 () Unit!61448)

(assert (=> b!3990346 (= lt!1406592 (lemmaSamePrefixThenSameSuffix!2030 lt!1406584 (_2!24076 (v!39525 lt!1406624)) lt!1406612 newSuffixResult!27 lt!1406583))))

(assert (=> b!3990346 (= lt!1406584 lt!1406612)))

(declare-fun lt!1406606 () Unit!61448)

(declare-fun lemmaIsPrefixSameLengthThenSameList!865 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> b!3990346 (= lt!1406606 (lemmaIsPrefixSameLengthThenSameList!865 lt!1406584 lt!1406612 lt!1406583))))

(assert (=> b!3990347 (= e!2473637 (and tp!1215544 tp!1215553))))

(declare-fun b!3990348 () Bool)

(declare-fun e!2473647 () Bool)

(declare-fun e!2473629 () Bool)

(assert (=> b!3990348 (= e!2473647 e!2473629)))

(declare-fun res!1619317 () Bool)

(assert (=> b!3990348 (=> res!1619317 e!2473629)))

(get-info :version)

(assert (=> b!3990348 (= res!1619317 (not ((_ is Some!9169) lt!1406624)))))

(assert (=> b!3990348 (= lt!1406624 (maxPrefix!3643 thiss!21717 rules!2999 lt!1406583))))

(declare-fun lt!1406625 () List!42806)

(assert (=> b!3990348 (and (= suffixResult!105 lt!1406625) (= lt!1406634 (tuple2!41885 lt!1406604 lt!1406625)))))

(declare-fun lt!1406627 () Unit!61448)

(assert (=> b!3990348 (= lt!1406627 (lemmaSamePrefixThenSameSuffix!2030 lt!1406612 suffixResult!105 lt!1406612 lt!1406625 lt!1406628))))

(declare-fun lt!1406619 () List!42806)

(assert (=> b!3990348 (isPrefix!3843 lt!1406612 lt!1406619)))

(declare-fun lt!1406582 () Unit!61448)

(assert (=> b!3990348 (= lt!1406582 (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406612 lt!1406625))))

(declare-fun b!3990349 () Bool)

(declare-fun e!2473633 () Bool)

(assert (=> b!3990349 (= e!2473633 e!2473625)))

(declare-fun res!1619314 () Bool)

(assert (=> b!3990349 (=> res!1619314 e!2473625)))

(assert (=> b!3990349 (= res!1619314 (not (isPrefix!3843 lt!1406584 lt!1406628)))))

(declare-fun lt!1406580 () List!42806)

(assert (=> b!3990349 (isPrefix!3843 lt!1406584 lt!1406580)))

(declare-fun lt!1406579 () Unit!61448)

(declare-fun lt!1406600 () List!42806)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!676 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> b!3990349 (= lt!1406579 (lemmaPrefixStaysPrefixWhenAddingToSuffix!676 lt!1406584 lt!1406583 lt!1406600))))

(declare-fun b!3990350 () Bool)

(declare-fun res!1619295 () Bool)

(assert (=> b!3990350 (=> (not res!1619295) (not e!2473650))))

(declare-fun rulesInvariant!5688 (LexerInterface!6345 List!42808) Bool)

(assert (=> b!3990350 (= res!1619295 (rulesInvariant!5688 thiss!21717 rules!2999))))

(declare-fun b!3990351 () Bool)

(declare-fun res!1619296 () Bool)

(assert (=> b!3990351 (=> (not res!1619296) (not e!2473650))))

(declare-fun size!31923 (List!42806) Int)

(assert (=> b!3990351 (= res!1619296 (>= (size!31923 suffix!1299) (size!31923 newSuffix!27)))))

(declare-fun b!3990352 () Bool)

(assert (=> b!3990352 (= e!2473631 (and (= (size!31922 token!484) lt!1406633) (= (originalCharacters!7356 token!484) lt!1406612)))))

(declare-fun b!3990353 () Bool)

(declare-fun e!2473645 () Bool)

(assert (=> b!3990353 (= e!2473645 e!2473647)))

(declare-fun res!1619308 () Bool)

(assert (=> b!3990353 (=> res!1619308 e!2473647)))

(assert (=> b!3990353 (= res!1619308 (not (= lt!1406619 lt!1406628)))))

(assert (=> b!3990353 (= lt!1406619 (++!11158 lt!1406612 lt!1406625))))

(assert (=> b!3990353 (= lt!1406625 (getSuffix!2274 lt!1406628 lt!1406612))))

(assert (=> b!3990353 e!2473631))

(declare-fun res!1619311 () Bool)

(assert (=> b!3990353 (=> (not res!1619311) (not e!2473631))))

(assert (=> b!3990353 (= res!1619311 (isPrefix!3843 lt!1406628 lt!1406628))))

(declare-fun lt!1406638 () Unit!61448)

(declare-fun lemmaIsPrefixRefl!2435 (List!42806 List!42806) Unit!61448)

(assert (=> b!3990353 (= lt!1406638 (lemmaIsPrefixRefl!2435 lt!1406628 lt!1406628))))

(declare-fun b!3990354 () Bool)

(assert (=> b!3990354 (= e!2473642 e!2473627)))

(declare-fun res!1619310 () Bool)

(assert (=> b!3990354 (=> res!1619310 e!2473627)))

(declare-fun lt!1406607 () List!42806)

(assert (=> b!3990354 (= res!1619310 (or (not (= lt!1406628 lt!1406607)) (not (= lt!1406628 lt!1406605))))))

(assert (=> b!3990354 (= lt!1406607 lt!1406605)))

(assert (=> b!3990354 (= lt!1406605 (++!11158 lt!1406612 lt!1406626))))

(assert (=> b!3990354 (= lt!1406607 (++!11158 lt!1406629 suffix!1299))))

(assert (=> b!3990354 (= lt!1406626 (++!11158 lt!1406610 suffix!1299))))

(declare-fun lt!1406616 () Unit!61448)

(declare-fun lemmaConcatAssociativity!2478 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> b!3990354 (= lt!1406616 (lemmaConcatAssociativity!2478 lt!1406612 lt!1406610 suffix!1299))))

(declare-fun b!3990355 () Bool)

(declare-fun e!2473646 () Bool)

(declare-fun tp!1215550 () Bool)

(assert (=> b!3990355 (= e!2473646 (and tp_is_empty!20293 tp!1215550))))

(declare-fun b!3990356 () Bool)

(declare-fun e!2473614 () Bool)

(assert (=> b!3990356 (= e!2473614 e!2473633)))

(declare-fun res!1619294 () Bool)

(assert (=> b!3990356 (=> res!1619294 e!2473633)))

(assert (=> b!3990356 (= res!1619294 (not (= lt!1406580 lt!1406628)))))

(declare-fun lt!1406588 () List!42806)

(assert (=> b!3990356 (= lt!1406580 (++!11158 prefix!494 lt!1406588))))

(assert (=> b!3990356 (= lt!1406580 (++!11158 lt!1406583 lt!1406600))))

(declare-fun lt!1406632 () Unit!61448)

(assert (=> b!3990356 (= lt!1406632 (lemmaConcatAssociativity!2478 prefix!494 newSuffix!27 lt!1406600))))

(declare-fun b!3990357 () Bool)

(declare-fun e!2473648 () Bool)

(assert (=> b!3990357 (= e!2473650 e!2473648)))

(declare-fun res!1619320 () Bool)

(assert (=> b!3990357 (=> (not res!1619320) (not e!2473648))))

(declare-fun lt!1406623 () Int)

(assert (=> b!3990357 (= res!1619320 (>= lt!1406623 lt!1406633))))

(assert (=> b!3990357 (= lt!1406633 (size!31923 lt!1406612))))

(assert (=> b!3990357 (= lt!1406623 (size!31923 prefix!494))))

(declare-fun list!15846 (BalanceConc!25528) List!42806)

(declare-fun charsOf!4572 (Token!12650) BalanceConc!25528)

(assert (=> b!3990357 (= lt!1406612 (list!15846 (charsOf!4572 token!484)))))

(declare-fun b!3990358 () Bool)

(declare-fun e!2473630 () Bool)

(assert (=> b!3990358 (= e!2473629 e!2473630)))

(declare-fun res!1619304 () Bool)

(assert (=> b!3990358 (=> res!1619304 e!2473630)))

(declare-fun lt!1406622 () Option!9170)

(assert (=> b!3990358 (= res!1619304 (not (= lt!1406622 (Some!9169 (v!39525 lt!1406624)))))))

(assert (=> b!3990358 (isPrefix!3843 lt!1406584 (++!11158 lt!1406584 newSuffixResult!27))))

(declare-fun lt!1406594 () Unit!61448)

(assert (=> b!3990358 (= lt!1406594 (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406584 newSuffixResult!27))))

(assert (=> b!3990358 (isPrefix!3843 lt!1406584 lt!1406598)))

(assert (=> b!3990358 (= lt!1406598 (++!11158 lt!1406584 (_2!24076 (v!39525 lt!1406624))))))

(declare-fun lt!1406630 () Unit!61448)

(assert (=> b!3990358 (= lt!1406630 (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406584 (_2!24076 (v!39525 lt!1406624))))))

(declare-fun lt!1406587 () TokenValue!6986)

(assert (=> b!3990358 (= lt!1406622 (Some!9169 (tuple2!41885 (Token!12651 lt!1406587 (rule!9774 (_1!24076 (v!39525 lt!1406624))) lt!1406615 lt!1406584) (_2!24076 (v!39525 lt!1406624)))))))

(assert (=> b!3990358 (= lt!1406622 (maxPrefixOneRule!2677 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))) lt!1406583))))

(assert (=> b!3990358 (= lt!1406615 (size!31923 lt!1406584))))

(assert (=> b!3990358 (= lt!1406587 (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (seqFromList!4995 lt!1406584)))))

(declare-fun lt!1406589 () Unit!61448)

(assert (=> b!3990358 (= lt!1406589 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1499 thiss!21717 rules!2999 lt!1406584 lt!1406583 (_2!24076 (v!39525 lt!1406624)) (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))

(assert (=> b!3990358 (= lt!1406584 (list!15846 (charsOf!4572 (_1!24076 (v!39525 lt!1406624)))))))

(declare-fun lt!1406613 () Unit!61448)

(declare-fun lemmaInv!971 (TokenValueInjection!13400) Unit!61448)

(assert (=> b!3990358 (= lt!1406613 (lemmaInv!971 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))

(declare-fun ruleValid!2688 (LexerInterface!6345 Rule!13312) Bool)

(assert (=> b!3990358 (ruleValid!2688 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))

(declare-fun lt!1406591 () Unit!61448)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1762 (LexerInterface!6345 Rule!13312 List!42808) Unit!61448)

(assert (=> b!3990358 (= lt!1406591 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1762 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))) rules!2999))))

(declare-fun lt!1406614 () Unit!61448)

(declare-fun lemmaCharactersSize!1351 (Token!12650) Unit!61448)

(assert (=> b!3990358 (= lt!1406614 (lemmaCharactersSize!1351 token!484))))

(declare-fun lt!1406609 () Unit!61448)

(assert (=> b!3990358 (= lt!1406609 (lemmaCharactersSize!1351 (_1!24076 (v!39525 lt!1406624))))))

(declare-fun b!3990359 () Bool)

(assert (=> b!3990359 (= e!2473648 e!2473628)))

(declare-fun res!1619301 () Bool)

(assert (=> b!3990359 (=> (not res!1619301) (not e!2473628))))

(declare-fun lt!1406599 () List!42806)

(assert (=> b!3990359 (= res!1619301 (= lt!1406599 lt!1406583))))

(assert (=> b!3990359 (= lt!1406583 (++!11158 prefix!494 newSuffix!27))))

(assert (=> b!3990359 (= lt!1406599 (++!11158 lt!1406612 newSuffixResult!27))))

(declare-fun b!3990360 () Bool)

(assert (=> b!3990360 (= e!2473641 (>= (size!31923 lt!1406628) lt!1406633))))

(declare-fun b!3990361 () Bool)

(declare-fun Unit!61453 () Unit!61448)

(assert (=> b!3990361 (= e!2473638 Unit!61453)))

(declare-fun b!3990362 () Bool)

(declare-fun res!1619303 () Bool)

(assert (=> b!3990362 (=> (not res!1619303) (not e!2473631))))

(assert (=> b!3990362 (= res!1619303 (= (size!31922 token!484) (size!31923 (originalCharacters!7356 token!484))))))

(declare-fun b!3990332 () Bool)

(assert (=> b!3990332 (= e!2473630 e!2473614)))

(declare-fun res!1619319 () Bool)

(assert (=> b!3990332 (=> res!1619319 e!2473614)))

(assert (=> b!3990332 (= res!1619319 (not (= lt!1406588 suffix!1299)))))

(assert (=> b!3990332 (= lt!1406588 (++!11158 newSuffix!27 lt!1406600))))

(assert (=> b!3990332 (= lt!1406600 (getSuffix!2274 suffix!1299 newSuffix!27))))

(declare-fun res!1619300 () Bool)

(assert (=> start!375520 (=> (not res!1619300) (not e!2473650))))

(assert (=> start!375520 (= res!1619300 ((_ is Lexer!6343) thiss!21717))))

(assert (=> start!375520 e!2473650))

(assert (=> start!375520 e!2473622))

(declare-fun inv!57010 (Token!12650) Bool)

(assert (=> start!375520 (and (inv!57010 token!484) e!2473626)))

(assert (=> start!375520 e!2473634))

(assert (=> start!375520 e!2473635))

(assert (=> start!375520 e!2473646))

(assert (=> start!375520 true))

(declare-fun e!2473616 () Bool)

(assert (=> start!375520 e!2473616))

(assert (=> start!375520 e!2473649))

(declare-fun b!3990363 () Bool)

(assert (=> b!3990363 (= e!2473625 e!2473617)))

(declare-fun res!1619297 () Bool)

(assert (=> b!3990363 (=> res!1619297 e!2473617)))

(assert (=> b!3990363 (= res!1619297 (not (= lt!1406585 lt!1406583)))))

(assert (=> b!3990363 (= lt!1406585 (++!11158 lt!1406584 lt!1406621))))

(assert (=> b!3990363 (= lt!1406621 (getSuffix!2274 lt!1406583 lt!1406584))))

(declare-fun b!3990364 () Bool)

(declare-fun tp!1215554 () Bool)

(assert (=> b!3990364 (= e!2473616 (and e!2473639 tp!1215554))))

(declare-fun b!3990365 () Bool)

(assert (=> b!3990365 (= e!2473615 (not e!2473636))))

(declare-fun res!1619305 () Bool)

(assert (=> b!3990365 (=> res!1619305 e!2473636)))

(assert (=> b!3990365 (= res!1619305 (not (= lt!1406608 lt!1406628)))))

(assert (=> b!3990365 (= lt!1406608 (++!11158 lt!1406612 suffixResult!105))))

(declare-fun lt!1406601 () Unit!61448)

(assert (=> b!3990365 (= lt!1406601 (lemmaInv!971 (transformation!6756 (rule!9774 token!484))))))

(assert (=> b!3990365 (ruleValid!2688 thiss!21717 (rule!9774 token!484))))

(declare-fun lt!1406636 () Unit!61448)

(assert (=> b!3990365 (= lt!1406636 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1762 thiss!21717 (rule!9774 token!484) rules!2999))))

(declare-fun b!3990366 () Bool)

(declare-fun res!1619318 () Bool)

(assert (=> b!3990366 (=> (not res!1619318) (not e!2473650))))

(declare-fun isEmpty!25508 (List!42808) Bool)

(assert (=> b!3990366 (= res!1619318 (not (isEmpty!25508 rules!2999)))))

(declare-fun b!3990367 () Bool)

(assert (=> b!3990367 (= e!2473619 e!2473645)))

(declare-fun res!1619307 () Bool)

(assert (=> b!3990367 (=> res!1619307 e!2473645)))

(assert (=> b!3990367 (= res!1619307 (not (matchR!5638 (regex!6756 (rule!9774 token!484)) lt!1406612)))))

(assert (=> b!3990367 (isPrefix!3843 lt!1406612 lt!1406583)))

(declare-fun lt!1406635 () Unit!61448)

(assert (=> b!3990367 (= lt!1406635 (lemmaPrefixStaysPrefixWhenAddingToSuffix!676 lt!1406612 prefix!494 newSuffix!27))))

(declare-fun lt!1406620 () Unit!61448)

(assert (=> b!3990367 (= lt!1406620 (lemmaPrefixStaysPrefixWhenAddingToSuffix!676 lt!1406612 prefix!494 suffix!1299))))

(declare-fun b!3990368 () Bool)

(declare-fun Unit!61454 () Unit!61448)

(assert (=> b!3990368 (= e!2473621 Unit!61454)))

(declare-fun lt!1406617 () Unit!61448)

(assert (=> b!3990368 (= lt!1406617 (lemmaMaxPrefixOutputsMaxPrefix!410 thiss!21717 rules!2999 (rule!9774 (_1!24076 (v!39525 lt!1406624))) lt!1406584 lt!1406583 lt!1406612 (rule!9774 token!484)))))

(assert (=> b!3990368 false))

(assert (= (and start!375520 res!1619300) b!3990366))

(assert (= (and b!3990366 res!1619318) b!3990350))

(assert (= (and b!3990350 res!1619295) b!3990351))

(assert (= (and b!3990351 res!1619296) b!3990341))

(assert (= (and b!3990341 res!1619302) b!3990357))

(assert (= (and b!3990357 res!1619320) b!3990359))

(assert (= (and b!3990359 res!1619301) b!3990335))

(assert (= (and b!3990335 res!1619312) b!3990365))

(assert (= (and b!3990365 (not res!1619305)) b!3990330))

(assert (= (and b!3990330 (not res!1619313)) b!3990340))

(assert (= (and b!3990340 (not res!1619309)) b!3990354))

(assert (= (and b!3990354 (not res!1619310)) b!3990327))

(assert (= (and b!3990327 (not res!1619299)) b!3990367))

(assert (= (and b!3990367 (not res!1619307)) b!3990353))

(assert (= (and b!3990353 res!1619311) b!3990336))

(assert (= (and b!3990336 res!1619315) b!3990362))

(assert (= (and b!3990362 res!1619303) b!3990352))

(assert (= (and b!3990353 (not res!1619308)) b!3990348))

(assert (= (and b!3990348 (not res!1619317)) b!3990358))

(assert (= (and b!3990358 (not res!1619304)) b!3990332))

(assert (= (and b!3990332 (not res!1619319)) b!3990356))

(assert (= (and b!3990356 (not res!1619294)) b!3990349))

(assert (= (and b!3990349 (not res!1619314)) b!3990342))

(assert (= (and b!3990342 (not res!1619322)) b!3990363))

(assert (= (and b!3990363 (not res!1619297)) b!3990345))

(assert (= (and b!3990345 c!690623) b!3990326))

(assert (= (and b!3990345 (not c!690623)) b!3990361))

(assert (= (and b!3990326 res!1619321) b!3990331))

(assert (= (and b!3990345 c!690622) b!3990368))

(assert (= (and b!3990345 (not c!690622)) b!3990343))

(assert (= (and b!3990345 (not res!1619306)) b!3990339))

(assert (= (and b!3990339 (not res!1619316)) b!3990346))

(assert (= (and b!3990346 (not res!1619298)) b!3990360))

(assert (= (and start!375520 ((_ is Cons!42682) prefix!494)) b!3990325))

(assert (= b!3990328 b!3990344))

(assert (= b!3990337 b!3990328))

(assert (= start!375520 b!3990337))

(assert (= (and start!375520 ((_ is Cons!42682) suffixResult!105)) b!3990333))

(assert (= (and start!375520 ((_ is Cons!42682) suffix!1299)) b!3990338))

(assert (= (and start!375520 ((_ is Cons!42682) newSuffix!27)) b!3990355))

(assert (= b!3990329 b!3990347))

(assert (= b!3990364 b!3990329))

(assert (= (and start!375520 ((_ is Cons!42684) rules!2999)) b!3990364))

(assert (= (and start!375520 ((_ is Cons!42682) newSuffixResult!27)) b!3990334))

(declare-fun m!4568517 () Bool)

(assert (=> b!3990357 m!4568517))

(declare-fun m!4568519 () Bool)

(assert (=> b!3990357 m!4568519))

(declare-fun m!4568521 () Bool)

(assert (=> b!3990357 m!4568521))

(assert (=> b!3990357 m!4568521))

(declare-fun m!4568523 () Bool)

(assert (=> b!3990357 m!4568523))

(declare-fun m!4568525 () Bool)

(assert (=> b!3990326 m!4568525))

(declare-fun m!4568527 () Bool)

(assert (=> b!3990326 m!4568527))

(declare-fun m!4568529 () Bool)

(assert (=> b!3990330 m!4568529))

(declare-fun m!4568531 () Bool)

(assert (=> b!3990330 m!4568531))

(declare-fun m!4568533 () Bool)

(assert (=> b!3990330 m!4568533))

(declare-fun m!4568535 () Bool)

(assert (=> b!3990330 m!4568535))

(declare-fun m!4568537 () Bool)

(assert (=> b!3990330 m!4568537))

(declare-fun m!4568539 () Bool)

(assert (=> b!3990348 m!4568539))

(declare-fun m!4568541 () Bool)

(assert (=> b!3990348 m!4568541))

(declare-fun m!4568543 () Bool)

(assert (=> b!3990348 m!4568543))

(declare-fun m!4568545 () Bool)

(assert (=> b!3990348 m!4568545))

(declare-fun m!4568547 () Bool)

(assert (=> b!3990354 m!4568547))

(declare-fun m!4568549 () Bool)

(assert (=> b!3990354 m!4568549))

(declare-fun m!4568551 () Bool)

(assert (=> b!3990354 m!4568551))

(declare-fun m!4568553 () Bool)

(assert (=> b!3990354 m!4568553))

(declare-fun m!4568555 () Bool)

(assert (=> b!3990360 m!4568555))

(declare-fun m!4568557 () Bool)

(assert (=> b!3990340 m!4568557))

(declare-fun m!4568559 () Bool)

(assert (=> b!3990340 m!4568559))

(declare-fun m!4568561 () Bool)

(assert (=> b!3990340 m!4568561))

(declare-fun m!4568563 () Bool)

(assert (=> b!3990340 m!4568563))

(declare-fun m!4568565 () Bool)

(assert (=> b!3990367 m!4568565))

(declare-fun m!4568567 () Bool)

(assert (=> b!3990367 m!4568567))

(declare-fun m!4568569 () Bool)

(assert (=> b!3990367 m!4568569))

(declare-fun m!4568571 () Bool)

(assert (=> b!3990367 m!4568571))

(declare-fun m!4568573 () Bool)

(assert (=> b!3990363 m!4568573))

(declare-fun m!4568575 () Bool)

(assert (=> b!3990363 m!4568575))

(declare-fun m!4568577 () Bool)

(assert (=> b!3990332 m!4568577))

(declare-fun m!4568579 () Bool)

(assert (=> b!3990332 m!4568579))

(declare-fun m!4568581 () Bool)

(assert (=> b!3990356 m!4568581))

(declare-fun m!4568583 () Bool)

(assert (=> b!3990356 m!4568583))

(declare-fun m!4568585 () Bool)

(assert (=> b!3990356 m!4568585))

(declare-fun m!4568587 () Bool)

(assert (=> b!3990365 m!4568587))

(declare-fun m!4568589 () Bool)

(assert (=> b!3990365 m!4568589))

(declare-fun m!4568591 () Bool)

(assert (=> b!3990365 m!4568591))

(declare-fun m!4568593 () Bool)

(assert (=> b!3990365 m!4568593))

(declare-fun m!4568595 () Bool)

(assert (=> b!3990335 m!4568595))

(declare-fun m!4568597 () Bool)

(assert (=> b!3990335 m!4568597))

(declare-fun m!4568599 () Bool)

(assert (=> b!3990341 m!4568599))

(declare-fun m!4568601 () Bool)

(assert (=> b!3990350 m!4568601))

(declare-fun m!4568603 () Bool)

(assert (=> b!3990349 m!4568603))

(declare-fun m!4568605 () Bool)

(assert (=> b!3990349 m!4568605))

(declare-fun m!4568607 () Bool)

(assert (=> b!3990349 m!4568607))

(declare-fun m!4568609 () Bool)

(assert (=> b!3990368 m!4568609))

(declare-fun m!4568611 () Bool)

(assert (=> b!3990327 m!4568611))

(declare-fun m!4568613 () Bool)

(assert (=> b!3990327 m!4568613))

(declare-fun m!4568615 () Bool)

(assert (=> b!3990327 m!4568615))

(assert (=> b!3990327 m!4568613))

(declare-fun m!4568617 () Bool)

(assert (=> b!3990327 m!4568617))

(declare-fun m!4568619 () Bool)

(assert (=> b!3990327 m!4568619))

(declare-fun m!4568621 () Bool)

(assert (=> b!3990327 m!4568621))

(declare-fun m!4568623 () Bool)

(assert (=> b!3990327 m!4568623))

(declare-fun m!4568625 () Bool)

(assert (=> b!3990351 m!4568625))

(declare-fun m!4568627 () Bool)

(assert (=> b!3990351 m!4568627))

(declare-fun m!4568629 () Bool)

(assert (=> b!3990358 m!4568629))

(declare-fun m!4568631 () Bool)

(assert (=> b!3990358 m!4568631))

(declare-fun m!4568633 () Bool)

(assert (=> b!3990358 m!4568633))

(declare-fun m!4568635 () Bool)

(assert (=> b!3990358 m!4568635))

(declare-fun m!4568637 () Bool)

(assert (=> b!3990358 m!4568637))

(declare-fun m!4568639 () Bool)

(assert (=> b!3990358 m!4568639))

(declare-fun m!4568641 () Bool)

(assert (=> b!3990358 m!4568641))

(declare-fun m!4568643 () Bool)

(assert (=> b!3990358 m!4568643))

(declare-fun m!4568645 () Bool)

(assert (=> b!3990358 m!4568645))

(declare-fun m!4568647 () Bool)

(assert (=> b!3990358 m!4568647))

(declare-fun m!4568649 () Bool)

(assert (=> b!3990358 m!4568649))

(assert (=> b!3990358 m!4568645))

(declare-fun m!4568651 () Bool)

(assert (=> b!3990358 m!4568651))

(declare-fun m!4568653 () Bool)

(assert (=> b!3990358 m!4568653))

(declare-fun m!4568655 () Bool)

(assert (=> b!3990358 m!4568655))

(declare-fun m!4568657 () Bool)

(assert (=> b!3990358 m!4568657))

(declare-fun m!4568659 () Bool)

(assert (=> b!3990358 m!4568659))

(assert (=> b!3990358 m!4568655))

(declare-fun m!4568661 () Bool)

(assert (=> b!3990358 m!4568661))

(assert (=> b!3990358 m!4568639))

(declare-fun m!4568663 () Bool)

(assert (=> b!3990358 m!4568663))

(declare-fun m!4568665 () Bool)

(assert (=> b!3990362 m!4568665))

(declare-fun m!4568667 () Bool)

(assert (=> b!3990329 m!4568667))

(declare-fun m!4568669 () Bool)

(assert (=> b!3990329 m!4568669))

(declare-fun m!4568671 () Bool)

(assert (=> b!3990359 m!4568671))

(declare-fun m!4568673 () Bool)

(assert (=> b!3990359 m!4568673))

(declare-fun m!4568675 () Bool)

(assert (=> b!3990345 m!4568675))

(declare-fun m!4568677 () Bool)

(assert (=> b!3990345 m!4568677))

(declare-fun m!4568679 () Bool)

(assert (=> b!3990345 m!4568679))

(declare-fun m!4568681 () Bool)

(assert (=> b!3990353 m!4568681))

(declare-fun m!4568683 () Bool)

(assert (=> b!3990353 m!4568683))

(declare-fun m!4568685 () Bool)

(assert (=> b!3990353 m!4568685))

(declare-fun m!4568687 () Bool)

(assert (=> b!3990353 m!4568687))

(declare-fun m!4568689 () Bool)

(assert (=> b!3990346 m!4568689))

(declare-fun m!4568691 () Bool)

(assert (=> b!3990346 m!4568691))

(declare-fun m!4568693 () Bool)

(assert (=> b!3990346 m!4568693))

(declare-fun m!4568695 () Bool)

(assert (=> b!3990346 m!4568695))

(declare-fun m!4568697 () Bool)

(assert (=> b!3990337 m!4568697))

(declare-fun m!4568699 () Bool)

(assert (=> b!3990339 m!4568699))

(declare-fun m!4568701 () Bool)

(assert (=> start!375520 m!4568701))

(declare-fun m!4568703 () Bool)

(assert (=> b!3990328 m!4568703))

(declare-fun m!4568705 () Bool)

(assert (=> b!3990328 m!4568705))

(declare-fun m!4568707 () Bool)

(assert (=> b!3990366 m!4568707))

(check-sat (not b!3990326) (not b!3990364) (not b!3990368) (not b!3990325) (not b!3990349) b_and!306595 tp_is_empty!20293 (not b!3990338) (not b!3990357) (not b!3990355) (not b!3990365) (not b!3990359) (not b_next!111545) (not b_next!111551) (not start!375520) (not b!3990340) (not b!3990356) (not b!3990337) (not b!3990327) (not b!3990350) (not b!3990333) (not b!3990354) (not b!3990345) (not b!3990353) (not b!3990334) (not b!3990366) (not b_next!111547) (not b!3990362) (not b!3990339) b_and!306593 (not b_next!111549) (not b!3990363) b_and!306597 (not b!3990330) (not b!3990358) (not b!3990335) (not b!3990329) (not b!3990367) (not b!3990348) (not b!3990346) (not b!3990332) (not b!3990341) (not b!3990360) (not b!3990351) b_and!306591 (not b!3990328))
(check-sat (not b_next!111545) (not b_next!111551) (not b_next!111547) b_and!306597 b_and!306595 b_and!306591 b_and!306593 (not b_next!111549))
(get-model)

(declare-fun d!1180811 () Bool)

(declare-fun lt!1406670 () Int)

(assert (=> d!1180811 (>= lt!1406670 0)))

(declare-fun e!2473693 () Int)

(assert (=> d!1180811 (= lt!1406670 e!2473693)))

(declare-fun c!690638 () Bool)

(assert (=> d!1180811 (= c!690638 ((_ is Nil!42682) (originalCharacters!7356 token!484)))))

(assert (=> d!1180811 (= (size!31923 (originalCharacters!7356 token!484)) lt!1406670)))

(declare-fun b!3990436 () Bool)

(assert (=> b!3990436 (= e!2473693 0)))

(declare-fun b!3990437 () Bool)

(assert (=> b!3990437 (= e!2473693 (+ 1 (size!31923 (t!331749 (originalCharacters!7356 token!484)))))))

(assert (= (and d!1180811 c!690638) b!3990436))

(assert (= (and d!1180811 (not c!690638)) b!3990437))

(declare-fun m!4568823 () Bool)

(assert (=> b!3990437 m!4568823))

(assert (=> b!3990362 d!1180811))

(declare-fun d!1180813 () Bool)

(declare-fun res!1619378 () Bool)

(declare-fun e!2473696 () Bool)

(assert (=> d!1180813 (=> (not res!1619378) (not e!2473696))))

(declare-fun isEmpty!25511 (List!42806) Bool)

(assert (=> d!1180813 (= res!1619378 (not (isEmpty!25511 (originalCharacters!7356 token!484))))))

(assert (=> d!1180813 (= (inv!57010 token!484) e!2473696)))

(declare-fun b!3990442 () Bool)

(declare-fun res!1619379 () Bool)

(assert (=> b!3990442 (=> (not res!1619379) (not e!2473696))))

(declare-fun dynLambda!18131 (Int TokenValue!6986) BalanceConc!25528)

(assert (=> b!3990442 (= res!1619379 (= (originalCharacters!7356 token!484) (list!15846 (dynLambda!18131 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (value!213180 token!484)))))))

(declare-fun b!3990443 () Bool)

(assert (=> b!3990443 (= e!2473696 (= (size!31922 token!484) (size!31923 (originalCharacters!7356 token!484))))))

(assert (= (and d!1180813 res!1619378) b!3990442))

(assert (= (and b!3990442 res!1619379) b!3990443))

(declare-fun b_lambda!116495 () Bool)

(assert (=> (not b_lambda!116495) (not b!3990442)))

(declare-fun t!331753 () Bool)

(declare-fun tb!240205 () Bool)

(assert (=> (and b!3990347 (= (toChars!9103 (transformation!6756 (h!48104 rules!2999))) (toChars!9103 (transformation!6756 (rule!9774 token!484)))) t!331753) tb!240205))

(declare-fun b!3990448 () Bool)

(declare-fun e!2473699 () Bool)

(declare-fun tp!1215559 () Bool)

(declare-fun inv!57011 (Conc!12967) Bool)

(assert (=> b!3990448 (= e!2473699 (and (inv!57011 (c!690624 (dynLambda!18131 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (value!213180 token!484)))) tp!1215559))))

(declare-fun result!291046 () Bool)

(declare-fun inv!57012 (BalanceConc!25528) Bool)

(assert (=> tb!240205 (= result!291046 (and (inv!57012 (dynLambda!18131 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (value!213180 token!484))) e!2473699))))

(assert (= tb!240205 b!3990448))

(declare-fun m!4568825 () Bool)

(assert (=> b!3990448 m!4568825))

(declare-fun m!4568827 () Bool)

(assert (=> tb!240205 m!4568827))

(assert (=> b!3990442 t!331753))

(declare-fun b_and!306599 () Bool)

(assert (= b_and!306593 (and (=> t!331753 result!291046) b_and!306599)))

(declare-fun t!331755 () Bool)

(declare-fun tb!240207 () Bool)

(assert (=> (and b!3990344 (= (toChars!9103 (transformation!6756 (rule!9774 token!484))) (toChars!9103 (transformation!6756 (rule!9774 token!484)))) t!331755) tb!240207))

(declare-fun result!291050 () Bool)

(assert (= result!291050 result!291046))

(assert (=> b!3990442 t!331755))

(declare-fun b_and!306601 () Bool)

(assert (= b_and!306597 (and (=> t!331755 result!291050) b_and!306601)))

(declare-fun m!4568829 () Bool)

(assert (=> d!1180813 m!4568829))

(declare-fun m!4568831 () Bool)

(assert (=> b!3990442 m!4568831))

(assert (=> b!3990442 m!4568831))

(declare-fun m!4568833 () Bool)

(assert (=> b!3990442 m!4568833))

(assert (=> b!3990443 m!4568665))

(assert (=> start!375520 d!1180813))

(declare-fun d!1180815 () Bool)

(declare-fun e!2473707 () Bool)

(assert (=> d!1180815 e!2473707))

(declare-fun res!1619390 () Bool)

(assert (=> d!1180815 (=> res!1619390 e!2473707)))

(declare-fun lt!1406673 () Bool)

(assert (=> d!1180815 (= res!1619390 (not lt!1406673))))

(declare-fun e!2473706 () Bool)

(assert (=> d!1180815 (= lt!1406673 e!2473706)))

(declare-fun res!1619391 () Bool)

(assert (=> d!1180815 (=> res!1619391 e!2473706)))

(assert (=> d!1180815 (= res!1619391 ((_ is Nil!42682) newSuffix!27))))

(assert (=> d!1180815 (= (isPrefix!3843 newSuffix!27 suffix!1299) lt!1406673)))

(declare-fun b!3990459 () Bool)

(declare-fun e!2473708 () Bool)

(declare-fun tail!6223 (List!42806) List!42806)

(assert (=> b!3990459 (= e!2473708 (isPrefix!3843 (tail!6223 newSuffix!27) (tail!6223 suffix!1299)))))

(declare-fun b!3990460 () Bool)

(assert (=> b!3990460 (= e!2473707 (>= (size!31923 suffix!1299) (size!31923 newSuffix!27)))))

(declare-fun b!3990458 () Bool)

(declare-fun res!1619389 () Bool)

(assert (=> b!3990458 (=> (not res!1619389) (not e!2473708))))

(declare-fun head!8491 (List!42806) C!23508)

(assert (=> b!3990458 (= res!1619389 (= (head!8491 newSuffix!27) (head!8491 suffix!1299)))))

(declare-fun b!3990457 () Bool)

(assert (=> b!3990457 (= e!2473706 e!2473708)))

(declare-fun res!1619388 () Bool)

(assert (=> b!3990457 (=> (not res!1619388) (not e!2473708))))

(assert (=> b!3990457 (= res!1619388 (not ((_ is Nil!42682) suffix!1299)))))

(assert (= (and d!1180815 (not res!1619391)) b!3990457))

(assert (= (and b!3990457 res!1619388) b!3990458))

(assert (= (and b!3990458 res!1619389) b!3990459))

(assert (= (and d!1180815 (not res!1619390)) b!3990460))

(declare-fun m!4568835 () Bool)

(assert (=> b!3990459 m!4568835))

(declare-fun m!4568837 () Bool)

(assert (=> b!3990459 m!4568837))

(assert (=> b!3990459 m!4568835))

(assert (=> b!3990459 m!4568837))

(declare-fun m!4568839 () Bool)

(assert (=> b!3990459 m!4568839))

(assert (=> b!3990460 m!4568625))

(assert (=> b!3990460 m!4568627))

(declare-fun m!4568841 () Bool)

(assert (=> b!3990458 m!4568841))

(declare-fun m!4568843 () Bool)

(assert (=> b!3990458 m!4568843))

(assert (=> b!3990341 d!1180815))

(declare-fun d!1180817 () Bool)

(declare-fun e!2473710 () Bool)

(assert (=> d!1180817 e!2473710))

(declare-fun res!1619394 () Bool)

(assert (=> d!1180817 (=> res!1619394 e!2473710)))

(declare-fun lt!1406674 () Bool)

(assert (=> d!1180817 (= res!1619394 (not lt!1406674))))

(declare-fun e!2473709 () Bool)

(assert (=> d!1180817 (= lt!1406674 e!2473709)))

(declare-fun res!1619395 () Bool)

(assert (=> d!1180817 (=> res!1619395 e!2473709)))

(assert (=> d!1180817 (= res!1619395 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1180817 (= (isPrefix!3843 lt!1406584 lt!1406583) lt!1406674)))

(declare-fun b!3990463 () Bool)

(declare-fun e!2473711 () Bool)

(assert (=> b!3990463 (= e!2473711 (isPrefix!3843 (tail!6223 lt!1406584) (tail!6223 lt!1406583)))))

(declare-fun b!3990464 () Bool)

(assert (=> b!3990464 (= e!2473710 (>= (size!31923 lt!1406583) (size!31923 lt!1406584)))))

(declare-fun b!3990462 () Bool)

(declare-fun res!1619393 () Bool)

(assert (=> b!3990462 (=> (not res!1619393) (not e!2473711))))

(assert (=> b!3990462 (= res!1619393 (= (head!8491 lt!1406584) (head!8491 lt!1406583)))))

(declare-fun b!3990461 () Bool)

(assert (=> b!3990461 (= e!2473709 e!2473711)))

(declare-fun res!1619392 () Bool)

(assert (=> b!3990461 (=> (not res!1619392) (not e!2473711))))

(assert (=> b!3990461 (= res!1619392 (not ((_ is Nil!42682) lt!1406583)))))

(assert (= (and d!1180817 (not res!1619395)) b!3990461))

(assert (= (and b!3990461 res!1619392) b!3990462))

(assert (= (and b!3990462 res!1619393) b!3990463))

(assert (= (and d!1180817 (not res!1619394)) b!3990464))

(declare-fun m!4568845 () Bool)

(assert (=> b!3990463 m!4568845))

(declare-fun m!4568847 () Bool)

(assert (=> b!3990463 m!4568847))

(assert (=> b!3990463 m!4568845))

(assert (=> b!3990463 m!4568847))

(declare-fun m!4568849 () Bool)

(assert (=> b!3990463 m!4568849))

(declare-fun m!4568851 () Bool)

(assert (=> b!3990464 m!4568851))

(assert (=> b!3990464 m!4568653))

(declare-fun m!4568853 () Bool)

(assert (=> b!3990462 m!4568853))

(declare-fun m!4568855 () Bool)

(assert (=> b!3990462 m!4568855))

(assert (=> b!3990339 d!1180817))

(declare-fun b!3990491 () Bool)

(declare-fun e!2473724 () List!42806)

(assert (=> b!3990491 (= e!2473724 lt!1406610)))

(declare-fun e!2473725 () Bool)

(declare-fun lt!1406687 () List!42806)

(declare-fun b!3990494 () Bool)

(assert (=> b!3990494 (= e!2473725 (or (not (= lt!1406610 Nil!42682)) (= lt!1406687 lt!1406612)))))

(declare-fun d!1180819 () Bool)

(assert (=> d!1180819 e!2473725))

(declare-fun res!1619414 () Bool)

(assert (=> d!1180819 (=> (not res!1619414) (not e!2473725))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6473 (List!42806) (InoxSet C!23508))

(assert (=> d!1180819 (= res!1619414 (= (content!6473 lt!1406687) ((_ map or) (content!6473 lt!1406612) (content!6473 lt!1406610))))))

(assert (=> d!1180819 (= lt!1406687 e!2473724)))

(declare-fun c!690643 () Bool)

(assert (=> d!1180819 (= c!690643 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1180819 (= (++!11158 lt!1406612 lt!1406610) lt!1406687)))

(declare-fun b!3990492 () Bool)

(assert (=> b!3990492 (= e!2473724 (Cons!42682 (h!48102 lt!1406612) (++!11158 (t!331749 lt!1406612) lt!1406610)))))

(declare-fun b!3990493 () Bool)

(declare-fun res!1619415 () Bool)

(assert (=> b!3990493 (=> (not res!1619415) (not e!2473725))))

(assert (=> b!3990493 (= res!1619415 (= (size!31923 lt!1406687) (+ (size!31923 lt!1406612) (size!31923 lt!1406610))))))

(assert (= (and d!1180819 c!690643) b!3990491))

(assert (= (and d!1180819 (not c!690643)) b!3990492))

(assert (= (and d!1180819 res!1619414) b!3990493))

(assert (= (and b!3990493 res!1619415) b!3990494))

(declare-fun m!4568857 () Bool)

(assert (=> d!1180819 m!4568857))

(declare-fun m!4568859 () Bool)

(assert (=> d!1180819 m!4568859))

(declare-fun m!4568861 () Bool)

(assert (=> d!1180819 m!4568861))

(declare-fun m!4568863 () Bool)

(assert (=> b!3990492 m!4568863))

(declare-fun m!4568865 () Bool)

(assert (=> b!3990493 m!4568865))

(assert (=> b!3990493 m!4568517))

(declare-fun m!4568867 () Bool)

(assert (=> b!3990493 m!4568867))

(assert (=> b!3990340 d!1180819))

(declare-fun d!1180821 () Bool)

(declare-fun lt!1406696 () List!42806)

(assert (=> d!1180821 (= (++!11158 lt!1406612 lt!1406696) prefix!494)))

(declare-fun e!2473732 () List!42806)

(assert (=> d!1180821 (= lt!1406696 e!2473732)))

(declare-fun c!690647 () Bool)

(assert (=> d!1180821 (= c!690647 ((_ is Cons!42682) lt!1406612))))

(assert (=> d!1180821 (>= (size!31923 prefix!494) (size!31923 lt!1406612))))

(assert (=> d!1180821 (= (getSuffix!2274 prefix!494 lt!1406612) lt!1406696)))

(declare-fun b!3990508 () Bool)

(assert (=> b!3990508 (= e!2473732 (getSuffix!2274 (tail!6223 prefix!494) (t!331749 lt!1406612)))))

(declare-fun b!3990509 () Bool)

(assert (=> b!3990509 (= e!2473732 prefix!494)))

(assert (= (and d!1180821 c!690647) b!3990508))

(assert (= (and d!1180821 (not c!690647)) b!3990509))

(declare-fun m!4568913 () Bool)

(assert (=> d!1180821 m!4568913))

(assert (=> d!1180821 m!4568519))

(assert (=> d!1180821 m!4568517))

(declare-fun m!4568915 () Bool)

(assert (=> b!3990508 m!4568915))

(assert (=> b!3990508 m!4568915))

(declare-fun m!4568917 () Bool)

(assert (=> b!3990508 m!4568917))

(assert (=> b!3990340 d!1180821))

(declare-fun d!1180827 () Bool)

(declare-fun e!2473734 () Bool)

(assert (=> d!1180827 e!2473734))

(declare-fun res!1619425 () Bool)

(assert (=> d!1180827 (=> res!1619425 e!2473734)))

(declare-fun lt!1406697 () Bool)

(assert (=> d!1180827 (= res!1619425 (not lt!1406697))))

(declare-fun e!2473733 () Bool)

(assert (=> d!1180827 (= lt!1406697 e!2473733)))

(declare-fun res!1619426 () Bool)

(assert (=> d!1180827 (=> res!1619426 e!2473733)))

(assert (=> d!1180827 (= res!1619426 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1180827 (= (isPrefix!3843 lt!1406612 prefix!494) lt!1406697)))

(declare-fun b!3990512 () Bool)

(declare-fun e!2473735 () Bool)

(assert (=> b!3990512 (= e!2473735 (isPrefix!3843 (tail!6223 lt!1406612) (tail!6223 prefix!494)))))

(declare-fun b!3990513 () Bool)

(assert (=> b!3990513 (= e!2473734 (>= (size!31923 prefix!494) (size!31923 lt!1406612)))))

(declare-fun b!3990511 () Bool)

(declare-fun res!1619424 () Bool)

(assert (=> b!3990511 (=> (not res!1619424) (not e!2473735))))

(assert (=> b!3990511 (= res!1619424 (= (head!8491 lt!1406612) (head!8491 prefix!494)))))

(declare-fun b!3990510 () Bool)

(assert (=> b!3990510 (= e!2473733 e!2473735)))

(declare-fun res!1619423 () Bool)

(assert (=> b!3990510 (=> (not res!1619423) (not e!2473735))))

(assert (=> b!3990510 (= res!1619423 (not ((_ is Nil!42682) prefix!494)))))

(assert (= (and d!1180827 (not res!1619426)) b!3990510))

(assert (= (and b!3990510 res!1619423) b!3990511))

(assert (= (and b!3990511 res!1619424) b!3990512))

(assert (= (and d!1180827 (not res!1619425)) b!3990513))

(declare-fun m!4568919 () Bool)

(assert (=> b!3990512 m!4568919))

(assert (=> b!3990512 m!4568915))

(assert (=> b!3990512 m!4568919))

(assert (=> b!3990512 m!4568915))

(declare-fun m!4568921 () Bool)

(assert (=> b!3990512 m!4568921))

(assert (=> b!3990513 m!4568519))

(assert (=> b!3990513 m!4568517))

(declare-fun m!4568923 () Bool)

(assert (=> b!3990511 m!4568923))

(declare-fun m!4568925 () Bool)

(assert (=> b!3990511 m!4568925))

(assert (=> b!3990340 d!1180827))

(declare-fun d!1180829 () Bool)

(assert (=> d!1180829 (isPrefix!3843 lt!1406612 prefix!494)))

(declare-fun lt!1406700 () Unit!61448)

(declare-fun choose!23997 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> d!1180829 (= lt!1406700 (choose!23997 prefix!494 lt!1406612 lt!1406628))))

(assert (=> d!1180829 (isPrefix!3843 prefix!494 lt!1406628)))

(assert (=> d!1180829 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!421 prefix!494 lt!1406612 lt!1406628) lt!1406700)))

(declare-fun bs!588361 () Bool)

(assert (= bs!588361 d!1180829))

(assert (=> bs!588361 m!4568561))

(declare-fun m!4568927 () Bool)

(assert (=> bs!588361 m!4568927))

(assert (=> bs!588361 m!4568535))

(assert (=> b!3990340 d!1180829))

(declare-fun b!3990514 () Bool)

(declare-fun e!2473736 () List!42806)

(assert (=> b!3990514 (= e!2473736 newSuffix!27)))

(declare-fun lt!1406701 () List!42806)

(declare-fun e!2473737 () Bool)

(declare-fun b!3990517 () Bool)

(assert (=> b!3990517 (= e!2473737 (or (not (= newSuffix!27 Nil!42682)) (= lt!1406701 prefix!494)))))

(declare-fun d!1180831 () Bool)

(assert (=> d!1180831 e!2473737))

(declare-fun res!1619427 () Bool)

(assert (=> d!1180831 (=> (not res!1619427) (not e!2473737))))

(assert (=> d!1180831 (= res!1619427 (= (content!6473 lt!1406701) ((_ map or) (content!6473 prefix!494) (content!6473 newSuffix!27))))))

(assert (=> d!1180831 (= lt!1406701 e!2473736)))

(declare-fun c!690648 () Bool)

(assert (=> d!1180831 (= c!690648 ((_ is Nil!42682) prefix!494))))

(assert (=> d!1180831 (= (++!11158 prefix!494 newSuffix!27) lt!1406701)))

(declare-fun b!3990515 () Bool)

(assert (=> b!3990515 (= e!2473736 (Cons!42682 (h!48102 prefix!494) (++!11158 (t!331749 prefix!494) newSuffix!27)))))

(declare-fun b!3990516 () Bool)

(declare-fun res!1619428 () Bool)

(assert (=> b!3990516 (=> (not res!1619428) (not e!2473737))))

(assert (=> b!3990516 (= res!1619428 (= (size!31923 lt!1406701) (+ (size!31923 prefix!494) (size!31923 newSuffix!27))))))

(assert (= (and d!1180831 c!690648) b!3990514))

(assert (= (and d!1180831 (not c!690648)) b!3990515))

(assert (= (and d!1180831 res!1619427) b!3990516))

(assert (= (and b!3990516 res!1619428) b!3990517))

(declare-fun m!4568929 () Bool)

(assert (=> d!1180831 m!4568929))

(declare-fun m!4568931 () Bool)

(assert (=> d!1180831 m!4568931))

(declare-fun m!4568933 () Bool)

(assert (=> d!1180831 m!4568933))

(declare-fun m!4568935 () Bool)

(assert (=> b!3990515 m!4568935))

(declare-fun m!4568937 () Bool)

(assert (=> b!3990516 m!4568937))

(assert (=> b!3990516 m!4568519))

(assert (=> b!3990516 m!4568627))

(assert (=> b!3990359 d!1180831))

(declare-fun b!3990518 () Bool)

(declare-fun e!2473738 () List!42806)

(assert (=> b!3990518 (= e!2473738 newSuffixResult!27)))

(declare-fun b!3990521 () Bool)

(declare-fun lt!1406702 () List!42806)

(declare-fun e!2473739 () Bool)

(assert (=> b!3990521 (= e!2473739 (or (not (= newSuffixResult!27 Nil!42682)) (= lt!1406702 lt!1406612)))))

(declare-fun d!1180833 () Bool)

(assert (=> d!1180833 e!2473739))

(declare-fun res!1619429 () Bool)

(assert (=> d!1180833 (=> (not res!1619429) (not e!2473739))))

(assert (=> d!1180833 (= res!1619429 (= (content!6473 lt!1406702) ((_ map or) (content!6473 lt!1406612) (content!6473 newSuffixResult!27))))))

(assert (=> d!1180833 (= lt!1406702 e!2473738)))

(declare-fun c!690649 () Bool)

(assert (=> d!1180833 (= c!690649 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1180833 (= (++!11158 lt!1406612 newSuffixResult!27) lt!1406702)))

(declare-fun b!3990519 () Bool)

(assert (=> b!3990519 (= e!2473738 (Cons!42682 (h!48102 lt!1406612) (++!11158 (t!331749 lt!1406612) newSuffixResult!27)))))

(declare-fun b!3990520 () Bool)

(declare-fun res!1619430 () Bool)

(assert (=> b!3990520 (=> (not res!1619430) (not e!2473739))))

(assert (=> b!3990520 (= res!1619430 (= (size!31923 lt!1406702) (+ (size!31923 lt!1406612) (size!31923 newSuffixResult!27))))))

(assert (= (and d!1180833 c!690649) b!3990518))

(assert (= (and d!1180833 (not c!690649)) b!3990519))

(assert (= (and d!1180833 res!1619429) b!3990520))

(assert (= (and b!3990520 res!1619430) b!3990521))

(declare-fun m!4568939 () Bool)

(assert (=> d!1180833 m!4568939))

(assert (=> d!1180833 m!4568859))

(declare-fun m!4568941 () Bool)

(assert (=> d!1180833 m!4568941))

(declare-fun m!4568943 () Bool)

(assert (=> b!3990519 m!4568943))

(declare-fun m!4568945 () Bool)

(assert (=> b!3990520 m!4568945))

(assert (=> b!3990520 m!4568517))

(declare-fun m!4568947 () Bool)

(assert (=> b!3990520 m!4568947))

(assert (=> b!3990359 d!1180833))

(declare-fun d!1180835 () Bool)

(declare-fun lt!1406703 () Int)

(assert (=> d!1180835 (>= lt!1406703 0)))

(declare-fun e!2473740 () Int)

(assert (=> d!1180835 (= lt!1406703 e!2473740)))

(declare-fun c!690650 () Bool)

(assert (=> d!1180835 (= c!690650 ((_ is Nil!42682) lt!1406628))))

(assert (=> d!1180835 (= (size!31923 lt!1406628) lt!1406703)))

(declare-fun b!3990522 () Bool)

(assert (=> b!3990522 (= e!2473740 0)))

(declare-fun b!3990523 () Bool)

(assert (=> b!3990523 (= e!2473740 (+ 1 (size!31923 (t!331749 lt!1406628))))))

(assert (= (and d!1180835 c!690650) b!3990522))

(assert (= (and d!1180835 (not c!690650)) b!3990523))

(declare-fun m!4568949 () Bool)

(assert (=> b!3990523 m!4568949))

(assert (=> b!3990360 d!1180835))

(declare-fun d!1180837 () Bool)

(declare-fun lt!1406711 () BalanceConc!25528)

(assert (=> d!1180837 (= (list!15846 lt!1406711) (originalCharacters!7356 (_1!24076 (v!39525 lt!1406624))))))

(assert (=> d!1180837 (= lt!1406711 (dynLambda!18131 (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) (value!213180 (_1!24076 (v!39525 lt!1406624)))))))

(assert (=> d!1180837 (= (charsOf!4572 (_1!24076 (v!39525 lt!1406624))) lt!1406711)))

(declare-fun b_lambda!116497 () Bool)

(assert (=> (not b_lambda!116497) (not d!1180837)))

(declare-fun t!331757 () Bool)

(declare-fun tb!240209 () Bool)

(assert (=> (and b!3990347 (= (toChars!9103 (transformation!6756 (h!48104 rules!2999))) (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))) t!331757) tb!240209))

(declare-fun b!3990528 () Bool)

(declare-fun e!2473744 () Bool)

(declare-fun tp!1215560 () Bool)

(assert (=> b!3990528 (= e!2473744 (and (inv!57011 (c!690624 (dynLambda!18131 (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) (value!213180 (_1!24076 (v!39525 lt!1406624)))))) tp!1215560))))

(declare-fun result!291052 () Bool)

(assert (=> tb!240209 (= result!291052 (and (inv!57012 (dynLambda!18131 (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) (value!213180 (_1!24076 (v!39525 lt!1406624))))) e!2473744))))

(assert (= tb!240209 b!3990528))

(declare-fun m!4568967 () Bool)

(assert (=> b!3990528 m!4568967))

(declare-fun m!4568969 () Bool)

(assert (=> tb!240209 m!4568969))

(assert (=> d!1180837 t!331757))

(declare-fun b_and!306603 () Bool)

(assert (= b_and!306599 (and (=> t!331757 result!291052) b_and!306603)))

(declare-fun tb!240215 () Bool)

(declare-fun t!331763 () Bool)

(assert (=> (and b!3990344 (= (toChars!9103 (transformation!6756 (rule!9774 token!484))) (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))) t!331763) tb!240215))

(declare-fun result!291060 () Bool)

(assert (= result!291060 result!291052))

(assert (=> d!1180837 t!331763))

(declare-fun b_and!306609 () Bool)

(assert (= b_and!306601 (and (=> t!331763 result!291060) b_and!306609)))

(declare-fun m!4568975 () Bool)

(assert (=> d!1180837 m!4568975))

(declare-fun m!4568977 () Bool)

(assert (=> d!1180837 m!4568977))

(assert (=> b!3990358 d!1180837))

(declare-fun d!1180849 () Bool)

(assert (=> d!1180849 (= (maxPrefixOneRule!2677 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))) lt!1406583) (Some!9169 (tuple2!41885 (Token!12651 (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (seqFromList!4995 lt!1406584)) (rule!9774 (_1!24076 (v!39525 lt!1406624))) (size!31923 lt!1406584) lt!1406584) (_2!24076 (v!39525 lt!1406624)))))))

(declare-fun lt!1406730 () Unit!61448)

(declare-fun choose!23998 (LexerInterface!6345 List!42808 List!42806 List!42806 List!42806 Rule!13312) Unit!61448)

(assert (=> d!1180849 (= lt!1406730 (choose!23998 thiss!21717 rules!2999 lt!1406584 lt!1406583 (_2!24076 (v!39525 lt!1406624)) (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))

(assert (=> d!1180849 (not (isEmpty!25508 rules!2999))))

(assert (=> d!1180849 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1499 thiss!21717 rules!2999 lt!1406584 lt!1406583 (_2!24076 (v!39525 lt!1406624)) (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406730)))

(declare-fun bs!588366 () Bool)

(assert (= bs!588366 d!1180849))

(declare-fun m!4569037 () Bool)

(assert (=> bs!588366 m!4569037))

(assert (=> bs!588366 m!4568655))

(assert (=> bs!588366 m!4568655))

(assert (=> bs!588366 m!4568657))

(assert (=> bs!588366 m!4568653))

(assert (=> bs!588366 m!4568643))

(assert (=> bs!588366 m!4568707))

(assert (=> b!3990358 d!1180849))

(declare-fun d!1180883 () Bool)

(declare-fun e!2473794 () Bool)

(assert (=> d!1180883 e!2473794))

(declare-fun res!1619479 () Bool)

(assert (=> d!1180883 (=> res!1619479 e!2473794)))

(declare-fun lt!1406731 () Bool)

(assert (=> d!1180883 (= res!1619479 (not lt!1406731))))

(declare-fun e!2473793 () Bool)

(assert (=> d!1180883 (= lt!1406731 e!2473793)))

(declare-fun res!1619480 () Bool)

(assert (=> d!1180883 (=> res!1619480 e!2473793)))

(assert (=> d!1180883 (= res!1619480 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1180883 (= (isPrefix!3843 lt!1406584 (++!11158 lt!1406584 newSuffixResult!27)) lt!1406731)))

(declare-fun b!3990614 () Bool)

(declare-fun e!2473795 () Bool)

(assert (=> b!3990614 (= e!2473795 (isPrefix!3843 (tail!6223 lt!1406584) (tail!6223 (++!11158 lt!1406584 newSuffixResult!27))))))

(declare-fun b!3990615 () Bool)

(assert (=> b!3990615 (= e!2473794 (>= (size!31923 (++!11158 lt!1406584 newSuffixResult!27)) (size!31923 lt!1406584)))))

(declare-fun b!3990613 () Bool)

(declare-fun res!1619478 () Bool)

(assert (=> b!3990613 (=> (not res!1619478) (not e!2473795))))

(assert (=> b!3990613 (= res!1619478 (= (head!8491 lt!1406584) (head!8491 (++!11158 lt!1406584 newSuffixResult!27))))))

(declare-fun b!3990612 () Bool)

(assert (=> b!3990612 (= e!2473793 e!2473795)))

(declare-fun res!1619477 () Bool)

(assert (=> b!3990612 (=> (not res!1619477) (not e!2473795))))

(assert (=> b!3990612 (= res!1619477 (not ((_ is Nil!42682) (++!11158 lt!1406584 newSuffixResult!27))))))

(assert (= (and d!1180883 (not res!1619480)) b!3990612))

(assert (= (and b!3990612 res!1619477) b!3990613))

(assert (= (and b!3990613 res!1619478) b!3990614))

(assert (= (and d!1180883 (not res!1619479)) b!3990615))

(assert (=> b!3990614 m!4568845))

(assert (=> b!3990614 m!4568645))

(declare-fun m!4569041 () Bool)

(assert (=> b!3990614 m!4569041))

(assert (=> b!3990614 m!4568845))

(assert (=> b!3990614 m!4569041))

(declare-fun m!4569043 () Bool)

(assert (=> b!3990614 m!4569043))

(assert (=> b!3990615 m!4568645))

(declare-fun m!4569045 () Bool)

(assert (=> b!3990615 m!4569045))

(assert (=> b!3990615 m!4568653))

(assert (=> b!3990613 m!4568853))

(assert (=> b!3990613 m!4568645))

(declare-fun m!4569047 () Bool)

(assert (=> b!3990613 m!4569047))

(assert (=> b!3990358 d!1180883))

(declare-fun b!3990799 () Bool)

(declare-fun e!2473892 () Bool)

(declare-fun e!2473891 () Bool)

(assert (=> b!3990799 (= e!2473892 e!2473891)))

(declare-fun res!1619595 () Bool)

(assert (=> b!3990799 (=> (not res!1619595) (not e!2473891))))

(declare-fun lt!1406817 () Option!9170)

(declare-fun get!14044 (Option!9170) tuple2!41884)

(assert (=> b!3990799 (= res!1619595 (matchR!5638 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406817))))))))

(declare-fun b!3990800 () Bool)

(declare-fun res!1619601 () Bool)

(assert (=> b!3990800 (=> (not res!1619601) (not e!2473891))))

(assert (=> b!3990800 (= res!1619601 (= (++!11158 (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406817)))) (_2!24076 (get!14044 lt!1406817))) lt!1406583))))

(declare-fun d!1180885 () Bool)

(assert (=> d!1180885 e!2473892))

(declare-fun res!1619600 () Bool)

(assert (=> d!1180885 (=> res!1619600 e!2473892)))

(declare-fun isEmpty!25512 (Option!9170) Bool)

(assert (=> d!1180885 (= res!1619600 (isEmpty!25512 lt!1406817))))

(declare-fun e!2473893 () Option!9170)

(assert (=> d!1180885 (= lt!1406817 e!2473893)))

(declare-fun c!690702 () Bool)

(declare-datatypes ((tuple2!41888 0))(
  ( (tuple2!41889 (_1!24078 List!42806) (_2!24078 List!42806)) )
))
(declare-fun lt!1406815 () tuple2!41888)

(assert (=> d!1180885 (= c!690702 (isEmpty!25511 (_1!24078 lt!1406815)))))

(declare-fun findLongestMatch!1247 (Regex!11661 List!42806) tuple2!41888)

(assert (=> d!1180885 (= lt!1406815 (findLongestMatch!1247 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406583))))

(assert (=> d!1180885 (ruleValid!2688 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))

(assert (=> d!1180885 (= (maxPrefixOneRule!2677 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))) lt!1406583) lt!1406817)))

(declare-fun b!3990801 () Bool)

(declare-fun res!1619596 () Bool)

(assert (=> b!3990801 (=> (not res!1619596) (not e!2473891))))

(assert (=> b!3990801 (= res!1619596 (= (value!213180 (_1!24076 (get!14044 lt!1406817))) (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (get!14044 lt!1406817)))) (seqFromList!4995 (originalCharacters!7356 (_1!24076 (get!14044 lt!1406817)))))))))

(declare-fun b!3990802 () Bool)

(declare-fun res!1619599 () Bool)

(assert (=> b!3990802 (=> (not res!1619599) (not e!2473891))))

(assert (=> b!3990802 (= res!1619599 (< (size!31923 (_2!24076 (get!14044 lt!1406817))) (size!31923 lt!1406583)))))

(declare-fun b!3990803 () Bool)

(declare-fun e!2473894 () Bool)

(declare-fun findLongestMatchInner!1334 (Regex!11661 List!42806 Int List!42806 List!42806 Int) tuple2!41888)

(assert (=> b!3990803 (= e!2473894 (matchR!5638 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (_1!24078 (findLongestMatchInner!1334 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) Nil!42682 (size!31923 Nil!42682) lt!1406583 lt!1406583 (size!31923 lt!1406583)))))))

(declare-fun b!3990804 () Bool)

(assert (=> b!3990804 (= e!2473893 None!9169)))

(declare-fun b!3990805 () Bool)

(assert (=> b!3990805 (= e!2473891 (= (size!31922 (_1!24076 (get!14044 lt!1406817))) (size!31923 (originalCharacters!7356 (_1!24076 (get!14044 lt!1406817))))))))

(declare-fun b!3990806 () Bool)

(declare-fun res!1619598 () Bool)

(assert (=> b!3990806 (=> (not res!1619598) (not e!2473891))))

(assert (=> b!3990806 (= res!1619598 (= (rule!9774 (_1!24076 (get!14044 lt!1406817))) (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))

(declare-fun b!3990807 () Bool)

(declare-fun size!31925 (BalanceConc!25528) Int)

(assert (=> b!3990807 (= e!2473893 (Some!9169 (tuple2!41885 (Token!12651 (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (seqFromList!4995 (_1!24078 lt!1406815))) (rule!9774 (_1!24076 (v!39525 lt!1406624))) (size!31925 (seqFromList!4995 (_1!24078 lt!1406815))) (_1!24078 lt!1406815)) (_2!24078 lt!1406815))))))

(declare-fun lt!1406816 () Unit!61448)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1307 (Regex!11661 List!42806) Unit!61448)

(assert (=> b!3990807 (= lt!1406816 (longestMatchIsAcceptedByMatchOrIsEmpty!1307 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406583))))

(declare-fun res!1619597 () Bool)

(assert (=> b!3990807 (= res!1619597 (isEmpty!25511 (_1!24078 (findLongestMatchInner!1334 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) Nil!42682 (size!31923 Nil!42682) lt!1406583 lt!1406583 (size!31923 lt!1406583)))))))

(assert (=> b!3990807 (=> res!1619597 e!2473894)))

(assert (=> b!3990807 e!2473894))

(declare-fun lt!1406814 () Unit!61448)

(assert (=> b!3990807 (= lt!1406814 lt!1406816)))

(declare-fun lt!1406818 () Unit!61448)

(declare-fun lemmaSemiInverse!1850 (TokenValueInjection!13400 BalanceConc!25528) Unit!61448)

(assert (=> b!3990807 (= lt!1406818 (lemmaSemiInverse!1850 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (seqFromList!4995 (_1!24078 lt!1406815))))))

(assert (= (and d!1180885 c!690702) b!3990804))

(assert (= (and d!1180885 (not c!690702)) b!3990807))

(assert (= (and b!3990807 (not res!1619597)) b!3990803))

(assert (= (and d!1180885 (not res!1619600)) b!3990799))

(assert (= (and b!3990799 res!1619595) b!3990800))

(assert (= (and b!3990800 res!1619601) b!3990802))

(assert (= (and b!3990802 res!1619599) b!3990806))

(assert (= (and b!3990806 res!1619598) b!3990801))

(assert (= (and b!3990801 res!1619596) b!3990805))

(declare-fun m!4569373 () Bool)

(assert (=> b!3990801 m!4569373))

(declare-fun m!4569377 () Bool)

(assert (=> b!3990801 m!4569377))

(assert (=> b!3990801 m!4569377))

(declare-fun m!4569379 () Bool)

(assert (=> b!3990801 m!4569379))

(assert (=> b!3990799 m!4569373))

(declare-fun m!4569381 () Bool)

(assert (=> b!3990799 m!4569381))

(assert (=> b!3990799 m!4569381))

(declare-fun m!4569385 () Bool)

(assert (=> b!3990799 m!4569385))

(assert (=> b!3990799 m!4569385))

(declare-fun m!4569387 () Bool)

(assert (=> b!3990799 m!4569387))

(assert (=> b!3990806 m!4569373))

(assert (=> b!3990800 m!4569373))

(assert (=> b!3990800 m!4569381))

(assert (=> b!3990800 m!4569381))

(assert (=> b!3990800 m!4569385))

(assert (=> b!3990800 m!4569385))

(declare-fun m!4569389 () Bool)

(assert (=> b!3990800 m!4569389))

(assert (=> b!3990802 m!4569373))

(declare-fun m!4569391 () Bool)

(assert (=> b!3990802 m!4569391))

(assert (=> b!3990802 m!4568851))

(assert (=> b!3990805 m!4569373))

(declare-fun m!4569393 () Bool)

(assert (=> b!3990805 m!4569393))

(assert (=> b!3990807 m!4568851))

(declare-fun m!4569395 () Bool)

(assert (=> b!3990807 m!4569395))

(declare-fun m!4569397 () Bool)

(assert (=> b!3990807 m!4569397))

(declare-fun m!4569399 () Bool)

(assert (=> b!3990807 m!4569399))

(assert (=> b!3990807 m!4569395))

(declare-fun m!4569401 () Bool)

(assert (=> b!3990807 m!4569401))

(assert (=> b!3990807 m!4568851))

(declare-fun m!4569403 () Bool)

(assert (=> b!3990807 m!4569403))

(assert (=> b!3990807 m!4569395))

(declare-fun m!4569405 () Bool)

(assert (=> b!3990807 m!4569405))

(declare-fun m!4569407 () Bool)

(assert (=> b!3990807 m!4569407))

(assert (=> b!3990807 m!4569395))

(declare-fun m!4569409 () Bool)

(assert (=> b!3990807 m!4569409))

(assert (=> b!3990807 m!4569401))

(declare-fun m!4569411 () Bool)

(assert (=> d!1180885 m!4569411))

(declare-fun m!4569413 () Bool)

(assert (=> d!1180885 m!4569413))

(declare-fun m!4569415 () Bool)

(assert (=> d!1180885 m!4569415))

(assert (=> d!1180885 m!4568661))

(assert (=> b!3990803 m!4569401))

(assert (=> b!3990803 m!4568851))

(assert (=> b!3990803 m!4569401))

(assert (=> b!3990803 m!4568851))

(assert (=> b!3990803 m!4569403))

(declare-fun m!4569417 () Bool)

(assert (=> b!3990803 m!4569417))

(assert (=> b!3990358 d!1180885))

(declare-fun d!1180989 () Bool)

(assert (=> d!1180989 (= (size!31922 (_1!24076 (v!39525 lt!1406624))) (size!31923 (originalCharacters!7356 (_1!24076 (v!39525 lt!1406624)))))))

(declare-fun Unit!61455 () Unit!61448)

(assert (=> d!1180989 (= (lemmaCharactersSize!1351 (_1!24076 (v!39525 lt!1406624))) Unit!61455)))

(declare-fun bs!588387 () Bool)

(assert (= bs!588387 d!1180989))

(declare-fun m!4569423 () Bool)

(assert (=> bs!588387 m!4569423))

(assert (=> b!3990358 d!1180989))

(declare-fun d!1180995 () Bool)

(assert (=> d!1180995 (isPrefix!3843 lt!1406584 (++!11158 lt!1406584 (_2!24076 (v!39525 lt!1406624))))))

(declare-fun lt!1406830 () Unit!61448)

(declare-fun choose!23999 (List!42806 List!42806) Unit!61448)

(assert (=> d!1180995 (= lt!1406830 (choose!23999 lt!1406584 (_2!24076 (v!39525 lt!1406624))))))

(assert (=> d!1180995 (= (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406584 (_2!24076 (v!39525 lt!1406624))) lt!1406830)))

(declare-fun bs!588389 () Bool)

(assert (= bs!588389 d!1180995))

(assert (=> bs!588389 m!4568637))

(assert (=> bs!588389 m!4568637))

(declare-fun m!4569437 () Bool)

(assert (=> bs!588389 m!4569437))

(declare-fun m!4569439 () Bool)

(assert (=> bs!588389 m!4569439))

(assert (=> b!3990358 d!1180995))

(declare-fun d!1180999 () Bool)

(declare-fun fromListB!2292 (List!42806) BalanceConc!25528)

(assert (=> d!1180999 (= (seqFromList!4995 lt!1406584) (fromListB!2292 lt!1406584))))

(declare-fun bs!588390 () Bool)

(assert (= bs!588390 d!1180999))

(declare-fun m!4569441 () Bool)

(assert (=> bs!588390 m!4569441))

(assert (=> b!3990358 d!1180999))

(declare-fun b!3990846 () Bool)

(declare-fun e!2473916 () List!42806)

(assert (=> b!3990846 (= e!2473916 (_2!24076 (v!39525 lt!1406624)))))

(declare-fun lt!1406831 () List!42806)

(declare-fun b!3990849 () Bool)

(declare-fun e!2473917 () Bool)

(assert (=> b!3990849 (= e!2473917 (or (not (= (_2!24076 (v!39525 lt!1406624)) Nil!42682)) (= lt!1406831 lt!1406584)))))

(declare-fun d!1181001 () Bool)

(assert (=> d!1181001 e!2473917))

(declare-fun res!1619610 () Bool)

(assert (=> d!1181001 (=> (not res!1619610) (not e!2473917))))

(assert (=> d!1181001 (= res!1619610 (= (content!6473 lt!1406831) ((_ map or) (content!6473 lt!1406584) (content!6473 (_2!24076 (v!39525 lt!1406624))))))))

(assert (=> d!1181001 (= lt!1406831 e!2473916)))

(declare-fun c!690707 () Bool)

(assert (=> d!1181001 (= c!690707 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181001 (= (++!11158 lt!1406584 (_2!24076 (v!39525 lt!1406624))) lt!1406831)))

(declare-fun b!3990847 () Bool)

(assert (=> b!3990847 (= e!2473916 (Cons!42682 (h!48102 lt!1406584) (++!11158 (t!331749 lt!1406584) (_2!24076 (v!39525 lt!1406624)))))))

(declare-fun b!3990848 () Bool)

(declare-fun res!1619611 () Bool)

(assert (=> b!3990848 (=> (not res!1619611) (not e!2473917))))

(assert (=> b!3990848 (= res!1619611 (= (size!31923 lt!1406831) (+ (size!31923 lt!1406584) (size!31923 (_2!24076 (v!39525 lt!1406624))))))))

(assert (= (and d!1181001 c!690707) b!3990846))

(assert (= (and d!1181001 (not c!690707)) b!3990847))

(assert (= (and d!1181001 res!1619610) b!3990848))

(assert (= (and b!3990848 res!1619611) b!3990849))

(declare-fun m!4569443 () Bool)

(assert (=> d!1181001 m!4569443))

(declare-fun m!4569445 () Bool)

(assert (=> d!1181001 m!4569445))

(declare-fun m!4569447 () Bool)

(assert (=> d!1181001 m!4569447))

(declare-fun m!4569449 () Bool)

(assert (=> b!3990847 m!4569449))

(declare-fun m!4569451 () Bool)

(assert (=> b!3990848 m!4569451))

(assert (=> b!3990848 m!4568653))

(declare-fun m!4569453 () Bool)

(assert (=> b!3990848 m!4569453))

(assert (=> b!3990358 d!1181001))

(declare-fun d!1181003 () Bool)

(assert (=> d!1181003 (isPrefix!3843 lt!1406584 (++!11158 lt!1406584 newSuffixResult!27))))

(declare-fun lt!1406832 () Unit!61448)

(assert (=> d!1181003 (= lt!1406832 (choose!23999 lt!1406584 newSuffixResult!27))))

(assert (=> d!1181003 (= (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406584 newSuffixResult!27) lt!1406832)))

(declare-fun bs!588391 () Bool)

(assert (= bs!588391 d!1181003))

(assert (=> bs!588391 m!4568645))

(assert (=> bs!588391 m!4568645))

(assert (=> bs!588391 m!4568651))

(declare-fun m!4569455 () Bool)

(assert (=> bs!588391 m!4569455))

(assert (=> b!3990358 d!1181003))

(declare-fun d!1181005 () Bool)

(declare-fun e!2473923 () Bool)

(assert (=> d!1181005 e!2473923))

(declare-fun res!1619614 () Bool)

(assert (=> d!1181005 (=> res!1619614 e!2473923)))

(declare-fun lt!1406833 () Bool)

(assert (=> d!1181005 (= res!1619614 (not lt!1406833))))

(declare-fun e!2473922 () Bool)

(assert (=> d!1181005 (= lt!1406833 e!2473922)))

(declare-fun res!1619615 () Bool)

(assert (=> d!1181005 (=> res!1619615 e!2473922)))

(assert (=> d!1181005 (= res!1619615 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181005 (= (isPrefix!3843 lt!1406584 lt!1406598) lt!1406833)))

(declare-fun b!3990855 () Bool)

(declare-fun e!2473924 () Bool)

(assert (=> b!3990855 (= e!2473924 (isPrefix!3843 (tail!6223 lt!1406584) (tail!6223 lt!1406598)))))

(declare-fun b!3990856 () Bool)

(assert (=> b!3990856 (= e!2473923 (>= (size!31923 lt!1406598) (size!31923 lt!1406584)))))

(declare-fun b!3990854 () Bool)

(declare-fun res!1619613 () Bool)

(assert (=> b!3990854 (=> (not res!1619613) (not e!2473924))))

(assert (=> b!3990854 (= res!1619613 (= (head!8491 lt!1406584) (head!8491 lt!1406598)))))

(declare-fun b!3990853 () Bool)

(assert (=> b!3990853 (= e!2473922 e!2473924)))

(declare-fun res!1619612 () Bool)

(assert (=> b!3990853 (=> (not res!1619612) (not e!2473924))))

(assert (=> b!3990853 (= res!1619612 (not ((_ is Nil!42682) lt!1406598)))))

(assert (= (and d!1181005 (not res!1619615)) b!3990853))

(assert (= (and b!3990853 res!1619612) b!3990854))

(assert (= (and b!3990854 res!1619613) b!3990855))

(assert (= (and d!1181005 (not res!1619614)) b!3990856))

(assert (=> b!3990855 m!4568845))

(declare-fun m!4569457 () Bool)

(assert (=> b!3990855 m!4569457))

(assert (=> b!3990855 m!4568845))

(assert (=> b!3990855 m!4569457))

(declare-fun m!4569461 () Bool)

(assert (=> b!3990855 m!4569461))

(declare-fun m!4569465 () Bool)

(assert (=> b!3990856 m!4569465))

(assert (=> b!3990856 m!4568653))

(assert (=> b!3990854 m!4568853))

(declare-fun m!4569467 () Bool)

(assert (=> b!3990854 m!4569467))

(assert (=> b!3990358 d!1181005))

(declare-fun d!1181007 () Bool)

(declare-fun list!15848 (Conc!12967) List!42806)

(assert (=> d!1181007 (= (list!15846 (charsOf!4572 (_1!24076 (v!39525 lt!1406624)))) (list!15848 (c!690624 (charsOf!4572 (_1!24076 (v!39525 lt!1406624))))))))

(declare-fun bs!588392 () Bool)

(assert (= bs!588392 d!1181007))

(declare-fun m!4569469 () Bool)

(assert (=> bs!588392 m!4569469))

(assert (=> b!3990358 d!1181007))

(declare-fun d!1181009 () Bool)

(declare-fun e!2473936 () Bool)

(assert (=> d!1181009 e!2473936))

(declare-fun res!1619618 () Bool)

(assert (=> d!1181009 (=> (not res!1619618) (not e!2473936))))

(declare-fun semiInverseModEq!2897 (Int Int) Bool)

(assert (=> d!1181009 (= res!1619618 (semiInverseModEq!2897 (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) (toValue!9244 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))))

(declare-fun Unit!61456 () Unit!61448)

(assert (=> d!1181009 (= (lemmaInv!971 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) Unit!61456)))

(declare-fun b!3990873 () Bool)

(declare-fun equivClasses!2796 (Int Int) Bool)

(assert (=> b!3990873 (= e!2473936 (equivClasses!2796 (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) (toValue!9244 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))))

(assert (= (and d!1181009 res!1619618) b!3990873))

(declare-fun m!4569471 () Bool)

(assert (=> d!1181009 m!4569471))

(declare-fun m!4569473 () Bool)

(assert (=> b!3990873 m!4569473))

(assert (=> b!3990358 d!1181009))

(declare-fun d!1181011 () Bool)

(declare-fun dynLambda!18133 (Int BalanceConc!25528) TokenValue!6986)

(assert (=> d!1181011 (= (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (seqFromList!4995 lt!1406584)) (dynLambda!18133 (toValue!9244 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) (seqFromList!4995 lt!1406584)))))

(declare-fun b_lambda!116515 () Bool)

(assert (=> (not b_lambda!116515) (not d!1181011)))

(declare-fun t!331785 () Bool)

(declare-fun tb!240237 () Bool)

(assert (=> (and b!3990347 (= (toValue!9244 (transformation!6756 (h!48104 rules!2999))) (toValue!9244 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))) t!331785) tb!240237))

(declare-fun result!291090 () Bool)

(assert (=> tb!240237 (= result!291090 (inv!21 (dynLambda!18133 (toValue!9244 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))) (seqFromList!4995 lt!1406584))))))

(declare-fun m!4569475 () Bool)

(assert (=> tb!240237 m!4569475))

(assert (=> d!1181011 t!331785))

(declare-fun b_and!306631 () Bool)

(assert (= b_and!306591 (and (=> t!331785 result!291090) b_and!306631)))

(declare-fun t!331787 () Bool)

(declare-fun tb!240239 () Bool)

(assert (=> (and b!3990344 (= (toValue!9244 (transformation!6756 (rule!9774 token!484))) (toValue!9244 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))) t!331787) tb!240239))

(declare-fun result!291094 () Bool)

(assert (= result!291094 result!291090))

(assert (=> d!1181011 t!331787))

(declare-fun b_and!306633 () Bool)

(assert (= b_and!306595 (and (=> t!331787 result!291094) b_and!306633)))

(assert (=> d!1181011 m!4568655))

(declare-fun m!4569477 () Bool)

(assert (=> d!1181011 m!4569477))

(assert (=> b!3990358 d!1181011))

(declare-fun d!1181013 () Bool)

(assert (=> d!1181013 (= (size!31922 token!484) (size!31923 (originalCharacters!7356 token!484)))))

(declare-fun Unit!61458 () Unit!61448)

(assert (=> d!1181013 (= (lemmaCharactersSize!1351 token!484) Unit!61458)))

(declare-fun bs!588393 () Bool)

(assert (= bs!588393 d!1181013))

(assert (=> bs!588393 m!4568665))

(assert (=> b!3990358 d!1181013))

(declare-fun d!1181015 () Bool)

(declare-fun lt!1406834 () Int)

(assert (=> d!1181015 (>= lt!1406834 0)))

(declare-fun e!2473940 () Int)

(assert (=> d!1181015 (= lt!1406834 e!2473940)))

(declare-fun c!690708 () Bool)

(assert (=> d!1181015 (= c!690708 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181015 (= (size!31923 lt!1406584) lt!1406834)))

(declare-fun b!3990876 () Bool)

(assert (=> b!3990876 (= e!2473940 0)))

(declare-fun b!3990877 () Bool)

(assert (=> b!3990877 (= e!2473940 (+ 1 (size!31923 (t!331749 lt!1406584))))))

(assert (= (and d!1181015 c!690708) b!3990876))

(assert (= (and d!1181015 (not c!690708)) b!3990877))

(declare-fun m!4569479 () Bool)

(assert (=> b!3990877 m!4569479))

(assert (=> b!3990358 d!1181015))

(declare-fun d!1181017 () Bool)

(assert (=> d!1181017 (ruleValid!2688 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))

(declare-fun lt!1406837 () Unit!61448)

(declare-fun choose!24000 (LexerInterface!6345 Rule!13312 List!42808) Unit!61448)

(assert (=> d!1181017 (= lt!1406837 (choose!24000 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))) rules!2999))))

(declare-fun contains!8493 (List!42808 Rule!13312) Bool)

(assert (=> d!1181017 (contains!8493 rules!2999 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))

(assert (=> d!1181017 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1762 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624))) rules!2999) lt!1406837)))

(declare-fun bs!588394 () Bool)

(assert (= bs!588394 d!1181017))

(assert (=> bs!588394 m!4568661))

(declare-fun m!4569481 () Bool)

(assert (=> bs!588394 m!4569481))

(declare-fun m!4569483 () Bool)

(assert (=> bs!588394 m!4569483))

(assert (=> b!3990358 d!1181017))

(declare-fun b!3990878 () Bool)

(declare-fun e!2473941 () List!42806)

(assert (=> b!3990878 (= e!2473941 newSuffixResult!27)))

(declare-fun lt!1406838 () List!42806)

(declare-fun e!2473942 () Bool)

(declare-fun b!3990881 () Bool)

(assert (=> b!3990881 (= e!2473942 (or (not (= newSuffixResult!27 Nil!42682)) (= lt!1406838 lt!1406584)))))

(declare-fun d!1181019 () Bool)

(assert (=> d!1181019 e!2473942))

(declare-fun res!1619619 () Bool)

(assert (=> d!1181019 (=> (not res!1619619) (not e!2473942))))

(assert (=> d!1181019 (= res!1619619 (= (content!6473 lt!1406838) ((_ map or) (content!6473 lt!1406584) (content!6473 newSuffixResult!27))))))

(assert (=> d!1181019 (= lt!1406838 e!2473941)))

(declare-fun c!690709 () Bool)

(assert (=> d!1181019 (= c!690709 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181019 (= (++!11158 lt!1406584 newSuffixResult!27) lt!1406838)))

(declare-fun b!3990879 () Bool)

(assert (=> b!3990879 (= e!2473941 (Cons!42682 (h!48102 lt!1406584) (++!11158 (t!331749 lt!1406584) newSuffixResult!27)))))

(declare-fun b!3990880 () Bool)

(declare-fun res!1619620 () Bool)

(assert (=> b!3990880 (=> (not res!1619620) (not e!2473942))))

(assert (=> b!3990880 (= res!1619620 (= (size!31923 lt!1406838) (+ (size!31923 lt!1406584) (size!31923 newSuffixResult!27))))))

(assert (= (and d!1181019 c!690709) b!3990878))

(assert (= (and d!1181019 (not c!690709)) b!3990879))

(assert (= (and d!1181019 res!1619619) b!3990880))

(assert (= (and b!3990880 res!1619620) b!3990881))

(declare-fun m!4569485 () Bool)

(assert (=> d!1181019 m!4569485))

(assert (=> d!1181019 m!4569445))

(assert (=> d!1181019 m!4568941))

(declare-fun m!4569487 () Bool)

(assert (=> b!3990879 m!4569487))

(declare-fun m!4569489 () Bool)

(assert (=> b!3990880 m!4569489))

(assert (=> b!3990880 m!4568653))

(assert (=> b!3990880 m!4568947))

(assert (=> b!3990358 d!1181019))

(declare-fun d!1181021 () Bool)

(declare-fun res!1619625 () Bool)

(declare-fun e!2473945 () Bool)

(assert (=> d!1181021 (=> (not res!1619625) (not e!2473945))))

(declare-fun validRegex!5290 (Regex!11661) Bool)

(assert (=> d!1181021 (= res!1619625 (validRegex!5290 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))

(assert (=> d!1181021 (= (ruleValid!2688 thiss!21717 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) e!2473945)))

(declare-fun b!3990886 () Bool)

(declare-fun res!1619626 () Bool)

(assert (=> b!3990886 (=> (not res!1619626) (not e!2473945))))

(declare-fun nullable!4090 (Regex!11661) Bool)

(assert (=> b!3990886 (= res!1619626 (not (nullable!4090 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))))

(declare-fun b!3990887 () Bool)

(assert (=> b!3990887 (= e!2473945 (not (= (tag!7616 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (String!48649 ""))))))

(assert (= (and d!1181021 res!1619625) b!3990886))

(assert (= (and b!3990886 res!1619626) b!3990887))

(declare-fun m!4569491 () Bool)

(assert (=> d!1181021 m!4569491))

(declare-fun m!4569493 () Bool)

(assert (=> b!3990886 m!4569493))

(assert (=> b!3990358 d!1181021))

(declare-fun b!3990898 () Bool)

(declare-fun res!1619629 () Bool)

(declare-fun e!2473952 () Bool)

(assert (=> b!3990898 (=> res!1619629 e!2473952)))

(assert (=> b!3990898 (= res!1619629 (not ((_ is IntegerValue!20960) (value!213180 token!484))))))

(declare-fun e!2473953 () Bool)

(assert (=> b!3990898 (= e!2473953 e!2473952)))

(declare-fun b!3990899 () Bool)

(declare-fun e!2473954 () Bool)

(declare-fun inv!16 (TokenValue!6986) Bool)

(assert (=> b!3990899 (= e!2473954 (inv!16 (value!213180 token!484)))))

(declare-fun b!3990900 () Bool)

(assert (=> b!3990900 (= e!2473954 e!2473953)))

(declare-fun c!690715 () Bool)

(assert (=> b!3990900 (= c!690715 ((_ is IntegerValue!20959) (value!213180 token!484)))))

(declare-fun b!3990901 () Bool)

(declare-fun inv!17 (TokenValue!6986) Bool)

(assert (=> b!3990901 (= e!2473953 (inv!17 (value!213180 token!484)))))

(declare-fun b!3990902 () Bool)

(declare-fun inv!15 (TokenValue!6986) Bool)

(assert (=> b!3990902 (= e!2473952 (inv!15 (value!213180 token!484)))))

(declare-fun d!1181023 () Bool)

(declare-fun c!690714 () Bool)

(assert (=> d!1181023 (= c!690714 ((_ is IntegerValue!20958) (value!213180 token!484)))))

(assert (=> d!1181023 (= (inv!21 (value!213180 token!484)) e!2473954)))

(assert (= (and d!1181023 c!690714) b!3990899))

(assert (= (and d!1181023 (not c!690714)) b!3990900))

(assert (= (and b!3990900 c!690715) b!3990901))

(assert (= (and b!3990900 (not c!690715)) b!3990898))

(assert (= (and b!3990898 (not res!1619629)) b!3990902))

(declare-fun m!4569495 () Bool)

(assert (=> b!3990899 m!4569495))

(declare-fun m!4569497 () Bool)

(assert (=> b!3990901 m!4569497))

(declare-fun m!4569499 () Bool)

(assert (=> b!3990902 m!4569499))

(assert (=> b!3990337 d!1181023))

(declare-fun d!1181025 () Bool)

(declare-fun lt!1406841 () Int)

(assert (=> d!1181025 (>= lt!1406841 0)))

(declare-fun e!2473960 () Int)

(assert (=> d!1181025 (= lt!1406841 e!2473960)))

(declare-fun c!690721 () Bool)

(assert (=> d!1181025 (= c!690721 (and ((_ is Cons!42684) rules!2999) (= (h!48104 rules!2999) (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))

(assert (=> d!1181025 (contains!8493 rules!2999 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))

(assert (=> d!1181025 (= (getIndex!526 rules!2999 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406841)))

(declare-fun b!3990912 () Bool)

(declare-fun e!2473961 () Int)

(assert (=> b!3990912 (= e!2473960 e!2473961)))

(declare-fun c!690720 () Bool)

(assert (=> b!3990912 (= c!690720 (and ((_ is Cons!42684) rules!2999) (not (= (h!48104 rules!2999) (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))))

(declare-fun b!3990911 () Bool)

(assert (=> b!3990911 (= e!2473960 0)))

(declare-fun b!3990913 () Bool)

(assert (=> b!3990913 (= e!2473961 (+ 1 (getIndex!526 (t!331751 rules!2999) (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))

(declare-fun b!3990914 () Bool)

(assert (=> b!3990914 (= e!2473961 (- 1))))

(assert (= (and d!1181025 c!690721) b!3990911))

(assert (= (and d!1181025 (not c!690721)) b!3990912))

(assert (= (and b!3990912 c!690720) b!3990913))

(assert (= (and b!3990912 (not c!690720)) b!3990914))

(assert (=> d!1181025 m!4569483))

(declare-fun m!4569501 () Bool)

(assert (=> b!3990913 m!4569501))

(assert (=> b!3990346 d!1181025))

(declare-fun d!1181027 () Bool)

(declare-fun lt!1406842 () Int)

(assert (=> d!1181027 (>= lt!1406842 0)))

(declare-fun e!2473962 () Int)

(assert (=> d!1181027 (= lt!1406842 e!2473962)))

(declare-fun c!690723 () Bool)

(assert (=> d!1181027 (= c!690723 (and ((_ is Cons!42684) rules!2999) (= (h!48104 rules!2999) (rule!9774 token!484))))))

(assert (=> d!1181027 (contains!8493 rules!2999 (rule!9774 token!484))))

(assert (=> d!1181027 (= (getIndex!526 rules!2999 (rule!9774 token!484)) lt!1406842)))

(declare-fun b!3990916 () Bool)

(declare-fun e!2473963 () Int)

(assert (=> b!3990916 (= e!2473962 e!2473963)))

(declare-fun c!690722 () Bool)

(assert (=> b!3990916 (= c!690722 (and ((_ is Cons!42684) rules!2999) (not (= (h!48104 rules!2999) (rule!9774 token!484)))))))

(declare-fun b!3990915 () Bool)

(assert (=> b!3990915 (= e!2473962 0)))

(declare-fun b!3990917 () Bool)

(assert (=> b!3990917 (= e!2473963 (+ 1 (getIndex!526 (t!331751 rules!2999) (rule!9774 token!484))))))

(declare-fun b!3990918 () Bool)

(assert (=> b!3990918 (= e!2473963 (- 1))))

(assert (= (and d!1181027 c!690723) b!3990915))

(assert (= (and d!1181027 (not c!690723)) b!3990916))

(assert (= (and b!3990916 c!690722) b!3990917))

(assert (= (and b!3990916 (not c!690722)) b!3990918))

(declare-fun m!4569503 () Bool)

(assert (=> d!1181027 m!4569503))

(declare-fun m!4569505 () Bool)

(assert (=> b!3990917 m!4569505))

(assert (=> b!3990346 d!1181027))

(declare-fun d!1181029 () Bool)

(assert (=> d!1181029 (= (_2!24076 (v!39525 lt!1406624)) newSuffixResult!27)))

(declare-fun lt!1406845 () Unit!61448)

(declare-fun choose!24002 (List!42806 List!42806 List!42806 List!42806 List!42806) Unit!61448)

(assert (=> d!1181029 (= lt!1406845 (choose!24002 lt!1406584 (_2!24076 (v!39525 lt!1406624)) lt!1406612 newSuffixResult!27 lt!1406583))))

(assert (=> d!1181029 (isPrefix!3843 lt!1406584 lt!1406583)))

(assert (=> d!1181029 (= (lemmaSamePrefixThenSameSuffix!2030 lt!1406584 (_2!24076 (v!39525 lt!1406624)) lt!1406612 newSuffixResult!27 lt!1406583) lt!1406845)))

(declare-fun bs!588395 () Bool)

(assert (= bs!588395 d!1181029))

(declare-fun m!4569507 () Bool)

(assert (=> bs!588395 m!4569507))

(assert (=> bs!588395 m!4568699))

(assert (=> b!3990346 d!1181029))

(declare-fun d!1181031 () Bool)

(assert (=> d!1181031 (= lt!1406584 lt!1406612)))

(declare-fun lt!1406848 () Unit!61448)

(declare-fun choose!24003 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> d!1181031 (= lt!1406848 (choose!24003 lt!1406584 lt!1406612 lt!1406583))))

(assert (=> d!1181031 (isPrefix!3843 lt!1406584 lt!1406583)))

(assert (=> d!1181031 (= (lemmaIsPrefixSameLengthThenSameList!865 lt!1406584 lt!1406612 lt!1406583) lt!1406848)))

(declare-fun bs!588396 () Bool)

(assert (= bs!588396 d!1181031))

(declare-fun m!4569509 () Bool)

(assert (=> bs!588396 m!4569509))

(assert (=> bs!588396 m!4568699))

(assert (=> b!3990346 d!1181031))

(declare-fun b!3990947 () Bool)

(declare-fun e!2473981 () Bool)

(declare-fun lt!1406851 () Bool)

(assert (=> b!3990947 (= e!2473981 (not lt!1406851))))

(declare-fun b!3990948 () Bool)

(declare-fun e!2473980 () Bool)

(assert (=> b!3990948 (= e!2473980 (nullable!4090 (regex!6756 (rule!9774 token!484))))))

(declare-fun b!3990949 () Bool)

(declare-fun res!1619653 () Bool)

(declare-fun e!2473978 () Bool)

(assert (=> b!3990949 (=> res!1619653 e!2473978)))

(assert (=> b!3990949 (= res!1619653 (not ((_ is ElementMatch!11661) (regex!6756 (rule!9774 token!484)))))))

(assert (=> b!3990949 (= e!2473981 e!2473978)))

(declare-fun b!3990950 () Bool)

(declare-fun res!1619646 () Bool)

(assert (=> b!3990950 (=> res!1619646 e!2473978)))

(declare-fun e!2473979 () Bool)

(assert (=> b!3990950 (= res!1619646 e!2473979)))

(declare-fun res!1619652 () Bool)

(assert (=> b!3990950 (=> (not res!1619652) (not e!2473979))))

(assert (=> b!3990950 (= res!1619652 lt!1406851)))

(declare-fun b!3990951 () Bool)

(declare-fun res!1619651 () Bool)

(assert (=> b!3990951 (=> (not res!1619651) (not e!2473979))))

(declare-fun call!285827 () Bool)

(assert (=> b!3990951 (= res!1619651 (not call!285827))))

(declare-fun b!3990952 () Bool)

(declare-fun e!2473982 () Bool)

(assert (=> b!3990952 (= e!2473978 e!2473982)))

(declare-fun res!1619650 () Bool)

(assert (=> b!3990952 (=> (not res!1619650) (not e!2473982))))

(assert (=> b!3990952 (= res!1619650 (not lt!1406851))))

(declare-fun bm!285822 () Bool)

(assert (=> bm!285822 (= call!285827 (isEmpty!25511 lt!1406612))))

(declare-fun b!3990953 () Bool)

(assert (=> b!3990953 (= e!2473979 (= (head!8491 lt!1406612) (c!690625 (regex!6756 (rule!9774 token!484)))))))

(declare-fun b!3990954 () Bool)

(declare-fun e!2473984 () Bool)

(assert (=> b!3990954 (= e!2473984 (not (= (head!8491 lt!1406612) (c!690625 (regex!6756 (rule!9774 token!484))))))))

(declare-fun b!3990955 () Bool)

(declare-fun e!2473983 () Bool)

(assert (=> b!3990955 (= e!2473983 e!2473981)))

(declare-fun c!690730 () Bool)

(assert (=> b!3990955 (= c!690730 ((_ is EmptyLang!11661) (regex!6756 (rule!9774 token!484))))))

(declare-fun b!3990956 () Bool)

(declare-fun res!1619648 () Bool)

(assert (=> b!3990956 (=> res!1619648 e!2473984)))

(assert (=> b!3990956 (= res!1619648 (not (isEmpty!25511 (tail!6223 lt!1406612))))))

(declare-fun b!3990957 () Bool)

(assert (=> b!3990957 (= e!2473982 e!2473984)))

(declare-fun res!1619649 () Bool)

(assert (=> b!3990957 (=> res!1619649 e!2473984)))

(assert (=> b!3990957 (= res!1619649 call!285827)))

(declare-fun b!3990958 () Bool)

(declare-fun res!1619647 () Bool)

(assert (=> b!3990958 (=> (not res!1619647) (not e!2473979))))

(assert (=> b!3990958 (= res!1619647 (isEmpty!25511 (tail!6223 lt!1406612)))))

(declare-fun b!3990959 () Bool)

(assert (=> b!3990959 (= e!2473983 (= lt!1406851 call!285827))))

(declare-fun d!1181033 () Bool)

(assert (=> d!1181033 e!2473983))

(declare-fun c!690731 () Bool)

(assert (=> d!1181033 (= c!690731 ((_ is EmptyExpr!11661) (regex!6756 (rule!9774 token!484))))))

(assert (=> d!1181033 (= lt!1406851 e!2473980)))

(declare-fun c!690732 () Bool)

(assert (=> d!1181033 (= c!690732 (isEmpty!25511 lt!1406612))))

(assert (=> d!1181033 (validRegex!5290 (regex!6756 (rule!9774 token!484)))))

(assert (=> d!1181033 (= (matchR!5638 (regex!6756 (rule!9774 token!484)) lt!1406612) lt!1406851)))

(declare-fun b!3990960 () Bool)

(declare-fun derivativeStep!3501 (Regex!11661 C!23508) Regex!11661)

(assert (=> b!3990960 (= e!2473980 (matchR!5638 (derivativeStep!3501 (regex!6756 (rule!9774 token!484)) (head!8491 lt!1406612)) (tail!6223 lt!1406612)))))

(assert (= (and d!1181033 c!690732) b!3990948))

(assert (= (and d!1181033 (not c!690732)) b!3990960))

(assert (= (and d!1181033 c!690731) b!3990959))

(assert (= (and d!1181033 (not c!690731)) b!3990955))

(assert (= (and b!3990955 c!690730) b!3990947))

(assert (= (and b!3990955 (not c!690730)) b!3990949))

(assert (= (and b!3990949 (not res!1619653)) b!3990950))

(assert (= (and b!3990950 res!1619652) b!3990951))

(assert (= (and b!3990951 res!1619651) b!3990958))

(assert (= (and b!3990958 res!1619647) b!3990953))

(assert (= (and b!3990950 (not res!1619646)) b!3990952))

(assert (= (and b!3990952 res!1619650) b!3990957))

(assert (= (and b!3990957 (not res!1619649)) b!3990956))

(assert (= (and b!3990956 (not res!1619648)) b!3990954))

(assert (= (or b!3990959 b!3990951 b!3990957) bm!285822))

(assert (=> b!3990954 m!4568923))

(declare-fun m!4569511 () Bool)

(assert (=> d!1181033 m!4569511))

(declare-fun m!4569513 () Bool)

(assert (=> d!1181033 m!4569513))

(assert (=> b!3990960 m!4568923))

(assert (=> b!3990960 m!4568923))

(declare-fun m!4569515 () Bool)

(assert (=> b!3990960 m!4569515))

(assert (=> b!3990960 m!4568919))

(assert (=> b!3990960 m!4569515))

(assert (=> b!3990960 m!4568919))

(declare-fun m!4569517 () Bool)

(assert (=> b!3990960 m!4569517))

(assert (=> bm!285822 m!4569511))

(assert (=> b!3990953 m!4568923))

(assert (=> b!3990958 m!4568919))

(assert (=> b!3990958 m!4568919))

(declare-fun m!4569519 () Bool)

(assert (=> b!3990958 m!4569519))

(assert (=> b!3990956 m!4568919))

(assert (=> b!3990956 m!4568919))

(assert (=> b!3990956 m!4569519))

(declare-fun m!4569521 () Bool)

(assert (=> b!3990948 m!4569521))

(assert (=> b!3990367 d!1181033))

(declare-fun d!1181035 () Bool)

(declare-fun e!2473986 () Bool)

(assert (=> d!1181035 e!2473986))

(declare-fun res!1619656 () Bool)

(assert (=> d!1181035 (=> res!1619656 e!2473986)))

(declare-fun lt!1406852 () Bool)

(assert (=> d!1181035 (= res!1619656 (not lt!1406852))))

(declare-fun e!2473985 () Bool)

(assert (=> d!1181035 (= lt!1406852 e!2473985)))

(declare-fun res!1619657 () Bool)

(assert (=> d!1181035 (=> res!1619657 e!2473985)))

(assert (=> d!1181035 (= res!1619657 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181035 (= (isPrefix!3843 lt!1406612 lt!1406583) lt!1406852)))

(declare-fun b!3990963 () Bool)

(declare-fun e!2473987 () Bool)

(assert (=> b!3990963 (= e!2473987 (isPrefix!3843 (tail!6223 lt!1406612) (tail!6223 lt!1406583)))))

(declare-fun b!3990964 () Bool)

(assert (=> b!3990964 (= e!2473986 (>= (size!31923 lt!1406583) (size!31923 lt!1406612)))))

(declare-fun b!3990962 () Bool)

(declare-fun res!1619655 () Bool)

(assert (=> b!3990962 (=> (not res!1619655) (not e!2473987))))

(assert (=> b!3990962 (= res!1619655 (= (head!8491 lt!1406612) (head!8491 lt!1406583)))))

(declare-fun b!3990961 () Bool)

(assert (=> b!3990961 (= e!2473985 e!2473987)))

(declare-fun res!1619654 () Bool)

(assert (=> b!3990961 (=> (not res!1619654) (not e!2473987))))

(assert (=> b!3990961 (= res!1619654 (not ((_ is Nil!42682) lt!1406583)))))

(assert (= (and d!1181035 (not res!1619657)) b!3990961))

(assert (= (and b!3990961 res!1619654) b!3990962))

(assert (= (and b!3990962 res!1619655) b!3990963))

(assert (= (and d!1181035 (not res!1619656)) b!3990964))

(assert (=> b!3990963 m!4568919))

(assert (=> b!3990963 m!4568847))

(assert (=> b!3990963 m!4568919))

(assert (=> b!3990963 m!4568847))

(declare-fun m!4569523 () Bool)

(assert (=> b!3990963 m!4569523))

(assert (=> b!3990964 m!4568851))

(assert (=> b!3990964 m!4568517))

(assert (=> b!3990962 m!4568923))

(assert (=> b!3990962 m!4568855))

(assert (=> b!3990367 d!1181035))

(declare-fun d!1181037 () Bool)

(assert (=> d!1181037 (isPrefix!3843 lt!1406612 (++!11158 prefix!494 newSuffix!27))))

(declare-fun lt!1406855 () Unit!61448)

(declare-fun choose!24004 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> d!1181037 (= lt!1406855 (choose!24004 lt!1406612 prefix!494 newSuffix!27))))

(assert (=> d!1181037 (isPrefix!3843 lt!1406612 prefix!494)))

(assert (=> d!1181037 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!676 lt!1406612 prefix!494 newSuffix!27) lt!1406855)))

(declare-fun bs!588397 () Bool)

(assert (= bs!588397 d!1181037))

(assert (=> bs!588397 m!4568671))

(assert (=> bs!588397 m!4568671))

(declare-fun m!4569525 () Bool)

(assert (=> bs!588397 m!4569525))

(declare-fun m!4569527 () Bool)

(assert (=> bs!588397 m!4569527))

(assert (=> bs!588397 m!4568561))

(assert (=> b!3990367 d!1181037))

(declare-fun d!1181039 () Bool)

(assert (=> d!1181039 (isPrefix!3843 lt!1406612 (++!11158 prefix!494 suffix!1299))))

(declare-fun lt!1406856 () Unit!61448)

(assert (=> d!1181039 (= lt!1406856 (choose!24004 lt!1406612 prefix!494 suffix!1299))))

(assert (=> d!1181039 (isPrefix!3843 lt!1406612 prefix!494)))

(assert (=> d!1181039 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!676 lt!1406612 prefix!494 suffix!1299) lt!1406856)))

(declare-fun bs!588398 () Bool)

(assert (= bs!588398 d!1181039))

(assert (=> bs!588398 m!4568597))

(assert (=> bs!588398 m!4568597))

(declare-fun m!4569529 () Bool)

(assert (=> bs!588398 m!4569529))

(declare-fun m!4569531 () Bool)

(assert (=> bs!588398 m!4569531))

(assert (=> bs!588398 m!4568561))

(assert (=> b!3990367 d!1181039))

(declare-fun d!1181041 () Bool)

(assert (=> d!1181041 (not (matchR!5638 (regex!6756 (rule!9774 token!484)) lt!1406612))))

(declare-fun lt!1406859 () Unit!61448)

(declare-fun choose!24005 (LexerInterface!6345 List!42808 Rule!13312 List!42806 List!42806 List!42806 Rule!13312) Unit!61448)

(assert (=> d!1181041 (= lt!1406859 (choose!24005 thiss!21717 rules!2999 (rule!9774 (_1!24076 (v!39525 lt!1406624))) lt!1406584 lt!1406583 lt!1406612 (rule!9774 token!484)))))

(assert (=> d!1181041 (isPrefix!3843 lt!1406584 lt!1406583)))

(assert (=> d!1181041 (= (lemmaMaxPrefixOutputsMaxPrefix!410 thiss!21717 rules!2999 (rule!9774 (_1!24076 (v!39525 lt!1406624))) lt!1406584 lt!1406583 lt!1406612 (rule!9774 token!484)) lt!1406859)))

(declare-fun bs!588399 () Bool)

(assert (= bs!588399 d!1181041))

(assert (=> bs!588399 m!4568565))

(declare-fun m!4569533 () Bool)

(assert (=> bs!588399 m!4569533))

(assert (=> bs!588399 m!4568699))

(assert (=> b!3990368 d!1181041))

(declare-fun d!1181043 () Bool)

(assert (=> d!1181043 (= (isEmpty!25508 rules!2999) ((_ is Nil!42684) rules!2999))))

(assert (=> b!3990366 d!1181043))

(declare-fun d!1181045 () Bool)

(assert (=> d!1181045 (= (_2!24076 (v!39525 lt!1406624)) lt!1406621)))

(declare-fun lt!1406860 () Unit!61448)

(assert (=> d!1181045 (= lt!1406860 (choose!24002 lt!1406584 (_2!24076 (v!39525 lt!1406624)) lt!1406584 lt!1406621 lt!1406583))))

(assert (=> d!1181045 (isPrefix!3843 lt!1406584 lt!1406583)))

(assert (=> d!1181045 (= (lemmaSamePrefixThenSameSuffix!2030 lt!1406584 (_2!24076 (v!39525 lt!1406624)) lt!1406584 lt!1406621 lt!1406583) lt!1406860)))

(declare-fun bs!588400 () Bool)

(assert (= bs!588400 d!1181045))

(declare-fun m!4569535 () Bool)

(assert (=> bs!588400 m!4569535))

(assert (=> bs!588400 m!4568699))

(assert (=> b!3990345 d!1181045))

(declare-fun d!1181047 () Bool)

(declare-fun e!2473989 () Bool)

(assert (=> d!1181047 e!2473989))

(declare-fun res!1619660 () Bool)

(assert (=> d!1181047 (=> res!1619660 e!2473989)))

(declare-fun lt!1406861 () Bool)

(assert (=> d!1181047 (= res!1619660 (not lt!1406861))))

(declare-fun e!2473988 () Bool)

(assert (=> d!1181047 (= lt!1406861 e!2473988)))

(declare-fun res!1619661 () Bool)

(assert (=> d!1181047 (=> res!1619661 e!2473988)))

(assert (=> d!1181047 (= res!1619661 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181047 (= (isPrefix!3843 lt!1406584 lt!1406585) lt!1406861)))

(declare-fun b!3990967 () Bool)

(declare-fun e!2473990 () Bool)

(assert (=> b!3990967 (= e!2473990 (isPrefix!3843 (tail!6223 lt!1406584) (tail!6223 lt!1406585)))))

(declare-fun b!3990968 () Bool)

(assert (=> b!3990968 (= e!2473989 (>= (size!31923 lt!1406585) (size!31923 lt!1406584)))))

(declare-fun b!3990966 () Bool)

(declare-fun res!1619659 () Bool)

(assert (=> b!3990966 (=> (not res!1619659) (not e!2473990))))

(assert (=> b!3990966 (= res!1619659 (= (head!8491 lt!1406584) (head!8491 lt!1406585)))))

(declare-fun b!3990965 () Bool)

(assert (=> b!3990965 (= e!2473988 e!2473990)))

(declare-fun res!1619658 () Bool)

(assert (=> b!3990965 (=> (not res!1619658) (not e!2473990))))

(assert (=> b!3990965 (= res!1619658 (not ((_ is Nil!42682) lt!1406585)))))

(assert (= (and d!1181047 (not res!1619661)) b!3990965))

(assert (= (and b!3990965 res!1619658) b!3990966))

(assert (= (and b!3990966 res!1619659) b!3990967))

(assert (= (and d!1181047 (not res!1619660)) b!3990968))

(assert (=> b!3990967 m!4568845))

(declare-fun m!4569537 () Bool)

(assert (=> b!3990967 m!4569537))

(assert (=> b!3990967 m!4568845))

(assert (=> b!3990967 m!4569537))

(declare-fun m!4569539 () Bool)

(assert (=> b!3990967 m!4569539))

(declare-fun m!4569541 () Bool)

(assert (=> b!3990968 m!4569541))

(assert (=> b!3990968 m!4568653))

(assert (=> b!3990966 m!4568853))

(declare-fun m!4569543 () Bool)

(assert (=> b!3990966 m!4569543))

(assert (=> b!3990345 d!1181047))

(declare-fun d!1181049 () Bool)

(assert (=> d!1181049 (isPrefix!3843 lt!1406584 (++!11158 lt!1406584 lt!1406621))))

(declare-fun lt!1406862 () Unit!61448)

(assert (=> d!1181049 (= lt!1406862 (choose!23999 lt!1406584 lt!1406621))))

(assert (=> d!1181049 (= (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406584 lt!1406621) lt!1406862)))

(declare-fun bs!588401 () Bool)

(assert (= bs!588401 d!1181049))

(assert (=> bs!588401 m!4568573))

(assert (=> bs!588401 m!4568573))

(declare-fun m!4569545 () Bool)

(assert (=> bs!588401 m!4569545))

(declare-fun m!4569547 () Bool)

(assert (=> bs!588401 m!4569547))

(assert (=> b!3990345 d!1181049))

(declare-fun b!3990969 () Bool)

(declare-fun e!2473991 () List!42806)

(assert (=> b!3990969 (= e!2473991 suffixResult!105)))

(declare-fun e!2473992 () Bool)

(declare-fun b!3990972 () Bool)

(declare-fun lt!1406863 () List!42806)

(assert (=> b!3990972 (= e!2473992 (or (not (= suffixResult!105 Nil!42682)) (= lt!1406863 lt!1406612)))))

(declare-fun d!1181051 () Bool)

(assert (=> d!1181051 e!2473992))

(declare-fun res!1619662 () Bool)

(assert (=> d!1181051 (=> (not res!1619662) (not e!2473992))))

(assert (=> d!1181051 (= res!1619662 (= (content!6473 lt!1406863) ((_ map or) (content!6473 lt!1406612) (content!6473 suffixResult!105))))))

(assert (=> d!1181051 (= lt!1406863 e!2473991)))

(declare-fun c!690733 () Bool)

(assert (=> d!1181051 (= c!690733 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181051 (= (++!11158 lt!1406612 suffixResult!105) lt!1406863)))

(declare-fun b!3990970 () Bool)

(assert (=> b!3990970 (= e!2473991 (Cons!42682 (h!48102 lt!1406612) (++!11158 (t!331749 lt!1406612) suffixResult!105)))))

(declare-fun b!3990971 () Bool)

(declare-fun res!1619663 () Bool)

(assert (=> b!3990971 (=> (not res!1619663) (not e!2473992))))

(assert (=> b!3990971 (= res!1619663 (= (size!31923 lt!1406863) (+ (size!31923 lt!1406612) (size!31923 suffixResult!105))))))

(assert (= (and d!1181051 c!690733) b!3990969))

(assert (= (and d!1181051 (not c!690733)) b!3990970))

(assert (= (and d!1181051 res!1619662) b!3990971))

(assert (= (and b!3990971 res!1619663) b!3990972))

(declare-fun m!4569549 () Bool)

(assert (=> d!1181051 m!4569549))

(assert (=> d!1181051 m!4568859))

(declare-fun m!4569551 () Bool)

(assert (=> d!1181051 m!4569551))

(declare-fun m!4569553 () Bool)

(assert (=> b!3990970 m!4569553))

(declare-fun m!4569555 () Bool)

(assert (=> b!3990971 m!4569555))

(assert (=> b!3990971 m!4568517))

(declare-fun m!4569557 () Bool)

(assert (=> b!3990971 m!4569557))

(assert (=> b!3990365 d!1181051))

(declare-fun d!1181053 () Bool)

(declare-fun e!2473993 () Bool)

(assert (=> d!1181053 e!2473993))

(declare-fun res!1619664 () Bool)

(assert (=> d!1181053 (=> (not res!1619664) (not e!2473993))))

(assert (=> d!1181053 (= res!1619664 (semiInverseModEq!2897 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (toValue!9244 (transformation!6756 (rule!9774 token!484)))))))

(declare-fun Unit!61461 () Unit!61448)

(assert (=> d!1181053 (= (lemmaInv!971 (transformation!6756 (rule!9774 token!484))) Unit!61461)))

(declare-fun b!3990973 () Bool)

(assert (=> b!3990973 (= e!2473993 (equivClasses!2796 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (toValue!9244 (transformation!6756 (rule!9774 token!484)))))))

(assert (= (and d!1181053 res!1619664) b!3990973))

(declare-fun m!4569559 () Bool)

(assert (=> d!1181053 m!4569559))

(declare-fun m!4569561 () Bool)

(assert (=> b!3990973 m!4569561))

(assert (=> b!3990365 d!1181053))

(declare-fun d!1181055 () Bool)

(declare-fun res!1619665 () Bool)

(declare-fun e!2473994 () Bool)

(assert (=> d!1181055 (=> (not res!1619665) (not e!2473994))))

(assert (=> d!1181055 (= res!1619665 (validRegex!5290 (regex!6756 (rule!9774 token!484))))))

(assert (=> d!1181055 (= (ruleValid!2688 thiss!21717 (rule!9774 token!484)) e!2473994)))

(declare-fun b!3990974 () Bool)

(declare-fun res!1619666 () Bool)

(assert (=> b!3990974 (=> (not res!1619666) (not e!2473994))))

(assert (=> b!3990974 (= res!1619666 (not (nullable!4090 (regex!6756 (rule!9774 token!484)))))))

(declare-fun b!3990975 () Bool)

(assert (=> b!3990975 (= e!2473994 (not (= (tag!7616 (rule!9774 token!484)) (String!48649 ""))))))

(assert (= (and d!1181055 res!1619665) b!3990974))

(assert (= (and b!3990974 res!1619666) b!3990975))

(assert (=> d!1181055 m!4569513))

(assert (=> b!3990974 m!4569521))

(assert (=> b!3990365 d!1181055))

(declare-fun d!1181057 () Bool)

(assert (=> d!1181057 (ruleValid!2688 thiss!21717 (rule!9774 token!484))))

(declare-fun lt!1406864 () Unit!61448)

(assert (=> d!1181057 (= lt!1406864 (choose!24000 thiss!21717 (rule!9774 token!484) rules!2999))))

(assert (=> d!1181057 (contains!8493 rules!2999 (rule!9774 token!484))))

(assert (=> d!1181057 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1762 thiss!21717 (rule!9774 token!484) rules!2999) lt!1406864)))

(declare-fun bs!588402 () Bool)

(assert (= bs!588402 d!1181057))

(assert (=> bs!588402 m!4568591))

(declare-fun m!4569563 () Bool)

(assert (=> bs!588402 m!4569563))

(assert (=> bs!588402 m!4569503))

(assert (=> b!3990365 d!1181057))

(declare-fun b!3990976 () Bool)

(declare-fun e!2473995 () List!42806)

(assert (=> b!3990976 (= e!2473995 lt!1406621)))

(declare-fun b!3990979 () Bool)

(declare-fun e!2473996 () Bool)

(declare-fun lt!1406865 () List!42806)

(assert (=> b!3990979 (= e!2473996 (or (not (= lt!1406621 Nil!42682)) (= lt!1406865 lt!1406584)))))

(declare-fun d!1181059 () Bool)

(assert (=> d!1181059 e!2473996))

(declare-fun res!1619667 () Bool)

(assert (=> d!1181059 (=> (not res!1619667) (not e!2473996))))

(assert (=> d!1181059 (= res!1619667 (= (content!6473 lt!1406865) ((_ map or) (content!6473 lt!1406584) (content!6473 lt!1406621))))))

(assert (=> d!1181059 (= lt!1406865 e!2473995)))

(declare-fun c!690734 () Bool)

(assert (=> d!1181059 (= c!690734 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181059 (= (++!11158 lt!1406584 lt!1406621) lt!1406865)))

(declare-fun b!3990977 () Bool)

(assert (=> b!3990977 (= e!2473995 (Cons!42682 (h!48102 lt!1406584) (++!11158 (t!331749 lt!1406584) lt!1406621)))))

(declare-fun b!3990978 () Bool)

(declare-fun res!1619668 () Bool)

(assert (=> b!3990978 (=> (not res!1619668) (not e!2473996))))

(assert (=> b!3990978 (= res!1619668 (= (size!31923 lt!1406865) (+ (size!31923 lt!1406584) (size!31923 lt!1406621))))))

(assert (= (and d!1181059 c!690734) b!3990976))

(assert (= (and d!1181059 (not c!690734)) b!3990977))

(assert (= (and d!1181059 res!1619667) b!3990978))

(assert (= (and b!3990978 res!1619668) b!3990979))

(declare-fun m!4569565 () Bool)

(assert (=> d!1181059 m!4569565))

(assert (=> d!1181059 m!4569445))

(declare-fun m!4569567 () Bool)

(assert (=> d!1181059 m!4569567))

(declare-fun m!4569569 () Bool)

(assert (=> b!3990977 m!4569569))

(declare-fun m!4569571 () Bool)

(assert (=> b!3990978 m!4569571))

(assert (=> b!3990978 m!4568653))

(declare-fun m!4569573 () Bool)

(assert (=> b!3990978 m!4569573))

(assert (=> b!3990363 d!1181059))

(declare-fun d!1181061 () Bool)

(declare-fun lt!1406866 () List!42806)

(assert (=> d!1181061 (= (++!11158 lt!1406584 lt!1406866) lt!1406583)))

(declare-fun e!2473997 () List!42806)

(assert (=> d!1181061 (= lt!1406866 e!2473997)))

(declare-fun c!690735 () Bool)

(assert (=> d!1181061 (= c!690735 ((_ is Cons!42682) lt!1406584))))

(assert (=> d!1181061 (>= (size!31923 lt!1406583) (size!31923 lt!1406584))))

(assert (=> d!1181061 (= (getSuffix!2274 lt!1406583 lt!1406584) lt!1406866)))

(declare-fun b!3990980 () Bool)

(assert (=> b!3990980 (= e!2473997 (getSuffix!2274 (tail!6223 lt!1406583) (t!331749 lt!1406584)))))

(declare-fun b!3990981 () Bool)

(assert (=> b!3990981 (= e!2473997 lt!1406583)))

(assert (= (and d!1181061 c!690735) b!3990980))

(assert (= (and d!1181061 (not c!690735)) b!3990981))

(declare-fun m!4569575 () Bool)

(assert (=> d!1181061 m!4569575))

(assert (=> d!1181061 m!4568851))

(assert (=> d!1181061 m!4568653))

(assert (=> b!3990980 m!4568847))

(assert (=> b!3990980 m!4568847))

(declare-fun m!4569577 () Bool)

(assert (=> b!3990980 m!4569577))

(assert (=> b!3990363 d!1181061))

(declare-fun d!1181063 () Bool)

(assert (=> d!1181063 (isPrefix!3843 lt!1406612 (++!11158 lt!1406612 suffixResult!105))))

(declare-fun lt!1406867 () Unit!61448)

(assert (=> d!1181063 (= lt!1406867 (choose!23999 lt!1406612 suffixResult!105))))

(assert (=> d!1181063 (= (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406612 suffixResult!105) lt!1406867)))

(declare-fun bs!588403 () Bool)

(assert (= bs!588403 d!1181063))

(assert (=> bs!588403 m!4568587))

(assert (=> bs!588403 m!4568587))

(declare-fun m!4569579 () Bool)

(assert (=> bs!588403 m!4569579))

(declare-fun m!4569581 () Bool)

(assert (=> bs!588403 m!4569581))

(assert (=> b!3990330 d!1181063))

(declare-fun d!1181065 () Bool)

(declare-fun e!2473999 () Bool)

(assert (=> d!1181065 e!2473999))

(declare-fun res!1619671 () Bool)

(assert (=> d!1181065 (=> res!1619671 e!2473999)))

(declare-fun lt!1406868 () Bool)

(assert (=> d!1181065 (= res!1619671 (not lt!1406868))))

(declare-fun e!2473998 () Bool)

(assert (=> d!1181065 (= lt!1406868 e!2473998)))

(declare-fun res!1619672 () Bool)

(assert (=> d!1181065 (=> res!1619672 e!2473998)))

(assert (=> d!1181065 (= res!1619672 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181065 (= (isPrefix!3843 lt!1406612 lt!1406608) lt!1406868)))

(declare-fun b!3990984 () Bool)

(declare-fun e!2474000 () Bool)

(assert (=> b!3990984 (= e!2474000 (isPrefix!3843 (tail!6223 lt!1406612) (tail!6223 lt!1406608)))))

(declare-fun b!3990985 () Bool)

(assert (=> b!3990985 (= e!2473999 (>= (size!31923 lt!1406608) (size!31923 lt!1406612)))))

(declare-fun b!3990983 () Bool)

(declare-fun res!1619670 () Bool)

(assert (=> b!3990983 (=> (not res!1619670) (not e!2474000))))

(assert (=> b!3990983 (= res!1619670 (= (head!8491 lt!1406612) (head!8491 lt!1406608)))))

(declare-fun b!3990982 () Bool)

(assert (=> b!3990982 (= e!2473998 e!2474000)))

(declare-fun res!1619669 () Bool)

(assert (=> b!3990982 (=> (not res!1619669) (not e!2474000))))

(assert (=> b!3990982 (= res!1619669 (not ((_ is Nil!42682) lt!1406608)))))

(assert (= (and d!1181065 (not res!1619672)) b!3990982))

(assert (= (and b!3990982 res!1619669) b!3990983))

(assert (= (and b!3990983 res!1619670) b!3990984))

(assert (= (and d!1181065 (not res!1619671)) b!3990985))

(assert (=> b!3990984 m!4568919))

(declare-fun m!4569583 () Bool)

(assert (=> b!3990984 m!4569583))

(assert (=> b!3990984 m!4568919))

(assert (=> b!3990984 m!4569583))

(declare-fun m!4569585 () Bool)

(assert (=> b!3990984 m!4569585))

(declare-fun m!4569587 () Bool)

(assert (=> b!3990985 m!4569587))

(assert (=> b!3990985 m!4568517))

(assert (=> b!3990983 m!4568923))

(declare-fun m!4569589 () Bool)

(assert (=> b!3990983 m!4569589))

(assert (=> b!3990330 d!1181065))

(declare-fun d!1181067 () Bool)

(declare-fun e!2474002 () Bool)

(assert (=> d!1181067 e!2474002))

(declare-fun res!1619675 () Bool)

(assert (=> d!1181067 (=> res!1619675 e!2474002)))

(declare-fun lt!1406869 () Bool)

(assert (=> d!1181067 (= res!1619675 (not lt!1406869))))

(declare-fun e!2474001 () Bool)

(assert (=> d!1181067 (= lt!1406869 e!2474001)))

(declare-fun res!1619676 () Bool)

(assert (=> d!1181067 (=> res!1619676 e!2474001)))

(assert (=> d!1181067 (= res!1619676 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181067 (= (isPrefix!3843 lt!1406612 lt!1406628) lt!1406869)))

(declare-fun b!3990988 () Bool)

(declare-fun e!2474003 () Bool)

(assert (=> b!3990988 (= e!2474003 (isPrefix!3843 (tail!6223 lt!1406612) (tail!6223 lt!1406628)))))

(declare-fun b!3990989 () Bool)

(assert (=> b!3990989 (= e!2474002 (>= (size!31923 lt!1406628) (size!31923 lt!1406612)))))

(declare-fun b!3990987 () Bool)

(declare-fun res!1619674 () Bool)

(assert (=> b!3990987 (=> (not res!1619674) (not e!2474003))))

(assert (=> b!3990987 (= res!1619674 (= (head!8491 lt!1406612) (head!8491 lt!1406628)))))

(declare-fun b!3990986 () Bool)

(assert (=> b!3990986 (= e!2474001 e!2474003)))

(declare-fun res!1619673 () Bool)

(assert (=> b!3990986 (=> (not res!1619673) (not e!2474003))))

(assert (=> b!3990986 (= res!1619673 (not ((_ is Nil!42682) lt!1406628)))))

(assert (= (and d!1181067 (not res!1619676)) b!3990986))

(assert (= (and b!3990986 res!1619673) b!3990987))

(assert (= (and b!3990987 res!1619674) b!3990988))

(assert (= (and d!1181067 (not res!1619675)) b!3990989))

(assert (=> b!3990988 m!4568919))

(declare-fun m!4569591 () Bool)

(assert (=> b!3990988 m!4569591))

(assert (=> b!3990988 m!4568919))

(assert (=> b!3990988 m!4569591))

(declare-fun m!4569593 () Bool)

(assert (=> b!3990988 m!4569593))

(assert (=> b!3990989 m!4568555))

(assert (=> b!3990989 m!4568517))

(assert (=> b!3990987 m!4568923))

(declare-fun m!4569595 () Bool)

(assert (=> b!3990987 m!4569595))

(assert (=> b!3990330 d!1181067))

(declare-fun d!1181069 () Bool)

(declare-fun e!2474005 () Bool)

(assert (=> d!1181069 e!2474005))

(declare-fun res!1619679 () Bool)

(assert (=> d!1181069 (=> res!1619679 e!2474005)))

(declare-fun lt!1406870 () Bool)

(assert (=> d!1181069 (= res!1619679 (not lt!1406870))))

(declare-fun e!2474004 () Bool)

(assert (=> d!1181069 (= lt!1406870 e!2474004)))

(declare-fun res!1619680 () Bool)

(assert (=> d!1181069 (=> res!1619680 e!2474004)))

(assert (=> d!1181069 (= res!1619680 ((_ is Nil!42682) prefix!494))))

(assert (=> d!1181069 (= (isPrefix!3843 prefix!494 lt!1406628) lt!1406870)))

(declare-fun b!3990992 () Bool)

(declare-fun e!2474006 () Bool)

(assert (=> b!3990992 (= e!2474006 (isPrefix!3843 (tail!6223 prefix!494) (tail!6223 lt!1406628)))))

(declare-fun b!3990993 () Bool)

(assert (=> b!3990993 (= e!2474005 (>= (size!31923 lt!1406628) (size!31923 prefix!494)))))

(declare-fun b!3990991 () Bool)

(declare-fun res!1619678 () Bool)

(assert (=> b!3990991 (=> (not res!1619678) (not e!2474006))))

(assert (=> b!3990991 (= res!1619678 (= (head!8491 prefix!494) (head!8491 lt!1406628)))))

(declare-fun b!3990990 () Bool)

(assert (=> b!3990990 (= e!2474004 e!2474006)))

(declare-fun res!1619677 () Bool)

(assert (=> b!3990990 (=> (not res!1619677) (not e!2474006))))

(assert (=> b!3990990 (= res!1619677 (not ((_ is Nil!42682) lt!1406628)))))

(assert (= (and d!1181069 (not res!1619680)) b!3990990))

(assert (= (and b!3990990 res!1619677) b!3990991))

(assert (= (and b!3990991 res!1619678) b!3990992))

(assert (= (and d!1181069 (not res!1619679)) b!3990993))

(assert (=> b!3990992 m!4568915))

(assert (=> b!3990992 m!4569591))

(assert (=> b!3990992 m!4568915))

(assert (=> b!3990992 m!4569591))

(declare-fun m!4569597 () Bool)

(assert (=> b!3990992 m!4569597))

(assert (=> b!3990993 m!4568555))

(assert (=> b!3990993 m!4568519))

(assert (=> b!3990991 m!4568925))

(assert (=> b!3990991 m!4569595))

(assert (=> b!3990330 d!1181069))

(declare-fun d!1181071 () Bool)

(assert (=> d!1181071 (isPrefix!3843 prefix!494 (++!11158 prefix!494 suffix!1299))))

(declare-fun lt!1406871 () Unit!61448)

(assert (=> d!1181071 (= lt!1406871 (choose!23999 prefix!494 suffix!1299))))

(assert (=> d!1181071 (= (lemmaConcatTwoListThenFirstIsPrefix!2686 prefix!494 suffix!1299) lt!1406871)))

(declare-fun bs!588404 () Bool)

(assert (= bs!588404 d!1181071))

(assert (=> bs!588404 m!4568597))

(assert (=> bs!588404 m!4568597))

(declare-fun m!4569599 () Bool)

(assert (=> bs!588404 m!4569599))

(declare-fun m!4569601 () Bool)

(assert (=> bs!588404 m!4569601))

(assert (=> b!3990330 d!1181071))

(declare-fun d!1181073 () Bool)

(declare-fun lt!1406872 () Int)

(assert (=> d!1181073 (>= lt!1406872 0)))

(declare-fun e!2474007 () Int)

(assert (=> d!1181073 (= lt!1406872 e!2474007)))

(declare-fun c!690736 () Bool)

(assert (=> d!1181073 (= c!690736 ((_ is Nil!42682) suffix!1299))))

(assert (=> d!1181073 (= (size!31923 suffix!1299) lt!1406872)))

(declare-fun b!3990994 () Bool)

(assert (=> b!3990994 (= e!2474007 0)))

(declare-fun b!3990995 () Bool)

(assert (=> b!3990995 (= e!2474007 (+ 1 (size!31923 (t!331749 suffix!1299))))))

(assert (= (and d!1181073 c!690736) b!3990994))

(assert (= (and d!1181073 (not c!690736)) b!3990995))

(declare-fun m!4569603 () Bool)

(assert (=> b!3990995 m!4569603))

(assert (=> b!3990351 d!1181073))

(declare-fun d!1181075 () Bool)

(declare-fun lt!1406873 () Int)

(assert (=> d!1181075 (>= lt!1406873 0)))

(declare-fun e!2474008 () Int)

(assert (=> d!1181075 (= lt!1406873 e!2474008)))

(declare-fun c!690737 () Bool)

(assert (=> d!1181075 (= c!690737 ((_ is Nil!42682) newSuffix!27))))

(assert (=> d!1181075 (= (size!31923 newSuffix!27) lt!1406873)))

(declare-fun b!3990996 () Bool)

(assert (=> b!3990996 (= e!2474008 0)))

(declare-fun b!3990997 () Bool)

(assert (=> b!3990997 (= e!2474008 (+ 1 (size!31923 (t!331749 newSuffix!27))))))

(assert (= (and d!1181075 c!690737) b!3990996))

(assert (= (and d!1181075 (not c!690737)) b!3990997))

(declare-fun m!4569605 () Bool)

(assert (=> b!3990997 m!4569605))

(assert (=> b!3990351 d!1181075))

(declare-fun d!1181077 () Bool)

(declare-fun res!1619683 () Bool)

(declare-fun e!2474011 () Bool)

(assert (=> d!1181077 (=> (not res!1619683) (not e!2474011))))

(declare-fun rulesValid!2631 (LexerInterface!6345 List!42808) Bool)

(assert (=> d!1181077 (= res!1619683 (rulesValid!2631 thiss!21717 rules!2999))))

(assert (=> d!1181077 (= (rulesInvariant!5688 thiss!21717 rules!2999) e!2474011)))

(declare-fun b!3991000 () Bool)

(declare-datatypes ((List!42810 0))(
  ( (Nil!42686) (Cons!42686 (h!48106 String!48648) (t!331801 List!42810)) )
))
(declare-fun noDuplicateTag!2632 (LexerInterface!6345 List!42808 List!42810) Bool)

(assert (=> b!3991000 (= e!2474011 (noDuplicateTag!2632 thiss!21717 rules!2999 Nil!42686))))

(assert (= (and d!1181077 res!1619683) b!3991000))

(declare-fun m!4569607 () Bool)

(assert (=> d!1181077 m!4569607))

(declare-fun m!4569609 () Bool)

(assert (=> b!3991000 m!4569609))

(assert (=> b!3990350 d!1181077))

(declare-fun d!1181079 () Bool)

(assert (=> d!1181079 (= (inv!57006 (tag!7616 (h!48104 rules!2999))) (= (mod (str.len (value!213179 (tag!7616 (h!48104 rules!2999)))) 2) 0))))

(assert (=> b!3990329 d!1181079))

(declare-fun d!1181081 () Bool)

(declare-fun res!1619686 () Bool)

(declare-fun e!2474014 () Bool)

(assert (=> d!1181081 (=> (not res!1619686) (not e!2474014))))

(assert (=> d!1181081 (= res!1619686 (semiInverseModEq!2897 (toChars!9103 (transformation!6756 (h!48104 rules!2999))) (toValue!9244 (transformation!6756 (h!48104 rules!2999)))))))

(assert (=> d!1181081 (= (inv!57009 (transformation!6756 (h!48104 rules!2999))) e!2474014)))

(declare-fun b!3991003 () Bool)

(assert (=> b!3991003 (= e!2474014 (equivClasses!2796 (toChars!9103 (transformation!6756 (h!48104 rules!2999))) (toValue!9244 (transformation!6756 (h!48104 rules!2999)))))))

(assert (= (and d!1181081 res!1619686) b!3991003))

(declare-fun m!4569611 () Bool)

(assert (=> d!1181081 m!4569611))

(declare-fun m!4569613 () Bool)

(assert (=> b!3991003 m!4569613))

(assert (=> b!3990329 d!1181081))

(declare-fun d!1181083 () Bool)

(assert (=> d!1181083 (= lt!1406626 suffixResult!105)))

(declare-fun lt!1406874 () Unit!61448)

(assert (=> d!1181083 (= lt!1406874 (choose!24002 lt!1406612 lt!1406626 lt!1406612 suffixResult!105 lt!1406628))))

(assert (=> d!1181083 (isPrefix!3843 lt!1406612 lt!1406628)))

(assert (=> d!1181083 (= (lemmaSamePrefixThenSameSuffix!2030 lt!1406612 lt!1406626 lt!1406612 suffixResult!105 lt!1406628) lt!1406874)))

(declare-fun bs!588405 () Bool)

(assert (= bs!588405 d!1181083))

(declare-fun m!4569615 () Bool)

(assert (=> bs!588405 m!4569615))

(assert (=> bs!588405 m!4568533))

(assert (=> b!3990327 d!1181083))

(declare-fun d!1181085 () Bool)

(assert (=> d!1181085 (= (maxPrefixOneRule!2677 thiss!21717 (rule!9774 token!484) lt!1406628) (Some!9169 (tuple2!41885 (Token!12651 (apply!9967 (transformation!6756 (rule!9774 token!484)) (seqFromList!4995 lt!1406612)) (rule!9774 token!484) (size!31923 lt!1406612) lt!1406612) suffixResult!105)))))

(declare-fun lt!1406875 () Unit!61448)

(assert (=> d!1181085 (= lt!1406875 (choose!23998 thiss!21717 rules!2999 lt!1406612 lt!1406628 suffixResult!105 (rule!9774 token!484)))))

(assert (=> d!1181085 (not (isEmpty!25508 rules!2999))))

(assert (=> d!1181085 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1499 thiss!21717 rules!2999 lt!1406612 lt!1406628 suffixResult!105 (rule!9774 token!484)) lt!1406875)))

(declare-fun bs!588406 () Bool)

(assert (= bs!588406 d!1181085))

(declare-fun m!4569617 () Bool)

(assert (=> bs!588406 m!4569617))

(assert (=> bs!588406 m!4568613))

(assert (=> bs!588406 m!4568613))

(assert (=> bs!588406 m!4568615))

(assert (=> bs!588406 m!4568517))

(assert (=> bs!588406 m!4568623))

(assert (=> bs!588406 m!4568707))

(assert (=> b!3990327 d!1181085))

(declare-fun d!1181087 () Bool)

(assert (=> d!1181087 (= (seqFromList!4995 lt!1406612) (fromListB!2292 lt!1406612))))

(declare-fun bs!588407 () Bool)

(assert (= bs!588407 d!1181087))

(declare-fun m!4569619 () Bool)

(assert (=> bs!588407 m!4569619))

(assert (=> b!3990327 d!1181087))

(declare-fun d!1181089 () Bool)

(assert (=> d!1181089 (= (apply!9967 (transformation!6756 (rule!9774 token!484)) (seqFromList!4995 lt!1406612)) (dynLambda!18133 (toValue!9244 (transformation!6756 (rule!9774 token!484))) (seqFromList!4995 lt!1406612)))))

(declare-fun b_lambda!116517 () Bool)

(assert (=> (not b_lambda!116517) (not d!1181089)))

(declare-fun tb!240241 () Bool)

(declare-fun t!331789 () Bool)

(assert (=> (and b!3990347 (= (toValue!9244 (transformation!6756 (h!48104 rules!2999))) (toValue!9244 (transformation!6756 (rule!9774 token!484)))) t!331789) tb!240241))

(declare-fun result!291096 () Bool)

(assert (=> tb!240241 (= result!291096 (inv!21 (dynLambda!18133 (toValue!9244 (transformation!6756 (rule!9774 token!484))) (seqFromList!4995 lt!1406612))))))

(declare-fun m!4569621 () Bool)

(assert (=> tb!240241 m!4569621))

(assert (=> d!1181089 t!331789))

(declare-fun b_and!306635 () Bool)

(assert (= b_and!306631 (and (=> t!331789 result!291096) b_and!306635)))

(declare-fun t!331791 () Bool)

(declare-fun tb!240243 () Bool)

(assert (=> (and b!3990344 (= (toValue!9244 (transformation!6756 (rule!9774 token!484))) (toValue!9244 (transformation!6756 (rule!9774 token!484)))) t!331791) tb!240243))

(declare-fun result!291098 () Bool)

(assert (= result!291098 result!291096))

(assert (=> d!1181089 t!331791))

(declare-fun b_and!306637 () Bool)

(assert (= b_and!306633 (and (=> t!331791 result!291098) b_and!306637)))

(assert (=> d!1181089 m!4568613))

(declare-fun m!4569623 () Bool)

(assert (=> d!1181089 m!4569623))

(assert (=> b!3990327 d!1181089))

(declare-fun d!1181091 () Bool)

(assert (=> d!1181091 (isPrefix!3843 lt!1406612 (++!11158 lt!1406612 lt!1406626))))

(declare-fun lt!1406876 () Unit!61448)

(assert (=> d!1181091 (= lt!1406876 (choose!23999 lt!1406612 lt!1406626))))

(assert (=> d!1181091 (= (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406612 lt!1406626) lt!1406876)))

(declare-fun bs!588408 () Bool)

(assert (= bs!588408 d!1181091))

(assert (=> bs!588408 m!4568547))

(assert (=> bs!588408 m!4568547))

(declare-fun m!4569625 () Bool)

(assert (=> bs!588408 m!4569625))

(declare-fun m!4569627 () Bool)

(assert (=> bs!588408 m!4569627))

(assert (=> b!3990327 d!1181091))

(declare-fun b!3991004 () Bool)

(declare-fun e!2474017 () Bool)

(declare-fun e!2474016 () Bool)

(assert (=> b!3991004 (= e!2474017 e!2474016)))

(declare-fun res!1619687 () Bool)

(assert (=> b!3991004 (=> (not res!1619687) (not e!2474016))))

(declare-fun lt!1406880 () Option!9170)

(assert (=> b!3991004 (= res!1619687 (matchR!5638 (regex!6756 (rule!9774 token!484)) (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406880))))))))

(declare-fun b!3991005 () Bool)

(declare-fun res!1619693 () Bool)

(assert (=> b!3991005 (=> (not res!1619693) (not e!2474016))))

(assert (=> b!3991005 (= res!1619693 (= (++!11158 (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406880)))) (_2!24076 (get!14044 lt!1406880))) lt!1406628))))

(declare-fun d!1181093 () Bool)

(assert (=> d!1181093 e!2474017))

(declare-fun res!1619692 () Bool)

(assert (=> d!1181093 (=> res!1619692 e!2474017)))

(assert (=> d!1181093 (= res!1619692 (isEmpty!25512 lt!1406880))))

(declare-fun e!2474018 () Option!9170)

(assert (=> d!1181093 (= lt!1406880 e!2474018)))

(declare-fun c!690738 () Bool)

(declare-fun lt!1406878 () tuple2!41888)

(assert (=> d!1181093 (= c!690738 (isEmpty!25511 (_1!24078 lt!1406878)))))

(assert (=> d!1181093 (= lt!1406878 (findLongestMatch!1247 (regex!6756 (rule!9774 token!484)) lt!1406628))))

(assert (=> d!1181093 (ruleValid!2688 thiss!21717 (rule!9774 token!484))))

(assert (=> d!1181093 (= (maxPrefixOneRule!2677 thiss!21717 (rule!9774 token!484) lt!1406628) lt!1406880)))

(declare-fun b!3991006 () Bool)

(declare-fun res!1619688 () Bool)

(assert (=> b!3991006 (=> (not res!1619688) (not e!2474016))))

(assert (=> b!3991006 (= res!1619688 (= (value!213180 (_1!24076 (get!14044 lt!1406880))) (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (get!14044 lt!1406880)))) (seqFromList!4995 (originalCharacters!7356 (_1!24076 (get!14044 lt!1406880)))))))))

(declare-fun b!3991007 () Bool)

(declare-fun res!1619691 () Bool)

(assert (=> b!3991007 (=> (not res!1619691) (not e!2474016))))

(assert (=> b!3991007 (= res!1619691 (< (size!31923 (_2!24076 (get!14044 lt!1406880))) (size!31923 lt!1406628)))))

(declare-fun b!3991008 () Bool)

(declare-fun e!2474019 () Bool)

(assert (=> b!3991008 (= e!2474019 (matchR!5638 (regex!6756 (rule!9774 token!484)) (_1!24078 (findLongestMatchInner!1334 (regex!6756 (rule!9774 token!484)) Nil!42682 (size!31923 Nil!42682) lt!1406628 lt!1406628 (size!31923 lt!1406628)))))))

(declare-fun b!3991009 () Bool)

(assert (=> b!3991009 (= e!2474018 None!9169)))

(declare-fun b!3991010 () Bool)

(assert (=> b!3991010 (= e!2474016 (= (size!31922 (_1!24076 (get!14044 lt!1406880))) (size!31923 (originalCharacters!7356 (_1!24076 (get!14044 lt!1406880))))))))

(declare-fun b!3991011 () Bool)

(declare-fun res!1619690 () Bool)

(assert (=> b!3991011 (=> (not res!1619690) (not e!2474016))))

(assert (=> b!3991011 (= res!1619690 (= (rule!9774 (_1!24076 (get!14044 lt!1406880))) (rule!9774 token!484)))))

(declare-fun b!3991012 () Bool)

(assert (=> b!3991012 (= e!2474018 (Some!9169 (tuple2!41885 (Token!12651 (apply!9967 (transformation!6756 (rule!9774 token!484)) (seqFromList!4995 (_1!24078 lt!1406878))) (rule!9774 token!484) (size!31925 (seqFromList!4995 (_1!24078 lt!1406878))) (_1!24078 lt!1406878)) (_2!24078 lt!1406878))))))

(declare-fun lt!1406879 () Unit!61448)

(assert (=> b!3991012 (= lt!1406879 (longestMatchIsAcceptedByMatchOrIsEmpty!1307 (regex!6756 (rule!9774 token!484)) lt!1406628))))

(declare-fun res!1619689 () Bool)

(assert (=> b!3991012 (= res!1619689 (isEmpty!25511 (_1!24078 (findLongestMatchInner!1334 (regex!6756 (rule!9774 token!484)) Nil!42682 (size!31923 Nil!42682) lt!1406628 lt!1406628 (size!31923 lt!1406628)))))))

(assert (=> b!3991012 (=> res!1619689 e!2474019)))

(assert (=> b!3991012 e!2474019))

(declare-fun lt!1406877 () Unit!61448)

(assert (=> b!3991012 (= lt!1406877 lt!1406879)))

(declare-fun lt!1406881 () Unit!61448)

(assert (=> b!3991012 (= lt!1406881 (lemmaSemiInverse!1850 (transformation!6756 (rule!9774 token!484)) (seqFromList!4995 (_1!24078 lt!1406878))))))

(assert (= (and d!1181093 c!690738) b!3991009))

(assert (= (and d!1181093 (not c!690738)) b!3991012))

(assert (= (and b!3991012 (not res!1619689)) b!3991008))

(assert (= (and d!1181093 (not res!1619692)) b!3991004))

(assert (= (and b!3991004 res!1619687) b!3991005))

(assert (= (and b!3991005 res!1619693) b!3991007))

(assert (= (and b!3991007 res!1619691) b!3991011))

(assert (= (and b!3991011 res!1619690) b!3991006))

(assert (= (and b!3991006 res!1619688) b!3991010))

(declare-fun m!4569629 () Bool)

(assert (=> b!3991006 m!4569629))

(declare-fun m!4569631 () Bool)

(assert (=> b!3991006 m!4569631))

(assert (=> b!3991006 m!4569631))

(declare-fun m!4569633 () Bool)

(assert (=> b!3991006 m!4569633))

(assert (=> b!3991004 m!4569629))

(declare-fun m!4569635 () Bool)

(assert (=> b!3991004 m!4569635))

(assert (=> b!3991004 m!4569635))

(declare-fun m!4569637 () Bool)

(assert (=> b!3991004 m!4569637))

(assert (=> b!3991004 m!4569637))

(declare-fun m!4569639 () Bool)

(assert (=> b!3991004 m!4569639))

(assert (=> b!3991011 m!4569629))

(assert (=> b!3991005 m!4569629))

(assert (=> b!3991005 m!4569635))

(assert (=> b!3991005 m!4569635))

(assert (=> b!3991005 m!4569637))

(assert (=> b!3991005 m!4569637))

(declare-fun m!4569641 () Bool)

(assert (=> b!3991005 m!4569641))

(assert (=> b!3991007 m!4569629))

(declare-fun m!4569643 () Bool)

(assert (=> b!3991007 m!4569643))

(assert (=> b!3991007 m!4568555))

(assert (=> b!3991010 m!4569629))

(declare-fun m!4569645 () Bool)

(assert (=> b!3991010 m!4569645))

(assert (=> b!3991012 m!4568555))

(declare-fun m!4569647 () Bool)

(assert (=> b!3991012 m!4569647))

(declare-fun m!4569649 () Bool)

(assert (=> b!3991012 m!4569649))

(declare-fun m!4569651 () Bool)

(assert (=> b!3991012 m!4569651))

(assert (=> b!3991012 m!4569647))

(assert (=> b!3991012 m!4569401))

(assert (=> b!3991012 m!4568555))

(declare-fun m!4569653 () Bool)

(assert (=> b!3991012 m!4569653))

(assert (=> b!3991012 m!4569647))

(declare-fun m!4569655 () Bool)

(assert (=> b!3991012 m!4569655))

(declare-fun m!4569657 () Bool)

(assert (=> b!3991012 m!4569657))

(assert (=> b!3991012 m!4569647))

(declare-fun m!4569659 () Bool)

(assert (=> b!3991012 m!4569659))

(assert (=> b!3991012 m!4569401))

(declare-fun m!4569661 () Bool)

(assert (=> d!1181093 m!4569661))

(declare-fun m!4569663 () Bool)

(assert (=> d!1181093 m!4569663))

(declare-fun m!4569665 () Bool)

(assert (=> d!1181093 m!4569665))

(assert (=> d!1181093 m!4568591))

(assert (=> b!3991008 m!4569401))

(assert (=> b!3991008 m!4568555))

(assert (=> b!3991008 m!4569401))

(assert (=> b!3991008 m!4568555))

(assert (=> b!3991008 m!4569653))

(declare-fun m!4569667 () Bool)

(assert (=> b!3991008 m!4569667))

(assert (=> b!3990327 d!1181093))

(declare-fun d!1181095 () Bool)

(declare-fun e!2474021 () Bool)

(assert (=> d!1181095 e!2474021))

(declare-fun res!1619696 () Bool)

(assert (=> d!1181095 (=> res!1619696 e!2474021)))

(declare-fun lt!1406882 () Bool)

(assert (=> d!1181095 (= res!1619696 (not lt!1406882))))

(declare-fun e!2474020 () Bool)

(assert (=> d!1181095 (= lt!1406882 e!2474020)))

(declare-fun res!1619697 () Bool)

(assert (=> d!1181095 (=> res!1619697 e!2474020)))

(assert (=> d!1181095 (= res!1619697 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181095 (= (isPrefix!3843 lt!1406612 lt!1406605) lt!1406882)))

(declare-fun b!3991015 () Bool)

(declare-fun e!2474022 () Bool)

(assert (=> b!3991015 (= e!2474022 (isPrefix!3843 (tail!6223 lt!1406612) (tail!6223 lt!1406605)))))

(declare-fun b!3991016 () Bool)

(assert (=> b!3991016 (= e!2474021 (>= (size!31923 lt!1406605) (size!31923 lt!1406612)))))

(declare-fun b!3991014 () Bool)

(declare-fun res!1619695 () Bool)

(assert (=> b!3991014 (=> (not res!1619695) (not e!2474022))))

(assert (=> b!3991014 (= res!1619695 (= (head!8491 lt!1406612) (head!8491 lt!1406605)))))

(declare-fun b!3991013 () Bool)

(assert (=> b!3991013 (= e!2474020 e!2474022)))

(declare-fun res!1619694 () Bool)

(assert (=> b!3991013 (=> (not res!1619694) (not e!2474022))))

(assert (=> b!3991013 (= res!1619694 (not ((_ is Nil!42682) lt!1406605)))))

(assert (= (and d!1181095 (not res!1619697)) b!3991013))

(assert (= (and b!3991013 res!1619694) b!3991014))

(assert (= (and b!3991014 res!1619695) b!3991015))

(assert (= (and d!1181095 (not res!1619696)) b!3991016))

(assert (=> b!3991015 m!4568919))

(declare-fun m!4569669 () Bool)

(assert (=> b!3991015 m!4569669))

(assert (=> b!3991015 m!4568919))

(assert (=> b!3991015 m!4569669))

(declare-fun m!4569671 () Bool)

(assert (=> b!3991015 m!4569671))

(declare-fun m!4569673 () Bool)

(assert (=> b!3991016 m!4569673))

(assert (=> b!3991016 m!4568517))

(assert (=> b!3991014 m!4568923))

(declare-fun m!4569675 () Bool)

(assert (=> b!3991014 m!4569675))

(assert (=> b!3990327 d!1181095))

(declare-fun d!1181097 () Bool)

(assert (=> d!1181097 (= (inv!57006 (tag!7616 (rule!9774 token!484))) (= (mod (str.len (value!213179 (tag!7616 (rule!9774 token!484)))) 2) 0))))

(assert (=> b!3990328 d!1181097))

(declare-fun d!1181099 () Bool)

(declare-fun res!1619698 () Bool)

(declare-fun e!2474023 () Bool)

(assert (=> d!1181099 (=> (not res!1619698) (not e!2474023))))

(assert (=> d!1181099 (= res!1619698 (semiInverseModEq!2897 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (toValue!9244 (transformation!6756 (rule!9774 token!484)))))))

(assert (=> d!1181099 (= (inv!57009 (transformation!6756 (rule!9774 token!484))) e!2474023)))

(declare-fun b!3991017 () Bool)

(assert (=> b!3991017 (= e!2474023 (equivClasses!2796 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (toValue!9244 (transformation!6756 (rule!9774 token!484)))))))

(assert (= (and d!1181099 res!1619698) b!3991017))

(assert (=> d!1181099 m!4569559))

(assert (=> b!3991017 m!4569561))

(assert (=> b!3990328 d!1181099))

(declare-fun d!1181101 () Bool)

(declare-fun e!2474025 () Bool)

(assert (=> d!1181101 e!2474025))

(declare-fun res!1619701 () Bool)

(assert (=> d!1181101 (=> res!1619701 e!2474025)))

(declare-fun lt!1406883 () Bool)

(assert (=> d!1181101 (= res!1619701 (not lt!1406883))))

(declare-fun e!2474024 () Bool)

(assert (=> d!1181101 (= lt!1406883 e!2474024)))

(declare-fun res!1619702 () Bool)

(assert (=> d!1181101 (=> res!1619702 e!2474024)))

(assert (=> d!1181101 (= res!1619702 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181101 (= (isPrefix!3843 lt!1406584 lt!1406628) lt!1406883)))

(declare-fun b!3991020 () Bool)

(declare-fun e!2474026 () Bool)

(assert (=> b!3991020 (= e!2474026 (isPrefix!3843 (tail!6223 lt!1406584) (tail!6223 lt!1406628)))))

(declare-fun b!3991021 () Bool)

(assert (=> b!3991021 (= e!2474025 (>= (size!31923 lt!1406628) (size!31923 lt!1406584)))))

(declare-fun b!3991019 () Bool)

(declare-fun res!1619700 () Bool)

(assert (=> b!3991019 (=> (not res!1619700) (not e!2474026))))

(assert (=> b!3991019 (= res!1619700 (= (head!8491 lt!1406584) (head!8491 lt!1406628)))))

(declare-fun b!3991018 () Bool)

(assert (=> b!3991018 (= e!2474024 e!2474026)))

(declare-fun res!1619699 () Bool)

(assert (=> b!3991018 (=> (not res!1619699) (not e!2474026))))

(assert (=> b!3991018 (= res!1619699 (not ((_ is Nil!42682) lt!1406628)))))

(assert (= (and d!1181101 (not res!1619702)) b!3991018))

(assert (= (and b!3991018 res!1619699) b!3991019))

(assert (= (and b!3991019 res!1619700) b!3991020))

(assert (= (and d!1181101 (not res!1619701)) b!3991021))

(assert (=> b!3991020 m!4568845))

(assert (=> b!3991020 m!4569591))

(assert (=> b!3991020 m!4568845))

(assert (=> b!3991020 m!4569591))

(declare-fun m!4569677 () Bool)

(assert (=> b!3991020 m!4569677))

(assert (=> b!3991021 m!4568555))

(assert (=> b!3991021 m!4568653))

(assert (=> b!3991019 m!4568853))

(assert (=> b!3991019 m!4569595))

(assert (=> b!3990349 d!1181101))

(declare-fun d!1181103 () Bool)

(declare-fun e!2474028 () Bool)

(assert (=> d!1181103 e!2474028))

(declare-fun res!1619705 () Bool)

(assert (=> d!1181103 (=> res!1619705 e!2474028)))

(declare-fun lt!1406884 () Bool)

(assert (=> d!1181103 (= res!1619705 (not lt!1406884))))

(declare-fun e!2474027 () Bool)

(assert (=> d!1181103 (= lt!1406884 e!2474027)))

(declare-fun res!1619706 () Bool)

(assert (=> d!1181103 (=> res!1619706 e!2474027)))

(assert (=> d!1181103 (= res!1619706 ((_ is Nil!42682) lt!1406584))))

(assert (=> d!1181103 (= (isPrefix!3843 lt!1406584 lt!1406580) lt!1406884)))

(declare-fun b!3991024 () Bool)

(declare-fun e!2474029 () Bool)

(assert (=> b!3991024 (= e!2474029 (isPrefix!3843 (tail!6223 lt!1406584) (tail!6223 lt!1406580)))))

(declare-fun b!3991025 () Bool)

(assert (=> b!3991025 (= e!2474028 (>= (size!31923 lt!1406580) (size!31923 lt!1406584)))))

(declare-fun b!3991023 () Bool)

(declare-fun res!1619704 () Bool)

(assert (=> b!3991023 (=> (not res!1619704) (not e!2474029))))

(assert (=> b!3991023 (= res!1619704 (= (head!8491 lt!1406584) (head!8491 lt!1406580)))))

(declare-fun b!3991022 () Bool)

(assert (=> b!3991022 (= e!2474027 e!2474029)))

(declare-fun res!1619703 () Bool)

(assert (=> b!3991022 (=> (not res!1619703) (not e!2474029))))

(assert (=> b!3991022 (= res!1619703 (not ((_ is Nil!42682) lt!1406580)))))

(assert (= (and d!1181103 (not res!1619706)) b!3991022))

(assert (= (and b!3991022 res!1619703) b!3991023))

(assert (= (and b!3991023 res!1619704) b!3991024))

(assert (= (and d!1181103 (not res!1619705)) b!3991025))

(assert (=> b!3991024 m!4568845))

(declare-fun m!4569679 () Bool)

(assert (=> b!3991024 m!4569679))

(assert (=> b!3991024 m!4568845))

(assert (=> b!3991024 m!4569679))

(declare-fun m!4569681 () Bool)

(assert (=> b!3991024 m!4569681))

(declare-fun m!4569683 () Bool)

(assert (=> b!3991025 m!4569683))

(assert (=> b!3991025 m!4568653))

(assert (=> b!3991023 m!4568853))

(declare-fun m!4569685 () Bool)

(assert (=> b!3991023 m!4569685))

(assert (=> b!3990349 d!1181103))

(declare-fun d!1181105 () Bool)

(assert (=> d!1181105 (isPrefix!3843 lt!1406584 (++!11158 lt!1406583 lt!1406600))))

(declare-fun lt!1406885 () Unit!61448)

(assert (=> d!1181105 (= lt!1406885 (choose!24004 lt!1406584 lt!1406583 lt!1406600))))

(assert (=> d!1181105 (isPrefix!3843 lt!1406584 lt!1406583)))

(assert (=> d!1181105 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!676 lt!1406584 lt!1406583 lt!1406600) lt!1406885)))

(declare-fun bs!588409 () Bool)

(assert (= bs!588409 d!1181105))

(assert (=> bs!588409 m!4568583))

(assert (=> bs!588409 m!4568583))

(declare-fun m!4569687 () Bool)

(assert (=> bs!588409 m!4569687))

(declare-fun m!4569689 () Bool)

(assert (=> bs!588409 m!4569689))

(assert (=> bs!588409 m!4568699))

(assert (=> b!3990349 d!1181105))

(declare-fun d!1181107 () Bool)

(assert (=> d!1181107 (not (matchR!5638 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406584))))

(declare-fun lt!1406886 () Unit!61448)

(assert (=> d!1181107 (= lt!1406886 (choose!24005 thiss!21717 rules!2999 (rule!9774 token!484) lt!1406612 lt!1406628 lt!1406584 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))

(assert (=> d!1181107 (isPrefix!3843 lt!1406612 lt!1406628)))

(assert (=> d!1181107 (= (lemmaMaxPrefixOutputsMaxPrefix!410 thiss!21717 rules!2999 (rule!9774 token!484) lt!1406612 lt!1406628 lt!1406584 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406886)))

(declare-fun bs!588410 () Bool)

(assert (= bs!588410 d!1181107))

(assert (=> bs!588410 m!4568527))

(declare-fun m!4569691 () Bool)

(assert (=> bs!588410 m!4569691))

(assert (=> bs!588410 m!4568533))

(assert (=> b!3990326 d!1181107))

(declare-fun b!3991026 () Bool)

(declare-fun e!2474033 () Bool)

(declare-fun lt!1406887 () Bool)

(assert (=> b!3991026 (= e!2474033 (not lt!1406887))))

(declare-fun b!3991027 () Bool)

(declare-fun e!2474032 () Bool)

(assert (=> b!3991027 (= e!2474032 (nullable!4090 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))

(declare-fun b!3991028 () Bool)

(declare-fun res!1619714 () Bool)

(declare-fun e!2474030 () Bool)

(assert (=> b!3991028 (=> res!1619714 e!2474030)))

(assert (=> b!3991028 (= res!1619714 (not ((_ is ElementMatch!11661) (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))))

(assert (=> b!3991028 (= e!2474033 e!2474030)))

(declare-fun b!3991029 () Bool)

(declare-fun res!1619707 () Bool)

(assert (=> b!3991029 (=> res!1619707 e!2474030)))

(declare-fun e!2474031 () Bool)

(assert (=> b!3991029 (= res!1619707 e!2474031)))

(declare-fun res!1619713 () Bool)

(assert (=> b!3991029 (=> (not res!1619713) (not e!2474031))))

(assert (=> b!3991029 (= res!1619713 lt!1406887)))

(declare-fun b!3991030 () Bool)

(declare-fun res!1619712 () Bool)

(assert (=> b!3991030 (=> (not res!1619712) (not e!2474031))))

(declare-fun call!285828 () Bool)

(assert (=> b!3991030 (= res!1619712 (not call!285828))))

(declare-fun b!3991031 () Bool)

(declare-fun e!2474034 () Bool)

(assert (=> b!3991031 (= e!2474030 e!2474034)))

(declare-fun res!1619711 () Bool)

(assert (=> b!3991031 (=> (not res!1619711) (not e!2474034))))

(assert (=> b!3991031 (= res!1619711 (not lt!1406887))))

(declare-fun bm!285823 () Bool)

(assert (=> bm!285823 (= call!285828 (isEmpty!25511 lt!1406584))))

(declare-fun b!3991032 () Bool)

(assert (=> b!3991032 (= e!2474031 (= (head!8491 lt!1406584) (c!690625 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))))

(declare-fun b!3991033 () Bool)

(declare-fun e!2474036 () Bool)

(assert (=> b!3991033 (= e!2474036 (not (= (head!8491 lt!1406584) (c!690625 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))))

(declare-fun b!3991034 () Bool)

(declare-fun e!2474035 () Bool)

(assert (=> b!3991034 (= e!2474035 e!2474033)))

(declare-fun c!690739 () Bool)

(assert (=> b!3991034 (= c!690739 ((_ is EmptyLang!11661) (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))

(declare-fun b!3991035 () Bool)

(declare-fun res!1619709 () Bool)

(assert (=> b!3991035 (=> res!1619709 e!2474036)))

(assert (=> b!3991035 (= res!1619709 (not (isEmpty!25511 (tail!6223 lt!1406584))))))

(declare-fun b!3991036 () Bool)

(assert (=> b!3991036 (= e!2474034 e!2474036)))

(declare-fun res!1619710 () Bool)

(assert (=> b!3991036 (=> res!1619710 e!2474036)))

(assert (=> b!3991036 (= res!1619710 call!285828)))

(declare-fun b!3991037 () Bool)

(declare-fun res!1619708 () Bool)

(assert (=> b!3991037 (=> (not res!1619708) (not e!2474031))))

(assert (=> b!3991037 (= res!1619708 (isEmpty!25511 (tail!6223 lt!1406584)))))

(declare-fun b!3991038 () Bool)

(assert (=> b!3991038 (= e!2474035 (= lt!1406887 call!285828))))

(declare-fun d!1181109 () Bool)

(assert (=> d!1181109 e!2474035))

(declare-fun c!690740 () Bool)

(assert (=> d!1181109 (= c!690740 ((_ is EmptyExpr!11661) (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624))))))))

(assert (=> d!1181109 (= lt!1406887 e!2474032)))

(declare-fun c!690741 () Bool)

(assert (=> d!1181109 (= c!690741 (isEmpty!25511 lt!1406584))))

(assert (=> d!1181109 (validRegex!5290 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))))

(assert (=> d!1181109 (= (matchR!5638 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) lt!1406584) lt!1406887)))

(declare-fun b!3991039 () Bool)

(assert (=> b!3991039 (= e!2474032 (matchR!5638 (derivativeStep!3501 (regex!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))) (head!8491 lt!1406584)) (tail!6223 lt!1406584)))))

(assert (= (and d!1181109 c!690741) b!3991027))

(assert (= (and d!1181109 (not c!690741)) b!3991039))

(assert (= (and d!1181109 c!690740) b!3991038))

(assert (= (and d!1181109 (not c!690740)) b!3991034))

(assert (= (and b!3991034 c!690739) b!3991026))

(assert (= (and b!3991034 (not c!690739)) b!3991028))

(assert (= (and b!3991028 (not res!1619714)) b!3991029))

(assert (= (and b!3991029 res!1619713) b!3991030))

(assert (= (and b!3991030 res!1619712) b!3991037))

(assert (= (and b!3991037 res!1619708) b!3991032))

(assert (= (and b!3991029 (not res!1619707)) b!3991031))

(assert (= (and b!3991031 res!1619711) b!3991036))

(assert (= (and b!3991036 (not res!1619710)) b!3991035))

(assert (= (and b!3991035 (not res!1619709)) b!3991033))

(assert (= (or b!3991038 b!3991030 b!3991036) bm!285823))

(assert (=> b!3991033 m!4568853))

(declare-fun m!4569693 () Bool)

(assert (=> d!1181109 m!4569693))

(assert (=> d!1181109 m!4569491))

(assert (=> b!3991039 m!4568853))

(assert (=> b!3991039 m!4568853))

(declare-fun m!4569695 () Bool)

(assert (=> b!3991039 m!4569695))

(assert (=> b!3991039 m!4568845))

(assert (=> b!3991039 m!4569695))

(assert (=> b!3991039 m!4568845))

(declare-fun m!4569697 () Bool)

(assert (=> b!3991039 m!4569697))

(assert (=> bm!285823 m!4569693))

(assert (=> b!3991032 m!4568853))

(assert (=> b!3991037 m!4568845))

(assert (=> b!3991037 m!4568845))

(declare-fun m!4569699 () Bool)

(assert (=> b!3991037 m!4569699))

(assert (=> b!3991035 m!4568845))

(assert (=> b!3991035 m!4568845))

(assert (=> b!3991035 m!4569699))

(assert (=> b!3991027 m!4569493))

(assert (=> b!3990326 d!1181109))

(declare-fun b!3991058 () Bool)

(declare-fun res!1619732 () Bool)

(declare-fun e!2474044 () Bool)

(assert (=> b!3991058 (=> (not res!1619732) (not e!2474044))))

(declare-fun lt!1406902 () Option!9170)

(assert (=> b!3991058 (= res!1619732 (= (++!11158 (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406902)))) (_2!24076 (get!14044 lt!1406902))) lt!1406583))))

(declare-fun b!3991059 () Bool)

(declare-fun res!1619735 () Bool)

(assert (=> b!3991059 (=> (not res!1619735) (not e!2474044))))

(assert (=> b!3991059 (= res!1619735 (matchR!5638 (regex!6756 (rule!9774 (_1!24076 (get!14044 lt!1406902)))) (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406902))))))))

(declare-fun b!3991060 () Bool)

(declare-fun e!2474045 () Bool)

(assert (=> b!3991060 (= e!2474045 e!2474044)))

(declare-fun res!1619731 () Bool)

(assert (=> b!3991060 (=> (not res!1619731) (not e!2474044))))

(declare-fun isDefined!7042 (Option!9170) Bool)

(assert (=> b!3991060 (= res!1619731 (isDefined!7042 lt!1406902))))

(declare-fun b!3991061 () Bool)

(declare-fun res!1619733 () Bool)

(assert (=> b!3991061 (=> (not res!1619733) (not e!2474044))))

(assert (=> b!3991061 (= res!1619733 (= (value!213180 (_1!24076 (get!14044 lt!1406902))) (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (get!14044 lt!1406902)))) (seqFromList!4995 (originalCharacters!7356 (_1!24076 (get!14044 lt!1406902)))))))))

(declare-fun b!3991062 () Bool)

(declare-fun e!2474043 () Option!9170)

(declare-fun lt!1406899 () Option!9170)

(declare-fun lt!1406898 () Option!9170)

(assert (=> b!3991062 (= e!2474043 (ite (and ((_ is None!9169) lt!1406899) ((_ is None!9169) lt!1406898)) None!9169 (ite ((_ is None!9169) lt!1406898) lt!1406899 (ite ((_ is None!9169) lt!1406899) lt!1406898 (ite (>= (size!31922 (_1!24076 (v!39525 lt!1406899))) (size!31922 (_1!24076 (v!39525 lt!1406898)))) lt!1406899 lt!1406898)))))))

(declare-fun call!285831 () Option!9170)

(assert (=> b!3991062 (= lt!1406899 call!285831)))

(assert (=> b!3991062 (= lt!1406898 (maxPrefix!3643 thiss!21717 (t!331751 rules!2999) lt!1406583))))

(declare-fun b!3991063 () Bool)

(declare-fun res!1619729 () Bool)

(assert (=> b!3991063 (=> (not res!1619729) (not e!2474044))))

(assert (=> b!3991063 (= res!1619729 (= (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406902)))) (originalCharacters!7356 (_1!24076 (get!14044 lt!1406902)))))))

(declare-fun b!3991064 () Bool)

(assert (=> b!3991064 (= e!2474044 (contains!8493 rules!2999 (rule!9774 (_1!24076 (get!14044 lt!1406902)))))))

(declare-fun d!1181111 () Bool)

(assert (=> d!1181111 e!2474045))

(declare-fun res!1619730 () Bool)

(assert (=> d!1181111 (=> res!1619730 e!2474045)))

(assert (=> d!1181111 (= res!1619730 (isEmpty!25512 lt!1406902))))

(assert (=> d!1181111 (= lt!1406902 e!2474043)))

(declare-fun c!690744 () Bool)

(assert (=> d!1181111 (= c!690744 (and ((_ is Cons!42684) rules!2999) ((_ is Nil!42684) (t!331751 rules!2999))))))

(declare-fun lt!1406901 () Unit!61448)

(declare-fun lt!1406900 () Unit!61448)

(assert (=> d!1181111 (= lt!1406901 lt!1406900)))

(assert (=> d!1181111 (isPrefix!3843 lt!1406583 lt!1406583)))

(assert (=> d!1181111 (= lt!1406900 (lemmaIsPrefixRefl!2435 lt!1406583 lt!1406583))))

(declare-fun rulesValidInductive!2457 (LexerInterface!6345 List!42808) Bool)

(assert (=> d!1181111 (rulesValidInductive!2457 thiss!21717 rules!2999)))

(assert (=> d!1181111 (= (maxPrefix!3643 thiss!21717 rules!2999 lt!1406583) lt!1406902)))

(declare-fun bm!285826 () Bool)

(assert (=> bm!285826 (= call!285831 (maxPrefixOneRule!2677 thiss!21717 (h!48104 rules!2999) lt!1406583))))

(declare-fun b!3991065 () Bool)

(assert (=> b!3991065 (= e!2474043 call!285831)))

(declare-fun b!3991066 () Bool)

(declare-fun res!1619734 () Bool)

(assert (=> b!3991066 (=> (not res!1619734) (not e!2474044))))

(assert (=> b!3991066 (= res!1619734 (< (size!31923 (_2!24076 (get!14044 lt!1406902))) (size!31923 lt!1406583)))))

(assert (= (and d!1181111 c!690744) b!3991065))

(assert (= (and d!1181111 (not c!690744)) b!3991062))

(assert (= (or b!3991065 b!3991062) bm!285826))

(assert (= (and d!1181111 (not res!1619730)) b!3991060))

(assert (= (and b!3991060 res!1619731) b!3991063))

(assert (= (and b!3991063 res!1619729) b!3991066))

(assert (= (and b!3991066 res!1619734) b!3991058))

(assert (= (and b!3991058 res!1619732) b!3991061))

(assert (= (and b!3991061 res!1619733) b!3991059))

(assert (= (and b!3991059 res!1619735) b!3991064))

(declare-fun m!4569701 () Bool)

(assert (=> b!3991062 m!4569701))

(declare-fun m!4569703 () Bool)

(assert (=> d!1181111 m!4569703))

(declare-fun m!4569705 () Bool)

(assert (=> d!1181111 m!4569705))

(declare-fun m!4569707 () Bool)

(assert (=> d!1181111 m!4569707))

(declare-fun m!4569709 () Bool)

(assert (=> d!1181111 m!4569709))

(declare-fun m!4569711 () Bool)

(assert (=> bm!285826 m!4569711))

(declare-fun m!4569713 () Bool)

(assert (=> b!3991061 m!4569713))

(declare-fun m!4569715 () Bool)

(assert (=> b!3991061 m!4569715))

(assert (=> b!3991061 m!4569715))

(declare-fun m!4569717 () Bool)

(assert (=> b!3991061 m!4569717))

(assert (=> b!3991059 m!4569713))

(declare-fun m!4569719 () Bool)

(assert (=> b!3991059 m!4569719))

(assert (=> b!3991059 m!4569719))

(declare-fun m!4569721 () Bool)

(assert (=> b!3991059 m!4569721))

(assert (=> b!3991059 m!4569721))

(declare-fun m!4569723 () Bool)

(assert (=> b!3991059 m!4569723))

(assert (=> b!3991058 m!4569713))

(assert (=> b!3991058 m!4569719))

(assert (=> b!3991058 m!4569719))

(assert (=> b!3991058 m!4569721))

(assert (=> b!3991058 m!4569721))

(declare-fun m!4569725 () Bool)

(assert (=> b!3991058 m!4569725))

(assert (=> b!3991066 m!4569713))

(declare-fun m!4569727 () Bool)

(assert (=> b!3991066 m!4569727))

(assert (=> b!3991066 m!4568851))

(declare-fun m!4569729 () Bool)

(assert (=> b!3991060 m!4569729))

(assert (=> b!3991064 m!4569713))

(declare-fun m!4569731 () Bool)

(assert (=> b!3991064 m!4569731))

(assert (=> b!3991063 m!4569713))

(assert (=> b!3991063 m!4569719))

(assert (=> b!3991063 m!4569719))

(assert (=> b!3991063 m!4569721))

(assert (=> b!3990348 d!1181111))

(declare-fun d!1181113 () Bool)

(assert (=> d!1181113 (= suffixResult!105 lt!1406625)))

(declare-fun lt!1406903 () Unit!61448)

(assert (=> d!1181113 (= lt!1406903 (choose!24002 lt!1406612 suffixResult!105 lt!1406612 lt!1406625 lt!1406628))))

(assert (=> d!1181113 (isPrefix!3843 lt!1406612 lt!1406628)))

(assert (=> d!1181113 (= (lemmaSamePrefixThenSameSuffix!2030 lt!1406612 suffixResult!105 lt!1406612 lt!1406625 lt!1406628) lt!1406903)))

(declare-fun bs!588411 () Bool)

(assert (= bs!588411 d!1181113))

(declare-fun m!4569733 () Bool)

(assert (=> bs!588411 m!4569733))

(assert (=> bs!588411 m!4568533))

(assert (=> b!3990348 d!1181113))

(declare-fun d!1181115 () Bool)

(declare-fun e!2474047 () Bool)

(assert (=> d!1181115 e!2474047))

(declare-fun res!1619738 () Bool)

(assert (=> d!1181115 (=> res!1619738 e!2474047)))

(declare-fun lt!1406904 () Bool)

(assert (=> d!1181115 (= res!1619738 (not lt!1406904))))

(declare-fun e!2474046 () Bool)

(assert (=> d!1181115 (= lt!1406904 e!2474046)))

(declare-fun res!1619739 () Bool)

(assert (=> d!1181115 (=> res!1619739 e!2474046)))

(assert (=> d!1181115 (= res!1619739 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181115 (= (isPrefix!3843 lt!1406612 lt!1406619) lt!1406904)))

(declare-fun b!3991069 () Bool)

(declare-fun e!2474048 () Bool)

(assert (=> b!3991069 (= e!2474048 (isPrefix!3843 (tail!6223 lt!1406612) (tail!6223 lt!1406619)))))

(declare-fun b!3991070 () Bool)

(assert (=> b!3991070 (= e!2474047 (>= (size!31923 lt!1406619) (size!31923 lt!1406612)))))

(declare-fun b!3991068 () Bool)

(declare-fun res!1619737 () Bool)

(assert (=> b!3991068 (=> (not res!1619737) (not e!2474048))))

(assert (=> b!3991068 (= res!1619737 (= (head!8491 lt!1406612) (head!8491 lt!1406619)))))

(declare-fun b!3991067 () Bool)

(assert (=> b!3991067 (= e!2474046 e!2474048)))

(declare-fun res!1619736 () Bool)

(assert (=> b!3991067 (=> (not res!1619736) (not e!2474048))))

(assert (=> b!3991067 (= res!1619736 (not ((_ is Nil!42682) lt!1406619)))))

(assert (= (and d!1181115 (not res!1619739)) b!3991067))

(assert (= (and b!3991067 res!1619736) b!3991068))

(assert (= (and b!3991068 res!1619737) b!3991069))

(assert (= (and d!1181115 (not res!1619738)) b!3991070))

(assert (=> b!3991069 m!4568919))

(declare-fun m!4569735 () Bool)

(assert (=> b!3991069 m!4569735))

(assert (=> b!3991069 m!4568919))

(assert (=> b!3991069 m!4569735))

(declare-fun m!4569737 () Bool)

(assert (=> b!3991069 m!4569737))

(declare-fun m!4569739 () Bool)

(assert (=> b!3991070 m!4569739))

(assert (=> b!3991070 m!4568517))

(assert (=> b!3991068 m!4568923))

(declare-fun m!4569741 () Bool)

(assert (=> b!3991068 m!4569741))

(assert (=> b!3990348 d!1181115))

(declare-fun d!1181117 () Bool)

(assert (=> d!1181117 (isPrefix!3843 lt!1406612 (++!11158 lt!1406612 lt!1406625))))

(declare-fun lt!1406905 () Unit!61448)

(assert (=> d!1181117 (= lt!1406905 (choose!23999 lt!1406612 lt!1406625))))

(assert (=> d!1181117 (= (lemmaConcatTwoListThenFirstIsPrefix!2686 lt!1406612 lt!1406625) lt!1406905)))

(declare-fun bs!588412 () Bool)

(assert (= bs!588412 d!1181117))

(assert (=> bs!588412 m!4568681))

(assert (=> bs!588412 m!4568681))

(declare-fun m!4569743 () Bool)

(assert (=> bs!588412 m!4569743))

(declare-fun m!4569745 () Bool)

(assert (=> bs!588412 m!4569745))

(assert (=> b!3990348 d!1181117))

(declare-fun b!3991071 () Bool)

(declare-fun res!1619743 () Bool)

(declare-fun e!2474050 () Bool)

(assert (=> b!3991071 (=> (not res!1619743) (not e!2474050))))

(declare-fun lt!1406910 () Option!9170)

(assert (=> b!3991071 (= res!1619743 (= (++!11158 (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406910)))) (_2!24076 (get!14044 lt!1406910))) lt!1406628))))

(declare-fun b!3991072 () Bool)

(declare-fun res!1619746 () Bool)

(assert (=> b!3991072 (=> (not res!1619746) (not e!2474050))))

(assert (=> b!3991072 (= res!1619746 (matchR!5638 (regex!6756 (rule!9774 (_1!24076 (get!14044 lt!1406910)))) (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406910))))))))

(declare-fun b!3991073 () Bool)

(declare-fun e!2474051 () Bool)

(assert (=> b!3991073 (= e!2474051 e!2474050)))

(declare-fun res!1619742 () Bool)

(assert (=> b!3991073 (=> (not res!1619742) (not e!2474050))))

(assert (=> b!3991073 (= res!1619742 (isDefined!7042 lt!1406910))))

(declare-fun b!3991074 () Bool)

(declare-fun res!1619744 () Bool)

(assert (=> b!3991074 (=> (not res!1619744) (not e!2474050))))

(assert (=> b!3991074 (= res!1619744 (= (value!213180 (_1!24076 (get!14044 lt!1406910))) (apply!9967 (transformation!6756 (rule!9774 (_1!24076 (get!14044 lt!1406910)))) (seqFromList!4995 (originalCharacters!7356 (_1!24076 (get!14044 lt!1406910)))))))))

(declare-fun b!3991075 () Bool)

(declare-fun e!2474049 () Option!9170)

(declare-fun lt!1406907 () Option!9170)

(declare-fun lt!1406906 () Option!9170)

(assert (=> b!3991075 (= e!2474049 (ite (and ((_ is None!9169) lt!1406907) ((_ is None!9169) lt!1406906)) None!9169 (ite ((_ is None!9169) lt!1406906) lt!1406907 (ite ((_ is None!9169) lt!1406907) lt!1406906 (ite (>= (size!31922 (_1!24076 (v!39525 lt!1406907))) (size!31922 (_1!24076 (v!39525 lt!1406906)))) lt!1406907 lt!1406906)))))))

(declare-fun call!285832 () Option!9170)

(assert (=> b!3991075 (= lt!1406907 call!285832)))

(assert (=> b!3991075 (= lt!1406906 (maxPrefix!3643 thiss!21717 (t!331751 rules!2999) lt!1406628))))

(declare-fun b!3991076 () Bool)

(declare-fun res!1619740 () Bool)

(assert (=> b!3991076 (=> (not res!1619740) (not e!2474050))))

(assert (=> b!3991076 (= res!1619740 (= (list!15846 (charsOf!4572 (_1!24076 (get!14044 lt!1406910)))) (originalCharacters!7356 (_1!24076 (get!14044 lt!1406910)))))))

(declare-fun b!3991077 () Bool)

(assert (=> b!3991077 (= e!2474050 (contains!8493 rules!2999 (rule!9774 (_1!24076 (get!14044 lt!1406910)))))))

(declare-fun d!1181119 () Bool)

(assert (=> d!1181119 e!2474051))

(declare-fun res!1619741 () Bool)

(assert (=> d!1181119 (=> res!1619741 e!2474051)))

(assert (=> d!1181119 (= res!1619741 (isEmpty!25512 lt!1406910))))

(assert (=> d!1181119 (= lt!1406910 e!2474049)))

(declare-fun c!690745 () Bool)

(assert (=> d!1181119 (= c!690745 (and ((_ is Cons!42684) rules!2999) ((_ is Nil!42684) (t!331751 rules!2999))))))

(declare-fun lt!1406909 () Unit!61448)

(declare-fun lt!1406908 () Unit!61448)

(assert (=> d!1181119 (= lt!1406909 lt!1406908)))

(assert (=> d!1181119 (isPrefix!3843 lt!1406628 lt!1406628)))

(assert (=> d!1181119 (= lt!1406908 (lemmaIsPrefixRefl!2435 lt!1406628 lt!1406628))))

(assert (=> d!1181119 (rulesValidInductive!2457 thiss!21717 rules!2999)))

(assert (=> d!1181119 (= (maxPrefix!3643 thiss!21717 rules!2999 lt!1406628) lt!1406910)))

(declare-fun bm!285827 () Bool)

(assert (=> bm!285827 (= call!285832 (maxPrefixOneRule!2677 thiss!21717 (h!48104 rules!2999) lt!1406628))))

(declare-fun b!3991078 () Bool)

(assert (=> b!3991078 (= e!2474049 call!285832)))

(declare-fun b!3991079 () Bool)

(declare-fun res!1619745 () Bool)

(assert (=> b!3991079 (=> (not res!1619745) (not e!2474050))))

(assert (=> b!3991079 (= res!1619745 (< (size!31923 (_2!24076 (get!14044 lt!1406910))) (size!31923 lt!1406628)))))

(assert (= (and d!1181119 c!690745) b!3991078))

(assert (= (and d!1181119 (not c!690745)) b!3991075))

(assert (= (or b!3991078 b!3991075) bm!285827))

(assert (= (and d!1181119 (not res!1619741)) b!3991073))

(assert (= (and b!3991073 res!1619742) b!3991076))

(assert (= (and b!3991076 res!1619740) b!3991079))

(assert (= (and b!3991079 res!1619745) b!3991071))

(assert (= (and b!3991071 res!1619743) b!3991074))

(assert (= (and b!3991074 res!1619744) b!3991072))

(assert (= (and b!3991072 res!1619746) b!3991077))

(declare-fun m!4569747 () Bool)

(assert (=> b!3991075 m!4569747))

(declare-fun m!4569749 () Bool)

(assert (=> d!1181119 m!4569749))

(assert (=> d!1181119 m!4568685))

(assert (=> d!1181119 m!4568687))

(assert (=> d!1181119 m!4569709))

(declare-fun m!4569751 () Bool)

(assert (=> bm!285827 m!4569751))

(declare-fun m!4569753 () Bool)

(assert (=> b!3991074 m!4569753))

(declare-fun m!4569755 () Bool)

(assert (=> b!3991074 m!4569755))

(assert (=> b!3991074 m!4569755))

(declare-fun m!4569757 () Bool)

(assert (=> b!3991074 m!4569757))

(assert (=> b!3991072 m!4569753))

(declare-fun m!4569759 () Bool)

(assert (=> b!3991072 m!4569759))

(assert (=> b!3991072 m!4569759))

(declare-fun m!4569761 () Bool)

(assert (=> b!3991072 m!4569761))

(assert (=> b!3991072 m!4569761))

(declare-fun m!4569763 () Bool)

(assert (=> b!3991072 m!4569763))

(assert (=> b!3991071 m!4569753))

(assert (=> b!3991071 m!4569759))

(assert (=> b!3991071 m!4569759))

(assert (=> b!3991071 m!4569761))

(assert (=> b!3991071 m!4569761))

(declare-fun m!4569765 () Bool)

(assert (=> b!3991071 m!4569765))

(assert (=> b!3991079 m!4569753))

(declare-fun m!4569767 () Bool)

(assert (=> b!3991079 m!4569767))

(assert (=> b!3991079 m!4568555))

(declare-fun m!4569769 () Bool)

(assert (=> b!3991073 m!4569769))

(assert (=> b!3991077 m!4569753))

(declare-fun m!4569771 () Bool)

(assert (=> b!3991077 m!4569771))

(assert (=> b!3991076 m!4569753))

(assert (=> b!3991076 m!4569759))

(assert (=> b!3991076 m!4569759))

(assert (=> b!3991076 m!4569761))

(assert (=> b!3990335 d!1181119))

(declare-fun b!3991080 () Bool)

(declare-fun e!2474052 () List!42806)

(assert (=> b!3991080 (= e!2474052 suffix!1299)))

(declare-fun b!3991083 () Bool)

(declare-fun lt!1406911 () List!42806)

(declare-fun e!2474053 () Bool)

(assert (=> b!3991083 (= e!2474053 (or (not (= suffix!1299 Nil!42682)) (= lt!1406911 prefix!494)))))

(declare-fun d!1181121 () Bool)

(assert (=> d!1181121 e!2474053))

(declare-fun res!1619747 () Bool)

(assert (=> d!1181121 (=> (not res!1619747) (not e!2474053))))

(assert (=> d!1181121 (= res!1619747 (= (content!6473 lt!1406911) ((_ map or) (content!6473 prefix!494) (content!6473 suffix!1299))))))

(assert (=> d!1181121 (= lt!1406911 e!2474052)))

(declare-fun c!690746 () Bool)

(assert (=> d!1181121 (= c!690746 ((_ is Nil!42682) prefix!494))))

(assert (=> d!1181121 (= (++!11158 prefix!494 suffix!1299) lt!1406911)))

(declare-fun b!3991081 () Bool)

(assert (=> b!3991081 (= e!2474052 (Cons!42682 (h!48102 prefix!494) (++!11158 (t!331749 prefix!494) suffix!1299)))))

(declare-fun b!3991082 () Bool)

(declare-fun res!1619748 () Bool)

(assert (=> b!3991082 (=> (not res!1619748) (not e!2474053))))

(assert (=> b!3991082 (= res!1619748 (= (size!31923 lt!1406911) (+ (size!31923 prefix!494) (size!31923 suffix!1299))))))

(assert (= (and d!1181121 c!690746) b!3991080))

(assert (= (and d!1181121 (not c!690746)) b!3991081))

(assert (= (and d!1181121 res!1619747) b!3991082))

(assert (= (and b!3991082 res!1619748) b!3991083))

(declare-fun m!4569773 () Bool)

(assert (=> d!1181121 m!4569773))

(assert (=> d!1181121 m!4568931))

(declare-fun m!4569775 () Bool)

(assert (=> d!1181121 m!4569775))

(declare-fun m!4569777 () Bool)

(assert (=> b!3991081 m!4569777))

(declare-fun m!4569779 () Bool)

(assert (=> b!3991082 m!4569779))

(assert (=> b!3991082 m!4568519))

(assert (=> b!3991082 m!4568625))

(assert (=> b!3990335 d!1181121))

(declare-fun d!1181123 () Bool)

(declare-fun lt!1406912 () Int)

(assert (=> d!1181123 (>= lt!1406912 0)))

(declare-fun e!2474054 () Int)

(assert (=> d!1181123 (= lt!1406912 e!2474054)))

(declare-fun c!690747 () Bool)

(assert (=> d!1181123 (= c!690747 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181123 (= (size!31923 lt!1406612) lt!1406912)))

(declare-fun b!3991084 () Bool)

(assert (=> b!3991084 (= e!2474054 0)))

(declare-fun b!3991085 () Bool)

(assert (=> b!3991085 (= e!2474054 (+ 1 (size!31923 (t!331749 lt!1406612))))))

(assert (= (and d!1181123 c!690747) b!3991084))

(assert (= (and d!1181123 (not c!690747)) b!3991085))

(declare-fun m!4569781 () Bool)

(assert (=> b!3991085 m!4569781))

(assert (=> b!3990357 d!1181123))

(declare-fun d!1181125 () Bool)

(declare-fun lt!1406913 () Int)

(assert (=> d!1181125 (>= lt!1406913 0)))

(declare-fun e!2474055 () Int)

(assert (=> d!1181125 (= lt!1406913 e!2474055)))

(declare-fun c!690748 () Bool)

(assert (=> d!1181125 (= c!690748 ((_ is Nil!42682) prefix!494))))

(assert (=> d!1181125 (= (size!31923 prefix!494) lt!1406913)))

(declare-fun b!3991086 () Bool)

(assert (=> b!3991086 (= e!2474055 0)))

(declare-fun b!3991087 () Bool)

(assert (=> b!3991087 (= e!2474055 (+ 1 (size!31923 (t!331749 prefix!494))))))

(assert (= (and d!1181125 c!690748) b!3991086))

(assert (= (and d!1181125 (not c!690748)) b!3991087))

(declare-fun m!4569783 () Bool)

(assert (=> b!3991087 m!4569783))

(assert (=> b!3990357 d!1181125))

(declare-fun d!1181127 () Bool)

(assert (=> d!1181127 (= (list!15846 (charsOf!4572 token!484)) (list!15848 (c!690624 (charsOf!4572 token!484))))))

(declare-fun bs!588413 () Bool)

(assert (= bs!588413 d!1181127))

(declare-fun m!4569785 () Bool)

(assert (=> bs!588413 m!4569785))

(assert (=> b!3990357 d!1181127))

(declare-fun d!1181129 () Bool)

(declare-fun lt!1406914 () BalanceConc!25528)

(assert (=> d!1181129 (= (list!15846 lt!1406914) (originalCharacters!7356 token!484))))

(assert (=> d!1181129 (= lt!1406914 (dynLambda!18131 (toChars!9103 (transformation!6756 (rule!9774 token!484))) (value!213180 token!484)))))

(assert (=> d!1181129 (= (charsOf!4572 token!484) lt!1406914)))

(declare-fun b_lambda!116519 () Bool)

(assert (=> (not b_lambda!116519) (not d!1181129)))

(assert (=> d!1181129 t!331753))

(declare-fun b_and!306639 () Bool)

(assert (= b_and!306603 (and (=> t!331753 result!291046) b_and!306639)))

(assert (=> d!1181129 t!331755))

(declare-fun b_and!306641 () Bool)

(assert (= b_and!306609 (and (=> t!331755 result!291050) b_and!306641)))

(declare-fun m!4569787 () Bool)

(assert (=> d!1181129 m!4569787))

(assert (=> d!1181129 m!4568831))

(assert (=> b!3990357 d!1181129))

(declare-fun b!3991088 () Bool)

(declare-fun e!2474056 () List!42806)

(assert (=> b!3991088 (= e!2474056 lt!1406588)))

(declare-fun lt!1406915 () List!42806)

(declare-fun e!2474057 () Bool)

(declare-fun b!3991091 () Bool)

(assert (=> b!3991091 (= e!2474057 (or (not (= lt!1406588 Nil!42682)) (= lt!1406915 prefix!494)))))

(declare-fun d!1181131 () Bool)

(assert (=> d!1181131 e!2474057))

(declare-fun res!1619749 () Bool)

(assert (=> d!1181131 (=> (not res!1619749) (not e!2474057))))

(assert (=> d!1181131 (= res!1619749 (= (content!6473 lt!1406915) ((_ map or) (content!6473 prefix!494) (content!6473 lt!1406588))))))

(assert (=> d!1181131 (= lt!1406915 e!2474056)))

(declare-fun c!690749 () Bool)

(assert (=> d!1181131 (= c!690749 ((_ is Nil!42682) prefix!494))))

(assert (=> d!1181131 (= (++!11158 prefix!494 lt!1406588) lt!1406915)))

(declare-fun b!3991089 () Bool)

(assert (=> b!3991089 (= e!2474056 (Cons!42682 (h!48102 prefix!494) (++!11158 (t!331749 prefix!494) lt!1406588)))))

(declare-fun b!3991090 () Bool)

(declare-fun res!1619750 () Bool)

(assert (=> b!3991090 (=> (not res!1619750) (not e!2474057))))

(assert (=> b!3991090 (= res!1619750 (= (size!31923 lt!1406915) (+ (size!31923 prefix!494) (size!31923 lt!1406588))))))

(assert (= (and d!1181131 c!690749) b!3991088))

(assert (= (and d!1181131 (not c!690749)) b!3991089))

(assert (= (and d!1181131 res!1619749) b!3991090))

(assert (= (and b!3991090 res!1619750) b!3991091))

(declare-fun m!4569789 () Bool)

(assert (=> d!1181131 m!4569789))

(assert (=> d!1181131 m!4568931))

(declare-fun m!4569791 () Bool)

(assert (=> d!1181131 m!4569791))

(declare-fun m!4569793 () Bool)

(assert (=> b!3991089 m!4569793))

(declare-fun m!4569795 () Bool)

(assert (=> b!3991090 m!4569795))

(assert (=> b!3991090 m!4568519))

(declare-fun m!4569797 () Bool)

(assert (=> b!3991090 m!4569797))

(assert (=> b!3990356 d!1181131))

(declare-fun b!3991092 () Bool)

(declare-fun e!2474058 () List!42806)

(assert (=> b!3991092 (= e!2474058 lt!1406600)))

(declare-fun e!2474059 () Bool)

(declare-fun b!3991095 () Bool)

(declare-fun lt!1406916 () List!42806)

(assert (=> b!3991095 (= e!2474059 (or (not (= lt!1406600 Nil!42682)) (= lt!1406916 lt!1406583)))))

(declare-fun d!1181133 () Bool)

(assert (=> d!1181133 e!2474059))

(declare-fun res!1619751 () Bool)

(assert (=> d!1181133 (=> (not res!1619751) (not e!2474059))))

(assert (=> d!1181133 (= res!1619751 (= (content!6473 lt!1406916) ((_ map or) (content!6473 lt!1406583) (content!6473 lt!1406600))))))

(assert (=> d!1181133 (= lt!1406916 e!2474058)))

(declare-fun c!690750 () Bool)

(assert (=> d!1181133 (= c!690750 ((_ is Nil!42682) lt!1406583))))

(assert (=> d!1181133 (= (++!11158 lt!1406583 lt!1406600) lt!1406916)))

(declare-fun b!3991093 () Bool)

(assert (=> b!3991093 (= e!2474058 (Cons!42682 (h!48102 lt!1406583) (++!11158 (t!331749 lt!1406583) lt!1406600)))))

(declare-fun b!3991094 () Bool)

(declare-fun res!1619752 () Bool)

(assert (=> b!3991094 (=> (not res!1619752) (not e!2474059))))

(assert (=> b!3991094 (= res!1619752 (= (size!31923 lt!1406916) (+ (size!31923 lt!1406583) (size!31923 lt!1406600))))))

(assert (= (and d!1181133 c!690750) b!3991092))

(assert (= (and d!1181133 (not c!690750)) b!3991093))

(assert (= (and d!1181133 res!1619751) b!3991094))

(assert (= (and b!3991094 res!1619752) b!3991095))

(declare-fun m!4569799 () Bool)

(assert (=> d!1181133 m!4569799))

(declare-fun m!4569801 () Bool)

(assert (=> d!1181133 m!4569801))

(declare-fun m!4569803 () Bool)

(assert (=> d!1181133 m!4569803))

(declare-fun m!4569805 () Bool)

(assert (=> b!3991093 m!4569805))

(declare-fun m!4569807 () Bool)

(assert (=> b!3991094 m!4569807))

(assert (=> b!3991094 m!4568851))

(declare-fun m!4569809 () Bool)

(assert (=> b!3991094 m!4569809))

(assert (=> b!3990356 d!1181133))

(declare-fun d!1181135 () Bool)

(assert (=> d!1181135 (= (++!11158 (++!11158 prefix!494 newSuffix!27) lt!1406600) (++!11158 prefix!494 (++!11158 newSuffix!27 lt!1406600)))))

(declare-fun lt!1406919 () Unit!61448)

(declare-fun choose!24010 (List!42806 List!42806 List!42806) Unit!61448)

(assert (=> d!1181135 (= lt!1406919 (choose!24010 prefix!494 newSuffix!27 lt!1406600))))

(assert (=> d!1181135 (= (lemmaConcatAssociativity!2478 prefix!494 newSuffix!27 lt!1406600) lt!1406919)))

(declare-fun bs!588414 () Bool)

(assert (= bs!588414 d!1181135))

(assert (=> bs!588414 m!4568577))

(declare-fun m!4569811 () Bool)

(assert (=> bs!588414 m!4569811))

(assert (=> bs!588414 m!4568671))

(declare-fun m!4569813 () Bool)

(assert (=> bs!588414 m!4569813))

(assert (=> bs!588414 m!4568671))

(declare-fun m!4569815 () Bool)

(assert (=> bs!588414 m!4569815))

(assert (=> bs!588414 m!4568577))

(assert (=> b!3990356 d!1181135))

(declare-fun b!3991096 () Bool)

(declare-fun e!2474060 () List!42806)

(assert (=> b!3991096 (= e!2474060 lt!1406626)))

(declare-fun b!3991099 () Bool)

(declare-fun e!2474061 () Bool)

(declare-fun lt!1406920 () List!42806)

(assert (=> b!3991099 (= e!2474061 (or (not (= lt!1406626 Nil!42682)) (= lt!1406920 lt!1406612)))))

(declare-fun d!1181137 () Bool)

(assert (=> d!1181137 e!2474061))

(declare-fun res!1619753 () Bool)

(assert (=> d!1181137 (=> (not res!1619753) (not e!2474061))))

(assert (=> d!1181137 (= res!1619753 (= (content!6473 lt!1406920) ((_ map or) (content!6473 lt!1406612) (content!6473 lt!1406626))))))

(assert (=> d!1181137 (= lt!1406920 e!2474060)))

(declare-fun c!690751 () Bool)

(assert (=> d!1181137 (= c!690751 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181137 (= (++!11158 lt!1406612 lt!1406626) lt!1406920)))

(declare-fun b!3991097 () Bool)

(assert (=> b!3991097 (= e!2474060 (Cons!42682 (h!48102 lt!1406612) (++!11158 (t!331749 lt!1406612) lt!1406626)))))

(declare-fun b!3991098 () Bool)

(declare-fun res!1619754 () Bool)

(assert (=> b!3991098 (=> (not res!1619754) (not e!2474061))))

(assert (=> b!3991098 (= res!1619754 (= (size!31923 lt!1406920) (+ (size!31923 lt!1406612) (size!31923 lt!1406626))))))

(assert (= (and d!1181137 c!690751) b!3991096))

(assert (= (and d!1181137 (not c!690751)) b!3991097))

(assert (= (and d!1181137 res!1619753) b!3991098))

(assert (= (and b!3991098 res!1619754) b!3991099))

(declare-fun m!4569817 () Bool)

(assert (=> d!1181137 m!4569817))

(assert (=> d!1181137 m!4568859))

(declare-fun m!4569819 () Bool)

(assert (=> d!1181137 m!4569819))

(declare-fun m!4569821 () Bool)

(assert (=> b!3991097 m!4569821))

(declare-fun m!4569823 () Bool)

(assert (=> b!3991098 m!4569823))

(assert (=> b!3991098 m!4568517))

(declare-fun m!4569825 () Bool)

(assert (=> b!3991098 m!4569825))

(assert (=> b!3990354 d!1181137))

(declare-fun b!3991100 () Bool)

(declare-fun e!2474062 () List!42806)

(assert (=> b!3991100 (= e!2474062 suffix!1299)))

(declare-fun e!2474063 () Bool)

(declare-fun lt!1406921 () List!42806)

(declare-fun b!3991103 () Bool)

(assert (=> b!3991103 (= e!2474063 (or (not (= suffix!1299 Nil!42682)) (= lt!1406921 lt!1406629)))))

(declare-fun d!1181139 () Bool)

(assert (=> d!1181139 e!2474063))

(declare-fun res!1619755 () Bool)

(assert (=> d!1181139 (=> (not res!1619755) (not e!2474063))))

(assert (=> d!1181139 (= res!1619755 (= (content!6473 lt!1406921) ((_ map or) (content!6473 lt!1406629) (content!6473 suffix!1299))))))

(assert (=> d!1181139 (= lt!1406921 e!2474062)))

(declare-fun c!690752 () Bool)

(assert (=> d!1181139 (= c!690752 ((_ is Nil!42682) lt!1406629))))

(assert (=> d!1181139 (= (++!11158 lt!1406629 suffix!1299) lt!1406921)))

(declare-fun b!3991101 () Bool)

(assert (=> b!3991101 (= e!2474062 (Cons!42682 (h!48102 lt!1406629) (++!11158 (t!331749 lt!1406629) suffix!1299)))))

(declare-fun b!3991102 () Bool)

(declare-fun res!1619756 () Bool)

(assert (=> b!3991102 (=> (not res!1619756) (not e!2474063))))

(assert (=> b!3991102 (= res!1619756 (= (size!31923 lt!1406921) (+ (size!31923 lt!1406629) (size!31923 suffix!1299))))))

(assert (= (and d!1181139 c!690752) b!3991100))

(assert (= (and d!1181139 (not c!690752)) b!3991101))

(assert (= (and d!1181139 res!1619755) b!3991102))

(assert (= (and b!3991102 res!1619756) b!3991103))

(declare-fun m!4569827 () Bool)

(assert (=> d!1181139 m!4569827))

(declare-fun m!4569829 () Bool)

(assert (=> d!1181139 m!4569829))

(assert (=> d!1181139 m!4569775))

(declare-fun m!4569831 () Bool)

(assert (=> b!3991101 m!4569831))

(declare-fun m!4569833 () Bool)

(assert (=> b!3991102 m!4569833))

(declare-fun m!4569835 () Bool)

(assert (=> b!3991102 m!4569835))

(assert (=> b!3991102 m!4568625))

(assert (=> b!3990354 d!1181139))

(declare-fun b!3991104 () Bool)

(declare-fun e!2474064 () List!42806)

(assert (=> b!3991104 (= e!2474064 suffix!1299)))

(declare-fun lt!1406922 () List!42806)

(declare-fun e!2474065 () Bool)

(declare-fun b!3991107 () Bool)

(assert (=> b!3991107 (= e!2474065 (or (not (= suffix!1299 Nil!42682)) (= lt!1406922 lt!1406610)))))

(declare-fun d!1181141 () Bool)

(assert (=> d!1181141 e!2474065))

(declare-fun res!1619757 () Bool)

(assert (=> d!1181141 (=> (not res!1619757) (not e!2474065))))

(assert (=> d!1181141 (= res!1619757 (= (content!6473 lt!1406922) ((_ map or) (content!6473 lt!1406610) (content!6473 suffix!1299))))))

(assert (=> d!1181141 (= lt!1406922 e!2474064)))

(declare-fun c!690753 () Bool)

(assert (=> d!1181141 (= c!690753 ((_ is Nil!42682) lt!1406610))))

(assert (=> d!1181141 (= (++!11158 lt!1406610 suffix!1299) lt!1406922)))

(declare-fun b!3991105 () Bool)

(assert (=> b!3991105 (= e!2474064 (Cons!42682 (h!48102 lt!1406610) (++!11158 (t!331749 lt!1406610) suffix!1299)))))

(declare-fun b!3991106 () Bool)

(declare-fun res!1619758 () Bool)

(assert (=> b!3991106 (=> (not res!1619758) (not e!2474065))))

(assert (=> b!3991106 (= res!1619758 (= (size!31923 lt!1406922) (+ (size!31923 lt!1406610) (size!31923 suffix!1299))))))

(assert (= (and d!1181141 c!690753) b!3991104))

(assert (= (and d!1181141 (not c!690753)) b!3991105))

(assert (= (and d!1181141 res!1619757) b!3991106))

(assert (= (and b!3991106 res!1619758) b!3991107))

(declare-fun m!4569837 () Bool)

(assert (=> d!1181141 m!4569837))

(assert (=> d!1181141 m!4568861))

(assert (=> d!1181141 m!4569775))

(declare-fun m!4569839 () Bool)

(assert (=> b!3991105 m!4569839))

(declare-fun m!4569841 () Bool)

(assert (=> b!3991106 m!4569841))

(assert (=> b!3991106 m!4568867))

(assert (=> b!3991106 m!4568625))

(assert (=> b!3990354 d!1181141))

(declare-fun d!1181143 () Bool)

(assert (=> d!1181143 (= (++!11158 (++!11158 lt!1406612 lt!1406610) suffix!1299) (++!11158 lt!1406612 (++!11158 lt!1406610 suffix!1299)))))

(declare-fun lt!1406923 () Unit!61448)

(assert (=> d!1181143 (= lt!1406923 (choose!24010 lt!1406612 lt!1406610 suffix!1299))))

(assert (=> d!1181143 (= (lemmaConcatAssociativity!2478 lt!1406612 lt!1406610 suffix!1299) lt!1406923)))

(declare-fun bs!588415 () Bool)

(assert (= bs!588415 d!1181143))

(assert (=> bs!588415 m!4568551))

(declare-fun m!4569843 () Bool)

(assert (=> bs!588415 m!4569843))

(assert (=> bs!588415 m!4568557))

(declare-fun m!4569845 () Bool)

(assert (=> bs!588415 m!4569845))

(assert (=> bs!588415 m!4568557))

(declare-fun m!4569847 () Bool)

(assert (=> bs!588415 m!4569847))

(assert (=> bs!588415 m!4568551))

(assert (=> b!3990354 d!1181143))

(declare-fun b!3991108 () Bool)

(declare-fun e!2474066 () List!42806)

(assert (=> b!3991108 (= e!2474066 lt!1406600)))

(declare-fun e!2474067 () Bool)

(declare-fun b!3991111 () Bool)

(declare-fun lt!1406924 () List!42806)

(assert (=> b!3991111 (= e!2474067 (or (not (= lt!1406600 Nil!42682)) (= lt!1406924 newSuffix!27)))))

(declare-fun d!1181145 () Bool)

(assert (=> d!1181145 e!2474067))

(declare-fun res!1619759 () Bool)

(assert (=> d!1181145 (=> (not res!1619759) (not e!2474067))))

(assert (=> d!1181145 (= res!1619759 (= (content!6473 lt!1406924) ((_ map or) (content!6473 newSuffix!27) (content!6473 lt!1406600))))))

(assert (=> d!1181145 (= lt!1406924 e!2474066)))

(declare-fun c!690754 () Bool)

(assert (=> d!1181145 (= c!690754 ((_ is Nil!42682) newSuffix!27))))

(assert (=> d!1181145 (= (++!11158 newSuffix!27 lt!1406600) lt!1406924)))

(declare-fun b!3991109 () Bool)

(assert (=> b!3991109 (= e!2474066 (Cons!42682 (h!48102 newSuffix!27) (++!11158 (t!331749 newSuffix!27) lt!1406600)))))

(declare-fun b!3991110 () Bool)

(declare-fun res!1619760 () Bool)

(assert (=> b!3991110 (=> (not res!1619760) (not e!2474067))))

(assert (=> b!3991110 (= res!1619760 (= (size!31923 lt!1406924) (+ (size!31923 newSuffix!27) (size!31923 lt!1406600))))))

(assert (= (and d!1181145 c!690754) b!3991108))

(assert (= (and d!1181145 (not c!690754)) b!3991109))

(assert (= (and d!1181145 res!1619759) b!3991110))

(assert (= (and b!3991110 res!1619760) b!3991111))

(declare-fun m!4569849 () Bool)

(assert (=> d!1181145 m!4569849))

(assert (=> d!1181145 m!4568933))

(assert (=> d!1181145 m!4569803))

(declare-fun m!4569851 () Bool)

(assert (=> b!3991109 m!4569851))

(declare-fun m!4569853 () Bool)

(assert (=> b!3991110 m!4569853))

(assert (=> b!3991110 m!4568627))

(assert (=> b!3991110 m!4569809))

(assert (=> b!3990332 d!1181145))

(declare-fun d!1181147 () Bool)

(declare-fun lt!1406925 () List!42806)

(assert (=> d!1181147 (= (++!11158 newSuffix!27 lt!1406925) suffix!1299)))

(declare-fun e!2474068 () List!42806)

(assert (=> d!1181147 (= lt!1406925 e!2474068)))

(declare-fun c!690755 () Bool)

(assert (=> d!1181147 (= c!690755 ((_ is Cons!42682) newSuffix!27))))

(assert (=> d!1181147 (>= (size!31923 suffix!1299) (size!31923 newSuffix!27))))

(assert (=> d!1181147 (= (getSuffix!2274 suffix!1299 newSuffix!27) lt!1406925)))

(declare-fun b!3991112 () Bool)

(assert (=> b!3991112 (= e!2474068 (getSuffix!2274 (tail!6223 suffix!1299) (t!331749 newSuffix!27)))))

(declare-fun b!3991113 () Bool)

(assert (=> b!3991113 (= e!2474068 suffix!1299)))

(assert (= (and d!1181147 c!690755) b!3991112))

(assert (= (and d!1181147 (not c!690755)) b!3991113))

(declare-fun m!4569855 () Bool)

(assert (=> d!1181147 m!4569855))

(assert (=> d!1181147 m!4568625))

(assert (=> d!1181147 m!4568627))

(assert (=> b!3991112 m!4568837))

(assert (=> b!3991112 m!4568837))

(declare-fun m!4569857 () Bool)

(assert (=> b!3991112 m!4569857))

(assert (=> b!3990332 d!1181147))

(declare-fun b!3991114 () Bool)

(declare-fun e!2474069 () List!42806)

(assert (=> b!3991114 (= e!2474069 lt!1406625)))

(declare-fun b!3991117 () Bool)

(declare-fun lt!1406926 () List!42806)

(declare-fun e!2474070 () Bool)

(assert (=> b!3991117 (= e!2474070 (or (not (= lt!1406625 Nil!42682)) (= lt!1406926 lt!1406612)))))

(declare-fun d!1181149 () Bool)

(assert (=> d!1181149 e!2474070))

(declare-fun res!1619761 () Bool)

(assert (=> d!1181149 (=> (not res!1619761) (not e!2474070))))

(assert (=> d!1181149 (= res!1619761 (= (content!6473 lt!1406926) ((_ map or) (content!6473 lt!1406612) (content!6473 lt!1406625))))))

(assert (=> d!1181149 (= lt!1406926 e!2474069)))

(declare-fun c!690756 () Bool)

(assert (=> d!1181149 (= c!690756 ((_ is Nil!42682) lt!1406612))))

(assert (=> d!1181149 (= (++!11158 lt!1406612 lt!1406625) lt!1406926)))

(declare-fun b!3991115 () Bool)

(assert (=> b!3991115 (= e!2474069 (Cons!42682 (h!48102 lt!1406612) (++!11158 (t!331749 lt!1406612) lt!1406625)))))

(declare-fun b!3991116 () Bool)

(declare-fun res!1619762 () Bool)

(assert (=> b!3991116 (=> (not res!1619762) (not e!2474070))))

(assert (=> b!3991116 (= res!1619762 (= (size!31923 lt!1406926) (+ (size!31923 lt!1406612) (size!31923 lt!1406625))))))

(assert (= (and d!1181149 c!690756) b!3991114))

(assert (= (and d!1181149 (not c!690756)) b!3991115))

(assert (= (and d!1181149 res!1619761) b!3991116))

(assert (= (and b!3991116 res!1619762) b!3991117))

(declare-fun m!4569859 () Bool)

(assert (=> d!1181149 m!4569859))

(assert (=> d!1181149 m!4568859))

(declare-fun m!4569861 () Bool)

(assert (=> d!1181149 m!4569861))

(declare-fun m!4569863 () Bool)

(assert (=> b!3991115 m!4569863))

(declare-fun m!4569865 () Bool)

(assert (=> b!3991116 m!4569865))

(assert (=> b!3991116 m!4568517))

(declare-fun m!4569867 () Bool)

(assert (=> b!3991116 m!4569867))

(assert (=> b!3990353 d!1181149))

(declare-fun d!1181151 () Bool)

(declare-fun lt!1406927 () List!42806)

(assert (=> d!1181151 (= (++!11158 lt!1406612 lt!1406927) lt!1406628)))

(declare-fun e!2474071 () List!42806)

(assert (=> d!1181151 (= lt!1406927 e!2474071)))

(declare-fun c!690757 () Bool)

(assert (=> d!1181151 (= c!690757 ((_ is Cons!42682) lt!1406612))))

(assert (=> d!1181151 (>= (size!31923 lt!1406628) (size!31923 lt!1406612))))

(assert (=> d!1181151 (= (getSuffix!2274 lt!1406628 lt!1406612) lt!1406927)))

(declare-fun b!3991118 () Bool)

(assert (=> b!3991118 (= e!2474071 (getSuffix!2274 (tail!6223 lt!1406628) (t!331749 lt!1406612)))))

(declare-fun b!3991119 () Bool)

(assert (=> b!3991119 (= e!2474071 lt!1406628)))

(assert (= (and d!1181151 c!690757) b!3991118))

(assert (= (and d!1181151 (not c!690757)) b!3991119))

(declare-fun m!4569869 () Bool)

(assert (=> d!1181151 m!4569869))

(assert (=> d!1181151 m!4568555))

(assert (=> d!1181151 m!4568517))

(assert (=> b!3991118 m!4569591))

(assert (=> b!3991118 m!4569591))

(declare-fun m!4569871 () Bool)

(assert (=> b!3991118 m!4569871))

(assert (=> b!3990353 d!1181151))

(declare-fun d!1181153 () Bool)

(declare-fun e!2474073 () Bool)

(assert (=> d!1181153 e!2474073))

(declare-fun res!1619765 () Bool)

(assert (=> d!1181153 (=> res!1619765 e!2474073)))

(declare-fun lt!1406928 () Bool)

(assert (=> d!1181153 (= res!1619765 (not lt!1406928))))

(declare-fun e!2474072 () Bool)

(assert (=> d!1181153 (= lt!1406928 e!2474072)))

(declare-fun res!1619766 () Bool)

(assert (=> d!1181153 (=> res!1619766 e!2474072)))

(assert (=> d!1181153 (= res!1619766 ((_ is Nil!42682) lt!1406628))))

(assert (=> d!1181153 (= (isPrefix!3843 lt!1406628 lt!1406628) lt!1406928)))

(declare-fun b!3991122 () Bool)

(declare-fun e!2474074 () Bool)

(assert (=> b!3991122 (= e!2474074 (isPrefix!3843 (tail!6223 lt!1406628) (tail!6223 lt!1406628)))))

(declare-fun b!3991123 () Bool)

(assert (=> b!3991123 (= e!2474073 (>= (size!31923 lt!1406628) (size!31923 lt!1406628)))))

(declare-fun b!3991121 () Bool)

(declare-fun res!1619764 () Bool)

(assert (=> b!3991121 (=> (not res!1619764) (not e!2474074))))

(assert (=> b!3991121 (= res!1619764 (= (head!8491 lt!1406628) (head!8491 lt!1406628)))))

(declare-fun b!3991120 () Bool)

(assert (=> b!3991120 (= e!2474072 e!2474074)))

(declare-fun res!1619763 () Bool)

(assert (=> b!3991120 (=> (not res!1619763) (not e!2474074))))

(assert (=> b!3991120 (= res!1619763 (not ((_ is Nil!42682) lt!1406628)))))

(assert (= (and d!1181153 (not res!1619766)) b!3991120))

(assert (= (and b!3991120 res!1619763) b!3991121))

(assert (= (and b!3991121 res!1619764) b!3991122))

(assert (= (and d!1181153 (not res!1619765)) b!3991123))

(assert (=> b!3991122 m!4569591))

(assert (=> b!3991122 m!4569591))

(assert (=> b!3991122 m!4569591))

(assert (=> b!3991122 m!4569591))

(declare-fun m!4569873 () Bool)

(assert (=> b!3991122 m!4569873))

(assert (=> b!3991123 m!4568555))

(assert (=> b!3991123 m!4568555))

(assert (=> b!3991121 m!4569595))

(assert (=> b!3991121 m!4569595))

(assert (=> b!3990353 d!1181153))

(declare-fun d!1181155 () Bool)

(assert (=> d!1181155 (isPrefix!3843 lt!1406628 lt!1406628)))

(declare-fun lt!1406931 () Unit!61448)

(declare-fun choose!24011 (List!42806 List!42806) Unit!61448)

(assert (=> d!1181155 (= lt!1406931 (choose!24011 lt!1406628 lt!1406628))))

(assert (=> d!1181155 (= (lemmaIsPrefixRefl!2435 lt!1406628 lt!1406628) lt!1406931)))

(declare-fun bs!588416 () Bool)

(assert (= bs!588416 d!1181155))

(assert (=> bs!588416 m!4568685))

(declare-fun m!4569875 () Bool)

(assert (=> bs!588416 m!4569875))

(assert (=> b!3990353 d!1181155))

(declare-fun b!3991128 () Bool)

(declare-fun e!2474077 () Bool)

(declare-fun tp!1215607 () Bool)

(assert (=> b!3991128 (= e!2474077 (and tp_is_empty!20293 tp!1215607))))

(assert (=> b!3990325 (= tp!1215546 e!2474077)))

(assert (= (and b!3990325 ((_ is Cons!42682) (t!331749 prefix!494))) b!3991128))

(declare-fun b!3991129 () Bool)

(declare-fun e!2474078 () Bool)

(declare-fun tp!1215608 () Bool)

(assert (=> b!3991129 (= e!2474078 (and tp_is_empty!20293 tp!1215608))))

(assert (=> b!3990334 (= tp!1215545 e!2474078)))

(assert (= (and b!3990334 ((_ is Cons!42682) (t!331749 newSuffixResult!27))) b!3991129))

(declare-fun b!3991130 () Bool)

(declare-fun e!2474079 () Bool)

(declare-fun tp!1215609 () Bool)

(assert (=> b!3991130 (= e!2474079 (and tp_is_empty!20293 tp!1215609))))

(assert (=> b!3990355 (= tp!1215550 e!2474079)))

(assert (= (and b!3990355 ((_ is Cons!42682) (t!331749 newSuffix!27))) b!3991130))

(declare-fun b!3991143 () Bool)

(declare-fun e!2474082 () Bool)

(declare-fun tp!1215624 () Bool)

(assert (=> b!3991143 (= e!2474082 tp!1215624)))

(declare-fun b!3991141 () Bool)

(assert (=> b!3991141 (= e!2474082 tp_is_empty!20293)))

(declare-fun b!3991144 () Bool)

(declare-fun tp!1215620 () Bool)

(declare-fun tp!1215622 () Bool)

(assert (=> b!3991144 (= e!2474082 (and tp!1215620 tp!1215622))))

(assert (=> b!3990329 (= tp!1215551 e!2474082)))

(declare-fun b!3991142 () Bool)

(declare-fun tp!1215623 () Bool)

(declare-fun tp!1215621 () Bool)

(assert (=> b!3991142 (= e!2474082 (and tp!1215623 tp!1215621))))

(assert (= (and b!3990329 ((_ is ElementMatch!11661) (regex!6756 (h!48104 rules!2999)))) b!3991141))

(assert (= (and b!3990329 ((_ is Concat!18648) (regex!6756 (h!48104 rules!2999)))) b!3991142))

(assert (= (and b!3990329 ((_ is Star!11661) (regex!6756 (h!48104 rules!2999)))) b!3991143))

(assert (= (and b!3990329 ((_ is Union!11661) (regex!6756 (h!48104 rules!2999)))) b!3991144))

(declare-fun b!3991145 () Bool)

(declare-fun e!2474083 () Bool)

(declare-fun tp!1215625 () Bool)

(assert (=> b!3991145 (= e!2474083 (and tp_is_empty!20293 tp!1215625))))

(assert (=> b!3990338 (= tp!1215556 e!2474083)))

(assert (= (and b!3990338 ((_ is Cons!42682) (t!331749 suffix!1299))) b!3991145))

(declare-fun b!3991148 () Bool)

(declare-fun e!2474084 () Bool)

(declare-fun tp!1215630 () Bool)

(assert (=> b!3991148 (= e!2474084 tp!1215630)))

(declare-fun b!3991146 () Bool)

(assert (=> b!3991146 (= e!2474084 tp_is_empty!20293)))

(declare-fun b!3991149 () Bool)

(declare-fun tp!1215626 () Bool)

(declare-fun tp!1215628 () Bool)

(assert (=> b!3991149 (= e!2474084 (and tp!1215626 tp!1215628))))

(assert (=> b!3990328 (= tp!1215547 e!2474084)))

(declare-fun b!3991147 () Bool)

(declare-fun tp!1215629 () Bool)

(declare-fun tp!1215627 () Bool)

(assert (=> b!3991147 (= e!2474084 (and tp!1215629 tp!1215627))))

(assert (= (and b!3990328 ((_ is ElementMatch!11661) (regex!6756 (rule!9774 token!484)))) b!3991146))

(assert (= (and b!3990328 ((_ is Concat!18648) (regex!6756 (rule!9774 token!484)))) b!3991147))

(assert (= (and b!3990328 ((_ is Star!11661) (regex!6756 (rule!9774 token!484)))) b!3991148))

(assert (= (and b!3990328 ((_ is Union!11661) (regex!6756 (rule!9774 token!484)))) b!3991149))

(declare-fun b!3991150 () Bool)

(declare-fun e!2474085 () Bool)

(declare-fun tp!1215631 () Bool)

(assert (=> b!3991150 (= e!2474085 (and tp_is_empty!20293 tp!1215631))))

(assert (=> b!3990333 (= tp!1215548 e!2474085)))

(assert (= (and b!3990333 ((_ is Cons!42682) (t!331749 suffixResult!105))) b!3991150))

(declare-fun b!3991161 () Bool)

(declare-fun b_free!110853 () Bool)

(declare-fun b_next!111557 () Bool)

(assert (=> b!3991161 (= b_free!110853 (not b_next!111557))))

(declare-fun tb!240245 () Bool)

(declare-fun t!331793 () Bool)

(assert (=> (and b!3991161 (= (toValue!9244 (transformation!6756 (h!48104 (t!331751 rules!2999)))) (toValue!9244 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))) t!331793) tb!240245))

(declare-fun result!291106 () Bool)

(assert (= result!291106 result!291090))

(assert (=> d!1181011 t!331793))

(declare-fun t!331795 () Bool)

(declare-fun tb!240247 () Bool)

(assert (=> (and b!3991161 (= (toValue!9244 (transformation!6756 (h!48104 (t!331751 rules!2999)))) (toValue!9244 (transformation!6756 (rule!9774 token!484)))) t!331795) tb!240247))

(declare-fun result!291108 () Bool)

(assert (= result!291108 result!291096))

(assert (=> d!1181089 t!331795))

(declare-fun tp!1215640 () Bool)

(declare-fun b_and!306643 () Bool)

(assert (=> b!3991161 (= tp!1215640 (and (=> t!331793 result!291106) (=> t!331795 result!291108) b_and!306643))))

(declare-fun b_free!110855 () Bool)

(declare-fun b_next!111559 () Bool)

(assert (=> b!3991161 (= b_free!110855 (not b_next!111559))))

(declare-fun tb!240249 () Bool)

(declare-fun t!331797 () Bool)

(assert (=> (and b!3991161 (= (toChars!9103 (transformation!6756 (h!48104 (t!331751 rules!2999)))) (toChars!9103 (transformation!6756 (rule!9774 token!484)))) t!331797) tb!240249))

(declare-fun result!291110 () Bool)

(assert (= result!291110 result!291046))

(assert (=> b!3990442 t!331797))

(declare-fun tb!240251 () Bool)

(declare-fun t!331799 () Bool)

(assert (=> (and b!3991161 (= (toChars!9103 (transformation!6756 (h!48104 (t!331751 rules!2999)))) (toChars!9103 (transformation!6756 (rule!9774 (_1!24076 (v!39525 lt!1406624)))))) t!331799) tb!240251))

(declare-fun result!291112 () Bool)

(assert (= result!291112 result!291052))

(assert (=> d!1180837 t!331799))

(assert (=> d!1181129 t!331797))

(declare-fun tp!1215643 () Bool)

(declare-fun b_and!306645 () Bool)

(assert (=> b!3991161 (= tp!1215643 (and (=> t!331797 result!291110) (=> t!331799 result!291112) b_and!306645))))

(declare-fun e!2474095 () Bool)

(assert (=> b!3991161 (= e!2474095 (and tp!1215640 tp!1215643))))

(declare-fun tp!1215642 () Bool)

(declare-fun e!2474094 () Bool)

(declare-fun b!3991160 () Bool)

(assert (=> b!3991160 (= e!2474094 (and tp!1215642 (inv!57006 (tag!7616 (h!48104 (t!331751 rules!2999)))) (inv!57009 (transformation!6756 (h!48104 (t!331751 rules!2999)))) e!2474095))))

(declare-fun b!3991159 () Bool)

(declare-fun e!2474096 () Bool)

(declare-fun tp!1215641 () Bool)

(assert (=> b!3991159 (= e!2474096 (and e!2474094 tp!1215641))))

(assert (=> b!3990364 (= tp!1215554 e!2474096)))

(assert (= b!3991160 b!3991161))

(assert (= b!3991159 b!3991160))

(assert (= (and b!3990364 ((_ is Cons!42684) (t!331751 rules!2999))) b!3991159))

(declare-fun m!4569877 () Bool)

(assert (=> b!3991160 m!4569877))

(declare-fun m!4569879 () Bool)

(assert (=> b!3991160 m!4569879))

(declare-fun b!3991162 () Bool)

(declare-fun e!2474098 () Bool)

(declare-fun tp!1215644 () Bool)

(assert (=> b!3991162 (= e!2474098 (and tp_is_empty!20293 tp!1215644))))

(assert (=> b!3990337 (= tp!1215552 e!2474098)))

(assert (= (and b!3990337 ((_ is Cons!42682) (originalCharacters!7356 token!484))) b!3991162))

(declare-fun b_lambda!116521 () Bool)

(assert (= b_lambda!116517 (or (and b!3990347 b_free!110841 (= (toValue!9244 (transformation!6756 (h!48104 rules!2999))) (toValue!9244 (transformation!6756 (rule!9774 token!484))))) (and b!3990344 b_free!110845) (and b!3991161 b_free!110853 (= (toValue!9244 (transformation!6756 (h!48104 (t!331751 rules!2999)))) (toValue!9244 (transformation!6756 (rule!9774 token!484))))) b_lambda!116521)))

(declare-fun b_lambda!116523 () Bool)

(assert (= b_lambda!116519 (or (and b!3990347 b_free!110843 (= (toChars!9103 (transformation!6756 (h!48104 rules!2999))) (toChars!9103 (transformation!6756 (rule!9774 token!484))))) (and b!3990344 b_free!110847) (and b!3991161 b_free!110855 (= (toChars!9103 (transformation!6756 (h!48104 (t!331751 rules!2999)))) (toChars!9103 (transformation!6756 (rule!9774 token!484))))) b_lambda!116523)))

(declare-fun b_lambda!116525 () Bool)

(assert (= b_lambda!116495 (or (and b!3990347 b_free!110843 (= (toChars!9103 (transformation!6756 (h!48104 rules!2999))) (toChars!9103 (transformation!6756 (rule!9774 token!484))))) (and b!3990344 b_free!110847) (and b!3991161 b_free!110855 (= (toChars!9103 (transformation!6756 (h!48104 (t!331751 rules!2999)))) (toChars!9103 (transformation!6756 (rule!9774 token!484))))) b_lambda!116525)))

(check-sat (not b!3991089) (not b!3990520) (not b!3991025) (not d!1180849) (not d!1180819) (not b!3991037) (not b!3991121) (not b!3991129) (not d!1181143) (not b!3990448) (not b!3990848) b_and!306641 (not d!1181087) (not b!3991162) (not b!3991005) (not b!3991007) (not d!1181009) tp_is_empty!20293 (not b!3991149) (not d!1181121) (not b!3990855) (not b!3990995) (not b!3990515) (not b!3991035) (not b!3991118) (not b!3991073) (not b!3990802) (not b!3990443) (not b!3990901) (not b!3991039) (not d!1181001) (not b!3991011) (not b!3990899) (not d!1180829) (not bm!285823) (not b!3991090) (not b!3991008) (not b!3991081) (not b!3991094) (not d!1181081) (not b!3990873) (not b!3990519) (not d!1181113) (not b!3991058) (not b!3990962) (not b!3991017) (not b!3991027) (not d!1181133) (not b!3991098) (not d!1181045) (not b!3991110) (not b!3990801) (not b!3991147) (not b!3991101) (not d!1181111) (not tb!240237) (not b!3991020) (not b!3990615) (not d!1181055) (not d!1181129) (not b_lambda!116515) (not b!3990991) (not b!3990980) (not d!1181041) (not d!1181071) (not b!3990983) (not b_next!111545) (not b!3990614) (not b!3990956) (not d!1181007) (not d!1181037) (not b!3991116) (not b!3991059) (not b!3990508) (not b_next!111551) (not d!1181117) (not b!3991123) (not d!1181135) (not d!1181147) (not b!3990966) (not b!3990799) (not b!3990460) (not d!1180837) (not d!1180999) (not b!3991012) (not d!1181031) (not b!3990954) (not b!3990463) (not b!3991106) (not d!1181145) (not b!3991109) (not d!1181059) (not b!3990877) (not b!3991063) (not b!3990987) (not b!3990948) (not b_lambda!116525) (not b_next!111559) (not d!1181021) (not b_next!111557) b_and!306639 (not d!1181019) (not bm!285827) (not d!1181039) (not b!3990493) (not d!1181139) (not b!3991006) (not d!1181027) (not b!3990958) (not b!3991077) (not b!3991015) (not b!3991003) (not b!3990971) (not b!3990879) (not b!3991032) (not b!3991066) (not b!3990913) (not b_lambda!116521) (not b!3991019) (not b!3990516) (not b!3991082) (not tb!240241) (not b!3991130) (not b!3991068) (not d!1181131) (not b_lambda!116497) (not d!1181077) (not b!3991128) (not b!3990993) (not b!3991010) (not tb!240205) (not d!1180995) (not d!1180989) (not b!3991061) (not b!3991148) (not b!3991000) (not b!3990459) (not b!3990989) (not b!3990854) b_and!306637 (not b!3991097) (not b!3991087) (not b!3990973) (not b!3990960) (not b!3990512) (not b!3990492) (not b!3990917) (not b!3991014) (not d!1181091) (not b!3991062) (not d!1181093) (not d!1180833) (not b!3990800) (not bm!285826) (not d!1181061) (not b!3991160) (not d!1181013) (not b_next!111547) (not b!3990442) (not b!3991074) (not b!3990856) (not d!1181141) (not b!3991085) (not b!3991069) (not d!1181063) (not b!3991145) (not d!1181151) (not d!1181109) (not d!1181085) (not d!1181107) (not d!1181127) (not b!3991102) (not d!1180813) (not tb!240209) (not b!3990886) (not d!1181083) (not d!1181017) (not b!3990902) (not b!3991105) (not b!3990523) (not b!3991159) (not d!1180885) (not b!3990970) (not d!1181137) (not b!3991071) (not b!3990978) (not b!3991093) (not b!3990964) (not b!3991150) (not b!3990805) (not b!3990953) (not b!3991075) (not b!3991004) (not b!3990992) (not b!3990464) (not b!3991016) (not b!3991079) (not d!1181033) (not b!3991112) (not b_next!111549) (not b!3990528) (not b!3991144) (not b!3990880) (not b!3990437) (not b!3990974) (not b!3990967) (not b!3990963) b_and!306645 (not b!3991070) (not b!3991021) b_and!306635 (not b!3990847) (not b!3991033) (not b_lambda!116523) (not b!3991023) (not b!3990458) (not b!3991076) (not b!3991143) (not b!3990803) (not d!1180831) (not b!3991064) b_and!306643 (not b!3990977) (not d!1181025) (not b!3990513) (not b!3991142) (not d!1181053) (not d!1181029) (not d!1181003) (not b!3990997) (not b!3991060) (not b!3991115) (not bm!285822) (not b!3990511) (not b!3990462) (not d!1181099) (not d!1180821) (not b!3990968) (not d!1181051) (not b!3991122) (not d!1181057) (not b!3990807) (not b!3990988) (not d!1181105) (not b!3990984) (not b!3990985) (not b!3990613) (not b!3991024) (not d!1181119) (not b!3990806) (not d!1181155) (not d!1181149) (not d!1181049) (not b!3991072))
(check-sat b_and!306641 (not b_next!111545) (not b_next!111551) b_and!306637 (not b_next!111547) (not b_next!111549) b_and!306643 (not b_next!111559) (not b_next!111557) b_and!306639 b_and!306645 b_and!306635)
