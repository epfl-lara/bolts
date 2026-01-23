; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172558 () Bool)

(assert start!172558)

(declare-fun b!1750660 () Bool)

(declare-fun b_free!48307 () Bool)

(declare-fun b_next!49011 () Bool)

(assert (=> b!1750660 (= b_free!48307 (not b_next!49011))))

(declare-fun tp!498027 () Bool)

(declare-fun b_and!130927 () Bool)

(assert (=> b!1750660 (= tp!498027 b_and!130927)))

(declare-fun b_free!48309 () Bool)

(declare-fun b_next!49013 () Bool)

(assert (=> b!1750660 (= b_free!48309 (not b_next!49013))))

(declare-fun tp!498025 () Bool)

(declare-fun b_and!130929 () Bool)

(assert (=> b!1750660 (= tp!498025 b_and!130929)))

(declare-fun b!1750675 () Bool)

(declare-fun b_free!48311 () Bool)

(declare-fun b_next!49015 () Bool)

(assert (=> b!1750675 (= b_free!48311 (not b_next!49015))))

(declare-fun tp!498030 () Bool)

(declare-fun b_and!130931 () Bool)

(assert (=> b!1750675 (= tp!498030 b_and!130931)))

(declare-fun b_free!48313 () Bool)

(declare-fun b_next!49017 () Bool)

(assert (=> b!1750675 (= b_free!48313 (not b_next!49017))))

(declare-fun tp!498033 () Bool)

(declare-fun b_and!130933 () Bool)

(assert (=> b!1750675 (= tp!498033 b_and!130933)))

(declare-fun b!1750676 () Bool)

(declare-fun b_free!48315 () Bool)

(declare-fun b_next!49019 () Bool)

(assert (=> b!1750676 (= b_free!48315 (not b_next!49019))))

(declare-fun tp!498026 () Bool)

(declare-fun b_and!130935 () Bool)

(assert (=> b!1750676 (= tp!498026 b_and!130935)))

(declare-fun b_free!48317 () Bool)

(declare-fun b_next!49021 () Bool)

(assert (=> b!1750676 (= b_free!48317 (not b_next!49021))))

(declare-fun tp!498032 () Bool)

(declare-fun b_and!130937 () Bool)

(assert (=> b!1750676 (= tp!498032 b_and!130937)))

(declare-fun b!1750696 () Bool)

(declare-fun e!1120619 () Bool)

(assert (=> b!1750696 (= e!1120619 true)))

(declare-fun b!1750695 () Bool)

(declare-fun e!1120618 () Bool)

(assert (=> b!1750695 (= e!1120618 e!1120619)))

(declare-fun b!1750694 () Bool)

(declare-fun e!1120617 () Bool)

(assert (=> b!1750694 (= e!1120617 e!1120618)))

(declare-fun b!1750648 () Bool)

(assert (=> b!1750648 e!1120617))

(assert (= b!1750695 b!1750696))

(assert (= b!1750694 b!1750695))

(assert (= b!1750648 b!1750694))

(declare-fun order!12119 () Int)

(declare-fun order!12121 () Int)

(declare-fun lambda!69860 () Int)

(declare-datatypes ((List!19330 0))(
  ( (Nil!19260) (Cons!19260 (h!24661 (_ BitVec 16)) (t!162925 List!19330)) )
))
(declare-datatypes ((TokenValue!3529 0))(
  ( (FloatLiteralValue!7058 (text!25148 List!19330)) (TokenValueExt!3528 (__x!12360 Int)) (Broken!17645 (value!107658 List!19330)) (Object!3598) (End!3529) (Def!3529) (Underscore!3529) (Match!3529) (Else!3529) (Error!3529) (Case!3529) (If!3529) (Extends!3529) (Abstract!3529) (Class!3529) (Val!3529) (DelimiterValue!7058 (del!3589 List!19330)) (KeywordValue!3535 (value!107659 List!19330)) (CommentValue!7058 (value!107660 List!19330)) (WhitespaceValue!7058 (value!107661 List!19330)) (IndentationValue!3529 (value!107662 List!19330)) (String!21976) (Int32!3529) (Broken!17646 (value!107663 List!19330)) (Boolean!3530) (Unit!33380) (OperatorValue!3532 (op!3589 List!19330)) (IdentifierValue!7058 (value!107664 List!19330)) (IdentifierValue!7059 (value!107665 List!19330)) (WhitespaceValue!7059 (value!107666 List!19330)) (True!7058) (False!7058) (Broken!17647 (value!107667 List!19330)) (Broken!17648 (value!107668 List!19330)) (True!7059) (RightBrace!3529) (RightBracket!3529) (Colon!3529) (Null!3529) (Comma!3529) (LeftBracket!3529) (False!7059) (LeftBrace!3529) (ImaginaryLiteralValue!3529 (text!25149 List!19330)) (StringLiteralValue!10587 (value!107669 List!19330)) (EOFValue!3529 (value!107670 List!19330)) (IdentValue!3529 (value!107671 List!19330)) (DelimiterValue!7059 (value!107672 List!19330)) (DedentValue!3529 (value!107673 List!19330)) (NewLineValue!3529 (value!107674 List!19330)) (IntegerValue!10587 (value!107675 (_ BitVec 32)) (text!25150 List!19330)) (IntegerValue!10588 (value!107676 Int) (text!25151 List!19330)) (Times!3529) (Or!3529) (Equal!3529) (Minus!3529) (Broken!17649 (value!107677 List!19330)) (And!3529) (Div!3529) (LessEqual!3529) (Mod!3529) (Concat!8296) (Not!3529) (Plus!3529) (SpaceValue!3529 (value!107678 List!19330)) (IntegerValue!10589 (value!107679 Int) (text!25152 List!19330)) (StringLiteralValue!10588 (text!25153 List!19330)) (FloatLiteralValue!7059 (text!25154 List!19330)) (BytesLiteralValue!3529 (value!107680 List!19330)) (CommentValue!7059 (value!107681 List!19330)) (StringLiteralValue!10589 (value!107682 List!19330)) (ErrorTokenValue!3529 (msg!3590 List!19330)) )
))
(declare-datatypes ((String!21977 0))(
  ( (String!21978 (value!107683 String)) )
))
(declare-datatypes ((C!9708 0))(
  ( (C!9709 (val!5450 Int)) )
))
(declare-datatypes ((List!19331 0))(
  ( (Nil!19261) (Cons!19261 (h!24662 C!9708) (t!162926 List!19331)) )
))
(declare-datatypes ((Regex!4767 0))(
  ( (ElementMatch!4767 (c!285430 C!9708)) (Concat!8297 (regOne!10046 Regex!4767) (regTwo!10046 Regex!4767)) (EmptyExpr!4767) (Star!4767 (reg!5096 Regex!4767)) (EmptyLang!4767) (Union!4767 (regOne!10047 Regex!4767) (regTwo!10047 Regex!4767)) )
))
(declare-datatypes ((IArray!12819 0))(
  ( (IArray!12820 (innerList!6467 List!19331)) )
))
(declare-datatypes ((Conc!6407 0))(
  ( (Node!6407 (left!15416 Conc!6407) (right!15746 Conc!6407) (csize!13044 Int) (cheight!6618 Int)) (Leaf!9347 (xs!9283 IArray!12819) (csize!13045 Int)) (Empty!6407) )
))
(declare-datatypes ((BalanceConc!12758 0))(
  ( (BalanceConc!12759 (c!285431 Conc!6407)) )
))
(declare-datatypes ((TokenValueInjection!6718 0))(
  ( (TokenValueInjection!6719 (toValue!4954 Int) (toChars!4813 Int)) )
))
(declare-datatypes ((Rule!6678 0))(
  ( (Rule!6679 (regex!3439 Regex!4767) (tag!3789 String!21977) (isSeparator!3439 Bool) (transformation!3439 TokenValueInjection!6718)) )
))
(declare-datatypes ((Token!6444 0))(
  ( (Token!6445 (value!107684 TokenValue!3529) (rule!5447 Rule!6678) (size!15304 Int) (originalCharacters!4253 List!19331)) )
))
(declare-datatypes ((tuple2!18890 0))(
  ( (tuple2!18891 (_1!10847 Token!6444) (_2!10847 List!19331)) )
))
(declare-fun lt!676141 () tuple2!18890)

