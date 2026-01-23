; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170130 () Bool)

(assert start!170130)

(declare-fun b!1730940 () Bool)

(declare-fun b_free!47355 () Bool)

(declare-fun b_next!48059 () Bool)

(assert (=> b!1730940 (= b_free!47355 (not b_next!48059))))

(declare-fun tp!493590 () Bool)

(declare-fun b_and!127587 () Bool)

(assert (=> b!1730940 (= tp!493590 b_and!127587)))

(declare-fun b_free!47357 () Bool)

(declare-fun b_next!48061 () Bool)

(assert (=> b!1730940 (= b_free!47357 (not b_next!48061))))

(declare-fun tp!493596 () Bool)

(declare-fun b_and!127589 () Bool)

(assert (=> b!1730940 (= tp!493596 b_and!127589)))

(declare-fun b!1730953 () Bool)

(declare-fun b_free!47359 () Bool)

(declare-fun b_next!48063 () Bool)

(assert (=> b!1730953 (= b_free!47359 (not b_next!48063))))

(declare-fun tp!493589 () Bool)

(declare-fun b_and!127591 () Bool)

(assert (=> b!1730953 (= tp!493589 b_and!127591)))

(declare-fun b_free!47361 () Bool)

(declare-fun b_next!48065 () Bool)

(assert (=> b!1730953 (= b_free!47361 (not b_next!48065))))

(declare-fun tp!493597 () Bool)

(declare-fun b_and!127593 () Bool)

(assert (=> b!1730953 (= tp!493597 b_and!127593)))

(declare-fun b!1730948 () Bool)

(declare-fun b_free!47363 () Bool)

(declare-fun b_next!48067 () Bool)

(assert (=> b!1730948 (= b_free!47363 (not b_next!48067))))

(declare-fun tp!493593 () Bool)

(declare-fun b_and!127595 () Bool)

(assert (=> b!1730948 (= tp!493593 b_and!127595)))

(declare-fun b_free!47365 () Bool)

(declare-fun b_next!48069 () Bool)

(assert (=> b!1730948 (= b_free!47365 (not b_next!48069))))

(declare-fun tp!493594 () Bool)

(declare-fun b_and!127597 () Bool)

(assert (=> b!1730948 (= tp!493594 b_and!127597)))

(declare-fun b!1730964 () Bool)

(declare-fun e!1107445 () Bool)

(assert (=> b!1730964 (= e!1107445 true)))

(declare-fun b!1730963 () Bool)

(declare-fun e!1107444 () Bool)

(assert (=> b!1730963 (= e!1107444 e!1107445)))

(declare-fun b!1730962 () Bool)

(declare-fun e!1107443 () Bool)

(assert (=> b!1730962 (= e!1107443 e!1107444)))

(declare-fun b!1730924 () Bool)

(assert (=> b!1730924 e!1107443))

(assert (= b!1730963 b!1730964))

(assert (= b!1730962 b!1730963))

(assert (= b!1730924 b!1730962))

(declare-fun order!11701 () Int)

(declare-datatypes ((List!19050 0))(
  ( (Nil!18980) (Cons!18980 (h!24381 (_ BitVec 16)) (t!160709 List!19050)) )
))
(declare-datatypes ((TokenValue!3459 0))(
  ( (FloatLiteralValue!6918 (text!24658 List!19050)) (TokenValueExt!3458 (__x!12220 Int)) (Broken!17295 (value!105663 List!19050)) (Object!3528) (End!3459) (Def!3459) (Underscore!3459) (Match!3459) (Else!3459) (Error!3459) (Case!3459) (If!3459) (Extends!3459) (Abstract!3459) (Class!3459) (Val!3459) (DelimiterValue!6918 (del!3519 List!19050)) (KeywordValue!3465 (value!105664 List!19050)) (CommentValue!6918 (value!105665 List!19050)) (WhitespaceValue!6918 (value!105666 List!19050)) (IndentationValue!3459 (value!105667 List!19050)) (String!21626) (Int32!3459) (Broken!17296 (value!105668 List!19050)) (Boolean!3460) (Unit!32836) (OperatorValue!3462 (op!3519 List!19050)) (IdentifierValue!6918 (value!105669 List!19050)) (IdentifierValue!6919 (value!105670 List!19050)) (WhitespaceValue!6919 (value!105671 List!19050)) (True!6918) (False!6918) (Broken!17297 (value!105672 List!19050)) (Broken!17298 (value!105673 List!19050)) (True!6919) (RightBrace!3459) (RightBracket!3459) (Colon!3459) (Null!3459) (Comma!3459) (LeftBracket!3459) (False!6919) (LeftBrace!3459) (ImaginaryLiteralValue!3459 (text!24659 List!19050)) (StringLiteralValue!10377 (value!105674 List!19050)) (EOFValue!3459 (value!105675 List!19050)) (IdentValue!3459 (value!105676 List!19050)) (DelimiterValue!6919 (value!105677 List!19050)) (DedentValue!3459 (value!105678 List!19050)) (NewLineValue!3459 (value!105679 List!19050)) (IntegerValue!10377 (value!105680 (_ BitVec 32)) (text!24660 List!19050)) (IntegerValue!10378 (value!105681 Int) (text!24661 List!19050)) (Times!3459) (Or!3459) (Equal!3459) (Minus!3459) (Broken!17299 (value!105682 List!19050)) (And!3459) (Div!3459) (LessEqual!3459) (Mod!3459) (Concat!8156) (Not!3459) (Plus!3459) (SpaceValue!3459 (value!105683 List!19050)) (IntegerValue!10379 (value!105684 Int) (text!24662 List!19050)) (StringLiteralValue!10378 (text!24663 List!19050)) (FloatLiteralValue!6919 (text!24664 List!19050)) (BytesLiteralValue!3459 (value!105685 List!19050)) (CommentValue!6919 (value!105686 List!19050)) (StringLiteralValue!10379 (value!105687 List!19050)) (ErrorTokenValue!3459 (msg!3520 List!19050)) )
))
(declare-datatypes ((C!9568 0))(
  ( (C!9569 (val!5380 Int)) )
))
(declare-datatypes ((List!19051 0))(
  ( (Nil!18981) (Cons!18981 (h!24382 C!9568) (t!160710 List!19051)) )
))
(declare-datatypes ((Regex!4697 0))(
  ( (ElementMatch!4697 (c!282782 C!9568)) (Concat!8157 (regOne!9906 Regex!4697) (regTwo!9906 Regex!4697)) (EmptyExpr!4697) (Star!4697 (reg!5026 Regex!4697)) (EmptyLang!4697) (Union!4697 (regOne!9907 Regex!4697) (regTwo!9907 Regex!4697)) )
))
(declare-datatypes ((String!21627 0))(
  ( (String!21628 (value!105688 String)) )
))
(declare-datatypes ((IArray!12631 0))(
  ( (IArray!12632 (innerList!6373 List!19051)) )
))
(declare-datatypes ((Conc!6313 0))(
  ( (Node!6313 (left!15159 Conc!6313) (right!15489 Conc!6313) (csize!12856 Int) (cheight!6524 Int)) (Leaf!9218 (xs!9189 IArray!12631) (csize!12857 Int)) (Empty!6313) )
))
(declare-datatypes ((BalanceConc!12570 0))(
  ( (BalanceConc!12571 (c!282783 Conc!6313)) )
))
(declare-datatypes ((TokenValueInjection!6578 0))(
  ( (TokenValueInjection!6579 (toValue!4876 Int) (toChars!4735 Int)) )
))
(declare-datatypes ((Rule!6538 0))(
  ( (Rule!6539 (regex!3369 Regex!4697) (tag!3695 String!21627) (isSeparator!3369 Bool) (transformation!3369 TokenValueInjection!6578)) )
))
(declare-datatypes ((Token!6304 0))(
  ( (Token!6305 (value!105689 TokenValue!3459) (rule!5347 Rule!6538) (size!15080 Int) (originalCharacters!4183 List!19051)) )
))
(declare-datatypes ((tuple2!18658 0))(
  ( (tuple2!18659 (_1!10731 Token!6304) (_2!10731 List!19051)) )
))
(declare-fun lt!664033 () tuple2!18658)

(declare-fun lambda!69368 () Int)

(declare-fun order!11699 () Int)

(declare-fun dynLambda!8848 (Int Int) Int)

(declare-fun dynLambda!8849 (Int Int) Int)

(assert (=> b!1730964 (< (dynLambda!8848 order!11699 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) (dynLambda!8849 order!11701 lambda!69368))))

(declare-fun order!11703 () Int)

(declare-fun dynLambda!8850 (Int Int) Int)

(assert (=> b!1730964 (< (dynLambda!8850 order!11703 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) (dynLambda!8849 order!11701 lambda!69368))))

(declare-fun b!1730922 () Bool)

(declare-fun e!1107435 () Bool)

(declare-fun e!1107425 () Bool)

(assert (=> b!1730922 (= e!1107435 (not e!1107425))))

(declare-fun res!777385 () Bool)

(assert (=> b!1730922 (=> res!777385 e!1107425)))

(declare-fun rule!422 () Rule!6538)

(declare-fun lt!664039 () List!19051)

(declare-fun matchR!2171 (Regex!4697 List!19051) Bool)

(assert (=> b!1730922 (= res!777385 (not (matchR!2171 (regex!3369 rule!422) lt!664039)))))

(declare-datatypes ((LexerInterface!2998 0))(
  ( (LexerInterfaceExt!2995 (__x!12221 Int)) (Lexer!2996) )
))
(declare-fun thiss!24550 () LexerInterface!2998)

(declare-fun ruleValid!868 (LexerInterface!2998 Rule!6538) Bool)

(assert (=> b!1730922 (ruleValid!868 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32837 0))(
  ( (Unit!32838) )
))
(declare-fun lt!664068 () Unit!32837)

(declare-datatypes ((List!19052 0))(
  ( (Nil!18982) (Cons!18982 (h!24383 Rule!6538) (t!160711 List!19052)) )
))
(declare-fun rules!3447 () List!19052)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!392 (LexerInterface!2998 Rule!6538 List!19052) Unit!32837)

(assert (=> b!1730922 (= lt!664068 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!392 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1730923 () Bool)

(declare-fun e!1107433 () Bool)

(declare-fun e!1107420 () Bool)

(declare-fun tp!493598 () Bool)

(assert (=> b!1730923 (= e!1107433 (and e!1107420 tp!493598))))

(declare-fun e!1107421 () Bool)

(declare-fun e!1107417 () Bool)

(assert (=> b!1730924 (= e!1107421 e!1107417)))

(declare-fun res!777404 () Bool)

(assert (=> b!1730924 (=> res!777404 e!1107417)))

(declare-fun Forall!744 (Int) Bool)

(assert (=> b!1730924 (= res!777404 (not (Forall!744 lambda!69368)))))

(declare-fun lt!664053 () Unit!32837)

(declare-fun lemmaInv!576 (TokenValueInjection!6578) Unit!32837)

(assert (=> b!1730924 (= lt!664053 (lemmaInv!576 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))))

(declare-fun b!1730925 () Bool)

(declare-fun e!1107428 () Bool)

(declare-fun tp_is_empty!7637 () Bool)

(declare-fun tp!493600 () Bool)

(assert (=> b!1730925 (= e!1107428 (and tp_is_empty!7637 tp!493600))))

(declare-fun b!1730926 () Bool)

(declare-fun res!777400 () Bool)

(declare-fun e!1107431 () Bool)

(assert (=> b!1730926 (=> (not res!777400) (not e!1107431))))

(declare-fun contains!3391 (List!19052 Rule!6538) Bool)

(assert (=> b!1730926 (= res!777400 (contains!3391 rules!3447 rule!422))))

(declare-fun b!1730927 () Bool)

(declare-fun e!1107427 () Bool)

(assert (=> b!1730927 (= e!1107427 e!1107421)))

(declare-fun res!777391 () Bool)

(assert (=> b!1730927 (=> res!777391 e!1107421)))

(declare-fun lt!664055 () List!19051)

(declare-fun lt!664045 () List!19051)

(declare-fun isPrefix!1610 (List!19051 List!19051) Bool)

(assert (=> b!1730927 (= res!777391 (not (isPrefix!1610 lt!664055 lt!664045)))))

(declare-fun ++!5194 (List!19051 List!19051) List!19051)

(assert (=> b!1730927 (isPrefix!1610 lt!664055 (++!5194 lt!664055 (_2!10731 lt!664033)))))

(declare-fun lt!664050 () Unit!32837)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1120 (List!19051 List!19051) Unit!32837)

(assert (=> b!1730927 (= lt!664050 (lemmaConcatTwoListThenFirstIsPrefix!1120 lt!664055 (_2!10731 lt!664033)))))

(declare-fun lt!664063 () BalanceConc!12570)

(declare-fun list!7674 (BalanceConc!12570) List!19051)

(assert (=> b!1730927 (= lt!664055 (list!7674 lt!664063))))

(declare-fun charsOf!2018 (Token!6304) BalanceConc!12570)

(assert (=> b!1730927 (= lt!664063 (charsOf!2018 (_1!10731 lt!664033)))))

(declare-fun e!1107415 () Bool)

(assert (=> b!1730927 e!1107415))

(declare-fun res!777398 () Bool)

(assert (=> b!1730927 (=> (not res!777398) (not e!1107415))))

(declare-datatypes ((Option!3762 0))(
  ( (None!3761) (Some!3761 (v!25180 Rule!6538)) )
))
(declare-fun lt!664067 () Option!3762)

(declare-fun isDefined!3105 (Option!3762) Bool)

(assert (=> b!1730927 (= res!777398 (isDefined!3105 lt!664067))))

(declare-fun getRuleFromTag!419 (LexerInterface!2998 List!19052 String!21627) Option!3762)

(assert (=> b!1730927 (= lt!664067 (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 (_1!10731 lt!664033)))))))

(declare-fun lt!664057 () Unit!32837)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!419 (LexerInterface!2998 List!19052 List!19051 Token!6304) Unit!32837)

(assert (=> b!1730927 (= lt!664057 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!419 thiss!24550 rules!3447 lt!664045 (_1!10731 lt!664033)))))

(declare-datatypes ((Option!3763 0))(
  ( (None!3762) (Some!3762 (v!25181 tuple2!18658)) )
))
(declare-fun lt!664051 () Option!3763)

(declare-fun get!5664 (Option!3763) tuple2!18658)

(assert (=> b!1730927 (= lt!664033 (get!5664 lt!664051))))

(declare-fun suffix!1421 () List!19051)

(declare-fun lt!664049 () Unit!32837)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!522 (LexerInterface!2998 List!19052 List!19051 List!19051) Unit!32837)

(assert (=> b!1730927 (= lt!664049 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!522 thiss!24550 rules!3447 lt!664039 suffix!1421))))

(declare-fun maxPrefix!1552 (LexerInterface!2998 List!19052 List!19051) Option!3763)

(assert (=> b!1730927 (= lt!664051 (maxPrefix!1552 thiss!24550 rules!3447 lt!664045))))

(assert (=> b!1730927 (isPrefix!1610 lt!664039 lt!664045)))

(declare-fun lt!664052 () Unit!32837)

(assert (=> b!1730927 (= lt!664052 (lemmaConcatTwoListThenFirstIsPrefix!1120 lt!664039 suffix!1421))))

(assert (=> b!1730927 (= lt!664045 (++!5194 lt!664039 suffix!1421))))

(declare-fun b!1730928 () Bool)

(declare-fun e!1107422 () Bool)

(declare-fun e!1107426 () Bool)

(assert (=> b!1730928 (= e!1107422 e!1107426)))

(declare-fun res!777395 () Bool)

(assert (=> b!1730928 (=> res!777395 e!1107426)))

(declare-fun lt!664042 () List!19051)

(assert (=> b!1730928 (= res!777395 (not (isPrefix!1610 lt!664042 lt!664045)))))

(declare-fun lt!664040 () List!19051)

(declare-fun head!3938 (List!19051) C!9568)

(assert (=> b!1730928 (isPrefix!1610 (++!5194 lt!664039 (Cons!18981 (head!3938 lt!664040) Nil!18981)) lt!664045)))

(declare-fun lt!664037 () Unit!32837)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!205 (List!19051 List!19051) Unit!32837)

(assert (=> b!1730928 (= lt!664037 (lemmaAddHeadSuffixToPrefixStillPrefix!205 lt!664039 lt!664045))))

(declare-fun b!1730929 () Bool)

(declare-fun res!777382 () Bool)

(declare-fun e!1107414 () Bool)

(assert (=> b!1730929 (=> res!777382 e!1107414)))

(declare-fun dynLambda!8851 (Int TokenValue!3459) BalanceConc!12570)

(assert (=> b!1730929 (= res!777382 (not (= lt!664063 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))))))

(declare-fun b!1730930 () Bool)

(declare-fun e!1107419 () Bool)

(assert (=> b!1730930 (= e!1107414 e!1107419)))

(declare-fun res!777396 () Bool)

(assert (=> b!1730930 (=> res!777396 e!1107419)))

(declare-fun lt!664046 () TokenValue!3459)

(declare-fun lt!664060 () Int)

(assert (=> b!1730930 (= res!777396 (not (= lt!664051 (Some!3762 (tuple2!18659 (Token!6305 lt!664046 (rule!5347 (_1!10731 lt!664033)) lt!664060 lt!664055) (_2!10731 lt!664033))))))))

(declare-fun size!15081 (BalanceConc!12570) Int)

(assert (=> b!1730930 (= lt!664060 (size!15081 lt!664063))))

(declare-fun apply!5174 (TokenValueInjection!6578 BalanceConc!12570) TokenValue!3459)

(assert (=> b!1730930 (= lt!664046 (apply!5174 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) lt!664063))))

(declare-fun lt!664044 () Unit!32837)

(declare-fun lemmaCharactersSize!441 (Token!6304) Unit!32837)

(assert (=> b!1730930 (= lt!664044 (lemmaCharactersSize!441 (_1!10731 lt!664033)))))

(declare-fun lt!664058 () Unit!32837)

(declare-fun lemmaEqSameImage!294 (TokenValueInjection!6578 BalanceConc!12570 BalanceConc!12570) Unit!32837)

(declare-fun seqFromList!2343 (List!19051) BalanceConc!12570)

(assert (=> b!1730930 (= lt!664058 (lemmaEqSameImage!294 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) lt!664063 (seqFromList!2343 (originalCharacters!4183 (_1!10731 lt!664033)))))))

(declare-fun b!1730931 () Bool)

(declare-fun e!1107410 () Bool)

(declare-fun lt!664034 () Rule!6538)

(assert (=> b!1730931 (= e!1107410 (= (rule!5347 (_1!10731 lt!664033)) lt!664034))))

(declare-fun b!1730932 () Bool)

(declare-fun res!777392 () Bool)

(assert (=> b!1730932 (=> res!777392 e!1107425)))

(declare-fun isEmpty!11941 (List!19051) Bool)

(assert (=> b!1730932 (= res!777392 (isEmpty!11941 suffix!1421))))

(declare-fun b!1730933 () Bool)

(declare-fun e!1107424 () Bool)

(declare-fun e!1107436 () Bool)

(declare-fun tp!493599 () Bool)

(declare-fun token!523 () Token!6304)

(declare-fun inv!21 (TokenValue!3459) Bool)

(assert (=> b!1730933 (= e!1107436 (and (inv!21 (value!105689 token!523)) e!1107424 tp!493599))))

(declare-fun b!1730934 () Bool)

(declare-fun e!1107423 () Bool)

(assert (=> b!1730934 (= e!1107419 e!1107423)))

(declare-fun res!777387 () Bool)

(assert (=> b!1730934 (=> res!777387 e!1107423)))

(declare-fun lt!664056 () Option!3763)

(declare-fun lt!664061 () List!19051)

(assert (=> b!1730934 (= res!777387 (or (not (= lt!664061 (_2!10731 lt!664033))) (not (= lt!664056 (Some!3762 (tuple2!18659 (_1!10731 lt!664033) lt!664061))))))))

(assert (=> b!1730934 (= (_2!10731 lt!664033) lt!664061)))

(declare-fun lt!664065 () Unit!32837)

(declare-fun lemmaSamePrefixThenSameSuffix!754 (List!19051 List!19051 List!19051 List!19051 List!19051) Unit!32837)

(assert (=> b!1730934 (= lt!664065 (lemmaSamePrefixThenSameSuffix!754 lt!664055 (_2!10731 lt!664033) lt!664055 lt!664061 lt!664045))))

(declare-fun getSuffix!804 (List!19051 List!19051) List!19051)

(assert (=> b!1730934 (= lt!664061 (getSuffix!804 lt!664045 lt!664055))))

(declare-fun lt!664062 () Int)

(declare-fun lt!664041 () TokenValue!3459)

(assert (=> b!1730934 (= lt!664056 (Some!3762 (tuple2!18659 (Token!6305 lt!664041 (rule!5347 (_1!10731 lt!664033)) lt!664062 lt!664055) (_2!10731 lt!664033))))))

(declare-fun maxPrefixOneRule!928 (LexerInterface!2998 Rule!6538 List!19051) Option!3763)

(assert (=> b!1730934 (= lt!664056 (maxPrefixOneRule!928 thiss!24550 (rule!5347 (_1!10731 lt!664033)) lt!664045))))

(declare-fun size!15082 (List!19051) Int)

(assert (=> b!1730934 (= lt!664062 (size!15082 lt!664055))))

(assert (=> b!1730934 (= lt!664041 (apply!5174 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) (seqFromList!2343 lt!664055)))))

(declare-fun lt!664038 () Unit!32837)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!327 (LexerInterface!2998 List!19052 List!19051 List!19051 List!19051 Rule!6538) Unit!32837)

(assert (=> b!1730934 (= lt!664038 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!327 thiss!24550 rules!3447 lt!664055 lt!664045 (_2!10731 lt!664033) (rule!5347 (_1!10731 lt!664033))))))

(declare-fun b!1730935 () Bool)

(declare-fun res!777390 () Bool)

(assert (=> b!1730935 (=> (not res!777390) (not e!1107435))))

(assert (=> b!1730935 (= res!777390 (= (rule!5347 token!523) rule!422))))

(declare-fun b!1730936 () Bool)

(assert (=> b!1730936 (= e!1107425 e!1107427)))

(declare-fun res!777393 () Bool)

(assert (=> b!1730936 (=> res!777393 e!1107427)))

(declare-fun lt!664054 () Regex!4697)

(declare-fun prefixMatch!582 (Regex!4697 List!19051) Bool)

(assert (=> b!1730936 (= res!777393 (prefixMatch!582 lt!664054 lt!664042))))

(assert (=> b!1730936 (= lt!664042 (++!5194 lt!664039 (Cons!18981 (head!3938 suffix!1421) Nil!18981)))))

(declare-fun rulesRegex!727 (LexerInterface!2998 List!19052) Regex!4697)

(assert (=> b!1730936 (= lt!664054 (rulesRegex!727 thiss!24550 rules!3447))))

(declare-fun b!1730937 () Bool)

(declare-fun tp!493595 () Bool)

(declare-fun e!1107412 () Bool)

(declare-fun inv!24546 (String!21627) Bool)

(declare-fun inv!24551 (TokenValueInjection!6578) Bool)

(assert (=> b!1730937 (= e!1107424 (and tp!493595 (inv!24546 (tag!3695 (rule!5347 token!523))) (inv!24551 (transformation!3369 (rule!5347 token!523))) e!1107412))))

(declare-fun b!1730938 () Bool)

(declare-fun res!777397 () Bool)

(assert (=> b!1730938 (=> (not res!777397) (not e!1107431))))

(declare-fun isEmpty!11942 (List!19052) Bool)

(assert (=> b!1730938 (= res!777397 (not (isEmpty!11942 rules!3447)))))

(declare-fun b!1730939 () Bool)

(declare-fun res!777403 () Bool)

(assert (=> b!1730939 (=> (not res!777403) (not e!1107431))))

(declare-fun rulesInvariant!2667 (LexerInterface!2998 List!19052) Bool)

(assert (=> b!1730939 (= res!777403 (rulesInvariant!2667 thiss!24550 rules!3447))))

(assert (=> b!1730940 (= e!1107412 (and tp!493590 tp!493596))))

(declare-fun b!1730941 () Bool)

(declare-fun e!1107434 () Bool)

(assert (=> b!1730941 (= e!1107434 e!1107435)))

(declare-fun res!777384 () Bool)

(assert (=> b!1730941 (=> (not res!777384) (not e!1107435))))

(declare-fun lt!664059 () tuple2!18658)

(assert (=> b!1730941 (= res!777384 (= (_1!10731 lt!664059) token!523))))

(declare-fun lt!664066 () Option!3763)

(assert (=> b!1730941 (= lt!664059 (get!5664 lt!664066))))

(declare-fun b!1730942 () Bool)

(assert (=> b!1730942 (= e!1107415 e!1107410)))

(declare-fun res!777401 () Bool)

(assert (=> b!1730942 (=> (not res!777401) (not e!1107410))))

(assert (=> b!1730942 (= res!777401 (matchR!2171 (regex!3369 lt!664034) (list!7674 (charsOf!2018 (_1!10731 lt!664033)))))))

(declare-fun get!5665 (Option!3762) Rule!6538)

(assert (=> b!1730942 (= lt!664034 (get!5665 lt!664067))))

(declare-fun b!1730943 () Bool)

(declare-fun e!1107416 () Bool)

(assert (=> b!1730943 (= e!1107416 e!1107422)))

(declare-fun res!777383 () Bool)

(assert (=> b!1730943 (=> res!777383 e!1107422)))

(assert (=> b!1730943 (= res!777383 (not (= lt!664040 suffix!1421)))))

(assert (=> b!1730943 (= suffix!1421 lt!664040)))

(declare-fun lt!664048 () Unit!32837)

(assert (=> b!1730943 (= lt!664048 (lemmaSamePrefixThenSameSuffix!754 lt!664039 suffix!1421 lt!664039 lt!664040 lt!664045))))

(assert (=> b!1730943 (= lt!664040 (getSuffix!804 lt!664045 lt!664039))))

(assert (=> b!1730943 (matchR!2171 lt!664054 lt!664055)))

(declare-fun lt!664047 () Unit!32837)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!118 (LexerInterface!2998 List!19052 List!19051 Token!6304 Rule!6538 List!19051) Unit!32837)

(assert (=> b!1730943 (= lt!664047 (lemmaMaxPrefixThenMatchesRulesRegex!118 thiss!24550 rules!3447 lt!664045 (_1!10731 lt!664033) (rule!5347 (_1!10731 lt!664033)) (_2!10731 lt!664033)))))

(declare-fun b!1730944 () Bool)

(assert (=> b!1730944 (= e!1107431 e!1107434)))

(declare-fun res!777386 () Bool)

(assert (=> b!1730944 (=> (not res!777386) (not e!1107434))))

(declare-fun isDefined!3106 (Option!3763) Bool)

(assert (=> b!1730944 (= res!777386 (isDefined!3106 lt!664066))))

(assert (=> b!1730944 (= lt!664066 (maxPrefix!1552 thiss!24550 rules!3447 lt!664039))))

(declare-fun lt!664043 () BalanceConc!12570)

(assert (=> b!1730944 (= lt!664039 (list!7674 lt!664043))))

(assert (=> b!1730944 (= lt!664043 (charsOf!2018 token!523))))

(declare-fun b!1730945 () Bool)

(assert (=> b!1730945 (= e!1107426 (not (= suffix!1421 Nil!18981)))))

(assert (=> b!1730945 (isPrefix!1610 lt!664042 lt!664055)))

(declare-fun lt!664035 () Unit!32837)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!85 (List!19051 List!19051 List!19051) Unit!32837)

(assert (=> b!1730945 (= lt!664035 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!85 lt!664055 lt!664042 lt!664045))))

(declare-fun res!777389 () Bool)

(assert (=> start!170130 (=> (not res!777389) (not e!1107431))))

(get-info :version)

(assert (=> start!170130 (= res!777389 ((_ is Lexer!2996) thiss!24550))))

(assert (=> start!170130 e!1107431))

(assert (=> start!170130 e!1107428))

(declare-fun e!1107429 () Bool)

(assert (=> start!170130 e!1107429))

(assert (=> start!170130 true))

(declare-fun inv!24552 (Token!6304) Bool)

(assert (=> start!170130 (and (inv!24552 token!523) e!1107436)))

(assert (=> start!170130 e!1107433))

(declare-fun b!1730946 () Bool)

(declare-fun res!777402 () Bool)

(assert (=> b!1730946 (=> (not res!777402) (not e!1107435))))

(assert (=> b!1730946 (= res!777402 (isEmpty!11941 (_2!10731 lt!664059)))))

