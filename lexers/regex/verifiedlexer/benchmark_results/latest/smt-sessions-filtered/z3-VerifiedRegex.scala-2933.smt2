; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172534 () Bool)

(assert start!172534)

(declare-fun b!1749188 () Bool)

(declare-fun b_free!48163 () Bool)

(declare-fun b_next!48867 () Bool)

(assert (=> b!1749188 (= b_free!48163 (not b_next!48867))))

(declare-fun tp!497547 () Bool)

(declare-fun b_and!130567 () Bool)

(assert (=> b!1749188 (= tp!497547 b_and!130567)))

(declare-fun b_free!48165 () Bool)

(declare-fun b_next!48869 () Bool)

(assert (=> b!1749188 (= b_free!48165 (not b_next!48869))))

(declare-fun tp!497548 () Bool)

(declare-fun b_and!130569 () Bool)

(assert (=> b!1749188 (= tp!497548 b_and!130569)))

(declare-fun b!1749172 () Bool)

(declare-fun b_free!48167 () Bool)

(declare-fun b_next!48871 () Bool)

(assert (=> b!1749172 (= b_free!48167 (not b_next!48871))))

(declare-fun tp!497545 () Bool)

(declare-fun b_and!130571 () Bool)

(assert (=> b!1749172 (= tp!497545 b_and!130571)))

(declare-fun b_free!48169 () Bool)

(declare-fun b_next!48873 () Bool)

(assert (=> b!1749172 (= b_free!48169 (not b_next!48873))))

(declare-fun tp!497554 () Bool)

(declare-fun b_and!130573 () Bool)

(assert (=> b!1749172 (= tp!497554 b_and!130573)))

(declare-fun b!1749178 () Bool)

(declare-fun b_free!48171 () Bool)

(declare-fun b_next!48875 () Bool)

(assert (=> b!1749178 (= b_free!48171 (not b_next!48875))))

(declare-fun tp!497556 () Bool)

(declare-fun b_and!130575 () Bool)

(assert (=> b!1749178 (= tp!497556 b_and!130575)))

(declare-fun b_free!48173 () Bool)

(declare-fun b_next!48877 () Bool)

(assert (=> b!1749178 (= b_free!48173 (not b_next!48877))))

(declare-fun tp!497546 () Bool)

(declare-fun b_and!130577 () Bool)

(assert (=> b!1749178 (= tp!497546 b_and!130577)))

(declare-fun b!1749202 () Bool)

(declare-fun e!1119383 () Bool)

(assert (=> b!1749202 (= e!1119383 true)))

(declare-fun b!1749201 () Bool)

(declare-fun e!1119382 () Bool)

(assert (=> b!1749201 (= e!1119382 e!1119383)))

(declare-fun b!1749200 () Bool)

(declare-fun e!1119381 () Bool)

(assert (=> b!1749200 (= e!1119381 e!1119382)))

(declare-fun b!1749171 () Bool)

(assert (=> b!1749171 e!1119381))

(assert (= b!1749201 b!1749202))

(assert (= b!1749200 b!1749201))

(assert (= b!1749171 b!1749200))

(declare-fun order!12049 () Int)

(declare-fun lambda!69824 () Int)

(declare-fun order!12047 () Int)

(declare-datatypes ((List!19294 0))(
  ( (Nil!19224) (Cons!19224 (h!24625 (_ BitVec 16)) (t!162673 List!19294)) )
))
(declare-datatypes ((TokenValue!3517 0))(
  ( (FloatLiteralValue!7034 (text!25064 List!19294)) (TokenValueExt!3516 (__x!12336 Int)) (Broken!17585 (value!107316 List!19294)) (Object!3586) (End!3517) (Def!3517) (Underscore!3517) (Match!3517) (Else!3517) (Error!3517) (Case!3517) (If!3517) (Extends!3517) (Abstract!3517) (Class!3517) (Val!3517) (DelimiterValue!7034 (del!3577 List!19294)) (KeywordValue!3523 (value!107317 List!19294)) (CommentValue!7034 (value!107318 List!19294)) (WhitespaceValue!7034 (value!107319 List!19294)) (IndentationValue!3517 (value!107320 List!19294)) (String!21916) (Int32!3517) (Broken!17586 (value!107321 List!19294)) (Boolean!3518) (Unit!33304) (OperatorValue!3520 (op!3577 List!19294)) (IdentifierValue!7034 (value!107322 List!19294)) (IdentifierValue!7035 (value!107323 List!19294)) (WhitespaceValue!7035 (value!107324 List!19294)) (True!7034) (False!7034) (Broken!17587 (value!107325 List!19294)) (Broken!17588 (value!107326 List!19294)) (True!7035) (RightBrace!3517) (RightBracket!3517) (Colon!3517) (Null!3517) (Comma!3517) (LeftBracket!3517) (False!7035) (LeftBrace!3517) (ImaginaryLiteralValue!3517 (text!25065 List!19294)) (StringLiteralValue!10551 (value!107327 List!19294)) (EOFValue!3517 (value!107328 List!19294)) (IdentValue!3517 (value!107329 List!19294)) (DelimiterValue!7035 (value!107330 List!19294)) (DedentValue!3517 (value!107331 List!19294)) (NewLineValue!3517 (value!107332 List!19294)) (IntegerValue!10551 (value!107333 (_ BitVec 32)) (text!25066 List!19294)) (IntegerValue!10552 (value!107334 Int) (text!25067 List!19294)) (Times!3517) (Or!3517) (Equal!3517) (Minus!3517) (Broken!17589 (value!107335 List!19294)) (And!3517) (Div!3517) (LessEqual!3517) (Mod!3517) (Concat!8272) (Not!3517) (Plus!3517) (SpaceValue!3517 (value!107336 List!19294)) (IntegerValue!10553 (value!107337 Int) (text!25068 List!19294)) (StringLiteralValue!10552 (text!25069 List!19294)) (FloatLiteralValue!7035 (text!25070 List!19294)) (BytesLiteralValue!3517 (value!107338 List!19294)) (CommentValue!7035 (value!107339 List!19294)) (StringLiteralValue!10553 (value!107340 List!19294)) (ErrorTokenValue!3517 (msg!3578 List!19294)) )
))
(declare-datatypes ((C!9684 0))(
  ( (C!9685 (val!5438 Int)) )
))
(declare-datatypes ((List!19295 0))(
  ( (Nil!19225) (Cons!19225 (h!24626 C!9684) (t!162674 List!19295)) )
))
(declare-datatypes ((Regex!4755 0))(
  ( (ElementMatch!4755 (c!285316 C!9684)) (Concat!8273 (regOne!10022 Regex!4755) (regTwo!10022 Regex!4755)) (EmptyExpr!4755) (Star!4755 (reg!5084 Regex!4755)) (EmptyLang!4755) (Union!4755 (regOne!10023 Regex!4755) (regTwo!10023 Regex!4755)) )
))
(declare-datatypes ((String!21917 0))(
  ( (String!21918 (value!107341 String)) )
))
(declare-datatypes ((IArray!12795 0))(
  ( (IArray!12796 (innerList!6455 List!19295)) )
))
(declare-datatypes ((Conc!6395 0))(
  ( (Node!6395 (left!15374 Conc!6395) (right!15704 Conc!6395) (csize!13020 Int) (cheight!6606 Int)) (Leaf!9329 (xs!9271 IArray!12795) (csize!13021 Int)) (Empty!6395) )
))
(declare-datatypes ((BalanceConc!12734 0))(
  ( (BalanceConc!12735 (c!285317 Conc!6395)) )
))
(declare-datatypes ((TokenValueInjection!6694 0))(
  ( (TokenValueInjection!6695 (toValue!4942 Int) (toChars!4801 Int)) )
))
(declare-datatypes ((Rule!6654 0))(
  ( (Rule!6655 (regex!3427 Regex!4755) (tag!3777 String!21917) (isSeparator!3427 Bool) (transformation!3427 TokenValueInjection!6694)) )
))
(declare-datatypes ((Token!6420 0))(
  ( (Token!6421 (value!107342 TokenValue!3517) (rule!5435 Rule!6654) (size!15268 Int) (originalCharacters!4241 List!19295)) )
))
(declare-datatypes ((tuple2!18866 0))(
  ( (tuple2!18867 (_1!10835 Token!6420) (_2!10835 List!19295)) )
))
(declare-fun lt!674608 () tuple2!18866)

