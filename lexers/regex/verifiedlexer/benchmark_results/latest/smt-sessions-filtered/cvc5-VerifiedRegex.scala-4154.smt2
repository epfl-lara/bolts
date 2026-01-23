; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!223754 () Bool)

(assert start!223754)

(declare-fun b!2283030 () Bool)

(declare-fun b_free!68269 () Bool)

(declare-fun b_next!68973 () Bool)

(assert (=> b!2283030 (= b_free!68269 (not b_next!68973))))

(declare-fun tp!723559 () Bool)

(declare-fun b_and!180521 () Bool)

(assert (=> b!2283030 (= tp!723559 b_and!180521)))

(declare-fun b_free!68271 () Bool)

(declare-fun b_next!68975 () Bool)

(assert (=> b!2283030 (= b_free!68271 (not b_next!68975))))

(declare-fun tp!723564 () Bool)

(declare-fun b_and!180523 () Bool)

(assert (=> b!2283030 (= tp!723564 b_and!180523)))

(declare-fun b!2283034 () Bool)

(declare-fun b_free!68273 () Bool)

(declare-fun b_next!68977 () Bool)

(assert (=> b!2283034 (= b_free!68273 (not b_next!68977))))

(declare-fun tp!723561 () Bool)

(declare-fun b_and!180525 () Bool)

(assert (=> b!2283034 (= tp!723561 b_and!180525)))

(declare-fun b_free!68275 () Bool)

(declare-fun b_next!68979 () Bool)

(assert (=> b!2283034 (= b_free!68275 (not b_next!68979))))

(declare-fun tp!723572 () Bool)

(declare-fun b_and!180527 () Bool)

(assert (=> b!2283034 (= tp!723572 b_and!180527)))

(declare-fun b!2283011 () Bool)

(declare-fun b_free!68277 () Bool)

(declare-fun b_next!68981 () Bool)

(assert (=> b!2283011 (= b_free!68277 (not b_next!68981))))

(declare-fun tp!723556 () Bool)

(declare-fun b_and!180529 () Bool)

(assert (=> b!2283011 (= tp!723556 b_and!180529)))

(declare-fun b_free!68279 () Bool)

(declare-fun b_next!68983 () Bool)

(assert (=> b!2283011 (= b_free!68279 (not b_next!68983))))

(declare-fun tp!723560 () Bool)

(declare-fun b_and!180531 () Bool)

(assert (=> b!2283011 (= tp!723560 b_and!180531)))

(declare-fun b!2283036 () Bool)

(declare-fun b_free!68281 () Bool)

(declare-fun b_next!68985 () Bool)

(assert (=> b!2283036 (= b_free!68281 (not b_next!68985))))

(declare-fun tp!723571 () Bool)

(declare-fun b_and!180533 () Bool)

(assert (=> b!2283036 (= tp!723571 b_and!180533)))

(declare-fun b_free!68283 () Bool)

(declare-fun b_next!68987 () Bool)

(assert (=> b!2283036 (= b_free!68283 (not b_next!68987))))

(declare-fun tp!723562 () Bool)

(declare-fun b_and!180535 () Bool)

(assert (=> b!2283036 (= tp!723562 b_and!180535)))

(declare-fun e!1462478 () Bool)

(declare-fun tp!723563 () Bool)

(declare-fun e!1462487 () Bool)

(declare-fun b!2283003 () Bool)

(declare-datatypes ((List!27247 0))(
  ( (Nil!27153) (Cons!27153 (h!32554 (_ BitVec 16)) (t!203781 List!27247)) )
))
(declare-datatypes ((TokenValue!4500 0))(
  ( (FloatLiteralValue!9000 (text!31945 List!27247)) (TokenValueExt!4499 (__x!18060 Int)) (Broken!22500 (value!137428 List!27247)) (Object!4593) (End!4500) (Def!4500) (Underscore!4500) (Match!4500) (Else!4500) (Error!4500) (Case!4500) (If!4500) (Extends!4500) (Abstract!4500) (Class!4500) (Val!4500) (DelimiterValue!9000 (del!4560 List!27247)) (KeywordValue!4506 (value!137429 List!27247)) (CommentValue!9000 (value!137430 List!27247)) (WhitespaceValue!9000 (value!137431 List!27247)) (IndentationValue!4500 (value!137432 List!27247)) (String!29605) (Int32!4500) (Broken!22501 (value!137433 List!27247)) (Boolean!4501) (Unit!40072) (OperatorValue!4503 (op!4560 List!27247)) (IdentifierValue!9000 (value!137434 List!27247)) (IdentifierValue!9001 (value!137435 List!27247)) (WhitespaceValue!9001 (value!137436 List!27247)) (True!9000) (False!9000) (Broken!22502 (value!137437 List!27247)) (Broken!22503 (value!137438 List!27247)) (True!9001) (RightBrace!4500) (RightBracket!4500) (Colon!4500) (Null!4500) (Comma!4500) (LeftBracket!4500) (False!9001) (LeftBrace!4500) (ImaginaryLiteralValue!4500 (text!31946 List!27247)) (StringLiteralValue!13500 (value!137439 List!27247)) (EOFValue!4500 (value!137440 List!27247)) (IdentValue!4500 (value!137441 List!27247)) (DelimiterValue!9001 (value!137442 List!27247)) (DedentValue!4500 (value!137443 List!27247)) (NewLineValue!4500 (value!137444 List!27247)) (IntegerValue!13500 (value!137445 (_ BitVec 32)) (text!31947 List!27247)) (IntegerValue!13501 (value!137446 Int) (text!31948 List!27247)) (Times!4500) (Or!4500) (Equal!4500) (Minus!4500) (Broken!22504 (value!137447 List!27247)) (And!4500) (Div!4500) (LessEqual!4500) (Mod!4500) (Concat!11186) (Not!4500) (Plus!4500) (SpaceValue!4500 (value!137448 List!27247)) (IntegerValue!13502 (value!137449 Int) (text!31949 List!27247)) (StringLiteralValue!13501 (text!31950 List!27247)) (FloatLiteralValue!9001 (text!31951 List!27247)) (BytesLiteralValue!4500 (value!137450 List!27247)) (CommentValue!9001 (value!137451 List!27247)) (StringLiteralValue!13502 (value!137452 List!27247)) (ErrorTokenValue!4500 (msg!4561 List!27247)) )
))
(declare-datatypes ((C!13518 0))(
  ( (C!13519 (val!7807 Int)) )
))
(declare-datatypes ((List!27248 0))(
  ( (Nil!27154) (Cons!27154 (h!32555 C!13518) (t!203782 List!27248)) )
))
(declare-datatypes ((IArray!17653 0))(
  ( (IArray!17654 (innerList!8884 List!27248)) )
))
(declare-datatypes ((Conc!8824 0))(
  ( (Node!8824 (left!20594 Conc!8824) (right!20924 Conc!8824) (csize!17878 Int) (cheight!9035 Int)) (Leaf!12979 (xs!11766 IArray!17653) (csize!17879 Int)) (Empty!8824) )
))
(declare-datatypes ((BalanceConc!17376 0))(
  ( (BalanceConc!17377 (c!362274 Conc!8824)) )
))
(declare-datatypes ((Regex!6686 0))(
  ( (ElementMatch!6686 (c!362275 C!13518)) (Concat!11187 (regOne!13884 Regex!6686) (regTwo!13884 Regex!6686)) (EmptyExpr!6686) (Star!6686 (reg!7015 Regex!6686)) (EmptyLang!6686) (Union!6686 (regOne!13885 Regex!6686) (regTwo!13885 Regex!6686)) )
))
(declare-datatypes ((String!29606 0))(
  ( (String!29607 (value!137453 String)) )
))
(declare-datatypes ((TokenValueInjection!8540 0))(
  ( (TokenValueInjection!8541 (toValue!6124 Int) (toChars!5983 Int)) )
))
(declare-datatypes ((Rule!8476 0))(
  ( (Rule!8477 (regex!4338 Regex!6686) (tag!4828 String!29606) (isSeparator!4338 Bool) (transformation!4338 TokenValueInjection!8540)) )
))
(declare-datatypes ((List!27249 0))(
  ( (Nil!27155) (Cons!27155 (h!32556 Rule!8476) (t!203783 List!27249)) )
))
(declare-fun rules!1750 () List!27249)

(declare-fun inv!36744 (String!29606) Bool)

(declare-fun inv!36747 (TokenValueInjection!8540) Bool)

(assert (=> b!2283003 (= e!1462487 (and tp!723563 (inv!36744 (tag!4828 (h!32556 rules!1750))) (inv!36747 (transformation!4338 (h!32556 rules!1750))) e!1462478))))

(declare-fun b!2283004 () Bool)

(declare-fun e!1462488 () Bool)

(declare-fun e!1462481 () Bool)

(assert (=> b!2283004 (= e!1462488 e!1462481)))

(declare-fun res!975828 () Bool)

(assert (=> b!2283004 (=> res!975828 e!1462481)))

(declare-fun r!2363 () Rule!8476)

(declare-fun otherR!12 () Rule!8476)

(declare-fun getIndex!351 (List!27249 Rule!8476) Int)

