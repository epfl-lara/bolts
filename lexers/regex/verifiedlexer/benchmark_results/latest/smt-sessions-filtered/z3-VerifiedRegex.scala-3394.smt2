; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192028 () Bool)

(assert start!192028)

(declare-fun b!1915292 () Bool)

(declare-fun b_free!54249 () Bool)

(declare-fun b_next!54953 () Bool)

(assert (=> b!1915292 (= b_free!54249 (not b_next!54953))))

(declare-fun tp!546633 () Bool)

(declare-fun b_and!149359 () Bool)

(assert (=> b!1915292 (= tp!546633 b_and!149359)))

(declare-fun b_free!54251 () Bool)

(declare-fun b_next!54955 () Bool)

(assert (=> b!1915292 (= b_free!54251 (not b_next!54955))))

(declare-fun tp!546631 () Bool)

(declare-fun b_and!149361 () Bool)

(assert (=> b!1915292 (= tp!546631 b_and!149361)))

(declare-fun b!1915322 () Bool)

(declare-fun b_free!54253 () Bool)

(declare-fun b_next!54957 () Bool)

(assert (=> b!1915322 (= b_free!54253 (not b_next!54957))))

(declare-fun tp!546632 () Bool)

(declare-fun b_and!149363 () Bool)

(assert (=> b!1915322 (= tp!546632 b_and!149363)))

(declare-fun b_free!54255 () Bool)

(declare-fun b_next!54959 () Bool)

(assert (=> b!1915322 (= b_free!54255 (not b_next!54959))))

(declare-fun tp!546630 () Bool)

(declare-fun b_and!149365 () Bool)

(assert (=> b!1915322 (= tp!546630 b_and!149365)))

(declare-fun b!1915320 () Bool)

(declare-fun b_free!54257 () Bool)

(declare-fun b_next!54961 () Bool)

(assert (=> b!1915320 (= b_free!54257 (not b_next!54961))))

(declare-fun tp!546629 () Bool)

(declare-fun b_and!149367 () Bool)

(assert (=> b!1915320 (= tp!546629 b_and!149367)))

(declare-fun b_free!54259 () Bool)

(declare-fun b_next!54963 () Bool)

(assert (=> b!1915320 (= b_free!54259 (not b_next!54963))))

(declare-fun tp!546640 () Bool)

(declare-fun b_and!149369 () Bool)

(assert (=> b!1915320 (= tp!546640 b_and!149369)))

(declare-fun b!1915291 () Bool)

(declare-fun e!1223604 () Bool)

(declare-fun e!1223608 () Bool)

(assert (=> b!1915291 (= e!1223604 e!1223608)))

(declare-fun res!855949 () Bool)

(assert (=> b!1915291 (=> res!855949 e!1223608)))

(declare-datatypes ((List!21722 0))(
  ( (Nil!21640) (Cons!21640 (h!27041 (_ BitVec 16)) (t!178403 List!21722)) )
))
(declare-datatypes ((TokenValue!4000 0))(
  ( (FloatLiteralValue!8000 (text!28445 List!21722)) (TokenValueExt!3999 (__x!13498 Int)) (Broken!20000 (value!121689 List!21722)) (Object!4081) (End!4000) (Def!4000) (Underscore!4000) (Match!4000) (Else!4000) (Error!4000) (Case!4000) (If!4000) (Extends!4000) (Abstract!4000) (Class!4000) (Val!4000) (DelimiterValue!8000 (del!4060 List!21722)) (KeywordValue!4006 (value!121690 List!21722)) (CommentValue!8000 (value!121691 List!21722)) (WhitespaceValue!8000 (value!121692 List!21722)) (IndentationValue!4000 (value!121693 List!21722)) (String!25117) (Int32!4000) (Broken!20001 (value!121694 List!21722)) (Boolean!4001) (Unit!36033) (OperatorValue!4003 (op!4060 List!21722)) (IdentifierValue!8000 (value!121695 List!21722)) (IdentifierValue!8001 (value!121696 List!21722)) (WhitespaceValue!8001 (value!121697 List!21722)) (True!8000) (False!8000) (Broken!20002 (value!121698 List!21722)) (Broken!20003 (value!121699 List!21722)) (True!8001) (RightBrace!4000) (RightBracket!4000) (Colon!4000) (Null!4000) (Comma!4000) (LeftBracket!4000) (False!8001) (LeftBrace!4000) (ImaginaryLiteralValue!4000 (text!28446 List!21722)) (StringLiteralValue!12000 (value!121700 List!21722)) (EOFValue!4000 (value!121701 List!21722)) (IdentValue!4000 (value!121702 List!21722)) (DelimiterValue!8001 (value!121703 List!21722)) (DedentValue!4000 (value!121704 List!21722)) (NewLineValue!4000 (value!121705 List!21722)) (IntegerValue!12000 (value!121706 (_ BitVec 32)) (text!28447 List!21722)) (IntegerValue!12001 (value!121707 Int) (text!28448 List!21722)) (Times!4000) (Or!4000) (Equal!4000) (Minus!4000) (Broken!20004 (value!121708 List!21722)) (And!4000) (Div!4000) (LessEqual!4000) (Mod!4000) (Concat!9289) (Not!4000) (Plus!4000) (SpaceValue!4000 (value!121709 List!21722)) (IntegerValue!12002 (value!121710 Int) (text!28449 List!21722)) (StringLiteralValue!12001 (text!28450 List!21722)) (FloatLiteralValue!8001 (text!28451 List!21722)) (BytesLiteralValue!4000 (value!121711 List!21722)) (CommentValue!8001 (value!121712 List!21722)) (StringLiteralValue!12002 (value!121713 List!21722)) (ErrorTokenValue!4000 (msg!4061 List!21722)) )
))
(declare-datatypes ((C!10724 0))(
  ( (C!10725 (val!6314 Int)) )
))
(declare-datatypes ((List!21723 0))(
  ( (Nil!21641) (Cons!21641 (h!27042 C!10724) (t!178404 List!21723)) )
))
(declare-datatypes ((Regex!5289 0))(
  ( (ElementMatch!5289 (c!311806 C!10724)) (Concat!9290 (regOne!11090 Regex!5289) (regTwo!11090 Regex!5289)) (EmptyExpr!5289) (Star!5289 (reg!5618 Regex!5289)) (EmptyLang!5289) (Union!5289 (regOne!11091 Regex!5289) (regTwo!11091 Regex!5289)) )
))
(declare-datatypes ((String!25118 0))(
  ( (String!25119 (value!121714 String)) )
))
(declare-datatypes ((IArray!14445 0))(
  ( (IArray!14446 (innerList!7280 List!21723)) )
))
(declare-datatypes ((Conc!7220 0))(
  ( (Node!7220 (left!17282 Conc!7220) (right!17612 Conc!7220) (csize!14670 Int) (cheight!7431 Int)) (Leaf!10615 (xs!10114 IArray!14445) (csize!14671 Int)) (Empty!7220) )
))
(declare-datatypes ((BalanceConc!14256 0))(
  ( (BalanceConc!14257 (c!311807 Conc!7220)) )
))
(declare-datatypes ((TokenValueInjection!7584 0))(
  ( (TokenValueInjection!7585 (toValue!5493 Int) (toChars!5352 Int)) )
))
(declare-datatypes ((Rule!7528 0))(
  ( (Rule!7529 (regex!3864 Regex!5289) (tag!4302 String!25118) (isSeparator!3864 Bool) (transformation!3864 TokenValueInjection!7584)) )
))
(declare-datatypes ((Token!7280 0))(
  ( (Token!7281 (value!121715 TokenValue!4000) (rule!6065 Rule!7528) (size!17004 Int) (originalCharacters!4671 List!21723)) )
))
(declare-datatypes ((List!21724 0))(
  ( (Nil!21642) (Cons!21642 (h!27043 Token!7280) (t!178405 List!21724)) )
))
(declare-fun tokens!598 () List!21724)

(declare-fun isEmpty!13325 (List!21724) Bool)

(assert (=> b!1915291 (= res!855949 (isEmpty!13325 tokens!598))))

(declare-datatypes ((LexerInterface!3477 0))(
  ( (LexerInterfaceExt!3474 (__x!13499 Int)) (Lexer!3475) )
))
(declare-fun thiss!23328 () LexerInterface!3477)

(declare-fun lt!733910 () List!21723)

(declare-fun lt!733922 () List!21723)

(declare-datatypes ((List!21725 0))(
  ( (Nil!21643) (Cons!21643 (h!27044 Rule!7528) (t!178406 List!21725)) )
))
(declare-fun rules!3198 () List!21725)

(declare-datatypes ((tuple2!20370 0))(
  ( (tuple2!20371 (_1!11654 Token!7280) (_2!11654 List!21723)) )
))
(declare-datatypes ((Option!4433 0))(
  ( (None!4432) (Some!4432 (v!26497 tuple2!20370)) )
))
(declare-fun maxPrefix!1923 (LexerInterface!3477 List!21725 List!21723) Option!4433)

(assert (=> b!1915291 (= (maxPrefix!1923 thiss!23328 rules!3198 lt!733922) (Some!4432 (tuple2!20371 (h!27043 tokens!598) lt!733910)))))

(declare-fun separatorToken!354 () Token!7280)

(declare-datatypes ((Unit!36034 0))(
  ( (Unit!36035) )
))
(declare-fun lt!733912 () Unit!36034)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!100 (LexerInterface!3477 List!21725 Token!7280 Rule!7528 List!21723 Rule!7528) Unit!36034)

(assert (=> b!1915291 (= lt!733912 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!100 thiss!23328 rules!3198 (h!27043 tokens!598) (rule!6065 (h!27043 tokens!598)) lt!733910 (rule!6065 separatorToken!354)))))

(declare-fun e!1223599 () Bool)

(assert (=> b!1915292 (= e!1223599 (and tp!546633 tp!546631))))

(declare-fun b!1915293 () Bool)

(declare-fun res!855937 () Bool)

(declare-fun e!1223600 () Bool)

(assert (=> b!1915293 (=> (not res!855937) (not e!1223600))))

(declare-fun rulesInvariant!3084 (LexerInterface!3477 List!21725) Bool)

(assert (=> b!1915293 (= res!855937 (rulesInvariant!3084 thiss!23328 rules!3198))))

(declare-fun b!1915294 () Bool)

(declare-fun e!1223606 () Bool)

(declare-fun tp!546634 () Bool)

(declare-fun e!1223609 () Bool)

(declare-fun inv!28738 (Token!7280) Bool)

(assert (=> b!1915294 (= e!1223606 (and (inv!28738 (h!27043 tokens!598)) e!1223609 tp!546634))))

(declare-fun b!1915295 () Bool)

(declare-fun res!855944 () Bool)

(assert (=> b!1915295 (=> res!855944 e!1223608)))

(declare-fun isDefined!3731 (Option!4433) Bool)

(declare-fun printWithSeparatorTokenWhenNeededList!520 (LexerInterface!3477 List!21725 List!21724 Token!7280) List!21723)

