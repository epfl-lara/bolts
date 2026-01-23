; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302610 () Bool)

(assert start!302610)

(declare-fun b!3220577 () Bool)

(declare-fun b_free!85593 () Bool)

(declare-fun b_next!86297 () Bool)

(assert (=> b!3220577 (= b_free!85593 (not b_next!86297))))

(declare-fun tp!1014650 () Bool)

(declare-fun b_and!215295 () Bool)

(assert (=> b!3220577 (= tp!1014650 b_and!215295)))

(declare-fun b_free!85595 () Bool)

(declare-fun b_next!86299 () Bool)

(assert (=> b!3220577 (= b_free!85595 (not b_next!86299))))

(declare-fun tp!1014653 () Bool)

(declare-fun b_and!215297 () Bool)

(assert (=> b!3220577 (= tp!1014653 b_and!215297)))

(declare-fun b!3220583 () Bool)

(declare-fun b_free!85597 () Bool)

(declare-fun b_next!86301 () Bool)

(assert (=> b!3220583 (= b_free!85597 (not b_next!86301))))

(declare-fun tp!1014654 () Bool)

(declare-fun b_and!215299 () Bool)

(assert (=> b!3220583 (= tp!1014654 b_and!215299)))

(declare-fun b_free!85599 () Bool)

(declare-fun b_next!86303 () Bool)

(assert (=> b!3220583 (= b_free!85599 (not b_next!86303))))

(declare-fun tp!1014659 () Bool)

(declare-fun b_and!215301 () Bool)

(assert (=> b!3220583 (= tp!1014659 b_and!215301)))

(declare-fun b!3220564 () Bool)

(declare-fun b_free!85601 () Bool)

(declare-fun b_next!86305 () Bool)

(assert (=> b!3220564 (= b_free!85601 (not b_next!86305))))

(declare-fun tp!1014660 () Bool)

(declare-fun b_and!215303 () Bool)

(assert (=> b!3220564 (= tp!1014660 b_and!215303)))

(declare-fun b_free!85603 () Bool)

(declare-fun b_next!86307 () Bool)

(assert (=> b!3220564 (= b_free!85603 (not b_next!86307))))

(declare-fun tp!1014661 () Bool)

(declare-fun b_and!215305 () Bool)

(assert (=> b!3220564 (= tp!1014661 b_and!215305)))

(declare-fun bs!542599 () Bool)

(declare-fun b!3220593 () Bool)

(declare-fun b!3220587 () Bool)

(assert (= bs!542599 (and b!3220593 b!3220587)))

(declare-fun lambda!117727 () Int)

(declare-fun lambda!117726 () Int)

(assert (=> bs!542599 (not (= lambda!117727 lambda!117726))))

(declare-fun b!3220604 () Bool)

(declare-fun e!2008010 () Bool)

(assert (=> b!3220604 (= e!2008010 true)))

(declare-fun b!3220603 () Bool)

(declare-fun e!2008009 () Bool)

(assert (=> b!3220603 (= e!2008009 e!2008010)))

(declare-fun b!3220602 () Bool)

(declare-fun e!2008008 () Bool)

(assert (=> b!3220602 (= e!2008008 e!2008009)))

(assert (=> b!3220593 e!2008008))

(assert (= b!3220603 b!3220604))

(assert (= b!3220602 b!3220603))

(declare-datatypes ((C!20168 0))(
  ( (C!20169 (val!12132 Int)) )
))
(declare-datatypes ((Regex!9991 0))(
  ( (ElementMatch!9991 (c!541632 C!20168)) (Concat!15453 (regOne!20494 Regex!9991) (regTwo!20494 Regex!9991)) (EmptyExpr!9991) (Star!9991 (reg!10320 Regex!9991)) (EmptyLang!9991) (Union!9991 (regOne!20495 Regex!9991) (regTwo!20495 Regex!9991)) )
))
(declare-datatypes ((List!36338 0))(
  ( (Nil!36214) (Cons!36214 (h!41634 (_ BitVec 16)) (t!240463 List!36338)) )
))
(declare-datatypes ((TokenValue!5462 0))(
  ( (FloatLiteralValue!10924 (text!38679 List!36338)) (TokenValueExt!5461 (__x!23141 Int)) (Broken!27310 (value!169546 List!36338)) (Object!5585) (End!5462) (Def!5462) (Underscore!5462) (Match!5462) (Else!5462) (Error!5462) (Case!5462) (If!5462) (Extends!5462) (Abstract!5462) (Class!5462) (Val!5462) (DelimiterValue!10924 (del!5522 List!36338)) (KeywordValue!5468 (value!169547 List!36338)) (CommentValue!10924 (value!169548 List!36338)) (WhitespaceValue!10924 (value!169549 List!36338)) (IndentationValue!5462 (value!169550 List!36338)) (String!40643) (Int32!5462) (Broken!27311 (value!169551 List!36338)) (Boolean!5463) (Unit!50759) (OperatorValue!5465 (op!5522 List!36338)) (IdentifierValue!10924 (value!169552 List!36338)) (IdentifierValue!10925 (value!169553 List!36338)) (WhitespaceValue!10925 (value!169554 List!36338)) (True!10924) (False!10924) (Broken!27312 (value!169555 List!36338)) (Broken!27313 (value!169556 List!36338)) (True!10925) (RightBrace!5462) (RightBracket!5462) (Colon!5462) (Null!5462) (Comma!5462) (LeftBracket!5462) (False!10925) (LeftBrace!5462) (ImaginaryLiteralValue!5462 (text!38680 List!36338)) (StringLiteralValue!16386 (value!169557 List!36338)) (EOFValue!5462 (value!169558 List!36338)) (IdentValue!5462 (value!169559 List!36338)) (DelimiterValue!10925 (value!169560 List!36338)) (DedentValue!5462 (value!169561 List!36338)) (NewLineValue!5462 (value!169562 List!36338)) (IntegerValue!16386 (value!169563 (_ BitVec 32)) (text!38681 List!36338)) (IntegerValue!16387 (value!169564 Int) (text!38682 List!36338)) (Times!5462) (Or!5462) (Equal!5462) (Minus!5462) (Broken!27314 (value!169565 List!36338)) (And!5462) (Div!5462) (LessEqual!5462) (Mod!5462) (Concat!15454) (Not!5462) (Plus!5462) (SpaceValue!5462 (value!169566 List!36338)) (IntegerValue!16388 (value!169567 Int) (text!38683 List!36338)) (StringLiteralValue!16387 (text!38684 List!36338)) (FloatLiteralValue!10925 (text!38685 List!36338)) (BytesLiteralValue!5462 (value!169568 List!36338)) (CommentValue!10925 (value!169569 List!36338)) (StringLiteralValue!16388 (value!169570 List!36338)) (ErrorTokenValue!5462 (msg!5523 List!36338)) )
))
(declare-datatypes ((List!36339 0))(
  ( (Nil!36215) (Cons!36215 (h!41635 C!20168) (t!240464 List!36339)) )
))
(declare-datatypes ((IArray!21683 0))(
  ( (IArray!21684 (innerList!10899 List!36339)) )
))
(declare-datatypes ((Conc!10839 0))(
  ( (Node!10839 (left!28169 Conc!10839) (right!28499 Conc!10839) (csize!21908 Int) (cheight!11050 Int)) (Leaf!17066 (xs!13957 IArray!21683) (csize!21909 Int)) (Empty!10839) )
))
(declare-datatypes ((BalanceConc!21292 0))(
  ( (BalanceConc!21293 (c!541633 Conc!10839)) )
))
(declare-datatypes ((String!40644 0))(
  ( (String!40645 (value!169571 String)) )
))
(declare-datatypes ((TokenValueInjection!10352 0))(
  ( (TokenValueInjection!10353 (toValue!7328 Int) (toChars!7187 Int)) )
))
(declare-datatypes ((Rule!10264 0))(
  ( (Rule!10265 (regex!5232 Regex!9991) (tag!5764 String!40644) (isSeparator!5232 Bool) (transformation!5232 TokenValueInjection!10352)) )
))
(declare-datatypes ((List!36340 0))(
  ( (Nil!36216) (Cons!36216 (h!41636 Rule!10264) (t!240465 List!36340)) )
))
(declare-fun rules!2135 () List!36340)

