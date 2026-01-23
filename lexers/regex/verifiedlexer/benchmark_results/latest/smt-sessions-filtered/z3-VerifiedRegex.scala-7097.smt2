; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376356 () Bool)

(assert start!376356)

(declare-fun b!3999113 () Bool)

(declare-fun b_free!111097 () Bool)

(declare-fun b_next!111801 () Bool)

(assert (=> b!3999113 (= b_free!111097 (not b_next!111801))))

(declare-fun tp!1217098 () Bool)

(declare-fun b_and!307087 () Bool)

(assert (=> b!3999113 (= tp!1217098 b_and!307087)))

(declare-fun b_free!111099 () Bool)

(declare-fun b_next!111803 () Bool)

(assert (=> b!3999113 (= b_free!111099 (not b_next!111803))))

(declare-fun tp!1217089 () Bool)

(declare-fun b_and!307089 () Bool)

(assert (=> b!3999113 (= tp!1217089 b_and!307089)))

(declare-fun b!3999118 () Bool)

(declare-fun b_free!111101 () Bool)

(declare-fun b_next!111805 () Bool)

(assert (=> b!3999118 (= b_free!111101 (not b_next!111805))))

(declare-fun tp!1217095 () Bool)

(declare-fun b_and!307091 () Bool)

(assert (=> b!3999118 (= tp!1217095 b_and!307091)))

(declare-fun b_free!111103 () Bool)

(declare-fun b_next!111807 () Bool)

(assert (=> b!3999118 (= b_free!111103 (not b_next!111807))))

(declare-fun tp!1217096 () Bool)

(declare-fun b_and!307093 () Bool)

(assert (=> b!3999118 (= tp!1217096 b_and!307093)))

(declare-fun b!3999083 () Bool)

(declare-fun res!1624530 () Bool)

(declare-fun e!2479547 () Bool)

(assert (=> b!3999083 (=> (not res!1624530) (not e!2479547))))

(declare-datatypes ((C!23560 0))(
  ( (C!23561 (val!13874 Int)) )
))
(declare-datatypes ((List!42896 0))(
  ( (Nil!42772) (Cons!42772 (h!48192 C!23560) (t!332127 List!42896)) )
))
(declare-datatypes ((IArray!25991 0))(
  ( (IArray!25992 (innerList!13053 List!42896)) )
))
(declare-datatypes ((Conc!12993 0))(
  ( (Node!12993 (left!32294 Conc!12993) (right!32624 Conc!12993) (csize!26216 Int) (cheight!13204 Int)) (Leaf!20091 (xs!16299 IArray!25991) (csize!26217 Int)) (Empty!12993) )
))
(declare-datatypes ((BalanceConc!25580 0))(
  ( (BalanceConc!25581 (c!691784 Conc!12993)) )
))
(declare-datatypes ((List!42897 0))(
  ( (Nil!42773) (Cons!42773 (h!48193 (_ BitVec 16)) (t!332128 List!42897)) )
))
(declare-datatypes ((TokenValue!7012 0))(
  ( (FloatLiteralValue!14024 (text!49529 List!42897)) (TokenValueExt!7011 (__x!26241 Int)) (Broken!35060 (value!213895 List!42897)) (Object!7135) (End!7012) (Def!7012) (Underscore!7012) (Match!7012) (Else!7012) (Error!7012) (Case!7012) (If!7012) (Extends!7012) (Abstract!7012) (Class!7012) (Val!7012) (DelimiterValue!14024 (del!7072 List!42897)) (KeywordValue!7018 (value!213896 List!42897)) (CommentValue!14024 (value!213897 List!42897)) (WhitespaceValue!14024 (value!213898 List!42897)) (IndentationValue!7012 (value!213899 List!42897)) (String!48777) (Int32!7012) (Broken!35061 (value!213900 List!42897)) (Boolean!7013) (Unit!61731) (OperatorValue!7015 (op!7072 List!42897)) (IdentifierValue!14024 (value!213901 List!42897)) (IdentifierValue!14025 (value!213902 List!42897)) (WhitespaceValue!14025 (value!213903 List!42897)) (True!14024) (False!14024) (Broken!35062 (value!213904 List!42897)) (Broken!35063 (value!213905 List!42897)) (True!14025) (RightBrace!7012) (RightBracket!7012) (Colon!7012) (Null!7012) (Comma!7012) (LeftBracket!7012) (False!14025) (LeftBrace!7012) (ImaginaryLiteralValue!7012 (text!49530 List!42897)) (StringLiteralValue!21036 (value!213906 List!42897)) (EOFValue!7012 (value!213907 List!42897)) (IdentValue!7012 (value!213908 List!42897)) (DelimiterValue!14025 (value!213909 List!42897)) (DedentValue!7012 (value!213910 List!42897)) (NewLineValue!7012 (value!213911 List!42897)) (IntegerValue!21036 (value!213912 (_ BitVec 32)) (text!49531 List!42897)) (IntegerValue!21037 (value!213913 Int) (text!49532 List!42897)) (Times!7012) (Or!7012) (Equal!7012) (Minus!7012) (Broken!35064 (value!213914 List!42897)) (And!7012) (Div!7012) (LessEqual!7012) (Mod!7012) (Concat!18699) (Not!7012) (Plus!7012) (SpaceValue!7012 (value!213915 List!42897)) (IntegerValue!21038 (value!213916 Int) (text!49533 List!42897)) (StringLiteralValue!21037 (text!49534 List!42897)) (FloatLiteralValue!14025 (text!49535 List!42897)) (BytesLiteralValue!7012 (value!213917 List!42897)) (CommentValue!14025 (value!213918 List!42897)) (StringLiteralValue!21038 (value!213919 List!42897)) (ErrorTokenValue!7012 (msg!7073 List!42897)) )
))
(declare-datatypes ((Regex!11687 0))(
  ( (ElementMatch!11687 (c!691785 C!23560)) (Concat!18700 (regOne!23886 Regex!11687) (regTwo!23886 Regex!11687)) (EmptyExpr!11687) (Star!11687 (reg!12016 Regex!11687)) (EmptyLang!11687) (Union!11687 (regOne!23887 Regex!11687) (regTwo!23887 Regex!11687)) )
))
(declare-datatypes ((String!48778 0))(
  ( (String!48779 (value!213920 String)) )
))
(declare-datatypes ((TokenValueInjection!13452 0))(
  ( (TokenValueInjection!13453 (toValue!9270 Int) (toChars!9129 Int)) )
))
(declare-datatypes ((Rule!13364 0))(
  ( (Rule!13365 (regex!6782 Regex!11687) (tag!7642 String!48778) (isSeparator!6782 Bool) (transformation!6782 TokenValueInjection!13452)) )
))
(declare-datatypes ((Token!12702 0))(
  ( (Token!12703 (value!213921 TokenValue!7012) (rule!9812 Rule!13364) (size!31985 Int) (originalCharacters!7382 List!42896)) )
))
(declare-fun token!484 () Token!12702)

(declare-fun size!31986 (List!42896) Int)

(assert (=> b!3999083 (= res!1624530 (= (size!31985 token!484) (size!31986 (originalCharacters!7382 token!484))))))

(declare-fun b!3999084 () Bool)

(declare-fun e!2479555 () Bool)

(declare-fun e!2479531 () Bool)

(assert (=> b!3999084 (= e!2479555 e!2479531)))

(declare-fun res!1624517 () Bool)

(assert (=> b!3999084 (=> res!1624517 e!2479531)))

(declare-fun lt!1413501 () List!42896)

(declare-fun suffix!1299 () List!42896)

(assert (=> b!3999084 (= res!1624517 (not (= lt!1413501 suffix!1299)))))

(declare-fun newSuffix!27 () List!42896)

(declare-fun lt!1413535 () List!42896)

(declare-fun ++!11184 (List!42896 List!42896) List!42896)

(assert (=> b!3999084 (= lt!1413501 (++!11184 newSuffix!27 lt!1413535))))

(declare-fun getSuffix!2300 (List!42896 List!42896) List!42896)

(assert (=> b!3999084 (= lt!1413535 (getSuffix!2300 suffix!1299 newSuffix!27))))

(declare-fun b!3999085 () Bool)

(declare-fun e!2479533 () Bool)

(declare-fun e!2479534 () Bool)

(assert (=> b!3999085 (= e!2479533 e!2479534)))

(declare-fun res!1624503 () Bool)

(assert (=> b!3999085 (=> res!1624503 e!2479534)))

(declare-fun lt!1413538 () Int)

(declare-fun lt!1413503 () Int)

(assert (=> b!3999085 (= res!1624503 (not (= lt!1413538 lt!1413503)))))

(declare-datatypes ((Unit!61732 0))(
  ( (Unit!61733) )
))
(declare-fun lt!1413500 () Unit!61732)

(declare-fun e!2479538 () Unit!61732)

(assert (=> b!3999085 (= lt!1413500 e!2479538)))

(declare-fun c!691782 () Bool)

(assert (=> b!3999085 (= c!691782 (< lt!1413503 lt!1413538))))

(declare-fun lt!1413510 () Unit!61732)

(declare-fun e!2479557 () Unit!61732)

(assert (=> b!3999085 (= lt!1413510 e!2479557)))

(declare-fun c!691780 () Bool)

(assert (=> b!3999085 (= c!691780 (> lt!1413503 lt!1413538))))

(declare-datatypes ((tuple2!41958 0))(
  ( (tuple2!41959 (_1!24113 Token!12702) (_2!24113 List!42896)) )
))
(declare-datatypes ((Option!9196 0))(
  ( (None!9195) (Some!9195 (v!39555 tuple2!41958)) )
))
(declare-fun lt!1413494 () Option!9196)

(declare-fun lt!1413541 () List!42896)

(assert (=> b!3999085 (= (_2!24113 (v!39555 lt!1413494)) lt!1413541)))

(declare-fun lt!1413497 () List!42896)

(declare-fun lt!1413475 () Unit!61732)

(declare-fun lt!1413539 () List!42896)

(declare-fun lemmaSamePrefixThenSameSuffix!2056 (List!42896 List!42896 List!42896 List!42896 List!42896) Unit!61732)

(assert (=> b!3999085 (= lt!1413475 (lemmaSamePrefixThenSameSuffix!2056 lt!1413539 (_2!24113 (v!39555 lt!1413494)) lt!1413539 lt!1413541 lt!1413497))))

(declare-fun lt!1413502 () List!42896)

(declare-fun isPrefix!3869 (List!42896 List!42896) Bool)

(assert (=> b!3999085 (isPrefix!3869 lt!1413539 lt!1413502)))

(declare-fun lt!1413507 () Unit!61732)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2712 (List!42896 List!42896) Unit!61732)

(assert (=> b!3999085 (= lt!1413507 (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413539 lt!1413541))))

(declare-fun b!3999086 () Bool)

(declare-fun Unit!61734 () Unit!61732)

(assert (=> b!3999086 (= e!2479538 Unit!61734)))

(declare-fun b!3999087 () Bool)

(declare-fun e!2479552 () Bool)

(assert (=> b!3999087 (= e!2479552 e!2479555)))

(declare-fun res!1624510 () Bool)

(assert (=> b!3999087 (=> res!1624510 e!2479555)))

(declare-fun lt!1413493 () Option!9196)

(assert (=> b!3999087 (= res!1624510 (not (= lt!1413493 (Some!9195 (v!39555 lt!1413494)))))))

(declare-fun newSuffixResult!27 () List!42896)

(assert (=> b!3999087 (isPrefix!3869 lt!1413539 (++!11184 lt!1413539 newSuffixResult!27))))

(declare-fun lt!1413536 () Unit!61732)

(assert (=> b!3999087 (= lt!1413536 (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413539 newSuffixResult!27))))

(declare-fun lt!1413521 () List!42896)

(assert (=> b!3999087 (isPrefix!3869 lt!1413539 lt!1413521)))

(assert (=> b!3999087 (= lt!1413521 (++!11184 lt!1413539 (_2!24113 (v!39555 lt!1413494))))))

(declare-fun lt!1413534 () Unit!61732)

(assert (=> b!3999087 (= lt!1413534 (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413539 (_2!24113 (v!39555 lt!1413494))))))

(declare-fun lt!1413476 () TokenValue!7012)

(assert (=> b!3999087 (= lt!1413493 (Some!9195 (tuple2!41959 (Token!12703 lt!1413476 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413503 lt!1413539) (_2!24113 (v!39555 lt!1413494)))))))

(declare-datatypes ((LexerInterface!6371 0))(
  ( (LexerInterfaceExt!6368 (__x!26242 Int)) (Lexer!6369) )
))
(declare-fun thiss!21717 () LexerInterface!6371)

(declare-fun maxPrefixOneRule!2703 (LexerInterface!6371 Rule!13364 List!42896) Option!9196)

(assert (=> b!3999087 (= lt!1413493 (maxPrefixOneRule!2703 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413497))))

(assert (=> b!3999087 (= lt!1413503 (size!31986 lt!1413539))))

(declare-fun apply!9993 (TokenValueInjection!13452 BalanceConc!25580) TokenValue!7012)

(declare-fun seqFromList!5021 (List!42896) BalanceConc!25580)

(assert (=> b!3999087 (= lt!1413476 (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (seqFromList!5021 lt!1413539)))))

(declare-fun lt!1413520 () Unit!61732)

(declare-datatypes ((List!42898 0))(
  ( (Nil!42774) (Cons!42774 (h!48194 Rule!13364) (t!332129 List!42898)) )
))
(declare-fun rules!2999 () List!42898)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1525 (LexerInterface!6371 List!42898 List!42896 List!42896 List!42896 Rule!13364) Unit!61732)

