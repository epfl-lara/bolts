; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50388 () Bool)

(assert start!50388)

(declare-fun b!545387 () Bool)

(declare-fun b_free!15145 () Bool)

(declare-fun b_next!15161 () Bool)

(assert (=> b!545387 (= b_free!15145 (not b_next!15161))))

(declare-fun tp!173237 () Bool)

(declare-fun b_and!53259 () Bool)

(assert (=> b!545387 (= tp!173237 b_and!53259)))

(declare-fun b_free!15147 () Bool)

(declare-fun b_next!15163 () Bool)

(assert (=> b!545387 (= b_free!15147 (not b_next!15163))))

(declare-fun tp!173241 () Bool)

(declare-fun b_and!53261 () Bool)

(assert (=> b!545387 (= tp!173241 b_and!53261)))

(declare-fun b!545408 () Bool)

(declare-fun b_free!15149 () Bool)

(declare-fun b_next!15165 () Bool)

(assert (=> b!545408 (= b_free!15149 (not b_next!15165))))

(declare-fun tp!173238 () Bool)

(declare-fun b_and!53263 () Bool)

(assert (=> b!545408 (= tp!173238 b_and!53263)))

(declare-fun b_free!15151 () Bool)

(declare-fun b_next!15167 () Bool)

(assert (=> b!545408 (= b_free!15151 (not b_next!15167))))

(declare-fun tp!173235 () Bool)

(declare-fun b_and!53265 () Bool)

(assert (=> b!545408 (= tp!173235 b_and!53265)))

(declare-fun b!545371 () Bool)

(declare-datatypes ((Unit!9410 0))(
  ( (Unit!9411) )
))
(declare-fun e!329566 () Unit!9410)

(declare-fun Unit!9412 () Unit!9410)

(assert (=> b!545371 (= e!329566 Unit!9412)))

(declare-fun b!545372 () Bool)

(declare-fun res!232851 () Bool)

(declare-fun e!329579 () Bool)

(assert (=> b!545372 (=> (not res!232851) (not e!329579))))

(declare-datatypes ((C!3608 0))(
  ( (C!3609 (val!2030 Int)) )
))
(declare-datatypes ((List!5375 0))(
  ( (Nil!5365) (Cons!5365 (h!10766 C!3608) (t!74676 List!5375)) )
))
(declare-fun input!2705 () List!5375)

(declare-fun isEmpty!3874 (List!5375) Bool)

(assert (=> b!545372 (= res!232851 (not (isEmpty!3874 input!2705)))))

(declare-fun b!545373 () Bool)

(declare-fun e!329572 () Bool)

(declare-fun e!329585 () Bool)

(declare-fun tp!173239 () Bool)

(assert (=> b!545373 (= e!329572 (and e!329585 tp!173239))))

(declare-fun b!545374 () Bool)

(declare-fun res!232847 () Bool)

(declare-fun e!329588 () Bool)

(assert (=> b!545374 (=> res!232847 e!329588)))

(declare-fun suffix!1342 () List!5375)

