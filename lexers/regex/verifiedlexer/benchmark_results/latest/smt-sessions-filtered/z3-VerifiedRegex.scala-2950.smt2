; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173942 () Bool)

(assert start!173942)

(declare-fun b!1759370 () Bool)

(declare-fun b_free!48639 () Bool)

(declare-fun b_next!49343 () Bool)

(assert (=> b!1759370 (= b_free!48639 (not b_next!49343))))

(declare-fun tp!499956 () Bool)

(declare-fun b_and!132547 () Bool)

(assert (=> b!1759370 (= tp!499956 b_and!132547)))

(declare-fun b_free!48641 () Bool)

(declare-fun b_next!49345 () Bool)

(assert (=> b!1759370 (= b_free!48641 (not b_next!49345))))

(declare-fun tp!499962 () Bool)

(declare-fun b_and!132549 () Bool)

(assert (=> b!1759370 (= tp!499962 b_and!132549)))

(declare-fun b!1759366 () Bool)

(declare-fun b_free!48643 () Bool)

(declare-fun b_next!49347 () Bool)

(assert (=> b!1759366 (= b_free!48643 (not b_next!49347))))

(declare-fun tp!499958 () Bool)

(declare-fun b_and!132551 () Bool)

(assert (=> b!1759366 (= tp!499958 b_and!132551)))

(declare-fun b_free!48645 () Bool)

(declare-fun b_next!49349 () Bool)

(assert (=> b!1759366 (= b_free!48645 (not b_next!49349))))

(declare-fun tp!499966 () Bool)

(declare-fun b_and!132553 () Bool)

(assert (=> b!1759366 (= tp!499966 b_and!132553)))

(declare-fun b!1759364 () Bool)

(declare-fun b_free!48647 () Bool)

(declare-fun b_next!49351 () Bool)

(assert (=> b!1759364 (= b_free!48647 (not b_next!49351))))

(declare-fun tp!499957 () Bool)

(declare-fun b_and!132555 () Bool)

(assert (=> b!1759364 (= tp!499957 b_and!132555)))

(declare-fun b_free!48649 () Bool)

(declare-fun b_next!49353 () Bool)

(assert (=> b!1759364 (= b_free!48649 (not b_next!49353))))

(declare-fun tp!499965 () Bool)

(declare-fun b_and!132557 () Bool)

(assert (=> b!1759364 (= tp!499965 b_and!132557)))

(declare-fun b!1759398 () Bool)

(declare-fun e!1126045 () Bool)

(assert (=> b!1759398 (= e!1126045 true)))

(declare-fun b!1759397 () Bool)

(declare-fun e!1126044 () Bool)

(assert (=> b!1759397 (= e!1126044 e!1126045)))

(declare-fun b!1759396 () Bool)

(declare-fun e!1126043 () Bool)

(assert (=> b!1759396 (= e!1126043 e!1126044)))

(declare-fun b!1759384 () Bool)

(assert (=> b!1759384 e!1126043))

(assert (= b!1759397 b!1759398))

(assert (= b!1759396 b!1759397))

(assert (= b!1759384 b!1759396))

(declare-fun order!12267 () Int)

(declare-fun order!12269 () Int)

(declare-datatypes ((List!19439 0))(
  ( (Nil!19369) (Cons!19369 (h!24770 (_ BitVec 16)) (t!163926 List!19439)) )
))
(declare-datatypes ((TokenValue!3551 0))(
  ( (FloatLiteralValue!7102 (text!25302 List!19439)) (TokenValueExt!3550 (__x!12404 Int)) (Broken!17755 (value!108285 List!19439)) (Object!3620) (End!3551) (Def!3551) (Underscore!3551) (Match!3551) (Else!3551) (Error!3551) (Case!3551) (If!3551) (Extends!3551) (Abstract!3551) (Class!3551) (Val!3551) (DelimiterValue!7102 (del!3611 List!19439)) (KeywordValue!3557 (value!108286 List!19439)) (CommentValue!7102 (value!108287 List!19439)) (WhitespaceValue!7102 (value!108288 List!19439)) (IndentationValue!3551 (value!108289 List!19439)) (String!22086) (Int32!3551) (Broken!17756 (value!108290 List!19439)) (Boolean!3552) (Unit!33540) (OperatorValue!3554 (op!3611 List!19439)) (IdentifierValue!7102 (value!108291 List!19439)) (IdentifierValue!7103 (value!108292 List!19439)) (WhitespaceValue!7103 (value!108293 List!19439)) (True!7102) (False!7102) (Broken!17757 (value!108294 List!19439)) (Broken!17758 (value!108295 List!19439)) (True!7103) (RightBrace!3551) (RightBracket!3551) (Colon!3551) (Null!3551) (Comma!3551) (LeftBracket!3551) (False!7103) (LeftBrace!3551) (ImaginaryLiteralValue!3551 (text!25303 List!19439)) (StringLiteralValue!10653 (value!108296 List!19439)) (EOFValue!3551 (value!108297 List!19439)) (IdentValue!3551 (value!108298 List!19439)) (DelimiterValue!7103 (value!108299 List!19439)) (DedentValue!3551 (value!108300 List!19439)) (NewLineValue!3551 (value!108301 List!19439)) (IntegerValue!10653 (value!108302 (_ BitVec 32)) (text!25304 List!19439)) (IntegerValue!10654 (value!108303 Int) (text!25305 List!19439)) (Times!3551) (Or!3551) (Equal!3551) (Minus!3551) (Broken!17759 (value!108304 List!19439)) (And!3551) (Div!3551) (LessEqual!3551) (Mod!3551) (Concat!8340) (Not!3551) (Plus!3551) (SpaceValue!3551 (value!108305 List!19439)) (IntegerValue!10655 (value!108306 Int) (text!25306 List!19439)) (StringLiteralValue!10654 (text!25307 List!19439)) (FloatLiteralValue!7103 (text!25308 List!19439)) (BytesLiteralValue!3551 (value!108307 List!19439)) (CommentValue!7103 (value!108308 List!19439)) (StringLiteralValue!10655 (value!108309 List!19439)) (ErrorTokenValue!3551 (msg!3612 List!19439)) )
))
(declare-datatypes ((String!22087 0))(
  ( (String!22088 (value!108310 String)) )
))
(declare-datatypes ((C!9752 0))(
  ( (C!9753 (val!5472 Int)) )
))
(declare-datatypes ((List!19440 0))(
  ( (Nil!19370) (Cons!19370 (h!24771 C!9752) (t!163927 List!19440)) )
))
(declare-datatypes ((Regex!4789 0))(
  ( (ElementMatch!4789 (c!286648 C!9752)) (Concat!8341 (regOne!10090 Regex!4789) (regTwo!10090 Regex!4789)) (EmptyExpr!4789) (Star!4789 (reg!5118 Regex!4789)) (EmptyLang!4789) (Union!4789 (regOne!10091 Regex!4789) (regTwo!10091 Regex!4789)) )
))
(declare-datatypes ((IArray!12891 0))(
  ( (IArray!12892 (innerList!6503 List!19440)) )
))
(declare-datatypes ((Conc!6443 0))(
  ( (Node!6443 (left!15507 Conc!6443) (right!15837 Conc!6443) (csize!13116 Int) (cheight!6654 Int)) (Leaf!9394 (xs!9319 IArray!12891) (csize!13117 Int)) (Empty!6443) )
))
(declare-datatypes ((BalanceConc!12830 0))(
  ( (BalanceConc!12831 (c!286649 Conc!6443)) )
))
(declare-datatypes ((TokenValueInjection!6762 0))(
  ( (TokenValueInjection!6763 (toValue!4980 Int) (toChars!4839 Int)) )
))
(declare-datatypes ((Rule!6722 0))(
  ( (Rule!6723 (regex!3461 Regex!4789) (tag!3825 String!22087) (isSeparator!3461 Bool) (transformation!3461 TokenValueInjection!6762)) )
))
(declare-datatypes ((Token!6488 0))(
  ( (Token!6489 (value!108311 TokenValue!3551) (rule!5477 Rule!6722) (size!15385 Int) (originalCharacters!4275 List!19440)) )
))
(declare-datatypes ((tuple2!18978 0))(
  ( (tuple2!18979 (_1!10891 Token!6488) (_2!10891 List!19440)) )
))
(declare-fun lt!679914 () tuple2!18978)

(declare-fun lambda!70108 () Int)

(declare-fun dynLambda!9317 (Int Int) Int)

(declare-fun dynLambda!9318 (Int Int) Int)

(assert (=> b!1759398 (< (dynLambda!9317 order!12267 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) (dynLambda!9318 order!12269 lambda!70108))))

(declare-fun order!12271 () Int)

(declare-fun dynLambda!9319 (Int Int) Int)

(assert (=> b!1759398 (< (dynLambda!9319 order!12271 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) (dynLambda!9318 order!12269 lambda!70108))))

(declare-fun b!1759359 () Bool)

(declare-fun e!1126028 () Bool)

(declare-fun e!1126025 () Bool)

(assert (=> b!1759359 (= e!1126028 e!1126025)))

(declare-fun res!791774 () Bool)

(assert (=> b!1759359 (=> res!791774 e!1126025)))

(declare-fun lt!679911 () List!19440)

(declare-fun lt!679897 () List!19440)

(assert (=> b!1759359 (= res!791774 (not (= lt!679911 lt!679897)))))

(declare-fun lt!679912 () List!19440)

(declare-fun lt!679901 () List!19440)

(declare-fun getSuffix!868 (List!19440 List!19440) List!19440)

(assert (=> b!1759359 (= lt!679912 (getSuffix!868 lt!679897 lt!679901))))

(declare-datatypes ((LexerInterface!3090 0))(
  ( (LexerInterfaceExt!3087 (__x!12405 Int)) (Lexer!3088) )
))
(declare-fun thiss!24550 () LexerInterface!3090)

(declare-datatypes ((Option!3944 0))(
  ( (None!3943) (Some!3943 (v!25402 tuple2!18978)) )
))
(declare-fun maxPrefixOneRule!1013 (LexerInterface!3090 Rule!6722 List!19440) Option!3944)

(declare-fun apply!5261 (TokenValueInjection!6762 BalanceConc!12830) TokenValue!3551)

(declare-fun seqFromList!2430 (List!19440) BalanceConc!12830)

(declare-fun size!15386 (List!19440) Int)

(assert (=> b!1759359 (= (maxPrefixOneRule!1013 thiss!24550 (rule!5477 (_1!10891 lt!679914)) lt!679897) (Some!3943 (tuple2!18979 (Token!6489 (apply!5261 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) (seqFromList!2430 lt!679901)) (rule!5477 (_1!10891 lt!679914)) (size!15386 lt!679901) lt!679901) (_2!10891 lt!679914))))))

(declare-datatypes ((Unit!33541 0))(
  ( (Unit!33542) )
))
(declare-fun lt!679906 () Unit!33541)

(declare-datatypes ((List!19441 0))(
  ( (Nil!19371) (Cons!19371 (h!24772 Rule!6722) (t!163928 List!19441)) )
))
(declare-fun rules!3447 () List!19441)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!391 (LexerInterface!3090 List!19441 List!19440 List!19440 List!19440 Rule!6722) Unit!33541)

(assert (=> b!1759359 (= lt!679906 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!391 thiss!24550 rules!3447 lt!679901 lt!679897 (_2!10891 lt!679914) (rule!5477 (_1!10891 lt!679914))))))

(declare-fun b!1759360 () Bool)

(declare-fun res!791775 () Bool)

(declare-fun e!1126015 () Bool)

(assert (=> b!1759360 (=> (not res!791775) (not e!1126015))))

(declare-fun lt!679900 () tuple2!18978)

(declare-fun isEmpty!12218 (List!19440) Bool)

(assert (=> b!1759360 (= res!791775 (isEmpty!12218 (_2!10891 lt!679900)))))

(declare-fun b!1759361 () Bool)

(declare-fun e!1126026 () Bool)

(declare-fun e!1126018 () Bool)

(assert (=> b!1759361 (= e!1126026 e!1126018)))

(declare-fun res!791760 () Bool)

(assert (=> b!1759361 (=> res!791760 e!1126018)))

(declare-fun lt!679899 () BalanceConc!12830)

(declare-fun list!7855 (BalanceConc!12830) List!19440)

(declare-fun dynLambda!9320 (Int TokenValue!3551) BalanceConc!12830)

(declare-fun dynLambda!9321 (Int BalanceConc!12830) TokenValue!3551)

(assert (=> b!1759361 (= res!791760 (not (= (list!7855 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))) lt!679901)))))

(declare-fun lt!679907 () Unit!33541)

(declare-fun lemmaSemiInverse!599 (TokenValueInjection!6762 BalanceConc!12830) Unit!33541)

(assert (=> b!1759361 (= lt!679907 (lemmaSemiInverse!599 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) lt!679899))))

(declare-fun b!1759362 () Bool)

(declare-fun res!791759 () Bool)

(declare-fun e!1126013 () Bool)

(assert (=> b!1759362 (=> (not res!791759) (not e!1126013))))

(declare-fun rulesInvariant!2759 (LexerInterface!3090 List!19441) Bool)

(assert (=> b!1759362 (= res!791759 (rulesInvariant!2759 thiss!24550 rules!3447))))

(declare-fun e!1126017 () Bool)

(declare-fun e!1126036 () Bool)

(declare-fun tp!499961 () Bool)

(declare-fun b!1759363 () Bool)

(declare-fun inv!25147 (String!22087) Bool)

(declare-fun inv!25152 (TokenValueInjection!6762) Bool)

(assert (=> b!1759363 (= e!1126017 (and tp!499961 (inv!25147 (tag!3825 (h!24772 rules!3447))) (inv!25152 (transformation!3461 (h!24772 rules!3447))) e!1126036))))

(declare-fun e!1126023 () Bool)

(assert (=> b!1759364 (= e!1126023 (and tp!499957 tp!499965))))

(declare-fun b!1759365 () Bool)

(declare-fun res!791776 () Bool)

(assert (=> b!1759365 (=> res!791776 e!1126018)))

(assert (=> b!1759365 (= res!791776 (not (= lt!679899 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))))))

(declare-fun e!1126033 () Bool)

(assert (=> b!1759366 (= e!1126033 (and tp!499958 tp!499966))))

(declare-fun b!1759368 () Bool)

(assert (=> b!1759368 (= e!1126018 e!1126028)))

(declare-fun res!791767 () Bool)

(assert (=> b!1759368 (=> res!791767 e!1126028)))

(declare-fun lt!679896 () Option!3944)

(declare-fun size!15387 (BalanceConc!12830) Int)

(assert (=> b!1759368 (= res!791767 (not (= lt!679896 (Some!3943 (tuple2!18979 (Token!6489 (apply!5261 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) lt!679899) (rule!5477 (_1!10891 lt!679914)) (size!15387 lt!679899) lt!679901) (_2!10891 lt!679914))))))))

(declare-fun lt!679916 () Unit!33541)

(declare-fun lemmaCharactersSize!519 (Token!6488) Unit!33541)

(assert (=> b!1759368 (= lt!679916 (lemmaCharactersSize!519 (_1!10891 lt!679914)))))

(declare-fun lt!679898 () Unit!33541)

(declare-fun lemmaEqSameImage!372 (TokenValueInjection!6762 BalanceConc!12830 BalanceConc!12830) Unit!33541)

(assert (=> b!1759368 (= lt!679898 (lemmaEqSameImage!372 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) lt!679899 (seqFromList!2430 (originalCharacters!4275 (_1!10891 lt!679914)))))))

(declare-fun b!1759369 () Bool)

(declare-fun e!1126022 () Bool)

(assert (=> b!1759369 (= e!1126013 e!1126022)))

(declare-fun res!791763 () Bool)

(assert (=> b!1759369 (=> (not res!791763) (not e!1126022))))

(declare-fun lt!679909 () Option!3944)

(declare-fun isDefined!3287 (Option!3944) Bool)

(assert (=> b!1759369 (= res!791763 (isDefined!3287 lt!679909))))

(declare-fun lt!679905 () List!19440)

(declare-fun maxPrefix!1644 (LexerInterface!3090 List!19441 List!19440) Option!3944)

(assert (=> b!1759369 (= lt!679909 (maxPrefix!1644 thiss!24550 rules!3447 lt!679905))))

(declare-fun token!523 () Token!6488)

(declare-fun charsOf!2110 (Token!6488) BalanceConc!12830)

(assert (=> b!1759369 (= lt!679905 (list!7855 (charsOf!2110 token!523)))))

(assert (=> b!1759370 (= e!1126036 (and tp!499956 tp!499962))))

(declare-fun b!1759371 () Bool)

(declare-fun e!1126027 () Bool)

(declare-fun tp_is_empty!7821 () Bool)

(declare-fun tp!499964 () Bool)

(assert (=> b!1759371 (= e!1126027 (and tp_is_empty!7821 tp!499964))))

(declare-fun b!1759372 () Bool)

(declare-fun res!791762 () Bool)

(declare-fun e!1126031 () Bool)

(assert (=> b!1759372 (=> res!791762 e!1126031)))

(declare-fun suffix!1421 () List!19440)

(assert (=> b!1759372 (= res!791762 (isEmpty!12218 suffix!1421))))

(declare-fun b!1759373 () Bool)

(declare-fun e!1126034 () Bool)

(assert (=> b!1759373 (= e!1126031 e!1126034)))

(declare-fun res!791758 () Bool)

(assert (=> b!1759373 (=> res!791758 e!1126034)))

(declare-fun isPrefix!1701 (List!19440 List!19440) Bool)

(assert (=> b!1759373 (= res!791758 (not (isPrefix!1701 lt!679901 lt!679897)))))

(assert (=> b!1759373 (isPrefix!1701 lt!679901 lt!679911)))

(declare-fun ++!5285 (List!19440 List!19440) List!19440)

(assert (=> b!1759373 (= lt!679911 (++!5285 lt!679901 (_2!10891 lt!679914)))))

(declare-fun lt!679904 () Unit!33541)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1210 (List!19440 List!19440) Unit!33541)

(assert (=> b!1759373 (= lt!679904 (lemmaConcatTwoListThenFirstIsPrefix!1210 lt!679901 (_2!10891 lt!679914)))))

(assert (=> b!1759373 (= lt!679901 (list!7855 lt!679899))))

(assert (=> b!1759373 (= lt!679899 (charsOf!2110 (_1!10891 lt!679914)))))

(declare-fun e!1126032 () Bool)

(assert (=> b!1759373 e!1126032))

(declare-fun res!791765 () Bool)

(assert (=> b!1759373 (=> (not res!791765) (not e!1126032))))

(declare-datatypes ((Option!3945 0))(
  ( (None!3944) (Some!3944 (v!25403 Rule!6722)) )
))
(declare-fun lt!679902 () Option!3945)

(declare-fun isDefined!3288 (Option!3945) Bool)

(assert (=> b!1759373 (= res!791765 (isDefined!3288 lt!679902))))

(declare-fun getRuleFromTag!509 (LexerInterface!3090 List!19441 String!22087) Option!3945)

(assert (=> b!1759373 (= lt!679902 (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 (_1!10891 lt!679914)))))))

(declare-fun lt!679915 () Unit!33541)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!509 (LexerInterface!3090 List!19441 List!19440 Token!6488) Unit!33541)

(assert (=> b!1759373 (= lt!679915 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!509 thiss!24550 rules!3447 lt!679897 (_1!10891 lt!679914)))))

(declare-fun get!5892 (Option!3944) tuple2!18978)

(assert (=> b!1759373 (= lt!679914 (get!5892 lt!679896))))

(declare-fun lt!679895 () Unit!33541)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!612 (LexerInterface!3090 List!19441 List!19440 List!19440) Unit!33541)

(assert (=> b!1759373 (= lt!679895 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!612 thiss!24550 rules!3447 lt!679905 suffix!1421))))

(assert (=> b!1759373 (= lt!679896 (maxPrefix!1644 thiss!24550 rules!3447 lt!679897))))

(assert (=> b!1759373 (isPrefix!1701 lt!679905 lt!679897)))

(declare-fun lt!679908 () Unit!33541)

(assert (=> b!1759373 (= lt!679908 (lemmaConcatTwoListThenFirstIsPrefix!1210 lt!679905 suffix!1421))))

(assert (=> b!1759373 (= lt!679897 (++!5285 lt!679905 suffix!1421))))

(declare-fun b!1759374 () Bool)

(assert (=> b!1759374 (= e!1126025 (= (++!5285 lt!679901 lt!679912) lt!679897))))

(declare-fun b!1759375 () Bool)

(declare-fun res!791766 () Bool)

(assert (=> b!1759375 (=> res!791766 e!1126034)))

(declare-fun matchR!2262 (Regex!4789 List!19440) Bool)

(assert (=> b!1759375 (= res!791766 (not (matchR!2262 (regex!3461 (rule!5477 (_1!10891 lt!679914))) lt!679901)))))

(declare-fun e!1126020 () Bool)

(declare-fun rule!422 () Rule!6722)

(declare-fun tp!499960 () Bool)

(declare-fun b!1759376 () Bool)

(assert (=> b!1759376 (= e!1126020 (and tp!499960 (inv!25147 (tag!3825 rule!422)) (inv!25152 (transformation!3461 rule!422)) e!1126033))))

(declare-fun b!1759377 () Bool)

(assert (=> b!1759377 (= e!1126022 e!1126015)))

(declare-fun res!791768 () Bool)

(assert (=> b!1759377 (=> (not res!791768) (not e!1126015))))

(assert (=> b!1759377 (= res!791768 (= (_1!10891 lt!679900) token!523))))

(assert (=> b!1759377 (= lt!679900 (get!5892 lt!679909))))

(declare-fun b!1759378 () Bool)

(declare-fun res!791770 () Bool)

(assert (=> b!1759378 (=> res!791770 e!1126031)))

(declare-fun prefixMatch!672 (Regex!4789 List!19440) Bool)

(declare-fun rulesRegex!817 (LexerInterface!3090 List!19441) Regex!4789)

(declare-fun head!4072 (List!19440) C!9752)

(assert (=> b!1759378 (= res!791770 (prefixMatch!672 (rulesRegex!817 thiss!24550 rules!3447) (++!5285 lt!679905 (Cons!19370 (head!4072 suffix!1421) Nil!19370))))))

(declare-fun b!1759379 () Bool)

(declare-fun e!1126024 () Bool)

(declare-fun tp!499959 () Bool)

(assert (=> b!1759379 (= e!1126024 (and tp!499959 (inv!25147 (tag!3825 (rule!5477 token!523))) (inv!25152 (transformation!3461 (rule!5477 token!523))) e!1126023))))

(declare-fun e!1126016 () Bool)

(declare-fun b!1759367 () Bool)

(declare-fun tp!499955 () Bool)

(declare-fun inv!21 (TokenValue!3551) Bool)

(assert (=> b!1759367 (= e!1126016 (and (inv!21 (value!108311 token!523)) e!1126024 tp!499955))))

(declare-fun res!791771 () Bool)

(assert (=> start!173942 (=> (not res!791771) (not e!1126013))))

(get-info :version)

(assert (=> start!173942 (= res!791771 ((_ is Lexer!3088) thiss!24550))))

(assert (=> start!173942 e!1126013))

(assert (=> start!173942 e!1126027))

(assert (=> start!173942 e!1126020))

(assert (=> start!173942 true))

(declare-fun inv!25153 (Token!6488) Bool)

(assert (=> start!173942 (and (inv!25153 token!523) e!1126016)))

(declare-fun e!1126035 () Bool)

(assert (=> start!173942 e!1126035))

(declare-fun b!1759380 () Bool)

(declare-fun res!791769 () Bool)

(assert (=> b!1759380 (=> (not res!791769) (not e!1126015))))

(assert (=> b!1759380 (= res!791769 (= (rule!5477 token!523) rule!422))))

(declare-fun b!1759381 () Bool)

(declare-fun tp!499963 () Bool)

(assert (=> b!1759381 (= e!1126035 (and e!1126017 tp!499963))))

(declare-fun b!1759382 () Bool)

