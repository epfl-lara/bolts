; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!77548 () Bool)

(assert start!77548)

(declare-fun b!859647 () Bool)

(declare-fun b_free!26149 () Bool)

(declare-fun b_next!26213 () Bool)

(assert (=> b!859647 (= b_free!26149 (not b_next!26213))))

(declare-fun tp!271257 () Bool)

(declare-fun b_and!76457 () Bool)

(assert (=> b!859647 (= tp!271257 b_and!76457)))

(declare-fun b_free!26151 () Bool)

(declare-fun b_next!26215 () Bool)

(assert (=> b!859647 (= b_free!26151 (not b_next!26215))))

(declare-fun tp!271255 () Bool)

(declare-fun b_and!76459 () Bool)

(assert (=> b!859647 (= tp!271255 b_and!76459)))

(declare-fun b!859643 () Bool)

(declare-fun b_free!26153 () Bool)

(declare-fun b_next!26217 () Bool)

(assert (=> b!859643 (= b_free!26153 (not b_next!26217))))

(declare-fun tp!271256 () Bool)

(declare-fun b_and!76461 () Bool)

(assert (=> b!859643 (= tp!271256 b_and!76461)))

(declare-fun b_free!26155 () Bool)

(declare-fun b_next!26219 () Bool)

(assert (=> b!859643 (= b_free!26155 (not b_next!26219))))

(declare-fun tp!271245 () Bool)

(declare-fun b_and!76463 () Bool)

(assert (=> b!859643 (= tp!271245 b_and!76463)))

(declare-fun b!859652 () Bool)

(declare-fun b_free!26157 () Bool)

(declare-fun b_next!26221 () Bool)

(assert (=> b!859652 (= b_free!26157 (not b_next!26221))))

(declare-fun tp!271249 () Bool)

(declare-fun b_and!76465 () Bool)

(assert (=> b!859652 (= tp!271249 b_and!76465)))

(declare-fun b_free!26159 () Bool)

(declare-fun b_next!26223 () Bool)

(assert (=> b!859652 (= b_free!26159 (not b_next!26223))))

(declare-fun tp!271254 () Bool)

(declare-fun b_and!76467 () Bool)

(assert (=> b!859652 (= tp!271254 b_and!76467)))

(declare-fun res!392202 () Bool)

(declare-fun e!565831 () Bool)

(assert (=> start!77548 (=> (not res!392202) (not e!565831))))

(declare-datatypes ((LexerInterface!1541 0))(
  ( (LexerInterfaceExt!1538 (__x!7341 Int)) (Lexer!1539) )
))
(declare-fun thiss!20117 () LexerInterface!1541)

(assert (=> start!77548 (= res!392202 (is-Lexer!1539 thiss!20117))))

(assert (=> start!77548 e!565831))

(assert (=> start!77548 true))

(declare-fun e!565830 () Bool)

(assert (=> start!77548 e!565830))

(declare-fun e!565821 () Bool)

(assert (=> start!77548 e!565821))

(declare-datatypes ((List!9290 0))(
  ( (Nil!9274) (Cons!9274 (h!14675 (_ BitVec 16)) (t!97464 List!9290)) )
))
(declare-datatypes ((TokenValue!1805 0))(
  ( (FloatLiteralValue!3610 (text!13080 List!9290)) (TokenValueExt!1804 (__x!7342 Int)) (Broken!9025 (value!56236 List!9290)) (Object!1820) (End!1805) (Def!1805) (Underscore!1805) (Match!1805) (Else!1805) (Error!1805) (Case!1805) (If!1805) (Extends!1805) (Abstract!1805) (Class!1805) (Val!1805) (DelimiterValue!3610 (del!1865 List!9290)) (KeywordValue!1811 (value!56237 List!9290)) (CommentValue!3610 (value!56238 List!9290)) (WhitespaceValue!3610 (value!56239 List!9290)) (IndentationValue!1805 (value!56240 List!9290)) (String!10924) (Int32!1805) (Broken!9026 (value!56241 List!9290)) (Boolean!1806) (Unit!13817) (OperatorValue!1808 (op!1865 List!9290)) (IdentifierValue!3610 (value!56242 List!9290)) (IdentifierValue!3611 (value!56243 List!9290)) (WhitespaceValue!3611 (value!56244 List!9290)) (True!3610) (False!3610) (Broken!9027 (value!56245 List!9290)) (Broken!9028 (value!56246 List!9290)) (True!3611) (RightBrace!1805) (RightBracket!1805) (Colon!1805) (Null!1805) (Comma!1805) (LeftBracket!1805) (False!3611) (LeftBrace!1805) (ImaginaryLiteralValue!1805 (text!13081 List!9290)) (StringLiteralValue!5415 (value!56247 List!9290)) (EOFValue!1805 (value!56248 List!9290)) (IdentValue!1805 (value!56249 List!9290)) (DelimiterValue!3611 (value!56250 List!9290)) (DedentValue!1805 (value!56251 List!9290)) (NewLineValue!1805 (value!56252 List!9290)) (IntegerValue!5415 (value!56253 (_ BitVec 32)) (text!13082 List!9290)) (IntegerValue!5416 (value!56254 Int) (text!13083 List!9290)) (Times!1805) (Or!1805) (Equal!1805) (Minus!1805) (Broken!9029 (value!56255 List!9290)) (And!1805) (Div!1805) (LessEqual!1805) (Mod!1805) (Concat!3977) (Not!1805) (Plus!1805) (SpaceValue!1805 (value!56256 List!9290)) (IntegerValue!5417 (value!56257 Int) (text!13084 List!9290)) (StringLiteralValue!5416 (text!13085 List!9290)) (FloatLiteralValue!3611 (text!13086 List!9290)) (BytesLiteralValue!1805 (value!56258 List!9290)) (CommentValue!3611 (value!56259 List!9290)) (StringLiteralValue!5417 (value!56260 List!9290)) (ErrorTokenValue!1805 (msg!1866 List!9290)) )
))
(declare-datatypes ((C!4914 0))(
  ( (C!4915 (val!2705 Int)) )
))
(declare-datatypes ((Regex!2172 0))(
  ( (ElementMatch!2172 (c!139217 C!4914)) (Concat!3978 (regOne!4856 Regex!2172) (regTwo!4856 Regex!2172)) (EmptyExpr!2172) (Star!2172 (reg!2501 Regex!2172)) (EmptyLang!2172) (Union!2172 (regOne!4857 Regex!2172) (regTwo!4857 Regex!2172)) )
))
(declare-datatypes ((String!10925 0))(
  ( (String!10926 (value!56261 String)) )
))
(declare-datatypes ((List!9291 0))(
  ( (Nil!9275) (Cons!9275 (h!14676 C!4914) (t!97465 List!9291)) )
))
(declare-datatypes ((IArray!6153 0))(
  ( (IArray!6154 (innerList!3134 List!9291)) )
))
(declare-datatypes ((Conc!3074 0))(
  ( (Node!3074 (left!6865 Conc!3074) (right!7195 Conc!3074) (csize!6378 Int) (cheight!3285 Int)) (Leaf!4532 (xs!5763 IArray!6153) (csize!6379 Int)) (Empty!3074) )
))
(declare-datatypes ((BalanceConc!6162 0))(
  ( (BalanceConc!6163 (c!139218 Conc!3074)) )
))
(declare-datatypes ((TokenValueInjection!3310 0))(
  ( (TokenValueInjection!3311 (toValue!2804 Int) (toChars!2663 Int)) )
))
(declare-datatypes ((Rule!3278 0))(
  ( (Rule!3279 (regex!1739 Regex!2172) (tag!2001 String!10925) (isSeparator!1739 Bool) (transformation!1739 TokenValueInjection!3310)) )
))
(declare-datatypes ((Token!3144 0))(
  ( (Token!3145 (value!56262 TokenValue!1805) (rule!3162 Rule!3278) (size!7750 Int) (originalCharacters!2295 List!9291)) )
))
(declare-fun separatorToken!297 () Token!3144)

