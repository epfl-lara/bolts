; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24018 () Bool)

(assert start!24018)

(declare-fun b!224591 () Bool)

(declare-fun b_free!8385 () Bool)

(declare-fun b_next!8385 () Bool)

(assert (=> b!224591 (= b_free!8385 (not b_next!8385))))

(declare-fun tp!93021 () Bool)

(declare-fun b_and!16677 () Bool)

(assert (=> b!224591 (= tp!93021 b_and!16677)))

(declare-fun b_free!8387 () Bool)

(declare-fun b_next!8387 () Bool)

(assert (=> b!224591 (= b_free!8387 (not b_next!8387))))

(declare-fun tp!93013 () Bool)

(declare-fun b_and!16679 () Bool)

(assert (=> b!224591 (= tp!93013 b_and!16679)))

(declare-fun b!224598 () Bool)

(declare-fun b_free!8389 () Bool)

(declare-fun b_next!8389 () Bool)

(assert (=> b!224598 (= b_free!8389 (not b_next!8389))))

(declare-fun tp!93011 () Bool)

(declare-fun b_and!16681 () Bool)

(assert (=> b!224598 (= tp!93011 b_and!16681)))

(declare-fun b_free!8391 () Bool)

(declare-fun b_next!8391 () Bool)

(assert (=> b!224598 (= b_free!8391 (not b_next!8391))))

(declare-fun tp!93018 () Bool)

(declare-fun b_and!16683 () Bool)

(assert (=> b!224598 (= tp!93018 b_and!16683)))

(declare-fun b!224613 () Bool)

(declare-fun b_free!8393 () Bool)

(declare-fun b_next!8393 () Bool)

(assert (=> b!224613 (= b_free!8393 (not b_next!8393))))

(declare-fun tp!93019 () Bool)

(declare-fun b_and!16685 () Bool)

(assert (=> b!224613 (= tp!93019 b_and!16685)))

(declare-fun b_free!8395 () Bool)

(declare-fun b_next!8395 () Bool)

(assert (=> b!224613 (= b_free!8395 (not b_next!8395))))

(declare-fun tp!93009 () Bool)

(declare-fun b_and!16687 () Bool)

(assert (=> b!224613 (= tp!93009 b_and!16687)))

(declare-fun bs!23946 () Bool)

(declare-fun b!224624 () Bool)

(declare-fun b!224631 () Bool)

(assert (= bs!23946 (and b!224624 b!224631)))

(declare-fun lambda!6984 () Int)

(declare-fun lambda!6983 () Int)

(assert (=> bs!23946 (not (= lambda!6984 lambda!6983))))

(declare-fun b!224650 () Bool)

(declare-fun e!138599 () Bool)

(assert (=> b!224650 (= e!138599 true)))

(declare-fun b!224649 () Bool)

(declare-fun e!138598 () Bool)

(assert (=> b!224649 (= e!138598 e!138599)))

(declare-fun b!224648 () Bool)

(declare-fun e!138597 () Bool)

(assert (=> b!224648 (= e!138597 e!138598)))

(assert (=> b!224624 e!138597))

(assert (= b!224649 b!224650))

(assert (= b!224648 b!224649))

(declare-datatypes ((List!3413 0))(
  ( (Nil!3403) (Cons!3403 (h!8800 (_ BitVec 16)) (t!33157 List!3413)) )
))
(declare-datatypes ((TokenValue!657 0))(
  ( (FloatLiteralValue!1314 (text!5044 List!3413)) (TokenValueExt!656 (__x!2801 Int)) (Broken!3285 (value!22387 List!3413)) (Object!666) (End!657) (Def!657) (Underscore!657) (Match!657) (Else!657) (Error!657) (Case!657) (If!657) (Extends!657) (Abstract!657) (Class!657) (Val!657) (DelimiterValue!1314 (del!717 List!3413)) (KeywordValue!663 (value!22388 List!3413)) (CommentValue!1314 (value!22389 List!3413)) (WhitespaceValue!1314 (value!22390 List!3413)) (IndentationValue!657 (value!22391 List!3413)) (String!4364) (Int32!657) (Broken!3286 (value!22392 List!3413)) (Boolean!658) (Unit!3817) (OperatorValue!660 (op!717 List!3413)) (IdentifierValue!1314 (value!22393 List!3413)) (IdentifierValue!1315 (value!22394 List!3413)) (WhitespaceValue!1315 (value!22395 List!3413)) (True!1314) (False!1314) (Broken!3287 (value!22396 List!3413)) (Broken!3288 (value!22397 List!3413)) (True!1315) (RightBrace!657) (RightBracket!657) (Colon!657) (Null!657) (Comma!657) (LeftBracket!657) (False!1315) (LeftBrace!657) (ImaginaryLiteralValue!657 (text!5045 List!3413)) (StringLiteralValue!1971 (value!22398 List!3413)) (EOFValue!657 (value!22399 List!3413)) (IdentValue!657 (value!22400 List!3413)) (DelimiterValue!1315 (value!22401 List!3413)) (DedentValue!657 (value!22402 List!3413)) (NewLineValue!657 (value!22403 List!3413)) (IntegerValue!1971 (value!22404 (_ BitVec 32)) (text!5046 List!3413)) (IntegerValue!1972 (value!22405 Int) (text!5047 List!3413)) (Times!657) (Or!657) (Equal!657) (Minus!657) (Broken!3289 (value!22406 List!3413)) (And!657) (Div!657) (LessEqual!657) (Mod!657) (Concat!1516) (Not!657) (Plus!657) (SpaceValue!657 (value!22407 List!3413)) (IntegerValue!1973 (value!22408 Int) (text!5048 List!3413)) (StringLiteralValue!1972 (text!5049 List!3413)) (FloatLiteralValue!1315 (text!5050 List!3413)) (BytesLiteralValue!657 (value!22409 List!3413)) (CommentValue!1315 (value!22410 List!3413)) (StringLiteralValue!1973 (value!22411 List!3413)) (ErrorTokenValue!657 (msg!718 List!3413)) )
))
(declare-datatypes ((C!2640 0))(
  ( (C!2641 (val!1206 Int)) )
))
(declare-datatypes ((List!3414 0))(
  ( (Nil!3404) (Cons!3404 (h!8801 C!2640) (t!33158 List!3414)) )
))
(declare-datatypes ((IArray!2185 0))(
  ( (IArray!2186 (innerList!1150 List!3414)) )
))
(declare-datatypes ((Conc!1092 0))(
  ( (Node!1092 (left!2736 Conc!1092) (right!3066 Conc!1092) (csize!2414 Int) (cheight!1303 Int)) (Leaf!1749 (xs!3687 IArray!2185) (csize!2415 Int)) (Empty!1092) )
))
(declare-datatypes ((BalanceConc!2192 0))(
  ( (BalanceConc!2193 (c!43215 Conc!1092)) )
))
(declare-datatypes ((Regex!859 0))(
  ( (ElementMatch!859 (c!43216 C!2640)) (Concat!1517 (regOne!2230 Regex!859) (regTwo!2230 Regex!859)) (EmptyExpr!859) (Star!859 (reg!1188 Regex!859)) (EmptyLang!859) (Union!859 (regOne!2231 Regex!859) (regTwo!2231 Regex!859)) )
))
(declare-datatypes ((String!4365 0))(
  ( (String!4366 (value!22412 String)) )
))
(declare-datatypes ((TokenValueInjection!1086 0))(
  ( (TokenValueInjection!1087 (toValue!1330 Int) (toChars!1189 Int)) )
))
(declare-datatypes ((Rule!1070 0))(
  ( (Rule!1071 (regex!635 Regex!859) (tag!831 String!4365) (isSeparator!635 Bool) (transformation!635 TokenValueInjection!1086)) )
))
(declare-datatypes ((List!3415 0))(
  ( (Nil!3405) (Cons!3405 (h!8802 Rule!1070) (t!33159 List!3415)) )
))
(declare-fun rules!1920 () List!3415)

