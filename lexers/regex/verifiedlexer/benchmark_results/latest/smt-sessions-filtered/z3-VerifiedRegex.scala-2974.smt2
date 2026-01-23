; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176694 () Bool)

(assert start!176694)

(declare-fun b!1778153 () Bool)

(declare-fun b_free!49335 () Bool)

(declare-fun b_next!50039 () Bool)

(assert (=> b!1778153 (= b_free!49335 (not b_next!50039))))

(declare-fun tp!503726 () Bool)

(declare-fun b_and!136039 () Bool)

(assert (=> b!1778153 (= tp!503726 b_and!136039)))

(declare-fun b_free!49337 () Bool)

(declare-fun b_next!50041 () Bool)

(assert (=> b!1778153 (= b_free!49337 (not b_next!50041))))

(declare-fun tp!503718 () Bool)

(declare-fun b_and!136041 () Bool)

(assert (=> b!1778153 (= tp!503718 b_and!136041)))

(declare-fun b!1778163 () Bool)

(declare-fun b_free!49339 () Bool)

(declare-fun b_next!50043 () Bool)

(assert (=> b!1778163 (= b_free!49339 (not b_next!50043))))

(declare-fun tp!503721 () Bool)

(declare-fun b_and!136043 () Bool)

(assert (=> b!1778163 (= tp!503721 b_and!136043)))

(declare-fun b_free!49341 () Bool)

(declare-fun b_next!50045 () Bool)

(assert (=> b!1778163 (= b_free!49341 (not b_next!50045))))

(declare-fun tp!503724 () Bool)

(declare-fun b_and!136045 () Bool)

(assert (=> b!1778163 (= tp!503724 b_and!136045)))

(declare-fun b!1778172 () Bool)

(declare-fun b_free!49343 () Bool)

(declare-fun b_next!50047 () Bool)

(assert (=> b!1778172 (= b_free!49343 (not b_next!50047))))

(declare-fun tp!503725 () Bool)

(declare-fun b_and!136047 () Bool)

(assert (=> b!1778172 (= tp!503725 b_and!136047)))

(declare-fun b_free!49345 () Bool)

(declare-fun b_next!50049 () Bool)

(assert (=> b!1778172 (= b_free!49345 (not b_next!50049))))

(declare-fun tp!503717 () Bool)

(declare-fun b_and!136049 () Bool)

(assert (=> b!1778172 (= tp!503717 b_and!136049)))

(declare-fun b!1778190 () Bool)

(declare-fun e!1138031 () Bool)

(assert (=> b!1778190 (= e!1138031 true)))

(declare-fun b!1778189 () Bool)

(declare-fun e!1138030 () Bool)

(assert (=> b!1778189 (= e!1138030 e!1138031)))

(declare-fun b!1778188 () Bool)

(declare-fun e!1138029 () Bool)

(assert (=> b!1778188 (= e!1138029 e!1138030)))

(declare-fun b!1778157 () Bool)

(assert (=> b!1778157 e!1138029))

(assert (= b!1778189 b!1778190))

(assert (= b!1778188 b!1778189))

(assert (= b!1778157 b!1778188))

(declare-fun order!12609 () Int)

(declare-fun lambda!70602 () Int)

(declare-fun order!12607 () Int)

(declare-datatypes ((List!19661 0))(
  ( (Nil!19591) (Cons!19591 (h!24992 (_ BitVec 16)) (t!166244 List!19661)) )
))
(declare-datatypes ((TokenValue!3599 0))(
  ( (FloatLiteralValue!7198 (text!25638 List!19661)) (TokenValueExt!3598 (__x!12500 Int)) (Broken!17995 (value!109653 List!19661)) (Object!3668) (End!3599) (Def!3599) (Underscore!3599) (Match!3599) (Else!3599) (Error!3599) (Case!3599) (If!3599) (Extends!3599) (Abstract!3599) (Class!3599) (Val!3599) (DelimiterValue!7198 (del!3659 List!19661)) (KeywordValue!3605 (value!109654 List!19661)) (CommentValue!7198 (value!109655 List!19661)) (WhitespaceValue!7198 (value!109656 List!19661)) (IndentationValue!3599 (value!109657 List!19661)) (String!22326) (Int32!3599) (Broken!17996 (value!109658 List!19661)) (Boolean!3600) (Unit!33851) (OperatorValue!3602 (op!3659 List!19661)) (IdentifierValue!7198 (value!109659 List!19661)) (IdentifierValue!7199 (value!109660 List!19661)) (WhitespaceValue!7199 (value!109661 List!19661)) (True!7198) (False!7198) (Broken!17997 (value!109662 List!19661)) (Broken!17998 (value!109663 List!19661)) (True!7199) (RightBrace!3599) (RightBracket!3599) (Colon!3599) (Null!3599) (Comma!3599) (LeftBracket!3599) (False!7199) (LeftBrace!3599) (ImaginaryLiteralValue!3599 (text!25639 List!19661)) (StringLiteralValue!10797 (value!109664 List!19661)) (EOFValue!3599 (value!109665 List!19661)) (IdentValue!3599 (value!109666 List!19661)) (DelimiterValue!7199 (value!109667 List!19661)) (DedentValue!3599 (value!109668 List!19661)) (NewLineValue!3599 (value!109669 List!19661)) (IntegerValue!10797 (value!109670 (_ BitVec 32)) (text!25640 List!19661)) (IntegerValue!10798 (value!109671 Int) (text!25641 List!19661)) (Times!3599) (Or!3599) (Equal!3599) (Minus!3599) (Broken!17999 (value!109672 List!19661)) (And!3599) (Div!3599) (LessEqual!3599) (Mod!3599) (Concat!8436) (Not!3599) (Plus!3599) (SpaceValue!3599 (value!109673 List!19661)) (IntegerValue!10799 (value!109674 Int) (text!25642 List!19661)) (StringLiteralValue!10798 (text!25643 List!19661)) (FloatLiteralValue!7199 (text!25644 List!19661)) (BytesLiteralValue!3599 (value!109675 List!19661)) (CommentValue!7199 (value!109676 List!19661)) (StringLiteralValue!10799 (value!109677 List!19661)) (ErrorTokenValue!3599 (msg!3660 List!19661)) )
))
(declare-datatypes ((C!9848 0))(
  ( (C!9849 (val!5520 Int)) )
))
(declare-datatypes ((List!19662 0))(
  ( (Nil!19592) (Cons!19592 (h!24993 C!9848) (t!166245 List!19662)) )
))
(declare-datatypes ((Regex!4837 0))(
  ( (ElementMatch!4837 (c!289350 C!9848)) (Concat!8437 (regOne!10186 Regex!4837) (regTwo!10186 Regex!4837)) (EmptyExpr!4837) (Star!4837 (reg!5166 Regex!4837)) (EmptyLang!4837) (Union!4837 (regOne!10187 Regex!4837) (regTwo!10187 Regex!4837)) )
))
(declare-datatypes ((String!22327 0))(
  ( (String!22328 (value!109678 String)) )
))
(declare-datatypes ((IArray!13039 0))(
  ( (IArray!13040 (innerList!6577 List!19662)) )
))
(declare-datatypes ((Conc!6517 0))(
  ( (Node!6517 (left!15701 Conc!6517) (right!16031 Conc!6517) (csize!13264 Int) (cheight!6728 Int)) (Leaf!9492 (xs!9393 IArray!13039) (csize!13265 Int)) (Empty!6517) )
))
(declare-datatypes ((BalanceConc!12978 0))(
  ( (BalanceConc!12979 (c!289351 Conc!6517)) )
))
(declare-datatypes ((TokenValueInjection!6858 0))(
  ( (TokenValueInjection!6859 (toValue!5036 Int) (toChars!4895 Int)) )
))
(declare-datatypes ((Rule!6818 0))(
  ( (Rule!6819 (regex!3509 Regex!4837) (tag!3899 String!22327) (isSeparator!3509 Bool) (transformation!3509 TokenValueInjection!6858)) )
))
(declare-datatypes ((Token!6584 0))(
  ( (Token!6585 (value!109679 TokenValue!3599) (rule!5573 Rule!6818) (size!15566 Int) (originalCharacters!4323 List!19662)) )
))
(declare-datatypes ((tuple2!19186 0))(
  ( (tuple2!19187 (_1!10995 Token!6584) (_2!10995 List!19662)) )
))
(declare-fun lt!690358 () tuple2!19186)

(declare-fun dynLambda!9594 (Int Int) Int)

(declare-fun dynLambda!9595 (Int Int) Int)

(assert (=> b!1778190 (< (dynLambda!9594 order!12607 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) (dynLambda!9595 order!12609 lambda!70602))))

(declare-fun order!12611 () Int)

(declare-fun dynLambda!9596 (Int Int) Int)

(assert (=> b!1778190 (< (dynLambda!9596 order!12611 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) (dynLambda!9595 order!12609 lambda!70602))))

(declare-fun b!1778145 () Bool)

(declare-fun e!1138017 () Bool)

(declare-fun e!1138007 () Bool)

(assert (=> b!1778145 (= e!1138017 e!1138007)))

(declare-fun res!801282 () Bool)

(assert (=> b!1778145 (=> res!801282 e!1138007)))

(declare-fun lt!690331 () List!19662)

(declare-datatypes ((Option!4040 0))(
  ( (None!4039) (Some!4039 (v!25524 tuple2!19186)) )
))
(declare-fun lt!690340 () Option!4040)

(declare-fun lt!690356 () TokenValue!3599)

(declare-fun lt!690365 () Int)

(assert (=> b!1778145 (= res!801282 (not (= lt!690340 (Some!4039 (tuple2!19187 (Token!6585 lt!690356 (rule!5573 (_1!10995 lt!690358)) lt!690365 lt!690331) (_2!10995 lt!690358))))))))

(declare-fun lt!690336 () BalanceConc!12978)

(declare-fun size!15567 (BalanceConc!12978) Int)

(assert (=> b!1778145 (= lt!690365 (size!15567 lt!690336))))

(declare-fun apply!5309 (TokenValueInjection!6858 BalanceConc!12978) TokenValue!3599)

(assert (=> b!1778145 (= lt!690356 (apply!5309 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) lt!690336))))

(declare-datatypes ((Unit!33852 0))(
  ( (Unit!33853) )
))
(declare-fun lt!690333 () Unit!33852)

(declare-fun lemmaCharactersSize!567 (Token!6584) Unit!33852)

(assert (=> b!1778145 (= lt!690333 (lemmaCharactersSize!567 (_1!10995 lt!690358)))))

(declare-fun lt!690325 () Unit!33852)

(declare-fun lemmaEqSameImage!420 (TokenValueInjection!6858 BalanceConc!12978 BalanceConc!12978) Unit!33852)

(declare-fun seqFromList!2478 (List!19662) BalanceConc!12978)

(assert (=> b!1778145 (= lt!690325 (lemmaEqSameImage!420 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) lt!690336 (seqFromList!2478 (originalCharacters!4323 (_1!10995 lt!690358)))))))

(declare-fun b!1778146 () Bool)

(declare-fun e!1138018 () Bool)

(assert (=> b!1778146 (= e!1138007 e!1138018)))

(declare-fun res!801285 () Bool)

(assert (=> b!1778146 (=> res!801285 e!1138018)))

(declare-fun lt!690344 () List!19662)

(declare-fun lt!690354 () Option!4040)

(assert (=> b!1778146 (= res!801285 (or (not (= lt!690344 (_2!10995 lt!690358))) (not (= lt!690354 (Some!4039 (tuple2!19187 (_1!10995 lt!690358) lt!690344))))))))

(assert (=> b!1778146 (= (_2!10995 lt!690358) lt!690344)))

(declare-fun lt!690342 () List!19662)

(declare-fun lt!690361 () Unit!33852)

(declare-fun lemmaSamePrefixThenSameSuffix!860 (List!19662 List!19662 List!19662 List!19662 List!19662) Unit!33852)

(assert (=> b!1778146 (= lt!690361 (lemmaSamePrefixThenSameSuffix!860 lt!690331 (_2!10995 lt!690358) lt!690331 lt!690344 lt!690342))))

(declare-fun getSuffix!916 (List!19662 List!19662) List!19662)

(assert (=> b!1778146 (= lt!690344 (getSuffix!916 lt!690342 lt!690331))))

(declare-fun lt!690360 () TokenValue!3599)

(declare-fun lt!690355 () Int)

(assert (=> b!1778146 (= lt!690354 (Some!4039 (tuple2!19187 (Token!6585 lt!690360 (rule!5573 (_1!10995 lt!690358)) lt!690355 lt!690331) (_2!10995 lt!690358))))))

(declare-datatypes ((LexerInterface!3138 0))(
  ( (LexerInterfaceExt!3135 (__x!12501 Int)) (Lexer!3136) )
))
(declare-fun thiss!24550 () LexerInterface!3138)

(declare-fun maxPrefixOneRule!1061 (LexerInterface!3138 Rule!6818 List!19662) Option!4040)

(assert (=> b!1778146 (= lt!690354 (maxPrefixOneRule!1061 thiss!24550 (rule!5573 (_1!10995 lt!690358)) lt!690342))))

(declare-fun size!15568 (List!19662) Int)

(assert (=> b!1778146 (= lt!690355 (size!15568 lt!690331))))

(assert (=> b!1778146 (= lt!690360 (apply!5309 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) (seqFromList!2478 lt!690331)))))

(declare-datatypes ((List!19663 0))(
  ( (Nil!19593) (Cons!19593 (h!24994 Rule!6818) (t!166246 List!19663)) )
))
(declare-fun rules!3447 () List!19663)

(declare-fun lt!690366 () Unit!33852)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!439 (LexerInterface!3138 List!19663 List!19662 List!19662 List!19662 Rule!6818) Unit!33852)

(assert (=> b!1778146 (= lt!690366 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!439 thiss!24550 rules!3447 lt!690331 lt!690342 (_2!10995 lt!690358) (rule!5573 (_1!10995 lt!690358))))))

(declare-fun b!1778147 () Bool)

(declare-fun e!1138013 () Unit!33852)

(declare-fun Unit!33854 () Unit!33852)

(assert (=> b!1778147 (= e!1138013 Unit!33854)))

(declare-fun rule!422 () Rule!6818)

(declare-fun lt!690326 () List!19662)

(declare-fun lt!690334 () Unit!33852)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!218 (LexerInterface!3138 List!19663 Rule!6818 List!19662 List!19662 List!19662 Rule!6818) Unit!33852)

(assert (=> b!1778147 (= lt!690334 (lemmaMaxPrefixOutputsMaxPrefix!218 thiss!24550 rules!3447 (rule!5573 (_1!10995 lt!690358)) lt!690331 lt!690342 lt!690326 rule!422))))

(assert (=> b!1778147 false))

(declare-fun e!1138021 () Bool)

(declare-fun b!1778148 () Bool)

(declare-fun e!1137998 () Bool)

(declare-fun tp!503723 () Bool)

(declare-fun inv!25486 (String!22327) Bool)

(declare-fun inv!25491 (TokenValueInjection!6858) Bool)

(assert (=> b!1778148 (= e!1138021 (and tp!503723 (inv!25486 (tag!3899 (h!24994 rules!3447))) (inv!25491 (transformation!3509 (h!24994 rules!3447))) e!1137998))))

(declare-fun b!1778149 () Bool)

(declare-fun res!801287 () Bool)

(declare-fun e!1138012 () Bool)

(assert (=> b!1778149 (=> (not res!801287) (not e!1138012))))

(declare-fun lt!690329 () tuple2!19186)

(declare-fun isEmpty!12378 (List!19662) Bool)

(assert (=> b!1778149 (= res!801287 (isEmpty!12378 (_2!10995 lt!690329)))))

(declare-fun b!1778150 () Bool)

(declare-fun Unit!33855 () Unit!33852)

(assert (=> b!1778150 (= e!1138013 Unit!33855)))

(declare-fun b!1778151 () Bool)

(declare-fun e!1138016 () Bool)

(assert (=> b!1778151 (= e!1138016 e!1138012)))

(declare-fun res!801292 () Bool)

(assert (=> b!1778151 (=> (not res!801292) (not e!1138012))))

(declare-fun token!523 () Token!6584)

(assert (=> b!1778151 (= res!801292 (= (_1!10995 lt!690329) token!523))))

(declare-fun lt!690327 () Option!4040)

(declare-fun get!6012 (Option!4040) tuple2!19186)

(assert (=> b!1778151 (= lt!690329 (get!6012 lt!690327))))

(declare-fun e!1138011 () Bool)

(declare-fun b!1778152 () Bool)

(declare-fun e!1137995 () Bool)

(declare-fun tp!503715 () Bool)

(assert (=> b!1778152 (= e!1137995 (and tp!503715 (inv!25486 (tag!3899 (rule!5573 token!523))) (inv!25491 (transformation!3509 (rule!5573 token!523))) e!1138011))))

(declare-fun b!1778154 () Bool)

(declare-fun e!1138015 () Bool)

(assert (=> b!1778154 (= e!1138018 e!1138015)))

(declare-fun res!801284 () Bool)

(assert (=> b!1778154 (=> res!801284 e!1138015)))

(declare-fun lt!690346 () Bool)

(assert (=> b!1778154 (= res!801284 lt!690346)))

(declare-fun lt!690349 () Unit!33852)

(declare-fun e!1138020 () Unit!33852)

(assert (=> b!1778154 (= lt!690349 e!1138020)))

(declare-fun c!289348 () Bool)

(assert (=> b!1778154 (= c!289348 lt!690346)))

(declare-fun lt!690363 () Int)

(assert (=> b!1778154 (= lt!690346 (> lt!690365 lt!690363))))

(declare-fun lt!690350 () BalanceConc!12978)

(assert (=> b!1778154 (= lt!690363 (size!15567 lt!690350))))

(declare-fun lt!690343 () Regex!4837)

(declare-fun matchR!2310 (Regex!4837 List!19662) Bool)

(assert (=> b!1778154 (matchR!2310 lt!690343 lt!690326)))

(declare-fun lt!690347 () Unit!33852)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!216 (LexerInterface!3138 List!19663 List!19662 Token!6584 Rule!6818 List!19662) Unit!33852)

(assert (=> b!1778154 (= lt!690347 (lemmaMaxPrefixThenMatchesRulesRegex!216 thiss!24550 rules!3447 lt!690326 token!523 rule!422 Nil!19592))))

(declare-fun b!1778155 () Bool)

(declare-fun res!801291 () Bool)

(declare-fun e!1138009 () Bool)

(assert (=> b!1778155 (=> (not res!801291) (not e!1138009))))

(declare-fun rulesInvariant!2807 (LexerInterface!3138 List!19663) Bool)

(assert (=> b!1778155 (= res!801291 (rulesInvariant!2807 thiss!24550 rules!3447))))

(declare-fun b!1778156 () Bool)

(declare-fun res!801275 () Bool)

(assert (=> b!1778156 (=> (not res!801275) (not e!1138009))))

(declare-fun isEmpty!12379 (List!19663) Bool)

(assert (=> b!1778156 (= res!801275 (not (isEmpty!12379 rules!3447)))))

(declare-fun e!1138004 () Bool)

(declare-fun e!1138022 () Bool)

(assert (=> b!1778157 (= e!1138004 e!1138022)))

(declare-fun res!801279 () Bool)

(assert (=> b!1778157 (=> res!801279 e!1138022)))

(declare-fun Forall!876 (Int) Bool)

(assert (=> b!1778157 (= res!801279 (not (Forall!876 lambda!70602)))))

(declare-fun lt!690332 () Unit!33852)

(declare-fun lemmaInv!708 (TokenValueInjection!6858) Unit!33852)

(assert (=> b!1778157 (= lt!690332 (lemmaInv!708 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))))

(declare-fun b!1778158 () Bool)

(declare-fun res!801289 () Bool)

(assert (=> b!1778158 (=> res!801289 e!1138004)))

(assert (=> b!1778158 (= res!801289 (not (matchR!2310 (regex!3509 (rule!5573 (_1!10995 lt!690358))) lt!690331)))))

(declare-fun b!1778159 () Bool)

(assert (=> b!1778159 (= e!1138022 e!1138017)))

(declare-fun res!801277 () Bool)

(assert (=> b!1778159 (=> res!801277 e!1138017)))

(declare-fun list!7963 (BalanceConc!12978) List!19662)

(declare-fun dynLambda!9597 (Int TokenValue!3599) BalanceConc!12978)

(declare-fun dynLambda!9598 (Int BalanceConc!12978) TokenValue!3599)

(assert (=> b!1778159 (= res!801277 (not (= (list!7963 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))) lt!690331)))))

(declare-fun lt!690341 () Unit!33852)

(declare-fun lemmaSemiInverse!647 (TokenValueInjection!6858 BalanceConc!12978) Unit!33852)

(assert (=> b!1778159 (= lt!690341 (lemmaSemiInverse!647 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) lt!690336))))

(declare-fun b!1778160 () Bool)

(declare-fun e!1137999 () Bool)

(declare-fun lt!690348 () Rule!6818)

(assert (=> b!1778160 (= e!1137999 (= (rule!5573 (_1!10995 lt!690358)) lt!690348))))

(declare-fun b!1778161 () Bool)

(declare-fun e!1138002 () Bool)

(declare-fun e!1137994 () Bool)

(assert (=> b!1778161 (= e!1138002 e!1137994)))

(declare-fun res!801276 () Bool)

(assert (=> b!1778161 (=> res!801276 e!1137994)))

(declare-fun lt!690362 () List!19662)

(declare-fun prefixMatch!720 (Regex!4837 List!19662) Bool)

(assert (=> b!1778161 (= res!801276 (prefixMatch!720 lt!690343 lt!690362))))

(declare-fun suffix!1421 () List!19662)

(declare-fun ++!5333 (List!19662 List!19662) List!19662)

(declare-fun head!4150 (List!19662) C!9848)

(assert (=> b!1778161 (= lt!690362 (++!5333 lt!690326 (Cons!19592 (head!4150 suffix!1421) Nil!19592)))))

(declare-fun rulesRegex!865 (LexerInterface!3138 List!19663) Regex!4837)

(assert (=> b!1778161 (= lt!690343 (rulesRegex!865 thiss!24550 rules!3447))))

(declare-fun b!1778162 () Bool)

(assert (=> b!1778162 (= e!1138012 (not e!1138002))))

(declare-fun res!801288 () Bool)

(assert (=> b!1778162 (=> res!801288 e!1138002)))

(assert (=> b!1778162 (= res!801288 (not (matchR!2310 (regex!3509 rule!422) lt!690326)))))

(declare-fun ruleValid!1007 (LexerInterface!3138 Rule!6818) Bool)

(assert (=> b!1778162 (ruleValid!1007 thiss!24550 rule!422)))

(declare-fun lt!690351 () Unit!33852)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!530 (LexerInterface!3138 Rule!6818 List!19663) Unit!33852)

(assert (=> b!1778162 (= lt!690351 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!530 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1778163 (= e!1138011 (and tp!503721 tp!503724))))

(declare-fun b!1778164 () Bool)

(declare-fun res!801271 () Bool)

(assert (=> b!1778164 (=> res!801271 e!1138002)))

(assert (=> b!1778164 (= res!801271 (isEmpty!12378 suffix!1421))))

(declare-fun b!1778165 () Bool)

(declare-fun e!1138001 () Bool)

(assert (=> b!1778165 (= e!1138001 e!1137999)))

(declare-fun res!801272 () Bool)

(assert (=> b!1778165 (=> (not res!801272) (not e!1137999))))

(declare-fun charsOf!2158 (Token!6584) BalanceConc!12978)

(assert (=> b!1778165 (= res!801272 (matchR!2310 (regex!3509 lt!690348) (list!7963 (charsOf!2158 (_1!10995 lt!690358)))))))

(declare-datatypes ((Option!4041 0))(
  ( (None!4040) (Some!4040 (v!25525 Rule!6818)) )
))
(declare-fun lt!690359 () Option!4041)

(declare-fun get!6013 (Option!4041) Rule!6818)

(assert (=> b!1778165 (= lt!690348 (get!6013 lt!690359))))

(declare-fun b!1778166 () Bool)

(assert (=> b!1778166 (= e!1138009 e!1138016)))

(declare-fun res!801281 () Bool)

(assert (=> b!1778166 (=> (not res!801281) (not e!1138016))))

(declare-fun isDefined!3383 (Option!4040) Bool)

(assert (=> b!1778166 (= res!801281 (isDefined!3383 lt!690327))))

(declare-fun maxPrefix!1692 (LexerInterface!3138 List!19663 List!19662) Option!4040)

(assert (=> b!1778166 (= lt!690327 (maxPrefix!1692 thiss!24550 rules!3447 lt!690326))))

(assert (=> b!1778166 (= lt!690326 (list!7963 lt!690350))))

(assert (=> b!1778166 (= lt!690350 (charsOf!2158 token!523))))

(declare-fun b!1778167 () Bool)

(declare-fun Unit!33856 () Unit!33852)

(assert (=> b!1778167 (= e!1138020 Unit!33856)))

(declare-fun lt!690364 () Unit!33852)

(assert (=> b!1778167 (= lt!690364 (lemmaMaxPrefixThenMatchesRulesRegex!216 thiss!24550 rules!3447 lt!690342 (_1!10995 lt!690358) (rule!5573 (_1!10995 lt!690358)) (_2!10995 lt!690358)))))

(assert (=> b!1778167 (matchR!2310 lt!690343 lt!690331)))

(declare-fun lt!690337 () List!19662)

(assert (=> b!1778167 (= lt!690337 (getSuffix!916 lt!690342 lt!690326))))

(declare-fun lt!690353 () Unit!33852)

(assert (=> b!1778167 (= lt!690353 (lemmaSamePrefixThenSameSuffix!860 lt!690326 suffix!1421 lt!690326 lt!690337 lt!690342))))

(assert (=> b!1778167 (= suffix!1421 lt!690337)))

(declare-fun lt!690339 () Unit!33852)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!285 (List!19662 List!19662) Unit!33852)

(assert (=> b!1778167 (= lt!690339 (lemmaAddHeadSuffixToPrefixStillPrefix!285 lt!690326 lt!690342))))

(declare-fun isPrefix!1749 (List!19662 List!19662) Bool)

(assert (=> b!1778167 (isPrefix!1749 (++!5333 lt!690326 (Cons!19592 (head!4150 lt!690337) Nil!19592)) lt!690342)))

(declare-fun lt!690345 () Unit!33852)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!157 (List!19662 List!19662 List!19662) Unit!33852)

(assert (=> b!1778167 (= lt!690345 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!157 lt!690331 lt!690362 lt!690342))))

(assert (=> b!1778167 (isPrefix!1749 lt!690362 lt!690331)))

(declare-fun lt!690328 () Unit!33852)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!148 (Regex!4837 List!19662 List!19662) Unit!33852)

(assert (=> b!1778167 (= lt!690328 (lemmaNotPrefixMatchThenCannotMatchLonger!148 lt!690343 lt!690362 lt!690331))))

(assert (=> b!1778167 false))

(declare-fun b!1778168 () Bool)

(declare-fun res!801286 () Bool)

(assert (=> b!1778168 (=> (not res!801286) (not e!1138012))))

(assert (=> b!1778168 (= res!801286 (= (rule!5573 token!523) rule!422))))

(declare-fun b!1778169 () Bool)

(declare-fun res!801278 () Bool)

(assert (=> b!1778169 (=> res!801278 e!1138017)))

(assert (=> b!1778169 (= res!801278 (not (= lt!690336 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))))))

(declare-fun b!1778170 () Bool)

(declare-fun e!1138006 () Bool)

(declare-fun tp_is_empty!7917 () Bool)

(declare-fun tp!503719 () Bool)

(assert (=> b!1778170 (= e!1138006 (and tp_is_empty!7917 tp!503719))))

(declare-fun b!1778171 () Bool)

(declare-fun e!1138010 () Bool)

(declare-fun tp!503716 () Bool)

(assert (=> b!1778171 (= e!1138010 (and e!1138021 tp!503716))))

(declare-fun e!1138003 () Bool)

(assert (=> b!1778172 (= e!1138003 (and tp!503725 tp!503717))))

(declare-fun b!1778173 () Bool)

(assert (=> b!1778173 (= e!1137994 e!1138004)))

(declare-fun res!801290 () Bool)

(assert (=> b!1778173 (=> res!801290 e!1138004)))

(assert (=> b!1778173 (= res!801290 (not (isPrefix!1749 lt!690331 lt!690342)))))

(assert (=> b!1778173 (isPrefix!1749 lt!690331 (++!5333 lt!690331 (_2!10995 lt!690358)))))

(declare-fun lt!690330 () Unit!33852)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1258 (List!19662 List!19662) Unit!33852)

(assert (=> b!1778173 (= lt!690330 (lemmaConcatTwoListThenFirstIsPrefix!1258 lt!690331 (_2!10995 lt!690358)))))

(assert (=> b!1778173 (= lt!690331 (list!7963 lt!690336))))

(assert (=> b!1778173 (= lt!690336 (charsOf!2158 (_1!10995 lt!690358)))))

