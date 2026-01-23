; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299642 () Bool)

(assert start!299642)

(declare-fun b!3193922 () Bool)

(declare-fun b_free!84721 () Bool)

(declare-fun b_next!85425 () Bool)

(assert (=> b!3193922 (= b_free!84721 (not b_next!85425))))

(declare-fun tp!1010024 () Bool)

(declare-fun b_and!211863 () Bool)

(assert (=> b!3193922 (= tp!1010024 b_and!211863)))

(declare-fun b_free!84723 () Bool)

(declare-fun b_next!85427 () Bool)

(assert (=> b!3193922 (= b_free!84723 (not b_next!85427))))

(declare-fun tp!1010018 () Bool)

(declare-fun b_and!211865 () Bool)

(assert (=> b!3193922 (= tp!1010018 b_and!211865)))

(declare-fun b!3193923 () Bool)

(declare-fun b_free!84725 () Bool)

(declare-fun b_next!85429 () Bool)

(assert (=> b!3193923 (= b_free!84725 (not b_next!85429))))

(declare-fun tp!1010026 () Bool)

(declare-fun b_and!211867 () Bool)

(assert (=> b!3193923 (= tp!1010026 b_and!211867)))

(declare-fun b_free!84727 () Bool)

(declare-fun b_next!85431 () Bool)

(assert (=> b!3193923 (= b_free!84727 (not b_next!85431))))

(declare-fun tp!1010015 () Bool)

(declare-fun b_and!211869 () Bool)

(assert (=> b!3193923 (= tp!1010015 b_and!211869)))

(declare-fun b!3193911 () Bool)

(declare-fun b_free!84729 () Bool)

(declare-fun b_next!85433 () Bool)

(assert (=> b!3193911 (= b_free!84729 (not b_next!85433))))

(declare-fun tp!1010025 () Bool)

(declare-fun b_and!211871 () Bool)

(assert (=> b!3193911 (= tp!1010025 b_and!211871)))

(declare-fun b_free!84731 () Bool)

(declare-fun b_next!85435 () Bool)

(assert (=> b!3193911 (= b_free!84731 (not b_next!85435))))

(declare-fun tp!1010014 () Bool)

(declare-fun b_and!211873 () Bool)

(assert (=> b!3193911 (= tp!1010014 b_and!211873)))

(declare-fun b!3193909 () Bool)

(declare-fun e!1990973 () Bool)

(declare-fun e!1990967 () Bool)

(assert (=> b!3193909 (= e!1990973 e!1990967)))

(declare-fun res!1299275 () Bool)

(assert (=> b!3193909 (=> res!1299275 e!1990967)))

(declare-datatypes ((C!20060 0))(
  ( (C!20061 (val!12078 Int)) )
))
(declare-datatypes ((List!36108 0))(
  ( (Nil!35984) (Cons!35984 (h!41404 C!20060) (t!236515 List!36108)) )
))
(declare-fun lt!1075933 () List!36108)

(declare-fun lt!1075927 () List!36108)

(declare-fun lt!1075934 () List!36108)

(assert (=> b!3193909 (= res!1299275 (or (not (= lt!1075933 lt!1075934)) (not (= lt!1075927 lt!1075934))))))

