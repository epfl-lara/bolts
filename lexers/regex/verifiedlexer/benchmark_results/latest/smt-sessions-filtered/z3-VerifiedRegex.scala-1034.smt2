; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51436 () Bool)

(assert start!51436)

(declare-fun b!554491 () Bool)

(declare-fun b_free!15577 () Bool)

(declare-fun b_next!15593 () Bool)

(assert (=> b!554491 (= b_free!15577 (not b_next!15593))))

(declare-fun tp!175368 () Bool)

(declare-fun b_and!54171 () Bool)

(assert (=> b!554491 (= tp!175368 b_and!54171)))

(declare-fun b_free!15579 () Bool)

(declare-fun b_next!15595 () Bool)

(assert (=> b!554491 (= b_free!15579 (not b_next!15595))))

(declare-fun tp!175366 () Bool)

(declare-fun b_and!54173 () Bool)

(assert (=> b!554491 (= tp!175366 b_and!54173)))

(declare-fun b!554483 () Bool)

(declare-fun b_free!15581 () Bool)

(declare-fun b_next!15597 () Bool)

(assert (=> b!554483 (= b_free!15581 (not b_next!15597))))

(declare-fun tp!175365 () Bool)

(declare-fun b_and!54175 () Bool)

(assert (=> b!554483 (= tp!175365 b_and!54175)))

(declare-fun b_free!15583 () Bool)

(declare-fun b_next!15599 () Bool)

(assert (=> b!554483 (= b_free!15583 (not b_next!15599))))

(declare-fun tp!175362 () Bool)

(declare-fun b_and!54177 () Bool)

(assert (=> b!554483 (= tp!175362 b_and!54177)))

(declare-fun b!554463 () Bool)

(declare-fun e!335607 () Bool)

(declare-fun e!335595 () Bool)

(assert (=> b!554463 (= e!335607 e!335595)))

(declare-fun res!237979 () Bool)

(assert (=> b!554463 (=> (not res!237979) (not e!335595))))

(declare-datatypes ((C!3700 0))(
  ( (C!3701 (val!2076 Int)) )
))
(declare-datatypes ((Regex!1389 0))(
  ( (ElementMatch!1389 (c!104050 C!3700)) (Concat!2468 (regOne!3290 Regex!1389) (regTwo!3290 Regex!1389)) (EmptyExpr!1389) (Star!1389 (reg!1718 Regex!1389)) (EmptyLang!1389) (Union!1389 (regOne!3291 Regex!1389) (regTwo!3291 Regex!1389)) )
))
(declare-datatypes ((List!5526 0))(
  ( (Nil!5516) (Cons!5516 (h!10917 (_ BitVec 16)) (t!75345 List!5526)) )
))
(declare-datatypes ((List!5527 0))(
  ( (Nil!5517) (Cons!5517 (h!10918 C!3700) (t!75346 List!5527)) )
))
(declare-datatypes ((IArray!3545 0))(
  ( (IArray!3546 (innerList!1830 List!5527)) )
))
(declare-datatypes ((Conc!1772 0))(
  ( (Node!1772 (left!4540 Conc!1772) (right!4870 Conc!1772) (csize!3774 Int) (cheight!1983 Int)) (Leaf!2807 (xs!4409 IArray!3545) (csize!3775 Int)) (Empty!1772) )
))
(declare-datatypes ((BalanceConc!3552 0))(
  ( (BalanceConc!3553 (c!104051 Conc!1772)) )
))
(declare-datatypes ((TokenValue!1079 0))(
  ( (FloatLiteralValue!2158 (text!7998 List!5526)) (TokenValueExt!1078 (__x!4056 Int)) (Broken!5395 (value!34908 List!5526)) (Object!1088) (End!1079) (Def!1079) (Underscore!1079) (Match!1079) (Else!1079) (Error!1079) (Case!1079) (If!1079) (Extends!1079) (Abstract!1079) (Class!1079) (Val!1079) (DelimiterValue!2158 (del!1139 List!5526)) (KeywordValue!1085 (value!34909 List!5526)) (CommentValue!2158 (value!34910 List!5526)) (WhitespaceValue!2158 (value!34911 List!5526)) (IndentationValue!1079 (value!34912 List!5526)) (String!7138) (Int32!1079) (Broken!5396 (value!34913 List!5526)) (Boolean!1080) (Unit!9776) (OperatorValue!1082 (op!1139 List!5526)) (IdentifierValue!2158 (value!34914 List!5526)) (IdentifierValue!2159 (value!34915 List!5526)) (WhitespaceValue!2159 (value!34916 List!5526)) (True!2158) (False!2158) (Broken!5397 (value!34917 List!5526)) (Broken!5398 (value!34918 List!5526)) (True!2159) (RightBrace!1079) (RightBracket!1079) (Colon!1079) (Null!1079) (Comma!1079) (LeftBracket!1079) (False!2159) (LeftBrace!1079) (ImaginaryLiteralValue!1079 (text!7999 List!5526)) (StringLiteralValue!3237 (value!34919 List!5526)) (EOFValue!1079 (value!34920 List!5526)) (IdentValue!1079 (value!34921 List!5526)) (DelimiterValue!2159 (value!34922 List!5526)) (DedentValue!1079 (value!34923 List!5526)) (NewLineValue!1079 (value!34924 List!5526)) (IntegerValue!3237 (value!34925 (_ BitVec 32)) (text!8000 List!5526)) (IntegerValue!3238 (value!34926 Int) (text!8001 List!5526)) (Times!1079) (Or!1079) (Equal!1079) (Minus!1079) (Broken!5399 (value!34927 List!5526)) (And!1079) (Div!1079) (LessEqual!1079) (Mod!1079) (Concat!2469) (Not!1079) (Plus!1079) (SpaceValue!1079 (value!34928 List!5526)) (IntegerValue!3239 (value!34929 Int) (text!8002 List!5526)) (StringLiteralValue!3238 (text!8003 List!5526)) (FloatLiteralValue!2159 (text!8004 List!5526)) (BytesLiteralValue!1079 (value!34930 List!5526)) (CommentValue!2159 (value!34931 List!5526)) (StringLiteralValue!3239 (value!34932 List!5526)) (ErrorTokenValue!1079 (msg!1140 List!5526)) )
))
(declare-datatypes ((String!7139 0))(
  ( (String!7140 (value!34933 String)) )
))
(declare-datatypes ((TokenValueInjection!1926 0))(
  ( (TokenValueInjection!1927 (toValue!1906 Int) (toChars!1765 Int)) )
))
(declare-datatypes ((Rule!1910 0))(
  ( (Rule!1911 (regex!1055 Regex!1389) (tag!1317 String!7139) (isSeparator!1055 Bool) (transformation!1055 TokenValueInjection!1926)) )
))
(declare-datatypes ((Token!1846 0))(
  ( (Token!1847 (value!34934 TokenValue!1079) (rule!1785 Rule!1910) (size!4400 Int) (originalCharacters!1094 List!5527)) )
))
(declare-datatypes ((tuple2!6524 0))(
  ( (tuple2!6525 (_1!3526 Token!1846) (_2!3526 List!5527)) )
))
(declare-datatypes ((Option!1405 0))(
  ( (None!1404) (Some!1404 (v!16235 tuple2!6524)) )
))
(declare-fun lt!234142 () Option!1405)

(get-info :version)

(assert (=> b!554463 (= res!237979 ((_ is Some!1404) lt!234142))))

(declare-datatypes ((List!5528 0))(
  ( (Nil!5518) (Cons!5518 (h!10919 Rule!1910) (t!75347 List!5528)) )
))
(declare-fun rules!3103 () List!5528)

(declare-datatypes ((LexerInterface!941 0))(
  ( (LexerInterfaceExt!938 (__x!4057 Int)) (Lexer!939) )
))
(declare-fun thiss!22590 () LexerInterface!941)

(declare-fun input!2705 () List!5527)

(declare-fun maxPrefix!639 (LexerInterface!941 List!5528 List!5527) Option!1405)

(assert (=> b!554463 (= lt!234142 (maxPrefix!639 thiss!22590 rules!3103 input!2705))))

(declare-fun b!554464 () Bool)

(declare-fun e!335605 () Bool)

(declare-fun tp_is_empty!3133 () Bool)

(declare-fun tp!175363 () Bool)

(assert (=> b!554464 (= e!335605 (and tp_is_empty!3133 tp!175363))))

(declare-fun b!554465 () Bool)

(declare-fun res!237976 () Bool)

(declare-fun e!335601 () Bool)

(assert (=> b!554465 (=> (not res!237976) (not e!335601))))

(declare-fun rulesInvariant!904 (LexerInterface!941 List!5528) Bool)

(assert (=> b!554465 (= res!237976 (rulesInvariant!904 thiss!22590 rules!3103))))

(declare-fun res!237981 () Bool)

(assert (=> start!51436 (=> (not res!237981) (not e!335601))))

(assert (=> start!51436 (= res!237981 ((_ is Lexer!939) thiss!22590))))

(assert (=> start!51436 e!335601))

(declare-fun e!335591 () Bool)

(assert (=> start!51436 e!335591))

(declare-fun e!335594 () Bool)

(assert (=> start!51436 e!335594))

(declare-fun token!491 () Token!1846)

(declare-fun e!335590 () Bool)

(declare-fun inv!6926 (Token!1846) Bool)

(assert (=> start!51436 (and (inv!6926 token!491) e!335590)))

(assert (=> start!51436 true))

(assert (=> start!51436 e!335605))

(declare-fun b!554466 () Bool)

(declare-fun e!335612 () Bool)

(declare-fun get!2097 (Option!1405) tuple2!6524)

(assert (=> b!554466 (= e!335612 (= (_1!3526 (get!2097 lt!234142)) (_1!3526 (v!16235 lt!234142))))))

(declare-fun e!335604 () Bool)

(declare-fun e!335602 () Bool)

(declare-fun tp!175364 () Bool)

(declare-fun b!554467 () Bool)

(declare-fun inv!6923 (String!7139) Bool)

(declare-fun inv!6927 (TokenValueInjection!1926) Bool)

(assert (=> b!554467 (= e!335602 (and tp!175364 (inv!6923 (tag!1317 (h!10919 rules!3103))) (inv!6927 (transformation!1055 (h!10919 rules!3103))) e!335604))))

(declare-fun b!554468 () Bool)

(declare-fun e!335599 () Bool)

(declare-fun e!335588 () Bool)

(declare-fun tp!175360 () Bool)

(assert (=> b!554468 (= e!335588 (and tp!175360 (inv!6923 (tag!1317 (rule!1785 token!491))) (inv!6927 (transformation!1055 (rule!1785 token!491))) e!335599))))

(declare-fun b!554469 () Bool)

(declare-fun e!335597 () Bool)

(assert (=> b!554469 (= e!335597 e!335612)))

(declare-fun res!237978 () Bool)

(assert (=> b!554469 (=> (not res!237978) (not e!335612))))

(declare-fun isDefined!1217 (Option!1405) Bool)

(assert (=> b!554469 (= res!237978 (isDefined!1217 lt!234142))))

(declare-fun b!554470 () Bool)

(declare-fun e!335589 () Bool)

(assert (=> b!554470 (= e!335589 e!335607)))

(declare-fun res!237984 () Bool)

(assert (=> b!554470 (=> (not res!237984) (not e!335607))))

(declare-fun lt!234121 () tuple2!6524)

(declare-fun suffix!1342 () List!5527)

(assert (=> b!554470 (= res!237984 (and (= (_1!3526 lt!234121) token!491) (= (_2!3526 lt!234121) suffix!1342)))))

(declare-fun lt!234122 () Option!1405)

(assert (=> b!554470 (= lt!234121 (get!2097 lt!234122))))

(declare-fun b!554471 () Bool)

(declare-fun tp!175361 () Bool)

(assert (=> b!554471 (= e!335591 (and tp_is_empty!3133 tp!175361))))

(declare-fun tp!175367 () Bool)

(declare-fun b!554472 () Bool)

(declare-fun inv!21 (TokenValue!1079) Bool)

(assert (=> b!554472 (= e!335590 (and (inv!21 (value!34934 token!491)) e!335588 tp!175367))))

(declare-fun b!554473 () Bool)

(declare-fun tp!175359 () Bool)

(assert (=> b!554473 (= e!335594 (and e!335602 tp!175359))))

(declare-fun b!554474 () Bool)

(declare-fun e!335606 () Bool)

(declare-fun matchR!536 (Regex!1389 List!5527) Bool)

(assert (=> b!554474 (= e!335606 (matchR!536 (regex!1055 (rule!1785 token!491)) input!2705))))

(declare-fun e!335610 () Bool)

(declare-fun lt!234130 () List!5527)

(declare-fun lt!234125 () TokenValue!1079)

(declare-fun lt!234145 () Int)

(declare-fun lt!234139 () List!5527)

(declare-fun b!554475 () Bool)

(assert (=> b!554475 (= e!335610 (and (= (size!4400 token!491) lt!234145) (= (originalCharacters!1094 token!491) lt!234130) (= (tuple2!6525 token!491 suffix!1342) (tuple2!6525 (Token!1847 lt!234125 (rule!1785 token!491) lt!234145 lt!234130) lt!234139))))))

(declare-fun b!554476 () Bool)

(declare-datatypes ((Unit!9777 0))(
  ( (Unit!9778) )
))
(declare-fun e!335611 () Unit!9777)

(declare-fun Unit!9779 () Unit!9777)

(assert (=> b!554476 (= e!335611 Unit!9779)))

(declare-fun b!554477 () Bool)

(declare-fun e!335600 () Bool)

(assert (=> b!554477 (= e!335595 e!335600)))

(declare-fun res!237982 () Bool)

(assert (=> b!554477 (=> (not res!237982) (not e!335600))))

(declare-fun lt!234126 () List!5527)

(declare-fun lt!234136 () List!5527)

(assert (=> b!554477 (= res!237982 (= lt!234126 lt!234136))))

(declare-fun ++!1543 (List!5527 List!5527) List!5527)

(assert (=> b!554477 (= lt!234126 (++!1543 lt!234130 suffix!1342))))

(declare-fun b!554478 () Bool)

(declare-fun e!335593 () Bool)

(assert (=> b!554478 (= e!335593 e!335606)))

(declare-fun res!237986 () Bool)

(assert (=> b!554478 (=> res!237986 e!335606)))

(declare-fun lt!234118 () Int)

(assert (=> b!554478 (= res!237986 (>= lt!234118 lt!234145))))

(declare-fun e!335603 () Bool)

(assert (=> b!554478 e!335603))

(declare-fun res!237973 () Bool)

(assert (=> b!554478 (=> (not res!237973) (not e!335603))))

(declare-fun maxPrefixOneRule!340 (LexerInterface!941 Rule!1910 List!5527) Option!1405)

(assert (=> b!554478 (= res!237973 (= (maxPrefixOneRule!340 thiss!22590 (rule!1785 token!491) lt!234136) (Some!1404 (tuple2!6525 (Token!1847 lt!234125 (rule!1785 token!491) lt!234145 lt!234130) suffix!1342))))))

(declare-fun lt!234144 () Unit!9777)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!90 (LexerInterface!941 List!5528 List!5527 List!5527 List!5527 Rule!1910) Unit!9777)

(assert (=> b!554478 (= lt!234144 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!90 thiss!22590 rules!3103 lt!234130 lt!234136 suffix!1342 (rule!1785 token!491)))))

(declare-fun lt!234141 () List!5527)

(declare-fun lt!234124 () TokenValue!1079)

(assert (=> b!554478 (= (maxPrefixOneRule!340 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))) input!2705) (Some!1404 (tuple2!6525 (Token!1847 lt!234124 (rule!1785 (_1!3526 (v!16235 lt!234142))) lt!234118 lt!234141) (_2!3526 (v!16235 lt!234142)))))))

(declare-fun lt!234132 () Unit!9777)

(assert (=> b!554478 (= lt!234132 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!90 thiss!22590 rules!3103 lt!234141 input!2705 (_2!3526 (v!16235 lt!234142)) (rule!1785 (_1!3526 (v!16235 lt!234142)))))))

(assert (=> b!554478 e!335610))

(declare-fun res!237985 () Bool)

(assert (=> b!554478 (=> (not res!237985) (not e!335610))))

(assert (=> b!554478 (= res!237985 (= (value!34934 token!491) lt!234125))))

(declare-fun apply!1320 (TokenValueInjection!1926 BalanceConc!3552) TokenValue!1079)

(declare-fun seqFromList!1243 (List!5527) BalanceConc!3552)

(assert (=> b!554478 (= lt!234125 (apply!1320 (transformation!1055 (rule!1785 token!491)) (seqFromList!1243 lt!234130)))))

(assert (=> b!554478 (= suffix!1342 lt!234139)))

(declare-fun lt!234119 () Unit!9777)

(declare-fun lemmaSamePrefixThenSameSuffix!412 (List!5527 List!5527 List!5527 List!5527 List!5527) Unit!9777)

(assert (=> b!554478 (= lt!234119 (lemmaSamePrefixThenSameSuffix!412 lt!234130 suffix!1342 lt!234130 lt!234139 lt!234136))))

(declare-fun getSuffix!208 (List!5527 List!5527) List!5527)

(assert (=> b!554478 (= lt!234139 (getSuffix!208 lt!234136 lt!234130))))

(declare-fun b!554479 () Bool)

(declare-fun e!335609 () Bool)

(assert (=> b!554479 (= e!335601 e!335609)))

(declare-fun res!237972 () Bool)

(assert (=> b!554479 (=> (not res!237972) (not e!335609))))

(assert (=> b!554479 (= res!237972 (= lt!234130 input!2705))))

(declare-fun list!2287 (BalanceConc!3552) List!5527)

(declare-fun charsOf!684 (Token!1846) BalanceConc!3552)

(assert (=> b!554479 (= lt!234130 (list!2287 (charsOf!684 token!491)))))

(declare-fun b!554480 () Bool)

(declare-fun res!237975 () Bool)

(assert (=> b!554480 (=> res!237975 e!335606)))

(declare-fun contains!1287 (List!5528 Rule!1910) Bool)

(assert (=> b!554480 (= res!237975 (not (contains!1287 rules!3103 (rule!1785 token!491))))))

(declare-fun b!554481 () Bool)

(assert (=> b!554481 (= e!335609 e!335589)))

(declare-fun res!237983 () Bool)

(assert (=> b!554481 (=> (not res!237983) (not e!335589))))

(assert (=> b!554481 (= res!237983 (isDefined!1217 lt!234122))))

(assert (=> b!554481 (= lt!234122 (maxPrefix!639 thiss!22590 rules!3103 lt!234136))))