(assert (=> b!2283004 (= res!975828 (<= (getIndex!351 rules!1750 r!2363) (getIndex!351 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3935 0))(
  ( (LexerInterfaceExt!3932 (__x!18061 Int)) (Lexer!3933) )
))
(declare-fun thiss!16613 () LexerInterface!3935)

(declare-fun ruleValid!1428 (LexerInterface!3935 Rule!8476) Bool)

(assert (=> b!2283004 (ruleValid!1428 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40073 0))(
  ( (Unit!40074) )
))
(declare-fun lt!847335 () Unit!40073)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!833 (LexerInterface!3935 Rule!8476 List!27249) Unit!40073)

(assert (=> b!2283004 (= lt!847335 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!833 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2283005 () Bool)

(declare-fun e!1462491 () Bool)

(declare-fun e!1462489 () Bool)

(assert (=> b!2283005 (= e!1462491 e!1462489)))

(declare-fun res!975835 () Bool)

(assert (=> b!2283005 (=> (not res!975835) (not e!1462489))))

(declare-datatypes ((Token!8154 0))(
  ( (Token!8155 (value!137454 TokenValue!4500) (rule!6666 Rule!8476) (size!21357 Int) (originalCharacters!5108 List!27248)) )
))
(declare-datatypes ((List!27250 0))(
  ( (Nil!27156) (Cons!27156 (h!32557 Token!8154) (t!203784 List!27250)) )
))
(declare-fun tokens!456 () List!27250)

(declare-datatypes ((IArray!17655 0))(
  ( (IArray!17656 (innerList!8885 List!27250)) )
))
(declare-datatypes ((Conc!8825 0))(
  ( (Node!8825 (left!20595 Conc!8825) (right!20925 Conc!8825) (csize!17880 Int) (cheight!9036 Int)) (Leaf!12980 (xs!11767 IArray!17655) (csize!17881 Int)) (Empty!8825) )
))
(declare-datatypes ((BalanceConc!17378 0))(
  ( (BalanceConc!17379 (c!362276 Conc!8825)) )
))
(declare-datatypes ((tuple2!26908 0))(
  ( (tuple2!26909 (_1!15964 BalanceConc!17378) (_2!15964 BalanceConc!17376)) )
))
(declare-fun lt!847331 () tuple2!26908)

(declare-fun suffix!886 () List!27248)

(declare-datatypes ((tuple2!26910 0))(
  ( (tuple2!26911 (_1!15965 List!27250) (_2!15965 List!27248)) )
))
(declare-fun list!10594 (BalanceConc!17378) List!27250)

(declare-fun list!10595 (BalanceConc!17376) List!27248)

(assert (=> b!2283005 (= res!975835 (= (tuple2!26911 (list!10594 (_1!15964 lt!847331)) (list!10595 (_2!15964 lt!847331))) (tuple2!26911 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27248)

(declare-fun lex!1774 (LexerInterface!3935 List!27249 BalanceConc!17376) tuple2!26908)

(declare-fun seqFromList!3042 (List!27248) BalanceConc!17376)

(assert (=> b!2283005 (= lt!847331 (lex!1774 thiss!16613 rules!1750 (seqFromList!3042 input!1722)))))

(declare-fun b!2283006 () Bool)

(declare-fun e!1462486 () Bool)

(declare-fun head!4951 (List!27250) Token!8154)

(assert (=> b!2283006 (= e!1462486 (= (rule!6666 (head!4951 tokens!456)) r!2363))))

(declare-fun b!2283007 () Bool)

(declare-fun res!975833 () Bool)

(declare-fun e!1462496 () Bool)

(assert (=> b!2283007 (=> (not res!975833) (not e!1462496))))

(declare-fun otherP!12 () List!27248)

(declare-fun isPrefix!2328 (List!27248 List!27248) Bool)

(assert (=> b!2283007 (= res!975833 (isPrefix!2328 otherP!12 input!1722))))

(declare-fun e!1462505 () Bool)

(declare-fun e!1462476 () Bool)

(declare-fun b!2283008 () Bool)

(declare-fun tp!723565 () Bool)

(assert (=> b!2283008 (= e!1462476 (and tp!723565 (inv!36744 (tag!4828 (rule!6666 (h!32557 tokens!456)))) (inv!36747 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) e!1462505))))

(declare-fun res!975820 () Bool)

(assert (=> start!223754 (=> (not res!975820) (not e!1462491))))

(assert (=> start!223754 (= res!975820 (is-Lexer!3933 thiss!16613))))

(assert (=> start!223754 e!1462491))

(assert (=> start!223754 true))

(declare-fun e!1462477 () Bool)

(assert (=> start!223754 e!1462477))

(declare-fun e!1462485 () Bool)

(assert (=> start!223754 e!1462485))

(declare-fun e!1462495 () Bool)

(assert (=> start!223754 e!1462495))

(declare-fun e!1462503 () Bool)

(assert (=> start!223754 e!1462503))

(declare-fun e!1462492 () Bool)

(assert (=> start!223754 e!1462492))

(declare-fun e!1462479 () Bool)

(assert (=> start!223754 e!1462479))

(declare-fun e!1462497 () Bool)

(assert (=> start!223754 e!1462497))

(declare-fun b!2283009 () Bool)

(declare-fun tp_is_empty!10593 () Bool)

(declare-fun tp!723566 () Bool)

(assert (=> b!2283009 (= e!1462503 (and tp_is_empty!10593 tp!723566))))

(declare-fun b!2283010 () Bool)

(declare-fun res!975816 () Bool)

(assert (=> b!2283010 (=> (not res!975816) (not e!1462496))))

(assert (=> b!2283010 (= res!975816 (not (= r!2363 otherR!12)))))

(declare-fun e!1462506 () Bool)

(assert (=> b!2283011 (= e!1462506 (and tp!723556 tp!723560))))

(declare-fun b!2283012 () Bool)

(declare-fun e!1462498 () Bool)

(declare-fun lt!847333 () List!27248)

(declare-fun matchR!2943 (Regex!6686 List!27248) Bool)

(assert (=> b!2283012 (= e!1462498 (matchR!2943 (regex!4338 r!2363) lt!847333))))

(declare-fun b!2283013 () Bool)

(declare-fun tp!723557 () Bool)

(declare-fun e!1462482 () Bool)

(declare-fun inv!21 (TokenValue!4500) Bool)

(assert (=> b!2283013 (= e!1462482 (and (inv!21 (value!137454 (h!32557 tokens!456))) e!1462476 tp!723557))))

(declare-fun b!2283014 () Bool)

(declare-fun e!1462494 () Bool)

(declare-fun charsOf!2726 (Token!8154) BalanceConc!17376)

(assert (=> b!2283014 (= e!1462494 (not (matchR!2943 (regex!4338 r!2363) (list!10595 (charsOf!2726 (head!4951 tokens!456))))))))

(declare-fun b!2283015 () Bool)

(declare-fun res!975830 () Bool)

(assert (=> b!2283015 (=> (not res!975830) (not e!1462491))))

(declare-fun rulesInvariant!3437 (LexerInterface!3935 List!27249) Bool)

(assert (=> b!2283015 (= res!975830 (rulesInvariant!3437 thiss!16613 rules!1750))))

(declare-fun b!2283016 () Bool)

(declare-fun res!975832 () Bool)

(assert (=> b!2283016 (=> (not res!975832) (not e!1462491))))

(declare-fun isEmpty!15427 (List!27249) Bool)

(assert (=> b!2283016 (= res!975832 (not (isEmpty!15427 rules!1750)))))

(declare-fun b!2283017 () Bool)

(declare-fun res!975824 () Bool)

(assert (=> b!2283017 (=> res!975824 e!1462481)))

(assert (=> b!2283017 (= res!975824 (is-Nil!27156 tokens!456))))

(declare-fun b!2283018 () Bool)

(declare-fun tp!723558 () Bool)

(assert (=> b!2283018 (= e!1462477 (and tp_is_empty!10593 tp!723558))))

(declare-fun b!2283019 () Bool)

(declare-fun res!975823 () Bool)

(assert (=> b!2283019 (=> (not res!975823) (not e!1462491))))

(declare-fun contains!4712 (List!27249 Rule!8476) Bool)

(assert (=> b!2283019 (= res!975823 (contains!4712 rules!1750 otherR!12))))

(declare-fun b!2283020 () Bool)

(declare-fun e!1462504 () Bool)

(declare-fun e!1462500 () Bool)

(assert (=> b!2283020 (= e!1462504 e!1462500)))

(declare-fun res!975829 () Bool)

(assert (=> b!2283020 (=> res!975829 e!1462500)))

(assert (=> b!2283020 (= res!975829 (not (isPrefix!2328 lt!847333 input!1722)))))

(assert (=> b!2283020 (= lt!847333 otherP!12)))

(declare-fun lt!847329 () Unit!40073)

(declare-fun lemmaIsPrefixSameLengthThenSameList!394 (List!27248 List!27248 List!27248) Unit!40073)

(assert (=> b!2283020 (= lt!847329 (lemmaIsPrefixSameLengthThenSameList!394 lt!847333 otherP!12 input!1722))))

(declare-fun e!1462484 () Bool)

(declare-fun tp!723570 () Bool)

(declare-fun b!2283021 () Bool)

(assert (=> b!2283021 (= e!1462485 (and tp!723570 (inv!36744 (tag!4828 otherR!12)) (inv!36747 (transformation!4338 otherR!12)) e!1462484))))

(declare-fun b!2283022 () Bool)

(assert (=> b!2283022 (= e!1462500 e!1462498)))

(declare-fun res!975827 () Bool)

(assert (=> b!2283022 (=> res!975827 e!1462498)))

(declare-datatypes ((tuple2!26912 0))(
  ( (tuple2!26913 (_1!15966 Token!8154) (_2!15966 List!27248)) )
))
(declare-datatypes ((Option!5326 0))(
  ( (None!5325) (Some!5325 (v!30391 tuple2!26912)) )
))
(declare-fun lt!847336 () Option!5326)

(declare-fun lt!847340 () List!27248)

(declare-fun lt!847332 () BalanceConc!17376)

(declare-fun lt!847337 () Int)

(declare-fun apply!6612 (TokenValueInjection!8540 BalanceConc!17376) TokenValue!4500)

(assert (=> b!2283022 (= res!975827 (not (= lt!847336 (Some!5325 (tuple2!26913 (Token!8155 (apply!6612 (transformation!4338 r!2363) lt!847332) r!2363 lt!847337 lt!847333) lt!847340)))))))

(declare-fun lt!847341 () Unit!40073)

(declare-fun lemmaSemiInverse!1047 (TokenValueInjection!8540 BalanceConc!17376) Unit!40073)

(assert (=> b!2283022 (= lt!847341 (lemmaSemiInverse!1047 (transformation!4338 r!2363) lt!847332))))

(assert (=> b!2283022 (= lt!847332 (seqFromList!3042 lt!847333))))

(declare-fun b!2283023 () Bool)

(declare-fun res!975825 () Bool)

(assert (=> b!2283023 (=> (not res!975825) (not e!1462491))))

(assert (=> b!2283023 (= res!975825 (contains!4712 rules!1750 r!2363))))

(declare-fun b!2283024 () Bool)

(declare-fun tp!723569 () Bool)

(declare-fun inv!36748 (Token!8154) Bool)

(assert (=> b!2283024 (= e!1462497 (and (inv!36748 (h!32557 tokens!456)) e!1462482 tp!723569))))

(declare-fun b!2283025 () Bool)

(declare-fun res!975834 () Bool)

(assert (=> b!2283025 (=> res!975834 e!1462500)))

(declare-fun isEmpty!15428 (List!27248) Bool)

(assert (=> b!2283025 (= res!975834 (isEmpty!15428 lt!847333))))

(declare-fun b!2283026 () Bool)

(declare-fun tp!723573 () Bool)

(assert (=> b!2283026 (= e!1462495 (and tp_is_empty!10593 tp!723573))))

(declare-fun b!2283027 () Bool)

(assert (=> b!2283027 (= e!1462496 (not e!1462488))))

(declare-fun res!975821 () Bool)

(assert (=> b!2283027 (=> res!975821 e!1462488)))

(assert (=> b!2283027 (= res!975821 e!1462494)))

(declare-fun res!975831 () Bool)

(assert (=> b!2283027 (=> (not res!975831) (not e!1462494))))

(declare-fun lt!847338 () Bool)

(assert (=> b!2283027 (= res!975831 (not lt!847338))))

(assert (=> b!2283027 (ruleValid!1428 thiss!16613 r!2363)))

(declare-fun lt!847343 () Unit!40073)

(assert (=> b!2283027 (= lt!847343 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!833 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2283028 () Bool)

(declare-fun e!1462493 () Bool)

(assert (=> b!2283028 (= e!1462481 e!1462493)))

(declare-fun res!975819 () Bool)

(assert (=> b!2283028 (=> res!975819 e!1462493)))

(declare-fun lt!847334 () tuple2!26912)

(assert (=> b!2283028 (= res!975819 (not (= (h!32557 tokens!456) (_1!15966 lt!847334))))))

(declare-fun get!8187 (Option!5326) tuple2!26912)

(assert (=> b!2283028 (= lt!847334 (get!8187 lt!847336))))

(declare-fun maxPrefix!2199 (LexerInterface!3935 List!27249 List!27248) Option!5326)

(assert (=> b!2283028 (= lt!847336 (maxPrefix!2199 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2283029 () Bool)

(declare-fun res!975818 () Bool)

(assert (=> b!2283029 (=> (not res!975818) (not e!1462496))))

(assert (=> b!2283029 (= res!975818 e!1462486)))

(declare-fun res!975822 () Bool)

(assert (=> b!2283029 (=> res!975822 e!1462486)))

(assert (=> b!2283029 (= res!975822 lt!847338)))

(assert (=> b!2283030 (= e!1462478 (and tp!723559 tp!723564))))

(declare-fun b!2283031 () Bool)

(assert (=> b!2283031 (= e!1462489 e!1462496)))

(declare-fun res!975817 () Bool)

(assert (=> b!2283031 (=> (not res!975817) (not e!1462496))))

(declare-fun e!1462499 () Bool)

(assert (=> b!2283031 (= res!975817 e!1462499)))

(declare-fun res!975826 () Bool)

(assert (=> b!2283031 (=> res!975826 e!1462499)))

(assert (=> b!2283031 (= res!975826 lt!847338)))

(declare-fun isEmpty!15429 (List!27250) Bool)

(assert (=> b!2283031 (= lt!847338 (isEmpty!15429 tokens!456))))

(declare-fun b!2283032 () Bool)

(declare-fun tp!723567 () Bool)

(assert (=> b!2283032 (= e!1462479 (and tp!723567 (inv!36744 (tag!4828 r!2363)) (inv!36747 (transformation!4338 r!2363)) e!1462506))))

(declare-fun b!2283033 () Bool)

(declare-fun size!21358 (BalanceConc!17376) Int)

(declare-fun size!21359 (List!27248) Int)

(assert (=> b!2283033 (= e!1462499 (<= (size!21358 (charsOf!2726 (head!4951 tokens!456))) (size!21359 otherP!12)))))

(assert (=> b!2283034 (= e!1462484 (and tp!723561 tp!723572))))

(declare-fun b!2283035 () Bool)

(assert (=> b!2283035 (= e!1462493 e!1462504)))

(declare-fun res!975815 () Bool)

(assert (=> b!2283035 (=> res!975815 e!1462504)))

(declare-fun lt!847330 () Int)

(assert (=> b!2283035 (= res!975815 (not (= lt!847330 lt!847337)))))

(assert (=> b!2283035 (= lt!847337 (size!21359 lt!847333))))

(assert (=> b!2283035 (= lt!847330 (size!21359 otherP!12))))

(assert (=> b!2283035 (= (_2!15966 lt!847334) lt!847340)))

(declare-fun lt!847339 () Unit!40073)

(declare-fun lemmaSamePrefixThenSameSuffix!1029 (List!27248 List!27248 List!27248 List!27248 List!27248) Unit!40073)

(assert (=> b!2283035 (= lt!847339 (lemmaSamePrefixThenSameSuffix!1029 lt!847333 (_2!15966 lt!847334) lt!847333 lt!847340 input!1722))))

(declare-fun getSuffix!1119 (List!27248 List!27248) List!27248)

(assert (=> b!2283035 (= lt!847340 (getSuffix!1119 input!1722 lt!847333))))

(declare-fun ++!6634 (List!27248 List!27248) List!27248)

(assert (=> b!2283035 (isPrefix!2328 lt!847333 (++!6634 lt!847333 (_2!15966 lt!847334)))))

(declare-fun lt!847342 () Unit!40073)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1533 (List!27248 List!27248) Unit!40073)

(assert (=> b!2283035 (= lt!847342 (lemmaConcatTwoListThenFirstIsPrefix!1533 lt!847333 (_2!15966 lt!847334)))))

(assert (=> b!2283035 (= lt!847333 (list!10595 (charsOf!2726 (h!32557 tokens!456))))))

(assert (=> b!2283036 (= e!1462505 (and tp!723571 tp!723562))))

(declare-fun b!2283037 () Bool)

(declare-fun tp!723568 () Bool)

(assert (=> b!2283037 (= e!1462492 (and e!1462487 tp!723568))))

(assert (= (and start!223754 res!975820) b!2283016))

(assert (= (and b!2283016 res!975832) b!2283015))

(assert (= (and b!2283015 res!975830) b!2283023))

(assert (= (and b!2283023 res!975825) b!2283019))

(assert (= (and b!2283019 res!975823) b!2283005))

(assert (= (and b!2283005 res!975835) b!2283031))

(assert (= (and b!2283031 (not res!975826)) b!2283033))

(assert (= (and b!2283031 res!975817) b!2283029))

(assert (= (and b!2283029 (not res!975822)) b!2283006))

(assert (= (and b!2283029 res!975818) b!2283007))

(assert (= (and b!2283007 res!975833) b!2283010))

(assert (= (and b!2283010 res!975816) b!2283027))

(assert (= (and b!2283027 res!975831) b!2283014))

(assert (= (and b!2283027 (not res!975821)) b!2283004))

(assert (= (and b!2283004 (not res!975828)) b!2283017))

(assert (= (and b!2283017 (not res!975824)) b!2283028))

(assert (= (and b!2283028 (not res!975819)) b!2283035))

(assert (= (and b!2283035 (not res!975815)) b!2283020))

(assert (= (and b!2283020 (not res!975829)) b!2283025))

(assert (= (and b!2283025 (not res!975834)) b!2283022))

(assert (= (and b!2283022 (not res!975827)) b!2283012))

(assert (= (and start!223754 (is-Cons!27154 input!1722)) b!2283018))

(assert (= b!2283021 b!2283034))

(assert (= start!223754 b!2283021))

(assert (= (and start!223754 (is-Cons!27154 suffix!886)) b!2283026))

(assert (= (and start!223754 (is-Cons!27154 otherP!12)) b!2283009))

(assert (= b!2283003 b!2283030))

(assert (= b!2283037 b!2283003))

(assert (= (and start!223754 (is-Cons!27155 rules!1750)) b!2283037))

(assert (= b!2283032 b!2283011))

(assert (= start!223754 b!2283032))

(assert (= b!2283008 b!2283036))

(assert (= b!2283013 b!2283008))

(assert (= b!2283024 b!2283013))

(assert (= (and start!223754 (is-Cons!27156 tokens!456)) b!2283024))

(declare-fun m!2711039 () Bool)

(assert (=> b!2283016 m!2711039))

(declare-fun m!2711041 () Bool)

(assert (=> b!2283005 m!2711041))

(declare-fun m!2711043 () Bool)

(assert (=> b!2283005 m!2711043))

(declare-fun m!2711045 () Bool)

(assert (=> b!2283005 m!2711045))

(assert (=> b!2283005 m!2711045))

(declare-fun m!2711047 () Bool)

(assert (=> b!2283005 m!2711047))

(declare-fun m!2711049 () Bool)

(assert (=> b!2283003 m!2711049))

(declare-fun m!2711051 () Bool)

(assert (=> b!2283003 m!2711051))

(declare-fun m!2711053 () Bool)

(assert (=> b!2283025 m!2711053))

(declare-fun m!2711055 () Bool)

(assert (=> b!2283008 m!2711055))

(declare-fun m!2711057 () Bool)

(assert (=> b!2283008 m!2711057))

(declare-fun m!2711059 () Bool)

(assert (=> b!2283024 m!2711059))

(declare-fun m!2711061 () Bool)

(assert (=> b!2283033 m!2711061))

(assert (=> b!2283033 m!2711061))

(declare-fun m!2711063 () Bool)

(assert (=> b!2283033 m!2711063))

(assert (=> b!2283033 m!2711063))

(declare-fun m!2711065 () Bool)

(assert (=> b!2283033 m!2711065))

(declare-fun m!2711067 () Bool)

(assert (=> b!2283033 m!2711067))

(declare-fun m!2711069 () Bool)

(assert (=> b!2283019 m!2711069))

(declare-fun m!2711071 () Bool)

(assert (=> b!2283015 m!2711071))

(declare-fun m!2711073 () Bool)

(assert (=> b!2283007 m!2711073))

(declare-fun m!2711075 () Bool)

(assert (=> b!2283035 m!2711075))

(declare-fun m!2711077 () Bool)

(assert (=> b!2283035 m!2711077))

(declare-fun m!2711079 () Bool)

(assert (=> b!2283035 m!2711079))

(assert (=> b!2283035 m!2711075))

(declare-fun m!2711081 () Bool)

(assert (=> b!2283035 m!2711081))

(declare-fun m!2711083 () Bool)

(assert (=> b!2283035 m!2711083))

(assert (=> b!2283035 m!2711081))

(assert (=> b!2283035 m!2711067))

(declare-fun m!2711085 () Bool)

(assert (=> b!2283035 m!2711085))

(declare-fun m!2711087 () Bool)

(assert (=> b!2283035 m!2711087))

(declare-fun m!2711089 () Bool)

(assert (=> b!2283035 m!2711089))

(declare-fun m!2711091 () Bool)

(assert (=> b!2283032 m!2711091))

(declare-fun m!2711093 () Bool)

(assert (=> b!2283032 m!2711093))

(declare-fun m!2711095 () Bool)

(assert (=> b!2283004 m!2711095))

(declare-fun m!2711097 () Bool)

(assert (=> b!2283004 m!2711097))

(declare-fun m!2711099 () Bool)

(assert (=> b!2283004 m!2711099))

(declare-fun m!2711101 () Bool)

(assert (=> b!2283004 m!2711101))

(declare-fun m!2711103 () Bool)

(assert (=> b!2283027 m!2711103))

(declare-fun m!2711105 () Bool)

(assert (=> b!2283027 m!2711105))

(declare-fun m!2711107 () Bool)

(assert (=> b!2283021 m!2711107))

(declare-fun m!2711109 () Bool)

(assert (=> b!2283021 m!2711109))

(declare-fun m!2711111 () Bool)

(assert (=> b!2283020 m!2711111))

(declare-fun m!2711113 () Bool)

(assert (=> b!2283020 m!2711113))

(declare-fun m!2711115 () Bool)

(assert (=> b!2283022 m!2711115))

(declare-fun m!2711117 () Bool)

(assert (=> b!2283022 m!2711117))

(declare-fun m!2711119 () Bool)

(assert (=> b!2283022 m!2711119))

(declare-fun m!2711121 () Bool)

(assert (=> b!2283031 m!2711121))

(assert (=> b!2283006 m!2711061))

(declare-fun m!2711123 () Bool)

(assert (=> b!2283023 m!2711123))

(declare-fun m!2711125 () Bool)

(assert (=> b!2283028 m!2711125))

(declare-fun m!2711127 () Bool)

(assert (=> b!2283028 m!2711127))

(declare-fun m!2711129 () Bool)

(assert (=> b!2283013 m!2711129))

(assert (=> b!2283014 m!2711061))

(assert (=> b!2283014 m!2711061))

(assert (=> b!2283014 m!2711063))

(assert (=> b!2283014 m!2711063))

(declare-fun m!2711131 () Bool)

(assert (=> b!2283014 m!2711131))

(assert (=> b!2283014 m!2711131))

(declare-fun m!2711133 () Bool)

(assert (=> b!2283014 m!2711133))

(declare-fun m!2711135 () Bool)

(assert (=> b!2283012 m!2711135))

(push 1)

(assert (not b!2283020))

(assert (not b!2283004))

(assert (not b!2283033))

(assert (not b_next!68985))

(assert (not b_next!68979))

(assert (not b!2283003))

(assert b_and!180535)

(assert (not b!2283018))

(assert b_and!180531)

(assert b_and!180521)

(assert (not b!2283005))

(assert (not b!2283023))

(assert (not b!2283027))

(assert (not b!2283015))

(assert (not b!2283009))

(assert (not b!2283021))

(assert (not b!2283028))

(assert (not b!2283031))

(assert (not b!2283025))

(assert (not b_next!68981))

(assert b_and!180525)

(assert (not b!2283019))

(assert (not b!2283006))

(assert (not b!2283013))

(assert (not b!2283012))

(assert (not b!2283008))

(assert (not b!2283022))

(assert (not b!2283016))

(assert (not b_next!68983))

(assert (not b!2283026))

(assert b_and!180527)

(assert b_and!180523)

(assert (not b_next!68973))

(assert (not b_next!68977))

(assert tp_is_empty!10593)

(assert (not b_next!68987))

(assert (not b!2283007))

(assert (not b!2283035))

(assert (not b!2283024))

(assert (not b!2283037))

(assert (not b!2283032))

(assert b_and!180529)

(assert (not b_next!68975))

(assert b_and!180533)

(assert (not b!2283014))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!68983))

(assert b_and!180527)

(assert (not b_next!68985))

(assert (not b_next!68979))

(assert b_and!180533)

(assert b_and!180535)

(assert b_and!180531)

(assert b_and!180521)

(assert (not b_next!68981))

(assert b_and!180525)

(assert b_and!180523)

(assert (not b_next!68973))

(assert (not b_next!68977))

(assert (not b_next!68987))

(assert b_and!180529)

(assert (not b_next!68975))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2283171 () Bool)

(declare-fun res!975926 () Bool)

(declare-fun e!1462620 () Bool)

(assert (=> b!2283171 (=> (not res!975926) (not e!1462620))))

(declare-fun call!136493 () Bool)

(assert (=> b!2283171 (= res!975926 (not call!136493))))

(declare-fun b!2283172 () Bool)

(declare-fun e!1462616 () Bool)

(declare-fun head!4953 (List!27248) C!13518)

(assert (=> b!2283172 (= e!1462616 (not (= (head!4953 (list!10595 (charsOf!2726 (head!4951 tokens!456)))) (c!362275 (regex!4338 r!2363)))))))

(declare-fun bm!136488 () Bool)

(assert (=> bm!136488 (= call!136493 (isEmpty!15428 (list!10595 (charsOf!2726 (head!4951 tokens!456)))))))

(declare-fun b!2283173 () Bool)

(declare-fun e!1462615 () Bool)

(assert (=> b!2283173 (= e!1462615 e!1462616)))

(declare-fun res!975929 () Bool)

(assert (=> b!2283173 (=> res!975929 e!1462616)))

(assert (=> b!2283173 (= res!975929 call!136493)))

(declare-fun b!2283174 () Bool)

(declare-fun e!1462619 () Bool)

(declare-fun e!1462617 () Bool)

(assert (=> b!2283174 (= e!1462619 e!1462617)))

(declare-fun c!362287 () Bool)

(assert (=> b!2283174 (= c!362287 (is-EmptyLang!6686 (regex!4338 r!2363)))))

(declare-fun b!2283175 () Bool)

(declare-fun res!975931 () Bool)

(assert (=> b!2283175 (=> res!975931 e!1462616)))

(declare-fun tail!3294 (List!27248) List!27248)

(assert (=> b!2283175 (= res!975931 (not (isEmpty!15428 (tail!3294 (list!10595 (charsOf!2726 (head!4951 tokens!456)))))))))

(declare-fun b!2283176 () Bool)

(declare-fun e!1462614 () Bool)

(declare-fun nullable!1851 (Regex!6686) Bool)

(assert (=> b!2283176 (= e!1462614 (nullable!1851 (regex!4338 r!2363)))))

(declare-fun b!2283177 () Bool)

(declare-fun e!1462618 () Bool)

(assert (=> b!2283177 (= e!1462618 e!1462615)))

(declare-fun res!975932 () Bool)

(assert (=> b!2283177 (=> (not res!975932) (not e!1462615))))

(declare-fun lt!847391 () Bool)

(assert (=> b!2283177 (= res!975932 (not lt!847391))))

(declare-fun b!2283178 () Bool)

(declare-fun res!975930 () Bool)

(assert (=> b!2283178 (=> (not res!975930) (not e!1462620))))

(assert (=> b!2283178 (= res!975930 (isEmpty!15428 (tail!3294 (list!10595 (charsOf!2726 (head!4951 tokens!456))))))))

(declare-fun b!2283179 () Bool)

(declare-fun derivativeStep!1511 (Regex!6686 C!13518) Regex!6686)

(assert (=> b!2283179 (= e!1462614 (matchR!2943 (derivativeStep!1511 (regex!4338 r!2363) (head!4953 (list!10595 (charsOf!2726 (head!4951 tokens!456))))) (tail!3294 (list!10595 (charsOf!2726 (head!4951 tokens!456))))))))

(declare-fun b!2283180 () Bool)

(declare-fun res!975928 () Bool)

(assert (=> b!2283180 (=> res!975928 e!1462618)))

(assert (=> b!2283180 (= res!975928 e!1462620)))

(declare-fun res!975933 () Bool)

(assert (=> b!2283180 (=> (not res!975933) (not e!1462620))))

(assert (=> b!2283180 (= res!975933 lt!847391)))

(declare-fun d!675707 () Bool)

(assert (=> d!675707 e!1462619))

(declare-fun c!362288 () Bool)

(assert (=> d!675707 (= c!362288 (is-EmptyExpr!6686 (regex!4338 r!2363)))))

(assert (=> d!675707 (= lt!847391 e!1462614)))

(declare-fun c!362289 () Bool)

(assert (=> d!675707 (= c!362289 (isEmpty!15428 (list!10595 (charsOf!2726 (head!4951 tokens!456)))))))

(declare-fun validRegex!2513 (Regex!6686) Bool)

(assert (=> d!675707 (validRegex!2513 (regex!4338 r!2363))))

(assert (=> d!675707 (= (matchR!2943 (regex!4338 r!2363) (list!10595 (charsOf!2726 (head!4951 tokens!456)))) lt!847391)))

(declare-fun b!2283181 () Bool)

(declare-fun res!975927 () Bool)

(assert (=> b!2283181 (=> res!975927 e!1462618)))

(assert (=> b!2283181 (= res!975927 (not (is-ElementMatch!6686 (regex!4338 r!2363))))))

(assert (=> b!2283181 (= e!1462617 e!1462618)))

(declare-fun b!2283182 () Bool)

(assert (=> b!2283182 (= e!1462620 (= (head!4953 (list!10595 (charsOf!2726 (head!4951 tokens!456)))) (c!362275 (regex!4338 r!2363))))))

(declare-fun b!2283183 () Bool)

(assert (=> b!2283183 (= e!1462619 (= lt!847391 call!136493))))

(declare-fun b!2283184 () Bool)

(assert (=> b!2283184 (= e!1462617 (not lt!847391))))

(assert (= (and d!675707 c!362289) b!2283176))

(assert (= (and d!675707 (not c!362289)) b!2283179))

(assert (= (and d!675707 c!362288) b!2283183))

(assert (= (and d!675707 (not c!362288)) b!2283174))

(assert (= (and b!2283174 c!362287) b!2283184))

(assert (= (and b!2283174 (not c!362287)) b!2283181))

(assert (= (and b!2283181 (not res!975927)) b!2283180))

(assert (= (and b!2283180 res!975933) b!2283171))

(assert (= (and b!2283171 res!975926) b!2283178))

(assert (= (and b!2283178 res!975930) b!2283182))

(assert (= (and b!2283180 (not res!975928)) b!2283177))

(assert (= (and b!2283177 res!975932) b!2283173))

(assert (= (and b!2283173 (not res!975929)) b!2283175))

(assert (= (and b!2283175 (not res!975931)) b!2283172))

(assert (= (or b!2283183 b!2283171 b!2283173) bm!136488))

(assert (=> b!2283178 m!2711131))

(declare-fun m!2711235 () Bool)

(assert (=> b!2283178 m!2711235))

(assert (=> b!2283178 m!2711235))

(declare-fun m!2711237 () Bool)

(assert (=> b!2283178 m!2711237))

(assert (=> b!2283175 m!2711131))

(assert (=> b!2283175 m!2711235))

(assert (=> b!2283175 m!2711235))

(assert (=> b!2283175 m!2711237))

(assert (=> b!2283179 m!2711131))

(declare-fun m!2711239 () Bool)

(assert (=> b!2283179 m!2711239))

(assert (=> b!2283179 m!2711239))

(declare-fun m!2711241 () Bool)

(assert (=> b!2283179 m!2711241))

(assert (=> b!2283179 m!2711131))

(assert (=> b!2283179 m!2711235))

(assert (=> b!2283179 m!2711241))

(assert (=> b!2283179 m!2711235))

(declare-fun m!2711243 () Bool)

(assert (=> b!2283179 m!2711243))

(assert (=> b!2283172 m!2711131))

(assert (=> b!2283172 m!2711239))

(assert (=> bm!136488 m!2711131))

(declare-fun m!2711245 () Bool)

(assert (=> bm!136488 m!2711245))

(assert (=> b!2283182 m!2711131))

(assert (=> b!2283182 m!2711239))

(assert (=> d!675707 m!2711131))

(assert (=> d!675707 m!2711245))

(declare-fun m!2711247 () Bool)

(assert (=> d!675707 m!2711247))

(declare-fun m!2711249 () Bool)

(assert (=> b!2283176 m!2711249))

(assert (=> b!2283014 d!675707))

(declare-fun d!675709 () Bool)

(declare-fun list!10598 (Conc!8824) List!27248)

(assert (=> d!675709 (= (list!10595 (charsOf!2726 (head!4951 tokens!456))) (list!10598 (c!362274 (charsOf!2726 (head!4951 tokens!456)))))))

(declare-fun bs!456720 () Bool)

(assert (= bs!456720 d!675709))

(declare-fun m!2711251 () Bool)

(assert (=> bs!456720 m!2711251))

(assert (=> b!2283014 d!675709))

(declare-fun d!675711 () Bool)

(declare-fun lt!847394 () BalanceConc!17376)

(assert (=> d!675711 (= (list!10595 lt!847394) (originalCharacters!5108 (head!4951 tokens!456)))))

(declare-fun dynLambda!11786 (Int TokenValue!4500) BalanceConc!17376)

(assert (=> d!675711 (= lt!847394 (dynLambda!11786 (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456)))) (value!137454 (head!4951 tokens!456))))))

(assert (=> d!675711 (= (charsOf!2726 (head!4951 tokens!456)) lt!847394)))

(declare-fun b_lambda!72681 () Bool)

(assert (=> (not b_lambda!72681) (not d!675711)))

(declare-fun t!203790 () Bool)

(declare-fun tb!135791 () Bool)

(assert (=> (and b!2283030 (= (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456))))) t!203790) tb!135791))

(declare-fun b!2283189 () Bool)

(declare-fun e!1462623 () Bool)

(declare-fun tp!723630 () Bool)

(declare-fun inv!36751 (Conc!8824) Bool)

(assert (=> b!2283189 (= e!1462623 (and (inv!36751 (c!362274 (dynLambda!11786 (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456)))) (value!137454 (head!4951 tokens!456))))) tp!723630))))