(declare-fun e!565822 () Bool)

(declare-fun inv!11802 (Token!3144) Bool)

(assert (=> start!77548 (and (inv!11802 separatorToken!297) e!565822)))

(declare-fun e!565827 () Bool)

(declare-fun b!859638 () Bool)

(declare-fun e!565829 () Bool)

(declare-fun tp!271248 () Bool)

(declare-datatypes ((List!9292 0))(
  ( (Nil!9276) (Cons!9276 (h!14677 Token!3144) (t!97466 List!9292)) )
))
(declare-fun l!5107 () List!9292)

(declare-fun inv!11799 (String!10925) Bool)

(declare-fun inv!11803 (TokenValueInjection!3310) Bool)

(assert (=> b!859638 (= e!565827 (and tp!271248 (inv!11799 (tag!2001 (rule!3162 (h!14677 l!5107)))) (inv!11803 (transformation!1739 (rule!3162 (h!14677 l!5107)))) e!565829))))

(declare-fun b!859639 () Bool)

(declare-fun ListPrimitiveSize!59 (List!9292) Int)

(assert (=> b!859639 (= e!565831 (< (ListPrimitiveSize!59 l!5107) 0))))

(declare-fun b!859640 () Bool)

(declare-fun e!565825 () Bool)

(declare-fun tp!271246 () Bool)

(declare-fun inv!21 (TokenValue!1805) Bool)

(assert (=> b!859640 (= e!565825 (and (inv!21 (value!56262 (h!14677 l!5107))) e!565827 tp!271246))))

(declare-fun e!565826 () Bool)

(declare-fun b!859641 () Bool)

(declare-fun e!565823 () Bool)

(declare-datatypes ((List!9293 0))(
  ( (Nil!9277) (Cons!9277 (h!14678 Rule!3278) (t!97467 List!9293)) )
))
(declare-fun rules!2621 () List!9293)

(declare-fun tp!271251 () Bool)

(assert (=> b!859641 (= e!565823 (and tp!271251 (inv!11799 (tag!2001 (h!14678 rules!2621))) (inv!11803 (transformation!1739 (h!14678 rules!2621))) e!565826))))

(declare-fun b!859642 () Bool)

(declare-fun tp!271250 () Bool)

(assert (=> b!859642 (= e!565821 (and (inv!11802 (h!14677 l!5107)) e!565825 tp!271250))))

(assert (=> b!859643 (= e!565826 (and tp!271256 tp!271245))))

(declare-fun b!859644 () Bool)

(declare-fun e!565835 () Bool)

(declare-fun e!565820 () Bool)

(declare-fun tp!271252 () Bool)

(assert (=> b!859644 (= e!565835 (and tp!271252 (inv!11799 (tag!2001 (rule!3162 separatorToken!297))) (inv!11803 (transformation!1739 (rule!3162 separatorToken!297))) e!565820))))

(declare-fun b!859645 () Bool)

(declare-fun res!392196 () Bool)

(assert (=> b!859645 (=> (not res!392196) (not e!565831))))

(assert (=> b!859645 (= res!392196 (isSeparator!1739 (rule!3162 separatorToken!297)))))

(declare-fun b!859646 () Bool)

(declare-fun res!392198 () Bool)

(assert (=> b!859646 (=> (not res!392198) (not e!565831))))

(declare-fun lambda!25821 () Int)

(declare-fun forall!2202 (List!9292 Int) Bool)

(assert (=> b!859646 (= res!392198 (forall!2202 l!5107 lambda!25821))))

(assert (=> b!859647 (= e!565820 (and tp!271257 tp!271255))))

(declare-fun b!859648 () Bool)

(declare-fun res!392200 () Bool)

(assert (=> b!859648 (=> (not res!392200) (not e!565831))))

(declare-fun rulesProduceIndividualToken!605 (LexerInterface!1541 List!9293 Token!3144) Bool)

