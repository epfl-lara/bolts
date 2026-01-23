; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369628 () Bool)

(assert start!369628)

(declare-fun b!3937349 () Bool)

(declare-fun b_free!107549 () Bool)

(declare-fun b_next!108253 () Bool)

(assert (=> b!3937349 (= b_free!107549 (not b_next!108253))))

(declare-fun tp!1198116 () Bool)

(declare-fun b_and!300719 () Bool)

(assert (=> b!3937349 (= tp!1198116 b_and!300719)))

(declare-fun b_free!107551 () Bool)

(declare-fun b_next!108255 () Bool)

(assert (=> b!3937349 (= b_free!107551 (not b_next!108255))))

(declare-fun tp!1198118 () Bool)

(declare-fun b_and!300721 () Bool)

(assert (=> b!3937349 (= tp!1198118 b_and!300721)))

(declare-fun b!3937346 () Bool)

(declare-fun b_free!107553 () Bool)

(declare-fun b_next!108257 () Bool)

(assert (=> b!3937346 (= b_free!107553 (not b_next!108257))))

(declare-fun tp!1198117 () Bool)

(declare-fun b_and!300723 () Bool)

(assert (=> b!3937346 (= tp!1198117 b_and!300723)))

(declare-fun b_free!107555 () Bool)

(declare-fun b_next!108259 () Bool)

(assert (=> b!3937346 (= b_free!107555 (not b_next!108259))))

(declare-fun tp!1198112 () Bool)

(declare-fun b_and!300725 () Bool)

(assert (=> b!3937346 (= tp!1198112 b_and!300725)))

(declare-fun b!3937367 () Bool)

(declare-fun b_free!107557 () Bool)

(declare-fun b_next!108261 () Bool)

(assert (=> b!3937367 (= b_free!107557 (not b_next!108261))))

(declare-fun tp!1198103 () Bool)

(declare-fun b_and!300727 () Bool)

(assert (=> b!3937367 (= tp!1198103 b_and!300727)))

(declare-fun b_free!107559 () Bool)

(declare-fun b_next!108263 () Bool)

(assert (=> b!3937367 (= b_free!107559 (not b_next!108263))))

(declare-fun tp!1198114 () Bool)

(declare-fun b_and!300729 () Bool)

(assert (=> b!3937367 (= tp!1198114 b_and!300729)))

(declare-fun e!2435932 () Bool)

(assert (=> b!3937346 (= e!2435932 (and tp!1198117 tp!1198112))))

(declare-fun b!3937347 () Bool)

(declare-fun e!2435949 () Bool)

(declare-fun e!2435945 () Bool)

(assert (=> b!3937347 (= e!2435949 e!2435945)))

(declare-fun res!1593268 () Bool)

(assert (=> b!3937347 (=> res!1593268 e!2435945)))

(declare-fun lt!1376656 () Int)

(declare-fun lt!1376691 () Int)

(assert (=> b!3937347 (= res!1593268 (>= lt!1376656 lt!1376691))))

(declare-datatypes ((C!23052 0))(
  ( (C!23053 (val!13620 Int)) )
))
(declare-datatypes ((List!41917 0))(
  ( (Nil!41793) (Cons!41793 (h!47213 C!23052) (t!326496 List!41917)) )
))
(declare-fun prefix!426 () List!41917)

(declare-fun size!31356 (List!41917) Int)

(assert (=> b!3937347 (= lt!1376691 (size!31356 prefix!426))))

(declare-fun lt!1376654 () List!41917)

(declare-fun isPrefix!3623 (List!41917 List!41917) Bool)

(assert (=> b!3937347 (isPrefix!3623 lt!1376654 prefix!426)))

(declare-datatypes ((Unit!60302 0))(
  ( (Unit!60303) )
))
(declare-fun lt!1376659 () Unit!60302)

(declare-fun lt!1376658 () List!41917)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!301 (List!41917 List!41917 List!41917) Unit!60302)

(assert (=> b!3937347 (= lt!1376659 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!301 prefix!426 lt!1376654 lt!1376658))))

(assert (=> b!3937347 (isPrefix!3623 prefix!426 lt!1376658)))

(declare-fun lt!1376700 () Unit!60302)

(declare-fun suffix!1176 () List!41917)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2486 (List!41917 List!41917) Unit!60302)

(assert (=> b!3937347 (= lt!1376700 (lemmaConcatTwoListThenFirstIsPrefix!2486 prefix!426 suffix!1176))))

(declare-fun b!3937348 () Bool)

(declare-fun res!1593283 () Bool)

(declare-fun e!2435952 () Bool)

(assert (=> b!3937348 (=> res!1593283 e!2435952)))

(declare-fun lt!1376681 () Int)

(assert (=> b!3937348 (= res!1593283 (<= lt!1376681 (size!31356 Nil!41793)))))

(declare-fun res!1593278 () Bool)

(declare-fun e!2435961 () Bool)

(assert (=> start!369628 (=> (not res!1593278) (not e!2435961))))

(declare-datatypes ((LexerInterface!6117 0))(
  ( (LexerInterfaceExt!6114 (__x!25733 Int)) (Lexer!6115) )
))
(declare-fun thiss!20629 () LexerInterface!6117)

(get-info :version)

(assert (=> start!369628 (= res!1593278 ((_ is Lexer!6115) thiss!20629))))

(assert (=> start!369628 e!2435961))

(declare-fun e!2435947 () Bool)

(assert (=> start!369628 e!2435947))

(assert (=> start!369628 true))

(declare-fun e!2435934 () Bool)

(assert (=> start!369628 e!2435934))

(declare-fun e!2435928 () Bool)

(assert (=> start!369628 e!2435928))

(declare-fun e!2435954 () Bool)

(assert (=> start!369628 e!2435954))

(declare-fun e!2435926 () Bool)

(assert (=> start!369628 e!2435926))

(declare-fun e!2435924 () Bool)

(assert (=> start!369628 e!2435924))

(declare-fun e!2435943 () Bool)

(assert (=> b!3937349 (= e!2435943 (and tp!1198116 tp!1198118))))

(declare-fun b!3937350 () Bool)

(declare-fun e!2435960 () Bool)

(declare-fun e!2435925 () Bool)

(assert (=> b!3937350 (= e!2435960 (not e!2435925))))

(declare-fun res!1593276 () Bool)

(assert (=> b!3937350 (=> res!1593276 e!2435925)))

(declare-fun lt!1376657 () List!41917)

(assert (=> b!3937350 (= res!1593276 (not (= lt!1376657 lt!1376658)))))