(declare-fun b!1730947 () Bool)

(declare-fun res!777399 () Bool)

(assert (=> b!1730947 (=> res!777399 e!1107421)))

(assert (=> b!1730947 (= res!777399 (not (matchR!2171 (regex!3369 (rule!5347 (_1!10731 lt!664033))) lt!664055)))))

(declare-fun e!1107418 () Bool)

(assert (=> b!1730948 (= e!1107418 (and tp!493593 tp!493594))))

(declare-fun b!1730949 () Bool)

(assert (=> b!1730949 (= e!1107423 e!1107416)))

(declare-fun res!777388 () Bool)

(assert (=> b!1730949 (=> res!777388 e!1107416)))

(assert (=> b!1730949 (= res!777388 (<= lt!664060 (size!15081 lt!664043)))))

(assert (=> b!1730949 (matchR!2171 lt!664054 lt!664039)))

(declare-fun lt!664064 () Unit!32837)

(assert (=> b!1730949 (= lt!664064 (lemmaMaxPrefixThenMatchesRulesRegex!118 thiss!24550 rules!3447 lt!664039 token!523 rule!422 Nil!18981))))

(declare-fun b!1730950 () Bool)

(declare-fun tp!493591 () Bool)

(assert (=> b!1730950 (= e!1107420 (and tp!493591 (inv!24546 (tag!3695 (h!24383 rules!3447))) (inv!24551 (transformation!3369 (h!24383 rules!3447))) e!1107418))))

(declare-fun b!1730951 () Bool)

(declare-fun e!1107413 () Bool)

(declare-fun tp!493592 () Bool)

(assert (=> b!1730951 (= e!1107429 (and tp!493592 (inv!24546 (tag!3695 rule!422)) (inv!24551 (transformation!3369 rule!422)) e!1107413))))

(declare-fun b!1730952 () Bool)

(assert (=> b!1730952 (= e!1107417 e!1107414)))

(declare-fun res!777394 () Bool)

(assert (=> b!1730952 (=> res!777394 e!1107414)))

(declare-fun dynLambda!8852 (Int BalanceConc!12570) TokenValue!3459)

(assert (=> b!1730952 (= res!777394 (not (= (list!7674 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))) lt!664055)))))

(declare-fun lt!664036 () Unit!32837)

(declare-fun lemmaSemiInverse!515 (TokenValueInjection!6578 BalanceConc!12570) Unit!32837)

(assert (=> b!1730952 (= lt!664036 (lemmaSemiInverse!515 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) lt!664063))))

(assert (=> b!1730953 (= e!1107413 (and tp!493589 tp!493597))))

(assert (= (and start!170130 res!777389) b!1730938))

(assert (= (and b!1730938 res!777397) b!1730939))

(assert (= (and b!1730939 res!777403) b!1730926))

(assert (= (and b!1730926 res!777400) b!1730944))

(assert (= (and b!1730944 res!777386) b!1730941))

(assert (= (and b!1730941 res!777384) b!1730946))

(assert (= (and b!1730946 res!777402) b!1730935))

(assert (= (and b!1730935 res!777390) b!1730922))

(assert (= (and b!1730922 (not res!777385)) b!1730932))

(assert (= (and b!1730932 (not res!777392)) b!1730936))

(assert (= (and b!1730936 (not res!777393)) b!1730927))

(assert (= (and b!1730927 res!777398) b!1730942))

(assert (= (and b!1730942 res!777401) b!1730931))

(assert (= (and b!1730927 (not res!777391)) b!1730947))

(assert (= (and b!1730947 (not res!777399)) b!1730924))

(assert (= (and b!1730924 (not res!777404)) b!1730952))

(assert (= (and b!1730952 (not res!777394)) b!1730929))

(assert (= (and b!1730929 (not res!777382)) b!1730930))

(assert (= (and b!1730930 (not res!777396)) b!1730934))

(assert (= (and b!1730934 (not res!777387)) b!1730949))

(assert (= (and b!1730949 (not res!777388)) b!1730943))

(assert (= (and b!1730943 (not res!777383)) b!1730928))

(assert (= (and b!1730928 (not res!777395)) b!1730945))

(assert (= (and start!170130 ((_ is Cons!18981) suffix!1421)) b!1730925))

(assert (= b!1730951 b!1730953))

(assert (= start!170130 b!1730951))

(assert (= b!1730937 b!1730940))

(assert (= b!1730933 b!1730937))

(assert (= start!170130 b!1730933))

(assert (= b!1730950 b!1730948))

(assert (= b!1730923 b!1730950))

(assert (= (and start!170130 ((_ is Cons!18982) rules!3447)) b!1730923))

(declare-fun b_lambda!55219 () Bool)

(assert (=> (not b_lambda!55219) (not b!1730929)))

(declare-fun tb!103077 () Bool)

(declare-fun t!160692 () Bool)

(assert (=> (and b!1730940 (= (toChars!4735 (transformation!3369 (rule!5347 token!523))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160692) tb!103077))

(declare-fun b!1730969 () Bool)

(declare-fun e!1107448 () Bool)

(declare-fun tp!493603 () Bool)

(declare-fun inv!24553 (Conc!6313) Bool)

(assert (=> b!1730969 (= e!1107448 (and (inv!24553 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))) tp!493603))))

(declare-fun result!123936 () Bool)

(declare-fun inv!24554 (BalanceConc!12570) Bool)

(assert (=> tb!103077 (= result!123936 (and (inv!24554 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))) e!1107448))))

(assert (= tb!103077 b!1730969))

(declare-fun m!2139089 () Bool)

(assert (=> b!1730969 m!2139089))

(declare-fun m!2139091 () Bool)

(assert (=> tb!103077 m!2139091))

(assert (=> b!1730929 t!160692))

(declare-fun b_and!127599 () Bool)

(assert (= b_and!127589 (and (=> t!160692 result!123936) b_and!127599)))

(declare-fun tb!103079 () Bool)

(declare-fun t!160694 () Bool)

(assert (=> (and b!1730953 (= (toChars!4735 (transformation!3369 rule!422)) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160694) tb!103079))

(declare-fun result!123940 () Bool)

(assert (= result!123940 result!123936))

(assert (=> b!1730929 t!160694))

(declare-fun b_and!127601 () Bool)

(assert (= b_and!127593 (and (=> t!160694 result!123940) b_and!127601)))

(declare-fun t!160696 () Bool)

(declare-fun tb!103081 () Bool)

(assert (=> (and b!1730948 (= (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160696) tb!103081))

(declare-fun result!123942 () Bool)

(assert (= result!123942 result!123936))

(assert (=> b!1730929 t!160696))

(declare-fun b_and!127603 () Bool)

(assert (= b_and!127597 (and (=> t!160696 result!123942) b_and!127603)))

(declare-fun b_lambda!55221 () Bool)

(assert (=> (not b_lambda!55221) (not b!1730952)))

(declare-fun tb!103083 () Bool)

(declare-fun t!160698 () Bool)

(assert (=> (and b!1730940 (= (toChars!4735 (transformation!3369 (rule!5347 token!523))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160698) tb!103083))

(declare-fun e!1107449 () Bool)

(declare-fun tp!493604 () Bool)

(declare-fun b!1730970 () Bool)

(assert (=> b!1730970 (= e!1107449 (and (inv!24553 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))) tp!493604))))

(declare-fun result!123944 () Bool)

(assert (=> tb!103083 (= result!123944 (and (inv!24554 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))) e!1107449))))

(assert (= tb!103083 b!1730970))

(declare-fun m!2139093 () Bool)

(assert (=> b!1730970 m!2139093))

(declare-fun m!2139095 () Bool)

(assert (=> tb!103083 m!2139095))

(assert (=> b!1730952 t!160698))

(declare-fun b_and!127605 () Bool)

(assert (= b_and!127599 (and (=> t!160698 result!123944) b_and!127605)))

(declare-fun tb!103085 () Bool)

(declare-fun t!160700 () Bool)

(assert (=> (and b!1730953 (= (toChars!4735 (transformation!3369 rule!422)) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160700) tb!103085))

(declare-fun result!123946 () Bool)

(assert (= result!123946 result!123944))

(assert (=> b!1730952 t!160700))

(declare-fun b_and!127607 () Bool)

(assert (= b_and!127601 (and (=> t!160700 result!123946) b_and!127607)))

(declare-fun t!160702 () Bool)

(declare-fun tb!103087 () Bool)

(assert (=> (and b!1730948 (= (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160702) tb!103087))

(declare-fun result!123948 () Bool)

(assert (= result!123948 result!123944))

(assert (=> b!1730952 t!160702))

(declare-fun b_and!127609 () Bool)

(assert (= b_and!127603 (and (=> t!160702 result!123948) b_and!127609)))

(declare-fun b_lambda!55223 () Bool)

(assert (=> (not b_lambda!55223) (not b!1730952)))

(declare-fun tb!103089 () Bool)

(declare-fun t!160704 () Bool)

(assert (=> (and b!1730940 (= (toValue!4876 (transformation!3369 (rule!5347 token!523))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160704) tb!103089))

(declare-fun result!123950 () Bool)

(assert (=> tb!103089 (= result!123950 (inv!21 (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))

(declare-fun m!2139097 () Bool)

(assert (=> tb!103089 m!2139097))

(assert (=> b!1730952 t!160704))

(declare-fun b_and!127611 () Bool)

(assert (= b_and!127587 (and (=> t!160704 result!123950) b_and!127611)))

(declare-fun tb!103091 () Bool)

(declare-fun t!160706 () Bool)

(assert (=> (and b!1730953 (= (toValue!4876 (transformation!3369 rule!422)) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160706) tb!103091))

(declare-fun result!123954 () Bool)

(assert (= result!123954 result!123950))

(assert (=> b!1730952 t!160706))

(declare-fun b_and!127613 () Bool)

(assert (= b_and!127591 (and (=> t!160706 result!123954) b_and!127613)))

(declare-fun tb!103093 () Bool)

(declare-fun t!160708 () Bool)

(assert (=> (and b!1730948 (= (toValue!4876 (transformation!3369 (h!24383 rules!3447))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160708) tb!103093))

(declare-fun result!123956 () Bool)

(assert (= result!123956 result!123950))

(assert (=> b!1730952 t!160708))

(declare-fun b_and!127615 () Bool)

(assert (= b_and!127595 (and (=> t!160708 result!123956) b_and!127615)))

(declare-fun m!2139099 () Bool)

(assert (=> b!1730943 m!2139099))

(declare-fun m!2139101 () Bool)

(assert (=> b!1730943 m!2139101))

(declare-fun m!2139103 () Bool)

(assert (=> b!1730943 m!2139103))

(declare-fun m!2139105 () Bool)

(assert (=> b!1730943 m!2139105))

(declare-fun m!2139107 () Bool)

(assert (=> b!1730933 m!2139107))

(declare-fun m!2139109 () Bool)

(assert (=> b!1730944 m!2139109))

(declare-fun m!2139111 () Bool)

(assert (=> b!1730944 m!2139111))

(declare-fun m!2139113 () Bool)

(assert (=> b!1730944 m!2139113))

(declare-fun m!2139115 () Bool)

(assert (=> b!1730944 m!2139115))

(declare-fun m!2139117 () Bool)

(assert (=> b!1730936 m!2139117))

(declare-fun m!2139119 () Bool)

(assert (=> b!1730936 m!2139119))

(declare-fun m!2139121 () Bool)

(assert (=> b!1730936 m!2139121))

(declare-fun m!2139123 () Bool)

(assert (=> b!1730936 m!2139123))

(declare-fun m!2139125 () Bool)

(assert (=> b!1730928 m!2139125))

(declare-fun m!2139127 () Bool)

(assert (=> b!1730928 m!2139127))

(assert (=> b!1730928 m!2139127))

(declare-fun m!2139129 () Bool)

(assert (=> b!1730928 m!2139129))

(declare-fun m!2139131 () Bool)

(assert (=> b!1730928 m!2139131))

(declare-fun m!2139133 () Bool)

(assert (=> b!1730928 m!2139133))

(declare-fun m!2139135 () Bool)

(assert (=> b!1730924 m!2139135))

(declare-fun m!2139137 () Bool)

(assert (=> b!1730924 m!2139137))

(declare-fun m!2139139 () Bool)

(assert (=> b!1730947 m!2139139))

(declare-fun m!2139141 () Bool)

(assert (=> b!1730946 m!2139141))

(declare-fun m!2139143 () Bool)

(assert (=> b!1730942 m!2139143))

(assert (=> b!1730942 m!2139143))

(declare-fun m!2139145 () Bool)

(assert (=> b!1730942 m!2139145))

(assert (=> b!1730942 m!2139145))

(declare-fun m!2139147 () Bool)

(assert (=> b!1730942 m!2139147))

(declare-fun m!2139149 () Bool)

(assert (=> b!1730942 m!2139149))

(declare-fun m!2139151 () Bool)

(assert (=> b!1730937 m!2139151))

(declare-fun m!2139153 () Bool)

(assert (=> b!1730937 m!2139153))

(declare-fun m!2139155 () Bool)

(assert (=> b!1730922 m!2139155))

(declare-fun m!2139157 () Bool)

(assert (=> b!1730922 m!2139157))

(declare-fun m!2139159 () Bool)

(assert (=> b!1730922 m!2139159))

(declare-fun m!2139161 () Bool)

(assert (=> b!1730932 m!2139161))

(declare-fun m!2139163 () Bool)

(assert (=> b!1730950 m!2139163))

(declare-fun m!2139165 () Bool)

(assert (=> b!1730950 m!2139165))

(declare-fun m!2139167 () Bool)

(assert (=> b!1730949 m!2139167))

(declare-fun m!2139169 () Bool)

(assert (=> b!1730949 m!2139169))

(declare-fun m!2139171 () Bool)

(assert (=> b!1730949 m!2139171))

(declare-fun m!2139173 () Bool)

(assert (=> b!1730930 m!2139173))

(declare-fun m!2139175 () Bool)

(assert (=> b!1730930 m!2139175))

(declare-fun m!2139177 () Bool)

(assert (=> b!1730930 m!2139177))

(declare-fun m!2139179 () Bool)

(assert (=> b!1730930 m!2139179))

(assert (=> b!1730930 m!2139173))

(declare-fun m!2139181 () Bool)

(assert (=> b!1730930 m!2139181))

(declare-fun m!2139183 () Bool)

(assert (=> b!1730927 m!2139183))

(declare-fun m!2139185 () Bool)

(assert (=> b!1730927 m!2139185))

(declare-fun m!2139187 () Bool)

(assert (=> b!1730927 m!2139187))

(declare-fun m!2139189 () Bool)

(assert (=> b!1730927 m!2139189))

(declare-fun m!2139191 () Bool)

(assert (=> b!1730927 m!2139191))

(declare-fun m!2139193 () Bool)

(assert (=> b!1730927 m!2139193))

(declare-fun m!2139195 () Bool)

(assert (=> b!1730927 m!2139195))

(assert (=> b!1730927 m!2139143))

(declare-fun m!2139197 () Bool)

(assert (=> b!1730927 m!2139197))

(declare-fun m!2139199 () Bool)

(assert (=> b!1730927 m!2139199))

(declare-fun m!2139201 () Bool)

(assert (=> b!1730927 m!2139201))

(declare-fun m!2139203 () Bool)

(assert (=> b!1730927 m!2139203))

(declare-fun m!2139205 () Bool)

(assert (=> b!1730927 m!2139205))

(assert (=> b!1730927 m!2139183))

(declare-fun m!2139207 () Bool)

(assert (=> b!1730927 m!2139207))

(declare-fun m!2139209 () Bool)

(assert (=> b!1730927 m!2139209))

(declare-fun m!2139211 () Bool)

(assert (=> b!1730939 m!2139211))

(declare-fun m!2139213 () Bool)

(assert (=> b!1730941 m!2139213))

(declare-fun m!2139215 () Bool)

(assert (=> b!1730952 m!2139215))

(assert (=> b!1730952 m!2139215))

(declare-fun m!2139217 () Bool)

(assert (=> b!1730952 m!2139217))

(assert (=> b!1730952 m!2139217))

(declare-fun m!2139219 () Bool)

(assert (=> b!1730952 m!2139219))

(declare-fun m!2139221 () Bool)

(assert (=> b!1730952 m!2139221))

(declare-fun m!2139223 () Bool)

(assert (=> b!1730945 m!2139223))

(declare-fun m!2139225 () Bool)

(assert (=> b!1730945 m!2139225))

(declare-fun m!2139227 () Bool)

(assert (=> start!170130 m!2139227))

(declare-fun m!2139229 () Bool)

(assert (=> b!1730938 m!2139229))

(declare-fun m!2139231 () Bool)

(assert (=> b!1730929 m!2139231))

(declare-fun m!2139233 () Bool)

(assert (=> b!1730934 m!2139233))

(declare-fun m!2139235 () Bool)

(assert (=> b!1730934 m!2139235))

(declare-fun m!2139237 () Bool)

(assert (=> b!1730934 m!2139237))

(declare-fun m!2139239 () Bool)

(assert (=> b!1730934 m!2139239))

(declare-fun m!2139241 () Bool)

(assert (=> b!1730934 m!2139241))

(declare-fun m!2139243 () Bool)

(assert (=> b!1730934 m!2139243))

(declare-fun m!2139245 () Bool)

(assert (=> b!1730934 m!2139245))

(assert (=> b!1730934 m!2139241))

(declare-fun m!2139247 () Bool)

(assert (=> b!1730926 m!2139247))

(declare-fun m!2139249 () Bool)

(assert (=> b!1730951 m!2139249))

(declare-fun m!2139251 () Bool)

(assert (=> b!1730951 m!2139251))

(check-sat tp_is_empty!7637 (not tb!103077) b_and!127607 (not b!1730928) (not b!1730922) (not b!1730946) (not tb!103083) (not b!1730930) (not b!1730932) (not start!170130) b_and!127613 (not b!1730926) (not b!1730927) b_and!127609 (not b!1730945) b_and!127615 (not b!1730943) (not b!1730951) (not b!1730924) (not b!1730933) (not b_lambda!55223) (not b!1730952) (not b!1730937) (not b!1730970) (not b!1730947) (not b_next!48063) (not b!1730944) b_and!127611 (not b!1730941) (not b_next!48065) (not b!1730950) b_and!127605 (not b!1730925) (not b!1730936) (not b_next!48067) (not b!1730923) (not tb!103089) (not b!1730939) (not b!1730942) (not b_next!48069) (not b!1730949) (not b_next!48061) (not b_next!48059) (not b!1730969) (not b_lambda!55219) (not b!1730938) (not b_lambda!55221) (not b!1730934))
(check-sat b_and!127609 b_and!127615 (not b_next!48063) b_and!127607 b_and!127611 (not b_next!48065) b_and!127605 (not b_next!48067) (not b_next!48069) b_and!127613 (not b_next!48061) (not b_next!48059))
(get-model)

(declare-fun d!529907 () Bool)

(declare-fun c!282786 () Bool)

(assert (=> d!529907 (= c!282786 (isEmpty!11941 lt!664042))))

(declare-fun e!1107455 () Bool)

(assert (=> d!529907 (= (prefixMatch!582 lt!664054 lt!664042) e!1107455)))

(declare-fun b!1730977 () Bool)

(declare-fun lostCause!531 (Regex!4697) Bool)

(assert (=> b!1730977 (= e!1107455 (not (lostCause!531 lt!664054)))))

(declare-fun b!1730978 () Bool)

(declare-fun derivativeStep!1189 (Regex!4697 C!9568) Regex!4697)

(declare-fun tail!2586 (List!19051) List!19051)

(assert (=> b!1730978 (= e!1107455 (prefixMatch!582 (derivativeStep!1189 lt!664054 (head!3938 lt!664042)) (tail!2586 lt!664042)))))

(assert (= (and d!529907 c!282786) b!1730977))

(assert (= (and d!529907 (not c!282786)) b!1730978))

(declare-fun m!2139253 () Bool)

(assert (=> d!529907 m!2139253))

(declare-fun m!2139255 () Bool)

(assert (=> b!1730977 m!2139255))

(declare-fun m!2139257 () Bool)

(assert (=> b!1730978 m!2139257))

(assert (=> b!1730978 m!2139257))

(declare-fun m!2139259 () Bool)

(assert (=> b!1730978 m!2139259))

(declare-fun m!2139261 () Bool)

(assert (=> b!1730978 m!2139261))

(assert (=> b!1730978 m!2139259))

(assert (=> b!1730978 m!2139261))

(declare-fun m!2139263 () Bool)

(assert (=> b!1730978 m!2139263))

(assert (=> b!1730936 d!529907))

(declare-fun b!1730988 () Bool)

(declare-fun e!1107461 () List!19051)

(assert (=> b!1730988 (= e!1107461 (Cons!18981 (h!24382 lt!664039) (++!5194 (t!160710 lt!664039) (Cons!18981 (head!3938 suffix!1421) Nil!18981))))))

(declare-fun b!1730987 () Bool)

(assert (=> b!1730987 (= e!1107461 (Cons!18981 (head!3938 suffix!1421) Nil!18981))))

(declare-fun d!529909 () Bool)

(declare-fun e!1107460 () Bool)

(assert (=> d!529909 e!1107460))

(declare-fun res!777409 () Bool)

(assert (=> d!529909 (=> (not res!777409) (not e!1107460))))

(declare-fun lt!664071 () List!19051)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2717 (List!19051) (InoxSet C!9568))

(assert (=> d!529909 (= res!777409 (= (content!2717 lt!664071) ((_ map or) (content!2717 lt!664039) (content!2717 (Cons!18981 (head!3938 suffix!1421) Nil!18981)))))))

(assert (=> d!529909 (= lt!664071 e!1107461)))

(declare-fun c!282789 () Bool)

(assert (=> d!529909 (= c!282789 ((_ is Nil!18981) lt!664039))))

(assert (=> d!529909 (= (++!5194 lt!664039 (Cons!18981 (head!3938 suffix!1421) Nil!18981)) lt!664071)))

(declare-fun b!1730989 () Bool)

(declare-fun res!777410 () Bool)

(assert (=> b!1730989 (=> (not res!777410) (not e!1107460))))

(assert (=> b!1730989 (= res!777410 (= (size!15082 lt!664071) (+ (size!15082 lt!664039) (size!15082 (Cons!18981 (head!3938 suffix!1421) Nil!18981)))))))

(declare-fun b!1730990 () Bool)

(assert (=> b!1730990 (= e!1107460 (or (not (= (Cons!18981 (head!3938 suffix!1421) Nil!18981) Nil!18981)) (= lt!664071 lt!664039)))))

(assert (= (and d!529909 c!282789) b!1730987))

(assert (= (and d!529909 (not c!282789)) b!1730988))

(assert (= (and d!529909 res!777409) b!1730989))

(assert (= (and b!1730989 res!777410) b!1730990))

(declare-fun m!2139265 () Bool)

(assert (=> b!1730988 m!2139265))

(declare-fun m!2139267 () Bool)

(assert (=> d!529909 m!2139267))

(declare-fun m!2139269 () Bool)

(assert (=> d!529909 m!2139269))

(declare-fun m!2139271 () Bool)

(assert (=> d!529909 m!2139271))

(declare-fun m!2139273 () Bool)

(assert (=> b!1730989 m!2139273))

(declare-fun m!2139275 () Bool)

(assert (=> b!1730989 m!2139275))

(declare-fun m!2139277 () Bool)

(assert (=> b!1730989 m!2139277))

(assert (=> b!1730936 d!529909))

(declare-fun d!529911 () Bool)

(assert (=> d!529911 (= (head!3938 suffix!1421) (h!24382 suffix!1421))))

(assert (=> b!1730936 d!529911))

(declare-fun d!529913 () Bool)

(declare-fun lt!664074 () Unit!32837)

(declare-fun lemma!345 (List!19052 LexerInterface!2998 List!19052) Unit!32837)

(assert (=> d!529913 (= lt!664074 (lemma!345 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69371 () Int)

(declare-datatypes ((List!19053 0))(
  ( (Nil!18983) (Cons!18983 (h!24384 Regex!4697) (t!160760 List!19053)) )
))
(declare-fun generalisedUnion!353 (List!19053) Regex!4697)

(declare-fun map!3909 (List!19052 Int) List!19053)

(assert (=> d!529913 (= (rulesRegex!727 thiss!24550 rules!3447) (generalisedUnion!353 (map!3909 rules!3447 lambda!69371)))))

(declare-fun bs!402616 () Bool)

(assert (= bs!402616 d!529913))

(declare-fun m!2139279 () Bool)

(assert (=> bs!402616 m!2139279))

(declare-fun m!2139281 () Bool)

(assert (=> bs!402616 m!2139281))

(assert (=> bs!402616 m!2139281))

(declare-fun m!2139283 () Bool)

(assert (=> bs!402616 m!2139283))

(assert (=> b!1730936 d!529913))

(declare-fun d!529915 () Bool)

(assert (=> d!529915 (= (inv!24546 (tag!3695 (rule!5347 token!523))) (= (mod (str.len (value!105688 (tag!3695 (rule!5347 token!523)))) 2) 0))))

(assert (=> b!1730937 d!529915))

(declare-fun d!529917 () Bool)

(declare-fun res!777413 () Bool)

(declare-fun e!1107464 () Bool)

(assert (=> d!529917 (=> (not res!777413) (not e!1107464))))

(declare-fun semiInverseModEq!1334 (Int Int) Bool)

(assert (=> d!529917 (= res!777413 (semiInverseModEq!1334 (toChars!4735 (transformation!3369 (rule!5347 token!523))) (toValue!4876 (transformation!3369 (rule!5347 token!523)))))))

(assert (=> d!529917 (= (inv!24551 (transformation!3369 (rule!5347 token!523))) e!1107464)))

(declare-fun b!1730993 () Bool)

(declare-fun equivClasses!1275 (Int Int) Bool)

(assert (=> b!1730993 (= e!1107464 (equivClasses!1275 (toChars!4735 (transformation!3369 (rule!5347 token!523))) (toValue!4876 (transformation!3369 (rule!5347 token!523)))))))

(assert (= (and d!529917 res!777413) b!1730993))

(declare-fun m!2139285 () Bool)

(assert (=> d!529917 m!2139285))

(declare-fun m!2139287 () Bool)

(assert (=> b!1730993 m!2139287))

(assert (=> b!1730937 d!529917))

(declare-fun d!529919 () Bool)

(declare-fun c!282792 () Bool)

(assert (=> d!529919 (= c!282792 ((_ is Node!6313) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))))

(declare-fun e!1107469 () Bool)

(assert (=> d!529919 (= (inv!24553 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))) e!1107469)))

(declare-fun b!1731000 () Bool)

(declare-fun inv!24555 (Conc!6313) Bool)

(assert (=> b!1731000 (= e!1107469 (inv!24555 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))))

(declare-fun b!1731001 () Bool)

(declare-fun e!1107470 () Bool)

(assert (=> b!1731001 (= e!1107469 e!1107470)))

(declare-fun res!777416 () Bool)

(assert (=> b!1731001 (= res!777416 (not ((_ is Leaf!9218) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))))))

(assert (=> b!1731001 (=> res!777416 e!1107470)))

(declare-fun b!1731002 () Bool)

(declare-fun inv!24556 (Conc!6313) Bool)

(assert (=> b!1731002 (= e!1107470 (inv!24556 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))))

(assert (= (and d!529919 c!282792) b!1731000))

(assert (= (and d!529919 (not c!282792)) b!1731001))

(assert (= (and b!1731001 (not res!777416)) b!1731002))

(declare-fun m!2139289 () Bool)

(assert (=> b!1731000 m!2139289))

(declare-fun m!2139291 () Bool)

(assert (=> b!1731002 m!2139291))

(assert (=> b!1730970 d!529919))

(declare-fun b!1731013 () Bool)

(declare-fun e!1107479 () Bool)

(declare-fun inv!15 (TokenValue!3459) Bool)

(assert (=> b!1731013 (= e!1107479 (inv!15 (value!105689 token!523)))))

(declare-fun b!1731014 () Bool)

(declare-fun e!1107477 () Bool)

(declare-fun inv!16 (TokenValue!3459) Bool)

(assert (=> b!1731014 (= e!1107477 (inv!16 (value!105689 token!523)))))

(declare-fun b!1731015 () Bool)

(declare-fun res!777419 () Bool)

(assert (=> b!1731015 (=> res!777419 e!1107479)))

(assert (=> b!1731015 (= res!777419 (not ((_ is IntegerValue!10379) (value!105689 token!523))))))

(declare-fun e!1107478 () Bool)

(assert (=> b!1731015 (= e!1107478 e!1107479)))

(declare-fun b!1731016 () Bool)

(assert (=> b!1731016 (= e!1107477 e!1107478)))

(declare-fun c!282798 () Bool)

(assert (=> b!1731016 (= c!282798 ((_ is IntegerValue!10378) (value!105689 token!523)))))

(declare-fun b!1731017 () Bool)

(declare-fun inv!17 (TokenValue!3459) Bool)

(assert (=> b!1731017 (= e!1107478 (inv!17 (value!105689 token!523)))))

(declare-fun d!529921 () Bool)

(declare-fun c!282797 () Bool)

(assert (=> d!529921 (= c!282797 ((_ is IntegerValue!10377) (value!105689 token!523)))))

(assert (=> d!529921 (= (inv!21 (value!105689 token!523)) e!1107477)))

(assert (= (and d!529921 c!282797) b!1731014))

(assert (= (and d!529921 (not c!282797)) b!1731016))

(assert (= (and b!1731016 c!282798) b!1731017))

(assert (= (and b!1731016 (not c!282798)) b!1731015))

(assert (= (and b!1731015 (not res!777419)) b!1731013))

(declare-fun m!2139295 () Bool)

(assert (=> b!1731013 m!2139295))

(declare-fun m!2139297 () Bool)

(assert (=> b!1731014 m!2139297))

(declare-fun m!2139299 () Bool)

(assert (=> b!1731017 m!2139299))

(assert (=> b!1730933 d!529921))

(declare-fun d!529927 () Bool)

(assert (=> d!529927 (= (maxPrefixOneRule!928 thiss!24550 (rule!5347 (_1!10731 lt!664033)) lt!664045) (Some!3762 (tuple2!18659 (Token!6305 (apply!5174 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) (seqFromList!2343 lt!664055)) (rule!5347 (_1!10731 lt!664033)) (size!15082 lt!664055) lt!664055) (_2!10731 lt!664033))))))

(declare-fun lt!664083 () Unit!32837)

(declare-fun choose!10579 (LexerInterface!2998 List!19052 List!19051 List!19051 List!19051 Rule!6538) Unit!32837)

(assert (=> d!529927 (= lt!664083 (choose!10579 thiss!24550 rules!3447 lt!664055 lt!664045 (_2!10731 lt!664033) (rule!5347 (_1!10731 lt!664033))))))

(assert (=> d!529927 (not (isEmpty!11942 rules!3447))))

(assert (=> d!529927 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!327 thiss!24550 rules!3447 lt!664055 lt!664045 (_2!10731 lt!664033) (rule!5347 (_1!10731 lt!664033))) lt!664083)))

(declare-fun bs!402618 () Bool)

(assert (= bs!402618 d!529927))

(assert (=> bs!402618 m!2139245))

(assert (=> bs!402618 m!2139235))

(assert (=> bs!402618 m!2139229))

(declare-fun m!2139327 () Bool)

(assert (=> bs!402618 m!2139327))

(assert (=> bs!402618 m!2139241))

(assert (=> bs!402618 m!2139243))

(assert (=> bs!402618 m!2139241))

(assert (=> b!1730934 d!529927))

(declare-fun d!529933 () Bool)

(declare-fun lt!664088 () Int)

(assert (=> d!529933 (>= lt!664088 0)))

(declare-fun e!1107499 () Int)

(assert (=> d!529933 (= lt!664088 e!1107499)))

(declare-fun c!282804 () Bool)

(assert (=> d!529933 (= c!282804 ((_ is Nil!18981) lt!664055))))

(assert (=> d!529933 (= (size!15082 lt!664055) lt!664088)))

(declare-fun b!1731050 () Bool)

(assert (=> b!1731050 (= e!1107499 0)))

(declare-fun b!1731051 () Bool)

(assert (=> b!1731051 (= e!1107499 (+ 1 (size!15082 (t!160710 lt!664055))))))

(assert (= (and d!529933 c!282804) b!1731050))

(assert (= (and d!529933 (not c!282804)) b!1731051))

(declare-fun m!2139329 () Bool)

(assert (=> b!1731051 m!2139329))

(assert (=> b!1730934 d!529933))

(declare-fun d!529935 () Bool)

(declare-fun lt!664093 () List!19051)

(assert (=> d!529935 (= (++!5194 lt!664055 lt!664093) lt!664045)))

(declare-fun e!1107506 () List!19051)

(assert (=> d!529935 (= lt!664093 e!1107506)))

(declare-fun c!282807 () Bool)

(assert (=> d!529935 (= c!282807 ((_ is Cons!18981) lt!664055))))

(assert (=> d!529935 (>= (size!15082 lt!664045) (size!15082 lt!664055))))

(assert (=> d!529935 (= (getSuffix!804 lt!664045 lt!664055) lt!664093)))

(declare-fun b!1731062 () Bool)

(assert (=> b!1731062 (= e!1107506 (getSuffix!804 (tail!2586 lt!664045) (t!160710 lt!664055)))))

(declare-fun b!1731063 () Bool)

(assert (=> b!1731063 (= e!1107506 lt!664045)))

(assert (= (and d!529935 c!282807) b!1731062))

(assert (= (and d!529935 (not c!282807)) b!1731063))

(declare-fun m!2139351 () Bool)

(assert (=> d!529935 m!2139351))

(declare-fun m!2139353 () Bool)

(assert (=> d!529935 m!2139353))

(assert (=> d!529935 m!2139245))

(declare-fun m!2139355 () Bool)

(assert (=> b!1731062 m!2139355))

(assert (=> b!1731062 m!2139355))

(declare-fun m!2139357 () Bool)

(assert (=> b!1731062 m!2139357))

(assert (=> b!1730934 d!529935))

(declare-fun d!529941 () Bool)

(assert (=> d!529941 (= (apply!5174 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) (seqFromList!2343 lt!664055)) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (seqFromList!2343 lt!664055)))))

(declare-fun b_lambda!55225 () Bool)

(assert (=> (not b_lambda!55225) (not d!529941)))

(declare-fun tb!103095 () Bool)

(declare-fun t!160713 () Bool)

(assert (=> (and b!1730940 (= (toValue!4876 (transformation!3369 (rule!5347 token!523))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160713) tb!103095))

(declare-fun result!123958 () Bool)

(assert (=> tb!103095 (= result!123958 (inv!21 (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (seqFromList!2343 lt!664055))))))

(declare-fun m!2139359 () Bool)

(assert (=> tb!103095 m!2139359))

(assert (=> d!529941 t!160713))

(declare-fun b_and!127617 () Bool)

(assert (= b_and!127611 (and (=> t!160713 result!123958) b_and!127617)))

(declare-fun tb!103097 () Bool)

(declare-fun t!160715 () Bool)

(assert (=> (and b!1730953 (= (toValue!4876 (transformation!3369 rule!422)) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160715) tb!103097))

(declare-fun result!123960 () Bool)

(assert (= result!123960 result!123958))

(assert (=> d!529941 t!160715))

(declare-fun b_and!127619 () Bool)

(assert (= b_and!127613 (and (=> t!160715 result!123960) b_and!127619)))

(declare-fun t!160717 () Bool)

(declare-fun tb!103099 () Bool)

(assert (=> (and b!1730948 (= (toValue!4876 (transformation!3369 (h!24383 rules!3447))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160717) tb!103099))

(declare-fun result!123962 () Bool)

(assert (= result!123962 result!123958))

(assert (=> d!529941 t!160717))

(declare-fun b_and!127621 () Bool)

(assert (= b_and!127615 (and (=> t!160717 result!123962) b_and!127621)))

(assert (=> d!529941 m!2139241))

(declare-fun m!2139361 () Bool)

(assert (=> d!529941 m!2139361))

(assert (=> b!1730934 d!529941))

(declare-fun b!1731131 () Bool)

(declare-fun res!777492 () Bool)

(declare-fun e!1107541 () Bool)

(assert (=> b!1731131 (=> (not res!777492) (not e!1107541))))

(declare-fun lt!664137 () Option!3763)

(assert (=> b!1731131 (= res!777492 (= (++!5194 (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664137)))) (_2!10731 (get!5664 lt!664137))) lt!664045))))

(declare-fun b!1731132 () Bool)

(declare-fun res!777491 () Bool)

(assert (=> b!1731132 (=> (not res!777491) (not e!1107541))))

(assert (=> b!1731132 (= res!777491 (= (value!105689 (_1!10731 (get!5664 lt!664137))) (apply!5174 (transformation!3369 (rule!5347 (_1!10731 (get!5664 lt!664137)))) (seqFromList!2343 (originalCharacters!4183 (_1!10731 (get!5664 lt!664137)))))))))

(declare-fun b!1731133 () Bool)

(declare-fun res!777497 () Bool)

(assert (=> b!1731133 (=> (not res!777497) (not e!1107541))))

(assert (=> b!1731133 (= res!777497 (= (rule!5347 (_1!10731 (get!5664 lt!664137))) (rule!5347 (_1!10731 lt!664033))))))

(declare-fun b!1731134 () Bool)

(declare-fun e!1107542 () Bool)

(assert (=> b!1731134 (= e!1107542 e!1107541)))

(declare-fun res!777494 () Bool)

(assert (=> b!1731134 (=> (not res!777494) (not e!1107541))))

(assert (=> b!1731134 (= res!777494 (matchR!2171 (regex!3369 (rule!5347 (_1!10731 lt!664033))) (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664137))))))))

(declare-fun b!1731135 () Bool)

(declare-fun res!777493 () Bool)

(assert (=> b!1731135 (=> (not res!777493) (not e!1107541))))

(assert (=> b!1731135 (= res!777493 (< (size!15082 (_2!10731 (get!5664 lt!664137))) (size!15082 lt!664045)))))

(declare-fun d!529943 () Bool)

(assert (=> d!529943 e!1107542))

(declare-fun res!777495 () Bool)

(assert (=> d!529943 (=> res!777495 e!1107542)))

(declare-fun isEmpty!11944 (Option!3763) Bool)

(assert (=> d!529943 (= res!777495 (isEmpty!11944 lt!664137))))

(declare-fun e!1107539 () Option!3763)

(assert (=> d!529943 (= lt!664137 e!1107539)))

(declare-fun c!282820 () Bool)

(declare-datatypes ((tuple2!18660 0))(
  ( (tuple2!18661 (_1!10732 List!19051) (_2!10732 List!19051)) )
))
(declare-fun lt!664136 () tuple2!18660)

(assert (=> d!529943 (= c!282820 (isEmpty!11941 (_1!10732 lt!664136)))))

(declare-fun findLongestMatch!339 (Regex!4697 List!19051) tuple2!18660)

(assert (=> d!529943 (= lt!664136 (findLongestMatch!339 (regex!3369 (rule!5347 (_1!10731 lt!664033))) lt!664045))))

(assert (=> d!529943 (ruleValid!868 thiss!24550 (rule!5347 (_1!10731 lt!664033)))))

(assert (=> d!529943 (= (maxPrefixOneRule!928 thiss!24550 (rule!5347 (_1!10731 lt!664033)) lt!664045) lt!664137)))

(declare-fun b!1731136 () Bool)

(assert (=> b!1731136 (= e!1107539 (Some!3762 (tuple2!18659 (Token!6305 (apply!5174 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) (seqFromList!2343 (_1!10732 lt!664136))) (rule!5347 (_1!10731 lt!664033)) (size!15081 (seqFromList!2343 (_1!10732 lt!664136))) (_1!10732 lt!664136)) (_2!10732 lt!664136))))))

(declare-fun lt!664135 () Unit!32837)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!396 (Regex!4697 List!19051) Unit!32837)

(assert (=> b!1731136 (= lt!664135 (longestMatchIsAcceptedByMatchOrIsEmpty!396 (regex!3369 (rule!5347 (_1!10731 lt!664033))) lt!664045))))

(declare-fun res!777496 () Bool)

(declare-fun findLongestMatchInner!412 (Regex!4697 List!19051 Int List!19051 List!19051 Int) tuple2!18660)

(assert (=> b!1731136 (= res!777496 (isEmpty!11941 (_1!10732 (findLongestMatchInner!412 (regex!3369 (rule!5347 (_1!10731 lt!664033))) Nil!18981 (size!15082 Nil!18981) lt!664045 lt!664045 (size!15082 lt!664045)))))))

(declare-fun e!1107540 () Bool)

(assert (=> b!1731136 (=> res!777496 e!1107540)))

(assert (=> b!1731136 e!1107540))

(declare-fun lt!664139 () Unit!32837)

(assert (=> b!1731136 (= lt!664139 lt!664135)))

(declare-fun lt!664138 () Unit!32837)

(assert (=> b!1731136 (= lt!664138 (lemmaSemiInverse!515 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) (seqFromList!2343 (_1!10732 lt!664136))))))

(declare-fun b!1731137 () Bool)

(assert (=> b!1731137 (= e!1107539 None!3762)))

(declare-fun b!1731138 () Bool)

(assert (=> b!1731138 (= e!1107540 (matchR!2171 (regex!3369 (rule!5347 (_1!10731 lt!664033))) (_1!10732 (findLongestMatchInner!412 (regex!3369 (rule!5347 (_1!10731 lt!664033))) Nil!18981 (size!15082 Nil!18981) lt!664045 lt!664045 (size!15082 lt!664045)))))))

(declare-fun b!1731139 () Bool)

(assert (=> b!1731139 (= e!1107541 (= (size!15080 (_1!10731 (get!5664 lt!664137))) (size!15082 (originalCharacters!4183 (_1!10731 (get!5664 lt!664137))))))))

(assert (= (and d!529943 c!282820) b!1731137))

(assert (= (and d!529943 (not c!282820)) b!1731136))

(assert (= (and b!1731136 (not res!777496)) b!1731138))

(assert (= (and d!529943 (not res!777495)) b!1731134))

(assert (= (and b!1731134 res!777494) b!1731131))

(assert (= (and b!1731131 res!777492) b!1731135))

(assert (= (and b!1731135 res!777493) b!1731133))

(assert (= (and b!1731133 res!777497) b!1731132))

(assert (= (and b!1731132 res!777491) b!1731139))

(declare-fun m!2139425 () Bool)

(assert (=> b!1731139 m!2139425))

(declare-fun m!2139427 () Bool)

(assert (=> b!1731139 m!2139427))

(assert (=> b!1731135 m!2139425))

(declare-fun m!2139429 () Bool)

(assert (=> b!1731135 m!2139429))

(assert (=> b!1731135 m!2139353))

(declare-fun m!2139431 () Bool)

(assert (=> b!1731138 m!2139431))

(assert (=> b!1731138 m!2139353))

(assert (=> b!1731138 m!2139431))

(assert (=> b!1731138 m!2139353))

(declare-fun m!2139433 () Bool)

(assert (=> b!1731138 m!2139433))

(declare-fun m!2139435 () Bool)

(assert (=> b!1731138 m!2139435))

(declare-fun m!2139437 () Bool)

(assert (=> b!1731136 m!2139437))

(declare-fun m!2139439 () Bool)

(assert (=> b!1731136 m!2139439))

(declare-fun m!2139441 () Bool)

(assert (=> b!1731136 m!2139441))

(declare-fun m!2139443 () Bool)

(assert (=> b!1731136 m!2139443))

(assert (=> b!1731136 m!2139353))

(assert (=> b!1731136 m!2139431))

(assert (=> b!1731136 m!2139353))

(assert (=> b!1731136 m!2139433))

(assert (=> b!1731136 m!2139431))

(assert (=> b!1731136 m!2139441))

(assert (=> b!1731136 m!2139441))

(declare-fun m!2139445 () Bool)

(assert (=> b!1731136 m!2139445))

(assert (=> b!1731136 m!2139441))

(declare-fun m!2139447 () Bool)

(assert (=> b!1731136 m!2139447))

(assert (=> b!1731132 m!2139425))

(declare-fun m!2139449 () Bool)

(assert (=> b!1731132 m!2139449))

(assert (=> b!1731132 m!2139449))

(declare-fun m!2139451 () Bool)

(assert (=> b!1731132 m!2139451))

(declare-fun m!2139453 () Bool)

(assert (=> d!529943 m!2139453))

(declare-fun m!2139455 () Bool)

(assert (=> d!529943 m!2139455))

(declare-fun m!2139457 () Bool)

(assert (=> d!529943 m!2139457))

(declare-fun m!2139459 () Bool)

(assert (=> d!529943 m!2139459))

(assert (=> b!1731133 m!2139425))

(assert (=> b!1731131 m!2139425))

(declare-fun m!2139461 () Bool)

(assert (=> b!1731131 m!2139461))

(assert (=> b!1731131 m!2139461))

(declare-fun m!2139463 () Bool)

(assert (=> b!1731131 m!2139463))

(assert (=> b!1731131 m!2139463))

(declare-fun m!2139465 () Bool)

(assert (=> b!1731131 m!2139465))

(assert (=> b!1731134 m!2139425))

(assert (=> b!1731134 m!2139461))

(assert (=> b!1731134 m!2139461))

(assert (=> b!1731134 m!2139463))

(assert (=> b!1731134 m!2139463))

(declare-fun m!2139467 () Bool)

(assert (=> b!1731134 m!2139467))

(assert (=> b!1730934 d!529943))

(declare-fun d!529959 () Bool)

(declare-fun fromListB!1075 (List!19051) BalanceConc!12570)

(assert (=> d!529959 (= (seqFromList!2343 lt!664055) (fromListB!1075 lt!664055))))

(declare-fun bs!402621 () Bool)

(assert (= bs!402621 d!529959))

(declare-fun m!2139469 () Bool)

(assert (=> bs!402621 m!2139469))

(assert (=> b!1730934 d!529959))

(declare-fun d!529961 () Bool)

(assert (=> d!529961 (= (_2!10731 lt!664033) lt!664061)))

(declare-fun lt!664142 () Unit!32837)

(declare-fun choose!10581 (List!19051 List!19051 List!19051 List!19051 List!19051) Unit!32837)

(assert (=> d!529961 (= lt!664142 (choose!10581 lt!664055 (_2!10731 lt!664033) lt!664055 lt!664061 lt!664045))))

(assert (=> d!529961 (isPrefix!1610 lt!664055 lt!664045)))

(assert (=> d!529961 (= (lemmaSamePrefixThenSameSuffix!754 lt!664055 (_2!10731 lt!664033) lt!664055 lt!664061 lt!664045) lt!664142)))

(declare-fun bs!402622 () Bool)

(assert (= bs!402622 d!529961))

(declare-fun m!2139471 () Bool)

(assert (=> bs!402622 m!2139471))

(assert (=> bs!402622 m!2139189))

(assert (=> b!1730934 d!529961))

(declare-fun d!529963 () Bool)

(declare-fun res!777502 () Bool)

(declare-fun e!1107545 () Bool)

(assert (=> d!529963 (=> (not res!777502) (not e!1107545))))

(assert (=> d!529963 (= res!777502 (not (isEmpty!11941 (originalCharacters!4183 token!523))))))

(assert (=> d!529963 (= (inv!24552 token!523) e!1107545)))

(declare-fun b!1731144 () Bool)

(declare-fun res!777503 () Bool)

(assert (=> b!1731144 (=> (not res!777503) (not e!1107545))))

(assert (=> b!1731144 (= res!777503 (= (originalCharacters!4183 token!523) (list!7674 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 token!523))) (value!105689 token!523)))))))