(declare-datatypes ((Regex!9937 0))(
  ( (ElementMatch!9937 (c!536148 C!20060)) (Concat!15345 (regOne!20386 Regex!9937) (regTwo!20386 Regex!9937)) (EmptyExpr!9937) (Star!9937 (reg!10266 Regex!9937)) (EmptyLang!9937) (Union!9937 (regOne!20387 Regex!9937) (regTwo!20387 Regex!9937)) )
))
(declare-datatypes ((List!36109 0))(
  ( (Nil!35985) (Cons!35985 (h!41405 (_ BitVec 16)) (t!236516 List!36109)) )
))
(declare-datatypes ((TokenValue!5408 0))(
  ( (FloatLiteralValue!10816 (text!38301 List!36109)) (TokenValueExt!5407 (__x!23033 Int)) (Broken!27040 (value!168007 List!36109)) (Object!5531) (End!5408) (Def!5408) (Underscore!5408) (Match!5408) (Else!5408) (Error!5408) (Case!5408) (If!5408) (Extends!5408) (Abstract!5408) (Class!5408) (Val!5408) (DelimiterValue!10816 (del!5468 List!36109)) (KeywordValue!5414 (value!168008 List!36109)) (CommentValue!10816 (value!168009 List!36109)) (WhitespaceValue!10816 (value!168010 List!36109)) (IndentationValue!5408 (value!168011 List!36109)) (String!40373) (Int32!5408) (Broken!27041 (value!168012 List!36109)) (Boolean!5409) (Unit!50389) (OperatorValue!5411 (op!5468 List!36109)) (IdentifierValue!10816 (value!168013 List!36109)) (IdentifierValue!10817 (value!168014 List!36109)) (WhitespaceValue!10817 (value!168015 List!36109)) (True!10816) (False!10816) (Broken!27042 (value!168016 List!36109)) (Broken!27043 (value!168017 List!36109)) (True!10817) (RightBrace!5408) (RightBracket!5408) (Colon!5408) (Null!5408) (Comma!5408) (LeftBracket!5408) (False!10817) (LeftBrace!5408) (ImaginaryLiteralValue!5408 (text!38302 List!36109)) (StringLiteralValue!16224 (value!168018 List!36109)) (EOFValue!5408 (value!168019 List!36109)) (IdentValue!5408 (value!168020 List!36109)) (DelimiterValue!10817 (value!168021 List!36109)) (DedentValue!5408 (value!168022 List!36109)) (NewLineValue!5408 (value!168023 List!36109)) (IntegerValue!16224 (value!168024 (_ BitVec 32)) (text!38303 List!36109)) (IntegerValue!16225 (value!168025 Int) (text!38304 List!36109)) (Times!5408) (Or!5408) (Equal!5408) (Minus!5408) (Broken!27044 (value!168026 List!36109)) (And!5408) (Div!5408) (LessEqual!5408) (Mod!5408) (Concat!15346) (Not!5408) (Plus!5408) (SpaceValue!5408 (value!168027 List!36109)) (IntegerValue!16226 (value!168028 Int) (text!38305 List!36109)) (StringLiteralValue!16225 (text!38306 List!36109)) (FloatLiteralValue!10817 (text!38307 List!36109)) (BytesLiteralValue!5408 (value!168029 List!36109)) (CommentValue!10817 (value!168030 List!36109)) (StringLiteralValue!16226 (value!168031 List!36109)) (ErrorTokenValue!5408 (msg!5469 List!36109)) )
))
(declare-datatypes ((IArray!21467 0))(
  ( (IArray!21468 (innerList!10791 List!36108)) )
))
(declare-datatypes ((Conc!10731 0))(
  ( (Node!10731 (left!27970 Conc!10731) (right!28300 Conc!10731) (csize!21692 Int) (cheight!10942 Int)) (Leaf!16931 (xs!13849 IArray!21467) (csize!21693 Int)) (Empty!10731) )
))
(declare-datatypes ((BalanceConc!21076 0))(
  ( (BalanceConc!21077 (c!536149 Conc!10731)) )
))
(declare-datatypes ((String!40374 0))(
  ( (String!40375 (value!168032 String)) )
))
(declare-datatypes ((TokenValueInjection!10244 0))(
  ( (TokenValueInjection!10245 (toValue!7246 Int) (toChars!7105 Int)) )
))
(declare-datatypes ((Rule!10156 0))(
  ( (Rule!10157 (regex!5178 Regex!9937) (tag!5696 String!40374) (isSeparator!5178 Bool) (transformation!5178 TokenValueInjection!10244)) )
))
(declare-datatypes ((Token!9722 0))(
  ( (Token!9723 (value!168033 TokenValue!5408) (rule!7610 Rule!10156) (size!27113 Int) (originalCharacters!5892 List!36108)) )
))
(declare-datatypes ((List!36110 0))(
  ( (Nil!35986) (Cons!35986 (h!41406 Token!9722) (t!236517 List!36110)) )
))
(declare-fun tokens!494 () List!36110)

(declare-fun list!12787 (BalanceConc!21076) List!36108)

(declare-fun charsOf!3194 (Token!9722) BalanceConc!21076)

(assert (=> b!3193909 (= lt!1075934 (list!12787 (charsOf!3194 (h!41406 tokens!494))))))

(declare-fun b!3193910 () Bool)

(declare-fun res!1299274 () Bool)

(declare-fun e!1990979 () Bool)