(assert (=> b!1778173 e!1138001))

(declare-fun res!801274 () Bool)

(assert (=> b!1778173 (=> (not res!801274) (not e!1138001))))

(declare-fun isDefined!3384 (Option!4041) Bool)

(assert (=> b!1778173 (= res!801274 (isDefined!3384 lt!690359))))

(declare-fun getRuleFromTag!557 (LexerInterface!3138 List!19663 String!22327) Option!4041)

(assert (=> b!1778173 (= lt!690359 (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 (_1!10995 lt!690358)))))))

(declare-fun lt!690352 () Unit!33852)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!557 (LexerInterface!3138 List!19663 List!19662 Token!6584) Unit!33852)

(assert (=> b!1778173 (= lt!690352 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!557 thiss!24550 rules!3447 lt!690342 (_1!10995 lt!690358)))))

(assert (=> b!1778173 (= lt!690358 (get!6012 lt!690340))))

(declare-fun lt!690335 () Unit!33852)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!660 (LexerInterface!3138 List!19663 List!19662 List!19662) Unit!33852)

(assert (=> b!1778173 (= lt!690335 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!660 thiss!24550 rules!3447 lt!690326 suffix!1421))))

(assert (=> b!1778173 (= lt!690340 (maxPrefix!1692 thiss!24550 rules!3447 lt!690342))))

(assert (=> b!1778173 (isPrefix!1749 lt!690326 lt!690342)))

(declare-fun lt!690338 () Unit!33852)

(assert (=> b!1778173 (= lt!690338 (lemmaConcatTwoListThenFirstIsPrefix!1258 lt!690326 suffix!1421))))

(assert (=> b!1778173 (= lt!690342 (++!5333 lt!690326 suffix!1421))))

(declare-fun b!1778174 () Bool)

(declare-fun e!1138014 () Bool)

(declare-fun tp!503720 () Bool)

(assert (=> b!1778174 (= e!1138014 (and tp!503720 (inv!25486 (tag!3899 rule!422)) (inv!25491 (transformation!3509 rule!422)) e!1138003))))

(declare-fun b!1778175 () Bool)

(declare-fun Unit!33857 () Unit!33852)

(assert (=> b!1778175 (= e!1138020 Unit!33857)))

(declare-fun res!801283 () Bool)

(assert (=> start!176694 (=> (not res!801283) (not e!1138009))))

(get-info :version)

(assert (=> start!176694 (= res!801283 ((_ is Lexer!3136) thiss!24550))))

(assert (=> start!176694 e!1138009))

(assert (=> start!176694 e!1138006))

(assert (=> start!176694 e!1138014))

(assert (=> start!176694 true))

(declare-fun e!1137996 () Bool)

(declare-fun inv!25492 (Token!6584) Bool)

(assert (=> start!176694 (and (inv!25492 token!523) e!1137996)))

(assert (=> start!176694 e!1138010))

(assert (=> b!1778153 (= e!1137998 (and tp!503726 tp!503718))))

(declare-fun b!1778176 () Bool)

(declare-fun e!1138005 () Bool)

(assert (=> b!1778176 (= e!1138015 e!1138005)))

(declare-fun res!801273 () Bool)

(assert (=> b!1778176 (=> res!801273 e!1138005)))

(assert (=> b!1778176 (= res!801273 (not (= lt!690365 lt!690363)))))

(declare-fun lt!690357 () Unit!33852)

(assert (=> b!1778176 (= lt!690357 e!1138013)))

(declare-fun c!289349 () Bool)

(assert (=> b!1778176 (= c!289349 (< lt!690365 lt!690363))))

(declare-fun b!1778177 () Bool)

(assert (=> b!1778177 (= e!1138005 (= lt!690355 (size!15568 lt!690326)))))

(declare-fun b!1778178 () Bool)

(declare-fun res!801280 () Bool)

(assert (=> b!1778178 (=> (not res!801280) (not e!1138009))))

(declare-fun contains!3541 (List!19663 Rule!6818) Bool)

(assert (=> b!1778178 (= res!801280 (contains!3541 rules!3447 rule!422))))

(declare-fun tp!503722 () Bool)

(declare-fun b!1778179 () Bool)

(declare-fun inv!21 (TokenValue!3599) Bool)

(assert (=> b!1778179 (= e!1137996 (and (inv!21 (value!109679 token!523)) e!1137995 tp!503722))))

(assert (= (and start!176694 res!801283) b!1778156))

(assert (= (and b!1778156 res!801275) b!1778155))

(assert (= (and b!1778155 res!801291) b!1778178))

(assert (= (and b!1778178 res!801280) b!1778166))

(assert (= (and b!1778166 res!801281) b!1778151))

(assert (= (and b!1778151 res!801292) b!1778149))

(assert (= (and b!1778149 res!801287) b!1778168))

(assert (= (and b!1778168 res!801286) b!1778162))

(assert (= (and b!1778162 (not res!801288)) b!1778164))

(assert (= (and b!1778164 (not res!801271)) b!1778161))

(assert (= (and b!1778161 (not res!801276)) b!1778173))

(assert (= (and b!1778173 res!801274) b!1778165))

(assert (= (and b!1778165 res!801272) b!1778160))

(assert (= (and b!1778173 (not res!801290)) b!1778158))

(assert (= (and b!1778158 (not res!801289)) b!1778157))

(assert (= (and b!1778157 (not res!801279)) b!1778159))

(assert (= (and b!1778159 (not res!801277)) b!1778169))

(assert (= (and b!1778169 (not res!801278)) b!1778145))

(assert (= (and b!1778145 (not res!801282)) b!1778146))

(assert (= (and b!1778146 (not res!801285)) b!1778154))

(assert (= (and b!1778154 c!289348) b!1778167))

(assert (= (and b!1778154 (not c!289348)) b!1778175))

(assert (= (and b!1778154 (not res!801284)) b!1778176))

(assert (= (and b!1778176 c!289349) b!1778147))

(assert (= (and b!1778176 (not c!289349)) b!1778150))

(assert (= (and b!1778176 (not res!801273)) b!1778177))

(assert (= (and start!176694 ((_ is Cons!19592) suffix!1421)) b!1778170))

(assert (= b!1778174 b!1778172))

(assert (= start!176694 b!1778174))

(assert (= b!1778152 b!1778163))

(assert (= b!1778179 b!1778152))

(assert (= start!176694 b!1778179))

(assert (= b!1778148 b!1778153))

(assert (= b!1778171 b!1778148))

(assert (= (and start!176694 ((_ is Cons!19593) rules!3447)) b!1778171))

(declare-fun b_lambda!58123 () Bool)

(assert (=> (not b_lambda!58123) (not b!1778159)))

(declare-fun t!166227 () Bool)

(declare-fun tb!107975 () Bool)

(assert (=> (and b!1778153 (= (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166227) tb!107975))

(declare-fun tp!503729 () Bool)

(declare-fun e!1138034 () Bool)

(declare-fun b!1778195 () Bool)

(declare-fun inv!25493 (Conc!6517) Bool)

(assert (=> b!1778195 (= e!1138034 (and (inv!25493 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))) tp!503729))))

(declare-fun result!129890 () Bool)

(declare-fun inv!25494 (BalanceConc!12978) Bool)

(assert (=> tb!107975 (= result!129890 (and (inv!25494 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))) e!1138034))))

(assert (= tb!107975 b!1778195))

(declare-fun m!2199401 () Bool)

(assert (=> b!1778195 m!2199401))

(declare-fun m!2199403 () Bool)

(assert (=> tb!107975 m!2199403))

(assert (=> b!1778159 t!166227))

(declare-fun b_and!136051 () Bool)

(assert (= b_and!136041 (and (=> t!166227 result!129890) b_and!136051)))

(declare-fun tb!107977 () Bool)

(declare-fun t!166229 () Bool)