(declare-fun result!165562 () Bool)

(declare-fun inv!36752 (BalanceConc!17376) Bool)

(assert (=> tb!135791 (= result!165562 (and (inv!36752 (dynLambda!11786 (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456)))) (value!137454 (head!4951 tokens!456)))) e!1462623))))

(assert (= tb!135791 b!2283189))

(declare-fun m!2711253 () Bool)

(assert (=> b!2283189 m!2711253))

(declare-fun m!2711255 () Bool)

(assert (=> tb!135791 m!2711255))

(assert (=> d!675711 t!203790))

(declare-fun b_and!180553 () Bool)

(assert (= b_and!180523 (and (=> t!203790 result!165562) b_and!180553)))

(declare-fun tb!135793 () Bool)

(declare-fun t!203792 () Bool)

(assert (=> (and b!2283034 (= (toChars!5983 (transformation!4338 otherR!12)) (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456))))) t!203792) tb!135793))

(declare-fun result!165566 () Bool)

(assert (= result!165566 result!165562))

(assert (=> d!675711 t!203792))

(declare-fun b_and!180555 () Bool)

(assert (= b_and!180527 (and (=> t!203792 result!165566) b_and!180555)))

(declare-fun t!203794 () Bool)

(declare-fun tb!135795 () Bool)

(assert (=> (and b!2283011 (= (toChars!5983 (transformation!4338 r!2363)) (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456))))) t!203794) tb!135795))

(declare-fun result!165568 () Bool)

(assert (= result!165568 result!165562))

(assert (=> d!675711 t!203794))

(declare-fun b_and!180557 () Bool)

(assert (= b_and!180531 (and (=> t!203794 result!165568) b_and!180557)))

(declare-fun t!203796 () Bool)

(declare-fun tb!135797 () Bool)

(assert (=> (and b!2283036 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456))))) t!203796) tb!135797))

(declare-fun result!165570 () Bool)

(assert (= result!165570 result!165562))

(assert (=> d!675711 t!203796))

(declare-fun b_and!180559 () Bool)

(assert (= b_and!180535 (and (=> t!203796 result!165570) b_and!180559)))

(declare-fun m!2711257 () Bool)

(assert (=> d!675711 m!2711257))

(declare-fun m!2711259 () Bool)

(assert (=> d!675711 m!2711259))

(assert (=> b!2283014 d!675711))

(declare-fun d!675713 () Bool)

(assert (=> d!675713 (= (head!4951 tokens!456) (h!32557 tokens!456))))

(assert (=> b!2283014 d!675713))

(declare-fun d!675715 () Bool)

(declare-fun lt!847397 () List!27248)

(assert (=> d!675715 (= (++!6634 lt!847333 lt!847397) input!1722)))

(declare-fun e!1462626 () List!27248)

(assert (=> d!675715 (= lt!847397 e!1462626)))

(declare-fun c!362292 () Bool)

(assert (=> d!675715 (= c!362292 (is-Cons!27154 lt!847333))))

(assert (=> d!675715 (>= (size!21359 input!1722) (size!21359 lt!847333))))

(assert (=> d!675715 (= (getSuffix!1119 input!1722 lt!847333) lt!847397)))

(declare-fun b!2283194 () Bool)

(assert (=> b!2283194 (= e!1462626 (getSuffix!1119 (tail!3294 input!1722) (t!203782 lt!847333)))))

(declare-fun b!2283195 () Bool)

(assert (=> b!2283195 (= e!1462626 input!1722)))

(assert (= (and d!675715 c!362292) b!2283194))

(assert (= (and d!675715 (not c!362292)) b!2283195))

(declare-fun m!2711261 () Bool)

(assert (=> d!675715 m!2711261))

(declare-fun m!2711263 () Bool)

(assert (=> d!675715 m!2711263))

(assert (=> d!675715 m!2711087))

(declare-fun m!2711265 () Bool)

(assert (=> b!2283194 m!2711265))

(assert (=> b!2283194 m!2711265))

(declare-fun m!2711267 () Bool)

(assert (=> b!2283194 m!2711267))

(assert (=> b!2283035 d!675715))

(declare-fun d!675717 () Bool)

(declare-fun lt!847400 () Int)

(assert (=> d!675717 (>= lt!847400 0)))

(declare-fun e!1462629 () Int)

(assert (=> d!675717 (= lt!847400 e!1462629)))

(declare-fun c!362295 () Bool)

(assert (=> d!675717 (= c!362295 (is-Nil!27154 lt!847333))))

(assert (=> d!675717 (= (size!21359 lt!847333) lt!847400)))

(declare-fun b!2283200 () Bool)

(assert (=> b!2283200 (= e!1462629 0)))

(declare-fun b!2283201 () Bool)

(assert (=> b!2283201 (= e!1462629 (+ 1 (size!21359 (t!203782 lt!847333))))))

(assert (= (and d!675717 c!362295) b!2283200))

(assert (= (and d!675717 (not c!362295)) b!2283201))

(declare-fun m!2711269 () Bool)

(assert (=> b!2283201 m!2711269))

(assert (=> b!2283035 d!675717))

(declare-fun d!675719 () Bool)

(declare-fun lt!847401 () Int)

(assert (=> d!675719 (>= lt!847401 0)))

(declare-fun e!1462630 () Int)

(assert (=> d!675719 (= lt!847401 e!1462630)))

(declare-fun c!362296 () Bool)

(assert (=> d!675719 (= c!362296 (is-Nil!27154 otherP!12))))

(assert (=> d!675719 (= (size!21359 otherP!12) lt!847401)))

(declare-fun b!2283202 () Bool)

(assert (=> b!2283202 (= e!1462630 0)))

(declare-fun b!2283203 () Bool)

(assert (=> b!2283203 (= e!1462630 (+ 1 (size!21359 (t!203782 otherP!12))))))

(assert (= (and d!675719 c!362296) b!2283202))

(assert (= (and d!675719 (not c!362296)) b!2283203))

(declare-fun m!2711271 () Bool)

(assert (=> b!2283203 m!2711271))

(assert (=> b!2283035 d!675719))

(declare-fun d!675721 () Bool)

(declare-fun e!1462636 () Bool)

(assert (=> d!675721 e!1462636))

(declare-fun res!975938 () Bool)

(assert (=> d!675721 (=> (not res!975938) (not e!1462636))))

(declare-fun lt!847404 () List!27248)

(declare-fun content!3632 (List!27248) (Set C!13518))

(assert (=> d!675721 (= res!975938 (= (content!3632 lt!847404) (set.union (content!3632 lt!847333) (content!3632 (_2!15966 lt!847334)))))))

(declare-fun e!1462635 () List!27248)

(assert (=> d!675721 (= lt!847404 e!1462635)))

(declare-fun c!362299 () Bool)

(assert (=> d!675721 (= c!362299 (is-Nil!27154 lt!847333))))

(assert (=> d!675721 (= (++!6634 lt!847333 (_2!15966 lt!847334)) lt!847404)))

(declare-fun b!2283213 () Bool)

(assert (=> b!2283213 (= e!1462635 (Cons!27154 (h!32555 lt!847333) (++!6634 (t!203782 lt!847333) (_2!15966 lt!847334))))))

(declare-fun b!2283212 () Bool)

(assert (=> b!2283212 (= e!1462635 (_2!15966 lt!847334))))

(declare-fun b!2283214 () Bool)

(declare-fun res!975939 () Bool)

(assert (=> b!2283214 (=> (not res!975939) (not e!1462636))))

(assert (=> b!2283214 (= res!975939 (= (size!21359 lt!847404) (+ (size!21359 lt!847333) (size!21359 (_2!15966 lt!847334)))))))

(declare-fun b!2283215 () Bool)

(assert (=> b!2283215 (= e!1462636 (or (not (= (_2!15966 lt!847334) Nil!27154)) (= lt!847404 lt!847333)))))

(assert (= (and d!675721 c!362299) b!2283212))

(assert (= (and d!675721 (not c!362299)) b!2283213))

(assert (= (and d!675721 res!975938) b!2283214))

(assert (= (and b!2283214 res!975939) b!2283215))

(declare-fun m!2711273 () Bool)

(assert (=> d!675721 m!2711273))

(declare-fun m!2711275 () Bool)

(assert (=> d!675721 m!2711275))

(declare-fun m!2711277 () Bool)

(assert (=> d!675721 m!2711277))

(declare-fun m!2711279 () Bool)

(assert (=> b!2283213 m!2711279))

(declare-fun m!2711281 () Bool)

(assert (=> b!2283214 m!2711281))

(assert (=> b!2283214 m!2711087))

(declare-fun m!2711283 () Bool)

(assert (=> b!2283214 m!2711283))

(assert (=> b!2283035 d!675721))

(declare-fun d!675723 () Bool)

(assert (=> d!675723 (= (list!10595 (charsOf!2726 (h!32557 tokens!456))) (list!10598 (c!362274 (charsOf!2726 (h!32557 tokens!456)))))))

(declare-fun bs!456721 () Bool)

(assert (= bs!456721 d!675723))

(declare-fun m!2711285 () Bool)

(assert (=> bs!456721 m!2711285))

(assert (=> b!2283035 d!675723))