(assert (=> b!554481 (= lt!234136 (++!1543 input!2705 suffix!1342))))

(declare-fun b!554482 () Bool)

(declare-fun res!237971 () Bool)

(assert (=> b!554482 (=> (not res!237971) (not e!335601))))

(declare-fun isEmpty!3980 (List!5527) Bool)

(assert (=> b!554482 (= res!237971 (not (isEmpty!3980 input!2705)))))

(assert (=> b!554483 (= e!335599 (and tp!175365 tp!175362))))

(declare-fun b!554484 () Bool)

(assert (=> b!554484 (= e!335600 (not e!335593))))

(declare-fun res!237980 () Bool)

(assert (=> b!554484 (=> res!237980 e!335593)))

(declare-fun isPrefix!689 (List!5527 List!5527) Bool)

(assert (=> b!554484 (= res!237980 (not (isPrefix!689 input!2705 lt!234126)))))

(assert (=> b!554484 (isPrefix!689 lt!234130 lt!234126)))

(declare-fun lt!234140 () Unit!9777)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!536 (List!5527 List!5527) Unit!9777)

(assert (=> b!554484 (= lt!234140 (lemmaConcatTwoListThenFirstIsPrefix!536 lt!234130 suffix!1342))))

(assert (=> b!554484 (isPrefix!689 input!2705 lt!234136)))

(declare-fun lt!234133 () Unit!9777)

(assert (=> b!554484 (= lt!234133 (lemmaConcatTwoListThenFirstIsPrefix!536 input!2705 suffix!1342))))

(declare-fun e!335596 () Bool)

(assert (=> b!554484 e!335596))

(declare-fun res!237969 () Bool)

(assert (=> b!554484 (=> (not res!237969) (not e!335596))))

(assert (=> b!554484 (= res!237969 (= (value!34934 (_1!3526 (v!16235 lt!234142))) lt!234124))))

(assert (=> b!554484 (= lt!234124 (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (seqFromList!1243 lt!234141)))))

(declare-fun lt!234135 () Unit!9777)

(declare-fun lemmaInv!191 (TokenValueInjection!1926) Unit!9777)

(assert (=> b!554484 (= lt!234135 (lemmaInv!191 (transformation!1055 (rule!1785 token!491))))))

(declare-fun lt!234131 () Unit!9777)

(assert (=> b!554484 (= lt!234131 (lemmaInv!191 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))))))

(declare-fun ruleValid!265 (LexerInterface!941 Rule!1910) Bool)

(assert (=> b!554484 (ruleValid!265 thiss!22590 (rule!1785 token!491))))

(declare-fun lt!234123 () Unit!9777)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!122 (LexerInterface!941 Rule!1910 List!5528) Unit!9777)

(assert (=> b!554484 (= lt!234123 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!122 thiss!22590 (rule!1785 token!491) rules!3103))))

(assert (=> b!554484 (ruleValid!265 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))))))

(declare-fun lt!234138 () Unit!9777)

(assert (=> b!554484 (= lt!234138 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!122 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))) rules!3103))))

(assert (=> b!554484 (isPrefix!689 input!2705 input!2705)))

(declare-fun lt!234128 () Unit!9777)

(declare-fun lemmaIsPrefixRefl!427 (List!5527 List!5527) Unit!9777)

(assert (=> b!554484 (= lt!234128 (lemmaIsPrefixRefl!427 input!2705 input!2705))))

(declare-fun lt!234143 () List!5527)

(assert (=> b!554484 (= (_2!3526 (v!16235 lt!234142)) lt!234143)))

(declare-fun lt!234127 () Unit!9777)

(assert (=> b!554484 (= lt!234127 (lemmaSamePrefixThenSameSuffix!412 lt!234141 (_2!3526 (v!16235 lt!234142)) lt!234141 lt!234143 input!2705))))

(assert (=> b!554484 (= lt!234143 (getSuffix!208 input!2705 lt!234141))))

(assert (=> b!554484 (isPrefix!689 lt!234141 (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142))))))

(declare-fun lt!234129 () Unit!9777)

(assert (=> b!554484 (= lt!234129 (lemmaConcatTwoListThenFirstIsPrefix!536 lt!234141 (_2!3526 (v!16235 lt!234142))))))

(declare-fun lt!234120 () Unit!9777)

(declare-fun lemmaCharactersSize!122 (Token!1846) Unit!9777)

(assert (=> b!554484 (= lt!234120 (lemmaCharactersSize!122 token!491))))

(declare-fun lt!234147 () Unit!9777)

(assert (=> b!554484 (= lt!234147 (lemmaCharactersSize!122 (_1!3526 (v!16235 lt!234142))))))

(declare-fun lt!234146 () Unit!9777)

(assert (=> b!554484 (= lt!234146 e!335611)))

(declare-fun c!104049 () Bool)

(assert (=> b!554484 (= c!104049 (> lt!234118 lt!234145))))

(declare-fun size!4401 (List!5527) Int)

(assert (=> b!554484 (= lt!234145 (size!4401 lt!234130))))

(assert (=> b!554484 (= lt!234118 (size!4401 lt!234141))))

(assert (=> b!554484 (= lt!234141 (list!2287 (charsOf!684 (_1!3526 (v!16235 lt!234142)))))))

(declare-fun lt!234137 () tuple2!6524)

(assert (=> b!554484 (= lt!234142 (Some!1404 lt!234137))))

(assert (=> b!554484 (= lt!234137 (tuple2!6525 (_1!3526 (v!16235 lt!234142)) (_2!3526 (v!16235 lt!234142))))))

(declare-fun lt!234134 () Unit!9777)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!132 (List!5527 List!5527 List!5527 List!5527) Unit!9777)

(assert (=> b!554484 (= lt!234134 (lemmaConcatSameAndSameSizesThenSameLists!132 lt!234130 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!554485 () Bool)

(assert (=> b!554485 (= e!335596 (and (= (size!4400 (_1!3526 (v!16235 lt!234142))) lt!234118) (= (originalCharacters!1094 (_1!3526 (v!16235 lt!234142))) lt!234141) (= lt!234137 (tuple2!6525 (Token!1847 lt!234124 (rule!1785 (_1!3526 (v!16235 lt!234142))) lt!234118 lt!234141) lt!234143))))))

(declare-fun b!554486 () Bool)

(declare-fun res!237977 () Bool)

(assert (=> b!554486 (=> (not res!237977) (not e!335596))))

(assert (=> b!554486 (= res!237977 (= (size!4400 (_1!3526 (v!16235 lt!234142))) (size!4401 (originalCharacters!1094 (_1!3526 (v!16235 lt!234142))))))))

(declare-fun b!554487 () Bool)

(declare-fun res!237970 () Bool)

(assert (=> b!554487 (=> (not res!237970) (not e!335610))))

(assert (=> b!554487 (= res!237970 (= (size!4400 token!491) (size!4401 (originalCharacters!1094 token!491))))))

(declare-fun b!554488 () Bool)

(declare-fun res!237968 () Bool)

(assert (=> b!554488 (=> (not res!237968) (not e!335601))))

(declare-fun isEmpty!3981 (List!5528) Bool)

(assert (=> b!554488 (= res!237968 (not (isEmpty!3981 rules!3103)))))

(declare-fun b!554489 () Bool)

(declare-fun Unit!9780 () Unit!9777)

(assert (=> b!554489 (= e!335611 Unit!9780)))

(assert (=> b!554489 false))

(declare-fun b!554490 () Bool)

(assert (=> b!554490 (= e!335603 e!335597)))

(declare-fun res!237974 () Bool)

(assert (=> b!554490 (=> res!237974 e!335597)))

(assert (=> b!554490 (= res!237974 (>= lt!234118 lt!234145))))

(assert (=> b!554491 (= e!335604 (and tp!175368 tp!175366))))

(assert (= (and start!51436 res!237981) b!554488))

(assert (= (and b!554488 res!237968) b!554465))

(assert (= (and b!554465 res!237976) b!554482))

(assert (= (and b!554482 res!237971) b!554479))

(assert (= (and b!554479 res!237972) b!554481))

(assert (= (and b!554481 res!237983) b!554470))

(assert (= (and b!554470 res!237984) b!554463))

(assert (= (and b!554463 res!237979) b!554477))

(assert (= (and b!554477 res!237982) b!554484))

(assert (= (and b!554484 c!104049) b!554489))

(assert (= (and b!554484 (not c!104049)) b!554476))

(assert (= (and b!554484 res!237969) b!554486))

(assert (= (and b!554486 res!237977) b!554485))

(assert (= (and b!554484 (not res!237980)) b!554478))

(assert (= (and b!554478 res!237985) b!554487))

(assert (= (and b!554487 res!237970) b!554475))

(assert (= (and b!554478 res!237973) b!554490))

(assert (= (and b!554490 (not res!237974)) b!554469))

(assert (= (and b!554469 res!237978) b!554466))

(assert (= (and b!554478 (not res!237986)) b!554480))

(assert (= (and b!554480 (not res!237975)) b!554474))

(assert (= (and start!51436 ((_ is Cons!5517) suffix!1342)) b!554471))

(assert (= b!554467 b!554491))

(assert (= b!554473 b!554467))

(assert (= (and start!51436 ((_ is Cons!5518) rules!3103)) b!554473))

(assert (= b!554468 b!554483))

(assert (= b!554472 b!554468))

(assert (= start!51436 b!554472))

(assert (= (and start!51436 ((_ is Cons!5517) input!2705)) b!554464))

(declare-fun m!804551 () Bool)

(assert (=> b!554481 m!804551))

(declare-fun m!804553 () Bool)

(assert (=> b!554481 m!804553))

(declare-fun m!804555 () Bool)

(assert (=> b!554481 m!804555))

(declare-fun m!804557 () Bool)

(assert (=> b!554468 m!804557))

(declare-fun m!804559 () Bool)

(assert (=> b!554468 m!804559))

(declare-fun m!804561 () Bool)

(assert (=> b!554479 m!804561))

(assert (=> b!554479 m!804561))

(declare-fun m!804563 () Bool)

(assert (=> b!554479 m!804563))

(declare-fun m!804565 () Bool)

(assert (=> start!51436 m!804565))

(declare-fun m!804567 () Bool)

(assert (=> b!554474 m!804567))

(declare-fun m!804569 () Bool)

(assert (=> b!554466 m!804569))

(declare-fun m!804571 () Bool)

(assert (=> b!554477 m!804571))

(declare-fun m!804573 () Bool)

(assert (=> b!554463 m!804573))

(declare-fun m!804575 () Bool)

(assert (=> b!554480 m!804575))

(declare-fun m!804577 () Bool)

(assert (=> b!554472 m!804577))

(declare-fun m!804579 () Bool)

(assert (=> b!554486 m!804579))

(declare-fun m!804581 () Bool)

(assert (=> b!554482 m!804581))

(declare-fun m!804583 () Bool)

(assert (=> b!554470 m!804583))

(declare-fun m!804585 () Bool)

(assert (=> b!554484 m!804585))

(declare-fun m!804587 () Bool)

(assert (=> b!554484 m!804587))

(declare-fun m!804589 () Bool)

(assert (=> b!554484 m!804589))

(declare-fun m!804591 () Bool)

(assert (=> b!554484 m!804591))

(declare-fun m!804593 () Bool)

(assert (=> b!554484 m!804593))

(declare-fun m!804595 () Bool)

(assert (=> b!554484 m!804595))

(declare-fun m!804597 () Bool)

(assert (=> b!554484 m!804597))

(declare-fun m!804599 () Bool)

(assert (=> b!554484 m!804599))

(declare-fun m!804601 () Bool)

(assert (=> b!554484 m!804601))

(declare-fun m!804603 () Bool)

(assert (=> b!554484 m!804603))

(declare-fun m!804605 () Bool)

(assert (=> b!554484 m!804605))

(declare-fun m!804607 () Bool)

(assert (=> b!554484 m!804607))

(declare-fun m!804609 () Bool)

(assert (=> b!554484 m!804609))

(declare-fun m!804611 () Bool)

(assert (=> b!554484 m!804611))

(declare-fun m!804613 () Bool)

(assert (=> b!554484 m!804613))

(declare-fun m!804615 () Bool)

(assert (=> b!554484 m!804615))

(declare-fun m!804617 () Bool)

(assert (=> b!554484 m!804617))

(declare-fun m!804619 () Bool)

(assert (=> b!554484 m!804619))

(declare-fun m!804621 () Bool)

(assert (=> b!554484 m!804621))

(declare-fun m!804623 () Bool)

(assert (=> b!554484 m!804623))

(declare-fun m!804625 () Bool)

(assert (=> b!554484 m!804625))

(declare-fun m!804627 () Bool)

(assert (=> b!554484 m!804627))

(assert (=> b!554484 m!804599))

(declare-fun m!804629 () Bool)

(assert (=> b!554484 m!804629))

(declare-fun m!804631 () Bool)

(assert (=> b!554484 m!804631))

(assert (=> b!554484 m!804597))

(declare-fun m!804633 () Bool)

(assert (=> b!554484 m!804633))

(assert (=> b!554484 m!804615))

(declare-fun m!804635 () Bool)

(assert (=> b!554484 m!804635))

(declare-fun m!804637 () Bool)

(assert (=> b!554484 m!804637))

(declare-fun m!804639 () Bool)

(assert (=> b!554467 m!804639))

(declare-fun m!804641 () Bool)

(assert (=> b!554467 m!804641))

(declare-fun m!804643 () Bool)

(assert (=> b!554465 m!804643))

(declare-fun m!804645 () Bool)

(assert (=> b!554469 m!804645))

(declare-fun m!804647 () Bool)

(assert (=> b!554488 m!804647))

(declare-fun m!804649 () Bool)

(assert (=> b!554487 m!804649))

(declare-fun m!804651 () Bool)

(assert (=> b!554478 m!804651))

(declare-fun m!804653 () Bool)

(assert (=> b!554478 m!804653))

(declare-fun m!804655 () Bool)

(assert (=> b!554478 m!804655))

(declare-fun m!804657 () Bool)

(assert (=> b!554478 m!804657))

(declare-fun m!804659 () Bool)

(assert (=> b!554478 m!804659))

(assert (=> b!554478 m!804657))

(declare-fun m!804661 () Bool)

(assert (=> b!554478 m!804661))

(declare-fun m!804663 () Bool)

(assert (=> b!554478 m!804663))

(declare-fun m!804665 () Bool)

(assert (=> b!554478 m!804665))

(check-sat b_and!54175 (not b!554486) (not start!51436) (not b!554465) b_and!54177 (not b!554470) (not b_next!15593) (not b!554481) (not b!554471) (not b_next!15597) (not b!554468) (not b!554487) (not b!554463) (not b!554482) (not b!554472) (not b!554488) b_and!54171 (not b!554466) (not b!554478) (not b_next!15595) (not b!554467) (not b!554477) b_and!54173 (not b!554474) tp_is_empty!3133 (not b!554464) (not b!554480) (not b!554479) (not b!554469) (not b!554473) (not b!554484) (not b_next!15599))
(check-sat b_and!54175 b_and!54171 b_and!54177 (not b_next!15593) (not b_next!15595) b_and!54173 (not b_next!15597) (not b_next!15599))
(get-model)

(declare-fun d!193223 () Bool)

(assert (=> d!193223 (= (inv!6923 (tag!1317 (h!10919 rules!3103))) (= (mod (str.len (value!34933 (tag!1317 (h!10919 rules!3103)))) 2) 0))))

(assert (=> b!554467 d!193223))

(declare-fun d!193225 () Bool)

(declare-fun res!238000 () Bool)

(declare-fun e!335621 () Bool)

(assert (=> d!193225 (=> (not res!238000) (not e!335621))))

(declare-fun semiInverseModEq!405 (Int Int) Bool)

(assert (=> d!193225 (= res!238000 (semiInverseModEq!405 (toChars!1765 (transformation!1055 (h!10919 rules!3103))) (toValue!1906 (transformation!1055 (h!10919 rules!3103)))))))

(assert (=> d!193225 (= (inv!6927 (transformation!1055 (h!10919 rules!3103))) e!335621)))

(declare-fun b!554503 () Bool)

(declare-fun equivClasses!388 (Int Int) Bool)

(assert (=> b!554503 (= e!335621 (equivClasses!388 (toChars!1765 (transformation!1055 (h!10919 rules!3103))) (toValue!1906 (transformation!1055 (h!10919 rules!3103)))))))

(assert (= (and d!193225 res!238000) b!554503))

(declare-fun m!804673 () Bool)

(assert (=> d!193225 m!804673))

(declare-fun m!804675 () Bool)

(assert (=> b!554503 m!804675))

(assert (=> b!554467 d!193225))

(declare-fun d!193235 () Bool)

(assert (=> d!193235 (= (isEmpty!3981 rules!3103) ((_ is Nil!5518) rules!3103))))

(assert (=> b!554488 d!193235))

(declare-fun b!554538 () Bool)

(declare-fun res!238018 () Bool)

(declare-fun e!335645 () Bool)

(assert (=> b!554538 (=> (not res!238018) (not e!335645))))

(declare-fun lt!234156 () List!5527)

(assert (=> b!554538 (= res!238018 (= (size!4401 lt!234156) (+ (size!4401 lt!234130) (size!4401 suffix!1342))))))

(declare-fun b!554539 () Bool)

(assert (=> b!554539 (= e!335645 (or (not (= suffix!1342 Nil!5517)) (= lt!234156 lt!234130)))))

(declare-fun b!554536 () Bool)

(declare-fun e!335644 () List!5527)

(assert (=> b!554536 (= e!335644 suffix!1342)))

(declare-fun d!193237 () Bool)

(assert (=> d!193237 e!335645))

(declare-fun res!238017 () Bool)

(assert (=> d!193237 (=> (not res!238017) (not e!335645))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!964 (List!5527) (InoxSet C!3700))

(assert (=> d!193237 (= res!238017 (= (content!964 lt!234156) ((_ map or) (content!964 lt!234130) (content!964 suffix!1342))))))

(assert (=> d!193237 (= lt!234156 e!335644)))

(declare-fun c!104063 () Bool)

(assert (=> d!193237 (= c!104063 ((_ is Nil!5517) lt!234130))))

(assert (=> d!193237 (= (++!1543 lt!234130 suffix!1342) lt!234156)))

(declare-fun b!554537 () Bool)

(assert (=> b!554537 (= e!335644 (Cons!5517 (h!10918 lt!234130) (++!1543 (t!75346 lt!234130) suffix!1342)))))

(assert (= (and d!193237 c!104063) b!554536))

(assert (= (and d!193237 (not c!104063)) b!554537))

(assert (= (and d!193237 res!238017) b!554538))

(assert (= (and b!554538 res!238018) b!554539))

(declare-fun m!804693 () Bool)

(assert (=> b!554538 m!804693))

(assert (=> b!554538 m!804627))

(declare-fun m!804695 () Bool)

(assert (=> b!554538 m!804695))

(declare-fun m!804697 () Bool)

(assert (=> d!193237 m!804697))

(declare-fun m!804699 () Bool)

(assert (=> d!193237 m!804699))

(declare-fun m!804701 () Bool)

(assert (=> d!193237 m!804701))

(declare-fun m!804703 () Bool)

(assert (=> b!554537 m!804703))

(assert (=> b!554477 d!193237))

(declare-fun d!193245 () Bool)

(assert (=> d!193245 (= (get!2097 lt!234142) (v!16235 lt!234142))))

(assert (=> b!554466 d!193245))

(declare-fun d!193247 () Bool)

(declare-fun list!2288 (Conc!1772) List!5527)

(assert (=> d!193247 (= (list!2287 (charsOf!684 token!491)) (list!2288 (c!104051 (charsOf!684 token!491))))))

(declare-fun bs!68016 () Bool)

(assert (= bs!68016 d!193247))

(declare-fun m!804705 () Bool)

(assert (=> bs!68016 m!804705))

(assert (=> b!554479 d!193247))

(declare-fun d!193249 () Bool)

(declare-fun lt!234159 () BalanceConc!3552)

(assert (=> d!193249 (= (list!2287 lt!234159) (originalCharacters!1094 token!491))))

(declare-fun dynLambda!3199 (Int TokenValue!1079) BalanceConc!3552)

(assert (=> d!193249 (= lt!234159 (dynLambda!3199 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (value!34934 token!491)))))

(assert (=> d!193249 (= (charsOf!684 token!491) lt!234159)))

(declare-fun b_lambda!21319 () Bool)

(assert (=> (not b_lambda!21319) (not d!193249)))

(declare-fun tb!48387 () Bool)

(declare-fun t!75349 () Bool)

(assert (=> (and b!554491 (= (toChars!1765 (transformation!1055 (h!10919 rules!3103))) (toChars!1765 (transformation!1055 (rule!1785 token!491)))) t!75349) tb!48387))

(declare-fun b!554544 () Bool)

(declare-fun e!335648 () Bool)

(declare-fun tp!175371 () Bool)

(declare-fun inv!6928 (Conc!1772) Bool)

(assert (=> b!554544 (= e!335648 (and (inv!6928 (c!104051 (dynLambda!3199 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (value!34934 token!491)))) tp!175371))))

(declare-fun result!54186 () Bool)

(declare-fun inv!6929 (BalanceConc!3552) Bool)

(assert (=> tb!48387 (= result!54186 (and (inv!6929 (dynLambda!3199 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (value!34934 token!491))) e!335648))))

(assert (= tb!48387 b!554544))

(declare-fun m!804707 () Bool)

(assert (=> b!554544 m!804707))

(declare-fun m!804709 () Bool)

(assert (=> tb!48387 m!804709))

(assert (=> d!193249 t!75349))

(declare-fun b_and!54179 () Bool)

(assert (= b_and!54173 (and (=> t!75349 result!54186) b_and!54179)))

(declare-fun t!75351 () Bool)

(declare-fun tb!48389 () Bool)

(assert (=> (and b!554483 (= (toChars!1765 (transformation!1055 (rule!1785 token!491))) (toChars!1765 (transformation!1055 (rule!1785 token!491)))) t!75351) tb!48389))

(declare-fun result!54190 () Bool)

(assert (= result!54190 result!54186))

(assert (=> d!193249 t!75351))

(declare-fun b_and!54181 () Bool)

(assert (= b_and!54177 (and (=> t!75351 result!54190) b_and!54181)))

(declare-fun m!804711 () Bool)

(assert (=> d!193249 m!804711))

(declare-fun m!804713 () Bool)

(assert (=> d!193249 m!804713))

(assert (=> b!554479 d!193249))

(declare-fun d!193251 () Bool)

(assert (=> d!193251 (= (inv!6923 (tag!1317 (rule!1785 token!491))) (= (mod (str.len (value!34933 (tag!1317 (rule!1785 token!491)))) 2) 0))))

(assert (=> b!554468 d!193251))

(declare-fun d!193253 () Bool)

(declare-fun res!238019 () Bool)

(declare-fun e!335649 () Bool)

(assert (=> d!193253 (=> (not res!238019) (not e!335649))))

(assert (=> d!193253 (= res!238019 (semiInverseModEq!405 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (toValue!1906 (transformation!1055 (rule!1785 token!491)))))))

(assert (=> d!193253 (= (inv!6927 (transformation!1055 (rule!1785 token!491))) e!335649)))

(declare-fun b!554545 () Bool)

(assert (=> b!554545 (= e!335649 (equivClasses!388 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (toValue!1906 (transformation!1055 (rule!1785 token!491)))))))

(assert (= (and d!193253 res!238019) b!554545))

(declare-fun m!804715 () Bool)

(assert (=> d!193253 m!804715))

(declare-fun m!804717 () Bool)

(assert (=> b!554545 m!804717))

(assert (=> b!554468 d!193253))

(declare-fun d!193255 () Bool)

(assert (=> d!193255 (= suffix!1342 lt!234139)))

(declare-fun lt!234172 () Unit!9777)

(declare-fun choose!3959 (List!5527 List!5527 List!5527 List!5527 List!5527) Unit!9777)

(assert (=> d!193255 (= lt!234172 (choose!3959 lt!234130 suffix!1342 lt!234130 lt!234139 lt!234136))))

(assert (=> d!193255 (isPrefix!689 lt!234130 lt!234136)))

(assert (=> d!193255 (= (lemmaSamePrefixThenSameSuffix!412 lt!234130 suffix!1342 lt!234130 lt!234139 lt!234136) lt!234172)))

(declare-fun bs!68017 () Bool)

(assert (= bs!68017 d!193255))

(declare-fun m!804719 () Bool)

(assert (=> bs!68017 m!804719))

(declare-fun m!804721 () Bool)

(assert (=> bs!68017 m!804721))

(assert (=> b!554478 d!193255))

(declare-fun d!193257 () Bool)

(assert (=> d!193257 (= (maxPrefixOneRule!340 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))) input!2705) (Some!1404 (tuple2!6525 (Token!1847 (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (seqFromList!1243 lt!234141)) (rule!1785 (_1!3526 (v!16235 lt!234142))) (size!4401 lt!234141) lt!234141) (_2!3526 (v!16235 lt!234142)))))))

(declare-fun lt!234183 () Unit!9777)

(declare-fun choose!3960 (LexerInterface!941 List!5528 List!5527 List!5527 List!5527 Rule!1910) Unit!9777)

(assert (=> d!193257 (= lt!234183 (choose!3960 thiss!22590 rules!3103 lt!234141 input!2705 (_2!3526 (v!16235 lt!234142)) (rule!1785 (_1!3526 (v!16235 lt!234142)))))))

(assert (=> d!193257 (not (isEmpty!3981 rules!3103))))

(assert (=> d!193257 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!90 thiss!22590 rules!3103 lt!234141 input!2705 (_2!3526 (v!16235 lt!234142)) (rule!1785 (_1!3526 (v!16235 lt!234142)))) lt!234183)))