(assert (=> b!859648 (= res!392200 (rulesProduceIndividualToken!605 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun tp!271247 () Bool)

(declare-fun b!859649 () Bool)

(assert (=> b!859649 (= e!565822 (and (inv!21 (value!56262 separatorToken!297)) e!565835 tp!271247))))

(declare-fun b!859650 () Bool)

(declare-fun res!392197 () Bool)

(assert (=> b!859650 (=> (not res!392197) (not e!565831))))

(declare-fun rulesInvariant!1417 (LexerInterface!1541 List!9293) Bool)

(assert (=> b!859650 (= res!392197 (rulesInvariant!1417 thiss!20117 rules!2621))))

(declare-fun b!859651 () Bool)

(declare-fun res!392199 () Bool)

(assert (=> b!859651 (=> (not res!392199) (not e!565831))))

(declare-fun sepAndNonSepRulesDisjointChars!539 (List!9293 List!9293) Bool)

(assert (=> b!859651 (= res!392199 (sepAndNonSepRulesDisjointChars!539 rules!2621 rules!2621))))

(assert (=> b!859652 (= e!565829 (and tp!271249 tp!271254))))

(declare-fun b!859653 () Bool)

(declare-fun res!392195 () Bool)

(assert (=> b!859653 (=> (not res!392195) (not e!565831))))

(declare-fun rulesProduceEachTokenIndividuallyList!429 (LexerInterface!1541 List!9293 List!9292) Bool)

(assert (=> b!859653 (= res!392195 (rulesProduceEachTokenIndividuallyList!429 thiss!20117 rules!2621 l!5107))))

(declare-fun b!859654 () Bool)

(declare-fun res!392201 () Bool)

(assert (=> b!859654 (=> (not res!392201) (not e!565831))))

(declare-fun isEmpty!5508 (List!9293) Bool)

(assert (=> b!859654 (= res!392201 (not (isEmpty!5508 rules!2621)))))

(declare-fun b!859655 () Bool)

(declare-fun tp!271253 () Bool)

(assert (=> b!859655 (= e!565830 (and e!565823 tp!271253))))

(assert (= (and start!77548 res!392202) b!859654))

(assert (= (and b!859654 res!392201) b!859650))

(assert (= (and b!859650 res!392197) b!859653))

(assert (= (and b!859653 res!392195) b!859648))

(assert (= (and b!859648 res!392200) b!859645))

(assert (= (and b!859645 res!392196) b!859646))

(assert (= (and b!859646 res!392198) b!859651))

(assert (= (and b!859651 res!392199) b!859639))

(assert (= b!859641 b!859643))

(assert (= b!859655 b!859641))

(assert (= (and start!77548 (is-Cons!9277 rules!2621)) b!859655))

(assert (= b!859638 b!859652))

(assert (= b!859640 b!859638))

(assert (= b!859642 b!859640))

(assert (= (and start!77548 (is-Cons!9276 l!5107)) b!859642))

(assert (= b!859644 b!859647))

(assert (= b!859649 b!859644))

(assert (= start!77548 b!859649))

(declare-fun m!1103457 () Bool)

(assert (=> b!859648 m!1103457))

(declare-fun m!1103459 () Bool)

(assert (=> b!859639 m!1103459))

(declare-fun m!1103461 () Bool)

(assert (=> b!859640 m!1103461))

(declare-fun m!1103463 () Bool)

(assert (=> b!859642 m!1103463))

(declare-fun m!1103465 () Bool)

(assert (=> b!859650 m!1103465))

(declare-fun m!1103467 () Bool)

(assert (=> b!859644 m!1103467))

(declare-fun m!1103469 () Bool)

(assert (=> b!859644 m!1103469))

(declare-fun m!1103471 () Bool)

(assert (=> b!859651 m!1103471))

(declare-fun m!1103473 () Bool)

(assert (=> b!859654 m!1103473))

(declare-fun m!1103475 () Bool)

(assert (=> b!859641 m!1103475))

(declare-fun m!1103477 () Bool)

(assert (=> b!859641 m!1103477))

(declare-fun m!1103479 () Bool)

(assert (=> start!77548 m!1103479))

(declare-fun m!1103481 () Bool)

(assert (=> b!859649 m!1103481))

(declare-fun m!1103483 () Bool)

(assert (=> b!859638 m!1103483))

(declare-fun m!1103485 () Bool)

(assert (=> b!859638 m!1103485))

(declare-fun m!1103487 () Bool)

(assert (=> b!859653 m!1103487))

(declare-fun m!1103489 () Bool)

(assert (=> b!859646 m!1103489))

(push 1)

(assert b_and!76457)

(assert (not b!859641))

(assert b_and!76461)

(assert (not b!859653))

(assert (not b!859639))

(assert (not b!859650))

(assert b_and!76463)

(assert (not b!859644))

(assert (not start!77548))

(assert b_and!76467)

(assert (not b_next!26217))

(assert (not b_next!26219))

(assert (not b!859642))

(assert (not b!859640))

(assert (not b!859649))

(assert (not b_next!26221))

(assert (not b!859648))

(assert (not b!859655))

(assert (not b!859646))

(assert (not b_next!26223))

(assert b_and!76459)

(assert (not b_next!26215))

(assert (not b!859651))

(assert b_and!76465)

(assert (not b!859638))

(assert (not b_next!26213))

(assert (not b!859654))

(check-sat)

(pop 1)

(push 1)

(assert b_and!76457)

(assert b_and!76461)

(assert b_and!76463)

(assert b_and!76467)

(assert (not b_next!26221))

(assert (not b_next!26217))

(assert (not b_next!26223))

(assert (not b_next!26219))

(assert b_and!76465)

(assert (not b_next!26213))

(assert b_and!76459)

(assert (not b_next!26215))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!269426 () Bool)

(assert (=> d!269426 (= (inv!11799 (tag!2001 (rule!3162 separatorToken!297))) (= (mod (str.len (value!56261 (tag!2001 (rule!3162 separatorToken!297)))) 2) 0))))

(assert (=> b!859644 d!269426))

(declare-fun d!269428 () Bool)

(declare-fun res!392233 () Bool)

(declare-fun e!565886 () Bool)

(assert (=> d!269428 (=> (not res!392233) (not e!565886))))

(declare-fun semiInverseModEq!685 (Int Int) Bool)

(assert (=> d!269428 (= res!392233 (semiInverseModEq!685 (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (toValue!2804 (transformation!1739 (rule!3162 separatorToken!297)))))))

(assert (=> d!269428 (= (inv!11803 (transformation!1739 (rule!3162 separatorToken!297))) e!565886)))

(declare-fun b!859712 () Bool)

(declare-fun equivClasses!652 (Int Int) Bool)

(assert (=> b!859712 (= e!565886 (equivClasses!652 (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (toValue!2804 (transformation!1739 (rule!3162 separatorToken!297)))))))

(assert (= (and d!269428 res!392233) b!859712))

(declare-fun m!1103525 () Bool)

(assert (=> d!269428 m!1103525))

(declare-fun m!1103527 () Bool)

(assert (=> b!859712 m!1103527))

(assert (=> b!859644 d!269428))

(declare-fun d!269430 () Bool)

(assert (=> d!269430 (= (isEmpty!5508 rules!2621) (is-Nil!9277 rules!2621))))

(assert (=> b!859654 d!269430))

(declare-fun bs!232342 () Bool)

(declare-fun d!269432 () Bool)

(assert (= bs!232342 (and d!269432 b!859646)))

(declare-fun lambda!25827 () Int)

(assert (=> bs!232342 (not (= lambda!25827 lambda!25821))))

(declare-fun b!859794 () Bool)

(declare-fun e!565947 () Bool)

(assert (=> b!859794 (= e!565947 true)))

(declare-fun b!859793 () Bool)

(declare-fun e!565946 () Bool)

(assert (=> b!859793 (= e!565946 e!565947)))

(declare-fun b!859792 () Bool)

(declare-fun e!565945 () Bool)

(assert (=> b!859792 (= e!565945 e!565946)))

(assert (=> d!269432 e!565945))

(assert (= b!859793 b!859794))

(assert (= b!859792 b!859793))

(assert (= (and d!269432 (is-Cons!9277 rules!2621)) b!859792))

(declare-fun order!6029 () Int)

(declare-fun order!6031 () Int)

(declare-fun dynLambda!4380 (Int Int) Int)

(declare-fun dynLambda!4381 (Int Int) Int)

(assert (=> b!859794 (< (dynLambda!4380 order!6029 (toValue!2804 (transformation!1739 (h!14678 rules!2621)))) (dynLambda!4381 order!6031 lambda!25827))))

(declare-fun order!6033 () Int)

(declare-fun dynLambda!4382 (Int Int) Int)

(assert (=> b!859794 (< (dynLambda!4382 order!6033 (toChars!2663 (transformation!1739 (h!14678 rules!2621)))) (dynLambda!4381 order!6031 lambda!25827))))

(assert (=> d!269432 true))

(declare-fun lt!325121 () Bool)

(assert (=> d!269432 (= lt!325121 (forall!2202 l!5107 lambda!25827))))

(declare-fun e!565938 () Bool)

(assert (=> d!269432 (= lt!325121 e!565938)))

(declare-fun res!392276 () Bool)

(assert (=> d!269432 (=> res!392276 e!565938)))

(assert (=> d!269432 (= res!392276 (not (is-Cons!9276 l!5107)))))

(assert (=> d!269432 (not (isEmpty!5508 rules!2621))))

(assert (=> d!269432 (= (rulesProduceEachTokenIndividuallyList!429 thiss!20117 rules!2621 l!5107) lt!325121)))

(declare-fun b!859782 () Bool)

(declare-fun e!565937 () Bool)

(assert (=> b!859782 (= e!565938 e!565937)))

(declare-fun res!392277 () Bool)

(assert (=> b!859782 (=> (not res!392277) (not e!565937))))

(assert (=> b!859782 (= res!392277 (rulesProduceIndividualToken!605 thiss!20117 rules!2621 (h!14677 l!5107)))))

(declare-fun b!859783 () Bool)

(assert (=> b!859783 (= e!565937 (rulesProduceEachTokenIndividuallyList!429 thiss!20117 rules!2621 (t!97466 l!5107)))))

(assert (= (and d!269432 (not res!392276)) b!859782))

(assert (= (and b!859782 res!392277) b!859783))

(declare-fun m!1103593 () Bool)

(assert (=> d!269432 m!1103593))

(assert (=> d!269432 m!1103473))

(declare-fun m!1103595 () Bool)

(assert (=> b!859782 m!1103595))

(declare-fun m!1103597 () Bool)

(assert (=> b!859783 m!1103597))

(assert (=> b!859653 d!269432))

(declare-fun d!269460 () Bool)

(declare-fun res!392282 () Bool)

(declare-fun e!565950 () Bool)

(assert (=> d!269460 (=> (not res!392282) (not e!565950))))

(declare-fun isEmpty!5510 (List!9291) Bool)

(assert (=> d!269460 (= res!392282 (not (isEmpty!5510 (originalCharacters!2295 separatorToken!297))))))

(assert (=> d!269460 (= (inv!11802 separatorToken!297) e!565950)))

(declare-fun b!859801 () Bool)

(declare-fun res!392283 () Bool)

(assert (=> b!859801 (=> (not res!392283) (not e!565950))))

(declare-fun list!3663 (BalanceConc!6162) List!9291)

(declare-fun dynLambda!4383 (Int TokenValue!1805) BalanceConc!6162)

(assert (=> b!859801 (= res!392283 (= (originalCharacters!2295 separatorToken!297) (list!3663 (dynLambda!4383 (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (value!56262 separatorToken!297)))))))

(declare-fun b!859802 () Bool)

(declare-fun size!7752 (List!9291) Int)

(assert (=> b!859802 (= e!565950 (= (size!7750 separatorToken!297) (size!7752 (originalCharacters!2295 separatorToken!297))))))

(assert (= (and d!269460 res!392282) b!859801))

(assert (= (and b!859801 res!392283) b!859802))

(declare-fun b_lambda!29071 () Bool)

(assert (=> (not b_lambda!29071) (not b!859801)))

(declare-fun t!97482 () Bool)

(declare-fun tb!61447 () Bool)

(assert (=> (and b!859647 (= (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297)))) t!97482) tb!61447))

(declare-fun b!859807 () Bool)

(declare-fun e!565953 () Bool)

(declare-fun tp!271302 () Bool)

(declare-fun inv!11806 (Conc!3074) Bool)

(assert (=> b!859807 (= e!565953 (and (inv!11806 (c!139218 (dynLambda!4383 (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (value!56262 separatorToken!297)))) tp!271302))))

(declare-fun result!71098 () Bool)

(declare-fun inv!11807 (BalanceConc!6162) Bool)

(assert (=> tb!61447 (= result!71098 (and (inv!11807 (dynLambda!4383 (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (value!56262 separatorToken!297))) e!565953))))

(assert (= tb!61447 b!859807))

(declare-fun m!1103599 () Bool)

(assert (=> b!859807 m!1103599))

(declare-fun m!1103601 () Bool)

(assert (=> tb!61447 m!1103601))

(assert (=> b!859801 t!97482))

(declare-fun b_and!76487 () Bool)

(assert (= b_and!76459 (and (=> t!97482 result!71098) b_and!76487)))

(declare-fun tb!61449 () Bool)

(declare-fun t!97484 () Bool)

(assert (=> (and b!859643 (= (toChars!2663 (transformation!1739 (h!14678 rules!2621))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297)))) t!97484) tb!61449))

(declare-fun result!71102 () Bool)

(assert (= result!71102 result!71098))

(assert (=> b!859801 t!97484))

(declare-fun b_and!76489 () Bool)

(assert (= b_and!76463 (and (=> t!97484 result!71102) b_and!76489)))

(declare-fun tb!61451 () Bool)

(declare-fun t!97486 () Bool)

(assert (=> (and b!859652 (= (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297)))) t!97486) tb!61451))

(declare-fun result!71104 () Bool)

(assert (= result!71104 result!71098))

(assert (=> b!859801 t!97486))

(declare-fun b_and!76491 () Bool)

(assert (= b_and!76467 (and (=> t!97486 result!71104) b_and!76491)))

(declare-fun m!1103603 () Bool)

(assert (=> d!269460 m!1103603))

(declare-fun m!1103605 () Bool)

(assert (=> b!859801 m!1103605))

(assert (=> b!859801 m!1103605))

(declare-fun m!1103607 () Bool)

(assert (=> b!859801 m!1103607))

(declare-fun m!1103609 () Bool)

(assert (=> b!859802 m!1103609))

(assert (=> start!77548 d!269460))

(declare-fun d!269462 () Bool)

(declare-fun res!392284 () Bool)

(declare-fun e!565954 () Bool)

(assert (=> d!269462 (=> (not res!392284) (not e!565954))))

(assert (=> d!269462 (= res!392284 (not (isEmpty!5510 (originalCharacters!2295 (h!14677 l!5107)))))))

(assert (=> d!269462 (= (inv!11802 (h!14677 l!5107)) e!565954)))

(declare-fun b!859808 () Bool)

(declare-fun res!392285 () Bool)

(assert (=> b!859808 (=> (not res!392285) (not e!565954))))

(assert (=> b!859808 (= res!392285 (= (originalCharacters!2295 (h!14677 l!5107)) (list!3663 (dynLambda!4383 (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (value!56262 (h!14677 l!5107))))))))

(declare-fun b!859809 () Bool)

(assert (=> b!859809 (= e!565954 (= (size!7750 (h!14677 l!5107)) (size!7752 (originalCharacters!2295 (h!14677 l!5107)))))))

(assert (= (and d!269462 res!392284) b!859808))

(assert (= (and b!859808 res!392285) b!859809))

(declare-fun b_lambda!29073 () Bool)

(assert (=> (not b_lambda!29073) (not b!859808)))

(declare-fun tb!61453 () Bool)

(declare-fun t!97488 () Bool)

(assert (=> (and b!859647 (= (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107))))) t!97488) tb!61453))

