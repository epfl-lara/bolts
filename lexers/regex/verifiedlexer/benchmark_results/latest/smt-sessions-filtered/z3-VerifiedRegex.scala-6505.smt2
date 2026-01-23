; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342262 () Bool)

(assert start!342262)

(declare-fun b!3657991 () Bool)

(declare-fun b_free!96465 () Bool)

(declare-fun b_next!97169 () Bool)

(assert (=> b!3657991 (= b_free!96465 (not b_next!97169))))

(declare-fun tp!1114592 () Bool)

(declare-fun b_and!271227 () Bool)

(assert (=> b!3657991 (= tp!1114592 b_and!271227)))

(declare-fun b_free!96467 () Bool)

(declare-fun b_next!97171 () Bool)

(assert (=> b!3657991 (= b_free!96467 (not b_next!97171))))

(declare-fun tp!1114588 () Bool)

(declare-fun b_and!271229 () Bool)

(assert (=> b!3657991 (= tp!1114588 b_and!271229)))

(declare-fun b!3658013 () Bool)

(declare-fun b_free!96469 () Bool)

(declare-fun b_next!97173 () Bool)

(assert (=> b!3658013 (= b_free!96469 (not b_next!97173))))

(declare-fun tp!1114582 () Bool)

(declare-fun b_and!271231 () Bool)

(assert (=> b!3658013 (= tp!1114582 b_and!271231)))

(declare-fun b_free!96471 () Bool)

(declare-fun b_next!97175 () Bool)

(assert (=> b!3658013 (= b_free!96471 (not b_next!97175))))

(declare-fun tp!1114581 () Bool)

(declare-fun b_and!271233 () Bool)

(assert (=> b!3658013 (= tp!1114581 b_and!271233)))

(declare-fun b!3658022 () Bool)

(declare-fun b_free!96473 () Bool)

(declare-fun b_next!97177 () Bool)

(assert (=> b!3658022 (= b_free!96473 (not b_next!97177))))

(declare-fun tp!1114593 () Bool)

(declare-fun b_and!271235 () Bool)

(assert (=> b!3658022 (= tp!1114593 b_and!271235)))

(declare-fun b_free!96475 () Bool)

(declare-fun b_next!97179 () Bool)

(assert (=> b!3658022 (= b_free!96475 (not b_next!97179))))

(declare-fun tp!1114584 () Bool)

(declare-fun b_and!271237 () Bool)

(assert (=> b!3658022 (= tp!1114584 b_and!271237)))

(declare-fun b!3658009 () Bool)

(declare-fun b_free!96477 () Bool)

(declare-fun b_next!97181 () Bool)

(assert (=> b!3658009 (= b_free!96477 (not b_next!97181))))

(declare-fun tp!1114591 () Bool)

(declare-fun b_and!271239 () Bool)

(assert (=> b!3658009 (= tp!1114591 b_and!271239)))

(declare-fun b_free!96479 () Bool)

(declare-fun b_next!97183 () Bool)

(assert (=> b!3658009 (= b_free!96479 (not b_next!97183))))

(declare-fun tp!1114586 () Bool)

(declare-fun b_and!271241 () Bool)

(assert (=> b!3658009 (= tp!1114586 b_and!271241)))

(declare-fun e!2265000 () Bool)

(assert (=> b!3657991 (= e!2265000 (and tp!1114592 tp!1114588))))

(declare-fun b!3657992 () Bool)

(declare-fun res!1484756 () Bool)

(declare-fun e!2265007 () Bool)

(assert (=> b!3657992 (=> (not res!1484756) (not e!2265007))))

(declare-datatypes ((List!38717 0))(
  ( (Nil!38593) (Cons!38593 (h!44013 (_ BitVec 16)) (t!298220 List!38717)) )
))
(declare-datatypes ((TokenValue!6020 0))(
  ( (FloatLiteralValue!12040 (text!42585 List!38717)) (TokenValueExt!6019 (__x!24257 Int)) (Broken!30100 (value!185449 List!38717)) (Object!6143) (End!6020) (Def!6020) (Underscore!6020) (Match!6020) (Else!6020) (Error!6020) (Case!6020) (If!6020) (Extends!6020) (Abstract!6020) (Class!6020) (Val!6020) (DelimiterValue!12040 (del!6080 List!38717)) (KeywordValue!6026 (value!185450 List!38717)) (CommentValue!12040 (value!185451 List!38717)) (WhitespaceValue!12040 (value!185452 List!38717)) (IndentationValue!6020 (value!185453 List!38717)) (String!43433) (Int32!6020) (Broken!30101 (value!185454 List!38717)) (Boolean!6021) (Unit!55804) (OperatorValue!6023 (op!6080 List!38717)) (IdentifierValue!12040 (value!185455 List!38717)) (IdentifierValue!12041 (value!185456 List!38717)) (WhitespaceValue!12041 (value!185457 List!38717)) (True!12040) (False!12040) (Broken!30102 (value!185458 List!38717)) (Broken!30103 (value!185459 List!38717)) (True!12041) (RightBrace!6020) (RightBracket!6020) (Colon!6020) (Null!6020) (Comma!6020) (LeftBracket!6020) (False!12041) (LeftBrace!6020) (ImaginaryLiteralValue!6020 (text!42586 List!38717)) (StringLiteralValue!18060 (value!185460 List!38717)) (EOFValue!6020 (value!185461 List!38717)) (IdentValue!6020 (value!185462 List!38717)) (DelimiterValue!12041 (value!185463 List!38717)) (DedentValue!6020 (value!185464 List!38717)) (NewLineValue!6020 (value!185465 List!38717)) (IntegerValue!18060 (value!185466 (_ BitVec 32)) (text!42587 List!38717)) (IntegerValue!18061 (value!185467 Int) (text!42588 List!38717)) (Times!6020) (Or!6020) (Equal!6020) (Minus!6020) (Broken!30104 (value!185468 List!38717)) (And!6020) (Div!6020) (LessEqual!6020) (Mod!6020) (Concat!16569) (Not!6020) (Plus!6020) (SpaceValue!6020 (value!185469 List!38717)) (IntegerValue!18062 (value!185470 Int) (text!42589 List!38717)) (StringLiteralValue!18061 (text!42590 List!38717)) (FloatLiteralValue!12041 (text!42591 List!38717)) (BytesLiteralValue!6020 (value!185471 List!38717)) (CommentValue!12041 (value!185472 List!38717)) (StringLiteralValue!18062 (value!185473 List!38717)) (ErrorTokenValue!6020 (msg!6081 List!38717)) )
))
(declare-datatypes ((C!21284 0))(
  ( (C!21285 (val!12690 Int)) )
))
(declare-datatypes ((Regex!10549 0))(
  ( (ElementMatch!10549 (c!632214 C!21284)) (Concat!16570 (regOne!21610 Regex!10549) (regTwo!21610 Regex!10549)) (EmptyExpr!10549) (Star!10549 (reg!10878 Regex!10549)) (EmptyLang!10549) (Union!10549 (regOne!21611 Regex!10549) (regTwo!21611 Regex!10549)) )
))
(declare-datatypes ((String!43434 0))(
  ( (String!43435 (value!185474 String)) )
))
(declare-datatypes ((List!38718 0))(
  ( (Nil!38594) (Cons!38594 (h!44014 C!21284) (t!298221 List!38718)) )
))
(declare-datatypes ((IArray!23603 0))(
  ( (IArray!23604 (innerList!11859 List!38718)) )
))
(declare-datatypes ((Conc!11799 0))(
  ( (Node!11799 (left!30120 Conc!11799) (right!30450 Conc!11799) (csize!23828 Int) (cheight!12010 Int)) (Leaf!18305 (xs!15001 IArray!23603) (csize!23829 Int)) (Empty!11799) )
))
(declare-datatypes ((BalanceConc!23212 0))(
  ( (BalanceConc!23213 (c!632215 Conc!11799)) )
))
(declare-datatypes ((TokenValueInjection!11468 0))(
  ( (TokenValueInjection!11469 (toValue!8082 Int) (toChars!7941 Int)) )
))
(declare-datatypes ((Rule!11380 0))(
  ( (Rule!11381 (regex!5790 Regex!10549) (tag!6564 String!43434) (isSeparator!5790 Bool) (transformation!5790 TokenValueInjection!11468)) )
))
(declare-datatypes ((Token!10946 0))(
  ( (Token!10947 (value!185475 TokenValue!6020) (rule!8598 Rule!11380) (size!29483 Int) (originalCharacters!6504 List!38718)) )
))
(declare-fun token!511 () Token!10946)