(declare-fun bs!68019 () Bool)

(assert (= bs!68019 d!193257))

(assert (=> bs!68019 m!804599))

(assert (=> bs!68019 m!804603))

(assert (=> bs!68019 m!804647))

(assert (=> bs!68019 m!804599))

(assert (=> bs!68019 m!804601))

(assert (=> bs!68019 m!804653))

(declare-fun m!804767 () Bool)

(assert (=> bs!68019 m!804767))

(assert (=> b!554478 d!193257))

(declare-fun b!554731 () Bool)

(declare-fun res!238145 () Bool)

(declare-fun e!335744 () Bool)

(assert (=> b!554731 (=> (not res!238145) (not e!335744))))

(declare-fun lt!234250 () Option!1405)

(assert (=> b!554731 (= res!238145 (= (++!1543 (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234250)))) (_2!3526 (get!2097 lt!234250))) lt!234136))))

(declare-fun b!554732 () Bool)

(declare-fun res!238146 () Bool)

(assert (=> b!554732 (=> (not res!238146) (not e!335744))))

(assert (=> b!554732 (= res!238146 (= (rule!1785 (_1!3526 (get!2097 lt!234250))) (rule!1785 token!491)))))

(declare-fun b!554733 () Bool)

(declare-fun res!238142 () Bool)

(assert (=> b!554733 (=> (not res!238142) (not e!335744))))

(assert (=> b!554733 (= res!238142 (= (value!34934 (_1!3526 (get!2097 lt!234250))) (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (get!2097 lt!234250)))) (seqFromList!1243 (originalCharacters!1094 (_1!3526 (get!2097 lt!234250)))))))))

(declare-fun b!554734 () Bool)

(declare-fun res!238141 () Bool)

(assert (=> b!554734 (=> (not res!238141) (not e!335744))))

(assert (=> b!554734 (= res!238141 (< (size!4401 (_2!3526 (get!2097 lt!234250))) (size!4401 lt!234136)))))

(declare-fun b!554735 () Bool)

(declare-fun e!335743 () Bool)

(declare-datatypes ((tuple2!6528 0))(
  ( (tuple2!6529 (_1!3528 List!5527) (_2!3528 List!5527)) )
))
(declare-fun findLongestMatchInner!151 (Regex!1389 List!5527 Int List!5527 List!5527 Int) tuple2!6528)

(assert (=> b!554735 (= e!335743 (matchR!536 (regex!1055 (rule!1785 token!491)) (_1!3528 (findLongestMatchInner!151 (regex!1055 (rule!1785 token!491)) Nil!5517 (size!4401 Nil!5517) lt!234136 lt!234136 (size!4401 lt!234136)))))))

(declare-fun b!554736 () Bool)

(declare-fun e!335741 () Bool)

(assert (=> b!554736 (= e!335741 e!335744)))

(declare-fun res!238147 () Bool)

(assert (=> b!554736 (=> (not res!238147) (not e!335744))))

(assert (=> b!554736 (= res!238147 (matchR!536 (regex!1055 (rule!1785 token!491)) (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234250))))))))

(declare-fun b!554737 () Bool)

(assert (=> b!554737 (= e!335744 (= (size!4400 (_1!3526 (get!2097 lt!234250))) (size!4401 (originalCharacters!1094 (_1!3526 (get!2097 lt!234250))))))))

(declare-fun d!193269 () Bool)

(assert (=> d!193269 e!335741))

(declare-fun res!238143 () Bool)

(assert (=> d!193269 (=> res!238143 e!335741)))

(declare-fun isEmpty!3983 (Option!1405) Bool)

(assert (=> d!193269 (= res!238143 (isEmpty!3983 lt!234250))))

(declare-fun e!335742 () Option!1405)

(assert (=> d!193269 (= lt!234250 e!335742)))

(declare-fun c!104092 () Bool)

(declare-fun lt!234247 () tuple2!6528)

(assert (=> d!193269 (= c!104092 (isEmpty!3980 (_1!3528 lt!234247)))))

(declare-fun findLongestMatch!130 (Regex!1389 List!5527) tuple2!6528)

(assert (=> d!193269 (= lt!234247 (findLongestMatch!130 (regex!1055 (rule!1785 token!491)) lt!234136))))

(assert (=> d!193269 (ruleValid!265 thiss!22590 (rule!1785 token!491))))

(assert (=> d!193269 (= (maxPrefixOneRule!340 thiss!22590 (rule!1785 token!491) lt!234136) lt!234250)))

(declare-fun b!554738 () Bool)

(declare-fun size!4403 (BalanceConc!3552) Int)

(assert (=> b!554738 (= e!335742 (Some!1404 (tuple2!6525 (Token!1847 (apply!1320 (transformation!1055 (rule!1785 token!491)) (seqFromList!1243 (_1!3528 lt!234247))) (rule!1785 token!491) (size!4403 (seqFromList!1243 (_1!3528 lt!234247))) (_1!3528 lt!234247)) (_2!3528 lt!234247))))))

(declare-fun lt!234251 () Unit!9777)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!135 (Regex!1389 List!5527) Unit!9777)

(assert (=> b!554738 (= lt!234251 (longestMatchIsAcceptedByMatchOrIsEmpty!135 (regex!1055 (rule!1785 token!491)) lt!234136))))

(declare-fun res!238144 () Bool)

(assert (=> b!554738 (= res!238144 (isEmpty!3980 (_1!3528 (findLongestMatchInner!151 (regex!1055 (rule!1785 token!491)) Nil!5517 (size!4401 Nil!5517) lt!234136 lt!234136 (size!4401 lt!234136)))))))

(assert (=> b!554738 (=> res!238144 e!335743)))

(assert (=> b!554738 e!335743))

(declare-fun lt!234249 () Unit!9777)

(assert (=> b!554738 (= lt!234249 lt!234251)))

(declare-fun lt!234248 () Unit!9777)

(declare-fun lemmaSemiInverse!170 (TokenValueInjection!1926 BalanceConc!3552) Unit!9777)

(assert (=> b!554738 (= lt!234248 (lemmaSemiInverse!170 (transformation!1055 (rule!1785 token!491)) (seqFromList!1243 (_1!3528 lt!234247))))))

(declare-fun b!554739 () Bool)

(assert (=> b!554739 (= e!335742 None!1404)))

(assert (= (and d!193269 c!104092) b!554739))

(assert (= (and d!193269 (not c!104092)) b!554738))

(assert (= (and b!554738 (not res!238144)) b!554735))

(assert (= (and d!193269 (not res!238143)) b!554736))

(assert (= (and b!554736 res!238147) b!554731))

(assert (= (and b!554731 res!238145) b!554734))

(assert (= (and b!554734 res!238141) b!554732))

(assert (= (and b!554732 res!238146) b!554733))

(assert (= (and b!554733 res!238142) b!554737))

(declare-fun m!804975 () Bool)

(assert (=> b!554735 m!804975))

(declare-fun m!804977 () Bool)

(assert (=> b!554735 m!804977))

(assert (=> b!554735 m!804975))

(assert (=> b!554735 m!804977))

(declare-fun m!804979 () Bool)

(assert (=> b!554735 m!804979))

(declare-fun m!804981 () Bool)

(assert (=> b!554735 m!804981))

(declare-fun m!804983 () Bool)

(assert (=> b!554731 m!804983))

(declare-fun m!804985 () Bool)

(assert (=> b!554731 m!804985))

(assert (=> b!554731 m!804985))

(declare-fun m!804987 () Bool)

(assert (=> b!554731 m!804987))

(assert (=> b!554731 m!804987))

(declare-fun m!804989 () Bool)

(assert (=> b!554731 m!804989))

(assert (=> b!554733 m!804983))

(declare-fun m!804991 () Bool)

(assert (=> b!554733 m!804991))

(assert (=> b!554733 m!804991))

(declare-fun m!804993 () Bool)

(assert (=> b!554733 m!804993))

(declare-fun m!804995 () Bool)

(assert (=> d!193269 m!804995))

(declare-fun m!804997 () Bool)

(assert (=> d!193269 m!804997))

(declare-fun m!804999 () Bool)

(assert (=> d!193269 m!804999))

(assert (=> d!193269 m!804613))

(declare-fun m!805003 () Bool)

(assert (=> b!554738 m!805003))

(declare-fun m!805005 () Bool)

(assert (=> b!554738 m!805005))

(assert (=> b!554738 m!804977))

(assert (=> b!554738 m!804975))

(assert (=> b!554738 m!805003))

(assert (=> b!554738 m!804975))

(assert (=> b!554738 m!804977))

(assert (=> b!554738 m!804979))

(assert (=> b!554738 m!805003))

(declare-fun m!805007 () Bool)

(assert (=> b!554738 m!805007))

(declare-fun m!805009 () Bool)

(assert (=> b!554738 m!805009))

(assert (=> b!554738 m!805003))

(declare-fun m!805011 () Bool)

(assert (=> b!554738 m!805011))

(declare-fun m!805013 () Bool)

(assert (=> b!554738 m!805013))

(assert (=> b!554737 m!804983))

(declare-fun m!805015 () Bool)

(assert (=> b!554737 m!805015))

(assert (=> b!554734 m!804983))

(declare-fun m!805017 () Bool)

(assert (=> b!554734 m!805017))

(assert (=> b!554734 m!804977))

(assert (=> b!554736 m!804983))

(assert (=> b!554736 m!804985))

(assert (=> b!554736 m!804985))

(assert (=> b!554736 m!804987))

(assert (=> b!554736 m!804987))

(declare-fun m!805019 () Bool)

(assert (=> b!554736 m!805019))

(assert (=> b!554732 m!804983))

(assert (=> b!554478 d!193269))

(declare-fun d!193323 () Bool)

(declare-fun lt!234261 () List!5527)

(assert (=> d!193323 (= (++!1543 lt!234130 lt!234261) lt!234136)))

(declare-fun e!335756 () List!5527)

(assert (=> d!193323 (= lt!234261 e!335756)))

(declare-fun c!104097 () Bool)

(assert (=> d!193323 (= c!104097 ((_ is Cons!5517) lt!234130))))

(assert (=> d!193323 (>= (size!4401 lt!234136) (size!4401 lt!234130))))

(assert (=> d!193323 (= (getSuffix!208 lt!234136 lt!234130) lt!234261)))

(declare-fun b!554760 () Bool)

(declare-fun tail!733 (List!5527) List!5527)

(assert (=> b!554760 (= e!335756 (getSuffix!208 (tail!733 lt!234136) (t!75346 lt!234130)))))

(declare-fun b!554761 () Bool)

(assert (=> b!554761 (= e!335756 lt!234136)))

(assert (= (and d!193323 c!104097) b!554760))

(assert (= (and d!193323 (not c!104097)) b!554761))

(declare-fun m!805043 () Bool)

(assert (=> d!193323 m!805043))

(assert (=> d!193323 m!804977))

(assert (=> d!193323 m!804627))

(declare-fun m!805045 () Bool)

(assert (=> b!554760 m!805045))

(assert (=> b!554760 m!805045))

(declare-fun m!805047 () Bool)

(assert (=> b!554760 m!805047))

(assert (=> b!554478 d!193323))

(declare-fun d!193335 () Bool)