(declare-fun dynLambda!9196 (Int Int) Int)

(declare-fun dynLambda!9197 (Int Int) Int)

(assert (=> b!1750696 (< (dynLambda!9196 order!12119 (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) (dynLambda!9197 order!12121 lambda!69860))))

(declare-fun order!12123 () Int)

(declare-fun dynLambda!9198 (Int Int) Int)

(assert (=> b!1750696 (< (dynLambda!9198 order!12123 (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) (dynLambda!9197 order!12121 lambda!69860))))

(declare-fun b!1750641 () Bool)

(declare-fun e!1120586 () Bool)

(declare-fun e!1120590 () Bool)

(assert (=> b!1750641 (= e!1120586 e!1120590)))

(declare-fun res!787460 () Bool)

(assert (=> b!1750641 (=> res!787460 e!1120590)))

(declare-datatypes ((Option!3902 0))(
  ( (None!3901) (Some!3901 (v!25344 tuple2!18890)) )
))
(declare-fun lt!676169 () Option!3902)

(declare-fun lt!676175 () List!19331)

(assert (=> b!1750641 (= res!787460 (or (not (= lt!676175 (_2!10847 lt!676141))) (not (= lt!676169 (Some!3901 (tuple2!18891 (_1!10847 lt!676141) lt!676175))))))))

(assert (=> b!1750641 (= (_2!10847 lt!676141) lt!676175)))

(declare-fun lt!676142 () List!19331)

(declare-datatypes ((Unit!33381 0))(
  ( (Unit!33382) )
))
(declare-fun lt!676172 () Unit!33381)

(declare-fun lt!676133 () List!19331)

(declare-fun lemmaSamePrefixThenSameSuffix!810 (List!19331 List!19331 List!19331 List!19331 List!19331) Unit!33381)

(assert (=> b!1750641 (= lt!676172 (lemmaSamePrefixThenSameSuffix!810 lt!676133 (_2!10847 lt!676141) lt!676133 lt!676175 lt!676142))))

(declare-fun getSuffix!860 (List!19331 List!19331) List!19331)

(assert (=> b!1750641 (= lt!676175 (getSuffix!860 lt!676142 lt!676133))))

(declare-fun lt!676168 () Int)

(declare-fun lt!676152 () TokenValue!3529)

(assert (=> b!1750641 (= lt!676169 (Some!3901 (tuple2!18891 (Token!6445 lt!676152 (rule!5447 (_1!10847 lt!676141)) lt!676168 lt!676133) (_2!10847 lt!676141))))))

(declare-datatypes ((LexerInterface!3068 0))(
  ( (LexerInterfaceExt!3065 (__x!12361 Int)) (Lexer!3066) )
))
(declare-fun thiss!24550 () LexerInterface!3068)

(declare-fun maxPrefixOneRule!994 (LexerInterface!3068 Rule!6678 List!19331) Option!3902)

(assert (=> b!1750641 (= lt!676169 (maxPrefixOneRule!994 thiss!24550 (rule!5447 (_1!10847 lt!676141)) lt!676142))))

(declare-fun size!15305 (List!19331) Int)

(assert (=> b!1750641 (= lt!676168 (size!15305 lt!676133))))

(declare-fun apply!5240 (TokenValueInjection!6718 BalanceConc!12758) TokenValue!3529)

(declare-fun seqFromList!2409 (List!19331) BalanceConc!12758)

(assert (=> b!1750641 (= lt!676152 (apply!5240 (transformation!3439 (rule!5447 (_1!10847 lt!676141))) (seqFromList!2409 lt!676133)))))

(declare-fun lt!676139 () Unit!33381)

(declare-datatypes ((List!19332 0))(
  ( (Nil!19262) (Cons!19262 (h!24663 Rule!6678) (t!162927 List!19332)) )
))
(declare-fun rules!3447 () List!19332)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!383 (LexerInterface!3068 List!19332 List!19331 List!19331 List!19331 Rule!6678) Unit!33381)

(assert (=> b!1750641 (= lt!676139 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!383 thiss!24550 rules!3447 lt!676133 lt!676142 (_2!10847 lt!676141) (rule!5447 (_1!10847 lt!676141))))))

(declare-fun b!1750642 () Bool)

(declare-fun e!1120588 () Unit!33381)

(declare-fun Unit!33383 () Unit!33381)

(assert (=> b!1750642 (= e!1120588 Unit!33383)))

(declare-fun b!1750643 () Bool)

(declare-fun e!1120578 () Bool)

(declare-fun tp_is_empty!7777 () Bool)

(declare-fun tp!498028 () Bool)

(assert (=> b!1750643 (= e!1120578 (and tp_is_empty!7777 tp!498028))))

(declare-fun b!1750644 () Bool)

(declare-fun res!787464 () Bool)

(declare-fun e!1120605 () Bool)

(assert (=> b!1750644 (=> res!787464 e!1120605)))

(declare-fun suffix!1421 () List!19331)

(declare-fun isEmpty!12139 (List!19331) Bool)

(assert (=> b!1750644 (= res!787464 (isEmpty!12139 suffix!1421))))

(declare-fun b!1750645 () Bool)

(declare-fun e!1120580 () Bool)

(declare-fun e!1120596 () Bool)

(declare-fun tp!498031 () Bool)

(assert (=> b!1750645 (= e!1120580 (and e!1120596 tp!498031))))

(declare-fun b!1750646 () Bool)

(declare-fun res!787465 () Bool)

(declare-fun e!1120598 () Bool)

(assert (=> b!1750646 (=> res!787465 e!1120598)))

(declare-fun matchR!2241 (Regex!4767 List!19331) Bool)

(assert (=> b!1750646 (= res!787465 (not (matchR!2241 (regex!3439 (rule!5447 (_1!10847 lt!676141))) lt!676133)))))

(declare-fun tp!498036 () Bool)

(declare-fun e!1120591 () Bool)

(declare-fun b!1750647 () Bool)

(declare-fun e!1120581 () Bool)

(declare-fun token!523 () Token!6444)

(declare-fun inv!24986 (String!21977) Bool)

(declare-fun inv!24991 (TokenValueInjection!6718) Bool)

(assert (=> b!1750647 (= e!1120581 (and tp!498036 (inv!24986 (tag!3789 (rule!5447 token!523))) (inv!24991 (transformation!3439 (rule!5447 token!523))) e!1120591))))

(declare-fun e!1120610 () Bool)

(assert (=> b!1750648 (= e!1120598 e!1120610)))

(declare-fun res!787449 () Bool)

(assert (=> b!1750648 (=> res!787449 e!1120610)))

