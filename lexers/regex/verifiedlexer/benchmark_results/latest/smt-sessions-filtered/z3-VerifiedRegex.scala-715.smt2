; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31090 () Bool)

(assert start!31090)

(declare-fun b!286517 () Bool)

(declare-fun b_free!10489 () Bool)

(declare-fun b_next!10489 () Bool)

(assert (=> b!286517 (= b_free!10489 (not b_next!10489))))

(declare-fun tp!105148 () Bool)

(declare-fun b_and!23097 () Bool)

(assert (=> b!286517 (= tp!105148 b_and!23097)))

(declare-fun b_free!10491 () Bool)

(declare-fun b_next!10491 () Bool)

(assert (=> b!286517 (= b_free!10491 (not b_next!10491))))

(declare-fun tp!105145 () Bool)

(declare-fun b_and!23099 () Bool)

(assert (=> b!286517 (= tp!105145 b_and!23099)))

(declare-fun b!286494 () Bool)

(declare-fun b_free!10493 () Bool)

(declare-fun b_next!10493 () Bool)

(assert (=> b!286494 (= b_free!10493 (not b_next!10493))))

(declare-fun tp!105142 () Bool)

(declare-fun b_and!23101 () Bool)

(assert (=> b!286494 (= tp!105142 b_and!23101)))

(declare-fun b_free!10495 () Bool)

(declare-fun b_next!10495 () Bool)

(assert (=> b!286494 (= b_free!10495 (not b_next!10495))))

(declare-fun tp!105151 () Bool)

(declare-fun b_and!23103 () Bool)

(assert (=> b!286494 (= tp!105151 b_and!23103)))

(declare-fun b!286500 () Bool)

(declare-fun b_free!10497 () Bool)

(declare-fun b_next!10497 () Bool)

(assert (=> b!286500 (= b_free!10497 (not b_next!10497))))

(declare-fun tp!105150 () Bool)

(declare-fun b_and!23105 () Bool)

(assert (=> b!286500 (= tp!105150 b_and!23105)))

(declare-fun b_free!10499 () Bool)

(declare-fun b_next!10499 () Bool)

(assert (=> b!286500 (= b_free!10499 (not b_next!10499))))

(declare-fun tp!105152 () Bool)

(declare-fun b_and!23107 () Bool)

(assert (=> b!286500 (= tp!105152 b_and!23107)))

(declare-fun b!286492 () Bool)

(declare-fun res!130916 () Bool)

(declare-fun e!178286 () Bool)

(assert (=> b!286492 (=> res!130916 e!178286)))

(declare-fun e!178297 () Bool)

(assert (=> b!286492 (= res!130916 e!178297)))

(declare-fun res!130927 () Bool)

(assert (=> b!286492 (=> (not res!130927) (not e!178297))))

(declare-datatypes ((C!2876 0))(
  ( (C!2877 (val!1324 Int)) )
))
(declare-datatypes ((List!3942 0))(
  ( (Nil!3932) (Cons!3932 (h!9329 C!2876) (t!40102 List!3942)) )
))
(declare-fun lt!120506 () List!3942)

(declare-fun lt!120498 () List!3942)

(assert (=> b!286492 (= res!130927 (not (= lt!120506 lt!120498)))))

(declare-fun b!286493 () Bool)

(declare-fun res!130914 () Bool)

(declare-fun e!178298 () Bool)

(assert (=> b!286493 (=> (not res!130914) (not e!178298))))

(declare-datatypes ((List!3943 0))(
  ( (Nil!3933) (Cons!3933 (h!9330 (_ BitVec 16)) (t!40103 List!3943)) )
))
(declare-datatypes ((TokenValue!775 0))(
  ( (FloatLiteralValue!1550 (text!5870 List!3943)) (TokenValueExt!774 (__x!3037 Int)) (Broken!3875 (value!25750 List!3943)) (Object!784) (End!775) (Def!775) (Underscore!775) (Match!775) (Else!775) (Error!775) (Case!775) (If!775) (Extends!775) (Abstract!775) (Class!775) (Val!775) (DelimiterValue!1550 (del!835 List!3943)) (KeywordValue!781 (value!25751 List!3943)) (CommentValue!1550 (value!25752 List!3943)) (WhitespaceValue!1550 (value!25753 List!3943)) (IndentationValue!775 (value!25754 List!3943)) (String!4954) (Int32!775) (Broken!3876 (value!25755 List!3943)) (Boolean!776) (Unit!5277) (OperatorValue!778 (op!835 List!3943)) (IdentifierValue!1550 (value!25756 List!3943)) (IdentifierValue!1551 (value!25757 List!3943)) (WhitespaceValue!1551 (value!25758 List!3943)) (True!1550) (False!1550) (Broken!3877 (value!25759 List!3943)) (Broken!3878 (value!25760 List!3943)) (True!1551) (RightBrace!775) (RightBracket!775) (Colon!775) (Null!775) (Comma!775) (LeftBracket!775) (False!1551) (LeftBrace!775) (ImaginaryLiteralValue!775 (text!5871 List!3943)) (StringLiteralValue!2325 (value!25761 List!3943)) (EOFValue!775 (value!25762 List!3943)) (IdentValue!775 (value!25763 List!3943)) (DelimiterValue!1551 (value!25764 List!3943)) (DedentValue!775 (value!25765 List!3943)) (NewLineValue!775 (value!25766 List!3943)) (IntegerValue!2325 (value!25767 (_ BitVec 32)) (text!5872 List!3943)) (IntegerValue!2326 (value!25768 Int) (text!5873 List!3943)) (Times!775) (Or!775) (Equal!775) (Minus!775) (Broken!3879 (value!25769 List!3943)) (And!775) (Div!775) (LessEqual!775) (Mod!775) (Concat!1752) (Not!775) (Plus!775) (SpaceValue!775 (value!25770 List!3943)) (IntegerValue!2327 (value!25771 Int) (text!5874 List!3943)) (StringLiteralValue!2326 (text!5875 List!3943)) (FloatLiteralValue!1551 (text!5876 List!3943)) (BytesLiteralValue!775 (value!25772 List!3943)) (CommentValue!1551 (value!25773 List!3943)) (StringLiteralValue!2327 (value!25774 List!3943)) (ErrorTokenValue!775 (msg!836 List!3943)) )
))
(declare-datatypes ((IArray!2657 0))(
  ( (IArray!2658 (innerList!1386 List!3942)) )
))
(declare-datatypes ((Conc!1328 0))(
  ( (Node!1328 (left!3247 Conc!1328) (right!3577 Conc!1328) (csize!2886 Int) (cheight!1539 Int)) (Leaf!2044 (xs!3927 IArray!2657) (csize!2887 Int)) (Empty!1328) )
))
(declare-datatypes ((BalanceConc!2664 0))(
  ( (BalanceConc!2665 (c!54238 Conc!1328)) )
))
(declare-datatypes ((Regex!977 0))(
  ( (ElementMatch!977 (c!54239 C!2876)) (Concat!1753 (regOne!2466 Regex!977) (regTwo!2466 Regex!977)) (EmptyExpr!977) (Star!977 (reg!1306 Regex!977)) (EmptyLang!977) (Union!977 (regOne!2467 Regex!977) (regTwo!2467 Regex!977)) )
))
(declare-datatypes ((String!4955 0))(
  ( (String!4956 (value!25775 String)) )
))
(declare-datatypes ((TokenValueInjection!1322 0))(
  ( (TokenValueInjection!1323 (toValue!1500 Int) (toChars!1359 Int)) )
))
(declare-datatypes ((Rule!1306 0))(
  ( (Rule!1307 (regex!753 Regex!977) (tag!969 String!4955) (isSeparator!753 Bool) (transformation!753 TokenValueInjection!1322)) )
))
(declare-datatypes ((List!3944 0))(
  ( (Nil!3934) (Cons!3934 (h!9331 Rule!1306) (t!40104 List!3944)) )
))
(declare-fun rules!1920 () List!3944)

(declare-fun isEmpty!2597 (List!3944) Bool)

(assert (=> b!286493 (= res!130914 (not (isEmpty!2597 rules!1920)))))

(declare-fun e!178299 () Bool)

(assert (=> b!286494 (= e!178299 (and tp!105142 tp!105151))))

(declare-fun b!286495 () Bool)

(declare-fun e!178284 () Bool)

(assert (=> b!286495 (= e!178284 (not e!178286))))

(declare-fun res!130929 () Bool)

(assert (=> b!286495 (=> res!130929 e!178286)))

(declare-datatypes ((Token!1250 0))(
  ( (Token!1251 (value!25776 TokenValue!775) (rule!1352 Rule!1306) (size!3149 Int) (originalCharacters!796 List!3942)) )
))
(declare-fun separatorToken!170 () Token!1250)

(declare-datatypes ((LexerInterface!639 0))(
  ( (LexerInterfaceExt!636 (__x!3038 Int)) (Lexer!637) )
))
(declare-fun thiss!17480 () LexerInterface!639)

(declare-datatypes ((List!3945 0))(
  ( (Nil!3935) (Cons!3935 (h!9332 Token!1250) (t!40105 List!3945)) )
))
(declare-fun tokens!465 () List!3945)

(declare-fun lt!120497 () List!3942)

(declare-fun list!1639 (BalanceConc!2664) List!3942)

