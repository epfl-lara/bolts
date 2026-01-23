; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191644 () Bool)

(assert start!191644)

(declare-fun b!1910396 () Bool)

(declare-fun b_free!53881 () Bool)

(declare-fun b_next!54585 () Bool)

(assert (=> b!1910396 (= b_free!53881 (not b_next!54585))))

(declare-fun tp!545297 () Bool)

(declare-fun b_and!148799 () Bool)

(assert (=> b!1910396 (= tp!545297 b_and!148799)))

(declare-fun b_free!53883 () Bool)

(declare-fun b_next!54587 () Bool)

(assert (=> b!1910396 (= b_free!53883 (not b_next!54587))))

(declare-fun tp!545303 () Bool)

(declare-fun b_and!148801 () Bool)

(assert (=> b!1910396 (= tp!545303 b_and!148801)))

(declare-fun b!1910394 () Bool)

(declare-fun b_free!53885 () Bool)

(declare-fun b_next!54589 () Bool)

(assert (=> b!1910394 (= b_free!53885 (not b_next!54589))))

(declare-fun tp!545300 () Bool)

(declare-fun b_and!148803 () Bool)

(assert (=> b!1910394 (= tp!545300 b_and!148803)))

(declare-fun b_free!53887 () Bool)

(declare-fun b_next!54591 () Bool)

(assert (=> b!1910394 (= b_free!53887 (not b_next!54591))))

(declare-fun tp!545301 () Bool)

(declare-fun b_and!148805 () Bool)

(assert (=> b!1910394 (= tp!545301 b_and!148805)))

(declare-fun b!1910395 () Bool)

(declare-fun b_free!53889 () Bool)

(declare-fun b_next!54593 () Bool)

(assert (=> b!1910395 (= b_free!53889 (not b_next!54593))))

(declare-fun tp!545292 () Bool)

(declare-fun b_and!148807 () Bool)

(assert (=> b!1910395 (= tp!545292 b_and!148807)))

(declare-fun b_free!53891 () Bool)

(declare-fun b_next!54595 () Bool)

(assert (=> b!1910395 (= b_free!53891 (not b_next!54595))))

(declare-fun tp!545295 () Bool)

(declare-fun b_and!148809 () Bool)

(assert (=> b!1910395 (= tp!545295 b_and!148809)))

(declare-fun b!1910369 () Bool)

(declare-fun res!853037 () Bool)

(declare-fun e!1220284 () Bool)

(assert (=> b!1910369 (=> (not res!853037) (not e!1220284))))