(assert (=> b!1915295 (= res!855944 (not (isDefined!3731 (maxPrefix!1923 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1915296 () Bool)

(declare-fun e!1223598 () Unit!36034)

(declare-fun Unit!36036 () Unit!36034)

(assert (=> b!1915296 (= e!1223598 Unit!36036)))

(declare-fun b!1915297 () Bool)

(declare-fun e!1223610 () Bool)

(assert (=> b!1915297 (= e!1223610 false)))

(declare-fun b!1915298 () Bool)

(declare-fun e!1223618 () Bool)

(declare-fun e!1223613 () Bool)

(assert (=> b!1915298 (= e!1223618 e!1223613)))

(declare-fun res!855939 () Bool)

(assert (=> b!1915298 (=> res!855939 e!1223613)))

(declare-fun lt!733903 () List!21723)

(declare-fun lt!733932 () List!21723)

(declare-fun lt!733911 () List!21723)

(assert (=> b!1915298 (= res!855939 (or (not (= lt!733903 lt!733911)) (not (= lt!733911 lt!733932)) (not (= lt!733903 lt!733932))))))

(declare-fun printList!1060 (LexerInterface!3477 List!21724) List!21723)

(assert (=> b!1915298 (= lt!733911 (printList!1060 thiss!23328 (Cons!21642 (h!27043 tokens!598) Nil!21642)))))

(declare-fun lt!733926 () BalanceConc!14256)

(declare-fun list!8792 (BalanceConc!14256) List!21723)

(assert (=> b!1915298 (= lt!733903 (list!8792 lt!733926))))

(declare-datatypes ((IArray!14447 0))(
  ( (IArray!14448 (innerList!7281 List!21724)) )
))
(declare-datatypes ((Conc!7221 0))(
  ( (Node!7221 (left!17283 Conc!7221) (right!17613 Conc!7221) (csize!14672 Int) (cheight!7432 Int)) (Leaf!10616 (xs!10115 IArray!14447) (csize!14673 Int)) (Empty!7221) )
))
(declare-datatypes ((BalanceConc!14258 0))(
  ( (BalanceConc!14259 (c!311808 Conc!7221)) )
))
(declare-fun lt!733919 () BalanceConc!14258)

(declare-fun printTailRec!994 (LexerInterface!3477 BalanceConc!14258 Int BalanceConc!14256) BalanceConc!14256)

(assert (=> b!1915298 (= lt!733926 (printTailRec!994 thiss!23328 lt!733919 0 (BalanceConc!14257 Empty!7220)))))

(declare-fun print!1487 (LexerInterface!3477 BalanceConc!14258) BalanceConc!14256)

(assert (=> b!1915298 (= lt!733926 (print!1487 thiss!23328 lt!733919))))

(declare-fun singletonSeq!1887 (Token!7280) BalanceConc!14258)

(assert (=> b!1915298 (= lt!733919 (singletonSeq!1887 (h!27043 tokens!598)))))

(declare-fun lt!733915 () List!21723)

(declare-fun lt!733924 () C!10724)

(declare-fun contains!3932 (List!21723 C!10724) Bool)

(assert (=> b!1915298 (not (contains!3932 lt!733915 lt!733924))))

(declare-fun usedCharacters!372 (Regex!5289) List!21723)

(assert (=> b!1915298 (= lt!733915 (usedCharacters!372 (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun lt!733906 () Unit!36034)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!68 (LexerInterface!3477 List!21725 List!21725 Rule!7528 Rule!7528 C!10724) Unit!36034)

(assert (=> b!1915298 (= lt!733906 (lemmaNonSepRuleNotContainsCharContainedInASepRule!68 thiss!23328 rules!3198 rules!3198 (rule!6065 (h!27043 tokens!598)) (rule!6065 separatorToken!354) lt!733924))))

(declare-fun lt!733929 () Unit!36034)

(assert (=> b!1915298 (= lt!733929 e!1223598)))

(declare-fun c!311805 () Bool)

(declare-fun lt!733914 () List!21723)

(assert (=> b!1915298 (= c!311805 (not (contains!3932 lt!733914 lt!733924)))))

(declare-fun lt!733902 () List!21723)

(declare-fun head!4472 (List!21723) C!10724)

(assert (=> b!1915298 (= lt!733924 (head!4472 lt!733902))))

(assert (=> b!1915298 (= lt!733914 (usedCharacters!372 (regex!3864 (rule!6065 separatorToken!354))))))

(declare-fun lt!733909 () List!21723)

(assert (=> b!1915298 (= lt!733909 lt!733922)))

(declare-fun ++!5817 (List!21723 List!21723) List!21723)

(assert (=> b!1915298 (= lt!733922 (++!5817 lt!733932 lt!733910))))

(declare-fun lt!733920 () List!21723)

(declare-fun lt!733899 () List!21723)

(assert (=> b!1915298 (= lt!733909 (++!5817 lt!733920 lt!733899))))

(assert (=> b!1915298 (= lt!733910 (++!5817 lt!733902 lt!733899))))

(assert (=> b!1915298 (= lt!733920 (++!5817 lt!733932 lt!733902))))

(declare-fun lt!733901 () Unit!36034)

(declare-fun lemmaConcatAssociativity!1179 (List!21723 List!21723 List!21723) Unit!36034)

(assert (=> b!1915298 (= lt!733901 (lemmaConcatAssociativity!1179 lt!733932 lt!733902 lt!733899))))

(declare-fun res!855952 () Bool)

(assert (=> start!192028 (=> (not res!855952) (not e!1223600))))

(get-info :version)

(assert (=> start!192028 (= res!855952 ((_ is Lexer!3475) thiss!23328))))

(assert (=> start!192028 e!1223600))

(assert (=> start!192028 true))

(declare-fun e!1223594 () Bool)

(assert (=> start!192028 e!1223594))

(assert (=> start!192028 e!1223606))

(declare-fun e!1223611 () Bool)

(assert (=> start!192028 (and (inv!28738 separatorToken!354) e!1223611)))

(declare-fun b!1915299 () Bool)

(declare-fun e!1223595 () Bool)

(declare-fun e!1223603 () Bool)

(assert (=> b!1915299 (= e!1223595 e!1223603)))

(declare-fun res!855955 () Bool)

(assert (=> b!1915299 (=> (not res!855955) (not e!1223603))))

(declare-fun lt!733905 () Rule!7528)

(declare-fun matchR!2575 (Regex!5289 List!21723) Bool)

(assert (=> b!1915299 (= res!855955 (matchR!2575 (regex!3864 lt!733905) lt!733902))))

(declare-datatypes ((Option!4434 0))(
  ( (None!4433) (Some!4433 (v!26498 Rule!7528)) )
))
(declare-fun lt!733916 () Option!4434)

(declare-fun get!6772 (Option!4434) Rule!7528)

(assert (=> b!1915299 (= lt!733905 (get!6772 lt!733916))))

(declare-fun b!1915300 () Bool)

(declare-fun res!855941 () Bool)

(assert (=> b!1915300 (=> res!855941 e!1223613)))

(declare-fun contains!3933 (List!21725 Rule!7528) Bool)

(assert (=> b!1915300 (= res!855941 (not (contains!3933 rules!3198 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun b!1915301 () Bool)

(declare-fun res!855943 () Bool)

(assert (=> b!1915301 (=> (not res!855943) (not e!1223600))))

(assert (=> b!1915301 (= res!855943 ((_ is Cons!21642) tokens!598))))

(declare-fun b!1915302 () Bool)

(declare-fun e!1223607 () Bool)

(declare-fun e!1223617 () Bool)

(declare-fun tp!546639 () Bool)

(declare-fun inv!28735 (String!25118) Bool)

(declare-fun inv!28739 (TokenValueInjection!7584) Bool)

(assert (=> b!1915302 (= e!1223617 (and tp!546639 (inv!28735 (tag!4302 (h!27044 rules!3198))) (inv!28739 (transformation!3864 (h!27044 rules!3198))) e!1223607))))

(declare-fun b!1915303 () Bool)

(declare-fun e!1223619 () Bool)

(assert (=> b!1915303 (= e!1223613 e!1223619)))

(declare-fun res!855953 () Bool)

(assert (=> b!1915303 (=> res!855953 e!1223619)))

(assert (=> b!1915303 (= res!855953 (not (matchR!2575 (regex!3864 (rule!6065 (h!27043 tokens!598))) lt!733932)))))

(declare-fun ruleValid!1183 (LexerInterface!3477 Rule!7528) Bool)

(assert (=> b!1915303 (ruleValid!1183 thiss!23328 (rule!6065 (h!27043 tokens!598)))))

(declare-fun lt!733900 () Unit!36034)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!680 (LexerInterface!3477 Rule!7528 List!21725) Unit!36034)

(assert (=> b!1915303 (= lt!733900 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!680 thiss!23328 (rule!6065 (h!27043 tokens!598)) rules!3198))))

(declare-fun b!1915304 () Bool)

(declare-fun res!855956 () Bool)

(assert (=> b!1915304 (=> res!855956 e!1223613)))

(declare-fun rulesProduceIndividualToken!1649 (LexerInterface!3477 List!21725 Token!7280) Bool)

(assert (=> b!1915304 (= res!855956 (not (rulesProduceIndividualToken!1649 thiss!23328 rules!3198 (h!27043 tokens!598))))))

(declare-fun b!1915305 () Bool)

(declare-fun res!855932 () Bool)

(assert (=> b!1915305 (=> res!855932 e!1223613)))

(assert (=> b!1915305 (= res!855932 (not (contains!3933 rules!3198 (rule!6065 separatorToken!354))))))

(declare-fun b!1915306 () Bool)

(declare-fun res!855930 () Bool)

(assert (=> b!1915306 (=> res!855930 e!1223619)))

(declare-fun isEmpty!13326 (List!21723) Bool)

(assert (=> b!1915306 (= res!855930 (isEmpty!13326 lt!733910))))

(declare-fun b!1915307 () Bool)

(declare-fun e!1223597 () Bool)

(declare-fun tp!546628 () Bool)

(assert (=> b!1915307 (= e!1223597 (and tp!546628 (inv!28735 (tag!4302 (rule!6065 (h!27043 tokens!598)))) (inv!28739 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) e!1223599))))

(declare-fun e!1223615 () Bool)

(declare-fun tp!546637 () Bool)

(declare-fun e!1223616 () Bool)

(declare-fun b!1915308 () Bool)

(assert (=> b!1915308 (= e!1223615 (and tp!546637 (inv!28735 (tag!4302 (rule!6065 separatorToken!354))) (inv!28739 (transformation!3864 (rule!6065 separatorToken!354))) e!1223616))))

(declare-fun b!1915309 () Bool)

(declare-fun res!855951 () Bool)

(assert (=> b!1915309 (=> res!855951 e!1223613)))

(assert (=> b!1915309 (= res!855951 (isSeparator!3864 (rule!6065 (h!27043 tokens!598))))))

(declare-fun b!1915310 () Bool)

(declare-fun res!855933 () Bool)

(assert (=> b!1915310 (=> (not res!855933) (not e!1223600))))

(assert (=> b!1915310 (= res!855933 (rulesProduceIndividualToken!1649 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1915311 () Bool)

(declare-fun tp!546635 () Bool)

(assert (=> b!1915311 (= e!1223594 (and e!1223617 tp!546635))))

(declare-fun b!1915312 () Bool)

(declare-fun res!855948 () Bool)

(assert (=> b!1915312 (=> (not res!855948) (not e!1223600))))

(declare-fun isEmpty!13327 (List!21725) Bool)

(assert (=> b!1915312 (= res!855948 (not (isEmpty!13327 rules!3198)))))

(declare-fun b!1915313 () Bool)

(assert (=> b!1915313 (= e!1223600 (not e!1223618))))

(declare-fun res!855945 () Bool)

(assert (=> b!1915313 (=> res!855945 e!1223618)))

(declare-fun lt!733931 () Bool)

(declare-fun lt!733925 () Option!4433)

(assert (=> b!1915313 (= res!855945 (or (and (not lt!733931) (= (_1!11654 (v!26497 lt!733925)) (h!27043 tokens!598))) lt!733931 (= (_1!11654 (v!26497 lt!733925)) (h!27043 tokens!598))))))

(assert (=> b!1915313 (= lt!733931 (not ((_ is Some!4432) lt!733925)))))

(assert (=> b!1915313 (= lt!733925 (maxPrefix!1923 thiss!23328 rules!3198 (++!5817 lt!733932 lt!733899)))))

(assert (=> b!1915313 (= lt!733899 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 (t!178405 tokens!598) separatorToken!354))))

(declare-fun e!1223612 () Bool)

(assert (=> b!1915313 e!1223612))

(declare-fun res!855938 () Bool)

(assert (=> b!1915313 (=> (not res!855938) (not e!1223612))))

(declare-fun lt!733928 () Option!4434)

(declare-fun isDefined!3732 (Option!4434) Bool)

(assert (=> b!1915313 (= res!855938 (isDefined!3732 lt!733928))))

(declare-fun getRuleFromTag!707 (LexerInterface!3477 List!21725 String!25118) Option!4434)

(assert (=> b!1915313 (= lt!733928 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun lt!733927 () Unit!36034)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!707 (LexerInterface!3477 List!21725 List!21723 Token!7280) Unit!36034)

(assert (=> b!1915313 (= lt!733927 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!707 thiss!23328 rules!3198 lt!733932 (h!27043 tokens!598)))))

(declare-fun lt!733908 () tuple2!20370)

(assert (=> b!1915313 (= (_1!11654 lt!733908) (h!27043 tokens!598))))

(declare-fun lt!733904 () Option!4433)

(declare-fun get!6773 (Option!4433) tuple2!20370)

(assert (=> b!1915313 (= lt!733908 (get!6773 lt!733904))))

(assert (=> b!1915313 (isDefined!3731 lt!733904)))

(assert (=> b!1915313 (= lt!733904 (maxPrefix!1923 thiss!23328 rules!3198 lt!733932))))

(declare-fun lt!733918 () BalanceConc!14256)

(assert (=> b!1915313 (= lt!733932 (list!8792 lt!733918))))

(assert (=> b!1915313 e!1223595))

(declare-fun res!855940 () Bool)

(assert (=> b!1915313 (=> (not res!855940) (not e!1223595))))

(assert (=> b!1915313 (= res!855940 (isDefined!3732 lt!733916))))

(assert (=> b!1915313 (= lt!733916 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 separatorToken!354))))))

(declare-fun lt!733913 () Unit!36034)

(assert (=> b!1915313 (= lt!733913 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!707 thiss!23328 rules!3198 lt!733902 separatorToken!354))))

(declare-fun charsOf!2420 (Token!7280) BalanceConc!14256)

(assert (=> b!1915313 (= lt!733902 (list!8792 (charsOf!2420 separatorToken!354)))))

(declare-fun lt!733923 () Unit!36034)

(declare-fun lemmaEqSameImage!572 (TokenValueInjection!7584 BalanceConc!14256 BalanceConc!14256) Unit!36034)

(declare-fun seqFromList!2736 (List!21723) BalanceConc!14256)

(assert (=> b!1915313 (= lt!733923 (lemmaEqSameImage!572 (transformation!3864 (rule!6065 (h!27043 tokens!598))) lt!733918 (seqFromList!2736 (originalCharacters!4671 (h!27043 tokens!598)))))))

(declare-fun lt!733907 () Unit!36034)

(declare-fun lemmaSemiInverse!843 (TokenValueInjection!7584 BalanceConc!14256) Unit!36034)

(assert (=> b!1915313 (= lt!733907 (lemmaSemiInverse!843 (transformation!3864 (rule!6065 (h!27043 tokens!598))) lt!733918))))

(assert (=> b!1915313 (= lt!733918 (charsOf!2420 (h!27043 tokens!598)))))

(declare-fun b!1915314 () Bool)

(declare-fun res!855954 () Bool)

(assert (=> b!1915314 (=> (not res!855954) (not e!1223600))))

(declare-fun rulesProduceEachTokenIndividuallyList!1208 (LexerInterface!3477 List!21725 List!21724) Bool)

(assert (=> b!1915314 (= res!855954 (rulesProduceEachTokenIndividuallyList!1208 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1915315 () Bool)

(declare-fun tp!546638 () Bool)

(declare-fun inv!21 (TokenValue!4000) Bool)

(assert (=> b!1915315 (= e!1223611 (and (inv!21 (value!121715 separatorToken!354)) e!1223615 tp!546638))))

(declare-fun b!1915316 () Bool)

(assert (=> b!1915316 (= e!1223603 (= (rule!6065 separatorToken!354) lt!733905))))

(declare-fun b!1915317 () Bool)

(declare-fun res!855950 () Bool)

(assert (=> b!1915317 (=> res!855950 e!1223613)))

(assert (=> b!1915317 (= res!855950 (not (isEmpty!13326 (_2!11654 lt!733908))))))

(declare-fun b!1915318 () Bool)

(declare-fun e!1223620 () Bool)

(declare-fun lt!733930 () Rule!7528)

(assert (=> b!1915318 (= e!1223620 (= (rule!6065 (h!27043 tokens!598)) lt!733930))))

(declare-fun b!1915319 () Bool)

(assert (=> b!1915319 (= e!1223612 e!1223620)))

(declare-fun res!855946 () Bool)

(assert (=> b!1915319 (=> (not res!855946) (not e!1223620))))

(assert (=> b!1915319 (= res!855946 (matchR!2575 (regex!3864 lt!733930) lt!733932))))

(assert (=> b!1915319 (= lt!733930 (get!6772 lt!733928))))

(assert (=> b!1915320 (= e!1223616 (and tp!546629 tp!546640))))

(declare-fun b!1915321 () Bool)

(declare-fun res!855936 () Bool)

(assert (=> b!1915321 (=> res!855936 e!1223604)))

(declare-fun lt!733917 () C!10724)

(assert (=> b!1915321 (= res!855936 (not (contains!3932 lt!733914 lt!733917)))))

(assert (=> b!1915322 (= e!1223607 (and tp!546632 tp!546630))))

(declare-fun b!1915323 () Bool)

(assert (=> b!1915323 (= e!1223619 e!1223604)))

(declare-fun res!855929 () Bool)

(assert (=> b!1915323 (=> res!855929 e!1223604)))

(assert (=> b!1915323 (= res!855929 (contains!3932 lt!733915 lt!733917))))

(assert (=> b!1915323 (= lt!733917 (head!4472 lt!733910))))

(declare-fun b!1915324 () Bool)

(declare-fun res!855947 () Bool)

(assert (=> b!1915324 (=> (not res!855947) (not e!1223600))))

(declare-fun sepAndNonSepRulesDisjointChars!962 (List!21725 List!21725) Bool)

(assert (=> b!1915324 (= res!855947 (sepAndNonSepRulesDisjointChars!962 rules!3198 rules!3198))))

(declare-fun b!1915325 () Bool)

(declare-fun Unit!36037 () Unit!36034)

(assert (=> b!1915325 (= e!1223598 Unit!36037)))

(declare-fun lt!733921 () Unit!36034)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!272 (Regex!5289 List!21723 C!10724) Unit!36034)

(assert (=> b!1915325 (= lt!733921 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!272 (regex!3864 (rule!6065 separatorToken!354)) lt!733902 lt!733924))))

(declare-fun res!855935 () Bool)

(assert (=> b!1915325 (= res!855935 (not (matchR!2575 (regex!3864 (rule!6065 separatorToken!354)) lt!733902)))))

(assert (=> b!1915325 (=> (not res!855935) (not e!1223610))))

(assert (=> b!1915325 e!1223610))

(declare-fun tp!546636 () Bool)

(declare-fun b!1915326 () Bool)

(assert (=> b!1915326 (= e!1223609 (and (inv!21 (value!121715 (h!27043 tokens!598))) e!1223597 tp!546636))))

(declare-fun b!1915327 () Bool)

(declare-fun rulesValidInductive!1312 (LexerInterface!3477 List!21725) Bool)

(assert (=> b!1915327 (= e!1223608 (rulesValidInductive!1312 thiss!23328 rules!3198))))

(declare-fun b!1915328 () Bool)

(declare-fun res!855931 () Bool)

(assert (=> b!1915328 (=> (not res!855931) (not e!1223600))))

(declare-fun lambda!74759 () Int)

(declare-fun forall!4558 (List!21724 Int) Bool)

(assert (=> b!1915328 (= res!855931 (forall!4558 tokens!598 lambda!74759))))

(declare-fun b!1915329 () Bool)

(declare-fun res!855934 () Bool)

(assert (=> b!1915329 (=> (not res!855934) (not e!1223600))))

(assert (=> b!1915329 (= res!855934 (isSeparator!3864 (rule!6065 separatorToken!354)))))

(declare-fun b!1915330 () Bool)

(declare-fun res!855942 () Bool)

(assert (=> b!1915330 (=> res!855942 e!1223613)))

(declare-fun isEmpty!13328 (BalanceConc!14258) Bool)

(declare-datatypes ((tuple2!20372 0))(
  ( (tuple2!20373 (_1!11655 BalanceConc!14258) (_2!11655 BalanceConc!14256)) )
))
(declare-fun lex!1552 (LexerInterface!3477 List!21725 BalanceConc!14256) tuple2!20372)

(assert (=> b!1915330 (= res!855942 (isEmpty!13328 (_1!11655 (lex!1552 thiss!23328 rules!3198 (seqFromList!2736 lt!733932)))))))

(assert (= (and start!192028 res!855952) b!1915312))

(assert (= (and b!1915312 res!855948) b!1915293))

(assert (= (and b!1915293 res!855937) b!1915314))

(assert (= (and b!1915314 res!855954) b!1915310))

(assert (= (and b!1915310 res!855933) b!1915329))

(assert (= (and b!1915329 res!855934) b!1915328))

(assert (= (and b!1915328 res!855931) b!1915324))

(assert (= (and b!1915324 res!855947) b!1915301))

(assert (= (and b!1915301 res!855943) b!1915313))

(assert (= (and b!1915313 res!855940) b!1915299))

(assert (= (and b!1915299 res!855955) b!1915316))

(assert (= (and b!1915313 res!855938) b!1915319))

(assert (= (and b!1915319 res!855946) b!1915318))

(assert (= (and b!1915313 (not res!855945)) b!1915298))

(assert (= (and b!1915298 c!311805) b!1915325))

(assert (= (and b!1915298 (not c!311805)) b!1915296))

(assert (= (and b!1915325 res!855935) b!1915297))

(assert (= (and b!1915298 (not res!855939)) b!1915304))

(assert (= (and b!1915304 (not res!855956)) b!1915330))

(assert (= (and b!1915330 (not res!855942)) b!1915300))

(assert (= (and b!1915300 (not res!855941)) b!1915305))

(assert (= (and b!1915305 (not res!855932)) b!1915309))

(assert (= (and b!1915309 (not res!855951)) b!1915317))

(assert (= (and b!1915317 (not res!855950)) b!1915303))

(assert (= (and b!1915303 (not res!855953)) b!1915306))

(assert (= (and b!1915306 (not res!855930)) b!1915323))

(assert (= (and b!1915323 (not res!855929)) b!1915321))

(assert (= (and b!1915321 (not res!855936)) b!1915291))

(assert (= (and b!1915291 (not res!855949)) b!1915295))

(assert (= (and b!1915295 (not res!855944)) b!1915327))

(assert (= b!1915302 b!1915322))

(assert (= b!1915311 b!1915302))

(assert (= (and start!192028 ((_ is Cons!21643) rules!3198)) b!1915311))

(assert (= b!1915307 b!1915292))

(assert (= b!1915326 b!1915307))

(assert (= b!1915294 b!1915326))

(assert (= (and start!192028 ((_ is Cons!21642) tokens!598)) b!1915294))

(assert (= b!1915308 b!1915320))

(assert (= b!1915315 b!1915308))

(assert (= start!192028 b!1915315))

(declare-fun m!2350075 () Bool)

(assert (=> b!1915298 m!2350075))

(declare-fun m!2350077 () Bool)

(assert (=> b!1915298 m!2350077))

(declare-fun m!2350079 () Bool)

(assert (=> b!1915298 m!2350079))

(declare-fun m!2350081 () Bool)

(assert (=> b!1915298 m!2350081))

(declare-fun m!2350083 () Bool)

(assert (=> b!1915298 m!2350083))

(declare-fun m!2350085 () Bool)

(assert (=> b!1915298 m!2350085))

(declare-fun m!2350087 () Bool)

(assert (=> b!1915298 m!2350087))

(declare-fun m!2350089 () Bool)

(assert (=> b!1915298 m!2350089))

(declare-fun m!2350091 () Bool)

(assert (=> b!1915298 m!2350091))

(declare-fun m!2350093 () Bool)

(assert (=> b!1915298 m!2350093))

(declare-fun m!2350095 () Bool)

(assert (=> b!1915298 m!2350095))

(declare-fun m!2350097 () Bool)

(assert (=> b!1915298 m!2350097))

(declare-fun m!2350099 () Bool)

(assert (=> b!1915298 m!2350099))

(declare-fun m!2350101 () Bool)

(assert (=> b!1915298 m!2350101))

(declare-fun m!2350103 () Bool)

(assert (=> b!1915298 m!2350103))

(declare-fun m!2350105 () Bool)

(assert (=> b!1915298 m!2350105))

(declare-fun m!2350107 () Bool)

(assert (=> b!1915324 m!2350107))

(declare-fun m!2350109 () Bool)

(assert (=> b!1915293 m!2350109))

(declare-fun m!2350111 () Bool)

(assert (=> b!1915323 m!2350111))

(declare-fun m!2350113 () Bool)

(assert (=> b!1915323 m!2350113))

(declare-fun m!2350115 () Bool)

(assert (=> b!1915294 m!2350115))

(declare-fun m!2350117 () Bool)

(assert (=> b!1915326 m!2350117))

(declare-fun m!2350119 () Bool)

(assert (=> b!1915303 m!2350119))

(declare-fun m!2350121 () Bool)

(assert (=> b!1915303 m!2350121))

(declare-fun m!2350123 () Bool)

(assert (=> b!1915303 m!2350123))

(declare-fun m!2350125 () Bool)

(assert (=> b!1915295 m!2350125))

(assert (=> b!1915295 m!2350125))

(declare-fun m!2350127 () Bool)

(assert (=> b!1915295 m!2350127))

(assert (=> b!1915295 m!2350127))

(declare-fun m!2350129 () Bool)

(assert (=> b!1915295 m!2350129))

(declare-fun m!2350131 () Bool)

(assert (=> b!1915300 m!2350131))

(declare-fun m!2350133 () Bool)

(assert (=> b!1915319 m!2350133))

(declare-fun m!2350135 () Bool)

(assert (=> b!1915319 m!2350135))

(declare-fun m!2350137 () Bool)

(assert (=> b!1915327 m!2350137))

(declare-fun m!2350139 () Bool)

(assert (=> b!1915313 m!2350139))

(declare-fun m!2350141 () Bool)

(assert (=> b!1915313 m!2350141))

(assert (=> b!1915313 m!2350139))

(declare-fun m!2350143 () Bool)

(assert (=> b!1915313 m!2350143))

(declare-fun m!2350145 () Bool)

(assert (=> b!1915313 m!2350145))

(declare-fun m!2350147 () Bool)

(assert (=> b!1915313 m!2350147))

(declare-fun m!2350149 () Bool)

(assert (=> b!1915313 m!2350149))

(declare-fun m!2350151 () Bool)

(assert (=> b!1915313 m!2350151))

(declare-fun m!2350153 () Bool)

(assert (=> b!1915313 m!2350153))

(declare-fun m!2350155 () Bool)

(assert (=> b!1915313 m!2350155))

(declare-fun m!2350157 () Bool)

(assert (=> b!1915313 m!2350157))

(declare-fun m!2350159 () Bool)

(assert (=> b!1915313 m!2350159))

(declare-fun m!2350161 () Bool)

(assert (=> b!1915313 m!2350161))

(assert (=> b!1915313 m!2350155))

(declare-fun m!2350163 () Bool)

(assert (=> b!1915313 m!2350163))

(declare-fun m!2350165 () Bool)

(assert (=> b!1915313 m!2350165))

(declare-fun m!2350167 () Bool)

(assert (=> b!1915313 m!2350167))

(declare-fun m!2350169 () Bool)

(assert (=> b!1915313 m!2350169))

(declare-fun m!2350171 () Bool)

(assert (=> b!1915313 m!2350171))

(assert (=> b!1915313 m!2350145))

(declare-fun m!2350173 () Bool)

(assert (=> b!1915313 m!2350173))

(declare-fun m!2350175 () Bool)

(assert (=> b!1915313 m!2350175))

(declare-fun m!2350177 () Bool)

(assert (=> b!1915299 m!2350177))

(declare-fun m!2350179 () Bool)

(assert (=> b!1915299 m!2350179))

(declare-fun m!2350181 () Bool)

(assert (=> b!1915308 m!2350181))

(declare-fun m!2350183 () Bool)

(assert (=> b!1915308 m!2350183))

(declare-fun m!2350185 () Bool)

(assert (=> b!1915315 m!2350185))

(declare-fun m!2350187 () Bool)

(assert (=> b!1915291 m!2350187))

(declare-fun m!2350189 () Bool)

(assert (=> b!1915291 m!2350189))

(declare-fun m!2350191 () Bool)

(assert (=> b!1915291 m!2350191))

(declare-fun m!2350193 () Bool)

(assert (=> b!1915321 m!2350193))

(declare-fun m!2350195 () Bool)

(assert (=> b!1915305 m!2350195))

(declare-fun m!2350197 () Bool)

(assert (=> b!1915328 m!2350197))

(declare-fun m!2350199 () Bool)

(assert (=> b!1915306 m!2350199))

(declare-fun m!2350201 () Bool)

(assert (=> b!1915325 m!2350201))

(declare-fun m!2350203 () Bool)

(assert (=> b!1915325 m!2350203))

(declare-fun m!2350205 () Bool)

(assert (=> b!1915317 m!2350205))

(declare-fun m!2350207 () Bool)

(assert (=> b!1915314 m!2350207))

(declare-fun m!2350209 () Bool)

(assert (=> b!1915304 m!2350209))

(declare-fun m!2350211 () Bool)

(assert (=> b!1915312 m!2350211))

(declare-fun m!2350213 () Bool)

(assert (=> b!1915307 m!2350213))

(declare-fun m!2350215 () Bool)

(assert (=> b!1915307 m!2350215))

(declare-fun m!2350217 () Bool)

(assert (=> b!1915330 m!2350217))

(assert (=> b!1915330 m!2350217))

(declare-fun m!2350219 () Bool)

(assert (=> b!1915330 m!2350219))

(declare-fun m!2350221 () Bool)

(assert (=> b!1915330 m!2350221))

(declare-fun m!2350223 () Bool)

(assert (=> start!192028 m!2350223))

(declare-fun m!2350225 () Bool)

(assert (=> b!1915302 m!2350225))

(declare-fun m!2350227 () Bool)

(assert (=> b!1915302 m!2350227))

(declare-fun m!2350229 () Bool)

(assert (=> b!1915310 m!2350229))

(check-sat (not b!1915327) b_and!149363 b_and!149369 (not b_next!54957) (not b!1915319) (not b!1915311) (not b!1915328) (not b!1915305) (not b!1915326) (not b!1915306) (not b_next!54959) (not b_next!54953) (not start!192028) (not b!1915304) (not b!1915298) (not b!1915307) (not b!1915300) (not b!1915303) b_and!149365 (not b!1915325) (not b!1915323) (not b!1915317) (not b!1915308) b_and!149359 (not b!1915313) (not b!1915314) (not b!1915321) (not b!1915302) (not b!1915294) (not b!1915315) (not b_next!54961) (not b!1915299) (not b!1915312) (not b!1915310) (not b!1915324) b_and!149367 (not b!1915293) (not b!1915295) (not b!1915330) (not b!1915291) (not b_next!54955) (not b_next!54963) b_and!149361)
(check-sat b_and!149365 b_and!149363 b_and!149369 (not b_next!54957) b_and!149359 (not b_next!54961) b_and!149367 (not b_next!54959) (not b_next!54955) (not b_next!54953) (not b_next!54963) b_and!149361)
(get-model)

(declare-fun d!585009 () Bool)

(declare-fun res!855971 () Bool)

(declare-fun e!1223625 () Bool)

(assert (=> d!585009 (=> res!855971 e!1223625)))

(assert (=> d!585009 (= res!855971 ((_ is Nil!21642) tokens!598))))

(assert (=> d!585009 (= (forall!4558 tokens!598 lambda!74759) e!1223625)))

(declare-fun b!1915335 () Bool)

(declare-fun e!1223626 () Bool)

(assert (=> b!1915335 (= e!1223625 e!1223626)))

(declare-fun res!855972 () Bool)

(assert (=> b!1915335 (=> (not res!855972) (not e!1223626))))

(declare-fun dynLambda!10526 (Int Token!7280) Bool)

(assert (=> b!1915335 (= res!855972 (dynLambda!10526 lambda!74759 (h!27043 tokens!598)))))

(declare-fun b!1915336 () Bool)

(assert (=> b!1915336 (= e!1223626 (forall!4558 (t!178405 tokens!598) lambda!74759))))

(assert (= (and d!585009 (not res!855971)) b!1915335))

(assert (= (and b!1915335 res!855972) b!1915336))

(declare-fun b_lambda!63353 () Bool)

(assert (=> (not b_lambda!63353) (not b!1915335)))

(declare-fun m!2350231 () Bool)

(assert (=> b!1915335 m!2350231))

(declare-fun m!2350233 () Bool)

(assert (=> b!1915336 m!2350233))

(assert (=> b!1915328 d!585009))

(declare-fun d!585011 () Bool)

(assert (=> d!585011 (= (isEmpty!13326 lt!733910) ((_ is Nil!21641) lt!733910))))

(assert (=> b!1915306 d!585011))

(declare-fun d!585013 () Bool)

(assert (=> d!585013 true))

(declare-fun lt!733944 () Bool)

(declare-fun lambda!74765 () Int)

(declare-fun forall!4559 (List!21725 Int) Bool)

(assert (=> d!585013 (= lt!733944 (forall!4559 rules!3198 lambda!74765))))

(declare-fun e!1223647 () Bool)

(assert (=> d!585013 (= lt!733944 e!1223647)))

(declare-fun res!855988 () Bool)

(assert (=> d!585013 (=> res!855988 e!1223647)))

(assert (=> d!585013 (= res!855988 (not ((_ is Cons!21643) rules!3198)))))

(assert (=> d!585013 (= (rulesValidInductive!1312 thiss!23328 rules!3198) lt!733944)))

(declare-fun b!1915359 () Bool)

(declare-fun e!1223646 () Bool)

(assert (=> b!1915359 (= e!1223647 e!1223646)))

(declare-fun res!855989 () Bool)

(assert (=> b!1915359 (=> (not res!855989) (not e!1223646))))

(assert (=> b!1915359 (= res!855989 (ruleValid!1183 thiss!23328 (h!27044 rules!3198)))))

(declare-fun b!1915360 () Bool)

(assert (=> b!1915360 (= e!1223646 (rulesValidInductive!1312 thiss!23328 (t!178406 rules!3198)))))

(assert (= (and d!585013 (not res!855988)) b!1915359))

(assert (= (and b!1915359 res!855989) b!1915360))

(declare-fun m!2350267 () Bool)

(assert (=> d!585013 m!2350267))

(declare-fun m!2350269 () Bool)

(assert (=> b!1915359 m!2350269))

(declare-fun m!2350271 () Bool)

(assert (=> b!1915360 m!2350271))

(assert (=> b!1915327 d!585013))

(declare-fun d!585023 () Bool)

(assert (=> d!585023 (= (inv!28735 (tag!4302 (rule!6065 separatorToken!354))) (= (mod (str.len (value!121714 (tag!4302 (rule!6065 separatorToken!354)))) 2) 0))))

(assert (=> b!1915308 d!585023))

(declare-fun d!585025 () Bool)

(declare-fun res!855992 () Bool)

(declare-fun e!1223650 () Bool)

(assert (=> d!585025 (=> (not res!855992) (not e!1223650))))

(declare-fun semiInverseModEq!1550 (Int Int) Bool)

(assert (=> d!585025 (= res!855992 (semiInverseModEq!1550 (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toValue!5493 (transformation!3864 (rule!6065 separatorToken!354)))))))

(assert (=> d!585025 (= (inv!28739 (transformation!3864 (rule!6065 separatorToken!354))) e!1223650)))

(declare-fun b!1915365 () Bool)

(declare-fun equivClasses!1477 (Int Int) Bool)

(assert (=> b!1915365 (= e!1223650 (equivClasses!1477 (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toValue!5493 (transformation!3864 (rule!6065 separatorToken!354)))))))

(assert (= (and d!585025 res!855992) b!1915365))

(declare-fun m!2350273 () Bool)

(assert (=> d!585025 m!2350273))

(declare-fun m!2350275 () Bool)

(assert (=> b!1915365 m!2350275))

(assert (=> b!1915308 d!585025))

(declare-fun d!585027 () Bool)

(assert (=> d!585027 (= (inv!28735 (tag!4302 (rule!6065 (h!27043 tokens!598)))) (= (mod (str.len (value!121714 (tag!4302 (rule!6065 (h!27043 tokens!598))))) 2) 0))))

(assert (=> b!1915307 d!585027))

(declare-fun d!585029 () Bool)

(declare-fun res!855993 () Bool)

(declare-fun e!1223651 () Bool)

(assert (=> d!585029 (=> (not res!855993) (not e!1223651))))

(assert (=> d!585029 (= res!855993 (semiInverseModEq!1550 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))))))

(assert (=> d!585029 (= (inv!28739 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) e!1223651)))

(declare-fun b!1915366 () Bool)

(assert (=> b!1915366 (= e!1223651 (equivClasses!1477 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))))))

(assert (= (and d!585029 res!855993) b!1915366))

(declare-fun m!2350277 () Bool)

(assert (=> d!585029 m!2350277))

(declare-fun m!2350279 () Bool)

(assert (=> b!1915366 m!2350279))

(assert (=> b!1915307 d!585029))

(declare-fun lt!733947 () Bool)

(declare-fun d!585031 () Bool)

(declare-fun list!8795 (BalanceConc!14258) List!21724)

(assert (=> d!585031 (= lt!733947 (isEmpty!13325 (list!8795 (_1!11655 (lex!1552 thiss!23328 rules!3198 (seqFromList!2736 lt!733932))))))))

(declare-fun isEmpty!13332 (Conc!7221) Bool)

(assert (=> d!585031 (= lt!733947 (isEmpty!13332 (c!311808 (_1!11655 (lex!1552 thiss!23328 rules!3198 (seqFromList!2736 lt!733932))))))))

(assert (=> d!585031 (= (isEmpty!13328 (_1!11655 (lex!1552 thiss!23328 rules!3198 (seqFromList!2736 lt!733932)))) lt!733947)))

(declare-fun bs!414260 () Bool)

(assert (= bs!414260 d!585031))

(declare-fun m!2350281 () Bool)

(assert (=> bs!414260 m!2350281))

(assert (=> bs!414260 m!2350281))

(declare-fun m!2350283 () Bool)

(assert (=> bs!414260 m!2350283))

(declare-fun m!2350285 () Bool)

(assert (=> bs!414260 m!2350285))

(assert (=> b!1915330 d!585031))

(declare-fun b!1915453 () Bool)

(declare-fun e!1223695 () Bool)

(declare-fun e!1223696 () Bool)

(assert (=> b!1915453 (= e!1223695 e!1223696)))

(declare-fun res!856042 () Bool)

(declare-fun lt!733988 () tuple2!20372)

(declare-fun size!17007 (BalanceConc!14256) Int)

(assert (=> b!1915453 (= res!856042 (< (size!17007 (_2!11655 lt!733988)) (size!17007 (seqFromList!2736 lt!733932))))))

(assert (=> b!1915453 (=> (not res!856042) (not e!1223696))))

(declare-fun b!1915454 () Bool)

(assert (=> b!1915454 (= e!1223695 (= (_2!11655 lt!733988) (seqFromList!2736 lt!733932)))))

(declare-fun b!1915455 () Bool)

(declare-fun res!856043 () Bool)

(declare-fun e!1223697 () Bool)

(assert (=> b!1915455 (=> (not res!856043) (not e!1223697))))

(declare-datatypes ((tuple2!20374 0))(
  ( (tuple2!20375 (_1!11656 List!21724) (_2!11656 List!21723)) )
))
(declare-fun lexList!946 (LexerInterface!3477 List!21725 List!21723) tuple2!20374)

(assert (=> b!1915455 (= res!856043 (= (list!8795 (_1!11655 lt!733988)) (_1!11656 (lexList!946 thiss!23328 rules!3198 (list!8792 (seqFromList!2736 lt!733932))))))))

(declare-fun d!585033 () Bool)

(assert (=> d!585033 e!1223697))

(declare-fun res!856044 () Bool)

(assert (=> d!585033 (=> (not res!856044) (not e!1223697))))

(assert (=> d!585033 (= res!856044 e!1223695)))

(declare-fun c!311824 () Bool)

(declare-fun size!17008 (BalanceConc!14258) Int)

(assert (=> d!585033 (= c!311824 (> (size!17008 (_1!11655 lt!733988)) 0))))

(declare-fun lexTailRecV2!669 (LexerInterface!3477 List!21725 BalanceConc!14256 BalanceConc!14256 BalanceConc!14256 BalanceConc!14258) tuple2!20372)

(assert (=> d!585033 (= lt!733988 (lexTailRecV2!669 thiss!23328 rules!3198 (seqFromList!2736 lt!733932) (BalanceConc!14257 Empty!7220) (seqFromList!2736 lt!733932) (BalanceConc!14259 Empty!7221)))))

(assert (=> d!585033 (= (lex!1552 thiss!23328 rules!3198 (seqFromList!2736 lt!733932)) lt!733988)))

(declare-fun b!1915456 () Bool)

(assert (=> b!1915456 (= e!1223697 (= (list!8792 (_2!11655 lt!733988)) (_2!11656 (lexList!946 thiss!23328 rules!3198 (list!8792 (seqFromList!2736 lt!733932))))))))

(declare-fun b!1915457 () Bool)

(assert (=> b!1915457 (= e!1223696 (not (isEmpty!13328 (_1!11655 lt!733988))))))

(assert (= (and d!585033 c!311824) b!1915453))

(assert (= (and d!585033 (not c!311824)) b!1915454))

(assert (= (and b!1915453 res!856042) b!1915457))

(assert (= (and d!585033 res!856044) b!1915455))

(assert (= (and b!1915455 res!856043) b!1915456))

(declare-fun m!2350389 () Bool)

(assert (=> b!1915457 m!2350389))

(declare-fun m!2350391 () Bool)

(assert (=> b!1915453 m!2350391))

(assert (=> b!1915453 m!2350217))

(declare-fun m!2350393 () Bool)

(assert (=> b!1915453 m!2350393))

(declare-fun m!2350395 () Bool)

(assert (=> b!1915455 m!2350395))

(assert (=> b!1915455 m!2350217))

(declare-fun m!2350397 () Bool)

(assert (=> b!1915455 m!2350397))

(assert (=> b!1915455 m!2350397))

(declare-fun m!2350399 () Bool)

(assert (=> b!1915455 m!2350399))

(declare-fun m!2350401 () Bool)

(assert (=> b!1915456 m!2350401))

(assert (=> b!1915456 m!2350217))

(assert (=> b!1915456 m!2350397))

(assert (=> b!1915456 m!2350397))

(assert (=> b!1915456 m!2350399))

(declare-fun m!2350403 () Bool)

(assert (=> d!585033 m!2350403))

(assert (=> d!585033 m!2350217))

(assert (=> d!585033 m!2350217))

(declare-fun m!2350405 () Bool)

(assert (=> d!585033 m!2350405))

(assert (=> b!1915330 d!585033))

(declare-fun d!585047 () Bool)

(declare-fun fromListB!1229 (List!21723) BalanceConc!14256)

(assert (=> d!585047 (= (seqFromList!2736 lt!733932) (fromListB!1229 lt!733932))))

(declare-fun bs!414261 () Bool)

(assert (= bs!414261 d!585047))

(declare-fun m!2350407 () Bool)

(assert (=> bs!414261 m!2350407))

(assert (=> b!1915330 d!585047))

(declare-fun d!585049 () Bool)

(declare-fun lt!733994 () Bool)

(declare-fun e!1223703 () Bool)

(assert (=> d!585049 (= lt!733994 e!1223703)))

(declare-fun res!856053 () Bool)

(assert (=> d!585049 (=> (not res!856053) (not e!1223703))))

(assert (=> d!585049 (= res!856053 (= (list!8795 (_1!11655 (lex!1552 thiss!23328 rules!3198 (print!1487 thiss!23328 (singletonSeq!1887 separatorToken!354))))) (list!8795 (singletonSeq!1887 separatorToken!354))))))

(declare-fun e!1223702 () Bool)

(assert (=> d!585049 (= lt!733994 e!1223702)))

(declare-fun res!856051 () Bool)

(assert (=> d!585049 (=> (not res!856051) (not e!1223702))))

(declare-fun lt!733993 () tuple2!20372)

(assert (=> d!585049 (= res!856051 (= (size!17008 (_1!11655 lt!733993)) 1))))

(assert (=> d!585049 (= lt!733993 (lex!1552 thiss!23328 rules!3198 (print!1487 thiss!23328 (singletonSeq!1887 separatorToken!354))))))

(assert (=> d!585049 (not (isEmpty!13327 rules!3198))))

(assert (=> d!585049 (= (rulesProduceIndividualToken!1649 thiss!23328 rules!3198 separatorToken!354) lt!733994)))

(declare-fun b!1915464 () Bool)

(declare-fun res!856052 () Bool)

(assert (=> b!1915464 (=> (not res!856052) (not e!1223702))))

(declare-fun apply!5659 (BalanceConc!14258 Int) Token!7280)

(assert (=> b!1915464 (= res!856052 (= (apply!5659 (_1!11655 lt!733993) 0) separatorToken!354))))

(declare-fun b!1915465 () Bool)

(declare-fun isEmpty!13333 (BalanceConc!14256) Bool)

(assert (=> b!1915465 (= e!1223702 (isEmpty!13333 (_2!11655 lt!733993)))))

(declare-fun b!1915466 () Bool)

(assert (=> b!1915466 (= e!1223703 (isEmpty!13333 (_2!11655 (lex!1552 thiss!23328 rules!3198 (print!1487 thiss!23328 (singletonSeq!1887 separatorToken!354))))))))

(assert (= (and d!585049 res!856051) b!1915464))

(assert (= (and b!1915464 res!856052) b!1915465))

(assert (= (and d!585049 res!856053) b!1915466))

(declare-fun m!2350409 () Bool)

(assert (=> d!585049 m!2350409))

(declare-fun m!2350411 () Bool)

(assert (=> d!585049 m!2350411))

(declare-fun m!2350413 () Bool)

(assert (=> d!585049 m!2350413))

(assert (=> d!585049 m!2350211))

(assert (=> d!585049 m!2350411))

(assert (=> d!585049 m!2350413))

(declare-fun m!2350415 () Bool)

(assert (=> d!585049 m!2350415))

(assert (=> d!585049 m!2350411))

(declare-fun m!2350417 () Bool)

(assert (=> d!585049 m!2350417))

(declare-fun m!2350419 () Bool)

(assert (=> d!585049 m!2350419))

(declare-fun m!2350421 () Bool)

(assert (=> b!1915464 m!2350421))

(declare-fun m!2350423 () Bool)

(assert (=> b!1915465 m!2350423))

(assert (=> b!1915466 m!2350411))

(assert (=> b!1915466 m!2350411))

(assert (=> b!1915466 m!2350413))

(assert (=> b!1915466 m!2350413))

(assert (=> b!1915466 m!2350415))

(declare-fun m!2350425 () Bool)

(assert (=> b!1915466 m!2350425))

(assert (=> b!1915310 d!585049))

(declare-fun d!585051 () Bool)

(declare-fun res!856058 () Bool)

(declare-fun e!1223708 () Bool)

(assert (=> d!585051 (=> res!856058 e!1223708)))

(assert (=> d!585051 (= res!856058 (not ((_ is Cons!21643) rules!3198)))))

(assert (=> d!585051 (= (sepAndNonSepRulesDisjointChars!962 rules!3198 rules!3198) e!1223708)))

(declare-fun b!1915471 () Bool)

(declare-fun e!1223709 () Bool)

(assert (=> b!1915471 (= e!1223708 e!1223709)))

(declare-fun res!856059 () Bool)

(assert (=> b!1915471 (=> (not res!856059) (not e!1223709))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!435 (Rule!7528 List!21725) Bool)

(assert (=> b!1915471 (= res!856059 (ruleDisjointCharsFromAllFromOtherType!435 (h!27044 rules!3198) rules!3198))))

(declare-fun b!1915472 () Bool)

(assert (=> b!1915472 (= e!1223709 (sepAndNonSepRulesDisjointChars!962 rules!3198 (t!178406 rules!3198)))))

(assert (= (and d!585051 (not res!856058)) b!1915471))

(assert (= (and b!1915471 res!856059) b!1915472))

(declare-fun m!2350427 () Bool)

(assert (=> b!1915471 m!2350427))

(declare-fun m!2350429 () Bool)

(assert (=> b!1915472 m!2350429))

(assert (=> b!1915324 d!585051))

(declare-fun d!585053 () Bool)

(assert (=> d!585053 (= (inv!28735 (tag!4302 (h!27044 rules!3198))) (= (mod (str.len (value!121714 (tag!4302 (h!27044 rules!3198)))) 2) 0))))

(assert (=> b!1915302 d!585053))

(declare-fun d!585055 () Bool)

(declare-fun res!856060 () Bool)

(declare-fun e!1223710 () Bool)

(assert (=> d!585055 (=> (not res!856060) (not e!1223710))))

(assert (=> d!585055 (= res!856060 (semiInverseModEq!1550 (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toValue!5493 (transformation!3864 (h!27044 rules!3198)))))))

(assert (=> d!585055 (= (inv!28739 (transformation!3864 (h!27044 rules!3198))) e!1223710)))

(declare-fun b!1915473 () Bool)

(assert (=> b!1915473 (= e!1223710 (equivClasses!1477 (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toValue!5493 (transformation!3864 (h!27044 rules!3198)))))))

(assert (= (and d!585055 res!856060) b!1915473))

(declare-fun m!2350431 () Bool)

(assert (=> d!585055 m!2350431))

(declare-fun m!2350433 () Bool)

(assert (=> b!1915473 m!2350433))

(assert (=> b!1915302 d!585055))

(declare-fun d!585057 () Bool)

(declare-fun lt!733997 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3156 (List!21723) (InoxSet C!10724))

(assert (=> d!585057 (= lt!733997 (select (content!3156 lt!733915) lt!733917))))

(declare-fun e!1223715 () Bool)

(assert (=> d!585057 (= lt!733997 e!1223715)))

(declare-fun res!856065 () Bool)

(assert (=> d!585057 (=> (not res!856065) (not e!1223715))))

(assert (=> d!585057 (= res!856065 ((_ is Cons!21641) lt!733915))))

(assert (=> d!585057 (= (contains!3932 lt!733915 lt!733917) lt!733997)))

(declare-fun b!1915478 () Bool)

(declare-fun e!1223716 () Bool)

(assert (=> b!1915478 (= e!1223715 e!1223716)))

(declare-fun res!856066 () Bool)

(assert (=> b!1915478 (=> res!856066 e!1223716)))

(assert (=> b!1915478 (= res!856066 (= (h!27042 lt!733915) lt!733917))))

(declare-fun b!1915479 () Bool)

(assert (=> b!1915479 (= e!1223716 (contains!3932 (t!178404 lt!733915) lt!733917))))

(assert (= (and d!585057 res!856065) b!1915478))

(assert (= (and b!1915478 (not res!856066)) b!1915479))

(declare-fun m!2350435 () Bool)

(assert (=> d!585057 m!2350435))

(declare-fun m!2350437 () Bool)

(assert (=> d!585057 m!2350437))

(declare-fun m!2350439 () Bool)

(assert (=> b!1915479 m!2350439))

(assert (=> b!1915323 d!585057))

(declare-fun d!585059 () Bool)

(assert (=> d!585059 (= (head!4472 lt!733910) (h!27042 lt!733910))))

(assert (=> b!1915323 d!585059))

(declare-fun d!585061 () Bool)

(declare-fun lt!733999 () Bool)

(declare-fun e!1223718 () Bool)

(assert (=> d!585061 (= lt!733999 e!1223718)))

(declare-fun res!856069 () Bool)

(assert (=> d!585061 (=> (not res!856069) (not e!1223718))))

(assert (=> d!585061 (= res!856069 (= (list!8795 (_1!11655 (lex!1552 thiss!23328 rules!3198 (print!1487 thiss!23328 (singletonSeq!1887 (h!27043 tokens!598)))))) (list!8795 (singletonSeq!1887 (h!27043 tokens!598)))))))

(declare-fun e!1223717 () Bool)

(assert (=> d!585061 (= lt!733999 e!1223717)))

(declare-fun res!856067 () Bool)

(assert (=> d!585061 (=> (not res!856067) (not e!1223717))))

(declare-fun lt!733998 () tuple2!20372)

(assert (=> d!585061 (= res!856067 (= (size!17008 (_1!11655 lt!733998)) 1))))

(assert (=> d!585061 (= lt!733998 (lex!1552 thiss!23328 rules!3198 (print!1487 thiss!23328 (singletonSeq!1887 (h!27043 tokens!598)))))))

(assert (=> d!585061 (not (isEmpty!13327 rules!3198))))

(assert (=> d!585061 (= (rulesProduceIndividualToken!1649 thiss!23328 rules!3198 (h!27043 tokens!598)) lt!733999)))

(declare-fun b!1915480 () Bool)

(declare-fun res!856068 () Bool)

(assert (=> b!1915480 (=> (not res!856068) (not e!1223717))))

(assert (=> b!1915480 (= res!856068 (= (apply!5659 (_1!11655 lt!733998) 0) (h!27043 tokens!598)))))

(declare-fun b!1915481 () Bool)

(assert (=> b!1915481 (= e!1223717 (isEmpty!13333 (_2!11655 lt!733998)))))

(declare-fun b!1915482 () Bool)

(assert (=> b!1915482 (= e!1223718 (isEmpty!13333 (_2!11655 (lex!1552 thiss!23328 rules!3198 (print!1487 thiss!23328 (singletonSeq!1887 (h!27043 tokens!598)))))))))

(assert (= (and d!585061 res!856067) b!1915480))

(assert (= (and b!1915480 res!856068) b!1915481))

(assert (= (and d!585061 res!856069) b!1915482))

(declare-fun m!2350441 () Bool)

(assert (=> d!585061 m!2350441))

(assert (=> d!585061 m!2350089))

(declare-fun m!2350443 () Bool)

(assert (=> d!585061 m!2350443))

(assert (=> d!585061 m!2350211))

(assert (=> d!585061 m!2350089))

(assert (=> d!585061 m!2350443))

(declare-fun m!2350445 () Bool)

(assert (=> d!585061 m!2350445))

(assert (=> d!585061 m!2350089))

(declare-fun m!2350447 () Bool)

(assert (=> d!585061 m!2350447))

(declare-fun m!2350449 () Bool)

(assert (=> d!585061 m!2350449))

(declare-fun m!2350451 () Bool)

(assert (=> b!1915480 m!2350451))

(declare-fun m!2350453 () Bool)

(assert (=> b!1915481 m!2350453))

(assert (=> b!1915482 m!2350089))

(assert (=> b!1915482 m!2350089))

(assert (=> b!1915482 m!2350443))

(assert (=> b!1915482 m!2350443))

(assert (=> b!1915482 m!2350445))

(declare-fun m!2350455 () Bool)

(assert (=> b!1915482 m!2350455))

(assert (=> b!1915304 d!585061))

(declare-fun d!585063 () Bool)

(assert (=> d!585063 (not (matchR!2575 (regex!3864 (rule!6065 separatorToken!354)) lt!733902))))

(declare-fun lt!734002 () Unit!36034)

(declare-fun choose!11914 (Regex!5289 List!21723 C!10724) Unit!36034)

(assert (=> d!585063 (= lt!734002 (choose!11914 (regex!3864 (rule!6065 separatorToken!354)) lt!733902 lt!733924))))

(declare-fun validRegex!2126 (Regex!5289) Bool)

(assert (=> d!585063 (validRegex!2126 (regex!3864 (rule!6065 separatorToken!354)))))

(assert (=> d!585063 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!272 (regex!3864 (rule!6065 separatorToken!354)) lt!733902 lt!733924) lt!734002)))

(declare-fun bs!414262 () Bool)

(assert (= bs!414262 d!585063))

(assert (=> bs!414262 m!2350203))

(declare-fun m!2350457 () Bool)

(assert (=> bs!414262 m!2350457))

(declare-fun m!2350459 () Bool)

(assert (=> bs!414262 m!2350459))

(assert (=> b!1915325 d!585063))

(declare-fun bm!117882 () Bool)

(declare-fun call!117889 () Bool)

(assert (=> bm!117882 (= call!117889 (isEmpty!13326 lt!733902))))

(declare-fun b!1915523 () Bool)

(declare-fun e!1223741 () Bool)

(assert (=> b!1915523 (= e!1223741 (not (= (head!4472 lt!733902) (c!311806 (regex!3864 (rule!6065 separatorToken!354))))))))

(declare-fun b!1915524 () Bool)

(declare-fun e!1223743 () Bool)

(declare-fun e!1223740 () Bool)

(assert (=> b!1915524 (= e!1223743 e!1223740)))

(declare-fun c!311840 () Bool)

(assert (=> b!1915524 (= c!311840 ((_ is EmptyLang!5289) (regex!3864 (rule!6065 separatorToken!354))))))

(declare-fun b!1915525 () Bool)

(declare-fun res!856088 () Bool)

(declare-fun e!1223742 () Bool)

(assert (=> b!1915525 (=> (not res!856088) (not e!1223742))))

(declare-fun tail!2963 (List!21723) List!21723)

(assert (=> b!1915525 (= res!856088 (isEmpty!13326 (tail!2963 lt!733902)))))

(declare-fun b!1915526 () Bool)

(declare-fun res!856091 () Bool)

(declare-fun e!1223739 () Bool)

(assert (=> b!1915526 (=> res!856091 e!1223739)))

(assert (=> b!1915526 (= res!856091 (not ((_ is ElementMatch!5289) (regex!3864 (rule!6065 separatorToken!354)))))))

(assert (=> b!1915526 (= e!1223740 e!1223739)))

(declare-fun b!1915527 () Bool)

(declare-fun lt!734017 () Bool)

(assert (=> b!1915527 (= e!1223740 (not lt!734017))))

(declare-fun b!1915528 () Bool)

(assert (=> b!1915528 (= e!1223742 (= (head!4472 lt!733902) (c!311806 (regex!3864 (rule!6065 separatorToken!354)))))))

(declare-fun b!1915529 () Bool)

(assert (=> b!1915529 (= e!1223743 (= lt!734017 call!117889))))

(declare-fun b!1915530 () Bool)

(declare-fun res!856089 () Bool)

(assert (=> b!1915530 (=> (not res!856089) (not e!1223742))))

(assert (=> b!1915530 (= res!856089 (not call!117889))))

(declare-fun d!585065 () Bool)

(assert (=> d!585065 e!1223743))

(declare-fun c!311839 () Bool)

(assert (=> d!585065 (= c!311839 ((_ is EmptyExpr!5289) (regex!3864 (rule!6065 separatorToken!354))))))

(declare-fun e!1223745 () Bool)

(assert (=> d!585065 (= lt!734017 e!1223745)))

(declare-fun c!311838 () Bool)

(assert (=> d!585065 (= c!311838 (isEmpty!13326 lt!733902))))

(assert (=> d!585065 (validRegex!2126 (regex!3864 (rule!6065 separatorToken!354)))))

(assert (=> d!585065 (= (matchR!2575 (regex!3864 (rule!6065 separatorToken!354)) lt!733902) lt!734017)))

(declare-fun b!1915531 () Bool)

(declare-fun e!1223744 () Bool)

(assert (=> b!1915531 (= e!1223744 e!1223741)))

(declare-fun res!856093 () Bool)

(assert (=> b!1915531 (=> res!856093 e!1223741)))

(assert (=> b!1915531 (= res!856093 call!117889)))

(declare-fun b!1915532 () Bool)

(declare-fun derivativeStep!1359 (Regex!5289 C!10724) Regex!5289)

(assert (=> b!1915532 (= e!1223745 (matchR!2575 (derivativeStep!1359 (regex!3864 (rule!6065 separatorToken!354)) (head!4472 lt!733902)) (tail!2963 lt!733902)))))

(declare-fun b!1915533 () Bool)

(declare-fun res!856092 () Bool)

(assert (=> b!1915533 (=> res!856092 e!1223741)))

(assert (=> b!1915533 (= res!856092 (not (isEmpty!13326 (tail!2963 lt!733902))))))

(declare-fun b!1915534 () Bool)

(declare-fun nullable!1600 (Regex!5289) Bool)

(assert (=> b!1915534 (= e!1223745 (nullable!1600 (regex!3864 (rule!6065 separatorToken!354))))))

(declare-fun b!1915535 () Bool)

(declare-fun res!856086 () Bool)

(assert (=> b!1915535 (=> res!856086 e!1223739)))

(assert (=> b!1915535 (= res!856086 e!1223742)))

(declare-fun res!856087 () Bool)

(assert (=> b!1915535 (=> (not res!856087) (not e!1223742))))

(assert (=> b!1915535 (= res!856087 lt!734017)))

(declare-fun b!1915536 () Bool)

(assert (=> b!1915536 (= e!1223739 e!1223744)))

(declare-fun res!856090 () Bool)

(assert (=> b!1915536 (=> (not res!856090) (not e!1223744))))

(assert (=> b!1915536 (= res!856090 (not lt!734017))))

(assert (= (and d!585065 c!311838) b!1915534))

(assert (= (and d!585065 (not c!311838)) b!1915532))

(assert (= (and d!585065 c!311839) b!1915529))

(assert (= (and d!585065 (not c!311839)) b!1915524))

(assert (= (and b!1915524 c!311840) b!1915527))

(assert (= (and b!1915524 (not c!311840)) b!1915526))

(assert (= (and b!1915526 (not res!856091)) b!1915535))

(assert (= (and b!1915535 res!856087) b!1915530))

(assert (= (and b!1915530 res!856089) b!1915525))

(assert (= (and b!1915525 res!856088) b!1915528))

(assert (= (and b!1915535 (not res!856086)) b!1915536))

(assert (= (and b!1915536 res!856090) b!1915531))

(assert (= (and b!1915531 (not res!856093)) b!1915533))

(assert (= (and b!1915533 (not res!856092)) b!1915523))

(assert (= (or b!1915529 b!1915530 b!1915531) bm!117882))

(declare-fun m!2350461 () Bool)

(assert (=> bm!117882 m!2350461))

(declare-fun m!2350463 () Bool)

(assert (=> b!1915533 m!2350463))

(assert (=> b!1915533 m!2350463))

(declare-fun m!2350465 () Bool)

(assert (=> b!1915533 m!2350465))

(assert (=> b!1915528 m!2350075))

(declare-fun m!2350467 () Bool)

(assert (=> b!1915534 m!2350467))

(assert (=> b!1915523 m!2350075))

(assert (=> b!1915525 m!2350463))

(assert (=> b!1915525 m!2350463))

(assert (=> b!1915525 m!2350465))

(assert (=> b!1915532 m!2350075))

(assert (=> b!1915532 m!2350075))

(declare-fun m!2350469 () Bool)

(assert (=> b!1915532 m!2350469))

(assert (=> b!1915532 m!2350463))

(assert (=> b!1915532 m!2350469))

(assert (=> b!1915532 m!2350463))

(declare-fun m!2350471 () Bool)

(assert (=> b!1915532 m!2350471))

(assert (=> d!585065 m!2350461))

(assert (=> d!585065 m!2350459))

(assert (=> b!1915325 d!585065))

(declare-fun bm!117885 () Bool)

(declare-fun call!117890 () Bool)

(assert (=> bm!117885 (= call!117890 (isEmpty!13326 lt!733932))))

(declare-fun b!1915541 () Bool)

(declare-fun e!1223750 () Bool)

(assert (=> b!1915541 (= e!1223750 (not (= (head!4472 lt!733932) (c!311806 (regex!3864 (rule!6065 (h!27043 tokens!598)))))))))

(declare-fun b!1915542 () Bool)

(declare-fun e!1223752 () Bool)

(declare-fun e!1223749 () Bool)

(assert (=> b!1915542 (= e!1223752 e!1223749)))

(declare-fun c!311845 () Bool)

(assert (=> b!1915542 (= c!311845 ((_ is EmptyLang!5289) (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun b!1915543 () Bool)

(declare-fun res!856096 () Bool)

(declare-fun e!1223751 () Bool)

(assert (=> b!1915543 (=> (not res!856096) (not e!1223751))))

(assert (=> b!1915543 (= res!856096 (isEmpty!13326 (tail!2963 lt!733932)))))

(declare-fun b!1915544 () Bool)

(declare-fun res!856099 () Bool)

(declare-fun e!1223748 () Bool)

(assert (=> b!1915544 (=> res!856099 e!1223748)))

(assert (=> b!1915544 (= res!856099 (not ((_ is ElementMatch!5289) (regex!3864 (rule!6065 (h!27043 tokens!598))))))))

(assert (=> b!1915544 (= e!1223749 e!1223748)))

(declare-fun b!1915545 () Bool)

(declare-fun lt!734018 () Bool)

(assert (=> b!1915545 (= e!1223749 (not lt!734018))))

(declare-fun b!1915546 () Bool)

(assert (=> b!1915546 (= e!1223751 (= (head!4472 lt!733932) (c!311806 (regex!3864 (rule!6065 (h!27043 tokens!598))))))))

(declare-fun b!1915547 () Bool)

(assert (=> b!1915547 (= e!1223752 (= lt!734018 call!117890))))

(declare-fun b!1915548 () Bool)

(declare-fun res!856097 () Bool)

(assert (=> b!1915548 (=> (not res!856097) (not e!1223751))))

(assert (=> b!1915548 (= res!856097 (not call!117890))))

(declare-fun d!585067 () Bool)

(assert (=> d!585067 e!1223752))

(declare-fun c!311844 () Bool)

(assert (=> d!585067 (= c!311844 ((_ is EmptyExpr!5289) (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun e!1223754 () Bool)

(assert (=> d!585067 (= lt!734018 e!1223754)))

(declare-fun c!311843 () Bool)

(assert (=> d!585067 (= c!311843 (isEmpty!13326 lt!733932))))

(assert (=> d!585067 (validRegex!2126 (regex!3864 (rule!6065 (h!27043 tokens!598))))))

(assert (=> d!585067 (= (matchR!2575 (regex!3864 (rule!6065 (h!27043 tokens!598))) lt!733932) lt!734018)))

(declare-fun b!1915549 () Bool)

(declare-fun e!1223753 () Bool)

(assert (=> b!1915549 (= e!1223753 e!1223750)))

(declare-fun res!856101 () Bool)

(assert (=> b!1915549 (=> res!856101 e!1223750)))

(assert (=> b!1915549 (= res!856101 call!117890)))

(declare-fun b!1915550 () Bool)

(assert (=> b!1915550 (= e!1223754 (matchR!2575 (derivativeStep!1359 (regex!3864 (rule!6065 (h!27043 tokens!598))) (head!4472 lt!733932)) (tail!2963 lt!733932)))))

(declare-fun b!1915551 () Bool)

(declare-fun res!856100 () Bool)

(assert (=> b!1915551 (=> res!856100 e!1223750)))

(assert (=> b!1915551 (= res!856100 (not (isEmpty!13326 (tail!2963 lt!733932))))))

(declare-fun b!1915552 () Bool)

(assert (=> b!1915552 (= e!1223754 (nullable!1600 (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun b!1915553 () Bool)

(declare-fun res!856094 () Bool)

(assert (=> b!1915553 (=> res!856094 e!1223748)))

(assert (=> b!1915553 (= res!856094 e!1223751)))

(declare-fun res!856095 () Bool)

(assert (=> b!1915553 (=> (not res!856095) (not e!1223751))))

(assert (=> b!1915553 (= res!856095 lt!734018)))

(declare-fun b!1915554 () Bool)

(assert (=> b!1915554 (= e!1223748 e!1223753)))

(declare-fun res!856098 () Bool)

(assert (=> b!1915554 (=> (not res!856098) (not e!1223753))))

(assert (=> b!1915554 (= res!856098 (not lt!734018))))

(assert (= (and d!585067 c!311843) b!1915552))

(assert (= (and d!585067 (not c!311843)) b!1915550))

(assert (= (and d!585067 c!311844) b!1915547))

(assert (= (and d!585067 (not c!311844)) b!1915542))

(assert (= (and b!1915542 c!311845) b!1915545))

(assert (= (and b!1915542 (not c!311845)) b!1915544))

(assert (= (and b!1915544 (not res!856099)) b!1915553))

(assert (= (and b!1915553 res!856095) b!1915548))

(assert (= (and b!1915548 res!856097) b!1915543))

(assert (= (and b!1915543 res!856096) b!1915546))

(assert (= (and b!1915553 (not res!856094)) b!1915554))

(assert (= (and b!1915554 res!856098) b!1915549))

(assert (= (and b!1915549 (not res!856101)) b!1915551))

(assert (= (and b!1915551 (not res!856100)) b!1915541))

(assert (= (or b!1915547 b!1915548 b!1915549) bm!117885))

(declare-fun m!2350473 () Bool)

(assert (=> bm!117885 m!2350473))

(declare-fun m!2350475 () Bool)

(assert (=> b!1915551 m!2350475))

(assert (=> b!1915551 m!2350475))

(declare-fun m!2350477 () Bool)

(assert (=> b!1915551 m!2350477))

(declare-fun m!2350479 () Bool)

(assert (=> b!1915546 m!2350479))

(declare-fun m!2350481 () Bool)

(assert (=> b!1915552 m!2350481))

(assert (=> b!1915541 m!2350479))

(assert (=> b!1915543 m!2350475))

(assert (=> b!1915543 m!2350475))

(assert (=> b!1915543 m!2350477))

(assert (=> b!1915550 m!2350479))

(assert (=> b!1915550 m!2350479))

(declare-fun m!2350483 () Bool)

(assert (=> b!1915550 m!2350483))

(assert (=> b!1915550 m!2350475))

(assert (=> b!1915550 m!2350483))

(assert (=> b!1915550 m!2350475))

(declare-fun m!2350485 () Bool)

(assert (=> b!1915550 m!2350485))

(assert (=> d!585067 m!2350473))

(declare-fun m!2350487 () Bool)

(assert (=> d!585067 m!2350487))

(assert (=> b!1915303 d!585067))

(declare-fun d!585069 () Bool)

(declare-fun res!856106 () Bool)

(declare-fun e!1223757 () Bool)

(assert (=> d!585069 (=> (not res!856106) (not e!1223757))))

(assert (=> d!585069 (= res!856106 (validRegex!2126 (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(assert (=> d!585069 (= (ruleValid!1183 thiss!23328 (rule!6065 (h!27043 tokens!598))) e!1223757)))

(declare-fun b!1915559 () Bool)

(declare-fun res!856107 () Bool)

(assert (=> b!1915559 (=> (not res!856107) (not e!1223757))))

(assert (=> b!1915559 (= res!856107 (not (nullable!1600 (regex!3864 (rule!6065 (h!27043 tokens!598))))))))

(declare-fun b!1915560 () Bool)

(assert (=> b!1915560 (= e!1223757 (not (= (tag!4302 (rule!6065 (h!27043 tokens!598))) (String!25119 ""))))))

(assert (= (and d!585069 res!856106) b!1915559))

(assert (= (and b!1915559 res!856107) b!1915560))

(assert (=> d!585069 m!2350487))

(assert (=> b!1915559 m!2350481))

(assert (=> b!1915303 d!585069))

(declare-fun d!585071 () Bool)

(assert (=> d!585071 (ruleValid!1183 thiss!23328 (rule!6065 (h!27043 tokens!598)))))

(declare-fun lt!734027 () Unit!36034)

(declare-fun choose!11915 (LexerInterface!3477 Rule!7528 List!21725) Unit!36034)

(assert (=> d!585071 (= lt!734027 (choose!11915 thiss!23328 (rule!6065 (h!27043 tokens!598)) rules!3198))))

(assert (=> d!585071 (contains!3933 rules!3198 (rule!6065 (h!27043 tokens!598)))))

(assert (=> d!585071 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!680 thiss!23328 (rule!6065 (h!27043 tokens!598)) rules!3198) lt!734027)))

(declare-fun bs!414263 () Bool)

(assert (= bs!414263 d!585071))

(assert (=> bs!414263 m!2350121))

(declare-fun m!2350489 () Bool)

(assert (=> bs!414263 m!2350489))

(assert (=> bs!414263 m!2350131))

(assert (=> b!1915303 d!585071))

(declare-fun d!585073 () Bool)

(declare-fun lt!734030 () Bool)

(declare-fun content!3158 (List!21725) (InoxSet Rule!7528))

(assert (=> d!585073 (= lt!734030 (select (content!3158 rules!3198) (rule!6065 separatorToken!354)))))

(declare-fun e!1223775 () Bool)

(assert (=> d!585073 (= lt!734030 e!1223775)))

(declare-fun res!856112 () Bool)

(assert (=> d!585073 (=> (not res!856112) (not e!1223775))))

(assert (=> d!585073 (= res!856112 ((_ is Cons!21643) rules!3198))))

(assert (=> d!585073 (= (contains!3933 rules!3198 (rule!6065 separatorToken!354)) lt!734030)))

(declare-fun b!1915586 () Bool)

(declare-fun e!1223776 () Bool)

(assert (=> b!1915586 (= e!1223775 e!1223776)))

(declare-fun res!856113 () Bool)

(assert (=> b!1915586 (=> res!856113 e!1223776)))

(assert (=> b!1915586 (= res!856113 (= (h!27044 rules!3198) (rule!6065 separatorToken!354)))))

(declare-fun b!1915587 () Bool)

(assert (=> b!1915587 (= e!1223776 (contains!3933 (t!178406 rules!3198) (rule!6065 separatorToken!354)))))

(assert (= (and d!585073 res!856112) b!1915586))

(assert (= (and b!1915586 (not res!856113)) b!1915587))

(declare-fun m!2350519 () Bool)

(assert (=> d!585073 m!2350519))

(declare-fun m!2350521 () Bool)

(assert (=> d!585073 m!2350521))

(declare-fun m!2350523 () Bool)

(assert (=> b!1915587 m!2350523))

(assert (=> b!1915305 d!585073))

(declare-fun b!1915598 () Bool)

(declare-fun e!1223783 () Bool)

(declare-fun inv!16 (TokenValue!4000) Bool)

(assert (=> b!1915598 (= e!1223783 (inv!16 (value!121715 (h!27043 tokens!598))))))

(declare-fun d!585077 () Bool)

(declare-fun c!311855 () Bool)

(assert (=> d!585077 (= c!311855 ((_ is IntegerValue!12000) (value!121715 (h!27043 tokens!598))))))

(assert (=> d!585077 (= (inv!21 (value!121715 (h!27043 tokens!598))) e!1223783)))

(declare-fun b!1915599 () Bool)

(declare-fun e!1223784 () Bool)

(declare-fun inv!15 (TokenValue!4000) Bool)

(assert (=> b!1915599 (= e!1223784 (inv!15 (value!121715 (h!27043 tokens!598))))))

(declare-fun b!1915600 () Bool)

(declare-fun e!1223785 () Bool)

(declare-fun inv!17 (TokenValue!4000) Bool)

(assert (=> b!1915600 (= e!1223785 (inv!17 (value!121715 (h!27043 tokens!598))))))

(declare-fun b!1915601 () Bool)

(declare-fun res!856116 () Bool)

(assert (=> b!1915601 (=> res!856116 e!1223784)))

(assert (=> b!1915601 (= res!856116 (not ((_ is IntegerValue!12002) (value!121715 (h!27043 tokens!598)))))))

(assert (=> b!1915601 (= e!1223785 e!1223784)))

(declare-fun b!1915602 () Bool)

(assert (=> b!1915602 (= e!1223783 e!1223785)))

(declare-fun c!311854 () Bool)

(assert (=> b!1915602 (= c!311854 ((_ is IntegerValue!12001) (value!121715 (h!27043 tokens!598))))))

(assert (= (and d!585077 c!311855) b!1915598))

(assert (= (and d!585077 (not c!311855)) b!1915602))

(assert (= (and b!1915602 c!311854) b!1915600))

(assert (= (and b!1915602 (not c!311854)) b!1915601))

(assert (= (and b!1915601 (not res!856116)) b!1915599))

(declare-fun m!2350531 () Bool)

(assert (=> b!1915598 m!2350531))

(declare-fun m!2350533 () Bool)

(assert (=> b!1915599 m!2350533))

(declare-fun m!2350535 () Bool)

(assert (=> b!1915600 m!2350535))

(assert (=> b!1915326 d!585077))

(declare-fun d!585085 () Bool)

(assert (=> d!585085 (= (isEmpty!13326 (_2!11654 lt!733908)) ((_ is Nil!21641) (_2!11654 lt!733908)))))

(assert (=> b!1915317 d!585085))

(declare-fun d!585087 () Bool)

(declare-fun res!856129 () Bool)

(declare-fun e!1223795 () Bool)

(assert (=> d!585087 (=> (not res!856129) (not e!1223795))))

(assert (=> d!585087 (= res!856129 (not (isEmpty!13326 (originalCharacters!4671 separatorToken!354))))))

(assert (=> d!585087 (= (inv!28738 separatorToken!354) e!1223795)))

(declare-fun b!1915621 () Bool)

(declare-fun res!856130 () Bool)

(assert (=> b!1915621 (=> (not res!856130) (not e!1223795))))

(declare-fun dynLambda!10530 (Int TokenValue!4000) BalanceConc!14256)

(assert (=> b!1915621 (= res!856130 (= (originalCharacters!4671 separatorToken!354) (list!8792 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (value!121715 separatorToken!354)))))))

(declare-fun b!1915622 () Bool)

(declare-fun size!17009 (List!21723) Int)

(assert (=> b!1915622 (= e!1223795 (= (size!17004 separatorToken!354) (size!17009 (originalCharacters!4671 separatorToken!354))))))

(assert (= (and d!585087 res!856129) b!1915621))

(assert (= (and b!1915621 res!856130) b!1915622))

(declare-fun b_lambda!63363 () Bool)

(assert (=> (not b_lambda!63363) (not b!1915621)))

(declare-fun t!178430 () Bool)

(declare-fun tb!117191 () Bool)

(assert (=> (and b!1915292 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354)))) t!178430) tb!117191))

(declare-fun b!1915627 () Bool)

(declare-fun e!1223798 () Bool)

(declare-fun tp!546646 () Bool)

(declare-fun inv!28742 (Conc!7220) Bool)

(assert (=> b!1915627 (= e!1223798 (and (inv!28742 (c!311807 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (value!121715 separatorToken!354)))) tp!546646))))

(declare-fun result!141602 () Bool)

(declare-fun inv!28743 (BalanceConc!14256) Bool)

(assert (=> tb!117191 (= result!141602 (and (inv!28743 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (value!121715 separatorToken!354))) e!1223798))))

(assert (= tb!117191 b!1915627))

(declare-fun m!2350559 () Bool)

(assert (=> b!1915627 m!2350559))

(declare-fun m!2350561 () Bool)

(assert (=> tb!117191 m!2350561))

(assert (=> b!1915621 t!178430))

(declare-fun b_and!149395 () Bool)

(assert (= b_and!149361 (and (=> t!178430 result!141602) b_and!149395)))

(declare-fun t!178432 () Bool)

(declare-fun tb!117193 () Bool)

(assert (=> (and b!1915322 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354)))) t!178432) tb!117193))

(declare-fun result!141606 () Bool)

(assert (= result!141606 result!141602))

(assert (=> b!1915621 t!178432))

(declare-fun b_and!149397 () Bool)

(assert (= b_and!149365 (and (=> t!178432 result!141606) b_and!149397)))

(declare-fun t!178434 () Bool)

(declare-fun tb!117195 () Bool)

(assert (=> (and b!1915320 (= (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354)))) t!178434) tb!117195))

(declare-fun result!141608 () Bool)

(assert (= result!141608 result!141602))

(assert (=> b!1915621 t!178434))

(declare-fun b_and!149399 () Bool)

(assert (= b_and!149369 (and (=> t!178434 result!141608) b_and!149399)))

(declare-fun m!2350563 () Bool)

(assert (=> d!585087 m!2350563))

(declare-fun m!2350565 () Bool)

(assert (=> b!1915621 m!2350565))

(assert (=> b!1915621 m!2350565))

(declare-fun m!2350567 () Bool)

(assert (=> b!1915621 m!2350567))

(declare-fun m!2350569 () Bool)

(assert (=> b!1915622 m!2350569))

(assert (=> start!192028 d!585087))

(declare-fun d!585093 () Bool)

(declare-fun isEmpty!13334 (Option!4433) Bool)

(assert (=> d!585093 (= (isDefined!3731 (maxPrefix!1923 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354))) (not (isEmpty!13334 (maxPrefix!1923 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun bs!414268 () Bool)

(assert (= bs!414268 d!585093))

(assert (=> bs!414268 m!2350127))

(declare-fun m!2350571 () Bool)

(assert (=> bs!414268 m!2350571))

(assert (=> b!1915295 d!585093))

(declare-fun b!1915687 () Bool)

(declare-fun res!856166 () Bool)

(declare-fun e!1223833 () Bool)

(assert (=> b!1915687 (=> (not res!856166) (not e!1223833))))

(declare-fun lt!734056 () Option!4433)

(assert (=> b!1915687 (= res!856166 (= (++!5817 (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734056)))) (_2!11654 (get!6773 lt!734056))) (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1915688 () Bool)

(declare-fun e!1223832 () Bool)

(assert (=> b!1915688 (= e!1223832 e!1223833)))

(declare-fun res!856164 () Bool)

(assert (=> b!1915688 (=> (not res!856164) (not e!1223833))))

(assert (=> b!1915688 (= res!856164 (isDefined!3731 lt!734056))))

(declare-fun b!1915689 () Bool)

(declare-fun res!856168 () Bool)

(assert (=> b!1915689 (=> (not res!856168) (not e!1223833))))

(declare-fun apply!5660 (TokenValueInjection!7584 BalanceConc!14256) TokenValue!4000)

(assert (=> b!1915689 (= res!856168 (= (value!121715 (_1!11654 (get!6773 lt!734056))) (apply!5660 (transformation!3864 (rule!6065 (_1!11654 (get!6773 lt!734056)))) (seqFromList!2736 (originalCharacters!4671 (_1!11654 (get!6773 lt!734056)))))))))

(declare-fun b!1915690 () Bool)

(declare-fun e!1223834 () Option!4433)

(declare-fun call!117898 () Option!4433)

(assert (=> b!1915690 (= e!1223834 call!117898)))

(declare-fun b!1915691 () Bool)

(assert (=> b!1915691 (= e!1223833 (contains!3933 rules!3198 (rule!6065 (_1!11654 (get!6773 lt!734056)))))))

(declare-fun d!585095 () Bool)

(assert (=> d!585095 e!1223832))

(declare-fun res!856165 () Bool)

(assert (=> d!585095 (=> res!856165 e!1223832)))

(assert (=> d!585095 (= res!856165 (isEmpty!13334 lt!734056))))

(assert (=> d!585095 (= lt!734056 e!1223834)))

(declare-fun c!311871 () Bool)

(assert (=> d!585095 (= c!311871 (and ((_ is Cons!21643) rules!3198) ((_ is Nil!21643) (t!178406 rules!3198))))))

(declare-fun lt!734055 () Unit!36034)

(declare-fun lt!734058 () Unit!36034)

(assert (=> d!585095 (= lt!734055 lt!734058)))

(declare-fun isPrefix!1929 (List!21723 List!21723) Bool)

(assert (=> d!585095 (isPrefix!1929 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun lemmaIsPrefixRefl!1247 (List!21723 List!21723) Unit!36034)

(assert (=> d!585095 (= lt!734058 (lemmaIsPrefixRefl!1247 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!585095 (rulesValidInductive!1312 thiss!23328 rules!3198)))

(assert (=> d!585095 (= (maxPrefix!1923 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!734056)))

(declare-fun b!1915692 () Bool)

(declare-fun res!856163 () Bool)

(assert (=> b!1915692 (=> (not res!856163) (not e!1223833))))

(assert (=> b!1915692 (= res!856163 (< (size!17009 (_2!11654 (get!6773 lt!734056))) (size!17009 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!1915693 () Bool)

(declare-fun res!856167 () Bool)

(assert (=> b!1915693 (=> (not res!856167) (not e!1223833))))

(assert (=> b!1915693 (= res!856167 (matchR!2575 (regex!3864 (rule!6065 (_1!11654 (get!6773 lt!734056)))) (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734056))))))))

(declare-fun b!1915694 () Bool)

(declare-fun res!856162 () Bool)

(assert (=> b!1915694 (=> (not res!856162) (not e!1223833))))

(assert (=> b!1915694 (= res!856162 (= (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734056)))) (originalCharacters!4671 (_1!11654 (get!6773 lt!734056)))))))

(declare-fun b!1915695 () Bool)

(declare-fun lt!734059 () Option!4433)

(declare-fun lt!734057 () Option!4433)

(assert (=> b!1915695 (= e!1223834 (ite (and ((_ is None!4432) lt!734059) ((_ is None!4432) lt!734057)) None!4432 (ite ((_ is None!4432) lt!734057) lt!734059 (ite ((_ is None!4432) lt!734059) lt!734057 (ite (>= (size!17004 (_1!11654 (v!26497 lt!734059))) (size!17004 (_1!11654 (v!26497 lt!734057)))) lt!734059 lt!734057)))))))

(assert (=> b!1915695 (= lt!734059 call!117898)))

(assert (=> b!1915695 (= lt!734057 (maxPrefix!1923 thiss!23328 (t!178406 rules!3198) (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun bm!117893 () Bool)

(declare-fun maxPrefixOneRule!1211 (LexerInterface!3477 Rule!7528 List!21723) Option!4433)

(assert (=> bm!117893 (= call!117898 (maxPrefixOneRule!1211 thiss!23328 (h!27044 rules!3198) (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (= (and d!585095 c!311871) b!1915690))

(assert (= (and d!585095 (not c!311871)) b!1915695))

(assert (= (or b!1915690 b!1915695) bm!117893))

(assert (= (and d!585095 (not res!856165)) b!1915688))

(assert (= (and b!1915688 res!856164) b!1915694))

(assert (= (and b!1915694 res!856162) b!1915692))

(assert (= (and b!1915692 res!856163) b!1915687))

(assert (= (and b!1915687 res!856166) b!1915689))

(assert (= (and b!1915689 res!856168) b!1915693))

(assert (= (and b!1915693 res!856167) b!1915691))

(declare-fun m!2350643 () Bool)

(assert (=> b!1915693 m!2350643))

(declare-fun m!2350645 () Bool)

(assert (=> b!1915693 m!2350645))

(assert (=> b!1915693 m!2350645))

(declare-fun m!2350647 () Bool)

(assert (=> b!1915693 m!2350647))

(assert (=> b!1915693 m!2350647))

(declare-fun m!2350649 () Bool)

(assert (=> b!1915693 m!2350649))

(assert (=> b!1915695 m!2350125))

(declare-fun m!2350651 () Bool)

(assert (=> b!1915695 m!2350651))

(assert (=> b!1915689 m!2350643))

(declare-fun m!2350653 () Bool)

(assert (=> b!1915689 m!2350653))

(assert (=> b!1915689 m!2350653))

(declare-fun m!2350655 () Bool)

(assert (=> b!1915689 m!2350655))

(assert (=> b!1915687 m!2350643))

(assert (=> b!1915687 m!2350645))

(assert (=> b!1915687 m!2350645))

(assert (=> b!1915687 m!2350647))

(assert (=> b!1915687 m!2350647))

(declare-fun m!2350657 () Bool)

(assert (=> b!1915687 m!2350657))

(assert (=> bm!117893 m!2350125))

(declare-fun m!2350659 () Bool)

(assert (=> bm!117893 m!2350659))

(declare-fun m!2350661 () Bool)

(assert (=> d!585095 m!2350661))

(assert (=> d!585095 m!2350125))

(assert (=> d!585095 m!2350125))

(declare-fun m!2350663 () Bool)

(assert (=> d!585095 m!2350663))

(assert (=> d!585095 m!2350125))

(assert (=> d!585095 m!2350125))

(declare-fun m!2350665 () Bool)

(assert (=> d!585095 m!2350665))

(assert (=> d!585095 m!2350137))

(assert (=> b!1915694 m!2350643))

(assert (=> b!1915694 m!2350645))

(assert (=> b!1915694 m!2350645))

(assert (=> b!1915694 m!2350647))

(assert (=> b!1915692 m!2350643))

(declare-fun m!2350667 () Bool)

(assert (=> b!1915692 m!2350667))

(assert (=> b!1915692 m!2350125))

(declare-fun m!2350669 () Bool)

(assert (=> b!1915692 m!2350669))

(assert (=> b!1915691 m!2350643))

(declare-fun m!2350671 () Bool)

(assert (=> b!1915691 m!2350671))

(declare-fun m!2350673 () Bool)

(assert (=> b!1915688 m!2350673))

(assert (=> b!1915295 d!585095))

(declare-fun bs!414276 () Bool)

(declare-fun b!1915795 () Bool)

(assert (= bs!414276 (and b!1915795 b!1915328)))

(declare-fun lambda!74777 () Int)

(assert (=> bs!414276 (not (= lambda!74777 lambda!74759))))

(declare-fun b!1915809 () Bool)

(declare-fun e!1223903 () Bool)

(assert (=> b!1915809 (= e!1223903 true)))

(declare-fun b!1915808 () Bool)

(declare-fun e!1223902 () Bool)

(assert (=> b!1915808 (= e!1223902 e!1223903)))

(declare-fun b!1915807 () Bool)

(declare-fun e!1223901 () Bool)

(assert (=> b!1915807 (= e!1223901 e!1223902)))

(assert (=> b!1915795 e!1223901))

(assert (= b!1915808 b!1915809))

(assert (= b!1915807 b!1915808))

(assert (= (and b!1915795 ((_ is Cons!21643) rules!3198)) b!1915807))

(declare-fun order!13651 () Int)

(declare-fun order!13653 () Int)

(declare-fun dynLambda!10531 (Int Int) Int)

(declare-fun dynLambda!10532 (Int Int) Int)

(assert (=> b!1915809 (< (dynLambda!10531 order!13651 (toValue!5493 (transformation!3864 (h!27044 rules!3198)))) (dynLambda!10532 order!13653 lambda!74777))))

(declare-fun order!13655 () Int)

(declare-fun dynLambda!10533 (Int Int) Int)

(assert (=> b!1915809 (< (dynLambda!10533 order!13655 (toChars!5352 (transformation!3864 (h!27044 rules!3198)))) (dynLambda!10532 order!13653 lambda!74777))))

(assert (=> b!1915795 true))

(declare-fun bm!117921 () Bool)

(declare-fun call!117928 () BalanceConc!14256)

(declare-fun call!117930 () BalanceConc!14256)

(assert (=> bm!117921 (= call!117928 call!117930)))

(declare-fun b!1915791 () Bool)

(declare-fun e!1223893 () List!21723)

(declare-fun call!117927 () List!21723)

(declare-fun lt!734125 () List!21723)

(assert (=> b!1915791 (= e!1223893 (++!5817 call!117927 lt!734125))))

(declare-fun bm!117922 () Bool)

(declare-fun c!311904 () Bool)

(declare-fun c!311907 () Bool)

(assert (=> bm!117922 (= call!117930 (charsOf!2420 (ite c!311907 (h!27043 tokens!598) (ite c!311904 separatorToken!354 (h!27043 tokens!598)))))))

(declare-fun b!1915792 () Bool)

(declare-fun e!1223894 () List!21723)

(assert (=> b!1915792 (= e!1223894 call!117927)))

(declare-fun b!1915793 () Bool)

(declare-fun e!1223892 () List!21723)

(assert (=> b!1915793 (= e!1223892 Nil!21641)))

(declare-fun b!1915794 () Bool)

(declare-fun e!1223891 () List!21723)

(declare-fun call!117929 () List!21723)

(assert (=> b!1915794 (= e!1223891 call!117929)))

(declare-fun bm!117923 () Bool)

(declare-fun c!311905 () Bool)

(assert (=> bm!117923 (= c!311905 c!311907)))

(declare-fun call!117926 () List!21723)

(assert (=> bm!117923 (= call!117927 (++!5817 e!1223891 (ite c!311907 lt!734125 call!117926)))))

(assert (=> b!1915795 (= e!1223892 e!1223894)))

(declare-fun lt!734123 () Unit!36034)

(declare-fun forallContained!698 (List!21724 Int Token!7280) Unit!36034)

(assert (=> b!1915795 (= lt!734123 (forallContained!698 tokens!598 lambda!74777 (h!27043 tokens!598)))))

(assert (=> b!1915795 (= lt!734125 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 (t!178405 tokens!598) separatorToken!354))))

(declare-fun lt!734127 () Option!4433)

(assert (=> b!1915795 (= lt!734127 (maxPrefix!1923 thiss!23328 rules!3198 (++!5817 (list!8792 (charsOf!2420 (h!27043 tokens!598))) lt!734125)))))

(assert (=> b!1915795 (= c!311907 (and ((_ is Some!4432) lt!734127) (= (_1!11654 (v!26497 lt!734127)) (h!27043 tokens!598))))))

(declare-fun b!1915796 () Bool)

(assert (=> b!1915796 (= e!1223891 (list!8792 (charsOf!2420 (h!27043 tokens!598))))))

(declare-fun d!585123 () Bool)

(declare-fun c!311906 () Bool)

(assert (=> d!585123 (= c!311906 ((_ is Cons!21642) tokens!598))))

(assert (=> d!585123 (= (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1223892)))

(declare-fun bm!117924 () Bool)

(assert (=> bm!117924 (= call!117929 (list!8792 (ite c!311907 call!117930 call!117928)))))

(declare-fun bm!117925 () Bool)

(assert (=> bm!117925 (= call!117926 call!117929)))

(declare-fun b!1915797 () Bool)

(assert (=> b!1915797 (= e!1223893 Nil!21641)))

(assert (=> b!1915797 (= (print!1487 thiss!23328 (singletonSeq!1887 (h!27043 tokens!598))) (printTailRec!994 thiss!23328 (singletonSeq!1887 (h!27043 tokens!598)) 0 (BalanceConc!14257 Empty!7220)))))

(declare-fun lt!734124 () Unit!36034)

(declare-fun Unit!36040 () Unit!36034)

(assert (=> b!1915797 (= lt!734124 Unit!36040)))

(declare-fun lt!734126 () Unit!36034)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!728 (LexerInterface!3477 List!21725 List!21723 List!21723) Unit!36034)

(assert (=> b!1915797 (= lt!734126 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!728 thiss!23328 rules!3198 call!117926 lt!734125))))

(assert (=> b!1915797 false))

(declare-fun lt!734128 () Unit!36034)

(declare-fun Unit!36041 () Unit!36034)

(assert (=> b!1915797 (= lt!734128 Unit!36041)))

(declare-fun b!1915798 () Bool)

(assert (=> b!1915798 (= c!311904 (and ((_ is Some!4432) lt!734127) (not (= (_1!11654 (v!26497 lt!734127)) (h!27043 tokens!598)))))))

(assert (=> b!1915798 (= e!1223894 e!1223893)))

(assert (= (and d!585123 c!311906) b!1915795))

(assert (= (and d!585123 (not c!311906)) b!1915793))

(assert (= (and b!1915795 c!311907) b!1915792))

(assert (= (and b!1915795 (not c!311907)) b!1915798))

(assert (= (and b!1915798 c!311904) b!1915791))

(assert (= (and b!1915798 (not c!311904)) b!1915797))

(assert (= (or b!1915791 b!1915797) bm!117921))

(assert (= (or b!1915791 b!1915797) bm!117925))

(assert (= (or b!1915792 bm!117921) bm!117922))

(assert (= (or b!1915792 bm!117925) bm!117924))

(assert (= (or b!1915792 b!1915791) bm!117923))

(assert (= (and bm!117923 c!311905) b!1915794))

(assert (= (and bm!117923 (not c!311905)) b!1915796))

(declare-fun m!2350827 () Bool)

(assert (=> b!1915795 m!2350827))

(declare-fun m!2350829 () Bool)

(assert (=> b!1915795 m!2350829))

(assert (=> b!1915795 m!2350159))

(assert (=> b!1915795 m!2350159))

(declare-fun m!2350831 () Bool)

(assert (=> b!1915795 m!2350831))

(assert (=> b!1915795 m!2350831))

(assert (=> b!1915795 m!2350827))

(declare-fun m!2350833 () Bool)

(assert (=> b!1915795 m!2350833))

(assert (=> b!1915795 m!2350153))

(declare-fun m!2350835 () Bool)

(assert (=> bm!117924 m!2350835))

(declare-fun m!2350837 () Bool)

(assert (=> bm!117923 m!2350837))

(assert (=> b!1915796 m!2350159))

(assert (=> b!1915796 m!2350159))

(assert (=> b!1915796 m!2350831))

(declare-fun m!2350839 () Bool)

(assert (=> bm!117922 m!2350839))

(declare-fun m!2350841 () Bool)

(assert (=> b!1915791 m!2350841))

(assert (=> b!1915797 m!2350089))

(assert (=> b!1915797 m!2350089))

(assert (=> b!1915797 m!2350443))

(assert (=> b!1915797 m!2350089))

(declare-fun m!2350843 () Bool)

(assert (=> b!1915797 m!2350843))

(declare-fun m!2350845 () Bool)

(assert (=> b!1915797 m!2350845))

(assert (=> b!1915295 d!585123))

(declare-fun b!1915821 () Bool)

(declare-fun e!1223908 () List!21723)

(assert (=> b!1915821 (= e!1223908 (Cons!21641 (h!27042 lt!733932) (++!5817 (t!178404 lt!733932) lt!733910)))))

(declare-fun d!585161 () Bool)

(declare-fun e!1223909 () Bool)

(assert (=> d!585161 e!1223909))

(declare-fun res!856207 () Bool)

(assert (=> d!585161 (=> (not res!856207) (not e!1223909))))

(declare-fun lt!734131 () List!21723)

(assert (=> d!585161 (= res!856207 (= (content!3156 lt!734131) ((_ map or) (content!3156 lt!733932) (content!3156 lt!733910))))))

(assert (=> d!585161 (= lt!734131 e!1223908)))

(declare-fun c!311910 () Bool)

(assert (=> d!585161 (= c!311910 ((_ is Nil!21641) lt!733932))))

(assert (=> d!585161 (= (++!5817 lt!733932 lt!733910) lt!734131)))

(declare-fun b!1915820 () Bool)

(assert (=> b!1915820 (= e!1223908 lt!733910)))

(declare-fun b!1915822 () Bool)

(declare-fun res!856206 () Bool)

(assert (=> b!1915822 (=> (not res!856206) (not e!1223909))))

(assert (=> b!1915822 (= res!856206 (= (size!17009 lt!734131) (+ (size!17009 lt!733932) (size!17009 lt!733910))))))

(declare-fun b!1915823 () Bool)

(assert (=> b!1915823 (= e!1223909 (or (not (= lt!733910 Nil!21641)) (= lt!734131 lt!733932)))))

(assert (= (and d!585161 c!311910) b!1915820))

(assert (= (and d!585161 (not c!311910)) b!1915821))

(assert (= (and d!585161 res!856207) b!1915822))

(assert (= (and b!1915822 res!856206) b!1915823))

(declare-fun m!2350847 () Bool)

(assert (=> b!1915821 m!2350847))

(declare-fun m!2350849 () Bool)

(assert (=> d!585161 m!2350849))

(declare-fun m!2350851 () Bool)

(assert (=> d!585161 m!2350851))

(declare-fun m!2350853 () Bool)

(assert (=> d!585161 m!2350853))

(declare-fun m!2350855 () Bool)

(assert (=> b!1915822 m!2350855))

(declare-fun m!2350857 () Bool)

(assert (=> b!1915822 m!2350857))

(declare-fun m!2350859 () Bool)

(assert (=> b!1915822 m!2350859))

(assert (=> b!1915298 d!585161))

(declare-fun d!585163 () Bool)

(declare-fun lt!734132 () Bool)

(assert (=> d!585163 (= lt!734132 (select (content!3156 lt!733914) lt!733924))))

(declare-fun e!1223910 () Bool)

(assert (=> d!585163 (= lt!734132 e!1223910)))

(declare-fun res!856208 () Bool)

(assert (=> d!585163 (=> (not res!856208) (not e!1223910))))

(assert (=> d!585163 (= res!856208 ((_ is Cons!21641) lt!733914))))

(assert (=> d!585163 (= (contains!3932 lt!733914 lt!733924) lt!734132)))

(declare-fun b!1915824 () Bool)

(declare-fun e!1223911 () Bool)

(assert (=> b!1915824 (= e!1223910 e!1223911)))

(declare-fun res!856209 () Bool)

(assert (=> b!1915824 (=> res!856209 e!1223911)))

(assert (=> b!1915824 (= res!856209 (= (h!27042 lt!733914) lt!733924))))

(declare-fun b!1915825 () Bool)

(assert (=> b!1915825 (= e!1223911 (contains!3932 (t!178404 lt!733914) lt!733924))))

(assert (= (and d!585163 res!856208) b!1915824))

(assert (= (and b!1915824 (not res!856209)) b!1915825))

(declare-fun m!2350861 () Bool)

(assert (=> d!585163 m!2350861))

(declare-fun m!2350863 () Bool)

(assert (=> d!585163 m!2350863))

(declare-fun m!2350865 () Bool)

(assert (=> b!1915825 m!2350865))

(assert (=> b!1915298 d!585163))

(declare-fun b!1915827 () Bool)

(declare-fun e!1223912 () List!21723)

(assert (=> b!1915827 (= e!1223912 (Cons!21641 (h!27042 lt!733902) (++!5817 (t!178404 lt!733902) lt!733899)))))

(declare-fun d!585165 () Bool)

(declare-fun e!1223913 () Bool)

(assert (=> d!585165 e!1223913))

(declare-fun res!856211 () Bool)

(assert (=> d!585165 (=> (not res!856211) (not e!1223913))))

(declare-fun lt!734133 () List!21723)

(assert (=> d!585165 (= res!856211 (= (content!3156 lt!734133) ((_ map or) (content!3156 lt!733902) (content!3156 lt!733899))))))

(assert (=> d!585165 (= lt!734133 e!1223912)))

(declare-fun c!311911 () Bool)

(assert (=> d!585165 (= c!311911 ((_ is Nil!21641) lt!733902))))

(assert (=> d!585165 (= (++!5817 lt!733902 lt!733899) lt!734133)))

(declare-fun b!1915826 () Bool)

(assert (=> b!1915826 (= e!1223912 lt!733899)))

(declare-fun b!1915828 () Bool)

(declare-fun res!856210 () Bool)

(assert (=> b!1915828 (=> (not res!856210) (not e!1223913))))

(assert (=> b!1915828 (= res!856210 (= (size!17009 lt!734133) (+ (size!17009 lt!733902) (size!17009 lt!733899))))))

(declare-fun b!1915829 () Bool)

(assert (=> b!1915829 (= e!1223913 (or (not (= lt!733899 Nil!21641)) (= lt!734133 lt!733902)))))

(assert (= (and d!585165 c!311911) b!1915826))

(assert (= (and d!585165 (not c!311911)) b!1915827))

(assert (= (and d!585165 res!856211) b!1915828))

(assert (= (and b!1915828 res!856210) b!1915829))

(declare-fun m!2350867 () Bool)

(assert (=> b!1915827 m!2350867))

(declare-fun m!2350869 () Bool)

(assert (=> d!585165 m!2350869))

(declare-fun m!2350871 () Bool)

(assert (=> d!585165 m!2350871))

(declare-fun m!2350873 () Bool)

(assert (=> d!585165 m!2350873))

(declare-fun m!2350875 () Bool)

(assert (=> b!1915828 m!2350875))

(declare-fun m!2350877 () Bool)

(assert (=> b!1915828 m!2350877))

(declare-fun m!2350879 () Bool)

(assert (=> b!1915828 m!2350879))

(assert (=> b!1915298 d!585165))

(declare-fun d!585167 () Bool)

(declare-fun lt!734134 () Bool)

(assert (=> d!585167 (= lt!734134 (select (content!3156 lt!733915) lt!733924))))

(declare-fun e!1223914 () Bool)

(assert (=> d!585167 (= lt!734134 e!1223914)))

(declare-fun res!856212 () Bool)

(assert (=> d!585167 (=> (not res!856212) (not e!1223914))))

(assert (=> d!585167 (= res!856212 ((_ is Cons!21641) lt!733915))))

(assert (=> d!585167 (= (contains!3932 lt!733915 lt!733924) lt!734134)))

(declare-fun b!1915830 () Bool)

(declare-fun e!1223915 () Bool)

(assert (=> b!1915830 (= e!1223914 e!1223915)))

(declare-fun res!856213 () Bool)

(assert (=> b!1915830 (=> res!856213 e!1223915)))

(assert (=> b!1915830 (= res!856213 (= (h!27042 lt!733915) lt!733924))))

(declare-fun b!1915831 () Bool)

(assert (=> b!1915831 (= e!1223915 (contains!3932 (t!178404 lt!733915) lt!733924))))

(assert (= (and d!585167 res!856212) b!1915830))

(assert (= (and b!1915830 (not res!856213)) b!1915831))

(assert (=> d!585167 m!2350435))

(declare-fun m!2350881 () Bool)

(assert (=> d!585167 m!2350881))

(declare-fun m!2350883 () Bool)

(assert (=> b!1915831 m!2350883))

(assert (=> b!1915298 d!585167))

(declare-fun b!1915848 () Bool)

(declare-fun e!1223925 () List!21723)

(declare-fun e!1223927 () List!21723)

(assert (=> b!1915848 (= e!1223925 e!1223927)))

(declare-fun c!311922 () Bool)

(assert (=> b!1915848 (= c!311922 ((_ is ElementMatch!5289) (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun bm!117934 () Bool)

(declare-fun call!117942 () List!21723)

(declare-fun call!117939 () List!21723)

(assert (=> bm!117934 (= call!117942 call!117939)))

(declare-fun b!1915849 () Bool)

(declare-fun c!311923 () Bool)

(assert (=> b!1915849 (= c!311923 ((_ is Star!5289) (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun e!1223924 () List!21723)

(assert (=> b!1915849 (= e!1223927 e!1223924)))

(declare-fun b!1915850 () Bool)

(assert (=> b!1915850 (= e!1223924 call!117939)))

(declare-fun call!117941 () List!21723)

(declare-fun c!311921 () Bool)

(declare-fun call!117940 () List!21723)

(declare-fun bm!117935 () Bool)

(assert (=> bm!117935 (= call!117940 (++!5817 (ite c!311921 call!117941 call!117942) (ite c!311921 call!117942 call!117941)))))

(declare-fun b!1915852 () Bool)

(declare-fun e!1223926 () List!21723)

(assert (=> b!1915852 (= e!1223926 call!117940)))

(declare-fun bm!117936 () Bool)

(assert (=> bm!117936 (= call!117939 (usedCharacters!372 (ite c!311923 (reg!5618 (regex!3864 (rule!6065 (h!27043 tokens!598)))) (ite c!311921 (regTwo!11091 (regex!3864 (rule!6065 (h!27043 tokens!598)))) (regOne!11090 (regex!3864 (rule!6065 (h!27043 tokens!598))))))))))

(declare-fun b!1915853 () Bool)

(assert (=> b!1915853 (= e!1223924 e!1223926)))

(assert (=> b!1915853 (= c!311921 ((_ is Union!5289) (regex!3864 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun b!1915854 () Bool)

(assert (=> b!1915854 (= e!1223925 Nil!21641)))

(declare-fun bm!117937 () Bool)

(assert (=> bm!117937 (= call!117941 (usedCharacters!372 (ite c!311921 (regOne!11091 (regex!3864 (rule!6065 (h!27043 tokens!598)))) (regTwo!11090 (regex!3864 (rule!6065 (h!27043 tokens!598)))))))))

(declare-fun b!1915855 () Bool)

(assert (=> b!1915855 (= e!1223927 (Cons!21641 (c!311806 (regex!3864 (rule!6065 (h!27043 tokens!598)))) Nil!21641))))

(declare-fun d!585169 () Bool)

(declare-fun c!311920 () Bool)

(assert (=> d!585169 (= c!311920 (or ((_ is EmptyExpr!5289) (regex!3864 (rule!6065 (h!27043 tokens!598)))) ((_ is EmptyLang!5289) (regex!3864 (rule!6065 (h!27043 tokens!598))))))))

(assert (=> d!585169 (= (usedCharacters!372 (regex!3864 (rule!6065 (h!27043 tokens!598)))) e!1223925)))

(declare-fun b!1915851 () Bool)

(assert (=> b!1915851 (= e!1223926 call!117940)))

(assert (= (and d!585169 c!311920) b!1915854))

(assert (= (and d!585169 (not c!311920)) b!1915848))

(assert (= (and b!1915848 c!311922) b!1915855))

(assert (= (and b!1915848 (not c!311922)) b!1915849))

(assert (= (and b!1915849 c!311923) b!1915850))

(assert (= (and b!1915849 (not c!311923)) b!1915853))

(assert (= (and b!1915853 c!311921) b!1915852))

(assert (= (and b!1915853 (not c!311921)) b!1915851))

(assert (= (or b!1915852 b!1915851) bm!117937))

(assert (= (or b!1915852 b!1915851) bm!117934))

(assert (= (or b!1915852 b!1915851) bm!117935))

(assert (= (or b!1915850 bm!117934) bm!117936))

(declare-fun m!2350885 () Bool)

(assert (=> bm!117935 m!2350885))

(declare-fun m!2350887 () Bool)

(assert (=> bm!117936 m!2350887))

(declare-fun m!2350889 () Bool)

(assert (=> bm!117937 m!2350889))

(assert (=> b!1915298 d!585169))

(declare-fun d!585171 () Bool)

(declare-fun e!1223930 () Bool)

(assert (=> d!585171 e!1223930))

(declare-fun res!856216 () Bool)

(assert (=> d!585171 (=> (not res!856216) (not e!1223930))))

(declare-fun lt!734137 () BalanceConc!14258)

(assert (=> d!585171 (= res!856216 (= (list!8795 lt!734137) (Cons!21642 (h!27043 tokens!598) Nil!21642)))))

(declare-fun singleton!840 (Token!7280) BalanceConc!14258)

(assert (=> d!585171 (= lt!734137 (singleton!840 (h!27043 tokens!598)))))

(assert (=> d!585171 (= (singletonSeq!1887 (h!27043 tokens!598)) lt!734137)))

(declare-fun b!1915858 () Bool)

(declare-fun isBalanced!2249 (Conc!7221) Bool)

(assert (=> b!1915858 (= e!1223930 (isBalanced!2249 (c!311808 lt!734137)))))

(assert (= (and d!585171 res!856216) b!1915858))

(declare-fun m!2350891 () Bool)

(assert (=> d!585171 m!2350891))

(declare-fun m!2350893 () Bool)

(assert (=> d!585171 m!2350893))

(declare-fun m!2350895 () Bool)

(assert (=> b!1915858 m!2350895))

(assert (=> b!1915298 d!585171))

(declare-fun d!585173 () Bool)

(declare-fun list!8796 (Conc!7220) List!21723)

(assert (=> d!585173 (= (list!8792 lt!733926) (list!8796 (c!311807 lt!733926)))))

(declare-fun bs!414277 () Bool)

(assert (= bs!414277 d!585173))

(declare-fun m!2350897 () Bool)

(assert (=> bs!414277 m!2350897))

(assert (=> b!1915298 d!585173))

(declare-fun b!1915860 () Bool)

(declare-fun e!1223931 () List!21723)

(assert (=> b!1915860 (= e!1223931 (Cons!21641 (h!27042 lt!733932) (++!5817 (t!178404 lt!733932) lt!733902)))))

(declare-fun d!585175 () Bool)

(declare-fun e!1223932 () Bool)

(assert (=> d!585175 e!1223932))

(declare-fun res!856218 () Bool)

(assert (=> d!585175 (=> (not res!856218) (not e!1223932))))

(declare-fun lt!734138 () List!21723)

(assert (=> d!585175 (= res!856218 (= (content!3156 lt!734138) ((_ map or) (content!3156 lt!733932) (content!3156 lt!733902))))))

(assert (=> d!585175 (= lt!734138 e!1223931)))

(declare-fun c!311924 () Bool)

(assert (=> d!585175 (= c!311924 ((_ is Nil!21641) lt!733932))))

(assert (=> d!585175 (= (++!5817 lt!733932 lt!733902) lt!734138)))

(declare-fun b!1915859 () Bool)

(assert (=> b!1915859 (= e!1223931 lt!733902)))

(declare-fun b!1915861 () Bool)

(declare-fun res!856217 () Bool)

(assert (=> b!1915861 (=> (not res!856217) (not e!1223932))))

(assert (=> b!1915861 (= res!856217 (= (size!17009 lt!734138) (+ (size!17009 lt!733932) (size!17009 lt!733902))))))

(declare-fun b!1915862 () Bool)

(assert (=> b!1915862 (= e!1223932 (or (not (= lt!733902 Nil!21641)) (= lt!734138 lt!733932)))))

(assert (= (and d!585175 c!311924) b!1915859))

(assert (= (and d!585175 (not c!311924)) b!1915860))

(assert (= (and d!585175 res!856218) b!1915861))

(assert (= (and b!1915861 res!856217) b!1915862))

(declare-fun m!2350899 () Bool)

(assert (=> b!1915860 m!2350899))

(declare-fun m!2350901 () Bool)

(assert (=> d!585175 m!2350901))

(assert (=> d!585175 m!2350851))

(assert (=> d!585175 m!2350871))

(declare-fun m!2350903 () Bool)

(assert (=> b!1915861 m!2350903))

(assert (=> b!1915861 m!2350857))

(assert (=> b!1915861 m!2350877))

(assert (=> b!1915298 d!585175))

(declare-fun d!585177 () Bool)

(assert (=> d!585177 (not (contains!3932 (usedCharacters!372 (regex!3864 (rule!6065 (h!27043 tokens!598)))) lt!733924))))

(declare-fun lt!734144 () Unit!36034)

(declare-fun choose!11918 (LexerInterface!3477 List!21725 List!21725 Rule!7528 Rule!7528 C!10724) Unit!36034)

(assert (=> d!585177 (= lt!734144 (choose!11918 thiss!23328 rules!3198 rules!3198 (rule!6065 (h!27043 tokens!598)) (rule!6065 separatorToken!354) lt!733924))))

(assert (=> d!585177 (rulesInvariant!3084 thiss!23328 rules!3198)))

(assert (=> d!585177 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!68 thiss!23328 rules!3198 rules!3198 (rule!6065 (h!27043 tokens!598)) (rule!6065 separatorToken!354) lt!733924) lt!734144)))

(declare-fun bs!414278 () Bool)

(assert (= bs!414278 d!585177))

(assert (=> bs!414278 m!2350079))

(assert (=> bs!414278 m!2350079))

(declare-fun m!2350905 () Bool)

(assert (=> bs!414278 m!2350905))

(declare-fun m!2350907 () Bool)

(assert (=> bs!414278 m!2350907))

(assert (=> bs!414278 m!2350109))

(assert (=> b!1915298 d!585177))

(declare-fun d!585179 () Bool)

(declare-fun c!311928 () Bool)

(assert (=> d!585179 (= c!311928 ((_ is Cons!21642) (Cons!21642 (h!27043 tokens!598) Nil!21642)))))

(declare-fun e!1223944 () List!21723)

(assert (=> d!585179 (= (printList!1060 thiss!23328 (Cons!21642 (h!27043 tokens!598) Nil!21642)) e!1223944)))

(declare-fun b!1915876 () Bool)

(assert (=> b!1915876 (= e!1223944 (++!5817 (list!8792 (charsOf!2420 (h!27043 (Cons!21642 (h!27043 tokens!598) Nil!21642)))) (printList!1060 thiss!23328 (t!178405 (Cons!21642 (h!27043 tokens!598) Nil!21642)))))))

(declare-fun b!1915877 () Bool)

(assert (=> b!1915877 (= e!1223944 Nil!21641)))

(assert (= (and d!585179 c!311928) b!1915876))

(assert (= (and d!585179 (not c!311928)) b!1915877))

(declare-fun m!2350913 () Bool)

(assert (=> b!1915876 m!2350913))

(assert (=> b!1915876 m!2350913))

(declare-fun m!2350915 () Bool)

(assert (=> b!1915876 m!2350915))

(declare-fun m!2350917 () Bool)

(assert (=> b!1915876 m!2350917))

(assert (=> b!1915876 m!2350915))

(assert (=> b!1915876 m!2350917))

(declare-fun m!2350919 () Bool)

(assert (=> b!1915876 m!2350919))

(assert (=> b!1915298 d!585179))

(declare-fun b!1915879 () Bool)

(declare-fun e!1223945 () List!21723)

(assert (=> b!1915879 (= e!1223945 (Cons!21641 (h!27042 lt!733920) (++!5817 (t!178404 lt!733920) lt!733899)))))

(declare-fun d!585183 () Bool)

(declare-fun e!1223946 () Bool)

(assert (=> d!585183 e!1223946))

(declare-fun res!856226 () Bool)

(assert (=> d!585183 (=> (not res!856226) (not e!1223946))))

(declare-fun lt!734148 () List!21723)

(assert (=> d!585183 (= res!856226 (= (content!3156 lt!734148) ((_ map or) (content!3156 lt!733920) (content!3156 lt!733899))))))

(assert (=> d!585183 (= lt!734148 e!1223945)))

(declare-fun c!311929 () Bool)

(assert (=> d!585183 (= c!311929 ((_ is Nil!21641) lt!733920))))

(assert (=> d!585183 (= (++!5817 lt!733920 lt!733899) lt!734148)))

(declare-fun b!1915878 () Bool)

(assert (=> b!1915878 (= e!1223945 lt!733899)))

(declare-fun b!1915880 () Bool)

(declare-fun res!856225 () Bool)

(assert (=> b!1915880 (=> (not res!856225) (not e!1223946))))

(assert (=> b!1915880 (= res!856225 (= (size!17009 lt!734148) (+ (size!17009 lt!733920) (size!17009 lt!733899))))))

(declare-fun b!1915881 () Bool)

(assert (=> b!1915881 (= e!1223946 (or (not (= lt!733899 Nil!21641)) (= lt!734148 lt!733920)))))

(assert (= (and d!585183 c!311929) b!1915878))

(assert (= (and d!585183 (not c!311929)) b!1915879))

(assert (= (and d!585183 res!856226) b!1915880))

(assert (= (and b!1915880 res!856225) b!1915881))

(declare-fun m!2350927 () Bool)

(assert (=> b!1915879 m!2350927))

(declare-fun m!2350929 () Bool)

(assert (=> d!585183 m!2350929))

(declare-fun m!2350931 () Bool)

(assert (=> d!585183 m!2350931))

(assert (=> d!585183 m!2350873))

(declare-fun m!2350933 () Bool)

(assert (=> b!1915880 m!2350933))

(declare-fun m!2350935 () Bool)

(assert (=> b!1915880 m!2350935))

(assert (=> b!1915880 m!2350879))

(assert (=> b!1915298 d!585183))

(declare-fun b!1915882 () Bool)

(declare-fun e!1223948 () List!21723)

(declare-fun e!1223950 () List!21723)

(assert (=> b!1915882 (= e!1223948 e!1223950)))

(declare-fun c!311932 () Bool)

(assert (=> b!1915882 (= c!311932 ((_ is ElementMatch!5289) (regex!3864 (rule!6065 separatorToken!354))))))

(declare-fun bm!117938 () Bool)

(declare-fun call!117946 () List!21723)

(declare-fun call!117943 () List!21723)

(assert (=> bm!117938 (= call!117946 call!117943)))

(declare-fun b!1915883 () Bool)

(declare-fun c!311933 () Bool)

(assert (=> b!1915883 (= c!311933 ((_ is Star!5289) (regex!3864 (rule!6065 separatorToken!354))))))

(declare-fun e!1223947 () List!21723)

(assert (=> b!1915883 (= e!1223950 e!1223947)))

(declare-fun b!1915884 () Bool)

(assert (=> b!1915884 (= e!1223947 call!117943)))

(declare-fun bm!117939 () Bool)

(declare-fun c!311931 () Bool)

(declare-fun call!117945 () List!21723)

(declare-fun call!117944 () List!21723)

(assert (=> bm!117939 (= call!117944 (++!5817 (ite c!311931 call!117945 call!117946) (ite c!311931 call!117946 call!117945)))))

(declare-fun b!1915886 () Bool)

(declare-fun e!1223949 () List!21723)

(assert (=> b!1915886 (= e!1223949 call!117944)))

(declare-fun bm!117940 () Bool)

(assert (=> bm!117940 (= call!117943 (usedCharacters!372 (ite c!311933 (reg!5618 (regex!3864 (rule!6065 separatorToken!354))) (ite c!311931 (regTwo!11091 (regex!3864 (rule!6065 separatorToken!354))) (regOne!11090 (regex!3864 (rule!6065 separatorToken!354)))))))))

(declare-fun b!1915887 () Bool)

(assert (=> b!1915887 (= e!1223947 e!1223949)))

(assert (=> b!1915887 (= c!311931 ((_ is Union!5289) (regex!3864 (rule!6065 separatorToken!354))))))

(declare-fun b!1915888 () Bool)

(assert (=> b!1915888 (= e!1223948 Nil!21641)))

(declare-fun bm!117941 () Bool)

(assert (=> bm!117941 (= call!117945 (usedCharacters!372 (ite c!311931 (regOne!11091 (regex!3864 (rule!6065 separatorToken!354))) (regTwo!11090 (regex!3864 (rule!6065 separatorToken!354))))))))

(declare-fun b!1915889 () Bool)

(assert (=> b!1915889 (= e!1223950 (Cons!21641 (c!311806 (regex!3864 (rule!6065 separatorToken!354))) Nil!21641))))

(declare-fun d!585187 () Bool)

(declare-fun c!311930 () Bool)

(assert (=> d!585187 (= c!311930 (or ((_ is EmptyExpr!5289) (regex!3864 (rule!6065 separatorToken!354))) ((_ is EmptyLang!5289) (regex!3864 (rule!6065 separatorToken!354)))))))

(assert (=> d!585187 (= (usedCharacters!372 (regex!3864 (rule!6065 separatorToken!354))) e!1223948)))

(declare-fun b!1915885 () Bool)

(assert (=> b!1915885 (= e!1223949 call!117944)))

(assert (= (and d!585187 c!311930) b!1915888))

(assert (= (and d!585187 (not c!311930)) b!1915882))

(assert (= (and b!1915882 c!311932) b!1915889))

(assert (= (and b!1915882 (not c!311932)) b!1915883))

(assert (= (and b!1915883 c!311933) b!1915884))

(assert (= (and b!1915883 (not c!311933)) b!1915887))

(assert (= (and b!1915887 c!311931) b!1915886))

(assert (= (and b!1915887 (not c!311931)) b!1915885))

(assert (= (or b!1915886 b!1915885) bm!117941))

(assert (= (or b!1915886 b!1915885) bm!117938))

(assert (= (or b!1915886 b!1915885) bm!117939))

(assert (= (or b!1915884 bm!117938) bm!117940))

(declare-fun m!2350937 () Bool)

(assert (=> bm!117939 m!2350937))

(declare-fun m!2350939 () Bool)

(assert (=> bm!117940 m!2350939))

(declare-fun m!2350941 () Bool)

(assert (=> bm!117941 m!2350941))

(assert (=> b!1915298 d!585187))

(declare-fun d!585189 () Bool)

(declare-fun lt!734164 () BalanceConc!14256)

(declare-fun printListTailRec!445 (LexerInterface!3477 List!21724 List!21723) List!21723)

(declare-fun dropList!776 (BalanceConc!14258 Int) List!21724)

(assert (=> d!585189 (= (list!8792 lt!734164) (printListTailRec!445 thiss!23328 (dropList!776 lt!733919 0) (list!8792 (BalanceConc!14257 Empty!7220))))))

(declare-fun e!1223955 () BalanceConc!14256)

(assert (=> d!585189 (= lt!734164 e!1223955)))

(declare-fun c!311936 () Bool)

(assert (=> d!585189 (= c!311936 (>= 0 (size!17008 lt!733919)))))

(declare-fun e!1223956 () Bool)

(assert (=> d!585189 e!1223956))

(declare-fun res!856229 () Bool)

(assert (=> d!585189 (=> (not res!856229) (not e!1223956))))

(assert (=> d!585189 (= res!856229 (>= 0 0))))

(assert (=> d!585189 (= (printTailRec!994 thiss!23328 lt!733919 0 (BalanceConc!14257 Empty!7220)) lt!734164)))

(declare-fun b!1915896 () Bool)

(assert (=> b!1915896 (= e!1223956 (<= 0 (size!17008 lt!733919)))))

(declare-fun b!1915897 () Bool)

(assert (=> b!1915897 (= e!1223955 (BalanceConc!14257 Empty!7220))))

(declare-fun b!1915898 () Bool)

(declare-fun ++!5819 (BalanceConc!14256 BalanceConc!14256) BalanceConc!14256)

(assert (=> b!1915898 (= e!1223955 (printTailRec!994 thiss!23328 lt!733919 (+ 0 1) (++!5819 (BalanceConc!14257 Empty!7220) (charsOf!2420 (apply!5659 lt!733919 0)))))))

(declare-fun lt!734169 () List!21724)

(assert (=> b!1915898 (= lt!734169 (list!8795 lt!733919))))

(declare-fun lt!734163 () Unit!36034)

(declare-fun lemmaDropApply!700 (List!21724 Int) Unit!36034)

(assert (=> b!1915898 (= lt!734163 (lemmaDropApply!700 lt!734169 0))))

(declare-fun head!4474 (List!21724) Token!7280)

(declare-fun drop!1067 (List!21724 Int) List!21724)

(declare-fun apply!5662 (List!21724 Int) Token!7280)

(assert (=> b!1915898 (= (head!4474 (drop!1067 lt!734169 0)) (apply!5662 lt!734169 0))))

(declare-fun lt!734165 () Unit!36034)

(assert (=> b!1915898 (= lt!734165 lt!734163)))

(declare-fun lt!734166 () List!21724)

(assert (=> b!1915898 (= lt!734166 (list!8795 lt!733919))))

(declare-fun lt!734167 () Unit!36034)

(declare-fun lemmaDropTail!676 (List!21724 Int) Unit!36034)

(assert (=> b!1915898 (= lt!734167 (lemmaDropTail!676 lt!734166 0))))

(declare-fun tail!2965 (List!21724) List!21724)

(assert (=> b!1915898 (= (tail!2965 (drop!1067 lt!734166 0)) (drop!1067 lt!734166 (+ 0 1)))))

(declare-fun lt!734168 () Unit!36034)

(assert (=> b!1915898 (= lt!734168 lt!734167)))

(assert (= (and d!585189 res!856229) b!1915896))

(assert (= (and d!585189 c!311936) b!1915897))

(assert (= (and d!585189 (not c!311936)) b!1915898))

(declare-fun m!2350943 () Bool)

(assert (=> d!585189 m!2350943))

(declare-fun m!2350945 () Bool)

(assert (=> d!585189 m!2350945))

(declare-fun m!2350947 () Bool)

(assert (=> d!585189 m!2350947))

(declare-fun m!2350949 () Bool)

(assert (=> d!585189 m!2350949))

(assert (=> d!585189 m!2350945))

(declare-fun m!2350951 () Bool)

(assert (=> d!585189 m!2350951))

(assert (=> d!585189 m!2350949))

(assert (=> b!1915896 m!2350943))

(declare-fun m!2350953 () Bool)

(assert (=> b!1915898 m!2350953))

(declare-fun m!2350955 () Bool)

(assert (=> b!1915898 m!2350955))

(declare-fun m!2350957 () Bool)

(assert (=> b!1915898 m!2350957))

(declare-fun m!2350959 () Bool)

(assert (=> b!1915898 m!2350959))

(declare-fun m!2350961 () Bool)

(assert (=> b!1915898 m!2350961))

(declare-fun m!2350963 () Bool)

(assert (=> b!1915898 m!2350963))

(declare-fun m!2350965 () Bool)

(assert (=> b!1915898 m!2350965))

(assert (=> b!1915898 m!2350953))

(declare-fun m!2350967 () Bool)

(assert (=> b!1915898 m!2350967))

(declare-fun m!2350969 () Bool)

(assert (=> b!1915898 m!2350969))

(assert (=> b!1915898 m!2350969))

(declare-fun m!2350971 () Bool)

(assert (=> b!1915898 m!2350971))

(declare-fun m!2350973 () Bool)

(assert (=> b!1915898 m!2350973))

(assert (=> b!1915898 m!2350965))

(assert (=> b!1915898 m!2350967))

(assert (=> b!1915898 m!2350961))

(declare-fun m!2350975 () Bool)

(assert (=> b!1915898 m!2350975))

(declare-fun m!2350977 () Bool)

(assert (=> b!1915898 m!2350977))

(assert (=> b!1915298 d!585189))

(declare-fun d!585191 () Bool)

(declare-fun lt!734172 () BalanceConc!14256)

(assert (=> d!585191 (= (list!8792 lt!734172) (printList!1060 thiss!23328 (list!8795 lt!733919)))))

(assert (=> d!585191 (= lt!734172 (printTailRec!994 thiss!23328 lt!733919 0 (BalanceConc!14257 Empty!7220)))))

(assert (=> d!585191 (= (print!1487 thiss!23328 lt!733919) lt!734172)))

(declare-fun bs!414282 () Bool)

(assert (= bs!414282 d!585191))

(declare-fun m!2350979 () Bool)

(assert (=> bs!414282 m!2350979))

(assert (=> bs!414282 m!2350973))

(assert (=> bs!414282 m!2350973))

(declare-fun m!2350981 () Bool)

(assert (=> bs!414282 m!2350981))

(assert (=> bs!414282 m!2350087))

(assert (=> b!1915298 d!585191))

(declare-fun d!585193 () Bool)

(assert (=> d!585193 (= (head!4472 lt!733902) (h!27042 lt!733902))))

(assert (=> b!1915298 d!585193))

(declare-fun d!585195 () Bool)

(assert (=> d!585195 (= (++!5817 (++!5817 lt!733932 lt!733902) lt!733899) (++!5817 lt!733932 (++!5817 lt!733902 lt!733899)))))

(declare-fun lt!734175 () Unit!36034)

(declare-fun choose!11920 (List!21723 List!21723 List!21723) Unit!36034)

(assert (=> d!585195 (= lt!734175 (choose!11920 lt!733932 lt!733902 lt!733899))))

(assert (=> d!585195 (= (lemmaConcatAssociativity!1179 lt!733932 lt!733902 lt!733899) lt!734175)))

(declare-fun bs!414283 () Bool)

(assert (= bs!414283 d!585195))

(assert (=> bs!414283 m!2350099))

(declare-fun m!2350983 () Bool)

(assert (=> bs!414283 m!2350983))

(declare-fun m!2350985 () Bool)

(assert (=> bs!414283 m!2350985))

(assert (=> bs!414283 m!2350093))

(assert (=> bs!414283 m!2350099))

(assert (=> bs!414283 m!2350093))

(declare-fun m!2350987 () Bool)

(assert (=> bs!414283 m!2350987))

(assert (=> b!1915298 d!585195))

(declare-fun bm!117942 () Bool)

(declare-fun call!117947 () Bool)

(assert (=> bm!117942 (= call!117947 (isEmpty!13326 lt!733932))))

(declare-fun b!1915899 () Bool)

(declare-fun e!1223959 () Bool)

(assert (=> b!1915899 (= e!1223959 (not (= (head!4472 lt!733932) (c!311806 (regex!3864 lt!733930)))))))

(declare-fun b!1915900 () Bool)

(declare-fun e!1223961 () Bool)

(declare-fun e!1223958 () Bool)

(assert (=> b!1915900 (= e!1223961 e!1223958)))

(declare-fun c!311939 () Bool)

(assert (=> b!1915900 (= c!311939 ((_ is EmptyLang!5289) (regex!3864 lt!733930)))))

(declare-fun b!1915901 () Bool)

(declare-fun res!856232 () Bool)

(declare-fun e!1223960 () Bool)

(assert (=> b!1915901 (=> (not res!856232) (not e!1223960))))

(assert (=> b!1915901 (= res!856232 (isEmpty!13326 (tail!2963 lt!733932)))))

(declare-fun b!1915902 () Bool)

(declare-fun res!856235 () Bool)

(declare-fun e!1223957 () Bool)

(assert (=> b!1915902 (=> res!856235 e!1223957)))

(assert (=> b!1915902 (= res!856235 (not ((_ is ElementMatch!5289) (regex!3864 lt!733930))))))

(assert (=> b!1915902 (= e!1223958 e!1223957)))

(declare-fun b!1915903 () Bool)

(declare-fun lt!734176 () Bool)

(assert (=> b!1915903 (= e!1223958 (not lt!734176))))

(declare-fun b!1915904 () Bool)

(assert (=> b!1915904 (= e!1223960 (= (head!4472 lt!733932) (c!311806 (regex!3864 lt!733930))))))

(declare-fun b!1915905 () Bool)

(assert (=> b!1915905 (= e!1223961 (= lt!734176 call!117947))))

(declare-fun b!1915906 () Bool)

(declare-fun res!856233 () Bool)

(assert (=> b!1915906 (=> (not res!856233) (not e!1223960))))

(assert (=> b!1915906 (= res!856233 (not call!117947))))

(declare-fun d!585197 () Bool)

(assert (=> d!585197 e!1223961))

(declare-fun c!311938 () Bool)

(assert (=> d!585197 (= c!311938 ((_ is EmptyExpr!5289) (regex!3864 lt!733930)))))

(declare-fun e!1223963 () Bool)

(assert (=> d!585197 (= lt!734176 e!1223963)))

(declare-fun c!311937 () Bool)

(assert (=> d!585197 (= c!311937 (isEmpty!13326 lt!733932))))

(assert (=> d!585197 (validRegex!2126 (regex!3864 lt!733930))))

(assert (=> d!585197 (= (matchR!2575 (regex!3864 lt!733930) lt!733932) lt!734176)))

(declare-fun b!1915907 () Bool)

(declare-fun e!1223962 () Bool)

(assert (=> b!1915907 (= e!1223962 e!1223959)))

(declare-fun res!856237 () Bool)

(assert (=> b!1915907 (=> res!856237 e!1223959)))

(assert (=> b!1915907 (= res!856237 call!117947)))

(declare-fun b!1915908 () Bool)

(assert (=> b!1915908 (= e!1223963 (matchR!2575 (derivativeStep!1359 (regex!3864 lt!733930) (head!4472 lt!733932)) (tail!2963 lt!733932)))))

(declare-fun b!1915909 () Bool)

(declare-fun res!856236 () Bool)

(assert (=> b!1915909 (=> res!856236 e!1223959)))

(assert (=> b!1915909 (= res!856236 (not (isEmpty!13326 (tail!2963 lt!733932))))))

(declare-fun b!1915910 () Bool)

(assert (=> b!1915910 (= e!1223963 (nullable!1600 (regex!3864 lt!733930)))))

(declare-fun b!1915911 () Bool)

(declare-fun res!856230 () Bool)

(assert (=> b!1915911 (=> res!856230 e!1223957)))

(assert (=> b!1915911 (= res!856230 e!1223960)))

(declare-fun res!856231 () Bool)

(assert (=> b!1915911 (=> (not res!856231) (not e!1223960))))

(assert (=> b!1915911 (= res!856231 lt!734176)))

(declare-fun b!1915912 () Bool)

(assert (=> b!1915912 (= e!1223957 e!1223962)))

(declare-fun res!856234 () Bool)

(assert (=> b!1915912 (=> (not res!856234) (not e!1223962))))

(assert (=> b!1915912 (= res!856234 (not lt!734176))))

(assert (= (and d!585197 c!311937) b!1915910))

(assert (= (and d!585197 (not c!311937)) b!1915908))

(assert (= (and d!585197 c!311938) b!1915905))

(assert (= (and d!585197 (not c!311938)) b!1915900))

(assert (= (and b!1915900 c!311939) b!1915903))

(assert (= (and b!1915900 (not c!311939)) b!1915902))

(assert (= (and b!1915902 (not res!856235)) b!1915911))

(assert (= (and b!1915911 res!856231) b!1915906))

(assert (= (and b!1915906 res!856233) b!1915901))

(assert (= (and b!1915901 res!856232) b!1915904))

(assert (= (and b!1915911 (not res!856230)) b!1915912))

(assert (= (and b!1915912 res!856234) b!1915907))

(assert (= (and b!1915907 (not res!856237)) b!1915909))

(assert (= (and b!1915909 (not res!856236)) b!1915899))

(assert (= (or b!1915905 b!1915906 b!1915907) bm!117942))

(assert (=> bm!117942 m!2350473))

(assert (=> b!1915909 m!2350475))

(assert (=> b!1915909 m!2350475))

(assert (=> b!1915909 m!2350477))

(assert (=> b!1915904 m!2350479))

(declare-fun m!2350989 () Bool)

(assert (=> b!1915910 m!2350989))

(assert (=> b!1915899 m!2350479))

(assert (=> b!1915901 m!2350475))

(assert (=> b!1915901 m!2350475))

(assert (=> b!1915901 m!2350477))

(assert (=> b!1915908 m!2350479))

(assert (=> b!1915908 m!2350479))

(declare-fun m!2350991 () Bool)

(assert (=> b!1915908 m!2350991))

(assert (=> b!1915908 m!2350475))

(assert (=> b!1915908 m!2350991))

(assert (=> b!1915908 m!2350475))

(declare-fun m!2350993 () Bool)

(assert (=> b!1915908 m!2350993))

(assert (=> d!585197 m!2350473))

(declare-fun m!2350995 () Bool)

(assert (=> d!585197 m!2350995))

(assert (=> b!1915319 d!585197))

(declare-fun d!585199 () Bool)

(assert (=> d!585199 (= (get!6772 lt!733928) (v!26498 lt!733928))))

(assert (=> b!1915319 d!585199))

(declare-fun d!585201 () Bool)

(declare-fun lt!734177 () Bool)

(assert (=> d!585201 (= lt!734177 (select (content!3158 rules!3198) (rule!6065 (h!27043 tokens!598))))))

(declare-fun e!1223964 () Bool)

(assert (=> d!585201 (= lt!734177 e!1223964)))

(declare-fun res!856238 () Bool)

(assert (=> d!585201 (=> (not res!856238) (not e!1223964))))

(assert (=> d!585201 (= res!856238 ((_ is Cons!21643) rules!3198))))

(assert (=> d!585201 (= (contains!3933 rules!3198 (rule!6065 (h!27043 tokens!598))) lt!734177)))

(declare-fun b!1915913 () Bool)

(declare-fun e!1223965 () Bool)

(assert (=> b!1915913 (= e!1223964 e!1223965)))

(declare-fun res!856239 () Bool)

(assert (=> b!1915913 (=> res!856239 e!1223965)))

(assert (=> b!1915913 (= res!856239 (= (h!27044 rules!3198) (rule!6065 (h!27043 tokens!598))))))

(declare-fun b!1915914 () Bool)

(assert (=> b!1915914 (= e!1223965 (contains!3933 (t!178406 rules!3198) (rule!6065 (h!27043 tokens!598))))))

(assert (= (and d!585201 res!856238) b!1915913))

(assert (= (and b!1915913 (not res!856239)) b!1915914))

(assert (=> d!585201 m!2350519))

(declare-fun m!2350997 () Bool)

(assert (=> d!585201 m!2350997))

(declare-fun m!2350999 () Bool)

(assert (=> b!1915914 m!2350999))

(assert (=> b!1915300 d!585201))

(declare-fun d!585203 () Bool)

(declare-fun lt!734178 () Bool)

(assert (=> d!585203 (= lt!734178 (select (content!3156 lt!733914) lt!733917))))

(declare-fun e!1223966 () Bool)

(assert (=> d!585203 (= lt!734178 e!1223966)))

(declare-fun res!856240 () Bool)

(assert (=> d!585203 (=> (not res!856240) (not e!1223966))))

(assert (=> d!585203 (= res!856240 ((_ is Cons!21641) lt!733914))))

(assert (=> d!585203 (= (contains!3932 lt!733914 lt!733917) lt!734178)))

(declare-fun b!1915915 () Bool)

(declare-fun e!1223967 () Bool)

(assert (=> b!1915915 (= e!1223966 e!1223967)))

(declare-fun res!856241 () Bool)

(assert (=> b!1915915 (=> res!856241 e!1223967)))

(assert (=> b!1915915 (= res!856241 (= (h!27042 lt!733914) lt!733917))))

(declare-fun b!1915916 () Bool)

(assert (=> b!1915916 (= e!1223967 (contains!3932 (t!178404 lt!733914) lt!733917))))

(assert (= (and d!585203 res!856240) b!1915915))

(assert (= (and b!1915915 (not res!856241)) b!1915916))

(assert (=> d!585203 m!2350861))

(declare-fun m!2351001 () Bool)

(assert (=> d!585203 m!2351001))

(declare-fun m!2351003 () Bool)

(assert (=> b!1915916 m!2351003))

(assert (=> b!1915321 d!585203))

(declare-fun bm!117943 () Bool)

(declare-fun call!117948 () Bool)

(assert (=> bm!117943 (= call!117948 (isEmpty!13326 lt!733902))))

(declare-fun b!1915917 () Bool)

(declare-fun e!1223970 () Bool)

(assert (=> b!1915917 (= e!1223970 (not (= (head!4472 lt!733902) (c!311806 (regex!3864 lt!733905)))))))

(declare-fun b!1915918 () Bool)

(declare-fun e!1223972 () Bool)

(declare-fun e!1223969 () Bool)

(assert (=> b!1915918 (= e!1223972 e!1223969)))

(declare-fun c!311942 () Bool)

(assert (=> b!1915918 (= c!311942 ((_ is EmptyLang!5289) (regex!3864 lt!733905)))))

(declare-fun b!1915919 () Bool)

(declare-fun res!856244 () Bool)

(declare-fun e!1223971 () Bool)

(assert (=> b!1915919 (=> (not res!856244) (not e!1223971))))

(assert (=> b!1915919 (= res!856244 (isEmpty!13326 (tail!2963 lt!733902)))))

(declare-fun b!1915920 () Bool)

(declare-fun res!856247 () Bool)

(declare-fun e!1223968 () Bool)

(assert (=> b!1915920 (=> res!856247 e!1223968)))

(assert (=> b!1915920 (= res!856247 (not ((_ is ElementMatch!5289) (regex!3864 lt!733905))))))

(assert (=> b!1915920 (= e!1223969 e!1223968)))

(declare-fun b!1915921 () Bool)

(declare-fun lt!734179 () Bool)

(assert (=> b!1915921 (= e!1223969 (not lt!734179))))

(declare-fun b!1915922 () Bool)

(assert (=> b!1915922 (= e!1223971 (= (head!4472 lt!733902) (c!311806 (regex!3864 lt!733905))))))

(declare-fun b!1915923 () Bool)

(assert (=> b!1915923 (= e!1223972 (= lt!734179 call!117948))))

(declare-fun b!1915924 () Bool)

(declare-fun res!856245 () Bool)

(assert (=> b!1915924 (=> (not res!856245) (not e!1223971))))

(assert (=> b!1915924 (= res!856245 (not call!117948))))

(declare-fun d!585205 () Bool)

(assert (=> d!585205 e!1223972))

(declare-fun c!311941 () Bool)

(assert (=> d!585205 (= c!311941 ((_ is EmptyExpr!5289) (regex!3864 lt!733905)))))

(declare-fun e!1223974 () Bool)

(assert (=> d!585205 (= lt!734179 e!1223974)))

(declare-fun c!311940 () Bool)

(assert (=> d!585205 (= c!311940 (isEmpty!13326 lt!733902))))

(assert (=> d!585205 (validRegex!2126 (regex!3864 lt!733905))))

(assert (=> d!585205 (= (matchR!2575 (regex!3864 lt!733905) lt!733902) lt!734179)))

(declare-fun b!1915925 () Bool)

(declare-fun e!1223973 () Bool)

(assert (=> b!1915925 (= e!1223973 e!1223970)))

(declare-fun res!856249 () Bool)

(assert (=> b!1915925 (=> res!856249 e!1223970)))

(assert (=> b!1915925 (= res!856249 call!117948)))

(declare-fun b!1915926 () Bool)

(assert (=> b!1915926 (= e!1223974 (matchR!2575 (derivativeStep!1359 (regex!3864 lt!733905) (head!4472 lt!733902)) (tail!2963 lt!733902)))))

(declare-fun b!1915927 () Bool)

(declare-fun res!856248 () Bool)

(assert (=> b!1915927 (=> res!856248 e!1223970)))

(assert (=> b!1915927 (= res!856248 (not (isEmpty!13326 (tail!2963 lt!733902))))))

(declare-fun b!1915928 () Bool)

(assert (=> b!1915928 (= e!1223974 (nullable!1600 (regex!3864 lt!733905)))))

(declare-fun b!1915929 () Bool)

(declare-fun res!856242 () Bool)

(assert (=> b!1915929 (=> res!856242 e!1223968)))

(assert (=> b!1915929 (= res!856242 e!1223971)))

(declare-fun res!856243 () Bool)

(assert (=> b!1915929 (=> (not res!856243) (not e!1223971))))

(assert (=> b!1915929 (= res!856243 lt!734179)))

(declare-fun b!1915930 () Bool)

(assert (=> b!1915930 (= e!1223968 e!1223973)))

(declare-fun res!856246 () Bool)

(assert (=> b!1915930 (=> (not res!856246) (not e!1223973))))

(assert (=> b!1915930 (= res!856246 (not lt!734179))))

(assert (= (and d!585205 c!311940) b!1915928))

(assert (= (and d!585205 (not c!311940)) b!1915926))

(assert (= (and d!585205 c!311941) b!1915923))

(assert (= (and d!585205 (not c!311941)) b!1915918))

(assert (= (and b!1915918 c!311942) b!1915921))

(assert (= (and b!1915918 (not c!311942)) b!1915920))

(assert (= (and b!1915920 (not res!856247)) b!1915929))

(assert (= (and b!1915929 res!856243) b!1915924))

(assert (= (and b!1915924 res!856245) b!1915919))

(assert (= (and b!1915919 res!856244) b!1915922))

(assert (= (and b!1915929 (not res!856242)) b!1915930))

(assert (= (and b!1915930 res!856246) b!1915925))

(assert (= (and b!1915925 (not res!856249)) b!1915927))

(assert (= (and b!1915927 (not res!856248)) b!1915917))

(assert (= (or b!1915923 b!1915924 b!1915925) bm!117943))

(assert (=> bm!117943 m!2350461))

(assert (=> b!1915927 m!2350463))

(assert (=> b!1915927 m!2350463))

(assert (=> b!1915927 m!2350465))

(assert (=> b!1915922 m!2350075))

(declare-fun m!2351005 () Bool)

(assert (=> b!1915928 m!2351005))

(assert (=> b!1915917 m!2350075))

(assert (=> b!1915919 m!2350463))

(assert (=> b!1915919 m!2350463))

(assert (=> b!1915919 m!2350465))

(assert (=> b!1915926 m!2350075))

(assert (=> b!1915926 m!2350075))

(declare-fun m!2351007 () Bool)

(assert (=> b!1915926 m!2351007))

(assert (=> b!1915926 m!2350463))

(assert (=> b!1915926 m!2351007))

(assert (=> b!1915926 m!2350463))

(declare-fun m!2351009 () Bool)

(assert (=> b!1915926 m!2351009))

(assert (=> d!585205 m!2350461))

(declare-fun m!2351011 () Bool)

(assert (=> d!585205 m!2351011))

(assert (=> b!1915299 d!585205))

(declare-fun d!585207 () Bool)

(assert (=> d!585207 (= (get!6772 lt!733916) (v!26498 lt!733916))))

(assert (=> b!1915299 d!585207))

(declare-fun d!585209 () Bool)

(assert (=> d!585209 (= (isEmpty!13327 rules!3198) ((_ is Nil!21643) rules!3198))))

(assert (=> b!1915312 d!585209))

(declare-fun d!585211 () Bool)

(declare-fun isEmpty!13336 (Option!4434) Bool)

(assert (=> d!585211 (= (isDefined!3732 lt!733928) (not (isEmpty!13336 lt!733928)))))

(declare-fun bs!414284 () Bool)

(assert (= bs!414284 d!585211))

(declare-fun m!2351013 () Bool)

(assert (=> bs!414284 m!2351013))

(assert (=> b!1915313 d!585211))

(declare-fun b!1915931 () Bool)

(declare-fun res!856254 () Bool)

(declare-fun e!1223976 () Bool)

(assert (=> b!1915931 (=> (not res!856254) (not e!1223976))))

(declare-fun lt!734181 () Option!4433)

(assert (=> b!1915931 (= res!856254 (= (++!5817 (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734181)))) (_2!11654 (get!6773 lt!734181))) lt!733932))))

(declare-fun b!1915932 () Bool)

(declare-fun e!1223975 () Bool)

(assert (=> b!1915932 (= e!1223975 e!1223976)))

(declare-fun res!856252 () Bool)

(assert (=> b!1915932 (=> (not res!856252) (not e!1223976))))

(assert (=> b!1915932 (= res!856252 (isDefined!3731 lt!734181))))

(declare-fun b!1915933 () Bool)

(declare-fun res!856256 () Bool)

(assert (=> b!1915933 (=> (not res!856256) (not e!1223976))))

(assert (=> b!1915933 (= res!856256 (= (value!121715 (_1!11654 (get!6773 lt!734181))) (apply!5660 (transformation!3864 (rule!6065 (_1!11654 (get!6773 lt!734181)))) (seqFromList!2736 (originalCharacters!4671 (_1!11654 (get!6773 lt!734181)))))))))

(declare-fun b!1915934 () Bool)

(declare-fun e!1223977 () Option!4433)

(declare-fun call!117949 () Option!4433)

(assert (=> b!1915934 (= e!1223977 call!117949)))

(declare-fun b!1915935 () Bool)

(assert (=> b!1915935 (= e!1223976 (contains!3933 rules!3198 (rule!6065 (_1!11654 (get!6773 lt!734181)))))))

(declare-fun d!585213 () Bool)

(assert (=> d!585213 e!1223975))

(declare-fun res!856253 () Bool)

(assert (=> d!585213 (=> res!856253 e!1223975)))

(assert (=> d!585213 (= res!856253 (isEmpty!13334 lt!734181))))

(assert (=> d!585213 (= lt!734181 e!1223977)))

(declare-fun c!311943 () Bool)

(assert (=> d!585213 (= c!311943 (and ((_ is Cons!21643) rules!3198) ((_ is Nil!21643) (t!178406 rules!3198))))))

(declare-fun lt!734180 () Unit!36034)

(declare-fun lt!734183 () Unit!36034)

(assert (=> d!585213 (= lt!734180 lt!734183)))

(assert (=> d!585213 (isPrefix!1929 lt!733932 lt!733932)))

(assert (=> d!585213 (= lt!734183 (lemmaIsPrefixRefl!1247 lt!733932 lt!733932))))

(assert (=> d!585213 (rulesValidInductive!1312 thiss!23328 rules!3198)))

(assert (=> d!585213 (= (maxPrefix!1923 thiss!23328 rules!3198 lt!733932) lt!734181)))

(declare-fun b!1915936 () Bool)

(declare-fun res!856251 () Bool)

(assert (=> b!1915936 (=> (not res!856251) (not e!1223976))))

(assert (=> b!1915936 (= res!856251 (< (size!17009 (_2!11654 (get!6773 lt!734181))) (size!17009 lt!733932)))))

(declare-fun b!1915937 () Bool)

(declare-fun res!856255 () Bool)

(assert (=> b!1915937 (=> (not res!856255) (not e!1223976))))

(assert (=> b!1915937 (= res!856255 (matchR!2575 (regex!3864 (rule!6065 (_1!11654 (get!6773 lt!734181)))) (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734181))))))))

(declare-fun b!1915938 () Bool)

(declare-fun res!856250 () Bool)

(assert (=> b!1915938 (=> (not res!856250) (not e!1223976))))

(assert (=> b!1915938 (= res!856250 (= (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734181)))) (originalCharacters!4671 (_1!11654 (get!6773 lt!734181)))))))

(declare-fun b!1915939 () Bool)

(declare-fun lt!734184 () Option!4433)

(declare-fun lt!734182 () Option!4433)

(assert (=> b!1915939 (= e!1223977 (ite (and ((_ is None!4432) lt!734184) ((_ is None!4432) lt!734182)) None!4432 (ite ((_ is None!4432) lt!734182) lt!734184 (ite ((_ is None!4432) lt!734184) lt!734182 (ite (>= (size!17004 (_1!11654 (v!26497 lt!734184))) (size!17004 (_1!11654 (v!26497 lt!734182)))) lt!734184 lt!734182)))))))

(assert (=> b!1915939 (= lt!734184 call!117949)))

(assert (=> b!1915939 (= lt!734182 (maxPrefix!1923 thiss!23328 (t!178406 rules!3198) lt!733932))))

(declare-fun bm!117944 () Bool)

(assert (=> bm!117944 (= call!117949 (maxPrefixOneRule!1211 thiss!23328 (h!27044 rules!3198) lt!733932))))

(assert (= (and d!585213 c!311943) b!1915934))

(assert (= (and d!585213 (not c!311943)) b!1915939))

(assert (= (or b!1915934 b!1915939) bm!117944))

(assert (= (and d!585213 (not res!856253)) b!1915932))

(assert (= (and b!1915932 res!856252) b!1915938))

(assert (= (and b!1915938 res!856250) b!1915936))

(assert (= (and b!1915936 res!856251) b!1915931))

(assert (= (and b!1915931 res!856254) b!1915933))

(assert (= (and b!1915933 res!856256) b!1915937))

(assert (= (and b!1915937 res!856255) b!1915935))

(declare-fun m!2351015 () Bool)

(assert (=> b!1915937 m!2351015))

(declare-fun m!2351017 () Bool)

(assert (=> b!1915937 m!2351017))

(assert (=> b!1915937 m!2351017))

(declare-fun m!2351019 () Bool)

(assert (=> b!1915937 m!2351019))

(assert (=> b!1915937 m!2351019))

(declare-fun m!2351021 () Bool)

(assert (=> b!1915937 m!2351021))

(declare-fun m!2351023 () Bool)

(assert (=> b!1915939 m!2351023))

(assert (=> b!1915933 m!2351015))

(declare-fun m!2351025 () Bool)

(assert (=> b!1915933 m!2351025))

(assert (=> b!1915933 m!2351025))

(declare-fun m!2351027 () Bool)

(assert (=> b!1915933 m!2351027))

(assert (=> b!1915931 m!2351015))

(assert (=> b!1915931 m!2351017))

(assert (=> b!1915931 m!2351017))

(assert (=> b!1915931 m!2351019))

(assert (=> b!1915931 m!2351019))

(declare-fun m!2351029 () Bool)

(assert (=> b!1915931 m!2351029))

(declare-fun m!2351031 () Bool)

(assert (=> bm!117944 m!2351031))

(declare-fun m!2351033 () Bool)

(assert (=> d!585213 m!2351033))

(declare-fun m!2351035 () Bool)

(assert (=> d!585213 m!2351035))

(declare-fun m!2351037 () Bool)

(assert (=> d!585213 m!2351037))

(assert (=> d!585213 m!2350137))

(assert (=> b!1915938 m!2351015))

(assert (=> b!1915938 m!2351017))

(assert (=> b!1915938 m!2351017))

(assert (=> b!1915938 m!2351019))

(assert (=> b!1915936 m!2351015))

(declare-fun m!2351039 () Bool)

(assert (=> b!1915936 m!2351039))

(assert (=> b!1915936 m!2350857))

(assert (=> b!1915935 m!2351015))

(declare-fun m!2351041 () Bool)

(assert (=> b!1915935 m!2351041))

(declare-fun m!2351043 () Bool)

(assert (=> b!1915932 m!2351043))

(assert (=> b!1915313 d!585213))

(declare-fun b!1915941 () Bool)

(declare-fun e!1223978 () List!21723)

(assert (=> b!1915941 (= e!1223978 (Cons!21641 (h!27042 lt!733932) (++!5817 (t!178404 lt!733932) lt!733899)))))

(declare-fun d!585215 () Bool)

(declare-fun e!1223979 () Bool)

(assert (=> d!585215 e!1223979))

(declare-fun res!856258 () Bool)

(assert (=> d!585215 (=> (not res!856258) (not e!1223979))))

(declare-fun lt!734185 () List!21723)

(assert (=> d!585215 (= res!856258 (= (content!3156 lt!734185) ((_ map or) (content!3156 lt!733932) (content!3156 lt!733899))))))

(assert (=> d!585215 (= lt!734185 e!1223978)))

(declare-fun c!311944 () Bool)

(assert (=> d!585215 (= c!311944 ((_ is Nil!21641) lt!733932))))

(assert (=> d!585215 (= (++!5817 lt!733932 lt!733899) lt!734185)))

(declare-fun b!1915940 () Bool)

(assert (=> b!1915940 (= e!1223978 lt!733899)))

(declare-fun b!1915942 () Bool)

(declare-fun res!856257 () Bool)

(assert (=> b!1915942 (=> (not res!856257) (not e!1223979))))

(assert (=> b!1915942 (= res!856257 (= (size!17009 lt!734185) (+ (size!17009 lt!733932) (size!17009 lt!733899))))))

(declare-fun b!1915943 () Bool)

(assert (=> b!1915943 (= e!1223979 (or (not (= lt!733899 Nil!21641)) (= lt!734185 lt!733932)))))

(assert (= (and d!585215 c!311944) b!1915940))

(assert (= (and d!585215 (not c!311944)) b!1915941))

(assert (= (and d!585215 res!856258) b!1915942))

(assert (= (and b!1915942 res!856257) b!1915943))

(declare-fun m!2351045 () Bool)

(assert (=> b!1915941 m!2351045))

(declare-fun m!2351047 () Bool)

(assert (=> d!585215 m!2351047))

(assert (=> d!585215 m!2350851))

(assert (=> d!585215 m!2350873))

(declare-fun m!2351049 () Bool)

(assert (=> b!1915942 m!2351049))

(assert (=> b!1915942 m!2350857))

(assert (=> b!1915942 m!2350879))

(assert (=> b!1915313 d!585215))

(declare-fun d!585217 () Bool)

(declare-fun e!1223982 () Bool)

(assert (=> d!585217 e!1223982))

(declare-fun res!856263 () Bool)

(assert (=> d!585217 (=> (not res!856263) (not e!1223982))))

(assert (=> d!585217 (= res!856263 (isDefined!3732 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 separatorToken!354)))))))

(declare-fun lt!734188 () Unit!36034)

(declare-fun choose!11922 (LexerInterface!3477 List!21725 List!21723 Token!7280) Unit!36034)

(assert (=> d!585217 (= lt!734188 (choose!11922 thiss!23328 rules!3198 lt!733902 separatorToken!354))))

(assert (=> d!585217 (rulesInvariant!3084 thiss!23328 rules!3198)))

(assert (=> d!585217 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!707 thiss!23328 rules!3198 lt!733902 separatorToken!354) lt!734188)))

(declare-fun b!1915948 () Bool)

(declare-fun res!856264 () Bool)

(assert (=> b!1915948 (=> (not res!856264) (not e!1223982))))

(assert (=> b!1915948 (= res!856264 (matchR!2575 (regex!3864 (get!6772 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 separatorToken!354))))) (list!8792 (charsOf!2420 separatorToken!354))))))

(declare-fun b!1915949 () Bool)

(assert (=> b!1915949 (= e!1223982 (= (rule!6065 separatorToken!354) (get!6772 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 separatorToken!354))))))))

(assert (= (and d!585217 res!856263) b!1915948))

(assert (= (and b!1915948 res!856264) b!1915949))

(assert (=> d!585217 m!2350151))

(assert (=> d!585217 m!2350151))

(declare-fun m!2351051 () Bool)

(assert (=> d!585217 m!2351051))

(declare-fun m!2351053 () Bool)

(assert (=> d!585217 m!2351053))

(assert (=> d!585217 m!2350109))

(assert (=> b!1915948 m!2350151))

(declare-fun m!2351055 () Bool)

(assert (=> b!1915948 m!2351055))

(assert (=> b!1915948 m!2350151))

(assert (=> b!1915948 m!2350155))

(assert (=> b!1915948 m!2350163))

(declare-fun m!2351057 () Bool)

(assert (=> b!1915948 m!2351057))

(assert (=> b!1915948 m!2350155))

(assert (=> b!1915948 m!2350163))

(assert (=> b!1915949 m!2350151))

(assert (=> b!1915949 m!2350151))

(assert (=> b!1915949 m!2351055))

(assert (=> b!1915313 d!585217))

(declare-fun bs!414285 () Bool)

(declare-fun b!1915954 () Bool)

(assert (= bs!414285 (and b!1915954 b!1915328)))

(declare-fun lambda!74781 () Int)

(assert (=> bs!414285 (not (= lambda!74781 lambda!74759))))

(declare-fun bs!414286 () Bool)

(assert (= bs!414286 (and b!1915954 b!1915795)))

(assert (=> bs!414286 (= lambda!74781 lambda!74777)))

(declare-fun b!1915960 () Bool)

(declare-fun e!1223989 () Bool)

(assert (=> b!1915960 (= e!1223989 true)))

(declare-fun b!1915959 () Bool)

(declare-fun e!1223988 () Bool)

(assert (=> b!1915959 (= e!1223988 e!1223989)))

(declare-fun b!1915958 () Bool)

(declare-fun e!1223987 () Bool)

(assert (=> b!1915958 (= e!1223987 e!1223988)))

(assert (=> b!1915954 e!1223987))

(assert (= b!1915959 b!1915960))

(assert (= b!1915958 b!1915959))

(assert (= (and b!1915954 ((_ is Cons!21643) rules!3198)) b!1915958))

(assert (=> b!1915960 (< (dynLambda!10531 order!13651 (toValue!5493 (transformation!3864 (h!27044 rules!3198)))) (dynLambda!10532 order!13653 lambda!74781))))

(assert (=> b!1915960 (< (dynLambda!10533 order!13655 (toChars!5352 (transformation!3864 (h!27044 rules!3198)))) (dynLambda!10532 order!13653 lambda!74781))))

(assert (=> b!1915954 true))

(declare-fun bm!117945 () Bool)

(declare-fun call!117952 () BalanceConc!14256)

(declare-fun call!117954 () BalanceConc!14256)

(assert (=> bm!117945 (= call!117952 call!117954)))

(declare-fun b!1915950 () Bool)

(declare-fun e!1223985 () List!21723)

(declare-fun call!117951 () List!21723)

(declare-fun lt!734191 () List!21723)

(assert (=> b!1915950 (= e!1223985 (++!5817 call!117951 lt!734191))))

(declare-fun c!311948 () Bool)

(declare-fun c!311945 () Bool)

(declare-fun bm!117946 () Bool)

(assert (=> bm!117946 (= call!117954 (charsOf!2420 (ite c!311948 (h!27043 (t!178405 tokens!598)) (ite c!311945 separatorToken!354 (h!27043 (t!178405 tokens!598))))))))

(declare-fun b!1915951 () Bool)

(declare-fun e!1223986 () List!21723)

(assert (=> b!1915951 (= e!1223986 call!117951)))

(declare-fun b!1915952 () Bool)

(declare-fun e!1223984 () List!21723)

(assert (=> b!1915952 (= e!1223984 Nil!21641)))

(declare-fun b!1915953 () Bool)

(declare-fun e!1223983 () List!21723)

(declare-fun call!117953 () List!21723)

(assert (=> b!1915953 (= e!1223983 call!117953)))

(declare-fun bm!117947 () Bool)

(declare-fun c!311946 () Bool)

(assert (=> bm!117947 (= c!311946 c!311948)))

(declare-fun call!117950 () List!21723)

(assert (=> bm!117947 (= call!117951 (++!5817 e!1223983 (ite c!311948 lt!734191 call!117950)))))

(assert (=> b!1915954 (= e!1223984 e!1223986)))

(declare-fun lt!734189 () Unit!36034)

(assert (=> b!1915954 (= lt!734189 (forallContained!698 (t!178405 tokens!598) lambda!74781 (h!27043 (t!178405 tokens!598))))))

(assert (=> b!1915954 (= lt!734191 (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 (t!178405 (t!178405 tokens!598)) separatorToken!354))))

(declare-fun lt!734193 () Option!4433)

(assert (=> b!1915954 (= lt!734193 (maxPrefix!1923 thiss!23328 rules!3198 (++!5817 (list!8792 (charsOf!2420 (h!27043 (t!178405 tokens!598)))) lt!734191)))))

(assert (=> b!1915954 (= c!311948 (and ((_ is Some!4432) lt!734193) (= (_1!11654 (v!26497 lt!734193)) (h!27043 (t!178405 tokens!598)))))))

(declare-fun b!1915955 () Bool)

(assert (=> b!1915955 (= e!1223983 (list!8792 (charsOf!2420 (h!27043 (t!178405 tokens!598)))))))

(declare-fun d!585219 () Bool)

(declare-fun c!311947 () Bool)

(assert (=> d!585219 (= c!311947 ((_ is Cons!21642) (t!178405 tokens!598)))))

(assert (=> d!585219 (= (printWithSeparatorTokenWhenNeededList!520 thiss!23328 rules!3198 (t!178405 tokens!598) separatorToken!354) e!1223984)))

(declare-fun bm!117948 () Bool)

(assert (=> bm!117948 (= call!117953 (list!8792 (ite c!311948 call!117954 call!117952)))))

(declare-fun bm!117949 () Bool)

(assert (=> bm!117949 (= call!117950 call!117953)))

(declare-fun b!1915956 () Bool)

(assert (=> b!1915956 (= e!1223985 Nil!21641)))

(assert (=> b!1915956 (= (print!1487 thiss!23328 (singletonSeq!1887 (h!27043 (t!178405 tokens!598)))) (printTailRec!994 thiss!23328 (singletonSeq!1887 (h!27043 (t!178405 tokens!598))) 0 (BalanceConc!14257 Empty!7220)))))

(declare-fun lt!734190 () Unit!36034)

(declare-fun Unit!36042 () Unit!36034)

(assert (=> b!1915956 (= lt!734190 Unit!36042)))

(declare-fun lt!734192 () Unit!36034)

(assert (=> b!1915956 (= lt!734192 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!728 thiss!23328 rules!3198 call!117950 lt!734191))))

(assert (=> b!1915956 false))

(declare-fun lt!734194 () Unit!36034)

(declare-fun Unit!36043 () Unit!36034)

(assert (=> b!1915956 (= lt!734194 Unit!36043)))

(declare-fun b!1915957 () Bool)

(assert (=> b!1915957 (= c!311945 (and ((_ is Some!4432) lt!734193) (not (= (_1!11654 (v!26497 lt!734193)) (h!27043 (t!178405 tokens!598))))))))

(assert (=> b!1915957 (= e!1223986 e!1223985)))

(assert (= (and d!585219 c!311947) b!1915954))

(assert (= (and d!585219 (not c!311947)) b!1915952))

(assert (= (and b!1915954 c!311948) b!1915951))

(assert (= (and b!1915954 (not c!311948)) b!1915957))

(assert (= (and b!1915957 c!311945) b!1915950))

(assert (= (and b!1915957 (not c!311945)) b!1915956))

(assert (= (or b!1915950 b!1915956) bm!117945))

(assert (= (or b!1915950 b!1915956) bm!117949))

(assert (= (or b!1915951 bm!117945) bm!117946))

(assert (= (or b!1915951 bm!117949) bm!117948))

(assert (= (or b!1915951 b!1915950) bm!117947))

(assert (= (and bm!117947 c!311946) b!1915953))

(assert (= (and bm!117947 (not c!311946)) b!1915955))

(declare-fun m!2351059 () Bool)

(assert (=> b!1915954 m!2351059))

(declare-fun m!2351061 () Bool)

(assert (=> b!1915954 m!2351061))

(declare-fun m!2351063 () Bool)

(assert (=> b!1915954 m!2351063))

(assert (=> b!1915954 m!2351063))

(declare-fun m!2351065 () Bool)

(assert (=> b!1915954 m!2351065))

(assert (=> b!1915954 m!2351065))

(assert (=> b!1915954 m!2351059))

(declare-fun m!2351067 () Bool)

(assert (=> b!1915954 m!2351067))

(declare-fun m!2351069 () Bool)

(assert (=> b!1915954 m!2351069))

(declare-fun m!2351071 () Bool)

(assert (=> bm!117948 m!2351071))

(declare-fun m!2351073 () Bool)

(assert (=> bm!117947 m!2351073))

(assert (=> b!1915955 m!2351063))

(assert (=> b!1915955 m!2351063))

(assert (=> b!1915955 m!2351065))

(declare-fun m!2351075 () Bool)

(assert (=> bm!117946 m!2351075))

(declare-fun m!2351077 () Bool)

(assert (=> b!1915950 m!2351077))

(declare-fun m!2351079 () Bool)

(assert (=> b!1915956 m!2351079))

(assert (=> b!1915956 m!2351079))

(declare-fun m!2351081 () Bool)

(assert (=> b!1915956 m!2351081))

(assert (=> b!1915956 m!2351079))

(declare-fun m!2351083 () Bool)

(assert (=> b!1915956 m!2351083))

(declare-fun m!2351085 () Bool)

(assert (=> b!1915956 m!2351085))

(assert (=> b!1915313 d!585219))

(declare-fun d!585221 () Bool)

(assert (=> d!585221 (= (list!8792 (charsOf!2420 separatorToken!354)) (list!8796 (c!311807 (charsOf!2420 separatorToken!354))))))

(declare-fun bs!414287 () Bool)

(assert (= bs!414287 d!585221))

(declare-fun m!2351087 () Bool)

(assert (=> bs!414287 m!2351087))

(assert (=> b!1915313 d!585221))

(declare-fun b!1915965 () Bool)

(declare-fun e!1223992 () Bool)

(assert (=> b!1915965 (= e!1223992 true)))

(declare-fun d!585223 () Bool)

(assert (=> d!585223 e!1223992))

(assert (= d!585223 b!1915965))

(declare-fun order!13657 () Int)

(declare-fun lambda!74784 () Int)

(declare-fun dynLambda!10534 (Int Int) Int)

(assert (=> b!1915965 (< (dynLambda!10531 order!13651 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) (dynLambda!10534 order!13657 lambda!74784))))

(assert (=> b!1915965 (< (dynLambda!10533 order!13655 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) (dynLambda!10534 order!13657 lambda!74784))))

(declare-fun dynLambda!10535 (Int BalanceConc!14256) TokenValue!4000)

(assert (=> d!585223 (= (list!8792 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (dynLambda!10535 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) lt!733918))) (list!8792 lt!733918))))

(declare-fun lt!734197 () Unit!36034)

(declare-fun ForallOf!397 (Int BalanceConc!14256) Unit!36034)

(assert (=> d!585223 (= lt!734197 (ForallOf!397 lambda!74784 lt!733918))))

(assert (=> d!585223 (= (lemmaSemiInverse!843 (transformation!3864 (rule!6065 (h!27043 tokens!598))) lt!733918) lt!734197)))

(declare-fun b_lambda!63369 () Bool)

(assert (=> (not b_lambda!63369) (not d!585223)))

(declare-fun t!178454 () Bool)

(declare-fun tb!117209 () Bool)

(assert (=> (and b!1915292 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178454) tb!117209))

(declare-fun b!1915966 () Bool)

(declare-fun tp!546649 () Bool)

(declare-fun e!1223993 () Bool)

(assert (=> b!1915966 (= e!1223993 (and (inv!28742 (c!311807 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (dynLambda!10535 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) lt!733918)))) tp!546649))))

(declare-fun result!141622 () Bool)

(assert (=> tb!117209 (= result!141622 (and (inv!28743 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (dynLambda!10535 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) lt!733918))) e!1223993))))

(assert (= tb!117209 b!1915966))

(declare-fun m!2351089 () Bool)

(assert (=> b!1915966 m!2351089))

(declare-fun m!2351091 () Bool)

(assert (=> tb!117209 m!2351091))

(assert (=> d!585223 t!178454))

(declare-fun b_and!149413 () Bool)

(assert (= b_and!149395 (and (=> t!178454 result!141622) b_and!149413)))

(declare-fun tb!117211 () Bool)

(declare-fun t!178456 () Bool)

(assert (=> (and b!1915322 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178456) tb!117211))

(declare-fun result!141624 () Bool)

(assert (= result!141624 result!141622))

(assert (=> d!585223 t!178456))

(declare-fun b_and!149415 () Bool)

(assert (= b_and!149397 (and (=> t!178456 result!141624) b_and!149415)))

(declare-fun tb!117213 () Bool)

(declare-fun t!178458 () Bool)

(assert (=> (and b!1915320 (= (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178458) tb!117213))

(declare-fun result!141626 () Bool)

(assert (= result!141626 result!141622))

(assert (=> d!585223 t!178458))

(declare-fun b_and!149417 () Bool)

(assert (= b_and!149399 (and (=> t!178458 result!141626) b_and!149417)))

(declare-fun b_lambda!63371 () Bool)

(assert (=> (not b_lambda!63371) (not d!585223)))

(declare-fun t!178460 () Bool)

(declare-fun tb!117215 () Bool)

(assert (=> (and b!1915292 (= (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178460) tb!117215))

(declare-fun result!141628 () Bool)

(assert (=> tb!117215 (= result!141628 (inv!21 (dynLambda!10535 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) lt!733918)))))

(declare-fun m!2351093 () Bool)

(assert (=> tb!117215 m!2351093))

(assert (=> d!585223 t!178460))

(declare-fun b_and!149419 () Bool)

(assert (= b_and!149359 (and (=> t!178460 result!141628) b_and!149419)))

(declare-fun tb!117217 () Bool)

(declare-fun t!178462 () Bool)

(assert (=> (and b!1915322 (= (toValue!5493 (transformation!3864 (h!27044 rules!3198))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178462) tb!117217))

(declare-fun result!141632 () Bool)

(assert (= result!141632 result!141628))

(assert (=> d!585223 t!178462))

(declare-fun b_and!149421 () Bool)

(assert (= b_and!149363 (and (=> t!178462 result!141632) b_and!149421)))

(declare-fun tb!117219 () Bool)

(declare-fun t!178464 () Bool)

(assert (=> (and b!1915320 (= (toValue!5493 (transformation!3864 (rule!6065 separatorToken!354))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178464) tb!117219))

(declare-fun result!141634 () Bool)

(assert (= result!141634 result!141628))

(assert (=> d!585223 t!178464))

(declare-fun b_and!149423 () Bool)

(assert (= b_and!149367 (and (=> t!178464 result!141634) b_and!149423)))

(assert (=> d!585223 m!2350171))

(declare-fun m!2351095 () Bool)

(assert (=> d!585223 m!2351095))

(declare-fun m!2351097 () Bool)

(assert (=> d!585223 m!2351097))

(assert (=> d!585223 m!2351097))

(declare-fun m!2351099 () Bool)

(assert (=> d!585223 m!2351099))

(declare-fun m!2351101 () Bool)

(assert (=> d!585223 m!2351101))

(assert (=> d!585223 m!2351095))

(assert (=> b!1915313 d!585223))

(declare-fun b!1915979 () Bool)

(declare-fun res!856275 () Bool)

(declare-fun e!1224004 () Bool)

(assert (=> b!1915979 (=> (not res!856275) (not e!1224004))))

(declare-fun lt!734201 () Option!4433)

(assert (=> b!1915979 (= res!856275 (= (++!5817 (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734201)))) (_2!11654 (get!6773 lt!734201))) (++!5817 lt!733932 lt!733899)))))

(declare-fun b!1915980 () Bool)

(declare-fun e!1224003 () Bool)

(assert (=> b!1915980 (= e!1224003 e!1224004)))

(declare-fun res!856273 () Bool)

(assert (=> b!1915980 (=> (not res!856273) (not e!1224004))))

(assert (=> b!1915980 (= res!856273 (isDefined!3731 lt!734201))))

(declare-fun b!1915981 () Bool)

(declare-fun res!856277 () Bool)

(assert (=> b!1915981 (=> (not res!856277) (not e!1224004))))

(assert (=> b!1915981 (= res!856277 (= (value!121715 (_1!11654 (get!6773 lt!734201))) (apply!5660 (transformation!3864 (rule!6065 (_1!11654 (get!6773 lt!734201)))) (seqFromList!2736 (originalCharacters!4671 (_1!11654 (get!6773 lt!734201)))))))))

(declare-fun b!1915982 () Bool)

(declare-fun e!1224005 () Option!4433)

(declare-fun call!117955 () Option!4433)

(assert (=> b!1915982 (= e!1224005 call!117955)))

(declare-fun b!1915983 () Bool)

(assert (=> b!1915983 (= e!1224004 (contains!3933 rules!3198 (rule!6065 (_1!11654 (get!6773 lt!734201)))))))

(declare-fun d!585225 () Bool)

(assert (=> d!585225 e!1224003))

(declare-fun res!856274 () Bool)

(assert (=> d!585225 (=> res!856274 e!1224003)))

(assert (=> d!585225 (= res!856274 (isEmpty!13334 lt!734201))))

(assert (=> d!585225 (= lt!734201 e!1224005)))

(declare-fun c!311952 () Bool)

(assert (=> d!585225 (= c!311952 (and ((_ is Cons!21643) rules!3198) ((_ is Nil!21643) (t!178406 rules!3198))))))

(declare-fun lt!734200 () Unit!36034)

(declare-fun lt!734203 () Unit!36034)

(assert (=> d!585225 (= lt!734200 lt!734203)))

(assert (=> d!585225 (isPrefix!1929 (++!5817 lt!733932 lt!733899) (++!5817 lt!733932 lt!733899))))

(assert (=> d!585225 (= lt!734203 (lemmaIsPrefixRefl!1247 (++!5817 lt!733932 lt!733899) (++!5817 lt!733932 lt!733899)))))

(assert (=> d!585225 (rulesValidInductive!1312 thiss!23328 rules!3198)))

(assert (=> d!585225 (= (maxPrefix!1923 thiss!23328 rules!3198 (++!5817 lt!733932 lt!733899)) lt!734201)))

(declare-fun b!1915984 () Bool)

(declare-fun res!856272 () Bool)

(assert (=> b!1915984 (=> (not res!856272) (not e!1224004))))

(assert (=> b!1915984 (= res!856272 (< (size!17009 (_2!11654 (get!6773 lt!734201))) (size!17009 (++!5817 lt!733932 lt!733899))))))

(declare-fun b!1915985 () Bool)

(declare-fun res!856276 () Bool)

(assert (=> b!1915985 (=> (not res!856276) (not e!1224004))))

(assert (=> b!1915985 (= res!856276 (matchR!2575 (regex!3864 (rule!6065 (_1!11654 (get!6773 lt!734201)))) (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734201))))))))

(declare-fun b!1915986 () Bool)

(declare-fun res!856271 () Bool)

(assert (=> b!1915986 (=> (not res!856271) (not e!1224004))))

(assert (=> b!1915986 (= res!856271 (= (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734201)))) (originalCharacters!4671 (_1!11654 (get!6773 lt!734201)))))))

(declare-fun b!1915987 () Bool)

(declare-fun lt!734204 () Option!4433)

(declare-fun lt!734202 () Option!4433)

(assert (=> b!1915987 (= e!1224005 (ite (and ((_ is None!4432) lt!734204) ((_ is None!4432) lt!734202)) None!4432 (ite ((_ is None!4432) lt!734202) lt!734204 (ite ((_ is None!4432) lt!734204) lt!734202 (ite (>= (size!17004 (_1!11654 (v!26497 lt!734204))) (size!17004 (_1!11654 (v!26497 lt!734202)))) lt!734204 lt!734202)))))))

(assert (=> b!1915987 (= lt!734204 call!117955)))

(assert (=> b!1915987 (= lt!734202 (maxPrefix!1923 thiss!23328 (t!178406 rules!3198) (++!5817 lt!733932 lt!733899)))))

(declare-fun bm!117950 () Bool)

(assert (=> bm!117950 (= call!117955 (maxPrefixOneRule!1211 thiss!23328 (h!27044 rules!3198) (++!5817 lt!733932 lt!733899)))))

(assert (= (and d!585225 c!311952) b!1915982))

(assert (= (and d!585225 (not c!311952)) b!1915987))

(assert (= (or b!1915982 b!1915987) bm!117950))

(assert (= (and d!585225 (not res!856274)) b!1915980))

(assert (= (and b!1915980 res!856273) b!1915986))

(assert (= (and b!1915986 res!856271) b!1915984))

(assert (= (and b!1915984 res!856272) b!1915979))

(assert (= (and b!1915979 res!856275) b!1915981))

(assert (= (and b!1915981 res!856277) b!1915985))

(assert (= (and b!1915985 res!856276) b!1915983))

(declare-fun m!2351103 () Bool)

(assert (=> b!1915985 m!2351103))

(declare-fun m!2351105 () Bool)

(assert (=> b!1915985 m!2351105))

(assert (=> b!1915985 m!2351105))

(declare-fun m!2351107 () Bool)

(assert (=> b!1915985 m!2351107))

(assert (=> b!1915985 m!2351107))

(declare-fun m!2351109 () Bool)

(assert (=> b!1915985 m!2351109))

(assert (=> b!1915987 m!2350139))

(declare-fun m!2351111 () Bool)

(assert (=> b!1915987 m!2351111))

(assert (=> b!1915981 m!2351103))

(declare-fun m!2351113 () Bool)

(assert (=> b!1915981 m!2351113))

(assert (=> b!1915981 m!2351113))

(declare-fun m!2351115 () Bool)

(assert (=> b!1915981 m!2351115))

(assert (=> b!1915979 m!2351103))

(assert (=> b!1915979 m!2351105))

(assert (=> b!1915979 m!2351105))

(assert (=> b!1915979 m!2351107))

(assert (=> b!1915979 m!2351107))

(declare-fun m!2351119 () Bool)

(assert (=> b!1915979 m!2351119))

(assert (=> bm!117950 m!2350139))

(declare-fun m!2351123 () Bool)

(assert (=> bm!117950 m!2351123))

(declare-fun m!2351127 () Bool)

(assert (=> d!585225 m!2351127))

(assert (=> d!585225 m!2350139))

(assert (=> d!585225 m!2350139))

(declare-fun m!2351131 () Bool)

(assert (=> d!585225 m!2351131))

(assert (=> d!585225 m!2350139))

(assert (=> d!585225 m!2350139))

(declare-fun m!2351133 () Bool)

(assert (=> d!585225 m!2351133))

(assert (=> d!585225 m!2350137))

(assert (=> b!1915986 m!2351103))

(assert (=> b!1915986 m!2351105))

(assert (=> b!1915986 m!2351105))

(assert (=> b!1915986 m!2351107))

(assert (=> b!1915984 m!2351103))

(declare-fun m!2351143 () Bool)

(assert (=> b!1915984 m!2351143))

(assert (=> b!1915984 m!2350139))

(declare-fun m!2351147 () Bool)

(assert (=> b!1915984 m!2351147))

(assert (=> b!1915983 m!2351103))

(declare-fun m!2351149 () Bool)

(assert (=> b!1915983 m!2351149))

(declare-fun m!2351151 () Bool)

(assert (=> b!1915980 m!2351151))

(assert (=> b!1915313 d!585225))

(declare-fun d!585229 () Bool)

(assert (=> d!585229 (= (isDefined!3732 lt!733916) (not (isEmpty!13336 lt!733916)))))

(declare-fun bs!414289 () Bool)

(assert (= bs!414289 d!585229))

(declare-fun m!2351155 () Bool)

(assert (=> bs!414289 m!2351155))

(assert (=> b!1915313 d!585229))

(declare-fun b!1916021 () Bool)

(declare-fun e!1224034 () Bool)

(declare-fun e!1224033 () Bool)

(assert (=> b!1916021 (= e!1224034 e!1224033)))

(declare-fun res!856297 () Bool)

(assert (=> b!1916021 (=> (not res!856297) (not e!1224033))))

(declare-fun lt!734218 () Option!4434)

(assert (=> b!1916021 (= res!856297 (contains!3933 rules!3198 (get!6772 lt!734218)))))

(declare-fun b!1916022 () Bool)

(declare-fun e!1224032 () Option!4434)

(assert (=> b!1916022 (= e!1224032 (Some!4433 (h!27044 rules!3198)))))

(declare-fun d!585233 () Bool)

(assert (=> d!585233 e!1224034))

(declare-fun res!856298 () Bool)

(assert (=> d!585233 (=> res!856298 e!1224034)))

(assert (=> d!585233 (= res!856298 (isEmpty!13336 lt!734218))))

(assert (=> d!585233 (= lt!734218 e!1224032)))

(declare-fun c!311961 () Bool)

(assert (=> d!585233 (= c!311961 (and ((_ is Cons!21643) rules!3198) (= (tag!4302 (h!27044 rules!3198)) (tag!4302 (rule!6065 separatorToken!354)))))))

(assert (=> d!585233 (rulesInvariant!3084 thiss!23328 rules!3198)))

(assert (=> d!585233 (= (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 separatorToken!354))) lt!734218)))