(declare-fun e!1126014 () Bool)

(assert (=> b!1759382 (= e!1126032 e!1126014)))

(declare-fun res!791773 () Bool)

(assert (=> b!1759382 (=> (not res!791773) (not e!1126014))))

(declare-fun lt!679913 () Rule!6722)

(assert (=> b!1759382 (= res!791773 (matchR!2262 (regex!3461 lt!679913) (list!7855 (charsOf!2110 (_1!10891 lt!679914)))))))

(declare-fun get!5893 (Option!3945) Rule!6722)

(assert (=> b!1759382 (= lt!679913 (get!5893 lt!679902))))

(declare-fun b!1759383 () Bool)

(assert (=> b!1759383 (= e!1126015 (not e!1126031))))

(declare-fun res!791764 () Bool)

(assert (=> b!1759383 (=> res!791764 e!1126031)))

(assert (=> b!1759383 (= res!791764 (not (matchR!2262 (regex!3461 rule!422) lt!679905)))))

(declare-fun ruleValid!959 (LexerInterface!3090 Rule!6722) Bool)

(assert (=> b!1759383 (ruleValid!959 thiss!24550 rule!422)))

(declare-fun lt!679903 () Unit!33541)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!482 (LexerInterface!3090 Rule!6722 List!19441) Unit!33541)

(assert (=> b!1759383 (= lt!679903 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!482 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1759384 (= e!1126034 e!1126026)))

(declare-fun res!791761 () Bool)

(assert (=> b!1759384 (=> res!791761 e!1126026)))

(declare-fun Forall!828 (Int) Bool)

(assert (=> b!1759384 (= res!791761 (not (Forall!828 lambda!70108)))))

(declare-fun lt!679910 () Unit!33541)

(declare-fun lemmaInv!660 (TokenValueInjection!6762) Unit!33541)

(assert (=> b!1759384 (= lt!679910 (lemmaInv!660 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))))

(declare-fun b!1759385 () Bool)

(declare-fun res!791772 () Bool)

(assert (=> b!1759385 (=> (not res!791772) (not e!1126013))))

(declare-fun contains!3489 (List!19441 Rule!6722) Bool)

(assert (=> b!1759385 (= res!791772 (contains!3489 rules!3447 rule!422))))

(declare-fun b!1759386 () Bool)

(declare-fun res!791757 () Bool)

(assert (=> b!1759386 (=> (not res!791757) (not e!1126013))))

(declare-fun isEmpty!12219 (List!19441) Bool)

(assert (=> b!1759386 (= res!791757 (not (isEmpty!12219 rules!3447)))))

(declare-fun b!1759387 () Bool)

(assert (=> b!1759387 (= e!1126014 (= (rule!5477 (_1!10891 lt!679914)) lt!679913))))

(assert (= (and start!173942 res!791771) b!1759386))

(assert (= (and b!1759386 res!791757) b!1759362))

(assert (= (and b!1759362 res!791759) b!1759385))

(assert (= (and b!1759385 res!791772) b!1759369))

(assert (= (and b!1759369 res!791763) b!1759377))

(assert (= (and b!1759377 res!791768) b!1759360))

(assert (= (and b!1759360 res!791775) b!1759380))

(assert (= (and b!1759380 res!791769) b!1759383))

(assert (= (and b!1759383 (not res!791764)) b!1759372))

(assert (= (and b!1759372 (not res!791762)) b!1759378))

(assert (= (and b!1759378 (not res!791770)) b!1759373))

(assert (= (and b!1759373 res!791765) b!1759382))

(assert (= (and b!1759382 res!791773) b!1759387))

(assert (= (and b!1759373 (not res!791758)) b!1759375))

(assert (= (and b!1759375 (not res!791766)) b!1759384))

(assert (= (and b!1759384 (not res!791761)) b!1759361))

(assert (= (and b!1759361 (not res!791760)) b!1759365))

(assert (= (and b!1759365 (not res!791776)) b!1759368))

(assert (= (and b!1759368 (not res!791767)) b!1759359))

(assert (= (and b!1759359 (not res!791774)) b!1759374))

(assert (= (and start!173942 ((_ is Cons!19370) suffix!1421)) b!1759371))

(assert (= b!1759376 b!1759366))

(assert (= start!173942 b!1759376))

(assert (= b!1759379 b!1759364))

(assert (= b!1759367 b!1759379))

(assert (= start!173942 b!1759367))

(assert (= b!1759363 b!1759370))

(assert (= b!1759381 b!1759363))

(assert (= (and start!173942 ((_ is Cons!19371) rules!3447)) b!1759381))

(declare-fun b_lambda!56875 () Bool)

(assert (=> (not b_lambda!56875) (not b!1759361)))

(declare-fun t!163909 () Bool)

(declare-fun tb!105891 () Bool)

(assert (=> (and b!1759370 (= (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163909) tb!105891))

(declare-fun b!1759403 () Bool)

(declare-fun e!1126048 () Bool)

(declare-fun tp!499969 () Bool)

(declare-fun inv!25154 (Conc!6443) Bool)

(assert (=> b!1759403 (= e!1126048 (and (inv!25154 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))) tp!499969))))

(declare-fun result!127406 () Bool)

(declare-fun inv!25155 (BalanceConc!12830) Bool)

(assert (=> tb!105891 (= result!127406 (and (inv!25155 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))) e!1126048))))

(assert (= tb!105891 b!1759403))

(declare-fun m!2174821 () Bool)

(assert (=> b!1759403 m!2174821))

(declare-fun m!2174823 () Bool)

(assert (=> tb!105891 m!2174823))

(assert (=> b!1759361 t!163909))

(declare-fun b_and!132559 () Bool)

(assert (= b_and!132549 (and (=> t!163909 result!127406) b_and!132559)))

(declare-fun t!163911 () Bool)

(declare-fun tb!105893 () Bool)

(assert (=> (and b!1759366 (= (toChars!4839 (transformation!3461 rule!422)) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163911) tb!105893))

(declare-fun result!127410 () Bool)

(assert (= result!127410 result!127406))

(assert (=> b!1759361 t!163911))

(declare-fun b_and!132561 () Bool)

(assert (= b_and!132553 (and (=> t!163911 result!127410) b_and!132561)))

(declare-fun tb!105895 () Bool)

(declare-fun t!163913 () Bool)

(assert (=> (and b!1759364 (= (toChars!4839 (transformation!3461 (rule!5477 token!523))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163913) tb!105895))

(declare-fun result!127412 () Bool)

(assert (= result!127412 result!127406))

(assert (=> b!1759361 t!163913))

(declare-fun b_and!132563 () Bool)

(assert (= b_and!132557 (and (=> t!163913 result!127412) b_and!132563)))

(declare-fun b_lambda!56877 () Bool)

(assert (=> (not b_lambda!56877) (not b!1759361)))

(declare-fun tb!105897 () Bool)

(declare-fun t!163915 () Bool)

(assert (=> (and b!1759370 (= (toValue!4980 (transformation!3461 (h!24772 rules!3447))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163915) tb!105897))

(declare-fun result!127414 () Bool)

(assert (=> tb!105897 (= result!127414 (inv!21 (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))

(declare-fun m!2174825 () Bool)

(assert (=> tb!105897 m!2174825))

(assert (=> b!1759361 t!163915))

(declare-fun b_and!132565 () Bool)

(assert (= b_and!132547 (and (=> t!163915 result!127414) b_and!132565)))

(declare-fun tb!105899 () Bool)

(declare-fun t!163917 () Bool)

(assert (=> (and b!1759366 (= (toValue!4980 (transformation!3461 rule!422)) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163917) tb!105899))

(declare-fun result!127418 () Bool)

(assert (= result!127418 result!127414))

(assert (=> b!1759361 t!163917))

(declare-fun b_and!132567 () Bool)

(assert (= b_and!132551 (and (=> t!163917 result!127418) b_and!132567)))

(declare-fun tb!105901 () Bool)

(declare-fun t!163919 () Bool)

(assert (=> (and b!1759364 (= (toValue!4980 (transformation!3461 (rule!5477 token!523))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163919) tb!105901))

(declare-fun result!127420 () Bool)

(assert (= result!127420 result!127414))

(assert (=> b!1759361 t!163919))

(declare-fun b_and!132569 () Bool)

(assert (= b_and!132555 (and (=> t!163919 result!127420) b_and!132569)))

(declare-fun b_lambda!56879 () Bool)

(assert (=> (not b_lambda!56879) (not b!1759365)))

(declare-fun tb!105903 () Bool)

(declare-fun t!163921 () Bool)

(assert (=> (and b!1759370 (= (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163921) tb!105903))

(declare-fun b!1759406 () Bool)

(declare-fun e!1126052 () Bool)

(declare-fun tp!499970 () Bool)

(assert (=> b!1759406 (= e!1126052 (and (inv!25154 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))) tp!499970))))

(declare-fun result!127422 () Bool)

(assert (=> tb!105903 (= result!127422 (and (inv!25155 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))) e!1126052))))

(assert (= tb!105903 b!1759406))

(declare-fun m!2174827 () Bool)

(assert (=> b!1759406 m!2174827))

(declare-fun m!2174829 () Bool)

(assert (=> tb!105903 m!2174829))

(assert (=> b!1759365 t!163921))

(declare-fun b_and!132571 () Bool)

(assert (= b_and!132559 (and (=> t!163921 result!127422) b_and!132571)))

(declare-fun t!163923 () Bool)

(declare-fun tb!105905 () Bool)

(assert (=> (and b!1759366 (= (toChars!4839 (transformation!3461 rule!422)) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163923) tb!105905))

(declare-fun result!127424 () Bool)

(assert (= result!127424 result!127422))

(assert (=> b!1759365 t!163923))

(declare-fun b_and!132573 () Bool)

(assert (= b_and!132561 (and (=> t!163923 result!127424) b_and!132573)))

(declare-fun t!163925 () Bool)

(declare-fun tb!105907 () Bool)

(assert (=> (and b!1759364 (= (toChars!4839 (transformation!3461 (rule!5477 token!523))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163925) tb!105907))

(declare-fun result!127426 () Bool)

(assert (= result!127426 result!127422))

(assert (=> b!1759365 t!163925))

(declare-fun b_and!132575 () Bool)

(assert (= b_and!132563 (and (=> t!163925 result!127426) b_and!132575)))

(declare-fun m!2174831 () Bool)

(assert (=> b!1759383 m!2174831))

(declare-fun m!2174833 () Bool)

(assert (=> b!1759383 m!2174833))

(declare-fun m!2174835 () Bool)

(assert (=> b!1759383 m!2174835))

(declare-fun m!2174837 () Bool)

(assert (=> b!1759368 m!2174837))

(declare-fun m!2174839 () Bool)

(assert (=> b!1759368 m!2174839))

(declare-fun m!2174841 () Bool)

(assert (=> b!1759368 m!2174841))

(declare-fun m!2174843 () Bool)

(assert (=> b!1759368 m!2174843))

(assert (=> b!1759368 m!2174839))

(declare-fun m!2174845 () Bool)

(assert (=> b!1759368 m!2174845))

(declare-fun m!2174847 () Bool)

(assert (=> b!1759374 m!2174847))

(declare-fun m!2174849 () Bool)

(assert (=> b!1759373 m!2174849))

(declare-fun m!2174851 () Bool)

(assert (=> b!1759373 m!2174851))

(declare-fun m!2174853 () Bool)

(assert (=> b!1759373 m!2174853))

(declare-fun m!2174855 () Bool)

(assert (=> b!1759373 m!2174855))

(declare-fun m!2174857 () Bool)

(assert (=> b!1759373 m!2174857))

(declare-fun m!2174859 () Bool)

(assert (=> b!1759373 m!2174859))

(declare-fun m!2174861 () Bool)

(assert (=> b!1759373 m!2174861))

(declare-fun m!2174863 () Bool)

(assert (=> b!1759373 m!2174863))

(declare-fun m!2174865 () Bool)

(assert (=> b!1759373 m!2174865))

(declare-fun m!2174867 () Bool)

(assert (=> b!1759373 m!2174867))

(declare-fun m!2174869 () Bool)

(assert (=> b!1759373 m!2174869))

(declare-fun m!2174871 () Bool)

(assert (=> b!1759373 m!2174871))

(declare-fun m!2174873 () Bool)

(assert (=> b!1759373 m!2174873))

(declare-fun m!2174875 () Bool)

(assert (=> b!1759373 m!2174875))

(declare-fun m!2174877 () Bool)

(assert (=> b!1759373 m!2174877))

(declare-fun m!2174879 () Bool)

(assert (=> b!1759378 m!2174879))

(declare-fun m!2174881 () Bool)

(assert (=> b!1759378 m!2174881))

(declare-fun m!2174883 () Bool)

(assert (=> b!1759378 m!2174883))

(assert (=> b!1759378 m!2174879))

(assert (=> b!1759378 m!2174883))

(declare-fun m!2174885 () Bool)

(assert (=> b!1759378 m!2174885))

(declare-fun m!2174887 () Bool)

(assert (=> b!1759369 m!2174887))

(declare-fun m!2174889 () Bool)

(assert (=> b!1759369 m!2174889))

(declare-fun m!2174891 () Bool)

(assert (=> b!1759369 m!2174891))

(assert (=> b!1759369 m!2174891))

(declare-fun m!2174893 () Bool)

(assert (=> b!1759369 m!2174893))

(declare-fun m!2174895 () Bool)

(assert (=> b!1759376 m!2174895))

(declare-fun m!2174897 () Bool)

(assert (=> b!1759376 m!2174897))

(declare-fun m!2174899 () Bool)

(assert (=> b!1759365 m!2174899))

(declare-fun m!2174901 () Bool)

(assert (=> b!1759384 m!2174901))

(declare-fun m!2174903 () Bool)

(assert (=> b!1759384 m!2174903))

(declare-fun m!2174905 () Bool)

(assert (=> b!1759367 m!2174905))

(declare-fun m!2174907 () Bool)

(assert (=> b!1759359 m!2174907))

(declare-fun m!2174909 () Bool)

(assert (=> b!1759359 m!2174909))

(declare-fun m!2174911 () Bool)

(assert (=> b!1759359 m!2174911))

(declare-fun m!2174913 () Bool)

(assert (=> b!1759359 m!2174913))

(declare-fun m!2174915 () Bool)

(assert (=> b!1759359 m!2174915))

(assert (=> b!1759359 m!2174907))

(declare-fun m!2174917 () Bool)

(assert (=> b!1759359 m!2174917))

(declare-fun m!2174919 () Bool)

(assert (=> b!1759386 m!2174919))

(declare-fun m!2174921 () Bool)

(assert (=> b!1759360 m!2174921))

(assert (=> b!1759382 m!2174869))

(assert (=> b!1759382 m!2174869))

(declare-fun m!2174923 () Bool)

(assert (=> b!1759382 m!2174923))

(assert (=> b!1759382 m!2174923))

(declare-fun m!2174925 () Bool)

(assert (=> b!1759382 m!2174925))

(declare-fun m!2174927 () Bool)

(assert (=> b!1759382 m!2174927))

(declare-fun m!2174929 () Bool)

(assert (=> b!1759377 m!2174929))

(declare-fun m!2174931 () Bool)

(assert (=> start!173942 m!2174931))

(declare-fun m!2174933 () Bool)

(assert (=> b!1759361 m!2174933))

(assert (=> b!1759361 m!2174933))

(declare-fun m!2174935 () Bool)

(assert (=> b!1759361 m!2174935))

(assert (=> b!1759361 m!2174935))

(declare-fun m!2174937 () Bool)

(assert (=> b!1759361 m!2174937))

(declare-fun m!2174939 () Bool)

(assert (=> b!1759361 m!2174939))

(declare-fun m!2174941 () Bool)

(assert (=> b!1759385 m!2174941))

(declare-fun m!2174943 () Bool)

(assert (=> b!1759363 m!2174943))

(declare-fun m!2174945 () Bool)

(assert (=> b!1759363 m!2174945))

(declare-fun m!2174947 () Bool)

(assert (=> b!1759362 m!2174947))

(declare-fun m!2174949 () Bool)

(assert (=> b!1759372 m!2174949))

(declare-fun m!2174951 () Bool)

(assert (=> b!1759379 m!2174951))

(declare-fun m!2174953 () Bool)

(assert (=> b!1759379 m!2174953))

(declare-fun m!2174955 () Bool)

(assert (=> b!1759375 m!2174955))

(check-sat (not b_lambda!56877) (not b_next!49353) (not b!1759378) tp_is_empty!7821 (not b!1759371) (not b!1759382) (not b!1759386) (not tb!105897) (not b!1759384) (not b!1759375) b_and!132571 (not b_next!49343) (not b!1759383) (not b!1759361) (not b!1759381) b_and!132575 (not start!173942) (not b_next!49351) (not b!1759373) b_and!132567 (not tb!105891) (not b!1759406) (not tb!105903) b_and!132565 (not b!1759385) (not b!1759362) (not b!1759379) (not b!1759360) (not b!1759363) (not b!1759359) (not b!1759377) (not b!1759367) b_and!132569 (not b_next!49345) b_and!132573 (not b!1759376) (not b_next!49347) (not b_lambda!56875) (not b_next!49349) (not b!1759374) (not b!1759369) (not b!1759403) (not b!1759368) (not b_lambda!56879) (not b!1759372))
(check-sat (not b_next!49353) b_and!132575 (not b_next!49351) b_and!132567 b_and!132565 b_and!132571 (not b_next!49343) b_and!132569 (not b_next!49345) b_and!132573 (not b_next!49347) (not b_next!49349))
(get-model)

(declare-fun d!537331 () Bool)

(assert (=> d!537331 (= (isEmpty!12218 (_2!10891 lt!679900)) ((_ is Nil!19370) (_2!10891 lt!679900)))))

(assert (=> b!1759360 d!537331))

(declare-fun d!537333 () Bool)

(declare-fun isBalanced!2012 (Conc!6443) Bool)

(assert (=> d!537333 (= (inv!25155 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))) (isBalanced!2012 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))))))

(declare-fun bs!403966 () Bool)

(assert (= bs!403966 d!537333))

(declare-fun m!2175047 () Bool)

(assert (=> bs!403966 m!2175047))

(assert (=> tb!105903 d!537333))

(declare-fun d!537335 () Bool)

(declare-fun list!7858 (Conc!6443) List!19440)

(assert (=> d!537335 (= (list!7855 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))) (list!7858 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))))

(declare-fun bs!403967 () Bool)

(assert (= bs!403967 d!537335))

(declare-fun m!2175049 () Bool)

(assert (=> bs!403967 m!2175049))

(assert (=> b!1759361 d!537335))

(declare-fun bs!403968 () Bool)

(declare-fun d!537337 () Bool)

(assert (= bs!403968 (and d!537337 b!1759384)))

(declare-fun lambda!70111 () Int)

(assert (=> bs!403968 (= lambda!70111 lambda!70108)))

(declare-fun b!1759508 () Bool)

(declare-fun e!1126111 () Bool)

(assert (=> b!1759508 (= e!1126111 true)))

(assert (=> d!537337 e!1126111))

(assert (= d!537337 b!1759508))

(assert (=> b!1759508 (< (dynLambda!9317 order!12267 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) (dynLambda!9318 order!12269 lambda!70111))))

(assert (=> b!1759508 (< (dynLambda!9319 order!12271 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) (dynLambda!9318 order!12269 lambda!70111))))

(assert (=> d!537337 (= (list!7855 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))) (list!7855 lt!679899))))

(declare-fun lt!679964 () Unit!33541)

(declare-fun ForallOf!312 (Int BalanceConc!12830) Unit!33541)

(assert (=> d!537337 (= lt!679964 (ForallOf!312 lambda!70111 lt!679899))))

(assert (=> d!537337 (= (lemmaSemiInverse!599 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) lt!679899) lt!679964)))

(declare-fun b_lambda!56883 () Bool)

(assert (=> (not b_lambda!56883) (not d!537337)))

(assert (=> d!537337 t!163909))

(declare-fun b_and!132583 () Bool)

(assert (= b_and!132571 (and (=> t!163909 result!127406) b_and!132583)))

(assert (=> d!537337 t!163911))

(declare-fun b_and!132585 () Bool)

(assert (= b_and!132573 (and (=> t!163911 result!127410) b_and!132585)))

(assert (=> d!537337 t!163913))

(declare-fun b_and!132587 () Bool)

(assert (= b_and!132575 (and (=> t!163913 result!127412) b_and!132587)))

(declare-fun b_lambda!56885 () Bool)

(assert (=> (not b_lambda!56885) (not d!537337)))

(assert (=> d!537337 t!163915))

(declare-fun b_and!132589 () Bool)

(assert (= b_and!132565 (and (=> t!163915 result!127414) b_and!132589)))

(assert (=> d!537337 t!163917))

(declare-fun b_and!132591 () Bool)

(assert (= b_and!132567 (and (=> t!163917 result!127418) b_and!132591)))

(assert (=> d!537337 t!163919))

(declare-fun b_and!132593 () Bool)

(assert (= b_and!132569 (and (=> t!163919 result!127420) b_and!132593)))

(assert (=> d!537337 m!2174933))

(assert (=> d!537337 m!2174877))

(assert (=> d!537337 m!2174935))

(assert (=> d!537337 m!2174937))

(assert (=> d!537337 m!2174933))

(assert (=> d!537337 m!2174935))

(declare-fun m!2175051 () Bool)

(assert (=> d!537337 m!2175051))

(assert (=> b!1759361 d!537337))

(declare-fun b!1759567 () Bool)

(declare-fun e!1126150 () Bool)

(declare-fun lt!680008 () Bool)

(assert (=> b!1759567 (= e!1126150 (not lt!680008))))

(declare-fun b!1759568 () Bool)

(declare-fun e!1126148 () Bool)

(declare-fun e!1126146 () Bool)

(assert (=> b!1759568 (= e!1126148 e!1126146)))

(declare-fun res!791878 () Bool)

(assert (=> b!1759568 (=> res!791878 e!1126146)))

(declare-fun call!110616 () Bool)

(assert (=> b!1759568 (= res!791878 call!110616)))

(declare-fun bm!110611 () Bool)

(assert (=> bm!110611 (= call!110616 (isEmpty!12218 (list!7855 (charsOf!2110 (_1!10891 lt!679914)))))))

(declare-fun d!537339 () Bool)

(declare-fun e!1126149 () Bool)

(assert (=> d!537339 e!1126149))

(declare-fun c!286682 () Bool)

(assert (=> d!537339 (= c!286682 ((_ is EmptyExpr!4789) (regex!3461 lt!679913)))))

(declare-fun e!1126151 () Bool)

(assert (=> d!537339 (= lt!680008 e!1126151)))

(declare-fun c!286680 () Bool)

(assert (=> d!537339 (= c!286680 (isEmpty!12218 (list!7855 (charsOf!2110 (_1!10891 lt!679914)))))))

(declare-fun validRegex!1933 (Regex!4789) Bool)

(assert (=> d!537339 (validRegex!1933 (regex!3461 lt!679913))))

(assert (=> d!537339 (= (matchR!2262 (regex!3461 lt!679913) (list!7855 (charsOf!2110 (_1!10891 lt!679914)))) lt!680008)))

(declare-fun b!1759569 () Bool)

(assert (=> b!1759569 (= e!1126146 (not (= (head!4072 (list!7855 (charsOf!2110 (_1!10891 lt!679914)))) (c!286648 (regex!3461 lt!679913)))))))

(declare-fun b!1759570 () Bool)

(declare-fun res!791881 () Bool)

(declare-fun e!1126152 () Bool)

(assert (=> b!1759570 (=> res!791881 e!1126152)))

(assert (=> b!1759570 (= res!791881 (not ((_ is ElementMatch!4789) (regex!3461 lt!679913))))))

(assert (=> b!1759570 (= e!1126150 e!1126152)))

(declare-fun b!1759571 () Bool)

(declare-fun nullable!1459 (Regex!4789) Bool)

(assert (=> b!1759571 (= e!1126151 (nullable!1459 (regex!3461 lt!679913)))))

(declare-fun b!1759572 () Bool)

(assert (=> b!1759572 (= e!1126152 e!1126148)))

(declare-fun res!791880 () Bool)

(assert (=> b!1759572 (=> (not res!791880) (not e!1126148))))

(assert (=> b!1759572 (= res!791880 (not lt!680008))))

(declare-fun b!1759573 () Bool)

(declare-fun e!1126147 () Bool)

(assert (=> b!1759573 (= e!1126147 (= (head!4072 (list!7855 (charsOf!2110 (_1!10891 lt!679914)))) (c!286648 (regex!3461 lt!679913))))))

(declare-fun b!1759574 () Bool)

(declare-fun res!791879 () Bool)

(assert (=> b!1759574 (=> (not res!791879) (not e!1126147))))

(assert (=> b!1759574 (= res!791879 (not call!110616))))

(declare-fun b!1759575 () Bool)

(declare-fun res!791875 () Bool)

(assert (=> b!1759575 (=> res!791875 e!1126146)))

(declare-fun tail!2631 (List!19440) List!19440)

(assert (=> b!1759575 (= res!791875 (not (isEmpty!12218 (tail!2631 (list!7855 (charsOf!2110 (_1!10891 lt!679914)))))))))

(declare-fun b!1759576 () Bool)

(assert (=> b!1759576 (= e!1126149 e!1126150)))

(declare-fun c!286681 () Bool)

(assert (=> b!1759576 (= c!286681 ((_ is EmptyLang!4789) (regex!3461 lt!679913)))))

(declare-fun b!1759577 () Bool)

(declare-fun res!791876 () Bool)

(assert (=> b!1759577 (=> res!791876 e!1126152)))

(assert (=> b!1759577 (= res!791876 e!1126147)))

(declare-fun res!791874 () Bool)

(assert (=> b!1759577 (=> (not res!791874) (not e!1126147))))

(assert (=> b!1759577 (= res!791874 lt!680008)))

(declare-fun b!1759578 () Bool)

(assert (=> b!1759578 (= e!1126149 (= lt!680008 call!110616))))

(declare-fun b!1759579 () Bool)

(declare-fun res!791877 () Bool)

(assert (=> b!1759579 (=> (not res!791877) (not e!1126147))))

(assert (=> b!1759579 (= res!791877 (isEmpty!12218 (tail!2631 (list!7855 (charsOf!2110 (_1!10891 lt!679914))))))))

(declare-fun b!1759580 () Bool)

(declare-fun derivativeStep!1228 (Regex!4789 C!9752) Regex!4789)

(assert (=> b!1759580 (= e!1126151 (matchR!2262 (derivativeStep!1228 (regex!3461 lt!679913) (head!4072 (list!7855 (charsOf!2110 (_1!10891 lt!679914))))) (tail!2631 (list!7855 (charsOf!2110 (_1!10891 lt!679914))))))))

(assert (= (and d!537339 c!286680) b!1759571))

(assert (= (and d!537339 (not c!286680)) b!1759580))

(assert (= (and d!537339 c!286682) b!1759578))

(assert (= (and d!537339 (not c!286682)) b!1759576))

(assert (= (and b!1759576 c!286681) b!1759567))

(assert (= (and b!1759576 (not c!286681)) b!1759570))

(assert (= (and b!1759570 (not res!791881)) b!1759577))

(assert (= (and b!1759577 res!791874) b!1759574))

(assert (= (and b!1759574 res!791879) b!1759579))

(assert (= (and b!1759579 res!791877) b!1759573))

(assert (= (and b!1759577 (not res!791876)) b!1759572))

(assert (= (and b!1759572 res!791880) b!1759568))

(assert (= (and b!1759568 (not res!791878)) b!1759575))

(assert (= (and b!1759575 (not res!791875)) b!1759569))

(assert (= (or b!1759578 b!1759568 b!1759574) bm!110611))

(assert (=> b!1759580 m!2174923))

(declare-fun m!2175131 () Bool)

(assert (=> b!1759580 m!2175131))

(assert (=> b!1759580 m!2175131))

(declare-fun m!2175133 () Bool)

(assert (=> b!1759580 m!2175133))

(assert (=> b!1759580 m!2174923))

(declare-fun m!2175135 () Bool)

(assert (=> b!1759580 m!2175135))

(assert (=> b!1759580 m!2175133))

(assert (=> b!1759580 m!2175135))

(declare-fun m!2175137 () Bool)

(assert (=> b!1759580 m!2175137))

(assert (=> d!537339 m!2174923))

(declare-fun m!2175139 () Bool)

(assert (=> d!537339 m!2175139))

(declare-fun m!2175141 () Bool)

(assert (=> d!537339 m!2175141))

(assert (=> bm!110611 m!2174923))

(assert (=> bm!110611 m!2175139))

(declare-fun m!2175143 () Bool)

(assert (=> b!1759571 m!2175143))

(assert (=> b!1759579 m!2174923))

(assert (=> b!1759579 m!2175135))

(assert (=> b!1759579 m!2175135))

(declare-fun m!2175145 () Bool)

(assert (=> b!1759579 m!2175145))

(assert (=> b!1759575 m!2174923))

(assert (=> b!1759575 m!2175135))

(assert (=> b!1759575 m!2175135))

(assert (=> b!1759575 m!2175145))

(assert (=> b!1759573 m!2174923))

(assert (=> b!1759573 m!2175131))

(assert (=> b!1759569 m!2174923))

(assert (=> b!1759569 m!2175131))

(assert (=> b!1759382 d!537339))

(declare-fun d!537355 () Bool)

(assert (=> d!537355 (= (list!7855 (charsOf!2110 (_1!10891 lt!679914))) (list!7858 (c!286649 (charsOf!2110 (_1!10891 lt!679914)))))))

(declare-fun bs!403971 () Bool)

(assert (= bs!403971 d!537355))

(declare-fun m!2175147 () Bool)

(assert (=> bs!403971 m!2175147))

(assert (=> b!1759382 d!537355))

(declare-fun d!537357 () Bool)

(declare-fun lt!680011 () BalanceConc!12830)

(assert (=> d!537357 (= (list!7855 lt!680011) (originalCharacters!4275 (_1!10891 lt!679914)))))

(assert (=> d!537357 (= lt!680011 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))))

(assert (=> d!537357 (= (charsOf!2110 (_1!10891 lt!679914)) lt!680011)))

(declare-fun b_lambda!56887 () Bool)

(assert (=> (not b_lambda!56887) (not d!537357)))

(assert (=> d!537357 t!163921))

(declare-fun b_and!132595 () Bool)

(assert (= b_and!132583 (and (=> t!163921 result!127422) b_and!132595)))

(assert (=> d!537357 t!163923))

(declare-fun b_and!132597 () Bool)

(assert (= b_and!132585 (and (=> t!163923 result!127424) b_and!132597)))

(assert (=> d!537357 t!163925))

(declare-fun b_and!132599 () Bool)

(assert (= b_and!132587 (and (=> t!163925 result!127426) b_and!132599)))

(declare-fun m!2175149 () Bool)

(assert (=> d!537357 m!2175149))

(assert (=> d!537357 m!2174899))

(assert (=> b!1759382 d!537357))

(declare-fun d!537359 () Bool)

(assert (=> d!537359 (= (get!5893 lt!679902) (v!25403 lt!679902))))

(assert (=> b!1759382 d!537359))

(declare-fun b!1759581 () Bool)

(declare-fun e!1126157 () Bool)

(declare-fun lt!680012 () Bool)

(assert (=> b!1759581 (= e!1126157 (not lt!680012))))

(declare-fun b!1759582 () Bool)

(declare-fun e!1126155 () Bool)

(declare-fun e!1126153 () Bool)

(assert (=> b!1759582 (= e!1126155 e!1126153)))

(declare-fun res!791886 () Bool)

(assert (=> b!1759582 (=> res!791886 e!1126153)))

(declare-fun call!110617 () Bool)

(assert (=> b!1759582 (= res!791886 call!110617)))

(declare-fun bm!110612 () Bool)

(assert (=> bm!110612 (= call!110617 (isEmpty!12218 lt!679905))))

(declare-fun d!537361 () Bool)

(declare-fun e!1126156 () Bool)

(assert (=> d!537361 e!1126156))

(declare-fun c!286685 () Bool)

(assert (=> d!537361 (= c!286685 ((_ is EmptyExpr!4789) (regex!3461 rule!422)))))

(declare-fun e!1126158 () Bool)

(assert (=> d!537361 (= lt!680012 e!1126158)))

(declare-fun c!286683 () Bool)

(assert (=> d!537361 (= c!286683 (isEmpty!12218 lt!679905))))

(assert (=> d!537361 (validRegex!1933 (regex!3461 rule!422))))

(assert (=> d!537361 (= (matchR!2262 (regex!3461 rule!422) lt!679905) lt!680012)))

(declare-fun b!1759583 () Bool)

(assert (=> b!1759583 (= e!1126153 (not (= (head!4072 lt!679905) (c!286648 (regex!3461 rule!422)))))))

(declare-fun b!1759584 () Bool)

(declare-fun res!791889 () Bool)

(declare-fun e!1126159 () Bool)

(assert (=> b!1759584 (=> res!791889 e!1126159)))

(assert (=> b!1759584 (= res!791889 (not ((_ is ElementMatch!4789) (regex!3461 rule!422))))))

(assert (=> b!1759584 (= e!1126157 e!1126159)))

(declare-fun b!1759585 () Bool)

(assert (=> b!1759585 (= e!1126158 (nullable!1459 (regex!3461 rule!422)))))

(declare-fun b!1759586 () Bool)

(assert (=> b!1759586 (= e!1126159 e!1126155)))

(declare-fun res!791888 () Bool)

(assert (=> b!1759586 (=> (not res!791888) (not e!1126155))))

(assert (=> b!1759586 (= res!791888 (not lt!680012))))

(declare-fun b!1759587 () Bool)

(declare-fun e!1126154 () Bool)

(assert (=> b!1759587 (= e!1126154 (= (head!4072 lt!679905) (c!286648 (regex!3461 rule!422))))))

(declare-fun b!1759588 () Bool)

(declare-fun res!791887 () Bool)

(assert (=> b!1759588 (=> (not res!791887) (not e!1126154))))

(assert (=> b!1759588 (= res!791887 (not call!110617))))

(declare-fun b!1759589 () Bool)

(declare-fun res!791883 () Bool)

(assert (=> b!1759589 (=> res!791883 e!1126153)))

(assert (=> b!1759589 (= res!791883 (not (isEmpty!12218 (tail!2631 lt!679905))))))

(declare-fun b!1759590 () Bool)

(assert (=> b!1759590 (= e!1126156 e!1126157)))

(declare-fun c!286684 () Bool)

(assert (=> b!1759590 (= c!286684 ((_ is EmptyLang!4789) (regex!3461 rule!422)))))

(declare-fun b!1759591 () Bool)

(declare-fun res!791884 () Bool)

(assert (=> b!1759591 (=> res!791884 e!1126159)))

(assert (=> b!1759591 (= res!791884 e!1126154)))

(declare-fun res!791882 () Bool)

(assert (=> b!1759591 (=> (not res!791882) (not e!1126154))))

(assert (=> b!1759591 (= res!791882 lt!680012)))

(declare-fun b!1759592 () Bool)

(assert (=> b!1759592 (= e!1126156 (= lt!680012 call!110617))))

(declare-fun b!1759593 () Bool)

(declare-fun res!791885 () Bool)

(assert (=> b!1759593 (=> (not res!791885) (not e!1126154))))

(assert (=> b!1759593 (= res!791885 (isEmpty!12218 (tail!2631 lt!679905)))))

(declare-fun b!1759594 () Bool)

(assert (=> b!1759594 (= e!1126158 (matchR!2262 (derivativeStep!1228 (regex!3461 rule!422) (head!4072 lt!679905)) (tail!2631 lt!679905)))))

(assert (= (and d!537361 c!286683) b!1759585))

(assert (= (and d!537361 (not c!286683)) b!1759594))

(assert (= (and d!537361 c!286685) b!1759592))

(assert (= (and d!537361 (not c!286685)) b!1759590))

(assert (= (and b!1759590 c!286684) b!1759581))

(assert (= (and b!1759590 (not c!286684)) b!1759584))

(assert (= (and b!1759584 (not res!791889)) b!1759591))

(assert (= (and b!1759591 res!791882) b!1759588))

(assert (= (and b!1759588 res!791887) b!1759593))

(assert (= (and b!1759593 res!791885) b!1759587))

(assert (= (and b!1759591 (not res!791884)) b!1759586))

(assert (= (and b!1759586 res!791888) b!1759582))

(assert (= (and b!1759582 (not res!791886)) b!1759589))

(assert (= (and b!1759589 (not res!791883)) b!1759583))

(assert (= (or b!1759592 b!1759582 b!1759588) bm!110612))

(declare-fun m!2175151 () Bool)

(assert (=> b!1759594 m!2175151))

(assert (=> b!1759594 m!2175151))

(declare-fun m!2175153 () Bool)

(assert (=> b!1759594 m!2175153))

(declare-fun m!2175155 () Bool)

(assert (=> b!1759594 m!2175155))

(assert (=> b!1759594 m!2175153))

(assert (=> b!1759594 m!2175155))

(declare-fun m!2175157 () Bool)

(assert (=> b!1759594 m!2175157))

(declare-fun m!2175159 () Bool)

(assert (=> d!537361 m!2175159))

(declare-fun m!2175161 () Bool)

(assert (=> d!537361 m!2175161))

(assert (=> bm!110612 m!2175159))

(declare-fun m!2175163 () Bool)

(assert (=> b!1759585 m!2175163))

(assert (=> b!1759593 m!2175155))

(assert (=> b!1759593 m!2175155))

(declare-fun m!2175165 () Bool)

(assert (=> b!1759593 m!2175165))

(assert (=> b!1759589 m!2175155))

(assert (=> b!1759589 m!2175155))

(assert (=> b!1759589 m!2175165))

(assert (=> b!1759587 m!2175151))

(assert (=> b!1759583 m!2175151))

(assert (=> b!1759383 d!537361))

(declare-fun d!537363 () Bool)

(declare-fun res!791894 () Bool)

(declare-fun e!1126162 () Bool)

(assert (=> d!537363 (=> (not res!791894) (not e!1126162))))

(assert (=> d!537363 (= res!791894 (validRegex!1933 (regex!3461 rule!422)))))

(assert (=> d!537363 (= (ruleValid!959 thiss!24550 rule!422) e!1126162)))

(declare-fun b!1759599 () Bool)

(declare-fun res!791895 () Bool)

(assert (=> b!1759599 (=> (not res!791895) (not e!1126162))))

(assert (=> b!1759599 (= res!791895 (not (nullable!1459 (regex!3461 rule!422))))))

(declare-fun b!1759600 () Bool)

(assert (=> b!1759600 (= e!1126162 (not (= (tag!3825 rule!422) (String!22088 ""))))))

(assert (= (and d!537363 res!791894) b!1759599))

(assert (= (and b!1759599 res!791895) b!1759600))

(assert (=> d!537363 m!2175161))

(assert (=> b!1759599 m!2175163))

(assert (=> b!1759383 d!537363))

(declare-fun d!537365 () Bool)

(assert (=> d!537365 (ruleValid!959 thiss!24550 rule!422)))

(declare-fun lt!680015 () Unit!33541)

(declare-fun choose!10886 (LexerInterface!3090 Rule!6722 List!19441) Unit!33541)

(assert (=> d!537365 (= lt!680015 (choose!10886 thiss!24550 rule!422 rules!3447))))

(assert (=> d!537365 (contains!3489 rules!3447 rule!422)))

(assert (=> d!537365 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!482 thiss!24550 rule!422 rules!3447) lt!680015)))