(declare-fun dynLambda!9136 (Int Int) Int)

(declare-fun dynLambda!9137 (Int Int) Int)

(assert (=> b!1749202 (< (dynLambda!9136 order!12047 (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) (dynLambda!9137 order!12049 lambda!69824))))

(declare-fun order!12051 () Int)

(declare-fun dynLambda!9138 (Int Int) Int)

(assert (=> b!1749202 (< (dynLambda!9138 order!12051 (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) (dynLambda!9137 order!12049 lambda!69824))))

(declare-fun e!1119362 () Bool)

(declare-fun token!523 () Token!6420)

(declare-fun tp!497552 () Bool)

(declare-fun e!1119359 () Bool)

(declare-fun b!1749161 () Bool)

(declare-fun inv!24920 (String!21917) Bool)

(declare-fun inv!24925 (TokenValueInjection!6694) Bool)

(assert (=> b!1749161 (= e!1119362 (and tp!497552 (inv!24920 (tag!3777 (rule!5435 token!523))) (inv!24925 (transformation!3427 (rule!5435 token!523))) e!1119359))))

(declare-fun b!1749162 () Bool)

(declare-fun rule!422 () Rule!6654)

(declare-fun tp!497553 () Bool)

(declare-fun e!1119373 () Bool)

(declare-fun e!1119366 () Bool)

(assert (=> b!1749162 (= e!1119366 (and tp!497553 (inv!24920 (tag!3777 rule!422)) (inv!24925 (transformation!3427 rule!422)) e!1119373))))

(declare-fun b!1749163 () Bool)

(declare-fun res!786682 () Bool)

(declare-fun e!1119368 () Bool)

(assert (=> b!1749163 (=> res!786682 e!1119368)))

(declare-fun lt!674628 () List!19295)

(declare-fun matchR!2229 (Regex!4755 List!19295) Bool)

(assert (=> b!1749163 (= res!786682 (not (matchR!2229 (regex!3427 (rule!5435 (_1!10835 lt!674608))) lt!674628)))))

(declare-fun b!1749164 () Bool)

(declare-fun e!1119348 () Bool)

(assert (=> b!1749164 (= e!1119348 e!1119368)))

(declare-fun res!786672 () Bool)

(assert (=> b!1749164 (=> res!786672 e!1119368)))

(declare-fun lt!674615 () List!19295)

(declare-fun isPrefix!1668 (List!19295 List!19295) Bool)

(assert (=> b!1749164 (= res!786672 (not (isPrefix!1668 lt!674628 lt!674615)))))

(declare-fun ++!5252 (List!19295 List!19295) List!19295)

(assert (=> b!1749164 (isPrefix!1668 lt!674628 (++!5252 lt!674628 (_2!10835 lt!674608)))))

(declare-datatypes ((Unit!33305 0))(
  ( (Unit!33306) )
))
(declare-fun lt!674637 () Unit!33305)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1178 (List!19295 List!19295) Unit!33305)

(assert (=> b!1749164 (= lt!674637 (lemmaConcatTwoListThenFirstIsPrefix!1178 lt!674628 (_2!10835 lt!674608)))))

(declare-fun lt!674611 () BalanceConc!12734)

(declare-fun list!7788 (BalanceConc!12734) List!19295)

(assert (=> b!1749164 (= lt!674628 (list!7788 lt!674611))))

(declare-fun charsOf!2076 (Token!6420) BalanceConc!12734)

(assert (=> b!1749164 (= lt!674611 (charsOf!2076 (_1!10835 lt!674608)))))

(declare-fun e!1119369 () Bool)

(assert (=> b!1749164 e!1119369))

(declare-fun res!786677 () Bool)

(assert (=> b!1749164 (=> (not res!786677) (not e!1119369))))

(declare-datatypes ((Option!3878 0))(
  ( (None!3877) (Some!3877 (v!25320 Rule!6654)) )
))
(declare-fun lt!674638 () Option!3878)

(declare-fun isDefined!3221 (Option!3878) Bool)

(assert (=> b!1749164 (= res!786677 (isDefined!3221 lt!674638))))

(declare-datatypes ((LexerInterface!3056 0))(
  ( (LexerInterfaceExt!3053 (__x!12337 Int)) (Lexer!3054) )
))
(declare-fun thiss!24550 () LexerInterface!3056)

(declare-datatypes ((List!19296 0))(
  ( (Nil!19226) (Cons!19226 (h!24627 Rule!6654) (t!162675 List!19296)) )
))
(declare-fun rules!3447 () List!19296)

(declare-fun getRuleFromTag!477 (LexerInterface!3056 List!19296 String!21917) Option!3878)

(assert (=> b!1749164 (= lt!674638 (getRuleFromTag!477 thiss!24550 rules!3447 (tag!3777 (rule!5435 (_1!10835 lt!674608)))))))

(declare-fun lt!674625 () Unit!33305)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!477 (LexerInterface!3056 List!19296 List!19295 Token!6420) Unit!33305)

