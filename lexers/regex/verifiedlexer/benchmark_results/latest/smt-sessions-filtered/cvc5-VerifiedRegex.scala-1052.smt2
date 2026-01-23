; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!52834 () Bool)

(assert start!52834)

(declare-fun b!573772 () Bool)

(declare-fun b_free!15949 () Bool)

(declare-fun b_next!15965 () Bool)

(assert (=> b!573772 (= b_free!15949 (not b_next!15965))))

(declare-fun tp!180180 () Bool)

(declare-fun b_and!56107 () Bool)

(assert (=> b!573772 (= tp!180180 b_and!56107)))

(declare-fun b_free!15951 () Bool)

(declare-fun b_next!15967 () Bool)

(assert (=> b!573772 (= b_free!15951 (not b_next!15967))))

(declare-fun tp!180174 () Bool)

(declare-fun b_and!56109 () Bool)

(assert (=> b!573772 (= tp!180174 b_and!56109)))

(declare-fun b!573774 () Bool)

(declare-fun b_free!15953 () Bool)

(declare-fun b_next!15969 () Bool)

(assert (=> b!573774 (= b_free!15953 (not b_next!15969))))

(declare-fun tp!180171 () Bool)

(declare-fun b_and!56111 () Bool)

(assert (=> b!573774 (= tp!180171 b_and!56111)))

(declare-fun b_free!15955 () Bool)

(declare-fun b_next!15971 () Bool)

(assert (=> b!573774 (= b_free!15955 (not b_next!15971))))

(declare-fun tp!180176 () Bool)

(declare-fun b_and!56113 () Bool)

(assert (=> b!573774 (= tp!180176 b_and!56113)))

(declare-fun b!573750 () Bool)

(declare-fun res!246281 () Bool)

(declare-fun e!346670 () Bool)

(assert (=> b!573750 (=> (not res!246281) (not e!346670))))

(declare-datatypes ((C!3770 0))(
  ( (C!3771 (val!2111 Int)) )
))
(declare-datatypes ((List!5645 0))(
  ( (Nil!5635) (Cons!5635 (h!11036 C!3770) (t!77142 List!5645)) )
))
(declare-fun input!2705 () List!5645)

(declare-fun isEmpty!4069 (List!5645) Bool)

(assert (=> b!573750 (= res!246281 (not (isEmpty!4069 input!2705)))))

(declare-fun b!573751 () Bool)

(declare-fun e!346669 () Bool)

(declare-fun e!346659 () Bool)

(assert (=> b!573751 (= e!346669 e!346659)))

(declare-fun res!246286 () Bool)

(assert (=> b!573751 (=> (not res!246286) (not e!346659))))

(declare-fun lt!242318 () List!5645)

(declare-fun lt!242299 () List!5645)

(assert (=> b!573751 (= res!246286 (= lt!242318 lt!242299))))

(declare-fun lt!242319 () List!5645)

(declare-fun suffix!1342 () List!5645)

(declare-fun ++!1578 (List!5645 List!5645) List!5645)

(assert (=> b!573751 (= lt!242318 (++!1578 lt!242319 suffix!1342))))

(declare-fun b!573752 () Bool)

(declare-fun res!246294 () Bool)

(declare-fun e!346648 () Bool)

(assert (=> b!573752 (=> (not res!246294) (not e!346648))))

(declare-datatypes ((Regex!1424 0))(
  ( (ElementMatch!1424 (c!107606 C!3770)) (Concat!2538 (regOne!3360 Regex!1424) (regTwo!3360 Regex!1424)) (EmptyExpr!1424) (Star!1424 (reg!1753 Regex!1424)) (EmptyLang!1424) (Union!1424 (regOne!3361 Regex!1424) (regTwo!3361 Regex!1424)) )
))
(declare-datatypes ((IArray!3615 0))(
  ( (IArray!3616 (innerList!1865 List!5645)) )
))
(declare-datatypes ((Conc!1807 0))(
  ( (Node!1807 (left!4605 Conc!1807) (right!4935 Conc!1807) (csize!3844 Int) (cheight!2018 Int)) (Leaf!2860 (xs!4444 IArray!3615) (csize!3845 Int)) (Empty!1807) )
))
(declare-datatypes ((BalanceConc!3622 0))(
  ( (BalanceConc!3623 (c!107607 Conc!1807)) )
))
(declare-datatypes ((List!5646 0))(
  ( (Nil!5636) (Cons!5636 (h!11037 (_ BitVec 16)) (t!77143 List!5646)) )
))
(declare-datatypes ((TokenValue!1114 0))(
  ( (FloatLiteralValue!2228 (text!8243 List!5646)) (TokenValueExt!1113 (__x!4126 Int)) (Broken!5570 (value!35907 List!5646)) (Object!1123) (End!1114) (Def!1114) (Underscore!1114) (Match!1114) (Else!1114) (Error!1114) (Case!1114) (If!1114) (Extends!1114) (Abstract!1114) (Class!1114) (Val!1114) (DelimiterValue!2228 (del!1174 List!5646)) (KeywordValue!1120 (value!35908 List!5646)) (CommentValue!2228 (value!35909 List!5646)) (WhitespaceValue!2228 (value!35910 List!5646)) (IndentationValue!1114 (value!35911 List!5646)) (String!7315) (Int32!1114) (Broken!5571 (value!35912 List!5646)) (Boolean!1115) (Unit!10149) (OperatorValue!1117 (op!1174 List!5646)) (IdentifierValue!2228 (value!35913 List!5646)) (IdentifierValue!2229 (value!35914 List!5646)) (WhitespaceValue!2229 (value!35915 List!5646)) (True!2228) (False!2228) (Broken!5572 (value!35916 List!5646)) (Broken!5573 (value!35917 List!5646)) (True!2229) (RightBrace!1114) (RightBracket!1114) (Colon!1114) (Null!1114) (Comma!1114) (LeftBracket!1114) (False!2229) (LeftBrace!1114) (ImaginaryLiteralValue!1114 (text!8244 List!5646)) (StringLiteralValue!3342 (value!35918 List!5646)) (EOFValue!1114 (value!35919 List!5646)) (IdentValue!1114 (value!35920 List!5646)) (DelimiterValue!2229 (value!35921 List!5646)) (DedentValue!1114 (value!35922 List!5646)) (NewLineValue!1114 (value!35923 List!5646)) (IntegerValue!3342 (value!35924 (_ BitVec 32)) (text!8245 List!5646)) (IntegerValue!3343 (value!35925 Int) (text!8246 List!5646)) (Times!1114) (Or!1114) (Equal!1114) (Minus!1114) (Broken!5574 (value!35926 List!5646)) (And!1114) (Div!1114) (LessEqual!1114) (Mod!1114) (Concat!2539) (Not!1114) (Plus!1114) (SpaceValue!1114 (value!35927 List!5646)) (IntegerValue!3344 (value!35928 Int) (text!8247 List!5646)) (StringLiteralValue!3343 (text!8248 List!5646)) (FloatLiteralValue!2229 (text!8249 List!5646)) (BytesLiteralValue!1114 (value!35929 List!5646)) (CommentValue!2229 (value!35930 List!5646)) (StringLiteralValue!3344 (value!35931 List!5646)) (ErrorTokenValue!1114 (msg!1175 List!5646)) )
))
(declare-datatypes ((String!7316 0))(
  ( (String!7317 (value!35932 String)) )
))
(declare-datatypes ((TokenValueInjection!1996 0))(
  ( (TokenValueInjection!1997 (toValue!1949 Int) (toChars!1808 Int)) )
))
(declare-datatypes ((Rule!1980 0))(
  ( (Rule!1981 (regex!1090 Regex!1424) (tag!1352 String!7316) (isSeparator!1090 Bool) (transformation!1090 TokenValueInjection!1996)) )
))
(declare-datatypes ((Token!1916 0))(
  ( (Token!1917 (value!35933 TokenValue!1114) (rule!1834 Rule!1980) (size!4488 Int) (originalCharacters!1129 List!5645)) )
))
(declare-datatypes ((tuple2!6622 0))(
  ( (tuple2!6623 (_1!3575 Token!1916) (_2!3575 List!5645)) )
))
(declare-datatypes ((Option!1441 0))(
  ( (None!1440) (Some!1440 (v!16297 tuple2!6622)) )
))
(declare-fun lt!242297 () Option!1441)

(declare-fun get!2150 (Option!1441) tuple2!6622)

(assert (=> b!573752 (= res!246294 (= (_1!3575 (get!2150 lt!242297)) (_1!3575 (v!16297 lt!242297))))))

(declare-fun b!573753 () Bool)

(declare-datatypes ((Unit!10150 0))(
  ( (Unit!10151) )
))
(declare-fun e!346650 () Unit!10150)

(declare-fun Unit!10152 () Unit!10150)

(assert (=> b!573753 (= e!346650 Unit!10152)))

(declare-fun tp!180173 () Bool)

(declare-fun token!491 () Token!1916)

(declare-fun e!346664 () Bool)

(declare-fun e!346668 () Bool)

(declare-fun b!573754 () Bool)

(declare-fun inv!21 (TokenValue!1114) Bool)

(assert (=> b!573754 (= e!346664 (and (inv!21 (value!35933 token!491)) e!346668 tp!180173))))

(declare-fun b!573755 () Bool)

(declare-fun res!246297 () Bool)

(declare-fun e!346672 () Bool)

(assert (=> b!573755 (=> (not res!246297) (not e!346672))))

(declare-fun size!4489 (List!5645) Int)

(assert (=> b!573755 (= res!246297 (= (size!4488 token!491) (size!4489 (originalCharacters!1129 token!491))))))

(declare-fun b!573756 () Bool)

(declare-fun e!346674 () Bool)

(declare-fun e!346655 () Bool)

(assert (=> b!573756 (= e!346674 e!346655)))

(declare-fun res!246296 () Bool)

(assert (=> b!573756 (=> (not res!246296) (not e!346655))))

(declare-fun lt!242312 () Option!1441)

(declare-fun isDefined!1252 (Option!1441) Bool)

(assert (=> b!573756 (= res!246296 (isDefined!1252 lt!242312))))

(declare-datatypes ((List!5647 0))(
  ( (Nil!5637) (Cons!5637 (h!11038 Rule!1980) (t!77144 List!5647)) )
))
(declare-fun rules!3103 () List!5647)

(declare-datatypes ((LexerInterface!976 0))(
  ( (LexerInterfaceExt!973 (__x!4127 Int)) (Lexer!974) )
))
(declare-fun thiss!22590 () LexerInterface!976)

(declare-fun maxPrefix!674 (LexerInterface!976 List!5647 List!5645) Option!1441)

(assert (=> b!573756 (= lt!242312 (maxPrefix!674 thiss!22590 rules!3103 lt!242299))))

(assert (=> b!573756 (= lt!242299 (++!1578 input!2705 suffix!1342))))

(declare-fun e!346673 () Bool)

(declare-fun b!573757 () Bool)

(declare-fun tp!180175 () Bool)

(declare-fun inv!7087 (String!7316) Bool)

(declare-fun inv!7090 (TokenValueInjection!1996) Bool)

(assert (=> b!573757 (= e!346668 (and tp!180175 (inv!7087 (tag!1352 (rule!1834 token!491))) (inv!7090 (transformation!1090 (rule!1834 token!491))) e!346673))))

(declare-fun b!573758 () Bool)

(declare-fun e!346658 () Bool)

(assert (=> b!573758 (= e!346658 false)))

(declare-fun b!573759 () Bool)

(assert (=> b!573759 (= e!346670 e!346674)))

(declare-fun res!246279 () Bool)

(assert (=> b!573759 (=> (not res!246279) (not e!346674))))

(assert (=> b!573759 (= res!246279 (= lt!242319 input!2705))))

(declare-fun list!2340 (BalanceConc!3622) List!5645)

(declare-fun charsOf!719 (Token!1916) BalanceConc!3622)

(assert (=> b!573759 (= lt!242319 (list!2340 (charsOf!719 token!491)))))

(declare-fun b!573760 () Bool)

(declare-fun res!246291 () Bool)

(declare-fun e!346653 () Bool)

(assert (=> b!573760 (=> res!246291 e!346653)))

(assert (=> b!573760 (= res!246291 (not (isEmpty!4069 (_2!3575 (v!16297 lt!242297)))))))

(declare-fun b!573761 () Bool)

(declare-fun res!246295 () Bool)

(declare-fun e!346656 () Bool)

(assert (=> b!573761 (=> (not res!246295) (not e!346656))))

(assert (=> b!573761 (= res!246295 (= (size!4488 (_1!3575 (v!16297 lt!242297))) (size!4489 (originalCharacters!1129 (_1!3575 (v!16297 lt!242297))))))))

(declare-fun b!573762 () Bool)

(declare-fun lt!242315 () List!5645)

(assert (=> b!573762 (= e!346648 (= lt!242315 (_2!3575 (v!16297 lt!242297))))))

(declare-fun b!573763 () Bool)

(declare-fun lt!242309 () TokenValue!1114)

(declare-fun lt!242329 () Int)

(declare-fun lt!242311 () List!5645)

(assert (=> b!573763 (= e!346672 (and (= (size!4488 token!491) lt!242329) (= (originalCharacters!1129 token!491) lt!242319) (= (tuple2!6623 token!491 suffix!1342) (tuple2!6623 (Token!1917 lt!242309 (rule!1834 token!491) lt!242329 lt!242319) lt!242311))))))

(declare-fun b!573764 () Bool)

(declare-fun e!346667 () Bool)

(assert (=> b!573764 (= e!346659 (not e!346667))))

(declare-fun res!246287 () Bool)

(assert (=> b!573764 (=> res!246287 e!346667)))

(declare-fun isPrefix!724 (List!5645 List!5645) Bool)

(assert (=> b!573764 (= res!246287 (not (isPrefix!724 input!2705 lt!242318)))))

(assert (=> b!573764 (isPrefix!724 lt!242319 lt!242318)))

(declare-fun lt!242303 () Unit!10150)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!571 (List!5645 List!5645) Unit!10150)

(assert (=> b!573764 (= lt!242303 (lemmaConcatTwoListThenFirstIsPrefix!571 lt!242319 suffix!1342))))

(assert (=> b!573764 (isPrefix!724 input!2705 lt!242299)))

(declare-fun lt!242320 () Unit!10150)

(assert (=> b!573764 (= lt!242320 (lemmaConcatTwoListThenFirstIsPrefix!571 input!2705 suffix!1342))))

(assert (=> b!573764 e!346656))

(declare-fun res!246283 () Bool)

(assert (=> b!573764 (=> (not res!246283) (not e!346656))))

(declare-fun lt!242327 () TokenValue!1114)

(assert (=> b!573764 (= res!246283 (= (value!35933 (_1!3575 (v!16297 lt!242297))) lt!242327))))

(declare-fun lt!242328 () BalanceConc!3622)

(declare-fun apply!1355 (TokenValueInjection!1996 BalanceConc!3622) TokenValue!1114)

(assert (=> b!573764 (= lt!242327 (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) lt!242328))))

(declare-fun lt!242325 () List!5645)

(declare-fun seqFromList!1278 (List!5645) BalanceConc!3622)

(assert (=> b!573764 (= lt!242328 (seqFromList!1278 lt!242325))))

(declare-fun lt!242304 () Unit!10150)

(declare-fun lemmaInv!226 (TokenValueInjection!1996) Unit!10150)

(assert (=> b!573764 (= lt!242304 (lemmaInv!226 (transformation!1090 (rule!1834 token!491))))))

(declare-fun lt!242322 () Unit!10150)

(assert (=> b!573764 (= lt!242322 (lemmaInv!226 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))))))

(declare-fun ruleValid!300 (LexerInterface!976 Rule!1980) Bool)

(assert (=> b!573764 (ruleValid!300 thiss!22590 (rule!1834 token!491))))

(declare-fun lt!242316 () Unit!10150)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!157 (LexerInterface!976 Rule!1980 List!5647) Unit!10150)

(assert (=> b!573764 (= lt!242316 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!157 thiss!22590 (rule!1834 token!491) rules!3103))))

(assert (=> b!573764 (ruleValid!300 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))))))

(declare-fun lt!242300 () Unit!10150)

(assert (=> b!573764 (= lt!242300 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!157 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))) rules!3103))))

(assert (=> b!573764 (isPrefix!724 input!2705 input!2705)))

(declare-fun lt!242313 () Unit!10150)

(declare-fun lemmaIsPrefixRefl!462 (List!5645 List!5645) Unit!10150)

(assert (=> b!573764 (= lt!242313 (lemmaIsPrefixRefl!462 input!2705 input!2705))))

(assert (=> b!573764 (= (_2!3575 (v!16297 lt!242297)) lt!242315)))

(declare-fun lt!242301 () Unit!10150)

(declare-fun lemmaSamePrefixThenSameSuffix!447 (List!5645 List!5645 List!5645 List!5645 List!5645) Unit!10150)

(assert (=> b!573764 (= lt!242301 (lemmaSamePrefixThenSameSuffix!447 lt!242325 (_2!3575 (v!16297 lt!242297)) lt!242325 lt!242315 input!2705))))

(declare-fun getSuffix!243 (List!5645 List!5645) List!5645)

(assert (=> b!573764 (= lt!242315 (getSuffix!243 input!2705 lt!242325))))

(declare-fun lt!242305 () List!5645)

(assert (=> b!573764 (isPrefix!724 lt!242325 lt!242305)))

(assert (=> b!573764 (= lt!242305 (++!1578 lt!242325 (_2!3575 (v!16297 lt!242297))))))

(declare-fun lt!242306 () Unit!10150)

(assert (=> b!573764 (= lt!242306 (lemmaConcatTwoListThenFirstIsPrefix!571 lt!242325 (_2!3575 (v!16297 lt!242297))))))

(declare-fun lt!242324 () Unit!10150)

(declare-fun lemmaCharactersSize!157 (Token!1916) Unit!10150)

(assert (=> b!573764 (= lt!242324 (lemmaCharactersSize!157 token!491))))

(declare-fun lt!242321 () Unit!10150)

(assert (=> b!573764 (= lt!242321 (lemmaCharactersSize!157 (_1!3575 (v!16297 lt!242297))))))

(declare-fun lt!242298 () Unit!10150)

(declare-fun e!346663 () Unit!10150)

(assert (=> b!573764 (= lt!242298 e!346663)))

(declare-fun c!107605 () Bool)

(declare-fun lt!242307 () Int)

(assert (=> b!573764 (= c!107605 (> lt!242307 lt!242329))))

(assert (=> b!573764 (= lt!242329 (size!4489 lt!242319))))

(assert (=> b!573764 (= lt!242307 (size!4489 lt!242325))))

(assert (=> b!573764 (= lt!242325 (list!2340 (charsOf!719 (_1!3575 (v!16297 lt!242297)))))))

(declare-fun lt!242308 () tuple2!6622)

(assert (=> b!573764 (= lt!242297 (Some!1440 lt!242308))))

(assert (=> b!573764 (= lt!242308 (tuple2!6623 (_1!3575 (v!16297 lt!242297)) (_2!3575 (v!16297 lt!242297))))))

(declare-fun lt!242310 () Unit!10150)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!167 (List!5645 List!5645 List!5645 List!5645) Unit!10150)