(declare-fun rule!403 () Rule!11380)

(assert (=> b!3657992 (= res!1484756 (= (rule!8598 token!511) rule!403))))

(declare-datatypes ((Unit!55805 0))(
  ( (Unit!55806) )
))
(declare-fun call!264540 () Unit!55805)

(declare-datatypes ((tuple2!38456 0))(
  ( (tuple2!38457 (_1!22362 Token!10946) (_2!22362 List!38718)) )
))
(declare-fun lt!1271494 () tuple2!38456)

(declare-fun lt!1271499 () List!38718)

(declare-fun lt!1271513 () C!21284)

(declare-fun bm!264530 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!738 (Regex!10549 List!38718 C!21284) Unit!55805)

(assert (=> bm!264530 (= call!264540 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!738 (regex!5790 (rule!8598 (_1!22362 lt!1271494))) lt!1271499 lt!1271513))))

(declare-fun b!3657993 () Bool)

(declare-fun e!2265006 () Bool)

(assert (=> b!3657993 (= e!2265007 (not e!2265006))))

(declare-fun res!1484767 () Bool)

(assert (=> b!3657993 (=> res!1484767 e!2265006)))

(declare-fun lt!1271531 () List!38718)

(declare-fun matchR!5118 (Regex!10549 List!38718) Bool)

(assert (=> b!3657993 (= res!1484767 (not (matchR!5118 (regex!5790 rule!403) lt!1271531)))))

(declare-datatypes ((LexerInterface!5379 0))(
  ( (LexerInterfaceExt!5376 (__x!24258 Int)) (Lexer!5377) )
))
(declare-fun thiss!23823 () LexerInterface!5379)

(declare-fun ruleValid!2054 (LexerInterface!5379 Rule!11380) Bool)

(assert (=> b!3657993 (ruleValid!2054 thiss!23823 rule!403)))

(declare-datatypes ((List!38719 0))(
  ( (Nil!38595) (Cons!38595 (h!44015 Rule!11380) (t!298222 List!38719)) )
))
(declare-fun rules!3307 () List!38719)

(declare-fun lt!1271514 () Unit!55805)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1208 (LexerInterface!5379 Rule!11380 List!38719) Unit!55805)

