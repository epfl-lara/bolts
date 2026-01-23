; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!330290 () Bool)

(assert start!330290)

(declare-fun b!3567026 () Bool)

(declare-fun b_free!91281 () Bool)

(declare-fun b_next!91985 () Bool)

(assert (=> b!3567026 (= b_free!91281 (not b_next!91985))))

(declare-fun tp!1093091 () Bool)

(declare-fun b_and!256627 () Bool)

(assert (=> b!3567026 (= tp!1093091 b_and!256627)))

(declare-fun b_free!91283 () Bool)

(declare-fun b_next!91987 () Bool)

(assert (=> b!3567026 (= b_free!91283 (not b_next!91987))))

(declare-fun tp!1093087 () Bool)

(declare-fun b_and!256629 () Bool)

(assert (=> b!3567026 (= tp!1093087 b_and!256629)))

(declare-fun b!3567033 () Bool)

(declare-fun b_free!91285 () Bool)

(declare-fun b_next!91989 () Bool)

(assert (=> b!3567033 (= b_free!91285 (not b_next!91989))))

(declare-fun tp!1093092 () Bool)

(declare-fun b_and!256631 () Bool)

(assert (=> b!3567033 (= tp!1093092 b_and!256631)))

(declare-fun b_free!91287 () Bool)

(declare-fun b_next!91991 () Bool)

(assert (=> b!3567033 (= b_free!91287 (not b_next!91991))))

(declare-fun tp!1093094 () Bool)

(declare-fun b_and!256633 () Bool)

(assert (=> b!3567033 (= tp!1093094 b_and!256633)))

(declare-fun b!3567022 () Bool)

(declare-fun b_free!91289 () Bool)

(declare-fun b_next!91993 () Bool)

(assert (=> b!3567022 (= b_free!91289 (not b_next!91993))))

(declare-fun tp!1093086 () Bool)

(declare-fun b_and!256635 () Bool)

(assert (=> b!3567022 (= tp!1093086 b_and!256635)))

(declare-fun b_free!91291 () Bool)

(declare-fun b_next!91995 () Bool)

(assert (=> b!3567022 (= b_free!91291 (not b_next!91995))))

(declare-fun tp!1093088 () Bool)

(declare-fun b_and!256637 () Bool)

(assert (=> b!3567022 (= tp!1093088 b_and!256637)))

(declare-fun bs!568985 () Bool)

(declare-fun b!3567045 () Bool)

(declare-fun b!3567039 () Bool)

(assert (= bs!568985 (and b!3567045 b!3567039)))

(declare-fun lambda!123351 () Int)

(declare-fun lambda!123350 () Int)

(assert (=> bs!568985 (not (= lambda!123351 lambda!123350))))

(declare-fun b!3567066 () Bool)

(declare-fun e!2206446 () Bool)

(assert (=> b!3567066 (= e!2206446 true)))

(declare-fun b!3567065 () Bool)

(declare-fun e!2206445 () Bool)

(assert (=> b!3567065 (= e!2206445 e!2206446)))

(declare-fun b!3567064 () Bool)

(declare-fun e!2206444 () Bool)

(assert (=> b!3567064 (= e!2206444 e!2206445)))

(assert (=> b!3567045 e!2206444))

(assert (= b!3567065 b!3567066))

(assert (= b!3567064 b!3567065))

(declare-datatypes ((C!20708 0))(
  ( (C!20709 (val!12402 Int)) )
))
(declare-datatypes ((Regex!10261 0))(
  ( (ElementMatch!10261 (c!618222 C!20708)) (Concat!15993 (regOne!21034 Regex!10261) (regTwo!21034 Regex!10261)) (EmptyExpr!10261) (Star!10261 (reg!10590 Regex!10261)) (EmptyLang!10261) (Union!10261 (regOne!21035 Regex!10261) (regTwo!21035 Regex!10261)) )
))
(declare-datatypes ((List!37586 0))(
  ( (Nil!37462) (Cons!37462 (h!42882 (_ BitVec 16)) (t!288703 List!37586)) )
))
(declare-datatypes ((TokenValue!5732 0))(
  ( (FloatLiteralValue!11464 (text!40569 List!37586)) (TokenValueExt!5731 (__x!23681 Int)) (Broken!28660 (value!177241 List!37586)) (Object!5855) (End!5732) (Def!5732) (Underscore!5732) (Match!5732) (Else!5732) (Error!5732) (Case!5732) (If!5732) (Extends!5732) (Abstract!5732) (Class!5732) (Val!5732) (DelimiterValue!11464 (del!5792 List!37586)) (KeywordValue!5738 (value!177242 List!37586)) (CommentValue!11464 (value!177243 List!37586)) (WhitespaceValue!11464 (value!177244 List!37586)) (IndentationValue!5732 (value!177245 List!37586)) (String!41993) (Int32!5732) (Broken!28661 (value!177246 List!37586)) (Boolean!5733) (Unit!53426) (OperatorValue!5735 (op!5792 List!37586)) (IdentifierValue!11464 (value!177247 List!37586)) (IdentifierValue!11465 (value!177248 List!37586)) (WhitespaceValue!11465 (value!177249 List!37586)) (True!11464) (False!11464) (Broken!28662 (value!177250 List!37586)) (Broken!28663 (value!177251 List!37586)) (True!11465) (RightBrace!5732) (RightBracket!5732) (Colon!5732) (Null!5732) (Comma!5732) (LeftBracket!5732) (False!11465) (LeftBrace!5732) (ImaginaryLiteralValue!5732 (text!40570 List!37586)) (StringLiteralValue!17196 (value!177252 List!37586)) (EOFValue!5732 (value!177253 List!37586)) (IdentValue!5732 (value!177254 List!37586)) (DelimiterValue!11465 (value!177255 List!37586)) (DedentValue!5732 (value!177256 List!37586)) (NewLineValue!5732 (value!177257 List!37586)) (IntegerValue!17196 (value!177258 (_ BitVec 32)) (text!40571 List!37586)) (IntegerValue!17197 (value!177259 Int) (text!40572 List!37586)) (Times!5732) (Or!5732) (Equal!5732) (Minus!5732) (Broken!28664 (value!177260 List!37586)) (And!5732) (Div!5732) (LessEqual!5732) (Mod!5732) (Concat!15994) (Not!5732) (Plus!5732) (SpaceValue!5732 (value!177261 List!37586)) (IntegerValue!17198 (value!177262 Int) (text!40573 List!37586)) (StringLiteralValue!17197 (text!40574 List!37586)) (FloatLiteralValue!11465 (text!40575 List!37586)) (BytesLiteralValue!5732 (value!177263 List!37586)) (CommentValue!11465 (value!177264 List!37586)) (StringLiteralValue!17198 (value!177265 List!37586)) (ErrorTokenValue!5732 (msg!5793 List!37586)) )
))
(declare-datatypes ((List!37587 0))(
  ( (Nil!37463) (Cons!37463 (h!42883 C!20708) (t!288704 List!37587)) )
))
(declare-datatypes ((IArray!22763 0))(
  ( (IArray!22764 (innerList!11439 List!37587)) )
))
(declare-datatypes ((Conc!11379 0))(
  ( (Node!11379 (left!29284 Conc!11379) (right!29614 Conc!11379) (csize!22988 Int) (cheight!11590 Int)) (Leaf!17741 (xs!14581 IArray!22763) (csize!22989 Int)) (Empty!11379) )
))
(declare-datatypes ((BalanceConc!22372 0))(
  ( (BalanceConc!22373 (c!618223 Conc!11379)) )
))
(declare-datatypes ((String!41994 0))(
  ( (String!41995 (value!177266 String)) )
))
(declare-datatypes ((TokenValueInjection!10892 0))(
  ( (TokenValueInjection!10893 (toValue!7770 Int) (toChars!7629 Int)) )
))
(declare-datatypes ((Rule!10804 0))(
  ( (Rule!10805 (regex!5502 Regex!10261) (tag!6156 String!41994) (isSeparator!5502 Bool) (transformation!5502 TokenValueInjection!10892)) )
))
(declare-datatypes ((List!37588 0))(
  ( (Nil!37464) (Cons!37464 (h!42884 Rule!10804) (t!288705 List!37588)) )
))
(declare-fun rules!2135 () List!37588)