(assert (=> b!573764 (= lt!242310 (lemmaConcatSameAndSameSizesThenSameLists!167 lt!242319 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!573765 () Bool)

(declare-fun Unit!10153 () Unit!10150)

(assert (=> b!573765 (= e!346663 Unit!10153)))

(assert (=> b!573765 false))

(declare-fun b!573766 () Bool)

(declare-fun res!246284 () Bool)

(assert (=> b!573766 (=> (not res!246284) (not e!346670))))

(declare-fun isEmpty!4070 (List!5647) Bool)

(assert (=> b!573766 (= res!246284 (not (isEmpty!4070 rules!3103)))))

(declare-fun b!573767 () Bool)

(declare-fun e!346649 () Bool)

(declare-fun e!346662 () Bool)

(declare-fun tp!180179 () Bool)

(assert (=> b!573767 (= e!346649 (and e!346662 tp!180179))))

(declare-fun b!573768 () Bool)

(declare-fun Unit!10154 () Unit!10150)

(assert (=> b!573768 (= e!346663 Unit!10154)))

(declare-fun b!573769 () Bool)

(declare-fun e!346666 () Bool)

(assert (=> b!573769 (= e!346666 e!346648)))

(declare-fun res!246293 () Bool)

(assert (=> b!573769 (=> (not res!246293) (not e!346648))))

(assert (=> b!573769 (= res!246293 (isDefined!1252 lt!242297))))

(declare-fun b!573770 () Bool)

(declare-fun e!346652 () Bool)

(assert (=> b!573770 (= e!346652 e!346669)))

(declare-fun res!246282 () Bool)

(assert (=> b!573770 (=> (not res!246282) (not e!346669))))

(assert (=> b!573770 (= res!246282 (is-Some!1440 lt!242297))))

(assert (=> b!573770 (= lt!242297 (maxPrefix!674 thiss!22590 rules!3103 input!2705))))

(declare-fun b!573771 () Bool)

(declare-fun res!246277 () Bool)

(assert (=> b!573771 (=> (not res!246277) (not e!346670))))

(declare-fun rulesInvariant!939 (LexerInterface!976 List!5647) Bool)

(assert (=> b!573771 (= res!246277 (rulesInvariant!939 thiss!22590 rules!3103))))

(declare-fun e!346660 () Bool)

(assert (=> b!573772 (= e!346660 (and tp!180180 tp!180174))))

(declare-fun b!573773 () Bool)

(declare-fun e!346661 () Bool)

(assert (=> b!573773 (= e!346661 e!346666)))

(declare-fun res!246285 () Bool)

(assert (=> b!573773 (=> res!246285 e!346666)))

(assert (=> b!573773 (= res!246285 (>= lt!242307 lt!242329))))

(assert (=> b!573774 (= e!346673 (and tp!180171 tp!180176))))

(declare-fun res!246290 () Bool)

(assert (=> start!52834 (=> (not res!246290) (not e!346670))))

(assert (=> start!52834 (= res!246290 (is-Lexer!974 thiss!22590))))

(assert (=> start!52834 e!346670))

(declare-fun e!346671 () Bool)

(assert (=> start!52834 e!346671))

(assert (=> start!52834 e!346649))

(declare-fun inv!7091 (Token!1916) Bool)

(assert (=> start!52834 (and (inv!7091 token!491) e!346664)))

(assert (=> start!52834 true))

(declare-fun e!346654 () Bool)

(assert (=> start!52834 e!346654))

(declare-fun b!573775 () Bool)

(declare-fun Unit!10155 () Unit!10150)

(assert (=> b!573775 (= e!346650 Unit!10155)))

(declare-fun lt!242302 () Unit!10150)

(declare-fun lemmaSemiInverse!193 (TokenValueInjection!1996 BalanceConc!3622) Unit!10150)

(assert (=> b!573775 (= lt!242302 (lemmaSemiInverse!193 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) lt!242328))))

(declare-fun lt!242331 () Unit!10150)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!49 (LexerInterface!976 List!5647 Rule!1980 List!5645 List!5645 List!5645 Rule!1980) Unit!10150)

(assert (=> b!573775 (= lt!242331 (lemmaMaxPrefixOutputsMaxPrefix!49 thiss!22590 rules!3103 (rule!1834 (_1!3575 (v!16297 lt!242297))) lt!242325 input!2705 input!2705 (rule!1834 token!491)))))

(declare-fun res!246288 () Bool)

(declare-fun matchR!571 (Regex!1424 List!5645) Bool)

(assert (=> b!573775 (= res!246288 (not (matchR!571 (regex!1090 (rule!1834 token!491)) input!2705)))))

(assert (=> b!573775 (=> (not res!246288) (not e!346658))))

(assert (=> b!573775 e!346658))

(declare-fun b!573776 () Bool)

(assert (=> b!573776 (= e!346656 (and (= (size!4488 (_1!3575 (v!16297 lt!242297))) lt!242307) (= (originalCharacters!1129 (_1!3575 (v!16297 lt!242297))) lt!242325) (= lt!242308 (tuple2!6623 (Token!1917 lt!242327 (rule!1834 (_1!3575 (v!16297 lt!242297))) lt!242307 lt!242325) lt!242315))))))

(declare-fun b!573777 () Bool)

(declare-fun tp_is_empty!3203 () Bool)

(declare-fun tp!180178 () Bool)

(assert (=> b!573777 (= e!346671 (and tp_is_empty!3203 tp!180178))))

(declare-fun b!573778 () Bool)

(declare-fun tp!180172 () Bool)

(assert (=> b!573778 (= e!346654 (and tp_is_empty!3203 tp!180172))))

(declare-fun tp!180177 () Bool)

(declare-fun b!573779 () Bool)

(assert (=> b!573779 (= e!346662 (and tp!180177 (inv!7087 (tag!1352 (h!11038 rules!3103))) (inv!7090 (transformation!1090 (h!11038 rules!3103))) e!346660))))

(declare-fun b!573780 () Bool)

(assert (=> b!573780 (= e!346653 (= lt!242325 lt!242319))))

(declare-fun b!573781 () Bool)

(assert (=> b!573781 (= e!346655 e!346652)))

(declare-fun res!246292 () Bool)

(assert (=> b!573781 (=> (not res!246292) (not e!346652))))

(declare-fun lt!242317 () tuple2!6622)

(assert (=> b!573781 (= res!246292 (and (= (_1!3575 lt!242317) token!491) (= (_2!3575 lt!242317) suffix!1342)))))

(assert (=> b!573781 (= lt!242317 (get!2150 lt!242312))))

(declare-fun b!573782 () Bool)

(assert (=> b!573782 (= e!346667 e!346653)))

(declare-fun res!246289 () Bool)

(assert (=> b!573782 (=> res!246289 e!346653)))

(assert (=> b!573782 (= res!246289 (or (not (= lt!242307 lt!242329)) (not (= lt!242305 input!2705)) (not (= lt!242305 lt!242319))))))

(declare-fun lt!242333 () Unit!10150)

(declare-fun lt!242323 () BalanceConc!3622)

(assert (=> b!573782 (= lt!242333 (lemmaSemiInverse!193 (transformation!1090 (rule!1834 token!491)) lt!242323))))

(declare-fun lt!242326 () Unit!10150)

(assert (=> b!573782 (= lt!242326 (lemmaSemiInverse!193 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) lt!242328))))

(declare-fun lt!242314 () Unit!10150)

(assert (=> b!573782 (= lt!242314 e!346650)))

(declare-fun c!107604 () Bool)

(assert (=> b!573782 (= c!107604 (< lt!242307 lt!242329))))

(assert (=> b!573782 e!346661))

(declare-fun res!246278 () Bool)

(assert (=> b!573782 (=> (not res!246278) (not e!346661))))

(declare-fun maxPrefixOneRule!375 (LexerInterface!976 Rule!1980 List!5645) Option!1441)

(assert (=> b!573782 (= res!246278 (= (maxPrefixOneRule!375 thiss!22590 (rule!1834 token!491) lt!242299) (Some!1440 (tuple2!6623 (Token!1917 lt!242309 (rule!1834 token!491) lt!242329 lt!242319) suffix!1342))))))

(declare-fun lt!242332 () Unit!10150)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!125 (LexerInterface!976 List!5647 List!5645 List!5645 List!5645 Rule!1980) Unit!10150)

(assert (=> b!573782 (= lt!242332 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!125 thiss!22590 rules!3103 lt!242319 lt!242299 suffix!1342 (rule!1834 token!491)))))

(assert (=> b!573782 (= (maxPrefixOneRule!375 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))) input!2705) (Some!1440 (tuple2!6623 (Token!1917 lt!242327 (rule!1834 (_1!3575 (v!16297 lt!242297))) lt!242307 lt!242325) (_2!3575 (v!16297 lt!242297)))))))

(declare-fun lt!242330 () Unit!10150)

(assert (=> b!573782 (= lt!242330 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!125 thiss!22590 rules!3103 lt!242325 input!2705 (_2!3575 (v!16297 lt!242297)) (rule!1834 (_1!3575 (v!16297 lt!242297)))))))

(assert (=> b!573782 e!346672))

(declare-fun res!246280 () Bool)

(assert (=> b!573782 (=> (not res!246280) (not e!346672))))

(assert (=> b!573782 (= res!246280 (= (value!35933 token!491) lt!242309))))

(assert (=> b!573782 (= lt!242309 (apply!1355 (transformation!1090 (rule!1834 token!491)) lt!242323))))

(assert (=> b!573782 (= lt!242323 (seqFromList!1278 lt!242319))))

(assert (=> b!573782 (= suffix!1342 lt!242311)))

(declare-fun lt!242334 () Unit!10150)

(assert (=> b!573782 (= lt!242334 (lemmaSamePrefixThenSameSuffix!447 lt!242319 suffix!1342 lt!242319 lt!242311 lt!242299))))

(assert (=> b!573782 (= lt!242311 (getSuffix!243 lt!242299 lt!242319))))

(assert (= (and start!52834 res!246290) b!573766))

(assert (= (and b!573766 res!246284) b!573771))

(assert (= (and b!573771 res!246277) b!573750))

(assert (= (and b!573750 res!246281) b!573759))

(assert (= (and b!573759 res!246279) b!573756))

(assert (= (and b!573756 res!246296) b!573781))

(assert (= (and b!573781 res!246292) b!573770))

(assert (= (and b!573770 res!246282) b!573751))

(assert (= (and b!573751 res!246286) b!573764))

(assert (= (and b!573764 c!107605) b!573765))

(assert (= (and b!573764 (not c!107605)) b!573768))

(assert (= (and b!573764 res!246283) b!573761))

(assert (= (and b!573761 res!246295) b!573776))

(assert (= (and b!573764 (not res!246287)) b!573782))

(assert (= (and b!573782 res!246280) b!573755))

(assert (= (and b!573755 res!246297) b!573763))

(assert (= (and b!573782 res!246278) b!573773))

(assert (= (and b!573773 (not res!246285)) b!573769))

(assert (= (and b!573769 res!246293) b!573752))

(assert (= (and b!573752 res!246294) b!573762))

(assert (= (and b!573782 c!107604) b!573775))

(assert (= (and b!573782 (not c!107604)) b!573753))

(assert (= (and b!573775 res!246288) b!573758))

(assert (= (and b!573782 (not res!246289)) b!573760))

(assert (= (and b!573760 (not res!246291)) b!573780))

(assert (= (and start!52834 (is-Cons!5635 suffix!1342)) b!573777))

(assert (= b!573779 b!573772))

(assert (= b!573767 b!573779))

(assert (= (and start!52834 (is-Cons!5637 rules!3103)) b!573767))

(assert (= b!573757 b!573774))

(assert (= b!573754 b!573757))

(assert (= start!52834 b!573754))

(assert (= (and start!52834 (is-Cons!5635 input!2705)) b!573778))

(declare-fun m!830309 () Bool)

(assert (=> b!573756 m!830309))

(declare-fun m!830311 () Bool)

(assert (=> b!573756 m!830311))

(declare-fun m!830313 () Bool)

(assert (=> b!573756 m!830313))

(declare-fun m!830315 () Bool)

(assert (=> b!573782 m!830315))

(declare-fun m!830317 () Bool)

(assert (=> b!573782 m!830317))

(declare-fun m!830319 () Bool)

(assert (=> b!573782 m!830319))

(declare-fun m!830321 () Bool)

(assert (=> b!573782 m!830321))

(declare-fun m!830323 () Bool)

(assert (=> b!573782 m!830323))

(declare-fun m!830325 () Bool)

(assert (=> b!573782 m!830325))

(declare-fun m!830327 () Bool)

(assert (=> b!573782 m!830327))

(declare-fun m!830329 () Bool)

(assert (=> b!573782 m!830329))

(declare-fun m!830331 () Bool)

(assert (=> b!573782 m!830331))

(declare-fun m!830333 () Bool)

(assert (=> b!573782 m!830333))

(declare-fun m!830335 () Bool)

(assert (=> b!573760 m!830335))

(declare-fun m!830337 () Bool)

(assert (=> b!573771 m!830337))

(declare-fun m!830339 () Bool)

(assert (=> b!573766 m!830339))

(declare-fun m!830341 () Bool)

(assert (=> b!573764 m!830341))

(declare-fun m!830343 () Bool)

(assert (=> b!573764 m!830343))

(declare-fun m!830345 () Bool)

(assert (=> b!573764 m!830345))

(declare-fun m!830347 () Bool)

(assert (=> b!573764 m!830347))

(declare-fun m!830349 () Bool)

(assert (=> b!573764 m!830349))

(declare-fun m!830351 () Bool)

(assert (=> b!573764 m!830351))

(declare-fun m!830353 () Bool)

(assert (=> b!573764 m!830353))

(declare-fun m!830355 () Bool)

(assert (=> b!573764 m!830355))

(declare-fun m!830357 () Bool)

(assert (=> b!573764 m!830357))

(declare-fun m!830359 () Bool)

(assert (=> b!573764 m!830359))

(declare-fun m!830361 () Bool)

(assert (=> b!573764 m!830361))

(declare-fun m!830363 () Bool)

(assert (=> b!573764 m!830363))

(declare-fun m!830365 () Bool)

(assert (=> b!573764 m!830365))

(declare-fun m!830367 () Bool)

(assert (=> b!573764 m!830367))

(declare-fun m!830369 () Bool)

(assert (=> b!573764 m!830369))

(declare-fun m!830371 () Bool)

(assert (=> b!573764 m!830371))

(declare-fun m!830373 () Bool)

(assert (=> b!573764 m!830373))

(declare-fun m!830375 () Bool)

(assert (=> b!573764 m!830375))

(declare-fun m!830377 () Bool)

(assert (=> b!573764 m!830377))

(declare-fun m!830379 () Bool)

(assert (=> b!573764 m!830379))

(declare-fun m!830381 () Bool)

(assert (=> b!573764 m!830381))

(assert (=> b!573764 m!830345))

(declare-fun m!830383 () Bool)

(assert (=> b!573764 m!830383))

(declare-fun m!830385 () Bool)

(assert (=> b!573764 m!830385))

(declare-fun m!830387 () Bool)

(assert (=> b!573764 m!830387))

(declare-fun m!830389 () Bool)

(assert (=> b!573764 m!830389))

(declare-fun m!830391 () Bool)

(assert (=> b!573764 m!830391))

(declare-fun m!830393 () Bool)

(assert (=> b!573764 m!830393))

(declare-fun m!830395 () Bool)

(assert (=> b!573754 m!830395))

(declare-fun m!830397 () Bool)

(assert (=> b!573750 m!830397))

(declare-fun m!830399 () Bool)

(assert (=> b!573779 m!830399))

(declare-fun m!830401 () Bool)

(assert (=> b!573779 m!830401))

(declare-fun m!830403 () Bool)

(assert (=> b!573781 m!830403))

(declare-fun m!830405 () Bool)

(assert (=> b!573769 m!830405))

(declare-fun m!830407 () Bool)

(assert (=> b!573751 m!830407))

(declare-fun m!830409 () Bool)

(assert (=> b!573761 m!830409))

(declare-fun m!830411 () Bool)

(assert (=> b!573759 m!830411))

(assert (=> b!573759 m!830411))

(declare-fun m!830413 () Bool)

(assert (=> b!573759 m!830413))

(declare-fun m!830415 () Bool)

(assert (=> start!52834 m!830415))

(declare-fun m!830417 () Bool)

(assert (=> b!573757 m!830417))

(declare-fun m!830419 () Bool)

(assert (=> b!573757 m!830419))

(declare-fun m!830421 () Bool)

(assert (=> b!573770 m!830421))

(assert (=> b!573775 m!830315))

(declare-fun m!830423 () Bool)

(assert (=> b!573775 m!830423))

(declare-fun m!830425 () Bool)

(assert (=> b!573775 m!830425))

(declare-fun m!830427 () Bool)

(assert (=> b!573752 m!830427))

(declare-fun m!830429 () Bool)

(assert (=> b!573755 m!830429))

(push 1)

(assert (not b!573759))

(assert b_and!56109)

(assert (not b!573766))

(assert (not b!573775))

(assert (not b!573751))

(assert (not b!573777))

(assert (not b!573764))

(assert b_and!56113)

(assert b_and!56111)

(assert (not b!573754))

(assert (not b!573769))

(assert (not b!573771))

(assert (not b!573756))

(assert (not b!573779))

(assert b_and!56107)

(assert (not b_next!15969))

(assert (not start!52834))

(assert (not b!573781))

(assert (not b!573761))

(assert (not b!573755))

(assert (not b!573750))

(assert (not b!573757))

(assert (not b!573752))

(assert (not b_next!15967))

(assert (not b_next!15965))

(assert tp_is_empty!3203)

(assert (not b!573782))

(assert (not b!573767))

(assert (not b_next!15971))

(assert (not b!573778))

(assert (not b!573770))

(assert (not b!573760))

(check-sat)

(pop 1)

(push 1)

(assert b_and!56109)

(assert (not b_next!15967))

(assert (not b_next!15965))

(assert b_and!56113)

(assert b_and!56111)

(assert (not b_next!15971))

(assert b_and!56107)

(assert (not b_next!15969))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!201601 () Bool)

(assert (=> d!201601 (= (get!2150 lt!242297) (v!16297 lt!242297))))

(assert (=> b!573752 d!201601))

(declare-fun d!201605 () Bool)

(declare-fun res!246379 () Bool)

(declare-fun e!346763 () Bool)

(assert (=> d!201605 (=> (not res!246379) (not e!346763))))

(assert (=> d!201605 (= res!246379 (not (isEmpty!4069 (originalCharacters!1129 token!491))))))

(assert (=> d!201605 (= (inv!7091 token!491) e!346763)))

(declare-fun b!573896 () Bool)

(declare-fun res!246380 () Bool)

(assert (=> b!573896 (=> (not res!246380) (not e!346763))))

(declare-fun dynLambda!3256 (Int TokenValue!1114) BalanceConc!3622)

(assert (=> b!573896 (= res!246380 (= (originalCharacters!1129 token!491) (list!2340 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (value!35933 token!491)))))))

(declare-fun b!573897 () Bool)

(assert (=> b!573897 (= e!346763 (= (size!4488 token!491) (size!4489 (originalCharacters!1129 token!491))))))

(assert (= (and d!201605 res!246379) b!573896))

(assert (= (and b!573896 res!246380) b!573897))

(declare-fun b_lambda!22321 () Bool)

(assert (=> (not b_lambda!22321) (not b!573896)))

(declare-fun tb!50051 () Bool)

(declare-fun t!77149 () Bool)

(assert (=> (and b!573772 (= (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toChars!1808 (transformation!1090 (rule!1834 token!491)))) t!77149) tb!50051))

(declare-fun b!573904 () Bool)

(declare-fun e!346767 () Bool)

(declare-fun tp!180213 () Bool)

(declare-fun inv!7094 (Conc!1807) Bool)

(assert (=> b!573904 (= e!346767 (and (inv!7094 (c!107607 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (value!35933 token!491)))) tp!180213))))

(declare-fun result!55998 () Bool)

(declare-fun inv!7095 (BalanceConc!3622) Bool)

(assert (=> tb!50051 (= result!55998 (and (inv!7095 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (value!35933 token!491))) e!346767))))

(assert (= tb!50051 b!573904))

(declare-fun m!830561 () Bool)

(assert (=> b!573904 m!830561))

(declare-fun m!830563 () Bool)

(assert (=> tb!50051 m!830563))

(assert (=> b!573896 t!77149))

(declare-fun b_and!56123 () Bool)

(assert (= b_and!56109 (and (=> t!77149 result!55998) b_and!56123)))

(declare-fun t!77151 () Bool)

(declare-fun tb!50053 () Bool)

(assert (=> (and b!573774 (= (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toChars!1808 (transformation!1090 (rule!1834 token!491)))) t!77151) tb!50053))

(declare-fun result!56002 () Bool)

(assert (= result!56002 result!55998))

(assert (=> b!573896 t!77151))

(declare-fun b_and!56125 () Bool)

(assert (= b_and!56113 (and (=> t!77151 result!56002) b_and!56125)))

(declare-fun m!830565 () Bool)

(assert (=> d!201605 m!830565))

(declare-fun m!830567 () Bool)

(assert (=> b!573896 m!830567))