(declare-fun b!859810 () Bool)

(declare-fun e!565955 () Bool)

(declare-fun tp!271303 () Bool)

(assert (=> b!859810 (= e!565955 (and (inv!11806 (c!139218 (dynLambda!4383 (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (value!56262 (h!14677 l!5107))))) tp!271303))))

(declare-fun result!71106 () Bool)

(assert (=> tb!61453 (= result!71106 (and (inv!11807 (dynLambda!4383 (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (value!56262 (h!14677 l!5107)))) e!565955))))

(assert (= tb!61453 b!859810))

(declare-fun m!1103611 () Bool)

(assert (=> b!859810 m!1103611))

(declare-fun m!1103613 () Bool)

(assert (=> tb!61453 m!1103613))

(assert (=> b!859808 t!97488))

(declare-fun b_and!76493 () Bool)

(assert (= b_and!76487 (and (=> t!97488 result!71106) b_and!76493)))

(declare-fun tb!61455 () Bool)

(declare-fun t!97490 () Bool)

(assert (=> (and b!859643 (= (toChars!2663 (transformation!1739 (h!14678 rules!2621))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107))))) t!97490) tb!61455))

(declare-fun result!71108 () Bool)

(assert (= result!71108 result!71106))

(assert (=> b!859808 t!97490))

(declare-fun b_and!76495 () Bool)

(assert (= b_and!76489 (and (=> t!97490 result!71108) b_and!76495)))

(declare-fun t!97492 () Bool)

(declare-fun tb!61457 () Bool)

(assert (=> (and b!859652 (= (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107))))) t!97492) tb!61457))

(declare-fun result!71110 () Bool)

(assert (= result!71110 result!71106))

(assert (=> b!859808 t!97492))

(declare-fun b_and!76497 () Bool)

(assert (= b_and!76491 (and (=> t!97492 result!71110) b_and!76497)))

(declare-fun m!1103615 () Bool)

(assert (=> d!269462 m!1103615))

(declare-fun m!1103617 () Bool)

(assert (=> b!859808 m!1103617))

(assert (=> b!859808 m!1103617))

(declare-fun m!1103619 () Bool)

(assert (=> b!859808 m!1103619))

(declare-fun m!1103621 () Bool)

(assert (=> b!859809 m!1103621))

(assert (=> b!859642 d!269462))

(declare-fun d!269464 () Bool)

(declare-fun res!392290 () Bool)

(declare-fun e!565960 () Bool)

(assert (=> d!269464 (=> res!392290 e!565960)))

(assert (=> d!269464 (= res!392290 (is-Nil!9276 l!5107))))

(assert (=> d!269464 (= (forall!2202 l!5107 lambda!25821) e!565960)))

(declare-fun b!859815 () Bool)

(declare-fun e!565961 () Bool)

(assert (=> b!859815 (= e!565960 e!565961)))

(declare-fun res!392291 () Bool)

(assert (=> b!859815 (=> (not res!392291) (not e!565961))))

(declare-fun dynLambda!4384 (Int Token!3144) Bool)

(assert (=> b!859815 (= res!392291 (dynLambda!4384 lambda!25821 (h!14677 l!5107)))))

(declare-fun b!859816 () Bool)

(assert (=> b!859816 (= e!565961 (forall!2202 (t!97466 l!5107) lambda!25821))))

(assert (= (and d!269464 (not res!392290)) b!859815))

(assert (= (and b!859815 res!392291) b!859816))

(declare-fun b_lambda!29075 () Bool)