(get-info :version)

(assert (= (and b!3567045 ((_ is Cons!37464) rules!2135)) b!3567064))

(declare-fun order!20285 () Int)

(declare-fun order!20287 () Int)

(declare-fun dynLambda!16063 (Int Int) Int)

(declare-fun dynLambda!16064 (Int Int) Int)

(assert (=> b!3567066 (< (dynLambda!16063 order!20285 (toValue!7770 (transformation!5502 (h!42884 rules!2135)))) (dynLambda!16064 order!20287 lambda!123351))))

(declare-fun order!20289 () Int)

(declare-fun dynLambda!16065 (Int Int) Int)

(assert (=> b!3567066 (< (dynLambda!16065 order!20289 (toChars!7629 (transformation!5502 (h!42884 rules!2135)))) (dynLambda!16064 order!20287 lambda!123351))))

(assert (=> b!3567045 true))

(declare-fun b!3567011 () Bool)

(declare-fun e!2206419 () Bool)

(declare-fun e!2206418 () Bool)

(assert (=> b!3567011 (= e!2206419 e!2206418)))

(declare-fun res!1437926 () Bool)

(assert (=> b!3567011 (=> res!1437926 e!2206418)))

(declare-datatypes ((Token!10370 0))(
  ( (Token!10371 (value!177267 TokenValue!5732) (rule!8188 Rule!10804) (size!28551 Int) (originalCharacters!6216 List!37587)) )
))
(declare-datatypes ((List!37589 0))(
  ( (Nil!37465) (Cons!37465 (h!42885 Token!10370) (t!288706 List!37589)) )
))
(declare-fun tokens!494 () List!37589)

(assert (=> b!3567011 (= res!1437926 (or (isSeparator!5502 (rule!8188 (h!42885 tokens!494))) (isSeparator!5502 (rule!8188 (h!42885 (t!288706 tokens!494))))))))

(declare-datatypes ((Unit!53427 0))(
  ( (Unit!53428) )
))
(declare-fun lt!1221533 () Unit!53427)

(declare-fun forallContained!1449 (List!37589 Int Token!10370) Unit!53427)

(assert (=> b!3567011 (= lt!1221533 (forallContained!1449 tokens!494 lambda!123350 (h!42885 (t!288706 tokens!494))))))

(declare-fun lt!1221536 () Unit!53427)

(assert (=> b!3567011 (= lt!1221536 (forallContained!1449 tokens!494 lambda!123350 (h!42885 tokens!494)))))

(declare-fun b!3567012 () Bool)

(declare-fun e!2206437 () Unit!53427)

(declare-fun Unit!53429 () Unit!53427)

(assert (=> b!3567012 (= e!2206437 Unit!53429)))

(declare-fun lt!1221559 () Unit!53427)

(declare-fun lt!1221546 () C!20708)

(declare-fun lt!1221532 () List!37587)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!560 (Regex!10261 List!37587 C!20708) Unit!53427)

(assert (=> b!3567012 (= lt!1221559 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!560 (regex!5502 (rule!8188 (h!42885 (t!288706 tokens!494)))) lt!1221532 lt!1221546))))

(declare-fun res!1437922 () Bool)

(declare-fun matchR!4845 (Regex!10261 List!37587) Bool)

(assert (=> b!3567012 (= res!1437922 (not (matchR!4845 (regex!5502 (rule!8188 (h!42885 (t!288706 tokens!494)))) lt!1221532)))))

(declare-fun e!2206422 () Bool)

(assert (=> b!3567012 (=> (not res!1437922) (not e!2206422))))

(assert (=> b!3567012 e!2206422))

(declare-fun b!3567013 () Bool)

(declare-fun e!2206426 () Unit!53427)

(declare-fun Unit!53430 () Unit!53427)

(assert (=> b!3567013 (= e!2206426 Unit!53430)))

(declare-fun b!3567014 () Bool)

(declare-fun e!2206429 () Bool)

(declare-fun e!2206425 () Bool)

(declare-fun tp!1093093 () Bool)

(assert (=> b!3567014 (= e!2206429 (and e!2206425 tp!1093093))))

(declare-fun b!3567015 () Bool)

(declare-fun e!2206435 () Bool)

(assert (=> b!3567015 (= e!2206435 false)))

(declare-fun b!3567016 () Bool)

(declare-fun res!1437933 () Bool)

(declare-fun e!2206413 () Bool)

(assert (=> b!3567016 (=> (not res!1437933) (not e!2206413))))

(declare-fun separatorToken!241 () Token!10370)

(declare-datatypes ((LexerInterface!5091 0))(
  ( (LexerInterfaceExt!5088 (__x!23682 Int)) (Lexer!5089) )
))
(declare-fun thiss!18206 () LexerInterface!5091)

(declare-fun rulesProduceIndividualToken!2583 (LexerInterface!5091 List!37588 Token!10370) Bool)