(declare-datatypes ((List!21606 0))(
  ( (Nil!21524) (Cons!21524 (h!26925 (_ BitVec 16)) (t!178063 List!21606)) )
))
(declare-datatypes ((TokenValue!3972 0))(
  ( (FloatLiteralValue!7944 (text!28249 List!21606)) (TokenValueExt!3971 (__x!13442 Int)) (Broken!19860 (value!120891 List!21606)) (Object!4053) (End!3972) (Def!3972) (Underscore!3972) (Match!3972) (Else!3972) (Error!3972) (Case!3972) (If!3972) (Extends!3972) (Abstract!3972) (Class!3972) (Val!3972) (DelimiterValue!7944 (del!4032 List!21606)) (KeywordValue!3978 (value!120892 List!21606)) (CommentValue!7944 (value!120893 List!21606)) (WhitespaceValue!7944 (value!120894 List!21606)) (IndentationValue!3972 (value!120895 List!21606)) (String!24977) (Int32!3972) (Broken!19861 (value!120896 List!21606)) (Boolean!3973) (Unit!35881) (OperatorValue!3975 (op!4032 List!21606)) (IdentifierValue!7944 (value!120897 List!21606)) (IdentifierValue!7945 (value!120898 List!21606)) (WhitespaceValue!7945 (value!120899 List!21606)) (True!7944) (False!7944) (Broken!19862 (value!120900 List!21606)) (Broken!19863 (value!120901 List!21606)) (True!7945) (RightBrace!3972) (RightBracket!3972) (Colon!3972) (Null!3972) (Comma!3972) (LeftBracket!3972) (False!7945) (LeftBrace!3972) (ImaginaryLiteralValue!3972 (text!28250 List!21606)) (StringLiteralValue!11916 (value!120902 List!21606)) (EOFValue!3972 (value!120903 List!21606)) (IdentValue!3972 (value!120904 List!21606)) (DelimiterValue!7945 (value!120905 List!21606)) (DedentValue!3972 (value!120906 List!21606)) (NewLineValue!3972 (value!120907 List!21606)) (IntegerValue!11916 (value!120908 (_ BitVec 32)) (text!28251 List!21606)) (IntegerValue!11917 (value!120909 Int) (text!28252 List!21606)) (Times!3972) (Or!3972) (Equal!3972) (Minus!3972) (Broken!19864 (value!120910 List!21606)) (And!3972) (Div!3972) (LessEqual!3972) (Mod!3972) (Concat!9233) (Not!3972) (Plus!3972) (SpaceValue!3972 (value!120911 List!21606)) (IntegerValue!11918 (value!120912 Int) (text!28253 List!21606)) (StringLiteralValue!11917 (text!28254 List!21606)) (FloatLiteralValue!7945 (text!28255 List!21606)) (BytesLiteralValue!3972 (value!120913 List!21606)) (CommentValue!7945 (value!120914 List!21606)) (StringLiteralValue!11918 (value!120915 List!21606)) (ErrorTokenValue!3972 (msg!4033 List!21606)) )
))
(declare-datatypes ((C!10668 0))(
  ( (C!10669 (val!6286 Int)) )
))
(declare-datatypes ((List!21607 0))(
  ( (Nil!21525) (Cons!21525 (h!26926 C!10668) (t!178064 List!21607)) )
))
(declare-datatypes ((IArray!14333 0))(
  ( (IArray!14334 (innerList!7224 List!21607)) )
))
(declare-datatypes ((Conc!7164 0))(
  ( (Node!7164 (left!17204 Conc!7164) (right!17534 Conc!7164) (csize!14558 Int) (cheight!7375 Int)) (Leaf!10545 (xs!10058 IArray!14333) (csize!14559 Int)) (Empty!7164) )
))
(declare-datatypes ((BalanceConc!14144 0))(
  ( (BalanceConc!14145 (c!311266 Conc!7164)) )
))
(declare-datatypes ((TokenValueInjection!7528 0))(
  ( (TokenValueInjection!7529 (toValue!5465 Int) (toChars!5324 Int)) )
))
(declare-datatypes ((String!24978 0))(
  ( (String!24979 (value!120916 String)) )
))
(declare-datatypes ((Regex!5261 0))(
  ( (ElementMatch!5261 (c!311267 C!10668)) (Concat!9234 (regOne!11034 Regex!5261) (regTwo!11034 Regex!5261)) (EmptyExpr!5261) (Star!5261 (reg!5590 Regex!5261)) (EmptyLang!5261) (Union!5261 (regOne!11035 Regex!5261) (regTwo!11035 Regex!5261)) )
))
(declare-datatypes ((Rule!7472 0))(
  ( (Rule!7473 (regex!3836 Regex!5261) (tag!4270 String!24978) (isSeparator!3836 Bool) (transformation!3836 TokenValueInjection!7528)) )
))
(declare-datatypes ((List!21608 0))(
  ( (Nil!21526) (Cons!21526 (h!26927 Rule!7472) (t!178065 List!21608)) )
))
(declare-fun rules!3198 () List!21608)

(declare-fun isEmpty!13214 (List!21608) Bool)

(assert (=> b!1910369 (= res!853037 (not (isEmpty!13214 rules!3198)))))

(declare-fun b!1910370 () Bool)

(declare-fun res!853033 () Bool)

(assert (=> b!1910370 (=> (not res!853033) (not e!1220284))))

(declare-fun sepAndNonSepRulesDisjointChars!934 (List!21608 List!21608) Bool)

(assert (=> b!1910370 (= res!853033 (sepAndNonSepRulesDisjointChars!934 rules!3198 rules!3198))))

(declare-fun b!1910371 () Bool)

(declare-fun e!1220285 () Bool)

(assert (=> b!1910371 (= e!1220285 true)))

(declare-fun lt!730621 () BalanceConc!14144)

(declare-fun lt!730618 () List!21607)

(declare-fun seqFromList!2708 (List!21607) BalanceConc!14144)

(assert (=> b!1910371 (= lt!730621 (seqFromList!2708 lt!730618))))

(declare-fun b!1910372 () Bool)

(declare-fun e!1220289 () Bool)

(assert (=> b!1910372 (= e!1220289 e!1220285)))

(declare-fun res!853031 () Bool)

(assert (=> b!1910372 (=> res!853031 e!1220285)))

(declare-fun lt!730626 () List!21607)

(declare-fun lt!730634 () List!21607)

(assert (=> b!1910372 (= res!853031 (or (not (= lt!730626 lt!730634)) (not (= lt!730634 lt!730618)) (not (= lt!730626 lt!730618))))))