(declare-fun Forall!808 (Int) Bool)

(assert (=> b!1750648 (= res!787449 (not (Forall!808 lambda!69860)))))

(declare-fun lt!676158 () Unit!33381)

(declare-fun lemmaInv!640 (TokenValueInjection!6718) Unit!33381)

(assert (=> b!1750648 (= lt!676158 (lemmaInv!640 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))))))

(declare-fun b!1750650 () Bool)

(assert (=> b!1750650 false))

(declare-fun lt!676173 () Unit!33381)

(declare-fun lemmaSameIndexThenSameElement!108 (List!19332 Rule!6678 Rule!6678) Unit!33381)

(assert (=> b!1750650 (= lt!676173 (lemmaSameIndexThenSameElement!108 rules!3447 (rule!5447 (_1!10847 lt!676141)) (rule!5447 token!523)))))

(declare-fun e!1120594 () Unit!33381)

(declare-fun Unit!33384 () Unit!33381)

(assert (=> b!1750650 (= e!1120594 Unit!33384)))

(declare-fun b!1750651 () Bool)

(declare-fun e!1120608 () Bool)

(declare-fun e!1120603 () Bool)

(assert (=> b!1750651 (= e!1120608 e!1120603)))

(declare-fun res!787450 () Bool)

(assert (=> b!1750651 (=> res!787450 e!1120603)))

(declare-fun lt!676145 () Int)

(declare-fun lt!676150 () Int)

(assert (=> b!1750651 (= res!787450 (not (= lt!676145 lt!676150)))))

(declare-fun lt!676156 () Unit!33381)

(declare-fun e!1120577 () Unit!33381)

(assert (=> b!1750651 (= lt!676156 e!1120577)))

(declare-fun c!285428 () Bool)

(assert (=> b!1750651 (= c!285428 (< lt!676145 lt!676150))))

(declare-fun b!1750652 () Bool)

(declare-fun e!1120583 () Bool)

(assert (=> b!1750652 e!1120583))

(declare-fun res!787451 () Bool)

(assert (=> b!1750652 (=> (not res!787451) (not e!1120583))))

(assert (=> b!1750652 (= res!787451 (not (matchR!2241 (regex!3439 (rule!5447 token!523)) lt!676133)))))

(declare-fun lt!676179 () Unit!33381)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!144 (LexerInterface!3068 List!19332 Rule!6678 List!19331 List!19331 Rule!6678) Unit!33381)

(assert (=> b!1750652 (= lt!676179 (lemmaMaxPrefNoSmallerRuleMatches!144 thiss!24550 rules!3447 (rule!5447 (_1!10847 lt!676141)) lt!676133 lt!676142 (rule!5447 token!523)))))

(declare-fun e!1120582 () Unit!33381)

(declare-fun Unit!33385 () Unit!33381)

(assert (=> b!1750652 (= e!1120582 Unit!33385)))

(declare-fun b!1750653 () Bool)

(declare-fun Unit!33386 () Unit!33381)

(assert (=> b!1750653 (= e!1120577 Unit!33386)))

(declare-fun b!1750654 () Bool)

(declare-fun e!1120595 () Bool)

(declare-fun e!1120602 () Bool)

(assert (=> b!1750654 (= e!1120595 e!1120602)))

(declare-fun res!787457 () Bool)

(assert (=> b!1750654 (=> (not res!787457) (not e!1120602))))

(declare-fun lt!676176 () Option!3902)

(declare-fun isDefined!3245 (Option!3902) Bool)

(assert (=> b!1750654 (= res!787457 (isDefined!3245 lt!676176))))

(declare-fun lt!676165 () List!19331)

(declare-fun maxPrefix!1622 (LexerInterface!3068 List!19332 List!19331) Option!3902)

(assert (=> b!1750654 (= lt!676176 (maxPrefix!1622 thiss!24550 rules!3447 lt!676165))))

(declare-fun lt!676171 () BalanceConc!12758)

(declare-fun list!7800 (BalanceConc!12758) List!19331)

(assert (=> b!1750654 (= lt!676165 (list!7800 lt!676171))))

(declare-fun charsOf!2088 (Token!6444) BalanceConc!12758)

(assert (=> b!1750654 (= lt!676171 (charsOf!2088 token!523))))

(declare-fun b!1750655 () Bool)

(declare-fun Unit!33387 () Unit!33381)

(assert (=> b!1750655 (= e!1120582 Unit!33387)))

(declare-fun b!1750656 () Bool)

(declare-fun e!1120607 () Bool)

(assert (=> b!1750656 (= e!1120607 (not e!1120605))))

(declare-fun res!787448 () Bool)

(assert (=> b!1750656 (=> res!787448 e!1120605)))

(declare-fun rule!422 () Rule!6678)

(assert (=> b!1750656 (= res!787448 (not (matchR!2241 (regex!3439 rule!422) lt!676165)))))

(declare-fun ruleValid!938 (LexerInterface!3068 Rule!6678) Bool)

(assert (=> b!1750656 (ruleValid!938 thiss!24550 rule!422)))

(declare-fun lt!676167 () Unit!33381)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!462 (LexerInterface!3068 Rule!6678 List!19332) Unit!33381)