(get-info :version)

(assert (= (and b!3220593 ((_ is Cons!36216) rules!2135)) b!3220602))

(declare-fun order!18547 () Int)

(declare-fun order!18545 () Int)

(declare-fun dynLambda!14661 (Int Int) Int)

(declare-fun dynLambda!14662 (Int Int) Int)

(assert (=> b!3220604 (< (dynLambda!14661 order!18545 (toValue!7328 (transformation!5232 (h!41636 rules!2135)))) (dynLambda!14662 order!18547 lambda!117727))))

(declare-fun order!18549 () Int)

(declare-fun dynLambda!14663 (Int Int) Int)

(assert (=> b!3220604 (< (dynLambda!14663 order!18549 (toChars!7187 (transformation!5232 (h!41636 rules!2135)))) (dynLambda!14662 order!18547 lambda!117727))))

(assert (=> b!3220593 true))

(declare-fun b!3220550 () Bool)

(declare-fun e!2007994 () Bool)

(declare-fun e!2007996 () Bool)

(assert (=> b!3220550 (= e!2007994 e!2007996)))

(declare-fun res!1311009 () Bool)

(assert (=> b!3220550 (=> res!1311009 e!2007996)))

(declare-fun lt!1090585 () List!36339)

(declare-fun lt!1090575 () List!36339)

(declare-fun lt!1090576 () List!36339)

(assert (=> b!3220550 (= res!1311009 (or (not (= lt!1090576 lt!1090575)) (not (= lt!1090585 lt!1090575))))))

(declare-datatypes ((Token!9830 0))(
  ( (Token!9831 (value!169572 TokenValue!5462) (rule!7690 Rule!10264) (size!27307 Int) (originalCharacters!5946 List!36339)) )
))
(declare-datatypes ((List!36341 0))(
  ( (Nil!36217) (Cons!36217 (h!41637 Token!9830) (t!240466 List!36341)) )
))
(declare-fun tokens!494 () List!36341)

(declare-fun list!12897 (BalanceConc!21292) List!36339)

(declare-fun charsOf!3248 (Token!9830) BalanceConc!21292)

(assert (=> b!3220550 (= lt!1090575 (list!12897 (charsOf!3248 (h!41637 tokens!494))))))

(declare-fun b!3220551 () Bool)

(declare-fun e!2007976 () Bool)

(declare-fun e!2007971 () Bool)

(assert (=> b!3220551 (= e!2007976 e!2007971)))

(declare-fun res!1311034 () Bool)

(assert (=> b!3220551 (=> (not res!1311034) (not e!2007971))))

(declare-fun lt!1090584 () Rule!10264)

(declare-fun lt!1090605 () List!36339)

(declare-fun matchR!4625 (Regex!9991 List!36339) Bool)

(assert (=> b!3220551 (= res!1311034 (matchR!4625 (regex!5232 lt!1090584) lt!1090605))))

(declare-datatypes ((Option!7169 0))(
  ( (None!7168) (Some!7168 (v!35748 Rule!10264)) )
))
(declare-fun lt!1090581 () Option!7169)

(declare-fun get!11537 (Option!7169) Rule!10264)

(assert (=> b!3220551 (= lt!1090584 (get!11537 lt!1090581))))

(declare-fun b!3220552 () Bool)

(declare-fun e!2007975 () Bool)

(declare-datatypes ((IArray!21685 0))(
  ( (IArray!21686 (innerList!10900 List!36341)) )
))
(declare-datatypes ((Conc!10840 0))(
  ( (Node!10840 (left!28170 Conc!10840) (right!28500 Conc!10840) (csize!21910 Int) (cheight!11051 Int)) (Leaf!17067 (xs!13958 IArray!21685) (csize!21911 Int)) (Empty!10840) )
))
(declare-datatypes ((BalanceConc!21294 0))(
  ( (BalanceConc!21295 (c!541634 Conc!10840)) )
))
(declare-datatypes ((tuple2!35642 0))(
  ( (tuple2!35643 (_1!20955 BalanceConc!21294) (_2!20955 BalanceConc!21292)) )
))
(declare-fun lt!1090574 () tuple2!35642)

(declare-fun isEmpty!20321 (BalanceConc!21292) Bool)

(assert (=> b!3220552 (= e!2007975 (isEmpty!20321 (_2!20955 lt!1090574)))))

(declare-fun tp!1014656 () Bool)

(declare-fun e!2007980 () Bool)

(declare-fun e!2007966 () Bool)

(declare-fun b!3220553 () Bool)

(declare-fun separatorToken!241 () Token!9830)

(declare-fun inv!49089 (String!40644) Bool)

(declare-fun inv!49092 (TokenValueInjection!10352) Bool)

(assert (=> b!3220553 (= e!2007980 (and tp!1014656 (inv!49089 (tag!5764 (rule!7690 separatorToken!241))) (inv!49092 (transformation!5232 (rule!7690 separatorToken!241))) e!2007966))))

(declare-fun b!3220554 () Bool)

(declare-datatypes ((Unit!50760 0))(
  ( (Unit!50761) )
))
(declare-fun e!2007982 () Unit!50760)

(declare-fun Unit!50762 () Unit!50760)

(assert (=> b!3220554 (= e!2007982 Unit!50762)))

(declare-fun b!3220555 () Bool)

(declare-fun res!1311018 () Bool)

(declare-fun e!2007988 () Bool)

(assert (=> b!3220555 (=> (not res!1311018) (not e!2007988))))

(declare-datatypes ((LexerInterface!4821 0))(
  ( (LexerInterfaceExt!4818 (__x!23142 Int)) (Lexer!4819) )
))
(declare-fun thiss!18206 () LexerInterface!4821)

(declare-fun rulesProduceEachTokenIndividually!1272 (LexerInterface!4821 List!36340 BalanceConc!21294) Bool)