(get-info :version)

(assert (= (and b!224624 ((_ is Cons!3405) rules!1920)) b!224648))

(declare-fun order!2333 () Int)

(declare-fun order!2335 () Int)

(declare-fun dynLambda!1567 (Int Int) Int)

(declare-fun dynLambda!1568 (Int Int) Int)

(assert (=> b!224650 (< (dynLambda!1567 order!2333 (toValue!1330 (transformation!635 (h!8802 rules!1920)))) (dynLambda!1568 order!2335 lambda!6984))))

(declare-fun order!2337 () Int)

(declare-fun dynLambda!1569 (Int Int) Int)

(assert (=> b!224650 (< (dynLambda!1569 order!2337 (toChars!1189 (transformation!635 (h!8802 rules!1920)))) (dynLambda!1568 order!2335 lambda!6984))))

(assert (=> b!224624 true))

(declare-fun e!138568 () Bool)

(assert (=> b!224591 (= e!138568 (and tp!93021 tp!93013))))

(declare-fun b!224592 () Bool)

(declare-fun res!103137 () Bool)

(declare-fun e!138579 () Bool)

(assert (=> b!224592 (=> (not res!103137) (not e!138579))))

(declare-datatypes ((Token!1014 0))(
  ( (Token!1015 (value!22413 TokenValue!657) (rule!1188 Rule!1070) (size!2730 Int) (originalCharacters!678 List!3414)) )
))
(declare-fun separatorToken!170 () Token!1014)

(assert (=> b!224592 (= res!103137 (isSeparator!635 (rule!1188 separatorToken!170)))))

(declare-fun b!224593 () Bool)

(declare-fun e!138564 () Bool)

(declare-datatypes ((List!3416 0))(
  ( (Nil!3406) (Cons!3406 (h!8803 Token!1014) (t!33160 List!3416)) )
))
(declare-datatypes ((IArray!2187 0))(
  ( (IArray!2188 (innerList!1151 List!3416)) )
))
(declare-datatypes ((Conc!1093 0))(
  ( (Node!1093 (left!2737 Conc!1093) (right!3067 Conc!1093) (csize!2416 Int) (cheight!1304 Int)) (Leaf!1750 (xs!3688 IArray!2187) (csize!2417 Int)) (Empty!1093) )
))
(declare-datatypes ((BalanceConc!2194 0))(
  ( (BalanceConc!2195 (c!43217 Conc!1093)) )
))
(declare-datatypes ((tuple2!3638 0))(
  ( (tuple2!3639 (_1!2035 BalanceConc!2194) (_2!2035 BalanceConc!2192)) )
))
(declare-fun lt!86218 () tuple2!3638)

(declare-fun isEmpty!1908 (BalanceConc!2192) Bool)

(assert (=> b!224593 (= e!138564 (isEmpty!1908 (_2!2035 lt!86218)))))

(declare-fun b!224594 () Bool)

(declare-fun e!138555 () Bool)

(declare-fun e!138582 () Bool)

(assert (=> b!224594 (= e!138555 e!138582)))

(declare-fun res!103142 () Bool)

(assert (=> b!224594 (=> (not res!103142) (not e!138582))))

(declare-datatypes ((tuple2!3640 0))(
  ( (tuple2!3641 (_1!2036 Token!1014) (_2!2036 List!3414)) )
))
(declare-datatypes ((Option!597 0))(
  ( (None!596) (Some!596 (v!14271 tuple2!3640)) )
))
(declare-fun lt!86205 () Option!597)

(declare-fun isDefined!448 (Option!597) Bool)

(assert (=> b!224594 (= res!103142 (isDefined!448 lt!86205))))

(declare-fun lt!86213 () List!3414)

(declare-datatypes ((LexerInterface!521 0))(
  ( (LexerInterfaceExt!518 (__x!2802 Int)) (Lexer!519) )
))
(declare-fun thiss!17480 () LexerInterface!521)

(declare-fun maxPrefix!251 (LexerInterface!521 List!3415 List!3414) Option!597)

(assert (=> b!224594 (= lt!86205 (maxPrefix!251 thiss!17480 rules!1920 lt!86213))))

(declare-fun b!224595 () Bool)

(declare-fun e!138578 () Bool)

(assert (=> b!224595 (= e!138578 e!138579)))

(declare-fun res!103133 () Bool)

(assert (=> b!224595 (=> (not res!103133) (not e!138579))))

(declare-fun lt!86179 () BalanceConc!2194)

(declare-fun rulesProduceEachTokenIndividually!313 (LexerInterface!521 List!3415 BalanceConc!2194) Bool)

(assert (=> b!224595 (= res!103133 (rulesProduceEachTokenIndividually!313 thiss!17480 rules!1920 lt!86179))))

(declare-fun tokens!465 () List!3416)

(declare-fun seqFromList!647 (List!3416) BalanceConc!2194)

(assert (=> b!224595 (= lt!86179 (seqFromList!647 tokens!465))))

(declare-fun b!224596 () Bool)

(declare-fun res!103147 () Bool)

(assert (=> b!224596 (=> (not res!103147) (not e!138579))))

(declare-fun sepAndNonSepRulesDisjointChars!224 (List!3415 List!3415) Bool)

(assert (=> b!224596 (= res!103147 (sepAndNonSepRulesDisjointChars!224 rules!1920 rules!1920))))

(declare-fun b!224597 () Bool)

(declare-fun e!138571 () Bool)

(declare-fun e!138556 () Bool)

(declare-fun tp!93014 () Bool)

(assert (=> b!224597 (= e!138571 (and e!138556 tp!93014))))

(declare-fun e!138557 () Bool)

(assert (=> b!224598 (= e!138557 (and tp!93011 tp!93018))))

(declare-fun b!224599 () Bool)

(declare-fun res!103135 () Bool)

(declare-fun e!138553 () Bool)

(assert (=> b!224599 (=> (not res!103135) (not e!138553))))

(declare-fun lt!86209 () tuple2!3640)

(declare-fun isEmpty!1909 (List!3414) Bool)

(assert (=> b!224599 (= res!103135 (isEmpty!1909 (_2!2036 lt!86209)))))