(declare-fun bs!403972 () Bool)

(assert (= bs!403972 d!537365))

(assert (=> bs!403972 m!2174833))

(declare-fun m!2175167 () Bool)

(assert (=> bs!403972 m!2175167))

(assert (=> bs!403972 m!2174941))

(assert (=> b!1759383 d!537365))

(declare-fun d!537367 () Bool)

(declare-fun res!791912 () Bool)

(declare-fun e!1126171 () Bool)

(assert (=> d!537367 (=> (not res!791912) (not e!1126171))))

(declare-fun rulesValid!1299 (LexerInterface!3090 List!19441) Bool)

(assert (=> d!537367 (= res!791912 (rulesValid!1299 thiss!24550 rules!3447))))

(assert (=> d!537367 (= (rulesInvariant!2759 thiss!24550 rules!3447) e!1126171)))

(declare-fun b!1759621 () Bool)

(declare-datatypes ((List!19443 0))(
  ( (Nil!19373) (Cons!19373 (h!24774 String!22087) (t!163990 List!19443)) )
))
(declare-fun noDuplicateTag!1299 (LexerInterface!3090 List!19441 List!19443) Bool)

(assert (=> b!1759621 (= e!1126171 (noDuplicateTag!1299 thiss!24550 rules!3447 Nil!19373))))

(assert (= (and d!537367 res!791912) b!1759621))

(declare-fun m!2175169 () Bool)

(assert (=> d!537367 m!2175169))

(declare-fun m!2175171 () Bool)

(assert (=> b!1759621 m!2175171))

(assert (=> b!1759362 d!537367))

(declare-fun d!537369 () Bool)

(assert (=> d!537369 (= (inv!25147 (tag!3825 (h!24772 rules!3447))) (= (mod (str.len (value!108310 (tag!3825 (h!24772 rules!3447)))) 2) 0))))

(assert (=> b!1759363 d!537369))

(declare-fun d!537371 () Bool)

(declare-fun res!791922 () Bool)

(declare-fun e!1126177 () Bool)

(assert (=> d!537371 (=> (not res!791922) (not e!1126177))))

(declare-fun semiInverseModEq!1374 (Int Int) Bool)

(assert (=> d!537371 (= res!791922 (semiInverseModEq!1374 (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toValue!4980 (transformation!3461 (h!24772 rules!3447)))))))

(assert (=> d!537371 (= (inv!25152 (transformation!3461 (h!24772 rules!3447))) e!1126177)))

(declare-fun b!1759633 () Bool)

(declare-fun equivClasses!1315 (Int Int) Bool)

(assert (=> b!1759633 (= e!1126177 (equivClasses!1315 (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toValue!4980 (transformation!3461 (h!24772 rules!3447)))))))

(assert (= (and d!537371 res!791922) b!1759633))

(declare-fun m!2175173 () Bool)

(assert (=> d!537371 m!2175173))

(declare-fun m!2175175 () Bool)

(assert (=> b!1759633 m!2175175))

(assert (=> b!1759363 d!537371))

(declare-fun d!537373 () Bool)

(declare-fun choose!10887 (Int) Bool)

(assert (=> d!537373 (= (Forall!828 lambda!70108) (choose!10887 lambda!70108))))

(declare-fun bs!403973 () Bool)

(assert (= bs!403973 d!537373))

(declare-fun m!2175203 () Bool)

(assert (=> bs!403973 m!2175203))

(assert (=> b!1759384 d!537373))

(declare-fun d!537375 () Bool)

(declare-fun e!1126180 () Bool)

(assert (=> d!537375 e!1126180))

(declare-fun res!791925 () Bool)

(assert (=> d!537375 (=> (not res!791925) (not e!1126180))))

(assert (=> d!537375 (= res!791925 (semiInverseModEq!1374 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))))))

(declare-fun Unit!33545 () Unit!33541)

(assert (=> d!537375 (= (lemmaInv!660 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) Unit!33545)))

(declare-fun b!1759636 () Bool)

(assert (=> b!1759636 (= e!1126180 (equivClasses!1315 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))))))

(assert (= (and d!537375 res!791925) b!1759636))

(declare-fun m!2175213 () Bool)

(assert (=> d!537375 m!2175213))

(declare-fun m!2175215 () Bool)

(assert (=> b!1759636 m!2175215))

(assert (=> b!1759384 d!537375))

(declare-fun d!537381 () Bool)

(declare-fun lt!680036 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2795 (List!19441) (InoxSet Rule!6722))

(assert (=> d!537381 (= lt!680036 (select (content!2795 rules!3447) rule!422))))

(declare-fun e!1126189 () Bool)

(assert (=> d!537381 (= lt!680036 e!1126189)))

(declare-fun res!791931 () Bool)

(assert (=> d!537381 (=> (not res!791931) (not e!1126189))))

(assert (=> d!537381 (= res!791931 ((_ is Cons!19371) rules!3447))))

(assert (=> d!537381 (= (contains!3489 rules!3447 rule!422) lt!680036)))

(declare-fun b!1759646 () Bool)

(declare-fun e!1126188 () Bool)

(assert (=> b!1759646 (= e!1126189 e!1126188)))

(declare-fun res!791930 () Bool)

(assert (=> b!1759646 (=> res!791930 e!1126188)))

(assert (=> b!1759646 (= res!791930 (= (h!24772 rules!3447) rule!422))))

(declare-fun b!1759647 () Bool)

(assert (=> b!1759647 (= e!1126188 (contains!3489 (t!163928 rules!3447) rule!422))))

(assert (= (and d!537381 res!791931) b!1759646))

(assert (= (and b!1759646 (not res!791930)) b!1759647))

(declare-fun m!2175219 () Bool)

(assert (=> d!537381 m!2175219))

(declare-fun m!2175221 () Bool)

(assert (=> d!537381 m!2175221))

(declare-fun m!2175223 () Bool)

(assert (=> b!1759647 m!2175223))

(assert (=> b!1759385 d!537381))

(declare-fun d!537385 () Bool)

(assert (=> d!537385 (= (inv!25155 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))) (isBalanced!2012 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))))

(declare-fun bs!403976 () Bool)

(assert (= bs!403976 d!537385))

(declare-fun m!2175225 () Bool)

(assert (=> bs!403976 m!2175225))

(assert (=> tb!105891 d!537385))

(declare-fun d!537387 () Bool)

(declare-fun c!286695 () Bool)

(assert (=> d!537387 (= c!286695 ((_ is Node!6443) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))))))

(declare-fun e!1126200 () Bool)

(assert (=> d!537387 (= (inv!25154 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))) e!1126200)))

(declare-fun b!1759663 () Bool)

(declare-fun inv!25158 (Conc!6443) Bool)

(assert (=> b!1759663 (= e!1126200 (inv!25158 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))))))

(declare-fun b!1759664 () Bool)

(declare-fun e!1126201 () Bool)

(assert (=> b!1759664 (= e!1126200 e!1126201)))

(declare-fun res!791937 () Bool)

(assert (=> b!1759664 (= res!791937 (not ((_ is Leaf!9394) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))))))))

(assert (=> b!1759664 (=> res!791937 e!1126201)))

(declare-fun b!1759665 () Bool)

(declare-fun inv!25159 (Conc!6443) Bool)

(assert (=> b!1759665 (= e!1126201 (inv!25159 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))))))

(assert (= (and d!537387 c!286695) b!1759663))

(assert (= (and d!537387 (not c!286695)) b!1759664))

(assert (= (and b!1759664 (not res!791937)) b!1759665))

(declare-fun m!2175231 () Bool)

(assert (=> b!1759663 m!2175231))

(declare-fun m!2175233 () Bool)

(assert (=> b!1759665 m!2175233))

(assert (=> b!1759406 d!537387))

(declare-fun d!537391 () Bool)

(assert (=> d!537391 (= (isEmpty!12219 rules!3447) ((_ is Nil!19371) rules!3447))))

(assert (=> b!1759386 d!537391))

(declare-fun b!1759685 () Bool)

(declare-fun e!1126211 () Bool)

(declare-fun inv!17 (TokenValue!3551) Bool)