(declare-datatypes ((Regex!1343 0))(
  ( (ElementMatch!1343 (c!102876 C!3608)) (Concat!2376 (regOne!3198 Regex!1343) (regTwo!3198 Regex!1343)) (EmptyExpr!1343) (Star!1343 (reg!1672 Regex!1343)) (EmptyLang!1343) (Union!1343 (regOne!3199 Regex!1343) (regTwo!3199 Regex!1343)) )
))
(declare-datatypes ((List!5376 0))(
  ( (Nil!5366) (Cons!5366 (h!10767 (_ BitVec 16)) (t!74677 List!5376)) )
))
(declare-datatypes ((TokenValue!1033 0))(
  ( (FloatLiteralValue!2066 (text!7676 List!5376)) (TokenValueExt!1032 (__x!3964 Int)) (Broken!5165 (value!33597 List!5376)) (Object!1042) (End!1033) (Def!1033) (Underscore!1033) (Match!1033) (Else!1033) (Error!1033) (Case!1033) (If!1033) (Extends!1033) (Abstract!1033) (Class!1033) (Val!1033) (DelimiterValue!2066 (del!1093 List!5376)) (KeywordValue!1039 (value!33598 List!5376)) (CommentValue!2066 (value!33599 List!5376)) (WhitespaceValue!2066 (value!33600 List!5376)) (IndentationValue!1033 (value!33601 List!5376)) (String!6908) (Int32!1033) (Broken!5166 (value!33602 List!5376)) (Boolean!1034) (Unit!9413) (OperatorValue!1036 (op!1093 List!5376)) (IdentifierValue!2066 (value!33603 List!5376)) (IdentifierValue!2067 (value!33604 List!5376)) (WhitespaceValue!2067 (value!33605 List!5376)) (True!2066) (False!2066) (Broken!5167 (value!33606 List!5376)) (Broken!5168 (value!33607 List!5376)) (True!2067) (RightBrace!1033) (RightBracket!1033) (Colon!1033) (Null!1033) (Comma!1033) (LeftBracket!1033) (False!2067) (LeftBrace!1033) (ImaginaryLiteralValue!1033 (text!7677 List!5376)) (StringLiteralValue!3099 (value!33608 List!5376)) (EOFValue!1033 (value!33609 List!5376)) (IdentValue!1033 (value!33610 List!5376)) (DelimiterValue!2067 (value!33611 List!5376)) (DedentValue!1033 (value!33612 List!5376)) (NewLineValue!1033 (value!33613 List!5376)) (IntegerValue!3099 (value!33614 (_ BitVec 32)) (text!7678 List!5376)) (IntegerValue!3100 (value!33615 Int) (text!7679 List!5376)) (Times!1033) (Or!1033) (Equal!1033) (Minus!1033) (Broken!5169 (value!33616 List!5376)) (And!1033) (Div!1033) (LessEqual!1033) (Mod!1033) (Concat!2377) (Not!1033) (Plus!1033) (SpaceValue!1033 (value!33617 List!5376)) (IntegerValue!3101 (value!33618 Int) (text!7680 List!5376)) (StringLiteralValue!3100 (text!7681 List!5376)) (FloatLiteralValue!2067 (text!7682 List!5376)) (BytesLiteralValue!1033 (value!33619 List!5376)) (CommentValue!2067 (value!33620 List!5376)) (StringLiteralValue!3101 (value!33621 List!5376)) (ErrorTokenValue!1033 (msg!1094 List!5376)) )
))
(declare-datatypes ((String!6909 0))(
  ( (String!6910 (value!33622 String)) )
))
(declare-datatypes ((IArray!3453 0))(
  ( (IArray!3454 (innerList!1784 List!5375)) )
))
(declare-datatypes ((Conc!1726 0))(
  ( (Node!1726 (left!4447 Conc!1726) (right!4777 Conc!1726) (csize!3682 Int) (cheight!1937 Int)) (Leaf!2738 (xs!4363 IArray!3453) (csize!3683 Int)) (Empty!1726) )
))
(declare-datatypes ((BalanceConc!3460 0))(
  ( (BalanceConc!3461 (c!102877 Conc!1726)) )
))
(declare-datatypes ((TokenValueInjection!1834 0))(
  ( (TokenValueInjection!1835 (toValue!1856 Int) (toChars!1715 Int)) )
))
(declare-datatypes ((Rule!1818 0))(
  ( (Rule!1819 (regex!1009 Regex!1343) (tag!1271 String!6909) (isSeparator!1009 Bool) (transformation!1009 TokenValueInjection!1834)) )
))
(declare-datatypes ((Token!1754 0))(
  ( (Token!1755 (value!33623 TokenValue!1033) (rule!1725 Rule!1818) (size!4302 Int) (originalCharacters!1048 List!5375)) )
))
(declare-fun token!491 () Token!1754)

(declare-datatypes ((tuple2!6404 0))(
  ( (tuple2!6405 (_1!3466 Token!1754) (_2!3466 List!5375)) )
))
(declare-datatypes ((Option!1359 0))(
  ( (None!1358) (Some!1358 (v!16175 tuple2!6404)) )
))
(declare-fun lt!228463 () Option!1359)

(assert (=> b!545374 (= res!232847 (not (= lt!228463 (Some!1358 (tuple2!6405 token!491 suffix!1342)))))))

(declare-fun b!545375 () Bool)

(declare-fun e!329584 () Bool)

(declare-fun tp_is_empty!3041 () Bool)

(declare-fun tp!173233 () Bool)

(assert (=> b!545375 (= e!329584 (and tp_is_empty!3041 tp!173233))))

(declare-fun lt!228452 () List!5375)

(declare-fun lt!228439 () Int)

(declare-fun e!329568 () Bool)

(declare-fun b!545376 () Bool)

(declare-fun lt!228467 () TokenValue!1033)

(declare-fun lt!228454 () List!5375)

(assert (=> b!545376 (= e!329568 (and (= (size!4302 token!491) lt!228439) (= (originalCharacters!1048 token!491) lt!228452) (= (tuple2!6405 token!491 suffix!1342) (tuple2!6405 (Token!1755 lt!228467 (rule!1725 token!491) lt!228439 lt!228452) lt!228454))))))

(declare-fun b!545377 () Bool)

(declare-fun res!232839 () Bool)

(assert (=> b!545377 (=> res!232839 e!329588)))

(declare-datatypes ((List!5377 0))(
  ( (Nil!5367) (Cons!5367 (h!10768 Rule!1818) (t!74678 List!5377)) )
))
(declare-fun rules!3103 () List!5377)

(declare-fun lt!228455 () Option!1359)

(declare-fun contains!1251 (List!5377 Rule!1818) Bool)

(assert (=> b!545377 (= res!232839 (not (contains!1251 rules!3103 (rule!1725 (_1!3466 (v!16175 lt!228455))))))))

(declare-fun b!545378 () Bool)

(declare-fun e!329575 () Bool)

(declare-fun e!329580 () Bool)

(assert (=> b!545378 (= e!329575 (not e!329580))))

(declare-fun res!232843 () Bool)

(assert (=> b!545378 (=> res!232843 e!329580)))

(declare-fun lt!228457 () List!5375)

(declare-fun isPrefix!651 (List!5375 List!5375) Bool)

(assert (=> b!545378 (= res!232843 (not (isPrefix!651 input!2705 lt!228457)))))