(declare-fun b!224600 () Bool)

(declare-datatypes ((Unit!3818 0))(
  ( (Unit!3819) )
))
(declare-fun e!138558 () Unit!3818)

(declare-fun Unit!3820 () Unit!3818)

(assert (=> b!224600 (= e!138558 Unit!3820)))

(declare-fun tp!93012 () Bool)

(declare-fun e!138554 () Bool)

(declare-fun e!138560 () Bool)

(declare-fun b!224601 () Bool)

(declare-fun inv!21 (TokenValue!657) Bool)

(assert (=> b!224601 (= e!138560 (and (inv!21 (value!22413 (h!8803 tokens!465))) e!138554 tp!93012))))

(declare-fun b!224602 () Bool)

(declare-fun e!138577 () Bool)

(assert (=> b!224602 (= e!138577 true)))

(declare-fun lt!86212 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!173 (LexerInterface!521 List!3415 List!3416) Bool)

(assert (=> b!224602 (= lt!86212 (rulesProduceEachTokenIndividuallyList!173 thiss!17480 rules!1920 (t!33160 tokens!465)))))

(declare-fun b!224603 () Bool)

(declare-fun get!1060 (Option!597) tuple2!3640)

(declare-fun head!765 (List!3416) Token!1014)

(assert (=> b!224603 (= e!138582 (= (_1!2036 (get!1060 lt!86205)) (head!765 tokens!465)))))

(declare-fun b!224604 () Bool)

(declare-fun e!138583 () Bool)

(declare-fun e!138563 () Bool)

(assert (=> b!224604 (= e!138583 e!138563)))

(declare-fun res!103154 () Bool)

(assert (=> b!224604 (=> res!103154 e!138563)))

(declare-fun e!138588 () Bool)

(assert (=> b!224604 (= res!103154 e!138588)))

(declare-fun res!103126 () Bool)

(assert (=> b!224604 (=> (not res!103126) (not e!138588))))

(declare-fun lt!86203 () Bool)

(assert (=> b!224604 (= res!103126 (not lt!86203))))

(declare-fun lt!86189 () List!3414)

(assert (=> b!224604 (= lt!86203 (= lt!86213 lt!86189))))

(declare-fun b!224605 () Bool)

(declare-fun res!103132 () Bool)

(declare-fun e!138570 () Bool)

(assert (=> b!224605 (=> (not res!103132) (not e!138570))))

(declare-fun lt!86201 () List!3414)

(declare-fun list!1300 (BalanceConc!2192) List!3414)

(declare-fun seqFromList!648 (List!3414) BalanceConc!2192)

(assert (=> b!224605 (= res!103132 (= (list!1300 (seqFromList!648 lt!86213)) lt!86201))))

(declare-fun tp!93020 () Bool)

(declare-fun b!224606 () Bool)

(declare-fun e!138585 () Bool)

(declare-fun inv!4256 (String!4365) Bool)

(declare-fun inv!4259 (TokenValueInjection!1086) Bool)

(assert (=> b!224606 (= e!138556 (and tp!93020 (inv!4256 (tag!831 (h!8802 rules!1920))) (inv!4259 (transformation!635 (h!8802 rules!1920))) e!138585))))

(declare-fun b!224607 () Bool)

(declare-fun res!103123 () Bool)

(assert (=> b!224607 (=> (not res!103123) (not e!138579))))

(declare-fun rulesProduceIndividualToken!270 (LexerInterface!521 List!3415 Token!1014) Bool)

(assert (=> b!224607 (= res!103123 (rulesProduceIndividualToken!270 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!138581 () Bool)

(declare-fun b!224608 () Bool)

(declare-fun e!138572 () Bool)

(declare-fun tp!93010 () Bool)

(assert (=> b!224608 (= e!138581 (and (inv!21 (value!22413 separatorToken!170)) e!138572 tp!93010))))

(declare-fun b!224609 () Bool)

(declare-fun res!103134 () Bool)

(declare-fun e!138587 () Bool)

(assert (=> b!224609 (=> res!103134 e!138587)))

(assert (=> b!224609 (= res!103134 (not (rulesProduceIndividualToken!270 thiss!17480 rules!1920 (h!8803 tokens!465))))))

(declare-fun b!224610 () Bool)

(assert (=> b!224610 (= e!138563 e!138587)))

(declare-fun res!103150 () Bool)

(assert (=> b!224610 (=> res!103150 e!138587)))

(declare-fun lt!86195 () List!3414)

(declare-fun lt!86217 () List!3414)

(declare-fun lt!86225 () List!3414)

(assert (=> b!224610 (= res!103150 (or (not (= lt!86195 lt!86217)) (not (= lt!86217 lt!86225)) (not (= lt!86195 lt!86225))))))

(declare-fun printList!205 (LexerInterface!521 List!3416) List!3414)

(assert (=> b!224610 (= lt!86217 (printList!205 thiss!17480 (Cons!3406 (h!8803 tokens!465) Nil!3406)))))

(declare-fun lt!86175 () BalanceConc!2192)

(assert (=> b!224610 (= lt!86195 (list!1300 lt!86175))))

(declare-fun lt!86177 () BalanceConc!2194)

(declare-fun printTailRec!215 (LexerInterface!521 BalanceConc!2194 Int BalanceConc!2192) BalanceConc!2192)

(assert (=> b!224610 (= lt!86175 (printTailRec!215 thiss!17480 lt!86177 0 (BalanceConc!2193 Empty!1092)))))

(declare-fun print!252 (LexerInterface!521 BalanceConc!2194) BalanceConc!2192)

(assert (=> b!224610 (= lt!86175 (print!252 thiss!17480 lt!86177))))

(declare-fun singletonSeq!187 (Token!1014) BalanceConc!2194)

(assert (=> b!224610 (= lt!86177 (singletonSeq!187 (h!8803 tokens!465)))))

(declare-fun b!224611 () Bool)

(declare-fun e!138584 () Unit!3818)

(declare-fun Unit!3821 () Unit!3818)

(assert (=> b!224611 (= e!138584 Unit!3821)))

(declare-fun lt!86199 () C!2640)

(declare-fun lt!86196 () Unit!3818)

(declare-fun lt!86180 () Token!1014)

(declare-fun lt!86183 () List!3414)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!34 (Regex!859 List!3414 C!2640) Unit!3818)

(assert (=> b!224611 (= lt!86196 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!34 (regex!635 (rule!1188 lt!86180)) lt!86183 lt!86199))))

(declare-fun res!103124 () Bool)

(declare-fun matchR!197 (Regex!859 List!3414) Bool)

(assert (=> b!224611 (= res!103124 (not (matchR!197 (regex!635 (rule!1188 lt!86180)) lt!86183)))))

(declare-fun e!138569 () Bool)

(assert (=> b!224611 (=> (not res!103124) (not e!138569))))

(assert (=> b!224611 e!138569))

(declare-fun b!224612 () Bool)

(declare-fun Unit!3822 () Unit!3818)

(assert (=> b!224612 (= e!138558 Unit!3822)))

(declare-fun lt!86193 () Unit!3818)

(declare-fun lt!86221 () C!2640)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!28 (LexerInterface!521 List!3415 List!3415 Rule!1070 Rule!1070 C!2640) Unit!3818)