(declare-datatypes ((IArray!25483 0))(
  ( (IArray!25484 (innerList!12799 List!41917)) )
))
(declare-datatypes ((Conc!12739 0))(
  ( (Node!12739 (left!31861 Conc!12739) (right!32191 Conc!12739) (csize!25708 Int) (cheight!12950 Int)) (Leaf!19710 (xs!16045 IArray!25483) (csize!25709 Int)) (Empty!12739) )
))
(declare-datatypes ((BalanceConc!25072 0))(
  ( (BalanceConc!25073 (c!684168 Conc!12739)) )
))
(declare-datatypes ((List!41918 0))(
  ( (Nil!41794) (Cons!41794 (h!47214 (_ BitVec 16)) (t!326497 List!41918)) )
))
(declare-datatypes ((TokenValue!6758 0))(
  ( (FloatLiteralValue!13516 (text!47751 List!41918)) (TokenValueExt!6757 (__x!25734 Int)) (Broken!33790 (value!206656 List!41918)) (Object!6881) (End!6758) (Def!6758) (Underscore!6758) (Match!6758) (Else!6758) (Error!6758) (Case!6758) (If!6758) (Extends!6758) (Abstract!6758) (Class!6758) (Val!6758) (DelimiterValue!13516 (del!6818 List!41918)) (KeywordValue!6764 (value!206657 List!41918)) (CommentValue!13516 (value!206658 List!41918)) (WhitespaceValue!13516 (value!206659 List!41918)) (IndentationValue!6758 (value!206660 List!41918)) (String!47507) (Int32!6758) (Broken!33791 (value!206661 List!41918)) (Boolean!6759) (Unit!60304) (OperatorValue!6761 (op!6818 List!41918)) (IdentifierValue!13516 (value!206662 List!41918)) (IdentifierValue!13517 (value!206663 List!41918)) (WhitespaceValue!13517 (value!206664 List!41918)) (True!13516) (False!13516) (Broken!33792 (value!206665 List!41918)) (Broken!33793 (value!206666 List!41918)) (True!13517) (RightBrace!6758) (RightBracket!6758) (Colon!6758) (Null!6758) (Comma!6758) (LeftBracket!6758) (False!13517) (LeftBrace!6758) (ImaginaryLiteralValue!6758 (text!47752 List!41918)) (StringLiteralValue!20274 (value!206667 List!41918)) (EOFValue!6758 (value!206668 List!41918)) (IdentValue!6758 (value!206669 List!41918)) (DelimiterValue!13517 (value!206670 List!41918)) (DedentValue!6758 (value!206671 List!41918)) (NewLineValue!6758 (value!206672 List!41918)) (IntegerValue!20274 (value!206673 (_ BitVec 32)) (text!47753 List!41918)) (IntegerValue!20275 (value!206674 Int) (text!47754 List!41918)) (Times!6758) (Or!6758) (Equal!6758) (Minus!6758) (Broken!33794 (value!206675 List!41918)) (And!6758) (Div!6758) (LessEqual!6758) (Mod!6758) (Concat!18191) (Not!6758) (Plus!6758) (SpaceValue!6758 (value!206676 List!41918)) (IntegerValue!20276 (value!206677 Int) (text!47755 List!41918)) (StringLiteralValue!20275 (text!47756 List!41918)) (FloatLiteralValue!13517 (text!47757 List!41918)) (BytesLiteralValue!6758 (value!206678 List!41918)) (CommentValue!13517 (value!206679 List!41918)) (StringLiteralValue!20276 (value!206680 List!41918)) (ErrorTokenValue!6758 (msg!6819 List!41918)) )
))
(declare-datatypes ((Regex!11433 0))(
  ( (ElementMatch!11433 (c!684169 C!23052)) (Concat!18192 (regOne!23378 Regex!11433) (regTwo!23378 Regex!11433)) (EmptyExpr!11433) (Star!11433 (reg!11762 Regex!11433)) (EmptyLang!11433) (Union!11433 (regOne!23379 Regex!11433) (regTwo!23379 Regex!11433)) )
))
(declare-datatypes ((String!47508 0))(
  ( (String!47509 (value!206681 String)) )
))
(declare-datatypes ((TokenValueInjection!12944 0))(
  ( (TokenValueInjection!12945 (toValue!8988 Int) (toChars!8847 Int)) )
))
(declare-datatypes ((Rule!12856 0))(
  ( (Rule!12857 (regex!6528 Regex!11433) (tag!7388 String!47508) (isSeparator!6528 Bool) (transformation!6528 TokenValueInjection!12944)) )
))
(declare-datatypes ((List!41919 0))(
  ( (Nil!41795) (Cons!41795 (h!47215 Rule!12856) (t!326498 List!41919)) )
))
(declare-fun rules!2768 () List!41919)

(declare-datatypes ((Token!12194 0))(
  ( (Token!12195 (value!206682 TokenValue!6758) (rule!9482 Rule!12856) (size!31357 Int) (originalCharacters!7128 List!41917)) )
))
(declare-datatypes ((tuple2!41078 0))(
  ( (tuple2!41079 (_1!23673 Token!12194) (_2!23673 List!41917)) )
))
(declare-datatypes ((Option!8948 0))(
  ( (None!8947) (Some!8947 (v!39277 tuple2!41078)) )
))
(declare-fun lt!1376668 () Option!8948)

(declare-datatypes ((List!41920 0))(
  ( (Nil!41796) (Cons!41796 (h!47216 Token!12194) (t!326499 List!41920)) )
))
(declare-datatypes ((tuple2!41080 0))(
  ( (tuple2!41081 (_1!23674 List!41920) (_2!23674 List!41917)) )
))
(declare-fun lt!1376699 () tuple2!41080)

(declare-fun lexList!1885 (LexerInterface!6117 List!41919 List!41917) tuple2!41080)

(assert (=> b!3937350 (= lt!1376699 (lexList!1885 thiss!20629 rules!2768 (_2!23673 (v!39277 lt!1376668))))))

(declare-fun lt!1376679 () TokenValue!6758)

(declare-fun lt!1376655 () List!41917)

(assert (=> b!3937350 (and (= (size!31357 (_1!23673 (v!39277 lt!1376668))) lt!1376656) (= (originalCharacters!7128 (_1!23673 (v!39277 lt!1376668))) lt!1376654) (= (tuple2!41079 (_1!23673 (v!39277 lt!1376668)) (_2!23673 (v!39277 lt!1376668))) (tuple2!41079 (Token!12195 lt!1376679 (rule!9482 (_1!23673 (v!39277 lt!1376668))) lt!1376656 lt!1376654) lt!1376655)))))

(assert (=> b!3937350 (= lt!1376656 (size!31356 lt!1376654))))

(declare-fun e!2435941 () Bool)

(assert (=> b!3937350 e!2435941))

(declare-fun res!1593295 () Bool)

(assert (=> b!3937350 (=> (not res!1593295) (not e!2435941))))

(assert (=> b!3937350 (= res!1593295 (= (value!206682 (_1!23673 (v!39277 lt!1376668))) lt!1376679))))

(declare-fun apply!9767 (TokenValueInjection!12944 BalanceConc!25072) TokenValue!6758)

(declare-fun seqFromList!4795 (List!41917) BalanceConc!25072)

(assert (=> b!3937350 (= lt!1376679 (apply!9767 (transformation!6528 (rule!9482 (_1!23673 (v!39277 lt!1376668)))) (seqFromList!4795 lt!1376654)))))

(assert (=> b!3937350 (= (_2!23673 (v!39277 lt!1376668)) lt!1376655)))