(assert (=> b!545378 (isPrefix!651 lt!228452 lt!228457)))

(declare-fun lt!228433 () Unit!9410)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!502 (List!5375 List!5375) Unit!9410)

(assert (=> b!545378 (= lt!228433 (lemmaConcatTwoListThenFirstIsPrefix!502 lt!228452 suffix!1342))))

(declare-fun lt!228459 () List!5375)

(assert (=> b!545378 (isPrefix!651 input!2705 lt!228459)))

(declare-fun lt!228444 () Unit!9410)

(assert (=> b!545378 (= lt!228444 (lemmaConcatTwoListThenFirstIsPrefix!502 input!2705 suffix!1342))))

(declare-fun e!329570 () Bool)

(assert (=> b!545378 e!329570))

(declare-fun res!232830 () Bool)

(assert (=> b!545378 (=> (not res!232830) (not e!329570))))

(declare-fun lt!228461 () TokenValue!1033)

(assert (=> b!545378 (= res!232830 (= (value!33623 (_1!3466 (v!16175 lt!228455))) lt!228461))))

(declare-fun lt!228443 () BalanceConc!3460)

(declare-fun apply!1284 (TokenValueInjection!1834 BalanceConc!3460) TokenValue!1033)

(assert (=> b!545378 (= lt!228461 (apply!1284 (transformation!1009 (rule!1725 (_1!3466 (v!16175 lt!228455)))) lt!228443))))

(declare-fun lt!228466 () List!5375)

(declare-fun seqFromList!1207 (List!5375) BalanceConc!3460)

(assert (=> b!545378 (= lt!228443 (seqFromList!1207 lt!228466))))

(declare-fun lt!228438 () Unit!9410)

(declare-fun lemmaInv!157 (TokenValueInjection!1834) Unit!9410)

(assert (=> b!545378 (= lt!228438 (lemmaInv!157 (transformation!1009 (rule!1725 token!491))))))

(declare-fun lt!228464 () Unit!9410)

(assert (=> b!545378 (= lt!228464 (lemmaInv!157 (transformation!1009 (rule!1725 (_1!3466 (v!16175 lt!228455))))))))

(declare-datatypes ((LexerInterface!895 0))(
  ( (LexerInterfaceExt!892 (__x!3965 Int)) (Lexer!893) )
))
(declare-fun thiss!22590 () LexerInterface!895)

(declare-fun ruleValid!229 (LexerInterface!895 Rule!1818) Bool)

(assert (=> b!545378 (ruleValid!229 thiss!22590 (rule!1725 token!491))))

(declare-fun lt!228460 () Unit!9410)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!88 (LexerInterface!895 Rule!1818 List!5377) Unit!9410)

(assert (=> b!545378 (= lt!228460 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!88 thiss!22590 (rule!1725 token!491) rules!3103))))

(assert (=> b!545378 (ruleValid!229 thiss!22590 (rule!1725 (_1!3466 (v!16175 lt!228455))))))

(declare-fun lt!228440 () Unit!9410)

(assert (=> b!545378 (= lt!228440 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!88 thiss!22590 (rule!1725 (_1!3466 (v!16175 lt!228455))) rules!3103))))

(assert (=> b!545378 (isPrefix!651 input!2705 input!2705)))

(declare-fun lt!228453 () Unit!9410)

(declare-fun lemmaIsPrefixRefl!391 (List!5375 List!5375) Unit!9410)

(assert (=> b!545378 (= lt!228453 (lemmaIsPrefixRefl!391 input!2705 input!2705))))

(declare-fun lt!228441 () List!5375)

(assert (=> b!545378 (= (_2!3466 (v!16175 lt!228455)) lt!228441)))

(declare-fun lt!228437 () Unit!9410)

(declare-fun lemmaSamePrefixThenSameSuffix!378 (List!5375 List!5375 List!5375 List!5375 List!5375) Unit!9410)

(assert (=> b!545378 (= lt!228437 (lemmaSamePrefixThenSameSuffix!378 lt!228466 (_2!3466 (v!16175 lt!228455)) lt!228466 lt!228441 input!2705))))

(declare-fun getSuffix!174 (List!5375 List!5375) List!5375)

(assert (=> b!545378 (= lt!228441 (getSuffix!174 input!2705 lt!228466))))

(declare-fun lt!228434 () List!5375)

(assert (=> b!545378 (isPrefix!651 lt!228466 lt!228434)))

(declare-fun ++!1497 (List!5375 List!5375) List!5375)

(assert (=> b!545378 (= lt!228434 (++!1497 lt!228466 (_2!3466 (v!16175 lt!228455))))))

(declare-fun lt!228446 () Unit!9410)

(assert (=> b!545378 (= lt!228446 (lemmaConcatTwoListThenFirstIsPrefix!502 lt!228466 (_2!3466 (v!16175 lt!228455))))))

(declare-fun lt!228448 () Unit!9410)

(declare-fun lemmaCharactersSize!88 (Token!1754) Unit!9410)

(assert (=> b!545378 (= lt!228448 (lemmaCharactersSize!88 token!491))))

(declare-fun lt!228462 () Unit!9410)