(assert (=> (and b!1778163 (= (toChars!4895 (transformation!3509 (rule!5573 token!523))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166229) tb!107977))

(declare-fun result!129894 () Bool)

(assert (= result!129894 result!129890))

(assert (=> b!1778159 t!166229))

(declare-fun b_and!136053 () Bool)

(assert (= b_and!136045 (and (=> t!166229 result!129894) b_and!136053)))

(declare-fun t!166231 () Bool)

(declare-fun tb!107979 () Bool)

(assert (=> (and b!1778172 (= (toChars!4895 (transformation!3509 rule!422)) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166231) tb!107979))

(declare-fun result!129896 () Bool)

(assert (= result!129896 result!129890))

(assert (=> b!1778159 t!166231))

(declare-fun b_and!136055 () Bool)

(assert (= b_and!136049 (and (=> t!166231 result!129896) b_and!136055)))

(declare-fun b_lambda!58125 () Bool)

(assert (=> (not b_lambda!58125) (not b!1778159)))

(declare-fun t!166233 () Bool)

(declare-fun tb!107981 () Bool)

(assert (=> (and b!1778153 (= (toValue!5036 (transformation!3509 (h!24994 rules!3447))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166233) tb!107981))

(declare-fun result!129898 () Bool)

(assert (=> tb!107981 (= result!129898 (inv!21 (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))

(declare-fun m!2199405 () Bool)

(assert (=> tb!107981 m!2199405))

(assert (=> b!1778159 t!166233))

(declare-fun b_and!136057 () Bool)

(assert (= b_and!136039 (and (=> t!166233 result!129898) b_and!136057)))

(declare-fun tb!107983 () Bool)

(declare-fun t!166235 () Bool)

(assert (=> (and b!1778163 (= (toValue!5036 (transformation!3509 (rule!5573 token!523))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166235) tb!107983))

(declare-fun result!129902 () Bool)

(assert (= result!129902 result!129898))

(assert (=> b!1778159 t!166235))

(declare-fun b_and!136059 () Bool)

(assert (= b_and!136043 (and (=> t!166235 result!129902) b_and!136059)))

(declare-fun tb!107985 () Bool)

(declare-fun t!166237 () Bool)

(assert (=> (and b!1778172 (= (toValue!5036 (transformation!3509 rule!422)) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166237) tb!107985))

(declare-fun result!129904 () Bool)

(assert (= result!129904 result!129898))

(assert (=> b!1778159 t!166237))

(declare-fun b_and!136061 () Bool)

(assert (= b_and!136047 (and (=> t!166237 result!129904) b_and!136061)))

(declare-fun b_lambda!58127 () Bool)

(assert (=> (not b_lambda!58127) (not b!1778169)))

(declare-fun t!166239 () Bool)

(declare-fun tb!107987 () Bool)

(assert (=> (and b!1778153 (= (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166239) tb!107987))

(declare-fun b!1778198 () Bool)

(declare-fun e!1138038 () Bool)

(declare-fun tp!503730 () Bool)

(assert (=> b!1778198 (= e!1138038 (and (inv!25493 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))) tp!503730))))

(declare-fun result!129906 () Bool)

(assert (=> tb!107987 (= result!129906 (and (inv!25494 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))) e!1138038))))

(assert (= tb!107987 b!1778198))

(declare-fun m!2199407 () Bool)

(assert (=> b!1778198 m!2199407))

(declare-fun m!2199409 () Bool)

(assert (=> tb!107987 m!2199409))

(assert (=> b!1778169 t!166239))

(declare-fun b_and!136063 () Bool)

(assert (= b_and!136051 (and (=> t!166239 result!129906) b_and!136063)))

(declare-fun tb!107989 () Bool)

(declare-fun t!166241 () Bool)

(assert (=> (and b!1778163 (= (toChars!4895 (transformation!3509 (rule!5573 token!523))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166241) tb!107989))

(declare-fun result!129908 () Bool)

(assert (= result!129908 result!129906))

(assert (=> b!1778169 t!166241))

(declare-fun b_and!136065 () Bool)

(assert (= b_and!136053 (and (=> t!166241 result!129908) b_and!136065)))

(declare-fun tb!107991 () Bool)

(declare-fun t!166243 () Bool)

(assert (=> (and b!1778172 (= (toChars!4895 (transformation!3509 rule!422)) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166243) tb!107991))

(declare-fun result!129910 () Bool)

(assert (= result!129910 result!129906))

(assert (=> b!1778169 t!166243))

(declare-fun b_and!136067 () Bool)

(assert (= b_and!136055 (and (=> t!166243 result!129910) b_and!136067)))

(declare-fun m!2199411 () Bool)

(assert (=> b!1778154 m!2199411))

(declare-fun m!2199413 () Bool)

(assert (=> b!1778154 m!2199413))

(declare-fun m!2199415 () Bool)

(assert (=> b!1778154 m!2199415))

(declare-fun m!2199417 () Bool)

(assert (=> b!1778148 m!2199417))

(declare-fun m!2199419 () Bool)

(assert (=> b!1778148 m!2199419))

(declare-fun m!2199421 () Bool)

(assert (=> b!1778152 m!2199421))

(declare-fun m!2199423 () Bool)

(assert (=> b!1778152 m!2199423))

(declare-fun m!2199425 () Bool)

(assert (=> b!1778173 m!2199425))

(declare-fun m!2199427 () Bool)

(assert (=> b!1778173 m!2199427))

(declare-fun m!2199429 () Bool)

(assert (=> b!1778173 m!2199429))

(declare-fun m!2199431 () Bool)

(assert (=> b!1778173 m!2199431))

(declare-fun m!2199433 () Bool)

(assert (=> b!1778173 m!2199433))

(declare-fun m!2199435 () Bool)

(assert (=> b!1778173 m!2199435))

(declare-fun m!2199437 () Bool)

(assert (=> b!1778173 m!2199437))

(declare-fun m!2199439 () Bool)

(assert (=> b!1778173 m!2199439))

(declare-fun m!2199441 () Bool)

(assert (=> b!1778173 m!2199441))

(declare-fun m!2199443 () Bool)

(assert (=> b!1778173 m!2199443))

(assert (=> b!1778173 m!2199439))

(declare-fun m!2199445 () Bool)

(assert (=> b!1778173 m!2199445))

(declare-fun m!2199447 () Bool)

(assert (=> b!1778173 m!2199447))

(declare-fun m!2199449 () Bool)

(assert (=> b!1778173 m!2199449))

(declare-fun m!2199451 () Bool)

(assert (=> b!1778173 m!2199451))

(declare-fun m!2199453 () Bool)

(assert (=> b!1778173 m!2199453))

(declare-fun m!2199455 () Bool)

(assert (=> start!176694 m!2199455))

(declare-fun m!2199457 () Bool)

(assert (=> b!1778145 m!2199457))

(assert (=> b!1778145 m!2199457))

(declare-fun m!2199459 () Bool)

(assert (=> b!1778145 m!2199459))

(declare-fun m!2199461 () Bool)

(assert (=> b!1778145 m!2199461))

(declare-fun m!2199463 () Bool)

(assert (=> b!1778145 m!2199463))

(declare-fun m!2199465 () Bool)

(assert (=> b!1778145 m!2199465))

(declare-fun m!2199467 () Bool)

(assert (=> b!1778149 m!2199467))

(declare-fun m!2199469 () Bool)

(assert (=> b!1778179 m!2199469))

(declare-fun m!2199471 () Bool)

(assert (=> b!1778146 m!2199471))

(declare-fun m!2199473 () Bool)

(assert (=> b!1778146 m!2199473))

(declare-fun m!2199475 () Bool)

(assert (=> b!1778146 m!2199475))

(declare-fun m!2199477 () Bool)

(assert (=> b!1778146 m!2199477))

(declare-fun m!2199479 () Bool)

(assert (=> b!1778146 m!2199479))

(declare-fun m!2199481 () Bool)

(assert (=> b!1778146 m!2199481))

(assert (=> b!1778146 m!2199479))

(declare-fun m!2199483 () Bool)

(assert (=> b!1778146 m!2199483))

(declare-fun m!2199485 () Bool)

(assert (=> b!1778166 m!2199485))

(declare-fun m!2199487 () Bool)

(assert (=> b!1778166 m!2199487))

(declare-fun m!2199489 () Bool)

(assert (=> b!1778166 m!2199489))

(declare-fun m!2199491 () Bool)

(assert (=> b!1778166 m!2199491))

(declare-fun m!2199493 () Bool)

(assert (=> b!1778157 m!2199493))

(declare-fun m!2199495 () Bool)

(assert (=> b!1778157 m!2199495))

(declare-fun m!2199497 () Bool)

(assert (=> b!1778156 m!2199497))

(declare-fun m!2199499 () Bool)

(assert (=> b!1778169 m!2199499))

(declare-fun m!2199501 () Bool)

(assert (=> b!1778147 m!2199501))

(declare-fun m!2199503 () Bool)

(assert (=> b!1778167 m!2199503))

(declare-fun m!2199505 () Bool)

(assert (=> b!1778167 m!2199505))

(assert (=> b!1778167 m!2199503))

(declare-fun m!2199507 () Bool)

(assert (=> b!1778167 m!2199507))

(declare-fun m!2199509 () Bool)

(assert (=> b!1778167 m!2199509))

(declare-fun m!2199511 () Bool)

(assert (=> b!1778167 m!2199511))

(declare-fun m!2199513 () Bool)

(assert (=> b!1778167 m!2199513))

(declare-fun m!2199515 () Bool)

(assert (=> b!1778167 m!2199515))

(declare-fun m!2199517 () Bool)

(assert (=> b!1778167 m!2199517))

(declare-fun m!2199519 () Bool)

(assert (=> b!1778167 m!2199519))

(declare-fun m!2199521 () Bool)

(assert (=> b!1778167 m!2199521))

(declare-fun m!2199523 () Bool)

(assert (=> b!1778167 m!2199523))

(declare-fun m!2199525 () Bool)

(assert (=> b!1778161 m!2199525))

(declare-fun m!2199527 () Bool)

(assert (=> b!1778161 m!2199527))

(declare-fun m!2199529 () Bool)

(assert (=> b!1778161 m!2199529))

(declare-fun m!2199531 () Bool)

(assert (=> b!1778161 m!2199531))

(declare-fun m!2199533 () Bool)

(assert (=> b!1778158 m!2199533))

(declare-fun m!2199535 () Bool)

(assert (=> b!1778177 m!2199535))

(declare-fun m!2199537 () Bool)

(assert (=> b!1778151 m!2199537))

(declare-fun m!2199539 () Bool)

(assert (=> b!1778162 m!2199539))

(declare-fun m!2199541 () Bool)

(assert (=> b!1778162 m!2199541))

(declare-fun m!2199543 () Bool)

(assert (=> b!1778162 m!2199543))

(assert (=> b!1778165 m!2199451))

(assert (=> b!1778165 m!2199451))

(declare-fun m!2199545 () Bool)

(assert (=> b!1778165 m!2199545))

(assert (=> b!1778165 m!2199545))

(declare-fun m!2199547 () Bool)

(assert (=> b!1778165 m!2199547))

(declare-fun m!2199549 () Bool)

(assert (=> b!1778165 m!2199549))

(declare-fun m!2199551 () Bool)

(assert (=> b!1778178 m!2199551))

(declare-fun m!2199553 () Bool)

(assert (=> b!1778164 m!2199553))

(declare-fun m!2199555 () Bool)

(assert (=> b!1778174 m!2199555))

(declare-fun m!2199557 () Bool)

(assert (=> b!1778174 m!2199557))

(declare-fun m!2199559 () Bool)

(assert (=> b!1778155 m!2199559))

(declare-fun m!2199561 () Bool)

(assert (=> b!1778159 m!2199561))

(assert (=> b!1778159 m!2199561))

(declare-fun m!2199563 () Bool)

(assert (=> b!1778159 m!2199563))

(assert (=> b!1778159 m!2199563))

(declare-fun m!2199565 () Bool)

(assert (=> b!1778159 m!2199565))

(declare-fun m!2199567 () Bool)

(assert (=> b!1778159 m!2199567))

(check-sat (not b!1778174) (not b!1778157) b_and!136065 b_and!136067 (not b!1778173) (not b!1778171) tp_is_empty!7917 (not b!1778154) (not tb!107981) (not b_next!50047) (not b_next!50045) (not b!1778178) (not b!1778155) (not b_next!50041) (not b!1778164) (not tb!107987) b_and!136057 (not b!1778198) (not b!1778162) (not b!1778148) (not b!1778152) (not b!1778161) b_and!136059 (not b!1778165) (not b!1778156) (not b!1778166) (not start!176694) (not b!1778195) (not b_next!50043) (not b_next!50039) (not b!1778146) (not b!1778167) (not b!1778170) (not b!1778159) (not b!1778177) (not tb!107975) (not b_lambda!58127) (not b!1778145) (not b_lambda!58123) b_and!136063 (not b!1778158) b_and!136061 (not b_next!50049) (not b!1778151) (not b_lambda!58125) (not b!1778179) (not b!1778149) (not b!1778147))
(check-sat b_and!136065 (not b_next!50041) b_and!136057 b_and!136067 b_and!136059 b_and!136063 (not b_next!50047) (not b_next!50045) (not b_next!50043) (not b_next!50039) b_and!136061 (not b_next!50049))
(get-model)

(declare-fun d!543039 () Bool)

(declare-fun res!801327 () Bool)

(declare-fun e!1138079 () Bool)

(assert (=> d!543039 (=> (not res!801327) (not e!1138079))))

(declare-fun rulesValid!1325 (LexerInterface!3138 List!19663) Bool)

(assert (=> d!543039 (= res!801327 (rulesValid!1325 thiss!24550 rules!3447))))

(assert (=> d!543039 (= (rulesInvariant!2807 thiss!24550 rules!3447) e!1138079)))

(declare-fun b!1778268 () Bool)

(declare-datatypes ((List!19664 0))(
  ( (Nil!19594) (Cons!19594 (h!24995 String!22327) (t!166307 List!19664)) )
))
(declare-fun noDuplicateTag!1325 (LexerInterface!3138 List!19663 List!19664) Bool)

(assert (=> b!1778268 (= e!1138079 (noDuplicateTag!1325 thiss!24550 rules!3447 Nil!19594))))

(assert (= (and d!543039 res!801327) b!1778268))

(declare-fun m!2199605 () Bool)

(assert (=> d!543039 m!2199605))

(declare-fun m!2199607 () Bool)

(assert (=> b!1778268 m!2199607))

(assert (=> b!1778155 d!543039))

(declare-fun d!543047 () Bool)

(declare-fun isBalanced!2037 (Conc!6517) Bool)

(assert (=> d!543047 (= (inv!25494 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))) (isBalanced!2037 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))))

(declare-fun bs!405025 () Bool)

(assert (= bs!405025 d!543047))

(declare-fun m!2199615 () Bool)

(assert (=> bs!405025 m!2199615))

(assert (=> tb!107975 d!543047))

(declare-fun d!543053 () Bool)

(declare-fun lt!690378 () Int)

(assert (=> d!543053 (= lt!690378 (size!15568 (list!7963 lt!690350)))))

(declare-fun size!15569 (Conc!6517) Int)

(assert (=> d!543053 (= lt!690378 (size!15569 (c!289351 lt!690350)))))

(assert (=> d!543053 (= (size!15567 lt!690350) lt!690378)))

(declare-fun bs!405026 () Bool)

(assert (= bs!405026 d!543053))

(assert (=> bs!405026 m!2199489))

(assert (=> bs!405026 m!2199489))

(declare-fun m!2199617 () Bool)

(assert (=> bs!405026 m!2199617))

(declare-fun m!2199619 () Bool)

(assert (=> bs!405026 m!2199619))

(assert (=> b!1778154 d!543053))

(declare-fun b!1778316 () Bool)

(declare-fun e!1138102 () Bool)

(declare-fun e!1138104 () Bool)

(assert (=> b!1778316 (= e!1138102 e!1138104)))

(declare-fun res!801361 () Bool)

(assert (=> b!1778316 (=> (not res!801361) (not e!1138104))))

(declare-fun lt!690391 () Bool)

(assert (=> b!1778316 (= res!801361 (not lt!690391))))

(declare-fun b!1778317 () Bool)

(declare-fun e!1138105 () Bool)

(declare-fun derivativeStep!1254 (Regex!4837 C!9848) Regex!4837)

(declare-fun tail!2661 (List!19662) List!19662)

(assert (=> b!1778317 (= e!1138105 (matchR!2310 (derivativeStep!1254 lt!690343 (head!4150 lt!690326)) (tail!2661 lt!690326)))))

(declare-fun b!1778318 () Bool)

(declare-fun res!801363 () Bool)

(assert (=> b!1778318 (=> res!801363 e!1138102)))

(assert (=> b!1778318 (= res!801363 (not ((_ is ElementMatch!4837) lt!690343)))))

(declare-fun e!1138106 () Bool)

(assert (=> b!1778318 (= e!1138106 e!1138102)))

(declare-fun b!1778319 () Bool)

(declare-fun res!801365 () Bool)

(declare-fun e!1138103 () Bool)

(assert (=> b!1778319 (=> (not res!801365) (not e!1138103))))

(assert (=> b!1778319 (= res!801365 (isEmpty!12378 (tail!2661 lt!690326)))))

(declare-fun b!1778320 () Bool)

(assert (=> b!1778320 (= e!1138106 (not lt!690391))))

(declare-fun b!1778321 () Bool)

(declare-fun res!801366 () Bool)

(declare-fun e!1138107 () Bool)

(assert (=> b!1778321 (=> res!801366 e!1138107)))

(assert (=> b!1778321 (= res!801366 (not (isEmpty!12378 (tail!2661 lt!690326))))))

(declare-fun b!1778322 () Bool)

(assert (=> b!1778322 (= e!1138107 (not (= (head!4150 lt!690326) (c!289350 lt!690343))))))

(declare-fun d!543055 () Bool)

(declare-fun e!1138101 () Bool)

(assert (=> d!543055 e!1138101))

(declare-fun c!289376 () Bool)

(assert (=> d!543055 (= c!289376 ((_ is EmptyExpr!4837) lt!690343))))

(assert (=> d!543055 (= lt!690391 e!1138105)))

(declare-fun c!289377 () Bool)

(assert (=> d!543055 (= c!289377 (isEmpty!12378 lt!690326))))

(declare-fun validRegex!1959 (Regex!4837) Bool)

(assert (=> d!543055 (validRegex!1959 lt!690343)))

(assert (=> d!543055 (= (matchR!2310 lt!690343 lt!690326) lt!690391)))

(declare-fun b!1778323 () Bool)

(declare-fun nullable!1485 (Regex!4837) Bool)

(assert (=> b!1778323 (= e!1138105 (nullable!1485 lt!690343))))

(declare-fun b!1778324 () Bool)

(assert (=> b!1778324 (= e!1138104 e!1138107)))

(declare-fun res!801362 () Bool)

(assert (=> b!1778324 (=> res!801362 e!1138107)))

(declare-fun call!111238 () Bool)

(assert (=> b!1778324 (= res!801362 call!111238)))

(declare-fun b!1778325 () Bool)

(assert (=> b!1778325 (= e!1138101 e!1138106)))

(declare-fun c!289378 () Bool)

(assert (=> b!1778325 (= c!289378 ((_ is EmptyLang!4837) lt!690343))))

(declare-fun b!1778326 () Bool)

(assert (=> b!1778326 (= e!1138101 (= lt!690391 call!111238))))

(declare-fun bm!111233 () Bool)

(assert (=> bm!111233 (= call!111238 (isEmpty!12378 lt!690326))))

(declare-fun b!1778327 () Bool)

(declare-fun res!801359 () Bool)

(assert (=> b!1778327 (=> (not res!801359) (not e!1138103))))

(assert (=> b!1778327 (= res!801359 (not call!111238))))

(declare-fun b!1778328 () Bool)

(assert (=> b!1778328 (= e!1138103 (= (head!4150 lt!690326) (c!289350 lt!690343)))))

(declare-fun b!1778329 () Bool)

(declare-fun res!801360 () Bool)

(assert (=> b!1778329 (=> res!801360 e!1138102)))

(assert (=> b!1778329 (= res!801360 e!1138103)))

(declare-fun res!801364 () Bool)

(assert (=> b!1778329 (=> (not res!801364) (not e!1138103))))

(assert (=> b!1778329 (= res!801364 lt!690391)))

(assert (= (and d!543055 c!289377) b!1778323))

(assert (= (and d!543055 (not c!289377)) b!1778317))

(assert (= (and d!543055 c!289376) b!1778326))

(assert (= (and d!543055 (not c!289376)) b!1778325))

(assert (= (and b!1778325 c!289378) b!1778320))

(assert (= (and b!1778325 (not c!289378)) b!1778318))

(assert (= (and b!1778318 (not res!801363)) b!1778329))

(assert (= (and b!1778329 res!801364) b!1778327))

(assert (= (and b!1778327 res!801359) b!1778319))

(assert (= (and b!1778319 res!801365) b!1778328))

(assert (= (and b!1778329 (not res!801360)) b!1778316))

(assert (= (and b!1778316 res!801361) b!1778324))

(assert (= (and b!1778324 (not res!801362)) b!1778321))

(assert (= (and b!1778321 (not res!801366)) b!1778322))

(assert (= (or b!1778326 b!1778327 b!1778324) bm!111233))

(declare-fun m!2199621 () Bool)

(assert (=> b!1778323 m!2199621))

(declare-fun m!2199623 () Bool)

(assert (=> b!1778319 m!2199623))

(assert (=> b!1778319 m!2199623))

(declare-fun m!2199625 () Bool)

(assert (=> b!1778319 m!2199625))

(declare-fun m!2199627 () Bool)

(assert (=> b!1778322 m!2199627))

(declare-fun m!2199629 () Bool)

(assert (=> d!543055 m!2199629))

(declare-fun m!2199631 () Bool)

(assert (=> d!543055 m!2199631))

(assert (=> b!1778317 m!2199627))

(assert (=> b!1778317 m!2199627))

(declare-fun m!2199633 () Bool)

(assert (=> b!1778317 m!2199633))

(assert (=> b!1778317 m!2199623))

(assert (=> b!1778317 m!2199633))

(assert (=> b!1778317 m!2199623))

(declare-fun m!2199635 () Bool)

(assert (=> b!1778317 m!2199635))

(assert (=> bm!111233 m!2199629))

(assert (=> b!1778328 m!2199627))

(assert (=> b!1778321 m!2199623))

(assert (=> b!1778321 m!2199623))

(assert (=> b!1778321 m!2199625))

(assert (=> b!1778154 d!543055))

(declare-fun d!543057 () Bool)

(assert (=> d!543057 (matchR!2310 (rulesRegex!865 thiss!24550 rules!3447) (list!7963 (charsOf!2158 token!523)))))

(declare-fun lt!690405 () Unit!33852)

(declare-fun choose!11117 (LexerInterface!3138 List!19663 List!19662 Token!6584 Rule!6818 List!19662) Unit!33852)

(assert (=> d!543057 (= lt!690405 (choose!11117 thiss!24550 rules!3447 lt!690326 token!523 rule!422 Nil!19592))))

(assert (=> d!543057 (not (isEmpty!12379 rules!3447))))

(assert (=> d!543057 (= (lemmaMaxPrefixThenMatchesRulesRegex!216 thiss!24550 rules!3447 lt!690326 token!523 rule!422 Nil!19592) lt!690405)))

(declare-fun bs!405029 () Bool)

(assert (= bs!405029 d!543057))

(assert (=> bs!405029 m!2199497))

(assert (=> bs!405029 m!2199491))

(assert (=> bs!405029 m!2199531))

(declare-fun m!2199717 () Bool)

(assert (=> bs!405029 m!2199717))

(declare-fun m!2199719 () Bool)

(assert (=> bs!405029 m!2199719))

(declare-fun m!2199721 () Bool)

(assert (=> bs!405029 m!2199721))

(assert (=> bs!405029 m!2199491))

(assert (=> bs!405029 m!2199717))

(assert (=> bs!405029 m!2199531))

(assert (=> b!1778154 d!543057))

(declare-fun b!1778362 () Bool)

(declare-fun e!1138124 () Bool)

(declare-fun inv!17 (TokenValue!3599) Bool)

(assert (=> b!1778362 (= e!1138124 (inv!17 (value!109679 token!523)))))

(declare-fun b!1778363 () Bool)

(declare-fun res!801386 () Bool)

(declare-fun e!1138126 () Bool)

(assert (=> b!1778363 (=> res!801386 e!1138126)))

(assert (=> b!1778363 (= res!801386 (not ((_ is IntegerValue!10799) (value!109679 token!523))))))

(assert (=> b!1778363 (= e!1138124 e!1138126)))

(declare-fun b!1778364 () Bool)

(declare-fun inv!15 (TokenValue!3599) Bool)

(assert (=> b!1778364 (= e!1138126 (inv!15 (value!109679 token!523)))))

(declare-fun d!543071 () Bool)

(declare-fun c!289385 () Bool)

(assert (=> d!543071 (= c!289385 ((_ is IntegerValue!10797) (value!109679 token!523)))))

(declare-fun e!1138125 () Bool)

(assert (=> d!543071 (= (inv!21 (value!109679 token!523)) e!1138125)))

(declare-fun b!1778365 () Bool)

(assert (=> b!1778365 (= e!1138125 e!1138124)))

(declare-fun c!289386 () Bool)

(assert (=> b!1778365 (= c!289386 ((_ is IntegerValue!10798) (value!109679 token!523)))))

(declare-fun b!1778366 () Bool)

(declare-fun inv!16 (TokenValue!3599) Bool)

(assert (=> b!1778366 (= e!1138125 (inv!16 (value!109679 token!523)))))

(assert (= (and d!543071 c!289385) b!1778366))

(assert (= (and d!543071 (not c!289385)) b!1778365))

(assert (= (and b!1778365 c!289386) b!1778362))

(assert (= (and b!1778365 (not c!289386)) b!1778363))

(assert (= (and b!1778363 (not res!801386)) b!1778364))

(declare-fun m!2199727 () Bool)

(assert (=> b!1778362 m!2199727))

(declare-fun m!2199729 () Bool)

(assert (=> b!1778364 m!2199729))

(declare-fun m!2199731 () Bool)

(assert (=> b!1778366 m!2199731))

(assert (=> b!1778179 d!543071))

(declare-fun b!1778367 () Bool)

(declare-fun e!1138127 () Bool)

(assert (=> b!1778367 (= e!1138127 (inv!17 (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))

(declare-fun b!1778368 () Bool)

(declare-fun res!801387 () Bool)

(declare-fun e!1138129 () Bool)

(assert (=> b!1778368 (=> res!801387 e!1138129)))

(assert (=> b!1778368 (= res!801387 (not ((_ is IntegerValue!10799) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))))

(assert (=> b!1778368 (= e!1138127 e!1138129)))

(declare-fun b!1778369 () Bool)

(assert (=> b!1778369 (= e!1138129 (inv!15 (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))

(declare-fun d!543075 () Bool)

(declare-fun c!289387 () Bool)

(assert (=> d!543075 (= c!289387 ((_ is IntegerValue!10797) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))

(declare-fun e!1138128 () Bool)

(assert (=> d!543075 (= (inv!21 (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)) e!1138128)))

(declare-fun b!1778370 () Bool)

(assert (=> b!1778370 (= e!1138128 e!1138127)))

(declare-fun c!289388 () Bool)

(assert (=> b!1778370 (= c!289388 ((_ is IntegerValue!10798) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))

(declare-fun b!1778371 () Bool)

(assert (=> b!1778371 (= e!1138128 (inv!16 (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))

(assert (= (and d!543075 c!289387) b!1778371))

(assert (= (and d!543075 (not c!289387)) b!1778370))

(assert (= (and b!1778370 c!289388) b!1778367))

(assert (= (and b!1778370 (not c!289388)) b!1778368))

(assert (= (and b!1778368 (not res!801387)) b!1778369))

(declare-fun m!2199733 () Bool)

(assert (=> b!1778367 m!2199733))

(declare-fun m!2199735 () Bool)

(assert (=> b!1778369 m!2199735))

(declare-fun m!2199737 () Bool)

(assert (=> b!1778371 m!2199737))

(assert (=> tb!107981 d!543075))

(declare-fun b!1778372 () Bool)

(declare-fun e!1138131 () Bool)

(declare-fun e!1138133 () Bool)

(assert (=> b!1778372 (= e!1138131 e!1138133)))

(declare-fun res!801390 () Bool)

(assert (=> b!1778372 (=> (not res!801390) (not e!1138133))))

(declare-fun lt!690409 () Bool)

(assert (=> b!1778372 (= res!801390 (not lt!690409))))

(declare-fun b!1778373 () Bool)

(declare-fun e!1138134 () Bool)

(assert (=> b!1778373 (= e!1138134 (matchR!2310 (derivativeStep!1254 (regex!3509 (rule!5573 (_1!10995 lt!690358))) (head!4150 lt!690331)) (tail!2661 lt!690331)))))

(declare-fun b!1778374 () Bool)

(declare-fun res!801392 () Bool)

(assert (=> b!1778374 (=> res!801392 e!1138131)))

(assert (=> b!1778374 (= res!801392 (not ((_ is ElementMatch!4837) (regex!3509 (rule!5573 (_1!10995 lt!690358))))))))

(declare-fun e!1138135 () Bool)

(assert (=> b!1778374 (= e!1138135 e!1138131)))

(declare-fun b!1778375 () Bool)

(declare-fun res!801394 () Bool)

(declare-fun e!1138132 () Bool)

(assert (=> b!1778375 (=> (not res!801394) (not e!1138132))))

(assert (=> b!1778375 (= res!801394 (isEmpty!12378 (tail!2661 lt!690331)))))

(declare-fun b!1778376 () Bool)

(assert (=> b!1778376 (= e!1138135 (not lt!690409))))

(declare-fun b!1778377 () Bool)

(declare-fun res!801395 () Bool)

(declare-fun e!1138136 () Bool)

(assert (=> b!1778377 (=> res!801395 e!1138136)))

(assert (=> b!1778377 (= res!801395 (not (isEmpty!12378 (tail!2661 lt!690331))))))

(declare-fun b!1778378 () Bool)

(assert (=> b!1778378 (= e!1138136 (not (= (head!4150 lt!690331) (c!289350 (regex!3509 (rule!5573 (_1!10995 lt!690358)))))))))

(declare-fun d!543077 () Bool)

(declare-fun e!1138130 () Bool)

(assert (=> d!543077 e!1138130))

(declare-fun c!289389 () Bool)

(assert (=> d!543077 (= c!289389 ((_ is EmptyExpr!4837) (regex!3509 (rule!5573 (_1!10995 lt!690358)))))))

(assert (=> d!543077 (= lt!690409 e!1138134)))

(declare-fun c!289390 () Bool)

(assert (=> d!543077 (= c!289390 (isEmpty!12378 lt!690331))))

(assert (=> d!543077 (validRegex!1959 (regex!3509 (rule!5573 (_1!10995 lt!690358))))))

(assert (=> d!543077 (= (matchR!2310 (regex!3509 (rule!5573 (_1!10995 lt!690358))) lt!690331) lt!690409)))

(declare-fun b!1778379 () Bool)

(assert (=> b!1778379 (= e!1138134 (nullable!1485 (regex!3509 (rule!5573 (_1!10995 lt!690358)))))))

(declare-fun b!1778380 () Bool)

(assert (=> b!1778380 (= e!1138133 e!1138136)))

(declare-fun res!801391 () Bool)

(assert (=> b!1778380 (=> res!801391 e!1138136)))

(declare-fun call!111241 () Bool)

(assert (=> b!1778380 (= res!801391 call!111241)))

(declare-fun b!1778381 () Bool)

(assert (=> b!1778381 (= e!1138130 e!1138135)))

(declare-fun c!289391 () Bool)

(assert (=> b!1778381 (= c!289391 ((_ is EmptyLang!4837) (regex!3509 (rule!5573 (_1!10995 lt!690358)))))))

(declare-fun b!1778382 () Bool)

(assert (=> b!1778382 (= e!1138130 (= lt!690409 call!111241))))

(declare-fun bm!111236 () Bool)

(assert (=> bm!111236 (= call!111241 (isEmpty!12378 lt!690331))))

(declare-fun b!1778383 () Bool)

(declare-fun res!801388 () Bool)

(assert (=> b!1778383 (=> (not res!801388) (not e!1138132))))

(assert (=> b!1778383 (= res!801388 (not call!111241))))

(declare-fun b!1778384 () Bool)

(assert (=> b!1778384 (= e!1138132 (= (head!4150 lt!690331) (c!289350 (regex!3509 (rule!5573 (_1!10995 lt!690358))))))))

(declare-fun b!1778385 () Bool)

(declare-fun res!801389 () Bool)

(assert (=> b!1778385 (=> res!801389 e!1138131)))

(assert (=> b!1778385 (= res!801389 e!1138132)))

(declare-fun res!801393 () Bool)

(assert (=> b!1778385 (=> (not res!801393) (not e!1138132))))

(assert (=> b!1778385 (= res!801393 lt!690409)))

(assert (= (and d!543077 c!289390) b!1778379))

(assert (= (and d!543077 (not c!289390)) b!1778373))

(assert (= (and d!543077 c!289389) b!1778382))

(assert (= (and d!543077 (not c!289389)) b!1778381))

(assert (= (and b!1778381 c!289391) b!1778376))

(assert (= (and b!1778381 (not c!289391)) b!1778374))

(assert (= (and b!1778374 (not res!801392)) b!1778385))

(assert (= (and b!1778385 res!801393) b!1778383))

(assert (= (and b!1778383 res!801388) b!1778375))

(assert (= (and b!1778375 res!801394) b!1778384))

(assert (= (and b!1778385 (not res!801389)) b!1778372))

(assert (= (and b!1778372 res!801390) b!1778380))

(assert (= (and b!1778380 (not res!801391)) b!1778377))

(assert (= (and b!1778377 (not res!801395)) b!1778378))

(assert (= (or b!1778382 b!1778383 b!1778380) bm!111236))

(declare-fun m!2199739 () Bool)

(assert (=> b!1778379 m!2199739))

(declare-fun m!2199741 () Bool)

(assert (=> b!1778375 m!2199741))

(assert (=> b!1778375 m!2199741))

(declare-fun m!2199743 () Bool)

(assert (=> b!1778375 m!2199743))

(declare-fun m!2199745 () Bool)

(assert (=> b!1778378 m!2199745))

(declare-fun m!2199747 () Bool)

(assert (=> d!543077 m!2199747))

(declare-fun m!2199749 () Bool)

(assert (=> d!543077 m!2199749))

(assert (=> b!1778373 m!2199745))

(assert (=> b!1778373 m!2199745))

(declare-fun m!2199751 () Bool)

(assert (=> b!1778373 m!2199751))

(assert (=> b!1778373 m!2199741))

(assert (=> b!1778373 m!2199751))

(assert (=> b!1778373 m!2199741))

(declare-fun m!2199753 () Bool)

(assert (=> b!1778373 m!2199753))

(assert (=> bm!111236 m!2199747))

(assert (=> b!1778384 m!2199745))

(assert (=> b!1778377 m!2199741))

(assert (=> b!1778377 m!2199741))

(assert (=> b!1778377 m!2199743))

(assert (=> b!1778158 d!543077))

(declare-fun d!543079 () Bool)

(declare-fun choose!11119 (Int) Bool)

(assert (=> d!543079 (= (Forall!876 lambda!70602) (choose!11119 lambda!70602))))

(declare-fun bs!405031 () Bool)

(assert (= bs!405031 d!543079))

(declare-fun m!2199755 () Bool)

(assert (=> bs!405031 m!2199755))

(assert (=> b!1778157 d!543079))

(declare-fun d!543081 () Bool)

(declare-fun e!1138139 () Bool)

(assert (=> d!543081 e!1138139))

(declare-fun res!801398 () Bool)

(assert (=> d!543081 (=> (not res!801398) (not e!1138139))))

(declare-fun semiInverseModEq!1400 (Int Int) Bool)

(assert (=> d!543081 (= res!801398 (semiInverseModEq!1400 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))))))

(declare-fun Unit!33860 () Unit!33852)

(assert (=> d!543081 (= (lemmaInv!708 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) Unit!33860)))

(declare-fun b!1778388 () Bool)

(declare-fun equivClasses!1341 (Int Int) Bool)

(assert (=> b!1778388 (= e!1138139 (equivClasses!1341 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))))))

(assert (= (and d!543081 res!801398) b!1778388))

(declare-fun m!2199757 () Bool)

(assert (=> d!543081 m!2199757))

(declare-fun m!2199759 () Bool)

(assert (=> b!1778388 m!2199759))

(assert (=> b!1778157 d!543081))

(declare-fun d!543083 () Bool)

(declare-fun c!289394 () Bool)

(assert (=> d!543083 (= c!289394 ((_ is Node!6517) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))))))

(declare-fun e!1138144 () Bool)

(assert (=> d!543083 (= (inv!25493 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))) e!1138144)))

(declare-fun b!1778395 () Bool)

(declare-fun inv!25495 (Conc!6517) Bool)

(assert (=> b!1778395 (= e!1138144 (inv!25495 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))))))

(declare-fun b!1778396 () Bool)

(declare-fun e!1138145 () Bool)

(assert (=> b!1778396 (= e!1138144 e!1138145)))

(declare-fun res!801401 () Bool)

(assert (=> b!1778396 (= res!801401 (not ((_ is Leaf!9492) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))))))))

(assert (=> b!1778396 (=> res!801401 e!1138145)))

(declare-fun b!1778397 () Bool)

(declare-fun inv!25496 (Conc!6517) Bool)

(assert (=> b!1778397 (= e!1138145 (inv!25496 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))))))

(assert (= (and d!543083 c!289394) b!1778395))

(assert (= (and d!543083 (not c!289394)) b!1778396))

(assert (= (and b!1778396 (not res!801401)) b!1778397))

(declare-fun m!2199761 () Bool)

(assert (=> b!1778395 m!2199761))

(declare-fun m!2199763 () Bool)

(assert (=> b!1778397 m!2199763))

(assert (=> b!1778198 d!543083))

(declare-fun d!543085 () Bool)

(declare-fun lt!690412 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2844 (List!19663) (InoxSet Rule!6818))

(assert (=> d!543085 (= lt!690412 (select (content!2844 rules!3447) rule!422))))

(declare-fun e!1138151 () Bool)

(assert (=> d!543085 (= lt!690412 e!1138151)))

(declare-fun res!801406 () Bool)

(assert (=> d!543085 (=> (not res!801406) (not e!1138151))))

(assert (=> d!543085 (= res!801406 ((_ is Cons!19593) rules!3447))))

(assert (=> d!543085 (= (contains!3541 rules!3447 rule!422) lt!690412)))

(declare-fun b!1778402 () Bool)

(declare-fun e!1138150 () Bool)

(assert (=> b!1778402 (= e!1138151 e!1138150)))

(declare-fun res!801407 () Bool)

(assert (=> b!1778402 (=> res!801407 e!1138150)))

(assert (=> b!1778402 (= res!801407 (= (h!24994 rules!3447) rule!422))))

(declare-fun b!1778403 () Bool)

(assert (=> b!1778403 (= e!1138150 (contains!3541 (t!166246 rules!3447) rule!422))))

(assert (= (and d!543085 res!801406) b!1778402))

(assert (= (and b!1778402 (not res!801407)) b!1778403))

(declare-fun m!2199765 () Bool)

(assert (=> d!543085 m!2199765))

(declare-fun m!2199767 () Bool)

(assert (=> d!543085 m!2199767))

(declare-fun m!2199769 () Bool)

(assert (=> b!1778403 m!2199769))

(assert (=> b!1778178 d!543085))

(declare-fun d!543087 () Bool)

(declare-fun lt!690415 () Int)

(assert (=> d!543087 (>= lt!690415 0)))

(declare-fun e!1138154 () Int)

(assert (=> d!543087 (= lt!690415 e!1138154)))

(declare-fun c!289397 () Bool)

(assert (=> d!543087 (= c!289397 ((_ is Nil!19592) lt!690326))))

(assert (=> d!543087 (= (size!15568 lt!690326) lt!690415)))

(declare-fun b!1778408 () Bool)

(assert (=> b!1778408 (= e!1138154 0)))

(declare-fun b!1778409 () Bool)

(assert (=> b!1778409 (= e!1138154 (+ 1 (size!15568 (t!166245 lt!690326))))))

(assert (= (and d!543087 c!289397) b!1778408))

(assert (= (and d!543087 (not c!289397)) b!1778409))

(declare-fun m!2199771 () Bool)

(assert (=> b!1778409 m!2199771))

(assert (=> b!1778177 d!543087))

(declare-fun d!543089 () Bool)

(assert (=> d!543089 (= (isEmpty!12379 rules!3447) ((_ is Nil!19593) rules!3447))))

(assert (=> b!1778156 d!543089))

(declare-fun d!543091 () Bool)

(declare-fun list!7966 (Conc!6517) List!19662)

(assert (=> d!543091 (= (list!7963 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))) (list!7966 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))))

(declare-fun bs!405032 () Bool)

(assert (= bs!405032 d!543091))

(declare-fun m!2199773 () Bool)

(assert (=> bs!405032 m!2199773))

(assert (=> b!1778159 d!543091))

(declare-fun bs!405033 () Bool)

(declare-fun d!543093 () Bool)

(assert (= bs!405033 (and d!543093 b!1778157)))

(declare-fun lambda!70608 () Int)

(assert (=> bs!405033 (= lambda!70608 lambda!70602)))

(declare-fun b!1778414 () Bool)

(declare-fun e!1138157 () Bool)

(assert (=> b!1778414 (= e!1138157 true)))

(assert (=> d!543093 e!1138157))

(assert (= d!543093 b!1778414))

(assert (=> b!1778414 (< (dynLambda!9594 order!12607 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) (dynLambda!9595 order!12609 lambda!70608))))

(assert (=> b!1778414 (< (dynLambda!9596 order!12611 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) (dynLambda!9595 order!12609 lambda!70608))))

(assert (=> d!543093 (= (list!7963 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))) (list!7963 lt!690336))))

(declare-fun lt!690418 () Unit!33852)

(declare-fun ForallOf!337 (Int BalanceConc!12978) Unit!33852)

(assert (=> d!543093 (= lt!690418 (ForallOf!337 lambda!70608 lt!690336))))

(assert (=> d!543093 (= (lemmaSemiInverse!647 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) lt!690336) lt!690418)))

(declare-fun b_lambda!58137 () Bool)

(assert (=> (not b_lambda!58137) (not d!543093)))

(assert (=> d!543093 t!166227))

(declare-fun b_and!136093 () Bool)

(assert (= b_and!136063 (and (=> t!166227 result!129890) b_and!136093)))

(assert (=> d!543093 t!166229))

(declare-fun b_and!136095 () Bool)

(assert (= b_and!136065 (and (=> t!166229 result!129894) b_and!136095)))

(assert (=> d!543093 t!166231))

(declare-fun b_and!136097 () Bool)

(assert (= b_and!136067 (and (=> t!166231 result!129896) b_and!136097)))

(declare-fun b_lambda!58139 () Bool)

(assert (=> (not b_lambda!58139) (not d!543093)))

(assert (=> d!543093 t!166233))

(declare-fun b_and!136099 () Bool)

(assert (= b_and!136057 (and (=> t!166233 result!129898) b_and!136099)))

(assert (=> d!543093 t!166235))

(declare-fun b_and!136101 () Bool)

(assert (= b_and!136059 (and (=> t!166235 result!129902) b_and!136101)))

(assert (=> d!543093 t!166237))

(declare-fun b_and!136103 () Bool)

(assert (= b_and!136061 (and (=> t!166237 result!129904) b_and!136103)))

(assert (=> d!543093 m!2199563))

(assert (=> d!543093 m!2199565))

(assert (=> d!543093 m!2199561))

(assert (=> d!543093 m!2199563))

(assert (=> d!543093 m!2199427))

(assert (=> d!543093 m!2199561))

(declare-fun m!2199775 () Bool)

(assert (=> d!543093 m!2199775))

(assert (=> b!1778159 d!543093))

(declare-fun b!1778415 () Bool)

(declare-fun e!1138159 () Bool)

(declare-fun e!1138161 () Bool)

(assert (=> b!1778415 (= e!1138159 e!1138161)))

(declare-fun res!801410 () Bool)

(assert (=> b!1778415 (=> (not res!801410) (not e!1138161))))

(declare-fun lt!690419 () Bool)

(assert (=> b!1778415 (= res!801410 (not lt!690419))))

(declare-fun b!1778416 () Bool)

(declare-fun e!1138162 () Bool)

(assert (=> b!1778416 (= e!1138162 (matchR!2310 (derivativeStep!1254 (regex!3509 rule!422) (head!4150 lt!690326)) (tail!2661 lt!690326)))))

(declare-fun b!1778417 () Bool)

(declare-fun res!801412 () Bool)

(assert (=> b!1778417 (=> res!801412 e!1138159)))

(assert (=> b!1778417 (= res!801412 (not ((_ is ElementMatch!4837) (regex!3509 rule!422))))))

(declare-fun e!1138163 () Bool)

(assert (=> b!1778417 (= e!1138163 e!1138159)))

(declare-fun b!1778418 () Bool)

(declare-fun res!801414 () Bool)

(declare-fun e!1138160 () Bool)

(assert (=> b!1778418 (=> (not res!801414) (not e!1138160))))

(assert (=> b!1778418 (= res!801414 (isEmpty!12378 (tail!2661 lt!690326)))))

(declare-fun b!1778419 () Bool)

(assert (=> b!1778419 (= e!1138163 (not lt!690419))))

(declare-fun b!1778420 () Bool)

(declare-fun res!801415 () Bool)

(declare-fun e!1138164 () Bool)

(assert (=> b!1778420 (=> res!801415 e!1138164)))

(assert (=> b!1778420 (= res!801415 (not (isEmpty!12378 (tail!2661 lt!690326))))))

(declare-fun b!1778421 () Bool)

(assert (=> b!1778421 (= e!1138164 (not (= (head!4150 lt!690326) (c!289350 (regex!3509 rule!422)))))))

(declare-fun d!543095 () Bool)

(declare-fun e!1138158 () Bool)

(assert (=> d!543095 e!1138158))

(declare-fun c!289399 () Bool)

(assert (=> d!543095 (= c!289399 ((_ is EmptyExpr!4837) (regex!3509 rule!422)))))

(assert (=> d!543095 (= lt!690419 e!1138162)))

(declare-fun c!289400 () Bool)

(assert (=> d!543095 (= c!289400 (isEmpty!12378 lt!690326))))

(assert (=> d!543095 (validRegex!1959 (regex!3509 rule!422))))

(assert (=> d!543095 (= (matchR!2310 (regex!3509 rule!422) lt!690326) lt!690419)))

(declare-fun b!1778422 () Bool)

(assert (=> b!1778422 (= e!1138162 (nullable!1485 (regex!3509 rule!422)))))

(declare-fun b!1778423 () Bool)

(assert (=> b!1778423 (= e!1138161 e!1138164)))

(declare-fun res!801411 () Bool)

(assert (=> b!1778423 (=> res!801411 e!1138164)))

(declare-fun call!111242 () Bool)

(assert (=> b!1778423 (= res!801411 call!111242)))

(declare-fun b!1778424 () Bool)

(assert (=> b!1778424 (= e!1138158 e!1138163)))

(declare-fun c!289401 () Bool)

(assert (=> b!1778424 (= c!289401 ((_ is EmptyLang!4837) (regex!3509 rule!422)))))

(declare-fun b!1778425 () Bool)

(assert (=> b!1778425 (= e!1138158 (= lt!690419 call!111242))))

(declare-fun bm!111237 () Bool)

(assert (=> bm!111237 (= call!111242 (isEmpty!12378 lt!690326))))

(declare-fun b!1778426 () Bool)

(declare-fun res!801408 () Bool)

(assert (=> b!1778426 (=> (not res!801408) (not e!1138160))))

(assert (=> b!1778426 (= res!801408 (not call!111242))))

(declare-fun b!1778427 () Bool)

(assert (=> b!1778427 (= e!1138160 (= (head!4150 lt!690326) (c!289350 (regex!3509 rule!422))))))

(declare-fun b!1778428 () Bool)

(declare-fun res!801409 () Bool)

(assert (=> b!1778428 (=> res!801409 e!1138159)))

(assert (=> b!1778428 (= res!801409 e!1138160)))

(declare-fun res!801413 () Bool)

(assert (=> b!1778428 (=> (not res!801413) (not e!1138160))))

(assert (=> b!1778428 (= res!801413 lt!690419)))

(assert (= (and d!543095 c!289400) b!1778422))

(assert (= (and d!543095 (not c!289400)) b!1778416))

(assert (= (and d!543095 c!289399) b!1778425))

(assert (= (and d!543095 (not c!289399)) b!1778424))

(assert (= (and b!1778424 c!289401) b!1778419))

(assert (= (and b!1778424 (not c!289401)) b!1778417))

(assert (= (and b!1778417 (not res!801412)) b!1778428))

(assert (= (and b!1778428 res!801413) b!1778426))

(assert (= (and b!1778426 res!801408) b!1778418))

(assert (= (and b!1778418 res!801414) b!1778427))

(assert (= (and b!1778428 (not res!801409)) b!1778415))

(assert (= (and b!1778415 res!801410) b!1778423))

(assert (= (and b!1778423 (not res!801411)) b!1778420))

(assert (= (and b!1778420 (not res!801415)) b!1778421))

(assert (= (or b!1778425 b!1778426 b!1778423) bm!111237))

(declare-fun m!2199777 () Bool)

(assert (=> b!1778422 m!2199777))

(assert (=> b!1778418 m!2199623))

(assert (=> b!1778418 m!2199623))

(assert (=> b!1778418 m!2199625))

(assert (=> b!1778421 m!2199627))

(assert (=> d!543095 m!2199629))

(declare-fun m!2199779 () Bool)

(assert (=> d!543095 m!2199779))

(assert (=> b!1778416 m!2199627))

(assert (=> b!1778416 m!2199627))

(declare-fun m!2199781 () Bool)

(assert (=> b!1778416 m!2199781))

(assert (=> b!1778416 m!2199623))

(assert (=> b!1778416 m!2199781))

(assert (=> b!1778416 m!2199623))

(declare-fun m!2199783 () Bool)

(assert (=> b!1778416 m!2199783))

(assert (=> bm!111237 m!2199629))

(assert (=> b!1778427 m!2199627))

(assert (=> b!1778420 m!2199623))

(assert (=> b!1778420 m!2199623))

(assert (=> b!1778420 m!2199625))

(assert (=> b!1778162 d!543095))

(declare-fun d!543097 () Bool)

(declare-fun res!801420 () Bool)

(declare-fun e!1138167 () Bool)

(assert (=> d!543097 (=> (not res!801420) (not e!1138167))))

(assert (=> d!543097 (= res!801420 (validRegex!1959 (regex!3509 rule!422)))))

(assert (=> d!543097 (= (ruleValid!1007 thiss!24550 rule!422) e!1138167)))

(declare-fun b!1778433 () Bool)

(declare-fun res!801421 () Bool)

(assert (=> b!1778433 (=> (not res!801421) (not e!1138167))))

(assert (=> b!1778433 (= res!801421 (not (nullable!1485 (regex!3509 rule!422))))))

(declare-fun b!1778434 () Bool)

(assert (=> b!1778434 (= e!1138167 (not (= (tag!3899 rule!422) (String!22328 ""))))))

(assert (= (and d!543097 res!801420) b!1778433))

(assert (= (and b!1778433 res!801421) b!1778434))

(assert (=> d!543097 m!2199779))

(assert (=> b!1778433 m!2199777))

(assert (=> b!1778162 d!543097))

(declare-fun d!543099 () Bool)

(assert (=> d!543099 (ruleValid!1007 thiss!24550 rule!422)))

(declare-fun lt!690422 () Unit!33852)

(declare-fun choose!11121 (LexerInterface!3138 Rule!6818 List!19663) Unit!33852)

(assert (=> d!543099 (= lt!690422 (choose!11121 thiss!24550 rule!422 rules!3447))))

(assert (=> d!543099 (contains!3541 rules!3447 rule!422)))

(assert (=> d!543099 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!530 thiss!24550 rule!422 rules!3447) lt!690422)))

(declare-fun bs!405034 () Bool)

(assert (= bs!405034 d!543099))

(assert (=> bs!405034 m!2199541))

(declare-fun m!2199785 () Bool)

(assert (=> bs!405034 m!2199785))

(assert (=> bs!405034 m!2199551))

(assert (=> b!1778162 d!543099))

(declare-fun d!543101 () Bool)

(declare-fun c!289404 () Bool)

(assert (=> d!543101 (= c!289404 (isEmpty!12378 lt!690362))))

(declare-fun e!1138170 () Bool)

(assert (=> d!543101 (= (prefixMatch!720 lt!690343 lt!690362) e!1138170)))

(declare-fun b!1778439 () Bool)

(declare-fun lostCause!595 (Regex!4837) Bool)

(assert (=> b!1778439 (= e!1138170 (not (lostCause!595 lt!690343)))))

(declare-fun b!1778440 () Bool)

(assert (=> b!1778440 (= e!1138170 (prefixMatch!720 (derivativeStep!1254 lt!690343 (head!4150 lt!690362)) (tail!2661 lt!690362)))))

(assert (= (and d!543101 c!289404) b!1778439))

(assert (= (and d!543101 (not c!289404)) b!1778440))

(declare-fun m!2199787 () Bool)

(assert (=> d!543101 m!2199787))

(declare-fun m!2199789 () Bool)

(assert (=> b!1778439 m!2199789))

(declare-fun m!2199791 () Bool)

(assert (=> b!1778440 m!2199791))

(assert (=> b!1778440 m!2199791))

(declare-fun m!2199793 () Bool)

(assert (=> b!1778440 m!2199793))

(declare-fun m!2199795 () Bool)

(assert (=> b!1778440 m!2199795))

(assert (=> b!1778440 m!2199793))

(assert (=> b!1778440 m!2199795))

(declare-fun m!2199797 () Bool)

(assert (=> b!1778440 m!2199797))

(assert (=> b!1778161 d!543101))

(declare-fun b!1778451 () Bool)

(declare-fun res!801426 () Bool)

(declare-fun e!1138176 () Bool)

(assert (=> b!1778451 (=> (not res!801426) (not e!1138176))))

(declare-fun lt!690425 () List!19662)

(assert (=> b!1778451 (= res!801426 (= (size!15568 lt!690425) (+ (size!15568 lt!690326) (size!15568 (Cons!19592 (head!4150 suffix!1421) Nil!19592)))))))

(declare-fun b!1778452 () Bool)

(assert (=> b!1778452 (= e!1138176 (or (not (= (Cons!19592 (head!4150 suffix!1421) Nil!19592) Nil!19592)) (= lt!690425 lt!690326)))))

(declare-fun b!1778449 () Bool)

(declare-fun e!1138175 () List!19662)

(assert (=> b!1778449 (= e!1138175 (Cons!19592 (head!4150 suffix!1421) Nil!19592))))

(declare-fun d!543103 () Bool)

(assert (=> d!543103 e!1138176))

(declare-fun res!801427 () Bool)

(assert (=> d!543103 (=> (not res!801427) (not e!1138176))))

(declare-fun content!2846 (List!19662) (InoxSet C!9848))

(assert (=> d!543103 (= res!801427 (= (content!2846 lt!690425) ((_ map or) (content!2846 lt!690326) (content!2846 (Cons!19592 (head!4150 suffix!1421) Nil!19592)))))))

(assert (=> d!543103 (= lt!690425 e!1138175)))

(declare-fun c!289407 () Bool)

(assert (=> d!543103 (= c!289407 ((_ is Nil!19592) lt!690326))))

(assert (=> d!543103 (= (++!5333 lt!690326 (Cons!19592 (head!4150 suffix!1421) Nil!19592)) lt!690425)))

(declare-fun b!1778450 () Bool)

(assert (=> b!1778450 (= e!1138175 (Cons!19592 (h!24993 lt!690326) (++!5333 (t!166245 lt!690326) (Cons!19592 (head!4150 suffix!1421) Nil!19592))))))

(assert (= (and d!543103 c!289407) b!1778449))

(assert (= (and d!543103 (not c!289407)) b!1778450))

(assert (= (and d!543103 res!801427) b!1778451))

(assert (= (and b!1778451 res!801426) b!1778452))

(declare-fun m!2199799 () Bool)

(assert (=> b!1778451 m!2199799))

(assert (=> b!1778451 m!2199535))

(declare-fun m!2199801 () Bool)

(assert (=> b!1778451 m!2199801))

(declare-fun m!2199803 () Bool)

(assert (=> d!543103 m!2199803))

(declare-fun m!2199805 () Bool)

(assert (=> d!543103 m!2199805))

(declare-fun m!2199807 () Bool)

(assert (=> d!543103 m!2199807))

(declare-fun m!2199809 () Bool)

(assert (=> b!1778450 m!2199809))

(assert (=> b!1778161 d!543103))

(declare-fun d!543105 () Bool)

(assert (=> d!543105 (= (head!4150 suffix!1421) (h!24993 suffix!1421))))

(assert (=> b!1778161 d!543105))

(declare-fun d!543107 () Bool)

(declare-fun lt!690428 () Unit!33852)

(declare-fun lemma!408 (List!19663 LexerInterface!3138 List!19663) Unit!33852)

(assert (=> d!543107 (= lt!690428 (lemma!408 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70611 () Int)

(declare-datatypes ((List!19667 0))(
  ( (Nil!19597) (Cons!19597 (h!24998 Regex!4837) (t!166310 List!19667)) )
))
(declare-fun generalisedUnion!416 (List!19667) Regex!4837)

(declare-fun map!4042 (List!19663 Int) List!19667)

(assert (=> d!543107 (= (rulesRegex!865 thiss!24550 rules!3447) (generalisedUnion!416 (map!4042 rules!3447 lambda!70611)))))

(declare-fun bs!405035 () Bool)

(assert (= bs!405035 d!543107))

(declare-fun m!2199811 () Bool)

(assert (=> bs!405035 m!2199811))

(declare-fun m!2199813 () Bool)

(assert (=> bs!405035 m!2199813))

(assert (=> bs!405035 m!2199813))

(declare-fun m!2199815 () Bool)

(assert (=> bs!405035 m!2199815))

(assert (=> b!1778161 d!543107))

(declare-fun d!543109 () Bool)

(declare-fun isEmpty!12382 (Option!4040) Bool)

(assert (=> d!543109 (= (isDefined!3383 lt!690327) (not (isEmpty!12382 lt!690327)))))

(declare-fun bs!405036 () Bool)

(assert (= bs!405036 d!543109))

(declare-fun m!2199817 () Bool)

(assert (=> bs!405036 m!2199817))

(assert (=> b!1778166 d!543109))

(declare-fun b!1778471 () Bool)

(declare-fun e!1138183 () Bool)

(declare-fun e!1138185 () Bool)

(assert (=> b!1778471 (= e!1138183 e!1138185)))

(declare-fun res!801447 () Bool)

(assert (=> b!1778471 (=> (not res!801447) (not e!1138185))))

(declare-fun lt!690441 () Option!4040)

(assert (=> b!1778471 (= res!801447 (isDefined!3383 lt!690441))))

(declare-fun b!1778472 () Bool)

(declare-fun res!801445 () Bool)

(assert (=> b!1778472 (=> (not res!801445) (not e!1138185))))

(assert (=> b!1778472 (= res!801445 (= (++!5333 (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690441)))) (_2!10995 (get!6012 lt!690441))) lt!690326))))

(declare-fun d!543111 () Bool)

(assert (=> d!543111 e!1138183))

(declare-fun res!801442 () Bool)

(assert (=> d!543111 (=> res!801442 e!1138183)))

(assert (=> d!543111 (= res!801442 (isEmpty!12382 lt!690441))))

(declare-fun e!1138184 () Option!4040)

(assert (=> d!543111 (= lt!690441 e!1138184)))

(declare-fun c!289410 () Bool)

(assert (=> d!543111 (= c!289410 (and ((_ is Cons!19593) rules!3447) ((_ is Nil!19593) (t!166246 rules!3447))))))

(declare-fun lt!690443 () Unit!33852)

(declare-fun lt!690440 () Unit!33852)

(assert (=> d!543111 (= lt!690443 lt!690440)))

(assert (=> d!543111 (isPrefix!1749 lt!690326 lt!690326)))

(declare-fun lemmaIsPrefixRefl!1154 (List!19662 List!19662) Unit!33852)

(assert (=> d!543111 (= lt!690440 (lemmaIsPrefixRefl!1154 lt!690326 lt!690326))))

(declare-fun rulesValidInductive!1190 (LexerInterface!3138 List!19663) Bool)

(assert (=> d!543111 (rulesValidInductive!1190 thiss!24550 rules!3447)))

(assert (=> d!543111 (= (maxPrefix!1692 thiss!24550 rules!3447 lt!690326) lt!690441)))

(declare-fun b!1778473 () Bool)

(declare-fun res!801443 () Bool)

(assert (=> b!1778473 (=> (not res!801443) (not e!1138185))))

(assert (=> b!1778473 (= res!801443 (= (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690441)))) (originalCharacters!4323 (_1!10995 (get!6012 lt!690441)))))))