(declare-fun b!1916023 () Bool)

(declare-fun lt!734216 () Unit!36034)

(declare-fun lt!734217 () Unit!36034)

(assert (=> b!1916023 (= lt!734216 lt!734217)))

(assert (=> b!1916023 (rulesInvariant!3084 thiss!23328 (t!178406 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!262 (LexerInterface!3477 Rule!7528 List!21725) Unit!36034)

(assert (=> b!1916023 (= lt!734217 (lemmaInvariantOnRulesThenOnTail!262 thiss!23328 (h!27044 rules!3198) (t!178406 rules!3198)))))

(declare-fun e!1224031 () Option!4434)

(assert (=> b!1916023 (= e!1224031 (getRuleFromTag!707 thiss!23328 (t!178406 rules!3198) (tag!4302 (rule!6065 separatorToken!354))))))

(declare-fun b!1916024 () Bool)

(assert (=> b!1916024 (= e!1224033 (= (tag!4302 (get!6772 lt!734218)) (tag!4302 (rule!6065 separatorToken!354))))))

(declare-fun b!1916025 () Bool)

(assert (=> b!1916025 (= e!1224032 e!1224031)))

(declare-fun c!311960 () Bool)

(assert (=> b!1916025 (= c!311960 (and ((_ is Cons!21643) rules!3198) (not (= (tag!4302 (h!27044 rules!3198)) (tag!4302 (rule!6065 separatorToken!354))))))))

(declare-fun b!1916026 () Bool)

(assert (=> b!1916026 (= e!1224031 None!4433)))

(assert (= (and d!585233 c!311961) b!1916022))

(assert (= (and d!585233 (not c!311961)) b!1916025))

(assert (= (and b!1916025 c!311960) b!1916023))

(assert (= (and b!1916025 (not c!311960)) b!1916026))

(assert (= (and d!585233 (not res!856298)) b!1916021))

(assert (= (and b!1916021 res!856297) b!1916024))

(declare-fun m!2351177 () Bool)

(assert (=> b!1916021 m!2351177))

(assert (=> b!1916021 m!2351177))

(declare-fun m!2351179 () Bool)

(assert (=> b!1916021 m!2351179))

(declare-fun m!2351181 () Bool)

(assert (=> d!585233 m!2351181))

(assert (=> d!585233 m!2350109))

(declare-fun m!2351183 () Bool)

(assert (=> b!1916023 m!2351183))

(declare-fun m!2351185 () Bool)

(assert (=> b!1916023 m!2351185))

(declare-fun m!2351187 () Bool)

(assert (=> b!1916023 m!2351187))

(assert (=> b!1916024 m!2351177))

(assert (=> b!1915313 d!585233))

(declare-fun b!1916051 () Bool)

(declare-fun e!1224050 () Bool)

(declare-fun e!1224049 () Bool)

(assert (=> b!1916051 (= e!1224050 e!1224049)))

(declare-fun res!856315 () Bool)

(assert (=> b!1916051 (=> (not res!856315) (not e!1224049))))

(declare-fun lt!734221 () Option!4434)

(assert (=> b!1916051 (= res!856315 (contains!3933 rules!3198 (get!6772 lt!734221)))))

(declare-fun b!1916052 () Bool)

(declare-fun e!1224048 () Option!4434)

(assert (=> b!1916052 (= e!1224048 (Some!4433 (h!27044 rules!3198)))))

(declare-fun d!585251 () Bool)

(assert (=> d!585251 e!1224050))

(declare-fun res!856316 () Bool)

(assert (=> d!585251 (=> res!856316 e!1224050)))

(assert (=> d!585251 (= res!856316 (isEmpty!13336 lt!734221))))

(assert (=> d!585251 (= lt!734221 e!1224048)))

(declare-fun c!311967 () Bool)

(assert (=> d!585251 (= c!311967 (and ((_ is Cons!21643) rules!3198) (= (tag!4302 (h!27044 rules!3198)) (tag!4302 (rule!6065 (h!27043 tokens!598))))))))

(assert (=> d!585251 (rulesInvariant!3084 thiss!23328 rules!3198)))

(assert (=> d!585251 (= (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 (h!27043 tokens!598)))) lt!734221)))

(declare-fun b!1916053 () Bool)

(declare-fun lt!734219 () Unit!36034)

(declare-fun lt!734220 () Unit!36034)

(assert (=> b!1916053 (= lt!734219 lt!734220)))

(assert (=> b!1916053 (rulesInvariant!3084 thiss!23328 (t!178406 rules!3198))))

(assert (=> b!1916053 (= lt!734220 (lemmaInvariantOnRulesThenOnTail!262 thiss!23328 (h!27044 rules!3198) (t!178406 rules!3198)))))

(declare-fun e!1224047 () Option!4434)

(assert (=> b!1916053 (= e!1224047 (getRuleFromTag!707 thiss!23328 (t!178406 rules!3198) (tag!4302 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun b!1916054 () Bool)

(assert (=> b!1916054 (= e!1224049 (= (tag!4302 (get!6772 lt!734221)) (tag!4302 (rule!6065 (h!27043 tokens!598)))))))

(declare-fun b!1916055 () Bool)

(assert (=> b!1916055 (= e!1224048 e!1224047)))

(declare-fun c!311966 () Bool)

(assert (=> b!1916055 (= c!311966 (and ((_ is Cons!21643) rules!3198) (not (= (tag!4302 (h!27044 rules!3198)) (tag!4302 (rule!6065 (h!27043 tokens!598)))))))))

(declare-fun b!1916056 () Bool)

(assert (=> b!1916056 (= e!1224047 None!4433)))

(assert (= (and d!585251 c!311967) b!1916052))

(assert (= (and d!585251 (not c!311967)) b!1916055))

(assert (= (and b!1916055 c!311966) b!1916053))

(assert (= (and b!1916055 (not c!311966)) b!1916056))

(assert (= (and d!585251 (not res!856316)) b!1916051))

(assert (= (and b!1916051 res!856315) b!1916054))

(declare-fun m!2351189 () Bool)

(assert (=> b!1916051 m!2351189))

(assert (=> b!1916051 m!2351189))

(declare-fun m!2351191 () Bool)

(assert (=> b!1916051 m!2351191))

(declare-fun m!2351193 () Bool)

(assert (=> d!585251 m!2351193))

(assert (=> d!585251 m!2350109))

(assert (=> b!1916053 m!2351183))

(assert (=> b!1916053 m!2351185))

(declare-fun m!2351195 () Bool)

(assert (=> b!1916053 m!2351195))

(assert (=> b!1916054 m!2351189))

(assert (=> b!1915313 d!585251))

(declare-fun d!585253 () Bool)

(declare-fun lt!734224 () BalanceConc!14256)

(assert (=> d!585253 (= (list!8792 lt!734224) (originalCharacters!4671 (h!27043 tokens!598)))))

(assert (=> d!585253 (= lt!734224 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (value!121715 (h!27043 tokens!598))))))

(assert (=> d!585253 (= (charsOf!2420 (h!27043 tokens!598)) lt!734224)))

(declare-fun b_lambda!63373 () Bool)

(assert (=> (not b_lambda!63373) (not d!585253)))

(declare-fun t!178466 () Bool)

(declare-fun tb!117221 () Bool)

(assert (=> (and b!1915292 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178466) tb!117221))

(declare-fun b!1916057 () Bool)

(declare-fun e!1224051 () Bool)

(declare-fun tp!546650 () Bool)

(assert (=> b!1916057 (= e!1224051 (and (inv!28742 (c!311807 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (value!121715 (h!27043 tokens!598))))) tp!546650))))

(declare-fun result!141636 () Bool)

(assert (=> tb!117221 (= result!141636 (and (inv!28743 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (value!121715 (h!27043 tokens!598)))) e!1224051))))

(assert (= tb!117221 b!1916057))

(declare-fun m!2351197 () Bool)

(assert (=> b!1916057 m!2351197))

(declare-fun m!2351199 () Bool)

(assert (=> tb!117221 m!2351199))

(assert (=> d!585253 t!178466))

(declare-fun b_and!149425 () Bool)

(assert (= b_and!149413 (and (=> t!178466 result!141636) b_and!149425)))

(declare-fun t!178468 () Bool)

(declare-fun tb!117223 () Bool)

(assert (=> (and b!1915322 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178468) tb!117223))

(declare-fun result!141638 () Bool)

(assert (= result!141638 result!141636))

(assert (=> d!585253 t!178468))

(declare-fun b_and!149427 () Bool)

(assert (= b_and!149415 (and (=> t!178468 result!141638) b_and!149427)))

(declare-fun t!178470 () Bool)

(declare-fun tb!117225 () Bool)

(assert (=> (and b!1915320 (= (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178470) tb!117225))

(declare-fun result!141640 () Bool)

(assert (= result!141640 result!141636))

(assert (=> d!585253 t!178470))

(declare-fun b_and!149429 () Bool)

(assert (= b_and!149417 (and (=> t!178470 result!141640) b_and!149429)))

(declare-fun m!2351201 () Bool)

(assert (=> d!585253 m!2351201))

(declare-fun m!2351203 () Bool)

(assert (=> d!585253 m!2351203))

(assert (=> b!1915313 d!585253))

(declare-fun d!585255 () Bool)

(assert (=> d!585255 (= (seqFromList!2736 (originalCharacters!4671 (h!27043 tokens!598))) (fromListB!1229 (originalCharacters!4671 (h!27043 tokens!598))))))

(declare-fun bs!414290 () Bool)

(assert (= bs!414290 d!585255))

(declare-fun m!2351205 () Bool)

(assert (=> bs!414290 m!2351205))

(assert (=> b!1915313 d!585255))

(declare-fun d!585257 () Bool)

(assert (=> d!585257 (= (isDefined!3731 lt!733904) (not (isEmpty!13334 lt!733904)))))

(declare-fun bs!414291 () Bool)

(assert (= bs!414291 d!585257))

(declare-fun m!2351207 () Bool)

(assert (=> bs!414291 m!2351207))

(assert (=> b!1915313 d!585257))

(declare-fun d!585259 () Bool)

(declare-fun lt!734225 () BalanceConc!14256)

(assert (=> d!585259 (= (list!8792 lt!734225) (originalCharacters!4671 separatorToken!354))))

(assert (=> d!585259 (= lt!734225 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (value!121715 separatorToken!354)))))

(assert (=> d!585259 (= (charsOf!2420 separatorToken!354) lt!734225)))

(declare-fun b_lambda!63375 () Bool)

(assert (=> (not b_lambda!63375) (not d!585259)))

(assert (=> d!585259 t!178430))

(declare-fun b_and!149431 () Bool)

(assert (= b_and!149425 (and (=> t!178430 result!141602) b_and!149431)))

(assert (=> d!585259 t!178432))

(declare-fun b_and!149433 () Bool)

(assert (= b_and!149427 (and (=> t!178432 result!141606) b_and!149433)))

(assert (=> d!585259 t!178434))

(declare-fun b_and!149435 () Bool)

(assert (= b_and!149429 (and (=> t!178434 result!141608) b_and!149435)))

(declare-fun m!2351209 () Bool)

(assert (=> d!585259 m!2351209))

(assert (=> d!585259 m!2350565))

(assert (=> b!1915313 d!585259))

(declare-fun b!1916098 () Bool)

(declare-fun e!1224073 () Bool)

(assert (=> b!1916098 (= e!1224073 true)))

(declare-fun d!585261 () Bool)

(assert (=> d!585261 e!1224073))

(assert (= d!585261 b!1916098))

(declare-fun lambda!74787 () Int)

(declare-fun order!13659 () Int)

(declare-fun dynLambda!10536 (Int Int) Int)

(assert (=> b!1916098 (< (dynLambda!10531 order!13651 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) (dynLambda!10536 order!13659 lambda!74787))))

(assert (=> b!1916098 (< (dynLambda!10533 order!13655 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) (dynLambda!10536 order!13659 lambda!74787))))

(assert (=> d!585261 (= (dynLambda!10535 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) lt!733918) (dynLambda!10535 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (seqFromList!2736 (originalCharacters!4671 (h!27043 tokens!598)))))))

(declare-fun lt!734230 () Unit!36034)

(declare-fun Forall2of!193 (Int BalanceConc!14256 BalanceConc!14256) Unit!36034)

(assert (=> d!585261 (= lt!734230 (Forall2of!193 lambda!74787 lt!733918 (seqFromList!2736 (originalCharacters!4671 (h!27043 tokens!598)))))))

(assert (=> d!585261 (= (list!8792 lt!733918) (list!8792 (seqFromList!2736 (originalCharacters!4671 (h!27043 tokens!598)))))))

(assert (=> d!585261 (= (lemmaEqSameImage!572 (transformation!3864 (rule!6065 (h!27043 tokens!598))) lt!733918 (seqFromList!2736 (originalCharacters!4671 (h!27043 tokens!598)))) lt!734230)))

(declare-fun b_lambda!63377 () Bool)

(assert (=> (not b_lambda!63377) (not d!585261)))

(assert (=> d!585261 t!178460))

(declare-fun b_and!149437 () Bool)

(assert (= b_and!149419 (and (=> t!178460 result!141628) b_and!149437)))

(assert (=> d!585261 t!178462))

(declare-fun b_and!149439 () Bool)

(assert (= b_and!149421 (and (=> t!178462 result!141632) b_and!149439)))

(assert (=> d!585261 t!178464))

(declare-fun b_and!149441 () Bool)

(assert (= b_and!149423 (and (=> t!178464 result!141634) b_and!149441)))

(declare-fun b_lambda!63379 () Bool)

(assert (=> (not b_lambda!63379) (not d!585261)))

(declare-fun t!178472 () Bool)

(declare-fun tb!117227 () Bool)

(assert (=> (and b!1915292 (= (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178472) tb!117227))

(declare-fun result!141642 () Bool)

(assert (=> tb!117227 (= result!141642 (inv!21 (dynLambda!10535 (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (seqFromList!2736 (originalCharacters!4671 (h!27043 tokens!598))))))))

(declare-fun m!2351241 () Bool)

(assert (=> tb!117227 m!2351241))

(assert (=> d!585261 t!178472))

(declare-fun b_and!149443 () Bool)

(assert (= b_and!149437 (and (=> t!178472 result!141642) b_and!149443)))

(declare-fun t!178474 () Bool)

(declare-fun tb!117229 () Bool)

(assert (=> (and b!1915322 (= (toValue!5493 (transformation!3864 (h!27044 rules!3198))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178474) tb!117229))

(declare-fun result!141644 () Bool)

(assert (= result!141644 result!141642))

(assert (=> d!585261 t!178474))

(declare-fun b_and!149445 () Bool)

(assert (= b_and!149439 (and (=> t!178474 result!141644) b_and!149445)))

(declare-fun tb!117231 () Bool)

(declare-fun t!178476 () Bool)

(assert (=> (and b!1915320 (= (toValue!5493 (transformation!3864 (rule!6065 separatorToken!354))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178476) tb!117231))

(declare-fun result!141646 () Bool)

(assert (= result!141646 result!141642))

(assert (=> d!585261 t!178476))

(declare-fun b_and!149447 () Bool)

(assert (= b_and!149441 (and (=> t!178476 result!141646) b_and!149447)))

(assert (=> d!585261 m!2350145))

(declare-fun m!2351245 () Bool)

(assert (=> d!585261 m!2351245))

(assert (=> d!585261 m!2350145))

(declare-fun m!2351247 () Bool)

(assert (=> d!585261 m!2351247))

(assert (=> d!585261 m!2350171))

(assert (=> d!585261 m!2351095))

(assert (=> d!585261 m!2350145))

(declare-fun m!2351249 () Bool)

(assert (=> d!585261 m!2351249))

(assert (=> b!1915313 d!585261))

(declare-fun d!585273 () Bool)

(assert (=> d!585273 (= (list!8792 lt!733918) (list!8796 (c!311807 lt!733918)))))

(declare-fun bs!414293 () Bool)

(assert (= bs!414293 d!585273))

(declare-fun m!2351251 () Bool)

(assert (=> bs!414293 m!2351251))

(assert (=> b!1915313 d!585273))

(declare-fun d!585275 () Bool)

(assert (=> d!585275 (= (get!6773 lt!733904) (v!26497 lt!733904))))

(assert (=> b!1915313 d!585275))

(declare-fun d!585277 () Bool)

(declare-fun e!1224075 () Bool)

(assert (=> d!585277 e!1224075))

(declare-fun res!856341 () Bool)

(assert (=> d!585277 (=> (not res!856341) (not e!1224075))))

(assert (=> d!585277 (= res!856341 (isDefined!3732 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 (h!27043 tokens!598))))))))

(declare-fun lt!734234 () Unit!36034)

(assert (=> d!585277 (= lt!734234 (choose!11922 thiss!23328 rules!3198 lt!733932 (h!27043 tokens!598)))))

(assert (=> d!585277 (rulesInvariant!3084 thiss!23328 rules!3198)))

(assert (=> d!585277 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!707 thiss!23328 rules!3198 lt!733932 (h!27043 tokens!598)) lt!734234)))

(declare-fun b!1916099 () Bool)

(declare-fun res!856342 () Bool)

(assert (=> b!1916099 (=> (not res!856342) (not e!1224075))))

(assert (=> b!1916099 (= res!856342 (matchR!2575 (regex!3864 (get!6772 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 (h!27043 tokens!598)))))) (list!8792 (charsOf!2420 (h!27043 tokens!598)))))))

(declare-fun b!1916100 () Bool)

(assert (=> b!1916100 (= e!1224075 (= (rule!6065 (h!27043 tokens!598)) (get!6772 (getRuleFromTag!707 thiss!23328 rules!3198 (tag!4302 (rule!6065 (h!27043 tokens!598)))))))))

(assert (= (and d!585277 res!856341) b!1916099))

(assert (= (and b!1916099 res!856342) b!1916100))

(assert (=> d!585277 m!2350165))

(assert (=> d!585277 m!2350165))

(declare-fun m!2351253 () Bool)

(assert (=> d!585277 m!2351253))

(declare-fun m!2351255 () Bool)

(assert (=> d!585277 m!2351255))

(assert (=> d!585277 m!2350109))

(assert (=> b!1916099 m!2350165))

(declare-fun m!2351257 () Bool)

(assert (=> b!1916099 m!2351257))

(assert (=> b!1916099 m!2350165))

(assert (=> b!1916099 m!2350159))

(assert (=> b!1916099 m!2350831))

(declare-fun m!2351259 () Bool)

(assert (=> b!1916099 m!2351259))

(assert (=> b!1916099 m!2350159))

(assert (=> b!1916099 m!2350831))

(assert (=> b!1916100 m!2350165))

(assert (=> b!1916100 m!2350165))

(assert (=> b!1916100 m!2351257))

(assert (=> b!1915313 d!585277))

(declare-fun d!585279 () Bool)

(assert (=> d!585279 (= (isEmpty!13325 tokens!598) ((_ is Nil!21642) tokens!598))))

(assert (=> b!1915291 d!585279))

(declare-fun b!1916105 () Bool)

(declare-fun res!856351 () Bool)

(declare-fun e!1224079 () Bool)

(assert (=> b!1916105 (=> (not res!856351) (not e!1224079))))

(declare-fun lt!734236 () Option!4433)

(assert (=> b!1916105 (= res!856351 (= (++!5817 (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734236)))) (_2!11654 (get!6773 lt!734236))) lt!733922))))