(assert (=> b!545378 (= lt!228462 (lemmaCharactersSize!88 (_1!3466 (v!16175 lt!228455))))))

(declare-fun lt!228442 () Unit!9410)

(declare-fun e!329576 () Unit!9410)

(assert (=> b!545378 (= lt!228442 e!329576)))

(declare-fun c!102874 () Bool)

(declare-fun lt!228432 () Int)

(assert (=> b!545378 (= c!102874 (> lt!228432 lt!228439))))

(declare-fun size!4303 (List!5375) Int)

(assert (=> b!545378 (= lt!228439 (size!4303 lt!228452))))

(assert (=> b!545378 (= lt!228432 (size!4303 lt!228466))))

(declare-fun list!2225 (BalanceConc!3460) List!5375)

(declare-fun charsOf!638 (Token!1754) BalanceConc!3460)

(assert (=> b!545378 (= lt!228466 (list!2225 (charsOf!638 (_1!3466 (v!16175 lt!228455)))))))

(declare-fun lt!228456 () tuple2!6404)

(assert (=> b!545378 (= lt!228455 (Some!1358 lt!228456))))

(assert (=> b!545378 (= lt!228456 (tuple2!6405 (_1!3466 (v!16175 lt!228455)) (_2!3466 (v!16175 lt!228455))))))

(declare-fun lt!228445 () Unit!9410)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!94 (List!5375 List!5375 List!5375 List!5375) Unit!9410)