(declare-fun b!1731145 () Bool)

(assert (=> b!1731145 (= e!1107545 (= (size!15080 token!523) (size!15082 (originalCharacters!4183 token!523))))))

(assert (= (and d!529963 res!777502) b!1731144))

(assert (= (and b!1731144 res!777503) b!1731145))

(declare-fun b_lambda!55229 () Bool)

(assert (=> (not b_lambda!55229) (not b!1731144)))

(declare-fun t!160719 () Bool)

(declare-fun tb!103101 () Bool)

(assert (=> (and b!1730940 (= (toChars!4735 (transformation!3369 (rule!5347 token!523))) (toChars!4735 (transformation!3369 (rule!5347 token!523)))) t!160719) tb!103101))

(declare-fun b!1731146 () Bool)

(declare-fun e!1107546 () Bool)

(declare-fun tp!493605 () Bool)

(assert (=> b!1731146 (= e!1107546 (and (inv!24553 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 token!523))) (value!105689 token!523)))) tp!493605))))

(declare-fun result!123964 () Bool)

(assert (=> tb!103101 (= result!123964 (and (inv!24554 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 token!523))) (value!105689 token!523))) e!1107546))))

(assert (= tb!103101 b!1731146))

(declare-fun m!2139473 () Bool)

(assert (=> b!1731146 m!2139473))

(declare-fun m!2139475 () Bool)

(assert (=> tb!103101 m!2139475))

(assert (=> b!1731144 t!160719))

(declare-fun b_and!127629 () Bool)

(assert (= b_and!127605 (and (=> t!160719 result!123964) b_and!127629)))

(declare-fun tb!103103 () Bool)

(declare-fun t!160721 () Bool)

(assert (=> (and b!1730953 (= (toChars!4735 (transformation!3369 rule!422)) (toChars!4735 (transformation!3369 (rule!5347 token!523)))) t!160721) tb!103103))

(declare-fun result!123966 () Bool)

(assert (= result!123966 result!123964))

(assert (=> b!1731144 t!160721))

(declare-fun b_and!127631 () Bool)

(assert (= b_and!127607 (and (=> t!160721 result!123966) b_and!127631)))

(declare-fun tb!103105 () Bool)

(declare-fun t!160723 () Bool)

(assert (=> (and b!1730948 (= (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toChars!4735 (transformation!3369 (rule!5347 token!523)))) t!160723) tb!103105))

(declare-fun result!123968 () Bool)

(assert (= result!123968 result!123964))

(assert (=> b!1731144 t!160723))

(declare-fun b_and!127633 () Bool)

(assert (= b_and!127609 (and (=> t!160723 result!123968) b_and!127633)))

(declare-fun m!2139477 () Bool)

(assert (=> d!529963 m!2139477))

(declare-fun m!2139479 () Bool)

(assert (=> b!1731144 m!2139479))

(assert (=> b!1731144 m!2139479))

(declare-fun m!2139481 () Bool)

(assert (=> b!1731144 m!2139481))

(declare-fun m!2139483 () Bool)

(assert (=> b!1731145 m!2139483))

(assert (=> start!170130 d!529963))

(declare-fun d!529965 () Bool)

(declare-fun list!7675 (Conc!6313) List!19051)

(assert (=> d!529965 (= (list!7674 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))) (list!7675 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))))

(declare-fun bs!402623 () Bool)

(assert (= bs!402623 d!529965))

(declare-fun m!2139485 () Bool)

(assert (=> bs!402623 m!2139485))

(assert (=> b!1730952 d!529965))

(declare-fun bs!402624 () Bool)

(declare-fun d!529967 () Bool)

(assert (= bs!402624 (and d!529967 b!1730924)))

(declare-fun lambda!69374 () Int)

(assert (=> bs!402624 (= lambda!69374 lambda!69368)))

(declare-fun b!1731151 () Bool)

(declare-fun e!1107549 () Bool)

(assert (=> b!1731151 (= e!1107549 true)))

(assert (=> d!529967 e!1107549))

(assert (= d!529967 b!1731151))

(assert (=> b!1731151 (< (dynLambda!8848 order!11699 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) (dynLambda!8849 order!11701 lambda!69374))))

(assert (=> b!1731151 (< (dynLambda!8850 order!11703 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) (dynLambda!8849 order!11701 lambda!69374))))

(assert (=> d!529967 (= (list!7674 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))) (list!7674 lt!664063))))

(declare-fun lt!664145 () Unit!32837)

(declare-fun ForallOf!277 (Int BalanceConc!12570) Unit!32837)

(assert (=> d!529967 (= lt!664145 (ForallOf!277 lambda!69374 lt!664063))))

(assert (=> d!529967 (= (lemmaSemiInverse!515 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) lt!664063) lt!664145)))

(declare-fun b_lambda!55231 () Bool)

(assert (=> (not b_lambda!55231) (not d!529967)))

(assert (=> d!529967 t!160698))

(declare-fun b_and!127635 () Bool)

(assert (= b_and!127629 (and (=> t!160698 result!123944) b_and!127635)))

(assert (=> d!529967 t!160700))

(declare-fun b_and!127637 () Bool)

(assert (= b_and!127631 (and (=> t!160700 result!123946) b_and!127637)))

(assert (=> d!529967 t!160702))

(declare-fun b_and!127639 () Bool)

(assert (= b_and!127633 (and (=> t!160702 result!123948) b_and!127639)))

(declare-fun b_lambda!55233 () Bool)

(assert (=> (not b_lambda!55233) (not d!529967)))

(assert (=> d!529967 t!160704))

(declare-fun b_and!127641 () Bool)

(assert (= b_and!127617 (and (=> t!160704 result!123950) b_and!127641)))

(assert (=> d!529967 t!160706))

(declare-fun b_and!127643 () Bool)

(assert (= b_and!127619 (and (=> t!160706 result!123954) b_and!127643)))

(assert (=> d!529967 t!160708))

(declare-fun b_and!127645 () Bool)

(assert (= b_and!127621 (and (=> t!160708 result!123956) b_and!127645)))

(declare-fun m!2139487 () Bool)

(assert (=> d!529967 m!2139487))

(assert (=> d!529967 m!2139195))

(assert (=> d!529967 m!2139215))

(assert (=> d!529967 m!2139215))

(assert (=> d!529967 m!2139217))

(assert (=> d!529967 m!2139217))

(assert (=> d!529967 m!2139219))

(assert (=> b!1730952 d!529967))

(declare-fun d!529969 () Bool)

(assert (=> d!529969 (= (size!15080 (_1!10731 lt!664033)) (size!15082 (originalCharacters!4183 (_1!10731 lt!664033))))))

(declare-fun Unit!32839 () Unit!32837)

(assert (=> d!529969 (= (lemmaCharactersSize!441 (_1!10731 lt!664033)) Unit!32839)))

(declare-fun bs!402625 () Bool)

(assert (= bs!402625 d!529969))

(declare-fun m!2139489 () Bool)

(assert (=> bs!402625 m!2139489))

(assert (=> b!1730930 d!529969))

(declare-fun d!529971 () Bool)

(assert (=> d!529971 (= (seqFromList!2343 (originalCharacters!4183 (_1!10731 lt!664033))) (fromListB!1075 (originalCharacters!4183 (_1!10731 lt!664033))))))

(declare-fun bs!402626 () Bool)

(assert (= bs!402626 d!529971))

(declare-fun m!2139491 () Bool)

(assert (=> bs!402626 m!2139491))

(assert (=> b!1730930 d!529971))

(declare-fun b!1731158 () Bool)

(declare-fun e!1107554 () Bool)

(assert (=> b!1731158 (= e!1107554 true)))

(declare-fun d!529973 () Bool)

(assert (=> d!529973 e!1107554))

(assert (= d!529973 b!1731158))

(declare-fun order!11705 () Int)

(declare-fun lambda!69377 () Int)

(declare-fun dynLambda!8853 (Int Int) Int)

(assert (=> b!1731158 (< (dynLambda!8848 order!11699 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) (dynLambda!8853 order!11705 lambda!69377))))

(assert (=> b!1731158 (< (dynLambda!8850 order!11703 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) (dynLambda!8853 order!11705 lambda!69377))))

(assert (=> d!529973 (= (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (seqFromList!2343 (originalCharacters!4183 (_1!10731 lt!664033)))))))

(declare-fun lt!664148 () Unit!32837)

(declare-fun Forall2of!90 (Int BalanceConc!12570 BalanceConc!12570) Unit!32837)

(assert (=> d!529973 (= lt!664148 (Forall2of!90 lambda!69377 lt!664063 (seqFromList!2343 (originalCharacters!4183 (_1!10731 lt!664033)))))))

(assert (=> d!529973 (= (list!7674 lt!664063) (list!7674 (seqFromList!2343 (originalCharacters!4183 (_1!10731 lt!664033)))))))

(assert (=> d!529973 (= (lemmaEqSameImage!294 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) lt!664063 (seqFromList!2343 (originalCharacters!4183 (_1!10731 lt!664033)))) lt!664148)))

(declare-fun b_lambda!55235 () Bool)

(assert (=> (not b_lambda!55235) (not d!529973)))

(assert (=> d!529973 t!160704))

(declare-fun b_and!127647 () Bool)

(assert (= b_and!127641 (and (=> t!160704 result!123950) b_and!127647)))

(assert (=> d!529973 t!160706))

(declare-fun b_and!127649 () Bool)

(assert (= b_and!127643 (and (=> t!160706 result!123954) b_and!127649)))

(assert (=> d!529973 t!160708))