(assert (=> b!573896 m!830567))

(declare-fun m!830569 () Bool)

(assert (=> b!573896 m!830569))

(assert (=> b!573897 m!830429))

(assert (=> start!52834 d!201605))

(declare-fun b!573915 () Bool)

(declare-fun e!346774 () List!5645)

(assert (=> b!573915 (= e!346774 suffix!1342)))

(declare-fun b!573917 () Bool)

(declare-fun res!246387 () Bool)

(declare-fun e!346777 () Bool)

(assert (=> b!573917 (=> (not res!246387) (not e!346777))))

(declare-fun lt!242459 () List!5645)

(assert (=> b!573917 (= res!246387 (= (size!4489 lt!242459) (+ (size!4489 lt!242319) (size!4489 suffix!1342))))))

(declare-fun d!201609 () Bool)

(assert (=> d!201609 e!346777))

(declare-fun res!246390 () Bool)

(assert (=> d!201609 (=> (not res!246390) (not e!346777))))

(declare-fun content!991 (List!5645) (Set C!3770))

(assert (=> d!201609 (= res!246390 (= (content!991 lt!242459) (set.union (content!991 lt!242319) (content!991 suffix!1342))))))

(assert (=> d!201609 (= lt!242459 e!346774)))

(declare-fun c!107622 () Bool)

(assert (=> d!201609 (= c!107622 (is-Nil!5635 lt!242319))))

(assert (=> d!201609 (= (++!1578 lt!242319 suffix!1342) lt!242459)))

(declare-fun b!573916 () Bool)

(assert (=> b!573916 (= e!346774 (Cons!5635 (h!11036 lt!242319) (++!1578 (t!77142 lt!242319) suffix!1342)))))

(declare-fun b!573918 () Bool)

(assert (=> b!573918 (= e!346777 (or (not (= suffix!1342 Nil!5635)) (= lt!242459 lt!242319)))))

(assert (= (and d!201609 c!107622) b!573915))

(assert (= (and d!201609 (not c!107622)) b!573916))

(assert (= (and d!201609 res!246390) b!573917))

(assert (= (and b!573917 res!246387) b!573918))

(declare-fun m!830571 () Bool)

(assert (=> b!573917 m!830571))

(assert (=> b!573917 m!830381))

(declare-fun m!830573 () Bool)

(assert (=> b!573917 m!830573))

(declare-fun m!830575 () Bool)

(assert (=> d!201609 m!830575))

(declare-fun m!830577 () Bool)

(assert (=> d!201609 m!830577))

(declare-fun m!830579 () Bool)

(assert (=> d!201609 m!830579))

(declare-fun m!830581 () Bool)

(assert (=> b!573916 m!830581))

(assert (=> b!573751 d!201609))

(declare-fun b!573938 () Bool)

(declare-fun res!246410 () Bool)

(declare-fun e!346789 () Bool)

(assert (=> b!573938 (=> (not res!246410) (not e!346789))))

(declare-fun head!1217 (List!5645) C!3770)

(assert (=> b!573938 (= res!246410 (= (head!1217 lt!242319) (head!1217 lt!242318)))))

(declare-fun b!573939 () Bool)

(declare-fun tail!746 (List!5645) List!5645)

(assert (=> b!573939 (= e!346789 (isPrefix!724 (tail!746 lt!242319) (tail!746 lt!242318)))))

(declare-fun b!573937 () Bool)

(declare-fun e!346791 () Bool)

(assert (=> b!573937 (= e!346791 e!346789)))

(declare-fun res!246409 () Bool)

(assert (=> b!573937 (=> (not res!246409) (not e!346789))))

(assert (=> b!573937 (= res!246409 (not (is-Nil!5635 lt!242318)))))

(declare-fun d!201611 () Bool)

(declare-fun e!346790 () Bool)

(assert (=> d!201611 e!346790))

(declare-fun res!246408 () Bool)

(assert (=> d!201611 (=> res!246408 e!346790)))

(declare-fun lt!242463 () Bool)

(assert (=> d!201611 (= res!246408 (not lt!242463))))

(assert (=> d!201611 (= lt!242463 e!346791)))

(declare-fun res!246407 () Bool)

(assert (=> d!201611 (=> res!246407 e!346791)))

(assert (=> d!201611 (= res!246407 (is-Nil!5635 lt!242319))))

(assert (=> d!201611 (= (isPrefix!724 lt!242319 lt!242318) lt!242463)))

(declare-fun b!573940 () Bool)

(assert (=> b!573940 (= e!346790 (>= (size!4489 lt!242318) (size!4489 lt!242319)))))

(assert (= (and d!201611 (not res!246407)) b!573937))

(assert (= (and b!573937 res!246409) b!573938))

(assert (= (and b!573938 res!246410) b!573939))

(assert (= (and d!201611 (not res!246408)) b!573940))

(declare-fun m!830591 () Bool)

(assert (=> b!573938 m!830591))

(declare-fun m!830595 () Bool)

(assert (=> b!573938 m!830595))

(declare-fun m!830597 () Bool)

(assert (=> b!573939 m!830597))

(declare-fun m!830601 () Bool)

(assert (=> b!573939 m!830601))

(assert (=> b!573939 m!830597))

(assert (=> b!573939 m!830601))

(declare-fun m!830603 () Bool)

(assert (=> b!573939 m!830603))

(declare-fun m!830605 () Bool)

(assert (=> b!573940 m!830605))

(assert (=> b!573940 m!830381))

(assert (=> b!573764 d!201611))

(declare-fun d!201615 () Bool)

(declare-fun lt!242467 () List!5645)

(assert (=> d!201615 (= (++!1578 lt!242325 lt!242467) input!2705)))

(declare-fun e!346797 () List!5645)

(assert (=> d!201615 (= lt!242467 e!346797)))

(declare-fun c!107625 () Bool)

(assert (=> d!201615 (= c!107625 (is-Cons!5635 lt!242325))))

(assert (=> d!201615 (>= (size!4489 input!2705) (size!4489 lt!242325))))

(assert (=> d!201615 (= (getSuffix!243 input!2705 lt!242325) lt!242467)))

(declare-fun b!573949 () Bool)

(assert (=> b!573949 (= e!346797 (getSuffix!243 (tail!746 input!2705) (t!77142 lt!242325)))))

(declare-fun b!573950 () Bool)

(assert (=> b!573950 (= e!346797 input!2705)))

(assert (= (and d!201615 c!107625) b!573949))

(assert (= (and d!201615 (not c!107625)) b!573950))

(declare-fun m!830615 () Bool)

(assert (=> d!201615 m!830615))

(declare-fun m!830617 () Bool)

(assert (=> d!201615 m!830617))

(assert (=> d!201615 m!830373))

(declare-fun m!830619 () Bool)

(assert (=> b!573949 m!830619))

(assert (=> b!573949 m!830619))

(declare-fun m!830621 () Bool)

(assert (=> b!573949 m!830621))

(assert (=> b!573764 d!201615))

(declare-fun d!201619 () Bool)

(assert (=> d!201619 (= (size!4488 (_1!3575 (v!16297 lt!242297))) (size!4489 (originalCharacters!1129 (_1!3575 (v!16297 lt!242297)))))))

(declare-fun Unit!10163 () Unit!10150)

(assert (=> d!201619 (= (lemmaCharactersSize!157 (_1!3575 (v!16297 lt!242297))) Unit!10163)))

(declare-fun bs!69241 () Bool)

(assert (= bs!69241 d!201619))

(assert (=> bs!69241 m!830409))

(assert (=> b!573764 d!201619))

(declare-fun d!201621 () Bool)

(declare-fun dynLambda!3257 (Int BalanceConc!3622) TokenValue!1114)

(assert (=> d!201621 (= (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) lt!242328) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) lt!242328))))

(declare-fun b_lambda!22323 () Bool)

(assert (=> (not b_lambda!22323) (not d!201621)))

(declare-fun tb!50055 () Bool)

(declare-fun t!77153 () Bool)

(assert (=> (and b!573772 (= (toValue!1949 (transformation!1090 (h!11038 rules!3103))) (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77153) tb!50055))

(declare-fun result!56004 () Bool)

(assert (=> tb!50055 (= result!56004 (inv!21 (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) lt!242328)))))

(declare-fun m!830623 () Bool)

(assert (=> tb!50055 m!830623))

(assert (=> d!201621 t!77153))

(declare-fun b_and!56127 () Bool)

(assert (= b_and!56107 (and (=> t!77153 result!56004) b_and!56127)))

(declare-fun tb!50057 () Bool)

(declare-fun t!77155 () Bool)

(assert (=> (and b!573774 (= (toValue!1949 (transformation!1090 (rule!1834 token!491))) (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77155) tb!50057))

(declare-fun result!56008 () Bool)

(assert (= result!56008 result!56004))

(assert (=> d!201621 t!77155))

(declare-fun b_and!56129 () Bool)

(assert (= b_and!56111 (and (=> t!77155 result!56008) b_and!56129)))

(declare-fun m!830625 () Bool)

(assert (=> d!201621 m!830625))

(assert (=> b!573764 d!201621))

(declare-fun d!201623 () Bool)

(declare-fun lt!242472 () Int)

(assert (=> d!201623 (>= lt!242472 0)))

(declare-fun e!346805 () Int)

(assert (=> d!201623 (= lt!242472 e!346805)))

(declare-fun c!107630 () Bool)

(assert (=> d!201623 (= c!107630 (is-Nil!5635 lt!242319))))

(assert (=> d!201623 (= (size!4489 lt!242319) lt!242472)))

(declare-fun b!573961 () Bool)

(assert (=> b!573961 (= e!346805 0)))

(declare-fun b!573962 () Bool)

(assert (=> b!573962 (= e!346805 (+ 1 (size!4489 (t!77142 lt!242319))))))

(assert (= (and d!201623 c!107630) b!573961))

(assert (= (and d!201623 (not c!107630)) b!573962))

(declare-fun m!830627 () Bool)

(assert (=> b!573962 m!830627))

(assert (=> b!573764 d!201623))

(declare-fun b!573965 () Bool)

(declare-fun e!346807 () List!5645)

(assert (=> b!573965 (= e!346807 (_2!3575 (v!16297 lt!242297)))))

(declare-fun b!573967 () Bool)

(declare-fun res!246415 () Bool)

(declare-fun e!346808 () Bool)

(assert (=> b!573967 (=> (not res!246415) (not e!346808))))

(declare-fun lt!242474 () List!5645)

(assert (=> b!573967 (= res!246415 (= (size!4489 lt!242474) (+ (size!4489 lt!242325) (size!4489 (_2!3575 (v!16297 lt!242297))))))))

(declare-fun d!201625 () Bool)

(assert (=> d!201625 e!346808))

(declare-fun res!246416 () Bool)

(assert (=> d!201625 (=> (not res!246416) (not e!346808))))

(assert (=> d!201625 (= res!246416 (= (content!991 lt!242474) (set.union (content!991 lt!242325) (content!991 (_2!3575 (v!16297 lt!242297))))))))

(assert (=> d!201625 (= lt!242474 e!346807)))

(declare-fun c!107632 () Bool)

(assert (=> d!201625 (= c!107632 (is-Nil!5635 lt!242325))))

(assert (=> d!201625 (= (++!1578 lt!242325 (_2!3575 (v!16297 lt!242297))) lt!242474)))

(declare-fun b!573966 () Bool)

(assert (=> b!573966 (= e!346807 (Cons!5635 (h!11036 lt!242325) (++!1578 (t!77142 lt!242325) (_2!3575 (v!16297 lt!242297)))))))

(declare-fun b!573968 () Bool)

(assert (=> b!573968 (= e!346808 (or (not (= (_2!3575 (v!16297 lt!242297)) Nil!5635)) (= lt!242474 lt!242325)))))

(assert (= (and d!201625 c!107632) b!573965))

(assert (= (and d!201625 (not c!107632)) b!573966))

(assert (= (and d!201625 res!246416) b!573967))

(assert (= (and b!573967 res!246415) b!573968))

(declare-fun m!830631 () Bool)

(assert (=> b!573967 m!830631))

(assert (=> b!573967 m!830373))

(declare-fun m!830633 () Bool)

(assert (=> b!573967 m!830633))

(declare-fun m!830635 () Bool)

(assert (=> d!201625 m!830635))

(declare-fun m!830637 () Bool)

(assert (=> d!201625 m!830637))

(declare-fun m!830639 () Bool)

(assert (=> d!201625 m!830639))

(declare-fun m!830641 () Bool)

(assert (=> b!573966 m!830641))

(assert (=> b!573764 d!201625))

(declare-fun b!573970 () Bool)

(declare-fun res!246420 () Bool)

(declare-fun e!346809 () Bool)

(assert (=> b!573970 (=> (not res!246420) (not e!346809))))

(assert (=> b!573970 (= res!246420 (= (head!1217 input!2705) (head!1217 input!2705)))))

(declare-fun b!573971 () Bool)

(assert (=> b!573971 (= e!346809 (isPrefix!724 (tail!746 input!2705) (tail!746 input!2705)))))

(declare-fun b!573969 () Bool)

(declare-fun e!346811 () Bool)

(assert (=> b!573969 (= e!346811 e!346809)))

(declare-fun res!246419 () Bool)

(assert (=> b!573969 (=> (not res!246419) (not e!346809))))

(assert (=> b!573969 (= res!246419 (not (is-Nil!5635 input!2705)))))

(declare-fun d!201627 () Bool)

(declare-fun e!346810 () Bool)

(assert (=> d!201627 e!346810))

(declare-fun res!246418 () Bool)

(assert (=> d!201627 (=> res!246418 e!346810)))

(declare-fun lt!242475 () Bool)

(assert (=> d!201627 (= res!246418 (not lt!242475))))

(assert (=> d!201627 (= lt!242475 e!346811)))

(declare-fun res!246417 () Bool)

(assert (=> d!201627 (=> res!246417 e!346811)))

(assert (=> d!201627 (= res!246417 (is-Nil!5635 input!2705))))

(assert (=> d!201627 (= (isPrefix!724 input!2705 input!2705) lt!242475)))

(declare-fun b!573972 () Bool)

(assert (=> b!573972 (= e!346810 (>= (size!4489 input!2705) (size!4489 input!2705)))))

(assert (= (and d!201627 (not res!246417)) b!573969))

(assert (= (and b!573969 res!246419) b!573970))

(assert (= (and b!573970 res!246420) b!573971))

(assert (= (and d!201627 (not res!246418)) b!573972))

(declare-fun m!830645 () Bool)

(assert (=> b!573970 m!830645))

(assert (=> b!573970 m!830645))

(assert (=> b!573971 m!830619))

(assert (=> b!573971 m!830619))

(assert (=> b!573971 m!830619))

(assert (=> b!573971 m!830619))

(declare-fun m!830647 () Bool)

(assert (=> b!573971 m!830647))

(assert (=> b!573972 m!830617))

(assert (=> b!573972 m!830617))

(assert (=> b!573764 d!201627))

(declare-fun b!573974 () Bool)

(declare-fun res!246424 () Bool)

(declare-fun e!346812 () Bool)

(assert (=> b!573974 (=> (not res!246424) (not e!346812))))

(assert (=> b!573974 (= res!246424 (= (head!1217 lt!242325) (head!1217 lt!242305)))))

(declare-fun b!573975 () Bool)

(assert (=> b!573975 (= e!346812 (isPrefix!724 (tail!746 lt!242325) (tail!746 lt!242305)))))

(declare-fun b!573973 () Bool)

(declare-fun e!346814 () Bool)

(assert (=> b!573973 (= e!346814 e!346812)))

(declare-fun res!246423 () Bool)

(assert (=> b!573973 (=> (not res!246423) (not e!346812))))

(assert (=> b!573973 (= res!246423 (not (is-Nil!5635 lt!242305)))))

(declare-fun d!201631 () Bool)

(declare-fun e!346813 () Bool)

(assert (=> d!201631 e!346813))

(declare-fun res!246422 () Bool)

(assert (=> d!201631 (=> res!246422 e!346813)))

(declare-fun lt!242476 () Bool)

(assert (=> d!201631 (= res!246422 (not lt!242476))))

(assert (=> d!201631 (= lt!242476 e!346814)))

(declare-fun res!246421 () Bool)

(assert (=> d!201631 (=> res!246421 e!346814)))

(assert (=> d!201631 (= res!246421 (is-Nil!5635 lt!242325))))

(assert (=> d!201631 (= (isPrefix!724 lt!242325 lt!242305) lt!242476)))

(declare-fun b!573976 () Bool)

(assert (=> b!573976 (= e!346813 (>= (size!4489 lt!242305) (size!4489 lt!242325)))))

(assert (= (and d!201631 (not res!246421)) b!573973))

(assert (= (and b!573973 res!246423) b!573974))

(assert (= (and b!573974 res!246424) b!573975))

(assert (= (and d!201631 (not res!246422)) b!573976))

(declare-fun m!830649 () Bool)

(assert (=> b!573974 m!830649))

(declare-fun m!830651 () Bool)

(assert (=> b!573974 m!830651))

(declare-fun m!830653 () Bool)

(assert (=> b!573975 m!830653))

(declare-fun m!830655 () Bool)

(assert (=> b!573975 m!830655))

(assert (=> b!573975 m!830653))

(assert (=> b!573975 m!830655))

(declare-fun m!830657 () Bool)

(assert (=> b!573975 m!830657))

(declare-fun m!830659 () Bool)

(assert (=> b!573976 m!830659))

(assert (=> b!573976 m!830373))

(assert (=> b!573764 d!201631))

(declare-fun d!201633 () Bool)

(declare-fun lt!242479 () BalanceConc!3622)

(assert (=> d!201633 (= (list!2340 lt!242479) (originalCharacters!1129 (_1!3575 (v!16297 lt!242297))))))

(assert (=> d!201633 (= lt!242479 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (value!35933 (_1!3575 (v!16297 lt!242297)))))))

(assert (=> d!201633 (= (charsOf!719 (_1!3575 (v!16297 lt!242297))) lt!242479)))

(declare-fun b_lambda!22325 () Bool)

(assert (=> (not b_lambda!22325) (not d!201633)))

(declare-fun tb!50059 () Bool)

(declare-fun t!77157 () Bool)

(assert (=> (and b!573772 (= (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77157) tb!50059))

(declare-fun b!573977 () Bool)

(declare-fun e!346815 () Bool)

(declare-fun tp!180214 () Bool)

(assert (=> b!573977 (= e!346815 (and (inv!7094 (c!107607 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (value!35933 (_1!3575 (v!16297 lt!242297)))))) tp!180214))))

(declare-fun result!56010 () Bool)

(assert (=> tb!50059 (= result!56010 (and (inv!7095 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (value!35933 (_1!3575 (v!16297 lt!242297))))) e!346815))))

(assert (= tb!50059 b!573977))

(declare-fun m!830661 () Bool)

(assert (=> b!573977 m!830661))

(declare-fun m!830663 () Bool)

(assert (=> tb!50059 m!830663))

(assert (=> d!201633 t!77157))

(declare-fun b_and!56131 () Bool)

(assert (= b_and!56123 (and (=> t!77157 result!56010) b_and!56131)))

(declare-fun t!77159 () Bool)

(declare-fun tb!50061 () Bool)

(assert (=> (and b!573774 (= (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77159) tb!50061))

(declare-fun result!56012 () Bool)

(assert (= result!56012 result!56010))

(assert (=> d!201633 t!77159))

(declare-fun b_and!56133 () Bool)

(assert (= b_and!56125 (and (=> t!77159 result!56012) b_and!56133)))

(declare-fun m!830665 () Bool)

(assert (=> d!201633 m!830665))

(declare-fun m!830667 () Bool)

(assert (=> d!201633 m!830667))

(assert (=> b!573764 d!201633))

(declare-fun b!573979 () Bool)

(declare-fun res!246428 () Bool)

(declare-fun e!346816 () Bool)

(assert (=> b!573979 (=> (not res!246428) (not e!346816))))

(assert (=> b!573979 (= res!246428 (= (head!1217 input!2705) (head!1217 lt!242299)))))

(declare-fun b!573980 () Bool)

(assert (=> b!573980 (= e!346816 (isPrefix!724 (tail!746 input!2705) (tail!746 lt!242299)))))

(declare-fun b!573978 () Bool)

(declare-fun e!346818 () Bool)

(assert (=> b!573978 (= e!346818 e!346816)))

(declare-fun res!246427 () Bool)

(assert (=> b!573978 (=> (not res!246427) (not e!346816))))

(assert (=> b!573978 (= res!246427 (not (is-Nil!5635 lt!242299)))))

(declare-fun d!201635 () Bool)

(declare-fun e!346817 () Bool)

(assert (=> d!201635 e!346817))

(declare-fun res!246426 () Bool)

(assert (=> d!201635 (=> res!246426 e!346817)))

(declare-fun lt!242482 () Bool)

(assert (=> d!201635 (= res!246426 (not lt!242482))))

(assert (=> d!201635 (= lt!242482 e!346818)))

(declare-fun res!246425 () Bool)

(assert (=> d!201635 (=> res!246425 e!346818)))

(assert (=> d!201635 (= res!246425 (is-Nil!5635 input!2705))))

(assert (=> d!201635 (= (isPrefix!724 input!2705 lt!242299) lt!242482)))

(declare-fun b!573981 () Bool)

(assert (=> b!573981 (= e!346817 (>= (size!4489 lt!242299) (size!4489 input!2705)))))

(assert (= (and d!201635 (not res!246425)) b!573978))

(assert (= (and b!573978 res!246427) b!573979))

(assert (= (and b!573979 res!246428) b!573980))

(assert (= (and d!201635 (not res!246426)) b!573981))

(assert (=> b!573979 m!830645))

(declare-fun m!830669 () Bool)

(assert (=> b!573979 m!830669))

(assert (=> b!573980 m!830619))

(declare-fun m!830671 () Bool)

(assert (=> b!573980 m!830671))

(assert (=> b!573980 m!830619))

(assert (=> b!573980 m!830671))

(declare-fun m!830673 () Bool)

(assert (=> b!573980 m!830673))

(declare-fun m!830675 () Bool)

(assert (=> b!573981 m!830675))

(assert (=> b!573981 m!830617))

(assert (=> b!573764 d!201635))

(declare-fun d!201637 () Bool)

(assert (=> d!201637 (isPrefix!724 input!2705 input!2705)))

(declare-fun lt!242486 () Unit!10150)

(declare-fun choose!4084 (List!5645 List!5645) Unit!10150)

(assert (=> d!201637 (= lt!242486 (choose!4084 input!2705 input!2705))))

(assert (=> d!201637 (= (lemmaIsPrefixRefl!462 input!2705 input!2705) lt!242486)))

(declare-fun bs!69242 () Bool)

(assert (= bs!69242 d!201637))

(assert (=> bs!69242 m!830357))

(declare-fun m!830677 () Bool)

(assert (=> bs!69242 m!830677))

(assert (=> b!573764 d!201637))

(declare-fun d!201639 () Bool)

(assert (=> d!201639 (isPrefix!724 lt!242319 (++!1578 lt!242319 suffix!1342))))

(declare-fun lt!242489 () Unit!10150)

(declare-fun choose!4085 (List!5645 List!5645) Unit!10150)

(assert (=> d!201639 (= lt!242489 (choose!4085 lt!242319 suffix!1342))))

(assert (=> d!201639 (= (lemmaConcatTwoListThenFirstIsPrefix!571 lt!242319 suffix!1342) lt!242489)))

(declare-fun bs!69243 () Bool)

(assert (= bs!69243 d!201639))

(assert (=> bs!69243 m!830407))

(assert (=> bs!69243 m!830407))

(declare-fun m!830679 () Bool)

(assert (=> bs!69243 m!830679))

(declare-fun m!830681 () Bool)

(assert (=> bs!69243 m!830681))

(assert (=> b!573764 d!201639))

(declare-fun d!201641 () Bool)

(declare-fun e!346824 () Bool)

(assert (=> d!201641 e!346824))

(declare-fun res!246431 () Bool)

(assert (=> d!201641 (=> (not res!246431) (not e!346824))))

(declare-fun semiInverseModEq!418 (Int Int) Bool)

(assert (=> d!201641 (= res!246431 (semiInverseModEq!418 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toValue!1949 (transformation!1090 (rule!1834 token!491)))))))

(declare-fun Unit!10164 () Unit!10150)

(assert (=> d!201641 (= (lemmaInv!226 (transformation!1090 (rule!1834 token!491))) Unit!10164)))

(declare-fun b!573989 () Bool)

(declare-fun equivClasses!401 (Int Int) Bool)

(assert (=> b!573989 (= e!346824 (equivClasses!401 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toValue!1949 (transformation!1090 (rule!1834 token!491)))))))

(assert (= (and d!201641 res!246431) b!573989))

(declare-fun m!830691 () Bool)

(assert (=> d!201641 m!830691))

(declare-fun m!830693 () Bool)

(assert (=> b!573989 m!830693))

(assert (=> b!573764 d!201641))

(declare-fun d!201645 () Bool)

(assert (=> d!201645 (isPrefix!724 lt!242325 (++!1578 lt!242325 (_2!3575 (v!16297 lt!242297))))))

(declare-fun lt!242492 () Unit!10150)

(assert (=> d!201645 (= lt!242492 (choose!4085 lt!242325 (_2!3575 (v!16297 lt!242297))))))

(assert (=> d!201645 (= (lemmaConcatTwoListThenFirstIsPrefix!571 lt!242325 (_2!3575 (v!16297 lt!242297))) lt!242492)))

(declare-fun bs!69244 () Bool)

(assert (= bs!69244 d!201645))

(assert (=> bs!69244 m!830371))

(assert (=> bs!69244 m!830371))

(declare-fun m!830695 () Bool)

(assert (=> bs!69244 m!830695))

(declare-fun m!830697 () Bool)

(assert (=> bs!69244 m!830697))

(assert (=> b!573764 d!201645))

(declare-fun d!201647 () Bool)

(declare-fun list!2342 (Conc!1807) List!5645)

(assert (=> d!201647 (= (list!2340 (charsOf!719 (_1!3575 (v!16297 lt!242297)))) (list!2342 (c!107607 (charsOf!719 (_1!3575 (v!16297 lt!242297))))))))

(declare-fun bs!69246 () Bool)

(assert (= bs!69246 d!201647))

(declare-fun m!830701 () Bool)

(assert (=> bs!69246 m!830701))

(assert (=> b!573764 d!201647))

(declare-fun d!201651 () Bool)

(assert (=> d!201651 (ruleValid!300 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))))))