(declare-fun seqFromList!3535 (List!36341) BalanceConc!21294)

(assert (=> b!3220555 (= res!1311018 (rulesProduceEachTokenIndividually!1272 thiss!18206 rules!2135 (seqFromList!3535 tokens!494)))))

(declare-fun b!3220556 () Bool)

(declare-fun e!2007992 () Bool)

(declare-fun e!2007969 () Bool)

(assert (=> b!3220556 (= e!2007992 e!2007969)))

(declare-fun res!1311007 () Bool)

(assert (=> b!3220556 (=> res!1311007 e!2007969)))

(declare-fun lt!1090607 () List!36339)

(declare-fun lt!1090600 () List!36339)

(assert (=> b!3220556 (= res!1311007 (not (= lt!1090607 lt!1090600)))))

(declare-fun lt!1090577 () List!36339)

(declare-fun ++!8706 (List!36339 List!36339) List!36339)

(assert (=> b!3220556 (= lt!1090600 (++!8706 (++!8706 lt!1090575 lt!1090605) lt!1090577))))

(declare-fun tp!1014658 () Bool)

(declare-fun e!2008001 () Bool)

(declare-fun e!2007978 () Bool)

(declare-fun b!3220557 () Bool)

(assert (=> b!3220557 (= e!2007978 (and tp!1014658 (inv!49089 (tag!5764 (h!41636 rules!2135))) (inv!49092 (transformation!5232 (h!41636 rules!2135))) e!2008001))))

(declare-fun b!3220558 () Bool)

(declare-fun Unit!50763 () Unit!50760)

(assert (=> b!3220558 (= e!2007982 Unit!50763)))

(declare-fun lt!1090582 () List!36339)

(declare-fun lt!1090614 () C!20168)

(declare-fun lt!1090618 () Unit!50760)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!396 (Regex!9991 List!36339 C!20168) Unit!50760)

(assert (=> b!3220558 (= lt!1090618 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!396 (regex!5232 (rule!7690 (h!41637 (t!240466 tokens!494)))) lt!1090582 lt!1090614))))

(declare-fun res!1311032 () Bool)

(assert (=> b!3220558 (= res!1311032 (not (matchR!4625 (regex!5232 (rule!7690 (h!41637 (t!240466 tokens!494)))) lt!1090582)))))

(declare-fun e!2007967 () Bool)

(assert (=> b!3220558 (=> (not res!1311032) (not e!2007967))))

(assert (=> b!3220558 e!2007967))

(declare-fun b!3220559 () Bool)

(declare-fun e!2007989 () Bool)

(assert (=> b!3220559 (= e!2007989 e!2007992)))

(declare-fun res!1311022 () Bool)

(assert (=> b!3220559 (=> res!1311022 e!2007992)))

(declare-fun printWithSeparatorTokenList!166 (LexerInterface!4821 List!36341 Token!9830) List!36339)

(assert (=> b!3220559 (= res!1311022 (not (= lt!1090577 (++!8706 (++!8706 lt!1090582 lt!1090605) (printWithSeparatorTokenList!166 thiss!18206 (t!240466 (t!240466 tokens!494)) separatorToken!241)))))))

(assert (=> b!3220559 (= lt!1090582 (list!12897 (charsOf!3248 (h!41637 (t!240466 tokens!494)))))))

(declare-fun lt!1090583 () List!36339)

(assert (=> b!3220559 (= lt!1090583 (++!8706 lt!1090605 lt!1090577))))

(assert (=> b!3220559 (= lt!1090605 (list!12897 (charsOf!3248 separatorToken!241)))))

(assert (=> b!3220559 (= lt!1090577 (printWithSeparatorTokenList!166 thiss!18206 (t!240466 tokens!494) separatorToken!241))))