(assert (=> b!3567016 (= res!1437933 (rulesProduceIndividualToken!2583 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3567017 () Bool)

(declare-fun e!2206423 () Bool)

(declare-fun e!2206415 () Bool)

(assert (=> b!3567017 (= e!2206423 e!2206415)))

(declare-fun res!1437938 () Bool)

(assert (=> b!3567017 (=> (not res!1437938) (not e!2206415))))

(declare-fun lt!1221574 () Rule!10804)

(assert (=> b!3567017 (= res!1437938 (matchR!4845 (regex!5502 lt!1221574) lt!1221532))))

(declare-datatypes ((Option!7673 0))(
  ( (None!7672) (Some!7672 (v!37262 Rule!10804)) )
))
(declare-fun lt!1221544 () Option!7673)

(declare-fun get!12050 (Option!7673) Rule!10804)

(assert (=> b!3567017 (= lt!1221574 (get!12050 lt!1221544))))

(declare-fun b!3567018 () Bool)

(declare-fun e!2206431 () Bool)

(assert (=> b!3567018 (= e!2206413 (not e!2206431))))

(declare-fun res!1437920 () Bool)

(assert (=> b!3567018 (=> res!1437920 e!2206431)))

(declare-fun lt!1221557 () List!37587)

(declare-fun lt!1221562 () List!37587)

(assert (=> b!3567018 (= res!1437920 (not (= lt!1221557 lt!1221562)))))

(declare-fun printList!1639 (LexerInterface!5091 List!37589) List!37587)

(assert (=> b!3567018 (= lt!1221562 (printList!1639 thiss!18206 (Cons!37465 (h!42885 tokens!494) Nil!37465)))))

(declare-fun lt!1221566 () BalanceConc!22372)

(declare-fun list!13739 (BalanceConc!22372) List!37587)

(assert (=> b!3567018 (= lt!1221557 (list!13739 lt!1221566))))

(declare-datatypes ((IArray!22765 0))(
  ( (IArray!22766 (innerList!11440 List!37589)) )
))
(declare-datatypes ((Conc!11380 0))(
  ( (Node!11380 (left!29285 Conc!11380) (right!29615 Conc!11380) (csize!22990 Int) (cheight!11591 Int)) (Leaf!17742 (xs!14582 IArray!22765) (csize!22991 Int)) (Empty!11380) )
))
(declare-datatypes ((BalanceConc!22374 0))(
  ( (BalanceConc!22375 (c!618224 Conc!11380)) )
))
(declare-fun lt!1221553 () BalanceConc!22374)

(declare-fun printTailRec!1586 (LexerInterface!5091 BalanceConc!22374 Int BalanceConc!22372) BalanceConc!22372)

(assert (=> b!3567018 (= lt!1221566 (printTailRec!1586 thiss!18206 lt!1221553 0 (BalanceConc!22373 Empty!11379)))))

(declare-fun print!2156 (LexerInterface!5091 BalanceConc!22374) BalanceConc!22372)

(assert (=> b!3567018 (= lt!1221566 (print!2156 thiss!18206 lt!1221553))))

(declare-fun singletonSeq!2598 (Token!10370) BalanceConc!22374)

(assert (=> b!3567018 (= lt!1221553 (singletonSeq!2598 (h!42885 tokens!494)))))

(declare-fun b!3567019 () Bool)

(declare-fun e!2206427 () Bool)

(assert (=> b!3567019 (= e!2206431 e!2206427)))

(declare-fun res!1437916 () Bool)

(assert (=> b!3567019 (=> res!1437916 e!2206427)))

(declare-fun lt!1221563 () List!37587)

(assert (=> b!3567019 (= res!1437916 (or (not (= lt!1221562 lt!1221563)) (not (= lt!1221557 lt!1221563))))))

(declare-fun charsOf!3516 (Token!10370) BalanceConc!22372)

(assert (=> b!3567019 (= lt!1221563 (list!13739 (charsOf!3516 (h!42885 tokens!494))))))

(declare-fun b!3567020 () Bool)

(declare-fun Unit!53431 () Unit!53427)

(assert (=> b!3567020 (= e!2206426 Unit!53431)))

(declare-fun lt!1221580 () List!37587)

(declare-fun lt!1221575 () Unit!53427)

(declare-fun lt!1221576 () C!20708)

(assert (=> b!3567020 (= lt!1221575 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!560 (regex!5502 (rule!8188 separatorToken!241)) lt!1221580 lt!1221576))))

(declare-fun res!1437934 () Bool)

(assert (=> b!3567020 (= res!1437934 (not (matchR!4845 (regex!5502 (rule!8188 separatorToken!241)) lt!1221580)))))

(assert (=> b!3567020 (=> (not res!1437934) (not e!2206435))))

(assert (=> b!3567020 e!2206435))

(declare-fun e!2206402 () Bool)

(assert (=> b!3567022 (= e!2206402 (and tp!1093086 tp!1093088))))

(declare-fun b!3567023 () Bool)

(assert (=> b!3567023 (= e!2206415 (= (rule!8188 (h!42885 (t!288706 tokens!494))) lt!1221574))))

(declare-fun b!3567024 () Bool)

(declare-fun res!1437937 () Bool)

(assert (=> b!3567024 (=> (not res!1437937) (not e!2206413))))

(assert (=> b!3567024 (= res!1437937 (and (not ((_ is Nil!37465) tokens!494)) (not ((_ is Nil!37465) (t!288706 tokens!494)))))))

(declare-fun b!3567025 () Bool)

(declare-fun e!2206434 () Bool)

(declare-datatypes ((tuple2!37360 0))(
  ( (tuple2!37361 (_1!21814 BalanceConc!22374) (_2!21814 BalanceConc!22372)) )
))
(declare-fun lt!1221537 () tuple2!37360)

(declare-fun isEmpty!21979 (BalanceConc!22372) Bool)

(assert (=> b!3567025 (= e!2206434 (not (isEmpty!21979 (_2!21814 lt!1221537))))))

(declare-fun e!2206436 () Bool)

(assert (=> b!3567026 (= e!2206436 (and tp!1093091 tp!1093087))))

(declare-fun tp!1093095 () Bool)

(declare-fun e!2206408 () Bool)

(declare-fun b!3567027 () Bool)

(declare-fun e!2206417 () Bool)

(declare-fun inv!50736 (Token!10370) Bool)

(assert (=> b!3567027 (= e!2206408 (and (inv!50736 (h!42885 tokens!494)) e!2206417 tp!1093095))))

(declare-fun e!2206432 () Bool)

(declare-fun tp!1093090 () Bool)

(declare-fun b!3567028 () Bool)

(declare-fun inv!21 (TokenValue!5732) Bool)

(assert (=> b!3567028 (= e!2206417 (and (inv!21 (value!177267 (h!42885 tokens!494))) e!2206432 tp!1093090))))

(declare-fun b!3567029 () Bool)

(declare-fun res!1437921 () Bool)

(assert (=> b!3567029 (=> res!1437921 e!2206427)))

(assert (=> b!3567029 (= res!1437921 (not (rulesProduceIndividualToken!2583 thiss!18206 rules!2135 (h!42885 tokens!494))))))

(declare-fun b!3567030 () Bool)

(declare-fun e!2206403 () Bool)

(assert (=> b!3567030 (= e!2206403 true)))

(declare-datatypes ((tuple2!37362 0))(
  ( (tuple2!37363 (_1!21815 Token!10370) (_2!21815 List!37587)) )
))
(declare-datatypes ((Option!7674 0))(
  ( (None!7673) (Some!7673 (v!37263 tuple2!37362)) )
))
(declare-fun lt!1221539 () Option!7674)

(declare-fun maxPrefix!2631 (LexerInterface!5091 List!37588 List!37587) Option!7674)

(assert (=> b!3567030 (= lt!1221539 (maxPrefix!2631 thiss!18206 rules!2135 lt!1221580))))

(declare-fun b!3567031 () Bool)

(declare-fun e!2206406 () Bool)

(declare-fun lt!1221560 () Rule!10804)

(assert (=> b!3567031 (= e!2206406 (= (rule!8188 separatorToken!241) lt!1221560))))

(declare-fun b!3567032 () Bool)

(declare-fun res!1437919 () Bool)

(assert (=> b!3567032 (=> (not res!1437919) (not e!2206413))))

(declare-fun rulesInvariant!4488 (LexerInterface!5091 List!37588) Bool)

(assert (=> b!3567032 (= res!1437919 (rulesInvariant!4488 thiss!18206 rules!2135))))

(declare-fun e!2206409 () Bool)

(assert (=> b!3567033 (= e!2206409 (and tp!1093092 tp!1093094))))

(declare-fun tp!1093096 () Bool)

(declare-fun b!3567034 () Bool)

(declare-fun inv!50733 (String!41994) Bool)

(declare-fun inv!50737 (TokenValueInjection!10892) Bool)

(assert (=> b!3567034 (= e!2206425 (and tp!1093096 (inv!50733 (tag!6156 (h!42884 rules!2135))) (inv!50737 (transformation!5502 (h!42884 rules!2135))) e!2206409))))

(declare-fun b!3567035 () Bool)

(declare-fun res!1437940 () Bool)

(assert (=> b!3567035 (=> (not res!1437940) (not e!2206413))))

(declare-fun rulesProduceEachTokenIndividually!1542 (LexerInterface!5091 List!37588 BalanceConc!22374) Bool)

(declare-fun seqFromList!4057 (List!37589) BalanceConc!22374)

(assert (=> b!3567035 (= res!1437940 (rulesProduceEachTokenIndividually!1542 thiss!18206 rules!2135 (seqFromList!4057 tokens!494)))))

(declare-fun e!2206420 () Bool)

(declare-fun tp!1093098 () Bool)

(declare-fun b!3567036 () Bool)

(declare-fun e!2206428 () Bool)

(assert (=> b!3567036 (= e!2206420 (and (inv!21 (value!177267 separatorToken!241)) e!2206428 tp!1093098))))

(declare-fun b!3567037 () Bool)

(declare-fun res!1437924 () Bool)

(assert (=> b!3567037 (=> res!1437924 e!2206434)))

(declare-fun apply!8988 (BalanceConc!22374 Int) Token!10370)

(assert (=> b!3567037 (= res!1437924 (not (= (apply!8988 (_1!21814 lt!1221537) 0) (h!42885 (t!288706 tokens!494)))))))

(declare-fun b!3567038 () Bool)

(declare-fun e!2206414 () Bool)

(declare-fun e!2206421 () Bool)

(assert (=> b!3567038 (= e!2206414 e!2206421)))

(declare-fun res!1437928 () Bool)

(assert (=> b!3567038 (=> (not res!1437928) (not e!2206421))))

(declare-fun lt!1221541 () Rule!10804)

(assert (=> b!3567038 (= res!1437928 (matchR!4845 (regex!5502 lt!1221541) lt!1221563))))

(declare-fun lt!1221543 () Option!7673)

(assert (=> b!3567038 (= lt!1221541 (get!12050 lt!1221543))))

(declare-fun res!1437939 () Bool)

(assert (=> b!3567039 (=> (not res!1437939) (not e!2206413))))

(declare-fun forall!8098 (List!37589 Int) Bool)

(assert (=> b!3567039 (= res!1437939 (forall!8098 tokens!494 lambda!123350))))

(declare-fun b!3567040 () Bool)

(declare-fun res!1437936 () Bool)

(assert (=> b!3567040 (=> (not res!1437936) (not e!2206413))))

(declare-fun sepAndNonSepRulesDisjointChars!1696 (List!37588 List!37588) Bool)

(assert (=> b!3567040 (= res!1437936 (sepAndNonSepRulesDisjointChars!1696 rules!2135 rules!2135))))

(declare-fun b!3567041 () Bool)

(assert (=> b!3567041 (= e!2206422 false)))

(declare-fun b!3567042 () Bool)

(declare-fun e!2206424 () Bool)

(declare-fun e!2206410 () Bool)

(assert (=> b!3567042 (= e!2206424 e!2206410)))

(declare-fun res!1437930 () Bool)

(assert (=> b!3567042 (=> res!1437930 e!2206410)))

(declare-fun lt!1221567 () List!37587)

(declare-fun lt!1221549 () List!37587)

(assert (=> b!3567042 (= res!1437930 (not (= lt!1221567 lt!1221549)))))

(declare-fun lt!1221569 () List!37587)

(assert (=> b!3567042 (= lt!1221569 lt!1221549)))

(declare-fun lt!1221577 () List!37587)

(declare-fun ++!9311 (List!37587 List!37587) List!37587)

(assert (=> b!3567042 (= lt!1221549 (++!9311 lt!1221563 lt!1221577))))

(declare-fun lt!1221556 () List!37587)

(declare-fun lt!1221534 () Unit!53427)

(declare-fun lemmaConcatAssociativity!2042 (List!37587 List!37587 List!37587) Unit!53427)

(assert (=> b!3567042 (= lt!1221534 (lemmaConcatAssociativity!2042 lt!1221563 lt!1221580 lt!1221556))))

(declare-fun b!3567043 () Bool)

(assert (=> b!3567043 (= e!2206427 e!2206419)))

(declare-fun res!1437932 () Bool)

(assert (=> b!3567043 (=> res!1437932 e!2206419)))

(declare-fun lt!1221568 () BalanceConc!22372)

(declare-fun isEmpty!21980 (BalanceConc!22374) Bool)

(declare-fun lex!2417 (LexerInterface!5091 List!37588 BalanceConc!22372) tuple2!37360)

(assert (=> b!3567043 (= res!1437932 (isEmpty!21980 (_1!21814 (lex!2417 thiss!18206 rules!2135 lt!1221568))))))

(declare-fun seqFromList!4058 (List!37587) BalanceConc!22372)

(assert (=> b!3567043 (= lt!1221568 (seqFromList!4058 lt!1221563))))

(declare-fun b!3567044 () Bool)

(declare-fun e!2206416 () Bool)

(declare-fun lt!1221542 () tuple2!37360)

(assert (=> b!3567044 (= e!2206416 (isEmpty!21979 (_2!21814 lt!1221542)))))

(assert (=> b!3567045 (= e!2206410 e!2206403)))

(declare-fun res!1437927 () Bool)

(assert (=> b!3567045 (=> res!1437927 e!2206403)))

(declare-fun contains!7075 (List!37588 Rule!10804) Bool)

(assert (=> b!3567045 (= res!1437927 (not (contains!7075 rules!2135 (rule!8188 separatorToken!241))))))

(declare-fun lt!1221579 () List!37587)

(declare-fun contains!7076 (List!37587 C!20708) Bool)

(assert (=> b!3567045 (not (contains!7076 lt!1221579 lt!1221546))))

(declare-fun lt!1221545 () Unit!53427)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!184 (LexerInterface!5091 List!37588 List!37588 Rule!10804 Rule!10804 C!20708) Unit!53427)

(assert (=> b!3567045 (= lt!1221545 (lemmaSepRuleNotContainsCharContainedInANonSepRule!184 thiss!18206 rules!2135 rules!2135 (rule!8188 (h!42885 (t!288706 tokens!494))) (rule!8188 separatorToken!241) lt!1221546))))

(declare-fun lt!1221551 () Unit!53427)

(assert (=> b!3567045 (= lt!1221551 e!2206437)))

(declare-fun c!618221 () Bool)

(declare-fun usedCharacters!736 (Regex!10261) List!37587)

(assert (=> b!3567045 (= c!618221 (not (contains!7076 (usedCharacters!736 (regex!5502 (rule!8188 (h!42885 (t!288706 tokens!494))))) lt!1221546)))))

(declare-fun head!7427 (List!37587) C!20708)

(assert (=> b!3567045 (= lt!1221546 (head!7427 lt!1221532))))

(declare-fun maxPrefixOneRule!1798 (LexerInterface!5091 Rule!10804 List!37587) Option!7674)

(declare-fun apply!8989 (TokenValueInjection!10892 BalanceConc!22372) TokenValue!5732)

(declare-fun size!28552 (List!37587) Int)

(assert (=> b!3567045 (= (maxPrefixOneRule!1798 thiss!18206 (rule!8188 (h!42885 (t!288706 tokens!494))) lt!1221532) (Some!7673 (tuple2!37363 (Token!10371 (apply!8989 (transformation!5502 (rule!8188 (h!42885 (t!288706 tokens!494)))) (seqFromList!4058 lt!1221532)) (rule!8188 (h!42885 (t!288706 tokens!494))) (size!28552 lt!1221532) lt!1221532) Nil!37463)))))

(declare-fun lt!1221554 () Unit!53427)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!891 (LexerInterface!5091 List!37588 List!37587 List!37587 List!37587 Rule!10804) Unit!53427)