(assert (=> b!545378 (= lt!228445 (lemmaConcatSameAndSameSizesThenSameLists!94 lt!228452 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!545380 () Bool)

(assert (=> b!545380 (= e!329588 true)))

(declare-fun lt!228431 () Bool)

(declare-fun rulesValidInductive!354 (LexerInterface!895 List!5377) Bool)

(assert (=> b!545380 (= lt!228431 (rulesValidInductive!354 thiss!22590 rules!3103))))

(declare-fun tp!173234 () Bool)

(declare-fun e!329571 () Bool)

(declare-fun e!329583 () Bool)

(declare-fun b!545381 () Bool)

(declare-fun inv!21 (TokenValue!1033) Bool)

(assert (=> b!545381 (= e!329571 (and (inv!21 (value!33623 token!491)) e!329583 tp!173234))))

(declare-fun b!545382 () Bool)

(assert (=> b!545382 (= e!329570 (and (= (size!4302 (_1!3466 (v!16175 lt!228455))) lt!228432) (= (originalCharacters!1048 (_1!3466 (v!16175 lt!228455))) lt!228466) (= lt!228456 (tuple2!6405 (Token!1755 lt!228461 (rule!1725 (_1!3466 (v!16175 lt!228455))) lt!228432 lt!228466) lt!228441))))))

(declare-fun b!545383 () Bool)

(declare-fun e!329577 () Bool)

(assert (=> b!545383 (= e!329579 e!329577)))

(declare-fun res!232842 () Bool)

(assert (=> b!545383 (=> (not res!232842) (not e!329577))))

(assert (=> b!545383 (= res!232842 (= lt!228452 input!2705))))

(assert (=> b!545383 (= lt!228452 (list!2225 (charsOf!638 token!491)))))

(declare-fun b!545384 () Bool)

(declare-fun Unit!9414 () Unit!9410)

(assert (=> b!545384 (= e!329576 Unit!9414)))

(declare-fun b!545385 () Bool)

(declare-fun e!329586 () Bool)

(declare-fun tp!173242 () Bool)

(assert (=> b!545385 (= e!329586 (and tp_is_empty!3041 tp!173242))))

(declare-fun b!545386 () Bool)

(declare-fun res!232838 () Bool)

(assert (=> b!545386 (=> res!232838 e!329588)))

(assert (=> b!545386 (= res!232838 (= (rule!1725 (_1!3466 (v!16175 lt!228455))) (rule!1725 token!491)))))

(declare-fun e!329592 () Bool)

(assert (=> b!545387 (= e!329592 (and tp!173237 tp!173241))))

(declare-fun b!545388 () Bool)

(declare-fun tp!173236 () Bool)

(declare-fun inv!6728 (String!6909) Bool)

(declare-fun inv!6731 (TokenValueInjection!1834) Bool)

(assert (=> b!545388 (= e!329583 (and tp!173236 (inv!6728 (tag!1271 (rule!1725 token!491))) (inv!6731 (transformation!1009 (rule!1725 token!491))) e!329592))))

(declare-fun b!545389 () Bool)

(declare-fun res!232853 () Bool)

(assert (=> b!545389 (=> (not res!232853) (not e!329579))))

(declare-fun isEmpty!3875 (List!5377) Bool)

(assert (=> b!545389 (= res!232853 (not (isEmpty!3875 rules!3103)))))

(declare-fun b!545390 () Bool)

(declare-fun res!232833 () Bool)

(declare-fun e!329569 () Bool)

(assert (=> b!545390 (=> (not res!232833) (not e!329569))))

(declare-fun get!2028 (Option!1359) tuple2!6404)

(assert (=> b!545390 (= res!232833 (= (_1!3466 (get!2028 lt!228455)) (_1!3466 (v!16175 lt!228455))))))

(declare-fun b!545391 () Bool)

(declare-fun res!232852 () Bool)

(assert (=> b!545391 (=> (not res!232852) (not e!329568))))

(assert (=> b!545391 (= res!232852 (= (size!4302 token!491) (size!4303 (originalCharacters!1048 token!491))))))

(declare-fun b!545392 () Bool)

(declare-fun e!329582 () Bool)

(declare-fun e!329590 () Bool)

(assert (=> b!545392 (= e!329582 e!329590)))

(declare-fun res!232831 () Bool)

(assert (=> b!545392 (=> (not res!232831) (not e!329590))))

(get-info :version)

(assert (=> b!545392 (= res!232831 ((_ is Some!1358) lt!228455))))

(declare-fun maxPrefix!593 (LexerInterface!895 List!5377 List!5375) Option!1359)

(assert (=> b!545392 (= lt!228455 (maxPrefix!593 thiss!22590 rules!3103 input!2705))))

(declare-fun b!545393 () Bool)

(assert (=> b!545393 (= e!329569 (= lt!228441 (_2!3466 (v!16175 lt!228455))))))

(declare-fun b!545394 () Bool)

(declare-fun res!232832 () Bool)

(assert (=> b!545394 (=> res!232832 e!329588)))

(assert (=> b!545394 (= res!232832 (not (isEmpty!3874 (_2!3466 (v!16175 lt!228455)))))))

(declare-fun b!545395 () Bool)

(declare-fun e!329567 () Bool)

(assert (=> b!545395 (= e!329567 e!329582)))

(declare-fun res!232840 () Bool)

(assert (=> b!545395 (=> (not res!232840) (not e!329582))))

(declare-fun lt!228449 () tuple2!6404)

(assert (=> b!545395 (= res!232840 (and (= (_1!3466 lt!228449) token!491) (= (_2!3466 lt!228449) suffix!1342)))))

(assert (=> b!545395 (= lt!228449 (get!2028 lt!228463))))

(declare-fun b!545396 () Bool)

(declare-fun e!329589 () Bool)

(assert (=> b!545396 (= e!329589 e!329569)))

(declare-fun res!232837 () Bool)

(assert (=> b!545396 (=> (not res!232837) (not e!329569))))

(declare-fun isDefined!1171 (Option!1359) Bool)

(assert (=> b!545396 (= res!232837 (isDefined!1171 lt!228455))))

(declare-fun b!545397 () Bool)

(assert (=> b!545397 (= e!329580 e!329588)))

(declare-fun res!232834 () Bool)

(assert (=> b!545397 (=> res!232834 e!329588)))

(assert (=> b!545397 (= res!232834 (or (not (= lt!228432 lt!228439)) (not (= lt!228434 input!2705)) (not (= lt!228434 lt!228452))))))

(declare-fun lt!228435 () Unit!9410)

(declare-fun lt!228430 () BalanceConc!3460)

(declare-fun lemmaSemiInverse!138 (TokenValueInjection!1834 BalanceConc!3460) Unit!9410)

(assert (=> b!545397 (= lt!228435 (lemmaSemiInverse!138 (transformation!1009 (rule!1725 token!491)) lt!228430))))

(declare-fun lt!228450 () Unit!9410)

(assert (=> b!545397 (= lt!228450 (lemmaSemiInverse!138 (transformation!1009 (rule!1725 (_1!3466 (v!16175 lt!228455)))) lt!228443))))

(declare-fun lt!228447 () Unit!9410)

(assert (=> b!545397 (= lt!228447 e!329566)))

(declare-fun c!102875 () Bool)

(assert (=> b!545397 (= c!102875 (< lt!228432 lt!228439))))

(declare-fun e!329591 () Bool)

(assert (=> b!545397 e!329591))

(declare-fun res!232854 () Bool)

(assert (=> b!545397 (=> (not res!232854) (not e!329591))))

(declare-fun maxPrefixOneRule!308 (LexerInterface!895 Rule!1818 List!5375) Option!1359)

(assert (=> b!545397 (= res!232854 (= (maxPrefixOneRule!308 thiss!22590 (rule!1725 token!491) lt!228459) (Some!1358 (tuple2!6405 (Token!1755 lt!228467 (rule!1725 token!491) lt!228439 lt!228452) suffix!1342))))))

(declare-fun lt!228465 () Unit!9410)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!60 (LexerInterface!895 List!5377 List!5375 List!5375 List!5375 Rule!1818) Unit!9410)

(assert (=> b!545397 (= lt!228465 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!60 thiss!22590 rules!3103 lt!228452 lt!228459 suffix!1342 (rule!1725 token!491)))))

(assert (=> b!545397 (= (maxPrefixOneRule!308 thiss!22590 (rule!1725 (_1!3466 (v!16175 lt!228455))) input!2705) (Some!1358 (tuple2!6405 (Token!1755 lt!228461 (rule!1725 (_1!3466 (v!16175 lt!228455))) lt!228432 lt!228466) (_2!3466 (v!16175 lt!228455)))))))

(declare-fun lt!228429 () Unit!9410)

(assert (=> b!545397 (= lt!228429 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!60 thiss!22590 rules!3103 lt!228466 input!2705 (_2!3466 (v!16175 lt!228455)) (rule!1725 (_1!3466 (v!16175 lt!228455)))))))