(assert (=> b!3193910 (=> (not res!1299274) (not e!1990979))))

(get-info :version)

(assert (=> b!3193910 (= res!1299274 (and (not ((_ is Nil!35986) tokens!494)) (not ((_ is Nil!35986) (t!236517 tokens!494)))))))

(declare-fun res!1299278 () Bool)

(assert (=> start!299642 (=> (not res!1299278) (not e!1990979))))

(declare-datatypes ((LexerInterface!4767 0))(
  ( (LexerInterfaceExt!4764 (__x!23034 Int)) (Lexer!4765) )
))
(declare-fun thiss!18206 () LexerInterface!4767)

(assert (=> start!299642 (= res!1299278 ((_ is Lexer!4765) thiss!18206))))

(assert (=> start!299642 e!1990979))

(assert (=> start!299642 true))

(declare-fun e!1990978 () Bool)

(assert (=> start!299642 e!1990978))

(declare-fun e!1990972 () Bool)

(assert (=> start!299642 e!1990972))

(declare-fun separatorToken!241 () Token!9722)

(declare-fun e!1990976 () Bool)

(declare-fun inv!48834 (Token!9722) Bool)

(assert (=> start!299642 (and (inv!48834 separatorToken!241) e!1990976)))

(declare-fun e!1990965 () Bool)

(assert (=> b!3193911 (= e!1990965 (and tp!1010025 tp!1010014))))

(declare-fun b!3193912 () Bool)

(declare-fun res!1299271 () Bool)

(assert (=> b!3193912 (=> (not res!1299271) (not e!1990979))))

(declare-fun lambda!116905 () Int)

(declare-fun forall!7318 (List!36110 Int) Bool)

(assert (=> b!3193912 (= res!1299271 (forall!7318 tokens!494 lambda!116905))))

(declare-fun b!3193913 () Bool)

(declare-fun res!1299273 () Bool)

(assert (=> b!3193913 (=> (not res!1299273) (not e!1990979))))

(declare-datatypes ((List!36111 0))(
  ( (Nil!35987) (Cons!35987 (h!41407 Rule!10156) (t!236518 List!36111)) )
))
(declare-fun rules!2135 () List!36111)

(declare-fun rulesProduceIndividualToken!2259 (LexerInterface!4767 List!36111 Token!9722) Bool)