(assert (=> b!1750656 (= lt!676167 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!462 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1750657 () Bool)

(declare-fun res!787463 () Bool)

(assert (=> b!1750657 (=> (not res!787463) (not e!1120607))))

(assert (=> b!1750657 (= res!787463 (= (rule!5447 token!523) rule!422))))

(declare-fun e!1120597 () Bool)

(declare-fun b!1750658 () Bool)

(declare-fun tp!498029 () Bool)

(assert (=> b!1750658 (= e!1120596 (and tp!498029 (inv!24986 (tag!3789 (h!24663 rules!3447))) (inv!24991 (transformation!3439 (h!24663 rules!3447))) e!1120597))))

(declare-fun b!1750659 () Bool)

(assert (=> b!1750659 (= e!1120583 false)))

(assert (=> b!1750660 (= e!1120597 (and tp!498027 tp!498025))))

(declare-fun b!1750661 () Bool)

(declare-fun e!1120579 () Bool)

(assert (=> b!1750661 e!1120579))

(declare-fun res!787455 () Bool)

(assert (=> b!1750661 (=> (not res!787455) (not e!1120579))))

(assert (=> b!1750661 (= res!787455 (not (matchR!2241 (regex!3439 (rule!5447 (_1!10847 lt!676141))) lt!676165)))))

(declare-fun lt!676132 () Unit!33381)

(assert (=> b!1750661 (= lt!676132 (lemmaMaxPrefNoSmallerRuleMatches!144 thiss!24550 rules!3447 (rule!5447 token!523) lt!676165 lt!676165 (rule!5447 (_1!10847 lt!676141))))))

(declare-fun e!1120593 () Unit!33381)

(declare-fun Unit!33388 () Unit!33381)

(assert (=> b!1750661 (= e!1120593 Unit!33388)))

(declare-fun b!1750662 () Bool)

(declare-fun e!1120587 () Unit!33381)

(declare-fun Unit!33389 () Unit!33381)

(assert (=> b!1750662 (= e!1120587 Unit!33389)))

(declare-fun lt!676151 () Int)

(declare-fun getIndex!174 (List!19332 Rule!6678) Int)

(assert (=> b!1750662 (= lt!676151 (getIndex!174 rules!3447 (rule!5447 token!523)))))

(declare-fun lt!676177 () Int)

(assert (=> b!1750662 (= lt!676177 (getIndex!174 rules!3447 (rule!5447 (_1!10847 lt!676141))))))

(declare-fun c!285427 () Bool)

(assert (=> b!1750662 (= c!285427 (< lt!676151 lt!676177))))

(declare-fun lt!676138 () Unit!33381)

(assert (=> b!1750662 (= lt!676138 e!1120582)))

(declare-fun c!285425 () Bool)

(assert (=> b!1750662 (= c!285425 (< lt!676177 lt!676151))))

(declare-fun lt!676149 () Unit!33381)

(assert (=> b!1750662 (= lt!676149 e!1120593)))

(declare-fun c!285424 () Bool)

(assert (=> b!1750662 (= c!285424 (= lt!676177 lt!676151))))

(declare-fun lt!676140 () Unit!33381)

(assert (=> b!1750662 (= lt!676140 e!1120594)))

(assert (=> b!1750662 false))

(declare-fun b!1750663 () Bool)

(declare-fun Unit!33390 () Unit!33381)

(assert (=> b!1750663 (= e!1120587 Unit!33390)))

(declare-fun b!1750664 () Bool)

(declare-fun Unit!33391 () Unit!33381)

(assert (=> b!1750664 (= e!1120594 Unit!33391)))

(declare-fun b!1750665 () Bool)

(declare-fun e!1120589 () Bool)

(declare-fun lt!676144 () Rule!6678)

(assert (=> b!1750665 (= e!1120589 (= (rule!5447 (_1!10847 lt!676141)) lt!676144))))

(declare-fun b!1750666 () Bool)

(assert (=> b!1750666 (= e!1120603 (= (rule!5447 (_1!10847 lt!676141)) (rule!5447 token!523)))))

(declare-fun lt!676174 () Unit!33381)

(assert (=> b!1750666 (= lt!676174 e!1120587)))

(declare-fun c!285426 () Bool)

(assert (=> b!1750666 (= c!285426 (not (= (rule!5447 (_1!10847 lt!676141)) (rule!5447 token!523))))))

(assert (=> b!1750666 (= suffix!1421 (_2!10847 lt!676141))))

(declare-fun lt!676129 () Unit!33381)

(assert (=> b!1750666 (= lt!676129 (lemmaSamePrefixThenSameSuffix!810 lt!676165 suffix!1421 lt!676165 (_2!10847 lt!676141) lt!676142))))

(assert (=> b!1750666 (= lt!676133 lt!676165)))

(declare-fun lt!676164 () Unit!33381)

(declare-fun lemmaIsPrefixSameLengthThenSameList!239 (List!19331 List!19331 List!19331) Unit!33381)

(assert (=> b!1750666 (= lt!676164 (lemmaIsPrefixSameLengthThenSameList!239 lt!676133 lt!676165 lt!676142))))

(declare-fun b!1750667 () Bool)

(declare-fun Unit!33392 () Unit!33381)

(assert (=> b!1750667 (= e!1120588 Unit!33392)))

(declare-fun lt!676166 () Unit!33381)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!170 (LexerInterface!3068 List!19332 List!19331 Token!6444 Rule!6678 List!19331) Unit!33381)

(assert (=> b!1750667 (= lt!676166 (lemmaMaxPrefixThenMatchesRulesRegex!170 thiss!24550 rules!3447 lt!676142 (_1!10847 lt!676141) (rule!5447 (_1!10847 lt!676141)) (_2!10847 lt!676141)))))

(declare-fun lt!676147 () Regex!4767)

(assert (=> b!1750667 (matchR!2241 lt!676147 lt!676133)))

(declare-fun lt!676134 () List!19331)

(assert (=> b!1750667 (= lt!676134 (getSuffix!860 lt!676142 lt!676165))))

(declare-fun lt!676146 () Unit!33381)

(assert (=> b!1750667 (= lt!676146 (lemmaSamePrefixThenSameSuffix!810 lt!676165 suffix!1421 lt!676165 lt!676134 lt!676142))))

(assert (=> b!1750667 (= suffix!1421 lt!676134)))

(declare-fun lt!676131 () Unit!33381)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!255 (List!19331 List!19331) Unit!33381)

(assert (=> b!1750667 (= lt!676131 (lemmaAddHeadSuffixToPrefixStillPrefix!255 lt!676165 lt!676142))))

(declare-fun isPrefix!1680 (List!19331 List!19331) Bool)

(declare-fun ++!5264 (List!19331 List!19331) List!19331)

(declare-fun head!4036 (List!19331) C!9708)

(assert (=> b!1750667 (isPrefix!1680 (++!5264 lt!676165 (Cons!19261 (head!4036 lt!676134) Nil!19261)) lt!676142)))

(declare-fun lt!676160 () Unit!33381)

(declare-fun lt!676180 () List!19331)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!131 (List!19331 List!19331 List!19331) Unit!33381)

(assert (=> b!1750667 (= lt!676160 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!131 lt!676133 lt!676180 lt!676142))))

(assert (=> b!1750667 (isPrefix!1680 lt!676180 lt!676133)))

(declare-fun lt!676161 () Unit!33381)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!124 (Regex!4767 List!19331 List!19331) Unit!33381)

(assert (=> b!1750667 (= lt!676161 (lemmaNotPrefixMatchThenCannotMatchLonger!124 lt!676147 lt!676180 lt!676133))))

(assert (=> b!1750667 false))

(declare-fun b!1750668 () Bool)

(declare-fun res!787458 () Bool)

(assert (=> b!1750668 (=> (not res!787458) (not e!1120607))))

(declare-fun lt!676163 () tuple2!18890)

(assert (=> b!1750668 (= res!787458 (isEmpty!12139 (_2!10847 lt!676163)))))

(declare-fun b!1750669 () Bool)

(declare-fun e!1120585 () Bool)

(assert (=> b!1750669 (= e!1120585 e!1120589)))

(declare-fun res!787459 () Bool)

(assert (=> b!1750669 (=> (not res!787459) (not e!1120589))))

(assert (=> b!1750669 (= res!787459 (matchR!2241 (regex!3439 lt!676144) (list!7800 (charsOf!2088 (_1!10847 lt!676141)))))))

(declare-datatypes ((Option!3903 0))(
  ( (None!3902) (Some!3902 (v!25345 Rule!6678)) )
))
(declare-fun lt!676170 () Option!3903)

(declare-fun get!5839 (Option!3903) Rule!6678)

(assert (=> b!1750669 (= lt!676144 (get!5839 lt!676170))))

(declare-fun b!1750670 () Bool)

(declare-fun e!1120600 () Bool)

(assert (=> b!1750670 (= e!1120600 e!1120598)))

(declare-fun res!787468 () Bool)

(assert (=> b!1750670 (=> res!787468 e!1120598)))

(assert (=> b!1750670 (= res!787468 (not (isPrefix!1680 lt!676133 lt!676142)))))

(assert (=> b!1750670 (isPrefix!1680 lt!676133 (++!5264 lt!676133 (_2!10847 lt!676141)))))

(declare-fun lt!676136 () Unit!33381)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1190 (List!19331 List!19331) Unit!33381)

(assert (=> b!1750670 (= lt!676136 (lemmaConcatTwoListThenFirstIsPrefix!1190 lt!676133 (_2!10847 lt!676141)))))

(declare-fun lt!676154 () BalanceConc!12758)

(assert (=> b!1750670 (= lt!676133 (list!7800 lt!676154))))