(assert (=> b!224612 (= lt!86193 (lemmaSepRuleNotContainsCharContainedInANonSepRule!28 thiss!17480 rules!1920 rules!1920 (rule!1188 lt!86180) (rule!1188 separatorToken!170) lt!86221))))

(assert (=> b!224612 false))

(assert (=> b!224613 (= e!138585 (and tp!93019 tp!93009))))

(declare-fun b!224614 () Bool)

(declare-fun e!138565 () Bool)

(declare-fun lt!86214 () tuple2!3638)

(assert (=> b!224614 (= e!138565 (isEmpty!1908 (_2!2035 lt!86214)))))

(declare-fun b!224615 () Bool)

(declare-fun res!103131 () Bool)

(assert (=> b!224615 (=> (not res!103131) (not e!138579))))

(assert (=> b!224615 (= res!103131 ((_ is Cons!3406) tokens!465))))

(declare-fun b!224616 () Bool)

(declare-fun e!138561 () Bool)

(declare-fun e!138574 () Bool)

(assert (=> b!224616 (= e!138561 e!138574)))

(declare-fun res!103148 () Bool)

(assert (=> b!224616 (=> (not res!103148) (not e!138574))))

(declare-fun lt!86197 () Rule!1070)

(declare-fun lt!86185 () List!3414)

(assert (=> b!224616 (= res!103148 (matchR!197 (regex!635 lt!86197) lt!86185))))

(declare-datatypes ((Option!598 0))(
  ( (None!597) (Some!597 (v!14272 Rule!1070)) )
))
(declare-fun lt!86226 () Option!598)

(declare-fun get!1061 (Option!598) Rule!1070)

(assert (=> b!224616 (= lt!86197 (get!1061 lt!86226))))

(declare-fun b!224617 () Bool)

(declare-fun e!138589 () Unit!3818)

(declare-fun Unit!3823 () Unit!3818)

(assert (=> b!224617 (= e!138589 Unit!3823)))

(assert (=> b!224617 false))

(declare-fun b!224618 () Bool)

(assert (=> b!224618 (= e!138574 (= (rule!1188 separatorToken!170) lt!86197))))

(declare-fun b!224619 () Bool)

(declare-fun res!103138 () Bool)

(assert (=> b!224619 (=> (not res!103138) (not e!138578))))

(declare-fun rulesInvariant!487 (LexerInterface!521 List!3415) Bool)

(assert (=> b!224619 (= res!103138 (rulesInvariant!487 thiss!17480 rules!1920))))

(declare-fun b!224620 () Bool)

(declare-fun e!138575 () Bool)

(assert (=> b!224620 (= e!138575 e!138577)))

(declare-fun res!103130 () Bool)

(assert (=> b!224620 (=> res!103130 e!138577)))

(declare-fun lt!86211 () List!3416)

(declare-fun filter!29 (List!3416 Int) List!3416)

(assert (=> b!224620 (= res!103130 (not (= (filter!29 lt!86211 lambda!6983) (t!33160 tokens!465))))))

(assert (=> b!224620 (= (filter!29 lt!86211 lambda!6983) (t!33160 tokens!465))))

(declare-fun lt!86181 () BalanceConc!2192)

(declare-fun list!1301 (BalanceConc!2194) List!3416)

(declare-fun lex!321 (LexerInterface!521 List!3415 BalanceConc!2192) tuple2!3638)

(assert (=> b!224620 (= lt!86211 (list!1301 (_1!2035 (lex!321 thiss!17480 rules!1920 lt!86181))))))

(declare-fun lt!86215 () Unit!3818)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!20 (LexerInterface!521 List!3415 List!3416 Token!1014) Unit!3818)

(assert (=> b!224620 (= lt!86215 (theoremInvertabilityFromTokensSepTokenWhenNeeded!20 thiss!17480 rules!1920 (t!33160 tokens!465) separatorToken!170))))

(declare-fun lt!86222 () Option!597)

(declare-fun lt!86207 () List!3414)

(assert (=> b!224620 (= lt!86222 (Some!596 (tuple2!3641 separatorToken!170 lt!86207)))))

(declare-fun lt!86223 () Unit!3818)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!26 (LexerInterface!521 List!3415 Token!1014 Rule!1070 List!3414 Rule!1070) Unit!3818)

(assert (=> b!224620 (= lt!86223 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!26 thiss!17480 rules!1920 separatorToken!170 (rule!1188 separatorToken!170) lt!86207 (rule!1188 lt!86180)))))

(declare-fun lt!86176 () Unit!3818)

(assert (=> b!224620 (= lt!86176 e!138558)))

(declare-fun c!43214 () Bool)

(declare-fun contains!602 (List!3414 C!2640) Bool)

(declare-fun usedCharacters!40 (Regex!859) List!3414)

(assert (=> b!224620 (= c!43214 (contains!602 (usedCharacters!40 (regex!635 (rule!1188 separatorToken!170))) lt!86221))))

(declare-fun head!766 (List!3414) C!2640)

(assert (=> b!224620 (= lt!86221 (head!766 lt!86207))))

(declare-fun lt!86198 () Unit!3818)

(assert (=> b!224620 (= lt!86198 e!138584)))

(declare-fun c!43212 () Bool)

(assert (=> b!224620 (= c!43212 (not (contains!602 (usedCharacters!40 (regex!635 (rule!1188 lt!86180))) lt!86199)))))

(assert (=> b!224620 (= lt!86199 (head!766 lt!86183))))

(declare-fun e!138562 () Bool)

(assert (=> b!224620 e!138562))

(declare-fun res!103144 () Bool)

(assert (=> b!224620 (=> (not res!103144) (not e!138562))))

(declare-fun lt!86210 () Option!598)

(declare-fun isDefined!449 (Option!598) Bool)

(assert (=> b!224620 (= res!103144 (isDefined!449 lt!86210))))

(declare-fun getRuleFromTag!76 (LexerInterface!521 List!3415 String!4365) Option!598)

(assert (=> b!224620 (= lt!86210 (getRuleFromTag!76 thiss!17480 rules!1920 (tag!831 (rule!1188 lt!86180))))))

(declare-fun lt!86186 () Unit!3818)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!76 (LexerInterface!521 List!3415 List!3414 Token!1014) Unit!3818)

(assert (=> b!224620 (= lt!86186 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!76 thiss!17480 rules!1920 lt!86183 lt!86180))))

(declare-fun charsOf!290 (Token!1014) BalanceConc!2192)

(assert (=> b!224620 (= lt!86183 (list!1300 (charsOf!290 lt!86180)))))

(declare-fun lt!86187 () Unit!3818)

(declare-fun forallContained!202 (List!3416 Int Token!1014) Unit!3818)

(assert (=> b!224620 (= lt!86187 (forallContained!202 tokens!465 lambda!6984 lt!86180))))