(declare-fun d!675725 () Bool)

(assert (=> d!675725 (= (_2!15966 lt!847334) lt!847340)))

(declare-fun lt!847407 () Unit!40073)

(declare-fun choose!13318 (List!27248 List!27248 List!27248 List!27248 List!27248) Unit!40073)

(assert (=> d!675725 (= lt!847407 (choose!13318 lt!847333 (_2!15966 lt!847334) lt!847333 lt!847340 input!1722))))

(assert (=> d!675725 (isPrefix!2328 lt!847333 input!1722)))

(assert (=> d!675725 (= (lemmaSamePrefixThenSameSuffix!1029 lt!847333 (_2!15966 lt!847334) lt!847333 lt!847340 input!1722) lt!847407)))

(declare-fun bs!456722 () Bool)

(assert (= bs!456722 d!675725))

(declare-fun m!2711287 () Bool)

(assert (=> bs!456722 m!2711287))

(assert (=> bs!456722 m!2711111))

(assert (=> b!2283035 d!675725))

(declare-fun b!2283225 () Bool)

(declare-fun res!975948 () Bool)

(declare-fun e!1462644 () Bool)

(assert (=> b!2283225 (=> (not res!975948) (not e!1462644))))

(assert (=> b!2283225 (= res!975948 (= (head!4953 lt!847333) (head!4953 (++!6634 lt!847333 (_2!15966 lt!847334)))))))

(declare-fun d!675727 () Bool)

(declare-fun e!1462643 () Bool)

(assert (=> d!675727 e!1462643))

(declare-fun res!975951 () Bool)

(assert (=> d!675727 (=> res!975951 e!1462643)))

(declare-fun lt!847410 () Bool)

(assert (=> d!675727 (= res!975951 (not lt!847410))))

(declare-fun e!1462645 () Bool)

(assert (=> d!675727 (= lt!847410 e!1462645)))

(declare-fun res!975950 () Bool)

(assert (=> d!675727 (=> res!975950 e!1462645)))

(assert (=> d!675727 (= res!975950 (is-Nil!27154 lt!847333))))

(assert (=> d!675727 (= (isPrefix!2328 lt!847333 (++!6634 lt!847333 (_2!15966 lt!847334))) lt!847410)))

(declare-fun b!2283224 () Bool)

(assert (=> b!2283224 (= e!1462645 e!1462644)))

(declare-fun res!975949 () Bool)

(assert (=> b!2283224 (=> (not res!975949) (not e!1462644))))

(assert (=> b!2283224 (= res!975949 (not (is-Nil!27154 (++!6634 lt!847333 (_2!15966 lt!847334)))))))

(declare-fun b!2283227 () Bool)

(assert (=> b!2283227 (= e!1462643 (>= (size!21359 (++!6634 lt!847333 (_2!15966 lt!847334))) (size!21359 lt!847333)))))

(declare-fun b!2283226 () Bool)

(assert (=> b!2283226 (= e!1462644 (isPrefix!2328 (tail!3294 lt!847333) (tail!3294 (++!6634 lt!847333 (_2!15966 lt!847334)))))))

(assert (= (and d!675727 (not res!975950)) b!2283224))

(assert (= (and b!2283224 res!975949) b!2283225))

(assert (= (and b!2283225 res!975948) b!2283226))

(assert (= (and d!675727 (not res!975951)) b!2283227))

(declare-fun m!2711289 () Bool)

(assert (=> b!2283225 m!2711289))

(assert (=> b!2283225 m!2711075))

(declare-fun m!2711291 () Bool)

(assert (=> b!2283225 m!2711291))

(assert (=> b!2283227 m!2711075))

(declare-fun m!2711293 () Bool)

(assert (=> b!2283227 m!2711293))

(assert (=> b!2283227 m!2711087))

(declare-fun m!2711295 () Bool)

(assert (=> b!2283226 m!2711295))

(assert (=> b!2283226 m!2711075))

(declare-fun m!2711297 () Bool)

(assert (=> b!2283226 m!2711297))

(assert (=> b!2283226 m!2711295))

(assert (=> b!2283226 m!2711297))

(declare-fun m!2711299 () Bool)

(assert (=> b!2283226 m!2711299))

(assert (=> b!2283035 d!675727))

(declare-fun d!675729 () Bool)

(declare-fun lt!847411 () BalanceConc!17376)

(assert (=> d!675729 (= (list!10595 lt!847411) (originalCharacters!5108 (h!32557 tokens!456)))))

(assert (=> d!675729 (= lt!847411 (dynLambda!11786 (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (value!137454 (h!32557 tokens!456))))))

(assert (=> d!675729 (= (charsOf!2726 (h!32557 tokens!456)) lt!847411)))

(declare-fun b_lambda!72683 () Bool)

(assert (=> (not b_lambda!72683) (not d!675729)))

(declare-fun t!203798 () Bool)

(declare-fun tb!135799 () Bool)

(assert (=> (and b!2283030 (= (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456))))) t!203798) tb!135799))

(declare-fun b!2283228 () Bool)

(declare-fun e!1462646 () Bool)

(declare-fun tp!723631 () Bool)

(assert (=> b!2283228 (= e!1462646 (and (inv!36751 (c!362274 (dynLambda!11786 (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (value!137454 (h!32557 tokens!456))))) tp!723631))))

(declare-fun result!165572 () Bool)

(assert (=> tb!135799 (= result!165572 (and (inv!36752 (dynLambda!11786 (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (value!137454 (h!32557 tokens!456)))) e!1462646))))

(assert (= tb!135799 b!2283228))

(declare-fun m!2711301 () Bool)

(assert (=> b!2283228 m!2711301))

(declare-fun m!2711303 () Bool)

(assert (=> tb!135799 m!2711303))

(assert (=> d!675729 t!203798))

(declare-fun b_and!180561 () Bool)

(assert (= b_and!180553 (and (=> t!203798 result!165572) b_and!180561)))

(declare-fun tb!135801 () Bool)

(declare-fun t!203800 () Bool)

(assert (=> (and b!2283034 (= (toChars!5983 (transformation!4338 otherR!12)) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456))))) t!203800) tb!135801))

(declare-fun result!165574 () Bool)

(assert (= result!165574 result!165572))

(assert (=> d!675729 t!203800))

(declare-fun b_and!180563 () Bool)

(assert (= b_and!180555 (and (=> t!203800 result!165574) b_and!180563)))

(declare-fun t!203802 () Bool)

(declare-fun tb!135803 () Bool)

(assert (=> (and b!2283011 (= (toChars!5983 (transformation!4338 r!2363)) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456))))) t!203802) tb!135803))

(declare-fun result!165576 () Bool)

(assert (= result!165576 result!165572))

(assert (=> d!675729 t!203802))

(declare-fun b_and!180565 () Bool)

(assert (= b_and!180557 (and (=> t!203802 result!165576) b_and!180565)))

(declare-fun t!203804 () Bool)

(declare-fun tb!135805 () Bool)

(assert (=> (and b!2283036 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456))))) t!203804) tb!135805))

(declare-fun result!165578 () Bool)

(assert (= result!165578 result!165572))

(assert (=> d!675729 t!203804))

(declare-fun b_and!180567 () Bool)

(assert (= b_and!180559 (and (=> t!203804 result!165578) b_and!180567)))

(declare-fun m!2711305 () Bool)

(assert (=> d!675729 m!2711305))

(declare-fun m!2711307 () Bool)

(assert (=> d!675729 m!2711307))

(assert (=> b!2283035 d!675729))

(declare-fun d!675733 () Bool)

(assert (=> d!675733 (isPrefix!2328 lt!847333 (++!6634 lt!847333 (_2!15966 lt!847334)))))

(declare-fun lt!847414 () Unit!40073)

(declare-fun choose!13319 (List!27248 List!27248) Unit!40073)

(assert (=> d!675733 (= lt!847414 (choose!13319 lt!847333 (_2!15966 lt!847334)))))

(assert (=> d!675733 (= (lemmaConcatTwoListThenFirstIsPrefix!1533 lt!847333 (_2!15966 lt!847334)) lt!847414)))

(declare-fun bs!456723 () Bool)

(assert (= bs!456723 d!675733))

(assert (=> bs!456723 m!2711075))

(assert (=> bs!456723 m!2711075))

(assert (=> bs!456723 m!2711077))

(declare-fun m!2711309 () Bool)

(assert (=> bs!456723 m!2711309))

(assert (=> b!2283035 d!675733))

(declare-fun d!675735 () Bool)

(declare-fun c!362304 () Bool)

(assert (=> d!675735 (= c!362304 (is-IntegerValue!13500 (value!137454 (h!32557 tokens!456))))))

(declare-fun e!1462657 () Bool)

(assert (=> d!675735 (= (inv!21 (value!137454 (h!32557 tokens!456))) e!1462657)))

(declare-fun b!2283243 () Bool)

(declare-fun inv!16 (TokenValue!4500) Bool)

(assert (=> b!2283243 (= e!1462657 (inv!16 (value!137454 (h!32557 tokens!456))))))

(declare-fun b!2283244 () Bool)

(declare-fun e!1462655 () Bool)

(assert (=> b!2283244 (= e!1462657 e!1462655)))

(declare-fun c!362305 () Bool)

(assert (=> b!2283244 (= c!362305 (is-IntegerValue!13501 (value!137454 (h!32557 tokens!456))))))

(declare-fun b!2283245 () Bool)

(declare-fun inv!17 (TokenValue!4500) Bool)

(assert (=> b!2283245 (= e!1462655 (inv!17 (value!137454 (h!32557 tokens!456))))))

(declare-fun b!2283246 () Bool)

(declare-fun e!1462656 () Bool)

(declare-fun inv!15 (TokenValue!4500) Bool)

(assert (=> b!2283246 (= e!1462656 (inv!15 (value!137454 (h!32557 tokens!456))))))

(declare-fun b!2283247 () Bool)

(declare-fun res!975958 () Bool)

(assert (=> b!2283247 (=> res!975958 e!1462656)))

(assert (=> b!2283247 (= res!975958 (not (is-IntegerValue!13502 (value!137454 (h!32557 tokens!456)))))))

(assert (=> b!2283247 (= e!1462655 e!1462656)))

(assert (= (and d!675735 c!362304) b!2283243))

(assert (= (and d!675735 (not c!362304)) b!2283244))

(assert (= (and b!2283244 c!362305) b!2283245))

(assert (= (and b!2283244 (not c!362305)) b!2283247))

(assert (= (and b!2283247 (not res!975958)) b!2283246))

(declare-fun m!2711311 () Bool)

(assert (=> b!2283243 m!2711311))

(declare-fun m!2711313 () Bool)

(assert (=> b!2283245 m!2711313))

(declare-fun m!2711315 () Bool)

(assert (=> b!2283246 m!2711315))

(assert (=> b!2283013 d!675735))

(declare-fun b!2283248 () Bool)

(declare-fun res!975959 () Bool)

(declare-fun e!1462664 () Bool)

(assert (=> b!2283248 (=> (not res!975959) (not e!1462664))))

(declare-fun call!136494 () Bool)

(assert (=> b!2283248 (= res!975959 (not call!136494))))

(declare-fun b!2283249 () Bool)

(declare-fun e!1462660 () Bool)

(assert (=> b!2283249 (= e!1462660 (not (= (head!4953 lt!847333) (c!362275 (regex!4338 r!2363)))))))

(declare-fun bm!136489 () Bool)

(assert (=> bm!136489 (= call!136494 (isEmpty!15428 lt!847333))))

(declare-fun b!2283250 () Bool)

(declare-fun e!1462659 () Bool)

(assert (=> b!2283250 (= e!1462659 e!1462660)))

(declare-fun res!975962 () Bool)

(assert (=> b!2283250 (=> res!975962 e!1462660)))

(assert (=> b!2283250 (= res!975962 call!136494)))

(declare-fun b!2283251 () Bool)

(declare-fun e!1462663 () Bool)

(declare-fun e!1462661 () Bool)

(assert (=> b!2283251 (= e!1462663 e!1462661)))

(declare-fun c!362306 () Bool)

(assert (=> b!2283251 (= c!362306 (is-EmptyLang!6686 (regex!4338 r!2363)))))

(declare-fun b!2283252 () Bool)

(declare-fun res!975964 () Bool)

(assert (=> b!2283252 (=> res!975964 e!1462660)))

(assert (=> b!2283252 (= res!975964 (not (isEmpty!15428 (tail!3294 lt!847333))))))

(declare-fun b!2283253 () Bool)

(declare-fun e!1462658 () Bool)

(assert (=> b!2283253 (= e!1462658 (nullable!1851 (regex!4338 r!2363)))))

(declare-fun b!2283254 () Bool)

(declare-fun e!1462662 () Bool)

(assert (=> b!2283254 (= e!1462662 e!1462659)))

(declare-fun res!975965 () Bool)

(assert (=> b!2283254 (=> (not res!975965) (not e!1462659))))

(declare-fun lt!847415 () Bool)

(assert (=> b!2283254 (= res!975965 (not lt!847415))))

(declare-fun b!2283255 () Bool)

(declare-fun res!975963 () Bool)

(assert (=> b!2283255 (=> (not res!975963) (not e!1462664))))

(assert (=> b!2283255 (= res!975963 (isEmpty!15428 (tail!3294 lt!847333)))))

(declare-fun b!2283256 () Bool)

(assert (=> b!2283256 (= e!1462658 (matchR!2943 (derivativeStep!1511 (regex!4338 r!2363) (head!4953 lt!847333)) (tail!3294 lt!847333)))))

(declare-fun b!2283257 () Bool)

(declare-fun res!975961 () Bool)

(assert (=> b!2283257 (=> res!975961 e!1462662)))

(assert (=> b!2283257 (= res!975961 e!1462664)))

(declare-fun res!975966 () Bool)

(assert (=> b!2283257 (=> (not res!975966) (not e!1462664))))

(assert (=> b!2283257 (= res!975966 lt!847415)))

(declare-fun d!675737 () Bool)

(assert (=> d!675737 e!1462663))

(declare-fun c!362307 () Bool)

(assert (=> d!675737 (= c!362307 (is-EmptyExpr!6686 (regex!4338 r!2363)))))

(assert (=> d!675737 (= lt!847415 e!1462658)))

(declare-fun c!362308 () Bool)

(assert (=> d!675737 (= c!362308 (isEmpty!15428 lt!847333))))

(assert (=> d!675737 (validRegex!2513 (regex!4338 r!2363))))

(assert (=> d!675737 (= (matchR!2943 (regex!4338 r!2363) lt!847333) lt!847415)))

(declare-fun b!2283258 () Bool)

(declare-fun res!975960 () Bool)

(assert (=> b!2283258 (=> res!975960 e!1462662)))

(assert (=> b!2283258 (= res!975960 (not (is-ElementMatch!6686 (regex!4338 r!2363))))))

(assert (=> b!2283258 (= e!1462661 e!1462662)))

(declare-fun b!2283259 () Bool)

(assert (=> b!2283259 (= e!1462664 (= (head!4953 lt!847333) (c!362275 (regex!4338 r!2363))))))

(declare-fun b!2283260 () Bool)

(assert (=> b!2283260 (= e!1462663 (= lt!847415 call!136494))))

(declare-fun b!2283261 () Bool)

(assert (=> b!2283261 (= e!1462661 (not lt!847415))))

(assert (= (and d!675737 c!362308) b!2283253))

(assert (= (and d!675737 (not c!362308)) b!2283256))

(assert (= (and d!675737 c!362307) b!2283260))

(assert (= (and d!675737 (not c!362307)) b!2283251))

(assert (= (and b!2283251 c!362306) b!2283261))

(assert (= (and b!2283251 (not c!362306)) b!2283258))

(assert (= (and b!2283258 (not res!975960)) b!2283257))

(assert (= (and b!2283257 res!975966) b!2283248))

(assert (= (and b!2283248 res!975959) b!2283255))

(assert (= (and b!2283255 res!975963) b!2283259))

(assert (= (and b!2283257 (not res!975961)) b!2283254))

(assert (= (and b!2283254 res!975965) b!2283250))

(assert (= (and b!2283250 (not res!975962)) b!2283252))

(assert (= (and b!2283252 (not res!975964)) b!2283249))

(assert (= (or b!2283260 b!2283248 b!2283250) bm!136489))

(assert (=> b!2283255 m!2711295))

(assert (=> b!2283255 m!2711295))

(declare-fun m!2711317 () Bool)

(assert (=> b!2283255 m!2711317))

(assert (=> b!2283252 m!2711295))

(assert (=> b!2283252 m!2711295))

(assert (=> b!2283252 m!2711317))

(assert (=> b!2283256 m!2711289))

(assert (=> b!2283256 m!2711289))

(declare-fun m!2711319 () Bool)

(assert (=> b!2283256 m!2711319))

(assert (=> b!2283256 m!2711295))

(assert (=> b!2283256 m!2711319))

(assert (=> b!2283256 m!2711295))

(declare-fun m!2711321 () Bool)

(assert (=> b!2283256 m!2711321))

(assert (=> b!2283249 m!2711289))

(assert (=> bm!136489 m!2711053))

(assert (=> b!2283259 m!2711289))

(assert (=> d!675737 m!2711053))

(assert (=> d!675737 m!2711247))

(assert (=> b!2283253 m!2711249))

(assert (=> b!2283012 d!675737))

(declare-fun d!675739 () Bool)

(declare-fun lt!847418 () Int)

(assert (=> d!675739 (= lt!847418 (size!21359 (list!10595 (charsOf!2726 (head!4951 tokens!456)))))))

(declare-fun size!21363 (Conc!8824) Int)

(assert (=> d!675739 (= lt!847418 (size!21363 (c!362274 (charsOf!2726 (head!4951 tokens!456)))))))

(assert (=> d!675739 (= (size!21358 (charsOf!2726 (head!4951 tokens!456))) lt!847418)))

(declare-fun bs!456724 () Bool)

(assert (= bs!456724 d!675739))

(assert (=> bs!456724 m!2711063))

(assert (=> bs!456724 m!2711131))