(declare-fun b!1916106 () Bool)

(declare-fun e!1224078 () Bool)

(assert (=> b!1916106 (= e!1224078 e!1224079)))

(declare-fun res!856349 () Bool)

(assert (=> b!1916106 (=> (not res!856349) (not e!1224079))))

(assert (=> b!1916106 (= res!856349 (isDefined!3731 lt!734236))))

(declare-fun b!1916107 () Bool)

(declare-fun res!856353 () Bool)

(assert (=> b!1916107 (=> (not res!856353) (not e!1224079))))

(assert (=> b!1916107 (= res!856353 (= (value!121715 (_1!11654 (get!6773 lt!734236))) (apply!5660 (transformation!3864 (rule!6065 (_1!11654 (get!6773 lt!734236)))) (seqFromList!2736 (originalCharacters!4671 (_1!11654 (get!6773 lt!734236)))))))))

(declare-fun b!1916108 () Bool)

(declare-fun e!1224080 () Option!4433)

(declare-fun call!117960 () Option!4433)

(assert (=> b!1916108 (= e!1224080 call!117960)))

(declare-fun b!1916109 () Bool)

(assert (=> b!1916109 (= e!1224079 (contains!3933 rules!3198 (rule!6065 (_1!11654 (get!6773 lt!734236)))))))