(assert (=> b!1750670 (= lt!676154 (charsOf!2088 (_1!10847 lt!676141)))))

(assert (=> b!1750670 e!1120585))

(declare-fun res!787453 () Bool)

(assert (=> b!1750670 (=> (not res!787453) (not e!1120585))))

(declare-fun isDefined!3246 (Option!3903) Bool)

(assert (=> b!1750670 (= res!787453 (isDefined!3246 lt!676170))))

(declare-fun getRuleFromTag!489 (LexerInterface!3068 List!19332 String!21977) Option!3903)

(assert (=> b!1750670 (= lt!676170 (getRuleFromTag!489 thiss!24550 rules!3447 (tag!3789 (rule!5447 (_1!10847 lt!676141)))))))

(declare-fun lt!676143 () Unit!33381)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!489 (LexerInterface!3068 List!19332 List!19331 Token!6444) Unit!33381)

(assert (=> b!1750670 (= lt!676143 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!489 thiss!24550 rules!3447 lt!676142 (_1!10847 lt!676141)))))

(declare-fun lt!676137 () Option!3902)

(declare-fun get!5840 (Option!3902) tuple2!18890)

(assert (=> b!1750670 (= lt!676141 (get!5840 lt!676137))))

(declare-fun lt!676148 () Unit!33381)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!592 (LexerInterface!3068 List!19332 List!19331 List!19331) Unit!33381)

(assert (=> b!1750670 (= lt!676148 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!592 thiss!24550 rules!3447 lt!676165 suffix!1421))))

(assert (=> b!1750670 (= lt!676137 (maxPrefix!1622 thiss!24550 rules!3447 lt!676142))))

(assert (=> b!1750670 (isPrefix!1680 lt!676165 lt!676142)))

(declare-fun lt!676153 () Unit!33381)

(assert (=> b!1750670 (= lt!676153 (lemmaConcatTwoListThenFirstIsPrefix!1190 lt!676165 suffix!1421))))

(assert (=> b!1750670 (= lt!676142 (++!5264 lt!676165 suffix!1421))))

(declare-fun b!1750671 () Bool)

(declare-fun e!1120584 () Bool)

(declare-fun tp!498035 () Bool)

(declare-fun e!1120609 () Bool)

(assert (=> b!1750671 (= e!1120609 (and tp!498035 (inv!24986 (tag!3789 rule!422)) (inv!24991 (transformation!3439 rule!422)) e!1120584))))

(declare-fun b!1750672 () Bool)

(assert (=> b!1750672 (= e!1120590 e!1120608)))

(declare-fun res!787470 () Bool)

(assert (=> b!1750672 (=> res!787470 e!1120608)))

(declare-fun lt!676178 () Bool)

(assert (=> b!1750672 (= res!787470 lt!676178)))

(declare-fun lt!676130 () Unit!33381)

(assert (=> b!1750672 (= lt!676130 e!1120588)))

(declare-fun c!285429 () Bool)

(assert (=> b!1750672 (= c!285429 lt!676178)))

(assert (=> b!1750672 (= lt!676178 (> lt!676145 lt!676150))))

(declare-fun size!15306 (BalanceConc!12758) Int)

(assert (=> b!1750672 (= lt!676150 (size!15306 lt!676171))))

(assert (=> b!1750672 (matchR!2241 lt!676147 lt!676165)))

(declare-fun lt!676155 () Unit!33381)

(assert (=> b!1750672 (= lt!676155 (lemmaMaxPrefixThenMatchesRulesRegex!170 thiss!24550 rules!3447 lt!676165 token!523 rule!422 Nil!19261))))

(declare-fun b!1750673 () Bool)

(declare-fun e!1120601 () Bool)

(assert (=> b!1750673 (= e!1120601 e!1120586)))

(declare-fun res!787462 () Bool)

(assert (=> b!1750673 (=> res!787462 e!1120586)))

(declare-fun lt!676157 () TokenValue!3529)

(assert (=> b!1750673 (= res!787462 (not (= lt!676137 (Some!3901 (tuple2!18891 (Token!6445 lt!676157 (rule!5447 (_1!10847 lt!676141)) lt!676145 lt!676133) (_2!10847 lt!676141))))))))

(assert (=> b!1750673 (= lt!676145 (size!15306 lt!676154))))

(assert (=> b!1750673 (= lt!676157 (apply!5240 (transformation!3439 (rule!5447 (_1!10847 lt!676141))) lt!676154))))

(declare-fun lt!676162 () Unit!33381)

(declare-fun lemmaCharactersSize!499 (Token!6444) Unit!33381)

(assert (=> b!1750673 (= lt!676162 (lemmaCharactersSize!499 (_1!10847 lt!676141)))))

(declare-fun lt!676135 () Unit!33381)

(declare-fun lemmaEqSameImage!352 (TokenValueInjection!6718 BalanceConc!12758 BalanceConc!12758) Unit!33381)

(assert (=> b!1750673 (= lt!676135 (lemmaEqSameImage!352 (transformation!3439 (rule!5447 (_1!10847 lt!676141))) lt!676154 (seqFromList!2409 (originalCharacters!4253 (_1!10847 lt!676141)))))))

(declare-fun b!1750674 () Bool)

(assert (=> b!1750674 (= e!1120610 e!1120601)))

(declare-fun res!787467 () Bool)

(assert (=> b!1750674 (=> res!787467 e!1120601)))

(declare-fun dynLambda!9199 (Int TokenValue!3529) BalanceConc!12758)

(declare-fun dynLambda!9200 (Int BalanceConc!12758) TokenValue!3529)

(assert (=> b!1750674 (= res!787467 (not (= (list!7800 (dynLambda!9199 (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) (dynLambda!9200 (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) lt!676154))) lt!676133)))))

(declare-fun lt!676159 () Unit!33381)

(declare-fun lemmaSemiInverse!579 (TokenValueInjection!6718 BalanceConc!12758) Unit!33381)

(assert (=> b!1750674 (= lt!676159 (lemmaSemiInverse!579 (transformation!3439 (rule!5447 (_1!10847 lt!676141))) lt!676154))))

(assert (=> b!1750675 (= e!1120584 (and tp!498030 tp!498033))))

(assert (=> b!1750676 (= e!1120591 (and tp!498026 tp!498032))))

(declare-fun b!1750677 () Bool)

(declare-fun Unit!33393 () Unit!33381)

(assert (=> b!1750677 (= e!1120577 Unit!33393)))

(declare-fun lt!676128 () Unit!33381)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!210 (LexerInterface!3068 List!19332 Rule!6678 List!19331 List!19331 List!19331 Rule!6678) Unit!33381)

(assert (=> b!1750677 (= lt!676128 (lemmaMaxPrefixOutputsMaxPrefix!210 thiss!24550 rules!3447 (rule!5447 (_1!10847 lt!676141)) lt!676133 lt!676142 lt!676165 rule!422))))

(assert (=> b!1750677 false))

(declare-fun b!1750678 () Bool)

(assert (=> b!1750678 (= e!1120602 e!1120607)))

(declare-fun res!787452 () Bool)

(assert (=> b!1750678 (=> (not res!787452) (not e!1120607))))

(assert (=> b!1750678 (= res!787452 (= (_1!10847 lt!676163) token!523))))

(assert (=> b!1750678 (= lt!676163 (get!5840 lt!676176))))

(declare-fun res!787447 () Bool)

(assert (=> start!172558 (=> (not res!787447) (not e!1120595))))

(get-info :version)