(assert (=> bs!456724 m!2711131))

(declare-fun m!2711323 () Bool)

(assert (=> bs!456724 m!2711323))

(declare-fun m!2711325 () Bool)

(assert (=> bs!456724 m!2711325))

(assert (=> b!2283033 d!675739))

(assert (=> b!2283033 d!675711))

(assert (=> b!2283033 d!675713))

(assert (=> b!2283033 d!675719))

(declare-fun d!675741 () Bool)

(assert (=> d!675741 (= (inv!36744 (tag!4828 r!2363)) (= (mod (str.len (value!137453 (tag!4828 r!2363))) 2) 0))))

(assert (=> b!2283032 d!675741))

(declare-fun d!675743 () Bool)

(declare-fun res!975971 () Bool)

(declare-fun e!1462671 () Bool)

(assert (=> d!675743 (=> (not res!975971) (not e!1462671))))

(declare-fun semiInverseModEq!1753 (Int Int) Bool)

(assert (=> d!675743 (= res!975971 (semiInverseModEq!1753 (toChars!5983 (transformation!4338 r!2363)) (toValue!6124 (transformation!4338 r!2363))))))

(assert (=> d!675743 (= (inv!36747 (transformation!4338 r!2363)) e!1462671)))

(declare-fun b!2283271 () Bool)

(declare-fun equivClasses!1672 (Int Int) Bool)

(assert (=> b!2283271 (= e!1462671 (equivClasses!1672 (toChars!5983 (transformation!4338 r!2363)) (toValue!6124 (transformation!4338 r!2363))))))

(assert (= (and d!675743 res!975971) b!2283271))

(declare-fun m!2711339 () Bool)

(assert (=> d!675743 m!2711339))

(declare-fun m!2711341 () Bool)

(assert (=> b!2283271 m!2711341))

(assert (=> b!2283032 d!675743))

(declare-fun d!675747 () Bool)

(assert (=> d!675747 (= (isEmpty!15429 tokens!456) (is-Nil!27156 tokens!456))))

(assert (=> b!2283031 d!675747))

(declare-fun b!2283273 () Bool)

(declare-fun res!975972 () Bool)

(declare-fun e!1462673 () Bool)

(assert (=> b!2283273 (=> (not res!975972) (not e!1462673))))

(assert (=> b!2283273 (= res!975972 (= (head!4953 lt!847333) (head!4953 input!1722)))))

(declare-fun d!675749 () Bool)

(declare-fun e!1462672 () Bool)

(assert (=> d!675749 e!1462672))

(declare-fun res!975975 () Bool)

(assert (=> d!675749 (=> res!975975 e!1462672)))

(declare-fun lt!847419 () Bool)

(assert (=> d!675749 (= res!975975 (not lt!847419))))

(declare-fun e!1462674 () Bool)

(assert (=> d!675749 (= lt!847419 e!1462674)))

(declare-fun res!975974 () Bool)

(assert (=> d!675749 (=> res!975974 e!1462674)))

(assert (=> d!675749 (= res!975974 (is-Nil!27154 lt!847333))))

(assert (=> d!675749 (= (isPrefix!2328 lt!847333 input!1722) lt!847419)))

(declare-fun b!2283272 () Bool)

(assert (=> b!2283272 (= e!1462674 e!1462673)))

(declare-fun res!975973 () Bool)

(assert (=> b!2283272 (=> (not res!975973) (not e!1462673))))

(assert (=> b!2283272 (= res!975973 (not (is-Nil!27154 input!1722)))))

(declare-fun b!2283275 () Bool)

(assert (=> b!2283275 (= e!1462672 (>= (size!21359 input!1722) (size!21359 lt!847333)))))

(declare-fun b!2283274 () Bool)

(assert (=> b!2283274 (= e!1462673 (isPrefix!2328 (tail!3294 lt!847333) (tail!3294 input!1722)))))

(assert (= (and d!675749 (not res!975974)) b!2283272))

(assert (= (and b!2283272 res!975973) b!2283273))

(assert (= (and b!2283273 res!975972) b!2283274))

(assert (= (and d!675749 (not res!975975)) b!2283275))

(assert (=> b!2283273 m!2711289))

(declare-fun m!2711343 () Bool)

(assert (=> b!2283273 m!2711343))

(assert (=> b!2283275 m!2711263))

(assert (=> b!2283275 m!2711087))

(assert (=> b!2283274 m!2711295))

(assert (=> b!2283274 m!2711265))

(assert (=> b!2283274 m!2711295))

(assert (=> b!2283274 m!2711265))

(declare-fun m!2711345 () Bool)

(assert (=> b!2283274 m!2711345))

(assert (=> b!2283020 d!675749))

(declare-fun d!675751 () Bool)

(assert (=> d!675751 (= lt!847333 otherP!12)))

(declare-fun lt!847422 () Unit!40073)

(declare-fun choose!13320 (List!27248 List!27248 List!27248) Unit!40073)

(assert (=> d!675751 (= lt!847422 (choose!13320 lt!847333 otherP!12 input!1722))))

(assert (=> d!675751 (isPrefix!2328 lt!847333 input!1722)))

(assert (=> d!675751 (= (lemmaIsPrefixSameLengthThenSameList!394 lt!847333 otherP!12 input!1722) lt!847422)))

(declare-fun bs!456725 () Bool)

(assert (= bs!456725 d!675751))

(declare-fun m!2711349 () Bool)

(assert (=> bs!456725 m!2711349))

(assert (=> bs!456725 m!2711111))

(assert (=> b!2283020 d!675751))

(declare-fun d!675753 () Bool)

(declare-fun lt!847425 () Bool)

(declare-fun content!3633 (List!27249) (Set Rule!8476))

(assert (=> d!675753 (= lt!847425 (set.member otherR!12 (content!3633 rules!1750)))))

(declare-fun e!1462683 () Bool)

(assert (=> d!675753 (= lt!847425 e!1462683)))

(declare-fun res!975980 () Bool)

(assert (=> d!675753 (=> (not res!975980) (not e!1462683))))

(assert (=> d!675753 (= res!975980 (is-Cons!27155 rules!1750))))

(assert (=> d!675753 (= (contains!4712 rules!1750 otherR!12) lt!847425)))

(declare-fun b!2283282 () Bool)

(declare-fun e!1462682 () Bool)

(assert (=> b!2283282 (= e!1462683 e!1462682)))

(declare-fun res!975981 () Bool)

(assert (=> b!2283282 (=> res!975981 e!1462682)))

(assert (=> b!2283282 (= res!975981 (= (h!32556 rules!1750) otherR!12))))

(declare-fun b!2283283 () Bool)

(assert (=> b!2283283 (= e!1462682 (contains!4712 (t!203783 rules!1750) otherR!12))))

(assert (= (and d!675753 res!975980) b!2283282))

(assert (= (and b!2283282 (not res!975981)) b!2283283))

(declare-fun m!2711353 () Bool)

(assert (=> d!675753 m!2711353))

(declare-fun m!2711355 () Bool)

(assert (=> d!675753 m!2711355))

(declare-fun m!2711357 () Bool)

(assert (=> b!2283283 m!2711357))

(assert (=> b!2283019 d!675753))

(declare-fun d!675757 () Bool)

(assert (=> d!675757 (= (isEmpty!15427 rules!1750) (is-Nil!27155 rules!1750))))

(assert (=> b!2283016 d!675757))

(declare-fun d!675759 () Bool)

(declare-fun res!975984 () Bool)

(declare-fun e!1462686 () Bool)

(assert (=> d!675759 (=> (not res!975984) (not e!1462686))))

(declare-fun rulesValid!1597 (LexerInterface!3935 List!27249) Bool)

(assert (=> d!675759 (= res!975984 (rulesValid!1597 thiss!16613 rules!1750))))

(assert (=> d!675759 (= (rulesInvariant!3437 thiss!16613 rules!1750) e!1462686)))

(declare-fun b!2283286 () Bool)

(declare-datatypes ((List!27255 0))(
  ( (Nil!27161) (Cons!27161 (h!32562 String!29606) (t!203861 List!27255)) )
))
(declare-fun noDuplicateTag!1595 (LexerInterface!3935 List!27249 List!27255) Bool)

(assert (=> b!2283286 (= e!1462686 (noDuplicateTag!1595 thiss!16613 rules!1750 Nil!27161))))

(assert (= (and d!675759 res!975984) b!2283286))

(declare-fun m!2711359 () Bool)

(assert (=> d!675759 m!2711359))

(declare-fun m!2711361 () Bool)

(assert (=> b!2283286 m!2711361))

(assert (=> b!2283015 d!675759))

(declare-fun b!2283297 () Bool)

(declare-fun e!1462692 () Int)

(assert (=> b!2283297 (= e!1462692 (+ 1 (getIndex!351 (t!203783 rules!1750) r!2363)))))

(declare-fun b!2283295 () Bool)

(declare-fun e!1462693 () Int)

(assert (=> b!2283295 (= e!1462693 0)))

(declare-fun b!2283298 () Bool)

(assert (=> b!2283298 (= e!1462692 (- 1))))

(declare-fun b!2283296 () Bool)

(assert (=> b!2283296 (= e!1462693 e!1462692)))

(declare-fun c!362315 () Bool)

(assert (=> b!2283296 (= c!362315 (and (is-Cons!27155 rules!1750) (not (= (h!32556 rules!1750) r!2363))))))

(declare-fun d!675761 () Bool)

(declare-fun lt!847430 () Int)

(assert (=> d!675761 (>= lt!847430 0)))

(assert (=> d!675761 (= lt!847430 e!1462693)))

(declare-fun c!362314 () Bool)

(assert (=> d!675761 (= c!362314 (and (is-Cons!27155 rules!1750) (= (h!32556 rules!1750) r!2363)))))

(assert (=> d!675761 (contains!4712 rules!1750 r!2363)))

(assert (=> d!675761 (= (getIndex!351 rules!1750 r!2363) lt!847430)))

(assert (= (and d!675761 c!362314) b!2283295))

(assert (= (and d!675761 (not c!362314)) b!2283296))

(assert (= (and b!2283296 c!362315) b!2283297))

(assert (= (and b!2283296 (not c!362315)) b!2283298))

(declare-fun m!2711363 () Bool)

(assert (=> b!2283297 m!2711363))

(assert (=> d!675761 m!2711123))

(assert (=> b!2283004 d!675761))

(declare-fun b!2283301 () Bool)

(declare-fun e!1462694 () Int)

(assert (=> b!2283301 (= e!1462694 (+ 1 (getIndex!351 (t!203783 rules!1750) otherR!12)))))

(declare-fun b!2283299 () Bool)

(declare-fun e!1462695 () Int)

(assert (=> b!2283299 (= e!1462695 0)))

(declare-fun b!2283302 () Bool)

(assert (=> b!2283302 (= e!1462694 (- 1))))

(declare-fun b!2283300 () Bool)

(assert (=> b!2283300 (= e!1462695 e!1462694)))

(declare-fun c!362317 () Bool)

(assert (=> b!2283300 (= c!362317 (and (is-Cons!27155 rules!1750) (not (= (h!32556 rules!1750) otherR!12))))))

(declare-fun d!675763 () Bool)

(declare-fun lt!847431 () Int)

(assert (=> d!675763 (>= lt!847431 0)))

(assert (=> d!675763 (= lt!847431 e!1462695)))

(declare-fun c!362316 () Bool)

(assert (=> d!675763 (= c!362316 (and (is-Cons!27155 rules!1750) (= (h!32556 rules!1750) otherR!12)))))

(assert (=> d!675763 (contains!4712 rules!1750 otherR!12)))

(assert (=> d!675763 (= (getIndex!351 rules!1750 otherR!12) lt!847431)))

(assert (= (and d!675763 c!362316) b!2283299))

(assert (= (and d!675763 (not c!362316)) b!2283300))

(assert (= (and b!2283300 c!362317) b!2283301))

(assert (= (and b!2283300 (not c!362317)) b!2283302))

(declare-fun m!2711365 () Bool)

(assert (=> b!2283301 m!2711365))

(assert (=> d!675763 m!2711069))

(assert (=> b!2283004 d!675763))

(declare-fun d!675765 () Bool)

(declare-fun res!975989 () Bool)

(declare-fun e!1462698 () Bool)

(assert (=> d!675765 (=> (not res!975989) (not e!1462698))))

(assert (=> d!675765 (= res!975989 (validRegex!2513 (regex!4338 otherR!12)))))

(assert (=> d!675765 (= (ruleValid!1428 thiss!16613 otherR!12) e!1462698)))

(declare-fun b!2283307 () Bool)

(declare-fun res!975990 () Bool)

(assert (=> b!2283307 (=> (not res!975990) (not e!1462698))))

(assert (=> b!2283307 (= res!975990 (not (nullable!1851 (regex!4338 otherR!12))))))

(declare-fun b!2283308 () Bool)

(assert (=> b!2283308 (= e!1462698 (not (= (tag!4828 otherR!12) (String!29607 ""))))))

(assert (= (and d!675765 res!975989) b!2283307))

(assert (= (and b!2283307 res!975990) b!2283308))

(declare-fun m!2711367 () Bool)

(assert (=> d!675765 m!2711367))

(declare-fun m!2711369 () Bool)

(assert (=> b!2283307 m!2711369))

(assert (=> b!2283004 d!675765))

(declare-fun d!675767 () Bool)

(assert (=> d!675767 (ruleValid!1428 thiss!16613 otherR!12)))

(declare-fun lt!847434 () Unit!40073)

(declare-fun choose!13321 (LexerInterface!3935 Rule!8476 List!27249) Unit!40073)

(assert (=> d!675767 (= lt!847434 (choose!13321 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!675767 (contains!4712 rules!1750 otherR!12)))

(assert (=> d!675767 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!833 thiss!16613 otherR!12 rules!1750) lt!847434)))

(declare-fun bs!456726 () Bool)

(assert (= bs!456726 d!675767))

(assert (=> bs!456726 m!2711099))

(declare-fun m!2711371 () Bool)

(assert (=> bs!456726 m!2711371))

(assert (=> bs!456726 m!2711069))

(assert (=> b!2283004 d!675767))

(declare-fun d!675769 () Bool)

(assert (=> d!675769 (= (isEmpty!15428 lt!847333) (is-Nil!27154 lt!847333))))

(assert (=> b!2283025 d!675769))

(declare-fun d!675771 () Bool)

(assert (=> d!675771 (= (inv!36744 (tag!4828 (h!32556 rules!1750))) (= (mod (str.len (value!137453 (tag!4828 (h!32556 rules!1750)))) 2) 0))))

(assert (=> b!2283003 d!675771))

(declare-fun d!675773 () Bool)

(declare-fun res!975991 () Bool)

(declare-fun e!1462699 () Bool)

(assert (=> d!675773 (=> (not res!975991) (not e!1462699))))

(assert (=> d!675773 (= res!975991 (semiInverseModEq!1753 (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toValue!6124 (transformation!4338 (h!32556 rules!1750)))))))

(assert (=> d!675773 (= (inv!36747 (transformation!4338 (h!32556 rules!1750))) e!1462699)))

(declare-fun b!2283309 () Bool)

(assert (=> b!2283309 (= e!1462699 (equivClasses!1672 (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toValue!6124 (transformation!4338 (h!32556 rules!1750)))))))

(assert (= (and d!675773 res!975991) b!2283309))

(declare-fun m!2711373 () Bool)

(assert (=> d!675773 m!2711373))

(declare-fun m!2711375 () Bool)

(assert (=> b!2283309 m!2711375))

(assert (=> b!2283003 d!675773))

(declare-fun d!675775 () Bool)

(declare-fun res!975996 () Bool)

(declare-fun e!1462702 () Bool)

(assert (=> d!675775 (=> (not res!975996) (not e!1462702))))

(assert (=> d!675775 (= res!975996 (not (isEmpty!15428 (originalCharacters!5108 (h!32557 tokens!456)))))))

(assert (=> d!675775 (= (inv!36748 (h!32557 tokens!456)) e!1462702)))

(declare-fun b!2283314 () Bool)

(declare-fun res!975997 () Bool)

(assert (=> b!2283314 (=> (not res!975997) (not e!1462702))))