(assert (=> b!3567045 (= lt!1221554 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!891 thiss!18206 rules!2135 lt!1221532 lt!1221532 Nil!37463 (rule!8188 (h!42885 (t!288706 tokens!494)))))))

(assert (=> b!3567045 e!2206423))

(declare-fun res!1437929 () Bool)

(assert (=> b!3567045 (=> (not res!1437929) (not e!2206423))))

(declare-fun isDefined!5918 (Option!7673) Bool)

(assert (=> b!3567045 (= res!1437929 (isDefined!5918 lt!1221544))))

(declare-fun getRuleFromTag!1145 (LexerInterface!5091 List!37588 String!41994) Option!7673)

(assert (=> b!3567045 (= lt!1221544 (getRuleFromTag!1145 thiss!18206 rules!2135 (tag!6156 (rule!8188 (h!42885 (t!288706 tokens!494))))))))

(declare-fun lt!1221565 () Unit!53427)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1145 (LexerInterface!5091 List!37588 List!37587 Token!10370) Unit!53427)

(assert (=> b!3567045 (= lt!1221565 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1145 thiss!18206 rules!2135 lt!1221532 (h!42885 (t!288706 tokens!494))))))

(declare-fun lt!1221572 () Bool)

(assert (=> b!3567045 lt!1221572))

