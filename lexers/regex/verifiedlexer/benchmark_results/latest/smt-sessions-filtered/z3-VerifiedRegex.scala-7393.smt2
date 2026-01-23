; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393094 () Bool)

(assert start!393094)

(declare-fun b!4137591 () Bool)

(declare-fun b_free!117675 () Bool)

(declare-fun b_next!118379 () Bool)

(assert (=> b!4137591 (= b_free!117675 (not b_next!118379))))

(declare-fun tp!1261233 () Bool)

(declare-fun b_and!321113 () Bool)

(assert (=> b!4137591 (= tp!1261233 b_and!321113)))

(declare-fun b_free!117677 () Bool)

(declare-fun b_next!118381 () Bool)

(assert (=> b!4137591 (= b_free!117677 (not b_next!118381))))

(declare-fun tp!1261228 () Bool)

(declare-fun b_and!321115 () Bool)

(assert (=> b!4137591 (= tp!1261228 b_and!321115)))

(declare-fun b!4137589 () Bool)

(declare-fun b_free!117679 () Bool)

(declare-fun b_next!118383 () Bool)

(assert (=> b!4137589 (= b_free!117679 (not b_next!118383))))

(declare-fun tp!1261236 () Bool)

(declare-fun b_and!321117 () Bool)

(assert (=> b!4137589 (= tp!1261236 b_and!321117)))

(declare-fun b_free!117681 () Bool)

(declare-fun b_next!118385 () Bool)

(assert (=> b!4137589 (= b_free!117681 (not b_next!118385))))

(declare-fun tp!1261235 () Bool)

(declare-fun b_and!321119 () Bool)

(assert (=> b!4137589 (= tp!1261235 b_and!321119)))

(declare-fun b!4137604 () Bool)

(declare-fun b_free!117683 () Bool)

(declare-fun b_next!118387 () Bool)

(assert (=> b!4137604 (= b_free!117683 (not b_next!118387))))

(declare-fun tp!1261231 () Bool)

(declare-fun b_and!321121 () Bool)

(assert (=> b!4137604 (= tp!1261231 b_and!321121)))

(declare-fun b_free!117685 () Bool)

(declare-fun b_next!118389 () Bool)

(assert (=> b!4137604 (= b_free!117685 (not b_next!118389))))

(declare-fun tp!1261229 () Bool)

(declare-fun b_and!321123 () Bool)

(assert (=> b!4137604 (= tp!1261229 b_and!321123)))

(declare-fun tp!1261234 () Bool)

(declare-fun e!2567223 () Bool)

(declare-datatypes ((List!44972 0))(
  ( (Nil!44848) (Cons!44848 (h!50268 (_ BitVec 16)) (t!342105 List!44972)) )
))
(declare-datatypes ((TokenValue!7588 0))(
  ( (FloatLiteralValue!15176 (text!53561 List!44972)) (TokenValueExt!7587 (__x!27393 Int)) (Broken!37940 (value!230231 List!44972)) (Object!7711) (End!7588) (Def!7588) (Underscore!7588) (Match!7588) (Else!7588) (Error!7588) (Case!7588) (If!7588) (Extends!7588) (Abstract!7588) (Class!7588) (Val!7588) (DelimiterValue!15176 (del!7648 List!44972)) (KeywordValue!7594 (value!230232 List!44972)) (CommentValue!15176 (value!230233 List!44972)) (WhitespaceValue!15176 (value!230234 List!44972)) (IndentationValue!7588 (value!230235 List!44972)) (String!51689) (Int32!7588) (Broken!37941 (value!230236 List!44972)) (Boolean!7589) (Unit!64156) (OperatorValue!7591 (op!7648 List!44972)) (IdentifierValue!15176 (value!230237 List!44972)) (IdentifierValue!15177 (value!230238 List!44972)) (WhitespaceValue!15177 (value!230239 List!44972)) (True!15176) (False!15176) (Broken!37942 (value!230240 List!44972)) (Broken!37943 (value!230241 List!44972)) (True!15177) (RightBrace!7588) (RightBracket!7588) (Colon!7588) (Null!7588) (Comma!7588) (LeftBracket!7588) (False!15177) (LeftBrace!7588) (ImaginaryLiteralValue!7588 (text!53562 List!44972)) (StringLiteralValue!22764 (value!230242 List!44972)) (EOFValue!7588 (value!230243 List!44972)) (IdentValue!7588 (value!230244 List!44972)) (DelimiterValue!15177 (value!230245 List!44972)) (DedentValue!7588 (value!230246 List!44972)) (NewLineValue!7588 (value!230247 List!44972)) (IntegerValue!22764 (value!230248 (_ BitVec 32)) (text!53563 List!44972)) (IntegerValue!22765 (value!230249 Int) (text!53564 List!44972)) (Times!7588) (Or!7588) (Equal!7588) (Minus!7588) (Broken!37944 (value!230250 List!44972)) (And!7588) (Div!7588) (LessEqual!7588) (Mod!7588) (Concat!19851) (Not!7588) (Plus!7588) (SpaceValue!7588 (value!230251 List!44972)) (IntegerValue!22766 (value!230252 Int) (text!53565 List!44972)) (StringLiteralValue!22765 (text!53566 List!44972)) (FloatLiteralValue!15177 (text!53567 List!44972)) (BytesLiteralValue!7588 (value!230253 List!44972)) (CommentValue!15177 (value!230254 List!44972)) (StringLiteralValue!22766 (value!230255 List!44972)) (ErrorTokenValue!7588 (msg!7649 List!44972)) )
))
(declare-datatypes ((C!24712 0))(
  ( (C!24713 (val!14466 Int)) )
))
(declare-datatypes ((List!44973 0))(
  ( (Nil!44849) (Cons!44849 (h!50269 C!24712) (t!342106 List!44973)) )
))
(declare-datatypes ((IArray!27143 0))(
  ( (IArray!27144 (innerList!13629 List!44973)) )
))
(declare-datatypes ((Conc!13569 0))(
  ( (Node!13569 (left!33586 Conc!13569) (right!33916 Conc!13569) (csize!27368 Int) (cheight!13780 Int)) (Leaf!20963 (xs!16875 IArray!27143) (csize!27369 Int)) (Empty!13569) )
))
(declare-datatypes ((BalanceConc!26732 0))(
  ( (BalanceConc!26733 (c!709510 Conc!13569)) )
))
(declare-datatypes ((Regex!12263 0))(
  ( (ElementMatch!12263 (c!709511 C!24712)) (Concat!19852 (regOne!25038 Regex!12263) (regTwo!25038 Regex!12263)) (EmptyExpr!12263) (Star!12263 (reg!12592 Regex!12263)) (EmptyLang!12263) (Union!12263 (regOne!25039 Regex!12263) (regTwo!25039 Regex!12263)) )
))
(declare-datatypes ((String!51690 0))(
  ( (String!51691 (value!230256 String)) )
))
(declare-datatypes ((TokenValueInjection!14604 0))(
  ( (TokenValueInjection!14605 (toValue!10022 Int) (toChars!9881 Int)) )
))
(declare-datatypes ((Rule!14516 0))(
  ( (Rule!14517 (regex!7358 Regex!12263) (tag!8218 String!51690) (isSeparator!7358 Bool) (transformation!7358 TokenValueInjection!14604)) )
))
(declare-fun r!4008 () Rule!14516)

(declare-fun b!4137580 () Bool)

(declare-fun e!2567225 () Bool)

(declare-fun inv!59454 (String!51690) Bool)

(declare-fun inv!59456 (TokenValueInjection!14604) Bool)

(assert (=> b!4137580 (= e!2567223 (and tp!1261234 (inv!59454 (tag!8218 r!4008)) (inv!59456 (transformation!7358 r!4008)) e!2567225))))

(declare-fun b!4137581 () Bool)

(declare-fun e!2567235 () Bool)

(declare-fun e!2567226 () Bool)

(assert (=> b!4137581 (= e!2567235 e!2567226)))

(declare-fun res!1692218 () Bool)

(assert (=> b!4137581 (=> (not res!1692218) (not e!2567226))))

(declare-datatypes ((List!44974 0))(
  ( (Nil!44850) (Cons!44850 (h!50270 Rule!14516) (t!342107 List!44974)) )
))
(declare-fun rules!3756 () List!44974)

(declare-fun input!3238 () List!44973)

(declare-fun p!2912 () List!44973)

(declare-fun lt!1475300 () TokenValue!7588)

(declare-datatypes ((LexerInterface!6947 0))(
  ( (LexerInterfaceExt!6944 (__x!27394 Int)) (Lexer!6945) )
))
(declare-fun thiss!25645 () LexerInterface!6947)

(declare-fun lt!1475294 () List!44973)

(declare-fun lt!1475293 () Int)

(declare-datatypes ((Token!13646 0))(
  ( (Token!13647 (value!230257 TokenValue!7588) (rule!10460 Rule!14516) (size!33206 Int) (originalCharacters!7854 List!44973)) )
))
(declare-datatypes ((tuple2!43242 0))(
  ( (tuple2!43243 (_1!24755 Token!13646) (_2!24755 List!44973)) )
))
(declare-datatypes ((Option!9664 0))(
  ( (None!9663) (Some!9663 (v!40293 tuple2!43242)) )
))
(declare-fun maxPrefix!4137 (LexerInterface!6947 List!44974 List!44973) Option!9664)

(assert (=> b!4137581 (= res!1692218 (= (maxPrefix!4137 thiss!25645 rules!3756 input!3238) (Some!9663 (tuple2!43243 (Token!13647 lt!1475300 r!4008 lt!1475293 p!2912) lt!1475294))))))

(declare-fun getSuffix!2620 (List!44973 List!44973) List!44973)

(assert (=> b!4137581 (= lt!1475294 (getSuffix!2620 input!3238 p!2912))))

(declare-fun size!33207 (List!44973) Int)

(assert (=> b!4137581 (= lt!1475293 (size!33207 p!2912))))

(declare-fun lt!1475297 () BalanceConc!26732)

(declare-fun apply!10431 (TokenValueInjection!14604 BalanceConc!26732) TokenValue!7588)

(assert (=> b!4137581 (= lt!1475300 (apply!10431 (transformation!7358 r!4008) lt!1475297))))

(declare-datatypes ((Unit!64157 0))(
  ( (Unit!64158) )
))
(declare-fun lt!1475305 () Unit!64157)

(declare-fun lemmaSemiInverse!2216 (TokenValueInjection!14604 BalanceConc!26732) Unit!64157)

(assert (=> b!4137581 (= lt!1475305 (lemmaSemiInverse!2216 (transformation!7358 r!4008) lt!1475297))))

(declare-fun seqFromList!5475 (List!44973) BalanceConc!26732)

(assert (=> b!4137581 (= lt!1475297 (seqFromList!5475 p!2912))))

(declare-fun b!4137582 () Bool)

(declare-fun lt!1475295 () List!44973)

(declare-fun lt!1475296 () Option!9664)

(declare-fun e!2567228 () Bool)

(declare-fun lt!1475301 () tuple2!43242)

(declare-fun rBis!149 () Rule!14516)

(assert (=> b!4137582 (= e!2567228 (or (not (= lt!1475296 (Some!9663 (tuple2!43243 (_1!24755 lt!1475301) lt!1475295)))) (= (rule!10460 (_1!24755 lt!1475301)) rBis!149)))))

(declare-fun isPrefix!4293 (List!44973 List!44973) Bool)

(assert (=> b!4137582 (isPrefix!4293 input!3238 input!3238)))

(declare-fun lt!1475298 () Unit!64157)

(declare-fun lemmaIsPrefixRefl!2776 (List!44973 List!44973) Unit!64157)

(assert (=> b!4137582 (= lt!1475298 (lemmaIsPrefixRefl!2776 input!3238 input!3238))))

(declare-fun b!4137583 () Bool)

(declare-fun e!2567229 () Bool)

(assert (=> b!4137583 (= e!2567229 e!2567228)))

(declare-fun res!1692221 () Bool)

(assert (=> b!4137583 (=> res!1692221 e!2567228)))

(declare-fun ++!11602 (List!44973 List!44973) List!44973)

(assert (=> b!4137583 (= res!1692221 (not (= (++!11602 p!2912 lt!1475294) input!3238)))))

(declare-fun lt!1475304 () List!44973)

(assert (=> b!4137583 (= lt!1475295 (getSuffix!2620 input!3238 lt!1475304))))

(declare-fun lt!1475303 () BalanceConc!26732)

(declare-fun list!16423 (BalanceConc!26732) List!44973)

(assert (=> b!4137583 (= lt!1475304 (list!16423 lt!1475303))))

(declare-fun b!4137584 () Bool)

(declare-fun e!2567238 () Bool)

(assert (=> b!4137584 (= e!2567226 (not e!2567238))))

(declare-fun res!1692224 () Bool)

(assert (=> b!4137584 (=> res!1692224 e!2567238)))

(get-info :version)

(assert (=> b!4137584 (= res!1692224 (or (not ((_ is Cons!44850) rules!3756)) (not (= (h!50270 rules!3756) rBis!149))))))

(declare-fun lt!1475299 () Unit!64157)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2204 (LexerInterface!6947 Rule!14516 List!44974) Unit!64157)