(assert (=> b!3999087 (= lt!1413520 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1525 thiss!21717 rules!2999 lt!1413539 lt!1413497 (_2!24113 (v!39555 lt!1413494)) (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(declare-fun list!15884 (BalanceConc!25580) List!42896)

(declare-fun charsOf!4598 (Token!12702) BalanceConc!25580)

(assert (=> b!3999087 (= lt!1413539 (list!15884 (charsOf!4598 (_1!24113 (v!39555 lt!1413494)))))))

(declare-fun lt!1413517 () Unit!61732)

(declare-fun lemmaInv!997 (TokenValueInjection!13452) Unit!61732)

(assert (=> b!3999087 (= lt!1413517 (lemmaInv!997 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(declare-fun ruleValid!2714 (LexerInterface!6371 Rule!13364) Bool)

(assert (=> b!3999087 (ruleValid!2714 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))

(declare-fun lt!1413506 () Unit!61732)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1788 (LexerInterface!6371 Rule!13364 List!42898) Unit!61732)

(assert (=> b!3999087 (= lt!1413506 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1788 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))) rules!2999))))

(declare-fun lt!1413523 () Unit!61732)

(declare-fun lemmaCharactersSize!1377 (Token!12702) Unit!61732)

(assert (=> b!3999087 (= lt!1413523 (lemmaCharactersSize!1377 token!484))))

(declare-fun lt!1413483 () Unit!61732)

(assert (=> b!3999087 (= lt!1413483 (lemmaCharactersSize!1377 (_1!24113 (v!39555 lt!1413494))))))

(declare-fun tp!1217094 () Bool)

(declare-fun e!2479544 () Bool)

(declare-fun e!2479542 () Bool)

(declare-fun b!3999089 () Bool)

(declare-fun inv!57121 (String!48778) Bool)

(declare-fun inv!57124 (TokenValueInjection!13452) Bool)

(assert (=> b!3999089 (= e!2479542 (and tp!1217094 (inv!57121 (tag!7642 (h!48194 rules!2999))) (inv!57124 (transformation!6782 (h!48194 rules!2999))) e!2479544))))

(declare-fun b!3999090 () Bool)

(declare-fun e!2479559 () Bool)

(declare-fun e!2479523 () Bool)

(assert (=> b!3999090 (= e!2479559 (not e!2479523))))

(declare-fun res!1624532 () Bool)

(assert (=> b!3999090 (=> res!1624532 e!2479523)))

(declare-fun lt!1413527 () List!42896)

(declare-fun lt!1413522 () List!42896)

(assert (=> b!3999090 (= res!1624532 (not (= lt!1413527 lt!1413522)))))

(declare-fun lt!1413480 () List!42896)

(declare-fun suffixResult!105 () List!42896)

(assert (=> b!3999090 (= lt!1413527 (++!11184 lt!1413480 suffixResult!105))))

(declare-fun lt!1413487 () Unit!61732)

(assert (=> b!3999090 (= lt!1413487 (lemmaInv!997 (transformation!6782 (rule!9812 token!484))))))

(assert (=> b!3999090 (ruleValid!2714 thiss!21717 (rule!9812 token!484))))

(declare-fun lt!1413505 () Unit!61732)

(assert (=> b!3999090 (= lt!1413505 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1788 thiss!21717 (rule!9812 token!484) rules!2999))))

(declare-fun b!3999091 () Bool)

(declare-fun Unit!61735 () Unit!61732)

(assert (=> b!3999091 (= e!2479557 Unit!61735)))

(declare-fun lt!1413499 () Unit!61732)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!436 (LexerInterface!6371 List!42898 Rule!13364 List!42896 List!42896 List!42896 Rule!13364) Unit!61732)

(assert (=> b!3999091 (= lt!1413499 (lemmaMaxPrefixOutputsMaxPrefix!436 thiss!21717 rules!2999 (rule!9812 token!484) lt!1413480 lt!1413522 lt!1413539 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(declare-fun res!1624527 () Bool)

(declare-fun matchR!5664 (Regex!11687 List!42896) Bool)

(assert (=> b!3999091 (= res!1624527 (not (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413539)))))

(declare-fun e!2479551 () Bool)

(assert (=> b!3999091 (=> (not res!1624527) (not e!2479551))))

(assert (=> b!3999091 e!2479551))

(declare-fun b!3999092 () Bool)

(declare-fun res!1624509 () Bool)

(declare-fun e!2479528 () Bool)

(assert (=> b!3999092 (=> (not res!1624509) (not e!2479528))))

(declare-fun rulesInvariant!5714 (LexerInterface!6371 List!42898) Bool)

(assert (=> b!3999092 (= res!1624509 (rulesInvariant!5714 thiss!21717 rules!2999))))

(declare-fun e!2479553 () Bool)

(declare-fun tp!1217088 () Bool)

(declare-fun e!2479550 () Bool)

(declare-fun b!3999093 () Bool)

(declare-fun inv!21 (TokenValue!7012) Bool)

(assert (=> b!3999093 (= e!2479553 (and (inv!21 (value!213921 token!484)) e!2479550 tp!1217088))))

(declare-fun b!3999094 () Bool)

(declare-fun e!2479540 () Bool)

(declare-fun rulesValidInductive!2471 (LexerInterface!6371 List!42898) Bool)

(assert (=> b!3999094 (= e!2479540 (rulesValidInductive!2471 thiss!21717 rules!2999))))

(declare-fun b!3999095 () Bool)

(declare-fun e!2479541 () Bool)

(assert (=> b!3999095 (= e!2479523 e!2479541)))

(declare-fun res!1624515 () Bool)

(assert (=> b!3999095 (=> res!1624515 e!2479541)))

(assert (=> b!3999095 (= res!1624515 (not (isPrefix!3869 lt!1413480 lt!1413522)))))

(declare-fun prefix!494 () List!42896)

(assert (=> b!3999095 (isPrefix!3869 prefix!494 lt!1413522)))

(declare-fun lt!1413481 () Unit!61732)

(assert (=> b!3999095 (= lt!1413481 (lemmaConcatTwoListThenFirstIsPrefix!2712 prefix!494 suffix!1299))))

(assert (=> b!3999095 (isPrefix!3869 lt!1413480 lt!1413527)))

(declare-fun lt!1413530 () Unit!61732)

(assert (=> b!3999095 (= lt!1413530 (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413480 suffixResult!105))))

(declare-fun b!3999096 () Bool)

(declare-fun e!2479530 () Bool)

(declare-fun tp_is_empty!20345 () Bool)

(declare-fun tp!1217091 () Bool)

(assert (=> b!3999096 (= e!2479530 (and tp_is_empty!20345 tp!1217091))))

(declare-fun b!3999097 () Bool)

(declare-fun e!2479524 () Bool)

(assert (=> b!3999097 (= e!2479524 e!2479533)))

(declare-fun res!1624514 () Bool)

(assert (=> b!3999097 (=> res!1624514 e!2479533)))

(assert (=> b!3999097 (= res!1624514 (not (= lt!1413502 lt!1413497)))))

(assert (=> b!3999097 (= lt!1413502 (++!11184 lt!1413539 lt!1413541))))

(assert (=> b!3999097 (= lt!1413541 (getSuffix!2300 lt!1413497 lt!1413539))))

(declare-fun b!3999098 () Bool)

(declare-fun e!2479545 () Unit!61732)

(declare-fun Unit!61736 () Unit!61732)

(assert (=> b!3999098 (= e!2479545 Unit!61736)))

(declare-fun b!3999099 () Bool)

(assert (=> b!3999099 (= e!2479551 false)))

(declare-fun b!3999100 () Bool)

(declare-fun e!2479556 () Bool)

(declare-fun e!2479520 () Bool)

(assert (=> b!3999100 (= e!2479556 e!2479520)))

(declare-fun res!1624504 () Bool)

(assert (=> b!3999100 (=> (not res!1624504) (not e!2479520))))

(declare-fun lt!1413514 () List!42896)

(assert (=> b!3999100 (= res!1624504 (= lt!1413514 lt!1413497))))

(assert (=> b!3999100 (= lt!1413497 (++!11184 prefix!494 newSuffix!27))))

(assert (=> b!3999100 (= lt!1413514 (++!11184 lt!1413480 newSuffixResult!27))))

(declare-fun b!3999101 () Bool)

(declare-fun res!1624516 () Bool)

(assert (=> b!3999101 (=> (not res!1624516) (not e!2479528))))

(assert (=> b!3999101 (= res!1624516 (isPrefix!3869 newSuffix!27 suffix!1299))))

(declare-fun b!3999102 () Bool)

(declare-fun res!1624519 () Bool)

(assert (=> b!3999102 (=> (not res!1624519) (not e!2479528))))

(declare-fun isEmpty!25562 (List!42898) Bool)

(assert (=> b!3999102 (= res!1624519 (not (isEmpty!25562 rules!2999)))))

(declare-fun b!3999103 () Bool)

(declare-fun Unit!61737 () Unit!61732)

(assert (=> b!3999103 (= e!2479557 Unit!61737)))

(declare-fun b!3999104 () Bool)

(declare-fun res!1624502 () Bool)

(assert (=> b!3999104 (=> res!1624502 e!2479534)))

(assert (=> b!3999104 (= res!1624502 (not (isPrefix!3869 lt!1413539 lt!1413497)))))

(declare-fun b!3999105 () Bool)

(declare-fun e!2479536 () Bool)

(declare-fun tp!1217090 () Bool)

(assert (=> b!3999105 (= e!2479536 (and tp_is_empty!20345 tp!1217090))))

(declare-fun b!3999106 () Bool)

(declare-fun e!2479535 () Bool)

(declare-fun e!2479548 () Bool)

(assert (=> b!3999106 (= e!2479535 e!2479548)))

(declare-fun res!1624521 () Bool)

(assert (=> b!3999106 (=> res!1624521 e!2479548)))

(declare-fun lt!1413508 () Option!9196)

(declare-fun lt!1413511 () Option!9196)

(assert (=> b!3999106 (= res!1624521 (not (= lt!1413508 lt!1413511)))))

(declare-fun lt!1413491 () Token!12702)

(assert (=> b!3999106 (= lt!1413508 (Some!9195 (tuple2!41959 lt!1413491 suffixResult!105)))))

(assert (=> b!3999106 (= lt!1413508 (maxPrefixOneRule!2703 thiss!21717 (rule!9812 token!484) lt!1413522))))

(declare-fun lt!1413531 () TokenValue!7012)

(assert (=> b!3999106 (= lt!1413491 (Token!12703 lt!1413531 (rule!9812 token!484) lt!1413538 lt!1413480))))

(assert (=> b!3999106 (= lt!1413531 (apply!9993 (transformation!6782 (rule!9812 token!484)) (seqFromList!5021 lt!1413480)))))

(declare-fun lt!1413533 () Unit!61732)

(assert (=> b!3999106 (= lt!1413533 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1525 thiss!21717 rules!2999 lt!1413480 lt!1413522 suffixResult!105 (rule!9812 token!484)))))

(declare-fun lt!1413529 () List!42896)

(assert (=> b!3999106 (= lt!1413529 suffixResult!105)))

(declare-fun lt!1413484 () Unit!61732)

(assert (=> b!3999106 (= lt!1413484 (lemmaSamePrefixThenSameSuffix!2056 lt!1413480 lt!1413529 lt!1413480 suffixResult!105 lt!1413522))))

(declare-fun lt!1413474 () List!42896)

(assert (=> b!3999106 (isPrefix!3869 lt!1413480 lt!1413474)))

(declare-fun lt!1413477 () Unit!61732)

(assert (=> b!3999106 (= lt!1413477 (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413480 lt!1413529))))

(declare-fun tp!1217093 () Bool)

(declare-fun e!2479529 () Bool)

(declare-fun b!3999107 () Bool)

(assert (=> b!3999107 (= e!2479550 (and tp!1217093 (inv!57121 (tag!7642 (rule!9812 token!484))) (inv!57124 (transformation!6782 (rule!9812 token!484))) e!2479529))))

(declare-fun b!3999108 () Bool)

(declare-fun e!2479549 () Bool)

(assert (=> b!3999108 (= e!2479549 e!2479535)))

(declare-fun res!1624529 () Bool)

(assert (=> b!3999108 (=> res!1624529 e!2479535)))

(declare-fun lt!1413486 () List!42896)

(assert (=> b!3999108 (= res!1624529 (or (not (= lt!1413522 lt!1413486)) (not (= lt!1413522 lt!1413474))))))

(assert (=> b!3999108 (= lt!1413486 lt!1413474)))

(assert (=> b!3999108 (= lt!1413474 (++!11184 lt!1413480 lt!1413529))))

(declare-fun lt!1413485 () List!42896)

(assert (=> b!3999108 (= lt!1413486 (++!11184 lt!1413485 suffix!1299))))

(declare-fun lt!1413492 () List!42896)

(assert (=> b!3999108 (= lt!1413529 (++!11184 lt!1413492 suffix!1299))))

(declare-fun lt!1413496 () Unit!61732)

(declare-fun lemmaConcatAssociativity!2504 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> b!3999108 (= lt!1413496 (lemmaConcatAssociativity!2504 lt!1413480 lt!1413492 suffix!1299))))

(declare-fun b!3999109 () Bool)

(declare-fun e!2479526 () Bool)

(assert (=> b!3999109 (= e!2479548 e!2479526)))

(declare-fun res!1624526 () Bool)

(assert (=> b!3999109 (=> res!1624526 e!2479526)))

(assert (=> b!3999109 (= res!1624526 (not (matchR!5664 (regex!6782 (rule!9812 token!484)) lt!1413480)))))

(assert (=> b!3999109 (isPrefix!3869 lt!1413480 lt!1413497)))

(declare-fun lt!1413516 () Unit!61732)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!702 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> b!3999109 (= lt!1413516 (lemmaPrefixStaysPrefixWhenAddingToSuffix!702 lt!1413480 prefix!494 newSuffix!27))))

(declare-fun lt!1413537 () Unit!61732)

(assert (=> b!3999109 (= lt!1413537 (lemmaPrefixStaysPrefixWhenAddingToSuffix!702 lt!1413480 prefix!494 suffix!1299))))

(declare-fun b!3999110 () Bool)

(assert (=> b!3999110 (= e!2479547 (and (= (size!31985 token!484) lt!1413538) (= (originalCharacters!7382 token!484) lt!1413480)))))

(declare-fun b!3999111 () Bool)

(declare-fun e!2479521 () Bool)

(assert (=> b!3999111 (= e!2479531 e!2479521)))

(declare-fun res!1624524 () Bool)

(assert (=> b!3999111 (=> res!1624524 e!2479521)))

(declare-fun lt!1413479 () List!42896)

(assert (=> b!3999111 (= res!1624524 (not (= lt!1413479 lt!1413522)))))

(assert (=> b!3999111 (= lt!1413479 (++!11184 prefix!494 lt!1413501))))

(assert (=> b!3999111 (= lt!1413479 (++!11184 lt!1413497 lt!1413535))))

(declare-fun lt!1413525 () Unit!61732)

(assert (=> b!3999111 (= lt!1413525 (lemmaConcatAssociativity!2504 prefix!494 newSuffix!27 lt!1413535))))

(declare-fun b!3999112 () Bool)

(assert (=> b!3999112 (= e!2479521 e!2479524)))

(declare-fun res!1624511 () Bool)

(assert (=> b!3999112 (=> res!1624511 e!2479524)))

(assert (=> b!3999112 (= res!1624511 (not (isPrefix!3869 lt!1413539 lt!1413522)))))

(assert (=> b!3999112 (isPrefix!3869 lt!1413539 lt!1413479)))

(declare-fun lt!1413519 () Unit!61732)

(assert (=> b!3999112 (= lt!1413519 (lemmaPrefixStaysPrefixWhenAddingToSuffix!702 lt!1413539 lt!1413497 lt!1413535))))

(assert (=> b!3999113 (= e!2479529 (and tp!1217098 tp!1217089))))

(declare-fun b!3999114 () Bool)

(declare-fun res!1624518 () Bool)

(assert (=> b!3999114 (=> (not res!1624518) (not e!2479528))))

(assert (=> b!3999114 (= res!1624518 (>= (size!31986 suffix!1299) (size!31986 newSuffix!27)))))

(declare-fun b!3999115 () Bool)

(declare-fun e!2479560 () Unit!61732)

(declare-fun Unit!61738 () Unit!61732)

(assert (=> b!3999115 (= e!2479560 Unit!61738)))

(declare-fun b!3999116 () Bool)

(declare-fun e!2479558 () Bool)

(declare-fun tp!1217087 () Bool)

(assert (=> b!3999116 (= e!2479558 (and tp_is_empty!20345 tp!1217087))))

(declare-fun b!3999117 () Bool)

(declare-fun Unit!61739 () Unit!61732)

(assert (=> b!3999117 (= e!2479545 Unit!61739)))

(declare-fun lt!1413495 () Unit!61732)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!278 (LexerInterface!6371 List!42898 Rule!13364 List!42896 List!42896 Rule!13364) Unit!61732)

(assert (=> b!3999117 (= lt!1413495 (lemmaMaxPrefNoSmallerRuleMatches!278 thiss!21717 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413539 lt!1413497 (rule!9812 token!484)))))

(declare-fun res!1624520 () Bool)

(assert (=> b!3999117 (= res!1624520 (not (matchR!5664 (regex!6782 (rule!9812 token!484)) lt!1413539)))))

(declare-fun e!2479539 () Bool)

(assert (=> b!3999117 (=> (not res!1624520) (not e!2479539))))

(assert (=> b!3999117 e!2479539))

(assert (=> b!3999118 (= e!2479544 (and tp!1217095 tp!1217096))))

(declare-fun b!3999119 () Bool)

(declare-fun Unit!61740 () Unit!61732)

(assert (=> b!3999119 (= e!2479560 Unit!61740)))

(declare-fun lt!1413526 () Unit!61732)

(assert (=> b!3999119 (= lt!1413526 (lemmaMaxPrefNoSmallerRuleMatches!278 thiss!21717 rules!2999 (rule!9812 token!484) lt!1413480 lt!1413522 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(declare-fun res!1624505 () Bool)

(assert (=> b!3999119 (= res!1624505 (not (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413480)))))

(declare-fun e!2479532 () Bool)

(assert (=> b!3999119 (=> (not res!1624505) (not e!2479532))))

(assert (=> b!3999119 e!2479532))

(declare-fun b!3999120 () Bool)

(assert (=> b!3999120 (= e!2479534 e!2479540)))

(declare-fun res!1624523 () Bool)

(assert (=> b!3999120 (=> res!1624523 e!2479540)))

(assert (=> b!3999120 (= res!1624523 (or (not (= (_1!24113 (v!39555 lt!1413494)) token!484)) (not (= lt!1413494 (Some!9195 (tuple2!41959 token!484 newSuffixResult!27))))))))

(assert (=> b!3999120 (= (rule!9812 (_1!24113 (v!39555 lt!1413494))) (rule!9812 token!484))))

(declare-fun lt!1413528 () Unit!61732)

(declare-fun lemmaSameIndexThenSameElement!258 (List!42898 Rule!13364 Rule!13364) Unit!61732)

(assert (=> b!3999120 (= lt!1413528 (lemmaSameIndexThenSameElement!258 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) (rule!9812 token!484)))))

(declare-fun lt!1413482 () Unit!61732)

(assert (=> b!3999120 (= lt!1413482 e!2479545)))

(declare-fun c!691781 () Bool)

(declare-fun lt!1413540 () Int)

(declare-fun lt!1413512 () Int)

(assert (=> b!3999120 (= c!691781 (> lt!1413540 lt!1413512))))

(declare-fun lt!1413524 () Unit!61732)

(assert (=> b!3999120 (= lt!1413524 e!2479560)))

(declare-fun c!691783 () Bool)

(assert (=> b!3999120 (= c!691783 (< lt!1413540 lt!1413512))))

(declare-fun getIndex!552 (List!42898 Rule!13364) Int)

(assert (=> b!3999120 (= lt!1413512 (getIndex!552 rules!2999 (rule!9812 token!484)))))

(assert (=> b!3999120 (= lt!1413540 (getIndex!552 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(assert (=> b!3999120 (= (_2!24113 (v!39555 lt!1413494)) newSuffixResult!27)))

(declare-fun lt!1413498 () Unit!61732)

(assert (=> b!3999120 (= lt!1413498 (lemmaSamePrefixThenSameSuffix!2056 lt!1413539 (_2!24113 (v!39555 lt!1413494)) lt!1413480 newSuffixResult!27 lt!1413497))))

(assert (=> b!3999120 (= lt!1413539 lt!1413480)))

(declare-fun lt!1413478 () Unit!61732)

(declare-fun lemmaIsPrefixSameLengthThenSameList!891 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> b!3999120 (= lt!1413478 (lemmaIsPrefixSameLengthThenSameList!891 lt!1413539 lt!1413480 lt!1413497))))

(declare-fun b!3999121 () Bool)

(declare-fun res!1624525 () Bool)

(assert (=> b!3999121 (=> res!1624525 e!2479524)))

(assert (=> b!3999121 (= res!1624525 (not (= lt!1413521 lt!1413497)))))

(declare-fun b!3999122 () Bool)

(declare-fun res!1624508 () Bool)

(assert (=> b!3999122 (=> (not res!1624508) (not e!2479547))))

(assert (=> b!3999122 (= res!1624508 (= (value!213921 token!484) lt!1413531))))

(declare-fun res!1624528 () Bool)

(assert (=> start!376356 (=> (not res!1624528) (not e!2479528))))

(get-info :version)

(assert (=> start!376356 (= res!1624528 ((_ is Lexer!6369) thiss!21717))))

(assert (=> start!376356 e!2479528))

(assert (=> start!376356 e!2479536))

(declare-fun inv!57125 (Token!12702) Bool)

(assert (=> start!376356 (and (inv!57125 token!484) e!2479553)))

(assert (=> start!376356 e!2479530))

(declare-fun e!2479525 () Bool)

(assert (=> start!376356 e!2479525))

(declare-fun e!2479546 () Bool)

(assert (=> start!376356 e!2479546))

(assert (=> start!376356 true))

(declare-fun e!2479554 () Bool)

(assert (=> start!376356 e!2479554))

(assert (=> start!376356 e!2479558))

(declare-fun b!3999088 () Bool)

(assert (=> b!3999088 (= e!2479528 e!2479556)))

(declare-fun res!1624506 () Bool)

(assert (=> b!3999088 (=> (not res!1624506) (not e!2479556))))

(declare-fun lt!1413515 () Int)

(assert (=> b!3999088 (= res!1624506 (>= lt!1413515 lt!1413538))))

(assert (=> b!3999088 (= lt!1413538 (size!31986 lt!1413480))))

(assert (=> b!3999088 (= lt!1413515 (size!31986 prefix!494))))

(assert (=> b!3999088 (= lt!1413480 (list!15884 (charsOf!4598 token!484)))))

(declare-fun b!3999123 () Bool)

(assert (=> b!3999123 (= e!2479532 false)))

(declare-fun b!3999124 () Bool)

(declare-fun tp!1217086 () Bool)

(assert (=> b!3999124 (= e!2479525 (and tp_is_empty!20345 tp!1217086))))

(declare-fun b!3999125 () Bool)

(declare-fun Unit!61741 () Unit!61732)

(assert (=> b!3999125 (= e!2479538 Unit!61741)))

(declare-fun lt!1413504 () Unit!61732)

(assert (=> b!3999125 (= lt!1413504 (lemmaMaxPrefixOutputsMaxPrefix!436 thiss!21717 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413539 lt!1413497 lt!1413480 (rule!9812 token!484)))))

(assert (=> b!3999125 false))

(declare-fun b!3999126 () Bool)

(assert (=> b!3999126 (= e!2479539 false)))

(declare-fun b!3999127 () Bool)

(declare-fun e!2479522 () Bool)

(assert (=> b!3999127 (= e!2479522 e!2479552)))

(declare-fun res!1624522 () Bool)

(assert (=> b!3999127 (=> res!1624522 e!2479552)))

(assert (=> b!3999127 (= res!1624522 (not ((_ is Some!9195) lt!1413494)))))

(declare-fun maxPrefix!3669 (LexerInterface!6371 List!42898 List!42896) Option!9196)

(assert (=> b!3999127 (= lt!1413494 (maxPrefix!3669 thiss!21717 rules!2999 lt!1413497))))

(declare-fun lt!1413490 () List!42896)

(declare-fun lt!1413513 () tuple2!41958)

(assert (=> b!3999127 (and (= suffixResult!105 lt!1413490) (= lt!1413513 (tuple2!41959 lt!1413491 lt!1413490)))))

(declare-fun lt!1413509 () Unit!61732)

(assert (=> b!3999127 (= lt!1413509 (lemmaSamePrefixThenSameSuffix!2056 lt!1413480 suffixResult!105 lt!1413480 lt!1413490 lt!1413522))))

(declare-fun lt!1413532 () List!42896)

(assert (=> b!3999127 (isPrefix!3869 lt!1413480 lt!1413532)))

(declare-fun lt!1413488 () Unit!61732)

(assert (=> b!3999127 (= lt!1413488 (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413480 lt!1413490))))

(declare-fun b!3999128 () Bool)

(declare-fun tp!1217097 () Bool)

(assert (=> b!3999128 (= e!2479554 (and e!2479542 tp!1217097))))

(declare-fun b!3999129 () Bool)

(declare-fun tp!1217092 () Bool)

(assert (=> b!3999129 (= e!2479546 (and tp_is_empty!20345 tp!1217092))))

(declare-fun b!3999130 () Bool)

(assert (=> b!3999130 (= e!2479541 e!2479549)))

(declare-fun res!1624531 () Bool)

(assert (=> b!3999130 (=> res!1624531 e!2479549)))

(assert (=> b!3999130 (= res!1624531 (not (= lt!1413485 prefix!494)))))

(assert (=> b!3999130 (= lt!1413485 (++!11184 lt!1413480 lt!1413492))))

(assert (=> b!3999130 (= lt!1413492 (getSuffix!2300 prefix!494 lt!1413480))))

(assert (=> b!3999130 (isPrefix!3869 lt!1413480 prefix!494)))

(declare-fun lt!1413489 () Unit!61732)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!447 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> b!3999130 (= lt!1413489 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!447 prefix!494 lt!1413480 lt!1413522))))

(declare-fun b!3999131 () Bool)

(assert (=> b!3999131 (= e!2479520 e!2479559)))

(declare-fun res!1624513 () Bool)

(assert (=> b!3999131 (=> (not res!1624513) (not e!2479559))))

(assert (=> b!3999131 (= res!1624513 (= (maxPrefix!3669 thiss!21717 rules!2999 lt!1413522) lt!1413511))))

(assert (=> b!3999131 (= lt!1413511 (Some!9195 lt!1413513))))

(assert (=> b!3999131 (= lt!1413513 (tuple2!41959 token!484 suffixResult!105))))

(assert (=> b!3999131 (= lt!1413522 (++!11184 prefix!494 suffix!1299))))

(declare-fun b!3999132 () Bool)

(assert (=> b!3999132 (= e!2479526 e!2479522)))

(declare-fun res!1624512 () Bool)

(assert (=> b!3999132 (=> res!1624512 e!2479522)))

(assert (=> b!3999132 (= res!1624512 (not (= lt!1413532 lt!1413522)))))

(assert (=> b!3999132 (= lt!1413532 (++!11184 lt!1413480 lt!1413490))))

(assert (=> b!3999132 (= lt!1413490 (getSuffix!2300 lt!1413522 lt!1413480))))

(assert (=> b!3999132 e!2479547))

(declare-fun res!1624507 () Bool)

(assert (=> b!3999132 (=> (not res!1624507) (not e!2479547))))

(assert (=> b!3999132 (= res!1624507 (isPrefix!3869 lt!1413522 lt!1413522))))

(declare-fun lt!1413518 () Unit!61732)

(declare-fun lemmaIsPrefixRefl!2461 (List!42896 List!42896) Unit!61732)

(assert (=> b!3999132 (= lt!1413518 (lemmaIsPrefixRefl!2461 lt!1413522 lt!1413522))))

(assert (= (and start!376356 res!1624528) b!3999102))

(assert (= (and b!3999102 res!1624519) b!3999092))

(assert (= (and b!3999092 res!1624509) b!3999114))

(assert (= (and b!3999114 res!1624518) b!3999101))

(assert (= (and b!3999101 res!1624516) b!3999088))

(assert (= (and b!3999088 res!1624506) b!3999100))

(assert (= (and b!3999100 res!1624504) b!3999131))

(assert (= (and b!3999131 res!1624513) b!3999090))

(assert (= (and b!3999090 (not res!1624532)) b!3999095))

(assert (= (and b!3999095 (not res!1624515)) b!3999130))

(assert (= (and b!3999130 (not res!1624531)) b!3999108))

(assert (= (and b!3999108 (not res!1624529)) b!3999106))

(assert (= (and b!3999106 (not res!1624521)) b!3999109))

(assert (= (and b!3999109 (not res!1624526)) b!3999132))

(assert (= (and b!3999132 res!1624507) b!3999122))

(assert (= (and b!3999122 res!1624508) b!3999083))

(assert (= (and b!3999083 res!1624530) b!3999110))

(assert (= (and b!3999132 (not res!1624512)) b!3999127))

(assert (= (and b!3999127 (not res!1624522)) b!3999087))

(assert (= (and b!3999087 (not res!1624510)) b!3999084))

(assert (= (and b!3999084 (not res!1624517)) b!3999111))

(assert (= (and b!3999111 (not res!1624524)) b!3999112))

(assert (= (and b!3999112 (not res!1624511)) b!3999121))

(assert (= (and b!3999121 (not res!1624525)) b!3999097))

(assert (= (and b!3999097 (not res!1624514)) b!3999085))

(assert (= (and b!3999085 c!691780) b!3999091))

(assert (= (and b!3999085 (not c!691780)) b!3999103))

(assert (= (and b!3999091 res!1624527) b!3999099))

(assert (= (and b!3999085 c!691782) b!3999125))

(assert (= (and b!3999085 (not c!691782)) b!3999086))

(assert (= (and b!3999085 (not res!1624503)) b!3999104))

(assert (= (and b!3999104 (not res!1624502)) b!3999120))

(assert (= (and b!3999120 c!691783) b!3999119))

(assert (= (and b!3999120 (not c!691783)) b!3999115))

(assert (= (and b!3999119 res!1624505) b!3999123))

(assert (= (and b!3999120 c!691781) b!3999117))

(assert (= (and b!3999120 (not c!691781)) b!3999098))

(assert (= (and b!3999117 res!1624520) b!3999126))

(assert (= (and b!3999120 (not res!1624523)) b!3999094))

(assert (= (and start!376356 ((_ is Cons!42772) prefix!494)) b!3999105))

(assert (= b!3999107 b!3999113))

(assert (= b!3999093 b!3999107))

(assert (= start!376356 b!3999093))

(assert (= (and start!376356 ((_ is Cons!42772) suffixResult!105)) b!3999096))

(assert (= (and start!376356 ((_ is Cons!42772) suffix!1299)) b!3999124))

(assert (= (and start!376356 ((_ is Cons!42772) newSuffix!27)) b!3999129))

(assert (= b!3999089 b!3999118))

(assert (= b!3999128 b!3999089))

(assert (= (and start!376356 ((_ is Cons!42774) rules!2999)) b!3999128))

(assert (= (and start!376356 ((_ is Cons!42772) newSuffixResult!27)) b!3999116))

(declare-fun m!4580791 () Bool)

(assert (=> b!3999107 m!4580791))

(declare-fun m!4580793 () Bool)

(assert (=> b!3999107 m!4580793))

(declare-fun m!4580795 () Bool)

(assert (=> b!3999102 m!4580795))

(declare-fun m!4580797 () Bool)

(assert (=> b!3999089 m!4580797))

(declare-fun m!4580799 () Bool)

(assert (=> b!3999089 m!4580799))

(declare-fun m!4580801 () Bool)

(assert (=> b!3999127 m!4580801))

(declare-fun m!4580803 () Bool)

(assert (=> b!3999127 m!4580803))

(declare-fun m!4580805 () Bool)

(assert (=> b!3999127 m!4580805))

(declare-fun m!4580807 () Bool)

(assert (=> b!3999127 m!4580807))

(declare-fun m!4580809 () Bool)

(assert (=> b!3999087 m!4580809))

(declare-fun m!4580811 () Bool)

(assert (=> b!3999087 m!4580811))

(declare-fun m!4580813 () Bool)

(assert (=> b!3999087 m!4580813))

(assert (=> b!3999087 m!4580809))

(declare-fun m!4580815 () Bool)

(assert (=> b!3999087 m!4580815))

(declare-fun m!4580817 () Bool)

(assert (=> b!3999087 m!4580817))

(declare-fun m!4580819 () Bool)

(assert (=> b!3999087 m!4580819))

(declare-fun m!4580821 () Bool)

(assert (=> b!3999087 m!4580821))

(declare-fun m!4580823 () Bool)

(assert (=> b!3999087 m!4580823))

(assert (=> b!3999087 m!4580819))

(declare-fun m!4580825 () Bool)

(assert (=> b!3999087 m!4580825))

(declare-fun m!4580827 () Bool)

(assert (=> b!3999087 m!4580827))

(declare-fun m!4580829 () Bool)

(assert (=> b!3999087 m!4580829))

(declare-fun m!4580831 () Bool)

(assert (=> b!3999087 m!4580831))

(declare-fun m!4580833 () Bool)

(assert (=> b!3999087 m!4580833))

(declare-fun m!4580835 () Bool)

(assert (=> b!3999087 m!4580835))

(declare-fun m!4580837 () Bool)

(assert (=> b!3999087 m!4580837))

(declare-fun m!4580839 () Bool)

(assert (=> b!3999087 m!4580839))

(declare-fun m!4580841 () Bool)

(assert (=> b!3999087 m!4580841))

(assert (=> b!3999087 m!4580817))

(declare-fun m!4580843 () Bool)

(assert (=> b!3999087 m!4580843))

(declare-fun m!4580845 () Bool)

(assert (=> b!3999083 m!4580845))

(declare-fun m!4580847 () Bool)

(assert (=> start!376356 m!4580847))

(declare-fun m!4580849 () Bool)

(assert (=> b!3999112 m!4580849))

(declare-fun m!4580851 () Bool)

(assert (=> b!3999112 m!4580851))

(declare-fun m!4580853 () Bool)

(assert (=> b!3999112 m!4580853))

(declare-fun m!4580855 () Bool)

(assert (=> b!3999091 m!4580855))

(declare-fun m!4580857 () Bool)

(assert (=> b!3999091 m!4580857))

(declare-fun m!4580859 () Bool)

(assert (=> b!3999109 m!4580859))

(declare-fun m!4580861 () Bool)

(assert (=> b!3999109 m!4580861))

(declare-fun m!4580863 () Bool)

(assert (=> b!3999109 m!4580863))

(declare-fun m!4580865 () Bool)

(assert (=> b!3999109 m!4580865))

(declare-fun m!4580867 () Bool)

(assert (=> b!3999092 m!4580867))

(declare-fun m!4580869 () Bool)

(assert (=> b!3999130 m!4580869))

(declare-fun m!4580871 () Bool)

(assert (=> b!3999130 m!4580871))

(declare-fun m!4580873 () Bool)

(assert (=> b!3999130 m!4580873))

(declare-fun m!4580875 () Bool)

(assert (=> b!3999130 m!4580875))

(declare-fun m!4580877 () Bool)

(assert (=> b!3999100 m!4580877))

(declare-fun m!4580879 () Bool)

(assert (=> b!3999100 m!4580879))

(declare-fun m!4580881 () Bool)

(assert (=> b!3999097 m!4580881))

(declare-fun m!4580883 () Bool)

(assert (=> b!3999097 m!4580883))

(declare-fun m!4580885 () Bool)

(assert (=> b!3999106 m!4580885))

(declare-fun m!4580887 () Bool)

(assert (=> b!3999106 m!4580887))

(declare-fun m!4580889 () Bool)

(assert (=> b!3999106 m!4580889))

(assert (=> b!3999106 m!4580889))

(declare-fun m!4580891 () Bool)

(assert (=> b!3999106 m!4580891))

(declare-fun m!4580893 () Bool)

(assert (=> b!3999106 m!4580893))

(declare-fun m!4580895 () Bool)

(assert (=> b!3999106 m!4580895))

(declare-fun m!4580897 () Bool)

(assert (=> b!3999106 m!4580897))

(declare-fun m!4580899 () Bool)

(assert (=> b!3999131 m!4580899))

(declare-fun m!4580901 () Bool)

(assert (=> b!3999131 m!4580901))

(declare-fun m!4580903 () Bool)

(assert (=> b!3999090 m!4580903))

(declare-fun m!4580905 () Bool)

(assert (=> b!3999090 m!4580905))

(declare-fun m!4580907 () Bool)

(assert (=> b!3999090 m!4580907))

(declare-fun m!4580909 () Bool)

(assert (=> b!3999090 m!4580909))

(declare-fun m!4580911 () Bool)

(assert (=> b!3999132 m!4580911))

(declare-fun m!4580913 () Bool)

(assert (=> b!3999132 m!4580913))

(declare-fun m!4580915 () Bool)

(assert (=> b!3999132 m!4580915))

(declare-fun m!4580917 () Bool)

(assert (=> b!3999132 m!4580917))

(declare-fun m!4580919 () Bool)

(assert (=> b!3999119 m!4580919))

(declare-fun m!4580921 () Bool)

(assert (=> b!3999119 m!4580921))

(declare-fun m!4580923 () Bool)

(assert (=> b!3999114 m!4580923))

(declare-fun m!4580925 () Bool)

(assert (=> b!3999114 m!4580925))

(declare-fun m!4580927 () Bool)

(assert (=> b!3999088 m!4580927))

(declare-fun m!4580929 () Bool)

(assert (=> b!3999088 m!4580929))

(declare-fun m!4580931 () Bool)

(assert (=> b!3999088 m!4580931))

(assert (=> b!3999088 m!4580931))

(declare-fun m!4580933 () Bool)

(assert (=> b!3999088 m!4580933))

(declare-fun m!4580935 () Bool)

(assert (=> b!3999104 m!4580935))

(declare-fun m!4580937 () Bool)

(assert (=> b!3999125 m!4580937))

(declare-fun m!4580939 () Bool)

(assert (=> b!3999117 m!4580939))

(declare-fun m!4580941 () Bool)

(assert (=> b!3999117 m!4580941))

(declare-fun m!4580943 () Bool)

(assert (=> b!3999093 m!4580943))

(declare-fun m!4580945 () Bool)

(assert (=> b!3999084 m!4580945))

(declare-fun m!4580947 () Bool)

(assert (=> b!3999084 m!4580947))

(declare-fun m!4580949 () Bool)

(assert (=> b!3999095 m!4580949))

(declare-fun m!4580951 () Bool)

(assert (=> b!3999095 m!4580951))

(declare-fun m!4580953 () Bool)

(assert (=> b!3999095 m!4580953))

(declare-fun m!4580955 () Bool)

(assert (=> b!3999095 m!4580955))

(declare-fun m!4580957 () Bool)

(assert (=> b!3999095 m!4580957))

(declare-fun m!4580959 () Bool)

(assert (=> b!3999094 m!4580959))

(declare-fun m!4580961 () Bool)

(assert (=> b!3999120 m!4580961))

(declare-fun m!4580963 () Bool)

(assert (=> b!3999120 m!4580963))

(declare-fun m!4580965 () Bool)

(assert (=> b!3999120 m!4580965))

(declare-fun m!4580967 () Bool)

(assert (=> b!3999120 m!4580967))

(declare-fun m!4580969 () Bool)

(assert (=> b!3999120 m!4580969))

(declare-fun m!4580971 () Bool)

(assert (=> b!3999108 m!4580971))

(declare-fun m!4580973 () Bool)

(assert (=> b!3999108 m!4580973))

(declare-fun m!4580975 () Bool)

(assert (=> b!3999108 m!4580975))

(declare-fun m!4580977 () Bool)

(assert (=> b!3999108 m!4580977))

(declare-fun m!4580979 () Bool)

(assert (=> b!3999101 m!4580979))

(declare-fun m!4580981 () Bool)

(assert (=> b!3999111 m!4580981))

(declare-fun m!4580983 () Bool)

(assert (=> b!3999111 m!4580983))

(declare-fun m!4580985 () Bool)

(assert (=> b!3999111 m!4580985))

(declare-fun m!4580987 () Bool)

(assert (=> b!3999085 m!4580987))

(declare-fun m!4580989 () Bool)

(assert (=> b!3999085 m!4580989))

(declare-fun m!4580991 () Bool)

(assert (=> b!3999085 m!4580991))

(check-sat (not b!3999108) (not b!3999092) (not b!3999128) (not b!3999102) (not b!3999087) (not b!3999095) (not b!3999131) (not b_next!111801) (not b!3999097) (not b!3999129) (not b!3999119) (not b!3999132) (not b!3999107) b_and!307087 (not b!3999094) (not start!376356) (not b!3999109) (not b!3999120) (not b!3999106) (not b!3999111) (not b!3999124) (not b!3999101) b_and!307093 (not b!3999114) (not b!3999091) (not b!3999093) (not b!3999130) (not b!3999089) (not b!3999096) (not b_next!111803) b_and!307091 (not b!3999084) (not b!3999125) (not b_next!111805) (not b!3999127) (not b!3999085) (not b!3999083) (not b!3999112) (not b!3999088) b_and!307089 (not b!3999116) (not b!3999104) (not b_next!111807) (not b!3999117) (not b!3999105) (not b!3999100) (not b!3999090) tp_is_empty!20345)
(check-sat (not b_next!111801) b_and!307087 b_and!307093 (not b_next!111805) b_and!307089 (not b_next!111807) (not b_next!111803) b_and!307091)
(get-model)

(declare-fun d!1183136 () Bool)

(declare-fun res!1624541 () Bool)

(declare-fun e!2479565 () Bool)

(assert (=> d!1183136 (=> (not res!1624541) (not e!2479565))))

(declare-fun isEmpty!25564 (List!42896) Bool)

(assert (=> d!1183136 (= res!1624541 (not (isEmpty!25564 (originalCharacters!7382 token!484))))))

(assert (=> d!1183136 (= (inv!57125 token!484) e!2479565)))

(declare-fun b!3999141 () Bool)

(declare-fun res!1624542 () Bool)

(assert (=> b!3999141 (=> (not res!1624542) (not e!2479565))))

(declare-fun dynLambda!18153 (Int TokenValue!7012) BalanceConc!25580)

(assert (=> b!3999141 (= res!1624542 (= (originalCharacters!7382 token!484) (list!15884 (dynLambda!18153 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (value!213921 token!484)))))))

(declare-fun b!3999142 () Bool)

(assert (=> b!3999142 (= e!2479565 (= (size!31985 token!484) (size!31986 (originalCharacters!7382 token!484))))))

(assert (= (and d!1183136 res!1624541) b!3999141))

(assert (= (and b!3999141 res!1624542) b!3999142))

(declare-fun b_lambda!116687 () Bool)

(assert (=> (not b_lambda!116687) (not b!3999141)))

(declare-fun t!332131 () Bool)

(declare-fun tb!240493 () Bool)

(assert (=> (and b!3999113 (= (toChars!9129 (transformation!6782 (rule!9812 token!484))) (toChars!9129 (transformation!6782 (rule!9812 token!484)))) t!332131) tb!240493))

(declare-fun b!3999161 () Bool)

(declare-fun e!2479572 () Bool)

(declare-fun tp!1217101 () Bool)

(declare-fun inv!57126 (Conc!12993) Bool)

(assert (=> b!3999161 (= e!2479572 (and (inv!57126 (c!691784 (dynLambda!18153 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (value!213921 token!484)))) tp!1217101))))

(declare-fun result!291454 () Bool)

(declare-fun inv!57127 (BalanceConc!25580) Bool)

(assert (=> tb!240493 (= result!291454 (and (inv!57127 (dynLambda!18153 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (value!213921 token!484))) e!2479572))))

(assert (= tb!240493 b!3999161))

(declare-fun m!4580993 () Bool)

(assert (=> b!3999161 m!4580993))

(declare-fun m!4580995 () Bool)

(assert (=> tb!240493 m!4580995))

(assert (=> b!3999141 t!332131))

(declare-fun b_and!307095 () Bool)

(assert (= b_and!307089 (and (=> t!332131 result!291454) b_and!307095)))

(declare-fun tb!240495 () Bool)

(declare-fun t!332133 () Bool)

(assert (=> (and b!3999118 (= (toChars!9129 (transformation!6782 (h!48194 rules!2999))) (toChars!9129 (transformation!6782 (rule!9812 token!484)))) t!332133) tb!240495))

(declare-fun result!291458 () Bool)

(assert (= result!291458 result!291454))

(assert (=> b!3999141 t!332133))

(declare-fun b_and!307097 () Bool)

(assert (= b_and!307093 (and (=> t!332133 result!291458) b_and!307097)))

(declare-fun m!4580997 () Bool)

(assert (=> d!1183136 m!4580997))

(declare-fun m!4580999 () Bool)

(assert (=> b!3999141 m!4580999))

(assert (=> b!3999141 m!4580999))

(declare-fun m!4581001 () Bool)

(assert (=> b!3999141 m!4581001))

(assert (=> b!3999142 m!4580845))

(assert (=> start!376356 d!1183136))

(declare-fun b!3999193 () Bool)

(declare-fun res!1624574 () Bool)

(declare-fun e!2479587 () Bool)

(assert (=> b!3999193 (=> (not res!1624574) (not e!2479587))))

(declare-fun lt!1413562 () List!42896)

(assert (=> b!3999193 (= res!1624574 (= (size!31986 lt!1413562) (+ (size!31986 newSuffix!27) (size!31986 lt!1413535))))))

(declare-fun b!3999192 () Bool)

(declare-fun e!2479586 () List!42896)

(assert (=> b!3999192 (= e!2479586 (Cons!42772 (h!48192 newSuffix!27) (++!11184 (t!332127 newSuffix!27) lt!1413535)))))

(declare-fun d!1183138 () Bool)

(assert (=> d!1183138 e!2479587))

(declare-fun res!1624575 () Bool)

(assert (=> d!1183138 (=> (not res!1624575) (not e!2479587))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6489 (List!42896) (InoxSet C!23560))

(assert (=> d!1183138 (= res!1624575 (= (content!6489 lt!1413562) ((_ map or) (content!6489 newSuffix!27) (content!6489 lt!1413535))))))

(assert (=> d!1183138 (= lt!1413562 e!2479586)))

(declare-fun c!691794 () Bool)

(assert (=> d!1183138 (= c!691794 ((_ is Nil!42772) newSuffix!27))))

(assert (=> d!1183138 (= (++!11184 newSuffix!27 lt!1413535) lt!1413562)))

(declare-fun b!3999191 () Bool)

(assert (=> b!3999191 (= e!2479586 lt!1413535)))

(declare-fun b!3999194 () Bool)

(assert (=> b!3999194 (= e!2479587 (or (not (= lt!1413535 Nil!42772)) (= lt!1413562 newSuffix!27)))))

(assert (= (and d!1183138 c!691794) b!3999191))

(assert (= (and d!1183138 (not c!691794)) b!3999192))

(assert (= (and d!1183138 res!1624575) b!3999193))

(assert (= (and b!3999193 res!1624574) b!3999194))

(declare-fun m!4581041 () Bool)

(assert (=> b!3999193 m!4581041))

(assert (=> b!3999193 m!4580925))

(declare-fun m!4581043 () Bool)

(assert (=> b!3999193 m!4581043))

(declare-fun m!4581045 () Bool)

(assert (=> b!3999192 m!4581045))

(declare-fun m!4581047 () Bool)

(assert (=> d!1183138 m!4581047))

(declare-fun m!4581049 () Bool)

(assert (=> d!1183138 m!4581049))

(declare-fun m!4581051 () Bool)

(assert (=> d!1183138 m!4581051))

(assert (=> b!3999084 d!1183138))

(declare-fun d!1183144 () Bool)

(declare-fun lt!1413574 () List!42896)

(assert (=> d!1183144 (= (++!11184 newSuffix!27 lt!1413574) suffix!1299)))

(declare-fun e!2479597 () List!42896)

(assert (=> d!1183144 (= lt!1413574 e!2479597)))

(declare-fun c!691803 () Bool)

(assert (=> d!1183144 (= c!691803 ((_ is Cons!42772) newSuffix!27))))

(assert (=> d!1183144 (>= (size!31986 suffix!1299) (size!31986 newSuffix!27))))

(assert (=> d!1183144 (= (getSuffix!2300 suffix!1299 newSuffix!27) lt!1413574)))

(declare-fun b!3999211 () Bool)

(declare-fun tail!6235 (List!42896) List!42896)

(assert (=> b!3999211 (= e!2479597 (getSuffix!2300 (tail!6235 suffix!1299) (t!332127 newSuffix!27)))))

(declare-fun b!3999212 () Bool)

(assert (=> b!3999212 (= e!2479597 suffix!1299)))

(assert (= (and d!1183144 c!691803) b!3999211))

(assert (= (and d!1183144 (not c!691803)) b!3999212))

(declare-fun m!4581061 () Bool)

(assert (=> d!1183144 m!4581061))

(assert (=> d!1183144 m!4580923))

(assert (=> d!1183144 m!4580925))

(declare-fun m!4581063 () Bool)

(assert (=> b!3999211 m!4581063))

(assert (=> b!3999211 m!4581063))

(declare-fun m!4581069 () Bool)

(assert (=> b!3999211 m!4581069))

(assert (=> b!3999084 d!1183144))

(declare-fun d!1183154 () Bool)

(declare-fun lt!1413584 () Int)

(assert (=> d!1183154 (>= lt!1413584 0)))

(declare-fun e!2479608 () Int)

(assert (=> d!1183154 (= lt!1413584 e!2479608)))

(declare-fun c!691808 () Bool)

(assert (=> d!1183154 (= c!691808 ((_ is Nil!42772) (originalCharacters!7382 token!484)))))

(assert (=> d!1183154 (= (size!31986 (originalCharacters!7382 token!484)) lt!1413584)))

(declare-fun b!3999229 () Bool)

(assert (=> b!3999229 (= e!2479608 0)))

(declare-fun b!3999230 () Bool)

(assert (=> b!3999230 (= e!2479608 (+ 1 (size!31986 (t!332127 (originalCharacters!7382 token!484)))))))

(assert (= (and d!1183154 c!691808) b!3999229))

(assert (= (and d!1183154 (not c!691808)) b!3999230))

(declare-fun m!4581075 () Bool)

(assert (=> b!3999230 m!4581075))

(assert (=> b!3999083 d!1183154))

(declare-fun d!1183160 () Bool)

(assert (=> d!1183160 (not (matchR!5664 (regex!6782 (rule!9812 token!484)) lt!1413480))))

(declare-fun lt!1413591 () Unit!61732)

(declare-fun choose!24124 (LexerInterface!6371 List!42898 Rule!13364 List!42896 List!42896 List!42896 Rule!13364) Unit!61732)

(assert (=> d!1183160 (= lt!1413591 (choose!24124 thiss!21717 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413539 lt!1413497 lt!1413480 (rule!9812 token!484)))))

(assert (=> d!1183160 (isPrefix!3869 lt!1413539 lt!1413497)))

(assert (=> d!1183160 (= (lemmaMaxPrefixOutputsMaxPrefix!436 thiss!21717 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413539 lt!1413497 lt!1413480 (rule!9812 token!484)) lt!1413591)))

(declare-fun bs!588770 () Bool)

(assert (= bs!588770 d!1183160))

(assert (=> bs!588770 m!4580859))

(declare-fun m!4581099 () Bool)

(assert (=> bs!588770 m!4581099))

(assert (=> bs!588770 m!4580935))

(assert (=> b!3999125 d!1183160))

(declare-fun b!3999283 () Bool)

(declare-fun e!2479644 () Bool)

(declare-fun e!2479646 () Bool)

(assert (=> b!3999283 (= e!2479644 e!2479646)))

(declare-fun res!1624618 () Bool)

(assert (=> b!3999283 (=> (not res!1624618) (not e!2479646))))

(assert (=> b!3999283 (= res!1624618 (not ((_ is Nil!42772) lt!1413497)))))

(declare-fun b!3999286 () Bool)

(declare-fun e!2479645 () Bool)

(assert (=> b!3999286 (= e!2479645 (>= (size!31986 lt!1413497) (size!31986 lt!1413539)))))

(declare-fun b!3999284 () Bool)

(declare-fun res!1624619 () Bool)

(assert (=> b!3999284 (=> (not res!1624619) (not e!2479646))))

(declare-fun head!8503 (List!42896) C!23560)

(assert (=> b!3999284 (= res!1624619 (= (head!8503 lt!1413539) (head!8503 lt!1413497)))))

(declare-fun d!1183168 () Bool)

(assert (=> d!1183168 e!2479645))

(declare-fun res!1624616 () Bool)

(assert (=> d!1183168 (=> res!1624616 e!2479645)))

(declare-fun lt!1413605 () Bool)

(assert (=> d!1183168 (= res!1624616 (not lt!1413605))))

(assert (=> d!1183168 (= lt!1413605 e!2479644)))

(declare-fun res!1624617 () Bool)

(assert (=> d!1183168 (=> res!1624617 e!2479644)))

(assert (=> d!1183168 (= res!1624617 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183168 (= (isPrefix!3869 lt!1413539 lt!1413497) lt!1413605)))

(declare-fun b!3999285 () Bool)

(assert (=> b!3999285 (= e!2479646 (isPrefix!3869 (tail!6235 lt!1413539) (tail!6235 lt!1413497)))))

(assert (= (and d!1183168 (not res!1624617)) b!3999283))

(assert (= (and b!3999283 res!1624618) b!3999284))

(assert (= (and b!3999284 res!1624619) b!3999285))

(assert (= (and d!1183168 (not res!1624616)) b!3999286))

(declare-fun m!4581159 () Bool)

(assert (=> b!3999286 m!4581159))

(assert (=> b!3999286 m!4580827))

(declare-fun m!4581161 () Bool)

(assert (=> b!3999284 m!4581161))

(declare-fun m!4581163 () Bool)

(assert (=> b!3999284 m!4581163))

(declare-fun m!4581165 () Bool)

(assert (=> b!3999285 m!4581165))

(declare-fun m!4581167 () Bool)

(assert (=> b!3999285 m!4581167))

(assert (=> b!3999285 m!4581165))

(assert (=> b!3999285 m!4581167))

(declare-fun m!4581169 () Bool)

(assert (=> b!3999285 m!4581169))

(assert (=> b!3999104 d!1183168))

(declare-fun b!3999293 () Bool)

(declare-fun res!1624622 () Bool)

(declare-fun e!2479650 () Bool)

(assert (=> b!3999293 (=> (not res!1624622) (not e!2479650))))

(declare-fun lt!1413608 () List!42896)

(assert (=> b!3999293 (= res!1624622 (= (size!31986 lt!1413608) (+ (size!31986 lt!1413480) (size!31986 lt!1413529))))))

(declare-fun b!3999292 () Bool)

(declare-fun e!2479649 () List!42896)

(assert (=> b!3999292 (= e!2479649 (Cons!42772 (h!48192 lt!1413480) (++!11184 (t!332127 lt!1413480) lt!1413529)))))

(declare-fun d!1183192 () Bool)

(assert (=> d!1183192 e!2479650))

(declare-fun res!1624623 () Bool)

(assert (=> d!1183192 (=> (not res!1624623) (not e!2479650))))

(assert (=> d!1183192 (= res!1624623 (= (content!6489 lt!1413608) ((_ map or) (content!6489 lt!1413480) (content!6489 lt!1413529))))))

(assert (=> d!1183192 (= lt!1413608 e!2479649)))

(declare-fun c!691820 () Bool)

(assert (=> d!1183192 (= c!691820 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183192 (= (++!11184 lt!1413480 lt!1413529) lt!1413608)))

(declare-fun b!3999291 () Bool)

(assert (=> b!3999291 (= e!2479649 lt!1413529)))

(declare-fun b!3999294 () Bool)

(assert (=> b!3999294 (= e!2479650 (or (not (= lt!1413529 Nil!42772)) (= lt!1413608 lt!1413480)))))

(assert (= (and d!1183192 c!691820) b!3999291))

(assert (= (and d!1183192 (not c!691820)) b!3999292))

(assert (= (and d!1183192 res!1624623) b!3999293))

(assert (= (and b!3999293 res!1624622) b!3999294))

(declare-fun m!4581191 () Bool)

(assert (=> b!3999293 m!4581191))

(assert (=> b!3999293 m!4580927))

(declare-fun m!4581193 () Bool)

(assert (=> b!3999293 m!4581193))

(declare-fun m!4581195 () Bool)

(assert (=> b!3999292 m!4581195))

(declare-fun m!4581197 () Bool)

(assert (=> d!1183192 m!4581197))

(declare-fun m!4581199 () Bool)

(assert (=> d!1183192 m!4581199))

(declare-fun m!4581201 () Bool)

(assert (=> d!1183192 m!4581201))

(assert (=> b!3999108 d!1183192))

(declare-fun b!3999301 () Bool)

(declare-fun res!1624626 () Bool)

(declare-fun e!2479654 () Bool)

(assert (=> b!3999301 (=> (not res!1624626) (not e!2479654))))

(declare-fun lt!1413610 () List!42896)

(assert (=> b!3999301 (= res!1624626 (= (size!31986 lt!1413610) (+ (size!31986 lt!1413485) (size!31986 suffix!1299))))))

(declare-fun b!3999300 () Bool)

(declare-fun e!2479653 () List!42896)

(assert (=> b!3999300 (= e!2479653 (Cons!42772 (h!48192 lt!1413485) (++!11184 (t!332127 lt!1413485) suffix!1299)))))

(declare-fun d!1183198 () Bool)

(assert (=> d!1183198 e!2479654))

(declare-fun res!1624627 () Bool)

(assert (=> d!1183198 (=> (not res!1624627) (not e!2479654))))

(assert (=> d!1183198 (= res!1624627 (= (content!6489 lt!1413610) ((_ map or) (content!6489 lt!1413485) (content!6489 suffix!1299))))))

(assert (=> d!1183198 (= lt!1413610 e!2479653)))

(declare-fun c!691822 () Bool)

(assert (=> d!1183198 (= c!691822 ((_ is Nil!42772) lt!1413485))))

(assert (=> d!1183198 (= (++!11184 lt!1413485 suffix!1299) lt!1413610)))

(declare-fun b!3999299 () Bool)

(assert (=> b!3999299 (= e!2479653 suffix!1299)))

(declare-fun b!3999302 () Bool)

(assert (=> b!3999302 (= e!2479654 (or (not (= suffix!1299 Nil!42772)) (= lt!1413610 lt!1413485)))))

(assert (= (and d!1183198 c!691822) b!3999299))

(assert (= (and d!1183198 (not c!691822)) b!3999300))

(assert (= (and d!1183198 res!1624627) b!3999301))

(assert (= (and b!3999301 res!1624626) b!3999302))

(declare-fun m!4581203 () Bool)

(assert (=> b!3999301 m!4581203))

(declare-fun m!4581205 () Bool)

(assert (=> b!3999301 m!4581205))

(assert (=> b!3999301 m!4580923))

(declare-fun m!4581207 () Bool)

(assert (=> b!3999300 m!4581207))

(declare-fun m!4581209 () Bool)

(assert (=> d!1183198 m!4581209))

(declare-fun m!4581211 () Bool)

(assert (=> d!1183198 m!4581211))

(declare-fun m!4581213 () Bool)

(assert (=> d!1183198 m!4581213))

(assert (=> b!3999108 d!1183198))

(declare-fun b!3999305 () Bool)

(declare-fun res!1624628 () Bool)

(declare-fun e!2479656 () Bool)

(assert (=> b!3999305 (=> (not res!1624628) (not e!2479656))))

(declare-fun lt!1413611 () List!42896)

(assert (=> b!3999305 (= res!1624628 (= (size!31986 lt!1413611) (+ (size!31986 lt!1413492) (size!31986 suffix!1299))))))

(declare-fun b!3999304 () Bool)

(declare-fun e!2479655 () List!42896)

(assert (=> b!3999304 (= e!2479655 (Cons!42772 (h!48192 lt!1413492) (++!11184 (t!332127 lt!1413492) suffix!1299)))))

(declare-fun d!1183200 () Bool)

(assert (=> d!1183200 e!2479656))

(declare-fun res!1624629 () Bool)

(assert (=> d!1183200 (=> (not res!1624629) (not e!2479656))))

(assert (=> d!1183200 (= res!1624629 (= (content!6489 lt!1413611) ((_ map or) (content!6489 lt!1413492) (content!6489 suffix!1299))))))

(assert (=> d!1183200 (= lt!1413611 e!2479655)))

(declare-fun c!691823 () Bool)

(assert (=> d!1183200 (= c!691823 ((_ is Nil!42772) lt!1413492))))

(assert (=> d!1183200 (= (++!11184 lt!1413492 suffix!1299) lt!1413611)))

(declare-fun b!3999303 () Bool)

(assert (=> b!3999303 (= e!2479655 suffix!1299)))

(declare-fun b!3999306 () Bool)

(assert (=> b!3999306 (= e!2479656 (or (not (= suffix!1299 Nil!42772)) (= lt!1413611 lt!1413492)))))

(assert (= (and d!1183200 c!691823) b!3999303))

(assert (= (and d!1183200 (not c!691823)) b!3999304))

(assert (= (and d!1183200 res!1624629) b!3999305))

(assert (= (and b!3999305 res!1624628) b!3999306))

(declare-fun m!4581215 () Bool)

(assert (=> b!3999305 m!4581215))

(declare-fun m!4581217 () Bool)

(assert (=> b!3999305 m!4581217))

(assert (=> b!3999305 m!4580923))

(declare-fun m!4581219 () Bool)

(assert (=> b!3999304 m!4581219))

(declare-fun m!4581221 () Bool)

(assert (=> d!1183200 m!4581221))

(declare-fun m!4581223 () Bool)

(assert (=> d!1183200 m!4581223))

(assert (=> d!1183200 m!4581213))

(assert (=> b!3999108 d!1183200))

(declare-fun d!1183202 () Bool)

(assert (=> d!1183202 (= (++!11184 (++!11184 lt!1413480 lt!1413492) suffix!1299) (++!11184 lt!1413480 (++!11184 lt!1413492 suffix!1299)))))

(declare-fun lt!1413617 () Unit!61732)

(declare-fun choose!24126 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> d!1183202 (= lt!1413617 (choose!24126 lt!1413480 lt!1413492 suffix!1299))))

(assert (=> d!1183202 (= (lemmaConcatAssociativity!2504 lt!1413480 lt!1413492 suffix!1299) lt!1413617)))

(declare-fun bs!588775 () Bool)

(assert (= bs!588775 d!1183202))

(declare-fun m!4581227 () Bool)

(assert (=> bs!588775 m!4581227))

(assert (=> bs!588775 m!4580869))

(declare-fun m!4581229 () Bool)

(assert (=> bs!588775 m!4581229))

(assert (=> bs!588775 m!4580975))

(assert (=> bs!588775 m!4580869))

(assert (=> bs!588775 m!4580975))

(declare-fun m!4581231 () Bool)

(assert (=> bs!588775 m!4581231))

(assert (=> b!3999108 d!1183202))

(declare-fun d!1183206 () Bool)

(assert (=> d!1183206 (= (inv!57121 (tag!7642 (rule!9812 token!484))) (= (mod (str.len (value!213920 (tag!7642 (rule!9812 token!484)))) 2) 0))))

(assert (=> b!3999107 d!1183206))

(declare-fun d!1183208 () Bool)

(declare-fun res!1624658 () Bool)

(declare-fun e!2479682 () Bool)

(assert (=> d!1183208 (=> (not res!1624658) (not e!2479682))))

(declare-fun semiInverseModEq!2909 (Int Int) Bool)

(assert (=> d!1183208 (= res!1624658 (semiInverseModEq!2909 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (toValue!9270 (transformation!6782 (rule!9812 token!484)))))))

(assert (=> d!1183208 (= (inv!57124 (transformation!6782 (rule!9812 token!484))) e!2479682)))

(declare-fun b!3999355 () Bool)

(declare-fun equivClasses!2808 (Int Int) Bool)

(assert (=> b!3999355 (= e!2479682 (equivClasses!2808 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (toValue!9270 (transformation!6782 (rule!9812 token!484)))))))

(assert (= (and d!1183208 res!1624658) b!3999355))

(declare-fun m!4581255 () Bool)

(assert (=> d!1183208 m!4581255))

(declare-fun m!4581257 () Bool)

(assert (=> b!3999355 m!4581257))

(assert (=> b!3999107 d!1183208))

(declare-fun d!1183214 () Bool)

(assert (=> d!1183214 (= (_2!24113 (v!39555 lt!1413494)) lt!1413541)))

(declare-fun lt!1413624 () Unit!61732)

(declare-fun choose!24127 (List!42896 List!42896 List!42896 List!42896 List!42896) Unit!61732)

(assert (=> d!1183214 (= lt!1413624 (choose!24127 lt!1413539 (_2!24113 (v!39555 lt!1413494)) lt!1413539 lt!1413541 lt!1413497))))

(assert (=> d!1183214 (isPrefix!3869 lt!1413539 lt!1413497)))

(assert (=> d!1183214 (= (lemmaSamePrefixThenSameSuffix!2056 lt!1413539 (_2!24113 (v!39555 lt!1413494)) lt!1413539 lt!1413541 lt!1413497) lt!1413624)))

(declare-fun bs!588776 () Bool)

(assert (= bs!588776 d!1183214))

(declare-fun m!4581263 () Bool)

(assert (=> bs!588776 m!4581263))

(assert (=> bs!588776 m!4580935))

(assert (=> b!3999085 d!1183214))

(declare-fun b!3999365 () Bool)

(declare-fun e!2479689 () Bool)

(declare-fun e!2479691 () Bool)

(assert (=> b!3999365 (= e!2479689 e!2479691)))

(declare-fun res!1624670 () Bool)

(assert (=> b!3999365 (=> (not res!1624670) (not e!2479691))))

(assert (=> b!3999365 (= res!1624670 (not ((_ is Nil!42772) lt!1413502)))))

(declare-fun b!3999368 () Bool)

(declare-fun e!2479690 () Bool)

(assert (=> b!3999368 (= e!2479690 (>= (size!31986 lt!1413502) (size!31986 lt!1413539)))))

(declare-fun b!3999366 () Bool)

(declare-fun res!1624671 () Bool)

(assert (=> b!3999366 (=> (not res!1624671) (not e!2479691))))

(assert (=> b!3999366 (= res!1624671 (= (head!8503 lt!1413539) (head!8503 lt!1413502)))))

(declare-fun d!1183220 () Bool)

(assert (=> d!1183220 e!2479690))

(declare-fun res!1624668 () Bool)

(assert (=> d!1183220 (=> res!1624668 e!2479690)))

(declare-fun lt!1413625 () Bool)

(assert (=> d!1183220 (= res!1624668 (not lt!1413625))))

(assert (=> d!1183220 (= lt!1413625 e!2479689)))

(declare-fun res!1624669 () Bool)

(assert (=> d!1183220 (=> res!1624669 e!2479689)))

(assert (=> d!1183220 (= res!1624669 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183220 (= (isPrefix!3869 lt!1413539 lt!1413502) lt!1413625)))

(declare-fun b!3999367 () Bool)

(assert (=> b!3999367 (= e!2479691 (isPrefix!3869 (tail!6235 lt!1413539) (tail!6235 lt!1413502)))))

(assert (= (and d!1183220 (not res!1624669)) b!3999365))

(assert (= (and b!3999365 res!1624670) b!3999366))

(assert (= (and b!3999366 res!1624671) b!3999367))

(assert (= (and d!1183220 (not res!1624668)) b!3999368))

(declare-fun m!4581265 () Bool)

(assert (=> b!3999368 m!4581265))

(assert (=> b!3999368 m!4580827))

(assert (=> b!3999366 m!4581161))

(declare-fun m!4581267 () Bool)

(assert (=> b!3999366 m!4581267))

(assert (=> b!3999367 m!4581165))

(declare-fun m!4581269 () Bool)

(assert (=> b!3999367 m!4581269))

(assert (=> b!3999367 m!4581165))

(assert (=> b!3999367 m!4581269))

(declare-fun m!4581271 () Bool)

(assert (=> b!3999367 m!4581271))

(assert (=> b!3999085 d!1183220))

(declare-fun d!1183222 () Bool)

(assert (=> d!1183222 (isPrefix!3869 lt!1413539 (++!11184 lt!1413539 lt!1413541))))

(declare-fun lt!1413633 () Unit!61732)

(declare-fun choose!24128 (List!42896 List!42896) Unit!61732)

(assert (=> d!1183222 (= lt!1413633 (choose!24128 lt!1413539 lt!1413541))))

(assert (=> d!1183222 (= (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413539 lt!1413541) lt!1413633)))

(declare-fun bs!588778 () Bool)

(assert (= bs!588778 d!1183222))

(assert (=> bs!588778 m!4580881))

(assert (=> bs!588778 m!4580881))

(declare-fun m!4581279 () Bool)

(assert (=> bs!588778 m!4581279))

(declare-fun m!4581281 () Bool)

(assert (=> bs!588778 m!4581281))

(assert (=> b!3999085 d!1183222))

(declare-fun b!3999451 () Bool)

(declare-fun e!2479736 () Bool)

(declare-fun lt!1413675 () Option!9196)

(declare-fun contains!8511 (List!42898 Rule!13364) Bool)

(declare-fun get!14069 (Option!9196) tuple2!41958)

(assert (=> b!3999451 (= e!2479736 (contains!8511 rules!2999 (rule!9812 (_1!24113 (get!14069 lt!1413675)))))))

(declare-fun b!3999452 () Bool)

(declare-fun res!1624721 () Bool)

(assert (=> b!3999452 (=> (not res!1624721) (not e!2479736))))

(assert (=> b!3999452 (= res!1624721 (< (size!31986 (_2!24113 (get!14069 lt!1413675))) (size!31986 lt!1413497)))))

(declare-fun d!1183228 () Bool)

(declare-fun e!2479737 () Bool)

(assert (=> d!1183228 e!2479737))

(declare-fun res!1624723 () Bool)

(assert (=> d!1183228 (=> res!1624723 e!2479737)))

(declare-fun isEmpty!25566 (Option!9196) Bool)

(assert (=> d!1183228 (= res!1624723 (isEmpty!25566 lt!1413675))))

(declare-fun e!2479738 () Option!9196)

(assert (=> d!1183228 (= lt!1413675 e!2479738)))

(declare-fun c!691847 () Bool)

(assert (=> d!1183228 (= c!691847 (and ((_ is Cons!42774) rules!2999) ((_ is Nil!42774) (t!332129 rules!2999))))))

(declare-fun lt!1413671 () Unit!61732)

(declare-fun lt!1413674 () Unit!61732)

(assert (=> d!1183228 (= lt!1413671 lt!1413674)))

(assert (=> d!1183228 (isPrefix!3869 lt!1413497 lt!1413497)))

(assert (=> d!1183228 (= lt!1413674 (lemmaIsPrefixRefl!2461 lt!1413497 lt!1413497))))

(assert (=> d!1183228 (rulesValidInductive!2471 thiss!21717 rules!2999)))

(assert (=> d!1183228 (= (maxPrefix!3669 thiss!21717 rules!2999 lt!1413497) lt!1413675)))

(declare-fun b!3999453 () Bool)

(declare-fun res!1624724 () Bool)

(assert (=> b!3999453 (=> (not res!1624724) (not e!2479736))))

(assert (=> b!3999453 (= res!1624724 (= (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413675)))) (originalCharacters!7382 (_1!24113 (get!14069 lt!1413675)))))))

(declare-fun call!285967 () Option!9196)

(declare-fun bm!285962 () Bool)

(assert (=> bm!285962 (= call!285967 (maxPrefixOneRule!2703 thiss!21717 (h!48194 rules!2999) lt!1413497))))

(declare-fun b!3999454 () Bool)

(declare-fun lt!1413673 () Option!9196)

(declare-fun lt!1413672 () Option!9196)

(assert (=> b!3999454 (= e!2479738 (ite (and ((_ is None!9195) lt!1413673) ((_ is None!9195) lt!1413672)) None!9195 (ite ((_ is None!9195) lt!1413672) lt!1413673 (ite ((_ is None!9195) lt!1413673) lt!1413672 (ite (>= (size!31985 (_1!24113 (v!39555 lt!1413673))) (size!31985 (_1!24113 (v!39555 lt!1413672)))) lt!1413673 lt!1413672)))))))

(assert (=> b!3999454 (= lt!1413673 call!285967)))

(assert (=> b!3999454 (= lt!1413672 (maxPrefix!3669 thiss!21717 (t!332129 rules!2999) lt!1413497))))

(declare-fun b!3999455 () Bool)

(declare-fun res!1624725 () Bool)

(assert (=> b!3999455 (=> (not res!1624725) (not e!2479736))))

(assert (=> b!3999455 (= res!1624725 (= (value!213921 (_1!24113 (get!14069 lt!1413675))) (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (get!14069 lt!1413675)))) (seqFromList!5021 (originalCharacters!7382 (_1!24113 (get!14069 lt!1413675)))))))))

(declare-fun b!3999456 () Bool)

(declare-fun res!1624720 () Bool)

(assert (=> b!3999456 (=> (not res!1624720) (not e!2479736))))

(assert (=> b!3999456 (= res!1624720 (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (get!14069 lt!1413675)))) (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413675))))))))