(assert (=> b!1749164 (= lt!674625 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!477 thiss!24550 rules!3447 lt!674615 (_1!10835 lt!674608)))))

(declare-datatypes ((Option!3879 0))(
  ( (None!3878) (Some!3878 (v!25321 tuple2!18866)) )
))
(declare-fun lt!674612 () Option!3879)

(declare-fun get!5809 (Option!3879) tuple2!18866)

(assert (=> b!1749164 (= lt!674608 (get!5809 lt!674612))))

(declare-fun suffix!1421 () List!19295)

(declare-fun lt!674619 () Unit!33305)

(declare-fun lt!674636 () List!19295)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!580 (LexerInterface!3056 List!19296 List!19295 List!19295) Unit!33305)

(assert (=> b!1749164 (= lt!674619 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!580 thiss!24550 rules!3447 lt!674636 suffix!1421))))

(declare-fun maxPrefix!1610 (LexerInterface!3056 List!19296 List!19295) Option!3879)

(assert (=> b!1749164 (= lt!674612 (maxPrefix!1610 thiss!24550 rules!3447 lt!674615))))

(assert (=> b!1749164 (isPrefix!1668 lt!674636 lt!674615)))

(declare-fun lt!674613 () Unit!33305)

(assert (=> b!1749164 (= lt!674613 (lemmaConcatTwoListThenFirstIsPrefix!1178 lt!674636 suffix!1421))))

(assert (=> b!1749164 (= lt!674615 (++!5252 lt!674636 suffix!1421))))

(declare-fun b!1749165 () Bool)

(declare-fun res!786678 () Bool)

(declare-fun e!1119349 () Bool)

(assert (=> b!1749165 (=> res!786678 e!1119349)))

(declare-fun dynLambda!9139 (Int TokenValue!3517) BalanceConc!12734)

(assert (=> b!1749165 (= res!786678 (not (= lt!674611 (dynLambda!9139 (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) (value!107342 (_1!10835 lt!674608))))))))

(declare-fun b!1749166 () Bool)

(declare-fun res!786666 () Bool)

(declare-fun e!1119361 () Bool)

(assert (=> b!1749166 (=> (not res!786666) (not e!1119361))))

(assert (=> b!1749166 (= res!786666 (= (rule!5435 token!523) rule!422))))

(declare-fun b!1749167 () Bool)

(declare-fun e!1119352 () Bool)

(assert (=> b!1749167 (= e!1119361 (not e!1119352))))

(declare-fun res!786667 () Bool)

(assert (=> b!1749167 (=> res!786667 e!1119352)))

(assert (=> b!1749167 (= res!786667 (not (matchR!2229 (regex!3427 rule!422) lt!674636)))))

(declare-fun ruleValid!926 (LexerInterface!3056 Rule!6654) Bool)

(assert (=> b!1749167 (ruleValid!926 thiss!24550 rule!422)))

(declare-fun lt!674633 () Unit!33305)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!450 (LexerInterface!3056 Rule!6654 List!19296) Unit!33305)

(assert (=> b!1749167 (= lt!674633 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!450 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1749168 () Bool)

(declare-fun e!1119374 () Bool)

(declare-fun e!1119358 () Bool)

(assert (=> b!1749168 (= e!1119374 e!1119358)))

(declare-fun res!786681 () Bool)

(assert (=> b!1749168 (=> (not res!786681) (not e!1119358))))

(declare-fun lt!674605 () Option!3879)

(declare-fun isDefined!3222 (Option!3879) Bool)

(assert (=> b!1749168 (= res!786681 (isDefined!3222 lt!674605))))

(assert (=> b!1749168 (= lt!674605 (maxPrefix!1610 thiss!24550 rules!3447 lt!674636))))

(declare-fun lt!674621 () BalanceConc!12734)

(assert (=> b!1749168 (= lt!674636 (list!7788 lt!674621))))

(assert (=> b!1749168 (= lt!674621 (charsOf!2076 token!523))))

(declare-fun b!1749169 () Bool)

(declare-fun e!1119355 () Bool)

(declare-fun e!1119356 () Bool)

(assert (=> b!1749169 (= e!1119355 e!1119356)))

(declare-fun res!786675 () Bool)

(assert (=> b!1749169 (=> res!786675 e!1119356)))

(declare-fun lt!674627 () Int)

(declare-fun size!15269 (BalanceConc!12734) Int)

(assert (=> b!1749169 (= res!786675 (<= lt!674627 (size!15269 lt!674621)))))

(declare-fun lt!674629 () Regex!4755)

(assert (=> b!1749169 (matchR!2229 lt!674629 lt!674636)))

(declare-fun lt!674634 () Unit!33305)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!158 (LexerInterface!3056 List!19296 List!19295 Token!6420 Rule!6654 List!19295) Unit!33305)

(assert (=> b!1749169 (= lt!674634 (lemmaMaxPrefixThenMatchesRulesRegex!158 thiss!24550 rules!3447 lt!674636 token!523 rule!422 Nil!19225))))

(declare-fun b!1749170 () Bool)

(declare-fun res!786665 () Bool)

(assert (=> b!1749170 (=> (not res!786665) (not e!1119374))))

(declare-fun contains!3453 (List!19296 Rule!6654) Bool)

(assert (=> b!1749170 (= res!786665 (contains!3453 rules!3447 rule!422))))

(declare-fun e!1119365 () Bool)

(assert (=> b!1749171 (= e!1119368 e!1119365)))

(declare-fun res!786680 () Bool)

(assert (=> b!1749171 (=> res!786680 e!1119365)))

(declare-fun Forall!796 (Int) Bool)

(assert (=> b!1749171 (= res!786680 (not (Forall!796 lambda!69824)))))

(declare-fun lt!674609 () Unit!33305)

(declare-fun lemmaInv!628 (TokenValueInjection!6694) Unit!33305)

(assert (=> b!1749171 (= lt!674609 (lemmaInv!628 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))))))