(declare-fun d!585281 () Bool)

(assert (=> d!585281 e!1224078))

(declare-fun res!856350 () Bool)

(assert (=> d!585281 (=> res!856350 e!1224078)))

(assert (=> d!585281 (= res!856350 (isEmpty!13334 lt!734236))))

(assert (=> d!585281 (= lt!734236 e!1224080)))

(declare-fun c!311974 () Bool)

(assert (=> d!585281 (= c!311974 (and ((_ is Cons!21643) rules!3198) ((_ is Nil!21643) (t!178406 rules!3198))))))

(declare-fun lt!734235 () Unit!36034)

(declare-fun lt!734238 () Unit!36034)

(assert (=> d!585281 (= lt!734235 lt!734238)))

(assert (=> d!585281 (isPrefix!1929 lt!733922 lt!733922)))

(assert (=> d!585281 (= lt!734238 (lemmaIsPrefixRefl!1247 lt!733922 lt!733922))))

(assert (=> d!585281 (rulesValidInductive!1312 thiss!23328 rules!3198)))

(assert (=> d!585281 (= (maxPrefix!1923 thiss!23328 rules!3198 lt!733922) lt!734236)))

(declare-fun b!1916110 () Bool)

(declare-fun res!856348 () Bool)

(assert (=> b!1916110 (=> (not res!856348) (not e!1224079))))

