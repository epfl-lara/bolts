; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299666 () Bool)

(assert start!299666)

(declare-fun b!3194963 () Bool)

(declare-fun b_free!84865 () Bool)

(declare-fun b_next!85569 () Bool)

(assert (=> b!3194963 (= b_free!84865 (not b_next!85569))))

(declare-fun tp!1010487 () Bool)

(declare-fun b_and!212007 () Bool)

(assert (=> b!3194963 (= tp!1010487 b_and!212007)))

(declare-fun b_free!84867 () Bool)

(declare-fun b_next!85571 () Bool)

(assert (=> b!3194963 (= b_free!84867 (not b_next!85571))))

(declare-fun tp!1010484 () Bool)

(declare-fun b_and!212009 () Bool)

(assert (=> b!3194963 (= tp!1010484 b_and!212009)))

(declare-fun b!3194957 () Bool)

(declare-fun b_free!84869 () Bool)

(declare-fun b_next!85573 () Bool)

(assert (=> b!3194957 (= b_free!84869 (not b_next!85573))))

(declare-fun tp!1010494 () Bool)

(declare-fun b_and!212011 () Bool)

(assert (=> b!3194957 (= tp!1010494 b_and!212011)))

(declare-fun b_free!84871 () Bool)

(declare-fun b_next!85575 () Bool)

(assert (=> b!3194957 (= b_free!84871 (not b_next!85575))))

(declare-fun tp!1010483 () Bool)

(declare-fun b_and!212013 () Bool)

(assert (=> b!3194957 (= tp!1010483 b_and!212013)))

(declare-fun b!3194955 () Bool)

(declare-fun b_free!84873 () Bool)

(declare-fun b_next!85577 () Bool)

(assert (=> b!3194955 (= b_free!84873 (not b_next!85577))))

(declare-fun tp!1010486 () Bool)

(declare-fun b_and!212015 () Bool)

(assert (=> b!3194955 (= tp!1010486 b_and!212015)))

(declare-fun b_free!84875 () Bool)

(declare-fun b_next!85579 () Bool)

(assert (=> b!3194955 (= b_free!84875 (not b_next!85579))))

(declare-fun tp!1010490 () Bool)

(declare-fun b_and!212017 () Bool)

(assert (=> b!3194955 (= tp!1010490 b_and!212017)))

(declare-fun b!3194934 () Bool)

(declare-fun res!1299949 () Bool)

(declare-fun e!1991816 () Bool)

(assert (=> b!3194934 (=> (not res!1299949) (not e!1991816))))

(declare-datatypes ((C!20084 0))(
  ( (C!20085 (val!12090 Int)) )
))
(declare-datatypes ((Regex!9949 0))(
  ( (ElementMatch!9949 (c!536196 C!20084)) (Concat!15369 (regOne!20410 Regex!9949) (regTwo!20410 Regex!9949)) (EmptyExpr!9949) (Star!9949 (reg!10278 Regex!9949)) (EmptyLang!9949) (Union!9949 (regOne!20411 Regex!9949) (regTwo!20411 Regex!9949)) )
))
(declare-datatypes ((List!36156 0))(
  ( (Nil!36032) (Cons!36032 (h!41452 (_ BitVec 16)) (t!236611 List!36156)) )
))
(declare-datatypes ((TokenValue!5420 0))(
  ( (FloatLiteralValue!10840 (text!38385 List!36156)) (TokenValueExt!5419 (__x!23057 Int)) (Broken!27100 (value!168349 List!36156)) (Object!5543) (End!5420) (Def!5420) (Underscore!5420) (Match!5420) (Else!5420) (Error!5420) (Case!5420) (If!5420) (Extends!5420) (Abstract!5420) (Class!5420) (Val!5420) (DelimiterValue!10840 (del!5480 List!36156)) (KeywordValue!5426 (value!168350 List!36156)) (CommentValue!10840 (value!168351 List!36156)) (WhitespaceValue!10840 (value!168352 List!36156)) (IndentationValue!5420 (value!168353 List!36156)) (String!40433) (Int32!5420) (Broken!27101 (value!168354 List!36156)) (Boolean!5421) (Unit!50425) (OperatorValue!5423 (op!5480 List!36156)) (IdentifierValue!10840 (value!168355 List!36156)) (IdentifierValue!10841 (value!168356 List!36156)) (WhitespaceValue!10841 (value!168357 List!36156)) (True!10840) (False!10840) (Broken!27102 (value!168358 List!36156)) (Broken!27103 (value!168359 List!36156)) (True!10841) (RightBrace!5420) (RightBracket!5420) (Colon!5420) (Null!5420) (Comma!5420) (LeftBracket!5420) (False!10841) (LeftBrace!5420) (ImaginaryLiteralValue!5420 (text!38386 List!36156)) (StringLiteralValue!16260 (value!168360 List!36156)) (EOFValue!5420 (value!168361 List!36156)) (IdentValue!5420 (value!168362 List!36156)) (DelimiterValue!10841 (value!168363 List!36156)) (DedentValue!5420 (value!168364 List!36156)) (NewLineValue!5420 (value!168365 List!36156)) (IntegerValue!16260 (value!168366 (_ BitVec 32)) (text!38387 List!36156)) (IntegerValue!16261 (value!168367 Int) (text!38388 List!36156)) (Times!5420) (Or!5420) (Equal!5420) (Minus!5420) (Broken!27104 (value!168368 List!36156)) (And!5420) (Div!5420) (LessEqual!5420) (Mod!5420) (Concat!15370) (Not!5420) (Plus!5420) (SpaceValue!5420 (value!168369 List!36156)) (IntegerValue!16262 (value!168370 Int) (text!38389 List!36156)) (StringLiteralValue!16261 (text!38390 List!36156)) (FloatLiteralValue!10841 (text!38391 List!36156)) (BytesLiteralValue!5420 (value!168371 List!36156)) (CommentValue!10841 (value!168372 List!36156)) (StringLiteralValue!16262 (value!168373 List!36156)) (ErrorTokenValue!5420 (msg!5481 List!36156)) )
))
(declare-datatypes ((List!36157 0))(
  ( (Nil!36033) (Cons!36033 (h!41453 C!20084) (t!236612 List!36157)) )
))
(declare-datatypes ((IArray!21515 0))(
  ( (IArray!21516 (innerList!10815 List!36157)) )
))
(declare-datatypes ((Conc!10755 0))(
  ( (Node!10755 (left!28000 Conc!10755) (right!28330 Conc!10755) (csize!21740 Int) (cheight!10966 Int)) (Leaf!16961 (xs!13873 IArray!21515) (csize!21741 Int)) (Empty!10755) )
))
(declare-datatypes ((BalanceConc!21124 0))(
  ( (BalanceConc!21125 (c!536197 Conc!10755)) )
))
(declare-datatypes ((String!40434 0))(
  ( (String!40435 (value!168374 String)) )
))
(declare-datatypes ((TokenValueInjection!10268 0))(
  ( (TokenValueInjection!10269 (toValue!7258 Int) (toChars!7117 Int)) )
))
(declare-datatypes ((Rule!10180 0))(
  ( (Rule!10181 (regex!5190 Regex!9949) (tag!5708 String!40434) (isSeparator!5190 Bool) (transformation!5190 TokenValueInjection!10268)) )
))
(declare-datatypes ((Token!9746 0))(
  ( (Token!9747 (value!168375 TokenValue!5420) (rule!7622 Rule!10180) (size!27130 Int) (originalCharacters!5904 List!36157)) )
))
(declare-datatypes ((List!36158 0))(
  ( (Nil!36034) (Cons!36034 (h!41454 Token!9746) (t!236613 List!36158)) )
))
(declare-fun tokens!494 () List!36158)

(get-info :version)

(assert (=> b!3194934 (= res!1299949 (and (not ((_ is Nil!36034) tokens!494)) (not ((_ is Nil!36034) (t!236613 tokens!494)))))))

(declare-fun separatorToken!241 () Token!9746)

(declare-fun e!1991824 () Bool)

(declare-fun tp!1010492 () Bool)

(declare-fun b!3194935 () Bool)

(declare-fun e!1991826 () Bool)

(declare-fun inv!21 (TokenValue!5420) Bool)

(assert (=> b!3194935 (= e!1991824 (and (inv!21 (value!168375 separatorToken!241)) e!1991826 tp!1010492))))

(declare-fun b!3194937 () Bool)

(declare-fun e!1991821 () Bool)

(declare-fun e!1991820 () Bool)

(assert (=> b!3194937 (= e!1991821 e!1991820)))

(declare-fun res!1299937 () Bool)

(assert (=> b!3194937 (=> res!1299937 e!1991820)))

(declare-fun lt!1076577 () List!36157)

(declare-fun lt!1076579 () List!36157)

(declare-fun lt!1076589 () List!36157)

(assert (=> b!3194937 (= res!1299937 (or (not (= lt!1076589 lt!1076577)) (not (= lt!1076579 lt!1076577))))))

(declare-fun list!12799 (BalanceConc!21124) List!36157)

(declare-fun charsOf!3206 (Token!9746) BalanceConc!21124)

(assert (=> b!3194937 (= lt!1076577 (list!12799 (charsOf!3206 (h!41454 tokens!494))))))

(declare-fun b!3194938 () Bool)

(declare-fun e!1991819 () Bool)

(declare-fun lt!1076588 () Rule!10180)

(assert (=> b!3194938 (= e!1991819 (= (rule!7622 separatorToken!241) lt!1076588))))

(declare-fun tp!1010482 () Bool)

(declare-fun b!3194939 () Bool)

(declare-fun e!1991831 () Bool)

(declare-fun e!1991807 () Bool)

(declare-fun inv!48873 (String!40434) Bool)

(declare-fun inv!48876 (TokenValueInjection!10268) Bool)

(assert (=> b!3194939 (= e!1991831 (and tp!1010482 (inv!48873 (tag!5708 (rule!7622 (h!41454 tokens!494)))) (inv!48876 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) e!1991807))))

(declare-fun b!3194940 () Bool)

(declare-fun res!1299932 () Bool)

(assert (=> b!3194940 (=> res!1299932 e!1991820)))

(declare-datatypes ((List!36159 0))(
  ( (Nil!36035) (Cons!36035 (h!41455 Rule!10180) (t!236614 List!36159)) )
))
(declare-fun rules!2135 () List!36159)

(declare-datatypes ((LexerInterface!4779 0))(
  ( (LexerInterfaceExt!4776 (__x!23058 Int)) (Lexer!4777) )
))
(declare-fun thiss!18206 () LexerInterface!4779)

(declare-fun rulesProduceIndividualToken!2271 (LexerInterface!4779 List!36159 Token!9746) Bool)

(assert (=> b!3194940 (= res!1299932 (not (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 (h!41454 tokens!494))))))

(declare-fun b!3194941 () Bool)

(declare-fun res!1299933 () Bool)

(assert (=> b!3194941 (=> (not res!1299933) (not e!1991816))))

(declare-fun isEmpty!20112 (List!36159) Bool)

(assert (=> b!3194941 (= res!1299933 (not (isEmpty!20112 rules!2135)))))

(declare-fun b!3194942 () Bool)

(declare-fun e!1991818 () Bool)

(declare-fun e!1991811 () Bool)

(assert (=> b!3194942 (= e!1991818 e!1991811)))

(declare-fun res!1299939 () Bool)

(assert (=> b!3194942 (=> (not res!1299939) (not e!1991811))))

(declare-fun lt!1076584 () Rule!10180)

(declare-fun matchR!4583 (Regex!9949 List!36157) Bool)

(assert (=> b!3194942 (= res!1299939 (matchR!4583 (regex!5190 lt!1076584) lt!1076577))))

(declare-datatypes ((Option!7071 0))(
  ( (None!7070) (Some!7070 (v!35582 Rule!10180)) )
))
(declare-fun lt!1076593 () Option!7071)

(declare-fun get!11458 (Option!7071) Rule!10180)

(assert (=> b!3194942 (= lt!1076584 (get!11458 lt!1076593))))

(declare-fun b!3194943 () Bool)

(declare-fun e!1991815 () Bool)

(declare-fun e!1991830 () Bool)

(assert (=> b!3194943 (= e!1991815 e!1991830)))

(declare-fun res!1299935 () Bool)

(assert (=> b!3194943 (=> res!1299935 e!1991830)))

(declare-fun lt!1076594 () List!36157)

(declare-fun lt!1076581 () List!36157)

(declare-fun ++!8622 (List!36157 List!36157) List!36157)

(declare-fun printWithSeparatorTokenList!124 (LexerInterface!4779 List!36158 Token!9746) List!36157)

(assert (=> b!3194943 (= res!1299935 (not (= lt!1076581 (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1076592 () List!36157)

(assert (=> b!3194943 (= lt!1076592 (++!8622 lt!1076594 lt!1076581))))

(assert (=> b!3194943 (= lt!1076594 (list!12799 (charsOf!3206 separatorToken!241)))))

(assert (=> b!3194943 (= lt!1076581 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241))))

(declare-fun lt!1076587 () List!36157)

(assert (=> b!3194943 (= lt!1076587 (printWithSeparatorTokenList!124 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun tp!1010491 () Bool)

(declare-fun b!3194944 () Bool)

(declare-fun e!1991817 () Bool)

(assert (=> b!3194944 (= e!1991817 (and (inv!21 (value!168375 (h!41454 tokens!494))) e!1991831 tp!1010491))))

(declare-fun b!3194945 () Bool)

(declare-fun e!1991832 () Bool)

(assert (=> b!3194945 (= e!1991832 e!1991815)))

(declare-fun res!1299943 () Bool)

(assert (=> b!3194945 (=> res!1299943 e!1991815)))

(assert (=> b!3194945 (= res!1299943 (or (isSeparator!5190 (rule!7622 (h!41454 tokens!494))) (isSeparator!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))))

(declare-datatypes ((Unit!50426 0))(
  ( (Unit!50427) )
))
(declare-fun lt!1076575 () Unit!50426)

(declare-fun lambda!116989 () Int)

(declare-fun forallContained!1161 (List!36158 Int Token!9746) Unit!50426)

(assert (=> b!3194945 (= lt!1076575 (forallContained!1161 tokens!494 lambda!116989 (h!41454 (t!236613 tokens!494))))))

(declare-fun lt!1076572 () Unit!50426)

(assert (=> b!3194945 (= lt!1076572 (forallContained!1161 tokens!494 lambda!116989 (h!41454 tokens!494)))))

(declare-fun b!3194946 () Bool)

(declare-fun e!1991813 () Bool)

(assert (=> b!3194946 (= e!1991830 e!1991813)))

(declare-fun res!1299947 () Bool)

(assert (=> b!3194946 (=> res!1299947 e!1991813)))

(declare-fun lt!1076580 () List!36157)

(assert (=> b!3194946 (= res!1299947 (not (= lt!1076587 lt!1076580)))))

(assert (=> b!3194946 (= lt!1076580 (++!8622 (++!8622 lt!1076577 lt!1076594) lt!1076581))))

(declare-fun b!3194947 () Bool)

(declare-fun res!1299951 () Bool)

(assert (=> b!3194947 (=> (not res!1299951) (not e!1991816))))

(declare-datatypes ((IArray!21517 0))(
  ( (IArray!21518 (innerList!10816 List!36158)) )
))
(declare-datatypes ((Conc!10756 0))(
  ( (Node!10756 (left!28001 Conc!10756) (right!28331 Conc!10756) (csize!21742 Int) (cheight!10967 Int)) (Leaf!16962 (xs!13874 IArray!21517) (csize!21743 Int)) (Empty!10756) )
))
(declare-datatypes ((BalanceConc!21126 0))(
  ( (BalanceConc!21127 (c!536198 Conc!10756)) )
))
(declare-fun rulesProduceEachTokenIndividually!1230 (LexerInterface!4779 List!36159 BalanceConc!21126) Bool)

(declare-fun seqFromList!3451 (List!36158) BalanceConc!21126)

(assert (=> b!3194947 (= res!1299951 (rulesProduceEachTokenIndividually!1230 thiss!18206 rules!2135 (seqFromList!3451 tokens!494)))))

(declare-fun b!3194948 () Bool)

(declare-fun res!1299952 () Bool)

(assert (=> b!3194948 (=> (not res!1299952) (not e!1991816))))

(declare-fun sepAndNonSepRulesDisjointChars!1384 (List!36159 List!36159) Bool)

(assert (=> b!3194948 (= res!1299952 (sepAndNonSepRulesDisjointChars!1384 rules!2135 rules!2135))))

(declare-fun b!3194949 () Bool)

(declare-fun e!1991812 () Bool)

(declare-fun e!1991808 () Bool)

(declare-fun tp!1010485 () Bool)

(assert (=> b!3194949 (= e!1991808 (and tp!1010485 (inv!48873 (tag!5708 (h!41455 rules!2135))) (inv!48876 (transformation!5190 (h!41455 rules!2135))) e!1991812))))

(declare-fun b!3194950 () Bool)

(declare-fun e!1991814 () Bool)

(assert (=> b!3194950 (= e!1991814 e!1991819)))

(declare-fun res!1299946 () Bool)

(assert (=> b!3194950 (=> (not res!1299946) (not e!1991819))))

(assert (=> b!3194950 (= res!1299946 (matchR!4583 (regex!5190 lt!1076588) lt!1076594))))

(declare-fun lt!1076582 () Option!7071)

(assert (=> b!3194950 (= lt!1076588 (get!11458 lt!1076582))))

(declare-fun tp!1010493 () Bool)

(declare-fun b!3194951 () Bool)

(declare-fun e!1991825 () Bool)

(assert (=> b!3194951 (= e!1991826 (and tp!1010493 (inv!48873 (tag!5708 (rule!7622 separatorToken!241))) (inv!48876 (transformation!5190 (rule!7622 separatorToken!241))) e!1991825))))

(declare-fun res!1299940 () Bool)

(assert (=> start!299666 (=> (not res!1299940) (not e!1991816))))

(assert (=> start!299666 (= res!1299940 ((_ is Lexer!4777) thiss!18206))))

(assert (=> start!299666 e!1991816))

(assert (=> start!299666 true))

(declare-fun e!1991829 () Bool)

(assert (=> start!299666 e!1991829))

(declare-fun e!1991809 () Bool)

(assert (=> start!299666 e!1991809))

(declare-fun inv!48877 (Token!9746) Bool)

(assert (=> start!299666 (and (inv!48877 separatorToken!241) e!1991824)))

(declare-fun b!3194936 () Bool)

(assert (=> b!3194936 (= e!1991811 (= (rule!7622 (h!41454 tokens!494)) lt!1076584))))

(declare-fun b!3194952 () Bool)

(assert (=> b!3194952 (= e!1991816 (not e!1991821))))

(declare-fun res!1299942 () Bool)

(assert (=> b!3194952 (=> res!1299942 e!1991821)))

(assert (=> b!3194952 (= res!1299942 (not (= lt!1076579 lt!1076589)))))

(declare-fun printList!1329 (LexerInterface!4779 List!36158) List!36157)

(assert (=> b!3194952 (= lt!1076589 (printList!1329 thiss!18206 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))

(declare-fun lt!1076574 () BalanceConc!21124)

(assert (=> b!3194952 (= lt!1076579 (list!12799 lt!1076574))))

(declare-fun lt!1076571 () BalanceConc!21126)

(declare-fun printTailRec!1276 (LexerInterface!4779 BalanceConc!21126 Int BalanceConc!21124) BalanceConc!21124)

(assert (=> b!3194952 (= lt!1076574 (printTailRec!1276 thiss!18206 lt!1076571 0 (BalanceConc!21125 Empty!10755)))))

(declare-fun print!1844 (LexerInterface!4779 BalanceConc!21126) BalanceConc!21124)

(assert (=> b!3194952 (= lt!1076574 (print!1844 thiss!18206 lt!1076571))))

(declare-fun singletonSeq!2286 (Token!9746) BalanceConc!21126)

(assert (=> b!3194952 (= lt!1076571 (singletonSeq!2286 (h!41454 tokens!494)))))

(declare-fun b!3194953 () Bool)

(declare-fun tp!1010489 () Bool)

(assert (=> b!3194953 (= e!1991829 (and e!1991808 tp!1010489))))

(declare-fun b!3194954 () Bool)

(declare-fun res!1299934 () Bool)

(assert (=> b!3194954 (=> (not res!1299934) (not e!1991816))))

(declare-fun rulesInvariant!4176 (LexerInterface!4779 List!36159) Bool)

(assert (=> b!3194954 (= res!1299934 (rulesInvariant!4176 thiss!18206 rules!2135))))

(assert (=> b!3194955 (= e!1991807 (and tp!1010486 tp!1010490))))

(declare-fun b!3194956 () Bool)

(assert (=> b!3194956 (= e!1991820 e!1991832)))

(declare-fun res!1299936 () Bool)

(assert (=> b!3194956 (=> res!1299936 e!1991832)))

(declare-fun lt!1076578 () BalanceConc!21124)

(declare-fun isEmpty!20113 (BalanceConc!21126) Bool)

(declare-datatypes ((tuple2!35390 0))(
  ( (tuple2!35391 (_1!20829 BalanceConc!21126) (_2!20829 BalanceConc!21124)) )
))
(declare-fun lex!2109 (LexerInterface!4779 List!36159 BalanceConc!21124) tuple2!35390)

(assert (=> b!3194956 (= res!1299936 (isEmpty!20113 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578))))))

(declare-fun seqFromList!3452 (List!36157) BalanceConc!21124)

(assert (=> b!3194956 (= lt!1076578 (seqFromList!3452 lt!1076577))))

(assert (=> b!3194957 (= e!1991825 (and tp!1010494 tp!1010483))))

(declare-fun tp!1010488 () Bool)

(declare-fun b!3194958 () Bool)

(assert (=> b!3194958 (= e!1991809 (and (inv!48877 (h!41454 tokens!494)) e!1991817 tp!1010488))))

(declare-fun b!3194959 () Bool)

(declare-fun res!1299941 () Bool)

(assert (=> b!3194959 (=> (not res!1299941) (not e!1991816))))

(declare-fun forall!7330 (List!36158 Int) Bool)

(assert (=> b!3194959 (= res!1299941 (forall!7330 tokens!494 lambda!116989))))

(declare-fun b!3194960 () Bool)

(declare-fun res!1299944 () Bool)

(assert (=> b!3194960 (=> (not res!1299944) (not e!1991816))))

(assert (=> b!3194960 (= res!1299944 (isSeparator!5190 (rule!7622 separatorToken!241)))))

(declare-fun b!3194961 () Bool)

(declare-fun e!1991822 () Bool)

(assert (=> b!3194961 (= e!1991813 e!1991822)))

(declare-fun res!1299945 () Bool)

(assert (=> b!3194961 (=> res!1299945 e!1991822)))

(declare-fun lt!1076583 () List!36157)

(assert (=> b!3194961 (= res!1299945 (not (= lt!1076587 lt!1076583)))))

(assert (=> b!3194961 (= lt!1076580 lt!1076583)))

(assert (=> b!3194961 (= lt!1076583 (++!8622 lt!1076577 lt!1076592))))

(declare-fun lt!1076585 () Unit!50426)

(declare-fun lemmaConcatAssociativity!1704 (List!36157 List!36157 List!36157) Unit!50426)

(assert (=> b!3194961 (= lt!1076585 (lemmaConcatAssociativity!1704 lt!1076577 lt!1076594 lt!1076581))))

(declare-fun b!3194962 () Bool)

(assert (=> b!3194962 (= e!1991822 (not (= lt!1076594 Nil!36033)))))

(declare-fun lt!1076573 () List!36157)

(declare-fun usedCharacters!506 (Regex!9949) List!36157)

(assert (=> b!3194962 (= lt!1076573 (usedCharacters!506 (regex!5190 (rule!7622 separatorToken!241))))))

(assert (=> b!3194962 e!1991814))

(declare-fun res!1299938 () Bool)

(assert (=> b!3194962 (=> (not res!1299938) (not e!1991814))))

(declare-fun isDefined!5518 (Option!7071) Bool)

(assert (=> b!3194962 (= res!1299938 (isDefined!5518 lt!1076582))))

(declare-fun getRuleFromTag!895 (LexerInterface!4779 List!36159 String!40434) Option!7071)

(assert (=> b!3194962 (= lt!1076582 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))))

(declare-fun lt!1076586 () Unit!50426)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!895 (LexerInterface!4779 List!36159 List!36157 Token!9746) Unit!50426)

(assert (=> b!3194962 (= lt!1076586 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!895 thiss!18206 rules!2135 lt!1076594 separatorToken!241))))

(declare-datatypes ((tuple2!35392 0))(
  ( (tuple2!35393 (_1!20830 Token!9746) (_2!20830 List!36157)) )
))
(declare-datatypes ((Option!7072 0))(
  ( (None!7071) (Some!7071 (v!35583 tuple2!35392)) )
))
(declare-fun maxPrefixOneRule!1558 (LexerInterface!4779 Rule!10180 List!36157) Option!7072)

(declare-fun apply!8114 (TokenValueInjection!10268 BalanceConc!21124) TokenValue!5420)

(declare-fun size!27131 (List!36157) Int)

(assert (=> b!3194962 (= (maxPrefixOneRule!1558 thiss!18206 (rule!7622 (h!41454 tokens!494)) lt!1076577) (Some!7071 (tuple2!35393 (Token!9747 (apply!8114 (transformation!5190 (rule!7622 (h!41454 tokens!494))) lt!1076578) (rule!7622 (h!41454 tokens!494)) (size!27131 lt!1076577) lt!1076577) Nil!36033)))))

(declare-fun lt!1076591 () Unit!50426)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!671 (LexerInterface!4779 List!36159 List!36157 List!36157 List!36157 Rule!10180) Unit!50426)

(assert (=> b!3194962 (= lt!1076591 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!671 thiss!18206 rules!2135 lt!1076577 lt!1076577 Nil!36033 (rule!7622 (h!41454 tokens!494))))))

(assert (=> b!3194962 e!1991818))

(declare-fun res!1299948 () Bool)

(assert (=> b!3194962 (=> (not res!1299948) (not e!1991818))))

(assert (=> b!3194962 (= res!1299948 (isDefined!5518 lt!1076593))))

(assert (=> b!3194962 (= lt!1076593 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun lt!1076590 () Unit!50426)

(assert (=> b!3194962 (= lt!1076590 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!895 thiss!18206 rules!2135 lt!1076577 (h!41454 tokens!494)))))

(declare-fun lt!1076576 () Unit!50426)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!818 (LexerInterface!4779 List!36159 List!36158 Token!9746) Unit!50426)

(assert (=> b!3194962 (= lt!1076576 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!818 thiss!18206 rules!2135 tokens!494 (h!41454 tokens!494)))))

(assert (=> b!3194963 (= e!1991812 (and tp!1010487 tp!1010484))))

(declare-fun b!3194964 () Bool)

(declare-fun res!1299950 () Bool)

(assert (=> b!3194964 (=> (not res!1299950) (not e!1991816))))

(assert (=> b!3194964 (= res!1299950 (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 separatorToken!241))))

(assert (= (and start!299666 res!1299940) b!3194941))

(assert (= (and b!3194941 res!1299933) b!3194954))

(assert (= (and b!3194954 res!1299934) b!3194947))

(assert (= (and b!3194947 res!1299951) b!3194964))

(assert (= (and b!3194964 res!1299950) b!3194960))

(assert (= (and b!3194960 res!1299944) b!3194959))

(assert (= (and b!3194959 res!1299941) b!3194948))

(assert (= (and b!3194948 res!1299952) b!3194934))

(assert (= (and b!3194934 res!1299949) b!3194952))

(assert (= (and b!3194952 (not res!1299942)) b!3194937))

(assert (= (and b!3194937 (not res!1299937)) b!3194940))

(assert (= (and b!3194940 (not res!1299932)) b!3194956))

(assert (= (and b!3194956 (not res!1299936)) b!3194945))

(assert (= (and b!3194945 (not res!1299943)) b!3194943))

(assert (= (and b!3194943 (not res!1299935)) b!3194946))

(assert (= (and b!3194946 (not res!1299947)) b!3194961))

(assert (= (and b!3194961 (not res!1299945)) b!3194962))

(assert (= (and b!3194962 res!1299948) b!3194942))

(assert (= (and b!3194942 res!1299939) b!3194936))

(assert (= (and b!3194962 res!1299938) b!3194950))

(assert (= (and b!3194950 res!1299946) b!3194938))

(assert (= b!3194949 b!3194963))

(assert (= b!3194953 b!3194949))

(assert (= (and start!299666 ((_ is Cons!36035) rules!2135)) b!3194953))

(assert (= b!3194939 b!3194955))

(assert (= b!3194944 b!3194939))

(assert (= b!3194958 b!3194944))

(assert (= (and start!299666 ((_ is Cons!36034) tokens!494)) b!3194958))

(assert (= b!3194951 b!3194957))

(assert (= b!3194935 b!3194951))

(assert (= start!299666 b!3194935))

(declare-fun m!3454803 () Bool)

(assert (=> b!3194964 m!3454803))

(declare-fun m!3454805 () Bool)

(assert (=> b!3194956 m!3454805))

(declare-fun m!3454807 () Bool)

(assert (=> b!3194956 m!3454807))

(declare-fun m!3454809 () Bool)

(assert (=> b!3194956 m!3454809))

(declare-fun m!3454811 () Bool)

(assert (=> b!3194943 m!3454811))

(declare-fun m!3454813 () Bool)

(assert (=> b!3194943 m!3454813))

(declare-fun m!3454815 () Bool)

(assert (=> b!3194943 m!3454815))

(declare-fun m!3454817 () Bool)

(assert (=> b!3194943 m!3454817))

(assert (=> b!3194943 m!3454811))

(declare-fun m!3454819 () Bool)

(assert (=> b!3194943 m!3454819))

(declare-fun m!3454821 () Bool)

(assert (=> b!3194943 m!3454821))

(assert (=> b!3194943 m!3454813))

(declare-fun m!3454823 () Bool)

(assert (=> b!3194943 m!3454823))

(declare-fun m!3454825 () Bool)

(assert (=> b!3194943 m!3454825))

(assert (=> b!3194943 m!3454821))

(declare-fun m!3454827 () Bool)

(assert (=> b!3194943 m!3454827))

(assert (=> b!3194943 m!3454819))

(assert (=> b!3194943 m!3454825))

(declare-fun m!3454829 () Bool)

(assert (=> b!3194943 m!3454829))

(declare-fun m!3454831 () Bool)

(assert (=> b!3194950 m!3454831))

(declare-fun m!3454833 () Bool)

(assert (=> b!3194950 m!3454833))

(declare-fun m!3454835 () Bool)

(assert (=> b!3194949 m!3454835))

(declare-fun m!3454837 () Bool)

(assert (=> b!3194949 m!3454837))

(declare-fun m!3454839 () Bool)

(assert (=> b!3194946 m!3454839))

(assert (=> b!3194946 m!3454839))

(declare-fun m!3454841 () Bool)

(assert (=> b!3194946 m!3454841))

(declare-fun m!3454843 () Bool)

(assert (=> b!3194951 m!3454843))

(declare-fun m!3454845 () Bool)

(assert (=> b!3194951 m!3454845))

(declare-fun m!3454847 () Bool)

(assert (=> b!3194961 m!3454847))

(declare-fun m!3454849 () Bool)

(assert (=> b!3194961 m!3454849))

(declare-fun m!3454851 () Bool)

(assert (=> b!3194952 m!3454851))

(declare-fun m!3454853 () Bool)

(assert (=> b!3194952 m!3454853))

(declare-fun m!3454855 () Bool)

(assert (=> b!3194952 m!3454855))

(declare-fun m!3454857 () Bool)

(assert (=> b!3194952 m!3454857))

(declare-fun m!3454859 () Bool)

(assert (=> b!3194952 m!3454859))

(declare-fun m!3454861 () Bool)

(assert (=> b!3194962 m!3454861))

(declare-fun m!3454863 () Bool)

(assert (=> b!3194962 m!3454863))

(declare-fun m!3454865 () Bool)

(assert (=> b!3194962 m!3454865))

(declare-fun m!3454867 () Bool)

(assert (=> b!3194962 m!3454867))

(declare-fun m!3454869 () Bool)

(assert (=> b!3194962 m!3454869))

(declare-fun m!3454871 () Bool)

(assert (=> b!3194962 m!3454871))

(declare-fun m!3454873 () Bool)

(assert (=> b!3194962 m!3454873))

(declare-fun m!3454875 () Bool)

(assert (=> b!3194962 m!3454875))

(declare-fun m!3454877 () Bool)

(assert (=> b!3194962 m!3454877))

(declare-fun m!3454879 () Bool)

(assert (=> b!3194962 m!3454879))

(declare-fun m!3454881 () Bool)

(assert (=> b!3194962 m!3454881))

(declare-fun m!3454883 () Bool)

(assert (=> b!3194962 m!3454883))

(declare-fun m!3454885 () Bool)

(assert (=> b!3194958 m!3454885))

(declare-fun m!3454887 () Bool)

(assert (=> b!3194954 m!3454887))

(declare-fun m!3454889 () Bool)

(assert (=> b!3194937 m!3454889))

(assert (=> b!3194937 m!3454889))

(declare-fun m!3454891 () Bool)

(assert (=> b!3194937 m!3454891))

(declare-fun m!3454893 () Bool)

(assert (=> start!299666 m!3454893))

(declare-fun m!3454895 () Bool)

(assert (=> b!3194935 m!3454895))

(declare-fun m!3454897 () Bool)

(assert (=> b!3194945 m!3454897))

(declare-fun m!3454899 () Bool)

(assert (=> b!3194945 m!3454899))

(declare-fun m!3454901 () Bool)

(assert (=> b!3194959 m!3454901))

(declare-fun m!3454903 () Bool)

(assert (=> b!3194940 m!3454903))

(declare-fun m!3454905 () Bool)

(assert (=> b!3194948 m!3454905))

(declare-fun m!3454907 () Bool)

(assert (=> b!3194947 m!3454907))

(assert (=> b!3194947 m!3454907))

(declare-fun m!3454909 () Bool)

(assert (=> b!3194947 m!3454909))

(declare-fun m!3454911 () Bool)

(assert (=> b!3194944 m!3454911))

(declare-fun m!3454913 () Bool)

(assert (=> b!3194939 m!3454913))

(declare-fun m!3454915 () Bool)

(assert (=> b!3194939 m!3454915))

(declare-fun m!3454917 () Bool)

(assert (=> b!3194941 m!3454917))

(declare-fun m!3454919 () Bool)

(assert (=> b!3194942 m!3454919))

(declare-fun m!3454921 () Bool)

(assert (=> b!3194942 m!3454921))

(check-sat b_and!212017 (not b!3194949) (not b!3194942) (not b_next!85573) (not b!3194940) b_and!212013 (not b!3194935) (not b!3194939) (not b!3194941) (not b!3194951) (not b!3194953) (not b!3194945) (not b!3194961) (not b!3194962) (not b!3194946) (not b!3194964) (not b!3194954) (not b!3194948) (not b!3194952) (not b_next!85579) (not b!3194956) (not b_next!85571) (not b!3194947) (not start!299666) (not b_next!85577) (not b_next!85575) (not b!3194950) (not b!3194937) b_and!212011 (not b!3194958) (not b_next!85569) (not b!3194943) b_and!212015 b_and!212009 b_and!212007 (not b!3194959) (not b!3194944))
(check-sat b_and!212017 (not b_next!85573) b_and!212013 (not b_next!85579) (not b_next!85571) b_and!212015 (not b_next!85577) (not b_next!85575) b_and!212011 (not b_next!85569) b_and!212009 b_and!212007)
(get-model)

(declare-fun d!873466 () Bool)

(declare-fun res!1299970 () Bool)

(declare-fun e!1991837 () Bool)

(assert (=> d!873466 (=> res!1299970 e!1991837)))

(assert (=> d!873466 (= res!1299970 ((_ is Nil!36034) tokens!494))))

(assert (=> d!873466 (= (forall!7330 tokens!494 lambda!116989) e!1991837)))

(declare-fun b!3194969 () Bool)

(declare-fun e!1991838 () Bool)

(assert (=> b!3194969 (= e!1991837 e!1991838)))

(declare-fun res!1299971 () Bool)

(assert (=> b!3194969 (=> (not res!1299971) (not e!1991838))))

(declare-fun dynLambda!14501 (Int Token!9746) Bool)

(assert (=> b!3194969 (= res!1299971 (dynLambda!14501 lambda!116989 (h!41454 tokens!494)))))

(declare-fun b!3194970 () Bool)

(assert (=> b!3194970 (= e!1991838 (forall!7330 (t!236613 tokens!494) lambda!116989))))

(assert (= (and d!873466 (not res!1299970)) b!3194969))

(assert (= (and b!3194969 res!1299971) b!3194970))

(declare-fun b_lambda!87147 () Bool)

(assert (=> (not b_lambda!87147) (not b!3194969)))

(declare-fun m!3454923 () Bool)

(assert (=> b!3194969 m!3454923))

(declare-fun m!3454925 () Bool)

(assert (=> b!3194970 m!3454925))

(assert (=> b!3194959 d!873466))

(declare-fun d!873468 () Bool)

(declare-fun list!12801 (Conc!10755) List!36157)

(assert (=> d!873468 (= (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12801 (c!536197 (charsOf!3206 (h!41454 tokens!494)))))))

(declare-fun bs!540486 () Bool)

(assert (= bs!540486 d!873468))

(declare-fun m!3454927 () Bool)

(assert (=> bs!540486 m!3454927))

(assert (=> b!3194937 d!873468))

(declare-fun d!873470 () Bool)

(declare-fun lt!1076597 () BalanceConc!21124)

(assert (=> d!873470 (= (list!12799 lt!1076597) (originalCharacters!5904 (h!41454 tokens!494)))))

(declare-fun dynLambda!14502 (Int TokenValue!5420) BalanceConc!21124)

(assert (=> d!873470 (= lt!1076597 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))))

(assert (=> d!873470 (= (charsOf!3206 (h!41454 tokens!494)) lt!1076597)))

(declare-fun b_lambda!87149 () Bool)

(assert (=> (not b_lambda!87149) (not d!873470)))

(declare-fun t!236616 () Bool)

(declare-fun tb!156115 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236616) tb!156115))

(declare-fun b!3194975 () Bool)

(declare-fun e!1991841 () Bool)

(declare-fun tp!1010497 () Bool)

(declare-fun inv!48878 (Conc!10755) Bool)

(assert (=> b!3194975 (= e!1991841 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))) tp!1010497))))

(declare-fun result!198344 () Bool)

(declare-fun inv!48880 (BalanceConc!21124) Bool)

(assert (=> tb!156115 (= result!198344 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))) e!1991841))))

(assert (= tb!156115 b!3194975))

(declare-fun m!3454929 () Bool)

(assert (=> b!3194975 m!3454929))

(declare-fun m!3454931 () Bool)

(assert (=> tb!156115 m!3454931))

(assert (=> d!873470 t!236616))

(declare-fun b_and!212019 () Bool)

(assert (= b_and!212009 (and (=> t!236616 result!198344) b_and!212019)))

(declare-fun t!236618 () Bool)

(declare-fun tb!156117 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236618) tb!156117))

(declare-fun result!198348 () Bool)

(assert (= result!198348 result!198344))

(assert (=> d!873470 t!236618))

(declare-fun b_and!212021 () Bool)

(assert (= b_and!212013 (and (=> t!236618 result!198348) b_and!212021)))

(declare-fun t!236620 () Bool)

(declare-fun tb!156119 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236620) tb!156119))

(declare-fun result!198350 () Bool)

(assert (= result!198350 result!198344))

(assert (=> d!873470 t!236620))

(declare-fun b_and!212023 () Bool)

(assert (= b_and!212017 (and (=> t!236620 result!198350) b_and!212023)))

(declare-fun m!3454933 () Bool)

(assert (=> d!873470 m!3454933))

(declare-fun m!3454935 () Bool)

(assert (=> d!873470 m!3454935))

(assert (=> b!3194937 d!873470))

(declare-fun d!873472 () Bool)

(declare-fun res!1299976 () Bool)

(declare-fun e!1991844 () Bool)

(assert (=> d!873472 (=> (not res!1299976) (not e!1991844))))

(declare-fun isEmpty!20115 (List!36157) Bool)

(assert (=> d!873472 (= res!1299976 (not (isEmpty!20115 (originalCharacters!5904 (h!41454 tokens!494)))))))

(assert (=> d!873472 (= (inv!48877 (h!41454 tokens!494)) e!1991844)))

(declare-fun b!3194980 () Bool)

(declare-fun res!1299977 () Bool)

(assert (=> b!3194980 (=> (not res!1299977) (not e!1991844))))

(assert (=> b!3194980 (= res!1299977 (= (originalCharacters!5904 (h!41454 tokens!494)) (list!12799 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))))))

(declare-fun b!3194981 () Bool)

(assert (=> b!3194981 (= e!1991844 (= (size!27130 (h!41454 tokens!494)) (size!27131 (originalCharacters!5904 (h!41454 tokens!494)))))))

(assert (= (and d!873472 res!1299976) b!3194980))

(assert (= (and b!3194980 res!1299977) b!3194981))

(declare-fun b_lambda!87151 () Bool)

(assert (=> (not b_lambda!87151) (not b!3194980)))

(assert (=> b!3194980 t!236616))

(declare-fun b_and!212025 () Bool)

(assert (= b_and!212019 (and (=> t!236616 result!198344) b_and!212025)))

(assert (=> b!3194980 t!236618))

(declare-fun b_and!212027 () Bool)

(assert (= b_and!212021 (and (=> t!236618 result!198348) b_and!212027)))

(assert (=> b!3194980 t!236620))

(declare-fun b_and!212029 () Bool)

(assert (= b_and!212023 (and (=> t!236620 result!198350) b_and!212029)))

(declare-fun m!3454937 () Bool)

(assert (=> d!873472 m!3454937))

(assert (=> b!3194980 m!3454935))

(assert (=> b!3194980 m!3454935))

(declare-fun m!3454939 () Bool)

(assert (=> b!3194980 m!3454939))

(declare-fun m!3454941 () Bool)

(assert (=> b!3194981 m!3454941))

(assert (=> b!3194958 d!873472))

(declare-fun d!873474 () Bool)

(declare-fun res!1299980 () Bool)

(declare-fun e!1991847 () Bool)

(assert (=> d!873474 (=> (not res!1299980) (not e!1991847))))

(declare-fun rulesValid!1906 (LexerInterface!4779 List!36159) Bool)

(assert (=> d!873474 (= res!1299980 (rulesValid!1906 thiss!18206 rules!2135))))

(assert (=> d!873474 (= (rulesInvariant!4176 thiss!18206 rules!2135) e!1991847)))

(declare-fun b!3194984 () Bool)

(declare-datatypes ((List!36160 0))(
  ( (Nil!36036) (Cons!36036 (h!41456 String!40434) (t!236709 List!36160)) )
))
(declare-fun noDuplicateTag!1902 (LexerInterface!4779 List!36159 List!36160) Bool)

(assert (=> b!3194984 (= e!1991847 (noDuplicateTag!1902 thiss!18206 rules!2135 Nil!36036))))

(assert (= (and d!873474 res!1299980) b!3194984))

(declare-fun m!3454943 () Bool)

(assert (=> d!873474 m!3454943))

(declare-fun m!3454945 () Bool)

(assert (=> b!3194984 m!3454945))

(assert (=> b!3194954 d!873474))

(declare-fun b!3194995 () Bool)

(declare-fun e!1991855 () Bool)

(declare-fun inv!15 (TokenValue!5420) Bool)

(assert (=> b!3194995 (= e!1991855 (inv!15 (value!168375 separatorToken!241)))))

(declare-fun d!873476 () Bool)

(declare-fun c!536204 () Bool)

(assert (=> d!873476 (= c!536204 ((_ is IntegerValue!16260) (value!168375 separatorToken!241)))))

(declare-fun e!1991854 () Bool)

(assert (=> d!873476 (= (inv!21 (value!168375 separatorToken!241)) e!1991854)))

(declare-fun b!3194996 () Bool)

(declare-fun e!1991856 () Bool)

(assert (=> b!3194996 (= e!1991854 e!1991856)))

(declare-fun c!536203 () Bool)

(assert (=> b!3194996 (= c!536203 ((_ is IntegerValue!16261) (value!168375 separatorToken!241)))))

(declare-fun b!3194997 () Bool)

(declare-fun res!1299983 () Bool)

(assert (=> b!3194997 (=> res!1299983 e!1991855)))

(assert (=> b!3194997 (= res!1299983 (not ((_ is IntegerValue!16262) (value!168375 separatorToken!241))))))

(assert (=> b!3194997 (= e!1991856 e!1991855)))

(declare-fun b!3194998 () Bool)

(declare-fun inv!17 (TokenValue!5420) Bool)

(assert (=> b!3194998 (= e!1991856 (inv!17 (value!168375 separatorToken!241)))))

(declare-fun b!3194999 () Bool)

(declare-fun inv!16 (TokenValue!5420) Bool)

(assert (=> b!3194999 (= e!1991854 (inv!16 (value!168375 separatorToken!241)))))

(assert (= (and d!873476 c!536204) b!3194999))

(assert (= (and d!873476 (not c!536204)) b!3194996))

(assert (= (and b!3194996 c!536203) b!3194998))

(assert (= (and b!3194996 (not c!536203)) b!3194997))

(assert (= (and b!3194997 (not res!1299983)) b!3194995))

(declare-fun m!3454947 () Bool)

(assert (=> b!3194995 m!3454947))

(declare-fun m!3454949 () Bool)

(assert (=> b!3194998 m!3454949))

(declare-fun m!3454951 () Bool)

(assert (=> b!3194999 m!3454951))

(assert (=> b!3194935 d!873476))

(declare-fun lt!1076600 () Bool)

(declare-fun d!873478 () Bool)

(declare-fun isEmpty!20116 (List!36158) Bool)

(declare-fun list!12803 (BalanceConc!21126) List!36158)

(assert (=> d!873478 (= lt!1076600 (isEmpty!20116 (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578)))))))

(declare-fun isEmpty!20117 (Conc!10756) Bool)

(assert (=> d!873478 (= lt!1076600 (isEmpty!20117 (c!536198 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578)))))))

(assert (=> d!873478 (= (isEmpty!20113 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578))) lt!1076600)))

(declare-fun bs!540487 () Bool)

(assert (= bs!540487 d!873478))

(declare-fun m!3454953 () Bool)

(assert (=> bs!540487 m!3454953))

(assert (=> bs!540487 m!3454953))

(declare-fun m!3454955 () Bool)

(assert (=> bs!540487 m!3454955))

(declare-fun m!3454957 () Bool)

(assert (=> bs!540487 m!3454957))

(assert (=> b!3194956 d!873478))

(declare-fun d!873480 () Bool)

(declare-fun e!1991865 () Bool)

(assert (=> d!873480 e!1991865))

(declare-fun res!1299992 () Bool)

(assert (=> d!873480 (=> (not res!1299992) (not e!1991865))))

(declare-fun e!1991863 () Bool)

(assert (=> d!873480 (= res!1299992 e!1991863)))

(declare-fun c!536207 () Bool)

(declare-fun lt!1076605 () tuple2!35390)

(declare-fun size!27133 (BalanceConc!21126) Int)

(assert (=> d!873480 (= c!536207 (> (size!27133 (_1!20829 lt!1076605)) 0))))

(declare-fun lexTailRecV2!924 (LexerInterface!4779 List!36159 BalanceConc!21124 BalanceConc!21124 BalanceConc!21124 BalanceConc!21126) tuple2!35390)

(assert (=> d!873480 (= lt!1076605 (lexTailRecV2!924 thiss!18206 rules!2135 lt!1076578 (BalanceConc!21125 Empty!10755) lt!1076578 (BalanceConc!21127 Empty!10756)))))

(assert (=> d!873480 (= (lex!2109 thiss!18206 rules!2135 lt!1076578) lt!1076605)))

(declare-fun b!3195010 () Bool)

(assert (=> b!3195010 (= e!1991863 (= (_2!20829 lt!1076605) lt!1076578))))

(declare-fun b!3195011 () Bool)

(declare-datatypes ((tuple2!35394 0))(
  ( (tuple2!35395 (_1!20831 List!36158) (_2!20831 List!36157)) )
))
(declare-fun lexList!1304 (LexerInterface!4779 List!36159 List!36157) tuple2!35394)

(assert (=> b!3195011 (= e!1991865 (= (list!12799 (_2!20829 lt!1076605)) (_2!20831 (lexList!1304 thiss!18206 rules!2135 (list!12799 lt!1076578)))))))

(declare-fun b!3195012 () Bool)

(declare-fun res!1299991 () Bool)

(assert (=> b!3195012 (=> (not res!1299991) (not e!1991865))))

(assert (=> b!3195012 (= res!1299991 (= (list!12803 (_1!20829 lt!1076605)) (_1!20831 (lexList!1304 thiss!18206 rules!2135 (list!12799 lt!1076578)))))))

(declare-fun b!3195013 () Bool)

(declare-fun e!1991864 () Bool)

(assert (=> b!3195013 (= e!1991864 (not (isEmpty!20113 (_1!20829 lt!1076605))))))

(declare-fun b!3195014 () Bool)

(assert (=> b!3195014 (= e!1991863 e!1991864)))

(declare-fun res!1299990 () Bool)

(declare-fun size!27134 (BalanceConc!21124) Int)

(assert (=> b!3195014 (= res!1299990 (< (size!27134 (_2!20829 lt!1076605)) (size!27134 lt!1076578)))))

(assert (=> b!3195014 (=> (not res!1299990) (not e!1991864))))

(assert (= (and d!873480 c!536207) b!3195014))

(assert (= (and d!873480 (not c!536207)) b!3195010))

(assert (= (and b!3195014 res!1299990) b!3195013))

(assert (= (and d!873480 res!1299992) b!3195012))

(assert (= (and b!3195012 res!1299991) b!3195011))

(declare-fun m!3454959 () Bool)

(assert (=> d!873480 m!3454959))

(declare-fun m!3454961 () Bool)

(assert (=> d!873480 m!3454961))

(declare-fun m!3454963 () Bool)

(assert (=> b!3195011 m!3454963))

(declare-fun m!3454965 () Bool)

(assert (=> b!3195011 m!3454965))

(assert (=> b!3195011 m!3454965))

(declare-fun m!3454967 () Bool)

(assert (=> b!3195011 m!3454967))

(declare-fun m!3454969 () Bool)

(assert (=> b!3195013 m!3454969))

(declare-fun m!3454971 () Bool)

(assert (=> b!3195014 m!3454971))

(declare-fun m!3454973 () Bool)

(assert (=> b!3195014 m!3454973))

(declare-fun m!3454975 () Bool)

(assert (=> b!3195012 m!3454975))

(assert (=> b!3195012 m!3454965))

(assert (=> b!3195012 m!3454965))

(assert (=> b!3195012 m!3454967))

(assert (=> b!3194956 d!873480))

(declare-fun d!873482 () Bool)

(declare-fun fromListB!1524 (List!36157) BalanceConc!21124)

(assert (=> d!873482 (= (seqFromList!3452 lt!1076577) (fromListB!1524 lt!1076577))))

(declare-fun bs!540488 () Bool)

(assert (= bs!540488 d!873482))

(declare-fun m!3454977 () Bool)

(assert (=> bs!540488 m!3454977))

(assert (=> b!3194956 d!873482))

(declare-fun d!873484 () Bool)

(assert (=> d!873484 (= (isEmpty!20112 rules!2135) ((_ is Nil!36035) rules!2135))))

(assert (=> b!3194941 d!873484))

(declare-fun d!873486 () Bool)

(declare-fun isEmpty!20118 (Option!7071) Bool)

(assert (=> d!873486 (= (isDefined!5518 lt!1076582) (not (isEmpty!20118 lt!1076582)))))

(declare-fun bs!540489 () Bool)

(assert (= bs!540489 d!873486))

(declare-fun m!3454979 () Bool)

(assert (=> bs!540489 m!3454979))

(assert (=> b!3194962 d!873486))

(declare-fun d!873488 () Bool)

(assert (=> d!873488 (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 (h!41454 tokens!494))))

(declare-fun lt!1076608 () Unit!50426)

(declare-fun choose!18639 (LexerInterface!4779 List!36159 List!36158 Token!9746) Unit!50426)

(assert (=> d!873488 (= lt!1076608 (choose!18639 thiss!18206 rules!2135 tokens!494 (h!41454 tokens!494)))))

(assert (=> d!873488 (not (isEmpty!20112 rules!2135))))

(assert (=> d!873488 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!818 thiss!18206 rules!2135 tokens!494 (h!41454 tokens!494)) lt!1076608)))

(declare-fun bs!540490 () Bool)

(assert (= bs!540490 d!873488))

(assert (=> bs!540490 m!3454903))

(declare-fun m!3454981 () Bool)

(assert (=> bs!540490 m!3454981))

(assert (=> bs!540490 m!3454917))

(assert (=> b!3194962 d!873488))

(declare-fun d!873490 () Bool)

(declare-fun e!1991868 () Bool)

(assert (=> d!873490 e!1991868))

(declare-fun res!1299997 () Bool)

(assert (=> d!873490 (=> (not res!1299997) (not e!1991868))))

(assert (=> d!873490 (= res!1299997 (isDefined!5518 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))))))

(declare-fun lt!1076611 () Unit!50426)

(declare-fun choose!18640 (LexerInterface!4779 List!36159 List!36157 Token!9746) Unit!50426)

(assert (=> d!873490 (= lt!1076611 (choose!18640 thiss!18206 rules!2135 lt!1076577 (h!41454 tokens!494)))))

(assert (=> d!873490 (rulesInvariant!4176 thiss!18206 rules!2135)))

(assert (=> d!873490 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!895 thiss!18206 rules!2135 lt!1076577 (h!41454 tokens!494)) lt!1076611)))

(declare-fun b!3195019 () Bool)

(declare-fun res!1299998 () Bool)

(assert (=> b!3195019 (=> (not res!1299998) (not e!1991868))))

(assert (=> b!3195019 (= res!1299998 (matchR!4583 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))) (list!12799 (charsOf!3206 (h!41454 tokens!494)))))))

(declare-fun b!3195020 () Bool)

(assert (=> b!3195020 (= e!1991868 (= (rule!7622 (h!41454 tokens!494)) (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))

(assert (= (and d!873490 res!1299997) b!3195019))

(assert (= (and b!3195019 res!1299998) b!3195020))

(assert (=> d!873490 m!3454863))

(assert (=> d!873490 m!3454863))

(declare-fun m!3454983 () Bool)

(assert (=> d!873490 m!3454983))

(declare-fun m!3454985 () Bool)

(assert (=> d!873490 m!3454985))

(assert (=> d!873490 m!3454887))

(assert (=> b!3195019 m!3454889))

(assert (=> b!3195019 m!3454891))

(assert (=> b!3195019 m!3454863))

(assert (=> b!3195019 m!3454863))

(declare-fun m!3454987 () Bool)

(assert (=> b!3195019 m!3454987))

(assert (=> b!3195019 m!3454889))

(assert (=> b!3195019 m!3454891))

(declare-fun m!3454989 () Bool)

(assert (=> b!3195019 m!3454989))

(assert (=> b!3195020 m!3454863))

(assert (=> b!3195020 m!3454863))

(assert (=> b!3195020 m!3454987))

(assert (=> b!3194962 d!873490))

(declare-fun b!3195039 () Bool)

(declare-fun res!1300018 () Bool)

(declare-fun e!1991879 () Bool)

(assert (=> b!3195039 (=> (not res!1300018) (not e!1991879))))

(declare-fun lt!1076622 () Option!7072)

(declare-fun get!11459 (Option!7072) tuple2!35392)

(assert (=> b!3195039 (= res!1300018 (= (value!168375 (_1!20830 (get!11459 lt!1076622))) (apply!8114 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))) (seqFromList!3452 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622)))))))))

(declare-fun b!3195040 () Bool)

(assert (=> b!3195040 (= e!1991879 (= (size!27130 (_1!20830 (get!11459 lt!1076622))) (size!27131 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622))))))))

(declare-fun b!3195041 () Bool)

(declare-fun res!1300013 () Bool)

(assert (=> b!3195041 (=> (not res!1300013) (not e!1991879))))

(assert (=> b!3195041 (= res!1300013 (< (size!27131 (_2!20830 (get!11459 lt!1076622))) (size!27131 lt!1076577)))))

(declare-fun b!3195042 () Bool)

(declare-fun res!1300019 () Bool)

(assert (=> b!3195042 (=> (not res!1300019) (not e!1991879))))

(assert (=> b!3195042 (= res!1300019 (= (++!8622 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622)))) (_2!20830 (get!11459 lt!1076622))) lt!1076577))))

(declare-fun b!3195043 () Bool)

(declare-fun res!1300014 () Bool)

(assert (=> b!3195043 (=> (not res!1300014) (not e!1991879))))

(assert (=> b!3195043 (= res!1300014 (= (rule!7622 (_1!20830 (get!11459 lt!1076622))) (rule!7622 (h!41454 tokens!494))))))

(declare-fun b!3195044 () Bool)

(declare-fun e!1991878 () Bool)

(declare-datatypes ((tuple2!35396 0))(
  ( (tuple2!35397 (_1!20832 List!36157) (_2!20832 List!36157)) )
))
(declare-fun findLongestMatchInner!822 (Regex!9949 List!36157 Int List!36157 List!36157 Int) tuple2!35396)

(assert (=> b!3195044 (= e!1991878 (matchR!4583 (regex!5190 (rule!7622 (h!41454 tokens!494))) (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))

(declare-fun b!3195045 () Bool)

(declare-fun e!1991880 () Bool)

(assert (=> b!3195045 (= e!1991880 e!1991879)))

(declare-fun res!1300016 () Bool)

(assert (=> b!3195045 (=> (not res!1300016) (not e!1991879))))

(assert (=> b!3195045 (= res!1300016 (matchR!4583 (regex!5190 (rule!7622 (h!41454 tokens!494))) (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))))))

(declare-fun b!3195046 () Bool)

(declare-fun e!1991877 () Option!7072)

(declare-fun lt!1076623 () tuple2!35396)

(assert (=> b!3195046 (= e!1991877 (Some!7071 (tuple2!35393 (Token!9747 (apply!8114 (transformation!5190 (rule!7622 (h!41454 tokens!494))) (seqFromList!3452 (_1!20832 lt!1076623))) (rule!7622 (h!41454 tokens!494)) (size!27134 (seqFromList!3452 (_1!20832 lt!1076623))) (_1!20832 lt!1076623)) (_2!20832 lt!1076623))))))

(declare-fun lt!1076625 () Unit!50426)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!795 (Regex!9949 List!36157) Unit!50426)

(assert (=> b!3195046 (= lt!1076625 (longestMatchIsAcceptedByMatchOrIsEmpty!795 (regex!5190 (rule!7622 (h!41454 tokens!494))) lt!1076577))))

(declare-fun res!1300015 () Bool)

(assert (=> b!3195046 (= res!1300015 (isEmpty!20115 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))

(assert (=> b!3195046 (=> res!1300015 e!1991878)))

(assert (=> b!3195046 e!1991878))

(declare-fun lt!1076624 () Unit!50426)

(assert (=> b!3195046 (= lt!1076624 lt!1076625)))

(declare-fun lt!1076626 () Unit!50426)

(declare-fun lemmaSemiInverse!1166 (TokenValueInjection!10268 BalanceConc!21124) Unit!50426)

(assert (=> b!3195046 (= lt!1076626 (lemmaSemiInverse!1166 (transformation!5190 (rule!7622 (h!41454 tokens!494))) (seqFromList!3452 (_1!20832 lt!1076623))))))

(declare-fun b!3195047 () Bool)

(assert (=> b!3195047 (= e!1991877 None!7071)))

(declare-fun d!873492 () Bool)

(assert (=> d!873492 e!1991880))

(declare-fun res!1300017 () Bool)

(assert (=> d!873492 (=> res!1300017 e!1991880)))

(declare-fun isEmpty!20119 (Option!7072) Bool)

(assert (=> d!873492 (= res!1300017 (isEmpty!20119 lt!1076622))))

(assert (=> d!873492 (= lt!1076622 e!1991877)))

(declare-fun c!536210 () Bool)

(assert (=> d!873492 (= c!536210 (isEmpty!20115 (_1!20832 lt!1076623)))))

(declare-fun findLongestMatch!737 (Regex!9949 List!36157) tuple2!35396)

(assert (=> d!873492 (= lt!1076623 (findLongestMatch!737 (regex!5190 (rule!7622 (h!41454 tokens!494))) lt!1076577))))

(declare-fun ruleValid!1635 (LexerInterface!4779 Rule!10180) Bool)

(assert (=> d!873492 (ruleValid!1635 thiss!18206 (rule!7622 (h!41454 tokens!494)))))

(assert (=> d!873492 (= (maxPrefixOneRule!1558 thiss!18206 (rule!7622 (h!41454 tokens!494)) lt!1076577) lt!1076622)))

(assert (= (and d!873492 c!536210) b!3195047))

(assert (= (and d!873492 (not c!536210)) b!3195046))

(assert (= (and b!3195046 (not res!1300015)) b!3195044))

(assert (= (and d!873492 (not res!1300017)) b!3195045))

(assert (= (and b!3195045 res!1300016) b!3195042))

(assert (= (and b!3195042 res!1300019) b!3195041))

(assert (= (and b!3195041 res!1300013) b!3195043))

(assert (= (and b!3195043 res!1300014) b!3195039))

(assert (= (and b!3195039 res!1300018) b!3195040))

(declare-fun m!3454991 () Bool)

(assert (=> d!873492 m!3454991))

(declare-fun m!3454993 () Bool)

(assert (=> d!873492 m!3454993))

(declare-fun m!3454995 () Bool)

(assert (=> d!873492 m!3454995))

(declare-fun m!3454997 () Bool)

(assert (=> d!873492 m!3454997))

(declare-fun m!3454999 () Bool)

(assert (=> b!3195043 m!3454999))

(assert (=> b!3195042 m!3454999))

(declare-fun m!3455001 () Bool)

(assert (=> b!3195042 m!3455001))

(assert (=> b!3195042 m!3455001))

(declare-fun m!3455003 () Bool)

(assert (=> b!3195042 m!3455003))

(assert (=> b!3195042 m!3455003))

(declare-fun m!3455005 () Bool)

(assert (=> b!3195042 m!3455005))

(assert (=> b!3195039 m!3454999))

(declare-fun m!3455007 () Bool)

(assert (=> b!3195039 m!3455007))

(assert (=> b!3195039 m!3455007))

(declare-fun m!3455009 () Bool)

(assert (=> b!3195039 m!3455009))

(assert (=> b!3195040 m!3454999))

(declare-fun m!3455011 () Bool)

(assert (=> b!3195040 m!3455011))

(assert (=> b!3195041 m!3454999))

(declare-fun m!3455013 () Bool)

(assert (=> b!3195041 m!3455013))

(assert (=> b!3195041 m!3454873))

(assert (=> b!3195045 m!3454999))

(assert (=> b!3195045 m!3455001))

(assert (=> b!3195045 m!3455001))

(assert (=> b!3195045 m!3455003))

(assert (=> b!3195045 m!3455003))

(declare-fun m!3455015 () Bool)

(assert (=> b!3195045 m!3455015))

(declare-fun m!3455017 () Bool)

(assert (=> b!3195046 m!3455017))

(declare-fun m!3455019 () Bool)

(assert (=> b!3195046 m!3455019))

(assert (=> b!3195046 m!3455017))

(declare-fun m!3455021 () Bool)

(assert (=> b!3195046 m!3455021))

(assert (=> b!3195046 m!3455017))

(declare-fun m!3455023 () Bool)

(assert (=> b!3195046 m!3455023))

(declare-fun m!3455025 () Bool)

(assert (=> b!3195046 m!3455025))

(assert (=> b!3195046 m!3455023))

(assert (=> b!3195046 m!3454873))

(declare-fun m!3455027 () Bool)

(assert (=> b!3195046 m!3455027))

(assert (=> b!3195046 m!3454873))

(assert (=> b!3195046 m!3455017))

(declare-fun m!3455029 () Bool)

(assert (=> b!3195046 m!3455029))

(declare-fun m!3455031 () Bool)

(assert (=> b!3195046 m!3455031))

(assert (=> b!3195044 m!3455023))

(assert (=> b!3195044 m!3454873))

(assert (=> b!3195044 m!3455023))

(assert (=> b!3195044 m!3454873))

(assert (=> b!3195044 m!3455027))

(declare-fun m!3455033 () Bool)

(assert (=> b!3195044 m!3455033))

(assert (=> b!3194962 d!873492))

(declare-fun d!873494 () Bool)

(assert (=> d!873494 (= (isDefined!5518 lt!1076593) (not (isEmpty!20118 lt!1076593)))))

(declare-fun bs!540491 () Bool)

(assert (= bs!540491 d!873494))

(declare-fun m!3455035 () Bool)

(assert (=> bs!540491 m!3455035))

(assert (=> b!3194962 d!873494))

(declare-fun d!873496 () Bool)

(assert (=> d!873496 (= (maxPrefixOneRule!1558 thiss!18206 (rule!7622 (h!41454 tokens!494)) lt!1076577) (Some!7071 (tuple2!35393 (Token!9747 (apply!8114 (transformation!5190 (rule!7622 (h!41454 tokens!494))) (seqFromList!3452 lt!1076577)) (rule!7622 (h!41454 tokens!494)) (size!27131 lt!1076577) lt!1076577) Nil!36033)))))

(declare-fun lt!1076629 () Unit!50426)

(declare-fun choose!18641 (LexerInterface!4779 List!36159 List!36157 List!36157 List!36157 Rule!10180) Unit!50426)

(assert (=> d!873496 (= lt!1076629 (choose!18641 thiss!18206 rules!2135 lt!1076577 lt!1076577 Nil!36033 (rule!7622 (h!41454 tokens!494))))))

(assert (=> d!873496 (not (isEmpty!20112 rules!2135))))

(assert (=> d!873496 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!671 thiss!18206 rules!2135 lt!1076577 lt!1076577 Nil!36033 (rule!7622 (h!41454 tokens!494))) lt!1076629)))

(declare-fun bs!540492 () Bool)

(assert (= bs!540492 d!873496))

(assert (=> bs!540492 m!3454809))

(declare-fun m!3455037 () Bool)

(assert (=> bs!540492 m!3455037))

(declare-fun m!3455039 () Bool)

(assert (=> bs!540492 m!3455039))

(assert (=> bs!540492 m!3454809))

(assert (=> bs!540492 m!3454873))

(assert (=> bs!540492 m!3454917))

(assert (=> bs!540492 m!3454869))

(assert (=> b!3194962 d!873496))

(declare-fun b!3195060 () Bool)

(declare-fun e!1991891 () Option!7071)

(assert (=> b!3195060 (= e!1991891 (Some!7070 (h!41455 rules!2135)))))

(declare-fun b!3195061 () Bool)

(declare-fun lt!1076638 () Unit!50426)

(declare-fun lt!1076637 () Unit!50426)

(assert (=> b!3195061 (= lt!1076638 lt!1076637)))

(assert (=> b!3195061 (rulesInvariant!4176 thiss!18206 (t!236614 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!341 (LexerInterface!4779 Rule!10180 List!36159) Unit!50426)

(assert (=> b!3195061 (= lt!1076637 (lemmaInvariantOnRulesThenOnTail!341 thiss!18206 (h!41455 rules!2135) (t!236614 rules!2135)))))

(declare-fun e!1991892 () Option!7071)

(assert (=> b!3195061 (= e!1991892 (getRuleFromTag!895 thiss!18206 (t!236614 rules!2135) (tag!5708 (rule!7622 separatorToken!241))))))

(declare-fun b!3195062 () Bool)

(declare-fun e!1991890 () Bool)

(declare-fun e!1991889 () Bool)

(assert (=> b!3195062 (= e!1991890 e!1991889)))

(declare-fun res!1300024 () Bool)

(assert (=> b!3195062 (=> (not res!1300024) (not e!1991889))))

(declare-fun lt!1076636 () Option!7071)

(declare-fun contains!6396 (List!36159 Rule!10180) Bool)

(assert (=> b!3195062 (= res!1300024 (contains!6396 rules!2135 (get!11458 lt!1076636)))))

(declare-fun b!3195063 () Bool)

(assert (=> b!3195063 (= e!1991889 (= (tag!5708 (get!11458 lt!1076636)) (tag!5708 (rule!7622 separatorToken!241))))))

(declare-fun b!3195064 () Bool)

(assert (=> b!3195064 (= e!1991891 e!1991892)))

(declare-fun c!536216 () Bool)

(assert (=> b!3195064 (= c!536216 (and ((_ is Cons!36035) rules!2135) (not (= (tag!5708 (h!41455 rules!2135)) (tag!5708 (rule!7622 separatorToken!241))))))))

(declare-fun b!3195065 () Bool)

(assert (=> b!3195065 (= e!1991892 None!7070)))

(declare-fun d!873498 () Bool)

(assert (=> d!873498 e!1991890))

(declare-fun res!1300025 () Bool)

(assert (=> d!873498 (=> res!1300025 e!1991890)))

(assert (=> d!873498 (= res!1300025 (isEmpty!20118 lt!1076636))))

(assert (=> d!873498 (= lt!1076636 e!1991891)))

(declare-fun c!536215 () Bool)

(assert (=> d!873498 (= c!536215 (and ((_ is Cons!36035) rules!2135) (= (tag!5708 (h!41455 rules!2135)) (tag!5708 (rule!7622 separatorToken!241)))))))

(assert (=> d!873498 (rulesInvariant!4176 thiss!18206 rules!2135)))

(assert (=> d!873498 (= (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))) lt!1076636)))

(assert (= (and d!873498 c!536215) b!3195060))

(assert (= (and d!873498 (not c!536215)) b!3195064))

(assert (= (and b!3195064 c!536216) b!3195061))

(assert (= (and b!3195064 (not c!536216)) b!3195065))

(assert (= (and d!873498 (not res!1300025)) b!3195062))

(assert (= (and b!3195062 res!1300024) b!3195063))

(declare-fun m!3455041 () Bool)

(assert (=> b!3195061 m!3455041))

(declare-fun m!3455043 () Bool)

(assert (=> b!3195061 m!3455043))

(declare-fun m!3455045 () Bool)

(assert (=> b!3195061 m!3455045))

(declare-fun m!3455047 () Bool)

(assert (=> b!3195062 m!3455047))

(assert (=> b!3195062 m!3455047))

(declare-fun m!3455049 () Bool)

(assert (=> b!3195062 m!3455049))

(assert (=> b!3195063 m!3455047))

(declare-fun m!3455051 () Bool)

(assert (=> d!873498 m!3455051))

(assert (=> d!873498 m!3454887))

(assert (=> b!3194962 d!873498))

(declare-fun b!3195084 () Bool)

(declare-fun e!1991904 () List!36157)

(declare-fun call!231395 () List!36157)

(assert (=> b!3195084 (= e!1991904 call!231395)))

(declare-fun b!3195085 () Bool)

(declare-fun e!1991906 () List!36157)

(assert (=> b!3195085 (= e!1991906 (Cons!36033 (c!536196 (regex!5190 (rule!7622 separatorToken!241))) Nil!36033))))

(declare-fun b!3195086 () Bool)

(declare-fun e!1991905 () List!36157)

(declare-fun call!231396 () List!36157)

(assert (=> b!3195086 (= e!1991905 call!231396)))

(declare-fun b!3195087 () Bool)

(assert (=> b!3195087 (= e!1991905 call!231396)))

(declare-fun bm!231390 () Bool)

(declare-fun call!231398 () List!36157)

(declare-fun c!536227 () Bool)

(assert (=> bm!231390 (= call!231398 (usedCharacters!506 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))))))

(declare-fun call!231397 () List!36157)

(declare-fun bm!231391 () Bool)

(assert (=> bm!231391 (= call!231396 (++!8622 (ite c!536227 call!231398 call!231397) (ite c!536227 call!231397 call!231398)))))

(declare-fun c!536226 () Bool)

(declare-fun bm!231392 () Bool)

(assert (=> bm!231392 (= call!231395 (usedCharacters!506 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))))))

(declare-fun d!873500 () Bool)

(declare-fun c!536228 () Bool)

(assert (=> d!873500 (= c!536228 (or ((_ is EmptyExpr!9949) (regex!5190 (rule!7622 separatorToken!241))) ((_ is EmptyLang!9949) (regex!5190 (rule!7622 separatorToken!241)))))))

(declare-fun e!1991903 () List!36157)

(assert (=> d!873500 (= (usedCharacters!506 (regex!5190 (rule!7622 separatorToken!241))) e!1991903)))

(declare-fun b!3195088 () Bool)

(assert (=> b!3195088 (= e!1991903 e!1991906)))

(declare-fun c!536225 () Bool)

(assert (=> b!3195088 (= c!536225 ((_ is ElementMatch!9949) (regex!5190 (rule!7622 separatorToken!241))))))

(declare-fun b!3195089 () Bool)

(assert (=> b!3195089 (= e!1991903 Nil!36033)))

(declare-fun bm!231393 () Bool)

(assert (=> bm!231393 (= call!231397 call!231395)))

(declare-fun b!3195090 () Bool)

(assert (=> b!3195090 (= e!1991904 e!1991905)))

(assert (=> b!3195090 (= c!536227 ((_ is Union!9949) (regex!5190 (rule!7622 separatorToken!241))))))

(declare-fun b!3195091 () Bool)

(assert (=> b!3195091 (= c!536226 ((_ is Star!9949) (regex!5190 (rule!7622 separatorToken!241))))))

(assert (=> b!3195091 (= e!1991906 e!1991904)))

(assert (= (and d!873500 c!536228) b!3195089))

(assert (= (and d!873500 (not c!536228)) b!3195088))

(assert (= (and b!3195088 c!536225) b!3195085))

(assert (= (and b!3195088 (not c!536225)) b!3195091))

(assert (= (and b!3195091 c!536226) b!3195084))

(assert (= (and b!3195091 (not c!536226)) b!3195090))

(assert (= (and b!3195090 c!536227) b!3195086))

(assert (= (and b!3195090 (not c!536227)) b!3195087))

(assert (= (or b!3195086 b!3195087) bm!231393))

(assert (= (or b!3195086 b!3195087) bm!231390))

(assert (= (or b!3195086 b!3195087) bm!231391))

(assert (= (or b!3195084 bm!231393) bm!231392))

(declare-fun m!3455053 () Bool)

(assert (=> bm!231390 m!3455053))

(declare-fun m!3455055 () Bool)

(assert (=> bm!231391 m!3455055))

(declare-fun m!3455057 () Bool)

(assert (=> bm!231392 m!3455057))

(assert (=> b!3194962 d!873500))

(declare-fun b!3195092 () Bool)

(declare-fun e!1991909 () Option!7071)

(assert (=> b!3195092 (= e!1991909 (Some!7070 (h!41455 rules!2135)))))

(declare-fun b!3195093 () Bool)

(declare-fun lt!1076641 () Unit!50426)

(declare-fun lt!1076640 () Unit!50426)

(assert (=> b!3195093 (= lt!1076641 lt!1076640)))

(assert (=> b!3195093 (rulesInvariant!4176 thiss!18206 (t!236614 rules!2135))))

(assert (=> b!3195093 (= lt!1076640 (lemmaInvariantOnRulesThenOnTail!341 thiss!18206 (h!41455 rules!2135) (t!236614 rules!2135)))))

(declare-fun e!1991910 () Option!7071)

(assert (=> b!3195093 (= e!1991910 (getRuleFromTag!895 thiss!18206 (t!236614 rules!2135) (tag!5708 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3195094 () Bool)

(declare-fun e!1991908 () Bool)

(declare-fun e!1991907 () Bool)

(assert (=> b!3195094 (= e!1991908 e!1991907)))

(declare-fun res!1300028 () Bool)

(assert (=> b!3195094 (=> (not res!1300028) (not e!1991907))))

(declare-fun lt!1076639 () Option!7071)

(assert (=> b!3195094 (= res!1300028 (contains!6396 rules!2135 (get!11458 lt!1076639)))))

(declare-fun b!3195095 () Bool)

(assert (=> b!3195095 (= e!1991907 (= (tag!5708 (get!11458 lt!1076639)) (tag!5708 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3195096 () Bool)

(assert (=> b!3195096 (= e!1991909 e!1991910)))

(declare-fun c!536230 () Bool)

(assert (=> b!3195096 (= c!536230 (and ((_ is Cons!36035) rules!2135) (not (= (tag!5708 (h!41455 rules!2135)) (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))

(declare-fun b!3195097 () Bool)

(assert (=> b!3195097 (= e!1991910 None!7070)))

(declare-fun d!873502 () Bool)

(assert (=> d!873502 e!1991908))

(declare-fun res!1300029 () Bool)

(assert (=> d!873502 (=> res!1300029 e!1991908)))

(assert (=> d!873502 (= res!1300029 (isEmpty!20118 lt!1076639))))

(assert (=> d!873502 (= lt!1076639 e!1991909)))

(declare-fun c!536229 () Bool)

(assert (=> d!873502 (= c!536229 (and ((_ is Cons!36035) rules!2135) (= (tag!5708 (h!41455 rules!2135)) (tag!5708 (rule!7622 (h!41454 tokens!494))))))))

(assert (=> d!873502 (rulesInvariant!4176 thiss!18206 rules!2135)))

(assert (=> d!873502 (= (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))) lt!1076639)))

(assert (= (and d!873502 c!536229) b!3195092))

(assert (= (and d!873502 (not c!536229)) b!3195096))

(assert (= (and b!3195096 c!536230) b!3195093))

(assert (= (and b!3195096 (not c!536230)) b!3195097))

(assert (= (and d!873502 (not res!1300029)) b!3195094))

(assert (= (and b!3195094 res!1300028) b!3195095))

(assert (=> b!3195093 m!3455041))

(assert (=> b!3195093 m!3455043))

(declare-fun m!3455059 () Bool)

(assert (=> b!3195093 m!3455059))

(declare-fun m!3455061 () Bool)

(assert (=> b!3195094 m!3455061))

(assert (=> b!3195094 m!3455061))

(declare-fun m!3455063 () Bool)

(assert (=> b!3195094 m!3455063))

(assert (=> b!3195095 m!3455061))

(declare-fun m!3455065 () Bool)

(assert (=> d!873502 m!3455065))

(assert (=> d!873502 m!3454887))

(assert (=> b!3194962 d!873502))

(declare-fun d!873504 () Bool)

(declare-fun e!1991914 () Bool)

(assert (=> d!873504 e!1991914))

(declare-fun res!1300031 () Bool)

(assert (=> d!873504 (=> (not res!1300031) (not e!1991914))))

(assert (=> d!873504 (= res!1300031 (isDefined!5518 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))))))

(declare-fun lt!1076643 () Unit!50426)

(assert (=> d!873504 (= lt!1076643 (choose!18640 thiss!18206 rules!2135 lt!1076594 separatorToken!241))))

(assert (=> d!873504 (rulesInvariant!4176 thiss!18206 rules!2135)))

(assert (=> d!873504 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!895 thiss!18206 rules!2135 lt!1076594 separatorToken!241) lt!1076643)))

(declare-fun b!3195103 () Bool)

(declare-fun res!1300032 () Bool)

(assert (=> b!3195103 (=> (not res!1300032) (not e!1991914))))

(assert (=> b!3195103 (= res!1300032 (matchR!4583 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))) (list!12799 (charsOf!3206 separatorToken!241))))))

(declare-fun b!3195104 () Bool)

(assert (=> b!3195104 (= e!1991914 (= (rule!7622 separatorToken!241) (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))))))

(assert (= (and d!873504 res!1300031) b!3195103))

(assert (= (and b!3195103 res!1300032) b!3195104))

(assert (=> d!873504 m!3454883))

(assert (=> d!873504 m!3454883))

(declare-fun m!3455067 () Bool)

(assert (=> d!873504 m!3455067))

(declare-fun m!3455069 () Bool)

(assert (=> d!873504 m!3455069))

(assert (=> d!873504 m!3454887))

(assert (=> b!3195103 m!3454813))

(assert (=> b!3195103 m!3454823))

(assert (=> b!3195103 m!3454883))

(assert (=> b!3195103 m!3454883))

(declare-fun m!3455071 () Bool)

(assert (=> b!3195103 m!3455071))

(assert (=> b!3195103 m!3454813))

(assert (=> b!3195103 m!3454823))

(declare-fun m!3455073 () Bool)

(assert (=> b!3195103 m!3455073))

(assert (=> b!3195104 m!3454883))

(assert (=> b!3195104 m!3454883))

(assert (=> b!3195104 m!3455071))

(assert (=> b!3194962 d!873504))

(declare-fun d!873506 () Bool)

(declare-fun lt!1076646 () Int)

(assert (=> d!873506 (>= lt!1076646 0)))

(declare-fun e!1991924 () Int)

(assert (=> d!873506 (= lt!1076646 e!1991924)))

(declare-fun c!536233 () Bool)

(assert (=> d!873506 (= c!536233 ((_ is Nil!36033) lt!1076577))))

(assert (=> d!873506 (= (size!27131 lt!1076577) lt!1076646)))

(declare-fun b!3195118 () Bool)

(assert (=> b!3195118 (= e!1991924 0)))

(declare-fun b!3195119 () Bool)

(assert (=> b!3195119 (= e!1991924 (+ 1 (size!27131 (t!236612 lt!1076577))))))

(assert (= (and d!873506 c!536233) b!3195118))

(assert (= (and d!873506 (not c!536233)) b!3195119))

(declare-fun m!3455083 () Bool)

(assert (=> b!3195119 m!3455083))

(assert (=> b!3194962 d!873506))

(declare-fun d!873510 () Bool)

(declare-fun dynLambda!14505 (Int BalanceConc!21124) TokenValue!5420)

(assert (=> d!873510 (= (apply!8114 (transformation!5190 (rule!7622 (h!41454 tokens!494))) lt!1076578) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578))))

(declare-fun b_lambda!87153 () Bool)

(assert (=> (not b_lambda!87153) (not d!873510)))

(declare-fun tb!156121 () Bool)

(declare-fun t!236627 () Bool)

(assert (=> (and b!3194963 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236627) tb!156121))

(declare-fun result!198352 () Bool)

(assert (=> tb!156121 (= result!198352 (inv!21 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578)))))

(declare-fun m!3455085 () Bool)

(assert (=> tb!156121 m!3455085))

(assert (=> d!873510 t!236627))

(declare-fun b_and!212031 () Bool)

(assert (= b_and!212007 (and (=> t!236627 result!198352) b_and!212031)))

(declare-fun tb!156123 () Bool)

(declare-fun t!236629 () Bool)

(assert (=> (and b!3194957 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236629) tb!156123))

(declare-fun result!198356 () Bool)

(assert (= result!198356 result!198352))

(assert (=> d!873510 t!236629))

(declare-fun b_and!212033 () Bool)

(assert (= b_and!212011 (and (=> t!236629 result!198356) b_and!212033)))

(declare-fun t!236631 () Bool)

(declare-fun tb!156125 () Bool)

(assert (=> (and b!3194955 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236631) tb!156125))

(declare-fun result!198358 () Bool)

(assert (= result!198358 result!198352))

(assert (=> d!873510 t!236631))

(declare-fun b_and!212035 () Bool)

(assert (= b_and!212015 (and (=> t!236631 result!198358) b_and!212035)))

(declare-fun m!3455087 () Bool)

(assert (=> d!873510 m!3455087))

(assert (=> b!3194962 d!873510))

(declare-fun d!873512 () Bool)

(declare-fun c!536236 () Bool)

(assert (=> d!873512 (= c!536236 ((_ is Cons!36034) tokens!494))))

(declare-fun e!1991930 () List!36157)

(assert (=> d!873512 (= (printWithSeparatorTokenList!124 thiss!18206 tokens!494 separatorToken!241) e!1991930)))

(declare-fun b!3195126 () Bool)

(assert (=> b!3195126 (= e!1991930 (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241)))))

(declare-fun b!3195127 () Bool)

(assert (=> b!3195127 (= e!1991930 Nil!36033)))

(assert (= (and d!873512 c!536236) b!3195126))

(assert (= (and d!873512 (not c!536236)) b!3195127))

(assert (=> b!3195126 m!3454891))

(assert (=> b!3195126 m!3454823))

(declare-fun m!3455091 () Bool)

(assert (=> b!3195126 m!3455091))

(assert (=> b!3195126 m!3454813))

(assert (=> b!3195126 m!3454817))

(assert (=> b!3195126 m!3454889))

(assert (=> b!3195126 m!3454891))

(assert (=> b!3195126 m!3454889))

(assert (=> b!3195126 m!3454813))

(assert (=> b!3195126 m!3454823))

(assert (=> b!3195126 m!3455091))

(assert (=> b!3195126 m!3454817))

(declare-fun m!3455093 () Bool)

(assert (=> b!3195126 m!3455093))

(assert (=> b!3194943 d!873512))

(declare-fun b!3195136 () Bool)

(declare-fun e!1991936 () List!36157)

(assert (=> b!3195136 (= e!1991936 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241))))

(declare-fun e!1991935 () Bool)

(declare-fun lt!1076649 () List!36157)

(declare-fun b!3195139 () Bool)

(assert (=> b!3195139 (= e!1991935 (or (not (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241) Nil!36033)) (= lt!1076649 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594))))))

(declare-fun b!3195138 () Bool)

(declare-fun res!1300038 () Bool)

(assert (=> b!3195138 (=> (not res!1300038) (not e!1991935))))

(assert (=> b!3195138 (= res!1300038 (= (size!27131 lt!1076649) (+ (size!27131 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) (size!27131 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(declare-fun d!873516 () Bool)

(assert (=> d!873516 e!1991935))

(declare-fun res!1300037 () Bool)

(assert (=> d!873516 (=> (not res!1300037) (not e!1991935))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4864 (List!36157) (InoxSet C!20084))

(assert (=> d!873516 (= res!1300037 (= (content!4864 lt!1076649) ((_ map or) (content!4864 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) (content!4864 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(assert (=> d!873516 (= lt!1076649 e!1991936)))

(declare-fun c!536239 () Bool)

(assert (=> d!873516 (= c!536239 ((_ is Nil!36033) (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)))))

(assert (=> d!873516 (= (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)) lt!1076649)))

(declare-fun b!3195137 () Bool)

(assert (=> b!3195137 (= e!1991936 (Cons!36033 (h!41453 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) (++!8622 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241))))))

(assert (= (and d!873516 c!536239) b!3195136))

(assert (= (and d!873516 (not c!536239)) b!3195137))

(assert (= (and d!873516 res!1300037) b!3195138))

(assert (= (and b!3195138 res!1300038) b!3195139))

(declare-fun m!3455095 () Bool)

(assert (=> b!3195138 m!3455095))

(assert (=> b!3195138 m!3454825))

(declare-fun m!3455097 () Bool)

(assert (=> b!3195138 m!3455097))

(assert (=> b!3195138 m!3454821))

(declare-fun m!3455099 () Bool)

(assert (=> b!3195138 m!3455099))

(declare-fun m!3455101 () Bool)

(assert (=> d!873516 m!3455101))

(assert (=> d!873516 m!3454825))

(declare-fun m!3455103 () Bool)

(assert (=> d!873516 m!3455103))

(assert (=> d!873516 m!3454821))

(declare-fun m!3455105 () Bool)

(assert (=> d!873516 m!3455105))

(assert (=> b!3195137 m!3454821))

(declare-fun m!3455107 () Bool)

(assert (=> b!3195137 m!3455107))

(assert (=> b!3194943 d!873516))

(declare-fun b!3195140 () Bool)

(declare-fun e!1991938 () List!36157)

(assert (=> b!3195140 (= e!1991938 lt!1076581)))

(declare-fun lt!1076650 () List!36157)

(declare-fun e!1991937 () Bool)

(declare-fun b!3195143 () Bool)

(assert (=> b!3195143 (= e!1991937 (or (not (= lt!1076581 Nil!36033)) (= lt!1076650 lt!1076594)))))

(declare-fun b!3195142 () Bool)

(declare-fun res!1300040 () Bool)

(assert (=> b!3195142 (=> (not res!1300040) (not e!1991937))))

(assert (=> b!3195142 (= res!1300040 (= (size!27131 lt!1076650) (+ (size!27131 lt!1076594) (size!27131 lt!1076581))))))

(declare-fun d!873518 () Bool)

(assert (=> d!873518 e!1991937))

(declare-fun res!1300039 () Bool)

(assert (=> d!873518 (=> (not res!1300039) (not e!1991937))))

(assert (=> d!873518 (= res!1300039 (= (content!4864 lt!1076650) ((_ map or) (content!4864 lt!1076594) (content!4864 lt!1076581))))))

(assert (=> d!873518 (= lt!1076650 e!1991938)))

(declare-fun c!536240 () Bool)

(assert (=> d!873518 (= c!536240 ((_ is Nil!36033) lt!1076594))))

(assert (=> d!873518 (= (++!8622 lt!1076594 lt!1076581) lt!1076650)))

(declare-fun b!3195141 () Bool)

(assert (=> b!3195141 (= e!1991938 (Cons!36033 (h!41453 lt!1076594) (++!8622 (t!236612 lt!1076594) lt!1076581)))))

(assert (= (and d!873518 c!536240) b!3195140))

(assert (= (and d!873518 (not c!536240)) b!3195141))

(assert (= (and d!873518 res!1300039) b!3195142))

(assert (= (and b!3195142 res!1300040) b!3195143))

(declare-fun m!3455109 () Bool)

(assert (=> b!3195142 m!3455109))

(declare-fun m!3455111 () Bool)

(assert (=> b!3195142 m!3455111))

(declare-fun m!3455113 () Bool)

(assert (=> b!3195142 m!3455113))

(declare-fun m!3455115 () Bool)

(assert (=> d!873518 m!3455115))

(declare-fun m!3455117 () Bool)

(assert (=> d!873518 m!3455117))

(declare-fun m!3455119 () Bool)

(assert (=> d!873518 m!3455119))

(declare-fun m!3455121 () Bool)

(assert (=> b!3195141 m!3455121))

(assert (=> b!3194943 d!873518))

(declare-fun d!873520 () Bool)

(declare-fun lt!1076651 () BalanceConc!21124)

(assert (=> d!873520 (= (list!12799 lt!1076651) (originalCharacters!5904 separatorToken!241))))

(assert (=> d!873520 (= lt!1076651 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))))

(assert (=> d!873520 (= (charsOf!3206 separatorToken!241) lt!1076651)))

(declare-fun b_lambda!87155 () Bool)

(assert (=> (not b_lambda!87155) (not d!873520)))

(declare-fun t!236633 () Bool)

(declare-fun tb!156127 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) t!236633) tb!156127))

(declare-fun b!3195144 () Bool)

(declare-fun e!1991939 () Bool)

(declare-fun tp!1010498 () Bool)

(assert (=> b!3195144 (= e!1991939 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))) tp!1010498))))

(declare-fun result!198360 () Bool)

(assert (=> tb!156127 (= result!198360 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))) e!1991939))))

(assert (= tb!156127 b!3195144))

(declare-fun m!3455123 () Bool)

(assert (=> b!3195144 m!3455123))

(declare-fun m!3455125 () Bool)

(assert (=> tb!156127 m!3455125))

(assert (=> d!873520 t!236633))

(declare-fun b_and!212037 () Bool)

(assert (= b_and!212025 (and (=> t!236633 result!198360) b_and!212037)))

(declare-fun t!236635 () Bool)

(declare-fun tb!156129 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) t!236635) tb!156129))

(declare-fun result!198362 () Bool)

(assert (= result!198362 result!198360))

(assert (=> d!873520 t!236635))

(declare-fun b_and!212039 () Bool)

(assert (= b_and!212027 (and (=> t!236635 result!198362) b_and!212039)))

(declare-fun tb!156131 () Bool)

(declare-fun t!236637 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) t!236637) tb!156131))

(declare-fun result!198364 () Bool)

(assert (= result!198364 result!198360))

(assert (=> d!873520 t!236637))

(declare-fun b_and!212041 () Bool)

(assert (= b_and!212029 (and (=> t!236637 result!198364) b_and!212041)))

(declare-fun m!3455127 () Bool)

(assert (=> d!873520 m!3455127))

(declare-fun m!3455129 () Bool)

(assert (=> d!873520 m!3455129))

(assert (=> b!3194943 d!873520))

(declare-fun d!873522 () Bool)

(assert (=> d!873522 (= (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12801 (c!536197 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))

(declare-fun bs!540495 () Bool)

(assert (= bs!540495 d!873522))

(declare-fun m!3455131 () Bool)

(assert (=> bs!540495 m!3455131))

(assert (=> b!3194943 d!873522))

(declare-fun b!3195145 () Bool)

(declare-fun e!1991941 () List!36157)

(assert (=> b!3195145 (= e!1991941 lt!1076594)))

(declare-fun e!1991940 () Bool)

(declare-fun b!3195148 () Bool)

(declare-fun lt!1076652 () List!36157)

(assert (=> b!3195148 (= e!1991940 (or (not (= lt!1076594 Nil!36033)) (= lt!1076652 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))))))

(declare-fun b!3195147 () Bool)

(declare-fun res!1300042 () Bool)

(assert (=> b!3195147 (=> (not res!1300042) (not e!1991940))))

(assert (=> b!3195147 (= res!1300042 (= (size!27131 lt!1076652) (+ (size!27131 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) (size!27131 lt!1076594))))))

(declare-fun d!873524 () Bool)

(assert (=> d!873524 e!1991940))

(declare-fun res!1300041 () Bool)

(assert (=> d!873524 (=> (not res!1300041) (not e!1991940))))

(assert (=> d!873524 (= res!1300041 (= (content!4864 lt!1076652) ((_ map or) (content!4864 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) (content!4864 lt!1076594))))))

(assert (=> d!873524 (= lt!1076652 e!1991941)))

(declare-fun c!536241 () Bool)

(assert (=> d!873524 (= c!536241 ((_ is Nil!36033) (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))

(assert (=> d!873524 (= (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594) lt!1076652)))

(declare-fun b!3195146 () Bool)

(assert (=> b!3195146 (= e!1991941 (Cons!36033 (h!41453 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) (++!8622 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) lt!1076594)))))

(assert (= (and d!873524 c!536241) b!3195145))

(assert (= (and d!873524 (not c!536241)) b!3195146))

(assert (= (and d!873524 res!1300041) b!3195147))

(assert (= (and b!3195147 res!1300042) b!3195148))

(declare-fun m!3455133 () Bool)

(assert (=> b!3195147 m!3455133))

(assert (=> b!3195147 m!3454819))

(declare-fun m!3455135 () Bool)

(assert (=> b!3195147 m!3455135))

(assert (=> b!3195147 m!3455111))

(declare-fun m!3455137 () Bool)

(assert (=> d!873524 m!3455137))

(assert (=> d!873524 m!3454819))

(declare-fun m!3455139 () Bool)

(assert (=> d!873524 m!3455139))

(assert (=> d!873524 m!3455117))

(declare-fun m!3455141 () Bool)

(assert (=> b!3195146 m!3455141))

(assert (=> b!3194943 d!873524))

(declare-fun d!873526 () Bool)

(declare-fun c!536242 () Bool)

(assert (=> d!873526 (= c!536242 ((_ is Cons!36034) (t!236613 (t!236613 tokens!494))))))

(declare-fun e!1991942 () List!36157)

(assert (=> d!873526 (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241) e!1991942)))

(declare-fun b!3195149 () Bool)

(assert (=> b!3195149 (= e!1991942 (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241)))))

(declare-fun b!3195150 () Bool)

(assert (=> b!3195150 (= e!1991942 Nil!36033)))

(assert (= (and d!873526 c!536242) b!3195149))

(assert (= (and d!873526 (not c!536242)) b!3195150))

(declare-fun m!3455143 () Bool)

(assert (=> b!3195149 m!3455143))

(assert (=> b!3195149 m!3454823))

(declare-fun m!3455145 () Bool)

(assert (=> b!3195149 m!3455145))

(assert (=> b!3195149 m!3454813))

(declare-fun m!3455147 () Bool)

(assert (=> b!3195149 m!3455147))

(declare-fun m!3455149 () Bool)

(assert (=> b!3195149 m!3455149))

(assert (=> b!3195149 m!3455143))

(assert (=> b!3195149 m!3455149))

(assert (=> b!3195149 m!3454813))

(assert (=> b!3195149 m!3454823))

(assert (=> b!3195149 m!3455145))

(assert (=> b!3195149 m!3455147))

(declare-fun m!3455151 () Bool)

(assert (=> b!3195149 m!3455151))

(assert (=> b!3194943 d!873526))

(declare-fun d!873528 () Bool)

(declare-fun c!536243 () Bool)

(assert (=> d!873528 (= c!536243 ((_ is Cons!36034) (t!236613 tokens!494)))))

(declare-fun e!1991943 () List!36157)

(assert (=> d!873528 (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241) e!1991943)))

(declare-fun b!3195151 () Bool)

(assert (=> b!3195151 (= e!1991943 (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))

(declare-fun b!3195152 () Bool)

(assert (=> b!3195152 (= e!1991943 Nil!36033)))

(assert (= (and d!873528 c!536243) b!3195151))

(assert (= (and d!873528 (not c!536243)) b!3195152))

(assert (=> b!3195151 m!3454819))

(assert (=> b!3195151 m!3454823))

(declare-fun m!3455153 () Bool)

(assert (=> b!3195151 m!3455153))

(assert (=> b!3195151 m!3454813))

(assert (=> b!3195151 m!3454821))

(assert (=> b!3195151 m!3454811))

(assert (=> b!3195151 m!3454819))

(assert (=> b!3195151 m!3454811))

(assert (=> b!3195151 m!3454813))

(assert (=> b!3195151 m!3454823))

(assert (=> b!3195151 m!3455153))

(assert (=> b!3195151 m!3454821))

(declare-fun m!3455155 () Bool)

(assert (=> b!3195151 m!3455155))

(assert (=> b!3194943 d!873528))

(declare-fun d!873530 () Bool)

(assert (=> d!873530 (= (list!12799 (charsOf!3206 separatorToken!241)) (list!12801 (c!536197 (charsOf!3206 separatorToken!241))))))

(declare-fun bs!540496 () Bool)

(assert (= bs!540496 d!873530))

(declare-fun m!3455157 () Bool)

(assert (=> bs!540496 m!3455157))

(assert (=> b!3194943 d!873530))

(declare-fun d!873532 () Bool)

(declare-fun lt!1076653 () BalanceConc!21124)

(assert (=> d!873532 (= (list!12799 lt!1076653) (originalCharacters!5904 (h!41454 (t!236613 tokens!494))))))

(assert (=> d!873532 (= lt!1076653 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))))

(assert (=> d!873532 (= (charsOf!3206 (h!41454 (t!236613 tokens!494))) lt!1076653)))

(declare-fun b_lambda!87157 () Bool)

(assert (=> (not b_lambda!87157) (not d!873532)))

(declare-fun t!236639 () Bool)

(declare-fun tb!156133 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) t!236639) tb!156133))

(declare-fun b!3195153 () Bool)

(declare-fun e!1991944 () Bool)

(declare-fun tp!1010499 () Bool)

(assert (=> b!3195153 (= e!1991944 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))) tp!1010499))))

(declare-fun result!198366 () Bool)

(assert (=> tb!156133 (= result!198366 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))) e!1991944))))

(assert (= tb!156133 b!3195153))

(declare-fun m!3455159 () Bool)

(assert (=> b!3195153 m!3455159))

(declare-fun m!3455161 () Bool)

(assert (=> tb!156133 m!3455161))

(assert (=> d!873532 t!236639))

(declare-fun b_and!212043 () Bool)

(assert (= b_and!212037 (and (=> t!236639 result!198366) b_and!212043)))

(declare-fun tb!156135 () Bool)

(declare-fun t!236641 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) t!236641) tb!156135))

(declare-fun result!198368 () Bool)

(assert (= result!198368 result!198366))

(assert (=> d!873532 t!236641))

(declare-fun b_and!212045 () Bool)

(assert (= b_and!212039 (and (=> t!236641 result!198368) b_and!212045)))

(declare-fun t!236643 () Bool)

(declare-fun tb!156137 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) t!236643) tb!156137))

(declare-fun result!198370 () Bool)

(assert (= result!198370 result!198366))

(assert (=> d!873532 t!236643))

(declare-fun b_and!212047 () Bool)

(assert (= b_and!212041 (and (=> t!236643 result!198370) b_and!212047)))

(declare-fun m!3455163 () Bool)

(assert (=> d!873532 m!3455163))

(declare-fun m!3455165 () Bool)

(assert (=> d!873532 m!3455165))

(assert (=> b!3194943 d!873532))

(declare-fun d!873534 () Bool)

(declare-fun lt!1076668 () Bool)

(declare-fun e!1991961 () Bool)

(assert (=> d!873534 (= lt!1076668 e!1991961)))

(declare-fun res!1300058 () Bool)

(assert (=> d!873534 (=> (not res!1300058) (not e!1991961))))

(assert (=> d!873534 (= res!1300058 (= (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241))))) (list!12803 (singletonSeq!2286 separatorToken!241))))))

(declare-fun e!1991962 () Bool)

(assert (=> d!873534 (= lt!1076668 e!1991962)))

(declare-fun res!1300059 () Bool)

(assert (=> d!873534 (=> (not res!1300059) (not e!1991962))))

(declare-fun lt!1076667 () tuple2!35390)

(assert (=> d!873534 (= res!1300059 (= (size!27133 (_1!20829 lt!1076667)) 1))))

(assert (=> d!873534 (= lt!1076667 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241))))))

(assert (=> d!873534 (not (isEmpty!20112 rules!2135))))

(assert (=> d!873534 (= (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 separatorToken!241) lt!1076668)))

(declare-fun b!3195180 () Bool)

(declare-fun res!1300060 () Bool)

(assert (=> b!3195180 (=> (not res!1300060) (not e!1991962))))

(declare-fun apply!8117 (BalanceConc!21126 Int) Token!9746)

(assert (=> b!3195180 (= res!1300060 (= (apply!8117 (_1!20829 lt!1076667) 0) separatorToken!241))))

(declare-fun b!3195181 () Bool)

(declare-fun isEmpty!20123 (BalanceConc!21124) Bool)

(assert (=> b!3195181 (= e!1991962 (isEmpty!20123 (_2!20829 lt!1076667)))))

(declare-fun b!3195182 () Bool)

(assert (=> b!3195182 (= e!1991961 (isEmpty!20123 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241))))))))

(assert (= (and d!873534 res!1300059) b!3195180))

(assert (= (and b!3195180 res!1300060) b!3195181))

(assert (= (and d!873534 res!1300058) b!3195182))

(declare-fun m!3455199 () Bool)

(assert (=> d!873534 m!3455199))

(declare-fun m!3455201 () Bool)

(assert (=> d!873534 m!3455201))

(assert (=> d!873534 m!3454917))

(assert (=> d!873534 m!3455199))

(declare-fun m!3455203 () Bool)

(assert (=> d!873534 m!3455203))

(assert (=> d!873534 m!3455199))

(declare-fun m!3455205 () Bool)

(assert (=> d!873534 m!3455205))

(declare-fun m!3455207 () Bool)

(assert (=> d!873534 m!3455207))

(assert (=> d!873534 m!3455205))

(declare-fun m!3455209 () Bool)

(assert (=> d!873534 m!3455209))

(declare-fun m!3455211 () Bool)

(assert (=> b!3195180 m!3455211))

(declare-fun m!3455213 () Bool)

(assert (=> b!3195181 m!3455213))

(assert (=> b!3195182 m!3455199))

(assert (=> b!3195182 m!3455199))

(assert (=> b!3195182 m!3455205))

(assert (=> b!3195182 m!3455205))

(assert (=> b!3195182 m!3455209))

(declare-fun m!3455215 () Bool)

(assert (=> b!3195182 m!3455215))

(assert (=> b!3194964 d!873534))

(declare-fun d!873544 () Bool)

(declare-fun e!1991993 () Bool)

(assert (=> d!873544 e!1991993))

(declare-fun c!536262 () Bool)

(assert (=> d!873544 (= c!536262 ((_ is EmptyExpr!9949) (regex!5190 lt!1076584)))))

(declare-fun lt!1076681 () Bool)

(declare-fun e!1991997 () Bool)

(assert (=> d!873544 (= lt!1076681 e!1991997)))

(declare-fun c!536261 () Bool)

(assert (=> d!873544 (= c!536261 (isEmpty!20115 lt!1076577))))

(declare-fun validRegex!4542 (Regex!9949) Bool)

(assert (=> d!873544 (validRegex!4542 (regex!5190 lt!1076584))))

(assert (=> d!873544 (= (matchR!4583 (regex!5190 lt!1076584) lt!1076577) lt!1076681)))

(declare-fun b!3195237 () Bool)

(declare-fun e!1991995 () Bool)

(assert (=> b!3195237 (= e!1991993 e!1991995)))

(declare-fun c!536260 () Bool)

(assert (=> b!3195237 (= c!536260 ((_ is EmptyLang!9949) (regex!5190 lt!1076584)))))

(declare-fun b!3195238 () Bool)

(declare-fun nullable!3390 (Regex!9949) Bool)

(assert (=> b!3195238 (= e!1991997 (nullable!3390 (regex!5190 lt!1076584)))))

(declare-fun b!3195239 () Bool)

(declare-fun derivativeStep!2943 (Regex!9949 C!20084) Regex!9949)

(declare-fun head!7002 (List!36157) C!20084)

(declare-fun tail!5196 (List!36157) List!36157)

(assert (=> b!3195239 (= e!1991997 (matchR!4583 (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577)) (tail!5196 lt!1076577)))))

(declare-fun b!3195240 () Bool)

(declare-fun e!1991994 () Bool)

(assert (=> b!3195240 (= e!1991994 (= (head!7002 lt!1076577) (c!536196 (regex!5190 lt!1076584))))))

(declare-fun bm!231396 () Bool)

(declare-fun call!231401 () Bool)

(assert (=> bm!231396 (= call!231401 (isEmpty!20115 lt!1076577))))

(declare-fun b!3195241 () Bool)

(declare-fun res!1300090 () Bool)

(declare-fun e!1991991 () Bool)

(assert (=> b!3195241 (=> res!1300090 e!1991991)))

(assert (=> b!3195241 (= res!1300090 (not ((_ is ElementMatch!9949) (regex!5190 lt!1076584))))))

(assert (=> b!3195241 (= e!1991995 e!1991991)))

(declare-fun b!3195242 () Bool)

(assert (=> b!3195242 (= e!1991993 (= lt!1076681 call!231401))))

(declare-fun b!3195243 () Bool)

(declare-fun res!1300092 () Bool)

(assert (=> b!3195243 (=> res!1300092 e!1991991)))

(assert (=> b!3195243 (= res!1300092 e!1991994)))

(declare-fun res!1300088 () Bool)

(assert (=> b!3195243 (=> (not res!1300088) (not e!1991994))))

(assert (=> b!3195243 (= res!1300088 lt!1076681)))

(declare-fun b!3195244 () Bool)

(assert (=> b!3195244 (= e!1991995 (not lt!1076681))))

(declare-fun b!3195245 () Bool)

(declare-fun e!1991992 () Bool)

(declare-fun e!1991996 () Bool)

(assert (=> b!3195245 (= e!1991992 e!1991996)))

(declare-fun res!1300094 () Bool)

(assert (=> b!3195245 (=> res!1300094 e!1991996)))

(assert (=> b!3195245 (= res!1300094 call!231401)))

(declare-fun b!3195246 () Bool)

(declare-fun res!1300089 () Bool)

(assert (=> b!3195246 (=> (not res!1300089) (not e!1991994))))

(assert (=> b!3195246 (= res!1300089 (isEmpty!20115 (tail!5196 lt!1076577)))))

(declare-fun b!3195247 () Bool)

(declare-fun res!1300093 () Bool)

(assert (=> b!3195247 (=> (not res!1300093) (not e!1991994))))

(assert (=> b!3195247 (= res!1300093 (not call!231401))))

(declare-fun b!3195248 () Bool)

(assert (=> b!3195248 (= e!1991996 (not (= (head!7002 lt!1076577) (c!536196 (regex!5190 lt!1076584)))))))

(declare-fun b!3195249 () Bool)

(declare-fun res!1300087 () Bool)

(assert (=> b!3195249 (=> res!1300087 e!1991996)))

(assert (=> b!3195249 (= res!1300087 (not (isEmpty!20115 (tail!5196 lt!1076577))))))

(declare-fun b!3195250 () Bool)

(assert (=> b!3195250 (= e!1991991 e!1991992)))

(declare-fun res!1300091 () Bool)

(assert (=> b!3195250 (=> (not res!1300091) (not e!1991992))))

(assert (=> b!3195250 (= res!1300091 (not lt!1076681))))

(assert (= (and d!873544 c!536261) b!3195238))

(assert (= (and d!873544 (not c!536261)) b!3195239))

(assert (= (and d!873544 c!536262) b!3195242))

(assert (= (and d!873544 (not c!536262)) b!3195237))

(assert (= (and b!3195237 c!536260) b!3195244))

(assert (= (and b!3195237 (not c!536260)) b!3195241))

(assert (= (and b!3195241 (not res!1300090)) b!3195243))

(assert (= (and b!3195243 res!1300088) b!3195247))

(assert (= (and b!3195247 res!1300093) b!3195246))

(assert (= (and b!3195246 res!1300089) b!3195240))

(assert (= (and b!3195243 (not res!1300092)) b!3195250))

(assert (= (and b!3195250 res!1300091) b!3195245))

(assert (= (and b!3195245 (not res!1300094)) b!3195249))

(assert (= (and b!3195249 (not res!1300087)) b!3195248))

(assert (= (or b!3195242 b!3195245 b!3195247) bm!231396))

(declare-fun m!3455295 () Bool)

(assert (=> b!3195248 m!3455295))

(assert (=> b!3195240 m!3455295))

(assert (=> b!3195239 m!3455295))

(assert (=> b!3195239 m!3455295))

(declare-fun m!3455297 () Bool)

(assert (=> b!3195239 m!3455297))

(declare-fun m!3455299 () Bool)

(assert (=> b!3195239 m!3455299))

(assert (=> b!3195239 m!3455297))

(assert (=> b!3195239 m!3455299))

(declare-fun m!3455301 () Bool)

(assert (=> b!3195239 m!3455301))

(declare-fun m!3455303 () Bool)

(assert (=> b!3195238 m!3455303))

(assert (=> b!3195246 m!3455299))

(assert (=> b!3195246 m!3455299))

(declare-fun m!3455305 () Bool)

(assert (=> b!3195246 m!3455305))

(assert (=> b!3195249 m!3455299))

(assert (=> b!3195249 m!3455299))

(assert (=> b!3195249 m!3455305))

(declare-fun m!3455307 () Bool)

(assert (=> d!873544 m!3455307))

(declare-fun m!3455309 () Bool)

(assert (=> d!873544 m!3455309))

(assert (=> bm!231396 m!3455307))

(assert (=> b!3194942 d!873544))

(declare-fun d!873566 () Bool)

(assert (=> d!873566 (= (get!11458 lt!1076593) (v!35582 lt!1076593))))

(assert (=> b!3194942 d!873566))

(declare-fun d!873568 () Bool)

(assert (=> d!873568 (= (inv!48873 (tag!5708 (rule!7622 (h!41454 tokens!494)))) (= (mod (str.len (value!168374 (tag!5708 (rule!7622 (h!41454 tokens!494))))) 2) 0))))

(assert (=> b!3194939 d!873568))

(declare-fun d!873570 () Bool)

(declare-fun res!1300097 () Bool)

(declare-fun e!1992000 () Bool)

(assert (=> d!873570 (=> (not res!1300097) (not e!1992000))))

(declare-fun semiInverseModEq!2147 (Int Int) Bool)

(assert (=> d!873570 (= res!1300097 (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))))))

(assert (=> d!873570 (= (inv!48876 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) e!1992000)))

(declare-fun b!3195253 () Bool)

(declare-fun equivClasses!2046 (Int Int) Bool)

(assert (=> b!3195253 (= e!1992000 (equivClasses!2046 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))))))

(assert (= (and d!873570 res!1300097) b!3195253))

(declare-fun m!3455311 () Bool)

(assert (=> d!873570 m!3455311))

(declare-fun m!3455313 () Bool)

(assert (=> b!3195253 m!3455313))

(assert (=> b!3194939 d!873570))

(declare-fun d!873572 () Bool)

(declare-fun res!1300098 () Bool)

(declare-fun e!1992001 () Bool)

(assert (=> d!873572 (=> (not res!1300098) (not e!1992001))))

(assert (=> d!873572 (= res!1300098 (not (isEmpty!20115 (originalCharacters!5904 separatorToken!241))))))

(assert (=> d!873572 (= (inv!48877 separatorToken!241) e!1992001)))

(declare-fun b!3195254 () Bool)

(declare-fun res!1300099 () Bool)

(assert (=> b!3195254 (=> (not res!1300099) (not e!1992001))))

(assert (=> b!3195254 (= res!1300099 (= (originalCharacters!5904 separatorToken!241) (list!12799 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))))))

(declare-fun b!3195255 () Bool)

(assert (=> b!3195255 (= e!1992001 (= (size!27130 separatorToken!241) (size!27131 (originalCharacters!5904 separatorToken!241))))))

(assert (= (and d!873572 res!1300098) b!3195254))

(assert (= (and b!3195254 res!1300099) b!3195255))

(declare-fun b_lambda!87165 () Bool)

(assert (=> (not b_lambda!87165) (not b!3195254)))

(assert (=> b!3195254 t!236633))

(declare-fun b_and!212067 () Bool)

(assert (= b_and!212043 (and (=> t!236633 result!198360) b_and!212067)))

(assert (=> b!3195254 t!236635))

(declare-fun b_and!212069 () Bool)

(assert (= b_and!212045 (and (=> t!236635 result!198362) b_and!212069)))

(assert (=> b!3195254 t!236637))

(declare-fun b_and!212071 () Bool)

(assert (= b_and!212047 (and (=> t!236637 result!198364) b_and!212071)))

(declare-fun m!3455315 () Bool)

(assert (=> d!873572 m!3455315))

(assert (=> b!3195254 m!3455129))

(assert (=> b!3195254 m!3455129))

(declare-fun m!3455317 () Bool)

(assert (=> b!3195254 m!3455317))

(declare-fun m!3455319 () Bool)

(assert (=> b!3195255 m!3455319))

(assert (=> start!299666 d!873572))

(declare-fun d!873574 () Bool)

(declare-fun lt!1076683 () Bool)

(declare-fun e!1992002 () Bool)

(assert (=> d!873574 (= lt!1076683 e!1992002)))

(declare-fun res!1300100 () Bool)

(assert (=> d!873574 (=> (not res!1300100) (not e!1992002))))

(assert (=> d!873574 (= res!1300100 (= (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)))))) (list!12803 (singletonSeq!2286 (h!41454 tokens!494)))))))

(declare-fun e!1992003 () Bool)

(assert (=> d!873574 (= lt!1076683 e!1992003)))

(declare-fun res!1300101 () Bool)

(assert (=> d!873574 (=> (not res!1300101) (not e!1992003))))

(declare-fun lt!1076682 () tuple2!35390)

(assert (=> d!873574 (= res!1300101 (= (size!27133 (_1!20829 lt!1076682)) 1))))

(assert (=> d!873574 (= lt!1076682 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)))))))

(assert (=> d!873574 (not (isEmpty!20112 rules!2135))))

(assert (=> d!873574 (= (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 (h!41454 tokens!494)) lt!1076683)))

(declare-fun b!3195256 () Bool)

(declare-fun res!1300102 () Bool)

(assert (=> b!3195256 (=> (not res!1300102) (not e!1992003))))

(assert (=> b!3195256 (= res!1300102 (= (apply!8117 (_1!20829 lt!1076682) 0) (h!41454 tokens!494)))))

(declare-fun b!3195257 () Bool)

(assert (=> b!3195257 (= e!1992003 (isEmpty!20123 (_2!20829 lt!1076682)))))

(declare-fun b!3195258 () Bool)

(assert (=> b!3195258 (= e!1992002 (isEmpty!20123 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)))))))))

(assert (= (and d!873574 res!1300101) b!3195256))

(assert (= (and b!3195256 res!1300102) b!3195257))

(assert (= (and d!873574 res!1300100) b!3195258))

(assert (=> d!873574 m!3454855))

(declare-fun m!3455321 () Bool)

(assert (=> d!873574 m!3455321))

(assert (=> d!873574 m!3454917))

(assert (=> d!873574 m!3454855))

(declare-fun m!3455323 () Bool)

(assert (=> d!873574 m!3455323))

(assert (=> d!873574 m!3454855))

(declare-fun m!3455325 () Bool)

(assert (=> d!873574 m!3455325))

(declare-fun m!3455327 () Bool)

(assert (=> d!873574 m!3455327))

(assert (=> d!873574 m!3455325))

(declare-fun m!3455329 () Bool)

(assert (=> d!873574 m!3455329))

(declare-fun m!3455331 () Bool)

(assert (=> b!3195256 m!3455331))

(declare-fun m!3455333 () Bool)

(assert (=> b!3195257 m!3455333))

(assert (=> b!3195258 m!3454855))

(assert (=> b!3195258 m!3454855))

(assert (=> b!3195258 m!3455325))

(assert (=> b!3195258 m!3455325))

(assert (=> b!3195258 m!3455329))

(declare-fun m!3455335 () Bool)

(assert (=> b!3195258 m!3455335))

(assert (=> b!3194940 d!873574))

(declare-fun b!3195259 () Bool)

(declare-fun e!1992005 () List!36157)

(assert (=> b!3195259 (= e!1992005 lt!1076592)))

(declare-fun lt!1076684 () List!36157)

(declare-fun e!1992004 () Bool)

(declare-fun b!3195262 () Bool)

(assert (=> b!3195262 (= e!1992004 (or (not (= lt!1076592 Nil!36033)) (= lt!1076684 lt!1076577)))))

(declare-fun b!3195261 () Bool)

(declare-fun res!1300104 () Bool)

(assert (=> b!3195261 (=> (not res!1300104) (not e!1992004))))

(assert (=> b!3195261 (= res!1300104 (= (size!27131 lt!1076684) (+ (size!27131 lt!1076577) (size!27131 lt!1076592))))))

(declare-fun d!873576 () Bool)

(assert (=> d!873576 e!1992004))

(declare-fun res!1300103 () Bool)

(assert (=> d!873576 (=> (not res!1300103) (not e!1992004))))

(assert (=> d!873576 (= res!1300103 (= (content!4864 lt!1076684) ((_ map or) (content!4864 lt!1076577) (content!4864 lt!1076592))))))

(assert (=> d!873576 (= lt!1076684 e!1992005)))

(declare-fun c!536263 () Bool)

(assert (=> d!873576 (= c!536263 ((_ is Nil!36033) lt!1076577))))

(assert (=> d!873576 (= (++!8622 lt!1076577 lt!1076592) lt!1076684)))

(declare-fun b!3195260 () Bool)

(assert (=> b!3195260 (= e!1992005 (Cons!36033 (h!41453 lt!1076577) (++!8622 (t!236612 lt!1076577) lt!1076592)))))

(assert (= (and d!873576 c!536263) b!3195259))

(assert (= (and d!873576 (not c!536263)) b!3195260))

(assert (= (and d!873576 res!1300103) b!3195261))

(assert (= (and b!3195261 res!1300104) b!3195262))

(declare-fun m!3455337 () Bool)

(assert (=> b!3195261 m!3455337))

(assert (=> b!3195261 m!3454873))

(declare-fun m!3455339 () Bool)

(assert (=> b!3195261 m!3455339))

(declare-fun m!3455341 () Bool)

(assert (=> d!873576 m!3455341))

(declare-fun m!3455343 () Bool)

(assert (=> d!873576 m!3455343))

(declare-fun m!3455345 () Bool)

(assert (=> d!873576 m!3455345))

(declare-fun m!3455347 () Bool)

(assert (=> b!3195260 m!3455347))

(assert (=> b!3194961 d!873576))

(declare-fun d!873578 () Bool)

(assert (=> d!873578 (= (++!8622 (++!8622 lt!1076577 lt!1076594) lt!1076581) (++!8622 lt!1076577 (++!8622 lt!1076594 lt!1076581)))))

(declare-fun lt!1076687 () Unit!50426)

(declare-fun choose!18645 (List!36157 List!36157 List!36157) Unit!50426)

(assert (=> d!873578 (= lt!1076687 (choose!18645 lt!1076577 lt!1076594 lt!1076581))))

(assert (=> d!873578 (= (lemmaConcatAssociativity!1704 lt!1076577 lt!1076594 lt!1076581) lt!1076687)))

(declare-fun bs!540501 () Bool)

(assert (= bs!540501 d!873578))

(assert (=> bs!540501 m!3454839))

(assert (=> bs!540501 m!3454841))

(assert (=> bs!540501 m!3454829))

(declare-fun m!3455349 () Bool)

(assert (=> bs!540501 m!3455349))

(assert (=> bs!540501 m!3454829))

(declare-fun m!3455351 () Bool)

(assert (=> bs!540501 m!3455351))

(assert (=> bs!540501 m!3454839))

(assert (=> b!3194961 d!873578))

(declare-fun bs!540509 () Bool)

(declare-fun d!873580 () Bool)

(assert (= bs!540509 (and d!873580 b!3194959)))

(declare-fun lambda!116999 () Int)

(assert (=> bs!540509 (not (= lambda!116999 lambda!116989))))

(declare-fun b!3195484 () Bool)

(declare-fun e!1992144 () Bool)

(assert (=> b!3195484 (= e!1992144 true)))

(declare-fun b!3195483 () Bool)

(declare-fun e!1992143 () Bool)

(assert (=> b!3195483 (= e!1992143 e!1992144)))

(declare-fun b!3195482 () Bool)

(declare-fun e!1992142 () Bool)

(assert (=> b!3195482 (= e!1992142 e!1992143)))

(assert (=> d!873580 e!1992142))

(assert (= b!3195483 b!3195484))

(assert (= b!3195482 b!3195483))

(assert (= (and d!873580 ((_ is Cons!36035) rules!2135)) b!3195482))

(declare-fun order!18311 () Int)

(declare-fun order!18309 () Int)

(declare-fun dynLambda!14506 (Int Int) Int)

(declare-fun dynLambda!14507 (Int Int) Int)

(assert (=> b!3195484 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (h!41455 rules!2135)))) (dynLambda!14507 order!18311 lambda!116999))))

(declare-fun order!18313 () Int)

(declare-fun dynLambda!14508 (Int Int) Int)

(assert (=> b!3195484 (< (dynLambda!14508 order!18313 (toChars!7117 (transformation!5190 (h!41455 rules!2135)))) (dynLambda!14507 order!18311 lambda!116999))))

(assert (=> d!873580 true))

(declare-fun e!1992135 () Bool)

(assert (=> d!873580 e!1992135))

(declare-fun res!1300203 () Bool)

(assert (=> d!873580 (=> (not res!1300203) (not e!1992135))))

(declare-fun lt!1076754 () Bool)

(assert (=> d!873580 (= res!1300203 (= lt!1076754 (forall!7330 (list!12803 (seqFromList!3451 tokens!494)) lambda!116999)))))

(declare-fun forall!7332 (BalanceConc!21126 Int) Bool)

(assert (=> d!873580 (= lt!1076754 (forall!7332 (seqFromList!3451 tokens!494) lambda!116999))))

(assert (=> d!873580 (not (isEmpty!20112 rules!2135))))

(assert (=> d!873580 (= (rulesProduceEachTokenIndividually!1230 thiss!18206 rules!2135 (seqFromList!3451 tokens!494)) lt!1076754)))

(declare-fun b!3195473 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1717 (LexerInterface!4779 List!36159 List!36158) Bool)

(assert (=> b!3195473 (= e!1992135 (= lt!1076754 (rulesProduceEachTokenIndividuallyList!1717 thiss!18206 rules!2135 (list!12803 (seqFromList!3451 tokens!494)))))))

(assert (= (and d!873580 res!1300203) b!3195473))

(assert (=> d!873580 m!3454907))

(declare-fun m!3455599 () Bool)

(assert (=> d!873580 m!3455599))

(assert (=> d!873580 m!3455599))

(declare-fun m!3455601 () Bool)

(assert (=> d!873580 m!3455601))

(assert (=> d!873580 m!3454907))

(declare-fun m!3455603 () Bool)

(assert (=> d!873580 m!3455603))

(assert (=> d!873580 m!3454917))

(assert (=> b!3195473 m!3454907))

(assert (=> b!3195473 m!3455599))

(assert (=> b!3195473 m!3455599))

(declare-fun m!3455605 () Bool)

(assert (=> b!3195473 m!3455605))

(assert (=> b!3194947 d!873580))

(declare-fun d!873658 () Bool)

(declare-fun fromListB!1526 (List!36158) BalanceConc!21126)

(assert (=> d!873658 (= (seqFromList!3451 tokens!494) (fromListB!1526 tokens!494))))

(declare-fun bs!540510 () Bool)

(assert (= bs!540510 d!873658))

(declare-fun m!3455607 () Bool)

(assert (=> bs!540510 m!3455607))

(assert (=> b!3194947 d!873658))

(declare-fun b!3195487 () Bool)

(declare-fun e!1992146 () List!36157)

(assert (=> b!3195487 (= e!1992146 lt!1076581)))

(declare-fun b!3195490 () Bool)

(declare-fun e!1992145 () Bool)

(declare-fun lt!1076755 () List!36157)

(assert (=> b!3195490 (= e!1992145 (or (not (= lt!1076581 Nil!36033)) (= lt!1076755 (++!8622 lt!1076577 lt!1076594))))))

(declare-fun b!3195489 () Bool)

(declare-fun res!1300205 () Bool)

(assert (=> b!3195489 (=> (not res!1300205) (not e!1992145))))

(assert (=> b!3195489 (= res!1300205 (= (size!27131 lt!1076755) (+ (size!27131 (++!8622 lt!1076577 lt!1076594)) (size!27131 lt!1076581))))))

(declare-fun d!873660 () Bool)

(assert (=> d!873660 e!1992145))

(declare-fun res!1300204 () Bool)

(assert (=> d!873660 (=> (not res!1300204) (not e!1992145))))

(assert (=> d!873660 (= res!1300204 (= (content!4864 lt!1076755) ((_ map or) (content!4864 (++!8622 lt!1076577 lt!1076594)) (content!4864 lt!1076581))))))

(assert (=> d!873660 (= lt!1076755 e!1992146)))

(declare-fun c!536319 () Bool)

(assert (=> d!873660 (= c!536319 ((_ is Nil!36033) (++!8622 lt!1076577 lt!1076594)))))

(assert (=> d!873660 (= (++!8622 (++!8622 lt!1076577 lt!1076594) lt!1076581) lt!1076755)))

(declare-fun b!3195488 () Bool)

(assert (=> b!3195488 (= e!1992146 (Cons!36033 (h!41453 (++!8622 lt!1076577 lt!1076594)) (++!8622 (t!236612 (++!8622 lt!1076577 lt!1076594)) lt!1076581)))))

(assert (= (and d!873660 c!536319) b!3195487))

(assert (= (and d!873660 (not c!536319)) b!3195488))

(assert (= (and d!873660 res!1300204) b!3195489))

(assert (= (and b!3195489 res!1300205) b!3195490))

(declare-fun m!3455609 () Bool)

(assert (=> b!3195489 m!3455609))

(assert (=> b!3195489 m!3454839))

(declare-fun m!3455611 () Bool)

(assert (=> b!3195489 m!3455611))

(assert (=> b!3195489 m!3455113))

(declare-fun m!3455613 () Bool)

(assert (=> d!873660 m!3455613))

(assert (=> d!873660 m!3454839))

(declare-fun m!3455615 () Bool)

(assert (=> d!873660 m!3455615))

(assert (=> d!873660 m!3455119))

(declare-fun m!3455617 () Bool)

(assert (=> b!3195488 m!3455617))

(assert (=> b!3194946 d!873660))

(declare-fun b!3195491 () Bool)

(declare-fun e!1992148 () List!36157)

(assert (=> b!3195491 (= e!1992148 lt!1076594)))

(declare-fun lt!1076756 () List!36157)

(declare-fun e!1992147 () Bool)

(declare-fun b!3195494 () Bool)

(assert (=> b!3195494 (= e!1992147 (or (not (= lt!1076594 Nil!36033)) (= lt!1076756 lt!1076577)))))

(declare-fun b!3195493 () Bool)

(declare-fun res!1300207 () Bool)

(assert (=> b!3195493 (=> (not res!1300207) (not e!1992147))))

(assert (=> b!3195493 (= res!1300207 (= (size!27131 lt!1076756) (+ (size!27131 lt!1076577) (size!27131 lt!1076594))))))

(declare-fun d!873662 () Bool)

(assert (=> d!873662 e!1992147))

(declare-fun res!1300206 () Bool)

(assert (=> d!873662 (=> (not res!1300206) (not e!1992147))))

(assert (=> d!873662 (= res!1300206 (= (content!4864 lt!1076756) ((_ map or) (content!4864 lt!1076577) (content!4864 lt!1076594))))))

(assert (=> d!873662 (= lt!1076756 e!1992148)))

(declare-fun c!536320 () Bool)

(assert (=> d!873662 (= c!536320 ((_ is Nil!36033) lt!1076577))))

(assert (=> d!873662 (= (++!8622 lt!1076577 lt!1076594) lt!1076756)))

(declare-fun b!3195492 () Bool)

(assert (=> b!3195492 (= e!1992148 (Cons!36033 (h!41453 lt!1076577) (++!8622 (t!236612 lt!1076577) lt!1076594)))))

(assert (= (and d!873662 c!536320) b!3195491))

(assert (= (and d!873662 (not c!536320)) b!3195492))

(assert (= (and d!873662 res!1300206) b!3195493))

(assert (= (and b!3195493 res!1300207) b!3195494))

(declare-fun m!3455619 () Bool)

(assert (=> b!3195493 m!3455619))

(assert (=> b!3195493 m!3454873))

(assert (=> b!3195493 m!3455111))

(declare-fun m!3455621 () Bool)

(assert (=> d!873662 m!3455621))

(assert (=> d!873662 m!3455343))

(assert (=> d!873662 m!3455117))

(declare-fun m!3455623 () Bool)

(assert (=> b!3195492 m!3455623))

(assert (=> b!3194946 d!873662))

(declare-fun d!873664 () Bool)

(declare-fun res!1300216 () Bool)

(declare-fun e!1992159 () Bool)

(assert (=> d!873664 (=> res!1300216 e!1992159)))

(assert (=> d!873664 (= res!1300216 (not ((_ is Cons!36035) rules!2135)))))

(assert (=> d!873664 (= (sepAndNonSepRulesDisjointChars!1384 rules!2135 rules!2135) e!1992159)))

(declare-fun b!3195507 () Bool)

(declare-fun e!1992160 () Bool)

(assert (=> b!3195507 (= e!1992159 e!1992160)))

(declare-fun res!1300217 () Bool)

(assert (=> b!3195507 (=> (not res!1300217) (not e!1992160))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!583 (Rule!10180 List!36159) Bool)

(assert (=> b!3195507 (= res!1300217 (ruleDisjointCharsFromAllFromOtherType!583 (h!41455 rules!2135) rules!2135))))

(declare-fun b!3195508 () Bool)

(assert (=> b!3195508 (= e!1992160 (sepAndNonSepRulesDisjointChars!1384 rules!2135 (t!236614 rules!2135)))))

(assert (= (and d!873664 (not res!1300216)) b!3195507))

(assert (= (and b!3195507 res!1300217) b!3195508))

(declare-fun m!3455625 () Bool)

(assert (=> b!3195507 m!3455625))

(declare-fun m!3455627 () Bool)

(assert (=> b!3195508 m!3455627))

(assert (=> b!3194948 d!873664))

(declare-fun b!3195519 () Bool)

(declare-fun e!1992164 () Bool)

(assert (=> b!3195519 (= e!1992164 (inv!15 (value!168375 (h!41454 tokens!494))))))

(declare-fun d!873666 () Bool)

(declare-fun c!536324 () Bool)

(assert (=> d!873666 (= c!536324 ((_ is IntegerValue!16260) (value!168375 (h!41454 tokens!494))))))

(declare-fun e!1992163 () Bool)

(assert (=> d!873666 (= (inv!21 (value!168375 (h!41454 tokens!494))) e!1992163)))

(declare-fun b!3195520 () Bool)

(declare-fun e!1992165 () Bool)

(assert (=> b!3195520 (= e!1992163 e!1992165)))

(declare-fun c!536323 () Bool)

(assert (=> b!3195520 (= c!536323 ((_ is IntegerValue!16261) (value!168375 (h!41454 tokens!494))))))

(declare-fun b!3195521 () Bool)

(declare-fun res!1300228 () Bool)

(assert (=> b!3195521 (=> res!1300228 e!1992164)))

(assert (=> b!3195521 (= res!1300228 (not ((_ is IntegerValue!16262) (value!168375 (h!41454 tokens!494)))))))

(assert (=> b!3195521 (= e!1992165 e!1992164)))

(declare-fun b!3195522 () Bool)

(assert (=> b!3195522 (= e!1992165 (inv!17 (value!168375 (h!41454 tokens!494))))))

(declare-fun b!3195523 () Bool)

(assert (=> b!3195523 (= e!1992163 (inv!16 (value!168375 (h!41454 tokens!494))))))

(assert (= (and d!873666 c!536324) b!3195523))

(assert (= (and d!873666 (not c!536324)) b!3195520))

(assert (= (and b!3195520 c!536323) b!3195522))

(assert (= (and b!3195520 (not c!536323)) b!3195521))

(assert (= (and b!3195521 (not res!1300228)) b!3195519))

(declare-fun m!3455629 () Bool)

(assert (=> b!3195519 m!3455629))

(declare-fun m!3455631 () Bool)

(assert (=> b!3195522 m!3455631))

(declare-fun m!3455633 () Bool)

(assert (=> b!3195523 m!3455633))

(assert (=> b!3194944 d!873666))

(declare-fun d!873668 () Bool)

(assert (=> d!873668 (dynLambda!14501 lambda!116989 (h!41454 (t!236613 tokens!494)))))

(declare-fun lt!1076769 () Unit!50426)

(declare-fun choose!18646 (List!36158 Int Token!9746) Unit!50426)

(assert (=> d!873668 (= lt!1076769 (choose!18646 tokens!494 lambda!116989 (h!41454 (t!236613 tokens!494))))))

(declare-fun e!1992168 () Bool)

(assert (=> d!873668 e!1992168))

(declare-fun res!1300231 () Bool)

(assert (=> d!873668 (=> (not res!1300231) (not e!1992168))))

(assert (=> d!873668 (= res!1300231 (forall!7330 tokens!494 lambda!116989))))

(assert (=> d!873668 (= (forallContained!1161 tokens!494 lambda!116989 (h!41454 (t!236613 tokens!494))) lt!1076769)))

(declare-fun b!3195526 () Bool)

(declare-fun contains!6398 (List!36158 Token!9746) Bool)

(assert (=> b!3195526 (= e!1992168 (contains!6398 tokens!494 (h!41454 (t!236613 tokens!494))))))

(assert (= (and d!873668 res!1300231) b!3195526))

(declare-fun b_lambda!87171 () Bool)

(assert (=> (not b_lambda!87171) (not d!873668)))

(declare-fun m!3455635 () Bool)

(assert (=> d!873668 m!3455635))

(declare-fun m!3455637 () Bool)

(assert (=> d!873668 m!3455637))

(assert (=> d!873668 m!3454901))

(declare-fun m!3455639 () Bool)

(assert (=> b!3195526 m!3455639))

(assert (=> b!3194945 d!873668))

(declare-fun d!873670 () Bool)

(assert (=> d!873670 (dynLambda!14501 lambda!116989 (h!41454 tokens!494))))

(declare-fun lt!1076770 () Unit!50426)

(assert (=> d!873670 (= lt!1076770 (choose!18646 tokens!494 lambda!116989 (h!41454 tokens!494)))))

(declare-fun e!1992169 () Bool)

(assert (=> d!873670 e!1992169))

(declare-fun res!1300232 () Bool)

(assert (=> d!873670 (=> (not res!1300232) (not e!1992169))))

(assert (=> d!873670 (= res!1300232 (forall!7330 tokens!494 lambda!116989))))

(assert (=> d!873670 (= (forallContained!1161 tokens!494 lambda!116989 (h!41454 tokens!494)) lt!1076770)))

(declare-fun b!3195527 () Bool)

(assert (=> b!3195527 (= e!1992169 (contains!6398 tokens!494 (h!41454 tokens!494)))))

(assert (= (and d!873670 res!1300232) b!3195527))

(declare-fun b_lambda!87173 () Bool)

(assert (=> (not b_lambda!87173) (not d!873670)))

(assert (=> d!873670 m!3454923))

(declare-fun m!3455641 () Bool)

(assert (=> d!873670 m!3455641))

(assert (=> d!873670 m!3454901))

(declare-fun m!3455643 () Bool)

(assert (=> b!3195527 m!3455643))

(assert (=> b!3194945 d!873670))

(declare-fun d!873672 () Bool)

(declare-fun lt!1076793 () BalanceConc!21124)

(declare-fun printListTailRec!553 (LexerInterface!4779 List!36158 List!36157) List!36157)

(declare-fun dropList!1070 (BalanceConc!21126 Int) List!36158)

(assert (=> d!873672 (= (list!12799 lt!1076793) (printListTailRec!553 thiss!18206 (dropList!1070 lt!1076571 0) (list!12799 (BalanceConc!21125 Empty!10755))))))

(declare-fun e!1992181 () BalanceConc!21124)

(assert (=> d!873672 (= lt!1076793 e!1992181)))

(declare-fun c!536328 () Bool)

(assert (=> d!873672 (= c!536328 (>= 0 (size!27133 lt!1076571)))))

(declare-fun e!1992182 () Bool)

(assert (=> d!873672 e!1992182))

(declare-fun res!1300248 () Bool)

(assert (=> d!873672 (=> (not res!1300248) (not e!1992182))))

(assert (=> d!873672 (= res!1300248 (>= 0 0))))

(assert (=> d!873672 (= (printTailRec!1276 thiss!18206 lt!1076571 0 (BalanceConc!21125 Empty!10755)) lt!1076793)))

(declare-fun b!3195549 () Bool)

(assert (=> b!3195549 (= e!1992182 (<= 0 (size!27133 lt!1076571)))))

(declare-fun b!3195550 () Bool)

(assert (=> b!3195550 (= e!1992181 (BalanceConc!21125 Empty!10755))))

(declare-fun b!3195551 () Bool)

(declare-fun ++!8624 (BalanceConc!21124 BalanceConc!21124) BalanceConc!21124)

(assert (=> b!3195551 (= e!1992181 (printTailRec!1276 thiss!18206 lt!1076571 (+ 0 1) (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (apply!8117 lt!1076571 0)))))))

(declare-fun lt!1076796 () List!36158)

(assert (=> b!3195551 (= lt!1076796 (list!12803 lt!1076571))))

(declare-fun lt!1076798 () Unit!50426)

(declare-fun lemmaDropApply!1029 (List!36158 Int) Unit!50426)

(assert (=> b!3195551 (= lt!1076798 (lemmaDropApply!1029 lt!1076796 0))))

(declare-fun head!7003 (List!36158) Token!9746)

(declare-fun drop!1853 (List!36158 Int) List!36158)

(declare-fun apply!8118 (List!36158 Int) Token!9746)

(assert (=> b!3195551 (= (head!7003 (drop!1853 lt!1076796 0)) (apply!8118 lt!1076796 0))))

(declare-fun lt!1076799 () Unit!50426)

(assert (=> b!3195551 (= lt!1076799 lt!1076798)))

(declare-fun lt!1076794 () List!36158)

(assert (=> b!3195551 (= lt!1076794 (list!12803 lt!1076571))))

(declare-fun lt!1076795 () Unit!50426)

(declare-fun lemmaDropTail!913 (List!36158 Int) Unit!50426)

(assert (=> b!3195551 (= lt!1076795 (lemmaDropTail!913 lt!1076794 0))))

(declare-fun tail!5197 (List!36158) List!36158)

(assert (=> b!3195551 (= (tail!5197 (drop!1853 lt!1076794 0)) (drop!1853 lt!1076794 (+ 0 1)))))

(declare-fun lt!1076797 () Unit!50426)

(assert (=> b!3195551 (= lt!1076797 lt!1076795)))

(assert (= (and d!873672 res!1300248) b!3195549))

(assert (= (and d!873672 c!536328) b!3195550))

(assert (= (and d!873672 (not c!536328)) b!3195551))

(declare-fun m!3455699 () Bool)

(assert (=> d!873672 m!3455699))

(assert (=> d!873672 m!3455699))

(declare-fun m!3455701 () Bool)

(assert (=> d!873672 m!3455701))

(declare-fun m!3455703 () Bool)

(assert (=> d!873672 m!3455703))

(assert (=> d!873672 m!3455701))

(declare-fun m!3455705 () Bool)

(assert (=> d!873672 m!3455705))

(declare-fun m!3455707 () Bool)

(assert (=> d!873672 m!3455707))

(assert (=> b!3195549 m!3455707))

(declare-fun m!3455709 () Bool)

(assert (=> b!3195551 m!3455709))

(declare-fun m!3455711 () Bool)

(assert (=> b!3195551 m!3455711))

(declare-fun m!3455713 () Bool)

(assert (=> b!3195551 m!3455713))

(declare-fun m!3455715 () Bool)

(assert (=> b!3195551 m!3455715))

(declare-fun m!3455717 () Bool)

(assert (=> b!3195551 m!3455717))

(declare-fun m!3455719 () Bool)

(assert (=> b!3195551 m!3455719))

(declare-fun m!3455721 () Bool)

(assert (=> b!3195551 m!3455721))

(assert (=> b!3195551 m!3455709))

(assert (=> b!3195551 m!3455711))

(assert (=> b!3195551 m!3455717))

(assert (=> b!3195551 m!3455715))

(declare-fun m!3455725 () Bool)

(assert (=> b!3195551 m!3455725))

(declare-fun m!3455727 () Bool)

(assert (=> b!3195551 m!3455727))

(declare-fun m!3455731 () Bool)

(assert (=> b!3195551 m!3455731))

(declare-fun m!3455735 () Bool)

(assert (=> b!3195551 m!3455735))

(declare-fun m!3455737 () Bool)

(assert (=> b!3195551 m!3455737))

(assert (=> b!3195551 m!3455713))

(declare-fun m!3455739 () Bool)

(assert (=> b!3195551 m!3455739))

(assert (=> b!3194952 d!873672))

(declare-fun d!873682 () Bool)

(declare-fun lt!1076806 () BalanceConc!21124)

(assert (=> d!873682 (= (list!12799 lt!1076806) (printList!1329 thiss!18206 (list!12803 lt!1076571)))))

(assert (=> d!873682 (= lt!1076806 (printTailRec!1276 thiss!18206 lt!1076571 0 (BalanceConc!21125 Empty!10755)))))

(assert (=> d!873682 (= (print!1844 thiss!18206 lt!1076571) lt!1076806)))

(declare-fun bs!540512 () Bool)

(assert (= bs!540512 d!873682))

(declare-fun m!3455755 () Bool)

(assert (=> bs!540512 m!3455755))

(assert (=> bs!540512 m!3455735))

(assert (=> bs!540512 m!3455735))

(declare-fun m!3455761 () Bool)

(assert (=> bs!540512 m!3455761))

(assert (=> bs!540512 m!3454851))

(assert (=> b!3194952 d!873682))

(declare-fun d!873686 () Bool)

(assert (=> d!873686 (= (list!12799 lt!1076574) (list!12801 (c!536197 lt!1076574)))))

(declare-fun bs!540513 () Bool)

(assert (= bs!540513 d!873686))

(declare-fun m!3455763 () Bool)

(assert (=> bs!540513 m!3455763))

(assert (=> b!3194952 d!873686))

(declare-fun d!873688 () Bool)

(declare-fun e!1992229 () Bool)

(assert (=> d!873688 e!1992229))

(declare-fun res!1300257 () Bool)

(assert (=> d!873688 (=> (not res!1300257) (not e!1992229))))

(declare-fun lt!1076809 () BalanceConc!21126)

(assert (=> d!873688 (= res!1300257 (= (list!12803 lt!1076809) (Cons!36034 (h!41454 tokens!494) Nil!36034)))))

(declare-fun singleton!986 (Token!9746) BalanceConc!21126)

(assert (=> d!873688 (= lt!1076809 (singleton!986 (h!41454 tokens!494)))))

(assert (=> d!873688 (= (singletonSeq!2286 (h!41454 tokens!494)) lt!1076809)))

(declare-fun b!3195613 () Bool)

(declare-fun isBalanced!3201 (Conc!10756) Bool)

(assert (=> b!3195613 (= e!1992229 (isBalanced!3201 (c!536198 lt!1076809)))))

(assert (= (and d!873688 res!1300257) b!3195613))

(declare-fun m!3455769 () Bool)

(assert (=> d!873688 m!3455769))

(declare-fun m!3455771 () Bool)

(assert (=> d!873688 m!3455771))

(declare-fun m!3455773 () Bool)

(assert (=> b!3195613 m!3455773))

(assert (=> b!3194952 d!873688))

(declare-fun d!873694 () Bool)

(declare-fun c!536331 () Bool)

(assert (=> d!873694 (= c!536331 ((_ is Cons!36034) (Cons!36034 (h!41454 tokens!494) Nil!36034)))))

(declare-fun e!1992232 () List!36157)

(assert (=> d!873694 (= (printList!1329 thiss!18206 (Cons!36034 (h!41454 tokens!494) Nil!36034)) e!1992232)))

(declare-fun b!3195618 () Bool)

(assert (=> b!3195618 (= e!1992232 (++!8622 (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))) (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))))

(declare-fun b!3195619 () Bool)

(assert (=> b!3195619 (= e!1992232 Nil!36033)))

(assert (= (and d!873694 c!536331) b!3195618))

(assert (= (and d!873694 (not c!536331)) b!3195619))

(declare-fun m!3455775 () Bool)

(assert (=> b!3195618 m!3455775))

(assert (=> b!3195618 m!3455775))

(declare-fun m!3455777 () Bool)

(assert (=> b!3195618 m!3455777))

(declare-fun m!3455779 () Bool)

(assert (=> b!3195618 m!3455779))

(assert (=> b!3195618 m!3455777))

(assert (=> b!3195618 m!3455779))

(declare-fun m!3455781 () Bool)

(assert (=> b!3195618 m!3455781))

(assert (=> b!3194952 d!873694))

(declare-fun d!873696 () Bool)

(assert (=> d!873696 (= (inv!48873 (tag!5708 (h!41455 rules!2135))) (= (mod (str.len (value!168374 (tag!5708 (h!41455 rules!2135)))) 2) 0))))

(assert (=> b!3194949 d!873696))

(declare-fun d!873698 () Bool)

(declare-fun res!1300258 () Bool)

(declare-fun e!1992233 () Bool)

(assert (=> d!873698 (=> (not res!1300258) (not e!1992233))))

(assert (=> d!873698 (= res!1300258 (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (h!41455 rules!2135)))))))

(assert (=> d!873698 (= (inv!48876 (transformation!5190 (h!41455 rules!2135))) e!1992233)))

(declare-fun b!3195620 () Bool)

(assert (=> b!3195620 (= e!1992233 (equivClasses!2046 (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (h!41455 rules!2135)))))))

(assert (= (and d!873698 res!1300258) b!3195620))

(declare-fun m!3455783 () Bool)

(assert (=> d!873698 m!3455783))

(declare-fun m!3455785 () Bool)

(assert (=> b!3195620 m!3455785))

(assert (=> b!3194949 d!873698))

(declare-fun d!873700 () Bool)

(assert (=> d!873700 (= (inv!48873 (tag!5708 (rule!7622 separatorToken!241))) (= (mod (str.len (value!168374 (tag!5708 (rule!7622 separatorToken!241)))) 2) 0))))

(assert (=> b!3194951 d!873700))

(declare-fun d!873702 () Bool)

(declare-fun res!1300259 () Bool)

(declare-fun e!1992234 () Bool)

(assert (=> d!873702 (=> (not res!1300259) (not e!1992234))))

(assert (=> d!873702 (= res!1300259 (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))))))

(assert (=> d!873702 (= (inv!48876 (transformation!5190 (rule!7622 separatorToken!241))) e!1992234)))

(declare-fun b!3195621 () Bool)

(assert (=> b!3195621 (= e!1992234 (equivClasses!2046 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))))))

(assert (= (and d!873702 res!1300259) b!3195621))

(declare-fun m!3455787 () Bool)

(assert (=> d!873702 m!3455787))

(declare-fun m!3455789 () Bool)

(assert (=> b!3195621 m!3455789))

(assert (=> b!3194951 d!873702))

(declare-fun d!873704 () Bool)

(declare-fun e!1992237 () Bool)

(assert (=> d!873704 e!1992237))

(declare-fun c!536334 () Bool)

(assert (=> d!873704 (= c!536334 ((_ is EmptyExpr!9949) (regex!5190 lt!1076588)))))

(declare-fun lt!1076810 () Bool)

(declare-fun e!1992241 () Bool)

(assert (=> d!873704 (= lt!1076810 e!1992241)))

(declare-fun c!536333 () Bool)

(assert (=> d!873704 (= c!536333 (isEmpty!20115 lt!1076594))))

(assert (=> d!873704 (validRegex!4542 (regex!5190 lt!1076588))))

(assert (=> d!873704 (= (matchR!4583 (regex!5190 lt!1076588) lt!1076594) lt!1076810)))

(declare-fun b!3195622 () Bool)

(declare-fun e!1992239 () Bool)

(assert (=> b!3195622 (= e!1992237 e!1992239)))

(declare-fun c!536332 () Bool)

(assert (=> b!3195622 (= c!536332 ((_ is EmptyLang!9949) (regex!5190 lt!1076588)))))

(declare-fun b!3195623 () Bool)

(assert (=> b!3195623 (= e!1992241 (nullable!3390 (regex!5190 lt!1076588)))))

(declare-fun b!3195624 () Bool)

(assert (=> b!3195624 (= e!1992241 (matchR!4583 (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594)) (tail!5196 lt!1076594)))))

(declare-fun b!3195625 () Bool)

(declare-fun e!1992238 () Bool)

(assert (=> b!3195625 (= e!1992238 (= (head!7002 lt!1076594) (c!536196 (regex!5190 lt!1076588))))))

(declare-fun bm!231413 () Bool)

(declare-fun call!231418 () Bool)

(assert (=> bm!231413 (= call!231418 (isEmpty!20115 lt!1076594))))

(declare-fun b!3195626 () Bool)

(declare-fun res!1300263 () Bool)

(declare-fun e!1992235 () Bool)

(assert (=> b!3195626 (=> res!1300263 e!1992235)))

(assert (=> b!3195626 (= res!1300263 (not ((_ is ElementMatch!9949) (regex!5190 lt!1076588))))))

(assert (=> b!3195626 (= e!1992239 e!1992235)))

(declare-fun b!3195627 () Bool)

(assert (=> b!3195627 (= e!1992237 (= lt!1076810 call!231418))))

(declare-fun b!3195628 () Bool)

(declare-fun res!1300265 () Bool)

(assert (=> b!3195628 (=> res!1300265 e!1992235)))

(assert (=> b!3195628 (= res!1300265 e!1992238)))

(declare-fun res!1300261 () Bool)

(assert (=> b!3195628 (=> (not res!1300261) (not e!1992238))))

(assert (=> b!3195628 (= res!1300261 lt!1076810)))

(declare-fun b!3195629 () Bool)

(assert (=> b!3195629 (= e!1992239 (not lt!1076810))))

(declare-fun b!3195630 () Bool)

(declare-fun e!1992236 () Bool)

(declare-fun e!1992240 () Bool)

(assert (=> b!3195630 (= e!1992236 e!1992240)))

(declare-fun res!1300267 () Bool)

(assert (=> b!3195630 (=> res!1300267 e!1992240)))

(assert (=> b!3195630 (= res!1300267 call!231418)))

(declare-fun b!3195631 () Bool)

(declare-fun res!1300262 () Bool)

(assert (=> b!3195631 (=> (not res!1300262) (not e!1992238))))

(assert (=> b!3195631 (= res!1300262 (isEmpty!20115 (tail!5196 lt!1076594)))))

(declare-fun b!3195632 () Bool)

(declare-fun res!1300266 () Bool)

(assert (=> b!3195632 (=> (not res!1300266) (not e!1992238))))

(assert (=> b!3195632 (= res!1300266 (not call!231418))))

(declare-fun b!3195633 () Bool)

(assert (=> b!3195633 (= e!1992240 (not (= (head!7002 lt!1076594) (c!536196 (regex!5190 lt!1076588)))))))

(declare-fun b!3195634 () Bool)

(declare-fun res!1300260 () Bool)

(assert (=> b!3195634 (=> res!1300260 e!1992240)))

(assert (=> b!3195634 (= res!1300260 (not (isEmpty!20115 (tail!5196 lt!1076594))))))

(declare-fun b!3195635 () Bool)

(assert (=> b!3195635 (= e!1992235 e!1992236)))

(declare-fun res!1300264 () Bool)

(assert (=> b!3195635 (=> (not res!1300264) (not e!1992236))))

(assert (=> b!3195635 (= res!1300264 (not lt!1076810))))

(assert (= (and d!873704 c!536333) b!3195623))

(assert (= (and d!873704 (not c!536333)) b!3195624))

(assert (= (and d!873704 c!536334) b!3195627))

(assert (= (and d!873704 (not c!536334)) b!3195622))

(assert (= (and b!3195622 c!536332) b!3195629))

(assert (= (and b!3195622 (not c!536332)) b!3195626))

(assert (= (and b!3195626 (not res!1300263)) b!3195628))

(assert (= (and b!3195628 res!1300261) b!3195632))

(assert (= (and b!3195632 res!1300266) b!3195631))

(assert (= (and b!3195631 res!1300262) b!3195625))

(assert (= (and b!3195628 (not res!1300265)) b!3195635))

(assert (= (and b!3195635 res!1300264) b!3195630))

(assert (= (and b!3195630 (not res!1300267)) b!3195634))

(assert (= (and b!3195634 (not res!1300260)) b!3195633))

(assert (= (or b!3195627 b!3195630 b!3195632) bm!231413))

(declare-fun m!3455791 () Bool)

(assert (=> b!3195633 m!3455791))

(assert (=> b!3195625 m!3455791))

(assert (=> b!3195624 m!3455791))

(assert (=> b!3195624 m!3455791))

(declare-fun m!3455793 () Bool)

(assert (=> b!3195624 m!3455793))

(declare-fun m!3455795 () Bool)

(assert (=> b!3195624 m!3455795))

(assert (=> b!3195624 m!3455793))

(assert (=> b!3195624 m!3455795))

(declare-fun m!3455797 () Bool)

(assert (=> b!3195624 m!3455797))

(declare-fun m!3455799 () Bool)

(assert (=> b!3195623 m!3455799))

(assert (=> b!3195631 m!3455795))

(assert (=> b!3195631 m!3455795))

(declare-fun m!3455801 () Bool)

(assert (=> b!3195631 m!3455801))

(assert (=> b!3195634 m!3455795))

(assert (=> b!3195634 m!3455795))

(assert (=> b!3195634 m!3455801))

(declare-fun m!3455803 () Bool)

(assert (=> d!873704 m!3455803))

(declare-fun m!3455805 () Bool)

(assert (=> d!873704 m!3455805))

(assert (=> bm!231413 m!3455803))

(assert (=> b!3194950 d!873704))

(declare-fun d!873706 () Bool)

(assert (=> d!873706 (= (get!11458 lt!1076582) (v!35582 lt!1076582))))

(assert (=> b!3194950 d!873706))

(declare-fun b!3195646 () Bool)

(declare-fun b_free!84885 () Bool)

(declare-fun b_next!85589 () Bool)

(assert (=> b!3195646 (= b_free!84885 (not b_next!85589))))

(declare-fun t!236694 () Bool)

(declare-fun tb!156179 () Bool)

(assert (=> (and b!3195646 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236694) tb!156179))

(declare-fun result!198426 () Bool)

(assert (= result!198426 result!198352))

(assert (=> d!873510 t!236694))

(declare-fun b_and!212099 () Bool)

(declare-fun tp!1010569 () Bool)

(assert (=> b!3195646 (= tp!1010569 (and (=> t!236694 result!198426) b_and!212099))))

(declare-fun b_free!84887 () Bool)

(declare-fun b_next!85591 () Bool)

(assert (=> b!3195646 (= b_free!84887 (not b_next!85591))))

(declare-fun t!236696 () Bool)

(declare-fun tb!156181 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236696) tb!156181))

(declare-fun result!198428 () Bool)

(assert (= result!198428 result!198344))

(assert (=> d!873470 t!236696))

(declare-fun t!236698 () Bool)

(declare-fun tb!156183 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) t!236698) tb!156183))

(declare-fun result!198430 () Bool)

(assert (= result!198430 result!198360))

(assert (=> d!873520 t!236698))

(declare-fun tb!156185 () Bool)

(declare-fun t!236700 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) t!236700) tb!156185))

(declare-fun result!198432 () Bool)

(assert (= result!198432 result!198366))

(assert (=> d!873532 t!236700))

(assert (=> b!3195254 t!236698))

(assert (=> b!3194980 t!236696))

(declare-fun tp!1010571 () Bool)

(declare-fun b_and!212101 () Bool)

(assert (=> b!3195646 (= tp!1010571 (and (=> t!236700 result!198432) (=> t!236698 result!198430) (=> t!236696 result!198428) b_and!212101))))

(declare-fun e!1992250 () Bool)

(assert (=> b!3195646 (= e!1992250 (and tp!1010569 tp!1010571))))

(declare-fun e!1992253 () Bool)

(declare-fun tp!1010572 () Bool)

(declare-fun b!3195645 () Bool)

(assert (=> b!3195645 (= e!1992253 (and tp!1010572 (inv!48873 (tag!5708 (h!41455 (t!236614 rules!2135)))) (inv!48876 (transformation!5190 (h!41455 (t!236614 rules!2135)))) e!1992250))))

(declare-fun b!3195644 () Bool)

(declare-fun e!1992252 () Bool)

(declare-fun tp!1010570 () Bool)

(assert (=> b!3195644 (= e!1992252 (and e!1992253 tp!1010570))))

(assert (=> b!3194953 (= tp!1010489 e!1992252)))

(assert (= b!3195645 b!3195646))

(assert (= b!3195644 b!3195645))

(assert (= (and b!3194953 ((_ is Cons!36035) (t!236614 rules!2135))) b!3195644))

(declare-fun m!3455807 () Bool)

(assert (=> b!3195645 m!3455807))

(declare-fun m!3455809 () Bool)

(assert (=> b!3195645 m!3455809))

(declare-fun b!3195660 () Bool)

(declare-fun b_free!84889 () Bool)

(declare-fun b_next!85593 () Bool)

(assert (=> b!3195660 (= b_free!84889 (not b_next!85593))))

(declare-fun t!236702 () Bool)

(declare-fun tb!156187 () Bool)

(assert (=> (and b!3195660 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236702) tb!156187))

(declare-fun result!198436 () Bool)

(assert (= result!198436 result!198352))

(assert (=> d!873510 t!236702))

(declare-fun b_and!212103 () Bool)

(declare-fun tp!1010587 () Bool)

(assert (=> b!3195660 (= tp!1010587 (and (=> t!236702 result!198436) b_and!212103))))

(declare-fun b_free!84891 () Bool)

(declare-fun b_next!85595 () Bool)

(assert (=> b!3195660 (= b_free!84891 (not b_next!85595))))

(declare-fun t!236704 () Bool)

(declare-fun tb!156189 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236704) tb!156189))

(declare-fun result!198438 () Bool)

(assert (= result!198438 result!198344))

(assert (=> d!873470 t!236704))

(declare-fun t!236706 () Bool)

(declare-fun tb!156191 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) t!236706) tb!156191))

(declare-fun result!198440 () Bool)

(assert (= result!198440 result!198360))

(assert (=> d!873520 t!236706))

(declare-fun t!236708 () Bool)

(declare-fun tb!156193 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) t!236708) tb!156193))

(declare-fun result!198442 () Bool)

(assert (= result!198442 result!198366))

(assert (=> d!873532 t!236708))

(assert (=> b!3195254 t!236706))

(assert (=> b!3194980 t!236704))

(declare-fun tp!1010585 () Bool)

(declare-fun b_and!212105 () Bool)

(assert (=> b!3195660 (= tp!1010585 (and (=> t!236708 result!198442) (=> t!236704 result!198438) (=> t!236706 result!198440) b_and!212105))))

(declare-fun e!1992268 () Bool)

(declare-fun e!1992271 () Bool)

(declare-fun b!3195658 () Bool)

(declare-fun tp!1010586 () Bool)

(assert (=> b!3195658 (= e!1992271 (and (inv!21 (value!168375 (h!41454 (t!236613 tokens!494)))) e!1992268 tp!1010586))))

(declare-fun e!1992269 () Bool)

(declare-fun tp!1010584 () Bool)

(declare-fun b!3195657 () Bool)

(assert (=> b!3195657 (= e!1992269 (and (inv!48877 (h!41454 (t!236613 tokens!494))) e!1992271 tp!1010584))))

(declare-fun tp!1010583 () Bool)

(declare-fun e!1992270 () Bool)

(declare-fun b!3195659 () Bool)

(assert (=> b!3195659 (= e!1992268 (and tp!1010583 (inv!48873 (tag!5708 (rule!7622 (h!41454 (t!236613 tokens!494))))) (inv!48876 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) e!1992270))))

(assert (=> b!3195660 (= e!1992270 (and tp!1010587 tp!1010585))))

(assert (=> b!3194958 (= tp!1010488 e!1992269)))

(assert (= b!3195659 b!3195660))

(assert (= b!3195658 b!3195659))

(assert (= b!3195657 b!3195658))

(assert (= (and b!3194958 ((_ is Cons!36034) (t!236613 tokens!494))) b!3195657))

(declare-fun m!3455811 () Bool)

(assert (=> b!3195658 m!3455811))

(declare-fun m!3455813 () Bool)

(assert (=> b!3195657 m!3455813))

(declare-fun m!3455815 () Bool)

(assert (=> b!3195659 m!3455815))

(declare-fun m!3455817 () Bool)

(assert (=> b!3195659 m!3455817))

(declare-fun e!1992274 () Bool)

(assert (=> b!3194939 (= tp!1010482 e!1992274)))

(declare-fun b!3195671 () Bool)

(declare-fun tp_is_empty!17281 () Bool)

(assert (=> b!3195671 (= e!1992274 tp_is_empty!17281)))

(declare-fun b!3195672 () Bool)

(declare-fun tp!1010600 () Bool)

(declare-fun tp!1010599 () Bool)

(assert (=> b!3195672 (= e!1992274 (and tp!1010600 tp!1010599))))

(declare-fun b!3195673 () Bool)

(declare-fun tp!1010602 () Bool)

(assert (=> b!3195673 (= e!1992274 tp!1010602)))

(declare-fun b!3195674 () Bool)

(declare-fun tp!1010601 () Bool)

(declare-fun tp!1010598 () Bool)

(assert (=> b!3195674 (= e!1992274 (and tp!1010601 tp!1010598))))

(assert (= (and b!3194939 ((_ is ElementMatch!9949) (regex!5190 (rule!7622 (h!41454 tokens!494))))) b!3195671))

(assert (= (and b!3194939 ((_ is Concat!15369) (regex!5190 (rule!7622 (h!41454 tokens!494))))) b!3195672))

(assert (= (and b!3194939 ((_ is Star!9949) (regex!5190 (rule!7622 (h!41454 tokens!494))))) b!3195673))

(assert (= (and b!3194939 ((_ is Union!9949) (regex!5190 (rule!7622 (h!41454 tokens!494))))) b!3195674))

(declare-fun b!3195679 () Bool)

(declare-fun e!1992277 () Bool)

(declare-fun tp!1010605 () Bool)

(assert (=> b!3195679 (= e!1992277 (and tp_is_empty!17281 tp!1010605))))

(assert (=> b!3194944 (= tp!1010491 e!1992277)))

(assert (= (and b!3194944 ((_ is Cons!36033) (originalCharacters!5904 (h!41454 tokens!494)))) b!3195679))

(declare-fun e!1992278 () Bool)

(assert (=> b!3194949 (= tp!1010485 e!1992278)))

(declare-fun b!3195680 () Bool)

(assert (=> b!3195680 (= e!1992278 tp_is_empty!17281)))

(declare-fun b!3195681 () Bool)

(declare-fun tp!1010608 () Bool)

(declare-fun tp!1010607 () Bool)

(assert (=> b!3195681 (= e!1992278 (and tp!1010608 tp!1010607))))

(declare-fun b!3195682 () Bool)

(declare-fun tp!1010610 () Bool)

(assert (=> b!3195682 (= e!1992278 tp!1010610)))

(declare-fun b!3195683 () Bool)

(declare-fun tp!1010609 () Bool)

(declare-fun tp!1010606 () Bool)

(assert (=> b!3195683 (= e!1992278 (and tp!1010609 tp!1010606))))

(assert (= (and b!3194949 ((_ is ElementMatch!9949) (regex!5190 (h!41455 rules!2135)))) b!3195680))

(assert (= (and b!3194949 ((_ is Concat!15369) (regex!5190 (h!41455 rules!2135)))) b!3195681))

(assert (= (and b!3194949 ((_ is Star!9949) (regex!5190 (h!41455 rules!2135)))) b!3195682))

(assert (= (and b!3194949 ((_ is Union!9949) (regex!5190 (h!41455 rules!2135)))) b!3195683))

(declare-fun e!1992279 () Bool)

(assert (=> b!3194951 (= tp!1010493 e!1992279)))

(declare-fun b!3195684 () Bool)

(assert (=> b!3195684 (= e!1992279 tp_is_empty!17281)))

(declare-fun b!3195685 () Bool)

(declare-fun tp!1010613 () Bool)

(declare-fun tp!1010612 () Bool)

(assert (=> b!3195685 (= e!1992279 (and tp!1010613 tp!1010612))))

(declare-fun b!3195686 () Bool)

(declare-fun tp!1010615 () Bool)

(assert (=> b!3195686 (= e!1992279 tp!1010615)))

(declare-fun b!3195687 () Bool)

(declare-fun tp!1010614 () Bool)

(declare-fun tp!1010611 () Bool)

(assert (=> b!3195687 (= e!1992279 (and tp!1010614 tp!1010611))))

(assert (= (and b!3194951 ((_ is ElementMatch!9949) (regex!5190 (rule!7622 separatorToken!241)))) b!3195684))

(assert (= (and b!3194951 ((_ is Concat!15369) (regex!5190 (rule!7622 separatorToken!241)))) b!3195685))

(assert (= (and b!3194951 ((_ is Star!9949) (regex!5190 (rule!7622 separatorToken!241)))) b!3195686))

(assert (= (and b!3194951 ((_ is Union!9949) (regex!5190 (rule!7622 separatorToken!241)))) b!3195687))

(declare-fun b!3195688 () Bool)

(declare-fun e!1992280 () Bool)

(declare-fun tp!1010616 () Bool)

(assert (=> b!3195688 (= e!1992280 (and tp_is_empty!17281 tp!1010616))))

(assert (=> b!3194935 (= tp!1010492 e!1992280)))

(assert (= (and b!3194935 ((_ is Cons!36033) (originalCharacters!5904 separatorToken!241))) b!3195688))

(declare-fun b_lambda!87201 () Bool)

(assert (= b_lambda!87173 (or b!3194959 b_lambda!87201)))

(declare-fun bs!540516 () Bool)

(declare-fun d!873708 () Bool)

(assert (= bs!540516 (and d!873708 b!3194959)))

(assert (=> bs!540516 (= (dynLambda!14501 lambda!116989 (h!41454 tokens!494)) (not (isSeparator!5190 (rule!7622 (h!41454 tokens!494)))))))

(assert (=> d!873670 d!873708))

(declare-fun b_lambda!87203 () Bool)

(assert (= b_lambda!87149 (or (and b!3195660 b_free!84891 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194955 b_free!84875) (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194957 b_free!84871 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) b_lambda!87203)))

(declare-fun b_lambda!87205 () Bool)

(assert (= b_lambda!87153 (or (and b!3194957 b_free!84869 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194955 b_free!84873) (and b!3195646 b_free!84885 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194963 b_free!84865 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3195660 b_free!84889 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) b_lambda!87205)))

(declare-fun b_lambda!87207 () Bool)

(assert (= b_lambda!87171 (or b!3194959 b_lambda!87207)))

(declare-fun bs!540517 () Bool)

(declare-fun d!873710 () Bool)

(assert (= bs!540517 (and d!873710 b!3194959)))

(assert (=> bs!540517 (= (dynLambda!14501 lambda!116989 (h!41454 (t!236613 tokens!494))) (not (isSeparator!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))))

(assert (=> d!873668 d!873710))

(declare-fun b_lambda!87209 () Bool)

(assert (= b_lambda!87165 (or (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) (and b!3194957 b_free!84871) (and b!3194955 b_free!84875 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) (and b!3195660 b_free!84891 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) b_lambda!87209)))

(declare-fun b_lambda!87211 () Bool)

(assert (= b_lambda!87147 (or b!3194959 b_lambda!87211)))

(assert (=> b!3194969 d!873708))

(declare-fun b_lambda!87213 () Bool)

(assert (= b_lambda!87151 (or (and b!3195660 b_free!84891 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194955 b_free!84875) (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194957 b_free!84871 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) b_lambda!87213)))

(declare-fun b_lambda!87215 () Bool)

(assert (= b_lambda!87155 (or (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) (and b!3194957 b_free!84871) (and b!3194955 b_free!84875 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) (and b!3195660 b_free!84891 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))))) b_lambda!87215)))

(declare-fun b_lambda!87217 () Bool)

(assert (= b_lambda!87157 (or (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3194955 b_free!84875 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3195660 b_free!84891) (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3194957 b_free!84871 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) b_lambda!87217)))

(check-sat (not b_lambda!87205) (not b!3195523) (not b!3195687) (not b!3195257) (not b!3195519) (not b!3195618) (not d!873570) (not b_next!85591) (not b!3195039) (not b!3194981) (not b!3195046) (not b!3195248) (not b!3195679) (not d!873516) (not d!873698) (not b!3194995) (not b!3195657) (not b!3195508) (not b!3195042) (not d!873672) (not b_lambda!87207) (not b!3195238) (not tb!156115) (not b_lambda!87209) (not d!873496) (not b!3195013) (not b!3195260) (not b!3195151) (not b!3195137) (not b!3195144) (not bm!231392) (not b!3195624) (not b_next!85573) (not b!3195507) (not d!873482) (not d!873468) b_and!212103 (not b_lambda!87211) (not b!3195142) (not d!873488) (not b_lambda!87203) (not tb!156127) b_and!212069 (not b!3194999) (not d!873658) b_and!212067 (not b!3195103) (not b!3195645) (not d!873702) b_and!212101 (not b!3195041) (not b_next!85579) (not tb!156121) (not b!3194970) (not b!3195674) (not d!873494) (not d!873490) (not b!3195634) (not b!3195181) (not b!3195141) (not d!873478) (not d!873576) (not d!873532) (not d!873472) (not d!873498) (not b!3195620) (not b!3195182) (not b_lambda!87201) (not b!3195625) (not d!873470) (not d!873480) (not d!873704) (not b!3195258) (not b!3195146) (not b_next!85593) (not b!3195153) (not b_next!85571) (not d!873544) (not b!3195686) b_and!212105 (not d!873580) (not b!3195522) b_and!212099 (not d!873504) (not b_next!85589) (not d!873486) (not d!873574) (not d!873502) (not b!3194975) (not b!3195119) (not b!3195061) (not d!873474) (not d!873578) b_and!212031 (not d!873688) (not b!3195488) (not d!873682) (not d!873660) (not b!3195240) (not b!3195621) (not b!3195688) (not bm!231413) (not b!3195255) (not d!873572) (not b!3195659) (not b!3195683) (not bm!231396) (not b!3195644) (not b!3195138) (not b_lambda!87215) (not d!873668) (not b!3195473) (not b!3195126) (not b!3195045) (not b!3195012) (not b!3194980) (not b!3195180) (not b!3195093) (not b!3195043) (not b!3195492) (not b!3195256) (not bm!231391) (not b!3195527) (not b_next!85577) (not b!3195682) (not b!3195493) (not b!3195147) (not b!3195673) (not b!3195239) tp_is_empty!17281 (not b!3195549) b_and!212033 (not d!873670) (not b_next!85575) (not b!3195633) (not b!3195249) (not bm!231390) (not b!3195044) (not b_next!85595) (not b!3195613) (not b!3195062) (not b!3195149) (not b!3195631) (not b!3194984) (not b!3195063) (not b_lambda!87217) (not b!3195489) (not tb!156133) (not d!873492) (not b!3195254) (not b!3195658) (not b!3195019) (not b!3195104) (not d!873524) (not b!3195551) (not b!3195040) (not b!3195526) (not b!3195685) (not b_next!85569) (not b!3195020) (not b!3195261) b_and!212071 (not b!3195014) (not b!3194998) (not b!3195094) (not b_lambda!87213) b_and!212035 (not d!873522) (not b!3195681) (not b!3195253) (not d!873530) (not d!873534) (not b!3195482) (not b!3195623) (not d!873520) (not d!873662) (not d!873686) (not b!3195011) (not b!3195095) (not b!3195246) (not b!3195672) (not d!873518))
(check-sat (not b_next!85591) (not b_next!85573) b_and!212103 b_and!212069 b_and!212067 (not b_next!85593) (not b_next!85571) (not b_next!85589) b_and!212031 (not b_next!85595) (not b_next!85569) b_and!212101 (not b_next!85579) b_and!212105 b_and!212099 (not b_next!85577) b_and!212033 (not b_next!85575) b_and!212071 b_and!212035)
(get-model)

(declare-fun b!3195776 () Bool)

(declare-fun e!1992332 () List!36157)

(assert (=> b!3195776 (= e!1992332 (ite c!536227 call!231397 call!231398))))

(declare-fun e!1992331 () Bool)

(declare-fun lt!1076832 () List!36157)

(declare-fun b!3195779 () Bool)

(assert (=> b!3195779 (= e!1992331 (or (not (= (ite c!536227 call!231397 call!231398) Nil!36033)) (= lt!1076832 (ite c!536227 call!231398 call!231397))))))

(declare-fun b!3195778 () Bool)

(declare-fun res!1300294 () Bool)

(assert (=> b!3195778 (=> (not res!1300294) (not e!1992331))))

(assert (=> b!3195778 (= res!1300294 (= (size!27131 lt!1076832) (+ (size!27131 (ite c!536227 call!231398 call!231397)) (size!27131 (ite c!536227 call!231397 call!231398)))))))

(declare-fun d!873776 () Bool)

(assert (=> d!873776 e!1992331))

(declare-fun res!1300293 () Bool)

(assert (=> d!873776 (=> (not res!1300293) (not e!1992331))))

(assert (=> d!873776 (= res!1300293 (= (content!4864 lt!1076832) ((_ map or) (content!4864 (ite c!536227 call!231398 call!231397)) (content!4864 (ite c!536227 call!231397 call!231398)))))))

(assert (=> d!873776 (= lt!1076832 e!1992332)))

(declare-fun c!536366 () Bool)

(assert (=> d!873776 (= c!536366 ((_ is Nil!36033) (ite c!536227 call!231398 call!231397)))))

(assert (=> d!873776 (= (++!8622 (ite c!536227 call!231398 call!231397) (ite c!536227 call!231397 call!231398)) lt!1076832)))

(declare-fun b!3195777 () Bool)

(assert (=> b!3195777 (= e!1992332 (Cons!36033 (h!41453 (ite c!536227 call!231398 call!231397)) (++!8622 (t!236612 (ite c!536227 call!231398 call!231397)) (ite c!536227 call!231397 call!231398))))))

(assert (= (and d!873776 c!536366) b!3195776))

(assert (= (and d!873776 (not c!536366)) b!3195777))

(assert (= (and d!873776 res!1300293) b!3195778))

(assert (= (and b!3195778 res!1300294) b!3195779))

(declare-fun m!3455957 () Bool)

(assert (=> b!3195778 m!3455957))

(declare-fun m!3455959 () Bool)

(assert (=> b!3195778 m!3455959))

(declare-fun m!3455961 () Bool)

(assert (=> b!3195778 m!3455961))

(declare-fun m!3455963 () Bool)

(assert (=> d!873776 m!3455963))

(declare-fun m!3455965 () Bool)

(assert (=> d!873776 m!3455965))

(declare-fun m!3455967 () Bool)

(assert (=> d!873776 m!3455967))

(declare-fun m!3455969 () Bool)

(assert (=> b!3195777 m!3455969))

(assert (=> bm!231391 d!873776))

(assert (=> b!3195126 d!873470))

(assert (=> b!3195126 d!873468))

(declare-fun e!1992335 () List!36157)

(declare-fun b!3195782 () Bool)

(assert (=> b!3195782 (= e!1992335 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241))))

(declare-fun b!3195785 () Bool)

(declare-fun e!1992334 () Bool)

(declare-fun lt!1076834 () List!36157)

(assert (=> b!3195785 (= e!1992334 (or (not (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241) Nil!36033)) (= lt!1076834 (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241))))))))

(declare-fun b!3195784 () Bool)

(declare-fun res!1300296 () Bool)

(assert (=> b!3195784 (=> (not res!1300296) (not e!1992334))))

(assert (=> b!3195784 (= res!1300296 (= (size!27131 lt!1076834) (+ (size!27131 (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241)))) (size!27131 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241)))))))

(declare-fun d!873784 () Bool)

(assert (=> d!873784 e!1992334))

(declare-fun res!1300295 () Bool)

(assert (=> d!873784 (=> (not res!1300295) (not e!1992334))))

(assert (=> d!873784 (= res!1300295 (= (content!4864 lt!1076834) ((_ map or) (content!4864 (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241)))) (content!4864 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241)))))))

(assert (=> d!873784 (= lt!1076834 e!1992335)))

(declare-fun c!536368 () Bool)

(assert (=> d!873784 (= c!536368 ((_ is Nil!36033) (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241)))))))

(assert (=> d!873784 (= (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241)) lt!1076834)))

(declare-fun b!3195783 () Bool)

(assert (=> b!3195783 (= e!1992335 (Cons!36033 (h!41453 (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241)))) (++!8622 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241)))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 tokens!494) separatorToken!241))))))

(assert (= (and d!873784 c!536368) b!3195782))

(assert (= (and d!873784 (not c!536368)) b!3195783))

(assert (= (and d!873784 res!1300295) b!3195784))

(assert (= (and b!3195784 res!1300296) b!3195785))

(declare-fun m!3455971 () Bool)

(assert (=> b!3195784 m!3455971))

(assert (=> b!3195784 m!3455091))

(declare-fun m!3455973 () Bool)

(assert (=> b!3195784 m!3455973))

(assert (=> b!3195784 m!3454817))

(declare-fun m!3455975 () Bool)

(assert (=> b!3195784 m!3455975))

(declare-fun m!3455977 () Bool)

(assert (=> d!873784 m!3455977))

(assert (=> d!873784 m!3455091))

(declare-fun m!3455979 () Bool)

(assert (=> d!873784 m!3455979))

(assert (=> d!873784 m!3454817))

(declare-fun m!3455981 () Bool)

(assert (=> d!873784 m!3455981))

(assert (=> b!3195783 m!3454817))

(declare-fun m!3455983 () Bool)

(assert (=> b!3195783 m!3455983))

(assert (=> b!3195126 d!873784))

(assert (=> b!3195126 d!873520))

(assert (=> b!3195126 d!873530))

(declare-fun b!3195786 () Bool)

(declare-fun e!1992337 () List!36157)

(assert (=> b!3195786 (= e!1992337 (list!12799 (charsOf!3206 separatorToken!241)))))

(declare-fun lt!1076835 () List!36157)

(declare-fun b!3195789 () Bool)

(declare-fun e!1992336 () Bool)

(assert (=> b!3195789 (= e!1992336 (or (not (= (list!12799 (charsOf!3206 separatorToken!241)) Nil!36033)) (= lt!1076835 (list!12799 (charsOf!3206 (h!41454 tokens!494))))))))

(declare-fun b!3195788 () Bool)

(declare-fun res!1300298 () Bool)

(assert (=> b!3195788 (=> (not res!1300298) (not e!1992336))))

(assert (=> b!3195788 (= res!1300298 (= (size!27131 lt!1076835) (+ (size!27131 (list!12799 (charsOf!3206 (h!41454 tokens!494)))) (size!27131 (list!12799 (charsOf!3206 separatorToken!241))))))))

(declare-fun d!873786 () Bool)

(assert (=> d!873786 e!1992336))

(declare-fun res!1300297 () Bool)

(assert (=> d!873786 (=> (not res!1300297) (not e!1992336))))

(assert (=> d!873786 (= res!1300297 (= (content!4864 lt!1076835) ((_ map or) (content!4864 (list!12799 (charsOf!3206 (h!41454 tokens!494)))) (content!4864 (list!12799 (charsOf!3206 separatorToken!241))))))))

(assert (=> d!873786 (= lt!1076835 e!1992337)))

(declare-fun c!536369 () Bool)

(assert (=> d!873786 (= c!536369 ((_ is Nil!36033) (list!12799 (charsOf!3206 (h!41454 tokens!494)))))))

(assert (=> d!873786 (= (++!8622 (list!12799 (charsOf!3206 (h!41454 tokens!494))) (list!12799 (charsOf!3206 separatorToken!241))) lt!1076835)))

(declare-fun b!3195787 () Bool)

(assert (=> b!3195787 (= e!1992337 (Cons!36033 (h!41453 (list!12799 (charsOf!3206 (h!41454 tokens!494)))) (++!8622 (t!236612 (list!12799 (charsOf!3206 (h!41454 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241)))))))

(assert (= (and d!873786 c!536369) b!3195786))

(assert (= (and d!873786 (not c!536369)) b!3195787))

(assert (= (and d!873786 res!1300297) b!3195788))

(assert (= (and b!3195788 res!1300298) b!3195789))

(declare-fun m!3455985 () Bool)

(assert (=> b!3195788 m!3455985))

(assert (=> b!3195788 m!3454891))

(declare-fun m!3455987 () Bool)

(assert (=> b!3195788 m!3455987))

(assert (=> b!3195788 m!3454823))

(declare-fun m!3455989 () Bool)

(assert (=> b!3195788 m!3455989))

(declare-fun m!3455991 () Bool)

(assert (=> d!873786 m!3455991))

(assert (=> d!873786 m!3454891))

(declare-fun m!3455993 () Bool)

(assert (=> d!873786 m!3455993))

(assert (=> d!873786 m!3454823))

(declare-fun m!3455995 () Bool)

(assert (=> d!873786 m!3455995))

(assert (=> b!3195787 m!3454823))

(declare-fun m!3455997 () Bool)

(assert (=> b!3195787 m!3455997))

(assert (=> b!3195126 d!873786))

(assert (=> b!3195126 d!873528))

(declare-fun d!873788 () Bool)

(assert (=> d!873788 (= (isEmpty!20115 lt!1076577) ((_ is Nil!36033) lt!1076577))))

(assert (=> bm!231396 d!873788))

(declare-fun d!873790 () Bool)

(assert (=> d!873790 true))

(declare-fun lambda!117005 () Int)

(declare-fun order!18317 () Int)

(declare-fun dynLambda!14510 (Int Int) Int)

(assert (=> d!873790 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))) (dynLambda!14510 order!18317 lambda!117005))))

(declare-fun Forall2!855 (Int) Bool)

(assert (=> d!873790 (= (equivClasses!2046 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))) (Forall2!855 lambda!117005))))

(declare-fun bs!540530 () Bool)

(assert (= bs!540530 d!873790))

(declare-fun m!3456001 () Bool)

(assert (=> bs!540530 m!3456001))

(assert (=> b!3195621 d!873790))

(declare-fun d!873798 () Bool)

(assert (=> d!873798 (= (isEmpty!20115 (tail!5196 lt!1076594)) ((_ is Nil!36033) (tail!5196 lt!1076594)))))

(assert (=> b!3195634 d!873798))

(declare-fun d!873800 () Bool)

(assert (=> d!873800 (= (tail!5196 lt!1076594) (t!236612 lt!1076594))))

(assert (=> b!3195634 d!873800))

(declare-fun d!873802 () Bool)

(declare-fun c!536372 () Bool)

(assert (=> d!873802 (= c!536372 ((_ is Node!10755) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))))))

(declare-fun e!1992344 () Bool)

(assert (=> d!873802 (= (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))) e!1992344)))

(declare-fun b!3195804 () Bool)

(declare-fun inv!48882 (Conc!10755) Bool)

(assert (=> b!3195804 (= e!1992344 (inv!48882 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))))))

(declare-fun b!3195805 () Bool)

(declare-fun e!1992345 () Bool)

(assert (=> b!3195805 (= e!1992344 e!1992345)))

(declare-fun res!1300303 () Bool)

(assert (=> b!3195805 (= res!1300303 (not ((_ is Leaf!16961) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))))))))

(assert (=> b!3195805 (=> res!1300303 e!1992345)))

(declare-fun b!3195806 () Bool)

(declare-fun inv!48883 (Conc!10755) Bool)

(assert (=> b!3195806 (= e!1992345 (inv!48883 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))))))

(assert (= (and d!873802 c!536372) b!3195804))

(assert (= (and d!873802 (not c!536372)) b!3195805))

(assert (= (and b!3195805 (not res!1300303)) b!3195806))

(declare-fun m!3456003 () Bool)

(assert (=> b!3195804 m!3456003))

(declare-fun m!3456005 () Bool)

(assert (=> b!3195806 m!3456005))

(assert (=> b!3195153 d!873802))

(declare-fun d!873804 () Bool)

(assert (=> d!873804 (dynLambda!14501 lambda!116989 (h!41454 tokens!494))))

(assert (=> d!873804 true))

(declare-fun _$7!1056 () Unit!50426)

(assert (=> d!873804 (= (choose!18646 tokens!494 lambda!116989 (h!41454 tokens!494)) _$7!1056)))

(declare-fun b_lambda!87225 () Bool)

(assert (=> (not b_lambda!87225) (not d!873804)))

(declare-fun bs!540531 () Bool)

(assert (= bs!540531 d!873804))

(assert (=> bs!540531 m!3454923))

(assert (=> d!873670 d!873804))

(assert (=> d!873670 d!873466))

(declare-fun bs!540532 () Bool)

(declare-fun d!873806 () Bool)

(assert (= bs!540532 (and d!873806 d!873790)))

(declare-fun lambda!117006 () Int)

(assert (=> bs!540532 (= (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))) (= lambda!117006 lambda!117005))))

(assert (=> d!873806 true))

(assert (=> d!873806 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (dynLambda!14510 order!18317 lambda!117006))))

(assert (=> d!873806 (= (equivClasses!2046 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (Forall2!855 lambda!117006))))

(declare-fun bs!540533 () Bool)

(assert (= bs!540533 d!873806))

(declare-fun m!3456007 () Bool)

(assert (=> bs!540533 m!3456007))

(assert (=> b!3195253 d!873806))

(declare-fun d!873808 () Bool)

(assert (=> d!873808 (= (head!7002 lt!1076577) (h!41453 lt!1076577))))

(assert (=> b!3195248 d!873808))

(declare-fun d!873810 () Bool)

(declare-fun list!12804 (Conc!10756) List!36158)

(assert (=> d!873810 (= (list!12803 lt!1076809) (list!12804 (c!536198 lt!1076809)))))

(declare-fun bs!540534 () Bool)

(assert (= bs!540534 d!873810))

(declare-fun m!3456009 () Bool)

(assert (=> bs!540534 m!3456009))

(assert (=> d!873688 d!873810))

(declare-fun d!873812 () Bool)

(declare-fun e!1992348 () Bool)

(assert (=> d!873812 e!1992348))

(declare-fun res!1300306 () Bool)

(assert (=> d!873812 (=> (not res!1300306) (not e!1992348))))

(declare-fun lt!1076838 () BalanceConc!21126)

(assert (=> d!873812 (= res!1300306 (= (list!12803 lt!1076838) (Cons!36034 (h!41454 tokens!494) Nil!36034)))))

(declare-fun choose!18650 (Token!9746) BalanceConc!21126)

(assert (=> d!873812 (= lt!1076838 (choose!18650 (h!41454 tokens!494)))))

(assert (=> d!873812 (= (singleton!986 (h!41454 tokens!494)) lt!1076838)))

(declare-fun b!3195809 () Bool)

(assert (=> b!3195809 (= e!1992348 (isBalanced!3201 (c!536198 lt!1076838)))))

(assert (= (and d!873812 res!1300306) b!3195809))

(declare-fun m!3456011 () Bool)

(assert (=> d!873812 m!3456011))

(declare-fun m!3456013 () Bool)

(assert (=> d!873812 m!3456013))

(declare-fun m!3456015 () Bool)

(assert (=> b!3195809 m!3456015))

(assert (=> d!873688 d!873812))

(declare-fun d!873814 () Bool)

(assert (=> d!873814 (= (list!12799 (_2!20829 lt!1076605)) (list!12801 (c!536197 (_2!20829 lt!1076605))))))

(declare-fun bs!540535 () Bool)

(assert (= bs!540535 d!873814))

(declare-fun m!3456017 () Bool)

(assert (=> bs!540535 m!3456017))

(assert (=> b!3195011 d!873814))

(declare-fun b!3195820 () Bool)

(declare-fun e!1992356 () Bool)

(declare-fun lt!1076845 () tuple2!35394)

(assert (=> b!3195820 (= e!1992356 (not (isEmpty!20116 (_1!20831 lt!1076845))))))

(declare-fun b!3195821 () Bool)

(declare-fun e!1992355 () tuple2!35394)

(assert (=> b!3195821 (= e!1992355 (tuple2!35395 Nil!36034 (list!12799 lt!1076578)))))

(declare-fun b!3195822 () Bool)

(declare-fun e!1992357 () Bool)

(assert (=> b!3195822 (= e!1992357 e!1992356)))

(declare-fun res!1300309 () Bool)

(assert (=> b!3195822 (= res!1300309 (< (size!27131 (_2!20831 lt!1076845)) (size!27131 (list!12799 lt!1076578))))))

(assert (=> b!3195822 (=> (not res!1300309) (not e!1992356))))

(declare-fun b!3195823 () Bool)

(declare-fun lt!1076847 () Option!7072)

(declare-fun lt!1076846 () tuple2!35394)

(assert (=> b!3195823 (= e!1992355 (tuple2!35395 (Cons!36034 (_1!20830 (v!35583 lt!1076847)) (_1!20831 lt!1076846)) (_2!20831 lt!1076846)))))

(assert (=> b!3195823 (= lt!1076846 (lexList!1304 thiss!18206 rules!2135 (_2!20830 (v!35583 lt!1076847))))))

(declare-fun b!3195824 () Bool)

(assert (=> b!3195824 (= e!1992357 (= (_2!20831 lt!1076845) (list!12799 lt!1076578)))))

(declare-fun d!873816 () Bool)

(assert (=> d!873816 e!1992357))

(declare-fun c!536378 () Bool)

(declare-fun size!27136 (List!36158) Int)

(assert (=> d!873816 (= c!536378 (> (size!27136 (_1!20831 lt!1076845)) 0))))

(assert (=> d!873816 (= lt!1076845 e!1992355)))

(declare-fun c!536377 () Bool)

(assert (=> d!873816 (= c!536377 ((_ is Some!7071) lt!1076847))))

(declare-fun maxPrefix!2436 (LexerInterface!4779 List!36159 List!36157) Option!7072)

(assert (=> d!873816 (= lt!1076847 (maxPrefix!2436 thiss!18206 rules!2135 (list!12799 lt!1076578)))))

(assert (=> d!873816 (= (lexList!1304 thiss!18206 rules!2135 (list!12799 lt!1076578)) lt!1076845)))

(assert (= (and d!873816 c!536377) b!3195823))

(assert (= (and d!873816 (not c!536377)) b!3195821))

(assert (= (and d!873816 c!536378) b!3195822))

(assert (= (and d!873816 (not c!536378)) b!3195824))

(assert (= (and b!3195822 res!1300309) b!3195820))

(declare-fun m!3456019 () Bool)

(assert (=> b!3195820 m!3456019))

(declare-fun m!3456021 () Bool)

(assert (=> b!3195822 m!3456021))

(assert (=> b!3195822 m!3454965))

(declare-fun m!3456023 () Bool)

(assert (=> b!3195822 m!3456023))

(declare-fun m!3456025 () Bool)

(assert (=> b!3195823 m!3456025))

(declare-fun m!3456027 () Bool)

(assert (=> d!873816 m!3456027))

(assert (=> d!873816 m!3454965))

(declare-fun m!3456029 () Bool)

(assert (=> d!873816 m!3456029))

(assert (=> b!3195011 d!873816))

(declare-fun d!873818 () Bool)

(assert (=> d!873818 (= (list!12799 lt!1076578) (list!12801 (c!536197 lt!1076578)))))

(declare-fun bs!540536 () Bool)

(assert (= bs!540536 d!873818))

(declare-fun m!3456031 () Bool)

(assert (=> bs!540536 m!3456031))

(assert (=> b!3195011 d!873818))

(declare-fun d!873820 () Bool)

(assert (=> d!873820 (= (get!11458 lt!1076636) (v!35582 lt!1076636))))

(assert (=> b!3195063 d!873820))

(declare-fun d!873822 () Bool)

(declare-fun res!1300310 () Bool)

(declare-fun e!1992358 () Bool)

(assert (=> d!873822 (=> (not res!1300310) (not e!1992358))))

(assert (=> d!873822 (= res!1300310 (not (isEmpty!20115 (originalCharacters!5904 (h!41454 (t!236613 tokens!494))))))))

(assert (=> d!873822 (= (inv!48877 (h!41454 (t!236613 tokens!494))) e!1992358)))

(declare-fun b!3195825 () Bool)

(declare-fun res!1300311 () Bool)

(assert (=> b!3195825 (=> (not res!1300311) (not e!1992358))))

(assert (=> b!3195825 (= res!1300311 (= (originalCharacters!5904 (h!41454 (t!236613 tokens!494))) (list!12799 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))))))

(declare-fun b!3195826 () Bool)

(assert (=> b!3195826 (= e!1992358 (= (size!27130 (h!41454 (t!236613 tokens!494))) (size!27131 (originalCharacters!5904 (h!41454 (t!236613 tokens!494))))))))

(assert (= (and d!873822 res!1300310) b!3195825))

(assert (= (and b!3195825 res!1300311) b!3195826))

(declare-fun b_lambda!87227 () Bool)

(assert (=> (not b_lambda!87227) (not b!3195825)))

(assert (=> b!3195825 t!236708))

(declare-fun b_and!212117 () Bool)

(assert (= b_and!212105 (and (=> t!236708 result!198442) b_and!212117)))

(assert (=> b!3195825 t!236700))

(declare-fun b_and!212119 () Bool)

(assert (= b_and!212101 (and (=> t!236700 result!198432) b_and!212119)))

(assert (=> b!3195825 t!236639))

(declare-fun b_and!212121 () Bool)

(assert (= b_and!212067 (and (=> t!236639 result!198366) b_and!212121)))

(assert (=> b!3195825 t!236641))

(declare-fun b_and!212123 () Bool)

(assert (= b_and!212069 (and (=> t!236641 result!198368) b_and!212123)))

(assert (=> b!3195825 t!236643))

(declare-fun b_and!212125 () Bool)

(assert (= b_and!212071 (and (=> t!236643 result!198370) b_and!212125)))

(declare-fun m!3456033 () Bool)

(assert (=> d!873822 m!3456033))

(assert (=> b!3195825 m!3455165))

(assert (=> b!3195825 m!3455165))

(declare-fun m!3456035 () Bool)

(assert (=> b!3195825 m!3456035))

(declare-fun m!3456037 () Bool)

(assert (=> b!3195826 m!3456037))

(assert (=> b!3195657 d!873822))

(declare-fun b!3195838 () Bool)

(declare-fun e!1992364 () List!36157)

(assert (=> b!3195838 (= e!1992364 (++!8622 (list!12801 (left!28000 (c!536197 (charsOf!3206 separatorToken!241)))) (list!12801 (right!28330 (c!536197 (charsOf!3206 separatorToken!241))))))))

(declare-fun b!3195835 () Bool)

(declare-fun e!1992363 () List!36157)

(assert (=> b!3195835 (= e!1992363 Nil!36033)))

(declare-fun b!3195836 () Bool)

(assert (=> b!3195836 (= e!1992363 e!1992364)))

(declare-fun c!536384 () Bool)

(assert (=> b!3195836 (= c!536384 ((_ is Leaf!16961) (c!536197 (charsOf!3206 separatorToken!241))))))

(declare-fun d!873824 () Bool)

(declare-fun c!536383 () Bool)

(assert (=> d!873824 (= c!536383 ((_ is Empty!10755) (c!536197 (charsOf!3206 separatorToken!241))))))

(assert (=> d!873824 (= (list!12801 (c!536197 (charsOf!3206 separatorToken!241))) e!1992363)))

(declare-fun b!3195837 () Bool)

(declare-fun list!12805 (IArray!21515) List!36157)

(assert (=> b!3195837 (= e!1992364 (list!12805 (xs!13873 (c!536197 (charsOf!3206 separatorToken!241)))))))

(assert (= (and d!873824 c!536383) b!3195835))

(assert (= (and d!873824 (not c!536383)) b!3195836))

(assert (= (and b!3195836 c!536384) b!3195837))

(assert (= (and b!3195836 (not c!536384)) b!3195838))

(declare-fun m!3456039 () Bool)

(assert (=> b!3195838 m!3456039))

(declare-fun m!3456041 () Bool)

(assert (=> b!3195838 m!3456041))

(assert (=> b!3195838 m!3456039))

(assert (=> b!3195838 m!3456041))

(declare-fun m!3456043 () Bool)

(assert (=> b!3195838 m!3456043))

(declare-fun m!3456045 () Bool)

(assert (=> b!3195837 m!3456045))

(assert (=> d!873530 d!873824))

(declare-fun d!873826 () Bool)

(declare-fun res!1300312 () Bool)

(declare-fun e!1992365 () Bool)

(assert (=> d!873826 (=> res!1300312 e!1992365)))

(assert (=> d!873826 (= res!1300312 ((_ is Nil!36034) (t!236613 tokens!494)))))

(assert (=> d!873826 (= (forall!7330 (t!236613 tokens!494) lambda!116989) e!1992365)))

(declare-fun b!3195839 () Bool)

(declare-fun e!1992366 () Bool)

(assert (=> b!3195839 (= e!1992365 e!1992366)))

(declare-fun res!1300313 () Bool)

(assert (=> b!3195839 (=> (not res!1300313) (not e!1992366))))

(assert (=> b!3195839 (= res!1300313 (dynLambda!14501 lambda!116989 (h!41454 (t!236613 tokens!494))))))

(declare-fun b!3195840 () Bool)

(assert (=> b!3195840 (= e!1992366 (forall!7330 (t!236613 (t!236613 tokens!494)) lambda!116989))))

(assert (= (and d!873826 (not res!1300312)) b!3195839))

(assert (= (and b!3195839 res!1300313) b!3195840))

(declare-fun b_lambda!87229 () Bool)

(assert (=> (not b_lambda!87229) (not b!3195839)))

(assert (=> b!3195839 m!3455635))

(declare-fun m!3456047 () Bool)

(assert (=> b!3195840 m!3456047))

(assert (=> b!3194970 d!873826))

(declare-fun b!3195841 () Bool)

(declare-fun e!1992368 () Bool)

(assert (=> b!3195841 (= e!1992368 (inv!15 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578)))))

(declare-fun d!873828 () Bool)

(declare-fun c!536386 () Bool)

(assert (=> d!873828 (= c!536386 ((_ is IntegerValue!16260) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578)))))

(declare-fun e!1992367 () Bool)

(assert (=> d!873828 (= (inv!21 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578)) e!1992367)))

(declare-fun b!3195842 () Bool)

(declare-fun e!1992369 () Bool)

(assert (=> b!3195842 (= e!1992367 e!1992369)))

(declare-fun c!536385 () Bool)

(assert (=> b!3195842 (= c!536385 ((_ is IntegerValue!16261) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578)))))

(declare-fun b!3195843 () Bool)

(declare-fun res!1300314 () Bool)

(assert (=> b!3195843 (=> res!1300314 e!1992368)))

(assert (=> b!3195843 (= res!1300314 (not ((_ is IntegerValue!16262) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578))))))

(assert (=> b!3195843 (= e!1992369 e!1992368)))

(declare-fun b!3195844 () Bool)

(assert (=> b!3195844 (= e!1992369 (inv!17 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578)))))

(declare-fun b!3195845 () Bool)

(assert (=> b!3195845 (= e!1992367 (inv!16 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) lt!1076578)))))

(assert (= (and d!873828 c!536386) b!3195845))

(assert (= (and d!873828 (not c!536386)) b!3195842))

(assert (= (and b!3195842 c!536385) b!3195844))

(assert (= (and b!3195842 (not c!536385)) b!3195843))

(assert (= (and b!3195843 (not res!1300314)) b!3195841))

(declare-fun m!3456049 () Bool)

(assert (=> b!3195841 m!3456049))

(declare-fun m!3456051 () Bool)

(assert (=> b!3195844 m!3456051))

(declare-fun m!3456053 () Bool)

(assert (=> b!3195845 m!3456053))

(assert (=> tb!156121 d!873828))

(declare-fun d!873830 () Bool)

(declare-fun lt!1076850 () Bool)

(declare-fun content!4865 (List!36158) (InoxSet Token!9746))

(assert (=> d!873830 (= lt!1076850 (select (content!4865 tokens!494) (h!41454 tokens!494)))))

(declare-fun e!1992374 () Bool)

(assert (=> d!873830 (= lt!1076850 e!1992374)))

(declare-fun res!1300319 () Bool)

(assert (=> d!873830 (=> (not res!1300319) (not e!1992374))))

(assert (=> d!873830 (= res!1300319 ((_ is Cons!36034) tokens!494))))

(assert (=> d!873830 (= (contains!6398 tokens!494 (h!41454 tokens!494)) lt!1076850)))

(declare-fun b!3195850 () Bool)

(declare-fun e!1992375 () Bool)

(assert (=> b!3195850 (= e!1992374 e!1992375)))

(declare-fun res!1300320 () Bool)

(assert (=> b!3195850 (=> res!1300320 e!1992375)))

(assert (=> b!3195850 (= res!1300320 (= (h!41454 tokens!494) (h!41454 tokens!494)))))

(declare-fun b!3195851 () Bool)

(assert (=> b!3195851 (= e!1992375 (contains!6398 (t!236613 tokens!494) (h!41454 tokens!494)))))

(assert (= (and d!873830 res!1300319) b!3195850))

(assert (= (and b!3195850 (not res!1300320)) b!3195851))

(declare-fun m!3456055 () Bool)

(assert (=> d!873830 m!3456055))

(declare-fun m!3456057 () Bool)

(assert (=> d!873830 m!3456057))

(declare-fun m!3456059 () Bool)

(assert (=> b!3195851 m!3456059))

(assert (=> b!3195527 d!873830))

(declare-fun d!873832 () Bool)

(assert (=> d!873832 (= (get!11459 lt!1076622) (v!35583 lt!1076622))))

(assert (=> b!3195040 d!873832))

(declare-fun d!873834 () Bool)

(declare-fun lt!1076851 () Int)

(assert (=> d!873834 (>= lt!1076851 0)))

(declare-fun e!1992376 () Int)

(assert (=> d!873834 (= lt!1076851 e!1992376)))

(declare-fun c!536387 () Bool)

(assert (=> d!873834 (= c!536387 ((_ is Nil!36033) (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622)))))))

(assert (=> d!873834 (= (size!27131 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622)))) lt!1076851)))

(declare-fun b!3195852 () Bool)

(assert (=> b!3195852 (= e!1992376 0)))

(declare-fun b!3195853 () Bool)

(assert (=> b!3195853 (= e!1992376 (+ 1 (size!27131 (t!236612 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622)))))))))

(assert (= (and d!873834 c!536387) b!3195852))

(assert (= (and d!873834 (not c!536387)) b!3195853))

(declare-fun m!3456061 () Bool)

(assert (=> b!3195853 m!3456061))

(assert (=> b!3195040 d!873834))

(declare-fun b!3195854 () Bool)

(declare-fun e!1992378 () List!36157)

(assert (=> b!3195854 (= e!1992378 lt!1076592)))

(declare-fun b!3195857 () Bool)

(declare-fun e!1992377 () Bool)

(declare-fun lt!1076852 () List!36157)

(assert (=> b!3195857 (= e!1992377 (or (not (= lt!1076592 Nil!36033)) (= lt!1076852 (t!236612 lt!1076577))))))

(declare-fun b!3195856 () Bool)

(declare-fun res!1300322 () Bool)

(assert (=> b!3195856 (=> (not res!1300322) (not e!1992377))))

(assert (=> b!3195856 (= res!1300322 (= (size!27131 lt!1076852) (+ (size!27131 (t!236612 lt!1076577)) (size!27131 lt!1076592))))))

(declare-fun d!873836 () Bool)

(assert (=> d!873836 e!1992377))

(declare-fun res!1300321 () Bool)

(assert (=> d!873836 (=> (not res!1300321) (not e!1992377))))

(assert (=> d!873836 (= res!1300321 (= (content!4864 lt!1076852) ((_ map or) (content!4864 (t!236612 lt!1076577)) (content!4864 lt!1076592))))))

(assert (=> d!873836 (= lt!1076852 e!1992378)))

(declare-fun c!536388 () Bool)

(assert (=> d!873836 (= c!536388 ((_ is Nil!36033) (t!236612 lt!1076577)))))

(assert (=> d!873836 (= (++!8622 (t!236612 lt!1076577) lt!1076592) lt!1076852)))

(declare-fun b!3195855 () Bool)

(assert (=> b!3195855 (= e!1992378 (Cons!36033 (h!41453 (t!236612 lt!1076577)) (++!8622 (t!236612 (t!236612 lt!1076577)) lt!1076592)))))

(assert (= (and d!873836 c!536388) b!3195854))

(assert (= (and d!873836 (not c!536388)) b!3195855))

(assert (= (and d!873836 res!1300321) b!3195856))

(assert (= (and b!3195856 res!1300322) b!3195857))

(declare-fun m!3456063 () Bool)

(assert (=> b!3195856 m!3456063))

(assert (=> b!3195856 m!3455083))

(assert (=> b!3195856 m!3455339))

(declare-fun m!3456065 () Bool)

(assert (=> d!873836 m!3456065))

(declare-fun m!3456067 () Bool)

(assert (=> d!873836 m!3456067))

(assert (=> d!873836 m!3455345))

(declare-fun m!3456069 () Bool)

(assert (=> b!3195855 m!3456069))

(assert (=> b!3195260 d!873836))

(declare-fun b!3195861 () Bool)

(declare-fun e!1992380 () List!36157)

(assert (=> b!3195861 (= e!1992380 (++!8622 (list!12801 (left!28000 (c!536197 (charsOf!3206 (h!41454 tokens!494))))) (list!12801 (right!28330 (c!536197 (charsOf!3206 (h!41454 tokens!494)))))))))

(declare-fun b!3195858 () Bool)

(declare-fun e!1992379 () List!36157)

(assert (=> b!3195858 (= e!1992379 Nil!36033)))

(declare-fun b!3195859 () Bool)

(assert (=> b!3195859 (= e!1992379 e!1992380)))

(declare-fun c!536390 () Bool)

(assert (=> b!3195859 (= c!536390 ((_ is Leaf!16961) (c!536197 (charsOf!3206 (h!41454 tokens!494)))))))

(declare-fun d!873838 () Bool)

(declare-fun c!536389 () Bool)

(assert (=> d!873838 (= c!536389 ((_ is Empty!10755) (c!536197 (charsOf!3206 (h!41454 tokens!494)))))))

(assert (=> d!873838 (= (list!12801 (c!536197 (charsOf!3206 (h!41454 tokens!494)))) e!1992379)))

(declare-fun b!3195860 () Bool)

(assert (=> b!3195860 (= e!1992380 (list!12805 (xs!13873 (c!536197 (charsOf!3206 (h!41454 tokens!494))))))))

(assert (= (and d!873838 c!536389) b!3195858))

(assert (= (and d!873838 (not c!536389)) b!3195859))

(assert (= (and b!3195859 c!536390) b!3195860))

(assert (= (and b!3195859 (not c!536390)) b!3195861))

(declare-fun m!3456071 () Bool)

(assert (=> b!3195861 m!3456071))

(declare-fun m!3456073 () Bool)

(assert (=> b!3195861 m!3456073))

(assert (=> b!3195861 m!3456071))

(assert (=> b!3195861 m!3456073))

(declare-fun m!3456075 () Bool)

(assert (=> b!3195861 m!3456075))

(declare-fun m!3456077 () Bool)

(assert (=> b!3195860 m!3456077))

(assert (=> d!873468 d!873838))

(assert (=> d!873544 d!873788))

(declare-fun b!3195880 () Bool)

(declare-fun res!1300336 () Bool)

(declare-fun e!1992398 () Bool)

(assert (=> b!3195880 (=> res!1300336 e!1992398)))

(assert (=> b!3195880 (= res!1300336 (not ((_ is Concat!15369) (regex!5190 lt!1076584))))))

(declare-fun e!1992396 () Bool)

(assert (=> b!3195880 (= e!1992396 e!1992398)))

(declare-fun b!3195881 () Bool)

(declare-fun e!1992401 () Bool)

(declare-fun call!231440 () Bool)

(assert (=> b!3195881 (= e!1992401 call!231440)))

(declare-fun b!3195882 () Bool)

(declare-fun e!1992397 () Bool)

(assert (=> b!3195882 (= e!1992398 e!1992397)))

(declare-fun res!1300333 () Bool)

(assert (=> b!3195882 (=> (not res!1300333) (not e!1992397))))

(declare-fun call!231439 () Bool)

(assert (=> b!3195882 (= res!1300333 call!231439)))

(declare-fun b!3195883 () Bool)

(declare-fun res!1300334 () Bool)

(declare-fun e!1992395 () Bool)

(assert (=> b!3195883 (=> (not res!1300334) (not e!1992395))))

(assert (=> b!3195883 (= res!1300334 call!231439)))

(assert (=> b!3195883 (= e!1992396 e!1992395)))

(declare-fun bm!231433 () Bool)

(assert (=> bm!231433 (= call!231439 call!231440)))

(declare-fun bm!231434 () Bool)

(declare-fun call!231438 () Bool)

(declare-fun c!536395 () Bool)

(assert (=> bm!231434 (= call!231438 (validRegex!4542 (ite c!536395 (regTwo!20411 (regex!5190 lt!1076584)) (regTwo!20410 (regex!5190 lt!1076584)))))))

(declare-fun b!3195884 () Bool)

(assert (=> b!3195884 (= e!1992395 call!231438)))

(declare-fun b!3195885 () Bool)

(assert (=> b!3195885 (= e!1992397 call!231438)))

(declare-fun b!3195887 () Bool)

(declare-fun e!1992399 () Bool)

(assert (=> b!3195887 (= e!1992399 e!1992396)))

(assert (=> b!3195887 (= c!536395 ((_ is Union!9949) (regex!5190 lt!1076584)))))

(declare-fun bm!231435 () Bool)

(declare-fun c!536396 () Bool)

(assert (=> bm!231435 (= call!231440 (validRegex!4542 (ite c!536396 (reg!10278 (regex!5190 lt!1076584)) (ite c!536395 (regOne!20411 (regex!5190 lt!1076584)) (regOne!20410 (regex!5190 lt!1076584))))))))

(declare-fun b!3195888 () Bool)

(assert (=> b!3195888 (= e!1992399 e!1992401)))

(declare-fun res!1300337 () Bool)

(assert (=> b!3195888 (= res!1300337 (not (nullable!3390 (reg!10278 (regex!5190 lt!1076584)))))))

(assert (=> b!3195888 (=> (not res!1300337) (not e!1992401))))

(declare-fun b!3195886 () Bool)

(declare-fun e!1992400 () Bool)

(assert (=> b!3195886 (= e!1992400 e!1992399)))

(assert (=> b!3195886 (= c!536396 ((_ is Star!9949) (regex!5190 lt!1076584)))))

(declare-fun d!873840 () Bool)

(declare-fun res!1300335 () Bool)

(assert (=> d!873840 (=> res!1300335 e!1992400)))

(assert (=> d!873840 (= res!1300335 ((_ is ElementMatch!9949) (regex!5190 lt!1076584)))))

(assert (=> d!873840 (= (validRegex!4542 (regex!5190 lt!1076584)) e!1992400)))

(assert (= (and d!873840 (not res!1300335)) b!3195886))

(assert (= (and b!3195886 c!536396) b!3195888))

(assert (= (and b!3195886 (not c!536396)) b!3195887))

(assert (= (and b!3195888 res!1300337) b!3195881))

(assert (= (and b!3195887 c!536395) b!3195883))

(assert (= (and b!3195887 (not c!536395)) b!3195880))

(assert (= (and b!3195883 res!1300334) b!3195884))

(assert (= (and b!3195880 (not res!1300336)) b!3195882))

(assert (= (and b!3195882 res!1300333) b!3195885))

(assert (= (or b!3195884 b!3195885) bm!231434))

(assert (= (or b!3195883 b!3195882) bm!231433))

(assert (= (or b!3195881 bm!231433) bm!231435))

(declare-fun m!3456079 () Bool)

(assert (=> bm!231434 m!3456079))

(declare-fun m!3456081 () Bool)

(assert (=> bm!231435 m!3456081))

(declare-fun m!3456083 () Bool)

(assert (=> b!3195888 m!3456083))

(assert (=> d!873544 d!873840))

(declare-fun d!873842 () Bool)

(declare-fun lt!1076863 () List!36157)

(assert (=> d!873842 (= lt!1076863 (++!8622 (list!12799 (BalanceConc!21125 Empty!10755)) (printList!1329 thiss!18206 (dropList!1070 lt!1076571 0))))))

(declare-fun e!1992404 () List!36157)

(assert (=> d!873842 (= lt!1076863 e!1992404)))

(declare-fun c!536399 () Bool)

(assert (=> d!873842 (= c!536399 ((_ is Cons!36034) (dropList!1070 lt!1076571 0)))))

(assert (=> d!873842 (= (printListTailRec!553 thiss!18206 (dropList!1070 lt!1076571 0) (list!12799 (BalanceConc!21125 Empty!10755))) lt!1076863)))

(declare-fun b!3195893 () Bool)

(assert (=> b!3195893 (= e!1992404 (printListTailRec!553 thiss!18206 (t!236613 (dropList!1070 lt!1076571 0)) (++!8622 (list!12799 (BalanceConc!21125 Empty!10755)) (list!12799 (charsOf!3206 (h!41454 (dropList!1070 lt!1076571 0)))))))))

(declare-fun lt!1076866 () List!36157)

(assert (=> b!3195893 (= lt!1076866 (list!12799 (charsOf!3206 (h!41454 (dropList!1070 lt!1076571 0)))))))

(declare-fun lt!1076864 () List!36157)

(assert (=> b!3195893 (= lt!1076864 (printList!1329 thiss!18206 (t!236613 (dropList!1070 lt!1076571 0))))))

(declare-fun lt!1076867 () Unit!50426)

(assert (=> b!3195893 (= lt!1076867 (lemmaConcatAssociativity!1704 (list!12799 (BalanceConc!21125 Empty!10755)) lt!1076866 lt!1076864))))

(assert (=> b!3195893 (= (++!8622 (++!8622 (list!12799 (BalanceConc!21125 Empty!10755)) lt!1076866) lt!1076864) (++!8622 (list!12799 (BalanceConc!21125 Empty!10755)) (++!8622 lt!1076866 lt!1076864)))))

(declare-fun lt!1076865 () Unit!50426)

(assert (=> b!3195893 (= lt!1076865 lt!1076867)))

(declare-fun b!3195894 () Bool)

(assert (=> b!3195894 (= e!1992404 (list!12799 (BalanceConc!21125 Empty!10755)))))

(assert (= (and d!873842 c!536399) b!3195893))

(assert (= (and d!873842 (not c!536399)) b!3195894))

(assert (=> d!873842 m!3455699))

(declare-fun m!3456085 () Bool)

(assert (=> d!873842 m!3456085))

(assert (=> d!873842 m!3455701))

(assert (=> d!873842 m!3456085))

(declare-fun m!3456087 () Bool)

(assert (=> d!873842 m!3456087))

(declare-fun m!3456089 () Bool)

(assert (=> b!3195893 m!3456089))

(assert (=> b!3195893 m!3455701))

(declare-fun m!3456091 () Bool)

(assert (=> b!3195893 m!3456091))

(declare-fun m!3456093 () Bool)

(assert (=> b!3195893 m!3456093))

(assert (=> b!3195893 m!3456093))

(declare-fun m!3456095 () Bool)

(assert (=> b!3195893 m!3456095))

(assert (=> b!3195893 m!3455701))

(declare-fun m!3456097 () Bool)

(assert (=> b!3195893 m!3456097))

(declare-fun m!3456099 () Bool)

(assert (=> b!3195893 m!3456099))

(declare-fun m!3456101 () Bool)

(assert (=> b!3195893 m!3456101))

(declare-fun m!3456103 () Bool)

(assert (=> b!3195893 m!3456103))

(declare-fun m!3456105 () Bool)

(assert (=> b!3195893 m!3456105))

(declare-fun m!3456107 () Bool)

(assert (=> b!3195893 m!3456107))

(assert (=> b!3195893 m!3456097))

(assert (=> b!3195893 m!3455701))

(assert (=> b!3195893 m!3456105))

(assert (=> b!3195893 m!3455701))

(assert (=> b!3195893 m!3456095))

(assert (=> b!3195893 m!3456101))

(assert (=> d!873672 d!873842))

(declare-fun d!873844 () Bool)

(declare-fun lt!1076870 () Int)

(assert (=> d!873844 (= lt!1076870 (size!27136 (list!12803 lt!1076571)))))

(declare-fun size!27137 (Conc!10756) Int)

(assert (=> d!873844 (= lt!1076870 (size!27137 (c!536198 lt!1076571)))))

(assert (=> d!873844 (= (size!27133 lt!1076571) lt!1076870)))

(declare-fun bs!540537 () Bool)

(assert (= bs!540537 d!873844))

(assert (=> bs!540537 m!3455735))

(assert (=> bs!540537 m!3455735))

(declare-fun m!3456109 () Bool)

(assert (=> bs!540537 m!3456109))

(declare-fun m!3456111 () Bool)

(assert (=> bs!540537 m!3456111))

(assert (=> d!873672 d!873844))

(declare-fun d!873846 () Bool)

(assert (=> d!873846 (= (list!12799 lt!1076793) (list!12801 (c!536197 lt!1076793)))))

(declare-fun bs!540538 () Bool)

(assert (= bs!540538 d!873846))

(declare-fun m!3456113 () Bool)

(assert (=> bs!540538 m!3456113))

(assert (=> d!873672 d!873846))

(declare-fun d!873848 () Bool)

(assert (=> d!873848 (= (dropList!1070 lt!1076571 0) (drop!1853 (list!12804 (c!536198 lt!1076571)) 0))))

(declare-fun bs!540539 () Bool)

(assert (= bs!540539 d!873848))

(declare-fun m!3456115 () Bool)

(assert (=> bs!540539 m!3456115))

(assert (=> bs!540539 m!3456115))

(declare-fun m!3456117 () Bool)

(assert (=> bs!540539 m!3456117))

(assert (=> d!873672 d!873848))

(declare-fun d!873850 () Bool)

(assert (=> d!873850 (= (list!12799 (BalanceConc!21125 Empty!10755)) (list!12801 (c!536197 (BalanceConc!21125 Empty!10755))))))

(declare-fun bs!540540 () Bool)

(assert (= bs!540540 d!873850))

(declare-fun m!3456119 () Bool)

(assert (=> bs!540540 m!3456119))

(assert (=> d!873672 d!873850))

(declare-fun d!873852 () Bool)

(declare-fun lt!1076873 () Bool)

(assert (=> d!873852 (= lt!1076873 (isEmpty!20115 (list!12799 (_2!20829 lt!1076667))))))

(declare-fun isEmpty!20127 (Conc!10755) Bool)

(assert (=> d!873852 (= lt!1076873 (isEmpty!20127 (c!536197 (_2!20829 lt!1076667))))))

(assert (=> d!873852 (= (isEmpty!20123 (_2!20829 lt!1076667)) lt!1076873)))

(declare-fun bs!540541 () Bool)

(assert (= bs!540541 d!873852))

(declare-fun m!3456121 () Bool)

(assert (=> bs!540541 m!3456121))

(assert (=> bs!540541 m!3456121))

(declare-fun m!3456123 () Bool)

(assert (=> bs!540541 m!3456123))

(declare-fun m!3456125 () Bool)

(assert (=> bs!540541 m!3456125))

(assert (=> b!3195181 d!873852))

(declare-fun d!873854 () Bool)

(declare-fun e!1992407 () Bool)

(assert (=> d!873854 e!1992407))

(declare-fun c!536402 () Bool)

(assert (=> d!873854 (= c!536402 ((_ is EmptyExpr!9949) (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun lt!1076874 () Bool)

(declare-fun e!1992411 () Bool)

(assert (=> d!873854 (= lt!1076874 e!1992411)))

(declare-fun c!536401 () Bool)

(assert (=> d!873854 (= c!536401 (isEmpty!20115 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))

(assert (=> d!873854 (validRegex!4542 (regex!5190 (rule!7622 (h!41454 tokens!494))))))

(assert (=> d!873854 (= (matchR!4583 (regex!5190 (rule!7622 (h!41454 tokens!494))) (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))) lt!1076874)))

(declare-fun b!3195895 () Bool)

(declare-fun e!1992409 () Bool)

(assert (=> b!3195895 (= e!1992407 e!1992409)))

(declare-fun c!536400 () Bool)

(assert (=> b!3195895 (= c!536400 ((_ is EmptyLang!9949) (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3195896 () Bool)

(assert (=> b!3195896 (= e!1992411 (nullable!3390 (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3195897 () Bool)

(assert (=> b!3195897 (= e!1992411 (matchR!4583 (derivativeStep!2943 (regex!5190 (rule!7622 (h!41454 tokens!494))) (head!7002 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577))))) (tail!5196 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577))))))))

(declare-fun b!3195898 () Bool)

(declare-fun e!1992408 () Bool)

(assert (=> b!3195898 (= e!1992408 (= (head!7002 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))) (c!536196 (regex!5190 (rule!7622 (h!41454 tokens!494))))))))

(declare-fun bm!231436 () Bool)

(declare-fun call!231441 () Bool)

(assert (=> bm!231436 (= call!231441 (isEmpty!20115 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))

(declare-fun b!3195899 () Bool)

(declare-fun res!1300341 () Bool)

(declare-fun e!1992405 () Bool)

(assert (=> b!3195899 (=> res!1300341 e!1992405)))

(assert (=> b!3195899 (= res!1300341 (not ((_ is ElementMatch!9949) (regex!5190 (rule!7622 (h!41454 tokens!494))))))))

(assert (=> b!3195899 (= e!1992409 e!1992405)))

(declare-fun b!3195900 () Bool)

(assert (=> b!3195900 (= e!1992407 (= lt!1076874 call!231441))))

(declare-fun b!3195901 () Bool)

(declare-fun res!1300343 () Bool)

(assert (=> b!3195901 (=> res!1300343 e!1992405)))

(assert (=> b!3195901 (= res!1300343 e!1992408)))

(declare-fun res!1300339 () Bool)

(assert (=> b!3195901 (=> (not res!1300339) (not e!1992408))))

(assert (=> b!3195901 (= res!1300339 lt!1076874)))

(declare-fun b!3195902 () Bool)

(assert (=> b!3195902 (= e!1992409 (not lt!1076874))))

(declare-fun b!3195903 () Bool)

(declare-fun e!1992406 () Bool)

(declare-fun e!1992410 () Bool)

(assert (=> b!3195903 (= e!1992406 e!1992410)))

(declare-fun res!1300345 () Bool)

(assert (=> b!3195903 (=> res!1300345 e!1992410)))

(assert (=> b!3195903 (= res!1300345 call!231441)))

(declare-fun b!3195904 () Bool)

(declare-fun res!1300340 () Bool)

(assert (=> b!3195904 (=> (not res!1300340) (not e!1992408))))

(assert (=> b!3195904 (= res!1300340 (isEmpty!20115 (tail!5196 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577))))))))

(declare-fun b!3195905 () Bool)

(declare-fun res!1300344 () Bool)

(assert (=> b!3195905 (=> (not res!1300344) (not e!1992408))))

(assert (=> b!3195905 (= res!1300344 (not call!231441))))

(declare-fun b!3195906 () Bool)

(assert (=> b!3195906 (= e!1992410 (not (= (head!7002 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))) (c!536196 (regex!5190 (rule!7622 (h!41454 tokens!494)))))))))

(declare-fun b!3195907 () Bool)

(declare-fun res!1300338 () Bool)

(assert (=> b!3195907 (=> res!1300338 e!1992410)))

(assert (=> b!3195907 (= res!1300338 (not (isEmpty!20115 (tail!5196 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))))

(declare-fun b!3195908 () Bool)

(assert (=> b!3195908 (= e!1992405 e!1992406)))

(declare-fun res!1300342 () Bool)

(assert (=> b!3195908 (=> (not res!1300342) (not e!1992406))))

(assert (=> b!3195908 (= res!1300342 (not lt!1076874))))

(assert (= (and d!873854 c!536401) b!3195896))

(assert (= (and d!873854 (not c!536401)) b!3195897))

(assert (= (and d!873854 c!536402) b!3195900))

(assert (= (and d!873854 (not c!536402)) b!3195895))

(assert (= (and b!3195895 c!536400) b!3195902))

(assert (= (and b!3195895 (not c!536400)) b!3195899))

(assert (= (and b!3195899 (not res!1300341)) b!3195901))

(assert (= (and b!3195901 res!1300339) b!3195905))

(assert (= (and b!3195905 res!1300344) b!3195904))

(assert (= (and b!3195904 res!1300340) b!3195898))

(assert (= (and b!3195901 (not res!1300343)) b!3195908))

(assert (= (and b!3195908 res!1300342) b!3195903))

(assert (= (and b!3195903 (not res!1300345)) b!3195907))

(assert (= (and b!3195907 (not res!1300338)) b!3195906))

(assert (= (or b!3195900 b!3195903 b!3195905) bm!231436))

(declare-fun m!3456127 () Bool)

(assert (=> b!3195906 m!3456127))

(assert (=> b!3195898 m!3456127))

(assert (=> b!3195897 m!3456127))

(assert (=> b!3195897 m!3456127))

(declare-fun m!3456129 () Bool)

(assert (=> b!3195897 m!3456129))

(declare-fun m!3456131 () Bool)

(assert (=> b!3195897 m!3456131))

(assert (=> b!3195897 m!3456129))

(assert (=> b!3195897 m!3456131))

(declare-fun m!3456133 () Bool)

(assert (=> b!3195897 m!3456133))

(declare-fun m!3456135 () Bool)

(assert (=> b!3195896 m!3456135))

(assert (=> b!3195904 m!3456131))

(assert (=> b!3195904 m!3456131))

(declare-fun m!3456137 () Bool)

(assert (=> b!3195904 m!3456137))

(assert (=> b!3195907 m!3456131))

(assert (=> b!3195907 m!3456131))

(assert (=> b!3195907 m!3456137))

(assert (=> d!873854 m!3455025))

(declare-fun m!3456139 () Bool)

(assert (=> d!873854 m!3456139))

(assert (=> bm!231436 m!3455025))

(assert (=> b!3195044 d!873854))

(declare-fun bm!231469 () Bool)

(declare-fun call!231480 () Bool)

(assert (=> bm!231469 (= call!231480 (nullable!3390 (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3196069 () Bool)

(declare-fun e!1992516 () Unit!50426)

(declare-fun Unit!50428 () Unit!50426)

(assert (=> b!3196069 (= e!1992516 Unit!50428)))

(declare-fun d!873856 () Bool)

(declare-fun e!1992515 () Bool)

(assert (=> d!873856 e!1992515))

(declare-fun res!1300398 () Bool)

(assert (=> d!873856 (=> (not res!1300398) (not e!1992515))))

(declare-fun lt!1076966 () tuple2!35396)

(assert (=> d!873856 (= res!1300398 (= (++!8622 (_1!20832 lt!1076966) (_2!20832 lt!1076966)) lt!1076577))))

(declare-fun e!1992518 () tuple2!35396)

(assert (=> d!873856 (= lt!1076966 e!1992518)))

(declare-fun c!536457 () Bool)

(declare-fun lostCause!873 (Regex!9949) Bool)

(assert (=> d!873856 (= c!536457 (lostCause!873 (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun lt!1076978 () Unit!50426)

(declare-fun Unit!50429 () Unit!50426)

(assert (=> d!873856 (= lt!1076978 Unit!50429)))

(declare-fun getSuffix!1377 (List!36157 List!36157) List!36157)

(assert (=> d!873856 (= (getSuffix!1377 lt!1076577 Nil!36033) lt!1076577)))

(declare-fun lt!1076970 () Unit!50426)

(declare-fun lt!1076990 () Unit!50426)

(assert (=> d!873856 (= lt!1076970 lt!1076990)))

(declare-fun lt!1076982 () List!36157)

(assert (=> d!873856 (= lt!1076577 lt!1076982)))

(declare-fun lemmaSamePrefixThenSameSuffix!1223 (List!36157 List!36157 List!36157 List!36157 List!36157) Unit!50426)

(assert (=> d!873856 (= lt!1076990 (lemmaSamePrefixThenSameSuffix!1223 Nil!36033 lt!1076577 Nil!36033 lt!1076982 lt!1076577))))

(assert (=> d!873856 (= lt!1076982 (getSuffix!1377 lt!1076577 Nil!36033))))

(declare-fun lt!1076974 () Unit!50426)

(declare-fun lt!1076989 () Unit!50426)

(assert (=> d!873856 (= lt!1076974 lt!1076989)))

(declare-fun isPrefix!2775 (List!36157 List!36157) Bool)

(assert (=> d!873856 (isPrefix!2775 Nil!36033 (++!8622 Nil!36033 lt!1076577))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1757 (List!36157 List!36157) Unit!50426)

(assert (=> d!873856 (= lt!1076989 (lemmaConcatTwoListThenFirstIsPrefix!1757 Nil!36033 lt!1076577))))

(assert (=> d!873856 (validRegex!4542 (regex!5190 (rule!7622 (h!41454 tokens!494))))))

(assert (=> d!873856 (= (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)) lt!1076966)))

(declare-fun b!3196070 () Bool)

(declare-fun e!1992514 () Bool)

(assert (=> b!3196070 (= e!1992514 (>= (size!27131 (_1!20832 lt!1076966)) (size!27131 Nil!36033)))))

(declare-fun b!3196071 () Bool)

(declare-fun e!1992519 () tuple2!35396)

(declare-fun lt!1076967 () tuple2!35396)

(assert (=> b!3196071 (= e!1992519 lt!1076967)))

(declare-fun bm!231470 () Bool)

(declare-fun call!231474 () List!36157)

(assert (=> bm!231470 (= call!231474 (tail!5196 lt!1076577))))

(declare-fun call!231475 () Regex!9949)

(declare-fun call!231478 () tuple2!35396)

(declare-fun bm!231471 () Bool)

(declare-fun lt!1076977 () List!36157)

(assert (=> bm!231471 (= call!231478 (findLongestMatchInner!822 call!231475 lt!1076977 (+ (size!27131 Nil!36033) 1) call!231474 lt!1076577 (size!27131 lt!1076577)))))

(declare-fun b!3196072 () Bool)

(declare-fun e!1992513 () tuple2!35396)

(assert (=> b!3196072 (= e!1992513 (tuple2!35397 Nil!36033 Nil!36033))))

(declare-fun b!3196073 () Bool)

(assert (=> b!3196073 (= e!1992513 (tuple2!35397 Nil!36033 lt!1076577))))

(declare-fun b!3196074 () Bool)

(declare-fun e!1992517 () tuple2!35396)

(assert (=> b!3196074 (= e!1992518 e!1992517)))

(declare-fun c!536455 () Bool)

(assert (=> b!3196074 (= c!536455 (= (size!27131 Nil!36033) (size!27131 lt!1076577)))))

(declare-fun b!3196075 () Bool)

(declare-fun Unit!50430 () Unit!50426)

(assert (=> b!3196075 (= e!1992516 Unit!50430)))

(declare-fun lt!1076987 () Unit!50426)

(declare-fun call!231481 () Unit!50426)

(assert (=> b!3196075 (= lt!1076987 call!231481)))

(declare-fun call!231477 () Bool)

(assert (=> b!3196075 call!231477))

(declare-fun lt!1076991 () Unit!50426)

(assert (=> b!3196075 (= lt!1076991 lt!1076987)))

(declare-fun lt!1076985 () Unit!50426)

(declare-fun call!231476 () Unit!50426)

(assert (=> b!3196075 (= lt!1076985 call!231476)))

(assert (=> b!3196075 (= lt!1076577 Nil!36033)))

(declare-fun lt!1076969 () Unit!50426)

(assert (=> b!3196075 (= lt!1076969 lt!1076985)))

(assert (=> b!3196075 false))

(declare-fun bm!231472 () Bool)

(assert (=> bm!231472 (= call!231477 (isPrefix!2775 lt!1076577 lt!1076577))))

(declare-fun b!3196076 () Bool)

(assert (=> b!3196076 (= e!1992518 (tuple2!35397 Nil!36033 lt!1076577))))

(declare-fun bm!231473 () Bool)

(declare-fun call!231479 () C!20084)

(assert (=> bm!231473 (= call!231475 (derivativeStep!2943 (regex!5190 (rule!7622 (h!41454 tokens!494))) call!231479))))

(declare-fun b!3196077 () Bool)

(assert (=> b!3196077 (= e!1992519 (tuple2!35397 Nil!36033 lt!1076577))))

(declare-fun b!3196078 () Bool)

(declare-fun e!1992520 () tuple2!35396)

(assert (=> b!3196078 (= e!1992520 e!1992519)))

(assert (=> b!3196078 (= lt!1076967 call!231478)))

(declare-fun c!536453 () Bool)

(assert (=> b!3196078 (= c!536453 (isEmpty!20115 (_1!20832 lt!1076967)))))

(declare-fun b!3196079 () Bool)

(declare-fun c!536454 () Bool)

(assert (=> b!3196079 (= c!536454 call!231480)))

(declare-fun lt!1076968 () Unit!50426)

(declare-fun lt!1076965 () Unit!50426)

(assert (=> b!3196079 (= lt!1076968 lt!1076965)))

(declare-fun lt!1076984 () C!20084)

(declare-fun lt!1076976 () List!36157)

(assert (=> b!3196079 (= (++!8622 (++!8622 Nil!36033 (Cons!36033 lt!1076984 Nil!36033)) lt!1076976) lt!1076577)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1111 (List!36157 C!20084 List!36157 List!36157) Unit!50426)

(assert (=> b!3196079 (= lt!1076965 (lemmaMoveElementToOtherListKeepsConcatEq!1111 Nil!36033 lt!1076984 lt!1076976 lt!1076577))))

(assert (=> b!3196079 (= lt!1076976 (tail!5196 lt!1076577))))

(assert (=> b!3196079 (= lt!1076984 (head!7002 lt!1076577))))

(declare-fun lt!1076983 () Unit!50426)

(declare-fun lt!1076973 () Unit!50426)

(assert (=> b!3196079 (= lt!1076983 lt!1076973)))

(assert (=> b!3196079 (isPrefix!2775 (++!8622 Nil!36033 (Cons!36033 (head!7002 (getSuffix!1377 lt!1076577 Nil!36033)) Nil!36033)) lt!1076577)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!499 (List!36157 List!36157) Unit!50426)

(assert (=> b!3196079 (= lt!1076973 (lemmaAddHeadSuffixToPrefixStillPrefix!499 Nil!36033 lt!1076577))))

(declare-fun lt!1076981 () Unit!50426)

(declare-fun lt!1076964 () Unit!50426)

(assert (=> b!3196079 (= lt!1076981 lt!1076964)))

(assert (=> b!3196079 (= lt!1076964 (lemmaAddHeadSuffixToPrefixStillPrefix!499 Nil!36033 lt!1076577))))

(assert (=> b!3196079 (= lt!1076977 (++!8622 Nil!36033 (Cons!36033 (head!7002 lt!1076577) Nil!36033)))))

(declare-fun lt!1076971 () Unit!50426)

(assert (=> b!3196079 (= lt!1076971 e!1992516)))

(declare-fun c!536456 () Bool)

(assert (=> b!3196079 (= c!536456 (= (size!27131 Nil!36033) (size!27131 lt!1076577)))))

(declare-fun lt!1076986 () Unit!50426)

(declare-fun lt!1076975 () Unit!50426)

(assert (=> b!3196079 (= lt!1076986 lt!1076975)))

(assert (=> b!3196079 (<= (size!27131 Nil!36033) (size!27131 lt!1076577))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!307 (List!36157 List!36157) Unit!50426)

(assert (=> b!3196079 (= lt!1076975 (lemmaIsPrefixThenSmallerEqSize!307 Nil!36033 lt!1076577))))

(assert (=> b!3196079 (= e!1992517 e!1992520)))

(declare-fun bm!231474 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!506 (List!36157 List!36157 List!36157) Unit!50426)

(assert (=> bm!231474 (= call!231476 (lemmaIsPrefixSameLengthThenSameList!506 lt!1076577 Nil!36033 lt!1076577))))

(declare-fun b!3196080 () Bool)

(assert (=> b!3196080 (= e!1992515 e!1992514)))

(declare-fun res!1300399 () Bool)

(assert (=> b!3196080 (=> res!1300399 e!1992514)))

(assert (=> b!3196080 (= res!1300399 (isEmpty!20115 (_1!20832 lt!1076966)))))

(declare-fun bm!231475 () Bool)

(assert (=> bm!231475 (= call!231479 (head!7002 lt!1076577))))

(declare-fun bm!231476 () Bool)

(declare-fun lemmaIsPrefixRefl!1734 (List!36157 List!36157) Unit!50426)

(assert (=> bm!231476 (= call!231481 (lemmaIsPrefixRefl!1734 lt!1076577 lt!1076577))))

(declare-fun b!3196081 () Bool)

(assert (=> b!3196081 (= e!1992520 call!231478)))

(declare-fun b!3196082 () Bool)

(declare-fun c!536458 () Bool)

(assert (=> b!3196082 (= c!536458 call!231480)))

(declare-fun lt!1076980 () Unit!50426)

(declare-fun lt!1076972 () Unit!50426)

(assert (=> b!3196082 (= lt!1076980 lt!1076972)))

(assert (=> b!3196082 (= lt!1076577 Nil!36033)))

(assert (=> b!3196082 (= lt!1076972 call!231476)))

(declare-fun lt!1076988 () Unit!50426)

(declare-fun lt!1076979 () Unit!50426)

(assert (=> b!3196082 (= lt!1076988 lt!1076979)))

(assert (=> b!3196082 call!231477))

(assert (=> b!3196082 (= lt!1076979 call!231481)))

(assert (=> b!3196082 (= e!1992517 e!1992513)))

(assert (= (and d!873856 c!536457) b!3196076))

(assert (= (and d!873856 (not c!536457)) b!3196074))

(assert (= (and b!3196074 c!536455) b!3196082))

(assert (= (and b!3196074 (not c!536455)) b!3196079))

(assert (= (and b!3196082 c!536458) b!3196072))

(assert (= (and b!3196082 (not c!536458)) b!3196073))

(assert (= (and b!3196079 c!536456) b!3196075))

(assert (= (and b!3196079 (not c!536456)) b!3196069))

(assert (= (and b!3196079 c!536454) b!3196078))

(assert (= (and b!3196079 (not c!536454)) b!3196081))

(assert (= (and b!3196078 c!536453) b!3196077))

(assert (= (and b!3196078 (not c!536453)) b!3196071))

(assert (= (or b!3196078 b!3196081) bm!231475))

(assert (= (or b!3196078 b!3196081) bm!231470))

(assert (= (or b!3196078 b!3196081) bm!231473))

(assert (= (or b!3196078 b!3196081) bm!231471))

(assert (= (or b!3196082 b!3196075) bm!231476))

(assert (= (or b!3196082 b!3196075) bm!231472))

(assert (= (or b!3196082 b!3196075) bm!231474))

(assert (= (or b!3196082 b!3196079) bm!231469))

(assert (= (and d!873856 res!1300398) b!3196080))

(assert (= (and b!3196080 (not res!1300399)) b!3196070))

(assert (=> bm!231470 m!3455299))

(declare-fun m!3456373 () Bool)

(assert (=> bm!231476 m!3456373))

(declare-fun m!3456375 () Bool)

(assert (=> bm!231473 m!3456375))

(declare-fun m!3456377 () Bool)

(assert (=> bm!231472 m!3456377))

(declare-fun m!3456379 () Bool)

(assert (=> b!3196080 m!3456379))

(declare-fun m!3456381 () Bool)

(assert (=> b!3196079 m!3456381))

(declare-fun m!3456383 () Bool)

(assert (=> b!3196079 m!3456383))

(declare-fun m!3456385 () Bool)

(assert (=> b!3196079 m!3456385))

(declare-fun m!3456387 () Bool)

(assert (=> b!3196079 m!3456387))

(assert (=> b!3196079 m!3454873))

(assert (=> b!3196079 m!3455295))

(assert (=> b!3196079 m!3456381))

(declare-fun m!3456389 () Bool)

(assert (=> b!3196079 m!3456389))

(assert (=> b!3196079 m!3455299))

(assert (=> b!3196079 m!3456387))

(declare-fun m!3456391 () Bool)

(assert (=> b!3196079 m!3456391))

(assert (=> b!3196079 m!3455023))

(declare-fun m!3456393 () Bool)

(assert (=> b!3196079 m!3456393))

(declare-fun m!3456395 () Bool)

(assert (=> b!3196079 m!3456395))

(assert (=> b!3196079 m!3456395))

(declare-fun m!3456397 () Bool)

(assert (=> b!3196079 m!3456397))

(declare-fun m!3456399 () Bool)

(assert (=> b!3196079 m!3456399))

(declare-fun m!3456401 () Bool)

(assert (=> b!3196078 m!3456401))

(assert (=> bm!231469 m!3456135))

(assert (=> bm!231475 m!3455295))

(assert (=> d!873856 m!3456139))

(declare-fun m!3456403 () Bool)

(assert (=> d!873856 m!3456403))

(declare-fun m!3456405 () Bool)

(assert (=> d!873856 m!3456405))

(assert (=> d!873856 m!3456405))

(declare-fun m!3456407 () Bool)

(assert (=> d!873856 m!3456407))

(assert (=> d!873856 m!3456381))

(declare-fun m!3456409 () Bool)

(assert (=> d!873856 m!3456409))

(declare-fun m!3456411 () Bool)

(assert (=> d!873856 m!3456411))

(declare-fun m!3456413 () Bool)

(assert (=> d!873856 m!3456413))

(assert (=> bm!231471 m!3454873))

(declare-fun m!3456415 () Bool)

(assert (=> bm!231471 m!3456415))

(declare-fun m!3456417 () Bool)

(assert (=> b!3196070 m!3456417))

(assert (=> b!3196070 m!3455023))

(declare-fun m!3456419 () Bool)

(assert (=> bm!231474 m!3456419))

(assert (=> b!3195044 d!873856))

(declare-fun d!873964 () Bool)

(declare-fun lt!1076992 () Int)

(assert (=> d!873964 (>= lt!1076992 0)))

(declare-fun e!1992521 () Int)

(assert (=> d!873964 (= lt!1076992 e!1992521)))

(declare-fun c!536459 () Bool)

(assert (=> d!873964 (= c!536459 ((_ is Nil!36033) Nil!36033))))

(assert (=> d!873964 (= (size!27131 Nil!36033) lt!1076992)))

(declare-fun b!3196083 () Bool)

(assert (=> b!3196083 (= e!1992521 0)))

(declare-fun b!3196084 () Bool)

(assert (=> b!3196084 (= e!1992521 (+ 1 (size!27131 (t!236612 Nil!36033))))))

(assert (= (and d!873964 c!536459) b!3196083))

(assert (= (and d!873964 (not c!536459)) b!3196084))

(declare-fun m!3456421 () Bool)

(assert (=> b!3196084 m!3456421))

(assert (=> b!3195044 d!873964))

(assert (=> b!3195044 d!873506))

(declare-fun d!873966 () Bool)

(assert (=> d!873966 (= (get!11458 lt!1076639) (v!35582 lt!1076639))))

(assert (=> b!3195095 d!873966))

(declare-fun d!873968 () Bool)

(assert (=> d!873968 (= (list!12799 lt!1076651) (list!12801 (c!536197 lt!1076651)))))

(declare-fun bs!540564 () Bool)

(assert (= bs!540564 d!873968))

(declare-fun m!3456423 () Bool)

(assert (=> bs!540564 m!3456423))

(assert (=> d!873520 d!873968))

(declare-fun d!873970 () Bool)

(assert (=> d!873970 (= (isEmpty!20115 lt!1076594) ((_ is Nil!36033) lt!1076594))))

(assert (=> bm!231413 d!873970))

(declare-fun d!873972 () Bool)

(assert (=> d!873972 (= (isEmpty!20119 lt!1076622) (not ((_ is Some!7071) lt!1076622)))))

(assert (=> d!873492 d!873972))

(declare-fun d!873974 () Bool)

(assert (=> d!873974 (= (isEmpty!20115 (_1!20832 lt!1076623)) ((_ is Nil!36033) (_1!20832 lt!1076623)))))

(assert (=> d!873492 d!873974))

(declare-fun d!873976 () Bool)

(declare-fun lt!1077016 () tuple2!35396)

(assert (=> d!873976 (= (++!8622 (_1!20832 lt!1077016) (_2!20832 lt!1077016)) lt!1076577)))

(declare-fun sizeTr!152 (List!36157 Int) Int)

(assert (=> d!873976 (= lt!1077016 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 0 lt!1076577 lt!1076577 (sizeTr!152 lt!1076577 0)))))

(declare-fun lt!1077010 () Unit!50426)

(declare-fun lt!1077015 () Unit!50426)

(assert (=> d!873976 (= lt!1077010 lt!1077015)))

(declare-fun lt!1077013 () List!36157)

(declare-fun lt!1077009 () Int)

(assert (=> d!873976 (= (sizeTr!152 lt!1077013 lt!1077009) (+ (size!27131 lt!1077013) lt!1077009))))

(declare-fun lemmaSizeTrEqualsSize!151 (List!36157 Int) Unit!50426)

(assert (=> d!873976 (= lt!1077015 (lemmaSizeTrEqualsSize!151 lt!1077013 lt!1077009))))

(assert (=> d!873976 (= lt!1077009 0)))

(assert (=> d!873976 (= lt!1077013 Nil!36033)))

(declare-fun lt!1077012 () Unit!50426)

(declare-fun lt!1077014 () Unit!50426)

(assert (=> d!873976 (= lt!1077012 lt!1077014)))

(declare-fun lt!1077011 () Int)

(assert (=> d!873976 (= (sizeTr!152 lt!1076577 lt!1077011) (+ (size!27131 lt!1076577) lt!1077011))))

(assert (=> d!873976 (= lt!1077014 (lemmaSizeTrEqualsSize!151 lt!1076577 lt!1077011))))

(assert (=> d!873976 (= lt!1077011 0)))

(assert (=> d!873976 (validRegex!4542 (regex!5190 (rule!7622 (h!41454 tokens!494))))))

(assert (=> d!873976 (= (findLongestMatch!737 (regex!5190 (rule!7622 (h!41454 tokens!494))) lt!1076577) lt!1077016)))

(declare-fun bs!540565 () Bool)

(assert (= bs!540565 d!873976))

(declare-fun m!3456425 () Bool)

(assert (=> bs!540565 m!3456425))

(declare-fun m!3456427 () Bool)

(assert (=> bs!540565 m!3456427))

(assert (=> bs!540565 m!3456139))

(assert (=> bs!540565 m!3454873))

(declare-fun m!3456429 () Bool)

(assert (=> bs!540565 m!3456429))

(declare-fun m!3456431 () Bool)

(assert (=> bs!540565 m!3456431))

(declare-fun m!3456433 () Bool)

(assert (=> bs!540565 m!3456433))

(declare-fun m!3456435 () Bool)

(assert (=> bs!540565 m!3456435))

(assert (=> bs!540565 m!3456429))

(declare-fun m!3456437 () Bool)

(assert (=> bs!540565 m!3456437))

(declare-fun m!3456439 () Bool)

(assert (=> bs!540565 m!3456439))

(assert (=> d!873492 d!873976))

(declare-fun d!873978 () Bool)

(declare-fun res!1300404 () Bool)

(declare-fun e!1992524 () Bool)

(assert (=> d!873978 (=> (not res!1300404) (not e!1992524))))

(assert (=> d!873978 (= res!1300404 (validRegex!4542 (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(assert (=> d!873978 (= (ruleValid!1635 thiss!18206 (rule!7622 (h!41454 tokens!494))) e!1992524)))

(declare-fun b!3196089 () Bool)

(declare-fun res!1300405 () Bool)

(assert (=> b!3196089 (=> (not res!1300405) (not e!1992524))))

(assert (=> b!3196089 (= res!1300405 (not (nullable!3390 (regex!5190 (rule!7622 (h!41454 tokens!494))))))))

(declare-fun b!3196090 () Bool)

(assert (=> b!3196090 (= e!1992524 (not (= (tag!5708 (rule!7622 (h!41454 tokens!494))) (String!40435 ""))))))

(assert (= (and d!873978 res!1300404) b!3196089))

(assert (= (and b!3196089 res!1300405) b!3196090))

(assert (=> d!873978 m!3456139))

(assert (=> b!3196089 m!3456135))

(assert (=> d!873492 d!873978))

(declare-fun d!873980 () Bool)

(declare-fun isBalanced!3202 (Conc!10755) Bool)

(assert (=> d!873980 (= (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))) (isBalanced!3202 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))))))

(declare-fun bs!540566 () Bool)

(assert (= bs!540566 d!873980))

(declare-fun m!3456441 () Bool)

(assert (=> bs!540566 m!3456441))

(assert (=> tb!156133 d!873980))

(declare-fun d!873982 () Bool)

(assert (=> d!873982 true))

(declare-fun lambda!117015 () Int)

(declare-fun order!18319 () Int)

(declare-fun dynLambda!14512 (Int Int) Int)

(assert (=> d!873982 (< (dynLambda!14508 order!18313 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) (dynLambda!14512 order!18319 lambda!117015))))

(assert (=> d!873982 true))

(assert (=> d!873982 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))) (dynLambda!14512 order!18319 lambda!117015))))

(declare-fun Forall!1259 (Int) Bool)

(assert (=> d!873982 (= (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))) (Forall!1259 lambda!117015))))

(declare-fun bs!540567 () Bool)

(assert (= bs!540567 d!873982))

(declare-fun m!3456443 () Bool)

(assert (=> bs!540567 m!3456443))

(assert (=> d!873702 d!873982))

(declare-fun b!3196095 () Bool)

(declare-fun e!1992526 () List!36157)

(declare-fun call!231482 () List!36157)

(assert (=> b!3196095 (= e!1992526 call!231482)))

(declare-fun b!3196096 () Bool)

(declare-fun e!1992528 () List!36157)

(assert (=> b!3196096 (= e!1992528 (Cons!36033 (c!536196 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))) Nil!36033))))

(declare-fun b!3196097 () Bool)

(declare-fun e!1992527 () List!36157)

(declare-fun call!231483 () List!36157)

(assert (=> b!3196097 (= e!1992527 call!231483)))

(declare-fun b!3196098 () Bool)

(assert (=> b!3196098 (= e!1992527 call!231483)))

(declare-fun c!536462 () Bool)

(declare-fun call!231485 () List!36157)

(declare-fun bm!231477 () Bool)

(assert (=> bm!231477 (= call!231485 (usedCharacters!506 (ite c!536462 (regOne!20411 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))) (regTwo!20410 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))))))))

(declare-fun bm!231478 () Bool)

(declare-fun call!231484 () List!36157)

(assert (=> bm!231478 (= call!231483 (++!8622 (ite c!536462 call!231485 call!231484) (ite c!536462 call!231484 call!231485)))))

(declare-fun bm!231479 () Bool)

(declare-fun c!536461 () Bool)

(assert (=> bm!231479 (= call!231482 (usedCharacters!506 (ite c!536461 (reg!10278 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))) (ite c!536462 (regTwo!20411 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))) (regOne!20410 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241))))))))))))

(declare-fun d!873984 () Bool)

(declare-fun c!536463 () Bool)

(assert (=> d!873984 (= c!536463 (or ((_ is EmptyExpr!9949) (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))) ((_ is EmptyLang!9949) (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241))))))))))

(declare-fun e!1992525 () List!36157)

(assert (=> d!873984 (= (usedCharacters!506 (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))) e!1992525)))

(declare-fun b!3196099 () Bool)

(assert (=> b!3196099 (= e!1992525 e!1992528)))

(declare-fun c!536460 () Bool)

(assert (=> b!3196099 (= c!536460 ((_ is ElementMatch!9949) (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))))))

(declare-fun b!3196100 () Bool)

(assert (=> b!3196100 (= e!1992525 Nil!36033)))

(declare-fun bm!231480 () Bool)

(assert (=> bm!231480 (= call!231484 call!231482)))

(declare-fun b!3196101 () Bool)

(assert (=> b!3196101 (= e!1992526 e!1992527)))

(assert (=> b!3196101 (= c!536462 ((_ is Union!9949) (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))))))

(declare-fun b!3196102 () Bool)

(assert (=> b!3196102 (= c!536461 ((_ is Star!9949) (ite c!536226 (reg!10278 (regex!5190 (rule!7622 separatorToken!241))) (ite c!536227 (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241)))))))))

(assert (=> b!3196102 (= e!1992528 e!1992526)))

(assert (= (and d!873984 c!536463) b!3196100))

(assert (= (and d!873984 (not c!536463)) b!3196099))

(assert (= (and b!3196099 c!536460) b!3196096))

(assert (= (and b!3196099 (not c!536460)) b!3196102))

(assert (= (and b!3196102 c!536461) b!3196095))

(assert (= (and b!3196102 (not c!536461)) b!3196101))

(assert (= (and b!3196101 c!536462) b!3196097))

(assert (= (and b!3196101 (not c!536462)) b!3196098))

(assert (= (or b!3196097 b!3196098) bm!231480))

(assert (= (or b!3196097 b!3196098) bm!231477))

(assert (= (or b!3196097 b!3196098) bm!231478))

(assert (= (or b!3196095 bm!231480) bm!231479))

(declare-fun m!3456445 () Bool)

(assert (=> bm!231477 m!3456445))

(declare-fun m!3456447 () Bool)

(assert (=> bm!231478 m!3456447))

(declare-fun m!3456449 () Bool)

(assert (=> bm!231479 m!3456449))

(assert (=> bm!231392 d!873984))

(assert (=> b!3195631 d!873798))

(assert (=> b!3195631 d!873800))

(declare-fun d!873986 () Bool)

(assert (=> d!873986 (= (isDefined!5518 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))) (not (isEmpty!20118 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))))))

(declare-fun bs!540568 () Bool)

(assert (= bs!540568 d!873986))

(assert (=> bs!540568 m!3454883))

(declare-fun m!3456451 () Bool)

(assert (=> bs!540568 m!3456451))

(assert (=> d!873504 d!873986))

(assert (=> d!873504 d!873498))

(declare-fun d!873988 () Bool)

(declare-fun e!1992531 () Bool)

(assert (=> d!873988 e!1992531))

(declare-fun res!1300410 () Bool)

(assert (=> d!873988 (=> (not res!1300410) (not e!1992531))))

(assert (=> d!873988 (= res!1300410 (isDefined!5518 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))))))

(assert (=> d!873988 true))

(declare-fun _$52!1498 () Unit!50426)

(assert (=> d!873988 (= (choose!18640 thiss!18206 rules!2135 lt!1076594 separatorToken!241) _$52!1498)))

(declare-fun b!3196107 () Bool)

(declare-fun res!1300411 () Bool)

(assert (=> b!3196107 (=> (not res!1300411) (not e!1992531))))

(assert (=> b!3196107 (= res!1300411 (matchR!4583 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))) (list!12799 (charsOf!3206 separatorToken!241))))))

(declare-fun b!3196108 () Bool)

(assert (=> b!3196108 (= e!1992531 (= (rule!7622 separatorToken!241) (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))))))

(assert (= (and d!873988 res!1300410) b!3196107))

(assert (= (and b!3196107 res!1300411) b!3196108))

(assert (=> d!873988 m!3454883))

(assert (=> d!873988 m!3454883))

(assert (=> d!873988 m!3455067))

(assert (=> b!3196107 m!3454813))

(assert (=> b!3196107 m!3454823))

(assert (=> b!3196107 m!3454883))

(assert (=> b!3196107 m!3455071))

(assert (=> b!3196107 m!3454823))

(assert (=> b!3196107 m!3455073))

(assert (=> b!3196107 m!3454883))

(assert (=> b!3196107 m!3454813))

(assert (=> b!3196108 m!3454883))

(assert (=> b!3196108 m!3454883))

(assert (=> b!3196108 m!3455071))

(assert (=> d!873504 d!873988))

(assert (=> d!873504 d!873474))

(declare-fun d!873990 () Bool)

(declare-fun lt!1077019 () Token!9746)

(assert (=> d!873990 (= lt!1077019 (apply!8118 (list!12803 (_1!20829 lt!1076682)) 0))))

(declare-fun apply!8119 (Conc!10756 Int) Token!9746)

(assert (=> d!873990 (= lt!1077019 (apply!8119 (c!536198 (_1!20829 lt!1076682)) 0))))

(declare-fun e!1992534 () Bool)

(assert (=> d!873990 e!1992534))

(declare-fun res!1300414 () Bool)

(assert (=> d!873990 (=> (not res!1300414) (not e!1992534))))

(assert (=> d!873990 (= res!1300414 (<= 0 0))))

(assert (=> d!873990 (= (apply!8117 (_1!20829 lt!1076682) 0) lt!1077019)))

(declare-fun b!3196111 () Bool)

(assert (=> b!3196111 (= e!1992534 (< 0 (size!27133 (_1!20829 lt!1076682))))))

(assert (= (and d!873990 res!1300414) b!3196111))

(declare-fun m!3456453 () Bool)

(assert (=> d!873990 m!3456453))

(assert (=> d!873990 m!3456453))

(declare-fun m!3456455 () Bool)

(assert (=> d!873990 m!3456455))

(declare-fun m!3456457 () Bool)

(assert (=> d!873990 m!3456457))

(assert (=> b!3196111 m!3455327))

(assert (=> b!3195256 d!873990))

(declare-fun d!873992 () Bool)

(declare-fun c!536466 () Bool)

(assert (=> d!873992 (= c!536466 ((_ is Nil!36033) lt!1076755))))

(declare-fun e!1992537 () (InoxSet C!20084))

(assert (=> d!873992 (= (content!4864 lt!1076755) e!1992537)))

(declare-fun b!3196116 () Bool)

(assert (=> b!3196116 (= e!1992537 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196117 () Bool)

(assert (=> b!3196117 (= e!1992537 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076755) true) (content!4864 (t!236612 lt!1076755))))))

(assert (= (and d!873992 c!536466) b!3196116))

(assert (= (and d!873992 (not c!536466)) b!3196117))

(declare-fun m!3456459 () Bool)

(assert (=> b!3196117 m!3456459))

(declare-fun m!3456461 () Bool)

(assert (=> b!3196117 m!3456461))

(assert (=> d!873660 d!873992))

(declare-fun d!873994 () Bool)

(declare-fun c!536467 () Bool)

(assert (=> d!873994 (= c!536467 ((_ is Nil!36033) (++!8622 lt!1076577 lt!1076594)))))

(declare-fun e!1992538 () (InoxSet C!20084))

(assert (=> d!873994 (= (content!4864 (++!8622 lt!1076577 lt!1076594)) e!1992538)))

(declare-fun b!3196118 () Bool)

(assert (=> b!3196118 (= e!1992538 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196119 () Bool)

(assert (=> b!3196119 (= e!1992538 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 (++!8622 lt!1076577 lt!1076594)) true) (content!4864 (t!236612 (++!8622 lt!1076577 lt!1076594)))))))

(assert (= (and d!873994 c!536467) b!3196118))

(assert (= (and d!873994 (not c!536467)) b!3196119))

(declare-fun m!3456463 () Bool)

(assert (=> b!3196119 m!3456463))

(declare-fun m!3456465 () Bool)

(assert (=> b!3196119 m!3456465))

(assert (=> d!873660 d!873994))

(declare-fun d!873996 () Bool)

(declare-fun c!536468 () Bool)

(assert (=> d!873996 (= c!536468 ((_ is Nil!36033) lt!1076581))))

(declare-fun e!1992539 () (InoxSet C!20084))

(assert (=> d!873996 (= (content!4864 lt!1076581) e!1992539)))

(declare-fun b!3196120 () Bool)

(assert (=> b!3196120 (= e!1992539 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196121 () Bool)

(assert (=> b!3196121 (= e!1992539 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076581) true) (content!4864 (t!236612 lt!1076581))))))

(assert (= (and d!873996 c!536468) b!3196120))

(assert (= (and d!873996 (not c!536468)) b!3196121))

(declare-fun m!3456467 () Bool)

(assert (=> b!3196121 m!3456467))

(declare-fun m!3456469 () Bool)

(assert (=> b!3196121 m!3456469))

(assert (=> d!873660 d!873996))

(declare-fun d!873998 () Bool)

(declare-fun lt!1077020 () Int)

(assert (=> d!873998 (>= lt!1077020 0)))

(declare-fun e!1992540 () Int)

(assert (=> d!873998 (= lt!1077020 e!1992540)))

(declare-fun c!536469 () Bool)

(assert (=> d!873998 (= c!536469 ((_ is Nil!36033) (_2!20830 (get!11459 lt!1076622))))))

(assert (=> d!873998 (= (size!27131 (_2!20830 (get!11459 lt!1076622))) lt!1077020)))

(declare-fun b!3196122 () Bool)

(assert (=> b!3196122 (= e!1992540 0)))

(declare-fun b!3196123 () Bool)

(assert (=> b!3196123 (= e!1992540 (+ 1 (size!27131 (t!236612 (_2!20830 (get!11459 lt!1076622))))))))

(assert (= (and d!873998 c!536469) b!3196122))

(assert (= (and d!873998 (not c!536469)) b!3196123))

(declare-fun m!3456471 () Bool)

(assert (=> b!3196123 m!3456471))

(assert (=> b!3195041 d!873998))

(assert (=> b!3195041 d!873832))

(assert (=> b!3195041 d!873506))

(declare-fun d!874000 () Bool)

(declare-fun lt!1077021 () Int)

(assert (=> d!874000 (>= lt!1077021 0)))

(declare-fun e!1992541 () Int)

(assert (=> d!874000 (= lt!1077021 e!1992541)))

(declare-fun c!536470 () Bool)

(assert (=> d!874000 (= c!536470 ((_ is Nil!36033) lt!1076684))))

(assert (=> d!874000 (= (size!27131 lt!1076684) lt!1077021)))

(declare-fun b!3196124 () Bool)

(assert (=> b!3196124 (= e!1992541 0)))

(declare-fun b!3196125 () Bool)

(assert (=> b!3196125 (= e!1992541 (+ 1 (size!27131 (t!236612 lt!1076684))))))

(assert (= (and d!874000 c!536470) b!3196124))

(assert (= (and d!874000 (not c!536470)) b!3196125))

(declare-fun m!3456473 () Bool)

(assert (=> b!3196125 m!3456473))

(assert (=> b!3195261 d!874000))

(assert (=> b!3195261 d!873506))

(declare-fun d!874002 () Bool)

(declare-fun lt!1077022 () Int)

(assert (=> d!874002 (>= lt!1077022 0)))

(declare-fun e!1992542 () Int)

(assert (=> d!874002 (= lt!1077022 e!1992542)))

(declare-fun c!536471 () Bool)

(assert (=> d!874002 (= c!536471 ((_ is Nil!36033) lt!1076592))))

(assert (=> d!874002 (= (size!27131 lt!1076592) lt!1077022)))

(declare-fun b!3196126 () Bool)

(assert (=> b!3196126 (= e!1992542 0)))

(declare-fun b!3196127 () Bool)

(assert (=> b!3196127 (= e!1992542 (+ 1 (size!27131 (t!236612 lt!1076592))))))

(assert (= (and d!874002 c!536471) b!3196126))

(assert (= (and d!874002 (not c!536471)) b!3196127))

(declare-fun m!3456475 () Bool)

(assert (=> b!3196127 m!3456475))

(assert (=> b!3195261 d!874002))

(declare-fun b!3196128 () Bool)

(declare-fun e!1992544 () Bool)

(assert (=> b!3196128 (= e!1992544 (inv!15 (value!168375 (h!41454 (t!236613 tokens!494)))))))

(declare-fun d!874004 () Bool)

(declare-fun c!536473 () Bool)

(assert (=> d!874004 (= c!536473 ((_ is IntegerValue!16260) (value!168375 (h!41454 (t!236613 tokens!494)))))))

(declare-fun e!1992543 () Bool)

(assert (=> d!874004 (= (inv!21 (value!168375 (h!41454 (t!236613 tokens!494)))) e!1992543)))

(declare-fun b!3196129 () Bool)

(declare-fun e!1992545 () Bool)

(assert (=> b!3196129 (= e!1992543 e!1992545)))

(declare-fun c!536472 () Bool)

(assert (=> b!3196129 (= c!536472 ((_ is IntegerValue!16261) (value!168375 (h!41454 (t!236613 tokens!494)))))))

(declare-fun b!3196130 () Bool)

(declare-fun res!1300415 () Bool)

(assert (=> b!3196130 (=> res!1300415 e!1992544)))

(assert (=> b!3196130 (= res!1300415 (not ((_ is IntegerValue!16262) (value!168375 (h!41454 (t!236613 tokens!494))))))))

(assert (=> b!3196130 (= e!1992545 e!1992544)))

(declare-fun b!3196131 () Bool)

(assert (=> b!3196131 (= e!1992545 (inv!17 (value!168375 (h!41454 (t!236613 tokens!494)))))))

(declare-fun b!3196132 () Bool)

(assert (=> b!3196132 (= e!1992543 (inv!16 (value!168375 (h!41454 (t!236613 tokens!494)))))))

(assert (= (and d!874004 c!536473) b!3196132))

(assert (= (and d!874004 (not c!536473)) b!3196129))

(assert (= (and b!3196129 c!536472) b!3196131))

(assert (= (and b!3196129 (not c!536472)) b!3196130))

(assert (= (and b!3196130 (not res!1300415)) b!3196128))

(declare-fun m!3456477 () Bool)

(assert (=> b!3196128 m!3456477))

(declare-fun m!3456479 () Bool)

(assert (=> b!3196131 m!3456479))

(declare-fun m!3456481 () Bool)

(assert (=> b!3196132 m!3456481))

(assert (=> b!3195658 d!874004))

(declare-fun b!3196133 () Bool)

(declare-fun e!1992547 () List!36157)

(assert (=> b!3196133 (= e!1992547 lt!1076581)))

(declare-fun b!3196136 () Bool)

(declare-fun lt!1077023 () List!36157)

(declare-fun e!1992546 () Bool)

(assert (=> b!3196136 (= e!1992546 (or (not (= lt!1076581 Nil!36033)) (= lt!1077023 (t!236612 (++!8622 lt!1076577 lt!1076594)))))))

(declare-fun b!3196135 () Bool)

(declare-fun res!1300417 () Bool)

(assert (=> b!3196135 (=> (not res!1300417) (not e!1992546))))

(assert (=> b!3196135 (= res!1300417 (= (size!27131 lt!1077023) (+ (size!27131 (t!236612 (++!8622 lt!1076577 lt!1076594))) (size!27131 lt!1076581))))))

(declare-fun d!874006 () Bool)

(assert (=> d!874006 e!1992546))

(declare-fun res!1300416 () Bool)

(assert (=> d!874006 (=> (not res!1300416) (not e!1992546))))

(assert (=> d!874006 (= res!1300416 (= (content!4864 lt!1077023) ((_ map or) (content!4864 (t!236612 (++!8622 lt!1076577 lt!1076594))) (content!4864 lt!1076581))))))

(assert (=> d!874006 (= lt!1077023 e!1992547)))

(declare-fun c!536474 () Bool)

(assert (=> d!874006 (= c!536474 ((_ is Nil!36033) (t!236612 (++!8622 lt!1076577 lt!1076594))))))

(assert (=> d!874006 (= (++!8622 (t!236612 (++!8622 lt!1076577 lt!1076594)) lt!1076581) lt!1077023)))

(declare-fun b!3196134 () Bool)

(assert (=> b!3196134 (= e!1992547 (Cons!36033 (h!41453 (t!236612 (++!8622 lt!1076577 lt!1076594))) (++!8622 (t!236612 (t!236612 (++!8622 lt!1076577 lt!1076594))) lt!1076581)))))

(assert (= (and d!874006 c!536474) b!3196133))

(assert (= (and d!874006 (not c!536474)) b!3196134))

(assert (= (and d!874006 res!1300416) b!3196135))

(assert (= (and b!3196135 res!1300417) b!3196136))

(declare-fun m!3456483 () Bool)

(assert (=> b!3196135 m!3456483))

(declare-fun m!3456485 () Bool)

(assert (=> b!3196135 m!3456485))

(assert (=> b!3196135 m!3455113))

(declare-fun m!3456487 () Bool)

(assert (=> d!874006 m!3456487))

(assert (=> d!874006 m!3456465))

(assert (=> d!874006 m!3455119))

(declare-fun m!3456489 () Bool)

(assert (=> b!3196134 m!3456489))

(assert (=> b!3195488 d!874006))

(declare-fun d!874008 () Bool)

(assert (=> d!874008 (= (isEmpty!20115 (tail!5196 lt!1076577)) ((_ is Nil!36033) (tail!5196 lt!1076577)))))

(assert (=> b!3195249 d!874008))

(declare-fun d!874010 () Bool)

(assert (=> d!874010 (= (tail!5196 lt!1076577) (t!236612 lt!1076577))))

(assert (=> b!3195249 d!874010))

(assert (=> b!3195019 d!873470))

(declare-fun d!874012 () Bool)

(declare-fun e!1992550 () Bool)

(assert (=> d!874012 e!1992550))

(declare-fun c!536477 () Bool)

(assert (=> d!874012 (= c!536477 ((_ is EmptyExpr!9949) (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))))))))

(declare-fun lt!1077024 () Bool)

(declare-fun e!1992554 () Bool)

(assert (=> d!874012 (= lt!1077024 e!1992554)))

(declare-fun c!536476 () Bool)

(assert (=> d!874012 (= c!536476 (isEmpty!20115 (list!12799 (charsOf!3206 (h!41454 tokens!494)))))))

(assert (=> d!874012 (validRegex!4542 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))

(assert (=> d!874012 (= (matchR!4583 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))) (list!12799 (charsOf!3206 (h!41454 tokens!494)))) lt!1077024)))

(declare-fun b!3196137 () Bool)

(declare-fun e!1992552 () Bool)

(assert (=> b!3196137 (= e!1992550 e!1992552)))

(declare-fun c!536475 () Bool)

(assert (=> b!3196137 (= c!536475 ((_ is EmptyLang!9949) (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))))))))

(declare-fun b!3196138 () Bool)

(assert (=> b!3196138 (= e!1992554 (nullable!3390 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))))))))

(declare-fun b!3196139 () Bool)

(assert (=> b!3196139 (= e!1992554 (matchR!4583 (derivativeStep!2943 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))) (head!7002 (list!12799 (charsOf!3206 (h!41454 tokens!494))))) (tail!5196 (list!12799 (charsOf!3206 (h!41454 tokens!494))))))))

(declare-fun e!1992551 () Bool)

(declare-fun b!3196140 () Bool)

(assert (=> b!3196140 (= e!1992551 (= (head!7002 (list!12799 (charsOf!3206 (h!41454 tokens!494)))) (c!536196 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))))

(declare-fun bm!231481 () Bool)

(declare-fun call!231486 () Bool)

(assert (=> bm!231481 (= call!231486 (isEmpty!20115 (list!12799 (charsOf!3206 (h!41454 tokens!494)))))))

(declare-fun b!3196141 () Bool)

(declare-fun res!1300421 () Bool)

(declare-fun e!1992548 () Bool)

(assert (=> b!3196141 (=> res!1300421 e!1992548)))

(assert (=> b!3196141 (= res!1300421 (not ((_ is ElementMatch!9949) (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))))

(assert (=> b!3196141 (= e!1992552 e!1992548)))

(declare-fun b!3196142 () Bool)

(assert (=> b!3196142 (= e!1992550 (= lt!1077024 call!231486))))

(declare-fun b!3196143 () Bool)

(declare-fun res!1300423 () Bool)

(assert (=> b!3196143 (=> res!1300423 e!1992548)))

(assert (=> b!3196143 (= res!1300423 e!1992551)))

(declare-fun res!1300419 () Bool)

(assert (=> b!3196143 (=> (not res!1300419) (not e!1992551))))

(assert (=> b!3196143 (= res!1300419 lt!1077024)))

(declare-fun b!3196144 () Bool)

(assert (=> b!3196144 (= e!1992552 (not lt!1077024))))

(declare-fun b!3196145 () Bool)

(declare-fun e!1992549 () Bool)

(declare-fun e!1992553 () Bool)

(assert (=> b!3196145 (= e!1992549 e!1992553)))

(declare-fun res!1300425 () Bool)

(assert (=> b!3196145 (=> res!1300425 e!1992553)))

(assert (=> b!3196145 (= res!1300425 call!231486)))

(declare-fun b!3196146 () Bool)

(declare-fun res!1300420 () Bool)

(assert (=> b!3196146 (=> (not res!1300420) (not e!1992551))))

(assert (=> b!3196146 (= res!1300420 (isEmpty!20115 (tail!5196 (list!12799 (charsOf!3206 (h!41454 tokens!494))))))))

(declare-fun b!3196147 () Bool)

(declare-fun res!1300424 () Bool)

(assert (=> b!3196147 (=> (not res!1300424) (not e!1992551))))

(assert (=> b!3196147 (= res!1300424 (not call!231486))))

(declare-fun b!3196148 () Bool)

(assert (=> b!3196148 (= e!1992553 (not (= (head!7002 (list!12799 (charsOf!3206 (h!41454 tokens!494)))) (c!536196 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))))))))))

(declare-fun b!3196149 () Bool)

(declare-fun res!1300418 () Bool)

(assert (=> b!3196149 (=> res!1300418 e!1992553)))

(assert (=> b!3196149 (= res!1300418 (not (isEmpty!20115 (tail!5196 (list!12799 (charsOf!3206 (h!41454 tokens!494)))))))))

(declare-fun b!3196150 () Bool)

(assert (=> b!3196150 (= e!1992548 e!1992549)))

(declare-fun res!1300422 () Bool)

(assert (=> b!3196150 (=> (not res!1300422) (not e!1992549))))

(assert (=> b!3196150 (= res!1300422 (not lt!1077024))))

(assert (= (and d!874012 c!536476) b!3196138))

(assert (= (and d!874012 (not c!536476)) b!3196139))

(assert (= (and d!874012 c!536477) b!3196142))

(assert (= (and d!874012 (not c!536477)) b!3196137))

(assert (= (and b!3196137 c!536475) b!3196144))

(assert (= (and b!3196137 (not c!536475)) b!3196141))

(assert (= (and b!3196141 (not res!1300421)) b!3196143))

(assert (= (and b!3196143 res!1300419) b!3196147))

(assert (= (and b!3196147 res!1300424) b!3196146))

(assert (= (and b!3196146 res!1300420) b!3196140))

(assert (= (and b!3196143 (not res!1300423)) b!3196150))

(assert (= (and b!3196150 res!1300422) b!3196145))

(assert (= (and b!3196145 (not res!1300425)) b!3196149))

(assert (= (and b!3196149 (not res!1300418)) b!3196148))

(assert (= (or b!3196142 b!3196145 b!3196147) bm!231481))

(assert (=> b!3196148 m!3454891))

(declare-fun m!3456491 () Bool)

(assert (=> b!3196148 m!3456491))

(assert (=> b!3196140 m!3454891))

(assert (=> b!3196140 m!3456491))

(assert (=> b!3196139 m!3454891))

(assert (=> b!3196139 m!3456491))

(assert (=> b!3196139 m!3456491))

(declare-fun m!3456493 () Bool)

(assert (=> b!3196139 m!3456493))

(assert (=> b!3196139 m!3454891))

(declare-fun m!3456495 () Bool)

(assert (=> b!3196139 m!3456495))

(assert (=> b!3196139 m!3456493))

(assert (=> b!3196139 m!3456495))

(declare-fun m!3456497 () Bool)

(assert (=> b!3196139 m!3456497))

(declare-fun m!3456499 () Bool)

(assert (=> b!3196138 m!3456499))

(assert (=> b!3196146 m!3454891))

(assert (=> b!3196146 m!3456495))

(assert (=> b!3196146 m!3456495))

(declare-fun m!3456501 () Bool)

(assert (=> b!3196146 m!3456501))

(assert (=> b!3196149 m!3454891))

(assert (=> b!3196149 m!3456495))

(assert (=> b!3196149 m!3456495))

(assert (=> b!3196149 m!3456501))

(assert (=> d!874012 m!3454891))

(declare-fun m!3456503 () Bool)

(assert (=> d!874012 m!3456503))

(declare-fun m!3456505 () Bool)

(assert (=> d!874012 m!3456505))

(assert (=> bm!231481 m!3454891))

(assert (=> bm!231481 m!3456503))

(assert (=> b!3195019 d!874012))

(assert (=> b!3195019 d!873502))

(declare-fun d!874014 () Bool)

(assert (=> d!874014 (= (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))) (v!35582 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))))))

(assert (=> b!3195019 d!874014))

(assert (=> b!3195019 d!873468))

(declare-fun d!874016 () Bool)

(declare-fun nullableFct!960 (Regex!9949) Bool)

(assert (=> d!874016 (= (nullable!3390 (regex!5190 lt!1076588)) (nullableFct!960 (regex!5190 lt!1076588)))))

(declare-fun bs!540569 () Bool)

(assert (= bs!540569 d!874016))

(declare-fun m!3456507 () Bool)

(assert (=> bs!540569 m!3456507))

(assert (=> b!3195623 d!874016))

(declare-fun d!874018 () Bool)

(declare-fun lt!1077025 () Bool)

(assert (=> d!874018 (= lt!1077025 (isEmpty!20115 (list!12799 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)))))))))

(assert (=> d!874018 (= lt!1077025 (isEmpty!20127 (c!536197 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)))))))))

(assert (=> d!874018 (= (isEmpty!20123 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241))))) lt!1077025)))

(declare-fun bs!540570 () Bool)

(assert (= bs!540570 d!874018))

(declare-fun m!3456509 () Bool)

(assert (=> bs!540570 m!3456509))

(assert (=> bs!540570 m!3456509))

(declare-fun m!3456511 () Bool)

(assert (=> bs!540570 m!3456511))

(declare-fun m!3456513 () Bool)

(assert (=> bs!540570 m!3456513))

(assert (=> b!3195182 d!874018))

(declare-fun d!874020 () Bool)

(declare-fun e!1992557 () Bool)

(assert (=> d!874020 e!1992557))

(declare-fun res!1300428 () Bool)

(assert (=> d!874020 (=> (not res!1300428) (not e!1992557))))

(declare-fun e!1992555 () Bool)

(assert (=> d!874020 (= res!1300428 e!1992555)))

(declare-fun c!536478 () Bool)

(declare-fun lt!1077026 () tuple2!35390)

(assert (=> d!874020 (= c!536478 (> (size!27133 (_1!20829 lt!1077026)) 0))))

(assert (=> d!874020 (= lt!1077026 (lexTailRecV2!924 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)) (BalanceConc!21125 Empty!10755) (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)) (BalanceConc!21127 Empty!10756)))))

(assert (=> d!874020 (= (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241))) lt!1077026)))

(declare-fun b!3196151 () Bool)

(assert (=> b!3196151 (= e!1992555 (= (_2!20829 lt!1077026) (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241))))))

(declare-fun b!3196152 () Bool)

(assert (=> b!3196152 (= e!1992557 (= (list!12799 (_2!20829 lt!1077026)) (_2!20831 (lexList!1304 thiss!18206 rules!2135 (list!12799 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)))))))))

(declare-fun b!3196153 () Bool)

(declare-fun res!1300427 () Bool)

(assert (=> b!3196153 (=> (not res!1300427) (not e!1992557))))

(assert (=> b!3196153 (= res!1300427 (= (list!12803 (_1!20829 lt!1077026)) (_1!20831 (lexList!1304 thiss!18206 rules!2135 (list!12799 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)))))))))

(declare-fun b!3196154 () Bool)

(declare-fun e!1992556 () Bool)

(assert (=> b!3196154 (= e!1992556 (not (isEmpty!20113 (_1!20829 lt!1077026))))))

(declare-fun b!3196155 () Bool)

(assert (=> b!3196155 (= e!1992555 e!1992556)))

(declare-fun res!1300426 () Bool)

(assert (=> b!3196155 (= res!1300426 (< (size!27134 (_2!20829 lt!1077026)) (size!27134 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)))))))

(assert (=> b!3196155 (=> (not res!1300426) (not e!1992556))))

(assert (= (and d!874020 c!536478) b!3196155))

(assert (= (and d!874020 (not c!536478)) b!3196151))

(assert (= (and b!3196155 res!1300426) b!3196154))

(assert (= (and d!874020 res!1300428) b!3196153))

(assert (= (and b!3196153 res!1300427) b!3196152))

(declare-fun m!3456515 () Bool)

(assert (=> d!874020 m!3456515))

(assert (=> d!874020 m!3455205))

(assert (=> d!874020 m!3455205))

(declare-fun m!3456517 () Bool)

(assert (=> d!874020 m!3456517))

(declare-fun m!3456519 () Bool)

(assert (=> b!3196152 m!3456519))

(assert (=> b!3196152 m!3455205))

(declare-fun m!3456521 () Bool)

(assert (=> b!3196152 m!3456521))

(assert (=> b!3196152 m!3456521))

(declare-fun m!3456523 () Bool)

(assert (=> b!3196152 m!3456523))

(declare-fun m!3456525 () Bool)

(assert (=> b!3196154 m!3456525))

(declare-fun m!3456527 () Bool)

(assert (=> b!3196155 m!3456527))

(assert (=> b!3196155 m!3455205))

(declare-fun m!3456529 () Bool)

(assert (=> b!3196155 m!3456529))

(declare-fun m!3456531 () Bool)

(assert (=> b!3196153 m!3456531))

(assert (=> b!3196153 m!3455205))

(assert (=> b!3196153 m!3456521))

(assert (=> b!3196153 m!3456521))

(assert (=> b!3196153 m!3456523))

(assert (=> b!3195182 d!874020))

(declare-fun d!874022 () Bool)

(declare-fun lt!1077027 () BalanceConc!21124)

(assert (=> d!874022 (= (list!12799 lt!1077027) (printList!1329 thiss!18206 (list!12803 (singletonSeq!2286 separatorToken!241))))))

(assert (=> d!874022 (= lt!1077027 (printTailRec!1276 thiss!18206 (singletonSeq!2286 separatorToken!241) 0 (BalanceConc!21125 Empty!10755)))))

(assert (=> d!874022 (= (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)) lt!1077027)))

(declare-fun bs!540571 () Bool)

(assert (= bs!540571 d!874022))

(declare-fun m!3456533 () Bool)

(assert (=> bs!540571 m!3456533))

(assert (=> bs!540571 m!3455199))

(assert (=> bs!540571 m!3455201))

(assert (=> bs!540571 m!3455201))

(declare-fun m!3456535 () Bool)

(assert (=> bs!540571 m!3456535))

(assert (=> bs!540571 m!3455199))

(declare-fun m!3456537 () Bool)

(assert (=> bs!540571 m!3456537))

(assert (=> b!3195182 d!874022))

(declare-fun d!874024 () Bool)

(declare-fun e!1992558 () Bool)

(assert (=> d!874024 e!1992558))

(declare-fun res!1300429 () Bool)

(assert (=> d!874024 (=> (not res!1300429) (not e!1992558))))

(declare-fun lt!1077028 () BalanceConc!21126)

(assert (=> d!874024 (= res!1300429 (= (list!12803 lt!1077028) (Cons!36034 separatorToken!241 Nil!36034)))))

(assert (=> d!874024 (= lt!1077028 (singleton!986 separatorToken!241))))

(assert (=> d!874024 (= (singletonSeq!2286 separatorToken!241) lt!1077028)))

(declare-fun b!3196156 () Bool)

(assert (=> b!3196156 (= e!1992558 (isBalanced!3201 (c!536198 lt!1077028)))))

(assert (= (and d!874024 res!1300429) b!3196156))

(declare-fun m!3456539 () Bool)

(assert (=> d!874024 m!3456539))

(declare-fun m!3456541 () Bool)

(assert (=> d!874024 m!3456541))

(declare-fun m!3456543 () Bool)

(assert (=> b!3196156 m!3456543))

(assert (=> b!3195182 d!874024))

(declare-fun d!874026 () Bool)

(assert (=> d!874026 (= (list!12803 (_1!20829 lt!1076605)) (list!12804 (c!536198 (_1!20829 lt!1076605))))))

(declare-fun bs!540572 () Bool)

(assert (= bs!540572 d!874026))

(declare-fun m!3456545 () Bool)

(assert (=> bs!540572 m!3456545))

(assert (=> b!3195012 d!874026))

(assert (=> b!3195012 d!873816))

(assert (=> b!3195012 d!873818))

(declare-fun d!874028 () Bool)

(assert (=> d!874028 (= (list!12799 lt!1076653) (list!12801 (c!536197 lt!1076653)))))

(declare-fun bs!540573 () Bool)

(assert (= bs!540573 d!874028))

(declare-fun m!3456547 () Bool)

(assert (=> bs!540573 m!3456547))

(assert (=> d!873532 d!874028))

(declare-fun d!874030 () Bool)

(declare-fun e!1992561 () Bool)

(assert (=> d!874030 e!1992561))

(declare-fun c!536481 () Bool)

(assert (=> d!874030 (= c!536481 ((_ is EmptyExpr!9949) (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun lt!1077029 () Bool)

(declare-fun e!1992565 () Bool)

(assert (=> d!874030 (= lt!1077029 e!1992565)))

(declare-fun c!536480 () Bool)

(assert (=> d!874030 (= c!536480 (isEmpty!20115 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))))))

(assert (=> d!874030 (validRegex!4542 (regex!5190 (rule!7622 (h!41454 tokens!494))))))

(assert (=> d!874030 (= (matchR!4583 (regex!5190 (rule!7622 (h!41454 tokens!494))) (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))) lt!1077029)))

(declare-fun b!3196157 () Bool)

(declare-fun e!1992563 () Bool)

(assert (=> b!3196157 (= e!1992561 e!1992563)))

(declare-fun c!536479 () Bool)

(assert (=> b!3196157 (= c!536479 ((_ is EmptyLang!9949) (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3196158 () Bool)

(assert (=> b!3196158 (= e!1992565 (nullable!3390 (regex!5190 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3196159 () Bool)

(assert (=> b!3196159 (= e!1992565 (matchR!4583 (derivativeStep!2943 (regex!5190 (rule!7622 (h!41454 tokens!494))) (head!7002 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622)))))) (tail!5196 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622)))))))))

(declare-fun b!3196160 () Bool)

(declare-fun e!1992562 () Bool)

(assert (=> b!3196160 (= e!1992562 (= (head!7002 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))) (c!536196 (regex!5190 (rule!7622 (h!41454 tokens!494))))))))

(declare-fun bm!231482 () Bool)

(declare-fun call!231487 () Bool)

(assert (=> bm!231482 (= call!231487 (isEmpty!20115 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))))))

(declare-fun b!3196161 () Bool)

(declare-fun res!1300433 () Bool)

(declare-fun e!1992559 () Bool)

(assert (=> b!3196161 (=> res!1300433 e!1992559)))

(assert (=> b!3196161 (= res!1300433 (not ((_ is ElementMatch!9949) (regex!5190 (rule!7622 (h!41454 tokens!494))))))))

(assert (=> b!3196161 (= e!1992563 e!1992559)))

(declare-fun b!3196162 () Bool)

(assert (=> b!3196162 (= e!1992561 (= lt!1077029 call!231487))))

(declare-fun b!3196163 () Bool)

(declare-fun res!1300435 () Bool)

(assert (=> b!3196163 (=> res!1300435 e!1992559)))

(assert (=> b!3196163 (= res!1300435 e!1992562)))

(declare-fun res!1300431 () Bool)

(assert (=> b!3196163 (=> (not res!1300431) (not e!1992562))))

(assert (=> b!3196163 (= res!1300431 lt!1077029)))

(declare-fun b!3196164 () Bool)

(assert (=> b!3196164 (= e!1992563 (not lt!1077029))))

(declare-fun b!3196165 () Bool)

(declare-fun e!1992560 () Bool)

(declare-fun e!1992564 () Bool)

(assert (=> b!3196165 (= e!1992560 e!1992564)))

(declare-fun res!1300437 () Bool)

(assert (=> b!3196165 (=> res!1300437 e!1992564)))

(assert (=> b!3196165 (= res!1300437 call!231487)))

(declare-fun b!3196166 () Bool)

(declare-fun res!1300432 () Bool)

(assert (=> b!3196166 (=> (not res!1300432) (not e!1992562))))

(assert (=> b!3196166 (= res!1300432 (isEmpty!20115 (tail!5196 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622)))))))))

(declare-fun b!3196167 () Bool)

(declare-fun res!1300436 () Bool)

(assert (=> b!3196167 (=> (not res!1300436) (not e!1992562))))

(assert (=> b!3196167 (= res!1300436 (not call!231487))))

(declare-fun b!3196168 () Bool)

(assert (=> b!3196168 (= e!1992564 (not (= (head!7002 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))) (c!536196 (regex!5190 (rule!7622 (h!41454 tokens!494)))))))))

(declare-fun b!3196169 () Bool)

(declare-fun res!1300430 () Bool)

(assert (=> b!3196169 (=> res!1300430 e!1992564)))

(assert (=> b!3196169 (= res!1300430 (not (isEmpty!20115 (tail!5196 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))))))))

(declare-fun b!3196170 () Bool)

(assert (=> b!3196170 (= e!1992559 e!1992560)))

(declare-fun res!1300434 () Bool)

(assert (=> b!3196170 (=> (not res!1300434) (not e!1992560))))

(assert (=> b!3196170 (= res!1300434 (not lt!1077029))))

(assert (= (and d!874030 c!536480) b!3196158))

(assert (= (and d!874030 (not c!536480)) b!3196159))

(assert (= (and d!874030 c!536481) b!3196162))

(assert (= (and d!874030 (not c!536481)) b!3196157))

(assert (= (and b!3196157 c!536479) b!3196164))

(assert (= (and b!3196157 (not c!536479)) b!3196161))

(assert (= (and b!3196161 (not res!1300433)) b!3196163))

(assert (= (and b!3196163 res!1300431) b!3196167))

(assert (= (and b!3196167 res!1300436) b!3196166))

(assert (= (and b!3196166 res!1300432) b!3196160))

(assert (= (and b!3196163 (not res!1300435)) b!3196170))

(assert (= (and b!3196170 res!1300434) b!3196165))

(assert (= (and b!3196165 (not res!1300437)) b!3196169))

(assert (= (and b!3196169 (not res!1300430)) b!3196168))

(assert (= (or b!3196162 b!3196165 b!3196167) bm!231482))

(assert (=> b!3196168 m!3455003))

(declare-fun m!3456549 () Bool)

(assert (=> b!3196168 m!3456549))

(assert (=> b!3196160 m!3455003))

(assert (=> b!3196160 m!3456549))

(assert (=> b!3196159 m!3455003))

(assert (=> b!3196159 m!3456549))

(assert (=> b!3196159 m!3456549))

(declare-fun m!3456551 () Bool)

(assert (=> b!3196159 m!3456551))

(assert (=> b!3196159 m!3455003))

(declare-fun m!3456553 () Bool)

(assert (=> b!3196159 m!3456553))

(assert (=> b!3196159 m!3456551))

(assert (=> b!3196159 m!3456553))

(declare-fun m!3456555 () Bool)

(assert (=> b!3196159 m!3456555))

(assert (=> b!3196158 m!3456135))

(assert (=> b!3196166 m!3455003))

(assert (=> b!3196166 m!3456553))

(assert (=> b!3196166 m!3456553))

(declare-fun m!3456557 () Bool)

(assert (=> b!3196166 m!3456557))

(assert (=> b!3196169 m!3455003))

(assert (=> b!3196169 m!3456553))

(assert (=> b!3196169 m!3456553))

(assert (=> b!3196169 m!3456557))

(assert (=> d!874030 m!3455003))

(declare-fun m!3456559 () Bool)

(assert (=> d!874030 m!3456559))

(assert (=> d!874030 m!3456139))

(assert (=> bm!231482 m!3455003))

(assert (=> bm!231482 m!3456559))

(assert (=> b!3195045 d!874030))

(declare-fun d!874032 () Bool)

(assert (=> d!874032 (= (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622)))) (list!12801 (c!536197 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))))))

(declare-fun bs!540574 () Bool)

(assert (= bs!540574 d!874032))

(declare-fun m!3456561 () Bool)

(assert (=> bs!540574 m!3456561))

(assert (=> b!3195045 d!874032))

(declare-fun d!874034 () Bool)

(declare-fun lt!1077030 () BalanceConc!21124)

(assert (=> d!874034 (= (list!12799 lt!1077030) (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622))))))

(assert (=> d!874034 (= lt!1077030 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622))))) (value!168375 (_1!20830 (get!11459 lt!1076622)))))))

(assert (=> d!874034 (= (charsOf!3206 (_1!20830 (get!11459 lt!1076622))) lt!1077030)))

(declare-fun b_lambda!87243 () Bool)

(assert (=> (not b_lambda!87243) (not d!874034)))

(declare-fun tb!156245 () Bool)

(declare-fun t!236767 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236767) tb!156245))

(declare-fun b!3196171 () Bool)

(declare-fun e!1992566 () Bool)

(declare-fun tp!1010620 () Bool)

(assert (=> b!3196171 (= e!1992566 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622))))) (value!168375 (_1!20830 (get!11459 lt!1076622)))))) tp!1010620))))

(declare-fun result!198498 () Bool)

(assert (=> tb!156245 (= result!198498 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622))))) (value!168375 (_1!20830 (get!11459 lt!1076622))))) e!1992566))))

(assert (= tb!156245 b!3196171))

(declare-fun m!3456563 () Bool)

(assert (=> b!3196171 m!3456563))

(declare-fun m!3456565 () Bool)

(assert (=> tb!156245 m!3456565))

(assert (=> d!874034 t!236767))

(declare-fun b_and!212177 () Bool)

(assert (= b_and!212117 (and (=> t!236767 result!198498) b_and!212177)))

(declare-fun tb!156247 () Bool)

(declare-fun t!236769 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236769) tb!156247))

(declare-fun result!198500 () Bool)

(assert (= result!198500 result!198498))

(assert (=> d!874034 t!236769))

(declare-fun b_and!212179 () Bool)

(assert (= b_and!212125 (and (=> t!236769 result!198500) b_and!212179)))

(declare-fun tb!156249 () Bool)

(declare-fun t!236771 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236771) tb!156249))

(declare-fun result!198502 () Bool)

(assert (= result!198502 result!198498))

(assert (=> d!874034 t!236771))

(declare-fun b_and!212181 () Bool)

(assert (= b_and!212123 (and (=> t!236771 result!198502) b_and!212181)))

(declare-fun t!236773 () Bool)

(declare-fun tb!156251 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236773) tb!156251))

(declare-fun result!198504 () Bool)

(assert (= result!198504 result!198498))

(assert (=> d!874034 t!236773))

(declare-fun b_and!212183 () Bool)

(assert (= b_and!212119 (and (=> t!236773 result!198504) b_and!212183)))

(declare-fun t!236775 () Bool)

(declare-fun tb!156253 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236775) tb!156253))

(declare-fun result!198506 () Bool)

(assert (= result!198506 result!198498))

(assert (=> d!874034 t!236775))

(declare-fun b_and!212185 () Bool)

(assert (= b_and!212121 (and (=> t!236775 result!198506) b_and!212185)))

(declare-fun m!3456567 () Bool)

(assert (=> d!874034 m!3456567))

(declare-fun m!3456569 () Bool)

(assert (=> d!874034 m!3456569))

(assert (=> b!3195045 d!874034))

(assert (=> b!3195045 d!873832))

(declare-fun b!3196180 () Bool)

(declare-fun e!1992574 () Bool)

(declare-fun e!1992573 () Bool)

(assert (=> b!3196180 (= e!1992574 e!1992573)))

(declare-fun res!1300443 () Bool)

(assert (=> b!3196180 (= res!1300443 (not ((_ is Cons!36035) rules!2135)))))

(assert (=> b!3196180 (=> res!1300443 e!1992573)))

(declare-fun d!874036 () Bool)

(declare-fun c!536484 () Bool)

(assert (=> d!874036 (= c!536484 (and ((_ is Cons!36035) rules!2135) (not (= (isSeparator!5190 (h!41455 rules!2135)) (isSeparator!5190 (h!41455 rules!2135))))))))

(assert (=> d!874036 (= (ruleDisjointCharsFromAllFromOtherType!583 (h!41455 rules!2135) rules!2135) e!1992574)))

(declare-fun b!3196181 () Bool)

(declare-fun call!231490 () Bool)

(assert (=> b!3196181 (= e!1992573 call!231490)))

(declare-fun b!3196182 () Bool)

(declare-fun e!1992575 () Bool)

(assert (=> b!3196182 (= e!1992574 e!1992575)))

(declare-fun res!1300442 () Bool)

(declare-fun rulesUseDisjointChars!262 (Rule!10180 Rule!10180) Bool)

(assert (=> b!3196182 (= res!1300442 (rulesUseDisjointChars!262 (h!41455 rules!2135) (h!41455 rules!2135)))))

(assert (=> b!3196182 (=> (not res!1300442) (not e!1992575))))

(declare-fun b!3196183 () Bool)

(assert (=> b!3196183 (= e!1992575 call!231490)))

(declare-fun bm!231485 () Bool)

(assert (=> bm!231485 (= call!231490 (ruleDisjointCharsFromAllFromOtherType!583 (h!41455 rules!2135) (t!236614 rules!2135)))))

(assert (= (and d!874036 c!536484) b!3196182))

(assert (= (and d!874036 (not c!536484)) b!3196180))

(assert (= (and b!3196182 res!1300442) b!3196183))

(assert (= (and b!3196180 (not res!1300443)) b!3196181))

(assert (= (or b!3196183 b!3196181) bm!231485))

(declare-fun m!3456571 () Bool)

(assert (=> b!3196182 m!3456571))

(declare-fun m!3456573 () Bool)

(assert (=> bm!231485 m!3456573))

(assert (=> b!3195507 d!874036))

(declare-fun b!3196212 () Bool)

(declare-fun res!1300457 () Bool)

(declare-fun e!1992588 () Bool)

(assert (=> b!3196212 (=> (not res!1300457) (not e!1992588))))

(assert (=> b!3196212 (= res!1300457 (isBalanced!3201 (left!28001 (c!536198 lt!1076809))))))

(declare-fun b!3196213 () Bool)

(declare-fun res!1300458 () Bool)

(assert (=> b!3196213 (=> (not res!1300458) (not e!1992588))))

(assert (=> b!3196213 (= res!1300458 (isBalanced!3201 (right!28331 (c!536198 lt!1076809))))))

(declare-fun b!3196214 () Bool)

(declare-fun res!1300460 () Bool)

(assert (=> b!3196214 (=> (not res!1300460) (not e!1992588))))

(assert (=> b!3196214 (= res!1300460 (not (isEmpty!20117 (left!28001 (c!536198 lt!1076809)))))))

(declare-fun d!874038 () Bool)

(declare-fun res!1300456 () Bool)

(declare-fun e!1992589 () Bool)

(assert (=> d!874038 (=> res!1300456 e!1992589)))

(assert (=> d!874038 (= res!1300456 (not ((_ is Node!10756) (c!536198 lt!1076809))))))

(assert (=> d!874038 (= (isBalanced!3201 (c!536198 lt!1076809)) e!1992589)))

(declare-fun b!3196215 () Bool)

(assert (=> b!3196215 (= e!1992588 (not (isEmpty!20117 (right!28331 (c!536198 lt!1076809)))))))

(declare-fun b!3196216 () Bool)

(assert (=> b!3196216 (= e!1992589 e!1992588)))

(declare-fun res!1300461 () Bool)

(assert (=> b!3196216 (=> (not res!1300461) (not e!1992588))))

(declare-fun height!1537 (Conc!10756) Int)

(assert (=> b!3196216 (= res!1300461 (<= (- 1) (- (height!1537 (left!28001 (c!536198 lt!1076809))) (height!1537 (right!28331 (c!536198 lt!1076809))))))))

(declare-fun b!3196217 () Bool)

(declare-fun res!1300459 () Bool)

(assert (=> b!3196217 (=> (not res!1300459) (not e!1992588))))

(assert (=> b!3196217 (= res!1300459 (<= (- (height!1537 (left!28001 (c!536198 lt!1076809))) (height!1537 (right!28331 (c!536198 lt!1076809)))) 1))))

(assert (= (and d!874038 (not res!1300456)) b!3196216))

(assert (= (and b!3196216 res!1300461) b!3196217))

(assert (= (and b!3196217 res!1300459) b!3196212))

(assert (= (and b!3196212 res!1300457) b!3196213))

(assert (= (and b!3196213 res!1300458) b!3196214))

(assert (= (and b!3196214 res!1300460) b!3196215))

(declare-fun m!3456575 () Bool)

(assert (=> b!3196212 m!3456575))

(declare-fun m!3456577 () Bool)

(assert (=> b!3196214 m!3456577))

(declare-fun m!3456579 () Bool)

(assert (=> b!3196213 m!3456579))

(declare-fun m!3456581 () Bool)

(assert (=> b!3196215 m!3456581))

(declare-fun m!3456583 () Bool)

(assert (=> b!3196216 m!3456583))

(declare-fun m!3456585 () Bool)

(assert (=> b!3196216 m!3456585))

(assert (=> b!3196217 m!3456583))

(assert (=> b!3196217 m!3456585))

(assert (=> b!3195613 d!874038))

(declare-fun d!874040 () Bool)

(assert (=> d!874040 (= (isEmpty!20118 lt!1076636) (not ((_ is Some!7070) lt!1076636)))))

(assert (=> d!873498 d!874040))

(assert (=> d!873498 d!873474))

(declare-fun d!874042 () Bool)

(declare-fun lt!1077087 () Int)

(assert (=> d!874042 (= lt!1077087 (size!27136 (list!12803 (_1!20829 lt!1076605))))))

(assert (=> d!874042 (= lt!1077087 (size!27137 (c!536198 (_1!20829 lt!1076605))))))

(assert (=> d!874042 (= (size!27133 (_1!20829 lt!1076605)) lt!1077087)))

(declare-fun bs!540575 () Bool)

(assert (= bs!540575 d!874042))

(assert (=> bs!540575 m!3454975))

(assert (=> bs!540575 m!3454975))

(declare-fun m!3456587 () Bool)

(assert (=> bs!540575 m!3456587))

(declare-fun m!3456589 () Bool)

(assert (=> bs!540575 m!3456589))

(assert (=> d!873480 d!874042))

(declare-fun b!3196278 () Bool)

(declare-fun e!1992626 () tuple2!35390)

(declare-fun lt!1077219 () BalanceConc!21124)

(assert (=> b!3196278 (= e!1992626 (tuple2!35391 (BalanceConc!21127 Empty!10756) lt!1077219))))

(declare-fun lt!1077205 () BalanceConc!21124)

(declare-fun b!3196279 () Bool)

(declare-fun e!1992627 () tuple2!35390)

(declare-datatypes ((tuple2!35402 0))(
  ( (tuple2!35403 (_1!20835 Token!9746) (_2!20835 BalanceConc!21124)) )
))
(declare-datatypes ((Option!7073 0))(
  ( (None!7072) (Some!7072 (v!35592 tuple2!35402)) )
))
(declare-fun lt!1077234 () Option!7073)

(declare-fun append!858 (BalanceConc!21126 Token!9746) BalanceConc!21126)

(assert (=> b!3196279 (= e!1992627 (lexTailRecV2!924 thiss!18206 rules!2135 lt!1076578 lt!1077205 (_2!20835 (v!35592 lt!1077234)) (append!858 (BalanceConc!21127 Empty!10756) (_1!20835 (v!35592 lt!1077234)))))))

(declare-fun lt!1077209 () tuple2!35390)

(declare-fun lexRec!678 (LexerInterface!4779 List!36159 BalanceConc!21124) tuple2!35390)

(assert (=> b!3196279 (= lt!1077209 (lexRec!678 thiss!18206 rules!2135 (_2!20835 (v!35592 lt!1077234))))))

(declare-fun lt!1077216 () List!36157)

(assert (=> b!3196279 (= lt!1077216 (list!12799 (BalanceConc!21125 Empty!10755)))))

(declare-fun lt!1077227 () List!36157)

(assert (=> b!3196279 (= lt!1077227 (list!12799 (charsOf!3206 (_1!20835 (v!35592 lt!1077234)))))))

(declare-fun lt!1077207 () List!36157)

(assert (=> b!3196279 (= lt!1077207 (list!12799 (_2!20835 (v!35592 lt!1077234))))))

(declare-fun lt!1077217 () Unit!50426)

(assert (=> b!3196279 (= lt!1077217 (lemmaConcatAssociativity!1704 lt!1077216 lt!1077227 lt!1077207))))

(assert (=> b!3196279 (= (++!8622 (++!8622 lt!1077216 lt!1077227) lt!1077207) (++!8622 lt!1077216 (++!8622 lt!1077227 lt!1077207)))))

(declare-fun lt!1077228 () Unit!50426)

(assert (=> b!3196279 (= lt!1077228 lt!1077217)))

(declare-fun lt!1077208 () Option!7073)

(declare-fun maxPrefixZipperSequence!1071 (LexerInterface!4779 List!36159 BalanceConc!21124) Option!7073)

(assert (=> b!3196279 (= lt!1077208 (maxPrefixZipperSequence!1071 thiss!18206 rules!2135 lt!1076578))))

(declare-fun c!536517 () Bool)

(assert (=> b!3196279 (= c!536517 ((_ is Some!7072) lt!1077208))))

(declare-fun e!1992624 () tuple2!35390)

(assert (=> b!3196279 (= (lexRec!678 thiss!18206 rules!2135 lt!1076578) e!1992624)))

(declare-fun lt!1077215 () Unit!50426)

(declare-fun Unit!50431 () Unit!50426)

(assert (=> b!3196279 (= lt!1077215 Unit!50431)))

(declare-fun lt!1077218 () List!36158)

(assert (=> b!3196279 (= lt!1077218 (list!12803 (BalanceConc!21127 Empty!10756)))))

(declare-fun lt!1077211 () List!36158)

(assert (=> b!3196279 (= lt!1077211 (Cons!36034 (_1!20835 (v!35592 lt!1077234)) Nil!36034))))

(declare-fun lt!1077206 () List!36158)

(assert (=> b!3196279 (= lt!1077206 (list!12803 (_1!20829 lt!1077209)))))

(declare-fun lt!1077233 () Unit!50426)

(declare-fun lemmaConcatAssociativity!1705 (List!36158 List!36158 List!36158) Unit!50426)

(assert (=> b!3196279 (= lt!1077233 (lemmaConcatAssociativity!1705 lt!1077218 lt!1077211 lt!1077206))))

(declare-fun ++!8625 (List!36158 List!36158) List!36158)

(assert (=> b!3196279 (= (++!8625 (++!8625 lt!1077218 lt!1077211) lt!1077206) (++!8625 lt!1077218 (++!8625 lt!1077211 lt!1077206)))))

(declare-fun lt!1077232 () Unit!50426)

(assert (=> b!3196279 (= lt!1077232 lt!1077233)))

(declare-fun lt!1077236 () List!36157)

(assert (=> b!3196279 (= lt!1077236 (++!8622 (list!12799 (BalanceConc!21125 Empty!10755)) (list!12799 (charsOf!3206 (_1!20835 (v!35592 lt!1077234))))))))

(declare-fun lt!1077235 () List!36157)

(assert (=> b!3196279 (= lt!1077235 (list!12799 (_2!20835 (v!35592 lt!1077234))))))

(declare-fun lt!1077222 () List!36158)

(assert (=> b!3196279 (= lt!1077222 (list!12803 (append!858 (BalanceConc!21127 Empty!10756) (_1!20835 (v!35592 lt!1077234)))))))

(declare-fun lt!1077237 () Unit!50426)

(declare-fun lemmaLexThenLexPrefix!443 (LexerInterface!4779 List!36159 List!36157 List!36157 List!36158 List!36158 List!36157) Unit!50426)

(assert (=> b!3196279 (= lt!1077237 (lemmaLexThenLexPrefix!443 thiss!18206 rules!2135 lt!1077236 lt!1077235 lt!1077222 (list!12803 (_1!20829 lt!1077209)) (list!12799 (_2!20829 lt!1077209))))))

(assert (=> b!3196279 (= (lexList!1304 thiss!18206 rules!2135 lt!1077236) (tuple2!35395 lt!1077222 Nil!36033))))

(declare-fun lt!1077224 () Unit!50426)

(assert (=> b!3196279 (= lt!1077224 lt!1077237)))

(assert (=> b!3196279 (= lt!1077219 (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (_1!20835 (v!35592 lt!1077234)))))))

(declare-fun lt!1077230 () Option!7073)

(assert (=> b!3196279 (= lt!1077230 (maxPrefixZipperSequence!1071 thiss!18206 rules!2135 lt!1077219))))

(declare-fun c!536515 () Bool)

(assert (=> b!3196279 (= c!536515 ((_ is Some!7072) lt!1077230))))

(assert (=> b!3196279 (= (lexRec!678 thiss!18206 rules!2135 (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (_1!20835 (v!35592 lt!1077234))))) e!1992626)))

(declare-fun lt!1077220 () Unit!50426)

(declare-fun Unit!50432 () Unit!50426)

(assert (=> b!3196279 (= lt!1077220 Unit!50432)))

(assert (=> b!3196279 (= lt!1077205 (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (_1!20835 (v!35592 lt!1077234)))))))

(declare-fun lt!1077221 () List!36157)

(assert (=> b!3196279 (= lt!1077221 (list!12799 lt!1077205))))

(declare-fun lt!1077213 () List!36157)

(assert (=> b!3196279 (= lt!1077213 (list!12799 (_2!20835 (v!35592 lt!1077234))))))

(declare-fun lt!1077210 () Unit!50426)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!525 (List!36157 List!36157) Unit!50426)

(assert (=> b!3196279 (= lt!1077210 (lemmaConcatTwoListThenFSndIsSuffix!525 lt!1077221 lt!1077213))))

(declare-fun isSuffix!840 (List!36157 List!36157) Bool)

(assert (=> b!3196279 (isSuffix!840 lt!1077213 (++!8622 lt!1077221 lt!1077213))))

(declare-fun lt!1077212 () Unit!50426)

(assert (=> b!3196279 (= lt!1077212 lt!1077210)))

(declare-fun b!3196280 () Bool)

(assert (=> b!3196280 (= e!1992627 (tuple2!35391 (BalanceConc!21127 Empty!10756) lt!1076578))))

(declare-fun b!3196281 () Bool)

(assert (=> b!3196281 (= e!1992624 (tuple2!35391 (BalanceConc!21127 Empty!10756) lt!1076578))))

(declare-fun b!3196282 () Bool)

(declare-fun lt!1077214 () tuple2!35390)

(assert (=> b!3196282 (= lt!1077214 (lexRec!678 thiss!18206 rules!2135 (_2!20835 (v!35592 lt!1077208))))))

(declare-fun prepend!1166 (BalanceConc!21126 Token!9746) BalanceConc!21126)

(assert (=> b!3196282 (= e!1992624 (tuple2!35391 (prepend!1166 (_1!20829 lt!1077214) (_1!20835 (v!35592 lt!1077208))) (_2!20829 lt!1077214)))))

(declare-fun b!3196283 () Bool)

(declare-fun e!1992625 () Bool)

(declare-fun lt!1077225 () tuple2!35390)

(assert (=> b!3196283 (= e!1992625 (= (list!12799 (_2!20829 lt!1077225)) (list!12799 (_2!20829 (lexRec!678 thiss!18206 rules!2135 lt!1076578)))))))

(declare-fun d!874044 () Bool)

(assert (=> d!874044 e!1992625))

(declare-fun res!1300478 () Bool)

(assert (=> d!874044 (=> (not res!1300478) (not e!1992625))))

(assert (=> d!874044 (= res!1300478 (= (list!12803 (_1!20829 lt!1077225)) (list!12803 (_1!20829 (lexRec!678 thiss!18206 rules!2135 lt!1076578)))))))

(assert (=> d!874044 (= lt!1077225 e!1992627)))

(declare-fun c!536516 () Bool)

(assert (=> d!874044 (= c!536516 ((_ is Some!7072) lt!1077234))))

(declare-fun maxPrefixZipperSequenceV2!465 (LexerInterface!4779 List!36159 BalanceConc!21124 BalanceConc!21124) Option!7073)

(assert (=> d!874044 (= lt!1077234 (maxPrefixZipperSequenceV2!465 thiss!18206 rules!2135 lt!1076578 lt!1076578))))

(declare-fun lt!1077223 () Unit!50426)

(declare-fun lt!1077204 () Unit!50426)

(assert (=> d!874044 (= lt!1077223 lt!1077204)))

(declare-fun lt!1077229 () List!36157)

(declare-fun lt!1077231 () List!36157)

(assert (=> d!874044 (isSuffix!840 lt!1077229 (++!8622 lt!1077231 lt!1077229))))

(assert (=> d!874044 (= lt!1077204 (lemmaConcatTwoListThenFSndIsSuffix!525 lt!1077231 lt!1077229))))

(assert (=> d!874044 (= lt!1077229 (list!12799 lt!1076578))))

(assert (=> d!874044 (= lt!1077231 (list!12799 (BalanceConc!21125 Empty!10755)))))

(assert (=> d!874044 (= (lexTailRecV2!924 thiss!18206 rules!2135 lt!1076578 (BalanceConc!21125 Empty!10755) lt!1076578 (BalanceConc!21127 Empty!10756)) lt!1077225)))

(declare-fun b!3196284 () Bool)

(declare-fun lt!1077226 () tuple2!35390)

(assert (=> b!3196284 (= lt!1077226 (lexRec!678 thiss!18206 rules!2135 (_2!20835 (v!35592 lt!1077230))))))

(assert (=> b!3196284 (= e!1992626 (tuple2!35391 (prepend!1166 (_1!20829 lt!1077226) (_1!20835 (v!35592 lt!1077230))) (_2!20829 lt!1077226)))))

(assert (= (and d!874044 c!536516) b!3196279))

(assert (= (and d!874044 (not c!536516)) b!3196280))

(assert (= (and b!3196279 c!536517) b!3196282))

(assert (= (and b!3196279 (not c!536517)) b!3196281))

(assert (= (and b!3196279 c!536515) b!3196284))

(assert (= (and b!3196279 (not c!536515)) b!3196278))

(assert (= (and d!874044 res!1300478) b!3196283))

(declare-fun m!3456711 () Bool)

(assert (=> b!3196283 m!3456711))

(declare-fun m!3456713 () Bool)

(assert (=> b!3196283 m!3456713))

(declare-fun m!3456715 () Bool)

(assert (=> b!3196283 m!3456715))

(declare-fun m!3456717 () Bool)

(assert (=> b!3196284 m!3456717))

(declare-fun m!3456719 () Bool)

(assert (=> b!3196284 m!3456719))

(declare-fun m!3456721 () Bool)

(assert (=> d!874044 m!3456721))

(assert (=> d!874044 m!3456713))

(assert (=> d!874044 m!3456721))

(declare-fun m!3456723 () Bool)

(assert (=> d!874044 m!3456723))

(declare-fun m!3456725 () Bool)

(assert (=> d!874044 m!3456725))

(declare-fun m!3456727 () Bool)

(assert (=> d!874044 m!3456727))

(declare-fun m!3456729 () Bool)

(assert (=> d!874044 m!3456729))

(assert (=> d!874044 m!3454965))

(declare-fun m!3456731 () Bool)

(assert (=> d!874044 m!3456731))

(assert (=> d!874044 m!3455701))

(declare-fun m!3456733 () Bool)

(assert (=> b!3196282 m!3456733))

(declare-fun m!3456735 () Bool)

(assert (=> b!3196282 m!3456735))

(declare-fun m!3456737 () Bool)

(assert (=> b!3196279 m!3456737))

(declare-fun m!3456739 () Bool)

(assert (=> b!3196279 m!3456739))

(declare-fun m!3456741 () Bool)

(assert (=> b!3196279 m!3456741))

(declare-fun m!3456743 () Bool)

(assert (=> b!3196279 m!3456743))

(declare-fun m!3456745 () Bool)

(assert (=> b!3196279 m!3456745))

(assert (=> b!3196279 m!3456737))

(declare-fun m!3456747 () Bool)

(assert (=> b!3196279 m!3456747))

(declare-fun m!3456749 () Bool)

(assert (=> b!3196279 m!3456749))

(declare-fun m!3456751 () Bool)

(assert (=> b!3196279 m!3456751))

(declare-fun m!3456753 () Bool)

(assert (=> b!3196279 m!3456753))

(declare-fun m!3456755 () Bool)

(assert (=> b!3196279 m!3456755))

(assert (=> b!3196279 m!3455701))

(assert (=> b!3196279 m!3456713))

(declare-fun m!3456757 () Bool)

(assert (=> b!3196279 m!3456757))

(declare-fun m!3456759 () Bool)

(assert (=> b!3196279 m!3456759))

(declare-fun m!3456761 () Bool)

(assert (=> b!3196279 m!3456761))

(assert (=> b!3196279 m!3455701))

(declare-fun m!3456763 () Bool)

(assert (=> b!3196279 m!3456763))

(declare-fun m!3456765 () Bool)

(assert (=> b!3196279 m!3456765))

(declare-fun m!3456767 () Bool)

(assert (=> b!3196279 m!3456767))

(assert (=> b!3196279 m!3456743))

(assert (=> b!3196279 m!3456763))

(declare-fun m!3456769 () Bool)

(assert (=> b!3196279 m!3456769))

(declare-fun m!3456771 () Bool)

(assert (=> b!3196279 m!3456771))

(declare-fun m!3456773 () Bool)

(assert (=> b!3196279 m!3456773))

(declare-fun m!3456775 () Bool)

(assert (=> b!3196279 m!3456775))

(assert (=> b!3196279 m!3456741))

(declare-fun m!3456777 () Bool)

(assert (=> b!3196279 m!3456777))

(assert (=> b!3196279 m!3456769))

(assert (=> b!3196279 m!3456757))

(declare-fun m!3456779 () Bool)

(assert (=> b!3196279 m!3456779))

(assert (=> b!3196279 m!3456773))

(declare-fun m!3456781 () Bool)

(assert (=> b!3196279 m!3456781))

(declare-fun m!3456783 () Bool)

(assert (=> b!3196279 m!3456783))

(declare-fun m!3456785 () Bool)

(assert (=> b!3196279 m!3456785))

(assert (=> b!3196279 m!3456745))

(declare-fun m!3456787 () Bool)

(assert (=> b!3196279 m!3456787))

(declare-fun m!3456789 () Bool)

(assert (=> b!3196279 m!3456789))

(assert (=> b!3196279 m!3456743))

(assert (=> b!3196279 m!3456749))

(declare-fun m!3456791 () Bool)

(assert (=> b!3196279 m!3456791))

(declare-fun m!3456793 () Bool)

(assert (=> b!3196279 m!3456793))

(assert (=> b!3196279 m!3456791))

(declare-fun m!3456795 () Bool)

(assert (=> b!3196279 m!3456795))

(assert (=> b!3196279 m!3456789))

(declare-fun m!3456797 () Bool)

(assert (=> b!3196279 m!3456797))

(assert (=> b!3196279 m!3456737))

(assert (=> d!873480 d!874044))

(declare-fun d!874070 () Bool)

(declare-fun c!536518 () Bool)

(assert (=> d!874070 (= c!536518 ((_ is Nil!36033) lt!1076684))))

(declare-fun e!1992628 () (InoxSet C!20084))

(assert (=> d!874070 (= (content!4864 lt!1076684) e!1992628)))

(declare-fun b!3196285 () Bool)

(assert (=> b!3196285 (= e!1992628 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196286 () Bool)

(assert (=> b!3196286 (= e!1992628 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076684) true) (content!4864 (t!236612 lt!1076684))))))

(assert (= (and d!874070 c!536518) b!3196285))

(assert (= (and d!874070 (not c!536518)) b!3196286))

(declare-fun m!3456799 () Bool)

(assert (=> b!3196286 m!3456799))

(declare-fun m!3456801 () Bool)

(assert (=> b!3196286 m!3456801))

(assert (=> d!873576 d!874070))

(declare-fun d!874072 () Bool)

(declare-fun c!536519 () Bool)

(assert (=> d!874072 (= c!536519 ((_ is Nil!36033) lt!1076577))))

(declare-fun e!1992629 () (InoxSet C!20084))

(assert (=> d!874072 (= (content!4864 lt!1076577) e!1992629)))

(declare-fun b!3196287 () Bool)

(assert (=> b!3196287 (= e!1992629 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196288 () Bool)

(assert (=> b!3196288 (= e!1992629 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076577) true) (content!4864 (t!236612 lt!1076577))))))

(assert (= (and d!874072 c!536519) b!3196287))

(assert (= (and d!874072 (not c!536519)) b!3196288))

(declare-fun m!3456803 () Bool)

(assert (=> b!3196288 m!3456803))

(assert (=> b!3196288 m!3456067))

(assert (=> d!873576 d!874072))

(declare-fun d!874074 () Bool)

(declare-fun c!536520 () Bool)

(assert (=> d!874074 (= c!536520 ((_ is Nil!36033) lt!1076592))))

(declare-fun e!1992630 () (InoxSet C!20084))

(assert (=> d!874074 (= (content!4864 lt!1076592) e!1992630)))

(declare-fun b!3196289 () Bool)

(assert (=> b!3196289 (= e!1992630 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196290 () Bool)

(assert (=> b!3196290 (= e!1992630 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076592) true) (content!4864 (t!236612 lt!1076592))))))

(assert (= (and d!874074 c!536520) b!3196289))

(assert (= (and d!874074 (not c!536520)) b!3196290))

(declare-fun m!3456805 () Bool)

(assert (=> b!3196290 m!3456805))

(declare-fun m!3456807 () Bool)

(assert (=> b!3196290 m!3456807))

(assert (=> d!873576 d!874074))

(assert (=> b!3195549 d!873844))

(declare-fun bs!540582 () Bool)

(declare-fun d!874076 () Bool)

(assert (= bs!540582 (and d!874076 d!873982)))

(declare-fun lambda!117016 () Int)

(assert (=> bs!540582 (= (and (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))))) (= lambda!117016 lambda!117015))))

(assert (=> d!874076 true))

(assert (=> d!874076 (< (dynLambda!14508 order!18313 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (dynLambda!14512 order!18319 lambda!117016))))

(assert (=> d!874076 true))

(assert (=> d!874076 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (dynLambda!14512 order!18319 lambda!117016))))

(assert (=> d!874076 (= (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (Forall!1259 lambda!117016))))

(declare-fun bs!540583 () Bool)

(assert (= bs!540583 d!874076))

(declare-fun m!3456809 () Bool)

(assert (=> bs!540583 m!3456809))

(assert (=> d!873570 d!874076))

(declare-fun d!874078 () Bool)

(declare-fun c!536521 () Bool)

(assert (=> d!874078 (= c!536521 ((_ is Nil!36033) lt!1076756))))

(declare-fun e!1992631 () (InoxSet C!20084))

(assert (=> d!874078 (= (content!4864 lt!1076756) e!1992631)))

(declare-fun b!3196291 () Bool)

(assert (=> b!3196291 (= e!1992631 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196292 () Bool)

(assert (=> b!3196292 (= e!1992631 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076756) true) (content!4864 (t!236612 lt!1076756))))))

(assert (= (and d!874078 c!536521) b!3196291))

(assert (= (and d!874078 (not c!536521)) b!3196292))

(declare-fun m!3456811 () Bool)

(assert (=> b!3196292 m!3456811))

(declare-fun m!3456813 () Bool)

(assert (=> b!3196292 m!3456813))

(assert (=> d!873662 d!874078))

(assert (=> d!873662 d!874072))

(declare-fun d!874080 () Bool)

(declare-fun c!536522 () Bool)

(assert (=> d!874080 (= c!536522 ((_ is Nil!36033) lt!1076594))))

(declare-fun e!1992632 () (InoxSet C!20084))

(assert (=> d!874080 (= (content!4864 lt!1076594) e!1992632)))

(declare-fun b!3196293 () Bool)

(assert (=> b!3196293 (= e!1992632 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196294 () Bool)

(assert (=> b!3196294 (= e!1992632 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076594) true) (content!4864 (t!236612 lt!1076594))))))

(assert (= (and d!874080 c!536522) b!3196293))

(assert (= (and d!874080 (not c!536522)) b!3196294))

(declare-fun m!3456815 () Bool)

(assert (=> b!3196294 m!3456815))

(declare-fun m!3456817 () Bool)

(assert (=> b!3196294 m!3456817))

(assert (=> d!873662 d!874080))

(declare-fun d!874082 () Bool)

(assert (=> d!874082 (= (isEmpty!20118 lt!1076582) (not ((_ is Some!7070) lt!1076582)))))

(assert (=> d!873486 d!874082))

(declare-fun d!874084 () Bool)

(assert (=> d!874084 (= (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))) (v!35582 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))))))

(assert (=> b!3195103 d!874084))

(assert (=> b!3195103 d!873498))

(declare-fun d!874086 () Bool)

(declare-fun e!1992635 () Bool)

(assert (=> d!874086 e!1992635))

(declare-fun c!536525 () Bool)

(assert (=> d!874086 (= c!536525 ((_ is EmptyExpr!9949) (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))))))))

(declare-fun lt!1077238 () Bool)

(declare-fun e!1992639 () Bool)

(assert (=> d!874086 (= lt!1077238 e!1992639)))

(declare-fun c!536524 () Bool)

(assert (=> d!874086 (= c!536524 (isEmpty!20115 (list!12799 (charsOf!3206 separatorToken!241))))))

(assert (=> d!874086 (validRegex!4542 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))))))

(assert (=> d!874086 (= (matchR!4583 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))) (list!12799 (charsOf!3206 separatorToken!241))) lt!1077238)))

(declare-fun b!3196295 () Bool)

(declare-fun e!1992637 () Bool)

(assert (=> b!3196295 (= e!1992635 e!1992637)))

(declare-fun c!536523 () Bool)

(assert (=> b!3196295 (= c!536523 ((_ is EmptyLang!9949) (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))))))))

(declare-fun b!3196296 () Bool)

(assert (=> b!3196296 (= e!1992639 (nullable!3390 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))))))))

(declare-fun b!3196297 () Bool)

(assert (=> b!3196297 (= e!1992639 (matchR!4583 (derivativeStep!2943 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))) (head!7002 (list!12799 (charsOf!3206 separatorToken!241)))) (tail!5196 (list!12799 (charsOf!3206 separatorToken!241)))))))

(declare-fun b!3196298 () Bool)

(declare-fun e!1992636 () Bool)

(assert (=> b!3196298 (= e!1992636 (= (head!7002 (list!12799 (charsOf!3206 separatorToken!241))) (c!536196 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))))))))

(declare-fun bm!231510 () Bool)

(declare-fun call!231515 () Bool)

(assert (=> bm!231510 (= call!231515 (isEmpty!20115 (list!12799 (charsOf!3206 separatorToken!241))))))

(declare-fun b!3196299 () Bool)

(declare-fun res!1300482 () Bool)

(declare-fun e!1992633 () Bool)

(assert (=> b!3196299 (=> res!1300482 e!1992633)))

(assert (=> b!3196299 (= res!1300482 (not ((_ is ElementMatch!9949) (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241))))))))))

(assert (=> b!3196299 (= e!1992637 e!1992633)))

(declare-fun b!3196300 () Bool)

(assert (=> b!3196300 (= e!1992635 (= lt!1077238 call!231515))))

(declare-fun b!3196301 () Bool)

(declare-fun res!1300484 () Bool)

(assert (=> b!3196301 (=> res!1300484 e!1992633)))

(assert (=> b!3196301 (= res!1300484 e!1992636)))

(declare-fun res!1300480 () Bool)

(assert (=> b!3196301 (=> (not res!1300480) (not e!1992636))))

(assert (=> b!3196301 (= res!1300480 lt!1077238)))

(declare-fun b!3196302 () Bool)

(assert (=> b!3196302 (= e!1992637 (not lt!1077238))))

(declare-fun b!3196303 () Bool)

(declare-fun e!1992634 () Bool)

(declare-fun e!1992638 () Bool)

(assert (=> b!3196303 (= e!1992634 e!1992638)))

(declare-fun res!1300486 () Bool)

(assert (=> b!3196303 (=> res!1300486 e!1992638)))

(assert (=> b!3196303 (= res!1300486 call!231515)))

(declare-fun b!3196304 () Bool)

(declare-fun res!1300481 () Bool)

(assert (=> b!3196304 (=> (not res!1300481) (not e!1992636))))

(assert (=> b!3196304 (= res!1300481 (isEmpty!20115 (tail!5196 (list!12799 (charsOf!3206 separatorToken!241)))))))

(declare-fun b!3196305 () Bool)

(declare-fun res!1300485 () Bool)

(assert (=> b!3196305 (=> (not res!1300485) (not e!1992636))))

(assert (=> b!3196305 (= res!1300485 (not call!231515))))

(declare-fun b!3196306 () Bool)

(assert (=> b!3196306 (= e!1992638 (not (= (head!7002 (list!12799 (charsOf!3206 separatorToken!241))) (c!536196 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 separatorToken!241)))))))))))

(declare-fun b!3196307 () Bool)

(declare-fun res!1300479 () Bool)

(assert (=> b!3196307 (=> res!1300479 e!1992638)))

(assert (=> b!3196307 (= res!1300479 (not (isEmpty!20115 (tail!5196 (list!12799 (charsOf!3206 separatorToken!241))))))))

(declare-fun b!3196308 () Bool)

(assert (=> b!3196308 (= e!1992633 e!1992634)))

(declare-fun res!1300483 () Bool)

(assert (=> b!3196308 (=> (not res!1300483) (not e!1992634))))

(assert (=> b!3196308 (= res!1300483 (not lt!1077238))))

(assert (= (and d!874086 c!536524) b!3196296))

(assert (= (and d!874086 (not c!536524)) b!3196297))

(assert (= (and d!874086 c!536525) b!3196300))

(assert (= (and d!874086 (not c!536525)) b!3196295))

(assert (= (and b!3196295 c!536523) b!3196302))

(assert (= (and b!3196295 (not c!536523)) b!3196299))

(assert (= (and b!3196299 (not res!1300482)) b!3196301))

(assert (= (and b!3196301 res!1300480) b!3196305))

(assert (= (and b!3196305 res!1300485) b!3196304))

(assert (= (and b!3196304 res!1300481) b!3196298))

(assert (= (and b!3196301 (not res!1300484)) b!3196308))

(assert (= (and b!3196308 res!1300483) b!3196303))

(assert (= (and b!3196303 (not res!1300486)) b!3196307))

(assert (= (and b!3196307 (not res!1300479)) b!3196306))

(assert (= (or b!3196300 b!3196303 b!3196305) bm!231510))

(assert (=> b!3196306 m!3454823))

(declare-fun m!3456819 () Bool)

(assert (=> b!3196306 m!3456819))

(assert (=> b!3196298 m!3454823))

(assert (=> b!3196298 m!3456819))

(assert (=> b!3196297 m!3454823))

(assert (=> b!3196297 m!3456819))

(assert (=> b!3196297 m!3456819))

(declare-fun m!3456821 () Bool)

(assert (=> b!3196297 m!3456821))

(assert (=> b!3196297 m!3454823))

(declare-fun m!3456823 () Bool)

(assert (=> b!3196297 m!3456823))

(assert (=> b!3196297 m!3456821))

(assert (=> b!3196297 m!3456823))

(declare-fun m!3456825 () Bool)

(assert (=> b!3196297 m!3456825))

(declare-fun m!3456827 () Bool)

(assert (=> b!3196296 m!3456827))

(assert (=> b!3196304 m!3454823))

(assert (=> b!3196304 m!3456823))

(assert (=> b!3196304 m!3456823))

(declare-fun m!3456829 () Bool)

(assert (=> b!3196304 m!3456829))

(assert (=> b!3196307 m!3454823))

(assert (=> b!3196307 m!3456823))

(assert (=> b!3196307 m!3456823))

(assert (=> b!3196307 m!3456829))

(assert (=> d!874086 m!3454823))

(declare-fun m!3456831 () Bool)

(assert (=> d!874086 m!3456831))

(declare-fun m!3456833 () Bool)

(assert (=> d!874086 m!3456833))

(assert (=> bm!231510 m!3454823))

(assert (=> bm!231510 m!3456831))

(assert (=> b!3195103 d!874086))

(assert (=> b!3195103 d!873520))

(assert (=> b!3195103 d!873530))

(declare-fun d!874088 () Bool)

(declare-fun lt!1077239 () BalanceConc!21124)

(assert (=> d!874088 (= (list!12799 lt!1077239) (originalCharacters!5904 (h!41454 (t!236613 (t!236613 tokens!494)))))))

(assert (=> d!874088 (= lt!1077239 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (value!168375 (h!41454 (t!236613 (t!236613 tokens!494))))))))

(assert (=> d!874088 (= (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494)))) lt!1077239)))

(declare-fun b_lambda!87245 () Bool)

(assert (=> (not b_lambda!87245) (not d!874088)))

(declare-fun t!236778 () Bool)

(declare-fun tb!156255 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494))))))) t!236778) tb!156255))

(declare-fun b!3196309 () Bool)

(declare-fun e!1992640 () Bool)

(declare-fun tp!1010621 () Bool)

(assert (=> b!3196309 (= e!1992640 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (value!168375 (h!41454 (t!236613 (t!236613 tokens!494))))))) tp!1010621))))

(declare-fun result!198508 () Bool)

(assert (=> tb!156255 (= result!198508 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (value!168375 (h!41454 (t!236613 (t!236613 tokens!494)))))) e!1992640))))

(assert (= tb!156255 b!3196309))

(declare-fun m!3456835 () Bool)

(assert (=> b!3196309 m!3456835))

(declare-fun m!3456837 () Bool)

(assert (=> tb!156255 m!3456837))

(assert (=> d!874088 t!236778))

(declare-fun b_and!212187 () Bool)

(assert (= b_and!212181 (and (=> t!236778 result!198508) b_and!212187)))

(declare-fun t!236780 () Bool)

(declare-fun tb!156257 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494))))))) t!236780) tb!156257))

(declare-fun result!198510 () Bool)

(assert (= result!198510 result!198508))

(assert (=> d!874088 t!236780))

(declare-fun b_and!212189 () Bool)

(assert (= b_and!212177 (and (=> t!236780 result!198510) b_and!212189)))

(declare-fun t!236782 () Bool)

(declare-fun tb!156259 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494))))))) t!236782) tb!156259))

(declare-fun result!198512 () Bool)

(assert (= result!198512 result!198508))

(assert (=> d!874088 t!236782))

(declare-fun b_and!212191 () Bool)

(assert (= b_and!212179 (and (=> t!236782 result!198512) b_and!212191)))

(declare-fun t!236784 () Bool)

(declare-fun tb!156261 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494))))))) t!236784) tb!156261))

(declare-fun result!198514 () Bool)

(assert (= result!198514 result!198508))

(assert (=> d!874088 t!236784))

(declare-fun b_and!212193 () Bool)

(assert (= b_and!212183 (and (=> t!236784 result!198514) b_and!212193)))

(declare-fun t!236786 () Bool)

(declare-fun tb!156263 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494))))))) t!236786) tb!156263))

(declare-fun result!198516 () Bool)

(assert (= result!198516 result!198508))

(assert (=> d!874088 t!236786))

(declare-fun b_and!212195 () Bool)

(assert (= b_and!212185 (and (=> t!236786 result!198516) b_and!212195)))

(declare-fun m!3456839 () Bool)

(assert (=> d!874088 m!3456839))

(declare-fun m!3456841 () Bool)

(assert (=> d!874088 m!3456841))

(assert (=> b!3195149 d!874088))

(declare-fun d!874090 () Bool)

(assert (=> d!874090 (= (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12801 (c!536197 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494)))))))))

(declare-fun bs!540584 () Bool)

(assert (= bs!540584 d!874090))

(declare-fun m!3456843 () Bool)

(assert (=> bs!540584 m!3456843))

(assert (=> b!3195149 d!874090))

(declare-fun d!874092 () Bool)

(declare-fun c!536526 () Bool)

(assert (=> d!874092 (= c!536526 ((_ is Cons!36034) (t!236613 (t!236613 (t!236613 tokens!494)))))))

(declare-fun e!1992641 () List!36157)

(assert (=> d!874092 (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241) e!1992641)))

(declare-fun b!3196310 () Bool)

(assert (=> b!3196310 (= e!1992641 (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 (t!236613 tokens!494)))))) (list!12799 (charsOf!3206 separatorToken!241))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 (t!236613 tokens!494)))) separatorToken!241)))))

(declare-fun b!3196311 () Bool)

(assert (=> b!3196311 (= e!1992641 Nil!36033)))

(assert (= (and d!874092 c!536526) b!3196310))

(assert (= (and d!874092 (not c!536526)) b!3196311))

(declare-fun m!3456845 () Bool)

(assert (=> b!3196310 m!3456845))

(assert (=> b!3196310 m!3454823))

(declare-fun m!3456847 () Bool)

(assert (=> b!3196310 m!3456847))

(assert (=> b!3196310 m!3454813))

(declare-fun m!3456849 () Bool)

(assert (=> b!3196310 m!3456849))

(declare-fun m!3456851 () Bool)

(assert (=> b!3196310 m!3456851))

(assert (=> b!3196310 m!3456845))

(assert (=> b!3196310 m!3456851))

(assert (=> b!3196310 m!3454813))

(assert (=> b!3196310 m!3454823))

(assert (=> b!3196310 m!3456847))

(assert (=> b!3196310 m!3456849))

(declare-fun m!3456853 () Bool)

(assert (=> b!3196310 m!3456853))

(assert (=> b!3195149 d!874092))

(declare-fun b!3196312 () Bool)

(declare-fun e!1992643 () List!36157)

(assert (=> b!3196312 (= e!1992643 (list!12799 (charsOf!3206 separatorToken!241)))))

(declare-fun e!1992642 () Bool)

(declare-fun b!3196315 () Bool)

(declare-fun lt!1077240 () List!36157)

(assert (=> b!3196315 (= e!1992642 (or (not (= (list!12799 (charsOf!3206 separatorToken!241)) Nil!36033)) (= lt!1077240 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))))))))

(declare-fun b!3196314 () Bool)

(declare-fun res!1300488 () Bool)

(assert (=> b!3196314 (=> (not res!1300488) (not e!1992642))))

(assert (=> b!3196314 (= res!1300488 (= (size!27131 lt!1077240) (+ (size!27131 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494)))))) (size!27131 (list!12799 (charsOf!3206 separatorToken!241))))))))

(declare-fun d!874094 () Bool)

(assert (=> d!874094 e!1992642))

(declare-fun res!1300487 () Bool)

(assert (=> d!874094 (=> (not res!1300487) (not e!1992642))))

(assert (=> d!874094 (= res!1300487 (= (content!4864 lt!1077240) ((_ map or) (content!4864 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494)))))) (content!4864 (list!12799 (charsOf!3206 separatorToken!241))))))))

(assert (=> d!874094 (= lt!1077240 e!1992643)))

(declare-fun c!536527 () Bool)

(assert (=> d!874094 (= c!536527 ((_ is Nil!36033) (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494)))))))))

(assert (=> d!874094 (= (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241))) lt!1077240)))

(declare-fun b!3196313 () Bool)

(assert (=> b!3196313 (= e!1992643 (Cons!36033 (h!41453 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494)))))) (++!8622 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494)))))) (list!12799 (charsOf!3206 separatorToken!241)))))))

(assert (= (and d!874094 c!536527) b!3196312))

(assert (= (and d!874094 (not c!536527)) b!3196313))

(assert (= (and d!874094 res!1300487) b!3196314))

(assert (= (and b!3196314 res!1300488) b!3196315))

(declare-fun m!3456855 () Bool)

(assert (=> b!3196314 m!3456855))

(assert (=> b!3196314 m!3455143))

(declare-fun m!3456857 () Bool)

(assert (=> b!3196314 m!3456857))

(assert (=> b!3196314 m!3454823))

(assert (=> b!3196314 m!3455989))

(declare-fun m!3456859 () Bool)

(assert (=> d!874094 m!3456859))

(assert (=> d!874094 m!3455143))

(declare-fun m!3456861 () Bool)

(assert (=> d!874094 m!3456861))

(assert (=> d!874094 m!3454823))

(assert (=> d!874094 m!3455995))

(assert (=> b!3196313 m!3454823))

(declare-fun m!3456863 () Bool)

(assert (=> b!3196313 m!3456863))

(assert (=> b!3195149 d!874094))

(assert (=> b!3195149 d!873520))

(assert (=> b!3195149 d!873530))

(declare-fun e!1992645 () List!36157)

(declare-fun b!3196316 () Bool)

(assert (=> b!3196316 (= e!1992645 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241))))

(declare-fun lt!1077241 () List!36157)

(declare-fun e!1992644 () Bool)

(declare-fun b!3196319 () Bool)

(assert (=> b!3196319 (= e!1992644 (or (not (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241) Nil!36033)) (= lt!1077241 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241))))))))

(declare-fun b!3196318 () Bool)

(declare-fun res!1300490 () Bool)

(assert (=> b!3196318 (=> (not res!1300490) (not e!1992644))))

(assert (=> b!3196318 (= res!1300490 (= (size!27131 lt!1077241) (+ (size!27131 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241)))) (size!27131 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241)))))))

(declare-fun d!874096 () Bool)

(assert (=> d!874096 e!1992644))

(declare-fun res!1300489 () Bool)

(assert (=> d!874096 (=> (not res!1300489) (not e!1992644))))

(assert (=> d!874096 (= res!1300489 (= (content!4864 lt!1077241) ((_ map or) (content!4864 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241)))) (content!4864 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241)))))))

(assert (=> d!874096 (= lt!1077241 e!1992645)))

(declare-fun c!536528 () Bool)

(assert (=> d!874096 (= c!536528 ((_ is Nil!36033) (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241)))))))

(assert (=> d!874096 (= (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241)) lt!1077241)))

(declare-fun b!3196317 () Bool)

(assert (=> b!3196317 (= e!1992645 (Cons!36033 (h!41453 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241)))) (++!8622 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241)))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 (t!236613 tokens!494))) separatorToken!241))))))

(assert (= (and d!874096 c!536528) b!3196316))

(assert (= (and d!874096 (not c!536528)) b!3196317))

(assert (= (and d!874096 res!1300489) b!3196318))

(assert (= (and b!3196318 res!1300490) b!3196319))

(declare-fun m!3456865 () Bool)

(assert (=> b!3196318 m!3456865))

(assert (=> b!3196318 m!3455145))

(declare-fun m!3456867 () Bool)

(assert (=> b!3196318 m!3456867))

(assert (=> b!3196318 m!3455147))

(declare-fun m!3456869 () Bool)

(assert (=> b!3196318 m!3456869))

(declare-fun m!3456871 () Bool)

(assert (=> d!874096 m!3456871))

(assert (=> d!874096 m!3455145))

(declare-fun m!3456873 () Bool)

(assert (=> d!874096 m!3456873))

(assert (=> d!874096 m!3455147))

(declare-fun m!3456875 () Bool)

(assert (=> d!874096 m!3456875))

(assert (=> b!3196317 m!3455147))

(declare-fun m!3456877 () Bool)

(assert (=> b!3196317 m!3456877))

(assert (=> b!3195149 d!874096))

(declare-fun d!874098 () Bool)

(declare-fun c!536529 () Bool)

(assert (=> d!874098 (= c!536529 ((_ is Nil!36033) lt!1076652))))

(declare-fun e!1992646 () (InoxSet C!20084))

(assert (=> d!874098 (= (content!4864 lt!1076652) e!1992646)))

(declare-fun b!3196320 () Bool)

(assert (=> b!3196320 (= e!1992646 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196321 () Bool)

(assert (=> b!3196321 (= e!1992646 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076652) true) (content!4864 (t!236612 lt!1076652))))))

(assert (= (and d!874098 c!536529) b!3196320))

(assert (= (and d!874098 (not c!536529)) b!3196321))

(declare-fun m!3456879 () Bool)

(assert (=> b!3196321 m!3456879))

(declare-fun m!3456881 () Bool)

(assert (=> b!3196321 m!3456881))

(assert (=> d!873524 d!874098))

(declare-fun d!874100 () Bool)

(declare-fun c!536530 () Bool)

(assert (=> d!874100 (= c!536530 ((_ is Nil!36033) (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))

(declare-fun e!1992647 () (InoxSet C!20084))

(assert (=> d!874100 (= (content!4864 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) e!1992647)))

(declare-fun b!3196322 () Bool)

(assert (=> b!3196322 (= e!1992647 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3196323 () Bool)

(assert (=> b!3196323 (= e!1992647 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) true) (content!4864 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))))

(assert (= (and d!874100 c!536530) b!3196322))

(assert (= (and d!874100 (not c!536530)) b!3196323))

(declare-fun m!3456883 () Bool)

(assert (=> b!3196323 m!3456883))

(declare-fun m!3456885 () Bool)

(assert (=> b!3196323 m!3456885))

(assert (=> d!873524 d!874100))

(assert (=> d!873524 d!874080))

(declare-fun bs!540588 () Bool)

(declare-fun d!874102 () Bool)

(assert (= bs!540588 (and d!874102 b!3194959)))

(declare-fun lambda!117019 () Int)

(assert (=> bs!540588 (not (= lambda!117019 lambda!116989))))

(declare-fun bs!540589 () Bool)

(assert (= bs!540589 (and d!874102 d!873580)))

(assert (=> bs!540589 (= lambda!117019 lambda!116999)))

(declare-fun b!3196432 () Bool)

(declare-fun e!1992712 () Bool)

(assert (=> b!3196432 (= e!1992712 true)))

(declare-fun b!3196431 () Bool)

(declare-fun e!1992711 () Bool)

(assert (=> b!3196431 (= e!1992711 e!1992712)))

(declare-fun b!3196430 () Bool)

(declare-fun e!1992710 () Bool)

(assert (=> b!3196430 (= e!1992710 e!1992711)))

(assert (=> d!874102 e!1992710))

(assert (= b!3196431 b!3196432))

(assert (= b!3196430 b!3196431))

(assert (= (and d!874102 ((_ is Cons!36035) rules!2135)) b!3196430))

(assert (=> b!3196432 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (h!41455 rules!2135)))) (dynLambda!14507 order!18311 lambda!117019))))

(assert (=> b!3196432 (< (dynLambda!14508 order!18313 (toChars!7117 (transformation!5190 (h!41455 rules!2135)))) (dynLambda!14507 order!18311 lambda!117019))))

(assert (=> d!874102 true))

(declare-fun lt!1077376 () Bool)

(assert (=> d!874102 (= lt!1077376 (forall!7330 (list!12803 (seqFromList!3451 tokens!494)) lambda!117019))))

(declare-fun e!1992708 () Bool)

(assert (=> d!874102 (= lt!1077376 e!1992708)))

(declare-fun res!1300525 () Bool)

(assert (=> d!874102 (=> res!1300525 e!1992708)))

(assert (=> d!874102 (= res!1300525 (not ((_ is Cons!36034) (list!12803 (seqFromList!3451 tokens!494)))))))

(assert (=> d!874102 (not (isEmpty!20112 rules!2135))))

(assert (=> d!874102 (= (rulesProduceEachTokenIndividuallyList!1717 thiss!18206 rules!2135 (list!12803 (seqFromList!3451 tokens!494))) lt!1077376)))

(declare-fun b!3196428 () Bool)

(declare-fun e!1992709 () Bool)

(assert (=> b!3196428 (= e!1992708 e!1992709)))

(declare-fun res!1300524 () Bool)

(assert (=> b!3196428 (=> (not res!1300524) (not e!1992709))))

(assert (=> b!3196428 (= res!1300524 (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 (h!41454 (list!12803 (seqFromList!3451 tokens!494)))))))

(declare-fun b!3196429 () Bool)

(assert (=> b!3196429 (= e!1992709 (rulesProduceEachTokenIndividuallyList!1717 thiss!18206 rules!2135 (t!236613 (list!12803 (seqFromList!3451 tokens!494)))))))

(assert (= (and d!874102 (not res!1300525)) b!3196428))

(assert (= (and b!3196428 res!1300524) b!3196429))

(assert (=> d!874102 m!3455599))

(declare-fun m!3457079 () Bool)

(assert (=> d!874102 m!3457079))

(assert (=> d!874102 m!3454917))

(declare-fun m!3457081 () Bool)

(assert (=> b!3196428 m!3457081))

(declare-fun m!3457083 () Bool)

(assert (=> b!3196429 m!3457083))

(assert (=> b!3195473 d!874102))

(declare-fun d!874132 () Bool)

(assert (=> d!874132 (= (list!12803 (seqFromList!3451 tokens!494)) (list!12804 (c!536198 (seqFromList!3451 tokens!494))))))

(declare-fun bs!540590 () Bool)

(assert (= bs!540590 d!874132))

(declare-fun m!3457085 () Bool)

(assert (=> bs!540590 m!3457085))

(assert (=> b!3195473 d!874132))

(declare-fun d!874134 () Bool)

(declare-fun lt!1077379 () Bool)

(assert (=> d!874134 (= lt!1077379 (isEmpty!20115 (list!12799 (_2!20829 lt!1076682))))))

(assert (=> d!874134 (= lt!1077379 (isEmpty!20127 (c!536197 (_2!20829 lt!1076682))))))

(assert (=> d!874134 (= (isEmpty!20123 (_2!20829 lt!1076682)) lt!1077379)))

(declare-fun bs!540591 () Bool)

(assert (= bs!540591 d!874134))

(declare-fun m!3457087 () Bool)

(assert (=> bs!540591 m!3457087))

(assert (=> bs!540591 m!3457087))

(declare-fun m!3457089 () Bool)

(assert (=> bs!540591 m!3457089))

(declare-fun m!3457091 () Bool)

(assert (=> bs!540591 m!3457091))

(assert (=> b!3195257 d!874134))

(declare-fun d!874136 () Bool)

(declare-fun lt!1077381 () BalanceConc!21124)

(assert (=> d!874136 (= (list!12799 lt!1077381) (originalCharacters!5904 (apply!8117 lt!1076571 0)))))

(assert (=> d!874136 (= lt!1077381 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0)))) (value!168375 (apply!8117 lt!1076571 0))))))

(assert (=> d!874136 (= (charsOf!3206 (apply!8117 lt!1076571 0)) lt!1077381)))

(declare-fun b_lambda!87249 () Bool)

(assert (=> (not b_lambda!87249) (not d!874136)))

(declare-fun tb!156275 () Bool)

(declare-fun t!236800 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0))))) t!236800) tb!156275))

(declare-fun b!3196445 () Bool)

(declare-fun e!1992721 () Bool)

(declare-fun tp!1010623 () Bool)

(assert (=> b!3196445 (= e!1992721 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0)))) (value!168375 (apply!8117 lt!1076571 0))))) tp!1010623))))

(declare-fun result!198528 () Bool)

(assert (=> tb!156275 (= result!198528 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0)))) (value!168375 (apply!8117 lt!1076571 0)))) e!1992721))))

(assert (= tb!156275 b!3196445))

(declare-fun m!3457095 () Bool)

(assert (=> b!3196445 m!3457095))

(declare-fun m!3457097 () Bool)

(assert (=> tb!156275 m!3457097))

(assert (=> d!874136 t!236800))

(declare-fun b_and!212207 () Bool)

(assert (= b_and!212189 (and (=> t!236800 result!198528) b_and!212207)))

(declare-fun t!236802 () Bool)

(declare-fun tb!156277 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0))))) t!236802) tb!156277))

(declare-fun result!198530 () Bool)

(assert (= result!198530 result!198528))

(assert (=> d!874136 t!236802))

(declare-fun b_and!212209 () Bool)

(assert (= b_and!212193 (and (=> t!236802 result!198530) b_and!212209)))

(declare-fun t!236804 () Bool)

(declare-fun tb!156279 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0))))) t!236804) tb!156279))

(declare-fun result!198532 () Bool)

(assert (= result!198532 result!198528))

(assert (=> d!874136 t!236804))

(declare-fun b_and!212211 () Bool)

(assert (= b_and!212187 (and (=> t!236804 result!198532) b_and!212211)))

(declare-fun tb!156281 () Bool)

(declare-fun t!236806 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0))))) t!236806) tb!156281))

(declare-fun result!198534 () Bool)

(assert (= result!198534 result!198528))

(assert (=> d!874136 t!236806))

(declare-fun b_and!212213 () Bool)

(assert (= b_and!212195 (and (=> t!236806 result!198534) b_and!212213)))

(declare-fun tb!156283 () Bool)

(declare-fun t!236808 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0))))) t!236808) tb!156283))

(declare-fun result!198536 () Bool)

(assert (= result!198536 result!198528))

(assert (=> d!874136 t!236808))

(declare-fun b_and!212215 () Bool)

(assert (= b_and!212191 (and (=> t!236808 result!198536) b_and!212215)))

(declare-fun m!3457107 () Bool)

(assert (=> d!874136 m!3457107))

(declare-fun m!3457109 () Bool)

(assert (=> d!874136 m!3457109))

(assert (=> b!3195551 d!874136))

(declare-fun b!3196496 () Bool)

(declare-fun e!1992750 () List!36158)

(assert (=> b!3196496 (= e!1992750 Nil!36034)))

(declare-fun b!3196497 () Bool)

(declare-fun e!1992752 () Int)

(assert (=> b!3196497 (= e!1992752 0)))

(declare-fun b!3196498 () Bool)

(declare-fun call!231528 () Int)

(assert (=> b!3196498 (= e!1992752 (- call!231528 0))))

(declare-fun b!3196499 () Bool)

(declare-fun e!1992751 () List!36158)

(assert (=> b!3196499 (= e!1992750 e!1992751)))

(declare-fun c!536592 () Bool)

(assert (=> b!3196499 (= c!536592 (<= 0 0))))

(declare-fun b!3196500 () Bool)

(declare-fun e!1992754 () Bool)

(declare-fun lt!1077391 () List!36158)

(declare-fun e!1992753 () Int)

(assert (=> b!3196500 (= e!1992754 (= (size!27136 lt!1077391) e!1992753))))

(declare-fun c!536590 () Bool)

(assert (=> b!3196500 (= c!536590 (<= 0 0))))

(declare-fun b!3196501 () Bool)

(assert (=> b!3196501 (= e!1992751 (drop!1853 (t!236613 lt!1076794) (- 0 1)))))

(declare-fun b!3196502 () Bool)

(assert (=> b!3196502 (= e!1992753 e!1992752)))

(declare-fun c!536593 () Bool)

(assert (=> b!3196502 (= c!536593 (>= 0 call!231528))))

(declare-fun bm!231523 () Bool)

(assert (=> bm!231523 (= call!231528 (size!27136 lt!1076794))))

(declare-fun d!874142 () Bool)

(assert (=> d!874142 e!1992754))

(declare-fun res!1300546 () Bool)

(assert (=> d!874142 (=> (not res!1300546) (not e!1992754))))

(assert (=> d!874142 (= res!1300546 (= ((_ map implies) (content!4865 lt!1077391) (content!4865 lt!1076794)) ((as const (InoxSet Token!9746)) true)))))

(assert (=> d!874142 (= lt!1077391 e!1992750)))

(declare-fun c!536591 () Bool)

(assert (=> d!874142 (= c!536591 ((_ is Nil!36034) lt!1076794))))

(assert (=> d!874142 (= (drop!1853 lt!1076794 0) lt!1077391)))

(declare-fun b!3196503 () Bool)

(assert (=> b!3196503 (= e!1992753 call!231528)))

(declare-fun b!3196504 () Bool)

(assert (=> b!3196504 (= e!1992751 lt!1076794)))

(assert (= (and d!874142 c!536591) b!3196496))

(assert (= (and d!874142 (not c!536591)) b!3196499))

(assert (= (and b!3196499 c!536592) b!3196504))

(assert (= (and b!3196499 (not c!536592)) b!3196501))

(assert (= (and d!874142 res!1300546) b!3196500))

(assert (= (and b!3196500 c!536590) b!3196503))

(assert (= (and b!3196500 (not c!536590)) b!3196502))

(assert (= (and b!3196502 c!536593) b!3196497))

(assert (= (and b!3196502 (not c!536593)) b!3196498))

(assert (= (or b!3196503 b!3196502 b!3196498) bm!231523))

(declare-fun m!3457153 () Bool)

(assert (=> b!3196500 m!3457153))

(declare-fun m!3457155 () Bool)

(assert (=> b!3196501 m!3457155))

(declare-fun m!3457157 () Bool)

(assert (=> bm!231523 m!3457157))

(declare-fun m!3457159 () Bool)

(assert (=> d!874142 m!3457159))

(declare-fun m!3457161 () Bool)

(assert (=> d!874142 m!3457161))

(assert (=> b!3195551 d!874142))

(declare-fun d!874158 () Bool)

(assert (=> d!874158 (= (tail!5197 (drop!1853 lt!1076794 0)) (t!236613 (drop!1853 lt!1076794 0)))))

(assert (=> b!3195551 d!874158))

(declare-fun d!874162 () Bool)

(declare-fun lt!1077393 () Token!9746)

(assert (=> d!874162 (= lt!1077393 (apply!8118 (list!12803 lt!1076571) 0))))

(assert (=> d!874162 (= lt!1077393 (apply!8119 (c!536198 lt!1076571) 0))))

(declare-fun e!1992757 () Bool)

(assert (=> d!874162 e!1992757))

(declare-fun res!1300549 () Bool)

(assert (=> d!874162 (=> (not res!1300549) (not e!1992757))))

(assert (=> d!874162 (= res!1300549 (<= 0 0))))

(assert (=> d!874162 (= (apply!8117 lt!1076571 0) lt!1077393)))

(declare-fun b!3196509 () Bool)

(assert (=> b!3196509 (= e!1992757 (< 0 (size!27133 lt!1076571)))))

(assert (= (and d!874162 res!1300549) b!3196509))

(assert (=> d!874162 m!3455735))

(assert (=> d!874162 m!3455735))

(declare-fun m!3457173 () Bool)

(assert (=> d!874162 m!3457173))

(declare-fun m!3457175 () Bool)

(assert (=> d!874162 m!3457175))

(assert (=> b!3196509 m!3455707))

(assert (=> b!3195551 d!874162))

(declare-fun b!3196510 () Bool)

(declare-fun e!1992758 () List!36158)

(assert (=> b!3196510 (= e!1992758 Nil!36034)))

(declare-fun b!3196511 () Bool)

(declare-fun e!1992760 () Int)

(assert (=> b!3196511 (= e!1992760 0)))

(declare-fun b!3196512 () Bool)

(declare-fun call!231529 () Int)

(assert (=> b!3196512 (= e!1992760 (- call!231529 0))))

(declare-fun b!3196513 () Bool)

(declare-fun e!1992759 () List!36158)

(assert (=> b!3196513 (= e!1992758 e!1992759)))

(declare-fun c!536597 () Bool)

(assert (=> b!3196513 (= c!536597 (<= 0 0))))

(declare-fun b!3196514 () Bool)

(declare-fun e!1992762 () Bool)

(declare-fun lt!1077394 () List!36158)

(declare-fun e!1992761 () Int)

(assert (=> b!3196514 (= e!1992762 (= (size!27136 lt!1077394) e!1992761))))

(declare-fun c!536595 () Bool)

(assert (=> b!3196514 (= c!536595 (<= 0 0))))

(declare-fun b!3196515 () Bool)

(assert (=> b!3196515 (= e!1992759 (drop!1853 (t!236613 lt!1076796) (- 0 1)))))

(declare-fun b!3196516 () Bool)

(assert (=> b!3196516 (= e!1992761 e!1992760)))

(declare-fun c!536598 () Bool)

(assert (=> b!3196516 (= c!536598 (>= 0 call!231529))))

(declare-fun bm!231524 () Bool)

(assert (=> bm!231524 (= call!231529 (size!27136 lt!1076796))))

(declare-fun d!874164 () Bool)

(assert (=> d!874164 e!1992762))

(declare-fun res!1300550 () Bool)

(assert (=> d!874164 (=> (not res!1300550) (not e!1992762))))

(assert (=> d!874164 (= res!1300550 (= ((_ map implies) (content!4865 lt!1077394) (content!4865 lt!1076796)) ((as const (InoxSet Token!9746)) true)))))

(assert (=> d!874164 (= lt!1077394 e!1992758)))

(declare-fun c!536596 () Bool)

(assert (=> d!874164 (= c!536596 ((_ is Nil!36034) lt!1076796))))

(assert (=> d!874164 (= (drop!1853 lt!1076796 0) lt!1077394)))

(declare-fun b!3196517 () Bool)

(assert (=> b!3196517 (= e!1992761 call!231529)))

(declare-fun b!3196518 () Bool)

(assert (=> b!3196518 (= e!1992759 lt!1076796)))

(assert (= (and d!874164 c!536596) b!3196510))

(assert (= (and d!874164 (not c!536596)) b!3196513))

(assert (= (and b!3196513 c!536597) b!3196518))

(assert (= (and b!3196513 (not c!536597)) b!3196515))

(assert (= (and d!874164 res!1300550) b!3196514))

(assert (= (and b!3196514 c!536595) b!3196517))

(assert (= (and b!3196514 (not c!536595)) b!3196516))

(assert (= (and b!3196516 c!536598) b!3196511))

(assert (= (and b!3196516 (not c!536598)) b!3196512))

(assert (= (or b!3196517 b!3196516 b!3196512) bm!231524))

(declare-fun m!3457177 () Bool)

(assert (=> b!3196514 m!3457177))

(declare-fun m!3457179 () Bool)

(assert (=> b!3196515 m!3457179))

(declare-fun m!3457181 () Bool)

(assert (=> bm!231524 m!3457181))

(declare-fun m!3457183 () Bool)

(assert (=> d!874164 m!3457183))

(declare-fun m!3457185 () Bool)

(assert (=> d!874164 m!3457185))

(assert (=> b!3195551 d!874164))

(declare-fun d!874166 () Bool)

(assert (=> d!874166 (= (head!7003 (drop!1853 lt!1076796 0)) (h!41454 (drop!1853 lt!1076796 0)))))

(assert (=> b!3195551 d!874166))

(declare-fun b!3196537 () Bool)

(declare-fun res!1300564 () Bool)

(declare-fun e!1992770 () Bool)

(assert (=> b!3196537 (=> (not res!1300564) (not e!1992770))))

(declare-fun height!1538 (Conc!10755) Int)

(declare-fun ++!8627 (Conc!10755 Conc!10755) Conc!10755)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3196537 (= res!1300564 (<= (height!1538 (++!8627 (c!536197 (BalanceConc!21125 Empty!10755)) (c!536197 (charsOf!3206 (apply!8117 lt!1076571 0))))) (+ (max!0 (height!1538 (c!536197 (BalanceConc!21125 Empty!10755))) (height!1538 (c!536197 (charsOf!3206 (apply!8117 lt!1076571 0))))) 1)))))

(declare-fun b!3196538 () Bool)

(declare-fun res!1300563 () Bool)

(assert (=> b!3196538 (=> (not res!1300563) (not e!1992770))))

(assert (=> b!3196538 (= res!1300563 (>= (height!1538 (++!8627 (c!536197 (BalanceConc!21125 Empty!10755)) (c!536197 (charsOf!3206 (apply!8117 lt!1076571 0))))) (max!0 (height!1538 (c!536197 (BalanceConc!21125 Empty!10755))) (height!1538 (c!536197 (charsOf!3206 (apply!8117 lt!1076571 0)))))))))

(declare-fun d!874168 () Bool)

(assert (=> d!874168 e!1992770))

(declare-fun res!1300565 () Bool)

(assert (=> d!874168 (=> (not res!1300565) (not e!1992770))))

(declare-fun appendAssocInst!724 (Conc!10755 Conc!10755) Bool)

(assert (=> d!874168 (= res!1300565 (appendAssocInst!724 (c!536197 (BalanceConc!21125 Empty!10755)) (c!536197 (charsOf!3206 (apply!8117 lt!1076571 0)))))))

(declare-fun lt!1077400 () BalanceConc!21124)

(assert (=> d!874168 (= lt!1077400 (BalanceConc!21125 (++!8627 (c!536197 (BalanceConc!21125 Empty!10755)) (c!536197 (charsOf!3206 (apply!8117 lt!1076571 0))))))))

(assert (=> d!874168 (= (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (apply!8117 lt!1076571 0))) lt!1077400)))

(declare-fun b!3196539 () Bool)

(assert (=> b!3196539 (= e!1992770 (= (list!12799 lt!1077400) (++!8622 (list!12799 (BalanceConc!21125 Empty!10755)) (list!12799 (charsOf!3206 (apply!8117 lt!1076571 0))))))))

(declare-fun b!3196536 () Bool)

(declare-fun res!1300562 () Bool)

(assert (=> b!3196536 (=> (not res!1300562) (not e!1992770))))

(assert (=> b!3196536 (= res!1300562 (isBalanced!3202 (++!8627 (c!536197 (BalanceConc!21125 Empty!10755)) (c!536197 (charsOf!3206 (apply!8117 lt!1076571 0))))))))

(assert (= (and d!874168 res!1300565) b!3196536))

(assert (= (and b!3196536 res!1300562) b!3196537))

(assert (= (and b!3196537 res!1300564) b!3196538))

(assert (= (and b!3196538 res!1300563) b!3196539))

(declare-fun m!3457197 () Bool)

(assert (=> d!874168 m!3457197))

(declare-fun m!3457199 () Bool)

(assert (=> d!874168 m!3457199))

(declare-fun m!3457201 () Bool)

(assert (=> b!3196539 m!3457201))

(assert (=> b!3196539 m!3455701))

(assert (=> b!3196539 m!3455711))

(declare-fun m!3457203 () Bool)

(assert (=> b!3196539 m!3457203))

(assert (=> b!3196539 m!3455701))

(assert (=> b!3196539 m!3457203))

(declare-fun m!3457205 () Bool)

(assert (=> b!3196539 m!3457205))

(declare-fun m!3457207 () Bool)

(assert (=> b!3196537 m!3457207))

(assert (=> b!3196537 m!3457199))

(declare-fun m!3457209 () Bool)

(assert (=> b!3196537 m!3457209))

(assert (=> b!3196537 m!3457207))

(declare-fun m!3457211 () Bool)

(assert (=> b!3196537 m!3457211))

(assert (=> b!3196537 m!3457209))

(assert (=> b!3196537 m!3457199))

(declare-fun m!3457213 () Bool)

(assert (=> b!3196537 m!3457213))

(assert (=> b!3196536 m!3457199))

(assert (=> b!3196536 m!3457199))

(declare-fun m!3457215 () Bool)

(assert (=> b!3196536 m!3457215))

(assert (=> b!3196538 m!3457207))

(assert (=> b!3196538 m!3457199))

(assert (=> b!3196538 m!3457209))

(assert (=> b!3196538 m!3457207))

(assert (=> b!3196538 m!3457211))

(assert (=> b!3196538 m!3457209))

(assert (=> b!3196538 m!3457199))

(assert (=> b!3196538 m!3457213))

(assert (=> b!3195551 d!874168))

(declare-fun b!3196540 () Bool)

(declare-fun e!1992771 () List!36158)

(assert (=> b!3196540 (= e!1992771 Nil!36034)))

(declare-fun b!3196541 () Bool)

(declare-fun e!1992773 () Int)

(assert (=> b!3196541 (= e!1992773 0)))

(declare-fun b!3196542 () Bool)

(declare-fun call!231530 () Int)

(assert (=> b!3196542 (= e!1992773 (- call!231530 (+ 0 1)))))

(declare-fun b!3196543 () Bool)

(declare-fun e!1992772 () List!36158)

(assert (=> b!3196543 (= e!1992771 e!1992772)))

(declare-fun c!536606 () Bool)

(assert (=> b!3196543 (= c!536606 (<= (+ 0 1) 0))))

(declare-fun b!3196544 () Bool)

(declare-fun e!1992775 () Bool)

(declare-fun lt!1077401 () List!36158)

(declare-fun e!1992774 () Int)

(assert (=> b!3196544 (= e!1992775 (= (size!27136 lt!1077401) e!1992774))))

(declare-fun c!536604 () Bool)

(assert (=> b!3196544 (= c!536604 (<= (+ 0 1) 0))))

(declare-fun b!3196545 () Bool)

(assert (=> b!3196545 (= e!1992772 (drop!1853 (t!236613 lt!1076794) (- (+ 0 1) 1)))))

(declare-fun b!3196546 () Bool)

(assert (=> b!3196546 (= e!1992774 e!1992773)))

(declare-fun c!536607 () Bool)

(assert (=> b!3196546 (= c!536607 (>= (+ 0 1) call!231530))))

(declare-fun bm!231525 () Bool)

(assert (=> bm!231525 (= call!231530 (size!27136 lt!1076794))))

(declare-fun d!874178 () Bool)

(assert (=> d!874178 e!1992775))

(declare-fun res!1300566 () Bool)

(assert (=> d!874178 (=> (not res!1300566) (not e!1992775))))

(assert (=> d!874178 (= res!1300566 (= ((_ map implies) (content!4865 lt!1077401) (content!4865 lt!1076794)) ((as const (InoxSet Token!9746)) true)))))

(assert (=> d!874178 (= lt!1077401 e!1992771)))

(declare-fun c!536605 () Bool)

(assert (=> d!874178 (= c!536605 ((_ is Nil!36034) lt!1076794))))

(assert (=> d!874178 (= (drop!1853 lt!1076794 (+ 0 1)) lt!1077401)))

(declare-fun b!3196547 () Bool)

(assert (=> b!3196547 (= e!1992774 call!231530)))

(declare-fun b!3196548 () Bool)

(assert (=> b!3196548 (= e!1992772 lt!1076794)))

(assert (= (and d!874178 c!536605) b!3196540))

(assert (= (and d!874178 (not c!536605)) b!3196543))

(assert (= (and b!3196543 c!536606) b!3196548))

(assert (= (and b!3196543 (not c!536606)) b!3196545))

(assert (= (and d!874178 res!1300566) b!3196544))

(assert (= (and b!3196544 c!536604) b!3196547))

(assert (= (and b!3196544 (not c!536604)) b!3196546))

(assert (= (and b!3196546 c!536607) b!3196541))

(assert (= (and b!3196546 (not c!536607)) b!3196542))

(assert (= (or b!3196547 b!3196546 b!3196542) bm!231525))

(declare-fun m!3457217 () Bool)

(assert (=> b!3196544 m!3457217))

(declare-fun m!3457219 () Bool)

(assert (=> b!3196545 m!3457219))

(assert (=> bm!231525 m!3457157))

(declare-fun m!3457221 () Bool)

(assert (=> d!874178 m!3457221))

(assert (=> d!874178 m!3457161))

(assert (=> b!3195551 d!874178))

(declare-fun d!874180 () Bool)

(assert (=> d!874180 (= (tail!5197 (drop!1853 lt!1076794 0)) (drop!1853 lt!1076794 (+ 0 1)))))

(declare-fun lt!1077404 () Unit!50426)

(declare-fun choose!18653 (List!36158 Int) Unit!50426)

(assert (=> d!874180 (= lt!1077404 (choose!18653 lt!1076794 0))))

(declare-fun e!1992779 () Bool)

(assert (=> d!874180 e!1992779))

(declare-fun res!1300569 () Bool)

(assert (=> d!874180 (=> (not res!1300569) (not e!1992779))))

(assert (=> d!874180 (= res!1300569 (>= 0 0))))

(assert (=> d!874180 (= (lemmaDropTail!913 lt!1076794 0) lt!1077404)))

(declare-fun b!3196551 () Bool)

(assert (=> b!3196551 (= e!1992779 (< 0 (size!27136 lt!1076794)))))

(assert (= (and d!874180 res!1300569) b!3196551))

(assert (=> d!874180 m!3455715))

(assert (=> d!874180 m!3455715))

(assert (=> d!874180 m!3455725))

(assert (=> d!874180 m!3455721))

(declare-fun m!3457225 () Bool)

(assert (=> d!874180 m!3457225))

(assert (=> b!3196551 m!3457157))

(assert (=> b!3195551 d!874180))

(declare-fun d!874184 () Bool)

(declare-fun lt!1077411 () Token!9746)

(assert (=> d!874184 (contains!6398 lt!1076796 lt!1077411)))

(declare-fun e!1992787 () Token!9746)

(assert (=> d!874184 (= lt!1077411 e!1992787)))

(declare-fun c!536611 () Bool)

(assert (=> d!874184 (= c!536611 (= 0 0))))

(declare-fun e!1992786 () Bool)

(assert (=> d!874184 e!1992786))

(declare-fun res!1300574 () Bool)

(assert (=> d!874184 (=> (not res!1300574) (not e!1992786))))

(assert (=> d!874184 (= res!1300574 (<= 0 0))))

(assert (=> d!874184 (= (apply!8118 lt!1076796 0) lt!1077411)))

(declare-fun b!3196562 () Bool)

(assert (=> b!3196562 (= e!1992786 (< 0 (size!27136 lt!1076796)))))

(declare-fun b!3196563 () Bool)

(assert (=> b!3196563 (= e!1992787 (head!7003 lt!1076796))))

(declare-fun b!3196564 () Bool)

(assert (=> b!3196564 (= e!1992787 (apply!8118 (tail!5197 lt!1076796) (- 0 1)))))

(assert (= (and d!874184 res!1300574) b!3196562))

(assert (= (and d!874184 c!536611) b!3196563))

(assert (= (and d!874184 (not c!536611)) b!3196564))

(declare-fun m!3457245 () Bool)

(assert (=> d!874184 m!3457245))

(assert (=> b!3196562 m!3457181))

(declare-fun m!3457247 () Bool)

(assert (=> b!3196563 m!3457247))

(declare-fun m!3457249 () Bool)

(assert (=> b!3196564 m!3457249))

(assert (=> b!3196564 m!3457249))

(declare-fun m!3457251 () Bool)

(assert (=> b!3196564 m!3457251))

(assert (=> b!3195551 d!874184))

(declare-fun d!874196 () Bool)

(declare-fun lt!1077412 () BalanceConc!21124)

(assert (=> d!874196 (= (list!12799 lt!1077412) (printListTailRec!553 thiss!18206 (dropList!1070 lt!1076571 (+ 0 1)) (list!12799 (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (apply!8117 lt!1076571 0))))))))

(declare-fun e!1992788 () BalanceConc!21124)

(assert (=> d!874196 (= lt!1077412 e!1992788)))

(declare-fun c!536612 () Bool)

(assert (=> d!874196 (= c!536612 (>= (+ 0 1) (size!27133 lt!1076571)))))

(declare-fun e!1992789 () Bool)

(assert (=> d!874196 e!1992789))

(declare-fun res!1300575 () Bool)

(assert (=> d!874196 (=> (not res!1300575) (not e!1992789))))

(assert (=> d!874196 (= res!1300575 (>= (+ 0 1) 0))))

(assert (=> d!874196 (= (printTailRec!1276 thiss!18206 lt!1076571 (+ 0 1) (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (apply!8117 lt!1076571 0)))) lt!1077412)))

(declare-fun b!3196565 () Bool)

(assert (=> b!3196565 (= e!1992789 (<= (+ 0 1) (size!27133 lt!1076571)))))

(declare-fun b!3196566 () Bool)

(assert (=> b!3196566 (= e!1992788 (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (apply!8117 lt!1076571 0))))))

(declare-fun b!3196567 () Bool)

(assert (=> b!3196567 (= e!1992788 (printTailRec!1276 thiss!18206 lt!1076571 (+ 0 1 1) (++!8624 (++!8624 (BalanceConc!21125 Empty!10755) (charsOf!3206 (apply!8117 lt!1076571 0))) (charsOf!3206 (apply!8117 lt!1076571 (+ 0 1))))))))

(declare-fun lt!1077415 () List!36158)

(assert (=> b!3196567 (= lt!1077415 (list!12803 lt!1076571))))

(declare-fun lt!1077417 () Unit!50426)

(assert (=> b!3196567 (= lt!1077417 (lemmaDropApply!1029 lt!1077415 (+ 0 1)))))

(assert (=> b!3196567 (= (head!7003 (drop!1853 lt!1077415 (+ 0 1))) (apply!8118 lt!1077415 (+ 0 1)))))

(declare-fun lt!1077418 () Unit!50426)

(assert (=> b!3196567 (= lt!1077418 lt!1077417)))

(declare-fun lt!1077413 () List!36158)

(assert (=> b!3196567 (= lt!1077413 (list!12803 lt!1076571))))

(declare-fun lt!1077414 () Unit!50426)

(assert (=> b!3196567 (= lt!1077414 (lemmaDropTail!913 lt!1077413 (+ 0 1)))))

(assert (=> b!3196567 (= (tail!5197 (drop!1853 lt!1077413 (+ 0 1))) (drop!1853 lt!1077413 (+ 0 1 1)))))

(declare-fun lt!1077416 () Unit!50426)

(assert (=> b!3196567 (= lt!1077416 lt!1077414)))

(assert (= (and d!874196 res!1300575) b!3196565))

(assert (= (and d!874196 c!536612) b!3196566))

(assert (= (and d!874196 (not c!536612)) b!3196567))

(declare-fun m!3457261 () Bool)

(assert (=> d!874196 m!3457261))

(assert (=> d!874196 m!3457261))

(declare-fun m!3457263 () Bool)

(assert (=> d!874196 m!3457263))

(declare-fun m!3457265 () Bool)

(assert (=> d!874196 m!3457265))

(assert (=> d!874196 m!3455713))

(assert (=> d!874196 m!3457263))

(declare-fun m!3457267 () Bool)

(assert (=> d!874196 m!3457267))

(assert (=> d!874196 m!3455707))

(assert (=> b!3196565 m!3455707))

(declare-fun m!3457269 () Bool)

(assert (=> b!3196567 m!3457269))

(assert (=> b!3196567 m!3455713))

(declare-fun m!3457271 () Bool)

(assert (=> b!3196567 m!3457271))

(declare-fun m!3457273 () Bool)

(assert (=> b!3196567 m!3457273))

(declare-fun m!3457275 () Bool)

(assert (=> b!3196567 m!3457275))

(declare-fun m!3457277 () Bool)

(assert (=> b!3196567 m!3457277))

(declare-fun m!3457279 () Bool)

(assert (=> b!3196567 m!3457279))

(declare-fun m!3457281 () Bool)

(assert (=> b!3196567 m!3457281))

(assert (=> b!3196567 m!3457269))

(assert (=> b!3196567 m!3457271))

(assert (=> b!3196567 m!3457277))

(assert (=> b!3196567 m!3457275))

(declare-fun m!3457283 () Bool)

(assert (=> b!3196567 m!3457283))

(declare-fun m!3457285 () Bool)

(assert (=> b!3196567 m!3457285))

(declare-fun m!3457287 () Bool)

(assert (=> b!3196567 m!3457287))

(assert (=> b!3196567 m!3455735))

(declare-fun m!3457289 () Bool)

(assert (=> b!3196567 m!3457289))

(assert (=> b!3196567 m!3457273))

(declare-fun m!3457291 () Bool)

(assert (=> b!3196567 m!3457291))

(assert (=> b!3195551 d!874196))

(declare-fun d!874204 () Bool)

(assert (=> d!874204 (= (head!7003 (drop!1853 lt!1076796 0)) (apply!8118 lt!1076796 0))))

(declare-fun lt!1077421 () Unit!50426)

(declare-fun choose!18654 (List!36158 Int) Unit!50426)

(assert (=> d!874204 (= lt!1077421 (choose!18654 lt!1076796 0))))

(declare-fun e!1992800 () Bool)

(assert (=> d!874204 e!1992800))

(declare-fun res!1300582 () Bool)

(assert (=> d!874204 (=> (not res!1300582) (not e!1992800))))

(assert (=> d!874204 (= res!1300582 (>= 0 0))))

(assert (=> d!874204 (= (lemmaDropApply!1029 lt!1076796 0) lt!1077421)))

(declare-fun b!3196582 () Bool)

(assert (=> b!3196582 (= e!1992800 (< 0 (size!27136 lt!1076796)))))

(assert (= (and d!874204 res!1300582) b!3196582))

(assert (=> d!874204 m!3455717))

(assert (=> d!874204 m!3455717))

(assert (=> d!874204 m!3455719))

(assert (=> d!874204 m!3455731))

(declare-fun m!3457293 () Bool)

(assert (=> d!874204 m!3457293))

(assert (=> b!3196582 m!3457181))

(assert (=> b!3195551 d!874204))

(declare-fun d!874206 () Bool)

(assert (=> d!874206 (= (list!12803 lt!1076571) (list!12804 (c!536198 lt!1076571)))))

(declare-fun bs!540598 () Bool)

(assert (= bs!540598 d!874206))

(assert (=> bs!540598 m!3456115))

(assert (=> b!3195551 d!874206))

(declare-fun b!3196587 () Bool)

(declare-fun e!1992805 () List!36157)

(assert (=> b!3196587 (= e!1992805 lt!1076581)))

(declare-fun lt!1077422 () List!36157)

(declare-fun e!1992804 () Bool)

(declare-fun b!3196590 () Bool)

(assert (=> b!3196590 (= e!1992804 (or (not (= lt!1076581 Nil!36033)) (= lt!1077422 (t!236612 lt!1076594))))))

(declare-fun b!3196589 () Bool)

(declare-fun res!1300586 () Bool)

(assert (=> b!3196589 (=> (not res!1300586) (not e!1992804))))

(assert (=> b!3196589 (= res!1300586 (= (size!27131 lt!1077422) (+ (size!27131 (t!236612 lt!1076594)) (size!27131 lt!1076581))))))

(declare-fun d!874208 () Bool)

(assert (=> d!874208 e!1992804))

(declare-fun res!1300585 () Bool)

(assert (=> d!874208 (=> (not res!1300585) (not e!1992804))))

(assert (=> d!874208 (= res!1300585 (= (content!4864 lt!1077422) ((_ map or) (content!4864 (t!236612 lt!1076594)) (content!4864 lt!1076581))))))

(assert (=> d!874208 (= lt!1077422 e!1992805)))

(declare-fun c!536618 () Bool)

(assert (=> d!874208 (= c!536618 ((_ is Nil!36033) (t!236612 lt!1076594)))))

(assert (=> d!874208 (= (++!8622 (t!236612 lt!1076594) lt!1076581) lt!1077422)))

(declare-fun b!3196588 () Bool)

(assert (=> b!3196588 (= e!1992805 (Cons!36033 (h!41453 (t!236612 lt!1076594)) (++!8622 (t!236612 (t!236612 lt!1076594)) lt!1076581)))))

(assert (= (and d!874208 c!536618) b!3196587))

(assert (= (and d!874208 (not c!536618)) b!3196588))

(assert (= (and d!874208 res!1300585) b!3196589))

(assert (= (and b!3196589 res!1300586) b!3196590))

(declare-fun m!3457299 () Bool)

(assert (=> b!3196589 m!3457299))

(declare-fun m!3457301 () Bool)

(assert (=> b!3196589 m!3457301))

(assert (=> b!3196589 m!3455113))

(declare-fun m!3457303 () Bool)

(assert (=> d!874208 m!3457303))

(assert (=> d!874208 m!3456817))

(assert (=> d!874208 m!3455119))

(declare-fun m!3457305 () Bool)

(assert (=> b!3196588 m!3457305))

(assert (=> b!3195141 d!874208))

(declare-fun b!3196591 () Bool)

(declare-fun e!1992807 () List!36157)

(assert (=> b!3196591 (= e!1992807 lt!1076594)))

(declare-fun lt!1077424 () List!36157)

(declare-fun b!3196594 () Bool)

(declare-fun e!1992806 () Bool)

(assert (=> b!3196594 (= e!1992806 (or (not (= lt!1076594 Nil!36033)) (= lt!1077424 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))))

(declare-fun b!3196593 () Bool)

(declare-fun res!1300588 () Bool)

(assert (=> b!3196593 (=> (not res!1300588) (not e!1992806))))

(assert (=> b!3196593 (= res!1300588 (= (size!27131 lt!1077424) (+ (size!27131 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))) (size!27131 lt!1076594))))))

(declare-fun d!874212 () Bool)

(assert (=> d!874212 e!1992806))

(declare-fun res!1300587 () Bool)

(assert (=> d!874212 (=> (not res!1300587) (not e!1992806))))

(assert (=> d!874212 (= res!1300587 (= (content!4864 lt!1077424) ((_ map or) (content!4864 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))) (content!4864 lt!1076594))))))

(assert (=> d!874212 (= lt!1077424 e!1992807)))

(declare-fun c!536619 () Bool)

(assert (=> d!874212 (= c!536619 ((_ is Nil!36033) (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))))))

(assert (=> d!874212 (= (++!8622 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) lt!1076594) lt!1077424)))

(declare-fun b!3196592 () Bool)

(assert (=> b!3196592 (= e!1992807 (Cons!36033 (h!41453 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))) (++!8622 (t!236612 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))) lt!1076594)))))

(assert (= (and d!874212 c!536619) b!3196591))

(assert (= (and d!874212 (not c!536619)) b!3196592))

(assert (= (and d!874212 res!1300587) b!3196593))

(assert (= (and b!3196593 res!1300588) b!3196594))

(declare-fun m!3457311 () Bool)

(assert (=> b!3196593 m!3457311))

(declare-fun m!3457313 () Bool)

(assert (=> b!3196593 m!3457313))

(assert (=> b!3196593 m!3455111))

(declare-fun m!3457315 () Bool)

(assert (=> d!874212 m!3457315))

(assert (=> d!874212 m!3456885))

(assert (=> d!874212 m!3455117))

(declare-fun m!3457317 () Bool)

(assert (=> b!3196592 m!3457317))

(assert (=> b!3195146 d!874212))

(declare-fun d!874216 () Bool)

(assert (=> d!874216 (= (inv!48873 (tag!5708 (rule!7622 (h!41454 (t!236613 tokens!494))))) (= (mod (str.len (value!168374 (tag!5708 (rule!7622 (h!41454 (t!236613 tokens!494)))))) 2) 0))))

(assert (=> b!3195659 d!874216))

(declare-fun d!874218 () Bool)

(declare-fun res!1300589 () Bool)

(declare-fun e!1992812 () Bool)

(assert (=> d!874218 (=> (not res!1300589) (not e!1992812))))

(assert (=> d!874218 (= res!1300589 (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))))))

(assert (=> d!874218 (= (inv!48876 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) e!1992812)))

(declare-fun b!3196603 () Bool)

(assert (=> b!3196603 (= e!1992812 (equivClasses!2046 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))))))

(assert (= (and d!874218 res!1300589) b!3196603))

(declare-fun m!3457321 () Bool)

(assert (=> d!874218 m!3457321))

(declare-fun m!3457325 () Bool)

(assert (=> b!3196603 m!3457325))

(assert (=> b!3195659 d!874218))

(declare-fun d!874220 () Bool)

(declare-fun charsToBigInt!1 (List!36156) Int)

(assert (=> d!874220 (= (inv!17 (value!168375 (h!41454 tokens!494))) (= (charsToBigInt!1 (text!38388 (value!168375 (h!41454 tokens!494)))) (value!168367 (value!168375 (h!41454 tokens!494)))))))

(declare-fun bs!540600 () Bool)

(assert (= bs!540600 d!874220))

(declare-fun m!3457335 () Bool)

(assert (=> bs!540600 m!3457335))

(assert (=> b!3195522 d!874220))

(declare-fun b!3196607 () Bool)

(declare-fun e!1992816 () List!36157)

(assert (=> b!3196607 (= e!1992816 (_2!20830 (get!11459 lt!1076622)))))

(declare-fun b!3196610 () Bool)

(declare-fun e!1992815 () Bool)

(declare-fun lt!1077427 () List!36157)

(assert (=> b!3196610 (= e!1992815 (or (not (= (_2!20830 (get!11459 lt!1076622)) Nil!36033)) (= lt!1077427 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622)))))))))

(declare-fun b!3196609 () Bool)

(declare-fun res!1300591 () Bool)

(assert (=> b!3196609 (=> (not res!1300591) (not e!1992815))))

(assert (=> b!3196609 (= res!1300591 (= (size!27131 lt!1077427) (+ (size!27131 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))) (size!27131 (_2!20830 (get!11459 lt!1076622))))))))

(declare-fun d!874226 () Bool)

(assert (=> d!874226 e!1992815))

(declare-fun res!1300590 () Bool)

(assert (=> d!874226 (=> (not res!1300590) (not e!1992815))))

(assert (=> d!874226 (= res!1300590 (= (content!4864 lt!1077427) ((_ map or) (content!4864 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))) (content!4864 (_2!20830 (get!11459 lt!1076622))))))))

(assert (=> d!874226 (= lt!1077427 e!1992816)))

(declare-fun c!536625 () Bool)

(assert (=> d!874226 (= c!536625 ((_ is Nil!36033) (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))))))

(assert (=> d!874226 (= (++!8622 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622)))) (_2!20830 (get!11459 lt!1076622))) lt!1077427)))

(declare-fun b!3196608 () Bool)

(assert (=> b!3196608 (= e!1992816 (Cons!36033 (h!41453 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))) (++!8622 (t!236612 (list!12799 (charsOf!3206 (_1!20830 (get!11459 lt!1076622))))) (_2!20830 (get!11459 lt!1076622)))))))

(assert (= (and d!874226 c!536625) b!3196607))

(assert (= (and d!874226 (not c!536625)) b!3196608))

(assert (= (and d!874226 res!1300590) b!3196609))

(assert (= (and b!3196609 res!1300591) b!3196610))

(declare-fun m!3457343 () Bool)

(assert (=> b!3196609 m!3457343))

(assert (=> b!3196609 m!3455003))

(declare-fun m!3457345 () Bool)

(assert (=> b!3196609 m!3457345))

(assert (=> b!3196609 m!3455013))

(declare-fun m!3457347 () Bool)

(assert (=> d!874226 m!3457347))

(assert (=> d!874226 m!3455003))

(declare-fun m!3457349 () Bool)

(assert (=> d!874226 m!3457349))

(declare-fun m!3457353 () Bool)

(assert (=> d!874226 m!3457353))

(declare-fun m!3457357 () Bool)

(assert (=> b!3196608 m!3457357))

(assert (=> b!3195042 d!874226))

(assert (=> b!3195042 d!874032))

(assert (=> b!3195042 d!874034))

(assert (=> b!3195042 d!873832))

(declare-fun d!874232 () Bool)

(declare-fun res!1300592 () Bool)

(declare-fun e!1992818 () Bool)

(assert (=> d!874232 (=> (not res!1300592) (not e!1992818))))

(assert (=> d!874232 (= res!1300592 (rulesValid!1906 thiss!18206 (t!236614 rules!2135)))))

(assert (=> d!874232 (= (rulesInvariant!4176 thiss!18206 (t!236614 rules!2135)) e!1992818)))

(declare-fun b!3196613 () Bool)

(assert (=> b!3196613 (= e!1992818 (noDuplicateTag!1902 thiss!18206 (t!236614 rules!2135) Nil!36036))))

(assert (= (and d!874232 res!1300592) b!3196613))

(declare-fun m!3457365 () Bool)

(assert (=> d!874232 m!3457365))

(declare-fun m!3457367 () Bool)

(assert (=> b!3196613 m!3457367))

(assert (=> b!3195093 d!874232))

(declare-fun d!874236 () Bool)

(assert (=> d!874236 (rulesInvariant!4176 thiss!18206 (t!236614 rules!2135))))

(declare-fun lt!1077432 () Unit!50426)

(declare-fun choose!18655 (LexerInterface!4779 Rule!10180 List!36159) Unit!50426)

(assert (=> d!874236 (= lt!1077432 (choose!18655 thiss!18206 (h!41455 rules!2135) (t!236614 rules!2135)))))

(assert (=> d!874236 (rulesInvariant!4176 thiss!18206 (Cons!36035 (h!41455 rules!2135) (t!236614 rules!2135)))))

(assert (=> d!874236 (= (lemmaInvariantOnRulesThenOnTail!341 thiss!18206 (h!41455 rules!2135) (t!236614 rules!2135)) lt!1077432)))

(declare-fun bs!540602 () Bool)

(assert (= bs!540602 d!874236))

(assert (=> bs!540602 m!3455041))

(declare-fun m!3457393 () Bool)

(assert (=> bs!540602 m!3457393))

(declare-fun m!3457395 () Bool)

(assert (=> bs!540602 m!3457395))

(assert (=> b!3195093 d!874236))

(declare-fun b!3196622 () Bool)

(declare-fun e!1992825 () Option!7071)

(assert (=> b!3196622 (= e!1992825 (Some!7070 (h!41455 (t!236614 rules!2135))))))

(declare-fun b!3196623 () Bool)

(declare-fun lt!1077435 () Unit!50426)

(declare-fun lt!1077434 () Unit!50426)

(assert (=> b!3196623 (= lt!1077435 lt!1077434)))

(assert (=> b!3196623 (rulesInvariant!4176 thiss!18206 (t!236614 (t!236614 rules!2135)))))

(assert (=> b!3196623 (= lt!1077434 (lemmaInvariantOnRulesThenOnTail!341 thiss!18206 (h!41455 (t!236614 rules!2135)) (t!236614 (t!236614 rules!2135))))))

(declare-fun e!1992826 () Option!7071)

(assert (=> b!3196623 (= e!1992826 (getRuleFromTag!895 thiss!18206 (t!236614 (t!236614 rules!2135)) (tag!5708 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3196624 () Bool)

(declare-fun e!1992824 () Bool)

(declare-fun e!1992823 () Bool)

(assert (=> b!3196624 (= e!1992824 e!1992823)))

(declare-fun res!1300597 () Bool)

(assert (=> b!3196624 (=> (not res!1300597) (not e!1992823))))

(declare-fun lt!1077433 () Option!7071)

(assert (=> b!3196624 (= res!1300597 (contains!6396 (t!236614 rules!2135) (get!11458 lt!1077433)))))

(declare-fun b!3196625 () Bool)

(assert (=> b!3196625 (= e!1992823 (= (tag!5708 (get!11458 lt!1077433)) (tag!5708 (rule!7622 (h!41454 tokens!494)))))))

(declare-fun b!3196626 () Bool)

(assert (=> b!3196626 (= e!1992825 e!1992826)))

(declare-fun c!536630 () Bool)

(assert (=> b!3196626 (= c!536630 (and ((_ is Cons!36035) (t!236614 rules!2135)) (not (= (tag!5708 (h!41455 (t!236614 rules!2135))) (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))

(declare-fun b!3196627 () Bool)

(assert (=> b!3196627 (= e!1992826 None!7070)))

(declare-fun d!874242 () Bool)

(assert (=> d!874242 e!1992824))

(declare-fun res!1300598 () Bool)

(assert (=> d!874242 (=> res!1300598 e!1992824)))

(assert (=> d!874242 (= res!1300598 (isEmpty!20118 lt!1077433))))

(assert (=> d!874242 (= lt!1077433 e!1992825)))

(declare-fun c!536629 () Bool)

(assert (=> d!874242 (= c!536629 (and ((_ is Cons!36035) (t!236614 rules!2135)) (= (tag!5708 (h!41455 (t!236614 rules!2135))) (tag!5708 (rule!7622 (h!41454 tokens!494))))))))

(assert (=> d!874242 (rulesInvariant!4176 thiss!18206 (t!236614 rules!2135))))

(assert (=> d!874242 (= (getRuleFromTag!895 thiss!18206 (t!236614 rules!2135) (tag!5708 (rule!7622 (h!41454 tokens!494)))) lt!1077433)))

(assert (= (and d!874242 c!536629) b!3196622))

(assert (= (and d!874242 (not c!536629)) b!3196626))

(assert (= (and b!3196626 c!536630) b!3196623))

(assert (= (and b!3196626 (not c!536630)) b!3196627))

(assert (= (and d!874242 (not res!1300598)) b!3196624))

(assert (= (and b!3196624 res!1300597) b!3196625))

(declare-fun m!3457397 () Bool)

(assert (=> b!3196623 m!3457397))

(declare-fun m!3457399 () Bool)

(assert (=> b!3196623 m!3457399))

(declare-fun m!3457401 () Bool)

(assert (=> b!3196623 m!3457401))

(declare-fun m!3457403 () Bool)

(assert (=> b!3196624 m!3457403))

(assert (=> b!3196624 m!3457403))

(declare-fun m!3457405 () Bool)

(assert (=> b!3196624 m!3457405))

(assert (=> b!3196625 m!3457403))

(declare-fun m!3457407 () Bool)

(assert (=> d!874242 m!3457407))

(assert (=> d!874242 m!3455041))

(assert (=> b!3195093 d!874242))

(declare-fun d!874244 () Bool)

(assert (=> d!874244 true))

(declare-fun lt!1077441 () Bool)

(declare-fun rulesValidInductive!1769 (LexerInterface!4779 List!36159) Bool)

(assert (=> d!874244 (= lt!1077441 (rulesValidInductive!1769 thiss!18206 rules!2135))))

(declare-fun lambda!117026 () Int)

(declare-fun forall!7334 (List!36159 Int) Bool)

(assert (=> d!874244 (= lt!1077441 (forall!7334 rules!2135 lambda!117026))))

(assert (=> d!874244 (= (rulesValid!1906 thiss!18206 rules!2135) lt!1077441)))

(declare-fun bs!540604 () Bool)

(assert (= bs!540604 d!874244))

(declare-fun m!3457421 () Bool)

(assert (=> bs!540604 m!3457421))

(declare-fun m!3457423 () Bool)

(assert (=> bs!540604 m!3457423))

(assert (=> d!873474 d!874244))

(declare-fun d!874254 () Bool)

(assert (=> d!874254 (= (isEmpty!20116 (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578)))) ((_ is Nil!36034) (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578)))))))

(assert (=> d!873478 d!874254))

(declare-fun d!874256 () Bool)

(assert (=> d!874256 (= (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578))) (list!12804 (c!536198 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578)))))))

(declare-fun bs!540605 () Bool)

(assert (= bs!540605 d!874256))

(declare-fun m!3457425 () Bool)

(assert (=> bs!540605 m!3457425))

(assert (=> d!873478 d!874256))

(declare-fun d!874258 () Bool)

(declare-fun lt!1077448 () Bool)

(assert (=> d!874258 (= lt!1077448 (isEmpty!20116 (list!12804 (c!536198 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578))))))))

(assert (=> d!874258 (= lt!1077448 (= (size!27137 (c!536198 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578)))) 0))))

(assert (=> d!874258 (= (isEmpty!20117 (c!536198 (_1!20829 (lex!2109 thiss!18206 rules!2135 lt!1076578)))) lt!1077448)))

(declare-fun bs!540607 () Bool)

(assert (= bs!540607 d!874258))

(assert (=> bs!540607 m!3457425))

(assert (=> bs!540607 m!3457425))

(declare-fun m!3457435 () Bool)

(assert (=> bs!540607 m!3457435))

(declare-fun m!3457437 () Bool)

(assert (=> bs!540607 m!3457437))

(assert (=> d!873478 d!874258))

(declare-fun d!874264 () Bool)

(assert (=> d!874264 (= (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))) (isBalanced!3202 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))))))

(declare-fun bs!540608 () Bool)

(assert (= bs!540608 d!874264))

(declare-fun m!3457439 () Bool)

(assert (=> bs!540608 m!3457439))

(assert (=> tb!156127 d!874264))

(assert (=> b!3195246 d!874008))

(assert (=> b!3195246 d!874010))

(assert (=> b!3195061 d!874232))

(assert (=> b!3195061 d!874236))

(declare-fun b!3196654 () Bool)

(declare-fun e!1992844 () Option!7071)

(assert (=> b!3196654 (= e!1992844 (Some!7070 (h!41455 (t!236614 rules!2135))))))

(declare-fun b!3196655 () Bool)

(declare-fun lt!1077451 () Unit!50426)

(declare-fun lt!1077450 () Unit!50426)

(assert (=> b!3196655 (= lt!1077451 lt!1077450)))

(assert (=> b!3196655 (rulesInvariant!4176 thiss!18206 (t!236614 (t!236614 rules!2135)))))

(assert (=> b!3196655 (= lt!1077450 (lemmaInvariantOnRulesThenOnTail!341 thiss!18206 (h!41455 (t!236614 rules!2135)) (t!236614 (t!236614 rules!2135))))))

(declare-fun e!1992845 () Option!7071)

(assert (=> b!3196655 (= e!1992845 (getRuleFromTag!895 thiss!18206 (t!236614 (t!236614 rules!2135)) (tag!5708 (rule!7622 separatorToken!241))))))

(declare-fun b!3196656 () Bool)

(declare-fun e!1992843 () Bool)

(declare-fun e!1992842 () Bool)

(assert (=> b!3196656 (= e!1992843 e!1992842)))

(declare-fun res!1300613 () Bool)

(assert (=> b!3196656 (=> (not res!1300613) (not e!1992842))))

(declare-fun lt!1077449 () Option!7071)

(assert (=> b!3196656 (= res!1300613 (contains!6396 (t!236614 rules!2135) (get!11458 lt!1077449)))))

(declare-fun b!3196657 () Bool)

(assert (=> b!3196657 (= e!1992842 (= (tag!5708 (get!11458 lt!1077449)) (tag!5708 (rule!7622 separatorToken!241))))))

(declare-fun b!3196658 () Bool)

(assert (=> b!3196658 (= e!1992844 e!1992845)))

(declare-fun c!536638 () Bool)

(assert (=> b!3196658 (= c!536638 (and ((_ is Cons!36035) (t!236614 rules!2135)) (not (= (tag!5708 (h!41455 (t!236614 rules!2135))) (tag!5708 (rule!7622 separatorToken!241))))))))

(declare-fun b!3196659 () Bool)

(assert (=> b!3196659 (= e!1992845 None!7070)))

(declare-fun d!874266 () Bool)

(assert (=> d!874266 e!1992843))

(declare-fun res!1300614 () Bool)

(assert (=> d!874266 (=> res!1300614 e!1992843)))

(assert (=> d!874266 (= res!1300614 (isEmpty!20118 lt!1077449))))

(assert (=> d!874266 (= lt!1077449 e!1992844)))

(declare-fun c!536637 () Bool)

(assert (=> d!874266 (= c!536637 (and ((_ is Cons!36035) (t!236614 rules!2135)) (= (tag!5708 (h!41455 (t!236614 rules!2135))) (tag!5708 (rule!7622 separatorToken!241)))))))

(assert (=> d!874266 (rulesInvariant!4176 thiss!18206 (t!236614 rules!2135))))

(assert (=> d!874266 (= (getRuleFromTag!895 thiss!18206 (t!236614 rules!2135) (tag!5708 (rule!7622 separatorToken!241))) lt!1077449)))

(assert (= (and d!874266 c!536637) b!3196654))

(assert (= (and d!874266 (not c!536637)) b!3196658))

(assert (= (and b!3196658 c!536638) b!3196655))

(assert (= (and b!3196658 (not c!536638)) b!3196659))

(assert (= (and d!874266 (not res!1300614)) b!3196656))

(assert (= (and b!3196656 res!1300613) b!3196657))

(assert (=> b!3196655 m!3457397))

(assert (=> b!3196655 m!3457399))

(declare-fun m!3457449 () Bool)

(assert (=> b!3196655 m!3457449))

(declare-fun m!3457451 () Bool)

(assert (=> b!3196656 m!3457451))

(assert (=> b!3196656 m!3457451))

(declare-fun m!3457453 () Bool)

(assert (=> b!3196656 m!3457453))

(assert (=> b!3196657 m!3457451))

(declare-fun m!3457457 () Bool)

(assert (=> d!874266 m!3457457))

(assert (=> d!874266 m!3455041))

(assert (=> b!3195061 d!874266))

(assert (=> b!3195020 d!874014))

(assert (=> b!3195020 d!873502))

(declare-fun d!874268 () Bool)

(declare-fun res!1300615 () Bool)

(declare-fun e!1992846 () Bool)

(assert (=> d!874268 (=> res!1300615 e!1992846)))

(assert (=> d!874268 (= res!1300615 (not ((_ is Cons!36035) (t!236614 rules!2135))))))

(assert (=> d!874268 (= (sepAndNonSepRulesDisjointChars!1384 rules!2135 (t!236614 rules!2135)) e!1992846)))

(declare-fun b!3196660 () Bool)

(declare-fun e!1992847 () Bool)

(assert (=> b!3196660 (= e!1992846 e!1992847)))

(declare-fun res!1300616 () Bool)

(assert (=> b!3196660 (=> (not res!1300616) (not e!1992847))))

(assert (=> b!3196660 (= res!1300616 (ruleDisjointCharsFromAllFromOtherType!583 (h!41455 (t!236614 rules!2135)) rules!2135))))

(declare-fun b!3196661 () Bool)

(assert (=> b!3196661 (= e!1992847 (sepAndNonSepRulesDisjointChars!1384 rules!2135 (t!236614 (t!236614 rules!2135))))))

(assert (= (and d!874268 (not res!1300615)) b!3196660))

(assert (= (and b!3196660 res!1300616) b!3196661))

(declare-fun m!3457465 () Bool)

(assert (=> b!3196660 m!3457465))

(declare-fun m!3457467 () Bool)

(assert (=> b!3196661 m!3457467))

(assert (=> b!3195508 d!874268))

(declare-fun d!874274 () Bool)

(assert (=> d!874274 (= (isEmpty!20115 (originalCharacters!5904 separatorToken!241)) ((_ is Nil!36033) (originalCharacters!5904 separatorToken!241)))))

(assert (=> d!873572 d!874274))

(declare-fun d!874276 () Bool)

(declare-fun e!1992870 () Bool)

(assert (=> d!874276 e!1992870))

(declare-fun res!1300633 () Bool)

(assert (=> d!874276 (=> res!1300633 e!1992870)))

(assert (=> d!874276 (= res!1300633 (isEmpty!20115 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))

(declare-fun lt!1077464 () Unit!50426)

(declare-fun choose!18657 (Regex!9949 List!36157) Unit!50426)

(assert (=> d!874276 (= lt!1077464 (choose!18657 (regex!5190 (rule!7622 (h!41454 tokens!494))) lt!1076577))))

(assert (=> d!874276 (validRegex!4542 (regex!5190 (rule!7622 (h!41454 tokens!494))))))

(assert (=> d!874276 (= (longestMatchIsAcceptedByMatchOrIsEmpty!795 (regex!5190 (rule!7622 (h!41454 tokens!494))) lt!1076577) lt!1077464)))

(declare-fun b!3196692 () Bool)

(assert (=> b!3196692 (= e!1992870 (matchR!4583 (regex!5190 (rule!7622 (h!41454 tokens!494))) (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))

(assert (= (and d!874276 (not res!1300633)) b!3196692))

(assert (=> d!874276 m!3455023))

(assert (=> d!874276 m!3454873))

(assert (=> d!874276 m!3455027))

(assert (=> d!874276 m!3456139))

(assert (=> d!874276 m!3455025))

(assert (=> d!874276 m!3454873))

(assert (=> d!874276 m!3455023))

(declare-fun m!3457511 () Bool)

(assert (=> d!874276 m!3457511))

(assert (=> b!3196692 m!3455023))

(assert (=> b!3196692 m!3454873))

(assert (=> b!3196692 m!3455023))

(assert (=> b!3196692 m!3454873))

(assert (=> b!3196692 m!3455027))

(assert (=> b!3196692 m!3455033))

(assert (=> b!3195046 d!874276))

(declare-fun d!874304 () Bool)

(assert (=> d!874304 (= (isEmpty!20115 (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))) ((_ is Nil!36033) (_1!20832 (findLongestMatchInner!822 (regex!5190 (rule!7622 (h!41454 tokens!494))) Nil!36033 (size!27131 Nil!36033) lt!1076577 lt!1076577 (size!27131 lt!1076577)))))))

(assert (=> b!3195046 d!874304))

(assert (=> b!3195046 d!873856))

(declare-fun bs!540614 () Bool)

(declare-fun d!874308 () Bool)

(assert (= bs!540614 (and d!874308 d!873982)))

(declare-fun lambda!117030 () Int)

(assert (=> bs!540614 (= (and (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))))) (= lambda!117030 lambda!117015))))

(declare-fun bs!540615 () Bool)

(assert (= bs!540615 (and d!874308 d!874076)))

(assert (=> bs!540615 (= lambda!117030 lambda!117016)))

(declare-fun b!3196697 () Bool)

(declare-fun e!1992873 () Bool)

(assert (=> b!3196697 (= e!1992873 true)))

(assert (=> d!874308 e!1992873))

(assert (= d!874308 b!3196697))

(assert (=> b!3196697 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (dynLambda!14512 order!18319 lambda!117030))))

(assert (=> b!3196697 (< (dynLambda!14508 order!18313 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (dynLambda!14512 order!18319 lambda!117030))))

(assert (=> d!874308 (= (list!12799 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (seqFromList!3452 (_1!20832 lt!1076623))))) (list!12799 (seqFromList!3452 (_1!20832 lt!1076623))))))

(declare-fun lt!1077467 () Unit!50426)

(declare-fun ForallOf!546 (Int BalanceConc!21124) Unit!50426)

(assert (=> d!874308 (= lt!1077467 (ForallOf!546 lambda!117030 (seqFromList!3452 (_1!20832 lt!1076623))))))

(assert (=> d!874308 (= (lemmaSemiInverse!1166 (transformation!5190 (rule!7622 (h!41454 tokens!494))) (seqFromList!3452 (_1!20832 lt!1076623))) lt!1077467)))

(declare-fun b_lambda!87257 () Bool)

(assert (=> (not b_lambda!87257) (not d!874308)))

(declare-fun t!236832 () Bool)

(declare-fun tb!156305 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236832) tb!156305))

(declare-fun b!3196698 () Bool)

(declare-fun e!1992874 () Bool)

(declare-fun tp!1010625 () Bool)

(assert (=> b!3196698 (= e!1992874 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (seqFromList!3452 (_1!20832 lt!1076623)))))) tp!1010625))))

(declare-fun result!198558 () Bool)

(assert (=> tb!156305 (= result!198558 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (seqFromList!3452 (_1!20832 lt!1076623))))) e!1992874))))

(assert (= tb!156305 b!3196698))

(declare-fun m!3457515 () Bool)

(assert (=> b!3196698 m!3457515))

(declare-fun m!3457517 () Bool)

(assert (=> tb!156305 m!3457517))

(assert (=> d!874308 t!236832))

(declare-fun b_and!212237 () Bool)

(assert (= b_and!212211 (and (=> t!236832 result!198558) b_and!212237)))

(declare-fun t!236834 () Bool)

(declare-fun tb!156307 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236834) tb!156307))

(declare-fun result!198560 () Bool)

(assert (= result!198560 result!198558))

(assert (=> d!874308 t!236834))

(declare-fun b_and!212239 () Bool)

(assert (= b_and!212215 (and (=> t!236834 result!198560) b_and!212239)))

(declare-fun tb!156309 () Bool)

(declare-fun t!236836 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236836) tb!156309))

(declare-fun result!198562 () Bool)

(assert (= result!198562 result!198558))

(assert (=> d!874308 t!236836))

(declare-fun b_and!212241 () Bool)

(assert (= b_and!212213 (and (=> t!236836 result!198562) b_and!212241)))

(declare-fun t!236838 () Bool)

(declare-fun tb!156311 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236838) tb!156311))

(declare-fun result!198564 () Bool)

(assert (= result!198564 result!198558))

(assert (=> d!874308 t!236838))

(declare-fun b_and!212243 () Bool)

(assert (= b_and!212207 (and (=> t!236838 result!198564) b_and!212243)))

(declare-fun t!236840 () Bool)

(declare-fun tb!156313 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236840) tb!156313))

(declare-fun result!198566 () Bool)

(assert (= result!198566 result!198558))

(assert (=> d!874308 t!236840))

(declare-fun b_and!212245 () Bool)

(assert (= b_and!212209 (and (=> t!236840 result!198566) b_and!212245)))

(declare-fun b_lambda!87259 () Bool)

(assert (=> (not b_lambda!87259) (not d!874308)))

(declare-fun t!236842 () Bool)

(declare-fun tb!156315 () Bool)

(assert (=> (and b!3195646 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236842) tb!156315))

(declare-fun result!198568 () Bool)

(assert (=> tb!156315 (= result!198568 (inv!21 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (seqFromList!3452 (_1!20832 lt!1076623)))))))

(declare-fun m!3457519 () Bool)

(assert (=> tb!156315 m!3457519))

(assert (=> d!874308 t!236842))

(declare-fun b_and!212247 () Bool)

(assert (= b_and!212099 (and (=> t!236842 result!198568) b_and!212247)))

(declare-fun t!236844 () Bool)

(declare-fun tb!156317 () Bool)

(assert (=> (and b!3195660 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236844) tb!156317))

(declare-fun result!198570 () Bool)

(assert (= result!198570 result!198568))

(assert (=> d!874308 t!236844))

(declare-fun b_and!212249 () Bool)

(assert (= b_and!212103 (and (=> t!236844 result!198570) b_and!212249)))

(declare-fun t!236846 () Bool)

(declare-fun tb!156319 () Bool)

(assert (=> (and b!3194957 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236846) tb!156319))

(declare-fun result!198572 () Bool)

(assert (= result!198572 result!198568))

(assert (=> d!874308 t!236846))

(declare-fun b_and!212251 () Bool)

(assert (= b_and!212033 (and (=> t!236846 result!198572) b_and!212251)))

(declare-fun tb!156321 () Bool)

(declare-fun t!236848 () Bool)

(assert (=> (and b!3194963 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236848) tb!156321))

(declare-fun result!198574 () Bool)

(assert (= result!198574 result!198568))

(assert (=> d!874308 t!236848))

(declare-fun b_and!212253 () Bool)

(assert (= b_and!212031 (and (=> t!236848 result!198574) b_and!212253)))

(declare-fun t!236850 () Bool)

(declare-fun tb!156323 () Bool)

(assert (=> (and b!3194955 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236850) tb!156323))

(declare-fun result!198576 () Bool)

(assert (= result!198576 result!198568))

(assert (=> d!874308 t!236850))

(declare-fun b_and!212255 () Bool)

(assert (= b_and!212035 (and (=> t!236850 result!198576) b_and!212255)))

(assert (=> d!874308 m!3455017))

(declare-fun m!3457521 () Bool)

(assert (=> d!874308 m!3457521))

(assert (=> d!874308 m!3455017))

(declare-fun m!3457523 () Bool)

(assert (=> d!874308 m!3457523))

(assert (=> d!874308 m!3455017))

(declare-fun m!3457525 () Bool)

(assert (=> d!874308 m!3457525))

(declare-fun m!3457527 () Bool)

(assert (=> d!874308 m!3457527))

(declare-fun m!3457529 () Bool)

(assert (=> d!874308 m!3457529))

(assert (=> d!874308 m!3457521))

(assert (=> d!874308 m!3457527))

(assert (=> b!3195046 d!874308))

(assert (=> b!3195046 d!873506))

(declare-fun d!874312 () Bool)

(assert (=> d!874312 (= (seqFromList!3452 (_1!20832 lt!1076623)) (fromListB!1524 (_1!20832 lt!1076623)))))

(declare-fun bs!540616 () Bool)

(assert (= bs!540616 d!874312))

(declare-fun m!3457531 () Bool)

(assert (=> bs!540616 m!3457531))

(assert (=> b!3195046 d!874312))

(assert (=> b!3195046 d!873964))

(declare-fun d!874314 () Bool)

(declare-fun lt!1077470 () Int)

(assert (=> d!874314 (= lt!1077470 (size!27131 (list!12799 (seqFromList!3452 (_1!20832 lt!1076623)))))))

(declare-fun size!27141 (Conc!10755) Int)

(assert (=> d!874314 (= lt!1077470 (size!27141 (c!536197 (seqFromList!3452 (_1!20832 lt!1076623)))))))

(assert (=> d!874314 (= (size!27134 (seqFromList!3452 (_1!20832 lt!1076623))) lt!1077470)))

(declare-fun bs!540617 () Bool)

(assert (= bs!540617 d!874314))

(assert (=> bs!540617 m!3455017))

(assert (=> bs!540617 m!3457525))

(assert (=> bs!540617 m!3457525))

(declare-fun m!3457533 () Bool)

(assert (=> bs!540617 m!3457533))

(declare-fun m!3457535 () Bool)

(assert (=> bs!540617 m!3457535))

(assert (=> b!3195046 d!874314))

(declare-fun d!874316 () Bool)

(assert (=> d!874316 (= (apply!8114 (transformation!5190 (rule!7622 (h!41454 tokens!494))) (seqFromList!3452 (_1!20832 lt!1076623))) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (seqFromList!3452 (_1!20832 lt!1076623))))))

(declare-fun b_lambda!87261 () Bool)

(assert (=> (not b_lambda!87261) (not d!874316)))

(assert (=> d!874316 t!236842))

(declare-fun b_and!212257 () Bool)

(assert (= b_and!212247 (and (=> t!236842 result!198568) b_and!212257)))

(assert (=> d!874316 t!236846))

(declare-fun b_and!212259 () Bool)

(assert (= b_and!212251 (and (=> t!236846 result!198572) b_and!212259)))

(assert (=> d!874316 t!236850))

(declare-fun b_and!212261 () Bool)

(assert (= b_and!212255 (and (=> t!236850 result!198576) b_and!212261)))

(assert (=> d!874316 t!236844))

(declare-fun b_and!212263 () Bool)

(assert (= b_and!212249 (and (=> t!236844 result!198570) b_and!212263)))

(assert (=> d!874316 t!236848))

(declare-fun b_and!212265 () Bool)

(assert (= b_and!212253 (and (=> t!236848 result!198574) b_and!212265)))

(assert (=> d!874316 m!3455017))

(assert (=> d!874316 m!3457521))

(assert (=> b!3195046 d!874316))

(declare-fun d!874318 () Bool)

(assert (=> d!874318 (= (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)))))) (list!12804 (c!536198 (_1!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))))))))))

(declare-fun bs!540618 () Bool)

(assert (= bs!540618 d!874318))

(declare-fun m!3457537 () Bool)

(assert (=> bs!540618 m!3457537))

(assert (=> d!873574 d!874318))

(declare-fun d!874320 () Bool)

(declare-fun e!1992878 () Bool)

(assert (=> d!874320 e!1992878))

(declare-fun res!1300636 () Bool)

(assert (=> d!874320 (=> (not res!1300636) (not e!1992878))))

(declare-fun e!1992876 () Bool)

(assert (=> d!874320 (= res!1300636 e!1992876)))

(declare-fun c!536647 () Bool)

(declare-fun lt!1077471 () tuple2!35390)

(assert (=> d!874320 (= c!536647 (> (size!27133 (_1!20829 lt!1077471)) 0))))

(assert (=> d!874320 (= lt!1077471 (lexTailRecV2!924 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))) (BalanceConc!21125 Empty!10755) (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))) (BalanceConc!21127 Empty!10756)))))

(assert (=> d!874320 (= (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)))) lt!1077471)))

(declare-fun b!3196699 () Bool)

(assert (=> b!3196699 (= e!1992876 (= (_2!20829 lt!1077471) (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)))))))

(declare-fun b!3196700 () Bool)

(assert (=> b!3196700 (= e!1992878 (= (list!12799 (_2!20829 lt!1077471)) (_2!20831 (lexList!1304 thiss!18206 rules!2135 (list!12799 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))))))))))

(declare-fun b!3196701 () Bool)

(declare-fun res!1300635 () Bool)

(assert (=> b!3196701 (=> (not res!1300635) (not e!1992878))))

(assert (=> b!3196701 (= res!1300635 (= (list!12803 (_1!20829 lt!1077471)) (_1!20831 (lexList!1304 thiss!18206 rules!2135 (list!12799 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))))))))))

(declare-fun b!3196702 () Bool)

(declare-fun e!1992877 () Bool)

(assert (=> b!3196702 (= e!1992877 (not (isEmpty!20113 (_1!20829 lt!1077471))))))

(declare-fun b!3196703 () Bool)

(assert (=> b!3196703 (= e!1992876 e!1992877)))

(declare-fun res!1300634 () Bool)

(assert (=> b!3196703 (= res!1300634 (< (size!27134 (_2!20829 lt!1077471)) (size!27134 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))))))))

(assert (=> b!3196703 (=> (not res!1300634) (not e!1992877))))

(assert (= (and d!874320 c!536647) b!3196703))

(assert (= (and d!874320 (not c!536647)) b!3196699))

(assert (= (and b!3196703 res!1300634) b!3196702))

(assert (= (and d!874320 res!1300636) b!3196701))

(assert (= (and b!3196701 res!1300635) b!3196700))

(declare-fun m!3457539 () Bool)

(assert (=> d!874320 m!3457539))

(assert (=> d!874320 m!3455325))

(assert (=> d!874320 m!3455325))

(declare-fun m!3457541 () Bool)

(assert (=> d!874320 m!3457541))

(declare-fun m!3457543 () Bool)

(assert (=> b!3196700 m!3457543))

(assert (=> b!3196700 m!3455325))

(declare-fun m!3457545 () Bool)

(assert (=> b!3196700 m!3457545))

(assert (=> b!3196700 m!3457545))

(declare-fun m!3457547 () Bool)

(assert (=> b!3196700 m!3457547))

(declare-fun m!3457549 () Bool)

(assert (=> b!3196702 m!3457549))

(declare-fun m!3457551 () Bool)

(assert (=> b!3196703 m!3457551))

(assert (=> b!3196703 m!3455325))

(declare-fun m!3457553 () Bool)

(assert (=> b!3196703 m!3457553))

(declare-fun m!3457555 () Bool)

(assert (=> b!3196701 m!3457555))

(assert (=> b!3196701 m!3455325))

(assert (=> b!3196701 m!3457545))

(assert (=> b!3196701 m!3457545))

(assert (=> b!3196701 m!3457547))

(assert (=> d!873574 d!874320))

(declare-fun d!874322 () Bool)

(declare-fun lt!1077472 () BalanceConc!21124)

(assert (=> d!874322 (= (list!12799 lt!1077472) (printList!1329 thiss!18206 (list!12803 (singletonSeq!2286 (h!41454 tokens!494)))))))

(assert (=> d!874322 (= lt!1077472 (printTailRec!1276 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)) 0 (BalanceConc!21125 Empty!10755)))))

(assert (=> d!874322 (= (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))) lt!1077472)))

(declare-fun bs!540619 () Bool)

(assert (= bs!540619 d!874322))

(declare-fun m!3457557 () Bool)

(assert (=> bs!540619 m!3457557))

(assert (=> bs!540619 m!3454855))

(assert (=> bs!540619 m!3455321))

(assert (=> bs!540619 m!3455321))

(declare-fun m!3457559 () Bool)

(assert (=> bs!540619 m!3457559))

(assert (=> bs!540619 m!3454855))

(declare-fun m!3457561 () Bool)

(assert (=> bs!540619 m!3457561))

(assert (=> d!873574 d!874322))

(declare-fun d!874324 () Bool)

(assert (=> d!874324 (= (list!12803 (singletonSeq!2286 (h!41454 tokens!494))) (list!12804 (c!536198 (singletonSeq!2286 (h!41454 tokens!494)))))))

(declare-fun bs!540620 () Bool)

(assert (= bs!540620 d!874324))

(declare-fun m!3457563 () Bool)

(assert (=> bs!540620 m!3457563))

(assert (=> d!873574 d!874324))

(assert (=> d!873574 d!873484))

(assert (=> d!873574 d!873688))

(declare-fun d!874326 () Bool)

(declare-fun lt!1077473 () Int)

(assert (=> d!874326 (= lt!1077473 (size!27136 (list!12803 (_1!20829 lt!1076682))))))

(assert (=> d!874326 (= lt!1077473 (size!27137 (c!536198 (_1!20829 lt!1076682))))))

(assert (=> d!874326 (= (size!27133 (_1!20829 lt!1076682)) lt!1077473)))

(declare-fun bs!540621 () Bool)

(assert (= bs!540621 d!874326))

(assert (=> bs!540621 m!3456453))

(assert (=> bs!540621 m!3456453))

(declare-fun m!3457565 () Bool)

(assert (=> bs!540621 m!3457565))

(declare-fun m!3457567 () Bool)

(assert (=> bs!540621 m!3457567))

(assert (=> d!873574 d!874326))

(declare-fun d!874328 () Bool)

(assert (=> d!874328 (= (isEmpty!20115 (originalCharacters!5904 (h!41454 tokens!494))) ((_ is Nil!36033) (originalCharacters!5904 (h!41454 tokens!494))))))

(assert (=> d!873472 d!874328))

(declare-fun d!874330 () Bool)

(declare-fun e!1992881 () Bool)

(assert (=> d!874330 e!1992881))

(declare-fun res!1300639 () Bool)

(assert (=> d!874330 (=> (not res!1300639) (not e!1992881))))

(declare-fun lt!1077476 () BalanceConc!21126)

(assert (=> d!874330 (= res!1300639 (= (list!12803 lt!1077476) tokens!494))))

(declare-fun fromList!596 (List!36158) Conc!10756)

(assert (=> d!874330 (= lt!1077476 (BalanceConc!21127 (fromList!596 tokens!494)))))

(assert (=> d!874330 (= (fromListB!1526 tokens!494) lt!1077476)))

(declare-fun b!3196706 () Bool)

(assert (=> b!3196706 (= e!1992881 (isBalanced!3201 (fromList!596 tokens!494)))))

(assert (= (and d!874330 res!1300639) b!3196706))

(declare-fun m!3457569 () Bool)

(assert (=> d!874330 m!3457569))

(declare-fun m!3457571 () Bool)

(assert (=> d!874330 m!3457571))

(assert (=> b!3196706 m!3457571))

(assert (=> b!3196706 m!3457571))

(declare-fun m!3457573 () Bool)

(assert (=> b!3196706 m!3457573))

(assert (=> d!873658 d!874330))

(declare-fun b!3196707 () Bool)

(declare-fun e!1992883 () List!36157)

(assert (=> b!3196707 (= e!1992883 lt!1076594)))

(declare-fun lt!1077477 () List!36157)

(declare-fun e!1992882 () Bool)

(declare-fun b!3196710 () Bool)

(assert (=> b!3196710 (= e!1992882 (or (not (= lt!1076594 Nil!36033)) (= lt!1077477 (t!236612 lt!1076577))))))

(declare-fun b!3196709 () Bool)

(declare-fun res!1300641 () Bool)

(assert (=> b!3196709 (=> (not res!1300641) (not e!1992882))))

(assert (=> b!3196709 (= res!1300641 (= (size!27131 lt!1077477) (+ (size!27131 (t!236612 lt!1076577)) (size!27131 lt!1076594))))))

(declare-fun d!874332 () Bool)

(assert (=> d!874332 e!1992882))

(declare-fun res!1300640 () Bool)

(assert (=> d!874332 (=> (not res!1300640) (not e!1992882))))

(assert (=> d!874332 (= res!1300640 (= (content!4864 lt!1077477) ((_ map or) (content!4864 (t!236612 lt!1076577)) (content!4864 lt!1076594))))))

(assert (=> d!874332 (= lt!1077477 e!1992883)))

(declare-fun c!536649 () Bool)

(assert (=> d!874332 (= c!536649 ((_ is Nil!36033) (t!236612 lt!1076577)))))

(assert (=> d!874332 (= (++!8622 (t!236612 lt!1076577) lt!1076594) lt!1077477)))

(declare-fun b!3196708 () Bool)

(assert (=> b!3196708 (= e!1992883 (Cons!36033 (h!41453 (t!236612 lt!1076577)) (++!8622 (t!236612 (t!236612 lt!1076577)) lt!1076594)))))

(assert (= (and d!874332 c!536649) b!3196707))

(assert (= (and d!874332 (not c!536649)) b!3196708))

(assert (= (and d!874332 res!1300640) b!3196709))

(assert (= (and b!3196709 res!1300641) b!3196710))

(declare-fun m!3457575 () Bool)

(assert (=> b!3196709 m!3457575))

(assert (=> b!3196709 m!3455083))

(assert (=> b!3196709 m!3455111))

(declare-fun m!3457577 () Bool)

(assert (=> d!874332 m!3457577))

(assert (=> d!874332 m!3456067))

(assert (=> d!874332 m!3455117))

(declare-fun m!3457579 () Bool)

(assert (=> b!3196708 m!3457579))

(assert (=> b!3195492 d!874332))

(assert (=> d!873488 d!873574))

(declare-fun d!874334 () Bool)

(assert (=> d!874334 (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 (h!41454 tokens!494))))

(assert (=> d!874334 true))

(declare-fun _$77!782 () Unit!50426)

(assert (=> d!874334 (= (choose!18639 thiss!18206 rules!2135 tokens!494 (h!41454 tokens!494)) _$77!782)))

(declare-fun bs!540626 () Bool)

(assert (= bs!540626 d!874334))

(assert (=> bs!540626 m!3454903))

(assert (=> d!873488 d!874334))

(assert (=> d!873488 d!873484))

(declare-fun d!874360 () Bool)

(declare-fun lt!1077487 () Int)

(assert (=> d!874360 (>= lt!1077487 0)))

(declare-fun e!1992902 () Int)

(assert (=> d!874360 (= lt!1077487 e!1992902)))

(declare-fun c!536655 () Bool)

(assert (=> d!874360 (= c!536655 ((_ is Nil!36033) lt!1076755))))

(assert (=> d!874360 (= (size!27131 lt!1076755) lt!1077487)))

(declare-fun b!3196734 () Bool)

(assert (=> b!3196734 (= e!1992902 0)))

(declare-fun b!3196735 () Bool)

(assert (=> b!3196735 (= e!1992902 (+ 1 (size!27131 (t!236612 lt!1076755))))))

(assert (= (and d!874360 c!536655) b!3196734))

(assert (= (and d!874360 (not c!536655)) b!3196735))

(declare-fun m!3457615 () Bool)

(assert (=> b!3196735 m!3457615))

(assert (=> b!3195489 d!874360))

(declare-fun d!874362 () Bool)

(declare-fun lt!1077488 () Int)

(assert (=> d!874362 (>= lt!1077488 0)))

(declare-fun e!1992903 () Int)

(assert (=> d!874362 (= lt!1077488 e!1992903)))

(declare-fun c!536656 () Bool)

(assert (=> d!874362 (= c!536656 ((_ is Nil!36033) (++!8622 lt!1076577 lt!1076594)))))

(assert (=> d!874362 (= (size!27131 (++!8622 lt!1076577 lt!1076594)) lt!1077488)))

(declare-fun b!3196736 () Bool)

(assert (=> b!3196736 (= e!1992903 0)))

(declare-fun b!3196737 () Bool)

(assert (=> b!3196737 (= e!1992903 (+ 1 (size!27131 (t!236612 (++!8622 lt!1076577 lt!1076594)))))))

(assert (= (and d!874362 c!536656) b!3196736))

(assert (= (and d!874362 (not c!536656)) b!3196737))

(assert (=> b!3196737 m!3456485))

(assert (=> b!3195489 d!874362))

(declare-fun d!874364 () Bool)

(declare-fun lt!1077489 () Int)

(assert (=> d!874364 (>= lt!1077489 0)))

(declare-fun e!1992904 () Int)

(assert (=> d!874364 (= lt!1077489 e!1992904)))

(declare-fun c!536657 () Bool)

(assert (=> d!874364 (= c!536657 ((_ is Nil!36033) lt!1076581))))

(assert (=> d!874364 (= (size!27131 lt!1076581) lt!1077489)))

(declare-fun b!3196738 () Bool)

(assert (=> b!3196738 (= e!1992904 0)))

(declare-fun b!3196739 () Bool)

(assert (=> b!3196739 (= e!1992904 (+ 1 (size!27131 (t!236612 lt!1076581))))))

(assert (= (and d!874364 c!536657) b!3196738))

(assert (= (and d!874364 (not c!536657)) b!3196739))

(declare-fun m!3457617 () Bool)

(assert (=> b!3196739 m!3457617))

(assert (=> b!3195489 d!874364))

(declare-fun d!874366 () Bool)

(assert (=> d!874366 (= (list!12799 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))) (list!12801 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))))))

(declare-fun bs!540627 () Bool)

(assert (= bs!540627 d!874366))

(declare-fun m!3457619 () Bool)

(assert (=> bs!540627 m!3457619))

(assert (=> b!3194980 d!874366))

(declare-fun bs!540628 () Bool)

(declare-fun d!874368 () Bool)

(assert (= bs!540628 (and d!874368 d!873790)))

(declare-fun lambda!117034 () Int)

(assert (=> bs!540628 (= (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241)))) (= lambda!117034 lambda!117005))))

(declare-fun bs!540629 () Bool)

(assert (= bs!540629 (and d!874368 d!873806)))

(assert (=> bs!540629 (= (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (= lambda!117034 lambda!117006))))

(assert (=> d!874368 true))

(assert (=> d!874368 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (h!41455 rules!2135)))) (dynLambda!14510 order!18317 lambda!117034))))

(assert (=> d!874368 (= (equivClasses!2046 (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (h!41455 rules!2135)))) (Forall2!855 lambda!117034))))

(declare-fun bs!540630 () Bool)

(assert (= bs!540630 d!874368))

(declare-fun m!3457621 () Bool)

(assert (=> bs!540630 m!3457621))

(assert (=> b!3195620 d!874368))

(declare-fun d!874370 () Bool)

(declare-fun e!1992907 () Bool)

(assert (=> d!874370 e!1992907))

(declare-fun c!536660 () Bool)

(assert (=> d!874370 (= c!536660 ((_ is EmptyExpr!9949) (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594))))))

(declare-fun lt!1077490 () Bool)

(declare-fun e!1992911 () Bool)

(assert (=> d!874370 (= lt!1077490 e!1992911)))

(declare-fun c!536659 () Bool)

(assert (=> d!874370 (= c!536659 (isEmpty!20115 (tail!5196 lt!1076594)))))

(assert (=> d!874370 (validRegex!4542 (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594)))))

(assert (=> d!874370 (= (matchR!4583 (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594)) (tail!5196 lt!1076594)) lt!1077490)))

(declare-fun b!3196740 () Bool)

(declare-fun e!1992909 () Bool)

(assert (=> b!3196740 (= e!1992907 e!1992909)))

(declare-fun c!536658 () Bool)

(assert (=> b!3196740 (= c!536658 ((_ is EmptyLang!9949) (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594))))))

(declare-fun b!3196741 () Bool)

(assert (=> b!3196741 (= e!1992911 (nullable!3390 (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594))))))

(declare-fun b!3196742 () Bool)

(assert (=> b!3196742 (= e!1992911 (matchR!4583 (derivativeStep!2943 (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594)) (head!7002 (tail!5196 lt!1076594))) (tail!5196 (tail!5196 lt!1076594))))))

(declare-fun b!3196743 () Bool)

(declare-fun e!1992908 () Bool)

(assert (=> b!3196743 (= e!1992908 (= (head!7002 (tail!5196 lt!1076594)) (c!536196 (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594)))))))

(declare-fun bm!231534 () Bool)

(declare-fun call!231539 () Bool)

(assert (=> bm!231534 (= call!231539 (isEmpty!20115 (tail!5196 lt!1076594)))))

(declare-fun b!3196744 () Bool)

(declare-fun res!1300655 () Bool)

(declare-fun e!1992905 () Bool)

(assert (=> b!3196744 (=> res!1300655 e!1992905)))

(assert (=> b!3196744 (= res!1300655 (not ((_ is ElementMatch!9949) (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594)))))))

(assert (=> b!3196744 (= e!1992909 e!1992905)))

(declare-fun b!3196745 () Bool)

(assert (=> b!3196745 (= e!1992907 (= lt!1077490 call!231539))))

(declare-fun b!3196746 () Bool)

(declare-fun res!1300657 () Bool)

(assert (=> b!3196746 (=> res!1300657 e!1992905)))

(assert (=> b!3196746 (= res!1300657 e!1992908)))

(declare-fun res!1300653 () Bool)

(assert (=> b!3196746 (=> (not res!1300653) (not e!1992908))))

(assert (=> b!3196746 (= res!1300653 lt!1077490)))

(declare-fun b!3196747 () Bool)

(assert (=> b!3196747 (= e!1992909 (not lt!1077490))))

(declare-fun b!3196748 () Bool)

(declare-fun e!1992906 () Bool)

(declare-fun e!1992910 () Bool)

(assert (=> b!3196748 (= e!1992906 e!1992910)))

(declare-fun res!1300659 () Bool)

(assert (=> b!3196748 (=> res!1300659 e!1992910)))

(assert (=> b!3196748 (= res!1300659 call!231539)))

(declare-fun b!3196749 () Bool)

(declare-fun res!1300654 () Bool)

(assert (=> b!3196749 (=> (not res!1300654) (not e!1992908))))

(assert (=> b!3196749 (= res!1300654 (isEmpty!20115 (tail!5196 (tail!5196 lt!1076594))))))

(declare-fun b!3196750 () Bool)

(declare-fun res!1300658 () Bool)

(assert (=> b!3196750 (=> (not res!1300658) (not e!1992908))))

(assert (=> b!3196750 (= res!1300658 (not call!231539))))

(declare-fun b!3196751 () Bool)

(assert (=> b!3196751 (= e!1992910 (not (= (head!7002 (tail!5196 lt!1076594)) (c!536196 (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594))))))))

(declare-fun b!3196752 () Bool)

(declare-fun res!1300652 () Bool)

(assert (=> b!3196752 (=> res!1300652 e!1992910)))

(assert (=> b!3196752 (= res!1300652 (not (isEmpty!20115 (tail!5196 (tail!5196 lt!1076594)))))))

(declare-fun b!3196753 () Bool)

(assert (=> b!3196753 (= e!1992905 e!1992906)))

(declare-fun res!1300656 () Bool)

(assert (=> b!3196753 (=> (not res!1300656) (not e!1992906))))

(assert (=> b!3196753 (= res!1300656 (not lt!1077490))))

(assert (= (and d!874370 c!536659) b!3196741))

(assert (= (and d!874370 (not c!536659)) b!3196742))

(assert (= (and d!874370 c!536660) b!3196745))

(assert (= (and d!874370 (not c!536660)) b!3196740))

(assert (= (and b!3196740 c!536658) b!3196747))

(assert (= (and b!3196740 (not c!536658)) b!3196744))

(assert (= (and b!3196744 (not res!1300655)) b!3196746))

(assert (= (and b!3196746 res!1300653) b!3196750))

(assert (= (and b!3196750 res!1300658) b!3196749))

(assert (= (and b!3196749 res!1300654) b!3196743))

(assert (= (and b!3196746 (not res!1300657)) b!3196753))

(assert (= (and b!3196753 res!1300656) b!3196748))

(assert (= (and b!3196748 (not res!1300659)) b!3196752))

(assert (= (and b!3196752 (not res!1300652)) b!3196751))

(assert (= (or b!3196745 b!3196748 b!3196750) bm!231534))

(assert (=> b!3196751 m!3455795))

(declare-fun m!3457623 () Bool)

(assert (=> b!3196751 m!3457623))

(assert (=> b!3196743 m!3455795))

(assert (=> b!3196743 m!3457623))

(assert (=> b!3196742 m!3455795))

(assert (=> b!3196742 m!3457623))

(assert (=> b!3196742 m!3455793))

(assert (=> b!3196742 m!3457623))

(declare-fun m!3457625 () Bool)

(assert (=> b!3196742 m!3457625))

(assert (=> b!3196742 m!3455795))

(declare-fun m!3457627 () Bool)

(assert (=> b!3196742 m!3457627))

(assert (=> b!3196742 m!3457625))

(assert (=> b!3196742 m!3457627))

(declare-fun m!3457629 () Bool)

(assert (=> b!3196742 m!3457629))

(assert (=> b!3196741 m!3455793))

(declare-fun m!3457631 () Bool)

(assert (=> b!3196741 m!3457631))

(assert (=> b!3196749 m!3455795))

(assert (=> b!3196749 m!3457627))

(assert (=> b!3196749 m!3457627))

(declare-fun m!3457633 () Bool)

(assert (=> b!3196749 m!3457633))

(assert (=> b!3196752 m!3455795))

(assert (=> b!3196752 m!3457627))

(assert (=> b!3196752 m!3457627))

(assert (=> b!3196752 m!3457633))

(assert (=> d!874370 m!3455795))

(assert (=> d!874370 m!3455801))

(assert (=> d!874370 m!3455793))

(declare-fun m!3457635 () Bool)

(assert (=> d!874370 m!3457635))

(assert (=> bm!231534 m!3455795))

(assert (=> bm!231534 m!3455801))

(assert (=> b!3195624 d!874370))

(declare-fun b!3196800 () Bool)

(declare-fun e!1992935 () Regex!9949)

(assert (=> b!3196800 (= e!1992935 EmptyLang!9949)))

(declare-fun call!231549 () Regex!9949)

(declare-fun bm!231543 () Bool)

(declare-fun c!536675 () Bool)

(declare-fun c!536676 () Bool)

(assert (=> bm!231543 (= call!231549 (derivativeStep!2943 (ite c!536676 (regTwo!20411 (regex!5190 lt!1076588)) (ite c!536675 (reg!10278 (regex!5190 lt!1076588)) (regOne!20410 (regex!5190 lt!1076588)))) (head!7002 lt!1076594)))))

(declare-fun bm!231544 () Bool)

(declare-fun call!231551 () Regex!9949)

(assert (=> bm!231544 (= call!231551 call!231549)))

(declare-fun call!231548 () Regex!9949)

(declare-fun call!231550 () Regex!9949)

(declare-fun b!3196801 () Bool)

(declare-fun e!1992936 () Regex!9949)

(assert (=> b!3196801 (= e!1992936 (Union!9949 (Concat!15369 call!231550 (regTwo!20410 (regex!5190 lt!1076588))) call!231548))))

(declare-fun bm!231546 () Bool)

(assert (=> bm!231546 (= call!231550 call!231551)))

(declare-fun b!3196802 () Bool)

(assert (=> b!3196802 (= c!536676 ((_ is Union!9949) (regex!5190 lt!1076588)))))

(declare-fun e!1992937 () Regex!9949)

(declare-fun e!1992933 () Regex!9949)

(assert (=> b!3196802 (= e!1992937 e!1992933)))

(declare-fun b!3196803 () Bool)

(assert (=> b!3196803 (= e!1992933 (Union!9949 call!231548 call!231549))))

(declare-fun b!3196804 () Bool)

(declare-fun e!1992934 () Regex!9949)

(assert (=> b!3196804 (= e!1992933 e!1992934)))

(assert (=> b!3196804 (= c!536675 ((_ is Star!9949) (regex!5190 lt!1076588)))))

(declare-fun b!3196805 () Bool)

(assert (=> b!3196805 (= e!1992935 e!1992937)))

(declare-fun c!536674 () Bool)

(assert (=> b!3196805 (= c!536674 ((_ is ElementMatch!9949) (regex!5190 lt!1076588)))))

(declare-fun bm!231545 () Bool)

(assert (=> bm!231545 (= call!231548 (derivativeStep!2943 (ite c!536676 (regOne!20411 (regex!5190 lt!1076588)) (regTwo!20410 (regex!5190 lt!1076588))) (head!7002 lt!1076594)))))

(declare-fun d!874372 () Bool)

(declare-fun lt!1077518 () Regex!9949)

(assert (=> d!874372 (validRegex!4542 lt!1077518)))

(assert (=> d!874372 (= lt!1077518 e!1992935)))

(declare-fun c!536678 () Bool)

(assert (=> d!874372 (= c!536678 (or ((_ is EmptyExpr!9949) (regex!5190 lt!1076588)) ((_ is EmptyLang!9949) (regex!5190 lt!1076588))))))

(assert (=> d!874372 (validRegex!4542 (regex!5190 lt!1076588))))

(assert (=> d!874372 (= (derivativeStep!2943 (regex!5190 lt!1076588) (head!7002 lt!1076594)) lt!1077518)))

(declare-fun b!3196806 () Bool)

(assert (=> b!3196806 (= e!1992937 (ite (= (head!7002 lt!1076594) (c!536196 (regex!5190 lt!1076588))) EmptyExpr!9949 EmptyLang!9949))))

(declare-fun b!3196807 () Bool)

(declare-fun c!536677 () Bool)

(assert (=> b!3196807 (= c!536677 (nullable!3390 (regOne!20410 (regex!5190 lt!1076588))))))

(assert (=> b!3196807 (= e!1992934 e!1992936)))

(declare-fun b!3196808 () Bool)

(assert (=> b!3196808 (= e!1992936 (Union!9949 (Concat!15369 call!231550 (regTwo!20410 (regex!5190 lt!1076588))) EmptyLang!9949))))

(declare-fun b!3196809 () Bool)

(assert (=> b!3196809 (= e!1992934 (Concat!15369 call!231551 (regex!5190 lt!1076588)))))

(assert (= (and d!874372 c!536678) b!3196800))

(assert (= (and d!874372 (not c!536678)) b!3196805))

(assert (= (and b!3196805 c!536674) b!3196806))

(assert (= (and b!3196805 (not c!536674)) b!3196802))

(assert (= (and b!3196802 c!536676) b!3196803))

(assert (= (and b!3196802 (not c!536676)) b!3196804))

(assert (= (and b!3196804 c!536675) b!3196809))

(assert (= (and b!3196804 (not c!536675)) b!3196807))

(assert (= (and b!3196807 c!536677) b!3196801))

(assert (= (and b!3196807 (not c!536677)) b!3196808))

(assert (= (or b!3196801 b!3196808) bm!231546))

(assert (= (or b!3196809 bm!231546) bm!231544))

(assert (= (or b!3196803 b!3196801) bm!231545))

(assert (= (or b!3196803 bm!231544) bm!231543))

(assert (=> bm!231543 m!3455791))

(declare-fun m!3457667 () Bool)

(assert (=> bm!231543 m!3457667))

(assert (=> bm!231545 m!3455791))

(declare-fun m!3457669 () Bool)

(assert (=> bm!231545 m!3457669))

(declare-fun m!3457671 () Bool)

(assert (=> d!874372 m!3457671))

(assert (=> d!874372 m!3455805))

(declare-fun m!3457673 () Bool)

(assert (=> b!3196807 m!3457673))

(assert (=> b!3195624 d!874372))

(declare-fun d!874382 () Bool)

(assert (=> d!874382 (= (head!7002 lt!1076594) (h!41453 lt!1076594))))

(assert (=> b!3195624 d!874382))

(assert (=> b!3195624 d!873800))

(declare-fun d!874384 () Bool)

(declare-fun e!1992949 () Bool)

(assert (=> d!874384 e!1992949))

(declare-fun res!1300690 () Bool)

(assert (=> d!874384 (=> (not res!1300690) (not e!1992949))))

(declare-fun lt!1077521 () BalanceConc!21124)

(assert (=> d!874384 (= res!1300690 (= (list!12799 lt!1077521) lt!1076577))))

(declare-fun fromList!597 (List!36157) Conc!10755)

(assert (=> d!874384 (= lt!1077521 (BalanceConc!21125 (fromList!597 lt!1076577)))))

(assert (=> d!874384 (= (fromListB!1524 lt!1076577) lt!1077521)))

(declare-fun b!3196830 () Bool)

(assert (=> b!3196830 (= e!1992949 (isBalanced!3202 (fromList!597 lt!1076577)))))

(assert (= (and d!874384 res!1300690) b!3196830))

(declare-fun m!3457713 () Bool)

(assert (=> d!874384 m!3457713))

(declare-fun m!3457715 () Bool)

(assert (=> d!874384 m!3457715))

(assert (=> b!3196830 m!3457715))

(assert (=> b!3196830 m!3457715))

(declare-fun m!3457717 () Bool)

(assert (=> b!3196830 m!3457717))

(assert (=> d!873482 d!874384))

(declare-fun d!874402 () Bool)

(assert (=> d!874402 (= (list!12799 lt!1076806) (list!12801 (c!536197 lt!1076806)))))

(declare-fun bs!540634 () Bool)

(assert (= bs!540634 d!874402))

(declare-fun m!3457719 () Bool)

(assert (=> bs!540634 m!3457719))

(assert (=> d!873682 d!874402))

(declare-fun d!874404 () Bool)

(declare-fun c!536685 () Bool)

(assert (=> d!874404 (= c!536685 ((_ is Cons!36034) (list!12803 lt!1076571)))))

(declare-fun e!1992950 () List!36157)

(assert (=> d!874404 (= (printList!1329 thiss!18206 (list!12803 lt!1076571)) e!1992950)))

(declare-fun b!3196831 () Bool)

(assert (=> b!3196831 (= e!1992950 (++!8622 (list!12799 (charsOf!3206 (h!41454 (list!12803 lt!1076571)))) (printList!1329 thiss!18206 (t!236613 (list!12803 lt!1076571)))))))

(declare-fun b!3196832 () Bool)

(assert (=> b!3196832 (= e!1992950 Nil!36033)))

(assert (= (and d!874404 c!536685) b!3196831))

(assert (= (and d!874404 (not c!536685)) b!3196832))

(declare-fun m!3457721 () Bool)

(assert (=> b!3196831 m!3457721))

(assert (=> b!3196831 m!3457721))

(declare-fun m!3457723 () Bool)

(assert (=> b!3196831 m!3457723))

(declare-fun m!3457725 () Bool)

(assert (=> b!3196831 m!3457725))

(assert (=> b!3196831 m!3457723))

(assert (=> b!3196831 m!3457725))

(declare-fun m!3457727 () Bool)

(assert (=> b!3196831 m!3457727))

(assert (=> d!873682 d!874404))

(assert (=> d!873682 d!874206))

(assert (=> d!873682 d!873672))

(declare-fun d!874406 () Bool)

(declare-fun lt!1077522 () Bool)

(assert (=> d!874406 (= lt!1077522 (isEmpty!20116 (list!12803 (_1!20829 lt!1076605))))))

(assert (=> d!874406 (= lt!1077522 (isEmpty!20117 (c!536198 (_1!20829 lt!1076605))))))

(assert (=> d!874406 (= (isEmpty!20113 (_1!20829 lt!1076605)) lt!1077522)))

(declare-fun bs!540636 () Bool)

(assert (= bs!540636 d!874406))

(assert (=> bs!540636 m!3454975))

(assert (=> bs!540636 m!3454975))

(declare-fun m!3457731 () Bool)

(assert (=> bs!540636 m!3457731))

(declare-fun m!3457733 () Bool)

(assert (=> bs!540636 m!3457733))

(assert (=> b!3195013 d!874406))

(declare-fun d!874410 () Bool)

(assert (=> d!874410 (= (nullable!3390 (regex!5190 lt!1076584)) (nullableFct!960 (regex!5190 lt!1076584)))))

(declare-fun bs!540637 () Bool)

(assert (= bs!540637 d!874410))

(declare-fun m!3457735 () Bool)

(assert (=> bs!540637 m!3457735))

(assert (=> b!3195238 d!874410))

(declare-fun b!3196847 () Bool)

(declare-fun e!1992959 () List!36157)

(assert (=> b!3196847 (= e!1992959 (list!12799 (charsOf!3206 separatorToken!241)))))

(declare-fun e!1992958 () Bool)

(declare-fun lt!1077524 () List!36157)

(declare-fun b!3196850 () Bool)

(assert (=> b!3196850 (= e!1992958 (or (not (= (list!12799 (charsOf!3206 separatorToken!241)) Nil!36033)) (= lt!1077524 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))))))

(declare-fun b!3196849 () Bool)

(declare-fun res!1300700 () Bool)

(assert (=> b!3196849 (=> (not res!1300700) (not e!1992958))))

(assert (=> b!3196849 (= res!1300700 (= (size!27131 lt!1077524) (+ (size!27131 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) (size!27131 (list!12799 (charsOf!3206 separatorToken!241))))))))

(declare-fun d!874412 () Bool)

(assert (=> d!874412 e!1992958))

(declare-fun res!1300699 () Bool)

(assert (=> d!874412 (=> (not res!1300699) (not e!1992958))))

(assert (=> d!874412 (= res!1300699 (= (content!4864 lt!1077524) ((_ map or) (content!4864 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) (content!4864 (list!12799 (charsOf!3206 separatorToken!241))))))))

(assert (=> d!874412 (= lt!1077524 e!1992959)))

(declare-fun c!536689 () Bool)

(assert (=> d!874412 (= c!536689 ((_ is Nil!36033) (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))

(assert (=> d!874412 (= (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241))) lt!1077524)))

(declare-fun b!3196848 () Bool)

(assert (=> b!3196848 (= e!1992959 (Cons!36033 (h!41453 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) (++!8622 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) (list!12799 (charsOf!3206 separatorToken!241)))))))

(assert (= (and d!874412 c!536689) b!3196847))

(assert (= (and d!874412 (not c!536689)) b!3196848))

(assert (= (and d!874412 res!1300699) b!3196849))

(assert (= (and b!3196849 res!1300700) b!3196850))

(declare-fun m!3457737 () Bool)

(assert (=> b!3196849 m!3457737))

(assert (=> b!3196849 m!3454819))

(assert (=> b!3196849 m!3455135))

(assert (=> b!3196849 m!3454823))

(assert (=> b!3196849 m!3455989))

(declare-fun m!3457739 () Bool)

(assert (=> d!874412 m!3457739))

(assert (=> d!874412 m!3454819))

(assert (=> d!874412 m!3455139))

(assert (=> d!874412 m!3454823))

(assert (=> d!874412 m!3455995))

(assert (=> b!3196848 m!3454823))

(declare-fun m!3457741 () Bool)

(assert (=> b!3196848 m!3457741))

(assert (=> b!3195151 d!874412))

(assert (=> b!3195151 d!873526))

(assert (=> b!3195151 d!873520))

(assert (=> b!3195151 d!873522))

(declare-fun b!3196851 () Bool)

(declare-fun e!1992961 () List!36157)

(assert (=> b!3196851 (= e!1992961 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241))))

(declare-fun lt!1077525 () List!36157)

(declare-fun e!1992960 () Bool)

(declare-fun b!3196854 () Bool)

(assert (=> b!3196854 (= e!1992960 (or (not (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241) Nil!36033)) (= lt!1077525 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241))))))))

(declare-fun b!3196853 () Bool)

(declare-fun res!1300702 () Bool)

(assert (=> b!3196853 (=> (not res!1300702) (not e!1992960))))

(assert (=> b!3196853 (= res!1300702 (= (size!27131 lt!1077525) (+ (size!27131 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241)))) (size!27131 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(declare-fun d!874414 () Bool)

(assert (=> d!874414 e!1992960))

(declare-fun res!1300701 () Bool)

(assert (=> d!874414 (=> (not res!1300701) (not e!1992960))))

(assert (=> d!874414 (= res!1300701 (= (content!4864 lt!1077525) ((_ map or) (content!4864 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241)))) (content!4864 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(assert (=> d!874414 (= lt!1077525 e!1992961)))

(declare-fun c!536690 () Bool)

(assert (=> d!874414 (= c!536690 ((_ is Nil!36033) (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241)))))))

(assert (=> d!874414 (= (++!8622 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)) lt!1077525)))

(declare-fun b!3196852 () Bool)

(assert (=> b!3196852 (= e!1992961 (Cons!36033 (h!41453 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241)))) (++!8622 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) (list!12799 (charsOf!3206 separatorToken!241)))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241))))))

(assert (= (and d!874414 c!536690) b!3196851))

(assert (= (and d!874414 (not c!536690)) b!3196852))

(assert (= (and d!874414 res!1300701) b!3196853))

(assert (= (and b!3196853 res!1300702) b!3196854))

(declare-fun m!3457755 () Bool)

(assert (=> b!3196853 m!3457755))

(assert (=> b!3196853 m!3455153))

(declare-fun m!3457761 () Bool)

(assert (=> b!3196853 m!3457761))

(assert (=> b!3196853 m!3454821))

(assert (=> b!3196853 m!3455099))

(declare-fun m!3457763 () Bool)

(assert (=> d!874414 m!3457763))

(assert (=> d!874414 m!3455153))

(declare-fun m!3457765 () Bool)

(assert (=> d!874414 m!3457765))

(assert (=> d!874414 m!3454821))

(assert (=> d!874414 m!3455105))

(assert (=> b!3196852 m!3454821))

(declare-fun m!3457767 () Bool)

(assert (=> b!3196852 m!3457767))

(assert (=> b!3195151 d!874414))

(assert (=> b!3195151 d!873530))

(assert (=> b!3195151 d!873532))

(declare-fun d!874418 () Bool)

(assert (=> d!874418 (= (inv!48873 (tag!5708 (h!41455 (t!236614 rules!2135)))) (= (mod (str.len (value!168374 (tag!5708 (h!41455 (t!236614 rules!2135))))) 2) 0))))

(assert (=> b!3195645 d!874418))

(declare-fun d!874420 () Bool)

(declare-fun res!1300704 () Bool)

(declare-fun e!1992964 () Bool)

(assert (=> d!874420 (=> (not res!1300704) (not e!1992964))))

(assert (=> d!874420 (= res!1300704 (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135))))))))

(assert (=> d!874420 (= (inv!48876 (transformation!5190 (h!41455 (t!236614 rules!2135)))) e!1992964)))

(declare-fun b!3196858 () Bool)

(assert (=> b!3196858 (= e!1992964 (equivClasses!2046 (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135))))))))

(assert (= (and d!874420 res!1300704) b!3196858))

(declare-fun m!3457773 () Bool)

(assert (=> d!874420 m!3457773))

(declare-fun m!3457775 () Bool)

(assert (=> b!3196858 m!3457775))

(assert (=> b!3195645 d!874420))

(declare-fun b!3196862 () Bool)

(declare-fun e!1992966 () List!36157)

(assert (=> b!3196862 (= e!1992966 (++!8622 (list!12801 (left!28000 (c!536197 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))) (list!12801 (right!28330 (c!536197 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))))

(declare-fun b!3196859 () Bool)

(declare-fun e!1992965 () List!36157)

(assert (=> b!3196859 (= e!1992965 Nil!36033)))

(declare-fun b!3196860 () Bool)

(assert (=> b!3196860 (= e!1992965 e!1992966)))

(declare-fun c!536693 () Bool)

(assert (=> b!3196860 (= c!536693 ((_ is Leaf!16961) (c!536197 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))

(declare-fun d!874424 () Bool)

(declare-fun c!536692 () Bool)

(assert (=> d!874424 (= c!536692 ((_ is Empty!10755) (c!536197 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))

(assert (=> d!874424 (= (list!12801 (c!536197 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) e!1992965)))

(declare-fun b!3196861 () Bool)

(assert (=> b!3196861 (= e!1992966 (list!12805 (xs!13873 (c!536197 (charsOf!3206 (h!41454 (t!236613 tokens!494)))))))))

(assert (= (and d!874424 c!536692) b!3196859))

(assert (= (and d!874424 (not c!536692)) b!3196860))

(assert (= (and b!3196860 c!536693) b!3196861))

(assert (= (and b!3196860 (not c!536693)) b!3196862))

(declare-fun m!3457777 () Bool)

(assert (=> b!3196862 m!3457777))

(declare-fun m!3457779 () Bool)

(assert (=> b!3196862 m!3457779))

(assert (=> b!3196862 m!3457777))

(assert (=> b!3196862 m!3457779))

(declare-fun m!3457781 () Bool)

(assert (=> b!3196862 m!3457781))

(declare-fun m!3457783 () Bool)

(assert (=> b!3196861 m!3457783))

(assert (=> d!873522 d!874424))

(declare-fun d!874426 () Bool)

(declare-fun res!1300705 () Bool)

(declare-fun e!1992967 () Bool)

(assert (=> d!874426 (=> res!1300705 e!1992967)))

(assert (=> d!874426 (= res!1300705 ((_ is Nil!36034) (list!12803 (seqFromList!3451 tokens!494))))))

(assert (=> d!874426 (= (forall!7330 (list!12803 (seqFromList!3451 tokens!494)) lambda!116999) e!1992967)))

(declare-fun b!3196863 () Bool)

(declare-fun e!1992968 () Bool)

(assert (=> b!3196863 (= e!1992967 e!1992968)))

(declare-fun res!1300706 () Bool)

(assert (=> b!3196863 (=> (not res!1300706) (not e!1992968))))

(assert (=> b!3196863 (= res!1300706 (dynLambda!14501 lambda!116999 (h!41454 (list!12803 (seqFromList!3451 tokens!494)))))))

(declare-fun b!3196864 () Bool)

(assert (=> b!3196864 (= e!1992968 (forall!7330 (t!236613 (list!12803 (seqFromList!3451 tokens!494))) lambda!116999))))

(assert (= (and d!874426 (not res!1300705)) b!3196863))

(assert (= (and b!3196863 res!1300706) b!3196864))

(declare-fun b_lambda!87263 () Bool)

(assert (=> (not b_lambda!87263) (not b!3196863)))

(declare-fun m!3457787 () Bool)

(assert (=> b!3196863 m!3457787))

(declare-fun m!3457789 () Bool)

(assert (=> b!3196864 m!3457789))

(assert (=> d!873580 d!874426))

(assert (=> d!873580 d!874132))

(declare-fun d!874430 () Bool)

(declare-fun lt!1077529 () Bool)

(assert (=> d!874430 (= lt!1077529 (forall!7330 (list!12803 (seqFromList!3451 tokens!494)) lambda!116999))))

(declare-fun forall!7335 (Conc!10756 Int) Bool)

(assert (=> d!874430 (= lt!1077529 (forall!7335 (c!536198 (seqFromList!3451 tokens!494)) lambda!116999))))

(assert (=> d!874430 (= (forall!7332 (seqFromList!3451 tokens!494) lambda!116999) lt!1077529)))

(declare-fun bs!540642 () Bool)

(assert (= bs!540642 d!874430))

(assert (=> bs!540642 m!3454907))

(assert (=> bs!540642 m!3455599))

(assert (=> bs!540642 m!3455599))

(assert (=> bs!540642 m!3455601))

(declare-fun m!3457801 () Bool)

(assert (=> bs!540642 m!3457801))

(assert (=> d!873580 d!874430))

(assert (=> d!873580 d!873484))

(declare-fun d!874436 () Bool)

(assert (=> d!874436 (= (isEmpty!20118 lt!1076639) (not ((_ is Some!7070) lt!1076639)))))

(assert (=> d!873502 d!874436))

(assert (=> d!873502 d!873474))

(declare-fun e!1992973 () List!36157)

(declare-fun b!3196871 () Bool)

(assert (=> b!3196871 (= e!1992973 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241))))

(declare-fun e!1992972 () Bool)

(declare-fun lt!1077530 () List!36157)

(declare-fun b!3196874 () Bool)

(assert (=> b!3196874 (= e!1992972 (or (not (= (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241) Nil!36033)) (= lt!1077530 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)))))))

(declare-fun b!3196873 () Bool)

(declare-fun res!1300712 () Bool)

(assert (=> b!3196873 (=> (not res!1300712) (not e!1992972))))

(assert (=> b!3196873 (= res!1300712 (= (size!27131 lt!1077530) (+ (size!27131 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594))) (size!27131 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(declare-fun d!874438 () Bool)

(assert (=> d!874438 e!1992972))

(declare-fun res!1300711 () Bool)

(assert (=> d!874438 (=> (not res!1300711) (not e!1992972))))

(assert (=> d!874438 (= res!1300711 (= (content!4864 lt!1077530) ((_ map or) (content!4864 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594))) (content!4864 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(assert (=> d!874438 (= lt!1077530 e!1992973)))

(declare-fun c!536695 () Bool)

(assert (=> d!874438 (= c!536695 ((_ is Nil!36033) (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594))))))

(assert (=> d!874438 (= (++!8622 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)) lt!1077530)))

(declare-fun b!3196872 () Bool)

(assert (=> b!3196872 (= e!1992973 (Cons!36033 (h!41453 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594))) (++!8622 (t!236612 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594))) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241))))))

(assert (= (and d!874438 c!536695) b!3196871))

(assert (= (and d!874438 (not c!536695)) b!3196872))

(assert (= (and d!874438 res!1300711) b!3196873))

(assert (= (and b!3196873 res!1300712) b!3196874))

(declare-fun m!3457811 () Bool)

(assert (=> b!3196873 m!3457811))

(declare-fun m!3457813 () Bool)

(assert (=> b!3196873 m!3457813))

(assert (=> b!3196873 m!3454821))

(assert (=> b!3196873 m!3455099))

(declare-fun m!3457815 () Bool)

(assert (=> d!874438 m!3457815))

(declare-fun m!3457817 () Bool)

(assert (=> d!874438 m!3457817))

(assert (=> d!874438 m!3454821))

(assert (=> d!874438 m!3455105))

(assert (=> b!3196872 m!3454821))

(declare-fun m!3457823 () Bool)

(assert (=> b!3196872 m!3457823))

(assert (=> b!3195137 d!874438))

(declare-fun d!874448 () Bool)

(assert (=> d!874448 (= (list!12799 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))) (list!12801 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))))))

(declare-fun bs!540644 () Bool)

(assert (= bs!540644 d!874448))

(declare-fun m!3457825 () Bool)

(assert (=> bs!540644 m!3457825))

(assert (=> b!3195254 d!874448))

(declare-fun d!874450 () Bool)

(assert (=> d!874450 (= (inv!17 (value!168375 separatorToken!241)) (= (charsToBigInt!1 (text!38388 (value!168375 separatorToken!241))) (value!168367 (value!168375 separatorToken!241))))))

(declare-fun bs!540645 () Bool)

(assert (= bs!540645 d!874450))

(declare-fun m!3457827 () Bool)

(assert (=> bs!540645 m!3457827))

(assert (=> b!3194998 d!874450))

(declare-fun d!874452 () Bool)

(declare-fun lt!1077531 () Bool)

(assert (=> d!874452 (= lt!1077531 (isEmpty!20115 (list!12799 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))))))))))

(assert (=> d!874452 (= lt!1077531 (isEmpty!20127 (c!536197 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494))))))))))

(assert (=> d!874452 (= (isEmpty!20123 (_2!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 (h!41454 tokens!494)))))) lt!1077531)))

(declare-fun bs!540646 () Bool)

(assert (= bs!540646 d!874452))

(declare-fun m!3457829 () Bool)

(assert (=> bs!540646 m!3457829))

(assert (=> bs!540646 m!3457829))

(declare-fun m!3457831 () Bool)

(assert (=> bs!540646 m!3457831))

(declare-fun m!3457833 () Bool)

(assert (=> bs!540646 m!3457833))

(assert (=> b!3195258 d!874452))

(assert (=> b!3195258 d!874320))

(assert (=> b!3195258 d!874322))

(assert (=> b!3195258 d!873688))

(declare-fun b!3196879 () Bool)

(declare-fun e!1992976 () List!36157)

(assert (=> b!3196879 (= e!1992976 (++!8622 (list!12801 (left!28000 (c!536197 lt!1076574))) (list!12801 (right!28330 (c!536197 lt!1076574)))))))

(declare-fun b!3196876 () Bool)

(declare-fun e!1992975 () List!36157)

(assert (=> b!3196876 (= e!1992975 Nil!36033)))

(declare-fun b!3196877 () Bool)

(assert (=> b!3196877 (= e!1992975 e!1992976)))

(declare-fun c!536697 () Bool)

(assert (=> b!3196877 (= c!536697 ((_ is Leaf!16961) (c!536197 lt!1076574)))))

(declare-fun d!874454 () Bool)

(declare-fun c!536696 () Bool)

(assert (=> d!874454 (= c!536696 ((_ is Empty!10755) (c!536197 lt!1076574)))))

(assert (=> d!874454 (= (list!12801 (c!536197 lt!1076574)) e!1992975)))

(declare-fun b!3196878 () Bool)

(assert (=> b!3196878 (= e!1992976 (list!12805 (xs!13873 (c!536197 lt!1076574))))))

(assert (= (and d!874454 c!536696) b!3196876))

(assert (= (and d!874454 (not c!536696)) b!3196877))

(assert (= (and b!3196877 c!536697) b!3196878))

(assert (= (and b!3196877 (not c!536697)) b!3196879))

(declare-fun m!3457837 () Bool)

(assert (=> b!3196879 m!3457837))

(declare-fun m!3457839 () Bool)

(assert (=> b!3196879 m!3457839))

(assert (=> b!3196879 m!3457837))

(assert (=> b!3196879 m!3457839))

(declare-fun m!3457841 () Bool)

(assert (=> b!3196879 m!3457841))

(declare-fun m!3457843 () Bool)

(assert (=> b!3196878 m!3457843))

(assert (=> d!873686 d!874454))

(declare-fun d!874458 () Bool)

(declare-fun lt!1077533 () Int)

(assert (=> d!874458 (>= lt!1077533 0)))

(declare-fun e!1992978 () Int)

(assert (=> d!874458 (= lt!1077533 e!1992978)))

(declare-fun c!536699 () Bool)

(assert (=> d!874458 (= c!536699 ((_ is Nil!36033) lt!1076650))))

(assert (=> d!874458 (= (size!27131 lt!1076650) lt!1077533)))

(declare-fun b!3196882 () Bool)

(assert (=> b!3196882 (= e!1992978 0)))

(declare-fun b!3196883 () Bool)

(assert (=> b!3196883 (= e!1992978 (+ 1 (size!27131 (t!236612 lt!1076650))))))

(assert (= (and d!874458 c!536699) b!3196882))

(assert (= (and d!874458 (not c!536699)) b!3196883))

(declare-fun m!3457847 () Bool)

(assert (=> b!3196883 m!3457847))

(assert (=> b!3195142 d!874458))

(declare-fun d!874462 () Bool)

(declare-fun lt!1077534 () Int)

(assert (=> d!874462 (>= lt!1077534 0)))

(declare-fun e!1992979 () Int)

(assert (=> d!874462 (= lt!1077534 e!1992979)))

(declare-fun c!536700 () Bool)

(assert (=> d!874462 (= c!536700 ((_ is Nil!36033) lt!1076594))))

(assert (=> d!874462 (= (size!27131 lt!1076594) lt!1077534)))

(declare-fun b!3196884 () Bool)

(assert (=> b!3196884 (= e!1992979 0)))

(declare-fun b!3196885 () Bool)

(assert (=> b!3196885 (= e!1992979 (+ 1 (size!27131 (t!236612 lt!1076594))))))

(assert (= (and d!874462 c!536700) b!3196884))

(assert (= (and d!874462 (not c!536700)) b!3196885))

(assert (=> b!3196885 m!3457301))

(assert (=> b!3195142 d!874462))

(assert (=> b!3195142 d!874364))

(declare-fun b!3196900 () Bool)

(declare-fun e!1992988 () List!36157)

(declare-fun call!231554 () List!36157)

(assert (=> b!3196900 (= e!1992988 call!231554)))

(declare-fun b!3196901 () Bool)

(declare-fun e!1992990 () List!36157)

(assert (=> b!3196901 (= e!1992990 (Cons!36033 (c!536196 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) Nil!36033))))

(declare-fun b!3196902 () Bool)

(declare-fun e!1992989 () List!36157)

(declare-fun call!231555 () List!36157)

(assert (=> b!3196902 (= e!1992989 call!231555)))

(declare-fun b!3196903 () Bool)

(assert (=> b!3196903 (= e!1992989 call!231555)))

(declare-fun call!231557 () List!36157)

(declare-fun c!536706 () Bool)

(declare-fun bm!231549 () Bool)

(assert (=> bm!231549 (= call!231557 (usedCharacters!506 (ite c!536706 (regOne!20411 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) (regTwo!20410 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))))))))

(declare-fun bm!231550 () Bool)

(declare-fun call!231556 () List!36157)

(assert (=> bm!231550 (= call!231555 (++!8622 (ite c!536706 call!231557 call!231556) (ite c!536706 call!231556 call!231557)))))

(declare-fun c!536705 () Bool)

(declare-fun bm!231551 () Bool)

(assert (=> bm!231551 (= call!231554 (usedCharacters!506 (ite c!536705 (reg!10278 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) (ite c!536706 (regTwo!20411 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) (regOne!20410 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241)))))))))))

(declare-fun d!874464 () Bool)

(declare-fun c!536707 () Bool)

(assert (=> d!874464 (= c!536707 (or ((_ is EmptyExpr!9949) (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) ((_ is EmptyLang!9949) (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241)))))))))

(declare-fun e!1992987 () List!36157)

(assert (=> d!874464 (= (usedCharacters!506 (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) e!1992987)))

(declare-fun b!3196904 () Bool)

(assert (=> b!3196904 (= e!1992987 e!1992990)))

(declare-fun c!536704 () Bool)

(assert (=> b!3196904 (= c!536704 ((_ is ElementMatch!9949) (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))))))

(declare-fun b!3196905 () Bool)

(assert (=> b!3196905 (= e!1992987 Nil!36033)))

(declare-fun bm!231552 () Bool)

(assert (=> bm!231552 (= call!231556 call!231554)))

(declare-fun b!3196906 () Bool)

(assert (=> b!3196906 (= e!1992988 e!1992989)))

(assert (=> b!3196906 (= c!536706 ((_ is Union!9949) (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))))))

(declare-fun b!3196907 () Bool)

(assert (=> b!3196907 (= c!536705 ((_ is Star!9949) (ite c!536227 (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))))))

(assert (=> b!3196907 (= e!1992990 e!1992988)))

(assert (= (and d!874464 c!536707) b!3196905))

(assert (= (and d!874464 (not c!536707)) b!3196904))

(assert (= (and b!3196904 c!536704) b!3196901))

(assert (= (and b!3196904 (not c!536704)) b!3196907))

(assert (= (and b!3196907 c!536705) b!3196900))

(assert (= (and b!3196907 (not c!536705)) b!3196906))

(assert (= (and b!3196906 c!536706) b!3196902))

(assert (= (and b!3196906 (not c!536706)) b!3196903))

(assert (= (or b!3196902 b!3196903) bm!231552))

(assert (= (or b!3196902 b!3196903) bm!231549))

(assert (= (or b!3196902 b!3196903) bm!231550))

(assert (= (or b!3196900 bm!231552) bm!231551))

(declare-fun m!3457849 () Bool)

(assert (=> bm!231549 m!3457849))

(declare-fun m!3457851 () Bool)

(assert (=> bm!231550 m!3457851))

(declare-fun m!3457855 () Bool)

(assert (=> bm!231551 m!3457855))

(assert (=> bm!231390 d!874464))

(declare-fun d!874466 () Bool)

(assert (=> d!874466 (= (isDefined!5518 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))) (not (isEmpty!20118 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))

(declare-fun bs!540651 () Bool)

(assert (= bs!540651 d!874466))

(assert (=> bs!540651 m!3454863))

(declare-fun m!3457861 () Bool)

(assert (=> bs!540651 m!3457861))

(assert (=> d!873490 d!874466))

(assert (=> d!873490 d!873502))

(declare-fun d!874468 () Bool)

(declare-fun e!1992991 () Bool)

(assert (=> d!874468 e!1992991))

(declare-fun res!1300722 () Bool)

(assert (=> d!874468 (=> (not res!1300722) (not e!1992991))))

(assert (=> d!874468 (= res!1300722 (isDefined!5518 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494))))))))

(assert (=> d!874468 true))

(declare-fun _$52!1503 () Unit!50426)

(assert (=> d!874468 (= (choose!18640 thiss!18206 rules!2135 lt!1076577 (h!41454 tokens!494)) _$52!1503)))

(declare-fun b!3196908 () Bool)

(declare-fun res!1300723 () Bool)

(assert (=> b!3196908 (=> (not res!1300723) (not e!1992991))))

(assert (=> b!3196908 (= res!1300723 (matchR!4583 (regex!5190 (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))) (list!12799 (charsOf!3206 (h!41454 tokens!494)))))))

(declare-fun b!3196909 () Bool)

(assert (=> b!3196909 (= e!1992991 (= (rule!7622 (h!41454 tokens!494)) (get!11458 (getRuleFromTag!895 thiss!18206 rules!2135 (tag!5708 (rule!7622 (h!41454 tokens!494)))))))))

(assert (= (and d!874468 res!1300722) b!3196908))

(assert (= (and b!3196908 res!1300723) b!3196909))

(assert (=> d!874468 m!3454863))

(assert (=> d!874468 m!3454863))

(assert (=> d!874468 m!3454983))

(assert (=> b!3196908 m!3454889))

(assert (=> b!3196908 m!3454891))

(assert (=> b!3196908 m!3454863))

(assert (=> b!3196908 m!3454987))

(assert (=> b!3196908 m!3454891))

(assert (=> b!3196908 m!3454989))

(assert (=> b!3196908 m!3454863))

(assert (=> b!3196908 m!3454889))

(assert (=> b!3196909 m!3454863))

(assert (=> b!3196909 m!3454863))

(assert (=> b!3196909 m!3454987))

(assert (=> d!873490 d!874468))

(assert (=> d!873490 d!873474))

(declare-fun d!874478 () Bool)

(assert (=> d!874478 (= (list!12799 lt!1076597) (list!12801 (c!536197 lt!1076597)))))

(declare-fun bs!540656 () Bool)

(assert (= bs!540656 d!874478))

(declare-fun m!3457879 () Bool)

(assert (=> bs!540656 m!3457879))

(assert (=> d!873470 d!874478))

(assert (=> b!3195240 d!873808))

(declare-fun d!874482 () Bool)

(assert (=> d!874482 (= (maxPrefixOneRule!1558 thiss!18206 (rule!7622 (h!41454 tokens!494)) lt!1076577) (Some!7071 (tuple2!35393 (Token!9747 (apply!8114 (transformation!5190 (rule!7622 (h!41454 tokens!494))) (seqFromList!3452 lt!1076577)) (rule!7622 (h!41454 tokens!494)) (size!27131 lt!1076577) lt!1076577) Nil!36033)))))

(assert (=> d!874482 true))

(declare-fun _$59!361 () Unit!50426)

(assert (=> d!874482 (= (choose!18641 thiss!18206 rules!2135 lt!1076577 lt!1076577 Nil!36033 (rule!7622 (h!41454 tokens!494))) _$59!361)))

(declare-fun bs!540657 () Bool)

(assert (= bs!540657 d!874482))

(assert (=> bs!540657 m!3454869))

(assert (=> bs!540657 m!3454809))

(assert (=> bs!540657 m!3454809))

(assert (=> bs!540657 m!3455037))

(assert (=> bs!540657 m!3454873))

(assert (=> d!873496 d!874482))

(assert (=> d!873496 d!873492))

(assert (=> d!873496 d!873506))

(assert (=> d!873496 d!873484))

(assert (=> d!873496 d!873482))

(declare-fun d!874494 () Bool)

(assert (=> d!874494 (= (apply!8114 (transformation!5190 (rule!7622 (h!41454 tokens!494))) (seqFromList!3452 lt!1076577)) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (seqFromList!3452 lt!1076577)))))

(declare-fun b_lambda!87267 () Bool)

(assert (=> (not b_lambda!87267) (not d!874494)))

(declare-fun t!236864 () Bool)

(declare-fun tb!156333 () Bool)

(assert (=> (and b!3194963 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236864) tb!156333))

(declare-fun result!198586 () Bool)

(assert (=> tb!156333 (= result!198586 (inv!21 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (seqFromList!3452 lt!1076577))))))

(declare-fun m!3457913 () Bool)

(assert (=> tb!156333 m!3457913))

(assert (=> d!874494 t!236864))

(declare-fun b_and!212281 () Bool)

(assert (= b_and!212265 (and (=> t!236864 result!198586) b_and!212281)))

(declare-fun t!236870 () Bool)

(declare-fun tb!156339 () Bool)

(assert (=> (and b!3194957 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236870) tb!156339))

(declare-fun result!198592 () Bool)

(assert (= result!198592 result!198586))

(assert (=> d!874494 t!236870))

(declare-fun b_and!212283 () Bool)

(assert (= b_and!212259 (and (=> t!236870 result!198592) b_and!212283)))

(declare-fun t!236878 () Bool)

(declare-fun tb!156347 () Bool)

(assert (=> (and b!3195660 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236878) tb!156347))

(declare-fun result!198600 () Bool)

(assert (= result!198600 result!198586))

(assert (=> d!874494 t!236878))

(declare-fun b_and!212285 () Bool)

(assert (= b_and!212263 (and (=> t!236878 result!198600) b_and!212285)))

(declare-fun tb!156353 () Bool)

(declare-fun t!236884 () Bool)

(assert (=> (and b!3195646 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236884) tb!156353))

(declare-fun result!198606 () Bool)

(assert (= result!198606 result!198586))

(assert (=> d!874494 t!236884))

(declare-fun b_and!212287 () Bool)

(assert (= b_and!212257 (and (=> t!236884 result!198606) b_and!212287)))

(declare-fun t!236888 () Bool)

(declare-fun tb!156357 () Bool)

(assert (=> (and b!3194955 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236888) tb!156357))

(declare-fun result!198610 () Bool)

(assert (= result!198610 result!198586))

(assert (=> d!874494 t!236888))

(declare-fun b_and!212289 () Bool)

(assert (= b_and!212261 (and (=> t!236888 result!198610) b_and!212289)))

(assert (=> d!874494 m!3454809))

(declare-fun m!3457915 () Bool)

(assert (=> d!874494 m!3457915))

(assert (=> d!873496 d!874494))

(declare-fun b!3196985 () Bool)

(declare-fun e!1993028 () List!36157)

(assert (=> b!3196985 (= e!1993028 (++!8622 lt!1076594 lt!1076581))))

(declare-fun b!3196988 () Bool)

(declare-fun e!1993027 () Bool)

(declare-fun lt!1077546 () List!36157)

(assert (=> b!3196988 (= e!1993027 (or (not (= (++!8622 lt!1076594 lt!1076581) Nil!36033)) (= lt!1077546 lt!1076577)))))

(declare-fun b!3196987 () Bool)

(declare-fun res!1300739 () Bool)

(assert (=> b!3196987 (=> (not res!1300739) (not e!1993027))))

(assert (=> b!3196987 (= res!1300739 (= (size!27131 lt!1077546) (+ (size!27131 lt!1076577) (size!27131 (++!8622 lt!1076594 lt!1076581)))))))

(declare-fun d!874496 () Bool)

(assert (=> d!874496 e!1993027))

(declare-fun res!1300738 () Bool)

(assert (=> d!874496 (=> (not res!1300738) (not e!1993027))))

(assert (=> d!874496 (= res!1300738 (= (content!4864 lt!1077546) ((_ map or) (content!4864 lt!1076577) (content!4864 (++!8622 lt!1076594 lt!1076581)))))))

(assert (=> d!874496 (= lt!1077546 e!1993028)))

(declare-fun c!536715 () Bool)

(assert (=> d!874496 (= c!536715 ((_ is Nil!36033) lt!1076577))))

(assert (=> d!874496 (= (++!8622 lt!1076577 (++!8622 lt!1076594 lt!1076581)) lt!1077546)))

(declare-fun b!3196986 () Bool)

(assert (=> b!3196986 (= e!1993028 (Cons!36033 (h!41453 lt!1076577) (++!8622 (t!236612 lt!1076577) (++!8622 lt!1076594 lt!1076581))))))

(assert (= (and d!874496 c!536715) b!3196985))

(assert (= (and d!874496 (not c!536715)) b!3196986))

(assert (= (and d!874496 res!1300738) b!3196987))

(assert (= (and b!3196987 res!1300739) b!3196988))

(declare-fun m!3457921 () Bool)

(assert (=> b!3196987 m!3457921))

(assert (=> b!3196987 m!3454873))

(assert (=> b!3196987 m!3454829))

(declare-fun m!3457923 () Bool)

(assert (=> b!3196987 m!3457923))

(declare-fun m!3457925 () Bool)

(assert (=> d!874496 m!3457925))

(assert (=> d!874496 m!3455343))

(assert (=> d!874496 m!3454829))

(declare-fun m!3457927 () Bool)

(assert (=> d!874496 m!3457927))

(assert (=> b!3196986 m!3454829))

(declare-fun m!3457929 () Bool)

(assert (=> b!3196986 m!3457929))

(assert (=> d!873578 d!874496))

(assert (=> d!873578 d!873518))

(assert (=> d!873578 d!873662))

(assert (=> d!873578 d!873660))

(declare-fun d!874498 () Bool)

(assert (=> d!874498 (= (++!8622 (++!8622 lt!1076577 lt!1076594) lt!1076581) (++!8622 lt!1076577 (++!8622 lt!1076594 lt!1076581)))))

(assert (=> d!874498 true))

(declare-fun _$52!1506 () Unit!50426)

(assert (=> d!874498 (= (choose!18645 lt!1076577 lt!1076594 lt!1076581) _$52!1506)))

(declare-fun bs!540658 () Bool)

(assert (= bs!540658 d!874498))

(assert (=> bs!540658 m!3454839))

(assert (=> bs!540658 m!3454839))

(assert (=> bs!540658 m!3454841))

(assert (=> bs!540658 m!3454829))

(assert (=> bs!540658 m!3454829))

(assert (=> bs!540658 m!3455349))

(assert (=> d!873578 d!874498))

(assert (=> b!3195633 d!874382))

(declare-fun d!874500 () Bool)

(declare-fun lt!1077549 () Bool)

(declare-fun content!4867 (List!36159) (InoxSet Rule!10180))

(assert (=> d!874500 (= lt!1077549 (select (content!4867 rules!2135) (get!11458 lt!1076636)))))

(declare-fun e!1993050 () Bool)

(assert (=> d!874500 (= lt!1077549 e!1993050)))

(declare-fun res!1300745 () Bool)

(assert (=> d!874500 (=> (not res!1300745) (not e!1993050))))

(assert (=> d!874500 (= res!1300745 ((_ is Cons!36035) rules!2135))))

(assert (=> d!874500 (= (contains!6396 rules!2135 (get!11458 lt!1076636)) lt!1077549)))

(declare-fun b!3197023 () Bool)

(declare-fun e!1993051 () Bool)

(assert (=> b!3197023 (= e!1993050 e!1993051)))

(declare-fun res!1300744 () Bool)

(assert (=> b!3197023 (=> res!1300744 e!1993051)))

(assert (=> b!3197023 (= res!1300744 (= (h!41455 rules!2135) (get!11458 lt!1076636)))))

(declare-fun b!3197024 () Bool)

(assert (=> b!3197024 (= e!1993051 (contains!6396 (t!236614 rules!2135) (get!11458 lt!1076636)))))

(assert (= (and d!874500 res!1300745) b!3197023))

(assert (= (and b!3197023 (not res!1300744)) b!3197024))

(declare-fun m!3457945 () Bool)

(assert (=> d!874500 m!3457945))

(assert (=> d!874500 m!3455047))

(declare-fun m!3457947 () Bool)

(assert (=> d!874500 m!3457947))

(assert (=> b!3197024 m!3455047))

(declare-fun m!3457949 () Bool)

(assert (=> b!3197024 m!3457949))

(assert (=> b!3195062 d!874500))

(assert (=> b!3195062 d!873820))

(declare-fun d!874502 () Bool)

(declare-fun c!536716 () Bool)

(assert (=> d!874502 (= c!536716 ((_ is Node!10755) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))))))

(declare-fun e!1993055 () Bool)

(assert (=> d!874502 (= (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))) e!1993055)))

(declare-fun b!3197029 () Bool)

(assert (=> b!3197029 (= e!1993055 (inv!48882 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))))))

(declare-fun b!3197030 () Bool)

(declare-fun e!1993056 () Bool)

(assert (=> b!3197030 (= e!1993055 e!1993056)))

(declare-fun res!1300746 () Bool)

(assert (=> b!3197030 (= res!1300746 (not ((_ is Leaf!16961) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))))))))

(assert (=> b!3197030 (=> res!1300746 e!1993056)))

(declare-fun b!3197031 () Bool)

(assert (=> b!3197031 (= e!1993056 (inv!48883 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))))))

(assert (= (and d!874502 c!536716) b!3197029))

(assert (= (and d!874502 (not c!536716)) b!3197030))

(assert (= (and b!3197030 (not res!1300746)) b!3197031))

(declare-fun m!3457957 () Bool)

(assert (=> b!3197029 m!3457957))

(declare-fun m!3457959 () Bool)

(assert (=> b!3197031 m!3457959))

(assert (=> b!3194975 d!874502))

(declare-fun d!874504 () Bool)

(assert (=> d!874504 (= (list!12803 (singletonSeq!2286 separatorToken!241)) (list!12804 (c!536198 (singletonSeq!2286 separatorToken!241))))))

(declare-fun bs!540659 () Bool)

(assert (= bs!540659 d!874504))

(declare-fun m!3457961 () Bool)

(assert (=> bs!540659 m!3457961))

(assert (=> d!873534 d!874504))

(declare-fun d!874506 () Bool)

(assert (=> d!874506 (= (list!12803 (_1!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241))))) (list!12804 (c!536198 (_1!20829 (lex!2109 thiss!18206 rules!2135 (print!1844 thiss!18206 (singletonSeq!2286 separatorToken!241)))))))))

(declare-fun bs!540660 () Bool)

(assert (= bs!540660 d!874506))

(declare-fun m!3457963 () Bool)

(assert (=> bs!540660 m!3457963))

(assert (=> d!873534 d!874506))

(assert (=> d!873534 d!874024))

(declare-fun d!874508 () Bool)

(declare-fun lt!1077550 () Int)

(assert (=> d!874508 (= lt!1077550 (size!27136 (list!12803 (_1!20829 lt!1076667))))))

(assert (=> d!874508 (= lt!1077550 (size!27137 (c!536198 (_1!20829 lt!1076667))))))

(assert (=> d!874508 (= (size!27133 (_1!20829 lt!1076667)) lt!1077550)))

(declare-fun bs!540661 () Bool)

(assert (= bs!540661 d!874508))

(declare-fun m!3457965 () Bool)

(assert (=> bs!540661 m!3457965))

(assert (=> bs!540661 m!3457965))

(declare-fun m!3457967 () Bool)

(assert (=> bs!540661 m!3457967))

(declare-fun m!3457971 () Bool)

(assert (=> bs!540661 m!3457971))

(assert (=> d!873534 d!874508))

(assert (=> d!873534 d!874022))

(assert (=> d!873534 d!873484))

(assert (=> d!873534 d!874020))

(declare-fun d!874510 () Bool)

(declare-fun c!536717 () Bool)

(assert (=> d!874510 (= c!536717 ((_ is Node!10755) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))))))

(declare-fun e!1993062 () Bool)

(assert (=> d!874510 (= (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))) e!1993062)))

(declare-fun b!3197047 () Bool)

(assert (=> b!3197047 (= e!1993062 (inv!48882 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))))))

(declare-fun b!3197048 () Bool)

(declare-fun e!1993063 () Bool)

(assert (=> b!3197048 (= e!1993062 e!1993063)))

(declare-fun res!1300747 () Bool)

(assert (=> b!3197048 (= res!1300747 (not ((_ is Leaf!16961) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))))))))

(assert (=> b!3197048 (=> res!1300747 e!1993063)))

(declare-fun b!3197049 () Bool)

(assert (=> b!3197049 (= e!1993063 (inv!48883 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))))))

(assert (= (and d!874510 c!536717) b!3197047))

(assert (= (and d!874510 (not c!536717)) b!3197048))

(assert (= (and b!3197048 (not res!1300747)) b!3197049))

(declare-fun m!3457977 () Bool)

(assert (=> b!3197047 m!3457977))

(declare-fun m!3457979 () Bool)

(assert (=> b!3197049 m!3457979))

(assert (=> b!3195144 d!874510))

(declare-fun d!874512 () Bool)

(declare-fun charsToInt!0 (List!36156) (_ BitVec 32))

(assert (=> d!874512 (= (inv!16 (value!168375 (h!41454 tokens!494))) (= (charsToInt!0 (text!38387 (value!168375 (h!41454 tokens!494)))) (value!168366 (value!168375 (h!41454 tokens!494)))))))

(declare-fun bs!540663 () Bool)

(assert (= bs!540663 d!874512))

(declare-fun m!3457981 () Bool)

(assert (=> bs!540663 m!3457981))

(assert (=> b!3195523 d!874512))

(declare-fun d!874516 () Bool)

(declare-fun lt!1077551 () Int)

(assert (=> d!874516 (>= lt!1077551 0)))

(declare-fun e!1993064 () Int)

(assert (=> d!874516 (= lt!1077551 e!1993064)))

(declare-fun c!536718 () Bool)

(assert (=> d!874516 (= c!536718 ((_ is Nil!36033) lt!1076652))))

(assert (=> d!874516 (= (size!27131 lt!1076652) lt!1077551)))

(declare-fun b!3197050 () Bool)

(assert (=> b!3197050 (= e!1993064 0)))

(declare-fun b!3197051 () Bool)

(assert (=> b!3197051 (= e!1993064 (+ 1 (size!27131 (t!236612 lt!1076652))))))

(assert (= (and d!874516 c!536718) b!3197050))

(assert (= (and d!874516 (not c!536718)) b!3197051))

(declare-fun m!3457983 () Bool)

(assert (=> b!3197051 m!3457983))

(assert (=> b!3195147 d!874516))

(declare-fun d!874518 () Bool)

(declare-fun lt!1077552 () Int)

(assert (=> d!874518 (>= lt!1077552 0)))

(declare-fun e!1993065 () Int)

(assert (=> d!874518 (= lt!1077552 e!1993065)))

(declare-fun c!536719 () Bool)

(assert (=> d!874518 (= c!536719 ((_ is Nil!36033) (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))

(assert (=> d!874518 (= (size!27131 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))) lt!1077552)))

(declare-fun b!3197052 () Bool)

(assert (=> b!3197052 (= e!1993065 0)))

(declare-fun b!3197053 () Bool)

(assert (=> b!3197053 (= e!1993065 (+ 1 (size!27131 (t!236612 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494))))))))))

(assert (= (and d!874518 c!536719) b!3197052))

(assert (= (and d!874518 (not c!536719)) b!3197053))

(assert (=> b!3197053 m!3457313))

(assert (=> b!3195147 d!874518))

(assert (=> b!3195147 d!874462))

(assert (=> b!3195104 d!874084))

(assert (=> b!3195104 d!873498))

(declare-fun d!874520 () Bool)

(declare-fun charsToBigInt!0 (List!36156 Int) Int)

(assert (=> d!874520 (= (inv!15 (value!168375 (h!41454 tokens!494))) (= (charsToBigInt!0 (text!38389 (value!168375 (h!41454 tokens!494))) 0) (value!168370 (value!168375 (h!41454 tokens!494)))))))

(declare-fun bs!540664 () Bool)

(assert (= bs!540664 d!874520))

(declare-fun m!3457985 () Bool)

(assert (=> bs!540664 m!3457985))

(assert (=> b!3195519 d!874520))

(declare-fun d!874522 () Bool)

(declare-fun c!536720 () Bool)

(assert (=> d!874522 (= c!536720 ((_ is Nil!36033) lt!1076649))))

(declare-fun e!1993066 () (InoxSet C!20084))

(assert (=> d!874522 (= (content!4864 lt!1076649) e!1993066)))

(declare-fun b!3197054 () Bool)

(assert (=> b!3197054 (= e!1993066 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3197055 () Bool)

(assert (=> b!3197055 (= e!1993066 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076649) true) (content!4864 (t!236612 lt!1076649))))))

(assert (= (and d!874522 c!536720) b!3197054))

(assert (= (and d!874522 (not c!536720)) b!3197055))

(declare-fun m!3457987 () Bool)

(assert (=> b!3197055 m!3457987))

(declare-fun m!3457989 () Bool)

(assert (=> b!3197055 m!3457989))

(assert (=> d!873516 d!874522))

(declare-fun d!874524 () Bool)

(declare-fun c!536721 () Bool)

(assert (=> d!874524 (= c!536721 ((_ is Nil!36033) (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)))))

(declare-fun e!1993067 () (InoxSet C!20084))

(assert (=> d!874524 (= (content!4864 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) e!1993067)))

(declare-fun b!3197056 () Bool)

(assert (=> b!3197056 (= e!1993067 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3197057 () Bool)

(assert (=> b!3197057 (= e!1993067 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) true) (content!4864 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)))))))

(assert (= (and d!874524 c!536721) b!3197056))

(assert (= (and d!874524 (not c!536721)) b!3197057))

(declare-fun m!3457991 () Bool)

(assert (=> b!3197057 m!3457991))

(assert (=> b!3197057 m!3457817))

(assert (=> d!873516 d!874524))

(declare-fun d!874526 () Bool)

(declare-fun c!536722 () Bool)

(assert (=> d!874526 (= c!536722 ((_ is Nil!36033) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))

(declare-fun e!1993068 () (InoxSet C!20084))

(assert (=> d!874526 (= (content!4864 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)) e!1993068)))

(declare-fun b!3197058 () Bool)

(assert (=> b!3197058 (= e!1993068 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3197059 () Bool)

(assert (=> b!3197059 (= e!1993068 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)) true) (content!4864 (t!236612 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(assert (= (and d!874526 c!536722) b!3197058))

(assert (= (and d!874526 (not c!536722)) b!3197059))

(declare-fun m!3457993 () Bool)

(assert (=> b!3197059 m!3457993))

(declare-fun m!3457995 () Bool)

(assert (=> b!3197059 m!3457995))

(assert (=> d!873516 d!874526))

(assert (=> b!3195039 d!873832))

(declare-fun d!874528 () Bool)

(assert (=> d!874528 (= (apply!8114 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))) (seqFromList!3452 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622))))) (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622))))) (seqFromList!3452 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622))))))))

(declare-fun b_lambda!87289 () Bool)

(assert (=> (not b_lambda!87289) (not d!874528)))

(declare-fun tb!156383 () Bool)

(declare-fun t!236914 () Bool)

(assert (=> (and b!3194963 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236914) tb!156383))

(declare-fun result!198638 () Bool)

(assert (=> tb!156383 (= result!198638 (inv!21 (dynLambda!14505 (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622))))) (seqFromList!3452 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622)))))))))

(declare-fun m!3457997 () Bool)

(assert (=> tb!156383 m!3457997))

(assert (=> d!874528 t!236914))

(declare-fun b_and!212295 () Bool)

(assert (= b_and!212281 (and (=> t!236914 result!198638) b_and!212295)))

(declare-fun t!236916 () Bool)

(declare-fun tb!156385 () Bool)

(assert (=> (and b!3194957 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236916) tb!156385))

(declare-fun result!198640 () Bool)

(assert (= result!198640 result!198638))

(assert (=> d!874528 t!236916))

(declare-fun b_and!212297 () Bool)

(assert (= b_and!212283 (and (=> t!236916 result!198640) b_and!212297)))

(declare-fun tb!156387 () Bool)

(declare-fun t!236918 () Bool)

(assert (=> (and b!3194955 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236918) tb!156387))

(declare-fun result!198642 () Bool)

(assert (= result!198642 result!198638))

(assert (=> d!874528 t!236918))

(declare-fun b_and!212299 () Bool)

(assert (= b_and!212289 (and (=> t!236918 result!198642) b_and!212299)))

(declare-fun tb!156389 () Bool)

(declare-fun t!236920 () Bool)

(assert (=> (and b!3195646 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236920) tb!156389))

(declare-fun result!198644 () Bool)

(assert (= result!198644 result!198638))

(assert (=> d!874528 t!236920))

(declare-fun b_and!212301 () Bool)

(assert (= b_and!212287 (and (=> t!236920 result!198644) b_and!212301)))

(declare-fun tb!156391 () Bool)

(declare-fun t!236922 () Bool)

(assert (=> (and b!3195660 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236922) tb!156391))

(declare-fun result!198646 () Bool)

(assert (= result!198646 result!198638))

(assert (=> d!874528 t!236922))

(declare-fun b_and!212303 () Bool)

(assert (= b_and!212285 (and (=> t!236922 result!198646) b_and!212303)))

(assert (=> d!874528 m!3455007))

(declare-fun m!3457999 () Bool)

(assert (=> d!874528 m!3457999))

(assert (=> b!3195039 d!874528))

(declare-fun d!874530 () Bool)

(assert (=> d!874530 (= (seqFromList!3452 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622)))) (fromListB!1524 (originalCharacters!5904 (_1!20830 (get!11459 lt!1076622)))))))

(declare-fun bs!540665 () Bool)

(assert (= bs!540665 d!874530))

(declare-fun m!3458001 () Bool)

(assert (=> bs!540665 m!3458001))

(assert (=> b!3195039 d!874530))

(declare-fun d!874532 () Bool)

(declare-fun lt!1077553 () Token!9746)

(assert (=> d!874532 (= lt!1077553 (apply!8118 (list!12803 (_1!20829 lt!1076667)) 0))))

(assert (=> d!874532 (= lt!1077553 (apply!8119 (c!536198 (_1!20829 lt!1076667)) 0))))

(declare-fun e!1993070 () Bool)

(assert (=> d!874532 e!1993070))

(declare-fun res!1300748 () Bool)

(assert (=> d!874532 (=> (not res!1300748) (not e!1993070))))

(assert (=> d!874532 (= res!1300748 (<= 0 0))))

(assert (=> d!874532 (= (apply!8117 (_1!20829 lt!1076667) 0) lt!1077553)))

(declare-fun b!3197060 () Bool)

(assert (=> b!3197060 (= e!1993070 (< 0 (size!27133 (_1!20829 lt!1076667))))))

(assert (= (and d!874532 res!1300748) b!3197060))

(assert (=> d!874532 m!3457965))

(assert (=> d!874532 m!3457965))

(declare-fun m!3458003 () Bool)

(assert (=> d!874532 m!3458003))

(declare-fun m!3458005 () Bool)

(assert (=> d!874532 m!3458005))

(assert (=> b!3197060 m!3455207))

(assert (=> b!3195180 d!874532))

(declare-fun d!874534 () Bool)

(declare-fun lt!1077554 () Bool)

(assert (=> d!874534 (= lt!1077554 (select (content!4865 tokens!494) (h!41454 (t!236613 tokens!494))))))

(declare-fun e!1993071 () Bool)

(assert (=> d!874534 (= lt!1077554 e!1993071)))

(declare-fun res!1300749 () Bool)

(assert (=> d!874534 (=> (not res!1300749) (not e!1993071))))

(assert (=> d!874534 (= res!1300749 ((_ is Cons!36034) tokens!494))))

(assert (=> d!874534 (= (contains!6398 tokens!494 (h!41454 (t!236613 tokens!494))) lt!1077554)))

(declare-fun b!3197061 () Bool)

(declare-fun e!1993072 () Bool)

(assert (=> b!3197061 (= e!1993071 e!1993072)))

(declare-fun res!1300750 () Bool)

(assert (=> b!3197061 (=> res!1300750 e!1993072)))

(assert (=> b!3197061 (= res!1300750 (= (h!41454 tokens!494) (h!41454 (t!236613 tokens!494))))))

(declare-fun b!3197062 () Bool)

(assert (=> b!3197062 (= e!1993072 (contains!6398 (t!236613 tokens!494) (h!41454 (t!236613 tokens!494))))))

(assert (= (and d!874534 res!1300749) b!3197061))

(assert (= (and b!3197061 (not res!1300750)) b!3197062))

(assert (=> d!874534 m!3456055))

(declare-fun m!3458007 () Bool)

(assert (=> d!874534 m!3458007))

(declare-fun m!3458009 () Bool)

(assert (=> b!3197062 m!3458009))

(assert (=> b!3195526 d!874534))

(declare-fun d!874536 () Bool)

(declare-fun lt!1077555 () Int)

(assert (=> d!874536 (= lt!1077555 (size!27131 (list!12799 (_2!20829 lt!1076605))))))

(assert (=> d!874536 (= lt!1077555 (size!27141 (c!536197 (_2!20829 lt!1076605))))))

(assert (=> d!874536 (= (size!27134 (_2!20829 lt!1076605)) lt!1077555)))

(declare-fun bs!540666 () Bool)

(assert (= bs!540666 d!874536))

(assert (=> bs!540666 m!3454963))

(assert (=> bs!540666 m!3454963))

(declare-fun m!3458011 () Bool)

(assert (=> bs!540666 m!3458011))

(declare-fun m!3458013 () Bool)

(assert (=> bs!540666 m!3458013))

(assert (=> b!3195014 d!874536))

(declare-fun d!874538 () Bool)

(declare-fun lt!1077556 () Int)

(assert (=> d!874538 (= lt!1077556 (size!27131 (list!12799 lt!1076578)))))

(assert (=> d!874538 (= lt!1077556 (size!27141 (c!536197 lt!1076578)))))

(assert (=> d!874538 (= (size!27134 lt!1076578) lt!1077556)))

(declare-fun bs!540667 () Bool)

(assert (= bs!540667 d!874538))

(assert (=> bs!540667 m!3454965))

(assert (=> bs!540667 m!3454965))

(assert (=> bs!540667 m!3456023))

(declare-fun m!3458015 () Bool)

(assert (=> bs!540667 m!3458015))

(assert (=> b!3195014 d!874538))

(declare-fun bs!540668 () Bool)

(declare-fun d!874540 () Bool)

(assert (= bs!540668 (and d!874540 d!873982)))

(declare-fun lambda!117037 () Int)

(assert (=> bs!540668 (= (and (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))))) (= lambda!117037 lambda!117015))))

(declare-fun bs!540669 () Bool)

(assert (= bs!540669 (and d!874540 d!874076)))

(assert (=> bs!540669 (= (and (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (= lambda!117037 lambda!117016))))

(declare-fun bs!540670 () Bool)

(assert (= bs!540670 (and d!874540 d!874308)))

(assert (=> bs!540670 (= (and (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (= lambda!117037 lambda!117030))))

(assert (=> d!874540 true))

(assert (=> d!874540 (< (dynLambda!14508 order!18313 (toChars!7117 (transformation!5190 (h!41455 rules!2135)))) (dynLambda!14512 order!18319 lambda!117037))))

(assert (=> d!874540 true))

(assert (=> d!874540 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (h!41455 rules!2135)))) (dynLambda!14512 order!18319 lambda!117037))))

(assert (=> d!874540 (= (semiInverseModEq!2147 (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (h!41455 rules!2135)))) (Forall!1259 lambda!117037))))

(declare-fun bs!540671 () Bool)

(assert (= bs!540671 d!874540))

(declare-fun m!3458017 () Bool)

(assert (=> bs!540671 m!3458017))

(assert (=> d!873698 d!874540))

(assert (=> d!873704 d!873970))

(declare-fun b!3197063 () Bool)

(declare-fun res!1300754 () Bool)

(declare-fun e!1993076 () Bool)

(assert (=> b!3197063 (=> res!1300754 e!1993076)))

(assert (=> b!3197063 (= res!1300754 (not ((_ is Concat!15369) (regex!5190 lt!1076588))))))

(declare-fun e!1993074 () Bool)

(assert (=> b!3197063 (= e!1993074 e!1993076)))

(declare-fun b!3197064 () Bool)

(declare-fun e!1993079 () Bool)

(declare-fun call!231561 () Bool)

(assert (=> b!3197064 (= e!1993079 call!231561)))

(declare-fun b!3197065 () Bool)

(declare-fun e!1993075 () Bool)

(assert (=> b!3197065 (= e!1993076 e!1993075)))

(declare-fun res!1300751 () Bool)

(assert (=> b!3197065 (=> (not res!1300751) (not e!1993075))))

(declare-fun call!231560 () Bool)

(assert (=> b!3197065 (= res!1300751 call!231560)))

(declare-fun b!3197066 () Bool)

(declare-fun res!1300752 () Bool)

(declare-fun e!1993073 () Bool)

(assert (=> b!3197066 (=> (not res!1300752) (not e!1993073))))

(assert (=> b!3197066 (= res!1300752 call!231560)))

(assert (=> b!3197066 (= e!1993074 e!1993073)))

(declare-fun bm!231554 () Bool)

(assert (=> bm!231554 (= call!231560 call!231561)))

(declare-fun bm!231555 () Bool)

(declare-fun call!231559 () Bool)

(declare-fun c!536723 () Bool)

(assert (=> bm!231555 (= call!231559 (validRegex!4542 (ite c!536723 (regTwo!20411 (regex!5190 lt!1076588)) (regTwo!20410 (regex!5190 lt!1076588)))))))

(declare-fun b!3197067 () Bool)

(assert (=> b!3197067 (= e!1993073 call!231559)))

(declare-fun b!3197068 () Bool)

(assert (=> b!3197068 (= e!1993075 call!231559)))

(declare-fun b!3197070 () Bool)

(declare-fun e!1993077 () Bool)

(assert (=> b!3197070 (= e!1993077 e!1993074)))

(assert (=> b!3197070 (= c!536723 ((_ is Union!9949) (regex!5190 lt!1076588)))))

(declare-fun c!536724 () Bool)

(declare-fun bm!231556 () Bool)

(assert (=> bm!231556 (= call!231561 (validRegex!4542 (ite c!536724 (reg!10278 (regex!5190 lt!1076588)) (ite c!536723 (regOne!20411 (regex!5190 lt!1076588)) (regOne!20410 (regex!5190 lt!1076588))))))))

(declare-fun b!3197071 () Bool)

(assert (=> b!3197071 (= e!1993077 e!1993079)))

(declare-fun res!1300755 () Bool)

(assert (=> b!3197071 (= res!1300755 (not (nullable!3390 (reg!10278 (regex!5190 lt!1076588)))))))

(assert (=> b!3197071 (=> (not res!1300755) (not e!1993079))))

(declare-fun b!3197069 () Bool)

(declare-fun e!1993078 () Bool)

(assert (=> b!3197069 (= e!1993078 e!1993077)))

(assert (=> b!3197069 (= c!536724 ((_ is Star!9949) (regex!5190 lt!1076588)))))

(declare-fun d!874542 () Bool)

(declare-fun res!1300753 () Bool)

(assert (=> d!874542 (=> res!1300753 e!1993078)))

(assert (=> d!874542 (= res!1300753 ((_ is ElementMatch!9949) (regex!5190 lt!1076588)))))

(assert (=> d!874542 (= (validRegex!4542 (regex!5190 lt!1076588)) e!1993078)))

(assert (= (and d!874542 (not res!1300753)) b!3197069))

(assert (= (and b!3197069 c!536724) b!3197071))

(assert (= (and b!3197069 (not c!536724)) b!3197070))

(assert (= (and b!3197071 res!1300755) b!3197064))

(assert (= (and b!3197070 c!536723) b!3197066))

(assert (= (and b!3197070 (not c!536723)) b!3197063))

(assert (= (and b!3197066 res!1300752) b!3197067))

(assert (= (and b!3197063 (not res!1300754)) b!3197065))

(assert (= (and b!3197065 res!1300751) b!3197068))

(assert (= (or b!3197067 b!3197068) bm!231555))

(assert (= (or b!3197066 b!3197065) bm!231554))

(assert (= (or b!3197064 bm!231554) bm!231556))

(declare-fun m!3458019 () Bool)

(assert (=> bm!231555 m!3458019))

(declare-fun m!3458021 () Bool)

(assert (=> bm!231556 m!3458021))

(declare-fun m!3458023 () Bool)

(assert (=> b!3197071 m!3458023))

(assert (=> d!873704 d!874542))

(declare-fun d!874544 () Bool)

(assert (=> d!874544 (= (inv!15 (value!168375 separatorToken!241)) (= (charsToBigInt!0 (text!38389 (value!168375 separatorToken!241)) 0) (value!168370 (value!168375 separatorToken!241))))))

(declare-fun bs!540672 () Bool)

(assert (= bs!540672 d!874544))

(declare-fun m!3458025 () Bool)

(assert (=> bs!540672 m!3458025))

(assert (=> b!3194995 d!874544))

(declare-fun d!874546 () Bool)

(declare-fun c!536725 () Bool)

(assert (=> d!874546 (= c!536725 ((_ is Nil!36033) lt!1076650))))

(declare-fun e!1993080 () (InoxSet C!20084))

(assert (=> d!874546 (= (content!4864 lt!1076650) e!1993080)))

(declare-fun b!3197072 () Bool)

(assert (=> b!3197072 (= e!1993080 ((as const (Array C!20084 Bool)) false))))

(declare-fun b!3197073 () Bool)

(assert (=> b!3197073 (= e!1993080 ((_ map or) (store ((as const (Array C!20084 Bool)) false) (h!41453 lt!1076650) true) (content!4864 (t!236612 lt!1076650))))))

(assert (= (and d!874546 c!536725) b!3197072))

(assert (= (and d!874546 (not c!536725)) b!3197073))

(declare-fun m!3458027 () Bool)

(assert (=> b!3197073 m!3458027))

(declare-fun m!3458029 () Bool)

(assert (=> b!3197073 m!3458029))

(assert (=> d!873518 d!874546))

(assert (=> d!873518 d!874080))

(assert (=> d!873518 d!873996))

(declare-fun d!874548 () Bool)

(declare-fun lt!1077557 () Int)

(assert (=> d!874548 (>= lt!1077557 0)))

(declare-fun e!1993081 () Int)

(assert (=> d!874548 (= lt!1077557 e!1993081)))

(declare-fun c!536726 () Bool)

(assert (=> d!874548 (= c!536726 ((_ is Nil!36033) (originalCharacters!5904 (h!41454 tokens!494))))))

(assert (=> d!874548 (= (size!27131 (originalCharacters!5904 (h!41454 tokens!494))) lt!1077557)))

(declare-fun b!3197074 () Bool)

(assert (=> b!3197074 (= e!1993081 0)))

(declare-fun b!3197075 () Bool)

(assert (=> b!3197075 (= e!1993081 (+ 1 (size!27131 (t!236612 (originalCharacters!5904 (h!41454 tokens!494))))))))

(assert (= (and d!874548 c!536726) b!3197074))

(assert (= (and d!874548 (not c!536726)) b!3197075))

(declare-fun m!3458031 () Bool)

(assert (=> b!3197075 m!3458031))

(assert (=> b!3194981 d!874548))

(assert (=> b!3195043 d!873832))

(declare-fun d!874550 () Bool)

(declare-fun lt!1077558 () Bool)

(assert (=> d!874550 (= lt!1077558 (select (content!4867 rules!2135) (get!11458 lt!1076639)))))

(declare-fun e!1993082 () Bool)

(assert (=> d!874550 (= lt!1077558 e!1993082)))

(declare-fun res!1300757 () Bool)

(assert (=> d!874550 (=> (not res!1300757) (not e!1993082))))

(assert (=> d!874550 (= res!1300757 ((_ is Cons!36035) rules!2135))))

(assert (=> d!874550 (= (contains!6396 rules!2135 (get!11458 lt!1076639)) lt!1077558)))

(declare-fun b!3197076 () Bool)

(declare-fun e!1993083 () Bool)

(assert (=> b!3197076 (= e!1993082 e!1993083)))

(declare-fun res!1300756 () Bool)

(assert (=> b!3197076 (=> res!1300756 e!1993083)))

(assert (=> b!3197076 (= res!1300756 (= (h!41455 rules!2135) (get!11458 lt!1076639)))))

(declare-fun b!3197077 () Bool)

(assert (=> b!3197077 (= e!1993083 (contains!6396 (t!236614 rules!2135) (get!11458 lt!1076639)))))

(assert (= (and d!874550 res!1300757) b!3197076))

(assert (= (and b!3197076 (not res!1300756)) b!3197077))

(assert (=> d!874550 m!3457945))

(assert (=> d!874550 m!3455061))

(declare-fun m!3458033 () Bool)

(assert (=> d!874550 m!3458033))

(assert (=> b!3197077 m!3455061))

(declare-fun m!3458035 () Bool)

(assert (=> b!3197077 m!3458035))

(assert (=> b!3195094 d!874550))

(assert (=> b!3195094 d!873966))

(assert (=> b!3195625 d!874382))

(declare-fun d!874552 () Bool)

(declare-fun lt!1077559 () Int)

(assert (=> d!874552 (>= lt!1077559 0)))

(declare-fun e!1993084 () Int)

(assert (=> d!874552 (= lt!1077559 e!1993084)))

(declare-fun c!536727 () Bool)

(assert (=> d!874552 (= c!536727 ((_ is Nil!36033) lt!1076756))))

(assert (=> d!874552 (= (size!27131 lt!1076756) lt!1077559)))

(declare-fun b!3197078 () Bool)

(assert (=> b!3197078 (= e!1993084 0)))

(declare-fun b!3197079 () Bool)

(assert (=> b!3197079 (= e!1993084 (+ 1 (size!27131 (t!236612 lt!1076756))))))

(assert (= (and d!874552 c!536727) b!3197078))

(assert (= (and d!874552 (not c!536727)) b!3197079))

(declare-fun m!3458037 () Bool)

(assert (=> b!3197079 m!3458037))

(assert (=> b!3195493 d!874552))

(assert (=> b!3195493 d!873506))

(assert (=> b!3195493 d!874462))

(declare-fun d!874554 () Bool)

(assert (=> d!874554 (= (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))) (isBalanced!3202 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))))))

(declare-fun bs!540673 () Bool)

(assert (= bs!540673 d!874554))

(declare-fun m!3458039 () Bool)

(assert (=> bs!540673 m!3458039))

(assert (=> tb!156115 d!874554))

(declare-fun d!874556 () Bool)

(declare-fun lt!1077560 () Int)

(assert (=> d!874556 (>= lt!1077560 0)))

(declare-fun e!1993085 () Int)

(assert (=> d!874556 (= lt!1077560 e!1993085)))

(declare-fun c!536728 () Bool)

(assert (=> d!874556 (= c!536728 ((_ is Nil!36033) (t!236612 lt!1076577)))))

(assert (=> d!874556 (= (size!27131 (t!236612 lt!1076577)) lt!1077560)))

(declare-fun b!3197080 () Bool)

(assert (=> b!3197080 (= e!1993085 0)))

(declare-fun b!3197081 () Bool)

(assert (=> b!3197081 (= e!1993085 (+ 1 (size!27131 (t!236612 (t!236612 lt!1076577)))))))

(assert (= (and d!874556 c!536728) b!3197080))

(assert (= (and d!874556 (not c!536728)) b!3197081))

(declare-fun m!3458041 () Bool)

(assert (=> b!3197081 m!3458041))

(assert (=> b!3195119 d!874556))

(declare-fun d!874558 () Bool)

(declare-fun res!1300762 () Bool)

(declare-fun e!1993090 () Bool)

(assert (=> d!874558 (=> res!1300762 e!1993090)))

(assert (=> d!874558 (= res!1300762 ((_ is Nil!36035) rules!2135))))

(assert (=> d!874558 (= (noDuplicateTag!1902 thiss!18206 rules!2135 Nil!36036) e!1993090)))

(declare-fun b!3197086 () Bool)

(declare-fun e!1993091 () Bool)

(assert (=> b!3197086 (= e!1993090 e!1993091)))

(declare-fun res!1300763 () Bool)

(assert (=> b!3197086 (=> (not res!1300763) (not e!1993091))))

(declare-fun contains!6401 (List!36160 String!40434) Bool)

(assert (=> b!3197086 (= res!1300763 (not (contains!6401 Nil!36036 (tag!5708 (h!41455 rules!2135)))))))

(declare-fun b!3197087 () Bool)

(assert (=> b!3197087 (= e!1993091 (noDuplicateTag!1902 thiss!18206 (t!236614 rules!2135) (Cons!36036 (tag!5708 (h!41455 rules!2135)) Nil!36036)))))

(assert (= (and d!874558 (not res!1300762)) b!3197086))

(assert (= (and b!3197086 res!1300763) b!3197087))

(declare-fun m!3458043 () Bool)

(assert (=> b!3197086 m!3458043))

(declare-fun m!3458045 () Bool)

(assert (=> b!3197087 m!3458045))

(assert (=> b!3194984 d!874558))

(declare-fun d!874560 () Bool)

(declare-fun lt!1077561 () Int)

(assert (=> d!874560 (>= lt!1077561 0)))

(declare-fun e!1993092 () Int)

(assert (=> d!874560 (= lt!1077561 e!1993092)))

(declare-fun c!536729 () Bool)

(assert (=> d!874560 (= c!536729 ((_ is Nil!36033) lt!1076649))))

(assert (=> d!874560 (= (size!27131 lt!1076649) lt!1077561)))

(declare-fun b!3197088 () Bool)

(assert (=> b!3197088 (= e!1993092 0)))

(declare-fun b!3197089 () Bool)

(assert (=> b!3197089 (= e!1993092 (+ 1 (size!27131 (t!236612 lt!1076649))))))

(assert (= (and d!874560 c!536729) b!3197088))

(assert (= (and d!874560 (not c!536729)) b!3197089))

(declare-fun m!3458047 () Bool)

(assert (=> b!3197089 m!3458047))

(assert (=> b!3195138 d!874560))

(declare-fun d!874562 () Bool)

(declare-fun lt!1077562 () Int)

(assert (=> d!874562 (>= lt!1077562 0)))

(declare-fun e!1993093 () Int)

(assert (=> d!874562 (= lt!1077562 e!1993093)))

(declare-fun c!536730 () Bool)

(assert (=> d!874562 (= c!536730 ((_ is Nil!36033) (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)))))

(assert (=> d!874562 (= (size!27131 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)) lt!1077562)))

(declare-fun b!3197090 () Bool)

(assert (=> b!3197090 (= e!1993093 0)))

(declare-fun b!3197091 () Bool)

(assert (=> b!3197091 (= e!1993093 (+ 1 (size!27131 (t!236612 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 tokens!494)))) lt!1076594)))))))

(assert (= (and d!874562 c!536730) b!3197090))

(assert (= (and d!874562 (not c!536730)) b!3197091))

(assert (=> b!3197091 m!3457813))

(assert (=> b!3195138 d!874562))

(declare-fun d!874564 () Bool)

(declare-fun lt!1077563 () Int)

(assert (=> d!874564 (>= lt!1077563 0)))

(declare-fun e!1993094 () Int)

(assert (=> d!874564 (= lt!1077563 e!1993094)))

(declare-fun c!536731 () Bool)

(assert (=> d!874564 (= c!536731 ((_ is Nil!36033) (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))

(assert (=> d!874564 (= (size!27131 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)) lt!1077563)))

(declare-fun b!3197092 () Bool)

(assert (=> b!3197092 (= e!1993094 0)))

(declare-fun b!3197093 () Bool)

(assert (=> b!3197093 (= e!1993094 (+ 1 (size!27131 (t!236612 (printWithSeparatorTokenList!124 thiss!18206 (t!236613 (t!236613 tokens!494)) separatorToken!241)))))))

(assert (= (and d!874564 c!536731) b!3197092))

(assert (= (and d!874564 (not c!536731)) b!3197093))

(declare-fun m!3458049 () Bool)

(assert (=> b!3197093 m!3458049))

(assert (=> b!3195138 d!874564))

(declare-fun d!874566 () Bool)

(assert (=> d!874566 (= (inv!16 (value!168375 separatorToken!241)) (= (charsToInt!0 (text!38387 (value!168375 separatorToken!241))) (value!168366 (value!168375 separatorToken!241))))))

(declare-fun bs!540674 () Bool)

(assert (= bs!540674 d!874566))

(declare-fun m!3458051 () Bool)

(assert (=> bs!540674 m!3458051))

(assert (=> b!3194999 d!874566))

(declare-fun d!874568 () Bool)

(declare-fun lt!1077564 () Int)

(assert (=> d!874568 (>= lt!1077564 0)))

(declare-fun e!1993095 () Int)

(assert (=> d!874568 (= lt!1077564 e!1993095)))

(declare-fun c!536732 () Bool)

(assert (=> d!874568 (= c!536732 ((_ is Nil!36033) (originalCharacters!5904 separatorToken!241)))))

(assert (=> d!874568 (= (size!27131 (originalCharacters!5904 separatorToken!241)) lt!1077564)))

(declare-fun b!3197094 () Bool)

(assert (=> b!3197094 (= e!1993095 0)))

(declare-fun b!3197095 () Bool)

(assert (=> b!3197095 (= e!1993095 (+ 1 (size!27131 (t!236612 (originalCharacters!5904 separatorToken!241)))))))

(assert (= (and d!874568 c!536732) b!3197094))

(assert (= (and d!874568 (not c!536732)) b!3197095))

(declare-fun m!3458053 () Bool)

(assert (=> b!3197095 m!3458053))

(assert (=> b!3195255 d!874568))

(declare-fun d!874570 () Bool)

(declare-fun e!1993098 () Bool)

(assert (=> d!874570 e!1993098))

(declare-fun c!536735 () Bool)

(assert (=> d!874570 (= c!536735 ((_ is EmptyExpr!9949) (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577))))))

(declare-fun lt!1077565 () Bool)

(declare-fun e!1993102 () Bool)

(assert (=> d!874570 (= lt!1077565 e!1993102)))

(declare-fun c!536734 () Bool)

(assert (=> d!874570 (= c!536734 (isEmpty!20115 (tail!5196 lt!1076577)))))

(assert (=> d!874570 (validRegex!4542 (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577)))))

(assert (=> d!874570 (= (matchR!4583 (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577)) (tail!5196 lt!1076577)) lt!1077565)))

(declare-fun b!3197096 () Bool)

(declare-fun e!1993100 () Bool)

(assert (=> b!3197096 (= e!1993098 e!1993100)))

(declare-fun c!536733 () Bool)

(assert (=> b!3197096 (= c!536733 ((_ is EmptyLang!9949) (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577))))))

(declare-fun b!3197097 () Bool)

(assert (=> b!3197097 (= e!1993102 (nullable!3390 (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577))))))

(declare-fun b!3197098 () Bool)

(assert (=> b!3197098 (= e!1993102 (matchR!4583 (derivativeStep!2943 (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577)) (head!7002 (tail!5196 lt!1076577))) (tail!5196 (tail!5196 lt!1076577))))))

(declare-fun b!3197099 () Bool)

(declare-fun e!1993099 () Bool)

(assert (=> b!3197099 (= e!1993099 (= (head!7002 (tail!5196 lt!1076577)) (c!536196 (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577)))))))

(declare-fun bm!231557 () Bool)

(declare-fun call!231562 () Bool)

(assert (=> bm!231557 (= call!231562 (isEmpty!20115 (tail!5196 lt!1076577)))))

(declare-fun b!3197100 () Bool)

(declare-fun res!1300767 () Bool)

(declare-fun e!1993096 () Bool)

(assert (=> b!3197100 (=> res!1300767 e!1993096)))

(assert (=> b!3197100 (= res!1300767 (not ((_ is ElementMatch!9949) (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577)))))))

(assert (=> b!3197100 (= e!1993100 e!1993096)))

(declare-fun b!3197101 () Bool)

(assert (=> b!3197101 (= e!1993098 (= lt!1077565 call!231562))))

(declare-fun b!3197102 () Bool)

(declare-fun res!1300769 () Bool)

(assert (=> b!3197102 (=> res!1300769 e!1993096)))

(assert (=> b!3197102 (= res!1300769 e!1993099)))

(declare-fun res!1300765 () Bool)

(assert (=> b!3197102 (=> (not res!1300765) (not e!1993099))))

(assert (=> b!3197102 (= res!1300765 lt!1077565)))

(declare-fun b!3197103 () Bool)

(assert (=> b!3197103 (= e!1993100 (not lt!1077565))))

(declare-fun b!3197104 () Bool)

(declare-fun e!1993097 () Bool)

(declare-fun e!1993101 () Bool)

(assert (=> b!3197104 (= e!1993097 e!1993101)))

(declare-fun res!1300771 () Bool)

(assert (=> b!3197104 (=> res!1300771 e!1993101)))

(assert (=> b!3197104 (= res!1300771 call!231562)))

(declare-fun b!3197105 () Bool)

(declare-fun res!1300766 () Bool)

(assert (=> b!3197105 (=> (not res!1300766) (not e!1993099))))

(assert (=> b!3197105 (= res!1300766 (isEmpty!20115 (tail!5196 (tail!5196 lt!1076577))))))

(declare-fun b!3197106 () Bool)

(declare-fun res!1300770 () Bool)

(assert (=> b!3197106 (=> (not res!1300770) (not e!1993099))))

(assert (=> b!3197106 (= res!1300770 (not call!231562))))

(declare-fun b!3197107 () Bool)

(assert (=> b!3197107 (= e!1993101 (not (= (head!7002 (tail!5196 lt!1076577)) (c!536196 (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577))))))))

(declare-fun b!3197108 () Bool)

(declare-fun res!1300764 () Bool)

(assert (=> b!3197108 (=> res!1300764 e!1993101)))

(assert (=> b!3197108 (= res!1300764 (not (isEmpty!20115 (tail!5196 (tail!5196 lt!1076577)))))))

(declare-fun b!3197109 () Bool)

(assert (=> b!3197109 (= e!1993096 e!1993097)))

(declare-fun res!1300768 () Bool)

(assert (=> b!3197109 (=> (not res!1300768) (not e!1993097))))

(assert (=> b!3197109 (= res!1300768 (not lt!1077565))))

(assert (= (and d!874570 c!536734) b!3197097))

(assert (= (and d!874570 (not c!536734)) b!3197098))

(assert (= (and d!874570 c!536735) b!3197101))

(assert (= (and d!874570 (not c!536735)) b!3197096))

(assert (= (and b!3197096 c!536733) b!3197103))

(assert (= (and b!3197096 (not c!536733)) b!3197100))

(assert (= (and b!3197100 (not res!1300767)) b!3197102))

(assert (= (and b!3197102 res!1300765) b!3197106))

(assert (= (and b!3197106 res!1300770) b!3197105))

(assert (= (and b!3197105 res!1300766) b!3197099))

(assert (= (and b!3197102 (not res!1300769)) b!3197109))

(assert (= (and b!3197109 res!1300768) b!3197104))

(assert (= (and b!3197104 (not res!1300771)) b!3197108))

(assert (= (and b!3197108 (not res!1300764)) b!3197107))

(assert (= (or b!3197101 b!3197104 b!3197106) bm!231557))

(assert (=> b!3197107 m!3455299))

(declare-fun m!3458055 () Bool)

(assert (=> b!3197107 m!3458055))

(assert (=> b!3197099 m!3455299))

(assert (=> b!3197099 m!3458055))

(assert (=> b!3197098 m!3455299))

(assert (=> b!3197098 m!3458055))

(assert (=> b!3197098 m!3455297))

(assert (=> b!3197098 m!3458055))

(declare-fun m!3458057 () Bool)

(assert (=> b!3197098 m!3458057))

(assert (=> b!3197098 m!3455299))

(declare-fun m!3458059 () Bool)

(assert (=> b!3197098 m!3458059))

(assert (=> b!3197098 m!3458057))

(assert (=> b!3197098 m!3458059))

(declare-fun m!3458061 () Bool)

(assert (=> b!3197098 m!3458061))

(assert (=> b!3197097 m!3455297))

(declare-fun m!3458063 () Bool)

(assert (=> b!3197097 m!3458063))

(assert (=> b!3197105 m!3455299))

(assert (=> b!3197105 m!3458059))

(assert (=> b!3197105 m!3458059))

(declare-fun m!3458065 () Bool)

(assert (=> b!3197105 m!3458065))

(assert (=> b!3197108 m!3455299))

(assert (=> b!3197108 m!3458059))

(assert (=> b!3197108 m!3458059))

(assert (=> b!3197108 m!3458065))

(assert (=> d!874570 m!3455299))

(assert (=> d!874570 m!3455305))

(assert (=> d!874570 m!3455297))

(declare-fun m!3458067 () Bool)

(assert (=> d!874570 m!3458067))

(assert (=> bm!231557 m!3455299))

(assert (=> bm!231557 m!3455305))

(assert (=> b!3195239 d!874570))

(declare-fun b!3197110 () Bool)

(declare-fun e!1993105 () Regex!9949)

(assert (=> b!3197110 (= e!1993105 EmptyLang!9949)))

(declare-fun c!536738 () Bool)

(declare-fun c!536737 () Bool)

(declare-fun call!231564 () Regex!9949)

(declare-fun bm!231558 () Bool)

(assert (=> bm!231558 (= call!231564 (derivativeStep!2943 (ite c!536738 (regTwo!20411 (regex!5190 lt!1076584)) (ite c!536737 (reg!10278 (regex!5190 lt!1076584)) (regOne!20410 (regex!5190 lt!1076584)))) (head!7002 lt!1076577)))))

(declare-fun bm!231559 () Bool)

(declare-fun call!231566 () Regex!9949)

(assert (=> bm!231559 (= call!231566 call!231564)))

(declare-fun call!231563 () Regex!9949)

(declare-fun e!1993106 () Regex!9949)

(declare-fun call!231565 () Regex!9949)

(declare-fun b!3197111 () Bool)

(assert (=> b!3197111 (= e!1993106 (Union!9949 (Concat!15369 call!231565 (regTwo!20410 (regex!5190 lt!1076584))) call!231563))))

(declare-fun bm!231561 () Bool)

(assert (=> bm!231561 (= call!231565 call!231566)))

(declare-fun b!3197112 () Bool)

(assert (=> b!3197112 (= c!536738 ((_ is Union!9949) (regex!5190 lt!1076584)))))

(declare-fun e!1993107 () Regex!9949)

(declare-fun e!1993103 () Regex!9949)

(assert (=> b!3197112 (= e!1993107 e!1993103)))

(declare-fun b!3197113 () Bool)

(assert (=> b!3197113 (= e!1993103 (Union!9949 call!231563 call!231564))))

(declare-fun b!3197114 () Bool)

(declare-fun e!1993104 () Regex!9949)

(assert (=> b!3197114 (= e!1993103 e!1993104)))

(assert (=> b!3197114 (= c!536737 ((_ is Star!9949) (regex!5190 lt!1076584)))))

(declare-fun b!3197115 () Bool)

(assert (=> b!3197115 (= e!1993105 e!1993107)))

(declare-fun c!536736 () Bool)

(assert (=> b!3197115 (= c!536736 ((_ is ElementMatch!9949) (regex!5190 lt!1076584)))))

(declare-fun bm!231560 () Bool)

(assert (=> bm!231560 (= call!231563 (derivativeStep!2943 (ite c!536738 (regOne!20411 (regex!5190 lt!1076584)) (regTwo!20410 (regex!5190 lt!1076584))) (head!7002 lt!1076577)))))

(declare-fun d!874572 () Bool)

(declare-fun lt!1077566 () Regex!9949)

(assert (=> d!874572 (validRegex!4542 lt!1077566)))

(assert (=> d!874572 (= lt!1077566 e!1993105)))

(declare-fun c!536740 () Bool)

(assert (=> d!874572 (= c!536740 (or ((_ is EmptyExpr!9949) (regex!5190 lt!1076584)) ((_ is EmptyLang!9949) (regex!5190 lt!1076584))))))

(assert (=> d!874572 (validRegex!4542 (regex!5190 lt!1076584))))

(assert (=> d!874572 (= (derivativeStep!2943 (regex!5190 lt!1076584) (head!7002 lt!1076577)) lt!1077566)))

(declare-fun b!3197116 () Bool)

(assert (=> b!3197116 (= e!1993107 (ite (= (head!7002 lt!1076577) (c!536196 (regex!5190 lt!1076584))) EmptyExpr!9949 EmptyLang!9949))))

(declare-fun b!3197117 () Bool)

(declare-fun c!536739 () Bool)

(assert (=> b!3197117 (= c!536739 (nullable!3390 (regOne!20410 (regex!5190 lt!1076584))))))

(assert (=> b!3197117 (= e!1993104 e!1993106)))

(declare-fun b!3197118 () Bool)

(assert (=> b!3197118 (= e!1993106 (Union!9949 (Concat!15369 call!231565 (regTwo!20410 (regex!5190 lt!1076584))) EmptyLang!9949))))

(declare-fun b!3197119 () Bool)

(assert (=> b!3197119 (= e!1993104 (Concat!15369 call!231566 (regex!5190 lt!1076584)))))

(assert (= (and d!874572 c!536740) b!3197110))

(assert (= (and d!874572 (not c!536740)) b!3197115))

(assert (= (and b!3197115 c!536736) b!3197116))

(assert (= (and b!3197115 (not c!536736)) b!3197112))

(assert (= (and b!3197112 c!536738) b!3197113))

(assert (= (and b!3197112 (not c!536738)) b!3197114))

(assert (= (and b!3197114 c!536737) b!3197119))

(assert (= (and b!3197114 (not c!536737)) b!3197117))

(assert (= (and b!3197117 c!536739) b!3197111))

(assert (= (and b!3197117 (not c!536739)) b!3197118))

(assert (= (or b!3197111 b!3197118) bm!231561))

(assert (= (or b!3197119 bm!231561) bm!231559))

(assert (= (or b!3197113 b!3197111) bm!231560))

(assert (= (or b!3197113 bm!231559) bm!231558))

(assert (=> bm!231558 m!3455295))

(declare-fun m!3458069 () Bool)

(assert (=> bm!231558 m!3458069))

(assert (=> bm!231560 m!3455295))

(declare-fun m!3458071 () Bool)

(assert (=> bm!231560 m!3458071))

(declare-fun m!3458073 () Bool)

(assert (=> d!874572 m!3458073))

(assert (=> d!874572 m!3455309))

(declare-fun m!3458075 () Bool)

(assert (=> b!3197117 m!3458075))

(assert (=> b!3195239 d!874572))

(assert (=> b!3195239 d!873808))

(assert (=> b!3195239 d!874010))

(declare-fun b!3197120 () Bool)

(declare-fun e!1993109 () List!36157)

(assert (=> b!3197120 (= e!1993109 (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034))))))

(declare-fun lt!1077567 () List!36157)

(declare-fun e!1993108 () Bool)

(declare-fun b!3197123 () Bool)

(assert (=> b!3197123 (= e!1993108 (or (not (= (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034))) Nil!36033)) (= lt!1077567 (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))))))

(declare-fun b!3197122 () Bool)

(declare-fun res!1300773 () Bool)

(assert (=> b!3197122 (=> (not res!1300773) (not e!1993108))))

(assert (=> b!3197122 (= res!1300773 (= (size!27131 lt!1077567) (+ (size!27131 (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (size!27131 (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))))))

(declare-fun d!874574 () Bool)

(assert (=> d!874574 e!1993108))

(declare-fun res!1300772 () Bool)

(assert (=> d!874574 (=> (not res!1300772) (not e!1993108))))

(assert (=> d!874574 (= res!1300772 (= (content!4864 lt!1077567) ((_ map or) (content!4864 (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (content!4864 (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))))))

(assert (=> d!874574 (= lt!1077567 e!1993109)))

(declare-fun c!536741 () Bool)

(assert (=> d!874574 (= c!536741 ((_ is Nil!36033) (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))))))

(assert (=> d!874574 (= (++!8622 (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))) (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034)))) lt!1077567)))

(declare-fun b!3197121 () Bool)

(assert (=> b!3197121 (= e!1993109 (Cons!36033 (h!41453 (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (++!8622 (t!236612 (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034))))))))

(assert (= (and d!874574 c!536741) b!3197120))

(assert (= (and d!874574 (not c!536741)) b!3197121))

(assert (= (and d!874574 res!1300772) b!3197122))

(assert (= (and b!3197122 res!1300773) b!3197123))

(declare-fun m!3458077 () Bool)

(assert (=> b!3197122 m!3458077))

(assert (=> b!3197122 m!3455777))

(declare-fun m!3458079 () Bool)

(assert (=> b!3197122 m!3458079))

(assert (=> b!3197122 m!3455779))

(declare-fun m!3458081 () Bool)

(assert (=> b!3197122 m!3458081))

(declare-fun m!3458083 () Bool)

(assert (=> d!874574 m!3458083))

(assert (=> d!874574 m!3455777))

(declare-fun m!3458085 () Bool)

(assert (=> d!874574 m!3458085))

(assert (=> d!874574 m!3455779))

(declare-fun m!3458087 () Bool)

(assert (=> d!874574 m!3458087))

(assert (=> b!3197121 m!3455779))

(declare-fun m!3458089 () Bool)

(assert (=> b!3197121 m!3458089))

(assert (=> b!3195618 d!874574))

(declare-fun d!874576 () Bool)

(assert (=> d!874576 (= (list!12799 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))) (list!12801 (c!536197 (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))))))

(declare-fun bs!540675 () Bool)

(assert (= bs!540675 d!874576))

(declare-fun m!3458091 () Bool)

(assert (=> bs!540675 m!3458091))

(assert (=> b!3195618 d!874576))

(declare-fun d!874578 () Bool)

(declare-fun lt!1077568 () BalanceConc!21124)

(assert (=> d!874578 (= (list!12799 lt!1077568) (originalCharacters!5904 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))))

(assert (=> d!874578 (= lt!1077568 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (value!168375 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))))

(assert (=> d!874578 (= (charsOf!3206 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))) lt!1077568)))

(declare-fun b_lambda!87291 () Bool)

(assert (=> (not b_lambda!87291) (not d!874578)))

(declare-fun t!236924 () Bool)

(declare-fun tb!156393 () Bool)

(assert (=> (and b!3194955 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) t!236924) tb!156393))

(declare-fun b!3197124 () Bool)

(declare-fun e!1993110 () Bool)

(declare-fun tp!1010738 () Bool)

(assert (=> b!3197124 (= e!1993110 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (value!168375 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) tp!1010738))))

(declare-fun result!198648 () Bool)

(assert (=> tb!156393 (= result!198648 (and (inv!48880 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (value!168375 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) e!1993110))))

(assert (= tb!156393 b!3197124))

(declare-fun m!3458093 () Bool)

(assert (=> b!3197124 m!3458093))

(declare-fun m!3458095 () Bool)

(assert (=> tb!156393 m!3458095))

(assert (=> d!874578 t!236924))

(declare-fun b_and!212305 () Bool)

(assert (= b_and!212239 (and (=> t!236924 result!198648) b_and!212305)))

(declare-fun tb!156395 () Bool)

(declare-fun t!236926 () Bool)

(assert (=> (and b!3195646 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) t!236926) tb!156395))

(declare-fun result!198650 () Bool)

(assert (= result!198650 result!198648))

(assert (=> d!874578 t!236926))

(declare-fun b_and!212307 () Bool)

(assert (= b_and!212245 (and (=> t!236926 result!198650) b_and!212307)))

(declare-fun t!236928 () Bool)

(declare-fun tb!156397 () Bool)

(assert (=> (and b!3195660 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) t!236928) tb!156397))

(declare-fun result!198652 () Bool)

(assert (= result!198652 result!198648))

(assert (=> d!874578 t!236928))

(declare-fun b_and!212309 () Bool)

(assert (= b_and!212243 (and (=> t!236928 result!198652) b_and!212309)))

(declare-fun tb!156399 () Bool)

(declare-fun t!236930 () Bool)

(assert (=> (and b!3194963 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) t!236930) tb!156399))

(declare-fun result!198654 () Bool)

(assert (= result!198654 result!198648))

(assert (=> d!874578 t!236930))

(declare-fun b_and!212311 () Bool)

(assert (= b_and!212241 (and (=> t!236930 result!198654) b_and!212311)))

(declare-fun tb!156401 () Bool)

(declare-fun t!236932 () Bool)

(assert (=> (and b!3194957 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) t!236932) tb!156401))

(declare-fun result!198656 () Bool)

(assert (= result!198656 result!198648))

(assert (=> d!874578 t!236932))

(declare-fun b_and!212313 () Bool)

(assert (= b_and!212237 (and (=> t!236932 result!198656) b_and!212313)))

(declare-fun m!3458097 () Bool)

(assert (=> d!874578 m!3458097))

(declare-fun m!3458099 () Bool)

(assert (=> d!874578 m!3458099))

(assert (=> b!3195618 d!874578))

(declare-fun d!874580 () Bool)

(declare-fun c!536742 () Bool)

(assert (=> d!874580 (= c!536742 ((_ is Cons!36034) (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034))))))

(declare-fun e!1993111 () List!36157)

(assert (=> d!874580 (= (printList!1329 thiss!18206 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034))) e!1993111)))

(declare-fun b!3197125 () Bool)

(assert (=> b!3197125 (= e!1993111 (++!8622 (list!12799 (charsOf!3206 (h!41454 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034))))) (printList!1329 thiss!18206 (t!236613 (t!236613 (Cons!36034 (h!41454 tokens!494) Nil!36034))))))))

(declare-fun b!3197126 () Bool)

(assert (=> b!3197126 (= e!1993111 Nil!36033)))

(assert (= (and d!874580 c!536742) b!3197125))

(assert (= (and d!874580 (not c!536742)) b!3197126))

(declare-fun m!3458101 () Bool)

(assert (=> b!3197125 m!3458101))

(assert (=> b!3197125 m!3458101))

(declare-fun m!3458103 () Bool)

(assert (=> b!3197125 m!3458103))

(declare-fun m!3458105 () Bool)

(assert (=> b!3197125 m!3458105))

(assert (=> b!3197125 m!3458103))

(assert (=> b!3197125 m!3458105))

(declare-fun m!3458107 () Bool)

(assert (=> b!3197125 m!3458107))

(assert (=> b!3195618 d!874580))

(declare-fun d!874582 () Bool)

(assert (=> d!874582 (= (isEmpty!20118 lt!1076593) (not ((_ is Some!7070) lt!1076593)))))

(assert (=> d!873494 d!874582))

(declare-fun d!874584 () Bool)

(assert (=> d!874584 (dynLambda!14501 lambda!116989 (h!41454 (t!236613 tokens!494)))))

(assert (=> d!874584 true))

(declare-fun _$7!1057 () Unit!50426)

(assert (=> d!874584 (= (choose!18646 tokens!494 lambda!116989 (h!41454 (t!236613 tokens!494))) _$7!1057)))

(declare-fun b_lambda!87293 () Bool)

(assert (=> (not b_lambda!87293) (not d!874584)))

(declare-fun bs!540676 () Bool)

(assert (= bs!540676 d!874584))

(assert (=> bs!540676 m!3455635))

(assert (=> d!873668 d!874584))

(assert (=> d!873668 d!873466))

(declare-fun b!3197127 () Bool)

(declare-fun e!1993112 () Bool)

(declare-fun tp!1010739 () Bool)

(assert (=> b!3197127 (= e!1993112 (and tp_is_empty!17281 tp!1010739))))

(assert (=> b!3195688 (= tp!1010616 e!1993112)))

(assert (= (and b!3195688 ((_ is Cons!36033) (t!236612 (originalCharacters!5904 separatorToken!241)))) b!3197127))

(declare-fun e!1993113 () Bool)

(assert (=> b!3195674 (= tp!1010601 e!1993113)))

(declare-fun b!3197128 () Bool)

(assert (=> b!3197128 (= e!1993113 tp_is_empty!17281)))

(declare-fun b!3197129 () Bool)

(declare-fun tp!1010742 () Bool)

(declare-fun tp!1010741 () Bool)

(assert (=> b!3197129 (= e!1993113 (and tp!1010742 tp!1010741))))

(declare-fun b!3197130 () Bool)

(declare-fun tp!1010744 () Bool)

(assert (=> b!3197130 (= e!1993113 tp!1010744)))

(declare-fun b!3197131 () Bool)

(declare-fun tp!1010743 () Bool)

(declare-fun tp!1010740 () Bool)

(assert (=> b!3197131 (= e!1993113 (and tp!1010743 tp!1010740))))

(assert (= (and b!3195674 ((_ is ElementMatch!9949) (regOne!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197128))

(assert (= (and b!3195674 ((_ is Concat!15369) (regOne!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197129))

(assert (= (and b!3195674 ((_ is Star!9949) (regOne!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197130))

(assert (= (and b!3195674 ((_ is Union!9949) (regOne!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197131))

(declare-fun e!1993114 () Bool)

(assert (=> b!3195674 (= tp!1010598 e!1993114)))

(declare-fun b!3197132 () Bool)

(assert (=> b!3197132 (= e!1993114 tp_is_empty!17281)))

(declare-fun b!3197133 () Bool)

(declare-fun tp!1010747 () Bool)

(declare-fun tp!1010746 () Bool)

(assert (=> b!3197133 (= e!1993114 (and tp!1010747 tp!1010746))))

(declare-fun b!3197134 () Bool)

(declare-fun tp!1010749 () Bool)

(assert (=> b!3197134 (= e!1993114 tp!1010749)))

(declare-fun b!3197135 () Bool)

(declare-fun tp!1010748 () Bool)

(declare-fun tp!1010745 () Bool)

(assert (=> b!3197135 (= e!1993114 (and tp!1010748 tp!1010745))))

(assert (= (and b!3195674 ((_ is ElementMatch!9949) (regTwo!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197132))

(assert (= (and b!3195674 ((_ is Concat!15369) (regTwo!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197133))

(assert (= (and b!3195674 ((_ is Star!9949) (regTwo!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197134))

(assert (= (and b!3195674 ((_ is Union!9949) (regTwo!20411 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197135))

(declare-fun e!1993115 () Bool)

(assert (=> b!3195673 (= tp!1010602 e!1993115)))

(declare-fun b!3197136 () Bool)

(assert (=> b!3197136 (= e!1993115 tp_is_empty!17281)))

(declare-fun b!3197137 () Bool)

(declare-fun tp!1010752 () Bool)

(declare-fun tp!1010751 () Bool)

(assert (=> b!3197137 (= e!1993115 (and tp!1010752 tp!1010751))))

(declare-fun b!3197138 () Bool)

(declare-fun tp!1010754 () Bool)

(assert (=> b!3197138 (= e!1993115 tp!1010754)))

(declare-fun b!3197139 () Bool)

(declare-fun tp!1010753 () Bool)

(declare-fun tp!1010750 () Bool)

(assert (=> b!3197139 (= e!1993115 (and tp!1010753 tp!1010750))))

(assert (= (and b!3195673 ((_ is ElementMatch!9949) (reg!10278 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197136))

(assert (= (and b!3195673 ((_ is Concat!15369) (reg!10278 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197137))

(assert (= (and b!3195673 ((_ is Star!9949) (reg!10278 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197138))

(assert (= (and b!3195673 ((_ is Union!9949) (reg!10278 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197139))

(declare-fun e!1993116 () Bool)

(assert (=> b!3195672 (= tp!1010600 e!1993116)))

(declare-fun b!3197140 () Bool)

(assert (=> b!3197140 (= e!1993116 tp_is_empty!17281)))

(declare-fun b!3197141 () Bool)

(declare-fun tp!1010757 () Bool)

(declare-fun tp!1010756 () Bool)

(assert (=> b!3197141 (= e!1993116 (and tp!1010757 tp!1010756))))

(declare-fun b!3197142 () Bool)

(declare-fun tp!1010759 () Bool)

(assert (=> b!3197142 (= e!1993116 tp!1010759)))

(declare-fun b!3197143 () Bool)

(declare-fun tp!1010758 () Bool)

(declare-fun tp!1010755 () Bool)

(assert (=> b!3197143 (= e!1993116 (and tp!1010758 tp!1010755))))

(assert (= (and b!3195672 ((_ is ElementMatch!9949) (regOne!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197140))

(assert (= (and b!3195672 ((_ is Concat!15369) (regOne!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197141))

(assert (= (and b!3195672 ((_ is Star!9949) (regOne!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197142))

(assert (= (and b!3195672 ((_ is Union!9949) (regOne!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197143))

(declare-fun e!1993117 () Bool)

(assert (=> b!3195672 (= tp!1010599 e!1993117)))

(declare-fun b!3197144 () Bool)

(assert (=> b!3197144 (= e!1993117 tp_is_empty!17281)))

(declare-fun b!3197145 () Bool)

(declare-fun tp!1010762 () Bool)

(declare-fun tp!1010761 () Bool)

(assert (=> b!3197145 (= e!1993117 (and tp!1010762 tp!1010761))))

(declare-fun b!3197146 () Bool)

(declare-fun tp!1010764 () Bool)

(assert (=> b!3197146 (= e!1993117 tp!1010764)))

(declare-fun b!3197147 () Bool)

(declare-fun tp!1010763 () Bool)

(declare-fun tp!1010760 () Bool)

(assert (=> b!3197147 (= e!1993117 (and tp!1010763 tp!1010760))))

(assert (= (and b!3195672 ((_ is ElementMatch!9949) (regTwo!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197144))

(assert (= (and b!3195672 ((_ is Concat!15369) (regTwo!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197145))

(assert (= (and b!3195672 ((_ is Star!9949) (regTwo!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197146))

(assert (= (and b!3195672 ((_ is Union!9949) (regTwo!20410 (regex!5190 (rule!7622 (h!41454 tokens!494)))))) b!3197147))

(declare-fun tp!1010772 () Bool)

(declare-fun b!3197156 () Bool)

(declare-fun e!1993123 () Bool)

(declare-fun tp!1010771 () Bool)

(assert (=> b!3197156 (= e!1993123 (and (inv!48878 (left!28000 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))))) tp!1010771 (inv!48878 (right!28330 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))))) tp!1010772))))

(declare-fun b!3197158 () Bool)

(declare-fun e!1993122 () Bool)

(declare-fun tp!1010773 () Bool)

(assert (=> b!3197158 (= e!1993122 tp!1010773)))

(declare-fun b!3197157 () Bool)

(declare-fun inv!48886 (IArray!21515) Bool)

(assert (=> b!3197157 (= e!1993123 (and (inv!48886 (xs!13873 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))))) e!1993122))))

(assert (=> b!3195153 (= tp!1010499 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494)))))) e!1993123))))

(assert (= (and b!3195153 ((_ is Node!10755) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))))) b!3197156))

(assert (= b!3197157 b!3197158))

(assert (= (and b!3195153 ((_ is Leaf!16961) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (value!168375 (h!41454 (t!236613 tokens!494))))))) b!3197157))

(declare-fun m!3458109 () Bool)

(assert (=> b!3197156 m!3458109))

(declare-fun m!3458111 () Bool)

(assert (=> b!3197156 m!3458111))

(declare-fun m!3458113 () Bool)

(assert (=> b!3197157 m!3458113))

(assert (=> b!3195153 m!3455159))

(declare-fun e!1993124 () Bool)

(assert (=> b!3195681 (= tp!1010608 e!1993124)))

(declare-fun b!3197159 () Bool)

(assert (=> b!3197159 (= e!1993124 tp_is_empty!17281)))

(declare-fun b!3197160 () Bool)

(declare-fun tp!1010776 () Bool)

(declare-fun tp!1010775 () Bool)

(assert (=> b!3197160 (= e!1993124 (and tp!1010776 tp!1010775))))

(declare-fun b!3197161 () Bool)

(declare-fun tp!1010778 () Bool)

(assert (=> b!3197161 (= e!1993124 tp!1010778)))

(declare-fun b!3197162 () Bool)

(declare-fun tp!1010777 () Bool)

(declare-fun tp!1010774 () Bool)

(assert (=> b!3197162 (= e!1993124 (and tp!1010777 tp!1010774))))

(assert (= (and b!3195681 ((_ is ElementMatch!9949) (regOne!20410 (regex!5190 (h!41455 rules!2135))))) b!3197159))

(assert (= (and b!3195681 ((_ is Concat!15369) (regOne!20410 (regex!5190 (h!41455 rules!2135))))) b!3197160))

(assert (= (and b!3195681 ((_ is Star!9949) (regOne!20410 (regex!5190 (h!41455 rules!2135))))) b!3197161))

(assert (= (and b!3195681 ((_ is Union!9949) (regOne!20410 (regex!5190 (h!41455 rules!2135))))) b!3197162))

(declare-fun e!1993125 () Bool)

(assert (=> b!3195681 (= tp!1010607 e!1993125)))

(declare-fun b!3197163 () Bool)

(assert (=> b!3197163 (= e!1993125 tp_is_empty!17281)))

(declare-fun b!3197164 () Bool)

(declare-fun tp!1010781 () Bool)

(declare-fun tp!1010780 () Bool)

(assert (=> b!3197164 (= e!1993125 (and tp!1010781 tp!1010780))))

(declare-fun b!3197165 () Bool)

(declare-fun tp!1010783 () Bool)

(assert (=> b!3197165 (= e!1993125 tp!1010783)))

(declare-fun b!3197166 () Bool)

(declare-fun tp!1010782 () Bool)

(declare-fun tp!1010779 () Bool)

(assert (=> b!3197166 (= e!1993125 (and tp!1010782 tp!1010779))))

(assert (= (and b!3195681 ((_ is ElementMatch!9949) (regTwo!20410 (regex!5190 (h!41455 rules!2135))))) b!3197163))

(assert (= (and b!3195681 ((_ is Concat!15369) (regTwo!20410 (regex!5190 (h!41455 rules!2135))))) b!3197164))

(assert (= (and b!3195681 ((_ is Star!9949) (regTwo!20410 (regex!5190 (h!41455 rules!2135))))) b!3197165))

(assert (= (and b!3195681 ((_ is Union!9949) (regTwo!20410 (regex!5190 (h!41455 rules!2135))))) b!3197166))

(declare-fun e!1993126 () Bool)

(assert (=> b!3195659 (= tp!1010583 e!1993126)))

(declare-fun b!3197167 () Bool)

(assert (=> b!3197167 (= e!1993126 tp_is_empty!17281)))

(declare-fun b!3197168 () Bool)

(declare-fun tp!1010786 () Bool)

(declare-fun tp!1010785 () Bool)

(assert (=> b!3197168 (= e!1993126 (and tp!1010786 tp!1010785))))

(declare-fun b!3197169 () Bool)

(declare-fun tp!1010788 () Bool)

(assert (=> b!3197169 (= e!1993126 tp!1010788)))

(declare-fun b!3197170 () Bool)

(declare-fun tp!1010787 () Bool)

(declare-fun tp!1010784 () Bool)

(assert (=> b!3197170 (= e!1993126 (and tp!1010787 tp!1010784))))

(assert (= (and b!3195659 ((_ is ElementMatch!9949) (regex!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) b!3197167))

(assert (= (and b!3195659 ((_ is Concat!15369) (regex!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) b!3197168))

(assert (= (and b!3195659 ((_ is Star!9949) (regex!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) b!3197169))

(assert (= (and b!3195659 ((_ is Union!9949) (regex!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) b!3197170))

(declare-fun tp!1010790 () Bool)

(declare-fun tp!1010789 () Bool)

(declare-fun b!3197171 () Bool)

(declare-fun e!1993128 () Bool)

(assert (=> b!3197171 (= e!1993128 (and (inv!48878 (left!28000 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))))) tp!1010789 (inv!48878 (right!28330 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))))) tp!1010790))))

(declare-fun b!3197173 () Bool)

(declare-fun e!1993127 () Bool)

(declare-fun tp!1010791 () Bool)

(assert (=> b!3197173 (= e!1993127 tp!1010791)))

(declare-fun b!3197172 () Bool)

(assert (=> b!3197172 (= e!1993128 (and (inv!48886 (xs!13873 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))))) e!1993127))))

(assert (=> b!3194975 (= tp!1010497 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494))))) e!1993128))))

(assert (= (and b!3194975 ((_ is Node!10755) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))))) b!3197171))

(assert (= b!3197172 b!3197173))

(assert (= (and b!3194975 ((_ is Leaf!16961) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (value!168375 (h!41454 tokens!494)))))) b!3197172))

(declare-fun m!3458115 () Bool)

(assert (=> b!3197171 m!3458115))

(declare-fun m!3458117 () Bool)

(assert (=> b!3197171 m!3458117))

(declare-fun m!3458119 () Bool)

(assert (=> b!3197172 m!3458119))

(assert (=> b!3194975 m!3454929))

(declare-fun b!3197174 () Bool)

(declare-fun e!1993129 () Bool)

(declare-fun tp!1010792 () Bool)

(assert (=> b!3197174 (= e!1993129 (and tp_is_empty!17281 tp!1010792))))

(assert (=> b!3195658 (= tp!1010586 e!1993129)))

(assert (= (and b!3195658 ((_ is Cons!36033) (originalCharacters!5904 (h!41454 (t!236613 tokens!494))))) b!3197174))

(declare-fun tp!1010794 () Bool)

(declare-fun e!1993131 () Bool)

(declare-fun b!3197175 () Bool)

(declare-fun tp!1010793 () Bool)

(assert (=> b!3197175 (= e!1993131 (and (inv!48878 (left!28000 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))))) tp!1010793 (inv!48878 (right!28330 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))))) tp!1010794))))

(declare-fun b!3197177 () Bool)

(declare-fun e!1993130 () Bool)

(declare-fun tp!1010795 () Bool)

(assert (=> b!3197177 (= e!1993130 tp!1010795)))

(declare-fun b!3197176 () Bool)

(assert (=> b!3197176 (= e!1993131 (and (inv!48886 (xs!13873 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))))) e!1993130))))

(assert (=> b!3195144 (= tp!1010498 (and (inv!48878 (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241)))) e!1993131))))

(assert (= (and b!3195144 ((_ is Node!10755) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))))) b!3197175))

(assert (= b!3197176 b!3197177))

(assert (= (and b!3195144 ((_ is Leaf!16961) (c!536197 (dynLambda!14502 (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (value!168375 separatorToken!241))))) b!3197176))

(declare-fun m!3458121 () Bool)

(assert (=> b!3197175 m!3458121))

(declare-fun m!3458123 () Bool)

(assert (=> b!3197175 m!3458123))

(declare-fun m!3458125 () Bool)

(assert (=> b!3197176 m!3458125))

(assert (=> b!3195144 m!3455123))

(declare-fun b!3197181 () Bool)

(declare-fun b_free!84901 () Bool)

(declare-fun b_next!85605 () Bool)

(assert (=> b!3197181 (= b_free!84901 (not b_next!85605))))

(declare-fun t!236934 () Bool)

(declare-fun tb!156403 () Bool)

(assert (=> (and b!3197181 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236934) tb!156403))

(declare-fun result!198660 () Bool)

(assert (= result!198660 result!198568))

(assert (=> d!874316 t!236934))

(declare-fun t!236936 () Bool)

(declare-fun tb!156405 () Bool)

(assert (=> (and b!3197181 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236936) tb!156405))

(declare-fun result!198662 () Bool)

(assert (= result!198662 result!198352))

(assert (=> d!873510 t!236936))

(declare-fun t!236938 () Bool)

(declare-fun tb!156407 () Bool)

(assert (=> (and b!3197181 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236938) tb!156407))

(declare-fun result!198664 () Bool)

(assert (= result!198664 result!198638))

(assert (=> d!874528 t!236938))

(assert (=> d!874308 t!236934))

(declare-fun t!236940 () Bool)

(declare-fun tb!156409 () Bool)

(assert (=> (and b!3197181 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236940) tb!156409))

(declare-fun result!198666 () Bool)

(assert (= result!198666 result!198586))

(assert (=> d!874494 t!236940))

(declare-fun tp!1010800 () Bool)

(declare-fun b_and!212315 () Bool)

(assert (=> b!3197181 (= tp!1010800 (and (=> t!236934 result!198660) (=> t!236940 result!198666) (=> t!236938 result!198664) (=> t!236936 result!198662) b_and!212315))))

(declare-fun b_free!84903 () Bool)

(declare-fun b_next!85607 () Bool)

(assert (=> b!3197181 (= b_free!84903 (not b_next!85607))))

(declare-fun t!236942 () Bool)

(declare-fun tb!156411 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236942) tb!156411))

(declare-fun result!198668 () Bool)

(assert (= result!198668 result!198344))

(assert (=> d!873470 t!236942))

(declare-fun t!236944 () Bool)

(declare-fun tb!156413 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) t!236944) tb!156413))

(declare-fun result!198670 () Bool)

(assert (= result!198670 result!198366))

(assert (=> b!3195825 t!236944))

(declare-fun t!236946 () Bool)

(declare-fun tb!156415 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236946) tb!156415))

(declare-fun result!198672 () Bool)

(assert (= result!198672 result!198558))

(assert (=> d!874308 t!236946))

(declare-fun t!236948 () Bool)

(declare-fun tb!156417 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0))))) t!236948) tb!156417))

(declare-fun result!198674 () Bool)

(assert (= result!198674 result!198528))

(assert (=> d!874136 t!236948))

(declare-fun tb!156419 () Bool)

(declare-fun t!236950 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) t!236950) tb!156419))

(declare-fun result!198676 () Bool)

(assert (= result!198676 result!198360))

(assert (=> d!873520 t!236950))

(assert (=> d!873532 t!236944))

(assert (=> b!3195254 t!236950))

(declare-fun tb!156421 () Bool)

(declare-fun t!236952 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236952) tb!156421))

(declare-fun result!198678 () Bool)

(assert (= result!198678 result!198498))

(assert (=> d!874034 t!236952))

(assert (=> b!3194980 t!236942))

(declare-fun t!236954 () Bool)

(declare-fun tb!156423 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) t!236954) tb!156423))

(declare-fun result!198680 () Bool)

(assert (= result!198680 result!198648))

(assert (=> d!874578 t!236954))

(declare-fun t!236956 () Bool)

(declare-fun tb!156425 () Bool)

(assert (=> (and b!3197181 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494))))))) t!236956) tb!156425))

(declare-fun result!198682 () Bool)

(assert (= result!198682 result!198508))

(assert (=> d!874088 t!236956))

(declare-fun tp!1010798 () Bool)

(declare-fun b_and!212317 () Bool)

(assert (=> b!3197181 (= tp!1010798 (and (=> t!236952 result!198678) (=> t!236946 result!198672) (=> t!236950 result!198676) (=> t!236956 result!198682) (=> t!236948 result!198674) (=> t!236944 result!198670) (=> t!236942 result!198668) (=> t!236954 result!198680) b_and!212317))))

(declare-fun tp!1010799 () Bool)

(declare-fun e!1993137 () Bool)

(declare-fun e!1993134 () Bool)

(declare-fun b!3197179 () Bool)

(assert (=> b!3197179 (= e!1993137 (and (inv!21 (value!168375 (h!41454 (t!236613 (t!236613 tokens!494))))) e!1993134 tp!1010799))))

(declare-fun tp!1010797 () Bool)

(declare-fun b!3197178 () Bool)

(declare-fun e!1993135 () Bool)

(assert (=> b!3197178 (= e!1993135 (and (inv!48877 (h!41454 (t!236613 (t!236613 tokens!494)))) e!1993137 tp!1010797))))

(declare-fun tp!1010796 () Bool)

(declare-fun e!1993136 () Bool)

(declare-fun b!3197180 () Bool)

(assert (=> b!3197180 (= e!1993134 (and tp!1010796 (inv!48873 (tag!5708 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (inv!48876 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) e!1993136))))

(assert (=> b!3197181 (= e!1993136 (and tp!1010800 tp!1010798))))

(assert (=> b!3195657 (= tp!1010584 e!1993135)))

(assert (= b!3197180 b!3197181))

(assert (= b!3197179 b!3197180))

(assert (= b!3197178 b!3197179))

(assert (= (and b!3195657 ((_ is Cons!36034) (t!236613 (t!236613 tokens!494)))) b!3197178))

(declare-fun m!3458127 () Bool)

(assert (=> b!3197179 m!3458127))

(declare-fun m!3458129 () Bool)

(assert (=> b!3197178 m!3458129))

(declare-fun m!3458131 () Bool)

(assert (=> b!3197180 m!3458131))

(declare-fun m!3458133 () Bool)

(assert (=> b!3197180 m!3458133))

(declare-fun e!1993138 () Bool)

(assert (=> b!3195683 (= tp!1010609 e!1993138)))

(declare-fun b!3197182 () Bool)

(assert (=> b!3197182 (= e!1993138 tp_is_empty!17281)))

(declare-fun b!3197183 () Bool)

(declare-fun tp!1010803 () Bool)

(declare-fun tp!1010802 () Bool)

(assert (=> b!3197183 (= e!1993138 (and tp!1010803 tp!1010802))))

(declare-fun b!3197184 () Bool)

(declare-fun tp!1010805 () Bool)

(assert (=> b!3197184 (= e!1993138 tp!1010805)))

(declare-fun b!3197185 () Bool)

(declare-fun tp!1010804 () Bool)

(declare-fun tp!1010801 () Bool)

(assert (=> b!3197185 (= e!1993138 (and tp!1010804 tp!1010801))))

(assert (= (and b!3195683 ((_ is ElementMatch!9949) (regOne!20411 (regex!5190 (h!41455 rules!2135))))) b!3197182))

(assert (= (and b!3195683 ((_ is Concat!15369) (regOne!20411 (regex!5190 (h!41455 rules!2135))))) b!3197183))

(assert (= (and b!3195683 ((_ is Star!9949) (regOne!20411 (regex!5190 (h!41455 rules!2135))))) b!3197184))

(assert (= (and b!3195683 ((_ is Union!9949) (regOne!20411 (regex!5190 (h!41455 rules!2135))))) b!3197185))

(declare-fun e!1993139 () Bool)

(assert (=> b!3195683 (= tp!1010606 e!1993139)))

(declare-fun b!3197186 () Bool)

(assert (=> b!3197186 (= e!1993139 tp_is_empty!17281)))

(declare-fun b!3197187 () Bool)

(declare-fun tp!1010808 () Bool)

(declare-fun tp!1010807 () Bool)

(assert (=> b!3197187 (= e!1993139 (and tp!1010808 tp!1010807))))

(declare-fun b!3197188 () Bool)

(declare-fun tp!1010810 () Bool)

(assert (=> b!3197188 (= e!1993139 tp!1010810)))

(declare-fun b!3197189 () Bool)

(declare-fun tp!1010809 () Bool)

(declare-fun tp!1010806 () Bool)

(assert (=> b!3197189 (= e!1993139 (and tp!1010809 tp!1010806))))

(assert (= (and b!3195683 ((_ is ElementMatch!9949) (regTwo!20411 (regex!5190 (h!41455 rules!2135))))) b!3197186))

(assert (= (and b!3195683 ((_ is Concat!15369) (regTwo!20411 (regex!5190 (h!41455 rules!2135))))) b!3197187))

(assert (= (and b!3195683 ((_ is Star!9949) (regTwo!20411 (regex!5190 (h!41455 rules!2135))))) b!3197188))

(assert (= (and b!3195683 ((_ is Union!9949) (regTwo!20411 (regex!5190 (h!41455 rules!2135))))) b!3197189))

(declare-fun e!1993140 () Bool)

(assert (=> b!3195682 (= tp!1010610 e!1993140)))

(declare-fun b!3197190 () Bool)

(assert (=> b!3197190 (= e!1993140 tp_is_empty!17281)))

(declare-fun b!3197191 () Bool)

(declare-fun tp!1010813 () Bool)

(declare-fun tp!1010812 () Bool)

(assert (=> b!3197191 (= e!1993140 (and tp!1010813 tp!1010812))))

(declare-fun b!3197192 () Bool)

(declare-fun tp!1010815 () Bool)

(assert (=> b!3197192 (= e!1993140 tp!1010815)))

(declare-fun b!3197193 () Bool)

(declare-fun tp!1010814 () Bool)

(declare-fun tp!1010811 () Bool)

(assert (=> b!3197193 (= e!1993140 (and tp!1010814 tp!1010811))))

(assert (= (and b!3195682 ((_ is ElementMatch!9949) (reg!10278 (regex!5190 (h!41455 rules!2135))))) b!3197190))

(assert (= (and b!3195682 ((_ is Concat!15369) (reg!10278 (regex!5190 (h!41455 rules!2135))))) b!3197191))

(assert (= (and b!3195682 ((_ is Star!9949) (reg!10278 (regex!5190 (h!41455 rules!2135))))) b!3197192))

(assert (= (and b!3195682 ((_ is Union!9949) (reg!10278 (regex!5190 (h!41455 rules!2135))))) b!3197193))

(declare-fun e!1993141 () Bool)

(assert (=> b!3195685 (= tp!1010613 e!1993141)))

(declare-fun b!3197194 () Bool)

(assert (=> b!3197194 (= e!1993141 tp_is_empty!17281)))

(declare-fun b!3197195 () Bool)

(declare-fun tp!1010818 () Bool)

(declare-fun tp!1010817 () Bool)

(assert (=> b!3197195 (= e!1993141 (and tp!1010818 tp!1010817))))

(declare-fun b!3197196 () Bool)

(declare-fun tp!1010820 () Bool)

(assert (=> b!3197196 (= e!1993141 tp!1010820)))

(declare-fun b!3197197 () Bool)

(declare-fun tp!1010819 () Bool)

(declare-fun tp!1010816 () Bool)

(assert (=> b!3197197 (= e!1993141 (and tp!1010819 tp!1010816))))

(assert (= (and b!3195685 ((_ is ElementMatch!9949) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197194))

(assert (= (and b!3195685 ((_ is Concat!15369) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197195))

(assert (= (and b!3195685 ((_ is Star!9949) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197196))

(assert (= (and b!3195685 ((_ is Union!9949) (regOne!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197197))

(declare-fun e!1993142 () Bool)

(assert (=> b!3195685 (= tp!1010612 e!1993142)))

(declare-fun b!3197198 () Bool)

(assert (=> b!3197198 (= e!1993142 tp_is_empty!17281)))

(declare-fun b!3197199 () Bool)

(declare-fun tp!1010823 () Bool)

(declare-fun tp!1010822 () Bool)

(assert (=> b!3197199 (= e!1993142 (and tp!1010823 tp!1010822))))

(declare-fun b!3197200 () Bool)

(declare-fun tp!1010825 () Bool)

(assert (=> b!3197200 (= e!1993142 tp!1010825)))

(declare-fun b!3197201 () Bool)

(declare-fun tp!1010824 () Bool)

(declare-fun tp!1010821 () Bool)

(assert (=> b!3197201 (= e!1993142 (and tp!1010824 tp!1010821))))

(assert (= (and b!3195685 ((_ is ElementMatch!9949) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197198))

(assert (= (and b!3195685 ((_ is Concat!15369) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197199))

(assert (= (and b!3195685 ((_ is Star!9949) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197200))

(assert (= (and b!3195685 ((_ is Union!9949) (regTwo!20410 (regex!5190 (rule!7622 separatorToken!241))))) b!3197201))

(declare-fun e!1993143 () Bool)

(assert (=> b!3195645 (= tp!1010572 e!1993143)))

(declare-fun b!3197202 () Bool)

(assert (=> b!3197202 (= e!1993143 tp_is_empty!17281)))

(declare-fun b!3197203 () Bool)

(declare-fun tp!1010828 () Bool)

(declare-fun tp!1010827 () Bool)

(assert (=> b!3197203 (= e!1993143 (and tp!1010828 tp!1010827))))

(declare-fun b!3197204 () Bool)

(declare-fun tp!1010830 () Bool)

(assert (=> b!3197204 (= e!1993143 tp!1010830)))

(declare-fun b!3197205 () Bool)

(declare-fun tp!1010829 () Bool)

(declare-fun tp!1010826 () Bool)

(assert (=> b!3197205 (= e!1993143 (and tp!1010829 tp!1010826))))

(assert (= (and b!3195645 ((_ is ElementMatch!9949) (regex!5190 (h!41455 (t!236614 rules!2135))))) b!3197202))

(assert (= (and b!3195645 ((_ is Concat!15369) (regex!5190 (h!41455 (t!236614 rules!2135))))) b!3197203))

(assert (= (and b!3195645 ((_ is Star!9949) (regex!5190 (h!41455 (t!236614 rules!2135))))) b!3197204))

(assert (= (and b!3195645 ((_ is Union!9949) (regex!5190 (h!41455 (t!236614 rules!2135))))) b!3197205))

(declare-fun b!3197206 () Bool)

(declare-fun e!1993144 () Bool)

(declare-fun tp!1010831 () Bool)

(assert (=> b!3197206 (= e!1993144 (and tp_is_empty!17281 tp!1010831))))

(assert (=> b!3195679 (= tp!1010605 e!1993144)))

(assert (= (and b!3195679 ((_ is Cons!36033) (t!236612 (originalCharacters!5904 (h!41454 tokens!494))))) b!3197206))

(declare-fun b!3197209 () Bool)

(declare-fun b_free!84905 () Bool)

(declare-fun b_next!85609 () Bool)

(assert (=> b!3197209 (= b_free!84905 (not b_next!85609))))

(declare-fun tb!156427 () Bool)

(declare-fun t!236958 () Bool)

(assert (=> (and b!3197209 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236958) tb!156427))

(declare-fun result!198684 () Bool)

(assert (= result!198684 result!198568))

(assert (=> d!874316 t!236958))

(declare-fun tb!156429 () Bool)

(declare-fun t!236960 () Bool)

(assert (=> (and b!3197209 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236960) tb!156429))

(declare-fun result!198686 () Bool)

(assert (= result!198686 result!198352))

(assert (=> d!873510 t!236960))

(declare-fun t!236962 () Bool)

(declare-fun tb!156431 () Bool)

(assert (=> (and b!3197209 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toValue!7258 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236962) tb!156431))

(declare-fun result!198688 () Bool)

(assert (= result!198688 result!198638))

(assert (=> d!874528 t!236962))

(assert (=> d!874308 t!236958))

(declare-fun t!236964 () Bool)

(declare-fun tb!156433 () Bool)

(assert (=> (and b!3197209 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236964) tb!156433))

(declare-fun result!198690 () Bool)

(assert (= result!198690 result!198586))

(assert (=> d!874494 t!236964))

(declare-fun b_and!212319 () Bool)

(declare-fun tp!1010832 () Bool)

(assert (=> b!3197209 (= tp!1010832 (and (=> t!236964 result!198690) (=> t!236962 result!198688) (=> t!236960 result!198686) (=> t!236958 result!198684) b_and!212319))))

(declare-fun b_free!84907 () Bool)

(declare-fun b_next!85611 () Bool)

(assert (=> b!3197209 (= b_free!84907 (not b_next!85611))))

(declare-fun tb!156435 () Bool)

(declare-fun t!236966 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236966) tb!156435))

(declare-fun result!198692 () Bool)

(assert (= result!198692 result!198344))

(assert (=> d!873470 t!236966))

(declare-fun tb!156437 () Bool)

(declare-fun t!236968 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494)))))) t!236968) tb!156437))

(declare-fun result!198694 () Bool)

(assert (= result!198694 result!198366))

(assert (=> b!3195825 t!236968))

(declare-fun tb!156439 () Bool)

(declare-fun t!236970 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494))))) t!236970) tb!156439))

(declare-fun result!198696 () Bool)

(assert (= result!198696 result!198558))

(assert (=> d!874308 t!236970))

(declare-fun t!236972 () Bool)

(declare-fun tb!156441 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (apply!8117 lt!1076571 0))))) t!236972) tb!156441))

(declare-fun result!198698 () Bool)

(assert (= result!198698 result!198528))

(assert (=> d!874136 t!236972))

(declare-fun tb!156443 () Bool)

(declare-fun t!236974 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241)))) t!236974) tb!156443))

(declare-fun result!198700 () Bool)

(assert (= result!198700 result!198360))

(assert (=> d!873520 t!236974))

(assert (=> d!873532 t!236968))

(assert (=> b!3195254 t!236974))

(declare-fun t!236976 () Bool)

(declare-fun tb!156445 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (_1!20830 (get!11459 lt!1076622)))))) t!236976) tb!156445))

(declare-fun result!198702 () Bool)

(assert (= result!198702 result!198498))

(assert (=> d!874034 t!236976))

(assert (=> b!3194980 t!236966))

(declare-fun tb!156447 () Bool)

(declare-fun t!236978 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (Cons!36034 (h!41454 tokens!494) Nil!36034)))))) t!236978) tb!156447))

(declare-fun result!198704 () Bool)

(assert (= result!198704 result!198648))

(assert (=> d!874578 t!236978))

(declare-fun t!236980 () Bool)

(declare-fun tb!156449 () Bool)

(assert (=> (and b!3197209 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494))))))) t!236980) tb!156449))

(declare-fun result!198706 () Bool)

(assert (= result!198706 result!198508))

(assert (=> d!874088 t!236980))

(declare-fun b_and!212321 () Bool)

(declare-fun tp!1010834 () Bool)

(assert (=> b!3197209 (= tp!1010834 (and (=> t!236974 result!198700) (=> t!236978 result!198704) (=> t!236970 result!198696) (=> t!236976 result!198702) (=> t!236980 result!198706) (=> t!236966 result!198692) (=> t!236972 result!198698) (=> t!236968 result!198694) b_and!212321))))

(declare-fun e!1993145 () Bool)

(assert (=> b!3197209 (= e!1993145 (and tp!1010832 tp!1010834))))

(declare-fun tp!1010835 () Bool)

(declare-fun e!1993148 () Bool)

(declare-fun b!3197208 () Bool)

(assert (=> b!3197208 (= e!1993148 (and tp!1010835 (inv!48873 (tag!5708 (h!41455 (t!236614 (t!236614 rules!2135))))) (inv!48876 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) e!1993145))))

(declare-fun b!3197207 () Bool)

(declare-fun e!1993147 () Bool)

(declare-fun tp!1010833 () Bool)

(assert (=> b!3197207 (= e!1993147 (and e!1993148 tp!1010833))))

(assert (=> b!3195644 (= tp!1010570 e!1993147)))

(assert (= b!3197208 b!3197209))

(assert (= b!3197207 b!3197208))

(assert (= (and b!3195644 ((_ is Cons!36035) (t!236614 (t!236614 rules!2135)))) b!3197207))

(declare-fun m!3458135 () Bool)

(assert (=> b!3197208 m!3458135))

(declare-fun m!3458137 () Bool)

(assert (=> b!3197208 m!3458137))

(declare-fun e!1993149 () Bool)

(assert (=> b!3195687 (= tp!1010614 e!1993149)))

(declare-fun b!3197210 () Bool)

(assert (=> b!3197210 (= e!1993149 tp_is_empty!17281)))

(declare-fun b!3197211 () Bool)

(declare-fun tp!1010838 () Bool)

(declare-fun tp!1010837 () Bool)

(assert (=> b!3197211 (= e!1993149 (and tp!1010838 tp!1010837))))

(declare-fun b!3197212 () Bool)

(declare-fun tp!1010840 () Bool)

(assert (=> b!3197212 (= e!1993149 tp!1010840)))

(declare-fun b!3197213 () Bool)

(declare-fun tp!1010839 () Bool)

(declare-fun tp!1010836 () Bool)

(assert (=> b!3197213 (= e!1993149 (and tp!1010839 tp!1010836))))

(assert (= (and b!3195687 ((_ is ElementMatch!9949) (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197210))

(assert (= (and b!3195687 ((_ is Concat!15369) (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197211))

(assert (= (and b!3195687 ((_ is Star!9949) (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197212))

(assert (= (and b!3195687 ((_ is Union!9949) (regOne!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197213))

(declare-fun e!1993150 () Bool)

(assert (=> b!3195687 (= tp!1010611 e!1993150)))

(declare-fun b!3197214 () Bool)

(assert (=> b!3197214 (= e!1993150 tp_is_empty!17281)))

(declare-fun b!3197215 () Bool)

(declare-fun tp!1010843 () Bool)

(declare-fun tp!1010842 () Bool)

(assert (=> b!3197215 (= e!1993150 (and tp!1010843 tp!1010842))))

(declare-fun b!3197216 () Bool)

(declare-fun tp!1010845 () Bool)

(assert (=> b!3197216 (= e!1993150 tp!1010845)))

(declare-fun b!3197217 () Bool)

(declare-fun tp!1010844 () Bool)

(declare-fun tp!1010841 () Bool)

(assert (=> b!3197217 (= e!1993150 (and tp!1010844 tp!1010841))))

(assert (= (and b!3195687 ((_ is ElementMatch!9949) (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197214))

(assert (= (and b!3195687 ((_ is Concat!15369) (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197215))

(assert (= (and b!3195687 ((_ is Star!9949) (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197216))

(assert (= (and b!3195687 ((_ is Union!9949) (regTwo!20411 (regex!5190 (rule!7622 separatorToken!241))))) b!3197217))

(declare-fun b!3197220 () Bool)

(declare-fun e!1993153 () Bool)

(assert (=> b!3197220 (= e!1993153 true)))

(declare-fun b!3197219 () Bool)

(declare-fun e!1993152 () Bool)

(assert (=> b!3197219 (= e!1993152 e!1993153)))

(declare-fun b!3197218 () Bool)

(declare-fun e!1993151 () Bool)

(assert (=> b!3197218 (= e!1993151 e!1993152)))

(assert (=> b!3195482 e!1993151))

(assert (= b!3197219 b!3197220))

(assert (= b!3197218 b!3197219))

(assert (= (and b!3195482 ((_ is Cons!36035) (t!236614 rules!2135))) b!3197218))

(assert (=> b!3197220 (< (dynLambda!14506 order!18309 (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135))))) (dynLambda!14507 order!18311 lambda!116999))))

(assert (=> b!3197220 (< (dynLambda!14508 order!18313 (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135))))) (dynLambda!14507 order!18311 lambda!116999))))

(declare-fun e!1993154 () Bool)

(assert (=> b!3195686 (= tp!1010615 e!1993154)))

(declare-fun b!3197221 () Bool)

(assert (=> b!3197221 (= e!1993154 tp_is_empty!17281)))

(declare-fun b!3197222 () Bool)

(declare-fun tp!1010848 () Bool)

(declare-fun tp!1010847 () Bool)

(assert (=> b!3197222 (= e!1993154 (and tp!1010848 tp!1010847))))

(declare-fun b!3197223 () Bool)

(declare-fun tp!1010850 () Bool)

(assert (=> b!3197223 (= e!1993154 tp!1010850)))

(declare-fun b!3197224 () Bool)

(declare-fun tp!1010849 () Bool)

(declare-fun tp!1010846 () Bool)

(assert (=> b!3197224 (= e!1993154 (and tp!1010849 tp!1010846))))

(assert (= (and b!3195686 ((_ is ElementMatch!9949) (reg!10278 (regex!5190 (rule!7622 separatorToken!241))))) b!3197221))

(assert (= (and b!3195686 ((_ is Concat!15369) (reg!10278 (regex!5190 (rule!7622 separatorToken!241))))) b!3197222))

(assert (= (and b!3195686 ((_ is Star!9949) (reg!10278 (regex!5190 (rule!7622 separatorToken!241))))) b!3197223))

(assert (= (and b!3195686 ((_ is Union!9949) (reg!10278 (regex!5190 (rule!7622 separatorToken!241))))) b!3197224))

(declare-fun b_lambda!87295 () Bool)

(assert (= b_lambda!87257 (or (and b!3195660 b_free!84891 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194955 b_free!84875) (and b!3197209 b_free!84907 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3197181 b_free!84903 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194957 b_free!84871 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) b_lambda!87295)))

(declare-fun b_lambda!87297 () Bool)

(assert (= b_lambda!87227 (or (and b!3197181 b_free!84903 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3194955 b_free!84875 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3195660 b_free!84891) (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3197209 b_free!84907 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) (and b!3194957 b_free!84871 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))))) b_lambda!87297)))

(declare-fun b_lambda!87299 () Bool)

(assert (= b_lambda!87267 (or (and b!3194955 b_free!84873) (and b!3195646 b_free!84885 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3197181 b_free!84901 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194957 b_free!84869 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3197209 b_free!84905 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194963 b_free!84865 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3195660 b_free!84889 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) b_lambda!87299)))

(declare-fun b_lambda!87301 () Bool)

(assert (= b_lambda!87259 (or (and b!3194955 b_free!84873) (and b!3195646 b_free!84885 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3197181 b_free!84901 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194957 b_free!84869 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3197209 b_free!84905 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194963 b_free!84865 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3195660 b_free!84889 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) b_lambda!87301)))

(declare-fun b_lambda!87303 () Bool)

(assert (= b_lambda!87293 (or b!3194959 b_lambda!87303)))

(assert (=> d!874584 d!873710))

(declare-fun b_lambda!87305 () Bool)

(assert (= b_lambda!87229 (or b!3194959 b_lambda!87305)))

(assert (=> b!3195839 d!873710))

(declare-fun b_lambda!87307 () Bool)

(assert (= b_lambda!87261 (or (and b!3194955 b_free!84873) (and b!3195646 b_free!84885 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3197181 b_free!84901 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194957 b_free!84869 (= (toValue!7258 (transformation!5190 (rule!7622 separatorToken!241))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3197209 b_free!84905 (= (toValue!7258 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3194963 b_free!84865 (= (toValue!7258 (transformation!5190 (h!41455 rules!2135))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) (and b!3195660 b_free!84889 (= (toValue!7258 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toValue!7258 (transformation!5190 (rule!7622 (h!41454 tokens!494)))))) b_lambda!87307)))

(declare-fun b_lambda!87309 () Bool)

(assert (= b_lambda!87225 (or b!3194959 b_lambda!87309)))

(assert (=> d!873804 d!873708))

(declare-fun b_lambda!87311 () Bool)

(assert (= b_lambda!87245 (or (and b!3194963 b_free!84867 (= (toChars!7117 (transformation!5190 (h!41455 rules!2135))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))))) (and b!3194955 b_free!84875 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 tokens!494)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))))) (and b!3195660 b_free!84891 (= (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 tokens!494))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))))) (and b!3197181 b_free!84903) (and b!3195646 b_free!84887 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 rules!2135)))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))))) (and b!3197209 b_free!84907 (= (toChars!7117 (transformation!5190 (h!41455 (t!236614 (t!236614 rules!2135))))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))))) (and b!3194957 b_free!84871 (= (toChars!7117 (transformation!5190 (rule!7622 separatorToken!241))) (toChars!7117 (transformation!5190 (rule!7622 (h!41454 (t!236613 (t!236613 tokens!494)))))))) b_lambda!87311)))

(declare-fun b_lambda!87313 () Bool)

(assert (= b_lambda!87263 (or d!873580 b_lambda!87313)))

(declare-fun bs!540677 () Bool)

(declare-fun d!874586 () Bool)

(assert (= bs!540677 (and d!874586 d!873580)))

(assert (=> bs!540677 (= (dynLambda!14501 lambda!116999 (h!41454 (list!12803 (seqFromList!3451 tokens!494)))) (rulesProduceIndividualToken!2271 thiss!18206 rules!2135 (h!41454 (list!12803 (seqFromList!3451 tokens!494)))))))

(assert (=> bs!540677 m!3457081))

(assert (=> b!3196863 d!874586))

(check-sat (not b!3196742) b_and!212295 (not b!3196831) (not b!3196160) (not b!3197199) (not b!3197086) (not tb!156275) (not b!3196751) (not b!3197091) (not d!873784) (not d!874578) (not b_lambda!87205) (not b_next!85605) (not b!3196296) (not d!873854) (not b!3196861) (not d!873830) (not b_lambda!87249) (not b!3197087) (not d!874326) (not b!3196149) (not d!874412) (not b!3197157) (not b!3196593) (not b!3197180) (not b!3196608) (not b_next!85591) (not d!874134) (not b!3196307) (not tb!156333) (not bm!231479) (not d!873850) (not b!3197161) (not b!3195804) (not d!874016) (not d!874236) (not d!874012) (not b!3197195) (not b_lambda!87313) (not bm!231469) (not b!3195825) (not b!3195845) (not d!874406) (not b!3195853) (not b!3197138) (not b!3195783) (not d!874132) (not b!3196706) (not b!3197191) (not d!873980) (not b!3196660) (not d!874020) b_and!212297 (not b!3197204) (not b!3197171) (not b!3197135) (not b!3196624) (not b!3197122) (not d!874024) b_and!212321 (not b!3197216) (not d!874026) (not b!3197176) (not d!874320) (not b!3196701) (not b!3197175) (not b!3197224) (not bm!231558) (not b!3197079) (not b_lambda!87307) (not b_lambda!87291) b_and!212303 (not b!3197207) (not d!873806) (not b!3197130) (not b!3196135) (not b!3196168) (not d!873848) (not b!3196123) (not b_lambda!87209) (not bm!231478) (not b!3195896) (not b!3196538) (not b!3197143) (not d!874574) (not b_lambda!87207) (not d!874102) (not b!3196284) b_and!212317 (not b!3195898) b_and!212309 (not b!3196700) (not b!3195823) (not bm!231475) (not b!3197131) (not d!874006) (not b!3195144) (not b!3197062) (not b!3195784) (not b!3195907) (not b_lambda!87305) (not b!3196807) (not b!3197129) (not b_next!85607) (not b!3197049) (not b!3196908) (not b!3196214) (not b!3196282) (not b!3196500) (not b_next!85573) (not d!874368) (not bm!231510) (not bm!231525) (not d!874508) (not d!874550) (not b!3195787) (not b!3196864) (not d!873776) (not b!3196323) (not b!3197200) (not d!874226) (not b!3196216) (not b!3197197) (not bm!231560) (not b!3197093) (not b!3197073) (not d!873818) (not d!874334) (not b!3197218) (not d!874570) (not b!3196582) (not b!3197211) (not d!873852) (not d!874204) (not b!3197212) (not b_lambda!87211) (not b!3197174) (not d!874168) (not b!3196589) (not b!3196079) (not b!3195840) (not b!3196321) (not b!3196656) (not d!874322) (not b_lambda!87203) (not d!874136) (not bm!231434) (not b!3196830) (not b!3196107) (not b!3196592) (not b!3197196) (not b!3197081) (not b!3196625) (not d!874330) (not d!874402) (not b!3197179) (not b!3196536) (not d!874576) (not b!3197095) (not b!3196182) (not b_lambda!87299) (not b!3196428) (not b!3196692) (not b!3196885) (not b!3197222) (not bm!231471) (not b!3196539) (not b!3196545) (not b!3197205) (not d!874044) (not d!874566) b_and!212301 (not b!3197164) (not b!3195888) (not b!3196166) (not d!874372) (not b!3196215) (not b_next!85611) (not b_lambda!87303) (not b!3196509) (not d!874366) (not b!3196131) (not b!3196739) (not b_next!85579) (not b!3195809) b_and!212307 b_and!212319 (not d!874308) (not b_lambda!87295) (not b!3196309) (not bm!231476) (not d!874094) (not bm!231477) (not b!3196703) (not b!3196735) (not b!3196883) (not b!3197127) (not b!3197097) (not b!3196139) (not b!3196848) (not b_lambda!87309) (not b!3197107) (not b!3197162) (not tb!156245) (not b!3197188) (not b!3196146) (not bm!231481) (not b!3197168) (not b!3195904) (not b!3196588) (not d!874504) b_and!212305 (not bm!231473) (not b_lambda!87301) (not b!3197105) (not b_lambda!87289) (not b!3197201) (not b!3196152) b_and!212315 (not b!3196283) (not b!3196148) (not d!874532) (not d!874466) (not b!3196140) (not b!3197139) b_and!212311 (not b!3196121) (not tb!156393) (not b_lambda!87201) (not b!3197223) (not bm!231485) b_and!212313 (not d!874482) (not b!3197183) (not d!874212) (not bm!231555) (not bs!540677) (not b_next!85593) (not b!3196217) (not d!873968) (not b!3196292) (not b!3197147) (not d!874206) (not b!3197177) (not d!874096) (not d!874534) (not d!873816) (not d!874410) (not d!874142) (not b!3197142) (not b!3196318) (not b!3196070) (not b!3196609) (not b!3197166) (not b!3196313) (not b!3196858) (not bm!231472) (not b!3197124) (not b!3195153) (not b!3197134) (not d!874318) (not b!3196304) (not d!874448) (not b_next!85571) (not b!3196127) (not b!3196111) (not b!3196708) (not bm!231550) (not b!3196501) (not b!3195806) (not d!874180) (not b!3196306) (not b!3197099) (not b!3197165) (not d!874022) (not d!874512) (not d!874184) (not b!3195822) (not b!3196853) (not bm!231523) (not bm!231470) (not d!873790) (not bm!231549) (not d!874506) (not d!874530) (not bm!231474) (not d!873822) (not b!3197141) (not b!3196737) (not bm!231524) (not d!874384) (not b!3196138) (not d!874090) (not b!3197178) (not b!3196551) (not b!3196213) (not b!3194975) (not b!3197206) (not d!874208) (not b!3197060) (not b!3195861) (not b!3196125) (not d!873810) (not b_next!85589) (not b!3196310) (not b!3196878) (not d!874438) (not d!874032) (not d!874232) (not bm!231482) (not bm!231545) (not bm!231534) (not tb!156255) (not d!874312) (not b_lambda!87311) (not d!874496) (not bm!231557) (not b!3196544) (not d!874220) (not d!874276) (not d!874540) (not bm!231436) (not b!3196153) (not b!3197189) (not b!3197071) (not b!3196080) (not b!3196623) (not b!3196872) (not b!3196212) (not b!3196128) (not b!3197029) (not b!3197192) (not b!3197187) (not d!874164) (not b!3195893) (not d!874088) (not d!874332) (not bm!231551) (not d!874324) (not b!3197213) (not b!3195788) (not d!873978) (not b!3197125) (not d!874414) (not d!874452) (not b!3197185) (not b!3196515) (not d!873982) (not b!3195820) (not b!3197024) (not b!3197059) (not d!874256) (not b!3196084) (not d!874266) (not b!3197055) (not b!3196655) (not d!874242) (not tb!156305) (not b!3196562) (not b!3196317) (not d!874544) (not tb!156383) (not b!3196749) (not b_lambda!87215) (not d!874450) (not b!3195851) (not b!3197108) (not tb!156315) (not b!3196286) (not d!874030) (not b!3196290) (not d!873836) (not b!3195838) (not d!874314) (not b!3196603) (not b!3195844) (not d!874258) (not b!3196657) (not b!3197217) (not b!3196909) (not d!874538) (not d!873842) (not b!3196169) tp_is_empty!17281 (not b!3196132) (not b_next!85609) (not b!3197208) (not b!3197047) (not b_next!85577) (not d!874196) (not b!3197053) (not d!874370) (not b!3196089) (not b!3197057) (not b_next!85575) (not d!874536) (not d!873976) (not b!3195778) (not b_lambda!87297) (not b_next!85595) (not b!3197203) (not d!873844) (not b!3196108) (not b!3196171) (not b!3196698) (not b!3196155) (not b!3196514) (not b!3196078) (not d!874420) (not b!3197173) (not d!873988) (not d!874572) (not b!3197075) (not bm!231435) (not bm!231556) (not d!873814) (not d!874478) (not d!874498) (not b!3196849) (not b!3196702) (not b!3196862) (not d!874086) (not d!874218) (not b!3195897) (not b_lambda!87217) (not b!3196873) (not d!874042) (not b!3196741) (not b!3197158) (not b!3195837) (not d!874430) (not b!3196852) (not b!3196158) (not b!3196117) (not b!3197146) (not b!3197184) (not b_next!85569) (not b!3196986) (not b!3196429) (not d!873856) (not d!874554) (not b!3195906) (not b!3196564) (not b!3197215) (not d!874244) (not b!3196445) (not b!3197051) (not b!3197077) (not d!874520) (not b!3196279) (not b!3196567) (not b!3196288) (not b_lambda!87213) (not d!873986) (not d!874034) (not b!3195855) (not b!3196879) (not b!3196298) (not b!3196661) (not b!3195856) (not d!874264) (not b!3196613) (not b!3195777) (not b!3197137) (not b!3197031) (not d!873990) (not d!874076) (not b!3196743) (not d!874162) (not b!3195841) (not b_lambda!87243) (not d!873846) (not b!3197145) (not b!3197172) (not b!3196987) (not b!3197089) (not b!3196430) (not b!3197121) (not d!873812) (not d!873786) (not d!874018) (not b!3197098) (not b!3196537) (not b!3197117) (not b!3196297) (not b!3196119) (not d!874178) (not b!3196709) (not b!3196294) (not d!874500) (not b!3197169) (not b!3197193) (not b!3196752) (not b!3197156) (not b!3195826) (not bm!231543) (not b!3197170) (not b!3195860) (not b!3196154) (not b!3196156) (not b!3197160) b_and!212299 (not b!3196563) (not b!3196134) (not b!3197133) (not d!874468) (not b!3196314) (not b!3196159) (not b!3196565) (not d!874028))
(check-sat (not b_next!85591) b_and!212297 b_and!212321 (not b_next!85607) (not b_next!85573) (not b_next!85593) (not b_next!85571) (not b_next!85589) (not b_next!85595) (not b_next!85569) b_and!212299 b_and!212295 (not b_next!85605) b_and!212303 b_and!212317 b_and!212309 (not b_next!85611) b_and!212301 (not b_next!85579) b_and!212307 b_and!212319 b_and!212305 b_and!212315 b_and!212311 b_and!212313 (not b_next!85577) (not b_next!85575) (not b_next!85609))