(assert (=> b!1749172 (= e!1119359 (and tp!497545 tp!497554))))

(declare-fun b!1749173 () Bool)

(declare-fun e!1119363 () Bool)

(assert (=> b!1749173 (= e!1119349 e!1119363)))

(declare-fun res!786664 () Bool)

(assert (=> b!1749173 (=> res!786664 e!1119363)))

(declare-fun lt!674607 () TokenValue!3517)

(assert (=> b!1749173 (= res!786664 (not (= lt!674612 (Some!3878 (tuple2!18867 (Token!6421 lt!674607 (rule!5435 (_1!10835 lt!674608)) lt!674627 lt!674628) (_2!10835 lt!674608))))))))

(assert (=> b!1749173 (= lt!674627 (size!15269 lt!674611))))

(declare-fun apply!5228 (TokenValueInjection!6694 BalanceConc!12734) TokenValue!3517)

(assert (=> b!1749173 (= lt!674607 (apply!5228 (transformation!3427 (rule!5435 (_1!10835 lt!674608))) lt!674611))))

(declare-fun lt!674635 () Unit!33305)

(declare-fun lemmaCharactersSize!487 (Token!6420) Unit!33305)

(assert (=> b!1749173 (= lt!674635 (lemmaCharactersSize!487 (_1!10835 lt!674608)))))

(declare-fun lt!674624 () Unit!33305)

(declare-fun lemmaEqSameImage!340 (TokenValueInjection!6694 BalanceConc!12734 BalanceConc!12734) Unit!33305)

(declare-fun seqFromList!2397 (List!19295) BalanceConc!12734)

(assert (=> b!1749173 (= lt!674624 (lemmaEqSameImage!340 (transformation!3427 (rule!5435 (_1!10835 lt!674608))) lt!674611 (seqFromList!2397 (originalCharacters!4241 (_1!10835 lt!674608)))))))

(declare-fun b!1749174 () Bool)

(declare-fun res!786683 () Bool)

(assert (=> b!1749174 (=> (not res!786683) (not e!1119374))))

(declare-fun isEmpty!12115 (List!19296) Bool)

(assert (=> b!1749174 (= res!786683 (not (isEmpty!12115 rules!3447)))))

(declare-fun tp!497555 () Bool)

(declare-fun b!1749175 () Bool)

(declare-fun e!1119357 () Bool)

(declare-fun inv!21 (TokenValue!3517) Bool)

(assert (=> b!1749175 (= e!1119357 (and (inv!21 (value!107342 token!523)) e!1119362 tp!497555))))

(declare-fun b!1749176 () Bool)

(assert (=> b!1749176 (= e!1119365 e!1119349)))

(declare-fun res!786684 () Bool)

(assert (=> b!1749176 (=> res!786684 e!1119349)))

(declare-fun dynLambda!9140 (Int BalanceConc!12734) TokenValue!3517)

(assert (=> b!1749176 (= res!786684 (not (= (list!7788 (dynLambda!9139 (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) (dynLambda!9140 (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) lt!674611))) lt!674628)))))

(declare-fun lt!674620 () Unit!33305)

(declare-fun lemmaSemiInverse!567 (TokenValueInjection!6694 BalanceConc!12734) Unit!33305)

(assert (=> b!1749176 (= lt!674620 (lemmaSemiInverse!567 (transformation!3427 (rule!5435 (_1!10835 lt!674608))) lt!674611))))

(declare-fun b!1749177 () Bool)

(declare-fun e!1119350 () Bool)

(assert (=> b!1749177 (= e!1119356 e!1119350)))

(declare-fun res!786663 () Bool)

(assert (=> b!1749177 (=> res!786663 e!1119350)))

(declare-fun lt!674630 () List!19295)

(assert (=> b!1749177 (= res!786663 (not (= lt!674630 suffix!1421)))))

(assert (=> b!1749177 (= suffix!1421 lt!674630)))

(declare-fun lt!674631 () Unit!33305)

(declare-fun lemmaSamePrefixThenSameSuffix!798 (List!19295 List!19295 List!19295 List!19295 List!19295) Unit!33305)

(assert (=> b!1749177 (= lt!674631 (lemmaSamePrefixThenSameSuffix!798 lt!674636 suffix!1421 lt!674636 lt!674630 lt!674615))))

(declare-fun getSuffix!848 (List!19295 List!19295) List!19295)

(assert (=> b!1749177 (= lt!674630 (getSuffix!848 lt!674615 lt!674636))))

(assert (=> b!1749177 (matchR!2229 lt!674629 lt!674628)))

(declare-fun lt!674604 () Unit!33305)

(assert (=> b!1749177 (= lt!674604 (lemmaMaxPrefixThenMatchesRulesRegex!158 thiss!24550 rules!3447 lt!674615 (_1!10835 lt!674608) (rule!5435 (_1!10835 lt!674608)) (_2!10835 lt!674608)))))

(assert (=> b!1749178 (= e!1119373 (and tp!497556 tp!497546))))

(declare-fun b!1749179 () Bool)

(assert (=> b!1749179 (= e!1119363 e!1119355)))

(declare-fun res!786679 () Bool)

(assert (=> b!1749179 (=> res!786679 e!1119355)))

(declare-fun lt!674610 () Option!3879)