(assert (=> b!1916110 (= res!856348 (< (size!17009 (_2!11654 (get!6773 lt!734236))) (size!17009 lt!733922)))))

(declare-fun b!1916111 () Bool)

(declare-fun res!856352 () Bool)

(assert (=> b!1916111 (=> (not res!856352) (not e!1224079))))

(assert (=> b!1916111 (= res!856352 (matchR!2575 (regex!3864 (rule!6065 (_1!11654 (get!6773 lt!734236)))) (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734236))))))))

(declare-fun b!1916112 () Bool)

(declare-fun res!856347 () Bool)

(assert (=> b!1916112 (=> (not res!856347) (not e!1224079))))

(assert (=> b!1916112 (= res!856347 (= (list!8792 (charsOf!2420 (_1!11654 (get!6773 lt!734236)))) (originalCharacters!4671 (_1!11654 (get!6773 lt!734236)))))))

(declare-fun b!1916113 () Bool)

(declare-fun lt!734239 () Option!4433)

(declare-fun lt!734237 () Option!4433)

(assert (=> b!1916113 (= e!1224080 (ite (and ((_ is None!4432) lt!734239) ((_ is None!4432) lt!734237)) None!4432 (ite ((_ is None!4432) lt!734237) lt!734239 (ite ((_ is None!4432) lt!734239) lt!734237 (ite (>= (size!17004 (_1!11654 (v!26497 lt!734239))) (size!17004 (_1!11654 (v!26497 lt!734237)))) lt!734239 lt!734237)))))))