(assert (=> b!1759685 (= e!1126211 (inv!17 (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))

(declare-fun d!537395 () Bool)

(declare-fun c!286702 () Bool)

(assert (=> d!537395 (= c!286702 ((_ is IntegerValue!10653) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))

(declare-fun e!1126212 () Bool)

(assert (=> d!537395 (= (inv!21 (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)) e!1126212)))

(declare-fun b!1759686 () Bool)

(assert (=> b!1759686 (= e!1126212 e!1126211)))

(declare-fun c!286701 () Bool)

(assert (=> b!1759686 (= c!286701 ((_ is IntegerValue!10654) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))

(declare-fun b!1759687 () Bool)

(declare-fun inv!16 (TokenValue!3551) Bool)

(assert (=> b!1759687 (= e!1126212 (inv!16 (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))

(declare-fun b!1759688 () Bool)

(declare-fun e!1126213 () Bool)

(declare-fun inv!15 (TokenValue!3551) Bool)

(assert (=> b!1759688 (= e!1126213 (inv!15 (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))

(declare-fun b!1759689 () Bool)

(declare-fun res!791947 () Bool)

(assert (=> b!1759689 (=> res!791947 e!1126213)))

(assert (=> b!1759689 (= res!791947 (not ((_ is IntegerValue!10655) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))))

(assert (=> b!1759689 (= e!1126211 e!1126213)))

(assert (= (and d!537395 c!286702) b!1759687))

(assert (= (and d!537395 (not c!286702)) b!1759686))

(assert (= (and b!1759686 c!286701) b!1759685))

(assert (= (and b!1759686 (not c!286701)) b!1759689))

(assert (= (and b!1759689 (not res!791947)) b!1759688))

(declare-fun m!2175271 () Bool)

(assert (=> b!1759685 m!2175271))

(declare-fun m!2175273 () Bool)

(assert (=> b!1759687 m!2175273))

(declare-fun m!2175275 () Bool)

(assert (=> b!1759688 m!2175275))

(assert (=> tb!105897 d!537395))

(declare-fun b!1759690 () Bool)

(declare-fun e!1126214 () Bool)

(assert (=> b!1759690 (= e!1126214 (inv!17 (value!108311 token!523)))))

(declare-fun d!537403 () Bool)

(declare-fun c!286704 () Bool)

(assert (=> d!537403 (= c!286704 ((_ is IntegerValue!10653) (value!108311 token!523)))))

(declare-fun e!1126215 () Bool)

(assert (=> d!537403 (= (inv!21 (value!108311 token!523)) e!1126215)))

(declare-fun b!1759691 () Bool)

(assert (=> b!1759691 (= e!1126215 e!1126214)))

(declare-fun c!286703 () Bool)

(assert (=> b!1759691 (= c!286703 ((_ is IntegerValue!10654) (value!108311 token!523)))))

(declare-fun b!1759692 () Bool)

(assert (=> b!1759692 (= e!1126215 (inv!16 (value!108311 token!523)))))

(declare-fun b!1759693 () Bool)

(declare-fun e!1126216 () Bool)

(assert (=> b!1759693 (= e!1126216 (inv!15 (value!108311 token!523)))))

(declare-fun b!1759694 () Bool)

(declare-fun res!791948 () Bool)

(assert (=> b!1759694 (=> res!791948 e!1126216)))

(assert (=> b!1759694 (= res!791948 (not ((_ is IntegerValue!10655) (value!108311 token!523))))))

(assert (=> b!1759694 (= e!1126214 e!1126216)))

(assert (= (and d!537403 c!286704) b!1759692))

(assert (= (and d!537403 (not c!286704)) b!1759691))

(assert (= (and b!1759691 c!286703) b!1759690))

(assert (= (and b!1759691 (not c!286703)) b!1759694))

(assert (= (and b!1759694 (not res!791948)) b!1759693))

(declare-fun m!2175277 () Bool)

(assert (=> b!1759690 m!2175277))

(declare-fun m!2175279 () Bool)

(assert (=> b!1759692 m!2175279))

(declare-fun m!2175281 () Bool)

(assert (=> b!1759693 m!2175281))

(assert (=> b!1759367 d!537403))

(declare-fun d!537405 () Bool)

(declare-fun lt!680046 () Int)

(assert (=> d!537405 (= lt!680046 (size!15386 (list!7855 lt!679899)))))

(declare-fun size!15388 (Conc!6443) Int)

(assert (=> d!537405 (= lt!680046 (size!15388 (c!286649 lt!679899)))))

(assert (=> d!537405 (= (size!15387 lt!679899) lt!680046)))

(declare-fun bs!403980 () Bool)

(assert (= bs!403980 d!537405))

(assert (=> bs!403980 m!2174877))

(assert (=> bs!403980 m!2174877))

(declare-fun m!2175303 () Bool)

(assert (=> bs!403980 m!2175303))

(declare-fun m!2175307 () Bool)

(assert (=> bs!403980 m!2175307))

(assert (=> b!1759368 d!537405))

(declare-fun d!537409 () Bool)

(assert (=> d!537409 (= (size!15385 (_1!10891 lt!679914)) (size!15386 (originalCharacters!4275 (_1!10891 lt!679914))))))

(declare-fun Unit!33546 () Unit!33541)

(assert (=> d!537409 (= (lemmaCharactersSize!519 (_1!10891 lt!679914)) Unit!33546)))

(declare-fun bs!403982 () Bool)

(assert (= bs!403982 d!537409))

(declare-fun m!2175313 () Bool)

(assert (=> bs!403982 m!2175313))

(assert (=> b!1759368 d!537409))

(declare-fun b!1759716 () Bool)

(declare-fun e!1126229 () Bool)

(assert (=> b!1759716 (= e!1126229 true)))

(declare-fun d!537417 () Bool)

(assert (=> d!537417 e!1126229))

(assert (= d!537417 b!1759716))

(declare-fun lambda!70117 () Int)

(declare-fun order!12273 () Int)

(declare-fun dynLambda!9322 (Int Int) Int)

(assert (=> b!1759716 (< (dynLambda!9317 order!12267 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) (dynLambda!9322 order!12273 lambda!70117))))

(assert (=> b!1759716 (< (dynLambda!9319 order!12271 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) (dynLambda!9322 order!12273 lambda!70117))))

(assert (=> d!537417 (= (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (seqFromList!2430 (originalCharacters!4275 (_1!10891 lt!679914)))))))

(declare-fun lt!680049 () Unit!33541)

(declare-fun Forall2of!120 (Int BalanceConc!12830 BalanceConc!12830) Unit!33541)

(assert (=> d!537417 (= lt!680049 (Forall2of!120 lambda!70117 lt!679899 (seqFromList!2430 (originalCharacters!4275 (_1!10891 lt!679914)))))))

(assert (=> d!537417 (= (list!7855 lt!679899) (list!7855 (seqFromList!2430 (originalCharacters!4275 (_1!10891 lt!679914)))))))

(assert (=> d!537417 (= (lemmaEqSameImage!372 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) lt!679899 (seqFromList!2430 (originalCharacters!4275 (_1!10891 lt!679914)))) lt!680049)))

(declare-fun b_lambda!56895 () Bool)

(assert (=> (not b_lambda!56895) (not d!537417)))

(assert (=> d!537417 t!163915))

(declare-fun b_and!132619 () Bool)

(assert (= b_and!132589 (and (=> t!163915 result!127414) b_and!132619)))

(assert (=> d!537417 t!163917))

(declare-fun b_and!132621 () Bool)

(assert (= b_and!132591 (and (=> t!163917 result!127418) b_and!132621)))

(assert (=> d!537417 t!163919))

(declare-fun b_and!132623 () Bool)

(assert (= b_and!132593 (and (=> t!163919 result!127420) b_and!132623)))

(declare-fun b_lambda!56897 () Bool)

(assert (=> (not b_lambda!56897) (not d!537417)))

(declare-fun tb!105915 () Bool)

(declare-fun t!163936 () Bool)

(assert (=> (and b!1759370 (= (toValue!4980 (transformation!3461 (h!24772 rules!3447))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163936) tb!105915))

(declare-fun result!127434 () Bool)

(assert (=> tb!105915 (= result!127434 (inv!21 (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (seqFromList!2430 (originalCharacters!4275 (_1!10891 lt!679914))))))))

(declare-fun m!2175315 () Bool)

(assert (=> tb!105915 m!2175315))

(assert (=> d!537417 t!163936))

(declare-fun b_and!132625 () Bool)

(assert (= b_and!132619 (and (=> t!163936 result!127434) b_and!132625)))

(declare-fun tb!105917 () Bool)

(declare-fun t!163938 () Bool)

(assert (=> (and b!1759366 (= (toValue!4980 (transformation!3461 rule!422)) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163938) tb!105917))

(declare-fun result!127436 () Bool)

(assert (= result!127436 result!127434))

(assert (=> d!537417 t!163938))

(declare-fun b_and!132627 () Bool)

(assert (= b_and!132621 (and (=> t!163938 result!127436) b_and!132627)))

(declare-fun t!163940 () Bool)

(declare-fun tb!105919 () Bool)

(assert (=> (and b!1759364 (= (toValue!4980 (transformation!3461 (rule!5477 token!523))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163940) tb!105919))

(declare-fun result!127438 () Bool)

(assert (= result!127438 result!127434))

(assert (=> d!537417 t!163940))

(declare-fun b_and!132629 () Bool)

(assert (= b_and!132623 (and (=> t!163940 result!127438) b_and!132629)))

(assert (=> d!537417 m!2174933))

(assert (=> d!537417 m!2174839))

(declare-fun m!2175317 () Bool)

(assert (=> d!537417 m!2175317))

(assert (=> d!537417 m!2174839))

(declare-fun m!2175319 () Bool)

(assert (=> d!537417 m!2175319))

(assert (=> d!537417 m!2174839))

(declare-fun m!2175321 () Bool)

(assert (=> d!537417 m!2175321))

(assert (=> d!537417 m!2174877))

(assert (=> b!1759368 d!537417))

(declare-fun d!537421 () Bool)

(assert (=> d!537421 (= (apply!5261 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) lt!679899) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))

(declare-fun b_lambda!56899 () Bool)

(assert (=> (not b_lambda!56899) (not d!537421)))

(assert (=> d!537421 t!163915))

(declare-fun b_and!132631 () Bool)

(assert (= b_and!132625 (and (=> t!163915 result!127414) b_and!132631)))

(assert (=> d!537421 t!163917))

(declare-fun b_and!132633 () Bool)

(assert (= b_and!132627 (and (=> t!163917 result!127418) b_and!132633)))

(assert (=> d!537421 t!163919))

(declare-fun b_and!132635 () Bool)

(assert (= b_and!132629 (and (=> t!163919 result!127420) b_and!132635)))

(assert (=> d!537421 m!2174933))

(assert (=> b!1759368 d!537421))

(declare-fun d!537423 () Bool)

(declare-fun fromListB!1108 (List!19440) BalanceConc!12830)

(assert (=> d!537423 (= (seqFromList!2430 (originalCharacters!4275 (_1!10891 lt!679914))) (fromListB!1108 (originalCharacters!4275 (_1!10891 lt!679914))))))

(declare-fun bs!403983 () Bool)

(assert (= bs!403983 d!537423))

(declare-fun m!2175323 () Bool)

(assert (=> bs!403983 m!2175323))

(assert (=> b!1759368 d!537423))

(declare-fun d!537425 () Bool)

(declare-fun isEmpty!12222 (Option!3944) Bool)

(assert (=> d!537425 (= (isDefined!3287 lt!679909) (not (isEmpty!12222 lt!679909)))))

(declare-fun bs!403984 () Bool)

(assert (= bs!403984 d!537425))

(declare-fun m!2175325 () Bool)

(assert (=> bs!403984 m!2175325))

(assert (=> b!1759369 d!537425))

(declare-fun b!1759735 () Bool)

(declare-fun res!791977 () Bool)

(declare-fun e!1126237 () Bool)

(assert (=> b!1759735 (=> (not res!791977) (not e!1126237))))

(declare-fun lt!680065 () Option!3944)

(assert (=> b!1759735 (= res!791977 (= (value!108311 (_1!10891 (get!5892 lt!680065))) (apply!5261 (transformation!3461 (rule!5477 (_1!10891 (get!5892 lt!680065)))) (seqFromList!2430 (originalCharacters!4275 (_1!10891 (get!5892 lt!680065)))))))))

(declare-fun d!537427 () Bool)

(declare-fun e!1126239 () Bool)

(assert (=> d!537427 e!1126239))

(declare-fun res!791978 () Bool)

(assert (=> d!537427 (=> res!791978 e!1126239)))

(assert (=> d!537427 (= res!791978 (isEmpty!12222 lt!680065))))

(declare-fun e!1126238 () Option!3944)

(assert (=> d!537427 (= lt!680065 e!1126238)))

(declare-fun c!286710 () Bool)

(assert (=> d!537427 (= c!286710 (and ((_ is Cons!19371) rules!3447) ((_ is Nil!19371) (t!163928 rules!3447))))))

(declare-fun lt!680063 () Unit!33541)

(declare-fun lt!680066 () Unit!33541)

(assert (=> d!537427 (= lt!680063 lt!680066)))

(assert (=> d!537427 (isPrefix!1701 lt!679905 lt!679905)))

(declare-fun lemmaIsPrefixRefl!1126 (List!19440 List!19440) Unit!33541)

(assert (=> d!537427 (= lt!680066 (lemmaIsPrefixRefl!1126 lt!679905 lt!679905))))

(declare-fun rulesValidInductive!1164 (LexerInterface!3090 List!19441) Bool)

(assert (=> d!537427 (rulesValidInductive!1164 thiss!24550 rules!3447)))

(assert (=> d!537427 (= (maxPrefix!1644 thiss!24550 rules!3447 lt!679905) lt!680065)))

(declare-fun b!1759736 () Bool)

(declare-fun call!110625 () Option!3944)

(assert (=> b!1759736 (= e!1126238 call!110625)))

(declare-fun b!1759737 () Bool)

(declare-fun res!791974 () Bool)

(assert (=> b!1759737 (=> (not res!791974) (not e!1126237))))

(assert (=> b!1759737 (= res!791974 (= (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680065)))) (originalCharacters!4275 (_1!10891 (get!5892 lt!680065)))))))

(declare-fun b!1759738 () Bool)

(declare-fun res!791975 () Bool)

(assert (=> b!1759738 (=> (not res!791975) (not e!1126237))))

(assert (=> b!1759738 (= res!791975 (= (++!5285 (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680065)))) (_2!10891 (get!5892 lt!680065))) lt!679905))))

(declare-fun b!1759739 () Bool)

(declare-fun lt!680064 () Option!3944)

(declare-fun lt!680067 () Option!3944)

(assert (=> b!1759739 (= e!1126238 (ite (and ((_ is None!3943) lt!680064) ((_ is None!3943) lt!680067)) None!3943 (ite ((_ is None!3943) lt!680067) lt!680064 (ite ((_ is None!3943) lt!680064) lt!680067 (ite (>= (size!15385 (_1!10891 (v!25402 lt!680064))) (size!15385 (_1!10891 (v!25402 lt!680067)))) lt!680064 lt!680067)))))))

(assert (=> b!1759739 (= lt!680064 call!110625)))

(assert (=> b!1759739 (= lt!680067 (maxPrefix!1644 thiss!24550 (t!163928 rules!3447) lt!679905))))

(declare-fun b!1759740 () Bool)

(declare-fun res!791979 () Bool)

(assert (=> b!1759740 (=> (not res!791979) (not e!1126237))))

(assert (=> b!1759740 (= res!791979 (matchR!2262 (regex!3461 (rule!5477 (_1!10891 (get!5892 lt!680065)))) (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680065))))))))

(declare-fun b!1759741 () Bool)

(declare-fun res!791976 () Bool)

(assert (=> b!1759741 (=> (not res!791976) (not e!1126237))))

(assert (=> b!1759741 (= res!791976 (< (size!15386 (_2!10891 (get!5892 lt!680065))) (size!15386 lt!679905)))))

(declare-fun b!1759742 () Bool)

(assert (=> b!1759742 (= e!1126239 e!1126237)))

(declare-fun res!791973 () Bool)

(assert (=> b!1759742 (=> (not res!791973) (not e!1126237))))

(assert (=> b!1759742 (= res!791973 (isDefined!3287 lt!680065))))

(declare-fun bm!110620 () Bool)

(assert (=> bm!110620 (= call!110625 (maxPrefixOneRule!1013 thiss!24550 (h!24772 rules!3447) lt!679905))))

(declare-fun b!1759743 () Bool)

(assert (=> b!1759743 (= e!1126237 (contains!3489 rules!3447 (rule!5477 (_1!10891 (get!5892 lt!680065)))))))

(assert (= (and d!537427 c!286710) b!1759736))

(assert (= (and d!537427 (not c!286710)) b!1759739))

(assert (= (or b!1759736 b!1759739) bm!110620))

(assert (= (and d!537427 (not res!791978)) b!1759742))

(assert (= (and b!1759742 res!791973) b!1759737))

(assert (= (and b!1759737 res!791974) b!1759741))

(assert (= (and b!1759741 res!791976) b!1759738))

(assert (= (and b!1759738 res!791975) b!1759735))

(assert (= (and b!1759735 res!791977) b!1759740))

(assert (= (and b!1759740 res!791979) b!1759743))

(declare-fun m!2175329 () Bool)

(assert (=> b!1759735 m!2175329))

(declare-fun m!2175331 () Bool)

(assert (=> b!1759735 m!2175331))

(assert (=> b!1759735 m!2175331))

(declare-fun m!2175333 () Bool)

(assert (=> b!1759735 m!2175333))

(assert (=> b!1759737 m!2175329))

(declare-fun m!2175335 () Bool)

(assert (=> b!1759737 m!2175335))

(assert (=> b!1759737 m!2175335))

(declare-fun m!2175337 () Bool)

(assert (=> b!1759737 m!2175337))

(declare-fun m!2175339 () Bool)

(assert (=> d!537427 m!2175339))

(declare-fun m!2175341 () Bool)

(assert (=> d!537427 m!2175341))

(declare-fun m!2175343 () Bool)

(assert (=> d!537427 m!2175343))

(declare-fun m!2175345 () Bool)

(assert (=> d!537427 m!2175345))

(assert (=> b!1759741 m!2175329))

(declare-fun m!2175347 () Bool)

(assert (=> b!1759741 m!2175347))

(declare-fun m!2175349 () Bool)

(assert (=> b!1759741 m!2175349))

(declare-fun m!2175351 () Bool)

(assert (=> b!1759739 m!2175351))

(declare-fun m!2175353 () Bool)

(assert (=> b!1759742 m!2175353))

(assert (=> b!1759738 m!2175329))

(assert (=> b!1759738 m!2175335))

(assert (=> b!1759738 m!2175335))

(assert (=> b!1759738 m!2175337))

(assert (=> b!1759738 m!2175337))

(declare-fun m!2175355 () Bool)

(assert (=> b!1759738 m!2175355))

(assert (=> b!1759743 m!2175329))

(declare-fun m!2175357 () Bool)

(assert (=> b!1759743 m!2175357))

(declare-fun m!2175359 () Bool)

(assert (=> bm!110620 m!2175359))

(assert (=> b!1759740 m!2175329))

(assert (=> b!1759740 m!2175335))

(assert (=> b!1759740 m!2175335))

(assert (=> b!1759740 m!2175337))

(assert (=> b!1759740 m!2175337))

(declare-fun m!2175361 () Bool)

(assert (=> b!1759740 m!2175361))

(assert (=> b!1759369 d!537427))

(declare-fun d!537431 () Bool)

(assert (=> d!537431 (= (list!7855 (charsOf!2110 token!523)) (list!7858 (c!286649 (charsOf!2110 token!523))))))

(declare-fun bs!403986 () Bool)

(assert (= bs!403986 d!537431))

(declare-fun m!2175363 () Bool)

(assert (=> bs!403986 m!2175363))

(assert (=> b!1759369 d!537431))

(declare-fun d!537433 () Bool)

(declare-fun lt!680068 () BalanceConc!12830)

(assert (=> d!537433 (= (list!7855 lt!680068) (originalCharacters!4275 token!523))))

(assert (=> d!537433 (= lt!680068 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 token!523))) (value!108311 token!523)))))

(assert (=> d!537433 (= (charsOf!2110 token!523) lt!680068)))

(declare-fun b_lambda!56901 () Bool)

(assert (=> (not b_lambda!56901) (not d!537433)))

(declare-fun tb!105921 () Bool)

(declare-fun t!163942 () Bool)

(assert (=> (and b!1759370 (= (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toChars!4839 (transformation!3461 (rule!5477 token!523)))) t!163942) tb!105921))

(declare-fun b!1759744 () Bool)

(declare-fun e!1126240 () Bool)

(declare-fun tp!499972 () Bool)

(assert (=> b!1759744 (= e!1126240 (and (inv!25154 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 token!523))) (value!108311 token!523)))) tp!499972))))

(declare-fun result!127440 () Bool)

(assert (=> tb!105921 (= result!127440 (and (inv!25155 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 token!523))) (value!108311 token!523))) e!1126240))))

(assert (= tb!105921 b!1759744))

(declare-fun m!2175365 () Bool)

(assert (=> b!1759744 m!2175365))

(declare-fun m!2175367 () Bool)

(assert (=> tb!105921 m!2175367))

(assert (=> d!537433 t!163942))

(declare-fun b_and!132637 () Bool)

(assert (= b_and!132595 (and (=> t!163942 result!127440) b_and!132637)))

(declare-fun t!163944 () Bool)

(declare-fun tb!105923 () Bool)

(assert (=> (and b!1759366 (= (toChars!4839 (transformation!3461 rule!422)) (toChars!4839 (transformation!3461 (rule!5477 token!523)))) t!163944) tb!105923))

(declare-fun result!127442 () Bool)

(assert (= result!127442 result!127440))

(assert (=> d!537433 t!163944))

(declare-fun b_and!132639 () Bool)

(assert (= b_and!132597 (and (=> t!163944 result!127442) b_and!132639)))

(declare-fun t!163946 () Bool)

(declare-fun tb!105925 () Bool)

(assert (=> (and b!1759364 (= (toChars!4839 (transformation!3461 (rule!5477 token!523))) (toChars!4839 (transformation!3461 (rule!5477 token!523)))) t!163946) tb!105925))

(declare-fun result!127444 () Bool)

(assert (= result!127444 result!127440))

(assert (=> d!537433 t!163946))

(declare-fun b_and!132641 () Bool)

(assert (= b_and!132599 (and (=> t!163946 result!127444) b_and!132641)))

(declare-fun m!2175369 () Bool)

(assert (=> d!537433 m!2175369))

(declare-fun m!2175371 () Bool)

(assert (=> d!537433 m!2175371))

(assert (=> b!1759369 d!537433))

(declare-fun d!537435 () Bool)

(assert (=> d!537435 (= (isEmpty!12218 suffix!1421) ((_ is Nil!19370) suffix!1421))))

(assert (=> b!1759372 d!537435))

(declare-fun d!537437 () Bool)

(declare-fun res!791984 () Bool)

(declare-fun e!1126243 () Bool)

(assert (=> d!537437 (=> (not res!791984) (not e!1126243))))

(assert (=> d!537437 (= res!791984 (not (isEmpty!12218 (originalCharacters!4275 token!523))))))

(assert (=> d!537437 (= (inv!25153 token!523) e!1126243)))

(declare-fun b!1759749 () Bool)

(declare-fun res!791985 () Bool)

(assert (=> b!1759749 (=> (not res!791985) (not e!1126243))))

(assert (=> b!1759749 (= res!791985 (= (originalCharacters!4275 token!523) (list!7855 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 token!523))) (value!108311 token!523)))))))

(declare-fun b!1759750 () Bool)

(assert (=> b!1759750 (= e!1126243 (= (size!15385 token!523) (size!15386 (originalCharacters!4275 token!523))))))

(assert (= (and d!537437 res!791984) b!1759749))

(assert (= (and b!1759749 res!791985) b!1759750))

(declare-fun b_lambda!56903 () Bool)

(assert (=> (not b_lambda!56903) (not b!1759749)))

(assert (=> b!1759749 t!163942))

(declare-fun b_and!132643 () Bool)

(assert (= b_and!132637 (and (=> t!163942 result!127440) b_and!132643)))

(assert (=> b!1759749 t!163944))