(assert (=> b!3220559 (= lt!1090607 (printWithSeparatorTokenList!166 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3220560 () Bool)

(declare-fun res!1311027 () Bool)

(assert (=> b!3220560 (=> (not res!1311027) (not e!2007975))))

(declare-fun apply!8231 (BalanceConc!21294 Int) Token!9830)

(assert (=> b!3220560 (= res!1311027 (= (apply!8231 (_1!20955 lt!1090574) 0) separatorToken!241))))

(declare-fun b!3220561 () Bool)

(declare-fun res!1311036 () Bool)

(assert (=> b!3220561 (=> res!1311036 e!2007996)))

(declare-fun rulesProduceIndividualToken!2313 (LexerInterface!4821 List!36340 Token!9830) Bool)

(assert (=> b!3220561 (= res!1311036 (not (rulesProduceIndividualToken!2313 thiss!18206 rules!2135 (h!41637 tokens!494))))))

(declare-fun b!3220562 () Bool)

(declare-fun res!1311013 () Bool)

(assert (=> b!3220562 (=> (not res!1311013) (not e!2007988))))

(assert (=> b!3220562 (= res!1311013 (isSeparator!5232 (rule!7690 separatorToken!241)))))

(declare-fun b!3220563 () Bool)

(declare-fun e!2007990 () Bool)

(declare-fun tp!1014651 () Bool)

(assert (=> b!3220563 (= e!2007990 (and e!2007978 tp!1014651))))

(assert (=> b!3220564 (= e!2008001 (and tp!1014660 tp!1014661))))

(declare-fun b!3220565 () Bool)

(declare-fun e!2007983 () Bool)

(declare-fun e!2007999 () Bool)

(assert (=> b!3220565 (= e!2007983 e!2007999)))

(declare-fun res!1311008 () Bool)

(assert (=> b!3220565 (=> (not res!1311008) (not e!2007999))))

(declare-fun lt!1090610 () Rule!10264)

(assert (=> b!3220565 (= res!1311008 (matchR!4625 (regex!5232 lt!1090610) lt!1090575))))

(declare-fun lt!1090620 () Option!7169)

(assert (=> b!3220565 (= lt!1090610 (get!11537 lt!1090620))))

(declare-fun res!1311016 () Bool)

(assert (=> start!302610 (=> (not res!1311016) (not e!2007988))))

(assert (=> start!302610 (= res!1311016 ((_ is Lexer!4819) thiss!18206))))

(assert (=> start!302610 e!2007988))

(assert (=> start!302610 true))

(assert (=> start!302610 e!2007990))

(declare-fun e!2007973 () Bool)

(assert (=> start!302610 e!2007973))

(declare-fun e!2007970 () Bool)

(declare-fun inv!49093 (Token!9830) Bool)

(assert (=> start!302610 (and (inv!49093 separatorToken!241) e!2007970)))

(declare-fun e!2007968 () Bool)

(declare-fun tp!1014652 () Bool)

(declare-fun b!3220566 () Bool)

(assert (=> b!3220566 (= e!2007973 (and (inv!49093 (h!41637 tokens!494)) e!2007968 tp!1014652))))

(declare-fun b!3220567 () Bool)

(declare-fun res!1311033 () Bool)

(assert (=> b!3220567 (=> (not res!1311033) (not e!2007988))))

(assert (=> b!3220567 (= res!1311033 (and (not ((_ is Nil!36217) tokens!494)) (not ((_ is Nil!36217) (t!240466 tokens!494)))))))

(declare-fun b!3220568 () Bool)

(declare-fun res!1311023 () Bool)

(assert (=> b!3220568 (=> (not res!1311023) (not e!2007988))))

(declare-fun isEmpty!20322 (List!36340) Bool)

(assert (=> b!3220568 (= res!1311023 (not (isEmpty!20322 rules!2135)))))

(declare-fun b!3220569 () Bool)

(assert (=> b!3220569 (= e!2007999 (= (rule!7690 (h!41637 tokens!494)) lt!1090610))))

(declare-fun b!3220570 () Bool)

(assert (=> b!3220570 (= e!2007967 false)))

(declare-fun b!3220571 () Bool)

(assert (=> b!3220571 (= e!2007988 (not e!2007994))))

(declare-fun res!1311020 () Bool)

(assert (=> b!3220571 (=> res!1311020 e!2007994)))

(assert (=> b!3220571 (= res!1311020 (not (= lt!1090585 lt!1090576)))))

(declare-fun printList!1371 (LexerInterface!4821 List!36341) List!36339)

(assert (=> b!3220571 (= lt!1090576 (printList!1371 thiss!18206 (Cons!36217 (h!41637 tokens!494) Nil!36217)))))

(declare-fun lt!1090597 () BalanceConc!21292)

(assert (=> b!3220571 (= lt!1090585 (list!12897 lt!1090597))))

(declare-fun lt!1090596 () BalanceConc!21294)

(declare-fun printTailRec!1318 (LexerInterface!4821 BalanceConc!21294 Int BalanceConc!21292) BalanceConc!21292)

(assert (=> b!3220571 (= lt!1090597 (printTailRec!1318 thiss!18206 lt!1090596 0 (BalanceConc!21293 Empty!10839)))))

(declare-fun print!1886 (LexerInterface!4821 BalanceConc!21294) BalanceConc!21292)

(assert (=> b!3220571 (= lt!1090597 (print!1886 thiss!18206 lt!1090596))))

(declare-fun singletonSeq!2328 (Token!9830) BalanceConc!21294)

(assert (=> b!3220571 (= lt!1090596 (singletonSeq!2328 (h!41637 tokens!494)))))

(declare-fun e!2007986 () Bool)

(declare-fun tp!1014655 () Bool)

(declare-fun b!3220572 () Bool)

(declare-fun e!2007972 () Bool)

(assert (=> b!3220572 (= e!2007986 (and tp!1014655 (inv!49089 (tag!5764 (rule!7690 (h!41637 tokens!494)))) (inv!49092 (transformation!5232 (rule!7690 (h!41637 tokens!494)))) e!2007972))))

(declare-fun b!3220573 () Bool)

(declare-fun res!1311014 () Bool)

(assert (=> b!3220573 (=> (not res!1311014) (not e!2007988))))

(assert (=> b!3220573 (= res!1311014 (rulesProduceIndividualToken!2313 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3220574 () Bool)

(assert (=> b!3220574 (= e!2007971 (= (rule!7690 separatorToken!241) lt!1090584))))

(declare-fun b!3220575 () Bool)

(declare-fun e!2007984 () Bool)

(declare-fun e!2007979 () Bool)

(assert (=> b!3220575 (= e!2007984 e!2007979)))

(declare-fun res!1311011 () Bool)

(assert (=> b!3220575 (=> (not res!1311011) (not e!2007979))))

(declare-fun lt!1090589 () Rule!10264)

(assert (=> b!3220575 (= res!1311011 (matchR!4625 (regex!5232 lt!1090589) lt!1090582))))

(declare-fun lt!1090598 () Option!7169)

(assert (=> b!3220575 (= lt!1090589 (get!11537 lt!1090598))))

(declare-fun b!3220576 () Bool)

(declare-fun res!1311025 () Bool)

(assert (=> b!3220576 (=> (not res!1311025) (not e!2007988))))

(declare-fun rulesInvariant!4218 (LexerInterface!4821 List!36340) Bool)

(assert (=> b!3220576 (= res!1311025 (rulesInvariant!4218 thiss!18206 rules!2135))))

(assert (=> b!3220577 (= e!2007966 (and tp!1014650 tp!1014653))))

(declare-fun b!3220578 () Bool)

(declare-fun e!2007987 () Bool)

(assert (=> b!3220578 (= e!2007969 e!2007987)))

(declare-fun res!1311035 () Bool)

(assert (=> b!3220578 (=> res!1311035 e!2007987)))

(declare-fun lt!1090592 () List!36339)

(assert (=> b!3220578 (= res!1311035 (not (= lt!1090607 lt!1090592)))))

(assert (=> b!3220578 (= lt!1090600 lt!1090592)))

(assert (=> b!3220578 (= lt!1090592 (++!8706 lt!1090575 lt!1090583))))

(declare-fun lt!1090616 () Unit!50760)

(declare-fun lemmaConcatAssociativity!1760 (List!36339 List!36339 List!36339) Unit!50760)

(assert (=> b!3220578 (= lt!1090616 (lemmaConcatAssociativity!1760 lt!1090575 lt!1090605 lt!1090577))))

(declare-fun b!3220579 () Bool)

(declare-fun e!2007974 () Bool)

(assert (=> b!3220579 (= e!2007974 false)))

(declare-fun b!3220580 () Bool)

(declare-fun e!2007977 () Bool)

(declare-fun lt!1090619 () tuple2!35642)

(assert (=> b!3220580 (= e!2007977 (not (isEmpty!20321 (_2!20955 lt!1090619))))))

(declare-fun b!3220581 () Bool)

(declare-fun e!2008000 () Bool)

(assert (=> b!3220581 (= e!2007996 e!2008000)))

(declare-fun res!1311017 () Bool)

(assert (=> b!3220581 (=> res!1311017 e!2008000)))

(declare-fun lt!1090593 () BalanceConc!21292)

(declare-fun isEmpty!20323 (BalanceConc!21294) Bool)

(declare-fun lex!2151 (LexerInterface!4821 List!36340 BalanceConc!21292) tuple2!35642)

(assert (=> b!3220581 (= res!1311017 (isEmpty!20323 (_1!20955 (lex!2151 thiss!18206 rules!2135 lt!1090593))))))

(declare-fun seqFromList!3536 (List!36339) BalanceConc!21292)

(assert (=> b!3220581 (= lt!1090593 (seqFromList!3536 lt!1090575))))

(declare-fun b!3220582 () Bool)

(declare-fun e!2007995 () Unit!50760)

(declare-fun Unit!50764 () Unit!50760)

(assert (=> b!3220582 (= e!2007995 Unit!50764)))

(assert (=> b!3220583 (= e!2007972 (and tp!1014654 tp!1014659))))

(declare-fun b!3220584 () Bool)

(assert (=> b!3220584 (= e!2008000 e!2007989)))

(declare-fun res!1311021 () Bool)

(assert (=> b!3220584 (=> res!1311021 e!2007989)))

(assert (=> b!3220584 (= res!1311021 (or (isSeparator!5232 (rule!7690 (h!41637 tokens!494))) (isSeparator!5232 (rule!7690 (h!41637 (t!240466 tokens!494))))))))

(declare-fun lt!1090579 () Unit!50760)

(declare-fun forallContained!1203 (List!36341 Int Token!9830) Unit!50760)

(assert (=> b!3220584 (= lt!1090579 (forallContained!1203 tokens!494 lambda!117726 (h!41637 (t!240466 tokens!494))))))

(declare-fun lt!1090591 () Unit!50760)

(assert (=> b!3220584 (= lt!1090591 (forallContained!1203 tokens!494 lambda!117726 (h!41637 tokens!494)))))

(declare-fun tp!1014657 () Bool)

(declare-fun b!3220585 () Bool)

(declare-fun inv!21 (TokenValue!5462) Bool)

(assert (=> b!3220585 (= e!2007970 (and (inv!21 (value!169572 separatorToken!241)) e!2007980 tp!1014657))))

(declare-fun b!3220586 () Bool)

(declare-fun e!2007993 () Bool)

(assert (=> b!3220586 (= e!2007993 true)))

(declare-fun lt!1090578 () Bool)

(declare-fun contains!6488 (List!36340 Rule!10264) Bool)

(assert (=> b!3220586 (= lt!1090578 (contains!6488 rules!2135 (rule!7690 (h!41637 (t!240466 tokens!494)))))))

(declare-fun res!1311031 () Bool)

(assert (=> b!3220587 (=> (not res!1311031) (not e!2007988))))

(declare-fun forall!7414 (List!36341 Int) Bool)

(assert (=> b!3220587 (= res!1311031 (forall!7414 tokens!494 lambda!117726))))

(declare-fun tp!1014662 () Bool)

(declare-fun b!3220588 () Bool)

(assert (=> b!3220588 (= e!2007968 (and (inv!21 (value!169572 (h!41637 tokens!494))) e!2007986 tp!1014662))))

(declare-fun b!3220589 () Bool)

(declare-fun res!1311019 () Bool)

(assert (=> b!3220589 (=> res!1311019 e!2007977)))

(assert (=> b!3220589 (= res!1311019 (not (= (apply!8231 (_1!20955 lt!1090619) 0) (h!41637 (t!240466 tokens!494)))))))

(declare-fun b!3220590 () Bool)

(declare-fun Unit!50765 () Unit!50760)

(assert (=> b!3220590 (= e!2007995 Unit!50765)))

(declare-fun lt!1090604 () C!20168)

(declare-fun lt!1090615 () Unit!50760)

(assert (=> b!3220590 (= lt!1090615 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!396 (regex!5232 (rule!7690 separatorToken!241)) lt!1090605 lt!1090604))))

(declare-fun res!1311029 () Bool)

(assert (=> b!3220590 (= res!1311029 (not (matchR!4625 (regex!5232 (rule!7690 separatorToken!241)) lt!1090605)))))

(assert (=> b!3220590 (=> (not res!1311029) (not e!2007974))))

(assert (=> b!3220590 e!2007974))

(declare-fun b!3220591 () Bool)

(declare-fun res!1311030 () Bool)

(assert (=> b!3220591 (=> (not res!1311030) (not e!2007988))))

(declare-fun sepAndNonSepRulesDisjointChars!1426 (List!36340 List!36340) Bool)

(assert (=> b!3220591 (= res!1311030 (sepAndNonSepRulesDisjointChars!1426 rules!2135 rules!2135))))

(declare-fun b!3220592 () Bool)

(assert (=> b!3220592 (= e!2007979 (= (rule!7690 (h!41637 (t!240466 tokens!494))) lt!1090589))))

(assert (=> b!3220593 (= e!2007987 e!2007993)))

(declare-fun res!1311012 () Bool)

(assert (=> b!3220593 (=> res!1311012 e!2007993)))

(assert (=> b!3220593 (= res!1311012 (not (contains!6488 rules!2135 (rule!7690 separatorToken!241))))))

(declare-fun lt!1090602 () Unit!50760)

(assert (=> b!3220593 (= lt!1090602 e!2007982)))

(declare-fun c!541630 () Bool)

(declare-fun contains!6489 (List!36339 C!20168) Bool)

(declare-fun usedCharacters!548 (Regex!9991) List!36339)

(assert (=> b!3220593 (= c!541630 (not (contains!6489 (usedCharacters!548 (regex!5232 (rule!7690 (h!41637 (t!240466 tokens!494))))) lt!1090614)))))

(declare-fun head!7057 (List!36339) C!20168)

(assert (=> b!3220593 (= lt!1090614 (head!7057 lt!1090582))))

(declare-datatypes ((tuple2!35644 0))(
  ( (tuple2!35645 (_1!20956 Token!9830) (_2!20956 List!36339)) )
))
(declare-datatypes ((Option!7170 0))(
  ( (None!7169) (Some!7169 (v!35749 tuple2!35644)) )
))
(declare-fun maxPrefixOneRule!1600 (LexerInterface!4821 Rule!10264 List!36339) Option!7170)

(declare-fun apply!8232 (TokenValueInjection!10352 BalanceConc!21292) TokenValue!5462)

(declare-fun size!27308 (List!36339) Int)

(assert (=> b!3220593 (= (maxPrefixOneRule!1600 thiss!18206 (rule!7690 (h!41637 (t!240466 tokens!494))) lt!1090582) (Some!7169 (tuple2!35645 (Token!9831 (apply!8232 (transformation!5232 (rule!7690 (h!41637 (t!240466 tokens!494)))) (seqFromList!3536 lt!1090582)) (rule!7690 (h!41637 (t!240466 tokens!494))) (size!27308 lt!1090582) lt!1090582) Nil!36215)))))

(declare-fun lt!1090590 () Unit!50760)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!713 (LexerInterface!4821 List!36340 List!36339 List!36339 List!36339 Rule!10264) Unit!50760)

(assert (=> b!3220593 (= lt!1090590 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!713 thiss!18206 rules!2135 lt!1090582 lt!1090582 Nil!36215 (rule!7690 (h!41637 (t!240466 tokens!494)))))))

(assert (=> b!3220593 e!2007984))

(declare-fun res!1311015 () Bool)

(assert (=> b!3220593 (=> (not res!1311015) (not e!2007984))))

(declare-fun isDefined!5568 (Option!7169) Bool)

(assert (=> b!3220593 (= res!1311015 (isDefined!5568 lt!1090598))))

(declare-fun getRuleFromTag!937 (LexerInterface!4821 List!36340 String!40644) Option!7169)

(assert (=> b!3220593 (= lt!1090598 (getRuleFromTag!937 thiss!18206 rules!2135 (tag!5764 (rule!7690 (h!41637 (t!240466 tokens!494))))))))

(declare-fun lt!1090611 () Unit!50760)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!937 (LexerInterface!4821 List!36340 List!36339 Token!9830) Unit!50760)

(assert (=> b!3220593 (= lt!1090611 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!937 thiss!18206 rules!2135 lt!1090582 (h!41637 (t!240466 tokens!494))))))

(declare-fun lt!1090601 () Bool)

(assert (=> b!3220593 lt!1090601))

(declare-fun lt!1090612 () Unit!50760)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!860 (LexerInterface!4821 List!36340 List!36341 Token!9830) Unit!50760)