(declare-fun b!1778474 () Bool)

(declare-fun lt!690439 () Option!4040)

(declare-fun lt!690442 () Option!4040)

(assert (=> b!1778474 (= e!1138184 (ite (and ((_ is None!4039) lt!690439) ((_ is None!4039) lt!690442)) None!4039 (ite ((_ is None!4039) lt!690442) lt!690439 (ite ((_ is None!4039) lt!690439) lt!690442 (ite (>= (size!15566 (_1!10995 (v!25524 lt!690439))) (size!15566 (_1!10995 (v!25524 lt!690442)))) lt!690439 lt!690442)))))))

(declare-fun call!111245 () Option!4040)

(assert (=> b!1778474 (= lt!690439 call!111245)))

(assert (=> b!1778474 (= lt!690442 (maxPrefix!1692 thiss!24550 (t!166246 rules!3447) lt!690326))))

(declare-fun b!1778475 () Bool)

(declare-fun res!801444 () Bool)

(assert (=> b!1778475 (=> (not res!801444) (not e!1138185))))

(assert (=> b!1778475 (= res!801444 (= (value!109679 (_1!10995 (get!6012 lt!690441))) (apply!5309 (transformation!3509 (rule!5573 (_1!10995 (get!6012 lt!690441)))) (seqFromList!2478 (originalCharacters!4323 (_1!10995 (get!6012 lt!690441)))))))))

(declare-fun bm!111240 () Bool)

(assert (=> bm!111240 (= call!111245 (maxPrefixOneRule!1061 thiss!24550 (h!24994 rules!3447) lt!690326))))

(declare-fun b!1778476 () Bool)

(declare-fun res!801446 () Bool)

(assert (=> b!1778476 (=> (not res!801446) (not e!1138185))))

(assert (=> b!1778476 (= res!801446 (matchR!2310 (regex!3509 (rule!5573 (_1!10995 (get!6012 lt!690441)))) (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690441))))))))

(declare-fun b!1778477 () Bool)

(declare-fun res!801448 () Bool)

(assert (=> b!1778477 (=> (not res!801448) (not e!1138185))))

(assert (=> b!1778477 (= res!801448 (< (size!15568 (_2!10995 (get!6012 lt!690441))) (size!15568 lt!690326)))))

(declare-fun b!1778478 () Bool)

(assert (=> b!1778478 (= e!1138184 call!111245)))

(declare-fun b!1778479 () Bool)

(assert (=> b!1778479 (= e!1138185 (contains!3541 rules!3447 (rule!5573 (_1!10995 (get!6012 lt!690441)))))))

(assert (= (and d!543111 c!289410) b!1778478))

(assert (= (and d!543111 (not c!289410)) b!1778474))

(assert (= (or b!1778478 b!1778474) bm!111240))

(assert (= (and d!543111 (not res!801442)) b!1778471))

(assert (= (and b!1778471 res!801447) b!1778473))

(assert (= (and b!1778473 res!801443) b!1778477))

(assert (= (and b!1778477 res!801448) b!1778472))

(assert (= (and b!1778472 res!801445) b!1778475))

(assert (= (and b!1778475 res!801444) b!1778476))

(assert (= (and b!1778476 res!801446) b!1778479))

(declare-fun m!2199819 () Bool)

(assert (=> b!1778477 m!2199819))

(declare-fun m!2199821 () Bool)

(assert (=> b!1778477 m!2199821))

(assert (=> b!1778477 m!2199535))

(declare-fun m!2199823 () Bool)

(assert (=> d!543111 m!2199823))

(declare-fun m!2199825 () Bool)

(assert (=> d!543111 m!2199825))

(declare-fun m!2199827 () Bool)

(assert (=> d!543111 m!2199827))

(declare-fun m!2199829 () Bool)

(assert (=> d!543111 m!2199829))

(assert (=> b!1778475 m!2199819))

(declare-fun m!2199831 () Bool)

(assert (=> b!1778475 m!2199831))

(assert (=> b!1778475 m!2199831))

(declare-fun m!2199833 () Bool)

(assert (=> b!1778475 m!2199833))

(assert (=> b!1778472 m!2199819))

(declare-fun m!2199835 () Bool)

(assert (=> b!1778472 m!2199835))

(assert (=> b!1778472 m!2199835))

(declare-fun m!2199837 () Bool)

(assert (=> b!1778472 m!2199837))

(assert (=> b!1778472 m!2199837))

(declare-fun m!2199839 () Bool)

(assert (=> b!1778472 m!2199839))

(declare-fun m!2199841 () Bool)

(assert (=> b!1778474 m!2199841))

(declare-fun m!2199843 () Bool)

(assert (=> b!1778471 m!2199843))

(assert (=> b!1778479 m!2199819))

(declare-fun m!2199845 () Bool)

(assert (=> b!1778479 m!2199845))

(assert (=> b!1778473 m!2199819))

(assert (=> b!1778473 m!2199835))

(assert (=> b!1778473 m!2199835))

(assert (=> b!1778473 m!2199837))

(declare-fun m!2199847 () Bool)

(assert (=> bm!111240 m!2199847))

(assert (=> b!1778476 m!2199819))

(assert (=> b!1778476 m!2199835))

(assert (=> b!1778476 m!2199835))

(assert (=> b!1778476 m!2199837))

(assert (=> b!1778476 m!2199837))

(declare-fun m!2199849 () Bool)

(assert (=> b!1778476 m!2199849))

(assert (=> b!1778166 d!543111))

(declare-fun d!543113 () Bool)

(assert (=> d!543113 (= (list!7963 lt!690350) (list!7966 (c!289351 lt!690350)))))

(declare-fun bs!405037 () Bool)

(assert (= bs!405037 d!543113))

(declare-fun m!2199851 () Bool)

(assert (=> bs!405037 m!2199851))

(assert (=> b!1778166 d!543113))

(declare-fun d!543115 () Bool)

(declare-fun lt!690446 () BalanceConc!12978)

(assert (=> d!543115 (= (list!7963 lt!690446) (originalCharacters!4323 token!523))))

(assert (=> d!543115 (= lt!690446 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 token!523))) (value!109679 token!523)))))

(assert (=> d!543115 (= (charsOf!2158 token!523) lt!690446)))

(declare-fun b_lambda!58141 () Bool)

(assert (=> (not b_lambda!58141) (not d!543115)))

(declare-fun t!166254 () Bool)

(declare-fun tb!107999 () Bool)

(assert (=> (and b!1778153 (= (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toChars!4895 (transformation!3509 (rule!5573 token!523)))) t!166254) tb!107999))

(declare-fun b!1778480 () Bool)

(declare-fun e!1138186 () Bool)

(declare-fun tp!503732 () Bool)

(assert (=> b!1778480 (= e!1138186 (and (inv!25493 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 token!523))) (value!109679 token!523)))) tp!503732))))

(declare-fun result!129918 () Bool)

(assert (=> tb!107999 (= result!129918 (and (inv!25494 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 token!523))) (value!109679 token!523))) e!1138186))))

(assert (= tb!107999 b!1778480))

(declare-fun m!2199853 () Bool)

(assert (=> b!1778480 m!2199853))

(declare-fun m!2199855 () Bool)

(assert (=> tb!107999 m!2199855))

(assert (=> d!543115 t!166254))

(declare-fun b_and!136105 () Bool)

(assert (= b_and!136093 (and (=> t!166254 result!129918) b_and!136105)))

(declare-fun t!166256 () Bool)

(declare-fun tb!108001 () Bool)

(assert (=> (and b!1778163 (= (toChars!4895 (transformation!3509 (rule!5573 token!523))) (toChars!4895 (transformation!3509 (rule!5573 token!523)))) t!166256) tb!108001))

(declare-fun result!129920 () Bool)

(assert (= result!129920 result!129918))

(assert (=> d!543115 t!166256))

(declare-fun b_and!136107 () Bool)

(assert (= b_and!136095 (and (=> t!166256 result!129920) b_and!136107)))

(declare-fun tb!108003 () Bool)

(declare-fun t!166258 () Bool)

(assert (=> (and b!1778172 (= (toChars!4895 (transformation!3509 rule!422)) (toChars!4895 (transformation!3509 (rule!5573 token!523)))) t!166258) tb!108003))

(declare-fun result!129922 () Bool)

(assert (= result!129922 result!129918))

(assert (=> d!543115 t!166258))

(declare-fun b_and!136109 () Bool)

(assert (= b_and!136097 (and (=> t!166258 result!129922) b_and!136109)))

(declare-fun m!2199857 () Bool)

(assert (=> d!543115 m!2199857))

(declare-fun m!2199859 () Bool)

(assert (=> d!543115 m!2199859))

(assert (=> b!1778166 d!543115))

(declare-fun b!1778481 () Bool)

(declare-fun e!1138188 () Bool)

(declare-fun e!1138190 () Bool)

(assert (=> b!1778481 (= e!1138188 e!1138190)))

(declare-fun res!801451 () Bool)

(assert (=> b!1778481 (=> (not res!801451) (not e!1138190))))

(declare-fun lt!690447 () Bool)

(assert (=> b!1778481 (= res!801451 (not lt!690447))))

(declare-fun b!1778482 () Bool)

(declare-fun e!1138191 () Bool)

(assert (=> b!1778482 (= e!1138191 (matchR!2310 (derivativeStep!1254 (regex!3509 lt!690348) (head!4150 (list!7963 (charsOf!2158 (_1!10995 lt!690358))))) (tail!2661 (list!7963 (charsOf!2158 (_1!10995 lt!690358))))))))

(declare-fun b!1778483 () Bool)

(declare-fun res!801453 () Bool)

(assert (=> b!1778483 (=> res!801453 e!1138188)))

(assert (=> b!1778483 (= res!801453 (not ((_ is ElementMatch!4837) (regex!3509 lt!690348))))))

(declare-fun e!1138192 () Bool)

(assert (=> b!1778483 (= e!1138192 e!1138188)))

(declare-fun b!1778484 () Bool)

(declare-fun res!801455 () Bool)

(declare-fun e!1138189 () Bool)

(assert (=> b!1778484 (=> (not res!801455) (not e!1138189))))

(assert (=> b!1778484 (= res!801455 (isEmpty!12378 (tail!2661 (list!7963 (charsOf!2158 (_1!10995 lt!690358))))))))

(declare-fun b!1778485 () Bool)

(assert (=> b!1778485 (= e!1138192 (not lt!690447))))

(declare-fun b!1778486 () Bool)

(declare-fun res!801456 () Bool)

(declare-fun e!1138193 () Bool)

(assert (=> b!1778486 (=> res!801456 e!1138193)))

(assert (=> b!1778486 (= res!801456 (not (isEmpty!12378 (tail!2661 (list!7963 (charsOf!2158 (_1!10995 lt!690358)))))))))

(declare-fun b!1778487 () Bool)

(assert (=> b!1778487 (= e!1138193 (not (= (head!4150 (list!7963 (charsOf!2158 (_1!10995 lt!690358)))) (c!289350 (regex!3509 lt!690348)))))))

(declare-fun d!543117 () Bool)

(declare-fun e!1138187 () Bool)

(assert (=> d!543117 e!1138187))

(declare-fun c!289411 () Bool)

(assert (=> d!543117 (= c!289411 ((_ is EmptyExpr!4837) (regex!3509 lt!690348)))))

(assert (=> d!543117 (= lt!690447 e!1138191)))

(declare-fun c!289412 () Bool)

(assert (=> d!543117 (= c!289412 (isEmpty!12378 (list!7963 (charsOf!2158 (_1!10995 lt!690358)))))))

(assert (=> d!543117 (validRegex!1959 (regex!3509 lt!690348))))

(assert (=> d!543117 (= (matchR!2310 (regex!3509 lt!690348) (list!7963 (charsOf!2158 (_1!10995 lt!690358)))) lt!690447)))

(declare-fun b!1778488 () Bool)

(assert (=> b!1778488 (= e!1138191 (nullable!1485 (regex!3509 lt!690348)))))

(declare-fun b!1778489 () Bool)

(assert (=> b!1778489 (= e!1138190 e!1138193)))

(declare-fun res!801452 () Bool)

(assert (=> b!1778489 (=> res!801452 e!1138193)))

(declare-fun call!111246 () Bool)

(assert (=> b!1778489 (= res!801452 call!111246)))

(declare-fun b!1778490 () Bool)

(assert (=> b!1778490 (= e!1138187 e!1138192)))

(declare-fun c!289413 () Bool)

(assert (=> b!1778490 (= c!289413 ((_ is EmptyLang!4837) (regex!3509 lt!690348)))))

(declare-fun b!1778491 () Bool)

(assert (=> b!1778491 (= e!1138187 (= lt!690447 call!111246))))

(declare-fun bm!111241 () Bool)

(assert (=> bm!111241 (= call!111246 (isEmpty!12378 (list!7963 (charsOf!2158 (_1!10995 lt!690358)))))))

(declare-fun b!1778492 () Bool)

(declare-fun res!801449 () Bool)

(assert (=> b!1778492 (=> (not res!801449) (not e!1138189))))

(assert (=> b!1778492 (= res!801449 (not call!111246))))

(declare-fun b!1778493 () Bool)

(assert (=> b!1778493 (= e!1138189 (= (head!4150 (list!7963 (charsOf!2158 (_1!10995 lt!690358)))) (c!289350 (regex!3509 lt!690348))))))

(declare-fun b!1778494 () Bool)

(declare-fun res!801450 () Bool)

(assert (=> b!1778494 (=> res!801450 e!1138188)))

(assert (=> b!1778494 (= res!801450 e!1138189)))

(declare-fun res!801454 () Bool)

(assert (=> b!1778494 (=> (not res!801454) (not e!1138189))))

(assert (=> b!1778494 (= res!801454 lt!690447)))

(assert (= (and d!543117 c!289412) b!1778488))

(assert (= (and d!543117 (not c!289412)) b!1778482))

(assert (= (and d!543117 c!289411) b!1778491))

(assert (= (and d!543117 (not c!289411)) b!1778490))

(assert (= (and b!1778490 c!289413) b!1778485))

(assert (= (and b!1778490 (not c!289413)) b!1778483))

(assert (= (and b!1778483 (not res!801453)) b!1778494))

(assert (= (and b!1778494 res!801454) b!1778492))

(assert (= (and b!1778492 res!801449) b!1778484))

(assert (= (and b!1778484 res!801455) b!1778493))

(assert (= (and b!1778494 (not res!801450)) b!1778481))

(assert (= (and b!1778481 res!801451) b!1778489))

(assert (= (and b!1778489 (not res!801452)) b!1778486))

(assert (= (and b!1778486 (not res!801456)) b!1778487))

(assert (= (or b!1778491 b!1778492 b!1778489) bm!111241))

(declare-fun m!2199861 () Bool)

(assert (=> b!1778488 m!2199861))

(assert (=> b!1778484 m!2199545))

(declare-fun m!2199863 () Bool)

(assert (=> b!1778484 m!2199863))

(assert (=> b!1778484 m!2199863))

(declare-fun m!2199865 () Bool)

(assert (=> b!1778484 m!2199865))

(assert (=> b!1778487 m!2199545))

(declare-fun m!2199867 () Bool)

(assert (=> b!1778487 m!2199867))

(assert (=> d!543117 m!2199545))

(declare-fun m!2199869 () Bool)

(assert (=> d!543117 m!2199869))

(declare-fun m!2199871 () Bool)

(assert (=> d!543117 m!2199871))

(assert (=> b!1778482 m!2199545))

(assert (=> b!1778482 m!2199867))

(assert (=> b!1778482 m!2199867))

(declare-fun m!2199873 () Bool)

(assert (=> b!1778482 m!2199873))

(assert (=> b!1778482 m!2199545))

(assert (=> b!1778482 m!2199863))

(assert (=> b!1778482 m!2199873))

(assert (=> b!1778482 m!2199863))

(declare-fun m!2199875 () Bool)

(assert (=> b!1778482 m!2199875))

(assert (=> bm!111241 m!2199545))

(assert (=> bm!111241 m!2199869))

(assert (=> b!1778493 m!2199545))

(assert (=> b!1778493 m!2199867))

(assert (=> b!1778486 m!2199545))

(assert (=> b!1778486 m!2199863))

(assert (=> b!1778486 m!2199863))

(assert (=> b!1778486 m!2199865))

(assert (=> b!1778165 d!543117))

(declare-fun d!543119 () Bool)

(assert (=> d!543119 (= (list!7963 (charsOf!2158 (_1!10995 lt!690358))) (list!7966 (c!289351 (charsOf!2158 (_1!10995 lt!690358)))))))

(declare-fun bs!405038 () Bool)

(assert (= bs!405038 d!543119))

(declare-fun m!2199877 () Bool)

(assert (=> bs!405038 m!2199877))

(assert (=> b!1778165 d!543119))

(declare-fun d!543121 () Bool)

(declare-fun lt!690448 () BalanceConc!12978)

(assert (=> d!543121 (= (list!7963 lt!690448) (originalCharacters!4323 (_1!10995 lt!690358)))))

(assert (=> d!543121 (= lt!690448 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))))

(assert (=> d!543121 (= (charsOf!2158 (_1!10995 lt!690358)) lt!690448)))

(declare-fun b_lambda!58143 () Bool)

(assert (=> (not b_lambda!58143) (not d!543121)))

(assert (=> d!543121 t!166239))

(declare-fun b_and!136111 () Bool)

(assert (= b_and!136105 (and (=> t!166239 result!129906) b_and!136111)))

(assert (=> d!543121 t!166241))

(declare-fun b_and!136113 () Bool)

(assert (= b_and!136107 (and (=> t!166241 result!129908) b_and!136113)))

(assert (=> d!543121 t!166243))

(declare-fun b_and!136115 () Bool)