(declare-fun lt!1221548 () Unit!53427)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1080 (LexerInterface!5091 List!37588 List!37589 Token!10370) Unit!53427)

(assert (=> b!3567045 (= lt!1221548 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1080 thiss!18206 rules!2135 tokens!494 (h!42885 (t!288706 tokens!494))))))

(assert (=> b!3567045 (= (maxPrefix!2631 thiss!18206 rules!2135 lt!1221549) (Some!7673 (tuple2!37363 (h!42885 tokens!494) lt!1221577)))))

(declare-fun lt!1221558 () Unit!53427)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!258 (LexerInterface!5091 List!37588 Token!10370 Rule!10804 List!37587 Rule!10804) Unit!53427)

(assert (=> b!3567045 (= lt!1221558 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!258 thiss!18206 rules!2135 (h!42885 tokens!494) (rule!8188 (h!42885 tokens!494)) lt!1221577 (rule!8188 separatorToken!241)))))

(assert (=> b!3567045 (not (contains!7076 (usedCharacters!736 (regex!5502 (rule!8188 (h!42885 tokens!494)))) lt!1221576))))

(declare-fun lt!1221578 () Unit!53427)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!302 (LexerInterface!5091 List!37588 List!37588 Rule!10804 Rule!10804 C!20708) Unit!53427)

(assert (=> b!3567045 (= lt!1221578 (lemmaNonSepRuleNotContainsCharContainedInASepRule!302 thiss!18206 rules!2135 rules!2135 (rule!8188 (h!42885 tokens!494)) (rule!8188 separatorToken!241) lt!1221576))))

(declare-fun lt!1221550 () Unit!53427)

(assert (=> b!3567045 (= lt!1221550 (forallContained!1449 tokens!494 lambda!123351 (h!42885 (t!288706 tokens!494))))))

(declare-fun lt!1221561 () Bool)

(assert (=> b!3567045 (= lt!1221572 (not lt!1221561))))

(assert (=> b!3567045 (= lt!1221572 (rulesProduceIndividualToken!2583 thiss!18206 rules!2135 (h!42885 (t!288706 tokens!494))))))

(assert (=> b!3567045 (= lt!1221561 e!2206434)))

(declare-fun res!1437914 () Bool)

(assert (=> b!3567045 (=> res!1437914 e!2206434)))

(declare-fun size!28553 (BalanceConc!22374) Int)

(assert (=> b!3567045 (= res!1437914 (not (= (size!28553 (_1!21814 lt!1221537)) 1)))))

(declare-fun lt!1221571 () BalanceConc!22372)

(assert (=> b!3567045 (= lt!1221537 (lex!2417 thiss!18206 rules!2135 lt!1221571))))

(declare-fun lt!1221570 () BalanceConc!22374)

(assert (=> b!3567045 (= lt!1221571 (printTailRec!1586 thiss!18206 lt!1221570 0 (BalanceConc!22373 Empty!11379)))))

(assert (=> b!3567045 (= lt!1221571 (print!2156 thiss!18206 lt!1221570))))

(assert (=> b!3567045 (= lt!1221570 (singletonSeq!2598 (h!42885 (t!288706 tokens!494))))))

(assert (=> b!3567045 e!2206416))

(declare-fun res!1437925 () Bool)

(assert (=> b!3567045 (=> (not res!1437925) (not e!2206416))))

(assert (=> b!3567045 (= res!1437925 (= (size!28553 (_1!21814 lt!1221542)) 1))))

(declare-fun lt!1221573 () BalanceConc!22372)

(assert (=> b!3567045 (= lt!1221542 (lex!2417 thiss!18206 rules!2135 lt!1221573))))

(declare-fun lt!1221535 () BalanceConc!22374)

(assert (=> b!3567045 (= lt!1221573 (printTailRec!1586 thiss!18206 lt!1221535 0 (BalanceConc!22373 Empty!11379)))))

(assert (=> b!3567045 (= lt!1221573 (print!2156 thiss!18206 lt!1221535))))

(assert (=> b!3567045 (= lt!1221535 (singletonSeq!2598 separatorToken!241))))

(declare-fun lt!1221552 () Unit!53427)

(assert (=> b!3567045 (= lt!1221552 e!2206426)))

(declare-fun c!618220 () Bool)

(assert (=> b!3567045 (= c!618220 (not (contains!7076 lt!1221579 lt!1221576)))))

(assert (=> b!3567045 (= lt!1221576 (head!7427 lt!1221580))))

(assert (=> b!3567045 (= lt!1221579 (usedCharacters!736 (regex!5502 (rule!8188 separatorToken!241))))))

(declare-fun e!2206433 () Bool)