(assert (=> b!2283314 (= res!975997 (= (originalCharacters!5108 (h!32557 tokens!456)) (list!10595 (dynLambda!11786 (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (value!137454 (h!32557 tokens!456))))))))

(declare-fun b!2283315 () Bool)

(assert (=> b!2283315 (= e!1462702 (= (size!21357 (h!32557 tokens!456)) (size!21359 (originalCharacters!5108 (h!32557 tokens!456)))))))

(assert (= (and d!675775 res!975996) b!2283314))

(assert (= (and b!2283314 res!975997) b!2283315))

(declare-fun b_lambda!72689 () Bool)

(assert (=> (not b_lambda!72689) (not b!2283314)))

(assert (=> b!2283314 t!203798))

(declare-fun b_and!180585 () Bool)

(assert (= b_and!180561 (and (=> t!203798 result!165572) b_and!180585)))

(assert (=> b!2283314 t!203800))

(declare-fun b_and!180587 () Bool)

(assert (= b_and!180563 (and (=> t!203800 result!165574) b_and!180587)))

(assert (=> b!2283314 t!203802))

(declare-fun b_and!180589 () Bool)

(assert (= b_and!180565 (and (=> t!203802 result!165576) b_and!180589)))

(assert (=> b!2283314 t!203804))

(declare-fun b_and!180591 () Bool)

(assert (= b_and!180567 (and (=> t!203804 result!165578) b_and!180591)))

(declare-fun m!2711377 () Bool)

(assert (=> d!675775 m!2711377))

(assert (=> b!2283314 m!2711307))

(assert (=> b!2283314 m!2711307))

(declare-fun m!2711379 () Bool)

(assert (=> b!2283314 m!2711379))

(declare-fun m!2711381 () Bool)

(assert (=> b!2283315 m!2711381))

(assert (=> b!2283024 d!675775))

(declare-fun d!675777 () Bool)

(declare-fun lt!847435 () Bool)

(assert (=> d!675777 (= lt!847435 (set.member r!2363 (content!3633 rules!1750)))))

(declare-fun e!1462704 () Bool)

(assert (=> d!675777 (= lt!847435 e!1462704)))

(declare-fun res!975998 () Bool)

(assert (=> d!675777 (=> (not res!975998) (not e!1462704))))

(assert (=> d!675777 (= res!975998 (is-Cons!27155 rules!1750))))

(assert (=> d!675777 (= (contains!4712 rules!1750 r!2363) lt!847435)))

(declare-fun b!2283316 () Bool)

(declare-fun e!1462703 () Bool)

(assert (=> b!2283316 (= e!1462704 e!1462703)))

(declare-fun res!975999 () Bool)

(assert (=> b!2283316 (=> res!975999 e!1462703)))

(assert (=> b!2283316 (= res!975999 (= (h!32556 rules!1750) r!2363))))

(declare-fun b!2283317 () Bool)

(assert (=> b!2283317 (= e!1462703 (contains!4712 (t!203783 rules!1750) r!2363))))

(assert (= (and d!675777 res!975998) b!2283316))

(assert (= (and b!2283316 (not res!975999)) b!2283317))

(assert (=> d!675777 m!2711353))

(declare-fun m!2711383 () Bool)

(assert (=> d!675777 m!2711383))

(declare-fun m!2711385 () Bool)

(assert (=> b!2283317 m!2711385))

(assert (=> b!2283023 d!675777))

(declare-fun d!675779 () Bool)

(declare-fun dynLambda!11787 (Int BalanceConc!17376) TokenValue!4500)

(assert (=> d!675779 (= (apply!6612 (transformation!4338 r!2363) lt!847332) (dynLambda!11787 (toValue!6124 (transformation!4338 r!2363)) lt!847332))))

(declare-fun b_lambda!72691 () Bool)

(assert (=> (not b_lambda!72691) (not d!675779)))

(declare-fun t!203822 () Bool)

(declare-fun tb!135823 () Bool)

(assert (=> (and b!2283030 (= (toValue!6124 (transformation!4338 (h!32556 rules!1750))) (toValue!6124 (transformation!4338 r!2363))) t!203822) tb!135823))

(declare-fun result!165600 () Bool)

(assert (=> tb!135823 (= result!165600 (inv!21 (dynLambda!11787 (toValue!6124 (transformation!4338 r!2363)) lt!847332)))))

(declare-fun m!2711387 () Bool)

(assert (=> tb!135823 m!2711387))

(assert (=> d!675779 t!203822))

(declare-fun b_and!180593 () Bool)

(assert (= b_and!180521 (and (=> t!203822 result!165600) b_and!180593)))

(declare-fun tb!135825 () Bool)

(declare-fun t!203824 () Bool)

(assert (=> (and b!2283034 (= (toValue!6124 (transformation!4338 otherR!12)) (toValue!6124 (transformation!4338 r!2363))) t!203824) tb!135825))

(declare-fun result!165604 () Bool)

(assert (= result!165604 result!165600))

(assert (=> d!675779 t!203824))

(declare-fun b_and!180595 () Bool)

(assert (= b_and!180525 (and (=> t!203824 result!165604) b_and!180595)))

(declare-fun t!203826 () Bool)

(declare-fun tb!135827 () Bool)

(assert (=> (and b!2283011 (= (toValue!6124 (transformation!4338 r!2363)) (toValue!6124 (transformation!4338 r!2363))) t!203826) tb!135827))

(declare-fun result!165606 () Bool)

(assert (= result!165606 result!165600))

(assert (=> d!675779 t!203826))

(declare-fun b_and!180597 () Bool)

(assert (= b_and!180529 (and (=> t!203826 result!165606) b_and!180597)))

(declare-fun tb!135829 () Bool)

(declare-fun t!203828 () Bool)

(assert (=> (and b!2283036 (= (toValue!6124 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toValue!6124 (transformation!4338 r!2363))) t!203828) tb!135829))

(declare-fun result!165608 () Bool)

(assert (= result!165608 result!165600))

(assert (=> d!675779 t!203828))

(declare-fun b_and!180599 () Bool)

(assert (= b_and!180533 (and (=> t!203828 result!165608) b_and!180599)))

(declare-fun m!2711389 () Bool)

(assert (=> d!675779 m!2711389))

(assert (=> b!2283022 d!675779))

(declare-fun b!2283324 () Bool)

(declare-fun e!1462710 () Bool)

(assert (=> b!2283324 (= e!1462710 true)))

(declare-fun d!675781 () Bool)

(assert (=> d!675781 e!1462710))

(assert (= d!675781 b!2283324))

(declare-fun lambda!85694 () Int)

(declare-fun order!15145 () Int)

(declare-fun order!15147 () Int)

(declare-fun dynLambda!11788 (Int Int) Int)

(declare-fun dynLambda!11789 (Int Int) Int)

(assert (=> b!2283324 (< (dynLambda!11788 order!15145 (toValue!6124 (transformation!4338 r!2363))) (dynLambda!11789 order!15147 lambda!85694))))

(declare-fun order!15149 () Int)

(declare-fun dynLambda!11790 (Int Int) Int)

(assert (=> b!2283324 (< (dynLambda!11790 order!15149 (toChars!5983 (transformation!4338 r!2363))) (dynLambda!11789 order!15147 lambda!85694))))

(assert (=> d!675781 (= (list!10595 (dynLambda!11786 (toChars!5983 (transformation!4338 r!2363)) (dynLambda!11787 (toValue!6124 (transformation!4338 r!2363)) lt!847332))) (list!10595 lt!847332))))

(declare-fun lt!847438 () Unit!40073)

(declare-fun ForallOf!488 (Int BalanceConc!17376) Unit!40073)

(assert (=> d!675781 (= lt!847438 (ForallOf!488 lambda!85694 lt!847332))))

(assert (=> d!675781 (= (lemmaSemiInverse!1047 (transformation!4338 r!2363) lt!847332) lt!847438)))

(declare-fun b_lambda!72693 () Bool)

(assert (=> (not b_lambda!72693) (not d!675781)))

(declare-fun t!203830 () Bool)

(declare-fun tb!135831 () Bool)

(assert (=> (and b!2283030 (= (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toChars!5983 (transformation!4338 r!2363))) t!203830) tb!135831))

(declare-fun e!1462711 () Bool)

(declare-fun b!2283325 () Bool)

(declare-fun tp!723635 () Bool)

(assert (=> b!2283325 (= e!1462711 (and (inv!36751 (c!362274 (dynLambda!11786 (toChars!5983 (transformation!4338 r!2363)) (dynLambda!11787 (toValue!6124 (transformation!4338 r!2363)) lt!847332)))) tp!723635))))

(declare-fun result!165610 () Bool)

(assert (=> tb!135831 (= result!165610 (and (inv!36752 (dynLambda!11786 (toChars!5983 (transformation!4338 r!2363)) (dynLambda!11787 (toValue!6124 (transformation!4338 r!2363)) lt!847332))) e!1462711))))

(assert (= tb!135831 b!2283325))

(declare-fun m!2711391 () Bool)

(assert (=> b!2283325 m!2711391))

(declare-fun m!2711393 () Bool)

(assert (=> tb!135831 m!2711393))

(assert (=> d!675781 t!203830))

(declare-fun b_and!180601 () Bool)

(assert (= b_and!180585 (and (=> t!203830 result!165610) b_and!180601)))

(declare-fun tb!135833 () Bool)

(declare-fun t!203832 () Bool)

(assert (=> (and b!2283034 (= (toChars!5983 (transformation!4338 otherR!12)) (toChars!5983 (transformation!4338 r!2363))) t!203832) tb!135833))

(declare-fun result!165612 () Bool)

(assert (= result!165612 result!165610))

(assert (=> d!675781 t!203832))

(declare-fun b_and!180603 () Bool)

(assert (= b_and!180587 (and (=> t!203832 result!165612) b_and!180603)))

(declare-fun t!203834 () Bool)

(declare-fun tb!135835 () Bool)

(assert (=> (and b!2283011 (= (toChars!5983 (transformation!4338 r!2363)) (toChars!5983 (transformation!4338 r!2363))) t!203834) tb!135835))

(declare-fun result!165614 () Bool)

(assert (= result!165614 result!165610))

(assert (=> d!675781 t!203834))

(declare-fun b_and!180605 () Bool)

(assert (= b_and!180589 (and (=> t!203834 result!165614) b_and!180605)))

(declare-fun tb!135837 () Bool)

(declare-fun t!203836 () Bool)

(assert (=> (and b!2283036 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toChars!5983 (transformation!4338 r!2363))) t!203836) tb!135837))

(declare-fun result!165616 () Bool)

(assert (= result!165616 result!165610))

(assert (=> d!675781 t!203836))

(declare-fun b_and!180607 () Bool)

(assert (= b_and!180591 (and (=> t!203836 result!165616) b_and!180607)))

(declare-fun b_lambda!72695 () Bool)

(assert (=> (not b_lambda!72695) (not d!675781)))

(assert (=> d!675781 t!203822))

(declare-fun b_and!180609 () Bool)

(assert (= b_and!180593 (and (=> t!203822 result!165600) b_and!180609)))

(assert (=> d!675781 t!203824))

(declare-fun b_and!180611 () Bool)

(assert (= b_and!180595 (and (=> t!203824 result!165604) b_and!180611)))

(assert (=> d!675781 t!203826))

(declare-fun b_and!180613 () Bool)

(assert (= b_and!180597 (and (=> t!203826 result!165606) b_and!180613)))

(assert (=> d!675781 t!203828))

(declare-fun b_and!180615 () Bool)

(assert (= b_and!180599 (and (=> t!203828 result!165608) b_and!180615)))

(declare-fun m!2711395 () Bool)

(assert (=> d!675781 m!2711395))

(declare-fun m!2711397 () Bool)

(assert (=> d!675781 m!2711397))

(assert (=> d!675781 m!2711389))

(assert (=> d!675781 m!2711389))

(declare-fun m!2711399 () Bool)

(assert (=> d!675781 m!2711399))

(assert (=> d!675781 m!2711399))

(declare-fun m!2711401 () Bool)

(assert (=> d!675781 m!2711401))

(assert (=> b!2283022 d!675781))

(declare-fun d!675783 () Bool)

(declare-fun fromListB!1363 (List!27248) BalanceConc!17376)

(assert (=> d!675783 (= (seqFromList!3042 lt!847333) (fromListB!1363 lt!847333))))

(declare-fun bs!456727 () Bool)

(assert (= bs!456727 d!675783))

(declare-fun m!2711403 () Bool)

(assert (=> bs!456727 m!2711403))

(assert (=> b!2283022 d!675783))

(declare-fun d!675785 () Bool)

(assert (=> d!675785 (= (inv!36744 (tag!4828 otherR!12)) (= (mod (str.len (value!137453 (tag!4828 otherR!12))) 2) 0))))

(assert (=> b!2283021 d!675785))

(declare-fun d!675787 () Bool)

(declare-fun res!976000 () Bool)

(declare-fun e!1462712 () Bool)

(assert (=> d!675787 (=> (not res!976000) (not e!1462712))))

(assert (=> d!675787 (= res!976000 (semiInverseModEq!1753 (toChars!5983 (transformation!4338 otherR!12)) (toValue!6124 (transformation!4338 otherR!12))))))

(assert (=> d!675787 (= (inv!36747 (transformation!4338 otherR!12)) e!1462712)))

(declare-fun b!2283326 () Bool)

(assert (=> b!2283326 (= e!1462712 (equivClasses!1672 (toChars!5983 (transformation!4338 otherR!12)) (toValue!6124 (transformation!4338 otherR!12))))))

(assert (= (and d!675787 res!976000) b!2283326))

(declare-fun m!2711405 () Bool)

(assert (=> d!675787 m!2711405))

(declare-fun m!2711407 () Bool)

(assert (=> b!2283326 m!2711407))

(assert (=> b!2283021 d!675787))

(declare-fun d!675789 () Bool)

(assert (=> d!675789 (= (inv!36744 (tag!4828 (rule!6666 (h!32557 tokens!456)))) (= (mod (str.len (value!137453 (tag!4828 (rule!6666 (h!32557 tokens!456))))) 2) 0))))

(assert (=> b!2283008 d!675789))

(declare-fun d!675791 () Bool)

(declare-fun res!976001 () Bool)

(declare-fun e!1462713 () Bool)

(assert (=> d!675791 (=> (not res!976001) (not e!1462713))))

(assert (=> d!675791 (= res!976001 (semiInverseModEq!1753 (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toValue!6124 (transformation!4338 (rule!6666 (h!32557 tokens!456))))))))

(assert (=> d!675791 (= (inv!36747 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) e!1462713)))

(declare-fun b!2283327 () Bool)

(assert (=> b!2283327 (= e!1462713 (equivClasses!1672 (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toValue!6124 (transformation!4338 (rule!6666 (h!32557 tokens!456))))))))

(assert (= (and d!675791 res!976001) b!2283327))

(declare-fun m!2711409 () Bool)

(assert (=> d!675791 m!2711409))

(declare-fun m!2711411 () Bool)

(assert (=> b!2283327 m!2711411))

(assert (=> b!2283008 d!675791))

(declare-fun b!2283329 () Bool)

(declare-fun res!976002 () Bool)

(declare-fun e!1462715 () Bool)

(assert (=> b!2283329 (=> (not res!976002) (not e!1462715))))

(assert (=> b!2283329 (= res!976002 (= (head!4953 otherP!12) (head!4953 input!1722)))))

(declare-fun d!675793 () Bool)

(declare-fun e!1462714 () Bool)

(assert (=> d!675793 e!1462714))

(declare-fun res!976005 () Bool)

(assert (=> d!675793 (=> res!976005 e!1462714)))

(declare-fun lt!847439 () Bool)

(assert (=> d!675793 (= res!976005 (not lt!847439))))

(declare-fun e!1462716 () Bool)

(assert (=> d!675793 (= lt!847439 e!1462716)))

(declare-fun res!976004 () Bool)

(assert (=> d!675793 (=> res!976004 e!1462716)))

(assert (=> d!675793 (= res!976004 (is-Nil!27154 otherP!12))))

(assert (=> d!675793 (= (isPrefix!2328 otherP!12 input!1722) lt!847439)))

(declare-fun b!2283328 () Bool)

(assert (=> b!2283328 (= e!1462716 e!1462715)))

(declare-fun res!976003 () Bool)

(assert (=> b!2283328 (=> (not res!976003) (not e!1462715))))

(assert (=> b!2283328 (= res!976003 (not (is-Nil!27154 input!1722)))))

(declare-fun b!2283331 () Bool)

(assert (=> b!2283331 (= e!1462714 (>= (size!21359 input!1722) (size!21359 otherP!12)))))

(declare-fun b!2283330 () Bool)

(assert (=> b!2283330 (= e!1462715 (isPrefix!2328 (tail!3294 otherP!12) (tail!3294 input!1722)))))

(assert (= (and d!675793 (not res!976004)) b!2283328))

(assert (= (and b!2283328 res!976003) b!2283329))

(assert (= (and b!2283329 res!976002) b!2283330))

(assert (= (and d!675793 (not res!976005)) b!2283331))

(declare-fun m!2711413 () Bool)

(assert (=> b!2283329 m!2711413))

(assert (=> b!2283329 m!2711343))

(assert (=> b!2283331 m!2711263))

(assert (=> b!2283331 m!2711067))

(declare-fun m!2711415 () Bool)

(assert (=> b!2283330 m!2711415))

(assert (=> b!2283330 m!2711265))

(assert (=> b!2283330 m!2711415))

(assert (=> b!2283330 m!2711265))

(declare-fun m!2711417 () Bool)

(assert (=> b!2283330 m!2711417))

(assert (=> b!2283007 d!675793))

(declare-fun d!675795 () Bool)

(assert (=> d!675795 (= (get!8187 lt!847336) (v!30391 lt!847336))))

(assert (=> b!2283028 d!675795))

(declare-fun b!2283350 () Bool)

(declare-fun res!976020 () Bool)

(declare-fun e!1462723 () Bool)

(assert (=> b!2283350 (=> (not res!976020) (not e!1462723))))

(declare-fun lt!847450 () Option!5326)

(assert (=> b!2283350 (= res!976020 (= (value!137454 (_1!15966 (get!8187 lt!847450))) (apply!6612 (transformation!4338 (rule!6666 (_1!15966 (get!8187 lt!847450)))) (seqFromList!3042 (originalCharacters!5108 (_1!15966 (get!8187 lt!847450)))))))))

(declare-fun b!2283351 () Bool)

(declare-fun res!976021 () Bool)

(assert (=> b!2283351 (=> (not res!976021) (not e!1462723))))

(assert (=> b!2283351 (= res!976021 (= (list!10595 (charsOf!2726 (_1!15966 (get!8187 lt!847450)))) (originalCharacters!5108 (_1!15966 (get!8187 lt!847450)))))))

(declare-fun d!675797 () Bool)

(declare-fun e!1462724 () Bool)

(assert (=> d!675797 e!1462724))

(declare-fun res!976023 () Bool)

(assert (=> d!675797 (=> res!976023 e!1462724)))

(declare-fun isEmpty!15433 (Option!5326) Bool)

(assert (=> d!675797 (= res!976023 (isEmpty!15433 lt!847450))))

(declare-fun e!1462725 () Option!5326)

(assert (=> d!675797 (= lt!847450 e!1462725)))

(declare-fun c!362321 () Bool)

(assert (=> d!675797 (= c!362321 (and (is-Cons!27155 rules!1750) (is-Nil!27155 (t!203783 rules!1750))))))

(declare-fun lt!847453 () Unit!40073)

(declare-fun lt!847452 () Unit!40073)

(assert (=> d!675797 (= lt!847453 lt!847452)))