(declare-fun lt!674606 () List!19295)

(assert (=> b!1749179 (= res!786679 (or (not (= lt!674606 (_2!10835 lt!674608))) (not (= lt!674610 (Some!3878 (tuple2!18867 (_1!10835 lt!674608) lt!674606))))))))

(assert (=> b!1749179 (= (_2!10835 lt!674608) lt!674606)))

(declare-fun lt!674617 () Unit!33305)

(assert (=> b!1749179 (= lt!674617 (lemmaSamePrefixThenSameSuffix!798 lt!674628 (_2!10835 lt!674608) lt!674628 lt!674606 lt!674615))))

(assert (=> b!1749179 (= lt!674606 (getSuffix!848 lt!674615 lt!674628))))

(declare-fun lt!674622 () TokenValue!3517)

(declare-fun lt!674623 () Int)

(assert (=> b!1749179 (= lt!674610 (Some!3878 (tuple2!18867 (Token!6421 lt!674622 (rule!5435 (_1!10835 lt!674608)) lt!674623 lt!674628) (_2!10835 lt!674608))))))

(declare-fun maxPrefixOneRule!982 (LexerInterface!3056 Rule!6654 List!19295) Option!3879)

(assert (=> b!1749179 (= lt!674610 (maxPrefixOneRule!982 thiss!24550 (rule!5435 (_1!10835 lt!674608)) lt!674615))))

(declare-fun size!15270 (List!19295) Int)

(assert (=> b!1749179 (= lt!674623 (size!15270 lt!674628))))

(assert (=> b!1749179 (= lt!674622 (apply!5228 (transformation!3427 (rule!5435 (_1!10835 lt!674608))) (seqFromList!2397 lt!674628)))))

(declare-fun lt!674614 () Unit!33305)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!371 (LexerInterface!3056 List!19296 List!19295 List!19295 List!19295 Rule!6654) Unit!33305)

(assert (=> b!1749179 (= lt!674614 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!371 thiss!24550 rules!3447 lt!674628 lt!674615 (_2!10835 lt!674608) (rule!5435 (_1!10835 lt!674608))))))

(declare-fun res!786670 () Bool)

(assert (=> start!172534 (=> (not res!786670) (not e!1119374))))

(get-info :version)

(assert (=> start!172534 (= res!786670 ((_ is Lexer!3054) thiss!24550))))

(assert (=> start!172534 e!1119374))

(declare-fun e!1119364 () Bool)

(assert (=> start!172534 e!1119364))

(assert (=> start!172534 e!1119366))

(assert (=> start!172534 true))

(declare-fun inv!24926 (Token!6420) Bool)

(assert (=> start!172534 (and (inv!24926 token!523) e!1119357)))

(declare-fun e!1119370 () Bool)

(assert (=> start!172534 e!1119370))

(declare-fun b!1749180 () Bool)

(declare-fun e!1119371 () Bool)

(declare-fun lt!674618 () Rule!6654)

(assert (=> b!1749180 (= e!1119371 (= (rule!5435 (_1!10835 lt!674608)) lt!674618))))

(declare-fun b!1749181 () Bool)

(declare-fun e!1119367 () Bool)

(declare-fun tp!497549 () Bool)

(assert (=> b!1749181 (= e!1119370 (and e!1119367 tp!497549))))

(declare-fun b!1749182 () Bool)

(declare-fun res!786668 () Bool)

(assert (=> b!1749182 (=> (not res!786668) (not e!1119374))))

(declare-fun rulesInvariant!2725 (LexerInterface!3056 List!19296) Bool)

(assert (=> b!1749182 (= res!786668 (rulesInvariant!2725 thiss!24550 rules!3447))))

(declare-fun b!1749183 () Bool)

(declare-fun tp_is_empty!7753 () Bool)

(declare-fun tp!497551 () Bool)

(assert (=> b!1749183 (= e!1119364 (and tp_is_empty!7753 tp!497551))))

(declare-fun b!1749184 () Bool)

(assert (=> b!1749184 (= e!1119352 e!1119348)))

(declare-fun res!786673 () Bool)

(assert (=> b!1749184 (=> res!786673 e!1119348)))

(declare-fun lt!674632 () List!19295)

(declare-fun prefixMatch!640 (Regex!4755 List!19295) Bool)

(assert (=> b!1749184 (= res!786673 (prefixMatch!640 lt!674629 lt!674632))))

(declare-fun head!4024 (List!19295) C!9684)

(assert (=> b!1749184 (= lt!674632 (++!5252 lt!674636 (Cons!19225 (head!4024 suffix!1421) Nil!19225)))))

(declare-fun rulesRegex!785 (LexerInterface!3056 List!19296) Regex!4755)

(assert (=> b!1749184 (= lt!674629 (rulesRegex!785 thiss!24550 rules!3447))))

(declare-fun tp!497550 () Bool)

(declare-fun e!1119351 () Bool)

(declare-fun b!1749185 () Bool)

(assert (=> b!1749185 (= e!1119367 (and tp!497550 (inv!24920 (tag!3777 (h!24627 rules!3447))) (inv!24925 (transformation!3427 (h!24627 rules!3447))) e!1119351))))

(declare-fun b!1749186 () Bool)

(declare-fun res!786676 () Bool)

(assert (=> b!1749186 (=> res!786676 e!1119352)))

(declare-fun isEmpty!12116 (List!19295) Bool)

(assert (=> b!1749186 (= res!786676 (isEmpty!12116 suffix!1421))))

(declare-fun b!1749187 () Bool)

(assert (=> b!1749187 (= e!1119350 (isPrefix!1668 lt!674632 lt!674615))))

(assert (=> b!1749187 (isPrefix!1668 (++!5252 lt!674636 (Cons!19225 (head!4024 lt!674630) Nil!19225)) lt!674615)))

(declare-fun lt!674626 () Unit!33305)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!243 (List!19295 List!19295) Unit!33305)

(assert (=> b!1749187 (= lt!674626 (lemmaAddHeadSuffixToPrefixStillPrefix!243 lt!674636 lt!674615))))

(assert (=> b!1749188 (= e!1119351 (and tp!497547 tp!497548))))