(declare-datatypes ((LexerInterface!3449 0))(
  ( (LexerInterfaceExt!3446 (__x!13443 Int)) (Lexer!3447) )
))
(declare-fun thiss!23328 () LexerInterface!3449)

(declare-datatypes ((Token!7224 0))(
  ( (Token!7225 (value!120917 TokenValue!3972) (rule!6035 Rule!7472) (size!16964 Int) (originalCharacters!4643 List!21607)) )
))
(declare-datatypes ((List!21609 0))(
  ( (Nil!21527) (Cons!21527 (h!26928 Token!7224) (t!178066 List!21609)) )
))
(declare-fun tokens!598 () List!21609)

(declare-fun printList!1032 (LexerInterface!3449 List!21609) List!21607)

(assert (=> b!1910372 (= lt!730634 (printList!1032 thiss!23328 (Cons!21527 (h!26928 tokens!598) Nil!21527)))))

(declare-fun lt!730628 () BalanceConc!14144)

(declare-fun list!8756 (BalanceConc!14144) List!21607)

(assert (=> b!1910372 (= lt!730626 (list!8756 lt!730628))))

(declare-datatypes ((IArray!14335 0))(
  ( (IArray!14336 (innerList!7225 List!21609)) )
))
(declare-datatypes ((Conc!7165 0))(
  ( (Node!7165 (left!17205 Conc!7165) (right!17535 Conc!7165) (csize!14560 Int) (cheight!7376 Int)) (Leaf!10546 (xs!10059 IArray!14335) (csize!14561 Int)) (Empty!7165) )
))
(declare-datatypes ((BalanceConc!14146 0))(
  ( (BalanceConc!14147 (c!311268 Conc!7165)) )
))
(declare-fun lt!730616 () BalanceConc!14146)

(declare-fun printTailRec!966 (LexerInterface!3449 BalanceConc!14146 Int BalanceConc!14144) BalanceConc!14144)

(assert (=> b!1910372 (= lt!730628 (printTailRec!966 thiss!23328 lt!730616 0 (BalanceConc!14145 Empty!7164)))))

(declare-fun print!1459 (LexerInterface!3449 BalanceConc!14146) BalanceConc!14144)

(assert (=> b!1910372 (= lt!730628 (print!1459 thiss!23328 lt!730616))))

(declare-fun singletonSeq!1859 (Token!7224) BalanceConc!14146)

(assert (=> b!1910372 (= lt!730616 (singletonSeq!1859 (h!26928 tokens!598)))))

(declare-fun lt!730620 () C!10668)

(declare-fun contains!3881 (List!21607 C!10668) Bool)

(declare-fun usedCharacters!344 (Regex!5261) List!21607)

(assert (=> b!1910372 (not (contains!3881 (usedCharacters!344 (regex!3836 (rule!6035 (h!26928 tokens!598)))) lt!730620))))

(declare-fun separatorToken!354 () Token!7224)

(declare-datatypes ((Unit!35882 0))(
  ( (Unit!35883) )
))
(declare-fun lt!730627 () Unit!35882)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!40 (LexerInterface!3449 List!21608 List!21608 Rule!7472 Rule!7472 C!10668) Unit!35882)

(assert (=> b!1910372 (= lt!730627 (lemmaNonSepRuleNotContainsCharContainedInASepRule!40 thiss!23328 rules!3198 rules!3198 (rule!6035 (h!26928 tokens!598)) (rule!6035 separatorToken!354) lt!730620))))

(declare-fun lt!730632 () Unit!35882)

(declare-fun e!1220271 () Unit!35882)

(assert (=> b!1910372 (= lt!730632 e!1220271)))

(declare-fun c!311265 () Bool)

(assert (=> b!1910372 (= c!311265 (not (contains!3881 (usedCharacters!344 (regex!3836 (rule!6035 separatorToken!354))) lt!730620)))))

(declare-fun lt!730611 () List!21607)

(declare-fun head!4440 (List!21607) C!10668)

(assert (=> b!1910372 (= lt!730620 (head!4440 lt!730611))))

(declare-fun lt!730615 () List!21607)

(declare-fun ++!5785 (List!21607 List!21607) List!21607)

(assert (=> b!1910372 (= (++!5785 (++!5785 lt!730618 lt!730611) lt!730615) (++!5785 lt!730618 (++!5785 lt!730611 lt!730615)))))

(declare-fun lt!730629 () Unit!35882)

(declare-fun lemmaConcatAssociativity!1151 (List!21607 List!21607 List!21607) Unit!35882)