(declare-fun lt!1376696 () Unit!60302)

(declare-fun lemmaSamePrefixThenSameSuffix!1844 (List!41917 List!41917 List!41917 List!41917 List!41917) Unit!60302)

(assert (=> b!3937350 (= lt!1376696 (lemmaSamePrefixThenSameSuffix!1844 lt!1376654 (_2!23673 (v!39277 lt!1376668)) lt!1376654 lt!1376655 lt!1376658))))

(declare-fun getSuffix!2078 (List!41917 List!41917) List!41917)

(assert (=> b!3937350 (= lt!1376655 (getSuffix!2078 lt!1376658 lt!1376654))))

(assert (=> b!3937350 (isPrefix!3623 lt!1376654 lt!1376657)))

(declare-fun ++!10813 (List!41917 List!41917) List!41917)

(assert (=> b!3937350 (= lt!1376657 (++!10813 lt!1376654 (_2!23673 (v!39277 lt!1376668))))))

(declare-fun lt!1376666 () Unit!60302)

(assert (=> b!3937350 (= lt!1376666 (lemmaConcatTwoListThenFirstIsPrefix!2486 lt!1376654 (_2!23673 (v!39277 lt!1376668))))))

(declare-fun list!15530 (BalanceConc!25072) List!41917)

(declare-fun charsOf!4352 (Token!12194) BalanceConc!25072)

(assert (=> b!3937350 (= lt!1376654 (list!15530 (charsOf!4352 (_1!23673 (v!39277 lt!1376668)))))))

(declare-fun ruleValid!2476 (LexerInterface!6117 Rule!12856) Bool)

(assert (=> b!3937350 (ruleValid!2476 thiss!20629 (rule!9482 (_1!23673 (v!39277 lt!1376668))))))

(declare-fun lt!1376672 () Unit!60302)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1556 (LexerInterface!6117 Rule!12856 List!41919) Unit!60302)

(assert (=> b!3937350 (= lt!1376672 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1556 thiss!20629 (rule!9482 (_1!23673 (v!39277 lt!1376668))) rules!2768))))

(declare-fun lt!1376693 () Unit!60302)

(declare-fun lemmaCharactersSize!1185 (Token!12194) Unit!60302)

(assert (=> b!3937350 (= lt!1376693 (lemmaCharactersSize!1185 (_1!23673 (v!39277 lt!1376668))))))

(declare-fun b!3937351 () Bool)

(declare-fun e!2435956 () Bool)

(declare-fun tp!1198105 () Bool)

(assert (=> b!3937351 (= e!2435928 (and e!2435956 tp!1198105))))

(declare-fun b!3937352 () Bool)

(assert (=> b!3937352 (= e!2435941 (= (size!31357 (_1!23673 (v!39277 lt!1376668))) (size!31356 (originalCharacters!7128 (_1!23673 (v!39277 lt!1376668))))))))

(declare-fun b!3937353 () Bool)

(declare-fun c!684167 () Bool)

(declare-fun lt!1376690 () List!41920)

(declare-fun isEmpty!24924 (List!41920) Bool)

(assert (=> b!3937353 (= c!684167 (isEmpty!24924 lt!1376690))))

(declare-fun prefixTokens!80 () List!41920)

(declare-fun tail!6089 (List!41920) List!41920)

(assert (=> b!3937353 (= lt!1376690 (tail!6089 prefixTokens!80))))

(declare-fun e!2435962 () Unit!60302)

(declare-fun e!2435942 () Unit!60302)

(assert (=> b!3937353 (= e!2435962 e!2435942)))

(declare-fun b!3937354 () Bool)

(declare-fun e!2435935 () Unit!60302)

(declare-fun Unit!60305 () Unit!60302)

(assert (=> b!3937354 (= e!2435935 Unit!60305)))

(declare-fun bm!285007 () Bool)

(declare-fun lt!1376697 () tuple2!41078)

(declare-fun call!285012 () tuple2!41080)

(assert (=> bm!285007 (= call!285012 (lexList!1885 thiss!20629 rules!2768 (_2!23673 lt!1376697)))))

(declare-fun b!3937355 () Bool)

(declare-fun e!2435930 () Bool)

(declare-fun e!2435959 () Bool)

(assert (=> b!3937355 (= e!2435930 e!2435959)))

(declare-fun res!1593287 () Bool)

(assert (=> b!3937355 (=> res!1593287 e!2435959)))

(declare-fun lt!1376669 () List!41917)

(assert (=> b!3937355 (= res!1593287 (not (= lt!1376669 (_2!23673 (v!39277 lt!1376668)))))))

(assert (=> b!3937355 (= (_2!23673 (v!39277 lt!1376668)) lt!1376669)))

(declare-fun lt!1376678 () Unit!60302)

(assert (=> b!3937355 (= lt!1376678 (lemmaSamePrefixThenSameSuffix!1844 lt!1376654 (_2!23673 (v!39277 lt!1376668)) lt!1376654 lt!1376669 lt!1376658))))

(declare-fun lt!1376694 () List!41917)

(assert (=> b!3937355 (isPrefix!3623 lt!1376654 lt!1376694)))

(declare-fun lt!1376660 () Unit!60302)

(assert (=> b!3937355 (= lt!1376660 (lemmaConcatTwoListThenFirstIsPrefix!2486 lt!1376654 lt!1376669))))

(declare-fun b!3937356 () Bool)

(declare-fun res!1593286 () Bool)

(assert (=> b!3937356 (=> (not res!1593286) (not e!2435961))))

(declare-fun isEmpty!24925 (List!41917) Bool)

(assert (=> b!3937356 (= res!1593286 (not (isEmpty!24925 prefix!426)))))

(declare-fun b!3937357 () Bool)

(declare-fun e!2435964 () Unit!60302)

(declare-fun Unit!60306 () Unit!60302)

(assert (=> b!3937357 (= e!2435964 Unit!60306)))

(declare-fun lt!1376705 () Int)

(assert (=> b!3937357 (= lt!1376705 (size!31356 lt!1376658))))

(declare-fun lt!1376687 () Unit!60302)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1359 (LexerInterface!6117 List!41919 List!41917 List!41917 List!41917 Rule!12856) Unit!60302)

(assert (=> b!3937357 (= lt!1376687 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1359 thiss!20629 rules!2768 lt!1376654 lt!1376658 (_2!23673 (v!39277 lt!1376668)) (rule!9482 (_1!23673 (v!39277 lt!1376668)))))))

(declare-fun maxPrefixOneRule!2491 (LexerInterface!6117 Rule!12856 List!41917) Option!8948)

(assert (=> b!3937357 (= (maxPrefixOneRule!2491 thiss!20629 (rule!9482 (_1!23673 (v!39277 lt!1376668))) lt!1376658) (Some!8947 (tuple2!41079 (Token!12195 lt!1376679 (rule!9482 (_1!23673 (v!39277 lt!1376668))) lt!1376656 lt!1376654) (_2!23673 (v!39277 lt!1376668)))))))