(declare-fun b!1749189 () Bool)

(assert (=> b!1749189 (= e!1119369 e!1119371)))

(declare-fun res!786674 () Bool)

(assert (=> b!1749189 (=> (not res!786674) (not e!1119371))))

(assert (=> b!1749189 (= res!786674 (matchR!2229 (regex!3427 lt!674618) (list!7788 (charsOf!2076 (_1!10835 lt!674608)))))))

(declare-fun get!5810 (Option!3878) Rule!6654)

(assert (=> b!1749189 (= lt!674618 (get!5810 lt!674638))))

(declare-fun b!1749190 () Bool)

(assert (=> b!1749190 (= e!1119358 e!1119361)))

(declare-fun res!786669 () Bool)

(assert (=> b!1749190 (=> (not res!786669) (not e!1119361))))

(declare-fun lt!674616 () tuple2!18866)

(assert (=> b!1749190 (= res!786669 (= (_1!10835 lt!674616) token!523))))

(assert (=> b!1749190 (= lt!674616 (get!5809 lt!674605))))

(declare-fun b!1749191 () Bool)

(declare-fun res!786671 () Bool)

(assert (=> b!1749191 (=> (not res!786671) (not e!1119361))))

(assert (=> b!1749191 (= res!786671 (isEmpty!12116 (_2!10835 lt!674616)))))

(assert (= (and start!172534 res!786670) b!1749174))

(assert (= (and b!1749174 res!786683) b!1749182))

(assert (= (and b!1749182 res!786668) b!1749170))

(assert (= (and b!1749170 res!786665) b!1749168))

(assert (= (and b!1749168 res!786681) b!1749190))

(assert (= (and b!1749190 res!786669) b!1749191))

(assert (= (and b!1749191 res!786671) b!1749166))

(assert (= (and b!1749166 res!786666) b!1749167))

(assert (= (and b!1749167 (not res!786667)) b!1749186))

(assert (= (and b!1749186 (not res!786676)) b!1749184))

(assert (= (and b!1749184 (not res!786673)) b!1749164))

(assert (= (and b!1749164 res!786677) b!1749189))

(assert (= (and b!1749189 res!786674) b!1749180))

(assert (= (and b!1749164 (not res!786672)) b!1749163))

(assert (= (and b!1749163 (not res!786682)) b!1749171))

(assert (= (and b!1749171 (not res!786680)) b!1749176))

(assert (= (and b!1749176 (not res!786684)) b!1749165))

(assert (= (and b!1749165 (not res!786678)) b!1749173))

(assert (= (and b!1749173 (not res!786664)) b!1749179))

(assert (= (and b!1749179 (not res!786679)) b!1749169))

(assert (= (and b!1749169 (not res!786675)) b!1749177))

(assert (= (and b!1749177 (not res!786663)) b!1749187))

(assert (= (and start!172534 ((_ is Cons!19225) suffix!1421)) b!1749183))

(assert (= b!1749162 b!1749178))

(assert (= start!172534 b!1749162))

(assert (= b!1749161 b!1749172))

(assert (= b!1749175 b!1749161))

(assert (= start!172534 b!1749175))

(assert (= b!1749185 b!1749188))

(assert (= b!1749181 b!1749185))

(assert (= (and start!172534 ((_ is Cons!19226) rules!3447)) b!1749181))

(declare-fun b_lambda!56191 () Bool)

(assert (=> (not b_lambda!56191) (not b!1749165)))

(declare-fun tb!104789 () Bool)

(declare-fun t!162656 () Bool)