(assert (=> b!3220593 (= lt!1090612 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!860 thiss!18206 rules!2135 tokens!494 (h!41637 (t!240466 tokens!494))))))

(declare-fun maxPrefix!2463 (LexerInterface!4821 List!36340 List!36339) Option!7170)

(assert (=> b!3220593 (= (maxPrefix!2463 thiss!18206 rules!2135 lt!1090592) (Some!7169 (tuple2!35645 (h!41637 tokens!494) lt!1090583)))))

(declare-fun lt!1090613 () Unit!50760)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!156 (LexerInterface!4821 List!36340 Token!9830 Rule!10264 List!36339 Rule!10264) Unit!50760)

(assert (=> b!3220593 (= lt!1090613 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!156 thiss!18206 rules!2135 (h!41637 tokens!494) (rule!7690 (h!41637 tokens!494)) lt!1090583 (rule!7690 separatorToken!241)))))

(assert (=> b!3220593 (not (contains!6489 (usedCharacters!548 (regex!5232 (rule!7690 (h!41637 tokens!494)))) lt!1090604))))

(declare-fun lt!1090580 () Unit!50760)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!156 (LexerInterface!4821 List!36340 List!36340 Rule!10264 Rule!10264 C!20168) Unit!50760)

(assert (=> b!3220593 (= lt!1090580 (lemmaNonSepRuleNotContainsCharContainedInASepRule!156 thiss!18206 rules!2135 rules!2135 (rule!7690 (h!41637 tokens!494)) (rule!7690 separatorToken!241) lt!1090604))))

