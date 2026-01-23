; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32766 () Bool)

(assert start!32766)

(declare-fun b!304663 () Bool)

(declare-fun b_free!10865 () Bool)

(declare-fun b_next!10865 () Bool)

(assert (=> b!304663 (= b_free!10865 (not b_next!10865))))

(declare-fun tp!108337 () Bool)

(declare-fun b_and!25717 () Bool)

(assert (=> b!304663 (= tp!108337 b_and!25717)))

(declare-fun b_free!10867 () Bool)

(declare-fun b_next!10867 () Bool)

(assert (=> b!304663 (= b_free!10867 (not b_next!10867))))

(declare-fun tp!108328 () Bool)

(declare-fun b_and!25719 () Bool)

(assert (=> b!304663 (= tp!108328 b_and!25719)))

(declare-fun b!304659 () Bool)

(declare-fun b_free!10869 () Bool)

(declare-fun b_next!10869 () Bool)

(assert (=> b!304659 (= b_free!10869 (not b_next!10869))))

(declare-fun tp!108327 () Bool)

(declare-fun b_and!25721 () Bool)

(assert (=> b!304659 (= tp!108327 b_and!25721)))

(declare-fun b_free!10871 () Bool)

(declare-fun b_next!10871 () Bool)

(assert (=> b!304659 (= b_free!10871 (not b_next!10871))))

(declare-fun tp!108335 () Bool)

(declare-fun b_and!25723 () Bool)

(assert (=> b!304659 (= tp!108335 b_and!25723)))

(declare-fun b!304655 () Bool)

(declare-fun b_free!10873 () Bool)

(declare-fun b_next!10873 () Bool)

(assert (=> b!304655 (= b_free!10873 (not b_next!10873))))

(declare-fun tp!108333 () Bool)

(declare-fun b_and!25725 () Bool)

(assert (=> b!304655 (= tp!108333 b_and!25725)))

(declare-fun b_free!10875 () Bool)

(declare-fun b_next!10875 () Bool)

(assert (=> b!304655 (= b_free!10875 (not b_next!10875))))

(declare-fun tp!108339 () Bool)

(declare-fun b_and!25727 () Bool)

(assert (=> b!304655 (= tp!108339 b_and!25727)))

(declare-fun bs!35268 () Bool)

(declare-fun b!304668 () Bool)

(declare-fun b!304674 () Bool)

(assert (= bs!35268 (and b!304668 b!304674)))

(declare-fun lambda!10364 () Int)

(declare-fun lambda!10363 () Int)

(assert (=> bs!35268 (not (= lambda!10364 lambda!10363))))

(declare-fun b!304686 () Bool)

(declare-fun e!189288 () Bool)

(assert (=> b!304686 (= e!189288 true)))

(declare-fun b!304685 () Bool)

(declare-fun e!189287 () Bool)

(assert (=> b!304685 (= e!189287 e!189288)))

(declare-fun b!304684 () Bool)

(declare-fun e!189286 () Bool)

(assert (=> b!304684 (= e!189286 e!189287)))

(assert (=> b!304668 e!189286))

(assert (= b!304685 b!304686))

(assert (= b!304684 b!304685))