(assert (=> b!3657993 (= lt!1271514 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1208 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3657994 () Bool)

(declare-fun e!2264987 () Unit!55805)

(declare-fun Unit!55807 () Unit!55805)

(assert (=> b!3657994 (= e!2264987 Unit!55807)))

(declare-fun lt!1271516 () List!38718)

(declare-fun lt!1271509 () Unit!55805)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!332 (LexerInterface!5379 List!38719 Rule!11380 List!38718 List!38718 List!38718 Rule!11380) Unit!55805)

(assert (=> b!3657994 (= lt!1271509 (lemmaMaxPrefixOutputsMaxPrefix!332 thiss!23823 rules!3307 (rule!8598 (_1!22362 lt!1271494)) lt!1271499 lt!1271516 lt!1271531 rule!403))))

(assert (=> b!3657994 false))

(declare-fun b!3657995 () Bool)

(declare-fun e!2265005 () Bool)

(assert (=> b!3657995 (= e!2265005 e!2265007)))

(declare-fun res!1484765 () Bool)

(assert (=> b!3657995 (=> (not res!1484765) (not e!2265007))))

(declare-fun lt!1271487 () tuple2!38456)

(assert (=> b!3657995 (= res!1484765 (= (_1!22362 lt!1271487) token!511))))

(declare-datatypes ((Option!8208 0))(
  ( (None!8207) (Some!8207 (v!38087 tuple2!38456)) )
))
(declare-fun lt!1271489 () Option!8208)

(declare-fun get!12713 (Option!8208) tuple2!38456)

(assert (=> b!3657995 (= lt!1271487 (get!12713 lt!1271489))))

(declare-fun b!3657996 () Bool)

(declare-fun res!1484752 () Bool)

(declare-fun e!2264981 () Bool)

(assert (=> b!3657996 (=> res!1484752 e!2264981)))

(declare-fun anOtherTypeRule!33 () Rule!11380)

(declare-fun contains!7645 (List!38718 C!21284) Bool)

(declare-fun usedCharacters!1002 (Regex!10549) List!38718)

(assert (=> b!3657996 (= res!1484752 (not (contains!7645 (usedCharacters!1002 (regex!5790 anOtherTypeRule!33)) lt!1271513)))))

(declare-fun b!3657997 () Bool)

(assert (=> b!3657997 (= e!2265006 e!2264981)))

(declare-fun res!1484766 () Bool)

(assert (=> b!3657997 (=> res!1484766 e!2264981)))

(declare-fun lt!1271502 () List!38718)

(assert (=> b!3657997 (= res!1484766 (contains!7645 lt!1271502 lt!1271513))))

(declare-fun suffix!1395 () List!38718)

(declare-fun head!7814 (List!38718) C!21284)

(assert (=> b!3657997 (= lt!1271513 (head!7814 suffix!1395))))

(assert (=> b!3657997 (= lt!1271502 (usedCharacters!1002 (regex!5790 rule!403)))))

(declare-fun b!3657998 () Bool)

(declare-fun e!2265009 () Unit!55805)

(declare-fun e!2264980 () Unit!55805)

(assert (=> b!3657998 (= e!2265009 e!2264980)))

(declare-fun c!632209 () Bool)

(assert (=> b!3657998 (= c!632209 (isSeparator!5790 (rule!8598 (_1!22362 lt!1271494))))))

(declare-fun e!2264993 () Bool)

(declare-fun tp!1114594 () Bool)

(declare-fun e!2264978 () Bool)

(declare-fun b!3657999 () Bool)

(declare-fun inv!21 (TokenValue!6020) Bool)

(assert (=> b!3657999 (= e!2264978 (and (inv!21 (value!185475 token!511)) e!2264993 tp!1114594))))

(declare-fun b!3658000 () Bool)

(declare-fun e!2265003 () Unit!55805)

(declare-fun e!2264996 () Unit!55805)

(assert (=> b!3658000 (= e!2265003 e!2264996)))

(declare-fun lt!1271512 () Unit!55805)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!98 (List!38718 List!38718 List!38718 List!38718) Unit!55805)

(assert (=> b!3658000 (= lt!1271512 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!98 lt!1271531 suffix!1395 lt!1271499 lt!1271516))))

(assert (=> b!3658000 (contains!7645 lt!1271499 lt!1271513)))

(declare-fun c!632211 () Bool)

(assert (=> b!3658000 (= c!632211 (isSeparator!5790 rule!403))))

(declare-fun b!3658001 () Bool)

(declare-fun res!1484761 () Bool)

(declare-fun e!2264997 () Bool)

(assert (=> b!3658001 (=> (not res!1484761) (not e!2264997))))

(declare-fun contains!7646 (List!38719 Rule!11380) Bool)

(assert (=> b!3658001 (= res!1484761 (contains!7646 rules!3307 rule!403))))

(declare-fun b!3658002 () Bool)

(declare-fun res!1484749 () Bool)

(assert (=> b!3658002 (=> (not res!1484749) (not e!2264997))))

(assert (=> b!3658002 (= res!1484749 (contains!7646 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1114585 () Bool)

(declare-fun b!3658003 () Bool)

(declare-fun e!2265001 () Bool)

(declare-fun inv!52054 (String!43434) Bool)

(declare-fun inv!52057 (TokenValueInjection!11468) Bool)

(assert (=> b!3658003 (= e!2264993 (and tp!1114585 (inv!52054 (tag!6564 (rule!8598 token!511))) (inv!52057 (transformation!5790 (rule!8598 token!511))) e!2265001))))

(declare-fun b!3658004 () Bool)

(declare-fun res!1484754 () Bool)

(assert (=> b!3658004 (=> res!1484754 e!2265006)))

(declare-fun isEmpty!22884 (List!38718) Bool)

(assert (=> b!3658004 (= res!1484754 (isEmpty!22884 suffix!1395))))

(declare-fun lt!1271501 () C!21284)

(declare-fun call!264539 () Unit!55805)

(declare-fun bm!264531 () Bool)

(assert (=> bm!264531 (= call!264539 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!738 (regex!5790 (rule!8598 (_1!22362 lt!1271494))) lt!1271499 lt!1271501))))

(declare-fun b!3658005 () Bool)

(declare-fun Unit!55808 () Unit!55805)

(assert (=> b!3658005 (= e!2264980 Unit!55808)))

(declare-fun b!3658006 () Bool)

(declare-fun e!2264995 () Unit!55805)

(declare-fun Unit!55809 () Unit!55805)

(assert (=> b!3658006 (= e!2264995 Unit!55809)))

(declare-fun b!3658007 () Bool)

(assert (=> b!3658007 false))

(declare-fun lt!1271511 () Unit!55805)

(assert (=> b!3658007 (= lt!1271511 call!264539)))

(declare-fun call!264537 () Bool)

(assert (=> b!3658007 (not call!264537)))

(declare-fun lt!1271530 () Unit!55805)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!436 (LexerInterface!5379 List!38719 List!38719 Rule!11380 Rule!11380 C!21284) Unit!55805)

(assert (=> b!3658007 (= lt!1271530 (lemmaNonSepRuleNotContainsCharContainedInASepRule!436 thiss!23823 rules!3307 rules!3307 (rule!8598 (_1!22362 lt!1271494)) rule!403 lt!1271501))))

(declare-fun e!2264988 () Unit!55805)

(declare-fun Unit!55810 () Unit!55805)

(assert (=> b!3658007 (= e!2264988 Unit!55810)))

(declare-fun b!3658008 () Bool)

(declare-fun res!1484758 () Bool)

(assert (=> b!3658008 (=> (not res!1484758) (not e!2264997))))

(declare-fun isEmpty!22885 (List!38719) Bool)

(assert (=> b!3658008 (= res!1484758 (not (isEmpty!22885 rules!3307)))))

(declare-fun e!2264984 () Bool)

(assert (=> b!3658009 (= e!2264984 (and tp!1114591 tp!1114586))))

(declare-fun bm!264532 () Bool)

(declare-fun call!264535 () List!38718)

(assert (=> bm!264532 (= call!264535 (usedCharacters!1002 (regex!5790 (rule!8598 (_1!22362 lt!1271494)))))))

(declare-fun res!1484751 () Bool)

(assert (=> start!342262 (=> (not res!1484751) (not e!2264997))))

(get-info :version)

(assert (=> start!342262 (= res!1484751 ((_ is Lexer!5377) thiss!23823))))

(assert (=> start!342262 e!2264997))

(declare-fun e!2265004 () Bool)

(assert (=> start!342262 e!2265004))

(declare-fun e!2264998 () Bool)

(assert (=> start!342262 e!2264998))

(assert (=> start!342262 true))

(declare-fun inv!52058 (Token!10946) Bool)

(assert (=> start!342262 (and (inv!52058 token!511) e!2264978)))

(declare-fun e!2264990 () Bool)

(assert (=> start!342262 e!2264990))

(declare-fun e!2264991 () Bool)

(assert (=> start!342262 e!2264991))

(declare-fun b!3658010 () Bool)

(declare-fun Unit!55811 () Unit!55805)

(assert (=> b!3658010 (= e!2264995 Unit!55811)))

(declare-fun lt!1271520 () Unit!55805)

(assert (=> b!3658010 (= lt!1271520 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!738 (regex!5790 rule!403) lt!1271531 lt!1271501))))