(assert (=> b!3567045 e!2206433))

(declare-fun res!1437931 () Bool)

(assert (=> b!3567045 (=> (not res!1437931) (not e!2206433))))

(declare-fun lt!1221555 () Option!7673)

(assert (=> b!3567045 (= res!1437931 (isDefined!5918 lt!1221555))))

(assert (=> b!3567045 (= lt!1221555 (getRuleFromTag!1145 thiss!18206 rules!2135 (tag!6156 (rule!8188 separatorToken!241))))))

(declare-fun lt!1221547 () Unit!53427)

(assert (=> b!3567045 (= lt!1221547 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1145 thiss!18206 rules!2135 lt!1221580 separatorToken!241))))

(assert (=> b!3567045 (= (maxPrefixOneRule!1798 thiss!18206 (rule!8188 (h!42885 tokens!494)) lt!1221563) (Some!7673 (tuple2!37363 (Token!10371 (apply!8989 (transformation!5502 (rule!8188 (h!42885 tokens!494))) lt!1221568) (rule!8188 (h!42885 tokens!494)) (size!28552 lt!1221563) lt!1221563) Nil!37463)))))

(declare-fun lt!1221564 () Unit!53427)

(assert (=> b!3567045 (= lt!1221564 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!891 thiss!18206 rules!2135 lt!1221563 lt!1221563 Nil!37463 (rule!8188 (h!42885 tokens!494))))))

(assert (=> b!3567045 e!2206414))

(declare-fun res!1437941 () Bool)

(assert (=> b!3567045 (=> (not res!1437941) (not e!2206414))))

(assert (=> b!3567045 (= res!1437941 (isDefined!5918 lt!1221543))))

(assert (=> b!3567045 (= lt!1221543 (getRuleFromTag!1145 thiss!18206 rules!2135 (tag!6156 (rule!8188 (h!42885 tokens!494)))))))

(declare-fun lt!1221538 () Unit!53427)

(assert (=> b!3567045 (= lt!1221538 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1145 thiss!18206 rules!2135 lt!1221563 (h!42885 tokens!494)))))

(declare-fun lt!1221540 () Unit!53427)

(assert (=> b!3567045 (= lt!1221540 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1080 thiss!18206 rules!2135 tokens!494 (h!42885 tokens!494)))))

(declare-fun b!3567046 () Bool)

(declare-fun res!1437935 () Bool)

(assert (=> b!3567046 (=> (not res!1437935) (not e!2206413))))

(declare-fun isEmpty!21981 (List!37588) Bool)

(assert (=> b!3567046 (= res!1437935 (not (isEmpty!21981 rules!2135)))))

(declare-fun b!3567047 () Bool)

(declare-fun tp!1093097 () Bool)

(assert (=> b!3567047 (= e!2206428 (and tp!1093097 (inv!50733 (tag!6156 (rule!8188 separatorToken!241))) (inv!50737 (transformation!5502 (rule!8188 separatorToken!241))) e!2206402))))

(declare-fun b!3567048 () Bool)

(declare-fun Unit!53432 () Unit!53427)

(assert (=> b!3567048 (= e!2206437 Unit!53432)))

(declare-fun b!3567049 () Bool)

(declare-fun res!1437918 () Bool)

(assert (=> b!3567049 (=> (not res!1437918) (not e!2206416))))

(assert (=> b!3567049 (= res!1437918 (= (apply!8988 (_1!21814 lt!1221542) 0) separatorToken!241))))

(declare-fun b!3567050 () Bool)

(declare-fun e!2206405 () Bool)

(assert (=> b!3567050 (= e!2206418 e!2206405)))

(declare-fun res!1437915 () Bool)

(assert (=> b!3567050 (=> res!1437915 e!2206405)))

(declare-fun printWithSeparatorTokenList!378 (LexerInterface!5091 List!37589 Token!10370) List!37587)

(assert (=> b!3567050 (= res!1437915 (not (= lt!1221556 (++!9311 (++!9311 lt!1221532 lt!1221580) (printWithSeparatorTokenList!378 thiss!18206 (t!288706 (t!288706 tokens!494)) separatorToken!241)))))))

(assert (=> b!3567050 (= lt!1221532 (list!13739 (charsOf!3516 (h!42885 (t!288706 tokens!494)))))))

(assert (=> b!3567050 (= lt!1221577 (++!9311 lt!1221580 lt!1221556))))

(assert (=> b!3567050 (= lt!1221580 (list!13739 (charsOf!3516 separatorToken!241)))))

(assert (=> b!3567050 (= lt!1221556 (printWithSeparatorTokenList!378 thiss!18206 (t!288706 tokens!494) separatorToken!241))))