(declare-datatypes ((List!4026 0))(
  ( (Nil!4016) (Cons!4016 (h!9413 (_ BitVec 16)) (t!43110 List!4026)) )
))
(declare-datatypes ((TokenValue!793 0))(
  ( (FloatLiteralValue!1586 (text!5996 List!4026)) (TokenValueExt!792 (__x!3073 Int)) (Broken!3965 (value!26263 List!4026)) (Object!802) (End!793) (Def!793) (Underscore!793) (Match!793) (Else!793) (Error!793) (Case!793) (If!793) (Extends!793) (Abstract!793) (Class!793) (Val!793) (DelimiterValue!1586 (del!853 List!4026)) (KeywordValue!799 (value!26264 List!4026)) (CommentValue!1586 (value!26265 List!4026)) (WhitespaceValue!1586 (value!26266 List!4026)) (IndentationValue!793 (value!26267 List!4026)) (String!5044) (Int32!793) (Broken!3966 (value!26268 List!4026)) (Boolean!794) (Unit!5621) (OperatorValue!796 (op!853 List!4026)) (IdentifierValue!1586 (value!26269 List!4026)) (IdentifierValue!1587 (value!26270 List!4026)) (WhitespaceValue!1587 (value!26271 List!4026)) (True!1586) (False!1586) (Broken!3967 (value!26272 List!4026)) (Broken!3968 (value!26273 List!4026)) (True!1587) (RightBrace!793) (RightBracket!793) (Colon!793) (Null!793) (Comma!793) (LeftBracket!793) (False!1587) (LeftBrace!793) (ImaginaryLiteralValue!793 (text!5997 List!4026)) (StringLiteralValue!2379 (value!26274 List!4026)) (EOFValue!793 (value!26275 List!4026)) (IdentValue!793 (value!26276 List!4026)) (DelimiterValue!1587 (value!26277 List!4026)) (DedentValue!793 (value!26278 List!4026)) (NewLineValue!793 (value!26279 List!4026)) (IntegerValue!2379 (value!26280 (_ BitVec 32)) (text!5998 List!4026)) (IntegerValue!2380 (value!26281 Int) (text!5999 List!4026)) (Times!793) (Or!793) (Equal!793) (Minus!793) (Broken!3969 (value!26282 List!4026)) (And!793) (Div!793) (LessEqual!793) (Mod!793) (Concat!1788) (Not!793) (Plus!793) (SpaceValue!793 (value!26283 List!4026)) (IntegerValue!2381 (value!26284 Int) (text!6000 List!4026)) (StringLiteralValue!2380 (text!6001 List!4026)) (FloatLiteralValue!1587 (text!6002 List!4026)) (BytesLiteralValue!793 (value!26285 List!4026)) (CommentValue!1587 (value!26286 List!4026)) (StringLiteralValue!2381 (value!26287 List!4026)) (ErrorTokenValue!793 (msg!854 List!4026)) )
))
(declare-datatypes ((C!2912 0))(
  ( (C!2913 (val!1342 Int)) )
))
(declare-datatypes ((List!4027 0))(
  ( (Nil!4017) (Cons!4017 (h!9414 C!2912) (t!43111 List!4027)) )
))
(declare-datatypes ((IArray!2729 0))(
  ( (IArray!2730 (innerList!1422 List!4027)) )
))
(declare-datatypes ((Conc!1364 0))(
  ( (Node!1364 (left!3332 Conc!1364) (right!3662 Conc!1364) (csize!2958 Int) (cheight!1575 Int)) (Leaf!2089 (xs!3967 IArray!2729) (csize!2959 Int)) (Empty!1364) )
))
(declare-datatypes ((BalanceConc!2736 0))(
  ( (BalanceConc!2737 (c!57940 Conc!1364)) )
))
(declare-datatypes ((TokenValueInjection!1358 0))(
  ( (TokenValueInjection!1359 (toValue!1530 Int) (toChars!1389 Int)) )
))
(declare-datatypes ((String!5045 0))(
  ( (String!5046 (value!26288 String)) )
))
(declare-datatypes ((Regex!995 0))(
  ( (ElementMatch!995 (c!57941 C!2912)) (Concat!1789 (regOne!2502 Regex!995) (regTwo!2502 Regex!995)) (EmptyExpr!995) (Star!995 (reg!1324 Regex!995)) (EmptyLang!995) (Union!995 (regOne!2503 Regex!995) (regTwo!2503 Regex!995)) )
))
(declare-datatypes ((Rule!1342 0))(
  ( (Rule!1343 (regex!771 Regex!995) (tag!989 String!5045) (isSeparator!771 Bool) (transformation!771 TokenValueInjection!1358)) )
))
(declare-datatypes ((List!4028 0))(
  ( (Nil!4018) (Cons!4018 (h!9415 Rule!1342) (t!43112 List!4028)) )
))
(declare-fun rules!1920 () List!4028)

(get-info :version)

(assert (= (and b!304668 ((_ is Cons!4018) rules!1920)) b!304684))

(declare-fun order!3239 () Int)

(declare-fun order!3237 () Int)

(declare-fun dynLambda!2181 (Int Int) Int)

(declare-fun dynLambda!2182 (Int Int) Int)

(assert (=> b!304686 (< (dynLambda!2181 order!3237 (toValue!1530 (transformation!771 (h!9415 rules!1920)))) (dynLambda!2182 order!3239 lambda!10364))))

(declare-fun order!3241 () Int)

(declare-fun dynLambda!2183 (Int Int) Int)

(assert (=> b!304686 (< (dynLambda!2183 order!3241 (toChars!1389 (transformation!771 (h!9415 rules!1920)))) (dynLambda!2182 order!3239 lambda!10364))))

(assert (=> b!304668 true))

(declare-fun b!304643 () Bool)

(declare-fun lt!129634 () List!4027)

(declare-fun e!189265 () Bool)

(declare-fun lt!129646 () List!4027)

(declare-fun lt!129642 () List!4027)

(declare-fun ++!1088 (List!4027 List!4027) List!4027)

(assert (=> b!304643 (= e!189265 (not (= lt!129634 (++!1088 lt!129646 lt!129642))))))

(declare-fun b!304644 () Bool)

(declare-fun e!189274 () Bool)

(declare-fun e!189276 () Bool)

(declare-fun tp!108329 () Bool)