(assert (= b_and!136109 (and (=> t!166243 result!129910) b_and!136115)))

(declare-fun m!2199879 () Bool)

(assert (=> d!543121 m!2199879))

(assert (=> d!543121 m!2199499))

(assert (=> b!1778165 d!543121))

(declare-fun d!543123 () Bool)

(assert (=> d!543123 (= (get!6013 lt!690359) (v!25525 lt!690359))))

(assert (=> b!1778165 d!543123))

(declare-fun d!543125 () Bool)

(assert (=> d!543125 (= (isEmpty!12378 suffix!1421) ((_ is Nil!19592) suffix!1421))))

(assert (=> b!1778164 d!543125))

(declare-fun d!543127 () Bool)

(assert (=> d!543127 (not (matchR!2310 (regex!3509 rule!422) lt!690326))))

(declare-fun lt!690451 () Unit!33852)

(declare-fun choose!11123 (LexerInterface!3138 List!19663 Rule!6818 List!19662 List!19662 List!19662 Rule!6818) Unit!33852)

(assert (=> d!543127 (= lt!690451 (choose!11123 thiss!24550 rules!3447 (rule!5573 (_1!10995 lt!690358)) lt!690331 lt!690342 lt!690326 rule!422))))

(assert (=> d!543127 (isPrefix!1749 lt!690331 lt!690342)))

(assert (=> d!543127 (= (lemmaMaxPrefixOutputsMaxPrefix!218 thiss!24550 rules!3447 (rule!5573 (_1!10995 lt!690358)) lt!690331 lt!690342 lt!690326 rule!422) lt!690451)))

(declare-fun bs!405039 () Bool)

(assert (= bs!405039 d!543127))

(assert (=> bs!405039 m!2199539))

(declare-fun m!2199881 () Bool)

(assert (=> bs!405039 m!2199881))

(assert (=> bs!405039 m!2199443))

(assert (=> b!1778147 d!543127))

(declare-fun d!543129 () Bool)

(assert (=> d!543129 (= (apply!5309 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) (seqFromList!2478 lt!690331)) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (seqFromList!2478 lt!690331)))))

(declare-fun b_lambda!58145 () Bool)

(assert (=> (not b_lambda!58145) (not d!543129)))

(declare-fun tb!108005 () Bool)

(declare-fun t!166260 () Bool)

(assert (=> (and b!1778153 (= (toValue!5036 (transformation!3509 (h!24994 rules!3447))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166260) tb!108005))

(declare-fun result!129924 () Bool)

(assert (=> tb!108005 (= result!129924 (inv!21 (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (seqFromList!2478 lt!690331))))))

(declare-fun m!2199883 () Bool)

(assert (=> tb!108005 m!2199883))

(assert (=> d!543129 t!166260))

(declare-fun b_and!136117 () Bool)

(assert (= b_and!136099 (and (=> t!166260 result!129924) b_and!136117)))

(declare-fun t!166262 () Bool)

(declare-fun tb!108007 () Bool)

(assert (=> (and b!1778163 (= (toValue!5036 (transformation!3509 (rule!5573 token!523))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166262) tb!108007))

(declare-fun result!129926 () Bool)

(assert (= result!129926 result!129924))

(assert (=> d!543129 t!166262))

(declare-fun b_and!136119 () Bool)

(assert (= b_and!136101 (and (=> t!166262 result!129926) b_and!136119)))

(declare-fun tb!108009 () Bool)

(declare-fun t!166264 () Bool)

(assert (=> (and b!1778172 (= (toValue!5036 (transformation!3509 rule!422)) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166264) tb!108009))

(declare-fun result!129928 () Bool)

(assert (= result!129928 result!129924))

(assert (=> d!543129 t!166264))

(declare-fun b_and!136121 () Bool)

(assert (= b_and!136103 (and (=> t!166264 result!129928) b_and!136121)))

(assert (=> d!543129 m!2199479))

(declare-fun m!2199885 () Bool)

(assert (=> d!543129 m!2199885))

(assert (=> b!1778146 d!543129))

(declare-fun d!543131 () Bool)

(declare-fun lt!690458 () List!19662)

(assert (=> d!543131 (= (++!5333 lt!690331 lt!690458) lt!690342)))

(declare-fun e!1138197 () List!19662)

(assert (=> d!543131 (= lt!690458 e!1138197)))

(declare-fun c!289416 () Bool)

(assert (=> d!543131 (= c!289416 ((_ is Cons!19592) lt!690331))))

(assert (=> d!543131 (>= (size!15568 lt!690342) (size!15568 lt!690331))))

(assert (=> d!543131 (= (getSuffix!916 lt!690342 lt!690331) lt!690458)))

(declare-fun b!1778499 () Bool)

(assert (=> b!1778499 (= e!1138197 (getSuffix!916 (tail!2661 lt!690342) (t!166245 lt!690331)))))

(declare-fun b!1778500 () Bool)

(assert (=> b!1778500 (= e!1138197 lt!690342)))

(assert (= (and d!543131 c!289416) b!1778499))

(assert (= (and d!543131 (not c!289416)) b!1778500))

(declare-fun m!2199887 () Bool)

(assert (=> d!543131 m!2199887))

(declare-fun m!2199889 () Bool)

(assert (=> d!543131 m!2199889))

(assert (=> d!543131 m!2199475))

(declare-fun m!2199891 () Bool)

(assert (=> b!1778499 m!2199891))

(assert (=> b!1778499 m!2199891))

(declare-fun m!2199893 () Bool)

(assert (=> b!1778499 m!2199893))

(assert (=> b!1778146 d!543131))

(declare-fun d!543133 () Bool)

(declare-fun lt!690473 () Int)

(assert (=> d!543133 (>= lt!690473 0)))

(declare-fun e!1138198 () Int)

(assert (=> d!543133 (= lt!690473 e!1138198)))

(declare-fun c!289417 () Bool)

(assert (=> d!543133 (= c!289417 ((_ is Nil!19592) lt!690331))))

(assert (=> d!543133 (= (size!15568 lt!690331) lt!690473)))

(declare-fun b!1778501 () Bool)

(assert (=> b!1778501 (= e!1138198 0)))

(declare-fun b!1778502 () Bool)

(assert (=> b!1778502 (= e!1138198 (+ 1 (size!15568 (t!166245 lt!690331))))))

(assert (= (and d!543133 c!289417) b!1778501))

(assert (= (and d!543133 (not c!289417)) b!1778502))

(declare-fun m!2199895 () Bool)

(assert (=> b!1778502 m!2199895))

(assert (=> b!1778146 d!543133))

(declare-fun d!543135 () Bool)

(assert (=> d!543135 (= (maxPrefixOneRule!1061 thiss!24550 (rule!5573 (_1!10995 lt!690358)) lt!690342) (Some!4039 (tuple2!19187 (Token!6585 (apply!5309 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) (seqFromList!2478 lt!690331)) (rule!5573 (_1!10995 lt!690358)) (size!15568 lt!690331) lt!690331) (_2!10995 lt!690358))))))

(declare-fun lt!690511 () Unit!33852)

(declare-fun choose!11127 (LexerInterface!3138 List!19663 List!19662 List!19662 List!19662 Rule!6818) Unit!33852)

(assert (=> d!543135 (= lt!690511 (choose!11127 thiss!24550 rules!3447 lt!690331 lt!690342 (_2!10995 lt!690358) (rule!5573 (_1!10995 lt!690358))))))

(assert (=> d!543135 (not (isEmpty!12379 rules!3447))))

(assert (=> d!543135 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!439 thiss!24550 rules!3447 lt!690331 lt!690342 (_2!10995 lt!690358) (rule!5573 (_1!10995 lt!690358))) lt!690511)))

(declare-fun bs!405040 () Bool)

(assert (= bs!405040 d!543135))

(assert (=> bs!405040 m!2199479))

(assert (=> bs!405040 m!2199475))

(assert (=> bs!405040 m!2199497))

(assert (=> bs!405040 m!2199479))

(assert (=> bs!405040 m!2199483))

(assert (=> bs!405040 m!2199477))

(declare-fun m!2199947 () Bool)

(assert (=> bs!405040 m!2199947))

(assert (=> b!1778146 d!543135))

(declare-fun d!543139 () Bool)

(declare-fun fromListB!1133 (List!19662) BalanceConc!12978)

(assert (=> d!543139 (= (seqFromList!2478 lt!690331) (fromListB!1133 lt!690331))))

(declare-fun bs!405041 () Bool)

(assert (= bs!405041 d!543139))

(declare-fun m!2199951 () Bool)

(assert (=> bs!405041 m!2199951))

(assert (=> b!1778146 d!543139))

(declare-fun d!543141 () Bool)

(assert (=> d!543141 (= (_2!10995 lt!690358) lt!690344)))

(declare-fun lt!690516 () Unit!33852)

(declare-fun choose!11128 (List!19662 List!19662 List!19662 List!19662 List!19662) Unit!33852)

(assert (=> d!543141 (= lt!690516 (choose!11128 lt!690331 (_2!10995 lt!690358) lt!690331 lt!690344 lt!690342))))

(assert (=> d!543141 (isPrefix!1749 lt!690331 lt!690342)))

(assert (=> d!543141 (= (lemmaSamePrefixThenSameSuffix!860 lt!690331 (_2!10995 lt!690358) lt!690331 lt!690344 lt!690342) lt!690516)))

(declare-fun bs!405042 () Bool)

(assert (= bs!405042 d!543141))

(declare-fun m!2199975 () Bool)

(assert (=> bs!405042 m!2199975))

(assert (=> bs!405042 m!2199443))

(assert (=> b!1778146 d!543141))

(declare-fun b!1778635 () Bool)

(declare-fun e!1138280 () Bool)

(declare-fun lt!690565 () Option!4040)

(assert (=> b!1778635 (= e!1138280 (= (size!15566 (_1!10995 (get!6012 lt!690565))) (size!15568 (originalCharacters!4323 (_1!10995 (get!6012 lt!690565))))))))

(declare-fun d!543147 () Bool)

(declare-fun e!1138281 () Bool)

(assert (=> d!543147 e!1138281))

(declare-fun res!801545 () Bool)

(assert (=> d!543147 (=> res!801545 e!1138281)))

(assert (=> d!543147 (= res!801545 (isEmpty!12382 lt!690565))))

(declare-fun e!1138282 () Option!4040)

(assert (=> d!543147 (= lt!690565 e!1138282)))

(declare-fun c!289440 () Bool)

(declare-datatypes ((tuple2!19190 0))(
  ( (tuple2!19191 (_1!10997 List!19662) (_2!10997 List!19662)) )
))
(declare-fun lt!690567 () tuple2!19190)

(assert (=> d!543147 (= c!289440 (isEmpty!12378 (_1!10997 lt!690567)))))

(declare-fun findLongestMatch!389 (Regex!4837 List!19662) tuple2!19190)

(assert (=> d!543147 (= lt!690567 (findLongestMatch!389 (regex!3509 (rule!5573 (_1!10995 lt!690358))) lt!690342))))

(assert (=> d!543147 (ruleValid!1007 thiss!24550 (rule!5573 (_1!10995 lt!690358)))))

(assert (=> d!543147 (= (maxPrefixOneRule!1061 thiss!24550 (rule!5573 (_1!10995 lt!690358)) lt!690342) lt!690565)))

(declare-fun b!1778636 () Bool)

(declare-fun res!801549 () Bool)

(assert (=> b!1778636 (=> (not res!801549) (not e!1138280))))

(assert (=> b!1778636 (= res!801549 (< (size!15568 (_2!10995 (get!6012 lt!690565))) (size!15568 lt!690342)))))

(declare-fun b!1778637 () Bool)

(assert (=> b!1778637 (= e!1138281 e!1138280)))

(declare-fun res!801548 () Bool)

(assert (=> b!1778637 (=> (not res!801548) (not e!1138280))))

(assert (=> b!1778637 (= res!801548 (matchR!2310 (regex!3509 (rule!5573 (_1!10995 lt!690358))) (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690565))))))))

(declare-fun b!1778638 () Bool)

(declare-fun res!801551 () Bool)

(assert (=> b!1778638 (=> (not res!801551) (not e!1138280))))

(assert (=> b!1778638 (= res!801551 (= (++!5333 (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690565)))) (_2!10995 (get!6012 lt!690565))) lt!690342))))

(declare-fun b!1778639 () Bool)

(declare-fun e!1138279 () Bool)

(declare-fun findLongestMatchInner!462 (Regex!4837 List!19662 Int List!19662 List!19662 Int) tuple2!19190)

(assert (=> b!1778639 (= e!1138279 (matchR!2310 (regex!3509 (rule!5573 (_1!10995 lt!690358))) (_1!10997 (findLongestMatchInner!462 (regex!3509 (rule!5573 (_1!10995 lt!690358))) Nil!19592 (size!15568 Nil!19592) lt!690342 lt!690342 (size!15568 lt!690342)))))))

(declare-fun b!1778640 () Bool)

(assert (=> b!1778640 (= e!1138282 (Some!4039 (tuple2!19187 (Token!6585 (apply!5309 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) (seqFromList!2478 (_1!10997 lt!690567))) (rule!5573 (_1!10995 lt!690358)) (size!15567 (seqFromList!2478 (_1!10997 lt!690567))) (_1!10997 lt!690567)) (_2!10997 lt!690567))))))

(declare-fun lt!690566 () Unit!33852)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!446 (Regex!4837 List!19662) Unit!33852)

(assert (=> b!1778640 (= lt!690566 (longestMatchIsAcceptedByMatchOrIsEmpty!446 (regex!3509 (rule!5573 (_1!10995 lt!690358))) lt!690342))))

(declare-fun res!801550 () Bool)

(assert (=> b!1778640 (= res!801550 (isEmpty!12378 (_1!10997 (findLongestMatchInner!462 (regex!3509 (rule!5573 (_1!10995 lt!690358))) Nil!19592 (size!15568 Nil!19592) lt!690342 lt!690342 (size!15568 lt!690342)))))))

(assert (=> b!1778640 (=> res!801550 e!1138279)))

(assert (=> b!1778640 e!1138279))

(declare-fun lt!690564 () Unit!33852)

(assert (=> b!1778640 (= lt!690564 lt!690566)))

(declare-fun lt!690568 () Unit!33852)

(assert (=> b!1778640 (= lt!690568 (lemmaSemiInverse!647 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) (seqFromList!2478 (_1!10997 lt!690567))))))

(declare-fun b!1778641 () Bool)

(declare-fun res!801546 () Bool)

(assert (=> b!1778641 (=> (not res!801546) (not e!1138280))))

(assert (=> b!1778641 (= res!801546 (= (value!109679 (_1!10995 (get!6012 lt!690565))) (apply!5309 (transformation!3509 (rule!5573 (_1!10995 (get!6012 lt!690565)))) (seqFromList!2478 (originalCharacters!4323 (_1!10995 (get!6012 lt!690565)))))))))

(declare-fun b!1778642 () Bool)

(assert (=> b!1778642 (= e!1138282 None!4039)))

(declare-fun b!1778643 () Bool)

(declare-fun res!801547 () Bool)

(assert (=> b!1778643 (=> (not res!801547) (not e!1138280))))

(assert (=> b!1778643 (= res!801547 (= (rule!5573 (_1!10995 (get!6012 lt!690565))) (rule!5573 (_1!10995 lt!690358))))))

(assert (= (and d!543147 c!289440) b!1778642))

(assert (= (and d!543147 (not c!289440)) b!1778640))

(assert (= (and b!1778640 (not res!801550)) b!1778639))

(assert (= (and d!543147 (not res!801545)) b!1778637))

(assert (= (and b!1778637 res!801548) b!1778638))

(assert (= (and b!1778638 res!801551) b!1778636))

(assert (= (and b!1778636 res!801549) b!1778643))

(assert (= (and b!1778643 res!801547) b!1778641))

(assert (= (and b!1778641 res!801546) b!1778635))

(declare-fun m!2200093 () Bool)

(assert (=> b!1778636 m!2200093))

(declare-fun m!2200095 () Bool)

(assert (=> b!1778636 m!2200095))

(assert (=> b!1778636 m!2199889))

(assert (=> b!1778641 m!2200093))

(declare-fun m!2200097 () Bool)

(assert (=> b!1778641 m!2200097))

(assert (=> b!1778641 m!2200097))

(declare-fun m!2200099 () Bool)

(assert (=> b!1778641 m!2200099))

(assert (=> b!1778637 m!2200093))

(declare-fun m!2200101 () Bool)

(assert (=> b!1778637 m!2200101))

(assert (=> b!1778637 m!2200101))

(declare-fun m!2200103 () Bool)

(assert (=> b!1778637 m!2200103))

(assert (=> b!1778637 m!2200103))

(declare-fun m!2200105 () Bool)

(assert (=> b!1778637 m!2200105))

(declare-fun m!2200107 () Bool)

(assert (=> b!1778639 m!2200107))

(assert (=> b!1778639 m!2199889))

(assert (=> b!1778639 m!2200107))

(assert (=> b!1778639 m!2199889))

(declare-fun m!2200109 () Bool)

(assert (=> b!1778639 m!2200109))

(declare-fun m!2200111 () Bool)

(assert (=> b!1778639 m!2200111))

(assert (=> b!1778643 m!2200093))

(assert (=> b!1778640 m!2200107))

(declare-fun m!2200113 () Bool)

(assert (=> b!1778640 m!2200113))

(declare-fun m!2200115 () Bool)

(assert (=> b!1778640 m!2200115))

(assert (=> b!1778640 m!2200107))

(assert (=> b!1778640 m!2199889))

(assert (=> b!1778640 m!2200109))

(assert (=> b!1778640 m!2200115))

(declare-fun m!2200117 () Bool)

(assert (=> b!1778640 m!2200117))

(assert (=> b!1778640 m!2200115))

(declare-fun m!2200119 () Bool)

(assert (=> b!1778640 m!2200119))

(declare-fun m!2200121 () Bool)

(assert (=> b!1778640 m!2200121))

(assert (=> b!1778640 m!2200115))

(declare-fun m!2200123 () Bool)

(assert (=> b!1778640 m!2200123))

(assert (=> b!1778640 m!2199889))

(declare-fun m!2200125 () Bool)

(assert (=> d!543147 m!2200125))

(declare-fun m!2200127 () Bool)

(assert (=> d!543147 m!2200127))

(declare-fun m!2200129 () Bool)

(assert (=> d!543147 m!2200129))

(declare-fun m!2200131 () Bool)

(assert (=> d!543147 m!2200131))

(assert (=> b!1778635 m!2200093))

(declare-fun m!2200133 () Bool)

(assert (=> b!1778635 m!2200133))

(assert (=> b!1778638 m!2200093))

(assert (=> b!1778638 m!2200101))

(assert (=> b!1778638 m!2200101))

(assert (=> b!1778638 m!2200103))

(assert (=> b!1778638 m!2200103))

(declare-fun m!2200135 () Bool)

(assert (=> b!1778638 m!2200135))

(assert (=> b!1778146 d!543147))

(declare-fun b!1778646 () Bool)

(declare-fun res!801552 () Bool)

(declare-fun e!1138284 () Bool)

(assert (=> b!1778646 (=> (not res!801552) (not e!1138284))))

(declare-fun lt!690569 () List!19662)

(assert (=> b!1778646 (= res!801552 (= (size!15568 lt!690569) (+ (size!15568 lt!690326) (size!15568 (Cons!19592 (head!4150 lt!690337) Nil!19592)))))))

(declare-fun b!1778647 () Bool)

(assert (=> b!1778647 (= e!1138284 (or (not (= (Cons!19592 (head!4150 lt!690337) Nil!19592) Nil!19592)) (= lt!690569 lt!690326)))))

(declare-fun b!1778644 () Bool)

(declare-fun e!1138283 () List!19662)

(assert (=> b!1778644 (= e!1138283 (Cons!19592 (head!4150 lt!690337) Nil!19592))))

(declare-fun d!543193 () Bool)

(assert (=> d!543193 e!1138284))

(declare-fun res!801553 () Bool)

(assert (=> d!543193 (=> (not res!801553) (not e!1138284))))

(assert (=> d!543193 (= res!801553 (= (content!2846 lt!690569) ((_ map or) (content!2846 lt!690326) (content!2846 (Cons!19592 (head!4150 lt!690337) Nil!19592)))))))

(assert (=> d!543193 (= lt!690569 e!1138283)))

(declare-fun c!289441 () Bool)

(assert (=> d!543193 (= c!289441 ((_ is Nil!19592) lt!690326))))

(assert (=> d!543193 (= (++!5333 lt!690326 (Cons!19592 (head!4150 lt!690337) Nil!19592)) lt!690569)))

(declare-fun b!1778645 () Bool)

(assert (=> b!1778645 (= e!1138283 (Cons!19592 (h!24993 lt!690326) (++!5333 (t!166245 lt!690326) (Cons!19592 (head!4150 lt!690337) Nil!19592))))))

(assert (= (and d!543193 c!289441) b!1778644))

(assert (= (and d!543193 (not c!289441)) b!1778645))

(assert (= (and d!543193 res!801553) b!1778646))

(assert (= (and b!1778646 res!801552) b!1778647))

(declare-fun m!2200137 () Bool)

(assert (=> b!1778646 m!2200137))

(assert (=> b!1778646 m!2199535))

(declare-fun m!2200139 () Bool)

(assert (=> b!1778646 m!2200139))

(declare-fun m!2200141 () Bool)

(assert (=> d!543193 m!2200141))

(assert (=> d!543193 m!2199805))

(declare-fun m!2200143 () Bool)

(assert (=> d!543193 m!2200143))

(declare-fun m!2200145 () Bool)

(assert (=> b!1778645 m!2200145))

(assert (=> b!1778167 d!543193))

(declare-fun d!543195 () Bool)

(declare-fun e!1138294 () Bool)

(assert (=> d!543195 e!1138294))

(declare-fun res!801563 () Bool)

(assert (=> d!543195 (=> res!801563 e!1138294)))

(declare-fun lt!690578 () Bool)

(assert (=> d!543195 (= res!801563 (not lt!690578))))

(declare-fun e!1138296 () Bool)

(assert (=> d!543195 (= lt!690578 e!1138296)))

(declare-fun res!801562 () Bool)

(assert (=> d!543195 (=> res!801562 e!1138296)))

(assert (=> d!543195 (= res!801562 ((_ is Nil!19592) (++!5333 lt!690326 (Cons!19592 (head!4150 lt!690337) Nil!19592))))))

(assert (=> d!543195 (= (isPrefix!1749 (++!5333 lt!690326 (Cons!19592 (head!4150 lt!690337) Nil!19592)) lt!690342) lt!690578)))

(declare-fun b!1778663 () Bool)

(declare-fun res!801565 () Bool)

(declare-fun e!1138295 () Bool)

(assert (=> b!1778663 (=> (not res!801565) (not e!1138295))))

(assert (=> b!1778663 (= res!801565 (= (head!4150 (++!5333 lt!690326 (Cons!19592 (head!4150 lt!690337) Nil!19592))) (head!4150 lt!690342)))))

(declare-fun b!1778662 () Bool)

(assert (=> b!1778662 (= e!1138296 e!1138295)))

(declare-fun res!801564 () Bool)

(assert (=> b!1778662 (=> (not res!801564) (not e!1138295))))

(assert (=> b!1778662 (= res!801564 (not ((_ is Nil!19592) lt!690342)))))

(declare-fun b!1778664 () Bool)

(assert (=> b!1778664 (= e!1138295 (isPrefix!1749 (tail!2661 (++!5333 lt!690326 (Cons!19592 (head!4150 lt!690337) Nil!19592))) (tail!2661 lt!690342)))))

(declare-fun b!1778665 () Bool)

(assert (=> b!1778665 (= e!1138294 (>= (size!15568 lt!690342) (size!15568 (++!5333 lt!690326 (Cons!19592 (head!4150 lt!690337) Nil!19592)))))))

(assert (= (and d!543195 (not res!801562)) b!1778662))

(assert (= (and b!1778662 res!801564) b!1778663))

(assert (= (and b!1778663 res!801565) b!1778664))

(assert (= (and d!543195 (not res!801563)) b!1778665))

(assert (=> b!1778663 m!2199503))

(declare-fun m!2200157 () Bool)

(assert (=> b!1778663 m!2200157))

(declare-fun m!2200159 () Bool)

(assert (=> b!1778663 m!2200159))

(assert (=> b!1778664 m!2199503))

(declare-fun m!2200161 () Bool)

(assert (=> b!1778664 m!2200161))

(assert (=> b!1778664 m!2199891))

(assert (=> b!1778664 m!2200161))

(assert (=> b!1778664 m!2199891))

(declare-fun m!2200163 () Bool)

(assert (=> b!1778664 m!2200163))

(assert (=> b!1778665 m!2199889))

(assert (=> b!1778665 m!2199503))

(declare-fun m!2200165 () Bool)

(assert (=> b!1778665 m!2200165))

(assert (=> b!1778167 d!543195))

(declare-fun d!543203 () Bool)

(assert (=> d!543203 (= suffix!1421 lt!690337)))

(declare-fun lt!690579 () Unit!33852)

(assert (=> d!543203 (= lt!690579 (choose!11128 lt!690326 suffix!1421 lt!690326 lt!690337 lt!690342))))

(assert (=> d!543203 (isPrefix!1749 lt!690326 lt!690342)))

(assert (=> d!543203 (= (lemmaSamePrefixThenSameSuffix!860 lt!690326 suffix!1421 lt!690326 lt!690337 lt!690342) lt!690579)))

(declare-fun bs!405052 () Bool)

(assert (= bs!405052 d!543203))

(declare-fun m!2200167 () Bool)

(assert (=> bs!405052 m!2200167))

(assert (=> bs!405052 m!2199453))

(assert (=> b!1778167 d!543203))

(declare-fun d!543205 () Bool)

(assert (=> d!543205 (isPrefix!1749 (++!5333 lt!690326 (Cons!19592 (head!4150 (getSuffix!916 lt!690342 lt!690326)) Nil!19592)) lt!690342)))

(declare-fun lt!690587 () Unit!33852)

(declare-fun choose!11130 (List!19662 List!19662) Unit!33852)

(assert (=> d!543205 (= lt!690587 (choose!11130 lt!690326 lt!690342))))

(assert (=> d!543205 (isPrefix!1749 lt!690326 lt!690342)))

(assert (=> d!543205 (= (lemmaAddHeadSuffixToPrefixStillPrefix!285 lt!690326 lt!690342) lt!690587)))

(declare-fun bs!405055 () Bool)

(assert (= bs!405055 d!543205))

(declare-fun m!2200187 () Bool)

(assert (=> bs!405055 m!2200187))

(declare-fun m!2200189 () Bool)

(assert (=> bs!405055 m!2200189))

(assert (=> bs!405055 m!2199505))

(declare-fun m!2200191 () Bool)

(assert (=> bs!405055 m!2200191))

(assert (=> bs!405055 m!2199453))

(assert (=> bs!405055 m!2199505))

(assert (=> bs!405055 m!2200187))

(declare-fun m!2200193 () Bool)

(assert (=> bs!405055 m!2200193))

(assert (=> b!1778167 d!543205))

(declare-fun d!543213 () Bool)

(assert (=> d!543213 (isPrefix!1749 lt!690362 lt!690331)))

(declare-fun lt!690590 () Unit!33852)

(declare-fun choose!11131 (List!19662 List!19662 List!19662) Unit!33852)

(assert (=> d!543213 (= lt!690590 (choose!11131 lt!690331 lt!690362 lt!690342))))

(assert (=> d!543213 (isPrefix!1749 lt!690331 lt!690342)))

(assert (=> d!543213 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!157 lt!690331 lt!690362 lt!690342) lt!690590)))

(declare-fun bs!405056 () Bool)

(assert (= bs!405056 d!543213))

(assert (=> bs!405056 m!2199515))

(declare-fun m!2200195 () Bool)

(assert (=> bs!405056 m!2200195))

(assert (=> bs!405056 m!2199443))

(assert (=> b!1778167 d!543213))

(declare-fun d!543215 () Bool)

(declare-fun lt!690591 () List!19662)

(assert (=> d!543215 (= (++!5333 lt!690326 lt!690591) lt!690342)))

(declare-fun e!1138304 () List!19662)

(assert (=> d!543215 (= lt!690591 e!1138304)))

(declare-fun c!289448 () Bool)

(assert (=> d!543215 (= c!289448 ((_ is Cons!19592) lt!690326))))

(assert (=> d!543215 (>= (size!15568 lt!690342) (size!15568 lt!690326))))

(assert (=> d!543215 (= (getSuffix!916 lt!690342 lt!690326) lt!690591)))

(declare-fun b!1778682 () Bool)

(assert (=> b!1778682 (= e!1138304 (getSuffix!916 (tail!2661 lt!690342) (t!166245 lt!690326)))))

(declare-fun b!1778683 () Bool)

(assert (=> b!1778683 (= e!1138304 lt!690342)))

(assert (= (and d!543215 c!289448) b!1778682))