(declare-fun lt!242497 () Unit!10150)

(declare-fun choose!4086 (LexerInterface!976 Rule!1980 List!5647) Unit!10150)

(assert (=> d!201651 (= lt!242497 (choose!4086 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))) rules!3103))))

(declare-fun contains!1322 (List!5647 Rule!1980) Bool)

(assert (=> d!201651 (contains!1322 rules!3103 (rule!1834 (_1!3575 (v!16297 lt!242297))))))

(assert (=> d!201651 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!157 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))) rules!3103) lt!242497)))

(declare-fun bs!69247 () Bool)

(assert (= bs!69247 d!201651))

(assert (=> bs!69247 m!830393))

(declare-fun m!830705 () Bool)

(assert (=> bs!69247 m!830705))

(declare-fun m!830707 () Bool)

(assert (=> bs!69247 m!830707))

(assert (=> b!573764 d!201651))

(declare-fun b!573995 () Bool)

(declare-fun res!246439 () Bool)

(declare-fun e!346828 () Bool)

(assert (=> b!573995 (=> (not res!246439) (not e!346828))))

(assert (=> b!573995 (= res!246439 (= (head!1217 input!2705) (head!1217 lt!242318)))))

(declare-fun b!573996 () Bool)

(assert (=> b!573996 (= e!346828 (isPrefix!724 (tail!746 input!2705) (tail!746 lt!242318)))))

(declare-fun b!573994 () Bool)

(declare-fun e!346830 () Bool)

(assert (=> b!573994 (= e!346830 e!346828)))

(declare-fun res!246438 () Bool)

(assert (=> b!573994 (=> (not res!246438) (not e!346828))))

(assert (=> b!573994 (= res!246438 (not (is-Nil!5635 lt!242318)))))

(declare-fun d!201655 () Bool)

(declare-fun e!346829 () Bool)

(assert (=> d!201655 e!346829))

(declare-fun res!246437 () Bool)

(assert (=> d!201655 (=> res!246437 e!346829)))

(declare-fun lt!242498 () Bool)

(assert (=> d!201655 (= res!246437 (not lt!242498))))

(assert (=> d!201655 (= lt!242498 e!346830)))

(declare-fun res!246436 () Bool)

(assert (=> d!201655 (=> res!246436 e!346830)))

(assert (=> d!201655 (= res!246436 (is-Nil!5635 input!2705))))

(assert (=> d!201655 (= (isPrefix!724 input!2705 lt!242318) lt!242498)))

(declare-fun b!573997 () Bool)

(assert (=> b!573997 (= e!346829 (>= (size!4489 lt!242318) (size!4489 input!2705)))))

(assert (= (and d!201655 (not res!246436)) b!573994))

(assert (= (and b!573994 res!246438) b!573995))

(assert (= (and b!573995 res!246439) b!573996))

(assert (= (and d!201655 (not res!246437)) b!573997))

(assert (=> b!573995 m!830645))

(assert (=> b!573995 m!830595))

(assert (=> b!573996 m!830619))

(assert (=> b!573996 m!830601))

(assert (=> b!573996 m!830619))

(assert (=> b!573996 m!830601))

(declare-fun m!830709 () Bool)

(assert (=> b!573996 m!830709))

(assert (=> b!573997 m!830605))

(assert (=> b!573997 m!830617))

(assert (=> b!573764 d!201655))

(declare-fun d!201657 () Bool)

(assert (=> d!201657 (= (_2!3575 (v!16297 lt!242297)) lt!242315)))

(declare-fun lt!242501 () Unit!10150)

(declare-fun choose!4088 (List!5645 List!5645 List!5645 List!5645 List!5645) Unit!10150)

(assert (=> d!201657 (= lt!242501 (choose!4088 lt!242325 (_2!3575 (v!16297 lt!242297)) lt!242325 lt!242315 input!2705))))

(assert (=> d!201657 (isPrefix!724 lt!242325 input!2705)))

(assert (=> d!201657 (= (lemmaSamePrefixThenSameSuffix!447 lt!242325 (_2!3575 (v!16297 lt!242297)) lt!242325 lt!242315 input!2705) lt!242501)))

(declare-fun bs!69248 () Bool)

(assert (= bs!69248 d!201657))

(declare-fun m!830715 () Bool)

(assert (=> bs!69248 m!830715))

(declare-fun m!830717 () Bool)

(assert (=> bs!69248 m!830717))

(assert (=> b!573764 d!201657))

(declare-fun d!201661 () Bool)

(declare-fun fromListB!554 (List!5645) BalanceConc!3622)

(assert (=> d!201661 (= (seqFromList!1278 lt!242325) (fromListB!554 lt!242325))))

(declare-fun bs!69249 () Bool)

(assert (= bs!69249 d!201661))

(declare-fun m!830719 () Bool)

(assert (=> bs!69249 m!830719))

(assert (=> b!573764 d!201661))

(declare-fun d!201663 () Bool)

(assert (=> d!201663 (ruleValid!300 thiss!22590 (rule!1834 token!491))))

(declare-fun lt!242502 () Unit!10150)

(assert (=> d!201663 (= lt!242502 (choose!4086 thiss!22590 (rule!1834 token!491) rules!3103))))

(assert (=> d!201663 (contains!1322 rules!3103 (rule!1834 token!491))))

(assert (=> d!201663 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!157 thiss!22590 (rule!1834 token!491) rules!3103) lt!242502)))

(declare-fun bs!69250 () Bool)

(assert (= bs!69250 d!201663))

(assert (=> bs!69250 m!830365))

(declare-fun m!830721 () Bool)

(assert (=> bs!69250 m!830721))

(declare-fun m!830723 () Bool)

(assert (=> bs!69250 m!830723))

(assert (=> b!573764 d!201663))

(declare-fun d!201665 () Bool)

(assert (=> d!201665 (isPrefix!724 input!2705 (++!1578 input!2705 suffix!1342))))

(declare-fun lt!242503 () Unit!10150)

(assert (=> d!201665 (= lt!242503 (choose!4085 input!2705 suffix!1342))))

(assert (=> d!201665 (= (lemmaConcatTwoListThenFirstIsPrefix!571 input!2705 suffix!1342) lt!242503)))

(declare-fun bs!69252 () Bool)

(assert (= bs!69252 d!201665))

(assert (=> bs!69252 m!830313))

(assert (=> bs!69252 m!830313))

(declare-fun m!830725 () Bool)

(assert (=> bs!69252 m!830725))

(declare-fun m!830727 () Bool)

(assert (=> bs!69252 m!830727))

(assert (=> b!573764 d!201665))

(declare-fun d!201669 () Bool)

(declare-fun res!246448 () Bool)

(declare-fun e!346840 () Bool)

(assert (=> d!201669 (=> (not res!246448) (not e!346840))))

(declare-fun validRegex!476 (Regex!1424) Bool)

(assert (=> d!201669 (= res!246448 (validRegex!476 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))))))

(assert (=> d!201669 (= (ruleValid!300 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297)))) e!346840)))

(declare-fun b!574010 () Bool)

(declare-fun res!246449 () Bool)

(assert (=> b!574010 (=> (not res!246449) (not e!346840))))

(declare-fun nullable!381 (Regex!1424) Bool)

(assert (=> b!574010 (= res!246449 (not (nullable!381 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))))))

(declare-fun b!574011 () Bool)

(assert (=> b!574011 (= e!346840 (not (= (tag!1352 (rule!1834 (_1!3575 (v!16297 lt!242297)))) (String!7317 ""))))))

(assert (= (and d!201669 res!246448) b!574010))

(assert (= (and b!574010 res!246449) b!574011))

(declare-fun m!830743 () Bool)

(assert (=> d!201669 m!830743))

(declare-fun m!830745 () Bool)

(assert (=> b!574010 m!830745))

(assert (=> b!573764 d!201669))

(declare-fun d!201675 () Bool)

(declare-fun res!246450 () Bool)

(declare-fun e!346841 () Bool)

(assert (=> d!201675 (=> (not res!246450) (not e!346841))))

(assert (=> d!201675 (= res!246450 (validRegex!476 (regex!1090 (rule!1834 token!491))))))

(assert (=> d!201675 (= (ruleValid!300 thiss!22590 (rule!1834 token!491)) e!346841)))

(declare-fun b!574012 () Bool)

(declare-fun res!246451 () Bool)

(assert (=> b!574012 (=> (not res!246451) (not e!346841))))

(assert (=> b!574012 (= res!246451 (not (nullable!381 (regex!1090 (rule!1834 token!491)))))))

(declare-fun b!574013 () Bool)

(assert (=> b!574013 (= e!346841 (not (= (tag!1352 (rule!1834 token!491)) (String!7317 ""))))))

(assert (= (and d!201675 res!246450) b!574012))

(assert (= (and b!574012 res!246451) b!574013))

(declare-fun m!830747 () Bool)

(assert (=> d!201675 m!830747))

(declare-fun m!830749 () Bool)

(assert (=> b!574012 m!830749))

(assert (=> b!573764 d!201675))

(declare-fun d!201677 () Bool)

(declare-fun e!346842 () Bool)

(assert (=> d!201677 e!346842))

(declare-fun res!246452 () Bool)

(assert (=> d!201677 (=> (not res!246452) (not e!346842))))

(assert (=> d!201677 (= res!246452 (semiInverseModEq!418 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))))))

(declare-fun Unit!10165 () Unit!10150)

(assert (=> d!201677 (= (lemmaInv!226 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) Unit!10165)))

(declare-fun b!574014 () Bool)

(assert (=> b!574014 (= e!346842 (equivClasses!401 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))))))

(assert (= (and d!201677 res!246452) b!574014))

(declare-fun m!830751 () Bool)

(assert (=> d!201677 m!830751))

(declare-fun m!830753 () Bool)

(assert (=> b!574014 m!830753))

(assert (=> b!573764 d!201677))

(declare-fun d!201679 () Bool)

(assert (=> d!201679 (= (size!4488 token!491) (size!4489 (originalCharacters!1129 token!491)))))

(declare-fun Unit!10166 () Unit!10150)

(assert (=> d!201679 (= (lemmaCharactersSize!157 token!491) Unit!10166)))

(declare-fun bs!69253 () Bool)

(assert (= bs!69253 d!201679))

(assert (=> bs!69253 m!830429))

(assert (=> b!573764 d!201679))

(declare-fun d!201681 () Bool)

(assert (=> d!201681 (and (= lt!242319 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!242511 () Unit!10150)

(declare-fun choose!4089 (List!5645 List!5645 List!5645 List!5645) Unit!10150)

(assert (=> d!201681 (= lt!242511 (choose!4089 lt!242319 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!201681 (= (++!1578 lt!242319 suffix!1342) (++!1578 input!2705 suffix!1342))))

(assert (=> d!201681 (= (lemmaConcatSameAndSameSizesThenSameLists!167 lt!242319 suffix!1342 input!2705 suffix!1342) lt!242511)))

(declare-fun bs!69254 () Bool)

(assert (= bs!69254 d!201681))

(declare-fun m!830755 () Bool)

(assert (=> bs!69254 m!830755))

(assert (=> bs!69254 m!830407))

(assert (=> bs!69254 m!830313))

(assert (=> b!573764 d!201681))

(declare-fun d!201683 () Bool)

(declare-fun lt!242512 () Int)

(assert (=> d!201683 (>= lt!242512 0)))

(declare-fun e!346843 () Int)

(assert (=> d!201683 (= lt!242512 e!346843)))

(declare-fun c!107634 () Bool)

(assert (=> d!201683 (= c!107634 (is-Nil!5635 lt!242325))))

(assert (=> d!201683 (= (size!4489 lt!242325) lt!242512)))

(declare-fun b!574015 () Bool)

(assert (=> b!574015 (= e!346843 0)))

(declare-fun b!574016 () Bool)

(assert (=> b!574016 (= e!346843 (+ 1 (size!4489 (t!77142 lt!242325))))))

(assert (= (and d!201683 c!107634) b!574015))

(assert (= (and d!201683 (not c!107634)) b!574016))

(declare-fun m!830761 () Bool)

(assert (=> b!574016 m!830761))

(assert (=> b!573764 d!201683))

(declare-fun b!574027 () Bool)

(declare-fun res!246455 () Bool)

(declare-fun e!346852 () Bool)

(assert (=> b!574027 (=> res!246455 e!346852)))

(assert (=> b!574027 (= res!246455 (not (is-IntegerValue!3344 (value!35933 token!491))))))

(declare-fun e!346850 () Bool)

(assert (=> b!574027 (= e!346850 e!346852)))

(declare-fun b!574028 () Bool)

(declare-fun inv!17 (TokenValue!1114) Bool)

(assert (=> b!574028 (= e!346850 (inv!17 (value!35933 token!491)))))

(declare-fun b!574029 () Bool)

(declare-fun inv!15 (TokenValue!1114) Bool)

(assert (=> b!574029 (= e!346852 (inv!15 (value!35933 token!491)))))

(declare-fun b!574030 () Bool)

(declare-fun e!346851 () Bool)

(assert (=> b!574030 (= e!346851 e!346850)))

(declare-fun c!107640 () Bool)

(assert (=> b!574030 (= c!107640 (is-IntegerValue!3343 (value!35933 token!491)))))

(declare-fun b!574031 () Bool)

(declare-fun inv!16 (TokenValue!1114) Bool)

(assert (=> b!574031 (= e!346851 (inv!16 (value!35933 token!491)))))

(declare-fun d!201687 () Bool)

(declare-fun c!107639 () Bool)

(assert (=> d!201687 (= c!107639 (is-IntegerValue!3342 (value!35933 token!491)))))

(assert (=> d!201687 (= (inv!21 (value!35933 token!491)) e!346851)))

(assert (= (and d!201687 c!107639) b!574031))

(assert (= (and d!201687 (not c!107639)) b!574030))

(assert (= (and b!574030 c!107640) b!574028))

(assert (= (and b!574030 (not c!107640)) b!574027))

(assert (= (and b!574027 (not res!246455)) b!574029))

(declare-fun m!830765 () Bool)

(assert (=> b!574028 m!830765))

(declare-fun m!830767 () Bool)

(assert (=> b!574029 m!830767))

(declare-fun m!830769 () Bool)

(assert (=> b!574031 m!830769))

(assert (=> b!573754 d!201687))

(declare-fun b!574058 () Bool)

(declare-fun e!346869 () Bool)

(assert (=> b!574058 (= e!346869 true)))

(declare-fun d!201693 () Bool)

(assert (=> d!201693 e!346869))

(assert (= d!201693 b!574058))

(declare-fun lambda!15685 () Int)

(declare-fun order!4585 () Int)

(declare-fun order!4583 () Int)

(declare-fun dynLambda!3258 (Int Int) Int)

(declare-fun dynLambda!3259 (Int Int) Int)

(assert (=> b!574058 (< (dynLambda!3258 order!4583 (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) (dynLambda!3259 order!4585 lambda!15685))))

(declare-fun order!4587 () Int)

(declare-fun dynLambda!3260 (Int Int) Int)

(assert (=> b!574058 (< (dynLambda!3260 order!4587 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) (dynLambda!3259 order!4585 lambda!15685))))

(assert (=> d!201693 (= (list!2340 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) lt!242328))) (list!2340 lt!242328))))

(declare-fun lt!242530 () Unit!10150)

(declare-fun ForallOf!101 (Int BalanceConc!3622) Unit!10150)

(assert (=> d!201693 (= lt!242530 (ForallOf!101 lambda!15685 lt!242328))))

(assert (=> d!201693 (= (lemmaSemiInverse!193 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) lt!242328) lt!242530)))

(declare-fun b_lambda!22331 () Bool)

(assert (=> (not b_lambda!22331) (not d!201693)))

(declare-fun tb!50071 () Bool)

(declare-fun t!77169 () Bool)

(assert (=> (and b!573772 (= (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77169) tb!50071))

(declare-fun tp!180218 () Bool)

(declare-fun e!346870 () Bool)

(declare-fun b!574059 () Bool)

(assert (=> b!574059 (= e!346870 (and (inv!7094 (c!107607 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) lt!242328)))) tp!180218))))

(declare-fun result!56026 () Bool)

(assert (=> tb!50071 (= result!56026 (and (inv!7095 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))) lt!242328))) e!346870))))