(assert (=> (not b_lambda!29075) (not b!859815)))

(declare-fun m!1103623 () Bool)

(assert (=> b!859815 m!1103623))

(declare-fun m!1103625 () Bool)

(assert (=> b!859816 m!1103625))

(assert (=> b!859646 d!269464))

(declare-fun d!269466 () Bool)

(declare-fun lt!325124 () Int)

(assert (=> d!269466 (>= lt!325124 0)))

(declare-fun e!565964 () Int)

(assert (=> d!269466 (= lt!325124 e!565964)))

(declare-fun c!139234 () Bool)

(assert (=> d!269466 (= c!139234 (is-Nil!9276 l!5107))))

(assert (=> d!269466 (= (ListPrimitiveSize!59 l!5107) lt!325124)))

(declare-fun b!859821 () Bool)

(assert (=> b!859821 (= e!565964 0)))

(declare-fun b!859822 () Bool)

(assert (=> b!859822 (= e!565964 (+ 1 (ListPrimitiveSize!59 (t!97466 l!5107))))))

(assert (= (and d!269466 c!139234) b!859821))

(assert (= (and d!269466 (not c!139234)) b!859822))

(declare-fun m!1103627 () Bool)

(assert (=> b!859822 m!1103627))

(assert (=> b!859639 d!269466))

(declare-fun b!859837 () Bool)

(declare-fun e!565975 () Bool)

(declare-fun inv!17 (TokenValue!1805) Bool)

(assert (=> b!859837 (= e!565975 (inv!17 (value!56262 separatorToken!297)))))

(declare-fun d!269468 () Bool)

(declare-fun c!139239 () Bool)

(assert (=> d!269468 (= c!139239 (is-IntegerValue!5415 (value!56262 separatorToken!297)))))

(declare-fun e!565976 () Bool)

(assert (=> d!269468 (= (inv!21 (value!56262 separatorToken!297)) e!565976)))

(declare-fun b!859838 () Bool)

(assert (=> b!859838 (= e!565976 e!565975)))

(declare-fun c!139240 () Bool)

(assert (=> b!859838 (= c!139240 (is-IntegerValue!5416 (value!56262 separatorToken!297)))))

(declare-fun b!859839 () Bool)

(declare-fun inv!16 (TokenValue!1805) Bool)

(assert (=> b!859839 (= e!565976 (inv!16 (value!56262 separatorToken!297)))))

(declare-fun b!859840 () Bool)

(declare-fun res!392298 () Bool)

(declare-fun e!565977 () Bool)

(assert (=> b!859840 (=> res!392298 e!565977)))

(assert (=> b!859840 (= res!392298 (not (is-IntegerValue!5417 (value!56262 separatorToken!297))))))

(assert (=> b!859840 (= e!565975 e!565977)))

(declare-fun b!859841 () Bool)

(declare-fun inv!15 (TokenValue!1805) Bool)

(assert (=> b!859841 (= e!565977 (inv!15 (value!56262 separatorToken!297)))))

(assert (= (and d!269468 c!139239) b!859839))

(assert (= (and d!269468 (not c!139239)) b!859838))

(assert (= (and b!859838 c!139240) b!859837))

(assert (= (and b!859838 (not c!139240)) b!859840))

(assert (= (and b!859840 (not res!392298)) b!859841))

(declare-fun m!1103629 () Bool)

(assert (=> b!859837 m!1103629))

(declare-fun m!1103631 () Bool)

(assert (=> b!859839 m!1103631))

(declare-fun m!1103633 () Bool)

(assert (=> b!859841 m!1103633))

(assert (=> b!859649 d!269468))

(declare-fun d!269470 () Bool)

(assert (=> d!269470 (= (inv!11799 (tag!2001 (rule!3162 (h!14677 l!5107)))) (= (mod (str.len (value!56261 (tag!2001 (rule!3162 (h!14677 l!5107))))) 2) 0))))

(assert (=> b!859638 d!269470))

(declare-fun d!269472 () Bool)

(declare-fun res!392299 () Bool)

(declare-fun e!565978 () Bool)

(assert (=> d!269472 (=> (not res!392299) (not e!565978))))