(assert (=> b!304644 (= e!189274 (and e!189276 tp!108329))))

(declare-fun b!304645 () Bool)

(declare-fun e!189278 () Bool)

(declare-fun e!189273 () Bool)

(assert (=> b!304645 (= e!189278 e!189273)))

(declare-fun res!138317 () Bool)

(assert (=> b!304645 (=> res!138317 e!189273)))

(declare-fun lt!129633 () List!4027)

(declare-fun lt!129641 () List!4027)

(assert (=> b!304645 (= res!138317 (or (not (= lt!129633 lt!129641)) (not (= lt!129641 lt!129646)) (not (= lt!129633 lt!129646))))))

(declare-datatypes ((LexerInterface!657 0))(
  ( (LexerInterfaceExt!654 (__x!3074 Int)) (Lexer!655) )
))
(declare-fun thiss!17480 () LexerInterface!657)

(declare-datatypes ((Token!1286 0))(
  ( (Token!1287 (value!26289 TokenValue!793) (rule!1384 Rule!1342) (size!3221 Int) (originalCharacters!814 List!4027)) )
))
(declare-datatypes ((List!4029 0))(
  ( (Nil!4019) (Cons!4019 (h!9416 Token!1286) (t!43113 List!4029)) )
))
(declare-fun tokens!465 () List!4029)

(declare-fun printList!331 (LexerInterface!657 List!4029) List!4027)

(assert (=> b!304645 (= lt!129641 (printList!331 thiss!17480 (Cons!4019 (h!9416 tokens!465) Nil!4019)))))

(declare-fun lt!129650 () BalanceConc!2736)

(declare-fun list!1695 (BalanceConc!2736) List!4027)

(assert (=> b!304645 (= lt!129633 (list!1695 lt!129650))))

(declare-datatypes ((IArray!2731 0))(
  ( (IArray!2732 (innerList!1423 List!4029)) )
))
(declare-datatypes ((Conc!1365 0))(
  ( (Node!1365 (left!3333 Conc!1365) (right!3663 Conc!1365) (csize!2960 Int) (cheight!1576 Int)) (Leaf!2090 (xs!3968 IArray!2731) (csize!2961 Int)) (Empty!1365) )
))
(declare-datatypes ((BalanceConc!2738 0))(
  ( (BalanceConc!2739 (c!57942 Conc!1365)) )
))
(declare-fun lt!129645 () BalanceConc!2738)

(declare-fun printTailRec!343 (LexerInterface!657 BalanceConc!2738 Int BalanceConc!2736) BalanceConc!2736)

(assert (=> b!304645 (= lt!129650 (printTailRec!343 thiss!17480 lt!129645 0 (BalanceConc!2737 Empty!1364)))))

(declare-fun print!382 (LexerInterface!657 BalanceConc!2738) BalanceConc!2736)

(assert (=> b!304645 (= lt!129650 (print!382 thiss!17480 lt!129645))))

(declare-fun singletonSeq!317 (Token!1286) BalanceConc!2738)

(assert (=> b!304645 (= lt!129645 (singletonSeq!317 (h!9416 tokens!465)))))

(declare-fun b!304646 () Bool)

(declare-fun res!138314 () Bool)

(declare-fun e!189260 () Bool)

(assert (=> b!304646 (=> (not res!138314) (not e!189260))))

(declare-fun sepAndNonSepRulesDisjointChars!360 (List!4028 List!4028) Bool)

(assert (=> b!304646 (= res!138314 (sepAndNonSepRulesDisjointChars!360 rules!1920 rules!1920))))

(declare-fun e!189266 () Bool)

(declare-fun tp!108338 () Bool)

(declare-fun b!304647 () Bool)

(declare-fun e!189264 () Bool)

(declare-fun inv!4969 (String!5045) Bool)

(declare-fun inv!4972 (TokenValueInjection!1358) Bool)

(assert (=> b!304647 (= e!189264 (and tp!108338 (inv!4969 (tag!989 (rule!1384 (h!9416 tokens!465)))) (inv!4972 (transformation!771 (rule!1384 (h!9416 tokens!465)))) e!189266))))

(declare-fun b!304648 () Bool)

(declare-fun e!189262 () Bool)

(assert (=> b!304648 (= e!189262 e!189278)))

(declare-fun res!138307 () Bool)

(assert (=> b!304648 (=> res!138307 e!189278)))

(assert (=> b!304648 (= res!138307 e!189265)))

(declare-fun res!138312 () Bool)

(assert (=> b!304648 (=> (not res!138312) (not e!189265))))

(declare-fun lt!129649 () Bool)

(assert (=> b!304648 (= res!138312 (not lt!129649))))

(declare-fun lt!129639 () List!4027)