(assert (= (and d!543215 (not c!289448)) b!1778683))

(declare-fun m!2200197 () Bool)

(assert (=> d!543215 m!2200197))

(assert (=> d!543215 m!2199889))

(assert (=> d!543215 m!2199535))

(assert (=> b!1778682 m!2199891))

(assert (=> b!1778682 m!2199891))

(declare-fun m!2200199 () Bool)

(assert (=> b!1778682 m!2200199))

(assert (=> b!1778167 d!543215))

(declare-fun b!1778686 () Bool)

(declare-fun e!1138308 () Bool)

(declare-fun e!1138310 () Bool)

(assert (=> b!1778686 (= e!1138308 e!1138310)))

(declare-fun res!801576 () Bool)

(assert (=> b!1778686 (=> (not res!801576) (not e!1138310))))

(declare-fun lt!690592 () Bool)

(assert (=> b!1778686 (= res!801576 (not lt!690592))))

(declare-fun b!1778687 () Bool)

(declare-fun e!1138311 () Bool)

(assert (=> b!1778687 (= e!1138311 (matchR!2310 (derivativeStep!1254 lt!690343 (head!4150 lt!690331)) (tail!2661 lt!690331)))))

(declare-fun b!1778688 () Bool)

(declare-fun res!801578 () Bool)

(assert (=> b!1778688 (=> res!801578 e!1138308)))

(assert (=> b!1778688 (= res!801578 (not ((_ is ElementMatch!4837) lt!690343)))))

(declare-fun e!1138312 () Bool)

(assert (=> b!1778688 (= e!1138312 e!1138308)))

(declare-fun b!1778689 () Bool)

(declare-fun res!801580 () Bool)

(declare-fun e!1138309 () Bool)

(assert (=> b!1778689 (=> (not res!801580) (not e!1138309))))

(assert (=> b!1778689 (= res!801580 (isEmpty!12378 (tail!2661 lt!690331)))))

(declare-fun b!1778690 () Bool)

(assert (=> b!1778690 (= e!1138312 (not lt!690592))))

(declare-fun b!1778691 () Bool)

(declare-fun res!801581 () Bool)

(declare-fun e!1138313 () Bool)

(assert (=> b!1778691 (=> res!801581 e!1138313)))

(assert (=> b!1778691 (= res!801581 (not (isEmpty!12378 (tail!2661 lt!690331))))))

(declare-fun b!1778692 () Bool)

(assert (=> b!1778692 (= e!1138313 (not (= (head!4150 lt!690331) (c!289350 lt!690343))))))

(declare-fun d!543217 () Bool)

(declare-fun e!1138307 () Bool)

(assert (=> d!543217 e!1138307))

(declare-fun c!289451 () Bool)

(assert (=> d!543217 (= c!289451 ((_ is EmptyExpr!4837) lt!690343))))

(assert (=> d!543217 (= lt!690592 e!1138311)))

(declare-fun c!289452 () Bool)

(assert (=> d!543217 (= c!289452 (isEmpty!12378 lt!690331))))

(assert (=> d!543217 (validRegex!1959 lt!690343)))

(assert (=> d!543217 (= (matchR!2310 lt!690343 lt!690331) lt!690592)))

(declare-fun b!1778693 () Bool)

(assert (=> b!1778693 (= e!1138311 (nullable!1485 lt!690343))))

(declare-fun b!1778694 () Bool)

(assert (=> b!1778694 (= e!1138310 e!1138313)))

(declare-fun res!801577 () Bool)

(assert (=> b!1778694 (=> res!801577 e!1138313)))

(declare-fun call!111249 () Bool)

(assert (=> b!1778694 (= res!801577 call!111249)))

(declare-fun b!1778695 () Bool)

(assert (=> b!1778695 (= e!1138307 e!1138312)))

(declare-fun c!289453 () Bool)

(assert (=> b!1778695 (= c!289453 ((_ is EmptyLang!4837) lt!690343))))

(declare-fun b!1778696 () Bool)

(assert (=> b!1778696 (= e!1138307 (= lt!690592 call!111249))))

(declare-fun bm!111244 () Bool)

(assert (=> bm!111244 (= call!111249 (isEmpty!12378 lt!690331))))

(declare-fun b!1778697 () Bool)

(declare-fun res!801574 () Bool)

(assert (=> b!1778697 (=> (not res!801574) (not e!1138309))))

(assert (=> b!1778697 (= res!801574 (not call!111249))))

(declare-fun b!1778698 () Bool)

(assert (=> b!1778698 (= e!1138309 (= (head!4150 lt!690331) (c!289350 lt!690343)))))

(declare-fun b!1778699 () Bool)

(declare-fun res!801575 () Bool)

(assert (=> b!1778699 (=> res!801575 e!1138308)))

(assert (=> b!1778699 (= res!801575 e!1138309)))

(declare-fun res!801579 () Bool)

(assert (=> b!1778699 (=> (not res!801579) (not e!1138309))))

(assert (=> b!1778699 (= res!801579 lt!690592)))

(assert (= (and d!543217 c!289452) b!1778693))

(assert (= (and d!543217 (not c!289452)) b!1778687))

(assert (= (and d!543217 c!289451) b!1778696))

(assert (= (and d!543217 (not c!289451)) b!1778695))

(assert (= (and b!1778695 c!289453) b!1778690))

(assert (= (and b!1778695 (not c!289453)) b!1778688))

(assert (= (and b!1778688 (not res!801578)) b!1778699))

(assert (= (and b!1778699 res!801579) b!1778697))

(assert (= (and b!1778697 res!801574) b!1778689))

(assert (= (and b!1778689 res!801580) b!1778698))

(assert (= (and b!1778699 (not res!801575)) b!1778686))

(assert (= (and b!1778686 res!801576) b!1778694))

(assert (= (and b!1778694 (not res!801577)) b!1778691))

(assert (= (and b!1778691 (not res!801581)) b!1778692))

(assert (= (or b!1778696 b!1778697 b!1778694) bm!111244))

(assert (=> b!1778693 m!2199621))

(assert (=> b!1778689 m!2199741))

(assert (=> b!1778689 m!2199741))

(assert (=> b!1778689 m!2199743))

(assert (=> b!1778692 m!2199745))

(assert (=> d!543217 m!2199747))

(assert (=> d!543217 m!2199631))

(assert (=> b!1778687 m!2199745))

(assert (=> b!1778687 m!2199745))

(declare-fun m!2200207 () Bool)

(assert (=> b!1778687 m!2200207))

(assert (=> b!1778687 m!2199741))

(assert (=> b!1778687 m!2200207))

(assert (=> b!1778687 m!2199741))

(declare-fun m!2200211 () Bool)

(assert (=> b!1778687 m!2200211))

(assert (=> bm!111244 m!2199747))

(assert (=> b!1778698 m!2199745))

(assert (=> b!1778691 m!2199741))

(assert (=> b!1778691 m!2199741))

(assert (=> b!1778691 m!2199743))

(assert (=> b!1778167 d!543217))

(declare-fun d!543221 () Bool)

(assert (=> d!543221 (not (matchR!2310 lt!690343 lt!690331))))

(declare-fun lt!690596 () Unit!33852)

(declare-fun choose!11132 (Regex!4837 List!19662 List!19662) Unit!33852)

(assert (=> d!543221 (= lt!690596 (choose!11132 lt!690343 lt!690362 lt!690331))))

(assert (=> d!543221 (validRegex!1959 lt!690343)))

(assert (=> d!543221 (= (lemmaNotPrefixMatchThenCannotMatchLonger!148 lt!690343 lt!690362 lt!690331) lt!690596)))

(declare-fun bs!405057 () Bool)

(assert (= bs!405057 d!543221))

(assert (=> bs!405057 m!2199519))

(declare-fun m!2200223 () Bool)

(assert (=> bs!405057 m!2200223))

(assert (=> bs!405057 m!2199631))

(assert (=> b!1778167 d!543221))

(declare-fun d!543227 () Bool)

(assert (=> d!543227 (matchR!2310 (rulesRegex!865 thiss!24550 rules!3447) (list!7963 (charsOf!2158 (_1!10995 lt!690358))))))

(declare-fun lt!690599 () Unit!33852)

(assert (=> d!543227 (= lt!690599 (choose!11117 thiss!24550 rules!3447 lt!690342 (_1!10995 lt!690358) (rule!5573 (_1!10995 lt!690358)) (_2!10995 lt!690358)))))

(assert (=> d!543227 (not (isEmpty!12379 rules!3447))))

(assert (=> d!543227 (= (lemmaMaxPrefixThenMatchesRulesRegex!216 thiss!24550 rules!3447 lt!690342 (_1!10995 lt!690358) (rule!5573 (_1!10995 lt!690358)) (_2!10995 lt!690358)) lt!690599)))

(declare-fun bs!405058 () Bool)

(assert (= bs!405058 d!543227))

(assert (=> bs!405058 m!2199497))

(assert (=> bs!405058 m!2199451))

(assert (=> bs!405058 m!2199531))

(assert (=> bs!405058 m!2199545))

(declare-fun m!2200225 () Bool)

(assert (=> bs!405058 m!2200225))

(declare-fun m!2200227 () Bool)

(assert (=> bs!405058 m!2200227))

(assert (=> bs!405058 m!2199451))

(assert (=> bs!405058 m!2199545))

(assert (=> bs!405058 m!2199531))

(assert (=> b!1778167 d!543227))

(declare-fun d!543229 () Bool)

(declare-fun e!1138317 () Bool)

(assert (=> d!543229 e!1138317))

(declare-fun res!801585 () Bool)

(assert (=> d!543229 (=> res!801585 e!1138317)))

(declare-fun lt!690600 () Bool)

(assert (=> d!543229 (= res!801585 (not lt!690600))))

(declare-fun e!1138319 () Bool)

(assert (=> d!543229 (= lt!690600 e!1138319)))

(declare-fun res!801584 () Bool)

(assert (=> d!543229 (=> res!801584 e!1138319)))

(assert (=> d!543229 (= res!801584 ((_ is Nil!19592) lt!690362))))

(assert (=> d!543229 (= (isPrefix!1749 lt!690362 lt!690331) lt!690600)))

(declare-fun b!1778707 () Bool)

(declare-fun res!801587 () Bool)

(declare-fun e!1138318 () Bool)

(assert (=> b!1778707 (=> (not res!801587) (not e!1138318))))

(assert (=> b!1778707 (= res!801587 (= (head!4150 lt!690362) (head!4150 lt!690331)))))

(declare-fun b!1778706 () Bool)

(assert (=> b!1778706 (= e!1138319 e!1138318)))

(declare-fun res!801586 () Bool)

(assert (=> b!1778706 (=> (not res!801586) (not e!1138318))))

(assert (=> b!1778706 (= res!801586 (not ((_ is Nil!19592) lt!690331)))))

(declare-fun b!1778708 () Bool)

(assert (=> b!1778708 (= e!1138318 (isPrefix!1749 (tail!2661 lt!690362) (tail!2661 lt!690331)))))

(declare-fun b!1778709 () Bool)

(assert (=> b!1778709 (= e!1138317 (>= (size!15568 lt!690331) (size!15568 lt!690362)))))

(assert (= (and d!543229 (not res!801584)) b!1778706))

(assert (= (and b!1778706 res!801586) b!1778707))

(assert (= (and b!1778707 res!801587) b!1778708))

(assert (= (and d!543229 (not res!801585)) b!1778709))

(assert (=> b!1778707 m!2199791))

(assert (=> b!1778707 m!2199745))

(assert (=> b!1778708 m!2199795))

(assert (=> b!1778708 m!2199741))

(assert (=> b!1778708 m!2199795))

(assert (=> b!1778708 m!2199741))

(declare-fun m!2200229 () Bool)

(assert (=> b!1778708 m!2200229))

(assert (=> b!1778709 m!2199475))

(declare-fun m!2200231 () Bool)

(assert (=> b!1778709 m!2200231))

(assert (=> b!1778167 d!543229))

(declare-fun d!543231 () Bool)

(assert (=> d!543231 (= (head!4150 lt!690337) (h!24993 lt!690337))))

(assert (=> b!1778167 d!543231))

(declare-fun d!543233 () Bool)

(declare-fun res!801593 () Bool)

(declare-fun e!1138323 () Bool)

(assert (=> d!543233 (=> (not res!801593) (not e!1138323))))

(assert (=> d!543233 (= res!801593 (not (isEmpty!12378 (originalCharacters!4323 token!523))))))

(assert (=> d!543233 (= (inv!25492 token!523) e!1138323)))

(declare-fun b!1778715 () Bool)

(declare-fun res!801594 () Bool)

(assert (=> b!1778715 (=> (not res!801594) (not e!1138323))))

(assert (=> b!1778715 (= res!801594 (= (originalCharacters!4323 token!523) (list!7963 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 token!523))) (value!109679 token!523)))))))

(declare-fun b!1778716 () Bool)

(assert (=> b!1778716 (= e!1138323 (= (size!15566 token!523) (size!15568 (originalCharacters!4323 token!523))))))

(assert (= (and d!543233 res!801593) b!1778715))

(assert (= (and b!1778715 res!801594) b!1778716))

(declare-fun b_lambda!58147 () Bool)

(assert (=> (not b_lambda!58147) (not b!1778715)))

(assert (=> b!1778715 t!166254))

(declare-fun b_and!136123 () Bool)

(assert (= b_and!136111 (and (=> t!166254 result!129918) b_and!136123)))

(assert (=> b!1778715 t!166256))

(declare-fun b_and!136125 () Bool)

(assert (= b_and!136113 (and (=> t!166256 result!129920) b_and!136125)))

(assert (=> b!1778715 t!166258))

(declare-fun b_and!136127 () Bool)

(assert (= b_and!136115 (and (=> t!166258 result!129922) b_and!136127)))

(declare-fun m!2200249 () Bool)

(assert (=> d!543233 m!2200249))

(assert (=> b!1778715 m!2199859))

(assert (=> b!1778715 m!2199859))

(declare-fun m!2200251 () Bool)

(assert (=> b!1778715 m!2200251))

(declare-fun m!2200253 () Bool)

(assert (=> b!1778716 m!2200253))

(assert (=> start!176694 d!543233))

(declare-fun b!1778727 () Bool)

(declare-fun e!1138330 () Bool)

(assert (=> b!1778727 (= e!1138330 true)))

(declare-fun d!543245 () Bool)

(assert (=> d!543245 e!1138330))

(assert (= d!543245 b!1778727))

(declare-fun lambda!70619 () Int)

(declare-fun order!12613 () Int)

(declare-fun dynLambda!9600 (Int Int) Int)

(assert (=> b!1778727 (< (dynLambda!9594 order!12607 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) (dynLambda!9600 order!12613 lambda!70619))))

(assert (=> b!1778727 (< (dynLambda!9596 order!12611 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) (dynLambda!9600 order!12613 lambda!70619))))

(assert (=> d!543245 (= (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (seqFromList!2478 (originalCharacters!4323 (_1!10995 lt!690358)))))))

(declare-fun lt!690607 () Unit!33852)

(declare-fun Forall2of!146 (Int BalanceConc!12978 BalanceConc!12978) Unit!33852)

(assert (=> d!543245 (= lt!690607 (Forall2of!146 lambda!70619 lt!690336 (seqFromList!2478 (originalCharacters!4323 (_1!10995 lt!690358)))))))

(assert (=> d!543245 (= (list!7963 lt!690336) (list!7963 (seqFromList!2478 (originalCharacters!4323 (_1!10995 lt!690358)))))))

(assert (=> d!543245 (= (lemmaEqSameImage!420 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) lt!690336 (seqFromList!2478 (originalCharacters!4323 (_1!10995 lt!690358)))) lt!690607)))

(declare-fun b_lambda!58149 () Bool)

(assert (=> (not b_lambda!58149) (not d!543245)))

(assert (=> d!543245 t!166233))

(declare-fun b_and!136129 () Bool)

(assert (= b_and!136117 (and (=> t!166233 result!129898) b_and!136129)))

(assert (=> d!543245 t!166235))

(declare-fun b_and!136131 () Bool)

(assert (= b_and!136119 (and (=> t!166235 result!129902) b_and!136131)))

(assert (=> d!543245 t!166237))

(declare-fun b_and!136133 () Bool)

(assert (= b_and!136121 (and (=> t!166237 result!129904) b_and!136133)))

(declare-fun b_lambda!58151 () Bool)

(assert (=> (not b_lambda!58151) (not d!543245)))

(declare-fun tb!108011 () Bool)

(declare-fun t!166266 () Bool)

(assert (=> (and b!1778153 (= (toValue!5036 (transformation!3509 (h!24994 rules!3447))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166266) tb!108011))

(declare-fun result!129930 () Bool)

(assert (=> tb!108011 (= result!129930 (inv!21 (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (seqFromList!2478 (originalCharacters!4323 (_1!10995 lt!690358))))))))

(declare-fun m!2200257 () Bool)

(assert (=> tb!108011 m!2200257))

(assert (=> d!543245 t!166266))

(declare-fun b_and!136135 () Bool)

(assert (= b_and!136129 (and (=> t!166266 result!129930) b_and!136135)))

(declare-fun t!166268 () Bool)

(declare-fun tb!108013 () Bool)

(assert (=> (and b!1778163 (= (toValue!5036 (transformation!3509 (rule!5573 token!523))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166268) tb!108013))

(declare-fun result!129932 () Bool)

(assert (= result!129932 result!129930))

(assert (=> d!543245 t!166268))

(declare-fun b_and!136141 () Bool)

(assert (= b_and!136131 (and (=> t!166268 result!129932) b_and!136141)))

(declare-fun t!166270 () Bool)

(declare-fun tb!108015 () Bool)

(assert (=> (and b!1778172 (= (toValue!5036 (transformation!3509 rule!422)) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166270) tb!108015))

(declare-fun result!129934 () Bool)

(assert (= result!129934 result!129930))

(assert (=> d!543245 t!166270))

(declare-fun b_and!136145 () Bool)

(assert (= b_and!136133 (and (=> t!166270 result!129934) b_and!136145)))

(assert (=> d!543245 m!2199561))

(assert (=> d!543245 m!2199457))

(declare-fun m!2200259 () Bool)

(assert (=> d!543245 m!2200259))

(assert (=> d!543245 m!2199457))

(declare-fun m!2200261 () Bool)

(assert (=> d!543245 m!2200261))

(assert (=> d!543245 m!2199457))

(declare-fun m!2200263 () Bool)

(assert (=> d!543245 m!2200263))

(assert (=> d!543245 m!2199427))

(assert (=> b!1778145 d!543245))

(declare-fun d!543249 () Bool)

(assert (=> d!543249 (= (apply!5309 (transformation!3509 (rule!5573 (_1!10995 lt!690358))) lt!690336) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))

(declare-fun b_lambda!58157 () Bool)

(assert (=> (not b_lambda!58157) (not d!543249)))

(assert (=> d!543249 t!166233))

(declare-fun b_and!136151 () Bool)

(assert (= b_and!136135 (and (=> t!166233 result!129898) b_and!136151)))

(assert (=> d!543249 t!166235))

(declare-fun b_and!136153 () Bool)

(assert (= b_and!136141 (and (=> t!166235 result!129902) b_and!136153)))

(assert (=> d!543249 t!166237))

(declare-fun b_and!136155 () Bool)

(assert (= b_and!136145 (and (=> t!166237 result!129904) b_and!136155)))

(assert (=> d!543249 m!2199561))

(assert (=> b!1778145 d!543249))

(declare-fun d!543251 () Bool)

(assert (=> d!543251 (= (size!15566 (_1!10995 lt!690358)) (size!15568 (originalCharacters!4323 (_1!10995 lt!690358))))))

(declare-fun Unit!33863 () Unit!33852)

(assert (=> d!543251 (= (lemmaCharactersSize!567 (_1!10995 lt!690358)) Unit!33863)))

(declare-fun bs!405063 () Bool)

(assert (= bs!405063 d!543251))

(declare-fun m!2200273 () Bool)

(assert (=> bs!405063 m!2200273))

(assert (=> b!1778145 d!543251))

(declare-fun d!543255 () Bool)

(declare-fun lt!690609 () Int)

(assert (=> d!543255 (= lt!690609 (size!15568 (list!7963 lt!690336)))))

(assert (=> d!543255 (= lt!690609 (size!15569 (c!289351 lt!690336)))))

(assert (=> d!543255 (= (size!15567 lt!690336) lt!690609)))

(declare-fun bs!405064 () Bool)

(assert (= bs!405064 d!543255))

(assert (=> bs!405064 m!2199427))

(assert (=> bs!405064 m!2199427))

(declare-fun m!2200275 () Bool)

(assert (=> bs!405064 m!2200275))

(declare-fun m!2200277 () Bool)

(assert (=> bs!405064 m!2200277))

(assert (=> b!1778145 d!543255))

(declare-fun d!543259 () Bool)

(assert (=> d!543259 (= (seqFromList!2478 (originalCharacters!4323 (_1!10995 lt!690358))) (fromListB!1133 (originalCharacters!4323 (_1!10995 lt!690358))))))

(declare-fun bs!405065 () Bool)

(assert (= bs!405065 d!543259))

(declare-fun m!2200279 () Bool)

(assert (=> bs!405065 m!2200279))

(assert (=> b!1778145 d!543259))

(declare-fun d!543261 () Bool)

(assert (=> d!543261 (= (isEmpty!12378 (_2!10995 lt!690329)) ((_ is Nil!19592) (_2!10995 lt!690329)))))

(assert (=> b!1778149 d!543261))

(declare-fun d!543263 () Bool)

(assert (=> d!543263 (= (inv!25486 (tag!3899 (h!24994 rules!3447))) (= (mod (str.len (value!109678 (tag!3899 (h!24994 rules!3447)))) 2) 0))))

(assert (=> b!1778148 d!543263))

(declare-fun d!543265 () Bool)

(declare-fun res!801613 () Bool)

(declare-fun e!1138347 () Bool)

(assert (=> d!543265 (=> (not res!801613) (not e!1138347))))

(assert (=> d!543265 (= res!801613 (semiInverseModEq!1400 (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toValue!5036 (transformation!3509 (h!24994 rules!3447)))))))

(assert (=> d!543265 (= (inv!25491 (transformation!3509 (h!24994 rules!3447))) e!1138347)))

(declare-fun b!1778751 () Bool)

(assert (=> b!1778751 (= e!1138347 (equivClasses!1341 (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toValue!5036 (transformation!3509 (h!24994 rules!3447)))))))

(assert (= (and d!543265 res!801613) b!1778751))

(declare-fun m!2200289 () Bool)

(assert (=> d!543265 m!2200289))

(declare-fun m!2200291 () Bool)

(assert (=> b!1778751 m!2200291))

(assert (=> b!1778148 d!543265))

(declare-fun d!543269 () Bool)

(assert (=> d!543269 (= (inv!25486 (tag!3899 rule!422)) (= (mod (str.len (value!109678 (tag!3899 rule!422))) 2) 0))))

(assert (=> b!1778174 d!543269))

(declare-fun d!543271 () Bool)

(declare-fun res!801616 () Bool)

(declare-fun e!1138349 () Bool)

(assert (=> d!543271 (=> (not res!801616) (not e!1138349))))

(assert (=> d!543271 (= res!801616 (semiInverseModEq!1400 (toChars!4895 (transformation!3509 rule!422)) (toValue!5036 (transformation!3509 rule!422))))))

(assert (=> d!543271 (= (inv!25491 (transformation!3509 rule!422)) e!1138349)))

(declare-fun b!1778754 () Bool)

(assert (=> b!1778754 (= e!1138349 (equivClasses!1341 (toChars!4895 (transformation!3509 rule!422)) (toValue!5036 (transformation!3509 rule!422))))))

(assert (= (and d!543271 res!801616) b!1778754))

(declare-fun m!2200293 () Bool)

(assert (=> d!543271 m!2200293))

(declare-fun m!2200295 () Bool)

(assert (=> b!1778754 m!2200295))

(assert (=> b!1778174 d!543271))

(declare-fun b!1778755 () Bool)

(declare-fun e!1138350 () Bool)

(declare-fun e!1138352 () Bool)

(assert (=> b!1778755 (= e!1138350 e!1138352)))

(declare-fun res!801622 () Bool)

(assert (=> b!1778755 (=> (not res!801622) (not e!1138352))))

(declare-fun lt!690613 () Option!4040)

(assert (=> b!1778755 (= res!801622 (isDefined!3383 lt!690613))))

(declare-fun b!1778756 () Bool)

(declare-fun res!801620 () Bool)

(assert (=> b!1778756 (=> (not res!801620) (not e!1138352))))

(assert (=> b!1778756 (= res!801620 (= (++!5333 (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690613)))) (_2!10995 (get!6012 lt!690613))) lt!690342))))

(declare-fun d!543273 () Bool)

(assert (=> d!543273 e!1138350))

(declare-fun res!801617 () Bool)

(assert (=> d!543273 (=> res!801617 e!1138350)))

(assert (=> d!543273 (= res!801617 (isEmpty!12382 lt!690613))))

(declare-fun e!1138351 () Option!4040)

(assert (=> d!543273 (= lt!690613 e!1138351)))

(declare-fun c!289459 () Bool)

(assert (=> d!543273 (= c!289459 (and ((_ is Cons!19593) rules!3447) ((_ is Nil!19593) (t!166246 rules!3447))))))

(declare-fun lt!690615 () Unit!33852)

(declare-fun lt!690612 () Unit!33852)

(assert (=> d!543273 (= lt!690615 lt!690612)))

(assert (=> d!543273 (isPrefix!1749 lt!690342 lt!690342)))

(assert (=> d!543273 (= lt!690612 (lemmaIsPrefixRefl!1154 lt!690342 lt!690342))))

(assert (=> d!543273 (rulesValidInductive!1190 thiss!24550 rules!3447)))

(assert (=> d!543273 (= (maxPrefix!1692 thiss!24550 rules!3447 lt!690342) lt!690613)))

(declare-fun b!1778757 () Bool)

(declare-fun res!801618 () Bool)

(assert (=> b!1778757 (=> (not res!801618) (not e!1138352))))

(assert (=> b!1778757 (= res!801618 (= (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690613)))) (originalCharacters!4323 (_1!10995 (get!6012 lt!690613)))))))

(declare-fun b!1778758 () Bool)

(declare-fun lt!690611 () Option!4040)

(declare-fun lt!690614 () Option!4040)

(assert (=> b!1778758 (= e!1138351 (ite (and ((_ is None!4039) lt!690611) ((_ is None!4039) lt!690614)) None!4039 (ite ((_ is None!4039) lt!690614) lt!690611 (ite ((_ is None!4039) lt!690611) lt!690614 (ite (>= (size!15566 (_1!10995 (v!25524 lt!690611))) (size!15566 (_1!10995 (v!25524 lt!690614)))) lt!690611 lt!690614)))))))

(declare-fun call!111251 () Option!4040)

(assert (=> b!1778758 (= lt!690611 call!111251)))

(assert (=> b!1778758 (= lt!690614 (maxPrefix!1692 thiss!24550 (t!166246 rules!3447) lt!690342))))

(declare-fun b!1778759 () Bool)

(declare-fun res!801619 () Bool)

(assert (=> b!1778759 (=> (not res!801619) (not e!1138352))))

(assert (=> b!1778759 (= res!801619 (= (value!109679 (_1!10995 (get!6012 lt!690613))) (apply!5309 (transformation!3509 (rule!5573 (_1!10995 (get!6012 lt!690613)))) (seqFromList!2478 (originalCharacters!4323 (_1!10995 (get!6012 lt!690613)))))))))

(declare-fun bm!111246 () Bool)

(assert (=> bm!111246 (= call!111251 (maxPrefixOneRule!1061 thiss!24550 (h!24994 rules!3447) lt!690342))))

(declare-fun b!1778760 () Bool)

(declare-fun res!801621 () Bool)

(assert (=> b!1778760 (=> (not res!801621) (not e!1138352))))

(assert (=> b!1778760 (= res!801621 (matchR!2310 (regex!3509 (rule!5573 (_1!10995 (get!6012 lt!690613)))) (list!7963 (charsOf!2158 (_1!10995 (get!6012 lt!690613))))))))

(declare-fun b!1778761 () Bool)

(declare-fun res!801623 () Bool)

(assert (=> b!1778761 (=> (not res!801623) (not e!1138352))))

(assert (=> b!1778761 (= res!801623 (< (size!15568 (_2!10995 (get!6012 lt!690613))) (size!15568 lt!690342)))))

(declare-fun b!1778762 () Bool)

(assert (=> b!1778762 (= e!1138351 call!111251)))

(declare-fun b!1778763 () Bool)

(assert (=> b!1778763 (= e!1138352 (contains!3541 rules!3447 (rule!5573 (_1!10995 (get!6012 lt!690613)))))))

(assert (= (and d!543273 c!289459) b!1778762))

(assert (= (and d!543273 (not c!289459)) b!1778758))

(assert (= (or b!1778762 b!1778758) bm!111246))