(assert (=> d!675797 (isPrefix!2328 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1480 (List!27248 List!27248) Unit!40073)

(assert (=> d!675797 (= lt!847452 (lemmaIsPrefixRefl!1480 input!1722 input!1722))))

(declare-fun rulesValidInductive!1522 (LexerInterface!3935 List!27249) Bool)

(assert (=> d!675797 (rulesValidInductive!1522 thiss!16613 rules!1750)))

(assert (=> d!675797 (= (maxPrefix!2199 thiss!16613 rules!1750 input!1722) lt!847450)))

(declare-fun b!2283352 () Bool)

(declare-fun res!976022 () Bool)

(assert (=> b!2283352 (=> (not res!976022) (not e!1462723))))

(assert (=> b!2283352 (= res!976022 (matchR!2943 (regex!4338 (rule!6666 (_1!15966 (get!8187 lt!847450)))) (list!10595 (charsOf!2726 (_1!15966 (get!8187 lt!847450))))))))

(declare-fun b!2283353 () Bool)

(declare-fun res!976024 () Bool)

(assert (=> b!2283353 (=> (not res!976024) (not e!1462723))))

(assert (=> b!2283353 (= res!976024 (= (++!6634 (list!10595 (charsOf!2726 (_1!15966 (get!8187 lt!847450)))) (_2!15966 (get!8187 lt!847450))) input!1722))))

(declare-fun b!2283354 () Bool)

(declare-fun res!976025 () Bool)

(assert (=> b!2283354 (=> (not res!976025) (not e!1462723))))

(assert (=> b!2283354 (= res!976025 (< (size!21359 (_2!15966 (get!8187 lt!847450))) (size!21359 input!1722)))))

(declare-fun b!2283355 () Bool)

(assert (=> b!2283355 (= e!1462723 (contains!4712 rules!1750 (rule!6666 (_1!15966 (get!8187 lt!847450)))))))

(declare-fun b!2283356 () Bool)

(assert (=> b!2283356 (= e!1462724 e!1462723)))

(declare-fun res!976026 () Bool)

(assert (=> b!2283356 (=> (not res!976026) (not e!1462723))))

(declare-fun isDefined!4217 (Option!5326) Bool)

(assert (=> b!2283356 (= res!976026 (isDefined!4217 lt!847450))))

(declare-fun bm!136492 () Bool)

(declare-fun call!136497 () Option!5326)

(declare-fun maxPrefixOneRule!1375 (LexerInterface!3935 Rule!8476 List!27248) Option!5326)

(assert (=> bm!136492 (= call!136497 (maxPrefixOneRule!1375 thiss!16613 (h!32556 rules!1750) input!1722))))

(declare-fun b!2283357 () Bool)

(declare-fun lt!847454 () Option!5326)

(declare-fun lt!847451 () Option!5326)

(assert (=> b!2283357 (= e!1462725 (ite (and (is-None!5325 lt!847454) (is-None!5325 lt!847451)) None!5325 (ite (is-None!5325 lt!847451) lt!847454 (ite (is-None!5325 lt!847454) lt!847451 (ite (>= (size!21357 (_1!15966 (v!30391 lt!847454))) (size!21357 (_1!15966 (v!30391 lt!847451)))) lt!847454 lt!847451)))))))

(assert (=> b!2283357 (= lt!847454 call!136497)))

(assert (=> b!2283357 (= lt!847451 (maxPrefix!2199 thiss!16613 (t!203783 rules!1750) input!1722))))

(declare-fun b!2283358 () Bool)

(assert (=> b!2283358 (= e!1462725 call!136497)))

(assert (= (and d!675797 c!362321) b!2283358))

(assert (= (and d!675797 (not c!362321)) b!2283357))

(assert (= (or b!2283358 b!2283357) bm!136492))

(assert (= (and d!675797 (not res!976023)) b!2283356))

(assert (= (and b!2283356 res!976026) b!2283351))

(assert (= (and b!2283351 res!976021) b!2283354))

(assert (= (and b!2283354 res!976025) b!2283353))

(assert (= (and b!2283353 res!976024) b!2283350))

(assert (= (and b!2283350 res!976020) b!2283352))

(assert (= (and b!2283352 res!976022) b!2283355))

(declare-fun m!2711419 () Bool)

(assert (=> d!675797 m!2711419))

(declare-fun m!2711421 () Bool)

(assert (=> d!675797 m!2711421))

(declare-fun m!2711423 () Bool)

(assert (=> d!675797 m!2711423))

(declare-fun m!2711425 () Bool)

(assert (=> d!675797 m!2711425))

(declare-fun m!2711427 () Bool)

(assert (=> b!2283350 m!2711427))

(declare-fun m!2711429 () Bool)

(assert (=> b!2283350 m!2711429))

(assert (=> b!2283350 m!2711429))

(declare-fun m!2711431 () Bool)

(assert (=> b!2283350 m!2711431))

(assert (=> b!2283351 m!2711427))

(declare-fun m!2711433 () Bool)

(assert (=> b!2283351 m!2711433))

(assert (=> b!2283351 m!2711433))

(declare-fun m!2711435 () Bool)

(assert (=> b!2283351 m!2711435))

(assert (=> b!2283352 m!2711427))

(assert (=> b!2283352 m!2711433))

(assert (=> b!2283352 m!2711433))

(assert (=> b!2283352 m!2711435))

(assert (=> b!2283352 m!2711435))

(declare-fun m!2711437 () Bool)

(assert (=> b!2283352 m!2711437))

(assert (=> b!2283355 m!2711427))

(declare-fun m!2711439 () Bool)

(assert (=> b!2283355 m!2711439))

(assert (=> b!2283354 m!2711427))

(declare-fun m!2711441 () Bool)

(assert (=> b!2283354 m!2711441))

(assert (=> b!2283354 m!2711263))

(assert (=> b!2283353 m!2711427))

(assert (=> b!2283353 m!2711433))

(assert (=> b!2283353 m!2711433))

(assert (=> b!2283353 m!2711435))

(assert (=> b!2283353 m!2711435))

(declare-fun m!2711443 () Bool)

(assert (=> b!2283353 m!2711443))

(declare-fun m!2711445 () Bool)

(assert (=> bm!136492 m!2711445))

(declare-fun m!2711447 () Bool)

(assert (=> b!2283356 m!2711447))

(declare-fun m!2711449 () Bool)

(assert (=> b!2283357 m!2711449))

(assert (=> b!2283028 d!675797))

(assert (=> b!2283006 d!675713))

(declare-fun d!675799 () Bool)

(declare-fun res!976027 () Bool)

(declare-fun e!1462726 () Bool)

(assert (=> d!675799 (=> (not res!976027) (not e!1462726))))

(assert (=> d!675799 (= res!976027 (validRegex!2513 (regex!4338 r!2363)))))

(assert (=> d!675799 (= (ruleValid!1428 thiss!16613 r!2363) e!1462726)))

(declare-fun b!2283359 () Bool)

(declare-fun res!976028 () Bool)

(assert (=> b!2283359 (=> (not res!976028) (not e!1462726))))

(assert (=> b!2283359 (= res!976028 (not (nullable!1851 (regex!4338 r!2363))))))

(declare-fun b!2283360 () Bool)

(assert (=> b!2283360 (= e!1462726 (not (= (tag!4828 r!2363) (String!29607 ""))))))

(assert (= (and d!675799 res!976027) b!2283359))

(assert (= (and b!2283359 res!976028) b!2283360))

(assert (=> d!675799 m!2711247))

(assert (=> b!2283359 m!2711249))

(assert (=> b!2283027 d!675799))

(declare-fun d!675801 () Bool)

(assert (=> d!675801 (ruleValid!1428 thiss!16613 r!2363)))

(declare-fun lt!847455 () Unit!40073)

(assert (=> d!675801 (= lt!847455 (choose!13321 thiss!16613 r!2363 rules!1750))))

(assert (=> d!675801 (contains!4712 rules!1750 r!2363)))

(assert (=> d!675801 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!833 thiss!16613 r!2363 rules!1750) lt!847455)))

(declare-fun bs!456728 () Bool)

(assert (= bs!456728 d!675801))

(assert (=> bs!456728 m!2711103))

(declare-fun m!2711451 () Bool)

(assert (=> bs!456728 m!2711451))

(assert (=> bs!456728 m!2711123))

(assert (=> b!2283027 d!675801))

(declare-fun d!675803 () Bool)

(declare-fun list!10599 (Conc!8825) List!27250)

(assert (=> d!675803 (= (list!10594 (_1!15964 lt!847331)) (list!10599 (c!362276 (_1!15964 lt!847331))))))

(declare-fun bs!456729 () Bool)

(assert (= bs!456729 d!675803))

(declare-fun m!2711453 () Bool)

(assert (=> bs!456729 m!2711453))

(assert (=> b!2283005 d!675803))

(declare-fun d!675805 () Bool)

(assert (=> d!675805 (= (list!10595 (_2!15964 lt!847331)) (list!10598 (c!362274 (_2!15964 lt!847331))))))

(declare-fun bs!456730 () Bool)

(assert (= bs!456730 d!675805))

(declare-fun m!2711455 () Bool)

(assert (=> bs!456730 m!2711455))

(assert (=> b!2283005 d!675805))

(declare-fun b!2283399 () Bool)

(declare-fun e!1462751 () Bool)

(declare-fun e!1462750 () Bool)

(assert (=> b!2283399 (= e!1462751 e!1462750)))

(declare-fun res!976045 () Bool)

(declare-fun lt!847462 () tuple2!26908)

(assert (=> b!2283399 (= res!976045 (< (size!21358 (_2!15964 lt!847462)) (size!21358 (seqFromList!3042 input!1722))))))

(assert (=> b!2283399 (=> (not res!976045) (not e!1462750))))

(declare-fun e!1462749 () Bool)

(declare-fun b!2283400 () Bool)

(declare-fun lexList!1097 (LexerInterface!3935 List!27249 List!27248) tuple2!26910)

(assert (=> b!2283400 (= e!1462749 (= (list!10595 (_2!15964 lt!847462)) (_2!15965 (lexList!1097 thiss!16613 rules!1750 (list!10595 (seqFromList!3042 input!1722))))))))

(declare-fun b!2283401 () Bool)

(declare-fun isEmpty!15434 (BalanceConc!17378) Bool)

(assert (=> b!2283401 (= e!1462750 (not (isEmpty!15434 (_1!15964 lt!847462))))))

(declare-fun b!2283402 () Bool)

(assert (=> b!2283402 (= e!1462751 (= (_2!15964 lt!847462) (seqFromList!3042 input!1722)))))

(declare-fun d!675807 () Bool)

(assert (=> d!675807 e!1462749))

(declare-fun res!976046 () Bool)

(assert (=> d!675807 (=> (not res!976046) (not e!1462749))))

(assert (=> d!675807 (= res!976046 e!1462751)))

(declare-fun c!362330 () Bool)

(declare-fun size!21364 (BalanceConc!17378) Int)

(assert (=> d!675807 (= c!362330 (> (size!21364 (_1!15964 lt!847462)) 0))))

(declare-fun lexTailRecV2!772 (LexerInterface!3935 List!27249 BalanceConc!17376 BalanceConc!17376 BalanceConc!17376 BalanceConc!17378) tuple2!26908)

(assert (=> d!675807 (= lt!847462 (lexTailRecV2!772 thiss!16613 rules!1750 (seqFromList!3042 input!1722) (BalanceConc!17377 Empty!8824) (seqFromList!3042 input!1722) (BalanceConc!17379 Empty!8825)))))

(assert (=> d!675807 (= (lex!1774 thiss!16613 rules!1750 (seqFromList!3042 input!1722)) lt!847462)))

(declare-fun b!2283398 () Bool)

(declare-fun res!976044 () Bool)

(assert (=> b!2283398 (=> (not res!976044) (not e!1462749))))

(assert (=> b!2283398 (= res!976044 (= (list!10594 (_1!15964 lt!847462)) (_1!15965 (lexList!1097 thiss!16613 rules!1750 (list!10595 (seqFromList!3042 input!1722))))))))

(assert (= (and d!675807 c!362330) b!2283399))

(assert (= (and d!675807 (not c!362330)) b!2283402))

(assert (= (and b!2283399 res!976045) b!2283401))

(assert (= (and d!675807 res!976046) b!2283398))

(assert (= (and b!2283398 res!976044) b!2283400))

(declare-fun m!2711487 () Bool)

(assert (=> b!2283398 m!2711487))

(assert (=> b!2283398 m!2711045))

(declare-fun m!2711489 () Bool)

(assert (=> b!2283398 m!2711489))

(assert (=> b!2283398 m!2711489))

(declare-fun m!2711491 () Bool)

(assert (=> b!2283398 m!2711491))

(declare-fun m!2711493 () Bool)

(assert (=> b!2283399 m!2711493))

(assert (=> b!2283399 m!2711045))

(declare-fun m!2711495 () Bool)

(assert (=> b!2283399 m!2711495))

(declare-fun m!2711497 () Bool)

(assert (=> b!2283401 m!2711497))

(declare-fun m!2711499 () Bool)

(assert (=> b!2283400 m!2711499))

(assert (=> b!2283400 m!2711045))

(assert (=> b!2283400 m!2711489))

(assert (=> b!2283400 m!2711489))

(assert (=> b!2283400 m!2711491))

(declare-fun m!2711501 () Bool)

(assert (=> d!675807 m!2711501))

(assert (=> d!675807 m!2711045))

(assert (=> d!675807 m!2711045))

(declare-fun m!2711503 () Bool)

(assert (=> d!675807 m!2711503))

(assert (=> b!2283005 d!675807))

(declare-fun d!675823 () Bool)

(assert (=> d!675823 (= (seqFromList!3042 input!1722) (fromListB!1363 input!1722))))

(declare-fun bs!456735 () Bool)

(assert (= bs!456735 d!675823))

(declare-fun m!2711505 () Bool)

(assert (=> bs!456735 m!2711505))

(assert (=> b!2283005 d!675823))

(declare-fun b!2283415 () Bool)

(declare-fun e!1462754 () Bool)

(declare-fun tp!723650 () Bool)

(assert (=> b!2283415 (= e!1462754 tp!723650)))

(declare-fun b!2283413 () Bool)

(assert (=> b!2283413 (= e!1462754 tp_is_empty!10593)))

(declare-fun b!2283414 () Bool)

(declare-fun tp!723647 () Bool)

(declare-fun tp!723649 () Bool)

(assert (=> b!2283414 (= e!1462754 (and tp!723647 tp!723649))))

(declare-fun b!2283416 () Bool)

(declare-fun tp!723648 () Bool)

(declare-fun tp!723651 () Bool)

(assert (=> b!2283416 (= e!1462754 (and tp!723648 tp!723651))))

(assert (=> b!2283003 (= tp!723563 e!1462754)))

(assert (= (and b!2283003 (is-ElementMatch!6686 (regex!4338 (h!32556 rules!1750)))) b!2283413))

(assert (= (and b!2283003 (is-Concat!11187 (regex!4338 (h!32556 rules!1750)))) b!2283414))

(assert (= (and b!2283003 (is-Star!6686 (regex!4338 (h!32556 rules!1750)))) b!2283415))

(assert (= (and b!2283003 (is-Union!6686 (regex!4338 (h!32556 rules!1750)))) b!2283416))

(declare-fun b!2283430 () Bool)

(declare-fun b_free!68301 () Bool)

(declare-fun b_next!69005 () Bool)

(assert (=> b!2283430 (= b_free!68301 (not b_next!69005))))

(declare-fun tb!135847 () Bool)

(declare-fun t!203846 () Bool)

(assert (=> (and b!2283430 (= (toValue!6124 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toValue!6124 (transformation!4338 r!2363))) t!203846) tb!135847))

(declare-fun result!165630 () Bool)

(assert (= result!165630 result!165600))

(assert (=> d!675779 t!203846))

(assert (=> d!675781 t!203846))

(declare-fun b_and!180633 () Bool)

(declare-fun tp!723666 () Bool)

(assert (=> b!2283430 (= tp!723666 (and (=> t!203846 result!165630) b_and!180633))))

(declare-fun b_free!68303 () Bool)

(declare-fun b_next!69007 () Bool)

(assert (=> b!2283430 (= b_free!68303 (not b_next!69007))))

(declare-fun t!203848 () Bool)

(declare-fun tb!135849 () Bool)

(assert (=> (and b!2283430 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456))))) t!203848) tb!135849))

(declare-fun result!165632 () Bool)

(assert (= result!165632 result!165562))

(assert (=> d!675711 t!203848))

(declare-fun t!203850 () Bool)

(declare-fun tb!135851 () Bool)

(assert (=> (and b!2283430 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456))))) t!203850) tb!135851))

(declare-fun result!165634 () Bool)

(assert (= result!165634 result!165572))

(assert (=> d!675729 t!203850))

(assert (=> b!2283314 t!203850))

(declare-fun t!203852 () Bool)

(declare-fun tb!135853 () Bool)

(assert (=> (and b!2283430 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toChars!5983 (transformation!4338 r!2363))) t!203852) tb!135853))

(declare-fun result!165636 () Bool)

(assert (= result!165636 result!165610))

(assert (=> d!675781 t!203852))

(declare-fun b_and!180635 () Bool)

(declare-fun tp!723663 () Bool)

(assert (=> b!2283430 (= tp!723663 (and (=> t!203848 result!165632) (=> t!203850 result!165634) (=> t!203852 result!165636) b_and!180635))))

(declare-fun e!1462769 () Bool)

(assert (=> b!2283024 (= tp!723569 e!1462769)))

(declare-fun e!1462770 () Bool)

(declare-fun e!1462771 () Bool)

(declare-fun tp!723662 () Bool)

(declare-fun b!2283428 () Bool)

(assert (=> b!2283428 (= e!1462771 (and (inv!21 (value!137454 (h!32557 (t!203784 tokens!456)))) e!1462770 tp!723662))))

(declare-fun e!1462768 () Bool)

(declare-fun tp!723664 () Bool)

(declare-fun b!2283429 () Bool)

(assert (=> b!2283429 (= e!1462770 (and tp!723664 (inv!36744 (tag!4828 (rule!6666 (h!32557 (t!203784 tokens!456))))) (inv!36747 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) e!1462768))))