(declare-fun get!13812 (Option!8948) tuple2!41078)

(assert (=> b!3937357 (= lt!1376697 (get!13812 lt!1376668))))

(declare-fun c!684164 () Bool)

(assert (=> b!3937357 (= c!684164 (< (size!31356 (_2!23673 lt!1376697)) lt!1376681))))

(declare-fun lt!1376698 () Unit!60302)

(assert (=> b!3937357 (= lt!1376698 e!2435962)))

(assert (=> b!3937357 false))

(declare-fun b!3937358 () Bool)

(declare-fun e!2435946 () Bool)

(assert (=> b!3937358 (= e!2435952 e!2435946)))

(declare-fun res!1593291 () Bool)

(assert (=> b!3937358 (=> res!1593291 e!2435946)))

(assert (=> b!3937358 (= res!1593291 (not (isPrefix!3623 Nil!41793 suffix!1176)))))

(assert (=> b!3937358 (isPrefix!3623 Nil!41793 (++!10813 Nil!41793 suffix!1176))))

(declare-fun lt!1376661 () Unit!60302)

(assert (=> b!3937358 (= lt!1376661 (lemmaConcatTwoListThenFirstIsPrefix!2486 Nil!41793 suffix!1176))))

(declare-fun b!3937359 () Bool)

(declare-fun tp_is_empty!19837 () Bool)

(declare-fun tp!1198102 () Bool)

(assert (=> b!3937359 (= e!2435947 (and tp_is_empty!19837 tp!1198102))))

(declare-fun b!3937360 () Bool)

(declare-fun res!1593293 () Bool)

(assert (=> b!3937360 (=> (not res!1593293) (not e!2435961))))

(declare-fun isEmpty!24926 (List!41919) Bool)

(assert (=> b!3937360 (= res!1593293 (not (isEmpty!24926 rules!2768)))))

(declare-fun b!3937361 () Bool)

(declare-fun res!1593284 () Bool)

(assert (=> b!3937361 (=> (not res!1593284) (not e!2435961))))

(declare-fun rulesInvariant!5460 (LexerInterface!6117 List!41919) Bool)

(assert (=> b!3937361 (= res!1593284 (rulesInvariant!5460 thiss!20629 rules!2768))))

(declare-fun b!3937362 () Bool)

(declare-fun tp!1198110 () Bool)

(assert (=> b!3937362 (= e!2435934 (and tp_is_empty!19837 tp!1198110))))

(declare-fun b!3937363 () Bool)

(declare-fun e!2435957 () Bool)

(assert (=> b!3937363 (= e!2435945 e!2435957)))

(declare-fun res!1593288 () Bool)

(assert (=> b!3937363 (=> res!1593288 e!2435957)))

(declare-fun lt!1376667 () List!41917)

(assert (=> b!3937363 (= res!1593288 (not (= lt!1376667 prefix!426)))))

(declare-fun lt!1376673 () List!41917)

(assert (=> b!3937363 (= lt!1376667 (++!10813 lt!1376654 lt!1376673))))

(assert (=> b!3937363 (= lt!1376673 (getSuffix!2078 prefix!426 lt!1376654))))

(declare-fun b!3937364 () Bool)

(declare-fun res!1593290 () Bool)

(assert (=> b!3937364 (=> (not res!1593290) (not e!2435961))))

(assert (=> b!3937364 (= res!1593290 (not (isEmpty!24924 prefixTokens!80)))))

(declare-fun b!3937365 () Bool)

(declare-fun res!1593275 () Bool)

(assert (=> b!3937365 (=> res!1593275 e!2435949)))

(declare-fun head!8363 (List!41920) Token!12194)

(assert (=> b!3937365 (= res!1593275 (not (= (head!8363 prefixTokens!80) (_1!23673 (v!39277 lt!1376668)))))))

(declare-fun tp!1198104 () Bool)

(declare-fun b!3937366 () Bool)

(declare-fun inv!55993 (String!47508) Bool)

(declare-fun inv!55996 (TokenValueInjection!12944) Bool)

(assert (=> b!3937366 (= e!2435956 (and tp!1198104 (inv!55993 (tag!7388 (h!47215 rules!2768))) (inv!55996 (transformation!6528 (h!47215 rules!2768))) e!2435943))))

(declare-fun e!2435948 () Bool)

(assert (=> b!3937367 (= e!2435948 (and tp!1198103 tp!1198114))))

(declare-fun b!3937368 () Bool)

(declare-fun Unit!60307 () Unit!60302)

(assert (=> b!3937368 (= e!2435935 Unit!60307)))

(declare-fun lt!1376680 () Unit!60302)

(declare-fun suffixResult!91 () List!41917)

(declare-fun suffixTokens!72 () List!41920)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!128 (LexerInterface!6117 List!41919 List!41917 List!41917 List!41920 List!41917) Unit!60302)