(assert (=> b!1910372 (= lt!730629 (lemmaConcatAssociativity!1151 lt!730618 lt!730611 lt!730615))))

(declare-fun b!1910373 () Bool)

(declare-fun res!853039 () Bool)

(assert (=> b!1910373 (=> (not res!853039) (not e!1220284))))

(declare-fun lambda!74605 () Int)

(declare-fun forall!4526 (List!21609 Int) Bool)

(assert (=> b!1910373 (= res!853039 (forall!4526 tokens!598 lambda!74605))))

(declare-fun b!1910375 () Bool)

(assert (=> b!1910375 (= e!1220284 (not e!1220289))))

(declare-fun res!853041 () Bool)

(assert (=> b!1910375 (=> res!853041 e!1220289)))

(declare-fun lt!730612 () Bool)

(declare-datatypes ((tuple2!20252 0))(
  ( (tuple2!20253 (_1!11595 Token!7224) (_2!11595 List!21607)) )
))
(declare-datatypes ((Option!4377 0))(
  ( (None!4376) (Some!4376 (v!26427 tuple2!20252)) )
))
(declare-fun lt!730622 () Option!4377)

(assert (=> b!1910375 (= res!853041 (or (and (not lt!730612) (= (_1!11595 (v!26427 lt!730622)) (h!26928 tokens!598))) lt!730612 (= (_1!11595 (v!26427 lt!730622)) (h!26928 tokens!598))))))

(get-info :version)

(assert (=> b!1910375 (= lt!730612 (not ((_ is Some!4376) lt!730622)))))

(declare-fun maxPrefix!1895 (LexerInterface!3449 List!21608 List!21607) Option!4377)

(assert (=> b!1910375 (= lt!730622 (maxPrefix!1895 thiss!23328 rules!3198 (++!5785 lt!730618 lt!730615)))))

(declare-fun printWithSeparatorTokenWhenNeededList!492 (LexerInterface!3449 List!21608 List!21609 Token!7224) List!21607)

(assert (=> b!1910375 (= lt!730615 (printWithSeparatorTokenWhenNeededList!492 thiss!23328 rules!3198 (t!178066 tokens!598) separatorToken!354))))

(declare-fun e!1220293 () Bool)

(assert (=> b!1910375 e!1220293))

(declare-fun res!853035 () Bool)

(assert (=> b!1910375 (=> (not res!853035) (not e!1220293))))

(declare-datatypes ((Option!4378 0))(
  ( (None!4377) (Some!4377 (v!26428 Rule!7472)) )
))
(declare-fun lt!730623 () Option!4378)

(declare-fun isDefined!3675 (Option!4378) Bool)

(assert (=> b!1910375 (= res!853035 (isDefined!3675 lt!730623))))

(declare-fun getRuleFromTag!679 (LexerInterface!3449 List!21608 String!24978) Option!4378)

(assert (=> b!1910375 (= lt!730623 (getRuleFromTag!679 thiss!23328 rules!3198 (tag!4270 (rule!6035 (h!26928 tokens!598)))))))

(declare-fun lt!730614 () Unit!35882)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!679 (LexerInterface!3449 List!21608 List!21607 Token!7224) Unit!35882)

(assert (=> b!1910375 (= lt!730614 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!679 thiss!23328 rules!3198 lt!730618 (h!26928 tokens!598)))))

(declare-fun e!1220272 () Bool)

(assert (=> b!1910375 e!1220272))

(declare-fun res!853027 () Bool)

(assert (=> b!1910375 (=> (not res!853027) (not e!1220272))))

(declare-fun lt!730624 () Option!4377)

(declare-fun isDefined!3676 (Option!4377) Bool)

(assert (=> b!1910375 (= res!853027 (isDefined!3676 lt!730624))))

(assert (=> b!1910375 (= lt!730624 (maxPrefix!1895 thiss!23328 rules!3198 lt!730618))))

(declare-fun lt!730617 () BalanceConc!14144)

(assert (=> b!1910375 (= lt!730618 (list!8756 lt!730617))))

(declare-fun e!1220279 () Bool)

(assert (=> b!1910375 e!1220279))

(declare-fun res!853029 () Bool)

(assert (=> b!1910375 (=> (not res!853029) (not e!1220279))))

(declare-fun lt!730633 () Option!4378)

(assert (=> b!1910375 (= res!853029 (isDefined!3675 lt!730633))))

(assert (=> b!1910375 (= lt!730633 (getRuleFromTag!679 thiss!23328 rules!3198 (tag!4270 (rule!6035 separatorToken!354))))))