(declare-fun b_and!127651 () Bool)

(assert (= b_and!127645 (and (=> t!160708 result!123956) b_and!127651)))

(declare-fun b_lambda!55237 () Bool)

(assert (=> (not b_lambda!55237) (not d!529973)))

(declare-fun tb!103107 () Bool)

(declare-fun t!160725 () Bool)

(assert (=> (and b!1730940 (= (toValue!4876 (transformation!3369 (rule!5347 token!523))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160725) tb!103107))

(declare-fun result!123970 () Bool)

(assert (=> tb!103107 (= result!123970 (inv!21 (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (seqFromList!2343 (originalCharacters!4183 (_1!10731 lt!664033))))))))

(declare-fun m!2139493 () Bool)

(assert (=> tb!103107 m!2139493))

(assert (=> d!529973 t!160725))

(declare-fun b_and!127653 () Bool)

(assert (= b_and!127647 (and (=> t!160725 result!123970) b_and!127653)))

(declare-fun t!160727 () Bool)

(declare-fun tb!103109 () Bool)

(assert (=> (and b!1730953 (= (toValue!4876 (transformation!3369 rule!422)) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160727) tb!103109))

(declare-fun result!123972 () Bool)

(assert (= result!123972 result!123970))

(assert (=> d!529973 t!160727))

(declare-fun b_and!127655 () Bool)

(assert (= b_and!127649 (and (=> t!160727 result!123972) b_and!127655)))

(declare-fun t!160729 () Bool)

(declare-fun tb!103111 () Bool)

(assert (=> (and b!1730948 (= (toValue!4876 (transformation!3369 (h!24383 rules!3447))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160729) tb!103111))

(declare-fun result!123974 () Bool)

(assert (= result!123974 result!123970))

(assert (=> d!529973 t!160729))

(declare-fun b_and!127657 () Bool)

(assert (= b_and!127651 (and (=> t!160729 result!123974) b_and!127657)))

(assert (=> d!529973 m!2139173))

(declare-fun m!2139495 () Bool)

(assert (=> d!529973 m!2139495))

(assert (=> d!529973 m!2139173))

(declare-fun m!2139497 () Bool)

(assert (=> d!529973 m!2139497))

(assert (=> d!529973 m!2139215))

(assert (=> d!529973 m!2139195))

(assert (=> d!529973 m!2139173))

(declare-fun m!2139499 () Bool)

(assert (=> d!529973 m!2139499))

(assert (=> b!1730930 d!529973))

(declare-fun d!529975 () Bool)

(declare-fun lt!664151 () Int)

(assert (=> d!529975 (= lt!664151 (size!15082 (list!7674 lt!664063)))))

(declare-fun size!15083 (Conc!6313) Int)

(assert (=> d!529975 (= lt!664151 (size!15083 (c!282783 lt!664063)))))

(assert (=> d!529975 (= (size!15081 lt!664063) lt!664151)))

(declare-fun bs!402627 () Bool)

(assert (= bs!402627 d!529975))

(assert (=> bs!402627 m!2139195))

(assert (=> bs!402627 m!2139195))

(declare-fun m!2139501 () Bool)

(assert (=> bs!402627 m!2139501))

(declare-fun m!2139503 () Bool)

(assert (=> bs!402627 m!2139503))

(assert (=> b!1730930 d!529975))

(declare-fun d!529977 () Bool)

(assert (=> d!529977 (= (apply!5174 (transformation!3369 (rule!5347 (_1!10731 lt!664033))) lt!664063) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))

(declare-fun b_lambda!55239 () Bool)

(assert (=> (not b_lambda!55239) (not d!529977)))

(assert (=> d!529977 t!160704))

(declare-fun b_and!127659 () Bool)

(assert (= b_and!127653 (and (=> t!160704 result!123950) b_and!127659)))

(assert (=> d!529977 t!160706))

(declare-fun b_and!127661 () Bool)

(assert (= b_and!127655 (and (=> t!160706 result!123954) b_and!127661)))

(assert (=> d!529977 t!160708))

(declare-fun b_and!127663 () Bool)

(assert (= b_and!127657 (and (=> t!160708 result!123956) b_and!127663)))

(assert (=> d!529977 m!2139215))

(assert (=> b!1730930 d!529977))

(declare-fun d!529979 () Bool)

(assert (=> d!529979 (= (inv!24546 (tag!3695 rule!422)) (= (mod (str.len (value!105688 (tag!3695 rule!422))) 2) 0))))

(assert (=> b!1730951 d!529979))

(declare-fun d!529981 () Bool)

(declare-fun res!777506 () Bool)

(declare-fun e!1107556 () Bool)

(assert (=> d!529981 (=> (not res!777506) (not e!1107556))))

(assert (=> d!529981 (= res!777506 (semiInverseModEq!1334 (toChars!4735 (transformation!3369 rule!422)) (toValue!4876 (transformation!3369 rule!422))))))

(assert (=> d!529981 (= (inv!24551 (transformation!3369 rule!422)) e!1107556)))

(declare-fun b!1731159 () Bool)

(assert (=> b!1731159 (= e!1107556 (equivClasses!1275 (toChars!4735 (transformation!3369 rule!422)) (toValue!4876 (transformation!3369 rule!422))))))

(assert (= (and d!529981 res!777506) b!1731159))

(declare-fun m!2139505 () Bool)

(assert (=> d!529981 m!2139505))

(declare-fun m!2139507 () Bool)

(assert (=> b!1731159 m!2139507))

(assert (=> b!1730951 d!529981))

(declare-fun d!529983 () Bool)

(assert (=> d!529983 (= (isEmpty!11941 suffix!1421) ((_ is Nil!18981) suffix!1421))))

(assert (=> b!1730932 d!529983))

(declare-fun d!529985 () Bool)

(declare-fun isBalanced!1975 (Conc!6313) Bool)

(assert (=> d!529985 (= (inv!24554 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))) (isBalanced!1975 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))))

(declare-fun bs!402628 () Bool)

(assert (= bs!402628 d!529985))

(declare-fun m!2139509 () Bool)

(assert (=> bs!402628 m!2139509))

(assert (=> tb!103083 d!529985))

(declare-fun b!1731161 () Bool)

(declare-fun e!1107558 () List!19051)

(assert (=> b!1731161 (= e!1107558 (Cons!18981 (h!24382 lt!664039) (++!5194 (t!160710 lt!664039) (Cons!18981 (head!3938 lt!664040) Nil!18981))))))

(declare-fun b!1731160 () Bool)

(assert (=> b!1731160 (= e!1107558 (Cons!18981 (head!3938 lt!664040) Nil!18981))))

(declare-fun d!529987 () Bool)

(declare-fun e!1107557 () Bool)

(assert (=> d!529987 e!1107557))

(declare-fun res!777507 () Bool)

(assert (=> d!529987 (=> (not res!777507) (not e!1107557))))

(declare-fun lt!664152 () List!19051)

(assert (=> d!529987 (= res!777507 (= (content!2717 lt!664152) ((_ map or) (content!2717 lt!664039) (content!2717 (Cons!18981 (head!3938 lt!664040) Nil!18981)))))))

(assert (=> d!529987 (= lt!664152 e!1107558)))

(declare-fun c!282822 () Bool)

(assert (=> d!529987 (= c!282822 ((_ is Nil!18981) lt!664039))))

(assert (=> d!529987 (= (++!5194 lt!664039 (Cons!18981 (head!3938 lt!664040) Nil!18981)) lt!664152)))

(declare-fun b!1731162 () Bool)

(declare-fun res!777508 () Bool)

(assert (=> b!1731162 (=> (not res!777508) (not e!1107557))))

(assert (=> b!1731162 (= res!777508 (= (size!15082 lt!664152) (+ (size!15082 lt!664039) (size!15082 (Cons!18981 (head!3938 lt!664040) Nil!18981)))))))

(declare-fun b!1731163 () Bool)

(assert (=> b!1731163 (= e!1107557 (or (not (= (Cons!18981 (head!3938 lt!664040) Nil!18981) Nil!18981)) (= lt!664152 lt!664039)))))

(assert (= (and d!529987 c!282822) b!1731160))

(assert (= (and d!529987 (not c!282822)) b!1731161))

(assert (= (and d!529987 res!777507) b!1731162))

(assert (= (and b!1731162 res!777508) b!1731163))

(declare-fun m!2139511 () Bool)

(assert (=> b!1731161 m!2139511))

(declare-fun m!2139513 () Bool)

(assert (=> d!529987 m!2139513))

(assert (=> d!529987 m!2139269))

(declare-fun m!2139515 () Bool)

(assert (=> d!529987 m!2139515))

(declare-fun m!2139517 () Bool)

(assert (=> b!1731162 m!2139517))

(assert (=> b!1731162 m!2139275))

(declare-fun m!2139519 () Bool)

(assert (=> b!1731162 m!2139519))

(assert (=> b!1730928 d!529987))

(declare-fun d!529989 () Bool)

(assert (=> d!529989 (= (head!3938 lt!664040) (h!24382 lt!664040))))

(assert (=> b!1730928 d!529989))

(declare-fun b!1731174 () Bool)

(declare-fun e!1107565 () Bool)

(assert (=> b!1731174 (= e!1107565 (isPrefix!1610 (tail!2586 (++!5194 lt!664039 (Cons!18981 (head!3938 lt!664040) Nil!18981))) (tail!2586 lt!664045)))))

(declare-fun e!1107567 () Bool)

(declare-fun b!1731175 () Bool)

(assert (=> b!1731175 (= e!1107567 (>= (size!15082 lt!664045) (size!15082 (++!5194 lt!664039 (Cons!18981 (head!3938 lt!664040) Nil!18981)))))))

(declare-fun b!1731172 () Bool)

(declare-fun e!1107566 () Bool)

(assert (=> b!1731172 (= e!1107566 e!1107565)))

(declare-fun res!777519 () Bool)

(assert (=> b!1731172 (=> (not res!777519) (not e!1107565))))

(assert (=> b!1731172 (= res!777519 (not ((_ is Nil!18981) lt!664045)))))

(declare-fun b!1731173 () Bool)

(declare-fun res!777517 () Bool)

(assert (=> b!1731173 (=> (not res!777517) (not e!1107565))))

(assert (=> b!1731173 (= res!777517 (= (head!3938 (++!5194 lt!664039 (Cons!18981 (head!3938 lt!664040) Nil!18981))) (head!3938 lt!664045)))))

(declare-fun d!529991 () Bool)

(assert (=> d!529991 e!1107567))

(declare-fun res!777520 () Bool)

(assert (=> d!529991 (=> res!777520 e!1107567)))

(declare-fun lt!664155 () Bool)

(assert (=> d!529991 (= res!777520 (not lt!664155))))

(assert (=> d!529991 (= lt!664155 e!1107566)))

(declare-fun res!777518 () Bool)

(assert (=> d!529991 (=> res!777518 e!1107566)))

(assert (=> d!529991 (= res!777518 ((_ is Nil!18981) (++!5194 lt!664039 (Cons!18981 (head!3938 lt!664040) Nil!18981))))))

(assert (=> d!529991 (= (isPrefix!1610 (++!5194 lt!664039 (Cons!18981 (head!3938 lt!664040) Nil!18981)) lt!664045) lt!664155)))

(assert (= (and d!529991 (not res!777518)) b!1731172))

(assert (= (and b!1731172 res!777519) b!1731173))

(assert (= (and b!1731173 res!777517) b!1731174))

(assert (= (and d!529991 (not res!777520)) b!1731175))

(assert (=> b!1731174 m!2139127))

(declare-fun m!2139521 () Bool)

(assert (=> b!1731174 m!2139521))

(assert (=> b!1731174 m!2139355))

(assert (=> b!1731174 m!2139521))

(assert (=> b!1731174 m!2139355))

(declare-fun m!2139523 () Bool)

(assert (=> b!1731174 m!2139523))

(assert (=> b!1731175 m!2139353))

(assert (=> b!1731175 m!2139127))

(declare-fun m!2139525 () Bool)

(assert (=> b!1731175 m!2139525))

(assert (=> b!1731173 m!2139127))

(declare-fun m!2139527 () Bool)

(assert (=> b!1731173 m!2139527))

(declare-fun m!2139529 () Bool)

(assert (=> b!1731173 m!2139529))

(assert (=> b!1730928 d!529991))

(declare-fun b!1731178 () Bool)

(declare-fun e!1107568 () Bool)

(assert (=> b!1731178 (= e!1107568 (isPrefix!1610 (tail!2586 lt!664042) (tail!2586 lt!664045)))))

(declare-fun b!1731179 () Bool)

(declare-fun e!1107570 () Bool)

(assert (=> b!1731179 (= e!1107570 (>= (size!15082 lt!664045) (size!15082 lt!664042)))))

(declare-fun b!1731176 () Bool)

(declare-fun e!1107569 () Bool)

(assert (=> b!1731176 (= e!1107569 e!1107568)))

(declare-fun res!777523 () Bool)

(assert (=> b!1731176 (=> (not res!777523) (not e!1107568))))

(assert (=> b!1731176 (= res!777523 (not ((_ is Nil!18981) lt!664045)))))

(declare-fun b!1731177 () Bool)

(declare-fun res!777521 () Bool)

(assert (=> b!1731177 (=> (not res!777521) (not e!1107568))))

(assert (=> b!1731177 (= res!777521 (= (head!3938 lt!664042) (head!3938 lt!664045)))))

(declare-fun d!529993 () Bool)

(assert (=> d!529993 e!1107570))

(declare-fun res!777524 () Bool)

(assert (=> d!529993 (=> res!777524 e!1107570)))

(declare-fun lt!664156 () Bool)

(assert (=> d!529993 (= res!777524 (not lt!664156))))

(assert (=> d!529993 (= lt!664156 e!1107569)))

(declare-fun res!777522 () Bool)

(assert (=> d!529993 (=> res!777522 e!1107569)))

(assert (=> d!529993 (= res!777522 ((_ is Nil!18981) lt!664042))))

(assert (=> d!529993 (= (isPrefix!1610 lt!664042 lt!664045) lt!664156)))

(assert (= (and d!529993 (not res!777522)) b!1731176))

(assert (= (and b!1731176 res!777523) b!1731177))

(assert (= (and b!1731177 res!777521) b!1731178))

(assert (= (and d!529993 (not res!777524)) b!1731179))

(assert (=> b!1731178 m!2139261))

(assert (=> b!1731178 m!2139355))

(assert (=> b!1731178 m!2139261))

(assert (=> b!1731178 m!2139355))

(declare-fun m!2139531 () Bool)

(assert (=> b!1731178 m!2139531))

(assert (=> b!1731179 m!2139353))

(declare-fun m!2139533 () Bool)

(assert (=> b!1731179 m!2139533))

(assert (=> b!1731177 m!2139257))

(assert (=> b!1731177 m!2139529))

(assert (=> b!1730928 d!529993))

(declare-fun d!529995 () Bool)

(assert (=> d!529995 (isPrefix!1610 (++!5194 lt!664039 (Cons!18981 (head!3938 (getSuffix!804 lt!664045 lt!664039)) Nil!18981)) lt!664045)))

(declare-fun lt!664159 () Unit!32837)

(declare-fun choose!10583 (List!19051 List!19051) Unit!32837)

(assert (=> d!529995 (= lt!664159 (choose!10583 lt!664039 lt!664045))))

(assert (=> d!529995 (isPrefix!1610 lt!664039 lt!664045)))

(assert (=> d!529995 (= (lemmaAddHeadSuffixToPrefixStillPrefix!205 lt!664039 lt!664045) lt!664159)))

(declare-fun bs!402629 () Bool)

(assert (= bs!402629 d!529995))

(assert (=> bs!402629 m!2139101))

(declare-fun m!2139535 () Bool)

(assert (=> bs!402629 m!2139535))

(assert (=> bs!402629 m!2139199))

(declare-fun m!2139537 () Bool)

(assert (=> bs!402629 m!2139537))

(assert (=> bs!402629 m!2139101))

(declare-fun m!2139539 () Bool)

(assert (=> bs!402629 m!2139539))

(assert (=> bs!402629 m!2139537))

(declare-fun m!2139541 () Bool)

(assert (=> bs!402629 m!2139541))

(assert (=> b!1730928 d!529995))

(declare-fun d!529997 () Bool)

(declare-fun lt!664160 () Int)

(assert (=> d!529997 (= lt!664160 (size!15082 (list!7674 lt!664043)))))

(assert (=> d!529997 (= lt!664160 (size!15083 (c!282783 lt!664043)))))

(assert (=> d!529997 (= (size!15081 lt!664043) lt!664160)))

(declare-fun bs!402630 () Bool)

(assert (= bs!402630 d!529997))

(assert (=> bs!402630 m!2139113))

(assert (=> bs!402630 m!2139113))

(declare-fun m!2139543 () Bool)

(assert (=> bs!402630 m!2139543))

(declare-fun m!2139545 () Bool)

(assert (=> bs!402630 m!2139545))

(assert (=> b!1730949 d!529997))

(declare-fun b!1731208 () Bool)

(declare-fun res!777548 () Bool)

(declare-fun e!1107588 () Bool)

(assert (=> b!1731208 (=> (not res!777548) (not e!1107588))))

(assert (=> b!1731208 (= res!777548 (isEmpty!11941 (tail!2586 lt!664039)))))

(declare-fun b!1731209 () Bool)

(declare-fun e!1107586 () Bool)

(declare-fun e!1107590 () Bool)

(assert (=> b!1731209 (= e!1107586 e!1107590)))

(declare-fun c!282831 () Bool)

(assert (=> b!1731209 (= c!282831 ((_ is EmptyLang!4697) lt!664054))))

(declare-fun b!1731210 () Bool)

(assert (=> b!1731210 (= e!1107588 (= (head!3938 lt!664039) (c!282782 lt!664054)))))

(declare-fun b!1731211 () Bool)

(declare-fun lt!664163 () Bool)

(declare-fun call!109928 () Bool)

(assert (=> b!1731211 (= e!1107586 (= lt!664163 call!109928))))

(declare-fun b!1731212 () Bool)

(declare-fun res!777543 () Bool)

(assert (=> b!1731212 (=> (not res!777543) (not e!1107588))))

(assert (=> b!1731212 (= res!777543 (not call!109928))))

(declare-fun b!1731213 () Bool)

(declare-fun e!1107585 () Bool)

(declare-fun e!1107589 () Bool)

(assert (=> b!1731213 (= e!1107585 e!1107589)))

(declare-fun res!777541 () Bool)

(assert (=> b!1731213 (=> (not res!777541) (not e!1107589))))

(assert (=> b!1731213 (= res!777541 (not lt!664163))))

(declare-fun b!1731214 () Bool)

(declare-fun e!1107591 () Bool)

(declare-fun nullable!1421 (Regex!4697) Bool)

(assert (=> b!1731214 (= e!1107591 (nullable!1421 lt!664054))))

(declare-fun b!1731216 () Bool)

(declare-fun res!777542 () Bool)

(assert (=> b!1731216 (=> res!777542 e!1107585)))

(assert (=> b!1731216 (= res!777542 e!1107588)))

(declare-fun res!777547 () Bool)

(assert (=> b!1731216 (=> (not res!777547) (not e!1107588))))

(assert (=> b!1731216 (= res!777547 lt!664163)))

(declare-fun bm!109923 () Bool)

(assert (=> bm!109923 (= call!109928 (isEmpty!11941 lt!664039))))

(declare-fun b!1731217 () Bool)

(declare-fun e!1107587 () Bool)

(assert (=> b!1731217 (= e!1107589 e!1107587)))

(declare-fun res!777544 () Bool)

(assert (=> b!1731217 (=> res!777544 e!1107587)))

(assert (=> b!1731217 (= res!777544 call!109928)))

(declare-fun b!1731218 () Bool)

(assert (=> b!1731218 (= e!1107590 (not lt!664163))))

(declare-fun b!1731219 () Bool)

(assert (=> b!1731219 (= e!1107591 (matchR!2171 (derivativeStep!1189 lt!664054 (head!3938 lt!664039)) (tail!2586 lt!664039)))))

(declare-fun b!1731220 () Bool)

(declare-fun res!777546 () Bool)

(assert (=> b!1731220 (=> res!777546 e!1107585)))

(assert (=> b!1731220 (= res!777546 (not ((_ is ElementMatch!4697) lt!664054)))))

(assert (=> b!1731220 (= e!1107590 e!1107585)))

(declare-fun b!1731221 () Bool)

(declare-fun res!777545 () Bool)

(assert (=> b!1731221 (=> res!777545 e!1107587)))

(assert (=> b!1731221 (= res!777545 (not (isEmpty!11941 (tail!2586 lt!664039))))))

(declare-fun d!529999 () Bool)

(assert (=> d!529999 e!1107586))

(declare-fun c!282830 () Bool)

(assert (=> d!529999 (= c!282830 ((_ is EmptyExpr!4697) lt!664054))))

(assert (=> d!529999 (= lt!664163 e!1107591)))

(declare-fun c!282829 () Bool)

(assert (=> d!529999 (= c!282829 (isEmpty!11941 lt!664039))))

(declare-fun validRegex!1895 (Regex!4697) Bool)

(assert (=> d!529999 (validRegex!1895 lt!664054)))

(assert (=> d!529999 (= (matchR!2171 lt!664054 lt!664039) lt!664163)))

(declare-fun b!1731215 () Bool)

(assert (=> b!1731215 (= e!1107587 (not (= (head!3938 lt!664039) (c!282782 lt!664054))))))

(assert (= (and d!529999 c!282829) b!1731214))

(assert (= (and d!529999 (not c!282829)) b!1731219))

(assert (= (and d!529999 c!282830) b!1731211))

(assert (= (and d!529999 (not c!282830)) b!1731209))

(assert (= (and b!1731209 c!282831) b!1731218))

(assert (= (and b!1731209 (not c!282831)) b!1731220))

(assert (= (and b!1731220 (not res!777546)) b!1731216))

(assert (= (and b!1731216 res!777547) b!1731212))

(assert (= (and b!1731212 res!777543) b!1731208))

(assert (= (and b!1731208 res!777548) b!1731210))

(assert (= (and b!1731216 (not res!777542)) b!1731213))

(assert (= (and b!1731213 res!777541) b!1731217))

(assert (= (and b!1731217 (not res!777544)) b!1731221))

(assert (= (and b!1731221 (not res!777545)) b!1731215))

(assert (= (or b!1731211 b!1731212 b!1731217) bm!109923))

(declare-fun m!2139547 () Bool)

(assert (=> b!1731210 m!2139547))

(declare-fun m!2139549 () Bool)

(assert (=> d!529999 m!2139549))

(declare-fun m!2139551 () Bool)

(assert (=> d!529999 m!2139551))

(declare-fun m!2139553 () Bool)

(assert (=> b!1731208 m!2139553))

(assert (=> b!1731208 m!2139553))

(declare-fun m!2139555 () Bool)

(assert (=> b!1731208 m!2139555))

(declare-fun m!2139557 () Bool)

(assert (=> b!1731214 m!2139557))

(assert (=> b!1731219 m!2139547))

(assert (=> b!1731219 m!2139547))

(declare-fun m!2139559 () Bool)

(assert (=> b!1731219 m!2139559))

(assert (=> b!1731219 m!2139553))

(assert (=> b!1731219 m!2139559))

(assert (=> b!1731219 m!2139553))

(declare-fun m!2139561 () Bool)

(assert (=> b!1731219 m!2139561))

(assert (=> b!1731221 m!2139553))

(assert (=> b!1731221 m!2139553))

(assert (=> b!1731221 m!2139555))

(assert (=> bm!109923 m!2139549))

(assert (=> b!1731215 m!2139547))

(assert (=> b!1730949 d!529999))

(declare-fun d!530001 () Bool)

(assert (=> d!530001 (matchR!2171 (rulesRegex!727 thiss!24550 rules!3447) (list!7674 (charsOf!2018 token!523)))))

(declare-fun lt!664166 () Unit!32837)

(declare-fun choose!10584 (LexerInterface!2998 List!19052 List!19051 Token!6304 Rule!6538 List!19051) Unit!32837)

(assert (=> d!530001 (= lt!664166 (choose!10584 thiss!24550 rules!3447 lt!664039 token!523 rule!422 Nil!18981))))

(assert (=> d!530001 (not (isEmpty!11942 rules!3447))))

(assert (=> d!530001 (= (lemmaMaxPrefixThenMatchesRulesRegex!118 thiss!24550 rules!3447 lt!664039 token!523 rule!422 Nil!18981) lt!664166)))

(declare-fun bs!402631 () Bool)

(assert (= bs!402631 d!530001))

(assert (=> bs!402631 m!2139115))

(assert (=> bs!402631 m!2139229))

(assert (=> bs!402631 m!2139123))

(declare-fun m!2139563 () Bool)

(assert (=> bs!402631 m!2139563))

(declare-fun m!2139565 () Bool)

(assert (=> bs!402631 m!2139565))

(assert (=> bs!402631 m!2139115))

(assert (=> bs!402631 m!2139563))

(declare-fun m!2139567 () Bool)

(assert (=> bs!402631 m!2139567))

(assert (=> bs!402631 m!2139123))

(assert (=> b!1730949 d!530001))

(declare-fun b!1731223 () Bool)

(declare-fun e!1107593 () List!19051)

(assert (=> b!1731223 (= e!1107593 (Cons!18981 (h!24382 lt!664039) (++!5194 (t!160710 lt!664039) suffix!1421)))))

(declare-fun b!1731222 () Bool)

(assert (=> b!1731222 (= e!1107593 suffix!1421)))

(declare-fun d!530003 () Bool)

(declare-fun e!1107592 () Bool)

(assert (=> d!530003 e!1107592))

(declare-fun res!777549 () Bool)

(assert (=> d!530003 (=> (not res!777549) (not e!1107592))))

(declare-fun lt!664167 () List!19051)

(assert (=> d!530003 (= res!777549 (= (content!2717 lt!664167) ((_ map or) (content!2717 lt!664039) (content!2717 suffix!1421))))))

(assert (=> d!530003 (= lt!664167 e!1107593)))

(declare-fun c!282832 () Bool)

(assert (=> d!530003 (= c!282832 ((_ is Nil!18981) lt!664039))))

(assert (=> d!530003 (= (++!5194 lt!664039 suffix!1421) lt!664167)))

(declare-fun b!1731224 () Bool)

(declare-fun res!777550 () Bool)

(assert (=> b!1731224 (=> (not res!777550) (not e!1107592))))

(assert (=> b!1731224 (= res!777550 (= (size!15082 lt!664167) (+ (size!15082 lt!664039) (size!15082 suffix!1421))))))

(declare-fun b!1731225 () Bool)

(assert (=> b!1731225 (= e!1107592 (or (not (= suffix!1421 Nil!18981)) (= lt!664167 lt!664039)))))

(assert (= (and d!530003 c!282832) b!1731222))

(assert (= (and d!530003 (not c!282832)) b!1731223))

(assert (= (and d!530003 res!777549) b!1731224))

(assert (= (and b!1731224 res!777550) b!1731225))

(declare-fun m!2139569 () Bool)

(assert (=> b!1731223 m!2139569))

(declare-fun m!2139571 () Bool)

(assert (=> d!530003 m!2139571))

(assert (=> d!530003 m!2139269))

(declare-fun m!2139573 () Bool)

(assert (=> d!530003 m!2139573))

(declare-fun m!2139575 () Bool)

(assert (=> b!1731224 m!2139575))

(assert (=> b!1731224 m!2139275))

(declare-fun m!2139577 () Bool)

(assert (=> b!1731224 m!2139577))

(assert (=> b!1730927 d!530003))

(declare-fun b!1731228 () Bool)

(declare-fun e!1107594 () Bool)

(assert (=> b!1731228 (= e!1107594 (isPrefix!1610 (tail!2586 lt!664055) (tail!2586 (++!5194 lt!664055 (_2!10731 lt!664033)))))))

(declare-fun b!1731229 () Bool)

(declare-fun e!1107596 () Bool)

(assert (=> b!1731229 (= e!1107596 (>= (size!15082 (++!5194 lt!664055 (_2!10731 lt!664033))) (size!15082 lt!664055)))))

(declare-fun b!1731226 () Bool)

(declare-fun e!1107595 () Bool)

(assert (=> b!1731226 (= e!1107595 e!1107594)))

(declare-fun res!777553 () Bool)

(assert (=> b!1731226 (=> (not res!777553) (not e!1107594))))

(assert (=> b!1731226 (= res!777553 (not ((_ is Nil!18981) (++!5194 lt!664055 (_2!10731 lt!664033)))))))

(declare-fun b!1731227 () Bool)

(declare-fun res!777551 () Bool)

(assert (=> b!1731227 (=> (not res!777551) (not e!1107594))))

(assert (=> b!1731227 (= res!777551 (= (head!3938 lt!664055) (head!3938 (++!5194 lt!664055 (_2!10731 lt!664033)))))))

(declare-fun d!530005 () Bool)

(assert (=> d!530005 e!1107596))

(declare-fun res!777554 () Bool)

(assert (=> d!530005 (=> res!777554 e!1107596)))

(declare-fun lt!664168 () Bool)

(assert (=> d!530005 (= res!777554 (not lt!664168))))

(assert (=> d!530005 (= lt!664168 e!1107595)))

(declare-fun res!777552 () Bool)

(assert (=> d!530005 (=> res!777552 e!1107595)))

(assert (=> d!530005 (= res!777552 ((_ is Nil!18981) lt!664055))))

(assert (=> d!530005 (= (isPrefix!1610 lt!664055 (++!5194 lt!664055 (_2!10731 lt!664033))) lt!664168)))

(assert (= (and d!530005 (not res!777552)) b!1731226))

(assert (= (and b!1731226 res!777553) b!1731227))

(assert (= (and b!1731227 res!777551) b!1731228))

(assert (= (and d!530005 (not res!777554)) b!1731229))

(declare-fun m!2139579 () Bool)

(assert (=> b!1731228 m!2139579))

(assert (=> b!1731228 m!2139183))

(declare-fun m!2139581 () Bool)

(assert (=> b!1731228 m!2139581))

(assert (=> b!1731228 m!2139579))

(assert (=> b!1731228 m!2139581))

(declare-fun m!2139583 () Bool)

(assert (=> b!1731228 m!2139583))

(assert (=> b!1731229 m!2139183))

(declare-fun m!2139585 () Bool)

(assert (=> b!1731229 m!2139585))

(assert (=> b!1731229 m!2139245))

(declare-fun m!2139587 () Bool)

(assert (=> b!1731227 m!2139587))

(assert (=> b!1731227 m!2139183))

(declare-fun m!2139589 () Bool)

(assert (=> b!1731227 m!2139589))

(assert (=> b!1730927 d!530005))

(declare-fun b!1731232 () Bool)

(declare-fun e!1107597 () Bool)

(assert (=> b!1731232 (= e!1107597 (isPrefix!1610 (tail!2586 lt!664055) (tail!2586 lt!664045)))))

(declare-fun b!1731233 () Bool)

(declare-fun e!1107599 () Bool)

(assert (=> b!1731233 (= e!1107599 (>= (size!15082 lt!664045) (size!15082 lt!664055)))))

(declare-fun b!1731230 () Bool)

(declare-fun e!1107598 () Bool)

(assert (=> b!1731230 (= e!1107598 e!1107597)))

(declare-fun res!777557 () Bool)

(assert (=> b!1731230 (=> (not res!777557) (not e!1107597))))

(assert (=> b!1731230 (= res!777557 (not ((_ is Nil!18981) lt!664045)))))

(declare-fun b!1731231 () Bool)

(declare-fun res!777555 () Bool)

(assert (=> b!1731231 (=> (not res!777555) (not e!1107597))))

(assert (=> b!1731231 (= res!777555 (= (head!3938 lt!664055) (head!3938 lt!664045)))))

(declare-fun d!530007 () Bool)

(assert (=> d!530007 e!1107599))

(declare-fun res!777558 () Bool)

(assert (=> d!530007 (=> res!777558 e!1107599)))

(declare-fun lt!664169 () Bool)

(assert (=> d!530007 (= res!777558 (not lt!664169))))

(assert (=> d!530007 (= lt!664169 e!1107598)))

(declare-fun res!777556 () Bool)

(assert (=> d!530007 (=> res!777556 e!1107598)))

(assert (=> d!530007 (= res!777556 ((_ is Nil!18981) lt!664055))))

(assert (=> d!530007 (= (isPrefix!1610 lt!664055 lt!664045) lt!664169)))

(assert (= (and d!530007 (not res!777556)) b!1731230))

(assert (= (and b!1731230 res!777557) b!1731231))

(assert (= (and b!1731231 res!777555) b!1731232))

(assert (= (and d!530007 (not res!777558)) b!1731233))

(assert (=> b!1731232 m!2139579))

(assert (=> b!1731232 m!2139355))

(assert (=> b!1731232 m!2139579))

(assert (=> b!1731232 m!2139355))

(declare-fun m!2139591 () Bool)

(assert (=> b!1731232 m!2139591))

(assert (=> b!1731233 m!2139353))

(assert (=> b!1731233 m!2139245))

(assert (=> b!1731231 m!2139587))

(assert (=> b!1731231 m!2139529))

(assert (=> b!1730927 d!530007))

(declare-fun d!530009 () Bool)

(declare-fun e!1107602 () Bool)

(assert (=> d!530009 e!1107602))

(declare-fun res!777563 () Bool)

(assert (=> d!530009 (=> (not res!777563) (not e!1107602))))

(assert (=> d!530009 (= res!777563 (isDefined!3105 (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 (_1!10731 lt!664033))))))))

(declare-fun lt!664172 () Unit!32837)

(declare-fun choose!10586 (LexerInterface!2998 List!19052 List!19051 Token!6304) Unit!32837)

(assert (=> d!530009 (= lt!664172 (choose!10586 thiss!24550 rules!3447 lt!664045 (_1!10731 lt!664033)))))

(assert (=> d!530009 (rulesInvariant!2667 thiss!24550 rules!3447)))

(assert (=> d!530009 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!419 thiss!24550 rules!3447 lt!664045 (_1!10731 lt!664033)) lt!664172)))