(assert (=> b!3567050 (= lt!1221567 (printWithSeparatorTokenList!378 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun res!1437923 () Bool)

(assert (=> start!330290 (=> (not res!1437923) (not e!2206413))))

(assert (=> start!330290 (= res!1437923 ((_ is Lexer!5089) thiss!18206))))

(assert (=> start!330290 e!2206413))

(assert (=> start!330290 true))

(assert (=> start!330290 e!2206429))

(assert (=> start!330290 e!2206408))

(assert (=> start!330290 (and (inv!50736 separatorToken!241) e!2206420)))

(declare-fun b!3567021 () Bool)

(declare-fun res!1437912 () Bool)

(assert (=> b!3567021 (=> (not res!1437912) (not e!2206413))))

(assert (=> b!3567021 (= res!1437912 (isSeparator!5502 (rule!8188 separatorToken!241)))))

(declare-fun b!3567051 () Bool)

(assert (=> b!3567051 (= e!2206421 (= (rule!8188 (h!42885 tokens!494)) lt!1221541))))

(declare-fun b!3567052 () Bool)

(assert (=> b!3567052 (= e!2206433 e!2206406)))

(declare-fun res!1437911 () Bool)

(assert (=> b!3567052 (=> (not res!1437911) (not e!2206406))))

(assert (=> b!3567052 (= res!1437911 (matchR!4845 (regex!5502 lt!1221560) lt!1221580))))

(assert (=> b!3567052 (= lt!1221560 (get!12050 lt!1221555))))

(declare-fun b!3567053 () Bool)

(assert (=> b!3567053 (= e!2206405 e!2206424)))

(declare-fun res!1437917 () Bool)

(assert (=> b!3567053 (=> res!1437917 e!2206424)))

(assert (=> b!3567053 (= res!1437917 (not (= lt!1221567 lt!1221569)))))

(assert (=> b!3567053 (= lt!1221569 (++!9311 (++!9311 lt!1221563 lt!1221580) lt!1221556))))

(declare-fun b!3567054 () Bool)

(declare-fun res!1437913 () Bool)

(assert (=> b!3567054 (=> res!1437913 e!2206403)))

(assert (=> b!3567054 (= res!1437913 (not (contains!7075 rules!2135 (rule!8188 (h!42885 (t!288706 tokens!494))))))))

(declare-fun tp!1093089 () Bool)

(declare-fun b!3567055 () Bool)

(assert (=> b!3567055 (= e!2206432 (and tp!1093089 (inv!50733 (tag!6156 (rule!8188 (h!42885 tokens!494)))) (inv!50737 (transformation!5502 (rule!8188 (h!42885 tokens!494)))) e!2206436))))

(assert (= (and start!330290 res!1437923) b!3567046))

(assert (= (and b!3567046 res!1437935) b!3567032))

(assert (= (and b!3567032 res!1437919) b!3567035))

(assert (= (and b!3567035 res!1437940) b!3567016))

(assert (= (and b!3567016 res!1437933) b!3567021))

(assert (= (and b!3567021 res!1437912) b!3567039))

(assert (= (and b!3567039 res!1437939) b!3567040))

(assert (= (and b!3567040 res!1437936) b!3567024))

(assert (= (and b!3567024 res!1437937) b!3567018))

(assert (= (and b!3567018 (not res!1437920)) b!3567019))

(assert (= (and b!3567019 (not res!1437916)) b!3567029))

(assert (= (and b!3567029 (not res!1437921)) b!3567043))

(assert (= (and b!3567043 (not res!1437932)) b!3567011))

(assert (= (and b!3567011 (not res!1437926)) b!3567050))

(assert (= (and b!3567050 (not res!1437915)) b!3567053))

(assert (= (and b!3567053 (not res!1437917)) b!3567042))

(assert (= (and b!3567042 (not res!1437930)) b!3567045))

(assert (= (and b!3567045 res!1437941) b!3567038))

(assert (= (and b!3567038 res!1437928) b!3567051))

(assert (= (and b!3567045 res!1437931) b!3567052))

(assert (= (and b!3567052 res!1437911) b!3567031))

(assert (= (and b!3567045 c!618220) b!3567020))

(assert (= (and b!3567045 (not c!618220)) b!3567013))

(assert (= (and b!3567020 res!1437934) b!3567015))

(assert (= (and b!3567045 res!1437925) b!3567049))

(assert (= (and b!3567049 res!1437918) b!3567044))

(assert (= (and b!3567045 (not res!1437914)) b!3567037))

(assert (= (and b!3567037 (not res!1437924)) b!3567025))

(assert (= (and b!3567045 res!1437929) b!3567017))

(assert (= (and b!3567017 res!1437938) b!3567023))

(assert (= (and b!3567045 c!618221) b!3567012))

(assert (= (and b!3567045 (not c!618221)) b!3567048))

(assert (= (and b!3567012 res!1437922) b!3567041))

(assert (= (and b!3567045 (not res!1437927)) b!3567054))

(assert (= (and b!3567054 (not res!1437913)) b!3567030))

(assert (= b!3567034 b!3567033))

(assert (= b!3567014 b!3567034))

(assert (= (and start!330290 ((_ is Cons!37464) rules!2135)) b!3567014))

(assert (= b!3567055 b!3567026))

(assert (= b!3567028 b!3567055))

(assert (= b!3567027 b!3567028))

(assert (= (and start!330290 ((_ is Cons!37465) tokens!494)) b!3567027))

(assert (= b!3567047 b!3567022))

(assert (= b!3567036 b!3567047))

(assert (= start!330290 b!3567036))

(declare-fun m!4053437 () Bool)

(assert (=> b!3567020 m!4053437))

(declare-fun m!4053439 () Bool)

(assert (=> b!3567020 m!4053439))

(declare-fun m!4053441 () Bool)

(assert (=> b!3567039 m!4053441))

(declare-fun m!4053443 () Bool)

(assert (=> b!3567012 m!4053443))

(declare-fun m!4053445 () Bool)

(assert (=> b!3567012 m!4053445))

(declare-fun m!4053447 () Bool)

(assert (=> start!330290 m!4053447))

(declare-fun m!4053449 () Bool)

(assert (=> b!3567046 m!4053449))

(declare-fun m!4053451 () Bool)

(assert (=> b!3567040 m!4053451))

(declare-fun m!4053453 () Bool)

(assert (=> b!3567037 m!4053453))

(declare-fun m!4053455 () Bool)

(assert (=> b!3567044 m!4053455))

(declare-fun m!4053457 () Bool)

(assert (=> b!3567032 m!4053457))

(declare-fun m!4053459 () Bool)

(assert (=> b!3567052 m!4053459))

(declare-fun m!4053461 () Bool)

(assert (=> b!3567052 m!4053461))

(declare-fun m!4053463 () Bool)

(assert (=> b!3567027 m!4053463))

(declare-fun m!4053465 () Bool)

(assert (=> b!3567050 m!4053465))

(declare-fun m!4053467 () Bool)

(assert (=> b!3567050 m!4053467))

(declare-fun m!4053469 () Bool)

(assert (=> b!3567050 m!4053469))

(assert (=> b!3567050 m!4053465))

(declare-fun m!4053471 () Bool)

(assert (=> b!3567050 m!4053471))

(declare-fun m!4053473 () Bool)

(assert (=> b!3567050 m!4053473))

(declare-fun m!4053475 () Bool)

(assert (=> b!3567050 m!4053475))

(assert (=> b!3567050 m!4053475))

(assert (=> b!3567050 m!4053473))

(declare-fun m!4053477 () Bool)

(assert (=> b!3567050 m!4053477))

(assert (=> b!3567050 m!4053467))

(declare-fun m!4053479 () Bool)

(assert (=> b!3567050 m!4053479))

(declare-fun m!4053481 () Bool)

(assert (=> b!3567050 m!4053481))

(declare-fun m!4053483 () Bool)

(assert (=> b!3567050 m!4053483))

(declare-fun m!4053485 () Bool)

(assert (=> b!3567055 m!4053485))

(declare-fun m!4053487 () Bool)

(assert (=> b!3567055 m!4053487))

(declare-fun m!4053489 () Bool)

(assert (=> b!3567054 m!4053489))

(declare-fun m!4053491 () Bool)

(assert (=> b!3567029 m!4053491))

(declare-fun m!4053493 () Bool)

(assert (=> b!3567018 m!4053493))

(declare-fun m!4053495 () Bool)

(assert (=> b!3567018 m!4053495))

(declare-fun m!4053497 () Bool)

(assert (=> b!3567018 m!4053497))

(declare-fun m!4053499 () Bool)

(assert (=> b!3567018 m!4053499))

(declare-fun m!4053501 () Bool)

(assert (=> b!3567018 m!4053501))

(declare-fun m!4053503 () Bool)

(assert (=> b!3567053 m!4053503))

(assert (=> b!3567053 m!4053503))

(declare-fun m!4053505 () Bool)

(assert (=> b!3567053 m!4053505))

(declare-fun m!4053507 () Bool)

(assert (=> b!3567049 m!4053507))

(declare-fun m!4053509 () Bool)

(assert (=> b!3567025 m!4053509))

(declare-fun m!4053511 () Bool)

(assert (=> b!3567036 m!4053511))

(declare-fun m!4053513 () Bool)

(assert (=> b!3567043 m!4053513))

(declare-fun m!4053515 () Bool)

(assert (=> b!3567043 m!4053515))

(declare-fun m!4053517 () Bool)

(assert (=> b!3567043 m!4053517))

(declare-fun m!4053519 () Bool)

(assert (=> b!3567045 m!4053519))

(declare-fun m!4053521 () Bool)

(assert (=> b!3567045 m!4053521))

(declare-fun m!4053523 () Bool)

(assert (=> b!3567045 m!4053523))

(declare-fun m!4053525 () Bool)

(assert (=> b!3567045 m!4053525))

(assert (=> b!3567045 m!4053519))

(declare-fun m!4053527 () Bool)

(assert (=> b!3567045 m!4053527))

(declare-fun m!4053529 () Bool)

(assert (=> b!3567045 m!4053529))

(declare-fun m!4053531 () Bool)

(assert (=> b!3567045 m!4053531))

(declare-fun m!4053533 () Bool)

(assert (=> b!3567045 m!4053533))

(declare-fun m!4053535 () Bool)

(assert (=> b!3567045 m!4053535))

(declare-fun m!4053537 () Bool)

(assert (=> b!3567045 m!4053537))

(declare-fun m!4053539 () Bool)

(assert (=> b!3567045 m!4053539))

(declare-fun m!4053541 () Bool)

(assert (=> b!3567045 m!4053541))

(declare-fun m!4053543 () Bool)

(assert (=> b!3567045 m!4053543))

(declare-fun m!4053545 () Bool)

(assert (=> b!3567045 m!4053545))

(declare-fun m!4053547 () Bool)

(assert (=> b!3567045 m!4053547))

(declare-fun m!4053549 () Bool)

(assert (=> b!3567045 m!4053549))

(declare-fun m!4053551 () Bool)

(assert (=> b!3567045 m!4053551))

(declare-fun m!4053553 () Bool)

(assert (=> b!3567045 m!4053553))

(declare-fun m!4053555 () Bool)

(assert (=> b!3567045 m!4053555))

(declare-fun m!4053557 () Bool)

(assert (=> b!3567045 m!4053557))

(declare-fun m!4053559 () Bool)

(assert (=> b!3567045 m!4053559))

(declare-fun m!4053561 () Bool)

(assert (=> b!3567045 m!4053561))

(declare-fun m!4053563 () Bool)

(assert (=> b!3567045 m!4053563))

(declare-fun m!4053565 () Bool)

(assert (=> b!3567045 m!4053565))

(declare-fun m!4053567 () Bool)

(assert (=> b!3567045 m!4053567))

(declare-fun m!4053569 () Bool)

(assert (=> b!3567045 m!4053569))

(declare-fun m!4053571 () Bool)

(assert (=> b!3567045 m!4053571))

(declare-fun m!4053573 () Bool)

(assert (=> b!3567045 m!4053573))

(declare-fun m!4053575 () Bool)

(assert (=> b!3567045 m!4053575))

(assert (=> b!3567045 m!4053529))

(declare-fun m!4053577 () Bool)

(assert (=> b!3567045 m!4053577))

(declare-fun m!4053579 () Bool)

(assert (=> b!3567045 m!4053579))

(declare-fun m!4053581 () Bool)

(assert (=> b!3567045 m!4053581))

(declare-fun m!4053583 () Bool)

(assert (=> b!3567045 m!4053583))

(declare-fun m!4053585 () Bool)

(assert (=> b!3567045 m!4053585))

(declare-fun m!4053587 () Bool)

(assert (=> b!3567045 m!4053587))

(declare-fun m!4053589 () Bool)

(assert (=> b!3567045 m!4053589))

(declare-fun m!4053591 () Bool)

(assert (=> b!3567045 m!4053591))

(declare-fun m!4053593 () Bool)

(assert (=> b!3567045 m!4053593))

(assert (=> b!3567045 m!4053543))

(declare-fun m!4053595 () Bool)

(assert (=> b!3567045 m!4053595))

(declare-fun m!4053597 () Bool)

(assert (=> b!3567045 m!4053597))

(declare-fun m!4053599 () Bool)

(assert (=> b!3567045 m!4053599))

(declare-fun m!4053601 () Bool)

(assert (=> b!3567045 m!4053601))

(declare-fun m!4053603 () Bool)

(assert (=> b!3567045 m!4053603))

(declare-fun m!4053605 () Bool)

(assert (=> b!3567045 m!4053605))

(declare-fun m!4053607 () Bool)

(assert (=> b!3567045 m!4053607))

(declare-fun m!4053609 () Bool)

(assert (=> b!3567045 m!4053609))

(declare-fun m!4053611 () Bool)

(assert (=> b!3567016 m!4053611))

(declare-fun m!4053613 () Bool)

(assert (=> b!3567035 m!4053613))

(assert (=> b!3567035 m!4053613))

(declare-fun m!4053615 () Bool)

(assert (=> b!3567035 m!4053615))

(declare-fun m!4053617 () Bool)

(assert (=> b!3567042 m!4053617))

(declare-fun m!4053619 () Bool)

(assert (=> b!3567042 m!4053619))

(declare-fun m!4053621 () Bool)

(assert (=> b!3567011 m!4053621))

(declare-fun m!4053623 () Bool)

(assert (=> b!3567011 m!4053623))

(declare-fun m!4053625 () Bool)

(assert (=> b!3567017 m!4053625))

(declare-fun m!4053627 () Bool)

(assert (=> b!3567017 m!4053627))

(declare-fun m!4053629 () Bool)

(assert (=> b!3567028 m!4053629))

(declare-fun m!4053631 () Bool)

(assert (=> b!3567030 m!4053631))

(declare-fun m!4053633 () Bool)

(assert (=> b!3567019 m!4053633))

(assert (=> b!3567019 m!4053633))

(declare-fun m!4053635 () Bool)

(assert (=> b!3567019 m!4053635))

(declare-fun m!4053637 () Bool)

(assert (=> b!3567034 m!4053637))

(declare-fun m!4053639 () Bool)

(assert (=> b!3567034 m!4053639))

(declare-fun m!4053641 () Bool)

(assert (=> b!3567047 m!4053641))

(declare-fun m!4053643 () Bool)

(assert (=> b!3567047 m!4053643))

(declare-fun m!4053645 () Bool)

(assert (=> b!3567038 m!4053645))

(declare-fun m!4053647 () Bool)

(assert (=> b!3567038 m!4053647))

(check-sat (not b!3567018) b_and!256629 (not b!3567027) (not b_next!91987) b_and!256631 (not b!3567046) (not b!3567034) (not b!3567012) (not b!3567040) (not b_next!91995) (not b!3567030) (not b!3567052) (not b!3567029) (not b_next!91985) (not b!3567019) b_and!256627 (not b!3567014) (not b!3567037) (not b!3567054) (not b!3567042) (not b_next!91993) (not b!3567053) (not b!3567050) b_and!256637 (not b!3567017) (not b_next!91989) (not b!3567020) (not b!3567055) (not start!330290) b_and!256635 (not b!3567016) (not b!3567049) (not b!3567032) (not b!3567064) (not b_next!91991) (not b!3567039) (not b!3567038) (not b!3567044) (not b!3567047) b_and!256633 (not b!3567011) (not b!3567036) (not b!3567028) (not b!3567045) (not b!3567035) (not b!3567025) (not b!3567043))
(check-sat (not b_next!91995) b_and!256629 (not b_next!91985) b_and!256627 (not b_next!91987) (not b_next!91993) b_and!256637 b_and!256631 (not b_next!91989) b_and!256635 (not b_next!91991) b_and!256633)