(assert (=> b!545397 e!329568))

(declare-fun res!232855 () Bool)

(assert (=> b!545397 (=> (not res!232855) (not e!329568))))

(assert (=> b!545397 (= res!232855 (= (value!33623 token!491) lt!228467))))

(assert (=> b!545397 (= lt!228467 (apply!1284 (transformation!1009 (rule!1725 token!491)) lt!228430))))

(assert (=> b!545397 (= lt!228430 (seqFromList!1207 lt!228452))))

(assert (=> b!545397 (= suffix!1342 lt!228454)))

(declare-fun lt!228458 () Unit!9410)

(assert (=> b!545397 (= lt!228458 (lemmaSamePrefixThenSameSuffix!378 lt!228452 suffix!1342 lt!228452 lt!228454 lt!228459))))

(assert (=> b!545397 (= lt!228454 (getSuffix!174 lt!228459 lt!228452))))

(declare-fun res!232856 () Bool)

(assert (=> start!50388 (=> (not res!232856) (not e!329579))))

(assert (=> start!50388 (= res!232856 ((_ is Lexer!893) thiss!22590))))

(assert (=> start!50388 e!329579))

(assert (=> start!50388 e!329584))

(assert (=> start!50388 e!329572))

(declare-fun inv!6732 (Token!1754) Bool)

(assert (=> start!50388 (and (inv!6732 token!491) e!329571)))

(assert (=> start!50388 true))

(assert (=> start!50388 e!329586))

(declare-fun b!545379 () Bool)

(assert (=> b!545379 (= e!329577 e!329567)))

(declare-fun res!232836 () Bool)

(assert (=> b!545379 (=> (not res!232836) (not e!329567))))

(assert (=> b!545379 (= res!232836 (isDefined!1171 lt!228463))))

(assert (=> b!545379 (= lt!228463 (maxPrefix!593 thiss!22590 rules!3103 lt!228459))))

(assert (=> b!545379 (= lt!228459 (++!1497 input!2705 suffix!1342))))

(declare-fun b!545398 () Bool)

(declare-fun res!232848 () Bool)

(assert (=> b!545398 (=> res!232848 e!329588)))

(declare-fun getIndex!10 (List!5377 Rule!1818) Int)

(assert (=> b!545398 (= res!232848 (>= (getIndex!10 rules!3103 (rule!1725 (_1!3466 (v!16175 lt!228455)))) (getIndex!10 rules!3103 (rule!1725 token!491))))))

(declare-fun b!545399 () Bool)

(assert (=> b!545399 (= e!329590 e!329575)))

(declare-fun res!232845 () Bool)

(assert (=> b!545399 (=> (not res!232845) (not e!329575))))

(assert (=> b!545399 (= res!232845 (= lt!228457 lt!228459))))

(assert (=> b!545399 (= lt!228457 (++!1497 lt!228452 suffix!1342))))

(declare-fun b!545400 () Bool)

(declare-fun e!329587 () Bool)

(assert (=> b!545400 (= e!329587 false)))

(declare-fun b!545401 () Bool)

(declare-fun tp!173240 () Bool)

(declare-fun e!329573 () Bool)

(assert (=> b!545401 (= e!329585 (and tp!173240 (inv!6728 (tag!1271 (h!10768 rules!3103))) (inv!6731 (transformation!1009 (h!10768 rules!3103))) e!329573))))

(declare-fun b!545402 () Bool)

(declare-fun res!232850 () Bool)

(assert (=> b!545402 (=> res!232850 e!329588)))

(assert (=> b!545402 (= res!232850 (not (contains!1251 rules!3103 (rule!1725 token!491))))))

(declare-fun b!545403 () Bool)

(declare-fun res!232844 () Bool)

(assert (=> b!545403 (=> res!232844 e!329588)))

(assert (=> b!545403 (= res!232844 (or (not (= lt!228466 lt!228452)) (not (= (originalCharacters!1048 (_1!3466 (v!16175 lt!228455))) (originalCharacters!1048 token!491)))))))

(declare-fun b!545404 () Bool)

(declare-fun Unit!9415 () Unit!9410)

(assert (=> b!545404 (= e!329576 Unit!9415)))

(assert (=> b!545404 false))

(declare-fun b!545405 () Bool)

(declare-fun res!232841 () Bool)

(assert (=> b!545405 (=> (not res!232841) (not e!329570))))

(assert (=> b!545405 (= res!232841 (= (size!4302 (_1!3466 (v!16175 lt!228455))) (size!4303 (originalCharacters!1048 (_1!3466 (v!16175 lt!228455))))))))

(declare-fun b!545406 () Bool)

(declare-fun Unit!9416 () Unit!9410)

(assert (=> b!545406 (= e!329566 Unit!9416)))

(declare-fun lt!228436 () Unit!9410)

(assert (=> b!545406 (= lt!228436 (lemmaSemiInverse!138 (transformation!1009 (rule!1725 (_1!3466 (v!16175 lt!228455)))) lt!228443))))

(declare-fun lt!228451 () Unit!9410)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!14 (LexerInterface!895 List!5377 Rule!1818 List!5375 List!5375 List!5375 Rule!1818) Unit!9410)