(assert (=> b!3658010 false))

(declare-fun b!3658011 () Bool)

(declare-fun res!1484768 () Bool)

(assert (=> b!3658011 (=> res!1484768 e!2264981)))

(declare-fun sepAndNonSepRulesDisjointChars!1958 (List!38719 List!38719) Bool)

(assert (=> b!3658011 (= res!1484768 (not (sepAndNonSepRulesDisjointChars!1958 rules!3307 rules!3307)))))

(declare-fun b!3658012 () Bool)

(declare-fun Unit!55812 () Unit!55805)

(assert (=> b!3658012 (= e!2265003 Unit!55812)))

(declare-fun e!2264979 () Bool)

(assert (=> b!3658013 (= e!2264979 (and tp!1114582 tp!1114581))))

(declare-fun b!3658014 () Bool)

(assert (=> b!3658014 (= e!2265009 e!2264988)))

(declare-fun c!632213 () Bool)

(assert (=> b!3658014 (= c!632213 (not (isSeparator!5790 (rule!8598 (_1!22362 lt!1271494)))))))

(declare-fun b!3658015 () Bool)

(declare-fun tp!1114589 () Bool)

(assert (=> b!3658015 (= e!2264991 (and tp!1114589 (inv!52054 (tag!6564 anOtherTypeRule!33)) (inv!52057 (transformation!5790 anOtherTypeRule!33)) e!2264984))))

(declare-fun b!3658016 () Bool)

(declare-fun e!2264983 () Bool)

(declare-fun tp!1114590 () Bool)

(assert (=> b!3658016 (= e!2265004 (and e!2264983 tp!1114590))))

(declare-fun b!3658017 () Bool)

(declare-fun e!2264994 () Bool)

(assert (=> b!3658017 (= e!2264994 true)))

(declare-fun lt!1271491 () Unit!55805)

(assert (=> b!3658017 (= lt!1271491 e!2264987)))

(declare-fun c!632207 () Bool)

(declare-fun lt!1271522 () Int)

(declare-fun lt!1271517 () Int)

(assert (=> b!3658017 (= c!632207 (< lt!1271522 lt!1271517))))

(declare-fun lt!1271526 () Unit!55805)

(assert (=> b!3658017 (= lt!1271526 e!2265003)))

(declare-fun c!632212 () Bool)

(assert (=> b!3658017 (= c!632212 (> lt!1271522 lt!1271517))))

(declare-fun lt!1271496 () BalanceConc!23212)

(declare-fun size!29484 (BalanceConc!23212) Int)

(assert (=> b!3658017 (= lt!1271517 (size!29484 lt!1271496))))

(declare-fun lt!1271497 () Unit!55805)

(assert (=> b!3658017 (= lt!1271497 e!2265009)))

(declare-fun c!632210 () Bool)

(assert (=> b!3658017 (= c!632210 (isSeparator!5790 rule!403))))

(declare-fun lt!1271505 () Unit!55805)

(assert (=> b!3658017 (= lt!1271505 e!2264995)))

(declare-fun c!632208 () Bool)

(assert (=> b!3658017 (= c!632208 (not (contains!7645 lt!1271502 lt!1271501)))))

(assert (=> b!3658017 (= lt!1271501 (head!7814 lt!1271499))))

(declare-fun b!3658018 () Bool)

(declare-fun Unit!55813 () Unit!55805)

(assert (=> b!3658018 (= e!2264988 Unit!55813)))

(declare-fun b!3658019 () Bool)

(declare-fun tp_is_empty!18181 () Bool)

(declare-fun tp!1114583 () Bool)

(assert (=> b!3658019 (= e!2264998 (and tp_is_empty!18181 tp!1114583))))

(declare-fun tp!1114580 () Bool)

(declare-fun b!3658020 () Bool)

(assert (=> b!3658020 (= e!2264983 (and tp!1114580 (inv!52054 (tag!6564 (h!44015 rules!3307))) (inv!52057 (transformation!5790 (h!44015 rules!3307))) e!2265000))))

(declare-fun b!3658021 () Bool)

(declare-fun e!2265010 () Bool)

(assert (=> b!3658021 (= e!2264981 e!2265010)))

(declare-fun res!1484748 () Bool)

(assert (=> b!3658021 (=> res!1484748 e!2265010)))

(declare-fun isPrefix!3153 (List!38718 List!38718) Bool)

(assert (=> b!3658021 (= res!1484748 (not (isPrefix!3153 lt!1271499 lt!1271516)))))

(declare-fun ++!9606 (List!38718 List!38718) List!38718)

(assert (=> b!3658021 (isPrefix!3153 lt!1271499 (++!9606 lt!1271499 (_2!22362 lt!1271494)))))

(declare-fun lt!1271518 () Unit!55805)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2072 (List!38718 List!38718) Unit!55805)

(assert (=> b!3658021 (= lt!1271518 (lemmaConcatTwoListThenFirstIsPrefix!2072 lt!1271499 (_2!22362 lt!1271494)))))

(declare-fun lt!1271528 () BalanceConc!23212)

(declare-fun list!14312 (BalanceConc!23212) List!38718)

(assert (=> b!3658021 (= lt!1271499 (list!14312 lt!1271528))))

(declare-fun charsOf!3804 (Token!10946) BalanceConc!23212)

(assert (=> b!3658021 (= lt!1271528 (charsOf!3804 (_1!22362 lt!1271494)))))

(declare-fun e!2264982 () Bool)

(assert (=> b!3658021 e!2264982))