(declare-datatypes ((IArray!2659 0))(
  ( (IArray!2660 (innerList!1387 List!3945)) )
))
(declare-datatypes ((Conc!1329 0))(
  ( (Node!1329 (left!3248 Conc!1329) (right!3578 Conc!1329) (csize!2888 Int) (cheight!1540 Int)) (Leaf!2045 (xs!3928 IArray!2659) (csize!2889 Int)) (Empty!1329) )
))
(declare-datatypes ((BalanceConc!2666 0))(
  ( (BalanceConc!2667 (c!54240 Conc!1329)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!312 (LexerInterface!639 List!3944 BalanceConc!2666 Token!1250 Int) BalanceConc!2664)

(declare-fun seqFromList!871 (List!3945) BalanceConc!2666)

(assert (=> b!286495 (= res!130929 (not (= lt!120497 (list!1639 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 (seqFromList!871 (t!40105 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!120501 () List!3942)

(assert (=> b!286495 (= lt!120501 lt!120498)))

(declare-fun lt!120504 () List!3942)

(declare-fun lt!120510 () List!3942)

(declare-fun ++!1046 (List!3942 List!3942) List!3942)

(assert (=> b!286495 (= lt!120498 (++!1046 lt!120504 lt!120510))))

(declare-fun lt!120499 () List!3942)

(assert (=> b!286495 (= lt!120501 (++!1046 (++!1046 lt!120504 lt!120499) lt!120497))))

(declare-datatypes ((Unit!5278 0))(
  ( (Unit!5279) )
))
(declare-fun lt!120508 () Unit!5278)

(declare-fun lemmaConcatAssociativity!454 (List!3942 List!3942 List!3942) Unit!5278)

(assert (=> b!286495 (= lt!120508 (lemmaConcatAssociativity!454 lt!120504 lt!120499 lt!120497))))

(declare-fun charsOf!396 (Token!1250) BalanceConc!2664)

(assert (=> b!286495 (= lt!120504 (list!1639 (charsOf!396 (h!9332 tokens!465))))))

(assert (=> b!286495 (= lt!120510 (++!1046 lt!120499 lt!120497))))

(declare-fun printWithSeparatorTokenWhenNeededList!320 (LexerInterface!639 List!3944 List!3945 Token!1250) List!3942)

(assert (=> b!286495 (= lt!120497 (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 (t!40105 tokens!465) separatorToken!170))))

(assert (=> b!286495 (= lt!120499 (list!1639 (charsOf!396 separatorToken!170)))))

(declare-fun b!286496 () Bool)

(declare-fun e!178289 () Bool)

(assert (=> b!286496 (= e!178298 e!178289)))

(declare-fun res!130923 () Bool)

(assert (=> b!286496 (=> (not res!130923) (not e!178289))))

(declare-fun lt!120500 () BalanceConc!2666)

(declare-fun rulesProduceEachTokenIndividually!431 (LexerInterface!639 List!3944 BalanceConc!2666) Bool)

(assert (=> b!286496 (= res!130923 (rulesProduceEachTokenIndividually!431 thiss!17480 rules!1920 lt!120500))))

(assert (=> b!286496 (= lt!120500 (seqFromList!871 tokens!465))))

(declare-fun e!178303 () Bool)

(declare-fun tp!105149 () Bool)

(declare-fun b!286497 () Bool)

(declare-fun e!178292 () Bool)

(declare-fun inv!21 (TokenValue!775) Bool)

(assert (=> b!286497 (= e!178292 (and (inv!21 (value!25776 separatorToken!170)) e!178303 tp!105149))))

(declare-fun b!286498 () Bool)

(declare-fun res!130922 () Bool)

(declare-fun e!178291 () Bool)

(assert (=> b!286498 (=> res!130922 e!178291)))

(declare-fun rulesProduceIndividualToken!388 (LexerInterface!639 List!3944 Token!1250) Bool)

(assert (=> b!286498 (= res!130922 (not (rulesProduceIndividualToken!388 thiss!17480 rules!1920 (h!9332 tokens!465))))))

(declare-fun res!130928 () Bool)

(assert (=> start!31090 (=> (not res!130928) (not e!178298))))

(get-info :version)

(assert (=> start!31090 (= res!130928 ((_ is Lexer!637) thiss!17480))))

(assert (=> start!31090 e!178298))

(assert (=> start!31090 true))

(declare-fun e!178293 () Bool)

(assert (=> start!31090 e!178293))

(declare-fun inv!4863 (Token!1250) Bool)

(assert (=> start!31090 (and (inv!4863 separatorToken!170) e!178292)))

(declare-fun e!178294 () Bool)

(assert (=> start!31090 e!178294))

(declare-fun b!286499 () Bool)

(declare-fun res!130926 () Bool)

(assert (=> b!286499 (=> (not res!130926) (not e!178289))))

(assert (=> b!286499 (= res!130926 ((_ is Cons!3935) tokens!465))))

(declare-fun e!178295 () Bool)

(assert (=> b!286500 (= e!178295 (and tp!105150 tp!105152))))

(declare-fun b!286501 () Bool)

(assert (=> b!286501 (= e!178289 e!178284)))

(declare-fun res!130920 () Bool)

(assert (=> b!286501 (=> (not res!130920) (not e!178284))))

(declare-fun lt!120505 () List!3942)

(assert (=> b!286501 (= res!130920 (= lt!120506 lt!120505))))

(assert (=> b!286501 (= lt!120505 (list!1639 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 lt!120500 separatorToken!170 0)))))

(assert (=> b!286501 (= lt!120506 (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!286502 () Bool)

(declare-fun res!130925 () Bool)

(assert (=> b!286502 (=> (not res!130925) (not e!178298))))

(declare-fun rulesInvariant!605 (LexerInterface!639 List!3944) Bool)

(assert (=> b!286502 (= res!130925 (rulesInvariant!605 thiss!17480 rules!1920))))

(declare-fun b!286503 () Bool)

(declare-fun e!178285 () Bool)

(declare-fun tp!105143 () Bool)

(assert (=> b!286503 (= e!178293 (and e!178285 tp!105143))))

(declare-fun b!286504 () Bool)

(declare-fun res!130921 () Bool)

(assert (=> b!286504 (=> (not res!130921) (not e!178289))))

(assert (=> b!286504 (= res!130921 (isSeparator!753 (rule!1352 separatorToken!170)))))

(declare-fun e!178301 () Bool)

(declare-fun tp!105153 () Bool)

(declare-fun b!286505 () Bool)

(assert (=> b!286505 (= e!178294 (and (inv!4863 (h!9332 tokens!465)) e!178301 tp!105153))))

(declare-fun b!286506 () Bool)

(declare-fun res!130913 () Bool)

(assert (=> b!286506 (=> (not res!130913) (not e!178284))))

(declare-fun seqFromList!872 (List!3942) BalanceConc!2664)

(assert (=> b!286506 (= res!130913 (= (list!1639 (seqFromList!872 lt!120506)) lt!120505))))

(declare-fun b!286507 () Bool)

(declare-fun res!130924 () Bool)

(assert (=> b!286507 (=> res!130924 e!178291)))

(declare-fun isEmpty!2598 (BalanceConc!2666) Bool)

(declare-datatypes ((tuple2!4462 0))(
  ( (tuple2!4463 (_1!2447 BalanceConc!2666) (_2!2447 BalanceConc!2664)) )
))
(declare-fun lex!431 (LexerInterface!639 List!3944 BalanceConc!2664) tuple2!4462)

(assert (=> b!286507 (= res!130924 (isEmpty!2598 (_1!2447 (lex!431 thiss!17480 rules!1920 (seqFromList!872 lt!120504)))))))

(declare-fun b!286508 () Bool)

(declare-fun res!130915 () Bool)

(assert (=> b!286508 (=> (not res!130915) (not e!178289))))

(declare-fun lambda!9798 () Int)

(declare-fun forall!1012 (List!3945 Int) Bool)

(assert (=> b!286508 (= res!130915 (forall!1012 tokens!465 lambda!9798))))

(declare-fun b!286509 () Bool)

(declare-fun tp!105147 () Bool)

(declare-fun inv!4860 (String!4955) Bool)

(declare-fun inv!4864 (TokenValueInjection!1322) Bool)

(assert (=> b!286509 (= e!178285 (and tp!105147 (inv!4860 (tag!969 (h!9331 rules!1920))) (inv!4864 (transformation!753 (h!9331 rules!1920))) e!178299))))

(declare-fun b!286510 () Bool)

(declare-fun e!178300 () Bool)

(declare-fun tp!105141 () Bool)

(assert (=> b!286510 (= e!178303 (and tp!105141 (inv!4860 (tag!969 (rule!1352 separatorToken!170))) (inv!4864 (transformation!753 (rule!1352 separatorToken!170))) e!178300))))

(declare-fun b!286511 () Bool)

(assert (=> b!286511 (= e!178291 (= lt!120504 (originalCharacters!796 (h!9332 tokens!465))))))

(declare-fun b!286512 () Bool)

(assert (=> b!286512 (= e!178297 (not (= lt!120506 (++!1046 lt!120504 lt!120497))))))

(declare-fun b!286513 () Bool)

(declare-fun res!130917 () Bool)

(assert (=> b!286513 (=> (not res!130917) (not e!178289))))

(declare-fun sepAndNonSepRulesDisjointChars!342 (List!3944 List!3944) Bool)

(assert (=> b!286513 (= res!130917 (sepAndNonSepRulesDisjointChars!342 rules!1920 rules!1920))))

(declare-fun b!286514 () Bool)

(declare-fun res!130919 () Bool)

(assert (=> b!286514 (=> (not res!130919) (not e!178289))))

(assert (=> b!286514 (= res!130919 (rulesProduceIndividualToken!388 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!286515 () Bool)

(assert (=> b!286515 (= e!178286 e!178291)))

(declare-fun res!130918 () Bool)

(assert (=> b!286515 (=> res!130918 e!178291)))

(declare-fun lt!120509 () List!3942)

(declare-fun lt!120507 () List!3942)

(assert (=> b!286515 (= res!130918 (or (not (= lt!120509 lt!120507)) (not (= lt!120507 lt!120504)) (not (= lt!120509 lt!120504))))))

(declare-fun printList!313 (LexerInterface!639 List!3945) List!3942)

(assert (=> b!286515 (= lt!120507 (printList!313 thiss!17480 (Cons!3935 (h!9332 tokens!465) Nil!3935)))))

(declare-fun lt!120503 () BalanceConc!2664)

(assert (=> b!286515 (= lt!120509 (list!1639 lt!120503))))

(declare-fun lt!120502 () BalanceConc!2666)

(declare-fun printTailRec!325 (LexerInterface!639 BalanceConc!2666 Int BalanceConc!2664) BalanceConc!2664)

(assert (=> b!286515 (= lt!120503 (printTailRec!325 thiss!17480 lt!120502 0 (BalanceConc!2665 Empty!1328)))))

(declare-fun print!364 (LexerInterface!639 BalanceConc!2666) BalanceConc!2664)

(assert (=> b!286515 (= lt!120503 (print!364 thiss!17480 lt!120502))))

(declare-fun singletonSeq!299 (Token!1250) BalanceConc!2666)

(assert (=> b!286515 (= lt!120502 (singletonSeq!299 (h!9332 tokens!465)))))

(declare-fun e!178302 () Bool)

(declare-fun b!286516 () Bool)

(declare-fun tp!105146 () Bool)

(assert (=> b!286516 (= e!178301 (and (inv!21 (value!25776 (h!9332 tokens!465))) e!178302 tp!105146))))

(assert (=> b!286517 (= e!178300 (and tp!105148 tp!105145))))

(declare-fun tp!105144 () Bool)

(declare-fun b!286518 () Bool)

(assert (=> b!286518 (= e!178302 (and tp!105144 (inv!4860 (tag!969 (rule!1352 (h!9332 tokens!465)))) (inv!4864 (transformation!753 (rule!1352 (h!9332 tokens!465)))) e!178295))))

(assert (= (and start!31090 res!130928) b!286493))

(assert (= (and b!286493 res!130914) b!286502))

(assert (= (and b!286502 res!130925) b!286496))

(assert (= (and b!286496 res!130923) b!286514))

(assert (= (and b!286514 res!130919) b!286504))

(assert (= (and b!286504 res!130921) b!286508))

(assert (= (and b!286508 res!130915) b!286513))

(assert (= (and b!286513 res!130917) b!286499))

(assert (= (and b!286499 res!130926) b!286501))

(assert (= (and b!286501 res!130920) b!286506))

(assert (= (and b!286506 res!130913) b!286495))

(assert (= (and b!286495 (not res!130929)) b!286492))

(assert (= (and b!286492 res!130927) b!286512))

(assert (= (and b!286492 (not res!130916)) b!286515))

(assert (= (and b!286515 (not res!130918)) b!286498))

(assert (= (and b!286498 (not res!130922)) b!286507))

(assert (= (and b!286507 (not res!130924)) b!286511))

(assert (= b!286509 b!286494))

(assert (= b!286503 b!286509))

(assert (= (and start!31090 ((_ is Cons!3934) rules!1920)) b!286503))

(assert (= b!286510 b!286517))

(assert (= b!286497 b!286510))

(assert (= start!31090 b!286497))

(assert (= b!286518 b!286500))

(assert (= b!286516 b!286518))

(assert (= b!286505 b!286516))

(assert (= (and start!31090 ((_ is Cons!3935) tokens!465)) b!286505))

(declare-fun m!370637 () Bool)

(assert (=> b!286495 m!370637))

(declare-fun m!370639 () Bool)

(assert (=> b!286495 m!370639))

(declare-fun m!370641 () Bool)

(assert (=> b!286495 m!370641))

(declare-fun m!370643 () Bool)

(assert (=> b!286495 m!370643))

(declare-fun m!370645 () Bool)

(assert (=> b!286495 m!370645))

(declare-fun m!370647 () Bool)

(assert (=> b!286495 m!370647))

(assert (=> b!286495 m!370645))

(assert (=> b!286495 m!370641))

(declare-fun m!370649 () Bool)

(assert (=> b!286495 m!370649))

(declare-fun m!370651 () Bool)

(assert (=> b!286495 m!370651))

(declare-fun m!370653 () Bool)

(assert (=> b!286495 m!370653))

(assert (=> b!286495 m!370637))

(declare-fun m!370655 () Bool)

(assert (=> b!286495 m!370655))

(declare-fun m!370657 () Bool)

(assert (=> b!286495 m!370657))

(assert (=> b!286495 m!370657))

(declare-fun m!370659 () Bool)

(assert (=> b!286495 m!370659))

(assert (=> b!286495 m!370655))

(declare-fun m!370661 () Bool)

(assert (=> b!286495 m!370661))

(declare-fun m!370663 () Bool)

(assert (=> b!286510 m!370663))

(declare-fun m!370665 () Bool)

(assert (=> b!286510 m!370665))

(declare-fun m!370667 () Bool)

(assert (=> b!286516 m!370667))

(declare-fun m!370669 () Bool)

(assert (=> b!286497 m!370669))

(declare-fun m!370671 () Bool)

(assert (=> b!286506 m!370671))

(assert (=> b!286506 m!370671))

(declare-fun m!370673 () Bool)

(assert (=> b!286506 m!370673))

(declare-fun m!370675 () Bool)

(assert (=> b!286498 m!370675))

(declare-fun m!370677 () Bool)

(assert (=> b!286513 m!370677))

(declare-fun m!370679 () Bool)

(assert (=> b!286501 m!370679))

(assert (=> b!286501 m!370679))

(declare-fun m!370681 () Bool)

(assert (=> b!286501 m!370681))

(declare-fun m!370683 () Bool)

(assert (=> b!286501 m!370683))

(declare-fun m!370685 () Bool)

(assert (=> b!286518 m!370685))

(declare-fun m!370687 () Bool)

(assert (=> b!286518 m!370687))

(declare-fun m!370689 () Bool)

(assert (=> b!286514 m!370689))

(declare-fun m!370691 () Bool)

(assert (=> start!31090 m!370691))

(declare-fun m!370693 () Bool)

(assert (=> b!286502 m!370693))

(declare-fun m!370695 () Bool)

(assert (=> b!286508 m!370695))

(declare-fun m!370697 () Bool)

(assert (=> b!286512 m!370697))

(declare-fun m!370699 () Bool)

(assert (=> b!286509 m!370699))

(declare-fun m!370701 () Bool)

(assert (=> b!286509 m!370701))

(declare-fun m!370703 () Bool)

(assert (=> b!286493 m!370703))

(declare-fun m!370705 () Bool)

(assert (=> b!286505 m!370705))

(declare-fun m!370707 () Bool)

(assert (=> b!286507 m!370707))

(assert (=> b!286507 m!370707))

(declare-fun m!370709 () Bool)

(assert (=> b!286507 m!370709))

(declare-fun m!370711 () Bool)

(assert (=> b!286507 m!370711))

(declare-fun m!370713 () Bool)

(assert (=> b!286496 m!370713))

(declare-fun m!370715 () Bool)

(assert (=> b!286496 m!370715))

(declare-fun m!370717 () Bool)

(assert (=> b!286515 m!370717))

(declare-fun m!370719 () Bool)

(assert (=> b!286515 m!370719))

(declare-fun m!370721 () Bool)

(assert (=> b!286515 m!370721))

(declare-fun m!370723 () Bool)

(assert (=> b!286515 m!370723))

(declare-fun m!370725 () Bool)

(assert (=> b!286515 m!370725))

(check-sat (not b!286496) (not b!286506) (not b_next!10497) b_and!23101 (not b!286502) (not b_next!10489) b_and!23097 (not b!286518) (not b!286514) b_and!23099 (not b_next!10491) (not b!286505) (not b_next!10495) (not b!286501) b_and!23103 (not b!286493) (not b!286495) b_and!23107 (not b!286498) (not b!286497) (not b!286516) (not b!286513) (not b!286503) (not b!286510) b_and!23105 (not start!31090) (not b!286508) (not b!286512) (not b_next!10499) (not b_next!10493) (not b!286507) (not b!286515) (not b!286509))
(check-sat b_and!23103 (not b_next!10497) b_and!23101 b_and!23107 (not b_next!10489) b_and!23097 b_and!23105 (not b_next!10499) (not b_next!10493) b_and!23099 (not b_next!10491) (not b_next!10495))
(get-model)

(declare-fun d!84816 () Bool)

(assert (=> d!84816 (= (inv!4860 (tag!969 (rule!1352 separatorToken!170))) (= (mod (str.len (value!25775 (tag!969 (rule!1352 separatorToken!170)))) 2) 0))))

(assert (=> b!286510 d!84816))

(declare-fun d!84818 () Bool)

(declare-fun res!130940 () Bool)

(declare-fun e!178307 () Bool)

(assert (=> d!84818 (=> (not res!130940) (not e!178307))))

(declare-fun semiInverseModEq!277 (Int Int) Bool)

(assert (=> d!84818 (= res!130940 (semiInverseModEq!277 (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (toValue!1500 (transformation!753 (rule!1352 separatorToken!170)))))))

(assert (=> d!84818 (= (inv!4864 (transformation!753 (rule!1352 separatorToken!170))) e!178307)))

(declare-fun b!286521 () Bool)

(declare-fun equivClasses!260 (Int Int) Bool)

(assert (=> b!286521 (= e!178307 (equivClasses!260 (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (toValue!1500 (transformation!753 (rule!1352 separatorToken!170)))))))

(assert (= (and d!84818 res!130940) b!286521))

(declare-fun m!370727 () Bool)

(assert (=> d!84818 m!370727))

(declare-fun m!370729 () Bool)

(assert (=> b!286521 m!370729))

(assert (=> b!286510 d!84818))

(declare-fun d!84822 () Bool)

(declare-fun list!1642 (Conc!1328) List!3942)

(assert (=> d!84822 (= (list!1639 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 lt!120500 separatorToken!170 0)) (list!1642 (c!54238 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 lt!120500 separatorToken!170 0))))))

(declare-fun bs!32311 () Bool)

(assert (= bs!32311 d!84822))

(declare-fun m!370731 () Bool)

(assert (=> bs!32311 m!370731))

(assert (=> b!286501 d!84822))

(declare-fun bs!32315 () Bool)

(declare-fun d!84826 () Bool)

(assert (= bs!32315 (and d!84826 b!286508)))

(declare-fun lambda!9808 () Int)

(assert (=> bs!32315 (= lambda!9808 lambda!9798)))

(declare-fun bs!32316 () Bool)

(declare-fun b!286592 () Bool)

(assert (= bs!32316 (and b!286592 b!286508)))

(declare-fun lambda!9809 () Int)

(assert (=> bs!32316 (not (= lambda!9809 lambda!9798))))

(declare-fun bs!32317 () Bool)

(assert (= bs!32317 (and b!286592 d!84826)))

(assert (=> bs!32317 (not (= lambda!9809 lambda!9808))))

(declare-fun b!286608 () Bool)

(declare-fun e!178369 () Bool)

(assert (=> b!286608 (= e!178369 true)))

(declare-fun b!286607 () Bool)

(declare-fun e!178368 () Bool)

(assert (=> b!286607 (= e!178368 e!178369)))

(declare-fun b!286606 () Bool)

(declare-fun e!178367 () Bool)

(assert (=> b!286606 (= e!178367 e!178368)))

(assert (=> b!286592 e!178367))

(assert (= b!286607 b!286608))

(assert (= b!286606 b!286607))

(assert (= (and b!286592 ((_ is Cons!3934) rules!1920)) b!286606))

(declare-fun order!3103 () Int)

(declare-fun order!3101 () Int)

(declare-fun dynLambda!2080 (Int Int) Int)

(declare-fun dynLambda!2081 (Int Int) Int)

(assert (=> b!286608 (< (dynLambda!2080 order!3101 (toValue!1500 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9809))))

(declare-fun order!3105 () Int)

(declare-fun dynLambda!2082 (Int Int) Int)

(assert (=> b!286608 (< (dynLambda!2082 order!3105 (toChars!1359 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9809))))

(assert (=> b!286592 true))

(declare-fun bm!16126 () Bool)

(declare-fun call!16135 () Token!1250)

(declare-fun apply!837 (BalanceConc!2666 Int) Token!1250)

(assert (=> bm!16126 (= call!16135 (apply!837 lt!120500 0))))

(declare-fun b!286589 () Bool)

(declare-fun e!178360 () BalanceConc!2664)

(declare-fun call!16131 () BalanceConc!2664)

(declare-fun lt!120560 () BalanceConc!2664)

(declare-fun ++!1048 (BalanceConc!2664 BalanceConc!2664) BalanceConc!2664)

(assert (=> b!286589 (= e!178360 (++!1048 call!16131 lt!120560))))

(declare-fun b!286590 () Bool)

(assert (=> b!286590 (= e!178360 (BalanceConc!2665 Empty!1328))))

(declare-fun call!16134 () Token!1250)

(assert (=> b!286590 (= (print!364 thiss!17480 (singletonSeq!299 call!16134)) (printTailRec!325 thiss!17480 (singletonSeq!299 call!16134) 0 (BalanceConc!2665 Empty!1328)))))

(declare-fun lt!120566 () Unit!5278)

(declare-fun Unit!5282 () Unit!5278)

(assert (=> b!286590 (= lt!120566 Unit!5282)))

(declare-fun call!16133 () BalanceConc!2664)

(declare-fun lt!120553 () Unit!5278)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!128 (LexerInterface!639 List!3944 List!3942 List!3942) Unit!5278)

(assert (=> b!286590 (= lt!120553 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!128 thiss!17480 rules!1920 (list!1639 call!16133) (list!1639 lt!120560)))))

(assert (=> b!286590 false))

(declare-fun lt!120562 () Unit!5278)

(declare-fun Unit!5283 () Unit!5278)

(assert (=> b!286590 (= lt!120562 Unit!5283)))

(declare-fun bm!16127 () Bool)

(assert (=> bm!16127 (= call!16134 call!16135)))

(declare-fun b!286591 () Bool)

(declare-fun e!178356 () Bool)

(declare-fun size!3152 (BalanceConc!2666) Int)

(assert (=> b!286591 (= e!178356 (<= 0 (size!3152 lt!120500)))))

(declare-fun call!16132 () BalanceConc!2664)

(declare-fun bm!16128 () Bool)

(declare-fun c!54252 () Bool)

(assert (=> bm!16128 (= call!16131 (++!1048 call!16132 (ite c!54252 lt!120560 call!16133)))))

(declare-fun lt!120563 () BalanceConc!2664)

(declare-fun dropList!180 (BalanceConc!2666 Int) List!3945)

(assert (=> d!84826 (= (list!1639 lt!120563) (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 (dropList!180 lt!120500 0) separatorToken!170))))

(declare-fun e!178359 () BalanceConc!2664)

(assert (=> d!84826 (= lt!120563 e!178359)))

(declare-fun c!54250 () Bool)

(assert (=> d!84826 (= c!54250 (>= 0 (size!3152 lt!120500)))))

(declare-fun lt!120555 () Unit!5278)

(declare-fun lemmaContentSubsetPreservesForall!124 (List!3945 List!3945 Int) Unit!5278)

(declare-fun list!1643 (BalanceConc!2666) List!3945)

(assert (=> d!84826 (= lt!120555 (lemmaContentSubsetPreservesForall!124 (list!1643 lt!120500) (dropList!180 lt!120500 0) lambda!9808))))

(assert (=> d!84826 e!178356))

(declare-fun res!130979 () Bool)

(assert (=> d!84826 (=> (not res!130979) (not e!178356))))

(assert (=> d!84826 (= res!130979 (>= 0 0))))

(assert (=> d!84826 (= (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 lt!120500 separatorToken!170 0) lt!120563)))

(declare-fun e!178357 () BalanceConc!2664)

(assert (=> b!286592 (= e!178359 e!178357)))

(declare-fun lt!120558 () List!3945)

(assert (=> b!286592 (= lt!120558 (list!1643 lt!120500))))

(declare-fun lt!120557 () Unit!5278)

(declare-fun lemmaDropApply!220 (List!3945 Int) Unit!5278)

(assert (=> b!286592 (= lt!120557 (lemmaDropApply!220 lt!120558 0))))

(declare-fun head!928 (List!3945) Token!1250)

(declare-fun drop!233 (List!3945 Int) List!3945)

(declare-fun apply!838 (List!3945 Int) Token!1250)

(assert (=> b!286592 (= (head!928 (drop!233 lt!120558 0)) (apply!838 lt!120558 0))))

(declare-fun lt!120561 () Unit!5278)

(assert (=> b!286592 (= lt!120561 lt!120557)))

(declare-fun lt!120565 () List!3945)

(assert (=> b!286592 (= lt!120565 (list!1643 lt!120500))))

(declare-fun lt!120554 () Unit!5278)

(declare-fun lemmaDropTail!212 (List!3945 Int) Unit!5278)

(assert (=> b!286592 (= lt!120554 (lemmaDropTail!212 lt!120565 0))))

(declare-fun tail!510 (List!3945) List!3945)

(assert (=> b!286592 (= (tail!510 (drop!233 lt!120565 0)) (drop!233 lt!120565 (+ 0 1)))))

(declare-fun lt!120559 () Unit!5278)

(assert (=> b!286592 (= lt!120559 lt!120554)))

(declare-fun lt!120564 () Unit!5278)

(declare-fun forallContained!306 (List!3945 Int Token!1250) Unit!5278)

(assert (=> b!286592 (= lt!120564 (forallContained!306 (list!1643 lt!120500) lambda!9809 (apply!837 lt!120500 0)))))

(assert (=> b!286592 (= lt!120560 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 lt!120500 separatorToken!170 (+ 0 1)))))

(declare-datatypes ((tuple2!4468 0))(
  ( (tuple2!4469 (_1!2450 Token!1250) (_2!2450 BalanceConc!2664)) )
))
(declare-datatypes ((Option!866 0))(
  ( (None!865) (Some!865 (v!14806 tuple2!4468)) )
))
(declare-fun lt!120556 () Option!866)

(declare-fun maxPrefixZipperSequence!318 (LexerInterface!639 List!3944 BalanceConc!2664) Option!866)

(assert (=> b!286592 (= lt!120556 (maxPrefixZipperSequence!318 thiss!17480 rules!1920 (++!1048 (charsOf!396 (apply!837 lt!120500 0)) lt!120560)))))

(declare-fun res!130978 () Bool)

(assert (=> b!286592 (= res!130978 ((_ is Some!865) lt!120556))))

(declare-fun e!178355 () Bool)

(assert (=> b!286592 (=> (not res!130978) (not e!178355))))

(assert (=> b!286592 (= c!54252 e!178355)))

(declare-fun bm!16129 () Bool)

(assert (=> bm!16129 (= call!16132 (charsOf!396 (ite c!54252 call!16135 call!16134)))))

(declare-fun b!286593 () Bool)

(assert (=> b!286593 (= e!178357 call!16131)))

(declare-fun b!286594 () Bool)

(declare-fun e!178358 () Bool)

(assert (=> b!286594 (= e!178358 (not (= (_1!2450 (v!14806 lt!120556)) call!16135)))))

(declare-fun b!286595 () Bool)

(assert (=> b!286595 (= e!178355 (= (_1!2450 (v!14806 lt!120556)) (apply!837 lt!120500 0)))))

(declare-fun b!286596 () Bool)

(assert (=> b!286596 (= e!178359 (BalanceConc!2665 Empty!1328))))

(declare-fun b!286597 () Bool)

(declare-fun c!54251 () Bool)

(assert (=> b!286597 (= c!54251 e!178358)))

(declare-fun res!130977 () Bool)

(assert (=> b!286597 (=> (not res!130977) (not e!178358))))

(assert (=> b!286597 (= res!130977 ((_ is Some!865) lt!120556))))

(assert (=> b!286597 (= e!178357 e!178360)))

(declare-fun bm!16130 () Bool)

(assert (=> bm!16130 (= call!16133 (charsOf!396 (ite c!54251 separatorToken!170 call!16134)))))

(assert (= (and d!84826 res!130979) b!286591))

(assert (= (and d!84826 c!54250) b!286596))

(assert (= (and d!84826 (not c!54250)) b!286592))

(assert (= (and b!286592 res!130978) b!286595))

(assert (= (and b!286592 c!54252) b!286593))

(assert (= (and b!286592 (not c!54252)) b!286597))

(assert (= (and b!286597 res!130977) b!286594))

(assert (= (and b!286597 c!54251) b!286589))

(assert (= (and b!286597 (not c!54251)) b!286590))

(assert (= (or b!286589 b!286590) bm!16127))

(assert (= (or b!286589 b!286590) bm!16130))

(assert (= (or b!286593 bm!16127 b!286594) bm!16126))

(assert (= (or b!286593 b!286589) bm!16129))

(assert (= (or b!286593 b!286589) bm!16128))

(declare-fun m!370801 () Bool)

(assert (=> b!286591 m!370801))

(declare-fun m!370803 () Bool)

(assert (=> b!286592 m!370803))

(declare-fun m!370805 () Bool)

(assert (=> b!286592 m!370805))

(declare-fun m!370807 () Bool)

(assert (=> b!286592 m!370807))

(declare-fun m!370809 () Bool)

(assert (=> b!286592 m!370809))

(declare-fun m!370811 () Bool)

(assert (=> b!286592 m!370811))

(declare-fun m!370813 () Bool)

(assert (=> b!286592 m!370813))

(declare-fun m!370815 () Bool)

(assert (=> b!286592 m!370815))

(declare-fun m!370817 () Bool)

(assert (=> b!286592 m!370817))

(assert (=> b!286592 m!370815))

(declare-fun m!370819 () Bool)

(assert (=> b!286592 m!370819))

(declare-fun m!370821 () Bool)

(assert (=> b!286592 m!370821))

(assert (=> b!286592 m!370809))

(declare-fun m!370823 () Bool)

(assert (=> b!286592 m!370823))

(assert (=> b!286592 m!370809))

(declare-fun m!370825 () Bool)

(assert (=> b!286592 m!370825))

(assert (=> b!286592 m!370811))

(assert (=> b!286592 m!370803))

(declare-fun m!370827 () Bool)

(assert (=> b!286592 m!370827))

(declare-fun m!370829 () Bool)

(assert (=> b!286592 m!370829))

(assert (=> b!286592 m!370821))

(assert (=> b!286592 m!370813))

(declare-fun m!370831 () Bool)

(assert (=> b!286592 m!370831))

(assert (=> bm!16126 m!370809))

(assert (=> b!286595 m!370809))

(declare-fun m!370833 () Bool)

(assert (=> d!84826 m!370833))

(declare-fun m!370835 () Bool)

(assert (=> d!84826 m!370835))

(assert (=> d!84826 m!370833))

(assert (=> d!84826 m!370821))

(assert (=> d!84826 m!370833))

(declare-fun m!370837 () Bool)

(assert (=> d!84826 m!370837))

(assert (=> d!84826 m!370801))

(assert (=> d!84826 m!370821))

(declare-fun m!370839 () Bool)

(assert (=> d!84826 m!370839))

(declare-fun m!370841 () Bool)

(assert (=> bm!16129 m!370841))

(declare-fun m!370843 () Bool)

(assert (=> bm!16128 m!370843))

(declare-fun m!370845 () Bool)

(assert (=> b!286590 m!370845))

(declare-fun m!370847 () Bool)

(assert (=> b!286590 m!370847))

(assert (=> b!286590 m!370845))

(declare-fun m!370849 () Bool)

(assert (=> b!286590 m!370849))

(declare-fun m!370851 () Bool)

(assert (=> b!286590 m!370851))

(declare-fun m!370853 () Bool)

(assert (=> b!286590 m!370853))

(assert (=> b!286590 m!370851))

(assert (=> b!286590 m!370847))

(assert (=> b!286590 m!370851))

(declare-fun m!370855 () Bool)

(assert (=> b!286590 m!370855))

(declare-fun m!370857 () Bool)

(assert (=> b!286589 m!370857))

(declare-fun m!370859 () Bool)

(assert (=> bm!16130 m!370859))

(assert (=> b!286501 d!84826))

(declare-fun bs!32323 () Bool)

(declare-fun b!286657 () Bool)

(assert (= bs!32323 (and b!286657 b!286508)))

(declare-fun lambda!9818 () Int)

(assert (=> bs!32323 (not (= lambda!9818 lambda!9798))))

(declare-fun bs!32324 () Bool)

(assert (= bs!32324 (and b!286657 d!84826)))

(assert (=> bs!32324 (not (= lambda!9818 lambda!9808))))

(declare-fun bs!32325 () Bool)

(assert (= bs!32325 (and b!286657 b!286592)))

(assert (=> bs!32325 (= lambda!9818 lambda!9809)))

(declare-fun b!286667 () Bool)

(declare-fun e!178405 () Bool)

(assert (=> b!286667 (= e!178405 true)))

(declare-fun b!286666 () Bool)

(declare-fun e!178404 () Bool)

(assert (=> b!286666 (= e!178404 e!178405)))

(declare-fun b!286665 () Bool)

(declare-fun e!178403 () Bool)

(assert (=> b!286665 (= e!178403 e!178404)))

(assert (=> b!286657 e!178403))

(assert (= b!286666 b!286667))

(assert (= b!286665 b!286666))

(assert (= (and b!286657 ((_ is Cons!3934) rules!1920)) b!286665))

(assert (=> b!286667 (< (dynLambda!2080 order!3101 (toValue!1500 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9818))))

(assert (=> b!286667 (< (dynLambda!2082 order!3105 (toChars!1359 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9818))))

(assert (=> b!286657 true))

(declare-fun e!178399 () List!3942)

(declare-fun e!178402 () List!3942)

(assert (=> b!286657 (= e!178399 e!178402)))

(declare-fun lt!120625 () Unit!5278)

(assert (=> b!286657 (= lt!120625 (forallContained!306 tokens!465 lambda!9818 (h!9332 tokens!465)))))

(declare-fun lt!120623 () List!3942)

(assert (=> b!286657 (= lt!120623 (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 (t!40105 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!4470 0))(
  ( (tuple2!4471 (_1!2451 Token!1250) (_2!2451 List!3942)) )
))
(declare-datatypes ((Option!867 0))(
  ( (None!866) (Some!866 (v!14807 tuple2!4470)) )
))
(declare-fun lt!120621 () Option!867)

(declare-fun maxPrefix!355 (LexerInterface!639 List!3944 List!3942) Option!867)

(assert (=> b!286657 (= lt!120621 (maxPrefix!355 thiss!17480 rules!1920 (++!1046 (list!1639 (charsOf!396 (h!9332 tokens!465))) lt!120623)))))

(declare-fun c!54270 () Bool)

(assert (=> b!286657 (= c!54270 (and ((_ is Some!866) lt!120621) (= (_1!2451 (v!14807 lt!120621)) (h!9332 tokens!465))))))

(declare-fun d!84844 () Bool)

(declare-fun c!54272 () Bool)

(assert (=> d!84844 (= c!54272 ((_ is Cons!3935) tokens!465))))

(assert (=> d!84844 (= (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!178399)))

(declare-fun b!286658 () Bool)

(declare-fun e!178400 () List!3942)

(assert (=> b!286658 (= e!178400 Nil!3932)))

(assert (=> b!286658 (= (print!364 thiss!17480 (singletonSeq!299 (h!9332 tokens!465))) (printTailRec!325 thiss!17480 (singletonSeq!299 (h!9332 tokens!465)) 0 (BalanceConc!2665 Empty!1328)))))

(declare-fun lt!120626 () Unit!5278)

(declare-fun Unit!5286 () Unit!5278)

(assert (=> b!286658 (= lt!120626 Unit!5286)))

(declare-fun lt!120624 () Unit!5278)

(declare-fun call!16161 () List!3942)

(assert (=> b!286658 (= lt!120624 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!128 thiss!17480 rules!1920 call!16161 lt!120623))))

(assert (=> b!286658 false))

(declare-fun lt!120622 () Unit!5278)

(declare-fun Unit!5287 () Unit!5278)

(assert (=> b!286658 (= lt!120622 Unit!5287)))

(declare-fun call!16163 () List!3942)

(declare-fun bm!16156 () Bool)

(declare-fun call!16165 () BalanceConc!2664)

(declare-fun call!16164 () BalanceConc!2664)

(assert (=> bm!16156 (= call!16163 (list!1639 (ite c!54270 call!16164 call!16165)))))

(declare-fun call!16162 () List!3942)

(declare-fun bm!16157 () Bool)

(assert (=> bm!16157 (= call!16162 (++!1046 call!16163 (ite c!54270 lt!120623 call!16161)))))

(declare-fun b!286659 () Bool)

(declare-fun e!178401 () BalanceConc!2664)

(assert (=> b!286659 (= e!178401 (charsOf!396 separatorToken!170))))

(declare-fun b!286660 () Bool)

(assert (=> b!286660 (= e!178399 Nil!3932)))

(declare-fun b!286661 () Bool)

(assert (=> b!286661 (= e!178401 call!16165)))

(declare-fun b!286662 () Bool)

(declare-fun c!54271 () Bool)

(assert (=> b!286662 (= c!54271 (and ((_ is Some!866) lt!120621) (not (= (_1!2451 (v!14807 lt!120621)) (h!9332 tokens!465)))))))

(assert (=> b!286662 (= e!178402 e!178400)))

(declare-fun bm!16158 () Bool)

(assert (=> bm!16158 (= call!16164 (charsOf!396 (h!9332 tokens!465)))))

(declare-fun b!286663 () Bool)

(assert (=> b!286663 (= e!178400 (++!1046 call!16162 lt!120623))))

(declare-fun bm!16159 () Bool)

(assert (=> bm!16159 (= call!16161 (list!1639 e!178401))))

(declare-fun c!54273 () Bool)

(assert (=> bm!16159 (= c!54273 c!54271)))

(declare-fun bm!16160 () Bool)

(assert (=> bm!16160 (= call!16165 call!16164)))

(declare-fun b!286664 () Bool)

(assert (=> b!286664 (= e!178402 call!16162)))

(assert (= (and d!84844 c!54272) b!286657))

(assert (= (and d!84844 (not c!54272)) b!286660))

(assert (= (and b!286657 c!54270) b!286664))

(assert (= (and b!286657 (not c!54270)) b!286662))

(assert (= (and b!286662 c!54271) b!286663))

(assert (= (and b!286662 (not c!54271)) b!286658))

(assert (= (or b!286663 b!286658) bm!16160))

(assert (= (or b!286663 b!286658) bm!16159))

(assert (= (and bm!16159 c!54273) b!286659))

(assert (= (and bm!16159 (not c!54273)) b!286661))

(assert (= (or b!286664 bm!16160) bm!16158))

(assert (= (or b!286664 b!286663) bm!16156))

(assert (= (or b!286664 b!286663) bm!16157))

(declare-fun m!370919 () Bool)

(assert (=> bm!16157 m!370919))

(declare-fun m!370921 () Bool)

(assert (=> bm!16159 m!370921))

(assert (=> b!286659 m!370645))

(assert (=> bm!16158 m!370657))

(declare-fun m!370923 () Bool)

(assert (=> bm!16156 m!370923))

(declare-fun m!370925 () Bool)

(assert (=> b!286663 m!370925))

(declare-fun m!370927 () Bool)

(assert (=> b!286657 m!370927))

(assert (=> b!286657 m!370657))

(assert (=> b!286657 m!370657))

(assert (=> b!286657 m!370659))

(assert (=> b!286657 m!370639))

(declare-fun m!370929 () Bool)

(assert (=> b!286657 m!370929))

(declare-fun m!370931 () Bool)

(assert (=> b!286657 m!370931))

(assert (=> b!286657 m!370659))

(assert (=> b!286657 m!370929))

(assert (=> b!286658 m!370725))

(assert (=> b!286658 m!370725))

(declare-fun m!370933 () Bool)

(assert (=> b!286658 m!370933))

(assert (=> b!286658 m!370725))

(declare-fun m!370935 () Bool)

(assert (=> b!286658 m!370935))

(declare-fun m!370937 () Bool)

(assert (=> b!286658 m!370937))

(assert (=> b!286501 d!84844))

(declare-fun b!286677 () Bool)

(declare-fun e!178411 () List!3942)

(assert (=> b!286677 (= e!178411 (Cons!3932 (h!9329 lt!120504) (++!1046 (t!40102 lt!120504) lt!120497)))))

(declare-fun b!286678 () Bool)

(declare-fun res!130994 () Bool)

(declare-fun e!178410 () Bool)

(assert (=> b!286678 (=> (not res!130994) (not e!178410))))

(declare-fun lt!120629 () List!3942)

(declare-fun size!3153 (List!3942) Int)

(assert (=> b!286678 (= res!130994 (= (size!3153 lt!120629) (+ (size!3153 lt!120504) (size!3153 lt!120497))))))

(declare-fun b!286676 () Bool)

(assert (=> b!286676 (= e!178411 lt!120497)))

(declare-fun d!84848 () Bool)

(assert (=> d!84848 e!178410))

(declare-fun res!130993 () Bool)

(assert (=> d!84848 (=> (not res!130993) (not e!178410))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!577 (List!3942) (InoxSet C!2876))

(assert (=> d!84848 (= res!130993 (= (content!577 lt!120629) ((_ map or) (content!577 lt!120504) (content!577 lt!120497))))))

(assert (=> d!84848 (= lt!120629 e!178411)))

(declare-fun c!54276 () Bool)

(assert (=> d!84848 (= c!54276 ((_ is Nil!3932) lt!120504))))

(assert (=> d!84848 (= (++!1046 lt!120504 lt!120497) lt!120629)))

(declare-fun b!286679 () Bool)

(assert (=> b!286679 (= e!178410 (or (not (= lt!120497 Nil!3932)) (= lt!120629 lt!120504)))))

(assert (= (and d!84848 c!54276) b!286676))

(assert (= (and d!84848 (not c!54276)) b!286677))

(assert (= (and d!84848 res!130993) b!286678))

(assert (= (and b!286678 res!130994) b!286679))

(declare-fun m!370939 () Bool)

(assert (=> b!286677 m!370939))

(declare-fun m!370941 () Bool)

(assert (=> b!286678 m!370941))

(declare-fun m!370943 () Bool)

(assert (=> b!286678 m!370943))

(declare-fun m!370945 () Bool)

(assert (=> b!286678 m!370945))

(declare-fun m!370947 () Bool)

(assert (=> d!84848 m!370947))

(declare-fun m!370949 () Bool)

(assert (=> d!84848 m!370949))

(declare-fun m!370951 () Bool)

(assert (=> d!84848 m!370951))

(assert (=> b!286512 d!84848))

(declare-fun d!84850 () Bool)

(declare-fun res!130999 () Bool)

(declare-fun e!178416 () Bool)

(assert (=> d!84850 (=> res!130999 e!178416)))

(assert (=> d!84850 (= res!130999 (not ((_ is Cons!3934) rules!1920)))))

(assert (=> d!84850 (= (sepAndNonSepRulesDisjointChars!342 rules!1920 rules!1920) e!178416)))

(declare-fun b!286684 () Bool)

(declare-fun e!178417 () Bool)

(assert (=> b!286684 (= e!178416 e!178417)))

(declare-fun res!131000 () Bool)

(assert (=> b!286684 (=> (not res!131000) (not e!178417))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!134 (Rule!1306 List!3944) Bool)

(assert (=> b!286684 (= res!131000 (ruleDisjointCharsFromAllFromOtherType!134 (h!9331 rules!1920) rules!1920))))

(declare-fun b!286685 () Bool)

(assert (=> b!286685 (= e!178417 (sepAndNonSepRulesDisjointChars!342 rules!1920 (t!40104 rules!1920)))))

(assert (= (and d!84850 (not res!130999)) b!286684))

(assert (= (and b!286684 res!131000) b!286685))

(declare-fun m!370953 () Bool)

(assert (=> b!286684 m!370953))

(declare-fun m!370955 () Bool)

(assert (=> b!286685 m!370955))

(assert (=> b!286513 d!84850))

(declare-fun d!84852 () Bool)

(declare-fun res!131003 () Bool)

(declare-fun e!178420 () Bool)

(assert (=> d!84852 (=> (not res!131003) (not e!178420))))

(declare-fun rulesValid!242 (LexerInterface!639 List!3944) Bool)

(assert (=> d!84852 (= res!131003 (rulesValid!242 thiss!17480 rules!1920))))

(assert (=> d!84852 (= (rulesInvariant!605 thiss!17480 rules!1920) e!178420)))

(declare-fun b!286688 () Bool)

(declare-datatypes ((List!3947 0))(
  ( (Nil!3937) (Cons!3937 (h!9334 String!4955) (t!40171 List!3947)) )
))
(declare-fun noDuplicateTag!242 (LexerInterface!639 List!3944 List!3947) Bool)

(assert (=> b!286688 (= e!178420 (noDuplicateTag!242 thiss!17480 rules!1920 Nil!3937))))

(assert (= (and d!84852 res!131003) b!286688))

(declare-fun m!370957 () Bool)

(assert (=> d!84852 m!370957))

(declare-fun m!370959 () Bool)

(assert (=> b!286688 m!370959))

(assert (=> b!286502 d!84852))

(declare-fun d!84854 () Bool)

(assert (=> d!84854 (= (isEmpty!2597 rules!1920) ((_ is Nil!3934) rules!1920))))

(assert (=> b!286493 d!84854))

(declare-fun d!84856 () Bool)

(declare-fun lt!120646 () Bool)

(declare-fun e!178435 () Bool)

(assert (=> d!84856 (= lt!120646 e!178435)))

(declare-fun res!131011 () Bool)

(assert (=> d!84856 (=> (not res!131011) (not e!178435))))

(assert (=> d!84856 (= res!131011 (= (list!1643 (_1!2447 (lex!431 thiss!17480 rules!1920 (print!364 thiss!17480 (singletonSeq!299 separatorToken!170))))) (list!1643 (singletonSeq!299 separatorToken!170))))))

(declare-fun e!178436 () Bool)

(assert (=> d!84856 (= lt!120646 e!178436)))

(declare-fun res!131012 () Bool)

(assert (=> d!84856 (=> (not res!131012) (not e!178436))))

(declare-fun lt!120647 () tuple2!4462)

(assert (=> d!84856 (= res!131012 (= (size!3152 (_1!2447 lt!120647)) 1))))

(assert (=> d!84856 (= lt!120647 (lex!431 thiss!17480 rules!1920 (print!364 thiss!17480 (singletonSeq!299 separatorToken!170))))))

(assert (=> d!84856 (not (isEmpty!2597 rules!1920))))

(assert (=> d!84856 (= (rulesProduceIndividualToken!388 thiss!17480 rules!1920 separatorToken!170) lt!120646)))

(declare-fun b!286715 () Bool)

(declare-fun res!131010 () Bool)

(assert (=> b!286715 (=> (not res!131010) (not e!178436))))

(assert (=> b!286715 (= res!131010 (= (apply!837 (_1!2447 lt!120647) 0) separatorToken!170))))

(declare-fun b!286716 () Bool)

(declare-fun isEmpty!2601 (BalanceConc!2664) Bool)

(assert (=> b!286716 (= e!178436 (isEmpty!2601 (_2!2447 lt!120647)))))

(declare-fun b!286717 () Bool)

(assert (=> b!286717 (= e!178435 (isEmpty!2601 (_2!2447 (lex!431 thiss!17480 rules!1920 (print!364 thiss!17480 (singletonSeq!299 separatorToken!170))))))))

(assert (= (and d!84856 res!131012) b!286715))

(assert (= (and b!286715 res!131010) b!286716))

(assert (= (and d!84856 res!131011) b!286717))

(declare-fun m!370961 () Bool)

(assert (=> d!84856 m!370961))

(declare-fun m!370963 () Bool)

(assert (=> d!84856 m!370963))

(declare-fun m!370965 () Bool)

(assert (=> d!84856 m!370965))

(assert (=> d!84856 m!370703))

(declare-fun m!370967 () Bool)

(assert (=> d!84856 m!370967))

(declare-fun m!370969 () Bool)

(assert (=> d!84856 m!370969))

(declare-fun m!370971 () Bool)

(assert (=> d!84856 m!370971))

(assert (=> d!84856 m!370967))

(assert (=> d!84856 m!370961))

(assert (=> d!84856 m!370967))

(declare-fun m!370973 () Bool)

(assert (=> b!286715 m!370973))

(declare-fun m!370975 () Bool)

(assert (=> b!286716 m!370975))

(assert (=> b!286717 m!370967))

(assert (=> b!286717 m!370967))

(assert (=> b!286717 m!370961))

(assert (=> b!286717 m!370961))

(assert (=> b!286717 m!370963))

(declare-fun m!370977 () Bool)

(assert (=> b!286717 m!370977))

(assert (=> b!286514 d!84856))

(declare-fun d!84858 () Bool)

(declare-fun lt!120669 () BalanceConc!2664)

(declare-fun printListTailRec!146 (LexerInterface!639 List!3945 List!3942) List!3942)

(assert (=> d!84858 (= (list!1639 lt!120669) (printListTailRec!146 thiss!17480 (dropList!180 lt!120502 0) (list!1639 (BalanceConc!2665 Empty!1328))))))

(declare-fun e!178469 () BalanceConc!2664)

(assert (=> d!84858 (= lt!120669 e!178469)))

(declare-fun c!54300 () Bool)

(assert (=> d!84858 (= c!54300 (>= 0 (size!3152 lt!120502)))))

(declare-fun e!178470 () Bool)

(assert (=> d!84858 e!178470))

(declare-fun res!131029 () Bool)

(assert (=> d!84858 (=> (not res!131029) (not e!178470))))

(assert (=> d!84858 (= res!131029 (>= 0 0))))

(assert (=> d!84858 (= (printTailRec!325 thiss!17480 lt!120502 0 (BalanceConc!2665 Empty!1328)) lt!120669)))

(declare-fun b!286769 () Bool)

(assert (=> b!286769 (= e!178470 (<= 0 (size!3152 lt!120502)))))

(declare-fun b!286770 () Bool)

(assert (=> b!286770 (= e!178469 (BalanceConc!2665 Empty!1328))))

(declare-fun b!286771 () Bool)

(assert (=> b!286771 (= e!178469 (printTailRec!325 thiss!17480 lt!120502 (+ 0 1) (++!1048 (BalanceConc!2665 Empty!1328) (charsOf!396 (apply!837 lt!120502 0)))))))

(declare-fun lt!120668 () List!3945)

(assert (=> b!286771 (= lt!120668 (list!1643 lt!120502))))

(declare-fun lt!120673 () Unit!5278)

(assert (=> b!286771 (= lt!120673 (lemmaDropApply!220 lt!120668 0))))

(assert (=> b!286771 (= (head!928 (drop!233 lt!120668 0)) (apply!838 lt!120668 0))))

(declare-fun lt!120674 () Unit!5278)

(assert (=> b!286771 (= lt!120674 lt!120673)))

(declare-fun lt!120671 () List!3945)

(assert (=> b!286771 (= lt!120671 (list!1643 lt!120502))))

(declare-fun lt!120670 () Unit!5278)

(assert (=> b!286771 (= lt!120670 (lemmaDropTail!212 lt!120671 0))))

(assert (=> b!286771 (= (tail!510 (drop!233 lt!120671 0)) (drop!233 lt!120671 (+ 0 1)))))

(declare-fun lt!120672 () Unit!5278)

(assert (=> b!286771 (= lt!120672 lt!120670)))

(assert (= (and d!84858 res!131029) b!286769))

(assert (= (and d!84858 c!54300) b!286770))

(assert (= (and d!84858 (not c!54300)) b!286771))

(declare-fun m!371033 () Bool)

(assert (=> d!84858 m!371033))

(declare-fun m!371035 () Bool)

(assert (=> d!84858 m!371035))

(declare-fun m!371037 () Bool)

(assert (=> d!84858 m!371037))

(declare-fun m!371039 () Bool)

(assert (=> d!84858 m!371039))

(assert (=> d!84858 m!371033))

(assert (=> d!84858 m!371037))

(declare-fun m!371041 () Bool)

(assert (=> d!84858 m!371041))

(assert (=> b!286769 m!371035))

(declare-fun m!371043 () Bool)

(assert (=> b!286771 m!371043))

(declare-fun m!371045 () Bool)

(assert (=> b!286771 m!371045))

(declare-fun m!371047 () Bool)

(assert (=> b!286771 m!371047))

(declare-fun m!371049 () Bool)

(assert (=> b!286771 m!371049))

(declare-fun m!371051 () Bool)

(assert (=> b!286771 m!371051))

(declare-fun m!371053 () Bool)

(assert (=> b!286771 m!371053))

(declare-fun m!371055 () Bool)

(assert (=> b!286771 m!371055))

(declare-fun m!371057 () Bool)

(assert (=> b!286771 m!371057))

(assert (=> b!286771 m!371049))

(declare-fun m!371059 () Bool)

(assert (=> b!286771 m!371059))

(declare-fun m!371061 () Bool)

(assert (=> b!286771 m!371061))

(assert (=> b!286771 m!371059))

(declare-fun m!371063 () Bool)

(assert (=> b!286771 m!371063))

(assert (=> b!286771 m!371045))

(declare-fun m!371065 () Bool)

(assert (=> b!286771 m!371065))

(assert (=> b!286771 m!371043))

(assert (=> b!286771 m!371057))

(declare-fun m!371067 () Bool)

(assert (=> b!286771 m!371067))

(assert (=> b!286515 d!84858))

(declare-fun d!84872 () Bool)

(assert (=> d!84872 (= (list!1639 lt!120503) (list!1642 (c!54238 lt!120503)))))

(declare-fun bs!32331 () Bool)

(assert (= bs!32331 d!84872))

(declare-fun m!371069 () Bool)

(assert (=> bs!32331 m!371069))

(assert (=> b!286515 d!84872))

(declare-fun d!84874 () Bool)

(declare-fun lt!120677 () BalanceConc!2664)

(assert (=> d!84874 (= (list!1639 lt!120677) (printList!313 thiss!17480 (list!1643 lt!120502)))))

(assert (=> d!84874 (= lt!120677 (printTailRec!325 thiss!17480 lt!120502 0 (BalanceConc!2665 Empty!1328)))))

(assert (=> d!84874 (= (print!364 thiss!17480 lt!120502) lt!120677)))

(declare-fun bs!32332 () Bool)

(assert (= bs!32332 d!84874))

(declare-fun m!371071 () Bool)

(assert (=> bs!32332 m!371071))

(assert (=> bs!32332 m!371047))

(assert (=> bs!32332 m!371047))

(declare-fun m!371073 () Bool)

(assert (=> bs!32332 m!371073))

(assert (=> bs!32332 m!370719))

(assert (=> b!286515 d!84874))

(declare-fun d!84876 () Bool)

(declare-fun e!178477 () Bool)

(assert (=> d!84876 e!178477))

(declare-fun res!131034 () Bool)

(assert (=> d!84876 (=> (not res!131034) (not e!178477))))

(declare-fun lt!120694 () BalanceConc!2666)

(assert (=> d!84876 (= res!131034 (= (list!1643 lt!120694) (Cons!3935 (h!9332 tokens!465) Nil!3935)))))

(declare-fun singleton!130 (Token!1250) BalanceConc!2666)

(assert (=> d!84876 (= lt!120694 (singleton!130 (h!9332 tokens!465)))))

(assert (=> d!84876 (= (singletonSeq!299 (h!9332 tokens!465)) lt!120694)))

(declare-fun b!286780 () Bool)

(declare-fun isBalanced!373 (Conc!1329) Bool)

(assert (=> b!286780 (= e!178477 (isBalanced!373 (c!54240 lt!120694)))))

(assert (= (and d!84876 res!131034) b!286780))

(declare-fun m!371075 () Bool)

(assert (=> d!84876 m!371075))

(declare-fun m!371077 () Bool)

(assert (=> d!84876 m!371077))

(declare-fun m!371079 () Bool)

(assert (=> b!286780 m!371079))

(assert (=> b!286515 d!84876))

(declare-fun d!84878 () Bool)

(declare-fun c!54306 () Bool)

(assert (=> d!84878 (= c!54306 ((_ is Cons!3935) (Cons!3935 (h!9332 tokens!465) Nil!3935)))))

(declare-fun e!178482 () List!3942)

(assert (=> d!84878 (= (printList!313 thiss!17480 (Cons!3935 (h!9332 tokens!465) Nil!3935)) e!178482)))

(declare-fun b!286788 () Bool)

(assert (=> b!286788 (= e!178482 (++!1046 (list!1639 (charsOf!396 (h!9332 (Cons!3935 (h!9332 tokens!465) Nil!3935)))) (printList!313 thiss!17480 (t!40105 (Cons!3935 (h!9332 tokens!465) Nil!3935)))))))

(declare-fun b!286789 () Bool)

(assert (=> b!286789 (= e!178482 Nil!3932)))

(assert (= (and d!84878 c!54306) b!286788))

(assert (= (and d!84878 (not c!54306)) b!286789))

(declare-fun m!371081 () Bool)

(assert (=> b!286788 m!371081))

(assert (=> b!286788 m!371081))

(declare-fun m!371083 () Bool)

(assert (=> b!286788 m!371083))

(declare-fun m!371085 () Bool)

(assert (=> b!286788 m!371085))

(assert (=> b!286788 m!371083))

(assert (=> b!286788 m!371085))

(declare-fun m!371093 () Bool)

(assert (=> b!286788 m!371093))

(assert (=> b!286515 d!84878))

(declare-fun d!84880 () Bool)

(declare-fun res!131040 () Bool)

(declare-fun e!178485 () Bool)

(assert (=> d!84880 (=> (not res!131040) (not e!178485))))

(declare-fun isEmpty!2604 (List!3942) Bool)

(assert (=> d!84880 (= res!131040 (not (isEmpty!2604 (originalCharacters!796 (h!9332 tokens!465)))))))

(assert (=> d!84880 (= (inv!4863 (h!9332 tokens!465)) e!178485)))

(declare-fun b!286794 () Bool)

(declare-fun res!131041 () Bool)

(assert (=> b!286794 (=> (not res!131041) (not e!178485))))

(declare-fun dynLambda!2084 (Int TokenValue!775) BalanceConc!2664)

(assert (=> b!286794 (= res!131041 (= (originalCharacters!796 (h!9332 tokens!465)) (list!1639 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (value!25776 (h!9332 tokens!465))))))))

(declare-fun b!286795 () Bool)

(assert (=> b!286795 (= e!178485 (= (size!3149 (h!9332 tokens!465)) (size!3153 (originalCharacters!796 (h!9332 tokens!465)))))))

(assert (= (and d!84880 res!131040) b!286794))

(assert (= (and b!286794 res!131041) b!286795))

(declare-fun b_lambda!9477 () Bool)

(assert (=> (not b_lambda!9477) (not b!286794)))

(declare-fun tb!16593 () Bool)

(declare-fun t!40138 () Bool)

(assert (=> (and b!286517 (= (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465))))) t!40138) tb!16593))

(declare-fun b!286800 () Bool)

(declare-fun e!178488 () Bool)

(declare-fun tp!105160 () Bool)

(declare-fun inv!4867 (Conc!1328) Bool)

(assert (=> b!286800 (= e!178488 (and (inv!4867 (c!54238 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (value!25776 (h!9332 tokens!465))))) tp!105160))))

(declare-fun result!20394 () Bool)

(declare-fun inv!4868 (BalanceConc!2664) Bool)

(assert (=> tb!16593 (= result!20394 (and (inv!4868 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (value!25776 (h!9332 tokens!465)))) e!178488))))

(assert (= tb!16593 b!286800))

(declare-fun m!371125 () Bool)

(assert (=> b!286800 m!371125))

(declare-fun m!371127 () Bool)

(assert (=> tb!16593 m!371127))

(assert (=> b!286794 t!40138))

(declare-fun b_and!23121 () Bool)

(assert (= b_and!23099 (and (=> t!40138 result!20394) b_and!23121)))

(declare-fun tb!16595 () Bool)

(declare-fun t!40140 () Bool)

(assert (=> (and b!286494 (= (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465))))) t!40140) tb!16595))

(declare-fun result!20398 () Bool)

(assert (= result!20398 result!20394))

(assert (=> b!286794 t!40140))

(declare-fun b_and!23123 () Bool)

(assert (= b_and!23103 (and (=> t!40140 result!20398) b_and!23123)))

(declare-fun t!40142 () Bool)

(declare-fun tb!16597 () Bool)

(assert (=> (and b!286500 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465))))) t!40142) tb!16597))

(declare-fun result!20400 () Bool)

(assert (= result!20400 result!20394))

(assert (=> b!286794 t!40142))

(declare-fun b_and!23125 () Bool)

(assert (= b_and!23107 (and (=> t!40142 result!20400) b_and!23125)))

(declare-fun m!371129 () Bool)

(assert (=> d!84880 m!371129))

(declare-fun m!371131 () Bool)

(assert (=> b!286794 m!371131))

(assert (=> b!286794 m!371131))

(declare-fun m!371133 () Bool)

(assert (=> b!286794 m!371133))

(declare-fun m!371135 () Bool)

(assert (=> b!286795 m!371135))

(assert (=> b!286505 d!84880))

(declare-fun d!84884 () Bool)

(declare-fun fromListB!354 (List!3945) BalanceConc!2666)

(assert (=> d!84884 (= (seqFromList!871 (t!40105 tokens!465)) (fromListB!354 (t!40105 tokens!465)))))

(declare-fun bs!32333 () Bool)

(assert (= bs!32333 d!84884))

(declare-fun m!371137 () Bool)

(assert (=> bs!32333 m!371137))

(assert (=> b!286495 d!84884))

(declare-fun d!84886 () Bool)

(assert (=> d!84886 (= (list!1639 (charsOf!396 separatorToken!170)) (list!1642 (c!54238 (charsOf!396 separatorToken!170))))))

(declare-fun bs!32334 () Bool)

(assert (= bs!32334 d!84886))

(declare-fun m!371139 () Bool)

(assert (=> bs!32334 m!371139))

(assert (=> b!286495 d!84886))

(declare-fun b!286802 () Bool)

(declare-fun e!178490 () List!3942)

(assert (=> b!286802 (= e!178490 (Cons!3932 (h!9329 lt!120504) (++!1046 (t!40102 lt!120504) lt!120499)))))

(declare-fun b!286803 () Bool)

(declare-fun res!131043 () Bool)

(declare-fun e!178489 () Bool)

(assert (=> b!286803 (=> (not res!131043) (not e!178489))))

(declare-fun lt!120702 () List!3942)

(assert (=> b!286803 (= res!131043 (= (size!3153 lt!120702) (+ (size!3153 lt!120504) (size!3153 lt!120499))))))

(declare-fun b!286801 () Bool)

(assert (=> b!286801 (= e!178490 lt!120499)))

(declare-fun d!84888 () Bool)

(assert (=> d!84888 e!178489))

(declare-fun res!131042 () Bool)

(assert (=> d!84888 (=> (not res!131042) (not e!178489))))

(assert (=> d!84888 (= res!131042 (= (content!577 lt!120702) ((_ map or) (content!577 lt!120504) (content!577 lt!120499))))))

(assert (=> d!84888 (= lt!120702 e!178490)))

(declare-fun c!54307 () Bool)

(assert (=> d!84888 (= c!54307 ((_ is Nil!3932) lt!120504))))

(assert (=> d!84888 (= (++!1046 lt!120504 lt!120499) lt!120702)))

(declare-fun b!286804 () Bool)

(assert (=> b!286804 (= e!178489 (or (not (= lt!120499 Nil!3932)) (= lt!120702 lt!120504)))))

(assert (= (and d!84888 c!54307) b!286801))

(assert (= (and d!84888 (not c!54307)) b!286802))

(assert (= (and d!84888 res!131042) b!286803))

(assert (= (and b!286803 res!131043) b!286804))

(declare-fun m!371141 () Bool)

(assert (=> b!286802 m!371141))

(declare-fun m!371143 () Bool)

(assert (=> b!286803 m!371143))

(assert (=> b!286803 m!370943))

(declare-fun m!371145 () Bool)

(assert (=> b!286803 m!371145))

(declare-fun m!371147 () Bool)

(assert (=> d!84888 m!371147))

(assert (=> d!84888 m!370949))

(declare-fun m!371149 () Bool)

(assert (=> d!84888 m!371149))

(assert (=> b!286495 d!84888))

(declare-fun d!84890 () Bool)

(assert (=> d!84890 (= (list!1639 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 (seqFromList!871 (t!40105 tokens!465)) separatorToken!170 0)) (list!1642 (c!54238 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 (seqFromList!871 (t!40105 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!32335 () Bool)

(assert (= bs!32335 d!84890))

(declare-fun m!371151 () Bool)

(assert (=> bs!32335 m!371151))

(assert (=> b!286495 d!84890))

(declare-fun bs!32336 () Bool)

(declare-fun d!84892 () Bool)

(assert (= bs!32336 (and d!84892 b!286508)))

(declare-fun lambda!9822 () Int)

(assert (=> bs!32336 (= lambda!9822 lambda!9798)))

(declare-fun bs!32337 () Bool)

(assert (= bs!32337 (and d!84892 d!84826)))

(assert (=> bs!32337 (= lambda!9822 lambda!9808)))

(declare-fun bs!32338 () Bool)

(assert (= bs!32338 (and d!84892 b!286592)))

(assert (=> bs!32338 (not (= lambda!9822 lambda!9809))))

(declare-fun bs!32339 () Bool)

(assert (= bs!32339 (and d!84892 b!286657)))

(assert (=> bs!32339 (not (= lambda!9822 lambda!9818))))

(declare-fun bs!32340 () Bool)

(declare-fun b!286808 () Bool)

(assert (= bs!32340 (and b!286808 d!84892)))

(declare-fun lambda!9823 () Int)

(assert (=> bs!32340 (not (= lambda!9823 lambda!9822))))

(declare-fun bs!32341 () Bool)

(assert (= bs!32341 (and b!286808 b!286592)))

(assert (=> bs!32341 (= lambda!9823 lambda!9809)))

(declare-fun bs!32342 () Bool)

(assert (= bs!32342 (and b!286808 d!84826)))

(assert (=> bs!32342 (not (= lambda!9823 lambda!9808))))

(declare-fun bs!32343 () Bool)

(assert (= bs!32343 (and b!286808 b!286657)))

(assert (=> bs!32343 (= lambda!9823 lambda!9818)))

(declare-fun bs!32344 () Bool)

(assert (= bs!32344 (and b!286808 b!286508)))

(assert (=> bs!32344 (not (= lambda!9823 lambda!9798))))

(declare-fun b!286816 () Bool)

(declare-fun e!178499 () Bool)

(assert (=> b!286816 (= e!178499 true)))

(declare-fun b!286815 () Bool)

(declare-fun e!178498 () Bool)

(assert (=> b!286815 (= e!178498 e!178499)))

(declare-fun b!286814 () Bool)

(declare-fun e!178497 () Bool)

(assert (=> b!286814 (= e!178497 e!178498)))

(assert (=> b!286808 e!178497))

(assert (= b!286815 b!286816))

(assert (= b!286814 b!286815))

(assert (= (and b!286808 ((_ is Cons!3934) rules!1920)) b!286814))

(assert (=> b!286816 (< (dynLambda!2080 order!3101 (toValue!1500 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9823))))

(assert (=> b!286816 (< (dynLambda!2082 order!3105 (toChars!1359 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9823))))

(assert (=> b!286808 true))

(declare-fun bm!16176 () Bool)

(declare-fun call!16185 () Token!1250)

(assert (=> bm!16176 (= call!16185 (apply!837 (seqFromList!871 (t!40105 tokens!465)) 0))))

(declare-fun b!286805 () Bool)

(declare-fun e!178496 () BalanceConc!2664)

(declare-fun call!16181 () BalanceConc!2664)

(declare-fun lt!120710 () BalanceConc!2664)

(assert (=> b!286805 (= e!178496 (++!1048 call!16181 lt!120710))))

(declare-fun b!286806 () Bool)

(assert (=> b!286806 (= e!178496 (BalanceConc!2665 Empty!1328))))

(declare-fun call!16184 () Token!1250)

(assert (=> b!286806 (= (print!364 thiss!17480 (singletonSeq!299 call!16184)) (printTailRec!325 thiss!17480 (singletonSeq!299 call!16184) 0 (BalanceConc!2665 Empty!1328)))))

(declare-fun lt!120716 () Unit!5278)

(declare-fun Unit!5288 () Unit!5278)

(assert (=> b!286806 (= lt!120716 Unit!5288)))

(declare-fun call!16183 () BalanceConc!2664)

(declare-fun lt!120703 () Unit!5278)

(assert (=> b!286806 (= lt!120703 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!128 thiss!17480 rules!1920 (list!1639 call!16183) (list!1639 lt!120710)))))

(assert (=> b!286806 false))

(declare-fun lt!120712 () Unit!5278)

(declare-fun Unit!5289 () Unit!5278)

(assert (=> b!286806 (= lt!120712 Unit!5289)))

(declare-fun bm!16177 () Bool)

(assert (=> bm!16177 (= call!16184 call!16185)))

(declare-fun b!286807 () Bool)

(declare-fun e!178492 () Bool)

(assert (=> b!286807 (= e!178492 (<= 0 (size!3152 (seqFromList!871 (t!40105 tokens!465)))))))

(declare-fun call!16182 () BalanceConc!2664)

(declare-fun c!54310 () Bool)

(declare-fun bm!16178 () Bool)

(assert (=> bm!16178 (= call!16181 (++!1048 call!16182 (ite c!54310 lt!120710 call!16183)))))

(declare-fun lt!120713 () BalanceConc!2664)

(assert (=> d!84892 (= (list!1639 lt!120713) (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 (dropList!180 (seqFromList!871 (t!40105 tokens!465)) 0) separatorToken!170))))

(declare-fun e!178495 () BalanceConc!2664)

(assert (=> d!84892 (= lt!120713 e!178495)))

(declare-fun c!54308 () Bool)

(assert (=> d!84892 (= c!54308 (>= 0 (size!3152 (seqFromList!871 (t!40105 tokens!465)))))))

(declare-fun lt!120705 () Unit!5278)

(assert (=> d!84892 (= lt!120705 (lemmaContentSubsetPreservesForall!124 (list!1643 (seqFromList!871 (t!40105 tokens!465))) (dropList!180 (seqFromList!871 (t!40105 tokens!465)) 0) lambda!9822))))

(assert (=> d!84892 e!178492))

(declare-fun res!131046 () Bool)

(assert (=> d!84892 (=> (not res!131046) (not e!178492))))

(assert (=> d!84892 (= res!131046 (>= 0 0))))

(assert (=> d!84892 (= (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 (seqFromList!871 (t!40105 tokens!465)) separatorToken!170 0) lt!120713)))

(declare-fun e!178493 () BalanceConc!2664)

(assert (=> b!286808 (= e!178495 e!178493)))

(declare-fun lt!120708 () List!3945)

(assert (=> b!286808 (= lt!120708 (list!1643 (seqFromList!871 (t!40105 tokens!465))))))

(declare-fun lt!120707 () Unit!5278)

(assert (=> b!286808 (= lt!120707 (lemmaDropApply!220 lt!120708 0))))

(assert (=> b!286808 (= (head!928 (drop!233 lt!120708 0)) (apply!838 lt!120708 0))))

(declare-fun lt!120711 () Unit!5278)

(assert (=> b!286808 (= lt!120711 lt!120707)))

(declare-fun lt!120715 () List!3945)

(assert (=> b!286808 (= lt!120715 (list!1643 (seqFromList!871 (t!40105 tokens!465))))))

(declare-fun lt!120704 () Unit!5278)

(assert (=> b!286808 (= lt!120704 (lemmaDropTail!212 lt!120715 0))))

(assert (=> b!286808 (= (tail!510 (drop!233 lt!120715 0)) (drop!233 lt!120715 (+ 0 1)))))

(declare-fun lt!120709 () Unit!5278)

(assert (=> b!286808 (= lt!120709 lt!120704)))

(declare-fun lt!120714 () Unit!5278)

(assert (=> b!286808 (= lt!120714 (forallContained!306 (list!1643 (seqFromList!871 (t!40105 tokens!465))) lambda!9823 (apply!837 (seqFromList!871 (t!40105 tokens!465)) 0)))))

(assert (=> b!286808 (= lt!120710 (printWithSeparatorTokenWhenNeededRec!312 thiss!17480 rules!1920 (seqFromList!871 (t!40105 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!120706 () Option!866)

(assert (=> b!286808 (= lt!120706 (maxPrefixZipperSequence!318 thiss!17480 rules!1920 (++!1048 (charsOf!396 (apply!837 (seqFromList!871 (t!40105 tokens!465)) 0)) lt!120710)))))

(declare-fun res!131045 () Bool)

(assert (=> b!286808 (= res!131045 ((_ is Some!865) lt!120706))))

(declare-fun e!178491 () Bool)

(assert (=> b!286808 (=> (not res!131045) (not e!178491))))

(assert (=> b!286808 (= c!54310 e!178491)))

(declare-fun bm!16179 () Bool)

(assert (=> bm!16179 (= call!16182 (charsOf!396 (ite c!54310 call!16185 call!16184)))))

(declare-fun b!286809 () Bool)

(assert (=> b!286809 (= e!178493 call!16181)))

(declare-fun b!286810 () Bool)

(declare-fun e!178494 () Bool)

(assert (=> b!286810 (= e!178494 (not (= (_1!2450 (v!14806 lt!120706)) call!16185)))))

(declare-fun b!286811 () Bool)

(assert (=> b!286811 (= e!178491 (= (_1!2450 (v!14806 lt!120706)) (apply!837 (seqFromList!871 (t!40105 tokens!465)) 0)))))

(declare-fun b!286812 () Bool)

(assert (=> b!286812 (= e!178495 (BalanceConc!2665 Empty!1328))))

(declare-fun b!286813 () Bool)

(declare-fun c!54309 () Bool)

(assert (=> b!286813 (= c!54309 e!178494)))

(declare-fun res!131044 () Bool)

(assert (=> b!286813 (=> (not res!131044) (not e!178494))))

(assert (=> b!286813 (= res!131044 ((_ is Some!865) lt!120706))))

(assert (=> b!286813 (= e!178493 e!178496)))

(declare-fun bm!16180 () Bool)

(assert (=> bm!16180 (= call!16183 (charsOf!396 (ite c!54309 separatorToken!170 call!16184)))))

(assert (= (and d!84892 res!131046) b!286807))

(assert (= (and d!84892 c!54308) b!286812))

(assert (= (and d!84892 (not c!54308)) b!286808))

(assert (= (and b!286808 res!131045) b!286811))

(assert (= (and b!286808 c!54310) b!286809))

(assert (= (and b!286808 (not c!54310)) b!286813))

(assert (= (and b!286813 res!131044) b!286810))

(assert (= (and b!286813 c!54309) b!286805))

(assert (= (and b!286813 (not c!54309)) b!286806))

(assert (= (or b!286805 b!286806) bm!16177))

(assert (= (or b!286805 b!286806) bm!16180))

(assert (= (or b!286809 bm!16177 b!286810) bm!16176))

(assert (= (or b!286809 b!286805) bm!16179))

(assert (= (or b!286809 b!286805) bm!16178))

(assert (=> b!286807 m!370637))

(declare-fun m!371157 () Bool)

(assert (=> b!286807 m!371157))

(declare-fun m!371159 () Bool)

(assert (=> b!286808 m!371159))

(declare-fun m!371161 () Bool)

(assert (=> b!286808 m!371161))

(assert (=> b!286808 m!370637))

(declare-fun m!371163 () Bool)

(assert (=> b!286808 m!371163))

(declare-fun m!371165 () Bool)

(assert (=> b!286808 m!371165))

(declare-fun m!371167 () Bool)

(assert (=> b!286808 m!371167))

(declare-fun m!371169 () Bool)

(assert (=> b!286808 m!371169))

(declare-fun m!371171 () Bool)

(assert (=> b!286808 m!371171))

(declare-fun m!371173 () Bool)

(assert (=> b!286808 m!371173))

(assert (=> b!286808 m!371171))

(declare-fun m!371175 () Bool)

(assert (=> b!286808 m!371175))

(declare-fun m!371177 () Bool)

(assert (=> b!286808 m!371177))

(assert (=> b!286808 m!371165))

(declare-fun m!371179 () Bool)

(assert (=> b!286808 m!371179))

(assert (=> b!286808 m!370637))

(assert (=> b!286808 m!371165))

(declare-fun m!371181 () Bool)

(assert (=> b!286808 m!371181))

(assert (=> b!286808 m!371167))

(assert (=> b!286808 m!371159))

(declare-fun m!371183 () Bool)

(assert (=> b!286808 m!371183))

(declare-fun m!371185 () Bool)

(assert (=> b!286808 m!371185))

(assert (=> b!286808 m!370637))

(assert (=> b!286808 m!371177))

(assert (=> b!286808 m!371169))

(declare-fun m!371187 () Bool)

(assert (=> b!286808 m!371187))

(assert (=> bm!16176 m!370637))

(assert (=> bm!16176 m!371165))

(assert (=> b!286811 m!370637))

(assert (=> b!286811 m!371165))

(declare-fun m!371189 () Bool)

(assert (=> d!84892 m!371189))

(declare-fun m!371191 () Bool)

(assert (=> d!84892 m!371191))

(assert (=> d!84892 m!370637))

(assert (=> d!84892 m!371189))

(assert (=> d!84892 m!371177))

(assert (=> d!84892 m!371189))

(declare-fun m!371193 () Bool)

(assert (=> d!84892 m!371193))

(assert (=> d!84892 m!370637))

(assert (=> d!84892 m!371157))

(assert (=> d!84892 m!370637))

(assert (=> d!84892 m!371177))

(declare-fun m!371195 () Bool)

(assert (=> d!84892 m!371195))

(declare-fun m!371197 () Bool)

(assert (=> bm!16179 m!371197))

(declare-fun m!371199 () Bool)

(assert (=> bm!16178 m!371199))

(declare-fun m!371201 () Bool)

(assert (=> b!286806 m!371201))

(declare-fun m!371203 () Bool)

(assert (=> b!286806 m!371203))

(assert (=> b!286806 m!371201))

(declare-fun m!371205 () Bool)

(assert (=> b!286806 m!371205))

(declare-fun m!371207 () Bool)

(assert (=> b!286806 m!371207))

(declare-fun m!371209 () Bool)

(assert (=> b!286806 m!371209))

(assert (=> b!286806 m!371207))

(assert (=> b!286806 m!371203))

(assert (=> b!286806 m!371207))

(declare-fun m!371211 () Bool)

(assert (=> b!286806 m!371211))

(declare-fun m!371213 () Bool)

(assert (=> b!286805 m!371213))

(declare-fun m!371215 () Bool)

(assert (=> bm!16180 m!371215))

(assert (=> b!286495 d!84892))

(declare-fun d!84896 () Bool)

(declare-fun lt!120725 () BalanceConc!2664)

(assert (=> d!84896 (= (list!1639 lt!120725) (originalCharacters!796 separatorToken!170))))

(assert (=> d!84896 (= lt!120725 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (value!25776 separatorToken!170)))))

(assert (=> d!84896 (= (charsOf!396 separatorToken!170) lt!120725)))

(declare-fun b_lambda!9479 () Bool)

(assert (=> (not b_lambda!9479) (not d!84896)))

(declare-fun t!40145 () Bool)

(declare-fun tb!16599 () Bool)

(assert (=> (and b!286517 (= (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170)))) t!40145) tb!16599))

(declare-fun b!286824 () Bool)

(declare-fun e!178505 () Bool)

(declare-fun tp!105161 () Bool)

(assert (=> b!286824 (= e!178505 (and (inv!4867 (c!54238 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (value!25776 separatorToken!170)))) tp!105161))))

(declare-fun result!20402 () Bool)

(assert (=> tb!16599 (= result!20402 (and (inv!4868 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (value!25776 separatorToken!170))) e!178505))))

(assert (= tb!16599 b!286824))

(declare-fun m!371223 () Bool)

(assert (=> b!286824 m!371223))

(declare-fun m!371225 () Bool)

(assert (=> tb!16599 m!371225))

(assert (=> d!84896 t!40145))

(declare-fun b_and!23127 () Bool)

(assert (= b_and!23121 (and (=> t!40145 result!20402) b_and!23127)))

(declare-fun tb!16601 () Bool)

(declare-fun t!40147 () Bool)

(assert (=> (and b!286494 (= (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170)))) t!40147) tb!16601))

(declare-fun result!20404 () Bool)

(assert (= result!20404 result!20402))

(assert (=> d!84896 t!40147))

(declare-fun b_and!23129 () Bool)

(assert (= b_and!23123 (and (=> t!40147 result!20404) b_and!23129)))

(declare-fun t!40149 () Bool)

(declare-fun tb!16603 () Bool)

(assert (=> (and b!286500 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170)))) t!40149) tb!16603))

(declare-fun result!20406 () Bool)

(assert (= result!20406 result!20402))

(assert (=> d!84896 t!40149))

(declare-fun b_and!23131 () Bool)

(assert (= b_and!23125 (and (=> t!40149 result!20406) b_and!23131)))

(declare-fun m!371227 () Bool)

(assert (=> d!84896 m!371227))

(declare-fun m!371229 () Bool)

(assert (=> d!84896 m!371229))

(assert (=> b!286495 d!84896))

(declare-fun d!84900 () Bool)

(assert (=> d!84900 (= (++!1046 (++!1046 lt!120504 lt!120499) lt!120497) (++!1046 lt!120504 (++!1046 lt!120499 lt!120497)))))

(declare-fun lt!120728 () Unit!5278)

(declare-fun choose!2590 (List!3942 List!3942 List!3942) Unit!5278)

(assert (=> d!84900 (= lt!120728 (choose!2590 lt!120504 lt!120499 lt!120497))))

(assert (=> d!84900 (= (lemmaConcatAssociativity!454 lt!120504 lt!120499 lt!120497) lt!120728)))

(declare-fun bs!32346 () Bool)

(assert (= bs!32346 d!84900))

(declare-fun m!371239 () Bool)

(assert (=> bs!32346 m!371239))

(assert (=> bs!32346 m!370651))

(assert (=> bs!32346 m!370651))

(declare-fun m!371241 () Bool)

(assert (=> bs!32346 m!371241))

(assert (=> bs!32346 m!370641))

(assert (=> bs!32346 m!370649))

(assert (=> bs!32346 m!370641))

(assert (=> b!286495 d!84900))

(declare-fun d!84904 () Bool)

(assert (=> d!84904 (= (list!1639 (charsOf!396 (h!9332 tokens!465))) (list!1642 (c!54238 (charsOf!396 (h!9332 tokens!465)))))))

(declare-fun bs!32347 () Bool)

(assert (= bs!32347 d!84904))

(declare-fun m!371243 () Bool)

(assert (=> bs!32347 m!371243))

(assert (=> b!286495 d!84904))

(declare-fun d!84906 () Bool)

(declare-fun lt!120729 () BalanceConc!2664)

(assert (=> d!84906 (= (list!1639 lt!120729) (originalCharacters!796 (h!9332 tokens!465)))))

(assert (=> d!84906 (= lt!120729 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (value!25776 (h!9332 tokens!465))))))

(assert (=> d!84906 (= (charsOf!396 (h!9332 tokens!465)) lt!120729)))

(declare-fun b_lambda!9481 () Bool)

(assert (=> (not b_lambda!9481) (not d!84906)))

(assert (=> d!84906 t!40138))

(declare-fun b_and!23133 () Bool)

(assert (= b_and!23127 (and (=> t!40138 result!20394) b_and!23133)))

(assert (=> d!84906 t!40140))

(declare-fun b_and!23135 () Bool)

(assert (= b_and!23129 (and (=> t!40140 result!20398) b_and!23135)))

(assert (=> d!84906 t!40142))

(declare-fun b_and!23137 () Bool)

(assert (= b_and!23131 (and (=> t!40142 result!20400) b_and!23137)))

(declare-fun m!371245 () Bool)

(assert (=> d!84906 m!371245))

(assert (=> d!84906 m!371131))

(assert (=> b!286495 d!84906))

(declare-fun b!286832 () Bool)

(declare-fun e!178512 () List!3942)

(assert (=> b!286832 (= e!178512 (Cons!3932 (h!9329 (++!1046 lt!120504 lt!120499)) (++!1046 (t!40102 (++!1046 lt!120504 lt!120499)) lt!120497)))))

(declare-fun b!286833 () Bool)

(declare-fun res!131055 () Bool)

(declare-fun e!178511 () Bool)

(assert (=> b!286833 (=> (not res!131055) (not e!178511))))

(declare-fun lt!120730 () List!3942)

(assert (=> b!286833 (= res!131055 (= (size!3153 lt!120730) (+ (size!3153 (++!1046 lt!120504 lt!120499)) (size!3153 lt!120497))))))

(declare-fun b!286831 () Bool)

(assert (=> b!286831 (= e!178512 lt!120497)))

(declare-fun d!84908 () Bool)

(assert (=> d!84908 e!178511))

(declare-fun res!131054 () Bool)

(assert (=> d!84908 (=> (not res!131054) (not e!178511))))

(assert (=> d!84908 (= res!131054 (= (content!577 lt!120730) ((_ map or) (content!577 (++!1046 lt!120504 lt!120499)) (content!577 lt!120497))))))

(assert (=> d!84908 (= lt!120730 e!178512)))

(declare-fun c!54314 () Bool)

(assert (=> d!84908 (= c!54314 ((_ is Nil!3932) (++!1046 lt!120504 lt!120499)))))

(assert (=> d!84908 (= (++!1046 (++!1046 lt!120504 lt!120499) lt!120497) lt!120730)))

(declare-fun b!286834 () Bool)

(assert (=> b!286834 (= e!178511 (or (not (= lt!120497 Nil!3932)) (= lt!120730 (++!1046 lt!120504 lt!120499))))))

(assert (= (and d!84908 c!54314) b!286831))

(assert (= (and d!84908 (not c!54314)) b!286832))

(assert (= (and d!84908 res!131054) b!286833))

(assert (= (and b!286833 res!131055) b!286834))

(declare-fun m!371247 () Bool)

(assert (=> b!286832 m!371247))

(declare-fun m!371249 () Bool)

(assert (=> b!286833 m!371249))

(assert (=> b!286833 m!370641))

(declare-fun m!371251 () Bool)

(assert (=> b!286833 m!371251))

(assert (=> b!286833 m!370945))

(declare-fun m!371253 () Bool)

(assert (=> d!84908 m!371253))

(assert (=> d!84908 m!370641))

(declare-fun m!371255 () Bool)

(assert (=> d!84908 m!371255))

(assert (=> d!84908 m!370951))

(assert (=> b!286495 d!84908))

(declare-fun b!286836 () Bool)

(declare-fun e!178514 () List!3942)

(assert (=> b!286836 (= e!178514 (Cons!3932 (h!9329 lt!120499) (++!1046 (t!40102 lt!120499) lt!120497)))))

(declare-fun b!286837 () Bool)

(declare-fun res!131057 () Bool)

(declare-fun e!178513 () Bool)

(assert (=> b!286837 (=> (not res!131057) (not e!178513))))

(declare-fun lt!120731 () List!3942)

(assert (=> b!286837 (= res!131057 (= (size!3153 lt!120731) (+ (size!3153 lt!120499) (size!3153 lt!120497))))))

(declare-fun b!286835 () Bool)

(assert (=> b!286835 (= e!178514 lt!120497)))

(declare-fun d!84910 () Bool)

(assert (=> d!84910 e!178513))

(declare-fun res!131056 () Bool)

(assert (=> d!84910 (=> (not res!131056) (not e!178513))))

(assert (=> d!84910 (= res!131056 (= (content!577 lt!120731) ((_ map or) (content!577 lt!120499) (content!577 lt!120497))))))

(assert (=> d!84910 (= lt!120731 e!178514)))

(declare-fun c!54315 () Bool)

(assert (=> d!84910 (= c!54315 ((_ is Nil!3932) lt!120499))))

(assert (=> d!84910 (= (++!1046 lt!120499 lt!120497) lt!120731)))

(declare-fun b!286838 () Bool)

(assert (=> b!286838 (= e!178513 (or (not (= lt!120497 Nil!3932)) (= lt!120731 lt!120499)))))

(assert (= (and d!84910 c!54315) b!286835))

(assert (= (and d!84910 (not c!54315)) b!286836))

(assert (= (and d!84910 res!131056) b!286837))

(assert (= (and b!286837 res!131057) b!286838))

(declare-fun m!371257 () Bool)

(assert (=> b!286836 m!371257))

(declare-fun m!371259 () Bool)

(assert (=> b!286837 m!371259))

(assert (=> b!286837 m!371145))

(assert (=> b!286837 m!370945))

(declare-fun m!371261 () Bool)

(assert (=> d!84910 m!371261))

(assert (=> d!84910 m!371149))

(assert (=> d!84910 m!370951))

(assert (=> b!286495 d!84910))

(declare-fun b!286842 () Bool)

(declare-fun e!178518 () List!3942)

(assert (=> b!286842 (= e!178518 (Cons!3932 (h!9329 lt!120504) (++!1046 (t!40102 lt!120504) lt!120510)))))

(declare-fun b!286843 () Bool)

(declare-fun res!131061 () Bool)

(declare-fun e!178517 () Bool)

(assert (=> b!286843 (=> (not res!131061) (not e!178517))))

(declare-fun lt!120732 () List!3942)

(assert (=> b!286843 (= res!131061 (= (size!3153 lt!120732) (+ (size!3153 lt!120504) (size!3153 lt!120510))))))

(declare-fun b!286841 () Bool)

(assert (=> b!286841 (= e!178518 lt!120510)))

(declare-fun d!84912 () Bool)

(assert (=> d!84912 e!178517))

(declare-fun res!131060 () Bool)

(assert (=> d!84912 (=> (not res!131060) (not e!178517))))

(assert (=> d!84912 (= res!131060 (= (content!577 lt!120732) ((_ map or) (content!577 lt!120504) (content!577 lt!120510))))))

(assert (=> d!84912 (= lt!120732 e!178518)))

(declare-fun c!54316 () Bool)

(assert (=> d!84912 (= c!54316 ((_ is Nil!3932) lt!120504))))

(assert (=> d!84912 (= (++!1046 lt!120504 lt!120510) lt!120732)))

(declare-fun b!286844 () Bool)

(assert (=> b!286844 (= e!178517 (or (not (= lt!120510 Nil!3932)) (= lt!120732 lt!120504)))))

(assert (= (and d!84912 c!54316) b!286841))

(assert (= (and d!84912 (not c!54316)) b!286842))

(assert (= (and d!84912 res!131060) b!286843))

(assert (= (and b!286843 res!131061) b!286844))

(declare-fun m!371267 () Bool)

(assert (=> b!286842 m!371267))

(declare-fun m!371269 () Bool)

(assert (=> b!286843 m!371269))

(assert (=> b!286843 m!370943))

(declare-fun m!371271 () Bool)

(assert (=> b!286843 m!371271))

(declare-fun m!371273 () Bool)

(assert (=> d!84912 m!371273))

(assert (=> d!84912 m!370949))

(declare-fun m!371275 () Bool)

(assert (=> d!84912 m!371275))

(assert (=> b!286495 d!84912))

(declare-fun bs!32349 () Bool)

(declare-fun b!286845 () Bool)

(assert (= bs!32349 (and b!286845 d!84892)))

(declare-fun lambda!9824 () Int)

(assert (=> bs!32349 (not (= lambda!9824 lambda!9822))))

(declare-fun bs!32350 () Bool)

(assert (= bs!32350 (and b!286845 b!286592)))

(assert (=> bs!32350 (= lambda!9824 lambda!9809)))

(declare-fun bs!32351 () Bool)

(assert (= bs!32351 (and b!286845 b!286808)))

(assert (=> bs!32351 (= lambda!9824 lambda!9823)))

(declare-fun bs!32352 () Bool)

(assert (= bs!32352 (and b!286845 d!84826)))

(assert (=> bs!32352 (not (= lambda!9824 lambda!9808))))

(declare-fun bs!32353 () Bool)

(assert (= bs!32353 (and b!286845 b!286657)))

(assert (=> bs!32353 (= lambda!9824 lambda!9818)))

(declare-fun bs!32354 () Bool)

(assert (= bs!32354 (and b!286845 b!286508)))

(assert (=> bs!32354 (not (= lambda!9824 lambda!9798))))

(declare-fun b!286860 () Bool)

(declare-fun e!178528 () Bool)

(assert (=> b!286860 (= e!178528 true)))

(declare-fun b!286859 () Bool)

(declare-fun e!178527 () Bool)

(assert (=> b!286859 (= e!178527 e!178528)))

(declare-fun b!286858 () Bool)

(declare-fun e!178526 () Bool)

(assert (=> b!286858 (= e!178526 e!178527)))

(assert (=> b!286845 e!178526))

(assert (= b!286859 b!286860))

(assert (= b!286858 b!286859))

(assert (= (and b!286845 ((_ is Cons!3934) rules!1920)) b!286858))

(assert (=> b!286860 (< (dynLambda!2080 order!3101 (toValue!1500 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9824))))

(assert (=> b!286860 (< (dynLambda!2082 order!3105 (toChars!1359 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9824))))

(assert (=> b!286845 true))

(declare-fun e!178519 () List!3942)

(declare-fun e!178522 () List!3942)

(assert (=> b!286845 (= e!178519 e!178522)))

(declare-fun lt!120737 () Unit!5278)

(assert (=> b!286845 (= lt!120737 (forallContained!306 (t!40105 tokens!465) lambda!9824 (h!9332 (t!40105 tokens!465))))))

(declare-fun lt!120735 () List!3942)

(assert (=> b!286845 (= lt!120735 (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 (t!40105 (t!40105 tokens!465)) separatorToken!170))))

(declare-fun lt!120733 () Option!867)

(assert (=> b!286845 (= lt!120733 (maxPrefix!355 thiss!17480 rules!1920 (++!1046 (list!1639 (charsOf!396 (h!9332 (t!40105 tokens!465)))) lt!120735)))))

(declare-fun c!54317 () Bool)

(assert (=> b!286845 (= c!54317 (and ((_ is Some!866) lt!120733) (= (_1!2451 (v!14807 lt!120733)) (h!9332 (t!40105 tokens!465)))))))

(declare-fun d!84916 () Bool)

(declare-fun c!54319 () Bool)

(assert (=> d!84916 (= c!54319 ((_ is Cons!3935) (t!40105 tokens!465)))))

(assert (=> d!84916 (= (printWithSeparatorTokenWhenNeededList!320 thiss!17480 rules!1920 (t!40105 tokens!465) separatorToken!170) e!178519)))

(declare-fun b!286846 () Bool)

(declare-fun e!178520 () List!3942)

(assert (=> b!286846 (= e!178520 Nil!3932)))

(assert (=> b!286846 (= (print!364 thiss!17480 (singletonSeq!299 (h!9332 (t!40105 tokens!465)))) (printTailRec!325 thiss!17480 (singletonSeq!299 (h!9332 (t!40105 tokens!465))) 0 (BalanceConc!2665 Empty!1328)))))

(declare-fun lt!120738 () Unit!5278)

(declare-fun Unit!5292 () Unit!5278)

(assert (=> b!286846 (= lt!120738 Unit!5292)))

(declare-fun call!16186 () List!3942)

(declare-fun lt!120736 () Unit!5278)

(assert (=> b!286846 (= lt!120736 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!128 thiss!17480 rules!1920 call!16186 lt!120735))))

(assert (=> b!286846 false))

(declare-fun lt!120734 () Unit!5278)

(declare-fun Unit!5293 () Unit!5278)

(assert (=> b!286846 (= lt!120734 Unit!5293)))

(declare-fun call!16190 () BalanceConc!2664)

(declare-fun call!16189 () BalanceConc!2664)

(declare-fun call!16188 () List!3942)

(declare-fun bm!16181 () Bool)

(assert (=> bm!16181 (= call!16188 (list!1639 (ite c!54317 call!16189 call!16190)))))

(declare-fun bm!16182 () Bool)

(declare-fun call!16187 () List!3942)

(assert (=> bm!16182 (= call!16187 (++!1046 call!16188 (ite c!54317 lt!120735 call!16186)))))

(declare-fun b!286847 () Bool)

(declare-fun e!178521 () BalanceConc!2664)

(assert (=> b!286847 (= e!178521 (charsOf!396 separatorToken!170))))

(declare-fun b!286848 () Bool)

(assert (=> b!286848 (= e!178519 Nil!3932)))

(declare-fun b!286849 () Bool)

(assert (=> b!286849 (= e!178521 call!16190)))

(declare-fun b!286851 () Bool)

(declare-fun c!54318 () Bool)

(assert (=> b!286851 (= c!54318 (and ((_ is Some!866) lt!120733) (not (= (_1!2451 (v!14807 lt!120733)) (h!9332 (t!40105 tokens!465))))))))

(assert (=> b!286851 (= e!178522 e!178520)))

(declare-fun bm!16183 () Bool)

(assert (=> bm!16183 (= call!16189 (charsOf!396 (h!9332 (t!40105 tokens!465))))))

(declare-fun b!286854 () Bool)

(assert (=> b!286854 (= e!178520 (++!1046 call!16187 lt!120735))))

(declare-fun bm!16184 () Bool)

(assert (=> bm!16184 (= call!16186 (list!1639 e!178521))))

(declare-fun c!54320 () Bool)

(assert (=> bm!16184 (= c!54320 c!54318)))

(declare-fun bm!16185 () Bool)

(assert (=> bm!16185 (= call!16190 call!16189)))

(declare-fun b!286857 () Bool)

(assert (=> b!286857 (= e!178522 call!16187)))

(assert (= (and d!84916 c!54319) b!286845))

(assert (= (and d!84916 (not c!54319)) b!286848))

(assert (= (and b!286845 c!54317) b!286857))

(assert (= (and b!286845 (not c!54317)) b!286851))

(assert (= (and b!286851 c!54318) b!286854))

(assert (= (and b!286851 (not c!54318)) b!286846))

(assert (= (or b!286854 b!286846) bm!16185))

(assert (= (or b!286854 b!286846) bm!16184))

(assert (= (and bm!16184 c!54320) b!286847))

(assert (= (and bm!16184 (not c!54320)) b!286849))

(assert (= (or b!286857 bm!16185) bm!16183))

(assert (= (or b!286857 b!286854) bm!16181))

(assert (= (or b!286857 b!286854) bm!16182))

(declare-fun m!371287 () Bool)

(assert (=> bm!16182 m!371287))

(declare-fun m!371289 () Bool)

(assert (=> bm!16184 m!371289))

(assert (=> b!286847 m!370645))

(declare-fun m!371291 () Bool)

(assert (=> bm!16183 m!371291))

(declare-fun m!371293 () Bool)

(assert (=> bm!16181 m!371293))

(declare-fun m!371295 () Bool)

(assert (=> b!286854 m!371295))

(declare-fun m!371297 () Bool)

(assert (=> b!286845 m!371297))

(assert (=> b!286845 m!371291))

(assert (=> b!286845 m!371291))

(declare-fun m!371301 () Bool)

(assert (=> b!286845 m!371301))

(declare-fun m!371305 () Bool)

(assert (=> b!286845 m!371305))

(declare-fun m!371307 () Bool)

(assert (=> b!286845 m!371307))

(declare-fun m!371309 () Bool)

(assert (=> b!286845 m!371309))

(assert (=> b!286845 m!371301))

(assert (=> b!286845 m!371307))

(declare-fun m!371311 () Bool)

(assert (=> b!286846 m!371311))

(assert (=> b!286846 m!371311))

(declare-fun m!371313 () Bool)

(assert (=> b!286846 m!371313))

(assert (=> b!286846 m!371311))

(declare-fun m!371315 () Bool)

(assert (=> b!286846 m!371315))

(declare-fun m!371317 () Bool)

(assert (=> b!286846 m!371317))

(assert (=> b!286495 d!84916))

(declare-fun b!286873 () Bool)

(declare-fun e!178536 () Bool)

(declare-fun inv!17 (TokenValue!775) Bool)

(assert (=> b!286873 (= e!178536 (inv!17 (value!25776 (h!9332 tokens!465))))))

(declare-fun b!286874 () Bool)

(declare-fun res!131066 () Bool)

(declare-fun e!178538 () Bool)

(assert (=> b!286874 (=> res!131066 e!178538)))

(assert (=> b!286874 (= res!131066 (not ((_ is IntegerValue!2327) (value!25776 (h!9332 tokens!465)))))))

(assert (=> b!286874 (= e!178536 e!178538)))

(declare-fun b!286872 () Bool)

(declare-fun e!178537 () Bool)

(declare-fun inv!16 (TokenValue!775) Bool)

(assert (=> b!286872 (= e!178537 (inv!16 (value!25776 (h!9332 tokens!465))))))

(declare-fun d!84930 () Bool)

(declare-fun c!54327 () Bool)

(assert (=> d!84930 (= c!54327 ((_ is IntegerValue!2325) (value!25776 (h!9332 tokens!465))))))

(assert (=> d!84930 (= (inv!21 (value!25776 (h!9332 tokens!465))) e!178537)))

(declare-fun b!286875 () Bool)

(assert (=> b!286875 (= e!178537 e!178536)))

(declare-fun c!54328 () Bool)

(assert (=> b!286875 (= c!54328 ((_ is IntegerValue!2326) (value!25776 (h!9332 tokens!465))))))

(declare-fun b!286876 () Bool)

(declare-fun inv!15 (TokenValue!775) Bool)

(assert (=> b!286876 (= e!178538 (inv!15 (value!25776 (h!9332 tokens!465))))))

(assert (= (and d!84930 c!54327) b!286872))

(assert (= (and d!84930 (not c!54327)) b!286875))

(assert (= (and b!286875 c!54328) b!286873))

(assert (= (and b!286875 (not c!54328)) b!286874))

(assert (= (and b!286874 (not res!131066)) b!286876))

(declare-fun m!371325 () Bool)

(assert (=> b!286873 m!371325))

(declare-fun m!371327 () Bool)

(assert (=> b!286872 m!371327))

(declare-fun m!371329 () Bool)

(assert (=> b!286876 m!371329))

(assert (=> b!286516 d!84930))

(declare-fun d!84934 () Bool)

(assert (=> d!84934 (= (list!1639 (seqFromList!872 lt!120506)) (list!1642 (c!54238 (seqFromList!872 lt!120506))))))

(declare-fun bs!32357 () Bool)

(assert (= bs!32357 d!84934))

(declare-fun m!371331 () Bool)

(assert (=> bs!32357 m!371331))

(assert (=> b!286506 d!84934))

(declare-fun d!84936 () Bool)

(declare-fun fromListB!355 (List!3942) BalanceConc!2664)

(assert (=> d!84936 (= (seqFromList!872 lt!120506) (fromListB!355 lt!120506))))

(declare-fun bs!32358 () Bool)

(assert (= bs!32358 d!84936))

(declare-fun m!371333 () Bool)

(assert (=> bs!32358 m!371333))

(assert (=> b!286506 d!84936))

(declare-fun lt!120744 () Bool)

(declare-fun d!84938 () Bool)

(declare-fun isEmpty!2605 (List!3945) Bool)

(assert (=> d!84938 (= lt!120744 (isEmpty!2605 (list!1643 (_1!2447 (lex!431 thiss!17480 rules!1920 (seqFromList!872 lt!120504))))))))

(declare-fun isEmpty!2606 (Conc!1329) Bool)

(assert (=> d!84938 (= lt!120744 (isEmpty!2606 (c!54240 (_1!2447 (lex!431 thiss!17480 rules!1920 (seqFromList!872 lt!120504))))))))

(assert (=> d!84938 (= (isEmpty!2598 (_1!2447 (lex!431 thiss!17480 rules!1920 (seqFromList!872 lt!120504)))) lt!120744)))

(declare-fun bs!32359 () Bool)

(assert (= bs!32359 d!84938))

(declare-fun m!371335 () Bool)

(assert (=> bs!32359 m!371335))

(assert (=> bs!32359 m!371335))

(declare-fun m!371337 () Bool)

(assert (=> bs!32359 m!371337))

(declare-fun m!371339 () Bool)

(assert (=> bs!32359 m!371339))

(assert (=> b!286507 d!84938))

(declare-fun lt!120752 () tuple2!4462)

(declare-fun e!178559 () Bool)

(declare-fun b!286911 () Bool)

(declare-datatypes ((tuple2!4474 0))(
  ( (tuple2!4475 (_1!2453 List!3945) (_2!2453 List!3942)) )
))
(declare-fun lexList!225 (LexerInterface!639 List!3944 List!3942) tuple2!4474)

(assert (=> b!286911 (= e!178559 (= (list!1639 (_2!2447 lt!120752)) (_2!2453 (lexList!225 thiss!17480 rules!1920 (list!1639 (seqFromList!872 lt!120504))))))))

(declare-fun d!84940 () Bool)

(assert (=> d!84940 e!178559))

(declare-fun res!131087 () Bool)

(assert (=> d!84940 (=> (not res!131087) (not e!178559))))

(declare-fun e!178561 () Bool)

(assert (=> d!84940 (= res!131087 e!178561)))

(declare-fun c!54336 () Bool)

(assert (=> d!84940 (= c!54336 (> (size!3152 (_1!2447 lt!120752)) 0))))

(declare-fun lexTailRecV2!192 (LexerInterface!639 List!3944 BalanceConc!2664 BalanceConc!2664 BalanceConc!2664 BalanceConc!2666) tuple2!4462)

(assert (=> d!84940 (= lt!120752 (lexTailRecV2!192 thiss!17480 rules!1920 (seqFromList!872 lt!120504) (BalanceConc!2665 Empty!1328) (seqFromList!872 lt!120504) (BalanceConc!2667 Empty!1329)))))

(assert (=> d!84940 (= (lex!431 thiss!17480 rules!1920 (seqFromList!872 lt!120504)) lt!120752)))

(declare-fun b!286912 () Bool)

(assert (=> b!286912 (= e!178561 (= (_2!2447 lt!120752) (seqFromList!872 lt!120504)))))

(declare-fun b!286913 () Bool)

(declare-fun e!178560 () Bool)

(assert (=> b!286913 (= e!178561 e!178560)))

(declare-fun res!131089 () Bool)

(declare-fun size!3155 (BalanceConc!2664) Int)

(assert (=> b!286913 (= res!131089 (< (size!3155 (_2!2447 lt!120752)) (size!3155 (seqFromList!872 lt!120504))))))

(assert (=> b!286913 (=> (not res!131089) (not e!178560))))

(declare-fun b!286914 () Bool)

(declare-fun res!131088 () Bool)

(assert (=> b!286914 (=> (not res!131088) (not e!178559))))

(assert (=> b!286914 (= res!131088 (= (list!1643 (_1!2447 lt!120752)) (_1!2453 (lexList!225 thiss!17480 rules!1920 (list!1639 (seqFromList!872 lt!120504))))))))

(declare-fun b!286915 () Bool)

(assert (=> b!286915 (= e!178560 (not (isEmpty!2598 (_1!2447 lt!120752))))))

(assert (= (and d!84940 c!54336) b!286913))

(assert (= (and d!84940 (not c!54336)) b!286912))

(assert (= (and b!286913 res!131089) b!286915))

(assert (= (and d!84940 res!131087) b!286914))

(assert (= (and b!286914 res!131088) b!286911))

(declare-fun m!371389 () Bool)

(assert (=> b!286913 m!371389))

(assert (=> b!286913 m!370707))

(declare-fun m!371391 () Bool)

(assert (=> b!286913 m!371391))

(declare-fun m!371393 () Bool)

(assert (=> b!286914 m!371393))

(assert (=> b!286914 m!370707))

(declare-fun m!371395 () Bool)

(assert (=> b!286914 m!371395))

(assert (=> b!286914 m!371395))

(declare-fun m!371397 () Bool)

(assert (=> b!286914 m!371397))

(declare-fun m!371399 () Bool)

(assert (=> b!286911 m!371399))

(assert (=> b!286911 m!370707))

(assert (=> b!286911 m!371395))

(assert (=> b!286911 m!371395))

(assert (=> b!286911 m!371397))

(declare-fun m!371401 () Bool)

(assert (=> d!84940 m!371401))

(assert (=> d!84940 m!370707))

(assert (=> d!84940 m!370707))

(declare-fun m!371403 () Bool)

(assert (=> d!84940 m!371403))

(declare-fun m!371405 () Bool)

(assert (=> b!286915 m!371405))

(assert (=> b!286507 d!84940))

(declare-fun d!84958 () Bool)

(assert (=> d!84958 (= (seqFromList!872 lt!120504) (fromListB!355 lt!120504))))

(declare-fun bs!32368 () Bool)

(assert (= bs!32368 d!84958))

(declare-fun m!371407 () Bool)

(assert (=> bs!32368 m!371407))

(assert (=> b!286507 d!84958))

(declare-fun bs!32386 () Bool)

(declare-fun d!84960 () Bool)

(assert (= bs!32386 (and d!84960 d!84892)))

(declare-fun lambda!9832 () Int)

(assert (=> bs!32386 (not (= lambda!9832 lambda!9822))))

(declare-fun bs!32387 () Bool)

(assert (= bs!32387 (and d!84960 b!286592)))

(assert (=> bs!32387 (= lambda!9832 lambda!9809)))

(declare-fun bs!32388 () Bool)

(assert (= bs!32388 (and d!84960 b!286808)))

(assert (=> bs!32388 (= lambda!9832 lambda!9823)))

(declare-fun bs!32389 () Bool)

(assert (= bs!32389 (and d!84960 d!84826)))

(assert (=> bs!32389 (not (= lambda!9832 lambda!9808))))

(declare-fun bs!32390 () Bool)

(assert (= bs!32390 (and d!84960 b!286657)))

(assert (=> bs!32390 (= lambda!9832 lambda!9818)))

(declare-fun bs!32391 () Bool)

(assert (= bs!32391 (and d!84960 b!286845)))

(assert (=> bs!32391 (= lambda!9832 lambda!9824)))

(declare-fun bs!32392 () Bool)

(assert (= bs!32392 (and d!84960 b!286508)))

(assert (=> bs!32392 (not (= lambda!9832 lambda!9798))))

(declare-fun b!287007 () Bool)

(declare-fun e!178627 () Bool)

(assert (=> b!287007 (= e!178627 true)))

(declare-fun b!287006 () Bool)

(declare-fun e!178626 () Bool)

(assert (=> b!287006 (= e!178626 e!178627)))

(declare-fun b!287005 () Bool)

(declare-fun e!178625 () Bool)

(assert (=> b!287005 (= e!178625 e!178626)))

(assert (=> d!84960 e!178625))

(assert (= b!287006 b!287007))

(assert (= b!287005 b!287006))

(assert (= (and d!84960 ((_ is Cons!3934) rules!1920)) b!287005))

(assert (=> b!287007 (< (dynLambda!2080 order!3101 (toValue!1500 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9832))))

(assert (=> b!287007 (< (dynLambda!2082 order!3105 (toChars!1359 (transformation!753 (h!9331 rules!1920)))) (dynLambda!2081 order!3103 lambda!9832))))

(assert (=> d!84960 true))

(declare-fun e!178624 () Bool)

(assert (=> d!84960 e!178624))

(declare-fun res!131099 () Bool)

(assert (=> d!84960 (=> (not res!131099) (not e!178624))))

(declare-fun lt!120784 () Bool)

(assert (=> d!84960 (= res!131099 (= lt!120784 (forall!1012 (list!1643 lt!120500) lambda!9832)))))

(declare-fun forall!1014 (BalanceConc!2666 Int) Bool)

(assert (=> d!84960 (= lt!120784 (forall!1014 lt!120500 lambda!9832))))

(assert (=> d!84960 (not (isEmpty!2597 rules!1920))))

(assert (=> d!84960 (= (rulesProduceEachTokenIndividually!431 thiss!17480 rules!1920 lt!120500) lt!120784)))

(declare-fun b!287004 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!247 (LexerInterface!639 List!3944 List!3945) Bool)

(assert (=> b!287004 (= e!178624 (= lt!120784 (rulesProduceEachTokenIndividuallyList!247 thiss!17480 rules!1920 (list!1643 lt!120500))))))

(assert (= (and d!84960 res!131099) b!287004))

(assert (=> d!84960 m!370821))

(assert (=> d!84960 m!370821))

(declare-fun m!371537 () Bool)

(assert (=> d!84960 m!371537))

(declare-fun m!371539 () Bool)

(assert (=> d!84960 m!371539))

(assert (=> d!84960 m!370703))

(assert (=> b!287004 m!370821))

(assert (=> b!287004 m!370821))

(declare-fun m!371541 () Bool)

(assert (=> b!287004 m!371541))

(assert (=> b!286496 d!84960))

(declare-fun d!84980 () Bool)

(assert (=> d!84980 (= (seqFromList!871 tokens!465) (fromListB!354 tokens!465))))

(declare-fun bs!32393 () Bool)

(assert (= bs!32393 d!84980))

(declare-fun m!371543 () Bool)

(assert (=> bs!32393 m!371543))

(assert (=> b!286496 d!84980))

(declare-fun b!287009 () Bool)

(declare-fun e!178628 () Bool)

(assert (=> b!287009 (= e!178628 (inv!17 (value!25776 separatorToken!170)))))

(declare-fun b!287010 () Bool)

(declare-fun res!131100 () Bool)

(declare-fun e!178630 () Bool)

(assert (=> b!287010 (=> res!131100 e!178630)))

(assert (=> b!287010 (= res!131100 (not ((_ is IntegerValue!2327) (value!25776 separatorToken!170))))))

(assert (=> b!287010 (= e!178628 e!178630)))

(declare-fun b!287008 () Bool)

(declare-fun e!178629 () Bool)

(assert (=> b!287008 (= e!178629 (inv!16 (value!25776 separatorToken!170)))))

(declare-fun d!84982 () Bool)

(declare-fun c!54347 () Bool)

(assert (=> d!84982 (= c!54347 ((_ is IntegerValue!2325) (value!25776 separatorToken!170)))))

(assert (=> d!84982 (= (inv!21 (value!25776 separatorToken!170)) e!178629)))

(declare-fun b!287011 () Bool)

(assert (=> b!287011 (= e!178629 e!178628)))

(declare-fun c!54348 () Bool)

(assert (=> b!287011 (= c!54348 ((_ is IntegerValue!2326) (value!25776 separatorToken!170)))))

(declare-fun b!287012 () Bool)

(assert (=> b!287012 (= e!178630 (inv!15 (value!25776 separatorToken!170)))))

(assert (= (and d!84982 c!54347) b!287008))

(assert (= (and d!84982 (not c!54347)) b!287011))

(assert (= (and b!287011 c!54348) b!287009))

(assert (= (and b!287011 (not c!54348)) b!287010))

(assert (= (and b!287010 (not res!131100)) b!287012))

(declare-fun m!371545 () Bool)

(assert (=> b!287009 m!371545))

(declare-fun m!371547 () Bool)

(assert (=> b!287008 m!371547))

(declare-fun m!371549 () Bool)

(assert (=> b!287012 m!371549))

(assert (=> b!286497 d!84982))

(declare-fun d!84984 () Bool)

(assert (=> d!84984 (= (inv!4860 (tag!969 (rule!1352 (h!9332 tokens!465)))) (= (mod (str.len (value!25775 (tag!969 (rule!1352 (h!9332 tokens!465))))) 2) 0))))

(assert (=> b!286518 d!84984))

(declare-fun d!84986 () Bool)

(declare-fun res!131101 () Bool)

(declare-fun e!178631 () Bool)

(assert (=> d!84986 (=> (not res!131101) (not e!178631))))

(assert (=> d!84986 (= res!131101 (semiInverseModEq!277 (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (toValue!1500 (transformation!753 (rule!1352 (h!9332 tokens!465))))))))

(assert (=> d!84986 (= (inv!4864 (transformation!753 (rule!1352 (h!9332 tokens!465)))) e!178631)))

(declare-fun b!287013 () Bool)

(assert (=> b!287013 (= e!178631 (equivClasses!260 (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (toValue!1500 (transformation!753 (rule!1352 (h!9332 tokens!465))))))))

(assert (= (and d!84986 res!131101) b!287013))

(declare-fun m!371551 () Bool)

(assert (=> d!84986 m!371551))

(declare-fun m!371553 () Bool)

(assert (=> b!287013 m!371553))

(assert (=> b!286518 d!84986))

(declare-fun d!84988 () Bool)

(declare-fun res!131102 () Bool)

(declare-fun e!178632 () Bool)

(assert (=> d!84988 (=> (not res!131102) (not e!178632))))

(assert (=> d!84988 (= res!131102 (not (isEmpty!2604 (originalCharacters!796 separatorToken!170))))))

(assert (=> d!84988 (= (inv!4863 separatorToken!170) e!178632)))

(declare-fun b!287014 () Bool)

(declare-fun res!131103 () Bool)

(assert (=> b!287014 (=> (not res!131103) (not e!178632))))

(assert (=> b!287014 (= res!131103 (= (originalCharacters!796 separatorToken!170) (list!1639 (dynLambda!2084 (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (value!25776 separatorToken!170)))))))

(declare-fun b!287015 () Bool)

(assert (=> b!287015 (= e!178632 (= (size!3149 separatorToken!170) (size!3153 (originalCharacters!796 separatorToken!170))))))

(assert (= (and d!84988 res!131102) b!287014))

(assert (= (and b!287014 res!131103) b!287015))

(declare-fun b_lambda!9497 () Bool)

(assert (=> (not b_lambda!9497) (not b!287014)))

(assert (=> b!287014 t!40145))

(declare-fun b_and!23159 () Bool)

(assert (= b_and!23133 (and (=> t!40145 result!20402) b_and!23159)))

(assert (=> b!287014 t!40147))

(declare-fun b_and!23161 () Bool)

(assert (= b_and!23135 (and (=> t!40147 result!20404) b_and!23161)))

(assert (=> b!287014 t!40149))

(declare-fun b_and!23163 () Bool)

(assert (= b_and!23137 (and (=> t!40149 result!20406) b_and!23163)))

(declare-fun m!371555 () Bool)

(assert (=> d!84988 m!371555))

(assert (=> b!287014 m!371229))

(assert (=> b!287014 m!371229))

(declare-fun m!371557 () Bool)

(assert (=> b!287014 m!371557))

(declare-fun m!371559 () Bool)

(assert (=> b!287015 m!371559))

(assert (=> start!31090 d!84988))

(declare-fun d!84990 () Bool)

(declare-fun res!131108 () Bool)

(declare-fun e!178637 () Bool)

(assert (=> d!84990 (=> res!131108 e!178637)))

(assert (=> d!84990 (= res!131108 ((_ is Nil!3935) tokens!465))))

(assert (=> d!84990 (= (forall!1012 tokens!465 lambda!9798) e!178637)))

(declare-fun b!287020 () Bool)

(declare-fun e!178638 () Bool)

(assert (=> b!287020 (= e!178637 e!178638)))

(declare-fun res!131109 () Bool)

(assert (=> b!287020 (=> (not res!131109) (not e!178638))))

(declare-fun dynLambda!2085 (Int Token!1250) Bool)

(assert (=> b!287020 (= res!131109 (dynLambda!2085 lambda!9798 (h!9332 tokens!465)))))

(declare-fun b!287021 () Bool)

(assert (=> b!287021 (= e!178638 (forall!1012 (t!40105 tokens!465) lambda!9798))))

(assert (= (and d!84990 (not res!131108)) b!287020))

(assert (= (and b!287020 res!131109) b!287021))

(declare-fun b_lambda!9499 () Bool)

(assert (=> (not b_lambda!9499) (not b!287020)))

(declare-fun m!371561 () Bool)

(assert (=> b!287020 m!371561))

(declare-fun m!371563 () Bool)

(assert (=> b!287021 m!371563))

(assert (=> b!286508 d!84990))

(declare-fun d!84992 () Bool)

(assert (=> d!84992 (= (inv!4860 (tag!969 (h!9331 rules!1920))) (= (mod (str.len (value!25775 (tag!969 (h!9331 rules!1920)))) 2) 0))))

(assert (=> b!286509 d!84992))

(declare-fun d!84994 () Bool)

(declare-fun res!131110 () Bool)

(declare-fun e!178639 () Bool)

(assert (=> d!84994 (=> (not res!131110) (not e!178639))))

(assert (=> d!84994 (= res!131110 (semiInverseModEq!277 (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toValue!1500 (transformation!753 (h!9331 rules!1920)))))))

(assert (=> d!84994 (= (inv!4864 (transformation!753 (h!9331 rules!1920))) e!178639)))

(declare-fun b!287022 () Bool)

(assert (=> b!287022 (= e!178639 (equivClasses!260 (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toValue!1500 (transformation!753 (h!9331 rules!1920)))))))

(assert (= (and d!84994 res!131110) b!287022))

(declare-fun m!371565 () Bool)

(assert (=> d!84994 m!371565))

(declare-fun m!371567 () Bool)

(assert (=> b!287022 m!371567))

(assert (=> b!286509 d!84994))

(declare-fun d!84996 () Bool)

(declare-fun lt!120785 () Bool)

(declare-fun e!178640 () Bool)

(assert (=> d!84996 (= lt!120785 e!178640)))

(declare-fun res!131112 () Bool)

(assert (=> d!84996 (=> (not res!131112) (not e!178640))))

(assert (=> d!84996 (= res!131112 (= (list!1643 (_1!2447 (lex!431 thiss!17480 rules!1920 (print!364 thiss!17480 (singletonSeq!299 (h!9332 tokens!465)))))) (list!1643 (singletonSeq!299 (h!9332 tokens!465)))))))

(declare-fun e!178641 () Bool)

(assert (=> d!84996 (= lt!120785 e!178641)))

(declare-fun res!131113 () Bool)

(assert (=> d!84996 (=> (not res!131113) (not e!178641))))

(declare-fun lt!120786 () tuple2!4462)

(assert (=> d!84996 (= res!131113 (= (size!3152 (_1!2447 lt!120786)) 1))))

(assert (=> d!84996 (= lt!120786 (lex!431 thiss!17480 rules!1920 (print!364 thiss!17480 (singletonSeq!299 (h!9332 tokens!465)))))))

(assert (=> d!84996 (not (isEmpty!2597 rules!1920))))

(assert (=> d!84996 (= (rulesProduceIndividualToken!388 thiss!17480 rules!1920 (h!9332 tokens!465)) lt!120785)))

(declare-fun b!287023 () Bool)

(declare-fun res!131111 () Bool)

(assert (=> b!287023 (=> (not res!131111) (not e!178641))))

(assert (=> b!287023 (= res!131111 (= (apply!837 (_1!2447 lt!120786) 0) (h!9332 tokens!465)))))

(declare-fun b!287024 () Bool)

(assert (=> b!287024 (= e!178641 (isEmpty!2601 (_2!2447 lt!120786)))))

(declare-fun b!287025 () Bool)

(assert (=> b!287025 (= e!178640 (isEmpty!2601 (_2!2447 (lex!431 thiss!17480 rules!1920 (print!364 thiss!17480 (singletonSeq!299 (h!9332 tokens!465)))))))))

(assert (= (and d!84996 res!131113) b!287023))

(assert (= (and b!287023 res!131111) b!287024))

(assert (= (and d!84996 res!131112) b!287025))

(assert (=> d!84996 m!370933))

(declare-fun m!371569 () Bool)

(assert (=> d!84996 m!371569))

(declare-fun m!371571 () Bool)

(assert (=> d!84996 m!371571))

(assert (=> d!84996 m!370703))

(assert (=> d!84996 m!370725))

(declare-fun m!371573 () Bool)

(assert (=> d!84996 m!371573))

(declare-fun m!371575 () Bool)

(assert (=> d!84996 m!371575))

(assert (=> d!84996 m!370725))

(assert (=> d!84996 m!370933))

(assert (=> d!84996 m!370725))

(declare-fun m!371577 () Bool)

(assert (=> b!287023 m!371577))

(declare-fun m!371579 () Bool)

(assert (=> b!287024 m!371579))

(assert (=> b!287025 m!370725))

(assert (=> b!287025 m!370725))

(assert (=> b!287025 m!370933))

(assert (=> b!287025 m!370933))

(assert (=> b!287025 m!371569))

(declare-fun m!371581 () Bool)

(assert (=> b!287025 m!371581))

(assert (=> b!286498 d!84996))

(declare-fun b!287038 () Bool)

(declare-fun e!178644 () Bool)

(declare-fun tp!105232 () Bool)

(assert (=> b!287038 (= e!178644 tp!105232)))

(assert (=> b!286510 (= tp!105141 e!178644)))

(declare-fun b!287037 () Bool)

(declare-fun tp!105231 () Bool)

(declare-fun tp!105230 () Bool)

(assert (=> b!287037 (= e!178644 (and tp!105231 tp!105230))))

(declare-fun b!287039 () Bool)

(declare-fun tp!105229 () Bool)

(declare-fun tp!105228 () Bool)

(assert (=> b!287039 (= e!178644 (and tp!105229 tp!105228))))

(declare-fun b!287036 () Bool)

(declare-fun tp_is_empty!1851 () Bool)

(assert (=> b!287036 (= e!178644 tp_is_empty!1851)))

(assert (= (and b!286510 ((_ is ElementMatch!977) (regex!753 (rule!1352 separatorToken!170)))) b!287036))

(assert (= (and b!286510 ((_ is Concat!1753) (regex!753 (rule!1352 separatorToken!170)))) b!287037))

(assert (= (and b!286510 ((_ is Star!977) (regex!753 (rule!1352 separatorToken!170)))) b!287038))

(assert (= (and b!286510 ((_ is Union!977) (regex!753 (rule!1352 separatorToken!170)))) b!287039))

(declare-fun b!287050 () Bool)

(declare-fun b_free!10509 () Bool)

(declare-fun b_next!10509 () Bool)

(assert (=> b!287050 (= b_free!10509 (not b_next!10509))))

(declare-fun tp!105241 () Bool)

(declare-fun b_and!23165 () Bool)

(assert (=> b!287050 (= tp!105241 b_and!23165)))

(declare-fun b_free!10511 () Bool)

(declare-fun b_next!10511 () Bool)

(assert (=> b!287050 (= b_free!10511 (not b_next!10511))))

(declare-fun t!40163 () Bool)

(declare-fun tb!16613 () Bool)

(assert (=> (and b!287050 (= (toChars!1359 (transformation!753 (h!9331 (t!40104 rules!1920)))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465))))) t!40163) tb!16613))

(declare-fun result!20428 () Bool)

(assert (= result!20428 result!20394))

(assert (=> b!286794 t!40163))

(declare-fun t!40165 () Bool)

(declare-fun tb!16615 () Bool)

(assert (=> (and b!287050 (= (toChars!1359 (transformation!753 (h!9331 (t!40104 rules!1920)))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170)))) t!40165) tb!16615))

(declare-fun result!20430 () Bool)

(assert (= result!20430 result!20402))

(assert (=> d!84896 t!40165))

(assert (=> d!84906 t!40163))

(assert (=> b!287014 t!40165))

(declare-fun b_and!23167 () Bool)

(declare-fun tp!105243 () Bool)

(assert (=> b!287050 (= tp!105243 (and (=> t!40163 result!20428) (=> t!40165 result!20430) b_and!23167))))

(declare-fun e!178654 () Bool)

(assert (=> b!287050 (= e!178654 (and tp!105241 tp!105243))))

(declare-fun b!287049 () Bool)

(declare-fun e!178655 () Bool)

(declare-fun tp!105244 () Bool)

(assert (=> b!287049 (= e!178655 (and tp!105244 (inv!4860 (tag!969 (h!9331 (t!40104 rules!1920)))) (inv!4864 (transformation!753 (h!9331 (t!40104 rules!1920)))) e!178654))))

(declare-fun b!287048 () Bool)

(declare-fun e!178656 () Bool)

(declare-fun tp!105242 () Bool)

(assert (=> b!287048 (= e!178656 (and e!178655 tp!105242))))

(assert (=> b!286503 (= tp!105143 e!178656)))

(assert (= b!287049 b!287050))

(assert (= b!287048 b!287049))

(assert (= (and b!286503 ((_ is Cons!3934) (t!40104 rules!1920))) b!287048))

(declare-fun m!371583 () Bool)

(assert (=> b!287049 m!371583))

(declare-fun m!371585 () Bool)

(assert (=> b!287049 m!371585))

(declare-fun b!287064 () Bool)

(declare-fun b_free!10513 () Bool)

(declare-fun b_next!10513 () Bool)

(assert (=> b!287064 (= b_free!10513 (not b_next!10513))))

(declare-fun tp!105256 () Bool)

(declare-fun b_and!23169 () Bool)

(assert (=> b!287064 (= tp!105256 b_and!23169)))

(declare-fun b_free!10515 () Bool)

(declare-fun b_next!10515 () Bool)

(assert (=> b!287064 (= b_free!10515 (not b_next!10515))))

(declare-fun t!40167 () Bool)

(declare-fun tb!16617 () Bool)

(assert (=> (and b!287064 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 (t!40105 tokens!465))))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465))))) t!40167) tb!16617))