(assert (=> start!172558 (= res!787447 ((_ is Lexer!3066) thiss!24550))))

(assert (=> start!172558 e!1120595))

(assert (=> start!172558 e!1120578))

(assert (=> start!172558 e!1120609))

(assert (=> start!172558 true))

(declare-fun e!1120576 () Bool)

(declare-fun inv!24992 (Token!6444) Bool)

(assert (=> start!172558 (and (inv!24992 token!523) e!1120576)))

(assert (=> start!172558 e!1120580))

(declare-fun tp!498034 () Bool)

(declare-fun b!1750649 () Bool)

(declare-fun inv!21 (TokenValue!3529) Bool)

(assert (=> b!1750649 (= e!1120576 (and (inv!21 (value!107684 token!523)) e!1120581 tp!498034))))

(declare-fun b!1750679 () Bool)

(declare-fun Unit!33394 () Unit!33381)

(assert (=> b!1750679 (= e!1120593 Unit!33394)))

(declare-fun b!1750680 () Bool)

(declare-fun res!787461 () Bool)

(assert (=> b!1750680 (=> (not res!787461) (not e!1120595))))

(declare-fun isEmpty!12140 (List!19332) Bool)

(assert (=> b!1750680 (= res!787461 (not (isEmpty!12140 rules!3447)))))

(declare-fun b!1750681 () Bool)

(assert (=> b!1750681 (= e!1120579 false)))

(declare-fun b!1750682 () Bool)

(declare-fun res!787466 () Bool)

(assert (=> b!1750682 (=> (not res!787466) (not e!1120595))))

(declare-fun contains!3465 (List!19332 Rule!6678) Bool)

(assert (=> b!1750682 (= res!787466 (contains!3465 rules!3447 rule!422))))

(declare-fun b!1750683 () Bool)

(declare-fun res!787454 () Bool)

(assert (=> b!1750683 (=> res!787454 e!1120601)))

(assert (=> b!1750683 (= res!787454 (not (= lt!676154 (dynLambda!9199 (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) (value!107684 (_1!10847 lt!676141))))))))

(declare-fun b!1750684 () Bool)

(declare-fun res!787469 () Bool)

(assert (=> b!1750684 (=> (not res!787469) (not e!1120595))))

(declare-fun rulesInvariant!2737 (LexerInterface!3068 List!19332) Bool)

(assert (=> b!1750684 (= res!787469 (rulesInvariant!2737 thiss!24550 rules!3447))))

(declare-fun b!1750685 () Bool)

(assert (=> b!1750685 (= e!1120605 e!1120600)))

(declare-fun res!787456 () Bool)

(assert (=> b!1750685 (=> res!787456 e!1120600)))

(declare-fun prefixMatch!652 (Regex!4767 List!19331) Bool)

(assert (=> b!1750685 (= res!787456 (prefixMatch!652 lt!676147 lt!676180))))

(assert (=> b!1750685 (= lt!676180 (++!5264 lt!676165 (Cons!19261 (head!4036 suffix!1421) Nil!19261)))))

(declare-fun rulesRegex!797 (LexerInterface!3068 List!19332) Regex!4767)

(assert (=> b!1750685 (= lt!676147 (rulesRegex!797 thiss!24550 rules!3447))))

(assert (= (and start!172558 res!787447) b!1750680))

(assert (= (and b!1750680 res!787461) b!1750684))

(assert (= (and b!1750684 res!787469) b!1750682))

(assert (= (and b!1750682 res!787466) b!1750654))

(assert (= (and b!1750654 res!787457) b!1750678))

(assert (= (and b!1750678 res!787452) b!1750668))

(assert (= (and b!1750668 res!787458) b!1750657))

(assert (= (and b!1750657 res!787463) b!1750656))

(assert (= (and b!1750656 (not res!787448)) b!1750644))

(assert (= (and b!1750644 (not res!787464)) b!1750685))

(assert (= (and b!1750685 (not res!787456)) b!1750670))

(assert (= (and b!1750670 res!787453) b!1750669))

(assert (= (and b!1750669 res!787459) b!1750665))

(assert (= (and b!1750670 (not res!787468)) b!1750646))

(assert (= (and b!1750646 (not res!787465)) b!1750648))

(assert (= (and b!1750648 (not res!787449)) b!1750674))

(assert (= (and b!1750674 (not res!787467)) b!1750683))

(assert (= (and b!1750683 (not res!787454)) b!1750673))

(assert (= (and b!1750673 (not res!787462)) b!1750641))

(assert (= (and b!1750641 (not res!787460)) b!1750672))

(assert (= (and b!1750672 c!285429) b!1750667))

(assert (= (and b!1750672 (not c!285429)) b!1750642))

(assert (= (and b!1750672 (not res!787470)) b!1750651))

(assert (= (and b!1750651 c!285428) b!1750677))

(assert (= (and b!1750651 (not c!285428)) b!1750653))

(assert (= (and b!1750651 (not res!787450)) b!1750666))

(assert (= (and b!1750666 c!285426) b!1750662))

(assert (= (and b!1750666 (not c!285426)) b!1750663))

(assert (= (and b!1750662 c!285427) b!1750652))

(assert (= (and b!1750662 (not c!285427)) b!1750655))

(assert (= (and b!1750652 res!787451) b!1750659))

(assert (= (and b!1750662 c!285425) b!1750661))

(assert (= (and b!1750662 (not c!285425)) b!1750679))

(assert (= (and b!1750661 res!787455) b!1750681))

(assert (= (and b!1750662 c!285424) b!1750650))

(assert (= (and b!1750662 (not c!285424)) b!1750664))

(assert (= (and start!172558 ((_ is Cons!19261) suffix!1421)) b!1750643))

(assert (= b!1750671 b!1750675))

(assert (= start!172558 b!1750671))

(assert (= b!1750647 b!1750676))

(assert (= b!1750649 b!1750647))

(assert (= start!172558 b!1750649))

(assert (= b!1750658 b!1750660))

(assert (= b!1750645 b!1750658))

(assert (= (and start!172558 ((_ is Cons!19262) rules!3447)) b!1750645))

(declare-fun b_lambda!56263 () Bool)

(assert (=> (not b_lambda!56263) (not b!1750674)))

(declare-fun t!162908 () Bool)

(declare-fun tb!105005 () Bool)