(declare-fun res!1484764 () Bool)

(assert (=> b!3658021 (=> (not res!1484764) (not e!2264982))))

(declare-datatypes ((Option!8209 0))(
  ( (None!8208) (Some!8208 (v!38088 Rule!11380)) )
))
(declare-fun lt!1271519 () Option!8209)

(declare-fun isDefined!6440 (Option!8209) Bool)

(assert (=> b!3658021 (= res!1484764 (isDefined!6440 lt!1271519))))

(declare-fun getRuleFromTag!1394 (LexerInterface!5379 List!38719 String!43434) Option!8209)

(assert (=> b!3658021 (= lt!1271519 (getRuleFromTag!1394 thiss!23823 rules!3307 (tag!6564 (rule!8598 (_1!22362 lt!1271494)))))))

(declare-fun lt!1271524 () Unit!55805)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1394 (LexerInterface!5379 List!38719 List!38718 Token!10946) Unit!55805)

(assert (=> b!3658021 (= lt!1271524 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1394 thiss!23823 rules!3307 lt!1271516 (_1!22362 lt!1271494)))))

(declare-fun lt!1271525 () Option!8208)

(assert (=> b!3658021 (= lt!1271494 (get!12713 lt!1271525))))

(declare-fun lt!1271490 () Unit!55805)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1057 (LexerInterface!5379 List!38719 List!38718 List!38718) Unit!55805)

(assert (=> b!3658021 (= lt!1271490 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1057 thiss!23823 rules!3307 lt!1271531 suffix!1395))))

(declare-fun maxPrefix!2913 (LexerInterface!5379 List!38719 List!38718) Option!8208)

(assert (=> b!3658021 (= lt!1271525 (maxPrefix!2913 thiss!23823 rules!3307 lt!1271516))))

(assert (=> b!3658021 (isPrefix!3153 lt!1271531 lt!1271516)))

(declare-fun lt!1271507 () Unit!55805)

(assert (=> b!3658021 (= lt!1271507 (lemmaConcatTwoListThenFirstIsPrefix!2072 lt!1271531 suffix!1395))))

(assert (=> b!3658021 (= lt!1271516 (++!9606 lt!1271531 suffix!1395))))

(assert (=> b!3658022 (= e!2265001 (and tp!1114593 tp!1114584))))

(declare-fun b!3658023 () Bool)

(declare-fun e!2264992 () Bool)

(assert (=> b!3658023 (= e!2264992 e!2264994)))

(declare-fun res!1484750 () Bool)

(assert (=> b!3658023 (=> res!1484750 e!2264994)))

(declare-fun lt!1271527 () Option!8208)

(declare-fun lt!1271523 () List!38718)

(assert (=> b!3658023 (= res!1484750 (or (not (= lt!1271523 (_2!22362 lt!1271494))) (not (= lt!1271527 (Some!8207 (tuple2!38457 (_1!22362 lt!1271494) lt!1271523))))))))

(assert (=> b!3658023 (= (_2!22362 lt!1271494) lt!1271523)))

(declare-fun lt!1271510 () Unit!55805)

(declare-fun lemmaSamePrefixThenSameSuffix!1480 (List!38718 List!38718 List!38718 List!38718 List!38718) Unit!55805)

(assert (=> b!3658023 (= lt!1271510 (lemmaSamePrefixThenSameSuffix!1480 lt!1271499 (_2!22362 lt!1271494) lt!1271499 lt!1271523 lt!1271516))))

(declare-fun getSuffix!1706 (List!38718 List!38718) List!38718)

(assert (=> b!3658023 (= lt!1271523 (getSuffix!1706 lt!1271516 lt!1271499))))

(declare-fun lt!1271532 () Int)

(declare-fun lt!1271504 () TokenValue!6020)

(assert (=> b!3658023 (= lt!1271527 (Some!8207 (tuple2!38457 (Token!10947 lt!1271504 (rule!8598 (_1!22362 lt!1271494)) lt!1271532 lt!1271499) (_2!22362 lt!1271494))))))

(declare-fun maxPrefixOneRule!2051 (LexerInterface!5379 Rule!11380 List!38718) Option!8208)

(assert (=> b!3658023 (= lt!1271527 (maxPrefixOneRule!2051 thiss!23823 (rule!8598 (_1!22362 lt!1271494)) lt!1271516))))

(declare-fun size!29485 (List!38718) Int)

(assert (=> b!3658023 (= lt!1271532 (size!29485 lt!1271499))))

(declare-fun apply!9292 (TokenValueInjection!11468 BalanceConc!23212) TokenValue!6020)

(declare-fun seqFromList!4339 (List!38718) BalanceConc!23212)

(assert (=> b!3658023 (= lt!1271504 (apply!9292 (transformation!5790 (rule!8598 (_1!22362 lt!1271494))) (seqFromList!4339 lt!1271499)))))

(declare-fun lt!1271492 () Unit!55805)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1107 (LexerInterface!5379 List!38719 List!38718 List!38718 List!38718 Rule!11380) Unit!55805)

(assert (=> b!3658023 (= lt!1271492 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1107 thiss!23823 rules!3307 lt!1271499 lt!1271516 (_2!22362 lt!1271494) (rule!8598 (_1!22362 lt!1271494))))))

(declare-fun bm!264533 () Bool)

(assert (=> bm!264533 (= call!264537 (contains!7645 call!264535 lt!1271501))))

(declare-fun b!3658024 () Bool)

(declare-fun res!1484757 () Bool)

(assert (=> b!3658024 (=> res!1484757 e!2265010)))

(assert (=> b!3658024 (= res!1484757 (not (matchR!5118 (regex!5790 (rule!8598 (_1!22362 lt!1271494))) lt!1271499)))))

(declare-fun b!3658025 () Bool)

(declare-fun res!1484763 () Bool)

(assert (=> b!3658025 (=> (not res!1484763) (not e!2264997))))

(declare-fun rulesInvariant!4776 (LexerInterface!5379 List!38719) Bool)

(assert (=> b!3658025 (= res!1484763 (rulesInvariant!4776 thiss!23823 rules!3307))))

(declare-fun b!3658026 () Bool)

(declare-fun e!2264986 () Bool)

(assert (=> b!3658026 (= e!2264982 e!2264986)))

(declare-fun res!1484762 () Bool)

(assert (=> b!3658026 (=> (not res!1484762) (not e!2264986))))

(declare-fun lt!1271498 () Rule!11380)