(declare-fun result!20434 () Bool)

(assert (= result!20434 result!20394))

(assert (=> b!286794 t!40167))

(declare-fun tb!16619 () Bool)

(declare-fun t!40169 () Bool)

(assert (=> (and b!287064 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 (t!40105 tokens!465))))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170)))) t!40169) tb!16619))

(declare-fun result!20436 () Bool)

(assert (= result!20436 result!20402))

(assert (=> d!84896 t!40169))

(assert (=> d!84906 t!40167))

(assert (=> b!287014 t!40169))

(declare-fun b_and!23171 () Bool)

(declare-fun tp!105255 () Bool)

(assert (=> b!287064 (= tp!105255 (and (=> t!40167 result!20434) (=> t!40169 result!20436) b_and!23171))))

(declare-fun b!287062 () Bool)

(declare-fun e!178671 () Bool)

(declare-fun tp!105257 () Bool)

(declare-fun e!178670 () Bool)

(assert (=> b!287062 (= e!178670 (and (inv!21 (value!25776 (h!9332 (t!40105 tokens!465)))) e!178671 tp!105257))))

(declare-fun e!178669 () Bool)

(declare-fun tp!105258 () Bool)

(declare-fun b!287063 () Bool)

(assert (=> b!287063 (= e!178671 (and tp!105258 (inv!4860 (tag!969 (rule!1352 (h!9332 (t!40105 tokens!465))))) (inv!4864 (transformation!753 (rule!1352 (h!9332 (t!40105 tokens!465))))) e!178669))))