(declare-fun lt!730630 () Unit!35882)

(assert (=> b!1910375 (= lt!730630 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!679 thiss!23328 rules!3198 lt!730611 separatorToken!354))))

(declare-fun charsOf!2392 (Token!7224) BalanceConc!14144)

(assert (=> b!1910375 (= lt!730611 (list!8756 (charsOf!2392 separatorToken!354)))))

(declare-fun lt!730619 () Unit!35882)

(declare-fun lemmaEqSameImage!544 (TokenValueInjection!7528 BalanceConc!14144 BalanceConc!14144) Unit!35882)

(assert (=> b!1910375 (= lt!730619 (lemmaEqSameImage!544 (transformation!3836 (rule!6035 (h!26928 tokens!598))) lt!730617 (seqFromList!2708 (originalCharacters!4643 (h!26928 tokens!598)))))))

(declare-fun lt!730625 () Unit!35882)

(declare-fun lemmaSemiInverse!815 (TokenValueInjection!7528 BalanceConc!14144) Unit!35882)

(assert (=> b!1910375 (= lt!730625 (lemmaSemiInverse!815 (transformation!3836 (rule!6035 (h!26928 tokens!598))) lt!730617))))

(assert (=> b!1910375 (= lt!730617 (charsOf!2392 (h!26928 tokens!598)))))

(declare-fun b!1910376 () Bool)

(declare-fun Unit!35884 () Unit!35882)

(assert (=> b!1910376 (= e!1220271 Unit!35884)))

(declare-fun b!1910377 () Bool)

(declare-fun e!1220286 () Bool)

(declare-fun e!1220275 () Bool)

(declare-fun tp!545293 () Bool)

(assert (=> b!1910377 (= e!1220286 (and e!1220275 tp!545293))))

(declare-fun b!1910378 () Bool)

(declare-fun res!853026 () Bool)

(assert (=> b!1910378 (=> (not res!853026) (not e!1220284))))

(declare-fun rulesProduceEachTokenIndividuallyList!1180 (LexerInterface!3449 List!21608 List!21609) Bool)