(assert (=> d!269472 (= res!392299 (semiInverseModEq!685 (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (toValue!2804 (transformation!1739 (rule!3162 (h!14677 l!5107))))))))

(assert (=> d!269472 (= (inv!11803 (transformation!1739 (rule!3162 (h!14677 l!5107)))) e!565978)))

(declare-fun b!859842 () Bool)

(assert (=> b!859842 (= e!565978 (equivClasses!652 (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (toValue!2804 (transformation!1739 (rule!3162 (h!14677 l!5107))))))))

(assert (= (and d!269472 res!392299) b!859842))

(declare-fun m!1103635 () Bool)

(assert (=> d!269472 m!1103635))

(declare-fun m!1103637 () Bool)

(assert (=> b!859842 m!1103637))

(assert (=> b!859638 d!269472))

(declare-fun d!269474 () Bool)

(declare-fun lt!325131 () Bool)

(declare-fun e!565984 () Bool)

(assert (=> d!269474 (= lt!325131 e!565984)))

(declare-fun res!392308 () Bool)

(assert (=> d!269474 (=> (not res!392308) (not e!565984))))

(declare-datatypes ((IArray!6157 0))(
  ( (IArray!6158 (innerList!3136 List!9292)) )
))
(declare-datatypes ((Conc!3076 0))(
  ( (Node!3076 (left!6869 Conc!3076) (right!7199 Conc!3076) (csize!6382 Int) (cheight!3287 Int)) (Leaf!4534 (xs!5765 IArray!6157) (csize!6383 Int)) (Empty!3076) )
))
(declare-datatypes ((BalanceConc!6166 0))(
  ( (BalanceConc!6167 (c!139243 Conc!3076)) )
))
(declare-fun list!3664 (BalanceConc!6166) List!9292)

(declare-datatypes ((tuple2!10438 0))(
  ( (tuple2!10439 (_1!6045 BalanceConc!6166) (_2!6045 BalanceConc!6162)) )
))
(declare-fun lex!633 (LexerInterface!1541 List!9293 BalanceConc!6162) tuple2!10438)

(declare-fun print!570 (LexerInterface!1541 BalanceConc!6166) BalanceConc!6162)

(declare-fun singletonSeq!560 (Token!3144) BalanceConc!6166)

(assert (=> d!269474 (= res!392308 (= (list!3664 (_1!6045 (lex!633 thiss!20117 rules!2621 (print!570 thiss!20117 (singletonSeq!560 separatorToken!297))))) (list!3664 (singletonSeq!560 separatorToken!297))))))

(declare-fun e!565983 () Bool)

(assert (=> d!269474 (= lt!325131 e!565983)))

(declare-fun res!392306 () Bool)

(assert (=> d!269474 (=> (not res!392306) (not e!565983))))

(declare-fun lt!325132 () tuple2!10438)

(declare-fun size!7753 (BalanceConc!6166) Int)

(assert (=> d!269474 (= res!392306 (= (size!7753 (_1!6045 lt!325132)) 1))))

(assert (=> d!269474 (= lt!325132 (lex!633 thiss!20117 rules!2621 (print!570 thiss!20117 (singletonSeq!560 separatorToken!297))))))

(assert (=> d!269474 (not (isEmpty!5508 rules!2621))))

(assert (=> d!269474 (= (rulesProduceIndividualToken!605 thiss!20117 rules!2621 separatorToken!297) lt!325131)))

(declare-fun b!859849 () Bool)

(declare-fun res!392307 () Bool)

(assert (=> b!859849 (=> (not res!392307) (not e!565983))))

(declare-fun apply!1946 (BalanceConc!6166 Int) Token!3144)

(assert (=> b!859849 (= res!392307 (= (apply!1946 (_1!6045 lt!325132) 0) separatorToken!297))))

(declare-fun b!859850 () Bool)

(declare-fun isEmpty!5511 (BalanceConc!6162) Bool)

(assert (=> b!859850 (= e!565983 (isEmpty!5511 (_2!6045 lt!325132)))))

(declare-fun b!859851 () Bool)

(assert (=> b!859851 (= e!565984 (isEmpty!5511 (_2!6045 (lex!633 thiss!20117 rules!2621 (print!570 thiss!20117 (singletonSeq!560 separatorToken!297))))))))

(assert (= (and d!269474 res!392306) b!859849))

(assert (= (and b!859849 res!392307) b!859850))

(assert (= (and d!269474 res!392308) b!859851))

(declare-fun m!1103639 () Bool)

(assert (=> d!269474 m!1103639))

(declare-fun m!1103641 () Bool)

(assert (=> d!269474 m!1103641))

(declare-fun m!1103643 () Bool)

(assert (=> d!269474 m!1103643))

(declare-fun m!1103645 () Bool)

(assert (=> d!269474 m!1103645))

(assert (=> d!269474 m!1103639))

(assert (=> d!269474 m!1103639))

(declare-fun m!1103647 () Bool)

(assert (=> d!269474 m!1103647))

(assert (=> d!269474 m!1103473))

(assert (=> d!269474 m!1103641))

(declare-fun m!1103649 () Bool)

(assert (=> d!269474 m!1103649))

(declare-fun m!1103651 () Bool)

(assert (=> b!859849 m!1103651))

(declare-fun m!1103653 () Bool)

(assert (=> b!859850 m!1103653))

(assert (=> b!859851 m!1103639))

(assert (=> b!859851 m!1103639))

(assert (=> b!859851 m!1103641))

(assert (=> b!859851 m!1103641))

(assert (=> b!859851 m!1103649))

(declare-fun m!1103655 () Bool)

(assert (=> b!859851 m!1103655))

(assert (=> b!859648 d!269474))

(declare-fun d!269476 () Bool)

(assert (=> d!269476 (= (inv!11799 (tag!2001 (h!14678 rules!2621))) (= (mod (str.len (value!56261 (tag!2001 (h!14678 rules!2621)))) 2) 0))))

(assert (=> b!859641 d!269476))

(declare-fun d!269478 () Bool)

(declare-fun res!392309 () Bool)

(declare-fun e!565985 () Bool)

(assert (=> d!269478 (=> (not res!392309) (not e!565985))))

(assert (=> d!269478 (= res!392309 (semiInverseModEq!685 (toChars!2663 (transformation!1739 (h!14678 rules!2621))) (toValue!2804 (transformation!1739 (h!14678 rules!2621)))))))

(assert (=> d!269478 (= (inv!11803 (transformation!1739 (h!14678 rules!2621))) e!565985)))

(declare-fun b!859852 () Bool)

(assert (=> b!859852 (= e!565985 (equivClasses!652 (toChars!2663 (transformation!1739 (h!14678 rules!2621))) (toValue!2804 (transformation!1739 (h!14678 rules!2621)))))))

(assert (= (and d!269478 res!392309) b!859852))

(declare-fun m!1103657 () Bool)

(assert (=> d!269478 m!1103657))

(declare-fun m!1103659 () Bool)

(assert (=> b!859852 m!1103659))

(assert (=> b!859641 d!269478))

(declare-fun d!269480 () Bool)

(declare-fun res!392314 () Bool)

(declare-fun e!565990 () Bool)

(assert (=> d!269480 (=> res!392314 e!565990)))

(assert (=> d!269480 (= res!392314 (not (is-Cons!9277 rules!2621)))))

(assert (=> d!269480 (= (sepAndNonSepRulesDisjointChars!539 rules!2621 rules!2621) e!565990)))

(declare-fun b!859857 () Bool)

(declare-fun e!565991 () Bool)

(assert (=> b!859857 (= e!565990 e!565991)))

(declare-fun res!392315 () Bool)

(assert (=> b!859857 (=> (not res!392315) (not e!565991))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!252 (Rule!3278 List!9293) Bool)

(assert (=> b!859857 (= res!392315 (ruleDisjointCharsFromAllFromOtherType!252 (h!14678 rules!2621) rules!2621))))

(declare-fun b!859858 () Bool)

(assert (=> b!859858 (= e!565991 (sepAndNonSepRulesDisjointChars!539 rules!2621 (t!97467 rules!2621)))))

(assert (= (and d!269480 (not res!392314)) b!859857))

(assert (= (and b!859857 res!392315) b!859858))

(declare-fun m!1103661 () Bool)

(assert (=> b!859857 m!1103661))

(declare-fun m!1103663 () Bool)

(assert (=> b!859858 m!1103663))

(assert (=> b!859651 d!269480))

(declare-fun b!859859 () Bool)

(declare-fun e!565992 () Bool)

(assert (=> b!859859 (= e!565992 (inv!17 (value!56262 (h!14677 l!5107))))))

(declare-fun d!269482 () Bool)

(declare-fun c!139241 () Bool)

(assert (=> d!269482 (= c!139241 (is-IntegerValue!5415 (value!56262 (h!14677 l!5107))))))

(declare-fun e!565993 () Bool)

(assert (=> d!269482 (= (inv!21 (value!56262 (h!14677 l!5107))) e!565993)))

(declare-fun b!859860 () Bool)

(assert (=> b!859860 (= e!565993 e!565992)))

(declare-fun c!139242 () Bool)

(assert (=> b!859860 (= c!139242 (is-IntegerValue!5416 (value!56262 (h!14677 l!5107))))))

(declare-fun b!859861 () Bool)

(assert (=> b!859861 (= e!565993 (inv!16 (value!56262 (h!14677 l!5107))))))

(declare-fun b!859862 () Bool)

(declare-fun res!392316 () Bool)

(declare-fun e!565994 () Bool)

(assert (=> b!859862 (=> res!392316 e!565994)))

(assert (=> b!859862 (= res!392316 (not (is-IntegerValue!5417 (value!56262 (h!14677 l!5107)))))))

(assert (=> b!859862 (= e!565992 e!565994)))

(declare-fun b!859863 () Bool)

(assert (=> b!859863 (= e!565994 (inv!15 (value!56262 (h!14677 l!5107))))))

(assert (= (and d!269482 c!139241) b!859861))

(assert (= (and d!269482 (not c!139241)) b!859860))

(assert (= (and b!859860 c!139242) b!859859))

(assert (= (and b!859860 (not c!139242)) b!859862))

(assert (= (and b!859862 (not res!392316)) b!859863))

(declare-fun m!1103665 () Bool)

(assert (=> b!859859 m!1103665))

(declare-fun m!1103667 () Bool)

(assert (=> b!859861 m!1103667))

(declare-fun m!1103669 () Bool)

(assert (=> b!859863 m!1103669))

(assert (=> b!859640 d!269482))

(declare-fun d!269484 () Bool)

(declare-fun res!392319 () Bool)

(declare-fun e!565997 () Bool)

(assert (=> d!269484 (=> (not res!392319) (not e!565997))))

(declare-fun rulesValid!616 (LexerInterface!1541 List!9293) Bool)

(assert (=> d!269484 (= res!392319 (rulesValid!616 thiss!20117 rules!2621))))

(assert (=> d!269484 (= (rulesInvariant!1417 thiss!20117 rules!2621) e!565997)))

(declare-fun b!859866 () Bool)

(declare-datatypes ((List!9298 0))(
  ( (Nil!9282) (Cons!9282 (h!14683 String!10925) (t!97504 List!9298)) )
))
(declare-fun noDuplicateTag!616 (LexerInterface!1541 List!9293 List!9298) Bool)

(assert (=> b!859866 (= e!565997 (noDuplicateTag!616 thiss!20117 rules!2621 Nil!9282))))

(assert (= (and d!269484 res!392319) b!859866))

(declare-fun m!1103671 () Bool)

(assert (=> d!269484 m!1103671))

(declare-fun m!1103673 () Bool)

(assert (=> b!859866 m!1103673))

(assert (=> b!859650 d!269484))

(declare-fun b!859877 () Bool)

(declare-fun b_free!26173 () Bool)

(declare-fun b_next!26237 () Bool)

(assert (=> b!859877 (= b_free!26173 (not b_next!26237))))

(declare-fun tp!271313 () Bool)

(declare-fun b_and!76499 () Bool)

(assert (=> b!859877 (= tp!271313 b_and!76499)))

(declare-fun b_free!26175 () Bool)

(declare-fun b_next!26239 () Bool)

(assert (=> b!859877 (= b_free!26175 (not b_next!26239))))

(declare-fun t!97497 () Bool)

(declare-fun tb!61459 () Bool)

(assert (=> (and b!859877 (= (toChars!2663 (transformation!1739 (h!14678 (t!97467 rules!2621)))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297)))) t!97497) tb!61459))

(declare-fun result!71114 () Bool)

(assert (= result!71114 result!71098))

(assert (=> b!859801 t!97497))

(declare-fun tb!61461 () Bool)

(declare-fun t!97499 () Bool)

(assert (=> (and b!859877 (= (toChars!2663 (transformation!1739 (h!14678 (t!97467 rules!2621)))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107))))) t!97499) tb!61461))