(assert (=> (and b!1749188 (= (toChars!4801 (transformation!3427 (h!24627 rules!3447))) (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162656) tb!104789))

(declare-fun b!1749207 () Bool)

(declare-fun e!1119386 () Bool)

(declare-fun tp!497559 () Bool)

(declare-fun inv!24927 (Conc!6395) Bool)

(assert (=> b!1749207 (= e!1119386 (and (inv!24927 (c!285317 (dynLambda!9139 (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) (value!107342 (_1!10835 lt!674608))))) tp!497559))))

(declare-fun result!126048 () Bool)

(declare-fun inv!24928 (BalanceConc!12734) Bool)

(assert (=> tb!104789 (= result!126048 (and (inv!24928 (dynLambda!9139 (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) (value!107342 (_1!10835 lt!674608)))) e!1119386))))

(assert (= tb!104789 b!1749207))

(declare-fun m!2162129 () Bool)

(assert (=> b!1749207 m!2162129))

(declare-fun m!2162131 () Bool)

(assert (=> tb!104789 m!2162131))

(assert (=> b!1749165 t!162656))

(declare-fun b_and!130579 () Bool)

(assert (= b_and!130569 (and (=> t!162656 result!126048) b_and!130579)))

(declare-fun tb!104791 () Bool)

(declare-fun t!162658 () Bool)

(assert (=> (and b!1749172 (= (toChars!4801 (transformation!3427 (rule!5435 token!523))) (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162658) tb!104791))

(declare-fun result!126052 () Bool)

(assert (= result!126052 result!126048))

(assert (=> b!1749165 t!162658))

(declare-fun b_and!130581 () Bool)

(assert (= b_and!130573 (and (=> t!162658 result!126052) b_and!130581)))

(declare-fun tb!104793 () Bool)

(declare-fun t!162660 () Bool)

(assert (=> (and b!1749178 (= (toChars!4801 (transformation!3427 rule!422)) (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162660) tb!104793))

(declare-fun result!126054 () Bool)

(assert (= result!126054 result!126048))

(assert (=> b!1749165 t!162660))

(declare-fun b_and!130583 () Bool)

(assert (= b_and!130577 (and (=> t!162660 result!126054) b_and!130583)))

(declare-fun b_lambda!56193 () Bool)

(assert (=> (not b_lambda!56193) (not b!1749176)))

(declare-fun tb!104795 () Bool)

(declare-fun t!162662 () Bool)

(assert (=> (and b!1749188 (= (toChars!4801 (transformation!3427 (h!24627 rules!3447))) (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162662) tb!104795))

(declare-fun b!1749208 () Bool)

(declare-fun tp!497560 () Bool)

(declare-fun e!1119387 () Bool)

(assert (=> b!1749208 (= e!1119387 (and (inv!24927 (c!285317 (dynLambda!9139 (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) (dynLambda!9140 (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) lt!674611)))) tp!497560))))

(declare-fun result!126056 () Bool)

(assert (=> tb!104795 (= result!126056 (and (inv!24928 (dynLambda!9139 (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) (dynLambda!9140 (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) lt!674611))) e!1119387))))

(assert (= tb!104795 b!1749208))

(declare-fun m!2162133 () Bool)

(assert (=> b!1749208 m!2162133))

(declare-fun m!2162135 () Bool)

(assert (=> tb!104795 m!2162135))

(assert (=> b!1749176 t!162662))

(declare-fun b_and!130585 () Bool)

(assert (= b_and!130579 (and (=> t!162662 result!126056) b_and!130585)))

(declare-fun tb!104797 () Bool)

(declare-fun t!162664 () Bool)

(assert (=> (and b!1749172 (= (toChars!4801 (transformation!3427 (rule!5435 token!523))) (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162664) tb!104797))

(declare-fun result!126058 () Bool)

(assert (= result!126058 result!126056))

(assert (=> b!1749176 t!162664))

(declare-fun b_and!130587 () Bool)

(assert (= b_and!130581 (and (=> t!162664 result!126058) b_and!130587)))

(declare-fun t!162666 () Bool)

(declare-fun tb!104799 () Bool)

(assert (=> (and b!1749178 (= (toChars!4801 (transformation!3427 rule!422)) (toChars!4801 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162666) tb!104799))

(declare-fun result!126060 () Bool)

(assert (= result!126060 result!126056))

(assert (=> b!1749176 t!162666))

(declare-fun b_and!130589 () Bool)

(assert (= b_and!130583 (and (=> t!162666 result!126060) b_and!130589)))

(declare-fun b_lambda!56195 () Bool)

(assert (=> (not b_lambda!56195) (not b!1749176)))

(declare-fun tb!104801 () Bool)

(declare-fun t!162668 () Bool)

(assert (=> (and b!1749188 (= (toValue!4942 (transformation!3427 (h!24627 rules!3447))) (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162668) tb!104801))

(declare-fun result!126062 () Bool)

(assert (=> tb!104801 (= result!126062 (inv!21 (dynLambda!9140 (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608)))) lt!674611)))))

(declare-fun m!2162137 () Bool)

(assert (=> tb!104801 m!2162137))

(assert (=> b!1749176 t!162668))

(declare-fun b_and!130591 () Bool)

(assert (= b_and!130567 (and (=> t!162668 result!126062) b_and!130591)))

(declare-fun t!162670 () Bool)

(declare-fun tb!104803 () Bool)

(assert (=> (and b!1749172 (= (toValue!4942 (transformation!3427 (rule!5435 token!523))) (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162670) tb!104803))

(declare-fun result!126066 () Bool)

(assert (= result!126066 result!126062))

(assert (=> b!1749176 t!162670))

(declare-fun b_and!130593 () Bool)

(assert (= b_and!130571 (and (=> t!162670 result!126066) b_and!130593)))

(declare-fun tb!104805 () Bool)

(declare-fun t!162672 () Bool)

(assert (=> (and b!1749178 (= (toValue!4942 (transformation!3427 rule!422)) (toValue!4942 (transformation!3427 (rule!5435 (_1!10835 lt!674608))))) t!162672) tb!104805))

(declare-fun result!126068 () Bool)

(assert (= result!126068 result!126062))

(assert (=> b!1749176 t!162672))

(declare-fun b_and!130595 () Bool)

(assert (= b_and!130575 (and (=> t!162672 result!126068) b_and!130595)))

(declare-fun m!2162139 () Bool)

(assert (=> b!1749162 m!2162139))

(declare-fun m!2162141 () Bool)

(assert (=> b!1749162 m!2162141))

(declare-fun m!2162143 () Bool)

(assert (=> b!1749187 m!2162143))

(declare-fun m!2162145 () Bool)

(assert (=> b!1749187 m!2162145))

(assert (=> b!1749187 m!2162145))

(declare-fun m!2162147 () Bool)

(assert (=> b!1749187 m!2162147))

(declare-fun m!2162149 () Bool)

(assert (=> b!1749187 m!2162149))

(declare-fun m!2162151 () Bool)

(assert (=> b!1749187 m!2162151))

(declare-fun m!2162153 () Bool)

(assert (=> b!1749190 m!2162153))

(declare-fun m!2162155 () Bool)

(assert (=> b!1749171 m!2162155))

(declare-fun m!2162157 () Bool)

(assert (=> b!1749171 m!2162157))

(declare-fun m!2162159 () Bool)

(assert (=> b!1749182 m!2162159))

(declare-fun m!2162161 () Bool)

(assert (=> b!1749167 m!2162161))

(declare-fun m!2162163 () Bool)

(assert (=> b!1749167 m!2162163))

(declare-fun m!2162165 () Bool)

(assert (=> b!1749167 m!2162165))

(declare-fun m!2162167 () Bool)

(assert (=> b!1749174 m!2162167))

(declare-fun m!2162169 () Bool)

(assert (=> b!1749179 m!2162169))

(declare-fun m!2162171 () Bool)

(assert (=> b!1749179 m!2162171))

(declare-fun m!2162173 () Bool)

(assert (=> b!1749179 m!2162173))

(assert (=> b!1749179 m!2162171))

(declare-fun m!2162175 () Bool)

(assert (=> b!1749179 m!2162175))

(declare-fun m!2162177 () Bool)

(assert (=> b!1749179 m!2162177))

(declare-fun m!2162179 () Bool)

(assert (=> b!1749179 m!2162179))

(declare-fun m!2162181 () Bool)

(assert (=> b!1749179 m!2162181))

(declare-fun m!2162183 () Bool)

(assert (=> b!1749184 m!2162183))

(declare-fun m!2162185 () Bool)

(assert (=> b!1749184 m!2162185))

(declare-fun m!2162187 () Bool)

(assert (=> b!1749184 m!2162187))

(declare-fun m!2162189 () Bool)

(assert (=> b!1749184 m!2162189))

(declare-fun m!2162191 () Bool)

(assert (=> b!1749161 m!2162191))

(declare-fun m!2162193 () Bool)

(assert (=> b!1749161 m!2162193))

(declare-fun m!2162195 () Bool)

(assert (=> b!1749163 m!2162195))

(declare-fun m!2162197 () Bool)

(assert (=> b!1749185 m!2162197))

(declare-fun m!2162199 () Bool)

(assert (=> b!1749185 m!2162199))

(declare-fun m!2162201 () Bool)

(assert (=> b!1749173 m!2162201))

(declare-fun m!2162203 () Bool)

(assert (=> b!1749173 m!2162203))

(declare-fun m!2162205 () Bool)

(assert (=> b!1749173 m!2162205))

(declare-fun m!2162207 () Bool)

(assert (=> b!1749173 m!2162207))

(assert (=> b!1749173 m!2162205))

(declare-fun m!2162209 () Bool)

(assert (=> b!1749173 m!2162209))

(declare-fun m!2162211 () Bool)

(assert (=> b!1749164 m!2162211))

(declare-fun m!2162213 () Bool)

(assert (=> b!1749164 m!2162213))

(declare-fun m!2162215 () Bool)

(assert (=> b!1749164 m!2162215))

(declare-fun m!2162217 () Bool)

(assert (=> b!1749164 m!2162217))

(declare-fun m!2162219 () Bool)

(assert (=> b!1749164 m!2162219))

(declare-fun m!2162221 () Bool)

(assert (=> b!1749164 m!2162221))

(declare-fun m!2162223 () Bool)

(assert (=> b!1749164 m!2162223))

(declare-fun m!2162225 () Bool)

(assert (=> b!1749164 m!2162225))

(declare-fun m!2162227 () Bool)

(assert (=> b!1749164 m!2162227))

(declare-fun m!2162229 () Bool)

(assert (=> b!1749164 m!2162229))

(declare-fun m!2162231 () Bool)

(assert (=> b!1749164 m!2162231))

(declare-fun m!2162233 () Bool)

(assert (=> b!1749164 m!2162233))

(assert (=> b!1749164 m!2162217))

(declare-fun m!2162235 () Bool)

(assert (=> b!1749164 m!2162235))

(declare-fun m!2162237 () Bool)

(assert (=> b!1749164 m!2162237))

(declare-fun m!2162239 () Bool)

(assert (=> b!1749164 m!2162239))

(declare-fun m!2162241 () Bool)

(assert (=> b!1749165 m!2162241))

(declare-fun m!2162243 () Bool)

(assert (=> b!1749175 m!2162243))

(declare-fun m!2162245 () Bool)

(assert (=> b!1749191 m!2162245))

(declare-fun m!2162247 () Bool)

(assert (=> start!172534 m!2162247))

(assert (=> b!1749189 m!2162213))

(assert (=> b!1749189 m!2162213))

(declare-fun m!2162249 () Bool)

(assert (=> b!1749189 m!2162249))

(assert (=> b!1749189 m!2162249))

(declare-fun m!2162251 () Bool)

(assert (=> b!1749189 m!2162251))

(declare-fun m!2162253 () Bool)

(assert (=> b!1749189 m!2162253))

(declare-fun m!2162255 () Bool)

(assert (=> b!1749168 m!2162255))

(declare-fun m!2162257 () Bool)

(assert (=> b!1749168 m!2162257))

(declare-fun m!2162259 () Bool)

(assert (=> b!1749168 m!2162259))

(declare-fun m!2162261 () Bool)

(assert (=> b!1749168 m!2162261))

(declare-fun m!2162263 () Bool)

(assert (=> b!1749170 m!2162263))

(declare-fun m!2162265 () Bool)

(assert (=> b!1749169 m!2162265))

(declare-fun m!2162267 () Bool)

(assert (=> b!1749169 m!2162267))

(declare-fun m!2162269 () Bool)

(assert (=> b!1749169 m!2162269))

(declare-fun m!2162271 () Bool)

(assert (=> b!1749176 m!2162271))

(assert (=> b!1749176 m!2162271))

(declare-fun m!2162273 () Bool)

(assert (=> b!1749176 m!2162273))

(assert (=> b!1749176 m!2162273))

(declare-fun m!2162275 () Bool)

(assert (=> b!1749176 m!2162275))

(declare-fun m!2162277 () Bool)

(assert (=> b!1749176 m!2162277))

(declare-fun m!2162279 () Bool)

(assert (=> b!1749186 m!2162279))

(declare-fun m!2162281 () Bool)

(assert (=> b!1749177 m!2162281))

(declare-fun m!2162283 () Bool)

(assert (=> b!1749177 m!2162283))

(declare-fun m!2162285 () Bool)

(assert (=> b!1749177 m!2162285))

(declare-fun m!2162287 () Bool)

(assert (=> b!1749177 m!2162287))

(check-sat (not tb!104795) (not b!1749176) (not b!1749189) (not tb!104801) (not tb!104789) b_and!130585 (not b_next!48875) (not b!1749164) b_and!130595 tp_is_empty!7753 b_and!130589 (not b!1749207) (not b!1749167) (not b!1749185) (not b!1749175) (not b_next!48871) (not b!1749190) (not b!1749162) b_and!130593 (not b!1749170) (not start!172534) (not b!1749171) (not b!1749173) (not b_next!48873) (not b!1749169) (not b!1749181) (not b!1749186) (not b_next!48877) b_and!130587 (not b!1749182) (not b!1749179) (not b!1749183) (not b!1749161) (not b!1749177) (not b!1749168) (not b_next!48869) (not b!1749174) (not b_lambda!56193) (not b!1749191) b_and!130591 (not b!1749187) (not b!1749208) (not b!1749184) (not b!1749163) (not b_lambda!56195) (not b_lambda!56191) (not b_next!48867))
(check-sat (not b_next!48871) b_and!130593 (not b_next!48873) (not b_next!48869) b_and!130585 (not b_next!48875) b_and!130591 b_and!130595 b_and!130589 (not b_next!48867) (not b_next!48877) b_and!130587)