(declare-fun b_and!132645 () Bool)

(assert (= b_and!132639 (and (=> t!163944 result!127442) b_and!132645)))

(assert (=> b!1759749 t!163946))

(declare-fun b_and!132647 () Bool)

(assert (= b_and!132641 (and (=> t!163946 result!127444) b_and!132647)))

(declare-fun m!2175373 () Bool)

(assert (=> d!537437 m!2175373))

(assert (=> b!1759749 m!2175371))

(assert (=> b!1759749 m!2175371))

(declare-fun m!2175375 () Bool)

(assert (=> b!1759749 m!2175375))

(declare-fun m!2175377 () Bool)

(assert (=> b!1759750 m!2175377))

(assert (=> start!173942 d!537437))

(declare-fun d!537439 () Bool)

(declare-fun isEmpty!12223 (Option!3945) Bool)

(assert (=> d!537439 (= (isDefined!3288 lt!679902) (not (isEmpty!12223 lt!679902)))))

(declare-fun bs!403987 () Bool)

(assert (= bs!403987 d!537439))

(declare-fun m!2175379 () Bool)

(assert (=> bs!403987 m!2175379))

(assert (=> b!1759373 d!537439))

(declare-fun b!1759751 () Bool)

(declare-fun res!791990 () Bool)

(declare-fun e!1126244 () Bool)

(assert (=> b!1759751 (=> (not res!791990) (not e!1126244))))

(declare-fun lt!680071 () Option!3944)

(assert (=> b!1759751 (= res!791990 (= (value!108311 (_1!10891 (get!5892 lt!680071))) (apply!5261 (transformation!3461 (rule!5477 (_1!10891 (get!5892 lt!680071)))) (seqFromList!2430 (originalCharacters!4275 (_1!10891 (get!5892 lt!680071)))))))))

(declare-fun d!537441 () Bool)

(declare-fun e!1126246 () Bool)

(assert (=> d!537441 e!1126246))

(declare-fun res!791991 () Bool)

(assert (=> d!537441 (=> res!791991 e!1126246)))

(assert (=> d!537441 (= res!791991 (isEmpty!12222 lt!680071))))

(declare-fun e!1126245 () Option!3944)

(assert (=> d!537441 (= lt!680071 e!1126245)))

(declare-fun c!286711 () Bool)

(assert (=> d!537441 (= c!286711 (and ((_ is Cons!19371) rules!3447) ((_ is Nil!19371) (t!163928 rules!3447))))))

(declare-fun lt!680069 () Unit!33541)

(declare-fun lt!680072 () Unit!33541)

(assert (=> d!537441 (= lt!680069 lt!680072)))

(assert (=> d!537441 (isPrefix!1701 lt!679897 lt!679897)))

(assert (=> d!537441 (= lt!680072 (lemmaIsPrefixRefl!1126 lt!679897 lt!679897))))

(assert (=> d!537441 (rulesValidInductive!1164 thiss!24550 rules!3447)))

(assert (=> d!537441 (= (maxPrefix!1644 thiss!24550 rules!3447 lt!679897) lt!680071)))

(declare-fun b!1759752 () Bool)

(declare-fun call!110626 () Option!3944)

(assert (=> b!1759752 (= e!1126245 call!110626)))

(declare-fun b!1759753 () Bool)

(declare-fun res!791987 () Bool)

(assert (=> b!1759753 (=> (not res!791987) (not e!1126244))))

(assert (=> b!1759753 (= res!791987 (= (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680071)))) (originalCharacters!4275 (_1!10891 (get!5892 lt!680071)))))))

(declare-fun b!1759754 () Bool)

(declare-fun res!791988 () Bool)

(assert (=> b!1759754 (=> (not res!791988) (not e!1126244))))

(assert (=> b!1759754 (= res!791988 (= (++!5285 (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680071)))) (_2!10891 (get!5892 lt!680071))) lt!679897))))

(declare-fun b!1759755 () Bool)

(declare-fun lt!680070 () Option!3944)

(declare-fun lt!680073 () Option!3944)

(assert (=> b!1759755 (= e!1126245 (ite (and ((_ is None!3943) lt!680070) ((_ is None!3943) lt!680073)) None!3943 (ite ((_ is None!3943) lt!680073) lt!680070 (ite ((_ is None!3943) lt!680070) lt!680073 (ite (>= (size!15385 (_1!10891 (v!25402 lt!680070))) (size!15385 (_1!10891 (v!25402 lt!680073)))) lt!680070 lt!680073)))))))

(assert (=> b!1759755 (= lt!680070 call!110626)))

(assert (=> b!1759755 (= lt!680073 (maxPrefix!1644 thiss!24550 (t!163928 rules!3447) lt!679897))))

(declare-fun b!1759756 () Bool)

(declare-fun res!791992 () Bool)

(assert (=> b!1759756 (=> (not res!791992) (not e!1126244))))

(assert (=> b!1759756 (= res!791992 (matchR!2262 (regex!3461 (rule!5477 (_1!10891 (get!5892 lt!680071)))) (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680071))))))))

(declare-fun b!1759757 () Bool)

(declare-fun res!791989 () Bool)

(assert (=> b!1759757 (=> (not res!791989) (not e!1126244))))

(assert (=> b!1759757 (= res!791989 (< (size!15386 (_2!10891 (get!5892 lt!680071))) (size!15386 lt!679897)))))

(declare-fun b!1759758 () Bool)

(assert (=> b!1759758 (= e!1126246 e!1126244)))

(declare-fun res!791986 () Bool)

(assert (=> b!1759758 (=> (not res!791986) (not e!1126244))))

(assert (=> b!1759758 (= res!791986 (isDefined!3287 lt!680071))))

(declare-fun bm!110621 () Bool)

(assert (=> bm!110621 (= call!110626 (maxPrefixOneRule!1013 thiss!24550 (h!24772 rules!3447) lt!679897))))

(declare-fun b!1759759 () Bool)

(assert (=> b!1759759 (= e!1126244 (contains!3489 rules!3447 (rule!5477 (_1!10891 (get!5892 lt!680071)))))))

(assert (= (and d!537441 c!286711) b!1759752))

(assert (= (and d!537441 (not c!286711)) b!1759755))

(assert (= (or b!1759752 b!1759755) bm!110621))

(assert (= (and d!537441 (not res!791991)) b!1759758))

(assert (= (and b!1759758 res!791986) b!1759753))

(assert (= (and b!1759753 res!791987) b!1759757))

(assert (= (and b!1759757 res!791989) b!1759754))

(assert (= (and b!1759754 res!791988) b!1759751))

(assert (= (and b!1759751 res!791990) b!1759756))

(assert (= (and b!1759756 res!791992) b!1759759))

(declare-fun m!2175381 () Bool)

(assert (=> b!1759751 m!2175381))

(declare-fun m!2175383 () Bool)

(assert (=> b!1759751 m!2175383))

(assert (=> b!1759751 m!2175383))

(declare-fun m!2175385 () Bool)

(assert (=> b!1759751 m!2175385))

(assert (=> b!1759753 m!2175381))

(declare-fun m!2175387 () Bool)

(assert (=> b!1759753 m!2175387))

(assert (=> b!1759753 m!2175387))

(declare-fun m!2175389 () Bool)

(assert (=> b!1759753 m!2175389))

(declare-fun m!2175391 () Bool)

(assert (=> d!537441 m!2175391))

(declare-fun m!2175393 () Bool)

(assert (=> d!537441 m!2175393))

(declare-fun m!2175395 () Bool)

(assert (=> d!537441 m!2175395))

(assert (=> d!537441 m!2175345))

(assert (=> b!1759757 m!2175381))

(declare-fun m!2175397 () Bool)

(assert (=> b!1759757 m!2175397))

(declare-fun m!2175399 () Bool)

(assert (=> b!1759757 m!2175399))

(declare-fun m!2175401 () Bool)

(assert (=> b!1759755 m!2175401))

(declare-fun m!2175403 () Bool)

(assert (=> b!1759758 m!2175403))

(assert (=> b!1759754 m!2175381))

(assert (=> b!1759754 m!2175387))

(assert (=> b!1759754 m!2175387))

(assert (=> b!1759754 m!2175389))

(assert (=> b!1759754 m!2175389))

(declare-fun m!2175405 () Bool)

(assert (=> b!1759754 m!2175405))

(assert (=> b!1759759 m!2175381))

(declare-fun m!2175407 () Bool)

(assert (=> b!1759759 m!2175407))

(declare-fun m!2175409 () Bool)

(assert (=> bm!110621 m!2175409))

(assert (=> b!1759756 m!2175381))

(assert (=> b!1759756 m!2175387))

(assert (=> b!1759756 m!2175387))

(assert (=> b!1759756 m!2175389))

(assert (=> b!1759756 m!2175389))

(declare-fun m!2175411 () Bool)

(assert (=> b!1759756 m!2175411))

(assert (=> b!1759373 d!537441))

(declare-fun b!1759799 () Bool)

(declare-fun e!1126268 () Bool)

(declare-fun e!1126267 () Bool)

(assert (=> b!1759799 (= e!1126268 e!1126267)))

(declare-fun res!792019 () Bool)

(assert (=> b!1759799 (=> (not res!792019) (not e!1126267))))

(declare-fun lt!680095 () Option!3945)

(assert (=> b!1759799 (= res!792019 (contains!3489 rules!3447 (get!5893 lt!680095)))))

(declare-fun b!1759800 () Bool)

(declare-fun e!1126269 () Option!3945)

(assert (=> b!1759800 (= e!1126269 None!3944)))

(declare-fun b!1759802 () Bool)

(declare-fun e!1126270 () Option!3945)

(assert (=> b!1759802 (= e!1126270 e!1126269)))

(declare-fun c!286720 () Bool)

(assert (=> b!1759802 (= c!286720 (and ((_ is Cons!19371) rules!3447) (not (= (tag!3825 (h!24772 rules!3447)) (tag!3825 (rule!5477 (_1!10891 lt!679914)))))))))

(declare-fun b!1759803 () Bool)

(declare-fun lt!680096 () Unit!33541)

(declare-fun lt!680097 () Unit!33541)

(assert (=> b!1759803 (= lt!680096 lt!680097)))

(assert (=> b!1759803 (rulesInvariant!2759 thiss!24550 (t!163928 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!188 (LexerInterface!3090 Rule!6722 List!19441) Unit!33541)

(assert (=> b!1759803 (= lt!680097 (lemmaInvariantOnRulesThenOnTail!188 thiss!24550 (h!24772 rules!3447) (t!163928 rules!3447)))))

(assert (=> b!1759803 (= e!1126269 (getRuleFromTag!509 thiss!24550 (t!163928 rules!3447) (tag!3825 (rule!5477 (_1!10891 lt!679914)))))))

(declare-fun b!1759804 () Bool)

(assert (=> b!1759804 (= e!1126270 (Some!3944 (h!24772 rules!3447)))))

(declare-fun b!1759801 () Bool)

(assert (=> b!1759801 (= e!1126267 (= (tag!3825 (get!5893 lt!680095)) (tag!3825 (rule!5477 (_1!10891 lt!679914)))))))

(declare-fun d!537443 () Bool)

(assert (=> d!537443 e!1126268))

(declare-fun res!792018 () Bool)

(assert (=> d!537443 (=> res!792018 e!1126268)))

(assert (=> d!537443 (= res!792018 (isEmpty!12223 lt!680095))))

(assert (=> d!537443 (= lt!680095 e!1126270)))

(declare-fun c!286719 () Bool)

(assert (=> d!537443 (= c!286719 (and ((_ is Cons!19371) rules!3447) (= (tag!3825 (h!24772 rules!3447)) (tag!3825 (rule!5477 (_1!10891 lt!679914))))))))

(assert (=> d!537443 (rulesInvariant!2759 thiss!24550 rules!3447)))

(assert (=> d!537443 (= (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 (_1!10891 lt!679914)))) lt!680095)))

(assert (= (and d!537443 c!286719) b!1759804))

(assert (= (and d!537443 (not c!286719)) b!1759802))

(assert (= (and b!1759802 c!286720) b!1759803))

(assert (= (and b!1759802 (not c!286720)) b!1759800))

(assert (= (and d!537443 (not res!792018)) b!1759799))

(assert (= (and b!1759799 res!792019) b!1759801))

(declare-fun m!2175457 () Bool)

(assert (=> b!1759799 m!2175457))

(assert (=> b!1759799 m!2175457))

(declare-fun m!2175459 () Bool)

(assert (=> b!1759799 m!2175459))

(declare-fun m!2175461 () Bool)

(assert (=> b!1759803 m!2175461))

(declare-fun m!2175463 () Bool)

(assert (=> b!1759803 m!2175463))

(declare-fun m!2175465 () Bool)

(assert (=> b!1759803 m!2175465))

(assert (=> b!1759801 m!2175457))

(declare-fun m!2175467 () Bool)

(assert (=> d!537443 m!2175467))

(assert (=> d!537443 m!2174947))

(assert (=> b!1759373 d!537443))

(declare-fun b!1759952 () Bool)

(declare-fun res!792062 () Bool)

(declare-fun e!1126358 () Bool)

(assert (=> b!1759952 (=> (not res!792062) (not e!1126358))))

(declare-fun lt!680156 () Token!6488)

(assert (=> b!1759952 (= res!792062 (matchR!2262 (regex!3461 (get!5893 (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 lt!680156))))) (list!7855 (charsOf!2110 lt!680156))))))

(declare-fun d!537447 () Bool)

(assert (=> d!537447 (isDefined!3287 (maxPrefix!1644 thiss!24550 rules!3447 (++!5285 lt!679905 suffix!1421)))))

(declare-fun lt!680158 () Unit!33541)

(declare-fun e!1126357 () Unit!33541)

(assert (=> d!537447 (= lt!680158 e!1126357)))

(declare-fun c!286745 () Bool)

(assert (=> d!537447 (= c!286745 (isEmpty!12222 (maxPrefix!1644 thiss!24550 rules!3447 (++!5285 lt!679905 suffix!1421))))))

(declare-fun lt!680154 () Unit!33541)

(declare-fun lt!680166 () Unit!33541)

(assert (=> d!537447 (= lt!680154 lt!680166)))

(assert (=> d!537447 e!1126358))

(declare-fun res!792061 () Bool)

(assert (=> d!537447 (=> (not res!792061) (not e!1126358))))

(assert (=> d!537447 (= res!792061 (isDefined!3288 (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 lt!680156)))))))

(assert (=> d!537447 (= lt!680166 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!509 thiss!24550 rules!3447 lt!679905 lt!680156))))

(declare-fun lt!680160 () Unit!33541)

(declare-fun lt!680157 () Unit!33541)

(assert (=> d!537447 (= lt!680160 lt!680157)))

(declare-fun lt!680164 () List!19440)

(assert (=> d!537447 (isPrefix!1701 lt!680164 (++!5285 lt!679905 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!309 (List!19440 List!19440 List!19440) Unit!33541)

(assert (=> d!537447 (= lt!680157 (lemmaPrefixStaysPrefixWhenAddingToSuffix!309 lt!680164 lt!679905 suffix!1421))))

(assert (=> d!537447 (= lt!680164 (list!7855 (charsOf!2110 lt!680156)))))

(declare-fun lt!680162 () Unit!33541)

(declare-fun lt!680153 () Unit!33541)

(assert (=> d!537447 (= lt!680162 lt!680153)))

(declare-fun lt!680167 () List!19440)

(declare-fun lt!680168 () List!19440)

(assert (=> d!537447 (isPrefix!1701 lt!680167 (++!5285 lt!680167 lt!680168))))

(assert (=> d!537447 (= lt!680153 (lemmaConcatTwoListThenFirstIsPrefix!1210 lt!680167 lt!680168))))

(assert (=> d!537447 (= lt!680168 (_2!10891 (get!5892 (maxPrefix!1644 thiss!24550 rules!3447 lt!679905))))))

(assert (=> d!537447 (= lt!680167 (list!7855 (charsOf!2110 lt!680156)))))

(declare-datatypes ((List!19446 0))(
  ( (Nil!19376) (Cons!19376 (h!24777 Token!6488) (t!163993 List!19446)) )
))
(declare-fun head!4074 (List!19446) Token!6488)

(declare-datatypes ((IArray!12895 0))(
  ( (IArray!12896 (innerList!6505 List!19446)) )
))
(declare-datatypes ((Conc!6445 0))(
  ( (Node!6445 (left!15509 Conc!6445) (right!15839 Conc!6445) (csize!13120 Int) (cheight!6656 Int)) (Leaf!9396 (xs!9321 IArray!12895) (csize!13121 Int)) (Empty!6445) )
))
(declare-datatypes ((BalanceConc!12834 0))(
  ( (BalanceConc!12835 (c!286769 Conc!6445)) )
))
(declare-fun list!7859 (BalanceConc!12834) List!19446)

(declare-datatypes ((tuple2!18984 0))(
  ( (tuple2!18985 (_1!10894 BalanceConc!12834) (_2!10894 BalanceConc!12830)) )
))
(declare-fun lex!1448 (LexerInterface!3090 List!19441 BalanceConc!12830) tuple2!18984)

(assert (=> d!537447 (= lt!680156 (head!4074 (list!7859 (_1!10894 (lex!1448 thiss!24550 rules!3447 (seqFromList!2430 lt!679905))))))))

(assert (=> d!537447 (not (isEmpty!12219 rules!3447))))

(assert (=> d!537447 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!612 thiss!24550 rules!3447 lt!679905 suffix!1421) lt!680158)))

(declare-fun b!1759954 () Bool)

(declare-fun Unit!33549 () Unit!33541)

(assert (=> b!1759954 (= e!1126357 Unit!33549)))

(declare-fun lt!680152 () List!19440)

(assert (=> b!1759954 (= lt!680152 (++!5285 lt!679905 suffix!1421))))

(declare-fun lt!680159 () Unit!33541)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!317 (LexerInterface!3090 Rule!6722 List!19441 List!19440) Unit!33541)

(assert (=> b!1759954 (= lt!680159 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!317 thiss!24550 (rule!5477 lt!680156) rules!3447 lt!680152))))

(assert (=> b!1759954 (isEmpty!12222 (maxPrefixOneRule!1013 thiss!24550 (rule!5477 lt!680156) lt!680152))))

(declare-fun lt!680161 () Unit!33541)

(assert (=> b!1759954 (= lt!680161 lt!680159)))

(declare-fun lt!680155 () List!19440)

(assert (=> b!1759954 (= lt!680155 (list!7855 (charsOf!2110 lt!680156)))))

(declare-fun lt!680163 () Unit!33541)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!313 (LexerInterface!3090 Rule!6722 List!19440 List!19440) Unit!33541)

(assert (=> b!1759954 (= lt!680163 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!313 thiss!24550 (rule!5477 lt!680156) lt!680155 (++!5285 lt!679905 suffix!1421)))))

(assert (=> b!1759954 (not (matchR!2262 (regex!3461 (rule!5477 lt!680156)) lt!680155))))

(declare-fun lt!680165 () Unit!33541)

(assert (=> b!1759954 (= lt!680165 lt!680163)))

(assert (=> b!1759954 false))

(declare-fun b!1759955 () Bool)

(declare-fun Unit!33550 () Unit!33541)

(assert (=> b!1759955 (= e!1126357 Unit!33550)))

(declare-fun b!1759953 () Bool)

(assert (=> b!1759953 (= e!1126358 (= (rule!5477 lt!680156) (get!5893 (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 lt!680156))))))))

(assert (= (and d!537447 res!792061) b!1759952))

(assert (= (and b!1759952 res!792062) b!1759953))

(assert (= (and d!537447 c!286745) b!1759954))

(assert (= (and d!537447 (not c!286745)) b!1759955))

(declare-fun m!2175597 () Bool)

(assert (=> b!1759952 m!2175597))

(assert (=> b!1759952 m!2175597))

(declare-fun m!2175599 () Bool)

(assert (=> b!1759952 m!2175599))

(declare-fun m!2175601 () Bool)

(assert (=> b!1759952 m!2175601))

(assert (=> b!1759952 m!2175599))

(declare-fun m!2175603 () Bool)

(assert (=> b!1759952 m!2175603))

(assert (=> b!1759952 m!2175601))

(declare-fun m!2175605 () Bool)

(assert (=> b!1759952 m!2175605))

(assert (=> d!537447 m!2175597))

(declare-fun m!2175607 () Bool)

(assert (=> d!537447 m!2175607))

(declare-fun m!2175609 () Bool)

(assert (=> d!537447 m!2175609))

(assert (=> d!537447 m!2175601))

(declare-fun m!2175611 () Bool)

(assert (=> d!537447 m!2175611))

(assert (=> d!537447 m!2174863))

(assert (=> d!537447 m!2175597))

(assert (=> d!537447 m!2175599))

(assert (=> d!537447 m!2174889))

(assert (=> d!537447 m!2175607))

(declare-fun m!2175613 () Bool)

(assert (=> d!537447 m!2175613))

(declare-fun m!2175615 () Bool)

(assert (=> d!537447 m!2175615))

(assert (=> d!537447 m!2175613))

(assert (=> d!537447 m!2174919))

(declare-fun m!2175617 () Bool)

(assert (=> d!537447 m!2175617))

(declare-fun m!2175619 () Bool)

(assert (=> d!537447 m!2175619))

(assert (=> d!537447 m!2174863))

(declare-fun m!2175621 () Bool)

(assert (=> d!537447 m!2175621))

(assert (=> d!537447 m!2175621))

(declare-fun m!2175623 () Bool)

(assert (=> d!537447 m!2175623))

(assert (=> d!537447 m!2175601))

(assert (=> d!537447 m!2174863))

(declare-fun m!2175625 () Bool)

(assert (=> d!537447 m!2175625))

(assert (=> d!537447 m!2174889))

(declare-fun m!2175627 () Bool)

(assert (=> d!537447 m!2175627))

(assert (=> d!537447 m!2175621))

(declare-fun m!2175629 () Bool)

(assert (=> d!537447 m!2175629))

(declare-fun m!2175631 () Bool)

(assert (=> d!537447 m!2175631))

(declare-fun m!2175633 () Bool)

(assert (=> d!537447 m!2175633))

(assert (=> d!537447 m!2175631))

(declare-fun m!2175635 () Bool)

(assert (=> d!537447 m!2175635))

(assert (=> b!1759954 m!2175597))

(assert (=> b!1759954 m!2174863))

(declare-fun m!2175637 () Bool)

(assert (=> b!1759954 m!2175637))

(assert (=> b!1759954 m!2175597))

(assert (=> b!1759954 m!2175599))

(declare-fun m!2175639 () Bool)

(assert (=> b!1759954 m!2175639))

(declare-fun m!2175641 () Bool)

(assert (=> b!1759954 m!2175641))

(assert (=> b!1759954 m!2175639))

(declare-fun m!2175643 () Bool)

(assert (=> b!1759954 m!2175643))

(assert (=> b!1759954 m!2174863))

(declare-fun m!2175645 () Bool)

(assert (=> b!1759954 m!2175645))

(assert (=> b!1759953 m!2175601))

(assert (=> b!1759953 m!2175601))

(assert (=> b!1759953 m!2175605))

(assert (=> b!1759373 d!537447))

(declare-fun d!537509 () Bool)

(assert (=> d!537509 (= (get!5892 lt!679896) (v!25402 lt!679896))))

(assert (=> b!1759373 d!537509))

(declare-fun b!1759965 () Bool)

(declare-fun res!792073 () Bool)

(declare-fun e!1126367 () Bool)

(assert (=> b!1759965 (=> (not res!792073) (not e!1126367))))

(assert (=> b!1759965 (= res!792073 (= (head!4072 lt!679905) (head!4072 lt!679897)))))

(declare-fun b!1759964 () Bool)

(declare-fun e!1126366 () Bool)

(assert (=> b!1759964 (= e!1126366 e!1126367)))

(declare-fun res!792074 () Bool)

(assert (=> b!1759964 (=> (not res!792074) (not e!1126367))))