(declare-fun result!71116 () Bool)

(assert (= result!71116 result!71106))

(assert (=> b!859808 t!97499))

(declare-fun b_and!76501 () Bool)

(declare-fun tp!271314 () Bool)

(assert (=> b!859877 (= tp!271314 (and (=> t!97497 result!71114) (=> t!97499 result!71116) b_and!76501))))

(declare-fun e!566007 () Bool)

(assert (=> b!859877 (= e!566007 (and tp!271313 tp!271314))))

(declare-fun b!859876 () Bool)

(declare-fun e!566006 () Bool)

(declare-fun tp!271312 () Bool)

(assert (=> b!859876 (= e!566006 (and tp!271312 (inv!11799 (tag!2001 (h!14678 (t!97467 rules!2621)))) (inv!11803 (transformation!1739 (h!14678 (t!97467 rules!2621)))) e!566007))))

(declare-fun b!859875 () Bool)

(declare-fun e!566008 () Bool)

(declare-fun tp!271315 () Bool)

(assert (=> b!859875 (= e!566008 (and e!566006 tp!271315))))

(assert (=> b!859655 (= tp!271253 e!566008)))

(assert (= b!859876 b!859877))

(assert (= b!859875 b!859876))

(assert (= (and b!859655 (is-Cons!9277 (t!97467 rules!2621))) b!859875))

(declare-fun m!1103675 () Bool)

(assert (=> b!859876 m!1103675))

(declare-fun m!1103677 () Bool)

(assert (=> b!859876 m!1103677))

(declare-fun b!859889 () Bool)

(declare-fun e!566012 () Bool)

(declare-fun tp!271328 () Bool)

(declare-fun tp!271329 () Bool)

(assert (=> b!859889 (= e!566012 (and tp!271328 tp!271329))))

(declare-fun b!859890 () Bool)

(declare-fun tp!271330 () Bool)

(assert (=> b!859890 (= e!566012 tp!271330)))

(declare-fun b!859891 () Bool)

(declare-fun tp!271326 () Bool)

(declare-fun tp!271327 () Bool)

(assert (=> b!859891 (= e!566012 (and tp!271326 tp!271327))))

(declare-fun b!859888 () Bool)

(declare-fun tp_is_empty!4003 () Bool)

(assert (=> b!859888 (= e!566012 tp_is_empty!4003)))

(assert (=> b!859644 (= tp!271252 e!566012)))

(assert (= (and b!859644 (is-ElementMatch!2172 (regex!1739 (rule!3162 separatorToken!297)))) b!859888))

(assert (= (and b!859644 (is-Concat!3978 (regex!1739 (rule!3162 separatorToken!297)))) b!859889))

(assert (= (and b!859644 (is-Star!2172 (regex!1739 (rule!3162 separatorToken!297)))) b!859890))

(assert (= (and b!859644 (is-Union!2172 (regex!1739 (rule!3162 separatorToken!297)))) b!859891))

(declare-fun b!859896 () Bool)

(declare-fun e!566015 () Bool)

(declare-fun tp!271333 () Bool)

(assert (=> b!859896 (= e!566015 (and tp_is_empty!4003 tp!271333))))

(assert (=> b!859649 (= tp!271247 e!566015)))

(assert (= (and b!859649 (is-Cons!9275 (originalCharacters!2295 separatorToken!297))) b!859896))

(declare-fun b!859898 () Bool)

(declare-fun e!566016 () Bool)

(declare-fun tp!271336 () Bool)

(declare-fun tp!271337 () Bool)

(assert (=> b!859898 (= e!566016 (and tp!271336 tp!271337))))

(declare-fun b!859899 () Bool)

(declare-fun tp!271338 () Bool)

(assert (=> b!859899 (= e!566016 tp!271338)))

(declare-fun b!859900 () Bool)

(declare-fun tp!271334 () Bool)

(declare-fun tp!271335 () Bool)

(assert (=> b!859900 (= e!566016 (and tp!271334 tp!271335))))

(declare-fun b!859897 () Bool)

(assert (=> b!859897 (= e!566016 tp_is_empty!4003)))

(assert (=> b!859638 (= tp!271248 e!566016)))

(assert (= (and b!859638 (is-ElementMatch!2172 (regex!1739 (rule!3162 (h!14677 l!5107))))) b!859897))

(assert (= (and b!859638 (is-Concat!3978 (regex!1739 (rule!3162 (h!14677 l!5107))))) b!859898))

(assert (= (and b!859638 (is-Star!2172 (regex!1739 (rule!3162 (h!14677 l!5107))))) b!859899))

(assert (= (and b!859638 (is-Union!2172 (regex!1739 (rule!3162 (h!14677 l!5107))))) b!859900))

(declare-fun b!859914 () Bool)

(declare-fun b_free!26177 () Bool)

(declare-fun b_next!26241 () Bool)

(assert (=> b!859914 (= b_free!26177 (not b_next!26241))))

(declare-fun tp!271352 () Bool)

(declare-fun b_and!76503 () Bool)

(assert (=> b!859914 (= tp!271352 b_and!76503)))

(declare-fun b_free!26179 () Bool)

(declare-fun b_next!26243 () Bool)

(assert (=> b!859914 (= b_free!26179 (not b_next!26243))))

(declare-fun tb!61463 () Bool)

(declare-fun t!97501 () Bool)

(assert (=> (and b!859914 (= (toChars!2663 (transformation!1739 (rule!3162 (h!14677 (t!97466 l!5107))))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297)))) t!97501) tb!61463))

(declare-fun result!71124 () Bool)

(assert (= result!71124 result!71098))

(assert (=> b!859801 t!97501))

(declare-fun t!97503 () Bool)

(declare-fun tb!61465 () Bool)

(assert (=> (and b!859914 (= (toChars!2663 (transformation!1739 (rule!3162 (h!14677 (t!97466 l!5107))))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107))))) t!97503) tb!61465))

(declare-fun result!71126 () Bool)

(assert (= result!71126 result!71106))

(assert (=> b!859808 t!97503))

(declare-fun b_and!76505 () Bool)

(declare-fun tp!271353 () Bool)

(assert (=> b!859914 (= tp!271353 (and (=> t!97501 result!71124) (=> t!97503 result!71126) b_and!76505))))

(declare-fun tp!271349 () Bool)

(declare-fun e!566031 () Bool)

(declare-fun e!566029 () Bool)

(declare-fun b!859913 () Bool)

(assert (=> b!859913 (= e!566029 (and tp!271349 (inv!11799 (tag!2001 (rule!3162 (h!14677 (t!97466 l!5107))))) (inv!11803 (transformation!1739 (rule!3162 (h!14677 (t!97466 l!5107))))) e!566031))))