(assert (= tb!50071 b!574059))

(declare-fun m!830825 () Bool)

(assert (=> b!574059 m!830825))

(declare-fun m!830827 () Bool)

(assert (=> tb!50071 m!830827))

(assert (=> d!201693 t!77169))

(declare-fun b_and!56143 () Bool)

(assert (= b_and!56131 (and (=> t!77169 result!56026) b_and!56143)))

(declare-fun tb!50073 () Bool)

(declare-fun t!77171 () Bool)

(assert (=> (and b!573774 (= (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77171) tb!50073))

(declare-fun result!56028 () Bool)

(assert (= result!56028 result!56026))

(assert (=> d!201693 t!77171))

(declare-fun b_and!56145 () Bool)

(assert (= b_and!56133 (and (=> t!77171 result!56028) b_and!56145)))

(declare-fun b_lambda!22333 () Bool)

(assert (=> (not b_lambda!22333) (not d!201693)))

(assert (=> d!201693 t!77153))

(declare-fun b_and!56147 () Bool)

(assert (= b_and!56127 (and (=> t!77153 result!56004) b_and!56147)))

(assert (=> d!201693 t!77155))

(declare-fun b_and!56149 () Bool)

(assert (= b_and!56129 (and (=> t!77155 result!56008) b_and!56149)))

(assert (=> d!201693 m!830625))

(declare-fun m!830829 () Bool)

(assert (=> d!201693 m!830829))

(declare-fun m!830831 () Bool)

(assert (=> d!201693 m!830831))

(declare-fun m!830833 () Bool)

(assert (=> d!201693 m!830833))

(declare-fun m!830835 () Bool)

(assert (=> d!201693 m!830835))

(assert (=> d!201693 m!830625))

(assert (=> d!201693 m!830829))

(assert (=> b!573775 d!201693))

(declare-fun d!201717 () Bool)

(assert (=> d!201717 (not (matchR!571 (regex!1090 (rule!1834 token!491)) input!2705))))

(declare-fun lt!242533 () Unit!10150)

(declare-fun choose!4090 (LexerInterface!976 List!5647 Rule!1980 List!5645 List!5645 List!5645 Rule!1980) Unit!10150)

(assert (=> d!201717 (= lt!242533 (choose!4090 thiss!22590 rules!3103 (rule!1834 (_1!3575 (v!16297 lt!242297))) lt!242325 input!2705 input!2705 (rule!1834 token!491)))))

(assert (=> d!201717 (isPrefix!724 lt!242325 input!2705)))

(assert (=> d!201717 (= (lemmaMaxPrefixOutputsMaxPrefix!49 thiss!22590 rules!3103 (rule!1834 (_1!3575 (v!16297 lt!242297))) lt!242325 input!2705 input!2705 (rule!1834 token!491)) lt!242533)))

(declare-fun bs!69264 () Bool)

(assert (= bs!69264 d!201717))

(assert (=> bs!69264 m!830425))

(declare-fun m!830837 () Bool)

(assert (=> bs!69264 m!830837))

(assert (=> bs!69264 m!830717))

(assert (=> b!573775 d!201717))

(declare-fun b!574088 () Bool)

(declare-fun res!246489 () Bool)

(declare-fun e!346888 () Bool)

(assert (=> b!574088 (=> (not res!246489) (not e!346888))))

(assert (=> b!574088 (= res!246489 (isEmpty!4069 (tail!746 input!2705)))))

(declare-fun b!574089 () Bool)

(declare-fun res!246488 () Bool)

(declare-fun e!346889 () Bool)

(assert (=> b!574089 (=> res!246488 e!346889)))

(assert (=> b!574089 (= res!246488 e!346888)))

(declare-fun res!246494 () Bool)

(assert (=> b!574089 (=> (not res!246494) (not e!346888))))

(declare-fun lt!242536 () Bool)

(assert (=> b!574089 (= res!246494 lt!242536)))

(declare-fun b!574090 () Bool)

(declare-fun e!346886 () Bool)

(declare-fun e!346890 () Bool)

(assert (=> b!574090 (= e!346886 e!346890)))

(declare-fun res!246490 () Bool)

(assert (=> b!574090 (=> res!246490 e!346890)))

(declare-fun call!39788 () Bool)

(assert (=> b!574090 (= res!246490 call!39788)))

(declare-fun b!574091 () Bool)

(declare-fun e!346891 () Bool)

(declare-fun e!346887 () Bool)

(assert (=> b!574091 (= e!346891 e!346887)))

(declare-fun c!107652 () Bool)

(assert (=> b!574091 (= c!107652 (is-EmptyLang!1424 (regex!1090 (rule!1834 token!491))))))

(declare-fun b!574092 () Bool)

(assert (=> b!574092 (= e!346889 e!346886)))

(declare-fun res!246495 () Bool)

(assert (=> b!574092 (=> (not res!246495) (not e!346886))))

(assert (=> b!574092 (= res!246495 (not lt!242536))))

(declare-fun b!574093 () Bool)

(declare-fun e!346885 () Bool)

(assert (=> b!574093 (= e!346885 (nullable!381 (regex!1090 (rule!1834 token!491))))))

(declare-fun b!574095 () Bool)

(assert (=> b!574095 (= e!346888 (= (head!1217 input!2705) (c!107606 (regex!1090 (rule!1834 token!491)))))))

(declare-fun b!574096 () Bool)

(assert (=> b!574096 (= e!346887 (not lt!242536))))

(declare-fun b!574097 () Bool)

(assert (=> b!574097 (= e!346891 (= lt!242536 call!39788))))

(declare-fun b!574098 () Bool)

(assert (=> b!574098 (= e!346890 (not (= (head!1217 input!2705) (c!107606 (regex!1090 (rule!1834 token!491))))))))

(declare-fun b!574099 () Bool)

(declare-fun derivativeStep!294 (Regex!1424 C!3770) Regex!1424)

(assert (=> b!574099 (= e!346885 (matchR!571 (derivativeStep!294 (regex!1090 (rule!1834 token!491)) (head!1217 input!2705)) (tail!746 input!2705)))))

(declare-fun b!574100 () Bool)

(declare-fun res!246493 () Bool)

(assert (=> b!574100 (=> res!246493 e!346890)))

(assert (=> b!574100 (= res!246493 (not (isEmpty!4069 (tail!746 input!2705))))))

(declare-fun bm!39783 () Bool)

(assert (=> bm!39783 (= call!39788 (isEmpty!4069 input!2705))))

(declare-fun b!574101 () Bool)

(declare-fun res!246491 () Bool)

(assert (=> b!574101 (=> (not res!246491) (not e!346888))))

(assert (=> b!574101 (= res!246491 (not call!39788))))

(declare-fun d!201719 () Bool)

(assert (=> d!201719 e!346891))

(declare-fun c!107653 () Bool)

(assert (=> d!201719 (= c!107653 (is-EmptyExpr!1424 (regex!1090 (rule!1834 token!491))))))

(assert (=> d!201719 (= lt!242536 e!346885)))

(declare-fun c!107654 () Bool)

(assert (=> d!201719 (= c!107654 (isEmpty!4069 input!2705))))

(assert (=> d!201719 (validRegex!476 (regex!1090 (rule!1834 token!491)))))

(assert (=> d!201719 (= (matchR!571 (regex!1090 (rule!1834 token!491)) input!2705) lt!242536)))

(declare-fun b!574094 () Bool)

(declare-fun res!246492 () Bool)

(assert (=> b!574094 (=> res!246492 e!346889)))

(assert (=> b!574094 (= res!246492 (not (is-ElementMatch!1424 (regex!1090 (rule!1834 token!491)))))))

(assert (=> b!574094 (= e!346887 e!346889)))

(assert (= (and d!201719 c!107654) b!574093))

(assert (= (and d!201719 (not c!107654)) b!574099))

(assert (= (and d!201719 c!107653) b!574097))

(assert (= (and d!201719 (not c!107653)) b!574091))

(assert (= (and b!574091 c!107652) b!574096))

(assert (= (and b!574091 (not c!107652)) b!574094))

(assert (= (and b!574094 (not res!246492)) b!574089))

(assert (= (and b!574089 res!246494) b!574101))

(assert (= (and b!574101 res!246491) b!574088))

(assert (= (and b!574088 res!246489) b!574095))

(assert (= (and b!574089 (not res!246488)) b!574092))

(assert (= (and b!574092 res!246495) b!574090))

(assert (= (and b!574090 (not res!246490)) b!574100))

(assert (= (and b!574100 (not res!246493)) b!574098))

(assert (= (or b!574097 b!574090 b!574101) bm!39783))

(assert (=> d!201719 m!830397))

(assert (=> d!201719 m!830747))

(assert (=> b!574098 m!830645))

(assert (=> b!574099 m!830645))

(assert (=> b!574099 m!830645))

(declare-fun m!830839 () Bool)

(assert (=> b!574099 m!830839))

(assert (=> b!574099 m!830619))

(assert (=> b!574099 m!830839))

(assert (=> b!574099 m!830619))

(declare-fun m!830841 () Bool)

(assert (=> b!574099 m!830841))

(assert (=> b!574093 m!830749))

(assert (=> b!574095 m!830645))

(assert (=> b!574100 m!830619))

(assert (=> b!574100 m!830619))

(declare-fun m!830843 () Bool)

(assert (=> b!574100 m!830843))

(assert (=> bm!39783 m!830397))

(assert (=> b!574088 m!830619))

(assert (=> b!574088 m!830619))

(assert (=> b!574088 m!830843))

(assert (=> b!573775 d!201719))

(declare-fun d!201721 () Bool)

(declare-fun isEmpty!4073 (Option!1441) Bool)

(assert (=> d!201721 (= (isDefined!1252 lt!242312) (not (isEmpty!4073 lt!242312)))))

(declare-fun bs!69265 () Bool)

(assert (= bs!69265 d!201721))

(declare-fun m!830845 () Bool)

(assert (=> bs!69265 m!830845))

(assert (=> b!573756 d!201721))

(declare-fun b!574120 () Bool)

(declare-fun res!246513 () Bool)

(declare-fun e!346900 () Bool)

(assert (=> b!574120 (=> (not res!246513) (not e!346900))))

(declare-fun lt!242547 () Option!1441)

(assert (=> b!574120 (= res!246513 (= (value!35933 (_1!3575 (get!2150 lt!242547))) (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (get!2150 lt!242547)))) (seqFromList!1278 (originalCharacters!1129 (_1!3575 (get!2150 lt!242547)))))))))

(declare-fun b!574121 () Bool)

(declare-fun res!246514 () Bool)

(assert (=> b!574121 (=> (not res!246514) (not e!346900))))

(assert (=> b!574121 (= res!246514 (= (++!1578 (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242547)))) (_2!3575 (get!2150 lt!242547))) lt!242299))))

(declare-fun b!574122 () Bool)

(declare-fun e!346898 () Option!1441)

(declare-fun lt!242549 () Option!1441)

(declare-fun lt!242548 () Option!1441)

(assert (=> b!574122 (= e!346898 (ite (and (is-None!1440 lt!242549) (is-None!1440 lt!242548)) None!1440 (ite (is-None!1440 lt!242548) lt!242549 (ite (is-None!1440 lt!242549) lt!242548 (ite (>= (size!4488 (_1!3575 (v!16297 lt!242549))) (size!4488 (_1!3575 (v!16297 lt!242548)))) lt!242549 lt!242548)))))))

(declare-fun call!39791 () Option!1441)

(assert (=> b!574122 (= lt!242549 call!39791)))

(assert (=> b!574122 (= lt!242548 (maxPrefix!674 thiss!22590 (t!77144 rules!3103) lt!242299))))

(declare-fun b!574123 () Bool)

(declare-fun e!346899 () Bool)

(assert (=> b!574123 (= e!346899 e!346900)))

(declare-fun res!246511 () Bool)

(assert (=> b!574123 (=> (not res!246511) (not e!346900))))

(assert (=> b!574123 (= res!246511 (isDefined!1252 lt!242547))))

(declare-fun b!574124 () Bool)

(declare-fun res!246512 () Bool)

(assert (=> b!574124 (=> (not res!246512) (not e!346900))))

(assert (=> b!574124 (= res!246512 (= (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242547)))) (originalCharacters!1129 (_1!3575 (get!2150 lt!242547)))))))

(declare-fun b!574125 () Bool)

(declare-fun res!246515 () Bool)

(assert (=> b!574125 (=> (not res!246515) (not e!346900))))

(assert (=> b!574125 (= res!246515 (< (size!4489 (_2!3575 (get!2150 lt!242547))) (size!4489 lt!242299)))))

(declare-fun bm!39786 () Bool)

(assert (=> bm!39786 (= call!39791 (maxPrefixOneRule!375 thiss!22590 (h!11038 rules!3103) lt!242299))))

(declare-fun b!574126 () Bool)

(declare-fun res!246516 () Bool)

(assert (=> b!574126 (=> (not res!246516) (not e!346900))))

(assert (=> b!574126 (= res!246516 (matchR!571 (regex!1090 (rule!1834 (_1!3575 (get!2150 lt!242547)))) (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242547))))))))

(declare-fun d!201723 () Bool)

(assert (=> d!201723 e!346899))

(declare-fun res!246510 () Bool)

(assert (=> d!201723 (=> res!246510 e!346899)))

(assert (=> d!201723 (= res!246510 (isEmpty!4073 lt!242547))))

(assert (=> d!201723 (= lt!242547 e!346898)))

(declare-fun c!107657 () Bool)

(assert (=> d!201723 (= c!107657 (and (is-Cons!5637 rules!3103) (is-Nil!5637 (t!77144 rules!3103))))))

(declare-fun lt!242551 () Unit!10150)

(declare-fun lt!242550 () Unit!10150)

(assert (=> d!201723 (= lt!242551 lt!242550)))

(assert (=> d!201723 (isPrefix!724 lt!242299 lt!242299)))

(assert (=> d!201723 (= lt!242550 (lemmaIsPrefixRefl!462 lt!242299 lt!242299))))

(declare-fun rulesValidInductive!387 (LexerInterface!976 List!5647) Bool)

(assert (=> d!201723 (rulesValidInductive!387 thiss!22590 rules!3103)))

(assert (=> d!201723 (= (maxPrefix!674 thiss!22590 rules!3103 lt!242299) lt!242547)))

(declare-fun b!574127 () Bool)

(assert (=> b!574127 (= e!346898 call!39791)))

(declare-fun b!574128 () Bool)

(assert (=> b!574128 (= e!346900 (contains!1322 rules!3103 (rule!1834 (_1!3575 (get!2150 lt!242547)))))))

(assert (= (and d!201723 c!107657) b!574127))

(assert (= (and d!201723 (not c!107657)) b!574122))

(assert (= (or b!574127 b!574122) bm!39786))

(assert (= (and d!201723 (not res!246510)) b!574123))

(assert (= (and b!574123 res!246511) b!574124))

(assert (= (and b!574124 res!246512) b!574125))

(assert (= (and b!574125 res!246515) b!574121))

(assert (= (and b!574121 res!246514) b!574120))

(assert (= (and b!574120 res!246513) b!574126))

(assert (= (and b!574126 res!246516) b!574128))

(declare-fun m!830847 () Bool)

(assert (=> d!201723 m!830847))

(declare-fun m!830849 () Bool)

(assert (=> d!201723 m!830849))

(declare-fun m!830851 () Bool)

(assert (=> d!201723 m!830851))

(declare-fun m!830853 () Bool)

(assert (=> d!201723 m!830853))

(declare-fun m!830855 () Bool)

(assert (=> b!574125 m!830855))

(declare-fun m!830857 () Bool)

(assert (=> b!574125 m!830857))

(assert (=> b!574125 m!830675))

(assert (=> b!574128 m!830855))

(declare-fun m!830859 () Bool)

(assert (=> b!574128 m!830859))

(assert (=> b!574120 m!830855))

(declare-fun m!830861 () Bool)

(assert (=> b!574120 m!830861))

(assert (=> b!574120 m!830861))

(declare-fun m!830863 () Bool)

(assert (=> b!574120 m!830863))

(declare-fun m!830865 () Bool)

(assert (=> b!574123 m!830865))

(assert (=> b!574124 m!830855))

(declare-fun m!830867 () Bool)

(assert (=> b!574124 m!830867))

(assert (=> b!574124 m!830867))

(declare-fun m!830869 () Bool)

(assert (=> b!574124 m!830869))

(assert (=> b!574121 m!830855))

(assert (=> b!574121 m!830867))

(assert (=> b!574121 m!830867))

(assert (=> b!574121 m!830869))

(assert (=> b!574121 m!830869))

(declare-fun m!830871 () Bool)

(assert (=> b!574121 m!830871))

(declare-fun m!830873 () Bool)

(assert (=> b!574122 m!830873))

(declare-fun m!830875 () Bool)

(assert (=> bm!39786 m!830875))

(assert (=> b!574126 m!830855))

(assert (=> b!574126 m!830867))

(assert (=> b!574126 m!830867))

(assert (=> b!574126 m!830869))

(assert (=> b!574126 m!830869))

(declare-fun m!830877 () Bool)

(assert (=> b!574126 m!830877))

(assert (=> b!573756 d!201723))

(declare-fun b!574129 () Bool)

(declare-fun e!346901 () List!5645)

(assert (=> b!574129 (= e!346901 suffix!1342)))

(declare-fun b!574131 () Bool)

(declare-fun res!246517 () Bool)

(declare-fun e!346902 () Bool)

(assert (=> b!574131 (=> (not res!246517) (not e!346902))))

(declare-fun lt!242552 () List!5645)

(assert (=> b!574131 (= res!246517 (= (size!4489 lt!242552) (+ (size!4489 input!2705) (size!4489 suffix!1342))))))

(declare-fun d!201725 () Bool)

(assert (=> d!201725 e!346902))

(declare-fun res!246518 () Bool)

(assert (=> d!201725 (=> (not res!246518) (not e!346902))))