(assert (=> d!193335 (= (maxPrefixOneRule!340 thiss!22590 (rule!1785 token!491) lt!234136) (Some!1404 (tuple2!6525 (Token!1847 (apply!1320 (transformation!1055 (rule!1785 token!491)) (seqFromList!1243 lt!234130)) (rule!1785 token!491) (size!4401 lt!234130) lt!234130) suffix!1342)))))

(declare-fun lt!234262 () Unit!9777)

(assert (=> d!193335 (= lt!234262 (choose!3960 thiss!22590 rules!3103 lt!234130 lt!234136 suffix!1342 (rule!1785 token!491)))))

(assert (=> d!193335 (not (isEmpty!3981 rules!3103))))

(assert (=> d!193335 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!90 thiss!22590 rules!3103 lt!234130 lt!234136 suffix!1342 (rule!1785 token!491)) lt!234262)))

(declare-fun bs!68030 () Bool)

(assert (= bs!68030 d!193335))

(assert (=> bs!68030 m!804657))

(assert (=> bs!68030 m!804627))

(assert (=> bs!68030 m!804647))

(assert (=> bs!68030 m!804657))

(assert (=> bs!68030 m!804659))

(assert (=> bs!68030 m!804651))

(declare-fun m!805049 () Bool)

(assert (=> bs!68030 m!805049))

(assert (=> b!554478 d!193335))

(declare-fun d!193337 () Bool)

(declare-fun fromListB!541 (List!5527) BalanceConc!3552)

(assert (=> d!193337 (= (seqFromList!1243 lt!234130) (fromListB!541 lt!234130))))

(declare-fun bs!68032 () Bool)

(assert (= bs!68032 d!193337))

(declare-fun m!805051 () Bool)

(assert (=> bs!68032 m!805051))

(assert (=> b!554478 d!193337))

(declare-fun d!193343 () Bool)

(declare-fun dynLambda!3201 (Int BalanceConc!3552) TokenValue!1079)

(assert (=> d!193343 (= (apply!1320 (transformation!1055 (rule!1785 token!491)) (seqFromList!1243 lt!234130)) (dynLambda!3201 (toValue!1906 (transformation!1055 (rule!1785 token!491))) (seqFromList!1243 lt!234130)))))

(declare-fun b_lambda!21329 () Bool)

(assert (=> (not b_lambda!21329) (not d!193343)))

(declare-fun tb!48407 () Bool)

(declare-fun t!75369 () Bool)

(assert (=> (and b!554491 (= (toValue!1906 (transformation!1055 (h!10919 rules!3103))) (toValue!1906 (transformation!1055 (rule!1785 token!491)))) t!75369) tb!48407))

(declare-fun result!54212 () Bool)

(assert (=> tb!48407 (= result!54212 (inv!21 (dynLambda!3201 (toValue!1906 (transformation!1055 (rule!1785 token!491))) (seqFromList!1243 lt!234130))))))

(declare-fun m!805063 () Bool)

(assert (=> tb!48407 m!805063))

(assert (=> d!193343 t!75369))

(declare-fun b_and!54199 () Bool)

(assert (= b_and!54171 (and (=> t!75369 result!54212) b_and!54199)))

(declare-fun t!75371 () Bool)

(declare-fun tb!48409 () Bool)

(assert (=> (and b!554483 (= (toValue!1906 (transformation!1055 (rule!1785 token!491))) (toValue!1906 (transformation!1055 (rule!1785 token!491)))) t!75371) tb!48409))

(declare-fun result!54216 () Bool)

(assert (= result!54216 result!54212))

(assert (=> d!193343 t!75371))

(declare-fun b_and!54201 () Bool)

(assert (= b_and!54175 (and (=> t!75371 result!54216) b_and!54201)))

(assert (=> d!193343 m!804657))

(declare-fun m!805067 () Bool)

(assert (=> d!193343 m!805067))

(assert (=> b!554478 d!193343))

(declare-fun b!554772 () Bool)

(declare-fun res!238172 () Bool)

(declare-fun e!335770 () Bool)

(assert (=> b!554772 (=> (not res!238172) (not e!335770))))

(declare-fun lt!234268 () Option!1405)

(assert (=> b!554772 (= res!238172 (= (++!1543 (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234268)))) (_2!3526 (get!2097 lt!234268))) input!2705))))

(declare-fun b!554773 () Bool)

(declare-fun res!238173 () Bool)

(assert (=> b!554773 (=> (not res!238173) (not e!335770))))

(assert (=> b!554773 (= res!238173 (= (rule!1785 (_1!3526 (get!2097 lt!234268))) (rule!1785 (_1!3526 (v!16235 lt!234142)))))))

(declare-fun b!554774 () Bool)

(declare-fun res!238169 () Bool)

(assert (=> b!554774 (=> (not res!238169) (not e!335770))))

(assert (=> b!554774 (= res!238169 (= (value!34934 (_1!3526 (get!2097 lt!234268))) (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (get!2097 lt!234268)))) (seqFromList!1243 (originalCharacters!1094 (_1!3526 (get!2097 lt!234268)))))))))

(declare-fun b!554775 () Bool)

(declare-fun res!238168 () Bool)

(assert (=> b!554775 (=> (not res!238168) (not e!335770))))

(assert (=> b!554775 (= res!238168 (< (size!4401 (_2!3526 (get!2097 lt!234268))) (size!4401 input!2705)))))

(declare-fun b!554776 () Bool)

(declare-fun e!335769 () Bool)

(assert (=> b!554776 (= e!335769 (matchR!536 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (_1!3528 (findLongestMatchInner!151 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) Nil!5517 (size!4401 Nil!5517) input!2705 input!2705 (size!4401 input!2705)))))))

(declare-fun b!554777 () Bool)

(declare-fun e!335767 () Bool)

(assert (=> b!554777 (= e!335767 e!335770)))

(declare-fun res!238174 () Bool)

(assert (=> b!554777 (=> (not res!238174) (not e!335770))))

(assert (=> b!554777 (= res!238174 (matchR!536 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234268))))))))

(declare-fun b!554778 () Bool)

(assert (=> b!554778 (= e!335770 (= (size!4400 (_1!3526 (get!2097 lt!234268))) (size!4401 (originalCharacters!1094 (_1!3526 (get!2097 lt!234268))))))))

(declare-fun d!193353 () Bool)

(assert (=> d!193353 e!335767))

(declare-fun res!238170 () Bool)

(assert (=> d!193353 (=> res!238170 e!335767)))

(assert (=> d!193353 (= res!238170 (isEmpty!3983 lt!234268))))

(declare-fun e!335768 () Option!1405)

(assert (=> d!193353 (= lt!234268 e!335768)))

(declare-fun c!104098 () Bool)

(declare-fun lt!234265 () tuple2!6528)

(assert (=> d!193353 (= c!104098 (isEmpty!3980 (_1!3528 lt!234265)))))

(assert (=> d!193353 (= lt!234265 (findLongestMatch!130 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) input!2705))))

(assert (=> d!193353 (ruleValid!265 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))))))

(assert (=> d!193353 (= (maxPrefixOneRule!340 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))) input!2705) lt!234268)))

(declare-fun b!554779 () Bool)

(assert (=> b!554779 (= e!335768 (Some!1404 (tuple2!6525 (Token!1847 (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (seqFromList!1243 (_1!3528 lt!234265))) (rule!1785 (_1!3526 (v!16235 lt!234142))) (size!4403 (seqFromList!1243 (_1!3528 lt!234265))) (_1!3528 lt!234265)) (_2!3528 lt!234265))))))

(declare-fun lt!234269 () Unit!9777)

(assert (=> b!554779 (= lt!234269 (longestMatchIsAcceptedByMatchOrIsEmpty!135 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) input!2705))))

(declare-fun res!238171 () Bool)

(assert (=> b!554779 (= res!238171 (isEmpty!3980 (_1!3528 (findLongestMatchInner!151 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) Nil!5517 (size!4401 Nil!5517) input!2705 input!2705 (size!4401 input!2705)))))))

(assert (=> b!554779 (=> res!238171 e!335769)))

(assert (=> b!554779 e!335769))

(declare-fun lt!234267 () Unit!9777)

(assert (=> b!554779 (= lt!234267 lt!234269)))

(declare-fun lt!234266 () Unit!9777)

(assert (=> b!554779 (= lt!234266 (lemmaSemiInverse!170 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (seqFromList!1243 (_1!3528 lt!234265))))))

(declare-fun b!554780 () Bool)

(assert (=> b!554780 (= e!335768 None!1404)))

(assert (= (and d!193353 c!104098) b!554780))

(assert (= (and d!193353 (not c!104098)) b!554779))

(assert (= (and b!554779 (not res!238171)) b!554776))

(assert (= (and d!193353 (not res!238170)) b!554777))

(assert (= (and b!554777 res!238174) b!554772))

(assert (= (and b!554772 res!238172) b!554775))

(assert (= (and b!554775 res!238168) b!554773))

(assert (= (and b!554773 res!238173) b!554774))

(assert (= (and b!554774 res!238169) b!554778))

(assert (=> b!554776 m!804975))

(declare-fun m!805077 () Bool)

(assert (=> b!554776 m!805077))

(assert (=> b!554776 m!804975))

(assert (=> b!554776 m!805077))

(declare-fun m!805079 () Bool)

(assert (=> b!554776 m!805079))

(declare-fun m!805081 () Bool)

(assert (=> b!554776 m!805081))

(declare-fun m!805083 () Bool)

(assert (=> b!554772 m!805083))

(declare-fun m!805085 () Bool)

(assert (=> b!554772 m!805085))

(assert (=> b!554772 m!805085))

(declare-fun m!805087 () Bool)

(assert (=> b!554772 m!805087))

(assert (=> b!554772 m!805087))

(declare-fun m!805091 () Bool)

(assert (=> b!554772 m!805091))

(assert (=> b!554774 m!805083))

(declare-fun m!805093 () Bool)

(assert (=> b!554774 m!805093))

(assert (=> b!554774 m!805093))

(declare-fun m!805095 () Bool)

(assert (=> b!554774 m!805095))

(declare-fun m!805099 () Bool)

(assert (=> d!193353 m!805099))

(declare-fun m!805101 () Bool)

(assert (=> d!193353 m!805101))

(declare-fun m!805103 () Bool)

(assert (=> d!193353 m!805103))

(assert (=> d!193353 m!804595))

(declare-fun m!805107 () Bool)

(assert (=> b!554779 m!805107))

(declare-fun m!805109 () Bool)

(assert (=> b!554779 m!805109))

(assert (=> b!554779 m!805077))

(assert (=> b!554779 m!804975))

(assert (=> b!554779 m!805107))

(assert (=> b!554779 m!804975))

(assert (=> b!554779 m!805077))

(assert (=> b!554779 m!805079))

(assert (=> b!554779 m!805107))

(declare-fun m!805111 () Bool)

(assert (=> b!554779 m!805111))

(declare-fun m!805113 () Bool)

(assert (=> b!554779 m!805113))

(assert (=> b!554779 m!805107))

(declare-fun m!805115 () Bool)

(assert (=> b!554779 m!805115))

(declare-fun m!805117 () Bool)

(assert (=> b!554779 m!805117))

(assert (=> b!554778 m!805083))

(declare-fun m!805125 () Bool)

(assert (=> b!554778 m!805125))

(assert (=> b!554775 m!805083))

(declare-fun m!805131 () Bool)

(assert (=> b!554775 m!805131))

(assert (=> b!554775 m!805077))

(assert (=> b!554777 m!805083))

(assert (=> b!554777 m!805085))

(assert (=> b!554777 m!805085))

(assert (=> b!554777 m!805087))

(assert (=> b!554777 m!805087))

(declare-fun m!805135 () Bool)

(assert (=> b!554777 m!805135))

(assert (=> b!554773 m!805083))

(assert (=> b!554478 d!193353))

(declare-fun d!193367 () Bool)

(declare-fun lt!234281 () Bool)

(declare-fun content!965 (List!5528) (InoxSet Rule!1910))

(assert (=> d!193367 (= lt!234281 (select (content!965 rules!3103) (rule!1785 token!491)))))

(declare-fun e!335792 () Bool)

(assert (=> d!193367 (= lt!234281 e!335792)))

(declare-fun res!238190 () Bool)

(assert (=> d!193367 (=> (not res!238190) (not e!335792))))

(assert (=> d!193367 (= res!238190 ((_ is Cons!5518) rules!3103))))

(assert (=> d!193367 (= (contains!1287 rules!3103 (rule!1785 token!491)) lt!234281)))

(declare-fun b!554805 () Bool)

(declare-fun e!335791 () Bool)

(assert (=> b!554805 (= e!335792 e!335791)))

(declare-fun res!238189 () Bool)

(assert (=> b!554805 (=> res!238189 e!335791)))

(assert (=> b!554805 (= res!238189 (= (h!10919 rules!3103) (rule!1785 token!491)))))

(declare-fun b!554806 () Bool)

(assert (=> b!554806 (= e!335791 (contains!1287 (t!75347 rules!3103) (rule!1785 token!491)))))

(assert (= (and d!193367 res!238190) b!554805))

(assert (= (and b!554805 (not res!238189)) b!554806))

(declare-fun m!805147 () Bool)

(assert (=> d!193367 m!805147))

(declare-fun m!805149 () Bool)

(assert (=> d!193367 m!805149))

(declare-fun m!805151 () Bool)

(assert (=> b!554806 m!805151))

(assert (=> b!554480 d!193367))

(declare-fun d!193375 () Bool)

(assert (=> d!193375 (= (isDefined!1217 lt!234142) (not (isEmpty!3983 lt!234142)))))

(declare-fun bs!68040 () Bool)

(assert (= bs!68040 d!193375))

(declare-fun m!805153 () Bool)

(assert (=> bs!68040 m!805153))

(assert (=> b!554469 d!193375))

(declare-fun d!193377 () Bool)

(declare-fun res!238195 () Bool)

(declare-fun e!335808 () Bool)

(assert (=> d!193377 (=> (not res!238195) (not e!335808))))

(assert (=> d!193377 (= res!238195 (not (isEmpty!3980 (originalCharacters!1094 token!491))))))

(assert (=> d!193377 (= (inv!6926 token!491) e!335808)))

(declare-fun b!554839 () Bool)

(declare-fun res!238196 () Bool)

(assert (=> b!554839 (=> (not res!238196) (not e!335808))))

(assert (=> b!554839 (= res!238196 (= (originalCharacters!1094 token!491) (list!2287 (dynLambda!3199 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (value!34934 token!491)))))))

(declare-fun b!554840 () Bool)

(assert (=> b!554840 (= e!335808 (= (size!4400 token!491) (size!4401 (originalCharacters!1094 token!491))))))

(assert (= (and d!193377 res!238195) b!554839))

(assert (= (and b!554839 res!238196) b!554840))

(declare-fun b_lambda!21339 () Bool)

(assert (=> (not b_lambda!21339) (not b!554839)))

(assert (=> b!554839 t!75349))

(declare-fun b_and!54211 () Bool)

(assert (= b_and!54179 (and (=> t!75349 result!54186) b_and!54211)))

(assert (=> b!554839 t!75351))

(declare-fun b_and!54213 () Bool)

(assert (= b_and!54181 (and (=> t!75351 result!54190) b_and!54213)))

(declare-fun m!805159 () Bool)

(assert (=> d!193377 m!805159))

(assert (=> b!554839 m!804713))

(assert (=> b!554839 m!804713))

(declare-fun m!805161 () Bool)

(assert (=> b!554839 m!805161))

(assert (=> b!554840 m!804649))

(assert (=> start!51436 d!193377))

(declare-fun d!193379 () Bool)

(assert (=> d!193379 (= (isDefined!1217 lt!234122) (not (isEmpty!3983 lt!234122)))))

(declare-fun bs!68041 () Bool)

(assert (= bs!68041 d!193379))

(declare-fun m!805163 () Bool)

(assert (=> bs!68041 m!805163))

(assert (=> b!554481 d!193379))

(declare-fun b!554859 () Bool)

(declare-fun e!335815 () Option!1405)

(declare-fun lt!234293 () Option!1405)

(declare-fun lt!234294 () Option!1405)

(assert (=> b!554859 (= e!335815 (ite (and ((_ is None!1404) lt!234293) ((_ is None!1404) lt!234294)) None!1404 (ite ((_ is None!1404) lt!234294) lt!234293 (ite ((_ is None!1404) lt!234293) lt!234294 (ite (>= (size!4400 (_1!3526 (v!16235 lt!234293))) (size!4400 (_1!3526 (v!16235 lt!234294)))) lt!234293 lt!234294)))))))

(declare-fun call!38471 () Option!1405)

(assert (=> b!554859 (= lt!234293 call!38471)))

(assert (=> b!554859 (= lt!234294 (maxPrefix!639 thiss!22590 (t!75347 rules!3103) lt!234136))))

(declare-fun b!554860 () Bool)

(assert (=> b!554860 (= e!335815 call!38471)))

(declare-fun b!554862 () Bool)

(declare-fun res!238213 () Bool)

(declare-fun e!335816 () Bool)

(assert (=> b!554862 (=> (not res!238213) (not e!335816))))

(declare-fun lt!234296 () Option!1405)

(assert (=> b!554862 (= res!238213 (= (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234296)))) (originalCharacters!1094 (_1!3526 (get!2097 lt!234296)))))))

(declare-fun b!554863 () Bool)

(declare-fun res!238216 () Bool)

(assert (=> b!554863 (=> (not res!238216) (not e!335816))))

(assert (=> b!554863 (= res!238216 (matchR!536 (regex!1055 (rule!1785 (_1!3526 (get!2097 lt!234296)))) (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234296))))))))

(declare-fun bm!38466 () Bool)

(assert (=> bm!38466 (= call!38471 (maxPrefixOneRule!340 thiss!22590 (h!10919 rules!3103) lt!234136))))

(declare-fun b!554864 () Bool)

(declare-fun e!335817 () Bool)

(assert (=> b!554864 (= e!335817 e!335816)))

(declare-fun res!238217 () Bool)

(assert (=> b!554864 (=> (not res!238217) (not e!335816))))

(assert (=> b!554864 (= res!238217 (isDefined!1217 lt!234296))))

(declare-fun b!554865 () Bool)

(declare-fun res!238215 () Bool)

(assert (=> b!554865 (=> (not res!238215) (not e!335816))))

(assert (=> b!554865 (= res!238215 (= (value!34934 (_1!3526 (get!2097 lt!234296))) (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (get!2097 lt!234296)))) (seqFromList!1243 (originalCharacters!1094 (_1!3526 (get!2097 lt!234296)))))))))

(declare-fun b!554861 () Bool)

(declare-fun res!238212 () Bool)

(assert (=> b!554861 (=> (not res!238212) (not e!335816))))