(assert (=> b!3658026 (= res!1484762 (matchR!5118 (regex!5790 lt!1271498) (list!14312 (charsOf!3804 (_1!22362 lt!1271494)))))))

(declare-fun get!12714 (Option!8209) Rule!11380)

(assert (=> b!3658026 (= lt!1271498 (get!12714 lt!1271519))))

(declare-fun b!3658027 () Bool)

(assert (=> b!3658027 false))

(declare-fun lt!1271503 () Unit!55805)

(assert (=> b!3658027 (= lt!1271503 call!264540)))

(declare-fun call!264538 () Bool)

(assert (=> b!3658027 (not call!264538)))

(declare-fun lt!1271495 () Unit!55805)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!318 (LexerInterface!5379 List!38719 List!38719 Rule!11380 Rule!11380 C!21284) Unit!55805)

(assert (=> b!3658027 (= lt!1271495 (lemmaSepRuleNotContainsCharContainedInANonSepRule!318 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8598 (_1!22362 lt!1271494)) lt!1271513))))

(declare-fun Unit!55814 () Unit!55805)

(assert (=> b!3658027 (= e!2264996 Unit!55814)))

(declare-fun b!3658028 () Bool)

(assert (=> b!3658028 (= e!2264986 (= (rule!8598 (_1!22362 lt!1271494)) lt!1271498))))

(declare-fun b!3658029 () Bool)

(declare-fun res!1484759 () Bool)

(assert (=> b!3658029 (=> (not res!1484759) (not e!2265007))))

(assert (=> b!3658029 (= res!1484759 (isEmpty!22884 (_2!22362 lt!1271487)))))

(declare-fun b!3658030 () Bool)

(declare-fun Unit!55815 () Unit!55805)

(assert (=> b!3658030 (= e!2264987 Unit!55815)))

(declare-fun b!3658031 () Bool)

(assert (=> b!3658031 false))

(declare-fun lt!1271529 () Unit!55805)

(assert (=> b!3658031 (= lt!1271529 call!264540)))

(assert (=> b!3658031 (not call!264538)))

(declare-fun lt!1271493 () Unit!55805)

(assert (=> b!3658031 (= lt!1271493 (lemmaNonSepRuleNotContainsCharContainedInASepRule!436 thiss!23823 rules!3307 rules!3307 (rule!8598 (_1!22362 lt!1271494)) anOtherTypeRule!33 lt!1271513))))

(declare-fun Unit!55816 () Unit!55805)

(assert (=> b!3658031 (= e!2264996 Unit!55816)))

(declare-fun b!3658032 () Bool)

(declare-fun res!1484755 () Bool)

(assert (=> b!3658032 (=> (not res!1484755) (not e!2264997))))

(assert (=> b!3658032 (= res!1484755 (not (= (isSeparator!5790 anOtherTypeRule!33) (isSeparator!5790 rule!403))))))

(declare-fun b!3658033 () Bool)

(declare-fun tp!1114587 () Bool)

(assert (=> b!3658033 (= e!2264990 (and tp!1114587 (inv!52054 (tag!6564 rule!403)) (inv!52057 (transformation!5790 rule!403)) e!2264979))))

(declare-fun b!3658034 () Bool)

(assert (=> b!3658034 (= e!2264997 e!2265005)))

(declare-fun res!1484753 () Bool)

(assert (=> b!3658034 (=> (not res!1484753) (not e!2265005))))

(declare-fun isDefined!6441 (Option!8208) Bool)

(assert (=> b!3658034 (= res!1484753 (isDefined!6441 lt!1271489))))

(assert (=> b!3658034 (= lt!1271489 (maxPrefix!2913 thiss!23823 rules!3307 lt!1271531))))

(assert (=> b!3658034 (= lt!1271531 (list!14312 lt!1271496))))

(assert (=> b!3658034 (= lt!1271496 (charsOf!3804 token!511))))

(declare-fun bm!264534 () Bool)

(declare-fun call!264536 () List!38718)

(assert (=> bm!264534 (= call!264538 (contains!7645 call!264536 lt!1271513))))

(declare-fun b!3658035 () Bool)

(assert (=> b!3658035 false))

(declare-fun lt!1271500 () Unit!55805)

(assert (=> b!3658035 (= lt!1271500 call!264539)))

(assert (=> b!3658035 (not call!264537)))

(declare-fun lt!1271506 () Unit!55805)

(assert (=> b!3658035 (= lt!1271506 (lemmaSepRuleNotContainsCharContainedInANonSepRule!318 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8598 (_1!22362 lt!1271494)) lt!1271501))))

(declare-fun Unit!55817 () Unit!55805)

(assert (=> b!3658035 (= e!2264980 Unit!55817)))

(declare-fun bm!264535 () Bool)

(assert (=> bm!264535 (= call!264536 (usedCharacters!1002 (regex!5790 (rule!8598 (_1!22362 lt!1271494)))))))

(declare-fun b!3658036 () Bool)

(assert (=> b!3658036 (= e!2265010 e!2264992)))

(declare-fun res!1484760 () Bool)

(assert (=> b!3658036 (=> res!1484760 e!2264992)))

(declare-fun lt!1271508 () TokenValue!6020)

(assert (=> b!3658036 (= res!1484760 (not (= lt!1271525 (Some!8207 (tuple2!38457 (Token!10947 lt!1271508 (rule!8598 (_1!22362 lt!1271494)) lt!1271522 lt!1271499) (_2!22362 lt!1271494))))))))

(assert (=> b!3658036 (= lt!1271522 (size!29484 lt!1271528))))

(assert (=> b!3658036 (= lt!1271508 (apply!9292 (transformation!5790 (rule!8598 (_1!22362 lt!1271494))) lt!1271528))))

(declare-fun lt!1271515 () Unit!55805)

(declare-fun lemmaCharactersSize!835 (Token!10946) Unit!55805)

(assert (=> b!3658036 (= lt!1271515 (lemmaCharactersSize!835 (_1!22362 lt!1271494)))))

(declare-fun lt!1271488 () Unit!55805)

(declare-fun lemmaEqSameImage!973 (TokenValueInjection!11468 BalanceConc!23212 BalanceConc!23212) Unit!55805)

(assert (=> b!3658036 (= lt!1271488 (lemmaEqSameImage!973 (transformation!5790 (rule!8598 (_1!22362 lt!1271494))) lt!1271528 (seqFromList!4339 (originalCharacters!6504 (_1!22362 lt!1271494)))))))