(assert (=> d!201725 (= res!246518 (= (content!991 lt!242552) (set.union (content!991 input!2705) (content!991 suffix!1342))))))

(assert (=> d!201725 (= lt!242552 e!346901)))

(declare-fun c!107658 () Bool)

(assert (=> d!201725 (= c!107658 (is-Nil!5635 input!2705))))

(assert (=> d!201725 (= (++!1578 input!2705 suffix!1342) lt!242552)))

(declare-fun b!574130 () Bool)

(assert (=> b!574130 (= e!346901 (Cons!5635 (h!11036 input!2705) (++!1578 (t!77142 input!2705) suffix!1342)))))

(declare-fun b!574132 () Bool)

(assert (=> b!574132 (= e!346902 (or (not (= suffix!1342 Nil!5635)) (= lt!242552 input!2705)))))

(assert (= (and d!201725 c!107658) b!574129))

(assert (= (and d!201725 (not c!107658)) b!574130))

(assert (= (and d!201725 res!246518) b!574131))

(assert (= (and b!574131 res!246517) b!574132))

(declare-fun m!830879 () Bool)

(assert (=> b!574131 m!830879))

(assert (=> b!574131 m!830617))

(assert (=> b!574131 m!830573))

(declare-fun m!830881 () Bool)

(assert (=> d!201725 m!830881))

(declare-fun m!830883 () Bool)

(assert (=> d!201725 m!830883))

(assert (=> d!201725 m!830579))

(declare-fun m!830885 () Bool)

(assert (=> b!574130 m!830885))

(assert (=> b!573756 d!201725))

(declare-fun d!201727 () Bool)

(assert (=> d!201727 (= (isEmpty!4070 rules!3103) (is-Nil!5637 rules!3103))))

(assert (=> b!573766 d!201727))

(declare-fun d!201729 () Bool)

(declare-fun lt!242553 () Int)

(assert (=> d!201729 (>= lt!242553 0)))

(declare-fun e!346903 () Int)

(assert (=> d!201729 (= lt!242553 e!346903)))

(declare-fun c!107659 () Bool)

(assert (=> d!201729 (= c!107659 (is-Nil!5635 (originalCharacters!1129 token!491)))))

(assert (=> d!201729 (= (size!4489 (originalCharacters!1129 token!491)) lt!242553)))

(declare-fun b!574133 () Bool)

(assert (=> b!574133 (= e!346903 0)))

(declare-fun b!574134 () Bool)

(assert (=> b!574134 (= e!346903 (+ 1 (size!4489 (t!77142 (originalCharacters!1129 token!491)))))))

(assert (= (and d!201729 c!107659) b!574133))

(assert (= (and d!201729 (not c!107659)) b!574134))

(declare-fun m!830887 () Bool)

(assert (=> b!574134 m!830887))

(assert (=> b!573755 d!201729))

(declare-fun d!201731 () Bool)

(assert (=> d!201731 (= (inv!7087 (tag!1352 (rule!1834 token!491))) (= (mod (str.len (value!35932 (tag!1352 (rule!1834 token!491)))) 2) 0))))

(assert (=> b!573757 d!201731))

(declare-fun d!201733 () Bool)

(declare-fun res!246521 () Bool)

(declare-fun e!346906 () Bool)

(assert (=> d!201733 (=> (not res!246521) (not e!346906))))

(assert (=> d!201733 (= res!246521 (semiInverseModEq!418 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toValue!1949 (transformation!1090 (rule!1834 token!491)))))))

(assert (=> d!201733 (= (inv!7090 (transformation!1090 (rule!1834 token!491))) e!346906)))

(declare-fun b!574137 () Bool)

(assert (=> b!574137 (= e!346906 (equivClasses!401 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toValue!1949 (transformation!1090 (rule!1834 token!491)))))))

(assert (= (and d!201733 res!246521) b!574137))

(assert (=> d!201733 m!830691))

(assert (=> b!574137 m!830693))

(assert (=> b!573757 d!201733))

(declare-fun d!201735 () Bool)

(assert (=> d!201735 (= (isDefined!1252 lt!242297) (not (isEmpty!4073 lt!242297)))))

(declare-fun bs!69266 () Bool)

(assert (= bs!69266 d!201735))

(declare-fun m!830889 () Bool)

(assert (=> bs!69266 m!830889))

(assert (=> b!573769 d!201735))

(declare-fun d!201737 () Bool)

(assert (=> d!201737 (= (inv!7087 (tag!1352 (h!11038 rules!3103))) (= (mod (str.len (value!35932 (tag!1352 (h!11038 rules!3103)))) 2) 0))))

(assert (=> b!573779 d!201737))

(declare-fun d!201739 () Bool)

(declare-fun res!246522 () Bool)

(declare-fun e!346907 () Bool)

(assert (=> d!201739 (=> (not res!246522) (not e!346907))))

(assert (=> d!201739 (= res!246522 (semiInverseModEq!418 (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toValue!1949 (transformation!1090 (h!11038 rules!3103)))))))

(assert (=> d!201739 (= (inv!7090 (transformation!1090 (h!11038 rules!3103))) e!346907)))

(declare-fun b!574138 () Bool)

(assert (=> b!574138 (= e!346907 (equivClasses!401 (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toValue!1949 (transformation!1090 (h!11038 rules!3103)))))))

(assert (= (and d!201739 res!246522) b!574138))

(declare-fun m!830891 () Bool)

(assert (=> d!201739 m!830891))

(declare-fun m!830893 () Bool)

(assert (=> b!574138 m!830893))

(assert (=> b!573779 d!201739))

(declare-fun d!201741 () Bool)

(assert (=> d!201741 (= (isEmpty!4069 (_2!3575 (v!16297 lt!242297))) (is-Nil!5635 (_2!3575 (v!16297 lt!242297))))))

(assert (=> b!573760 d!201741))

(declare-fun d!201743 () Bool)

(assert (=> d!201743 (= (get!2150 lt!242312) (v!16297 lt!242312))))

(assert (=> b!573781 d!201743))

(declare-fun b!574139 () Bool)

(declare-fun res!246526 () Bool)

(declare-fun e!346910 () Bool)

(assert (=> b!574139 (=> (not res!246526) (not e!346910))))

(declare-fun lt!242554 () Option!1441)

(assert (=> b!574139 (= res!246526 (= (value!35933 (_1!3575 (get!2150 lt!242554))) (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (get!2150 lt!242554)))) (seqFromList!1278 (originalCharacters!1129 (_1!3575 (get!2150 lt!242554)))))))))

(declare-fun b!574140 () Bool)

(declare-fun res!246527 () Bool)

(assert (=> b!574140 (=> (not res!246527) (not e!346910))))

(assert (=> b!574140 (= res!246527 (= (++!1578 (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242554)))) (_2!3575 (get!2150 lt!242554))) input!2705))))

(declare-fun b!574141 () Bool)

(declare-fun e!346908 () Option!1441)

(declare-fun lt!242556 () Option!1441)

(declare-fun lt!242555 () Option!1441)

(assert (=> b!574141 (= e!346908 (ite (and (is-None!1440 lt!242556) (is-None!1440 lt!242555)) None!1440 (ite (is-None!1440 lt!242555) lt!242556 (ite (is-None!1440 lt!242556) lt!242555 (ite (>= (size!4488 (_1!3575 (v!16297 lt!242556))) (size!4488 (_1!3575 (v!16297 lt!242555)))) lt!242556 lt!242555)))))))

(declare-fun call!39792 () Option!1441)

(assert (=> b!574141 (= lt!242556 call!39792)))

(assert (=> b!574141 (= lt!242555 (maxPrefix!674 thiss!22590 (t!77144 rules!3103) input!2705))))

(declare-fun b!574142 () Bool)

(declare-fun e!346909 () Bool)

(assert (=> b!574142 (= e!346909 e!346910)))

(declare-fun res!246524 () Bool)

(assert (=> b!574142 (=> (not res!246524) (not e!346910))))

(assert (=> b!574142 (= res!246524 (isDefined!1252 lt!242554))))

(declare-fun b!574143 () Bool)

(declare-fun res!246525 () Bool)

(assert (=> b!574143 (=> (not res!246525) (not e!346910))))

(assert (=> b!574143 (= res!246525 (= (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242554)))) (originalCharacters!1129 (_1!3575 (get!2150 lt!242554)))))))

(declare-fun b!574144 () Bool)

(declare-fun res!246528 () Bool)

(assert (=> b!574144 (=> (not res!246528) (not e!346910))))

(assert (=> b!574144 (= res!246528 (< (size!4489 (_2!3575 (get!2150 lt!242554))) (size!4489 input!2705)))))

(declare-fun bm!39787 () Bool)

(assert (=> bm!39787 (= call!39792 (maxPrefixOneRule!375 thiss!22590 (h!11038 rules!3103) input!2705))))

(declare-fun b!574145 () Bool)

(declare-fun res!246529 () Bool)

(assert (=> b!574145 (=> (not res!246529) (not e!346910))))

(assert (=> b!574145 (= res!246529 (matchR!571 (regex!1090 (rule!1834 (_1!3575 (get!2150 lt!242554)))) (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242554))))))))

(declare-fun d!201745 () Bool)

(assert (=> d!201745 e!346909))

(declare-fun res!246523 () Bool)

(assert (=> d!201745 (=> res!246523 e!346909)))

(assert (=> d!201745 (= res!246523 (isEmpty!4073 lt!242554))))

(assert (=> d!201745 (= lt!242554 e!346908)))

(declare-fun c!107660 () Bool)

(assert (=> d!201745 (= c!107660 (and (is-Cons!5637 rules!3103) (is-Nil!5637 (t!77144 rules!3103))))))

(declare-fun lt!242558 () Unit!10150)

(declare-fun lt!242557 () Unit!10150)

(assert (=> d!201745 (= lt!242558 lt!242557)))

(assert (=> d!201745 (isPrefix!724 input!2705 input!2705)))

(assert (=> d!201745 (= lt!242557 (lemmaIsPrefixRefl!462 input!2705 input!2705))))

(assert (=> d!201745 (rulesValidInductive!387 thiss!22590 rules!3103)))

(assert (=> d!201745 (= (maxPrefix!674 thiss!22590 rules!3103 input!2705) lt!242554)))

(declare-fun b!574146 () Bool)

(assert (=> b!574146 (= e!346908 call!39792)))

(declare-fun b!574147 () Bool)

(assert (=> b!574147 (= e!346910 (contains!1322 rules!3103 (rule!1834 (_1!3575 (get!2150 lt!242554)))))))

(assert (= (and d!201745 c!107660) b!574146))

(assert (= (and d!201745 (not c!107660)) b!574141))

(assert (= (or b!574146 b!574141) bm!39787))

(assert (= (and d!201745 (not res!246523)) b!574142))

(assert (= (and b!574142 res!246524) b!574143))

(assert (= (and b!574143 res!246525) b!574144))

(assert (= (and b!574144 res!246528) b!574140))

(assert (= (and b!574140 res!246527) b!574139))

(assert (= (and b!574139 res!246526) b!574145))

(assert (= (and b!574145 res!246529) b!574147))

(declare-fun m!830895 () Bool)

(assert (=> d!201745 m!830895))

(assert (=> d!201745 m!830357))

(assert (=> d!201745 m!830353))

(assert (=> d!201745 m!830853))

(declare-fun m!830897 () Bool)

(assert (=> b!574144 m!830897))

(declare-fun m!830899 () Bool)

(assert (=> b!574144 m!830899))

(assert (=> b!574144 m!830617))

(assert (=> b!574147 m!830897))

(declare-fun m!830901 () Bool)

(assert (=> b!574147 m!830901))

(assert (=> b!574139 m!830897))

(declare-fun m!830903 () Bool)

(assert (=> b!574139 m!830903))

(assert (=> b!574139 m!830903))

(declare-fun m!830905 () Bool)

(assert (=> b!574139 m!830905))

(declare-fun m!830907 () Bool)

(assert (=> b!574142 m!830907))

(assert (=> b!574143 m!830897))

(declare-fun m!830909 () Bool)

(assert (=> b!574143 m!830909))

(assert (=> b!574143 m!830909))

(declare-fun m!830911 () Bool)

(assert (=> b!574143 m!830911))

(assert (=> b!574140 m!830897))

(assert (=> b!574140 m!830909))

(assert (=> b!574140 m!830909))

(assert (=> b!574140 m!830911))

(assert (=> b!574140 m!830911))

(declare-fun m!830913 () Bool)

(assert (=> b!574140 m!830913))

(declare-fun m!830915 () Bool)

(assert (=> b!574141 m!830915))

(declare-fun m!830917 () Bool)

(assert (=> bm!39787 m!830917))

(assert (=> b!574145 m!830897))

(assert (=> b!574145 m!830909))

(assert (=> b!574145 m!830909))

(assert (=> b!574145 m!830911))

(assert (=> b!574145 m!830911))

(declare-fun m!830919 () Bool)

(assert (=> b!574145 m!830919))

(assert (=> b!573770 d!201745))

(declare-fun d!201747 () Bool)

(assert (=> d!201747 (= (list!2340 (charsOf!719 token!491)) (list!2342 (c!107607 (charsOf!719 token!491))))))

(declare-fun bs!69267 () Bool)

(assert (= bs!69267 d!201747))

(declare-fun m!830921 () Bool)

(assert (=> bs!69267 m!830921))

(assert (=> b!573759 d!201747))

(declare-fun d!201749 () Bool)

(declare-fun lt!242559 () BalanceConc!3622)

(assert (=> d!201749 (= (list!2340 lt!242559) (originalCharacters!1129 token!491))))

(assert (=> d!201749 (= lt!242559 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (value!35933 token!491)))))

(assert (=> d!201749 (= (charsOf!719 token!491) lt!242559)))

(declare-fun b_lambda!22335 () Bool)

(assert (=> (not b_lambda!22335) (not d!201749)))

(assert (=> d!201749 t!77149))

(declare-fun b_and!56151 () Bool)

(assert (= b_and!56143 (and (=> t!77149 result!55998) b_and!56151)))

(assert (=> d!201749 t!77151))

(declare-fun b_and!56153 () Bool)

(assert (= b_and!56145 (and (=> t!77151 result!56002) b_and!56153)))

(declare-fun m!830923 () Bool)

(assert (=> d!201749 m!830923))

(assert (=> d!201749 m!830567))

(assert (=> b!573759 d!201749))

(declare-fun d!201751 () Bool)

(declare-fun lt!242560 () Int)

(assert (=> d!201751 (>= lt!242560 0)))

(declare-fun e!346911 () Int)

(assert (=> d!201751 (= lt!242560 e!346911)))

(declare-fun c!107661 () Bool)

(assert (=> d!201751 (= c!107661 (is-Nil!5635 (originalCharacters!1129 (_1!3575 (v!16297 lt!242297)))))))

(assert (=> d!201751 (= (size!4489 (originalCharacters!1129 (_1!3575 (v!16297 lt!242297)))) lt!242560)))

(declare-fun b!574148 () Bool)

(assert (=> b!574148 (= e!346911 0)))

(declare-fun b!574149 () Bool)

(assert (=> b!574149 (= e!346911 (+ 1 (size!4489 (t!77142 (originalCharacters!1129 (_1!3575 (v!16297 lt!242297)))))))))

(assert (= (and d!201751 c!107661) b!574148))

(assert (= (and d!201751 (not c!107661)) b!574149))

(declare-fun m!830925 () Bool)

(assert (=> b!574149 m!830925))

(assert (=> b!573761 d!201751))

(declare-fun d!201753 () Bool)

(assert (=> d!201753 (= (seqFromList!1278 lt!242319) (fromListB!554 lt!242319))))

(declare-fun bs!69268 () Bool)

(assert (= bs!69268 d!201753))

(declare-fun m!830927 () Bool)

(assert (=> bs!69268 m!830927))

(assert (=> b!573782 d!201753))

(declare-fun d!201755 () Bool)

(assert (=> d!201755 (= (maxPrefixOneRule!375 thiss!22590 (rule!1834 token!491) lt!242299) (Some!1440 (tuple2!6623 (Token!1917 (apply!1355 (transformation!1090 (rule!1834 token!491)) (seqFromList!1278 lt!242319)) (rule!1834 token!491) (size!4489 lt!242319) lt!242319) suffix!1342)))))

(declare-fun lt!242564 () Unit!10150)

(declare-fun choose!4095 (LexerInterface!976 List!5647 List!5645 List!5645 List!5645 Rule!1980) Unit!10150)

(assert (=> d!201755 (= lt!242564 (choose!4095 thiss!22590 rules!3103 lt!242319 lt!242299 suffix!1342 (rule!1834 token!491)))))

(assert (=> d!201755 (not (isEmpty!4070 rules!3103))))

(assert (=> d!201755 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!125 thiss!22590 rules!3103 lt!242319 lt!242299 suffix!1342 (rule!1834 token!491)) lt!242564)))

(declare-fun bs!69269 () Bool)

(assert (= bs!69269 d!201755))

(declare-fun m!830929 () Bool)

(assert (=> bs!69269 m!830929))

(assert (=> bs!69269 m!830317))

(declare-fun m!830931 () Bool)

(assert (=> bs!69269 m!830931))

(assert (=> bs!69269 m!830317))

(assert (=> bs!69269 m!830339))

(assert (=> bs!69269 m!830331))

(assert (=> bs!69269 m!830381))

(assert (=> b!573782 d!201755))

(declare-fun d!201757 () Bool)

(assert (=> d!201757 (= (maxPrefixOneRule!375 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))) input!2705) (Some!1440 (tuple2!6623 (Token!1917 (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) (seqFromList!1278 lt!242325)) (rule!1834 (_1!3575 (v!16297 lt!242297))) (size!4489 lt!242325) lt!242325) (_2!3575 (v!16297 lt!242297)))))))

(declare-fun lt!242565 () Unit!10150)

(assert (=> d!201757 (= lt!242565 (choose!4095 thiss!22590 rules!3103 lt!242325 input!2705 (_2!3575 (v!16297 lt!242297)) (rule!1834 (_1!3575 (v!16297 lt!242297)))))))

(assert (=> d!201757 (not (isEmpty!4070 rules!3103))))

(assert (=> d!201757 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!125 thiss!22590 rules!3103 lt!242325 input!2705 (_2!3575 (v!16297 lt!242297)) (rule!1834 (_1!3575 (v!16297 lt!242297)))) lt!242565)))

(declare-fun bs!69270 () Bool)

(assert (= bs!69270 d!201757))

(declare-fun m!830933 () Bool)

(assert (=> bs!69270 m!830933))

(assert (=> bs!69270 m!830343))

(declare-fun m!830935 () Bool)

(assert (=> bs!69270 m!830935))

(assert (=> bs!69270 m!830343))

(assert (=> bs!69270 m!830339))

(assert (=> bs!69270 m!830319))

(assert (=> bs!69270 m!830373))

(assert (=> b!573782 d!201757))

(assert (=> b!573782 d!201693))

(declare-fun d!201759 () Bool)

(assert (=> d!201759 (= (apply!1355 (transformation!1090 (rule!1834 token!491)) lt!242323) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 token!491))) lt!242323))))

(declare-fun b_lambda!22339 () Bool)

(assert (=> (not b_lambda!22339) (not d!201759)))

(declare-fun t!77175 () Bool)

(declare-fun tb!50077 () Bool)

(assert (=> (and b!573772 (= (toValue!1949 (transformation!1090 (h!11038 rules!3103))) (toValue!1949 (transformation!1090 (rule!1834 token!491)))) t!77175) tb!50077))

(declare-fun result!56031 () Bool)

(assert (=> tb!50077 (= result!56031 (inv!21 (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 token!491))) lt!242323)))))

(declare-fun m!830937 () Bool)

(assert (=> tb!50077 m!830937))

(assert (=> d!201759 t!77175))

(declare-fun b_and!56155 () Bool)

(assert (= b_and!56147 (and (=> t!77175 result!56031) b_and!56155)))

(declare-fun t!77177 () Bool)

(declare-fun tb!50079 () Bool)

(assert (=> (and b!573774 (= (toValue!1949 (transformation!1090 (rule!1834 token!491))) (toValue!1949 (transformation!1090 (rule!1834 token!491)))) t!77177) tb!50079))