(assert (=> b!1759964 (= res!792074 (not ((_ is Nil!19370) lt!679897)))))

(declare-fun b!1759967 () Bool)

(declare-fun e!1126365 () Bool)

(assert (=> b!1759967 (= e!1126365 (>= (size!15386 lt!679897) (size!15386 lt!679905)))))

(declare-fun b!1759966 () Bool)

(assert (=> b!1759966 (= e!1126367 (isPrefix!1701 (tail!2631 lt!679905) (tail!2631 lt!679897)))))

(declare-fun d!537511 () Bool)

(assert (=> d!537511 e!1126365))

(declare-fun res!792072 () Bool)

(assert (=> d!537511 (=> res!792072 e!1126365)))

(declare-fun lt!680171 () Bool)

(assert (=> d!537511 (= res!792072 (not lt!680171))))

(assert (=> d!537511 (= lt!680171 e!1126366)))

(declare-fun res!792071 () Bool)

(assert (=> d!537511 (=> res!792071 e!1126366)))

(assert (=> d!537511 (= res!792071 ((_ is Nil!19370) lt!679905))))

(assert (=> d!537511 (= (isPrefix!1701 lt!679905 lt!679897) lt!680171)))

(assert (= (and d!537511 (not res!792071)) b!1759964))

(assert (= (and b!1759964 res!792074) b!1759965))

(assert (= (and b!1759965 res!792073) b!1759966))

(assert (= (and d!537511 (not res!792072)) b!1759967))

(assert (=> b!1759965 m!2175151))

(declare-fun m!2175647 () Bool)

(assert (=> b!1759965 m!2175647))

(assert (=> b!1759967 m!2175399))

(assert (=> b!1759967 m!2175349))

(assert (=> b!1759966 m!2175155))

(declare-fun m!2175649 () Bool)

(assert (=> b!1759966 m!2175649))

(assert (=> b!1759966 m!2175155))

(assert (=> b!1759966 m!2175649))

(declare-fun m!2175651 () Bool)

(assert (=> b!1759966 m!2175651))

(assert (=> b!1759373 d!537511))

(declare-fun d!537513 () Bool)

(assert (=> d!537513 (isPrefix!1701 lt!679901 (++!5285 lt!679901 (_2!10891 lt!679914)))))

(declare-fun lt!680174 () Unit!33541)

(declare-fun choose!10890 (List!19440 List!19440) Unit!33541)

(assert (=> d!537513 (= lt!680174 (choose!10890 lt!679901 (_2!10891 lt!679914)))))

(assert (=> d!537513 (= (lemmaConcatTwoListThenFirstIsPrefix!1210 lt!679901 (_2!10891 lt!679914)) lt!680174)))

(declare-fun bs!403996 () Bool)

(assert (= bs!403996 d!537513))

(assert (=> bs!403996 m!2174873))

(assert (=> bs!403996 m!2174873))

(declare-fun m!2175653 () Bool)

(assert (=> bs!403996 m!2175653))

(declare-fun m!2175655 () Bool)

(assert (=> bs!403996 m!2175655))

(assert (=> b!1759373 d!537513))

(declare-fun d!537515 () Bool)

(declare-fun e!1126372 () Bool)

(assert (=> d!537515 e!1126372))

(declare-fun res!792079 () Bool)

(assert (=> d!537515 (=> (not res!792079) (not e!1126372))))

(declare-fun lt!680177 () List!19440)

(declare-fun content!2796 (List!19440) (InoxSet C!9752))

(assert (=> d!537515 (= res!792079 (= (content!2796 lt!680177) ((_ map or) (content!2796 lt!679905) (content!2796 suffix!1421))))))

(declare-fun e!1126373 () List!19440)

(assert (=> d!537515 (= lt!680177 e!1126373)))

(declare-fun c!286748 () Bool)

(assert (=> d!537515 (= c!286748 ((_ is Nil!19370) lt!679905))))

(assert (=> d!537515 (= (++!5285 lt!679905 suffix!1421) lt!680177)))

(declare-fun b!1759977 () Bool)

(assert (=> b!1759977 (= e!1126373 (Cons!19370 (h!24771 lt!679905) (++!5285 (t!163927 lt!679905) suffix!1421)))))

(declare-fun b!1759978 () Bool)

(declare-fun res!792080 () Bool)

(assert (=> b!1759978 (=> (not res!792080) (not e!1126372))))

(assert (=> b!1759978 (= res!792080 (= (size!15386 lt!680177) (+ (size!15386 lt!679905) (size!15386 suffix!1421))))))

(declare-fun b!1759979 () Bool)

(assert (=> b!1759979 (= e!1126372 (or (not (= suffix!1421 Nil!19370)) (= lt!680177 lt!679905)))))

(declare-fun b!1759976 () Bool)

(assert (=> b!1759976 (= e!1126373 suffix!1421)))

(assert (= (and d!537515 c!286748) b!1759976))

(assert (= (and d!537515 (not c!286748)) b!1759977))

(assert (= (and d!537515 res!792079) b!1759978))

(assert (= (and b!1759978 res!792080) b!1759979))

(declare-fun m!2175657 () Bool)

(assert (=> d!537515 m!2175657))

(declare-fun m!2175659 () Bool)

(assert (=> d!537515 m!2175659))

(declare-fun m!2175661 () Bool)

(assert (=> d!537515 m!2175661))

(declare-fun m!2175663 () Bool)

(assert (=> b!1759977 m!2175663))

(declare-fun m!2175665 () Bool)

(assert (=> b!1759978 m!2175665))

(assert (=> b!1759978 m!2175349))

(declare-fun m!2175667 () Bool)

(assert (=> b!1759978 m!2175667))

(assert (=> b!1759373 d!537515))

(declare-fun d!537517 () Bool)

(assert (=> d!537517 (isPrefix!1701 lt!679905 (++!5285 lt!679905 suffix!1421))))

(declare-fun lt!680178 () Unit!33541)

(assert (=> d!537517 (= lt!680178 (choose!10890 lt!679905 suffix!1421))))

(assert (=> d!537517 (= (lemmaConcatTwoListThenFirstIsPrefix!1210 lt!679905 suffix!1421) lt!680178)))

(declare-fun bs!403997 () Bool)

(assert (= bs!403997 d!537517))

(assert (=> bs!403997 m!2174863))

(assert (=> bs!403997 m!2174863))

(declare-fun m!2175669 () Bool)

(assert (=> bs!403997 m!2175669))

(declare-fun m!2175671 () Bool)

(assert (=> bs!403997 m!2175671))

(assert (=> b!1759373 d!537517))

(declare-fun d!537519 () Bool)

(assert (=> d!537519 (= (list!7855 lt!679899) (list!7858 (c!286649 lt!679899)))))

(declare-fun bs!403998 () Bool)

(assert (= bs!403998 d!537519))

(declare-fun m!2175673 () Bool)

(assert (=> bs!403998 m!2175673))

(assert (=> b!1759373 d!537519))

(declare-fun d!537521 () Bool)

(declare-fun e!1126376 () Bool)

(assert (=> d!537521 e!1126376))

(declare-fun res!792085 () Bool)

(assert (=> d!537521 (=> (not res!792085) (not e!1126376))))

(assert (=> d!537521 (= res!792085 (isDefined!3288 (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 (_1!10891 lt!679914))))))))

(declare-fun lt!680181 () Unit!33541)

(declare-fun choose!10891 (LexerInterface!3090 List!19441 List!19440 Token!6488) Unit!33541)

(assert (=> d!537521 (= lt!680181 (choose!10891 thiss!24550 rules!3447 lt!679897 (_1!10891 lt!679914)))))

(assert (=> d!537521 (rulesInvariant!2759 thiss!24550 rules!3447)))

(assert (=> d!537521 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!509 thiss!24550 rules!3447 lt!679897 (_1!10891 lt!679914)) lt!680181)))

(declare-fun b!1759984 () Bool)

(declare-fun res!792086 () Bool)

(assert (=> b!1759984 (=> (not res!792086) (not e!1126376))))

(assert (=> b!1759984 (= res!792086 (matchR!2262 (regex!3461 (get!5893 (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 (_1!10891 lt!679914)))))) (list!7855 (charsOf!2110 (_1!10891 lt!679914)))))))

(declare-fun b!1759985 () Bool)

(assert (=> b!1759985 (= e!1126376 (= (rule!5477 (_1!10891 lt!679914)) (get!5893 (getRuleFromTag!509 thiss!24550 rules!3447 (tag!3825 (rule!5477 (_1!10891 lt!679914)))))))))

(assert (= (and d!537521 res!792085) b!1759984))

(assert (= (and b!1759984 res!792086) b!1759985))

(assert (=> d!537521 m!2174859))

(assert (=> d!537521 m!2174859))

(declare-fun m!2175675 () Bool)

(assert (=> d!537521 m!2175675))

(declare-fun m!2175677 () Bool)

(assert (=> d!537521 m!2175677))

(assert (=> d!537521 m!2174947))

(assert (=> b!1759984 m!2174869))

(assert (=> b!1759984 m!2174859))

(declare-fun m!2175679 () Bool)

(assert (=> b!1759984 m!2175679))

(assert (=> b!1759984 m!2174923))

(declare-fun m!2175681 () Bool)

(assert (=> b!1759984 m!2175681))

(assert (=> b!1759984 m!2174869))

(assert (=> b!1759984 m!2174923))

(assert (=> b!1759984 m!2174859))

(assert (=> b!1759985 m!2174859))

(assert (=> b!1759985 m!2174859))

(assert (=> b!1759985 m!2175679))

(assert (=> b!1759373 d!537521))

(declare-fun d!537523 () Bool)

(declare-fun e!1126377 () Bool)

(assert (=> d!537523 e!1126377))

(declare-fun res!792087 () Bool)

(assert (=> d!537523 (=> (not res!792087) (not e!1126377))))

(declare-fun lt!680182 () List!19440)

(assert (=> d!537523 (= res!792087 (= (content!2796 lt!680182) ((_ map or) (content!2796 lt!679901) (content!2796 (_2!10891 lt!679914)))))))

(declare-fun e!1126378 () List!19440)

(assert (=> d!537523 (= lt!680182 e!1126378)))

(declare-fun c!286749 () Bool)

(assert (=> d!537523 (= c!286749 ((_ is Nil!19370) lt!679901))))

(assert (=> d!537523 (= (++!5285 lt!679901 (_2!10891 lt!679914)) lt!680182)))

(declare-fun b!1759987 () Bool)

(assert (=> b!1759987 (= e!1126378 (Cons!19370 (h!24771 lt!679901) (++!5285 (t!163927 lt!679901) (_2!10891 lt!679914))))))

(declare-fun b!1759988 () Bool)

(declare-fun res!792088 () Bool)

(assert (=> b!1759988 (=> (not res!792088) (not e!1126377))))

(assert (=> b!1759988 (= res!792088 (= (size!15386 lt!680182) (+ (size!15386 lt!679901) (size!15386 (_2!10891 lt!679914)))))))

(declare-fun b!1759989 () Bool)

(assert (=> b!1759989 (= e!1126377 (or (not (= (_2!10891 lt!679914) Nil!19370)) (= lt!680182 lt!679901)))))

(declare-fun b!1759986 () Bool)

(assert (=> b!1759986 (= e!1126378 (_2!10891 lt!679914))))

(assert (= (and d!537523 c!286749) b!1759986))

(assert (= (and d!537523 (not c!286749)) b!1759987))

(assert (= (and d!537523 res!792087) b!1759988))

(assert (= (and b!1759988 res!792088) b!1759989))

(declare-fun m!2175683 () Bool)

(assert (=> d!537523 m!2175683))

(declare-fun m!2175685 () Bool)

(assert (=> d!537523 m!2175685))

(declare-fun m!2175687 () Bool)

(assert (=> d!537523 m!2175687))

(declare-fun m!2175689 () Bool)

(assert (=> b!1759987 m!2175689))

(declare-fun m!2175691 () Bool)

(assert (=> b!1759988 m!2175691))

(assert (=> b!1759988 m!2174911))

(declare-fun m!2175693 () Bool)

(assert (=> b!1759988 m!2175693))

(assert (=> b!1759373 d!537523))

(declare-fun b!1759991 () Bool)

(declare-fun res!792091 () Bool)

(declare-fun e!1126381 () Bool)

(assert (=> b!1759991 (=> (not res!792091) (not e!1126381))))

(assert (=> b!1759991 (= res!792091 (= (head!4072 lt!679901) (head!4072 lt!679897)))))

(declare-fun b!1759990 () Bool)

(declare-fun e!1126380 () Bool)

(assert (=> b!1759990 (= e!1126380 e!1126381)))

(declare-fun res!792092 () Bool)

(assert (=> b!1759990 (=> (not res!792092) (not e!1126381))))

(assert (=> b!1759990 (= res!792092 (not ((_ is Nil!19370) lt!679897)))))

(declare-fun b!1759993 () Bool)

(declare-fun e!1126379 () Bool)

(assert (=> b!1759993 (= e!1126379 (>= (size!15386 lt!679897) (size!15386 lt!679901)))))

(declare-fun b!1759992 () Bool)

(assert (=> b!1759992 (= e!1126381 (isPrefix!1701 (tail!2631 lt!679901) (tail!2631 lt!679897)))))

(declare-fun d!537525 () Bool)

(assert (=> d!537525 e!1126379))

(declare-fun res!792090 () Bool)

(assert (=> d!537525 (=> res!792090 e!1126379)))

(declare-fun lt!680183 () Bool)

(assert (=> d!537525 (= res!792090 (not lt!680183))))

(assert (=> d!537525 (= lt!680183 e!1126380)))

(declare-fun res!792089 () Bool)

(assert (=> d!537525 (=> res!792089 e!1126380)))

(assert (=> d!537525 (= res!792089 ((_ is Nil!19370) lt!679901))))

(assert (=> d!537525 (= (isPrefix!1701 lt!679901 lt!679897) lt!680183)))

(assert (= (and d!537525 (not res!792089)) b!1759990))

(assert (= (and b!1759990 res!792092) b!1759991))

(assert (= (and b!1759991 res!792091) b!1759992))

(assert (= (and d!537525 (not res!792090)) b!1759993))

(declare-fun m!2175695 () Bool)

(assert (=> b!1759991 m!2175695))

(assert (=> b!1759991 m!2175647))

(assert (=> b!1759993 m!2175399))

(assert (=> b!1759993 m!2174911))

(declare-fun m!2175697 () Bool)

(assert (=> b!1759992 m!2175697))

(assert (=> b!1759992 m!2175649))

(assert (=> b!1759992 m!2175697))

(assert (=> b!1759992 m!2175649))

(declare-fun m!2175699 () Bool)

(assert (=> b!1759992 m!2175699))

(assert (=> b!1759373 d!537525))

(declare-fun b!1759995 () Bool)

(declare-fun res!792095 () Bool)

(declare-fun e!1126384 () Bool)

(assert (=> b!1759995 (=> (not res!792095) (not e!1126384))))

(assert (=> b!1759995 (= res!792095 (= (head!4072 lt!679901) (head!4072 lt!679911)))))

(declare-fun b!1759994 () Bool)

(declare-fun e!1126383 () Bool)

(assert (=> b!1759994 (= e!1126383 e!1126384)))

(declare-fun res!792096 () Bool)

(assert (=> b!1759994 (=> (not res!792096) (not e!1126384))))

(assert (=> b!1759994 (= res!792096 (not ((_ is Nil!19370) lt!679911)))))

(declare-fun b!1759997 () Bool)

(declare-fun e!1126382 () Bool)

(assert (=> b!1759997 (= e!1126382 (>= (size!15386 lt!679911) (size!15386 lt!679901)))))

(declare-fun b!1759996 () Bool)

(assert (=> b!1759996 (= e!1126384 (isPrefix!1701 (tail!2631 lt!679901) (tail!2631 lt!679911)))))

(declare-fun d!537527 () Bool)

(assert (=> d!537527 e!1126382))

(declare-fun res!792094 () Bool)

(assert (=> d!537527 (=> res!792094 e!1126382)))

(declare-fun lt!680184 () Bool)

(assert (=> d!537527 (= res!792094 (not lt!680184))))

(assert (=> d!537527 (= lt!680184 e!1126383)))

(declare-fun res!792093 () Bool)

(assert (=> d!537527 (=> res!792093 e!1126383)))

(assert (=> d!537527 (= res!792093 ((_ is Nil!19370) lt!679901))))

(assert (=> d!537527 (= (isPrefix!1701 lt!679901 lt!679911) lt!680184)))

(assert (= (and d!537527 (not res!792093)) b!1759994))

(assert (= (and b!1759994 res!792096) b!1759995))

(assert (= (and b!1759995 res!792095) b!1759996))

(assert (= (and d!537527 (not res!792094)) b!1759997))

(assert (=> b!1759995 m!2175695))

(declare-fun m!2175701 () Bool)

(assert (=> b!1759995 m!2175701))

(declare-fun m!2175703 () Bool)

(assert (=> b!1759997 m!2175703))

(assert (=> b!1759997 m!2174911))

(assert (=> b!1759996 m!2175697))

(declare-fun m!2175705 () Bool)

(assert (=> b!1759996 m!2175705))

(assert (=> b!1759996 m!2175697))

(assert (=> b!1759996 m!2175705))

(declare-fun m!2175707 () Bool)

(assert (=> b!1759996 m!2175707))

(assert (=> b!1759373 d!537527))

(assert (=> b!1759373 d!537357))

(declare-fun d!537529 () Bool)

(declare-fun e!1126385 () Bool)

(assert (=> d!537529 e!1126385))

(declare-fun res!792097 () Bool)

(assert (=> d!537529 (=> (not res!792097) (not e!1126385))))

(declare-fun lt!680185 () List!19440)

(assert (=> d!537529 (= res!792097 (= (content!2796 lt!680185) ((_ map or) (content!2796 lt!679901) (content!2796 lt!679912))))))

(declare-fun e!1126386 () List!19440)

(assert (=> d!537529 (= lt!680185 e!1126386)))

(declare-fun c!286750 () Bool)

(assert (=> d!537529 (= c!286750 ((_ is Nil!19370) lt!679901))))

(assert (=> d!537529 (= (++!5285 lt!679901 lt!679912) lt!680185)))

(declare-fun b!1759999 () Bool)

(assert (=> b!1759999 (= e!1126386 (Cons!19370 (h!24771 lt!679901) (++!5285 (t!163927 lt!679901) lt!679912)))))

(declare-fun b!1760000 () Bool)

(declare-fun res!792098 () Bool)

(assert (=> b!1760000 (=> (not res!792098) (not e!1126385))))

(assert (=> b!1760000 (= res!792098 (= (size!15386 lt!680185) (+ (size!15386 lt!679901) (size!15386 lt!679912))))))

(declare-fun b!1760001 () Bool)

(assert (=> b!1760001 (= e!1126385 (or (not (= lt!679912 Nil!19370)) (= lt!680185 lt!679901)))))

(declare-fun b!1759998 () Bool)

(assert (=> b!1759998 (= e!1126386 lt!679912)))

(assert (= (and d!537529 c!286750) b!1759998))

(assert (= (and d!537529 (not c!286750)) b!1759999))

(assert (= (and d!537529 res!792097) b!1760000))

(assert (= (and b!1760000 res!792098) b!1760001))

(declare-fun m!2175709 () Bool)

(assert (=> d!537529 m!2175709))

(assert (=> d!537529 m!2175685))

(declare-fun m!2175711 () Bool)

(assert (=> d!537529 m!2175711))

(declare-fun m!2175713 () Bool)

(assert (=> b!1759999 m!2175713))

(declare-fun m!2175715 () Bool)

(assert (=> b!1760000 m!2175715))

(assert (=> b!1760000 m!2174911))

(declare-fun m!2175717 () Bool)

(assert (=> b!1760000 m!2175717))

(assert (=> b!1759374 d!537529))

(declare-fun b!1760002 () Bool)

(declare-fun e!1126391 () Bool)

(declare-fun lt!680186 () Bool)

(assert (=> b!1760002 (= e!1126391 (not lt!680186))))

(declare-fun b!1760003 () Bool)

(declare-fun e!1126389 () Bool)

(declare-fun e!1126387 () Bool)

(assert (=> b!1760003 (= e!1126389 e!1126387)))

(declare-fun res!792103 () Bool)

(assert (=> b!1760003 (=> res!792103 e!1126387)))

(declare-fun call!110628 () Bool)

(assert (=> b!1760003 (= res!792103 call!110628)))

(declare-fun bm!110623 () Bool)

(assert (=> bm!110623 (= call!110628 (isEmpty!12218 lt!679901))))

(declare-fun d!537531 () Bool)

(declare-fun e!1126390 () Bool)

(assert (=> d!537531 e!1126390))

(declare-fun c!286753 () Bool)

(assert (=> d!537531 (= c!286753 ((_ is EmptyExpr!4789) (regex!3461 (rule!5477 (_1!10891 lt!679914)))))))

(declare-fun e!1126392 () Bool)

(assert (=> d!537531 (= lt!680186 e!1126392)))

(declare-fun c!286751 () Bool)

(assert (=> d!537531 (= c!286751 (isEmpty!12218 lt!679901))))

(assert (=> d!537531 (validRegex!1933 (regex!3461 (rule!5477 (_1!10891 lt!679914))))))

(assert (=> d!537531 (= (matchR!2262 (regex!3461 (rule!5477 (_1!10891 lt!679914))) lt!679901) lt!680186)))

(declare-fun b!1760004 () Bool)

(assert (=> b!1760004 (= e!1126387 (not (= (head!4072 lt!679901) (c!286648 (regex!3461 (rule!5477 (_1!10891 lt!679914)))))))))

(declare-fun b!1760005 () Bool)

(declare-fun res!792106 () Bool)

(declare-fun e!1126393 () Bool)

(assert (=> b!1760005 (=> res!792106 e!1126393)))

(assert (=> b!1760005 (= res!792106 (not ((_ is ElementMatch!4789) (regex!3461 (rule!5477 (_1!10891 lt!679914))))))))

(assert (=> b!1760005 (= e!1126391 e!1126393)))

(declare-fun b!1760006 () Bool)

(assert (=> b!1760006 (= e!1126392 (nullable!1459 (regex!3461 (rule!5477 (_1!10891 lt!679914)))))))

(declare-fun b!1760007 () Bool)

(assert (=> b!1760007 (= e!1126393 e!1126389)))

(declare-fun res!792105 () Bool)

(assert (=> b!1760007 (=> (not res!792105) (not e!1126389))))

(assert (=> b!1760007 (= res!792105 (not lt!680186))))

(declare-fun b!1760008 () Bool)

(declare-fun e!1126388 () Bool)

(assert (=> b!1760008 (= e!1126388 (= (head!4072 lt!679901) (c!286648 (regex!3461 (rule!5477 (_1!10891 lt!679914))))))))

(declare-fun b!1760009 () Bool)

(declare-fun res!792104 () Bool)

(assert (=> b!1760009 (=> (not res!792104) (not e!1126388))))

(assert (=> b!1760009 (= res!792104 (not call!110628))))

(declare-fun b!1760010 () Bool)

(declare-fun res!792100 () Bool)

(assert (=> b!1760010 (=> res!792100 e!1126387)))

(assert (=> b!1760010 (= res!792100 (not (isEmpty!12218 (tail!2631 lt!679901))))))

(declare-fun b!1760011 () Bool)

(assert (=> b!1760011 (= e!1126390 e!1126391)))

(declare-fun c!286752 () Bool)

(assert (=> b!1760011 (= c!286752 ((_ is EmptyLang!4789) (regex!3461 (rule!5477 (_1!10891 lt!679914)))))))

(declare-fun b!1760012 () Bool)

(declare-fun res!792101 () Bool)

(assert (=> b!1760012 (=> res!792101 e!1126393)))

(assert (=> b!1760012 (= res!792101 e!1126388)))

(declare-fun res!792099 () Bool)

(assert (=> b!1760012 (=> (not res!792099) (not e!1126388))))

(assert (=> b!1760012 (= res!792099 lt!680186)))

(declare-fun b!1760013 () Bool)