(assert (=> b!304648 (= lt!129649 (= lt!129634 lt!129639))))

(declare-fun b!304649 () Bool)

(declare-fun res!138318 () Bool)

(assert (=> b!304649 (=> res!138318 e!189273)))

(declare-fun isEmpty!2719 (BalanceConc!2738) Bool)

(declare-datatypes ((tuple2!4622 0))(
  ( (tuple2!4623 (_1!2527 BalanceConc!2738) (_2!2527 BalanceConc!2736)) )
))
(declare-fun lex!449 (LexerInterface!657 List!4028 BalanceConc!2736) tuple2!4622)

(declare-fun seqFromList!907 (List!4027) BalanceConc!2736)

(assert (=> b!304649 (= res!138318 (isEmpty!2719 (_1!2527 (lex!449 thiss!17480 rules!1920 (seqFromList!907 lt!129646)))))))

(declare-fun b!304650 () Bool)

(declare-fun e!189272 () Bool)

(declare-datatypes ((tuple2!4624 0))(
  ( (tuple2!4625 (_1!2528 Token!1286) (_2!2528 List!4027)) )
))
(declare-datatypes ((Option!908 0))(
  ( (None!907) (Some!907 (v!14900 tuple2!4624)) )
))
(declare-fun lt!129637 () Option!908)

(declare-fun get!1369 (Option!908) tuple2!4624)

(declare-fun head!952 (List!4029) Token!1286)

(assert (=> b!304650 (= e!189272 (= (_1!2528 (get!1369 lt!129637)) (head!952 tokens!465)))))

(declare-fun res!138300 () Bool)

(declare-fun e!189263 () Bool)

(assert (=> start!32766 (=> (not res!138300) (not e!189263))))

(assert (=> start!32766 (= res!138300 ((_ is Lexer!655) thiss!17480))))

(assert (=> start!32766 e!189263))

(assert (=> start!32766 true))

(assert (=> start!32766 e!189274))

(declare-fun separatorToken!170 () Token!1286)

(declare-fun e!189267 () Bool)

(declare-fun inv!4973 (Token!1286) Bool)

(assert (=> start!32766 (and (inv!4973 separatorToken!170) e!189267)))

(declare-fun e!189271 () Bool)

(assert (=> start!32766 e!189271))

(declare-fun b!304651 () Bool)

(declare-fun e!189277 () Bool)

(assert (=> b!304651 (= e!189277 true)))

(declare-fun lt!129644 () Bool)

(declare-fun isPrefix!431 (List!4027 List!4027) Bool)

(assert (=> b!304651 (= lt!129644 (isPrefix!431 lt!129646 lt!129634))))

(declare-fun lt!129651 () Option!908)

(declare-fun maxPrefix!373 (LexerInterface!657 List!4028 List!4027) Option!908)

(assert (=> b!304651 (= lt!129651 (maxPrefix!373 thiss!17480 rules!1920 lt!129634))))

(assert (=> b!304651 (isPrefix!431 lt!129646 lt!129639)))

(declare-datatypes ((Unit!5622 0))(
  ( (Unit!5623) )
))
(declare-fun lt!129653 () Unit!5622)

(declare-fun lt!129640 () List!4027)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!322 (List!4027 List!4027) Unit!5622)

(assert (=> b!304651 (= lt!129653 (lemmaConcatTwoListThenFirstIsPrefix!322 lt!129646 lt!129640))))

(declare-fun e!189279 () Bool)

(assert (=> b!304651 e!189279))

(declare-fun res!138309 () Bool)

(assert (=> b!304651 (=> res!138309 e!189279)))

(declare-fun isEmpty!2720 (List!4029) Bool)

(assert (=> b!304651 (= res!138309 (isEmpty!2720 tokens!465))))

(declare-fun lt!129648 () Unit!5622)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!178 (LexerInterface!657 List!4028 List!4029 Token!1286) Unit!5622)