(declare-fun b!3999457 () Bool)

(declare-fun res!1624726 () Bool)

(assert (=> b!3999457 (=> (not res!1624726) (not e!2479736))))

(assert (=> b!3999457 (= res!1624726 (= (++!11184 (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413675)))) (_2!24113 (get!14069 lt!1413675))) lt!1413497))))

(declare-fun b!3999458 () Bool)

(assert (=> b!3999458 (= e!2479737 e!2479736)))

(declare-fun res!1624722 () Bool)

(assert (=> b!3999458 (=> (not res!1624722) (not e!2479736))))

(declare-fun isDefined!7054 (Option!9196) Bool)

(assert (=> b!3999458 (= res!1624722 (isDefined!7054 lt!1413675))))

(declare-fun b!3999459 () Bool)

(assert (=> b!3999459 (= e!2479738 call!285967)))

(assert (= (and d!1183228 c!691847) b!3999459))

(assert (= (and d!1183228 (not c!691847)) b!3999454))

(assert (= (or b!3999459 b!3999454) bm!285962))

(assert (= (and d!1183228 (not res!1624723)) b!3999458))

(assert (= (and b!3999458 res!1624722) b!3999453))

(assert (= (and b!3999453 res!1624724) b!3999452))

(assert (= (and b!3999452 res!1624721) b!3999457))

(assert (= (and b!3999457 res!1624726) b!3999455))

(assert (= (and b!3999455 res!1624725) b!3999456))

(assert (= (and b!3999456 res!1624720) b!3999451))

(declare-fun m!4581371 () Bool)

(assert (=> b!3999455 m!4581371))

(declare-fun m!4581373 () Bool)

(assert (=> b!3999455 m!4581373))

(assert (=> b!3999455 m!4581373))

(declare-fun m!4581375 () Bool)

(assert (=> b!3999455 m!4581375))

(assert (=> b!3999452 m!4581371))

(declare-fun m!4581377 () Bool)

(assert (=> b!3999452 m!4581377))

(assert (=> b!3999452 m!4581159))

(assert (=> b!3999453 m!4581371))

(declare-fun m!4581379 () Bool)

(assert (=> b!3999453 m!4581379))

(assert (=> b!3999453 m!4581379))

(declare-fun m!4581381 () Bool)

(assert (=> b!3999453 m!4581381))

(assert (=> b!3999457 m!4581371))

(assert (=> b!3999457 m!4581379))

(assert (=> b!3999457 m!4581379))

(assert (=> b!3999457 m!4581381))

(assert (=> b!3999457 m!4581381))

(declare-fun m!4581383 () Bool)

(assert (=> b!3999457 m!4581383))

(declare-fun m!4581385 () Bool)

(assert (=> b!3999458 m!4581385))

(assert (=> b!3999456 m!4581371))

(assert (=> b!3999456 m!4581379))

(assert (=> b!3999456 m!4581379))

(assert (=> b!3999456 m!4581381))

(assert (=> b!3999456 m!4581381))

(declare-fun m!4581387 () Bool)

(assert (=> b!3999456 m!4581387))

(declare-fun m!4581389 () Bool)

(assert (=> bm!285962 m!4581389))

(declare-fun m!4581391 () Bool)

(assert (=> b!3999454 m!4581391))

(assert (=> b!3999451 m!4581371))

(declare-fun m!4581393 () Bool)

(assert (=> b!3999451 m!4581393))

(declare-fun m!4581395 () Bool)

(assert (=> d!1183228 m!4581395))

(declare-fun m!4581397 () Bool)

(assert (=> d!1183228 m!4581397))

(declare-fun m!4581399 () Bool)

(assert (=> d!1183228 m!4581399))

(assert (=> d!1183228 m!4580959))

(assert (=> b!3999127 d!1183228))

(declare-fun d!1183272 () Bool)

(assert (=> d!1183272 (= suffixResult!105 lt!1413490)))

(declare-fun lt!1413681 () Unit!61732)

(assert (=> d!1183272 (= lt!1413681 (choose!24127 lt!1413480 suffixResult!105 lt!1413480 lt!1413490 lt!1413522))))

(assert (=> d!1183272 (isPrefix!3869 lt!1413480 lt!1413522)))

(assert (=> d!1183272 (= (lemmaSamePrefixThenSameSuffix!2056 lt!1413480 suffixResult!105 lt!1413480 lt!1413490 lt!1413522) lt!1413681)))

(declare-fun bs!588786 () Bool)

(assert (= bs!588786 d!1183272))

(declare-fun m!4581401 () Bool)

(assert (=> bs!588786 m!4581401))

(assert (=> bs!588786 m!4580957))

(assert (=> b!3999127 d!1183272))

(declare-fun b!3999469 () Bool)

(declare-fun e!2479743 () Bool)

(declare-fun e!2479745 () Bool)

(assert (=> b!3999469 (= e!2479743 e!2479745)))

(declare-fun res!1624736 () Bool)

(assert (=> b!3999469 (=> (not res!1624736) (not e!2479745))))

(assert (=> b!3999469 (= res!1624736 (not ((_ is Nil!42772) lt!1413532)))))

(declare-fun b!3999472 () Bool)

(declare-fun e!2479744 () Bool)

(assert (=> b!3999472 (= e!2479744 (>= (size!31986 lt!1413532) (size!31986 lt!1413480)))))

(declare-fun b!3999470 () Bool)

(declare-fun res!1624737 () Bool)

(assert (=> b!3999470 (=> (not res!1624737) (not e!2479745))))

(assert (=> b!3999470 (= res!1624737 (= (head!8503 lt!1413480) (head!8503 lt!1413532)))))

(declare-fun d!1183274 () Bool)

(assert (=> d!1183274 e!2479744))

(declare-fun res!1624734 () Bool)

(assert (=> d!1183274 (=> res!1624734 e!2479744)))

(declare-fun lt!1413682 () Bool)

(assert (=> d!1183274 (= res!1624734 (not lt!1413682))))

(assert (=> d!1183274 (= lt!1413682 e!2479743)))

(declare-fun res!1624735 () Bool)

(assert (=> d!1183274 (=> res!1624735 e!2479743)))

(assert (=> d!1183274 (= res!1624735 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183274 (= (isPrefix!3869 lt!1413480 lt!1413532) lt!1413682)))

(declare-fun b!3999471 () Bool)

(assert (=> b!3999471 (= e!2479745 (isPrefix!3869 (tail!6235 lt!1413480) (tail!6235 lt!1413532)))))

(assert (= (and d!1183274 (not res!1624735)) b!3999469))

(assert (= (and b!3999469 res!1624736) b!3999470))

(assert (= (and b!3999470 res!1624737) b!3999471))

(assert (= (and d!1183274 (not res!1624734)) b!3999472))

(declare-fun m!4581417 () Bool)

(assert (=> b!3999472 m!4581417))

(assert (=> b!3999472 m!4580927))

(declare-fun m!4581421 () Bool)

(assert (=> b!3999470 m!4581421))

(declare-fun m!4581423 () Bool)

(assert (=> b!3999470 m!4581423))

(declare-fun m!4581425 () Bool)

(assert (=> b!3999471 m!4581425))

(declare-fun m!4581427 () Bool)

(assert (=> b!3999471 m!4581427))

(assert (=> b!3999471 m!4581425))

(assert (=> b!3999471 m!4581427))

(declare-fun m!4581433 () Bool)

(assert (=> b!3999471 m!4581433))

(assert (=> b!3999127 d!1183274))

(declare-fun d!1183276 () Bool)

(assert (=> d!1183276 (isPrefix!3869 lt!1413480 (++!11184 lt!1413480 lt!1413490))))

(declare-fun lt!1413683 () Unit!61732)

(assert (=> d!1183276 (= lt!1413683 (choose!24128 lt!1413480 lt!1413490))))

(assert (=> d!1183276 (= (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413480 lt!1413490) lt!1413683)))

(declare-fun bs!588787 () Bool)

(assert (= bs!588787 d!1183276))

(assert (=> bs!588787 m!4580911))

(assert (=> bs!588787 m!4580911))

(declare-fun m!4581443 () Bool)

(assert (=> bs!588787 m!4581443))

(declare-fun m!4581447 () Bool)

(assert (=> bs!588787 m!4581447))

(assert (=> b!3999127 d!1183276))

(declare-fun b!3999473 () Bool)

(declare-fun e!2479746 () Bool)

(declare-fun e!2479748 () Bool)

(assert (=> b!3999473 (= e!2479746 e!2479748)))

(declare-fun res!1624740 () Bool)

(assert (=> b!3999473 (=> (not res!1624740) (not e!2479748))))

(assert (=> b!3999473 (= res!1624740 (not ((_ is Nil!42772) lt!1413474)))))

(declare-fun b!3999476 () Bool)

(declare-fun e!2479747 () Bool)

(assert (=> b!3999476 (= e!2479747 (>= (size!31986 lt!1413474) (size!31986 lt!1413480)))))

(declare-fun b!3999474 () Bool)

(declare-fun res!1624741 () Bool)

(assert (=> b!3999474 (=> (not res!1624741) (not e!2479748))))

(assert (=> b!3999474 (= res!1624741 (= (head!8503 lt!1413480) (head!8503 lt!1413474)))))

(declare-fun d!1183278 () Bool)

(assert (=> d!1183278 e!2479747))

(declare-fun res!1624738 () Bool)

(assert (=> d!1183278 (=> res!1624738 e!2479747)))

(declare-fun lt!1413684 () Bool)

(assert (=> d!1183278 (= res!1624738 (not lt!1413684))))

(assert (=> d!1183278 (= lt!1413684 e!2479746)))

(declare-fun res!1624739 () Bool)

(assert (=> d!1183278 (=> res!1624739 e!2479746)))

(assert (=> d!1183278 (= res!1624739 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183278 (= (isPrefix!3869 lt!1413480 lt!1413474) lt!1413684)))

(declare-fun b!3999475 () Bool)

(assert (=> b!3999475 (= e!2479748 (isPrefix!3869 (tail!6235 lt!1413480) (tail!6235 lt!1413474)))))

(assert (= (and d!1183278 (not res!1624739)) b!3999473))

(assert (= (and b!3999473 res!1624740) b!3999474))

(assert (= (and b!3999474 res!1624741) b!3999475))

(assert (= (and d!1183278 (not res!1624738)) b!3999476))

(declare-fun m!4581461 () Bool)

(assert (=> b!3999476 m!4581461))

(assert (=> b!3999476 m!4580927))

(assert (=> b!3999474 m!4581421))

(declare-fun m!4581463 () Bool)

(assert (=> b!3999474 m!4581463))

(assert (=> b!3999475 m!4581425))

(declare-fun m!4581465 () Bool)

(assert (=> b!3999475 m!4581465))

(assert (=> b!3999475 m!4581425))

(assert (=> b!3999475 m!4581465))

(declare-fun m!4581467 () Bool)

(assert (=> b!3999475 m!4581467))

(assert (=> b!3999106 d!1183278))

(declare-fun b!3999616 () Bool)

(declare-fun e!2479826 () Bool)

(declare-datatypes ((tuple2!41960 0))(
  ( (tuple2!41961 (_1!24114 List!42896) (_2!24114 List!42896)) )
))
(declare-fun findLongestMatchInner!1344 (Regex!11687 List!42896 Int List!42896 List!42896 Int) tuple2!41960)

(assert (=> b!3999616 (= e!2479826 (matchR!5664 (regex!6782 (rule!9812 token!484)) (_1!24114 (findLongestMatchInner!1344 (regex!6782 (rule!9812 token!484)) Nil!42772 (size!31986 Nil!42772) lt!1413522 lt!1413522 (size!31986 lt!1413522)))))))

(declare-fun b!3999617 () Bool)

(declare-fun e!2479829 () Bool)

(declare-fun lt!1413752 () Option!9196)

(assert (=> b!3999617 (= e!2479829 (= (size!31985 (_1!24113 (get!14069 lt!1413752))) (size!31986 (originalCharacters!7382 (_1!24113 (get!14069 lt!1413752))))))))

(declare-fun b!3999618 () Bool)

(declare-fun res!1624844 () Bool)

(assert (=> b!3999618 (=> (not res!1624844) (not e!2479829))))

(assert (=> b!3999618 (= res!1624844 (= (++!11184 (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413752)))) (_2!24113 (get!14069 lt!1413752))) lt!1413522))))

(declare-fun b!3999619 () Bool)

(declare-fun e!2479827 () Option!9196)

(assert (=> b!3999619 (= e!2479827 None!9195)))

(declare-fun b!3999620 () Bool)

(declare-fun res!1624842 () Bool)

(assert (=> b!3999620 (=> (not res!1624842) (not e!2479829))))

(assert (=> b!3999620 (= res!1624842 (= (value!213921 (_1!24113 (get!14069 lt!1413752))) (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (get!14069 lt!1413752)))) (seqFromList!5021 (originalCharacters!7382 (_1!24113 (get!14069 lt!1413752)))))))))

(declare-fun b!3999621 () Bool)

(declare-fun res!1624843 () Bool)

(assert (=> b!3999621 (=> (not res!1624843) (not e!2479829))))

(assert (=> b!3999621 (= res!1624843 (< (size!31986 (_2!24113 (get!14069 lt!1413752))) (size!31986 lt!1413522)))))

(declare-fun b!3999622 () Bool)

(declare-fun e!2479828 () Bool)

(assert (=> b!3999622 (= e!2479828 e!2479829)))

(declare-fun res!1624839 () Bool)

(assert (=> b!3999622 (=> (not res!1624839) (not e!2479829))))

(assert (=> b!3999622 (= res!1624839 (matchR!5664 (regex!6782 (rule!9812 token!484)) (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413752))))))))

(declare-fun b!3999623 () Bool)

(declare-fun res!1624841 () Bool)

(assert (=> b!3999623 (=> (not res!1624841) (not e!2479829))))

(assert (=> b!3999623 (= res!1624841 (= (rule!9812 (_1!24113 (get!14069 lt!1413752))) (rule!9812 token!484)))))

(declare-fun b!3999624 () Bool)

(declare-fun lt!1413750 () tuple2!41960)

(declare-fun size!31987 (BalanceConc!25580) Int)

(assert (=> b!3999624 (= e!2479827 (Some!9195 (tuple2!41959 (Token!12703 (apply!9993 (transformation!6782 (rule!9812 token!484)) (seqFromList!5021 (_1!24114 lt!1413750))) (rule!9812 token!484) (size!31987 (seqFromList!5021 (_1!24114 lt!1413750))) (_1!24114 lt!1413750)) (_2!24114 lt!1413750))))))

(declare-fun lt!1413749 () Unit!61732)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1317 (Regex!11687 List!42896) Unit!61732)

(assert (=> b!3999624 (= lt!1413749 (longestMatchIsAcceptedByMatchOrIsEmpty!1317 (regex!6782 (rule!9812 token!484)) lt!1413522))))

(declare-fun res!1624845 () Bool)

(assert (=> b!3999624 (= res!1624845 (isEmpty!25564 (_1!24114 (findLongestMatchInner!1344 (regex!6782 (rule!9812 token!484)) Nil!42772 (size!31986 Nil!42772) lt!1413522 lt!1413522 (size!31986 lt!1413522)))))))

(assert (=> b!3999624 (=> res!1624845 e!2479826)))

(assert (=> b!3999624 e!2479826))

(declare-fun lt!1413753 () Unit!61732)

(assert (=> b!3999624 (= lt!1413753 lt!1413749)))

(declare-fun lt!1413751 () Unit!61732)

(declare-fun lemmaSemiInverse!1864 (TokenValueInjection!13452 BalanceConc!25580) Unit!61732)

(assert (=> b!3999624 (= lt!1413751 (lemmaSemiInverse!1864 (transformation!6782 (rule!9812 token!484)) (seqFromList!5021 (_1!24114 lt!1413750))))))

(declare-fun d!1183282 () Bool)

(assert (=> d!1183282 e!2479828))

(declare-fun res!1624840 () Bool)

(assert (=> d!1183282 (=> res!1624840 e!2479828)))

(assert (=> d!1183282 (= res!1624840 (isEmpty!25566 lt!1413752))))

(assert (=> d!1183282 (= lt!1413752 e!2479827)))

(declare-fun c!691870 () Bool)

(assert (=> d!1183282 (= c!691870 (isEmpty!25564 (_1!24114 lt!1413750)))))

(declare-fun findLongestMatch!1257 (Regex!11687 List!42896) tuple2!41960)

(assert (=> d!1183282 (= lt!1413750 (findLongestMatch!1257 (regex!6782 (rule!9812 token!484)) lt!1413522))))

(assert (=> d!1183282 (ruleValid!2714 thiss!21717 (rule!9812 token!484))))

(assert (=> d!1183282 (= (maxPrefixOneRule!2703 thiss!21717 (rule!9812 token!484) lt!1413522) lt!1413752)))

(assert (= (and d!1183282 c!691870) b!3999619))

(assert (= (and d!1183282 (not c!691870)) b!3999624))

(assert (= (and b!3999624 (not res!1624845)) b!3999616))

(assert (= (and d!1183282 (not res!1624840)) b!3999622))

(assert (= (and b!3999622 res!1624839) b!3999618))

(assert (= (and b!3999618 res!1624844) b!3999621))

(assert (= (and b!3999621 res!1624843) b!3999623))

(assert (= (and b!3999623 res!1624841) b!3999620))

(assert (= (and b!3999620 res!1624842) b!3999617))

(declare-fun m!4581725 () Bool)

(assert (=> b!3999617 m!4581725))

(declare-fun m!4581727 () Bool)

(assert (=> b!3999617 m!4581727))

(declare-fun m!4581729 () Bool)

(assert (=> b!3999616 m!4581729))

(declare-fun m!4581731 () Bool)

(assert (=> b!3999616 m!4581731))

(assert (=> b!3999616 m!4581729))