(declare-fun lt!1090586 () Unit!50760)

(assert (=> b!3220593 (= lt!1090586 (forallContained!1203 tokens!494 lambda!117727 (h!41637 (t!240466 tokens!494))))))

(declare-fun lt!1090617 () Bool)

(assert (=> b!3220593 (= lt!1090601 (not lt!1090617))))

(assert (=> b!3220593 (= lt!1090601 (rulesProduceIndividualToken!2313 thiss!18206 rules!2135 (h!41637 (t!240466 tokens!494))))))

(assert (=> b!3220593 (= lt!1090617 e!2007977)))

(declare-fun res!1311028 () Bool)

(assert (=> b!3220593 (=> res!1311028 e!2007977)))

(declare-fun size!27309 (BalanceConc!21294) Int)

(assert (=> b!3220593 (= res!1311028 (not (= (size!27309 (_1!20955 lt!1090619)) 1)))))

(declare-fun lt!1090606 () BalanceConc!21292)

(assert (=> b!3220593 (= lt!1090619 (lex!2151 thiss!18206 rules!2135 lt!1090606))))

(declare-fun lt!1090609 () BalanceConc!21294)

(assert (=> b!3220593 (= lt!1090606 (printTailRec!1318 thiss!18206 lt!1090609 0 (BalanceConc!21293 Empty!10839)))))

(assert (=> b!3220593 (= lt!1090606 (print!1886 thiss!18206 lt!1090609))))

(assert (=> b!3220593 (= lt!1090609 (singletonSeq!2328 (h!41637 (t!240466 tokens!494))))))

(assert (=> b!3220593 e!2007975))

(declare-fun res!1311024 () Bool)

(assert (=> b!3220593 (=> (not res!1311024) (not e!2007975))))

(assert (=> b!3220593 (= res!1311024 (= (size!27309 (_1!20955 lt!1090574)) 1))))

(declare-fun lt!1090595 () BalanceConc!21292)

(assert (=> b!3220593 (= lt!1090574 (lex!2151 thiss!18206 rules!2135 lt!1090595))))

(declare-fun lt!1090608 () BalanceConc!21294)

(assert (=> b!3220593 (= lt!1090595 (printTailRec!1318 thiss!18206 lt!1090608 0 (BalanceConc!21293 Empty!10839)))))

(assert (=> b!3220593 (= lt!1090595 (print!1886 thiss!18206 lt!1090608))))

(assert (=> b!3220593 (= lt!1090608 (singletonSeq!2328 separatorToken!241))))

(declare-fun lt!1090603 () Unit!50760)

(assert (=> b!3220593 (= lt!1090603 e!2007995)))

(declare-fun c!541631 () Bool)

(assert (=> b!3220593 (= c!541631 (not (contains!6489 (usedCharacters!548 (regex!5232 (rule!7690 separatorToken!241))) lt!1090604)))))

(assert (=> b!3220593 (= lt!1090604 (head!7057 lt!1090605))))

(assert (=> b!3220593 e!2007976))

(declare-fun res!1311010 () Bool)

(assert (=> b!3220593 (=> (not res!1311010) (not e!2007976))))

(assert (=> b!3220593 (= res!1311010 (isDefined!5568 lt!1090581))))

(assert (=> b!3220593 (= lt!1090581 (getRuleFromTag!937 thiss!18206 rules!2135 (tag!5764 (rule!7690 separatorToken!241))))))

(declare-fun lt!1090588 () Unit!50760)

(assert (=> b!3220593 (= lt!1090588 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!937 thiss!18206 rules!2135 lt!1090605 separatorToken!241))))

(assert (=> b!3220593 (= (maxPrefixOneRule!1600 thiss!18206 (rule!7690 (h!41637 tokens!494)) lt!1090575) (Some!7169 (tuple2!35645 (Token!9831 (apply!8232 (transformation!5232 (rule!7690 (h!41637 tokens!494))) lt!1090593) (rule!7690 (h!41637 tokens!494)) (size!27308 lt!1090575) lt!1090575) Nil!36215)))))

(declare-fun lt!1090599 () Unit!50760)

(assert (=> b!3220593 (= lt!1090599 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!713 thiss!18206 rules!2135 lt!1090575 lt!1090575 Nil!36215 (rule!7690 (h!41637 tokens!494))))))

(assert (=> b!3220593 e!2007983))

(declare-fun res!1311026 () Bool)

(assert (=> b!3220593 (=> (not res!1311026) (not e!2007983))))

(assert (=> b!3220593 (= res!1311026 (isDefined!5568 lt!1090620))))

(assert (=> b!3220593 (= lt!1090620 (getRuleFromTag!937 thiss!18206 rules!2135 (tag!5764 (rule!7690 (h!41637 tokens!494)))))))

(declare-fun lt!1090594 () Unit!50760)

(assert (=> b!3220593 (= lt!1090594 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!937 thiss!18206 rules!2135 lt!1090575 (h!41637 tokens!494)))))

(declare-fun lt!1090587 () Unit!50760)

(assert (=> b!3220593 (= lt!1090587 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!860 thiss!18206 rules!2135 tokens!494 (h!41637 tokens!494)))))