(assert (=> b!554861 (= res!238212 (< (size!4401 (_2!3526 (get!2097 lt!234296))) (size!4401 lt!234136)))))

(declare-fun d!193381 () Bool)

(assert (=> d!193381 e!335817))

(declare-fun res!238214 () Bool)

(assert (=> d!193381 (=> res!238214 e!335817)))

(assert (=> d!193381 (= res!238214 (isEmpty!3983 lt!234296))))

(assert (=> d!193381 (= lt!234296 e!335815)))

(declare-fun c!104102 () Bool)

(assert (=> d!193381 (= c!104102 (and ((_ is Cons!5518) rules!3103) ((_ is Nil!5518) (t!75347 rules!3103))))))

(declare-fun lt!234292 () Unit!9777)

(declare-fun lt!234295 () Unit!9777)

(assert (=> d!193381 (= lt!234292 lt!234295)))

(assert (=> d!193381 (isPrefix!689 lt!234136 lt!234136)))

(assert (=> d!193381 (= lt!234295 (lemmaIsPrefixRefl!427 lt!234136 lt!234136))))

(declare-fun rulesValidInductive!374 (LexerInterface!941 List!5528) Bool)

(assert (=> d!193381 (rulesValidInductive!374 thiss!22590 rules!3103)))

(assert (=> d!193381 (= (maxPrefix!639 thiss!22590 rules!3103 lt!234136) lt!234296)))

(declare-fun b!554866 () Bool)

(assert (=> b!554866 (= e!335816 (contains!1287 rules!3103 (rule!1785 (_1!3526 (get!2097 lt!234296)))))))

(declare-fun b!554867 () Bool)

(declare-fun res!238211 () Bool)

(assert (=> b!554867 (=> (not res!238211) (not e!335816))))

(assert (=> b!554867 (= res!238211 (= (++!1543 (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234296)))) (_2!3526 (get!2097 lt!234296))) lt!234136))))

(assert (= (and d!193381 c!104102) b!554860))

(assert (= (and d!193381 (not c!104102)) b!554859))

(assert (= (or b!554860 b!554859) bm!38466))

(assert (= (and d!193381 (not res!238214)) b!554864))

(assert (= (and b!554864 res!238217) b!554862))

(assert (= (and b!554862 res!238213) b!554861))

(assert (= (and b!554861 res!238212) b!554867))

(assert (= (and b!554867 res!238211) b!554865))

(assert (= (and b!554865 res!238215) b!554863))

(assert (= (and b!554863 res!238216) b!554866))

(declare-fun m!805165 () Bool)

(assert (=> d!193381 m!805165))

(declare-fun m!805167 () Bool)

(assert (=> d!193381 m!805167))

(declare-fun m!805169 () Bool)

(assert (=> d!193381 m!805169))

(declare-fun m!805171 () Bool)

(assert (=> d!193381 m!805171))

(declare-fun m!805173 () Bool)

(assert (=> b!554862 m!805173))

(declare-fun m!805175 () Bool)

(assert (=> b!554862 m!805175))

(assert (=> b!554862 m!805175))

(declare-fun m!805177 () Bool)

(assert (=> b!554862 m!805177))

(assert (=> b!554865 m!805173))

(declare-fun m!805179 () Bool)

(assert (=> b!554865 m!805179))

(assert (=> b!554865 m!805179))

(declare-fun m!805181 () Bool)

(assert (=> b!554865 m!805181))

(assert (=> b!554861 m!805173))

(declare-fun m!805183 () Bool)

(assert (=> b!554861 m!805183))

(assert (=> b!554861 m!804977))

(declare-fun m!805185 () Bool)

(assert (=> bm!38466 m!805185))

(assert (=> b!554863 m!805173))

(assert (=> b!554863 m!805175))

(assert (=> b!554863 m!805175))

(assert (=> b!554863 m!805177))

(assert (=> b!554863 m!805177))

(declare-fun m!805187 () Bool)

(assert (=> b!554863 m!805187))

(assert (=> b!554867 m!805173))

(assert (=> b!554867 m!805175))

(assert (=> b!554867 m!805175))

(assert (=> b!554867 m!805177))

(assert (=> b!554867 m!805177))

(declare-fun m!805189 () Bool)

(assert (=> b!554867 m!805189))

(declare-fun m!805191 () Bool)

(assert (=> b!554859 m!805191))

(declare-fun m!805193 () Bool)

(assert (=> b!554864 m!805193))

(assert (=> b!554866 m!805173))

(declare-fun m!805195 () Bool)

(assert (=> b!554866 m!805195))

(assert (=> b!554481 d!193381))

(declare-fun b!554870 () Bool)

(declare-fun res!238219 () Bool)

(declare-fun e!335819 () Bool)

(assert (=> b!554870 (=> (not res!238219) (not e!335819))))

(declare-fun lt!234297 () List!5527)

(assert (=> b!554870 (= res!238219 (= (size!4401 lt!234297) (+ (size!4401 input!2705) (size!4401 suffix!1342))))))

(declare-fun b!554871 () Bool)

(assert (=> b!554871 (= e!335819 (or (not (= suffix!1342 Nil!5517)) (= lt!234297 input!2705)))))

(declare-fun b!554868 () Bool)

(declare-fun e!335818 () List!5527)

(assert (=> b!554868 (= e!335818 suffix!1342)))

(declare-fun d!193383 () Bool)

(assert (=> d!193383 e!335819))

(declare-fun res!238218 () Bool)

(assert (=> d!193383 (=> (not res!238218) (not e!335819))))

(assert (=> d!193383 (= res!238218 (= (content!964 lt!234297) ((_ map or) (content!964 input!2705) (content!964 suffix!1342))))))

(assert (=> d!193383 (= lt!234297 e!335818)))

(declare-fun c!104103 () Bool)

(assert (=> d!193383 (= c!104103 ((_ is Nil!5517) input!2705))))

(assert (=> d!193383 (= (++!1543 input!2705 suffix!1342) lt!234297)))

(declare-fun b!554869 () Bool)

(assert (=> b!554869 (= e!335818 (Cons!5517 (h!10918 input!2705) (++!1543 (t!75346 input!2705) suffix!1342)))))

(assert (= (and d!193383 c!104103) b!554868))

(assert (= (and d!193383 (not c!104103)) b!554869))

(assert (= (and d!193383 res!238218) b!554870))

(assert (= (and b!554870 res!238219) b!554871))

(declare-fun m!805197 () Bool)

(assert (=> b!554870 m!805197))

(assert (=> b!554870 m!805077))

(assert (=> b!554870 m!804695))

(declare-fun m!805199 () Bool)

(assert (=> d!193383 m!805199))

(declare-fun m!805201 () Bool)

(assert (=> d!193383 m!805201))

(assert (=> d!193383 m!804701))

(declare-fun m!805203 () Bool)

(assert (=> b!554869 m!805203))

(assert (=> b!554481 d!193383))

(declare-fun d!193385 () Bool)

(assert (=> d!193385 (= (get!2097 lt!234122) (v!16235 lt!234122))))

(assert (=> b!554470 d!193385))

(declare-fun d!193387 () Bool)

(declare-fun c!104109 () Bool)

(assert (=> d!193387 (= c!104109 ((_ is IntegerValue!3237) (value!34934 token!491)))))

(declare-fun e!335827 () Bool)

(assert (=> d!193387 (= (inv!21 (value!34934 token!491)) e!335827)))

(declare-fun b!554882 () Bool)

(declare-fun e!335826 () Bool)

(assert (=> b!554882 (= e!335827 e!335826)))

(declare-fun c!104108 () Bool)

(assert (=> b!554882 (= c!104108 ((_ is IntegerValue!3238) (value!34934 token!491)))))

(declare-fun b!554883 () Bool)

(declare-fun res!238222 () Bool)

(declare-fun e!335828 () Bool)

(assert (=> b!554883 (=> res!238222 e!335828)))

(assert (=> b!554883 (= res!238222 (not ((_ is IntegerValue!3239) (value!34934 token!491))))))

(assert (=> b!554883 (= e!335826 e!335828)))

(declare-fun b!554884 () Bool)

(declare-fun inv!17 (TokenValue!1079) Bool)

(assert (=> b!554884 (= e!335826 (inv!17 (value!34934 token!491)))))

(declare-fun b!554885 () Bool)

(declare-fun inv!15 (TokenValue!1079) Bool)

(assert (=> b!554885 (= e!335828 (inv!15 (value!34934 token!491)))))

(declare-fun b!554886 () Bool)

(declare-fun inv!16 (TokenValue!1079) Bool)

(assert (=> b!554886 (= e!335827 (inv!16 (value!34934 token!491)))))

(assert (= (and d!193387 c!104109) b!554886))

(assert (= (and d!193387 (not c!104109)) b!554882))

(assert (= (and b!554882 c!104108) b!554884))

(assert (= (and b!554882 (not c!104108)) b!554883))

(assert (= (and b!554883 (not res!238222)) b!554885))

(declare-fun m!805205 () Bool)

(assert (=> b!554884 m!805205))

(declare-fun m!805207 () Bool)

(assert (=> b!554885 m!805207))

(declare-fun m!805209 () Bool)

(assert (=> b!554886 m!805209))

(assert (=> b!554472 d!193387))

(declare-fun d!193389 () Bool)

(assert (=> d!193389 (= (isEmpty!3980 input!2705) ((_ is Nil!5517) input!2705))))

(assert (=> b!554482 d!193389))

(declare-fun b!554887 () Bool)

(declare-fun e!335829 () Option!1405)

(declare-fun lt!234299 () Option!1405)

(declare-fun lt!234300 () Option!1405)

(assert (=> b!554887 (= e!335829 (ite (and ((_ is None!1404) lt!234299) ((_ is None!1404) lt!234300)) None!1404 (ite ((_ is None!1404) lt!234300) lt!234299 (ite ((_ is None!1404) lt!234299) lt!234300 (ite (>= (size!4400 (_1!3526 (v!16235 lt!234299))) (size!4400 (_1!3526 (v!16235 lt!234300)))) lt!234299 lt!234300)))))))

(declare-fun call!38472 () Option!1405)

(assert (=> b!554887 (= lt!234299 call!38472)))

(assert (=> b!554887 (= lt!234300 (maxPrefix!639 thiss!22590 (t!75347 rules!3103) input!2705))))

(declare-fun b!554888 () Bool)

(assert (=> b!554888 (= e!335829 call!38472)))

(declare-fun b!554890 () Bool)

(declare-fun res!238225 () Bool)

(declare-fun e!335830 () Bool)

(assert (=> b!554890 (=> (not res!238225) (not e!335830))))

(declare-fun lt!234302 () Option!1405)

(assert (=> b!554890 (= res!238225 (= (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234302)))) (originalCharacters!1094 (_1!3526 (get!2097 lt!234302)))))))

(declare-fun b!554891 () Bool)

(declare-fun res!238228 () Bool)

(assert (=> b!554891 (=> (not res!238228) (not e!335830))))

(assert (=> b!554891 (= res!238228 (matchR!536 (regex!1055 (rule!1785 (_1!3526 (get!2097 lt!234302)))) (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234302))))))))

(declare-fun bm!38467 () Bool)

(assert (=> bm!38467 (= call!38472 (maxPrefixOneRule!340 thiss!22590 (h!10919 rules!3103) input!2705))))

(declare-fun b!554892 () Bool)

(declare-fun e!335831 () Bool)

(assert (=> b!554892 (= e!335831 e!335830)))

(declare-fun res!238229 () Bool)

(assert (=> b!554892 (=> (not res!238229) (not e!335830))))

(assert (=> b!554892 (= res!238229 (isDefined!1217 lt!234302))))

(declare-fun b!554893 () Bool)

(declare-fun res!238227 () Bool)

(assert (=> b!554893 (=> (not res!238227) (not e!335830))))

(assert (=> b!554893 (= res!238227 (= (value!34934 (_1!3526 (get!2097 lt!234302))) (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (get!2097 lt!234302)))) (seqFromList!1243 (originalCharacters!1094 (_1!3526 (get!2097 lt!234302)))))))))

(declare-fun b!554889 () Bool)

(declare-fun res!238224 () Bool)

(assert (=> b!554889 (=> (not res!238224) (not e!335830))))

(assert (=> b!554889 (= res!238224 (< (size!4401 (_2!3526 (get!2097 lt!234302))) (size!4401 input!2705)))))

(declare-fun d!193391 () Bool)

(assert (=> d!193391 e!335831))

(declare-fun res!238226 () Bool)

(assert (=> d!193391 (=> res!238226 e!335831)))

(assert (=> d!193391 (= res!238226 (isEmpty!3983 lt!234302))))

(assert (=> d!193391 (= lt!234302 e!335829)))

(declare-fun c!104110 () Bool)

(assert (=> d!193391 (= c!104110 (and ((_ is Cons!5518) rules!3103) ((_ is Nil!5518) (t!75347 rules!3103))))))

(declare-fun lt!234298 () Unit!9777)

(declare-fun lt!234301 () Unit!9777)

(assert (=> d!193391 (= lt!234298 lt!234301)))

(assert (=> d!193391 (isPrefix!689 input!2705 input!2705)))

(assert (=> d!193391 (= lt!234301 (lemmaIsPrefixRefl!427 input!2705 input!2705))))

(assert (=> d!193391 (rulesValidInductive!374 thiss!22590 rules!3103)))

(assert (=> d!193391 (= (maxPrefix!639 thiss!22590 rules!3103 input!2705) lt!234302)))

(declare-fun b!554894 () Bool)

(assert (=> b!554894 (= e!335830 (contains!1287 rules!3103 (rule!1785 (_1!3526 (get!2097 lt!234302)))))))

(declare-fun b!554895 () Bool)

(declare-fun res!238223 () Bool)

(assert (=> b!554895 (=> (not res!238223) (not e!335830))))

(assert (=> b!554895 (= res!238223 (= (++!1543 (list!2287 (charsOf!684 (_1!3526 (get!2097 lt!234302)))) (_2!3526 (get!2097 lt!234302))) input!2705))))

(assert (= (and d!193391 c!104110) b!554888))

(assert (= (and d!193391 (not c!104110)) b!554887))

(assert (= (or b!554888 b!554887) bm!38467))

(assert (= (and d!193391 (not res!238226)) b!554892))

(assert (= (and b!554892 res!238229) b!554890))

(assert (= (and b!554890 res!238225) b!554889))

(assert (= (and b!554889 res!238224) b!554895))

(assert (= (and b!554895 res!238223) b!554893))

(assert (= (and b!554893 res!238227) b!554891))

(assert (= (and b!554891 res!238228) b!554894))

(declare-fun m!805211 () Bool)

(assert (=> d!193391 m!805211))

(assert (=> d!193391 m!804607))

(assert (=> d!193391 m!804605))

(assert (=> d!193391 m!805171))

(declare-fun m!805213 () Bool)

(assert (=> b!554890 m!805213))

(declare-fun m!805215 () Bool)

(assert (=> b!554890 m!805215))

(assert (=> b!554890 m!805215))

(declare-fun m!805217 () Bool)

(assert (=> b!554890 m!805217))

(assert (=> b!554893 m!805213))

(declare-fun m!805219 () Bool)

(assert (=> b!554893 m!805219))

(assert (=> b!554893 m!805219))

(declare-fun m!805221 () Bool)

(assert (=> b!554893 m!805221))

(assert (=> b!554889 m!805213))

(declare-fun m!805223 () Bool)

(assert (=> b!554889 m!805223))

(assert (=> b!554889 m!805077))

(declare-fun m!805225 () Bool)

(assert (=> bm!38467 m!805225))

(assert (=> b!554891 m!805213))

(assert (=> b!554891 m!805215))

(assert (=> b!554891 m!805215))

(assert (=> b!554891 m!805217))

(assert (=> b!554891 m!805217))

(declare-fun m!805227 () Bool)

(assert (=> b!554891 m!805227))

(assert (=> b!554895 m!805213))

(assert (=> b!554895 m!805215))

(assert (=> b!554895 m!805215))

(assert (=> b!554895 m!805217))

(assert (=> b!554895 m!805217))

(declare-fun m!805229 () Bool)

(assert (=> b!554895 m!805229))

(declare-fun m!805231 () Bool)

(assert (=> b!554887 m!805231))

(declare-fun m!805233 () Bool)

(assert (=> b!554892 m!805233))

(assert (=> b!554894 m!805213))

(declare-fun m!805235 () Bool)

(assert (=> b!554894 m!805235))

(assert (=> b!554463 d!193391))

(declare-fun d!193393 () Bool)

(declare-fun lt!234303 () BalanceConc!3552)

(assert (=> d!193393 (= (list!2287 lt!234303) (originalCharacters!1094 (_1!3526 (v!16235 lt!234142))))))

(assert (=> d!193393 (= lt!234303 (dynLambda!3199 (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) (value!34934 (_1!3526 (v!16235 lt!234142)))))))

(assert (=> d!193393 (= (charsOf!684 (_1!3526 (v!16235 lt!234142))) lt!234303)))

(declare-fun b_lambda!21341 () Bool)

(assert (=> (not b_lambda!21341) (not d!193393)))

(declare-fun tb!48419 () Bool)

(declare-fun t!75382 () Bool)

(assert (=> (and b!554491 (= (toChars!1765 (transformation!1055 (h!10919 rules!3103))) (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))) t!75382) tb!48419))

(declare-fun b!554896 () Bool)

(declare-fun e!335832 () Bool)

(declare-fun tp!175413 () Bool)

(assert (=> b!554896 (= e!335832 (and (inv!6928 (c!104051 (dynLambda!3199 (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) (value!34934 (_1!3526 (v!16235 lt!234142)))))) tp!175413))))

(declare-fun result!54232 () Bool)

(assert (=> tb!48419 (= result!54232 (and (inv!6929 (dynLambda!3199 (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) (value!34934 (_1!3526 (v!16235 lt!234142))))) e!335832))))

(assert (= tb!48419 b!554896))

(declare-fun m!805237 () Bool)

(assert (=> b!554896 m!805237))

(declare-fun m!805239 () Bool)

(assert (=> tb!48419 m!805239))

(assert (=> d!193393 t!75382))

(declare-fun b_and!54215 () Bool)

(assert (= b_and!54211 (and (=> t!75382 result!54232) b_and!54215)))

(declare-fun t!75384 () Bool)

(declare-fun tb!48421 () Bool)

(assert (=> (and b!554483 (= (toChars!1765 (transformation!1055 (rule!1785 token!491))) (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))) t!75384) tb!48421))

(declare-fun result!54234 () Bool)

(assert (= result!54234 result!54232))