(assert (=> b!3999616 m!4581731))

(declare-fun m!4581733 () Bool)

(assert (=> b!3999616 m!4581733))

(declare-fun m!4581735 () Bool)

(assert (=> b!3999616 m!4581735))

(declare-fun m!4581737 () Bool)

(assert (=> d!1183282 m!4581737))

(declare-fun m!4581739 () Bool)

(assert (=> d!1183282 m!4581739))

(declare-fun m!4581741 () Bool)

(assert (=> d!1183282 m!4581741))

(assert (=> d!1183282 m!4580907))

(assert (=> b!3999620 m!4581725))

(declare-fun m!4581743 () Bool)

(assert (=> b!3999620 m!4581743))

(assert (=> b!3999620 m!4581743))

(declare-fun m!4581745 () Bool)

(assert (=> b!3999620 m!4581745))

(assert (=> b!3999621 m!4581725))

(declare-fun m!4581747 () Bool)

(assert (=> b!3999621 m!4581747))

(assert (=> b!3999621 m!4581731))

(assert (=> b!3999623 m!4581725))

(assert (=> b!3999622 m!4581725))

(declare-fun m!4581749 () Bool)

(assert (=> b!3999622 m!4581749))

(assert (=> b!3999622 m!4581749))

(declare-fun m!4581751 () Bool)

(assert (=> b!3999622 m!4581751))

(assert (=> b!3999622 m!4581751))

(declare-fun m!4581753 () Bool)

(assert (=> b!3999622 m!4581753))

(assert (=> b!3999624 m!4581731))

(declare-fun m!4581755 () Bool)

(assert (=> b!3999624 m!4581755))

(declare-fun m!4581757 () Bool)

(assert (=> b!3999624 m!4581757))

(assert (=> b!3999624 m!4581755))

(declare-fun m!4581759 () Bool)

(assert (=> b!3999624 m!4581759))

(assert (=> b!3999624 m!4581755))

(declare-fun m!4581761 () Bool)

(assert (=> b!3999624 m!4581761))

(declare-fun m!4581763 () Bool)

(assert (=> b!3999624 m!4581763))

(assert (=> b!3999624 m!4581729))

(assert (=> b!3999624 m!4581755))

(declare-fun m!4581765 () Bool)

(assert (=> b!3999624 m!4581765))

(assert (=> b!3999624 m!4581729))

(assert (=> b!3999624 m!4581731))

(assert (=> b!3999624 m!4581733))

(assert (=> b!3999618 m!4581725))

(assert (=> b!3999618 m!4581749))

(assert (=> b!3999618 m!4581749))

(assert (=> b!3999618 m!4581751))

(assert (=> b!3999618 m!4581751))

(declare-fun m!4581767 () Bool)

(assert (=> b!3999618 m!4581767))

(assert (=> b!3999106 d!1183282))

(declare-fun d!1183366 () Bool)

(assert (=> d!1183366 (= lt!1413529 suffixResult!105)))

(declare-fun lt!1413754 () Unit!61732)

(assert (=> d!1183366 (= lt!1413754 (choose!24127 lt!1413480 lt!1413529 lt!1413480 suffixResult!105 lt!1413522))))

(assert (=> d!1183366 (isPrefix!3869 lt!1413480 lt!1413522)))

(assert (=> d!1183366 (= (lemmaSamePrefixThenSameSuffix!2056 lt!1413480 lt!1413529 lt!1413480 suffixResult!105 lt!1413522) lt!1413754)))

(declare-fun bs!588803 () Bool)

(assert (= bs!588803 d!1183366))

(declare-fun m!4581769 () Bool)

(assert (=> bs!588803 m!4581769))

(assert (=> bs!588803 m!4580957))

(assert (=> b!3999106 d!1183366))

(declare-fun d!1183368 () Bool)

(assert (=> d!1183368 (isPrefix!3869 lt!1413480 (++!11184 lt!1413480 lt!1413529))))

(declare-fun lt!1413755 () Unit!61732)

(assert (=> d!1183368 (= lt!1413755 (choose!24128 lt!1413480 lt!1413529))))

(assert (=> d!1183368 (= (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413480 lt!1413529) lt!1413755)))

(declare-fun bs!588804 () Bool)

(assert (= bs!588804 d!1183368))

(assert (=> bs!588804 m!4580971))

(assert (=> bs!588804 m!4580971))

(declare-fun m!4581771 () Bool)

(assert (=> bs!588804 m!4581771))

(declare-fun m!4581773 () Bool)

(assert (=> bs!588804 m!4581773))

(assert (=> b!3999106 d!1183368))

(declare-fun d!1183370 () Bool)

(assert (=> d!1183370 (= (maxPrefixOneRule!2703 thiss!21717 (rule!9812 token!484) lt!1413522) (Some!9195 (tuple2!41959 (Token!12703 (apply!9993 (transformation!6782 (rule!9812 token!484)) (seqFromList!5021 lt!1413480)) (rule!9812 token!484) (size!31986 lt!1413480) lt!1413480) suffixResult!105)))))

(declare-fun lt!1413758 () Unit!61732)

(declare-fun choose!24130 (LexerInterface!6371 List!42898 List!42896 List!42896 List!42896 Rule!13364) Unit!61732)

(assert (=> d!1183370 (= lt!1413758 (choose!24130 thiss!21717 rules!2999 lt!1413480 lt!1413522 suffixResult!105 (rule!9812 token!484)))))

(assert (=> d!1183370 (not (isEmpty!25562 rules!2999))))

(assert (=> d!1183370 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1525 thiss!21717 rules!2999 lt!1413480 lt!1413522 suffixResult!105 (rule!9812 token!484)) lt!1413758)))

(declare-fun bs!588805 () Bool)

(assert (= bs!588805 d!1183370))

(assert (=> bs!588805 m!4580895))

(assert (=> bs!588805 m!4580927))

(declare-fun m!4581775 () Bool)

(assert (=> bs!588805 m!4581775))

(assert (=> bs!588805 m!4580795))

(assert (=> bs!588805 m!4580889))

(assert (=> bs!588805 m!4580891))

(assert (=> bs!588805 m!4580889))

(assert (=> b!3999106 d!1183370))

(declare-fun d!1183372 () Bool)

(declare-fun fromListB!2303 (List!42896) BalanceConc!25580)

(assert (=> d!1183372 (= (seqFromList!5021 lt!1413480) (fromListB!2303 lt!1413480))))

(declare-fun bs!588806 () Bool)

(assert (= bs!588806 d!1183372))

(declare-fun m!4581777 () Bool)

(assert (=> bs!588806 m!4581777))

(assert (=> b!3999106 d!1183372))

(declare-fun d!1183374 () Bool)

(declare-fun dynLambda!18156 (Int BalanceConc!25580) TokenValue!7012)

(assert (=> d!1183374 (= (apply!9993 (transformation!6782 (rule!9812 token!484)) (seqFromList!5021 lt!1413480)) (dynLambda!18156 (toValue!9270 (transformation!6782 (rule!9812 token!484))) (seqFromList!5021 lt!1413480)))))

(declare-fun b_lambda!116699 () Bool)

(assert (=> (not b_lambda!116699) (not d!1183374)))

(declare-fun t!332151 () Bool)

(declare-fun tb!240513 () Bool)

(assert (=> (and b!3999113 (= (toValue!9270 (transformation!6782 (rule!9812 token!484))) (toValue!9270 (transformation!6782 (rule!9812 token!484)))) t!332151) tb!240513))

(declare-fun result!291480 () Bool)

(assert (=> tb!240513 (= result!291480 (inv!21 (dynLambda!18156 (toValue!9270 (transformation!6782 (rule!9812 token!484))) (seqFromList!5021 lt!1413480))))))

(declare-fun m!4581779 () Bool)

(assert (=> tb!240513 m!4581779))

(assert (=> d!1183374 t!332151))

(declare-fun b_and!307119 () Bool)

(assert (= b_and!307087 (and (=> t!332151 result!291480) b_and!307119)))

(declare-fun t!332153 () Bool)

(declare-fun tb!240515 () Bool)

(assert (=> (and b!3999118 (= (toValue!9270 (transformation!6782 (h!48194 rules!2999))) (toValue!9270 (transformation!6782 (rule!9812 token!484)))) t!332153) tb!240515))

(declare-fun result!291484 () Bool)

(assert (= result!291484 result!291480))

(assert (=> d!1183374 t!332153))

(declare-fun b_and!307121 () Bool)

(assert (= b_and!307091 (and (=> t!332153 result!291484) b_and!307121)))

(assert (=> d!1183374 m!4580889))

(declare-fun m!4581781 () Bool)

(assert (=> d!1183374 m!4581781))

(assert (=> b!3999106 d!1183374))

(declare-fun b!3999629 () Bool)

(declare-fun res!1624846 () Bool)

(declare-fun e!2479834 () Bool)

(assert (=> b!3999629 (=> (not res!1624846) (not e!2479834))))

(declare-fun lt!1413759 () List!42896)

(assert (=> b!3999629 (= res!1624846 (= (size!31986 lt!1413759) (+ (size!31986 prefix!494) (size!31986 newSuffix!27))))))

(declare-fun b!3999628 () Bool)

(declare-fun e!2479833 () List!42896)

(assert (=> b!3999628 (= e!2479833 (Cons!42772 (h!48192 prefix!494) (++!11184 (t!332127 prefix!494) newSuffix!27)))))

(declare-fun d!1183376 () Bool)

(assert (=> d!1183376 e!2479834))

(declare-fun res!1624847 () Bool)

(assert (=> d!1183376 (=> (not res!1624847) (not e!2479834))))

(assert (=> d!1183376 (= res!1624847 (= (content!6489 lt!1413759) ((_ map or) (content!6489 prefix!494) (content!6489 newSuffix!27))))))

(assert (=> d!1183376 (= lt!1413759 e!2479833)))

(declare-fun c!691871 () Bool)

(assert (=> d!1183376 (= c!691871 ((_ is Nil!42772) prefix!494))))

(assert (=> d!1183376 (= (++!11184 prefix!494 newSuffix!27) lt!1413759)))

(declare-fun b!3999627 () Bool)

(assert (=> b!3999627 (= e!2479833 newSuffix!27)))

(declare-fun b!3999630 () Bool)

(assert (=> b!3999630 (= e!2479834 (or (not (= newSuffix!27 Nil!42772)) (= lt!1413759 prefix!494)))))

(assert (= (and d!1183376 c!691871) b!3999627))

(assert (= (and d!1183376 (not c!691871)) b!3999628))

(assert (= (and d!1183376 res!1624847) b!3999629))

(assert (= (and b!3999629 res!1624846) b!3999630))

(declare-fun m!4581783 () Bool)

(assert (=> b!3999629 m!4581783))

(assert (=> b!3999629 m!4580929))

(assert (=> b!3999629 m!4580925))

(declare-fun m!4581785 () Bool)

(assert (=> b!3999628 m!4581785))

(declare-fun m!4581787 () Bool)

(assert (=> d!1183376 m!4581787))

(declare-fun m!4581789 () Bool)

(assert (=> d!1183376 m!4581789))

(assert (=> d!1183376 m!4581049))

(assert (=> b!3999100 d!1183376))

(declare-fun b!3999633 () Bool)

(declare-fun res!1624848 () Bool)

(declare-fun e!2479836 () Bool)

(assert (=> b!3999633 (=> (not res!1624848) (not e!2479836))))

(declare-fun lt!1413760 () List!42896)

(assert (=> b!3999633 (= res!1624848 (= (size!31986 lt!1413760) (+ (size!31986 lt!1413480) (size!31986 newSuffixResult!27))))))

(declare-fun b!3999632 () Bool)

(declare-fun e!2479835 () List!42896)

(assert (=> b!3999632 (= e!2479835 (Cons!42772 (h!48192 lt!1413480) (++!11184 (t!332127 lt!1413480) newSuffixResult!27)))))

(declare-fun d!1183378 () Bool)

(assert (=> d!1183378 e!2479836))

(declare-fun res!1624849 () Bool)

(assert (=> d!1183378 (=> (not res!1624849) (not e!2479836))))

(assert (=> d!1183378 (= res!1624849 (= (content!6489 lt!1413760) ((_ map or) (content!6489 lt!1413480) (content!6489 newSuffixResult!27))))))

(assert (=> d!1183378 (= lt!1413760 e!2479835)))

(declare-fun c!691872 () Bool)