(declare-fun b!1731238 () Bool)

(declare-fun res!777564 () Bool)

(assert (=> b!1731238 (=> (not res!777564) (not e!1107602))))

(assert (=> b!1731238 (= res!777564 (matchR!2171 (regex!3369 (get!5665 (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 (_1!10731 lt!664033)))))) (list!7674 (charsOf!2018 (_1!10731 lt!664033)))))))

(declare-fun b!1731239 () Bool)

(assert (=> b!1731239 (= e!1107602 (= (rule!5347 (_1!10731 lt!664033)) (get!5665 (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 (_1!10731 lt!664033)))))))))

(assert (= (and d!530009 res!777563) b!1731238))

(assert (= (and b!1731238 res!777564) b!1731239))

(assert (=> d!530009 m!2139191))

(assert (=> d!530009 m!2139191))

(declare-fun m!2139593 () Bool)

(assert (=> d!530009 m!2139593))

(declare-fun m!2139595 () Bool)

(assert (=> d!530009 m!2139595))

(assert (=> d!530009 m!2139211))

(assert (=> b!1731238 m!2139191))

(declare-fun m!2139597 () Bool)

(assert (=> b!1731238 m!2139597))

(assert (=> b!1731238 m!2139191))

(assert (=> b!1731238 m!2139143))

(assert (=> b!1731238 m!2139145))

(assert (=> b!1731238 m!2139143))

(assert (=> b!1731238 m!2139145))

(declare-fun m!2139599 () Bool)

(assert (=> b!1731238 m!2139599))

(assert (=> b!1731239 m!2139191))

(assert (=> b!1731239 m!2139191))

(assert (=> b!1731239 m!2139597))

(assert (=> b!1730927 d!530009))

(declare-fun d!530011 () Bool)

(assert (=> d!530011 (= (get!5664 lt!664051) (v!25181 lt!664051))))

(assert (=> b!1730927 d!530011))

(declare-fun d!530013 () Bool)

(assert (=> d!530013 (isPrefix!1610 lt!664055 (++!5194 lt!664055 (_2!10731 lt!664033)))))

(declare-fun lt!664175 () Unit!32837)

(declare-fun choose!10587 (List!19051 List!19051) Unit!32837)

(assert (=> d!530013 (= lt!664175 (choose!10587 lt!664055 (_2!10731 lt!664033)))))

(assert (=> d!530013 (= (lemmaConcatTwoListThenFirstIsPrefix!1120 lt!664055 (_2!10731 lt!664033)) lt!664175)))

(declare-fun bs!402632 () Bool)

(assert (= bs!402632 d!530013))

(assert (=> bs!402632 m!2139183))

(assert (=> bs!402632 m!2139183))

(assert (=> bs!402632 m!2139185))

(declare-fun m!2139601 () Bool)

(assert (=> bs!402632 m!2139601))

(assert (=> b!1730927 d!530013))

(declare-fun b!1731242 () Bool)

(declare-fun e!1107603 () Bool)

(assert (=> b!1731242 (= e!1107603 (isPrefix!1610 (tail!2586 lt!664039) (tail!2586 lt!664045)))))

(declare-fun b!1731243 () Bool)

(declare-fun e!1107605 () Bool)

(assert (=> b!1731243 (= e!1107605 (>= (size!15082 lt!664045) (size!15082 lt!664039)))))

(declare-fun b!1731240 () Bool)

(declare-fun e!1107604 () Bool)

(assert (=> b!1731240 (= e!1107604 e!1107603)))

(declare-fun res!777567 () Bool)

(assert (=> b!1731240 (=> (not res!777567) (not e!1107603))))

(assert (=> b!1731240 (= res!777567 (not ((_ is Nil!18981) lt!664045)))))

(declare-fun b!1731241 () Bool)

(declare-fun res!777565 () Bool)

(assert (=> b!1731241 (=> (not res!777565) (not e!1107603))))

(assert (=> b!1731241 (= res!777565 (= (head!3938 lt!664039) (head!3938 lt!664045)))))

(declare-fun d!530015 () Bool)

(assert (=> d!530015 e!1107605))

(declare-fun res!777568 () Bool)

(assert (=> d!530015 (=> res!777568 e!1107605)))

(declare-fun lt!664176 () Bool)

(assert (=> d!530015 (= res!777568 (not lt!664176))))

(assert (=> d!530015 (= lt!664176 e!1107604)))

(declare-fun res!777566 () Bool)

(assert (=> d!530015 (=> res!777566 e!1107604)))

(assert (=> d!530015 (= res!777566 ((_ is Nil!18981) lt!664039))))

(assert (=> d!530015 (= (isPrefix!1610 lt!664039 lt!664045) lt!664176)))

(assert (= (and d!530015 (not res!777566)) b!1731240))

(assert (= (and b!1731240 res!777567) b!1731241))

(assert (= (and b!1731241 res!777565) b!1731242))

(assert (= (and d!530015 (not res!777568)) b!1731243))

(assert (=> b!1731242 m!2139553))

(assert (=> b!1731242 m!2139355))

(assert (=> b!1731242 m!2139553))

(assert (=> b!1731242 m!2139355))

(declare-fun m!2139603 () Bool)

(assert (=> b!1731242 m!2139603))

(assert (=> b!1731243 m!2139353))

(assert (=> b!1731243 m!2139275))

(assert (=> b!1731241 m!2139547))

(assert (=> b!1731241 m!2139529))

(assert (=> b!1730927 d!530015))

(declare-fun d!530017 () Bool)

(assert (=> d!530017 (isPrefix!1610 lt!664039 (++!5194 lt!664039 suffix!1421))))

(declare-fun lt!664177 () Unit!32837)

(assert (=> d!530017 (= lt!664177 (choose!10587 lt!664039 suffix!1421))))

(assert (=> d!530017 (= (lemmaConcatTwoListThenFirstIsPrefix!1120 lt!664039 suffix!1421) lt!664177)))

(declare-fun bs!402633 () Bool)

(assert (= bs!402633 d!530017))

(assert (=> bs!402633 m!2139187))

(assert (=> bs!402633 m!2139187))

(declare-fun m!2139605 () Bool)

(assert (=> bs!402633 m!2139605))

(declare-fun m!2139607 () Bool)

(assert (=> bs!402633 m!2139607))

(assert (=> b!1730927 d!530017))

(declare-fun b!1731274 () Bool)

(declare-fun res!777595 () Bool)

(declare-fun e!1107619 () Bool)

(assert (=> b!1731274 (=> (not res!777595) (not e!1107619))))

(declare-fun lt!664240 () Option!3763)

(assert (=> b!1731274 (= res!777595 (= (value!105689 (_1!10731 (get!5664 lt!664240))) (apply!5174 (transformation!3369 (rule!5347 (_1!10731 (get!5664 lt!664240)))) (seqFromList!2343 (originalCharacters!4183 (_1!10731 (get!5664 lt!664240)))))))))

(declare-fun b!1731275 () Bool)

(declare-fun e!1107618 () Option!3763)

(declare-fun call!109931 () Option!3763)

(assert (=> b!1731275 (= e!1107618 call!109931)))

(declare-fun b!1731276 () Bool)

(declare-fun lt!664242 () Option!3763)

(declare-fun lt!664243 () Option!3763)

(assert (=> b!1731276 (= e!1107618 (ite (and ((_ is None!3762) lt!664242) ((_ is None!3762) lt!664243)) None!3762 (ite ((_ is None!3762) lt!664243) lt!664242 (ite ((_ is None!3762) lt!664242) lt!664243 (ite (>= (size!15080 (_1!10731 (v!25181 lt!664242))) (size!15080 (_1!10731 (v!25181 lt!664243)))) lt!664242 lt!664243)))))))

(assert (=> b!1731276 (= lt!664242 call!109931)))

(assert (=> b!1731276 (= lt!664243 (maxPrefix!1552 thiss!24550 (t!160711 rules!3447) lt!664045))))

(declare-fun b!1731277 () Bool)

(assert (=> b!1731277 (= e!1107619 (contains!3391 rules!3447 (rule!5347 (_1!10731 (get!5664 lt!664240)))))))

(declare-fun b!1731278 () Bool)

(declare-fun e!1107620 () Bool)

(assert (=> b!1731278 (= e!1107620 e!1107619)))

(declare-fun res!777594 () Bool)

(assert (=> b!1731278 (=> (not res!777594) (not e!1107619))))

(assert (=> b!1731278 (= res!777594 (isDefined!3106 lt!664240))))

(declare-fun b!1731279 () Bool)

(declare-fun res!777591 () Bool)

(assert (=> b!1731279 (=> (not res!777591) (not e!1107619))))

(assert (=> b!1731279 (= res!777591 (matchR!2171 (regex!3369 (rule!5347 (_1!10731 (get!5664 lt!664240)))) (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664240))))))))

(declare-fun b!1731280 () Bool)

(declare-fun res!777590 () Bool)

(assert (=> b!1731280 (=> (not res!777590) (not e!1107619))))

(assert (=> b!1731280 (= res!777590 (= (++!5194 (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664240)))) (_2!10731 (get!5664 lt!664240))) lt!664045))))

(declare-fun b!1731281 () Bool)

(declare-fun res!777593 () Bool)

(assert (=> b!1731281 (=> (not res!777593) (not e!1107619))))

(assert (=> b!1731281 (= res!777593 (= (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664240)))) (originalCharacters!4183 (_1!10731 (get!5664 lt!664240)))))))

(declare-fun b!1731282 () Bool)

(declare-fun res!777589 () Bool)

(assert (=> b!1731282 (=> (not res!777589) (not e!1107619))))

(assert (=> b!1731282 (= res!777589 (< (size!15082 (_2!10731 (get!5664 lt!664240))) (size!15082 lt!664045)))))

(declare-fun d!530019 () Bool)

(assert (=> d!530019 e!1107620))

(declare-fun res!777592 () Bool)

(assert (=> d!530019 (=> res!777592 e!1107620)))

(assert (=> d!530019 (= res!777592 (isEmpty!11944 lt!664240))))

(assert (=> d!530019 (= lt!664240 e!1107618)))

(declare-fun c!282838 () Bool)

(assert (=> d!530019 (= c!282838 (and ((_ is Cons!18982) rules!3447) ((_ is Nil!18982) (t!160711 rules!3447))))))

(declare-fun lt!664241 () Unit!32837)

(declare-fun lt!664239 () Unit!32837)

(assert (=> d!530019 (= lt!664241 lt!664239)))

(assert (=> d!530019 (isPrefix!1610 lt!664045 lt!664045)))

(declare-fun lemmaIsPrefixRefl!1085 (List!19051 List!19051) Unit!32837)

(assert (=> d!530019 (= lt!664239 (lemmaIsPrefixRefl!1085 lt!664045 lt!664045))))

(declare-fun rulesValidInductive!1122 (LexerInterface!2998 List!19052) Bool)

(assert (=> d!530019 (rulesValidInductive!1122 thiss!24550 rules!3447)))

(assert (=> d!530019 (= (maxPrefix!1552 thiss!24550 rules!3447 lt!664045) lt!664240)))

(declare-fun bm!109926 () Bool)

(assert (=> bm!109926 (= call!109931 (maxPrefixOneRule!928 thiss!24550 (h!24383 rules!3447) lt!664045))))

(assert (= (and d!530019 c!282838) b!1731275))

(assert (= (and d!530019 (not c!282838)) b!1731276))

(assert (= (or b!1731275 b!1731276) bm!109926))

(assert (= (and d!530019 (not res!777592)) b!1731278))

(assert (= (and b!1731278 res!777594) b!1731281))

(assert (= (and b!1731281 res!777593) b!1731282))

(assert (= (and b!1731282 res!777589) b!1731280))

(assert (= (and b!1731280 res!777590) b!1731274))

(assert (= (and b!1731274 res!777595) b!1731279))

(assert (= (and b!1731279 res!777591) b!1731277))

(declare-fun m!2139649 () Bool)

(assert (=> b!1731274 m!2139649))

(declare-fun m!2139653 () Bool)

(assert (=> b!1731274 m!2139653))

(assert (=> b!1731274 m!2139653))

(declare-fun m!2139659 () Bool)

(assert (=> b!1731274 m!2139659))

(assert (=> b!1731277 m!2139649))

(declare-fun m!2139663 () Bool)

(assert (=> b!1731277 m!2139663))

(assert (=> b!1731281 m!2139649))

(declare-fun m!2139665 () Bool)

(assert (=> b!1731281 m!2139665))

(assert (=> b!1731281 m!2139665))

(declare-fun m!2139669 () Bool)

(assert (=> b!1731281 m!2139669))

(declare-fun m!2139671 () Bool)

(assert (=> bm!109926 m!2139671))

(assert (=> b!1731279 m!2139649))

(assert (=> b!1731279 m!2139665))

(assert (=> b!1731279 m!2139665))

(assert (=> b!1731279 m!2139669))

(assert (=> b!1731279 m!2139669))

(declare-fun m!2139673 () Bool)

(assert (=> b!1731279 m!2139673))

(assert (=> b!1731280 m!2139649))

(assert (=> b!1731280 m!2139665))

(assert (=> b!1731280 m!2139665))

(assert (=> b!1731280 m!2139669))

(assert (=> b!1731280 m!2139669))

(declare-fun m!2139679 () Bool)

(assert (=> b!1731280 m!2139679))

(declare-fun m!2139681 () Bool)

(assert (=> b!1731276 m!2139681))

(declare-fun m!2139683 () Bool)

(assert (=> d!530019 m!2139683))

(declare-fun m!2139685 () Bool)

(assert (=> d!530019 m!2139685))

(declare-fun m!2139687 () Bool)

(assert (=> d!530019 m!2139687))

(declare-fun m!2139689 () Bool)

(assert (=> d!530019 m!2139689))

(assert (=> b!1731282 m!2139649))

(declare-fun m!2139691 () Bool)

(assert (=> b!1731282 m!2139691))

(assert (=> b!1731282 m!2139353))

(declare-fun m!2139693 () Bool)

(assert (=> b!1731278 m!2139693))

(assert (=> b!1730927 d!530019))

(declare-fun d!530025 () Bool)

(declare-fun lt!664248 () BalanceConc!12570)

(assert (=> d!530025 (= (list!7674 lt!664248) (originalCharacters!4183 (_1!10731 lt!664033)))))

(assert (=> d!530025 (= lt!664248 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))))

(assert (=> d!530025 (= (charsOf!2018 (_1!10731 lt!664033)) lt!664248)))

(declare-fun b_lambda!55241 () Bool)

(assert (=> (not b_lambda!55241) (not d!530025)))

(assert (=> d!530025 t!160692))

(declare-fun b_and!127665 () Bool)

(assert (= b_and!127635 (and (=> t!160692 result!123936) b_and!127665)))

(assert (=> d!530025 t!160694))

(declare-fun b_and!127667 () Bool)

(assert (= b_and!127637 (and (=> t!160694 result!123940) b_and!127667)))

(assert (=> d!530025 t!160696))

(declare-fun b_and!127669 () Bool)

(assert (= b_and!127639 (and (=> t!160696 result!123942) b_and!127669)))

(declare-fun m!2139699 () Bool)

(assert (=> d!530025 m!2139699))

(assert (=> d!530025 m!2139231))

(assert (=> b!1730927 d!530025))

(declare-fun d!530031 () Bool)

(declare-fun isEmpty!11946 (Option!3762) Bool)

(assert (=> d!530031 (= (isDefined!3105 lt!664067) (not (isEmpty!11946 lt!664067)))))

(declare-fun bs!402636 () Bool)

(assert (= bs!402636 d!530031))

(declare-fun m!2139701 () Bool)

(assert (=> bs!402636 m!2139701))

(assert (=> b!1730927 d!530031))

(declare-fun b!1731319 () Bool)

(declare-fun e!1107648 () Option!3762)

(assert (=> b!1731319 (= e!1107648 None!3761)))

(declare-fun d!530035 () Bool)

(declare-fun e!1107649 () Bool)

(assert (=> d!530035 e!1107649))

(declare-fun res!777623 () Bool)

(assert (=> d!530035 (=> res!777623 e!1107649)))

(declare-fun lt!664265 () Option!3762)

(assert (=> d!530035 (= res!777623 (isEmpty!11946 lt!664265))))

(declare-fun e!1107650 () Option!3762)

(assert (=> d!530035 (= lt!664265 e!1107650)))

(declare-fun c!282845 () Bool)

(assert (=> d!530035 (= c!282845 (and ((_ is Cons!18982) rules!3447) (= (tag!3695 (h!24383 rules!3447)) (tag!3695 (rule!5347 (_1!10731 lt!664033))))))))

(assert (=> d!530035 (rulesInvariant!2667 thiss!24550 rules!3447)))

(assert (=> d!530035 (= (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 (_1!10731 lt!664033)))) lt!664265)))

(declare-fun b!1731320 () Bool)

(assert (=> b!1731320 (= e!1107650 e!1107648)))

(declare-fun c!282844 () Bool)

(assert (=> b!1731320 (= c!282844 (and ((_ is Cons!18982) rules!3447) (not (= (tag!3695 (h!24383 rules!3447)) (tag!3695 (rule!5347 (_1!10731 lt!664033)))))))))

(declare-fun b!1731321 () Bool)

(assert (=> b!1731321 (= e!1107650 (Some!3761 (h!24383 rules!3447)))))

(declare-fun b!1731322 () Bool)

(declare-fun e!1107647 () Bool)

(assert (=> b!1731322 (= e!1107649 e!1107647)))

(declare-fun res!777622 () Bool)

(assert (=> b!1731322 (=> (not res!777622) (not e!1107647))))

(assert (=> b!1731322 (= res!777622 (contains!3391 rules!3447 (get!5665 lt!664265)))))

(declare-fun b!1731323 () Bool)

(declare-fun lt!664266 () Unit!32837)

(declare-fun lt!664267 () Unit!32837)

(assert (=> b!1731323 (= lt!664266 lt!664267)))

(assert (=> b!1731323 (rulesInvariant!2667 thiss!24550 (t!160711 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!150 (LexerInterface!2998 Rule!6538 List!19052) Unit!32837)

(assert (=> b!1731323 (= lt!664267 (lemmaInvariantOnRulesThenOnTail!150 thiss!24550 (h!24383 rules!3447) (t!160711 rules!3447)))))

(assert (=> b!1731323 (= e!1107648 (getRuleFromTag!419 thiss!24550 (t!160711 rules!3447) (tag!3695 (rule!5347 (_1!10731 lt!664033)))))))

(declare-fun b!1731324 () Bool)

(assert (=> b!1731324 (= e!1107647 (= (tag!3695 (get!5665 lt!664265)) (tag!3695 (rule!5347 (_1!10731 lt!664033)))))))

(assert (= (and d!530035 c!282845) b!1731321))

(assert (= (and d!530035 (not c!282845)) b!1731320))

(assert (= (and b!1731320 c!282844) b!1731323))

(assert (= (and b!1731320 (not c!282844)) b!1731319))

(assert (= (and d!530035 (not res!777623)) b!1731322))

(assert (= (and b!1731322 res!777622) b!1731324))

(declare-fun m!2139751 () Bool)

(assert (=> d!530035 m!2139751))

(assert (=> d!530035 m!2139211))

(declare-fun m!2139753 () Bool)

(assert (=> b!1731322 m!2139753))

(assert (=> b!1731322 m!2139753))

(declare-fun m!2139755 () Bool)

(assert (=> b!1731322 m!2139755))

(declare-fun m!2139757 () Bool)

(assert (=> b!1731323 m!2139757))

(declare-fun m!2139759 () Bool)

(assert (=> b!1731323 m!2139759))

(declare-fun m!2139761 () Bool)

(assert (=> b!1731323 m!2139761))

(assert (=> b!1731324 m!2139753))

(assert (=> b!1730927 d!530035))

(declare-fun b!1731475 () Bool)

(declare-fun e!1107732 () Unit!32837)

(declare-fun Unit!32843 () Unit!32837)

(assert (=> b!1731475 (= e!1107732 Unit!32843)))

(declare-fun d!530059 () Bool)

(assert (=> d!530059 (isDefined!3106 (maxPrefix!1552 thiss!24550 rules!3447 (++!5194 lt!664039 suffix!1421)))))

(declare-fun lt!664339 () Unit!32837)

(assert (=> d!530059 (= lt!664339 e!1107732)))

(declare-fun c!282878 () Bool)

(assert (=> d!530059 (= c!282878 (isEmpty!11944 (maxPrefix!1552 thiss!24550 rules!3447 (++!5194 lt!664039 suffix!1421))))))

(declare-fun lt!664345 () Unit!32837)

(declare-fun lt!664348 () Unit!32837)

(assert (=> d!530059 (= lt!664345 lt!664348)))

(declare-fun e!1107733 () Bool)

(assert (=> d!530059 e!1107733))

(declare-fun res!777708 () Bool)

(assert (=> d!530059 (=> (not res!777708) (not e!1107733))))

(declare-fun lt!664354 () Token!6304)

(assert (=> d!530059 (= res!777708 (isDefined!3105 (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 lt!664354)))))))

(assert (=> d!530059 (= lt!664348 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!419 thiss!24550 rules!3447 lt!664039 lt!664354))))

(declare-fun lt!664347 () Unit!32837)

(declare-fun lt!664353 () Unit!32837)

(assert (=> d!530059 (= lt!664347 lt!664353)))

(declare-fun lt!664340 () List!19051)

(assert (=> d!530059 (isPrefix!1610 lt!664340 (++!5194 lt!664039 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!271 (List!19051 List!19051 List!19051) Unit!32837)

(assert (=> d!530059 (= lt!664353 (lemmaPrefixStaysPrefixWhenAddingToSuffix!271 lt!664340 lt!664039 suffix!1421))))

(assert (=> d!530059 (= lt!664340 (list!7674 (charsOf!2018 lt!664354)))))

(declare-fun lt!664352 () Unit!32837)

(declare-fun lt!664344 () Unit!32837)

(assert (=> d!530059 (= lt!664352 lt!664344)))

(declare-fun lt!664342 () List!19051)

(declare-fun lt!664346 () List!19051)

(assert (=> d!530059 (isPrefix!1610 lt!664342 (++!5194 lt!664342 lt!664346))))

(assert (=> d!530059 (= lt!664344 (lemmaConcatTwoListThenFirstIsPrefix!1120 lt!664342 lt!664346))))

(assert (=> d!530059 (= lt!664346 (_2!10731 (get!5664 (maxPrefix!1552 thiss!24550 rules!3447 lt!664039))))))

(assert (=> d!530059 (= lt!664342 (list!7674 (charsOf!2018 lt!664354)))))

(declare-datatypes ((List!19055 0))(
  ( (Nil!18985) (Cons!18985 (h!24386 Token!6304) (t!160774 List!19055)) )
))
(declare-fun head!3940 (List!19055) Token!6304)

(declare-datatypes ((IArray!12635 0))(
  ( (IArray!12636 (innerList!6375 List!19055)) )
))
(declare-datatypes ((Conc!6315 0))(
  ( (Node!6315 (left!15161 Conc!6315) (right!15491 Conc!6315) (csize!12860 Int) (cheight!6526 Int)) (Leaf!9220 (xs!9191 IArray!12635) (csize!12861 Int)) (Empty!6315) )
))
(declare-datatypes ((BalanceConc!12574 0))(
  ( (BalanceConc!12575 (c!282917 Conc!6315)) )
))
(declare-fun list!7678 (BalanceConc!12574) List!19055)

(declare-datatypes ((tuple2!18664 0))(
  ( (tuple2!18665 (_1!10734 BalanceConc!12574) (_2!10734 BalanceConc!12570)) )
))
(declare-fun lex!1410 (LexerInterface!2998 List!19052 BalanceConc!12570) tuple2!18664)

(assert (=> d!530059 (= lt!664354 (head!3940 (list!7678 (_1!10734 (lex!1410 thiss!24550 rules!3447 (seqFromList!2343 lt!664039))))))))

(assert (=> d!530059 (not (isEmpty!11942 rules!3447))))

(assert (=> d!530059 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!522 thiss!24550 rules!3447 lt!664039 suffix!1421) lt!664339)))

(declare-fun b!1731474 () Bool)

(declare-fun Unit!32844 () Unit!32837)

(assert (=> b!1731474 (= e!1107732 Unit!32844)))

(declare-fun lt!664350 () List!19051)

(assert (=> b!1731474 (= lt!664350 (++!5194 lt!664039 suffix!1421))))

(declare-fun lt!664343 () Unit!32837)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!279 (LexerInterface!2998 Rule!6538 List!19052 List!19051) Unit!32837)