(assert (=> b!287064 (= e!178669 (and tp!105256 tp!105255))))

(declare-fun b!287061 () Bool)

(declare-fun tp!105259 () Bool)

(declare-fun e!178673 () Bool)

(assert (=> b!287061 (= e!178673 (and (inv!4863 (h!9332 (t!40105 tokens!465))) e!178670 tp!105259))))

(assert (=> b!286505 (= tp!105153 e!178673)))

(assert (= b!287063 b!287064))

(assert (= b!287062 b!287063))

(assert (= b!287061 b!287062))

(assert (= (and b!286505 ((_ is Cons!3935) (t!40105 tokens!465))) b!287061))

(declare-fun m!371587 () Bool)

(assert (=> b!287062 m!371587))

(declare-fun m!371589 () Bool)

(assert (=> b!287063 m!371589))

(declare-fun m!371591 () Bool)

(assert (=> b!287063 m!371591))

(declare-fun m!371593 () Bool)

(assert (=> b!287061 m!371593))

(declare-fun b!287069 () Bool)

(declare-fun e!178677 () Bool)

(declare-fun tp!105262 () Bool)

(assert (=> b!287069 (= e!178677 (and tp_is_empty!1851 tp!105262))))

(assert (=> b!286516 (= tp!105146 e!178677)))