(declare-fun lt!1271521 () Unit!55805)

(declare-fun lemmaSemiInverse!1539 (TokenValueInjection!11468 BalanceConc!23212) Unit!55805)

(assert (=> b!3658036 (= lt!1271521 (lemmaSemiInverse!1539 (transformation!5790 (rule!8598 (_1!22362 lt!1271494))) lt!1271528))))

(assert (= (and start!342262 res!1484751) b!3658008))

(assert (= (and b!3658008 res!1484758) b!3658025))

(assert (= (and b!3658025 res!1484763) b!3658001))

(assert (= (and b!3658001 res!1484761) b!3658002))

(assert (= (and b!3658002 res!1484749) b!3658032))

(assert (= (and b!3658032 res!1484755) b!3658034))

(assert (= (and b!3658034 res!1484753) b!3657995))

(assert (= (and b!3657995 res!1484765) b!3658029))

(assert (= (and b!3658029 res!1484759) b!3657992))

(assert (= (and b!3657992 res!1484756) b!3657993))

(assert (= (and b!3657993 (not res!1484767)) b!3658004))

(assert (= (and b!3658004 (not res!1484754)) b!3657997))

(assert (= (and b!3657997 (not res!1484766)) b!3657996))

(assert (= (and b!3657996 (not res!1484752)) b!3658011))

(assert (= (and b!3658011 (not res!1484768)) b!3658021))

(assert (= (and b!3658021 res!1484764) b!3658026))

(assert (= (and b!3658026 res!1484762) b!3658028))

(assert (= (and b!3658021 (not res!1484748)) b!3658024))

(assert (= (and b!3658024 (not res!1484757)) b!3658036))

(assert (= (and b!3658036 (not res!1484760)) b!3658023))

(assert (= (and b!3658023 (not res!1484750)) b!3658017))

(assert (= (and b!3658017 c!632208) b!3658010))

(assert (= (and b!3658017 (not c!632208)) b!3658006))

(assert (= (and b!3658017 c!632210) b!3658014))

(assert (= (and b!3658017 (not c!632210)) b!3657998))

(assert (= (and b!3658014 c!632213) b!3658007))

(assert (= (and b!3658014 (not c!632213)) b!3658018))

(assert (= (and b!3657998 c!632209) b!3658035))

(assert (= (and b!3657998 (not c!632209)) b!3658005))

(assert (= (or b!3658007 b!3658035) bm!264531))

(assert (= (or b!3658007 b!3658035) bm!264532))

(assert (= (or b!3658007 b!3658035) bm!264533))

(assert (= (and b!3658017 c!632212) b!3658000))

(assert (= (and b!3658017 (not c!632212)) b!3658012))

(assert (= (and b!3658000 c!632211) b!3658027))

(assert (= (and b!3658000 (not c!632211)) b!3658031))

(assert (= (or b!3658027 b!3658031) bm!264530))

(assert (= (or b!3658027 b!3658031) bm!264535))

(assert (= (or b!3658027 b!3658031) bm!264534))

(assert (= (and b!3658017 c!632207) b!3657994))

(assert (= (and b!3658017 (not c!632207)) b!3658030))

(assert (= b!3658020 b!3657991))

(assert (= b!3658016 b!3658020))

(assert (= (and start!342262 ((_ is Cons!38595) rules!3307)) b!3658016))

(assert (= (and start!342262 ((_ is Cons!38594) suffix!1395)) b!3658019))

(assert (= b!3658003 b!3658022))

(assert (= b!3657999 b!3658003))

(assert (= start!342262 b!3657999))

(assert (= b!3658033 b!3658013))

(assert (= start!342262 b!3658033))

(assert (= b!3658015 b!3658009))

(assert (= start!342262 b!3658015))

(declare-fun m!4163893 () Bool)

(assert (=> b!3658001 m!4163893))

(declare-fun m!4163895 () Bool)

(assert (=> b!3657997 m!4163895))

(declare-fun m!4163897 () Bool)

(assert (=> b!3657997 m!4163897))

(declare-fun m!4163899 () Bool)

(assert (=> b!3657997 m!4163899))

(declare-fun m!4163901 () Bool)

(assert (=> b!3658003 m!4163901))

(declare-fun m!4163903 () Bool)

(assert (=> b!3658003 m!4163903))

(declare-fun m!4163905 () Bool)

(assert (=> b!3658029 m!4163905))

(declare-fun m!4163907 () Bool)

(assert (=> bm!264531 m!4163907))

(declare-fun m!4163909 () Bool)

(assert (=> bm!264534 m!4163909))

(declare-fun m!4163911 () Bool)

(assert (=> b!3658027 m!4163911))

(declare-fun m!4163913 () Bool)

(assert (=> bm!264532 m!4163913))

(declare-fun m!4163915 () Bool)

(assert (=> b!3658004 m!4163915))

(declare-fun m!4163917 () Bool)

(assert (=> start!342262 m!4163917))

(declare-fun m!4163919 () Bool)

(assert (=> bm!264533 m!4163919))

(declare-fun m!4163921 () Bool)

(assert (=> b!3658025 m!4163921))

(declare-fun m!4163923 () Bool)

(assert (=> b!3658011 m!4163923))

(declare-fun m!4163925 () Bool)

(assert (=> b!3658033 m!4163925))

(declare-fun m!4163927 () Bool)

(assert (=> b!3658033 m!4163927))

(declare-fun m!4163929 () Bool)

(assert (=> b!3658021 m!4163929))

(declare-fun m!4163931 () Bool)

(assert (=> b!3658021 m!4163931))

(declare-fun m!4163933 () Bool)

(assert (=> b!3658021 m!4163933))

(declare-fun m!4163935 () Bool)

(assert (=> b!3658021 m!4163935))

(declare-fun m!4163937 () Bool)

(assert (=> b!3658021 m!4163937))

(declare-fun m!4163939 () Bool)

(assert (=> b!3658021 m!4163939))

(declare-fun m!4163941 () Bool)

(assert (=> b!3658021 m!4163941))

(declare-fun m!4163943 () Bool)

(assert (=> b!3658021 m!4163943))

(declare-fun m!4163945 () Bool)

(assert (=> b!3658021 m!4163945))

(declare-fun m!4163947 () Bool)

(assert (=> b!3658021 m!4163947))

(declare-fun m!4163949 () Bool)