(assert (=> b!224620 e!138564))

(declare-fun res!103153 () Bool)

(assert (=> b!224620 (=> (not res!103153) (not e!138564))))

(declare-fun size!2731 (BalanceConc!2194) Int)

(assert (=> b!224620 (= res!103153 (= (size!2731 (_1!2035 lt!86218)) 1))))

(declare-fun lt!86216 () BalanceConc!2192)

(assert (=> b!224620 (= lt!86218 (lex!321 thiss!17480 rules!1920 lt!86216))))

(declare-fun lt!86182 () BalanceConc!2194)

(assert (=> b!224620 (= lt!86216 (printTailRec!215 thiss!17480 lt!86182 0 (BalanceConc!2193 Empty!1092)))))

(assert (=> b!224620 (= lt!86216 (print!252 thiss!17480 lt!86182))))

(assert (=> b!224620 (= lt!86182 (singletonSeq!187 lt!86180))))

(assert (=> b!224620 e!138561))

(declare-fun res!103143 () Bool)

(assert (=> b!224620 (=> (not res!103143) (not e!138561))))

(assert (=> b!224620 (= res!103143 (isDefined!449 lt!86226))))

(assert (=> b!224620 (= lt!86226 (getRuleFromTag!76 thiss!17480 rules!1920 (tag!831 (rule!1188 separatorToken!170))))))

(declare-fun lt!86188 () Unit!3818)

(assert (=> b!224620 (= lt!86188 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!76 thiss!17480 rules!1920 lt!86185 separatorToken!170))))

(assert (=> b!224620 e!138565))

(declare-fun res!103152 () Bool)

(assert (=> b!224620 (=> (not res!103152) (not e!138565))))

(assert (=> b!224620 (= res!103152 (= (size!2731 (_1!2035 lt!86214)) 1))))

(declare-fun lt!86204 () BalanceConc!2192)

(assert (=> b!224620 (= lt!86214 (lex!321 thiss!17480 rules!1920 lt!86204))))

(declare-fun lt!86220 () BalanceConc!2194)

(assert (=> b!224620 (= lt!86204 (printTailRec!215 thiss!17480 lt!86220 0 (BalanceConc!2193 Empty!1092)))))

(assert (=> b!224620 (= lt!86204 (print!252 thiss!17480 lt!86220))))

(assert (=> b!224620 (= lt!86220 (singletonSeq!187 separatorToken!170))))

(assert (=> b!224620 (rulesProduceIndividualToken!270 thiss!17480 rules!1920 lt!86180)))

(declare-fun lt!86192 () Unit!3818)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!88 (LexerInterface!521 List!3415 List!3416 Token!1014) Unit!3818)

(assert (=> b!224620 (= lt!86192 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!88 thiss!17480 rules!1920 tokens!465 lt!86180))))

(assert (=> b!224620 (= lt!86180 (head!765 (t!33160 tokens!465)))))

(declare-fun lt!86200 () Unit!3818)

(assert (=> b!224620 (= lt!86200 e!138589)))

(declare-fun c!43213 () Bool)

(declare-fun isEmpty!1910 (List!3416) Bool)

(assert (=> b!224620 (= c!43213 (isEmpty!1910 (t!33160 tokens!465)))))

(declare-fun lt!86219 () List!3414)

(assert (=> b!224620 (= lt!86222 (maxPrefix!251 thiss!17480 rules!1920 lt!86219))))

(declare-fun lt!86178 () tuple2!3640)

(assert (=> b!224620 (= lt!86219 (_2!2036 lt!86178))))

(declare-fun lt!86224 () Unit!3818)

(declare-fun lemmaSamePrefixThenSameSuffix!156 (List!3414 List!3414 List!3414 List!3414 List!3414) Unit!3818)

(assert (=> b!224620 (= lt!86224 (lemmaSamePrefixThenSameSuffix!156 lt!86225 lt!86219 lt!86225 (_2!2036 lt!86178) lt!86213))))

(assert (=> b!224620 (= lt!86178 (get!1060 (maxPrefix!251 thiss!17480 rules!1920 lt!86213)))))

(declare-fun isPrefix!331 (List!3414 List!3414) Bool)

(assert (=> b!224620 (isPrefix!331 lt!86225 lt!86189)))

(declare-fun lt!86208 () Unit!3818)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!226 (List!3414 List!3414) Unit!3818)

(assert (=> b!224620 (= lt!86208 (lemmaConcatTwoListThenFirstIsPrefix!226 lt!86225 lt!86219))))

(assert (=> b!224620 e!138555))

(declare-fun res!103129 () Bool)

(assert (=> b!224620 (=> res!103129 e!138555)))

(assert (=> b!224620 (= res!103129 (isEmpty!1910 tokens!465))))

(declare-fun lt!86206 () Unit!3818)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!96 (LexerInterface!521 List!3415 List!3416 Token!1014) Unit!3818)