(assert (= (and b!286516 ((_ is Cons!3932) (originalCharacters!796 (h!9332 tokens!465)))) b!287069))

(declare-fun b!287070 () Bool)

(declare-fun e!178678 () Bool)

(declare-fun tp!105263 () Bool)

(assert (=> b!287070 (= e!178678 (and tp_is_empty!1851 tp!105263))))

(assert (=> b!286497 (= tp!105149 e!178678)))

(assert (= (and b!286497 ((_ is Cons!3932) (originalCharacters!796 separatorToken!170))) b!287070))

(declare-fun b!287073 () Bool)

(declare-fun e!178679 () Bool)

(declare-fun tp!105268 () Bool)

(assert (=> b!287073 (= e!178679 tp!105268)))

(assert (=> b!286518 (= tp!105144 e!178679)))

(declare-fun b!287072 () Bool)

(declare-fun tp!105267 () Bool)

(declare-fun tp!105266 () Bool)

(assert (=> b!287072 (= e!178679 (and tp!105267 tp!105266))))

(declare-fun b!287074 () Bool)

(declare-fun tp!105265 () Bool)

(declare-fun tp!105264 () Bool)

(assert (=> b!287074 (= e!178679 (and tp!105265 tp!105264))))

(declare-fun b!287071 () Bool)