(assert (=> b!3193913 (= res!1299273 (rulesProduceIndividualToken!2259 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3193914 () Bool)

(declare-fun res!1299270 () Bool)

(assert (=> b!3193914 (=> (not res!1299270) (not e!1990979))))

(declare-datatypes ((IArray!21469 0))(
  ( (IArray!21470 (innerList!10792 List!36110)) )
))
(declare-datatypes ((Conc!10732 0))(
  ( (Node!10732 (left!27971 Conc!10732) (right!28301 Conc!10732) (csize!21694 Int) (cheight!10943 Int)) (Leaf!16932 (xs!13850 IArray!21469) (csize!21695 Int)) (Empty!10732) )
))
(declare-datatypes ((BalanceConc!21078 0))(
  ( (BalanceConc!21079 (c!536150 Conc!10732)) )
))
(declare-fun rulesProduceEachTokenIndividually!1218 (LexerInterface!4767 List!36111 BalanceConc!21078) Bool)

(declare-fun seqFromList!3427 (List!36110) BalanceConc!21078)

(assert (=> b!3193914 (= res!1299270 (rulesProduceEachTokenIndividually!1218 thiss!18206 rules!2135 (seqFromList!3427 tokens!494)))))

(declare-fun b!3193915 () Bool)

(declare-fun res!1299268 () Bool)

(assert (=> b!3193915 (=> (not res!1299268) (not e!1990979))))

(declare-fun rulesInvariant!4164 (LexerInterface!4767 List!36111) Bool)

(assert (=> b!3193915 (= res!1299268 (rulesInvariant!4164 thiss!18206 rules!2135))))

(declare-fun b!3193916 () Bool)

(declare-fun e!1990971 () Bool)

(declare-fun tp!1010016 () Bool)

(assert (=> b!3193916 (= e!1990972 (and (inv!48834 (h!41406 tokens!494)) e!1990971 tp!1010016))))

(declare-fun b!3193917 () Bool)

(declare-fun e!1990977 () Bool)

(declare-fun tp!1010023 () Bool)

(declare-fun inv!48831 (String!40374) Bool)

(declare-fun inv!48835 (TokenValueInjection!10244) Bool)

(assert (=> b!3193917 (= e!1990977 (and tp!1010023 (inv!48831 (tag!5696 (rule!7610 separatorToken!241))) (inv!48835 (transformation!5178 (rule!7610 separatorToken!241))) e!1990965))))

(declare-fun e!1990969 () Bool)

(declare-fun tp!1010022 () Bool)

(declare-fun b!3193918 () Bool)

(declare-fun inv!21 (TokenValue!5408) Bool)

(assert (=> b!3193918 (= e!1990971 (and (inv!21 (value!168033 (h!41406 tokens!494))) e!1990969 tp!1010022))))

(declare-fun b!3193919 () Bool)

(declare-fun e!1990974 () Bool)

(assert (=> b!3193919 (= e!1990974 true)))

(declare-fun lt!1075932 () List!36108)

(declare-fun printWithSeparatorTokenList!112 (LexerInterface!4767 List!36110 Token!9722) List!36108)

(assert (=> b!3193919 (= lt!1075932 (printWithSeparatorTokenList!112 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3193920 () Bool)

(declare-fun tp!1010017 () Bool)

(assert (=> b!3193920 (= e!1990976 (and (inv!21 (value!168033 separatorToken!241)) e!1990977 tp!1010017))))

(declare-fun b!3193921 () Bool)

(assert (=> b!3193921 (= e!1990979 (not e!1990973))))

(declare-fun res!1299272 () Bool)

(assert (=> b!3193921 (=> res!1299272 e!1990973)))

(assert (=> b!3193921 (= res!1299272 (not (= lt!1075927 lt!1075933)))))

(declare-fun printList!1317 (LexerInterface!4767 List!36110) List!36108)

(assert (=> b!3193921 (= lt!1075933 (printList!1317 thiss!18206 (Cons!35986 (h!41406 tokens!494) Nil!35986)))))

(declare-fun lt!1075928 () BalanceConc!21076)

(assert (=> b!3193921 (= lt!1075927 (list!12787 lt!1075928))))

(declare-fun lt!1075930 () BalanceConc!21078)

(declare-fun printTailRec!1264 (LexerInterface!4767 BalanceConc!21078 Int BalanceConc!21076) BalanceConc!21076)

(assert (=> b!3193921 (= lt!1075928 (printTailRec!1264 thiss!18206 lt!1075930 0 (BalanceConc!21077 Empty!10731)))))

(declare-fun print!1832 (LexerInterface!4767 BalanceConc!21078) BalanceConc!21076)

(assert (=> b!3193921 (= lt!1075928 (print!1832 thiss!18206 lt!1075930))))

(declare-fun singletonSeq!2274 (Token!9722) BalanceConc!21078)

(assert (=> b!3193921 (= lt!1075930 (singletonSeq!2274 (h!41406 tokens!494)))))

(declare-fun e!1990980 () Bool)

(assert (=> b!3193922 (= e!1990980 (and tp!1010024 tp!1010018))))

(declare-fun e!1990962 () Bool)

(assert (=> b!3193923 (= e!1990962 (and tp!1010026 tp!1010015))))

(declare-fun b!3193924 () Bool)

(declare-fun e!1990970 () Bool)

(declare-fun tp!1010019 () Bool)

(assert (=> b!3193924 (= e!1990978 (and e!1990970 tp!1010019))))

(declare-fun b!3193925 () Bool)

(declare-fun tp!1010020 () Bool)

(assert (=> b!3193925 (= e!1990970 (and tp!1010020 (inv!48831 (tag!5696 (h!41407 rules!2135))) (inv!48835 (transformation!5178 (h!41407 rules!2135))) e!1990962))))

(declare-fun b!3193926 () Bool)

(declare-fun res!1299280 () Bool)

(assert (=> b!3193926 (=> (not res!1299280) (not e!1990979))))

(assert (=> b!3193926 (= res!1299280 (isSeparator!5178 (rule!7610 separatorToken!241)))))

(declare-fun b!3193927 () Bool)

(declare-fun res!1299277 () Bool)

(assert (=> b!3193927 (=> (not res!1299277) (not e!1990979))))

(declare-fun sepAndNonSepRulesDisjointChars!1372 (List!36111 List!36111) Bool)

(assert (=> b!3193927 (= res!1299277 (sepAndNonSepRulesDisjointChars!1372 rules!2135 rules!2135))))

(declare-fun tp!1010021 () Bool)

(declare-fun b!3193928 () Bool)

(assert (=> b!3193928 (= e!1990969 (and tp!1010021 (inv!48831 (tag!5696 (rule!7610 (h!41406 tokens!494)))) (inv!48835 (transformation!5178 (rule!7610 (h!41406 tokens!494)))) e!1990980))))

(declare-fun b!3193929 () Bool)

(assert (=> b!3193929 (= e!1990967 e!1990974)))

(declare-fun res!1299267 () Bool)

(assert (=> b!3193929 (=> res!1299267 e!1990974)))

(assert (=> b!3193929 (= res!1299267 (or (isSeparator!5178 (rule!7610 (h!41406 tokens!494))) (isSeparator!5178 (rule!7610 (h!41406 (t!236517 tokens!494))))))))

(declare-datatypes ((Unit!50390 0))(
  ( (Unit!50391) )
))
(declare-fun lt!1075931 () Unit!50390)

(declare-fun forallContained!1149 (List!36110 Int Token!9722) Unit!50390)

(assert (=> b!3193929 (= lt!1075931 (forallContained!1149 tokens!494 lambda!116905 (h!41406 (t!236517 tokens!494))))))

(declare-fun lt!1075929 () Unit!50390)

(assert (=> b!3193929 (= lt!1075929 (forallContained!1149 tokens!494 lambda!116905 (h!41406 tokens!494)))))

(declare-fun b!3193930 () Bool)

(declare-fun res!1299279 () Bool)

(assert (=> b!3193930 (=> res!1299279 e!1990967)))

(assert (=> b!3193930 (= res!1299279 (not (rulesProduceIndividualToken!2259 thiss!18206 rules!2135 (h!41406 tokens!494))))))

(declare-fun b!3193931 () Bool)

(declare-fun res!1299269 () Bool)

(assert (=> b!3193931 (=> (not res!1299269) (not e!1990979))))

(declare-fun isEmpty!20086 (List!36111) Bool)

(assert (=> b!3193931 (= res!1299269 (not (isEmpty!20086 rules!2135)))))

(declare-fun b!3193932 () Bool)

(declare-fun res!1299276 () Bool)

(assert (=> b!3193932 (=> res!1299276 e!1990967)))

(declare-fun isEmpty!20087 (BalanceConc!21078) Bool)

(declare-datatypes ((tuple2!35352 0))(
  ( (tuple2!35353 (_1!20810 BalanceConc!21078) (_2!20810 BalanceConc!21076)) )
))
(declare-fun lex!2097 (LexerInterface!4767 List!36111 BalanceConc!21076) tuple2!35352)

(declare-fun seqFromList!3428 (List!36108) BalanceConc!21076)

(assert (=> b!3193932 (= res!1299276 (isEmpty!20087 (_1!20810 (lex!2097 thiss!18206 rules!2135 (seqFromList!3428 lt!1075934)))))))

(assert (= (and start!299642 res!1299278) b!3193931))

(assert (= (and b!3193931 res!1299269) b!3193915))

(assert (= (and b!3193915 res!1299268) b!3193914))

(assert (= (and b!3193914 res!1299270) b!3193913))

(assert (= (and b!3193913 res!1299273) b!3193926))

(assert (= (and b!3193926 res!1299280) b!3193912))

(assert (= (and b!3193912 res!1299271) b!3193927))

(assert (= (and b!3193927 res!1299277) b!3193910))

(assert (= (and b!3193910 res!1299274) b!3193921))

(assert (= (and b!3193921 (not res!1299272)) b!3193909))

(assert (= (and b!3193909 (not res!1299275)) b!3193930))

(assert (= (and b!3193930 (not res!1299279)) b!3193932))

(assert (= (and b!3193932 (not res!1299276)) b!3193929))

(assert (= (and b!3193929 (not res!1299267)) b!3193919))

(assert (= b!3193925 b!3193923))

(assert (= b!3193924 b!3193925))

(assert (= (and start!299642 ((_ is Cons!35987) rules!2135)) b!3193924))

(assert (= b!3193928 b!3193922))

(assert (= b!3193918 b!3193928))

(assert (= b!3193916 b!3193918))

(assert (= (and start!299642 ((_ is Cons!35986) tokens!494)) b!3193916))

(assert (= b!3193917 b!3193911))

(assert (= b!3193920 b!3193917))

(assert (= start!299642 b!3193920))

(declare-fun m!3453641 () Bool)

(assert (=> b!3193931 m!3453641))

(declare-fun m!3453643 () Bool)

(assert (=> b!3193921 m!3453643))

(declare-fun m!3453645 () Bool)

(assert (=> b!3193921 m!3453645))

(declare-fun m!3453647 () Bool)

(assert (=> b!3193921 m!3453647))

(declare-fun m!3453649 () Bool)

(assert (=> b!3193921 m!3453649))

(declare-fun m!3453651 () Bool)

(assert (=> b!3193921 m!3453651))

(declare-fun m!3453653 () Bool)

(assert (=> b!3193927 m!3453653))

(declare-fun m!3453655 () Bool)

(assert (=> b!3193915 m!3453655))

(declare-fun m!3453657 () Bool)

(assert (=> b!3193913 m!3453657))

(declare-fun m!3453659 () Bool)

(assert (=> b!3193930 m!3453659))

(declare-fun m!3453661 () Bool)

(assert (=> b!3193914 m!3453661))

(assert (=> b!3193914 m!3453661))

(declare-fun m!3453663 () Bool)

(assert (=> b!3193914 m!3453663))

(declare-fun m!3453665 () Bool)

(assert (=> b!3193932 m!3453665))

(assert (=> b!3193932 m!3453665))

(declare-fun m!3453667 () Bool)

(assert (=> b!3193932 m!3453667))

(declare-fun m!3453669 () Bool)

(assert (=> b!3193932 m!3453669))

(declare-fun m!3453671 () Bool)

(assert (=> b!3193920 m!3453671))

(declare-fun m!3453673 () Bool)

(assert (=> b!3193909 m!3453673))

(assert (=> b!3193909 m!3453673))

(declare-fun m!3453675 () Bool)

(assert (=> b!3193909 m!3453675))

(declare-fun m!3453677 () Bool)

(assert (=> start!299642 m!3453677))

(declare-fun m!3453679 () Bool)

(assert (=> b!3193918 m!3453679))

(declare-fun m!3453681 () Bool)

(assert (=> b!3193917 m!3453681))

(declare-fun m!3453683 () Bool)

(assert (=> b!3193917 m!3453683))

(declare-fun m!3453685 () Bool)

(assert (=> b!3193916 m!3453685))

(declare-fun m!3453687 () Bool)

(assert (=> b!3193919 m!3453687))

(declare-fun m!3453689 () Bool)

(assert (=> b!3193912 m!3453689))

(declare-fun m!3453691 () Bool)

(assert (=> b!3193925 m!3453691))

(declare-fun m!3453693 () Bool)

(assert (=> b!3193925 m!3453693))

(declare-fun m!3453695 () Bool)

(assert (=> b!3193928 m!3453695))

(declare-fun m!3453697 () Bool)

(assert (=> b!3193928 m!3453697))

(declare-fun m!3453699 () Bool)

(assert (=> b!3193929 m!3453699))

(declare-fun m!3453701 () Bool)

(assert (=> b!3193929 m!3453701))

(check-sat (not b!3193930) (not b!3193909) (not b!3193917) (not b_next!85425) (not b!3193932) (not b_next!85435) b_and!211865 b_and!211871 (not b!3193919) (not b!3193925) (not b!3193918) (not b_next!85427) b_and!211869 (not b!3193913) (not b!3193921) b_and!211867 b_and!211873 (not b_next!85431) (not b!3193912) (not start!299642) (not b!3193929) (not b!3193928) (not b_next!85429) (not b_next!85433) (not b!3193931) (not b!3193927) (not b!3193915) (not b!3193920) (not b!3193914) (not b!3193916) b_and!211863 (not b!3193924))
(check-sat b_and!211871 (not b_next!85425) b_and!211863 (not b_next!85435) b_and!211865 (not b_next!85427) b_and!211869 b_and!211867 b_and!211873 (not b_next!85431) (not b_next!85429) (not b_next!85433))