(assert (=> b!304651 (= lt!129648 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!178 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!304652 () Bool)

(declare-fun res!138306 () Bool)

(assert (=> b!304652 (=> (not res!138306) (not e!189263))))

(declare-fun rulesInvariant!623 (LexerInterface!657 List!4028) Bool)

(assert (=> b!304652 (= res!138306 (rulesInvariant!623 thiss!17480 rules!1920))))

(declare-fun b!304653 () Bool)

(declare-fun e!189275 () Bool)

(assert (=> b!304653 (= e!189275 e!189277)))

(declare-fun res!138319 () Bool)

(assert (=> b!304653 (=> res!138319 e!189277)))

(assert (=> b!304653 (= res!138319 (not lt!129649))))

(declare-fun e!189268 () Bool)

(assert (=> b!304653 e!189268))

(declare-fun res!138315 () Bool)

(assert (=> b!304653 (=> (not res!138315) (not e!189268))))

(declare-fun lt!129636 () tuple2!4624)

(assert (=> b!304653 (= res!138315 (= (_1!2528 lt!129636) (h!9416 tokens!465)))))

(declare-fun lt!129654 () Option!908)

(assert (=> b!304653 (= lt!129636 (get!1369 lt!129654))))

(declare-fun isDefined!747 (Option!908) Bool)

(assert (=> b!304653 (isDefined!747 lt!129654)))

(assert (=> b!304653 (= lt!129654 (maxPrefix!373 thiss!17480 rules!1920 lt!129646))))

(declare-fun b!304654 () Bool)

(assert (=> b!304654 (= e!189279 e!189272)))

(declare-fun res!138298 () Bool)

(assert (=> b!304654 (=> (not res!138298) (not e!189272))))

(assert (=> b!304654 (= res!138298 (isDefined!747 lt!129637))))

(assert (=> b!304654 (= lt!129637 (maxPrefix!373 thiss!17480 rules!1920 lt!129634))))

(declare-fun e!189261 () Bool)

(assert (=> b!304655 (= e!189261 (and tp!108333 tp!108339))))

(declare-fun b!304656 () Bool)

(declare-fun res!138310 () Bool)

(assert (=> b!304656 (=> (not res!138310) (not e!189260))))

(assert (=> b!304656 (= res!138310 ((_ is Cons!4019) tokens!465))))

(declare-fun b!304657 () Bool)

(declare-fun tp!108331 () Bool)

(declare-fun e!189253 () Bool)

(declare-fun inv!21 (TokenValue!793) Bool)

(assert (=> b!304657 (= e!189267 (and (inv!21 (value!26289 separatorToken!170)) e!189253 tp!108331))))

(declare-fun b!304658 () Bool)

(declare-fun matchR!313 (Regex!995 List!4027) Bool)

(assert (=> b!304658 (= e!189268 (matchR!313 (regex!771 (rule!1384 (h!9416 tokens!465))) lt!129646))))

(assert (=> b!304659 (= e!189266 (and tp!108327 tp!108335))))

(declare-fun b!304660 () Bool)

(declare-fun res!138316 () Bool)

(assert (=> b!304660 (=> (not res!138316) (not e!189268))))

(declare-fun isEmpty!2721 (List!4027) Bool)

(assert (=> b!304660 (= res!138316 (isEmpty!2721 (_2!2528 lt!129636)))))

(declare-fun e!189255 () Bool)

(declare-fun b!304661 () Bool)

(declare-fun tp!108334 () Bool)

(assert (=> b!304661 (= e!189271 (and (inv!4973 (h!9416 tokens!465)) e!189255 tp!108334))))

(declare-fun b!304662 () Bool)

(declare-fun e!189258 () Bool)

(assert (=> b!304662 (= e!189260 e!189258)))

(declare-fun res!138311 () Bool)

(assert (=> b!304662 (=> (not res!138311) (not e!189258))))

(declare-fun lt!129647 () List!4027)

(assert (=> b!304662 (= res!138311 (= lt!129634 lt!129647))))

(declare-fun lt!129643 () BalanceConc!2738)

(declare-fun printWithSeparatorTokenWhenNeededRec!330 (LexerInterface!657 List!4028 BalanceConc!2738 Token!1286 Int) BalanceConc!2736)

(assert (=> b!304662 (= lt!129647 (list!1695 (printWithSeparatorTokenWhenNeededRec!330 thiss!17480 rules!1920 lt!129643 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!338 (LexerInterface!657 List!4028 List!4029 Token!1286) List!4027)

(assert (=> b!304662 (= lt!129634 (printWithSeparatorTokenWhenNeededList!338 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!189256 () Bool)

(assert (=> b!304663 (= e!189256 (and tp!108337 tp!108328))))

(declare-fun b!304664 () Bool)

(declare-fun res!138302 () Bool)

(assert (=> b!304664 (=> res!138302 e!189273)))

(declare-fun rulesProduceIndividualToken!406 (LexerInterface!657 List!4028 Token!1286) Bool)

(assert (=> b!304664 (= res!138302 (not (rulesProduceIndividualToken!406 thiss!17480 rules!1920 (h!9416 tokens!465))))))

(declare-fun b!304665 () Bool)

(declare-fun res!138313 () Bool)

(assert (=> b!304665 (=> (not res!138313) (not e!189260))))

(assert (=> b!304665 (= res!138313 (rulesProduceIndividualToken!406 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!304666 () Bool)

(declare-fun res!138299 () Bool)

(assert (=> b!304666 (=> (not res!138299) (not e!189263))))

(declare-fun isEmpty!2722 (List!4028) Bool)

(assert (=> b!304666 (= res!138299 (not (isEmpty!2722 rules!1920)))))

(declare-fun b!304667 () Bool)

(declare-fun res!138308 () Bool)

(assert (=> b!304667 (=> (not res!138308) (not e!189258))))

(assert (=> b!304667 (= res!138308 (= (list!1695 (seqFromList!907 lt!129634)) lt!129647))))

(assert (=> b!304668 (= e!189273 e!189275)))

(declare-fun res!138304 () Bool)

(assert (=> b!304668 (=> res!138304 e!189275)))

(declare-datatypes ((tuple2!4626 0))(
  ( (tuple2!4627 (_1!2529 Token!1286) (_2!2529 BalanceConc!2736)) )
))
(declare-datatypes ((Option!909 0))(
  ( (None!908) (Some!908 (v!14901 tuple2!4626)) )
))
(declare-fun isDefined!748 (Option!909) Bool)

(declare-fun maxPrefixZipperSequence!336 (LexerInterface!657 List!4028 BalanceConc!2736) Option!909)

(assert (=> b!304668 (= res!138304 (not (isDefined!748 (maxPrefixZipperSequence!336 thiss!17480 rules!1920 (seqFromList!907 (originalCharacters!814 (h!9416 tokens!465)))))))))

(declare-fun lt!129638 () Unit!5622)

(declare-fun forallContained!324 (List!4029 Int Token!1286) Unit!5622)

(assert (=> b!304668 (= lt!129638 (forallContained!324 tokens!465 lambda!10364 (h!9416 tokens!465)))))

(assert (=> b!304668 (= lt!129646 (originalCharacters!814 (h!9416 tokens!465)))))

(declare-fun b!304669 () Bool)

(assert (=> b!304669 (= e!189263 e!189260)))

(declare-fun res!138303 () Bool)

(assert (=> b!304669 (=> (not res!138303) (not e!189260))))

(declare-fun rulesProduceEachTokenIndividually!449 (LexerInterface!657 List!4028 BalanceConc!2738) Bool)

(assert (=> b!304669 (= res!138303 (rulesProduceEachTokenIndividually!449 thiss!17480 rules!1920 lt!129643))))

(declare-fun seqFromList!908 (List!4029) BalanceConc!2738)

(assert (=> b!304669 (= lt!129643 (seqFromList!908 tokens!465))))

(declare-fun b!304670 () Bool)

(declare-fun res!138301 () Bool)

(assert (=> b!304670 (=> (not res!138301) (not e!189260))))

(assert (=> b!304670 (= res!138301 (isSeparator!771 (rule!1384 separatorToken!170)))))

(declare-fun b!304671 () Bool)

(declare-fun tp!108332 () Bool)

(assert (=> b!304671 (= e!189276 (and tp!108332 (inv!4969 (tag!989 (h!9415 rules!1920))) (inv!4972 (transformation!771 (h!9415 rules!1920))) e!189261))))

(declare-fun b!304672 () Bool)

(assert (=> b!304672 (= e!189258 (not e!189262))))

(declare-fun res!138297 () Bool)

(assert (=> b!304672 (=> res!138297 e!189262)))

(assert (=> b!304672 (= res!138297 (not (= lt!129642 (list!1695 (printWithSeparatorTokenWhenNeededRec!330 thiss!17480 rules!1920 (seqFromList!908 (t!43113 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!129652 () List!4027)

(assert (=> b!304672 (= lt!129652 lt!129639)))

(assert (=> b!304672 (= lt!129639 (++!1088 lt!129646 lt!129640))))

(declare-fun lt!129635 () List!4027)

(assert (=> b!304672 (= lt!129652 (++!1088 (++!1088 lt!129646 lt!129635) lt!129642))))

(declare-fun lt!129632 () Unit!5622)

(declare-fun lemmaConcatAssociativity!478 (List!4027 List!4027 List!4027) Unit!5622)

(assert (=> b!304672 (= lt!129632 (lemmaConcatAssociativity!478 lt!129646 lt!129635 lt!129642))))

(declare-fun charsOf!414 (Token!1286) BalanceConc!2736)

(assert (=> b!304672 (= lt!129646 (list!1695 (charsOf!414 (h!9416 tokens!465))))))

(assert (=> b!304672 (= lt!129640 (++!1088 lt!129635 lt!129642))))

(assert (=> b!304672 (= lt!129642 (printWithSeparatorTokenWhenNeededList!338 thiss!17480 rules!1920 (t!43113 tokens!465) separatorToken!170))))

(assert (=> b!304672 (= lt!129635 (list!1695 (charsOf!414 separatorToken!170)))))

(declare-fun b!304673 () Bool)

(declare-fun tp!108330 () Bool)

(assert (=> b!304673 (= e!189253 (and tp!108330 (inv!4969 (tag!989 (rule!1384 separatorToken!170))) (inv!4972 (transformation!771 (rule!1384 separatorToken!170))) e!189256))))

(declare-fun res!138305 () Bool)

(assert (=> b!304674 (=> (not res!138305) (not e!189260))))

(declare-fun forall!1058 (List!4029 Int) Bool)

(assert (=> b!304674 (= res!138305 (forall!1058 tokens!465 lambda!10363))))

(declare-fun tp!108336 () Bool)

(declare-fun b!304675 () Bool)

(assert (=> b!304675 (= e!189255 (and (inv!21 (value!26289 (h!9416 tokens!465))) e!189264 tp!108336))))

(assert (= (and start!32766 res!138300) b!304666))

(assert (= (and b!304666 res!138299) b!304652))

(assert (= (and b!304652 res!138306) b!304669))

(assert (= (and b!304669 res!138303) b!304665))

(assert (= (and b!304665 res!138313) b!304670))

(assert (= (and b!304670 res!138301) b!304674))

(assert (= (and b!304674 res!138305) b!304646))

(assert (= (and b!304646 res!138314) b!304656))

(assert (= (and b!304656 res!138310) b!304662))

(assert (= (and b!304662 res!138311) b!304667))

(assert (= (and b!304667 res!138308) b!304672))

(assert (= (and b!304672 (not res!138297)) b!304648))

(assert (= (and b!304648 res!138312) b!304643))

(assert (= (and b!304648 (not res!138307)) b!304645))

(assert (= (and b!304645 (not res!138317)) b!304664))

(assert (= (and b!304664 (not res!138302)) b!304649))

(assert (= (and b!304649 (not res!138318)) b!304668))

(assert (= (and b!304668 (not res!138304)) b!304653))

(assert (= (and b!304653 res!138315) b!304660))

(assert (= (and b!304660 res!138316) b!304658))

(assert (= (and b!304653 (not res!138319)) b!304651))

(assert (= (and b!304651 (not res!138309)) b!304654))

(assert (= (and b!304654 res!138298) b!304650))

(assert (= b!304671 b!304655))

(assert (= b!304644 b!304671))

(assert (= (and start!32766 ((_ is Cons!4018) rules!1920)) b!304644))

(assert (= b!304673 b!304663))

(assert (= b!304657 b!304673))

(assert (= start!32766 b!304657))

(assert (= b!304647 b!304659))

(assert (= b!304675 b!304647))

(assert (= b!304661 b!304675))

(assert (= (and start!32766 ((_ is Cons!4019) tokens!465)) b!304661))

(declare-fun m!406505 () Bool)

(assert (=> b!304650 m!406505))

(declare-fun m!406507 () Bool)

(assert (=> b!304650 m!406507))

(declare-fun m!406509 () Bool)

(assert (=> b!304647 m!406509))

(declare-fun m!406511 () Bool)

(assert (=> b!304647 m!406511))

(declare-fun m!406513 () Bool)

(assert (=> b!304661 m!406513))

(declare-fun m!406515 () Bool)

(assert (=> b!304673 m!406515))

(declare-fun m!406517 () Bool)

(assert (=> b!304673 m!406517))

(declare-fun m!406519 () Bool)

(assert (=> b!304664 m!406519))

(declare-fun m!406521 () Bool)

(assert (=> b!304658 m!406521))

(declare-fun m!406523 () Bool)

(assert (=> b!304651 m!406523))

(declare-fun m!406525 () Bool)

(assert (=> b!304651 m!406525))

(declare-fun m!406527 () Bool)

(assert (=> b!304651 m!406527))

(declare-fun m!406529 () Bool)

(assert (=> b!304651 m!406529))

(declare-fun m!406531 () Bool)

(assert (=> b!304651 m!406531))

(declare-fun m!406533 () Bool)

(assert (=> b!304651 m!406533))

(declare-fun m!406535 () Bool)

(assert (=> b!304645 m!406535))

(declare-fun m!406537 () Bool)

(assert (=> b!304645 m!406537))

(declare-fun m!406539 () Bool)

(assert (=> b!304645 m!406539))

(declare-fun m!406541 () Bool)

(assert (=> b!304645 m!406541))

(declare-fun m!406543 () Bool)

(assert (=> b!304645 m!406543))

(declare-fun m!406545 () Bool)

(assert (=> b!304675 m!406545))

(declare-fun m!406547 () Bool)

(assert (=> b!304671 m!406547))

(declare-fun m!406549 () Bool)

(assert (=> b!304671 m!406549))

(declare-fun m!406551 () Bool)

(assert (=> b!304653 m!406551))

(declare-fun m!406553 () Bool)

(assert (=> b!304653 m!406553))

(declare-fun m!406555 () Bool)

(assert (=> b!304653 m!406555))

(declare-fun m!406557 () Bool)

(assert (=> b!304667 m!406557))

(assert (=> b!304667 m!406557))

(declare-fun m!406559 () Bool)

(assert (=> b!304667 m!406559))

(declare-fun m!406561 () Bool)

(assert (=> b!304646 m!406561))

(declare-fun m!406563 () Bool)

(assert (=> b!304649 m!406563))

(assert (=> b!304649 m!406563))

(declare-fun m!406565 () Bool)

(assert (=> b!304649 m!406565))

(declare-fun m!406567 () Bool)

(assert (=> b!304649 m!406567))

(declare-fun m!406569 () Bool)

(assert (=> b!304666 m!406569))

(declare-fun m!406571 () Bool)

(assert (=> b!304674 m!406571))

(declare-fun m!406573 () Bool)

(assert (=> start!32766 m!406573))

(declare-fun m!406575 () Bool)

(assert (=> b!304665 m!406575))

(declare-fun m!406577 () Bool)

(assert (=> b!304654 m!406577))

(assert (=> b!304654 m!406533))

(declare-fun m!406579 () Bool)

(assert (=> b!304669 m!406579))

(declare-fun m!406581 () Bool)

(assert (=> b!304669 m!406581))

(declare-fun m!406583 () Bool)

(assert (=> b!304657 m!406583))

(declare-fun m!406585 () Bool)

(assert (=> b!304652 m!406585))

(declare-fun m!406587 () Bool)

(assert (=> b!304662 m!406587))

(assert (=> b!304662 m!406587))

(declare-fun m!406589 () Bool)

(assert (=> b!304662 m!406589))

(declare-fun m!406591 () Bool)

(assert (=> b!304662 m!406591))

(declare-fun m!406593 () Bool)

(assert (=> b!304672 m!406593))

(declare-fun m!406595 () Bool)

(assert (=> b!304672 m!406595))

(declare-fun m!406597 () Bool)

(assert (=> b!304672 m!406597))

(declare-fun m!406599 () Bool)

(assert (=> b!304672 m!406599))

(declare-fun m!406601 () Bool)

(assert (=> b!304672 m!406601))

(declare-fun m!406603 () Bool)

(assert (=> b!304672 m!406603))

(assert (=> b!304672 m!406597))

(declare-fun m!406605 () Bool)

(assert (=> b!304672 m!406605))

(assert (=> b!304672 m!406605))

(declare-fun m!406607 () Bool)

(assert (=> b!304672 m!406607))

(assert (=> b!304672 m!406593))

(declare-fun m!406609 () Bool)

(assert (=> b!304672 m!406609))

(declare-fun m!406611 () Bool)

(assert (=> b!304672 m!406611))

(declare-fun m!406613 () Bool)

(assert (=> b!304672 m!406613))

(assert (=> b!304672 m!406613))

(declare-fun m!406615 () Bool)

(assert (=> b!304672 m!406615))

(assert (=> b!304672 m!406609))

(declare-fun m!406617 () Bool)

(assert (=> b!304672 m!406617))

(declare-fun m!406619 () Bool)

(assert (=> b!304660 m!406619))

(declare-fun m!406621 () Bool)

(assert (=> b!304643 m!406621))

(declare-fun m!406623 () Bool)

(assert (=> b!304668 m!406623))

(assert (=> b!304668 m!406623))

(declare-fun m!406625 () Bool)

(assert (=> b!304668 m!406625))

(assert (=> b!304668 m!406625))

(declare-fun m!406627 () Bool)

(assert (=> b!304668 m!406627))

(declare-fun m!406629 () Bool)

(assert (=> b!304668 m!406629))

(check-sat b_and!25727 (not b!304662) (not b_next!10875) (not b!304652) (not b!304650) (not b_next!10871) (not b!304665) (not b!304669) (not b!304673) (not b!304653) (not b!304647) (not b!304643) (not b_next!10869) (not b!304668) b_and!25717 (not b!304671) (not b!304661) (not b!304684) (not b!304674) (not start!32766) b_and!25723 (not b_next!10873) (not b_next!10865) (not b!304672) (not b!304660) (not b!304646) (not b!304664) (not b!304657) (not b!304649) (not b!304651) (not b!304654) (not b!304658) (not b!304645) (not b!304644) (not b!304675) b_and!25725 (not b!304666) b_and!25721 (not b!304667) b_and!25719 (not b_next!10867))
(check-sat b_and!25727 b_and!25717 (not b_next!10875) (not b_next!10871) b_and!25723 b_and!25725 b_and!25721 (not b_next!10869) (not b_next!10873) (not b_next!10865) b_and!25719 (not b_next!10867))