(assert (=> (and b!1750660 (= (toChars!4813 (transformation!3439 (h!24663 rules!3447))) (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162908) tb!105005))

(declare-fun b!1750701 () Bool)

(declare-fun e!1120622 () Bool)

(declare-fun tp!498039 () Bool)

(declare-fun inv!24993 (Conc!6407) Bool)

(assert (=> b!1750701 (= e!1120622 (and (inv!24993 (c!285431 (dynLambda!9199 (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) (dynLambda!9200 (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) lt!676154)))) tp!498039))))

(declare-fun result!126312 () Bool)

(declare-fun inv!24994 (BalanceConc!12758) Bool)

(assert (=> tb!105005 (= result!126312 (and (inv!24994 (dynLambda!9199 (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) (dynLambda!9200 (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) lt!676154))) e!1120622))))

(assert (= tb!105005 b!1750701))

(declare-fun m!2164129 () Bool)

(assert (=> b!1750701 m!2164129))

(declare-fun m!2164131 () Bool)

(assert (=> tb!105005 m!2164131))

(assert (=> b!1750674 t!162908))

(declare-fun b_and!130939 () Bool)

(assert (= b_and!130929 (and (=> t!162908 result!126312) b_and!130939)))

(declare-fun t!162910 () Bool)

(declare-fun tb!105007 () Bool)

(assert (=> (and b!1750675 (= (toChars!4813 (transformation!3439 rule!422)) (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162910) tb!105007))

(declare-fun result!126316 () Bool)

(assert (= result!126316 result!126312))

(assert (=> b!1750674 t!162910))

(declare-fun b_and!130941 () Bool)

(assert (= b_and!130933 (and (=> t!162910 result!126316) b_and!130941)))

(declare-fun t!162912 () Bool)

(declare-fun tb!105009 () Bool)

(assert (=> (and b!1750676 (= (toChars!4813 (transformation!3439 (rule!5447 token!523))) (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162912) tb!105009))

(declare-fun result!126318 () Bool)

(assert (= result!126318 result!126312))

(assert (=> b!1750674 t!162912))

(declare-fun b_and!130943 () Bool)

(assert (= b_and!130937 (and (=> t!162912 result!126318) b_and!130943)))

(declare-fun b_lambda!56265 () Bool)

(assert (=> (not b_lambda!56265) (not b!1750674)))

(declare-fun t!162914 () Bool)

(declare-fun tb!105011 () Bool)

(assert (=> (and b!1750660 (= (toValue!4954 (transformation!3439 (h!24663 rules!3447))) (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162914) tb!105011))

(declare-fun result!126320 () Bool)

(assert (=> tb!105011 (= result!126320 (inv!21 (dynLambda!9200 (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) lt!676154)))))

(declare-fun m!2164133 () Bool)

(assert (=> tb!105011 m!2164133))

(assert (=> b!1750674 t!162914))

(declare-fun b_and!130945 () Bool)

(assert (= b_and!130927 (and (=> t!162914 result!126320) b_and!130945)))

(declare-fun tb!105013 () Bool)

(declare-fun t!162916 () Bool)

(assert (=> (and b!1750675 (= (toValue!4954 (transformation!3439 rule!422)) (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162916) tb!105013))

(declare-fun result!126324 () Bool)

(assert (= result!126324 result!126320))

(assert (=> b!1750674 t!162916))

(declare-fun b_and!130947 () Bool)

(assert (= b_and!130931 (and (=> t!162916 result!126324) b_and!130947)))

(declare-fun t!162918 () Bool)

(declare-fun tb!105015 () Bool)

(assert (=> (and b!1750676 (= (toValue!4954 (transformation!3439 (rule!5447 token!523))) (toValue!4954 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162918) tb!105015))

(declare-fun result!126326 () Bool)

(assert (= result!126326 result!126320))

(assert (=> b!1750674 t!162918))

(declare-fun b_and!130949 () Bool)

(assert (= b_and!130935 (and (=> t!162918 result!126326) b_and!130949)))

(declare-fun b_lambda!56267 () Bool)

(assert (=> (not b_lambda!56267) (not b!1750683)))

(declare-fun t!162920 () Bool)

(declare-fun tb!105017 () Bool)

(assert (=> (and b!1750660 (= (toChars!4813 (transformation!3439 (h!24663 rules!3447))) (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162920) tb!105017))

(declare-fun b!1750704 () Bool)

(declare-fun e!1120626 () Bool)

(declare-fun tp!498040 () Bool)

(assert (=> b!1750704 (= e!1120626 (and (inv!24993 (c!285431 (dynLambda!9199 (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) (value!107684 (_1!10847 lt!676141))))) tp!498040))))

(declare-fun result!126328 () Bool)

(assert (=> tb!105017 (= result!126328 (and (inv!24994 (dynLambda!9199 (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141)))) (value!107684 (_1!10847 lt!676141)))) e!1120626))))

(assert (= tb!105017 b!1750704))

(declare-fun m!2164135 () Bool)

(assert (=> b!1750704 m!2164135))

(declare-fun m!2164137 () Bool)

(assert (=> tb!105017 m!2164137))

(assert (=> b!1750683 t!162920))

(declare-fun b_and!130951 () Bool)

(assert (= b_and!130939 (and (=> t!162920 result!126328) b_and!130951)))

(declare-fun tb!105019 () Bool)

(declare-fun t!162922 () Bool)

(assert (=> (and b!1750675 (= (toChars!4813 (transformation!3439 rule!422)) (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162922) tb!105019))

(declare-fun result!126330 () Bool)

(assert (= result!126330 result!126328))

(assert (=> b!1750683 t!162922))

(declare-fun b_and!130953 () Bool)

(assert (= b_and!130941 (and (=> t!162922 result!126330) b_and!130953)))

(declare-fun t!162924 () Bool)

(declare-fun tb!105021 () Bool)

(assert (=> (and b!1750676 (= (toChars!4813 (transformation!3439 (rule!5447 token!523))) (toChars!4813 (transformation!3439 (rule!5447 (_1!10847 lt!676141))))) t!162924) tb!105021))

(declare-fun result!126332 () Bool)

(assert (= result!126332 result!126328))

(assert (=> b!1750683 t!162924))

(declare-fun b_and!130955 () Bool)

(assert (= b_and!130943 (and (=> t!162924 result!126332) b_and!130955)))

(declare-fun m!2164139 () Bool)

(assert (=> b!1750652 m!2164139))

(declare-fun m!2164141 () Bool)

(assert (=> b!1750652 m!2164141))

(declare-fun m!2164143 () Bool)

(assert (=> b!1750656 m!2164143))

(declare-fun m!2164145 () Bool)

(assert (=> b!1750656 m!2164145))

(declare-fun m!2164147 () Bool)

(assert (=> b!1750656 m!2164147))

(declare-fun m!2164149 () Bool)

(assert (=> b!1750682 m!2164149))

(declare-fun m!2164151 () Bool)

(assert (=> b!1750667 m!2164151))

(declare-fun m!2164153 () Bool)

(assert (=> b!1750667 m!2164153))

(declare-fun m!2164155 () Bool)

(assert (=> b!1750667 m!2164155))

(declare-fun m!2164157 () Bool)

(assert (=> b!1750667 m!2164157))

(declare-fun m!2164159 () Bool)

(assert (=> b!1750667 m!2164159))

(declare-fun m!2164161 () Bool)

(assert (=> b!1750667 m!2164161))

(declare-fun m!2164163 () Bool)

(assert (=> b!1750667 m!2164163))

(declare-fun m!2164165 () Bool)

(assert (=> b!1750667 m!2164165))

(assert (=> b!1750667 m!2164165))

(declare-fun m!2164167 () Bool)

(assert (=> b!1750667 m!2164167))

(declare-fun m!2164169 () Bool)

(assert (=> b!1750667 m!2164169))

(declare-fun m!2164171 () Bool)

(assert (=> b!1750667 m!2164171))

(declare-fun m!2164173 () Bool)

(assert (=> start!172558 m!2164173))

(declare-fun m!2164175 () Bool)

(assert (=> b!1750678 m!2164175))

(declare-fun m!2164177 () Bool)

(assert (=> b!1750685 m!2164177))

(declare-fun m!2164179 () Bool)

(assert (=> b!1750685 m!2164179))

(declare-fun m!2164181 () Bool)

(assert (=> b!1750685 m!2164181))

(declare-fun m!2164183 () Bool)

(assert (=> b!1750685 m!2164183))

(declare-fun m!2164185 () Bool)

(assert (=> b!1750649 m!2164185))

(declare-fun m!2164187 () Bool)

(assert (=> b!1750670 m!2164187))

(declare-fun m!2164189 () Bool)

(assert (=> b!1750670 m!2164189))

(declare-fun m!2164191 () Bool)

(assert (=> b!1750670 m!2164191))

(declare-fun m!2164193 () Bool)

(assert (=> b!1750670 m!2164193))

(declare-fun m!2164195 () Bool)

(assert (=> b!1750670 m!2164195))

(declare-fun m!2164197 () Bool)

(assert (=> b!1750670 m!2164197))

(declare-fun m!2164199 () Bool)

(assert (=> b!1750670 m!2164199))

(declare-fun m!2164201 () Bool)

(assert (=> b!1750670 m!2164201))

(declare-fun m!2164203 () Bool)

(assert (=> b!1750670 m!2164203))

(assert (=> b!1750670 m!2164189))

(declare-fun m!2164205 () Bool)

(assert (=> b!1750670 m!2164205))

(declare-fun m!2164207 () Bool)

(assert (=> b!1750670 m!2164207))

(declare-fun m!2164209 () Bool)

(assert (=> b!1750670 m!2164209))

(declare-fun m!2164211 () Bool)

(assert (=> b!1750670 m!2164211))

(declare-fun m!2164213 () Bool)

(assert (=> b!1750670 m!2164213))

(declare-fun m!2164215 () Bool)

(assert (=> b!1750670 m!2164215))

(assert (=> b!1750669 m!2164201))

(assert (=> b!1750669 m!2164201))

(declare-fun m!2164217 () Bool)

(assert (=> b!1750669 m!2164217))

(assert (=> b!1750669 m!2164217))

(declare-fun m!2164219 () Bool)

(assert (=> b!1750669 m!2164219))

(declare-fun m!2164221 () Bool)

(assert (=> b!1750669 m!2164221))

(declare-fun m!2164223 () Bool)

(assert (=> b!1750644 m!2164223))

(declare-fun m!2164225 () Bool)

(assert (=> b!1750677 m!2164225))

(declare-fun m!2164227 () Bool)

(assert (=> b!1750671 m!2164227))

(declare-fun m!2164229 () Bool)

(assert (=> b!1750671 m!2164229))

(declare-fun m!2164231 () Bool)

(assert (=> b!1750658 m!2164231))

(declare-fun m!2164233 () Bool)

(assert (=> b!1750658 m!2164233))

(declare-fun m!2164235 () Bool)

(assert (=> b!1750672 m!2164235))

(declare-fun m!2164237 () Bool)

(assert (=> b!1750672 m!2164237))

(declare-fun m!2164239 () Bool)

(assert (=> b!1750672 m!2164239))

(declare-fun m!2164241 () Bool)

(assert (=> b!1750683 m!2164241))

(declare-fun m!2164243 () Bool)

(assert (=> b!1750673 m!2164243))

(declare-fun m!2164245 () Bool)

(assert (=> b!1750673 m!2164245))

(declare-fun m!2164247 () Bool)

(assert (=> b!1750673 m!2164247))

(declare-fun m!2164249 () Bool)

(assert (=> b!1750673 m!2164249))

(declare-fun m!2164251 () Bool)

(assert (=> b!1750673 m!2164251))

(assert (=> b!1750673 m!2164245))

(declare-fun m!2164253 () Bool)

(assert (=> b!1750684 m!2164253))

(declare-fun m!2164255 () Bool)

(assert (=> b!1750666 m!2164255))

(declare-fun m!2164257 () Bool)

(assert (=> b!1750666 m!2164257))

(declare-fun m!2164259 () Bool)

(assert (=> b!1750680 m!2164259))

(declare-fun m!2164261 () Bool)

(assert (=> b!1750641 m!2164261))

(declare-fun m!2164263 () Bool)

(assert (=> b!1750641 m!2164263))

(declare-fun m!2164265 () Bool)

(assert (=> b!1750641 m!2164265))

(declare-fun m!2164267 () Bool)

(assert (=> b!1750641 m!2164267))

(declare-fun m!2164269 () Bool)

(assert (=> b!1750641 m!2164269))

(declare-fun m!2164271 () Bool)

(assert (=> b!1750641 m!2164271))

(assert (=> b!1750641 m!2164263))

(declare-fun m!2164273 () Bool)

(assert (=> b!1750641 m!2164273))

(declare-fun m!2164275 () Bool)

(assert (=> b!1750668 m!2164275))

(declare-fun m!2164277 () Bool)

(assert (=> b!1750650 m!2164277))

(declare-fun m!2164279 () Bool)

(assert (=> b!1750662 m!2164279))

(declare-fun m!2164281 () Bool)

(assert (=> b!1750662 m!2164281))

(declare-fun m!2164283 () Bool)

(assert (=> b!1750648 m!2164283))

(declare-fun m!2164285 () Bool)

(assert (=> b!1750648 m!2164285))

(declare-fun m!2164287 () Bool)

(assert (=> b!1750661 m!2164287))

(declare-fun m!2164289 () Bool)

(assert (=> b!1750661 m!2164289))

(declare-fun m!2164291 () Bool)

(assert (=> b!1750647 m!2164291))

(declare-fun m!2164293 () Bool)

(assert (=> b!1750647 m!2164293))

(declare-fun m!2164295 () Bool)

(assert (=> b!1750674 m!2164295))

(assert (=> b!1750674 m!2164295))

(declare-fun m!2164297 () Bool)

(assert (=> b!1750674 m!2164297))

(assert (=> b!1750674 m!2164297))

(declare-fun m!2164299 () Bool)

(assert (=> b!1750674 m!2164299))

(declare-fun m!2164301 () Bool)

(assert (=> b!1750674 m!2164301))

(declare-fun m!2164303 () Bool)

(assert (=> b!1750654 m!2164303))

(declare-fun m!2164305 () Bool)

(assert (=> b!1750654 m!2164305))

(declare-fun m!2164307 () Bool)

(assert (=> b!1750654 m!2164307))

(declare-fun m!2164309 () Bool)

(assert (=> b!1750654 m!2164309))

(declare-fun m!2164311 () Bool)

(assert (=> b!1750646 m!2164311))

(check-sat (not b!1750678) (not b!1750652) (not b!1750672) b_and!130945 (not b!1750666) (not b!1750673) b_and!130953 (not tb!105011) (not b!1750650) (not b!1750682) (not b_next!49017) b_and!130951 (not b!1750701) (not b!1750684) (not b!1750667) (not b_lambda!56267) (not b!1750685) (not b!1750674) b_and!130955 (not b!1750645) (not b!1750670) (not b!1750671) (not b!1750677) (not b!1750649) (not b_next!49019) (not b!1750647) (not b!1750662) (not b!1750654) (not b_lambda!56265) (not b_next!49013) (not b!1750680) (not tb!105005) b_and!130949 tp_is_empty!7777 (not b!1750658) (not b!1750669) (not b_next!49021) (not b!1750641) (not b!1750643) (not b!1750648) (not b!1750644) (not start!172558) (not b!1750646) b_and!130947 (not b_next!49015) (not b!1750668) (not b_next!49011) (not b_lambda!56263) (not b!1750656) (not tb!105017) (not b!1750704) (not b!1750661))
(check-sat b_and!130955 b_and!130945 b_and!130949 (not b_next!49021) b_and!130953 b_and!130947 (not b_next!49017) b_and!130951 (not b_next!49019) (not b_next!49013) (not b_next!49015) (not b_next!49011))