(assert (=> b!1910378 (= res!853026 (rulesProduceEachTokenIndividuallyList!1180 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1910379 () Bool)

(declare-fun res!853032 () Bool)

(assert (=> b!1910379 (=> (not res!853032) (not e!1220284))))

(declare-fun rulesProduceIndividualToken!1621 (LexerInterface!3449 List!21608 Token!7224) Bool)

(assert (=> b!1910379 (= res!853032 (rulesProduceIndividualToken!1621 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1910380 () Bool)

(declare-fun res!853028 () Bool)

(assert (=> b!1910380 (=> (not res!853028) (not e!1220284))))

(assert (=> b!1910380 (= res!853028 (isSeparator!3836 (rule!6035 separatorToken!354)))))

(declare-fun b!1910381 () Bool)

(declare-fun res!853030 () Bool)

(assert (=> b!1910381 (=> (not res!853030) (not e!1220284))))

(assert (=> b!1910381 (= res!853030 ((_ is Cons!21527) tokens!598))))

(declare-fun b!1910382 () Bool)

(declare-fun get!6702 (Option!4377) tuple2!20252)

(assert (=> b!1910382 (= e!1220272 (= (_1!11595 (get!6702 lt!730624)) (h!26928 tokens!598)))))

(declare-fun b!1910383 () Bool)

(declare-fun res!853036 () Bool)

(assert (=> b!1910383 (=> (not res!853036) (not e!1220284))))

(declare-fun rulesInvariant!3056 (LexerInterface!3449 List!21608) Bool)

(assert (=> b!1910383 (= res!853036 (rulesInvariant!3056 thiss!23328 rules!3198))))

(declare-fun b!1910384 () Bool)

(declare-fun e!1220280 () Bool)

(declare-fun lt!730631 () Rule!7472)

(assert (=> b!1910384 (= e!1220280 (= (rule!6035 separatorToken!354) lt!730631))))

(declare-fun e!1220276 () Bool)

(declare-fun e!1220287 () Bool)

(declare-fun b!1910385 () Bool)

(declare-fun tp!545299 () Bool)

(declare-fun inv!21 (TokenValue!3972) Bool)

(assert (=> b!1910385 (= e!1220276 (and (inv!21 (value!120917 separatorToken!354)) e!1220287 tp!545299))))

(declare-fun b!1910386 () Bool)

(declare-fun res!853034 () Bool)

(assert (=> b!1910386 (=> res!853034 e!1220285)))

(assert (=> b!1910386 (= res!853034 (not (rulesProduceIndividualToken!1621 thiss!23328 rules!3198 (h!26928 tokens!598))))))

(declare-fun b!1910387 () Bool)

(assert (=> b!1910387 (= e!1220279 e!1220280)))

(declare-fun res!853040 () Bool)

(assert (=> b!1910387 (=> (not res!853040) (not e!1220280))))

(declare-fun matchR!2547 (Regex!5261 List!21607) Bool)

(assert (=> b!1910387 (= res!853040 (matchR!2547 (regex!3836 lt!730631) lt!730611))))

(declare-fun get!6703 (Option!4378) Rule!7472)

(assert (=> b!1910387 (= lt!730631 (get!6703 lt!730633))))

(declare-fun tp!545294 () Bool)

(declare-fun b!1910388 () Bool)

(declare-fun e!1220290 () Bool)

(declare-fun inv!28629 (String!24978) Bool)

(declare-fun inv!28632 (TokenValueInjection!7528) Bool)

(assert (=> b!1910388 (= e!1220275 (and tp!545294 (inv!28629 (tag!4270 (h!26927 rules!3198))) (inv!28632 (transformation!3836 (h!26927 rules!3198))) e!1220290))))

(declare-fun b!1910389 () Bool)

(declare-fun Unit!35885 () Unit!35882)

(assert (=> b!1910389 (= e!1220271 Unit!35885)))

(declare-fun lt!730610 () Unit!35882)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!244 (Regex!5261 List!21607 C!10668) Unit!35882)

(assert (=> b!1910389 (= lt!730610 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!244 (regex!3836 (rule!6035 separatorToken!354)) lt!730611 lt!730620))))

(declare-fun res!853025 () Bool)

(assert (=> b!1910389 (= res!853025 (not (matchR!2547 (regex!3836 (rule!6035 separatorToken!354)) lt!730611)))))

(declare-fun e!1220288 () Bool)

(assert (=> b!1910389 (=> (not res!853025) (not e!1220288))))

(assert (=> b!1910389 e!1220288))

(declare-fun b!1910390 () Bool)

(declare-fun e!1220294 () Bool)

(assert (=> b!1910390 (= e!1220293 e!1220294)))

(declare-fun res!853042 () Bool)

(assert (=> b!1910390 (=> (not res!853042) (not e!1220294))))

(declare-fun lt!730613 () Rule!7472)

(assert (=> b!1910390 (= res!853042 (matchR!2547 (regex!3836 lt!730613) lt!730618))))

(assert (=> b!1910390 (= lt!730613 (get!6703 lt!730623))))

(declare-fun b!1910391 () Bool)

(declare-fun e!1220274 () Bool)

(declare-fun e!1220291 () Bool)

(declare-fun tp!545302 () Bool)

(assert (=> b!1910391 (= e!1220291 (and tp!545302 (inv!28629 (tag!4270 (rule!6035 (h!26928 tokens!598)))) (inv!28632 (transformation!3836 (rule!6035 (h!26928 tokens!598)))) e!1220274))))

(declare-fun res!853038 () Bool)

(assert (=> start!191644 (=> (not res!853038) (not e!1220284))))

(assert (=> start!191644 (= res!853038 ((_ is Lexer!3447) thiss!23328))))

(assert (=> start!191644 e!1220284))

(assert (=> start!191644 true))

(assert (=> start!191644 e!1220286))

(declare-fun e!1220277 () Bool)

(assert (=> start!191644 e!1220277))

(declare-fun inv!28633 (Token!7224) Bool)

(assert (=> start!191644 (and (inv!28633 separatorToken!354) e!1220276)))

(declare-fun b!1910374 () Bool)

(assert (=> b!1910374 (= e!1220294 (= (rule!6035 (h!26928 tokens!598)) lt!730613))))

(declare-fun b!1910392 () Bool)

(declare-fun tp!545304 () Bool)

(declare-fun e!1220292 () Bool)

(assert (=> b!1910392 (= e!1220277 (and (inv!28633 (h!26928 tokens!598)) e!1220292 tp!545304))))

(declare-fun b!1910393 () Bool)

(assert (=> b!1910393 (= e!1220288 false)))

(assert (=> b!1910394 (= e!1220274 (and tp!545300 tp!545301))))

(declare-fun e!1220270 () Bool)

(assert (=> b!1910395 (= e!1220270 (and tp!545292 tp!545295))))

(assert (=> b!1910396 (= e!1220290 (and tp!545297 tp!545303))))

(declare-fun b!1910397 () Bool)

(declare-fun tp!545298 () Bool)

(assert (=> b!1910397 (= e!1220292 (and (inv!21 (value!120917 (h!26928 tokens!598))) e!1220291 tp!545298))))

(declare-fun b!1910398 () Bool)

(declare-fun tp!545296 () Bool)

(assert (=> b!1910398 (= e!1220287 (and tp!545296 (inv!28629 (tag!4270 (rule!6035 separatorToken!354))) (inv!28632 (transformation!3836 (rule!6035 separatorToken!354))) e!1220270))))

(assert (= (and start!191644 res!853038) b!1910369))

(assert (= (and b!1910369 res!853037) b!1910383))

(assert (= (and b!1910383 res!853036) b!1910378))

(assert (= (and b!1910378 res!853026) b!1910379))

(assert (= (and b!1910379 res!853032) b!1910380))

(assert (= (and b!1910380 res!853028) b!1910373))

(assert (= (and b!1910373 res!853039) b!1910370))

(assert (= (and b!1910370 res!853033) b!1910381))

(assert (= (and b!1910381 res!853030) b!1910375))

(assert (= (and b!1910375 res!853029) b!1910387))

(assert (= (and b!1910387 res!853040) b!1910384))

(assert (= (and b!1910375 res!853027) b!1910382))

(assert (= (and b!1910375 res!853035) b!1910390))

(assert (= (and b!1910390 res!853042) b!1910374))

(assert (= (and b!1910375 (not res!853041)) b!1910372))

(assert (= (and b!1910372 c!311265) b!1910389))

(assert (= (and b!1910372 (not c!311265)) b!1910376))

(assert (= (and b!1910389 res!853025) b!1910393))

(assert (= (and b!1910372 (not res!853031)) b!1910386))

(assert (= (and b!1910386 (not res!853034)) b!1910371))

(assert (= b!1910388 b!1910396))

(assert (= b!1910377 b!1910388))

(assert (= (and start!191644 ((_ is Cons!21526) rules!3198)) b!1910377))

(assert (= b!1910391 b!1910394))

(assert (= b!1910397 b!1910391))

(assert (= b!1910392 b!1910397))

(assert (= (and start!191644 ((_ is Cons!21527) tokens!598)) b!1910392))

(assert (= b!1910398 b!1910395))

(assert (= b!1910385 b!1910398))

(assert (= start!191644 b!1910385))

(declare-fun m!2343953 () Bool)

(assert (=> b!1910388 m!2343953))

(declare-fun m!2343955 () Bool)

(assert (=> b!1910388 m!2343955))

(declare-fun m!2343957 () Bool)

(assert (=> b!1910373 m!2343957))

(declare-fun m!2343959 () Bool)

(assert (=> b!1910387 m!2343959))

(declare-fun m!2343961 () Bool)

(assert (=> b!1910387 m!2343961))

(declare-fun m!2343963 () Bool)

(assert (=> b!1910375 m!2343963))

(declare-fun m!2343965 () Bool)

(assert (=> b!1910375 m!2343965))

(declare-fun m!2343967 () Bool)

(assert (=> b!1910375 m!2343967))

(declare-fun m!2343969 () Bool)

(assert (=> b!1910375 m!2343969))

(declare-fun m!2343971 () Bool)

(assert (=> b!1910375 m!2343971))

(declare-fun m!2343973 () Bool)

(assert (=> b!1910375 m!2343973))

(declare-fun m!2343975 () Bool)

(assert (=> b!1910375 m!2343975))

(declare-fun m!2343977 () Bool)

(assert (=> b!1910375 m!2343977))

(assert (=> b!1910375 m!2343975))

(declare-fun m!2343979 () Bool)

(assert (=> b!1910375 m!2343979))

(declare-fun m!2343981 () Bool)

(assert (=> b!1910375 m!2343981))

(declare-fun m!2343983 () Bool)

(assert (=> b!1910375 m!2343983))

(declare-fun m!2343985 () Bool)

(assert (=> b!1910375 m!2343985))

(declare-fun m!2343987 () Bool)

(assert (=> b!1910375 m!2343987))

(assert (=> b!1910375 m!2343985))

(declare-fun m!2343989 () Bool)

(assert (=> b!1910375 m!2343989))

(declare-fun m!2343991 () Bool)

(assert (=> b!1910375 m!2343991))

(assert (=> b!1910375 m!2343967))

(declare-fun m!2343993 () Bool)

(assert (=> b!1910375 m!2343993))

(declare-fun m!2343995 () Bool)

(assert (=> b!1910375 m!2343995))

(declare-fun m!2343997 () Bool)

(assert (=> b!1910375 m!2343997))

(declare-fun m!2343999 () Bool)

(assert (=> b!1910398 m!2343999))

(declare-fun m!2344001 () Bool)

(assert (=> b!1910398 m!2344001))

(declare-fun m!2344003 () Bool)

(assert (=> b!1910397 m!2344003))

(declare-fun m!2344005 () Bool)

(assert (=> b!1910383 m!2344005))

(declare-fun m!2344007 () Bool)

(assert (=> b!1910386 m!2344007))

(declare-fun m!2344009 () Bool)

(assert (=> b!1910385 m!2344009))

(declare-fun m!2344011 () Bool)

(assert (=> start!191644 m!2344011))

(declare-fun m!2344013 () Bool)

(assert (=> b!1910390 m!2344013))

(declare-fun m!2344015 () Bool)

(assert (=> b!1910390 m!2344015))

(declare-fun m!2344017 () Bool)

(assert (=> b!1910392 m!2344017))

(declare-fun m!2344019 () Bool)

(assert (=> b!1910378 m!2344019))

(declare-fun m!2344021 () Bool)

(assert (=> b!1910379 m!2344021))

(declare-fun m!2344023 () Bool)

(assert (=> b!1910382 m!2344023))

(declare-fun m!2344025 () Bool)

(assert (=> b!1910369 m!2344025))

(declare-fun m!2344027 () Bool)

(assert (=> b!1910389 m!2344027))

(declare-fun m!2344029 () Bool)

(assert (=> b!1910389 m!2344029))

(declare-fun m!2344031 () Bool)

(assert (=> b!1910370 m!2344031))

(declare-fun m!2344033 () Bool)

(assert (=> b!1910372 m!2344033))

(declare-fun m!2344035 () Bool)

(assert (=> b!1910372 m!2344035))

(declare-fun m!2344037 () Bool)

(assert (=> b!1910372 m!2344037))

(declare-fun m!2344039 () Bool)

(assert (=> b!1910372 m!2344039))

(declare-fun m!2344041 () Bool)

(assert (=> b!1910372 m!2344041))

(declare-fun m!2344043 () Bool)

(assert (=> b!1910372 m!2344043))

(declare-fun m!2344045 () Bool)

(assert (=> b!1910372 m!2344045))

(declare-fun m!2344047 () Bool)

(assert (=> b!1910372 m!2344047))

(assert (=> b!1910372 m!2344041))

(declare-fun m!2344049 () Bool)

(assert (=> b!1910372 m!2344049))

(declare-fun m!2344051 () Bool)

(assert (=> b!1910372 m!2344051))

(assert (=> b!1910372 m!2344033))

(assert (=> b!1910372 m!2344039))

(declare-fun m!2344053 () Bool)

(assert (=> b!1910372 m!2344053))

(declare-fun m!2344055 () Bool)

(assert (=> b!1910372 m!2344055))

(declare-fun m!2344057 () Bool)

(assert (=> b!1910372 m!2344057))

(declare-fun m!2344059 () Bool)

(assert (=> b!1910372 m!2344059))

(declare-fun m!2344061 () Bool)

(assert (=> b!1910372 m!2344061))

(assert (=> b!1910372 m!2344037))

(declare-fun m!2344063 () Bool)

(assert (=> b!1910372 m!2344063))

(declare-fun m!2344065 () Bool)

(assert (=> b!1910371 m!2344065))

(declare-fun m!2344067 () Bool)

(assert (=> b!1910391 m!2344067))

(declare-fun m!2344069 () Bool)

(assert (=> b!1910391 m!2344069))

(check-sat (not b!1910389) (not b!1910372) (not b_next!54591) (not b!1910383) (not start!191644) b_and!148801 (not b!1910391) (not b!1910398) (not b_next!54595) (not b!1910371) b_and!148805 (not b!1910379) (not b!1910386) (not b!1910382) (not b!1910375) b_and!148809 (not b_next!54585) (not b_next!54589) (not b!1910370) (not b!1910377) b_and!148799 (not b!1910392) (not b!1910373) b_and!148803 (not b!1910387) (not b!1910378) (not b_next!54587) (not b!1910385) (not b!1910397) b_and!148807 (not b!1910369) (not b_next!54593) (not b!1910388) (not b!1910390))
(check-sat b_and!148805 (not b_next!54591) (not b_next!54589) b_and!148799 b_and!148803 b_and!148801 (not b_next!54593) (not b_next!54595) b_and!148809 (not b_next!54585) (not b_next!54587) b_and!148807)