(assert (=> b!4137584 (= lt!1475299 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2204 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3164 (LexerInterface!6947 Rule!14516) Bool)

(assert (=> b!4137584 (ruleValid!3164 thiss!25645 rBis!149)))

(declare-fun lt!1475302 () Unit!64157)

(assert (=> b!4137584 (= lt!1475302 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2204 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4137585 () Bool)

(declare-fun res!1692229 () Bool)

(assert (=> b!4137585 (=> (not res!1692229) (not e!2567226))))

(declare-fun getIndex!704 (List!44974 Rule!14516) Int)

(assert (=> b!4137585 (= res!1692229 (< (getIndex!704 rules!3756 rBis!149) (getIndex!704 rules!3756 r!4008)))))

(declare-fun tp!1261227 () Bool)

(declare-fun e!2567233 () Bool)

(declare-fun e!2567230 () Bool)

(declare-fun b!4137586 () Bool)

(assert (=> b!4137586 (= e!2567233 (and tp!1261227 (inv!59454 (tag!8218 rBis!149)) (inv!59456 (transformation!7358 rBis!149)) e!2567230))))

(declare-fun tp!1261230 () Bool)

(declare-fun e!2567224 () Bool)

(declare-fun e!2567227 () Bool)

(declare-fun b!4137587 () Bool)

(assert (=> b!4137587 (= e!2567224 (and tp!1261230 (inv!59454 (tag!8218 (h!50270 rules!3756))) (inv!59456 (transformation!7358 (h!50270 rules!3756))) e!2567227))))

(declare-fun b!4137588 () Bool)

(declare-fun res!1692223 () Bool)

(assert (=> b!4137588 (=> res!1692223 e!2567228)))

(assert (=> b!4137588 (= res!1692223 (not (isPrefix!4293 lt!1475304 input!3238)))))

(assert (=> b!4137589 (= e!2567230 (and tp!1261236 tp!1261235))))

(declare-fun res!1692226 () Bool)

(assert (=> start!393094 (=> (not res!1692226) (not e!2567235))))

(assert (=> start!393094 (= res!1692226 ((_ is Lexer!6945) thiss!25645))))

(assert (=> start!393094 e!2567235))

(declare-fun e!2567222 () Bool)

(assert (=> start!393094 e!2567222))

(declare-fun e!2567231 () Bool)

(assert (=> start!393094 e!2567231))

(assert (=> start!393094 true))

(assert (=> start!393094 e!2567223))

(declare-fun e!2567236 () Bool)

(assert (=> start!393094 e!2567236))

(assert (=> start!393094 e!2567233))

(declare-fun b!4137590 () Bool)

(declare-fun res!1692217 () Bool)

(assert (=> b!4137590 (=> (not res!1692217) (not e!2567235))))

(assert (=> b!4137590 (= res!1692217 (isPrefix!4293 p!2912 input!3238))))

(assert (=> b!4137591 (= e!2567227 (and tp!1261233 tp!1261228))))

(declare-fun b!4137592 () Bool)

(declare-fun e!2567234 () Bool)

(assert (=> b!4137592 (= e!2567234 e!2567229)))

(declare-fun res!1692225 () Bool)

(assert (=> b!4137592 (=> res!1692225 e!2567229)))

(declare-fun size!33208 (BalanceConc!26732) Int)

(assert (=> b!4137592 (= res!1692225 (<= (size!33208 lt!1475303) lt!1475293))))

(declare-fun charsOf!4957 (Token!13646) BalanceConc!26732)

(assert (=> b!4137592 (= lt!1475303 (charsOf!4957 (_1!24755 lt!1475301)))))

(declare-fun get!14632 (Option!9664) tuple2!43242)

(assert (=> b!4137592 (= lt!1475301 (get!14632 lt!1475296))))

(declare-fun b!4137593 () Bool)

(declare-fun res!1692220 () Bool)

(assert (=> b!4137593 (=> (not res!1692220) (not e!2567226))))

(declare-fun matchR!6092 (Regex!12263 List!44973) Bool)

(assert (=> b!4137593 (= res!1692220 (matchR!6092 (regex!7358 r!4008) p!2912))))

(declare-fun b!4137594 () Bool)

(declare-fun res!1692219 () Bool)

(assert (=> b!4137594 (=> (not res!1692219) (not e!2567235))))

(declare-fun rulesInvariant!6244 (LexerInterface!6947 List!44974) Bool)

(assert (=> b!4137594 (= res!1692219 (rulesInvariant!6244 thiss!25645 rules!3756))))

(declare-fun b!4137595 () Bool)

(declare-fun res!1692222 () Bool)

(assert (=> b!4137595 (=> (not res!1692222) (not e!2567235))))

(declare-fun isEmpty!26727 (List!44974) Bool)

(assert (=> b!4137595 (= res!1692222 (not (isEmpty!26727 rules!3756)))))

(declare-fun b!4137596 () Bool)

(declare-fun tp!1261238 () Bool)

(assert (=> b!4137596 (= e!2567222 (and e!2567224 tp!1261238))))

(declare-fun b!4137597 () Bool)

(declare-fun res!1692228 () Bool)

(assert (=> b!4137597 (=> (not res!1692228) (not e!2567235))))

(declare-fun contains!9038 (List!44974 Rule!14516) Bool)

(assert (=> b!4137597 (= res!1692228 (contains!9038 rules!3756 r!4008))))

(declare-fun b!4137598 () Bool)

(declare-fun res!1692215 () Bool)

(assert (=> b!4137598 (=> (not res!1692215) (not e!2567226))))

(assert (=> b!4137598 (= res!1692215 (ruleValid!3164 thiss!25645 r!4008))))

(declare-fun b!4137599 () Bool)

(declare-fun res!1692227 () Bool)

(assert (=> b!4137599 (=> (not res!1692227) (not e!2567235))))

(assert (=> b!4137599 (= res!1692227 (contains!9038 rules!3756 rBis!149))))

(declare-fun b!4137600 () Bool)

(declare-fun tp_is_empty!21449 () Bool)

(declare-fun tp!1261232 () Bool)

(assert (=> b!4137600 (= e!2567236 (and tp_is_empty!21449 tp!1261232))))

(declare-fun b!4137601 () Bool)

(declare-fun tp!1261237 () Bool)

(assert (=> b!4137601 (= e!2567231 (and tp_is_empty!21449 tp!1261237))))

(declare-fun b!4137602 () Bool)

(assert (=> b!4137602 (= e!2567238 e!2567234)))

(declare-fun res!1692214 () Bool)

(assert (=> b!4137602 (=> res!1692214 e!2567234)))

(declare-fun isEmpty!26728 (Option!9664) Bool)

(assert (=> b!4137602 (= res!1692214 (isEmpty!26728 lt!1475296))))

(declare-fun maxPrefixOneRule!3076 (LexerInterface!6947 Rule!14516 List!44973) Option!9664)

(assert (=> b!4137602 (= lt!1475296 (maxPrefixOneRule!3076 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4137602 (not (= rBis!149 r!4008))))

(declare-fun lt!1475306 () Unit!64157)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!56 (LexerInterface!6947 List!44974 Rule!14516 Rule!14516) Unit!64157)

(assert (=> b!4137602 (= lt!1475306 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!56 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6521 (List!44974) List!44974)

(assert (=> b!4137602 (contains!9038 (tail!6521 rules!3756) r!4008)))

(declare-fun lt!1475292 () Unit!64157)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!62 (List!44974 Rule!14516 Rule!14516) Unit!64157)

(assert (=> b!4137602 (= lt!1475292 (lemmaGetIndexBiggerAndHeadEqThenTailContains!62 rules!3756 rBis!149 r!4008))))

(declare-fun b!4137603 () Bool)

(declare-fun res!1692216 () Bool)

(assert (=> b!4137603 (=> (not res!1692216) (not e!2567235))))

(declare-fun isEmpty!26729 (List!44973) Bool)

(assert (=> b!4137603 (= res!1692216 (not (isEmpty!26729 p!2912)))))

(assert (=> b!4137604 (= e!2567225 (and tp!1261231 tp!1261229))))

(assert (= (and start!393094 res!1692226) b!4137590))

(assert (= (and b!4137590 res!1692217) b!4137595))

(assert (= (and b!4137595 res!1692222) b!4137594))

(assert (= (and b!4137594 res!1692219) b!4137597))

(assert (= (and b!4137597 res!1692228) b!4137599))

(assert (= (and b!4137599 res!1692227) b!4137603))

(assert (= (and b!4137603 res!1692216) b!4137581))

(assert (= (and b!4137581 res!1692218) b!4137593))

(assert (= (and b!4137593 res!1692220) b!4137585))

(assert (= (and b!4137585 res!1692229) b!4137598))

(assert (= (and b!4137598 res!1692215) b!4137584))

(assert (= (and b!4137584 (not res!1692224)) b!4137602))

(assert (= (and b!4137602 (not res!1692214)) b!4137592))

(assert (= (and b!4137592 (not res!1692225)) b!4137583))

(assert (= (and b!4137583 (not res!1692221)) b!4137588))

(assert (= (and b!4137588 (not res!1692223)) b!4137582))

(assert (= b!4137587 b!4137591))

(assert (= b!4137596 b!4137587))

(assert (= (and start!393094 ((_ is Cons!44850) rules!3756)) b!4137596))

(assert (= (and start!393094 ((_ is Cons!44849) p!2912)) b!4137601))

(assert (= b!4137580 b!4137604))

(assert (= start!393094 b!4137580))

(assert (= (and start!393094 ((_ is Cons!44849) input!3238)) b!4137600))

(assert (= b!4137586 b!4137589))

(assert (= start!393094 b!4137586))

(declare-fun m!4734105 () Bool)

(assert (=> b!4137602 m!4734105))

(declare-fun m!4734107 () Bool)

(assert (=> b!4137602 m!4734107))

(declare-fun m!4734109 () Bool)

(assert (=> b!4137602 m!4734109))

(assert (=> b!4137602 m!4734105))

(declare-fun m!4734111 () Bool)

(assert (=> b!4137602 m!4734111))

(declare-fun m!4734113 () Bool)

(assert (=> b!4137602 m!4734113))

(declare-fun m!4734115 () Bool)

(assert (=> b!4137602 m!4734115))

(declare-fun m!4734117 () Bool)

(assert (=> b!4137580 m!4734117))

(declare-fun m!4734119 () Bool)

(assert (=> b!4137580 m!4734119))

(declare-fun m!4734121 () Bool)

(assert (=> b!4137597 m!4734121))

(declare-fun m!4734123 () Bool)

(assert (=> b!4137582 m!4734123))

(declare-fun m!4734125 () Bool)

(assert (=> b!4137582 m!4734125))

(declare-fun m!4734127 () Bool)

(assert (=> b!4137593 m!4734127))

(declare-fun m!4734129 () Bool)

(assert (=> b!4137587 m!4734129))

(declare-fun m!4734131 () Bool)

(assert (=> b!4137587 m!4734131))

(declare-fun m!4734133 () Bool)

(assert (=> b!4137594 m!4734133))

(declare-fun m!4734135 () Bool)

(assert (=> b!4137595 m!4734135))

(declare-fun m!4734137 () Bool)

(assert (=> b!4137590 m!4734137))

(declare-fun m!4734139 () Bool)

(assert (=> b!4137585 m!4734139))

(declare-fun m!4734141 () Bool)

(assert (=> b!4137585 m!4734141))

(declare-fun m!4734143 () Bool)

(assert (=> b!4137584 m!4734143))

(declare-fun m!4734145 () Bool)

(assert (=> b!4137584 m!4734145))

(declare-fun m!4734147 () Bool)

(assert (=> b!4137584 m!4734147))

(declare-fun m!4734149 () Bool)

(assert (=> b!4137599 m!4734149))

(declare-fun m!4734151 () Bool)

(assert (=> b!4137603 m!4734151))

(declare-fun m!4734153 () Bool)

(assert (=> b!4137592 m!4734153))

(declare-fun m!4734155 () Bool)

(assert (=> b!4137592 m!4734155))

(declare-fun m!4734157 () Bool)

(assert (=> b!4137592 m!4734157))

(declare-fun m!4734159 () Bool)

(assert (=> b!4137586 m!4734159))

(declare-fun m!4734161 () Bool)

(assert (=> b!4137586 m!4734161))

(declare-fun m!4734163 () Bool)

(assert (=> b!4137583 m!4734163))

(declare-fun m!4734165 () Bool)

(assert (=> b!4137583 m!4734165))

(declare-fun m!4734167 () Bool)

(assert (=> b!4137583 m!4734167))

(declare-fun m!4734169 () Bool)

(assert (=> b!4137581 m!4734169))

(declare-fun m!4734171 () Bool)

(assert (=> b!4137581 m!4734171))

(declare-fun m!4734173 () Bool)

(assert (=> b!4137581 m!4734173))

(declare-fun m!4734175 () Bool)

(assert (=> b!4137581 m!4734175))

(declare-fun m!4734177 () Bool)

(assert (=> b!4137581 m!4734177))

(declare-fun m!4734179 () Bool)

(assert (=> b!4137581 m!4734179))

(declare-fun m!4734181 () Bool)

(assert (=> b!4137598 m!4734181))

(declare-fun m!4734183 () Bool)

(assert (=> b!4137588 m!4734183))

(check-sat (not b!4137598) b_and!321115 (not b!4137581) (not b_next!118381) b_and!321117 (not b!4137600) (not b!4137596) (not b!4137586) (not b!4137594) (not b_next!118387) (not b!4137592) (not b!4137597) b_and!321113 (not b!4137583) b_and!321123 (not b_next!118379) (not b!4137584) b_and!321121 b_and!321119 (not b!4137588) (not b!4137587) (not b_next!118389) (not b!4137599) (not b!4137603) (not b!4137585) (not b_next!118385) (not b!4137601) (not b!4137580) tp_is_empty!21449 (not b!4137602) (not b!4137582) (not b_next!118383) (not b!4137590) (not b!4137593) (not b!4137595))
(check-sat b_and!321115 b_and!321123 (not b_next!118379) (not b_next!118389) (not b_next!118381) (not b_next!118385) b_and!321117 (not b_next!118387) (not b_next!118383) b_and!321113 b_and!321121 b_and!321119)
(get-model)

(declare-fun b!4137679 () Bool)

(declare-fun e!2567284 () Int)

(assert (=> b!4137679 (= e!2567284 (- 1))))

(declare-fun b!4137678 () Bool)

(assert (=> b!4137678 (= e!2567284 (+ 1 (getIndex!704 (t!342107 rules!3756) rBis!149)))))

(declare-fun b!4137676 () Bool)

(declare-fun e!2567283 () Int)

(assert (=> b!4137676 (= e!2567283 0)))

(declare-fun b!4137677 () Bool)

(assert (=> b!4137677 (= e!2567283 e!2567284)))

(declare-fun c!709525 () Bool)

(assert (=> b!4137677 (= c!709525 (and ((_ is Cons!44850) rules!3756) (not (= (h!50270 rules!3756) rBis!149))))))

(declare-fun d!1225224 () Bool)

(declare-fun lt!1475323 () Int)

(assert (=> d!1225224 (>= lt!1475323 0)))

(assert (=> d!1225224 (= lt!1475323 e!2567283)))

(declare-fun c!709526 () Bool)

(assert (=> d!1225224 (= c!709526 (and ((_ is Cons!44850) rules!3756) (= (h!50270 rules!3756) rBis!149)))))

(assert (=> d!1225224 (contains!9038 rules!3756 rBis!149)))

(assert (=> d!1225224 (= (getIndex!704 rules!3756 rBis!149) lt!1475323)))

(assert (= (and d!1225224 c!709526) b!4137676))

(assert (= (and d!1225224 (not c!709526)) b!4137677))

(assert (= (and b!4137677 c!709525) b!4137678))

(assert (= (and b!4137677 (not c!709525)) b!4137679))

(declare-fun m!4734227 () Bool)

(assert (=> b!4137678 m!4734227))

(assert (=> d!1225224 m!4734149))

(assert (=> b!4137585 d!1225224))

(declare-fun b!4137687 () Bool)

(declare-fun e!2567288 () Int)

(assert (=> b!4137687 (= e!2567288 (- 1))))

(declare-fun b!4137686 () Bool)

(assert (=> b!4137686 (= e!2567288 (+ 1 (getIndex!704 (t!342107 rules!3756) r!4008)))))

(declare-fun b!4137684 () Bool)

(declare-fun e!2567287 () Int)

(assert (=> b!4137684 (= e!2567287 0)))

(declare-fun b!4137685 () Bool)

(assert (=> b!4137685 (= e!2567287 e!2567288)))

(declare-fun c!709527 () Bool)

(assert (=> b!4137685 (= c!709527 (and ((_ is Cons!44850) rules!3756) (not (= (h!50270 rules!3756) r!4008))))))

(declare-fun d!1225230 () Bool)

(declare-fun lt!1475325 () Int)

(assert (=> d!1225230 (>= lt!1475325 0)))

(assert (=> d!1225230 (= lt!1475325 e!2567287)))

(declare-fun c!709528 () Bool)

(assert (=> d!1225230 (= c!709528 (and ((_ is Cons!44850) rules!3756) (= (h!50270 rules!3756) r!4008)))))

(assert (=> d!1225230 (contains!9038 rules!3756 r!4008)))

(assert (=> d!1225230 (= (getIndex!704 rules!3756 r!4008) lt!1475325)))

(assert (= (and d!1225230 c!709528) b!4137684))

(assert (= (and d!1225230 (not c!709528)) b!4137685))

(assert (= (and b!4137685 c!709527) b!4137686))

(assert (= (and b!4137685 (not c!709527)) b!4137687))

(declare-fun m!4734229 () Bool)

(assert (=> b!4137686 m!4734229))

(assert (=> d!1225230 m!4734121))

(assert (=> b!4137585 d!1225230))

(declare-fun d!1225232 () Bool)

(assert (=> d!1225232 (= (inv!59454 (tag!8218 (h!50270 rules!3756))) (= (mod (str.len (value!230256 (tag!8218 (h!50270 rules!3756)))) 2) 0))))

(assert (=> b!4137587 d!1225232))

(declare-fun d!1225240 () Bool)

(declare-fun res!1692294 () Bool)

(declare-fun e!2567300 () Bool)

(assert (=> d!1225240 (=> (not res!1692294) (not e!2567300))))

(declare-fun semiInverseModEq!3179 (Int Int) Bool)

(assert (=> d!1225240 (= res!1692294 (semiInverseModEq!3179 (toChars!9881 (transformation!7358 (h!50270 rules!3756))) (toValue!10022 (transformation!7358 (h!50270 rules!3756)))))))

(assert (=> d!1225240 (= (inv!59456 (transformation!7358 (h!50270 rules!3756))) e!2567300)))

(declare-fun b!4137701 () Bool)

(declare-fun equivClasses!3078 (Int Int) Bool)

(assert (=> b!4137701 (= e!2567300 (equivClasses!3078 (toChars!9881 (transformation!7358 (h!50270 rules!3756))) (toValue!10022 (transformation!7358 (h!50270 rules!3756)))))))

(assert (= (and d!1225240 res!1692294) b!4137701))

(declare-fun m!4734255 () Bool)

(assert (=> d!1225240 m!4734255))

(declare-fun m!4734257 () Bool)

(assert (=> b!4137701 m!4734257))

(assert (=> b!4137587 d!1225240))

(declare-fun d!1225250 () Bool)

(declare-fun lt!1475335 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6925 (List!44974) (InoxSet Rule!14516))

(assert (=> d!1225250 (= lt!1475335 (select (content!6925 rules!3756) r!4008))))

(declare-fun e!2567306 () Bool)

(assert (=> d!1225250 (= lt!1475335 e!2567306)))

(declare-fun res!1692300 () Bool)

(assert (=> d!1225250 (=> (not res!1692300) (not e!2567306))))

(assert (=> d!1225250 (= res!1692300 ((_ is Cons!44850) rules!3756))))

(assert (=> d!1225250 (= (contains!9038 rules!3756 r!4008) lt!1475335)))

(declare-fun b!4137706 () Bool)

(declare-fun e!2567305 () Bool)

(assert (=> b!4137706 (= e!2567306 e!2567305)))

(declare-fun res!1692299 () Bool)

(assert (=> b!4137706 (=> res!1692299 e!2567305)))

(assert (=> b!4137706 (= res!1692299 (= (h!50270 rules!3756) r!4008))))

(declare-fun b!4137707 () Bool)

(assert (=> b!4137707 (= e!2567305 (contains!9038 (t!342107 rules!3756) r!4008))))

(assert (= (and d!1225250 res!1692300) b!4137706))

(assert (= (and b!4137706 (not res!1692299)) b!4137707))

(declare-fun m!4734259 () Bool)

(assert (=> d!1225250 m!4734259))

(declare-fun m!4734261 () Bool)

(assert (=> d!1225250 m!4734261))

(declare-fun m!4734263 () Bool)

(assert (=> b!4137707 m!4734263))

(assert (=> b!4137597 d!1225250))

(declare-fun d!1225252 () Bool)

(assert (=> d!1225252 (= (inv!59454 (tag!8218 rBis!149)) (= (mod (str.len (value!230256 (tag!8218 rBis!149))) 2) 0))))

(assert (=> b!4137586 d!1225252))

(declare-fun d!1225254 () Bool)

(declare-fun res!1692301 () Bool)

(declare-fun e!2567307 () Bool)

(assert (=> d!1225254 (=> (not res!1692301) (not e!2567307))))

(assert (=> d!1225254 (= res!1692301 (semiInverseModEq!3179 (toChars!9881 (transformation!7358 rBis!149)) (toValue!10022 (transformation!7358 rBis!149))))))

(assert (=> d!1225254 (= (inv!59456 (transformation!7358 rBis!149)) e!2567307)))

(declare-fun b!4137708 () Bool)

(assert (=> b!4137708 (= e!2567307 (equivClasses!3078 (toChars!9881 (transformation!7358 rBis!149)) (toValue!10022 (transformation!7358 rBis!149))))))

(assert (= (and d!1225254 res!1692301) b!4137708))

(declare-fun m!4734265 () Bool)

(assert (=> d!1225254 m!4734265))

(declare-fun m!4734267 () Bool)

(assert (=> b!4137708 m!4734267))

(assert (=> b!4137586 d!1225254))

(declare-fun d!1225256 () Bool)

(declare-fun lt!1475336 () Bool)

(assert (=> d!1225256 (= lt!1475336 (select (content!6925 rules!3756) rBis!149))))

(declare-fun e!2567309 () Bool)

(assert (=> d!1225256 (= lt!1475336 e!2567309)))

(declare-fun res!1692303 () Bool)

(assert (=> d!1225256 (=> (not res!1692303) (not e!2567309))))

(assert (=> d!1225256 (= res!1692303 ((_ is Cons!44850) rules!3756))))

(assert (=> d!1225256 (= (contains!9038 rules!3756 rBis!149) lt!1475336)))

(declare-fun b!4137709 () Bool)

(declare-fun e!2567308 () Bool)

(assert (=> b!4137709 (= e!2567309 e!2567308)))

(declare-fun res!1692302 () Bool)

(assert (=> b!4137709 (=> res!1692302 e!2567308)))

(assert (=> b!4137709 (= res!1692302 (= (h!50270 rules!3756) rBis!149))))

(declare-fun b!4137710 () Bool)

(assert (=> b!4137710 (= e!2567308 (contains!9038 (t!342107 rules!3756) rBis!149))))

(assert (= (and d!1225256 res!1692303) b!4137709))

(assert (= (and b!4137709 (not res!1692302)) b!4137710))

(assert (=> d!1225256 m!4734259))

(declare-fun m!4734269 () Bool)

(assert (=> d!1225256 m!4734269))

(declare-fun m!4734271 () Bool)

(assert (=> b!4137710 m!4734271))

(assert (=> b!4137599 d!1225256))

(declare-fun b!4137721 () Bool)

(declare-fun e!2567318 () Bool)

(declare-fun tail!6523 (List!44973) List!44973)

(assert (=> b!4137721 (= e!2567318 (isPrefix!4293 (tail!6523 lt!1475304) (tail!6523 input!3238)))))

(declare-fun b!4137720 () Bool)

(declare-fun res!1692315 () Bool)

(assert (=> b!4137720 (=> (not res!1692315) (not e!2567318))))

(declare-fun head!8728 (List!44973) C!24712)

(assert (=> b!4137720 (= res!1692315 (= (head!8728 lt!1475304) (head!8728 input!3238)))))

(declare-fun b!4137719 () Bool)

(declare-fun e!2567317 () Bool)

(assert (=> b!4137719 (= e!2567317 e!2567318)))

(declare-fun res!1692313 () Bool)

(assert (=> b!4137719 (=> (not res!1692313) (not e!2567318))))

(assert (=> b!4137719 (= res!1692313 (not ((_ is Nil!44849) input!3238)))))

(declare-fun b!4137722 () Bool)

(declare-fun e!2567316 () Bool)

(assert (=> b!4137722 (= e!2567316 (>= (size!33207 input!3238) (size!33207 lt!1475304)))))

(declare-fun d!1225258 () Bool)

(assert (=> d!1225258 e!2567316))

(declare-fun res!1692314 () Bool)

(assert (=> d!1225258 (=> res!1692314 e!2567316)))

(declare-fun lt!1475339 () Bool)

(assert (=> d!1225258 (= res!1692314 (not lt!1475339))))

(assert (=> d!1225258 (= lt!1475339 e!2567317)))

(declare-fun res!1692312 () Bool)

(assert (=> d!1225258 (=> res!1692312 e!2567317)))

(assert (=> d!1225258 (= res!1692312 ((_ is Nil!44849) lt!1475304))))

(assert (=> d!1225258 (= (isPrefix!4293 lt!1475304 input!3238) lt!1475339)))

(assert (= (and d!1225258 (not res!1692312)) b!4137719))

(assert (= (and b!4137719 res!1692313) b!4137720))

(assert (= (and b!4137720 res!1692315) b!4137721))

(assert (= (and d!1225258 (not res!1692314)) b!4137722))

(declare-fun m!4734273 () Bool)

(assert (=> b!4137721 m!4734273))

(declare-fun m!4734275 () Bool)

(assert (=> b!4137721 m!4734275))

(assert (=> b!4137721 m!4734273))

(assert (=> b!4137721 m!4734275))

(declare-fun m!4734277 () Bool)

(assert (=> b!4137721 m!4734277))

(declare-fun m!4734279 () Bool)

(assert (=> b!4137720 m!4734279))

(declare-fun m!4734281 () Bool)

(assert (=> b!4137720 m!4734281))

(declare-fun m!4734283 () Bool)

(assert (=> b!4137722 m!4734283))

(declare-fun m!4734285 () Bool)

(assert (=> b!4137722 m!4734285))

(assert (=> b!4137588 d!1225258))

(declare-fun d!1225260 () Bool)

(declare-fun res!1692320 () Bool)

(declare-fun e!2567321 () Bool)

(assert (=> d!1225260 (=> (not res!1692320) (not e!2567321))))

(declare-fun validRegex!5523 (Regex!12263) Bool)

(assert (=> d!1225260 (= res!1692320 (validRegex!5523 (regex!7358 r!4008)))))

(assert (=> d!1225260 (= (ruleValid!3164 thiss!25645 r!4008) e!2567321)))

(declare-fun b!4137727 () Bool)

(declare-fun res!1692321 () Bool)

(assert (=> b!4137727 (=> (not res!1692321) (not e!2567321))))

(declare-fun nullable!4315 (Regex!12263) Bool)

(assert (=> b!4137727 (= res!1692321 (not (nullable!4315 (regex!7358 r!4008))))))

(declare-fun b!4137728 () Bool)

(assert (=> b!4137728 (= e!2567321 (not (= (tag!8218 r!4008) (String!51691 ""))))))

(assert (= (and d!1225260 res!1692320) b!4137727))

(assert (= (and b!4137727 res!1692321) b!4137728))

(declare-fun m!4734287 () Bool)

(assert (=> d!1225260 m!4734287))

(declare-fun m!4734289 () Bool)

(assert (=> b!4137727 m!4734289))

(assert (=> b!4137598 d!1225260))

(declare-fun d!1225262 () Bool)

(assert (=> d!1225262 (= (inv!59454 (tag!8218 r!4008)) (= (mod (str.len (value!230256 (tag!8218 r!4008))) 2) 0))))

(assert (=> b!4137580 d!1225262))

(declare-fun d!1225264 () Bool)

(declare-fun res!1692322 () Bool)

(declare-fun e!2567322 () Bool)

(assert (=> d!1225264 (=> (not res!1692322) (not e!2567322))))

(assert (=> d!1225264 (= res!1692322 (semiInverseModEq!3179 (toChars!9881 (transformation!7358 r!4008)) (toValue!10022 (transformation!7358 r!4008))))))

(assert (=> d!1225264 (= (inv!59456 (transformation!7358 r!4008)) e!2567322)))

(declare-fun b!4137729 () Bool)

(assert (=> b!4137729 (= e!2567322 (equivClasses!3078 (toChars!9881 (transformation!7358 r!4008)) (toValue!10022 (transformation!7358 r!4008))))))

(assert (= (and d!1225264 res!1692322) b!4137729))

(declare-fun m!4734291 () Bool)

(assert (=> d!1225264 m!4734291))

(declare-fun m!4734293 () Bool)

(assert (=> b!4137729 m!4734293))

(assert (=> b!4137580 d!1225264))

(declare-fun b!4137732 () Bool)

(declare-fun e!2567325 () Bool)

(assert (=> b!4137732 (= e!2567325 (isPrefix!4293 (tail!6523 p!2912) (tail!6523 input!3238)))))

(declare-fun b!4137731 () Bool)

(declare-fun res!1692326 () Bool)

(assert (=> b!4137731 (=> (not res!1692326) (not e!2567325))))

(assert (=> b!4137731 (= res!1692326 (= (head!8728 p!2912) (head!8728 input!3238)))))

(declare-fun b!4137730 () Bool)

(declare-fun e!2567324 () Bool)

(assert (=> b!4137730 (= e!2567324 e!2567325)))

(declare-fun res!1692324 () Bool)

(assert (=> b!4137730 (=> (not res!1692324) (not e!2567325))))

(assert (=> b!4137730 (= res!1692324 (not ((_ is Nil!44849) input!3238)))))

(declare-fun b!4137733 () Bool)

(declare-fun e!2567323 () Bool)

(assert (=> b!4137733 (= e!2567323 (>= (size!33207 input!3238) (size!33207 p!2912)))))

(declare-fun d!1225266 () Bool)

(assert (=> d!1225266 e!2567323))

(declare-fun res!1692325 () Bool)

(assert (=> d!1225266 (=> res!1692325 e!2567323)))

(declare-fun lt!1475340 () Bool)

(assert (=> d!1225266 (= res!1692325 (not lt!1475340))))

(assert (=> d!1225266 (= lt!1475340 e!2567324)))

(declare-fun res!1692323 () Bool)

(assert (=> d!1225266 (=> res!1692323 e!2567324)))

(assert (=> d!1225266 (= res!1692323 ((_ is Nil!44849) p!2912))))

(assert (=> d!1225266 (= (isPrefix!4293 p!2912 input!3238) lt!1475340)))

(assert (= (and d!1225266 (not res!1692323)) b!4137730))

(assert (= (and b!4137730 res!1692324) b!4137731))

(assert (= (and b!4137731 res!1692326) b!4137732))

(assert (= (and d!1225266 (not res!1692325)) b!4137733))

(declare-fun m!4734295 () Bool)

(assert (=> b!4137732 m!4734295))

(assert (=> b!4137732 m!4734275))

(assert (=> b!4137732 m!4734295))

(assert (=> b!4137732 m!4734275))

(declare-fun m!4734297 () Bool)

(assert (=> b!4137732 m!4734297))

(declare-fun m!4734299 () Bool)

(assert (=> b!4137731 m!4734299))

(assert (=> b!4137731 m!4734281))

(assert (=> b!4137733 m!4734283))

(assert (=> b!4137733 m!4734175))

(assert (=> b!4137590 d!1225266))

(declare-fun d!1225268 () Bool)

(assert (=> d!1225268 (= (isEmpty!26729 p!2912) ((_ is Nil!44849) p!2912))))

(assert (=> b!4137603 d!1225268))

(declare-fun d!1225270 () Bool)

(declare-fun lt!1475343 () Int)

(assert (=> d!1225270 (= lt!1475343 (size!33207 (list!16423 lt!1475303)))))

(declare-fun size!33210 (Conc!13569) Int)

(assert (=> d!1225270 (= lt!1475343 (size!33210 (c!709510 lt!1475303)))))

(assert (=> d!1225270 (= (size!33208 lt!1475303) lt!1475343)))

(declare-fun bs!595161 () Bool)

(assert (= bs!595161 d!1225270))

(assert (=> bs!595161 m!4734167))

(assert (=> bs!595161 m!4734167))

(declare-fun m!4734301 () Bool)

(assert (=> bs!595161 m!4734301))

(declare-fun m!4734303 () Bool)

(assert (=> bs!595161 m!4734303))

(assert (=> b!4137592 d!1225270))

(declare-fun d!1225272 () Bool)

(declare-fun lt!1475346 () BalanceConc!26732)

(assert (=> d!1225272 (= (list!16423 lt!1475346) (originalCharacters!7854 (_1!24755 lt!1475301)))))

(declare-fun dynLambda!19273 (Int TokenValue!7588) BalanceConc!26732)

(assert (=> d!1225272 (= lt!1475346 (dynLambda!19273 (toChars!9881 (transformation!7358 (rule!10460 (_1!24755 lt!1475301)))) (value!230257 (_1!24755 lt!1475301))))))

(assert (=> d!1225272 (= (charsOf!4957 (_1!24755 lt!1475301)) lt!1475346)))

(declare-fun b_lambda!121603 () Bool)

(assert (=> (not b_lambda!121603) (not d!1225272)))

(declare-fun t!342121 () Bool)

(declare-fun tb!248367 () Bool)

(assert (=> (and b!4137591 (= (toChars!9881 (transformation!7358 (h!50270 rules!3756))) (toChars!9881 (transformation!7358 (rule!10460 (_1!24755 lt!1475301))))) t!342121) tb!248367))

(declare-fun b!4137738 () Bool)

(declare-fun e!2567328 () Bool)

(declare-fun tp!1261244 () Bool)

(declare-fun inv!59459 (Conc!13569) Bool)

(assert (=> b!4137738 (= e!2567328 (and (inv!59459 (c!709510 (dynLambda!19273 (toChars!9881 (transformation!7358 (rule!10460 (_1!24755 lt!1475301)))) (value!230257 (_1!24755 lt!1475301))))) tp!1261244))))

(declare-fun result!301968 () Bool)

(declare-fun inv!59460 (BalanceConc!26732) Bool)

(assert (=> tb!248367 (= result!301968 (and (inv!59460 (dynLambda!19273 (toChars!9881 (transformation!7358 (rule!10460 (_1!24755 lt!1475301)))) (value!230257 (_1!24755 lt!1475301)))) e!2567328))))

(assert (= tb!248367 b!4137738))

(declare-fun m!4734305 () Bool)

(assert (=> b!4137738 m!4734305))

(declare-fun m!4734307 () Bool)

(assert (=> tb!248367 m!4734307))

(assert (=> d!1225272 t!342121))

(declare-fun b_and!321137 () Bool)

(assert (= b_and!321115 (and (=> t!342121 result!301968) b_and!321137)))

(declare-fun tb!248369 () Bool)

(declare-fun t!342123 () Bool)

(assert (=> (and b!4137589 (= (toChars!9881 (transformation!7358 rBis!149)) (toChars!9881 (transformation!7358 (rule!10460 (_1!24755 lt!1475301))))) t!342123) tb!248369))

(declare-fun result!301972 () Bool)

(assert (= result!301972 result!301968))

(assert (=> d!1225272 t!342123))

(declare-fun b_and!321139 () Bool)

(assert (= b_and!321119 (and (=> t!342123 result!301972) b_and!321139)))

(declare-fun tb!248371 () Bool)

(declare-fun t!342125 () Bool)

(assert (=> (and b!4137604 (= (toChars!9881 (transformation!7358 r!4008)) (toChars!9881 (transformation!7358 (rule!10460 (_1!24755 lt!1475301))))) t!342125) tb!248371))

(declare-fun result!301974 () Bool)

(assert (= result!301974 result!301968))

(assert (=> d!1225272 t!342125))

(declare-fun b_and!321141 () Bool)

(assert (= b_and!321123 (and (=> t!342125 result!301974) b_and!321141)))

(declare-fun m!4734309 () Bool)

(assert (=> d!1225272 m!4734309))

(declare-fun m!4734311 () Bool)

(assert (=> d!1225272 m!4734311))

(assert (=> b!4137592 d!1225272))

(declare-fun d!1225274 () Bool)

(assert (=> d!1225274 (= (get!14632 lt!1475296) (v!40293 lt!1475296))))

(assert (=> b!4137592 d!1225274))

(declare-fun d!1225276 () Bool)

(declare-fun lt!1475349 () List!44973)

(assert (=> d!1225276 (= (++!11602 p!2912 lt!1475349) input!3238)))

(declare-fun e!2567331 () List!44973)

(assert (=> d!1225276 (= lt!1475349 e!2567331)))

(declare-fun c!709532 () Bool)

(assert (=> d!1225276 (= c!709532 ((_ is Cons!44849) p!2912))))

(assert (=> d!1225276 (>= (size!33207 input!3238) (size!33207 p!2912))))

(assert (=> d!1225276 (= (getSuffix!2620 input!3238 p!2912) lt!1475349)))

(declare-fun b!4137743 () Bool)

(assert (=> b!4137743 (= e!2567331 (getSuffix!2620 (tail!6523 input!3238) (t!342106 p!2912)))))

(declare-fun b!4137744 () Bool)

(assert (=> b!4137744 (= e!2567331 input!3238)))

(assert (= (and d!1225276 c!709532) b!4137743))

(assert (= (and d!1225276 (not c!709532)) b!4137744))

(declare-fun m!4734313 () Bool)

(assert (=> d!1225276 m!4734313))

(assert (=> d!1225276 m!4734283))

(assert (=> d!1225276 m!4734175))

(assert (=> b!4137743 m!4734275))

(assert (=> b!4137743 m!4734275))

(declare-fun m!4734315 () Bool)

(assert (=> b!4137743 m!4734315))

(assert (=> b!4137581 d!1225276))

(declare-fun b!4137763 () Bool)

(declare-fun res!1692345 () Bool)

(declare-fun e!2567338 () Bool)

(assert (=> b!4137763 (=> (not res!1692345) (not e!2567338))))

(declare-fun lt!1475362 () Option!9664)

(assert (=> b!4137763 (= res!1692345 (= (value!230257 (_1!24755 (get!14632 lt!1475362))) (apply!10431 (transformation!7358 (rule!10460 (_1!24755 (get!14632 lt!1475362)))) (seqFromList!5475 (originalCharacters!7854 (_1!24755 (get!14632 lt!1475362)))))))))

(declare-fun b!4137764 () Bool)

(declare-fun res!1692344 () Bool)

(assert (=> b!4137764 (=> (not res!1692344) (not e!2567338))))

(assert (=> b!4137764 (= res!1692344 (= (list!16423 (charsOf!4957 (_1!24755 (get!14632 lt!1475362)))) (originalCharacters!7854 (_1!24755 (get!14632 lt!1475362)))))))

(declare-fun b!4137765 () Bool)

(declare-fun e!2567340 () Bool)

(assert (=> b!4137765 (= e!2567340 e!2567338)))

(declare-fun res!1692343 () Bool)

(assert (=> b!4137765 (=> (not res!1692343) (not e!2567338))))

(declare-fun isDefined!7270 (Option!9664) Bool)

(assert (=> b!4137765 (= res!1692343 (isDefined!7270 lt!1475362))))

(declare-fun b!4137766 () Bool)

(declare-fun e!2567339 () Option!9664)

(declare-fun lt!1475360 () Option!9664)

(declare-fun lt!1475361 () Option!9664)

(assert (=> b!4137766 (= e!2567339 (ite (and ((_ is None!9663) lt!1475360) ((_ is None!9663) lt!1475361)) None!9663 (ite ((_ is None!9663) lt!1475361) lt!1475360 (ite ((_ is None!9663) lt!1475360) lt!1475361 (ite (>= (size!33206 (_1!24755 (v!40293 lt!1475360))) (size!33206 (_1!24755 (v!40293 lt!1475361)))) lt!1475360 lt!1475361)))))))

(declare-fun call!290458 () Option!9664)

(assert (=> b!4137766 (= lt!1475360 call!290458)))

(assert (=> b!4137766 (= lt!1475361 (maxPrefix!4137 thiss!25645 (t!342107 rules!3756) input!3238))))

(declare-fun b!4137767 () Bool)

(assert (=> b!4137767 (= e!2567338 (contains!9038 rules!3756 (rule!10460 (_1!24755 (get!14632 lt!1475362)))))))

(declare-fun b!4137768 () Bool)

(declare-fun res!1692342 () Bool)

(assert (=> b!4137768 (=> (not res!1692342) (not e!2567338))))

(assert (=> b!4137768 (= res!1692342 (< (size!33207 (_2!24755 (get!14632 lt!1475362))) (size!33207 input!3238)))))

(declare-fun b!4137769 () Bool)

(declare-fun res!1692341 () Bool)

(assert (=> b!4137769 (=> (not res!1692341) (not e!2567338))))

(assert (=> b!4137769 (= res!1692341 (= (++!11602 (list!16423 (charsOf!4957 (_1!24755 (get!14632 lt!1475362)))) (_2!24755 (get!14632 lt!1475362))) input!3238))))

(declare-fun d!1225278 () Bool)

(assert (=> d!1225278 e!2567340))

(declare-fun res!1692346 () Bool)

(assert (=> d!1225278 (=> res!1692346 e!2567340)))

(assert (=> d!1225278 (= res!1692346 (isEmpty!26728 lt!1475362))))

(assert (=> d!1225278 (= lt!1475362 e!2567339)))

(declare-fun c!709535 () Bool)

(assert (=> d!1225278 (= c!709535 (and ((_ is Cons!44850) rules!3756) ((_ is Nil!44850) (t!342107 rules!3756))))))

(declare-fun lt!1475363 () Unit!64157)

(declare-fun lt!1475364 () Unit!64157)

(assert (=> d!1225278 (= lt!1475363 lt!1475364)))

(assert (=> d!1225278 (isPrefix!4293 input!3238 input!3238)))

(assert (=> d!1225278 (= lt!1475364 (lemmaIsPrefixRefl!2776 input!3238 input!3238))))

(declare-fun rulesValidInductive!2730 (LexerInterface!6947 List!44974) Bool)

(assert (=> d!1225278 (rulesValidInductive!2730 thiss!25645 rules!3756)))

(assert (=> d!1225278 (= (maxPrefix!4137 thiss!25645 rules!3756 input!3238) lt!1475362)))

(declare-fun b!4137770 () Bool)

(declare-fun res!1692347 () Bool)

(assert (=> b!4137770 (=> (not res!1692347) (not e!2567338))))

(assert (=> b!4137770 (= res!1692347 (matchR!6092 (regex!7358 (rule!10460 (_1!24755 (get!14632 lt!1475362)))) (list!16423 (charsOf!4957 (_1!24755 (get!14632 lt!1475362))))))))

(declare-fun bm!290453 () Bool)

(assert (=> bm!290453 (= call!290458 (maxPrefixOneRule!3076 thiss!25645 (h!50270 rules!3756) input!3238))))

(declare-fun b!4137771 () Bool)

(assert (=> b!4137771 (= e!2567339 call!290458)))

(assert (= (and d!1225278 c!709535) b!4137771))

(assert (= (and d!1225278 (not c!709535)) b!4137766))

(assert (= (or b!4137771 b!4137766) bm!290453))

(assert (= (and d!1225278 (not res!1692346)) b!4137765))

(assert (= (and b!4137765 res!1692343) b!4137764))

(assert (= (and b!4137764 res!1692344) b!4137768))

(assert (= (and b!4137768 res!1692342) b!4137769))

(assert (= (and b!4137769 res!1692341) b!4137763))

(assert (= (and b!4137763 res!1692345) b!4137770))

(assert (= (and b!4137770 res!1692347) b!4137767))

(declare-fun m!4734317 () Bool)

(assert (=> b!4137767 m!4734317))

(declare-fun m!4734319 () Bool)

(assert (=> b!4137767 m!4734319))

(assert (=> b!4137768 m!4734317))

(declare-fun m!4734321 () Bool)

(assert (=> b!4137768 m!4734321))

(assert (=> b!4137768 m!4734283))

(assert (=> b!4137770 m!4734317))

(declare-fun m!4734323 () Bool)

(assert (=> b!4137770 m!4734323))

(assert (=> b!4137770 m!4734323))

(declare-fun m!4734325 () Bool)

(assert (=> b!4137770 m!4734325))

(assert (=> b!4137770 m!4734325))

(declare-fun m!4734327 () Bool)

(assert (=> b!4137770 m!4734327))

(assert (=> b!4137769 m!4734317))

(assert (=> b!4137769 m!4734323))

(assert (=> b!4137769 m!4734323))

(assert (=> b!4137769 m!4734325))

(assert (=> b!4137769 m!4734325))

(declare-fun m!4734329 () Bool)

(assert (=> b!4137769 m!4734329))

(declare-fun m!4734331 () Bool)

(assert (=> b!4137766 m!4734331))

(declare-fun m!4734333 () Bool)

(assert (=> b!4137765 m!4734333))

(declare-fun m!4734335 () Bool)

(assert (=> d!1225278 m!4734335))

(assert (=> d!1225278 m!4734123))

(assert (=> d!1225278 m!4734125))

(declare-fun m!4734337 () Bool)

(assert (=> d!1225278 m!4734337))

(assert (=> b!4137763 m!4734317))

(declare-fun m!4734339 () Bool)

(assert (=> b!4137763 m!4734339))

(assert (=> b!4137763 m!4734339))

(declare-fun m!4734341 () Bool)

(assert (=> b!4137763 m!4734341))

(declare-fun m!4734343 () Bool)

(assert (=> bm!290453 m!4734343))

(assert (=> b!4137764 m!4734317))

(assert (=> b!4137764 m!4734323))

(assert (=> b!4137764 m!4734323))

(assert (=> b!4137764 m!4734325))

(assert (=> b!4137581 d!1225278))

(declare-fun d!1225280 () Bool)

(declare-fun fromListB!2511 (List!44973) BalanceConc!26732)

(assert (=> d!1225280 (= (seqFromList!5475 p!2912) (fromListB!2511 p!2912))))

(declare-fun bs!595162 () Bool)

(assert (= bs!595162 d!1225280))

(declare-fun m!4734345 () Bool)

(assert (=> bs!595162 m!4734345))

(assert (=> b!4137581 d!1225280))

(declare-fun d!1225282 () Bool)

(declare-fun lt!1475367 () Int)

(assert (=> d!1225282 (>= lt!1475367 0)))

(declare-fun e!2567343 () Int)

(assert (=> d!1225282 (= lt!1475367 e!2567343)))

(declare-fun c!709538 () Bool)

(assert (=> d!1225282 (= c!709538 ((_ is Nil!44849) p!2912))))

(assert (=> d!1225282 (= (size!33207 p!2912) lt!1475367)))

(declare-fun b!4137776 () Bool)

(assert (=> b!4137776 (= e!2567343 0)))

(declare-fun b!4137777 () Bool)

(assert (=> b!4137777 (= e!2567343 (+ 1 (size!33207 (t!342106 p!2912))))))

(assert (= (and d!1225282 c!709538) b!4137776))

(assert (= (and d!1225282 (not c!709538)) b!4137777))

(declare-fun m!4734347 () Bool)

(assert (=> b!4137777 m!4734347))

(assert (=> b!4137581 d!1225282))

(declare-fun b!4137943 () Bool)

(declare-fun e!2567431 () Bool)

(assert (=> b!4137943 (= e!2567431 true)))

(declare-fun d!1225284 () Bool)

(assert (=> d!1225284 e!2567431))

(assert (= d!1225284 b!4137943))

(declare-fun order!23717 () Int)

(declare-fun order!23719 () Int)

(declare-fun lambda!128925 () Int)

(declare-fun dynLambda!19274 (Int Int) Int)

(declare-fun dynLambda!19275 (Int Int) Int)

(assert (=> b!4137943 (< (dynLambda!19274 order!23717 (toValue!10022 (transformation!7358 r!4008))) (dynLambda!19275 order!23719 lambda!128925))))

(declare-fun order!23721 () Int)

(declare-fun dynLambda!19276 (Int Int) Int)

(assert (=> b!4137943 (< (dynLambda!19276 order!23721 (toChars!9881 (transformation!7358 r!4008))) (dynLambda!19275 order!23719 lambda!128925))))

(declare-fun dynLambda!19277 (Int BalanceConc!26732) TokenValue!7588)

(assert (=> d!1225284 (= (list!16423 (dynLambda!19273 (toChars!9881 (transformation!7358 r!4008)) (dynLambda!19277 (toValue!10022 (transformation!7358 r!4008)) lt!1475297))) (list!16423 lt!1475297))))

(declare-fun lt!1475427 () Unit!64157)

(declare-fun ForallOf!962 (Int BalanceConc!26732) Unit!64157)

(assert (=> d!1225284 (= lt!1475427 (ForallOf!962 lambda!128925 lt!1475297))))

(assert (=> d!1225284 (= (lemmaSemiInverse!2216 (transformation!7358 r!4008) lt!1475297) lt!1475427)))

(declare-fun b_lambda!121615 () Bool)

(assert (=> (not b_lambda!121615) (not d!1225284)))

(declare-fun tb!248385 () Bool)

(declare-fun t!342139 () Bool)

(assert (=> (and b!4137591 (= (toChars!9881 (transformation!7358 (h!50270 rules!3756))) (toChars!9881 (transformation!7358 r!4008))) t!342139) tb!248385))

(declare-fun e!2567432 () Bool)

(declare-fun tp!1261287 () Bool)

(declare-fun b!4137944 () Bool)

(assert (=> b!4137944 (= e!2567432 (and (inv!59459 (c!709510 (dynLambda!19273 (toChars!9881 (transformation!7358 r!4008)) (dynLambda!19277 (toValue!10022 (transformation!7358 r!4008)) lt!1475297)))) tp!1261287))))

(declare-fun result!301994 () Bool)

(assert (=> tb!248385 (= result!301994 (and (inv!59460 (dynLambda!19273 (toChars!9881 (transformation!7358 r!4008)) (dynLambda!19277 (toValue!10022 (transformation!7358 r!4008)) lt!1475297))) e!2567432))))

(assert (= tb!248385 b!4137944))

(declare-fun m!4734493 () Bool)

(assert (=> b!4137944 m!4734493))

(declare-fun m!4734495 () Bool)

(assert (=> tb!248385 m!4734495))

(assert (=> d!1225284 t!342139))

(declare-fun b_and!321159 () Bool)

(assert (= b_and!321137 (and (=> t!342139 result!301994) b_and!321159)))

(declare-fun t!342141 () Bool)

(declare-fun tb!248387 () Bool)

(assert (=> (and b!4137589 (= (toChars!9881 (transformation!7358 rBis!149)) (toChars!9881 (transformation!7358 r!4008))) t!342141) tb!248387))

(declare-fun result!301996 () Bool)

(assert (= result!301996 result!301994))

(assert (=> d!1225284 t!342141))

(declare-fun b_and!321161 () Bool)

(assert (= b_and!321139 (and (=> t!342141 result!301996) b_and!321161)))

(declare-fun t!342143 () Bool)

(declare-fun tb!248389 () Bool)

(assert (=> (and b!4137604 (= (toChars!9881 (transformation!7358 r!4008)) (toChars!9881 (transformation!7358 r!4008))) t!342143) tb!248389))

(declare-fun result!301998 () Bool)

(assert (= result!301998 result!301994))

(assert (=> d!1225284 t!342143))

(declare-fun b_and!321163 () Bool)

(assert (= b_and!321141 (and (=> t!342143 result!301998) b_and!321163)))

(declare-fun b_lambda!121617 () Bool)

(assert (=> (not b_lambda!121617) (not d!1225284)))

(declare-fun tb!248391 () Bool)

(declare-fun t!342145 () Bool)

(assert (=> (and b!4137591 (= (toValue!10022 (transformation!7358 (h!50270 rules!3756))) (toValue!10022 (transformation!7358 r!4008))) t!342145) tb!248391))

(declare-fun result!302000 () Bool)

(declare-fun inv!21 (TokenValue!7588) Bool)

(assert (=> tb!248391 (= result!302000 (inv!21 (dynLambda!19277 (toValue!10022 (transformation!7358 r!4008)) lt!1475297)))))

(declare-fun m!4734497 () Bool)

(assert (=> tb!248391 m!4734497))

(assert (=> d!1225284 t!342145))

(declare-fun b_and!321165 () Bool)

(assert (= b_and!321113 (and (=> t!342145 result!302000) b_and!321165)))

(declare-fun t!342147 () Bool)

(declare-fun tb!248393 () Bool)

(assert (=> (and b!4137589 (= (toValue!10022 (transformation!7358 rBis!149)) (toValue!10022 (transformation!7358 r!4008))) t!342147) tb!248393))

(declare-fun result!302004 () Bool)

(assert (= result!302004 result!302000))

(assert (=> d!1225284 t!342147))

(declare-fun b_and!321167 () Bool)

(assert (= b_and!321117 (and (=> t!342147 result!302004) b_and!321167)))

(declare-fun t!342149 () Bool)

(declare-fun tb!248395 () Bool)

(assert (=> (and b!4137604 (= (toValue!10022 (transformation!7358 r!4008)) (toValue!10022 (transformation!7358 r!4008))) t!342149) tb!248395))

(declare-fun result!302006 () Bool)

(assert (= result!302006 result!302000))

(assert (=> d!1225284 t!342149))

(declare-fun b_and!321169 () Bool)

(assert (= b_and!321121 (and (=> t!342149 result!302006) b_and!321169)))

(declare-fun m!4734499 () Bool)

(assert (=> d!1225284 m!4734499))

(declare-fun m!4734501 () Bool)

(assert (=> d!1225284 m!4734501))

(assert (=> d!1225284 m!4734501))

(declare-fun m!4734503 () Bool)

(assert (=> d!1225284 m!4734503))

(assert (=> d!1225284 m!4734503))

(declare-fun m!4734505 () Bool)

(assert (=> d!1225284 m!4734505))

(declare-fun m!4734507 () Bool)

(assert (=> d!1225284 m!4734507))

(assert (=> b!4137581 d!1225284))

(declare-fun d!1225338 () Bool)

(assert (=> d!1225338 (= (apply!10431 (transformation!7358 r!4008) lt!1475297) (dynLambda!19277 (toValue!10022 (transformation!7358 r!4008)) lt!1475297))))

(declare-fun b_lambda!121619 () Bool)

(assert (=> (not b_lambda!121619) (not d!1225338)))

(assert (=> d!1225338 t!342145))

(declare-fun b_and!321171 () Bool)

(assert (= b_and!321165 (and (=> t!342145 result!302000) b_and!321171)))

(assert (=> d!1225338 t!342147))

(declare-fun b_and!321173 () Bool)

(assert (= b_and!321167 (and (=> t!342147 result!302004) b_and!321173)))

(assert (=> d!1225338 t!342149))

(declare-fun b_and!321175 () Bool)

(assert (= b_and!321169 (and (=> t!342149 result!302006) b_and!321175)))

(assert (=> d!1225338 m!4734501))

(assert (=> b!4137581 d!1225338))

(declare-fun d!1225340 () Bool)

(declare-fun lt!1475428 () Bool)

(assert (=> d!1225340 (= lt!1475428 (select (content!6925 (tail!6521 rules!3756)) r!4008))))

(declare-fun e!2567437 () Bool)

(assert (=> d!1225340 (= lt!1475428 e!2567437)))

(declare-fun res!1692417 () Bool)

(assert (=> d!1225340 (=> (not res!1692417) (not e!2567437))))

(assert (=> d!1225340 (= res!1692417 ((_ is Cons!44850) (tail!6521 rules!3756)))))

(assert (=> d!1225340 (= (contains!9038 (tail!6521 rules!3756) r!4008) lt!1475428)))

(declare-fun b!4137947 () Bool)

(declare-fun e!2567436 () Bool)

(assert (=> b!4137947 (= e!2567437 e!2567436)))

(declare-fun res!1692416 () Bool)

(assert (=> b!4137947 (=> res!1692416 e!2567436)))

(assert (=> b!4137947 (= res!1692416 (= (h!50270 (tail!6521 rules!3756)) r!4008))))

(declare-fun b!4137948 () Bool)

(assert (=> b!4137948 (= e!2567436 (contains!9038 (t!342107 (tail!6521 rules!3756)) r!4008))))

(assert (= (and d!1225340 res!1692417) b!4137947))

(assert (= (and b!4137947 (not res!1692416)) b!4137948))

(assert (=> d!1225340 m!4734105))

(declare-fun m!4734509 () Bool)

(assert (=> d!1225340 m!4734509))

(declare-fun m!4734511 () Bool)

(assert (=> d!1225340 m!4734511))

(declare-fun m!4734513 () Bool)

(assert (=> b!4137948 m!4734513))

(assert (=> b!4137602 d!1225340))

(declare-fun d!1225342 () Bool)

(assert (=> d!1225342 (= (tail!6521 rules!3756) (t!342107 rules!3756))))

(assert (=> b!4137602 d!1225342))

(declare-fun d!1225344 () Bool)

(assert (=> d!1225344 (contains!9038 (tail!6521 rules!3756) r!4008)))

(declare-fun lt!1475431 () Unit!64157)

(declare-fun choose!25297 (List!44974 Rule!14516 Rule!14516) Unit!64157)

(assert (=> d!1225344 (= lt!1475431 (choose!25297 rules!3756 rBis!149 r!4008))))

(declare-fun e!2567440 () Bool)

(assert (=> d!1225344 e!2567440))

(declare-fun res!1692420 () Bool)

(assert (=> d!1225344 (=> (not res!1692420) (not e!2567440))))

(assert (=> d!1225344 (= res!1692420 (contains!9038 rules!3756 rBis!149))))

(assert (=> d!1225344 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!62 rules!3756 rBis!149 r!4008) lt!1475431)))

(declare-fun b!4137951 () Bool)

(assert (=> b!4137951 (= e!2567440 (contains!9038 rules!3756 r!4008))))

(assert (= (and d!1225344 res!1692420) b!4137951))

(assert (=> d!1225344 m!4734105))

(assert (=> d!1225344 m!4734105))

(assert (=> d!1225344 m!4734107))

(declare-fun m!4734515 () Bool)

(assert (=> d!1225344 m!4734515))

(assert (=> d!1225344 m!4734149))

(assert (=> b!4137951 m!4734121))

(assert (=> b!4137602 d!1225344))

(declare-fun d!1225346 () Bool)

(assert (=> d!1225346 (not (= rBis!149 r!4008))))

(declare-fun lt!1475434 () Unit!64157)

(declare-fun choose!25298 (LexerInterface!6947 List!44974 Rule!14516 Rule!14516) Unit!64157)

(assert (=> d!1225346 (= lt!1475434 (choose!25298 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1225346 (contains!9038 rules!3756 rBis!149)))

(assert (=> d!1225346 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!56 thiss!25645 rules!3756 rBis!149 r!4008) lt!1475434)))

(declare-fun bs!595167 () Bool)

(assert (= bs!595167 d!1225346))

(declare-fun m!4734517 () Bool)

(assert (=> bs!595167 m!4734517))

(assert (=> bs!595167 m!4734149))

(assert (=> b!4137602 d!1225346))

(declare-fun b!4137970 () Bool)

(declare-fun e!2567451 () Bool)

(declare-fun lt!1475445 () Option!9664)

(assert (=> b!4137970 (= e!2567451 (= (size!33206 (_1!24755 (get!14632 lt!1475445))) (size!33207 (originalCharacters!7854 (_1!24755 (get!14632 lt!1475445))))))))

(declare-fun b!4137971 () Bool)

(declare-fun e!2567449 () Bool)

(declare-datatypes ((tuple2!43246 0))(
  ( (tuple2!43247 (_1!24757 List!44973) (_2!24757 List!44973)) )
))
(declare-fun findLongestMatchInner!1519 (Regex!12263 List!44973 Int List!44973 List!44973 Int) tuple2!43246)

(assert (=> b!4137971 (= e!2567449 (matchR!6092 (regex!7358 rBis!149) (_1!24757 (findLongestMatchInner!1519 (regex!7358 rBis!149) Nil!44849 (size!33207 Nil!44849) input!3238 input!3238 (size!33207 input!3238)))))))

(declare-fun b!4137972 () Bool)

(declare-fun e!2567450 () Bool)

(assert (=> b!4137972 (= e!2567450 e!2567451)))

(declare-fun res!1692435 () Bool)

(assert (=> b!4137972 (=> (not res!1692435) (not e!2567451))))

(assert (=> b!4137972 (= res!1692435 (matchR!6092 (regex!7358 rBis!149) (list!16423 (charsOf!4957 (_1!24755 (get!14632 lt!1475445))))))))

(declare-fun b!4137973 () Bool)

(declare-fun res!1692440 () Bool)

(assert (=> b!4137973 (=> (not res!1692440) (not e!2567451))))

(assert (=> b!4137973 (= res!1692440 (= (rule!10460 (_1!24755 (get!14632 lt!1475445))) rBis!149))))

(declare-fun d!1225348 () Bool)

(assert (=> d!1225348 e!2567450))

(declare-fun res!1692441 () Bool)

(assert (=> d!1225348 (=> res!1692441 e!2567450)))

(assert (=> d!1225348 (= res!1692441 (isEmpty!26728 lt!1475445))))

(declare-fun e!2567452 () Option!9664)

(assert (=> d!1225348 (= lt!1475445 e!2567452)))

(declare-fun c!709566 () Bool)

(declare-fun lt!1475449 () tuple2!43246)

(assert (=> d!1225348 (= c!709566 (isEmpty!26729 (_1!24757 lt!1475449)))))

(declare-fun findLongestMatch!1432 (Regex!12263 List!44973) tuple2!43246)

(assert (=> d!1225348 (= lt!1475449 (findLongestMatch!1432 (regex!7358 rBis!149) input!3238))))

(assert (=> d!1225348 (ruleValid!3164 thiss!25645 rBis!149)))

(assert (=> d!1225348 (= (maxPrefixOneRule!3076 thiss!25645 rBis!149 input!3238) lt!1475445)))

(declare-fun b!4137974 () Bool)

(assert (=> b!4137974 (= e!2567452 None!9663)))

(declare-fun b!4137975 () Bool)

(declare-fun res!1692438 () Bool)

(assert (=> b!4137975 (=> (not res!1692438) (not e!2567451))))

(assert (=> b!4137975 (= res!1692438 (< (size!33207 (_2!24755 (get!14632 lt!1475445))) (size!33207 input!3238)))))

(declare-fun b!4137976 () Bool)

(declare-fun res!1692439 () Bool)

(assert (=> b!4137976 (=> (not res!1692439) (not e!2567451))))

(assert (=> b!4137976 (= res!1692439 (= (++!11602 (list!16423 (charsOf!4957 (_1!24755 (get!14632 lt!1475445)))) (_2!24755 (get!14632 lt!1475445))) input!3238))))

(declare-fun b!4137977 () Bool)

(assert (=> b!4137977 (= e!2567452 (Some!9663 (tuple2!43243 (Token!13647 (apply!10431 (transformation!7358 rBis!149) (seqFromList!5475 (_1!24757 lt!1475449))) rBis!149 (size!33208 (seqFromList!5475 (_1!24757 lt!1475449))) (_1!24757 lt!1475449)) (_2!24757 lt!1475449))))))

(declare-fun lt!1475448 () Unit!64157)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1492 (Regex!12263 List!44973) Unit!64157)

(assert (=> b!4137977 (= lt!1475448 (longestMatchIsAcceptedByMatchOrIsEmpty!1492 (regex!7358 rBis!149) input!3238))))

(declare-fun res!1692437 () Bool)

(assert (=> b!4137977 (= res!1692437 (isEmpty!26729 (_1!24757 (findLongestMatchInner!1519 (regex!7358 rBis!149) Nil!44849 (size!33207 Nil!44849) input!3238 input!3238 (size!33207 input!3238)))))))

(assert (=> b!4137977 (=> res!1692437 e!2567449)))

(assert (=> b!4137977 e!2567449))

(declare-fun lt!1475447 () Unit!64157)

(assert (=> b!4137977 (= lt!1475447 lt!1475448)))

(declare-fun lt!1475446 () Unit!64157)

(assert (=> b!4137977 (= lt!1475446 (lemmaSemiInverse!2216 (transformation!7358 rBis!149) (seqFromList!5475 (_1!24757 lt!1475449))))))

(declare-fun b!4137978 () Bool)

(declare-fun res!1692436 () Bool)

(assert (=> b!4137978 (=> (not res!1692436) (not e!2567451))))

(assert (=> b!4137978 (= res!1692436 (= (value!230257 (_1!24755 (get!14632 lt!1475445))) (apply!10431 (transformation!7358 (rule!10460 (_1!24755 (get!14632 lt!1475445)))) (seqFromList!5475 (originalCharacters!7854 (_1!24755 (get!14632 lt!1475445)))))))))

(assert (= (and d!1225348 c!709566) b!4137974))

(assert (= (and d!1225348 (not c!709566)) b!4137977))

(assert (= (and b!4137977 (not res!1692437)) b!4137971))

(assert (= (and d!1225348 (not res!1692441)) b!4137972))

(assert (= (and b!4137972 res!1692435) b!4137976))

(assert (= (and b!4137976 res!1692439) b!4137975))

(assert (= (and b!4137975 res!1692438) b!4137973))

(assert (= (and b!4137973 res!1692440) b!4137978))

(assert (= (and b!4137978 res!1692436) b!4137970))

(declare-fun m!4734519 () Bool)

(assert (=> b!4137971 m!4734519))

(assert (=> b!4137971 m!4734283))

(assert (=> b!4137971 m!4734519))

(assert (=> b!4137971 m!4734283))

(declare-fun m!4734521 () Bool)

(assert (=> b!4137971 m!4734521))

(declare-fun m!4734523 () Bool)

(assert (=> b!4137971 m!4734523))

(declare-fun m!4734525 () Bool)

(assert (=> b!4137976 m!4734525))

(declare-fun m!4734527 () Bool)

(assert (=> b!4137976 m!4734527))

(assert (=> b!4137976 m!4734527))

(declare-fun m!4734529 () Bool)

(assert (=> b!4137976 m!4734529))

(assert (=> b!4137976 m!4734529))

(declare-fun m!4734531 () Bool)

(assert (=> b!4137976 m!4734531))

(assert (=> b!4137978 m!4734525))

(declare-fun m!4734533 () Bool)

(assert (=> b!4137978 m!4734533))

(assert (=> b!4137978 m!4734533))

(declare-fun m!4734535 () Bool)

(assert (=> b!4137978 m!4734535))

(declare-fun m!4734537 () Bool)

(assert (=> d!1225348 m!4734537))

(declare-fun m!4734539 () Bool)

(assert (=> d!1225348 m!4734539))

(declare-fun m!4734541 () Bool)

(assert (=> d!1225348 m!4734541))

(assert (=> d!1225348 m!4734145))

(assert (=> b!4137970 m!4734525))

(declare-fun m!4734543 () Bool)

(assert (=> b!4137970 m!4734543))

(assert (=> b!4137972 m!4734525))

(assert (=> b!4137972 m!4734527))

(assert (=> b!4137972 m!4734527))

(assert (=> b!4137972 m!4734529))

(assert (=> b!4137972 m!4734529))

(declare-fun m!4734545 () Bool)

(assert (=> b!4137972 m!4734545))

(assert (=> b!4137973 m!4734525))

(assert (=> b!4137975 m!4734525))

(declare-fun m!4734547 () Bool)

(assert (=> b!4137975 m!4734547))

(assert (=> b!4137975 m!4734283))

(declare-fun m!4734549 () Bool)

(assert (=> b!4137977 m!4734549))

(declare-fun m!4734551 () Bool)

(assert (=> b!4137977 m!4734551))

(assert (=> b!4137977 m!4734519))

(assert (=> b!4137977 m!4734283))

(assert (=> b!4137977 m!4734549))

(declare-fun m!4734553 () Bool)

(assert (=> b!4137977 m!4734553))

(assert (=> b!4137977 m!4734519))

(assert (=> b!4137977 m!4734283))

(assert (=> b!4137977 m!4734521))

(assert (=> b!4137977 m!4734549))

(declare-fun m!4734555 () Bool)

(assert (=> b!4137977 m!4734555))

(assert (=> b!4137977 m!4734549))

(declare-fun m!4734557 () Bool)

(assert (=> b!4137977 m!4734557))

(declare-fun m!4734559 () Bool)

(assert (=> b!4137977 m!4734559))

(assert (=> b!4137602 d!1225348))

(declare-fun d!1225350 () Bool)

(assert (=> d!1225350 (= (isEmpty!26728 lt!1475296) (not ((_ is Some!9663) lt!1475296)))))

(assert (=> b!4137602 d!1225350))

(declare-fun b!4137987 () Bool)

(declare-fun e!2567457 () List!44973)

(assert (=> b!4137987 (= e!2567457 lt!1475294)))

(declare-fun d!1225352 () Bool)

(declare-fun e!2567458 () Bool)

(assert (=> d!1225352 e!2567458))

(declare-fun res!1692446 () Bool)

(assert (=> d!1225352 (=> (not res!1692446) (not e!2567458))))

(declare-fun lt!1475452 () List!44973)

(declare-fun content!6927 (List!44973) (InoxSet C!24712))

(assert (=> d!1225352 (= res!1692446 (= (content!6927 lt!1475452) ((_ map or) (content!6927 p!2912) (content!6927 lt!1475294))))))

(assert (=> d!1225352 (= lt!1475452 e!2567457)))

(declare-fun c!709569 () Bool)

(assert (=> d!1225352 (= c!709569 ((_ is Nil!44849) p!2912))))

(assert (=> d!1225352 (= (++!11602 p!2912 lt!1475294) lt!1475452)))

(declare-fun b!4137988 () Bool)

(assert (=> b!4137988 (= e!2567457 (Cons!44849 (h!50269 p!2912) (++!11602 (t!342106 p!2912) lt!1475294)))))

(declare-fun b!4137989 () Bool)

(declare-fun res!1692447 () Bool)

(assert (=> b!4137989 (=> (not res!1692447) (not e!2567458))))

(assert (=> b!4137989 (= res!1692447 (= (size!33207 lt!1475452) (+ (size!33207 p!2912) (size!33207 lt!1475294))))))

(declare-fun b!4137990 () Bool)

(assert (=> b!4137990 (= e!2567458 (or (not (= lt!1475294 Nil!44849)) (= lt!1475452 p!2912)))))

(assert (= (and d!1225352 c!709569) b!4137987))

(assert (= (and d!1225352 (not c!709569)) b!4137988))

(assert (= (and d!1225352 res!1692446) b!4137989))

(assert (= (and b!4137989 res!1692447) b!4137990))

(declare-fun m!4734561 () Bool)

(assert (=> d!1225352 m!4734561))

(declare-fun m!4734563 () Bool)

(assert (=> d!1225352 m!4734563))

(declare-fun m!4734565 () Bool)

(assert (=> d!1225352 m!4734565))

(declare-fun m!4734567 () Bool)

(assert (=> b!4137988 m!4734567))

(declare-fun m!4734569 () Bool)

(assert (=> b!4137989 m!4734569))

(assert (=> b!4137989 m!4734175))

(declare-fun m!4734571 () Bool)

(assert (=> b!4137989 m!4734571))

(assert (=> b!4137583 d!1225352))

(declare-fun d!1225354 () Bool)

(declare-fun lt!1475453 () List!44973)

(assert (=> d!1225354 (= (++!11602 lt!1475304 lt!1475453) input!3238)))

(declare-fun e!2567459 () List!44973)

(assert (=> d!1225354 (= lt!1475453 e!2567459)))

(declare-fun c!709570 () Bool)

(assert (=> d!1225354 (= c!709570 ((_ is Cons!44849) lt!1475304))))

(assert (=> d!1225354 (>= (size!33207 input!3238) (size!33207 lt!1475304))))

(assert (=> d!1225354 (= (getSuffix!2620 input!3238 lt!1475304) lt!1475453)))

(declare-fun b!4137991 () Bool)

(assert (=> b!4137991 (= e!2567459 (getSuffix!2620 (tail!6523 input!3238) (t!342106 lt!1475304)))))

(declare-fun b!4137992 () Bool)

(assert (=> b!4137992 (= e!2567459 input!3238)))

(assert (= (and d!1225354 c!709570) b!4137991))

(assert (= (and d!1225354 (not c!709570)) b!4137992))

(declare-fun m!4734573 () Bool)

(assert (=> d!1225354 m!4734573))

(assert (=> d!1225354 m!4734283))

(assert (=> d!1225354 m!4734285))

(assert (=> b!4137991 m!4734275))

(assert (=> b!4137991 m!4734275))

(declare-fun m!4734575 () Bool)

(assert (=> b!4137991 m!4734575))

(assert (=> b!4137583 d!1225354))

(declare-fun d!1225356 () Bool)

(declare-fun list!16425 (Conc!13569) List!44973)

(assert (=> d!1225356 (= (list!16423 lt!1475303) (list!16425 (c!709510 lt!1475303)))))

(declare-fun bs!595168 () Bool)

(assert (= bs!595168 d!1225356))

(declare-fun m!4734577 () Bool)

(assert (=> bs!595168 m!4734577))

(assert (=> b!4137583 d!1225356))

(declare-fun b!4138021 () Bool)

(declare-fun res!1692471 () Bool)

(declare-fun e!2567478 () Bool)

(assert (=> b!4138021 (=> res!1692471 e!2567478)))

(assert (=> b!4138021 (= res!1692471 (not ((_ is ElementMatch!12263) (regex!7358 r!4008))))))

(declare-fun e!2567476 () Bool)

(assert (=> b!4138021 (= e!2567476 e!2567478)))

(declare-fun bm!290459 () Bool)

(declare-fun call!290464 () Bool)

(assert (=> bm!290459 (= call!290464 (isEmpty!26729 p!2912))))

(declare-fun b!4138022 () Bool)

(declare-fun e!2567479 () Bool)

(declare-fun derivativeStep!3710 (Regex!12263 C!24712) Regex!12263)

(assert (=> b!4138022 (= e!2567479 (matchR!6092 (derivativeStep!3710 (regex!7358 r!4008) (head!8728 p!2912)) (tail!6523 p!2912)))))

(declare-fun b!4138024 () Bool)

(declare-fun e!2567474 () Bool)

(assert (=> b!4138024 (= e!2567474 (not (= (head!8728 p!2912) (c!709511 (regex!7358 r!4008)))))))

(declare-fun b!4138025 () Bool)

(declare-fun e!2567477 () Bool)

(assert (=> b!4138025 (= e!2567477 e!2567476)))

(declare-fun c!709578 () Bool)

(assert (=> b!4138025 (= c!709578 ((_ is EmptyLang!12263) (regex!7358 r!4008)))))

(declare-fun b!4138026 () Bool)

(declare-fun res!1692469 () Bool)

(assert (=> b!4138026 (=> res!1692469 e!2567474)))

(assert (=> b!4138026 (= res!1692469 (not (isEmpty!26729 (tail!6523 p!2912))))))

(declare-fun b!4138027 () Bool)

(declare-fun res!1692468 () Bool)

(assert (=> b!4138027 (=> res!1692468 e!2567478)))

(declare-fun e!2567480 () Bool)

(assert (=> b!4138027 (= res!1692468 e!2567480)))

(declare-fun res!1692467 () Bool)

(assert (=> b!4138027 (=> (not res!1692467) (not e!2567480))))

(declare-fun lt!1475456 () Bool)

(assert (=> b!4138027 (= res!1692467 lt!1475456)))

(declare-fun b!4138028 () Bool)

(assert (=> b!4138028 (= e!2567479 (nullable!4315 (regex!7358 r!4008)))))

(declare-fun b!4138029 () Bool)

(declare-fun res!1692465 () Bool)

(assert (=> b!4138029 (=> (not res!1692465) (not e!2567480))))

(assert (=> b!4138029 (= res!1692465 (isEmpty!26729 (tail!6523 p!2912)))))

(declare-fun b!4138030 () Bool)

(assert (=> b!4138030 (= e!2567477 (= lt!1475456 call!290464))))

(declare-fun b!4138031 () Bool)

(declare-fun res!1692470 () Bool)

(assert (=> b!4138031 (=> (not res!1692470) (not e!2567480))))

(assert (=> b!4138031 (= res!1692470 (not call!290464))))

(declare-fun b!4138032 () Bool)

(assert (=> b!4138032 (= e!2567476 (not lt!1475456))))

(declare-fun b!4138023 () Bool)

(declare-fun e!2567475 () Bool)

(assert (=> b!4138023 (= e!2567475 e!2567474)))

(declare-fun res!1692466 () Bool)

(assert (=> b!4138023 (=> res!1692466 e!2567474)))

(assert (=> b!4138023 (= res!1692466 call!290464)))

(declare-fun d!1225358 () Bool)

(assert (=> d!1225358 e!2567477))

(declare-fun c!709577 () Bool)

(assert (=> d!1225358 (= c!709577 ((_ is EmptyExpr!12263) (regex!7358 r!4008)))))

(assert (=> d!1225358 (= lt!1475456 e!2567479)))

(declare-fun c!709579 () Bool)

(assert (=> d!1225358 (= c!709579 (isEmpty!26729 p!2912))))

(assert (=> d!1225358 (validRegex!5523 (regex!7358 r!4008))))

(assert (=> d!1225358 (= (matchR!6092 (regex!7358 r!4008) p!2912) lt!1475456)))

(declare-fun b!4138033 () Bool)

(assert (=> b!4138033 (= e!2567480 (= (head!8728 p!2912) (c!709511 (regex!7358 r!4008))))))

(declare-fun b!4138034 () Bool)

(assert (=> b!4138034 (= e!2567478 e!2567475)))

(declare-fun res!1692464 () Bool)

(assert (=> b!4138034 (=> (not res!1692464) (not e!2567475))))

(assert (=> b!4138034 (= res!1692464 (not lt!1475456))))

(assert (= (and d!1225358 c!709579) b!4138028))

(assert (= (and d!1225358 (not c!709579)) b!4138022))

(assert (= (and d!1225358 c!709577) b!4138030))

(assert (= (and d!1225358 (not c!709577)) b!4138025))

(assert (= (and b!4138025 c!709578) b!4138032))

(assert (= (and b!4138025 (not c!709578)) b!4138021))

(assert (= (and b!4138021 (not res!1692471)) b!4138027))

(assert (= (and b!4138027 res!1692467) b!4138031))

(assert (= (and b!4138031 res!1692470) b!4138029))

(assert (= (and b!4138029 res!1692465) b!4138033))

(assert (= (and b!4138027 (not res!1692468)) b!4138034))

(assert (= (and b!4138034 res!1692464) b!4138023))

(assert (= (and b!4138023 (not res!1692466)) b!4138026))

(assert (= (and b!4138026 (not res!1692469)) b!4138024))

(assert (= (or b!4138030 b!4138023 b!4138031) bm!290459))

(assert (=> bm!290459 m!4734151))

(assert (=> b!4138028 m!4734289))

(assert (=> b!4138022 m!4734299))

(assert (=> b!4138022 m!4734299))

(declare-fun m!4734579 () Bool)

(assert (=> b!4138022 m!4734579))

(assert (=> b!4138022 m!4734295))

(assert (=> b!4138022 m!4734579))

(assert (=> b!4138022 m!4734295))

(declare-fun m!4734581 () Bool)

(assert (=> b!4138022 m!4734581))

(assert (=> b!4138026 m!4734295))

(assert (=> b!4138026 m!4734295))

(declare-fun m!4734583 () Bool)

(assert (=> b!4138026 m!4734583))

(assert (=> b!4138033 m!4734299))

(assert (=> d!1225358 m!4734151))

(assert (=> d!1225358 m!4734287))

(assert (=> b!4138024 m!4734299))

(assert (=> b!4138029 m!4734295))

(assert (=> b!4138029 m!4734295))

(assert (=> b!4138029 m!4734583))

(assert (=> b!4137593 d!1225358))

(declare-fun b!4138037 () Bool)

(declare-fun e!2567483 () Bool)

(assert (=> b!4138037 (= e!2567483 (isPrefix!4293 (tail!6523 input!3238) (tail!6523 input!3238)))))

(declare-fun b!4138036 () Bool)

(declare-fun res!1692475 () Bool)

(assert (=> b!4138036 (=> (not res!1692475) (not e!2567483))))

(assert (=> b!4138036 (= res!1692475 (= (head!8728 input!3238) (head!8728 input!3238)))))

(declare-fun b!4138035 () Bool)

(declare-fun e!2567482 () Bool)

(assert (=> b!4138035 (= e!2567482 e!2567483)))

(declare-fun res!1692473 () Bool)

(assert (=> b!4138035 (=> (not res!1692473) (not e!2567483))))

(assert (=> b!4138035 (= res!1692473 (not ((_ is Nil!44849) input!3238)))))

(declare-fun b!4138038 () Bool)

(declare-fun e!2567481 () Bool)

(assert (=> b!4138038 (= e!2567481 (>= (size!33207 input!3238) (size!33207 input!3238)))))

(declare-fun d!1225360 () Bool)

(assert (=> d!1225360 e!2567481))

(declare-fun res!1692474 () Bool)

(assert (=> d!1225360 (=> res!1692474 e!2567481)))

(declare-fun lt!1475457 () Bool)

(assert (=> d!1225360 (= res!1692474 (not lt!1475457))))

(assert (=> d!1225360 (= lt!1475457 e!2567482)))

(declare-fun res!1692472 () Bool)

(assert (=> d!1225360 (=> res!1692472 e!2567482)))

(assert (=> d!1225360 (= res!1692472 ((_ is Nil!44849) input!3238))))

(assert (=> d!1225360 (= (isPrefix!4293 input!3238 input!3238) lt!1475457)))

(assert (= (and d!1225360 (not res!1692472)) b!4138035))

(assert (= (and b!4138035 res!1692473) b!4138036))

(assert (= (and b!4138036 res!1692475) b!4138037))

(assert (= (and d!1225360 (not res!1692474)) b!4138038))

(assert (=> b!4138037 m!4734275))

(assert (=> b!4138037 m!4734275))

(assert (=> b!4138037 m!4734275))

(assert (=> b!4138037 m!4734275))

(declare-fun m!4734585 () Bool)

(assert (=> b!4138037 m!4734585))

(assert (=> b!4138036 m!4734281))

(assert (=> b!4138036 m!4734281))

(assert (=> b!4138038 m!4734283))

(assert (=> b!4138038 m!4734283))

(assert (=> b!4137582 d!1225360))

(declare-fun d!1225362 () Bool)

(assert (=> d!1225362 (isPrefix!4293 input!3238 input!3238)))

(declare-fun lt!1475460 () Unit!64157)

(declare-fun choose!25299 (List!44973 List!44973) Unit!64157)

(assert (=> d!1225362 (= lt!1475460 (choose!25299 input!3238 input!3238))))

(assert (=> d!1225362 (= (lemmaIsPrefixRefl!2776 input!3238 input!3238) lt!1475460)))

(declare-fun bs!595169 () Bool)

(assert (= bs!595169 d!1225362))

(assert (=> bs!595169 m!4734123))

(declare-fun m!4734587 () Bool)

(assert (=> bs!595169 m!4734587))

(assert (=> b!4137582 d!1225362))

(declare-fun d!1225364 () Bool)

(assert (=> d!1225364 (= (isEmpty!26727 rules!3756) ((_ is Nil!44850) rules!3756))))

(assert (=> b!4137595 d!1225364))

(declare-fun d!1225366 () Bool)

(assert (=> d!1225366 (ruleValid!3164 thiss!25645 r!4008)))

(declare-fun lt!1475463 () Unit!64157)

(declare-fun choose!25300 (LexerInterface!6947 Rule!14516 List!44974) Unit!64157)

(assert (=> d!1225366 (= lt!1475463 (choose!25300 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1225366 (contains!9038 rules!3756 r!4008)))

(assert (=> d!1225366 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2204 thiss!25645 r!4008 rules!3756) lt!1475463)))

(declare-fun bs!595170 () Bool)

(assert (= bs!595170 d!1225366))

(assert (=> bs!595170 m!4734181))

(declare-fun m!4734589 () Bool)

(assert (=> bs!595170 m!4734589))

(assert (=> bs!595170 m!4734121))

(assert (=> b!4137584 d!1225366))

(declare-fun d!1225368 () Bool)

(declare-fun res!1692476 () Bool)

(declare-fun e!2567484 () Bool)

(assert (=> d!1225368 (=> (not res!1692476) (not e!2567484))))

(assert (=> d!1225368 (= res!1692476 (validRegex!5523 (regex!7358 rBis!149)))))

(assert (=> d!1225368 (= (ruleValid!3164 thiss!25645 rBis!149) e!2567484)))

(declare-fun b!4138039 () Bool)

(declare-fun res!1692477 () Bool)

(assert (=> b!4138039 (=> (not res!1692477) (not e!2567484))))

(assert (=> b!4138039 (= res!1692477 (not (nullable!4315 (regex!7358 rBis!149))))))

(declare-fun b!4138040 () Bool)

(assert (=> b!4138040 (= e!2567484 (not (= (tag!8218 rBis!149) (String!51691 ""))))))

(assert (= (and d!1225368 res!1692476) b!4138039))

(assert (= (and b!4138039 res!1692477) b!4138040))

(declare-fun m!4734591 () Bool)

(assert (=> d!1225368 m!4734591))

(declare-fun m!4734593 () Bool)

(assert (=> b!4138039 m!4734593))

(assert (=> b!4137584 d!1225368))

(declare-fun d!1225370 () Bool)

(assert (=> d!1225370 (ruleValid!3164 thiss!25645 rBis!149)))

(declare-fun lt!1475464 () Unit!64157)

(assert (=> d!1225370 (= lt!1475464 (choose!25300 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1225370 (contains!9038 rules!3756 rBis!149)))

(assert (=> d!1225370 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2204 thiss!25645 rBis!149 rules!3756) lt!1475464)))

(declare-fun bs!595171 () Bool)

(assert (= bs!595171 d!1225370))

(assert (=> bs!595171 m!4734145))

(declare-fun m!4734595 () Bool)

(assert (=> bs!595171 m!4734595))

(assert (=> bs!595171 m!4734149))

(assert (=> b!4137584 d!1225370))

(declare-fun d!1225372 () Bool)

(declare-fun res!1692480 () Bool)

(declare-fun e!2567487 () Bool)

(assert (=> d!1225372 (=> (not res!1692480) (not e!2567487))))

(declare-fun rulesValid!2893 (LexerInterface!6947 List!44974) Bool)

(assert (=> d!1225372 (= res!1692480 (rulesValid!2893 thiss!25645 rules!3756))))

(assert (=> d!1225372 (= (rulesInvariant!6244 thiss!25645 rules!3756) e!2567487)))

(declare-fun b!4138043 () Bool)

(declare-datatypes ((List!44976 0))(
  ( (Nil!44852) (Cons!44852 (h!50272 String!51690) (t!342157 List!44976)) )
))
(declare-fun noDuplicateTag!2976 (LexerInterface!6947 List!44974 List!44976) Bool)

(assert (=> b!4138043 (= e!2567487 (noDuplicateTag!2976 thiss!25645 rules!3756 Nil!44852))))

(assert (= (and d!1225372 res!1692480) b!4138043))

(declare-fun m!4734597 () Bool)

(assert (=> d!1225372 m!4734597))

(declare-fun m!4734599 () Bool)

(assert (=> b!4138043 m!4734599))

(assert (=> b!4137594 d!1225372))

(declare-fun b!4138054 () Bool)

(declare-fun b_free!117691 () Bool)

(declare-fun b_next!118395 () Bool)

(assert (=> b!4138054 (= b_free!117691 (not b_next!118395))))

(declare-fun t!342151 () Bool)

(declare-fun tb!248397 () Bool)

(assert (=> (and b!4138054 (= (toValue!10022 (transformation!7358 (h!50270 (t!342107 rules!3756)))) (toValue!10022 (transformation!7358 r!4008))) t!342151) tb!248397))

(declare-fun result!302010 () Bool)

(assert (= result!302010 result!302000))

(assert (=> d!1225284 t!342151))

(assert (=> d!1225338 t!342151))

(declare-fun b_and!321177 () Bool)

(declare-fun tp!1261299 () Bool)

(assert (=> b!4138054 (= tp!1261299 (and (=> t!342151 result!302010) b_and!321177))))

(declare-fun b_free!117693 () Bool)

(declare-fun b_next!118397 () Bool)

(assert (=> b!4138054 (= b_free!117693 (not b_next!118397))))

(declare-fun tb!248399 () Bool)

(declare-fun t!342153 () Bool)

(assert (=> (and b!4138054 (= (toChars!9881 (transformation!7358 (h!50270 (t!342107 rules!3756)))) (toChars!9881 (transformation!7358 (rule!10460 (_1!24755 lt!1475301))))) t!342153) tb!248399))

(declare-fun result!302012 () Bool)

(assert (= result!302012 result!301968))

(assert (=> d!1225272 t!342153))

(declare-fun t!342155 () Bool)

(declare-fun tb!248401 () Bool)

(assert (=> (and b!4138054 (= (toChars!9881 (transformation!7358 (h!50270 (t!342107 rules!3756)))) (toChars!9881 (transformation!7358 r!4008))) t!342155) tb!248401))

(declare-fun result!302014 () Bool)

(assert (= result!302014 result!301994))

(assert (=> d!1225284 t!342155))

(declare-fun b_and!321179 () Bool)

(declare-fun tp!1261297 () Bool)

(assert (=> b!4138054 (= tp!1261297 (and (=> t!342153 result!302012) (=> t!342155 result!302014) b_and!321179))))

(declare-fun e!2567496 () Bool)

(assert (=> b!4138054 (= e!2567496 (and tp!1261299 tp!1261297))))

(declare-fun tp!1261296 () Bool)

(declare-fun e!2567499 () Bool)

(declare-fun b!4138053 () Bool)

(assert (=> b!4138053 (= e!2567499 (and tp!1261296 (inv!59454 (tag!8218 (h!50270 (t!342107 rules!3756)))) (inv!59456 (transformation!7358 (h!50270 (t!342107 rules!3756)))) e!2567496))))

(declare-fun b!4138052 () Bool)

(declare-fun e!2567497 () Bool)

(declare-fun tp!1261298 () Bool)

(assert (=> b!4138052 (= e!2567497 (and e!2567499 tp!1261298))))

(assert (=> b!4137596 (= tp!1261238 e!2567497)))

(assert (= b!4138053 b!4138054))

(assert (= b!4138052 b!4138053))

(assert (= (and b!4137596 ((_ is Cons!44850) (t!342107 rules!3756))) b!4138052))

(declare-fun m!4734601 () Bool)

(assert (=> b!4138053 m!4734601))

(declare-fun m!4734603 () Bool)

(assert (=> b!4138053 m!4734603))

(declare-fun b!4138068 () Bool)

(declare-fun e!2567502 () Bool)

(declare-fun tp!1261314 () Bool)

(declare-fun tp!1261313 () Bool)

(assert (=> b!4138068 (= e!2567502 (and tp!1261314 tp!1261313))))

(declare-fun b!4138067 () Bool)

(declare-fun tp!1261311 () Bool)

(assert (=> b!4138067 (= e!2567502 tp!1261311)))

(declare-fun b!4138065 () Bool)

(assert (=> b!4138065 (= e!2567502 tp_is_empty!21449)))

(assert (=> b!4137580 (= tp!1261234 e!2567502)))

(declare-fun b!4138066 () Bool)

(declare-fun tp!1261312 () Bool)

(declare-fun tp!1261310 () Bool)

(assert (=> b!4138066 (= e!2567502 (and tp!1261312 tp!1261310))))

(assert (= (and b!4137580 ((_ is ElementMatch!12263) (regex!7358 r!4008))) b!4138065))

(assert (= (and b!4137580 ((_ is Concat!19852) (regex!7358 r!4008))) b!4138066))

(assert (= (and b!4137580 ((_ is Star!12263) (regex!7358 r!4008))) b!4138067))

(assert (= (and b!4137580 ((_ is Union!12263) (regex!7358 r!4008))) b!4138068))

(declare-fun b!4138073 () Bool)

(declare-fun e!2567505 () Bool)

(declare-fun tp!1261317 () Bool)

(assert (=> b!4138073 (= e!2567505 (and tp_is_empty!21449 tp!1261317))))

(assert (=> b!4137601 (= tp!1261237 e!2567505)))

(assert (= (and b!4137601 ((_ is Cons!44849) (t!342106 p!2912))) b!4138073))

(declare-fun b!4138077 () Bool)

(declare-fun e!2567506 () Bool)

(declare-fun tp!1261322 () Bool)

(declare-fun tp!1261321 () Bool)

(assert (=> b!4138077 (= e!2567506 (and tp!1261322 tp!1261321))))

(declare-fun b!4138076 () Bool)

(declare-fun tp!1261319 () Bool)

(assert (=> b!4138076 (= e!2567506 tp!1261319)))

(declare-fun b!4138074 () Bool)

(assert (=> b!4138074 (= e!2567506 tp_is_empty!21449)))

(assert (=> b!4137587 (= tp!1261230 e!2567506)))

(declare-fun b!4138075 () Bool)

(declare-fun tp!1261320 () Bool)

(declare-fun tp!1261318 () Bool)

(assert (=> b!4138075 (= e!2567506 (and tp!1261320 tp!1261318))))

(assert (= (and b!4137587 ((_ is ElementMatch!12263) (regex!7358 (h!50270 rules!3756)))) b!4138074))

(assert (= (and b!4137587 ((_ is Concat!19852) (regex!7358 (h!50270 rules!3756)))) b!4138075))

(assert (= (and b!4137587 ((_ is Star!12263) (regex!7358 (h!50270 rules!3756)))) b!4138076))

(assert (= (and b!4137587 ((_ is Union!12263) (regex!7358 (h!50270 rules!3756)))) b!4138077))

(declare-fun b!4138081 () Bool)

(declare-fun e!2567507 () Bool)

(declare-fun tp!1261327 () Bool)

(declare-fun tp!1261326 () Bool)

(assert (=> b!4138081 (= e!2567507 (and tp!1261327 tp!1261326))))

(declare-fun b!4138080 () Bool)

(declare-fun tp!1261324 () Bool)

(assert (=> b!4138080 (= e!2567507 tp!1261324)))

(declare-fun b!4138078 () Bool)

(assert (=> b!4138078 (= e!2567507 tp_is_empty!21449)))

(assert (=> b!4137586 (= tp!1261227 e!2567507)))

(declare-fun b!4138079 () Bool)

(declare-fun tp!1261325 () Bool)

(declare-fun tp!1261323 () Bool)

(assert (=> b!4138079 (= e!2567507 (and tp!1261325 tp!1261323))))

(assert (= (and b!4137586 ((_ is ElementMatch!12263) (regex!7358 rBis!149))) b!4138078))

(assert (= (and b!4137586 ((_ is Concat!19852) (regex!7358 rBis!149))) b!4138079))

(assert (= (and b!4137586 ((_ is Star!12263) (regex!7358 rBis!149))) b!4138080))

(assert (= (and b!4137586 ((_ is Union!12263) (regex!7358 rBis!149))) b!4138081))

(declare-fun b!4138082 () Bool)

(declare-fun e!2567508 () Bool)

(declare-fun tp!1261328 () Bool)

(assert (=> b!4138082 (= e!2567508 (and tp_is_empty!21449 tp!1261328))))

(assert (=> b!4137600 (= tp!1261232 e!2567508)))

(assert (= (and b!4137600 ((_ is Cons!44849) (t!342106 input!3238))) b!4138082))

(declare-fun b_lambda!121621 () Bool)

(assert (= b_lambda!121617 (or (and b!4137591 b_free!117675 (= (toValue!10022 (transformation!7358 (h!50270 rules!3756))) (toValue!10022 (transformation!7358 r!4008)))) (and b!4137589 b_free!117679 (= (toValue!10022 (transformation!7358 rBis!149)) (toValue!10022 (transformation!7358 r!4008)))) (and b!4137604 b_free!117683) (and b!4138054 b_free!117691 (= (toValue!10022 (transformation!7358 (h!50270 (t!342107 rules!3756)))) (toValue!10022 (transformation!7358 r!4008)))) b_lambda!121621)))

(declare-fun b_lambda!121623 () Bool)

(assert (= b_lambda!121619 (or (and b!4137591 b_free!117675 (= (toValue!10022 (transformation!7358 (h!50270 rules!3756))) (toValue!10022 (transformation!7358 r!4008)))) (and b!4137589 b_free!117679 (= (toValue!10022 (transformation!7358 rBis!149)) (toValue!10022 (transformation!7358 r!4008)))) (and b!4137604 b_free!117683) (and b!4138054 b_free!117691 (= (toValue!10022 (transformation!7358 (h!50270 (t!342107 rules!3756)))) (toValue!10022 (transformation!7358 r!4008)))) b_lambda!121623)))

(declare-fun b_lambda!121625 () Bool)

(assert (= b_lambda!121615 (or (and b!4137591 b_free!117677 (= (toChars!9881 (transformation!7358 (h!50270 rules!3756))) (toChars!9881 (transformation!7358 r!4008)))) (and b!4137589 b_free!117681 (= (toChars!9881 (transformation!7358 rBis!149)) (toChars!9881 (transformation!7358 r!4008)))) (and b!4137604 b_free!117685) (and b!4138054 b_free!117693 (= (toChars!9881 (transformation!7358 (h!50270 (t!342107 rules!3756)))) (toChars!9881 (transformation!7358 r!4008)))) b_lambda!121625)))

(check-sat (not b!4138079) (not d!1225240) (not b!4137769) (not d!1225348) (not b!4137977) (not b!4138067) (not b!4137971) (not b!4138081) (not b!4138080) (not b!4138068) (not b!4138039) (not d!1225284) (not d!1225340) (not b_next!118397) (not b!4138076) (not d!1225362) (not b!4138043) (not b!4137708) (not b!4137720) (not b!4138052) (not d!1225366) b_and!321175 (not b!4137764) b_and!321163 (not d!1225276) (not tb!248367) (not b!4138036) (not d!1225260) (not b!4138066) (not b!4137766) (not d!1225230) (not b!4137731) (not b!4137732) (not b!4137701) (not b!4137767) (not b!4137763) (not b_next!118379) (not b!4137944) (not d!1225358) (not b!4138024) (not bm!290453) (not d!1225368) (not b_next!118389) (not b_lambda!121623) (not b_next!118395) (not b!4137710) b_and!321179 (not b!4137951) b_and!321177 (not b_next!118381) (not bm!290459) (not b!4137770) (not b!4138022) b_and!321171 (not b!4138082) (not b!4137678) (not b!4137991) (not d!1225264) (not b!4138073) (not b_next!118385) (not d!1225256) (not b!4137988) (not b!4137707) (not b!4137989) (not d!1225356) (not b!4137948) (not d!1225278) (not d!1225346) (not b!4138026) b_and!321159 (not d!1225370) (not b!4138053) (not b!4138037) (not d!1225254) (not d!1225272) (not b!4137738) (not b!4138029) (not b!4138038) (not tb!248391) (not b_lambda!121621) (not b!4138033) (not b!4138075) (not b!4137722) (not b!4137978) (not d!1225372) (not d!1225344) (not d!1225224) (not b!4137727) (not b_lambda!121625) (not b!4137777) (not b!4137975) (not d!1225270) (not d!1225250) (not b!4137721) (not b!4137743) (not b!4137729) (not b_next!118387) (not b!4137972) (not b!4138028) (not b_lambda!121603) (not b!4137970) tp_is_empty!21449 (not b!4137973) (not tb!248385) (not d!1225280) (not b_next!118383) (not d!1225354) b_and!321173 (not b!4137768) b_and!321161 (not b!4137686) (not b!4137765) (not d!1225352) (not b!4137733) (not b!4138077) (not b!4137976))
(check-sat (not b_next!118397) (not b_next!118379) b_and!321171 (not b_next!118385) b_and!321159 (not b_next!118387) b_and!321161 b_and!321163 b_and!321175 (not b_next!118389) (not b_next!118395) b_and!321179 b_and!321177 (not b_next!118381) (not b_next!118383) b_and!321173)
