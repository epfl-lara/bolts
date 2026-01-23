; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117910 () Bool)

(assert start!117910)

(declare-fun b!1325602 () Bool)

(declare-fun b_free!31971 () Bool)

(declare-fun b_next!32675 () Bool)

(assert (=> b!1325602 (= b_free!31971 (not b_next!32675))))

(declare-fun tp!384321 () Bool)

(declare-fun b_and!88543 () Bool)

(assert (=> b!1325602 (= tp!384321 b_and!88543)))

(declare-fun b_free!31973 () Bool)

(declare-fun b_next!32677 () Bool)

(assert (=> b!1325602 (= b_free!31973 (not b_next!32677))))

(declare-fun tp!384327 () Bool)

(declare-fun b_and!88545 () Bool)

(assert (=> b!1325602 (= tp!384327 b_and!88545)))

(declare-fun b!1325609 () Bool)

(declare-fun b_free!31975 () Bool)

(declare-fun b_next!32679 () Bool)

(assert (=> b!1325609 (= b_free!31975 (not b_next!32679))))

(declare-fun tp!384324 () Bool)

(declare-fun b_and!88547 () Bool)

(assert (=> b!1325609 (= tp!384324 b_and!88547)))

(declare-fun b_free!31977 () Bool)

(declare-fun b_next!32681 () Bool)

(assert (=> b!1325609 (= b_free!31977 (not b_next!32681))))

(declare-fun tp!384322 () Bool)

(declare-fun b_and!88549 () Bool)

(assert (=> b!1325609 (= tp!384322 b_and!88549)))

(declare-fun b!1325632 () Bool)

(declare-fun b_free!31979 () Bool)

(declare-fun b_next!32683 () Bool)

(assert (=> b!1325632 (= b_free!31979 (not b_next!32683))))

(declare-fun tp!384325 () Bool)

(declare-fun b_and!88551 () Bool)

(assert (=> b!1325632 (= tp!384325 b_and!88551)))

(declare-fun b_free!31981 () Bool)

(declare-fun b_next!32685 () Bool)

(assert (=> b!1325632 (= b_free!31981 (not b_next!32685))))

(declare-fun tp!384323 () Bool)

(declare-fun b_and!88553 () Bool)

(assert (=> b!1325632 (= tp!384323 b_and!88553)))

(declare-fun b!1325641 () Bool)

(assert (=> b!1325641 true))

(assert (=> b!1325641 true))

(declare-fun b!1325623 () Bool)

(assert (=> b!1325623 true))

(declare-fun b!1325616 () Bool)

(assert (=> b!1325616 true))

(declare-fun bs!331384 () Bool)

(declare-fun b!1325624 () Bool)

(assert (= bs!331384 (and b!1325624 b!1325616)))

(declare-fun lambda!54561 () Int)

(declare-fun lambda!54560 () Int)

(assert (=> bs!331384 (not (= lambda!54561 lambda!54560))))

(assert (=> b!1325624 true))

(declare-fun b!1325596 () Bool)

(declare-fun e!849366 () Bool)

(declare-fun e!849350 () Bool)

(assert (=> b!1325596 (= e!849366 e!849350)))

(declare-fun res!596423 () Bool)

(assert (=> b!1325596 (=> res!596423 e!849350)))

(declare-fun lambda!54558 () Int)

(declare-datatypes ((List!13502 0))(
  ( (Nil!13436) (Cons!13436 (h!18837 (_ BitVec 16)) (t!118803 List!13502)) )
))
(declare-datatypes ((TokenValue!2415 0))(
  ( (FloatLiteralValue!4830 (text!17350 List!13502)) (TokenValueExt!2414 (__x!8659 Int)) (Broken!12075 (value!75869 List!13502)) (Object!2480) (End!2415) (Def!2415) (Underscore!2415) (Match!2415) (Else!2415) (Error!2415) (Case!2415) (If!2415) (Extends!2415) (Abstract!2415) (Class!2415) (Val!2415) (DelimiterValue!4830 (del!2475 List!13502)) (KeywordValue!2421 (value!75870 List!13502)) (CommentValue!4830 (value!75871 List!13502)) (WhitespaceValue!4830 (value!75872 List!13502)) (IndentationValue!2415 (value!75873 List!13502)) (String!16310) (Int32!2415) (Broken!12076 (value!75874 List!13502)) (Boolean!2416) (Unit!19513) (OperatorValue!2418 (op!2475 List!13502)) (IdentifierValue!4830 (value!75875 List!13502)) (IdentifierValue!4831 (value!75876 List!13502)) (WhitespaceValue!4831 (value!75877 List!13502)) (True!4830) (False!4830) (Broken!12077 (value!75878 List!13502)) (Broken!12078 (value!75879 List!13502)) (True!4831) (RightBrace!2415) (RightBracket!2415) (Colon!2415) (Null!2415) (Comma!2415) (LeftBracket!2415) (False!4831) (LeftBrace!2415) (ImaginaryLiteralValue!2415 (text!17351 List!13502)) (StringLiteralValue!7245 (value!75880 List!13502)) (EOFValue!2415 (value!75881 List!13502)) (IdentValue!2415 (value!75882 List!13502)) (DelimiterValue!4831 (value!75883 List!13502)) (DedentValue!2415 (value!75884 List!13502)) (NewLineValue!2415 (value!75885 List!13502)) (IntegerValue!7245 (value!75886 (_ BitVec 32)) (text!17352 List!13502)) (IntegerValue!7246 (value!75887 Int) (text!17353 List!13502)) (Times!2415) (Or!2415) (Equal!2415) (Minus!2415) (Broken!12079 (value!75888 List!13502)) (And!2415) (Div!2415) (LessEqual!2415) (Mod!2415) (Concat!6054) (Not!2415) (Plus!2415) (SpaceValue!2415 (value!75889 List!13502)) (IntegerValue!7247 (value!75890 Int) (text!17354 List!13502)) (StringLiteralValue!7246 (text!17355 List!13502)) (FloatLiteralValue!4831 (text!17356 List!13502)) (BytesLiteralValue!2415 (value!75891 List!13502)) (CommentValue!4831 (value!75892 List!13502)) (StringLiteralValue!7247 (value!75893 List!13502)) (ErrorTokenValue!2415 (msg!2476 List!13502)) )
))
(declare-datatypes ((C!7568 0))(
  ( (C!7569 (val!4344 Int)) )
))
(declare-datatypes ((List!13503 0))(
  ( (Nil!13437) (Cons!13437 (h!18838 C!7568) (t!118804 List!13503)) )
))
(declare-datatypes ((IArray!8845 0))(
  ( (IArray!8846 (innerList!4480 List!13503)) )
))
(declare-datatypes ((Conc!4420 0))(
  ( (Node!4420 (left!11540 Conc!4420) (right!11870 Conc!4420) (csize!9070 Int) (cheight!4631 Int)) (Leaf!6779 (xs!7135 IArray!8845) (csize!9071 Int)) (Empty!4420) )
))
(declare-datatypes ((BalanceConc!8780 0))(
  ( (BalanceConc!8781 (c!217506 Conc!4420)) )
))
(declare-datatypes ((Regex!3639 0))(
  ( (ElementMatch!3639 (c!217507 C!7568)) (Concat!6055 (regOne!7790 Regex!3639) (regTwo!7790 Regex!3639)) (EmptyExpr!3639) (Star!3639 (reg!3968 Regex!3639)) (EmptyLang!3639) (Union!3639 (regOne!7791 Regex!3639) (regTwo!7791 Regex!3639)) )
))
(declare-datatypes ((String!16311 0))(
  ( (String!16312 (value!75894 String)) )
))
(declare-datatypes ((TokenValueInjection!4490 0))(
  ( (TokenValueInjection!4491 (toValue!3556 Int) (toChars!3415 Int)) )
))
(declare-datatypes ((Rule!4450 0))(
  ( (Rule!4451 (regex!2325 Regex!3639) (tag!2587 String!16311) (isSeparator!2325 Bool) (transformation!2325 TokenValueInjection!4490)) )
))
(declare-datatypes ((List!13504 0))(
  ( (Nil!13438) (Cons!13438 (h!18839 Rule!4450) (t!118805 List!13504)) )
))
(declare-fun rules!2550 () List!13504)