(assert (= (and d!543273 (not res!801617)) b!1778755))

(assert (= (and b!1778755 res!801622) b!1778757))

(assert (= (and b!1778757 res!801618) b!1778761))

(assert (= (and b!1778761 res!801623) b!1778756))

(assert (= (and b!1778756 res!801620) b!1778759))

(assert (= (and b!1778759 res!801619) b!1778760))

(assert (= (and b!1778760 res!801621) b!1778763))

(declare-fun m!2200297 () Bool)

(assert (=> b!1778761 m!2200297))

(declare-fun m!2200299 () Bool)

(assert (=> b!1778761 m!2200299))

(assert (=> b!1778761 m!2199889))

(declare-fun m!2200301 () Bool)

(assert (=> d!543273 m!2200301))

(declare-fun m!2200303 () Bool)

(assert (=> d!543273 m!2200303))

(declare-fun m!2200305 () Bool)

(assert (=> d!543273 m!2200305))

(assert (=> d!543273 m!2199829))

(assert (=> b!1778759 m!2200297))

(declare-fun m!2200307 () Bool)

(assert (=> b!1778759 m!2200307))

(assert (=> b!1778759 m!2200307))

(declare-fun m!2200309 () Bool)

(assert (=> b!1778759 m!2200309))

(assert (=> b!1778756 m!2200297))

(declare-fun m!2200311 () Bool)

(assert (=> b!1778756 m!2200311))

(assert (=> b!1778756 m!2200311))

(declare-fun m!2200313 () Bool)

(assert (=> b!1778756 m!2200313))

(assert (=> b!1778756 m!2200313))

(declare-fun m!2200317 () Bool)

(assert (=> b!1778756 m!2200317))

(declare-fun m!2200319 () Bool)

(assert (=> b!1778758 m!2200319))

(declare-fun m!2200321 () Bool)

(assert (=> b!1778755 m!2200321))

(assert (=> b!1778763 m!2200297))

(declare-fun m!2200323 () Bool)

(assert (=> b!1778763 m!2200323))

(assert (=> b!1778757 m!2200297))

(assert (=> b!1778757 m!2200311))

(assert (=> b!1778757 m!2200311))

(assert (=> b!1778757 m!2200313))

(declare-fun m!2200325 () Bool)

(assert (=> bm!111246 m!2200325))

(assert (=> b!1778760 m!2200297))

(assert (=> b!1778760 m!2200311))

(assert (=> b!1778760 m!2200311))

(assert (=> b!1778760 m!2200313))

(assert (=> b!1778760 m!2200313))

(declare-fun m!2200333 () Bool)

(assert (=> b!1778760 m!2200333))

(assert (=> b!1778173 d!543273))

(declare-fun d!543279 () Bool)

(declare-fun e!1138356 () Bool)

(assert (=> d!543279 e!1138356))

(declare-fun res!801627 () Bool)

(assert (=> d!543279 (=> res!801627 e!1138356)))

(declare-fun lt!690620 () Bool)

(assert (=> d!543279 (= res!801627 (not lt!690620))))

(declare-fun e!1138361 () Bool)

(assert (=> d!543279 (= lt!690620 e!1138361)))

(declare-fun res!801625 () Bool)

(assert (=> d!543279 (=> res!801625 e!1138361)))

(assert (=> d!543279 (= res!801625 ((_ is Nil!19592) lt!690331))))

(assert (=> d!543279 (= (isPrefix!1749 lt!690331 (++!5333 lt!690331 (_2!10995 lt!690358))) lt!690620)))

(declare-fun b!1778770 () Bool)

(declare-fun res!801630 () Bool)

(declare-fun e!1138360 () Bool)

(assert (=> b!1778770 (=> (not res!801630) (not e!1138360))))

(assert (=> b!1778770 (= res!801630 (= (head!4150 lt!690331) (head!4150 (++!5333 lt!690331 (_2!10995 lt!690358)))))))

(declare-fun b!1778769 () Bool)

(assert (=> b!1778769 (= e!1138361 e!1138360)))

(declare-fun res!801628 () Bool)

(assert (=> b!1778769 (=> (not res!801628) (not e!1138360))))

(assert (=> b!1778769 (= res!801628 (not ((_ is Nil!19592) (++!5333 lt!690331 (_2!10995 lt!690358)))))))

(declare-fun b!1778775 () Bool)

(assert (=> b!1778775 (= e!1138360 (isPrefix!1749 (tail!2661 lt!690331) (tail!2661 (++!5333 lt!690331 (_2!10995 lt!690358)))))))

(declare-fun b!1778777 () Bool)

(assert (=> b!1778777 (= e!1138356 (>= (size!15568 (++!5333 lt!690331 (_2!10995 lt!690358))) (size!15568 lt!690331)))))

(assert (= (and d!543279 (not res!801625)) b!1778769))

(assert (= (and b!1778769 res!801628) b!1778770))

(assert (= (and b!1778770 res!801630) b!1778775))

(assert (= (and d!543279 (not res!801627)) b!1778777))

(assert (=> b!1778770 m!2199745))

(assert (=> b!1778770 m!2199439))

(declare-fun m!2200335 () Bool)

(assert (=> b!1778770 m!2200335))

(assert (=> b!1778775 m!2199741))

(assert (=> b!1778775 m!2199439))

(declare-fun m!2200337 () Bool)

(assert (=> b!1778775 m!2200337))

(assert (=> b!1778775 m!2199741))

(assert (=> b!1778775 m!2200337))

(declare-fun m!2200339 () Bool)

(assert (=> b!1778775 m!2200339))

(assert (=> b!1778777 m!2199439))

(declare-fun m!2200341 () Bool)

(assert (=> b!1778777 m!2200341))

(assert (=> b!1778777 m!2199475))

(assert (=> b!1778173 d!543279))

(declare-fun d!543283 () Bool)

(assert (=> d!543283 (= (get!6012 lt!690340) (v!25524 lt!690340))))

(assert (=> b!1778173 d!543283))

(assert (=> b!1778173 d!543121))

(declare-fun d!543285 () Bool)

(assert (=> d!543285 (isPrefix!1749 lt!690331 (++!5333 lt!690331 (_2!10995 lt!690358)))))

(declare-fun lt!690623 () Unit!33852)

(declare-fun choose!11135 (List!19662 List!19662) Unit!33852)

(assert (=> d!543285 (= lt!690623 (choose!11135 lt!690331 (_2!10995 lt!690358)))))

(assert (=> d!543285 (= (lemmaConcatTwoListThenFirstIsPrefix!1258 lt!690331 (_2!10995 lt!690358)) lt!690623)))

(declare-fun bs!405067 () Bool)

(assert (= bs!405067 d!543285))

(assert (=> bs!405067 m!2199439))

(assert (=> bs!405067 m!2199439))

(assert (=> bs!405067 m!2199445))

(declare-fun m!2200355 () Bool)

(assert (=> bs!405067 m!2200355))

(assert (=> b!1778173 d!543285))

(declare-fun d!543291 () Bool)

(assert (=> d!543291 (isDefined!3383 (maxPrefix!1692 thiss!24550 rules!3447 (++!5333 lt!690326 suffix!1421)))))

(declare-fun lt!690690 () Unit!33852)

(declare-fun e!1138422 () Unit!33852)

(assert (=> d!543291 (= lt!690690 e!1138422)))

(declare-fun c!289476 () Bool)

(assert (=> d!543291 (= c!289476 (isEmpty!12382 (maxPrefix!1692 thiss!24550 rules!3447 (++!5333 lt!690326 suffix!1421))))))

(declare-fun lt!690696 () Unit!33852)

(declare-fun lt!690695 () Unit!33852)

(assert (=> d!543291 (= lt!690696 lt!690695)))

(declare-fun e!1138423 () Bool)

(assert (=> d!543291 e!1138423))

(declare-fun res!801669 () Bool)

(assert (=> d!543291 (=> (not res!801669) (not e!1138423))))

(declare-fun lt!690687 () Token!6584)

(assert (=> d!543291 (= res!801669 (isDefined!3384 (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 lt!690687)))))))

(assert (=> d!543291 (= lt!690695 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!557 thiss!24550 rules!3447 lt!690326 lt!690687))))

(declare-fun lt!690688 () Unit!33852)

(declare-fun lt!690685 () Unit!33852)

(assert (=> d!543291 (= lt!690688 lt!690685)))

(declare-fun lt!690701 () List!19662)

(assert (=> d!543291 (isPrefix!1749 lt!690701 (++!5333 lt!690326 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!335 (List!19662 List!19662 List!19662) Unit!33852)

(assert (=> d!543291 (= lt!690685 (lemmaPrefixStaysPrefixWhenAddingToSuffix!335 lt!690701 lt!690326 suffix!1421))))

(assert (=> d!543291 (= lt!690701 (list!7963 (charsOf!2158 lt!690687)))))

(declare-fun lt!690691 () Unit!33852)

(declare-fun lt!690700 () Unit!33852)

(assert (=> d!543291 (= lt!690691 lt!690700)))

(declare-fun lt!690697 () List!19662)

(declare-fun lt!690693 () List!19662)

(assert (=> d!543291 (isPrefix!1749 lt!690697 (++!5333 lt!690697 lt!690693))))

(assert (=> d!543291 (= lt!690700 (lemmaConcatTwoListThenFirstIsPrefix!1258 lt!690697 lt!690693))))

(assert (=> d!543291 (= lt!690693 (_2!10995 (get!6012 (maxPrefix!1692 thiss!24550 rules!3447 lt!690326))))))

(assert (=> d!543291 (= lt!690697 (list!7963 (charsOf!2158 lt!690687)))))

(declare-datatypes ((List!19669 0))(
  ( (Nil!19599) (Cons!19599 (h!25000 Token!6584) (t!166312 List!19669)) )
))
(declare-fun head!4152 (List!19669) Token!6584)

(declare-datatypes ((IArray!13043 0))(
  ( (IArray!13044 (innerList!6579 List!19669)) )
))
(declare-datatypes ((Conc!6519 0))(
  ( (Node!6519 (left!15703 Conc!6519) (right!16033 Conc!6519) (csize!13268 Int) (cheight!6730 Int)) (Leaf!9494 (xs!9395 IArray!13043) (csize!13269 Int)) (Empty!6519) )
))
(declare-datatypes ((BalanceConc!12982 0))(
  ( (BalanceConc!12983 (c!289487 Conc!6519)) )
))
(declare-fun list!7967 (BalanceConc!12982) List!19669)

(declare-datatypes ((tuple2!19192 0))(
  ( (tuple2!19193 (_1!10998 BalanceConc!12982) (_2!10998 BalanceConc!12978)) )
))
(declare-fun lex!1474 (LexerInterface!3138 List!19663 BalanceConc!12978) tuple2!19192)

(assert (=> d!543291 (= lt!690687 (head!4152 (list!7967 (_1!10998 (lex!1474 thiss!24550 rules!3447 (seqFromList!2478 lt!690326))))))))

(assert (=> d!543291 (not (isEmpty!12379 rules!3447))))

(assert (=> d!543291 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!660 thiss!24550 rules!3447 lt!690326 suffix!1421) lt!690690)))

(declare-fun b!1778894 () Bool)

(declare-fun res!801670 () Bool)

(assert (=> b!1778894 (=> (not res!801670) (not e!1138423))))

(assert (=> b!1778894 (= res!801670 (matchR!2310 (regex!3509 (get!6013 (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 lt!690687))))) (list!7963 (charsOf!2158 lt!690687))))))

(declare-fun b!1778895 () Bool)

(assert (=> b!1778895 (= e!1138423 (= (rule!5573 lt!690687) (get!6013 (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 lt!690687))))))))

(declare-fun b!1778896 () Bool)

(declare-fun Unit!33864 () Unit!33852)

(assert (=> b!1778896 (= e!1138422 Unit!33864)))

(declare-fun lt!690694 () List!19662)

(assert (=> b!1778896 (= lt!690694 (++!5333 lt!690326 suffix!1421))))

(declare-fun lt!690698 () Unit!33852)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!343 (LexerInterface!3138 Rule!6818 List!19663 List!19662) Unit!33852)

(assert (=> b!1778896 (= lt!690698 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!343 thiss!24550 (rule!5573 lt!690687) rules!3447 lt!690694))))

(assert (=> b!1778896 (isEmpty!12382 (maxPrefixOneRule!1061 thiss!24550 (rule!5573 lt!690687) lt!690694))))

(declare-fun lt!690699 () Unit!33852)

(assert (=> b!1778896 (= lt!690699 lt!690698)))

(declare-fun lt!690689 () List!19662)

(assert (=> b!1778896 (= lt!690689 (list!7963 (charsOf!2158 lt!690687)))))

(declare-fun lt!690686 () Unit!33852)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!339 (LexerInterface!3138 Rule!6818 List!19662 List!19662) Unit!33852)

(assert (=> b!1778896 (= lt!690686 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!339 thiss!24550 (rule!5573 lt!690687) lt!690689 (++!5333 lt!690326 suffix!1421)))))

(assert (=> b!1778896 (not (matchR!2310 (regex!3509 (rule!5573 lt!690687)) lt!690689))))

(declare-fun lt!690692 () Unit!33852)

(assert (=> b!1778896 (= lt!690692 lt!690686)))

(assert (=> b!1778896 false))

(declare-fun b!1778897 () Bool)

(declare-fun Unit!33865 () Unit!33852)

(assert (=> b!1778897 (= e!1138422 Unit!33865)))

(assert (= (and d!543291 res!801669) b!1778894))

(assert (= (and b!1778894 res!801670) b!1778895))

(assert (= (and d!543291 c!289476) b!1778896))

(assert (= (and d!543291 (not c!289476)) b!1778897))

(declare-fun m!2200443 () Bool)

(assert (=> d!543291 m!2200443))

(declare-fun m!2200445 () Bool)

(assert (=> d!543291 m!2200445))

(assert (=> d!543291 m!2199497))

(assert (=> d!543291 m!2199441))

(declare-fun m!2200447 () Bool)

(assert (=> d!543291 m!2200447))

(declare-fun m!2200449 () Bool)

(assert (=> d!543291 m!2200449))

(declare-fun m!2200451 () Bool)

(assert (=> d!543291 m!2200451))

(assert (=> d!543291 m!2200443))

(declare-fun m!2200453 () Bool)

(assert (=> d!543291 m!2200453))

(declare-fun m!2200455 () Bool)

(assert (=> d!543291 m!2200455))

(declare-fun m!2200457 () Bool)

(assert (=> d!543291 m!2200457))

(assert (=> d!543291 m!2200449))

(declare-fun m!2200459 () Bool)

(assert (=> d!543291 m!2200459))

(assert (=> d!543291 m!2200455))

(declare-fun m!2200461 () Bool)

(assert (=> d!543291 m!2200461))

(assert (=> d!543291 m!2199441))

(declare-fun m!2200463 () Bool)

(assert (=> d!543291 m!2200463))

(declare-fun m!2200465 () Bool)

(assert (=> d!543291 m!2200465))

(assert (=> d!543291 m!2199487))

(declare-fun m!2200467 () Bool)

(assert (=> d!543291 m!2200467))

(assert (=> d!543291 m!2199487))

(declare-fun m!2200469 () Bool)

(assert (=> d!543291 m!2200469))

(assert (=> d!543291 m!2200463))

(assert (=> d!543291 m!2200447))

(declare-fun m!2200471 () Bool)

(assert (=> d!543291 m!2200471))

(assert (=> d!543291 m!2199441))

(declare-fun m!2200473 () Bool)

(assert (=> d!543291 m!2200473))

(assert (=> d!543291 m!2200445))

(declare-fun m!2200475 () Bool)

(assert (=> d!543291 m!2200475))

(assert (=> d!543291 m!2200447))

(declare-fun m!2200477 () Bool)

(assert (=> d!543291 m!2200477))

(assert (=> b!1778894 m!2200443))

(assert (=> b!1778894 m!2200453))

(declare-fun m!2200479 () Bool)

(assert (=> b!1778894 m!2200479))

(assert (=> b!1778894 m!2200463))

(assert (=> b!1778894 m!2200463))

(declare-fun m!2200481 () Bool)

(assert (=> b!1778894 m!2200481))

(assert (=> b!1778894 m!2200443))

(assert (=> b!1778894 m!2200453))

(assert (=> b!1778895 m!2200463))

(assert (=> b!1778895 m!2200463))

(assert (=> b!1778895 m!2200481))

(declare-fun m!2200483 () Bool)

(assert (=> b!1778896 m!2200483))

(assert (=> b!1778896 m!2200443))

(assert (=> b!1778896 m!2199441))

(declare-fun m!2200485 () Bool)

(assert (=> b!1778896 m!2200485))

(declare-fun m!2200487 () Bool)

(assert (=> b!1778896 m!2200487))

(assert (=> b!1778896 m!2199441))

(declare-fun m!2200489 () Bool)

(assert (=> b!1778896 m!2200489))

(declare-fun m!2200491 () Bool)

(assert (=> b!1778896 m!2200491))

(assert (=> b!1778896 m!2200485))

(assert (=> b!1778896 m!2200443))

(assert (=> b!1778896 m!2200453))

(assert (=> b!1778173 d!543291))

(declare-fun d!543313 () Bool)

(declare-fun e!1138426 () Bool)

(assert (=> d!543313 e!1138426))

(declare-fun res!801675 () Bool)

(assert (=> d!543313 (=> (not res!801675) (not e!1138426))))

(assert (=> d!543313 (= res!801675 (isDefined!3384 (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 (_1!10995 lt!690358))))))))

(declare-fun lt!690704 () Unit!33852)

(declare-fun choose!11137 (LexerInterface!3138 List!19663 List!19662 Token!6584) Unit!33852)

(assert (=> d!543313 (= lt!690704 (choose!11137 thiss!24550 rules!3447 lt!690342 (_1!10995 lt!690358)))))

(assert (=> d!543313 (rulesInvariant!2807 thiss!24550 rules!3447)))

(assert (=> d!543313 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!557 thiss!24550 rules!3447 lt!690342 (_1!10995 lt!690358)) lt!690704)))

(declare-fun b!1778902 () Bool)

(declare-fun res!801676 () Bool)

(assert (=> b!1778902 (=> (not res!801676) (not e!1138426))))

(assert (=> b!1778902 (= res!801676 (matchR!2310 (regex!3509 (get!6013 (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 (_1!10995 lt!690358)))))) (list!7963 (charsOf!2158 (_1!10995 lt!690358)))))))

(declare-fun b!1778903 () Bool)

(assert (=> b!1778903 (= e!1138426 (= (rule!5573 (_1!10995 lt!690358)) (get!6013 (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 (_1!10995 lt!690358)))))))))

(assert (= (and d!543313 res!801675) b!1778902))

(assert (= (and b!1778902 res!801676) b!1778903))

(assert (=> d!543313 m!2199447))

(assert (=> d!543313 m!2199447))

(declare-fun m!2200493 () Bool)

(assert (=> d!543313 m!2200493))

(declare-fun m!2200495 () Bool)

(assert (=> d!543313 m!2200495))

(assert (=> d!543313 m!2199559))

(assert (=> b!1778902 m!2199451))

(assert (=> b!1778902 m!2199545))

(assert (=> b!1778902 m!2199451))

(assert (=> b!1778902 m!2199545))

(declare-fun m!2200497 () Bool)

(assert (=> b!1778902 m!2200497))

(assert (=> b!1778902 m!2199447))

(declare-fun m!2200499 () Bool)

(assert (=> b!1778902 m!2200499))

(assert (=> b!1778902 m!2199447))

(assert (=> b!1778903 m!2199447))

(assert (=> b!1778903 m!2199447))

(assert (=> b!1778903 m!2200499))

(assert (=> b!1778173 d!543313))

(declare-fun d!543315 () Bool)

(declare-fun isEmpty!12383 (Option!4041) Bool)

(assert (=> d!543315 (= (isDefined!3384 lt!690359) (not (isEmpty!12383 lt!690359)))))

(declare-fun bs!405072 () Bool)

(assert (= bs!405072 d!543315))

(declare-fun m!2200501 () Bool)

(assert (=> bs!405072 m!2200501))

(assert (=> b!1778173 d!543315))

(declare-fun d!543317 () Bool)

(assert (=> d!543317 (= (list!7963 lt!690336) (list!7966 (c!289351 lt!690336)))))

(declare-fun bs!405073 () Bool)

(assert (= bs!405073 d!543317))

(declare-fun m!2200503 () Bool)

(assert (=> bs!405073 m!2200503))

(assert (=> b!1778173 d!543317))

(declare-fun b!1778906 () Bool)

(declare-fun res!801677 () Bool)

(declare-fun e!1138428 () Bool)

(assert (=> b!1778906 (=> (not res!801677) (not e!1138428))))

(declare-fun lt!690705 () List!19662)

(assert (=> b!1778906 (= res!801677 (= (size!15568 lt!690705) (+ (size!15568 lt!690331) (size!15568 (_2!10995 lt!690358)))))))

(declare-fun b!1778907 () Bool)

(assert (=> b!1778907 (= e!1138428 (or (not (= (_2!10995 lt!690358) Nil!19592)) (= lt!690705 lt!690331)))))

(declare-fun b!1778904 () Bool)

(declare-fun e!1138427 () List!19662)

(assert (=> b!1778904 (= e!1138427 (_2!10995 lt!690358))))

(declare-fun d!543319 () Bool)

(assert (=> d!543319 e!1138428))

(declare-fun res!801678 () Bool)

(assert (=> d!543319 (=> (not res!801678) (not e!1138428))))

(assert (=> d!543319 (= res!801678 (= (content!2846 lt!690705) ((_ map or) (content!2846 lt!690331) (content!2846 (_2!10995 lt!690358)))))))

(assert (=> d!543319 (= lt!690705 e!1138427)))

(declare-fun c!289477 () Bool)

(assert (=> d!543319 (= c!289477 ((_ is Nil!19592) lt!690331))))

(assert (=> d!543319 (= (++!5333 lt!690331 (_2!10995 lt!690358)) lt!690705)))

(declare-fun b!1778905 () Bool)

(assert (=> b!1778905 (= e!1138427 (Cons!19592 (h!24993 lt!690331) (++!5333 (t!166245 lt!690331) (_2!10995 lt!690358))))))

(assert (= (and d!543319 c!289477) b!1778904))

(assert (= (and d!543319 (not c!289477)) b!1778905))

(assert (= (and d!543319 res!801678) b!1778906))

(assert (= (and b!1778906 res!801677) b!1778907))

(declare-fun m!2200505 () Bool)

(assert (=> b!1778906 m!2200505))

(assert (=> b!1778906 m!2199475))

(declare-fun m!2200507 () Bool)

(assert (=> b!1778906 m!2200507))

(declare-fun m!2200509 () Bool)

(assert (=> d!543319 m!2200509))

(declare-fun m!2200511 () Bool)

(assert (=> d!543319 m!2200511))

(declare-fun m!2200513 () Bool)

(assert (=> d!543319 m!2200513))

(declare-fun m!2200515 () Bool)

(assert (=> b!1778905 m!2200515))

(assert (=> b!1778173 d!543319))

(declare-fun d!543321 () Bool)

(assert (=> d!543321 (isPrefix!1749 lt!690326 (++!5333 lt!690326 suffix!1421))))

(declare-fun lt!690706 () Unit!33852)

(assert (=> d!543321 (= lt!690706 (choose!11135 lt!690326 suffix!1421))))

(assert (=> d!543321 (= (lemmaConcatTwoListThenFirstIsPrefix!1258 lt!690326 suffix!1421) lt!690706)))

(declare-fun bs!405074 () Bool)

(assert (= bs!405074 d!543321))

(assert (=> bs!405074 m!2199441))

(assert (=> bs!405074 m!2199441))

(declare-fun m!2200517 () Bool)

(assert (=> bs!405074 m!2200517))

(declare-fun m!2200519 () Bool)

(assert (=> bs!405074 m!2200519))

(assert (=> b!1778173 d!543321))

(declare-fun d!543323 () Bool)

(declare-fun e!1138429 () Bool)

(assert (=> d!543323 e!1138429))

(declare-fun res!801680 () Bool)

(assert (=> d!543323 (=> res!801680 e!1138429)))

(declare-fun lt!690707 () Bool)

(assert (=> d!543323 (= res!801680 (not lt!690707))))

(declare-fun e!1138431 () Bool)

(assert (=> d!543323 (= lt!690707 e!1138431)))

(declare-fun res!801679 () Bool)

(assert (=> d!543323 (=> res!801679 e!1138431)))

(assert (=> d!543323 (= res!801679 ((_ is Nil!19592) lt!690326))))

(assert (=> d!543323 (= (isPrefix!1749 lt!690326 lt!690342) lt!690707)))

(declare-fun b!1778909 () Bool)

(declare-fun res!801682 () Bool)

(declare-fun e!1138430 () Bool)

(assert (=> b!1778909 (=> (not res!801682) (not e!1138430))))

(assert (=> b!1778909 (= res!801682 (= (head!4150 lt!690326) (head!4150 lt!690342)))))

(declare-fun b!1778908 () Bool)

(assert (=> b!1778908 (= e!1138431 e!1138430)))

(declare-fun res!801681 () Bool)

(assert (=> b!1778908 (=> (not res!801681) (not e!1138430))))

(assert (=> b!1778908 (= res!801681 (not ((_ is Nil!19592) lt!690342)))))

(declare-fun b!1778910 () Bool)

(assert (=> b!1778910 (= e!1138430 (isPrefix!1749 (tail!2661 lt!690326) (tail!2661 lt!690342)))))

(declare-fun b!1778911 () Bool)

(assert (=> b!1778911 (= e!1138429 (>= (size!15568 lt!690342) (size!15568 lt!690326)))))

(assert (= (and d!543323 (not res!801679)) b!1778908))

(assert (= (and b!1778908 res!801681) b!1778909))

(assert (= (and b!1778909 res!801682) b!1778910))

(assert (= (and d!543323 (not res!801680)) b!1778911))

(assert (=> b!1778909 m!2199627))

(assert (=> b!1778909 m!2200159))

(assert (=> b!1778910 m!2199623))

(assert (=> b!1778910 m!2199891))

(assert (=> b!1778910 m!2199623))

(assert (=> b!1778910 m!2199891))

(declare-fun m!2200521 () Bool)

(assert (=> b!1778910 m!2200521))

(assert (=> b!1778911 m!2199889))

(assert (=> b!1778911 m!2199535))

(assert (=> b!1778173 d!543323))

(declare-fun b!1778914 () Bool)

(declare-fun res!801683 () Bool)

(declare-fun e!1138433 () Bool)

(assert (=> b!1778914 (=> (not res!801683) (not e!1138433))))

(declare-fun lt!690708 () List!19662)

(assert (=> b!1778914 (= res!801683 (= (size!15568 lt!690708) (+ (size!15568 lt!690326) (size!15568 suffix!1421))))))

(declare-fun b!1778915 () Bool)

(assert (=> b!1778915 (= e!1138433 (or (not (= suffix!1421 Nil!19592)) (= lt!690708 lt!690326)))))

(declare-fun b!1778912 () Bool)

(declare-fun e!1138432 () List!19662)

(assert (=> b!1778912 (= e!1138432 suffix!1421)))

(declare-fun d!543325 () Bool)

(assert (=> d!543325 e!1138433))

(declare-fun res!801684 () Bool)

(assert (=> d!543325 (=> (not res!801684) (not e!1138433))))

(assert (=> d!543325 (= res!801684 (= (content!2846 lt!690708) ((_ map or) (content!2846 lt!690326) (content!2846 suffix!1421))))))

(assert (=> d!543325 (= lt!690708 e!1138432)))

(declare-fun c!289478 () Bool)

(assert (=> d!543325 (= c!289478 ((_ is Nil!19592) lt!690326))))

(assert (=> d!543325 (= (++!5333 lt!690326 suffix!1421) lt!690708)))

(declare-fun b!1778913 () Bool)

(assert (=> b!1778913 (= e!1138432 (Cons!19592 (h!24993 lt!690326) (++!5333 (t!166245 lt!690326) suffix!1421)))))

(assert (= (and d!543325 c!289478) b!1778912))

(assert (= (and d!543325 (not c!289478)) b!1778913))

(assert (= (and d!543325 res!801684) b!1778914))

(assert (= (and b!1778914 res!801683) b!1778915))

(declare-fun m!2200523 () Bool)

(assert (=> b!1778914 m!2200523))

(assert (=> b!1778914 m!2199535))

(declare-fun m!2200525 () Bool)

(assert (=> b!1778914 m!2200525))

(declare-fun m!2200527 () Bool)

(assert (=> d!543325 m!2200527))

(assert (=> d!543325 m!2199805))

(declare-fun m!2200529 () Bool)

(assert (=> d!543325 m!2200529))

(declare-fun m!2200531 () Bool)

(assert (=> b!1778913 m!2200531))

(assert (=> b!1778173 d!543325))

(declare-fun b!1778928 () Bool)

(declare-fun e!1138444 () Option!4041)