(assert (=> b!3937368 (= lt!1376680 (lemmaLexWithSmallerInputCannotProduceSameResults!128 thiss!20629 rules!2768 (_2!23673 (v!39277 lt!1376668)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3937368 false))

(declare-fun b!3937369 () Bool)

(declare-fun e!2435922 () Bool)

(assert (=> b!3937369 (= e!2435922 e!2435949)))

(declare-fun res!1593294 () Bool)

(assert (=> b!3937369 (=> res!1593294 e!2435949)))

(declare-fun lt!1376703 () Int)

(assert (=> b!3937369 (= res!1593294 (<= lt!1376703 lt!1376681))))

(declare-fun lt!1376670 () Unit!60302)

(declare-fun e!2435933 () Unit!60302)

(assert (=> b!3937369 (= lt!1376670 e!2435933)))

(declare-fun c!684165 () Bool)

(assert (=> b!3937369 (= c!684165 (= lt!1376703 lt!1376681))))

(declare-fun lt!1376676 () Unit!60302)

(assert (=> b!3937369 (= lt!1376676 e!2435964)))

(declare-fun c!684166 () Bool)

(assert (=> b!3937369 (= c!684166 (< lt!1376703 lt!1376681))))

(assert (=> b!3937369 (= lt!1376681 (size!31356 suffix!1176))))

(assert (=> b!3937369 (= lt!1376703 (size!31356 (_2!23673 (v!39277 lt!1376668))))))

(declare-fun b!3937370 () Bool)

(declare-fun e!2435953 () Bool)

(assert (=> b!3937370 (= e!2435953 false)))

(declare-fun b!3937371 () Bool)

(declare-fun e!2435929 () Bool)

(assert (=> b!3937371 (= e!2435959 e!2435929)))

(declare-fun res!1593274 () Bool)

(assert (=> b!3937371 (=> res!1593274 e!2435929)))

(declare-fun lt!1376662 () tuple2!41080)

(assert (=> b!3937371 (= res!1593274 (not (= lt!1376699 lt!1376662)))))

(declare-fun lt!1376685 () List!41920)

(assert (=> b!3937371 (= lt!1376662 (tuple2!41081 lt!1376685 suffixResult!91))))

(declare-fun lt!1376701 () List!41920)

(declare-fun ++!10814 (List!41920 List!41920) List!41920)

(assert (=> b!3937371 (= lt!1376685 (++!10814 lt!1376701 suffixTokens!72))))

(assert (=> b!3937371 (= lt!1376701 (tail!6089 prefixTokens!80))))

(assert (=> b!3937371 (isPrefix!3623 lt!1376673 lt!1376669)))

(declare-fun lt!1376692 () Unit!60302)

(assert (=> b!3937371 (= lt!1376692 (lemmaConcatTwoListThenFirstIsPrefix!2486 lt!1376673 suffix!1176))))

(declare-fun b!3937372 () Bool)

(assert (=> b!3937372 (= e!2435946 (> lt!1376691 lt!1376656))))

(declare-fun b!3937373 () Bool)

(declare-fun res!1593271 () Bool)

(assert (=> b!3937373 (=> res!1593271 e!2435952)))

(assert (=> b!3937373 (= res!1593271 (isEmpty!24925 suffix!1176))))

(declare-fun b!3937374 () Bool)

(declare-fun e!2435955 () Bool)

(assert (=> b!3937374 (= e!2435957 e!2435955)))

(declare-fun res!1593273 () Bool)

(assert (=> b!3937374 (=> res!1593273 e!2435955)))

(declare-fun lt!1376689 () List!41917)

(assert (=> b!3937374 (= res!1593273 (or (not (= lt!1376689 lt!1376658)) (not (= lt!1376689 lt!1376657))))))

(assert (=> b!3937374 (= lt!1376689 (++!10813 lt!1376667 suffix!1176))))

(declare-fun b!3937375 () Bool)

(declare-fun e!2435963 () Bool)

(declare-fun tp!1198107 () Bool)

(assert (=> b!3937375 (= e!2435963 (and tp!1198107 (inv!55993 (tag!7388 (rule!9482 (h!47216 prefixTokens!80)))) (inv!55996 (transformation!6528 (rule!9482 (h!47216 prefixTokens!80)))) e!2435948))))

(declare-fun b!3937376 () Bool)

(declare-fun Unit!60308 () Unit!60302)

(assert (=> b!3937376 (= e!2435962 Unit!60308)))

(declare-fun b!3937377 () Bool)

(declare-fun Unit!60309 () Unit!60302)

(assert (=> b!3937377 (= e!2435942 Unit!60309)))

(declare-fun lt!1376695 () Unit!60302)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!576 (List!41917 List!41917 List!41917 List!41917) Unit!60302)

(assert (=> b!3937377 (= lt!1376695 (lemmaConcatSameAndSameSizesThenSameLists!576 lt!1376654 (_2!23673 (v!39277 lt!1376668)) lt!1376654 (_2!23673 lt!1376697)))))

(assert (=> b!3937377 (= (_2!23673 (v!39277 lt!1376668)) (_2!23673 lt!1376697))))

(declare-fun lt!1376702 () Unit!60302)

(assert (=> b!3937377 (= lt!1376702 (lemmaLexWithSmallerInputCannotProduceSameResults!128 thiss!20629 rules!2768 suffix!1176 (_2!23673 lt!1376697) suffixTokens!72 suffixResult!91))))

(declare-fun res!1593292 () Bool)

(declare-fun lt!1376674 () tuple2!41080)

(assert (=> b!3937377 (= res!1593292 (not (= call!285012 lt!1376674)))))

(declare-fun e!2435951 () Bool)

(assert (=> b!3937377 (=> (not res!1593292) (not e!2435951))))

(assert (=> b!3937377 e!2435951))

(declare-fun b!3937378 () Bool)

(declare-fun Unit!60310 () Unit!60302)

(assert (=> b!3937378 (= e!2435964 Unit!60310)))

(declare-fun b!3937379 () Bool)

(declare-fun Unit!60311 () Unit!60302)

(assert (=> b!3937379 (= e!2435933 Unit!60311)))

(declare-fun b!3937380 () Bool)

(declare-fun Unit!60312 () Unit!60302)

(assert (=> b!3937380 (= e!2435933 Unit!60312)))

(declare-fun lt!1376688 () Unit!60302)

(assert (=> b!3937380 (= lt!1376688 (lemmaConcatTwoListThenFirstIsPrefix!2486 prefix!426 suffix!1176))))

(assert (=> b!3937380 (isPrefix!3623 prefix!426 lt!1376658)))

(declare-fun lt!1376682 () Unit!60302)

(declare-fun lemmaIsPrefixSameLengthThenSameList!819 (List!41917 List!41917 List!41917) Unit!60302)

(assert (=> b!3937380 (= lt!1376682 (lemmaIsPrefixSameLengthThenSameList!819 lt!1376654 prefix!426 lt!1376658))))

(assert (=> b!3937380 (= lt!1376654 prefix!426)))

(declare-fun lt!1376704 () Unit!60302)

(assert (=> b!3937380 (= lt!1376704 (lemmaSamePrefixThenSameSuffix!1844 lt!1376654 (_2!23673 (v!39277 lt!1376668)) prefix!426 suffix!1176 lt!1376658))))

(assert (=> b!3937380 false))

(declare-fun b!3937381 () Bool)

(declare-fun tp!1198113 () Bool)

(assert (=> b!3937381 (= e!2435924 (and tp_is_empty!19837 tp!1198113))))

(declare-fun b!3937382 () Bool)

(declare-fun res!1593270 () Bool)

(declare-fun e!2435939 () Bool)

(assert (=> b!3937382 (=> res!1593270 e!2435939)))

(assert (=> b!3937382 (= res!1593270 (not (= (lexList!1885 thiss!20629 rules!2768 lt!1376669) lt!1376662)))))

(declare-fun b!3937383 () Bool)

(declare-fun res!1593281 () Bool)

(assert (=> b!3937383 (=> res!1593281 e!2435952)))

(assert (=> b!3937383 (= res!1593281 (not (isPrefix!3623 lt!1376673 (_2!23673 (v!39277 lt!1376668)))))))

(declare-fun b!3937384 () Bool)

(declare-fun e!2435927 () Bool)

(declare-fun tp!1198108 () Bool)

(declare-fun inv!55997 (Token!12194) Bool)

(assert (=> b!3937384 (= e!2435926 (and (inv!55997 (h!47216 suffixTokens!72)) e!2435927 tp!1198108))))

(declare-fun b!3937385 () Bool)

(declare-fun res!1593285 () Bool)

(assert (=> b!3937385 (=> res!1593285 e!2435922)))

(assert (=> b!3937385 (= res!1593285 (or (not (= lt!1376699 (tuple2!41081 (_1!23674 lt!1376699) (_2!23674 lt!1376699)))) (= (_2!23673 (v!39277 lt!1376668)) suffix!1176)))))

(declare-fun b!3937386 () Bool)

(declare-fun Unit!60313 () Unit!60302)

(assert (=> b!3937386 (= e!2435942 Unit!60313)))

(declare-fun lt!1376675 () Unit!60302)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!128 (LexerInterface!6117 List!41919 List!41917 List!41917 List!41920 List!41917 List!41920) Unit!60302)

(assert (=> b!3937386 (= lt!1376675 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!128 thiss!20629 rules!2768 suffix!1176 (_2!23673 lt!1376697) suffixTokens!72 suffixResult!91 lt!1376690))))