(declare-fun lt!437915 () Regex!3639)

(declare-datatypes ((List!13505 0))(
  ( (Nil!13439) (Cons!13439 (h!18840 Regex!3639) (t!118806 List!13505)) )
))
(declare-fun contains!2391 (List!13505 Regex!3639) Bool)

(declare-fun map!2954 (List!13504 Int) List!13505)

(assert (=> b!1325596 (= res!596423 (not (contains!2391 (map!2954 rules!2550 lambda!54558) lt!437915)))))

(declare-fun lambda!54559 () Int)

(declare-fun getWitness!244 (List!13505 Int) Regex!3639)

(assert (=> b!1325596 (= lt!437915 (getWitness!244 (map!2954 rules!2550 lambda!54558) lambda!54559))))

(declare-fun b!1325597 () Bool)

(declare-fun e!849359 () Bool)

(declare-fun e!849351 () Bool)

(assert (=> b!1325597 (= e!849359 e!849351)))

(declare-fun res!596441 () Bool)

(assert (=> b!1325597 (=> (not res!596441) (not e!849351))))

(declare-fun lt!437924 () BalanceConc!8780)

(declare-fun size!10956 (BalanceConc!8780) Int)

(assert (=> b!1325597 (= res!596441 (> (size!10956 lt!437924) 0))))

(declare-datatypes ((Token!4312 0))(
  ( (Token!4313 (value!75895 TokenValue!2415) (rule!4070 Rule!4450) (size!10957 Int) (originalCharacters!3187 List!13503)) )
))
(declare-fun t2!34 () Token!4312)

(declare-fun charsOf!1297 (Token!4312) BalanceConc!8780)

(assert (=> b!1325597 (= lt!437924 (charsOf!1297 t2!34))))

(declare-fun b!1325598 () Bool)

(declare-fun res!596417 () Bool)

(declare-fun e!849362 () Bool)

(assert (=> b!1325598 (=> res!596417 e!849362)))

(declare-datatypes ((List!13506 0))(
  ( (Nil!13440) (Cons!13440 (h!18841 Token!4312) (t!118807 List!13506)) )
))
(declare-datatypes ((IArray!8847 0))(
  ( (IArray!8848 (innerList!4481 List!13506)) )
))
(declare-datatypes ((Conc!4421 0))(
  ( (Node!4421 (left!11541 Conc!4421) (right!11871 Conc!4421) (csize!9072 Int) (cheight!4632 Int)) (Leaf!6780 (xs!7136 IArray!8847) (csize!9073 Int)) (Empty!4421) )
))
(declare-datatypes ((BalanceConc!8782 0))(
  ( (BalanceConc!8783 (c!217508 Conc!4421)) )
))
(declare-datatypes ((tuple2!13070 0))(
  ( (tuple2!13071 (_1!7421 BalanceConc!8782) (_2!7421 BalanceConc!8780)) )
))
(declare-fun lt!437919 () tuple2!13070)

(declare-fun isEmpty!8006 (BalanceConc!8780) Bool)

(assert (=> b!1325598 (= res!596417 (not (isEmpty!8006 (_2!7421 lt!437919))))))

(declare-fun res!596418 () Bool)

(assert (=> start!117910 (=> (not res!596418) (not e!849359))))