(assert (=> b!287071 (= e!178679 tp_is_empty!1851)))

(assert (= (and b!286518 ((_ is ElementMatch!977) (regex!753 (rule!1352 (h!9332 tokens!465))))) b!287071))

(assert (= (and b!286518 ((_ is Concat!1753) (regex!753 (rule!1352 (h!9332 tokens!465))))) b!287072))

(assert (= (and b!286518 ((_ is Star!977) (regex!753 (rule!1352 (h!9332 tokens!465))))) b!287073))

(assert (= (and b!286518 ((_ is Union!977) (regex!753 (rule!1352 (h!9332 tokens!465))))) b!287074))

(declare-fun b!287077 () Bool)

(declare-fun e!178680 () Bool)

(declare-fun tp!105273 () Bool)

(assert (=> b!287077 (= e!178680 tp!105273)))

(assert (=> b!286509 (= tp!105147 e!178680)))

(declare-fun b!287076 () Bool)

(declare-fun tp!105272 () Bool)

(declare-fun tp!105271 () Bool)

(assert (=> b!287076 (= e!178680 (and tp!105272 tp!105271))))

(declare-fun b!287078 () Bool)

(declare-fun tp!105270 () Bool)

(declare-fun tp!105269 () Bool)

(assert (=> b!287078 (= e!178680 (and tp!105270 tp!105269))))