(assert (=> d!193393 t!75384))

(declare-fun b_and!54217 () Bool)

(assert (= b_and!54213 (and (=> t!75384 result!54234) b_and!54217)))

(declare-fun m!805241 () Bool)

(assert (=> d!193393 m!805241))

(declare-fun m!805243 () Bool)

(assert (=> d!193393 m!805243))

(assert (=> b!554484 d!193393))

(declare-fun b!554908 () Bool)

(declare-fun e!335840 () Bool)

(assert (=> b!554908 (= e!335840 (>= (size!4401 lt!234126) (size!4401 input!2705)))))

(declare-fun b!554905 () Bool)

(declare-fun e!335841 () Bool)

(declare-fun e!335839 () Bool)

(assert (=> b!554905 (= e!335841 e!335839)))

(declare-fun res!238238 () Bool)

(assert (=> b!554905 (=> (not res!238238) (not e!335839))))

(assert (=> b!554905 (= res!238238 (not ((_ is Nil!5517) lt!234126)))))

(declare-fun b!554907 () Bool)

(assert (=> b!554907 (= e!335839 (isPrefix!689 (tail!733 input!2705) (tail!733 lt!234126)))))

(declare-fun b!554906 () Bool)

(declare-fun res!238241 () Bool)

(assert (=> b!554906 (=> (not res!238241) (not e!335839))))

(declare-fun head!1204 (List!5527) C!3700)

(assert (=> b!554906 (= res!238241 (= (head!1204 input!2705) (head!1204 lt!234126)))))

(declare-fun d!193395 () Bool)

(assert (=> d!193395 e!335840))

(declare-fun res!238240 () Bool)

(assert (=> d!193395 (=> res!238240 e!335840)))

(declare-fun lt!234306 () Bool)

(assert (=> d!193395 (= res!238240 (not lt!234306))))

(assert (=> d!193395 (= lt!234306 e!335841)))

(declare-fun res!238239 () Bool)

(assert (=> d!193395 (=> res!238239 e!335841)))

(assert (=> d!193395 (= res!238239 ((_ is Nil!5517) input!2705))))

(assert (=> d!193395 (= (isPrefix!689 input!2705 lt!234126) lt!234306)))

(assert (= (and d!193395 (not res!238239)) b!554905))

(assert (= (and b!554905 res!238238) b!554906))

(assert (= (and b!554906 res!238241) b!554907))

(assert (= (and d!193395 (not res!238240)) b!554908))

(declare-fun m!805245 () Bool)

(assert (=> b!554908 m!805245))

(assert (=> b!554908 m!805077))

(declare-fun m!805247 () Bool)

(assert (=> b!554907 m!805247))

(declare-fun m!805249 () Bool)

(assert (=> b!554907 m!805249))

(assert (=> b!554907 m!805247))

(assert (=> b!554907 m!805249))

(declare-fun m!805251 () Bool)

(assert (=> b!554907 m!805251))

(declare-fun m!805253 () Bool)

(assert (=> b!554906 m!805253))

(declare-fun m!805255 () Bool)

(assert (=> b!554906 m!805255))

(assert (=> b!554484 d!193395))

(declare-fun d!193397 () Bool)

(assert (=> d!193397 (= (seqFromList!1243 lt!234141) (fromListB!541 lt!234141))))

(declare-fun bs!68042 () Bool)

(assert (= bs!68042 d!193397))

(declare-fun m!805257 () Bool)

(assert (=> bs!68042 m!805257))

(assert (=> b!554484 d!193397))

(declare-fun d!193399 () Bool)

(assert (=> d!193399 (isPrefix!689 lt!234130 (++!1543 lt!234130 suffix!1342))))

(declare-fun lt!234309 () Unit!9777)

(declare-fun choose!3965 (List!5527 List!5527) Unit!9777)

(assert (=> d!193399 (= lt!234309 (choose!3965 lt!234130 suffix!1342))))

(assert (=> d!193399 (= (lemmaConcatTwoListThenFirstIsPrefix!536 lt!234130 suffix!1342) lt!234309)))

(declare-fun bs!68043 () Bool)

(assert (= bs!68043 d!193399))

(assert (=> bs!68043 m!804571))

(assert (=> bs!68043 m!804571))

(declare-fun m!805259 () Bool)

(assert (=> bs!68043 m!805259))

(declare-fun m!805261 () Bool)

(assert (=> bs!68043 m!805261))

(assert (=> b!554484 d!193399))

(declare-fun d!193401 () Bool)

(declare-fun lt!234312 () Int)

(assert (=> d!193401 (>= lt!234312 0)))

(declare-fun e!335844 () Int)

(assert (=> d!193401 (= lt!234312 e!335844)))

(declare-fun c!104113 () Bool)

(assert (=> d!193401 (= c!104113 ((_ is Nil!5517) lt!234141))))

(assert (=> d!193401 (= (size!4401 lt!234141) lt!234312)))

(declare-fun b!554913 () Bool)

(assert (=> b!554913 (= e!335844 0)))

(declare-fun b!554914 () Bool)

(assert (=> b!554914 (= e!335844 (+ 1 (size!4401 (t!75346 lt!234141))))))

(assert (= (and d!193401 c!104113) b!554913))

(assert (= (and d!193401 (not c!104113)) b!554914))

(declare-fun m!805263 () Bool)

(assert (=> b!554914 m!805263))

(assert (=> b!554484 d!193401))

(declare-fun d!193403 () Bool)

(assert (=> d!193403 (= (size!4400 (_1!3526 (v!16235 lt!234142))) (size!4401 (originalCharacters!1094 (_1!3526 (v!16235 lt!234142)))))))

(declare-fun Unit!9785 () Unit!9777)

(assert (=> d!193403 (= (lemmaCharactersSize!122 (_1!3526 (v!16235 lt!234142))) Unit!9785)))

(declare-fun bs!68044 () Bool)

(assert (= bs!68044 d!193403))

(assert (=> bs!68044 m!804579))

(assert (=> b!554484 d!193403))

(declare-fun b!554918 () Bool)

(declare-fun e!335846 () Bool)

(assert (=> b!554918 (= e!335846 (>= (size!4401 (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142)))) (size!4401 lt!234141)))))

(declare-fun b!554915 () Bool)

(declare-fun e!335847 () Bool)

(declare-fun e!335845 () Bool)

(assert (=> b!554915 (= e!335847 e!335845)))

(declare-fun res!238242 () Bool)

(assert (=> b!554915 (=> (not res!238242) (not e!335845))))

(assert (=> b!554915 (= res!238242 (not ((_ is Nil!5517) (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142))))))))

(declare-fun b!554917 () Bool)

(assert (=> b!554917 (= e!335845 (isPrefix!689 (tail!733 lt!234141) (tail!733 (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142))))))))

(declare-fun b!554916 () Bool)

(declare-fun res!238245 () Bool)

(assert (=> b!554916 (=> (not res!238245) (not e!335845))))

(assert (=> b!554916 (= res!238245 (= (head!1204 lt!234141) (head!1204 (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142))))))))

(declare-fun d!193405 () Bool)

(assert (=> d!193405 e!335846))

(declare-fun res!238244 () Bool)

(assert (=> d!193405 (=> res!238244 e!335846)))

(declare-fun lt!234313 () Bool)

(assert (=> d!193405 (= res!238244 (not lt!234313))))

(assert (=> d!193405 (= lt!234313 e!335847)))

(declare-fun res!238243 () Bool)

(assert (=> d!193405 (=> res!238243 e!335847)))

(assert (=> d!193405 (= res!238243 ((_ is Nil!5517) lt!234141))))

(assert (=> d!193405 (= (isPrefix!689 lt!234141 (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142)))) lt!234313)))

(assert (= (and d!193405 (not res!238243)) b!554915))

(assert (= (and b!554915 res!238242) b!554916))

(assert (= (and b!554916 res!238245) b!554917))

(assert (= (and d!193405 (not res!238244)) b!554918))

(assert (=> b!554918 m!804597))

(declare-fun m!805265 () Bool)

(assert (=> b!554918 m!805265))

(assert (=> b!554918 m!804603))

(declare-fun m!805267 () Bool)

(assert (=> b!554917 m!805267))

(assert (=> b!554917 m!804597))

(declare-fun m!805269 () Bool)

(assert (=> b!554917 m!805269))

(assert (=> b!554917 m!805267))

(assert (=> b!554917 m!805269))

(declare-fun m!805271 () Bool)

(assert (=> b!554917 m!805271))

(declare-fun m!805273 () Bool)

(assert (=> b!554916 m!805273))

(assert (=> b!554916 m!804597))

(declare-fun m!805275 () Bool)

(assert (=> b!554916 m!805275))

(assert (=> b!554484 d!193405))

(declare-fun d!193407 () Bool)

(assert (=> d!193407 (= (size!4400 token!491) (size!4401 (originalCharacters!1094 token!491)))))

(declare-fun Unit!9786 () Unit!9777)

(assert (=> d!193407 (= (lemmaCharactersSize!122 token!491) Unit!9786)))

(declare-fun bs!68045 () Bool)

(assert (= bs!68045 d!193407))

(assert (=> bs!68045 m!804649))

(assert (=> b!554484 d!193407))

(declare-fun d!193409 () Bool)

(declare-fun res!238250 () Bool)

(declare-fun e!335850 () Bool)

(assert (=> d!193409 (=> (not res!238250) (not e!335850))))

(declare-fun validRegex!462 (Regex!1389) Bool)

(assert (=> d!193409 (= res!238250 (validRegex!462 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))))))

(assert (=> d!193409 (= (ruleValid!265 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142)))) e!335850)))

(declare-fun b!554923 () Bool)

(declare-fun res!238251 () Bool)

(assert (=> b!554923 (=> (not res!238251) (not e!335850))))

(declare-fun nullable!367 (Regex!1389) Bool)

(assert (=> b!554923 (= res!238251 (not (nullable!367 (regex!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))))))

(declare-fun b!554924 () Bool)

(assert (=> b!554924 (= e!335850 (not (= (tag!1317 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (String!7140 ""))))))

(assert (= (and d!193409 res!238250) b!554923))

(assert (= (and b!554923 res!238251) b!554924))

(declare-fun m!805277 () Bool)

(assert (=> d!193409 m!805277))

(declare-fun m!805279 () Bool)

(assert (=> b!554923 m!805279))

(assert (=> b!554484 d!193409))

(declare-fun d!193411 () Bool)

(assert (=> d!193411 (= (_2!3526 (v!16235 lt!234142)) lt!234143)))

(declare-fun lt!234314 () Unit!9777)

(assert (=> d!193411 (= lt!234314 (choose!3959 lt!234141 (_2!3526 (v!16235 lt!234142)) lt!234141 lt!234143 input!2705))))

(assert (=> d!193411 (isPrefix!689 lt!234141 input!2705)))

(assert (=> d!193411 (= (lemmaSamePrefixThenSameSuffix!412 lt!234141 (_2!3526 (v!16235 lt!234142)) lt!234141 lt!234143 input!2705) lt!234314)))

(declare-fun bs!68046 () Bool)

(assert (= bs!68046 d!193411))

(declare-fun m!805281 () Bool)

(assert (=> bs!68046 m!805281))

(declare-fun m!805283 () Bool)

(assert (=> bs!68046 m!805283))

(assert (=> b!554484 d!193411))

(declare-fun d!193413 () Bool)

(assert (=> d!193413 (= (apply!1320 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))) (seqFromList!1243 lt!234141)) (dynLambda!3201 (toValue!1906 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) (seqFromList!1243 lt!234141)))))

(declare-fun b_lambda!21343 () Bool)

(assert (=> (not b_lambda!21343) (not d!193413)))

(declare-fun t!75386 () Bool)

(declare-fun tb!48423 () Bool)

(assert (=> (and b!554491 (= (toValue!1906 (transformation!1055 (h!10919 rules!3103))) (toValue!1906 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))) t!75386) tb!48423))

(declare-fun result!54236 () Bool)

(assert (=> tb!48423 (= result!54236 (inv!21 (dynLambda!3201 (toValue!1906 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) (seqFromList!1243 lt!234141))))))

(declare-fun m!805285 () Bool)

(assert (=> tb!48423 m!805285))

(assert (=> d!193413 t!75386))

(declare-fun b_and!54219 () Bool)

(assert (= b_and!54199 (and (=> t!75386 result!54236) b_and!54219)))

(declare-fun tb!48425 () Bool)

(declare-fun t!75388 () Bool)

(assert (=> (and b!554483 (= (toValue!1906 (transformation!1055 (rule!1785 token!491))) (toValue!1906 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))) t!75388) tb!48425))

(declare-fun result!54238 () Bool)

(assert (= result!54238 result!54236))

(assert (=> d!193413 t!75388))

(declare-fun b_and!54221 () Bool)

(assert (= b_and!54201 (and (=> t!75388 result!54238) b_and!54221)))

(assert (=> d!193413 m!804599))

(declare-fun m!805287 () Bool)

(assert (=> d!193413 m!805287))

(assert (=> b!554484 d!193413))

(declare-fun d!193415 () Bool)

(assert (=> d!193415 (ruleValid!265 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))))))

(declare-fun lt!234317 () Unit!9777)

(declare-fun choose!3966 (LexerInterface!941 Rule!1910 List!5528) Unit!9777)

(assert (=> d!193415 (= lt!234317 (choose!3966 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))) rules!3103))))

(assert (=> d!193415 (contains!1287 rules!3103 (rule!1785 (_1!3526 (v!16235 lt!234142))))))

(assert (=> d!193415 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!122 thiss!22590 (rule!1785 (_1!3526 (v!16235 lt!234142))) rules!3103) lt!234317)))

(declare-fun bs!68047 () Bool)

(assert (= bs!68047 d!193415))

(assert (=> bs!68047 m!804595))

(declare-fun m!805289 () Bool)

(assert (=> bs!68047 m!805289))

(declare-fun m!805291 () Bool)

(assert (=> bs!68047 m!805291))

(assert (=> b!554484 d!193415))

(declare-fun d!193417 () Bool)

(declare-fun lt!234318 () Int)

(assert (=> d!193417 (>= lt!234318 0)))

(declare-fun e!335852 () Int)

(assert (=> d!193417 (= lt!234318 e!335852)))

(declare-fun c!104114 () Bool)

(assert (=> d!193417 (= c!104114 ((_ is Nil!5517) lt!234130))))

(assert (=> d!193417 (= (size!4401 lt!234130) lt!234318)))

(declare-fun b!554925 () Bool)

(assert (=> b!554925 (= e!335852 0)))

(declare-fun b!554926 () Bool)

(assert (=> b!554926 (= e!335852 (+ 1 (size!4401 (t!75346 lt!234130))))))

(assert (= (and d!193417 c!104114) b!554925))

(assert (= (and d!193417 (not c!104114)) b!554926))

(declare-fun m!805293 () Bool)

(assert (=> b!554926 m!805293))

(assert (=> b!554484 d!193417))

(declare-fun b!554930 () Bool)

(declare-fun e!335854 () Bool)

(assert (=> b!554930 (= e!335854 (>= (size!4401 input!2705) (size!4401 input!2705)))))

(declare-fun b!554927 () Bool)

(declare-fun e!335855 () Bool)

(declare-fun e!335853 () Bool)

(assert (=> b!554927 (= e!335855 e!335853)))

(declare-fun res!238252 () Bool)

(assert (=> b!554927 (=> (not res!238252) (not e!335853))))

(assert (=> b!554927 (= res!238252 (not ((_ is Nil!5517) input!2705)))))

(declare-fun b!554929 () Bool)

(assert (=> b!554929 (= e!335853 (isPrefix!689 (tail!733 input!2705) (tail!733 input!2705)))))

(declare-fun b!554928 () Bool)

(declare-fun res!238255 () Bool)

(assert (=> b!554928 (=> (not res!238255) (not e!335853))))

(assert (=> b!554928 (= res!238255 (= (head!1204 input!2705) (head!1204 input!2705)))))

(declare-fun d!193419 () Bool)

(assert (=> d!193419 e!335854))

(declare-fun res!238254 () Bool)

(assert (=> d!193419 (=> res!238254 e!335854)))

(declare-fun lt!234319 () Bool)

(assert (=> d!193419 (= res!238254 (not lt!234319))))

(assert (=> d!193419 (= lt!234319 e!335855)))

(declare-fun res!238253 () Bool)

(assert (=> d!193419 (=> res!238253 e!335855)))

(assert (=> d!193419 (= res!238253 ((_ is Nil!5517) input!2705))))

(assert (=> d!193419 (= (isPrefix!689 input!2705 input!2705) lt!234319)))

(assert (= (and d!193419 (not res!238253)) b!554927))

(assert (= (and b!554927 res!238252) b!554928))

(assert (= (and b!554928 res!238255) b!554929))

(assert (= (and d!193419 (not res!238254)) b!554930))

(assert (=> b!554930 m!805077))

(assert (=> b!554930 m!805077))

(assert (=> b!554929 m!805247))

(assert (=> b!554929 m!805247))

(assert (=> b!554929 m!805247))

(assert (=> b!554929 m!805247))

(declare-fun m!805295 () Bool)

(assert (=> b!554929 m!805295))

(assert (=> b!554928 m!805253))

(assert (=> b!554928 m!805253))

(assert (=> b!554484 d!193419))

(declare-fun d!193421 () Bool)

(assert (=> d!193421 (ruleValid!265 thiss!22590 (rule!1785 token!491))))

(declare-fun lt!234320 () Unit!9777)

(assert (=> d!193421 (= lt!234320 (choose!3966 thiss!22590 (rule!1785 token!491) rules!3103))))

(assert (=> d!193421 (contains!1287 rules!3103 (rule!1785 token!491))))

(assert (=> d!193421 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!122 thiss!22590 (rule!1785 token!491) rules!3103) lt!234320)))

(declare-fun bs!68048 () Bool)

(assert (= bs!68048 d!193421))

(assert (=> bs!68048 m!804613))

(declare-fun m!805297 () Bool)

(assert (=> bs!68048 m!805297))

(assert (=> bs!68048 m!804575))

(assert (=> b!554484 d!193421))

(declare-fun d!193423 () Bool)

(assert (=> d!193423 (isPrefix!689 input!2705 (++!1543 input!2705 suffix!1342))))

(declare-fun lt!234321 () Unit!9777)

(assert (=> d!193423 (= lt!234321 (choose!3965 input!2705 suffix!1342))))

(assert (=> d!193423 (= (lemmaConcatTwoListThenFirstIsPrefix!536 input!2705 suffix!1342) lt!234321)))

(declare-fun bs!68049 () Bool)