(declare-fun result!56034 () Bool)

(assert (= result!56034 result!56031))

(assert (=> d!201759 t!77177))

(declare-fun b_and!56157 () Bool)

(assert (= b_and!56149 (and (=> t!77177 result!56034) b_and!56157)))

(declare-fun m!830943 () Bool)

(assert (=> d!201759 m!830943))

(assert (=> b!573782 d!201759))

(declare-fun d!201761 () Bool)

(declare-fun lt!242566 () List!5645)

(assert (=> d!201761 (= (++!1578 lt!242319 lt!242566) lt!242299)))

(declare-fun e!346917 () List!5645)

(assert (=> d!201761 (= lt!242566 e!346917)))

(declare-fun c!107662 () Bool)

(assert (=> d!201761 (= c!107662 (is-Cons!5635 lt!242319))))

(assert (=> d!201761 (>= (size!4489 lt!242299) (size!4489 lt!242319))))

(assert (=> d!201761 (= (getSuffix!243 lt!242299 lt!242319) lt!242566)))

(declare-fun b!574156 () Bool)

(assert (=> b!574156 (= e!346917 (getSuffix!243 (tail!746 lt!242299) (t!77142 lt!242319)))))

(declare-fun b!574157 () Bool)

(assert (=> b!574157 (= e!346917 lt!242299)))

(assert (= (and d!201761 c!107662) b!574156))

(assert (= (and d!201761 (not c!107662)) b!574157))

(declare-fun m!830947 () Bool)

(assert (=> d!201761 m!830947))

(assert (=> d!201761 m!830675))

(assert (=> d!201761 m!830381))

(assert (=> b!574156 m!830671))

(assert (=> b!574156 m!830671))

(declare-fun m!830953 () Bool)

(assert (=> b!574156 m!830953))

(assert (=> b!573782 d!201761))

(declare-fun d!201763 () Bool)

(declare-fun e!346968 () Bool)

(assert (=> d!201763 e!346968))

(declare-fun res!246588 () Bool)

(assert (=> d!201763 (=> res!246588 e!346968)))

(declare-fun lt!242600 () Option!1441)

(assert (=> d!201763 (= res!246588 (isEmpty!4073 lt!242600))))

(declare-fun e!346970 () Option!1441)

(assert (=> d!201763 (= lt!242600 e!346970)))

(declare-fun c!107685 () Bool)

(declare-datatypes ((tuple2!6626 0))(
  ( (tuple2!6627 (_1!3577 List!5645) (_2!3577 List!5645)) )
))
(declare-fun lt!242601 () tuple2!6626)

(assert (=> d!201763 (= c!107685 (isEmpty!4069 (_1!3577 lt!242601)))))

(declare-fun findLongestMatch!143 (Regex!1424 List!5645) tuple2!6626)

(assert (=> d!201763 (= lt!242601 (findLongestMatch!143 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) input!2705))))

(assert (=> d!201763 (ruleValid!300 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))))))

(assert (=> d!201763 (= (maxPrefixOneRule!375 thiss!22590 (rule!1834 (_1!3575 (v!16297 lt!242297))) input!2705) lt!242600)))

(declare-fun b!574260 () Bool)

(declare-fun e!346967 () Bool)

(assert (=> b!574260 (= e!346968 e!346967)))

(declare-fun res!246593 () Bool)

(assert (=> b!574260 (=> (not res!246593) (not e!346967))))

(assert (=> b!574260 (= res!246593 (matchR!571 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242600))))))))

(declare-fun b!574261 () Bool)

(assert (=> b!574261 (= e!346967 (= (size!4488 (_1!3575 (get!2150 lt!242600))) (size!4489 (originalCharacters!1129 (_1!3575 (get!2150 lt!242600))))))))

(declare-fun b!574262 () Bool)

(assert (=> b!574262 (= e!346970 None!1440)))

(declare-fun b!574263 () Bool)

(declare-fun res!246591 () Bool)

(assert (=> b!574263 (=> (not res!246591) (not e!346967))))

(assert (=> b!574263 (= res!246591 (= (value!35933 (_1!3575 (get!2150 lt!242600))) (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (get!2150 lt!242600)))) (seqFromList!1278 (originalCharacters!1129 (_1!3575 (get!2150 lt!242600)))))))))

(declare-fun b!574264 () Bool)

(declare-fun res!246589 () Bool)

(assert (=> b!574264 (=> (not res!246589) (not e!346967))))

(assert (=> b!574264 (= res!246589 (= (++!1578 (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242600)))) (_2!3575 (get!2150 lt!242600))) input!2705))))

(declare-fun b!574265 () Bool)

(declare-fun res!246592 () Bool)

(assert (=> b!574265 (=> (not res!246592) (not e!346967))))

(assert (=> b!574265 (= res!246592 (= (rule!1834 (_1!3575 (get!2150 lt!242600))) (rule!1834 (_1!3575 (v!16297 lt!242297)))))))

(declare-fun b!574266 () Bool)

(declare-fun e!346969 () Bool)

(declare-fun findLongestMatchInner!164 (Regex!1424 List!5645 Int List!5645 List!5645 Int) tuple2!6626)

(assert (=> b!574266 (= e!346969 (matchR!571 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) (_1!3577 (findLongestMatchInner!164 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) Nil!5635 (size!4489 Nil!5635) input!2705 input!2705 (size!4489 input!2705)))))))

(declare-fun b!574267 () Bool)

(declare-fun size!4492 (BalanceConc!3622) Int)

(assert (=> b!574267 (= e!346970 (Some!1440 (tuple2!6623 (Token!1917 (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) (seqFromList!1278 (_1!3577 lt!242601))) (rule!1834 (_1!3575 (v!16297 lt!242297))) (size!4492 (seqFromList!1278 (_1!3577 lt!242601))) (_1!3577 lt!242601)) (_2!3577 lt!242601))))))

(declare-fun lt!242597 () Unit!10150)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!148 (Regex!1424 List!5645) Unit!10150)

(assert (=> b!574267 (= lt!242597 (longestMatchIsAcceptedByMatchOrIsEmpty!148 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) input!2705))))

(declare-fun res!246587 () Bool)

(assert (=> b!574267 (= res!246587 (isEmpty!4069 (_1!3577 (findLongestMatchInner!164 (regex!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) Nil!5635 (size!4489 Nil!5635) input!2705 input!2705 (size!4489 input!2705)))))))

(assert (=> b!574267 (=> res!246587 e!346969)))

(assert (=> b!574267 e!346969))

(declare-fun lt!242598 () Unit!10150)

(assert (=> b!574267 (= lt!242598 lt!242597)))

(declare-fun lt!242599 () Unit!10150)

(assert (=> b!574267 (= lt!242599 (lemmaSemiInverse!193 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))) (seqFromList!1278 (_1!3577 lt!242601))))))

(declare-fun b!574268 () Bool)

(declare-fun res!246590 () Bool)

(assert (=> b!574268 (=> (not res!246590) (not e!346967))))

(assert (=> b!574268 (= res!246590 (< (size!4489 (_2!3575 (get!2150 lt!242600))) (size!4489 input!2705)))))

(assert (= (and d!201763 c!107685) b!574262))

(assert (= (and d!201763 (not c!107685)) b!574267))

(assert (= (and b!574267 (not res!246587)) b!574266))

(assert (= (and d!201763 (not res!246588)) b!574260))

(assert (= (and b!574260 res!246593) b!574264))

(assert (= (and b!574264 res!246589) b!574268))

(assert (= (and b!574268 res!246590) b!574265))

(assert (= (and b!574265 res!246592) b!574263))

(assert (= (and b!574263 res!246591) b!574261))

(declare-fun m!830997 () Bool)

(assert (=> b!574266 m!830997))

(assert (=> b!574266 m!830617))

(assert (=> b!574266 m!830997))

(assert (=> b!574266 m!830617))

(declare-fun m!830999 () Bool)

(assert (=> b!574266 m!830999))

(declare-fun m!831001 () Bool)

(assert (=> b!574266 m!831001))

(declare-fun m!831003 () Bool)

(assert (=> d!201763 m!831003))

(declare-fun m!831005 () Bool)

(assert (=> d!201763 m!831005))

(declare-fun m!831007 () Bool)

(assert (=> d!201763 m!831007))

(assert (=> d!201763 m!830393))

(declare-fun m!831009 () Bool)

(assert (=> b!574268 m!831009))

(declare-fun m!831011 () Bool)

(assert (=> b!574268 m!831011))

(assert (=> b!574268 m!830617))

(assert (=> b!574260 m!831009))

(declare-fun m!831013 () Bool)

(assert (=> b!574260 m!831013))

(assert (=> b!574260 m!831013))

(declare-fun m!831015 () Bool)

(assert (=> b!574260 m!831015))

(assert (=> b!574260 m!831015))

(declare-fun m!831017 () Bool)

(assert (=> b!574260 m!831017))

(assert (=> b!574263 m!831009))

(declare-fun m!831019 () Bool)

(assert (=> b!574263 m!831019))

(assert (=> b!574263 m!831019))

(declare-fun m!831021 () Bool)

(assert (=> b!574263 m!831021))

(declare-fun m!831023 () Bool)

(assert (=> b!574267 m!831023))

(declare-fun m!831025 () Bool)

(assert (=> b!574267 m!831025))

(declare-fun m!831027 () Bool)

(assert (=> b!574267 m!831027))

(assert (=> b!574267 m!831023))

(declare-fun m!831029 () Bool)

(assert (=> b!574267 m!831029))

(assert (=> b!574267 m!830997))

(assert (=> b!574267 m!830617))

(assert (=> b!574267 m!831023))

(declare-fun m!831031 () Bool)

(assert (=> b!574267 m!831031))

(assert (=> b!574267 m!831023))

(declare-fun m!831033 () Bool)

(assert (=> b!574267 m!831033))

(assert (=> b!574267 m!830997))

(assert (=> b!574267 m!830617))

(assert (=> b!574267 m!830999))

(assert (=> b!574265 m!831009))

(assert (=> b!574264 m!831009))

(assert (=> b!574264 m!831013))

(assert (=> b!574264 m!831013))

(assert (=> b!574264 m!831015))

(assert (=> b!574264 m!831015))

(declare-fun m!831035 () Bool)

(assert (=> b!574264 m!831035))

(assert (=> b!574261 m!831009))

(declare-fun m!831037 () Bool)

(assert (=> b!574261 m!831037))

(assert (=> b!573782 d!201763))

(declare-fun d!201787 () Bool)

(declare-fun e!346972 () Bool)

(assert (=> d!201787 e!346972))

(declare-fun res!246595 () Bool)

(assert (=> d!201787 (=> res!246595 e!346972)))

(declare-fun lt!242605 () Option!1441)

(assert (=> d!201787 (= res!246595 (isEmpty!4073 lt!242605))))

(declare-fun e!346974 () Option!1441)

(assert (=> d!201787 (= lt!242605 e!346974)))

(declare-fun c!107686 () Bool)

(declare-fun lt!242606 () tuple2!6626)

(assert (=> d!201787 (= c!107686 (isEmpty!4069 (_1!3577 lt!242606)))))

(assert (=> d!201787 (= lt!242606 (findLongestMatch!143 (regex!1090 (rule!1834 token!491)) lt!242299))))

(assert (=> d!201787 (ruleValid!300 thiss!22590 (rule!1834 token!491))))

(assert (=> d!201787 (= (maxPrefixOneRule!375 thiss!22590 (rule!1834 token!491) lt!242299) lt!242605)))

(declare-fun b!574269 () Bool)

(declare-fun e!346971 () Bool)

(assert (=> b!574269 (= e!346972 e!346971)))

(declare-fun res!246600 () Bool)

(assert (=> b!574269 (=> (not res!246600) (not e!346971))))

(assert (=> b!574269 (= res!246600 (matchR!571 (regex!1090 (rule!1834 token!491)) (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242605))))))))

(declare-fun b!574270 () Bool)

(assert (=> b!574270 (= e!346971 (= (size!4488 (_1!3575 (get!2150 lt!242605))) (size!4489 (originalCharacters!1129 (_1!3575 (get!2150 lt!242605))))))))

(declare-fun b!574271 () Bool)

(assert (=> b!574271 (= e!346974 None!1440)))

(declare-fun b!574272 () Bool)

(declare-fun res!246598 () Bool)

(assert (=> b!574272 (=> (not res!246598) (not e!346971))))

(assert (=> b!574272 (= res!246598 (= (value!35933 (_1!3575 (get!2150 lt!242605))) (apply!1355 (transformation!1090 (rule!1834 (_1!3575 (get!2150 lt!242605)))) (seqFromList!1278 (originalCharacters!1129 (_1!3575 (get!2150 lt!242605)))))))))

(declare-fun b!574273 () Bool)

(declare-fun res!246596 () Bool)

(assert (=> b!574273 (=> (not res!246596) (not e!346971))))

(assert (=> b!574273 (= res!246596 (= (++!1578 (list!2340 (charsOf!719 (_1!3575 (get!2150 lt!242605)))) (_2!3575 (get!2150 lt!242605))) lt!242299))))

(declare-fun b!574274 () Bool)

(declare-fun res!246599 () Bool)

(assert (=> b!574274 (=> (not res!246599) (not e!346971))))

(assert (=> b!574274 (= res!246599 (= (rule!1834 (_1!3575 (get!2150 lt!242605))) (rule!1834 token!491)))))

(declare-fun b!574275 () Bool)

(declare-fun e!346973 () Bool)

(assert (=> b!574275 (= e!346973 (matchR!571 (regex!1090 (rule!1834 token!491)) (_1!3577 (findLongestMatchInner!164 (regex!1090 (rule!1834 token!491)) Nil!5635 (size!4489 Nil!5635) lt!242299 lt!242299 (size!4489 lt!242299)))))))

(declare-fun b!574276 () Bool)

(assert (=> b!574276 (= e!346974 (Some!1440 (tuple2!6623 (Token!1917 (apply!1355 (transformation!1090 (rule!1834 token!491)) (seqFromList!1278 (_1!3577 lt!242606))) (rule!1834 token!491) (size!4492 (seqFromList!1278 (_1!3577 lt!242606))) (_1!3577 lt!242606)) (_2!3577 lt!242606))))))

(declare-fun lt!242602 () Unit!10150)

(assert (=> b!574276 (= lt!242602 (longestMatchIsAcceptedByMatchOrIsEmpty!148 (regex!1090 (rule!1834 token!491)) lt!242299))))

(declare-fun res!246594 () Bool)

(assert (=> b!574276 (= res!246594 (isEmpty!4069 (_1!3577 (findLongestMatchInner!164 (regex!1090 (rule!1834 token!491)) Nil!5635 (size!4489 Nil!5635) lt!242299 lt!242299 (size!4489 lt!242299)))))))

(assert (=> b!574276 (=> res!246594 e!346973)))

(assert (=> b!574276 e!346973))

(declare-fun lt!242603 () Unit!10150)

(assert (=> b!574276 (= lt!242603 lt!242602)))

(declare-fun lt!242604 () Unit!10150)

(assert (=> b!574276 (= lt!242604 (lemmaSemiInverse!193 (transformation!1090 (rule!1834 token!491)) (seqFromList!1278 (_1!3577 lt!242606))))))

(declare-fun b!574277 () Bool)

(declare-fun res!246597 () Bool)

(assert (=> b!574277 (=> (not res!246597) (not e!346971))))

(assert (=> b!574277 (= res!246597 (< (size!4489 (_2!3575 (get!2150 lt!242605))) (size!4489 lt!242299)))))

(assert (= (and d!201787 c!107686) b!574271))

(assert (= (and d!201787 (not c!107686)) b!574276))

(assert (= (and b!574276 (not res!246594)) b!574275))

(assert (= (and d!201787 (not res!246595)) b!574269))

(assert (= (and b!574269 res!246600) b!574273))

(assert (= (and b!574273 res!246596) b!574277))

(assert (= (and b!574277 res!246597) b!574274))

(assert (= (and b!574274 res!246599) b!574272))

(assert (= (and b!574272 res!246598) b!574270))

(assert (=> b!574275 m!830997))

(assert (=> b!574275 m!830675))

(assert (=> b!574275 m!830997))

(assert (=> b!574275 m!830675))

(declare-fun m!831039 () Bool)

(assert (=> b!574275 m!831039))

(declare-fun m!831041 () Bool)

(assert (=> b!574275 m!831041))

(declare-fun m!831043 () Bool)

(assert (=> d!201787 m!831043))

(declare-fun m!831045 () Bool)

(assert (=> d!201787 m!831045))

(declare-fun m!831047 () Bool)

(assert (=> d!201787 m!831047))

(assert (=> d!201787 m!830365))

(declare-fun m!831049 () Bool)

(assert (=> b!574277 m!831049))

(declare-fun m!831051 () Bool)

(assert (=> b!574277 m!831051))

(assert (=> b!574277 m!830675))

(assert (=> b!574269 m!831049))

(declare-fun m!831053 () Bool)

(assert (=> b!574269 m!831053))

(assert (=> b!574269 m!831053))

(declare-fun m!831055 () Bool)

(assert (=> b!574269 m!831055))

(assert (=> b!574269 m!831055))

(declare-fun m!831057 () Bool)

(assert (=> b!574269 m!831057))

(assert (=> b!574272 m!831049))

(declare-fun m!831061 () Bool)

(assert (=> b!574272 m!831061))

(assert (=> b!574272 m!831061))

(declare-fun m!831069 () Bool)

(assert (=> b!574272 m!831069))

(declare-fun m!831071 () Bool)

(assert (=> b!574276 m!831071))

(declare-fun m!831075 () Bool)

(assert (=> b!574276 m!831075))

(declare-fun m!831079 () Bool)

(assert (=> b!574276 m!831079))

(assert (=> b!574276 m!831071))

(declare-fun m!831083 () Bool)

(assert (=> b!574276 m!831083))

(assert (=> b!574276 m!830997))

(assert (=> b!574276 m!830675))

(assert (=> b!574276 m!831071))

(declare-fun m!831087 () Bool)

(assert (=> b!574276 m!831087))

(assert (=> b!574276 m!831071))

(declare-fun m!831089 () Bool)

(assert (=> b!574276 m!831089))

(assert (=> b!574276 m!830997))

(assert (=> b!574276 m!830675))

(assert (=> b!574276 m!831039))

(assert (=> b!574274 m!831049))

(assert (=> b!574273 m!831049))

(assert (=> b!574273 m!831053))

(assert (=> b!574273 m!831053))

(assert (=> b!574273 m!831055))

(assert (=> b!574273 m!831055))

(declare-fun m!831097 () Bool)

(assert (=> b!574273 m!831097))

(assert (=> b!574270 m!831049))

(declare-fun m!831099 () Bool)

(assert (=> b!574270 m!831099))

(assert (=> b!573782 d!201787))

(declare-fun bs!69273 () Bool)

(declare-fun d!201789 () Bool)

(assert (= bs!69273 (and d!201789 d!201693)))

(declare-fun lambda!15689 () Int)

(assert (=> bs!69273 (= (and (= (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) (= (toValue!1949 (transformation!1090 (rule!1834 token!491))) (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297))))))) (= lambda!15689 lambda!15685))))

(declare-fun b!574287 () Bool)

(declare-fun e!346978 () Bool)

(assert (=> b!574287 (= e!346978 true)))

(assert (=> d!201789 e!346978))

(assert (= d!201789 b!574287))

(assert (=> b!574287 (< (dynLambda!3258 order!4583 (toValue!1949 (transformation!1090 (rule!1834 token!491)))) (dynLambda!3259 order!4585 lambda!15689))))

(assert (=> b!574287 (< (dynLambda!3260 order!4587 (toChars!1808 (transformation!1090 (rule!1834 token!491)))) (dynLambda!3259 order!4585 lambda!15689))))

(assert (=> d!201789 (= (list!2340 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 token!491))) lt!242323))) (list!2340 lt!242323))))

(declare-fun lt!242612 () Unit!10150)

(assert (=> d!201789 (= lt!242612 (ForallOf!101 lambda!15689 lt!242323))))

(assert (=> d!201789 (= (lemmaSemiInverse!193 (transformation!1090 (rule!1834 token!491)) lt!242323) lt!242612)))

(declare-fun b_lambda!22345 () Bool)