(assert (=> b!1916113 (= lt!734239 call!117960)))

(assert (=> b!1916113 (= lt!734237 (maxPrefix!1923 thiss!23328 (t!178406 rules!3198) lt!733922))))

(declare-fun bm!117955 () Bool)

(assert (=> bm!117955 (= call!117960 (maxPrefixOneRule!1211 thiss!23328 (h!27044 rules!3198) lt!733922))))

(assert (= (and d!585281 c!311974) b!1916108))

(assert (= (and d!585281 (not c!311974)) b!1916113))

(assert (= (or b!1916108 b!1916113) bm!117955))

(assert (= (and d!585281 (not res!856350)) b!1916106))

(assert (= (and b!1916106 res!856349) b!1916112))

(assert (= (and b!1916112 res!856347) b!1916110))

(assert (= (and b!1916110 res!856348) b!1916105))

(assert (= (and b!1916105 res!856351) b!1916107))

(assert (= (and b!1916107 res!856353) b!1916111))

(assert (= (and b!1916111 res!856352) b!1916109))

(declare-fun m!2351273 () Bool)

(assert (=> b!1916111 m!2351273))

(declare-fun m!2351275 () Bool)

(assert (=> b!1916111 m!2351275))

(assert (=> b!1916111 m!2351275))

(declare-fun m!2351277 () Bool)

(assert (=> b!1916111 m!2351277))

(assert (=> b!1916111 m!2351277))

(declare-fun m!2351279 () Bool)

(assert (=> b!1916111 m!2351279))

(declare-fun m!2351281 () Bool)

(assert (=> b!1916113 m!2351281))

(assert (=> b!1916107 m!2351273))

(declare-fun m!2351283 () Bool)

(assert (=> b!1916107 m!2351283))

(assert (=> b!1916107 m!2351283))

(declare-fun m!2351285 () Bool)

(assert (=> b!1916107 m!2351285))

(assert (=> b!1916105 m!2351273))

(assert (=> b!1916105 m!2351275))

(assert (=> b!1916105 m!2351275))

(assert (=> b!1916105 m!2351277))

(assert (=> b!1916105 m!2351277))

(declare-fun m!2351287 () Bool)

(assert (=> b!1916105 m!2351287))

(declare-fun m!2351289 () Bool)

(assert (=> bm!117955 m!2351289))

(declare-fun m!2351291 () Bool)

(assert (=> d!585281 m!2351291))

(declare-fun m!2351293 () Bool)

(assert (=> d!585281 m!2351293))

(declare-fun m!2351295 () Bool)

(assert (=> d!585281 m!2351295))

(assert (=> d!585281 m!2350137))

(assert (=> b!1916112 m!2351273))

(assert (=> b!1916112 m!2351275))

(assert (=> b!1916112 m!2351275))

(assert (=> b!1916112 m!2351277))

(assert (=> b!1916110 m!2351273))

(declare-fun m!2351297 () Bool)

(assert (=> b!1916110 m!2351297))

(declare-fun m!2351299 () Bool)

(assert (=> b!1916110 m!2351299))

(assert (=> b!1916109 m!2351273))

(declare-fun m!2351301 () Bool)

(assert (=> b!1916109 m!2351301))

(declare-fun m!2351303 () Bool)

(assert (=> b!1916106 m!2351303))

(assert (=> b!1915291 d!585281))

(declare-fun d!585291 () Bool)

(assert (=> d!585291 (= (maxPrefix!1923 thiss!23328 rules!3198 (++!5817 (list!8792 (charsOf!2420 (h!27043 tokens!598))) lt!733910)) (Some!4432 (tuple2!20371 (h!27043 tokens!598) lt!733910)))))

(declare-fun lt!734259 () Unit!36034)

(declare-fun choose!11924 (LexerInterface!3477 List!21725 Token!7280 Rule!7528 List!21723 Rule!7528) Unit!36034)

(assert (=> d!585291 (= lt!734259 (choose!11924 thiss!23328 rules!3198 (h!27043 tokens!598) (rule!6065 (h!27043 tokens!598)) lt!733910 (rule!6065 separatorToken!354)))))