(declare-fun res!1593279 () Bool)

(assert (=> b!3937386 (= res!1593279 (not (= call!285012 (tuple2!41081 (++!10814 lt!1376690 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3937386 (=> (not res!1593279) (not e!2435953))))

(assert (=> b!3937386 e!2435953))

(declare-fun b!3937387 () Bool)

(assert (=> b!3937387 (= e!2435955 e!2435930)))

(declare-fun res!1593289 () Bool)

(assert (=> b!3937387 (=> res!1593289 e!2435930)))

(assert (=> b!3937387 (= res!1593289 (or (not (= lt!1376658 lt!1376689)) (not (= lt!1376658 lt!1376694)) (not (= lt!1376657 lt!1376694))))))

(assert (=> b!3937387 (= lt!1376689 lt!1376694)))

(assert (=> b!3937387 (= lt!1376694 (++!10813 lt!1376654 lt!1376669))))

(assert (=> b!3937387 (= lt!1376669 (++!10813 lt!1376673 suffix!1176))))

(declare-fun lt!1376665 () Unit!60302)

(declare-fun lemmaConcatAssociativity!2343 (List!41917 List!41917 List!41917) Unit!60302)

(assert (=> b!3937387 (= lt!1376665 (lemmaConcatAssociativity!2343 lt!1376654 lt!1376673 suffix!1176))))

(declare-fun b!3937388 () Bool)

(assert (=> b!3937388 (= e!2435925 e!2435922)))

(declare-fun res!1593269 () Bool)

(assert (=> b!3937388 (=> res!1593269 e!2435922)))

(declare-fun lt!1376677 () tuple2!41080)

(declare-fun lt!1376686 () List!41920)

(assert (=> b!3937388 (= res!1593269 (not (= lt!1376677 (tuple2!41081 (++!10814 lt!1376686 (_1!23674 lt!1376699)) (_2!23674 lt!1376699)))))))

(assert (=> b!3937388 (= lt!1376686 (Cons!41796 (_1!23673 (v!39277 lt!1376668)) Nil!41796))))

(declare-fun b!3937389 () Bool)

(declare-fun e!2435938 () Bool)

(assert (=> b!3937389 (= e!2435938 e!2435960)))

(declare-fun res!1593277 () Bool)

(assert (=> b!3937389 (=> (not res!1593277) (not e!2435960))))

(assert (=> b!3937389 (= res!1593277 ((_ is Some!8947) lt!1376668))))

(declare-fun maxPrefix!3421 (LexerInterface!6117 List!41919 List!41917) Option!8948)

(assert (=> b!3937389 (= lt!1376668 (maxPrefix!3421 thiss!20629 rules!2768 lt!1376658))))

(declare-fun b!3937390 () Bool)

(assert (=> b!3937390 (= e!2435929 e!2435939)))

(declare-fun res!1593280 () Bool)

(assert (=> b!3937390 (=> res!1593280 e!2435939)))

(declare-fun lt!1376671 () List!41920)

(declare-fun lt!1376664 () List!41920)

(assert (=> b!3937390 (= res!1593280 (not (= lt!1376671 lt!1376664)))))

(assert (=> b!3937390 (= lt!1376671 (++!10814 lt!1376686 lt!1376685))))

(assert (=> b!3937390 (= lt!1376671 (++!10814 (++!10814 lt!1376686 lt!1376701) suffixTokens!72))))

(declare-fun lt!1376663 () Unit!60302)

(declare-fun lemmaConcatAssociativity!2344 (List!41920 List!41920 List!41920) Unit!60302)

(assert (=> b!3937390 (= lt!1376663 (lemmaConcatAssociativity!2344 lt!1376686 lt!1376701 suffixTokens!72))))

(declare-fun lt!1376683 () Unit!60302)

(assert (=> b!3937390 (= lt!1376683 e!2435935)))

(declare-fun c!684163 () Bool)

(assert (=> b!3937390 (= c!684163 (isEmpty!24924 lt!1376701))))

(declare-fun b!3937391 () Bool)

(assert (=> b!3937391 (= e!2435939 e!2435952)))

(declare-fun res!1593267 () Bool)

(assert (=> b!3937391 (=> res!1593267 e!2435952)))

(assert (=> b!3937391 (= res!1593267 (not (= lt!1376668 (Some!8947 (tuple2!41079 (_1!23673 (v!39277 lt!1376668)) (_2!23673 (v!39277 lt!1376668)))))))))

(assert (=> b!3937391 (= (lexList!1885 thiss!20629 rules!2768 lt!1376673) (tuple2!41081 lt!1376701 Nil!41793))))

(declare-fun lt!1376684 () Unit!60302)

(declare-fun lemmaLexThenLexPrefix!613 (LexerInterface!6117 List!41919 List!41917 List!41917 List!41920 List!41920 List!41917) Unit!60302)

(assert (=> b!3937391 (= lt!1376684 (lemmaLexThenLexPrefix!613 thiss!20629 rules!2768 lt!1376673 suffix!1176 lt!1376701 suffixTokens!72 suffixResult!91))))

(declare-fun b!3937392 () Bool)

(declare-fun e!2435937 () Bool)

(assert (=> b!3937392 (= e!2435937 e!2435938)))

(declare-fun res!1593272 () Bool)

(assert (=> b!3937392 (=> (not res!1593272) (not e!2435938))))

(assert (=> b!3937392 (= res!1593272 (= (lexList!1885 thiss!20629 rules!2768 suffix!1176) lt!1376674))))

(assert (=> b!3937392 (= lt!1376674 (tuple2!41081 suffixTokens!72 suffixResult!91))))

(declare-fun b!3937393 () Bool)

(assert (=> b!3937393 (= e!2435961 e!2435937)))

(declare-fun res!1593282 () Bool)

(assert (=> b!3937393 (=> (not res!1593282) (not e!2435937))))

(assert (=> b!3937393 (= res!1593282 (= lt!1376677 (tuple2!41081 lt!1376664 suffixResult!91)))))

(assert (=> b!3937393 (= lt!1376677 (lexList!1885 thiss!20629 rules!2768 lt!1376658))))

(assert (=> b!3937393 (= lt!1376664 (++!10814 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3937393 (= lt!1376658 (++!10813 prefix!426 suffix!1176))))

(declare-fun e!2435931 () Bool)

(declare-fun b!3937394 () Bool)

(declare-fun tp!1198109 () Bool)

(assert (=> b!3937394 (= e!2435954 (and (inv!55997 (h!47216 prefixTokens!80)) e!2435931 tp!1198109))))

(declare-fun b!3937395 () Bool)

(declare-fun tp!1198115 () Bool)

(declare-fun inv!21 (TokenValue!6758) Bool)

(assert (=> b!3937395 (= e!2435931 (and (inv!21 (value!206682 (h!47216 prefixTokens!80))) e!2435963 tp!1198115))))

(declare-fun e!2435958 () Bool)

(declare-fun b!3937396 () Bool)

(declare-fun tp!1198106 () Bool)

(assert (=> b!3937396 (= e!2435927 (and (inv!21 (value!206682 (h!47216 suffixTokens!72))) e!2435958 tp!1198106))))

(declare-fun b!3937397 () Bool)

(assert (=> b!3937397 (= e!2435951 false)))

(declare-fun tp!1198111 () Bool)

(declare-fun b!3937398 () Bool)

(assert (=> b!3937398 (= e!2435958 (and tp!1198111 (inv!55993 (tag!7388 (rule!9482 (h!47216 suffixTokens!72)))) (inv!55996 (transformation!6528 (rule!9482 (h!47216 suffixTokens!72)))) e!2435932))))

(assert (= (and start!369628 res!1593278) b!3937360))

(assert (= (and b!3937360 res!1593293) b!3937361))

(assert (= (and b!3937361 res!1593284) b!3937364))

(assert (= (and b!3937364 res!1593290) b!3937356))

(assert (= (and b!3937356 res!1593286) b!3937393))

(assert (= (and b!3937393 res!1593282) b!3937392))

(assert (= (and b!3937392 res!1593272) b!3937389))

(assert (= (and b!3937389 res!1593277) b!3937350))

(assert (= (and b!3937350 res!1593295) b!3937352))

(assert (= (and b!3937350 (not res!1593276)) b!3937388))

(assert (= (and b!3937388 (not res!1593269)) b!3937385))

(assert (= (and b!3937385 (not res!1593285)) b!3937369))

(assert (= (and b!3937369 c!684166) b!3937357))

(assert (= (and b!3937369 (not c!684166)) b!3937378))

(assert (= (and b!3937357 c!684164) b!3937353))

(assert (= (and b!3937357 (not c!684164)) b!3937376))

(assert (= (and b!3937353 c!684167) b!3937377))

(assert (= (and b!3937353 (not c!684167)) b!3937386))

(assert (= (and b!3937377 res!1593292) b!3937397))

(assert (= (and b!3937386 res!1593279) b!3937370))

(assert (= (or b!3937377 b!3937386) bm!285007))

(assert (= (and b!3937369 c!684165) b!3937380))

(assert (= (and b!3937369 (not c!684165)) b!3937379))

(assert (= (and b!3937369 (not res!1593294)) b!3937365))

(assert (= (and b!3937365 (not res!1593275)) b!3937347))

(assert (= (and b!3937347 (not res!1593268)) b!3937363))

(assert (= (and b!3937363 (not res!1593288)) b!3937374))

(assert (= (and b!3937374 (not res!1593273)) b!3937387))

(assert (= (and b!3937387 (not res!1593289)) b!3937355))

(assert (= (and b!3937355 (not res!1593287)) b!3937371))

(assert (= (and b!3937371 (not res!1593274)) b!3937390))

(assert (= (and b!3937390 c!684163) b!3937368))

(assert (= (and b!3937390 (not c!684163)) b!3937354))

(assert (= (and b!3937390 (not res!1593280)) b!3937382))

(assert (= (and b!3937382 (not res!1593270)) b!3937391))

(assert (= (and b!3937391 (not res!1593267)) b!3937373))

(assert (= (and b!3937373 (not res!1593271)) b!3937383))

(assert (= (and b!3937383 (not res!1593281)) b!3937348))

(assert (= (and b!3937348 (not res!1593283)) b!3937358))

(assert (= (and b!3937358 (not res!1593291)) b!3937372))

(assert (= (and start!369628 ((_ is Cons!41793) suffixResult!91)) b!3937359))

(assert (= (and start!369628 ((_ is Cons!41793) suffix!1176)) b!3937362))

(assert (= b!3937366 b!3937349))

(assert (= b!3937351 b!3937366))

(assert (= (and start!369628 ((_ is Cons!41795) rules!2768)) b!3937351))

(assert (= b!3937375 b!3937367))

(assert (= b!3937395 b!3937375))

(assert (= b!3937394 b!3937395))

(assert (= (and start!369628 ((_ is Cons!41796) prefixTokens!80)) b!3937394))

(assert (= b!3937398 b!3937346))

(assert (= b!3937396 b!3937398))

(assert (= b!3937384 b!3937396))

(assert (= (and start!369628 ((_ is Cons!41796) suffixTokens!72)) b!3937384))

(assert (= (and start!369628 ((_ is Cons!41793) prefix!426)) b!3937381))

(declare-fun m!4505327 () Bool)

(assert (=> b!3937350 m!4505327))

(declare-fun m!4505329 () Bool)

(assert (=> b!3937350 m!4505329))

(declare-fun m!4505331 () Bool)

(assert (=> b!3937350 m!4505331))

(declare-fun m!4505333 () Bool)

(assert (=> b!3937350 m!4505333))

(declare-fun m!4505335 () Bool)

(assert (=> b!3937350 m!4505335))

(declare-fun m!4505337 () Bool)

(assert (=> b!3937350 m!4505337))

(assert (=> b!3937350 m!4505329))

(declare-fun m!4505339 () Bool)

(assert (=> b!3937350 m!4505339))

(declare-fun m!4505341 () Bool)

(assert (=> b!3937350 m!4505341))

(declare-fun m!4505343 () Bool)

(assert (=> b!3937350 m!4505343))

(declare-fun m!4505345 () Bool)

(assert (=> b!3937350 m!4505345))

(assert (=> b!3937350 m!4505339))

(declare-fun m!4505347 () Bool)

(assert (=> b!3937350 m!4505347))

(declare-fun m!4505349 () Bool)

(assert (=> b!3937350 m!4505349))

(declare-fun m!4505351 () Bool)

(assert (=> b!3937350 m!4505351))

(declare-fun m!4505353 () Bool)

(assert (=> b!3937350 m!4505353))

(declare-fun m!4505355 () Bool)

(assert (=> b!3937389 m!4505355))

(declare-fun m!4505357 () Bool)

(assert (=> b!3937393 m!4505357))

(declare-fun m!4505359 () Bool)

(assert (=> b!3937393 m!4505359))

(declare-fun m!4505361 () Bool)

(assert (=> b!3937393 m!4505361))

(declare-fun m!4505363 () Bool)

(assert (=> b!3937374 m!4505363))

(declare-fun m!4505365 () Bool)

(assert (=> b!3937371 m!4505365))

(declare-fun m!4505367 () Bool)

(assert (=> b!3937371 m!4505367))

(declare-fun m!4505369 () Bool)

(assert (=> b!3937371 m!4505369))

(declare-fun m!4505371 () Bool)

(assert (=> b!3937371 m!4505371))

(declare-fun m!4505373 () Bool)

(assert (=> b!3937377 m!4505373))

(declare-fun m!4505375 () Bool)

(assert (=> b!3937377 m!4505375))

(declare-fun m!4505377 () Bool)

(assert (=> b!3937348 m!4505377))

(declare-fun m!4505379 () Bool)

(assert (=> b!3937366 m!4505379))

(declare-fun m!4505381 () Bool)

(assert (=> b!3937366 m!4505381))

(declare-fun m!4505383 () Bool)

(assert (=> b!3937396 m!4505383))

(declare-fun m!4505385 () Bool)

(assert (=> b!3937361 m!4505385))

(declare-fun m!4505387 () Bool)

(assert (=> b!3937395 m!4505387))

(declare-fun m!4505389 () Bool)

(assert (=> b!3937373 m!4505389))

(declare-fun m!4505391 () Bool)

(assert (=> b!3937382 m!4505391))

(declare-fun m!4505393 () Bool)

(assert (=> b!3937364 m!4505393))

(declare-fun m!4505395 () Bool)

(assert (=> b!3937358 m!4505395))

(declare-fun m!4505397 () Bool)

(assert (=> b!3937358 m!4505397))

(assert (=> b!3937358 m!4505397))

(declare-fun m!4505399 () Bool)

(assert (=> b!3937358 m!4505399))

(declare-fun m!4505401 () Bool)

(assert (=> b!3937358 m!4505401))

(declare-fun m!4505403 () Bool)

(assert (=> b!3937357 m!4505403))

(declare-fun m!4505405 () Bool)

(assert (=> b!3937357 m!4505405))

(declare-fun m!4505407 () Bool)

(assert (=> b!3937357 m!4505407))

(declare-fun m!4505409 () Bool)

(assert (=> b!3937357 m!4505409))

(declare-fun m!4505411 () Bool)

(assert (=> b!3937357 m!4505411))

(declare-fun m!4505413 () Bool)

(assert (=> b!3937375 m!4505413))

(declare-fun m!4505415 () Bool)

(assert (=> b!3937375 m!4505415))

(declare-fun m!4505417 () Bool)

(assert (=> b!3937363 m!4505417))

(declare-fun m!4505419 () Bool)

(assert (=> b!3937363 m!4505419))

(declare-fun m!4505421 () Bool)

(assert (=> b!3937352 m!4505421))

(declare-fun m!4505423 () Bool)

(assert (=> b!3937388 m!4505423))

(declare-fun m!4505425 () Bool)

(assert (=> b!3937369 m!4505425))

(declare-fun m!4505427 () Bool)

(assert (=> b!3937369 m!4505427))

(declare-fun m!4505429 () Bool)

(assert (=> b!3937355 m!4505429))

(declare-fun m!4505431 () Bool)

(assert (=> b!3937355 m!4505431))

(declare-fun m!4505433 () Bool)

(assert (=> b!3937355 m!4505433))

(declare-fun m!4505435 () Bool)

(assert (=> b!3937360 m!4505435))

(declare-fun m!4505437 () Bool)

(assert (=> b!3937398 m!4505437))

(declare-fun m!4505439 () Bool)

(assert (=> b!3937398 m!4505439))

(declare-fun m!4505441 () Bool)

(assert (=> b!3937368 m!4505441))

(declare-fun m!4505443 () Bool)

(assert (=> b!3937390 m!4505443))

(declare-fun m!4505445 () Bool)

(assert (=> b!3937390 m!4505445))

(declare-fun m!4505447 () Bool)

(assert (=> b!3937390 m!4505447))

(declare-fun m!4505449 () Bool)

(assert (=> b!3937390 m!4505449))

(declare-fun m!4505451 () Bool)

(assert (=> b!3937390 m!4505451))

(assert (=> b!3937390 m!4505443))

(declare-fun m!4505453 () Bool)

(assert (=> b!3937387 m!4505453))

(declare-fun m!4505455 () Bool)

(assert (=> b!3937387 m!4505455))

(declare-fun m!4505457 () Bool)

(assert (=> b!3937387 m!4505457))

(declare-fun m!4505459 () Bool)

(assert (=> b!3937386 m!4505459))

(declare-fun m!4505461 () Bool)

(assert (=> b!3937386 m!4505461))

(declare-fun m!4505463 () Bool)

(assert (=> b!3937353 m!4505463))

(assert (=> b!3937353 m!4505367))

(declare-fun m!4505465 () Bool)

(assert (=> bm!285007 m!4505465))

(declare-fun m!4505467 () Bool)

(assert (=> b!3937380 m!4505467))

(declare-fun m!4505469 () Bool)

(assert (=> b!3937380 m!4505469))

(declare-fun m!4505471 () Bool)

(assert (=> b!3937380 m!4505471))

(declare-fun m!4505473 () Bool)

(assert (=> b!3937380 m!4505473))

(declare-fun m!4505475 () Bool)

(assert (=> b!3937365 m!4505475))

(declare-fun m!4505477 () Bool)

(assert (=> b!3937383 m!4505477))

(declare-fun m!4505479 () Bool)

(assert (=> b!3937394 m!4505479))

(declare-fun m!4505481 () Bool)

(assert (=> b!3937356 m!4505481))

(assert (=> b!3937347 m!4505469))

(declare-fun m!4505483 () Bool)

(assert (=> b!3937347 m!4505483))

(assert (=> b!3937347 m!4505467))

(declare-fun m!4505485 () Bool)

(assert (=> b!3937347 m!4505485))

(declare-fun m!4505487 () Bool)

(assert (=> b!3937347 m!4505487))

(declare-fun m!4505489 () Bool)

(assert (=> b!3937392 m!4505489))

(declare-fun m!4505491 () Bool)

(assert (=> b!3937391 m!4505491))

(declare-fun m!4505493 () Bool)

(assert (=> b!3937391 m!4505493))

(declare-fun m!4505495 () Bool)

(assert (=> b!3937384 m!4505495))

(check-sat (not b!3937348) (not b!3937377) (not b!3937387) (not b_next!108263) b_and!300725 (not b!3937352) (not b!3937390) (not b!3937392) (not b!3937351) (not b!3937386) (not b!3937362) (not b!3937369) (not b_next!108257) (not b!3937371) (not b!3937374) (not b!3937380) tp_is_empty!19837 (not b!3937388) (not b!3937357) (not b!3937383) (not b!3937355) (not b!3937361) (not b!3937394) (not bm!285007) (not b!3937393) (not b!3937358) (not b_next!108259) b_and!300719 (not b!3937398) b_and!300723 (not b!3937384) b_and!300727 (not b!3937368) (not b!3937382) (not b!3937391) (not b!3937356) (not b!3937360) (not b_next!108255) (not b!3937347) (not b!3937395) (not b!3937353) (not b!3937364) (not b!3937375) (not b!3937359) (not b!3937396) (not b!3937363) (not b!3937389) b_and!300729 b_and!300721 (not b_next!108261) (not b!3937365) (not b!3937373) (not b!3937381) (not b_next!108253) (not b!3937366) (not b!3937350))
(check-sat (not b_next!108257) (not b_next!108259) b_and!300727 (not b_next!108255) (not b_next!108253) (not b_next!108263) b_and!300725 b_and!300719 b_and!300723 b_and!300729 b_and!300721 (not b_next!108261))