(assert (=> b!1760013 (= e!1126390 (= lt!680186 call!110628))))

(declare-fun b!1760014 () Bool)

(declare-fun res!792102 () Bool)

(assert (=> b!1760014 (=> (not res!792102) (not e!1126388))))

(assert (=> b!1760014 (= res!792102 (isEmpty!12218 (tail!2631 lt!679901)))))

(declare-fun b!1760015 () Bool)

(assert (=> b!1760015 (= e!1126392 (matchR!2262 (derivativeStep!1228 (regex!3461 (rule!5477 (_1!10891 lt!679914))) (head!4072 lt!679901)) (tail!2631 lt!679901)))))

(assert (= (and d!537531 c!286751) b!1760006))

(assert (= (and d!537531 (not c!286751)) b!1760015))

(assert (= (and d!537531 c!286753) b!1760013))

(assert (= (and d!537531 (not c!286753)) b!1760011))

(assert (= (and b!1760011 c!286752) b!1760002))

(assert (= (and b!1760011 (not c!286752)) b!1760005))

(assert (= (and b!1760005 (not res!792106)) b!1760012))

(assert (= (and b!1760012 res!792099) b!1760009))

(assert (= (and b!1760009 res!792104) b!1760014))

(assert (= (and b!1760014 res!792102) b!1760008))

(assert (= (and b!1760012 (not res!792101)) b!1760007))

(assert (= (and b!1760007 res!792105) b!1760003))

(assert (= (and b!1760003 (not res!792103)) b!1760010))

(assert (= (and b!1760010 (not res!792100)) b!1760004))

(assert (= (or b!1760013 b!1760003 b!1760009) bm!110623))

(assert (=> b!1760015 m!2175695))

(assert (=> b!1760015 m!2175695))

(declare-fun m!2175719 () Bool)

(assert (=> b!1760015 m!2175719))

(assert (=> b!1760015 m!2175697))

(assert (=> b!1760015 m!2175719))

(assert (=> b!1760015 m!2175697))

(declare-fun m!2175721 () Bool)

(assert (=> b!1760015 m!2175721))

(declare-fun m!2175723 () Bool)

(assert (=> d!537531 m!2175723))

(declare-fun m!2175725 () Bool)

(assert (=> d!537531 m!2175725))

(assert (=> bm!110623 m!2175723))

(declare-fun m!2175727 () Bool)

(assert (=> b!1760006 m!2175727))

(assert (=> b!1760014 m!2175697))

(assert (=> b!1760014 m!2175697))

(declare-fun m!2175729 () Bool)

(assert (=> b!1760014 m!2175729))

(assert (=> b!1760010 m!2175697))

(assert (=> b!1760010 m!2175697))

(assert (=> b!1760010 m!2175729))

(assert (=> b!1760008 m!2175695))

(assert (=> b!1760004 m!2175695))

(assert (=> b!1759375 d!537531))

(declare-fun d!537533 () Bool)

(assert (=> d!537533 (= (inv!25147 (tag!3825 rule!422)) (= (mod (str.len (value!108310 (tag!3825 rule!422))) 2) 0))))

(assert (=> b!1759376 d!537533))

(declare-fun d!537535 () Bool)

(declare-fun res!792107 () Bool)

(declare-fun e!1126394 () Bool)

(assert (=> d!537535 (=> (not res!792107) (not e!1126394))))

(assert (=> d!537535 (= res!792107 (semiInverseModEq!1374 (toChars!4839 (transformation!3461 rule!422)) (toValue!4980 (transformation!3461 rule!422))))))

(assert (=> d!537535 (= (inv!25152 (transformation!3461 rule!422)) e!1126394)))

(declare-fun b!1760016 () Bool)

(assert (=> b!1760016 (= e!1126394 (equivClasses!1315 (toChars!4839 (transformation!3461 rule!422)) (toValue!4980 (transformation!3461 rule!422))))))

(assert (= (and d!537535 res!792107) b!1760016))

(declare-fun m!2175731 () Bool)

(assert (=> d!537535 m!2175731))

(declare-fun m!2175733 () Bool)

(assert (=> b!1760016 m!2175733))

(assert (=> b!1759376 d!537535))

(declare-fun d!537537 () Bool)

(assert (=> d!537537 (= (get!5892 lt!679909) (v!25402 lt!679909))))

(assert (=> b!1759377 d!537537))

(declare-fun d!537539 () Bool)

(declare-fun c!286756 () Bool)

(assert (=> d!537539 (= c!286756 (isEmpty!12218 (++!5285 lt!679905 (Cons!19370 (head!4072 suffix!1421) Nil!19370))))))

(declare-fun e!1126397 () Bool)

(assert (=> d!537539 (= (prefixMatch!672 (rulesRegex!817 thiss!24550 rules!3447) (++!5285 lt!679905 (Cons!19370 (head!4072 suffix!1421) Nil!19370))) e!1126397)))

(declare-fun b!1760021 () Bool)

(declare-fun lostCause!570 (Regex!4789) Bool)

(assert (=> b!1760021 (= e!1126397 (not (lostCause!570 (rulesRegex!817 thiss!24550 rules!3447))))))

(declare-fun b!1760022 () Bool)

(assert (=> b!1760022 (= e!1126397 (prefixMatch!672 (derivativeStep!1228 (rulesRegex!817 thiss!24550 rules!3447) (head!4072 (++!5285 lt!679905 (Cons!19370 (head!4072 suffix!1421) Nil!19370)))) (tail!2631 (++!5285 lt!679905 (Cons!19370 (head!4072 suffix!1421) Nil!19370)))))))

(assert (= (and d!537539 c!286756) b!1760021))

(assert (= (and d!537539 (not c!286756)) b!1760022))

(assert (=> d!537539 m!2174883))

(declare-fun m!2175735 () Bool)

(assert (=> d!537539 m!2175735))

(assert (=> b!1760021 m!2174879))

(declare-fun m!2175737 () Bool)

(assert (=> b!1760021 m!2175737))

(assert (=> b!1760022 m!2174883))

(declare-fun m!2175739 () Bool)

(assert (=> b!1760022 m!2175739))

(assert (=> b!1760022 m!2174879))

(assert (=> b!1760022 m!2175739))

(declare-fun m!2175741 () Bool)

(assert (=> b!1760022 m!2175741))

(assert (=> b!1760022 m!2174883))

(declare-fun m!2175743 () Bool)

(assert (=> b!1760022 m!2175743))

(assert (=> b!1760022 m!2175741))

(assert (=> b!1760022 m!2175743))

(declare-fun m!2175745 () Bool)

(assert (=> b!1760022 m!2175745))

(assert (=> b!1759378 d!537539))

(declare-fun d!537541 () Bool)

(declare-fun lt!680189 () Unit!33541)

(declare-fun lemma!383 (List!19441 LexerInterface!3090 List!19441) Unit!33541)

(assert (=> d!537541 (= lt!680189 (lemma!383 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70126 () Int)

(declare-datatypes ((List!19447 0))(
  ( (Nil!19377) (Cons!19377 (h!24778 Regex!4789) (t!163994 List!19447)) )
))
(declare-fun generalisedUnion!391 (List!19447) Regex!4789)

(declare-fun map!3993 (List!19441 Int) List!19447)

(assert (=> d!537541 (= (rulesRegex!817 thiss!24550 rules!3447) (generalisedUnion!391 (map!3993 rules!3447 lambda!70126)))))

(declare-fun bs!403999 () Bool)

(assert (= bs!403999 d!537541))

(declare-fun m!2175747 () Bool)

(assert (=> bs!403999 m!2175747))

(declare-fun m!2175749 () Bool)

(assert (=> bs!403999 m!2175749))

(assert (=> bs!403999 m!2175749))

(declare-fun m!2175751 () Bool)

(assert (=> bs!403999 m!2175751))

(assert (=> b!1759378 d!537541))

(declare-fun d!537543 () Bool)

(declare-fun e!1126398 () Bool)

(assert (=> d!537543 e!1126398))

(declare-fun res!792108 () Bool)

(assert (=> d!537543 (=> (not res!792108) (not e!1126398))))

(declare-fun lt!680190 () List!19440)

(assert (=> d!537543 (= res!792108 (= (content!2796 lt!680190) ((_ map or) (content!2796 lt!679905) (content!2796 (Cons!19370 (head!4072 suffix!1421) Nil!19370)))))))

(declare-fun e!1126399 () List!19440)

(assert (=> d!537543 (= lt!680190 e!1126399)))

(declare-fun c!286757 () Bool)

(assert (=> d!537543 (= c!286757 ((_ is Nil!19370) lt!679905))))

(assert (=> d!537543 (= (++!5285 lt!679905 (Cons!19370 (head!4072 suffix!1421) Nil!19370)) lt!680190)))

(declare-fun b!1760024 () Bool)

(assert (=> b!1760024 (= e!1126399 (Cons!19370 (h!24771 lt!679905) (++!5285 (t!163927 lt!679905) (Cons!19370 (head!4072 suffix!1421) Nil!19370))))))

(declare-fun b!1760025 () Bool)

(declare-fun res!792109 () Bool)

(assert (=> b!1760025 (=> (not res!792109) (not e!1126398))))

(assert (=> b!1760025 (= res!792109 (= (size!15386 lt!680190) (+ (size!15386 lt!679905) (size!15386 (Cons!19370 (head!4072 suffix!1421) Nil!19370)))))))

(declare-fun b!1760026 () Bool)

(assert (=> b!1760026 (= e!1126398 (or (not (= (Cons!19370 (head!4072 suffix!1421) Nil!19370) Nil!19370)) (= lt!680190 lt!679905)))))

(declare-fun b!1760023 () Bool)

(assert (=> b!1760023 (= e!1126399 (Cons!19370 (head!4072 suffix!1421) Nil!19370))))

(assert (= (and d!537543 c!286757) b!1760023))

(assert (= (and d!537543 (not c!286757)) b!1760024))

(assert (= (and d!537543 res!792108) b!1760025))

(assert (= (and b!1760025 res!792109) b!1760026))

(declare-fun m!2175753 () Bool)

(assert (=> d!537543 m!2175753))

(assert (=> d!537543 m!2175659))

(declare-fun m!2175755 () Bool)

(assert (=> d!537543 m!2175755))

(declare-fun m!2175757 () Bool)

(assert (=> b!1760024 m!2175757))

(declare-fun m!2175759 () Bool)

(assert (=> b!1760025 m!2175759))

(assert (=> b!1760025 m!2175349))

(declare-fun m!2175761 () Bool)

(assert (=> b!1760025 m!2175761))

(assert (=> b!1759378 d!537543))

(declare-fun d!537545 () Bool)

(assert (=> d!537545 (= (head!4072 suffix!1421) (h!24771 suffix!1421))))

(assert (=> b!1759378 d!537545))

(declare-fun d!537547 () Bool)

(assert (=> d!537547 (= (inv!25147 (tag!3825 (rule!5477 token!523))) (= (mod (str.len (value!108310 (tag!3825 (rule!5477 token!523)))) 2) 0))))

(assert (=> b!1759379 d!537547))

(declare-fun d!537549 () Bool)

(declare-fun res!792110 () Bool)

(declare-fun e!1126400 () Bool)

(assert (=> d!537549 (=> (not res!792110) (not e!1126400))))

(assert (=> d!537549 (= res!792110 (semiInverseModEq!1374 (toChars!4839 (transformation!3461 (rule!5477 token!523))) (toValue!4980 (transformation!3461 (rule!5477 token!523)))))))

(assert (=> d!537549 (= (inv!25152 (transformation!3461 (rule!5477 token!523))) e!1126400)))

(declare-fun b!1760027 () Bool)

(assert (=> b!1760027 (= e!1126400 (equivClasses!1315 (toChars!4839 (transformation!3461 (rule!5477 token!523))) (toValue!4980 (transformation!3461 (rule!5477 token!523)))))))

(assert (= (and d!537549 res!792110) b!1760027))

(declare-fun m!2175763 () Bool)

(assert (=> d!537549 m!2175763))

(declare-fun m!2175765 () Bool)

(assert (=> b!1760027 m!2175765))

(assert (=> b!1759379 d!537549))

(declare-fun d!537551 () Bool)

(declare-fun lt!680193 () Int)

(assert (=> d!537551 (>= lt!680193 0)))

(declare-fun e!1126403 () Int)

(assert (=> d!537551 (= lt!680193 e!1126403)))

(declare-fun c!286761 () Bool)

(assert (=> d!537551 (= c!286761 ((_ is Nil!19370) lt!679901))))

(assert (=> d!537551 (= (size!15386 lt!679901) lt!680193)))

(declare-fun b!1760032 () Bool)

(assert (=> b!1760032 (= e!1126403 0)))

(declare-fun b!1760033 () Bool)

(assert (=> b!1760033 (= e!1126403 (+ 1 (size!15386 (t!163927 lt!679901))))))

(assert (= (and d!537551 c!286761) b!1760032))

(assert (= (and d!537551 (not c!286761)) b!1760033))

(declare-fun m!2175767 () Bool)

(assert (=> b!1760033 m!2175767))

(assert (=> b!1759359 d!537551))

(declare-fun d!537553 () Bool)

(declare-fun lt!680196 () List!19440)

(assert (=> d!537553 (= (++!5285 lt!679901 lt!680196) lt!679897)))

(declare-fun e!1126406 () List!19440)

(assert (=> d!537553 (= lt!680196 e!1126406)))

(declare-fun c!286764 () Bool)

(assert (=> d!537553 (= c!286764 ((_ is Cons!19370) lt!679901))))

(assert (=> d!537553 (>= (size!15386 lt!679897) (size!15386 lt!679901))))

(assert (=> d!537553 (= (getSuffix!868 lt!679897 lt!679901) lt!680196)))

(declare-fun b!1760038 () Bool)

(assert (=> b!1760038 (= e!1126406 (getSuffix!868 (tail!2631 lt!679897) (t!163927 lt!679901)))))

(declare-fun b!1760039 () Bool)

(assert (=> b!1760039 (= e!1126406 lt!679897)))

(assert (= (and d!537553 c!286764) b!1760038))

(assert (= (and d!537553 (not c!286764)) b!1760039))

(declare-fun m!2175769 () Bool)

(assert (=> d!537553 m!2175769))

(assert (=> d!537553 m!2175399))

(assert (=> d!537553 m!2174911))

(assert (=> b!1760038 m!2175649))

(assert (=> b!1760038 m!2175649))

(declare-fun m!2175771 () Bool)

(assert (=> b!1760038 m!2175771))

(assert (=> b!1759359 d!537553))

(declare-fun d!537555 () Bool)

(assert (=> d!537555 (= (apply!5261 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) (seqFromList!2430 lt!679901)) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (seqFromList!2430 lt!679901)))))

(declare-fun b_lambda!56925 () Bool)

(assert (=> (not b_lambda!56925) (not d!537555)))

(declare-fun tb!105951 () Bool)

(declare-fun t!163973 () Bool)

(assert (=> (and b!1759370 (= (toValue!4980 (transformation!3461 (h!24772 rules!3447))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163973) tb!105951))

(declare-fun result!127478 () Bool)

(assert (=> tb!105951 (= result!127478 (inv!21 (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (seqFromList!2430 lt!679901))))))

(declare-fun m!2175773 () Bool)

(assert (=> tb!105951 m!2175773))

(assert (=> d!537555 t!163973))

(declare-fun b_and!132683 () Bool)

(assert (= b_and!132631 (and (=> t!163973 result!127478) b_and!132683)))

(declare-fun t!163975 () Bool)

(declare-fun tb!105953 () Bool)

(assert (=> (and b!1759366 (= (toValue!4980 (transformation!3461 rule!422)) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163975) tb!105953))

(declare-fun result!127480 () Bool)

(assert (= result!127480 result!127478))

(assert (=> d!537555 t!163975))

(declare-fun b_and!132685 () Bool)

(assert (= b_and!132633 (and (=> t!163975 result!127480) b_and!132685)))

(declare-fun t!163977 () Bool)

(declare-fun tb!105955 () Bool)

(assert (=> (and b!1759364 (= (toValue!4980 (transformation!3461 (rule!5477 token!523))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163977) tb!105955))

(declare-fun result!127482 () Bool)

(assert (= result!127482 result!127478))

(assert (=> d!537555 t!163977))

(declare-fun b_and!132687 () Bool)

(assert (= b_and!132635 (and (=> t!163977 result!127482) b_and!132687)))

(assert (=> d!537555 m!2174907))

(declare-fun m!2175775 () Bool)

(assert (=> d!537555 m!2175775))

(assert (=> b!1759359 d!537555))

(declare-fun b!1760058 () Bool)

(declare-fun res!792129 () Bool)

(declare-fun e!1126417 () Bool)

(assert (=> b!1760058 (=> (not res!792129) (not e!1126417))))

(declare-fun lt!680207 () Option!3944)

(assert (=> b!1760058 (= res!792129 (< (size!15386 (_2!10891 (get!5892 lt!680207))) (size!15386 lt!679897)))))

(declare-fun b!1760059 () Bool)

(declare-fun e!1126418 () Bool)

(assert (=> b!1760059 (= e!1126418 e!1126417)))

(declare-fun res!792131 () Bool)

(assert (=> b!1760059 (=> (not res!792131) (not e!1126417))))

(assert (=> b!1760059 (= res!792131 (matchR!2262 (regex!3461 (rule!5477 (_1!10891 lt!679914))) (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680207))))))))

(declare-fun b!1760060 () Bool)

(declare-fun e!1126419 () Option!3944)

(assert (=> b!1760060 (= e!1126419 None!3943)))

(declare-fun b!1760061 () Bool)

(declare-datatypes ((tuple2!18986 0))(
  ( (tuple2!18987 (_1!10895 List!19440) (_2!10895 List!19440)) )
))
(declare-fun lt!680211 () tuple2!18986)

(assert (=> b!1760061 (= e!1126419 (Some!3943 (tuple2!18979 (Token!6489 (apply!5261 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) (seqFromList!2430 (_1!10895 lt!680211))) (rule!5477 (_1!10891 lt!679914)) (size!15387 (seqFromList!2430 (_1!10895 lt!680211))) (_1!10895 lt!680211)) (_2!10895 lt!680211))))))

(declare-fun lt!680210 () Unit!33541)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!421 (Regex!4789 List!19440) Unit!33541)

(assert (=> b!1760061 (= lt!680210 (longestMatchIsAcceptedByMatchOrIsEmpty!421 (regex!3461 (rule!5477 (_1!10891 lt!679914))) lt!679897))))

(declare-fun res!792126 () Bool)

(declare-fun findLongestMatchInner!437 (Regex!4789 List!19440 Int List!19440 List!19440 Int) tuple2!18986)

(assert (=> b!1760061 (= res!792126 (isEmpty!12218 (_1!10895 (findLongestMatchInner!437 (regex!3461 (rule!5477 (_1!10891 lt!679914))) Nil!19370 (size!15386 Nil!19370) lt!679897 lt!679897 (size!15386 lt!679897)))))))

(declare-fun e!1126416 () Bool)

(assert (=> b!1760061 (=> res!792126 e!1126416)))

(assert (=> b!1760061 e!1126416))

(declare-fun lt!680209 () Unit!33541)

(assert (=> b!1760061 (= lt!680209 lt!680210)))

(declare-fun lt!680208 () Unit!33541)

(assert (=> b!1760061 (= lt!680208 (lemmaSemiInverse!599 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) (seqFromList!2430 (_1!10895 lt!680211))))))

(declare-fun d!537557 () Bool)

(assert (=> d!537557 e!1126418))

(declare-fun res!792128 () Bool)

(assert (=> d!537557 (=> res!792128 e!1126418)))

(assert (=> d!537557 (= res!792128 (isEmpty!12222 lt!680207))))

(assert (=> d!537557 (= lt!680207 e!1126419)))

(declare-fun c!286767 () Bool)

(assert (=> d!537557 (= c!286767 (isEmpty!12218 (_1!10895 lt!680211)))))

(declare-fun findLongestMatch!364 (Regex!4789 List!19440) tuple2!18986)

(assert (=> d!537557 (= lt!680211 (findLongestMatch!364 (regex!3461 (rule!5477 (_1!10891 lt!679914))) lt!679897))))

(assert (=> d!537557 (ruleValid!959 thiss!24550 (rule!5477 (_1!10891 lt!679914)))))

(assert (=> d!537557 (= (maxPrefixOneRule!1013 thiss!24550 (rule!5477 (_1!10891 lt!679914)) lt!679897) lt!680207)))

(declare-fun b!1760062 () Bool)

(assert (=> b!1760062 (= e!1126417 (= (size!15385 (_1!10891 (get!5892 lt!680207))) (size!15386 (originalCharacters!4275 (_1!10891 (get!5892 lt!680207))))))))

(declare-fun b!1760063 () Bool)

(declare-fun res!792130 () Bool)

(assert (=> b!1760063 (=> (not res!792130) (not e!1126417))))

(assert (=> b!1760063 (= res!792130 (= (rule!5477 (_1!10891 (get!5892 lt!680207))) (rule!5477 (_1!10891 lt!679914))))))

(declare-fun b!1760064 () Bool)

(declare-fun res!792127 () Bool)

(assert (=> b!1760064 (=> (not res!792127) (not e!1126417))))

(assert (=> b!1760064 (= res!792127 (= (++!5285 (list!7855 (charsOf!2110 (_1!10891 (get!5892 lt!680207)))) (_2!10891 (get!5892 lt!680207))) lt!679897))))

(declare-fun b!1760065 () Bool)

(declare-fun res!792125 () Bool)

(assert (=> b!1760065 (=> (not res!792125) (not e!1126417))))

(assert (=> b!1760065 (= res!792125 (= (value!108311 (_1!10891 (get!5892 lt!680207))) (apply!5261 (transformation!3461 (rule!5477 (_1!10891 (get!5892 lt!680207)))) (seqFromList!2430 (originalCharacters!4275 (_1!10891 (get!5892 lt!680207)))))))))

(declare-fun b!1760066 () Bool)

(assert (=> b!1760066 (= e!1126416 (matchR!2262 (regex!3461 (rule!5477 (_1!10891 lt!679914))) (_1!10895 (findLongestMatchInner!437 (regex!3461 (rule!5477 (_1!10891 lt!679914))) Nil!19370 (size!15386 Nil!19370) lt!679897 lt!679897 (size!15386 lt!679897)))))))

(assert (= (and d!537557 c!286767) b!1760060))

(assert (= (and d!537557 (not c!286767)) b!1760061))

(assert (= (and b!1760061 (not res!792126)) b!1760066))

(assert (= (and d!537557 (not res!792128)) b!1760059))

(assert (= (and b!1760059 res!792131) b!1760064))

(assert (= (and b!1760064 res!792127) b!1760058))

(assert (= (and b!1760058 res!792129) b!1760063))

(assert (= (and b!1760063 res!792130) b!1760065))

(assert (= (and b!1760065 res!792125) b!1760062))

(declare-fun m!2175777 () Bool)

(assert (=> b!1760062 m!2175777))

(declare-fun m!2175779 () Bool)

(assert (=> b!1760062 m!2175779))

(declare-fun m!2175781 () Bool)

(assert (=> d!537557 m!2175781))

(declare-fun m!2175783 () Bool)

(assert (=> d!537557 m!2175783))

(declare-fun m!2175785 () Bool)

(assert (=> d!537557 m!2175785))

(declare-fun m!2175787 () Bool)

(assert (=> d!537557 m!2175787))

(assert (=> b!1760063 m!2175777))

(assert (=> b!1760064 m!2175777))

(declare-fun m!2175789 () Bool)

(assert (=> b!1760064 m!2175789))

(assert (=> b!1760064 m!2175789))

(declare-fun m!2175791 () Bool)

(assert (=> b!1760064 m!2175791))

(assert (=> b!1760064 m!2175791))

(declare-fun m!2175793 () Bool)

(assert (=> b!1760064 m!2175793))

(assert (=> b!1760059 m!2175777))

(assert (=> b!1760059 m!2175789))

(assert (=> b!1760059 m!2175789))