(declare-datatypes ((LexerInterface!2020 0))(
  ( (LexerInterfaceExt!2017 (__x!8660 Int)) (Lexer!2018) )
))
(declare-fun thiss!19762 () LexerInterface!2020)

(get-info :version)

(assert (=> start!117910 (= res!596418 ((_ is Lexer!2018) thiss!19762))))

(assert (=> start!117910 e!849359))

(assert (=> start!117910 true))

(declare-fun e!849348 () Bool)

(assert (=> start!117910 e!849348))

(declare-fun t1!34 () Token!4312)

(declare-fun e!849365 () Bool)

(declare-fun inv!17806 (Token!4312) Bool)

(assert (=> start!117910 (and (inv!17806 t1!34) e!849365)))

(declare-fun e!849370 () Bool)

(assert (=> start!117910 (and (inv!17806 t2!34) e!849370)))

(declare-fun b!1325599 () Bool)

(declare-fun res!596448 () Bool)

(assert (=> b!1325599 (=> (not res!596448) (not e!849359))))

(declare-fun rulesInvariant!1890 (LexerInterface!2020 List!13504) Bool)

(assert (=> b!1325599 (= res!596448 (rulesInvariant!1890 thiss!19762 rules!2550))))

(declare-fun b!1325600 () Bool)

(declare-fun res!596433 () Bool)

(assert (=> b!1325600 (=> (not res!596433) (not e!849359))))

(declare-fun rulesProduceIndividualToken!989 (LexerInterface!2020 List!13504 Token!4312) Bool)