(assert (= (and start!302610 res!1311016) b!3220568))

(assert (= (and b!3220568 res!1311023) b!3220576))

(assert (= (and b!3220576 res!1311025) b!3220555))

(assert (= (and b!3220555 res!1311018) b!3220573))

(assert (= (and b!3220573 res!1311014) b!3220562))

(assert (= (and b!3220562 res!1311013) b!3220587))

(assert (= (and b!3220587 res!1311031) b!3220591))

(assert (= (and b!3220591 res!1311030) b!3220567))

(assert (= (and b!3220567 res!1311033) b!3220571))

(assert (= (and b!3220571 (not res!1311020)) b!3220550))

(assert (= (and b!3220550 (not res!1311009)) b!3220561))

(assert (= (and b!3220561 (not res!1311036)) b!3220581))

(assert (= (and b!3220581 (not res!1311017)) b!3220584))

(assert (= (and b!3220584 (not res!1311021)) b!3220559))

(assert (= (and b!3220559 (not res!1311022)) b!3220556))

(assert (= (and b!3220556 (not res!1311007)) b!3220578))

(assert (= (and b!3220578 (not res!1311035)) b!3220593))

(assert (= (and b!3220593 res!1311026) b!3220565))

(assert (= (and b!3220565 res!1311008) b!3220569))

(assert (= (and b!3220593 res!1311010) b!3220551))

(assert (= (and b!3220551 res!1311034) b!3220574))

(assert (= (and b!3220593 c!541631) b!3220590))

(assert (= (and b!3220593 (not c!541631)) b!3220582))

(assert (= (and b!3220590 res!1311029) b!3220579))

(assert (= (and b!3220593 res!1311024) b!3220560))

(assert (= (and b!3220560 res!1311027) b!3220552))

(assert (= (and b!3220593 (not res!1311028)) b!3220589))

(assert (= (and b!3220589 (not res!1311019)) b!3220580))

(assert (= (and b!3220593 res!1311015) b!3220575))

(assert (= (and b!3220575 res!1311011) b!3220592))

(assert (= (and b!3220593 c!541630) b!3220558))

(assert (= (and b!3220593 (not c!541630)) b!3220554))

(assert (= (and b!3220558 res!1311032) b!3220570))

(assert (= (and b!3220593 (not res!1311012)) b!3220586))

(assert (= b!3220557 b!3220564))

(assert (= b!3220563 b!3220557))

(assert (= (and start!302610 ((_ is Cons!36216) rules!2135)) b!3220563))

(assert (= b!3220572 b!3220583))

(assert (= b!3220588 b!3220572))

(assert (= b!3220566 b!3220588))

(assert (= (and start!302610 ((_ is Cons!36217) tokens!494)) b!3220566))

(assert (= b!3220553 b!3220577))

(assert (= b!3220585 b!3220553))

(assert (= start!302610 b!3220585))

(declare-fun m!3497025 () Bool)

(assert (=> b!3220578 m!3497025))

(declare-fun m!3497027 () Bool)

(assert (=> b!3220578 m!3497027))

(declare-fun m!3497029 () Bool)

(assert (=> b!3220552 m!3497029))

(declare-fun m!3497031 () Bool)

(assert (=> b!3220585 m!3497031))

(declare-fun m!3497033 () Bool)

(assert (=> b!3220558 m!3497033))

(declare-fun m!3497035 () Bool)

(assert (=> b!3220558 m!3497035))

(declare-fun m!3497037 () Bool)

(assert (=> b!3220559 m!3497037))

(declare-fun m!3497039 () Bool)

(assert (=> b!3220559 m!3497039))

(declare-fun m!3497041 () Bool)

(assert (=> b!3220559 m!3497041))

(declare-fun m!3497043 () Bool)

(assert (=> b!3220559 m!3497043))

(assert (=> b!3220559 m!3497037))

(declare-fun m!3497045 () Bool)

(assert (=> b!3220559 m!3497045))

(declare-fun m!3497047 () Bool)

(assert (=> b!3220559 m!3497047))

(assert (=> b!3220559 m!3497039))

(declare-fun m!3497049 () Bool)

(assert (=> b!3220559 m!3497049))

(declare-fun m!3497051 () Bool)

(assert (=> b!3220559 m!3497051))

(assert (=> b!3220559 m!3497047))

(declare-fun m!3497053 () Bool)

(assert (=> b!3220559 m!3497053))

(assert (=> b!3220559 m!3497051))

(declare-fun m!3497055 () Bool)

(assert (=> b!3220559 m!3497055))

(declare-fun m!3497057 () Bool)

(assert (=> b!3220555 m!3497057))

(assert (=> b!3220555 m!3497057))

(declare-fun m!3497059 () Bool)

(assert (=> b!3220555 m!3497059))

(declare-fun m!3497061 () Bool)

(assert (=> b!3220586 m!3497061))

(declare-fun m!3497063 () Bool)

(assert (=> b!3220575 m!3497063))

(declare-fun m!3497065 () Bool)

(assert (=> b!3220575 m!3497065))

(declare-fun m!3497067 () Bool)

(assert (=> start!302610 m!3497067))

(declare-fun m!3497069 () Bool)

(assert (=> b!3220588 m!3497069))

(declare-fun m!3497071 () Bool)

(assert (=> b!3220573 m!3497071))

(declare-fun m!3497073 () Bool)

(assert (=> b!3220566 m!3497073))

(declare-fun m!3497075 () Bool)

(assert (=> b!3220590 m!3497075))

(declare-fun m!3497077 () Bool)

(assert (=> b!3220590 m!3497077))

(declare-fun m!3497079 () Bool)

(assert (=> b!3220550 m!3497079))

(assert (=> b!3220550 m!3497079))

(declare-fun m!3497081 () Bool)

(assert (=> b!3220550 m!3497081))

(declare-fun m!3497083 () Bool)

(assert (=> b!3220591 m!3497083))

(declare-fun m!3497085 () Bool)

(assert (=> b!3220560 m!3497085))

(declare-fun m!3497087 () Bool)

(assert (=> b!3220556 m!3497087))

(assert (=> b!3220556 m!3497087))

(declare-fun m!3497089 () Bool)

(assert (=> b!3220556 m!3497089))

(declare-fun m!3497091 () Bool)

(assert (=> b!3220584 m!3497091))

(declare-fun m!3497093 () Bool)

(assert (=> b!3220584 m!3497093))

(declare-fun m!3497095 () Bool)

(assert (=> b!3220551 m!3497095))

(declare-fun m!3497097 () Bool)

(assert (=> b!3220551 m!3497097))

(declare-fun m!3497099 () Bool)

(assert (=> b!3220580 m!3497099))

(declare-fun m!3497101 () Bool)

(assert (=> b!3220568 m!3497101))

(declare-fun m!3497103 () Bool)

(assert (=> b!3220561 m!3497103))

(declare-fun m!3497105 () Bool)

(assert (=> b!3220576 m!3497105))

(declare-fun m!3497107 () Bool)