(assert (=> b!1760059 m!2175791))

(assert (=> b!1760059 m!2175791))

(declare-fun m!2175795 () Bool)

(assert (=> b!1760059 m!2175795))

(assert (=> b!1760058 m!2175777))

(declare-fun m!2175797 () Bool)

(assert (=> b!1760058 m!2175797))

(assert (=> b!1760058 m!2175399))

(assert (=> b!1760065 m!2175777))

(declare-fun m!2175799 () Bool)

(assert (=> b!1760065 m!2175799))

(assert (=> b!1760065 m!2175799))

(declare-fun m!2175801 () Bool)

(assert (=> b!1760065 m!2175801))

(declare-fun m!2175803 () Bool)

(assert (=> b!1760061 m!2175803))

(declare-fun m!2175805 () Bool)

(assert (=> b!1760061 m!2175805))

(declare-fun m!2175807 () Bool)

(assert (=> b!1760061 m!2175807))

(declare-fun m!2175809 () Bool)

(assert (=> b!1760061 m!2175809))

(assert (=> b!1760061 m!2175805))

(declare-fun m!2175811 () Bool)

(assert (=> b!1760061 m!2175811))

(declare-fun m!2175813 () Bool)

(assert (=> b!1760061 m!2175813))

(assert (=> b!1760061 m!2175805))

(declare-fun m!2175815 () Bool)

(assert (=> b!1760061 m!2175815))

(assert (=> b!1760061 m!2175805))

(assert (=> b!1760061 m!2175803))

(assert (=> b!1760061 m!2175399))

(declare-fun m!2175817 () Bool)

(assert (=> b!1760061 m!2175817))

(assert (=> b!1760061 m!2175399))

(assert (=> b!1760066 m!2175803))

(assert (=> b!1760066 m!2175399))

(assert (=> b!1760066 m!2175803))

(assert (=> b!1760066 m!2175399))

(assert (=> b!1760066 m!2175817))

(declare-fun m!2175819 () Bool)

(assert (=> b!1760066 m!2175819))

(assert (=> b!1759359 d!537557))

(declare-fun d!537559 () Bool)

(assert (=> d!537559 (= (maxPrefixOneRule!1013 thiss!24550 (rule!5477 (_1!10891 lt!679914)) lt!679897) (Some!3943 (tuple2!18979 (Token!6489 (apply!5261 (transformation!3461 (rule!5477 (_1!10891 lt!679914))) (seqFromList!2430 lt!679901)) (rule!5477 (_1!10891 lt!679914)) (size!15386 lt!679901) lt!679901) (_2!10891 lt!679914))))))

(declare-fun lt!680214 () Unit!33541)

(declare-fun choose!10892 (LexerInterface!3090 List!19441 List!19440 List!19440 List!19440 Rule!6722) Unit!33541)

(assert (=> d!537559 (= lt!680214 (choose!10892 thiss!24550 rules!3447 lt!679901 lt!679897 (_2!10891 lt!679914) (rule!5477 (_1!10891 lt!679914))))))

(assert (=> d!537559 (not (isEmpty!12219 rules!3447))))

(assert (=> d!537559 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!391 thiss!24550 rules!3447 lt!679901 lt!679897 (_2!10891 lt!679914) (rule!5477 (_1!10891 lt!679914))) lt!680214)))

(declare-fun bs!404000 () Bool)

(assert (= bs!404000 d!537559))

(assert (=> bs!404000 m!2174907))

(assert (=> bs!404000 m!2174917))

(declare-fun m!2175821 () Bool)

(assert (=> bs!404000 m!2175821))

(assert (=> bs!404000 m!2174909))

(assert (=> bs!404000 m!2174919))

(assert (=> bs!404000 m!2174911))

(assert (=> bs!404000 m!2174907))

(assert (=> b!1759359 d!537559))

(declare-fun d!537561 () Bool)

(assert (=> d!537561 (= (seqFromList!2430 lt!679901) (fromListB!1108 lt!679901))))

(declare-fun bs!404001 () Bool)

(assert (= bs!404001 d!537561))

(declare-fun m!2175823 () Bool)

(assert (=> bs!404001 m!2175823))

(assert (=> b!1759359 d!537561))

(declare-fun d!537563 () Bool)

(declare-fun c!286768 () Bool)

(assert (=> d!537563 (= c!286768 ((_ is Node!6443) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))))

(declare-fun e!1126420 () Bool)

(assert (=> d!537563 (= (inv!25154 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))) e!1126420)))

(declare-fun b!1760067 () Bool)

(assert (=> b!1760067 (= e!1126420 (inv!25158 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))))

(declare-fun b!1760068 () Bool)

(declare-fun e!1126421 () Bool)

(assert (=> b!1760068 (= e!1126420 e!1126421)))

(declare-fun res!792132 () Bool)

(assert (=> b!1760068 (= res!792132 (not ((_ is Leaf!9394) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))))))

(assert (=> b!1760068 (=> res!792132 e!1126421)))

(declare-fun b!1760069 () Bool)

(assert (=> b!1760069 (= e!1126421 (inv!25159 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))))))

(assert (= (and d!537563 c!286768) b!1760067))

(assert (= (and d!537563 (not c!286768)) b!1760068))

(assert (= (and b!1760068 (not res!792132)) b!1760069))

(declare-fun m!2175825 () Bool)

(assert (=> b!1760067 m!2175825))

(declare-fun m!2175827 () Bool)

(assert (=> b!1760069 m!2175827))

(assert (=> b!1759403 d!537563))

(declare-fun b!1760074 () Bool)

(declare-fun e!1126424 () Bool)

(declare-fun tp!500028 () Bool)

(assert (=> b!1760074 (= e!1126424 (and tp_is_empty!7821 tp!500028))))

(assert (=> b!1759371 (= tp!499964 e!1126424)))

(assert (= (and b!1759371 ((_ is Cons!19370) (t!163927 suffix!1421))) b!1760074))

(declare-fun b!1760088 () Bool)

(declare-fun e!1126427 () Bool)

(declare-fun tp!500039 () Bool)

(declare-fun tp!500041 () Bool)

(assert (=> b!1760088 (= e!1126427 (and tp!500039 tp!500041))))

(declare-fun b!1760085 () Bool)

(assert (=> b!1760085 (= e!1126427 tp_is_empty!7821)))

(assert (=> b!1759376 (= tp!499960 e!1126427)))

(declare-fun b!1760087 () Bool)

(declare-fun tp!500042 () Bool)

(assert (=> b!1760087 (= e!1126427 tp!500042)))

(declare-fun b!1760086 () Bool)

(declare-fun tp!500040 () Bool)

(declare-fun tp!500043 () Bool)

(assert (=> b!1760086 (= e!1126427 (and tp!500040 tp!500043))))

(assert (= (and b!1759376 ((_ is ElementMatch!4789) (regex!3461 rule!422))) b!1760085))

(assert (= (and b!1759376 ((_ is Concat!8341) (regex!3461 rule!422))) b!1760086))

(assert (= (and b!1759376 ((_ is Star!4789) (regex!3461 rule!422))) b!1760087))

(assert (= (and b!1759376 ((_ is Union!4789) (regex!3461 rule!422))) b!1760088))

(declare-fun b!1760089 () Bool)

(declare-fun e!1126428 () Bool)

(declare-fun tp!500044 () Bool)

(assert (=> b!1760089 (= e!1126428 (and tp_is_empty!7821 tp!500044))))

(assert (=> b!1759367 (= tp!499955 e!1126428)))

(assert (= (and b!1759367 ((_ is Cons!19370) (originalCharacters!4275 token!523))) b!1760089))

(declare-fun b!1760093 () Bool)

(declare-fun e!1126429 () Bool)

(declare-fun tp!500045 () Bool)

(declare-fun tp!500047 () Bool)

(assert (=> b!1760093 (= e!1126429 (and tp!500045 tp!500047))))

(declare-fun b!1760090 () Bool)

(assert (=> b!1760090 (= e!1126429 tp_is_empty!7821)))

(assert (=> b!1759363 (= tp!499961 e!1126429)))

(declare-fun b!1760092 () Bool)

(declare-fun tp!500048 () Bool)

(assert (=> b!1760092 (= e!1126429 tp!500048)))

(declare-fun b!1760091 () Bool)

(declare-fun tp!500046 () Bool)

(declare-fun tp!500049 () Bool)

(assert (=> b!1760091 (= e!1126429 (and tp!500046 tp!500049))))

(assert (= (and b!1759363 ((_ is ElementMatch!4789) (regex!3461 (h!24772 rules!3447)))) b!1760090))

(assert (= (and b!1759363 ((_ is Concat!8341) (regex!3461 (h!24772 rules!3447)))) b!1760091))

(assert (= (and b!1759363 ((_ is Star!4789) (regex!3461 (h!24772 rules!3447)))) b!1760092))

(assert (= (and b!1759363 ((_ is Union!4789) (regex!3461 (h!24772 rules!3447)))) b!1760093))

(declare-fun b!1760097 () Bool)

(declare-fun e!1126430 () Bool)

(declare-fun tp!500050 () Bool)

(declare-fun tp!500052 () Bool)

(assert (=> b!1760097 (= e!1126430 (and tp!500050 tp!500052))))

(declare-fun b!1760094 () Bool)

(assert (=> b!1760094 (= e!1126430 tp_is_empty!7821)))

(assert (=> b!1759379 (= tp!499959 e!1126430)))

(declare-fun b!1760096 () Bool)

(declare-fun tp!500053 () Bool)

(assert (=> b!1760096 (= e!1126430 tp!500053)))

(declare-fun b!1760095 () Bool)

(declare-fun tp!500051 () Bool)

(declare-fun tp!500054 () Bool)

(assert (=> b!1760095 (= e!1126430 (and tp!500051 tp!500054))))

(assert (= (and b!1759379 ((_ is ElementMatch!4789) (regex!3461 (rule!5477 token!523)))) b!1760094))

(assert (= (and b!1759379 ((_ is Concat!8341) (regex!3461 (rule!5477 token!523)))) b!1760095))

(assert (= (and b!1759379 ((_ is Star!4789) (regex!3461 (rule!5477 token!523)))) b!1760096))

(assert (= (and b!1759379 ((_ is Union!4789) (regex!3461 (rule!5477 token!523)))) b!1760097))

(declare-fun b!1760106 () Bool)

(declare-fun e!1126436 () Bool)

(declare-fun tp!500062 () Bool)

(declare-fun tp!500061 () Bool)

(assert (=> b!1760106 (= e!1126436 (and (inv!25154 (left!15507 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))) tp!500061 (inv!25154 (right!15837 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))) tp!500062))))

(declare-fun b!1760108 () Bool)

(declare-fun e!1126435 () Bool)

(declare-fun tp!500063 () Bool)

(assert (=> b!1760108 (= e!1126435 tp!500063)))

(declare-fun b!1760107 () Bool)

(declare-fun inv!25161 (IArray!12891) Bool)

(assert (=> b!1760107 (= e!1126436 (and (inv!25161 (xs!9319 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))) e!1126435))))

(assert (=> b!1759403 (= tp!499969 (and (inv!25154 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899)))) e!1126436))))

(assert (= (and b!1759403 ((_ is Node!6443) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))) b!1760106))

(assert (= b!1760107 b!1760108))

(assert (= (and b!1759403 ((_ is Leaf!9394) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (dynLambda!9321 (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) lt!679899))))) b!1760107))

(declare-fun m!2175829 () Bool)

(assert (=> b!1760106 m!2175829))

(declare-fun m!2175831 () Bool)

(assert (=> b!1760106 m!2175831))

(declare-fun m!2175833 () Bool)

(assert (=> b!1760107 m!2175833))

(assert (=> b!1759403 m!2174821))

(declare-fun b!1760119 () Bool)

(declare-fun b_free!48655 () Bool)

(declare-fun b_next!49359 () Bool)

(assert (=> b!1760119 (= b_free!48655 (not b_next!49359))))

(declare-fun tb!105957 () Bool)

(declare-fun t!163979 () Bool)

(assert (=> (and b!1760119 (= (toValue!4980 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163979) tb!105957))

(declare-fun result!127492 () Bool)

(assert (= result!127492 result!127414))

(assert (=> d!537337 t!163979))

(declare-fun tb!105959 () Bool)

(declare-fun t!163981 () Bool)

(assert (=> (and b!1760119 (= (toValue!4980 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163981) tb!105959))

(declare-fun result!127494 () Bool)

(assert (= result!127494 result!127478))

(assert (=> d!537555 t!163981))

(assert (=> b!1759361 t!163979))

(assert (=> d!537417 t!163979))

(assert (=> d!537421 t!163979))

(declare-fun t!163983 () Bool)

(declare-fun tb!105961 () Bool)

(assert (=> (and b!1760119 (= (toValue!4980 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163983) tb!105961))

(declare-fun result!127496 () Bool)

(assert (= result!127496 result!127434))

(assert (=> d!537417 t!163983))

(declare-fun tp!500075 () Bool)

(declare-fun b_and!132689 () Bool)

(assert (=> b!1760119 (= tp!500075 (and (=> t!163983 result!127496) (=> t!163981 result!127494) (=> t!163979 result!127492) b_and!132689))))

(declare-fun b_free!48657 () Bool)

(declare-fun b_next!49361 () Bool)

(assert (=> b!1760119 (= b_free!48657 (not b_next!49361))))

(declare-fun tb!105963 () Bool)

(declare-fun t!163985 () Bool)

(assert (=> (and b!1760119 (= (toChars!4839 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163985) tb!105963))

(declare-fun result!127498 () Bool)

(assert (= result!127498 result!127406))

(assert (=> d!537337 t!163985))

(declare-fun t!163987 () Bool)

(declare-fun tb!105965 () Bool)

(assert (=> (and b!1760119 (= (toChars!4839 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914))))) t!163987) tb!105965))

(declare-fun result!127500 () Bool)

(assert (= result!127500 result!127422))

(assert (=> d!537357 t!163987))

(declare-fun tb!105967 () Bool)

(declare-fun t!163989 () Bool)

(assert (=> (and b!1760119 (= (toChars!4839 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toChars!4839 (transformation!3461 (rule!5477 token!523)))) t!163989) tb!105967))

(declare-fun result!127502 () Bool)

(assert (= result!127502 result!127440))

(assert (=> d!537433 t!163989))

(assert (=> b!1759361 t!163985))

(assert (=> b!1759365 t!163987))

(assert (=> b!1759749 t!163989))

(declare-fun b_and!132691 () Bool)

(declare-fun tp!500074 () Bool)

(assert (=> b!1760119 (= tp!500074 (and (=> t!163985 result!127498) (=> t!163987 result!127500) (=> t!163989 result!127502) b_and!132691))))

(declare-fun e!1126447 () Bool)

(assert (=> b!1760119 (= e!1126447 (and tp!500075 tp!500074))))

(declare-fun e!1126448 () Bool)

(declare-fun tp!500073 () Bool)

(declare-fun b!1760118 () Bool)

(assert (=> b!1760118 (= e!1126448 (and tp!500073 (inv!25147 (tag!3825 (h!24772 (t!163928 rules!3447)))) (inv!25152 (transformation!3461 (h!24772 (t!163928 rules!3447)))) e!1126447))))

(declare-fun b!1760117 () Bool)

(declare-fun e!1126445 () Bool)

(declare-fun tp!500072 () Bool)

(assert (=> b!1760117 (= e!1126445 (and e!1126448 tp!500072))))

(assert (=> b!1759381 (= tp!499963 e!1126445)))

(assert (= b!1760118 b!1760119))

(assert (= b!1760117 b!1760118))

(assert (= (and b!1759381 ((_ is Cons!19371) (t!163928 rules!3447))) b!1760117))

(declare-fun m!2175835 () Bool)

(assert (=> b!1760118 m!2175835))

(declare-fun m!2175837 () Bool)

(assert (=> b!1760118 m!2175837))

(declare-fun e!1126450 () Bool)

(declare-fun tp!500076 () Bool)

(declare-fun tp!500077 () Bool)

(declare-fun b!1760120 () Bool)

(assert (=> b!1760120 (= e!1126450 (and (inv!25154 (left!15507 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))))) tp!500076 (inv!25154 (right!15837 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))))) tp!500077))))

(declare-fun b!1760122 () Bool)

(declare-fun e!1126449 () Bool)

(declare-fun tp!500078 () Bool)

(assert (=> b!1760122 (= e!1126449 tp!500078)))

(declare-fun b!1760121 () Bool)

(assert (=> b!1760121 (= e!1126450 (and (inv!25161 (xs!9319 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))))) e!1126449))))

(assert (=> b!1759406 (= tp!499970 (and (inv!25154 (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914))))) e!1126450))))

(assert (= (and b!1759406 ((_ is Node!6443) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))))) b!1760120))

(assert (= b!1760121 b!1760122))

(assert (= (and b!1759406 ((_ is Leaf!9394) (c!286649 (dynLambda!9320 (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))) (value!108311 (_1!10891 lt!679914)))))) b!1760121))

(declare-fun m!2175839 () Bool)

(assert (=> b!1760120 m!2175839))

(declare-fun m!2175841 () Bool)

(assert (=> b!1760120 m!2175841))

(declare-fun m!2175843 () Bool)

(assert (=> b!1760121 m!2175843))

(assert (=> b!1759406 m!2174827))

(declare-fun b_lambda!56927 () Bool)

(assert (= b_lambda!56903 (or (and b!1759370 b_free!48641 (= (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toChars!4839 (transformation!3461 (rule!5477 token!523))))) (and b!1759366 b_free!48645 (= (toChars!4839 (transformation!3461 rule!422)) (toChars!4839 (transformation!3461 (rule!5477 token!523))))) (and b!1759364 b_free!48649) (and b!1760119 b_free!48657 (= (toChars!4839 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toChars!4839 (transformation!3461 (rule!5477 token!523))))) b_lambda!56927)))

(declare-fun b_lambda!56929 () Bool)

(assert (= b_lambda!56877 (or (and b!1759370 b_free!48639 (= (toValue!4980 (transformation!3461 (h!24772 rules!3447))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1759366 b_free!48643 (= (toValue!4980 (transformation!3461 rule!422)) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1759364 b_free!48647 (= (toValue!4980 (transformation!3461 (rule!5477 token!523))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1760119 b_free!48655 (= (toValue!4980 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toValue!4980 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) b_lambda!56929)))

(declare-fun b_lambda!56931 () Bool)

(assert (= b_lambda!56879 (or (and b!1759370 b_free!48641 (= (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1759366 b_free!48645 (= (toChars!4839 (transformation!3461 rule!422)) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1759364 b_free!48649 (= (toChars!4839 (transformation!3461 (rule!5477 token!523))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1760119 b_free!48657 (= (toChars!4839 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) b_lambda!56931)))

(declare-fun b_lambda!56933 () Bool)

(assert (= b_lambda!56901 (or (and b!1759370 b_free!48641 (= (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toChars!4839 (transformation!3461 (rule!5477 token!523))))) (and b!1759366 b_free!48645 (= (toChars!4839 (transformation!3461 rule!422)) (toChars!4839 (transformation!3461 (rule!5477 token!523))))) (and b!1759364 b_free!48649) (and b!1760119 b_free!48657 (= (toChars!4839 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toChars!4839 (transformation!3461 (rule!5477 token!523))))) b_lambda!56933)))

(declare-fun b_lambda!56935 () Bool)

(assert (= b_lambda!56875 (or (and b!1759370 b_free!48641 (= (toChars!4839 (transformation!3461 (h!24772 rules!3447))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1759366 b_free!48645 (= (toChars!4839 (transformation!3461 rule!422)) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1759364 b_free!48649 (= (toChars!4839 (transformation!3461 (rule!5477 token!523))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) (and b!1760119 b_free!48657 (= (toChars!4839 (transformation!3461 (h!24772 (t!163928 rules!3447)))) (toChars!4839 (transformation!3461 (rule!5477 (_1!10891 lt!679914)))))) b_lambda!56935)))

(check-sat (not b!1760088) (not b!1759755) (not d!537375) (not d!537441) (not b!1760027) (not b_lambda!56933) (not bm!110612) (not d!537357) (not d!537405) b_and!132643 (not b!1759569) (not d!537561) (not b!1760008) (not b!1760016) (not d!537519) (not b!1760014) (not b!1759966) (not b!1760087) (not b!1759991) (not d!537515) (not b_lambda!56897) (not b_lambda!56895) (not b_next!49361) (not b!1759585) (not d!537541) (not b!1760093) (not b_next!49353) (not b_lambda!56883) (not tb!105951) (not b!1759751) b_and!132645 b_and!132689 (not b!1759740) (not b!1759687) (not b!1760000) (not b_next!49343) (not b!1759978) (not b!1759953) (not b!1759993) (not d!537559) (not b!1759636) (not bm!110620) (not tb!105921) (not bm!110611) (not d!537339) (not b!1759744) (not b_lambda!56899) (not b!1760122) (not b!1760091) (not d!537337) (not b!1759799) (not b!1759739) (not b!1759685) (not d!537539) (not b!1759988) (not b!1759573) (not b!1760107) (not b!1759753) (not b!1759999) (not d!537447) (not b!1759757) tp_is_empty!7821 (not b!1759992) (not d!537381) (not b!1760097) (not bm!110621) (not d!537513) (not b!1759995) (not b!1759987) (not d!537333) (not b_next!49351) (not b_next!49359) (not b!1759741) (not b!1759952) (not d!537531) (not d!537553) (not d!537335) (not d!537431) (not b!1760108) (not b!1759665) (not b!1760117) (not b!1759575) (not b!1759759) (not b!1759756) (not b!1760021) (not b!1759803) (not d!537535) (not d!537367) (not b!1759579) (not b!1760010) (not d!537409) (not b!1760089) (not b!1760106) (not b!1760059) (not b!1760120) (not b!1759758) (not d!537433) (not d!537543) (not d!537523) (not b!1759663) (not b!1759967) (not b!1759406) b_and!132687 (not d!537371) (not b!1759735) (not b!1760062) (not b!1760061) (not b!1759583) (not b!1760058) (not b!1759589) (not d!537517) (not d!537373) (not b!1759965) (not b!1759593) (not b_lambda!56887) (not b!1759750) (not b!1759801) (not d!537365) (not d!537355) (not b!1759996) b_and!132685 (not b!1760067) (not b!1760069) (not d!537423) (not b!1759633) (not b!1760015) (not d!537425) (not b!1760064) (not b_lambda!56935) b_and!132647 (not b!1759621) (not b_lambda!56925) (not b!1760033) (not d!537363) (not b!1760092) (not b!1759984) (not d!537385) (not d!537417) (not b!1759977) (not bm!110623) (not b!1759737) (not d!537439) (not b!1760024) (not b!1760074) (not b!1760038) (not b!1759738) (not d!537557) (not d!537443) (not b!1759647) (not b!1759571) (not b_lambda!56931) (not b!1759743) b_and!132683 (not d!537427) (not b!1759688) (not b!1760118) (not d!537529) (not b_next!49345) (not b!1759692) (not b!1759742) (not b_next!49347) (not b!1760095) (not b_next!49349) (not b!1760063) (not b!1760086) (not b!1759985) (not b!1759580) (not d!537437) (not b!1759403) (not b!1759749) (not d!537361) (not b!1760004) (not b!1760066) (not b!1760022) (not b!1760006) (not b_lambda!56929) (not d!537549) (not b_lambda!56927) (not b!1759754) (not b!1759693) (not d!537521) (not b_lambda!56885) (not b!1759690) (not b!1760065) (not b!1759954) (not b!1760121) (not b!1759594) b_and!132691 (not b!1760025) (not tb!105915) (not b!1759599) (not b!1760096) (not b!1759587) (not b!1759997))
(check-sat b_and!132643 (not b_next!49361) (not b_next!49353) (not b_next!49351) (not b_next!49359) b_and!132687 b_and!132685 b_and!132647 b_and!132683 (not b_next!49345) b_and!132691 (not b_next!49343) b_and!132645 b_and!132689 (not b_next!49347) (not b_next!49349))