(assert (= bs!68049 d!193423))

(assert (=> bs!68049 m!804555))

(assert (=> bs!68049 m!804555))

(declare-fun m!805299 () Bool)

(assert (=> bs!68049 m!805299))

(declare-fun m!805301 () Bool)

(assert (=> bs!68049 m!805301))

(assert (=> b!554484 d!193423))

(declare-fun d!193425 () Bool)

(declare-fun lt!234322 () List!5527)

(assert (=> d!193425 (= (++!1543 lt!234141 lt!234322) input!2705)))

(declare-fun e!335856 () List!5527)

(assert (=> d!193425 (= lt!234322 e!335856)))

(declare-fun c!104115 () Bool)

(assert (=> d!193425 (= c!104115 ((_ is Cons!5517) lt!234141))))

(assert (=> d!193425 (>= (size!4401 input!2705) (size!4401 lt!234141))))

(assert (=> d!193425 (= (getSuffix!208 input!2705 lt!234141) lt!234322)))

(declare-fun b!554931 () Bool)

(assert (=> b!554931 (= e!335856 (getSuffix!208 (tail!733 input!2705) (t!75346 lt!234141)))))

(declare-fun b!554932 () Bool)

(assert (=> b!554932 (= e!335856 input!2705)))

(assert (= (and d!193425 c!104115) b!554931))

(assert (= (and d!193425 (not c!104115)) b!554932))

(declare-fun m!805303 () Bool)

(assert (=> d!193425 m!805303))

(assert (=> d!193425 m!805077))

(assert (=> d!193425 m!804603))

(assert (=> b!554931 m!805247))

(assert (=> b!554931 m!805247))

(declare-fun m!805305 () Bool)

(assert (=> b!554931 m!805305))

(assert (=> b!554484 d!193425))

(declare-fun d!193427 () Bool)

(assert (=> d!193427 (isPrefix!689 lt!234141 (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142))))))

(declare-fun lt!234323 () Unit!9777)

(assert (=> d!193427 (= lt!234323 (choose!3965 lt!234141 (_2!3526 (v!16235 lt!234142))))))

(assert (=> d!193427 (= (lemmaConcatTwoListThenFirstIsPrefix!536 lt!234141 (_2!3526 (v!16235 lt!234142))) lt!234323)))

(declare-fun bs!68050 () Bool)

(assert (= bs!68050 d!193427))

(assert (=> bs!68050 m!804597))

(assert (=> bs!68050 m!804597))

(assert (=> bs!68050 m!804633))

(declare-fun m!805307 () Bool)

(assert (=> bs!68050 m!805307))

(assert (=> b!554484 d!193427))

(declare-fun d!193429 () Bool)

(declare-fun res!238256 () Bool)

(declare-fun e!335857 () Bool)

(assert (=> d!193429 (=> (not res!238256) (not e!335857))))

(assert (=> d!193429 (= res!238256 (validRegex!462 (regex!1055 (rule!1785 token!491))))))

(assert (=> d!193429 (= (ruleValid!265 thiss!22590 (rule!1785 token!491)) e!335857)))

(declare-fun b!554933 () Bool)

(declare-fun res!238257 () Bool)

(assert (=> b!554933 (=> (not res!238257) (not e!335857))))

(assert (=> b!554933 (= res!238257 (not (nullable!367 (regex!1055 (rule!1785 token!491)))))))

(declare-fun b!554934 () Bool)

(assert (=> b!554934 (= e!335857 (not (= (tag!1317 (rule!1785 token!491)) (String!7140 ""))))))

(assert (= (and d!193429 res!238256) b!554933))

(assert (= (and b!554933 res!238257) b!554934))

(declare-fun m!805309 () Bool)

(assert (=> d!193429 m!805309))

(declare-fun m!805311 () Bool)

(assert (=> b!554933 m!805311))

(assert (=> b!554484 d!193429))

(declare-fun d!193431 () Bool)

(assert (=> d!193431 (= (list!2287 (charsOf!684 (_1!3526 (v!16235 lt!234142)))) (list!2288 (c!104051 (charsOf!684 (_1!3526 (v!16235 lt!234142))))))))

(declare-fun bs!68051 () Bool)

(assert (= bs!68051 d!193431))

(declare-fun m!805313 () Bool)

(assert (=> bs!68051 m!805313))

(assert (=> b!554484 d!193431))

(declare-fun b!554938 () Bool)

(declare-fun e!335859 () Bool)

(assert (=> b!554938 (= e!335859 (>= (size!4401 lt!234136) (size!4401 input!2705)))))

(declare-fun b!554935 () Bool)

(declare-fun e!335860 () Bool)

(declare-fun e!335858 () Bool)

(assert (=> b!554935 (= e!335860 e!335858)))

(declare-fun res!238258 () Bool)

(assert (=> b!554935 (=> (not res!238258) (not e!335858))))

(assert (=> b!554935 (= res!238258 (not ((_ is Nil!5517) lt!234136)))))

(declare-fun b!554937 () Bool)

(assert (=> b!554937 (= e!335858 (isPrefix!689 (tail!733 input!2705) (tail!733 lt!234136)))))

(declare-fun b!554936 () Bool)

(declare-fun res!238261 () Bool)

(assert (=> b!554936 (=> (not res!238261) (not e!335858))))

(assert (=> b!554936 (= res!238261 (= (head!1204 input!2705) (head!1204 lt!234136)))))

(declare-fun d!193433 () Bool)

(assert (=> d!193433 e!335859))

(declare-fun res!238260 () Bool)

(assert (=> d!193433 (=> res!238260 e!335859)))

(declare-fun lt!234324 () Bool)

(assert (=> d!193433 (= res!238260 (not lt!234324))))

(assert (=> d!193433 (= lt!234324 e!335860)))

(declare-fun res!238259 () Bool)

(assert (=> d!193433 (=> res!238259 e!335860)))

(assert (=> d!193433 (= res!238259 ((_ is Nil!5517) input!2705))))

(assert (=> d!193433 (= (isPrefix!689 input!2705 lt!234136) lt!234324)))

(assert (= (and d!193433 (not res!238259)) b!554935))

(assert (= (and b!554935 res!238258) b!554936))

(assert (= (and b!554936 res!238261) b!554937))

(assert (= (and d!193433 (not res!238260)) b!554938))

(assert (=> b!554938 m!804977))

(assert (=> b!554938 m!805077))

(assert (=> b!554937 m!805247))

(assert (=> b!554937 m!805045))

(assert (=> b!554937 m!805247))

(assert (=> b!554937 m!805045))

(declare-fun m!805315 () Bool)

(assert (=> b!554937 m!805315))

(assert (=> b!554936 m!805253))

(declare-fun m!805317 () Bool)

(assert (=> b!554936 m!805317))

(assert (=> b!554484 d!193433))

(declare-fun b!554942 () Bool)

(declare-fun e!335862 () Bool)

(assert (=> b!554942 (= e!335862 (>= (size!4401 lt!234126) (size!4401 lt!234130)))))

(declare-fun b!554939 () Bool)

(declare-fun e!335863 () Bool)

(declare-fun e!335861 () Bool)

(assert (=> b!554939 (= e!335863 e!335861)))

(declare-fun res!238262 () Bool)

(assert (=> b!554939 (=> (not res!238262) (not e!335861))))

(assert (=> b!554939 (= res!238262 (not ((_ is Nil!5517) lt!234126)))))

(declare-fun b!554941 () Bool)

(assert (=> b!554941 (= e!335861 (isPrefix!689 (tail!733 lt!234130) (tail!733 lt!234126)))))

(declare-fun b!554940 () Bool)

(declare-fun res!238265 () Bool)

(assert (=> b!554940 (=> (not res!238265) (not e!335861))))

(assert (=> b!554940 (= res!238265 (= (head!1204 lt!234130) (head!1204 lt!234126)))))

(declare-fun d!193435 () Bool)

(assert (=> d!193435 e!335862))

(declare-fun res!238264 () Bool)

(assert (=> d!193435 (=> res!238264 e!335862)))

(declare-fun lt!234325 () Bool)

(assert (=> d!193435 (= res!238264 (not lt!234325))))

(assert (=> d!193435 (= lt!234325 e!335863)))

(declare-fun res!238263 () Bool)

(assert (=> d!193435 (=> res!238263 e!335863)))

(assert (=> d!193435 (= res!238263 ((_ is Nil!5517) lt!234130))))

(assert (=> d!193435 (= (isPrefix!689 lt!234130 lt!234126) lt!234325)))

(assert (= (and d!193435 (not res!238263)) b!554939))

(assert (= (and b!554939 res!238262) b!554940))

(assert (= (and b!554940 res!238265) b!554941))

(assert (= (and d!193435 (not res!238264)) b!554942))

(assert (=> b!554942 m!805245))

(assert (=> b!554942 m!804627))

(declare-fun m!805319 () Bool)

(assert (=> b!554941 m!805319))

(assert (=> b!554941 m!805249))

(assert (=> b!554941 m!805319))

(assert (=> b!554941 m!805249))

(declare-fun m!805321 () Bool)

(assert (=> b!554941 m!805321))

(declare-fun m!805323 () Bool)

(assert (=> b!554940 m!805323))

(assert (=> b!554940 m!805255))

(assert (=> b!554484 d!193435))

(declare-fun d!193437 () Bool)

(assert (=> d!193437 (isPrefix!689 input!2705 input!2705)))

(declare-fun lt!234328 () Unit!9777)

(declare-fun choose!3967 (List!5527 List!5527) Unit!9777)

(assert (=> d!193437 (= lt!234328 (choose!3967 input!2705 input!2705))))

(assert (=> d!193437 (= (lemmaIsPrefixRefl!427 input!2705 input!2705) lt!234328)))

(declare-fun bs!68052 () Bool)

(assert (= bs!68052 d!193437))

(assert (=> bs!68052 m!804607))

(declare-fun m!805325 () Bool)

(assert (=> bs!68052 m!805325))

(assert (=> b!554484 d!193437))

(declare-fun d!193439 () Bool)

(assert (=> d!193439 (and (= lt!234130 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!234331 () Unit!9777)

(declare-fun choose!3968 (List!5527 List!5527 List!5527 List!5527) Unit!9777)

(assert (=> d!193439 (= lt!234331 (choose!3968 lt!234130 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!193439 (= (++!1543 lt!234130 suffix!1342) (++!1543 input!2705 suffix!1342))))

(assert (=> d!193439 (= (lemmaConcatSameAndSameSizesThenSameLists!132 lt!234130 suffix!1342 input!2705 suffix!1342) lt!234331)))

(declare-fun bs!68053 () Bool)

(assert (= bs!68053 d!193439))

(declare-fun m!805327 () Bool)

(assert (=> bs!68053 m!805327))

(assert (=> bs!68053 m!804571))

(assert (=> bs!68053 m!804555))

(assert (=> b!554484 d!193439))

(declare-fun d!193441 () Bool)

(declare-fun e!335866 () Bool)

(assert (=> d!193441 e!335866))

(declare-fun res!238268 () Bool)

(assert (=> d!193441 (=> (not res!238268) (not e!335866))))

(assert (=> d!193441 (= res!238268 (semiInverseModEq!405 (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) (toValue!1906 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))))))

(declare-fun Unit!9787 () Unit!9777)

(assert (=> d!193441 (= (lemmaInv!191 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) Unit!9787)))

(declare-fun b!554945 () Bool)

(assert (=> b!554945 (= e!335866 (equivClasses!388 (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142))))) (toValue!1906 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))))))

(assert (= (and d!193441 res!238268) b!554945))

(declare-fun m!805329 () Bool)

(assert (=> d!193441 m!805329))

(declare-fun m!805331 () Bool)

(assert (=> b!554945 m!805331))

(assert (=> b!554484 d!193441))

(declare-fun b!554948 () Bool)

(declare-fun res!238270 () Bool)

(declare-fun e!335868 () Bool)

(assert (=> b!554948 (=> (not res!238270) (not e!335868))))

(declare-fun lt!234332 () List!5527)

(assert (=> b!554948 (= res!238270 (= (size!4401 lt!234332) (+ (size!4401 lt!234141) (size!4401 (_2!3526 (v!16235 lt!234142))))))))

(declare-fun b!554949 () Bool)

(assert (=> b!554949 (= e!335868 (or (not (= (_2!3526 (v!16235 lt!234142)) Nil!5517)) (= lt!234332 lt!234141)))))

(declare-fun b!554946 () Bool)

(declare-fun e!335867 () List!5527)

(assert (=> b!554946 (= e!335867 (_2!3526 (v!16235 lt!234142)))))

(declare-fun d!193443 () Bool)

(assert (=> d!193443 e!335868))

(declare-fun res!238269 () Bool)

(assert (=> d!193443 (=> (not res!238269) (not e!335868))))

(assert (=> d!193443 (= res!238269 (= (content!964 lt!234332) ((_ map or) (content!964 lt!234141) (content!964 (_2!3526 (v!16235 lt!234142))))))))

(assert (=> d!193443 (= lt!234332 e!335867)))

(declare-fun c!104116 () Bool)

(assert (=> d!193443 (= c!104116 ((_ is Nil!5517) lt!234141))))

(assert (=> d!193443 (= (++!1543 lt!234141 (_2!3526 (v!16235 lt!234142))) lt!234332)))

(declare-fun b!554947 () Bool)

(assert (=> b!554947 (= e!335867 (Cons!5517 (h!10918 lt!234141) (++!1543 (t!75346 lt!234141) (_2!3526 (v!16235 lt!234142)))))))

(assert (= (and d!193443 c!104116) b!554946))

(assert (= (and d!193443 (not c!104116)) b!554947))

(assert (= (and d!193443 res!238269) b!554948))

(assert (= (and b!554948 res!238270) b!554949))

(declare-fun m!805333 () Bool)

(assert (=> b!554948 m!805333))

(assert (=> b!554948 m!804603))

(declare-fun m!805335 () Bool)

(assert (=> b!554948 m!805335))

(declare-fun m!805337 () Bool)

(assert (=> d!193443 m!805337))

(declare-fun m!805339 () Bool)

(assert (=> d!193443 m!805339))

(declare-fun m!805341 () Bool)

(assert (=> d!193443 m!805341))

(declare-fun m!805343 () Bool)

(assert (=> b!554947 m!805343))

(assert (=> b!554484 d!193443))

(declare-fun d!193445 () Bool)

(declare-fun e!335869 () Bool)

(assert (=> d!193445 e!335869))

(declare-fun res!238271 () Bool)

(assert (=> d!193445 (=> (not res!238271) (not e!335869))))

(assert (=> d!193445 (= res!238271 (semiInverseModEq!405 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (toValue!1906 (transformation!1055 (rule!1785 token!491)))))))

(declare-fun Unit!9788 () Unit!9777)

(assert (=> d!193445 (= (lemmaInv!191 (transformation!1055 (rule!1785 token!491))) Unit!9788)))

(declare-fun b!554950 () Bool)

(assert (=> b!554950 (= e!335869 (equivClasses!388 (toChars!1765 (transformation!1055 (rule!1785 token!491))) (toValue!1906 (transformation!1055 (rule!1785 token!491)))))))

(assert (= (and d!193445 res!238271) b!554950))

(assert (=> d!193445 m!804715))

(assert (=> b!554950 m!804717))

(assert (=> b!554484 d!193445))

(declare-fun b!554979 () Bool)

(declare-fun e!335886 () Bool)

(declare-fun e!335888 () Bool)

(assert (=> b!554979 (= e!335886 e!335888)))

(declare-fun res!238289 () Bool)

(assert (=> b!554979 (=> res!238289 e!335888)))

(declare-fun call!38475 () Bool)

(assert (=> b!554979 (= res!238289 call!38475)))

(declare-fun b!554980 () Bool)

(declare-fun e!335885 () Bool)

(assert (=> b!554980 (= e!335885 (nullable!367 (regex!1055 (rule!1785 token!491))))))

(declare-fun b!554981 () Bool)

(assert (=> b!554981 (= e!335888 (not (= (head!1204 input!2705) (c!104050 (regex!1055 (rule!1785 token!491))))))))

(declare-fun d!193447 () Bool)

(declare-fun e!335889 () Bool)

(assert (=> d!193447 e!335889))

(declare-fun c!104123 () Bool)

(assert (=> d!193447 (= c!104123 ((_ is EmptyExpr!1389) (regex!1055 (rule!1785 token!491))))))

(declare-fun lt!234335 () Bool)

(assert (=> d!193447 (= lt!234335 e!335885)))

(declare-fun c!104125 () Bool)

(assert (=> d!193447 (= c!104125 (isEmpty!3980 input!2705))))

(assert (=> d!193447 (validRegex!462 (regex!1055 (rule!1785 token!491)))))

(assert (=> d!193447 (= (matchR!536 (regex!1055 (rule!1785 token!491)) input!2705) lt!234335)))

(declare-fun b!554982 () Bool)

(assert (=> b!554982 (= e!335889 (= lt!234335 call!38475))))

(declare-fun b!554983 () Bool)

(declare-fun derivativeStep!281 (Regex!1389 C!3700) Regex!1389)

(assert (=> b!554983 (= e!335885 (matchR!536 (derivativeStep!281 (regex!1055 (rule!1785 token!491)) (head!1204 input!2705)) (tail!733 input!2705)))))

(declare-fun b!554984 () Bool)

(declare-fun e!335887 () Bool)

(assert (=> b!554984 (= e!335887 (not lt!234335))))

(declare-fun b!554985 () Bool)

(declare-fun e!335890 () Bool)

(assert (=> b!554985 (= e!335890 (= (head!1204 input!2705) (c!104050 (regex!1055 (rule!1785 token!491)))))))

(declare-fun b!554986 () Bool)

(assert (=> b!554986 (= e!335889 e!335887)))

(declare-fun c!104124 () Bool)

(assert (=> b!554986 (= c!104124 ((_ is EmptyLang!1389) (regex!1055 (rule!1785 token!491))))))

(declare-fun b!554987 () Bool)

(declare-fun e!335884 () Bool)

(assert (=> b!554987 (= e!335884 e!335886)))

(declare-fun res!238293 () Bool)

(assert (=> b!554987 (=> (not res!238293) (not e!335886))))

(assert (=> b!554987 (= res!238293 (not lt!234335))))

(declare-fun b!554988 () Bool)

(declare-fun res!238294 () Bool)

(assert (=> b!554988 (=> res!238294 e!335888)))

(assert (=> b!554988 (= res!238294 (not (isEmpty!3980 (tail!733 input!2705))))))

(declare-fun b!554989 () Bool)

(declare-fun res!238290 () Bool)