(assert (=> b!1731474 (= lt!664343 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!279 thiss!24550 (rule!5347 lt!664354) rules!3447 lt!664350))))

(assert (=> b!1731474 (isEmpty!11944 (maxPrefixOneRule!928 thiss!24550 (rule!5347 lt!664354) lt!664350))))

(declare-fun lt!664351 () Unit!32837)

(assert (=> b!1731474 (= lt!664351 lt!664343)))

(declare-fun lt!664349 () List!19051)

(assert (=> b!1731474 (= lt!664349 (list!7674 (charsOf!2018 lt!664354)))))

(declare-fun lt!664341 () Unit!32837)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!275 (LexerInterface!2998 Rule!6538 List!19051 List!19051) Unit!32837)

(assert (=> b!1731474 (= lt!664341 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!275 thiss!24550 (rule!5347 lt!664354) lt!664349 (++!5194 lt!664039 suffix!1421)))))

(assert (=> b!1731474 (not (matchR!2171 (regex!3369 (rule!5347 lt!664354)) lt!664349))))

(declare-fun lt!664355 () Unit!32837)

(assert (=> b!1731474 (= lt!664355 lt!664341)))

(assert (=> b!1731474 false))

(declare-fun b!1731472 () Bool)

(declare-fun res!777707 () Bool)

(assert (=> b!1731472 (=> (not res!777707) (not e!1107733))))

(assert (=> b!1731472 (= res!777707 (matchR!2171 (regex!3369 (get!5665 (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 lt!664354))))) (list!7674 (charsOf!2018 lt!664354))))))

(declare-fun b!1731473 () Bool)

(assert (=> b!1731473 (= e!1107733 (= (rule!5347 lt!664354) (get!5665 (getRuleFromTag!419 thiss!24550 rules!3447 (tag!3695 (rule!5347 lt!664354))))))))

(assert (= (and d!530059 res!777708) b!1731472))

(assert (= (and b!1731472 res!777707) b!1731473))

(assert (= (and d!530059 c!282878) b!1731474))

(assert (= (and d!530059 (not c!282878)) b!1731475))

(assert (=> d!530059 m!2139187))

(declare-fun m!2139885 () Bool)

(assert (=> d!530059 m!2139885))

(declare-fun m!2139887 () Bool)

(assert (=> d!530059 m!2139887))

(declare-fun m!2139889 () Bool)

(assert (=> d!530059 m!2139889))

(declare-fun m!2139891 () Bool)

(assert (=> d!530059 m!2139891))

(declare-fun m!2139893 () Bool)

(assert (=> d!530059 m!2139893))

(declare-fun m!2139895 () Bool)

(assert (=> d!530059 m!2139895))

(declare-fun m!2139897 () Bool)

(assert (=> d!530059 m!2139897))

(declare-fun m!2139899 () Bool)

(assert (=> d!530059 m!2139899))

(assert (=> d!530059 m!2139111))

(declare-fun m!2139901 () Bool)

(assert (=> d!530059 m!2139901))

(declare-fun m!2139903 () Bool)

(assert (=> d!530059 m!2139903))

(assert (=> d!530059 m!2139901))

(declare-fun m!2139905 () Bool)

(assert (=> d!530059 m!2139905))

(declare-fun m!2139907 () Bool)

(assert (=> d!530059 m!2139907))

(assert (=> d!530059 m!2139891))

(declare-fun m!2139909 () Bool)

(assert (=> d!530059 m!2139909))

(declare-fun m!2139911 () Bool)

(assert (=> d!530059 m!2139911))

(declare-fun m!2139913 () Bool)

(assert (=> d!530059 m!2139913))

(assert (=> d!530059 m!2139229))

(assert (=> d!530059 m!2139111))

(declare-fun m!2139915 () Bool)

(assert (=> d!530059 m!2139915))

(assert (=> d!530059 m!2139187))

(assert (=> d!530059 m!2139891))

(assert (=> d!530059 m!2139907))

(declare-fun m!2139917 () Bool)

(assert (=> d!530059 m!2139917))

(assert (=> d!530059 m!2139887))

(assert (=> d!530059 m!2139187))

(assert (=> d!530059 m!2139897))

(assert (=> d!530059 m!2139895))

(declare-fun m!2139919 () Bool)

(assert (=> d!530059 m!2139919))

(assert (=> b!1731474 m!2139887))

(assert (=> b!1731474 m!2139887))

(assert (=> b!1731474 m!2139889))

(declare-fun m!2139921 () Bool)

(assert (=> b!1731474 m!2139921))

(declare-fun m!2139923 () Bool)

(assert (=> b!1731474 m!2139923))

(declare-fun m!2139925 () Bool)

(assert (=> b!1731474 m!2139925))

(declare-fun m!2139927 () Bool)

(assert (=> b!1731474 m!2139927))

(assert (=> b!1731474 m!2139187))

(declare-fun m!2139929 () Bool)

(assert (=> b!1731474 m!2139929))

(assert (=> b!1731474 m!2139187))

(assert (=> b!1731474 m!2139921))

(assert (=> b!1731472 m!2139887))

(assert (=> b!1731472 m!2139887))

(assert (=> b!1731472 m!2139889))

(assert (=> b!1731472 m!2139897))

(assert (=> b!1731472 m!2139889))

(declare-fun m!2139931 () Bool)

(assert (=> b!1731472 m!2139931))

(assert (=> b!1731472 m!2139897))

(declare-fun m!2139933 () Bool)

(assert (=> b!1731472 m!2139933))

(assert (=> b!1731473 m!2139897))

(assert (=> b!1731473 m!2139897))

(assert (=> b!1731473 m!2139933))

(assert (=> b!1730927 d!530059))

(declare-fun b!1731477 () Bool)

(declare-fun e!1107735 () List!19051)

(assert (=> b!1731477 (= e!1107735 (Cons!18981 (h!24382 lt!664055) (++!5194 (t!160710 lt!664055) (_2!10731 lt!664033))))))

(declare-fun b!1731476 () Bool)

(assert (=> b!1731476 (= e!1107735 (_2!10731 lt!664033))))

(declare-fun d!530099 () Bool)

(declare-fun e!1107734 () Bool)

(assert (=> d!530099 e!1107734))

(declare-fun res!777709 () Bool)

(assert (=> d!530099 (=> (not res!777709) (not e!1107734))))

(declare-fun lt!664356 () List!19051)

(assert (=> d!530099 (= res!777709 (= (content!2717 lt!664356) ((_ map or) (content!2717 lt!664055) (content!2717 (_2!10731 lt!664033)))))))

(assert (=> d!530099 (= lt!664356 e!1107735)))

(declare-fun c!282879 () Bool)

(assert (=> d!530099 (= c!282879 ((_ is Nil!18981) lt!664055))))

(assert (=> d!530099 (= (++!5194 lt!664055 (_2!10731 lt!664033)) lt!664356)))

(declare-fun b!1731478 () Bool)

(declare-fun res!777710 () Bool)

(assert (=> b!1731478 (=> (not res!777710) (not e!1107734))))

(assert (=> b!1731478 (= res!777710 (= (size!15082 lt!664356) (+ (size!15082 lt!664055) (size!15082 (_2!10731 lt!664033)))))))

(declare-fun b!1731479 () Bool)

(assert (=> b!1731479 (= e!1107734 (or (not (= (_2!10731 lt!664033) Nil!18981)) (= lt!664356 lt!664055)))))

(assert (= (and d!530099 c!282879) b!1731476))

(assert (= (and d!530099 (not c!282879)) b!1731477))

(assert (= (and d!530099 res!777709) b!1731478))

(assert (= (and b!1731478 res!777710) b!1731479))

(declare-fun m!2139935 () Bool)

(assert (=> b!1731477 m!2139935))

(declare-fun m!2139937 () Bool)

(assert (=> d!530099 m!2139937))

(declare-fun m!2139939 () Bool)

(assert (=> d!530099 m!2139939))

(declare-fun m!2139941 () Bool)

(assert (=> d!530099 m!2139941))

(declare-fun m!2139943 () Bool)

(assert (=> b!1731478 m!2139943))

(assert (=> b!1731478 m!2139245))

(declare-fun m!2139945 () Bool)

(assert (=> b!1731478 m!2139945))

(assert (=> b!1730927 d!530099))

(declare-fun d!530101 () Bool)

(assert (=> d!530101 (= (list!7674 lt!664063) (list!7675 (c!282783 lt!664063)))))

(declare-fun bs!402647 () Bool)

(assert (= bs!402647 d!530101))

(declare-fun m!2139947 () Bool)

(assert (=> bs!402647 m!2139947))

(assert (=> b!1730927 d!530101))

(declare-fun d!530103 () Bool)

(assert (=> d!530103 (= (inv!24554 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))) (isBalanced!1975 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))))))

(declare-fun bs!402648 () Bool)

(assert (= bs!402648 d!530103))

(declare-fun m!2139949 () Bool)

(assert (=> bs!402648 m!2139949))

(assert (=> tb!103077 d!530103))

(declare-fun d!530105 () Bool)

(assert (=> d!530105 (= (inv!24546 (tag!3695 (h!24383 rules!3447))) (= (mod (str.len (value!105688 (tag!3695 (h!24383 rules!3447)))) 2) 0))))

(assert (=> b!1730950 d!530105))

(declare-fun d!530107 () Bool)

(declare-fun res!777711 () Bool)

(declare-fun e!1107736 () Bool)

(assert (=> d!530107 (=> (not res!777711) (not e!1107736))))

(assert (=> d!530107 (= res!777711 (semiInverseModEq!1334 (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toValue!4876 (transformation!3369 (h!24383 rules!3447)))))))

(assert (=> d!530107 (= (inv!24551 (transformation!3369 (h!24383 rules!3447))) e!1107736)))

(declare-fun b!1731480 () Bool)

(assert (=> b!1731480 (= e!1107736 (equivClasses!1275 (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toValue!4876 (transformation!3369 (h!24383 rules!3447)))))))

(assert (= (and d!530107 res!777711) b!1731480))

(declare-fun m!2139951 () Bool)

(assert (=> d!530107 m!2139951))

(declare-fun m!2139953 () Bool)

(assert (=> b!1731480 m!2139953))

(assert (=> b!1730950 d!530107))

(declare-fun d!530109 () Bool)

(declare-fun c!282880 () Bool)

(assert (=> d!530109 (= c!282880 ((_ is Node!6313) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))))))

(declare-fun e!1107737 () Bool)

(assert (=> d!530109 (= (inv!24553 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))) e!1107737)))

(declare-fun b!1731481 () Bool)

(assert (=> b!1731481 (= e!1107737 (inv!24555 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))))))

(declare-fun b!1731482 () Bool)

(declare-fun e!1107738 () Bool)

(assert (=> b!1731482 (= e!1107737 e!1107738)))

(declare-fun res!777712 () Bool)

(assert (=> b!1731482 (= res!777712 (not ((_ is Leaf!9218) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))))))))

(assert (=> b!1731482 (=> res!777712 e!1107738)))

(declare-fun b!1731483 () Bool)

(assert (=> b!1731483 (= e!1107738 (inv!24556 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))))))

(assert (= (and d!530109 c!282880) b!1731481))

(assert (= (and d!530109 (not c!282880)) b!1731482))

(assert (= (and b!1731482 (not res!777712)) b!1731483))

(declare-fun m!2139955 () Bool)

(assert (=> b!1731481 m!2139955))

(declare-fun m!2139957 () Bool)

(assert (=> b!1731483 m!2139957))

(assert (=> b!1730969 d!530109))

(declare-fun d!530111 () Bool)

(assert (=> d!530111 (= (isEmpty!11941 (_2!10731 lt!664059)) ((_ is Nil!18981) (_2!10731 lt!664059)))))

(assert (=> b!1730946 d!530111))

(declare-fun d!530113 () Bool)

(declare-fun lt!664361 () Bool)

(declare-fun content!2720 (List!19052) (InoxSet Rule!6538))

(assert (=> d!530113 (= lt!664361 (select (content!2720 rules!3447) rule!422))))

(declare-fun e!1107744 () Bool)

(assert (=> d!530113 (= lt!664361 e!1107744)))

(declare-fun res!777718 () Bool)

(assert (=> d!530113 (=> (not res!777718) (not e!1107744))))

(assert (=> d!530113 (= res!777718 ((_ is Cons!18982) rules!3447))))

(assert (=> d!530113 (= (contains!3391 rules!3447 rule!422) lt!664361)))

(declare-fun b!1731488 () Bool)

(declare-fun e!1107743 () Bool)

(assert (=> b!1731488 (= e!1107744 e!1107743)))

(declare-fun res!777717 () Bool)

(assert (=> b!1731488 (=> res!777717 e!1107743)))

(assert (=> b!1731488 (= res!777717 (= (h!24383 rules!3447) rule!422))))

(declare-fun b!1731489 () Bool)

(assert (=> b!1731489 (= e!1107743 (contains!3391 (t!160711 rules!3447) rule!422))))

(assert (= (and d!530113 res!777718) b!1731488))

(assert (= (and b!1731488 (not res!777717)) b!1731489))

(declare-fun m!2139959 () Bool)

(assert (=> d!530113 m!2139959))

(declare-fun m!2139961 () Bool)

(assert (=> d!530113 m!2139961))

(declare-fun m!2139963 () Bool)

(assert (=> b!1731489 m!2139963))

(assert (=> b!1730926 d!530113))

(declare-fun b!1731490 () Bool)

(declare-fun res!777726 () Bool)

(declare-fun e!1107748 () Bool)

(assert (=> b!1731490 (=> (not res!777726) (not e!1107748))))

(assert (=> b!1731490 (= res!777726 (isEmpty!11941 (tail!2586 lt!664055)))))

(declare-fun b!1731491 () Bool)

(declare-fun e!1107746 () Bool)

(declare-fun e!1107750 () Bool)

(assert (=> b!1731491 (= e!1107746 e!1107750)))

(declare-fun c!282883 () Bool)

(assert (=> b!1731491 (= c!282883 ((_ is EmptyLang!4697) (regex!3369 (rule!5347 (_1!10731 lt!664033)))))))

(declare-fun b!1731492 () Bool)

(assert (=> b!1731492 (= e!1107748 (= (head!3938 lt!664055) (c!282782 (regex!3369 (rule!5347 (_1!10731 lt!664033))))))))

(declare-fun b!1731493 () Bool)

(declare-fun lt!664362 () Bool)

(declare-fun call!109937 () Bool)

(assert (=> b!1731493 (= e!1107746 (= lt!664362 call!109937))))

(declare-fun b!1731494 () Bool)

(declare-fun res!777721 () Bool)

(assert (=> b!1731494 (=> (not res!777721) (not e!1107748))))

(assert (=> b!1731494 (= res!777721 (not call!109937))))

(declare-fun b!1731495 () Bool)

(declare-fun e!1107745 () Bool)

(declare-fun e!1107749 () Bool)

(assert (=> b!1731495 (= e!1107745 e!1107749)))

(declare-fun res!777719 () Bool)

(assert (=> b!1731495 (=> (not res!777719) (not e!1107749))))

(assert (=> b!1731495 (= res!777719 (not lt!664362))))

(declare-fun b!1731496 () Bool)

(declare-fun e!1107751 () Bool)

(assert (=> b!1731496 (= e!1107751 (nullable!1421 (regex!3369 (rule!5347 (_1!10731 lt!664033)))))))

(declare-fun b!1731498 () Bool)

(declare-fun res!777720 () Bool)

(assert (=> b!1731498 (=> res!777720 e!1107745)))

(assert (=> b!1731498 (= res!777720 e!1107748)))

(declare-fun res!777725 () Bool)

(assert (=> b!1731498 (=> (not res!777725) (not e!1107748))))

(assert (=> b!1731498 (= res!777725 lt!664362)))

(declare-fun bm!109932 () Bool)

(assert (=> bm!109932 (= call!109937 (isEmpty!11941 lt!664055))))

(declare-fun b!1731499 () Bool)

(declare-fun e!1107747 () Bool)

(assert (=> b!1731499 (= e!1107749 e!1107747)))

(declare-fun res!777722 () Bool)

(assert (=> b!1731499 (=> res!777722 e!1107747)))

(assert (=> b!1731499 (= res!777722 call!109937)))

(declare-fun b!1731500 () Bool)

(assert (=> b!1731500 (= e!1107750 (not lt!664362))))

(declare-fun b!1731501 () Bool)

(assert (=> b!1731501 (= e!1107751 (matchR!2171 (derivativeStep!1189 (regex!3369 (rule!5347 (_1!10731 lt!664033))) (head!3938 lt!664055)) (tail!2586 lt!664055)))))

(declare-fun b!1731502 () Bool)

(declare-fun res!777724 () Bool)

(assert (=> b!1731502 (=> res!777724 e!1107745)))

(assert (=> b!1731502 (= res!777724 (not ((_ is ElementMatch!4697) (regex!3369 (rule!5347 (_1!10731 lt!664033))))))))

(assert (=> b!1731502 (= e!1107750 e!1107745)))

(declare-fun b!1731503 () Bool)

(declare-fun res!777723 () Bool)

(assert (=> b!1731503 (=> res!777723 e!1107747)))

(assert (=> b!1731503 (= res!777723 (not (isEmpty!11941 (tail!2586 lt!664055))))))

(declare-fun d!530115 () Bool)

(assert (=> d!530115 e!1107746))

(declare-fun c!282882 () Bool)

(assert (=> d!530115 (= c!282882 ((_ is EmptyExpr!4697) (regex!3369 (rule!5347 (_1!10731 lt!664033)))))))

(assert (=> d!530115 (= lt!664362 e!1107751)))

(declare-fun c!282881 () Bool)

(assert (=> d!530115 (= c!282881 (isEmpty!11941 lt!664055))))

(assert (=> d!530115 (validRegex!1895 (regex!3369 (rule!5347 (_1!10731 lt!664033))))))

(assert (=> d!530115 (= (matchR!2171 (regex!3369 (rule!5347 (_1!10731 lt!664033))) lt!664055) lt!664362)))

(declare-fun b!1731497 () Bool)

(assert (=> b!1731497 (= e!1107747 (not (= (head!3938 lt!664055) (c!282782 (regex!3369 (rule!5347 (_1!10731 lt!664033)))))))))

(assert (= (and d!530115 c!282881) b!1731496))

(assert (= (and d!530115 (not c!282881)) b!1731501))

(assert (= (and d!530115 c!282882) b!1731493))

(assert (= (and d!530115 (not c!282882)) b!1731491))

(assert (= (and b!1731491 c!282883) b!1731500))

(assert (= (and b!1731491 (not c!282883)) b!1731502))

(assert (= (and b!1731502 (not res!777724)) b!1731498))

(assert (= (and b!1731498 res!777725) b!1731494))

(assert (= (and b!1731494 res!777721) b!1731490))

(assert (= (and b!1731490 res!777726) b!1731492))

(assert (= (and b!1731498 (not res!777720)) b!1731495))

(assert (= (and b!1731495 res!777719) b!1731499))

(assert (= (and b!1731499 (not res!777722)) b!1731503))

(assert (= (and b!1731503 (not res!777723)) b!1731497))

(assert (= (or b!1731493 b!1731494 b!1731499) bm!109932))

(assert (=> b!1731492 m!2139587))

(declare-fun m!2139965 () Bool)

(assert (=> d!530115 m!2139965))

(declare-fun m!2139967 () Bool)

(assert (=> d!530115 m!2139967))

(assert (=> b!1731490 m!2139579))

(assert (=> b!1731490 m!2139579))

(declare-fun m!2139969 () Bool)

(assert (=> b!1731490 m!2139969))

(declare-fun m!2139971 () Bool)

(assert (=> b!1731496 m!2139971))

(assert (=> b!1731501 m!2139587))

(assert (=> b!1731501 m!2139587))

(declare-fun m!2139975 () Bool)

(assert (=> b!1731501 m!2139975))

(assert (=> b!1731501 m!2139579))

(assert (=> b!1731501 m!2139975))

(assert (=> b!1731501 m!2139579))

(declare-fun m!2139977 () Bool)

(assert (=> b!1731501 m!2139977))

(assert (=> b!1731503 m!2139579))

(assert (=> b!1731503 m!2139579))

(assert (=> b!1731503 m!2139969))

(assert (=> bm!109932 m!2139965))

(assert (=> b!1731497 m!2139587))

(assert (=> b!1730947 d!530115))

(declare-fun d!530119 () Bool)

(assert (=> d!530119 (= (isDefined!3106 lt!664066) (not (isEmpty!11944 lt!664066)))))

(declare-fun bs!402650 () Bool)

(assert (= bs!402650 d!530119))

(declare-fun m!2139979 () Bool)

(assert (=> bs!402650 m!2139979))

(assert (=> b!1730944 d!530119))

(declare-fun b!1731504 () Bool)

(declare-fun res!777733 () Bool)

(declare-fun e!1107753 () Bool)

(assert (=> b!1731504 (=> (not res!777733) (not e!1107753))))

(declare-fun lt!664365 () Option!3763)

(assert (=> b!1731504 (= res!777733 (= (value!105689 (_1!10731 (get!5664 lt!664365))) (apply!5174 (transformation!3369 (rule!5347 (_1!10731 (get!5664 lt!664365)))) (seqFromList!2343 (originalCharacters!4183 (_1!10731 (get!5664 lt!664365)))))))))

(declare-fun b!1731505 () Bool)

(declare-fun e!1107752 () Option!3763)

(declare-fun call!109938 () Option!3763)

(assert (=> b!1731505 (= e!1107752 call!109938)))

(declare-fun b!1731506 () Bool)

(declare-fun lt!664367 () Option!3763)

(declare-fun lt!664368 () Option!3763)

(assert (=> b!1731506 (= e!1107752 (ite (and ((_ is None!3762) lt!664367) ((_ is None!3762) lt!664368)) None!3762 (ite ((_ is None!3762) lt!664368) lt!664367 (ite ((_ is None!3762) lt!664367) lt!664368 (ite (>= (size!15080 (_1!10731 (v!25181 lt!664367))) (size!15080 (_1!10731 (v!25181 lt!664368)))) lt!664367 lt!664368)))))))

(assert (=> b!1731506 (= lt!664367 call!109938)))

(assert (=> b!1731506 (= lt!664368 (maxPrefix!1552 thiss!24550 (t!160711 rules!3447) lt!664039))))

(declare-fun b!1731507 () Bool)

(assert (=> b!1731507 (= e!1107753 (contains!3391 rules!3447 (rule!5347 (_1!10731 (get!5664 lt!664365)))))))

(declare-fun b!1731508 () Bool)

(declare-fun e!1107754 () Bool)

(assert (=> b!1731508 (= e!1107754 e!1107753)))

(declare-fun res!777732 () Bool)

(assert (=> b!1731508 (=> (not res!777732) (not e!1107753))))

(assert (=> b!1731508 (= res!777732 (isDefined!3106 lt!664365))))

(declare-fun b!1731509 () Bool)

(declare-fun res!777729 () Bool)

(assert (=> b!1731509 (=> (not res!777729) (not e!1107753))))

(assert (=> b!1731509 (= res!777729 (matchR!2171 (regex!3369 (rule!5347 (_1!10731 (get!5664 lt!664365)))) (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664365))))))))

(declare-fun b!1731510 () Bool)

(declare-fun res!777728 () Bool)

(assert (=> b!1731510 (=> (not res!777728) (not e!1107753))))

(assert (=> b!1731510 (= res!777728 (= (++!5194 (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664365)))) (_2!10731 (get!5664 lt!664365))) lt!664039))))

(declare-fun b!1731511 () Bool)

(declare-fun res!777731 () Bool)

(assert (=> b!1731511 (=> (not res!777731) (not e!1107753))))

(assert (=> b!1731511 (= res!777731 (= (list!7674 (charsOf!2018 (_1!10731 (get!5664 lt!664365)))) (originalCharacters!4183 (_1!10731 (get!5664 lt!664365)))))))

(declare-fun b!1731512 () Bool)

(declare-fun res!777727 () Bool)

(assert (=> b!1731512 (=> (not res!777727) (not e!1107753))))

(assert (=> b!1731512 (= res!777727 (< (size!15082 (_2!10731 (get!5664 lt!664365))) (size!15082 lt!664039)))))

(declare-fun d!530121 () Bool)

(assert (=> d!530121 e!1107754))

(declare-fun res!777730 () Bool)

(assert (=> d!530121 (=> res!777730 e!1107754)))

(assert (=> d!530121 (= res!777730 (isEmpty!11944 lt!664365))))

(assert (=> d!530121 (= lt!664365 e!1107752)))

(declare-fun c!282884 () Bool)

(assert (=> d!530121 (= c!282884 (and ((_ is Cons!18982) rules!3447) ((_ is Nil!18982) (t!160711 rules!3447))))))

(declare-fun lt!664366 () Unit!32837)

(declare-fun lt!664364 () Unit!32837)

(assert (=> d!530121 (= lt!664366 lt!664364)))

(assert (=> d!530121 (isPrefix!1610 lt!664039 lt!664039)))

(assert (=> d!530121 (= lt!664364 (lemmaIsPrefixRefl!1085 lt!664039 lt!664039))))

(assert (=> d!530121 (rulesValidInductive!1122 thiss!24550 rules!3447)))

(assert (=> d!530121 (= (maxPrefix!1552 thiss!24550 rules!3447 lt!664039) lt!664365)))

(declare-fun bm!109933 () Bool)

(assert (=> bm!109933 (= call!109938 (maxPrefixOneRule!928 thiss!24550 (h!24383 rules!3447) lt!664039))))

(assert (= (and d!530121 c!282884) b!1731505))

(assert (= (and d!530121 (not c!282884)) b!1731506))

(assert (= (or b!1731505 b!1731506) bm!109933))

(assert (= (and d!530121 (not res!777730)) b!1731508))

(assert (= (and b!1731508 res!777732) b!1731511))

(assert (= (and b!1731511 res!777731) b!1731512))

(assert (= (and b!1731512 res!777727) b!1731510))

(assert (= (and b!1731510 res!777728) b!1731504))

(assert (= (and b!1731504 res!777733) b!1731509))

(assert (= (and b!1731509 res!777729) b!1731507))

(declare-fun m!2139985 () Bool)

(assert (=> b!1731504 m!2139985))

(declare-fun m!2139987 () Bool)

(assert (=> b!1731504 m!2139987))

(assert (=> b!1731504 m!2139987))

(declare-fun m!2139989 () Bool)

(assert (=> b!1731504 m!2139989))

(assert (=> b!1731507 m!2139985))

(declare-fun m!2139991 () Bool)

(assert (=> b!1731507 m!2139991))

(assert (=> b!1731511 m!2139985))

(declare-fun m!2139993 () Bool)

(assert (=> b!1731511 m!2139993))

(assert (=> b!1731511 m!2139993))

(declare-fun m!2139995 () Bool)

(assert (=> b!1731511 m!2139995))

(declare-fun m!2139997 () Bool)

(assert (=> bm!109933 m!2139997))

(assert (=> b!1731509 m!2139985))

(assert (=> b!1731509 m!2139993))

(assert (=> b!1731509 m!2139993))

(assert (=> b!1731509 m!2139995))

(assert (=> b!1731509 m!2139995))