(assert (=> b!3220553 m!3497107))

(declare-fun m!3497109 () Bool)

(assert (=> b!3220553 m!3497109))

(declare-fun m!3497111 () Bool)

(assert (=> b!3220565 m!3497111))

(declare-fun m!3497113 () Bool)

(assert (=> b!3220565 m!3497113))

(declare-fun m!3497115 () Bool)

(assert (=> b!3220557 m!3497115))

(declare-fun m!3497117 () Bool)

(assert (=> b!3220557 m!3497117))

(declare-fun m!3497119 () Bool)

(assert (=> b!3220571 m!3497119))

(declare-fun m!3497121 () Bool)

(assert (=> b!3220571 m!3497121))

(declare-fun m!3497123 () Bool)

(assert (=> b!3220571 m!3497123))

(declare-fun m!3497125 () Bool)

(assert (=> b!3220571 m!3497125))

(declare-fun m!3497127 () Bool)

(assert (=> b!3220571 m!3497127))

(declare-fun m!3497129 () Bool)

(assert (=> b!3220589 m!3497129))

(declare-fun m!3497131 () Bool)

(assert (=> b!3220587 m!3497131))

(declare-fun m!3497133 () Bool)

(assert (=> b!3220572 m!3497133))

(declare-fun m!3497135 () Bool)

(assert (=> b!3220572 m!3497135))

(declare-fun m!3497137 () Bool)

(assert (=> b!3220593 m!3497137))

(declare-fun m!3497139 () Bool)

(assert (=> b!3220593 m!3497139))

(declare-fun m!3497141 () Bool)

(assert (=> b!3220593 m!3497141))

(declare-fun m!3497143 () Bool)

(assert (=> b!3220593 m!3497143))

(declare-fun m!3497145 () Bool)

(assert (=> b!3220593 m!3497145))

(declare-fun m!3497147 () Bool)

(assert (=> b!3220593 m!3497147))

(declare-fun m!3497149 () Bool)

(assert (=> b!3220593 m!3497149))

(declare-fun m!3497151 () Bool)

(assert (=> b!3220593 m!3497151))

(declare-fun m!3497153 () Bool)

(assert (=> b!3220593 m!3497153))

(declare-fun m!3497155 () Bool)

(assert (=> b!3220593 m!3497155))

(declare-fun m!3497157 () Bool)

(assert (=> b!3220593 m!3497157))

(declare-fun m!3497159 () Bool)

(assert (=> b!3220593 m!3497159))

(declare-fun m!3497161 () Bool)

(assert (=> b!3220593 m!3497161))

(declare-fun m!3497163 () Bool)

(assert (=> b!3220593 m!3497163))

(declare-fun m!3497165 () Bool)

(assert (=> b!3220593 m!3497165))

(declare-fun m!3497167 () Bool)

(assert (=> b!3220593 m!3497167))

(declare-fun m!3497169 () Bool)

(assert (=> b!3220593 m!3497169))

(declare-fun m!3497171 () Bool)

(assert (=> b!3220593 m!3497171))

(declare-fun m!3497173 () Bool)

(assert (=> b!3220593 m!3497173))

(assert (=> b!3220593 m!3497157))

(declare-fun m!3497175 () Bool)

(assert (=> b!3220593 m!3497175))

(declare-fun m!3497177 () Bool)

(assert (=> b!3220593 m!3497177))

(declare-fun m!3497179 () Bool)

(assert (=> b!3220593 m!3497179))

(declare-fun m!3497181 () Bool)

(assert (=> b!3220593 m!3497181))

(declare-fun m!3497183 () Bool)

(assert (=> b!3220593 m!3497183))

(declare-fun m!3497185 () Bool)

(assert (=> b!3220593 m!3497185))

(declare-fun m!3497187 () Bool)

(assert (=> b!3220593 m!3497187))

(declare-fun m!3497189 () Bool)

(assert (=> b!3220593 m!3497189))

(assert (=> b!3220593 m!3497163))

(declare-fun m!3497191 () Bool)

(assert (=> b!3220593 m!3497191))

(declare-fun m!3497193 () Bool)

(assert (=> b!3220593 m!3497193))

(declare-fun m!3497195 () Bool)

(assert (=> b!3220593 m!3497195))

(declare-fun m!3497197 () Bool)

(assert (=> b!3220593 m!3497197))

(declare-fun m!3497199 () Bool)

(assert (=> b!3220593 m!3497199))

(declare-fun m!3497201 () Bool)

(assert (=> b!3220593 m!3497201))

(declare-fun m!3497203 () Bool)

(assert (=> b!3220593 m!3497203))

(declare-fun m!3497205 () Bool)

(assert (=> b!3220593 m!3497205))

(declare-fun m!3497207 () Bool)

(assert (=> b!3220593 m!3497207))

(declare-fun m!3497209 () Bool)

(assert (=> b!3220593 m!3497209))

(assert (=> b!3220593 m!3497175))

(declare-fun m!3497211 () Bool)

(assert (=> b!3220593 m!3497211))

(assert (=> b!3220593 m!3497143))

(declare-fun m!3497213 () Bool)

(assert (=> b!3220593 m!3497213))

(declare-fun m!3497215 () Bool)

(assert (=> b!3220593 m!3497215))

(declare-fun m!3497217 () Bool)

(assert (=> b!3220593 m!3497217))

(declare-fun m!3497219 () Bool)

(assert (=> b!3220593 m!3497219))

(declare-fun m!3497221 () Bool)

(assert (=> b!3220593 m!3497221))

(declare-fun m!3497223 () Bool)

(assert (=> b!3220593 m!3497223))

(declare-fun m!3497225 () Bool)

(assert (=> b!3220581 m!3497225))

(declare-fun m!3497227 () Bool)

(assert (=> b!3220581 m!3497227))

(declare-fun m!3497229 () Bool)

(assert (=> b!3220581 m!3497229))

(check-sat (not b!3220551) (not b_next!86297) (not b!3220553) (not b!3220591) (not b!3220581) (not b_next!86307) (not b!3220602) (not b!3220571) (not b!3220550) (not b!3220560) (not b!3220566) (not b!3220584) (not b!3220558) (not b_next!86303) (not b!3220590) (not b!3220593) (not b!3220575) (not b_next!86301) (not b_next!86299) (not b!3220573) b_and!215299 (not b!3220559) (not b!3220565) (not b!3220588) (not b!3220585) (not b!3220576) (not b!3220578) (not b!3220586) b_and!215303 (not b!3220572) (not b!3220561) b_and!215295 (not b!3220563) (not b!3220555) (not b!3220552) (not b!3220589) (not b!3220587) (not b!3220556) b_and!215297 (not b!3220557) (not b!3220568) b_and!215301 (not start!302610) (not b_next!86305) (not b!3220580) b_and!215305)
(check-sat (not b_next!86297) (not b_next!86303) b_and!215299 (not b_next!86307) b_and!215303 b_and!215295 b_and!215297 b_and!215301 (not b_next!86305) b_and!215305 (not b_next!86301) (not b_next!86299))