(declare-fun b!287075 () Bool)

(assert (=> b!287075 (= e!178680 tp_is_empty!1851)))

(assert (= (and b!286509 ((_ is ElementMatch!977) (regex!753 (h!9331 rules!1920)))) b!287075))

(assert (= (and b!286509 ((_ is Concat!1753) (regex!753 (h!9331 rules!1920)))) b!287076))

(assert (= (and b!286509 ((_ is Star!977) (regex!753 (h!9331 rules!1920)))) b!287077))

(assert (= (and b!286509 ((_ is Union!977) (regex!753 (h!9331 rules!1920)))) b!287078))

(declare-fun b_lambda!9501 () Bool)

(assert (= b_lambda!9479 (or (and b!287050 b_free!10511 (= (toChars!1359 (transformation!753 (h!9331 (t!40104 rules!1920)))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) (and b!286500 b_free!10499 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) (and b!286494 b_free!10495 (= (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) (and b!286517 b_free!10491) (and b!287064 b_free!10515 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 (t!40105 tokens!465))))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) b_lambda!9501)))

(declare-fun b_lambda!9503 () Bool)

(assert (= b_lambda!9499 (or b!286508 b_lambda!9503)))

(declare-fun bs!32394 () Bool)

(declare-fun d!84998 () Bool)

(assert (= bs!32394 (and d!84998 b!286508)))

(assert (=> bs!32394 (= (dynLambda!2085 lambda!9798 (h!9332 tokens!465)) (not (isSeparator!753 (rule!1352 (h!9332 tokens!465)))))))

(assert (=> b!287020 d!84998))

(declare-fun b_lambda!9505 () Bool)

(assert (= b_lambda!9477 (or (and b!287050 b_free!10511 (= (toChars!1359 (transformation!753 (h!9331 (t!40104 rules!1920)))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) (and b!286500 b_free!10499) (and b!287064 b_free!10515 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 (t!40105 tokens!465))))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) (and b!286494 b_free!10495 (= (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) (and b!286517 b_free!10491 (= (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) b_lambda!9505)))

(declare-fun b_lambda!9507 () Bool)

(assert (= b_lambda!9481 (or (and b!287050 b_free!10511 (= (toChars!1359 (transformation!753 (h!9331 (t!40104 rules!1920)))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) (and b!286500 b_free!10499) (and b!287064 b_free!10515 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 (t!40105 tokens!465))))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) (and b!286494 b_free!10495 (= (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) (and b!286517 b_free!10491 (= (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))) (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))))) b_lambda!9507)))

(declare-fun b_lambda!9509 () Bool)

(assert (= b_lambda!9497 (or (and b!287050 b_free!10511 (= (toChars!1359 (transformation!753 (h!9331 (t!40104 rules!1920)))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) (and b!286500 b_free!10499 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 tokens!465)))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) (and b!286494 b_free!10495 (= (toChars!1359 (transformation!753 (h!9331 rules!1920))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) (and b!286517 b_free!10491) (and b!287064 b_free!10515 (= (toChars!1359 (transformation!753 (rule!1352 (h!9332 (t!40105 tokens!465))))) (toChars!1359 (transformation!753 (rule!1352 separatorToken!170))))) b_lambda!9509)))

(check-sat (not b!286769) (not b!286795) (not b!286858) (not b!287015) (not d!84852) (not b!287008) (not bm!16182) (not d!84884) (not d!84912) (not b!286589) (not d!84872) (not d!84938) (not d!84934) (not b!287062) (not bm!16128) (not b!287009) (not b_next!10491) (not d!84904) (not b_next!10495) (not d!84858) (not b!286805) (not tb!16599) (not b!286803) (not tb!16593) (not b!287039) b_and!23163 (not bm!16159) (not d!84958) (not b!287063) (not b!287038) (not b!287022) (not bm!16178) (not b!287072) (not b!287021) (not b!286663) (not b!286843) (not b!287037) (not b!286659) (not bm!16183) (not d!84910) (not b!286715) (not b!286847) (not bm!16157) (not b!286911) (not bm!16156) (not b_next!10497) (not b!286876) b_and!23169 (not b!286800) (not b!286771) (not b!287005) (not b!287074) (not d!84890) (not bm!16180) b_and!23167 (not b!287049) (not b!286824) (not bm!16126) b_and!23101 (not d!84856) (not b_next!10509) (not b!286836) b_and!23165 (not b!286677) (not d!84822) (not b!286678) (not d!84906) (not b!286658) (not b!286807) (not b!286913) (not b_next!10515) (not b_lambda!9507) (not b!286521) (not b!286665) (not d!84960) (not d!84908) (not b!286854) (not b!287078) (not bm!16130) (not b!287014) b_and!23171 (not b!286914) (not b!286833) (not b!287048) (not b!287070) (not d!84986) (not b!287024) (not b!286832) (not b!287012) (not d!84936) (not d!84980) (not b_next!10489) (not b!287004) (not bm!16181) (not bm!16158) (not b_lambda!9505) (not bm!16179) (not b!286837) (not b!286915) b_and!23097 (not b!287061) (not b!287023) (not d!84848) (not b!286845) (not d!84996) (not d!84900) (not b!286688) (not b!286657) (not d!84896) (not b!286808) (not b!287025) (not b!286591) (not d!84826) (not b!286606) b_and!23161 (not b!287069) (not b!286595) (not b!286717) (not b!286592) (not b!286685) (not b!286814) (not bm!16184) (not b!286780) (not d!84940) (not b_next!10513) (not bm!16176) b_and!23159 (not b!286802) (not b!286846) (not b_lambda!9503) (not b!286806) b_and!23105 (not d!84892) (not b!286684) (not d!84876) (not b!286873) (not b_lambda!9501) (not b_lambda!9509) (not b!287073) (not bm!16129) (not d!84886) (not b!286811) (not b_next!10499) (not b!287077) (not b_next!10493) (not b!286842) (not d!84880) (not b!286788) (not b!286872) (not d!84994) (not b!287013) (not b_next!10511) (not d!84874) (not d!84888) (not b!287076) (not b!286794) (not b!286590) (not b!286716) tp_is_empty!1851 (not d!84818) (not d!84988))
(check-sat b_and!23163 b_and!23167 (not b_next!10515) b_and!23171 (not b_next!10489) b_and!23097 b_and!23161 b_and!23105 (not b_next!10499) (not b_next!10493) (not b_next!10511) (not b_next!10491) (not b_next!10495) (not b_next!10497) b_and!23169 b_and!23101 (not b_next!10509) b_and!23165 (not b_next!10513) b_and!23159)