(assert (=> b!1778928 (= e!1138444 (Some!4040 (h!24994 rules!3447)))))

(declare-fun b!1778929 () Bool)

(declare-fun lt!690716 () Unit!33852)

(declare-fun lt!690715 () Unit!33852)

(assert (=> b!1778929 (= lt!690716 lt!690715)))

(assert (=> b!1778929 (rulesInvariant!2807 thiss!24550 (t!166246 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!214 (LexerInterface!3138 Rule!6818 List!19663) Unit!33852)

(assert (=> b!1778929 (= lt!690715 (lemmaInvariantOnRulesThenOnTail!214 thiss!24550 (h!24994 rules!3447) (t!166246 rules!3447)))))

(declare-fun e!1138442 () Option!4041)

(assert (=> b!1778929 (= e!1138442 (getRuleFromTag!557 thiss!24550 (t!166246 rules!3447) (tag!3899 (rule!5573 (_1!10995 lt!690358)))))))

(declare-fun b!1778930 () Bool)

(assert (=> b!1778930 (= e!1138444 e!1138442)))

(declare-fun c!289484 () Bool)

(assert (=> b!1778930 (= c!289484 (and ((_ is Cons!19593) rules!3447) (not (= (tag!3899 (h!24994 rules!3447)) (tag!3899 (rule!5573 (_1!10995 lt!690358)))))))))

(declare-fun d!543327 () Bool)

(declare-fun e!1138445 () Bool)

(assert (=> d!543327 e!1138445))

(declare-fun res!801690 () Bool)

(assert (=> d!543327 (=> res!801690 e!1138445)))

(declare-fun lt!690717 () Option!4041)

(assert (=> d!543327 (= res!801690 (isEmpty!12383 lt!690717))))

(assert (=> d!543327 (= lt!690717 e!1138444)))

(declare-fun c!289483 () Bool)

(assert (=> d!543327 (= c!289483 (and ((_ is Cons!19593) rules!3447) (= (tag!3899 (h!24994 rules!3447)) (tag!3899 (rule!5573 (_1!10995 lt!690358))))))))

(assert (=> d!543327 (rulesInvariant!2807 thiss!24550 rules!3447)))

(assert (=> d!543327 (= (getRuleFromTag!557 thiss!24550 rules!3447 (tag!3899 (rule!5573 (_1!10995 lt!690358)))) lt!690717)))

(declare-fun b!1778931 () Bool)

(declare-fun e!1138443 () Bool)

(assert (=> b!1778931 (= e!1138443 (= (tag!3899 (get!6013 lt!690717)) (tag!3899 (rule!5573 (_1!10995 lt!690358)))))))

(declare-fun b!1778932 () Bool)

(assert (=> b!1778932 (= e!1138442 None!4040)))

(declare-fun b!1778933 () Bool)

(assert (=> b!1778933 (= e!1138445 e!1138443)))

(declare-fun res!801689 () Bool)

(assert (=> b!1778933 (=> (not res!801689) (not e!1138443))))

(assert (=> b!1778933 (= res!801689 (contains!3541 rules!3447 (get!6013 lt!690717)))))

(assert (= (and d!543327 c!289483) b!1778928))

(assert (= (and d!543327 (not c!289483)) b!1778930))

(assert (= (and b!1778930 c!289484) b!1778929))

(assert (= (and b!1778930 (not c!289484)) b!1778932))

(assert (= (and d!543327 (not res!801690)) b!1778933))

(assert (= (and b!1778933 res!801689) b!1778931))

(declare-fun m!2200533 () Bool)

(assert (=> b!1778929 m!2200533))

(declare-fun m!2200535 () Bool)

(assert (=> b!1778929 m!2200535))

(declare-fun m!2200537 () Bool)

(assert (=> b!1778929 m!2200537))

(declare-fun m!2200539 () Bool)

(assert (=> d!543327 m!2200539))

(assert (=> d!543327 m!2199559))

(declare-fun m!2200541 () Bool)

(assert (=> b!1778931 m!2200541))

(assert (=> b!1778933 m!2200541))

(assert (=> b!1778933 m!2200541))

(declare-fun m!2200543 () Bool)

(assert (=> b!1778933 m!2200543))

(assert (=> b!1778173 d!543327))

(declare-fun d!543329 () Bool)

(declare-fun e!1138446 () Bool)

(assert (=> d!543329 e!1138446))

(declare-fun res!801692 () Bool)

(assert (=> d!543329 (=> res!801692 e!1138446)))

(declare-fun lt!690718 () Bool)

(assert (=> d!543329 (= res!801692 (not lt!690718))))

(declare-fun e!1138448 () Bool)

(assert (=> d!543329 (= lt!690718 e!1138448)))

(declare-fun res!801691 () Bool)

(assert (=> d!543329 (=> res!801691 e!1138448)))

(assert (=> d!543329 (= res!801691 ((_ is Nil!19592) lt!690331))))

(assert (=> d!543329 (= (isPrefix!1749 lt!690331 lt!690342) lt!690718)))

(declare-fun b!1778935 () Bool)

(declare-fun res!801694 () Bool)

(declare-fun e!1138447 () Bool)

(assert (=> b!1778935 (=> (not res!801694) (not e!1138447))))

(assert (=> b!1778935 (= res!801694 (= (head!4150 lt!690331) (head!4150 lt!690342)))))

(declare-fun b!1778934 () Bool)

(assert (=> b!1778934 (= e!1138448 e!1138447)))

(declare-fun res!801693 () Bool)

(assert (=> b!1778934 (=> (not res!801693) (not e!1138447))))

(assert (=> b!1778934 (= res!801693 (not ((_ is Nil!19592) lt!690342)))))

(declare-fun b!1778936 () Bool)

(assert (=> b!1778936 (= e!1138447 (isPrefix!1749 (tail!2661 lt!690331) (tail!2661 lt!690342)))))

(declare-fun b!1778937 () Bool)

(assert (=> b!1778937 (= e!1138446 (>= (size!15568 lt!690342) (size!15568 lt!690331)))))

(assert (= (and d!543329 (not res!801691)) b!1778934))

(assert (= (and b!1778934 res!801693) b!1778935))

(assert (= (and b!1778935 res!801694) b!1778936))

(assert (= (and d!543329 (not res!801692)) b!1778937))

(assert (=> b!1778935 m!2199745))

(assert (=> b!1778935 m!2200159))

(assert (=> b!1778936 m!2199741))

(assert (=> b!1778936 m!2199891))

(assert (=> b!1778936 m!2199741))

(assert (=> b!1778936 m!2199891))

(declare-fun m!2200545 () Bool)

(assert (=> b!1778936 m!2200545))

(assert (=> b!1778937 m!2199889))

(assert (=> b!1778937 m!2199475))

(assert (=> b!1778173 d!543329))

(declare-fun d!543331 () Bool)

(assert (=> d!543331 (= (inv!25486 (tag!3899 (rule!5573 token!523))) (= (mod (str.len (value!109678 (tag!3899 (rule!5573 token!523)))) 2) 0))))

(assert (=> b!1778152 d!543331))

(declare-fun d!543333 () Bool)

(declare-fun res!801695 () Bool)

(declare-fun e!1138449 () Bool)

(assert (=> d!543333 (=> (not res!801695) (not e!1138449))))

(assert (=> d!543333 (= res!801695 (semiInverseModEq!1400 (toChars!4895 (transformation!3509 (rule!5573 token!523))) (toValue!5036 (transformation!3509 (rule!5573 token!523)))))))

(assert (=> d!543333 (= (inv!25491 (transformation!3509 (rule!5573 token!523))) e!1138449)))

(declare-fun b!1778938 () Bool)

(assert (=> b!1778938 (= e!1138449 (equivClasses!1341 (toChars!4895 (transformation!3509 (rule!5573 token!523))) (toValue!5036 (transformation!3509 (rule!5573 token!523)))))))

(assert (= (and d!543333 res!801695) b!1778938))

(declare-fun m!2200547 () Bool)

(assert (=> d!543333 m!2200547))

(declare-fun m!2200549 () Bool)

(assert (=> b!1778938 m!2200549))

(assert (=> b!1778152 d!543333))

(declare-fun d!543335 () Bool)

(assert (=> d!543335 (= (inv!25494 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))) (isBalanced!2037 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))))))

(declare-fun bs!405075 () Bool)

(assert (= bs!405075 d!543335))

(declare-fun m!2200551 () Bool)

(assert (=> bs!405075 m!2200551))

(assert (=> tb!107987 d!543335))

(declare-fun d!543337 () Bool)

(declare-fun c!289485 () Bool)

(assert (=> d!543337 (= c!289485 ((_ is Node!6517) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))))

(declare-fun e!1138450 () Bool)

(assert (=> d!543337 (= (inv!25493 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))) e!1138450)))

(declare-fun b!1778939 () Bool)

(assert (=> b!1778939 (= e!1138450 (inv!25495 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))))

(declare-fun b!1778940 () Bool)

(declare-fun e!1138451 () Bool)

(assert (=> b!1778940 (= e!1138450 e!1138451)))

(declare-fun res!801696 () Bool)

(assert (=> b!1778940 (= res!801696 (not ((_ is Leaf!9492) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))))))

(assert (=> b!1778940 (=> res!801696 e!1138451)))

(declare-fun b!1778941 () Bool)

(assert (=> b!1778941 (= e!1138451 (inv!25496 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))))))

(assert (= (and d!543337 c!289485) b!1778939))

(assert (= (and d!543337 (not c!289485)) b!1778940))

(assert (= (and b!1778940 (not res!801696)) b!1778941))

(declare-fun m!2200553 () Bool)

(assert (=> b!1778939 m!2200553))

(declare-fun m!2200555 () Bool)

(assert (=> b!1778941 m!2200555))

(assert (=> b!1778195 d!543337))

(declare-fun d!543339 () Bool)

(assert (=> d!543339 (= (get!6012 lt!690327) (v!25524 lt!690327))))

(assert (=> b!1778151 d!543339))

(declare-fun b!1778952 () Bool)

(declare-fun b_free!49351 () Bool)

(declare-fun b_next!50055 () Bool)

(assert (=> b!1778952 (= b_free!49351 (not b_next!50055))))

(declare-fun tb!108041 () Bool)

(declare-fun t!166296 () Bool)

(assert (=> (and b!1778952 (= (toValue!5036 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166296) tb!108041))

(declare-fun result!129970 () Bool)

(assert (= result!129970 result!129898))

(assert (=> b!1778159 t!166296))

(assert (=> d!543245 t!166296))

(assert (=> d!543093 t!166296))

(declare-fun t!166298 () Bool)

(declare-fun tb!108043 () Bool)

(assert (=> (and b!1778952 (= (toValue!5036 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166298) tb!108043))

(declare-fun result!129972 () Bool)

(assert (= result!129972 result!129924))

(assert (=> d!543129 t!166298))

(assert (=> d!543249 t!166296))

(declare-fun tb!108045 () Bool)

(declare-fun t!166300 () Bool)

(assert (=> (and b!1778952 (= (toValue!5036 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166300) tb!108045))

(declare-fun result!129974 () Bool)

(assert (= result!129974 result!129930))

(assert (=> d!543245 t!166300))

(declare-fun b_and!136181 () Bool)

(declare-fun tp!503797 () Bool)

(assert (=> b!1778952 (= tp!503797 (and (=> t!166296 result!129970) (=> t!166300 result!129974) (=> t!166298 result!129972) b_and!136181))))

(declare-fun b_free!49353 () Bool)

(declare-fun b_next!50057 () Bool)

(assert (=> b!1778952 (= b_free!49353 (not b_next!50057))))

(declare-fun t!166302 () Bool)

(declare-fun tb!108047 () Bool)

(assert (=> (and b!1778952 (= (toChars!4895 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166302) tb!108047))

(declare-fun result!129976 () Bool)

(assert (= result!129976 result!129906))

(assert (=> b!1778169 t!166302))

(declare-fun t!166304 () Bool)

(declare-fun tb!108049 () Bool)

(assert (=> (and b!1778952 (= (toChars!4895 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toChars!4895 (transformation!3509 (rule!5573 token!523)))) t!166304) tb!108049))

(declare-fun result!129978 () Bool)

(assert (= result!129978 result!129918))

(assert (=> b!1778715 t!166304))

(assert (=> d!543115 t!166304))

(declare-fun t!166306 () Bool)

(declare-fun tb!108051 () Bool)

(assert (=> (and b!1778952 (= (toChars!4895 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358))))) t!166306) tb!108051))

(declare-fun result!129980 () Bool)

(assert (= result!129980 result!129890))

(assert (=> d!543093 t!166306))

(assert (=> d!543121 t!166302))

(assert (=> b!1778159 t!166306))

(declare-fun tp!503795 () Bool)

(declare-fun b_and!136183 () Bool)

(assert (=> b!1778952 (= tp!503795 (and (=> t!166302 result!129976) (=> t!166306 result!129980) (=> t!166304 result!129978) b_and!136183))))

(declare-fun e!1138462 () Bool)

(assert (=> b!1778952 (= e!1138462 (and tp!503797 tp!503795))))

(declare-fun e!1138463 () Bool)

(declare-fun b!1778951 () Bool)

(declare-fun tp!503796 () Bool)

(assert (=> b!1778951 (= e!1138463 (and tp!503796 (inv!25486 (tag!3899 (h!24994 (t!166246 rules!3447)))) (inv!25491 (transformation!3509 (h!24994 (t!166246 rules!3447)))) e!1138462))))

(declare-fun b!1778950 () Bool)

(declare-fun e!1138460 () Bool)

(declare-fun tp!503794 () Bool)

(assert (=> b!1778950 (= e!1138460 (and e!1138463 tp!503794))))

(assert (=> b!1778171 (= tp!503716 e!1138460)))

(assert (= b!1778951 b!1778952))

(assert (= b!1778950 b!1778951))

(assert (= (and b!1778171 ((_ is Cons!19593) (t!166246 rules!3447))) b!1778950))

(declare-fun m!2200557 () Bool)

(assert (=> b!1778951 m!2200557))

(declare-fun m!2200559 () Bool)

(assert (=> b!1778951 m!2200559))

(declare-fun b!1778957 () Bool)

(declare-fun e!1138466 () Bool)

(declare-fun tp!503800 () Bool)

(assert (=> b!1778957 (= e!1138466 (and tp_is_empty!7917 tp!503800))))

(assert (=> b!1778170 (= tp!503719 e!1138466)))

(assert (= (and b!1778170 ((_ is Cons!19592) (t!166245 suffix!1421))) b!1778957))

(declare-fun e!1138469 () Bool)

(assert (=> b!1778148 (= tp!503723 e!1138469)))

(declare-fun b!1778971 () Bool)

(declare-fun tp!503811 () Bool)

(declare-fun tp!503813 () Bool)

(assert (=> b!1778971 (= e!1138469 (and tp!503811 tp!503813))))

(declare-fun b!1778970 () Bool)

(declare-fun tp!503815 () Bool)

(assert (=> b!1778970 (= e!1138469 tp!503815)))

(declare-fun b!1778969 () Bool)

(declare-fun tp!503814 () Bool)

(declare-fun tp!503812 () Bool)

(assert (=> b!1778969 (= e!1138469 (and tp!503814 tp!503812))))

(declare-fun b!1778968 () Bool)

(assert (=> b!1778968 (= e!1138469 tp_is_empty!7917)))

(assert (= (and b!1778148 ((_ is ElementMatch!4837) (regex!3509 (h!24994 rules!3447)))) b!1778968))

(assert (= (and b!1778148 ((_ is Concat!8437) (regex!3509 (h!24994 rules!3447)))) b!1778969))

(assert (= (and b!1778148 ((_ is Star!4837) (regex!3509 (h!24994 rules!3447)))) b!1778970))

(assert (= (and b!1778148 ((_ is Union!4837) (regex!3509 (h!24994 rules!3447)))) b!1778971))

(declare-fun b!1778972 () Bool)

(declare-fun e!1138470 () Bool)

(declare-fun tp!503816 () Bool)

(assert (=> b!1778972 (= e!1138470 (and tp_is_empty!7917 tp!503816))))

(assert (=> b!1778179 (= tp!503722 e!1138470)))

(assert (= (and b!1778179 ((_ is Cons!19592) (originalCharacters!4323 token!523))) b!1778972))

(declare-fun e!1138471 () Bool)

(assert (=> b!1778174 (= tp!503720 e!1138471)))

(declare-fun b!1778976 () Bool)

(declare-fun tp!503817 () Bool)

(declare-fun tp!503819 () Bool)

(assert (=> b!1778976 (= e!1138471 (and tp!503817 tp!503819))))

(declare-fun b!1778975 () Bool)

(declare-fun tp!503821 () Bool)

(assert (=> b!1778975 (= e!1138471 tp!503821)))

(declare-fun b!1778974 () Bool)

(declare-fun tp!503820 () Bool)

(declare-fun tp!503818 () Bool)

(assert (=> b!1778974 (= e!1138471 (and tp!503820 tp!503818))))

(declare-fun b!1778973 () Bool)

(assert (=> b!1778973 (= e!1138471 tp_is_empty!7917)))

(assert (= (and b!1778174 ((_ is ElementMatch!4837) (regex!3509 rule!422))) b!1778973))

(assert (= (and b!1778174 ((_ is Concat!8437) (regex!3509 rule!422))) b!1778974))

(assert (= (and b!1778174 ((_ is Star!4837) (regex!3509 rule!422))) b!1778975))

(assert (= (and b!1778174 ((_ is Union!4837) (regex!3509 rule!422))) b!1778976))

(declare-fun tp!503828 () Bool)

(declare-fun b!1778985 () Bool)

(declare-fun e!1138477 () Bool)

(declare-fun tp!503829 () Bool)

(assert (=> b!1778985 (= e!1138477 (and (inv!25493 (left!15701 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))))) tp!503828 (inv!25493 (right!16031 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))))) tp!503829))))

(declare-fun b!1778987 () Bool)

(declare-fun e!1138476 () Bool)

(declare-fun tp!503830 () Bool)

(assert (=> b!1778987 (= e!1138476 tp!503830)))

(declare-fun b!1778986 () Bool)

(declare-fun inv!25500 (IArray!13039) Bool)

(assert (=> b!1778986 (= e!1138477 (and (inv!25500 (xs!9393 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))))) e!1138476))))

(assert (=> b!1778198 (= tp!503730 (and (inv!25493 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358))))) e!1138477))))

(assert (= (and b!1778198 ((_ is Node!6517) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))))) b!1778985))

(assert (= b!1778986 b!1778987))

(assert (= (and b!1778198 ((_ is Leaf!9492) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (value!109679 (_1!10995 lt!690358)))))) b!1778986))

(declare-fun m!2200561 () Bool)

(assert (=> b!1778985 m!2200561))

(declare-fun m!2200563 () Bool)

(assert (=> b!1778985 m!2200563))

(declare-fun m!2200565 () Bool)

(assert (=> b!1778986 m!2200565))

(assert (=> b!1778198 m!2199407))

(declare-fun e!1138478 () Bool)

(assert (=> b!1778152 (= tp!503715 e!1138478)))

(declare-fun b!1778991 () Bool)

(declare-fun tp!503831 () Bool)

(declare-fun tp!503833 () Bool)

(assert (=> b!1778991 (= e!1138478 (and tp!503831 tp!503833))))

(declare-fun b!1778990 () Bool)

(declare-fun tp!503835 () Bool)

(assert (=> b!1778990 (= e!1138478 tp!503835)))

(declare-fun b!1778989 () Bool)

(declare-fun tp!503834 () Bool)

(declare-fun tp!503832 () Bool)

(assert (=> b!1778989 (= e!1138478 (and tp!503834 tp!503832))))

(declare-fun b!1778988 () Bool)

(assert (=> b!1778988 (= e!1138478 tp_is_empty!7917)))

(assert (= (and b!1778152 ((_ is ElementMatch!4837) (regex!3509 (rule!5573 token!523)))) b!1778988))

(assert (= (and b!1778152 ((_ is Concat!8437) (regex!3509 (rule!5573 token!523)))) b!1778989))

(assert (= (and b!1778152 ((_ is Star!4837) (regex!3509 (rule!5573 token!523)))) b!1778990))

(assert (= (and b!1778152 ((_ is Union!4837) (regex!3509 (rule!5573 token!523)))) b!1778991))

(declare-fun e!1138480 () Bool)

(declare-fun tp!503837 () Bool)

(declare-fun b!1778992 () Bool)

(declare-fun tp!503836 () Bool)

(assert (=> b!1778992 (= e!1138480 (and (inv!25493 (left!15701 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))) tp!503836 (inv!25493 (right!16031 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))) tp!503837))))

(declare-fun b!1778994 () Bool)

(declare-fun e!1138479 () Bool)

(declare-fun tp!503838 () Bool)

(assert (=> b!1778994 (= e!1138479 tp!503838)))

(declare-fun b!1778993 () Bool)

(assert (=> b!1778993 (= e!1138480 (and (inv!25500 (xs!9393 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))) e!1138479))))

(assert (=> b!1778195 (= tp!503729 (and (inv!25493 (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336)))) e!1138480))))

(assert (= (and b!1778195 ((_ is Node!6517) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))) b!1778992))

(assert (= b!1778993 b!1778994))

(assert (= (and b!1778195 ((_ is Leaf!9492) (c!289351 (dynLambda!9597 (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) (dynLambda!9598 (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))) lt!690336))))) b!1778993))

(declare-fun m!2200567 () Bool)

(assert (=> b!1778992 m!2200567))

(declare-fun m!2200569 () Bool)

(assert (=> b!1778992 m!2200569))

(declare-fun m!2200571 () Bool)

(assert (=> b!1778993 m!2200571))

(assert (=> b!1778195 m!2199401))

(declare-fun b_lambda!58175 () Bool)

(assert (= b_lambda!58123 (or (and b!1778153 b_free!49337 (= (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778163 b_free!49341 (= (toChars!4895 (transformation!3509 (rule!5573 token!523))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778172 b_free!49345 (= (toChars!4895 (transformation!3509 rule!422)) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778952 b_free!49353 (= (toChars!4895 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) b_lambda!58175)))

(declare-fun b_lambda!58177 () Bool)

(assert (= b_lambda!58141 (or (and b!1778153 b_free!49337 (= (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toChars!4895 (transformation!3509 (rule!5573 token!523))))) (and b!1778163 b_free!49341) (and b!1778172 b_free!49345 (= (toChars!4895 (transformation!3509 rule!422)) (toChars!4895 (transformation!3509 (rule!5573 token!523))))) (and b!1778952 b_free!49353 (= (toChars!4895 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toChars!4895 (transformation!3509 (rule!5573 token!523))))) b_lambda!58177)))

(declare-fun b_lambda!58179 () Bool)

(assert (= b_lambda!58125 (or (and b!1778153 b_free!49335 (= (toValue!5036 (transformation!3509 (h!24994 rules!3447))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778163 b_free!49339 (= (toValue!5036 (transformation!3509 (rule!5573 token!523))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778172 b_free!49343 (= (toValue!5036 (transformation!3509 rule!422)) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778952 b_free!49351 (= (toValue!5036 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toValue!5036 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) b_lambda!58179)))

(declare-fun b_lambda!58181 () Bool)

(assert (= b_lambda!58147 (or (and b!1778153 b_free!49337 (= (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toChars!4895 (transformation!3509 (rule!5573 token!523))))) (and b!1778163 b_free!49341) (and b!1778172 b_free!49345 (= (toChars!4895 (transformation!3509 rule!422)) (toChars!4895 (transformation!3509 (rule!5573 token!523))))) (and b!1778952 b_free!49353 (= (toChars!4895 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toChars!4895 (transformation!3509 (rule!5573 token!523))))) b_lambda!58181)))

(declare-fun b_lambda!58183 () Bool)

(assert (= b_lambda!58127 (or (and b!1778153 b_free!49337 (= (toChars!4895 (transformation!3509 (h!24994 rules!3447))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778163 b_free!49341 (= (toChars!4895 (transformation!3509 (rule!5573 token!523))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778172 b_free!49345 (= (toChars!4895 (transformation!3509 rule!422)) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) (and b!1778952 b_free!49353 (= (toChars!4895 (transformation!3509 (h!24994 (t!166246 rules!3447)))) (toChars!4895 (transformation!3509 (rule!5573 (_1!10995 lt!690358)))))) b_lambda!58183)))

(check-sat (not b!1778471) (not b_lambda!58145) (not b!1778477) (not b!1778755) b_and!136153 (not b!1778643) (not d!543213) (not b!1778692) (not b_lambda!58137) (not b!1778420) (not b!1778378) (not b!1778905) (not b!1778663) (not d!543251) (not b!1778427) (not b!1778641) (not bm!111246) (not b!1778698) (not b!1778902) (not b_next!50041) (not d!543093) (not b!1778473) (not b!1778487) (not b!1778421) (not d!543113) (not d!543317) (not b!1778636) (not b!1778321) (not b!1778757) (not d!543255) (not b!1778989) (not b!1778439) (not b!1778323) (not b!1778759) b_and!136181 (not d!543091) (not b!1778369) (not d!543107) (not d!543055) (not b!1778198) (not bm!111233) (not b!1778682) (not b_lambda!58139) (not d!543321) b_and!136123 (not d!543141) (not b!1778933) (not b!1778715) (not d!543131) (not d!543291) (not b!1778366) (not b!1778395) (not b!1778493) (not b!1778403) (not b!1778474) (not b_lambda!58177) (not b!1778687) (not d!543325) b_and!136125 (not d!543103) (not d!543265) (not d!543217) (not b!1778951) (not b!1778950) (not b!1778384) (not d!543095) (not d!543285) (not b!1778969) (not d!543079) (not b!1778903) (not d!543039) (not d!543109) (not d!543147) (not b!1778317) (not b!1778931) b_and!136155 (not d!543139) (not b!1778914) (not b!1778986) (not b_lambda!58157) (not b!1778480) b_and!136151 (not b!1778639) (not b!1778416) (not b!1778484) (not d!543233) (not d!543057) (not b!1778972) (not b!1778894) (not d!543259) (not d!543221) (not b!1778763) (not d!543327) (not b!1778971) (not b!1778756) (not b!1778450) (not d!543315) (not d!543135) (not d!543271) (not b_lambda!58179) (not bm!111241) (not b!1778364) (not b!1778991) (not b!1778708) (not b!1778911) (not b!1778371) (not b!1778638) (not d!543193) (not d!543313) (not b!1778640) (not b!1778268) (not d!543081) (not b!1778689) (not tb!107999) (not b!1778896) (not b!1778195) (not bm!111240) (not b!1778760) (not b!1778388) (not b!1778479) (not b_next!50043) (not b_next!50039) (not b!1778770) (not b_lambda!58175) (not b!1778751) (not b!1778377) (not b_lambda!58151) (not b!1778957) (not d!543121) (not d!543245) (not d!543099) (not b_lambda!58183) (not d!543205) (not b!1778716) (not b_lambda!58143) (not b!1778938) (not bm!111237) (not b!1778476) (not b!1778418) (not b!1778451) tp_is_empty!7917 (not b!1778693) (not b_next!50057) (not b!1778379) (not b!1778992) (not b!1778987) (not b!1778994) (not d!543319) (not b!1778709) (not b!1778433) (not b!1778910) (not d!543097) (not b!1778937) (not d!543335) (not b!1778990) (not b!1778909) (not b!1778486) (not b!1778440) (not d!543273) (not b_next!50049) (not b!1778777) (not b!1778409) (not b!1778895) (not b!1778373) (not d!543077) (not b!1778775) (not b_next!50055) (not b!1778707) (not bm!111236) (not b!1778758) (not b!1778502) (not b!1778635) (not tb!108011) (not b!1778974) (not b!1778422) (not b!1778319) (not d!543117) (not b!1778935) (not d!543203) (not b!1778761) (not b!1778985) (not b!1778976) (not b!1778941) (not b!1778475) (not b!1778645) (not d!543215) (not d!543101) (not d!543085) (not b!1778397) (not d!543115) (not d!543333) (not b!1778482) (not b!1778375) (not b!1778993) (not b_lambda!58181) (not b_lambda!58149) (not d!543053) (not b_next!50047) b_and!136127 (not b!1778362) (not b!1778367) (not d!543127) (not b_next!50045) (not b!1778975) (not b!1778929) (not bm!111244) (not b!1778322) (not b!1778664) (not tb!108005) (not d!543111) (not d!543119) b_and!136183 (not b!1778906) (not b!1778665) (not b!1778691) (not b!1778328) (not d!543047) (not b!1778970) (not b!1778499) (not d!543227) (not b!1778936) (not b!1778939) (not b!1778913) (not b!1778637) (not b!1778754) (not b!1778472) (not b!1778488) (not b!1778646))
(check-sat b_and!136153 (not b_next!50041) b_and!136181 b_and!136123 b_and!136125 b_and!136155 b_and!136151 (not b_next!50057) (not b_next!50049) (not b_next!50055) (not b_next!50045) b_and!136183 (not b_next!50043) (not b_next!50039) (not b_next!50047) b_and!136127)