(assert (=> (not b_lambda!22345) (not d!201789)))

(declare-fun t!77185 () Bool)

(declare-fun tb!50087 () Bool)

(assert (=> (and b!573772 (= (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toChars!1808 (transformation!1090 (rule!1834 token!491)))) t!77185) tb!50087))

(declare-fun e!346979 () Bool)

(declare-fun b!574288 () Bool)

(declare-fun tp!180221 () Bool)

(assert (=> b!574288 (= e!346979 (and (inv!7094 (c!107607 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 token!491))) lt!242323)))) tp!180221))))

(declare-fun result!56042 () Bool)

(assert (=> tb!50087 (= result!56042 (and (inv!7095 (dynLambda!3256 (toChars!1808 (transformation!1090 (rule!1834 token!491))) (dynLambda!3257 (toValue!1949 (transformation!1090 (rule!1834 token!491))) lt!242323))) e!346979))))

(assert (= tb!50087 b!574288))

(declare-fun m!831107 () Bool)

(assert (=> b!574288 m!831107))

(declare-fun m!831109 () Bool)

(assert (=> tb!50087 m!831109))

(assert (=> d!201789 t!77185))

(declare-fun b_and!56171 () Bool)

(assert (= b_and!56151 (and (=> t!77185 result!56042) b_and!56171)))

(declare-fun t!77187 () Bool)

(declare-fun tb!50089 () Bool)

(assert (=> (and b!573774 (= (toChars!1808 (transformation!1090 (rule!1834 token!491))) (toChars!1808 (transformation!1090 (rule!1834 token!491)))) t!77187) tb!50089))

(declare-fun result!56044 () Bool)

(assert (= result!56044 result!56042))

(assert (=> d!201789 t!77187))

(declare-fun b_and!56173 () Bool)

(assert (= b_and!56153 (and (=> t!77187 result!56044) b_and!56173)))

(declare-fun b_lambda!22347 () Bool)

(assert (=> (not b_lambda!22347) (not d!201789)))

(assert (=> d!201789 t!77175))

(declare-fun b_and!56175 () Bool)

(assert (= b_and!56155 (and (=> t!77175 result!56031) b_and!56175)))

(assert (=> d!201789 t!77177))

(declare-fun b_and!56177 () Bool)

(assert (= b_and!56157 (and (=> t!77177 result!56034) b_and!56177)))

(assert (=> d!201789 m!830943))

(declare-fun m!831111 () Bool)

(assert (=> d!201789 m!831111))

(declare-fun m!831113 () Bool)

(assert (=> d!201789 m!831113))

(declare-fun m!831115 () Bool)

(assert (=> d!201789 m!831115))

(declare-fun m!831117 () Bool)

(assert (=> d!201789 m!831117))

(assert (=> d!201789 m!830943))

(assert (=> d!201789 m!831111))

(assert (=> b!573782 d!201789))

(declare-fun d!201793 () Bool)

(assert (=> d!201793 (= suffix!1342 lt!242311)))

(declare-fun lt!242613 () Unit!10150)

(assert (=> d!201793 (= lt!242613 (choose!4088 lt!242319 suffix!1342 lt!242319 lt!242311 lt!242299))))

(assert (=> d!201793 (isPrefix!724 lt!242319 lt!242299)))

(assert (=> d!201793 (= (lemmaSamePrefixThenSameSuffix!447 lt!242319 suffix!1342 lt!242319 lt!242311 lt!242299) lt!242613)))

(declare-fun bs!69274 () Bool)

(assert (= bs!69274 d!201793))

(declare-fun m!831119 () Bool)

(assert (=> bs!69274 m!831119))

(declare-fun m!831121 () Bool)

(assert (=> bs!69274 m!831121))

(assert (=> b!573782 d!201793))

(declare-fun d!201795 () Bool)

(assert (=> d!201795 (= (isEmpty!4069 input!2705) (is-Nil!5635 input!2705))))

(assert (=> b!573750 d!201795))

(declare-fun d!201797 () Bool)

(declare-fun res!246616 () Bool)

(declare-fun e!346986 () Bool)

(assert (=> d!201797 (=> (not res!246616) (not e!346986))))

(declare-fun rulesValid!382 (LexerInterface!976 List!5647) Bool)

(assert (=> d!201797 (= res!246616 (rulesValid!382 thiss!22590 rules!3103))))

(assert (=> d!201797 (= (rulesInvariant!939 thiss!22590 rules!3103) e!346986)))

(declare-fun b!574299 () Bool)

(declare-datatypes ((List!5651 0))(
  ( (Nil!5641) (Cons!5641 (h!11042 String!7316) (t!77220 List!5651)) )
))
(declare-fun noDuplicateTag!382 (LexerInterface!976 List!5647 List!5651) Bool)

(assert (=> b!574299 (= e!346986 (noDuplicateTag!382 thiss!22590 rules!3103 Nil!5641))))

(assert (= (and d!201797 res!246616) b!574299))

(declare-fun m!831131 () Bool)

(assert (=> d!201797 m!831131))

(declare-fun m!831135 () Bool)

(assert (=> b!574299 m!831135))

(assert (=> b!573771 d!201797))

(declare-fun b!574313 () Bool)

(declare-fun e!346990 () Bool)

(declare-fun tp!180235 () Bool)

(declare-fun tp!180236 () Bool)

(assert (=> b!574313 (= e!346990 (and tp!180235 tp!180236))))

(declare-fun b!574312 () Bool)

(declare-fun tp!180234 () Bool)

(assert (=> b!574312 (= e!346990 tp!180234)))

(declare-fun b!574310 () Bool)

(assert (=> b!574310 (= e!346990 tp_is_empty!3203)))

(assert (=> b!573757 (= tp!180175 e!346990)))

(declare-fun b!574311 () Bool)

(declare-fun tp!180232 () Bool)

(declare-fun tp!180233 () Bool)

(assert (=> b!574311 (= e!346990 (and tp!180232 tp!180233))))

(assert (= (and b!573757 (is-ElementMatch!1424 (regex!1090 (rule!1834 token!491)))) b!574310))

(assert (= (and b!573757 (is-Concat!2538 (regex!1090 (rule!1834 token!491)))) b!574311))

(assert (= (and b!573757 (is-Star!1424 (regex!1090 (rule!1834 token!491)))) b!574312))

(assert (= (and b!573757 (is-Union!1424 (regex!1090 (rule!1834 token!491)))) b!574313))

(declare-fun b!574318 () Bool)

(declare-fun e!346993 () Bool)

(declare-fun tp!180239 () Bool)

(assert (=> b!574318 (= e!346993 (and tp_is_empty!3203 tp!180239))))

(assert (=> b!573778 (= tp!180172 e!346993)))

(assert (= (and b!573778 (is-Cons!5635 (t!77142 input!2705))) b!574318))

(declare-fun b!574329 () Bool)

(declare-fun b_free!15965 () Bool)

(declare-fun b_next!15981 () Bool)

(assert (=> b!574329 (= b_free!15965 (not b_next!15981))))

(declare-fun t!77193 () Bool)

(declare-fun tb!50095 () Bool)

(assert (=> (and b!574329 (= (toValue!1949 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toValue!1949 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77193) tb!50095))

(declare-fun result!56056 () Bool)

(assert (= result!56056 result!56004))

(assert (=> d!201621 t!77193))

(assert (=> d!201693 t!77193))

(declare-fun tb!50097 () Bool)

(declare-fun t!77195 () Bool)

(assert (=> (and b!574329 (= (toValue!1949 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toValue!1949 (transformation!1090 (rule!1834 token!491)))) t!77195) tb!50097))

(declare-fun result!56058 () Bool)

(assert (= result!56058 result!56031))

(assert (=> d!201759 t!77195))

(assert (=> d!201789 t!77195))

(declare-fun b_and!56187 () Bool)

(declare-fun tp!180249 () Bool)

(assert (=> b!574329 (= tp!180249 (and (=> t!77193 result!56056) (=> t!77195 result!56058) b_and!56187))))

(declare-fun b_free!15967 () Bool)

(declare-fun b_next!15983 () Bool)

(assert (=> b!574329 (= b_free!15967 (not b_next!15983))))

(declare-fun tb!50099 () Bool)

(declare-fun t!77197 () Bool)

(assert (=> (and b!574329 (= (toChars!1808 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77197) tb!50099))

(declare-fun result!56060 () Bool)

(assert (= result!56060 result!56010))

(assert (=> d!201633 t!77197))

(declare-fun tb!50101 () Bool)

(declare-fun t!77199 () Bool)

(assert (=> (and b!574329 (= (toChars!1808 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toChars!1808 (transformation!1090 (rule!1834 token!491)))) t!77199) tb!50101))

(declare-fun result!56062 () Bool)

(assert (= result!56062 result!56042))

(assert (=> d!201789 t!77199))

(declare-fun t!77201 () Bool)

(declare-fun tb!50103 () Bool)

(assert (=> (and b!574329 (= (toChars!1808 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toChars!1808 (transformation!1090 (rule!1834 token!491)))) t!77201) tb!50103))

(declare-fun result!56064 () Bool)

(assert (= result!56064 result!55998))

(assert (=> b!573896 t!77201))

(declare-fun t!77203 () Bool)

(declare-fun tb!50105 () Bool)

(assert (=> (and b!574329 (= (toChars!1808 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toChars!1808 (transformation!1090 (rule!1834 (_1!3575 (v!16297 lt!242297)))))) t!77203) tb!50105))

(declare-fun result!56066 () Bool)

(assert (= result!56066 result!56026))

(assert (=> d!201693 t!77203))

(assert (=> d!201749 t!77201))

(declare-fun tp!180251 () Bool)

(declare-fun b_and!56189 () Bool)

(assert (=> b!574329 (= tp!180251 (and (=> t!77197 result!56060) (=> t!77203 result!56066) (=> t!77199 result!56062) (=> t!77201 result!56064) b_and!56189))))

(declare-fun e!347005 () Bool)

(assert (=> b!574329 (= e!347005 (and tp!180249 tp!180251))))

(declare-fun tp!180248 () Bool)

(declare-fun b!574328 () Bool)

(declare-fun e!347004 () Bool)

(assert (=> b!574328 (= e!347004 (and tp!180248 (inv!7087 (tag!1352 (h!11038 (t!77144 rules!3103)))) (inv!7090 (transformation!1090 (h!11038 (t!77144 rules!3103)))) e!347005))))

(declare-fun b!574327 () Bool)

(declare-fun e!347002 () Bool)

(declare-fun tp!180250 () Bool)

(assert (=> b!574327 (= e!347002 (and e!347004 tp!180250))))

(assert (=> b!573767 (= tp!180179 e!347002)))

(assert (= b!574328 b!574329))

(assert (= b!574327 b!574328))

(assert (= (and b!573767 (is-Cons!5637 (t!77144 rules!3103))) b!574327))

(declare-fun m!831145 () Bool)

(assert (=> b!574328 m!831145))

(declare-fun m!831147 () Bool)

(assert (=> b!574328 m!831147))

(declare-fun b!574333 () Bool)

(declare-fun e!347006 () Bool)

(declare-fun tp!180255 () Bool)

(declare-fun tp!180256 () Bool)

(assert (=> b!574333 (= e!347006 (and tp!180255 tp!180256))))

(declare-fun b!574332 () Bool)

(declare-fun tp!180254 () Bool)

(assert (=> b!574332 (= e!347006 tp!180254)))

(declare-fun b!574330 () Bool)

(assert (=> b!574330 (= e!347006 tp_is_empty!3203)))

(assert (=> b!573779 (= tp!180177 e!347006)))

(declare-fun b!574331 () Bool)

(declare-fun tp!180252 () Bool)

(declare-fun tp!180253 () Bool)

(assert (=> b!574331 (= e!347006 (and tp!180252 tp!180253))))

(assert (= (and b!573779 (is-ElementMatch!1424 (regex!1090 (h!11038 rules!3103)))) b!574330))

(assert (= (and b!573779 (is-Concat!2538 (regex!1090 (h!11038 rules!3103)))) b!574331))

(assert (= (and b!573779 (is-Star!1424 (regex!1090 (h!11038 rules!3103)))) b!574332))

(assert (= (and b!573779 (is-Union!1424 (regex!1090 (h!11038 rules!3103)))) b!574333))

(declare-fun b!574334 () Bool)

(declare-fun e!347007 () Bool)

(declare-fun tp!180257 () Bool)

(assert (=> b!574334 (= e!347007 (and tp_is_empty!3203 tp!180257))))

(assert (=> b!573754 (= tp!180173 e!347007)))

(assert (= (and b!573754 (is-Cons!5635 (originalCharacters!1129 token!491))) b!574334))

(declare-fun b!574335 () Bool)

(declare-fun e!347008 () Bool)

(declare-fun tp!180258 () Bool)

(assert (=> b!574335 (= e!347008 (and tp_is_empty!3203 tp!180258))))

(assert (=> b!573777 (= tp!180178 e!347008)))

(assert (= (and b!573777 (is-Cons!5635 (t!77142 suffix!1342))) b!574335))

(declare-fun b_lambda!22353 () Bool)

(assert (= b_lambda!22339 (or (and b!573772 b_free!15949 (= (toValue!1949 (transformation!1090 (h!11038 rules!3103))) (toValue!1949 (transformation!1090 (rule!1834 token!491))))) (and b!573774 b_free!15953) (and b!574329 b_free!15965 (= (toValue!1949 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toValue!1949 (transformation!1090 (rule!1834 token!491))))) b_lambda!22353)))

(declare-fun b_lambda!22355 () Bool)

(assert (= b_lambda!22335 (or (and b!573772 b_free!15951 (= (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toChars!1808 (transformation!1090 (rule!1834 token!491))))) (and b!573774 b_free!15955) (and b!574329 b_free!15967 (= (toChars!1808 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toChars!1808 (transformation!1090 (rule!1834 token!491))))) b_lambda!22355)))

(declare-fun b_lambda!22357 () Bool)

(assert (= b_lambda!22321 (or (and b!573772 b_free!15951 (= (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toChars!1808 (transformation!1090 (rule!1834 token!491))))) (and b!573774 b_free!15955) (and b!574329 b_free!15967 (= (toChars!1808 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toChars!1808 (transformation!1090 (rule!1834 token!491))))) b_lambda!22357)))

(declare-fun b_lambda!22359 () Bool)

(assert (= b_lambda!22345 (or (and b!573772 b_free!15951 (= (toChars!1808 (transformation!1090 (h!11038 rules!3103))) (toChars!1808 (transformation!1090 (rule!1834 token!491))))) (and b!573774 b_free!15955) (and b!574329 b_free!15967 (= (toChars!1808 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toChars!1808 (transformation!1090 (rule!1834 token!491))))) b_lambda!22359)))

(declare-fun b_lambda!22361 () Bool)

(assert (= b_lambda!22347 (or (and b!573772 b_free!15949 (= (toValue!1949 (transformation!1090 (h!11038 rules!3103))) (toValue!1949 (transformation!1090 (rule!1834 token!491))))) (and b!573774 b_free!15953) (and b!574329 b_free!15965 (= (toValue!1949 (transformation!1090 (h!11038 (t!77144 rules!3103)))) (toValue!1949 (transformation!1090 (rule!1834 token!491))))) b_lambda!22361)))

(push 1)

(assert (not d!201787))

(assert (not b!573996))

(assert (not b!573938))

(assert (not tb!50059))

(assert (not d!201619))

(assert (not d!201739))

(assert (not bm!39786))

(assert b_and!56177)

(assert (not b!573972))

(assert (not b!574268))

(assert (not b!574263))

(assert (not d!201647))

(assert (not b!574012))

(assert (not b!573995))

(assert (not d!201639))

(assert (not d!201735))

(assert (not b_lambda!22353))

(assert (not d!201679))

(assert (not b_next!15969))

(assert (not b!573940))

(assert (not b!574260))

(assert (not b!574149))

(assert (not b!574120))

(assert (not d!201757))

(assert (not b!574272))

(assert (not b!574100))

(assert (not b!574137))

(assert (not d!201645))

(assert (not b!574142))

(assert (not b!573917))

(assert (not d!201719))

(assert (not d!201745))

(assert (not d!201733))

(assert (not b!574267))

(assert (not b!573896))

(assert (not d!201753))

(assert (not d!201723))

(assert (not d!201793))

(assert (not b!574318))

(assert (not d!201789))

(assert (not b!574288))

(assert (not b!573939))

(assert (not b!573916))

(assert (not b!574014))

(assert (not d!201605))

(assert (not d!201609))

(assert (not tb!50087))

(assert (not b!573971))

(assert (not d!201725))

(assert (not b!574122))

(assert (not d!201669))

(assert (not b!574273))

(assert (not d!201717))

(assert (not b_next!15967))

(assert (not d!201749))

(assert (not b!574059))

(assert (not b!574334))

(assert (not b!574134))

(assert (not b!574335))

(assert (not b!573967))

(assert (not b!574261))

(assert (not b!574312))

(assert (not b!574029))

(assert (not b!573980))

(assert (not d!201661))

(assert (not b_next!15983))

(assert (not b!574274))

(assert (not b!573976))

(assert (not b!574138))

(assert (not b!574140))

(assert (not bm!39787))

(assert (not b!574028))

(assert (not b!574123))

(assert (not b!574128))

(assert (not b!574264))

(assert (not d!201625))

(assert (not d!201665))

(assert (not d!201675))

(assert (not b!574016))

(assert (not b!573897))

(assert (not b!574130))

(assert (not d!201633))

(assert (not b!574010))

(assert (not b_lambda!22361))

(assert b_and!56173)

(assert (not d!201663))

(assert (not d!201677))

(assert (not b!574266))

(assert b_and!56171)

(assert (not d!201693))

(assert (not b_lambda!22359))

(assert (not b!574121))

(assert (not b!573962))

(assert (not b!574265))

(assert (not b_lambda!22333))

(assert (not d!201763))

(assert (not b!573975))

(assert (not d!201721))

(assert (not b!574124))

(assert (not b!574145))

(assert (not b!574095))

(assert (not b!573977))

(assert (not b_lambda!22355))

(assert (not d!201747))

(assert (not b_next!15981))

(assert (not d!201681))

(assert (not d!201651))

(assert (not b!574088))

(assert (not b!574327))

(assert (not d!201797))

(assert (not b!574139))

(assert (not d!201657))

(assert (not b!574275))

(assert (not b_next!15965))

(assert (not b!574333))

(assert (not b_lambda!22357))

(assert tp_is_empty!3203)

(assert (not b!574276))

(assert (not b!573974))

(assert (not b!574332))

(assert (not b!574147))

(assert (not bm!39783))

(assert (not b!573989))

(assert (not b!574311))

(assert (not tb!50051))

(assert (not b!573997))

(assert (not b!574156))

(assert (not b!574331))

(assert (not b_lambda!22323))

(assert (not b!574098))

(assert (not d!201615))

(assert (not b_lambda!22331))

(assert (not b!573966))

(assert (not b!574031))

(assert b_and!56187)

(assert (not b!574328))

(assert (not b!574125))

(assert (not b!574144))

(assert (not b!574093))

(assert (not b!574299))

(assert (not b!574313))

(assert (not tb!50055))

(assert (not b!574131))

(assert (not d!201641))

(assert (not b!574277))

(assert (not b!573970))

(assert (not b!573981))

(assert (not b!573949))

(assert (not tb!50077))

(assert (not b!574141))

(assert (not d!201755))

(assert (not d!201761))

(assert (not b!574099))

(assert (not b_next!15971))

(assert (not b_lambda!22325))

(assert b_and!56189)

(assert b_and!56175)

(assert (not tb!50071))

(assert (not b!574126))

(assert (not b!573904))

(assert (not b!574143))

(assert (not b!574270))

(assert (not d!201637))

(assert (not b!574269))

(assert (not b!573979))

(check-sat)

(pop 1)

(push 1)

(assert b_and!56177)

(assert (not b_next!15969))

(assert (not b_next!15967))

(assert (not b_next!15983))

(assert b_and!56173)

(assert b_and!56171)

(assert (not b_next!15981))

(assert (not b_next!15965))

(assert b_and!56187)

(assert (not b_next!15971))

(assert b_and!56175)

(assert b_and!56189)

(check-sat)

(pop 1)