(declare-fun e!566034 () Bool)

(assert (=> b!859642 (= tp!271250 e!566034)))

(assert (=> b!859914 (= e!566031 (and tp!271352 tp!271353))))

(declare-fun b!859912 () Bool)

(declare-fun e!566030 () Bool)

(declare-fun tp!271350 () Bool)

(assert (=> b!859912 (= e!566030 (and (inv!21 (value!56262 (h!14677 (t!97466 l!5107)))) e!566029 tp!271350))))

(declare-fun b!859911 () Bool)

(declare-fun tp!271351 () Bool)

(assert (=> b!859911 (= e!566034 (and (inv!11802 (h!14677 (t!97466 l!5107))) e!566030 tp!271351))))

(assert (= b!859913 b!859914))

(assert (= b!859912 b!859913))

(assert (= b!859911 b!859912))

(assert (= (and b!859642 (is-Cons!9276 (t!97466 l!5107))) b!859911))

(declare-fun m!1103679 () Bool)

(assert (=> b!859913 m!1103679))

(declare-fun m!1103681 () Bool)

(assert (=> b!859913 m!1103681))

(declare-fun m!1103683 () Bool)

(assert (=> b!859912 m!1103683))

(declare-fun m!1103685 () Bool)

(assert (=> b!859911 m!1103685))

(declare-fun b!859916 () Bool)

(declare-fun e!566035 () Bool)

(declare-fun tp!271356 () Bool)

(declare-fun tp!271357 () Bool)

(assert (=> b!859916 (= e!566035 (and tp!271356 tp!271357))))

(declare-fun b!859917 () Bool)

(declare-fun tp!271358 () Bool)

(assert (=> b!859917 (= e!566035 tp!271358)))

(declare-fun b!859918 () Bool)

(declare-fun tp!271354 () Bool)

(declare-fun tp!271355 () Bool)

(assert (=> b!859918 (= e!566035 (and tp!271354 tp!271355))))

(declare-fun b!859915 () Bool)

(assert (=> b!859915 (= e!566035 tp_is_empty!4003)))

(assert (=> b!859641 (= tp!271251 e!566035)))

(assert (= (and b!859641 (is-ElementMatch!2172 (regex!1739 (h!14678 rules!2621)))) b!859915))

(assert (= (and b!859641 (is-Concat!3978 (regex!1739 (h!14678 rules!2621)))) b!859916))

(assert (= (and b!859641 (is-Star!2172 (regex!1739 (h!14678 rules!2621)))) b!859917))

(assert (= (and b!859641 (is-Union!2172 (regex!1739 (h!14678 rules!2621)))) b!859918))

(declare-fun b!859919 () Bool)

(declare-fun e!566036 () Bool)

(declare-fun tp!271359 () Bool)

(assert (=> b!859919 (= e!566036 (and tp_is_empty!4003 tp!271359))))

(assert (=> b!859640 (= tp!271246 e!566036)))

(assert (= (and b!859640 (is-Cons!9275 (originalCharacters!2295 (h!14677 l!5107)))) b!859919))

(declare-fun b_lambda!29077 () Bool)

(assert (= b_lambda!29071 (or (and b!859652 b_free!26159 (= (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))))) (and b!859647 b_free!26151) (and b!859914 b_free!26179 (= (toChars!2663 (transformation!1739 (rule!3162 (h!14677 (t!97466 l!5107))))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))))) (and b!859877 b_free!26175 (= (toChars!2663 (transformation!1739 (h!14678 (t!97467 rules!2621)))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))))) (and b!859643 b_free!26155 (= (toChars!2663 (transformation!1739 (h!14678 rules!2621))) (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))))) b_lambda!29077)))

(declare-fun b_lambda!29079 () Bool)

(assert (= b_lambda!29073 (or (and b!859643 b_free!26155 (= (toChars!2663 (transformation!1739 (h!14678 rules!2621))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))))) (and b!859647 b_free!26151 (= (toChars!2663 (transformation!1739 (rule!3162 separatorToken!297))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))))) (and b!859652 b_free!26159) (and b!859877 b_free!26175 (= (toChars!2663 (transformation!1739 (h!14678 (t!97467 rules!2621)))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))))) (and b!859914 b_free!26179 (= (toChars!2663 (transformation!1739 (rule!3162 (h!14677 (t!97466 l!5107))))) (toChars!2663 (transformation!1739 (rule!3162 (h!14677 l!5107)))))) b_lambda!29079)))

(declare-fun b_lambda!29081 () Bool)

(assert (= b_lambda!29075 (or b!859646 b_lambda!29081)))

(declare-fun bs!232343 () Bool)

(declare-fun d!269486 () Bool)

(assert (= bs!232343 (and d!269486 b!859646)))

(assert (=> bs!232343 (= (dynLambda!4384 lambda!25821 (h!14677 l!5107)) (not (isSeparator!1739 (rule!3162 (h!14677 l!5107)))))))

(assert (=> b!859815 d!269486))

(push 1)

(assert (not b!859782))

(assert (not b_lambda!29079))

(assert (not b!859875))

(assert (not b!859917))

(assert (not b_lambda!29077))

(assert (not b!859807))

(assert (not b!859861))

(assert b_and!76457)

(assert b_and!76501)

(assert (not b_next!26239))

(assert b_and!76497)

(assert tp_is_empty!4003)

(assert (not b!859841))

(assert (not tb!61447))

(assert b_and!76461)

(assert (not b!859816))

(assert (not b!859896))

(assert (not b!859851))

(assert (not b!859891))

(assert (not d!269472))

(assert (not b!859712))

(assert (not b!859849))

(assert (not b!859842))

(assert (not b!859837))

(assert (not b!859866))

(assert (not d!269460))

(assert (not d!269432))

(assert b_and!76499)

(assert (not b!859911))

(assert (not d!269428))

(assert (not tb!61453))

(assert (not b!859802))

(assert (not b!859808))

(assert (not b!859858))

(assert (not b!859898))

(assert (not b_next!26241))

(assert (not b!859900))

(assert (not b_next!26243))

(assert (not b!859792))

(assert (not b_next!26221))

(assert (not b!859850))

(assert (not b_lambda!29081))

(assert (not b!859801))

(assert (not b!859810))

(assert (not b_next!26217))

(assert (not b!859783))

(assert (not d!269484))

(assert (not b!859876))

(assert (not b_next!26223))

(assert (not b!859809))

(assert (not b_next!26219))

(assert (not b!859852))

(assert (not b_next!26215))

(assert (not b!859839))

(assert (not b!859822))

(assert (not b!859859))

(assert (not b!859918))

(assert (not b!859919))

(assert (not b!859916))

(assert b_and!76505)

(assert b_and!76465)

(assert (not b!859899))

(assert (not b!859913))

(assert (not d!269462))

(assert (not b!859912))

(assert (not d!269478))

(assert b_and!76495)

(assert (not d!269474))

(assert b_and!76493)

(assert (not b!859889))

(assert (not b!859857))

(assert (not b_next!26213))

(assert b_and!76503)

(assert (not b_next!26237))

(assert (not b!859890))

(assert (not b!859863))

(check-sat)

(pop 1)

(push 1)

(assert b_and!76461)

(assert b_and!76499)

(assert (not b_next!26241))

(assert (not b_next!26243))

(assert (not b_next!26221))

(assert (not b_next!26217))

(assert (not b_next!26223))

(assert (not b_next!26219))

(assert (not b_next!26215))

(assert b_and!76495)

(assert b_and!76493)

(assert (not b_next!26237))

(assert b_and!76457)

(assert b_and!76501)

(assert (not b_next!26239))

(assert b_and!76497)

(assert b_and!76505)

(assert b_and!76465)

(assert (not b_next!26213))

(assert b_and!76503)

(check-sat)

(pop 1)