(assert (=> b!1325600 (= res!596433 (rulesProduceIndividualToken!989 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1325601 () Bool)

(declare-fun res!596443 () Bool)

(declare-fun e!849371 () Bool)

(assert (=> b!1325601 (=> res!596443 e!849371)))

(declare-fun lt!437920 () List!13503)

(declare-fun lt!437928 () C!7568)

(declare-fun contains!2392 (List!13503 C!7568) Bool)

(assert (=> b!1325601 (= res!596443 (not (contains!2392 lt!437920 lt!437928)))))

(declare-fun e!849363 () Bool)

(assert (=> b!1325602 (= e!849363 (and tp!384321 tp!384327))))

(declare-fun b!1325603 () Bool)

(declare-fun e!849369 () Bool)

(assert (=> b!1325603 (= e!849369 true)))

(declare-fun lt!437908 () Bool)

(declare-fun lt!437921 () List!13503)

(declare-fun lt!437917 () C!7568)

(assert (=> b!1325603 (= lt!437908 (contains!2392 lt!437921 lt!437917))))

(declare-fun e!849356 () Bool)

(declare-fun b!1325604 () Bool)

(declare-fun e!849349 () Bool)

(declare-fun tp!384328 () Bool)

(declare-fun inv!17803 (String!16311) Bool)

(declare-fun inv!17807 (TokenValueInjection!4490) Bool)

(assert (=> b!1325604 (= e!849349 (and tp!384328 (inv!17803 (tag!2587 (rule!4070 t2!34))) (inv!17807 (transformation!2325 (rule!4070 t2!34))) e!849356))))

(declare-fun b!1325605 () Bool)

(declare-fun e!849368 () Bool)

(declare-fun e!849355 () Bool)

(assert (=> b!1325605 (= e!849368 e!849355)))

(declare-fun res!596432 () Bool)

(assert (=> b!1325605 (=> res!596432 e!849355)))

(declare-fun lt!437918 () List!13503)

(declare-fun ++!3434 (List!13503 List!13503) List!13503)

(declare-fun getSuffix!495 (List!13503 List!13503) List!13503)

(assert (=> b!1325605 (= res!596432 (not (= lt!437920 (++!3434 lt!437918 (getSuffix!495 lt!437920 lt!437918)))))))

(declare-fun lambda!54557 () Int)

(declare-fun pickWitness!102 (Int) List!13503)

(assert (=> b!1325605 (= lt!437920 (pickWitness!102 lambda!54557))))

(declare-fun b!1325606 () Bool)

(declare-fun res!596422 () Bool)

(assert (=> b!1325606 (=> (not res!596422) (not e!849351))))

(declare-fun sepAndNonSepRulesDisjointChars!698 (List!13504 List!13504) Bool)

(assert (=> b!1325606 (= res!596422 (sepAndNonSepRulesDisjointChars!698 rules!2550 rules!2550))))

(declare-fun b!1325607 () Bool)

(declare-fun e!849354 () Bool)

(assert (=> b!1325607 (= e!849351 e!849354)))

(declare-fun res!596416 () Bool)

(assert (=> b!1325607 (=> (not res!596416) (not e!849354))))

(declare-fun lt!437913 () Regex!3639)

(declare-fun prefixMatch!152 (Regex!3639 List!13503) Bool)

(assert (=> b!1325607 (= res!596416 (prefixMatch!152 lt!437913 lt!437918))))

(declare-fun rulesRegex!210 (LexerInterface!2020 List!13504) Regex!3639)

(assert (=> b!1325607 (= lt!437913 (rulesRegex!210 thiss!19762 rules!2550))))

(declare-fun lt!437914 () List!13503)

(assert (=> b!1325607 (= lt!437918 (++!3434 lt!437914 (Cons!13437 lt!437928 Nil!13437)))))

(declare-fun apply!3103 (BalanceConc!8780 Int) C!7568)

(assert (=> b!1325607 (= lt!437928 (apply!3103 lt!437924 0))))

(declare-fun lt!437936 () BalanceConc!8780)

(declare-fun list!5086 (BalanceConc!8780) List!13503)

(assert (=> b!1325607 (= lt!437914 (list!5086 lt!437936))))

(assert (=> b!1325607 (= lt!437936 (charsOf!1297 t1!34))))

(declare-fun b!1325608 () Bool)

(declare-fun res!596445 () Bool)

(declare-fun e!849358 () Bool)

(assert (=> b!1325608 (=> res!596445 e!849358)))

(declare-fun contains!2393 (List!13504 Rule!4450) Bool)

(assert (=> b!1325608 (= res!596445 (not (contains!2393 rules!2550 (rule!4070 t2!34))))))

(declare-fun e!849364 () Bool)

(assert (=> b!1325609 (= e!849364 (and tp!384324 tp!384322))))

(declare-fun b!1325610 () Bool)

(declare-fun res!596419 () Bool)

(declare-fun e!849347 () Bool)

(assert (=> b!1325610 (=> res!596419 e!849347)))

(assert (=> b!1325610 (= res!596419 (not (contains!2393 rules!2550 (rule!4070 t1!34))))))

(declare-fun b!1325611 () Bool)

(declare-datatypes ((Unit!19514 0))(
  ( (Unit!19515) )
))
(declare-fun e!849344 () Unit!19514)

(declare-fun Unit!19516 () Unit!19514)

(assert (=> b!1325611 (= e!849344 Unit!19516)))

(declare-fun b!1325612 () Bool)

(assert (=> b!1325612 (= e!849362 e!849358)))

(declare-fun res!596435 () Bool)

(assert (=> b!1325612 (=> res!596435 e!849358)))

(declare-fun lt!437922 () List!13503)

(declare-datatypes ((tuple2!13072 0))(
  ( (tuple2!13073 (_1!7422 Token!4312) (_2!7422 List!13503)) )
))
(declare-datatypes ((Option!2596 0))(
  ( (None!2595) (Some!2595 (v!21200 tuple2!13072)) )
))
(declare-fun maxPrefix!1030 (LexerInterface!2020 List!13504 List!13503) Option!2596)

(assert (=> b!1325612 (= res!596435 (not (= (maxPrefix!1030 thiss!19762 rules!2550 lt!437922) (Some!2595 (tuple2!13073 t2!34 Nil!13437)))))))

(assert (=> b!1325612 (= lt!437922 (list!5086 lt!437924))))

(declare-fun b!1325613 () Bool)

(assert (=> b!1325613 (= e!849347 e!849362)))

(declare-fun res!596429 () Bool)

(assert (=> b!1325613 (=> res!596429 e!849362)))

(declare-fun lt!437910 () List!13506)

(declare-fun list!5087 (BalanceConc!8782) List!13506)

(assert (=> b!1325613 (= res!596429 (not (= (list!5087 (_1!7421 lt!437919)) lt!437910)))))

(assert (=> b!1325613 (= lt!437910 (Cons!13440 t2!34 Nil!13440))))

(declare-fun lt!437934 () BalanceConc!8780)

(declare-fun lex!855 (LexerInterface!2020 List!13504 BalanceConc!8780) tuple2!13070)

(assert (=> b!1325613 (= lt!437919 (lex!855 thiss!19762 rules!2550 lt!437934))))

(declare-fun print!794 (LexerInterface!2020 BalanceConc!8782) BalanceConc!8780)

(declare-fun singletonSeq!916 (Token!4312) BalanceConc!8782)

(assert (=> b!1325613 (= lt!437934 (print!794 thiss!19762 (singletonSeq!916 t2!34)))))

(declare-fun b!1325614 () Bool)

(declare-fun res!596427 () Bool)

(assert (=> b!1325614 (=> res!596427 e!849369)))

(assert (=> b!1325614 (= res!596427 (not (contains!2392 lt!437922 lt!437917)))))

(declare-fun b!1325615 () Bool)

(declare-fun e!849345 () Bool)

(declare-fun tp!384326 () Bool)

(assert (=> b!1325615 (= e!849348 (and e!849345 tp!384326))))

(declare-fun e!849343 () Bool)

(assert (=> b!1325616 (= e!849350 e!849343)))

(declare-fun res!596425 () Bool)

(assert (=> b!1325616 (=> res!596425 e!849343)))

(declare-fun exists!352 (List!13504 Int) Bool)

(assert (=> b!1325616 (= res!596425 (not (exists!352 rules!2550 lambda!54560)))))

(assert (=> b!1325616 (exists!352 rules!2550 lambda!54560)))

(declare-fun lt!437925 () Unit!19514)

(declare-fun lemmaMapContains!68 (List!13504 Int Regex!3639) Unit!19514)

(assert (=> b!1325616 (= lt!437925 (lemmaMapContains!68 rules!2550 lambda!54558 lt!437915))))

(declare-fun b!1325617 () Bool)

(declare-fun e!849342 () Bool)

(assert (=> b!1325617 (= e!849342 e!849369)))

(declare-fun res!596414 () Bool)

(assert (=> b!1325617 (=> res!596414 e!849369)))

(declare-fun validRegex!1563 (Regex!3639) Bool)

(assert (=> b!1325617 (= res!596414 (not (validRegex!1563 (regex!2325 (rule!4070 t2!34)))))))

(declare-fun head!2316 (List!13503) C!7568)

(assert (=> b!1325617 (= lt!437917 (head!2316 lt!437922))))

(declare-fun b!1325618 () Bool)

(declare-fun res!596444 () Bool)

(assert (=> b!1325618 (=> res!596444 e!849371)))

(assert (=> b!1325618 (= res!596444 (not (contains!2392 lt!437918 lt!437928)))))

(declare-fun b!1325619 () Bool)

(declare-fun res!596440 () Bool)

(assert (=> b!1325619 (=> (not res!596440) (not e!849359))))

(assert (=> b!1325619 (= res!596440 (rulesProduceIndividualToken!989 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1325620 () Bool)

(declare-fun e!849367 () Bool)

(declare-fun e!849346 () Bool)

(assert (=> b!1325620 (= e!849367 e!849346)))

(declare-fun res!596424 () Bool)

(assert (=> b!1325620 (=> res!596424 e!849346)))

(declare-fun lt!437909 () Bool)

(assert (=> b!1325620 (= res!596424 lt!437909)))

(declare-fun lt!437907 () Unit!19514)

(assert (=> b!1325620 (= lt!437907 e!849344)))

(declare-fun c!217505 () Bool)

(assert (=> b!1325620 (= c!217505 lt!437909)))

(declare-fun lt!437912 () C!7568)

(declare-fun usedCharacters!190 (Regex!3639) List!13503)

(assert (=> b!1325620 (= lt!437909 (not (contains!2392 (usedCharacters!190 (regex!2325 (rule!4070 t1!34))) lt!437912)))))

(declare-fun b!1325621 () Bool)

(declare-fun res!596434 () Bool)

(assert (=> b!1325621 (=> (not res!596434) (not e!849359))))

(declare-fun isEmpty!8007 (List!13504) Bool)

(assert (=> b!1325621 (= res!596434 (not (isEmpty!8007 rules!2550)))))

(declare-fun b!1325622 () Bool)

(declare-fun res!596431 () Bool)

(assert (=> b!1325622 (=> (not res!596431) (not e!849359))))

(assert (=> b!1325622 (= res!596431 (not (= (isSeparator!2325 (rule!4070 t1!34)) (isSeparator!2325 (rule!4070 t2!34)))))))

(assert (=> b!1325623 (= e!849371 e!849366)))

(declare-fun res!596438 () Bool)

(assert (=> b!1325623 (=> res!596438 e!849366)))

(declare-fun exists!353 (List!13505 Int) Bool)

(assert (=> b!1325623 (= res!596438 (not (exists!353 (map!2954 rules!2550 lambda!54558) lambda!54559)))))

(declare-fun lt!437911 () List!13505)

(assert (=> b!1325623 (exists!353 lt!437911 lambda!54559)))

(declare-fun lt!437927 () Unit!19514)

(declare-fun matchRGenUnionSpec!76 (Regex!3639 List!13505 List!13503) Unit!19514)

(assert (=> b!1325623 (= lt!437927 (matchRGenUnionSpec!76 lt!437913 lt!437911 lt!437920))))

(assert (=> b!1325623 (= lt!437911 (map!2954 rules!2550 lambda!54558))))

(assert (=> b!1325624 (= e!849358 e!849367)))

(declare-fun res!596415 () Bool)

(assert (=> b!1325624 (=> res!596415 e!849367)))

(declare-fun matchR!1641 (Regex!3639 List!13503) Bool)

(assert (=> b!1325624 (= res!596415 (not (matchR!1641 (regex!2325 (rule!4070 t1!34)) lt!437914)))))

(declare-fun lt!437926 () Unit!19514)

(declare-fun forallContained!576 (List!13504 Int Rule!4450) Unit!19514)

(assert (=> b!1325624 (= lt!437926 (forallContained!576 rules!2550 lambda!54561 (rule!4070 t2!34)))))

(declare-fun lt!437932 () Unit!19514)

(assert (=> b!1325624 (= lt!437932 (forallContained!576 rules!2550 lambda!54561 (rule!4070 t1!34)))))

(declare-fun lt!437916 () Rule!4450)

(declare-fun lt!437930 () Unit!19514)

(assert (=> b!1325624 (= lt!437930 (forallContained!576 rules!2550 lambda!54561 lt!437916))))

(declare-fun b!1325625 () Bool)

(declare-fun res!596439 () Bool)

(assert (=> b!1325625 (=> (not res!596439) (not e!849351))))

(declare-fun separableTokensPredicate!303 (LexerInterface!2020 Token!4312 Token!4312 List!13504) Bool)

(assert (=> b!1325625 (= res!596439 (not (separableTokensPredicate!303 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1325626 () Bool)

(declare-fun res!596413 () Bool)

(assert (=> b!1325626 (=> res!596413 e!849358)))

(assert (=> b!1325626 (= res!596413 (not (contains!2393 rules!2550 lt!437916)))))

(declare-fun tp!384331 () Bool)

(declare-fun b!1325627 () Bool)

(declare-fun inv!21 (TokenValue!2415) Bool)

(assert (=> b!1325627 (= e!849370 (and (inv!21 (value!75895 t2!34)) e!849349 tp!384331))))

(declare-fun b!1325628 () Bool)

(declare-fun res!596421 () Bool)

(assert (=> b!1325628 (=> res!596421 e!849347)))

(declare-fun lt!437923 () tuple2!13070)

(assert (=> b!1325628 (= res!596421 (not (isEmpty!8006 (_2!7421 lt!437923))))))

(declare-fun b!1325629 () Bool)

(declare-fun res!596442 () Bool)

(assert (=> b!1325629 (=> res!596442 e!849371)))

(assert (=> b!1325629 (= res!596442 (not (contains!2392 lt!437920 lt!437912)))))

(declare-fun tp!384332 () Bool)

(declare-fun b!1325630 () Bool)

(assert (=> b!1325630 (= e!849345 (and tp!384332 (inv!17803 (tag!2587 (h!18839 rules!2550))) (inv!17807 (transformation!2325 (h!18839 rules!2550))) e!849363))))

(declare-fun e!849360 () Bool)

(declare-fun tp!384329 () Bool)

(declare-fun b!1325631 () Bool)

(assert (=> b!1325631 (= e!849360 (and tp!384329 (inv!17803 (tag!2587 (rule!4070 t1!34))) (inv!17807 (transformation!2325 (rule!4070 t1!34))) e!849364))))

(assert (=> b!1325632 (= e!849356 (and tp!384325 tp!384323))))

(declare-fun b!1325633 () Bool)

(declare-fun res!596420 () Bool)

(assert (=> b!1325633 (=> res!596420 e!849371)))

(assert (=> b!1325633 (= res!596420 (not (matchR!1641 lt!437913 lt!437920)))))

(declare-fun b!1325634 () Bool)

(declare-fun res!596437 () Bool)

(assert (=> b!1325634 (=> res!596437 e!849347)))

(declare-fun lt!437931 () List!13506)

(declare-fun lt!437933 () BalanceConc!8780)

(declare-datatypes ((tuple2!13074 0))(
  ( (tuple2!13075 (_1!7423 List!13506) (_2!7423 List!13503)) )
))
(declare-fun lexList!558 (LexerInterface!2020 List!13504 List!13503) tuple2!13074)

(assert (=> b!1325634 (= res!596437 (not (= (lexList!558 thiss!19762 rules!2550 (list!5086 lt!437933)) (tuple2!13075 lt!437931 Nil!13437))))))

(declare-fun b!1325635 () Bool)

(declare-fun res!596426 () Bool)

(assert (=> b!1325635 (=> res!596426 e!849367)))

(assert (=> b!1325635 (= res!596426 (not (matchR!1641 (regex!2325 (rule!4070 t2!34)) lt!437922)))))

(declare-fun b!1325636 () Bool)

(assert (=> b!1325636 (= e!849346 e!849342)))

(declare-fun res!596446 () Bool)

(assert (=> b!1325636 (=> res!596446 e!849342)))

(assert (=> b!1325636 (= res!596446 (contains!2392 lt!437921 lt!437928))))

(assert (=> b!1325636 (= lt!437921 (usedCharacters!190 (regex!2325 (rule!4070 t2!34))))))

(declare-fun b!1325637 () Bool)

(assert (=> b!1325637 (= e!849343 e!849347)))

(declare-fun res!596430 () Bool)

(assert (=> b!1325637 (=> res!596430 e!849347)))

(assert (=> b!1325637 (= res!596430 (not (= (list!5087 (_1!7421 lt!437923)) lt!437931)))))

(assert (=> b!1325637 (= lt!437931 (Cons!13440 t1!34 Nil!13440))))

(assert (=> b!1325637 (= lt!437923 (lex!855 thiss!19762 rules!2550 lt!437933))))

(assert (=> b!1325637 (= lt!437933 (print!794 thiss!19762 (singletonSeq!916 t1!34)))))

(declare-fun getWitness!245 (List!13504 Int) Rule!4450)

(assert (=> b!1325637 (= lt!437916 (getWitness!245 rules!2550 lambda!54560))))

(declare-fun b!1325638 () Bool)

(declare-fun res!596436 () Bool)

(assert (=> b!1325638 (=> res!596436 e!849347)))

(assert (=> b!1325638 (= res!596436 (not (= (maxPrefix!1030 thiss!19762 rules!2550 lt!437914) (Some!2595 (tuple2!13073 t1!34 Nil!13437)))))))

(declare-fun b!1325639 () Bool)

(declare-fun res!596447 () Bool)

(assert (=> b!1325639 (=> res!596447 e!849362)))

(assert (=> b!1325639 (= res!596447 (not (= (lexList!558 thiss!19762 rules!2550 (list!5086 lt!437934)) (tuple2!13075 lt!437910 Nil!13437))))))

(declare-fun tp!384330 () Bool)

(declare-fun b!1325640 () Bool)

(assert (=> b!1325640 (= e!849365 (and (inv!21 (value!75895 t1!34)) e!849360 tp!384330))))

(assert (=> b!1325641 (= e!849354 (not e!849368))))

(declare-fun res!596428 () Bool)

(assert (=> b!1325641 (=> res!596428 e!849368)))

(declare-fun Exists!797 (Int) Bool)

(assert (=> b!1325641 (= res!596428 (not (Exists!797 lambda!54557)))))

(assert (=> b!1325641 (Exists!797 lambda!54557)))

(declare-fun lt!437935 () Unit!19514)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!115 (Regex!3639 List!13503) Unit!19514)

(assert (=> b!1325641 (= lt!437935 (lemmaPrefixMatchThenExistsStringThatMatches!115 lt!437913 lt!437918))))

(declare-fun b!1325642 () Bool)

(assert (=> b!1325642 (= e!849355 e!849371)))

(declare-fun res!596449 () Bool)

(assert (=> b!1325642 (=> res!596449 e!849371)))

(assert (=> b!1325642 (= res!596449 (not (contains!2392 lt!437918 lt!437912)))))

(assert (=> b!1325642 (= lt!437912 (apply!3103 lt!437936 0))))

(declare-fun b!1325643 () Bool)

(declare-fun Unit!19517 () Unit!19514)

(assert (=> b!1325643 (= e!849344 Unit!19517)))

(declare-fun lt!437929 () Unit!19514)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!136 (Regex!3639 List!13503 C!7568) Unit!19514)

(assert (=> b!1325643 (= lt!437929 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!136 (regex!2325 (rule!4070 t1!34)) lt!437914 (head!2316 lt!437914)))))

(assert (=> b!1325643 false))

(assert (= (and start!117910 res!596418) b!1325621))

(assert (= (and b!1325621 res!596434) b!1325599))

(assert (= (and b!1325599 res!596448) b!1325600))

(assert (= (and b!1325600 res!596433) b!1325619))

(assert (= (and b!1325619 res!596440) b!1325622))

(assert (= (and b!1325622 res!596431) b!1325597))

(assert (= (and b!1325597 res!596441) b!1325606))

(assert (= (and b!1325606 res!596422) b!1325625))

(assert (= (and b!1325625 res!596439) b!1325607))

(assert (= (and b!1325607 res!596416) b!1325641))

(assert (= (and b!1325641 (not res!596428)) b!1325605))

(assert (= (and b!1325605 (not res!596432)) b!1325642))

(assert (= (and b!1325642 (not res!596449)) b!1325629))

(assert (= (and b!1325629 (not res!596442)) b!1325618))

(assert (= (and b!1325618 (not res!596444)) b!1325601))

(assert (= (and b!1325601 (not res!596443)) b!1325633))

(assert (= (and b!1325633 (not res!596420)) b!1325623))

(assert (= (and b!1325623 (not res!596438)) b!1325596))

(assert (= (and b!1325596 (not res!596423)) b!1325616))

(assert (= (and b!1325616 (not res!596425)) b!1325637))

(assert (= (and b!1325637 (not res!596430)) b!1325628))

(assert (= (and b!1325628 (not res!596421)) b!1325634))

(assert (= (and b!1325634 (not res!596437)) b!1325638))

(assert (= (and b!1325638 (not res!596436)) b!1325610))

(assert (= (and b!1325610 (not res!596419)) b!1325613))

(assert (= (and b!1325613 (not res!596429)) b!1325598))

(assert (= (and b!1325598 (not res!596417)) b!1325639))

(assert (= (and b!1325639 (not res!596447)) b!1325612))

(assert (= (and b!1325612 (not res!596435)) b!1325608))

(assert (= (and b!1325608 (not res!596445)) b!1325626))

(assert (= (and b!1325626 (not res!596413)) b!1325624))

(assert (= (and b!1325624 (not res!596415)) b!1325635))

(assert (= (and b!1325635 (not res!596426)) b!1325620))

(assert (= (and b!1325620 c!217505) b!1325643))

(assert (= (and b!1325620 (not c!217505)) b!1325611))

(assert (= (and b!1325620 (not res!596424)) b!1325636))

(assert (= (and b!1325636 (not res!596446)) b!1325617))

(assert (= (and b!1325617 (not res!596414)) b!1325614))

(assert (= (and b!1325614 (not res!596427)) b!1325603))

(assert (= b!1325630 b!1325602))

(assert (= b!1325615 b!1325630))

(assert (= (and start!117910 ((_ is Cons!13438) rules!2550)) b!1325615))

(assert (= b!1325631 b!1325609))

(assert (= b!1325640 b!1325631))

(assert (= start!117910 b!1325640))

(assert (= b!1325604 b!1325632))

(assert (= b!1325627 b!1325604))

(assert (= start!117910 b!1325627))

(declare-fun m!1482245 () Bool)

(assert (=> b!1325603 m!1482245))

(declare-fun m!1482247 () Bool)

(assert (=> b!1325617 m!1482247))

(declare-fun m!1482249 () Bool)

(assert (=> b!1325617 m!1482249))

(declare-fun m!1482251 () Bool)

(assert (=> b!1325620 m!1482251))

(assert (=> b!1325620 m!1482251))

(declare-fun m!1482253 () Bool)

(assert (=> b!1325620 m!1482253))

(declare-fun m!1482255 () Bool)

(assert (=> b!1325606 m!1482255))

(declare-fun m!1482257 () Bool)

(assert (=> b!1325599 m!1482257))

(declare-fun m!1482259 () Bool)

(assert (=> b!1325619 m!1482259))

(declare-fun m!1482261 () Bool)

(assert (=> b!1325638 m!1482261))

(declare-fun m!1482263 () Bool)

(assert (=> b!1325621 m!1482263))

(declare-fun m!1482265 () Bool)

(assert (=> b!1325635 m!1482265))

(declare-fun m!1482267 () Bool)

(assert (=> b!1325641 m!1482267))

(assert (=> b!1325641 m!1482267))

(declare-fun m!1482269 () Bool)

(assert (=> b!1325641 m!1482269))

(declare-fun m!1482271 () Bool)

(assert (=> b!1325623 m!1482271))

(declare-fun m!1482273 () Bool)

(assert (=> b!1325623 m!1482273))

(assert (=> b!1325623 m!1482273))

(declare-fun m!1482275 () Bool)

(assert (=> b!1325623 m!1482275))

(assert (=> b!1325623 m!1482273))

(declare-fun m!1482277 () Bool)

(assert (=> b!1325623 m!1482277))

(declare-fun m!1482279 () Bool)

(assert (=> b!1325600 m!1482279))

(declare-fun m!1482281 () Bool)

(assert (=> b!1325643 m!1482281))

(assert (=> b!1325643 m!1482281))

(declare-fun m!1482283 () Bool)

(assert (=> b!1325643 m!1482283))

(declare-fun m!1482285 () Bool)

(assert (=> b!1325598 m!1482285))

(declare-fun m!1482287 () Bool)

(assert (=> b!1325613 m!1482287))

(declare-fun m!1482289 () Bool)

(assert (=> b!1325613 m!1482289))

(declare-fun m!1482291 () Bool)

(assert (=> b!1325613 m!1482291))

(assert (=> b!1325613 m!1482291))

(declare-fun m!1482293 () Bool)

(assert (=> b!1325613 m!1482293))

(declare-fun m!1482295 () Bool)

(assert (=> b!1325604 m!1482295))

(declare-fun m!1482297 () Bool)

(assert (=> b!1325604 m!1482297))

(declare-fun m!1482299 () Bool)

(assert (=> b!1325608 m!1482299))

(declare-fun m!1482301 () Bool)

(assert (=> b!1325634 m!1482301))

(assert (=> b!1325634 m!1482301))

(declare-fun m!1482303 () Bool)

(assert (=> b!1325634 m!1482303))

(declare-fun m!1482305 () Bool)

(assert (=> b!1325629 m!1482305))

(declare-fun m!1482307 () Bool)

(assert (=> b!1325614 m!1482307))

(declare-fun m!1482309 () Bool)

(assert (=> b!1325640 m!1482309))

(declare-fun m!1482311 () Bool)

(assert (=> b!1325618 m!1482311))

(declare-fun m!1482313 () Bool)

(assert (=> b!1325639 m!1482313))

(assert (=> b!1325639 m!1482313))

(declare-fun m!1482315 () Bool)

(assert (=> b!1325639 m!1482315))

(declare-fun m!1482317 () Bool)

(assert (=> b!1325610 m!1482317))

(declare-fun m!1482319 () Bool)

(assert (=> b!1325628 m!1482319))

(declare-fun m!1482321 () Bool)

(assert (=> b!1325636 m!1482321))

(declare-fun m!1482323 () Bool)

(assert (=> b!1325636 m!1482323))

(declare-fun m!1482325 () Bool)

(assert (=> b!1325626 m!1482325))

(declare-fun m!1482327 () Bool)

(assert (=> start!117910 m!1482327))

(declare-fun m!1482329 () Bool)

(assert (=> start!117910 m!1482329))

(declare-fun m!1482331 () Bool)

(assert (=> b!1325642 m!1482331))

(declare-fun m!1482333 () Bool)

(assert (=> b!1325642 m!1482333))

(declare-fun m!1482335 () Bool)

(assert (=> b!1325637 m!1482335))

(declare-fun m!1482337 () Bool)

(assert (=> b!1325637 m!1482337))

(assert (=> b!1325637 m!1482335))

(declare-fun m!1482339 () Bool)

(assert (=> b!1325637 m!1482339))

(declare-fun m!1482341 () Bool)

(assert (=> b!1325637 m!1482341))

(declare-fun m!1482343 () Bool)

(assert (=> b!1325637 m!1482343))

(declare-fun m!1482345 () Bool)

(assert (=> b!1325597 m!1482345))

(declare-fun m!1482347 () Bool)

(assert (=> b!1325597 m!1482347))

(declare-fun m!1482349 () Bool)

(assert (=> b!1325633 m!1482349))

(declare-fun m!1482351 () Bool)

(assert (=> b!1325607 m!1482351))

(declare-fun m!1482353 () Bool)

(assert (=> b!1325607 m!1482353))

(declare-fun m!1482355 () Bool)

(assert (=> b!1325607 m!1482355))

(declare-fun m!1482357 () Bool)

(assert (=> b!1325607 m!1482357))

(declare-fun m!1482359 () Bool)

(assert (=> b!1325607 m!1482359))

(declare-fun m!1482361 () Bool)

(assert (=> b!1325607 m!1482361))

(declare-fun m!1482363 () Bool)

(assert (=> b!1325601 m!1482363))

(declare-fun m!1482365 () Bool)

(assert (=> b!1325605 m!1482365))

(assert (=> b!1325605 m!1482365))

(declare-fun m!1482367 () Bool)

(assert (=> b!1325605 m!1482367))

(declare-fun m!1482369 () Bool)

(assert (=> b!1325605 m!1482369))

(declare-fun m!1482371 () Bool)

(assert (=> b!1325631 m!1482371))

(declare-fun m!1482373 () Bool)

(assert (=> b!1325631 m!1482373))

(declare-fun m!1482375 () Bool)

(assert (=> b!1325612 m!1482375))

(declare-fun m!1482377 () Bool)

(assert (=> b!1325612 m!1482377))

(declare-fun m!1482379 () Bool)

(assert (=> b!1325616 m!1482379))

(assert (=> b!1325616 m!1482379))

(declare-fun m!1482381 () Bool)

(assert (=> b!1325616 m!1482381))

(declare-fun m!1482383 () Bool)

(assert (=> b!1325624 m!1482383))

(declare-fun m!1482385 () Bool)

(assert (=> b!1325624 m!1482385))

(declare-fun m!1482387 () Bool)

(assert (=> b!1325624 m!1482387))

(declare-fun m!1482389 () Bool)

(assert (=> b!1325624 m!1482389))

(declare-fun m!1482391 () Bool)

(assert (=> b!1325627 m!1482391))

(declare-fun m!1482393 () Bool)

(assert (=> b!1325625 m!1482393))

(assert (=> b!1325596 m!1482273))

(assert (=> b!1325596 m!1482273))

(declare-fun m!1482395 () Bool)

(assert (=> b!1325596 m!1482395))

(assert (=> b!1325596 m!1482273))

(assert (=> b!1325596 m!1482273))

(declare-fun m!1482397 () Bool)

(assert (=> b!1325596 m!1482397))

(declare-fun m!1482399 () Bool)

(assert (=> b!1325630 m!1482399))

(declare-fun m!1482401 () Bool)

(assert (=> b!1325630 m!1482401))

(check-sat (not b!1325639) (not b_next!32681) (not b!1325627) b_and!88549 (not b!1325625) (not b_next!32677) b_and!88551 (not b!1325626) (not b!1325636) (not b!1325617) (not b!1325640) (not b_next!32679) (not b!1325633) (not b!1325601) (not b!1325642) (not b!1325637) (not b!1325608) (not b_next!32675) (not b!1325610) (not b!1325621) (not b!1325606) (not b!1325629) (not b!1325614) (not b!1325630) (not b!1325619) (not b!1325634) (not b!1325597) (not b!1325605) (not b!1325604) (not b!1325628) (not b!1325613) (not b!1325600) b_and!88543 (not b!1325635) (not b!1325641) (not b!1325631) (not b!1325618) (not b!1325643) (not b!1325612) (not b!1325607) (not start!117910) (not b_next!32683) (not b_next!32685) (not b!1325615) (not b!1325596) b_and!88553 (not b!1325623) b_and!88545 (not b!1325638) (not b!1325620) (not b!1325624) (not b!1325616) b_and!88547 (not b!1325599) (not b!1325603) (not b!1325598))
(check-sat (not b_next!32679) (not b_next!32675) (not b_next!32681) b_and!88543 b_and!88549 b_and!88553 b_and!88545 b_and!88547 (not b_next!32677) b_and!88551 (not b_next!32683) (not b_next!32685))