(assert (=> b!545406 (= lt!228451 (lemmaMaxPrefixOutputsMaxPrefix!14 thiss!22590 rules!3103 (rule!1725 (_1!3466 (v!16175 lt!228455))) lt!228466 input!2705 input!2705 (rule!1725 token!491)))))

(declare-fun res!232849 () Bool)

(declare-fun matchR!502 (Regex!1343 List!5375) Bool)

(assert (=> b!545406 (= res!232849 (not (matchR!502 (regex!1009 (rule!1725 token!491)) input!2705)))))

(assert (=> b!545406 (=> (not res!232849) (not e!329587))))

(assert (=> b!545406 e!329587))

(declare-fun b!545407 () Bool)

(declare-fun res!232835 () Bool)

(assert (=> b!545407 (=> (not res!232835) (not e!329579))))

(declare-fun rulesInvariant!858 (LexerInterface!895 List!5377) Bool)

(assert (=> b!545407 (= res!232835 (rulesInvariant!858 thiss!22590 rules!3103))))

(assert (=> b!545408 (= e!329573 (and tp!173238 tp!173235))))

(declare-fun b!545409 () Bool)

(assert (=> b!545409 (= e!329591 e!329589)))

(declare-fun res!232846 () Bool)

(assert (=> b!545409 (=> res!232846 e!329589)))

(assert (=> b!545409 (= res!232846 (>= lt!228432 lt!228439))))

(assert (= (and start!50388 res!232856) b!545389))

(assert (= (and b!545389 res!232853) b!545407))

(assert (= (and b!545407 res!232835) b!545372))

(assert (= (and b!545372 res!232851) b!545383))

(assert (= (and b!545383 res!232842) b!545379))

(assert (= (and b!545379 res!232836) b!545395))

(assert (= (and b!545395 res!232840) b!545392))

(assert (= (and b!545392 res!232831) b!545399))

(assert (= (and b!545399 res!232845) b!545378))

(assert (= (and b!545378 c!102874) b!545404))

(assert (= (and b!545378 (not c!102874)) b!545384))

(assert (= (and b!545378 res!232830) b!545405))

(assert (= (and b!545405 res!232841) b!545382))

(assert (= (and b!545378 (not res!232843)) b!545397))

(assert (= (and b!545397 res!232855) b!545391))

(assert (= (and b!545391 res!232852) b!545376))

(assert (= (and b!545397 res!232854) b!545409))

(assert (= (and b!545409 (not res!232846)) b!545396))

(assert (= (and b!545396 res!232837) b!545390))

(assert (= (and b!545390 res!232833) b!545393))

(assert (= (and b!545397 c!102875) b!545406))

(assert (= (and b!545397 (not c!102875)) b!545371))

(assert (= (and b!545406 res!232849) b!545400))

(assert (= (and b!545397 (not res!232834)) b!545394))

(assert (= (and b!545394 (not res!232832)) b!545403))

(assert (= (and b!545403 (not res!232844)) b!545377))

(assert (= (and b!545377 (not res!232839)) b!545402))

(assert (= (and b!545402 (not res!232850)) b!545386))

(assert (= (and b!545386 (not res!232838)) b!545398))

(assert (= (and b!545398 (not res!232848)) b!545374))

(assert (= (and b!545374 (not res!232847)) b!545380))

(assert (= (and start!50388 ((_ is Cons!5365) suffix!1342)) b!545375))

(assert (= b!545401 b!545408))

(assert (= b!545373 b!545401))

(assert (= (and start!50388 ((_ is Cons!5367) rules!3103)) b!545373))

(assert (= b!545388 b!545387))

(assert (= b!545381 b!545388))

(assert (= start!50388 b!545381))

(assert (= (and start!50388 ((_ is Cons!5365) input!2705)) b!545385))

(declare-fun m!793903 () Bool)

(assert (=> b!545406 m!793903))

(declare-fun m!793905 () Bool)

(assert (=> b!545406 m!793905))

(declare-fun m!793907 () Bool)

(assert (=> b!545406 m!793907))

(declare-fun m!793909 () Bool)

(assert (=> b!545402 m!793909))

(declare-fun m!793911 () Bool)

(assert (=> b!545395 m!793911))

(declare-fun m!793913 () Bool)

(assert (=> b!545383 m!793913))

(assert (=> b!545383 m!793913))

(declare-fun m!793915 () Bool)

(assert (=> b!545383 m!793915))

(declare-fun m!793917 () Bool)

(assert (=> b!545390 m!793917))

(declare-fun m!793919 () Bool)

(assert (=> b!545394 m!793919))

(declare-fun m!793921 () Bool)

(assert (=> b!545372 m!793921))

(declare-fun m!793923 () Bool)

(assert (=> b!545379 m!793923))

(declare-fun m!793925 () Bool)

(assert (=> b!545379 m!793925))

(declare-fun m!793927 () Bool)

(assert (=> b!545379 m!793927))

(declare-fun m!793929 () Bool)

(assert (=> b!545388 m!793929))

(declare-fun m!793931 () Bool)

(assert (=> b!545388 m!793931))

(declare-fun m!793933 () Bool)

(assert (=> b!545381 m!793933))