(assert (=> b!224620 (= lt!86206 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!96 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!93015 () Bool)

(declare-fun b!224621 () Bool)

(assert (=> b!224621 (= e!138554 (and tp!93015 (inv!4256 (tag!831 (rule!1188 (h!8803 tokens!465)))) (inv!4259 (transformation!635 (rule!1188 (h!8803 tokens!465)))) e!138568))))

(declare-fun b!224622 () Bool)

(assert (=> b!224622 (= e!138569 false)))

(declare-fun b!224623 () Bool)

(declare-fun res!103151 () Bool)

(assert (=> b!224623 (=> (not res!103151) (not e!138578))))

(declare-fun isEmpty!1911 (List!3415) Bool)

(assert (=> b!224623 (= res!103151 (not (isEmpty!1911 rules!1920)))))

(declare-fun e!138580 () Bool)

(assert (=> b!224624 (= e!138587 e!138580)))

(declare-fun res!103122 () Bool)

(assert (=> b!224624 (=> res!103122 e!138580)))

(declare-datatypes ((tuple2!3642 0))(
  ( (tuple2!3643 (_1!2037 Token!1014) (_2!2037 BalanceConc!2192)) )
))
(declare-datatypes ((Option!599 0))(
  ( (None!598) (Some!598 (v!14273 tuple2!3642)) )
))
(declare-fun isDefined!450 (Option!599) Bool)

(declare-fun maxPrefixZipperSequence!214 (LexerInterface!521 List!3415 BalanceConc!2192) Option!599)

(assert (=> b!224624 (= res!103122 (not (isDefined!450 (maxPrefixZipperSequence!214 thiss!17480 rules!1920 (seqFromList!648 (originalCharacters!678 (h!8803 tokens!465)))))))))

(declare-fun lt!86194 () Unit!3818)

(assert (=> b!224624 (= lt!86194 (forallContained!202 tokens!465 lambda!6984 (h!8803 tokens!465)))))

(assert (=> b!224624 (= lt!86225 (originalCharacters!678 (h!8803 tokens!465)))))

(declare-fun b!224625 () Bool)

(declare-fun Unit!3824 () Unit!3818)

(assert (=> b!224625 (= e!138584 Unit!3824)))

(declare-fun b!224626 () Bool)

(assert (=> b!224626 (= e!138553 (matchR!197 (regex!635 (rule!1188 (h!8803 tokens!465))) lt!86225))))

(declare-fun b!224627 () Bool)

(declare-fun ++!852 (List!3414 List!3414) List!3414)

(assert (=> b!224627 (= e!138588 (not (= lt!86213 (++!852 lt!86225 lt!86207))))))

(declare-fun res!103136 () Bool)

(assert (=> start!24018 (=> (not res!103136) (not e!138578))))

(assert (=> start!24018 (= res!103136 ((_ is Lexer!519) thiss!17480))))

(assert (=> start!24018 e!138578))

(assert (=> start!24018 true))

(assert (=> start!24018 e!138571))

(declare-fun inv!4260 (Token!1014) Bool)

(assert (=> start!24018 (and (inv!4260 separatorToken!170) e!138581)))

(declare-fun e!138590 () Bool)

(assert (=> start!24018 e!138590))

(declare-fun b!224628 () Bool)

(declare-fun e!138576 () Bool)

(declare-fun lt!86191 () Rule!1070)

(assert (=> b!224628 (= e!138576 (= (rule!1188 lt!86180) lt!86191))))

(declare-fun b!224629 () Bool)

(declare-fun Unit!3825 () Unit!3818)

(assert (=> b!224629 (= e!138589 Unit!3825)))

(declare-fun b!224630 () Bool)

(assert (=> b!224630 (= e!138562 e!138576)))

(declare-fun res!103146 () Bool)

(assert (=> b!224630 (=> (not res!103146) (not e!138576))))

(assert (=> b!224630 (= res!103146 (matchR!197 (regex!635 lt!86191) lt!86183))))

(assert (=> b!224630 (= lt!86191 (get!1061 lt!86210))))

(declare-fun res!103128 () Bool)

(assert (=> b!224631 (=> (not res!103128) (not e!138579))))

(declare-fun forall!763 (List!3416 Int) Bool)

(assert (=> b!224631 (= res!103128 (forall!763 tokens!465 lambda!6983))))

(declare-fun b!224632 () Bool)

(declare-fun res!103145 () Bool)

(assert (=> b!224632 (=> (not res!103145) (not e!138564))))

(declare-fun apply!600 (BalanceConc!2194 Int) Token!1014)

(assert (=> b!224632 (= res!103145 (= (apply!600 (_1!2035 lt!86218) 0) lt!86180))))

(declare-fun b!224633 () Bool)

(declare-fun res!103149 () Bool)

(assert (=> b!224633 (=> (not res!103149) (not e!138565))))

(assert (=> b!224633 (= res!103149 (= (apply!600 (_1!2035 lt!86214) 0) separatorToken!170))))

(declare-fun b!224634 () Bool)

(assert (=> b!224634 (= e!138579 e!138570)))

(declare-fun res!103125 () Bool)

(assert (=> b!224634 (=> (not res!103125) (not e!138570))))

(assert (=> b!224634 (= res!103125 (= lt!86213 lt!86201))))

(declare-fun printWithSeparatorTokenWhenNeededRec!204 (LexerInterface!521 List!3415 BalanceConc!2194 Token!1014 Int) BalanceConc!2192)

(assert (=> b!224634 (= lt!86201 (list!1300 (printWithSeparatorTokenWhenNeededRec!204 thiss!17480 rules!1920 lt!86179 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!214 (LexerInterface!521 List!3415 List!3416 Token!1014) List!3414)

(assert (=> b!224634 (= lt!86213 (printWithSeparatorTokenWhenNeededList!214 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!224635 () Bool)

(declare-fun tp!93017 () Bool)

(assert (=> b!224635 (= e!138572 (and tp!93017 (inv!4256 (tag!831 (rule!1188 separatorToken!170))) (inv!4259 (transformation!635 (rule!1188 separatorToken!170))) e!138557))))

(declare-fun b!224636 () Bool)

(declare-fun res!103140 () Bool)

(assert (=> b!224636 (=> res!103140 e!138587)))

(declare-fun isEmpty!1912 (BalanceConc!2194) Bool)

(assert (=> b!224636 (= res!103140 (isEmpty!1912 (_1!2035 (lex!321 thiss!17480 rules!1920 (seqFromList!648 lt!86225)))))))

(declare-fun b!224637 () Bool)

(assert (=> b!224637 (= e!138580 e!138575)))

(declare-fun res!103139 () Bool)

(assert (=> b!224637 (=> res!103139 e!138575)))

(assert (=> b!224637 (= res!103139 (not lt!86203))))

(assert (=> b!224637 e!138553))

(declare-fun res!103141 () Bool)

(assert (=> b!224637 (=> (not res!103141) (not e!138553))))

(assert (=> b!224637 (= res!103141 (= (_1!2036 lt!86209) (h!8803 tokens!465)))))

(declare-fun lt!86202 () Option!597)

(assert (=> b!224637 (= lt!86209 (get!1060 lt!86202))))

(assert (=> b!224637 (isDefined!448 lt!86202)))

(assert (=> b!224637 (= lt!86202 (maxPrefix!251 thiss!17480 rules!1920 lt!86225))))

(declare-fun tp!93016 () Bool)

(declare-fun b!224638 () Bool)

(assert (=> b!224638 (= e!138590 (and (inv!4260 (h!8803 tokens!465)) e!138560 tp!93016))))

(declare-fun b!224639 () Bool)

(assert (=> b!224639 (= e!138570 (not e!138583))))

(declare-fun res!103127 () Bool)

(assert (=> b!224639 (=> res!103127 e!138583)))

(assert (=> b!224639 (= res!103127 (not (= lt!86207 (list!1300 lt!86181))))))

(assert (=> b!224639 (= lt!86181 (printWithSeparatorTokenWhenNeededRec!204 thiss!17480 rules!1920 (seqFromList!647 (t!33160 tokens!465)) separatorToken!170 0))))

(declare-fun lt!86184 () List!3414)

(assert (=> b!224639 (= lt!86184 lt!86189)))

(assert (=> b!224639 (= lt!86189 (++!852 lt!86225 lt!86219))))

(assert (=> b!224639 (= lt!86184 (++!852 (++!852 lt!86225 lt!86185) lt!86207))))

(declare-fun lt!86190 () Unit!3818)

(declare-fun lemmaConcatAssociativity!336 (List!3414 List!3414 List!3414) Unit!3818)

(assert (=> b!224639 (= lt!86190 (lemmaConcatAssociativity!336 lt!86225 lt!86185 lt!86207))))

(assert (=> b!224639 (= lt!86225 (list!1300 (charsOf!290 (h!8803 tokens!465))))))

(assert (=> b!224639 (= lt!86219 (++!852 lt!86185 lt!86207))))

(assert (=> b!224639 (= lt!86207 (printWithSeparatorTokenWhenNeededList!214 thiss!17480 rules!1920 (t!33160 tokens!465) separatorToken!170))))

(assert (=> b!224639 (= lt!86185 (list!1300 (charsOf!290 separatorToken!170)))))

(assert (= (and start!24018 res!103136) b!224623))

(assert (= (and b!224623 res!103151) b!224619))

(assert (= (and b!224619 res!103138) b!224595))

(assert (= (and b!224595 res!103133) b!224607))

(assert (= (and b!224607 res!103123) b!224592))

(assert (= (and b!224592 res!103137) b!224631))

(assert (= (and b!224631 res!103128) b!224596))

(assert (= (and b!224596 res!103147) b!224615))

(assert (= (and b!224615 res!103131) b!224634))

(assert (= (and b!224634 res!103125) b!224605))

(assert (= (and b!224605 res!103132) b!224639))

(assert (= (and b!224639 (not res!103127)) b!224604))

(assert (= (and b!224604 res!103126) b!224627))

(assert (= (and b!224604 (not res!103154)) b!224610))

(assert (= (and b!224610 (not res!103150)) b!224609))

(assert (= (and b!224609 (not res!103134)) b!224636))

(assert (= (and b!224636 (not res!103140)) b!224624))

(assert (= (and b!224624 (not res!103122)) b!224637))

(assert (= (and b!224637 res!103141) b!224599))

(assert (= (and b!224599 res!103135) b!224626))

(assert (= (and b!224637 (not res!103139)) b!224620))

(assert (= (and b!224620 (not res!103129)) b!224594))

(assert (= (and b!224594 res!103142) b!224603))

(assert (= (and b!224620 c!43213) b!224617))

(assert (= (and b!224620 (not c!43213)) b!224629))

(assert (= (and b!224620 res!103152) b!224633))

(assert (= (and b!224633 res!103149) b!224614))

(assert (= (and b!224620 res!103143) b!224616))

(assert (= (and b!224616 res!103148) b!224618))

(assert (= (and b!224620 res!103153) b!224632))

(assert (= (and b!224632 res!103145) b!224593))

(assert (= (and b!224620 res!103144) b!224630))

(assert (= (and b!224630 res!103146) b!224628))

(assert (= (and b!224620 c!43212) b!224611))

(assert (= (and b!224620 (not c!43212)) b!224625))

(assert (= (and b!224611 res!103124) b!224622))

(assert (= (and b!224620 c!43214) b!224612))

(assert (= (and b!224620 (not c!43214)) b!224600))

(assert (= (and b!224620 (not res!103130)) b!224602))

(assert (= b!224606 b!224613))

(assert (= b!224597 b!224606))

(assert (= (and start!24018 ((_ is Cons!3405) rules!1920)) b!224597))

(assert (= b!224635 b!224598))

(assert (= b!224608 b!224635))

(assert (= start!24018 b!224608))

(assert (= b!224621 b!224591))

(assert (= b!224601 b!224621))

(assert (= b!224638 b!224601))

(assert (= (and start!24018 ((_ is Cons!3406) tokens!465)) b!224638))

(declare-fun m!263317 () Bool)

(assert (=> b!224596 m!263317))

(declare-fun m!263319 () Bool)

(assert (=> b!224626 m!263319))

(declare-fun m!263321 () Bool)

(assert (=> b!224619 m!263321))

(declare-fun m!263323 () Bool)

(assert (=> b!224606 m!263323))

(declare-fun m!263325 () Bool)

(assert (=> b!224606 m!263325))

(declare-fun m!263327 () Bool)

(assert (=> b!224630 m!263327))

(declare-fun m!263329 () Bool)

(assert (=> b!224630 m!263329))

(declare-fun m!263331 () Bool)

(assert (=> b!224609 m!263331))

(declare-fun m!263333 () Bool)

(assert (=> b!224602 m!263333))

(declare-fun m!263335 () Bool)

(assert (=> b!224631 m!263335))

(declare-fun m!263337 () Bool)

(assert (=> b!224636 m!263337))

(assert (=> b!224636 m!263337))

(declare-fun m!263339 () Bool)

(assert (=> b!224636 m!263339))

(declare-fun m!263341 () Bool)

(assert (=> b!224636 m!263341))

(declare-fun m!263343 () Bool)

(assert (=> b!224627 m!263343))

(declare-fun m!263345 () Bool)

(assert (=> b!224623 m!263345))

(declare-fun m!263347 () Bool)

(assert (=> b!224616 m!263347))

(declare-fun m!263349 () Bool)

(assert (=> b!224616 m!263349))

(declare-fun m!263351 () Bool)

(assert (=> b!224624 m!263351))

(assert (=> b!224624 m!263351))

(declare-fun m!263353 () Bool)

(assert (=> b!224624 m!263353))

(assert (=> b!224624 m!263353))

(declare-fun m!263355 () Bool)

(assert (=> b!224624 m!263355))

(declare-fun m!263357 () Bool)

(assert (=> b!224624 m!263357))

(declare-fun m!263359 () Bool)

(assert (=> b!224610 m!263359))

(declare-fun m!263361 () Bool)

(assert (=> b!224610 m!263361))

(declare-fun m!263363 () Bool)

(assert (=> b!224610 m!263363))

(declare-fun m!263365 () Bool)

(assert (=> b!224610 m!263365))

(declare-fun m!263367 () Bool)

(assert (=> b!224610 m!263367))

(declare-fun m!263369 () Bool)

(assert (=> b!224638 m!263369))

(declare-fun m!263371 () Bool)

(assert (=> b!224620 m!263371))

(declare-fun m!263373 () Bool)

(assert (=> b!224620 m!263373))

(declare-fun m!263375 () Bool)

(assert (=> b!224620 m!263375))

(declare-fun m!263377 () Bool)

(assert (=> b!224620 m!263377))

(declare-fun m!263379 () Bool)

(assert (=> b!224620 m!263379))

(declare-fun m!263381 () Bool)

(assert (=> b!224620 m!263381))

(declare-fun m!263383 () Bool)

(assert (=> b!224620 m!263383))

(declare-fun m!263385 () Bool)

(assert (=> b!224620 m!263385))

(declare-fun m!263387 () Bool)

(assert (=> b!224620 m!263387))

(declare-fun m!263389 () Bool)

(assert (=> b!224620 m!263389))

(assert (=> b!224620 m!263385))

(declare-fun m!263391 () Bool)

(assert (=> b!224620 m!263391))

(declare-fun m!263393 () Bool)

(assert (=> b!224620 m!263393))

(declare-fun m!263395 () Bool)

(assert (=> b!224620 m!263395))

(declare-fun m!263397 () Bool)

(assert (=> b!224620 m!263397))

(declare-fun m!263399 () Bool)

(assert (=> b!224620 m!263399))

(declare-fun m!263401 () Bool)

(assert (=> b!224620 m!263401))

(declare-fun m!263403 () Bool)

(assert (=> b!224620 m!263403))

(declare-fun m!263405 () Bool)

(assert (=> b!224620 m!263405))

(declare-fun m!263407 () Bool)

(assert (=> b!224620 m!263407))

(declare-fun m!263409 () Bool)

(assert (=> b!224620 m!263409))

(declare-fun m!263411 () Bool)

(assert (=> b!224620 m!263411))

(declare-fun m!263413 () Bool)

(assert (=> b!224620 m!263413))

(declare-fun m!263415 () Bool)

(assert (=> b!224620 m!263415))

(declare-fun m!263417 () Bool)

(assert (=> b!224620 m!263417))

(declare-fun m!263419 () Bool)

(assert (=> b!224620 m!263419))

(declare-fun m!263421 () Bool)

(assert (=> b!224620 m!263421))

(assert (=> b!224620 m!263417))

(declare-fun m!263423 () Bool)

(assert (=> b!224620 m!263423))

(declare-fun m!263425 () Bool)

(assert (=> b!224620 m!263425))

(assert (=> b!224620 m!263379))

(declare-fun m!263427 () Bool)

(assert (=> b!224620 m!263427))

(declare-fun m!263429 () Bool)

(assert (=> b!224620 m!263429))

(declare-fun m!263431 () Bool)

(assert (=> b!224620 m!263431))

(declare-fun m!263433 () Bool)

(assert (=> b!224620 m!263433))

(declare-fun m!263435 () Bool)

(assert (=> b!224620 m!263435))

(declare-fun m!263437 () Bool)

(assert (=> b!224620 m!263437))

(declare-fun m!263439 () Bool)

(assert (=> b!224620 m!263439))

(declare-fun m!263441 () Bool)

(assert (=> b!224620 m!263441))

(declare-fun m!263443 () Bool)

(assert (=> b!224620 m!263443))

(declare-fun m!263445 () Bool)

(assert (=> b!224620 m!263445))

(assert (=> b!224620 m!263443))

(assert (=> b!224620 m!263437))

(declare-fun m!263447 () Bool)

(assert (=> b!224620 m!263447))

(declare-fun m!263449 () Bool)

(assert (=> b!224620 m!263449))

(declare-fun m!263451 () Bool)

(assert (=> b!224620 m!263451))

(declare-fun m!263453 () Bool)

(assert (=> b!224620 m!263453))

(declare-fun m!263455 () Bool)

(assert (=> start!24018 m!263455))

(declare-fun m!263457 () Bool)

(assert (=> b!224607 m!263457))

(declare-fun m!263459 () Bool)

(assert (=> b!224608 m!263459))

(declare-fun m!263461 () Bool)

(assert (=> b!224599 m!263461))

(declare-fun m!263463 () Bool)

(assert (=> b!224603 m!263463))

(declare-fun m!263465 () Bool)

(assert (=> b!224603 m!263465))

(declare-fun m!263467 () Bool)

(assert (=> b!224601 m!263467))

(declare-fun m!263469 () Bool)

(assert (=> b!224612 m!263469))

(declare-fun m!263471 () Bool)

(assert (=> b!224635 m!263471))

(declare-fun m!263473 () Bool)

(assert (=> b!224635 m!263473))

(declare-fun m!263475 () Bool)

(assert (=> b!224605 m!263475))

(assert (=> b!224605 m!263475))

(declare-fun m!263477 () Bool)

(assert (=> b!224605 m!263477))

(declare-fun m!263479 () Bool)

(assert (=> b!224634 m!263479))

(assert (=> b!224634 m!263479))

(declare-fun m!263481 () Bool)

(assert (=> b!224634 m!263481))

(declare-fun m!263483 () Bool)

(assert (=> b!224634 m!263483))

(declare-fun m!263485 () Bool)

(assert (=> b!224637 m!263485))

(declare-fun m!263487 () Bool)

(assert (=> b!224637 m!263487))

(declare-fun m!263489 () Bool)

(assert (=> b!224637 m!263489))

(declare-fun m!263491 () Bool)

(assert (=> b!224639 m!263491))

(declare-fun m!263493 () Bool)

(assert (=> b!224639 m!263493))

(declare-fun m!263495 () Bool)

(assert (=> b!224639 m!263495))

(declare-fun m!263497 () Bool)

(assert (=> b!224639 m!263497))

(assert (=> b!224639 m!263491))

(declare-fun m!263499 () Bool)

(assert (=> b!224639 m!263499))

(declare-fun m!263501 () Bool)

(assert (=> b!224639 m!263501))

(assert (=> b!224639 m!263499))

(declare-fun m!263503 () Bool)

(assert (=> b!224639 m!263503))

(declare-fun m!263505 () Bool)

(assert (=> b!224639 m!263505))

(declare-fun m!263507 () Bool)

(assert (=> b!224639 m!263507))

(assert (=> b!224639 m!263495))

(declare-fun m!263509 () Bool)

(assert (=> b!224639 m!263509))

(declare-fun m!263511 () Bool)

(assert (=> b!224639 m!263511))

(declare-fun m!263513 () Bool)

(assert (=> b!224639 m!263513))

(assert (=> b!224639 m!263505))

(declare-fun m!263515 () Bool)

(assert (=> b!224639 m!263515))

(declare-fun m!263517 () Bool)

(assert (=> b!224614 m!263517))

(declare-fun m!263519 () Bool)

(assert (=> b!224594 m!263519))

(assert (=> b!224594 m!263385))

(declare-fun m!263521 () Bool)

(assert (=> b!224595 m!263521))

(declare-fun m!263523 () Bool)

(assert (=> b!224595 m!263523))

(declare-fun m!263525 () Bool)

(assert (=> b!224633 m!263525))

(declare-fun m!263527 () Bool)

(assert (=> b!224611 m!263527))

(declare-fun m!263529 () Bool)

(assert (=> b!224611 m!263529))

(declare-fun m!263531 () Bool)

(assert (=> b!224621 m!263531))

(declare-fun m!263533 () Bool)

(assert (=> b!224621 m!263533))

(declare-fun m!263535 () Bool)

(assert (=> b!224593 m!263535))

(declare-fun m!263537 () Bool)

(assert (=> b!224632 m!263537))

(check-sat (not b!224619) (not b!224623) (not b!224635) (not b_next!8389) (not b_next!8391) (not b!224606) (not b!224611) (not b!224596) b_and!16679 (not b!224620) (not b!224605) (not b!224601) (not b_next!8385) (not b!224595) (not b!224608) (not b!224648) (not b!224627) (not b!224599) b_and!16681 b_and!16683 (not b!224630) (not b!224614) (not b!224626) (not b!224594) (not b!224621) (not b!224593) (not b!224637) b_and!16685 (not b!224616) (not b!224624) (not b!224639) (not b!224631) (not b!224633) (not b!224638) (not b!224609) (not b!224607) (not b_next!8393) (not b!224636) (not b!224612) (not b!224602) b_and!16677 (not b!224610) b_and!16687 (not b!224597) (not b_next!8395) (not b_next!8387) (not start!24018) (not b!224634) (not b!224632) (not b!224603))
(check-sat (not b_next!8385) (not b_next!8389) (not b_next!8391) b_and!16685 b_and!16679 (not b_next!8393) b_and!16677 b_and!16687 b_and!16681 b_and!16683 (not b_next!8395) (not b_next!8387))