(declare-fun m!2139999 () Bool)

(assert (=> b!1731509 m!2139999))

(assert (=> b!1731510 m!2139985))

(assert (=> b!1731510 m!2139993))

(assert (=> b!1731510 m!2139993))

(assert (=> b!1731510 m!2139995))

(assert (=> b!1731510 m!2139995))

(declare-fun m!2140001 () Bool)

(assert (=> b!1731510 m!2140001))

(declare-fun m!2140003 () Bool)

(assert (=> b!1731506 m!2140003))

(declare-fun m!2140005 () Bool)

(assert (=> d!530121 m!2140005))

(declare-fun m!2140007 () Bool)

(assert (=> d!530121 m!2140007))

(declare-fun m!2140009 () Bool)

(assert (=> d!530121 m!2140009))

(assert (=> d!530121 m!2139689))

(assert (=> b!1731512 m!2139985))

(declare-fun m!2140011 () Bool)

(assert (=> b!1731512 m!2140011))

(assert (=> b!1731512 m!2139275))

(declare-fun m!2140013 () Bool)

(assert (=> b!1731508 m!2140013))

(assert (=> b!1730944 d!530121))

(declare-fun d!530125 () Bool)

(assert (=> d!530125 (= (list!7674 lt!664043) (list!7675 (c!282783 lt!664043)))))

(declare-fun bs!402651 () Bool)

(assert (= bs!402651 d!530125))

(declare-fun m!2140015 () Bool)

(assert (=> bs!402651 m!2140015))

(assert (=> b!1730944 d!530125))

(declare-fun d!530127 () Bool)

(declare-fun lt!664371 () BalanceConc!12570)

(assert (=> d!530127 (= (list!7674 lt!664371) (originalCharacters!4183 token!523))))

(assert (=> d!530127 (= lt!664371 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 token!523))) (value!105689 token!523)))))

(assert (=> d!530127 (= (charsOf!2018 token!523) lt!664371)))

(declare-fun b_lambda!55245 () Bool)

(assert (=> (not b_lambda!55245) (not d!530127)))

(assert (=> d!530127 t!160719))

(declare-fun b_and!127677 () Bool)

(assert (= b_and!127665 (and (=> t!160719 result!123964) b_and!127677)))

(assert (=> d!530127 t!160721))

(declare-fun b_and!127679 () Bool)

(assert (= b_and!127667 (and (=> t!160721 result!123966) b_and!127679)))

(assert (=> d!530127 t!160723))

(declare-fun b_and!127681 () Bool)

(assert (= b_and!127669 (and (=> t!160723 result!123968) b_and!127681)))

(declare-fun m!2140017 () Bool)

(assert (=> d!530127 m!2140017))

(assert (=> d!530127 m!2139479))

(assert (=> b!1730944 d!530127))

(declare-fun b!1731519 () Bool)

(declare-fun res!777741 () Bool)

(declare-fun e!1107762 () Bool)

(assert (=> b!1731519 (=> (not res!777741) (not e!1107762))))

(assert (=> b!1731519 (= res!777741 (isEmpty!11941 (tail!2586 lt!664039)))))

(declare-fun b!1731520 () Bool)

(declare-fun e!1107760 () Bool)

(declare-fun e!1107764 () Bool)

(assert (=> b!1731520 (= e!1107760 e!1107764)))

(declare-fun c!282890 () Bool)

(assert (=> b!1731520 (= c!282890 ((_ is EmptyLang!4697) (regex!3369 rule!422)))))

(declare-fun b!1731521 () Bool)

(assert (=> b!1731521 (= e!1107762 (= (head!3938 lt!664039) (c!282782 (regex!3369 rule!422))))))

(declare-fun b!1731522 () Bool)

(declare-fun lt!664373 () Bool)

(declare-fun call!109939 () Bool)

(assert (=> b!1731522 (= e!1107760 (= lt!664373 call!109939))))

(declare-fun b!1731523 () Bool)

(declare-fun res!777736 () Bool)

(assert (=> b!1731523 (=> (not res!777736) (not e!1107762))))

(assert (=> b!1731523 (= res!777736 (not call!109939))))

(declare-fun b!1731524 () Bool)

(declare-fun e!1107759 () Bool)

(declare-fun e!1107763 () Bool)

(assert (=> b!1731524 (= e!1107759 e!1107763)))

(declare-fun res!777734 () Bool)

(assert (=> b!1731524 (=> (not res!777734) (not e!1107763))))

(assert (=> b!1731524 (= res!777734 (not lt!664373))))

(declare-fun b!1731525 () Bool)

(declare-fun e!1107765 () Bool)

(assert (=> b!1731525 (= e!1107765 (nullable!1421 (regex!3369 rule!422)))))

(declare-fun b!1731527 () Bool)

(declare-fun res!777735 () Bool)

(assert (=> b!1731527 (=> res!777735 e!1107759)))

(assert (=> b!1731527 (= res!777735 e!1107762)))

(declare-fun res!777740 () Bool)

(assert (=> b!1731527 (=> (not res!777740) (not e!1107762))))

(assert (=> b!1731527 (= res!777740 lt!664373)))

(declare-fun bm!109934 () Bool)

(assert (=> bm!109934 (= call!109939 (isEmpty!11941 lt!664039))))

(declare-fun b!1731528 () Bool)

(declare-fun e!1107761 () Bool)

(assert (=> b!1731528 (= e!1107763 e!1107761)))

(declare-fun res!777737 () Bool)

(assert (=> b!1731528 (=> res!777737 e!1107761)))

(assert (=> b!1731528 (= res!777737 call!109939)))

(declare-fun b!1731529 () Bool)

(assert (=> b!1731529 (= e!1107764 (not lt!664373))))

(declare-fun b!1731530 () Bool)

(assert (=> b!1731530 (= e!1107765 (matchR!2171 (derivativeStep!1189 (regex!3369 rule!422) (head!3938 lt!664039)) (tail!2586 lt!664039)))))

(declare-fun b!1731531 () Bool)

(declare-fun res!777739 () Bool)

(assert (=> b!1731531 (=> res!777739 e!1107759)))

(assert (=> b!1731531 (= res!777739 (not ((_ is ElementMatch!4697) (regex!3369 rule!422))))))

(assert (=> b!1731531 (= e!1107764 e!1107759)))

(declare-fun b!1731532 () Bool)

(declare-fun res!777738 () Bool)

(assert (=> b!1731532 (=> res!777738 e!1107761)))

(assert (=> b!1731532 (= res!777738 (not (isEmpty!11941 (tail!2586 lt!664039))))))

(declare-fun d!530129 () Bool)

(assert (=> d!530129 e!1107760))

(declare-fun c!282889 () Bool)

(assert (=> d!530129 (= c!282889 ((_ is EmptyExpr!4697) (regex!3369 rule!422)))))

(assert (=> d!530129 (= lt!664373 e!1107765)))

(declare-fun c!282888 () Bool)

(assert (=> d!530129 (= c!282888 (isEmpty!11941 lt!664039))))

(assert (=> d!530129 (validRegex!1895 (regex!3369 rule!422))))

(assert (=> d!530129 (= (matchR!2171 (regex!3369 rule!422) lt!664039) lt!664373)))

(declare-fun b!1731526 () Bool)

(assert (=> b!1731526 (= e!1107761 (not (= (head!3938 lt!664039) (c!282782 (regex!3369 rule!422)))))))

(assert (= (and d!530129 c!282888) b!1731525))

(assert (= (and d!530129 (not c!282888)) b!1731530))

(assert (= (and d!530129 c!282889) b!1731522))

(assert (= (and d!530129 (not c!282889)) b!1731520))

(assert (= (and b!1731520 c!282890) b!1731529))

(assert (= (and b!1731520 (not c!282890)) b!1731531))

(assert (= (and b!1731531 (not res!777739)) b!1731527))

(assert (= (and b!1731527 res!777740) b!1731523))

(assert (= (and b!1731523 res!777736) b!1731519))

(assert (= (and b!1731519 res!777741) b!1731521))

(assert (= (and b!1731527 (not res!777735)) b!1731524))

(assert (= (and b!1731524 res!777734) b!1731528))

(assert (= (and b!1731528 (not res!777737)) b!1731532))

(assert (= (and b!1731532 (not res!777738)) b!1731526))

(assert (= (or b!1731522 b!1731523 b!1731528) bm!109934))

(assert (=> b!1731521 m!2139547))

(assert (=> d!530129 m!2139549))

(declare-fun m!2140025 () Bool)

(assert (=> d!530129 m!2140025))

(assert (=> b!1731519 m!2139553))

(assert (=> b!1731519 m!2139553))

(assert (=> b!1731519 m!2139555))

(declare-fun m!2140027 () Bool)

(assert (=> b!1731525 m!2140027))

(assert (=> b!1731530 m!2139547))

(assert (=> b!1731530 m!2139547))

(declare-fun m!2140029 () Bool)

(assert (=> b!1731530 m!2140029))

(assert (=> b!1731530 m!2139553))

(assert (=> b!1731530 m!2140029))

(assert (=> b!1731530 m!2139553))

(declare-fun m!2140031 () Bool)

(assert (=> b!1731530 m!2140031))

(assert (=> b!1731532 m!2139553))

(assert (=> b!1731532 m!2139553))

(assert (=> b!1731532 m!2139555))

(assert (=> bm!109934 m!2139549))

(assert (=> b!1731526 m!2139547))

(assert (=> b!1730922 d!530129))

(declare-fun d!530135 () Bool)

(declare-fun res!777753 () Bool)

(declare-fun e!1107772 () Bool)

(assert (=> d!530135 (=> (not res!777753) (not e!1107772))))

(assert (=> d!530135 (= res!777753 (validRegex!1895 (regex!3369 rule!422)))))

(assert (=> d!530135 (= (ruleValid!868 thiss!24550 rule!422) e!1107772)))

(declare-fun b!1731548 () Bool)

(declare-fun res!777754 () Bool)

(assert (=> b!1731548 (=> (not res!777754) (not e!1107772))))

(assert (=> b!1731548 (= res!777754 (not (nullable!1421 (regex!3369 rule!422))))))

(declare-fun b!1731549 () Bool)

(assert (=> b!1731549 (= e!1107772 (not (= (tag!3695 rule!422) (String!21628 ""))))))

(assert (= (and d!530135 res!777753) b!1731548))

(assert (= (and b!1731548 res!777754) b!1731549))

(assert (=> d!530135 m!2140025))

(assert (=> b!1731548 m!2140027))

(assert (=> b!1730922 d!530135))

(declare-fun d!530139 () Bool)

(assert (=> d!530139 (ruleValid!868 thiss!24550 rule!422)))

(declare-fun lt!664384 () Unit!32837)

(declare-fun choose!10593 (LexerInterface!2998 Rule!6538 List!19052) Unit!32837)

(assert (=> d!530139 (= lt!664384 (choose!10593 thiss!24550 rule!422 rules!3447))))

(assert (=> d!530139 (contains!3391 rules!3447 rule!422)))

(assert (=> d!530139 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!392 thiss!24550 rule!422 rules!3447) lt!664384)))

(declare-fun bs!402654 () Bool)

(assert (= bs!402654 d!530139))

(assert (=> bs!402654 m!2139157))

(declare-fun m!2140079 () Bool)

(assert (=> bs!402654 m!2140079))

(assert (=> bs!402654 m!2139247))

(assert (=> b!1730922 d!530139))

(declare-fun b!1731566 () Bool)

(declare-fun e!1107784 () Bool)

(assert (=> b!1731566 (= e!1107784 (inv!15 (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))

(declare-fun b!1731567 () Bool)

(declare-fun e!1107782 () Bool)

(assert (=> b!1731567 (= e!1107782 (inv!16 (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))

(declare-fun b!1731568 () Bool)

(declare-fun res!777764 () Bool)

(assert (=> b!1731568 (=> res!777764 e!1107784)))

(assert (=> b!1731568 (= res!777764 (not ((_ is IntegerValue!10379) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))))

(declare-fun e!1107783 () Bool)

(assert (=> b!1731568 (= e!1107783 e!1107784)))

(declare-fun b!1731569 () Bool)

(assert (=> b!1731569 (= e!1107782 e!1107783)))

(declare-fun c!282897 () Bool)

(assert (=> b!1731569 (= c!282897 ((_ is IntegerValue!10378) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))

(declare-fun b!1731570 () Bool)

(assert (=> b!1731570 (= e!1107783 (inv!17 (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))

(declare-fun d!530151 () Bool)

(declare-fun c!282896 () Bool)

(assert (=> d!530151 (= c!282896 ((_ is IntegerValue!10377) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))))

(assert (=> d!530151 (= (inv!21 (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)) e!1107782)))

(assert (= (and d!530151 c!282896) b!1731567))

(assert (= (and d!530151 (not c!282896)) b!1731569))

(assert (= (and b!1731569 c!282897) b!1731570))

(assert (= (and b!1731569 (not c!282897)) b!1731568))

(assert (= (and b!1731568 (not res!777764)) b!1731566))

(declare-fun m!2140081 () Bool)

(assert (=> b!1731566 m!2140081))

(declare-fun m!2140083 () Bool)

(assert (=> b!1731567 m!2140083))

(declare-fun m!2140087 () Bool)

(assert (=> b!1731570 m!2140087))

(assert (=> tb!103089 d!530151))

(declare-fun d!530153 () Bool)

(assert (=> d!530153 (= suffix!1421 lt!664040)))

(declare-fun lt!664385 () Unit!32837)

(assert (=> d!530153 (= lt!664385 (choose!10581 lt!664039 suffix!1421 lt!664039 lt!664040 lt!664045))))

(assert (=> d!530153 (isPrefix!1610 lt!664039 lt!664045)))

(assert (=> d!530153 (= (lemmaSamePrefixThenSameSuffix!754 lt!664039 suffix!1421 lt!664039 lt!664040 lt!664045) lt!664385)))

(declare-fun bs!402655 () Bool)

(assert (= bs!402655 d!530153))

(declare-fun m!2140095 () Bool)

(assert (=> bs!402655 m!2140095))

(assert (=> bs!402655 m!2139199))

(assert (=> b!1730943 d!530153))

(declare-fun d!530157 () Bool)

(declare-fun lt!664386 () List!19051)

(assert (=> d!530157 (= (++!5194 lt!664039 lt!664386) lt!664045)))

(declare-fun e!1107785 () List!19051)

(assert (=> d!530157 (= lt!664386 e!1107785)))

(declare-fun c!282898 () Bool)

(assert (=> d!530157 (= c!282898 ((_ is Cons!18981) lt!664039))))

(assert (=> d!530157 (>= (size!15082 lt!664045) (size!15082 lt!664039))))

(assert (=> d!530157 (= (getSuffix!804 lt!664045 lt!664039) lt!664386)))

(declare-fun b!1731571 () Bool)

(assert (=> b!1731571 (= e!1107785 (getSuffix!804 (tail!2586 lt!664045) (t!160710 lt!664039)))))

(declare-fun b!1731572 () Bool)

(assert (=> b!1731572 (= e!1107785 lt!664045)))

(assert (= (and d!530157 c!282898) b!1731571))

(assert (= (and d!530157 (not c!282898)) b!1731572))

(declare-fun m!2140097 () Bool)

(assert (=> d!530157 m!2140097))

(assert (=> d!530157 m!2139353))

(assert (=> d!530157 m!2139275))

(assert (=> b!1731571 m!2139355))

(assert (=> b!1731571 m!2139355))

(declare-fun m!2140099 () Bool)

(assert (=> b!1731571 m!2140099))

(assert (=> b!1730943 d!530157))

(declare-fun b!1731573 () Bool)

(declare-fun res!777772 () Bool)

(declare-fun e!1107789 () Bool)

(assert (=> b!1731573 (=> (not res!777772) (not e!1107789))))

(assert (=> b!1731573 (= res!777772 (isEmpty!11941 (tail!2586 lt!664055)))))

(declare-fun b!1731574 () Bool)

(declare-fun e!1107787 () Bool)

(declare-fun e!1107791 () Bool)

(assert (=> b!1731574 (= e!1107787 e!1107791)))

(declare-fun c!282901 () Bool)

(assert (=> b!1731574 (= c!282901 ((_ is EmptyLang!4697) lt!664054))))

(declare-fun b!1731575 () Bool)

(assert (=> b!1731575 (= e!1107789 (= (head!3938 lt!664055) (c!282782 lt!664054)))))

(declare-fun b!1731576 () Bool)

(declare-fun lt!664387 () Bool)

(declare-fun call!109942 () Bool)

(assert (=> b!1731576 (= e!1107787 (= lt!664387 call!109942))))

(declare-fun b!1731577 () Bool)

(declare-fun res!777767 () Bool)

(assert (=> b!1731577 (=> (not res!777767) (not e!1107789))))

(assert (=> b!1731577 (= res!777767 (not call!109942))))

(declare-fun b!1731578 () Bool)

(declare-fun e!1107786 () Bool)

(declare-fun e!1107790 () Bool)

(assert (=> b!1731578 (= e!1107786 e!1107790)))

(declare-fun res!777765 () Bool)

(assert (=> b!1731578 (=> (not res!777765) (not e!1107790))))

(assert (=> b!1731578 (= res!777765 (not lt!664387))))

(declare-fun b!1731579 () Bool)

(declare-fun e!1107792 () Bool)

(assert (=> b!1731579 (= e!1107792 (nullable!1421 lt!664054))))

(declare-fun b!1731581 () Bool)

(declare-fun res!777766 () Bool)

(assert (=> b!1731581 (=> res!777766 e!1107786)))

(assert (=> b!1731581 (= res!777766 e!1107789)))

(declare-fun res!777771 () Bool)

(assert (=> b!1731581 (=> (not res!777771) (not e!1107789))))

(assert (=> b!1731581 (= res!777771 lt!664387)))

(declare-fun bm!109937 () Bool)

(assert (=> bm!109937 (= call!109942 (isEmpty!11941 lt!664055))))

(declare-fun b!1731582 () Bool)

(declare-fun e!1107788 () Bool)

(assert (=> b!1731582 (= e!1107790 e!1107788)))

(declare-fun res!777768 () Bool)

(assert (=> b!1731582 (=> res!777768 e!1107788)))

(assert (=> b!1731582 (= res!777768 call!109942)))

(declare-fun b!1731583 () Bool)

(assert (=> b!1731583 (= e!1107791 (not lt!664387))))

(declare-fun b!1731584 () Bool)

(assert (=> b!1731584 (= e!1107792 (matchR!2171 (derivativeStep!1189 lt!664054 (head!3938 lt!664055)) (tail!2586 lt!664055)))))

(declare-fun b!1731585 () Bool)

(declare-fun res!777770 () Bool)

(assert (=> b!1731585 (=> res!777770 e!1107786)))

(assert (=> b!1731585 (= res!777770 (not ((_ is ElementMatch!4697) lt!664054)))))

(assert (=> b!1731585 (= e!1107791 e!1107786)))

(declare-fun b!1731586 () Bool)

(declare-fun res!777769 () Bool)

(assert (=> b!1731586 (=> res!777769 e!1107788)))

(assert (=> b!1731586 (= res!777769 (not (isEmpty!11941 (tail!2586 lt!664055))))))

(declare-fun d!530159 () Bool)

(assert (=> d!530159 e!1107787))

(declare-fun c!282900 () Bool)

(assert (=> d!530159 (= c!282900 ((_ is EmptyExpr!4697) lt!664054))))

(assert (=> d!530159 (= lt!664387 e!1107792)))

(declare-fun c!282899 () Bool)

(assert (=> d!530159 (= c!282899 (isEmpty!11941 lt!664055))))

(assert (=> d!530159 (validRegex!1895 lt!664054)))

(assert (=> d!530159 (= (matchR!2171 lt!664054 lt!664055) lt!664387)))

(declare-fun b!1731580 () Bool)

(assert (=> b!1731580 (= e!1107788 (not (= (head!3938 lt!664055) (c!282782 lt!664054))))))

(assert (= (and d!530159 c!282899) b!1731579))

(assert (= (and d!530159 (not c!282899)) b!1731584))

(assert (= (and d!530159 c!282900) b!1731576))

(assert (= (and d!530159 (not c!282900)) b!1731574))

(assert (= (and b!1731574 c!282901) b!1731583))

(assert (= (and b!1731574 (not c!282901)) b!1731585))

(assert (= (and b!1731585 (not res!777770)) b!1731581))

(assert (= (and b!1731581 res!777771) b!1731577))

(assert (= (and b!1731577 res!777767) b!1731573))

(assert (= (and b!1731573 res!777772) b!1731575))

(assert (= (and b!1731581 (not res!777766)) b!1731578))

(assert (= (and b!1731578 res!777765) b!1731582))

(assert (= (and b!1731582 (not res!777768)) b!1731586))

(assert (= (and b!1731586 (not res!777769)) b!1731580))

(assert (= (or b!1731576 b!1731577 b!1731582) bm!109937))

(assert (=> b!1731575 m!2139587))

(assert (=> d!530159 m!2139965))

(assert (=> d!530159 m!2139551))

(assert (=> b!1731573 m!2139579))

(assert (=> b!1731573 m!2139579))

(assert (=> b!1731573 m!2139969))

(assert (=> b!1731579 m!2139557))

(assert (=> b!1731584 m!2139587))

(assert (=> b!1731584 m!2139587))

(declare-fun m!2140101 () Bool)

(assert (=> b!1731584 m!2140101))

(assert (=> b!1731584 m!2139579))

(assert (=> b!1731584 m!2140101))

(assert (=> b!1731584 m!2139579))

(declare-fun m!2140103 () Bool)

(assert (=> b!1731584 m!2140103))

(assert (=> b!1731586 m!2139579))

(assert (=> b!1731586 m!2139579))

(assert (=> b!1731586 m!2139969))

(assert (=> bm!109937 m!2139965))

(assert (=> b!1731580 m!2139587))

(assert (=> b!1730943 d!530159))

(declare-fun d!530161 () Bool)

(assert (=> d!530161 (matchR!2171 (rulesRegex!727 thiss!24550 rules!3447) (list!7674 (charsOf!2018 (_1!10731 lt!664033))))))

(declare-fun lt!664388 () Unit!32837)

(assert (=> d!530161 (= lt!664388 (choose!10584 thiss!24550 rules!3447 lt!664045 (_1!10731 lt!664033) (rule!5347 (_1!10731 lt!664033)) (_2!10731 lt!664033)))))

(assert (=> d!530161 (not (isEmpty!11942 rules!3447))))

(assert (=> d!530161 (= (lemmaMaxPrefixThenMatchesRulesRegex!118 thiss!24550 rules!3447 lt!664045 (_1!10731 lt!664033) (rule!5347 (_1!10731 lt!664033)) (_2!10731 lt!664033)) lt!664388)))

(declare-fun bs!402656 () Bool)

(assert (= bs!402656 d!530161))

(assert (=> bs!402656 m!2139143))

(assert (=> bs!402656 m!2139229))

(assert (=> bs!402656 m!2139123))

(assert (=> bs!402656 m!2139145))

(declare-fun m!2140105 () Bool)

(assert (=> bs!402656 m!2140105))

(assert (=> bs!402656 m!2139143))

(assert (=> bs!402656 m!2139145))

(declare-fun m!2140107 () Bool)

(assert (=> bs!402656 m!2140107))

(assert (=> bs!402656 m!2139123))

(assert (=> b!1730943 d!530161))

(declare-fun d!530163 () Bool)

(declare-fun choose!10594 (Int) Bool)

(assert (=> d!530163 (= (Forall!744 lambda!69368) (choose!10594 lambda!69368))))

(declare-fun bs!402657 () Bool)

(assert (= bs!402657 d!530163))

(declare-fun m!2140109 () Bool)

(assert (=> bs!402657 m!2140109))

(assert (=> b!1730924 d!530163))

(declare-fun d!530167 () Bool)

(declare-fun e!1107798 () Bool)

(assert (=> d!530167 e!1107798))

(declare-fun res!777781 () Bool)

(assert (=> d!530167 (=> (not res!777781) (not e!1107798))))

(assert (=> d!530167 (= res!777781 (semiInverseModEq!1334 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))))))

(declare-fun Unit!32845 () Unit!32837)

(assert (=> d!530167 (= (lemmaInv!576 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) Unit!32845)))

(declare-fun b!1731595 () Bool)

(assert (=> b!1731595 (= e!1107798 (equivClasses!1275 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))))))

(assert (= (and d!530167 res!777781) b!1731595))

(declare-fun m!2140113 () Bool)

(assert (=> d!530167 m!2140113))

(declare-fun m!2140115 () Bool)

(assert (=> b!1731595 m!2140115))

(assert (=> b!1730924 d!530167))

(declare-fun b!1731598 () Bool)

(declare-fun e!1107799 () Bool)

(assert (=> b!1731598 (= e!1107799 (isPrefix!1610 (tail!2586 lt!664042) (tail!2586 lt!664055)))))

(declare-fun b!1731599 () Bool)

(declare-fun e!1107801 () Bool)

(assert (=> b!1731599 (= e!1107801 (>= (size!15082 lt!664055) (size!15082 lt!664042)))))

(declare-fun b!1731596 () Bool)

(declare-fun e!1107800 () Bool)

(assert (=> b!1731596 (= e!1107800 e!1107799)))

(declare-fun res!777784 () Bool)

(assert (=> b!1731596 (=> (not res!777784) (not e!1107799))))

(assert (=> b!1731596 (= res!777784 (not ((_ is Nil!18981) lt!664055)))))

(declare-fun b!1731597 () Bool)

(declare-fun res!777782 () Bool)

(assert (=> b!1731597 (=> (not res!777782) (not e!1107799))))

(assert (=> b!1731597 (= res!777782 (= (head!3938 lt!664042) (head!3938 lt!664055)))))

(declare-fun d!530173 () Bool)

(assert (=> d!530173 e!1107801))

(declare-fun res!777785 () Bool)

(assert (=> d!530173 (=> res!777785 e!1107801)))

(declare-fun lt!664392 () Bool)

(assert (=> d!530173 (= res!777785 (not lt!664392))))

(assert (=> d!530173 (= lt!664392 e!1107800)))

(declare-fun res!777783 () Bool)

(assert (=> d!530173 (=> res!777783 e!1107800)))

(assert (=> d!530173 (= res!777783 ((_ is Nil!18981) lt!664042))))

(assert (=> d!530173 (= (isPrefix!1610 lt!664042 lt!664055) lt!664392)))

(assert (= (and d!530173 (not res!777783)) b!1731596))

(assert (= (and b!1731596 res!777784) b!1731597))

(assert (= (and b!1731597 res!777782) b!1731598))

(assert (= (and d!530173 (not res!777785)) b!1731599))

(assert (=> b!1731598 m!2139261))

(assert (=> b!1731598 m!2139579))

(assert (=> b!1731598 m!2139261))

(assert (=> b!1731598 m!2139579))

(declare-fun m!2140117 () Bool)

(assert (=> b!1731598 m!2140117))

(assert (=> b!1731599 m!2139245))

(assert (=> b!1731599 m!2139533))

(assert (=> b!1731597 m!2139257))

(assert (=> b!1731597 m!2139587))

(assert (=> b!1730945 d!530173))

(declare-fun d!530175 () Bool)

(assert (=> d!530175 (isPrefix!1610 lt!664042 lt!664055)))

(declare-fun lt!664395 () Unit!32837)

(declare-fun choose!10595 (List!19051 List!19051 List!19051) Unit!32837)

(assert (=> d!530175 (= lt!664395 (choose!10595 lt!664055 lt!664042 lt!664045))))

(assert (=> d!530175 (isPrefix!1610 lt!664055 lt!664045)))

(assert (=> d!530175 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!85 lt!664055 lt!664042 lt!664045) lt!664395)))

(declare-fun bs!402659 () Bool)

(assert (= bs!402659 d!530175))

(assert (=> bs!402659 m!2139223))

(declare-fun m!2140119 () Bool)

(assert (=> bs!402659 m!2140119))

(assert (=> bs!402659 m!2139189))

(assert (=> b!1730945 d!530175))

(declare-fun d!530177 () Bool)

(assert (=> d!530177 (= (get!5664 lt!664066) (v!25181 lt!664066))))

(assert (=> b!1730941 d!530177))

(declare-fun b!1731604 () Bool)

(declare-fun res!777793 () Bool)

(declare-fun e!1107807 () Bool)

(assert (=> b!1731604 (=> (not res!777793) (not e!1107807))))

(assert (=> b!1731604 (= res!777793 (isEmpty!11941 (tail!2586 (list!7674 (charsOf!2018 (_1!10731 lt!664033))))))))

(declare-fun b!1731605 () Bool)

(declare-fun e!1107805 () Bool)

(declare-fun e!1107809 () Bool)

(assert (=> b!1731605 (= e!1107805 e!1107809)))

(declare-fun c!282906 () Bool)

(assert (=> b!1731605 (= c!282906 ((_ is EmptyLang!4697) (regex!3369 lt!664034)))))

(declare-fun b!1731606 () Bool)

(assert (=> b!1731606 (= e!1107807 (= (head!3938 (list!7674 (charsOf!2018 (_1!10731 lt!664033)))) (c!282782 (regex!3369 lt!664034))))))

(declare-fun b!1731607 () Bool)

(declare-fun lt!664396 () Bool)

(declare-fun call!109943 () Bool)

(assert (=> b!1731607 (= e!1107805 (= lt!664396 call!109943))))

(declare-fun b!1731608 () Bool)

(declare-fun res!777788 () Bool)

(assert (=> b!1731608 (=> (not res!777788) (not e!1107807))))

(assert (=> b!1731608 (= res!777788 (not call!109943))))

(declare-fun b!1731609 () Bool)

(declare-fun e!1107804 () Bool)

(declare-fun e!1107808 () Bool)

(assert (=> b!1731609 (= e!1107804 e!1107808)))

(declare-fun res!777786 () Bool)

(assert (=> b!1731609 (=> (not res!777786) (not e!1107808))))

(assert (=> b!1731609 (= res!777786 (not lt!664396))))

(declare-fun b!1731610 () Bool)

(declare-fun e!1107810 () Bool)

(assert (=> b!1731610 (= e!1107810 (nullable!1421 (regex!3369 lt!664034)))))

(declare-fun b!1731612 () Bool)

(declare-fun res!777787 () Bool)

(assert (=> b!1731612 (=> res!777787 e!1107804)))

(assert (=> b!1731612 (= res!777787 e!1107807)))

(declare-fun res!777792 () Bool)

(assert (=> b!1731612 (=> (not res!777792) (not e!1107807))))

(assert (=> b!1731612 (= res!777792 lt!664396)))

(declare-fun bm!109938 () Bool)

(assert (=> bm!109938 (= call!109943 (isEmpty!11941 (list!7674 (charsOf!2018 (_1!10731 lt!664033)))))))

(declare-fun b!1731613 () Bool)

(declare-fun e!1107806 () Bool)

(assert (=> b!1731613 (= e!1107808 e!1107806)))

(declare-fun res!777789 () Bool)

(assert (=> b!1731613 (=> res!777789 e!1107806)))

(assert (=> b!1731613 (= res!777789 call!109943)))

(declare-fun b!1731614 () Bool)

(assert (=> b!1731614 (= e!1107809 (not lt!664396))))

(declare-fun b!1731615 () Bool)

(assert (=> b!1731615 (= e!1107810 (matchR!2171 (derivativeStep!1189 (regex!3369 lt!664034) (head!3938 (list!7674 (charsOf!2018 (_1!10731 lt!664033))))) (tail!2586 (list!7674 (charsOf!2018 (_1!10731 lt!664033))))))))

(declare-fun b!1731616 () Bool)

(declare-fun res!777791 () Bool)

(assert (=> b!1731616 (=> res!777791 e!1107804)))

(assert (=> b!1731616 (= res!777791 (not ((_ is ElementMatch!4697) (regex!3369 lt!664034))))))

(assert (=> b!1731616 (= e!1107809 e!1107804)))

(declare-fun b!1731617 () Bool)

(declare-fun res!777790 () Bool)

(assert (=> b!1731617 (=> res!777790 e!1107806)))

(assert (=> b!1731617 (= res!777790 (not (isEmpty!11941 (tail!2586 (list!7674 (charsOf!2018 (_1!10731 lt!664033)))))))))

(declare-fun d!530179 () Bool)

(assert (=> d!530179 e!1107805))

(declare-fun c!282905 () Bool)

(assert (=> d!530179 (= c!282905 ((_ is EmptyExpr!4697) (regex!3369 lt!664034)))))

(assert (=> d!530179 (= lt!664396 e!1107810)))

(declare-fun c!282904 () Bool)

(assert (=> d!530179 (= c!282904 (isEmpty!11941 (list!7674 (charsOf!2018 (_1!10731 lt!664033)))))))

(assert (=> d!530179 (validRegex!1895 (regex!3369 lt!664034))))

(assert (=> d!530179 (= (matchR!2171 (regex!3369 lt!664034) (list!7674 (charsOf!2018 (_1!10731 lt!664033)))) lt!664396)))

(declare-fun b!1731611 () Bool)

(assert (=> b!1731611 (= e!1107806 (not (= (head!3938 (list!7674 (charsOf!2018 (_1!10731 lt!664033)))) (c!282782 (regex!3369 lt!664034)))))))

(assert (= (and d!530179 c!282904) b!1731610))

(assert (= (and d!530179 (not c!282904)) b!1731615))

(assert (= (and d!530179 c!282905) b!1731607))

(assert (= (and d!530179 (not c!282905)) b!1731605))

(assert (= (and b!1731605 c!282906) b!1731614))

(assert (= (and b!1731605 (not c!282906)) b!1731616))

(assert (= (and b!1731616 (not res!777791)) b!1731612))

(assert (= (and b!1731612 res!777792) b!1731608))

(assert (= (and b!1731608 res!777788) b!1731604))

(assert (= (and b!1731604 res!777793) b!1731606))

(assert (= (and b!1731612 (not res!777787)) b!1731609))

(assert (= (and b!1731609 res!777786) b!1731613))

(assert (= (and b!1731613 (not res!777789)) b!1731617))

(assert (= (and b!1731617 (not res!777790)) b!1731611))

(assert (= (or b!1731607 b!1731608 b!1731613) bm!109938))

(assert (=> b!1731606 m!2139145))

(declare-fun m!2140129 () Bool)

(assert (=> b!1731606 m!2140129))

(assert (=> d!530179 m!2139145))

(declare-fun m!2140131 () Bool)

(assert (=> d!530179 m!2140131))

(declare-fun m!2140133 () Bool)

(assert (=> d!530179 m!2140133))

(assert (=> b!1731604 m!2139145))

(declare-fun m!2140135 () Bool)

(assert (=> b!1731604 m!2140135))

(assert (=> b!1731604 m!2140135))

(declare-fun m!2140137 () Bool)

(assert (=> b!1731604 m!2140137))

(declare-fun m!2140139 () Bool)

(assert (=> b!1731610 m!2140139))

(assert (=> b!1731615 m!2139145))

(assert (=> b!1731615 m!2140129))

(assert (=> b!1731615 m!2140129))

(declare-fun m!2140141 () Bool)

(assert (=> b!1731615 m!2140141))

(assert (=> b!1731615 m!2139145))

(assert (=> b!1731615 m!2140135))

(assert (=> b!1731615 m!2140141))

(assert (=> b!1731615 m!2140135))

(declare-fun m!2140147 () Bool)

(assert (=> b!1731615 m!2140147))

(assert (=> b!1731617 m!2139145))

(assert (=> b!1731617 m!2140135))

(assert (=> b!1731617 m!2140135))

(assert (=> b!1731617 m!2140137))

(assert (=> bm!109938 m!2139145))

(assert (=> bm!109938 m!2140131))

(assert (=> b!1731611 m!2139145))

(assert (=> b!1731611 m!2140129))

(assert (=> b!1730942 d!530179))

(declare-fun d!530185 () Bool)

(assert (=> d!530185 (= (list!7674 (charsOf!2018 (_1!10731 lt!664033))) (list!7675 (c!282783 (charsOf!2018 (_1!10731 lt!664033)))))))

(declare-fun bs!402660 () Bool)

(assert (= bs!402660 d!530185))

(declare-fun m!2140155 () Bool)

(assert (=> bs!402660 m!2140155))

(assert (=> b!1730942 d!530185))

(assert (=> b!1730942 d!530025))

(declare-fun d!530189 () Bool)

(assert (=> d!530189 (= (get!5665 lt!664067) (v!25180 lt!664067))))

(assert (=> b!1730942 d!530189))

(declare-fun d!530191 () Bool)

(assert (=> d!530191 (= (isEmpty!11942 rules!3447) ((_ is Nil!18982) rules!3447))))

(assert (=> b!1730938 d!530191))

(declare-fun d!530193 () Bool)

(declare-fun res!777798 () Bool)

(declare-fun e!1107816 () Bool)

(assert (=> d!530193 (=> (not res!777798) (not e!1107816))))

(declare-fun rulesValid!1262 (LexerInterface!2998 List!19052) Bool)

(assert (=> d!530193 (= res!777798 (rulesValid!1262 thiss!24550 rules!3447))))

(assert (=> d!530193 (= (rulesInvariant!2667 thiss!24550 rules!3447) e!1107816)))

(declare-fun b!1731626 () Bool)

(declare-datatypes ((List!19057 0))(
  ( (Nil!18987) (Cons!18987 (h!24388 String!21627) (t!160776 List!19057)) )
))
(declare-fun noDuplicateTag!1262 (LexerInterface!2998 List!19052 List!19057) Bool)

(assert (=> b!1731626 (= e!1107816 (noDuplicateTag!1262 thiss!24550 rules!3447 Nil!18987))))

(assert (= (and d!530193 res!777798) b!1731626))

(declare-fun m!2140157 () Bool)

(assert (=> d!530193 m!2140157))

(declare-fun m!2140159 () Bool)

(assert (=> b!1731626 m!2140159))

(assert (=> b!1730939 d!530193))

(declare-fun b!1731636 () Bool)

(declare-fun e!1107822 () Bool)

(declare-fun tp!493609 () Bool)

(assert (=> b!1731636 (= e!1107822 (and tp_is_empty!7637 tp!493609))))

(assert (=> b!1730925 (= tp!493600 e!1107822)))

(assert (= (and b!1730925 ((_ is Cons!18981) (t!160710 suffix!1421))) b!1731636))

(declare-fun tp!493618 () Bool)

(declare-fun tp!493616 () Bool)

(declare-fun b!1731645 () Bool)

(declare-fun e!1107828 () Bool)

(assert (=> b!1731645 (= e!1107828 (and (inv!24553 (left!15159 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))))) tp!493618 (inv!24553 (right!15489 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))))) tp!493616))))