(assert (=> b!554989 (=> (not res!238290) (not e!335890))))

(assert (=> b!554989 (= res!238290 (isEmpty!3980 (tail!733 input!2705)))))

(declare-fun bm!38470 () Bool)

(assert (=> bm!38470 (= call!38475 (isEmpty!3980 input!2705))))

(declare-fun b!554990 () Bool)

(declare-fun res!238288 () Bool)

(assert (=> b!554990 (=> res!238288 e!335884)))

(assert (=> b!554990 (= res!238288 (not ((_ is ElementMatch!1389) (regex!1055 (rule!1785 token!491)))))))

(assert (=> b!554990 (= e!335887 e!335884)))

(declare-fun b!554991 () Bool)

(declare-fun res!238295 () Bool)

(assert (=> b!554991 (=> res!238295 e!335884)))

(assert (=> b!554991 (= res!238295 e!335890)))

(declare-fun res!238291 () Bool)

(assert (=> b!554991 (=> (not res!238291) (not e!335890))))

(assert (=> b!554991 (= res!238291 lt!234335)))

(declare-fun b!554992 () Bool)

(declare-fun res!238292 () Bool)

(assert (=> b!554992 (=> (not res!238292) (not e!335890))))

(assert (=> b!554992 (= res!238292 (not call!38475))))

(assert (= (and d!193447 c!104125) b!554980))

(assert (= (and d!193447 (not c!104125)) b!554983))

(assert (= (and d!193447 c!104123) b!554982))

(assert (= (and d!193447 (not c!104123)) b!554986))

(assert (= (and b!554986 c!104124) b!554984))

(assert (= (and b!554986 (not c!104124)) b!554990))

(assert (= (and b!554990 (not res!238288)) b!554991))

(assert (= (and b!554991 res!238291) b!554992))

(assert (= (and b!554992 res!238292) b!554989))

(assert (= (and b!554989 res!238290) b!554985))

(assert (= (and b!554991 (not res!238295)) b!554987))

(assert (= (and b!554987 res!238293) b!554979))

(assert (= (and b!554979 (not res!238289)) b!554988))

(assert (= (and b!554988 (not res!238294)) b!554981))

(assert (= (or b!554982 b!554979 b!554992) bm!38470))

(assert (=> d!193447 m!804581))

(assert (=> d!193447 m!805309))

(assert (=> b!554988 m!805247))

(assert (=> b!554988 m!805247))

(declare-fun m!805345 () Bool)

(assert (=> b!554988 m!805345))

(assert (=> b!554980 m!805311))

(assert (=> b!554989 m!805247))

(assert (=> b!554989 m!805247))

(assert (=> b!554989 m!805345))

(assert (=> bm!38470 m!804581))

(assert (=> b!554985 m!805253))

(assert (=> b!554983 m!805253))

(assert (=> b!554983 m!805253))

(declare-fun m!805347 () Bool)

(assert (=> b!554983 m!805347))

(assert (=> b!554983 m!805247))

(assert (=> b!554983 m!805347))

(assert (=> b!554983 m!805247))

(declare-fun m!805349 () Bool)

(assert (=> b!554983 m!805349))

(assert (=> b!554981 m!805253))

(assert (=> b!554474 d!193447))

(declare-fun d!193449 () Bool)

(declare-fun lt!234336 () Int)

(assert (=> d!193449 (>= lt!234336 0)))

(declare-fun e!335891 () Int)

(assert (=> d!193449 (= lt!234336 e!335891)))

(declare-fun c!104126 () Bool)

(assert (=> d!193449 (= c!104126 ((_ is Nil!5517) (originalCharacters!1094 token!491)))))

(assert (=> d!193449 (= (size!4401 (originalCharacters!1094 token!491)) lt!234336)))

(declare-fun b!554993 () Bool)

(assert (=> b!554993 (= e!335891 0)))

(declare-fun b!554994 () Bool)

(assert (=> b!554994 (= e!335891 (+ 1 (size!4401 (t!75346 (originalCharacters!1094 token!491)))))))

(assert (= (and d!193449 c!104126) b!554993))

(assert (= (and d!193449 (not c!104126)) b!554994))

(declare-fun m!805351 () Bool)

(assert (=> b!554994 m!805351))

(assert (=> b!554487 d!193449))

(declare-fun d!193451 () Bool)

(declare-fun res!238298 () Bool)

(declare-fun e!335894 () Bool)

(assert (=> d!193451 (=> (not res!238298) (not e!335894))))

(declare-fun rulesValid!369 (LexerInterface!941 List!5528) Bool)

(assert (=> d!193451 (= res!238298 (rulesValid!369 thiss!22590 rules!3103))))

(assert (=> d!193451 (= (rulesInvariant!904 thiss!22590 rules!3103) e!335894)))

(declare-fun b!554997 () Bool)

(declare-datatypes ((List!5530 0))(
  ( (Nil!5520) (Cons!5520 (h!10921 String!7139) (t!75397 List!5530)) )
))
(declare-fun noDuplicateTag!369 (LexerInterface!941 List!5528 List!5530) Bool)

(assert (=> b!554997 (= e!335894 (noDuplicateTag!369 thiss!22590 rules!3103 Nil!5520))))

(assert (= (and d!193451 res!238298) b!554997))

(declare-fun m!805353 () Bool)

(assert (=> d!193451 m!805353))

(declare-fun m!805355 () Bool)

(assert (=> b!554997 m!805355))

(assert (=> b!554465 d!193451))

(declare-fun d!193453 () Bool)

(declare-fun lt!234337 () Int)

(assert (=> d!193453 (>= lt!234337 0)))

(declare-fun e!335895 () Int)

(assert (=> d!193453 (= lt!234337 e!335895)))

(declare-fun c!104127 () Bool)

(assert (=> d!193453 (= c!104127 ((_ is Nil!5517) (originalCharacters!1094 (_1!3526 (v!16235 lt!234142)))))))

(assert (=> d!193453 (= (size!4401 (originalCharacters!1094 (_1!3526 (v!16235 lt!234142)))) lt!234337)))

(declare-fun b!554998 () Bool)

(assert (=> b!554998 (= e!335895 0)))

(declare-fun b!554999 () Bool)

(assert (=> b!554999 (= e!335895 (+ 1 (size!4401 (t!75346 (originalCharacters!1094 (_1!3526 (v!16235 lt!234142)))))))))

(assert (= (and d!193453 c!104127) b!554998))

(assert (= (and d!193453 (not c!104127)) b!554999))

(declare-fun m!805357 () Bool)

(assert (=> b!554999 m!805357))

(assert (=> b!554486 d!193453))

(declare-fun b!555011 () Bool)

(declare-fun e!335898 () Bool)

(declare-fun tp!175427 () Bool)

(declare-fun tp!175426 () Bool)

(assert (=> b!555011 (= e!335898 (and tp!175427 tp!175426))))

(assert (=> b!554467 (= tp!175364 e!335898)))

(declare-fun b!555010 () Bool)

(assert (=> b!555010 (= e!335898 tp_is_empty!3133)))

(declare-fun b!555012 () Bool)

(declare-fun tp!175424 () Bool)

(assert (=> b!555012 (= e!335898 tp!175424)))

(declare-fun b!555013 () Bool)

(declare-fun tp!175428 () Bool)

(declare-fun tp!175425 () Bool)

(assert (=> b!555013 (= e!335898 (and tp!175428 tp!175425))))

(assert (= (and b!554467 ((_ is ElementMatch!1389) (regex!1055 (h!10919 rules!3103)))) b!555010))

(assert (= (and b!554467 ((_ is Concat!2468) (regex!1055 (h!10919 rules!3103)))) b!555011))

(assert (= (and b!554467 ((_ is Star!1389) (regex!1055 (h!10919 rules!3103)))) b!555012))

(assert (= (and b!554467 ((_ is Union!1389) (regex!1055 (h!10919 rules!3103)))) b!555013))

(declare-fun b!555018 () Bool)

(declare-fun e!335901 () Bool)

(declare-fun tp!175431 () Bool)

(assert (=> b!555018 (= e!335901 (and tp_is_empty!3133 tp!175431))))

(assert (=> b!554472 (= tp!175367 e!335901)))

(assert (= (and b!554472 ((_ is Cons!5517) (originalCharacters!1094 token!491))) b!555018))

(declare-fun b!555020 () Bool)

(declare-fun e!335902 () Bool)

(declare-fun tp!175435 () Bool)

(declare-fun tp!175434 () Bool)

(assert (=> b!555020 (= e!335902 (and tp!175435 tp!175434))))

(assert (=> b!554468 (= tp!175360 e!335902)))

(declare-fun b!555019 () Bool)

(assert (=> b!555019 (= e!335902 tp_is_empty!3133)))

(declare-fun b!555021 () Bool)

(declare-fun tp!175432 () Bool)

(assert (=> b!555021 (= e!335902 tp!175432)))

(declare-fun b!555022 () Bool)

(declare-fun tp!175436 () Bool)

(declare-fun tp!175433 () Bool)

(assert (=> b!555022 (= e!335902 (and tp!175436 tp!175433))))

(assert (= (and b!554468 ((_ is ElementMatch!1389) (regex!1055 (rule!1785 token!491)))) b!555019))

(assert (= (and b!554468 ((_ is Concat!2468) (regex!1055 (rule!1785 token!491)))) b!555020))

(assert (= (and b!554468 ((_ is Star!1389) (regex!1055 (rule!1785 token!491)))) b!555021))

(assert (= (and b!554468 ((_ is Union!1389) (regex!1055 (rule!1785 token!491)))) b!555022))

(declare-fun b!555033 () Bool)

(declare-fun b_free!15589 () Bool)

(declare-fun b_next!15605 () Bool)

(assert (=> b!555033 (= b_free!15589 (not b_next!15605))))

(declare-fun tb!48427 () Bool)

(declare-fun t!75390 () Bool)

(assert (=> (and b!555033 (= (toValue!1906 (transformation!1055 (h!10919 (t!75347 rules!3103)))) (toValue!1906 (transformation!1055 (rule!1785 token!491)))) t!75390) tb!48427))

(declare-fun result!54246 () Bool)

(assert (= result!54246 result!54212))

(assert (=> d!193343 t!75390))

(declare-fun tb!48429 () Bool)

(declare-fun t!75392 () Bool)

(assert (=> (and b!555033 (= (toValue!1906 (transformation!1055 (h!10919 (t!75347 rules!3103)))) (toValue!1906 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))) t!75392) tb!48429))

(declare-fun result!54248 () Bool)

(assert (= result!54248 result!54236))

(assert (=> d!193413 t!75392))

(declare-fun tp!175445 () Bool)

(declare-fun b_and!54223 () Bool)

(assert (=> b!555033 (= tp!175445 (and (=> t!75390 result!54246) (=> t!75392 result!54248) b_and!54223))))

(declare-fun b_free!15591 () Bool)

(declare-fun b_next!15607 () Bool)

(assert (=> b!555033 (= b_free!15591 (not b_next!15607))))

(declare-fun tb!48431 () Bool)

(declare-fun t!75394 () Bool)

(assert (=> (and b!555033 (= (toChars!1765 (transformation!1055 (h!10919 (t!75347 rules!3103)))) (toChars!1765 (transformation!1055 (rule!1785 token!491)))) t!75394) tb!48431))

(declare-fun result!54250 () Bool)

(assert (= result!54250 result!54186))

(assert (=> d!193249 t!75394))

(assert (=> b!554839 t!75394))

(declare-fun tb!48433 () Bool)

(declare-fun t!75396 () Bool)

(assert (=> (and b!555033 (= (toChars!1765 (transformation!1055 (h!10919 (t!75347 rules!3103)))) (toChars!1765 (transformation!1055 (rule!1785 (_1!3526 (v!16235 lt!234142)))))) t!75396) tb!48433))

(declare-fun result!54252 () Bool)

(assert (= result!54252 result!54232))

(assert (=> d!193393 t!75396))

(declare-fun b_and!54225 () Bool)

(declare-fun tp!175447 () Bool)

(assert (=> b!555033 (= tp!175447 (and (=> t!75394 result!54250) (=> t!75396 result!54252) b_and!54225))))

(declare-fun e!335914 () Bool)

(assert (=> b!555033 (= e!335914 (and tp!175445 tp!175447))))

(declare-fun tp!175446 () Bool)

(declare-fun e!335912 () Bool)

(declare-fun b!555032 () Bool)

(assert (=> b!555032 (= e!335912 (and tp!175446 (inv!6923 (tag!1317 (h!10919 (t!75347 rules!3103)))) (inv!6927 (transformation!1055 (h!10919 (t!75347 rules!3103)))) e!335914))))

(declare-fun b!555031 () Bool)

(declare-fun e!335913 () Bool)

(declare-fun tp!175448 () Bool)

(assert (=> b!555031 (= e!335913 (and e!335912 tp!175448))))

(assert (=> b!554473 (= tp!175359 e!335913)))

(assert (= b!555032 b!555033))

(assert (= b!555031 b!555032))

(assert (= (and b!554473 ((_ is Cons!5518) (t!75347 rules!3103))) b!555031))

(declare-fun m!805359 () Bool)

(assert (=> b!555032 m!805359))

(declare-fun m!805361 () Bool)

(assert (=> b!555032 m!805361))

(declare-fun b!555034 () Bool)

(declare-fun e!335915 () Bool)

(declare-fun tp!175449 () Bool)

(assert (=> b!555034 (= e!335915 (and tp_is_empty!3133 tp!175449))))

(assert (=> b!554464 (= tp!175363 e!335915)))

(assert (= (and b!554464 ((_ is Cons!5517) (t!75346 input!2705))) b!555034))

(declare-fun b!555035 () Bool)

(declare-fun e!335916 () Bool)

(declare-fun tp!175450 () Bool)

(assert (=> b!555035 (= e!335916 (and tp_is_empty!3133 tp!175450))))

(assert (=> b!554471 (= tp!175361 e!335916)))

(assert (= (and b!554471 ((_ is Cons!5517) (t!75346 suffix!1342))) b!555035))

(declare-fun b_lambda!21345 () Bool)

(assert (= b_lambda!21319 (or (and b!554491 b_free!15579 (= (toChars!1765 (transformation!1055 (h!10919 rules!3103))) (toChars!1765 (transformation!1055 (rule!1785 token!491))))) (and b!554483 b_free!15583) (and b!555033 b_free!15591 (= (toChars!1765 (transformation!1055 (h!10919 (t!75347 rules!3103)))) (toChars!1765 (transformation!1055 (rule!1785 token!491))))) b_lambda!21345)))

(declare-fun b_lambda!21347 () Bool)

(assert (= b_lambda!21329 (or (and b!554491 b_free!15577 (= (toValue!1906 (transformation!1055 (h!10919 rules!3103))) (toValue!1906 (transformation!1055 (rule!1785 token!491))))) (and b!554483 b_free!15581) (and b!555033 b_free!15589 (= (toValue!1906 (transformation!1055 (h!10919 (t!75347 rules!3103)))) (toValue!1906 (transformation!1055 (rule!1785 token!491))))) b_lambda!21347)))

(declare-fun b_lambda!21349 () Bool)

(assert (= b_lambda!21339 (or (and b!554491 b_free!15579 (= (toChars!1765 (transformation!1055 (h!10919 rules!3103))) (toChars!1765 (transformation!1055 (rule!1785 token!491))))) (and b!554483 b_free!15583) (and b!555033 b_free!15591 (= (toChars!1765 (transformation!1055 (h!10919 (t!75347 rules!3103)))) (toChars!1765 (transformation!1055 (rule!1785 token!491))))) b_lambda!21349)))

(check-sat (not b!554896) (not b!554923) (not b!554950) (not b!554889) (not b!554985) (not b!554906) (not d!193225) (not d!193403) (not b!554839) (not d!193391) (not d!193393) (not b!554940) (not d!193379) (not d!193367) (not b!554936) (not b!554988) (not b!554895) b_and!54223 (not b!554931) (not d!193441) (not b!554917) (not b!554537) (not b_lambda!21349) (not b!554806) (not b!554779) (not d!193411) (not b!555035) (not b!554983) (not d!193377) (not b!554938) (not b!554840) (not b!554866) (not b_lambda!21347) (not b!554930) (not b_lambda!21341) (not b!555012) (not b_next!15607) (not b!555022) (not d!193415) (not tb!48423) (not b!554926) (not b!554734) (not b!554997) (not b!554775) (not b!554760) (not b!554865) (not d!193397) (not b!554890) (not b!554937) (not b!554503) (not d!193429) (not b!554738) (not d!193249) (not b!554942) (not b_next!15593) (not b_lambda!21343) (not d!193257) (not d!193421) (not b!554945) (not d!193247) (not b!554884) (not b!554886) (not b_next!15595) (not b!554989) (not d!193427) (not b!554861) (not tb!48387) (not b!554544) (not d!193399) (not b!555031) (not bm!38467) (not d!193323) (not b!555020) (not d!193451) (not b_next!15605) (not b!554869) (not tb!48419) (not b!554994) (not b!555021) (not b!555018) (not b!554947) (not d!193439) (not b!554933) (not b_lambda!21345) (not d!193423) (not b!554885) (not d!193437) (not b!554948) (not b!554778) (not d!193353) (not tb!48407) (not b!554731) (not b!554776) (not d!193409) b_and!54221 (not b_next!15597) (not d!193255) (not b!554774) (not b!554907) (not b!554777) (not b!554893) (not bm!38466) (not d!193375) (not d!193425) (not b!554538) (not b!554941) (not b!554733) tp_is_empty!3133 (not b!554887) (not b!554862) (not b!554772) (not b!555032) (not b!555034) (not b!555013) (not d!193381) (not bm!38470) (not b!554864) (not b!554894) (not d!193337) (not b!554929) (not b!554918) (not b!554863) (not b!554980) (not b!554736) (not d!193253) (not b!554545) (not d!193447) b_and!54215 (not b!554773) (not b!554914) (not b!554732) (not d!193445) (not b!555011) (not b!554892) (not b!554928) (not d!193237) (not b!554891) (not d!193431) (not d!193269) (not d!193383) (not b!554999) b_and!54225 (not d!193335) (not d!193407) (not b!554908) (not b!554981) b_and!54217 (not b!554867) (not b!554737) (not b!554916) b_and!54219 (not d!193443) (not b!554735) (not b_next!15599) (not b!554859) (not b!554870))
(check-sat b_and!54223 (not b_next!15607) (not b_next!15593) (not b_next!15595) (not b_next!15605) b_and!54215 b_and!54219 (not b_next!15599) b_and!54221 (not b_next!15597) b_and!54217 b_and!54225)
