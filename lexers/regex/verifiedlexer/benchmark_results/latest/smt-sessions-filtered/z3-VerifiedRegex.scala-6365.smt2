; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!330714 () Bool)

(assert start!330714)

(declare-fun b!3570419 () Bool)

(declare-fun b_free!91409 () Bool)

(declare-fun b_next!92113 () Bool)

(assert (=> b!3570419 (= b_free!91409 (not b_next!92113))))

(declare-fun tp!1093652 () Bool)

(declare-fun b_and!256923 () Bool)

(assert (=> b!3570419 (= tp!1093652 b_and!256923)))

(declare-fun b_free!91411 () Bool)

(declare-fun b_next!92115 () Bool)

(assert (=> b!3570419 (= b_free!91411 (not b_next!92115))))

(declare-fun tp!1093642 () Bool)

(declare-fun b_and!256925 () Bool)

(assert (=> b!3570419 (= tp!1093642 b_and!256925)))

(declare-fun b!3570412 () Bool)

(declare-fun b_free!91413 () Bool)

(declare-fun b_next!92117 () Bool)

(assert (=> b!3570412 (= b_free!91413 (not b_next!92117))))

(declare-fun tp!1093650 () Bool)

(declare-fun b_and!256927 () Bool)

(assert (=> b!3570412 (= tp!1093650 b_and!256927)))

(declare-fun b_free!91415 () Bool)

(declare-fun b_next!92119 () Bool)

(assert (=> b!3570412 (= b_free!91415 (not b_next!92119))))

(declare-fun tp!1093649 () Bool)

(declare-fun b_and!256929 () Bool)

(assert (=> b!3570412 (= tp!1093649 b_and!256929)))

(declare-fun b!3570404 () Bool)

(declare-fun b_free!91417 () Bool)

(declare-fun b_next!92121 () Bool)

(assert (=> b!3570404 (= b_free!91417 (not b_next!92121))))

(declare-fun tp!1093651 () Bool)

(declare-fun b_and!256931 () Bool)

(assert (=> b!3570404 (= tp!1093651 b_and!256931)))

(declare-fun b_free!91419 () Bool)

(declare-fun b_next!92123 () Bool)

(assert (=> b!3570404 (= b_free!91419 (not b_next!92123))))

(declare-fun tp!1093645 () Bool)

(declare-fun b_and!256933 () Bool)

(assert (=> b!3570404 (= tp!1093645 b_and!256933)))

(declare-fun bs!569141 () Bool)

(declare-fun b!3570384 () Bool)

(declare-fun b!3570424 () Bool)

(assert (= bs!569141 (and b!3570384 b!3570424)))

(declare-fun lambda!123451 () Int)

(declare-fun lambda!123450 () Int)

(assert (=> bs!569141 (not (= lambda!123451 lambda!123450))))

(declare-fun b!3570442 () Bool)

(declare-fun e!2208718 () Bool)

(assert (=> b!3570442 (= e!2208718 true)))

(declare-fun b!3570441 () Bool)

(declare-fun e!2208717 () Bool)

(assert (=> b!3570441 (= e!2208717 e!2208718)))

(declare-fun b!3570440 () Bool)

(declare-fun e!2208716 () Bool)

(assert (=> b!3570440 (= e!2208716 e!2208717)))

(assert (=> b!3570384 e!2208716))

(assert (= b!3570441 b!3570442))

(assert (= b!3570440 b!3570441))

(declare-datatypes ((C!20724 0))(
  ( (C!20725 (val!12410 Int)) )
))
(declare-datatypes ((Regex!10269 0))(
  ( (ElementMatch!10269 (c!618702 C!20724)) (Concat!16009 (regOne!21050 Regex!10269) (regTwo!21050 Regex!10269)) (EmptyExpr!10269) (Star!10269 (reg!10598 Regex!10269)) (EmptyLang!10269) (Union!10269 (regOne!21051 Regex!10269) (regTwo!21051 Regex!10269)) )
))
(declare-datatypes ((List!37622 0))(
  ( (Nil!37498) (Cons!37498 (h!42918 (_ BitVec 16)) (t!289015 List!37622)) )
))
(declare-datatypes ((TokenValue!5740 0))(
  ( (FloatLiteralValue!11480 (text!40625 List!37622)) (TokenValueExt!5739 (__x!23697 Int)) (Broken!28700 (value!177469 List!37622)) (Object!5863) (End!5740) (Def!5740) (Underscore!5740) (Match!5740) (Else!5740) (Error!5740) (Case!5740) (If!5740) (Extends!5740) (Abstract!5740) (Class!5740) (Val!5740) (DelimiterValue!11480 (del!5800 List!37622)) (KeywordValue!5746 (value!177470 List!37622)) (CommentValue!11480 (value!177471 List!37622)) (WhitespaceValue!11480 (value!177472 List!37622)) (IndentationValue!5740 (value!177473 List!37622)) (String!42033) (Int32!5740) (Broken!28701 (value!177474 List!37622)) (Boolean!5741) (Unit!53482) (OperatorValue!5743 (op!5800 List!37622)) (IdentifierValue!11480 (value!177475 List!37622)) (IdentifierValue!11481 (value!177476 List!37622)) (WhitespaceValue!11481 (value!177477 List!37622)) (True!11480) (False!11480) (Broken!28702 (value!177478 List!37622)) (Broken!28703 (value!177479 List!37622)) (True!11481) (RightBrace!5740) (RightBracket!5740) (Colon!5740) (Null!5740) (Comma!5740) (LeftBracket!5740) (False!11481) (LeftBrace!5740) (ImaginaryLiteralValue!5740 (text!40626 List!37622)) (StringLiteralValue!17220 (value!177480 List!37622)) (EOFValue!5740 (value!177481 List!37622)) (IdentValue!5740 (value!177482 List!37622)) (DelimiterValue!11481 (value!177483 List!37622)) (DedentValue!5740 (value!177484 List!37622)) (NewLineValue!5740 (value!177485 List!37622)) (IntegerValue!17220 (value!177486 (_ BitVec 32)) (text!40627 List!37622)) (IntegerValue!17221 (value!177487 Int) (text!40628 List!37622)) (Times!5740) (Or!5740) (Equal!5740) (Minus!5740) (Broken!28704 (value!177488 List!37622)) (And!5740) (Div!5740) (LessEqual!5740) (Mod!5740) (Concat!16010) (Not!5740) (Plus!5740) (SpaceValue!5740 (value!177489 List!37622)) (IntegerValue!17222 (value!177490 Int) (text!40629 List!37622)) (StringLiteralValue!17221 (text!40630 List!37622)) (FloatLiteralValue!11481 (text!40631 List!37622)) (BytesLiteralValue!5740 (value!177491 List!37622)) (CommentValue!11481 (value!177492 List!37622)) (StringLiteralValue!17222 (value!177493 List!37622)) (ErrorTokenValue!5740 (msg!5801 List!37622)) )
))
(declare-datatypes ((List!37623 0))(
  ( (Nil!37499) (Cons!37499 (h!42919 C!20724) (t!289016 List!37623)) )
))
(declare-datatypes ((IArray!22795 0))(
  ( (IArray!22796 (innerList!11455 List!37623)) )
))
(declare-datatypes ((Conc!11395 0))(
  ( (Node!11395 (left!29320 Conc!11395) (right!29650 Conc!11395) (csize!23020 Int) (cheight!11606 Int)) (Leaf!17761 (xs!14597 IArray!22795) (csize!23021 Int)) (Empty!11395) )
))
(declare-datatypes ((BalanceConc!22404 0))(
  ( (BalanceConc!22405 (c!618703 Conc!11395)) )
))
(declare-datatypes ((String!42034 0))(
  ( (String!42035 (value!177494 String)) )
))
(declare-datatypes ((TokenValueInjection!10908 0))(
  ( (TokenValueInjection!10909 (toValue!7778 Int) (toChars!7637 Int)) )
))
(declare-datatypes ((Rule!10820 0))(
  ( (Rule!10821 (regex!5510 Regex!10269) (tag!6168 String!42034) (isSeparator!5510 Bool) (transformation!5510 TokenValueInjection!10908)) )
))
(declare-datatypes ((List!37624 0))(
  ( (Nil!37500) (Cons!37500 (h!42920 Rule!10820) (t!289017 List!37624)) )
))
(declare-fun rules!2135 () List!37624)

(get-info :version)

(assert (= (and b!3570384 ((_ is Cons!37500) rules!2135)) b!3570440))

(declare-fun order!20333 () Int)

(declare-fun order!20335 () Int)

(declare-fun dynLambda!16099 (Int Int) Int)

(declare-fun dynLambda!16100 (Int Int) Int)

(assert (=> b!3570442 (< (dynLambda!16099 order!20333 (toValue!7778 (transformation!5510 (h!42920 rules!2135)))) (dynLambda!16100 order!20335 lambda!123451))))

(declare-fun order!20337 () Int)

(declare-fun dynLambda!16101 (Int Int) Int)

(assert (=> b!3570442 (< (dynLambda!16101 order!20337 (toChars!7637 (transformation!5510 (h!42920 rules!2135)))) (dynLambda!16100 order!20335 lambda!123451))))

(assert (=> b!3570384 true))

(declare-fun b!3570381 () Bool)

(declare-fun e!2208687 () Bool)

(declare-datatypes ((Token!10386 0))(
  ( (Token!10387 (value!177495 TokenValue!5740) (rule!8204 Rule!10820) (size!28587 Int) (originalCharacters!6224 List!37623)) )
))
(declare-datatypes ((List!37625 0))(
  ( (Nil!37501) (Cons!37501 (h!42921 Token!10386) (t!289018 List!37625)) )
))
(declare-datatypes ((IArray!22797 0))(
  ( (IArray!22798 (innerList!11456 List!37625)) )
))
(declare-datatypes ((Conc!11396 0))(
  ( (Node!11396 (left!29321 Conc!11396) (right!29651 Conc!11396) (csize!23022 Int) (cheight!11607 Int)) (Leaf!17762 (xs!14598 IArray!22797) (csize!23023 Int)) (Empty!11396) )
))
(declare-datatypes ((BalanceConc!22406 0))(
  ( (BalanceConc!22407 (c!618704 Conc!11396)) )
))
(declare-datatypes ((tuple2!37408 0))(
  ( (tuple2!37409 (_1!21838 BalanceConc!22406) (_2!21838 BalanceConc!22404)) )
))
(declare-fun lt!1223603 () tuple2!37408)

(declare-fun isEmpty!22030 (BalanceConc!22404) Bool)

(assert (=> b!3570381 (= e!2208687 (not (isEmpty!22030 (_2!21838 lt!1223603))))))

(declare-fun b!3570382 () Bool)

(declare-fun res!1439823 () Bool)

(declare-fun e!2208697 () Bool)

(assert (=> b!3570382 (=> (not res!1439823) (not e!2208697))))

(declare-fun lt!1223593 () tuple2!37408)

(declare-fun separatorToken!241 () Token!10386)

(declare-fun apply!9012 (BalanceConc!22406 Int) Token!10386)

(assert (=> b!3570382 (= res!1439823 (= (apply!9012 (_1!21838 lt!1223593) 0) separatorToken!241))))

(declare-fun b!3570383 () Bool)

(declare-fun res!1439822 () Bool)

(declare-fun e!2208671 () Bool)

(assert (=> b!3570383 (=> res!1439822 e!2208671)))

(declare-datatypes ((tuple2!37410 0))(
  ( (tuple2!37411 (_1!21839 Token!10386) (_2!21839 List!37623)) )
))
(declare-fun lt!1223632 () tuple2!37410)

(declare-fun isEmpty!22031 (List!37623) Bool)

(assert (=> b!3570383 (= res!1439822 (not (isEmpty!22031 (_2!21839 lt!1223632))))))

(declare-fun e!2208679 () Bool)

(declare-fun e!2208703 () Bool)

(assert (=> b!3570384 (= e!2208679 e!2208703)))

(declare-fun res!1439821 () Bool)

(assert (=> b!3570384 (=> res!1439821 e!2208703)))

(declare-fun contains!7095 (List!37624 Rule!10820) Bool)

(assert (=> b!3570384 (= res!1439821 (not (contains!7095 rules!2135 (rule!8204 separatorToken!241))))))

(declare-fun lt!1223584 () List!37623)

(declare-fun lt!1223591 () C!20724)

(declare-fun contains!7096 (List!37623 C!20724) Bool)

(assert (=> b!3570384 (not (contains!7096 lt!1223584 lt!1223591))))

(declare-fun tokens!494 () List!37625)

(declare-datatypes ((LexerInterface!5099 0))(
  ( (LexerInterfaceExt!5096 (__x!23698 Int)) (Lexer!5097) )
))
(declare-fun thiss!18206 () LexerInterface!5099)

(declare-datatypes ((Unit!53483 0))(
  ( (Unit!53484) )
))
(declare-fun lt!1223617 () Unit!53483)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!192 (LexerInterface!5099 List!37624 List!37624 Rule!10820 Rule!10820 C!20724) Unit!53483)

(assert (=> b!3570384 (= lt!1223617 (lemmaSepRuleNotContainsCharContainedInANonSepRule!192 thiss!18206 rules!2135 rules!2135 (rule!8204 (h!42921 (t!289018 tokens!494))) (rule!8204 separatorToken!241) lt!1223591))))

(declare-fun lt!1223590 () Unit!53483)

(declare-fun e!2208700 () Unit!53483)

(assert (=> b!3570384 (= lt!1223590 e!2208700)))

(declare-fun c!618700 () Bool)

(declare-fun lt!1223618 () List!37623)

(assert (=> b!3570384 (= c!618700 (not (contains!7096 lt!1223618 lt!1223591)))))

(declare-fun lt!1223602 () List!37623)

(declare-fun head!7439 (List!37623) C!20724)

(assert (=> b!3570384 (= lt!1223591 (head!7439 lt!1223602))))

(declare-fun usedCharacters!744 (Regex!10269) List!37623)

(assert (=> b!3570384 (= lt!1223618 (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-datatypes ((Option!7689 0))(
  ( (None!7688) (Some!7688 (v!37294 tuple2!37410)) )
))
(declare-fun maxPrefixOneRule!1806 (LexerInterface!5099 Rule!10820 List!37623) Option!7689)

(declare-fun apply!9013 (TokenValueInjection!10908 BalanceConc!22404) TokenValue!5740)

(declare-fun seqFromList!4073 (List!37623) BalanceConc!22404)

(declare-fun size!28588 (List!37623) Int)

(assert (=> b!3570384 (= (maxPrefixOneRule!1806 thiss!18206 (rule!8204 (h!42921 (t!289018 tokens!494))) lt!1223602) (Some!7688 (tuple2!37411 (Token!10387 (apply!9013 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (seqFromList!4073 lt!1223602)) (rule!8204 (h!42921 (t!289018 tokens!494))) (size!28588 lt!1223602) lt!1223602) Nil!37499)))))

(declare-fun lt!1223595 () Unit!53483)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!899 (LexerInterface!5099 List!37624 List!37623 List!37623 List!37623 Rule!10820) Unit!53483)

(assert (=> b!3570384 (= lt!1223595 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!899 thiss!18206 rules!2135 lt!1223602 lt!1223602 Nil!37499 (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(declare-fun e!2208682 () Bool)

(assert (=> b!3570384 e!2208682))

(declare-fun res!1439828 () Bool)

(assert (=> b!3570384 (=> (not res!1439828) (not e!2208682))))

(declare-datatypes ((Option!7690 0))(
  ( (None!7689) (Some!7689 (v!37295 Rule!10820)) )
))
(declare-fun lt!1223625 () Option!7690)

(declare-fun isDefined!5933 (Option!7690) Bool)

(assert (=> b!3570384 (= res!1439828 (isDefined!5933 lt!1223625))))

(declare-fun getRuleFromTag!1153 (LexerInterface!5099 List!37624 String!42034) Option!7690)

(assert (=> b!3570384 (= lt!1223625 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun lt!1223607 () Unit!53483)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1153 (LexerInterface!5099 List!37624 List!37623 Token!10386) Unit!53483)

(assert (=> b!3570384 (= lt!1223607 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1153 thiss!18206 rules!2135 lt!1223602 (h!42921 (t!289018 tokens!494))))))

(declare-fun lt!1223585 () Bool)

(assert (=> b!3570384 lt!1223585))

(declare-fun lt!1223604 () Unit!53483)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1088 (LexerInterface!5099 List!37624 List!37625 Token!10386) Unit!53483)

(assert (=> b!3570384 (= lt!1223604 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1088 thiss!18206 rules!2135 tokens!494 (h!42921 (t!289018 tokens!494))))))

(declare-fun lt!1223606 () List!37623)

(declare-fun lt!1223616 () List!37623)

(declare-fun maxPrefix!2639 (LexerInterface!5099 List!37624 List!37623) Option!7689)

(assert (=> b!3570384 (= (maxPrefix!2639 thiss!18206 rules!2135 lt!1223606) (Some!7688 (tuple2!37411 (h!42921 tokens!494) lt!1223616)))))

(declare-fun lt!1223627 () Unit!53483)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!266 (LexerInterface!5099 List!37624 Token!10386 Rule!10820 List!37623 Rule!10820) Unit!53483)

(assert (=> b!3570384 (= lt!1223627 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!266 thiss!18206 rules!2135 (h!42921 tokens!494) (rule!8204 (h!42921 tokens!494)) lt!1223616 (rule!8204 separatorToken!241)))))

(declare-fun lt!1223634 () C!20724)

(assert (=> b!3570384 (not (contains!7096 (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494)))) lt!1223634))))

(declare-fun lt!1223608 () Unit!53483)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!310 (LexerInterface!5099 List!37624 List!37624 Rule!10820 Rule!10820 C!20724) Unit!53483)

(assert (=> b!3570384 (= lt!1223608 (lemmaNonSepRuleNotContainsCharContainedInASepRule!310 thiss!18206 rules!2135 rules!2135 (rule!8204 (h!42921 tokens!494)) (rule!8204 separatorToken!241) lt!1223634))))

(declare-fun lt!1223601 () Unit!53483)

(declare-fun forallContained!1457 (List!37625 Int Token!10386) Unit!53483)

(assert (=> b!3570384 (= lt!1223601 (forallContained!1457 tokens!494 lambda!123451 (h!42921 (t!289018 tokens!494))))))

(declare-fun lt!1223600 () Bool)

(assert (=> b!3570384 (= lt!1223585 (not lt!1223600))))

(declare-fun rulesProduceIndividualToken!2591 (LexerInterface!5099 List!37624 Token!10386) Bool)

(assert (=> b!3570384 (= lt!1223585 (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 (h!42921 (t!289018 tokens!494))))))

(assert (=> b!3570384 (= lt!1223600 e!2208687)))

(declare-fun res!1439841 () Bool)

(assert (=> b!3570384 (=> res!1439841 e!2208687)))

(declare-fun size!28589 (BalanceConc!22406) Int)

(assert (=> b!3570384 (= res!1439841 (not (= (size!28589 (_1!21838 lt!1223603)) 1)))))

(declare-fun lt!1223623 () BalanceConc!22404)

(declare-fun lex!2425 (LexerInterface!5099 List!37624 BalanceConc!22404) tuple2!37408)

(assert (=> b!3570384 (= lt!1223603 (lex!2425 thiss!18206 rules!2135 lt!1223623))))

(declare-fun lt!1223582 () BalanceConc!22406)

(declare-fun printTailRec!1594 (LexerInterface!5099 BalanceConc!22406 Int BalanceConc!22404) BalanceConc!22404)

(assert (=> b!3570384 (= lt!1223623 (printTailRec!1594 thiss!18206 lt!1223582 0 (BalanceConc!22405 Empty!11395)))))

(declare-fun print!2164 (LexerInterface!5099 BalanceConc!22406) BalanceConc!22404)

(assert (=> b!3570384 (= lt!1223623 (print!2164 thiss!18206 lt!1223582))))

(declare-fun singletonSeq!2606 (Token!10386) BalanceConc!22406)

(assert (=> b!3570384 (= lt!1223582 (singletonSeq!2606 (h!42921 (t!289018 tokens!494))))))

(assert (=> b!3570384 e!2208697))

(declare-fun res!1439819 () Bool)

(assert (=> b!3570384 (=> (not res!1439819) (not e!2208697))))

(assert (=> b!3570384 (= res!1439819 (= (size!28589 (_1!21838 lt!1223593)) 1))))

(declare-fun lt!1223587 () BalanceConc!22404)

(assert (=> b!3570384 (= lt!1223593 (lex!2425 thiss!18206 rules!2135 lt!1223587))))

(declare-fun lt!1223586 () BalanceConc!22406)

(assert (=> b!3570384 (= lt!1223587 (printTailRec!1594 thiss!18206 lt!1223586 0 (BalanceConc!22405 Empty!11395)))))

(assert (=> b!3570384 (= lt!1223587 (print!2164 thiss!18206 lt!1223586))))

(assert (=> b!3570384 (= lt!1223586 (singletonSeq!2606 separatorToken!241))))

(declare-fun lt!1223624 () Unit!53483)

(declare-fun e!2208673 () Unit!53483)

(assert (=> b!3570384 (= lt!1223624 e!2208673)))

(declare-fun c!618701 () Bool)

(assert (=> b!3570384 (= c!618701 (not (contains!7096 lt!1223584 lt!1223634)))))

(declare-fun lt!1223614 () List!37623)

(assert (=> b!3570384 (= lt!1223634 (head!7439 lt!1223614))))

(assert (=> b!3570384 (= lt!1223584 (usedCharacters!744 (regex!5510 (rule!8204 separatorToken!241))))))

(declare-fun e!2208674 () Bool)

(assert (=> b!3570384 e!2208674))

(declare-fun res!1439843 () Bool)

(assert (=> b!3570384 (=> (not res!1439843) (not e!2208674))))

(declare-fun lt!1223633 () Option!7690)

(assert (=> b!3570384 (= res!1439843 (isDefined!5933 lt!1223633))))

(assert (=> b!3570384 (= lt!1223633 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 separatorToken!241))))))

(declare-fun lt!1223612 () Unit!53483)

(assert (=> b!3570384 (= lt!1223612 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1153 thiss!18206 rules!2135 lt!1223614 separatorToken!241))))

(declare-fun lt!1223629 () List!37623)

(declare-fun lt!1223631 () BalanceConc!22404)

(assert (=> b!3570384 (= (maxPrefixOneRule!1806 thiss!18206 (rule!8204 (h!42921 tokens!494)) lt!1223629) (Some!7688 (tuple2!37411 (Token!10387 (apply!9013 (transformation!5510 (rule!8204 (h!42921 tokens!494))) lt!1223631) (rule!8204 (h!42921 tokens!494)) (size!28588 lt!1223629) lt!1223629) Nil!37499)))))

(declare-fun lt!1223613 () Unit!53483)

(assert (=> b!3570384 (= lt!1223613 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!899 thiss!18206 rules!2135 lt!1223629 lt!1223629 Nil!37499 (rule!8204 (h!42921 tokens!494))))))

(declare-fun e!2208678 () Bool)

(assert (=> b!3570384 e!2208678))

(declare-fun res!1439844 () Bool)

(assert (=> b!3570384 (=> (not res!1439844) (not e!2208678))))

(declare-fun lt!1223589 () Option!7690)

(assert (=> b!3570384 (= res!1439844 (isDefined!5933 lt!1223589))))

(assert (=> b!3570384 (= lt!1223589 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 tokens!494)))))))

(declare-fun lt!1223622 () Unit!53483)

(assert (=> b!3570384 (= lt!1223622 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1153 thiss!18206 rules!2135 lt!1223629 (h!42921 tokens!494)))))

(declare-fun lt!1223619 () Unit!53483)

(assert (=> b!3570384 (= lt!1223619 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1088 thiss!18206 rules!2135 tokens!494 (h!42921 tokens!494)))))

(declare-fun b!3570385 () Bool)

(declare-fun e!2208683 () Bool)

(assert (=> b!3570385 (= e!2208678 e!2208683)))

(declare-fun res!1439836 () Bool)

(assert (=> b!3570385 (=> (not res!1439836) (not e!2208683))))

(declare-fun lt!1223583 () Rule!10820)

(declare-fun matchR!4853 (Regex!10269 List!37623) Bool)

(assert (=> b!3570385 (= res!1439836 (matchR!4853 (regex!5510 lt!1223583) lt!1223629))))

(declare-fun get!12069 (Option!7690) Rule!10820)

(assert (=> b!3570385 (= lt!1223583 (get!12069 lt!1223589))))

(declare-fun b!3570386 () Bool)

(declare-fun res!1439839 () Bool)

(declare-fun e!2208685 () Bool)

(assert (=> b!3570386 (=> (not res!1439839) (not e!2208685))))

(assert (=> b!3570386 (= res!1439839 (and (not ((_ is Nil!37501) tokens!494)) (not ((_ is Nil!37501) (t!289018 tokens!494)))))))

(declare-fun b!3570387 () Bool)

(declare-fun e!2208705 () Bool)

(assert (=> b!3570387 (= e!2208685 (not e!2208705))))

(declare-fun res!1439849 () Bool)

(assert (=> b!3570387 (=> res!1439849 e!2208705)))

(declare-fun lt!1223588 () List!37623)

(declare-fun lt!1223598 () List!37623)

(assert (=> b!3570387 (= res!1439849 (not (= lt!1223588 lt!1223598)))))

(declare-fun printList!1647 (LexerInterface!5099 List!37625) List!37623)

(assert (=> b!3570387 (= lt!1223598 (printList!1647 thiss!18206 (Cons!37501 (h!42921 tokens!494) Nil!37501)))))

(declare-fun lt!1223620 () BalanceConc!22404)

(declare-fun list!13755 (BalanceConc!22404) List!37623)

(assert (=> b!3570387 (= lt!1223588 (list!13755 lt!1223620))))

(declare-fun lt!1223610 () BalanceConc!22406)

(assert (=> b!3570387 (= lt!1223620 (printTailRec!1594 thiss!18206 lt!1223610 0 (BalanceConc!22405 Empty!11395)))))

(assert (=> b!3570387 (= lt!1223620 (print!2164 thiss!18206 lt!1223610))))

(assert (=> b!3570387 (= lt!1223610 (singletonSeq!2606 (h!42921 tokens!494)))))

(declare-fun b!3570388 () Bool)

(declare-fun res!1439824 () Bool)

(assert (=> b!3570388 (=> (not res!1439824) (not e!2208685))))

(declare-fun rulesProduceEachTokenIndividually!1550 (LexerInterface!5099 List!37624 BalanceConc!22406) Bool)

(declare-fun seqFromList!4074 (List!37625) BalanceConc!22406)

(assert (=> b!3570388 (= res!1439824 (rulesProduceEachTokenIndividually!1550 thiss!18206 rules!2135 (seqFromList!4074 tokens!494)))))

(declare-fun b!3570389 () Bool)

(declare-fun e!2208684 () Bool)

(declare-fun e!2208681 () Bool)

(assert (=> b!3570389 (= e!2208684 e!2208681)))

(declare-fun res!1439837 () Bool)

(assert (=> b!3570389 (=> res!1439837 e!2208681)))

(declare-fun lt!1223594 () List!37623)

(declare-fun lt!1223628 () List!37623)

(assert (=> b!3570389 (= res!1439837 (not (= lt!1223594 lt!1223628)))))

(declare-fun lt!1223630 () List!37623)

(declare-fun ++!9323 (List!37623 List!37623) List!37623)

(assert (=> b!3570389 (= lt!1223628 (++!9323 (++!9323 lt!1223629 lt!1223614) lt!1223630))))

(declare-fun b!3570390 () Bool)

(declare-fun e!2208689 () Bool)

(assert (=> b!3570390 (= e!2208682 e!2208689)))

(declare-fun res!1439832 () Bool)

(assert (=> b!3570390 (=> (not res!1439832) (not e!2208689))))

(declare-fun lt!1223609 () Rule!10820)

(assert (=> b!3570390 (= res!1439832 (matchR!4853 (regex!5510 lt!1223609) lt!1223602))))

(assert (=> b!3570390 (= lt!1223609 (get!12069 lt!1223625))))

(declare-fun b!3570391 () Bool)

(declare-fun res!1439840 () Bool)

(assert (=> b!3570391 (=> (not res!1439840) (not e!2208685))))

(declare-fun isEmpty!22032 (List!37624) Bool)

(assert (=> b!3570391 (= res!1439840 (not (isEmpty!22032 rules!2135)))))

(declare-fun b!3570392 () Bool)

(declare-fun Unit!53485 () Unit!53483)

(assert (=> b!3570392 (= e!2208673 Unit!53485)))

(declare-fun b!3570393 () Bool)

(declare-fun e!2208690 () Bool)

(declare-fun e!2208704 () Bool)

(declare-fun tp!1093643 () Bool)

(assert (=> b!3570393 (= e!2208690 (and e!2208704 tp!1093643))))

(declare-fun b!3570394 () Bool)

(assert (=> b!3570394 (= e!2208681 e!2208679)))

(declare-fun res!1439825 () Bool)

(assert (=> b!3570394 (=> res!1439825 e!2208679)))

(assert (=> b!3570394 (= res!1439825 (not (= lt!1223594 lt!1223606)))))

(assert (=> b!3570394 (= lt!1223628 lt!1223606)))

(assert (=> b!3570394 (= lt!1223606 (++!9323 lt!1223629 lt!1223616))))

(declare-fun lt!1223599 () Unit!53483)

(declare-fun lemmaConcatAssociativity!2050 (List!37623 List!37623 List!37623) Unit!53483)

(assert (=> b!3570394 (= lt!1223599 (lemmaConcatAssociativity!2050 lt!1223629 lt!1223614 lt!1223630))))

(declare-fun e!2208693 () Bool)

(declare-fun e!2208695 () Bool)

(declare-fun tp!1093644 () Bool)

(declare-fun b!3570395 () Bool)

(declare-fun inv!21 (TokenValue!5740) Bool)

(assert (=> b!3570395 (= e!2208693 (and (inv!21 (value!177495 (h!42921 tokens!494))) e!2208695 tp!1093644))))

(declare-fun b!3570396 () Bool)

(declare-fun res!1439820 () Bool)

(assert (=> b!3570396 (=> (not res!1439820) (not e!2208685))))

(assert (=> b!3570396 (= res!1439820 (isSeparator!5510 (rule!8204 separatorToken!241)))))

(declare-fun b!3570397 () Bool)

(declare-fun e!2208672 () Bool)

(declare-fun e!2208701 () Bool)

(assert (=> b!3570397 (= e!2208672 e!2208701)))

(declare-fun res!1439833 () Bool)

(assert (=> b!3570397 (=> res!1439833 e!2208701)))

(declare-fun isEmpty!22033 (BalanceConc!22406) Bool)

(assert (=> b!3570397 (= res!1439833 (isEmpty!22033 (_1!21838 (lex!2425 thiss!18206 rules!2135 lt!1223631))))))

(assert (=> b!3570397 (= lt!1223631 (seqFromList!4073 lt!1223629))))

(declare-fun b!3570398 () Bool)

(declare-fun e!2208676 () Bool)

(assert (=> b!3570398 (= e!2208671 e!2208676)))

(declare-fun res!1439815 () Bool)

(assert (=> b!3570398 (=> res!1439815 e!2208676)))

(assert (=> b!3570398 (= res!1439815 (not (matchR!4853 (regex!5510 (rule!8204 separatorToken!241)) lt!1223614)))))

(declare-fun ruleValid!1794 (LexerInterface!5099 Rule!10820) Bool)

(assert (=> b!3570398 (ruleValid!1794 thiss!18206 (rule!8204 separatorToken!241))))

(declare-fun lt!1223592 () Unit!53483)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!960 (LexerInterface!5099 Rule!10820 List!37624) Unit!53483)

(assert (=> b!3570398 (= lt!1223592 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!960 thiss!18206 (rule!8204 separatorToken!241) rules!2135))))

(declare-fun b!3570399 () Bool)

(assert (=> b!3570399 (= e!2208705 e!2208672)))

(declare-fun res!1439850 () Bool)

(assert (=> b!3570399 (=> res!1439850 e!2208672)))

(assert (=> b!3570399 (= res!1439850 (or (not (= lt!1223598 lt!1223629)) (not (= lt!1223588 lt!1223629))))))

(declare-fun charsOf!3524 (Token!10386) BalanceConc!22404)

(assert (=> b!3570399 (= lt!1223629 (list!13755 (charsOf!3524 (h!42921 tokens!494))))))

(declare-fun b!3570400 () Bool)

(declare-fun res!1439847 () Bool)

(assert (=> b!3570400 (=> res!1439847 e!2208676)))

(assert (=> b!3570400 (= res!1439847 (isEmpty!22031 lt!1223630))))

(declare-fun b!3570401 () Bool)

(declare-fun e!2208686 () Bool)

(declare-fun lt!1223597 () C!20724)

(assert (=> b!3570401 (= e!2208686 (contains!7096 lt!1223618 lt!1223597))))

(declare-fun b!3570402 () Bool)

(declare-fun res!1439831 () Bool)

(assert (=> b!3570402 (=> res!1439831 e!2208672)))

(assert (=> b!3570402 (= res!1439831 (not (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 (h!42921 tokens!494))))))

(declare-fun b!3570403 () Bool)

(declare-fun e!2208691 () Bool)

(declare-fun lt!1223615 () Rule!10820)

(assert (=> b!3570403 (= e!2208691 (= (rule!8204 separatorToken!241) lt!1223615))))

(declare-fun e!2208709 () Bool)

(assert (=> b!3570404 (= e!2208709 (and tp!1093651 tp!1093645))))

(declare-fun b!3570405 () Bool)

(declare-fun Unit!53486 () Unit!53483)

(assert (=> b!3570405 (= e!2208700 Unit!53486)))

(declare-fun res!1439826 () Bool)

(assert (=> start!330714 (=> (not res!1439826) (not e!2208685))))

(assert (=> start!330714 (= res!1439826 ((_ is Lexer!5097) thiss!18206))))

(assert (=> start!330714 e!2208685))

(assert (=> start!330714 true))

(assert (=> start!330714 e!2208690))

(declare-fun e!2208702 () Bool)

(assert (=> start!330714 e!2208702))

(declare-fun e!2208708 () Bool)

(declare-fun inv!50772 (Token!10386) Bool)

(assert (=> start!330714 (and (inv!50772 separatorToken!241) e!2208708)))

(declare-fun b!3570406 () Bool)

(declare-fun res!1439845 () Bool)

(assert (=> b!3570406 (=> res!1439845 e!2208687)))

(assert (=> b!3570406 (= res!1439845 (not (= (apply!9012 (_1!21838 lt!1223603) 0) (h!42921 (t!289018 tokens!494)))))))

(declare-fun b!3570407 () Bool)

(assert (=> b!3570407 (= e!2208674 e!2208691)))

(declare-fun res!1439848 () Bool)

(assert (=> b!3570407 (=> (not res!1439848) (not e!2208691))))

(assert (=> b!3570407 (= res!1439848 (matchR!4853 (regex!5510 lt!1223615) lt!1223614))))

(assert (=> b!3570407 (= lt!1223615 (get!12069 lt!1223633))))

(declare-fun b!3570408 () Bool)

(declare-fun res!1439818 () Bool)

(assert (=> b!3570408 (=> (not res!1439818) (not e!2208685))))

(assert (=> b!3570408 (= res!1439818 (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3570409 () Bool)

(declare-fun e!2208677 () Bool)

(assert (=> b!3570409 (= e!2208677 e!2208671)))

(declare-fun res!1439842 () Bool)

(assert (=> b!3570409 (=> res!1439842 e!2208671)))

(assert (=> b!3570409 (= res!1439842 (not (= (_1!21839 lt!1223632) separatorToken!241)))))

(declare-fun lt!1223621 () Option!7689)

(declare-fun get!12070 (Option!7689) tuple2!37410)

(assert (=> b!3570409 (= lt!1223632 (get!12070 lt!1223621))))

(declare-fun b!3570410 () Bool)

(declare-fun tp!1093654 () Bool)

(assert (=> b!3570410 (= e!2208702 (and (inv!50772 (h!42921 tokens!494)) e!2208693 tp!1093654))))

(declare-fun tp!1093653 () Bool)

(declare-fun b!3570411 () Bool)

(declare-fun e!2208692 () Bool)

(declare-fun inv!50769 (String!42034) Bool)

(declare-fun inv!50773 (TokenValueInjection!10908) Bool)

(assert (=> b!3570411 (= e!2208695 (and tp!1093653 (inv!50769 (tag!6168 (rule!8204 (h!42921 tokens!494)))) (inv!50773 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) e!2208692))))

(declare-fun e!2208694 () Bool)

(assert (=> b!3570412 (= e!2208694 (and tp!1093650 tp!1093649))))

(declare-fun b!3570413 () Bool)

(assert (=> b!3570413 (= e!2208676 e!2208686)))

(declare-fun res!1439827 () Bool)

(assert (=> b!3570413 (=> res!1439827 e!2208686)))

(assert (=> b!3570413 (= res!1439827 (contains!7096 lt!1223584 lt!1223597))))

(assert (=> b!3570413 (= lt!1223597 (head!7439 lt!1223630))))

(declare-fun b!3570414 () Bool)

(declare-fun Unit!53487 () Unit!53483)

(assert (=> b!3570414 (= e!2208673 Unit!53487)))

(declare-fun lt!1223611 () Unit!53483)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!568 (Regex!10269 List!37623 C!20724) Unit!53483)

(assert (=> b!3570414 (= lt!1223611 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!568 (regex!5510 (rule!8204 separatorToken!241)) lt!1223614 lt!1223634))))

(declare-fun res!1439829 () Bool)

(assert (=> b!3570414 (= res!1439829 (not (matchR!4853 (regex!5510 (rule!8204 separatorToken!241)) lt!1223614)))))

(declare-fun e!2208707 () Bool)

(assert (=> b!3570414 (=> (not res!1439829) (not e!2208707))))

(assert (=> b!3570414 e!2208707))

(declare-fun b!3570415 () Bool)

(assert (=> b!3570415 (= e!2208683 (= (rule!8204 (h!42921 tokens!494)) lt!1223583))))

(declare-fun b!3570416 () Bool)

(declare-fun tp!1093647 () Bool)

(assert (=> b!3570416 (= e!2208704 (and tp!1093647 (inv!50769 (tag!6168 (h!42920 rules!2135))) (inv!50773 (transformation!5510 (h!42920 rules!2135))) e!2208709))))

(declare-fun b!3570417 () Bool)

(assert (=> b!3570417 (= e!2208703 e!2208677)))

(declare-fun res!1439838 () Bool)

(assert (=> b!3570417 (=> res!1439838 e!2208677)))

(declare-fun isDefined!5934 (Option!7689) Bool)

(assert (=> b!3570417 (= res!1439838 (not (isDefined!5934 lt!1223621)))))

(assert (=> b!3570417 (= lt!1223621 (maxPrefix!2639 thiss!18206 rules!2135 lt!1223614))))

(declare-fun b!3570418 () Bool)

(declare-fun Unit!53488 () Unit!53483)

(assert (=> b!3570418 (= e!2208700 Unit!53488)))

(declare-fun lt!1223626 () Unit!53483)

(assert (=> b!3570418 (= lt!1223626 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!568 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602 lt!1223591))))

(declare-fun res!1439830 () Bool)

(assert (=> b!3570418 (= res!1439830 (not (matchR!4853 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602)))))

(declare-fun e!2208696 () Bool)

(assert (=> b!3570418 (=> (not res!1439830) (not e!2208696))))

(assert (=> b!3570418 e!2208696))

(assert (=> b!3570419 (= e!2208692 (and tp!1093652 tp!1093642))))

(declare-fun b!3570420 () Bool)

(assert (=> b!3570420 (= e!2208696 false)))

(declare-fun b!3570421 () Bool)

(assert (=> b!3570421 (= e!2208697 (isEmpty!22030 (_2!21838 lt!1223593)))))

(declare-fun b!3570422 () Bool)

(declare-fun res!1439846 () Bool)

(assert (=> b!3570422 (=> (not res!1439846) (not e!2208685))))

(declare-fun sepAndNonSepRulesDisjointChars!1704 (List!37624 List!37624) Bool)

(assert (=> b!3570422 (= res!1439846 (sepAndNonSepRulesDisjointChars!1704 rules!2135 rules!2135))))

(declare-fun b!3570423 () Bool)

(declare-fun res!1439851 () Bool)

(assert (=> b!3570423 (=> res!1439851 e!2208703)))

(assert (=> b!3570423 (= res!1439851 (not (contains!7095 rules!2135 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun res!1439817 () Bool)

(assert (=> b!3570424 (=> (not res!1439817) (not e!2208685))))

(declare-fun forall!8110 (List!37625 Int) Bool)

(assert (=> b!3570424 (= res!1439817 (forall!8110 tokens!494 lambda!123450))))

(declare-fun b!3570425 () Bool)

(declare-fun e!2208670 () Bool)

(assert (=> b!3570425 (= e!2208670 e!2208684)))

(declare-fun res!1439816 () Bool)

(assert (=> b!3570425 (=> res!1439816 e!2208684)))

(declare-fun printWithSeparatorTokenList!386 (LexerInterface!5099 List!37625 Token!10386) List!37623)

(assert (=> b!3570425 (= res!1439816 (not (= lt!1223630 (++!9323 (++!9323 lt!1223602 lt!1223614) (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241)))))))

(assert (=> b!3570425 (= lt!1223602 (list!13755 (charsOf!3524 (h!42921 (t!289018 tokens!494)))))))

(assert (=> b!3570425 (= lt!1223616 (++!9323 lt!1223614 lt!1223630))))

(assert (=> b!3570425 (= lt!1223614 (list!13755 (charsOf!3524 separatorToken!241)))))

(assert (=> b!3570425 (= lt!1223630 (printWithSeparatorTokenList!386 thiss!18206 (t!289018 tokens!494) separatorToken!241))))

(assert (=> b!3570425 (= lt!1223594 (printWithSeparatorTokenList!386 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun tp!1093648 () Bool)

(declare-fun b!3570426 () Bool)

(declare-fun e!2208698 () Bool)

(assert (=> b!3570426 (= e!2208708 (and (inv!21 (value!177495 separatorToken!241)) e!2208698 tp!1093648))))

(declare-fun b!3570427 () Bool)

(declare-fun tp!1093646 () Bool)

(assert (=> b!3570427 (= e!2208698 (and tp!1093646 (inv!50769 (tag!6168 (rule!8204 separatorToken!241))) (inv!50773 (transformation!5510 (rule!8204 separatorToken!241))) e!2208694))))

(declare-fun b!3570428 () Bool)

(assert (=> b!3570428 (= e!2208701 e!2208670)))

(declare-fun res!1439835 () Bool)

(assert (=> b!3570428 (=> res!1439835 e!2208670)))

(assert (=> b!3570428 (= res!1439835 (or (isSeparator!5510 (rule!8204 (h!42921 tokens!494))) (isSeparator!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun lt!1223596 () Unit!53483)

(assert (=> b!3570428 (= lt!1223596 (forallContained!1457 tokens!494 lambda!123450 (h!42921 (t!289018 tokens!494))))))

(declare-fun lt!1223605 () Unit!53483)

(assert (=> b!3570428 (= lt!1223605 (forallContained!1457 tokens!494 lambda!123450 (h!42921 tokens!494)))))

(declare-fun b!3570429 () Bool)

(assert (=> b!3570429 (= e!2208707 false)))

(declare-fun b!3570430 () Bool)

(assert (=> b!3570430 (= e!2208689 (= (rule!8204 (h!42921 (t!289018 tokens!494))) lt!1223609))))

(declare-fun b!3570431 () Bool)

(declare-fun res!1439834 () Bool)

(assert (=> b!3570431 (=> (not res!1439834) (not e!2208685))))

(declare-fun rulesInvariant!4496 (LexerInterface!5099 List!37624) Bool)

(assert (=> b!3570431 (= res!1439834 (rulesInvariant!4496 thiss!18206 rules!2135))))

(assert (= (and start!330714 res!1439826) b!3570391))

(assert (= (and b!3570391 res!1439840) b!3570431))

(assert (= (and b!3570431 res!1439834) b!3570388))

(assert (= (and b!3570388 res!1439824) b!3570408))

(assert (= (and b!3570408 res!1439818) b!3570396))

(assert (= (and b!3570396 res!1439820) b!3570424))

(assert (= (and b!3570424 res!1439817) b!3570422))

(assert (= (and b!3570422 res!1439846) b!3570386))

(assert (= (and b!3570386 res!1439839) b!3570387))

(assert (= (and b!3570387 (not res!1439849)) b!3570399))

(assert (= (and b!3570399 (not res!1439850)) b!3570402))

(assert (= (and b!3570402 (not res!1439831)) b!3570397))

(assert (= (and b!3570397 (not res!1439833)) b!3570428))

(assert (= (and b!3570428 (not res!1439835)) b!3570425))

(assert (= (and b!3570425 (not res!1439816)) b!3570389))

(assert (= (and b!3570389 (not res!1439837)) b!3570394))

(assert (= (and b!3570394 (not res!1439825)) b!3570384))

(assert (= (and b!3570384 res!1439844) b!3570385))

(assert (= (and b!3570385 res!1439836) b!3570415))

(assert (= (and b!3570384 res!1439843) b!3570407))

(assert (= (and b!3570407 res!1439848) b!3570403))

(assert (= (and b!3570384 c!618701) b!3570414))

(assert (= (and b!3570384 (not c!618701)) b!3570392))

(assert (= (and b!3570414 res!1439829) b!3570429))

(assert (= (and b!3570384 res!1439819) b!3570382))

(assert (= (and b!3570382 res!1439823) b!3570421))

(assert (= (and b!3570384 (not res!1439841)) b!3570406))

(assert (= (and b!3570406 (not res!1439845)) b!3570381))

(assert (= (and b!3570384 res!1439828) b!3570390))

(assert (= (and b!3570390 res!1439832) b!3570430))

(assert (= (and b!3570384 c!618700) b!3570418))

(assert (= (and b!3570384 (not c!618700)) b!3570405))

(assert (= (and b!3570418 res!1439830) b!3570420))

(assert (= (and b!3570384 (not res!1439821)) b!3570423))

(assert (= (and b!3570423 (not res!1439851)) b!3570417))

(assert (= (and b!3570417 (not res!1439838)) b!3570409))

(assert (= (and b!3570409 (not res!1439842)) b!3570383))

(assert (= (and b!3570383 (not res!1439822)) b!3570398))

(assert (= (and b!3570398 (not res!1439815)) b!3570400))

(assert (= (and b!3570400 (not res!1439847)) b!3570413))

(assert (= (and b!3570413 (not res!1439827)) b!3570401))

(assert (= b!3570416 b!3570404))

(assert (= b!3570393 b!3570416))

(assert (= (and start!330714 ((_ is Cons!37500) rules!2135)) b!3570393))

(assert (= b!3570411 b!3570419))

(assert (= b!3570395 b!3570411))

(assert (= b!3570410 b!3570395))

(assert (= (and start!330714 ((_ is Cons!37501) tokens!494)) b!3570410))

(assert (= b!3570427 b!3570412))

(assert (= b!3570426 b!3570427))

(assert (= start!330714 b!3570426))

(declare-fun m!4058635 () Bool)

(assert (=> b!3570408 m!4058635))

(declare-fun m!4058637 () Bool)

(assert (=> b!3570381 m!4058637))

(declare-fun m!4058639 () Bool)

(assert (=> b!3570390 m!4058639))

(declare-fun m!4058641 () Bool)

(assert (=> b!3570390 m!4058641))

(declare-fun m!4058643 () Bool)

(assert (=> b!3570411 m!4058643))

(declare-fun m!4058645 () Bool)

(assert (=> b!3570411 m!4058645))

(declare-fun m!4058647 () Bool)

(assert (=> b!3570406 m!4058647))

(declare-fun m!4058649 () Bool)

(assert (=> b!3570389 m!4058649))

(assert (=> b!3570389 m!4058649))

(declare-fun m!4058651 () Bool)

(assert (=> b!3570389 m!4058651))

(declare-fun m!4058653 () Bool)

(assert (=> b!3570407 m!4058653))

(declare-fun m!4058655 () Bool)

(assert (=> b!3570407 m!4058655))

(declare-fun m!4058657 () Bool)

(assert (=> start!330714 m!4058657))

(declare-fun m!4058659 () Bool)

(assert (=> b!3570421 m!4058659))

(declare-fun m!4058661 () Bool)

(assert (=> b!3570414 m!4058661))

(declare-fun m!4058663 () Bool)

(assert (=> b!3570414 m!4058663))

(declare-fun m!4058665 () Bool)

(assert (=> b!3570400 m!4058665))

(declare-fun m!4058667 () Bool)

(assert (=> b!3570425 m!4058667))

(declare-fun m!4058669 () Bool)

(assert (=> b!3570425 m!4058669))

(declare-fun m!4058671 () Bool)

(assert (=> b!3570425 m!4058671))

(declare-fun m!4058673 () Bool)

(assert (=> b!3570425 m!4058673))

(assert (=> b!3570425 m!4058667))

(declare-fun m!4058675 () Bool)

(assert (=> b!3570425 m!4058675))

(declare-fun m!4058677 () Bool)

(assert (=> b!3570425 m!4058677))

(assert (=> b!3570425 m!4058669))

(declare-fun m!4058679 () Bool)

(assert (=> b!3570425 m!4058679))

(declare-fun m!4058681 () Bool)

(assert (=> b!3570425 m!4058681))

(assert (=> b!3570425 m!4058677))

(declare-fun m!4058683 () Bool)

(assert (=> b!3570425 m!4058683))

(declare-fun m!4058685 () Bool)

(assert (=> b!3570425 m!4058685))

(assert (=> b!3570425 m!4058681))

(declare-fun m!4058687 () Bool)

(assert (=> b!3570383 m!4058687))

(declare-fun m!4058689 () Bool)

(assert (=> b!3570416 m!4058689))

(declare-fun m!4058691 () Bool)

(assert (=> b!3570416 m!4058691))

(assert (=> b!3570398 m!4058663))

(declare-fun m!4058693 () Bool)

(assert (=> b!3570398 m!4058693))

(declare-fun m!4058695 () Bool)

(assert (=> b!3570398 m!4058695))

(declare-fun m!4058697 () Bool)

(assert (=> b!3570388 m!4058697))

(assert (=> b!3570388 m!4058697))

(declare-fun m!4058699 () Bool)

(assert (=> b!3570388 m!4058699))

(declare-fun m!4058701 () Bool)

(assert (=> b!3570417 m!4058701))

(declare-fun m!4058703 () Bool)

(assert (=> b!3570417 m!4058703))

(declare-fun m!4058705 () Bool)

(assert (=> b!3570424 m!4058705))

(declare-fun m!4058707 () Bool)

(assert (=> b!3570423 m!4058707))

(declare-fun m!4058709 () Bool)

(assert (=> b!3570399 m!4058709))

(assert (=> b!3570399 m!4058709))

(declare-fun m!4058711 () Bool)

(assert (=> b!3570399 m!4058711))

(declare-fun m!4058713 () Bool)

(assert (=> b!3570391 m!4058713))

(declare-fun m!4058715 () Bool)

(assert (=> b!3570401 m!4058715))

(declare-fun m!4058717 () Bool)

(assert (=> b!3570385 m!4058717))

(declare-fun m!4058719 () Bool)

(assert (=> b!3570385 m!4058719))

(declare-fun m!4058721 () Bool)

(assert (=> b!3570418 m!4058721))

(declare-fun m!4058723 () Bool)

(assert (=> b!3570418 m!4058723))

(declare-fun m!4058725 () Bool)

(assert (=> b!3570409 m!4058725))

(declare-fun m!4058727 () Bool)

(assert (=> b!3570384 m!4058727))

(declare-fun m!4058729 () Bool)

(assert (=> b!3570384 m!4058729))

(declare-fun m!4058731 () Bool)

(assert (=> b!3570384 m!4058731))

(declare-fun m!4058733 () Bool)

(assert (=> b!3570384 m!4058733))

(declare-fun m!4058735 () Bool)

(assert (=> b!3570384 m!4058735))

(declare-fun m!4058737 () Bool)

(assert (=> b!3570384 m!4058737))

(declare-fun m!4058739 () Bool)

(assert (=> b!3570384 m!4058739))

(declare-fun m!4058741 () Bool)

(assert (=> b!3570384 m!4058741))

(declare-fun m!4058743 () Bool)

(assert (=> b!3570384 m!4058743))

(declare-fun m!4058745 () Bool)

(assert (=> b!3570384 m!4058745))

(declare-fun m!4058747 () Bool)

(assert (=> b!3570384 m!4058747))

(declare-fun m!4058749 () Bool)

(assert (=> b!3570384 m!4058749))

(declare-fun m!4058751 () Bool)

(assert (=> b!3570384 m!4058751))

(declare-fun m!4058753 () Bool)

(assert (=> b!3570384 m!4058753))

(declare-fun m!4058755 () Bool)

(assert (=> b!3570384 m!4058755))

(declare-fun m!4058757 () Bool)

(assert (=> b!3570384 m!4058757))

(declare-fun m!4058759 () Bool)

(assert (=> b!3570384 m!4058759))

(declare-fun m!4058761 () Bool)

(assert (=> b!3570384 m!4058761))

(declare-fun m!4058763 () Bool)

(assert (=> b!3570384 m!4058763))

(declare-fun m!4058765 () Bool)

(assert (=> b!3570384 m!4058765))

(declare-fun m!4058767 () Bool)

(assert (=> b!3570384 m!4058767))

(declare-fun m!4058769 () Bool)

(assert (=> b!3570384 m!4058769))

(declare-fun m!4058771 () Bool)

(assert (=> b!3570384 m!4058771))

(declare-fun m!4058773 () Bool)

(assert (=> b!3570384 m!4058773))

(declare-fun m!4058775 () Bool)

(assert (=> b!3570384 m!4058775))

(declare-fun m!4058777 () Bool)

(assert (=> b!3570384 m!4058777))

(declare-fun m!4058779 () Bool)

(assert (=> b!3570384 m!4058779))

(declare-fun m!4058781 () Bool)

(assert (=> b!3570384 m!4058781))

(declare-fun m!4058783 () Bool)

(assert (=> b!3570384 m!4058783))

(declare-fun m!4058785 () Bool)

(assert (=> b!3570384 m!4058785))

(declare-fun m!4058787 () Bool)

(assert (=> b!3570384 m!4058787))

(declare-fun m!4058789 () Bool)

(assert (=> b!3570384 m!4058789))

(declare-fun m!4058791 () Bool)

(assert (=> b!3570384 m!4058791))

(declare-fun m!4058793 () Bool)

(assert (=> b!3570384 m!4058793))

(declare-fun m!4058795 () Bool)

(assert (=> b!3570384 m!4058795))

(declare-fun m!4058797 () Bool)

(assert (=> b!3570384 m!4058797))

(declare-fun m!4058799 () Bool)

(assert (=> b!3570384 m!4058799))

(assert (=> b!3570384 m!4058727))

(declare-fun m!4058801 () Bool)

(assert (=> b!3570384 m!4058801))

(declare-fun m!4058803 () Bool)

(assert (=> b!3570384 m!4058803))

(declare-fun m!4058805 () Bool)

(assert (=> b!3570384 m!4058805))

(declare-fun m!4058807 () Bool)

(assert (=> b!3570384 m!4058807))

(assert (=> b!3570384 m!4058745))

(declare-fun m!4058809 () Bool)

(assert (=> b!3570384 m!4058809))

(declare-fun m!4058811 () Bool)

(assert (=> b!3570384 m!4058811))

(declare-fun m!4058813 () Bool)

(assert (=> b!3570384 m!4058813))

(declare-fun m!4058815 () Bool)

(assert (=> b!3570384 m!4058815))

(declare-fun m!4058817 () Bool)

(assert (=> b!3570384 m!4058817))

(declare-fun m!4058819 () Bool)

(assert (=> b!3570431 m!4058819))

(declare-fun m!4058821 () Bool)

(assert (=> b!3570413 m!4058821))

(declare-fun m!4058823 () Bool)

(assert (=> b!3570413 m!4058823))

(declare-fun m!4058825 () Bool)

(assert (=> b!3570402 m!4058825))

(declare-fun m!4058827 () Bool)

(assert (=> b!3570394 m!4058827))

(declare-fun m!4058829 () Bool)

(assert (=> b!3570394 m!4058829))

(declare-fun m!4058831 () Bool)

(assert (=> b!3570428 m!4058831))

(declare-fun m!4058833 () Bool)

(assert (=> b!3570428 m!4058833))

(declare-fun m!4058835 () Bool)

(assert (=> b!3570397 m!4058835))

(declare-fun m!4058837 () Bool)

(assert (=> b!3570397 m!4058837))

(declare-fun m!4058839 () Bool)

(assert (=> b!3570397 m!4058839))

(declare-fun m!4058841 () Bool)

(assert (=> b!3570387 m!4058841))

(declare-fun m!4058843 () Bool)

(assert (=> b!3570387 m!4058843))

(declare-fun m!4058845 () Bool)

(assert (=> b!3570387 m!4058845))

(declare-fun m!4058847 () Bool)

(assert (=> b!3570387 m!4058847))

(declare-fun m!4058849 () Bool)

(assert (=> b!3570387 m!4058849))

(declare-fun m!4058851 () Bool)

(assert (=> b!3570410 m!4058851))

(declare-fun m!4058853 () Bool)

(assert (=> b!3570426 m!4058853))

(declare-fun m!4058855 () Bool)

(assert (=> b!3570422 m!4058855))

(declare-fun m!4058857 () Bool)

(assert (=> b!3570382 m!4058857))

(declare-fun m!4058859 () Bool)

(assert (=> b!3570395 m!4058859))

(declare-fun m!4058861 () Bool)

(assert (=> b!3570427 m!4058861))

(declare-fun m!4058863 () Bool)

(assert (=> b!3570427 m!4058863))

(check-sat (not b!3570410) (not b_next!92117) (not b!3570407) b_and!256931 (not b!3570425) (not b_next!92113) (not b!3570382) (not b!3570422) (not b!3570423) b_and!256933 (not b!3570398) (not b!3570406) (not b!3570397) (not b!3570390) b_and!256927 (not b!3570391) (not start!330714) b_and!256929 (not b!3570393) (not b_next!92123) (not b!3570400) (not b!3570389) (not b!3570416) (not b!3570399) (not b_next!92121) (not b_next!92119) (not b!3570424) (not b!3570402) (not b!3570440) (not b!3570388) (not b!3570395) (not b!3570417) (not b!3570414) (not b!3570411) (not b!3570384) (not b!3570418) (not b!3570387) (not b!3570409) (not b!3570408) (not b!3570383) (not b!3570381) (not b!3570413) (not b!3570385) b_and!256925 (not b!3570394) b_and!256923 (not b!3570431) (not b!3570427) (not b_next!92115) (not b!3570428) (not b!3570426) (not b!3570401) (not b!3570421))
(check-sat b_and!256933 b_and!256927 b_and!256929 (not b_next!92123) (not b_next!92121) (not b_next!92119) (not b_next!92117) b_and!256931 b_and!256925 b_and!256923 (not b_next!92115) (not b_next!92113))
(get-model)

(declare-fun d!1052228 () Bool)

(declare-fun res!1439864 () Bool)

(declare-fun e!2208723 () Bool)

(assert (=> d!1052228 (=> res!1439864 e!2208723)))

(assert (=> d!1052228 (= res!1439864 ((_ is Nil!37501) tokens!494))))

(assert (=> d!1052228 (= (forall!8110 tokens!494 lambda!123450) e!2208723)))

(declare-fun b!3570449 () Bool)

(declare-fun e!2208724 () Bool)

(assert (=> b!3570449 (= e!2208723 e!2208724)))

(declare-fun res!1439865 () Bool)

(assert (=> b!3570449 (=> (not res!1439865) (not e!2208724))))

(declare-fun dynLambda!16102 (Int Token!10386) Bool)

(assert (=> b!3570449 (= res!1439865 (dynLambda!16102 lambda!123450 (h!42921 tokens!494)))))

(declare-fun b!3570450 () Bool)

(assert (=> b!3570450 (= e!2208724 (forall!8110 (t!289018 tokens!494) lambda!123450))))

(assert (= (and d!1052228 (not res!1439864)) b!3570449))

(assert (= (and b!3570449 res!1439865) b!3570450))

(declare-fun b_lambda!105227 () Bool)

(assert (=> (not b_lambda!105227) (not b!3570449)))

(declare-fun m!4058865 () Bool)

(assert (=> b!3570449 m!4058865))

(declare-fun m!4058867 () Bool)

(assert (=> b!3570450 m!4058867))

(assert (=> b!3570424 d!1052228))

(declare-fun d!1052230 () Bool)

(declare-fun lt!1223637 () Bool)

(assert (=> d!1052230 (= lt!1223637 (isEmpty!22031 (list!13755 (_2!21838 lt!1223603))))))

(declare-fun isEmpty!22034 (Conc!11395) Bool)

(assert (=> d!1052230 (= lt!1223637 (isEmpty!22034 (c!618703 (_2!21838 lt!1223603))))))

(assert (=> d!1052230 (= (isEmpty!22030 (_2!21838 lt!1223603)) lt!1223637)))

(declare-fun bs!569142 () Bool)

(assert (= bs!569142 d!1052230))

(declare-fun m!4058869 () Bool)

(assert (=> bs!569142 m!4058869))

(assert (=> bs!569142 m!4058869))

(declare-fun m!4058871 () Bool)

(assert (=> bs!569142 m!4058871))

(declare-fun m!4058873 () Bool)

(assert (=> bs!569142 m!4058873))

(assert (=> b!3570381 d!1052230))

(declare-fun d!1052232 () Bool)

(declare-fun lt!1223646 () Bool)

(declare-fun e!2208736 () Bool)

(assert (=> d!1052232 (= lt!1223646 e!2208736)))

(declare-fun res!1439883 () Bool)

(assert (=> d!1052232 (=> (not res!1439883) (not e!2208736))))

(declare-fun list!13756 (BalanceConc!22406) List!37625)

(assert (=> d!1052232 (= res!1439883 (= (list!13756 (_1!21838 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 (h!42921 tokens!494)))))) (list!13756 (singletonSeq!2606 (h!42921 tokens!494)))))))

(declare-fun e!2208735 () Bool)

(assert (=> d!1052232 (= lt!1223646 e!2208735)))

(declare-fun res!1439885 () Bool)

(assert (=> d!1052232 (=> (not res!1439885) (not e!2208735))))

(declare-fun lt!1223645 () tuple2!37408)

(assert (=> d!1052232 (= res!1439885 (= (size!28589 (_1!21838 lt!1223645)) 1))))

(assert (=> d!1052232 (= lt!1223645 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 (h!42921 tokens!494)))))))

(assert (=> d!1052232 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052232 (= (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 (h!42921 tokens!494)) lt!1223646)))

(declare-fun b!3570463 () Bool)

(declare-fun res!1439884 () Bool)

(assert (=> b!3570463 (=> (not res!1439884) (not e!2208735))))

(assert (=> b!3570463 (= res!1439884 (= (apply!9012 (_1!21838 lt!1223645) 0) (h!42921 tokens!494)))))

(declare-fun b!3570464 () Bool)

(assert (=> b!3570464 (= e!2208735 (isEmpty!22030 (_2!21838 lt!1223645)))))

(declare-fun b!3570465 () Bool)

(assert (=> b!3570465 (= e!2208736 (isEmpty!22030 (_2!21838 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 (h!42921 tokens!494)))))))))

(assert (= (and d!1052232 res!1439885) b!3570463))

(assert (= (and b!3570463 res!1439884) b!3570464))

(assert (= (and d!1052232 res!1439883) b!3570465))

(assert (=> d!1052232 m!4058845))

(assert (=> d!1052232 m!4058845))

(declare-fun m!4058885 () Bool)

(assert (=> d!1052232 m!4058885))

(declare-fun m!4058887 () Bool)

(assert (=> d!1052232 m!4058887))

(assert (=> d!1052232 m!4058885))

(declare-fun m!4058889 () Bool)

(assert (=> d!1052232 m!4058889))

(assert (=> d!1052232 m!4058713))

(declare-fun m!4058891 () Bool)

(assert (=> d!1052232 m!4058891))

(assert (=> d!1052232 m!4058845))

(declare-fun m!4058893 () Bool)

(assert (=> d!1052232 m!4058893))

(declare-fun m!4058895 () Bool)

(assert (=> b!3570463 m!4058895))

(declare-fun m!4058897 () Bool)

(assert (=> b!3570464 m!4058897))

(assert (=> b!3570465 m!4058845))

(assert (=> b!3570465 m!4058845))

(assert (=> b!3570465 m!4058885))

(assert (=> b!3570465 m!4058885))

(assert (=> b!3570465 m!4058889))

(declare-fun m!4058899 () Bool)

(assert (=> b!3570465 m!4058899))

(assert (=> b!3570402 d!1052232))

(declare-fun d!1052240 () Bool)

(declare-fun lt!1223649 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5315 (List!37624) (InoxSet Rule!10820))

(assert (=> d!1052240 (= lt!1223649 (select (content!5315 rules!2135) (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(declare-fun e!2208742 () Bool)

(assert (=> d!1052240 (= lt!1223649 e!2208742)))

(declare-fun res!1439891 () Bool)

(assert (=> d!1052240 (=> (not res!1439891) (not e!2208742))))

(assert (=> d!1052240 (= res!1439891 ((_ is Cons!37500) rules!2135))))

(assert (=> d!1052240 (= (contains!7095 rules!2135 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223649)))

(declare-fun b!3570470 () Bool)

(declare-fun e!2208741 () Bool)

(assert (=> b!3570470 (= e!2208742 e!2208741)))

(declare-fun res!1439890 () Bool)

(assert (=> b!3570470 (=> res!1439890 e!2208741)))

(assert (=> b!3570470 (= res!1439890 (= (h!42920 rules!2135) (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(declare-fun b!3570471 () Bool)

(assert (=> b!3570471 (= e!2208741 (contains!7095 (t!289017 rules!2135) (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(assert (= (and d!1052240 res!1439891) b!3570470))

(assert (= (and b!3570470 (not res!1439890)) b!3570471))

(declare-fun m!4058901 () Bool)

(assert (=> d!1052240 m!4058901))

(declare-fun m!4058903 () Bool)

(assert (=> d!1052240 m!4058903))

(declare-fun m!4058905 () Bool)

(assert (=> b!3570471 m!4058905))

(assert (=> b!3570423 d!1052240))

(declare-fun d!1052242 () Bool)

(declare-fun lt!1223652 () Bool)

(declare-fun content!5316 (List!37623) (InoxSet C!20724))

(assert (=> d!1052242 (= lt!1223652 (select (content!5316 lt!1223618) lt!1223597))))

(declare-fun e!2208748 () Bool)

(assert (=> d!1052242 (= lt!1223652 e!2208748)))

(declare-fun res!1439896 () Bool)

(assert (=> d!1052242 (=> (not res!1439896) (not e!2208748))))

(assert (=> d!1052242 (= res!1439896 ((_ is Cons!37499) lt!1223618))))

(assert (=> d!1052242 (= (contains!7096 lt!1223618 lt!1223597) lt!1223652)))

(declare-fun b!3570476 () Bool)

(declare-fun e!2208747 () Bool)

(assert (=> b!3570476 (= e!2208748 e!2208747)))

(declare-fun res!1439897 () Bool)

(assert (=> b!3570476 (=> res!1439897 e!2208747)))

(assert (=> b!3570476 (= res!1439897 (= (h!42919 lt!1223618) lt!1223597))))

(declare-fun b!3570477 () Bool)

(assert (=> b!3570477 (= e!2208747 (contains!7096 (t!289016 lt!1223618) lt!1223597))))

(assert (= (and d!1052242 res!1439896) b!3570476))

(assert (= (and b!3570476 (not res!1439897)) b!3570477))

(declare-fun m!4058907 () Bool)

(assert (=> d!1052242 m!4058907))

(declare-fun m!4058909 () Bool)

(assert (=> d!1052242 m!4058909))

(declare-fun m!4058911 () Bool)

(assert (=> b!3570477 m!4058911))

(assert (=> b!3570401 d!1052242))

(declare-fun d!1052244 () Bool)

(declare-fun res!1439902 () Bool)

(declare-fun e!2208753 () Bool)

(assert (=> d!1052244 (=> res!1439902 e!2208753)))

(assert (=> d!1052244 (= res!1439902 (not ((_ is Cons!37500) rules!2135)))))

(assert (=> d!1052244 (= (sepAndNonSepRulesDisjointChars!1704 rules!2135 rules!2135) e!2208753)))

(declare-fun b!3570482 () Bool)

(declare-fun e!2208754 () Bool)

(assert (=> b!3570482 (= e!2208753 e!2208754)))

(declare-fun res!1439903 () Bool)

(assert (=> b!3570482 (=> (not res!1439903) (not e!2208754))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!768 (Rule!10820 List!37624) Bool)

(assert (=> b!3570482 (= res!1439903 (ruleDisjointCharsFromAllFromOtherType!768 (h!42920 rules!2135) rules!2135))))

(declare-fun b!3570483 () Bool)

(assert (=> b!3570483 (= e!2208754 (sepAndNonSepRulesDisjointChars!1704 rules!2135 (t!289017 rules!2135)))))

(assert (= (and d!1052244 (not res!1439902)) b!3570482))

(assert (= (and b!3570482 res!1439903) b!3570483))

(declare-fun m!4058913 () Bool)

(assert (=> b!3570482 m!4058913))

(declare-fun m!4058915 () Bool)

(assert (=> b!3570483 m!4058915))

(assert (=> b!3570422 d!1052244))

(declare-fun d!1052246 () Bool)

(assert (=> d!1052246 (= (inv!50769 (tag!6168 (rule!8204 separatorToken!241))) (= (mod (str.len (value!177494 (tag!6168 (rule!8204 separatorToken!241)))) 2) 0))))

(assert (=> b!3570427 d!1052246))

(declare-fun d!1052248 () Bool)

(declare-fun res!1439906 () Bool)

(declare-fun e!2208757 () Bool)

(assert (=> d!1052248 (=> (not res!1439906) (not e!2208757))))

(declare-fun semiInverseModEq!2332 (Int Int) Bool)

(assert (=> d!1052248 (= res!1439906 (semiInverseModEq!2332 (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toValue!7778 (transformation!5510 (rule!8204 separatorToken!241)))))))

(assert (=> d!1052248 (= (inv!50773 (transformation!5510 (rule!8204 separatorToken!241))) e!2208757)))

(declare-fun b!3570486 () Bool)

(declare-fun equivClasses!2231 (Int Int) Bool)

(assert (=> b!3570486 (= e!2208757 (equivClasses!2231 (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toValue!7778 (transformation!5510 (rule!8204 separatorToken!241)))))))

(assert (= (and d!1052248 res!1439906) b!3570486))

(declare-fun m!4058917 () Bool)

(assert (=> d!1052248 m!4058917))

(declare-fun m!4058919 () Bool)

(assert (=> b!3570486 m!4058919))

(assert (=> b!3570427 d!1052248))

(declare-fun d!1052250 () Bool)

(declare-fun lt!1223654 () Bool)

(declare-fun e!2208759 () Bool)

(assert (=> d!1052250 (= lt!1223654 e!2208759)))

(declare-fun res!1439907 () Bool)

(assert (=> d!1052250 (=> (not res!1439907) (not e!2208759))))

(assert (=> d!1052250 (= res!1439907 (= (list!13756 (_1!21838 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 (h!42921 (t!289018 tokens!494))))))) (list!13756 (singletonSeq!2606 (h!42921 (t!289018 tokens!494))))))))

(declare-fun e!2208758 () Bool)

(assert (=> d!1052250 (= lt!1223654 e!2208758)))

(declare-fun res!1439909 () Bool)

(assert (=> d!1052250 (=> (not res!1439909) (not e!2208758))))

(declare-fun lt!1223653 () tuple2!37408)

(assert (=> d!1052250 (= res!1439909 (= (size!28589 (_1!21838 lt!1223653)) 1))))

(assert (=> d!1052250 (= lt!1223653 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 (h!42921 (t!289018 tokens!494))))))))

(assert (=> d!1052250 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052250 (= (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 (h!42921 (t!289018 tokens!494))) lt!1223654)))

(declare-fun b!3570487 () Bool)

(declare-fun res!1439908 () Bool)

(assert (=> b!3570487 (=> (not res!1439908) (not e!2208758))))

(assert (=> b!3570487 (= res!1439908 (= (apply!9012 (_1!21838 lt!1223653) 0) (h!42921 (t!289018 tokens!494))))))

(declare-fun b!3570488 () Bool)

(assert (=> b!3570488 (= e!2208758 (isEmpty!22030 (_2!21838 lt!1223653)))))

(declare-fun b!3570489 () Bool)

(assert (=> b!3570489 (= e!2208759 (isEmpty!22030 (_2!21838 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 (h!42921 (t!289018 tokens!494))))))))))

(assert (= (and d!1052250 res!1439909) b!3570487))

(assert (= (and b!3570487 res!1439908) b!3570488))

(assert (= (and d!1052250 res!1439907) b!3570489))

(assert (=> d!1052250 m!4058807))

(assert (=> d!1052250 m!4058807))

(declare-fun m!4058921 () Bool)

(assert (=> d!1052250 m!4058921))

(declare-fun m!4058923 () Bool)

(assert (=> d!1052250 m!4058923))

(assert (=> d!1052250 m!4058921))

(declare-fun m!4058925 () Bool)

(assert (=> d!1052250 m!4058925))

(assert (=> d!1052250 m!4058713))

(declare-fun m!4058927 () Bool)

(assert (=> d!1052250 m!4058927))

(assert (=> d!1052250 m!4058807))

(declare-fun m!4058929 () Bool)

(assert (=> d!1052250 m!4058929))

(declare-fun m!4058931 () Bool)

(assert (=> b!3570487 m!4058931))

(declare-fun m!4058933 () Bool)

(assert (=> b!3570488 m!4058933))

(assert (=> b!3570489 m!4058807))

(assert (=> b!3570489 m!4058807))

(assert (=> b!3570489 m!4058921))

(assert (=> b!3570489 m!4058921))

(assert (=> b!3570489 m!4058925))

(declare-fun m!4058935 () Bool)

(assert (=> b!3570489 m!4058935))

(assert (=> b!3570384 d!1052250))

(declare-fun d!1052252 () Bool)

(declare-fun e!2208762 () Bool)

(assert (=> d!1052252 e!2208762))

(declare-fun res!1439912 () Bool)

(assert (=> d!1052252 (=> (not res!1439912) (not e!2208762))))

(declare-fun lt!1223657 () BalanceConc!22406)

(assert (=> d!1052252 (= res!1439912 (= (list!13756 lt!1223657) (Cons!37501 separatorToken!241 Nil!37501)))))

(declare-fun singleton!1169 (Token!10386) BalanceConc!22406)

(assert (=> d!1052252 (= lt!1223657 (singleton!1169 separatorToken!241))))

(assert (=> d!1052252 (= (singletonSeq!2606 separatorToken!241) lt!1223657)))

(declare-fun b!3570492 () Bool)

(declare-fun isBalanced!3484 (Conc!11396) Bool)

(assert (=> b!3570492 (= e!2208762 (isBalanced!3484 (c!618704 lt!1223657)))))

(assert (= (and d!1052252 res!1439912) b!3570492))

(declare-fun m!4058937 () Bool)

(assert (=> d!1052252 m!4058937))

(declare-fun m!4058939 () Bool)

(assert (=> d!1052252 m!4058939))

(declare-fun m!4058941 () Bool)

(assert (=> b!3570492 m!4058941))

(assert (=> b!3570384 d!1052252))

(declare-fun d!1052254 () Bool)

(assert (=> d!1052254 (= (maxPrefixOneRule!1806 thiss!18206 (rule!8204 (h!42921 (t!289018 tokens!494))) lt!1223602) (Some!7688 (tuple2!37411 (Token!10387 (apply!9013 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (seqFromList!4073 lt!1223602)) (rule!8204 (h!42921 (t!289018 tokens!494))) (size!28588 lt!1223602) lt!1223602) Nil!37499)))))

(declare-fun lt!1223660 () Unit!53483)

(declare-fun choose!20755 (LexerInterface!5099 List!37624 List!37623 List!37623 List!37623 Rule!10820) Unit!53483)

(assert (=> d!1052254 (= lt!1223660 (choose!20755 thiss!18206 rules!2135 lt!1223602 lt!1223602 Nil!37499 (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(assert (=> d!1052254 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052254 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!899 thiss!18206 rules!2135 lt!1223602 lt!1223602 Nil!37499 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223660)))

(declare-fun bs!569144 () Bool)

(assert (= bs!569144 d!1052254))

(assert (=> bs!569144 m!4058783))

(assert (=> bs!569144 m!4058727))

(assert (=> bs!569144 m!4058729))

(assert (=> bs!569144 m!4058727))

(declare-fun m!4058943 () Bool)

(assert (=> bs!569144 m!4058943))

(assert (=> bs!569144 m!4058789))

(assert (=> bs!569144 m!4058713))

(assert (=> b!3570384 d!1052254))

(declare-fun d!1052256 () Bool)

(assert (=> d!1052256 (= (maxPrefixOneRule!1806 thiss!18206 (rule!8204 (h!42921 tokens!494)) lt!1223629) (Some!7688 (tuple2!37411 (Token!10387 (apply!9013 (transformation!5510 (rule!8204 (h!42921 tokens!494))) (seqFromList!4073 lt!1223629)) (rule!8204 (h!42921 tokens!494)) (size!28588 lt!1223629) lt!1223629) Nil!37499)))))

(declare-fun lt!1223661 () Unit!53483)

(assert (=> d!1052256 (= lt!1223661 (choose!20755 thiss!18206 rules!2135 lt!1223629 lt!1223629 Nil!37499 (rule!8204 (h!42921 tokens!494))))))

(assert (=> d!1052256 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052256 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!899 thiss!18206 rules!2135 lt!1223629 lt!1223629 Nil!37499 (rule!8204 (h!42921 tokens!494))) lt!1223661)))

(declare-fun bs!569145 () Bool)

(assert (= bs!569145 d!1052256))

(assert (=> bs!569145 m!4058815))

(assert (=> bs!569145 m!4058839))

(declare-fun m!4058945 () Bool)

(assert (=> bs!569145 m!4058945))

(assert (=> bs!569145 m!4058839))

(declare-fun m!4058947 () Bool)

(assert (=> bs!569145 m!4058947))

(assert (=> bs!569145 m!4058805))

(assert (=> bs!569145 m!4058713))

(assert (=> b!3570384 d!1052256))

(declare-fun bm!258752 () Bool)

(declare-fun call!258760 () List!37623)

(declare-fun call!258757 () List!37623)

(assert (=> bm!258752 (= call!258760 call!258757)))

(declare-fun bm!258753 () Bool)

(declare-fun call!258758 () List!37623)

(declare-fun c!618713 () Bool)

(assert (=> bm!258753 (= call!258758 (usedCharacters!744 (ite c!618713 (regTwo!21051 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (regOne!21050 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))))

(declare-fun d!1052258 () Bool)

(declare-fun c!618715 () Bool)

(assert (=> d!1052258 (= c!618715 (or ((_ is EmptyExpr!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) ((_ is EmptyLang!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))))))

(declare-fun e!2208771 () List!37623)

(assert (=> d!1052258 (= (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) e!2208771)))

(declare-fun b!3570509 () Bool)

(declare-fun e!2208772 () List!37623)

(assert (=> b!3570509 (= e!2208772 call!258757)))

(declare-fun b!3570510 () Bool)

(assert (=> b!3570510 (= e!2208771 Nil!37499)))

(declare-fun b!3570511 () Bool)

(declare-fun e!2208774 () List!37623)

(assert (=> b!3570511 (= e!2208771 e!2208774)))

(declare-fun c!618716 () Bool)

(assert (=> b!3570511 (= c!618716 ((_ is ElementMatch!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun b!3570512 () Bool)

(declare-fun c!618714 () Bool)

(assert (=> b!3570512 (= c!618714 ((_ is Star!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(assert (=> b!3570512 (= e!2208774 e!2208772)))

(declare-fun b!3570513 () Bool)

(assert (=> b!3570513 (= e!2208774 (Cons!37499 (c!618702 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) Nil!37499))))

(declare-fun b!3570514 () Bool)

(declare-fun e!2208773 () List!37623)

(declare-fun call!258759 () List!37623)

(assert (=> b!3570514 (= e!2208773 call!258759)))

(declare-fun b!3570515 () Bool)

(assert (=> b!3570515 (= e!2208772 e!2208773)))

(assert (=> b!3570515 (= c!618713 ((_ is Union!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun bm!258754 () Bool)

(assert (=> bm!258754 (= call!258759 (++!9323 (ite c!618713 call!258760 call!258758) (ite c!618713 call!258758 call!258760)))))

(declare-fun b!3570516 () Bool)

(assert (=> b!3570516 (= e!2208773 call!258759)))

(declare-fun bm!258755 () Bool)

(assert (=> bm!258755 (= call!258757 (usedCharacters!744 (ite c!618714 (reg!10598 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (ite c!618713 (regOne!21051 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (regTwo!21050 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))))))))

(assert (= (and d!1052258 c!618715) b!3570510))

(assert (= (and d!1052258 (not c!618715)) b!3570511))

(assert (= (and b!3570511 c!618716) b!3570513))

(assert (= (and b!3570511 (not c!618716)) b!3570512))

(assert (= (and b!3570512 c!618714) b!3570509))

(assert (= (and b!3570512 (not c!618714)) b!3570515))

(assert (= (and b!3570515 c!618713) b!3570514))

(assert (= (and b!3570515 (not c!618713)) b!3570516))

(assert (= (or b!3570514 b!3570516) bm!258753))

(assert (= (or b!3570514 b!3570516) bm!258752))

(assert (= (or b!3570514 b!3570516) bm!258754))

(assert (= (or b!3570509 bm!258752) bm!258755))

(declare-fun m!4058949 () Bool)

(assert (=> bm!258753 m!4058949))

(declare-fun m!4058951 () Bool)

(assert (=> bm!258754 m!4058951))

(declare-fun m!4058953 () Bool)

(assert (=> bm!258755 m!4058953))

(assert (=> b!3570384 d!1052258))

(declare-fun b!3570595 () Bool)

(declare-fun res!1439961 () Bool)

(declare-fun e!2208826 () Bool)

(assert (=> b!3570595 (=> (not res!1439961) (not e!2208826))))

(declare-fun lt!1223695 () Option!7689)

(assert (=> b!3570595 (= res!1439961 (= (rule!8204 (_1!21839 (get!12070 lt!1223695))) (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(declare-fun d!1052260 () Bool)

(declare-fun e!2208824 () Bool)

(assert (=> d!1052260 e!2208824))

(declare-fun res!1439967 () Bool)

(assert (=> d!1052260 (=> res!1439967 e!2208824)))

(declare-fun isEmpty!22036 (Option!7689) Bool)

(assert (=> d!1052260 (= res!1439967 (isEmpty!22036 lt!1223695))))

(declare-fun e!2208825 () Option!7689)

(assert (=> d!1052260 (= lt!1223695 e!2208825)))

(declare-fun c!618729 () Bool)

(declare-datatypes ((tuple2!37412 0))(
  ( (tuple2!37413 (_1!21840 List!37623) (_2!21840 List!37623)) )
))
(declare-fun lt!1223694 () tuple2!37412)

(assert (=> d!1052260 (= c!618729 (isEmpty!22031 (_1!21840 lt!1223694)))))

(declare-fun findLongestMatch!873 (Regex!10269 List!37623) tuple2!37412)

(assert (=> d!1052260 (= lt!1223694 (findLongestMatch!873 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602))))

(assert (=> d!1052260 (ruleValid!1794 thiss!18206 (rule!8204 (h!42921 (t!289018 tokens!494))))))

(assert (=> d!1052260 (= (maxPrefixOneRule!1806 thiss!18206 (rule!8204 (h!42921 (t!289018 tokens!494))) lt!1223602) lt!1223695)))

(declare-fun b!3570596 () Bool)

(declare-fun e!2208823 () Bool)

(declare-fun findLongestMatchInner!958 (Regex!10269 List!37623 Int List!37623 List!37623 Int) tuple2!37412)

(assert (=> b!3570596 (= e!2208823 (matchR!4853 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (_1!21840 (findLongestMatchInner!958 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) Nil!37499 (size!28588 Nil!37499) lt!1223602 lt!1223602 (size!28588 lt!1223602)))))))

(declare-fun b!3570597 () Bool)

(declare-fun res!1439962 () Bool)

(assert (=> b!3570597 (=> (not res!1439962) (not e!2208826))))

(assert (=> b!3570597 (= res!1439962 (= (++!9323 (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223695)))) (_2!21839 (get!12070 lt!1223695))) lt!1223602))))

(declare-fun b!3570598 () Bool)

(assert (=> b!3570598 (= e!2208824 e!2208826)))

(declare-fun res!1439964 () Bool)

(assert (=> b!3570598 (=> (not res!1439964) (not e!2208826))))

(assert (=> b!3570598 (= res!1439964 (matchR!4853 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223695))))))))

(declare-fun b!3570599 () Bool)

(declare-fun size!28590 (BalanceConc!22404) Int)

(assert (=> b!3570599 (= e!2208825 (Some!7688 (tuple2!37411 (Token!10387 (apply!9013 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (seqFromList!4073 (_1!21840 lt!1223694))) (rule!8204 (h!42921 (t!289018 tokens!494))) (size!28590 (seqFromList!4073 (_1!21840 lt!1223694))) (_1!21840 lt!1223694)) (_2!21840 lt!1223694))))))

(declare-fun lt!1223696 () Unit!53483)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!931 (Regex!10269 List!37623) Unit!53483)

(assert (=> b!3570599 (= lt!1223696 (longestMatchIsAcceptedByMatchOrIsEmpty!931 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602))))

(declare-fun res!1439966 () Bool)

(assert (=> b!3570599 (= res!1439966 (isEmpty!22031 (_1!21840 (findLongestMatchInner!958 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) Nil!37499 (size!28588 Nil!37499) lt!1223602 lt!1223602 (size!28588 lt!1223602)))))))

(assert (=> b!3570599 (=> res!1439966 e!2208823)))

(assert (=> b!3570599 e!2208823))

(declare-fun lt!1223693 () Unit!53483)

(assert (=> b!3570599 (= lt!1223693 lt!1223696)))

(declare-fun lt!1223697 () Unit!53483)

(declare-fun lemmaSemiInverse!1310 (TokenValueInjection!10908 BalanceConc!22404) Unit!53483)

(assert (=> b!3570599 (= lt!1223697 (lemmaSemiInverse!1310 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (seqFromList!4073 (_1!21840 lt!1223694))))))

(declare-fun b!3570600 () Bool)

(declare-fun res!1439965 () Bool)

(assert (=> b!3570600 (=> (not res!1439965) (not e!2208826))))

(assert (=> b!3570600 (= res!1439965 (= (value!177495 (_1!21839 (get!12070 lt!1223695))) (apply!9013 (transformation!5510 (rule!8204 (_1!21839 (get!12070 lt!1223695)))) (seqFromList!4073 (originalCharacters!6224 (_1!21839 (get!12070 lt!1223695)))))))))

(declare-fun b!3570601 () Bool)

(declare-fun res!1439963 () Bool)

(assert (=> b!3570601 (=> (not res!1439963) (not e!2208826))))

(assert (=> b!3570601 (= res!1439963 (< (size!28588 (_2!21839 (get!12070 lt!1223695))) (size!28588 lt!1223602)))))

(declare-fun b!3570602 () Bool)

(assert (=> b!3570602 (= e!2208826 (= (size!28587 (_1!21839 (get!12070 lt!1223695))) (size!28588 (originalCharacters!6224 (_1!21839 (get!12070 lt!1223695))))))))

(declare-fun b!3570603 () Bool)

(assert (=> b!3570603 (= e!2208825 None!7688)))

(assert (= (and d!1052260 c!618729) b!3570603))

(assert (= (and d!1052260 (not c!618729)) b!3570599))

(assert (= (and b!3570599 (not res!1439966)) b!3570596))

(assert (= (and d!1052260 (not res!1439967)) b!3570598))

(assert (= (and b!3570598 res!1439964) b!3570597))

(assert (= (and b!3570597 res!1439962) b!3570601))

(assert (= (and b!3570601 res!1439963) b!3570595))

(assert (= (and b!3570595 res!1439961) b!3570600))

(assert (= (and b!3570600 res!1439965) b!3570602))

(declare-fun m!4059061 () Bool)

(assert (=> b!3570595 m!4059061))

(assert (=> b!3570597 m!4059061))

(declare-fun m!4059063 () Bool)

(assert (=> b!3570597 m!4059063))

(assert (=> b!3570597 m!4059063))

(declare-fun m!4059065 () Bool)

(assert (=> b!3570597 m!4059065))

(assert (=> b!3570597 m!4059065))

(declare-fun m!4059067 () Bool)

(assert (=> b!3570597 m!4059067))

(assert (=> b!3570602 m!4059061))

(declare-fun m!4059069 () Bool)

(assert (=> b!3570602 m!4059069))

(declare-fun m!4059071 () Bool)

(assert (=> d!1052260 m!4059071))

(declare-fun m!4059073 () Bool)

(assert (=> d!1052260 m!4059073))

(declare-fun m!4059075 () Bool)

(assert (=> d!1052260 m!4059075))

(declare-fun m!4059077 () Bool)

(assert (=> d!1052260 m!4059077))

(assert (=> b!3570598 m!4059061))

(assert (=> b!3570598 m!4059063))

(assert (=> b!3570598 m!4059063))

(assert (=> b!3570598 m!4059065))

(assert (=> b!3570598 m!4059065))

(declare-fun m!4059079 () Bool)

(assert (=> b!3570598 m!4059079))

(declare-fun m!4059081 () Bool)

(assert (=> b!3570599 m!4059081))

(declare-fun m!4059083 () Bool)

(assert (=> b!3570599 m!4059083))

(declare-fun m!4059085 () Bool)

(assert (=> b!3570599 m!4059085))

(declare-fun m!4059087 () Bool)

(assert (=> b!3570599 m!4059087))

(assert (=> b!3570599 m!4059083))

(assert (=> b!3570599 m!4059083))

(declare-fun m!4059089 () Bool)

(assert (=> b!3570599 m!4059089))

(assert (=> b!3570599 m!4058789))

(declare-fun m!4059091 () Bool)

(assert (=> b!3570599 m!4059091))

(assert (=> b!3570599 m!4059091))

(assert (=> b!3570599 m!4058789))

(declare-fun m!4059093 () Bool)

(assert (=> b!3570599 m!4059093))

(assert (=> b!3570599 m!4059083))

(declare-fun m!4059095 () Bool)

(assert (=> b!3570599 m!4059095))

(assert (=> b!3570596 m!4059091))

(assert (=> b!3570596 m!4058789))

(assert (=> b!3570596 m!4059091))

(assert (=> b!3570596 m!4058789))

(assert (=> b!3570596 m!4059093))

(declare-fun m!4059097 () Bool)

(assert (=> b!3570596 m!4059097))

(assert (=> b!3570600 m!4059061))

(declare-fun m!4059099 () Bool)

(assert (=> b!3570600 m!4059099))

(assert (=> b!3570600 m!4059099))

(declare-fun m!4059101 () Bool)

(assert (=> b!3570600 m!4059101))

(assert (=> b!3570601 m!4059061))

(declare-fun m!4059103 () Bool)

(assert (=> b!3570601 m!4059103))

(assert (=> b!3570601 m!4058789))

(assert (=> b!3570384 d!1052260))

(declare-fun d!1052290 () Bool)

(declare-fun e!2208827 () Bool)

(assert (=> d!1052290 e!2208827))

(declare-fun res!1439968 () Bool)

(assert (=> d!1052290 (=> (not res!1439968) (not e!2208827))))

(declare-fun lt!1223698 () BalanceConc!22406)

(assert (=> d!1052290 (= res!1439968 (= (list!13756 lt!1223698) (Cons!37501 (h!42921 (t!289018 tokens!494)) Nil!37501)))))

(assert (=> d!1052290 (= lt!1223698 (singleton!1169 (h!42921 (t!289018 tokens!494))))))

(assert (=> d!1052290 (= (singletonSeq!2606 (h!42921 (t!289018 tokens!494))) lt!1223698)))

(declare-fun b!3570604 () Bool)

(assert (=> b!3570604 (= e!2208827 (isBalanced!3484 (c!618704 lt!1223698)))))

(assert (= (and d!1052290 res!1439968) b!3570604))

(declare-fun m!4059105 () Bool)

(assert (=> d!1052290 m!4059105))

(declare-fun m!4059107 () Bool)

(assert (=> d!1052290 m!4059107))

(declare-fun m!4059109 () Bool)

(assert (=> b!3570604 m!4059109))

(assert (=> b!3570384 d!1052290))

(declare-fun d!1052292 () Bool)

(declare-fun fromListB!1880 (List!37623) BalanceConc!22404)

(assert (=> d!1052292 (= (seqFromList!4073 lt!1223602) (fromListB!1880 lt!1223602))))

(declare-fun bs!569148 () Bool)

(assert (= bs!569148 d!1052292))

(declare-fun m!4059111 () Bool)

(assert (=> bs!569148 m!4059111))

(assert (=> b!3570384 d!1052292))

(declare-fun d!1052294 () Bool)

(declare-fun isEmpty!22037 (Option!7690) Bool)

(assert (=> d!1052294 (= (isDefined!5933 lt!1223589) (not (isEmpty!22037 lt!1223589)))))

(declare-fun bs!569149 () Bool)

(assert (= bs!569149 d!1052294))

(declare-fun m!4059113 () Bool)

(assert (=> bs!569149 m!4059113))

(assert (=> b!3570384 d!1052294))

(declare-fun b!3570623 () Bool)

(declare-fun res!1439987 () Bool)

(declare-fun e!2208835 () Bool)

(assert (=> b!3570623 (=> (not res!1439987) (not e!2208835))))

(declare-fun lt!1223711 () Option!7689)

(assert (=> b!3570623 (= res!1439987 (= (++!9323 (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223711)))) (_2!21839 (get!12070 lt!1223711))) lt!1223606))))

(declare-fun b!3570624 () Bool)

(declare-fun res!1439984 () Bool)

(assert (=> b!3570624 (=> (not res!1439984) (not e!2208835))))

(assert (=> b!3570624 (= res!1439984 (matchR!4853 (regex!5510 (rule!8204 (_1!21839 (get!12070 lt!1223711)))) (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223711))))))))

(declare-fun b!3570625 () Bool)

(declare-fun res!1439986 () Bool)

(assert (=> b!3570625 (=> (not res!1439986) (not e!2208835))))

(assert (=> b!3570625 (= res!1439986 (< (size!28588 (_2!21839 (get!12070 lt!1223711))) (size!28588 lt!1223606)))))

(declare-fun b!3570626 () Bool)

(declare-fun e!2208834 () Option!7689)

(declare-fun lt!1223713 () Option!7689)

(declare-fun lt!1223712 () Option!7689)

(assert (=> b!3570626 (= e!2208834 (ite (and ((_ is None!7688) lt!1223713) ((_ is None!7688) lt!1223712)) None!7688 (ite ((_ is None!7688) lt!1223712) lt!1223713 (ite ((_ is None!7688) lt!1223713) lt!1223712 (ite (>= (size!28587 (_1!21839 (v!37294 lt!1223713))) (size!28587 (_1!21839 (v!37294 lt!1223712)))) lt!1223713 lt!1223712)))))))

(declare-fun call!258763 () Option!7689)

(assert (=> b!3570626 (= lt!1223713 call!258763)))

(assert (=> b!3570626 (= lt!1223712 (maxPrefix!2639 thiss!18206 (t!289017 rules!2135) lt!1223606))))

(declare-fun d!1052296 () Bool)

(declare-fun e!2208836 () Bool)

(assert (=> d!1052296 e!2208836))

(declare-fun res!1439988 () Bool)

(assert (=> d!1052296 (=> res!1439988 e!2208836)))

(assert (=> d!1052296 (= res!1439988 (isEmpty!22036 lt!1223711))))

(assert (=> d!1052296 (= lt!1223711 e!2208834)))

(declare-fun c!618732 () Bool)

(assert (=> d!1052296 (= c!618732 (and ((_ is Cons!37500) rules!2135) ((_ is Nil!37500) (t!289017 rules!2135))))))

(declare-fun lt!1223710 () Unit!53483)

(declare-fun lt!1223709 () Unit!53483)

(assert (=> d!1052296 (= lt!1223710 lt!1223709)))

(declare-fun isPrefix!2893 (List!37623 List!37623) Bool)

(assert (=> d!1052296 (isPrefix!2893 lt!1223606 lt!1223606)))

(declare-fun lemmaIsPrefixRefl!1852 (List!37623 List!37623) Unit!53483)

(assert (=> d!1052296 (= lt!1223709 (lemmaIsPrefixRefl!1852 lt!1223606 lt!1223606))))

(declare-fun rulesValidInductive!1902 (LexerInterface!5099 List!37624) Bool)

(assert (=> d!1052296 (rulesValidInductive!1902 thiss!18206 rules!2135)))

(assert (=> d!1052296 (= (maxPrefix!2639 thiss!18206 rules!2135 lt!1223606) lt!1223711)))

(declare-fun b!3570627 () Bool)

(assert (=> b!3570627 (= e!2208836 e!2208835)))

(declare-fun res!1439989 () Bool)

(assert (=> b!3570627 (=> (not res!1439989) (not e!2208835))))

(assert (=> b!3570627 (= res!1439989 (isDefined!5934 lt!1223711))))

(declare-fun b!3570628 () Bool)

(assert (=> b!3570628 (= e!2208835 (contains!7095 rules!2135 (rule!8204 (_1!21839 (get!12070 lt!1223711)))))))

(declare-fun b!3570629 () Bool)

(declare-fun res!1439985 () Bool)

(assert (=> b!3570629 (=> (not res!1439985) (not e!2208835))))

(assert (=> b!3570629 (= res!1439985 (= (value!177495 (_1!21839 (get!12070 lt!1223711))) (apply!9013 (transformation!5510 (rule!8204 (_1!21839 (get!12070 lt!1223711)))) (seqFromList!4073 (originalCharacters!6224 (_1!21839 (get!12070 lt!1223711)))))))))

(declare-fun b!3570630 () Bool)

(assert (=> b!3570630 (= e!2208834 call!258763)))

(declare-fun bm!258758 () Bool)

(assert (=> bm!258758 (= call!258763 (maxPrefixOneRule!1806 thiss!18206 (h!42920 rules!2135) lt!1223606))))

(declare-fun b!3570631 () Bool)

(declare-fun res!1439983 () Bool)

(assert (=> b!3570631 (=> (not res!1439983) (not e!2208835))))

(assert (=> b!3570631 (= res!1439983 (= (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223711)))) (originalCharacters!6224 (_1!21839 (get!12070 lt!1223711)))))))

(assert (= (and d!1052296 c!618732) b!3570630))

(assert (= (and d!1052296 (not c!618732)) b!3570626))

(assert (= (or b!3570630 b!3570626) bm!258758))

(assert (= (and d!1052296 (not res!1439988)) b!3570627))

(assert (= (and b!3570627 res!1439989) b!3570631))

(assert (= (and b!3570631 res!1439983) b!3570625))

(assert (= (and b!3570625 res!1439986) b!3570623))

(assert (= (and b!3570623 res!1439987) b!3570629))

(assert (= (and b!3570629 res!1439985) b!3570624))

(assert (= (and b!3570624 res!1439984) b!3570628))

(declare-fun m!4059115 () Bool)

(assert (=> b!3570627 m!4059115))

(declare-fun m!4059117 () Bool)

(assert (=> b!3570631 m!4059117))

(declare-fun m!4059119 () Bool)

(assert (=> b!3570631 m!4059119))

(assert (=> b!3570631 m!4059119))

(declare-fun m!4059121 () Bool)

(assert (=> b!3570631 m!4059121))

(assert (=> b!3570625 m!4059117))

(declare-fun m!4059123 () Bool)

(assert (=> b!3570625 m!4059123))

(declare-fun m!4059125 () Bool)

(assert (=> b!3570625 m!4059125))

(assert (=> b!3570624 m!4059117))

(assert (=> b!3570624 m!4059119))

(assert (=> b!3570624 m!4059119))

(assert (=> b!3570624 m!4059121))

(assert (=> b!3570624 m!4059121))

(declare-fun m!4059127 () Bool)

(assert (=> b!3570624 m!4059127))

(assert (=> b!3570628 m!4059117))

(declare-fun m!4059129 () Bool)

(assert (=> b!3570628 m!4059129))

(assert (=> b!3570629 m!4059117))

(declare-fun m!4059131 () Bool)

(assert (=> b!3570629 m!4059131))

(assert (=> b!3570629 m!4059131))

(declare-fun m!4059133 () Bool)

(assert (=> b!3570629 m!4059133))

(declare-fun m!4059135 () Bool)

(assert (=> bm!258758 m!4059135))

(declare-fun m!4059137 () Bool)

(assert (=> b!3570626 m!4059137))

(declare-fun m!4059139 () Bool)

(assert (=> d!1052296 m!4059139))

(declare-fun m!4059141 () Bool)

(assert (=> d!1052296 m!4059141))

(declare-fun m!4059143 () Bool)

(assert (=> d!1052296 m!4059143))

(declare-fun m!4059145 () Bool)

(assert (=> d!1052296 m!4059145))

(assert (=> b!3570623 m!4059117))

(assert (=> b!3570623 m!4059119))

(assert (=> b!3570623 m!4059119))

(assert (=> b!3570623 m!4059121))

(assert (=> b!3570623 m!4059121))

(declare-fun m!4059147 () Bool)

(assert (=> b!3570623 m!4059147))

(assert (=> b!3570384 d!1052296))

(declare-fun d!1052298 () Bool)

(declare-fun lt!1223714 () Bool)

(assert (=> d!1052298 (= lt!1223714 (select (content!5316 lt!1223584) lt!1223634))))

(declare-fun e!2208838 () Bool)

(assert (=> d!1052298 (= lt!1223714 e!2208838)))

(declare-fun res!1439990 () Bool)

(assert (=> d!1052298 (=> (not res!1439990) (not e!2208838))))

(assert (=> d!1052298 (= res!1439990 ((_ is Cons!37499) lt!1223584))))

(assert (=> d!1052298 (= (contains!7096 lt!1223584 lt!1223634) lt!1223714)))

(declare-fun b!3570632 () Bool)

(declare-fun e!2208837 () Bool)

(assert (=> b!3570632 (= e!2208838 e!2208837)))

(declare-fun res!1439991 () Bool)

(assert (=> b!3570632 (=> res!1439991 e!2208837)))

(assert (=> b!3570632 (= res!1439991 (= (h!42919 lt!1223584) lt!1223634))))

(declare-fun b!3570633 () Bool)

(assert (=> b!3570633 (= e!2208837 (contains!7096 (t!289016 lt!1223584) lt!1223634))))

(assert (= (and d!1052298 res!1439990) b!3570632))

(assert (= (and b!3570632 (not res!1439991)) b!3570633))

(declare-fun m!4059149 () Bool)

(assert (=> d!1052298 m!4059149))

(declare-fun m!4059151 () Bool)

(assert (=> d!1052298 m!4059151))

(declare-fun m!4059153 () Bool)

(assert (=> b!3570633 m!4059153))

(assert (=> b!3570384 d!1052298))

(declare-fun d!1052300 () Bool)

(assert (=> d!1052300 (dynLambda!16102 lambda!123451 (h!42921 (t!289018 tokens!494)))))

(declare-fun lt!1223717 () Unit!53483)

(declare-fun choose!20756 (List!37625 Int Token!10386) Unit!53483)

(assert (=> d!1052300 (= lt!1223717 (choose!20756 tokens!494 lambda!123451 (h!42921 (t!289018 tokens!494))))))

(declare-fun e!2208841 () Bool)

(assert (=> d!1052300 e!2208841))

(declare-fun res!1439994 () Bool)

(assert (=> d!1052300 (=> (not res!1439994) (not e!2208841))))

(assert (=> d!1052300 (= res!1439994 (forall!8110 tokens!494 lambda!123451))))

(assert (=> d!1052300 (= (forallContained!1457 tokens!494 lambda!123451 (h!42921 (t!289018 tokens!494))) lt!1223717)))

(declare-fun b!3570636 () Bool)

(declare-fun contains!7097 (List!37625 Token!10386) Bool)

(assert (=> b!3570636 (= e!2208841 (contains!7097 tokens!494 (h!42921 (t!289018 tokens!494))))))

(assert (= (and d!1052300 res!1439994) b!3570636))

(declare-fun b_lambda!105235 () Bool)

(assert (=> (not b_lambda!105235) (not d!1052300)))

(declare-fun m!4059155 () Bool)

(assert (=> d!1052300 m!4059155))

(declare-fun m!4059157 () Bool)

(assert (=> d!1052300 m!4059157))

(declare-fun m!4059159 () Bool)

(assert (=> d!1052300 m!4059159))

(declare-fun m!4059161 () Bool)

(assert (=> b!3570636 m!4059161))

(assert (=> b!3570384 d!1052300))

(declare-fun bm!258759 () Bool)

(declare-fun call!258767 () List!37623)

(declare-fun call!258764 () List!37623)

(assert (=> bm!258759 (= call!258767 call!258764)))

(declare-fun bm!258760 () Bool)

(declare-fun call!258765 () List!37623)

(declare-fun c!618733 () Bool)

(assert (=> bm!258760 (= call!258765 (usedCharacters!744 (ite c!618733 (regTwo!21051 (regex!5510 (rule!8204 (h!42921 tokens!494)))) (regOne!21050 (regex!5510 (rule!8204 (h!42921 tokens!494)))))))))

(declare-fun d!1052302 () Bool)

(declare-fun c!618735 () Bool)

(assert (=> d!1052302 (= c!618735 (or ((_ is EmptyExpr!10269) (regex!5510 (rule!8204 (h!42921 tokens!494)))) ((_ is EmptyLang!10269) (regex!5510 (rule!8204 (h!42921 tokens!494))))))))

(declare-fun e!2208842 () List!37623)

(assert (=> d!1052302 (= (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494)))) e!2208842)))

(declare-fun b!3570637 () Bool)

(declare-fun e!2208843 () List!37623)

(assert (=> b!3570637 (= e!2208843 call!258764)))

(declare-fun b!3570638 () Bool)

(assert (=> b!3570638 (= e!2208842 Nil!37499)))

(declare-fun b!3570639 () Bool)

(declare-fun e!2208845 () List!37623)

(assert (=> b!3570639 (= e!2208842 e!2208845)))

(declare-fun c!618736 () Bool)

(assert (=> b!3570639 (= c!618736 ((_ is ElementMatch!10269) (regex!5510 (rule!8204 (h!42921 tokens!494)))))))

(declare-fun b!3570640 () Bool)

(declare-fun c!618734 () Bool)

(assert (=> b!3570640 (= c!618734 ((_ is Star!10269) (regex!5510 (rule!8204 (h!42921 tokens!494)))))))

(assert (=> b!3570640 (= e!2208845 e!2208843)))

(declare-fun b!3570641 () Bool)

(assert (=> b!3570641 (= e!2208845 (Cons!37499 (c!618702 (regex!5510 (rule!8204 (h!42921 tokens!494)))) Nil!37499))))

(declare-fun b!3570642 () Bool)

(declare-fun e!2208844 () List!37623)

(declare-fun call!258766 () List!37623)

(assert (=> b!3570642 (= e!2208844 call!258766)))

(declare-fun b!3570643 () Bool)

(assert (=> b!3570643 (= e!2208843 e!2208844)))

(assert (=> b!3570643 (= c!618733 ((_ is Union!10269) (regex!5510 (rule!8204 (h!42921 tokens!494)))))))

(declare-fun bm!258761 () Bool)

(assert (=> bm!258761 (= call!258766 (++!9323 (ite c!618733 call!258767 call!258765) (ite c!618733 call!258765 call!258767)))))

(declare-fun b!3570644 () Bool)

(assert (=> b!3570644 (= e!2208844 call!258766)))

(declare-fun bm!258762 () Bool)

(assert (=> bm!258762 (= call!258764 (usedCharacters!744 (ite c!618734 (reg!10598 (regex!5510 (rule!8204 (h!42921 tokens!494)))) (ite c!618733 (regOne!21051 (regex!5510 (rule!8204 (h!42921 tokens!494)))) (regTwo!21050 (regex!5510 (rule!8204 (h!42921 tokens!494))))))))))

(assert (= (and d!1052302 c!618735) b!3570638))

(assert (= (and d!1052302 (not c!618735)) b!3570639))

(assert (= (and b!3570639 c!618736) b!3570641))

(assert (= (and b!3570639 (not c!618736)) b!3570640))

(assert (= (and b!3570640 c!618734) b!3570637))

(assert (= (and b!3570640 (not c!618734)) b!3570643))

(assert (= (and b!3570643 c!618733) b!3570642))

(assert (= (and b!3570643 (not c!618733)) b!3570644))

(assert (= (or b!3570642 b!3570644) bm!258760))

(assert (= (or b!3570642 b!3570644) bm!258759))

(assert (= (or b!3570642 b!3570644) bm!258761))

(assert (= (or b!3570637 bm!258759) bm!258762))

(declare-fun m!4059163 () Bool)

(assert (=> bm!258760 m!4059163))

(declare-fun m!4059165 () Bool)

(assert (=> bm!258761 m!4059165))

(declare-fun m!4059167 () Bool)

(assert (=> bm!258762 m!4059167))

(assert (=> b!3570384 d!1052302))

(declare-fun d!1052304 () Bool)

(assert (=> d!1052304 (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 (h!42921 tokens!494))))

(declare-fun lt!1223733 () Unit!53483)

(declare-fun choose!20757 (LexerInterface!5099 List!37624 List!37625 Token!10386) Unit!53483)

(assert (=> d!1052304 (= lt!1223733 (choose!20757 thiss!18206 rules!2135 tokens!494 (h!42921 tokens!494)))))

(assert (=> d!1052304 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052304 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1088 thiss!18206 rules!2135 tokens!494 (h!42921 tokens!494)) lt!1223733)))

(declare-fun bs!569156 () Bool)

(assert (= bs!569156 d!1052304))

(assert (=> bs!569156 m!4058825))

(declare-fun m!4059217 () Bool)

(assert (=> bs!569156 m!4059217))

(assert (=> bs!569156 m!4058713))

(assert (=> b!3570384 d!1052304))

(declare-fun b!3570748 () Bool)

(declare-fun e!2208905 () Bool)

(declare-fun e!2208907 () Bool)

(assert (=> b!3570748 (= e!2208905 e!2208907)))

(declare-fun res!1440050 () Bool)

(declare-fun lt!1223740 () tuple2!37408)

(assert (=> b!3570748 (= res!1440050 (< (size!28590 (_2!21838 lt!1223740)) (size!28590 lt!1223623)))))

(assert (=> b!3570748 (=> (not res!1440050) (not e!2208907))))

(declare-fun b!3570749 () Bool)

(assert (=> b!3570749 (= e!2208907 (not (isEmpty!22033 (_1!21838 lt!1223740))))))

(declare-fun e!2208906 () Bool)

(declare-fun b!3570750 () Bool)

(declare-datatypes ((tuple2!37414 0))(
  ( (tuple2!37415 (_1!21841 List!37625) (_2!21841 List!37623)) )
))
(declare-fun lexList!1497 (LexerInterface!5099 List!37624 List!37623) tuple2!37414)

(assert (=> b!3570750 (= e!2208906 (= (list!13755 (_2!21838 lt!1223740)) (_2!21841 (lexList!1497 thiss!18206 rules!2135 (list!13755 lt!1223623)))))))

(declare-fun b!3570751 () Bool)

(declare-fun res!1440048 () Bool)

(assert (=> b!3570751 (=> (not res!1440048) (not e!2208906))))

(assert (=> b!3570751 (= res!1440048 (= (list!13756 (_1!21838 lt!1223740)) (_1!21841 (lexList!1497 thiss!18206 rules!2135 (list!13755 lt!1223623)))))))

(declare-fun d!1052322 () Bool)

(assert (=> d!1052322 e!2208906))

(declare-fun res!1440049 () Bool)

(assert (=> d!1052322 (=> (not res!1440049) (not e!2208906))))

(assert (=> d!1052322 (= res!1440049 e!2208905)))

(declare-fun c!618761 () Bool)

(assert (=> d!1052322 (= c!618761 (> (size!28589 (_1!21838 lt!1223740)) 0))))

(declare-fun lexTailRecV2!1105 (LexerInterface!5099 List!37624 BalanceConc!22404 BalanceConc!22404 BalanceConc!22404 BalanceConc!22406) tuple2!37408)

(assert (=> d!1052322 (= lt!1223740 (lexTailRecV2!1105 thiss!18206 rules!2135 lt!1223623 (BalanceConc!22405 Empty!11395) lt!1223623 (BalanceConc!22407 Empty!11396)))))

(assert (=> d!1052322 (= (lex!2425 thiss!18206 rules!2135 lt!1223623) lt!1223740)))

(declare-fun b!3570752 () Bool)

(assert (=> b!3570752 (= e!2208905 (= (_2!21838 lt!1223740) lt!1223623))))

(assert (= (and d!1052322 c!618761) b!3570748))

(assert (= (and d!1052322 (not c!618761)) b!3570752))

(assert (= (and b!3570748 res!1440050) b!3570749))

(assert (= (and d!1052322 res!1440049) b!3570751))

(assert (= (and b!3570751 res!1440048) b!3570750))

(declare-fun m!4059249 () Bool)

(assert (=> b!3570750 m!4059249))

(declare-fun m!4059251 () Bool)

(assert (=> b!3570750 m!4059251))

(assert (=> b!3570750 m!4059251))

(declare-fun m!4059253 () Bool)

(assert (=> b!3570750 m!4059253))

(declare-fun m!4059255 () Bool)

(assert (=> b!3570749 m!4059255))

(declare-fun m!4059257 () Bool)

(assert (=> b!3570748 m!4059257))

(declare-fun m!4059259 () Bool)

(assert (=> b!3570748 m!4059259))

(declare-fun m!4059261 () Bool)

(assert (=> d!1052322 m!4059261))

(declare-fun m!4059263 () Bool)

(assert (=> d!1052322 m!4059263))

(declare-fun m!4059265 () Bool)

(assert (=> b!3570751 m!4059265))

(assert (=> b!3570751 m!4059251))

(assert (=> b!3570751 m!4059251))

(assert (=> b!3570751 m!4059253))

(assert (=> b!3570384 d!1052322))

(declare-fun d!1052336 () Bool)

(declare-fun lt!1223743 () Int)

(assert (=> d!1052336 (>= lt!1223743 0)))

(declare-fun e!2208910 () Int)

(assert (=> d!1052336 (= lt!1223743 e!2208910)))

(declare-fun c!618764 () Bool)

(assert (=> d!1052336 (= c!618764 ((_ is Nil!37499) lt!1223629))))

(assert (=> d!1052336 (= (size!28588 lt!1223629) lt!1223743)))

(declare-fun b!3570757 () Bool)

(assert (=> b!3570757 (= e!2208910 0)))

(declare-fun b!3570758 () Bool)

(assert (=> b!3570758 (= e!2208910 (+ 1 (size!28588 (t!289016 lt!1223629))))))

(assert (= (and d!1052336 c!618764) b!3570757))

(assert (= (and d!1052336 (not c!618764)) b!3570758))

(declare-fun m!4059267 () Bool)

(assert (=> b!3570758 m!4059267))

(assert (=> b!3570384 d!1052336))

(declare-fun d!1052338 () Bool)

(declare-fun lt!1223746 () Int)

(declare-fun size!28591 (List!37625) Int)

(assert (=> d!1052338 (= lt!1223746 (size!28591 (list!13756 (_1!21838 lt!1223593))))))

(declare-fun size!28592 (Conc!11396) Int)

(assert (=> d!1052338 (= lt!1223746 (size!28592 (c!618704 (_1!21838 lt!1223593))))))

(assert (=> d!1052338 (= (size!28589 (_1!21838 lt!1223593)) lt!1223746)))

(declare-fun bs!569159 () Bool)

(assert (= bs!569159 d!1052338))

(declare-fun m!4059269 () Bool)

(assert (=> bs!569159 m!4059269))

(assert (=> bs!569159 m!4059269))

(declare-fun m!4059271 () Bool)

(assert (=> bs!569159 m!4059271))

(declare-fun m!4059273 () Bool)

(assert (=> bs!569159 m!4059273))

(assert (=> b!3570384 d!1052338))

(declare-fun d!1052340 () Bool)

(declare-fun lt!1223747 () Bool)

(assert (=> d!1052340 (= lt!1223747 (select (content!5316 (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494))))) lt!1223634))))

(declare-fun e!2208912 () Bool)

(assert (=> d!1052340 (= lt!1223747 e!2208912)))

(declare-fun res!1440051 () Bool)

(assert (=> d!1052340 (=> (not res!1440051) (not e!2208912))))

(assert (=> d!1052340 (= res!1440051 ((_ is Cons!37499) (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494))))))))

(assert (=> d!1052340 (= (contains!7096 (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494)))) lt!1223634) lt!1223747)))

(declare-fun b!3570759 () Bool)

(declare-fun e!2208911 () Bool)

(assert (=> b!3570759 (= e!2208912 e!2208911)))

(declare-fun res!1440052 () Bool)

(assert (=> b!3570759 (=> res!1440052 e!2208911)))

(assert (=> b!3570759 (= res!1440052 (= (h!42919 (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494))))) lt!1223634))))

(declare-fun b!3570760 () Bool)

(assert (=> b!3570760 (= e!2208911 (contains!7096 (t!289016 (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494))))) lt!1223634))))

(assert (= (and d!1052340 res!1440051) b!3570759))

(assert (= (and b!3570759 (not res!1440052)) b!3570760))

(assert (=> d!1052340 m!4058745))

(declare-fun m!4059275 () Bool)

(assert (=> d!1052340 m!4059275))

(declare-fun m!4059277 () Bool)

(assert (=> d!1052340 m!4059277))

(declare-fun m!4059279 () Bool)

(assert (=> b!3570760 m!4059279))

(assert (=> b!3570384 d!1052340))

(declare-fun d!1052342 () Bool)

(declare-fun lt!1223778 () BalanceConc!22404)

(declare-fun printListTailRec!737 (LexerInterface!5099 List!37625 List!37623) List!37623)

(declare-fun dropList!1254 (BalanceConc!22406 Int) List!37625)

(assert (=> d!1052342 (= (list!13755 lt!1223778) (printListTailRec!737 thiss!18206 (dropList!1254 lt!1223582 0) (list!13755 (BalanceConc!22405 Empty!11395))))))

(declare-fun e!2208926 () BalanceConc!22404)

(assert (=> d!1052342 (= lt!1223778 e!2208926)))

(declare-fun c!618770 () Bool)

(assert (=> d!1052342 (= c!618770 (>= 0 (size!28589 lt!1223582)))))

(declare-fun e!2208927 () Bool)

(assert (=> d!1052342 e!2208927))

(declare-fun res!1440076 () Bool)

(assert (=> d!1052342 (=> (not res!1440076) (not e!2208927))))

(assert (=> d!1052342 (= res!1440076 (>= 0 0))))

(assert (=> d!1052342 (= (printTailRec!1594 thiss!18206 lt!1223582 0 (BalanceConc!22405 Empty!11395)) lt!1223778)))

(declare-fun b!3570794 () Bool)

(assert (=> b!3570794 (= e!2208927 (<= 0 (size!28589 lt!1223582)))))

(declare-fun b!3570795 () Bool)

(assert (=> b!3570795 (= e!2208926 (BalanceConc!22405 Empty!11395))))

(declare-fun b!3570796 () Bool)

(declare-fun ++!9324 (BalanceConc!22404 BalanceConc!22404) BalanceConc!22404)

(assert (=> b!3570796 (= e!2208926 (printTailRec!1594 thiss!18206 lt!1223582 (+ 0 1) (++!9324 (BalanceConc!22405 Empty!11395) (charsOf!3524 (apply!9012 lt!1223582 0)))))))

(declare-fun lt!1223783 () List!37625)

(assert (=> b!3570796 (= lt!1223783 (list!13756 lt!1223582))))

(declare-fun lt!1223780 () Unit!53483)

(declare-fun lemmaDropApply!1212 (List!37625 Int) Unit!53483)

(assert (=> b!3570796 (= lt!1223780 (lemmaDropApply!1212 lt!1223783 0))))

(declare-fun head!7440 (List!37625) Token!10386)

(declare-fun drop!2074 (List!37625 Int) List!37625)

(declare-fun apply!9016 (List!37625 Int) Token!10386)

(assert (=> b!3570796 (= (head!7440 (drop!2074 lt!1223783 0)) (apply!9016 lt!1223783 0))))

(declare-fun lt!1223782 () Unit!53483)

(assert (=> b!3570796 (= lt!1223782 lt!1223780)))

(declare-fun lt!1223777 () List!37625)

(assert (=> b!3570796 (= lt!1223777 (list!13756 lt!1223582))))

(declare-fun lt!1223779 () Unit!53483)

(declare-fun lemmaDropTail!1096 (List!37625 Int) Unit!53483)

(assert (=> b!3570796 (= lt!1223779 (lemmaDropTail!1096 lt!1223777 0))))

(declare-fun tail!5530 (List!37625) List!37625)

(assert (=> b!3570796 (= (tail!5530 (drop!2074 lt!1223777 0)) (drop!2074 lt!1223777 (+ 0 1)))))

(declare-fun lt!1223781 () Unit!53483)

(assert (=> b!3570796 (= lt!1223781 lt!1223779)))

(assert (= (and d!1052342 res!1440076) b!3570794))

(assert (= (and d!1052342 c!618770) b!3570795))

(assert (= (and d!1052342 (not c!618770)) b!3570796))

(declare-fun m!4059313 () Bool)

(assert (=> d!1052342 m!4059313))

(declare-fun m!4059315 () Bool)

(assert (=> d!1052342 m!4059315))

(declare-fun m!4059317 () Bool)

(assert (=> d!1052342 m!4059317))

(assert (=> d!1052342 m!4059315))

(declare-fun m!4059319 () Bool)

(assert (=> d!1052342 m!4059319))

(declare-fun m!4059321 () Bool)

(assert (=> d!1052342 m!4059321))

(assert (=> d!1052342 m!4059319))

(assert (=> b!3570794 m!4059317))

(declare-fun m!4059323 () Bool)

(assert (=> b!3570796 m!4059323))

(declare-fun m!4059325 () Bool)

(assert (=> b!3570796 m!4059325))

(declare-fun m!4059327 () Bool)

(assert (=> b!3570796 m!4059327))

(declare-fun m!4059329 () Bool)

(assert (=> b!3570796 m!4059329))

(declare-fun m!4059331 () Bool)

(assert (=> b!3570796 m!4059331))

(declare-fun m!4059333 () Bool)

(assert (=> b!3570796 m!4059333))

(declare-fun m!4059335 () Bool)

(assert (=> b!3570796 m!4059335))

(declare-fun m!4059337 () Bool)

(assert (=> b!3570796 m!4059337))

(declare-fun m!4059339 () Bool)

(assert (=> b!3570796 m!4059339))

(assert (=> b!3570796 m!4059329))

(declare-fun m!4059341 () Bool)

(assert (=> b!3570796 m!4059341))

(assert (=> b!3570796 m!4059325))

(assert (=> b!3570796 m!4059333))

(declare-fun m!4059343 () Bool)

(assert (=> b!3570796 m!4059343))

(declare-fun m!4059345 () Bool)

(assert (=> b!3570796 m!4059345))

(assert (=> b!3570796 m!4059335))

(assert (=> b!3570796 m!4059331))

(declare-fun m!4059347 () Bool)

(assert (=> b!3570796 m!4059347))

(assert (=> b!3570384 d!1052342))

(declare-fun d!1052348 () Bool)

(assert (=> d!1052348 (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 (h!42921 (t!289018 tokens!494)))))

(declare-fun lt!1223784 () Unit!53483)

(assert (=> d!1052348 (= lt!1223784 (choose!20757 thiss!18206 rules!2135 tokens!494 (h!42921 (t!289018 tokens!494))))))

(assert (=> d!1052348 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052348 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1088 thiss!18206 rules!2135 tokens!494 (h!42921 (t!289018 tokens!494))) lt!1223784)))

(declare-fun bs!569160 () Bool)

(assert (= bs!569160 d!1052348))

(assert (=> bs!569160 m!4058779))

(declare-fun m!4059349 () Bool)

(assert (=> bs!569160 m!4059349))

(assert (=> bs!569160 m!4058713))

(assert (=> b!3570384 d!1052348))

(declare-fun d!1052350 () Bool)

(assert (=> d!1052350 (not (contains!7096 (usedCharacters!744 (regex!5510 (rule!8204 (h!42921 tokens!494)))) lt!1223634))))

(declare-fun lt!1223787 () Unit!53483)

(declare-fun choose!20759 (LexerInterface!5099 List!37624 List!37624 Rule!10820 Rule!10820 C!20724) Unit!53483)

(assert (=> d!1052350 (= lt!1223787 (choose!20759 thiss!18206 rules!2135 rules!2135 (rule!8204 (h!42921 tokens!494)) (rule!8204 separatorToken!241) lt!1223634))))

(assert (=> d!1052350 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052350 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!310 thiss!18206 rules!2135 rules!2135 (rule!8204 (h!42921 tokens!494)) (rule!8204 separatorToken!241) lt!1223634) lt!1223787)))

(declare-fun bs!569161 () Bool)

(assert (= bs!569161 d!1052350))

(assert (=> bs!569161 m!4058745))

(assert (=> bs!569161 m!4058745))

(assert (=> bs!569161 m!4058809))

(declare-fun m!4059355 () Bool)

(assert (=> bs!569161 m!4059355))

(assert (=> bs!569161 m!4058819))

(assert (=> b!3570384 d!1052350))

(declare-fun d!1052354 () Bool)

(declare-fun lt!1223788 () Bool)

(assert (=> d!1052354 (= lt!1223788 (select (content!5316 lt!1223618) lt!1223591))))

(declare-fun e!2208934 () Bool)

(assert (=> d!1052354 (= lt!1223788 e!2208934)))

(declare-fun res!1440084 () Bool)

(assert (=> d!1052354 (=> (not res!1440084) (not e!2208934))))

(assert (=> d!1052354 (= res!1440084 ((_ is Cons!37499) lt!1223618))))

(assert (=> d!1052354 (= (contains!7096 lt!1223618 lt!1223591) lt!1223788)))

(declare-fun b!3570804 () Bool)

(declare-fun e!2208933 () Bool)

(assert (=> b!3570804 (= e!2208934 e!2208933)))

(declare-fun res!1440085 () Bool)

(assert (=> b!3570804 (=> res!1440085 e!2208933)))

(assert (=> b!3570804 (= res!1440085 (= (h!42919 lt!1223618) lt!1223591))))

(declare-fun b!3570805 () Bool)

(assert (=> b!3570805 (= e!2208933 (contains!7096 (t!289016 lt!1223618) lt!1223591))))

(assert (= (and d!1052354 res!1440084) b!3570804))

(assert (= (and b!3570804 (not res!1440085)) b!3570805))

(assert (=> d!1052354 m!4058907))

(declare-fun m!4059357 () Bool)

(assert (=> d!1052354 m!4059357))

(declare-fun m!4059359 () Bool)

(assert (=> b!3570805 m!4059359))

(assert (=> b!3570384 d!1052354))

(declare-fun d!1052356 () Bool)

(assert (=> d!1052356 (= (maxPrefix!2639 thiss!18206 rules!2135 (++!9323 (list!13755 (charsOf!3524 (h!42921 tokens!494))) lt!1223616)) (Some!7688 (tuple2!37411 (h!42921 tokens!494) lt!1223616)))))

(declare-fun lt!1223792 () Unit!53483)

(declare-fun choose!20760 (LexerInterface!5099 List!37624 Token!10386 Rule!10820 List!37623 Rule!10820) Unit!53483)

(assert (=> d!1052356 (= lt!1223792 (choose!20760 thiss!18206 rules!2135 (h!42921 tokens!494) (rule!8204 (h!42921 tokens!494)) lt!1223616 (rule!8204 separatorToken!241)))))

(assert (=> d!1052356 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052356 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!266 thiss!18206 rules!2135 (h!42921 tokens!494) (rule!8204 (h!42921 tokens!494)) lt!1223616 (rule!8204 separatorToken!241)) lt!1223792)))

(declare-fun bs!569163 () Bool)

(assert (= bs!569163 d!1052356))

(assert (=> bs!569163 m!4058713))

(declare-fun m!4059383 () Bool)

(assert (=> bs!569163 m!4059383))

(assert (=> bs!569163 m!4058709))

(assert (=> bs!569163 m!4058711))

(assert (=> bs!569163 m!4058711))

(declare-fun m!4059385 () Bool)

(assert (=> bs!569163 m!4059385))

(assert (=> bs!569163 m!4058709))

(assert (=> bs!569163 m!4059385))

(declare-fun m!4059387 () Bool)

(assert (=> bs!569163 m!4059387))

(assert (=> b!3570384 d!1052356))

(declare-fun d!1052366 () Bool)

(assert (=> d!1052366 (= (head!7439 lt!1223602) (h!42919 lt!1223602))))

(assert (=> b!3570384 d!1052366))

(declare-fun d!1052368 () Bool)

(declare-fun e!2208960 () Bool)

(assert (=> d!1052368 e!2208960))

(declare-fun res!1440103 () Bool)

(assert (=> d!1052368 (=> res!1440103 e!2208960)))

(declare-fun lt!1223821 () Option!7690)

(assert (=> d!1052368 (= res!1440103 (isEmpty!22037 lt!1223821))))

(declare-fun e!2208959 () Option!7690)

(assert (=> d!1052368 (= lt!1223821 e!2208959)))

(declare-fun c!618782 () Bool)

(assert (=> d!1052368 (= c!618782 (and ((_ is Cons!37500) rules!2135) (= (tag!6168 (h!42920 rules!2135)) (tag!6168 (rule!8204 (h!42921 tokens!494))))))))

(assert (=> d!1052368 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052368 (= (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 tokens!494)))) lt!1223821)))

(declare-fun b!3570843 () Bool)

(declare-fun e!2208957 () Option!7690)

(assert (=> b!3570843 (= e!2208959 e!2208957)))

(declare-fun c!618783 () Bool)

(assert (=> b!3570843 (= c!618783 (and ((_ is Cons!37500) rules!2135) (not (= (tag!6168 (h!42920 rules!2135)) (tag!6168 (rule!8204 (h!42921 tokens!494)))))))))

(declare-fun b!3570844 () Bool)

(assert (=> b!3570844 (= e!2208957 None!7689)))

(declare-fun b!3570845 () Bool)

(declare-fun e!2208958 () Bool)

(assert (=> b!3570845 (= e!2208960 e!2208958)))

(declare-fun res!1440104 () Bool)

(assert (=> b!3570845 (=> (not res!1440104) (not e!2208958))))

(assert (=> b!3570845 (= res!1440104 (contains!7095 rules!2135 (get!12069 lt!1223821)))))

(declare-fun b!3570846 () Bool)

(assert (=> b!3570846 (= e!2208959 (Some!7689 (h!42920 rules!2135)))))

(declare-fun b!3570847 () Bool)

(declare-fun lt!1223822 () Unit!53483)

(declare-fun lt!1223820 () Unit!53483)

(assert (=> b!3570847 (= lt!1223822 lt!1223820)))

(assert (=> b!3570847 (rulesInvariant!4496 thiss!18206 (t!289017 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!481 (LexerInterface!5099 Rule!10820 List!37624) Unit!53483)

(assert (=> b!3570847 (= lt!1223820 (lemmaInvariantOnRulesThenOnTail!481 thiss!18206 (h!42920 rules!2135) (t!289017 rules!2135)))))

(assert (=> b!3570847 (= e!2208957 (getRuleFromTag!1153 thiss!18206 (t!289017 rules!2135) (tag!6168 (rule!8204 (h!42921 tokens!494)))))))

(declare-fun b!3570848 () Bool)

(assert (=> b!3570848 (= e!2208958 (= (tag!6168 (get!12069 lt!1223821)) (tag!6168 (rule!8204 (h!42921 tokens!494)))))))

(assert (= (and d!1052368 c!618782) b!3570846))

(assert (= (and d!1052368 (not c!618782)) b!3570843))

(assert (= (and b!3570843 c!618783) b!3570847))

(assert (= (and b!3570843 (not c!618783)) b!3570844))

(assert (= (and d!1052368 (not res!1440103)) b!3570845))

(assert (= (and b!3570845 res!1440104) b!3570848))

(declare-fun m!4059425 () Bool)

(assert (=> d!1052368 m!4059425))

(assert (=> d!1052368 m!4058819))

(declare-fun m!4059427 () Bool)

(assert (=> b!3570845 m!4059427))

(assert (=> b!3570845 m!4059427))

(declare-fun m!4059429 () Bool)

(assert (=> b!3570845 m!4059429))

(declare-fun m!4059431 () Bool)

(assert (=> b!3570847 m!4059431))

(declare-fun m!4059433 () Bool)

(assert (=> b!3570847 m!4059433))

(declare-fun m!4059435 () Bool)

(assert (=> b!3570847 m!4059435))

(assert (=> b!3570848 m!4059427))

(assert (=> b!3570384 d!1052368))

(declare-fun d!1052372 () Bool)

(declare-fun lt!1223823 () Int)

(assert (=> d!1052372 (= lt!1223823 (size!28591 (list!13756 (_1!21838 lt!1223603))))))

(assert (=> d!1052372 (= lt!1223823 (size!28592 (c!618704 (_1!21838 lt!1223603))))))

(assert (=> d!1052372 (= (size!28589 (_1!21838 lt!1223603)) lt!1223823)))

(declare-fun bs!569164 () Bool)

(assert (= bs!569164 d!1052372))

(declare-fun m!4059437 () Bool)

(assert (=> bs!569164 m!4059437))

(assert (=> bs!569164 m!4059437))

(declare-fun m!4059439 () Bool)

(assert (=> bs!569164 m!4059439))

(declare-fun m!4059441 () Bool)

(assert (=> bs!569164 m!4059441))

(assert (=> b!3570384 d!1052372))

(declare-fun d!1052374 () Bool)

(assert (=> d!1052374 (= (isDefined!5933 lt!1223625) (not (isEmpty!22037 lt!1223625)))))

(declare-fun bs!569165 () Bool)

(assert (= bs!569165 d!1052374))

(declare-fun m!4059443 () Bool)

(assert (=> bs!569165 m!4059443))

(assert (=> b!3570384 d!1052374))

(declare-fun d!1052376 () Bool)

(declare-fun e!2208964 () Bool)

(assert (=> d!1052376 e!2208964))

(declare-fun res!1440105 () Bool)

(assert (=> d!1052376 (=> res!1440105 e!2208964)))

(declare-fun lt!1223825 () Option!7690)

(assert (=> d!1052376 (= res!1440105 (isEmpty!22037 lt!1223825))))

(declare-fun e!2208963 () Option!7690)

(assert (=> d!1052376 (= lt!1223825 e!2208963)))

(declare-fun c!618784 () Bool)

(assert (=> d!1052376 (= c!618784 (and ((_ is Cons!37500) rules!2135) (= (tag!6168 (h!42920 rules!2135)) (tag!6168 (rule!8204 separatorToken!241)))))))

(assert (=> d!1052376 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052376 (= (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 separatorToken!241))) lt!1223825)))

(declare-fun b!3570849 () Bool)

(declare-fun e!2208961 () Option!7690)

(assert (=> b!3570849 (= e!2208963 e!2208961)))

(declare-fun c!618785 () Bool)

(assert (=> b!3570849 (= c!618785 (and ((_ is Cons!37500) rules!2135) (not (= (tag!6168 (h!42920 rules!2135)) (tag!6168 (rule!8204 separatorToken!241))))))))

(declare-fun b!3570850 () Bool)

(assert (=> b!3570850 (= e!2208961 None!7689)))

(declare-fun b!3570851 () Bool)

(declare-fun e!2208962 () Bool)

(assert (=> b!3570851 (= e!2208964 e!2208962)))

(declare-fun res!1440106 () Bool)

(assert (=> b!3570851 (=> (not res!1440106) (not e!2208962))))

(assert (=> b!3570851 (= res!1440106 (contains!7095 rules!2135 (get!12069 lt!1223825)))))

(declare-fun b!3570852 () Bool)

(assert (=> b!3570852 (= e!2208963 (Some!7689 (h!42920 rules!2135)))))

(declare-fun b!3570853 () Bool)

(declare-fun lt!1223826 () Unit!53483)

(declare-fun lt!1223824 () Unit!53483)

(assert (=> b!3570853 (= lt!1223826 lt!1223824)))

(assert (=> b!3570853 (rulesInvariant!4496 thiss!18206 (t!289017 rules!2135))))

(assert (=> b!3570853 (= lt!1223824 (lemmaInvariantOnRulesThenOnTail!481 thiss!18206 (h!42920 rules!2135) (t!289017 rules!2135)))))

(assert (=> b!3570853 (= e!2208961 (getRuleFromTag!1153 thiss!18206 (t!289017 rules!2135) (tag!6168 (rule!8204 separatorToken!241))))))

(declare-fun b!3570854 () Bool)

(assert (=> b!3570854 (= e!2208962 (= (tag!6168 (get!12069 lt!1223825)) (tag!6168 (rule!8204 separatorToken!241))))))

(assert (= (and d!1052376 c!618784) b!3570852))

(assert (= (and d!1052376 (not c!618784)) b!3570849))

(assert (= (and b!3570849 c!618785) b!3570853))

(assert (= (and b!3570849 (not c!618785)) b!3570850))

(assert (= (and d!1052376 (not res!1440105)) b!3570851))

(assert (= (and b!3570851 res!1440106) b!3570854))

(declare-fun m!4059445 () Bool)

(assert (=> d!1052376 m!4059445))

(assert (=> d!1052376 m!4058819))

(declare-fun m!4059447 () Bool)

(assert (=> b!3570851 m!4059447))

(assert (=> b!3570851 m!4059447))

(declare-fun m!4059449 () Bool)

(assert (=> b!3570851 m!4059449))

(assert (=> b!3570853 m!4059431))

(assert (=> b!3570853 m!4059433))

(declare-fun m!4059451 () Bool)

(assert (=> b!3570853 m!4059451))

(assert (=> b!3570854 m!4059447))

(assert (=> b!3570384 d!1052376))

(declare-fun d!1052378 () Bool)

(declare-fun lt!1223827 () Int)

(assert (=> d!1052378 (>= lt!1223827 0)))

(declare-fun e!2208965 () Int)

(assert (=> d!1052378 (= lt!1223827 e!2208965)))

(declare-fun c!618786 () Bool)

(assert (=> d!1052378 (= c!618786 ((_ is Nil!37499) lt!1223602))))

(assert (=> d!1052378 (= (size!28588 lt!1223602) lt!1223827)))

(declare-fun b!3570855 () Bool)

(assert (=> b!3570855 (= e!2208965 0)))

(declare-fun b!3570856 () Bool)

(assert (=> b!3570856 (= e!2208965 (+ 1 (size!28588 (t!289016 lt!1223602))))))

(assert (= (and d!1052378 c!618786) b!3570855))

(assert (= (and d!1052378 (not c!618786)) b!3570856))

(declare-fun m!4059453 () Bool)

(assert (=> b!3570856 m!4059453))

(assert (=> b!3570384 d!1052378))

(declare-fun b!3570857 () Bool)

(declare-fun res!1440107 () Bool)

(declare-fun e!2208969 () Bool)

(assert (=> b!3570857 (=> (not res!1440107) (not e!2208969))))

(declare-fun lt!1223830 () Option!7689)

(assert (=> b!3570857 (= res!1440107 (= (rule!8204 (_1!21839 (get!12070 lt!1223830))) (rule!8204 (h!42921 tokens!494))))))

(declare-fun d!1052380 () Bool)

(declare-fun e!2208967 () Bool)

(assert (=> d!1052380 e!2208967))

(declare-fun res!1440113 () Bool)

(assert (=> d!1052380 (=> res!1440113 e!2208967)))

(assert (=> d!1052380 (= res!1440113 (isEmpty!22036 lt!1223830))))

(declare-fun e!2208968 () Option!7689)

(assert (=> d!1052380 (= lt!1223830 e!2208968)))

(declare-fun c!618787 () Bool)

(declare-fun lt!1223829 () tuple2!37412)

(assert (=> d!1052380 (= c!618787 (isEmpty!22031 (_1!21840 lt!1223829)))))

(assert (=> d!1052380 (= lt!1223829 (findLongestMatch!873 (regex!5510 (rule!8204 (h!42921 tokens!494))) lt!1223629))))

(assert (=> d!1052380 (ruleValid!1794 thiss!18206 (rule!8204 (h!42921 tokens!494)))))

(assert (=> d!1052380 (= (maxPrefixOneRule!1806 thiss!18206 (rule!8204 (h!42921 tokens!494)) lt!1223629) lt!1223830)))

(declare-fun b!3570858 () Bool)

(declare-fun e!2208966 () Bool)

(assert (=> b!3570858 (= e!2208966 (matchR!4853 (regex!5510 (rule!8204 (h!42921 tokens!494))) (_1!21840 (findLongestMatchInner!958 (regex!5510 (rule!8204 (h!42921 tokens!494))) Nil!37499 (size!28588 Nil!37499) lt!1223629 lt!1223629 (size!28588 lt!1223629)))))))

(declare-fun b!3570859 () Bool)

(declare-fun res!1440108 () Bool)

(assert (=> b!3570859 (=> (not res!1440108) (not e!2208969))))

(assert (=> b!3570859 (= res!1440108 (= (++!9323 (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223830)))) (_2!21839 (get!12070 lt!1223830))) lt!1223629))))

(declare-fun b!3570860 () Bool)

(assert (=> b!3570860 (= e!2208967 e!2208969)))

(declare-fun res!1440110 () Bool)

(assert (=> b!3570860 (=> (not res!1440110) (not e!2208969))))

(assert (=> b!3570860 (= res!1440110 (matchR!4853 (regex!5510 (rule!8204 (h!42921 tokens!494))) (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223830))))))))

(declare-fun b!3570861 () Bool)

(assert (=> b!3570861 (= e!2208968 (Some!7688 (tuple2!37411 (Token!10387 (apply!9013 (transformation!5510 (rule!8204 (h!42921 tokens!494))) (seqFromList!4073 (_1!21840 lt!1223829))) (rule!8204 (h!42921 tokens!494)) (size!28590 (seqFromList!4073 (_1!21840 lt!1223829))) (_1!21840 lt!1223829)) (_2!21840 lt!1223829))))))

(declare-fun lt!1223831 () Unit!53483)

(assert (=> b!3570861 (= lt!1223831 (longestMatchIsAcceptedByMatchOrIsEmpty!931 (regex!5510 (rule!8204 (h!42921 tokens!494))) lt!1223629))))

(declare-fun res!1440112 () Bool)

(assert (=> b!3570861 (= res!1440112 (isEmpty!22031 (_1!21840 (findLongestMatchInner!958 (regex!5510 (rule!8204 (h!42921 tokens!494))) Nil!37499 (size!28588 Nil!37499) lt!1223629 lt!1223629 (size!28588 lt!1223629)))))))

(assert (=> b!3570861 (=> res!1440112 e!2208966)))

(assert (=> b!3570861 e!2208966))

(declare-fun lt!1223828 () Unit!53483)

(assert (=> b!3570861 (= lt!1223828 lt!1223831)))

(declare-fun lt!1223832 () Unit!53483)

(assert (=> b!3570861 (= lt!1223832 (lemmaSemiInverse!1310 (transformation!5510 (rule!8204 (h!42921 tokens!494))) (seqFromList!4073 (_1!21840 lt!1223829))))))

(declare-fun b!3570862 () Bool)

(declare-fun res!1440111 () Bool)

(assert (=> b!3570862 (=> (not res!1440111) (not e!2208969))))

(assert (=> b!3570862 (= res!1440111 (= (value!177495 (_1!21839 (get!12070 lt!1223830))) (apply!9013 (transformation!5510 (rule!8204 (_1!21839 (get!12070 lt!1223830)))) (seqFromList!4073 (originalCharacters!6224 (_1!21839 (get!12070 lt!1223830)))))))))

(declare-fun b!3570863 () Bool)

(declare-fun res!1440109 () Bool)

(assert (=> b!3570863 (=> (not res!1440109) (not e!2208969))))

(assert (=> b!3570863 (= res!1440109 (< (size!28588 (_2!21839 (get!12070 lt!1223830))) (size!28588 lt!1223629)))))

(declare-fun b!3570864 () Bool)

(assert (=> b!3570864 (= e!2208969 (= (size!28587 (_1!21839 (get!12070 lt!1223830))) (size!28588 (originalCharacters!6224 (_1!21839 (get!12070 lt!1223830))))))))

(declare-fun b!3570865 () Bool)

(assert (=> b!3570865 (= e!2208968 None!7688)))

(assert (= (and d!1052380 c!618787) b!3570865))

(assert (= (and d!1052380 (not c!618787)) b!3570861))

(assert (= (and b!3570861 (not res!1440112)) b!3570858))

(assert (= (and d!1052380 (not res!1440113)) b!3570860))

(assert (= (and b!3570860 res!1440110) b!3570859))

(assert (= (and b!3570859 res!1440108) b!3570863))

(assert (= (and b!3570863 res!1440109) b!3570857))

(assert (= (and b!3570857 res!1440107) b!3570862))

(assert (= (and b!3570862 res!1440111) b!3570864))

(declare-fun m!4059455 () Bool)

(assert (=> b!3570857 m!4059455))

(assert (=> b!3570859 m!4059455))

(declare-fun m!4059457 () Bool)

(assert (=> b!3570859 m!4059457))

(assert (=> b!3570859 m!4059457))

(declare-fun m!4059459 () Bool)

(assert (=> b!3570859 m!4059459))

(assert (=> b!3570859 m!4059459))

(declare-fun m!4059461 () Bool)

(assert (=> b!3570859 m!4059461))

(assert (=> b!3570864 m!4059455))

(declare-fun m!4059463 () Bool)

(assert (=> b!3570864 m!4059463))

(declare-fun m!4059465 () Bool)

(assert (=> d!1052380 m!4059465))

(declare-fun m!4059467 () Bool)

(assert (=> d!1052380 m!4059467))

(declare-fun m!4059469 () Bool)

(assert (=> d!1052380 m!4059469))

(declare-fun m!4059471 () Bool)

(assert (=> d!1052380 m!4059471))

(assert (=> b!3570860 m!4059455))

(assert (=> b!3570860 m!4059457))

(assert (=> b!3570860 m!4059457))

(assert (=> b!3570860 m!4059459))

(assert (=> b!3570860 m!4059459))

(declare-fun m!4059473 () Bool)

(assert (=> b!3570860 m!4059473))

(declare-fun m!4059475 () Bool)

(assert (=> b!3570861 m!4059475))

(declare-fun m!4059477 () Bool)

(assert (=> b!3570861 m!4059477))

(declare-fun m!4059479 () Bool)

(assert (=> b!3570861 m!4059479))

(declare-fun m!4059481 () Bool)

(assert (=> b!3570861 m!4059481))

(assert (=> b!3570861 m!4059477))

(assert (=> b!3570861 m!4059477))

(declare-fun m!4059483 () Bool)

(assert (=> b!3570861 m!4059483))

(assert (=> b!3570861 m!4058805))

(assert (=> b!3570861 m!4059091))

(assert (=> b!3570861 m!4059091))

(assert (=> b!3570861 m!4058805))

(declare-fun m!4059485 () Bool)

(assert (=> b!3570861 m!4059485))

(assert (=> b!3570861 m!4059477))

(declare-fun m!4059487 () Bool)

(assert (=> b!3570861 m!4059487))

(assert (=> b!3570858 m!4059091))

(assert (=> b!3570858 m!4058805))

(assert (=> b!3570858 m!4059091))

(assert (=> b!3570858 m!4058805))

(assert (=> b!3570858 m!4059485))

(declare-fun m!4059489 () Bool)

(assert (=> b!3570858 m!4059489))

(assert (=> b!3570862 m!4059455))

(declare-fun m!4059491 () Bool)

(assert (=> b!3570862 m!4059491))

(assert (=> b!3570862 m!4059491))

(declare-fun m!4059493 () Bool)

(assert (=> b!3570862 m!4059493))

(assert (=> b!3570863 m!4059455))

(declare-fun m!4059495 () Bool)

(assert (=> b!3570863 m!4059495))

(assert (=> b!3570863 m!4058805))

(assert (=> b!3570384 d!1052380))

(declare-fun d!1052382 () Bool)

(assert (=> d!1052382 (= (isDefined!5933 lt!1223633) (not (isEmpty!22037 lt!1223633)))))

(declare-fun bs!569166 () Bool)

(assert (= bs!569166 d!1052382))

(declare-fun m!4059497 () Bool)

(assert (=> bs!569166 m!4059497))

(assert (=> b!3570384 d!1052382))

(declare-fun d!1052384 () Bool)

(declare-fun dynLambda!16105 (Int BalanceConc!22404) TokenValue!5740)

(assert (=> d!1052384 (= (apply!9013 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (seqFromList!4073 lt!1223602)) (dynLambda!16105 (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (seqFromList!4073 lt!1223602)))))

(declare-fun b_lambda!105241 () Bool)

(assert (=> (not b_lambda!105241) (not d!1052384)))

(declare-fun t!289046 () Bool)

(declare-fun tb!203333 () Bool)

(assert (=> (and b!3570419 (= (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289046) tb!203333))

(declare-fun result!247940 () Bool)

(assert (=> tb!203333 (= result!247940 (inv!21 (dynLambda!16105 (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (seqFromList!4073 lt!1223602))))))

(declare-fun m!4059499 () Bool)

(assert (=> tb!203333 m!4059499))

(assert (=> d!1052384 t!289046))

(declare-fun b_and!256959 () Bool)

(assert (= b_and!256923 (and (=> t!289046 result!247940) b_and!256959)))

(declare-fun t!289048 () Bool)

(declare-fun tb!203335 () Bool)

(assert (=> (and b!3570412 (= (toValue!7778 (transformation!5510 (rule!8204 separatorToken!241))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289048) tb!203335))

(declare-fun result!247944 () Bool)

(assert (= result!247944 result!247940))

(assert (=> d!1052384 t!289048))

(declare-fun b_and!256961 () Bool)

(assert (= b_and!256927 (and (=> t!289048 result!247944) b_and!256961)))

(declare-fun t!289050 () Bool)

(declare-fun tb!203337 () Bool)

(assert (=> (and b!3570404 (= (toValue!7778 (transformation!5510 (h!42920 rules!2135))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289050) tb!203337))

(declare-fun result!247946 () Bool)

(assert (= result!247946 result!247940))

(assert (=> d!1052384 t!289050))

(declare-fun b_and!256963 () Bool)

(assert (= b_and!256931 (and (=> t!289050 result!247946) b_and!256963)))

(assert (=> d!1052384 m!4058727))

(declare-fun m!4059501 () Bool)

(assert (=> d!1052384 m!4059501))

(assert (=> b!3570384 d!1052384))

(declare-fun d!1052386 () Bool)

(assert (=> d!1052386 (= (apply!9013 (transformation!5510 (rule!8204 (h!42921 tokens!494))) lt!1223631) (dynLambda!16105 (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) lt!1223631))))

(declare-fun b_lambda!105243 () Bool)

(assert (=> (not b_lambda!105243) (not d!1052386)))

(declare-fun t!289052 () Bool)

(declare-fun tb!203339 () Bool)

(assert (=> (and b!3570419 (= (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289052) tb!203339))

(declare-fun result!247948 () Bool)

(assert (=> tb!203339 (= result!247948 (inv!21 (dynLambda!16105 (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) lt!1223631)))))

(declare-fun m!4059503 () Bool)

(assert (=> tb!203339 m!4059503))

(assert (=> d!1052386 t!289052))

(declare-fun b_and!256965 () Bool)

(assert (= b_and!256959 (and (=> t!289052 result!247948) b_and!256965)))

(declare-fun t!289054 () Bool)

(declare-fun tb!203341 () Bool)

(assert (=> (and b!3570412 (= (toValue!7778 (transformation!5510 (rule!8204 separatorToken!241))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289054) tb!203341))

(declare-fun result!247950 () Bool)

(assert (= result!247950 result!247948))

(assert (=> d!1052386 t!289054))

(declare-fun b_and!256967 () Bool)

(assert (= b_and!256961 (and (=> t!289054 result!247950) b_and!256967)))

(declare-fun tb!203343 () Bool)

(declare-fun t!289056 () Bool)

(assert (=> (and b!3570404 (= (toValue!7778 (transformation!5510 (h!42920 rules!2135))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289056) tb!203343))

(declare-fun result!247952 () Bool)

(assert (= result!247952 result!247948))

(assert (=> d!1052386 t!289056))

(declare-fun b_and!256969 () Bool)

(assert (= b_and!256963 (and (=> t!289056 result!247952) b_and!256969)))

(declare-fun m!4059505 () Bool)

(assert (=> d!1052386 m!4059505))

(assert (=> b!3570384 d!1052386))

(declare-fun d!1052388 () Bool)

(declare-fun lt!1223844 () BalanceConc!22404)

(assert (=> d!1052388 (= (list!13755 lt!1223844) (printList!1647 thiss!18206 (list!13756 lt!1223582)))))

(assert (=> d!1052388 (= lt!1223844 (printTailRec!1594 thiss!18206 lt!1223582 0 (BalanceConc!22405 Empty!11395)))))

(assert (=> d!1052388 (= (print!2164 thiss!18206 lt!1223582) lt!1223844)))

(declare-fun bs!569168 () Bool)

(assert (= bs!569168 d!1052388))

(declare-fun m!4059527 () Bool)

(assert (=> bs!569168 m!4059527))

(assert (=> bs!569168 m!4059323))

(assert (=> bs!569168 m!4059323))

(declare-fun m!4059533 () Bool)

(assert (=> bs!569168 m!4059533))

(assert (=> bs!569168 m!4058761))

(assert (=> b!3570384 d!1052388))

(declare-fun d!1052398 () Bool)

(declare-fun e!2209002 () Bool)

(assert (=> d!1052398 e!2209002))

(declare-fun res!1440144 () Bool)

(assert (=> d!1052398 (=> (not res!1440144) (not e!2209002))))

(assert (=> d!1052398 (= res!1440144 (isDefined!5933 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494)))))))))

(declare-fun lt!1223852 () Unit!53483)

(declare-fun choose!20761 (LexerInterface!5099 List!37624 List!37623 Token!10386) Unit!53483)

(assert (=> d!1052398 (= lt!1223852 (choose!20761 thiss!18206 rules!2135 lt!1223602 (h!42921 (t!289018 tokens!494))))))

(assert (=> d!1052398 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052398 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1153 thiss!18206 rules!2135 lt!1223602 (h!42921 (t!289018 tokens!494))) lt!1223852)))

(declare-fun b!3570912 () Bool)

(declare-fun res!1440145 () Bool)

(assert (=> b!3570912 (=> (not res!1440145) (not e!2209002))))

(assert (=> b!3570912 (= res!1440145 (matchR!4853 (regex!5510 (get!12069 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))))) (list!13755 (charsOf!3524 (h!42921 (t!289018 tokens!494))))))))

(declare-fun b!3570913 () Bool)

(assert (=> b!3570913 (= e!2209002 (= (rule!8204 (h!42921 (t!289018 tokens!494))) (get!12069 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))))))))

(assert (= (and d!1052398 res!1440144) b!3570912))

(assert (= (and b!3570912 res!1440145) b!3570913))

(assert (=> d!1052398 m!4058799))

(assert (=> d!1052398 m!4058799))

(declare-fun m!4059563 () Bool)

(assert (=> d!1052398 m!4059563))

(declare-fun m!4059565 () Bool)

(assert (=> d!1052398 m!4059565))

(assert (=> d!1052398 m!4058819))

(assert (=> b!3570912 m!4058667))

(assert (=> b!3570912 m!4058667))

(assert (=> b!3570912 m!4058675))

(assert (=> b!3570912 m!4058675))

(declare-fun m!4059567 () Bool)

(assert (=> b!3570912 m!4059567))

(assert (=> b!3570912 m!4058799))

(declare-fun m!4059569 () Bool)

(assert (=> b!3570912 m!4059569))

(assert (=> b!3570912 m!4058799))

(assert (=> b!3570913 m!4058799))

(assert (=> b!3570913 m!4058799))

(assert (=> b!3570913 m!4059569))

(assert (=> b!3570384 d!1052398))

(declare-fun d!1052410 () Bool)

(declare-fun lt!1223853 () BalanceConc!22404)

(assert (=> d!1052410 (= (list!13755 lt!1223853) (printList!1647 thiss!18206 (list!13756 lt!1223586)))))

(assert (=> d!1052410 (= lt!1223853 (printTailRec!1594 thiss!18206 lt!1223586 0 (BalanceConc!22405 Empty!11395)))))

(assert (=> d!1052410 (= (print!2164 thiss!18206 lt!1223586) lt!1223853)))

(declare-fun bs!569170 () Bool)

(assert (= bs!569170 d!1052410))

(declare-fun m!4059571 () Bool)

(assert (=> bs!569170 m!4059571))

(declare-fun m!4059573 () Bool)

(assert (=> bs!569170 m!4059573))

(assert (=> bs!569170 m!4059573))

(declare-fun m!4059575 () Bool)

(assert (=> bs!569170 m!4059575))

(assert (=> bs!569170 m!4058739))

(assert (=> b!3570384 d!1052410))

(declare-fun b!3570916 () Bool)

(declare-fun e!2209004 () Bool)

(declare-fun e!2209006 () Bool)

(assert (=> b!3570916 (= e!2209004 e!2209006)))

(declare-fun res!1440150 () Bool)

(declare-fun lt!1223854 () tuple2!37408)

(assert (=> b!3570916 (= res!1440150 (< (size!28590 (_2!21838 lt!1223854)) (size!28590 lt!1223587)))))

(assert (=> b!3570916 (=> (not res!1440150) (not e!2209006))))

(declare-fun b!3570917 () Bool)

(assert (=> b!3570917 (= e!2209006 (not (isEmpty!22033 (_1!21838 lt!1223854))))))

(declare-fun e!2209005 () Bool)

(declare-fun b!3570918 () Bool)

(assert (=> b!3570918 (= e!2209005 (= (list!13755 (_2!21838 lt!1223854)) (_2!21841 (lexList!1497 thiss!18206 rules!2135 (list!13755 lt!1223587)))))))

(declare-fun b!3570919 () Bool)

(declare-fun res!1440148 () Bool)

(assert (=> b!3570919 (=> (not res!1440148) (not e!2209005))))

(assert (=> b!3570919 (= res!1440148 (= (list!13756 (_1!21838 lt!1223854)) (_1!21841 (lexList!1497 thiss!18206 rules!2135 (list!13755 lt!1223587)))))))

(declare-fun d!1052412 () Bool)

(assert (=> d!1052412 e!2209005))

(declare-fun res!1440149 () Bool)

(assert (=> d!1052412 (=> (not res!1440149) (not e!2209005))))

(assert (=> d!1052412 (= res!1440149 e!2209004)))

(declare-fun c!618795 () Bool)

(assert (=> d!1052412 (= c!618795 (> (size!28589 (_1!21838 lt!1223854)) 0))))

(assert (=> d!1052412 (= lt!1223854 (lexTailRecV2!1105 thiss!18206 rules!2135 lt!1223587 (BalanceConc!22405 Empty!11395) lt!1223587 (BalanceConc!22407 Empty!11396)))))

(assert (=> d!1052412 (= (lex!2425 thiss!18206 rules!2135 lt!1223587) lt!1223854)))

(declare-fun b!3570920 () Bool)

(assert (=> b!3570920 (= e!2209004 (= (_2!21838 lt!1223854) lt!1223587))))

(assert (= (and d!1052412 c!618795) b!3570916))

(assert (= (and d!1052412 (not c!618795)) b!3570920))

(assert (= (and b!3570916 res!1440150) b!3570917))

(assert (= (and d!1052412 res!1440149) b!3570919))

(assert (= (and b!3570919 res!1440148) b!3570918))

(declare-fun m!4059577 () Bool)

(assert (=> b!3570918 m!4059577))

(declare-fun m!4059579 () Bool)

(assert (=> b!3570918 m!4059579))

(assert (=> b!3570918 m!4059579))

(declare-fun m!4059581 () Bool)

(assert (=> b!3570918 m!4059581))

(declare-fun m!4059583 () Bool)

(assert (=> b!3570917 m!4059583))

(declare-fun m!4059585 () Bool)

(assert (=> b!3570916 m!4059585))

(declare-fun m!4059587 () Bool)

(assert (=> b!3570916 m!4059587))

(declare-fun m!4059589 () Bool)

(assert (=> d!1052412 m!4059589))

(declare-fun m!4059591 () Bool)

(assert (=> d!1052412 m!4059591))

(declare-fun m!4059593 () Bool)

(assert (=> b!3570919 m!4059593))

(assert (=> b!3570919 m!4059579))

(assert (=> b!3570919 m!4059579))

(assert (=> b!3570919 m!4059581))

(assert (=> b!3570384 d!1052412))

(declare-fun d!1052414 () Bool)

(declare-fun lt!1223857 () Bool)

(assert (=> d!1052414 (= lt!1223857 (select (content!5315 rules!2135) (rule!8204 separatorToken!241)))))

(declare-fun e!2209008 () Bool)

(assert (=> d!1052414 (= lt!1223857 e!2209008)))

(declare-fun res!1440152 () Bool)

(assert (=> d!1052414 (=> (not res!1440152) (not e!2209008))))

(assert (=> d!1052414 (= res!1440152 ((_ is Cons!37500) rules!2135))))

(assert (=> d!1052414 (= (contains!7095 rules!2135 (rule!8204 separatorToken!241)) lt!1223857)))

(declare-fun b!3570921 () Bool)

(declare-fun e!2209007 () Bool)

(assert (=> b!3570921 (= e!2209008 e!2209007)))

(declare-fun res!1440151 () Bool)

(assert (=> b!3570921 (=> res!1440151 e!2209007)))

(assert (=> b!3570921 (= res!1440151 (= (h!42920 rules!2135) (rule!8204 separatorToken!241)))))

(declare-fun b!3570922 () Bool)

(assert (=> b!3570922 (= e!2209007 (contains!7095 (t!289017 rules!2135) (rule!8204 separatorToken!241)))))

(assert (= (and d!1052414 res!1440152) b!3570921))

(assert (= (and b!3570921 (not res!1440151)) b!3570922))

(assert (=> d!1052414 m!4058901))

(declare-fun m!4059595 () Bool)

(assert (=> d!1052414 m!4059595))

(declare-fun m!4059597 () Bool)

(assert (=> b!3570922 m!4059597))

(assert (=> b!3570384 d!1052414))

(declare-fun bm!258772 () Bool)

(declare-fun call!258780 () List!37623)

(declare-fun call!258777 () List!37623)

(assert (=> bm!258772 (= call!258780 call!258777)))

(declare-fun bm!258773 () Bool)

(declare-fun call!258778 () List!37623)

(declare-fun c!618796 () Bool)

(assert (=> bm!258773 (= call!258778 (usedCharacters!744 (ite c!618796 (regTwo!21051 (regex!5510 (rule!8204 separatorToken!241))) (regOne!21050 (regex!5510 (rule!8204 separatorToken!241))))))))

(declare-fun d!1052416 () Bool)

(declare-fun c!618798 () Bool)

(assert (=> d!1052416 (= c!618798 (or ((_ is EmptyExpr!10269) (regex!5510 (rule!8204 separatorToken!241))) ((_ is EmptyLang!10269) (regex!5510 (rule!8204 separatorToken!241)))))))

(declare-fun e!2209009 () List!37623)

(assert (=> d!1052416 (= (usedCharacters!744 (regex!5510 (rule!8204 separatorToken!241))) e!2209009)))

(declare-fun b!3570923 () Bool)

(declare-fun e!2209010 () List!37623)

(assert (=> b!3570923 (= e!2209010 call!258777)))

(declare-fun b!3570924 () Bool)

(assert (=> b!3570924 (= e!2209009 Nil!37499)))

(declare-fun b!3570925 () Bool)

(declare-fun e!2209012 () List!37623)

(assert (=> b!3570925 (= e!2209009 e!2209012)))

(declare-fun c!618799 () Bool)

(assert (=> b!3570925 (= c!618799 ((_ is ElementMatch!10269) (regex!5510 (rule!8204 separatorToken!241))))))

(declare-fun b!3570926 () Bool)

(declare-fun c!618797 () Bool)

(assert (=> b!3570926 (= c!618797 ((_ is Star!10269) (regex!5510 (rule!8204 separatorToken!241))))))

(assert (=> b!3570926 (= e!2209012 e!2209010)))

(declare-fun b!3570927 () Bool)

(assert (=> b!3570927 (= e!2209012 (Cons!37499 (c!618702 (regex!5510 (rule!8204 separatorToken!241))) Nil!37499))))

(declare-fun b!3570928 () Bool)

(declare-fun e!2209011 () List!37623)

(declare-fun call!258779 () List!37623)

(assert (=> b!3570928 (= e!2209011 call!258779)))

(declare-fun b!3570929 () Bool)

(assert (=> b!3570929 (= e!2209010 e!2209011)))

(assert (=> b!3570929 (= c!618796 ((_ is Union!10269) (regex!5510 (rule!8204 separatorToken!241))))))

(declare-fun bm!258774 () Bool)

(assert (=> bm!258774 (= call!258779 (++!9323 (ite c!618796 call!258780 call!258778) (ite c!618796 call!258778 call!258780)))))

(declare-fun b!3570930 () Bool)

(assert (=> b!3570930 (= e!2209011 call!258779)))

(declare-fun bm!258775 () Bool)

(assert (=> bm!258775 (= call!258777 (usedCharacters!744 (ite c!618797 (reg!10598 (regex!5510 (rule!8204 separatorToken!241))) (ite c!618796 (regOne!21051 (regex!5510 (rule!8204 separatorToken!241))) (regTwo!21050 (regex!5510 (rule!8204 separatorToken!241)))))))))

(assert (= (and d!1052416 c!618798) b!3570924))

(assert (= (and d!1052416 (not c!618798)) b!3570925))

(assert (= (and b!3570925 c!618799) b!3570927))

(assert (= (and b!3570925 (not c!618799)) b!3570926))

(assert (= (and b!3570926 c!618797) b!3570923))

(assert (= (and b!3570926 (not c!618797)) b!3570929))

(assert (= (and b!3570929 c!618796) b!3570928))

(assert (= (and b!3570929 (not c!618796)) b!3570930))

(assert (= (or b!3570928 b!3570930) bm!258773))

(assert (= (or b!3570928 b!3570930) bm!258772))

(assert (= (or b!3570928 b!3570930) bm!258774))

(assert (= (or b!3570923 bm!258772) bm!258775))

(declare-fun m!4059607 () Bool)

(assert (=> bm!258773 m!4059607))

(declare-fun m!4059609 () Bool)

(assert (=> bm!258774 m!4059609))

(declare-fun m!4059611 () Bool)

(assert (=> bm!258775 m!4059611))

(assert (=> b!3570384 d!1052416))

(declare-fun d!1052422 () Bool)

(assert (=> d!1052422 (= (head!7439 lt!1223614) (h!42919 lt!1223614))))

(assert (=> b!3570384 d!1052422))

(declare-fun d!1052424 () Bool)

(declare-fun lt!1223860 () Bool)

(assert (=> d!1052424 (= lt!1223860 (select (content!5316 lt!1223584) lt!1223591))))

(declare-fun e!2209014 () Bool)

(assert (=> d!1052424 (= lt!1223860 e!2209014)))

(declare-fun res!1440153 () Bool)

(assert (=> d!1052424 (=> (not res!1440153) (not e!2209014))))

(assert (=> d!1052424 (= res!1440153 ((_ is Cons!37499) lt!1223584))))

(assert (=> d!1052424 (= (contains!7096 lt!1223584 lt!1223591) lt!1223860)))

(declare-fun b!3570931 () Bool)

(declare-fun e!2209013 () Bool)

(assert (=> b!3570931 (= e!2209014 e!2209013)))

(declare-fun res!1440154 () Bool)

(assert (=> b!3570931 (=> res!1440154 e!2209013)))

(assert (=> b!3570931 (= res!1440154 (= (h!42919 lt!1223584) lt!1223591))))

(declare-fun b!3570932 () Bool)

(assert (=> b!3570932 (= e!2209013 (contains!7096 (t!289016 lt!1223584) lt!1223591))))

(assert (= (and d!1052424 res!1440153) b!3570931))

(assert (= (and b!3570931 (not res!1440154)) b!3570932))

(assert (=> d!1052424 m!4059149))

(declare-fun m!4059613 () Bool)

(assert (=> d!1052424 m!4059613))

(declare-fun m!4059615 () Bool)

(assert (=> b!3570932 m!4059615))

(assert (=> b!3570384 d!1052424))

(declare-fun d!1052426 () Bool)

(declare-fun e!2209018 () Bool)

(assert (=> d!1052426 e!2209018))

(declare-fun res!1440155 () Bool)

(assert (=> d!1052426 (=> res!1440155 e!2209018)))

(declare-fun lt!1223862 () Option!7690)

(assert (=> d!1052426 (= res!1440155 (isEmpty!22037 lt!1223862))))

(declare-fun e!2209017 () Option!7690)

(assert (=> d!1052426 (= lt!1223862 e!2209017)))

(declare-fun c!618800 () Bool)

(assert (=> d!1052426 (= c!618800 (and ((_ is Cons!37500) rules!2135) (= (tag!6168 (h!42920 rules!2135)) (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494)))))))))

(assert (=> d!1052426 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052426 (= (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))) lt!1223862)))

(declare-fun b!3570933 () Bool)

(declare-fun e!2209015 () Option!7690)

(assert (=> b!3570933 (= e!2209017 e!2209015)))

(declare-fun c!618801 () Bool)

(assert (=> b!3570933 (= c!618801 (and ((_ is Cons!37500) rules!2135) (not (= (tag!6168 (h!42920 rules!2135)) (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))))))))

(declare-fun b!3570934 () Bool)

(assert (=> b!3570934 (= e!2209015 None!7689)))

(declare-fun b!3570935 () Bool)

(declare-fun e!2209016 () Bool)

(assert (=> b!3570935 (= e!2209018 e!2209016)))

(declare-fun res!1440156 () Bool)

(assert (=> b!3570935 (=> (not res!1440156) (not e!2209016))))

(assert (=> b!3570935 (= res!1440156 (contains!7095 rules!2135 (get!12069 lt!1223862)))))

(declare-fun b!3570936 () Bool)

(assert (=> b!3570936 (= e!2209017 (Some!7689 (h!42920 rules!2135)))))

(declare-fun b!3570937 () Bool)

(declare-fun lt!1223863 () Unit!53483)

(declare-fun lt!1223861 () Unit!53483)

(assert (=> b!3570937 (= lt!1223863 lt!1223861)))

(assert (=> b!3570937 (rulesInvariant!4496 thiss!18206 (t!289017 rules!2135))))

(assert (=> b!3570937 (= lt!1223861 (lemmaInvariantOnRulesThenOnTail!481 thiss!18206 (h!42920 rules!2135) (t!289017 rules!2135)))))

(assert (=> b!3570937 (= e!2209015 (getRuleFromTag!1153 thiss!18206 (t!289017 rules!2135) (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun b!3570938 () Bool)

(assert (=> b!3570938 (= e!2209016 (= (tag!6168 (get!12069 lt!1223862)) (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(assert (= (and d!1052426 c!618800) b!3570936))

(assert (= (and d!1052426 (not c!618800)) b!3570933))

(assert (= (and b!3570933 c!618801) b!3570937))

(assert (= (and b!3570933 (not c!618801)) b!3570934))

(assert (= (and d!1052426 (not res!1440155)) b!3570935))

(assert (= (and b!3570935 res!1440156) b!3570938))

(declare-fun m!4059617 () Bool)

(assert (=> d!1052426 m!4059617))

(assert (=> d!1052426 m!4058819))

(declare-fun m!4059619 () Bool)

(assert (=> b!3570935 m!4059619))

(assert (=> b!3570935 m!4059619))

(declare-fun m!4059621 () Bool)

(assert (=> b!3570935 m!4059621))

(assert (=> b!3570937 m!4059431))

(assert (=> b!3570937 m!4059433))

(declare-fun m!4059623 () Bool)

(assert (=> b!3570937 m!4059623))

(assert (=> b!3570938 m!4059619))

(assert (=> b!3570384 d!1052426))

(declare-fun d!1052428 () Bool)

(declare-fun e!2209019 () Bool)

(assert (=> d!1052428 e!2209019))

(declare-fun res!1440157 () Bool)

(assert (=> d!1052428 (=> (not res!1440157) (not e!2209019))))

(assert (=> d!1052428 (= res!1440157 (isDefined!5933 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 separatorToken!241)))))))

(declare-fun lt!1223864 () Unit!53483)

(assert (=> d!1052428 (= lt!1223864 (choose!20761 thiss!18206 rules!2135 lt!1223614 separatorToken!241))))

(assert (=> d!1052428 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052428 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1153 thiss!18206 rules!2135 lt!1223614 separatorToken!241) lt!1223864)))

(declare-fun b!3570939 () Bool)

(declare-fun res!1440158 () Bool)

(assert (=> b!3570939 (=> (not res!1440158) (not e!2209019))))

(assert (=> b!3570939 (= res!1440158 (matchR!4853 (regex!5510 (get!12069 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 separatorToken!241))))) (list!13755 (charsOf!3524 separatorToken!241))))))

(declare-fun b!3570940 () Bool)

(assert (=> b!3570940 (= e!2209019 (= (rule!8204 separatorToken!241) (get!12069 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 separatorToken!241))))))))

(assert (= (and d!1052428 res!1440157) b!3570939))

(assert (= (and b!3570939 res!1440158) b!3570940))

(assert (=> d!1052428 m!4058801))

(assert (=> d!1052428 m!4058801))

(declare-fun m!4059625 () Bool)

(assert (=> d!1052428 m!4059625))

(declare-fun m!4059627 () Bool)

(assert (=> d!1052428 m!4059627))

(assert (=> d!1052428 m!4058819))

(assert (=> b!3570939 m!4058669))

(assert (=> b!3570939 m!4058669))

(assert (=> b!3570939 m!4058679))

(assert (=> b!3570939 m!4058679))

(declare-fun m!4059629 () Bool)

(assert (=> b!3570939 m!4059629))

(assert (=> b!3570939 m!4058801))

(declare-fun m!4059631 () Bool)

(assert (=> b!3570939 m!4059631))

(assert (=> b!3570939 m!4058801))

(assert (=> b!3570940 m!4058801))

(assert (=> b!3570940 m!4058801))

(assert (=> b!3570940 m!4059631))

(assert (=> b!3570384 d!1052428))

(declare-fun d!1052430 () Bool)

(assert (=> d!1052430 (not (contains!7096 (usedCharacters!744 (regex!5510 (rule!8204 separatorToken!241))) lt!1223591))))

(declare-fun lt!1223873 () Unit!53483)

(declare-fun choose!20762 (LexerInterface!5099 List!37624 List!37624 Rule!10820 Rule!10820 C!20724) Unit!53483)

(assert (=> d!1052430 (= lt!1223873 (choose!20762 thiss!18206 rules!2135 rules!2135 (rule!8204 (h!42921 (t!289018 tokens!494))) (rule!8204 separatorToken!241) lt!1223591))))

(assert (=> d!1052430 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052430 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!192 thiss!18206 rules!2135 rules!2135 (rule!8204 (h!42921 (t!289018 tokens!494))) (rule!8204 separatorToken!241) lt!1223591) lt!1223873)))

(declare-fun bs!569174 () Bool)

(assert (= bs!569174 d!1052430))

(assert (=> bs!569174 m!4058763))

(assert (=> bs!569174 m!4058763))

(declare-fun m!4059663 () Bool)

(assert (=> bs!569174 m!4059663))

(declare-fun m!4059665 () Bool)

(assert (=> bs!569174 m!4059665))

(assert (=> bs!569174 m!4058819))

(assert (=> b!3570384 d!1052430))

(declare-fun d!1052450 () Bool)

(declare-fun lt!1223878 () BalanceConc!22404)

(assert (=> d!1052450 (= (list!13755 lt!1223878) (printListTailRec!737 thiss!18206 (dropList!1254 lt!1223586 0) (list!13755 (BalanceConc!22405 Empty!11395))))))

(declare-fun e!2209033 () BalanceConc!22404)

(assert (=> d!1052450 (= lt!1223878 e!2209033)))

(declare-fun c!618805 () Bool)

(assert (=> d!1052450 (= c!618805 (>= 0 (size!28589 lt!1223586)))))

(declare-fun e!2209034 () Bool)

(assert (=> d!1052450 e!2209034))

(declare-fun res!1440172 () Bool)

(assert (=> d!1052450 (=> (not res!1440172) (not e!2209034))))

(assert (=> d!1052450 (= res!1440172 (>= 0 0))))

(assert (=> d!1052450 (= (printTailRec!1594 thiss!18206 lt!1223586 0 (BalanceConc!22405 Empty!11395)) lt!1223878)))

(declare-fun b!3570958 () Bool)

(assert (=> b!3570958 (= e!2209034 (<= 0 (size!28589 lt!1223586)))))

(declare-fun b!3570959 () Bool)

(assert (=> b!3570959 (= e!2209033 (BalanceConc!22405 Empty!11395))))

(declare-fun b!3570960 () Bool)

(assert (=> b!3570960 (= e!2209033 (printTailRec!1594 thiss!18206 lt!1223586 (+ 0 1) (++!9324 (BalanceConc!22405 Empty!11395) (charsOf!3524 (apply!9012 lt!1223586 0)))))))

(declare-fun lt!1223883 () List!37625)

(assert (=> b!3570960 (= lt!1223883 (list!13756 lt!1223586))))

(declare-fun lt!1223880 () Unit!53483)

(assert (=> b!3570960 (= lt!1223880 (lemmaDropApply!1212 lt!1223883 0))))

(assert (=> b!3570960 (= (head!7440 (drop!2074 lt!1223883 0)) (apply!9016 lt!1223883 0))))

(declare-fun lt!1223882 () Unit!53483)

(assert (=> b!3570960 (= lt!1223882 lt!1223880)))

(declare-fun lt!1223877 () List!37625)

(assert (=> b!3570960 (= lt!1223877 (list!13756 lt!1223586))))

(declare-fun lt!1223879 () Unit!53483)

(assert (=> b!3570960 (= lt!1223879 (lemmaDropTail!1096 lt!1223877 0))))

(assert (=> b!3570960 (= (tail!5530 (drop!2074 lt!1223877 0)) (drop!2074 lt!1223877 (+ 0 1)))))

(declare-fun lt!1223881 () Unit!53483)

(assert (=> b!3570960 (= lt!1223881 lt!1223879)))

(assert (= (and d!1052450 res!1440172) b!3570958))

(assert (= (and d!1052450 c!618805) b!3570959))

(assert (= (and d!1052450 (not c!618805)) b!3570960))

(declare-fun m!4059675 () Bool)

(assert (=> d!1052450 m!4059675))

(declare-fun m!4059679 () Bool)

(assert (=> d!1052450 m!4059679))

(declare-fun m!4059681 () Bool)

(assert (=> d!1052450 m!4059681))

(assert (=> d!1052450 m!4059679))

(assert (=> d!1052450 m!4059319))

(declare-fun m!4059687 () Bool)

(assert (=> d!1052450 m!4059687))

(assert (=> d!1052450 m!4059319))

(assert (=> b!3570958 m!4059681))

(assert (=> b!3570960 m!4059573))

(declare-fun m!4059693 () Bool)

(assert (=> b!3570960 m!4059693))

(declare-fun m!4059697 () Bool)

(assert (=> b!3570960 m!4059697))

(declare-fun m!4059699 () Bool)

(assert (=> b!3570960 m!4059699))

(declare-fun m!4059701 () Bool)

(assert (=> b!3570960 m!4059701))

(declare-fun m!4059703 () Bool)

(assert (=> b!3570960 m!4059703))

(declare-fun m!4059705 () Bool)

(assert (=> b!3570960 m!4059705))

(declare-fun m!4059707 () Bool)

(assert (=> b!3570960 m!4059707))

(declare-fun m!4059709 () Bool)

(assert (=> b!3570960 m!4059709))

(assert (=> b!3570960 m!4059699))

(declare-fun m!4059713 () Bool)

(assert (=> b!3570960 m!4059713))

(assert (=> b!3570960 m!4059693))

(assert (=> b!3570960 m!4059703))

(declare-fun m!4059715 () Bool)

(assert (=> b!3570960 m!4059715))

(declare-fun m!4059717 () Bool)

(assert (=> b!3570960 m!4059717))

(assert (=> b!3570960 m!4059705))

(assert (=> b!3570960 m!4059701))

(declare-fun m!4059719 () Bool)

(assert (=> b!3570960 m!4059719))

(assert (=> b!3570384 d!1052450))

(declare-fun d!1052456 () Bool)

(declare-fun e!2209037 () Bool)

(assert (=> d!1052456 e!2209037))

(declare-fun res!1440175 () Bool)

(assert (=> d!1052456 (=> (not res!1440175) (not e!2209037))))

(assert (=> d!1052456 (= res!1440175 (isDefined!5933 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 tokens!494))))))))

(declare-fun lt!1223885 () Unit!53483)

(assert (=> d!1052456 (= lt!1223885 (choose!20761 thiss!18206 rules!2135 lt!1223629 (h!42921 tokens!494)))))

(assert (=> d!1052456 (rulesInvariant!4496 thiss!18206 rules!2135)))

(assert (=> d!1052456 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1153 thiss!18206 rules!2135 lt!1223629 (h!42921 tokens!494)) lt!1223885)))

(declare-fun b!3570965 () Bool)

(declare-fun res!1440176 () Bool)

(assert (=> b!3570965 (=> (not res!1440176) (not e!2209037))))

(assert (=> b!3570965 (= res!1440176 (matchR!4853 (regex!5510 (get!12069 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 tokens!494)))))) (list!13755 (charsOf!3524 (h!42921 tokens!494)))))))

(declare-fun b!3570966 () Bool)

(assert (=> b!3570966 (= e!2209037 (= (rule!8204 (h!42921 tokens!494)) (get!12069 (getRuleFromTag!1153 thiss!18206 rules!2135 (tag!6168 (rule!8204 (h!42921 tokens!494)))))))))

(assert (= (and d!1052456 res!1440175) b!3570965))

(assert (= (and b!3570965 res!1440176) b!3570966))

(assert (=> d!1052456 m!4058769))

(assert (=> d!1052456 m!4058769))

(declare-fun m!4059731 () Bool)

(assert (=> d!1052456 m!4059731))

(declare-fun m!4059733 () Bool)

(assert (=> d!1052456 m!4059733))

(assert (=> d!1052456 m!4058819))

(assert (=> b!3570965 m!4058709))

(assert (=> b!3570965 m!4058709))

(assert (=> b!3570965 m!4058711))

(assert (=> b!3570965 m!4058711))

(declare-fun m!4059739 () Bool)

(assert (=> b!3570965 m!4059739))

(assert (=> b!3570965 m!4058769))

(declare-fun m!4059743 () Bool)

(assert (=> b!3570965 m!4059743))

(assert (=> b!3570965 m!4058769))

(assert (=> b!3570966 m!4058769))

(assert (=> b!3570966 m!4058769))

(assert (=> b!3570966 m!4059743))

(assert (=> b!3570384 d!1052456))

(declare-fun b!3570985 () Bool)

(declare-fun e!2209051 () Bool)

(declare-fun inv!17 (TokenValue!5740) Bool)

(assert (=> b!3570985 (= e!2209051 (inv!17 (value!177495 separatorToken!241)))))

(declare-fun b!3570987 () Bool)

(declare-fun e!2209052 () Bool)

(declare-fun inv!15 (TokenValue!5740) Bool)

(assert (=> b!3570987 (= e!2209052 (inv!15 (value!177495 separatorToken!241)))))

(declare-fun d!1052464 () Bool)

(declare-fun c!618813 () Bool)

(assert (=> d!1052464 (= c!618813 ((_ is IntegerValue!17220) (value!177495 separatorToken!241)))))

(declare-fun e!2209053 () Bool)

(assert (=> d!1052464 (= (inv!21 (value!177495 separatorToken!241)) e!2209053)))

(declare-fun b!3570986 () Bool)

(declare-fun res!1440183 () Bool)

(assert (=> b!3570986 (=> res!1440183 e!2209052)))

(assert (=> b!3570986 (= res!1440183 (not ((_ is IntegerValue!17222) (value!177495 separatorToken!241))))))

(assert (=> b!3570986 (= e!2209051 e!2209052)))

(declare-fun b!3570988 () Bool)

(declare-fun inv!16 (TokenValue!5740) Bool)

(assert (=> b!3570988 (= e!2209053 (inv!16 (value!177495 separatorToken!241)))))

(declare-fun b!3570989 () Bool)

(assert (=> b!3570989 (= e!2209053 e!2209051)))

(declare-fun c!618812 () Bool)

(assert (=> b!3570989 (= c!618812 ((_ is IntegerValue!17221) (value!177495 separatorToken!241)))))

(assert (= (and d!1052464 c!618813) b!3570988))

(assert (= (and d!1052464 (not c!618813)) b!3570989))

(assert (= (and b!3570989 c!618812) b!3570985))

(assert (= (and b!3570989 (not c!618812)) b!3570986))

(assert (= (and b!3570986 (not res!1440183)) b!3570987))

(declare-fun m!4059759 () Bool)

(assert (=> b!3570985 m!4059759))

(declare-fun m!4059761 () Bool)

(assert (=> b!3570987 m!4059761))

(declare-fun m!4059763 () Bool)

(assert (=> b!3570988 m!4059763))

(assert (=> b!3570426 d!1052464))

(declare-fun d!1052476 () Bool)

(assert (=> d!1052476 (= (isEmpty!22031 (_2!21839 lt!1223632)) ((_ is Nil!37499) (_2!21839 lt!1223632)))))

(assert (=> b!3570383 d!1052476))

(declare-fun d!1052478 () Bool)

(declare-fun c!618816 () Bool)

(assert (=> d!1052478 (= c!618816 ((_ is Cons!37501) tokens!494))))

(declare-fun e!2209056 () List!37623)

(assert (=> d!1052478 (= (printWithSeparatorTokenList!386 thiss!18206 tokens!494 separatorToken!241) e!2209056)))

(declare-fun b!3570994 () Bool)

(assert (=> b!3570994 (= e!2209056 (++!9323 (++!9323 (list!13755 (charsOf!3524 (h!42921 tokens!494))) (list!13755 (charsOf!3524 separatorToken!241))) (printWithSeparatorTokenList!386 thiss!18206 (t!289018 tokens!494) separatorToken!241)))))

(declare-fun b!3570995 () Bool)

(assert (=> b!3570995 (= e!2209056 Nil!37499)))

(assert (= (and d!1052478 c!618816) b!3570994))

(assert (= (and d!1052478 (not c!618816)) b!3570995))

(assert (=> b!3570994 m!4058711))

(assert (=> b!3570994 m!4058679))

(declare-fun m!4059765 () Bool)

(assert (=> b!3570994 m!4059765))

(assert (=> b!3570994 m!4058669))

(assert (=> b!3570994 m!4058709))

(assert (=> b!3570994 m!4058709))

(assert (=> b!3570994 m!4058711))

(assert (=> b!3570994 m!4058669))

(assert (=> b!3570994 m!4058679))

(assert (=> b!3570994 m!4058673))

(assert (=> b!3570994 m!4059765))

(assert (=> b!3570994 m!4058673))

(declare-fun m!4059767 () Bool)

(assert (=> b!3570994 m!4059767))

(assert (=> b!3570425 d!1052478))

(declare-fun b!3571005 () Bool)

(declare-fun e!2209062 () List!37623)

(assert (=> b!3571005 (= e!2209062 (Cons!37499 (h!42919 lt!1223614) (++!9323 (t!289016 lt!1223614) lt!1223630)))))

(declare-fun d!1052480 () Bool)

(declare-fun e!2209061 () Bool)

(assert (=> d!1052480 e!2209061))

(declare-fun res!1440188 () Bool)

(assert (=> d!1052480 (=> (not res!1440188) (not e!2209061))))

(declare-fun lt!1223889 () List!37623)

(assert (=> d!1052480 (= res!1440188 (= (content!5316 lt!1223889) ((_ map or) (content!5316 lt!1223614) (content!5316 lt!1223630))))))

(assert (=> d!1052480 (= lt!1223889 e!2209062)))

(declare-fun c!618819 () Bool)

(assert (=> d!1052480 (= c!618819 ((_ is Nil!37499) lt!1223614))))

(assert (=> d!1052480 (= (++!9323 lt!1223614 lt!1223630) lt!1223889)))

(declare-fun b!3571004 () Bool)

(assert (=> b!3571004 (= e!2209062 lt!1223630)))

(declare-fun b!3571006 () Bool)

(declare-fun res!1440189 () Bool)

(assert (=> b!3571006 (=> (not res!1440189) (not e!2209061))))

(assert (=> b!3571006 (= res!1440189 (= (size!28588 lt!1223889) (+ (size!28588 lt!1223614) (size!28588 lt!1223630))))))

(declare-fun b!3571007 () Bool)

(assert (=> b!3571007 (= e!2209061 (or (not (= lt!1223630 Nil!37499)) (= lt!1223889 lt!1223614)))))

(assert (= (and d!1052480 c!618819) b!3571004))

(assert (= (and d!1052480 (not c!618819)) b!3571005))

(assert (= (and d!1052480 res!1440188) b!3571006))

(assert (= (and b!3571006 res!1440189) b!3571007))

(declare-fun m!4059769 () Bool)

(assert (=> b!3571005 m!4059769))

(declare-fun m!4059771 () Bool)

(assert (=> d!1052480 m!4059771))

(declare-fun m!4059773 () Bool)

(assert (=> d!1052480 m!4059773))

(declare-fun m!4059775 () Bool)

(assert (=> d!1052480 m!4059775))

(declare-fun m!4059777 () Bool)

(assert (=> b!3571006 m!4059777))

(declare-fun m!4059779 () Bool)

(assert (=> b!3571006 m!4059779))

(declare-fun m!4059781 () Bool)

(assert (=> b!3571006 m!4059781))

(assert (=> b!3570425 d!1052480))

(declare-fun b!3571009 () Bool)

(declare-fun e!2209064 () List!37623)

(assert (=> b!3571009 (= e!2209064 (Cons!37499 (h!42919 (++!9323 lt!1223602 lt!1223614)) (++!9323 (t!289016 (++!9323 lt!1223602 lt!1223614)) (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241))))))

(declare-fun d!1052482 () Bool)

(declare-fun e!2209063 () Bool)

(assert (=> d!1052482 e!2209063))

(declare-fun res!1440190 () Bool)

(assert (=> d!1052482 (=> (not res!1440190) (not e!2209063))))

(declare-fun lt!1223890 () List!37623)

(assert (=> d!1052482 (= res!1440190 (= (content!5316 lt!1223890) ((_ map or) (content!5316 (++!9323 lt!1223602 lt!1223614)) (content!5316 (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241)))))))

(assert (=> d!1052482 (= lt!1223890 e!2209064)))

(declare-fun c!618820 () Bool)

(assert (=> d!1052482 (= c!618820 ((_ is Nil!37499) (++!9323 lt!1223602 lt!1223614)))))

(assert (=> d!1052482 (= (++!9323 (++!9323 lt!1223602 lt!1223614) (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241)) lt!1223890)))

(declare-fun b!3571008 () Bool)

(assert (=> b!3571008 (= e!2209064 (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241))))

(declare-fun b!3571010 () Bool)

(declare-fun res!1440191 () Bool)

(assert (=> b!3571010 (=> (not res!1440191) (not e!2209063))))

(assert (=> b!3571010 (= res!1440191 (= (size!28588 lt!1223890) (+ (size!28588 (++!9323 lt!1223602 lt!1223614)) (size!28588 (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241)))))))

(declare-fun b!3571011 () Bool)

(assert (=> b!3571011 (= e!2209063 (or (not (= (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241) Nil!37499)) (= lt!1223890 (++!9323 lt!1223602 lt!1223614))))))

(assert (= (and d!1052482 c!618820) b!3571008))

(assert (= (and d!1052482 (not c!618820)) b!3571009))

(assert (= (and d!1052482 res!1440190) b!3571010))

(assert (= (and b!3571010 res!1440191) b!3571011))

(assert (=> b!3571009 m!4058677))

(declare-fun m!4059783 () Bool)

(assert (=> b!3571009 m!4059783))

(declare-fun m!4059785 () Bool)

(assert (=> d!1052482 m!4059785))

(assert (=> d!1052482 m!4058681))

(declare-fun m!4059787 () Bool)

(assert (=> d!1052482 m!4059787))

(assert (=> d!1052482 m!4058677))

(declare-fun m!4059789 () Bool)

(assert (=> d!1052482 m!4059789))

(declare-fun m!4059791 () Bool)

(assert (=> b!3571010 m!4059791))

(assert (=> b!3571010 m!4058681))

(declare-fun m!4059793 () Bool)

(assert (=> b!3571010 m!4059793))

(assert (=> b!3571010 m!4058677))

(declare-fun m!4059795 () Bool)

(assert (=> b!3571010 m!4059795))

(assert (=> b!3570425 d!1052482))

(declare-fun d!1052484 () Bool)

(declare-fun lt!1223893 () BalanceConc!22404)

(assert (=> d!1052484 (= (list!13755 lt!1223893) (originalCharacters!6224 separatorToken!241))))

(declare-fun dynLambda!16106 (Int TokenValue!5740) BalanceConc!22404)

(assert (=> d!1052484 (= lt!1223893 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (value!177495 separatorToken!241)))))

(assert (=> d!1052484 (= (charsOf!3524 separatorToken!241) lt!1223893)))

(declare-fun b_lambda!105253 () Bool)

(assert (=> (not b_lambda!105253) (not d!1052484)))

(declare-fun t!289065 () Bool)

(declare-fun tb!203351 () Bool)

(assert (=> (and b!3570419 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241)))) t!289065) tb!203351))

(declare-fun b!3571016 () Bool)

(declare-fun e!2209067 () Bool)

(declare-fun tp!1093662 () Bool)

(declare-fun inv!50776 (Conc!11395) Bool)

(assert (=> b!3571016 (= e!2209067 (and (inv!50776 (c!618703 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (value!177495 separatorToken!241)))) tp!1093662))))

(declare-fun result!247962 () Bool)

(declare-fun inv!50777 (BalanceConc!22404) Bool)

(assert (=> tb!203351 (= result!247962 (and (inv!50777 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (value!177495 separatorToken!241))) e!2209067))))

(assert (= tb!203351 b!3571016))

(declare-fun m!4059797 () Bool)

(assert (=> b!3571016 m!4059797))

(declare-fun m!4059799 () Bool)

(assert (=> tb!203351 m!4059799))

(assert (=> d!1052484 t!289065))

(declare-fun b_and!256983 () Bool)

(assert (= b_and!256925 (and (=> t!289065 result!247962) b_and!256983)))

(declare-fun t!289067 () Bool)

(declare-fun tb!203353 () Bool)

(assert (=> (and b!3570412 (= (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241)))) t!289067) tb!203353))

(declare-fun result!247966 () Bool)

(assert (= result!247966 result!247962))

(assert (=> d!1052484 t!289067))

(declare-fun b_and!256985 () Bool)

(assert (= b_and!256929 (and (=> t!289067 result!247966) b_and!256985)))

(declare-fun tb!203355 () Bool)

(declare-fun t!289069 () Bool)

(assert (=> (and b!3570404 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241)))) t!289069) tb!203355))

(declare-fun result!247968 () Bool)

(assert (= result!247968 result!247962))

(assert (=> d!1052484 t!289069))

(declare-fun b_and!256987 () Bool)

(assert (= b_and!256933 (and (=> t!289069 result!247968) b_and!256987)))

(declare-fun m!4059801 () Bool)

(assert (=> d!1052484 m!4059801))

(declare-fun m!4059803 () Bool)

(assert (=> d!1052484 m!4059803))

(assert (=> b!3570425 d!1052484))

(declare-fun d!1052486 () Bool)

(declare-fun c!618821 () Bool)

(assert (=> d!1052486 (= c!618821 ((_ is Cons!37501) (t!289018 (t!289018 tokens!494))))))

(declare-fun e!2209068 () List!37623)

(assert (=> d!1052486 (= (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241) e!2209068)))

(declare-fun b!3571017 () Bool)

(assert (=> b!3571017 (= e!2209068 (++!9323 (++!9323 (list!13755 (charsOf!3524 (h!42921 (t!289018 (t!289018 tokens!494))))) (list!13755 (charsOf!3524 separatorToken!241))) (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 (t!289018 tokens!494))) separatorToken!241)))))

(declare-fun b!3571018 () Bool)

(assert (=> b!3571018 (= e!2209068 Nil!37499)))

(assert (= (and d!1052486 c!618821) b!3571017))

(assert (= (and d!1052486 (not c!618821)) b!3571018))

(declare-fun m!4059805 () Bool)

(assert (=> b!3571017 m!4059805))

(assert (=> b!3571017 m!4058679))

(declare-fun m!4059807 () Bool)

(assert (=> b!3571017 m!4059807))

(assert (=> b!3571017 m!4058669))

(declare-fun m!4059809 () Bool)

(assert (=> b!3571017 m!4059809))

(assert (=> b!3571017 m!4059809))

(assert (=> b!3571017 m!4059805))

(assert (=> b!3571017 m!4058669))

(assert (=> b!3571017 m!4058679))

(declare-fun m!4059811 () Bool)

(assert (=> b!3571017 m!4059811))

(assert (=> b!3571017 m!4059807))

(assert (=> b!3571017 m!4059811))

(declare-fun m!4059813 () Bool)

(assert (=> b!3571017 m!4059813))

(assert (=> b!3570425 d!1052486))

(declare-fun d!1052488 () Bool)

(declare-fun c!618822 () Bool)

(assert (=> d!1052488 (= c!618822 ((_ is Cons!37501) (t!289018 tokens!494)))))

(declare-fun e!2209069 () List!37623)

(assert (=> d!1052488 (= (printWithSeparatorTokenList!386 thiss!18206 (t!289018 tokens!494) separatorToken!241) e!2209069)))

(declare-fun b!3571019 () Bool)

(assert (=> b!3571019 (= e!2209069 (++!9323 (++!9323 (list!13755 (charsOf!3524 (h!42921 (t!289018 tokens!494)))) (list!13755 (charsOf!3524 separatorToken!241))) (printWithSeparatorTokenList!386 thiss!18206 (t!289018 (t!289018 tokens!494)) separatorToken!241)))))

(declare-fun b!3571020 () Bool)

(assert (=> b!3571020 (= e!2209069 Nil!37499)))

(assert (= (and d!1052488 c!618822) b!3571019))

(assert (= (and d!1052488 (not c!618822)) b!3571020))

(assert (=> b!3571019 m!4058675))

(assert (=> b!3571019 m!4058679))

(declare-fun m!4059815 () Bool)

(assert (=> b!3571019 m!4059815))

(assert (=> b!3571019 m!4058669))

(assert (=> b!3571019 m!4058667))

(assert (=> b!3571019 m!4058667))

(assert (=> b!3571019 m!4058675))

(assert (=> b!3571019 m!4058669))

(assert (=> b!3571019 m!4058679))

(assert (=> b!3571019 m!4058677))

(assert (=> b!3571019 m!4059815))

(assert (=> b!3571019 m!4058677))

(declare-fun m!4059817 () Bool)

(assert (=> b!3571019 m!4059817))

(assert (=> b!3570425 d!1052488))

(declare-fun b!3571022 () Bool)

(declare-fun e!2209071 () List!37623)

(assert (=> b!3571022 (= e!2209071 (Cons!37499 (h!42919 lt!1223602) (++!9323 (t!289016 lt!1223602) lt!1223614)))))

(declare-fun d!1052490 () Bool)

(declare-fun e!2209070 () Bool)

(assert (=> d!1052490 e!2209070))

(declare-fun res!1440192 () Bool)

(assert (=> d!1052490 (=> (not res!1440192) (not e!2209070))))

(declare-fun lt!1223894 () List!37623)

(assert (=> d!1052490 (= res!1440192 (= (content!5316 lt!1223894) ((_ map or) (content!5316 lt!1223602) (content!5316 lt!1223614))))))

(assert (=> d!1052490 (= lt!1223894 e!2209071)))

(declare-fun c!618823 () Bool)

(assert (=> d!1052490 (= c!618823 ((_ is Nil!37499) lt!1223602))))

(assert (=> d!1052490 (= (++!9323 lt!1223602 lt!1223614) lt!1223894)))

(declare-fun b!3571021 () Bool)

(assert (=> b!3571021 (= e!2209071 lt!1223614)))

(declare-fun b!3571023 () Bool)

(declare-fun res!1440193 () Bool)

(assert (=> b!3571023 (=> (not res!1440193) (not e!2209070))))

(assert (=> b!3571023 (= res!1440193 (= (size!28588 lt!1223894) (+ (size!28588 lt!1223602) (size!28588 lt!1223614))))))

(declare-fun b!3571024 () Bool)

(assert (=> b!3571024 (= e!2209070 (or (not (= lt!1223614 Nil!37499)) (= lt!1223894 lt!1223602)))))

(assert (= (and d!1052490 c!618823) b!3571021))

(assert (= (and d!1052490 (not c!618823)) b!3571022))

(assert (= (and d!1052490 res!1440192) b!3571023))

(assert (= (and b!3571023 res!1440193) b!3571024))

(declare-fun m!4059819 () Bool)

(assert (=> b!3571022 m!4059819))

(declare-fun m!4059821 () Bool)

(assert (=> d!1052490 m!4059821))

(declare-fun m!4059823 () Bool)

(assert (=> d!1052490 m!4059823))

(assert (=> d!1052490 m!4059773))

(declare-fun m!4059825 () Bool)

(assert (=> b!3571023 m!4059825))

(assert (=> b!3571023 m!4058789))

(assert (=> b!3571023 m!4059779))

(assert (=> b!3570425 d!1052490))

(declare-fun d!1052492 () Bool)

(declare-fun list!13759 (Conc!11395) List!37623)

(assert (=> d!1052492 (= (list!13755 (charsOf!3524 (h!42921 (t!289018 tokens!494)))) (list!13759 (c!618703 (charsOf!3524 (h!42921 (t!289018 tokens!494))))))))

(declare-fun bs!569176 () Bool)

(assert (= bs!569176 d!1052492))

(declare-fun m!4059827 () Bool)

(assert (=> bs!569176 m!4059827))

(assert (=> b!3570425 d!1052492))

(declare-fun d!1052494 () Bool)

(assert (=> d!1052494 (= (list!13755 (charsOf!3524 separatorToken!241)) (list!13759 (c!618703 (charsOf!3524 separatorToken!241))))))

(declare-fun bs!569177 () Bool)

(assert (= bs!569177 d!1052494))

(declare-fun m!4059829 () Bool)

(assert (=> bs!569177 m!4059829))

(assert (=> b!3570425 d!1052494))

(declare-fun d!1052496 () Bool)

(declare-fun lt!1223895 () BalanceConc!22404)

(assert (=> d!1052496 (= (list!13755 lt!1223895) (originalCharacters!6224 (h!42921 (t!289018 tokens!494))))))

(assert (=> d!1052496 (= lt!1223895 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (value!177495 (h!42921 (t!289018 tokens!494)))))))

(assert (=> d!1052496 (= (charsOf!3524 (h!42921 (t!289018 tokens!494))) lt!1223895)))

(declare-fun b_lambda!105255 () Bool)

(assert (=> (not b_lambda!105255) (not d!1052496)))

(declare-fun t!289071 () Bool)

(declare-fun tb!203357 () Bool)

(assert (=> (and b!3570419 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289071) tb!203357))

(declare-fun b!3571025 () Bool)

(declare-fun e!2209072 () Bool)

(declare-fun tp!1093663 () Bool)

(assert (=> b!3571025 (= e!2209072 (and (inv!50776 (c!618703 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (value!177495 (h!42921 (t!289018 tokens!494)))))) tp!1093663))))

(declare-fun result!247970 () Bool)

(assert (=> tb!203357 (= result!247970 (and (inv!50777 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (value!177495 (h!42921 (t!289018 tokens!494))))) e!2209072))))

(assert (= tb!203357 b!3571025))

(declare-fun m!4059831 () Bool)

(assert (=> b!3571025 m!4059831))

(declare-fun m!4059833 () Bool)

(assert (=> tb!203357 m!4059833))

(assert (=> d!1052496 t!289071))

(declare-fun b_and!256989 () Bool)

(assert (= b_and!256983 (and (=> t!289071 result!247970) b_and!256989)))

(declare-fun tb!203359 () Bool)

(declare-fun t!289073 () Bool)

(assert (=> (and b!3570412 (= (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289073) tb!203359))

(declare-fun result!247972 () Bool)

(assert (= result!247972 result!247970))

(assert (=> d!1052496 t!289073))

(declare-fun b_and!256991 () Bool)

(assert (= b_and!256985 (and (=> t!289073 result!247972) b_and!256991)))

(declare-fun tb!203361 () Bool)

(declare-fun t!289075 () Bool)

(assert (=> (and b!3570404 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289075) tb!203361))

(declare-fun result!247974 () Bool)

(assert (= result!247974 result!247970))

(assert (=> d!1052496 t!289075))

(declare-fun b_and!256993 () Bool)

(assert (= b_and!256987 (and (=> t!289075 result!247974) b_and!256993)))

(declare-fun m!4059835 () Bool)

(assert (=> d!1052496 m!4059835))

(declare-fun m!4059837 () Bool)

(assert (=> d!1052496 m!4059837))

(assert (=> b!3570425 d!1052496))

(declare-fun d!1052498 () Bool)

(declare-fun lt!1223898 () Token!10386)

(assert (=> d!1052498 (= lt!1223898 (apply!9016 (list!13756 (_1!21838 lt!1223593)) 0))))

(declare-fun apply!9017 (Conc!11396 Int) Token!10386)

(assert (=> d!1052498 (= lt!1223898 (apply!9017 (c!618704 (_1!21838 lt!1223593)) 0))))

(declare-fun e!2209075 () Bool)

(assert (=> d!1052498 e!2209075))

(declare-fun res!1440196 () Bool)

(assert (=> d!1052498 (=> (not res!1440196) (not e!2209075))))

(assert (=> d!1052498 (= res!1440196 (<= 0 0))))

(assert (=> d!1052498 (= (apply!9012 (_1!21838 lt!1223593) 0) lt!1223898)))

(declare-fun b!3571028 () Bool)

(assert (=> b!3571028 (= e!2209075 (< 0 (size!28589 (_1!21838 lt!1223593))))))

(assert (= (and d!1052498 res!1440196) b!3571028))

(assert (=> d!1052498 m!4059269))

(assert (=> d!1052498 m!4059269))

(declare-fun m!4059839 () Bool)

(assert (=> d!1052498 m!4059839))

(declare-fun m!4059841 () Bool)

(assert (=> d!1052498 m!4059841))

(assert (=> b!3571028 m!4058735))

(assert (=> b!3570382 d!1052498))

(declare-fun d!1052500 () Bool)

(assert (=> d!1052500 (= (list!13755 lt!1223620) (list!13759 (c!618703 lt!1223620)))))

(declare-fun bs!569178 () Bool)

(assert (= bs!569178 d!1052500))

(declare-fun m!4059843 () Bool)

(assert (=> bs!569178 m!4059843))

(assert (=> b!3570387 d!1052500))

(declare-fun d!1052502 () Bool)

(declare-fun lt!1223899 () BalanceConc!22404)

(assert (=> d!1052502 (= (list!13755 lt!1223899) (printList!1647 thiss!18206 (list!13756 lt!1223610)))))

(assert (=> d!1052502 (= lt!1223899 (printTailRec!1594 thiss!18206 lt!1223610 0 (BalanceConc!22405 Empty!11395)))))

(assert (=> d!1052502 (= (print!2164 thiss!18206 lt!1223610) lt!1223899)))

(declare-fun bs!569179 () Bool)

(assert (= bs!569179 d!1052502))

(declare-fun m!4059845 () Bool)

(assert (=> bs!569179 m!4059845))

(declare-fun m!4059847 () Bool)

(assert (=> bs!569179 m!4059847))

(assert (=> bs!569179 m!4059847))

(declare-fun m!4059849 () Bool)

(assert (=> bs!569179 m!4059849))

(assert (=> bs!569179 m!4058847))

(assert (=> b!3570387 d!1052502))

(declare-fun d!1052504 () Bool)

(declare-fun lt!1223901 () BalanceConc!22404)

(assert (=> d!1052504 (= (list!13755 lt!1223901) (printListTailRec!737 thiss!18206 (dropList!1254 lt!1223610 0) (list!13755 (BalanceConc!22405 Empty!11395))))))

(declare-fun e!2209076 () BalanceConc!22404)

(assert (=> d!1052504 (= lt!1223901 e!2209076)))

(declare-fun c!618824 () Bool)

(assert (=> d!1052504 (= c!618824 (>= 0 (size!28589 lt!1223610)))))

(declare-fun e!2209077 () Bool)

(assert (=> d!1052504 e!2209077))

(declare-fun res!1440197 () Bool)

(assert (=> d!1052504 (=> (not res!1440197) (not e!2209077))))

(assert (=> d!1052504 (= res!1440197 (>= 0 0))))

(assert (=> d!1052504 (= (printTailRec!1594 thiss!18206 lt!1223610 0 (BalanceConc!22405 Empty!11395)) lt!1223901)))

(declare-fun b!3571029 () Bool)

(assert (=> b!3571029 (= e!2209077 (<= 0 (size!28589 lt!1223610)))))

(declare-fun b!3571030 () Bool)

(assert (=> b!3571030 (= e!2209076 (BalanceConc!22405 Empty!11395))))

(declare-fun b!3571031 () Bool)

(assert (=> b!3571031 (= e!2209076 (printTailRec!1594 thiss!18206 lt!1223610 (+ 0 1) (++!9324 (BalanceConc!22405 Empty!11395) (charsOf!3524 (apply!9012 lt!1223610 0)))))))

(declare-fun lt!1223906 () List!37625)

(assert (=> b!3571031 (= lt!1223906 (list!13756 lt!1223610))))

(declare-fun lt!1223903 () Unit!53483)

(assert (=> b!3571031 (= lt!1223903 (lemmaDropApply!1212 lt!1223906 0))))

(assert (=> b!3571031 (= (head!7440 (drop!2074 lt!1223906 0)) (apply!9016 lt!1223906 0))))

(declare-fun lt!1223905 () Unit!53483)

(assert (=> b!3571031 (= lt!1223905 lt!1223903)))

(declare-fun lt!1223900 () List!37625)

(assert (=> b!3571031 (= lt!1223900 (list!13756 lt!1223610))))

(declare-fun lt!1223902 () Unit!53483)

(assert (=> b!3571031 (= lt!1223902 (lemmaDropTail!1096 lt!1223900 0))))

(assert (=> b!3571031 (= (tail!5530 (drop!2074 lt!1223900 0)) (drop!2074 lt!1223900 (+ 0 1)))))

(declare-fun lt!1223904 () Unit!53483)

(assert (=> b!3571031 (= lt!1223904 lt!1223902)))

(assert (= (and d!1052504 res!1440197) b!3571029))

(assert (= (and d!1052504 c!618824) b!3571030))

(assert (= (and d!1052504 (not c!618824)) b!3571031))

(declare-fun m!4059851 () Bool)

(assert (=> d!1052504 m!4059851))

(declare-fun m!4059853 () Bool)

(assert (=> d!1052504 m!4059853))

(declare-fun m!4059855 () Bool)

(assert (=> d!1052504 m!4059855))

(assert (=> d!1052504 m!4059853))

(assert (=> d!1052504 m!4059319))

(declare-fun m!4059857 () Bool)

(assert (=> d!1052504 m!4059857))

(assert (=> d!1052504 m!4059319))

(assert (=> b!3571029 m!4059855))

(assert (=> b!3571031 m!4059847))

(declare-fun m!4059859 () Bool)

(assert (=> b!3571031 m!4059859))

(declare-fun m!4059861 () Bool)

(assert (=> b!3571031 m!4059861))

(declare-fun m!4059863 () Bool)

(assert (=> b!3571031 m!4059863))

(declare-fun m!4059865 () Bool)

(assert (=> b!3571031 m!4059865))

(declare-fun m!4059867 () Bool)

(assert (=> b!3571031 m!4059867))

(declare-fun m!4059869 () Bool)

(assert (=> b!3571031 m!4059869))

(declare-fun m!4059871 () Bool)

(assert (=> b!3571031 m!4059871))

(declare-fun m!4059873 () Bool)

(assert (=> b!3571031 m!4059873))

(assert (=> b!3571031 m!4059863))

(declare-fun m!4059875 () Bool)

(assert (=> b!3571031 m!4059875))

(assert (=> b!3571031 m!4059859))

(assert (=> b!3571031 m!4059867))

(declare-fun m!4059877 () Bool)

(assert (=> b!3571031 m!4059877))

(declare-fun m!4059879 () Bool)

(assert (=> b!3571031 m!4059879))

(assert (=> b!3571031 m!4059869))

(assert (=> b!3571031 m!4059865))

(declare-fun m!4059881 () Bool)

(assert (=> b!3571031 m!4059881))

(assert (=> b!3570387 d!1052504))

(declare-fun d!1052506 () Bool)

(declare-fun e!2209078 () Bool)

(assert (=> d!1052506 e!2209078))

(declare-fun res!1440198 () Bool)

(assert (=> d!1052506 (=> (not res!1440198) (not e!2209078))))

(declare-fun lt!1223907 () BalanceConc!22406)

(assert (=> d!1052506 (= res!1440198 (= (list!13756 lt!1223907) (Cons!37501 (h!42921 tokens!494) Nil!37501)))))

(assert (=> d!1052506 (= lt!1223907 (singleton!1169 (h!42921 tokens!494)))))

(assert (=> d!1052506 (= (singletonSeq!2606 (h!42921 tokens!494)) lt!1223907)))

(declare-fun b!3571032 () Bool)

(assert (=> b!3571032 (= e!2209078 (isBalanced!3484 (c!618704 lt!1223907)))))

(assert (= (and d!1052506 res!1440198) b!3571032))

(declare-fun m!4059883 () Bool)

(assert (=> d!1052506 m!4059883))

(declare-fun m!4059885 () Bool)

(assert (=> d!1052506 m!4059885))

(declare-fun m!4059887 () Bool)

(assert (=> b!3571032 m!4059887))

(assert (=> b!3570387 d!1052506))

(declare-fun d!1052508 () Bool)

(declare-fun c!618827 () Bool)

(assert (=> d!1052508 (= c!618827 ((_ is Cons!37501) (Cons!37501 (h!42921 tokens!494) Nil!37501)))))

(declare-fun e!2209081 () List!37623)

(assert (=> d!1052508 (= (printList!1647 thiss!18206 (Cons!37501 (h!42921 tokens!494) Nil!37501)) e!2209081)))

(declare-fun b!3571037 () Bool)

(assert (=> b!3571037 (= e!2209081 (++!9323 (list!13755 (charsOf!3524 (h!42921 (Cons!37501 (h!42921 tokens!494) Nil!37501)))) (printList!1647 thiss!18206 (t!289018 (Cons!37501 (h!42921 tokens!494) Nil!37501)))))))

(declare-fun b!3571038 () Bool)

(assert (=> b!3571038 (= e!2209081 Nil!37499)))

(assert (= (and d!1052508 c!618827) b!3571037))

(assert (= (and d!1052508 (not c!618827)) b!3571038))

(declare-fun m!4059889 () Bool)

(assert (=> b!3571037 m!4059889))

(assert (=> b!3571037 m!4059889))

(declare-fun m!4059891 () Bool)

(assert (=> b!3571037 m!4059891))

(declare-fun m!4059893 () Bool)

(assert (=> b!3571037 m!4059893))

(assert (=> b!3571037 m!4059891))

(assert (=> b!3571037 m!4059893))

(declare-fun m!4059895 () Bool)

(assert (=> b!3571037 m!4059895))

(assert (=> b!3570387 d!1052508))

(declare-fun d!1052510 () Bool)

(declare-fun lt!1223909 () Bool)

(declare-fun e!2209083 () Bool)

(assert (=> d!1052510 (= lt!1223909 e!2209083)))

(declare-fun res!1440199 () Bool)

(assert (=> d!1052510 (=> (not res!1440199) (not e!2209083))))

(assert (=> d!1052510 (= res!1440199 (= (list!13756 (_1!21838 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 separatorToken!241))))) (list!13756 (singletonSeq!2606 separatorToken!241))))))

(declare-fun e!2209082 () Bool)

(assert (=> d!1052510 (= lt!1223909 e!2209082)))

(declare-fun res!1440201 () Bool)

(assert (=> d!1052510 (=> (not res!1440201) (not e!2209082))))

(declare-fun lt!1223908 () tuple2!37408)

(assert (=> d!1052510 (= res!1440201 (= (size!28589 (_1!21838 lt!1223908)) 1))))

(assert (=> d!1052510 (= lt!1223908 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 separatorToken!241))))))

(assert (=> d!1052510 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052510 (= (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 separatorToken!241) lt!1223909)))

(declare-fun b!3571039 () Bool)

(declare-fun res!1440200 () Bool)

(assert (=> b!3571039 (=> (not res!1440200) (not e!2209082))))

(assert (=> b!3571039 (= res!1440200 (= (apply!9012 (_1!21838 lt!1223908) 0) separatorToken!241))))

(declare-fun b!3571040 () Bool)

(assert (=> b!3571040 (= e!2209082 (isEmpty!22030 (_2!21838 lt!1223908)))))

(declare-fun b!3571041 () Bool)

(assert (=> b!3571041 (= e!2209083 (isEmpty!22030 (_2!21838 (lex!2425 thiss!18206 rules!2135 (print!2164 thiss!18206 (singletonSeq!2606 separatorToken!241))))))))

(assert (= (and d!1052510 res!1440201) b!3571039))

(assert (= (and b!3571039 res!1440200) b!3571040))

(assert (= (and d!1052510 res!1440199) b!3571041))

(assert (=> d!1052510 m!4058775))

(assert (=> d!1052510 m!4058775))

(declare-fun m!4059897 () Bool)

(assert (=> d!1052510 m!4059897))

(declare-fun m!4059899 () Bool)

(assert (=> d!1052510 m!4059899))

(assert (=> d!1052510 m!4059897))

(declare-fun m!4059901 () Bool)

(assert (=> d!1052510 m!4059901))

(assert (=> d!1052510 m!4058713))

(declare-fun m!4059903 () Bool)

(assert (=> d!1052510 m!4059903))

(assert (=> d!1052510 m!4058775))

(declare-fun m!4059905 () Bool)

(assert (=> d!1052510 m!4059905))

(declare-fun m!4059907 () Bool)

(assert (=> b!3571039 m!4059907))

(declare-fun m!4059909 () Bool)

(assert (=> b!3571040 m!4059909))

(assert (=> b!3571041 m!4058775))

(assert (=> b!3571041 m!4058775))

(assert (=> b!3571041 m!4059897))

(assert (=> b!3571041 m!4059897))

(assert (=> b!3571041 m!4059901))

(declare-fun m!4059911 () Bool)

(assert (=> b!3571041 m!4059911))

(assert (=> b!3570408 d!1052510))

(declare-fun b!3571070 () Bool)

(declare-fun res!1440220 () Bool)

(declare-fun e!2209104 () Bool)

(assert (=> b!3571070 (=> res!1440220 e!2209104)))

(assert (=> b!3571070 (= res!1440220 (not ((_ is ElementMatch!10269) (regex!5510 lt!1223615))))))

(declare-fun e!2209101 () Bool)

(assert (=> b!3571070 (= e!2209101 e!2209104)))

(declare-fun b!3571071 () Bool)

(declare-fun res!1440221 () Bool)

(assert (=> b!3571071 (=> res!1440221 e!2209104)))

(declare-fun e!2209100 () Bool)

(assert (=> b!3571071 (= res!1440221 e!2209100)))

(declare-fun res!1440219 () Bool)

(assert (=> b!3571071 (=> (not res!1440219) (not e!2209100))))

(declare-fun lt!1223912 () Bool)

(assert (=> b!3571071 (= res!1440219 lt!1223912)))

(declare-fun b!3571072 () Bool)

(declare-fun res!1440218 () Bool)

(assert (=> b!3571072 (=> (not res!1440218) (not e!2209100))))

(declare-fun tail!5533 (List!37623) List!37623)

(assert (=> b!3571072 (= res!1440218 (isEmpty!22031 (tail!5533 lt!1223614)))))

(declare-fun b!3571073 () Bool)

(declare-fun e!2209098 () Bool)

(assert (=> b!3571073 (= e!2209098 (not (= (head!7439 lt!1223614) (c!618702 (regex!5510 lt!1223615)))))))

(declare-fun d!1052512 () Bool)

(declare-fun e!2209103 () Bool)

(assert (=> d!1052512 e!2209103))

(declare-fun c!618836 () Bool)

(assert (=> d!1052512 (= c!618836 ((_ is EmptyExpr!10269) (regex!5510 lt!1223615)))))

(declare-fun e!2209099 () Bool)

(assert (=> d!1052512 (= lt!1223912 e!2209099)))

(declare-fun c!618834 () Bool)

(assert (=> d!1052512 (= c!618834 (isEmpty!22031 lt!1223614))))

(declare-fun validRegex!4694 (Regex!10269) Bool)

(assert (=> d!1052512 (validRegex!4694 (regex!5510 lt!1223615))))

(assert (=> d!1052512 (= (matchR!4853 (regex!5510 lt!1223615) lt!1223614) lt!1223912)))

(declare-fun b!3571074 () Bool)

(declare-fun e!2209102 () Bool)

(assert (=> b!3571074 (= e!2209102 e!2209098)))

(declare-fun res!1440225 () Bool)

(assert (=> b!3571074 (=> res!1440225 e!2209098)))

(declare-fun call!258783 () Bool)

(assert (=> b!3571074 (= res!1440225 call!258783)))

(declare-fun b!3571075 () Bool)

(assert (=> b!3571075 (= e!2209101 (not lt!1223912))))

(declare-fun b!3571076 () Bool)

(declare-fun res!1440223 () Bool)

(assert (=> b!3571076 (=> res!1440223 e!2209098)))

(assert (=> b!3571076 (= res!1440223 (not (isEmpty!22031 (tail!5533 lt!1223614))))))

(declare-fun b!3571077 () Bool)

(assert (=> b!3571077 (= e!2209103 (= lt!1223912 call!258783))))

(declare-fun b!3571078 () Bool)

(declare-fun nullable!3538 (Regex!10269) Bool)

(assert (=> b!3571078 (= e!2209099 (nullable!3538 (regex!5510 lt!1223615)))))

(declare-fun b!3571079 () Bool)

(assert (=> b!3571079 (= e!2209104 e!2209102)))

(declare-fun res!1440222 () Bool)

(assert (=> b!3571079 (=> (not res!1440222) (not e!2209102))))

(assert (=> b!3571079 (= res!1440222 (not lt!1223912))))

(declare-fun bm!258778 () Bool)

(assert (=> bm!258778 (= call!258783 (isEmpty!22031 lt!1223614))))

(declare-fun b!3571080 () Bool)

(declare-fun derivativeStep!3091 (Regex!10269 C!20724) Regex!10269)

(assert (=> b!3571080 (= e!2209099 (matchR!4853 (derivativeStep!3091 (regex!5510 lt!1223615) (head!7439 lt!1223614)) (tail!5533 lt!1223614)))))

(declare-fun b!3571081 () Bool)

(assert (=> b!3571081 (= e!2209100 (= (head!7439 lt!1223614) (c!618702 (regex!5510 lt!1223615))))))

(declare-fun b!3571082 () Bool)

(assert (=> b!3571082 (= e!2209103 e!2209101)))

(declare-fun c!618835 () Bool)

(assert (=> b!3571082 (= c!618835 ((_ is EmptyLang!10269) (regex!5510 lt!1223615)))))

(declare-fun b!3571083 () Bool)

(declare-fun res!1440224 () Bool)

(assert (=> b!3571083 (=> (not res!1440224) (not e!2209100))))

(assert (=> b!3571083 (= res!1440224 (not call!258783))))

(assert (= (and d!1052512 c!618834) b!3571078))

(assert (= (and d!1052512 (not c!618834)) b!3571080))

(assert (= (and d!1052512 c!618836) b!3571077))

(assert (= (and d!1052512 (not c!618836)) b!3571082))

(assert (= (and b!3571082 c!618835) b!3571075))

(assert (= (and b!3571082 (not c!618835)) b!3571070))

(assert (= (and b!3571070 (not res!1440220)) b!3571071))

(assert (= (and b!3571071 res!1440219) b!3571083))

(assert (= (and b!3571083 res!1440224) b!3571072))

(assert (= (and b!3571072 res!1440218) b!3571081))

(assert (= (and b!3571071 (not res!1440221)) b!3571079))

(assert (= (and b!3571079 res!1440222) b!3571074))

(assert (= (and b!3571074 (not res!1440225)) b!3571076))

(assert (= (and b!3571076 (not res!1440223)) b!3571073))

(assert (= (or b!3571077 b!3571074 b!3571083) bm!258778))

(assert (=> b!3571073 m!4058793))

(declare-fun m!4059913 () Bool)

(assert (=> b!3571072 m!4059913))

(assert (=> b!3571072 m!4059913))

(declare-fun m!4059915 () Bool)

(assert (=> b!3571072 m!4059915))

(assert (=> b!3571080 m!4058793))

(assert (=> b!3571080 m!4058793))

(declare-fun m!4059917 () Bool)

(assert (=> b!3571080 m!4059917))

(assert (=> b!3571080 m!4059913))

(assert (=> b!3571080 m!4059917))

(assert (=> b!3571080 m!4059913))

(declare-fun m!4059919 () Bool)

(assert (=> b!3571080 m!4059919))

(assert (=> b!3571081 m!4058793))

(declare-fun m!4059921 () Bool)

(assert (=> d!1052512 m!4059921))

(declare-fun m!4059923 () Bool)

(assert (=> d!1052512 m!4059923))

(assert (=> bm!258778 m!4059921))

(assert (=> b!3571076 m!4059913))

(assert (=> b!3571076 m!4059913))

(assert (=> b!3571076 m!4059915))

(declare-fun m!4059925 () Bool)

(assert (=> b!3571078 m!4059925))

(assert (=> b!3570407 d!1052512))

(declare-fun d!1052514 () Bool)

(assert (=> d!1052514 (= (get!12069 lt!1223633) (v!37295 lt!1223633))))

(assert (=> b!3570407 d!1052514))

(declare-fun d!1052516 () Bool)

(assert (=> d!1052516 (dynLambda!16102 lambda!123450 (h!42921 (t!289018 tokens!494)))))

(declare-fun lt!1223913 () Unit!53483)

(assert (=> d!1052516 (= lt!1223913 (choose!20756 tokens!494 lambda!123450 (h!42921 (t!289018 tokens!494))))))

(declare-fun e!2209105 () Bool)

(assert (=> d!1052516 e!2209105))

(declare-fun res!1440226 () Bool)

(assert (=> d!1052516 (=> (not res!1440226) (not e!2209105))))

(assert (=> d!1052516 (= res!1440226 (forall!8110 tokens!494 lambda!123450))))

(assert (=> d!1052516 (= (forallContained!1457 tokens!494 lambda!123450 (h!42921 (t!289018 tokens!494))) lt!1223913)))

(declare-fun b!3571084 () Bool)

(assert (=> b!3571084 (= e!2209105 (contains!7097 tokens!494 (h!42921 (t!289018 tokens!494))))))

(assert (= (and d!1052516 res!1440226) b!3571084))

(declare-fun b_lambda!105257 () Bool)

(assert (=> (not b_lambda!105257) (not d!1052516)))

(declare-fun m!4059927 () Bool)

(assert (=> d!1052516 m!4059927))

(declare-fun m!4059929 () Bool)

(assert (=> d!1052516 m!4059929))

(assert (=> d!1052516 m!4058705))

(assert (=> b!3571084 m!4059161))

(assert (=> b!3570428 d!1052516))

(declare-fun d!1052518 () Bool)

(assert (=> d!1052518 (dynLambda!16102 lambda!123450 (h!42921 tokens!494))))

(declare-fun lt!1223914 () Unit!53483)

(assert (=> d!1052518 (= lt!1223914 (choose!20756 tokens!494 lambda!123450 (h!42921 tokens!494)))))

(declare-fun e!2209106 () Bool)

(assert (=> d!1052518 e!2209106))

(declare-fun res!1440227 () Bool)

(assert (=> d!1052518 (=> (not res!1440227) (not e!2209106))))

(assert (=> d!1052518 (= res!1440227 (forall!8110 tokens!494 lambda!123450))))

(assert (=> d!1052518 (= (forallContained!1457 tokens!494 lambda!123450 (h!42921 tokens!494)) lt!1223914)))

(declare-fun b!3571085 () Bool)

(assert (=> b!3571085 (= e!2209106 (contains!7097 tokens!494 (h!42921 tokens!494)))))

(assert (= (and d!1052518 res!1440227) b!3571085))

(declare-fun b_lambda!105259 () Bool)

(assert (=> (not b_lambda!105259) (not d!1052518)))

(assert (=> d!1052518 m!4058865))

(declare-fun m!4059931 () Bool)

(assert (=> d!1052518 m!4059931))

(assert (=> d!1052518 m!4058705))

(declare-fun m!4059933 () Bool)

(assert (=> b!3571085 m!4059933))

(assert (=> b!3570428 d!1052518))

(declare-fun b!3571086 () Bool)

(declare-fun res!1440230 () Bool)

(declare-fun e!2209113 () Bool)

(assert (=> b!3571086 (=> res!1440230 e!2209113)))

(assert (=> b!3571086 (= res!1440230 (not ((_ is ElementMatch!10269) (regex!5510 lt!1223583))))))

(declare-fun e!2209110 () Bool)

(assert (=> b!3571086 (= e!2209110 e!2209113)))

(declare-fun b!3571087 () Bool)

(declare-fun res!1440231 () Bool)

(assert (=> b!3571087 (=> res!1440231 e!2209113)))

(declare-fun e!2209109 () Bool)

(assert (=> b!3571087 (= res!1440231 e!2209109)))

(declare-fun res!1440229 () Bool)

(assert (=> b!3571087 (=> (not res!1440229) (not e!2209109))))

(declare-fun lt!1223915 () Bool)

(assert (=> b!3571087 (= res!1440229 lt!1223915)))

(declare-fun b!3571088 () Bool)

(declare-fun res!1440228 () Bool)

(assert (=> b!3571088 (=> (not res!1440228) (not e!2209109))))

(assert (=> b!3571088 (= res!1440228 (isEmpty!22031 (tail!5533 lt!1223629)))))

(declare-fun b!3571089 () Bool)

(declare-fun e!2209107 () Bool)

(assert (=> b!3571089 (= e!2209107 (not (= (head!7439 lt!1223629) (c!618702 (regex!5510 lt!1223583)))))))

(declare-fun d!1052520 () Bool)

(declare-fun e!2209112 () Bool)

(assert (=> d!1052520 e!2209112))

(declare-fun c!618839 () Bool)

(assert (=> d!1052520 (= c!618839 ((_ is EmptyExpr!10269) (regex!5510 lt!1223583)))))

(declare-fun e!2209108 () Bool)

(assert (=> d!1052520 (= lt!1223915 e!2209108)))

(declare-fun c!618837 () Bool)

(assert (=> d!1052520 (= c!618837 (isEmpty!22031 lt!1223629))))

(assert (=> d!1052520 (validRegex!4694 (regex!5510 lt!1223583))))

(assert (=> d!1052520 (= (matchR!4853 (regex!5510 lt!1223583) lt!1223629) lt!1223915)))

(declare-fun b!3571090 () Bool)

(declare-fun e!2209111 () Bool)

(assert (=> b!3571090 (= e!2209111 e!2209107)))

(declare-fun res!1440235 () Bool)

(assert (=> b!3571090 (=> res!1440235 e!2209107)))

(declare-fun call!258784 () Bool)

(assert (=> b!3571090 (= res!1440235 call!258784)))

(declare-fun b!3571091 () Bool)

(assert (=> b!3571091 (= e!2209110 (not lt!1223915))))

(declare-fun b!3571092 () Bool)

(declare-fun res!1440233 () Bool)

(assert (=> b!3571092 (=> res!1440233 e!2209107)))

(assert (=> b!3571092 (= res!1440233 (not (isEmpty!22031 (tail!5533 lt!1223629))))))

(declare-fun b!3571093 () Bool)

(assert (=> b!3571093 (= e!2209112 (= lt!1223915 call!258784))))

(declare-fun b!3571094 () Bool)

(assert (=> b!3571094 (= e!2209108 (nullable!3538 (regex!5510 lt!1223583)))))

(declare-fun b!3571095 () Bool)

(assert (=> b!3571095 (= e!2209113 e!2209111)))

(declare-fun res!1440232 () Bool)

(assert (=> b!3571095 (=> (not res!1440232) (not e!2209111))))

(assert (=> b!3571095 (= res!1440232 (not lt!1223915))))

(declare-fun bm!258779 () Bool)

(assert (=> bm!258779 (= call!258784 (isEmpty!22031 lt!1223629))))

(declare-fun b!3571096 () Bool)

(assert (=> b!3571096 (= e!2209108 (matchR!4853 (derivativeStep!3091 (regex!5510 lt!1223583) (head!7439 lt!1223629)) (tail!5533 lt!1223629)))))

(declare-fun b!3571097 () Bool)

(assert (=> b!3571097 (= e!2209109 (= (head!7439 lt!1223629) (c!618702 (regex!5510 lt!1223583))))))

(declare-fun b!3571098 () Bool)

(assert (=> b!3571098 (= e!2209112 e!2209110)))

(declare-fun c!618838 () Bool)

(assert (=> b!3571098 (= c!618838 ((_ is EmptyLang!10269) (regex!5510 lt!1223583)))))

(declare-fun b!3571099 () Bool)

(declare-fun res!1440234 () Bool)

(assert (=> b!3571099 (=> (not res!1440234) (not e!2209109))))

(assert (=> b!3571099 (= res!1440234 (not call!258784))))

(assert (= (and d!1052520 c!618837) b!3571094))

(assert (= (and d!1052520 (not c!618837)) b!3571096))

(assert (= (and d!1052520 c!618839) b!3571093))

(assert (= (and d!1052520 (not c!618839)) b!3571098))

(assert (= (and b!3571098 c!618838) b!3571091))

(assert (= (and b!3571098 (not c!618838)) b!3571086))

(assert (= (and b!3571086 (not res!1440230)) b!3571087))

(assert (= (and b!3571087 res!1440229) b!3571099))

(assert (= (and b!3571099 res!1440234) b!3571088))

(assert (= (and b!3571088 res!1440228) b!3571097))

(assert (= (and b!3571087 (not res!1440231)) b!3571095))

(assert (= (and b!3571095 res!1440232) b!3571090))

(assert (= (and b!3571090 (not res!1440235)) b!3571092))

(assert (= (and b!3571092 (not res!1440233)) b!3571089))

(assert (= (or b!3571093 b!3571090 b!3571099) bm!258779))

(declare-fun m!4059935 () Bool)

(assert (=> b!3571089 m!4059935))

(declare-fun m!4059937 () Bool)

(assert (=> b!3571088 m!4059937))

(assert (=> b!3571088 m!4059937))

(declare-fun m!4059939 () Bool)

(assert (=> b!3571088 m!4059939))

(assert (=> b!3571096 m!4059935))

(assert (=> b!3571096 m!4059935))

(declare-fun m!4059941 () Bool)

(assert (=> b!3571096 m!4059941))

(assert (=> b!3571096 m!4059937))

(assert (=> b!3571096 m!4059941))

(assert (=> b!3571096 m!4059937))

(declare-fun m!4059943 () Bool)

(assert (=> b!3571096 m!4059943))

(assert (=> b!3571097 m!4059935))

(declare-fun m!4059945 () Bool)

(assert (=> d!1052520 m!4059945))

(declare-fun m!4059947 () Bool)

(assert (=> d!1052520 m!4059947))

(assert (=> bm!258779 m!4059945))

(assert (=> b!3571092 m!4059937))

(assert (=> b!3571092 m!4059937))

(assert (=> b!3571092 m!4059939))

(declare-fun m!4059949 () Bool)

(assert (=> b!3571094 m!4059949))

(assert (=> b!3570385 d!1052520))

(declare-fun d!1052522 () Bool)

(assert (=> d!1052522 (= (get!12069 lt!1223589) (v!37295 lt!1223589))))

(assert (=> b!3570385 d!1052522))

(declare-fun d!1052524 () Bool)

(declare-fun lt!1223916 () Token!10386)

(assert (=> d!1052524 (= lt!1223916 (apply!9016 (list!13756 (_1!21838 lt!1223603)) 0))))

(assert (=> d!1052524 (= lt!1223916 (apply!9017 (c!618704 (_1!21838 lt!1223603)) 0))))

(declare-fun e!2209114 () Bool)

(assert (=> d!1052524 e!2209114))

(declare-fun res!1440236 () Bool)

(assert (=> d!1052524 (=> (not res!1440236) (not e!2209114))))

(assert (=> d!1052524 (= res!1440236 (<= 0 0))))

(assert (=> d!1052524 (= (apply!9012 (_1!21838 lt!1223603) 0) lt!1223916)))

(declare-fun b!3571100 () Bool)

(assert (=> b!3571100 (= e!2209114 (< 0 (size!28589 (_1!21838 lt!1223603))))))

(assert (= (and d!1052524 res!1440236) b!3571100))

(assert (=> d!1052524 m!4059437))

(assert (=> d!1052524 m!4059437))

(declare-fun m!4059951 () Bool)

(assert (=> d!1052524 m!4059951))

(declare-fun m!4059953 () Bool)

(assert (=> d!1052524 m!4059953))

(assert (=> b!3571100 m!4058731))

(assert (=> b!3570406 d!1052524))

(declare-fun d!1052526 () Bool)

(assert (=> d!1052526 (= (inv!50769 (tag!6168 (rule!8204 (h!42921 tokens!494)))) (= (mod (str.len (value!177494 (tag!6168 (rule!8204 (h!42921 tokens!494))))) 2) 0))))

(assert (=> b!3570411 d!1052526))

(declare-fun d!1052528 () Bool)

(declare-fun res!1440237 () Bool)

(declare-fun e!2209115 () Bool)

(assert (=> d!1052528 (=> (not res!1440237) (not e!2209115))))

(assert (=> d!1052528 (= res!1440237 (semiInverseModEq!2332 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494))))))))

(assert (=> d!1052528 (= (inv!50773 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) e!2209115)))

(declare-fun b!3571101 () Bool)

(assert (=> b!3571101 (= e!2209115 (equivClasses!2231 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494))))))))

(assert (= (and d!1052528 res!1440237) b!3571101))

(declare-fun m!4059955 () Bool)

(assert (=> d!1052528 m!4059955))

(declare-fun m!4059957 () Bool)

(assert (=> b!3571101 m!4059957))

(assert (=> b!3570411 d!1052528))

(declare-fun e!2209117 () List!37623)

(declare-fun b!3571103 () Bool)

(assert (=> b!3571103 (= e!2209117 (Cons!37499 (h!42919 (++!9323 lt!1223629 lt!1223614)) (++!9323 (t!289016 (++!9323 lt!1223629 lt!1223614)) lt!1223630)))))

(declare-fun d!1052530 () Bool)

(declare-fun e!2209116 () Bool)

(assert (=> d!1052530 e!2209116))

(declare-fun res!1440238 () Bool)

(assert (=> d!1052530 (=> (not res!1440238) (not e!2209116))))

(declare-fun lt!1223917 () List!37623)

(assert (=> d!1052530 (= res!1440238 (= (content!5316 lt!1223917) ((_ map or) (content!5316 (++!9323 lt!1223629 lt!1223614)) (content!5316 lt!1223630))))))

(assert (=> d!1052530 (= lt!1223917 e!2209117)))

(declare-fun c!618840 () Bool)

(assert (=> d!1052530 (= c!618840 ((_ is Nil!37499) (++!9323 lt!1223629 lt!1223614)))))

(assert (=> d!1052530 (= (++!9323 (++!9323 lt!1223629 lt!1223614) lt!1223630) lt!1223917)))

(declare-fun b!3571102 () Bool)

(assert (=> b!3571102 (= e!2209117 lt!1223630)))

(declare-fun b!3571104 () Bool)

(declare-fun res!1440239 () Bool)

(assert (=> b!3571104 (=> (not res!1440239) (not e!2209116))))

(assert (=> b!3571104 (= res!1440239 (= (size!28588 lt!1223917) (+ (size!28588 (++!9323 lt!1223629 lt!1223614)) (size!28588 lt!1223630))))))

(declare-fun b!3571105 () Bool)

(assert (=> b!3571105 (= e!2209116 (or (not (= lt!1223630 Nil!37499)) (= lt!1223917 (++!9323 lt!1223629 lt!1223614))))))

(assert (= (and d!1052530 c!618840) b!3571102))

(assert (= (and d!1052530 (not c!618840)) b!3571103))

(assert (= (and d!1052530 res!1440238) b!3571104))

(assert (= (and b!3571104 res!1440239) b!3571105))

(declare-fun m!4059959 () Bool)

(assert (=> b!3571103 m!4059959))

(declare-fun m!4059961 () Bool)

(assert (=> d!1052530 m!4059961))

(assert (=> d!1052530 m!4058649))

(declare-fun m!4059963 () Bool)

(assert (=> d!1052530 m!4059963))

(assert (=> d!1052530 m!4059775))

(declare-fun m!4059965 () Bool)

(assert (=> b!3571104 m!4059965))

(assert (=> b!3571104 m!4058649))

(declare-fun m!4059967 () Bool)

(assert (=> b!3571104 m!4059967))

(assert (=> b!3571104 m!4059781))

(assert (=> b!3570389 d!1052530))

(declare-fun b!3571107 () Bool)

(declare-fun e!2209119 () List!37623)

(assert (=> b!3571107 (= e!2209119 (Cons!37499 (h!42919 lt!1223629) (++!9323 (t!289016 lt!1223629) lt!1223614)))))

(declare-fun d!1052532 () Bool)

(declare-fun e!2209118 () Bool)

(assert (=> d!1052532 e!2209118))

(declare-fun res!1440240 () Bool)

(assert (=> d!1052532 (=> (not res!1440240) (not e!2209118))))

(declare-fun lt!1223918 () List!37623)

(assert (=> d!1052532 (= res!1440240 (= (content!5316 lt!1223918) ((_ map or) (content!5316 lt!1223629) (content!5316 lt!1223614))))))

(assert (=> d!1052532 (= lt!1223918 e!2209119)))

(declare-fun c!618841 () Bool)

(assert (=> d!1052532 (= c!618841 ((_ is Nil!37499) lt!1223629))))

(assert (=> d!1052532 (= (++!9323 lt!1223629 lt!1223614) lt!1223918)))

(declare-fun b!3571106 () Bool)

(assert (=> b!3571106 (= e!2209119 lt!1223614)))

(declare-fun b!3571108 () Bool)

(declare-fun res!1440241 () Bool)

(assert (=> b!3571108 (=> (not res!1440241) (not e!2209118))))

(assert (=> b!3571108 (= res!1440241 (= (size!28588 lt!1223918) (+ (size!28588 lt!1223629) (size!28588 lt!1223614))))))

(declare-fun b!3571109 () Bool)

(assert (=> b!3571109 (= e!2209118 (or (not (= lt!1223614 Nil!37499)) (= lt!1223918 lt!1223629)))))

(assert (= (and d!1052532 c!618841) b!3571106))

(assert (= (and d!1052532 (not c!618841)) b!3571107))

(assert (= (and d!1052532 res!1440240) b!3571108))

(assert (= (and b!3571108 res!1440241) b!3571109))

(declare-fun m!4059969 () Bool)

(assert (=> b!3571107 m!4059969))

(declare-fun m!4059971 () Bool)

(assert (=> d!1052532 m!4059971))

(declare-fun m!4059973 () Bool)

(assert (=> d!1052532 m!4059973))

(assert (=> d!1052532 m!4059773))

(declare-fun m!4059975 () Bool)

(assert (=> b!3571108 m!4059975))

(assert (=> b!3571108 m!4058805))

(assert (=> b!3571108 m!4059779))

(assert (=> b!3570389 d!1052532))

(declare-fun d!1052534 () Bool)

(declare-fun res!1440246 () Bool)

(declare-fun e!2209122 () Bool)

(assert (=> d!1052534 (=> (not res!1440246) (not e!2209122))))

(assert (=> d!1052534 (= res!1440246 (not (isEmpty!22031 (originalCharacters!6224 (h!42921 tokens!494)))))))

(assert (=> d!1052534 (= (inv!50772 (h!42921 tokens!494)) e!2209122)))

(declare-fun b!3571114 () Bool)

(declare-fun res!1440247 () Bool)

(assert (=> b!3571114 (=> (not res!1440247) (not e!2209122))))

(assert (=> b!3571114 (= res!1440247 (= (originalCharacters!6224 (h!42921 tokens!494)) (list!13755 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (value!177495 (h!42921 tokens!494))))))))

(declare-fun b!3571115 () Bool)

(assert (=> b!3571115 (= e!2209122 (= (size!28587 (h!42921 tokens!494)) (size!28588 (originalCharacters!6224 (h!42921 tokens!494)))))))

(assert (= (and d!1052534 res!1440246) b!3571114))

(assert (= (and b!3571114 res!1440247) b!3571115))

(declare-fun b_lambda!105261 () Bool)

(assert (=> (not b_lambda!105261) (not b!3571114)))

(declare-fun t!289077 () Bool)

(declare-fun tb!203363 () Bool)

(assert (=> (and b!3570419 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289077) tb!203363))

(declare-fun b!3571116 () Bool)

(declare-fun e!2209123 () Bool)

(declare-fun tp!1093664 () Bool)

(assert (=> b!3571116 (= e!2209123 (and (inv!50776 (c!618703 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (value!177495 (h!42921 tokens!494))))) tp!1093664))))

(declare-fun result!247976 () Bool)

(assert (=> tb!203363 (= result!247976 (and (inv!50777 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (value!177495 (h!42921 tokens!494)))) e!2209123))))

(assert (= tb!203363 b!3571116))

(declare-fun m!4059977 () Bool)

(assert (=> b!3571116 m!4059977))

(declare-fun m!4059979 () Bool)

(assert (=> tb!203363 m!4059979))

(assert (=> b!3571114 t!289077))

(declare-fun b_and!256995 () Bool)

(assert (= b_and!256989 (and (=> t!289077 result!247976) b_and!256995)))

(declare-fun tb!203365 () Bool)

(declare-fun t!289079 () Bool)

(assert (=> (and b!3570412 (= (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289079) tb!203365))

(declare-fun result!247978 () Bool)

(assert (= result!247978 result!247976))

(assert (=> b!3571114 t!289079))

(declare-fun b_and!256997 () Bool)

(assert (= b_and!256991 (and (=> t!289079 result!247978) b_and!256997)))

(declare-fun tb!203367 () Bool)

(declare-fun t!289081 () Bool)

(assert (=> (and b!3570404 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289081) tb!203367))

(declare-fun result!247980 () Bool)

(assert (= result!247980 result!247976))

(assert (=> b!3571114 t!289081))

(declare-fun b_and!256999 () Bool)

(assert (= b_and!256993 (and (=> t!289081 result!247980) b_and!256999)))

(declare-fun m!4059981 () Bool)

(assert (=> d!1052534 m!4059981))

(declare-fun m!4059983 () Bool)

(assert (=> b!3571114 m!4059983))

(assert (=> b!3571114 m!4059983))

(declare-fun m!4059985 () Bool)

(assert (=> b!3571114 m!4059985))

(declare-fun m!4059987 () Bool)

(assert (=> b!3571115 m!4059987))

(assert (=> b!3570410 d!1052534))

(declare-fun d!1052536 () Bool)

(declare-fun res!1440250 () Bool)

(declare-fun e!2209126 () Bool)

(assert (=> d!1052536 (=> (not res!1440250) (not e!2209126))))

(declare-fun rulesValid!2093 (LexerInterface!5099 List!37624) Bool)

(assert (=> d!1052536 (= res!1440250 (rulesValid!2093 thiss!18206 rules!2135))))

(assert (=> d!1052536 (= (rulesInvariant!4496 thiss!18206 rules!2135) e!2209126)))

(declare-fun b!3571119 () Bool)

(declare-datatypes ((List!37627 0))(
  ( (Nil!37503) (Cons!37503 (h!42923 String!42034) (t!289134 List!37627)) )
))
(declare-fun noDuplicateTag!2089 (LexerInterface!5099 List!37624 List!37627) Bool)

(assert (=> b!3571119 (= e!2209126 (noDuplicateTag!2089 thiss!18206 rules!2135 Nil!37503))))

(assert (= (and d!1052536 res!1440250) b!3571119))

(declare-fun m!4059989 () Bool)

(assert (=> d!1052536 m!4059989))

(declare-fun m!4059991 () Bool)

(assert (=> b!3571119 m!4059991))

(assert (=> b!3570431 d!1052536))

(declare-fun bs!569189 () Bool)

(declare-fun d!1052538 () Bool)

(assert (= bs!569189 (and d!1052538 b!3570424)))

(declare-fun lambda!123461 () Int)

(assert (=> bs!569189 (not (= lambda!123461 lambda!123450))))

(declare-fun bs!569190 () Bool)

(assert (= bs!569190 (and d!1052538 b!3570384)))

(assert (=> bs!569190 (= lambda!123461 lambda!123451)))

(declare-fun b!3571204 () Bool)

(declare-fun e!2209176 () Bool)

(assert (=> b!3571204 (= e!2209176 true)))

(declare-fun b!3571203 () Bool)

(declare-fun e!2209175 () Bool)

(assert (=> b!3571203 (= e!2209175 e!2209176)))

(declare-fun b!3571202 () Bool)

(declare-fun e!2209174 () Bool)

(assert (=> b!3571202 (= e!2209174 e!2209175)))

(assert (=> d!1052538 e!2209174))

(assert (= b!3571203 b!3571204))

(assert (= b!3571202 b!3571203))

(assert (= (and d!1052538 ((_ is Cons!37500) rules!2135)) b!3571202))

(assert (=> b!3571204 (< (dynLambda!16099 order!20333 (toValue!7778 (transformation!5510 (h!42920 rules!2135)))) (dynLambda!16100 order!20335 lambda!123461))))

(assert (=> b!3571204 (< (dynLambda!16101 order!20337 (toChars!7637 (transformation!5510 (h!42920 rules!2135)))) (dynLambda!16100 order!20335 lambda!123461))))

(assert (=> d!1052538 true))

(declare-fun e!2209173 () Bool)

(assert (=> d!1052538 e!2209173))

(declare-fun res!1440286 () Bool)

(assert (=> d!1052538 (=> (not res!1440286) (not e!2209173))))

(declare-fun lt!1223977 () Bool)

(assert (=> d!1052538 (= res!1440286 (= lt!1223977 (forall!8110 (list!13756 (seqFromList!4074 tokens!494)) lambda!123461)))))

(declare-fun forall!8112 (BalanceConc!22406 Int) Bool)

(assert (=> d!1052538 (= lt!1223977 (forall!8112 (seqFromList!4074 tokens!494) lambda!123461))))

(assert (=> d!1052538 (not (isEmpty!22032 rules!2135))))

(assert (=> d!1052538 (= (rulesProduceEachTokenIndividually!1550 thiss!18206 rules!2135 (seqFromList!4074 tokens!494)) lt!1223977)))

(declare-fun b!3571201 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1905 (LexerInterface!5099 List!37624 List!37625) Bool)

(assert (=> b!3571201 (= e!2209173 (= lt!1223977 (rulesProduceEachTokenIndividuallyList!1905 thiss!18206 rules!2135 (list!13756 (seqFromList!4074 tokens!494)))))))

(assert (= (and d!1052538 res!1440286) b!3571201))

(assert (=> d!1052538 m!4058697))

(declare-fun m!4060195 () Bool)

(assert (=> d!1052538 m!4060195))

(assert (=> d!1052538 m!4060195))

(declare-fun m!4060197 () Bool)

(assert (=> d!1052538 m!4060197))

(assert (=> d!1052538 m!4058697))

(declare-fun m!4060199 () Bool)

(assert (=> d!1052538 m!4060199))

(assert (=> d!1052538 m!4058713))

(assert (=> b!3571201 m!4058697))

(assert (=> b!3571201 m!4060195))

(assert (=> b!3571201 m!4060195))

(declare-fun m!4060201 () Bool)

(assert (=> b!3571201 m!4060201))

(assert (=> b!3570388 d!1052538))

(declare-fun d!1052582 () Bool)

(declare-fun fromListB!1883 (List!37625) BalanceConc!22406)

(assert (=> d!1052582 (= (seqFromList!4074 tokens!494) (fromListB!1883 tokens!494))))

(declare-fun bs!569191 () Bool)

(assert (= bs!569191 d!1052582))

(declare-fun m!4060215 () Bool)

(assert (=> bs!569191 m!4060215))

(assert (=> b!3570388 d!1052582))

(declare-fun d!1052586 () Bool)

(assert (=> d!1052586 (= (get!12070 lt!1223621) (v!37294 lt!1223621))))

(assert (=> b!3570409 d!1052586))

(declare-fun d!1052588 () Bool)

(declare-fun lt!1223981 () Bool)

(assert (=> d!1052588 (= lt!1223981 (select (content!5316 lt!1223584) lt!1223597))))

(declare-fun e!2209182 () Bool)

(assert (=> d!1052588 (= lt!1223981 e!2209182)))

(declare-fun res!1440289 () Bool)

(assert (=> d!1052588 (=> (not res!1440289) (not e!2209182))))

(assert (=> d!1052588 (= res!1440289 ((_ is Cons!37499) lt!1223584))))

(assert (=> d!1052588 (= (contains!7096 lt!1223584 lt!1223597) lt!1223981)))

(declare-fun b!3571211 () Bool)

(declare-fun e!2209181 () Bool)

(assert (=> b!3571211 (= e!2209182 e!2209181)))

(declare-fun res!1440290 () Bool)

(assert (=> b!3571211 (=> res!1440290 e!2209181)))

(assert (=> b!3571211 (= res!1440290 (= (h!42919 lt!1223584) lt!1223597))))

(declare-fun b!3571212 () Bool)

(assert (=> b!3571212 (= e!2209181 (contains!7096 (t!289016 lt!1223584) lt!1223597))))

(assert (= (and d!1052588 res!1440289) b!3571211))

(assert (= (and b!3571211 (not res!1440290)) b!3571212))

(assert (=> d!1052588 m!4059149))

(declare-fun m!4060217 () Bool)

(assert (=> d!1052588 m!4060217))

(declare-fun m!4060219 () Bool)

(assert (=> b!3571212 m!4060219))

(assert (=> b!3570413 d!1052588))

(declare-fun d!1052590 () Bool)

(assert (=> d!1052590 (= (head!7439 lt!1223630) (h!42919 lt!1223630))))

(assert (=> b!3570413 d!1052590))

(declare-fun d!1052592 () Bool)

(assert (=> d!1052592 (= (isEmpty!22032 rules!2135) ((_ is Nil!37500) rules!2135))))

(assert (=> b!3570391 d!1052592))

(declare-fun b!3571213 () Bool)

(declare-fun res!1440293 () Bool)

(declare-fun e!2209189 () Bool)

(assert (=> b!3571213 (=> res!1440293 e!2209189)))

(assert (=> b!3571213 (= res!1440293 (not ((_ is ElementMatch!10269) (regex!5510 lt!1223609))))))

(declare-fun e!2209186 () Bool)

(assert (=> b!3571213 (= e!2209186 e!2209189)))

(declare-fun b!3571214 () Bool)

(declare-fun res!1440294 () Bool)

(assert (=> b!3571214 (=> res!1440294 e!2209189)))

(declare-fun e!2209185 () Bool)

(assert (=> b!3571214 (= res!1440294 e!2209185)))

(declare-fun res!1440292 () Bool)

(assert (=> b!3571214 (=> (not res!1440292) (not e!2209185))))

(declare-fun lt!1223982 () Bool)

(assert (=> b!3571214 (= res!1440292 lt!1223982)))

(declare-fun b!3571215 () Bool)

(declare-fun res!1440291 () Bool)

(assert (=> b!3571215 (=> (not res!1440291) (not e!2209185))))

(assert (=> b!3571215 (= res!1440291 (isEmpty!22031 (tail!5533 lt!1223602)))))

(declare-fun b!3571216 () Bool)

(declare-fun e!2209183 () Bool)

(assert (=> b!3571216 (= e!2209183 (not (= (head!7439 lt!1223602) (c!618702 (regex!5510 lt!1223609)))))))

(declare-fun d!1052594 () Bool)

(declare-fun e!2209188 () Bool)

(assert (=> d!1052594 e!2209188))

(declare-fun c!618871 () Bool)

(assert (=> d!1052594 (= c!618871 ((_ is EmptyExpr!10269) (regex!5510 lt!1223609)))))

(declare-fun e!2209184 () Bool)

(assert (=> d!1052594 (= lt!1223982 e!2209184)))

(declare-fun c!618869 () Bool)

(assert (=> d!1052594 (= c!618869 (isEmpty!22031 lt!1223602))))

(assert (=> d!1052594 (validRegex!4694 (regex!5510 lt!1223609))))

(assert (=> d!1052594 (= (matchR!4853 (regex!5510 lt!1223609) lt!1223602) lt!1223982)))

(declare-fun b!3571217 () Bool)

(declare-fun e!2209187 () Bool)

(assert (=> b!3571217 (= e!2209187 e!2209183)))

(declare-fun res!1440298 () Bool)

(assert (=> b!3571217 (=> res!1440298 e!2209183)))

(declare-fun call!258798 () Bool)

(assert (=> b!3571217 (= res!1440298 call!258798)))

(declare-fun b!3571218 () Bool)

(assert (=> b!3571218 (= e!2209186 (not lt!1223982))))

(declare-fun b!3571219 () Bool)

(declare-fun res!1440296 () Bool)

(assert (=> b!3571219 (=> res!1440296 e!2209183)))

(assert (=> b!3571219 (= res!1440296 (not (isEmpty!22031 (tail!5533 lt!1223602))))))

(declare-fun b!3571220 () Bool)

(assert (=> b!3571220 (= e!2209188 (= lt!1223982 call!258798))))

(declare-fun b!3571221 () Bool)

(assert (=> b!3571221 (= e!2209184 (nullable!3538 (regex!5510 lt!1223609)))))

(declare-fun b!3571222 () Bool)

(assert (=> b!3571222 (= e!2209189 e!2209187)))

(declare-fun res!1440295 () Bool)

(assert (=> b!3571222 (=> (not res!1440295) (not e!2209187))))

(assert (=> b!3571222 (= res!1440295 (not lt!1223982))))

(declare-fun bm!258793 () Bool)

(assert (=> bm!258793 (= call!258798 (isEmpty!22031 lt!1223602))))

(declare-fun b!3571223 () Bool)

(assert (=> b!3571223 (= e!2209184 (matchR!4853 (derivativeStep!3091 (regex!5510 lt!1223609) (head!7439 lt!1223602)) (tail!5533 lt!1223602)))))

(declare-fun b!3571224 () Bool)

(assert (=> b!3571224 (= e!2209185 (= (head!7439 lt!1223602) (c!618702 (regex!5510 lt!1223609))))))

(declare-fun b!3571225 () Bool)

(assert (=> b!3571225 (= e!2209188 e!2209186)))

(declare-fun c!618870 () Bool)

(assert (=> b!3571225 (= c!618870 ((_ is EmptyLang!10269) (regex!5510 lt!1223609)))))

(declare-fun b!3571226 () Bool)

(declare-fun res!1440297 () Bool)

(assert (=> b!3571226 (=> (not res!1440297) (not e!2209185))))

(assert (=> b!3571226 (= res!1440297 (not call!258798))))

(assert (= (and d!1052594 c!618869) b!3571221))

(assert (= (and d!1052594 (not c!618869)) b!3571223))

(assert (= (and d!1052594 c!618871) b!3571220))

(assert (= (and d!1052594 (not c!618871)) b!3571225))

(assert (= (and b!3571225 c!618870) b!3571218))

(assert (= (and b!3571225 (not c!618870)) b!3571213))

(assert (= (and b!3571213 (not res!1440293)) b!3571214))

(assert (= (and b!3571214 res!1440292) b!3571226))

(assert (= (and b!3571226 res!1440297) b!3571215))

(assert (= (and b!3571215 res!1440291) b!3571224))

(assert (= (and b!3571214 (not res!1440294)) b!3571222))

(assert (= (and b!3571222 res!1440295) b!3571217))

(assert (= (and b!3571217 (not res!1440298)) b!3571219))

(assert (= (and b!3571219 (not res!1440296)) b!3571216))

(assert (= (or b!3571220 b!3571217 b!3571226) bm!258793))

(assert (=> b!3571216 m!4058785))

(declare-fun m!4060221 () Bool)

(assert (=> b!3571215 m!4060221))

(assert (=> b!3571215 m!4060221))

(declare-fun m!4060223 () Bool)

(assert (=> b!3571215 m!4060223))

(assert (=> b!3571223 m!4058785))

(assert (=> b!3571223 m!4058785))

(declare-fun m!4060225 () Bool)

(assert (=> b!3571223 m!4060225))

(assert (=> b!3571223 m!4060221))

(assert (=> b!3571223 m!4060225))

(assert (=> b!3571223 m!4060221))

(declare-fun m!4060227 () Bool)

(assert (=> b!3571223 m!4060227))

(assert (=> b!3571224 m!4058785))

(declare-fun m!4060229 () Bool)

(assert (=> d!1052594 m!4060229))

(declare-fun m!4060231 () Bool)

(assert (=> d!1052594 m!4060231))

(assert (=> bm!258793 m!4060229))

(assert (=> b!3571219 m!4060221))

(assert (=> b!3571219 m!4060221))

(assert (=> b!3571219 m!4060223))

(declare-fun m!4060233 () Bool)

(assert (=> b!3571221 m!4060233))

(assert (=> b!3570390 d!1052594))

(declare-fun d!1052596 () Bool)

(assert (=> d!1052596 (= (get!12069 lt!1223625) (v!37295 lt!1223625))))

(assert (=> b!3570390 d!1052596))

(declare-fun d!1052598 () Bool)

(declare-fun res!1440299 () Bool)

(declare-fun e!2209190 () Bool)

(assert (=> d!1052598 (=> (not res!1440299) (not e!2209190))))

(assert (=> d!1052598 (= res!1440299 (not (isEmpty!22031 (originalCharacters!6224 separatorToken!241))))))

(assert (=> d!1052598 (= (inv!50772 separatorToken!241) e!2209190)))

(declare-fun b!3571227 () Bool)

(declare-fun res!1440300 () Bool)

(assert (=> b!3571227 (=> (not res!1440300) (not e!2209190))))

(assert (=> b!3571227 (= res!1440300 (= (originalCharacters!6224 separatorToken!241) (list!13755 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (value!177495 separatorToken!241)))))))

(declare-fun b!3571228 () Bool)

(assert (=> b!3571228 (= e!2209190 (= (size!28587 separatorToken!241) (size!28588 (originalCharacters!6224 separatorToken!241))))))

(assert (= (and d!1052598 res!1440299) b!3571227))

(assert (= (and b!3571227 res!1440300) b!3571228))

(declare-fun b_lambda!105263 () Bool)

(assert (=> (not b_lambda!105263) (not b!3571227)))

(assert (=> b!3571227 t!289065))

(declare-fun b_and!257001 () Bool)

(assert (= b_and!256995 (and (=> t!289065 result!247962) b_and!257001)))

(assert (=> b!3571227 t!289067))

(declare-fun b_and!257003 () Bool)

(assert (= b_and!256997 (and (=> t!289067 result!247966) b_and!257003)))

(assert (=> b!3571227 t!289069))

(declare-fun b_and!257005 () Bool)

(assert (= b_and!256999 (and (=> t!289069 result!247968) b_and!257005)))

(declare-fun m!4060235 () Bool)

(assert (=> d!1052598 m!4060235))

(assert (=> b!3571227 m!4059803))

(assert (=> b!3571227 m!4059803))

(declare-fun m!4060237 () Bool)

(assert (=> b!3571227 m!4060237))

(declare-fun m!4060239 () Bool)

(assert (=> b!3571228 m!4060239))

(assert (=> start!330714 d!1052598))

(declare-fun b!3571229 () Bool)

(declare-fun e!2209191 () Bool)

(assert (=> b!3571229 (= e!2209191 (inv!17 (value!177495 (h!42921 tokens!494))))))

(declare-fun b!3571231 () Bool)

(declare-fun e!2209192 () Bool)

(assert (=> b!3571231 (= e!2209192 (inv!15 (value!177495 (h!42921 tokens!494))))))

(declare-fun d!1052600 () Bool)

(declare-fun c!618873 () Bool)

(assert (=> d!1052600 (= c!618873 ((_ is IntegerValue!17220) (value!177495 (h!42921 tokens!494))))))

(declare-fun e!2209193 () Bool)

(assert (=> d!1052600 (= (inv!21 (value!177495 (h!42921 tokens!494))) e!2209193)))

(declare-fun b!3571230 () Bool)

(declare-fun res!1440301 () Bool)

(assert (=> b!3571230 (=> res!1440301 e!2209192)))

(assert (=> b!3571230 (= res!1440301 (not ((_ is IntegerValue!17222) (value!177495 (h!42921 tokens!494)))))))

(assert (=> b!3571230 (= e!2209191 e!2209192)))

(declare-fun b!3571232 () Bool)

(assert (=> b!3571232 (= e!2209193 (inv!16 (value!177495 (h!42921 tokens!494))))))

(declare-fun b!3571233 () Bool)

(assert (=> b!3571233 (= e!2209193 e!2209191)))

(declare-fun c!618872 () Bool)

(assert (=> b!3571233 (= c!618872 ((_ is IntegerValue!17221) (value!177495 (h!42921 tokens!494))))))

(assert (= (and d!1052600 c!618873) b!3571232))

(assert (= (and d!1052600 (not c!618873)) b!3571233))

(assert (= (and b!3571233 c!618872) b!3571229))

(assert (= (and b!3571233 (not c!618872)) b!3571230))

(assert (= (and b!3571230 (not res!1440301)) b!3571231))

(declare-fun m!4060241 () Bool)

(assert (=> b!3571229 m!4060241))

(declare-fun m!4060243 () Bool)

(assert (=> b!3571231 m!4060243))

(declare-fun m!4060245 () Bool)

(assert (=> b!3571232 m!4060245))

(assert (=> b!3570395 d!1052600))

(declare-fun d!1052602 () Bool)

(assert (=> d!1052602 (= (inv!50769 (tag!6168 (h!42920 rules!2135))) (= (mod (str.len (value!177494 (tag!6168 (h!42920 rules!2135)))) 2) 0))))

(assert (=> b!3570416 d!1052602))

(declare-fun d!1052604 () Bool)

(declare-fun res!1440302 () Bool)

(declare-fun e!2209194 () Bool)

(assert (=> d!1052604 (=> (not res!1440302) (not e!2209194))))

(assert (=> d!1052604 (= res!1440302 (semiInverseModEq!2332 (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toValue!7778 (transformation!5510 (h!42920 rules!2135)))))))

(assert (=> d!1052604 (= (inv!50773 (transformation!5510 (h!42920 rules!2135))) e!2209194)))

(declare-fun b!3571234 () Bool)

(assert (=> b!3571234 (= e!2209194 (equivClasses!2231 (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toValue!7778 (transformation!5510 (h!42920 rules!2135)))))))

(assert (= (and d!1052604 res!1440302) b!3571234))

(declare-fun m!4060247 () Bool)

(assert (=> d!1052604 m!4060247))

(declare-fun m!4060249 () Bool)

(assert (=> b!3571234 m!4060249))

(assert (=> b!3570416 d!1052604))

(declare-fun b!3571236 () Bool)

(declare-fun e!2209196 () List!37623)

(assert (=> b!3571236 (= e!2209196 (Cons!37499 (h!42919 lt!1223629) (++!9323 (t!289016 lt!1223629) lt!1223616)))))

(declare-fun d!1052606 () Bool)

(declare-fun e!2209195 () Bool)

(assert (=> d!1052606 e!2209195))

(declare-fun res!1440303 () Bool)

(assert (=> d!1052606 (=> (not res!1440303) (not e!2209195))))

(declare-fun lt!1223983 () List!37623)

(assert (=> d!1052606 (= res!1440303 (= (content!5316 lt!1223983) ((_ map or) (content!5316 lt!1223629) (content!5316 lt!1223616))))))

(assert (=> d!1052606 (= lt!1223983 e!2209196)))

(declare-fun c!618874 () Bool)

(assert (=> d!1052606 (= c!618874 ((_ is Nil!37499) lt!1223629))))

(assert (=> d!1052606 (= (++!9323 lt!1223629 lt!1223616) lt!1223983)))

(declare-fun b!3571235 () Bool)

(assert (=> b!3571235 (= e!2209196 lt!1223616)))

(declare-fun b!3571237 () Bool)

(declare-fun res!1440304 () Bool)

(assert (=> b!3571237 (=> (not res!1440304) (not e!2209195))))

(assert (=> b!3571237 (= res!1440304 (= (size!28588 lt!1223983) (+ (size!28588 lt!1223629) (size!28588 lt!1223616))))))

(declare-fun b!3571238 () Bool)

(assert (=> b!3571238 (= e!2209195 (or (not (= lt!1223616 Nil!37499)) (= lt!1223983 lt!1223629)))))

(assert (= (and d!1052606 c!618874) b!3571235))

(assert (= (and d!1052606 (not c!618874)) b!3571236))

(assert (= (and d!1052606 res!1440303) b!3571237))

(assert (= (and b!3571237 res!1440304) b!3571238))

(declare-fun m!4060251 () Bool)

(assert (=> b!3571236 m!4060251))

(declare-fun m!4060253 () Bool)

(assert (=> d!1052606 m!4060253))

(assert (=> d!1052606 m!4059973))

(declare-fun m!4060255 () Bool)

(assert (=> d!1052606 m!4060255))

(declare-fun m!4060257 () Bool)

(assert (=> b!3571237 m!4060257))

(assert (=> b!3571237 m!4058805))

(declare-fun m!4060259 () Bool)

(assert (=> b!3571237 m!4060259))

(assert (=> b!3570394 d!1052606))

(declare-fun d!1052608 () Bool)

(assert (=> d!1052608 (= (++!9323 (++!9323 lt!1223629 lt!1223614) lt!1223630) (++!9323 lt!1223629 (++!9323 lt!1223614 lt!1223630)))))

(declare-fun lt!1223986 () Unit!53483)

(declare-fun choose!20772 (List!37623 List!37623 List!37623) Unit!53483)

(assert (=> d!1052608 (= lt!1223986 (choose!20772 lt!1223629 lt!1223614 lt!1223630))))

(assert (=> d!1052608 (= (lemmaConcatAssociativity!2050 lt!1223629 lt!1223614 lt!1223630) lt!1223986)))

(declare-fun bs!569192 () Bool)

(assert (= bs!569192 d!1052608))

(assert (=> bs!569192 m!4058671))

(declare-fun m!4060261 () Bool)

(assert (=> bs!569192 m!4060261))

(assert (=> bs!569192 m!4058671))

(declare-fun m!4060263 () Bool)

(assert (=> bs!569192 m!4060263))

(assert (=> bs!569192 m!4058649))

(assert (=> bs!569192 m!4058651))

(assert (=> bs!569192 m!4058649))

(assert (=> b!3570394 d!1052608))

(declare-fun d!1052610 () Bool)

(assert (=> d!1052610 (not (matchR!4853 (regex!5510 (rule!8204 separatorToken!241)) lt!1223614))))

(declare-fun lt!1223989 () Unit!53483)

(declare-fun choose!20773 (Regex!10269 List!37623 C!20724) Unit!53483)

(assert (=> d!1052610 (= lt!1223989 (choose!20773 (regex!5510 (rule!8204 separatorToken!241)) lt!1223614 lt!1223634))))

(assert (=> d!1052610 (validRegex!4694 (regex!5510 (rule!8204 separatorToken!241)))))

(assert (=> d!1052610 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!568 (regex!5510 (rule!8204 separatorToken!241)) lt!1223614 lt!1223634) lt!1223989)))

(declare-fun bs!569193 () Bool)

(assert (= bs!569193 d!1052610))

(assert (=> bs!569193 m!4058663))

(declare-fun m!4060265 () Bool)

(assert (=> bs!569193 m!4060265))

(declare-fun m!4060267 () Bool)

(assert (=> bs!569193 m!4060267))

(assert (=> b!3570414 d!1052610))

(declare-fun b!3571239 () Bool)

(declare-fun res!1440307 () Bool)

(declare-fun e!2209203 () Bool)

(assert (=> b!3571239 (=> res!1440307 e!2209203)))

(assert (=> b!3571239 (= res!1440307 (not ((_ is ElementMatch!10269) (regex!5510 (rule!8204 separatorToken!241)))))))

(declare-fun e!2209200 () Bool)

(assert (=> b!3571239 (= e!2209200 e!2209203)))

(declare-fun b!3571240 () Bool)

(declare-fun res!1440308 () Bool)

(assert (=> b!3571240 (=> res!1440308 e!2209203)))

(declare-fun e!2209199 () Bool)

(assert (=> b!3571240 (= res!1440308 e!2209199)))

(declare-fun res!1440306 () Bool)

(assert (=> b!3571240 (=> (not res!1440306) (not e!2209199))))

(declare-fun lt!1223990 () Bool)

(assert (=> b!3571240 (= res!1440306 lt!1223990)))

(declare-fun b!3571241 () Bool)

(declare-fun res!1440305 () Bool)

(assert (=> b!3571241 (=> (not res!1440305) (not e!2209199))))

(assert (=> b!3571241 (= res!1440305 (isEmpty!22031 (tail!5533 lt!1223614)))))

(declare-fun b!3571242 () Bool)

(declare-fun e!2209197 () Bool)

(assert (=> b!3571242 (= e!2209197 (not (= (head!7439 lt!1223614) (c!618702 (regex!5510 (rule!8204 separatorToken!241))))))))

(declare-fun d!1052612 () Bool)

(declare-fun e!2209202 () Bool)

(assert (=> d!1052612 e!2209202))

(declare-fun c!618878 () Bool)

(assert (=> d!1052612 (= c!618878 ((_ is EmptyExpr!10269) (regex!5510 (rule!8204 separatorToken!241))))))

(declare-fun e!2209198 () Bool)

(assert (=> d!1052612 (= lt!1223990 e!2209198)))

(declare-fun c!618876 () Bool)

(assert (=> d!1052612 (= c!618876 (isEmpty!22031 lt!1223614))))

(assert (=> d!1052612 (validRegex!4694 (regex!5510 (rule!8204 separatorToken!241)))))

(assert (=> d!1052612 (= (matchR!4853 (regex!5510 (rule!8204 separatorToken!241)) lt!1223614) lt!1223990)))

(declare-fun b!3571243 () Bool)

(declare-fun e!2209201 () Bool)

(assert (=> b!3571243 (= e!2209201 e!2209197)))

(declare-fun res!1440312 () Bool)

(assert (=> b!3571243 (=> res!1440312 e!2209197)))

(declare-fun call!258799 () Bool)

(assert (=> b!3571243 (= res!1440312 call!258799)))

(declare-fun b!3571244 () Bool)

(assert (=> b!3571244 (= e!2209200 (not lt!1223990))))

(declare-fun b!3571245 () Bool)

(declare-fun res!1440310 () Bool)

(assert (=> b!3571245 (=> res!1440310 e!2209197)))

(assert (=> b!3571245 (= res!1440310 (not (isEmpty!22031 (tail!5533 lt!1223614))))))

(declare-fun b!3571246 () Bool)

(assert (=> b!3571246 (= e!2209202 (= lt!1223990 call!258799))))

(declare-fun b!3571247 () Bool)

(assert (=> b!3571247 (= e!2209198 (nullable!3538 (regex!5510 (rule!8204 separatorToken!241))))))

(declare-fun b!3571248 () Bool)

(assert (=> b!3571248 (= e!2209203 e!2209201)))

(declare-fun res!1440309 () Bool)

(assert (=> b!3571248 (=> (not res!1440309) (not e!2209201))))

(assert (=> b!3571248 (= res!1440309 (not lt!1223990))))

(declare-fun bm!258794 () Bool)

(assert (=> bm!258794 (= call!258799 (isEmpty!22031 lt!1223614))))

(declare-fun b!3571249 () Bool)

(assert (=> b!3571249 (= e!2209198 (matchR!4853 (derivativeStep!3091 (regex!5510 (rule!8204 separatorToken!241)) (head!7439 lt!1223614)) (tail!5533 lt!1223614)))))

(declare-fun b!3571250 () Bool)

(assert (=> b!3571250 (= e!2209199 (= (head!7439 lt!1223614) (c!618702 (regex!5510 (rule!8204 separatorToken!241)))))))

(declare-fun b!3571251 () Bool)

(assert (=> b!3571251 (= e!2209202 e!2209200)))

(declare-fun c!618877 () Bool)

(assert (=> b!3571251 (= c!618877 ((_ is EmptyLang!10269) (regex!5510 (rule!8204 separatorToken!241))))))

(declare-fun b!3571252 () Bool)

(declare-fun res!1440311 () Bool)

(assert (=> b!3571252 (=> (not res!1440311) (not e!2209199))))

(assert (=> b!3571252 (= res!1440311 (not call!258799))))

(assert (= (and d!1052612 c!618876) b!3571247))

(assert (= (and d!1052612 (not c!618876)) b!3571249))

(assert (= (and d!1052612 c!618878) b!3571246))

(assert (= (and d!1052612 (not c!618878)) b!3571251))

(assert (= (and b!3571251 c!618877) b!3571244))

(assert (= (and b!3571251 (not c!618877)) b!3571239))

(assert (= (and b!3571239 (not res!1440307)) b!3571240))

(assert (= (and b!3571240 res!1440306) b!3571252))

(assert (= (and b!3571252 res!1440311) b!3571241))

(assert (= (and b!3571241 res!1440305) b!3571250))

(assert (= (and b!3571240 (not res!1440308)) b!3571248))

(assert (= (and b!3571248 res!1440309) b!3571243))

(assert (= (and b!3571243 (not res!1440312)) b!3571245))

(assert (= (and b!3571245 (not res!1440310)) b!3571242))

(assert (= (or b!3571246 b!3571243 b!3571252) bm!258794))

(assert (=> b!3571242 m!4058793))

(assert (=> b!3571241 m!4059913))

(assert (=> b!3571241 m!4059913))

(assert (=> b!3571241 m!4059915))

(assert (=> b!3571249 m!4058793))

(assert (=> b!3571249 m!4058793))

(declare-fun m!4060269 () Bool)

(assert (=> b!3571249 m!4060269))

(assert (=> b!3571249 m!4059913))

(assert (=> b!3571249 m!4060269))

(assert (=> b!3571249 m!4059913))

(declare-fun m!4060271 () Bool)

(assert (=> b!3571249 m!4060271))

(assert (=> b!3571250 m!4058793))

(assert (=> d!1052612 m!4059921))

(assert (=> d!1052612 m!4060267))

(assert (=> bm!258794 m!4059921))

(assert (=> b!3571245 m!4059913))

(assert (=> b!3571245 m!4059913))

(assert (=> b!3571245 m!4059915))

(declare-fun m!4060273 () Bool)

(assert (=> b!3571247 m!4060273))

(assert (=> b!3570414 d!1052612))

(declare-fun lt!1223993 () Bool)

(declare-fun d!1052614 () Bool)

(declare-fun isEmpty!22042 (List!37625) Bool)

(assert (=> d!1052614 (= lt!1223993 (isEmpty!22042 (list!13756 (_1!21838 (lex!2425 thiss!18206 rules!2135 lt!1223631)))))))

(declare-fun isEmpty!22043 (Conc!11396) Bool)

(assert (=> d!1052614 (= lt!1223993 (isEmpty!22043 (c!618704 (_1!21838 (lex!2425 thiss!18206 rules!2135 lt!1223631)))))))

(assert (=> d!1052614 (= (isEmpty!22033 (_1!21838 (lex!2425 thiss!18206 rules!2135 lt!1223631))) lt!1223993)))

(declare-fun bs!569194 () Bool)

(assert (= bs!569194 d!1052614))

(declare-fun m!4060275 () Bool)

(assert (=> bs!569194 m!4060275))

(assert (=> bs!569194 m!4060275))

(declare-fun m!4060277 () Bool)

(assert (=> bs!569194 m!4060277))

(declare-fun m!4060279 () Bool)

(assert (=> bs!569194 m!4060279))

(assert (=> b!3570397 d!1052614))

(declare-fun b!3571253 () Bool)

(declare-fun e!2209204 () Bool)

(declare-fun e!2209206 () Bool)

(assert (=> b!3571253 (= e!2209204 e!2209206)))

(declare-fun res!1440315 () Bool)

(declare-fun lt!1223994 () tuple2!37408)

(assert (=> b!3571253 (= res!1440315 (< (size!28590 (_2!21838 lt!1223994)) (size!28590 lt!1223631)))))

(assert (=> b!3571253 (=> (not res!1440315) (not e!2209206))))

(declare-fun b!3571254 () Bool)

(assert (=> b!3571254 (= e!2209206 (not (isEmpty!22033 (_1!21838 lt!1223994))))))

(declare-fun b!3571255 () Bool)

(declare-fun e!2209205 () Bool)

(assert (=> b!3571255 (= e!2209205 (= (list!13755 (_2!21838 lt!1223994)) (_2!21841 (lexList!1497 thiss!18206 rules!2135 (list!13755 lt!1223631)))))))

(declare-fun b!3571256 () Bool)

(declare-fun res!1440313 () Bool)

(assert (=> b!3571256 (=> (not res!1440313) (not e!2209205))))

(assert (=> b!3571256 (= res!1440313 (= (list!13756 (_1!21838 lt!1223994)) (_1!21841 (lexList!1497 thiss!18206 rules!2135 (list!13755 lt!1223631)))))))

(declare-fun d!1052616 () Bool)

(assert (=> d!1052616 e!2209205))

(declare-fun res!1440314 () Bool)

(assert (=> d!1052616 (=> (not res!1440314) (not e!2209205))))

(assert (=> d!1052616 (= res!1440314 e!2209204)))

(declare-fun c!618879 () Bool)

(assert (=> d!1052616 (= c!618879 (> (size!28589 (_1!21838 lt!1223994)) 0))))

(assert (=> d!1052616 (= lt!1223994 (lexTailRecV2!1105 thiss!18206 rules!2135 lt!1223631 (BalanceConc!22405 Empty!11395) lt!1223631 (BalanceConc!22407 Empty!11396)))))

(assert (=> d!1052616 (= (lex!2425 thiss!18206 rules!2135 lt!1223631) lt!1223994)))

(declare-fun b!3571257 () Bool)

(assert (=> b!3571257 (= e!2209204 (= (_2!21838 lt!1223994) lt!1223631))))

(assert (= (and d!1052616 c!618879) b!3571253))

(assert (= (and d!1052616 (not c!618879)) b!3571257))

(assert (= (and b!3571253 res!1440315) b!3571254))

(assert (= (and d!1052616 res!1440314) b!3571256))

(assert (= (and b!3571256 res!1440313) b!3571255))

(declare-fun m!4060281 () Bool)

(assert (=> b!3571255 m!4060281))

(declare-fun m!4060283 () Bool)

(assert (=> b!3571255 m!4060283))

(assert (=> b!3571255 m!4060283))

(declare-fun m!4060285 () Bool)

(assert (=> b!3571255 m!4060285))

(declare-fun m!4060287 () Bool)

(assert (=> b!3571254 m!4060287))

(declare-fun m!4060289 () Bool)

(assert (=> b!3571253 m!4060289))

(declare-fun m!4060291 () Bool)

(assert (=> b!3571253 m!4060291))

(declare-fun m!4060293 () Bool)

(assert (=> d!1052616 m!4060293))

(declare-fun m!4060295 () Bool)

(assert (=> d!1052616 m!4060295))

(declare-fun m!4060297 () Bool)

(assert (=> b!3571256 m!4060297))

(assert (=> b!3571256 m!4060283))

(assert (=> b!3571256 m!4060283))

(assert (=> b!3571256 m!4060285))

(assert (=> b!3570397 d!1052616))

(declare-fun d!1052618 () Bool)

(assert (=> d!1052618 (= (seqFromList!4073 lt!1223629) (fromListB!1880 lt!1223629))))

(declare-fun bs!569195 () Bool)

(assert (= bs!569195 d!1052618))

(declare-fun m!4060299 () Bool)

(assert (=> bs!569195 m!4060299))

(assert (=> b!3570397 d!1052618))

(declare-fun d!1052620 () Bool)

(assert (=> d!1052620 (not (matchR!4853 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602))))

(declare-fun lt!1223995 () Unit!53483)

(assert (=> d!1052620 (= lt!1223995 (choose!20773 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602 lt!1223591))))

(assert (=> d!1052620 (validRegex!4694 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(assert (=> d!1052620 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!568 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602 lt!1223591) lt!1223995)))

(declare-fun bs!569196 () Bool)

(assert (= bs!569196 d!1052620))

(assert (=> bs!569196 m!4058723))

(declare-fun m!4060301 () Bool)

(assert (=> bs!569196 m!4060301))

(declare-fun m!4060303 () Bool)

(assert (=> bs!569196 m!4060303))

(assert (=> b!3570418 d!1052620))

(declare-fun b!3571258 () Bool)

(declare-fun res!1440318 () Bool)

(declare-fun e!2209213 () Bool)

(assert (=> b!3571258 (=> res!1440318 e!2209213)))

(assert (=> b!3571258 (= res!1440318 (not ((_ is ElementMatch!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))))))

(declare-fun e!2209210 () Bool)

(assert (=> b!3571258 (= e!2209210 e!2209213)))

(declare-fun b!3571259 () Bool)

(declare-fun res!1440319 () Bool)

(assert (=> b!3571259 (=> res!1440319 e!2209213)))

(declare-fun e!2209209 () Bool)

(assert (=> b!3571259 (= res!1440319 e!2209209)))

(declare-fun res!1440317 () Bool)

(assert (=> b!3571259 (=> (not res!1440317) (not e!2209209))))

(declare-fun lt!1223996 () Bool)

(assert (=> b!3571259 (= res!1440317 lt!1223996)))

(declare-fun b!3571260 () Bool)

(declare-fun res!1440316 () Bool)

(assert (=> b!3571260 (=> (not res!1440316) (not e!2209209))))

(assert (=> b!3571260 (= res!1440316 (isEmpty!22031 (tail!5533 lt!1223602)))))

(declare-fun b!3571261 () Bool)

(declare-fun e!2209207 () Bool)

(assert (=> b!3571261 (= e!2209207 (not (= (head!7439 lt!1223602) (c!618702 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))))

(declare-fun d!1052622 () Bool)

(declare-fun e!2209212 () Bool)

(assert (=> d!1052622 e!2209212))

(declare-fun c!618882 () Bool)

(assert (=> d!1052622 (= c!618882 ((_ is EmptyExpr!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun e!2209208 () Bool)

(assert (=> d!1052622 (= lt!1223996 e!2209208)))

(declare-fun c!618880 () Bool)

(assert (=> d!1052622 (= c!618880 (isEmpty!22031 lt!1223602))))

(assert (=> d!1052622 (validRegex!4694 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))))

(assert (=> d!1052622 (= (matchR!4853 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) lt!1223602) lt!1223996)))

(declare-fun b!3571262 () Bool)

(declare-fun e!2209211 () Bool)

(assert (=> b!3571262 (= e!2209211 e!2209207)))

(declare-fun res!1440323 () Bool)

(assert (=> b!3571262 (=> res!1440323 e!2209207)))

(declare-fun call!258800 () Bool)

(assert (=> b!3571262 (= res!1440323 call!258800)))

(declare-fun b!3571263 () Bool)

(assert (=> b!3571263 (= e!2209210 (not lt!1223996))))

(declare-fun b!3571264 () Bool)

(declare-fun res!1440321 () Bool)

(assert (=> b!3571264 (=> res!1440321 e!2209207)))

(assert (=> b!3571264 (= res!1440321 (not (isEmpty!22031 (tail!5533 lt!1223602))))))

(declare-fun b!3571265 () Bool)

(assert (=> b!3571265 (= e!2209212 (= lt!1223996 call!258800))))

(declare-fun b!3571266 () Bool)

(assert (=> b!3571266 (= e!2209208 (nullable!3538 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun b!3571267 () Bool)

(assert (=> b!3571267 (= e!2209213 e!2209211)))

(declare-fun res!1440320 () Bool)

(assert (=> b!3571267 (=> (not res!1440320) (not e!2209211))))

(assert (=> b!3571267 (= res!1440320 (not lt!1223996))))

(declare-fun bm!258795 () Bool)

(assert (=> bm!258795 (= call!258800 (isEmpty!22031 lt!1223602))))

(declare-fun b!3571268 () Bool)

(assert (=> b!3571268 (= e!2209208 (matchR!4853 (derivativeStep!3091 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))) (head!7439 lt!1223602)) (tail!5533 lt!1223602)))))

(declare-fun b!3571269 () Bool)

(assert (=> b!3571269 (= e!2209209 (= (head!7439 lt!1223602) (c!618702 (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))))))

(declare-fun b!3571270 () Bool)

(assert (=> b!3571270 (= e!2209212 e!2209210)))

(declare-fun c!618881 () Bool)

(assert (=> b!3571270 (= c!618881 ((_ is EmptyLang!10269) (regex!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(declare-fun b!3571271 () Bool)

(declare-fun res!1440322 () Bool)

(assert (=> b!3571271 (=> (not res!1440322) (not e!2209209))))

(assert (=> b!3571271 (= res!1440322 (not call!258800))))

(assert (= (and d!1052622 c!618880) b!3571266))

(assert (= (and d!1052622 (not c!618880)) b!3571268))

(assert (= (and d!1052622 c!618882) b!3571265))

(assert (= (and d!1052622 (not c!618882)) b!3571270))

(assert (= (and b!3571270 c!618881) b!3571263))

(assert (= (and b!3571270 (not c!618881)) b!3571258))

(assert (= (and b!3571258 (not res!1440318)) b!3571259))

(assert (= (and b!3571259 res!1440317) b!3571271))

(assert (= (and b!3571271 res!1440322) b!3571260))

(assert (= (and b!3571260 res!1440316) b!3571269))

(assert (= (and b!3571259 (not res!1440319)) b!3571267))

(assert (= (and b!3571267 res!1440320) b!3571262))

(assert (= (and b!3571262 (not res!1440323)) b!3571264))

(assert (= (and b!3571264 (not res!1440321)) b!3571261))

(assert (= (or b!3571265 b!3571262 b!3571271) bm!258795))

(assert (=> b!3571261 m!4058785))

(assert (=> b!3571260 m!4060221))

(assert (=> b!3571260 m!4060221))

(assert (=> b!3571260 m!4060223))

(assert (=> b!3571268 m!4058785))

(assert (=> b!3571268 m!4058785))

(declare-fun m!4060305 () Bool)

(assert (=> b!3571268 m!4060305))

(assert (=> b!3571268 m!4060221))

(assert (=> b!3571268 m!4060305))

(assert (=> b!3571268 m!4060221))

(declare-fun m!4060307 () Bool)

(assert (=> b!3571268 m!4060307))

(assert (=> b!3571269 m!4058785))

(assert (=> d!1052622 m!4060229))

(assert (=> d!1052622 m!4060303))

(assert (=> bm!258795 m!4060229))

(assert (=> b!3571264 m!4060221))

(assert (=> b!3571264 m!4060221))

(assert (=> b!3571264 m!4060223))

(declare-fun m!4060309 () Bool)

(assert (=> b!3571266 m!4060309))

(assert (=> b!3570418 d!1052622))

(declare-fun d!1052624 () Bool)

(assert (=> d!1052624 (= (isDefined!5934 lt!1223621) (not (isEmpty!22036 lt!1223621)))))

(declare-fun bs!569197 () Bool)

(assert (= bs!569197 d!1052624))

(declare-fun m!4060311 () Bool)

(assert (=> bs!569197 m!4060311))

(assert (=> b!3570417 d!1052624))

(declare-fun b!3571272 () Bool)

(declare-fun res!1440328 () Bool)

(declare-fun e!2209215 () Bool)

(assert (=> b!3571272 (=> (not res!1440328) (not e!2209215))))

(declare-fun lt!1223999 () Option!7689)

(assert (=> b!3571272 (= res!1440328 (= (++!9323 (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223999)))) (_2!21839 (get!12070 lt!1223999))) lt!1223614))))

(declare-fun b!3571273 () Bool)

(declare-fun res!1440325 () Bool)

(assert (=> b!3571273 (=> (not res!1440325) (not e!2209215))))

(assert (=> b!3571273 (= res!1440325 (matchR!4853 (regex!5510 (rule!8204 (_1!21839 (get!12070 lt!1223999)))) (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223999))))))))

(declare-fun b!3571274 () Bool)

(declare-fun res!1440327 () Bool)

(assert (=> b!3571274 (=> (not res!1440327) (not e!2209215))))

(assert (=> b!3571274 (= res!1440327 (< (size!28588 (_2!21839 (get!12070 lt!1223999))) (size!28588 lt!1223614)))))

(declare-fun b!3571275 () Bool)

(declare-fun e!2209214 () Option!7689)

(declare-fun lt!1224001 () Option!7689)

(declare-fun lt!1224000 () Option!7689)

(assert (=> b!3571275 (= e!2209214 (ite (and ((_ is None!7688) lt!1224001) ((_ is None!7688) lt!1224000)) None!7688 (ite ((_ is None!7688) lt!1224000) lt!1224001 (ite ((_ is None!7688) lt!1224001) lt!1224000 (ite (>= (size!28587 (_1!21839 (v!37294 lt!1224001))) (size!28587 (_1!21839 (v!37294 lt!1224000)))) lt!1224001 lt!1224000)))))))

(declare-fun call!258801 () Option!7689)

(assert (=> b!3571275 (= lt!1224001 call!258801)))

(assert (=> b!3571275 (= lt!1224000 (maxPrefix!2639 thiss!18206 (t!289017 rules!2135) lt!1223614))))

(declare-fun d!1052626 () Bool)

(declare-fun e!2209216 () Bool)

(assert (=> d!1052626 e!2209216))

(declare-fun res!1440329 () Bool)

(assert (=> d!1052626 (=> res!1440329 e!2209216)))

(assert (=> d!1052626 (= res!1440329 (isEmpty!22036 lt!1223999))))

(assert (=> d!1052626 (= lt!1223999 e!2209214)))

(declare-fun c!618883 () Bool)

(assert (=> d!1052626 (= c!618883 (and ((_ is Cons!37500) rules!2135) ((_ is Nil!37500) (t!289017 rules!2135))))))

(declare-fun lt!1223998 () Unit!53483)

(declare-fun lt!1223997 () Unit!53483)

(assert (=> d!1052626 (= lt!1223998 lt!1223997)))

(assert (=> d!1052626 (isPrefix!2893 lt!1223614 lt!1223614)))

(assert (=> d!1052626 (= lt!1223997 (lemmaIsPrefixRefl!1852 lt!1223614 lt!1223614))))

(assert (=> d!1052626 (rulesValidInductive!1902 thiss!18206 rules!2135)))

(assert (=> d!1052626 (= (maxPrefix!2639 thiss!18206 rules!2135 lt!1223614) lt!1223999)))

(declare-fun b!3571276 () Bool)

(assert (=> b!3571276 (= e!2209216 e!2209215)))

(declare-fun res!1440330 () Bool)

(assert (=> b!3571276 (=> (not res!1440330) (not e!2209215))))

(assert (=> b!3571276 (= res!1440330 (isDefined!5934 lt!1223999))))

(declare-fun b!3571277 () Bool)

(assert (=> b!3571277 (= e!2209215 (contains!7095 rules!2135 (rule!8204 (_1!21839 (get!12070 lt!1223999)))))))

(declare-fun b!3571278 () Bool)

(declare-fun res!1440326 () Bool)

(assert (=> b!3571278 (=> (not res!1440326) (not e!2209215))))

(assert (=> b!3571278 (= res!1440326 (= (value!177495 (_1!21839 (get!12070 lt!1223999))) (apply!9013 (transformation!5510 (rule!8204 (_1!21839 (get!12070 lt!1223999)))) (seqFromList!4073 (originalCharacters!6224 (_1!21839 (get!12070 lt!1223999)))))))))

(declare-fun b!3571279 () Bool)

(assert (=> b!3571279 (= e!2209214 call!258801)))

(declare-fun bm!258796 () Bool)

(assert (=> bm!258796 (= call!258801 (maxPrefixOneRule!1806 thiss!18206 (h!42920 rules!2135) lt!1223614))))

(declare-fun b!3571280 () Bool)

(declare-fun res!1440324 () Bool)

(assert (=> b!3571280 (=> (not res!1440324) (not e!2209215))))

(assert (=> b!3571280 (= res!1440324 (= (list!13755 (charsOf!3524 (_1!21839 (get!12070 lt!1223999)))) (originalCharacters!6224 (_1!21839 (get!12070 lt!1223999)))))))

(assert (= (and d!1052626 c!618883) b!3571279))

(assert (= (and d!1052626 (not c!618883)) b!3571275))

(assert (= (or b!3571279 b!3571275) bm!258796))

(assert (= (and d!1052626 (not res!1440329)) b!3571276))

(assert (= (and b!3571276 res!1440330) b!3571280))

(assert (= (and b!3571280 res!1440324) b!3571274))

(assert (= (and b!3571274 res!1440327) b!3571272))

(assert (= (and b!3571272 res!1440328) b!3571278))

(assert (= (and b!3571278 res!1440326) b!3571273))

(assert (= (and b!3571273 res!1440325) b!3571277))

(declare-fun m!4060313 () Bool)

(assert (=> b!3571276 m!4060313))

(declare-fun m!4060315 () Bool)

(assert (=> b!3571280 m!4060315))

(declare-fun m!4060317 () Bool)

(assert (=> b!3571280 m!4060317))

(assert (=> b!3571280 m!4060317))

(declare-fun m!4060319 () Bool)

(assert (=> b!3571280 m!4060319))

(assert (=> b!3571274 m!4060315))

(declare-fun m!4060321 () Bool)

(assert (=> b!3571274 m!4060321))

(assert (=> b!3571274 m!4059779))

(assert (=> b!3571273 m!4060315))

(assert (=> b!3571273 m!4060317))

(assert (=> b!3571273 m!4060317))

(assert (=> b!3571273 m!4060319))

(assert (=> b!3571273 m!4060319))

(declare-fun m!4060323 () Bool)

(assert (=> b!3571273 m!4060323))

(assert (=> b!3571277 m!4060315))

(declare-fun m!4060325 () Bool)

(assert (=> b!3571277 m!4060325))

(assert (=> b!3571278 m!4060315))

(declare-fun m!4060327 () Bool)

(assert (=> b!3571278 m!4060327))

(assert (=> b!3571278 m!4060327))

(declare-fun m!4060329 () Bool)

(assert (=> b!3571278 m!4060329))

(declare-fun m!4060331 () Bool)

(assert (=> bm!258796 m!4060331))

(declare-fun m!4060333 () Bool)

(assert (=> b!3571275 m!4060333))

(declare-fun m!4060335 () Bool)

(assert (=> d!1052626 m!4060335))

(declare-fun m!4060337 () Bool)

(assert (=> d!1052626 m!4060337))

(declare-fun m!4060339 () Bool)

(assert (=> d!1052626 m!4060339))

(assert (=> d!1052626 m!4059145))

(assert (=> b!3571272 m!4060315))

(assert (=> b!3571272 m!4060317))

(assert (=> b!3571272 m!4060317))

(assert (=> b!3571272 m!4060319))

(assert (=> b!3571272 m!4060319))

(declare-fun m!4060341 () Bool)

(assert (=> b!3571272 m!4060341))

(assert (=> b!3570417 d!1052626))

(declare-fun d!1052628 () Bool)

(assert (=> d!1052628 (= (isEmpty!22031 lt!1223630) ((_ is Nil!37499) lt!1223630))))

(assert (=> b!3570400 d!1052628))

(declare-fun d!1052630 () Bool)

(declare-fun lt!1224002 () Bool)

(assert (=> d!1052630 (= lt!1224002 (isEmpty!22031 (list!13755 (_2!21838 lt!1223593))))))

(assert (=> d!1052630 (= lt!1224002 (isEmpty!22034 (c!618703 (_2!21838 lt!1223593))))))

(assert (=> d!1052630 (= (isEmpty!22030 (_2!21838 lt!1223593)) lt!1224002)))

(declare-fun bs!569198 () Bool)

(assert (= bs!569198 d!1052630))

(declare-fun m!4060343 () Bool)

(assert (=> bs!569198 m!4060343))

(assert (=> bs!569198 m!4060343))

(declare-fun m!4060345 () Bool)

(assert (=> bs!569198 m!4060345))

(declare-fun m!4060347 () Bool)

(assert (=> bs!569198 m!4060347))

(assert (=> b!3570421 d!1052630))

(declare-fun d!1052632 () Bool)

(assert (=> d!1052632 (= (list!13755 (charsOf!3524 (h!42921 tokens!494))) (list!13759 (c!618703 (charsOf!3524 (h!42921 tokens!494)))))))

(declare-fun bs!569199 () Bool)

(assert (= bs!569199 d!1052632))

(declare-fun m!4060349 () Bool)

(assert (=> bs!569199 m!4060349))

(assert (=> b!3570399 d!1052632))

(declare-fun d!1052634 () Bool)

(declare-fun lt!1224003 () BalanceConc!22404)

(assert (=> d!1052634 (= (list!13755 lt!1224003) (originalCharacters!6224 (h!42921 tokens!494)))))

(assert (=> d!1052634 (= lt!1224003 (dynLambda!16106 (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (value!177495 (h!42921 tokens!494))))))

(assert (=> d!1052634 (= (charsOf!3524 (h!42921 tokens!494)) lt!1224003)))

(declare-fun b_lambda!105265 () Bool)

(assert (=> (not b_lambda!105265) (not d!1052634)))

(assert (=> d!1052634 t!289077))

(declare-fun b_and!257007 () Bool)

(assert (= b_and!257001 (and (=> t!289077 result!247976) b_and!257007)))

(assert (=> d!1052634 t!289079))

(declare-fun b_and!257009 () Bool)

(assert (= b_and!257003 (and (=> t!289079 result!247978) b_and!257009)))

(assert (=> d!1052634 t!289081))

(declare-fun b_and!257011 () Bool)

(assert (= b_and!257005 (and (=> t!289081 result!247980) b_and!257011)))

(declare-fun m!4060351 () Bool)

(assert (=> d!1052634 m!4060351))

(assert (=> d!1052634 m!4059983))

(assert (=> b!3570399 d!1052634))

(assert (=> b!3570398 d!1052612))

(declare-fun d!1052636 () Bool)

(declare-fun res!1440335 () Bool)

(declare-fun e!2209219 () Bool)

(assert (=> d!1052636 (=> (not res!1440335) (not e!2209219))))

(assert (=> d!1052636 (= res!1440335 (validRegex!4694 (regex!5510 (rule!8204 separatorToken!241))))))

(assert (=> d!1052636 (= (ruleValid!1794 thiss!18206 (rule!8204 separatorToken!241)) e!2209219)))

(declare-fun b!3571285 () Bool)

(declare-fun res!1440336 () Bool)

(assert (=> b!3571285 (=> (not res!1440336) (not e!2209219))))

(assert (=> b!3571285 (= res!1440336 (not (nullable!3538 (regex!5510 (rule!8204 separatorToken!241)))))))

(declare-fun b!3571286 () Bool)

(assert (=> b!3571286 (= e!2209219 (not (= (tag!6168 (rule!8204 separatorToken!241)) (String!42035 ""))))))

(assert (= (and d!1052636 res!1440335) b!3571285))

(assert (= (and b!3571285 res!1440336) b!3571286))

(assert (=> d!1052636 m!4060267))

(assert (=> b!3571285 m!4060273))

(assert (=> b!3570398 d!1052636))

(declare-fun d!1052638 () Bool)

(assert (=> d!1052638 (ruleValid!1794 thiss!18206 (rule!8204 separatorToken!241))))

(declare-fun lt!1224006 () Unit!53483)

(declare-fun choose!20774 (LexerInterface!5099 Rule!10820 List!37624) Unit!53483)

(assert (=> d!1052638 (= lt!1224006 (choose!20774 thiss!18206 (rule!8204 separatorToken!241) rules!2135))))

(assert (=> d!1052638 (contains!7095 rules!2135 (rule!8204 separatorToken!241))))

(assert (=> d!1052638 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!960 thiss!18206 (rule!8204 separatorToken!241) rules!2135) lt!1224006)))

(declare-fun bs!569200 () Bool)

(assert (= bs!569200 d!1052638))

(assert (=> bs!569200 m!4058693))

(declare-fun m!4060353 () Bool)

(assert (=> bs!569200 m!4060353))

(assert (=> bs!569200 m!4058753))

(assert (=> b!3570398 d!1052638))

(declare-fun b!3571300 () Bool)

(declare-fun e!2209222 () Bool)

(declare-fun tp!1093675 () Bool)

(declare-fun tp!1093679 () Bool)

(assert (=> b!3571300 (= e!2209222 (and tp!1093675 tp!1093679))))

(declare-fun b!3571297 () Bool)

(declare-fun tp_is_empty!17655 () Bool)

(assert (=> b!3571297 (= e!2209222 tp_is_empty!17655)))

(declare-fun b!3571298 () Bool)

(declare-fun tp!1093677 () Bool)

(declare-fun tp!1093678 () Bool)

(assert (=> b!3571298 (= e!2209222 (and tp!1093677 tp!1093678))))

(declare-fun b!3571299 () Bool)

(declare-fun tp!1093676 () Bool)

(assert (=> b!3571299 (= e!2209222 tp!1093676)))

(assert (=> b!3570427 (= tp!1093646 e!2209222)))

(assert (= (and b!3570427 ((_ is ElementMatch!10269) (regex!5510 (rule!8204 separatorToken!241)))) b!3571297))

(assert (= (and b!3570427 ((_ is Concat!16009) (regex!5510 (rule!8204 separatorToken!241)))) b!3571298))

(assert (= (and b!3570427 ((_ is Star!10269) (regex!5510 (rule!8204 separatorToken!241)))) b!3571299))

(assert (= (and b!3570427 ((_ is Union!10269) (regex!5510 (rule!8204 separatorToken!241)))) b!3571300))

(declare-fun b!3571305 () Bool)

(declare-fun e!2209225 () Bool)

(declare-fun tp!1093682 () Bool)

(assert (=> b!3571305 (= e!2209225 (and tp_is_empty!17655 tp!1093682))))

(assert (=> b!3570395 (= tp!1093644 e!2209225)))

(assert (= (and b!3570395 ((_ is Cons!37499) (originalCharacters!6224 (h!42921 tokens!494)))) b!3571305))

(declare-fun b!3571309 () Bool)

(declare-fun e!2209226 () Bool)

(declare-fun tp!1093683 () Bool)

(declare-fun tp!1093687 () Bool)

(assert (=> b!3571309 (= e!2209226 (and tp!1093683 tp!1093687))))

(declare-fun b!3571306 () Bool)

(assert (=> b!3571306 (= e!2209226 tp_is_empty!17655)))

(declare-fun b!3571307 () Bool)

(declare-fun tp!1093685 () Bool)

(declare-fun tp!1093686 () Bool)

(assert (=> b!3571307 (= e!2209226 (and tp!1093685 tp!1093686))))

(declare-fun b!3571308 () Bool)

(declare-fun tp!1093684 () Bool)

(assert (=> b!3571308 (= e!2209226 tp!1093684)))

(assert (=> b!3570416 (= tp!1093647 e!2209226)))

(assert (= (and b!3570416 ((_ is ElementMatch!10269) (regex!5510 (h!42920 rules!2135)))) b!3571306))

(assert (= (and b!3570416 ((_ is Concat!16009) (regex!5510 (h!42920 rules!2135)))) b!3571307))

(assert (= (and b!3570416 ((_ is Star!10269) (regex!5510 (h!42920 rules!2135)))) b!3571308))

(assert (= (and b!3570416 ((_ is Union!10269) (regex!5510 (h!42920 rules!2135)))) b!3571309))

(declare-fun b!3571310 () Bool)

(declare-fun e!2209227 () Bool)

(declare-fun tp!1093688 () Bool)

(assert (=> b!3571310 (= e!2209227 (and tp_is_empty!17655 tp!1093688))))

(assert (=> b!3570426 (= tp!1093648 e!2209227)))

(assert (= (and b!3570426 ((_ is Cons!37499) (originalCharacters!6224 separatorToken!241))) b!3571310))

(declare-fun b!3571321 () Bool)

(declare-fun b_free!91421 () Bool)

(declare-fun b_next!92125 () Bool)

(assert (=> b!3571321 (= b_free!91421 (not b_next!92125))))

(declare-fun tb!203369 () Bool)

(declare-fun t!289088 () Bool)

(assert (=> (and b!3571321 (= (toValue!7778 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289088) tb!203369))

(declare-fun result!247988 () Bool)

(assert (= result!247988 result!247940))

(assert (=> d!1052384 t!289088))

(declare-fun tb!203371 () Bool)

(declare-fun t!289090 () Bool)

(assert (=> (and b!3571321 (= (toValue!7778 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289090) tb!203371))

(declare-fun result!247990 () Bool)

(assert (= result!247990 result!247948))

(assert (=> d!1052386 t!289090))

(declare-fun tp!1093698 () Bool)

(declare-fun b_and!257013 () Bool)

(assert (=> b!3571321 (= tp!1093698 (and (=> t!289088 result!247988) (=> t!289090 result!247990) b_and!257013))))

(declare-fun b_free!91423 () Bool)

(declare-fun b_next!92127 () Bool)

(assert (=> b!3571321 (= b_free!91423 (not b_next!92127))))

(declare-fun tb!203373 () Bool)

(declare-fun t!289092 () Bool)

(assert (=> (and b!3571321 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289092) tb!203373))

(declare-fun result!247992 () Bool)

(assert (= result!247992 result!247976))

(assert (=> b!3571114 t!289092))

(declare-fun t!289094 () Bool)

(declare-fun tb!203375 () Bool)

(assert (=> (and b!3571321 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241)))) t!289094) tb!203375))

(declare-fun result!247994 () Bool)

(assert (= result!247994 result!247962))

(assert (=> d!1052484 t!289094))

(assert (=> d!1052634 t!289092))

(assert (=> b!3571227 t!289094))

(declare-fun t!289096 () Bool)

(declare-fun tb!203377 () Bool)

(assert (=> (and b!3571321 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289096) tb!203377))

(declare-fun result!247996 () Bool)

(assert (= result!247996 result!247970))

(assert (=> d!1052496 t!289096))

(declare-fun tp!1093700 () Bool)

(declare-fun b_and!257015 () Bool)

(assert (=> b!3571321 (= tp!1093700 (and (=> t!289096 result!247996) (=> t!289092 result!247992) (=> t!289094 result!247994) b_and!257015))))

(declare-fun e!2209238 () Bool)

(assert (=> b!3571321 (= e!2209238 (and tp!1093698 tp!1093700))))

(declare-fun e!2209236 () Bool)

(declare-fun tp!1093697 () Bool)

(declare-fun b!3571320 () Bool)

(assert (=> b!3571320 (= e!2209236 (and tp!1093697 (inv!50769 (tag!6168 (h!42920 (t!289017 rules!2135)))) (inv!50773 (transformation!5510 (h!42920 (t!289017 rules!2135)))) e!2209238))))

(declare-fun b!3571319 () Bool)

(declare-fun e!2209237 () Bool)

(declare-fun tp!1093699 () Bool)

(assert (=> b!3571319 (= e!2209237 (and e!2209236 tp!1093699))))

(assert (=> b!3570393 (= tp!1093643 e!2209237)))

(assert (= b!3571320 b!3571321))

(assert (= b!3571319 b!3571320))

(assert (= (and b!3570393 ((_ is Cons!37500) (t!289017 rules!2135))) b!3571319))

(declare-fun m!4060355 () Bool)

(assert (=> b!3571320 m!4060355))

(declare-fun m!4060357 () Bool)

(assert (=> b!3571320 m!4060357))

(declare-fun b!3571324 () Bool)

(declare-fun e!2209242 () Bool)

(assert (=> b!3571324 (= e!2209242 true)))

(declare-fun b!3571323 () Bool)

(declare-fun e!2209241 () Bool)

(assert (=> b!3571323 (= e!2209241 e!2209242)))

(declare-fun b!3571322 () Bool)

(declare-fun e!2209240 () Bool)

(assert (=> b!3571322 (= e!2209240 e!2209241)))

(assert (=> b!3570440 e!2209240))

(assert (= b!3571323 b!3571324))

(assert (= b!3571322 b!3571323))

(assert (= (and b!3570440 ((_ is Cons!37500) (t!289017 rules!2135))) b!3571322))

(assert (=> b!3571324 (< (dynLambda!16099 order!20333 (toValue!7778 (transformation!5510 (h!42920 (t!289017 rules!2135))))) (dynLambda!16100 order!20335 lambda!123451))))

(assert (=> b!3571324 (< (dynLambda!16101 order!20337 (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135))))) (dynLambda!16100 order!20335 lambda!123451))))

(declare-fun b!3571328 () Bool)

(declare-fun e!2209243 () Bool)

(declare-fun tp!1093701 () Bool)

(declare-fun tp!1093705 () Bool)

(assert (=> b!3571328 (= e!2209243 (and tp!1093701 tp!1093705))))

(declare-fun b!3571325 () Bool)

(assert (=> b!3571325 (= e!2209243 tp_is_empty!17655)))

(declare-fun b!3571326 () Bool)

(declare-fun tp!1093703 () Bool)

(declare-fun tp!1093704 () Bool)

(assert (=> b!3571326 (= e!2209243 (and tp!1093703 tp!1093704))))

(declare-fun b!3571327 () Bool)

(declare-fun tp!1093702 () Bool)

(assert (=> b!3571327 (= e!2209243 tp!1093702)))

(assert (=> b!3570411 (= tp!1093653 e!2209243)))

(assert (= (and b!3570411 ((_ is ElementMatch!10269) (regex!5510 (rule!8204 (h!42921 tokens!494))))) b!3571325))

(assert (= (and b!3570411 ((_ is Concat!16009) (regex!5510 (rule!8204 (h!42921 tokens!494))))) b!3571326))

(assert (= (and b!3570411 ((_ is Star!10269) (regex!5510 (rule!8204 (h!42921 tokens!494))))) b!3571327))

(assert (= (and b!3570411 ((_ is Union!10269) (regex!5510 (rule!8204 (h!42921 tokens!494))))) b!3571328))

(declare-fun b!3571342 () Bool)

(declare-fun b_free!91425 () Bool)

(declare-fun b_next!92129 () Bool)

(assert (=> b!3571342 (= b_free!91425 (not b_next!92129))))

(declare-fun t!289098 () Bool)

(declare-fun tb!203379 () Bool)

(assert (=> (and b!3571342 (= (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289098) tb!203379))

(declare-fun result!248000 () Bool)

(assert (= result!248000 result!247940))

(assert (=> d!1052384 t!289098))

(declare-fun t!289100 () Bool)

(declare-fun tb!203381 () Bool)

(assert (=> (and b!3571342 (= (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289100) tb!203381))

(declare-fun result!248002 () Bool)

(assert (= result!248002 result!247948))

(assert (=> d!1052386 t!289100))

(declare-fun b_and!257017 () Bool)

(declare-fun tp!1093716 () Bool)

(assert (=> b!3571342 (= tp!1093716 (and (=> t!289098 result!248000) (=> t!289100 result!248002) b_and!257017))))

(declare-fun b_free!91427 () Bool)

(declare-fun b_next!92131 () Bool)

(assert (=> b!3571342 (= b_free!91427 (not b_next!92131))))

(declare-fun t!289102 () Bool)

(declare-fun tb!203383 () Bool)

(assert (=> (and b!3571342 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494))))) t!289102) tb!203383))

(declare-fun result!248004 () Bool)

(assert (= result!248004 result!247976))

(assert (=> b!3571114 t!289102))

(declare-fun t!289104 () Bool)

(declare-fun tb!203385 () Bool)

(assert (=> (and b!3571342 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241)))) t!289104) tb!203385))

(declare-fun result!248006 () Bool)

(assert (= result!248006 result!247962))

(assert (=> d!1052484 t!289104))

(assert (=> d!1052634 t!289102))

(assert (=> b!3571227 t!289104))

(declare-fun t!289106 () Bool)

(declare-fun tb!203387 () Bool)

(assert (=> (and b!3571342 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494)))))) t!289106) tb!203387))

(declare-fun result!248008 () Bool)

(assert (= result!248008 result!247970))

(assert (=> d!1052496 t!289106))

(declare-fun tp!1093718 () Bool)

(declare-fun b_and!257019 () Bool)

(assert (=> b!3571342 (= tp!1093718 (and (=> t!289102 result!248004) (=> t!289106 result!248008) (=> t!289104 result!248006) b_and!257019))))

(declare-fun e!2209260 () Bool)

(assert (=> b!3570410 (= tp!1093654 e!2209260)))

(declare-fun b!3571339 () Bool)

(declare-fun e!2209261 () Bool)

(declare-fun tp!1093717 () Bool)

(assert (=> b!3571339 (= e!2209260 (and (inv!50772 (h!42921 (t!289018 tokens!494))) e!2209261 tp!1093717))))

(declare-fun b!3571340 () Bool)

(declare-fun tp!1093719 () Bool)

(declare-fun e!2209257 () Bool)

(assert (=> b!3571340 (= e!2209261 (and (inv!21 (value!177495 (h!42921 (t!289018 tokens!494)))) e!2209257 tp!1093719))))

(declare-fun b!3571341 () Bool)

(declare-fun tp!1093720 () Bool)

(declare-fun e!2209256 () Bool)

(assert (=> b!3571341 (= e!2209257 (and tp!1093720 (inv!50769 (tag!6168 (rule!8204 (h!42921 (t!289018 tokens!494))))) (inv!50773 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) e!2209256))))

(assert (=> b!3571342 (= e!2209256 (and tp!1093716 tp!1093718))))

(assert (= b!3571341 b!3571342))

(assert (= b!3571340 b!3571341))

(assert (= b!3571339 b!3571340))

(assert (= (and b!3570410 ((_ is Cons!37501) (t!289018 tokens!494))) b!3571339))

(declare-fun m!4060359 () Bool)

(assert (=> b!3571339 m!4060359))

(declare-fun m!4060361 () Bool)

(assert (=> b!3571340 m!4060361))

(declare-fun m!4060363 () Bool)

(assert (=> b!3571341 m!4060363))

(declare-fun m!4060365 () Bool)

(assert (=> b!3571341 m!4060365))

(declare-fun b_lambda!105267 () Bool)

(assert (= b_lambda!105263 (or (and b!3570412 b_free!91415) (and b!3571321 b_free!91423 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) (and b!3570419 b_free!91411 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) (and b!3571342 b_free!91427 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) (and b!3570404 b_free!91419 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) b_lambda!105267)))

(declare-fun b_lambda!105269 () Bool)

(assert (= b_lambda!105265 (or (and b!3570412 b_free!91415 (= (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3570419 b_free!91411) (and b!3571342 b_free!91427 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3571321 b_free!91423 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3570404 b_free!91419 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) b_lambda!105269)))

(declare-fun b_lambda!105271 () Bool)

(assert (= b_lambda!105235 (or b!3570384 b_lambda!105271)))

(declare-fun bs!569201 () Bool)

(declare-fun d!1052640 () Bool)

(assert (= bs!569201 (and d!1052640 b!3570384)))

(assert (=> bs!569201 (= (dynLambda!16102 lambda!123451 (h!42921 (t!289018 tokens!494))) (rulesProduceIndividualToken!2591 thiss!18206 rules!2135 (h!42921 (t!289018 tokens!494))))))

(assert (=> bs!569201 m!4058779))

(assert (=> d!1052300 d!1052640))

(declare-fun b_lambda!105273 () Bool)

(assert (= b_lambda!105261 (or (and b!3570412 b_free!91415 (= (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3570419 b_free!91411) (and b!3571342 b_free!91427 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3571321 b_free!91423 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3570404 b_free!91419 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) b_lambda!105273)))

(declare-fun b_lambda!105275 () Bool)

(assert (= b_lambda!105255 (or (and b!3571342 b_free!91427) (and b!3570412 b_free!91415 (= (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) (and b!3570419 b_free!91411 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) (and b!3570404 b_free!91419 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) (and b!3571321 b_free!91423 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) b_lambda!105275)))

(declare-fun b_lambda!105277 () Bool)

(assert (= b_lambda!105253 (or (and b!3570412 b_free!91415) (and b!3571321 b_free!91423 (= (toChars!7637 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) (and b!3570419 b_free!91411 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) (and b!3571342 b_free!91427 (= (toChars!7637 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) (and b!3570404 b_free!91419 (= (toChars!7637 (transformation!5510 (h!42920 rules!2135))) (toChars!7637 (transformation!5510 (rule!8204 separatorToken!241))))) b_lambda!105277)))

(declare-fun b_lambda!105279 () Bool)

(assert (= b_lambda!105243 (or (and b!3571342 b_free!91425 (= (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3570404 b_free!91417 (= (toValue!7778 (transformation!5510 (h!42920 rules!2135))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3570419 b_free!91409) (and b!3571321 b_free!91421 (= (toValue!7778 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) (and b!3570412 b_free!91413 (= (toValue!7778 (transformation!5510 (rule!8204 separatorToken!241))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))))) b_lambda!105279)))

(declare-fun b_lambda!105281 () Bool)

(assert (= b_lambda!105241 (or (and b!3570404 b_free!91417 (= (toValue!7778 (transformation!5510 (h!42920 rules!2135))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) (and b!3570419 b_free!91409 (= (toValue!7778 (transformation!5510 (rule!8204 (h!42921 tokens!494)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) (and b!3571342 b_free!91425) (and b!3570412 b_free!91413 (= (toValue!7778 (transformation!5510 (rule!8204 separatorToken!241))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) (and b!3571321 b_free!91421 (= (toValue!7778 (transformation!5510 (h!42920 (t!289017 rules!2135)))) (toValue!7778 (transformation!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))) b_lambda!105281)))

(declare-fun b_lambda!105283 () Bool)

(assert (= b_lambda!105227 (or b!3570424 b_lambda!105283)))

(declare-fun bs!569202 () Bool)

(declare-fun d!1052642 () Bool)

(assert (= bs!569202 (and d!1052642 b!3570424)))

(assert (=> bs!569202 (= (dynLambda!16102 lambda!123450 (h!42921 tokens!494)) (not (isSeparator!5510 (rule!8204 (h!42921 tokens!494)))))))

(assert (=> b!3570449 d!1052642))

(declare-fun b_lambda!105285 () Bool)

(assert (= b_lambda!105259 (or b!3570424 b_lambda!105285)))

(assert (=> d!1052518 d!1052642))

(declare-fun b_lambda!105287 () Bool)

(assert (= b_lambda!105257 (or b!3570424 b_lambda!105287)))

(declare-fun bs!569203 () Bool)

(declare-fun d!1052644 () Bool)

(assert (= bs!569203 (and d!1052644 b!3570424)))

(assert (=> bs!569203 (= (dynLambda!16102 lambda!123450 (h!42921 (t!289018 tokens!494))) (not (isSeparator!5510 (rule!8204 (h!42921 (t!289018 tokens!494))))))))

(assert (=> d!1052516 d!1052644))

(check-sat (not b!3570625) (not b!3571221) (not b!3571299) (not b_lambda!105271) (not b!3571339) (not b!3571308) (not b!3571076) b_and!257011 (not d!1052588) (not d!1052502) (not d!1052292) (not d!1052374) (not b!3571307) (not b!3571260) (not b!3571039) (not b!3571096) (not d!1052622) (not b!3570932) (not bm!258796) (not d!1052612) b_and!257015 (not b!3570854) (not b!3571309) (not bm!258774) (not b!3570629) (not b!3570860) (not b_lambda!105267) (not b!3571234) (not b!3571250) (not b_lambda!105287) (not d!1052410) (not d!1052290) (not b!3571072) (not b!3570483) (not d!1052294) (not b!3571266) (not d!1052376) (not d!1052248) (not b!3571227) (not b!3570938) (not b!3571231) (not d!1052528) (not b!3570597) (not b!3571245) (not d!1052512) (not b!3570604) (not b_next!92127) (not d!1052632) (not d!1052498) (not b!3570858) (not b!3570912) (not b!3571280) (not b!3571032) (not d!1052380) (not b!3571215) (not tb!203333) (not d!1052348) (not d!1052638) (not b!3570482) (not bm!258794) (not d!1052252) (not b!3571322) (not b!3570940) (not b!3571223) (not d!1052506) (not d!1052300) (not b!3570859) (not b!3570464) (not b!3570489) (not b!3571212) (not b!3571228) (not b!3571320) (not d!1052242) (not d!1052230) (not d!1052496) (not b!3571006) (not b!3570794) (not b!3571273) (not d!1052520) (not b!3571216) (not b!3570463) (not d!1052430) (not d!1052636) (not b!3571269) (not b!3571254) (not b!3571256) b_and!257013 (not d!1052256) (not d!1052536) (not b!3571327) (not b!3570985) (not b!3571092) (not b!3570492) (not d!1052296) (not bm!258755) (not d!1052260) (not b!3570598) (not b!3570796) (not d!1052428) (not d!1052500) (not b_next!92123) (not b!3570919) (not b!3571028) (not bm!258754) (not b_next!92121) (not b!3571104) (not d!1052250) (not b!3570748) (not b_lambda!105273) (not b!3570600) (not b!3571224) (not d!1052338) (not b!3571073) (not b!3571268) (not d!1052354) (not b_next!92119) (not bs!569201) (not b!3571037) (not b!3571089) (not b!3571201) (not b!3571202) (not d!1052538) (not b!3570966) (not d!1052254) (not b!3570988) (not b!3570602) (not b!3570471) (not d!1052350) (not d!1052322) (not b!3571310) (not b!3571025) (not b!3570958) (not b!3571340) (not d!1052626) (not b!3570856) (not b_next!92129) (not b!3570487) (not d!1052342) (not b!3571241) (not b!3571040) (not d!1052298) (not b!3571232) (not d!1052412) (not b!3571261) (not d!1052534) (not tb!203351) (not d!1052624) (not b!3571080) (not d!1052398) (not b!3571022) (not d!1052616) (not b!3570623) b_and!256967 b_and!257017 (not bm!258762) (not b!3571300) (not b!3571272) (not b!3570477) (not b!3570916) (not b!3571326) (not b!3571236) (not b!3570628) (not d!1052614) (not b!3571341) (not b!3570631) (not b!3571116) (not b!3571277) (not d!1052480) (not b_next!92131) (not b!3570862) (not b!3570845) (not b!3571285) (not b!3570805) (not b!3570465) (not b!3570486) (not b_next!92117) (not bm!258753) (not bm!258793) (not b!3570595) (not b!3571088) (not b!3570853) (not b!3570488) (not d!1052510) (not b!3571249) (not b!3570848) (not d!1052608) (not bm!258778) (not b!3571328) (not b!3571255) (not b!3571031) (not d!1052388) (not b!3571017) (not d!1052232) (not b!3571229) (not d!1052356) (not d!1052516) (not d!1052594) (not b!3571101) (not b!3571010) (not b!3571237) (not b!3571253) (not b!3570994) (not d!1052240) (not d!1052610) (not b!3570601) (not b!3570857) (not d!1052492) (not d!1052414) (not b!3570760) (not d!1052630) (not d!1052504) (not b!3570626) (not b!3570913) (not b!3571274) (not b!3570599) (not b!3571276) (not b_lambda!105275) (not b!3570847) (not tb!203339) (not b!3570450) (not bm!258795) (not d!1052382) (not d!1052620) (not b!3570750) (not b_lambda!105283) (not b!3570965) (not b_lambda!105277) (not b!3570751) (not b_lambda!105269) b_and!257019 (not b!3571019) (not d!1052604) (not b!3571319) (not b!3570636) (not b!3571084) (not b!3570627) (not b!3570596) (not b!3570935) (not b!3570863) (not b!3571107) (not b!3570749) (not b!3571115) (not b!3571275) (not b!3571305) (not b!3570922) b_and!256965 (not b!3571247) (not b!3571119) (not b!3571041) (not b!3571100) b_and!256969 (not b!3571242) (not b!3571005) (not bm!258761) (not d!1052524) (not b!3571081) (not b!3571078) (not b!3570939) (not d!1052368) (not d!1052618) (not b!3570758) (not d!1052494) (not b!3570918) (not d!1052372) (not b!3570937) (not b!3571278) (not b!3571009) (not b!3570633) (not b!3570851) (not d!1052426) (not d!1052582) (not d!1052518) (not b_next!92115) (not bm!258760) (not b_lambda!105285) (not b!3570864) (not b!3571097) (not d!1052482) b_and!257007 b_and!257009 (not b_next!92113) (not b!3571023) (not bm!258775) (not b!3571094) (not tb!203357) (not d!1052484) (not b!3571103) (not b!3571085) (not bm!258779) (not b!3571264) (not bm!258758) (not b_next!92125) (not d!1052530) (not b!3570987) (not d!1052634) (not d!1052450) (not b!3570861) (not tb!203363) (not b!3571108) (not d!1052304) (not d!1052606) (not b!3571219) (not d!1052598) (not bm!258773) (not b_lambda!105281) (not b!3571016) tp_is_empty!17655 (not b!3570960) (not b!3571029) (not b!3571298) (not d!1052532) (not d!1052424) (not d!1052340) (not b!3570624) (not d!1052456) (not b_lambda!105279) (not b!3571114) (not b!3570917) (not d!1052490))
(check-sat b_and!257011 b_and!257015 (not b_next!92127) (not b_next!92121) (not b_next!92119) (not b_next!92129) (not b_next!92131) (not b_next!92117) b_and!257019 (not b_next!92115) (not b_next!92125) b_and!257013 (not b_next!92123) b_and!256967 b_and!257017 b_and!256965 b_and!256969 b_and!257007 b_and!257009 (not b_next!92113))