(declare-fun b!1731647 () Bool)

(declare-fun e!1107827 () Bool)

(declare-fun tp!493617 () Bool)

(assert (=> b!1731647 (= e!1107827 tp!493617)))

(declare-fun b!1731646 () Bool)

(declare-fun inv!24559 (IArray!12631) Bool)

(assert (=> b!1731646 (= e!1107828 (and (inv!24559 (xs!9189 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))))) e!1107827))))

(assert (=> b!1730969 (= tp!493603 (and (inv!24553 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033))))) e!1107828))))

(assert (= (and b!1730969 ((_ is Node!6313) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))))) b!1731645))

(assert (= b!1731646 b!1731647))

(assert (= (and b!1730969 ((_ is Leaf!9218) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (value!105689 (_1!10731 lt!664033)))))) b!1731646))

(declare-fun m!2140181 () Bool)

(assert (=> b!1731645 m!2140181))

(declare-fun m!2140183 () Bool)

(assert (=> b!1731645 m!2140183))

(declare-fun m!2140185 () Bool)

(assert (=> b!1731646 m!2140185))

(assert (=> b!1730969 m!2139089))

(declare-fun b!1731661 () Bool)

(declare-fun e!1107831 () Bool)

(declare-fun tp!493631 () Bool)

(declare-fun tp!493632 () Bool)

(assert (=> b!1731661 (= e!1107831 (and tp!493631 tp!493632))))

(declare-fun b!1731659 () Bool)

(declare-fun tp!493629 () Bool)

(declare-fun tp!493633 () Bool)

(assert (=> b!1731659 (= e!1107831 (and tp!493629 tp!493633))))

(declare-fun b!1731658 () Bool)

(assert (=> b!1731658 (= e!1107831 tp_is_empty!7637)))

(assert (=> b!1730951 (= tp!493592 e!1107831)))

(declare-fun b!1731660 () Bool)

(declare-fun tp!493630 () Bool)

(assert (=> b!1731660 (= e!1107831 tp!493630)))

(assert (= (and b!1730951 ((_ is ElementMatch!4697) (regex!3369 rule!422))) b!1731658))

(assert (= (and b!1730951 ((_ is Concat!8157) (regex!3369 rule!422))) b!1731659))

(assert (= (and b!1730951 ((_ is Star!4697) (regex!3369 rule!422))) b!1731660))

(assert (= (and b!1730951 ((_ is Union!4697) (regex!3369 rule!422))) b!1731661))

(declare-fun b!1731665 () Bool)

(declare-fun e!1107832 () Bool)

(declare-fun tp!493636 () Bool)

(declare-fun tp!493637 () Bool)

(assert (=> b!1731665 (= e!1107832 (and tp!493636 tp!493637))))

(declare-fun b!1731663 () Bool)

(declare-fun tp!493634 () Bool)

(declare-fun tp!493638 () Bool)

(assert (=> b!1731663 (= e!1107832 (and tp!493634 tp!493638))))

(declare-fun b!1731662 () Bool)

(assert (=> b!1731662 (= e!1107832 tp_is_empty!7637)))

(assert (=> b!1730937 (= tp!493595 e!1107832)))

(declare-fun b!1731664 () Bool)

(declare-fun tp!493635 () Bool)

(assert (=> b!1731664 (= e!1107832 tp!493635)))

(assert (= (and b!1730937 ((_ is ElementMatch!4697) (regex!3369 (rule!5347 token!523)))) b!1731662))

(assert (= (and b!1730937 ((_ is Concat!8157) (regex!3369 (rule!5347 token!523)))) b!1731663))

(assert (= (and b!1730937 ((_ is Star!4697) (regex!3369 (rule!5347 token!523)))) b!1731664))

(assert (= (and b!1730937 ((_ is Union!4697) (regex!3369 (rule!5347 token!523)))) b!1731665))

(declare-fun tp!493641 () Bool)

(declare-fun tp!493639 () Bool)

(declare-fun e!1107834 () Bool)

(declare-fun b!1731666 () Bool)

(assert (=> b!1731666 (= e!1107834 (and (inv!24553 (left!15159 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))) tp!493641 (inv!24553 (right!15489 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))) tp!493639))))

(declare-fun b!1731668 () Bool)

(declare-fun e!1107833 () Bool)

(declare-fun tp!493640 () Bool)

(assert (=> b!1731668 (= e!1107833 tp!493640)))

(declare-fun b!1731667 () Bool)

(assert (=> b!1731667 (= e!1107834 (and (inv!24559 (xs!9189 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))) e!1107833))))

(assert (=> b!1730970 (= tp!493604 (and (inv!24553 (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063)))) e!1107834))))

(assert (= (and b!1730970 ((_ is Node!6313) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))) b!1731666))

(assert (= b!1731667 b!1731668))

(assert (= (and b!1730970 ((_ is Leaf!9218) (c!282783 (dynLambda!8851 (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) (dynLambda!8852 (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))) lt!664063))))) b!1731667))

(declare-fun m!2140187 () Bool)

(assert (=> b!1731666 m!2140187))

(declare-fun m!2140189 () Bool)

(assert (=> b!1731666 m!2140189))

(declare-fun m!2140191 () Bool)

(assert (=> b!1731667 m!2140191))

(assert (=> b!1730970 m!2139093))

(declare-fun b!1731669 () Bool)

(declare-fun e!1107835 () Bool)

(declare-fun tp!493642 () Bool)

(assert (=> b!1731669 (= e!1107835 (and tp_is_empty!7637 tp!493642))))

(assert (=> b!1730933 (= tp!493599 e!1107835)))

(assert (= (and b!1730933 ((_ is Cons!18981) (originalCharacters!4183 token!523))) b!1731669))

(declare-fun b!1731673 () Bool)

(declare-fun e!1107836 () Bool)

(declare-fun tp!493645 () Bool)

(declare-fun tp!493646 () Bool)

(assert (=> b!1731673 (= e!1107836 (and tp!493645 tp!493646))))

(declare-fun b!1731671 () Bool)

(declare-fun tp!493643 () Bool)

(declare-fun tp!493647 () Bool)

(assert (=> b!1731671 (= e!1107836 (and tp!493643 tp!493647))))

(declare-fun b!1731670 () Bool)

(assert (=> b!1731670 (= e!1107836 tp_is_empty!7637)))

(assert (=> b!1730950 (= tp!493591 e!1107836)))

(declare-fun b!1731672 () Bool)

(declare-fun tp!493644 () Bool)

(assert (=> b!1731672 (= e!1107836 tp!493644)))

(assert (= (and b!1730950 ((_ is ElementMatch!4697) (regex!3369 (h!24383 rules!3447)))) b!1731670))

(assert (= (and b!1730950 ((_ is Concat!8157) (regex!3369 (h!24383 rules!3447)))) b!1731671))

(assert (= (and b!1730950 ((_ is Star!4697) (regex!3369 (h!24383 rules!3447)))) b!1731672))

(assert (= (and b!1730950 ((_ is Union!4697) (regex!3369 (h!24383 rules!3447)))) b!1731673))

(declare-fun b!1731686 () Bool)

(declare-fun b_free!47367 () Bool)

(declare-fun b_next!48071 () Bool)

(assert (=> b!1731686 (= b_free!47367 (not b_next!48071))))

(declare-fun tb!103125 () Bool)

(declare-fun t!160743 () Bool)

(assert (=> (and b!1731686 (= (toValue!4876 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160743) tb!103125))

(declare-fun result!123996 () Bool)

(assert (= result!123996 result!123950))

(assert (=> b!1730952 t!160743))

(assert (=> d!529973 t!160743))

(declare-fun t!160745 () Bool)

(declare-fun tb!103127 () Bool)

(assert (=> (and b!1731686 (= (toValue!4876 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160745) tb!103127))

(declare-fun result!123998 () Bool)

(assert (= result!123998 result!123958))

(assert (=> d!529941 t!160745))

(declare-fun tb!103129 () Bool)

(declare-fun t!160747 () Bool)

(assert (=> (and b!1731686 (= (toValue!4876 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160747) tb!103129))

(declare-fun result!124000 () Bool)

(assert (= result!124000 result!123970))

(assert (=> d!529973 t!160747))

(assert (=> d!529967 t!160743))

(assert (=> d!529977 t!160743))

(declare-fun tp!493656 () Bool)

(declare-fun b_and!127689 () Bool)

(assert (=> b!1731686 (= tp!493656 (and (=> t!160743 result!123996) (=> t!160745 result!123998) (=> t!160747 result!124000) b_and!127689))))

(declare-fun b_free!47369 () Bool)

(declare-fun b_next!48073 () Bool)

(assert (=> b!1731686 (= b_free!47369 (not b_next!48073))))

(declare-fun t!160749 () Bool)

(declare-fun tb!103131 () Bool)

(assert (=> (and b!1731686 (= (toChars!4735 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toChars!4735 (transformation!3369 (rule!5347 token!523)))) t!160749) tb!103131))

(declare-fun result!124002 () Bool)

(assert (= result!124002 result!123964))

(assert (=> b!1731144 t!160749))

(declare-fun tb!103133 () Bool)

(declare-fun t!160751 () Bool)

(assert (=> (and b!1731686 (= (toChars!4735 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160751) tb!103133))

(declare-fun result!124004 () Bool)

(assert (= result!124004 result!123936))

(assert (=> b!1730929 t!160751))

(declare-fun tb!103135 () Bool)

(declare-fun t!160753 () Bool)

(assert (=> (and b!1731686 (= (toChars!4735 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033))))) t!160753) tb!103135))

(declare-fun result!124006 () Bool)

(assert (= result!124006 result!123944))

(assert (=> d!529967 t!160753))

(assert (=> d!530127 t!160749))

(assert (=> d!530025 t!160751))

(assert (=> b!1730952 t!160753))

(declare-fun b_and!127691 () Bool)

(declare-fun tp!493658 () Bool)

(assert (=> b!1731686 (= tp!493658 (and (=> t!160751 result!124004) (=> t!160749 result!124002) (=> t!160753 result!124006) b_and!127691))))

(declare-fun e!1107848 () Bool)

(assert (=> b!1731686 (= e!1107848 (and tp!493656 tp!493658))))

(declare-fun b!1731685 () Bool)

(declare-fun tp!493657 () Bool)

(declare-fun e!1107850 () Bool)

(assert (=> b!1731685 (= e!1107850 (and tp!493657 (inv!24546 (tag!3695 (h!24383 (t!160711 rules!3447)))) (inv!24551 (transformation!3369 (h!24383 (t!160711 rules!3447)))) e!1107848))))

(declare-fun b!1731684 () Bool)

(declare-fun e!1107849 () Bool)

(declare-fun tp!493659 () Bool)

(assert (=> b!1731684 (= e!1107849 (and e!1107850 tp!493659))))

(assert (=> b!1730923 (= tp!493598 e!1107849)))

(assert (= b!1731685 b!1731686))

(assert (= b!1731684 b!1731685))

(assert (= (and b!1730923 ((_ is Cons!18982) (t!160711 rules!3447))) b!1731684))

(declare-fun m!2140193 () Bool)

(assert (=> b!1731685 m!2140193))

(declare-fun m!2140195 () Bool)

(assert (=> b!1731685 m!2140195))

(declare-fun b_lambda!55249 () Bool)

(assert (= b_lambda!55221 (or (and b!1730940 b_free!47357 (= (toChars!4735 (transformation!3369 (rule!5347 token!523))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1730953 b_free!47361 (= (toChars!4735 (transformation!3369 rule!422)) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1730948 b_free!47365 (= (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1731686 b_free!47369 (= (toChars!4735 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) b_lambda!55249)))

(declare-fun b_lambda!55251 () Bool)

(assert (= b_lambda!55245 (or (and b!1730940 b_free!47357) (and b!1730953 b_free!47361 (= (toChars!4735 (transformation!3369 rule!422)) (toChars!4735 (transformation!3369 (rule!5347 token!523))))) (and b!1730948 b_free!47365 (= (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toChars!4735 (transformation!3369 (rule!5347 token!523))))) (and b!1731686 b_free!47369 (= (toChars!4735 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toChars!4735 (transformation!3369 (rule!5347 token!523))))) b_lambda!55251)))

(declare-fun b_lambda!55253 () Bool)

(assert (= b_lambda!55219 (or (and b!1730940 b_free!47357 (= (toChars!4735 (transformation!3369 (rule!5347 token!523))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1730953 b_free!47361 (= (toChars!4735 (transformation!3369 rule!422)) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1730948 b_free!47365 (= (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1731686 b_free!47369 (= (toChars!4735 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toChars!4735 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) b_lambda!55253)))

(declare-fun b_lambda!55255 () Bool)

(assert (= b_lambda!55229 (or (and b!1730940 b_free!47357) (and b!1730953 b_free!47361 (= (toChars!4735 (transformation!3369 rule!422)) (toChars!4735 (transformation!3369 (rule!5347 token!523))))) (and b!1730948 b_free!47365 (= (toChars!4735 (transformation!3369 (h!24383 rules!3447))) (toChars!4735 (transformation!3369 (rule!5347 token!523))))) (and b!1731686 b_free!47369 (= (toChars!4735 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toChars!4735 (transformation!3369 (rule!5347 token!523))))) b_lambda!55255)))

(declare-fun b_lambda!55257 () Bool)

(assert (= b_lambda!55223 (or (and b!1730940 b_free!47355 (= (toValue!4876 (transformation!3369 (rule!5347 token!523))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1730953 b_free!47359 (= (toValue!4876 (transformation!3369 rule!422)) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1730948 b_free!47363 (= (toValue!4876 (transformation!3369 (h!24383 rules!3447))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) (and b!1731686 b_free!47367 (= (toValue!4876 (transformation!3369 (h!24383 (t!160711 rules!3447)))) (toValue!4876 (transformation!3369 (rule!5347 (_1!10731 lt!664033)))))) b_lambda!55257)))

(check-sat (not b!1731490) (not b!1731661) (not b!1731162) (not b!1731489) (not bm!109934) (not b!1731573) (not d!530127) b_and!127679 (not b!1731178) (not tb!103101) (not d!530013) (not d!529965) (not b!1731521) (not d!530193) (not b!1731224) tp_is_empty!7637 (not d!529967) (not b!1730977) (not b!1731233) (not b_lambda!55249) (not d!529927) (not b!1731597) (not b!1731324) (not b_lambda!55241) (not d!530179) (not b!1731606) b_and!127691 (not b!1731177) (not b!1731580) (not b!1731492) (not b!1731615) (not b!1731131) (not b!1731575) (not b!1730988) (not b!1731232) (not b!1730978) (not b!1730989) (not d!529999) (not b!1731214) (not b!1731626) (not b!1731508) (not b!1731671) (not d!530119) (not b!1731239) (not b_lambda!55239) (not b_lambda!55233) (not b_next!48071) (not b!1731159) (not b!1731526) (not b!1731666) (not b!1731145) (not b!1731175) (not b!1731144) (not tb!103095) (not d!530121) (not b!1730970) (not b!1731647) (not b!1731525) (not b_next!48063) (not d!530129) (not b!1731604) (not b!1731278) (not bm!109926) b_and!127659 (not d!530185) (not b!1731282) (not b_lambda!55231) (not d!530115) (not d!530103) (not b!1731014) (not b!1731276) (not d!530099) (not b!1731483) (not b!1731669) (not d!530003) (not d!530009) (not b!1731496) (not b!1731231) (not b!1731241) (not b!1731673) (not b!1731663) (not b!1731013) (not b!1731477) (not b_lambda!55235) (not d!529959) (not b!1731684) (not b!1731134) (not b!1731280) (not d!529971) (not b!1731660) (not bm!109923) b_and!127663 (not d!530139) (not d!530175) (not b_next!48065) (not b!1731051) (not d!529907) (not b!1731584) (not b!1731611) (not b!1731646) (not b!1731243) (not b_lambda!55225) (not b!1731219) (not b!1731138) (not b!1731636) (not b!1731598) (not b!1731659) (not bm!109937) (not b!1731571) (not d!530017) (not d!529987) (not b!1731210) (not d!529963) (not b!1731136) (not d!530019) (not b!1731570) (not b_lambda!55251) (not b!1731132) (not b!1731279) (not b!1731599) (not bm!109938) (not d!529975) (not b!1731228) b_and!127677 (not b!1731146) (not b!1731174) (not b!1731062) (not b!1731672) (not b!1731510) (not d!530035) (not b!1731645) (not d!529969) (not b!1731161) (not b_next!48067) (not d!530059) (not b!1731472) (not b!1731238) (not b_lambda!55255) (not bm!109933) (not b!1731322) (not b!1731473) (not d!530025) (not b!1731281) (not b!1731530) (not b!1731497) (not b!1731480) (not b!1731501) (not b!1731139) (not b!1731664) (not d!530113) (not b_lambda!55237) b_and!127689 b_and!127661 (not b!1731223) (not b!1731507) (not b!1731227) (not b!1731532) (not d!529981) (not b!1731478) (not d!529909) (not b_next!48073) (not d!530101) (not b!1731474) (not d!529985) (not b_lambda!55257) (not b!1731000) (not b!1731215) (not b!1731519) (not b!1730993) (not b!1731506) (not b!1731208) (not d!530001) (not b!1731667) (not b!1731685) (not b!1731002) (not d!530161) (not b!1731617) (not b_next!48069) (not b!1731179) (not b_lambda!55253) (not b!1731511) (not b!1731512) (not d!530159) (not b!1731135) (not b!1731595) (not b!1731133) (not d!530157) (not b!1731509) (not b!1731567) (not b!1731586) (not b!1731323) (not bm!109932) (not d!529995) (not b!1731579) (not b!1731229) (not b!1731668) (not d!529973) (not d!529997) (not d!529943) (not d!530167) (not d!529961) (not d!529935) (not b!1731481) (not b!1731173) (not b!1731504) (not b!1731548) (not d!530163) (not b!1731242) (not b!1731274) (not d!530125) (not b_next!48061) (not d!530031) (not b_next!48059) (not b!1730969) (not d!529917) b_and!127681 (not d!529913) (not b!1731277) (not b!1731221) (not b!1731017) (not b!1731503) (not tb!103107) (not b!1731610) (not d!530135) (not d!530153) (not b!1731566) (not b!1731665) (not d!530107))
(check-sat b_and!127679 b_and!127691 (not b_next!48071) (not b_next!48063) b_and!127659 b_and!127677 (not b_next!48067) (not b_next!48073) (not b_next!48069) b_and!127663 (not b_next!48065) b_and!127689 b_and!127661 (not b_next!48061) b_and!127681 (not b_next!48059))