(assert (=> b!3658021 m!4163949))

(declare-fun m!4163951 () Bool)

(assert (=> b!3658021 m!4163951))

(declare-fun m!4163953 () Bool)

(assert (=> b!3658021 m!4163953))

(assert (=> b!3658021 m!4163939))

(declare-fun m!4163955 () Bool)

(assert (=> b!3658021 m!4163955))

(declare-fun m!4163957 () Bool)

(assert (=> b!3658021 m!4163957))

(declare-fun m!4163959 () Bool)

(assert (=> b!3658035 m!4163959))

(declare-fun m!4163961 () Bool)

(assert (=> b!3657995 m!4163961))

(declare-fun m!4163963 () Bool)

(assert (=> b!3658031 m!4163963))

(declare-fun m!4163965 () Bool)

(assert (=> b!3658020 m!4163965))

(declare-fun m!4163967 () Bool)

(assert (=> b!3658020 m!4163967))

(declare-fun m!4163969 () Bool)

(assert (=> b!3658002 m!4163969))

(declare-fun m!4163971 () Bool)

(assert (=> bm!264530 m!4163971))

(declare-fun m!4163973 () Bool)

(assert (=> b!3657996 m!4163973))

(assert (=> b!3657996 m!4163973))

(declare-fun m!4163975 () Bool)

(assert (=> b!3657996 m!4163975))

(declare-fun m!4163977 () Bool)

(assert (=> b!3658017 m!4163977))

(declare-fun m!4163979 () Bool)

(assert (=> b!3658017 m!4163979))

(declare-fun m!4163981 () Bool)

(assert (=> b!3658017 m!4163981))

(declare-fun m!4163983 () Bool)

(assert (=> b!3658036 m!4163983))

(declare-fun m!4163985 () Bool)

(assert (=> b!3658036 m!4163985))

(assert (=> b!3658036 m!4163985))

(declare-fun m!4163987 () Bool)

(assert (=> b!3658036 m!4163987))

(declare-fun m!4163989 () Bool)

(assert (=> b!3658036 m!4163989))

(declare-fun m!4163991 () Bool)

(assert (=> b!3658036 m!4163991))

(declare-fun m!4163993 () Bool)

(assert (=> b!3658036 m!4163993))

(declare-fun m!4163995 () Bool)

(assert (=> b!3658008 m!4163995))

(declare-fun m!4163997 () Bool)

(assert (=> b!3658034 m!4163997))

(declare-fun m!4163999 () Bool)

(assert (=> b!3658034 m!4163999))

(declare-fun m!4164001 () Bool)

(assert (=> b!3658034 m!4164001))

(declare-fun m!4164003 () Bool)

(assert (=> b!3658034 m!4164003))

(assert (=> bm!264535 m!4163913))

(declare-fun m!4164005 () Bool)

(assert (=> b!3657993 m!4164005))

(declare-fun m!4164007 () Bool)

(assert (=> b!3657993 m!4164007))

(declare-fun m!4164009 () Bool)

(assert (=> b!3657993 m!4164009))

(declare-fun m!4164011 () Bool)

(assert (=> b!3657999 m!4164011))

(declare-fun m!4164013 () Bool)

(assert (=> b!3658000 m!4164013))

(declare-fun m!4164015 () Bool)

(assert (=> b!3658000 m!4164015))

(declare-fun m!4164017 () Bool)

(assert (=> b!3658007 m!4164017))

(declare-fun m!4164019 () Bool)

(assert (=> b!3657994 m!4164019))

(declare-fun m!4164021 () Bool)

(assert (=> b!3658024 m!4164021))

(declare-fun m!4164023 () Bool)

(assert (=> b!3658010 m!4164023))

(declare-fun m!4164025 () Bool)

(assert (=> b!3658023 m!4164025))

(declare-fun m!4164027 () Bool)

(assert (=> b!3658023 m!4164027))

(declare-fun m!4164029 () Bool)

(assert (=> b!3658023 m!4164029))

(assert (=> b!3658023 m!4164029))

(declare-fun m!4164031 () Bool)

(assert (=> b!3658023 m!4164031))

(declare-fun m!4164033 () Bool)

(assert (=> b!3658023 m!4164033))

(declare-fun m!4164035 () Bool)

(assert (=> b!3658023 m!4164035))

(declare-fun m!4164037 () Bool)

(assert (=> b!3658023 m!4164037))

(assert (=> b!3658026 m!4163949))

(assert (=> b!3658026 m!4163949))

(declare-fun m!4164039 () Bool)

(assert (=> b!3658026 m!4164039))

(assert (=> b!3658026 m!4164039))

(declare-fun m!4164041 () Bool)

(assert (=> b!3658026 m!4164041))

(declare-fun m!4164043 () Bool)

(assert (=> b!3658026 m!4164043))

(declare-fun m!4164045 () Bool)

(assert (=> b!3658015 m!4164045))

(declare-fun m!4164047 () Bool)

(assert (=> b!3658015 m!4164047))

(check-sat (not b_next!97169) (not b!3658031) (not b!3658026) (not b!3657997) b_and!271235 (not b!3657993) (not b!3658036) (not b_next!97183) (not b!3658027) (not b!3658010) (not bm!264533) (not bm!264531) (not b_next!97177) (not bm!264535) (not b!3658011) (not b!3658003) (not b!3657995) (not b!3658019) (not b!3658016) (not b!3658002) (not bm!264530) (not b!3657999) (not b!3657996) (not b!3657994) (not b!3658001) b_and!271231 (not b!3658024) b_and!271241 (not b!3658007) (not start!342262) (not b!3658025) tp_is_empty!18181 (not b_next!97179) b_and!271237 (not b!3658034) (not b!3658000) (not b!3658033) (not b_next!97173) (not b!3658023) b_and!271229 (not b_next!97181) (not b!3658017) (not b!3658035) (not b!3658020) b_and!271239 (not b!3658004) (not b!3658029) (not b!3658021) (not b!3658015) (not b!3658008) b_and!271233 (not bm!264532) (not b_next!97175) (not bm!264534) b_and!271227 (not b_next!97171))
(check-sat (not b_next!97177) (not b_next!97169) b_and!271235 (not b_next!97183) (not b_next!97173) b_and!271239 b_and!271233 (not b_next!97175) b_and!271231 b_and!271241 (not b_next!97179) b_and!271237 b_and!271229 (not b_next!97181) b_and!271227 (not b_next!97171))