(assert (=> d!1183378 (= c!691872 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183378 (= (++!11184 lt!1413480 newSuffixResult!27) lt!1413760)))

(declare-fun b!3999631 () Bool)

(assert (=> b!3999631 (= e!2479835 newSuffixResult!27)))

(declare-fun b!3999634 () Bool)

(assert (=> b!3999634 (= e!2479836 (or (not (= newSuffixResult!27 Nil!42772)) (= lt!1413760 lt!1413480)))))

(assert (= (and d!1183378 c!691872) b!3999631))

(assert (= (and d!1183378 (not c!691872)) b!3999632))

(assert (= (and d!1183378 res!1624849) b!3999633))

(assert (= (and b!3999633 res!1624848) b!3999634))

(declare-fun m!4581791 () Bool)

(assert (=> b!3999633 m!4581791))

(assert (=> b!3999633 m!4580927))

(declare-fun m!4581793 () Bool)

(assert (=> b!3999633 m!4581793))

(declare-fun m!4581795 () Bool)

(assert (=> b!3999632 m!4581795))

(declare-fun m!4581797 () Bool)

(assert (=> d!1183378 m!4581797))

(assert (=> d!1183378 m!4581199))

(declare-fun m!4581799 () Bool)

(assert (=> d!1183378 m!4581799))

(assert (=> b!3999100 d!1183378))

(declare-fun b!3999645 () Bool)

(declare-fun e!2479842 () Int)

(assert (=> b!3999645 (= e!2479842 (+ 1 (getIndex!552 (t!332129 rules!2999) (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(declare-fun b!3999644 () Bool)

(declare-fun e!2479843 () Int)

(assert (=> b!3999644 (= e!2479843 e!2479842)))

(declare-fun c!691877 () Bool)

(assert (=> b!3999644 (= c!691877 (and ((_ is Cons!42774) rules!2999) (not (= (h!48194 rules!2999) (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(declare-fun b!3999646 () Bool)

(assert (=> b!3999646 (= e!2479842 (- 1))))

(declare-fun b!3999643 () Bool)

(assert (=> b!3999643 (= e!2479843 0)))

(declare-fun d!1183380 () Bool)

(declare-fun lt!1413763 () Int)

(assert (=> d!1183380 (>= lt!1413763 0)))

(assert (=> d!1183380 (= lt!1413763 e!2479843)))

(declare-fun c!691878 () Bool)

(assert (=> d!1183380 (= c!691878 (and ((_ is Cons!42774) rules!2999) (= (h!48194 rules!2999) (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(assert (=> d!1183380 (contains!8511 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))

(assert (=> d!1183380 (= (getIndex!552 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413763)))

(assert (= (and d!1183380 c!691878) b!3999643))

(assert (= (and d!1183380 (not c!691878)) b!3999644))

(assert (= (and b!3999644 c!691877) b!3999645))

(assert (= (and b!3999644 (not c!691877)) b!3999646))

(declare-fun m!4581801 () Bool)

(assert (=> b!3999645 m!4581801))

(declare-fun m!4581803 () Bool)

(assert (=> d!1183380 m!4581803))

(assert (=> b!3999120 d!1183380))

(declare-fun d!1183382 () Bool)

(assert (=> d!1183382 (= (_2!24113 (v!39555 lt!1413494)) newSuffixResult!27)))

(declare-fun lt!1413764 () Unit!61732)

(assert (=> d!1183382 (= lt!1413764 (choose!24127 lt!1413539 (_2!24113 (v!39555 lt!1413494)) lt!1413480 newSuffixResult!27 lt!1413497))))

(assert (=> d!1183382 (isPrefix!3869 lt!1413539 lt!1413497)))

(assert (=> d!1183382 (= (lemmaSamePrefixThenSameSuffix!2056 lt!1413539 (_2!24113 (v!39555 lt!1413494)) lt!1413480 newSuffixResult!27 lt!1413497) lt!1413764)))

(declare-fun bs!588807 () Bool)

(assert (= bs!588807 d!1183382))

(declare-fun m!4581805 () Bool)

(assert (=> bs!588807 m!4581805))

(assert (=> bs!588807 m!4580935))

(assert (=> b!3999120 d!1183382))

(declare-fun b!3999649 () Bool)

(declare-fun e!2479844 () Int)

(assert (=> b!3999649 (= e!2479844 (+ 1 (getIndex!552 (t!332129 rules!2999) (rule!9812 token!484))))))

(declare-fun b!3999648 () Bool)

(declare-fun e!2479845 () Int)

(assert (=> b!3999648 (= e!2479845 e!2479844)))

(declare-fun c!691879 () Bool)

(assert (=> b!3999648 (= c!691879 (and ((_ is Cons!42774) rules!2999) (not (= (h!48194 rules!2999) (rule!9812 token!484)))))))

(declare-fun b!3999650 () Bool)

(assert (=> b!3999650 (= e!2479844 (- 1))))

(declare-fun b!3999647 () Bool)

(assert (=> b!3999647 (= e!2479845 0)))

(declare-fun d!1183384 () Bool)

(declare-fun lt!1413765 () Int)

(assert (=> d!1183384 (>= lt!1413765 0)))

(assert (=> d!1183384 (= lt!1413765 e!2479845)))

(declare-fun c!691880 () Bool)

(assert (=> d!1183384 (= c!691880 (and ((_ is Cons!42774) rules!2999) (= (h!48194 rules!2999) (rule!9812 token!484))))))

(assert (=> d!1183384 (contains!8511 rules!2999 (rule!9812 token!484))))

(assert (=> d!1183384 (= (getIndex!552 rules!2999 (rule!9812 token!484)) lt!1413765)))

(assert (= (and d!1183384 c!691880) b!3999647))

(assert (= (and d!1183384 (not c!691880)) b!3999648))

(assert (= (and b!3999648 c!691879) b!3999649))

(assert (= (and b!3999648 (not c!691879)) b!3999650))

(declare-fun m!4581807 () Bool)

(assert (=> b!3999649 m!4581807))

(declare-fun m!4581809 () Bool)

(assert (=> d!1183384 m!4581809))

(assert (=> b!3999120 d!1183384))

(declare-fun d!1183386 () Bool)

(assert (=> d!1183386 (= lt!1413539 lt!1413480)))

(declare-fun lt!1413768 () Unit!61732)

(declare-fun choose!24132 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> d!1183386 (= lt!1413768 (choose!24132 lt!1413539 lt!1413480 lt!1413497))))

(assert (=> d!1183386 (isPrefix!3869 lt!1413539 lt!1413497)))

(assert (=> d!1183386 (= (lemmaIsPrefixSameLengthThenSameList!891 lt!1413539 lt!1413480 lt!1413497) lt!1413768)))

(declare-fun bs!588808 () Bool)

(assert (= bs!588808 d!1183386))

(declare-fun m!4581811 () Bool)

(assert (=> bs!588808 m!4581811))

(assert (=> bs!588808 m!4580935))

(assert (=> b!3999120 d!1183386))

(declare-fun d!1183388 () Bool)

(assert (=> d!1183388 (= (rule!9812 (_1!24113 (v!39555 lt!1413494))) (rule!9812 token!484))))

(declare-fun lt!1413771 () Unit!61732)

(declare-fun choose!24133 (List!42898 Rule!13364 Rule!13364) Unit!61732)

(assert (=> d!1183388 (= lt!1413771 (choose!24133 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) (rule!9812 token!484)))))

(assert (=> d!1183388 (contains!8511 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))

(assert (=> d!1183388 (= (lemmaSameIndexThenSameElement!258 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) (rule!9812 token!484)) lt!1413771)))

(declare-fun bs!588809 () Bool)

(assert (= bs!588809 d!1183388))

(declare-fun m!4581813 () Bool)

(assert (=> bs!588809 m!4581813))

(assert (=> bs!588809 m!4581803))

(assert (=> b!3999120 d!1183388))

(declare-fun d!1183390 () Bool)

(assert (=> d!1183390 (not (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413480))))

(declare-fun lt!1413774 () Unit!61732)

(declare-fun choose!24134 (LexerInterface!6371 List!42898 Rule!13364 List!42896 List!42896 Rule!13364) Unit!61732)

(assert (=> d!1183390 (= lt!1413774 (choose!24134 thiss!21717 rules!2999 (rule!9812 token!484) lt!1413480 lt!1413522 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(assert (=> d!1183390 (isPrefix!3869 lt!1413480 lt!1413522)))

(assert (=> d!1183390 (= (lemmaMaxPrefNoSmallerRuleMatches!278 thiss!21717 rules!2999 (rule!9812 token!484) lt!1413480 lt!1413522 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413774)))

(declare-fun bs!588810 () Bool)

(assert (= bs!588810 d!1183390))

(assert (=> bs!588810 m!4580921))

(declare-fun m!4581815 () Bool)

(assert (=> bs!588810 m!4581815))

(assert (=> bs!588810 m!4580957))

(assert (=> b!3999119 d!1183390))

(declare-fun b!3999679 () Bool)

(declare-fun res!1624871 () Bool)

(declare-fun e!2479863 () Bool)

(assert (=> b!3999679 (=> res!1624871 e!2479863)))

(assert (=> b!3999679 (= res!1624871 (not (isEmpty!25564 (tail!6235 lt!1413480))))))

(declare-fun b!3999680 () Bool)

(declare-fun e!2479860 () Bool)

(declare-fun nullable!4102 (Regex!11687) Bool)

(assert (=> b!3999680 (= e!2479860 (nullable!4102 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(declare-fun b!3999681 () Bool)

(assert (=> b!3999681 (= e!2479863 (not (= (head!8503 lt!1413480) (c!691785 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))))

(declare-fun b!3999682 () Bool)

(declare-fun derivativeStep!3513 (Regex!11687 C!23560) Regex!11687)

(assert (=> b!3999682 (= e!2479860 (matchR!5664 (derivativeStep!3513 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (head!8503 lt!1413480)) (tail!6235 lt!1413480)))))

(declare-fun b!3999683 () Bool)

(declare-fun e!2479862 () Bool)

(declare-fun lt!1413777 () Bool)

(assert (=> b!3999683 (= e!2479862 (not lt!1413777))))

(declare-fun b!3999684 () Bool)

(declare-fun e!2479865 () Bool)

(assert (=> b!3999684 (= e!2479865 e!2479863)))

(declare-fun res!1624869 () Bool)

(assert (=> b!3999684 (=> res!1624869 e!2479863)))

(declare-fun call!285973 () Bool)

(assert (=> b!3999684 (= res!1624869 call!285973)))

(declare-fun b!3999685 () Bool)

(declare-fun e!2479861 () Bool)

(assert (=> b!3999685 (= e!2479861 (= lt!1413777 call!285973))))

(declare-fun b!3999686 () Bool)

(declare-fun res!1624868 () Bool)

(declare-fun e!2479866 () Bool)

(assert (=> b!3999686 (=> res!1624868 e!2479866)))

(declare-fun e!2479864 () Bool)

(assert (=> b!3999686 (= res!1624868 e!2479864)))

(declare-fun res!1624867 () Bool)

(assert (=> b!3999686 (=> (not res!1624867) (not e!2479864))))

(assert (=> b!3999686 (= res!1624867 lt!1413777)))

(declare-fun b!3999687 () Bool)

(assert (=> b!3999687 (= e!2479864 (= (head!8503 lt!1413480) (c!691785 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(declare-fun b!3999688 () Bool)

(assert (=> b!3999688 (= e!2479861 e!2479862)))

(declare-fun c!691889 () Bool)

(assert (=> b!3999688 (= c!691889 ((_ is EmptyLang!11687) (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(declare-fun bm!285968 () Bool)

(assert (=> bm!285968 (= call!285973 (isEmpty!25564 lt!1413480))))

(declare-fun b!3999689 () Bool)

(assert (=> b!3999689 (= e!2479866 e!2479865)))

(declare-fun res!1624872 () Bool)

(assert (=> b!3999689 (=> (not res!1624872) (not e!2479865))))

(assert (=> b!3999689 (= res!1624872 (not lt!1413777))))

(declare-fun d!1183392 () Bool)

(assert (=> d!1183392 e!2479861))

(declare-fun c!691887 () Bool)

(assert (=> d!1183392 (= c!691887 ((_ is EmptyExpr!11687) (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(assert (=> d!1183392 (= lt!1413777 e!2479860)))

(declare-fun c!691888 () Bool)

(assert (=> d!1183392 (= c!691888 (isEmpty!25564 lt!1413480))))

(declare-fun validRegex!5302 (Regex!11687) Bool)

(assert (=> d!1183392 (validRegex!5302 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(assert (=> d!1183392 (= (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413480) lt!1413777)))

(declare-fun b!3999690 () Bool)

(declare-fun res!1624870 () Bool)

(assert (=> b!3999690 (=> (not res!1624870) (not e!2479864))))

(assert (=> b!3999690 (= res!1624870 (isEmpty!25564 (tail!6235 lt!1413480)))))

(declare-fun b!3999691 () Bool)

(declare-fun res!1624866 () Bool)

(assert (=> b!3999691 (=> res!1624866 e!2479866)))

(assert (=> b!3999691 (= res!1624866 (not ((_ is ElementMatch!11687) (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(assert (=> b!3999691 (= e!2479862 e!2479866)))

(declare-fun b!3999692 () Bool)

(declare-fun res!1624873 () Bool)

(assert (=> b!3999692 (=> (not res!1624873) (not e!2479864))))

(assert (=> b!3999692 (= res!1624873 (not call!285973))))

(assert (= (and d!1183392 c!691888) b!3999680))

(assert (= (and d!1183392 (not c!691888)) b!3999682))

(assert (= (and d!1183392 c!691887) b!3999685))

(assert (= (and d!1183392 (not c!691887)) b!3999688))

(assert (= (and b!3999688 c!691889) b!3999683))

(assert (= (and b!3999688 (not c!691889)) b!3999691))

(assert (= (and b!3999691 (not res!1624866)) b!3999686))

(assert (= (and b!3999686 res!1624867) b!3999692))

(assert (= (and b!3999692 res!1624873) b!3999690))

(assert (= (and b!3999690 res!1624870) b!3999687))

(assert (= (and b!3999686 (not res!1624868)) b!3999689))

(assert (= (and b!3999689 res!1624872) b!3999684))

(assert (= (and b!3999684 (not res!1624869)) b!3999679))

(assert (= (and b!3999679 (not res!1624871)) b!3999681))

(assert (= (or b!3999685 b!3999684 b!3999692) bm!285968))

(assert (=> b!3999679 m!4581425))

(assert (=> b!3999679 m!4581425))

(declare-fun m!4581817 () Bool)

(assert (=> b!3999679 m!4581817))

(assert (=> b!3999682 m!4581421))

(assert (=> b!3999682 m!4581421))

(declare-fun m!4581819 () Bool)

(assert (=> b!3999682 m!4581819))

(assert (=> b!3999682 m!4581425))

(assert (=> b!3999682 m!4581819))

(assert (=> b!3999682 m!4581425))

(declare-fun m!4581821 () Bool)

(assert (=> b!3999682 m!4581821))

(declare-fun m!4581823 () Bool)

(assert (=> b!3999680 m!4581823))

(assert (=> b!3999687 m!4581421))

(declare-fun m!4581825 () Bool)

(assert (=> d!1183392 m!4581825))

(declare-fun m!4581827 () Bool)

(assert (=> d!1183392 m!4581827))

(assert (=> b!3999690 m!4581425))

(assert (=> b!3999690 m!4581425))

(assert (=> b!3999690 m!4581817))

(assert (=> bm!285968 m!4581825))

(assert (=> b!3999681 m!4581421))

(assert (=> b!3999119 d!1183392))

(declare-fun d!1183394 () Bool)

(assert (=> d!1183394 (= (isEmpty!25562 rules!2999) ((_ is Nil!42774) rules!2999))))

(assert (=> b!3999102 d!1183394))

(declare-fun b!3999693 () Bool)

(declare-fun e!2479867 () Bool)

(declare-fun e!2479869 () Bool)

(assert (=> b!3999693 (= e!2479867 e!2479869)))

(declare-fun res!1624876 () Bool)

(assert (=> b!3999693 (=> (not res!1624876) (not e!2479869))))

(assert (=> b!3999693 (= res!1624876 (not ((_ is Nil!42772) suffix!1299)))))

(declare-fun b!3999696 () Bool)

(declare-fun e!2479868 () Bool)

(assert (=> b!3999696 (= e!2479868 (>= (size!31986 suffix!1299) (size!31986 newSuffix!27)))))

(declare-fun b!3999694 () Bool)

(declare-fun res!1624877 () Bool)

(assert (=> b!3999694 (=> (not res!1624877) (not e!2479869))))

(assert (=> b!3999694 (= res!1624877 (= (head!8503 newSuffix!27) (head!8503 suffix!1299)))))

(declare-fun d!1183396 () Bool)

(assert (=> d!1183396 e!2479868))

(declare-fun res!1624874 () Bool)

(assert (=> d!1183396 (=> res!1624874 e!2479868)))

(declare-fun lt!1413778 () Bool)

(assert (=> d!1183396 (= res!1624874 (not lt!1413778))))

(assert (=> d!1183396 (= lt!1413778 e!2479867)))

(declare-fun res!1624875 () Bool)

(assert (=> d!1183396 (=> res!1624875 e!2479867)))

(assert (=> d!1183396 (= res!1624875 ((_ is Nil!42772) newSuffix!27))))

(assert (=> d!1183396 (= (isPrefix!3869 newSuffix!27 suffix!1299) lt!1413778)))

(declare-fun b!3999695 () Bool)

(assert (=> b!3999695 (= e!2479869 (isPrefix!3869 (tail!6235 newSuffix!27) (tail!6235 suffix!1299)))))

(assert (= (and d!1183396 (not res!1624875)) b!3999693))

(assert (= (and b!3999693 res!1624876) b!3999694))

(assert (= (and b!3999694 res!1624877) b!3999695))

(assert (= (and d!1183396 (not res!1624874)) b!3999696))

(assert (=> b!3999696 m!4580923))

(assert (=> b!3999696 m!4580925))

(declare-fun m!4581829 () Bool)

(assert (=> b!3999694 m!4581829))

(declare-fun m!4581831 () Bool)

(assert (=> b!3999694 m!4581831))

(declare-fun m!4581833 () Bool)

(assert (=> b!3999695 m!4581833))

(assert (=> b!3999695 m!4581063))

(assert (=> b!3999695 m!4581833))

(assert (=> b!3999695 m!4581063))

(declare-fun m!4581835 () Bool)

(assert (=> b!3999695 m!4581835))

(assert (=> b!3999101 d!1183396))

(declare-fun d!1183398 () Bool)

(assert (=> d!1183398 true))

(declare-fun lt!1413788 () Bool)

(declare-fun lambda!126905 () Int)

(declare-fun forall!8342 (List!42898 Int) Bool)

(assert (=> d!1183398 (= lt!1413788 (forall!8342 rules!2999 lambda!126905))))

(declare-fun e!2479914 () Bool)

(assert (=> d!1183398 (= lt!1413788 e!2479914)))

(declare-fun res!1624901 () Bool)

(assert (=> d!1183398 (=> res!1624901 e!2479914)))

(assert (=> d!1183398 (= res!1624901 (not ((_ is Cons!42774) rules!2999)))))

(assert (=> d!1183398 (= (rulesValidInductive!2471 thiss!21717 rules!2999) lt!1413788)))

(declare-fun b!3999768 () Bool)

(declare-fun e!2479915 () Bool)

(assert (=> b!3999768 (= e!2479914 e!2479915)))

(declare-fun res!1624900 () Bool)

(assert (=> b!3999768 (=> (not res!1624900) (not e!2479915))))

(assert (=> b!3999768 (= res!1624900 (ruleValid!2714 thiss!21717 (h!48194 rules!2999)))))

(declare-fun b!3999769 () Bool)

(assert (=> b!3999769 (= e!2479915 (rulesValidInductive!2471 thiss!21717 (t!332129 rules!2999)))))

(assert (= (and d!1183398 (not res!1624901)) b!3999768))

(assert (= (and b!3999768 res!1624900) b!3999769))

(declare-fun m!4581867 () Bool)

(assert (=> d!1183398 m!4581867))

(declare-fun m!4581869 () Bool)

(assert (=> b!3999768 m!4581869))

(declare-fun m!4581871 () Bool)

(assert (=> b!3999769 m!4581871))

(assert (=> b!3999094 d!1183398))

(declare-fun b!3999782 () Bool)

(declare-fun e!2479922 () Bool)

(declare-fun inv!17 (TokenValue!7012) Bool)

(assert (=> b!3999782 (= e!2479922 (inv!17 (value!213921 token!484)))))

(declare-fun d!1183412 () Bool)

(declare-fun c!691898 () Bool)

(assert (=> d!1183412 (= c!691898 ((_ is IntegerValue!21036) (value!213921 token!484)))))

(declare-fun e!2479923 () Bool)

(assert (=> d!1183412 (= (inv!21 (value!213921 token!484)) e!2479923)))

(declare-fun b!3999783 () Bool)

(declare-fun e!2479924 () Bool)

(declare-fun inv!15 (TokenValue!7012) Bool)

(assert (=> b!3999783 (= e!2479924 (inv!15 (value!213921 token!484)))))

(declare-fun b!3999784 () Bool)

(assert (=> b!3999784 (= e!2479923 e!2479922)))

(declare-fun c!691899 () Bool)

(assert (=> b!3999784 (= c!691899 ((_ is IntegerValue!21037) (value!213921 token!484)))))

(declare-fun b!3999785 () Bool)

(declare-fun res!1624904 () Bool)

(assert (=> b!3999785 (=> res!1624904 e!2479924)))

(assert (=> b!3999785 (= res!1624904 (not ((_ is IntegerValue!21038) (value!213921 token!484))))))

(assert (=> b!3999785 (= e!2479922 e!2479924)))

(declare-fun b!3999786 () Bool)

(declare-fun inv!16 (TokenValue!7012) Bool)

(assert (=> b!3999786 (= e!2479923 (inv!16 (value!213921 token!484)))))

(assert (= (and d!1183412 c!691898) b!3999786))

(assert (= (and d!1183412 (not c!691898)) b!3999784))

(assert (= (and b!3999784 c!691899) b!3999782))

(assert (= (and b!3999784 (not c!691899)) b!3999785))

(assert (= (and b!3999785 (not res!1624904)) b!3999783))

(declare-fun m!4581873 () Bool)

(assert (=> b!3999782 m!4581873))

(declare-fun m!4581875 () Bool)

(assert (=> b!3999783 m!4581875))

(declare-fun m!4581877 () Bool)

(assert (=> b!3999786 m!4581877))

(assert (=> b!3999093 d!1183412))

(declare-fun d!1183414 () Bool)

(declare-fun lt!1413789 () Int)

(assert (=> d!1183414 (>= lt!1413789 0)))

(declare-fun e!2479925 () Int)

(assert (=> d!1183414 (= lt!1413789 e!2479925)))

(declare-fun c!691900 () Bool)

(assert (=> d!1183414 (= c!691900 ((_ is Nil!42772) suffix!1299))))

(assert (=> d!1183414 (= (size!31986 suffix!1299) lt!1413789)))

(declare-fun b!3999787 () Bool)

(assert (=> b!3999787 (= e!2479925 0)))

(declare-fun b!3999788 () Bool)

(assert (=> b!3999788 (= e!2479925 (+ 1 (size!31986 (t!332127 suffix!1299))))))

(assert (= (and d!1183414 c!691900) b!3999787))

(assert (= (and d!1183414 (not c!691900)) b!3999788))

(declare-fun m!4581879 () Bool)

(assert (=> b!3999788 m!4581879))

(assert (=> b!3999114 d!1183414))

(declare-fun d!1183416 () Bool)

(declare-fun lt!1413790 () Int)

(assert (=> d!1183416 (>= lt!1413790 0)))

(declare-fun e!2479926 () Int)

(assert (=> d!1183416 (= lt!1413790 e!2479926)))

(declare-fun c!691901 () Bool)

(assert (=> d!1183416 (= c!691901 ((_ is Nil!42772) newSuffix!27))))

(assert (=> d!1183416 (= (size!31986 newSuffix!27) lt!1413790)))

(declare-fun b!3999789 () Bool)

(assert (=> b!3999789 (= e!2479926 0)))

(declare-fun b!3999790 () Bool)

(assert (=> b!3999790 (= e!2479926 (+ 1 (size!31986 (t!332127 newSuffix!27))))))

(assert (= (and d!1183416 c!691901) b!3999789))

(assert (= (and d!1183416 (not c!691901)) b!3999790))

(declare-fun m!4581881 () Bool)

(assert (=> b!3999790 m!4581881))

(assert (=> b!3999114 d!1183416))

(declare-fun b!3999793 () Bool)

(declare-fun res!1624905 () Bool)

(declare-fun e!2479928 () Bool)

(assert (=> b!3999793 (=> (not res!1624905) (not e!2479928))))

(declare-fun lt!1413791 () List!42896)

(assert (=> b!3999793 (= res!1624905 (= (size!31986 lt!1413791) (+ (size!31986 lt!1413539) (size!31986 lt!1413541))))))

(declare-fun b!3999792 () Bool)

(declare-fun e!2479927 () List!42896)

(assert (=> b!3999792 (= e!2479927 (Cons!42772 (h!48192 lt!1413539) (++!11184 (t!332127 lt!1413539) lt!1413541)))))

(declare-fun d!1183418 () Bool)

(assert (=> d!1183418 e!2479928))

(declare-fun res!1624906 () Bool)

(assert (=> d!1183418 (=> (not res!1624906) (not e!2479928))))

(assert (=> d!1183418 (= res!1624906 (= (content!6489 lt!1413791) ((_ map or) (content!6489 lt!1413539) (content!6489 lt!1413541))))))

(assert (=> d!1183418 (= lt!1413791 e!2479927)))

(declare-fun c!691902 () Bool)

(assert (=> d!1183418 (= c!691902 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183418 (= (++!11184 lt!1413539 lt!1413541) lt!1413791)))

(declare-fun b!3999791 () Bool)

(assert (=> b!3999791 (= e!2479927 lt!1413541)))

(declare-fun b!3999794 () Bool)

(assert (=> b!3999794 (= e!2479928 (or (not (= lt!1413541 Nil!42772)) (= lt!1413791 lt!1413539)))))

(assert (= (and d!1183418 c!691902) b!3999791))

(assert (= (and d!1183418 (not c!691902)) b!3999792))

(assert (= (and d!1183418 res!1624906) b!3999793))

(assert (= (and b!3999793 res!1624905) b!3999794))

(declare-fun m!4581883 () Bool)

(assert (=> b!3999793 m!4581883))

(assert (=> b!3999793 m!4580827))

(declare-fun m!4581885 () Bool)

(assert (=> b!3999793 m!4581885))

(declare-fun m!4581887 () Bool)

(assert (=> b!3999792 m!4581887))

(declare-fun m!4581889 () Bool)

(assert (=> d!1183418 m!4581889))

(declare-fun m!4581891 () Bool)

(assert (=> d!1183418 m!4581891))

(declare-fun m!4581893 () Bool)

(assert (=> d!1183418 m!4581893))

(assert (=> b!3999097 d!1183418))

(declare-fun d!1183420 () Bool)

(declare-fun lt!1413792 () List!42896)

(assert (=> d!1183420 (= (++!11184 lt!1413539 lt!1413792) lt!1413497)))

(declare-fun e!2479929 () List!42896)

(assert (=> d!1183420 (= lt!1413792 e!2479929)))

(declare-fun c!691903 () Bool)

(assert (=> d!1183420 (= c!691903 ((_ is Cons!42772) lt!1413539))))

(assert (=> d!1183420 (>= (size!31986 lt!1413497) (size!31986 lt!1413539))))

(assert (=> d!1183420 (= (getSuffix!2300 lt!1413497 lt!1413539) lt!1413792)))

(declare-fun b!3999795 () Bool)

(assert (=> b!3999795 (= e!2479929 (getSuffix!2300 (tail!6235 lt!1413497) (t!332127 lt!1413539)))))

(declare-fun b!3999796 () Bool)

(assert (=> b!3999796 (= e!2479929 lt!1413497)))

(assert (= (and d!1183420 c!691903) b!3999795))

(assert (= (and d!1183420 (not c!691903)) b!3999796))

(declare-fun m!4581895 () Bool)

(assert (=> d!1183420 m!4581895))

(assert (=> d!1183420 m!4581159))

(assert (=> d!1183420 m!4580827))

(assert (=> b!3999795 m!4581167))

(assert (=> b!3999795 m!4581167))

(declare-fun m!4581897 () Bool)

(assert (=> b!3999795 m!4581897))

(assert (=> b!3999097 d!1183420))

(declare-fun d!1183422 () Bool)

(assert (=> d!1183422 (not (matchR!5664 (regex!6782 (rule!9812 token!484)) lt!1413539))))

(declare-fun lt!1413793 () Unit!61732)

(assert (=> d!1183422 (= lt!1413793 (choose!24134 thiss!21717 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413539 lt!1413497 (rule!9812 token!484)))))

(assert (=> d!1183422 (isPrefix!3869 lt!1413539 lt!1413497)))

(assert (=> d!1183422 (= (lemmaMaxPrefNoSmallerRuleMatches!278 thiss!21717 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413539 lt!1413497 (rule!9812 token!484)) lt!1413793)))

(declare-fun bs!588813 () Bool)

(assert (= bs!588813 d!1183422))

(assert (=> bs!588813 m!4580941))

(declare-fun m!4581899 () Bool)

(assert (=> bs!588813 m!4581899))

(assert (=> bs!588813 m!4580935))

(assert (=> b!3999117 d!1183422))

(declare-fun b!3999797 () Bool)

(declare-fun res!1624912 () Bool)

(declare-fun e!2479933 () Bool)

(assert (=> b!3999797 (=> res!1624912 e!2479933)))

(assert (=> b!3999797 (= res!1624912 (not (isEmpty!25564 (tail!6235 lt!1413539))))))

(declare-fun b!3999798 () Bool)

(declare-fun e!2479930 () Bool)

(assert (=> b!3999798 (= e!2479930 (nullable!4102 (regex!6782 (rule!9812 token!484))))))

(declare-fun b!3999799 () Bool)

(assert (=> b!3999799 (= e!2479933 (not (= (head!8503 lt!1413539) (c!691785 (regex!6782 (rule!9812 token!484))))))))

(declare-fun b!3999800 () Bool)

(assert (=> b!3999800 (= e!2479930 (matchR!5664 (derivativeStep!3513 (regex!6782 (rule!9812 token!484)) (head!8503 lt!1413539)) (tail!6235 lt!1413539)))))

(declare-fun b!3999801 () Bool)

(declare-fun e!2479932 () Bool)

(declare-fun lt!1413794 () Bool)

(assert (=> b!3999801 (= e!2479932 (not lt!1413794))))

(declare-fun b!3999802 () Bool)

(declare-fun e!2479935 () Bool)

(assert (=> b!3999802 (= e!2479935 e!2479933)))

(declare-fun res!1624910 () Bool)

(assert (=> b!3999802 (=> res!1624910 e!2479933)))

(declare-fun call!285975 () Bool)

(assert (=> b!3999802 (= res!1624910 call!285975)))

(declare-fun b!3999803 () Bool)

(declare-fun e!2479931 () Bool)

(assert (=> b!3999803 (= e!2479931 (= lt!1413794 call!285975))))

(declare-fun b!3999804 () Bool)

(declare-fun res!1624909 () Bool)

(declare-fun e!2479936 () Bool)

(assert (=> b!3999804 (=> res!1624909 e!2479936)))

(declare-fun e!2479934 () Bool)

(assert (=> b!3999804 (= res!1624909 e!2479934)))

(declare-fun res!1624908 () Bool)

(assert (=> b!3999804 (=> (not res!1624908) (not e!2479934))))

(assert (=> b!3999804 (= res!1624908 lt!1413794)))

(declare-fun b!3999805 () Bool)

(assert (=> b!3999805 (= e!2479934 (= (head!8503 lt!1413539) (c!691785 (regex!6782 (rule!9812 token!484)))))))

(declare-fun b!3999806 () Bool)

(assert (=> b!3999806 (= e!2479931 e!2479932)))

(declare-fun c!691906 () Bool)

(assert (=> b!3999806 (= c!691906 ((_ is EmptyLang!11687) (regex!6782 (rule!9812 token!484))))))

(declare-fun bm!285970 () Bool)

(assert (=> bm!285970 (= call!285975 (isEmpty!25564 lt!1413539))))

(declare-fun b!3999807 () Bool)

(assert (=> b!3999807 (= e!2479936 e!2479935)))

(declare-fun res!1624913 () Bool)

(assert (=> b!3999807 (=> (not res!1624913) (not e!2479935))))

(assert (=> b!3999807 (= res!1624913 (not lt!1413794))))

(declare-fun d!1183424 () Bool)

(assert (=> d!1183424 e!2479931))

(declare-fun c!691904 () Bool)

(assert (=> d!1183424 (= c!691904 ((_ is EmptyExpr!11687) (regex!6782 (rule!9812 token!484))))))

(assert (=> d!1183424 (= lt!1413794 e!2479930)))

(declare-fun c!691905 () Bool)

(assert (=> d!1183424 (= c!691905 (isEmpty!25564 lt!1413539))))

(assert (=> d!1183424 (validRegex!5302 (regex!6782 (rule!9812 token!484)))))

(assert (=> d!1183424 (= (matchR!5664 (regex!6782 (rule!9812 token!484)) lt!1413539) lt!1413794)))

(declare-fun b!3999808 () Bool)

(declare-fun res!1624911 () Bool)

(assert (=> b!3999808 (=> (not res!1624911) (not e!2479934))))

(assert (=> b!3999808 (= res!1624911 (isEmpty!25564 (tail!6235 lt!1413539)))))

(declare-fun b!3999809 () Bool)

(declare-fun res!1624907 () Bool)

(assert (=> b!3999809 (=> res!1624907 e!2479936)))

(assert (=> b!3999809 (= res!1624907 (not ((_ is ElementMatch!11687) (regex!6782 (rule!9812 token!484)))))))

(assert (=> b!3999809 (= e!2479932 e!2479936)))

(declare-fun b!3999810 () Bool)

(declare-fun res!1624914 () Bool)

(assert (=> b!3999810 (=> (not res!1624914) (not e!2479934))))

(assert (=> b!3999810 (= res!1624914 (not call!285975))))

(assert (= (and d!1183424 c!691905) b!3999798))

(assert (= (and d!1183424 (not c!691905)) b!3999800))

(assert (= (and d!1183424 c!691904) b!3999803))

(assert (= (and d!1183424 (not c!691904)) b!3999806))

(assert (= (and b!3999806 c!691906) b!3999801))

(assert (= (and b!3999806 (not c!691906)) b!3999809))

(assert (= (and b!3999809 (not res!1624907)) b!3999804))

(assert (= (and b!3999804 res!1624908) b!3999810))

(assert (= (and b!3999810 res!1624914) b!3999808))

(assert (= (and b!3999808 res!1624911) b!3999805))

(assert (= (and b!3999804 (not res!1624909)) b!3999807))

(assert (= (and b!3999807 res!1624913) b!3999802))

(assert (= (and b!3999802 (not res!1624910)) b!3999797))

(assert (= (and b!3999797 (not res!1624912)) b!3999799))

(assert (= (or b!3999803 b!3999802 b!3999810) bm!285970))

(assert (=> b!3999797 m!4581165))

(assert (=> b!3999797 m!4581165))

(declare-fun m!4581901 () Bool)

(assert (=> b!3999797 m!4581901))

(assert (=> b!3999800 m!4581161))

(assert (=> b!3999800 m!4581161))

(declare-fun m!4581903 () Bool)

(assert (=> b!3999800 m!4581903))

(assert (=> b!3999800 m!4581165))

(assert (=> b!3999800 m!4581903))

(assert (=> b!3999800 m!4581165))

(declare-fun m!4581905 () Bool)

(assert (=> b!3999800 m!4581905))

(declare-fun m!4581907 () Bool)

(assert (=> b!3999798 m!4581907))

(assert (=> b!3999805 m!4581161))

(declare-fun m!4581909 () Bool)

(assert (=> d!1183424 m!4581909))

(declare-fun m!4581911 () Bool)

(assert (=> d!1183424 m!4581911))

(assert (=> b!3999808 m!4581165))

(assert (=> b!3999808 m!4581165))

(assert (=> b!3999808 m!4581901))

(assert (=> bm!285970 m!4581909))

(assert (=> b!3999799 m!4581161))

(assert (=> b!3999117 d!1183424))

(declare-fun b!3999811 () Bool)

(declare-fun e!2479937 () Bool)

(declare-fun e!2479939 () Bool)

(assert (=> b!3999811 (= e!2479937 e!2479939)))

(declare-fun res!1624917 () Bool)

(assert (=> b!3999811 (=> (not res!1624917) (not e!2479939))))

(assert (=> b!3999811 (= res!1624917 (not ((_ is Nil!42772) lt!1413527)))))

(declare-fun b!3999814 () Bool)

(declare-fun e!2479938 () Bool)

(assert (=> b!3999814 (= e!2479938 (>= (size!31986 lt!1413527) (size!31986 lt!1413480)))))

(declare-fun b!3999812 () Bool)

(declare-fun res!1624918 () Bool)

(assert (=> b!3999812 (=> (not res!1624918) (not e!2479939))))

(assert (=> b!3999812 (= res!1624918 (= (head!8503 lt!1413480) (head!8503 lt!1413527)))))

(declare-fun d!1183426 () Bool)

(assert (=> d!1183426 e!2479938))

(declare-fun res!1624915 () Bool)

(assert (=> d!1183426 (=> res!1624915 e!2479938)))

(declare-fun lt!1413795 () Bool)

(assert (=> d!1183426 (= res!1624915 (not lt!1413795))))

(assert (=> d!1183426 (= lt!1413795 e!2479937)))

(declare-fun res!1624916 () Bool)

(assert (=> d!1183426 (=> res!1624916 e!2479937)))

(assert (=> d!1183426 (= res!1624916 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183426 (= (isPrefix!3869 lt!1413480 lt!1413527) lt!1413795)))

(declare-fun b!3999813 () Bool)

(assert (=> b!3999813 (= e!2479939 (isPrefix!3869 (tail!6235 lt!1413480) (tail!6235 lt!1413527)))))

(assert (= (and d!1183426 (not res!1624916)) b!3999811))

(assert (= (and b!3999811 res!1624917) b!3999812))

(assert (= (and b!3999812 res!1624918) b!3999813))

(assert (= (and d!1183426 (not res!1624915)) b!3999814))

(declare-fun m!4581913 () Bool)

(assert (=> b!3999814 m!4581913))

(assert (=> b!3999814 m!4580927))

(assert (=> b!3999812 m!4581421))

(declare-fun m!4581915 () Bool)

(assert (=> b!3999812 m!4581915))

(assert (=> b!3999813 m!4581425))

(declare-fun m!4581917 () Bool)

(assert (=> b!3999813 m!4581917))

(assert (=> b!3999813 m!4581425))

(assert (=> b!3999813 m!4581917))

(declare-fun m!4581919 () Bool)

(assert (=> b!3999813 m!4581919))

(assert (=> b!3999095 d!1183426))

(declare-fun b!3999815 () Bool)

(declare-fun e!2479940 () Bool)

(declare-fun e!2479942 () Bool)

(assert (=> b!3999815 (= e!2479940 e!2479942)))

(declare-fun res!1624921 () Bool)

(assert (=> b!3999815 (=> (not res!1624921) (not e!2479942))))

(assert (=> b!3999815 (= res!1624921 (not ((_ is Nil!42772) lt!1413522)))))

(declare-fun b!3999818 () Bool)

(declare-fun e!2479941 () Bool)

(assert (=> b!3999818 (= e!2479941 (>= (size!31986 lt!1413522) (size!31986 lt!1413480)))))

(declare-fun b!3999816 () Bool)

(declare-fun res!1624922 () Bool)

(assert (=> b!3999816 (=> (not res!1624922) (not e!2479942))))

(assert (=> b!3999816 (= res!1624922 (= (head!8503 lt!1413480) (head!8503 lt!1413522)))))

(declare-fun d!1183428 () Bool)

(assert (=> d!1183428 e!2479941))

(declare-fun res!1624919 () Bool)

(assert (=> d!1183428 (=> res!1624919 e!2479941)))

(declare-fun lt!1413796 () Bool)

(assert (=> d!1183428 (= res!1624919 (not lt!1413796))))

(assert (=> d!1183428 (= lt!1413796 e!2479940)))

(declare-fun res!1624920 () Bool)

(assert (=> d!1183428 (=> res!1624920 e!2479940)))

(assert (=> d!1183428 (= res!1624920 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183428 (= (isPrefix!3869 lt!1413480 lt!1413522) lt!1413796)))

(declare-fun b!3999817 () Bool)

(assert (=> b!3999817 (= e!2479942 (isPrefix!3869 (tail!6235 lt!1413480) (tail!6235 lt!1413522)))))

(assert (= (and d!1183428 (not res!1624920)) b!3999815))

(assert (= (and b!3999815 res!1624921) b!3999816))

(assert (= (and b!3999816 res!1624922) b!3999817))

(assert (= (and d!1183428 (not res!1624919)) b!3999818))

(assert (=> b!3999818 m!4581731))

(assert (=> b!3999818 m!4580927))

(assert (=> b!3999816 m!4581421))

(declare-fun m!4581921 () Bool)

(assert (=> b!3999816 m!4581921))

(assert (=> b!3999817 m!4581425))

(declare-fun m!4581923 () Bool)

(assert (=> b!3999817 m!4581923))

(assert (=> b!3999817 m!4581425))

(assert (=> b!3999817 m!4581923))

(declare-fun m!4581925 () Bool)

(assert (=> b!3999817 m!4581925))

(assert (=> b!3999095 d!1183428))

(declare-fun d!1183430 () Bool)

(assert (=> d!1183430 (isPrefix!3869 lt!1413480 (++!11184 lt!1413480 suffixResult!105))))

(declare-fun lt!1413797 () Unit!61732)

(assert (=> d!1183430 (= lt!1413797 (choose!24128 lt!1413480 suffixResult!105))))

(assert (=> d!1183430 (= (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413480 suffixResult!105) lt!1413797)))

(declare-fun bs!588814 () Bool)

(assert (= bs!588814 d!1183430))

(assert (=> bs!588814 m!4580903))

(assert (=> bs!588814 m!4580903))

(declare-fun m!4581927 () Bool)

(assert (=> bs!588814 m!4581927))

(declare-fun m!4581929 () Bool)

(assert (=> bs!588814 m!4581929))

(assert (=> b!3999095 d!1183430))

(declare-fun d!1183432 () Bool)

(assert (=> d!1183432 (isPrefix!3869 prefix!494 (++!11184 prefix!494 suffix!1299))))

(declare-fun lt!1413798 () Unit!61732)

(assert (=> d!1183432 (= lt!1413798 (choose!24128 prefix!494 suffix!1299))))

(assert (=> d!1183432 (= (lemmaConcatTwoListThenFirstIsPrefix!2712 prefix!494 suffix!1299) lt!1413798)))

(declare-fun bs!588815 () Bool)

(assert (= bs!588815 d!1183432))

(assert (=> bs!588815 m!4580901))

(assert (=> bs!588815 m!4580901))

(declare-fun m!4581931 () Bool)

(assert (=> bs!588815 m!4581931))

(declare-fun m!4581933 () Bool)

(assert (=> bs!588815 m!4581933))

(assert (=> b!3999095 d!1183432))

(declare-fun b!3999819 () Bool)

(declare-fun e!2479943 () Bool)

(declare-fun e!2479945 () Bool)

(assert (=> b!3999819 (= e!2479943 e!2479945)))

(declare-fun res!1624925 () Bool)

(assert (=> b!3999819 (=> (not res!1624925) (not e!2479945))))

(assert (=> b!3999819 (= res!1624925 (not ((_ is Nil!42772) lt!1413522)))))

(declare-fun b!3999822 () Bool)

(declare-fun e!2479944 () Bool)

(assert (=> b!3999822 (= e!2479944 (>= (size!31986 lt!1413522) (size!31986 prefix!494)))))

(declare-fun b!3999820 () Bool)

(declare-fun res!1624926 () Bool)

(assert (=> b!3999820 (=> (not res!1624926) (not e!2479945))))

(assert (=> b!3999820 (= res!1624926 (= (head!8503 prefix!494) (head!8503 lt!1413522)))))

(declare-fun d!1183434 () Bool)

(assert (=> d!1183434 e!2479944))

(declare-fun res!1624923 () Bool)

(assert (=> d!1183434 (=> res!1624923 e!2479944)))

(declare-fun lt!1413799 () Bool)

(assert (=> d!1183434 (= res!1624923 (not lt!1413799))))

(assert (=> d!1183434 (= lt!1413799 e!2479943)))

(declare-fun res!1624924 () Bool)

(assert (=> d!1183434 (=> res!1624924 e!2479943)))

(assert (=> d!1183434 (= res!1624924 ((_ is Nil!42772) prefix!494))))

(assert (=> d!1183434 (= (isPrefix!3869 prefix!494 lt!1413522) lt!1413799)))

(declare-fun b!3999821 () Bool)

(assert (=> b!3999821 (= e!2479945 (isPrefix!3869 (tail!6235 prefix!494) (tail!6235 lt!1413522)))))

(assert (= (and d!1183434 (not res!1624924)) b!3999819))

(assert (= (and b!3999819 res!1624925) b!3999820))

(assert (= (and b!3999820 res!1624926) b!3999821))

(assert (= (and d!1183434 (not res!1624923)) b!3999822))

(assert (=> b!3999822 m!4581731))

(assert (=> b!3999822 m!4580929))

(declare-fun m!4581935 () Bool)

(assert (=> b!3999820 m!4581935))

(assert (=> b!3999820 m!4581921))

(declare-fun m!4581937 () Bool)

(assert (=> b!3999821 m!4581937))

(assert (=> b!3999821 m!4581923))

(assert (=> b!3999821 m!4581937))

(assert (=> b!3999821 m!4581923))

(declare-fun m!4581939 () Bool)

(assert (=> b!3999821 m!4581939))

(assert (=> b!3999095 d!1183434))

(declare-fun d!1183436 () Bool)

(assert (=> d!1183436 (= (inv!57121 (tag!7642 (h!48194 rules!2999))) (= (mod (str.len (value!213920 (tag!7642 (h!48194 rules!2999)))) 2) 0))))

(assert (=> b!3999089 d!1183436))

(declare-fun d!1183438 () Bool)

(declare-fun res!1624927 () Bool)

(declare-fun e!2479946 () Bool)

(assert (=> d!1183438 (=> (not res!1624927) (not e!2479946))))

(assert (=> d!1183438 (= res!1624927 (semiInverseModEq!2909 (toChars!9129 (transformation!6782 (h!48194 rules!2999))) (toValue!9270 (transformation!6782 (h!48194 rules!2999)))))))

(assert (=> d!1183438 (= (inv!57124 (transformation!6782 (h!48194 rules!2999))) e!2479946)))

(declare-fun b!3999823 () Bool)

(assert (=> b!3999823 (= e!2479946 (equivClasses!2808 (toChars!9129 (transformation!6782 (h!48194 rules!2999))) (toValue!9270 (transformation!6782 (h!48194 rules!2999)))))))

(assert (= (and d!1183438 res!1624927) b!3999823))

(declare-fun m!4581941 () Bool)

(assert (=> d!1183438 m!4581941))

(declare-fun m!4581943 () Bool)

(assert (=> b!3999823 m!4581943))

(assert (=> b!3999089 d!1183438))

(declare-fun b!3999826 () Bool)

(declare-fun res!1624928 () Bool)

(declare-fun e!2479948 () Bool)

(assert (=> b!3999826 (=> (not res!1624928) (not e!2479948))))

(declare-fun lt!1413800 () List!42896)

(assert (=> b!3999826 (= res!1624928 (= (size!31986 lt!1413800) (+ (size!31986 lt!1413480) (size!31986 lt!1413490))))))

(declare-fun b!3999825 () Bool)

(declare-fun e!2479947 () List!42896)

(assert (=> b!3999825 (= e!2479947 (Cons!42772 (h!48192 lt!1413480) (++!11184 (t!332127 lt!1413480) lt!1413490)))))

(declare-fun d!1183440 () Bool)

(assert (=> d!1183440 e!2479948))

(declare-fun res!1624929 () Bool)

(assert (=> d!1183440 (=> (not res!1624929) (not e!2479948))))

(assert (=> d!1183440 (= res!1624929 (= (content!6489 lt!1413800) ((_ map or) (content!6489 lt!1413480) (content!6489 lt!1413490))))))

(assert (=> d!1183440 (= lt!1413800 e!2479947)))

(declare-fun c!691907 () Bool)

(assert (=> d!1183440 (= c!691907 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183440 (= (++!11184 lt!1413480 lt!1413490) lt!1413800)))

(declare-fun b!3999824 () Bool)

(assert (=> b!3999824 (= e!2479947 lt!1413490)))

(declare-fun b!3999827 () Bool)

(assert (=> b!3999827 (= e!2479948 (or (not (= lt!1413490 Nil!42772)) (= lt!1413800 lt!1413480)))))

(assert (= (and d!1183440 c!691907) b!3999824))

(assert (= (and d!1183440 (not c!691907)) b!3999825))

(assert (= (and d!1183440 res!1624929) b!3999826))

(assert (= (and b!3999826 res!1624928) b!3999827))

(declare-fun m!4581945 () Bool)

(assert (=> b!3999826 m!4581945))

(assert (=> b!3999826 m!4580927))

(declare-fun m!4581947 () Bool)

(assert (=> b!3999826 m!4581947))

(declare-fun m!4581949 () Bool)

(assert (=> b!3999825 m!4581949))

(declare-fun m!4581951 () Bool)

(assert (=> d!1183440 m!4581951))

(assert (=> d!1183440 m!4581199))

(declare-fun m!4581953 () Bool)

(assert (=> d!1183440 m!4581953))

(assert (=> b!3999132 d!1183440))

(declare-fun d!1183442 () Bool)

(declare-fun lt!1413801 () List!42896)

(assert (=> d!1183442 (= (++!11184 lt!1413480 lt!1413801) lt!1413522)))

(declare-fun e!2479949 () List!42896)

(assert (=> d!1183442 (= lt!1413801 e!2479949)))

(declare-fun c!691908 () Bool)

(assert (=> d!1183442 (= c!691908 ((_ is Cons!42772) lt!1413480))))

(assert (=> d!1183442 (>= (size!31986 lt!1413522) (size!31986 lt!1413480))))

(assert (=> d!1183442 (= (getSuffix!2300 lt!1413522 lt!1413480) lt!1413801)))

(declare-fun b!3999828 () Bool)

(assert (=> b!3999828 (= e!2479949 (getSuffix!2300 (tail!6235 lt!1413522) (t!332127 lt!1413480)))))

(declare-fun b!3999829 () Bool)

(assert (=> b!3999829 (= e!2479949 lt!1413522)))

(assert (= (and d!1183442 c!691908) b!3999828))

(assert (= (and d!1183442 (not c!691908)) b!3999829))

(declare-fun m!4581955 () Bool)

(assert (=> d!1183442 m!4581955))

(assert (=> d!1183442 m!4581731))

(assert (=> d!1183442 m!4580927))

(assert (=> b!3999828 m!4581923))

(assert (=> b!3999828 m!4581923))

(declare-fun m!4581957 () Bool)

(assert (=> b!3999828 m!4581957))

(assert (=> b!3999132 d!1183442))

(declare-fun b!3999830 () Bool)

(declare-fun e!2479950 () Bool)

(declare-fun e!2479952 () Bool)

(assert (=> b!3999830 (= e!2479950 e!2479952)))

(declare-fun res!1624932 () Bool)

(assert (=> b!3999830 (=> (not res!1624932) (not e!2479952))))

(assert (=> b!3999830 (= res!1624932 (not ((_ is Nil!42772) lt!1413522)))))

(declare-fun b!3999833 () Bool)

(declare-fun e!2479951 () Bool)

(assert (=> b!3999833 (= e!2479951 (>= (size!31986 lt!1413522) (size!31986 lt!1413522)))))

(declare-fun b!3999831 () Bool)

(declare-fun res!1624933 () Bool)

(assert (=> b!3999831 (=> (not res!1624933) (not e!2479952))))

(assert (=> b!3999831 (= res!1624933 (= (head!8503 lt!1413522) (head!8503 lt!1413522)))))

(declare-fun d!1183444 () Bool)

(assert (=> d!1183444 e!2479951))

(declare-fun res!1624930 () Bool)

(assert (=> d!1183444 (=> res!1624930 e!2479951)))

(declare-fun lt!1413802 () Bool)

(assert (=> d!1183444 (= res!1624930 (not lt!1413802))))

(assert (=> d!1183444 (= lt!1413802 e!2479950)))

(declare-fun res!1624931 () Bool)

(assert (=> d!1183444 (=> res!1624931 e!2479950)))

(assert (=> d!1183444 (= res!1624931 ((_ is Nil!42772) lt!1413522))))

(assert (=> d!1183444 (= (isPrefix!3869 lt!1413522 lt!1413522) lt!1413802)))

(declare-fun b!3999832 () Bool)

(assert (=> b!3999832 (= e!2479952 (isPrefix!3869 (tail!6235 lt!1413522) (tail!6235 lt!1413522)))))

(assert (= (and d!1183444 (not res!1624931)) b!3999830))

(assert (= (and b!3999830 res!1624932) b!3999831))

(assert (= (and b!3999831 res!1624933) b!3999832))

(assert (= (and d!1183444 (not res!1624930)) b!3999833))

(assert (=> b!3999833 m!4581731))

(assert (=> b!3999833 m!4581731))

(assert (=> b!3999831 m!4581921))

(assert (=> b!3999831 m!4581921))

(assert (=> b!3999832 m!4581923))

(assert (=> b!3999832 m!4581923))

(assert (=> b!3999832 m!4581923))

(assert (=> b!3999832 m!4581923))

(declare-fun m!4581959 () Bool)

(assert (=> b!3999832 m!4581959))

(assert (=> b!3999132 d!1183444))

(declare-fun d!1183446 () Bool)

(assert (=> d!1183446 (isPrefix!3869 lt!1413522 lt!1413522)))

(declare-fun lt!1413805 () Unit!61732)

(declare-fun choose!24136 (List!42896 List!42896) Unit!61732)

(assert (=> d!1183446 (= lt!1413805 (choose!24136 lt!1413522 lt!1413522))))

(assert (=> d!1183446 (= (lemmaIsPrefixRefl!2461 lt!1413522 lt!1413522) lt!1413805)))

(declare-fun bs!588816 () Bool)

(assert (= bs!588816 d!1183446))

(assert (=> bs!588816 m!4580915))

(declare-fun m!4581961 () Bool)

(assert (=> bs!588816 m!4581961))

(assert (=> b!3999132 d!1183446))

(declare-fun b!3999834 () Bool)

(declare-fun e!2479953 () Bool)

(declare-fun lt!1413810 () Option!9196)

(assert (=> b!3999834 (= e!2479953 (contains!8511 rules!2999 (rule!9812 (_1!24113 (get!14069 lt!1413810)))))))

(declare-fun b!3999835 () Bool)

(declare-fun res!1624935 () Bool)

(assert (=> b!3999835 (=> (not res!1624935) (not e!2479953))))

(assert (=> b!3999835 (= res!1624935 (< (size!31986 (_2!24113 (get!14069 lt!1413810))) (size!31986 lt!1413522)))))

(declare-fun d!1183448 () Bool)

(declare-fun e!2479954 () Bool)

(assert (=> d!1183448 e!2479954))

(declare-fun res!1624937 () Bool)

(assert (=> d!1183448 (=> res!1624937 e!2479954)))

(assert (=> d!1183448 (= res!1624937 (isEmpty!25566 lt!1413810))))

(declare-fun e!2479955 () Option!9196)

(assert (=> d!1183448 (= lt!1413810 e!2479955)))

(declare-fun c!691909 () Bool)

(assert (=> d!1183448 (= c!691909 (and ((_ is Cons!42774) rules!2999) ((_ is Nil!42774) (t!332129 rules!2999))))))

(declare-fun lt!1413806 () Unit!61732)

(declare-fun lt!1413809 () Unit!61732)

(assert (=> d!1183448 (= lt!1413806 lt!1413809)))

(assert (=> d!1183448 (isPrefix!3869 lt!1413522 lt!1413522)))

(assert (=> d!1183448 (= lt!1413809 (lemmaIsPrefixRefl!2461 lt!1413522 lt!1413522))))

(assert (=> d!1183448 (rulesValidInductive!2471 thiss!21717 rules!2999)))

(assert (=> d!1183448 (= (maxPrefix!3669 thiss!21717 rules!2999 lt!1413522) lt!1413810)))

(declare-fun b!3999836 () Bool)

(declare-fun res!1624938 () Bool)

(assert (=> b!3999836 (=> (not res!1624938) (not e!2479953))))

(assert (=> b!3999836 (= res!1624938 (= (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413810)))) (originalCharacters!7382 (_1!24113 (get!14069 lt!1413810)))))))

(declare-fun bm!285971 () Bool)

(declare-fun call!285976 () Option!9196)

(assert (=> bm!285971 (= call!285976 (maxPrefixOneRule!2703 thiss!21717 (h!48194 rules!2999) lt!1413522))))

(declare-fun b!3999837 () Bool)

(declare-fun lt!1413808 () Option!9196)

(declare-fun lt!1413807 () Option!9196)

(assert (=> b!3999837 (= e!2479955 (ite (and ((_ is None!9195) lt!1413808) ((_ is None!9195) lt!1413807)) None!9195 (ite ((_ is None!9195) lt!1413807) lt!1413808 (ite ((_ is None!9195) lt!1413808) lt!1413807 (ite (>= (size!31985 (_1!24113 (v!39555 lt!1413808))) (size!31985 (_1!24113 (v!39555 lt!1413807)))) lt!1413808 lt!1413807)))))))

(assert (=> b!3999837 (= lt!1413808 call!285976)))

(assert (=> b!3999837 (= lt!1413807 (maxPrefix!3669 thiss!21717 (t!332129 rules!2999) lt!1413522))))

(declare-fun b!3999838 () Bool)

(declare-fun res!1624939 () Bool)

(assert (=> b!3999838 (=> (not res!1624939) (not e!2479953))))

(assert (=> b!3999838 (= res!1624939 (= (value!213921 (_1!24113 (get!14069 lt!1413810))) (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (get!14069 lt!1413810)))) (seqFromList!5021 (originalCharacters!7382 (_1!24113 (get!14069 lt!1413810)))))))))

(declare-fun b!3999839 () Bool)

(declare-fun res!1624934 () Bool)

(assert (=> b!3999839 (=> (not res!1624934) (not e!2479953))))

(assert (=> b!3999839 (= res!1624934 (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (get!14069 lt!1413810)))) (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413810))))))))

(declare-fun b!3999840 () Bool)

(declare-fun res!1624940 () Bool)

(assert (=> b!3999840 (=> (not res!1624940) (not e!2479953))))

(assert (=> b!3999840 (= res!1624940 (= (++!11184 (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413810)))) (_2!24113 (get!14069 lt!1413810))) lt!1413522))))

(declare-fun b!3999841 () Bool)

(assert (=> b!3999841 (= e!2479954 e!2479953)))

(declare-fun res!1624936 () Bool)

(assert (=> b!3999841 (=> (not res!1624936) (not e!2479953))))

(assert (=> b!3999841 (= res!1624936 (isDefined!7054 lt!1413810))))

(declare-fun b!3999842 () Bool)

(assert (=> b!3999842 (= e!2479955 call!285976)))

(assert (= (and d!1183448 c!691909) b!3999842))

(assert (= (and d!1183448 (not c!691909)) b!3999837))

(assert (= (or b!3999842 b!3999837) bm!285971))

(assert (= (and d!1183448 (not res!1624937)) b!3999841))

(assert (= (and b!3999841 res!1624936) b!3999836))

(assert (= (and b!3999836 res!1624938) b!3999835))

(assert (= (and b!3999835 res!1624935) b!3999840))

(assert (= (and b!3999840 res!1624940) b!3999838))

(assert (= (and b!3999838 res!1624939) b!3999839))

(assert (= (and b!3999839 res!1624934) b!3999834))

(declare-fun m!4581963 () Bool)

(assert (=> b!3999838 m!4581963))

(declare-fun m!4581965 () Bool)

(assert (=> b!3999838 m!4581965))

(assert (=> b!3999838 m!4581965))

(declare-fun m!4581967 () Bool)

(assert (=> b!3999838 m!4581967))

(assert (=> b!3999835 m!4581963))

(declare-fun m!4581969 () Bool)

(assert (=> b!3999835 m!4581969))

(assert (=> b!3999835 m!4581731))

(assert (=> b!3999836 m!4581963))

(declare-fun m!4581971 () Bool)

(assert (=> b!3999836 m!4581971))

(assert (=> b!3999836 m!4581971))

(declare-fun m!4581973 () Bool)

(assert (=> b!3999836 m!4581973))

(assert (=> b!3999840 m!4581963))

(assert (=> b!3999840 m!4581971))

(assert (=> b!3999840 m!4581971))

(assert (=> b!3999840 m!4581973))

(assert (=> b!3999840 m!4581973))

(declare-fun m!4581975 () Bool)

(assert (=> b!3999840 m!4581975))

(declare-fun m!4581977 () Bool)

(assert (=> b!3999841 m!4581977))

(assert (=> b!3999839 m!4581963))

(assert (=> b!3999839 m!4581971))

(assert (=> b!3999839 m!4581971))

(assert (=> b!3999839 m!4581973))

(assert (=> b!3999839 m!4581973))

(declare-fun m!4581979 () Bool)

(assert (=> b!3999839 m!4581979))

(declare-fun m!4581981 () Bool)

(assert (=> bm!285971 m!4581981))

(declare-fun m!4581983 () Bool)

(assert (=> b!3999837 m!4581983))

(assert (=> b!3999834 m!4581963))

(declare-fun m!4581985 () Bool)

(assert (=> b!3999834 m!4581985))

(declare-fun m!4581987 () Bool)

(assert (=> d!1183448 m!4581987))

(assert (=> d!1183448 m!4580915))

(assert (=> d!1183448 m!4580917))

(assert (=> d!1183448 m!4580959))

(assert (=> b!3999131 d!1183448))

(declare-fun b!3999845 () Bool)

(declare-fun res!1624941 () Bool)

(declare-fun e!2479957 () Bool)

(assert (=> b!3999845 (=> (not res!1624941) (not e!2479957))))

(declare-fun lt!1413811 () List!42896)

(assert (=> b!3999845 (= res!1624941 (= (size!31986 lt!1413811) (+ (size!31986 prefix!494) (size!31986 suffix!1299))))))

(declare-fun b!3999844 () Bool)

(declare-fun e!2479956 () List!42896)

(assert (=> b!3999844 (= e!2479956 (Cons!42772 (h!48192 prefix!494) (++!11184 (t!332127 prefix!494) suffix!1299)))))

(declare-fun d!1183450 () Bool)

(assert (=> d!1183450 e!2479957))

(declare-fun res!1624942 () Bool)

(assert (=> d!1183450 (=> (not res!1624942) (not e!2479957))))

(assert (=> d!1183450 (= res!1624942 (= (content!6489 lt!1413811) ((_ map or) (content!6489 prefix!494) (content!6489 suffix!1299))))))

(assert (=> d!1183450 (= lt!1413811 e!2479956)))

(declare-fun c!691910 () Bool)

(assert (=> d!1183450 (= c!691910 ((_ is Nil!42772) prefix!494))))

(assert (=> d!1183450 (= (++!11184 prefix!494 suffix!1299) lt!1413811)))

(declare-fun b!3999843 () Bool)

(assert (=> b!3999843 (= e!2479956 suffix!1299)))

(declare-fun b!3999846 () Bool)

(assert (=> b!3999846 (= e!2479957 (or (not (= suffix!1299 Nil!42772)) (= lt!1413811 prefix!494)))))

(assert (= (and d!1183450 c!691910) b!3999843))

(assert (= (and d!1183450 (not c!691910)) b!3999844))

(assert (= (and d!1183450 res!1624942) b!3999845))

(assert (= (and b!3999845 res!1624941) b!3999846))

(declare-fun m!4581989 () Bool)

(assert (=> b!3999845 m!4581989))

(assert (=> b!3999845 m!4580929))

(assert (=> b!3999845 m!4580923))

(declare-fun m!4581991 () Bool)

(assert (=> b!3999844 m!4581991))

(declare-fun m!4581993 () Bool)

(assert (=> d!1183450 m!4581993))

(assert (=> d!1183450 m!4581789))

(assert (=> d!1183450 m!4581213))

(assert (=> b!3999131 d!1183450))

(declare-fun b!3999847 () Bool)

(declare-fun res!1624948 () Bool)

(declare-fun e!2479961 () Bool)

(assert (=> b!3999847 (=> res!1624948 e!2479961)))

(assert (=> b!3999847 (= res!1624948 (not (isEmpty!25564 (tail!6235 lt!1413480))))))

(declare-fun b!3999848 () Bool)

(declare-fun e!2479958 () Bool)

(assert (=> b!3999848 (= e!2479958 (nullable!4102 (regex!6782 (rule!9812 token!484))))))

(declare-fun b!3999849 () Bool)

(assert (=> b!3999849 (= e!2479961 (not (= (head!8503 lt!1413480) (c!691785 (regex!6782 (rule!9812 token!484))))))))

(declare-fun b!3999850 () Bool)

(assert (=> b!3999850 (= e!2479958 (matchR!5664 (derivativeStep!3513 (regex!6782 (rule!9812 token!484)) (head!8503 lt!1413480)) (tail!6235 lt!1413480)))))

(declare-fun b!3999851 () Bool)

(declare-fun e!2479960 () Bool)

(declare-fun lt!1413812 () Bool)

(assert (=> b!3999851 (= e!2479960 (not lt!1413812))))

(declare-fun b!3999852 () Bool)

(declare-fun e!2479963 () Bool)

(assert (=> b!3999852 (= e!2479963 e!2479961)))

(declare-fun res!1624946 () Bool)

(assert (=> b!3999852 (=> res!1624946 e!2479961)))

(declare-fun call!285977 () Bool)

(assert (=> b!3999852 (= res!1624946 call!285977)))

(declare-fun b!3999853 () Bool)

(declare-fun e!2479959 () Bool)

(assert (=> b!3999853 (= e!2479959 (= lt!1413812 call!285977))))

(declare-fun b!3999854 () Bool)

(declare-fun res!1624945 () Bool)

(declare-fun e!2479964 () Bool)

(assert (=> b!3999854 (=> res!1624945 e!2479964)))

(declare-fun e!2479962 () Bool)

(assert (=> b!3999854 (= res!1624945 e!2479962)))

(declare-fun res!1624944 () Bool)

(assert (=> b!3999854 (=> (not res!1624944) (not e!2479962))))

(assert (=> b!3999854 (= res!1624944 lt!1413812)))

(declare-fun b!3999855 () Bool)

(assert (=> b!3999855 (= e!2479962 (= (head!8503 lt!1413480) (c!691785 (regex!6782 (rule!9812 token!484)))))))

(declare-fun b!3999856 () Bool)

(assert (=> b!3999856 (= e!2479959 e!2479960)))

(declare-fun c!691913 () Bool)

(assert (=> b!3999856 (= c!691913 ((_ is EmptyLang!11687) (regex!6782 (rule!9812 token!484))))))

(declare-fun bm!285972 () Bool)

(assert (=> bm!285972 (= call!285977 (isEmpty!25564 lt!1413480))))

(declare-fun b!3999857 () Bool)

(assert (=> b!3999857 (= e!2479964 e!2479963)))

(declare-fun res!1624949 () Bool)

(assert (=> b!3999857 (=> (not res!1624949) (not e!2479963))))

(assert (=> b!3999857 (= res!1624949 (not lt!1413812))))

(declare-fun d!1183452 () Bool)

(assert (=> d!1183452 e!2479959))

(declare-fun c!691911 () Bool)

(assert (=> d!1183452 (= c!691911 ((_ is EmptyExpr!11687) (regex!6782 (rule!9812 token!484))))))

(assert (=> d!1183452 (= lt!1413812 e!2479958)))

(declare-fun c!691912 () Bool)

(assert (=> d!1183452 (= c!691912 (isEmpty!25564 lt!1413480))))

(assert (=> d!1183452 (validRegex!5302 (regex!6782 (rule!9812 token!484)))))

(assert (=> d!1183452 (= (matchR!5664 (regex!6782 (rule!9812 token!484)) lt!1413480) lt!1413812)))

(declare-fun b!3999858 () Bool)

(declare-fun res!1624947 () Bool)

(assert (=> b!3999858 (=> (not res!1624947) (not e!2479962))))

(assert (=> b!3999858 (= res!1624947 (isEmpty!25564 (tail!6235 lt!1413480)))))

(declare-fun b!3999859 () Bool)

(declare-fun res!1624943 () Bool)

(assert (=> b!3999859 (=> res!1624943 e!2479964)))

(assert (=> b!3999859 (= res!1624943 (not ((_ is ElementMatch!11687) (regex!6782 (rule!9812 token!484)))))))

(assert (=> b!3999859 (= e!2479960 e!2479964)))

(declare-fun b!3999860 () Bool)

(declare-fun res!1624950 () Bool)

(assert (=> b!3999860 (=> (not res!1624950) (not e!2479962))))

(assert (=> b!3999860 (= res!1624950 (not call!285977))))

(assert (= (and d!1183452 c!691912) b!3999848))

(assert (= (and d!1183452 (not c!691912)) b!3999850))

(assert (= (and d!1183452 c!691911) b!3999853))

(assert (= (and d!1183452 (not c!691911)) b!3999856))

(assert (= (and b!3999856 c!691913) b!3999851))

(assert (= (and b!3999856 (not c!691913)) b!3999859))

(assert (= (and b!3999859 (not res!1624943)) b!3999854))

(assert (= (and b!3999854 res!1624944) b!3999860))

(assert (= (and b!3999860 res!1624950) b!3999858))

(assert (= (and b!3999858 res!1624947) b!3999855))

(assert (= (and b!3999854 (not res!1624945)) b!3999857))

(assert (= (and b!3999857 res!1624949) b!3999852))

(assert (= (and b!3999852 (not res!1624946)) b!3999847))

(assert (= (and b!3999847 (not res!1624948)) b!3999849))

(assert (= (or b!3999853 b!3999852 b!3999860) bm!285972))

(assert (=> b!3999847 m!4581425))

(assert (=> b!3999847 m!4581425))

(assert (=> b!3999847 m!4581817))

(assert (=> b!3999850 m!4581421))

(assert (=> b!3999850 m!4581421))

(declare-fun m!4581995 () Bool)

(assert (=> b!3999850 m!4581995))

(assert (=> b!3999850 m!4581425))

(assert (=> b!3999850 m!4581995))

(assert (=> b!3999850 m!4581425))

(declare-fun m!4581997 () Bool)

(assert (=> b!3999850 m!4581997))

(assert (=> b!3999848 m!4581907))

(assert (=> b!3999855 m!4581421))

(assert (=> d!1183452 m!4581825))

(assert (=> d!1183452 m!4581911))

(assert (=> b!3999858 m!4581425))

(assert (=> b!3999858 m!4581425))

(assert (=> b!3999858 m!4581817))

(assert (=> bm!285972 m!4581825))

(assert (=> b!3999849 m!4581421))

(assert (=> b!3999109 d!1183452))

(declare-fun b!3999861 () Bool)

(declare-fun e!2479965 () Bool)

(declare-fun e!2479967 () Bool)

(assert (=> b!3999861 (= e!2479965 e!2479967)))

(declare-fun res!1624953 () Bool)

(assert (=> b!3999861 (=> (not res!1624953) (not e!2479967))))

(assert (=> b!3999861 (= res!1624953 (not ((_ is Nil!42772) lt!1413497)))))

(declare-fun b!3999864 () Bool)

(declare-fun e!2479966 () Bool)

(assert (=> b!3999864 (= e!2479966 (>= (size!31986 lt!1413497) (size!31986 lt!1413480)))))

(declare-fun b!3999862 () Bool)

(declare-fun res!1624954 () Bool)

(assert (=> b!3999862 (=> (not res!1624954) (not e!2479967))))

(assert (=> b!3999862 (= res!1624954 (= (head!8503 lt!1413480) (head!8503 lt!1413497)))))

(declare-fun d!1183454 () Bool)

(assert (=> d!1183454 e!2479966))

(declare-fun res!1624951 () Bool)

(assert (=> d!1183454 (=> res!1624951 e!2479966)))

(declare-fun lt!1413813 () Bool)

(assert (=> d!1183454 (= res!1624951 (not lt!1413813))))

(assert (=> d!1183454 (= lt!1413813 e!2479965)))

(declare-fun res!1624952 () Bool)

(assert (=> d!1183454 (=> res!1624952 e!2479965)))

(assert (=> d!1183454 (= res!1624952 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183454 (= (isPrefix!3869 lt!1413480 lt!1413497) lt!1413813)))

(declare-fun b!3999863 () Bool)

(assert (=> b!3999863 (= e!2479967 (isPrefix!3869 (tail!6235 lt!1413480) (tail!6235 lt!1413497)))))

(assert (= (and d!1183454 (not res!1624952)) b!3999861))

(assert (= (and b!3999861 res!1624953) b!3999862))

(assert (= (and b!3999862 res!1624954) b!3999863))

(assert (= (and d!1183454 (not res!1624951)) b!3999864))

(assert (=> b!3999864 m!4581159))

(assert (=> b!3999864 m!4580927))

(assert (=> b!3999862 m!4581421))

(assert (=> b!3999862 m!4581163))

(assert (=> b!3999863 m!4581425))

(assert (=> b!3999863 m!4581167))

(assert (=> b!3999863 m!4581425))

(assert (=> b!3999863 m!4581167))

(declare-fun m!4581999 () Bool)

(assert (=> b!3999863 m!4581999))

(assert (=> b!3999109 d!1183454))

(declare-fun d!1183456 () Bool)

(assert (=> d!1183456 (isPrefix!3869 lt!1413480 (++!11184 prefix!494 newSuffix!27))))

(declare-fun lt!1413816 () Unit!61732)

(declare-fun choose!24138 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> d!1183456 (= lt!1413816 (choose!24138 lt!1413480 prefix!494 newSuffix!27))))

(assert (=> d!1183456 (isPrefix!3869 lt!1413480 prefix!494)))

(assert (=> d!1183456 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!702 lt!1413480 prefix!494 newSuffix!27) lt!1413816)))

(declare-fun bs!588817 () Bool)

(assert (= bs!588817 d!1183456))

(assert (=> bs!588817 m!4580877))

(assert (=> bs!588817 m!4580877))

(declare-fun m!4582001 () Bool)

(assert (=> bs!588817 m!4582001))

(declare-fun m!4582003 () Bool)

(assert (=> bs!588817 m!4582003))

(assert (=> bs!588817 m!4580873))

(assert (=> b!3999109 d!1183456))

(declare-fun d!1183458 () Bool)

(assert (=> d!1183458 (isPrefix!3869 lt!1413480 (++!11184 prefix!494 suffix!1299))))

(declare-fun lt!1413817 () Unit!61732)

(assert (=> d!1183458 (= lt!1413817 (choose!24138 lt!1413480 prefix!494 suffix!1299))))

(assert (=> d!1183458 (isPrefix!3869 lt!1413480 prefix!494)))

(assert (=> d!1183458 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!702 lt!1413480 prefix!494 suffix!1299) lt!1413817)))

(declare-fun bs!588818 () Bool)

(assert (= bs!588818 d!1183458))

(assert (=> bs!588818 m!4580901))

(assert (=> bs!588818 m!4580901))

(declare-fun m!4582005 () Bool)

(assert (=> bs!588818 m!4582005))

(declare-fun m!4582007 () Bool)

(assert (=> bs!588818 m!4582007))

(assert (=> bs!588818 m!4580873))

(assert (=> b!3999109 d!1183458))

(declare-fun d!1183460 () Bool)

(declare-fun lt!1413818 () Int)

(assert (=> d!1183460 (>= lt!1413818 0)))

(declare-fun e!2479968 () Int)

(assert (=> d!1183460 (= lt!1413818 e!2479968)))

(declare-fun c!691914 () Bool)

(assert (=> d!1183460 (= c!691914 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183460 (= (size!31986 lt!1413480) lt!1413818)))

(declare-fun b!3999865 () Bool)

(assert (=> b!3999865 (= e!2479968 0)))

(declare-fun b!3999866 () Bool)

(assert (=> b!3999866 (= e!2479968 (+ 1 (size!31986 (t!332127 lt!1413480))))))

(assert (= (and d!1183460 c!691914) b!3999865))

(assert (= (and d!1183460 (not c!691914)) b!3999866))

(declare-fun m!4582009 () Bool)

(assert (=> b!3999866 m!4582009))

(assert (=> b!3999088 d!1183460))

(declare-fun d!1183462 () Bool)

(declare-fun lt!1413819 () Int)

(assert (=> d!1183462 (>= lt!1413819 0)))

(declare-fun e!2479969 () Int)

(assert (=> d!1183462 (= lt!1413819 e!2479969)))

(declare-fun c!691915 () Bool)

(assert (=> d!1183462 (= c!691915 ((_ is Nil!42772) prefix!494))))

(assert (=> d!1183462 (= (size!31986 prefix!494) lt!1413819)))

(declare-fun b!3999867 () Bool)

(assert (=> b!3999867 (= e!2479969 0)))

(declare-fun b!3999868 () Bool)

(assert (=> b!3999868 (= e!2479969 (+ 1 (size!31986 (t!332127 prefix!494))))))

(assert (= (and d!1183462 c!691915) b!3999867))

(assert (= (and d!1183462 (not c!691915)) b!3999868))

(declare-fun m!4582011 () Bool)

(assert (=> b!3999868 m!4582011))

(assert (=> b!3999088 d!1183462))

(declare-fun d!1183464 () Bool)

(declare-fun list!15886 (Conc!12993) List!42896)

(assert (=> d!1183464 (= (list!15884 (charsOf!4598 token!484)) (list!15886 (c!691784 (charsOf!4598 token!484))))))

(declare-fun bs!588819 () Bool)

(assert (= bs!588819 d!1183464))

(declare-fun m!4582013 () Bool)

(assert (=> bs!588819 m!4582013))

(assert (=> b!3999088 d!1183464))

(declare-fun d!1183466 () Bool)

(declare-fun lt!1413822 () BalanceConc!25580)

(assert (=> d!1183466 (= (list!15884 lt!1413822) (originalCharacters!7382 token!484))))

(assert (=> d!1183466 (= lt!1413822 (dynLambda!18153 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (value!213921 token!484)))))

(assert (=> d!1183466 (= (charsOf!4598 token!484) lt!1413822)))

(declare-fun b_lambda!116707 () Bool)

(assert (=> (not b_lambda!116707) (not d!1183466)))

(assert (=> d!1183466 t!332131))

(declare-fun b_and!307127 () Bool)

(assert (= b_and!307095 (and (=> t!332131 result!291454) b_and!307127)))

(assert (=> d!1183466 t!332133))

(declare-fun b_and!307129 () Bool)

(assert (= b_and!307097 (and (=> t!332133 result!291458) b_and!307129)))

(declare-fun m!4582015 () Bool)

(assert (=> d!1183466 m!4582015))

(assert (=> d!1183466 m!4580999))

(assert (=> b!3999088 d!1183466))

(declare-fun d!1183468 () Bool)

(assert (=> d!1183468 (= (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (seqFromList!5021 lt!1413539)) (dynLambda!18156 (toValue!9270 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) (seqFromList!5021 lt!1413539)))))

(declare-fun b_lambda!116709 () Bool)

(assert (=> (not b_lambda!116709) (not d!1183468)))

(declare-fun tb!240525 () Bool)

(declare-fun t!332163 () Bool)

(assert (=> (and b!3999113 (= (toValue!9270 (transformation!6782 (rule!9812 token!484))) (toValue!9270 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))) t!332163) tb!240525))

(declare-fun result!291500 () Bool)

(assert (=> tb!240525 (= result!291500 (inv!21 (dynLambda!18156 (toValue!9270 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) (seqFromList!5021 lt!1413539))))))

(declare-fun m!4582017 () Bool)

(assert (=> tb!240525 m!4582017))

(assert (=> d!1183468 t!332163))

(declare-fun b_and!307131 () Bool)

(assert (= b_and!307119 (and (=> t!332163 result!291500) b_and!307131)))

(declare-fun tb!240527 () Bool)

(declare-fun t!332165 () Bool)

(assert (=> (and b!3999118 (= (toValue!9270 (transformation!6782 (h!48194 rules!2999))) (toValue!9270 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))) t!332165) tb!240527))

(declare-fun result!291502 () Bool)

(assert (= result!291502 result!291500))

(assert (=> d!1183468 t!332165))

(declare-fun b_and!307133 () Bool)

(assert (= b_and!307121 (and (=> t!332165 result!291502) b_and!307133)))

(assert (=> d!1183468 m!4580819))

(declare-fun m!4582019 () Bool)

(assert (=> d!1183468 m!4582019))

(assert (=> b!3999087 d!1183468))

(declare-fun d!1183470 () Bool)

(assert (=> d!1183470 (= (list!15884 (charsOf!4598 (_1!24113 (v!39555 lt!1413494)))) (list!15886 (c!691784 (charsOf!4598 (_1!24113 (v!39555 lt!1413494))))))))

(declare-fun bs!588820 () Bool)

(assert (= bs!588820 d!1183470))

(declare-fun m!4582021 () Bool)

(assert (=> bs!588820 m!4582021))

(assert (=> b!3999087 d!1183470))

(declare-fun d!1183472 () Bool)

(assert (=> d!1183472 (ruleValid!2714 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))

(declare-fun lt!1413825 () Unit!61732)

(declare-fun choose!24140 (LexerInterface!6371 Rule!13364 List!42898) Unit!61732)

(assert (=> d!1183472 (= lt!1413825 (choose!24140 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))) rules!2999))))

(assert (=> d!1183472 (contains!8511 rules!2999 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))

(assert (=> d!1183472 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1788 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))) rules!2999) lt!1413825)))

(declare-fun bs!588821 () Bool)

(assert (= bs!588821 d!1183472))

(assert (=> bs!588821 m!4580815))

(declare-fun m!4582023 () Bool)

(assert (=> bs!588821 m!4582023))

(assert (=> bs!588821 m!4581803))

(assert (=> b!3999087 d!1183472))

(declare-fun b!3999869 () Bool)

(declare-fun e!2479971 () Bool)

(declare-fun e!2479973 () Bool)

(assert (=> b!3999869 (= e!2479971 e!2479973)))

(declare-fun res!1624957 () Bool)

(assert (=> b!3999869 (=> (not res!1624957) (not e!2479973))))

(assert (=> b!3999869 (= res!1624957 (not ((_ is Nil!42772) (++!11184 lt!1413539 newSuffixResult!27))))))

(declare-fun b!3999872 () Bool)

(declare-fun e!2479972 () Bool)

(assert (=> b!3999872 (= e!2479972 (>= (size!31986 (++!11184 lt!1413539 newSuffixResult!27)) (size!31986 lt!1413539)))))

(declare-fun b!3999870 () Bool)

(declare-fun res!1624958 () Bool)

(assert (=> b!3999870 (=> (not res!1624958) (not e!2479973))))

(assert (=> b!3999870 (= res!1624958 (= (head!8503 lt!1413539) (head!8503 (++!11184 lt!1413539 newSuffixResult!27))))))

(declare-fun d!1183474 () Bool)

(assert (=> d!1183474 e!2479972))

(declare-fun res!1624955 () Bool)

(assert (=> d!1183474 (=> res!1624955 e!2479972)))

(declare-fun lt!1413826 () Bool)

(assert (=> d!1183474 (= res!1624955 (not lt!1413826))))

(assert (=> d!1183474 (= lt!1413826 e!2479971)))

(declare-fun res!1624956 () Bool)

(assert (=> d!1183474 (=> res!1624956 e!2479971)))

(assert (=> d!1183474 (= res!1624956 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183474 (= (isPrefix!3869 lt!1413539 (++!11184 lt!1413539 newSuffixResult!27)) lt!1413826)))

(declare-fun b!3999871 () Bool)

(assert (=> b!3999871 (= e!2479973 (isPrefix!3869 (tail!6235 lt!1413539) (tail!6235 (++!11184 lt!1413539 newSuffixResult!27))))))

(assert (= (and d!1183474 (not res!1624956)) b!3999869))

(assert (= (and b!3999869 res!1624957) b!3999870))

(assert (= (and b!3999870 res!1624958) b!3999871))

(assert (= (and d!1183474 (not res!1624955)) b!3999872))

(assert (=> b!3999872 m!4580809))

(declare-fun m!4582025 () Bool)

(assert (=> b!3999872 m!4582025))

(assert (=> b!3999872 m!4580827))

(assert (=> b!3999870 m!4581161))

(assert (=> b!3999870 m!4580809))

(declare-fun m!4582027 () Bool)

(assert (=> b!3999870 m!4582027))

(assert (=> b!3999871 m!4581165))

(assert (=> b!3999871 m!4580809))

(declare-fun m!4582029 () Bool)

(assert (=> b!3999871 m!4582029))

(assert (=> b!3999871 m!4581165))

(assert (=> b!3999871 m!4582029))

(declare-fun m!4582031 () Bool)

(assert (=> b!3999871 m!4582031))

(assert (=> b!3999087 d!1183474))

(declare-fun b!3999875 () Bool)

(declare-fun res!1624959 () Bool)

(declare-fun e!2479975 () Bool)

(assert (=> b!3999875 (=> (not res!1624959) (not e!2479975))))

(declare-fun lt!1413827 () List!42896)

(assert (=> b!3999875 (= res!1624959 (= (size!31986 lt!1413827) (+ (size!31986 lt!1413539) (size!31986 (_2!24113 (v!39555 lt!1413494))))))))

(declare-fun b!3999874 () Bool)

(declare-fun e!2479974 () List!42896)

(assert (=> b!3999874 (= e!2479974 (Cons!42772 (h!48192 lt!1413539) (++!11184 (t!332127 lt!1413539) (_2!24113 (v!39555 lt!1413494)))))))

(declare-fun d!1183476 () Bool)

(assert (=> d!1183476 e!2479975))

(declare-fun res!1624960 () Bool)

(assert (=> d!1183476 (=> (not res!1624960) (not e!2479975))))

(assert (=> d!1183476 (= res!1624960 (= (content!6489 lt!1413827) ((_ map or) (content!6489 lt!1413539) (content!6489 (_2!24113 (v!39555 lt!1413494))))))))

(assert (=> d!1183476 (= lt!1413827 e!2479974)))

(declare-fun c!691916 () Bool)

(assert (=> d!1183476 (= c!691916 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183476 (= (++!11184 lt!1413539 (_2!24113 (v!39555 lt!1413494))) lt!1413827)))

(declare-fun b!3999873 () Bool)

(assert (=> b!3999873 (= e!2479974 (_2!24113 (v!39555 lt!1413494)))))

(declare-fun b!3999876 () Bool)

(assert (=> b!3999876 (= e!2479975 (or (not (= (_2!24113 (v!39555 lt!1413494)) Nil!42772)) (= lt!1413827 lt!1413539)))))

(assert (= (and d!1183476 c!691916) b!3999873))

(assert (= (and d!1183476 (not c!691916)) b!3999874))

(assert (= (and d!1183476 res!1624960) b!3999875))

(assert (= (and b!3999875 res!1624959) b!3999876))

(declare-fun m!4582033 () Bool)

(assert (=> b!3999875 m!4582033))

(assert (=> b!3999875 m!4580827))

(declare-fun m!4582035 () Bool)

(assert (=> b!3999875 m!4582035))

(declare-fun m!4582037 () Bool)

(assert (=> b!3999874 m!4582037))

(declare-fun m!4582039 () Bool)

(assert (=> d!1183476 m!4582039))

(assert (=> d!1183476 m!4581891))

(declare-fun m!4582041 () Bool)

(assert (=> d!1183476 m!4582041))

(assert (=> b!3999087 d!1183476))

(declare-fun d!1183478 () Bool)

(assert (=> d!1183478 (isPrefix!3869 lt!1413539 (++!11184 lt!1413539 newSuffixResult!27))))

(declare-fun lt!1413828 () Unit!61732)

(assert (=> d!1183478 (= lt!1413828 (choose!24128 lt!1413539 newSuffixResult!27))))

(assert (=> d!1183478 (= (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413539 newSuffixResult!27) lt!1413828)))

(declare-fun bs!588822 () Bool)

(assert (= bs!588822 d!1183478))

(assert (=> bs!588822 m!4580809))

(assert (=> bs!588822 m!4580809))

(assert (=> bs!588822 m!4580811))

(declare-fun m!4582043 () Bool)

(assert (=> bs!588822 m!4582043))

(assert (=> b!3999087 d!1183478))

(declare-fun d!1183480 () Bool)

(assert (=> d!1183480 (= (seqFromList!5021 lt!1413539) (fromListB!2303 lt!1413539))))

(declare-fun bs!588823 () Bool)

(assert (= bs!588823 d!1183480))

(declare-fun m!4582045 () Bool)

(assert (=> bs!588823 m!4582045))

(assert (=> b!3999087 d!1183480))

(declare-fun d!1183482 () Bool)

(assert (=> d!1183482 (= (size!31985 (_1!24113 (v!39555 lt!1413494))) (size!31986 (originalCharacters!7382 (_1!24113 (v!39555 lt!1413494)))))))

(declare-fun Unit!61746 () Unit!61732)

(assert (=> d!1183482 (= (lemmaCharactersSize!1377 (_1!24113 (v!39555 lt!1413494))) Unit!61746)))

(declare-fun bs!588824 () Bool)

(assert (= bs!588824 d!1183482))

(declare-fun m!4582047 () Bool)

(assert (=> bs!588824 m!4582047))

(assert (=> b!3999087 d!1183482))

(declare-fun b!3999877 () Bool)

(declare-fun e!2479976 () Bool)

(assert (=> b!3999877 (= e!2479976 (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (_1!24114 (findLongestMatchInner!1344 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) Nil!42772 (size!31986 Nil!42772) lt!1413497 lt!1413497 (size!31986 lt!1413497)))))))

(declare-fun b!3999878 () Bool)

(declare-fun e!2479979 () Bool)

(declare-fun lt!1413832 () Option!9196)

(assert (=> b!3999878 (= e!2479979 (= (size!31985 (_1!24113 (get!14069 lt!1413832))) (size!31986 (originalCharacters!7382 (_1!24113 (get!14069 lt!1413832))))))))

(declare-fun b!3999879 () Bool)

(declare-fun res!1624966 () Bool)

(assert (=> b!3999879 (=> (not res!1624966) (not e!2479979))))

(assert (=> b!3999879 (= res!1624966 (= (++!11184 (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413832)))) (_2!24113 (get!14069 lt!1413832))) lt!1413497))))

(declare-fun b!3999880 () Bool)

(declare-fun e!2479977 () Option!9196)

(assert (=> b!3999880 (= e!2479977 None!9195)))

(declare-fun b!3999881 () Bool)

(declare-fun res!1624964 () Bool)

(assert (=> b!3999881 (=> (not res!1624964) (not e!2479979))))

(assert (=> b!3999881 (= res!1624964 (= (value!213921 (_1!24113 (get!14069 lt!1413832))) (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (get!14069 lt!1413832)))) (seqFromList!5021 (originalCharacters!7382 (_1!24113 (get!14069 lt!1413832)))))))))

(declare-fun b!3999882 () Bool)

(declare-fun res!1624965 () Bool)

(assert (=> b!3999882 (=> (not res!1624965) (not e!2479979))))

(assert (=> b!3999882 (= res!1624965 (< (size!31986 (_2!24113 (get!14069 lt!1413832))) (size!31986 lt!1413497)))))

(declare-fun b!3999883 () Bool)

(declare-fun e!2479978 () Bool)

(assert (=> b!3999883 (= e!2479978 e!2479979)))

(declare-fun res!1624961 () Bool)

(assert (=> b!3999883 (=> (not res!1624961) (not e!2479979))))

(assert (=> b!3999883 (= res!1624961 (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (list!15884 (charsOf!4598 (_1!24113 (get!14069 lt!1413832))))))))

(declare-fun b!3999884 () Bool)

(declare-fun res!1624963 () Bool)

(assert (=> b!3999884 (=> (not res!1624963) (not e!2479979))))

(assert (=> b!3999884 (= res!1624963 (= (rule!9812 (_1!24113 (get!14069 lt!1413832))) (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(declare-fun b!3999885 () Bool)

(declare-fun lt!1413830 () tuple2!41960)

(assert (=> b!3999885 (= e!2479977 (Some!9195 (tuple2!41959 (Token!12703 (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (seqFromList!5021 (_1!24114 lt!1413830))) (rule!9812 (_1!24113 (v!39555 lt!1413494))) (size!31987 (seqFromList!5021 (_1!24114 lt!1413830))) (_1!24114 lt!1413830)) (_2!24114 lt!1413830))))))

(declare-fun lt!1413829 () Unit!61732)

(assert (=> b!3999885 (= lt!1413829 (longestMatchIsAcceptedByMatchOrIsEmpty!1317 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413497))))

(declare-fun res!1624967 () Bool)

(assert (=> b!3999885 (= res!1624967 (isEmpty!25564 (_1!24114 (findLongestMatchInner!1344 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) Nil!42772 (size!31986 Nil!42772) lt!1413497 lt!1413497 (size!31986 lt!1413497)))))))

(assert (=> b!3999885 (=> res!1624967 e!2479976)))

(assert (=> b!3999885 e!2479976))

(declare-fun lt!1413833 () Unit!61732)

(assert (=> b!3999885 (= lt!1413833 lt!1413829)))

(declare-fun lt!1413831 () Unit!61732)

(assert (=> b!3999885 (= lt!1413831 (lemmaSemiInverse!1864 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (seqFromList!5021 (_1!24114 lt!1413830))))))

(declare-fun d!1183484 () Bool)

(assert (=> d!1183484 e!2479978))

(declare-fun res!1624962 () Bool)

(assert (=> d!1183484 (=> res!1624962 e!2479978)))

(assert (=> d!1183484 (= res!1624962 (isEmpty!25566 lt!1413832))))

(assert (=> d!1183484 (= lt!1413832 e!2479977)))

(declare-fun c!691917 () Bool)

(assert (=> d!1183484 (= c!691917 (isEmpty!25564 (_1!24114 lt!1413830)))))

(assert (=> d!1183484 (= lt!1413830 (findLongestMatch!1257 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413497))))

(assert (=> d!1183484 (ruleValid!2714 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))

(assert (=> d!1183484 (= (maxPrefixOneRule!2703 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413497) lt!1413832)))

(assert (= (and d!1183484 c!691917) b!3999880))

(assert (= (and d!1183484 (not c!691917)) b!3999885))

(assert (= (and b!3999885 (not res!1624967)) b!3999877))

(assert (= (and d!1183484 (not res!1624962)) b!3999883))

(assert (= (and b!3999883 res!1624961) b!3999879))

(assert (= (and b!3999879 res!1624966) b!3999882))

(assert (= (and b!3999882 res!1624965) b!3999884))

(assert (= (and b!3999884 res!1624963) b!3999881))

(assert (= (and b!3999881 res!1624964) b!3999878))

(declare-fun m!4582049 () Bool)

(assert (=> b!3999878 m!4582049))

(declare-fun m!4582051 () Bool)

(assert (=> b!3999878 m!4582051))

(assert (=> b!3999877 m!4581729))

(assert (=> b!3999877 m!4581159))

(assert (=> b!3999877 m!4581729))

(assert (=> b!3999877 m!4581159))

(declare-fun m!4582053 () Bool)

(assert (=> b!3999877 m!4582053))

(declare-fun m!4582055 () Bool)

(assert (=> b!3999877 m!4582055))

(declare-fun m!4582057 () Bool)

(assert (=> d!1183484 m!4582057))

(declare-fun m!4582059 () Bool)

(assert (=> d!1183484 m!4582059))

(declare-fun m!4582061 () Bool)

(assert (=> d!1183484 m!4582061))

(assert (=> d!1183484 m!4580815))

(assert (=> b!3999881 m!4582049))

(declare-fun m!4582063 () Bool)

(assert (=> b!3999881 m!4582063))

(assert (=> b!3999881 m!4582063))

(declare-fun m!4582065 () Bool)

(assert (=> b!3999881 m!4582065))

(assert (=> b!3999882 m!4582049))

(declare-fun m!4582067 () Bool)

(assert (=> b!3999882 m!4582067))

(assert (=> b!3999882 m!4581159))

(assert (=> b!3999884 m!4582049))

(assert (=> b!3999883 m!4582049))

(declare-fun m!4582069 () Bool)

(assert (=> b!3999883 m!4582069))

(assert (=> b!3999883 m!4582069))

(declare-fun m!4582071 () Bool)

(assert (=> b!3999883 m!4582071))

(assert (=> b!3999883 m!4582071))

(declare-fun m!4582073 () Bool)

(assert (=> b!3999883 m!4582073))

(assert (=> b!3999885 m!4581159))

(declare-fun m!4582075 () Bool)

(assert (=> b!3999885 m!4582075))

(declare-fun m!4582077 () Bool)

(assert (=> b!3999885 m!4582077))

(assert (=> b!3999885 m!4582075))

(declare-fun m!4582079 () Bool)

(assert (=> b!3999885 m!4582079))

(assert (=> b!3999885 m!4582075))

(declare-fun m!4582081 () Bool)

(assert (=> b!3999885 m!4582081))

(declare-fun m!4582083 () Bool)

(assert (=> b!3999885 m!4582083))

(assert (=> b!3999885 m!4581729))

(assert (=> b!3999885 m!4582075))

(declare-fun m!4582085 () Bool)

(assert (=> b!3999885 m!4582085))

(assert (=> b!3999885 m!4581729))

(assert (=> b!3999885 m!4581159))

(assert (=> b!3999885 m!4582053))

(assert (=> b!3999879 m!4582049))

(assert (=> b!3999879 m!4582069))

(assert (=> b!3999879 m!4582069))

(assert (=> b!3999879 m!4582071))

(assert (=> b!3999879 m!4582071))

(declare-fun m!4582087 () Bool)

(assert (=> b!3999879 m!4582087))

(assert (=> b!3999087 d!1183484))

(declare-fun b!3999886 () Bool)

(declare-fun e!2479980 () Bool)

(declare-fun e!2479982 () Bool)

(assert (=> b!3999886 (= e!2479980 e!2479982)))

(declare-fun res!1624970 () Bool)

(assert (=> b!3999886 (=> (not res!1624970) (not e!2479982))))

(assert (=> b!3999886 (= res!1624970 (not ((_ is Nil!42772) lt!1413521)))))

(declare-fun b!3999889 () Bool)

(declare-fun e!2479981 () Bool)

(assert (=> b!3999889 (= e!2479981 (>= (size!31986 lt!1413521) (size!31986 lt!1413539)))))

(declare-fun b!3999887 () Bool)

(declare-fun res!1624971 () Bool)

(assert (=> b!3999887 (=> (not res!1624971) (not e!2479982))))

(assert (=> b!3999887 (= res!1624971 (= (head!8503 lt!1413539) (head!8503 lt!1413521)))))

(declare-fun d!1183486 () Bool)

(assert (=> d!1183486 e!2479981))

(declare-fun res!1624968 () Bool)

(assert (=> d!1183486 (=> res!1624968 e!2479981)))

(declare-fun lt!1413834 () Bool)

(assert (=> d!1183486 (= res!1624968 (not lt!1413834))))

(assert (=> d!1183486 (= lt!1413834 e!2479980)))

(declare-fun res!1624969 () Bool)

(assert (=> d!1183486 (=> res!1624969 e!2479980)))

(assert (=> d!1183486 (= res!1624969 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183486 (= (isPrefix!3869 lt!1413539 lt!1413521) lt!1413834)))

(declare-fun b!3999888 () Bool)

(assert (=> b!3999888 (= e!2479982 (isPrefix!3869 (tail!6235 lt!1413539) (tail!6235 lt!1413521)))))

(assert (= (and d!1183486 (not res!1624969)) b!3999886))

(assert (= (and b!3999886 res!1624970) b!3999887))

(assert (= (and b!3999887 res!1624971) b!3999888))

(assert (= (and d!1183486 (not res!1624968)) b!3999889))

(declare-fun m!4582089 () Bool)

(assert (=> b!3999889 m!4582089))

(assert (=> b!3999889 m!4580827))

(assert (=> b!3999887 m!4581161))

(declare-fun m!4582091 () Bool)

(assert (=> b!3999887 m!4582091))

(assert (=> b!3999888 m!4581165))

(declare-fun m!4582093 () Bool)

(assert (=> b!3999888 m!4582093))

(assert (=> b!3999888 m!4581165))

(assert (=> b!3999888 m!4582093))

(declare-fun m!4582095 () Bool)

(assert (=> b!3999888 m!4582095))

(assert (=> b!3999087 d!1183486))

(declare-fun d!1183488 () Bool)

(assert (=> d!1183488 (isPrefix!3869 lt!1413539 (++!11184 lt!1413539 (_2!24113 (v!39555 lt!1413494))))))

(declare-fun lt!1413835 () Unit!61732)

(assert (=> d!1183488 (= lt!1413835 (choose!24128 lt!1413539 (_2!24113 (v!39555 lt!1413494))))))

(assert (=> d!1183488 (= (lemmaConcatTwoListThenFirstIsPrefix!2712 lt!1413539 (_2!24113 (v!39555 lt!1413494))) lt!1413835)))

(declare-fun bs!588825 () Bool)

(assert (= bs!588825 d!1183488))

(assert (=> bs!588825 m!4580837))

(assert (=> bs!588825 m!4580837))

(declare-fun m!4582097 () Bool)

(assert (=> bs!588825 m!4582097))

(declare-fun m!4582099 () Bool)

(assert (=> bs!588825 m!4582099))

(assert (=> b!3999087 d!1183488))

(declare-fun d!1183490 () Bool)

(declare-fun lt!1413836 () BalanceConc!25580)

(assert (=> d!1183490 (= (list!15884 lt!1413836) (originalCharacters!7382 (_1!24113 (v!39555 lt!1413494))))))

(assert (=> d!1183490 (= lt!1413836 (dynLambda!18153 (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) (value!213921 (_1!24113 (v!39555 lt!1413494)))))))

(assert (=> d!1183490 (= (charsOf!4598 (_1!24113 (v!39555 lt!1413494))) lt!1413836)))

(declare-fun b_lambda!116711 () Bool)

(assert (=> (not b_lambda!116711) (not d!1183490)))

(declare-fun tb!240529 () Bool)

(declare-fun t!332167 () Bool)

(assert (=> (and b!3999113 (= (toChars!9129 (transformation!6782 (rule!9812 token!484))) (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))) t!332167) tb!240529))

(declare-fun b!3999890 () Bool)

(declare-fun e!2479983 () Bool)

(declare-fun tp!1217146 () Bool)

(assert (=> b!3999890 (= e!2479983 (and (inv!57126 (c!691784 (dynLambda!18153 (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) (value!213921 (_1!24113 (v!39555 lt!1413494)))))) tp!1217146))))

(declare-fun result!291504 () Bool)

(assert (=> tb!240529 (= result!291504 (and (inv!57127 (dynLambda!18153 (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) (value!213921 (_1!24113 (v!39555 lt!1413494))))) e!2479983))))

(assert (= tb!240529 b!3999890))

(declare-fun m!4582101 () Bool)

(assert (=> b!3999890 m!4582101))

(declare-fun m!4582103 () Bool)

(assert (=> tb!240529 m!4582103))

(assert (=> d!1183490 t!332167))

(declare-fun b_and!307135 () Bool)

(assert (= b_and!307127 (and (=> t!332167 result!291504) b_and!307135)))

(declare-fun tb!240531 () Bool)

(declare-fun t!332169 () Bool)

(assert (=> (and b!3999118 (= (toChars!9129 (transformation!6782 (h!48194 rules!2999))) (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))) t!332169) tb!240531))

(declare-fun result!291506 () Bool)

(assert (= result!291506 result!291504))

(assert (=> d!1183490 t!332169))

(declare-fun b_and!307137 () Bool)

(assert (= b_and!307129 (and (=> t!332169 result!291506) b_and!307137)))

(declare-fun m!4582105 () Bool)

(assert (=> d!1183490 m!4582105))

(declare-fun m!4582107 () Bool)

(assert (=> d!1183490 m!4582107))

(assert (=> b!3999087 d!1183490))

(declare-fun d!1183492 () Bool)

(declare-fun lt!1413837 () Int)

(assert (=> d!1183492 (>= lt!1413837 0)))

(declare-fun e!2479984 () Int)

(assert (=> d!1183492 (= lt!1413837 e!2479984)))

(declare-fun c!691918 () Bool)

(assert (=> d!1183492 (= c!691918 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183492 (= (size!31986 lt!1413539) lt!1413837)))

(declare-fun b!3999891 () Bool)

(assert (=> b!3999891 (= e!2479984 0)))

(declare-fun b!3999892 () Bool)

(assert (=> b!3999892 (= e!2479984 (+ 1 (size!31986 (t!332127 lt!1413539))))))

(assert (= (and d!1183492 c!691918) b!3999891))

(assert (= (and d!1183492 (not c!691918)) b!3999892))

(declare-fun m!4582109 () Bool)

(assert (=> b!3999892 m!4582109))

(assert (=> b!3999087 d!1183492))

(declare-fun d!1183494 () Bool)

(assert (=> d!1183494 (= (maxPrefixOneRule!2703 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494))) lt!1413497) (Some!9195 (tuple2!41959 (Token!12703 (apply!9993 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (seqFromList!5021 lt!1413539)) (rule!9812 (_1!24113 (v!39555 lt!1413494))) (size!31986 lt!1413539) lt!1413539) (_2!24113 (v!39555 lt!1413494)))))))

(declare-fun lt!1413838 () Unit!61732)

(assert (=> d!1183494 (= lt!1413838 (choose!24130 thiss!21717 rules!2999 lt!1413539 lt!1413497 (_2!24113 (v!39555 lt!1413494)) (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(assert (=> d!1183494 (not (isEmpty!25562 rules!2999))))

(assert (=> d!1183494 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1525 thiss!21717 rules!2999 lt!1413539 lt!1413497 (_2!24113 (v!39555 lt!1413494)) (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413838)))

(declare-fun bs!588826 () Bool)

(assert (= bs!588826 d!1183494))

(assert (=> bs!588826 m!4580823))

(assert (=> bs!588826 m!4580827))

(declare-fun m!4582111 () Bool)

(assert (=> bs!588826 m!4582111))

(assert (=> bs!588826 m!4580795))

(assert (=> bs!588826 m!4580819))

(assert (=> bs!588826 m!4580825))

(assert (=> bs!588826 m!4580819))

(assert (=> b!3999087 d!1183494))

(declare-fun d!1183496 () Bool)

(declare-fun e!2479987 () Bool)

(assert (=> d!1183496 e!2479987))

(declare-fun res!1624974 () Bool)

(assert (=> d!1183496 (=> (not res!1624974) (not e!2479987))))

(assert (=> d!1183496 (= res!1624974 (semiInverseModEq!2909 (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) (toValue!9270 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(declare-fun Unit!61747 () Unit!61732)

(assert (=> d!1183496 (= (lemmaInv!997 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) Unit!61747)))

(declare-fun b!3999895 () Bool)

(assert (=> b!3999895 (= e!2479987 (equivClasses!2808 (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))) (toValue!9270 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(assert (= (and d!1183496 res!1624974) b!3999895))

(declare-fun m!4582113 () Bool)

(assert (=> d!1183496 m!4582113))

(declare-fun m!4582115 () Bool)

(assert (=> b!3999895 m!4582115))

(assert (=> b!3999087 d!1183496))

(declare-fun d!1183498 () Bool)

(assert (=> d!1183498 (= (size!31985 token!484) (size!31986 (originalCharacters!7382 token!484)))))

(declare-fun Unit!61748 () Unit!61732)

(assert (=> d!1183498 (= (lemmaCharactersSize!1377 token!484) Unit!61748)))

(declare-fun bs!588827 () Bool)

(assert (= bs!588827 d!1183498))

(assert (=> bs!588827 m!4580845))

(assert (=> b!3999087 d!1183498))

(declare-fun b!3999898 () Bool)

(declare-fun res!1624975 () Bool)

(declare-fun e!2479989 () Bool)

(assert (=> b!3999898 (=> (not res!1624975) (not e!2479989))))

(declare-fun lt!1413839 () List!42896)

(assert (=> b!3999898 (= res!1624975 (= (size!31986 lt!1413839) (+ (size!31986 lt!1413539) (size!31986 newSuffixResult!27))))))

(declare-fun b!3999897 () Bool)

(declare-fun e!2479988 () List!42896)

(assert (=> b!3999897 (= e!2479988 (Cons!42772 (h!48192 lt!1413539) (++!11184 (t!332127 lt!1413539) newSuffixResult!27)))))

(declare-fun d!1183500 () Bool)

(assert (=> d!1183500 e!2479989))

(declare-fun res!1624976 () Bool)

(assert (=> d!1183500 (=> (not res!1624976) (not e!2479989))))

(assert (=> d!1183500 (= res!1624976 (= (content!6489 lt!1413839) ((_ map or) (content!6489 lt!1413539) (content!6489 newSuffixResult!27))))))

(assert (=> d!1183500 (= lt!1413839 e!2479988)))

(declare-fun c!691919 () Bool)

(assert (=> d!1183500 (= c!691919 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183500 (= (++!11184 lt!1413539 newSuffixResult!27) lt!1413839)))

(declare-fun b!3999896 () Bool)

(assert (=> b!3999896 (= e!2479988 newSuffixResult!27)))

(declare-fun b!3999899 () Bool)

(assert (=> b!3999899 (= e!2479989 (or (not (= newSuffixResult!27 Nil!42772)) (= lt!1413839 lt!1413539)))))

(assert (= (and d!1183500 c!691919) b!3999896))

(assert (= (and d!1183500 (not c!691919)) b!3999897))

(assert (= (and d!1183500 res!1624976) b!3999898))

(assert (= (and b!3999898 res!1624975) b!3999899))

(declare-fun m!4582117 () Bool)

(assert (=> b!3999898 m!4582117))

(assert (=> b!3999898 m!4580827))

(assert (=> b!3999898 m!4581793))

(declare-fun m!4582119 () Bool)

(assert (=> b!3999897 m!4582119))

(declare-fun m!4582121 () Bool)

(assert (=> d!1183500 m!4582121))

(assert (=> d!1183500 m!4581891))

(assert (=> d!1183500 m!4581799))

(assert (=> b!3999087 d!1183500))

(declare-fun d!1183502 () Bool)

(declare-fun res!1624981 () Bool)

(declare-fun e!2479992 () Bool)

(assert (=> d!1183502 (=> (not res!1624981) (not e!2479992))))

(assert (=> d!1183502 (= res!1624981 (validRegex!5302 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(assert (=> d!1183502 (= (ruleValid!2714 thiss!21717 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) e!2479992)))

(declare-fun b!3999904 () Bool)

(declare-fun res!1624982 () Bool)

(assert (=> b!3999904 (=> (not res!1624982) (not e!2479992))))

(assert (=> b!3999904 (= res!1624982 (not (nullable!4102 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(declare-fun b!3999905 () Bool)

(assert (=> b!3999905 (= e!2479992 (not (= (tag!7642 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (String!48779 ""))))))

(assert (= (and d!1183502 res!1624981) b!3999904))

(assert (= (and b!3999904 res!1624982) b!3999905))

(assert (=> d!1183502 m!4581827))

(assert (=> b!3999904 m!4581823))

(assert (=> b!3999087 d!1183502))

(declare-fun b!3999908 () Bool)

(declare-fun res!1624983 () Bool)

(declare-fun e!2479994 () Bool)

(assert (=> b!3999908 (=> (not res!1624983) (not e!2479994))))

(declare-fun lt!1413840 () List!42896)

(assert (=> b!3999908 (= res!1624983 (= (size!31986 lt!1413840) (+ (size!31986 lt!1413480) (size!31986 lt!1413492))))))

(declare-fun b!3999907 () Bool)

(declare-fun e!2479993 () List!42896)

(assert (=> b!3999907 (= e!2479993 (Cons!42772 (h!48192 lt!1413480) (++!11184 (t!332127 lt!1413480) lt!1413492)))))

(declare-fun d!1183504 () Bool)

(assert (=> d!1183504 e!2479994))

(declare-fun res!1624984 () Bool)

(assert (=> d!1183504 (=> (not res!1624984) (not e!2479994))))

(assert (=> d!1183504 (= res!1624984 (= (content!6489 lt!1413840) ((_ map or) (content!6489 lt!1413480) (content!6489 lt!1413492))))))

(assert (=> d!1183504 (= lt!1413840 e!2479993)))

(declare-fun c!691920 () Bool)

(assert (=> d!1183504 (= c!691920 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183504 (= (++!11184 lt!1413480 lt!1413492) lt!1413840)))

(declare-fun b!3999906 () Bool)

(assert (=> b!3999906 (= e!2479993 lt!1413492)))

(declare-fun b!3999909 () Bool)

(assert (=> b!3999909 (= e!2479994 (or (not (= lt!1413492 Nil!42772)) (= lt!1413840 lt!1413480)))))

(assert (= (and d!1183504 c!691920) b!3999906))

(assert (= (and d!1183504 (not c!691920)) b!3999907))

(assert (= (and d!1183504 res!1624984) b!3999908))

(assert (= (and b!3999908 res!1624983) b!3999909))

(declare-fun m!4582123 () Bool)

(assert (=> b!3999908 m!4582123))

(assert (=> b!3999908 m!4580927))

(assert (=> b!3999908 m!4581217))

(declare-fun m!4582125 () Bool)

(assert (=> b!3999907 m!4582125))

(declare-fun m!4582127 () Bool)

(assert (=> d!1183504 m!4582127))

(assert (=> d!1183504 m!4581199))

(assert (=> d!1183504 m!4581223))

(assert (=> b!3999130 d!1183504))

(declare-fun d!1183506 () Bool)

(declare-fun lt!1413841 () List!42896)

(assert (=> d!1183506 (= (++!11184 lt!1413480 lt!1413841) prefix!494)))

(declare-fun e!2479995 () List!42896)

(assert (=> d!1183506 (= lt!1413841 e!2479995)))

(declare-fun c!691921 () Bool)

(assert (=> d!1183506 (= c!691921 ((_ is Cons!42772) lt!1413480))))

(assert (=> d!1183506 (>= (size!31986 prefix!494) (size!31986 lt!1413480))))

(assert (=> d!1183506 (= (getSuffix!2300 prefix!494 lt!1413480) lt!1413841)))

(declare-fun b!3999910 () Bool)

(assert (=> b!3999910 (= e!2479995 (getSuffix!2300 (tail!6235 prefix!494) (t!332127 lt!1413480)))))

(declare-fun b!3999911 () Bool)

(assert (=> b!3999911 (= e!2479995 prefix!494)))

(assert (= (and d!1183506 c!691921) b!3999910))

(assert (= (and d!1183506 (not c!691921)) b!3999911))

(declare-fun m!4582129 () Bool)

(assert (=> d!1183506 m!4582129))

(assert (=> d!1183506 m!4580929))

(assert (=> d!1183506 m!4580927))

(assert (=> b!3999910 m!4581937))

(assert (=> b!3999910 m!4581937))

(declare-fun m!4582131 () Bool)

(assert (=> b!3999910 m!4582131))

(assert (=> b!3999130 d!1183506))

(declare-fun b!3999912 () Bool)

(declare-fun e!2479996 () Bool)

(declare-fun e!2479998 () Bool)

(assert (=> b!3999912 (= e!2479996 e!2479998)))

(declare-fun res!1624987 () Bool)

(assert (=> b!3999912 (=> (not res!1624987) (not e!2479998))))

(assert (=> b!3999912 (= res!1624987 (not ((_ is Nil!42772) prefix!494)))))

(declare-fun b!3999915 () Bool)

(declare-fun e!2479997 () Bool)

(assert (=> b!3999915 (= e!2479997 (>= (size!31986 prefix!494) (size!31986 lt!1413480)))))

(declare-fun b!3999913 () Bool)

(declare-fun res!1624988 () Bool)

(assert (=> b!3999913 (=> (not res!1624988) (not e!2479998))))

(assert (=> b!3999913 (= res!1624988 (= (head!8503 lt!1413480) (head!8503 prefix!494)))))

(declare-fun d!1183508 () Bool)

(assert (=> d!1183508 e!2479997))

(declare-fun res!1624985 () Bool)

(assert (=> d!1183508 (=> res!1624985 e!2479997)))

(declare-fun lt!1413842 () Bool)

(assert (=> d!1183508 (= res!1624985 (not lt!1413842))))

(assert (=> d!1183508 (= lt!1413842 e!2479996)))

(declare-fun res!1624986 () Bool)

(assert (=> d!1183508 (=> res!1624986 e!2479996)))

(assert (=> d!1183508 (= res!1624986 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183508 (= (isPrefix!3869 lt!1413480 prefix!494) lt!1413842)))

(declare-fun b!3999914 () Bool)

(assert (=> b!3999914 (= e!2479998 (isPrefix!3869 (tail!6235 lt!1413480) (tail!6235 prefix!494)))))

(assert (= (and d!1183508 (not res!1624986)) b!3999912))

(assert (= (and b!3999912 res!1624987) b!3999913))

(assert (= (and b!3999913 res!1624988) b!3999914))

(assert (= (and d!1183508 (not res!1624985)) b!3999915))

(assert (=> b!3999915 m!4580929))

(assert (=> b!3999915 m!4580927))

(assert (=> b!3999913 m!4581421))

(assert (=> b!3999913 m!4581935))

(assert (=> b!3999914 m!4581425))

(assert (=> b!3999914 m!4581937))

(assert (=> b!3999914 m!4581425))

(assert (=> b!3999914 m!4581937))

(declare-fun m!4582133 () Bool)

(assert (=> b!3999914 m!4582133))

(assert (=> b!3999130 d!1183508))

(declare-fun d!1183510 () Bool)

(assert (=> d!1183510 (isPrefix!3869 lt!1413480 prefix!494)))

(declare-fun lt!1413845 () Unit!61732)

(declare-fun choose!24141 (List!42896 List!42896 List!42896) Unit!61732)

(assert (=> d!1183510 (= lt!1413845 (choose!24141 prefix!494 lt!1413480 lt!1413522))))

(assert (=> d!1183510 (isPrefix!3869 prefix!494 lt!1413522)))

(assert (=> d!1183510 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!447 prefix!494 lt!1413480 lt!1413522) lt!1413845)))

(declare-fun bs!588828 () Bool)

(assert (= bs!588828 d!1183510))

(assert (=> bs!588828 m!4580873))

(declare-fun m!4582135 () Bool)

(assert (=> bs!588828 m!4582135))

(assert (=> bs!588828 m!4580949))

(assert (=> b!3999130 d!1183510))

(declare-fun d!1183512 () Bool)

(declare-fun res!1624991 () Bool)

(declare-fun e!2480001 () Bool)

(assert (=> d!1183512 (=> (not res!1624991) (not e!2480001))))

(declare-fun rulesValid!2643 (LexerInterface!6371 List!42898) Bool)

(assert (=> d!1183512 (= res!1624991 (rulesValid!2643 thiss!21717 rules!2999))))

(assert (=> d!1183512 (= (rulesInvariant!5714 thiss!21717 rules!2999) e!2480001)))

(declare-fun b!3999918 () Bool)

(declare-datatypes ((List!42900 0))(
  ( (Nil!42776) (Cons!42776 (h!48196 String!48778) (t!332179 List!42900)) )
))
(declare-fun noDuplicateTag!2644 (LexerInterface!6371 List!42898 List!42900) Bool)

(assert (=> b!3999918 (= e!2480001 (noDuplicateTag!2644 thiss!21717 rules!2999 Nil!42776))))

(assert (= (and d!1183512 res!1624991) b!3999918))

(declare-fun m!4582137 () Bool)

(assert (=> d!1183512 m!4582137))

(declare-fun m!4582139 () Bool)

(assert (=> b!3999918 m!4582139))

(assert (=> b!3999092 d!1183512))

(declare-fun d!1183514 () Bool)

(assert (=> d!1183514 (not (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413539))))

(declare-fun lt!1413846 () Unit!61732)

(assert (=> d!1183514 (= lt!1413846 (choose!24124 thiss!21717 rules!2999 (rule!9812 token!484) lt!1413480 lt!1413522 lt!1413539 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(assert (=> d!1183514 (isPrefix!3869 lt!1413480 lt!1413522)))

(assert (=> d!1183514 (= (lemmaMaxPrefixOutputsMaxPrefix!436 thiss!21717 rules!2999 (rule!9812 token!484) lt!1413480 lt!1413522 lt!1413539 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413846)))

(declare-fun bs!588829 () Bool)

(assert (= bs!588829 d!1183514))

(assert (=> bs!588829 m!4580857))

(declare-fun m!4582141 () Bool)

(assert (=> bs!588829 m!4582141))

(assert (=> bs!588829 m!4580957))

(assert (=> b!3999091 d!1183514))

(declare-fun b!3999919 () Bool)

(declare-fun res!1624997 () Bool)

(declare-fun e!2480005 () Bool)

(assert (=> b!3999919 (=> res!1624997 e!2480005)))

(assert (=> b!3999919 (= res!1624997 (not (isEmpty!25564 (tail!6235 lt!1413539))))))

(declare-fun b!3999920 () Bool)

(declare-fun e!2480002 () Bool)

(assert (=> b!3999920 (= e!2480002 (nullable!4102 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(declare-fun b!3999921 () Bool)

(assert (=> b!3999921 (= e!2480005 (not (= (head!8503 lt!1413539) (c!691785 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))))

(declare-fun b!3999922 () Bool)

(assert (=> b!3999922 (= e!2480002 (matchR!5664 (derivativeStep!3513 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) (head!8503 lt!1413539)) (tail!6235 lt!1413539)))))

(declare-fun b!3999923 () Bool)

(declare-fun e!2480004 () Bool)

(declare-fun lt!1413847 () Bool)

(assert (=> b!3999923 (= e!2480004 (not lt!1413847))))

(declare-fun b!3999924 () Bool)

(declare-fun e!2480007 () Bool)

(assert (=> b!3999924 (= e!2480007 e!2480005)))

(declare-fun res!1624995 () Bool)

(assert (=> b!3999924 (=> res!1624995 e!2480005)))

(declare-fun call!285978 () Bool)

(assert (=> b!3999924 (= res!1624995 call!285978)))

(declare-fun b!3999925 () Bool)

(declare-fun e!2480003 () Bool)

(assert (=> b!3999925 (= e!2480003 (= lt!1413847 call!285978))))

(declare-fun b!3999926 () Bool)

(declare-fun res!1624994 () Bool)

(declare-fun e!2480008 () Bool)

(assert (=> b!3999926 (=> res!1624994 e!2480008)))

(declare-fun e!2480006 () Bool)

(assert (=> b!3999926 (= res!1624994 e!2480006)))

(declare-fun res!1624993 () Bool)

(assert (=> b!3999926 (=> (not res!1624993) (not e!2480006))))

(assert (=> b!3999926 (= res!1624993 lt!1413847)))

(declare-fun b!3999927 () Bool)

(assert (=> b!3999927 (= e!2480006 (= (head!8503 lt!1413539) (c!691785 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(declare-fun b!3999928 () Bool)

(assert (=> b!3999928 (= e!2480003 e!2480004)))

(declare-fun c!691924 () Bool)

(assert (=> b!3999928 (= c!691924 ((_ is EmptyLang!11687) (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(declare-fun bm!285973 () Bool)

(assert (=> bm!285973 (= call!285978 (isEmpty!25564 lt!1413539))))

(declare-fun b!3999929 () Bool)

(assert (=> b!3999929 (= e!2480008 e!2480007)))

(declare-fun res!1624998 () Bool)

(assert (=> b!3999929 (=> (not res!1624998) (not e!2480007))))

(assert (=> b!3999929 (= res!1624998 (not lt!1413847))))

(declare-fun d!1183516 () Bool)

(assert (=> d!1183516 e!2480003))

(declare-fun c!691922 () Bool)

(assert (=> d!1183516 (= c!691922 ((_ is EmptyExpr!11687) (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494))))))))

(assert (=> d!1183516 (= lt!1413847 e!2480002)))

(declare-fun c!691923 () Bool)

(assert (=> d!1183516 (= c!691923 (isEmpty!25564 lt!1413539))))

(assert (=> d!1183516 (validRegex!5302 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))

(assert (=> d!1183516 (= (matchR!5664 (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))) lt!1413539) lt!1413847)))

(declare-fun b!3999930 () Bool)

(declare-fun res!1624996 () Bool)

(assert (=> b!3999930 (=> (not res!1624996) (not e!2480006))))

(assert (=> b!3999930 (= res!1624996 (isEmpty!25564 (tail!6235 lt!1413539)))))

(declare-fun b!3999931 () Bool)

(declare-fun res!1624992 () Bool)

(assert (=> b!3999931 (=> res!1624992 e!2480008)))

(assert (=> b!3999931 (= res!1624992 (not ((_ is ElementMatch!11687) (regex!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))))))

(assert (=> b!3999931 (= e!2480004 e!2480008)))

(declare-fun b!3999932 () Bool)

(declare-fun res!1624999 () Bool)

(assert (=> b!3999932 (=> (not res!1624999) (not e!2480006))))

(assert (=> b!3999932 (= res!1624999 (not call!285978))))

(assert (= (and d!1183516 c!691923) b!3999920))

(assert (= (and d!1183516 (not c!691923)) b!3999922))

(assert (= (and d!1183516 c!691922) b!3999925))

(assert (= (and d!1183516 (not c!691922)) b!3999928))

(assert (= (and b!3999928 c!691924) b!3999923))

(assert (= (and b!3999928 (not c!691924)) b!3999931))

(assert (= (and b!3999931 (not res!1624992)) b!3999926))

(assert (= (and b!3999926 res!1624993) b!3999932))

(assert (= (and b!3999932 res!1624999) b!3999930))

(assert (= (and b!3999930 res!1624996) b!3999927))

(assert (= (and b!3999926 (not res!1624994)) b!3999929))

(assert (= (and b!3999929 res!1624998) b!3999924))

(assert (= (and b!3999924 (not res!1624995)) b!3999919))

(assert (= (and b!3999919 (not res!1624997)) b!3999921))

(assert (= (or b!3999925 b!3999924 b!3999932) bm!285973))

(assert (=> b!3999919 m!4581165))

(assert (=> b!3999919 m!4581165))

(assert (=> b!3999919 m!4581901))

(assert (=> b!3999922 m!4581161))

(assert (=> b!3999922 m!4581161))

(declare-fun m!4582143 () Bool)

(assert (=> b!3999922 m!4582143))

(assert (=> b!3999922 m!4581165))

(assert (=> b!3999922 m!4582143))

(assert (=> b!3999922 m!4581165))

(declare-fun m!4582145 () Bool)

(assert (=> b!3999922 m!4582145))

(assert (=> b!3999920 m!4581823))

(assert (=> b!3999927 m!4581161))

(assert (=> d!1183516 m!4581909))

(assert (=> d!1183516 m!4581827))

(assert (=> b!3999930 m!4581165))

(assert (=> b!3999930 m!4581165))

(assert (=> b!3999930 m!4581901))

(assert (=> bm!285973 m!4581909))

(assert (=> b!3999921 m!4581161))

(assert (=> b!3999091 d!1183516))

(declare-fun b!3999933 () Bool)

(declare-fun e!2480009 () Bool)

(declare-fun e!2480011 () Bool)

(assert (=> b!3999933 (= e!2480009 e!2480011)))

(declare-fun res!1625002 () Bool)

(assert (=> b!3999933 (=> (not res!1625002) (not e!2480011))))

(assert (=> b!3999933 (= res!1625002 (not ((_ is Nil!42772) lt!1413522)))))

(declare-fun b!3999936 () Bool)

(declare-fun e!2480010 () Bool)

(assert (=> b!3999936 (= e!2480010 (>= (size!31986 lt!1413522) (size!31986 lt!1413539)))))

(declare-fun b!3999934 () Bool)

(declare-fun res!1625003 () Bool)

(assert (=> b!3999934 (=> (not res!1625003) (not e!2480011))))

(assert (=> b!3999934 (= res!1625003 (= (head!8503 lt!1413539) (head!8503 lt!1413522)))))

(declare-fun d!1183518 () Bool)

(assert (=> d!1183518 e!2480010))

(declare-fun res!1625000 () Bool)

(assert (=> d!1183518 (=> res!1625000 e!2480010)))

(declare-fun lt!1413848 () Bool)

(assert (=> d!1183518 (= res!1625000 (not lt!1413848))))

(assert (=> d!1183518 (= lt!1413848 e!2480009)))

(declare-fun res!1625001 () Bool)

(assert (=> d!1183518 (=> res!1625001 e!2480009)))

(assert (=> d!1183518 (= res!1625001 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183518 (= (isPrefix!3869 lt!1413539 lt!1413522) lt!1413848)))

(declare-fun b!3999935 () Bool)

(assert (=> b!3999935 (= e!2480011 (isPrefix!3869 (tail!6235 lt!1413539) (tail!6235 lt!1413522)))))

(assert (= (and d!1183518 (not res!1625001)) b!3999933))

(assert (= (and b!3999933 res!1625002) b!3999934))

(assert (= (and b!3999934 res!1625003) b!3999935))

(assert (= (and d!1183518 (not res!1625000)) b!3999936))

(assert (=> b!3999936 m!4581731))

(assert (=> b!3999936 m!4580827))

(assert (=> b!3999934 m!4581161))

(assert (=> b!3999934 m!4581921))

(assert (=> b!3999935 m!4581165))

(assert (=> b!3999935 m!4581923))

(assert (=> b!3999935 m!4581165))

(assert (=> b!3999935 m!4581923))

(declare-fun m!4582147 () Bool)

(assert (=> b!3999935 m!4582147))

(assert (=> b!3999112 d!1183518))

(declare-fun b!3999937 () Bool)

(declare-fun e!2480012 () Bool)

(declare-fun e!2480014 () Bool)

(assert (=> b!3999937 (= e!2480012 e!2480014)))

(declare-fun res!1625006 () Bool)

(assert (=> b!3999937 (=> (not res!1625006) (not e!2480014))))

(assert (=> b!3999937 (= res!1625006 (not ((_ is Nil!42772) lt!1413479)))))

(declare-fun b!3999940 () Bool)

(declare-fun e!2480013 () Bool)

(assert (=> b!3999940 (= e!2480013 (>= (size!31986 lt!1413479) (size!31986 lt!1413539)))))

(declare-fun b!3999938 () Bool)

(declare-fun res!1625007 () Bool)

(assert (=> b!3999938 (=> (not res!1625007) (not e!2480014))))

(assert (=> b!3999938 (= res!1625007 (= (head!8503 lt!1413539) (head!8503 lt!1413479)))))

(declare-fun d!1183520 () Bool)

(assert (=> d!1183520 e!2480013))

(declare-fun res!1625004 () Bool)

(assert (=> d!1183520 (=> res!1625004 e!2480013)))

(declare-fun lt!1413849 () Bool)

(assert (=> d!1183520 (= res!1625004 (not lt!1413849))))

(assert (=> d!1183520 (= lt!1413849 e!2480012)))

(declare-fun res!1625005 () Bool)

(assert (=> d!1183520 (=> res!1625005 e!2480012)))

(assert (=> d!1183520 (= res!1625005 ((_ is Nil!42772) lt!1413539))))

(assert (=> d!1183520 (= (isPrefix!3869 lt!1413539 lt!1413479) lt!1413849)))

(declare-fun b!3999939 () Bool)

(assert (=> b!3999939 (= e!2480014 (isPrefix!3869 (tail!6235 lt!1413539) (tail!6235 lt!1413479)))))

(assert (= (and d!1183520 (not res!1625005)) b!3999937))

(assert (= (and b!3999937 res!1625006) b!3999938))

(assert (= (and b!3999938 res!1625007) b!3999939))

(assert (= (and d!1183520 (not res!1625004)) b!3999940))

(declare-fun m!4582149 () Bool)

(assert (=> b!3999940 m!4582149))

(assert (=> b!3999940 m!4580827))

(assert (=> b!3999938 m!4581161))

(declare-fun m!4582151 () Bool)

(assert (=> b!3999938 m!4582151))

(assert (=> b!3999939 m!4581165))

(declare-fun m!4582153 () Bool)

(assert (=> b!3999939 m!4582153))

(assert (=> b!3999939 m!4581165))

(assert (=> b!3999939 m!4582153))

(declare-fun m!4582155 () Bool)

(assert (=> b!3999939 m!4582155))

(assert (=> b!3999112 d!1183520))

(declare-fun d!1183522 () Bool)

(assert (=> d!1183522 (isPrefix!3869 lt!1413539 (++!11184 lt!1413497 lt!1413535))))

(declare-fun lt!1413850 () Unit!61732)

(assert (=> d!1183522 (= lt!1413850 (choose!24138 lt!1413539 lt!1413497 lt!1413535))))

(assert (=> d!1183522 (isPrefix!3869 lt!1413539 lt!1413497)))

(assert (=> d!1183522 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!702 lt!1413539 lt!1413497 lt!1413535) lt!1413850)))

(declare-fun bs!588830 () Bool)

(assert (= bs!588830 d!1183522))

(assert (=> bs!588830 m!4580983))

(assert (=> bs!588830 m!4580983))

(declare-fun m!4582157 () Bool)

(assert (=> bs!588830 m!4582157))

(declare-fun m!4582159 () Bool)

(assert (=> bs!588830 m!4582159))

(assert (=> bs!588830 m!4580935))

(assert (=> b!3999112 d!1183522))

(declare-fun b!3999943 () Bool)

(declare-fun res!1625008 () Bool)

(declare-fun e!2480016 () Bool)

(assert (=> b!3999943 (=> (not res!1625008) (not e!2480016))))

(declare-fun lt!1413851 () List!42896)

(assert (=> b!3999943 (= res!1625008 (= (size!31986 lt!1413851) (+ (size!31986 prefix!494) (size!31986 lt!1413501))))))

(declare-fun b!3999942 () Bool)

(declare-fun e!2480015 () List!42896)

(assert (=> b!3999942 (= e!2480015 (Cons!42772 (h!48192 prefix!494) (++!11184 (t!332127 prefix!494) lt!1413501)))))

(declare-fun d!1183524 () Bool)

(assert (=> d!1183524 e!2480016))

(declare-fun res!1625009 () Bool)

(assert (=> d!1183524 (=> (not res!1625009) (not e!2480016))))

(assert (=> d!1183524 (= res!1625009 (= (content!6489 lt!1413851) ((_ map or) (content!6489 prefix!494) (content!6489 lt!1413501))))))

(assert (=> d!1183524 (= lt!1413851 e!2480015)))

(declare-fun c!691925 () Bool)

(assert (=> d!1183524 (= c!691925 ((_ is Nil!42772) prefix!494))))

(assert (=> d!1183524 (= (++!11184 prefix!494 lt!1413501) lt!1413851)))

(declare-fun b!3999941 () Bool)

(assert (=> b!3999941 (= e!2480015 lt!1413501)))

(declare-fun b!3999944 () Bool)

(assert (=> b!3999944 (= e!2480016 (or (not (= lt!1413501 Nil!42772)) (= lt!1413851 prefix!494)))))

(assert (= (and d!1183524 c!691925) b!3999941))

(assert (= (and d!1183524 (not c!691925)) b!3999942))

(assert (= (and d!1183524 res!1625009) b!3999943))

(assert (= (and b!3999943 res!1625008) b!3999944))

(declare-fun m!4582161 () Bool)

(assert (=> b!3999943 m!4582161))

(assert (=> b!3999943 m!4580929))

(declare-fun m!4582163 () Bool)

(assert (=> b!3999943 m!4582163))

(declare-fun m!4582165 () Bool)

(assert (=> b!3999942 m!4582165))

(declare-fun m!4582167 () Bool)

(assert (=> d!1183524 m!4582167))

(assert (=> d!1183524 m!4581789))

(declare-fun m!4582169 () Bool)

(assert (=> d!1183524 m!4582169))

(assert (=> b!3999111 d!1183524))

(declare-fun b!3999947 () Bool)

(declare-fun res!1625010 () Bool)

(declare-fun e!2480018 () Bool)

(assert (=> b!3999947 (=> (not res!1625010) (not e!2480018))))

(declare-fun lt!1413852 () List!42896)

(assert (=> b!3999947 (= res!1625010 (= (size!31986 lt!1413852) (+ (size!31986 lt!1413497) (size!31986 lt!1413535))))))

(declare-fun b!3999946 () Bool)

(declare-fun e!2480017 () List!42896)

(assert (=> b!3999946 (= e!2480017 (Cons!42772 (h!48192 lt!1413497) (++!11184 (t!332127 lt!1413497) lt!1413535)))))

(declare-fun d!1183526 () Bool)

(assert (=> d!1183526 e!2480018))

(declare-fun res!1625011 () Bool)

(assert (=> d!1183526 (=> (not res!1625011) (not e!2480018))))

(assert (=> d!1183526 (= res!1625011 (= (content!6489 lt!1413852) ((_ map or) (content!6489 lt!1413497) (content!6489 lt!1413535))))))

(assert (=> d!1183526 (= lt!1413852 e!2480017)))

(declare-fun c!691926 () Bool)

(assert (=> d!1183526 (= c!691926 ((_ is Nil!42772) lt!1413497))))

(assert (=> d!1183526 (= (++!11184 lt!1413497 lt!1413535) lt!1413852)))

(declare-fun b!3999945 () Bool)

(assert (=> b!3999945 (= e!2480017 lt!1413535)))

(declare-fun b!3999948 () Bool)

(assert (=> b!3999948 (= e!2480018 (or (not (= lt!1413535 Nil!42772)) (= lt!1413852 lt!1413497)))))

(assert (= (and d!1183526 c!691926) b!3999945))

(assert (= (and d!1183526 (not c!691926)) b!3999946))

(assert (= (and d!1183526 res!1625011) b!3999947))

(assert (= (and b!3999947 res!1625010) b!3999948))

(declare-fun m!4582171 () Bool)

(assert (=> b!3999947 m!4582171))

(assert (=> b!3999947 m!4581159))

(assert (=> b!3999947 m!4581043))

(declare-fun m!4582173 () Bool)

(assert (=> b!3999946 m!4582173))

(declare-fun m!4582175 () Bool)

(assert (=> d!1183526 m!4582175))

(declare-fun m!4582177 () Bool)

(assert (=> d!1183526 m!4582177))

(assert (=> d!1183526 m!4581051))

(assert (=> b!3999111 d!1183526))

(declare-fun d!1183528 () Bool)

(assert (=> d!1183528 (= (++!11184 (++!11184 prefix!494 newSuffix!27) lt!1413535) (++!11184 prefix!494 (++!11184 newSuffix!27 lt!1413535)))))

(declare-fun lt!1413853 () Unit!61732)

(assert (=> d!1183528 (= lt!1413853 (choose!24126 prefix!494 newSuffix!27 lt!1413535))))

(assert (=> d!1183528 (= (lemmaConcatAssociativity!2504 prefix!494 newSuffix!27 lt!1413535) lt!1413853)))

(declare-fun bs!588831 () Bool)

(assert (= bs!588831 d!1183528))

(declare-fun m!4582179 () Bool)

(assert (=> bs!588831 m!4582179))

(assert (=> bs!588831 m!4580877))

(declare-fun m!4582181 () Bool)

(assert (=> bs!588831 m!4582181))

(assert (=> bs!588831 m!4580945))

(assert (=> bs!588831 m!4580877))

(assert (=> bs!588831 m!4580945))

(declare-fun m!4582183 () Bool)

(assert (=> bs!588831 m!4582183))

(assert (=> b!3999111 d!1183528))

(declare-fun b!3999951 () Bool)

(declare-fun res!1625012 () Bool)

(declare-fun e!2480020 () Bool)

(assert (=> b!3999951 (=> (not res!1625012) (not e!2480020))))

(declare-fun lt!1413854 () List!42896)

(assert (=> b!3999951 (= res!1625012 (= (size!31986 lt!1413854) (+ (size!31986 lt!1413480) (size!31986 suffixResult!105))))))

(declare-fun b!3999950 () Bool)

(declare-fun e!2480019 () List!42896)

(assert (=> b!3999950 (= e!2480019 (Cons!42772 (h!48192 lt!1413480) (++!11184 (t!332127 lt!1413480) suffixResult!105)))))

(declare-fun d!1183530 () Bool)

(assert (=> d!1183530 e!2480020))

(declare-fun res!1625013 () Bool)

(assert (=> d!1183530 (=> (not res!1625013) (not e!2480020))))

(assert (=> d!1183530 (= res!1625013 (= (content!6489 lt!1413854) ((_ map or) (content!6489 lt!1413480) (content!6489 suffixResult!105))))))

(assert (=> d!1183530 (= lt!1413854 e!2480019)))

(declare-fun c!691927 () Bool)

(assert (=> d!1183530 (= c!691927 ((_ is Nil!42772) lt!1413480))))

(assert (=> d!1183530 (= (++!11184 lt!1413480 suffixResult!105) lt!1413854)))

(declare-fun b!3999949 () Bool)

(assert (=> b!3999949 (= e!2480019 suffixResult!105)))

(declare-fun b!3999952 () Bool)

(assert (=> b!3999952 (= e!2480020 (or (not (= suffixResult!105 Nil!42772)) (= lt!1413854 lt!1413480)))))

(assert (= (and d!1183530 c!691927) b!3999949))

(assert (= (and d!1183530 (not c!691927)) b!3999950))

(assert (= (and d!1183530 res!1625013) b!3999951))

(assert (= (and b!3999951 res!1625012) b!3999952))

(declare-fun m!4582185 () Bool)

(assert (=> b!3999951 m!4582185))

(assert (=> b!3999951 m!4580927))

(declare-fun m!4582187 () Bool)

(assert (=> b!3999951 m!4582187))

(declare-fun m!4582189 () Bool)

(assert (=> b!3999950 m!4582189))

(declare-fun m!4582191 () Bool)

(assert (=> d!1183530 m!4582191))

(assert (=> d!1183530 m!4581199))

(declare-fun m!4582193 () Bool)

(assert (=> d!1183530 m!4582193))

(assert (=> b!3999090 d!1183530))

(declare-fun d!1183532 () Bool)

(declare-fun e!2480021 () Bool)

(assert (=> d!1183532 e!2480021))

(declare-fun res!1625014 () Bool)

(assert (=> d!1183532 (=> (not res!1625014) (not e!2480021))))

(assert (=> d!1183532 (= res!1625014 (semiInverseModEq!2909 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (toValue!9270 (transformation!6782 (rule!9812 token!484)))))))

(declare-fun Unit!61749 () Unit!61732)

(assert (=> d!1183532 (= (lemmaInv!997 (transformation!6782 (rule!9812 token!484))) Unit!61749)))

(declare-fun b!3999953 () Bool)

(assert (=> b!3999953 (= e!2480021 (equivClasses!2808 (toChars!9129 (transformation!6782 (rule!9812 token!484))) (toValue!9270 (transformation!6782 (rule!9812 token!484)))))))

(assert (= (and d!1183532 res!1625014) b!3999953))

(assert (=> d!1183532 m!4581255))

(assert (=> b!3999953 m!4581257))

(assert (=> b!3999090 d!1183532))

(declare-fun d!1183534 () Bool)

(declare-fun res!1625015 () Bool)

(declare-fun e!2480022 () Bool)

(assert (=> d!1183534 (=> (not res!1625015) (not e!2480022))))

(assert (=> d!1183534 (= res!1625015 (validRegex!5302 (regex!6782 (rule!9812 token!484))))))

(assert (=> d!1183534 (= (ruleValid!2714 thiss!21717 (rule!9812 token!484)) e!2480022)))

(declare-fun b!3999954 () Bool)

(declare-fun res!1625016 () Bool)

(assert (=> b!3999954 (=> (not res!1625016) (not e!2480022))))

(assert (=> b!3999954 (= res!1625016 (not (nullable!4102 (regex!6782 (rule!9812 token!484)))))))

(declare-fun b!3999955 () Bool)

(assert (=> b!3999955 (= e!2480022 (not (= (tag!7642 (rule!9812 token!484)) (String!48779 ""))))))

(assert (= (and d!1183534 res!1625015) b!3999954))

(assert (= (and b!3999954 res!1625016) b!3999955))

(assert (=> d!1183534 m!4581911))

(assert (=> b!3999954 m!4581907))

(assert (=> b!3999090 d!1183534))

(declare-fun d!1183536 () Bool)

(assert (=> d!1183536 (ruleValid!2714 thiss!21717 (rule!9812 token!484))))

(declare-fun lt!1413855 () Unit!61732)

(assert (=> d!1183536 (= lt!1413855 (choose!24140 thiss!21717 (rule!9812 token!484) rules!2999))))

(assert (=> d!1183536 (contains!8511 rules!2999 (rule!9812 token!484))))

(assert (=> d!1183536 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1788 thiss!21717 (rule!9812 token!484) rules!2999) lt!1413855)))

(declare-fun bs!588832 () Bool)

(assert (= bs!588832 d!1183536))

(assert (=> bs!588832 m!4580907))

(declare-fun m!4582195 () Bool)

(assert (=> bs!588832 m!4582195))

(assert (=> bs!588832 m!4581809))

(assert (=> b!3999090 d!1183536))

(declare-fun b!3999967 () Bool)

(declare-fun e!2480025 () Bool)

(declare-fun tp!1217160 () Bool)

(declare-fun tp!1217158 () Bool)

(assert (=> b!3999967 (= e!2480025 (and tp!1217160 tp!1217158))))

(declare-fun b!3999968 () Bool)

(declare-fun tp!1217161 () Bool)

(assert (=> b!3999968 (= e!2480025 tp!1217161)))

(declare-fun b!3999969 () Bool)

(declare-fun tp!1217159 () Bool)

(declare-fun tp!1217157 () Bool)

(assert (=> b!3999969 (= e!2480025 (and tp!1217159 tp!1217157))))

(assert (=> b!3999089 (= tp!1217094 e!2480025)))

(declare-fun b!3999966 () Bool)

(assert (=> b!3999966 (= e!2480025 tp_is_empty!20345)))

(assert (= (and b!3999089 ((_ is ElementMatch!11687) (regex!6782 (h!48194 rules!2999)))) b!3999966))

(assert (= (and b!3999089 ((_ is Concat!18700) (regex!6782 (h!48194 rules!2999)))) b!3999967))

(assert (= (and b!3999089 ((_ is Star!11687) (regex!6782 (h!48194 rules!2999)))) b!3999968))

(assert (= (and b!3999089 ((_ is Union!11687) (regex!6782 (h!48194 rules!2999)))) b!3999969))

(declare-fun b!3999974 () Bool)

(declare-fun e!2480028 () Bool)

(declare-fun tp!1217164 () Bool)

(assert (=> b!3999974 (= e!2480028 (and tp_is_empty!20345 tp!1217164))))

(assert (=> b!3999105 (= tp!1217090 e!2480028)))

(assert (= (and b!3999105 ((_ is Cons!42772) (t!332127 prefix!494))) b!3999974))

(declare-fun b!3999975 () Bool)

(declare-fun e!2480029 () Bool)

(declare-fun tp!1217165 () Bool)

(assert (=> b!3999975 (= e!2480029 (and tp_is_empty!20345 tp!1217165))))

(assert (=> b!3999116 (= tp!1217087 e!2480029)))

(assert (= (and b!3999116 ((_ is Cons!42772) (t!332127 newSuffixResult!27))) b!3999975))

(declare-fun b!3999976 () Bool)

(declare-fun e!2480030 () Bool)

(declare-fun tp!1217166 () Bool)

(assert (=> b!3999976 (= e!2480030 (and tp_is_empty!20345 tp!1217166))))

(assert (=> b!3999093 (= tp!1217088 e!2480030)))

(assert (= (and b!3999093 ((_ is Cons!42772) (originalCharacters!7382 token!484))) b!3999976))

(declare-fun b!3999977 () Bool)

(declare-fun e!2480031 () Bool)

(declare-fun tp!1217167 () Bool)

(assert (=> b!3999977 (= e!2480031 (and tp_is_empty!20345 tp!1217167))))

(assert (=> b!3999129 (= tp!1217092 e!2480031)))

(assert (= (and b!3999129 ((_ is Cons!42772) (t!332127 newSuffix!27))) b!3999977))

(declare-fun b!3999978 () Bool)

(declare-fun e!2480032 () Bool)

(declare-fun tp!1217168 () Bool)

(assert (=> b!3999978 (= e!2480032 (and tp_is_empty!20345 tp!1217168))))

(assert (=> b!3999124 (= tp!1217086 e!2480032)))

(assert (= (and b!3999124 ((_ is Cons!42772) (t!332127 suffix!1299))) b!3999978))

(declare-fun b!3999980 () Bool)

(declare-fun e!2480033 () Bool)

(declare-fun tp!1217172 () Bool)

(declare-fun tp!1217170 () Bool)

(assert (=> b!3999980 (= e!2480033 (and tp!1217172 tp!1217170))))

(declare-fun b!3999981 () Bool)

(declare-fun tp!1217173 () Bool)

(assert (=> b!3999981 (= e!2480033 tp!1217173)))

(declare-fun b!3999982 () Bool)

(declare-fun tp!1217171 () Bool)

(declare-fun tp!1217169 () Bool)

(assert (=> b!3999982 (= e!2480033 (and tp!1217171 tp!1217169))))

(assert (=> b!3999107 (= tp!1217093 e!2480033)))

(declare-fun b!3999979 () Bool)

(assert (=> b!3999979 (= e!2480033 tp_is_empty!20345)))

(assert (= (and b!3999107 ((_ is ElementMatch!11687) (regex!6782 (rule!9812 token!484)))) b!3999979))

(assert (= (and b!3999107 ((_ is Concat!18700) (regex!6782 (rule!9812 token!484)))) b!3999980))

(assert (= (and b!3999107 ((_ is Star!11687) (regex!6782 (rule!9812 token!484)))) b!3999981))

(assert (= (and b!3999107 ((_ is Union!11687) (regex!6782 (rule!9812 token!484)))) b!3999982))

(declare-fun b!3999983 () Bool)

(declare-fun e!2480034 () Bool)

(declare-fun tp!1217174 () Bool)

(assert (=> b!3999983 (= e!2480034 (and tp_is_empty!20345 tp!1217174))))

(assert (=> b!3999096 (= tp!1217091 e!2480034)))

(assert (= (and b!3999096 ((_ is Cons!42772) (t!332127 suffixResult!105))) b!3999983))

(declare-fun b!3999994 () Bool)

(declare-fun b_free!111109 () Bool)

(declare-fun b_next!111813 () Bool)

(assert (=> b!3999994 (= b_free!111109 (not b_next!111813))))

(declare-fun t!332171 () Bool)

(declare-fun tb!240533 () Bool)

(assert (=> (and b!3999994 (= (toValue!9270 (transformation!6782 (h!48194 (t!332129 rules!2999)))) (toValue!9270 (transformation!6782 (rule!9812 token!484)))) t!332171) tb!240533))

(declare-fun result!291514 () Bool)

(assert (= result!291514 result!291480))

(assert (=> d!1183374 t!332171))

(declare-fun t!332173 () Bool)

(declare-fun tb!240535 () Bool)

(assert (=> (and b!3999994 (= (toValue!9270 (transformation!6782 (h!48194 (t!332129 rules!2999)))) (toValue!9270 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))) t!332173) tb!240535))

(declare-fun result!291516 () Bool)

(assert (= result!291516 result!291500))

(assert (=> d!1183468 t!332173))

(declare-fun tp!1217185 () Bool)

(declare-fun b_and!307139 () Bool)

(assert (=> b!3999994 (= tp!1217185 (and (=> t!332171 result!291514) (=> t!332173 result!291516) b_and!307139))))

(declare-fun b_free!111111 () Bool)

(declare-fun b_next!111815 () Bool)

(assert (=> b!3999994 (= b_free!111111 (not b_next!111815))))

(declare-fun tb!240537 () Bool)

(declare-fun t!332175 () Bool)

(assert (=> (and b!3999994 (= (toChars!9129 (transformation!6782 (h!48194 (t!332129 rules!2999)))) (toChars!9129 (transformation!6782 (rule!9812 token!484)))) t!332175) tb!240537))

(declare-fun result!291518 () Bool)

(assert (= result!291518 result!291454))

(assert (=> b!3999141 t!332175))

(assert (=> d!1183466 t!332175))

(declare-fun t!332177 () Bool)

(declare-fun tb!240539 () Bool)

(assert (=> (and b!3999994 (= (toChars!9129 (transformation!6782 (h!48194 (t!332129 rules!2999)))) (toChars!9129 (transformation!6782 (rule!9812 (_1!24113 (v!39555 lt!1413494)))))) t!332177) tb!240539))

(declare-fun result!291520 () Bool)

(assert (= result!291520 result!291504))

(assert (=> d!1183490 t!332177))

(declare-fun tp!1217183 () Bool)

(declare-fun b_and!307141 () Bool)

(assert (=> b!3999994 (= tp!1217183 (and (=> t!332175 result!291518) (=> t!332177 result!291520) b_and!307141))))

(declare-fun e!2480045 () Bool)

(assert (=> b!3999994 (= e!2480045 (and tp!1217185 tp!1217183))))

(declare-fun tp!1217184 () Bool)

(declare-fun e!2480043 () Bool)

(declare-fun b!3999993 () Bool)

(assert (=> b!3999993 (= e!2480043 (and tp!1217184 (inv!57121 (tag!7642 (h!48194 (t!332129 rules!2999)))) (inv!57124 (transformation!6782 (h!48194 (t!332129 rules!2999)))) e!2480045))))

(declare-fun b!3999992 () Bool)

(declare-fun e!2480044 () Bool)

(declare-fun tp!1217186 () Bool)

(assert (=> b!3999992 (= e!2480044 (and e!2480043 tp!1217186))))

(assert (=> b!3999128 (= tp!1217097 e!2480044)))

(assert (= b!3999993 b!3999994))

(assert (= b!3999992 b!3999993))

(assert (= (and b!3999128 ((_ is Cons!42774) (t!332129 rules!2999))) b!3999992))

(declare-fun m!4582197 () Bool)

(assert (=> b!3999993 m!4582197))

(declare-fun m!4582199 () Bool)

(assert (=> b!3999993 m!4582199))

(declare-fun b_lambda!116713 () Bool)

(assert (= b_lambda!116707 (or (and b!3999113 b_free!111099) (and b!3999118 b_free!111103 (= (toChars!9129 (transformation!6782 (h!48194 rules!2999))) (toChars!9129 (transformation!6782 (rule!9812 token!484))))) (and b!3999994 b_free!111111 (= (toChars!9129 (transformation!6782 (h!48194 (t!332129 rules!2999)))) (toChars!9129 (transformation!6782 (rule!9812 token!484))))) b_lambda!116713)))

(declare-fun b_lambda!116715 () Bool)

(assert (= b_lambda!116699 (or (and b!3999113 b_free!111097) (and b!3999118 b_free!111101 (= (toValue!9270 (transformation!6782 (h!48194 rules!2999))) (toValue!9270 (transformation!6782 (rule!9812 token!484))))) (and b!3999994 b_free!111109 (= (toValue!9270 (transformation!6782 (h!48194 (t!332129 rules!2999)))) (toValue!9270 (transformation!6782 (rule!9812 token!484))))) b_lambda!116715)))

(declare-fun b_lambda!116717 () Bool)

(assert (= b_lambda!116687 (or (and b!3999113 b_free!111099) (and b!3999118 b_free!111103 (= (toChars!9129 (transformation!6782 (h!48194 rules!2999))) (toChars!9129 (transformation!6782 (rule!9812 token!484))))) (and b!3999994 b_free!111111 (= (toChars!9129 (transformation!6782 (h!48194 (t!332129 rules!2999)))) (toChars!9129 (transformation!6782 (rule!9812 token!484))))) b_lambda!116717)))

(check-sat (not d!1183136) (not b_next!111801) (not b!3999828) (not d!1183366) (not d!1183370) (not b!3999868) (not b!3999939) (not b!3999645) (not b!3999835) (not b!3999922) (not b!3999919) (not d!1183200) (not b!3999950) (not b!3999680) (not b!3999633) (not d!1183276) (not b_next!111813) (not d!1183386) (not b!3999882) (not b!3999847) (not b!3999793) (not b!3999884) (not b!3999694) (not b!3999823) (not b!3999474) (not d!1183452) (not b!3999632) (not b!3999889) (not b!3999885) (not b!3999629) (not d!1183522) (not b!3999690) (not d!1183192) (not b!3999858) (not b!3999977) (not d!1183384) (not d!1183470) (not b!3999453) (not b!3999768) (not d!1183490) (not b!3999969) (not b!3999192) (not b!3999817) (not d!1183382) (not d!1183432) (not b!3999293) (not b!3999795) (not b!3999888) (not b!3999938) (not b_lambda!116709) (not bm!285971) (not b!3999805) (not b!3999782) (not b!3999866) (not bm!285962) (not b!3999877) (not b!3999305) (not d!1183420) (not b!3999454) (not d!1183480) (not d!1183372) (not tb!240513) (not d!1183392) (not b!3999622) (not b!3999230) (not d!1183440) (not b!3999818) (not b!3999475) (not d!1183282) (not d!1183476) (not d!1183398) (not b!3999786) (not b!3999943) (not bm!285970) (not b!3999974) (not b!3999849) (not b!3999455) (not d!1183536) (not d!1183144) (not d!1183442) (not b!3999783) (not b!3999874) (not d!1183272) (not b!3999864) (not b!3999141) (not b!3999826) (not b!3999301) (not tb!240529) (not b!3999682) (not b!3999696) (not b!3999649) (not d!1183378) (not d!1183450) (not b!3999910) (not d!1183160) (not d!1183506) b_and!307135 (not b!3999292) (not b!3999881) (not b!3999368) (not d!1183466) (not d!1183494) (not b!3999921) (not b!3999452) (not bm!285973) (not b!3999980) (not d!1183388) (not b!3999967) (not d!1183446) (not b!3999833) b_and!307131 b_and!307141 (not b!3999850) (not b!3999892) (not b!3999918) (not b!3999812) (not b!3999457) (not b!3999832) (not b!3999355) (not b!3999471) (not d!1183376) (not b!3999681) (not b!3999620) (not b!3999472) (not b!3999820) (not d!1183422) (not b!3999927) (not d!1183430) (not tb!240493) (not b!3999840) (not b!3999470) (not b!3999946) (not b!3999983) (not b!3999915) (not b_lambda!116711) (not b!3999914) (not d!1183530) (not d!1183512) (not b!3999953) (not b!3999968) (not bm!285972) (not b!3999895) b_and!307137 b_and!307139 (not b!3999211) (not b!3999628) (not d!1183472) (not b!3999814) (not d!1183534) (not b!3999456) (not d!1183498) (not b!3999838) (not b!3999839) (not b!3999951) (not b!3999993) (not b_next!111803) (not b!3999617) (not b!3999800) (not b!3999872) (not b!3999285) (not b!3999871) (not b!3999616) (not b_lambda!116713) (not b!3999879) (not b!3999887) (not d!1183456) (not d!1183198) (not d!1183418) (not b_next!111805) (not b!3999834) (not b!3999304) (not b!3999930) (not tb!240525) (not d!1183504) (not b!3999870) (not d!1183502) (not b!3999897) (not b!3999913) (not b!3999836) (not b!3999687) (not b!3999790) (not b!3999862) (not b!3999978) (not b!3999976) (not b!3999844) (not b!3999920) (not b!3999890) (not d!1183208) (not b!3999841) (not b!3999982) (not b!3999975) (not d!1183516) (not d!1183202) (not d!1183510) (not b!3999623) (not d!1183496) (not d!1183484) (not d!1183526) (not b!3999947) (not b!3999367) (not b!3999942) (not d!1183528) (not b!3999822) (not b!3999161) (not b!3999940) (not d!1183448) (not d!1183464) (not b!3999695) (not b!3999934) (not b!3999821) (not b!3999142) (not b!3999825) (not b!3999621) (not b!3999476) (not b!3999954) (not d!1183424) (not b!3999855) (not b!3999883) (not b_next!111815) (not b!3999284) (not b!3999618) (not b!3999193) (not b!3999679) (not b_next!111807) (not bm!285968) (not d!1183214) (not d!1183138) (not d!1183478) (not b!3999878) (not d!1183532) (not b!3999300) (not b!3999981) (not d!1183438) (not b!3999908) (not b!3999907) (not b!3999831) (not d!1183514) (not d!1183222) (not b!3999837) (not b!3999451) (not b!3999769) (not d!1183500) (not d!1183524) (not b!3999624) (not b_lambda!116717) (not b_lambda!116715) (not b!3999286) (not b!3999816) (not b!3999936) (not d!1183228) (not b!3999798) tp_is_empty!20345 (not b!3999875) (not b!3999366) (not d!1183380) (not b!3999797) (not d!1183482) (not b!3999904) (not d!1183390) (not b!3999863) (not b!3999935) (not b!3999799) (not d!1183458) (not b!3999992) (not d!1183368) (not b!3999813) (not b!3999788) (not b!3999845) (not b!3999848) (not b!3999808) b_and!307133 (not d!1183488) (not b!3999792) (not b!3999898) (not b!3999458))
(check-sat (not b_next!111801) (not b_next!111813) b_and!307135 b_and!307131 b_and!307141 (not b_next!111803) (not b_next!111805) b_and!307133 b_and!307137 b_and!307139 (not b_next!111815) (not b_next!111807))