(assert (=> b!2283430 (= e!1462768 (and tp!723666 tp!723663))))

(declare-fun tp!723665 () Bool)

(declare-fun b!2283427 () Bool)

(assert (=> b!2283427 (= e!1462769 (and (inv!36748 (h!32557 (t!203784 tokens!456))) e!1462771 tp!723665))))

(assert (= b!2283429 b!2283430))

(assert (= b!2283428 b!2283429))

(assert (= b!2283427 b!2283428))

(assert (= (and b!2283024 (is-Cons!27156 (t!203784 tokens!456))) b!2283427))

(declare-fun m!2711507 () Bool)

(assert (=> b!2283428 m!2711507))

(declare-fun m!2711509 () Bool)

(assert (=> b!2283429 m!2711509))

(declare-fun m!2711511 () Bool)

(assert (=> b!2283429 m!2711511))

(declare-fun m!2711513 () Bool)

(assert (=> b!2283427 m!2711513))

(declare-fun b!2283435 () Bool)

(declare-fun e!1462775 () Bool)

(declare-fun tp!723669 () Bool)

(assert (=> b!2283435 (= e!1462775 (and tp_is_empty!10593 tp!723669))))

(assert (=> b!2283013 (= tp!723557 e!1462775)))

(assert (= (and b!2283013 (is-Cons!27154 (originalCharacters!5108 (h!32557 tokens!456)))) b!2283435))

(declare-fun b!2283438 () Bool)

(declare-fun e!1462776 () Bool)

(declare-fun tp!723673 () Bool)

(assert (=> b!2283438 (= e!1462776 tp!723673)))

(declare-fun b!2283436 () Bool)

(assert (=> b!2283436 (= e!1462776 tp_is_empty!10593)))

(declare-fun b!2283437 () Bool)

(declare-fun tp!723670 () Bool)

(declare-fun tp!723672 () Bool)

(assert (=> b!2283437 (= e!1462776 (and tp!723670 tp!723672))))

(declare-fun b!2283439 () Bool)

(declare-fun tp!723671 () Bool)

(declare-fun tp!723674 () Bool)

(assert (=> b!2283439 (= e!1462776 (and tp!723671 tp!723674))))

(assert (=> b!2283032 (= tp!723567 e!1462776)))

(assert (= (and b!2283032 (is-ElementMatch!6686 (regex!4338 r!2363))) b!2283436))

(assert (= (and b!2283032 (is-Concat!11187 (regex!4338 r!2363))) b!2283437))

(assert (= (and b!2283032 (is-Star!6686 (regex!4338 r!2363))) b!2283438))

(assert (= (and b!2283032 (is-Union!6686 (regex!4338 r!2363))) b!2283439))

(declare-fun b!2283442 () Bool)

(declare-fun e!1462777 () Bool)

(declare-fun tp!723678 () Bool)

(assert (=> b!2283442 (= e!1462777 tp!723678)))

(declare-fun b!2283440 () Bool)

(assert (=> b!2283440 (= e!1462777 tp_is_empty!10593)))

(declare-fun b!2283441 () Bool)

(declare-fun tp!723675 () Bool)

(declare-fun tp!723677 () Bool)

(assert (=> b!2283441 (= e!1462777 (and tp!723675 tp!723677))))

(declare-fun b!2283443 () Bool)

(declare-fun tp!723676 () Bool)

(declare-fun tp!723679 () Bool)

(assert (=> b!2283443 (= e!1462777 (and tp!723676 tp!723679))))

(assert (=> b!2283021 (= tp!723570 e!1462777)))

(assert (= (and b!2283021 (is-ElementMatch!6686 (regex!4338 otherR!12))) b!2283440))

(assert (= (and b!2283021 (is-Concat!11187 (regex!4338 otherR!12))) b!2283441))

(assert (= (and b!2283021 (is-Star!6686 (regex!4338 otherR!12))) b!2283442))

(assert (= (and b!2283021 (is-Union!6686 (regex!4338 otherR!12))) b!2283443))

(declare-fun b!2283444 () Bool)

(declare-fun e!1462778 () Bool)

(declare-fun tp!723680 () Bool)

(assert (=> b!2283444 (= e!1462778 (and tp_is_empty!10593 tp!723680))))

(assert (=> b!2283009 (= tp!723566 e!1462778)))

(assert (= (and b!2283009 (is-Cons!27154 (t!203782 otherP!12))) b!2283444))

(declare-fun b!2283447 () Bool)

(declare-fun e!1462779 () Bool)

(declare-fun tp!723684 () Bool)

(assert (=> b!2283447 (= e!1462779 tp!723684)))

(declare-fun b!2283445 () Bool)

(assert (=> b!2283445 (= e!1462779 tp_is_empty!10593)))

(declare-fun b!2283446 () Bool)

(declare-fun tp!723681 () Bool)

(declare-fun tp!723683 () Bool)

(assert (=> b!2283446 (= e!1462779 (and tp!723681 tp!723683))))

(declare-fun b!2283448 () Bool)

(declare-fun tp!723682 () Bool)

(declare-fun tp!723685 () Bool)

(assert (=> b!2283448 (= e!1462779 (and tp!723682 tp!723685))))

(assert (=> b!2283008 (= tp!723565 e!1462779)))

(assert (= (and b!2283008 (is-ElementMatch!6686 (regex!4338 (rule!6666 (h!32557 tokens!456))))) b!2283445))

(assert (= (and b!2283008 (is-Concat!11187 (regex!4338 (rule!6666 (h!32557 tokens!456))))) b!2283446))

(assert (= (and b!2283008 (is-Star!6686 (regex!4338 (rule!6666 (h!32557 tokens!456))))) b!2283447))

(assert (= (and b!2283008 (is-Union!6686 (regex!4338 (rule!6666 (h!32557 tokens!456))))) b!2283448))

(declare-fun b!2283449 () Bool)

(declare-fun e!1462780 () Bool)

(declare-fun tp!723686 () Bool)

(assert (=> b!2283449 (= e!1462780 (and tp_is_empty!10593 tp!723686))))

(assert (=> b!2283018 (= tp!723558 e!1462780)))

(assert (= (and b!2283018 (is-Cons!27154 (t!203782 input!1722))) b!2283449))

(declare-fun b!2283460 () Bool)

(declare-fun b_free!68305 () Bool)

(declare-fun b_next!69009 () Bool)

(assert (=> b!2283460 (= b_free!68305 (not b_next!69009))))

(declare-fun tb!135855 () Bool)

(declare-fun t!203854 () Bool)

(assert (=> (and b!2283460 (= (toValue!6124 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toValue!6124 (transformation!4338 r!2363))) t!203854) tb!135855))

(declare-fun result!165642 () Bool)

(assert (= result!165642 result!165600))

(assert (=> d!675779 t!203854))

(assert (=> d!675781 t!203854))

(declare-fun b_and!180637 () Bool)

(declare-fun tp!723698 () Bool)

(assert (=> b!2283460 (= tp!723698 (and (=> t!203854 result!165642) b_and!180637))))

(declare-fun b_free!68307 () Bool)

(declare-fun b_next!69011 () Bool)

(assert (=> b!2283460 (= b_free!68307 (not b_next!69011))))

(declare-fun t!203856 () Bool)

(declare-fun tb!135857 () Bool)

(assert (=> (and b!2283460 (= (toChars!5983 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toChars!5983 (transformation!4338 (rule!6666 (head!4951 tokens!456))))) t!203856) tb!135857))

(declare-fun result!165644 () Bool)

(assert (= result!165644 result!165562))

(assert (=> d!675711 t!203856))

(declare-fun t!203858 () Bool)

(declare-fun tb!135859 () Bool)

(assert (=> (and b!2283460 (= (toChars!5983 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456))))) t!203858) tb!135859))

(declare-fun result!165646 () Bool)

(assert (= result!165646 result!165572))

(assert (=> d!675729 t!203858))

(assert (=> b!2283314 t!203858))

(declare-fun t!203860 () Bool)

(declare-fun tb!135861 () Bool)

(assert (=> (and b!2283460 (= (toChars!5983 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toChars!5983 (transformation!4338 r!2363))) t!203860) tb!135861))

(declare-fun result!165648 () Bool)

(assert (= result!165648 result!165610))

(assert (=> d!675781 t!203860))

(declare-fun b_and!180639 () Bool)

(declare-fun tp!723697 () Bool)

(assert (=> b!2283460 (= tp!723697 (and (=> t!203856 result!165644) (=> t!203858 result!165646) (=> t!203860 result!165648) b_and!180639))))

(declare-fun e!1462789 () Bool)

(assert (=> b!2283460 (= e!1462789 (and tp!723698 tp!723697))))

(declare-fun b!2283459 () Bool)

(declare-fun e!1462792 () Bool)

(declare-fun tp!723695 () Bool)

(assert (=> b!2283459 (= e!1462792 (and tp!723695 (inv!36744 (tag!4828 (h!32556 (t!203783 rules!1750)))) (inv!36747 (transformation!4338 (h!32556 (t!203783 rules!1750)))) e!1462789))))

(declare-fun b!2283458 () Bool)

(declare-fun e!1462790 () Bool)

(declare-fun tp!723696 () Bool)

(assert (=> b!2283458 (= e!1462790 (and e!1462792 tp!723696))))

(assert (=> b!2283037 (= tp!723568 e!1462790)))

(assert (= b!2283459 b!2283460))

(assert (= b!2283458 b!2283459))

(assert (= (and b!2283037 (is-Cons!27155 (t!203783 rules!1750))) b!2283458))

(declare-fun m!2711515 () Bool)

(assert (=> b!2283459 m!2711515))

(declare-fun m!2711517 () Bool)

(assert (=> b!2283459 m!2711517))

(declare-fun b!2283461 () Bool)

(declare-fun e!1462793 () Bool)

(declare-fun tp!723699 () Bool)

(assert (=> b!2283461 (= e!1462793 (and tp_is_empty!10593 tp!723699))))

(assert (=> b!2283026 (= tp!723573 e!1462793)))

(assert (= (and b!2283026 (is-Cons!27154 (t!203782 suffix!886))) b!2283461))

(declare-fun b_lambda!72701 () Bool)

(assert (= b_lambda!72683 (or (and b!2283034 b_free!68275 (= (toChars!5983 (transformation!4338 otherR!12)) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283011 b_free!68279 (= (toChars!5983 (transformation!4338 r!2363)) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283460 b_free!68307 (= (toChars!5983 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283430 b_free!68303 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283030 b_free!68271 (= (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283036 b_free!68283) b_lambda!72701)))

(declare-fun b_lambda!72703 () Bool)

(assert (= b_lambda!72689 (or (and b!2283034 b_free!68275 (= (toChars!5983 (transformation!4338 otherR!12)) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283011 b_free!68279 (= (toChars!5983 (transformation!4338 r!2363)) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283460 b_free!68307 (= (toChars!5983 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283430 b_free!68303 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283030 b_free!68271 (= (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))))) (and b!2283036 b_free!68283) b_lambda!72703)))

(declare-fun b_lambda!72705 () Bool)

(assert (= b_lambda!72691 (or (and b!2283036 b_free!68281 (= (toValue!6124 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283034 b_free!68273 (= (toValue!6124 (transformation!4338 otherR!12)) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283030 b_free!68269 (= (toValue!6124 (transformation!4338 (h!32556 rules!1750))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283460 b_free!68305 (= (toValue!6124 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283430 b_free!68301 (= (toValue!6124 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283011 b_free!68277) b_lambda!72705)))

(declare-fun b_lambda!72707 () Bool)

(assert (= b_lambda!72695 (or (and b!2283036 b_free!68281 (= (toValue!6124 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283034 b_free!68273 (= (toValue!6124 (transformation!4338 otherR!12)) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283030 b_free!68269 (= (toValue!6124 (transformation!4338 (h!32556 rules!1750))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283460 b_free!68305 (= (toValue!6124 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283430 b_free!68301 (= (toValue!6124 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toValue!6124 (transformation!4338 r!2363)))) (and b!2283011 b_free!68277) b_lambda!72707)))

(declare-fun b_lambda!72709 () Bool)

(assert (= b_lambda!72693 (or (and b!2283430 b_free!68303 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 (t!203784 tokens!456))))) (toChars!5983 (transformation!4338 r!2363)))) (and b!2283460 b_free!68307 (= (toChars!5983 (transformation!4338 (h!32556 (t!203783 rules!1750)))) (toChars!5983 (transformation!4338 r!2363)))) (and b!2283011 b_free!68279) (and b!2283036 b_free!68283 (= (toChars!5983 (transformation!4338 (rule!6666 (h!32557 tokens!456)))) (toChars!5983 (transformation!4338 r!2363)))) (and b!2283030 b_free!68271 (= (toChars!5983 (transformation!4338 (h!32556 rules!1750))) (toChars!5983 (transformation!4338 r!2363)))) (and b!2283034 b_free!68275 (= (toChars!5983 (transformation!4338 otherR!12)) (toChars!5983 (transformation!4338 r!2363)))) b_lambda!72709)))

(push 1)

(assert (not b!2283458))

(assert (not b!2283443))

(assert (not b_next!69007))

(assert (not b!2283359))

(assert (not b!2283182))

(assert (not d!675765))

(assert (not d!675783))

(assert b_and!180633)

(assert (not d!675743))

(assert (not d!675777))

(assert (not b!2283179))

(assert (not b!2283255))

(assert (not d!675751))

(assert (not b!2283356))

(assert (not bm!136488))

(assert b_and!180607)

(assert (not b!2283201))

(assert (not b_lambda!72703))

(assert (not b_next!69011))

(assert (not d!675805))

(assert b_and!180603)

(assert (not tb!135831))

(assert (not b!2283437))

(assert (not b!2283331))

(assert b_and!180611)

(assert (not b!2283315))

(assert (not b!2283357))

(assert (not d!675753))

(assert (not d!675759))

(assert (not b!2283459))

(assert (not b!2283214))

(assert (not b!2283194))

(assert (not b!2283416))

(assert (not b!2283283))

(assert (not b!2283226))

(assert (not d!675725))

(assert b_and!180613)

(assert (not b_lambda!72705))

(assert (not b!2283353))

(assert (not d!675807))

(assert (not d!675801))

(assert (not b!2283439))

(assert (not b!2283428))

(assert (not b!2283435))

(assert (not d!675823))

(assert (not b!2283172))

(assert (not d!675729))

(assert b_and!180635)

(assert (not d!675761))

(assert (not b!2283273))

(assert (not b_next!68981))

(assert (not b!2283203))

(assert (not b!2283414))

(assert (not b!2283449))

(assert (not d!675791))

(assert (not b!2283400))

(assert (not d!675733))

(assert (not b!2283228))

(assert (not tb!135799))

(assert (not b!2283252))

(assert (not b_next!68983))

(assert (not d!675781))

(assert (not b_lambda!72707))

(assert (not b!2283429))

(assert (not b!2283325))

(assert (not b!2283297))

(assert (not b!2283446))

(assert (not b!2283355))

(assert (not bm!136489))

(assert (not d!675763))

(assert (not b!2283227))

(assert (not d!675707))

(assert (not b!2283329))

(assert (not b_next!68985))

(assert (not b_next!69009))

(assert (not b!2283326))

(assert b_and!180639)

(assert (not b!2283309))

(assert (not b!2283399))

(assert b_and!180615)

(assert (not b!2283245))

(assert (not b!2283438))

(assert (not b_next!68973))

(assert (not d!675767))

(assert (not b_next!68977))

(assert b_and!180605)

(assert (not b_next!68987))

(assert tp_is_empty!10593)

(assert (not d!675723))

(assert (not b!2283354))

(assert (not b!2283271))

(assert (not b!2283243))

(assert (not b!2283351))

(assert (not b!2283441))

(assert (not d!675799))

(assert (not d!675787))

(assert (not b!2283274))

(assert (not b!2283327))

(assert (not b_next!69005))

(assert (not b_next!68979))

(assert (not b!2283256))

(assert (not b!2283415))

(assert (not d!675721))

(assert (not tb!135823))

(assert (not b!2283401))

(assert (not b!2283444))

(assert (not b!2283314))

(assert (not b!2283259))

(assert (not b!2283301))

(assert (not d!675803))

(assert (not b!2283448))

(assert (not d!675709))

(assert (not b!2283447))

(assert (not tb!135791))

(assert (not d!675797))

(assert (not d!675715))

(assert (not b!2283176))

(assert (not bm!136492))

(assert (not d!675737))

(assert (not b!2283225))

(assert (not b!2283352))

(assert (not d!675739))

(assert (not d!675775))

(assert (not b!2283330))

(assert (not b_lambda!72709))

(assert (not b_next!68975))

(assert (not b!2283461))

(assert (not b!2283213))

(assert (not b!2283246))

(assert (not b!2283275))

(assert (not d!675711))

(assert (not b!2283178))

(assert (not b!2283442))

(assert (not b!2283253))

(assert (not b!2283317))

(assert (not b!2283249))

(assert (not b!2283350))

(assert (not b!2283189))

(assert (not b!2283175))

(assert (not b!2283286))

(assert (not b!2283427))

(assert (not b!2283307))

(assert (not b_lambda!72701))

(assert (not b_lambda!72681))

(assert b_and!180637)

(assert b_and!180609)

(assert (not d!675773))

(assert b_and!180601)

(assert (not b!2283398))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!69007))

(assert b_and!180633)

(assert b_and!180607)

(assert b_and!180611)

(assert b_and!180613)

(assert b_and!180635)

(assert (not b_next!68981))

(assert (not b_next!68983))

(assert (not b_next!68975))

(assert b_and!180637)

(assert b_and!180609)

(assert b_and!180601)

(assert (not b_next!69011))

(assert b_and!180603)

(assert (not b_next!68985))

(assert (not b_next!69009))

(assert b_and!180639)

(assert b_and!180615)

(assert (not b_next!68973))

(assert (not b_next!68977))

(assert b_and!180605)

(assert (not b_next!68987))

(assert (not b_next!69005))

(assert (not b_next!68979))

(check-sat)

(pop 1)