(assert (=> d!585291 (not (isEmpty!13327 rules!3198))))

(assert (=> d!585291 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!100 thiss!23328 rules!3198 (h!27043 tokens!598) (rule!6065 (h!27043 tokens!598)) lt!733910 (rule!6065 separatorToken!354)) lt!734259)))

(declare-fun bs!414299 () Bool)

(assert (= bs!414299 d!585291))

(declare-fun m!2351383 () Bool)

(assert (=> bs!414299 m!2351383))

(declare-fun m!2351385 () Bool)

(assert (=> bs!414299 m!2351385))

(assert (=> bs!414299 m!2350159))

(assert (=> bs!414299 m!2350211))

(assert (=> bs!414299 m!2350159))

(assert (=> bs!414299 m!2350831))

(assert (=> bs!414299 m!2350831))

(assert (=> bs!414299 m!2351383))

(declare-fun m!2351387 () Bool)

(assert (=> bs!414299 m!2351387))

(assert (=> b!1915291 d!585291))

(declare-fun d!585309 () Bool)

(declare-fun res!856395 () Bool)

(declare-fun e!1224125 () Bool)

(assert (=> d!585309 (=> (not res!856395) (not e!1224125))))

(declare-fun rulesValid!1438 (LexerInterface!3477 List!21725) Bool)

(assert (=> d!585309 (= res!856395 (rulesValid!1438 thiss!23328 rules!3198))))

(assert (=> d!585309 (= (rulesInvariant!3084 thiss!23328 rules!3198) e!1224125)))

(declare-fun b!1916194 () Bool)

(declare-datatypes ((List!21727 0))(
  ( (Nil!21645) (Cons!21645 (h!27046 String!25118) (t!178520 List!21727)) )
))
(declare-fun noDuplicateTag!1436 (LexerInterface!3477 List!21725 List!21727) Bool)

(assert (=> b!1916194 (= e!1224125 (noDuplicateTag!1436 thiss!23328 rules!3198 Nil!21645))))

(assert (= (and d!585309 res!856395) b!1916194))

(declare-fun m!2351399 () Bool)

(assert (=> d!585309 m!2351399))

(declare-fun m!2351401 () Bool)

(assert (=> b!1916194 m!2351401))

(assert (=> b!1915293 d!585309))

(declare-fun bs!414301 () Bool)

(declare-fun d!585313 () Bool)

(assert (= bs!414301 (and d!585313 b!1915328)))

(declare-fun lambda!74791 () Int)

(assert (=> bs!414301 (not (= lambda!74791 lambda!74759))))

(declare-fun bs!414302 () Bool)

(assert (= bs!414302 (and d!585313 b!1915795)))

(assert (=> bs!414302 (= lambda!74791 lambda!74777)))

(declare-fun bs!414303 () Bool)

(assert (= bs!414303 (and d!585313 b!1915954)))

(assert (=> bs!414303 (= lambda!74791 lambda!74781)))

(declare-fun b!1916246 () Bool)

(declare-fun e!1224171 () Bool)

(assert (=> b!1916246 (= e!1224171 true)))

(declare-fun b!1916245 () Bool)

(declare-fun e!1224170 () Bool)

(assert (=> b!1916245 (= e!1224170 e!1224171)))

(declare-fun b!1916244 () Bool)

(declare-fun e!1224169 () Bool)

(assert (=> b!1916244 (= e!1224169 e!1224170)))

(assert (=> d!585313 e!1224169))

(assert (= b!1916245 b!1916246))

(assert (= b!1916244 b!1916245))

(assert (= (and d!585313 ((_ is Cons!21643) rules!3198)) b!1916244))

(assert (=> b!1916246 (< (dynLambda!10531 order!13651 (toValue!5493 (transformation!3864 (h!27044 rules!3198)))) (dynLambda!10532 order!13653 lambda!74791))))

(assert (=> b!1916246 (< (dynLambda!10533 order!13655 (toChars!5352 (transformation!3864 (h!27044 rules!3198)))) (dynLambda!10532 order!13653 lambda!74791))))

(assert (=> d!585313 true))

(declare-fun lt!734262 () Bool)

(assert (=> d!585313 (= lt!734262 (forall!4558 tokens!598 lambda!74791))))

(declare-fun e!1224167 () Bool)

(assert (=> d!585313 (= lt!734262 e!1224167)))

(declare-fun res!856400 () Bool)

(assert (=> d!585313 (=> res!856400 e!1224167)))

(assert (=> d!585313 (= res!856400 (not ((_ is Cons!21642) tokens!598)))))

(assert (=> d!585313 (not (isEmpty!13327 rules!3198))))

(assert (=> d!585313 (= (rulesProduceEachTokenIndividuallyList!1208 thiss!23328 rules!3198 tokens!598) lt!734262)))

(declare-fun b!1916242 () Bool)

(declare-fun e!1224168 () Bool)

(assert (=> b!1916242 (= e!1224167 e!1224168)))

(declare-fun res!856401 () Bool)

(assert (=> b!1916242 (=> (not res!856401) (not e!1224168))))

(assert (=> b!1916242 (= res!856401 (rulesProduceIndividualToken!1649 thiss!23328 rules!3198 (h!27043 tokens!598)))))

(declare-fun b!1916243 () Bool)

(assert (=> b!1916243 (= e!1224168 (rulesProduceEachTokenIndividuallyList!1208 thiss!23328 rules!3198 (t!178405 tokens!598)))))

(assert (= (and d!585313 (not res!856400)) b!1916242))

(assert (= (and b!1916242 res!856401) b!1916243))

(declare-fun m!2351415 () Bool)

(assert (=> d!585313 m!2351415))

(assert (=> d!585313 m!2350211))

(assert (=> b!1916242 m!2350209))

(declare-fun m!2351417 () Bool)

(assert (=> b!1916243 m!2351417))

(assert (=> b!1915314 d!585313))

(declare-fun d!585317 () Bool)

(declare-fun res!856402 () Bool)

(declare-fun e!1224172 () Bool)

(assert (=> d!585317 (=> (not res!856402) (not e!1224172))))

(assert (=> d!585317 (= res!856402 (not (isEmpty!13326 (originalCharacters!4671 (h!27043 tokens!598)))))))

(assert (=> d!585317 (= (inv!28738 (h!27043 tokens!598)) e!1224172)))

(declare-fun b!1916247 () Bool)

(declare-fun res!856403 () Bool)

(assert (=> b!1916247 (=> (not res!856403) (not e!1224172))))

(assert (=> b!1916247 (= res!856403 (= (originalCharacters!4671 (h!27043 tokens!598)) (list!8792 (dynLambda!10530 (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (value!121715 (h!27043 tokens!598))))))))

(declare-fun b!1916248 () Bool)

(assert (=> b!1916248 (= e!1224172 (= (size!17004 (h!27043 tokens!598)) (size!17009 (originalCharacters!4671 (h!27043 tokens!598)))))))

(assert (= (and d!585317 res!856402) b!1916247))

(assert (= (and b!1916247 res!856403) b!1916248))

(declare-fun b_lambda!63405 () Bool)

(assert (=> (not b_lambda!63405) (not b!1916247)))

(assert (=> b!1916247 t!178466))

(declare-fun b_and!149469 () Bool)

(assert (= b_and!149431 (and (=> t!178466 result!141636) b_and!149469)))

(assert (=> b!1916247 t!178468))

(declare-fun b_and!149471 () Bool)

(assert (= b_and!149433 (and (=> t!178468 result!141638) b_and!149471)))

(assert (=> b!1916247 t!178470))

(declare-fun b_and!149473 () Bool)

(assert (= b_and!149435 (and (=> t!178470 result!141640) b_and!149473)))

(declare-fun m!2351419 () Bool)

(assert (=> d!585317 m!2351419))

(assert (=> b!1916247 m!2351203))

(assert (=> b!1916247 m!2351203))

(declare-fun m!2351421 () Bool)

(assert (=> b!1916247 m!2351421))

(declare-fun m!2351423 () Bool)

(assert (=> b!1916248 m!2351423))

(assert (=> b!1915294 d!585317))

(declare-fun b!1916249 () Bool)

(declare-fun e!1224173 () Bool)

(assert (=> b!1916249 (= e!1224173 (inv!16 (value!121715 separatorToken!354)))))

(declare-fun d!585319 () Bool)

(declare-fun c!311990 () Bool)

(assert (=> d!585319 (= c!311990 ((_ is IntegerValue!12000) (value!121715 separatorToken!354)))))

(assert (=> d!585319 (= (inv!21 (value!121715 separatorToken!354)) e!1224173)))

(declare-fun b!1916250 () Bool)

(declare-fun e!1224174 () Bool)

(assert (=> b!1916250 (= e!1224174 (inv!15 (value!121715 separatorToken!354)))))

(declare-fun b!1916251 () Bool)

(declare-fun e!1224175 () Bool)

(assert (=> b!1916251 (= e!1224175 (inv!17 (value!121715 separatorToken!354)))))

(declare-fun b!1916252 () Bool)

(declare-fun res!856404 () Bool)

(assert (=> b!1916252 (=> res!856404 e!1224174)))

(assert (=> b!1916252 (= res!856404 (not ((_ is IntegerValue!12002) (value!121715 separatorToken!354))))))

(assert (=> b!1916252 (= e!1224175 e!1224174)))

(declare-fun b!1916253 () Bool)

(assert (=> b!1916253 (= e!1224173 e!1224175)))

(declare-fun c!311989 () Bool)

(assert (=> b!1916253 (= c!311989 ((_ is IntegerValue!12001) (value!121715 separatorToken!354)))))

(assert (= (and d!585319 c!311990) b!1916249))

(assert (= (and d!585319 (not c!311990)) b!1916253))

(assert (= (and b!1916253 c!311989) b!1916251))

(assert (= (and b!1916253 (not c!311989)) b!1916252))

(assert (= (and b!1916252 (not res!856404)) b!1916250))

(declare-fun m!2351425 () Bool)

(assert (=> b!1916249 m!2351425))

(declare-fun m!2351427 () Bool)

(assert (=> b!1916250 m!2351427))

(declare-fun m!2351429 () Bool)

(assert (=> b!1916251 m!2351429))

(assert (=> b!1915315 d!585319))

(declare-fun b!1916267 () Bool)

(declare-fun e!1224178 () Bool)

(declare-fun tp!546720 () Bool)

(declare-fun tp!546717 () Bool)

(assert (=> b!1916267 (= e!1224178 (and tp!546720 tp!546717))))

(declare-fun b!1916265 () Bool)

(declare-fun tp!546718 () Bool)

(declare-fun tp!546719 () Bool)

(assert (=> b!1916265 (= e!1224178 (and tp!546718 tp!546719))))

(declare-fun b!1916264 () Bool)

(declare-fun tp_is_empty!9109 () Bool)

(assert (=> b!1916264 (= e!1224178 tp_is_empty!9109)))

(declare-fun b!1916266 () Bool)

(declare-fun tp!546721 () Bool)

(assert (=> b!1916266 (= e!1224178 tp!546721)))

(assert (=> b!1915308 (= tp!546637 e!1224178)))

(assert (= (and b!1915308 ((_ is ElementMatch!5289) (regex!3864 (rule!6065 separatorToken!354)))) b!1916264))

(assert (= (and b!1915308 ((_ is Concat!9290) (regex!3864 (rule!6065 separatorToken!354)))) b!1916265))

(assert (= (and b!1915308 ((_ is Star!5289) (regex!3864 (rule!6065 separatorToken!354)))) b!1916266))

(assert (= (and b!1915308 ((_ is Union!5289) (regex!3864 (rule!6065 separatorToken!354)))) b!1916267))

(declare-fun b!1916271 () Bool)

(declare-fun e!1224179 () Bool)

(declare-fun tp!546725 () Bool)

(declare-fun tp!546722 () Bool)

(assert (=> b!1916271 (= e!1224179 (and tp!546725 tp!546722))))

(declare-fun b!1916269 () Bool)

(declare-fun tp!546723 () Bool)

(declare-fun tp!546724 () Bool)

(assert (=> b!1916269 (= e!1224179 (and tp!546723 tp!546724))))

(declare-fun b!1916268 () Bool)

(assert (=> b!1916268 (= e!1224179 tp_is_empty!9109)))

(declare-fun b!1916270 () Bool)

(declare-fun tp!546726 () Bool)

(assert (=> b!1916270 (= e!1224179 tp!546726)))

(assert (=> b!1915307 (= tp!546628 e!1224179)))

(assert (= (and b!1915307 ((_ is ElementMatch!5289) (regex!3864 (rule!6065 (h!27043 tokens!598))))) b!1916268))

(assert (= (and b!1915307 ((_ is Concat!9290) (regex!3864 (rule!6065 (h!27043 tokens!598))))) b!1916269))

(assert (= (and b!1915307 ((_ is Star!5289) (regex!3864 (rule!6065 (h!27043 tokens!598))))) b!1916270))

(assert (= (and b!1915307 ((_ is Union!5289) (regex!3864 (rule!6065 (h!27043 tokens!598))))) b!1916271))

(declare-fun b!1916282 () Bool)

(declare-fun b_free!54269 () Bool)

(declare-fun b_next!54973 () Bool)

(assert (=> b!1916282 (= b_free!54269 (not b_next!54973))))

(declare-fun tb!117253 () Bool)

(declare-fun t!178500 () Bool)

(assert (=> (and b!1916282 (= (toValue!5493 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178500) tb!117253))

(declare-fun result!141680 () Bool)

(assert (= result!141680 result!141628))

(assert (=> d!585223 t!178500))

(assert (=> d!585261 t!178500))

(declare-fun t!178502 () Bool)

(declare-fun tb!117255 () Bool)

(assert (=> (and b!1916282 (= (toValue!5493 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178502) tb!117255))

(declare-fun result!141682 () Bool)

(assert (= result!141682 result!141642))

(assert (=> d!585261 t!178502))

(declare-fun tp!546738 () Bool)

(declare-fun b_and!149475 () Bool)

(assert (=> b!1916282 (= tp!546738 (and (=> t!178500 result!141680) (=> t!178502 result!141682) b_and!149475))))

(declare-fun b_free!54271 () Bool)

(declare-fun b_next!54975 () Bool)

(assert (=> b!1916282 (= b_free!54271 (not b_next!54975))))

(declare-fun tb!117257 () Bool)

(declare-fun t!178504 () Bool)

(assert (=> (and b!1916282 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178504) tb!117257))

(declare-fun result!141684 () Bool)

(assert (= result!141684 result!141636))

(assert (=> d!585253 t!178504))

(assert (=> b!1916247 t!178504))

(declare-fun t!178506 () Bool)

(declare-fun tb!117259 () Bool)

(assert (=> (and b!1916282 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354)))) t!178506) tb!117259))

(declare-fun result!141686 () Bool)

(assert (= result!141686 result!141602))

(assert (=> d!585259 t!178506))

(declare-fun tb!117261 () Bool)

(declare-fun t!178508 () Bool)

(assert (=> (and b!1916282 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178508) tb!117261))

(declare-fun result!141688 () Bool)

(assert (= result!141688 result!141622))

(assert (=> d!585223 t!178508))

(assert (=> b!1915621 t!178506))

(declare-fun tp!546737 () Bool)

(declare-fun b_and!149477 () Bool)

(assert (=> b!1916282 (= tp!546737 (and (=> t!178506 result!141686) (=> t!178508 result!141688) (=> t!178504 result!141684) b_and!149477))))

(declare-fun e!1224188 () Bool)

(assert (=> b!1916282 (= e!1224188 (and tp!546738 tp!546737))))

(declare-fun tp!546735 () Bool)

(declare-fun b!1916281 () Bool)

(declare-fun e!1224189 () Bool)

(assert (=> b!1916281 (= e!1224189 (and tp!546735 (inv!28735 (tag!4302 (h!27044 (t!178406 rules!3198)))) (inv!28739 (transformation!3864 (h!27044 (t!178406 rules!3198)))) e!1224188))))

(declare-fun b!1916280 () Bool)

(declare-fun e!1224190 () Bool)

(declare-fun tp!546736 () Bool)

(assert (=> b!1916280 (= e!1224190 (and e!1224189 tp!546736))))

(assert (=> b!1915311 (= tp!546635 e!1224190)))

(assert (= b!1916281 b!1916282))

(assert (= b!1916280 b!1916281))

(assert (= (and b!1915311 ((_ is Cons!21643) (t!178406 rules!3198))) b!1916280))

(declare-fun m!2351431 () Bool)

(assert (=> b!1916281 m!2351431))

(declare-fun m!2351433 () Bool)

(assert (=> b!1916281 m!2351433))

(declare-fun b!1916286 () Bool)

(declare-fun e!1224192 () Bool)

(declare-fun tp!546742 () Bool)

(declare-fun tp!546739 () Bool)

(assert (=> b!1916286 (= e!1224192 (and tp!546742 tp!546739))))

(declare-fun b!1916284 () Bool)

(declare-fun tp!546740 () Bool)

(declare-fun tp!546741 () Bool)

(assert (=> b!1916284 (= e!1224192 (and tp!546740 tp!546741))))

(declare-fun b!1916283 () Bool)

(assert (=> b!1916283 (= e!1224192 tp_is_empty!9109)))

(declare-fun b!1916285 () Bool)

(declare-fun tp!546743 () Bool)

(assert (=> b!1916285 (= e!1224192 tp!546743)))

(assert (=> b!1915302 (= tp!546639 e!1224192)))

(assert (= (and b!1915302 ((_ is ElementMatch!5289) (regex!3864 (h!27044 rules!3198)))) b!1916283))

(assert (= (and b!1915302 ((_ is Concat!9290) (regex!3864 (h!27044 rules!3198)))) b!1916284))

(assert (= (and b!1915302 ((_ is Star!5289) (regex!3864 (h!27044 rules!3198)))) b!1916285))

(assert (= (and b!1915302 ((_ is Union!5289) (regex!3864 (h!27044 rules!3198)))) b!1916286))

(declare-fun b!1916291 () Bool)

(declare-fun e!1224195 () Bool)

(declare-fun tp!546746 () Bool)

(assert (=> b!1916291 (= e!1224195 (and tp_is_empty!9109 tp!546746))))

(assert (=> b!1915326 (= tp!546636 e!1224195)))

(assert (= (and b!1915326 ((_ is Cons!21641) (originalCharacters!4671 (h!27043 tokens!598)))) b!1916291))

(declare-fun b!1916305 () Bool)

(declare-fun b_free!54273 () Bool)

(declare-fun b_next!54977 () Bool)

(assert (=> b!1916305 (= b_free!54273 (not b_next!54977))))

(declare-fun t!178510 () Bool)

(declare-fun tb!117263 () Bool)

(assert (=> (and b!1916305 (= (toValue!5493 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178510) tb!117263))

(declare-fun result!141694 () Bool)

(assert (= result!141694 result!141628))

(assert (=> d!585223 t!178510))

(assert (=> d!585261 t!178510))

(declare-fun t!178512 () Bool)

(declare-fun tb!117265 () Bool)

(assert (=> (and b!1916305 (= (toValue!5493 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178512) tb!117265))

(declare-fun result!141696 () Bool)

(assert (= result!141696 result!141642))

(assert (=> d!585261 t!178512))

(declare-fun tp!546761 () Bool)

(declare-fun b_and!149479 () Bool)

(assert (=> b!1916305 (= tp!546761 (and (=> t!178510 result!141694) (=> t!178512 result!141696) b_and!149479))))

(declare-fun b_free!54275 () Bool)

(declare-fun b_next!54979 () Bool)

(assert (=> b!1916305 (= b_free!54275 (not b_next!54979))))

(declare-fun t!178514 () Bool)

(declare-fun tb!117267 () Bool)

(assert (=> (and b!1916305 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178514) tb!117267))

(declare-fun result!141698 () Bool)

(assert (= result!141698 result!141636))

(assert (=> d!585253 t!178514))

(assert (=> b!1916247 t!178514))

(declare-fun tb!117269 () Bool)

(declare-fun t!178516 () Bool)

(assert (=> (and b!1916305 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354)))) t!178516) tb!117269))

(declare-fun result!141700 () Bool)

(assert (= result!141700 result!141602))

(assert (=> d!585259 t!178516))

(declare-fun t!178518 () Bool)

(declare-fun tb!117271 () Bool)

(assert (=> (and b!1916305 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598))))) t!178518) tb!117271))

(declare-fun result!141702 () Bool)

(assert (= result!141702 result!141622))

(assert (=> d!585223 t!178518))

(assert (=> b!1915621 t!178516))

(declare-fun b_and!149481 () Bool)

(declare-fun tp!546759 () Bool)

(assert (=> b!1916305 (= tp!546759 (and (=> t!178518 result!141702) (=> t!178514 result!141698) (=> t!178516 result!141700) b_and!149481))))

(declare-fun e!1224209 () Bool)

(declare-fun b!1916303 () Bool)

(declare-fun tp!546757 () Bool)

(declare-fun e!1224208 () Bool)

(assert (=> b!1916303 (= e!1224209 (and (inv!21 (value!121715 (h!27043 (t!178405 tokens!598)))) e!1224208 tp!546757))))

(declare-fun b!1916304 () Bool)

(declare-fun e!1224213 () Bool)

(declare-fun tp!546760 () Bool)

(assert (=> b!1916304 (= e!1224208 (and tp!546760 (inv!28735 (tag!4302 (rule!6065 (h!27043 (t!178405 tokens!598))))) (inv!28739 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) e!1224213))))

(declare-fun e!1224211 () Bool)

(assert (=> b!1915294 (= tp!546634 e!1224211)))

(assert (=> b!1916305 (= e!1224213 (and tp!546761 tp!546759))))

(declare-fun b!1916302 () Bool)

(declare-fun tp!546758 () Bool)

(assert (=> b!1916302 (= e!1224211 (and (inv!28738 (h!27043 (t!178405 tokens!598))) e!1224209 tp!546758))))

(assert (= b!1916304 b!1916305))

(assert (= b!1916303 b!1916304))

(assert (= b!1916302 b!1916303))

(assert (= (and b!1915294 ((_ is Cons!21642) (t!178405 tokens!598))) b!1916302))

(declare-fun m!2351435 () Bool)

(assert (=> b!1916303 m!2351435))

(declare-fun m!2351437 () Bool)

(assert (=> b!1916304 m!2351437))

(declare-fun m!2351439 () Bool)

(assert (=> b!1916304 m!2351439))

(declare-fun m!2351441 () Bool)

(assert (=> b!1916302 m!2351441))

(declare-fun b!1916306 () Bool)

(declare-fun e!1224214 () Bool)

(declare-fun tp!546762 () Bool)

(assert (=> b!1916306 (= e!1224214 (and tp_is_empty!9109 tp!546762))))

(assert (=> b!1915315 (= tp!546638 e!1224214)))

(assert (= (and b!1915315 ((_ is Cons!21641) (originalCharacters!4671 separatorToken!354))) b!1916306))

(declare-fun b_lambda!63407 () Bool)

(assert (= b_lambda!63405 (or (and b!1915292 b_free!54251) (and b!1915322 b_free!54255 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916282 b_free!54271 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916305 b_free!54275 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915320 b_free!54259 (= (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) b_lambda!63407)))

(declare-fun b_lambda!63409 () Bool)

(assert (= b_lambda!63353 (or b!1915328 b_lambda!63409)))

(declare-fun bs!414304 () Bool)

(declare-fun d!585321 () Bool)

(assert (= bs!414304 (and d!585321 b!1915328)))

(assert (=> bs!414304 (= (dynLambda!10526 lambda!74759 (h!27043 tokens!598)) (not (isSeparator!3864 (rule!6065 (h!27043 tokens!598)))))))

(assert (=> b!1915335 d!585321))

(declare-fun b_lambda!63411 () Bool)

(assert (= b_lambda!63369 (or (and b!1915292 b_free!54251) (and b!1915322 b_free!54255 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916282 b_free!54271 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916305 b_free!54275 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915320 b_free!54259 (= (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) b_lambda!63411)))

(declare-fun b_lambda!63413 () Bool)

(assert (= b_lambda!63373 (or (and b!1915292 b_free!54251) (and b!1915322 b_free!54255 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916282 b_free!54271 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916305 b_free!54275 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915320 b_free!54259 (= (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))) (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) b_lambda!63413)))

(declare-fun b_lambda!63415 () Bool)

(assert (= b_lambda!63379 (or (and b!1915320 b_free!54257 (= (toValue!5493 (transformation!3864 (rule!6065 separatorToken!354))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916282 b_free!54269 (= (toValue!5493 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916305 b_free!54273 (= (toValue!5493 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915322 b_free!54253 (= (toValue!5493 (transformation!3864 (h!27044 rules!3198))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915292 b_free!54249) b_lambda!63415)))

(declare-fun b_lambda!63417 () Bool)

(assert (= b_lambda!63375 (or (and b!1915292 b_free!54251 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) (and b!1916282 b_free!54271 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) (and b!1915320 b_free!54259) (and b!1916305 b_free!54275 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) (and b!1915322 b_free!54255 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) b_lambda!63417)))

(declare-fun b_lambda!63419 () Bool)

(assert (= b_lambda!63377 (or (and b!1915320 b_free!54257 (= (toValue!5493 (transformation!3864 (rule!6065 separatorToken!354))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916282 b_free!54269 (= (toValue!5493 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916305 b_free!54273 (= (toValue!5493 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915322 b_free!54253 (= (toValue!5493 (transformation!3864 (h!27044 rules!3198))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915292 b_free!54249) b_lambda!63419)))

(declare-fun b_lambda!63421 () Bool)

(assert (= b_lambda!63371 (or (and b!1915320 b_free!54257 (= (toValue!5493 (transformation!3864 (rule!6065 separatorToken!354))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916282 b_free!54269 (= (toValue!5493 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1916305 b_free!54273 (= (toValue!5493 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915322 b_free!54253 (= (toValue!5493 (transformation!3864 (h!27044 rules!3198))) (toValue!5493 (transformation!3864 (rule!6065 (h!27043 tokens!598)))))) (and b!1915292 b_free!54249) b_lambda!63421)))

(declare-fun b_lambda!63423 () Bool)

(assert (= b_lambda!63363 (or (and b!1915292 b_free!54251 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 tokens!598)))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) (and b!1916282 b_free!54271 (= (toChars!5352 (transformation!3864 (h!27044 (t!178406 rules!3198)))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) (and b!1915320 b_free!54259) (and b!1916305 b_free!54275 (= (toChars!5352 (transformation!3864 (rule!6065 (h!27043 (t!178405 tokens!598))))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) (and b!1915322 b_free!54255 (= (toChars!5352 (transformation!3864 (h!27044 rules!3198))) (toChars!5352 (transformation!3864 (rule!6065 separatorToken!354))))) b_lambda!63423)))

(check-sat (not d!585167) (not b!1915471) (not b!1915479) (not b!1915528) (not b!1916269) (not b!1915456) (not b!1915880) (not b!1916194) (not b_lambda!63419) (not b!1916113) (not b!1915828) (not b!1915457) (not b!1915966) (not b!1916099) (not b!1916303) (not b!1915359) (not b!1916284) (not b!1915360) (not b_next!54975) (not b!1915523) (not b_next!54977) (not b!1915935) (not b!1915627) (not bm!117939) (not b!1915807) (not b!1916302) (not d!585177) (not b!1915941) (not b!1915986) b_and!149469 (not tb!117209) (not bm!117947) (not b!1915939) (not b!1915919) (not d!585317) (not bm!117882) b_and!149443 (not d!585259) (not d!585013) (not b!1916105) (not b_lambda!63415) (not b!1916280) (not b!1916304) (not b!1916110) (not b!1915937) (not b!1915825) (not bm!117924) (not b!1916111) (not b!1915795) (not d!585171) (not bm!117944) tp_is_empty!9109 (not b!1915466) (not d!585261) (not b!1916057) (not b!1915687) (not bm!117943) (not d!585255) (not b!1915622) b_and!149471 (not d!585031) (not bm!117936) (not b!1915695) (not d!585071) (not bm!117942) (not b!1915901) (not b!1915858) (not tb!117221) (not b!1916023) (not b!1915689) (not d!585057) (not d!585175) (not d!585183) (not bm!117923) (not d!585069) (not d!585093) (not b!1915543) (not b!1915464) (not b!1916265) (not b!1915931) (not d!585033) (not bm!117893) (not d!585205) (not b!1915821) (not bm!117937) (not d!585065) (not d!585217) (not b!1915980) (not b!1915525) (not b!1916106) (not d!585029) (not d!585189) (not b!1915981) b_and!149447 (not b!1915534) (not b_next!54957) (not d!585211) (not b!1915985) (not d!585165) (not b!1915541) (not b!1915932) (not d!585087) (not b!1916024) (not b!1916251) (not d!585055) (not b!1915933) (not d!585161) (not b!1916285) (not bm!117955) (not bm!117885) (not b!1915694) (not b!1915898) (not d!585047) (not d!585223) (not bm!117935) (not b!1915979) (not b!1915587) (not d!585197) (not b!1915928) (not b!1916250) (not b!1915472) (not b!1915559) (not b!1915942) (not d!585225) (not b!1915336) (not b!1915455) (not tb!117215) (not b!1916281) (not b!1915691) (not d!585221) b_and!149473 (not b!1916242) (not b!1915910) (not b!1916271) (not b!1915861) (not b!1915950) (not b!1915533) (not b!1915926) (not bm!117948) (not d!585273) (not b!1915621) b_and!149477 (not d!585313) (not b!1915532) (not b!1915552) (not b!1916109) (not b!1916107) (not b!1915797) (not d!585229) (not d!585201) (not b!1915860) (not b!1916286) (not b!1916021) (not b!1915954) (not d!585215) (not bm!117950) (not b_next!54961) (not d!585067) (not tb!117227) b_and!149445 (not d!585073) (not b!1915908) (not b!1915692) (not d!585309) (not d!585195) (not d!585213) (not bm!117940) (not b!1915983) (not b_lambda!63421) (not b_lambda!63413) (not b!1915927) (not b!1915904) (not b!1915949) (not b!1915791) (not b!1916053) (not b!1915546) (not b!1915916) (not b!1916244) (not d!585277) (not d!585251) (not d!585163) (not b!1915693) (not b!1915914) (not tb!117191) (not b!1916306) (not b!1915480) (not b!1915473) (not b!1915955) (not b!1915987) (not b!1915922) (not b_lambda!63423) (not b!1916247) (not b!1915958) (not d!585049) (not b!1916249) (not b!1915600) (not b!1915453) (not b!1916051) (not d!585203) (not b!1915827) (not b!1916266) (not b!1915482) (not b!1916267) (not b!1915688) b_and!149475 (not d!585191) (not b!1916248) (not b!1915876) (not b_next!54973) (not b!1915796) (not b!1915984) (not b!1915550) (not b!1915366) (not b!1915879) (not b_lambda!63417) (not b!1915481) (not b_next!54959) (not b!1916270) (not b!1916291) (not d!585233) (not b!1915599) (not b!1915896) b_and!149481 (not b!1915831) (not b!1915899) (not b!1915936) (not bm!117941) (not d!585173) (not bm!117946) (not b_next!54955) (not d!585063) (not b_lambda!63411) (not d!585281) (not b!1915956) (not b!1916243) (not bm!117922) (not b!1915917) (not b_next!54953) (not d!585257) (not d!585253) (not b!1916100) (not b!1915551) b_and!149479 (not b_next!54979) (not b!1915822) (not d!585061) (not d!585025) (not b!1916112) (not b_next!54963) (not b!1915938) (not b!1915948) (not b_lambda!63409) (not b!1915909) (not d!585291) (not b!1916054) (not b_lambda!63407) (not b!1915465) (not b!1915365) (not d!585095) (not b!1915598))
(check-sat (not b_next!54975) (not b_next!54977) b_and!149471 b_and!149447 (not b_next!54957) b_and!149473 b_and!149477 b_and!149475 (not b_next!54973) (not b_next!54959) (not b_next!54953) (not b_next!54963) b_and!149443 b_and!149469 (not b_next!54961) b_and!149445 b_and!149481 (not b_next!54955) b_and!149479 (not b_next!54979))