(declare-fun m!793935 () Bool)

(assert (=> b!545398 m!793935))

(declare-fun m!793937 () Bool)

(assert (=> b!545398 m!793937))

(declare-fun m!793939 () Bool)

(assert (=> start!50388 m!793939))

(declare-fun m!793941 () Bool)

(assert (=> b!545392 m!793941))

(declare-fun m!793943 () Bool)

(assert (=> b!545399 m!793943))

(declare-fun m!793945 () Bool)

(assert (=> b!545391 m!793945))

(declare-fun m!793947 () Bool)

(assert (=> b!545401 m!793947))

(declare-fun m!793949 () Bool)

(assert (=> b!545401 m!793949))

(declare-fun m!793951 () Bool)

(assert (=> b!545389 m!793951))

(declare-fun m!793953 () Bool)

(assert (=> b!545405 m!793953))

(declare-fun m!793955 () Bool)

(assert (=> b!545378 m!793955))

(declare-fun m!793957 () Bool)

(assert (=> b!545378 m!793957))

(declare-fun m!793959 () Bool)

(assert (=> b!545378 m!793959))

(declare-fun m!793961 () Bool)

(assert (=> b!545378 m!793961))

(declare-fun m!793963 () Bool)

(assert (=> b!545378 m!793963))

(declare-fun m!793965 () Bool)

(assert (=> b!545378 m!793965))

(declare-fun m!793967 () Bool)

(assert (=> b!545378 m!793967))

(declare-fun m!793969 () Bool)

(assert (=> b!545378 m!793969))

(declare-fun m!793971 () Bool)

(assert (=> b!545378 m!793971))

(declare-fun m!793973 () Bool)

(assert (=> b!545378 m!793973))

(declare-fun m!793975 () Bool)

(assert (=> b!545378 m!793975))

(declare-fun m!793977 () Bool)

(assert (=> b!545378 m!793977))

(declare-fun m!793979 () Bool)

(assert (=> b!545378 m!793979))

(declare-fun m!793981 () Bool)

(assert (=> b!545378 m!793981))

(declare-fun m!793983 () Bool)

(assert (=> b!545378 m!793983))

(declare-fun m!793985 () Bool)

(assert (=> b!545378 m!793985))

(declare-fun m!793987 () Bool)

(assert (=> b!545378 m!793987))

(declare-fun m!793989 () Bool)

(assert (=> b!545378 m!793989))

(declare-fun m!793991 () Bool)

(assert (=> b!545378 m!793991))

(declare-fun m!793993 () Bool)

(assert (=> b!545378 m!793993))

(declare-fun m!793995 () Bool)

(assert (=> b!545378 m!793995))

(declare-fun m!793997 () Bool)

(assert (=> b!545378 m!793997))

(declare-fun m!793999 () Bool)

(assert (=> b!545378 m!793999))

(declare-fun m!794001 () Bool)

(assert (=> b!545378 m!794001))

(declare-fun m!794003 () Bool)

(assert (=> b!545378 m!794003))

(assert (=> b!545378 m!793967))

(declare-fun m!794005 () Bool)

(assert (=> b!545378 m!794005))

(declare-fun m!794007 () Bool)

(assert (=> b!545378 m!794007))

(declare-fun m!794009 () Bool)

(assert (=> b!545396 m!794009))

(declare-fun m!794011 () Bool)

(assert (=> b!545407 m!794011))

(declare-fun m!794013 () Bool)

(assert (=> b!545380 m!794013))

(declare-fun m!794015 () Bool)

(assert (=> b!545397 m!794015))

(declare-fun m!794017 () Bool)

(assert (=> b!545397 m!794017))

(declare-fun m!794019 () Bool)

(assert (=> b!545397 m!794019))

(declare-fun m!794021 () Bool)

(assert (=> b!545397 m!794021))

(declare-fun m!794023 () Bool)

(assert (=> b!545397 m!794023))

(declare-fun m!794025 () Bool)

(assert (=> b!545397 m!794025))

(declare-fun m!794027 () Bool)

(assert (=> b!545397 m!794027))

(assert (=> b!545397 m!793903))

(declare-fun m!794029 () Bool)

(assert (=> b!545397 m!794029))

(declare-fun m!794031 () Bool)

(assert (=> b!545397 m!794031))

(declare-fun m!794033 () Bool)

(assert (=> b!545377 m!794033))

(check-sat b_and!53263 (not b!545398) (not b!545389) (not b!545390) (not b!545399) (not b_next!15167) (not b_next!15163) (not b!545397) (not b!545375) (not b!545396) (not b!545372) b_and!53261 (not b!545402) (not b!545406) (not b!545383) (not b!545407) (not b_next!15165) (not b!545394) b_and!53265 (not b!545380) (not b_next!15161) (not b!545388) (not b!545379) (not start!50388) b_and!53259 (not b!545405) (not b!545385) (not b!545395) (not b!545391) (not b!545378) (not b!545401) (not b!545392) (not b!545373) tp_is_empty!3041 (not b!545381) (not b!545377))
(check-sat b_and!53261 b_and!53263 (not b_next!15165) b_and!53265 (not b_next!15161) b_and!53259 (not b_next!15167) (not b_next!15163))
