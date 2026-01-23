; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43382 () Bool)

(assert start!43382)

(declare-fun b!457467 () Bool)

(declare-fun b_free!12753 () Bool)

(declare-fun b_next!12753 () Bool)

(assert (=> b!457467 (= b_free!12753 (not b_next!12753))))

(declare-fun tp!126838 () Bool)

(declare-fun b_and!49193 () Bool)

(assert (=> b!457467 (= tp!126838 b_and!49193)))

(declare-fun b_free!12755 () Bool)

(declare-fun b_next!12755 () Bool)

(assert (=> b!457467 (= b_free!12755 (not b_next!12755))))

(declare-fun tp!126832 () Bool)

(declare-fun b_and!49195 () Bool)

(assert (=> b!457467 (= tp!126832 b_and!49195)))

(declare-fun b!457470 () Bool)

(declare-fun b_free!12757 () Bool)

(declare-fun b_next!12757 () Bool)

(assert (=> b!457470 (= b_free!12757 (not b_next!12757))))

(declare-fun tp!126835 () Bool)

(declare-fun b_and!49197 () Bool)

(assert (=> b!457470 (= tp!126835 b_and!49197)))

(declare-fun b_free!12759 () Bool)

(declare-fun b_next!12759 () Bool)

(assert (=> b!457470 (= b_free!12759 (not b_next!12759))))

(declare-fun tp!126839 () Bool)

(declare-fun b_and!49199 () Bool)

(assert (=> b!457470 (= tp!126839 b_and!49199)))

(declare-fun b!457444 () Bool)

(declare-fun b_free!12761 () Bool)

(declare-fun b_next!12761 () Bool)

(assert (=> b!457444 (= b_free!12761 (not b_next!12761))))

(declare-fun tp!126829 () Bool)

(declare-fun b_and!49201 () Bool)

(assert (=> b!457444 (= tp!126829 b_and!49201)))

(declare-fun b_free!12763 () Bool)

(declare-fun b_next!12763 () Bool)

(assert (=> b!457444 (= b_free!12763 (not b_next!12763))))

(declare-fun tp!126836 () Bool)

(declare-fun b_and!49203 () Bool)

(assert (=> b!457444 (= tp!126836 b_and!49203)))

(declare-fun bs!56744 () Bool)

(declare-fun b!457450 () Bool)

(declare-fun b!457452 () Bool)

(assert (= bs!56744 (and b!457450 b!457452)))

(declare-fun lambda!13406 () Int)

(declare-fun lambda!13405 () Int)

(assert (=> bs!56744 (not (= lambda!13406 lambda!13405))))

(declare-fun b!457484 () Bool)

(declare-fun e!280012 () Bool)

(assert (=> b!457484 (= e!280012 true)))

(declare-fun b!457483 () Bool)

(declare-fun e!280011 () Bool)

(assert (=> b!457483 (= e!280011 e!280012)))

(declare-fun b!457482 () Bool)

(declare-fun e!280010 () Bool)

(assert (=> b!457482 (= e!280010 e!280011)))

(assert (=> b!457450 e!280010))

(assert (= b!457483 b!457484))

(assert (= b!457482 b!457483))

(declare-datatypes ((List!4448 0))(
  ( (Nil!4438) (Cons!4438 (h!9835 (_ BitVec 16)) (t!71612 List!4448)) )
))
(declare-datatypes ((TokenValue!885 0))(
  ( (FloatLiteralValue!1770 (text!6640 List!4448)) (TokenValueExt!884 (__x!3257 Int)) (Broken!4425 (value!28885 List!4448)) (Object!894) (End!885) (Def!885) (Underscore!885) (Match!885) (Else!885) (Error!885) (Case!885) (If!885) (Extends!885) (Abstract!885) (Class!885) (Val!885) (DelimiterValue!1770 (del!945 List!4448)) (KeywordValue!891 (value!28886 List!4448)) (CommentValue!1770 (value!28887 List!4448)) (WhitespaceValue!1770 (value!28888 List!4448)) (IndentationValue!885 (value!28889 List!4448)) (String!5504) (Int32!885) (Broken!4426 (value!28890 List!4448)) (Boolean!886) (Unit!8028) (OperatorValue!888 (op!945 List!4448)) (IdentifierValue!1770 (value!28891 List!4448)) (IdentifierValue!1771 (value!28892 List!4448)) (WhitespaceValue!1771 (value!28893 List!4448)) (True!1770) (False!1770) (Broken!4427 (value!28894 List!4448)) (Broken!4428 (value!28895 List!4448)) (True!1771) (RightBrace!885) (RightBracket!885) (Colon!885) (Null!885) (Comma!885) (LeftBracket!885) (False!1771) (LeftBrace!885) (ImaginaryLiteralValue!885 (text!6641 List!4448)) (StringLiteralValue!2655 (value!28896 List!4448)) (EOFValue!885 (value!28897 List!4448)) (IdentValue!885 (value!28898 List!4448)) (DelimiterValue!1771 (value!28899 List!4448)) (DedentValue!885 (value!28900 List!4448)) (NewLineValue!885 (value!28901 List!4448)) (IntegerValue!2655 (value!28902 (_ BitVec 32)) (text!6642 List!4448)) (IntegerValue!2656 (value!28903 Int) (text!6643 List!4448)) (Times!885) (Or!885) (Equal!885) (Minus!885) (Broken!4429 (value!28904 List!4448)) (And!885) (Div!885) (LessEqual!885) (Mod!885) (Concat!1972) (Not!885) (Plus!885) (SpaceValue!885 (value!28905 List!4448)) (IntegerValue!2657 (value!28906 Int) (text!6644 List!4448)) (StringLiteralValue!2656 (text!6645 List!4448)) (FloatLiteralValue!1771 (text!6646 List!4448)) (BytesLiteralValue!885 (value!28907 List!4448)) (CommentValue!1771 (value!28908 List!4448)) (StringLiteralValue!2657 (value!28909 List!4448)) (ErrorTokenValue!885 (msg!946 List!4448)) )
))
(declare-datatypes ((C!3096 0))(
  ( (C!3097 (val!1434 Int)) )
))
(declare-datatypes ((List!4449 0))(
  ( (Nil!4439) (Cons!4439 (h!9836 C!3096) (t!71613 List!4449)) )
))
(declare-datatypes ((IArray!3097 0))(
  ( (IArray!3098 (innerList!1606 List!4449)) )
))
(declare-datatypes ((Conc!1548 0))(
  ( (Node!1548 (left!3746 Conc!1548) (right!4076 Conc!1548) (csize!3326 Int) (cheight!1759 Int)) (Leaf!2319 (xs!4179 IArray!3097) (csize!3327 Int)) (Empty!1548) )
))
(declare-datatypes ((BalanceConc!3104 0))(
  ( (BalanceConc!3105 (c!92354 Conc!1548)) )
))
(declare-datatypes ((TokenValueInjection!1542 0))(
  ( (TokenValueInjection!1543 (toValue!1682 Int) (toChars!1541 Int)) )
))
(declare-datatypes ((String!5505 0))(
  ( (String!5506 (value!28910 String)) )
))
(declare-datatypes ((Regex!1087 0))(
  ( (ElementMatch!1087 (c!92355 C!3096)) (Concat!1973 (regOne!2686 Regex!1087) (regTwo!2686 Regex!1087)) (EmptyExpr!1087) (Star!1087 (reg!1416 Regex!1087)) (EmptyLang!1087) (Union!1087 (regOne!2687 Regex!1087) (regTwo!2687 Regex!1087)) )
))
(declare-datatypes ((Rule!1526 0))(
  ( (Rule!1527 (regex!863 Regex!1087) (tag!1123 String!5505) (isSeparator!863 Bool) (transformation!863 TokenValueInjection!1542)) )
))
(declare-datatypes ((List!4450 0))(
  ( (Nil!4440) (Cons!4440 (h!9837 Rule!1526) (t!71614 List!4450)) )
))
(declare-fun rules!1920 () List!4450)

(get-info :version)

(assert (= (and b!457450 ((_ is Cons!4440) rules!1920)) b!457482))

(declare-fun order!3937 () Int)

(declare-fun order!3939 () Int)

(declare-fun dynLambda!2696 (Int Int) Int)

(declare-fun dynLambda!2697 (Int Int) Int)

(assert (=> b!457484 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13406))))

(declare-fun order!3941 () Int)

(declare-fun dynLambda!2698 (Int Int) Int)

(assert (=> b!457484 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13406))))

(assert (=> b!457450 true))

(declare-fun b!457440 () Bool)

(declare-fun res!203384 () Bool)

(declare-fun e!279988 () Bool)

(assert (=> b!457440 (=> (not res!203384) (not e!279988))))

(declare-datatypes ((Token!1470 0))(
  ( (Token!1471 (value!28911 TokenValue!885) (rule!1558 Rule!1526) (size!3635 Int) (originalCharacters!906 List!4449)) )
))
(declare-fun separatorToken!170 () Token!1470)

(declare-datatypes ((LexerInterface!749 0))(
  ( (LexerInterfaceExt!746 (__x!3258 Int)) (Lexer!747) )
))
(declare-fun thiss!17480 () LexerInterface!749)

(declare-fun rulesProduceIndividualToken!498 (LexerInterface!749 List!4450 Token!1470) Bool)

(assert (=> b!457440 (= res!203384 (rulesProduceIndividualToken!498 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!457441 () Bool)

(declare-fun e!279996 () Bool)

(declare-datatypes ((List!4451 0))(
  ( (Nil!4441) (Cons!4441 (h!9838 Token!1470) (t!71615 List!4451)) )
))
(declare-fun tokens!465 () List!4451)

(declare-fun lt!203855 () List!4449)

(declare-fun matchR!405 (Regex!1087 List!4449) Bool)

(assert (=> b!457441 (= e!279996 (matchR!405 (regex!863 (rule!1558 (h!9838 tokens!465))) lt!203855))))

(declare-fun b!457442 () Bool)

(declare-fun lt!203860 () List!4449)

(declare-fun lt!203862 () List!4449)

(declare-fun e!279993 () Bool)

(declare-fun ++!1294 (List!4449 List!4449) List!4449)

(assert (=> b!457442 (= e!279993 (not (= lt!203862 (++!1294 lt!203855 lt!203860))))))

(declare-fun b!457443 () Bool)

(declare-fun e!279979 () Bool)

(declare-datatypes ((tuple2!5406 0))(
  ( (tuple2!5407 (_1!2919 Token!1470) (_2!2919 List!4449)) )
))
(declare-datatypes ((Option!1160 0))(
  ( (None!1159) (Some!1159 (v!15490 tuple2!5406)) )
))
(declare-fun lt!203864 () Option!1160)

(declare-fun get!1628 (Option!1160) tuple2!5406)

(declare-fun head!1114 (List!4451) Token!1470)

(assert (=> b!457443 (= e!279979 (= (_1!2919 (get!1628 lt!203864)) (head!1114 tokens!465)))))

(declare-fun e!279984 () Bool)

(assert (=> b!457444 (= e!279984 (and tp!126829 tp!126836))))

(declare-fun e!279977 () Bool)

(declare-fun b!457445 () Bool)

(declare-fun e!280003 () Bool)

(declare-fun tp!126830 () Bool)

(declare-fun inv!21 (TokenValue!885) Bool)

(assert (=> b!457445 (= e!280003 (and (inv!21 (value!28911 (h!9838 tokens!465))) e!279977 tp!126830))))

(declare-fun b!457446 () Bool)

(declare-fun e!279978 () Bool)

(declare-fun forall!1290 (List!4451 Int) Bool)

(assert (=> b!457446 (= e!279978 (forall!1290 (t!71615 tokens!465) lambda!13405))))

(declare-fun b!457447 () Bool)

(declare-fun res!203391 () Bool)

(declare-fun e!280001 () Bool)

(assert (=> b!457447 (=> res!203391 e!280001)))

(declare-datatypes ((IArray!3099 0))(
  ( (IArray!3100 (innerList!1607 List!4451)) )
))
(declare-datatypes ((Conc!1549 0))(
  ( (Node!1549 (left!3747 Conc!1549) (right!4077 Conc!1549) (csize!3328 Int) (cheight!1760 Int)) (Leaf!2320 (xs!4180 IArray!3099) (csize!3329 Int)) (Empty!1549) )
))
(declare-datatypes ((BalanceConc!3106 0))(
  ( (BalanceConc!3107 (c!92356 Conc!1549)) )
))
(declare-fun isEmpty!3410 (BalanceConc!3106) Bool)

(declare-datatypes ((tuple2!5408 0))(
  ( (tuple2!5409 (_1!2920 BalanceConc!3106) (_2!2920 BalanceConc!3104)) )
))
(declare-fun lex!541 (LexerInterface!749 List!4450 BalanceConc!3104) tuple2!5408)

(declare-fun seqFromList!1091 (List!4449) BalanceConc!3104)

(assert (=> b!457447 (= res!203391 (isEmpty!3410 (_1!2920 (lex!541 thiss!17480 rules!1920 (seqFromList!1091 lt!203855)))))))

(declare-fun b!457448 () Bool)

(declare-fun res!203383 () Bool)

(declare-fun e!279992 () Bool)

(assert (=> b!457448 (=> (not res!203383) (not e!279992))))

(declare-fun lt!203867 () List!4449)

(declare-fun list!1971 (BalanceConc!3104) List!4449)

(assert (=> b!457448 (= res!203383 (= (list!1971 (seqFromList!1091 lt!203862)) lt!203867))))

(declare-fun e!279986 () Bool)

(declare-fun e!279998 () Bool)

(declare-fun b!457449 () Bool)

(declare-fun tp!126833 () Bool)

(assert (=> b!457449 (= e!279986 (and (inv!21 (value!28911 separatorToken!170)) e!279998 tp!126833))))

(declare-fun e!279980 () Bool)

(assert (=> b!457450 (= e!280001 e!279980)))

(declare-fun res!203389 () Bool)

(assert (=> b!457450 (=> res!203389 e!279980)))

(declare-datatypes ((tuple2!5410 0))(
  ( (tuple2!5411 (_1!2921 Token!1470) (_2!2921 BalanceConc!3104)) )
))
(declare-datatypes ((Option!1161 0))(
  ( (None!1160) (Some!1160 (v!15491 tuple2!5410)) )
))
(declare-fun isDefined!999 (Option!1161) Bool)

(declare-fun maxPrefixZipperSequence!428 (LexerInterface!749 List!4450 BalanceConc!3104) Option!1161)

(assert (=> b!457450 (= res!203389 (not (isDefined!999 (maxPrefixZipperSequence!428 thiss!17480 rules!1920 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))))

(declare-datatypes ((Unit!8029 0))(
  ( (Unit!8030) )
))
(declare-fun lt!203854 () Unit!8029)

(declare-fun forallContained!416 (List!4451 Int Token!1470) Unit!8029)

(assert (=> b!457450 (= lt!203854 (forallContained!416 tokens!465 lambda!13406 (h!9838 tokens!465)))))

(assert (=> b!457450 (= lt!203855 (originalCharacters!906 (h!9838 tokens!465)))))

(declare-fun b!457451 () Bool)

(declare-fun e!279989 () Bool)

(declare-fun tp!126834 () Bool)

(declare-fun inv!5516 (String!5505) Bool)

(declare-fun inv!5519 (TokenValueInjection!1542) Bool)

(assert (=> b!457451 (= e!279977 (and tp!126834 (inv!5516 (tag!1123 (rule!1558 (h!9838 tokens!465)))) (inv!5519 (transformation!863 (rule!1558 (h!9838 tokens!465)))) e!279989))))

(declare-fun res!203394 () Bool)

(assert (=> b!457452 (=> (not res!203394) (not e!279988))))

(assert (=> b!457452 (= res!203394 (forall!1290 tokens!465 lambda!13405))))

(declare-fun b!457453 () Bool)

(declare-fun res!203386 () Bool)

(assert (=> b!457453 (=> (not res!203386) (not e!279996))))

(declare-fun lt!203851 () tuple2!5406)

(declare-fun isEmpty!3411 (List!4449) Bool)

(assert (=> b!457453 (= res!203386 (isEmpty!3411 (_2!2919 lt!203851)))))

(declare-fun b!457454 () Bool)

(declare-fun res!203385 () Bool)

(assert (=> b!457454 (=> (not res!203385) (not e!279988))))

(assert (=> b!457454 (= res!203385 ((_ is Cons!4441) tokens!465))))

(declare-fun tp!126840 () Bool)

(declare-fun e!279994 () Bool)

(declare-fun b!457455 () Bool)

(assert (=> b!457455 (= e!279994 (and tp!126840 (inv!5516 (tag!1123 (h!9837 rules!1920))) (inv!5519 (transformation!863 (h!9837 rules!1920))) e!279984))))

(declare-fun e!279999 () Bool)

(declare-fun b!457456 () Bool)

(declare-fun tp!126831 () Bool)

(declare-fun inv!5520 (Token!1470) Bool)

(assert (=> b!457456 (= e!279999 (and (inv!5520 (h!9838 tokens!465)) e!280003 tp!126831))))

(declare-fun b!457457 () Bool)

(declare-fun e!279982 () Bool)

(assert (=> b!457457 (= e!279982 e!279978)))

(declare-fun res!203371 () Bool)

(assert (=> b!457457 (=> res!203371 e!279978)))

(declare-fun lt!203865 () BalanceConc!3106)

(declare-fun rulesProduceEachTokenIndividually!541 (LexerInterface!749 List!4450 BalanceConc!3106) Bool)

(assert (=> b!457457 (= res!203371 (not (rulesProduceEachTokenIndividually!541 thiss!17480 rules!1920 lt!203865)))))

(declare-fun e!280002 () Bool)

(assert (=> b!457457 e!280002))

(declare-fun res!203390 () Bool)

(assert (=> b!457457 (=> res!203390 e!280002)))

(declare-fun isEmpty!3412 (List!4451) Bool)

(assert (=> b!457457 (= res!203390 (isEmpty!3412 tokens!465))))

(declare-fun lt!203861 () Unit!8029)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!264 (LexerInterface!749 List!4450 List!4451 Token!1470) Unit!8029)

(assert (=> b!457457 (= lt!203861 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!264 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!457458 () Bool)

(assert (=> b!457458 (= e!279980 e!279982)))

(declare-fun res!203382 () Bool)

(assert (=> b!457458 (=> res!203382 e!279982)))

(declare-fun lt!203866 () Bool)

(assert (=> b!457458 (= res!203382 lt!203866)))

(assert (=> b!457458 e!279996))

(declare-fun res!203393 () Bool)

(assert (=> b!457458 (=> (not res!203393) (not e!279996))))

(assert (=> b!457458 (= res!203393 (= (_1!2919 lt!203851) (h!9838 tokens!465)))))

(declare-fun lt!203850 () Option!1160)

(assert (=> b!457458 (= lt!203851 (get!1628 lt!203850))))

(declare-fun isDefined!1000 (Option!1160) Bool)

(assert (=> b!457458 (isDefined!1000 lt!203850)))

(declare-fun maxPrefix!465 (LexerInterface!749 List!4450 List!4449) Option!1160)

(assert (=> b!457458 (= lt!203850 (maxPrefix!465 thiss!17480 rules!1920 lt!203855))))

(declare-fun e!279987 () Bool)

(declare-fun b!457459 () Bool)

(declare-fun tp!126841 () Bool)

(assert (=> b!457459 (= e!279998 (and tp!126841 (inv!5516 (tag!1123 (rule!1558 separatorToken!170))) (inv!5519 (transformation!863 (rule!1558 separatorToken!170))) e!279987))))

(declare-fun b!457460 () Bool)

(declare-fun res!203381 () Bool)

(assert (=> b!457460 (=> (not res!203381) (not e!279988))))

(declare-fun sepAndNonSepRulesDisjointChars!452 (List!4450 List!4450) Bool)

(assert (=> b!457460 (= res!203381 (sepAndNonSepRulesDisjointChars!452 rules!1920 rules!1920))))

(declare-fun b!457461 () Bool)

(declare-fun e!280000 () Bool)

(assert (=> b!457461 (= e!280000 e!279988)))

(declare-fun res!203374 () Bool)

(assert (=> b!457461 (=> (not res!203374) (not e!279988))))

(declare-fun lt!203849 () BalanceConc!3106)

(assert (=> b!457461 (= res!203374 (rulesProduceEachTokenIndividually!541 thiss!17480 rules!1920 lt!203849))))

(declare-fun seqFromList!1092 (List!4451) BalanceConc!3106)

(assert (=> b!457461 (= lt!203849 (seqFromList!1092 tokens!465))))

(declare-fun b!457462 () Bool)

(declare-fun res!203377 () Bool)

(assert (=> b!457462 (=> (not res!203377) (not e!280000))))

(declare-fun rulesInvariant!715 (LexerInterface!749 List!4450) Bool)

(assert (=> b!457462 (= res!203377 (rulesInvariant!715 thiss!17480 rules!1920))))

(declare-fun b!457463 () Bool)

(declare-fun e!279983 () Bool)

(assert (=> b!457463 (= e!279983 e!280001)))

(declare-fun res!203375 () Bool)

(assert (=> b!457463 (=> res!203375 e!280001)))

(declare-fun lt!203863 () List!4449)

(declare-fun lt!203856 () List!4449)

(assert (=> b!457463 (= res!203375 (or (not (= lt!203856 lt!203863)) (not (= lt!203863 lt!203855)) (not (= lt!203856 lt!203855))))))

(declare-fun printList!423 (LexerInterface!749 List!4451) List!4449)

(assert (=> b!457463 (= lt!203863 (printList!423 thiss!17480 (Cons!4441 (h!9838 tokens!465) Nil!4441)))))

(declare-fun lt!203857 () BalanceConc!3104)

(assert (=> b!457463 (= lt!203856 (list!1971 lt!203857))))

(declare-fun lt!203853 () BalanceConc!3106)

(declare-fun printTailRec!435 (LexerInterface!749 BalanceConc!3106 Int BalanceConc!3104) BalanceConc!3104)

(assert (=> b!457463 (= lt!203857 (printTailRec!435 thiss!17480 lt!203853 0 (BalanceConc!3105 Empty!1548)))))

(declare-fun print!474 (LexerInterface!749 BalanceConc!3106) BalanceConc!3104)

(assert (=> b!457463 (= lt!203857 (print!474 thiss!17480 lt!203853))))

(declare-fun singletonSeq!409 (Token!1470) BalanceConc!3106)

(assert (=> b!457463 (= lt!203853 (singletonSeq!409 (h!9838 tokens!465)))))

(declare-fun b!457464 () Bool)

(declare-fun res!203372 () Bool)

(assert (=> b!457464 (=> res!203372 e!280001)))

(assert (=> b!457464 (= res!203372 (not (rulesProduceIndividualToken!498 thiss!17480 rules!1920 (h!9838 tokens!465))))))

(declare-fun b!457465 () Bool)

(assert (=> b!457465 (= e!279988 e!279992)))

(declare-fun res!203373 () Bool)

(assert (=> b!457465 (=> (not res!203373) (not e!279992))))

(assert (=> b!457465 (= res!203373 (= lt!203862 lt!203867))))

(declare-fun printWithSeparatorTokenWhenNeededRec!422 (LexerInterface!749 List!4450 BalanceConc!3106 Token!1470 Int) BalanceConc!3104)

(assert (=> b!457465 (= lt!203867 (list!1971 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203849 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!430 (LexerInterface!749 List!4450 List!4451 Token!1470) List!4449)

(assert (=> b!457465 (= lt!203862 (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!457466 () Bool)

(declare-fun e!279976 () Bool)

(assert (=> b!457466 (= e!279976 e!279983)))

(declare-fun res!203379 () Bool)

(assert (=> b!457466 (=> res!203379 e!279983)))

(assert (=> b!457466 (= res!203379 e!279993)))

(declare-fun res!203392 () Bool)

(assert (=> b!457466 (=> (not res!203392) (not e!279993))))

(assert (=> b!457466 (= res!203392 (not lt!203866))))

(declare-fun lt!203852 () List!4449)

(assert (=> b!457466 (= lt!203866 (= lt!203862 lt!203852))))

(assert (=> b!457467 (= e!279989 (and tp!126838 tp!126832))))

(declare-fun b!457468 () Bool)

(assert (=> b!457468 (= e!280002 e!279979)))

(declare-fun res!203388 () Bool)

(assert (=> b!457468 (=> (not res!203388) (not e!279979))))

(assert (=> b!457468 (= res!203388 (isDefined!1000 lt!203864))))

(assert (=> b!457468 (= lt!203864 (maxPrefix!465 thiss!17480 rules!1920 lt!203862))))

(declare-fun b!457469 () Bool)

(declare-fun res!203378 () Bool)

(assert (=> b!457469 (=> (not res!203378) (not e!279988))))

(assert (=> b!457469 (= res!203378 (isSeparator!863 (rule!1558 separatorToken!170)))))

(assert (=> b!457470 (= e!279987 (and tp!126835 tp!126839))))

(declare-fun b!457471 () Bool)

(assert (=> b!457471 (= e!279992 (not e!279976))))

(declare-fun res!203380 () Bool)

(assert (=> b!457471 (=> res!203380 e!279976)))

(assert (=> b!457471 (= res!203380 (not (= lt!203860 (list!1971 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203865 separatorToken!170 0)))))))

(assert (=> b!457471 (= lt!203865 (seqFromList!1092 (t!71615 tokens!465)))))

(declare-fun lt!203868 () List!4449)

(assert (=> b!457471 (= lt!203868 lt!203852)))

(declare-fun lt!203859 () List!4449)

(assert (=> b!457471 (= lt!203852 (++!1294 lt!203855 lt!203859))))

(declare-fun lt!203848 () List!4449)

(assert (=> b!457471 (= lt!203868 (++!1294 (++!1294 lt!203855 lt!203848) lt!203860))))

(declare-fun lt!203858 () Unit!8029)

(declare-fun lemmaConcatAssociativity!600 (List!4449 List!4449 List!4449) Unit!8029)

(assert (=> b!457471 (= lt!203858 (lemmaConcatAssociativity!600 lt!203855 lt!203848 lt!203860))))

(declare-fun charsOf!506 (Token!1470) BalanceConc!3104)

(assert (=> b!457471 (= lt!203855 (list!1971 (charsOf!506 (h!9838 tokens!465))))))

(assert (=> b!457471 (= lt!203859 (++!1294 lt!203848 lt!203860))))

(assert (=> b!457471 (= lt!203860 (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 (t!71615 tokens!465) separatorToken!170))))

(assert (=> b!457471 (= lt!203848 (list!1971 (charsOf!506 separatorToken!170)))))

(declare-fun b!457472 () Bool)

(declare-fun e!279990 () Bool)

(declare-fun tp!126837 () Bool)

(assert (=> b!457472 (= e!279990 (and e!279994 tp!126837))))

(declare-fun b!457473 () Bool)

(declare-fun res!203376 () Bool)

(assert (=> b!457473 (=> (not res!203376) (not e!280000))))

(declare-fun isEmpty!3413 (List!4450) Bool)

(assert (=> b!457473 (= res!203376 (not (isEmpty!3413 rules!1920)))))

(declare-fun res!203387 () Bool)

(assert (=> start!43382 (=> (not res!203387) (not e!280000))))

(assert (=> start!43382 (= res!203387 ((_ is Lexer!747) thiss!17480))))

(assert (=> start!43382 e!280000))

(assert (=> start!43382 true))

(assert (=> start!43382 e!279990))

(assert (=> start!43382 (and (inv!5520 separatorToken!170) e!279986)))

(assert (=> start!43382 e!279999))

(assert (= (and start!43382 res!203387) b!457473))

(assert (= (and b!457473 res!203376) b!457462))

(assert (= (and b!457462 res!203377) b!457461))

(assert (= (and b!457461 res!203374) b!457440))

(assert (= (and b!457440 res!203384) b!457469))

(assert (= (and b!457469 res!203378) b!457452))

(assert (= (and b!457452 res!203394) b!457460))

(assert (= (and b!457460 res!203381) b!457454))

(assert (= (and b!457454 res!203385) b!457465))

(assert (= (and b!457465 res!203373) b!457448))

(assert (= (and b!457448 res!203383) b!457471))

(assert (= (and b!457471 (not res!203380)) b!457466))

(assert (= (and b!457466 res!203392) b!457442))

(assert (= (and b!457466 (not res!203379)) b!457463))

(assert (= (and b!457463 (not res!203375)) b!457464))

(assert (= (and b!457464 (not res!203372)) b!457447))

(assert (= (and b!457447 (not res!203391)) b!457450))

(assert (= (and b!457450 (not res!203389)) b!457458))

(assert (= (and b!457458 res!203393) b!457453))

(assert (= (and b!457453 res!203386) b!457441))

(assert (= (and b!457458 (not res!203382)) b!457457))

(assert (= (and b!457457 (not res!203390)) b!457468))

(assert (= (and b!457468 res!203388) b!457443))

(assert (= (and b!457457 (not res!203371)) b!457446))

(assert (= b!457455 b!457444))

(assert (= b!457472 b!457455))

(assert (= (and start!43382 ((_ is Cons!4440) rules!1920)) b!457472))

(assert (= b!457459 b!457470))

(assert (= b!457449 b!457459))

(assert (= start!43382 b!457449))

(assert (= b!457451 b!457467))

(assert (= b!457445 b!457451))

(assert (= b!457456 b!457445))

(assert (= (and start!43382 ((_ is Cons!4441) tokens!465)) b!457456))

(declare-fun m!724651 () Bool)

(assert (=> b!457468 m!724651))

(declare-fun m!724653 () Bool)

(assert (=> b!457468 m!724653))

(declare-fun m!724655 () Bool)

(assert (=> b!457449 m!724655))

(declare-fun m!724657 () Bool)

(assert (=> b!457461 m!724657))

(declare-fun m!724659 () Bool)

(assert (=> b!457461 m!724659))

(declare-fun m!724661 () Bool)

(assert (=> b!457445 m!724661))

(declare-fun m!724663 () Bool)

(assert (=> b!457463 m!724663))

(declare-fun m!724665 () Bool)

(assert (=> b!457463 m!724665))

(declare-fun m!724667 () Bool)

(assert (=> b!457463 m!724667))

(declare-fun m!724669 () Bool)

(assert (=> b!457463 m!724669))

(declare-fun m!724671 () Bool)

(assert (=> b!457463 m!724671))

(declare-fun m!724673 () Bool)

(assert (=> b!457448 m!724673))

(assert (=> b!457448 m!724673))

(declare-fun m!724675 () Bool)

(assert (=> b!457448 m!724675))

(declare-fun m!724677 () Bool)

(assert (=> b!457458 m!724677))

(declare-fun m!724679 () Bool)

(assert (=> b!457458 m!724679))

(declare-fun m!724681 () Bool)

(assert (=> b!457458 m!724681))

(declare-fun m!724683 () Bool)

(assert (=> b!457441 m!724683))

(declare-fun m!724685 () Bool)

(assert (=> b!457460 m!724685))

(declare-fun m!724687 () Bool)

(assert (=> b!457447 m!724687))

(assert (=> b!457447 m!724687))

(declare-fun m!724689 () Bool)

(assert (=> b!457447 m!724689))

(declare-fun m!724691 () Bool)

(assert (=> b!457447 m!724691))

(declare-fun m!724693 () Bool)

(assert (=> b!457455 m!724693))

(declare-fun m!724695 () Bool)

(assert (=> b!457455 m!724695))

(declare-fun m!724697 () Bool)

(assert (=> b!457443 m!724697))

(declare-fun m!724699 () Bool)

(assert (=> b!457443 m!724699))

(declare-fun m!724701 () Bool)

(assert (=> start!43382 m!724701))

(declare-fun m!724703 () Bool)

(assert (=> b!457465 m!724703))

(assert (=> b!457465 m!724703))

(declare-fun m!724705 () Bool)

(assert (=> b!457465 m!724705))

(declare-fun m!724707 () Bool)

(assert (=> b!457465 m!724707))

(declare-fun m!724709 () Bool)

(assert (=> b!457462 m!724709))

(declare-fun m!724711 () Bool)

(assert (=> b!457440 m!724711))

(declare-fun m!724713 () Bool)

(assert (=> b!457459 m!724713))

(declare-fun m!724715 () Bool)

(assert (=> b!457459 m!724715))

(declare-fun m!724717 () Bool)

(assert (=> b!457453 m!724717))

(declare-fun m!724719 () Bool)

(assert (=> b!457473 m!724719))

(declare-fun m!724721 () Bool)

(assert (=> b!457456 m!724721))

(declare-fun m!724723 () Bool)

(assert (=> b!457457 m!724723))

(declare-fun m!724725 () Bool)

(assert (=> b!457457 m!724725))

(declare-fun m!724727 () Bool)

(assert (=> b!457457 m!724727))

(declare-fun m!724729 () Bool)

(assert (=> b!457471 m!724729))

(declare-fun m!724731 () Bool)

(assert (=> b!457471 m!724731))

(declare-fun m!724733 () Bool)

(assert (=> b!457471 m!724733))

(declare-fun m!724735 () Bool)

(assert (=> b!457471 m!724735))

(declare-fun m!724737 () Bool)

(assert (=> b!457471 m!724737))

(declare-fun m!724739 () Bool)

(assert (=> b!457471 m!724739))

(declare-fun m!724741 () Bool)

(assert (=> b!457471 m!724741))

(assert (=> b!457471 m!724735))

(assert (=> b!457471 m!724739))

(declare-fun m!724743 () Bool)

(assert (=> b!457471 m!724743))

(declare-fun m!724745 () Bool)

(assert (=> b!457471 m!724745))

(assert (=> b!457471 m!724743))

(declare-fun m!724747 () Bool)

(assert (=> b!457471 m!724747))

(assert (=> b!457471 m!724731))

(declare-fun m!724749 () Bool)

(assert (=> b!457471 m!724749))

(declare-fun m!724751 () Bool)

(assert (=> b!457471 m!724751))

(declare-fun m!724753 () Bool)

(assert (=> b!457471 m!724753))

(declare-fun m!724755 () Bool)

(assert (=> b!457450 m!724755))

(assert (=> b!457450 m!724755))

(declare-fun m!724757 () Bool)

(assert (=> b!457450 m!724757))

(assert (=> b!457450 m!724757))

(declare-fun m!724759 () Bool)

(assert (=> b!457450 m!724759))

(declare-fun m!724761 () Bool)

(assert (=> b!457450 m!724761))

(declare-fun m!724763 () Bool)

(assert (=> b!457442 m!724763))

(declare-fun m!724765 () Bool)

(assert (=> b!457451 m!724765))

(declare-fun m!724767 () Bool)

(assert (=> b!457451 m!724767))

(declare-fun m!724769 () Bool)

(assert (=> b!457452 m!724769))

(declare-fun m!724771 () Bool)

(assert (=> b!457464 m!724771))

(declare-fun m!724773 () Bool)

(assert (=> b!457446 m!724773))

(check-sat (not b!457455) (not b_next!12761) (not b!457458) (not b!457465) b_and!49199 (not b!457461) (not b!457482) (not start!43382) (not b!457462) (not b!457452) (not b!457440) (not b!457468) (not b!457450) (not b!457459) (not b!457457) b_and!49201 (not b!457441) (not b!457464) (not b!457451) (not b!457446) (not b_next!12757) (not b!457448) (not b!457472) b_and!49195 (not b_next!12763) b_and!49193 (not b!457442) (not b!457463) (not b_next!12759) (not b!457456) (not b!457447) (not b!457473) b_and!49197 (not b!457443) (not b!457460) (not b!457471) (not b!457445) (not b!457453) (not b_next!12753) b_and!49203 (not b!457449) (not b_next!12755))
(check-sat b_and!49201 (not b_next!12761) b_and!49199 (not b_next!12757) b_and!49195 (not b_next!12759) b_and!49197 (not b_next!12755) (not b_next!12763) b_and!49193 (not b_next!12753) b_and!49203)
(get-model)

(declare-fun d!174653 () Bool)

(declare-fun res!203433 () Bool)

(declare-fun e!280033 () Bool)

(assert (=> d!174653 (=> (not res!203433) (not e!280033))))

(declare-fun rulesValid!307 (LexerInterface!749 List!4450) Bool)

(assert (=> d!174653 (= res!203433 (rulesValid!307 thiss!17480 rules!1920))))

(assert (=> d!174653 (= (rulesInvariant!715 thiss!17480 rules!1920) e!280033)))

(declare-fun b!457528 () Bool)

(declare-datatypes ((List!4452 0))(
  ( (Nil!4442) (Cons!4442 (h!9839 String!5505) (t!71680 List!4452)) )
))
(declare-fun noDuplicateTag!307 (LexerInterface!749 List!4450 List!4452) Bool)

(assert (=> b!457528 (= e!280033 (noDuplicateTag!307 thiss!17480 rules!1920 Nil!4442))))

(assert (= (and d!174653 res!203433) b!457528))

(declare-fun m!724837 () Bool)

(assert (=> d!174653 m!724837))

(declare-fun m!724843 () Bool)

(assert (=> b!457528 m!724843))

(assert (=> b!457462 d!174653))

(declare-fun d!174655 () Bool)

(declare-fun lt!203957 () Bool)

(declare-fun e!280065 () Bool)

(assert (=> d!174655 (= lt!203957 e!280065)))

(declare-fun res!203453 () Bool)

(assert (=> d!174655 (=> (not res!203453) (not e!280065))))

(declare-fun list!1974 (BalanceConc!3106) List!4451)

(assert (=> d!174655 (= res!203453 (= (list!1974 (_1!2920 (lex!541 thiss!17480 rules!1920 (print!474 thiss!17480 (singletonSeq!409 separatorToken!170))))) (list!1974 (singletonSeq!409 separatorToken!170))))))

(declare-fun e!280066 () Bool)

(assert (=> d!174655 (= lt!203957 e!280066)))

(declare-fun res!203452 () Bool)

(assert (=> d!174655 (=> (not res!203452) (not e!280066))))

(declare-fun lt!203958 () tuple2!5408)

(declare-fun size!3639 (BalanceConc!3106) Int)

(assert (=> d!174655 (= res!203452 (= (size!3639 (_1!2920 lt!203958)) 1))))

(assert (=> d!174655 (= lt!203958 (lex!541 thiss!17480 rules!1920 (print!474 thiss!17480 (singletonSeq!409 separatorToken!170))))))

(assert (=> d!174655 (not (isEmpty!3413 rules!1920))))

(assert (=> d!174655 (= (rulesProduceIndividualToken!498 thiss!17480 rules!1920 separatorToken!170) lt!203957)))

(declare-fun b!457574 () Bool)

(declare-fun res!203454 () Bool)

(assert (=> b!457574 (=> (not res!203454) (not e!280066))))

(declare-fun apply!1138 (BalanceConc!3106 Int) Token!1470)

(assert (=> b!457574 (= res!203454 (= (apply!1138 (_1!2920 lt!203958) 0) separatorToken!170))))

(declare-fun b!457575 () Bool)

(declare-fun isEmpty!3417 (BalanceConc!3104) Bool)

(assert (=> b!457575 (= e!280066 (isEmpty!3417 (_2!2920 lt!203958)))))

(declare-fun b!457576 () Bool)

(assert (=> b!457576 (= e!280065 (isEmpty!3417 (_2!2920 (lex!541 thiss!17480 rules!1920 (print!474 thiss!17480 (singletonSeq!409 separatorToken!170))))))))

(assert (= (and d!174655 res!203452) b!457574))

(assert (= (and b!457574 res!203454) b!457575))

(assert (= (and d!174655 res!203453) b!457576))

(declare-fun m!724941 () Bool)

(assert (=> d!174655 m!724941))

(declare-fun m!724943 () Bool)

(assert (=> d!174655 m!724943))

(assert (=> d!174655 m!724719))

(assert (=> d!174655 m!724941))

(declare-fun m!724945 () Bool)

(assert (=> d!174655 m!724945))

(declare-fun m!724947 () Bool)

(assert (=> d!174655 m!724947))

(declare-fun m!724949 () Bool)

(assert (=> d!174655 m!724949))

(assert (=> d!174655 m!724941))

(assert (=> d!174655 m!724945))

(declare-fun m!724951 () Bool)

(assert (=> d!174655 m!724951))

(declare-fun m!724953 () Bool)

(assert (=> b!457574 m!724953))

(declare-fun m!724955 () Bool)

(assert (=> b!457575 m!724955))

(assert (=> b!457576 m!724941))

(assert (=> b!457576 m!724941))

(assert (=> b!457576 m!724945))

(assert (=> b!457576 m!724945))

(assert (=> b!457576 m!724951))

(declare-fun m!724957 () Bool)

(assert (=> b!457576 m!724957))

(assert (=> b!457440 d!174655))

(declare-fun bs!56757 () Bool)

(declare-fun d!174673 () Bool)

(assert (= bs!56757 (and d!174673 b!457452)))

(declare-fun lambda!13420 () Int)

(assert (=> bs!56757 (not (= lambda!13420 lambda!13405))))

(declare-fun bs!56760 () Bool)

(assert (= bs!56760 (and d!174673 b!457450)))

(assert (=> bs!56760 (= lambda!13420 lambda!13406)))

(declare-fun b!457609 () Bool)

(declare-fun e!280087 () Bool)

(assert (=> b!457609 (= e!280087 true)))

(declare-fun b!457608 () Bool)

(declare-fun e!280086 () Bool)

(assert (=> b!457608 (= e!280086 e!280087)))

(declare-fun b!457607 () Bool)

(declare-fun e!280085 () Bool)

(assert (=> b!457607 (= e!280085 e!280086)))

(assert (=> d!174673 e!280085))

(assert (= b!457608 b!457609))

(assert (= b!457607 b!457608))

(assert (= (and d!174673 ((_ is Cons!4440) rules!1920)) b!457607))

(assert (=> b!457609 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13420))))

(assert (=> b!457609 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13420))))

(assert (=> d!174673 true))

(declare-fun e!280081 () Bool)

(assert (=> d!174673 e!280081))

(declare-fun res!203457 () Bool)

(assert (=> d!174673 (=> (not res!203457) (not e!280081))))

(declare-fun lt!203979 () Bool)

(assert (=> d!174673 (= res!203457 (= lt!203979 (forall!1290 (list!1974 lt!203849) lambda!13420)))))

(declare-fun forall!1291 (BalanceConc!3106 Int) Bool)

(assert (=> d!174673 (= lt!203979 (forall!1291 lt!203849 lambda!13420))))

(assert (=> d!174673 (not (isEmpty!3413 rules!1920))))

(assert (=> d!174673 (= (rulesProduceEachTokenIndividually!541 thiss!17480 rules!1920 lt!203849) lt!203979)))

(declare-fun b!457603 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!320 (LexerInterface!749 List!4450 List!4451) Bool)

(assert (=> b!457603 (= e!280081 (= lt!203979 (rulesProduceEachTokenIndividuallyList!320 thiss!17480 rules!1920 (list!1974 lt!203849))))))

(assert (= (and d!174673 res!203457) b!457603))

(declare-fun m!724959 () Bool)

(assert (=> d!174673 m!724959))

(assert (=> d!174673 m!724959))

(declare-fun m!724961 () Bool)

(assert (=> d!174673 m!724961))

(declare-fun m!724963 () Bool)

(assert (=> d!174673 m!724963))

(assert (=> d!174673 m!724719))

(assert (=> b!457603 m!724959))

(assert (=> b!457603 m!724959))

(declare-fun m!724965 () Bool)

(assert (=> b!457603 m!724965))

(assert (=> b!457461 d!174673))

(declare-fun d!174675 () Bool)

(declare-fun fromListB!486 (List!4451) BalanceConc!3106)

(assert (=> d!174675 (= (seqFromList!1092 tokens!465) (fromListB!486 tokens!465))))

(declare-fun bs!56762 () Bool)

(assert (= bs!56762 d!174675))

(declare-fun m!724987 () Bool)

(assert (=> bs!56762 m!724987))

(assert (=> b!457461 d!174675))

(declare-fun d!174679 () Bool)

(declare-fun res!203465 () Bool)

(declare-fun e!280101 () Bool)

(assert (=> d!174679 (=> res!203465 e!280101)))

(assert (=> d!174679 (= res!203465 (not ((_ is Cons!4440) rules!1920)))))

(assert (=> d!174679 (= (sepAndNonSepRulesDisjointChars!452 rules!1920 rules!1920) e!280101)))

(declare-fun b!457629 () Bool)

(declare-fun e!280102 () Bool)

(assert (=> b!457629 (= e!280101 e!280102)))

(declare-fun res!203466 () Bool)

(assert (=> b!457629 (=> (not res!203466) (not e!280102))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!200 (Rule!1526 List!4450) Bool)

(assert (=> b!457629 (= res!203466 (ruleDisjointCharsFromAllFromOtherType!200 (h!9837 rules!1920) rules!1920))))

(declare-fun b!457630 () Bool)

(assert (=> b!457630 (= e!280102 (sepAndNonSepRulesDisjointChars!452 rules!1920 (t!71614 rules!1920)))))

(assert (= (and d!174679 (not res!203465)) b!457629))

(assert (= (and b!457629 res!203466) b!457630))

(declare-fun m!724995 () Bool)

(assert (=> b!457629 m!724995))

(declare-fun m!724997 () Bool)

(assert (=> b!457630 m!724997))

(assert (=> b!457460 d!174679))

(declare-fun d!174683 () Bool)

(assert (=> d!174683 (= (get!1628 lt!203864) (v!15490 lt!203864))))

(assert (=> b!457443 d!174683))

(declare-fun d!174685 () Bool)

(assert (=> d!174685 (= (head!1114 tokens!465) (h!9838 tokens!465))))

(assert (=> b!457443 d!174685))

(declare-fun d!174687 () Bool)

(declare-fun lt!203980 () Bool)

(declare-fun e!280103 () Bool)

(assert (=> d!174687 (= lt!203980 e!280103)))

(declare-fun res!203468 () Bool)

(assert (=> d!174687 (=> (not res!203468) (not e!280103))))

(assert (=> d!174687 (= res!203468 (= (list!1974 (_1!2920 (lex!541 thiss!17480 rules!1920 (print!474 thiss!17480 (singletonSeq!409 (h!9838 tokens!465)))))) (list!1974 (singletonSeq!409 (h!9838 tokens!465)))))))

(declare-fun e!280104 () Bool)

(assert (=> d!174687 (= lt!203980 e!280104)))

(declare-fun res!203467 () Bool)

(assert (=> d!174687 (=> (not res!203467) (not e!280104))))

(declare-fun lt!203981 () tuple2!5408)

(assert (=> d!174687 (= res!203467 (= (size!3639 (_1!2920 lt!203981)) 1))))

(assert (=> d!174687 (= lt!203981 (lex!541 thiss!17480 rules!1920 (print!474 thiss!17480 (singletonSeq!409 (h!9838 tokens!465)))))))

(assert (=> d!174687 (not (isEmpty!3413 rules!1920))))

(assert (=> d!174687 (= (rulesProduceIndividualToken!498 thiss!17480 rules!1920 (h!9838 tokens!465)) lt!203980)))

(declare-fun b!457631 () Bool)

(declare-fun res!203469 () Bool)

(assert (=> b!457631 (=> (not res!203469) (not e!280104))))

(assert (=> b!457631 (= res!203469 (= (apply!1138 (_1!2920 lt!203981) 0) (h!9838 tokens!465)))))

(declare-fun b!457632 () Bool)

(assert (=> b!457632 (= e!280104 (isEmpty!3417 (_2!2920 lt!203981)))))

(declare-fun b!457633 () Bool)

(assert (=> b!457633 (= e!280103 (isEmpty!3417 (_2!2920 (lex!541 thiss!17480 rules!1920 (print!474 thiss!17480 (singletonSeq!409 (h!9838 tokens!465)))))))))

(assert (= (and d!174687 res!203467) b!457631))

(assert (= (and b!457631 res!203469) b!457632))

(assert (= (and d!174687 res!203468) b!457633))

(assert (=> d!174687 m!724667))

(declare-fun m!724999 () Bool)

(assert (=> d!174687 m!724999))

(assert (=> d!174687 m!724719))

(assert (=> d!174687 m!724667))

(declare-fun m!725001 () Bool)

(assert (=> d!174687 m!725001))

(declare-fun m!725003 () Bool)

(assert (=> d!174687 m!725003))

(declare-fun m!725005 () Bool)

(assert (=> d!174687 m!725005))

(assert (=> d!174687 m!724667))

(assert (=> d!174687 m!725001))

(declare-fun m!725007 () Bool)

(assert (=> d!174687 m!725007))

(declare-fun m!725009 () Bool)

(assert (=> b!457631 m!725009))

(declare-fun m!725011 () Bool)

(assert (=> b!457632 m!725011))

(assert (=> b!457633 m!724667))

(assert (=> b!457633 m!724667))

(assert (=> b!457633 m!725001))

(assert (=> b!457633 m!725001))

(assert (=> b!457633 m!725007))

(declare-fun m!725019 () Bool)

(assert (=> b!457633 m!725019))

(assert (=> b!457464 d!174687))

(declare-fun d!174691 () Bool)

(declare-fun e!280109 () Bool)

(assert (=> d!174691 e!280109))

(declare-fun res!203475 () Bool)

(assert (=> d!174691 (=> (not res!203475) (not e!280109))))

(declare-fun lt!203987 () List!4449)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!743 (List!4449) (InoxSet C!3096))

(assert (=> d!174691 (= res!203475 (= (content!743 lt!203987) ((_ map or) (content!743 lt!203855) (content!743 lt!203860))))))

(declare-fun e!280110 () List!4449)

(assert (=> d!174691 (= lt!203987 e!280110)))

(declare-fun c!92395 () Bool)

(assert (=> d!174691 (= c!92395 ((_ is Nil!4439) lt!203855))))

(assert (=> d!174691 (= (++!1294 lt!203855 lt!203860) lt!203987)))

(declare-fun b!457645 () Bool)

(assert (=> b!457645 (= e!280109 (or (not (= lt!203860 Nil!4439)) (= lt!203987 lt!203855)))))

(declare-fun b!457642 () Bool)

(assert (=> b!457642 (= e!280110 lt!203860)))

(declare-fun b!457644 () Bool)

(declare-fun res!203474 () Bool)

(assert (=> b!457644 (=> (not res!203474) (not e!280109))))

(declare-fun size!3640 (List!4449) Int)

(assert (=> b!457644 (= res!203474 (= (size!3640 lt!203987) (+ (size!3640 lt!203855) (size!3640 lt!203860))))))

(declare-fun b!457643 () Bool)

(assert (=> b!457643 (= e!280110 (Cons!4439 (h!9836 lt!203855) (++!1294 (t!71613 lt!203855) lt!203860)))))

(assert (= (and d!174691 c!92395) b!457642))

(assert (= (and d!174691 (not c!92395)) b!457643))

(assert (= (and d!174691 res!203475) b!457644))

(assert (= (and b!457644 res!203474) b!457645))

(declare-fun m!725021 () Bool)

(assert (=> d!174691 m!725021))

(declare-fun m!725023 () Bool)

(assert (=> d!174691 m!725023))

(declare-fun m!725025 () Bool)

(assert (=> d!174691 m!725025))

(declare-fun m!725027 () Bool)

(assert (=> b!457644 m!725027))

(declare-fun m!725029 () Bool)

(assert (=> b!457644 m!725029))

(declare-fun m!725031 () Bool)

(assert (=> b!457644 m!725031))

(declare-fun m!725033 () Bool)

(assert (=> b!457643 m!725033))

(assert (=> b!457442 d!174691))

(declare-fun d!174693 () Bool)

(declare-fun lt!203990 () BalanceConc!3104)

(assert (=> d!174693 (= (list!1971 lt!203990) (printList!423 thiss!17480 (list!1974 lt!203853)))))

(assert (=> d!174693 (= lt!203990 (printTailRec!435 thiss!17480 lt!203853 0 (BalanceConc!3105 Empty!1548)))))

(assert (=> d!174693 (= (print!474 thiss!17480 lt!203853) lt!203990)))

(declare-fun bs!56764 () Bool)

(assert (= bs!56764 d!174693))

(declare-fun m!725035 () Bool)

(assert (=> bs!56764 m!725035))

(declare-fun m!725037 () Bool)

(assert (=> bs!56764 m!725037))

(assert (=> bs!56764 m!725037))

(declare-fun m!725039 () Bool)

(assert (=> bs!56764 m!725039))

(assert (=> bs!56764 m!724663))

(assert (=> b!457463 d!174693))

(declare-fun d!174695 () Bool)

(declare-fun lt!204011 () BalanceConc!3104)

(declare-fun printListTailRec!211 (LexerInterface!749 List!4451 List!4449) List!4449)

(declare-fun dropList!246 (BalanceConc!3106 Int) List!4451)

(assert (=> d!174695 (= (list!1971 lt!204011) (printListTailRec!211 thiss!17480 (dropList!246 lt!203853 0) (list!1971 (BalanceConc!3105 Empty!1548))))))

(declare-fun e!280115 () BalanceConc!3104)

(assert (=> d!174695 (= lt!204011 e!280115)))

(declare-fun c!92398 () Bool)

(assert (=> d!174695 (= c!92398 (>= 0 (size!3639 lt!203853)))))

(declare-fun e!280116 () Bool)

(assert (=> d!174695 e!280116))

(declare-fun res!203478 () Bool)

(assert (=> d!174695 (=> (not res!203478) (not e!280116))))

(assert (=> d!174695 (= res!203478 (>= 0 0))))

(assert (=> d!174695 (= (printTailRec!435 thiss!17480 lt!203853 0 (BalanceConc!3105 Empty!1548)) lt!204011)))

(declare-fun b!457652 () Bool)

(assert (=> b!457652 (= e!280116 (<= 0 (size!3639 lt!203853)))))

(declare-fun b!457653 () Bool)

(assert (=> b!457653 (= e!280115 (BalanceConc!3105 Empty!1548))))

(declare-fun b!457654 () Bool)

(declare-fun ++!1296 (BalanceConc!3104 BalanceConc!3104) BalanceConc!3104)

(assert (=> b!457654 (= e!280115 (printTailRec!435 thiss!17480 lt!203853 (+ 0 1) (++!1296 (BalanceConc!3105 Empty!1548) (charsOf!506 (apply!1138 lt!203853 0)))))))

(declare-fun lt!204009 () List!4451)

(assert (=> b!457654 (= lt!204009 (list!1974 lt!203853))))

(declare-fun lt!204007 () Unit!8029)

(declare-fun lemmaDropApply!286 (List!4451 Int) Unit!8029)

(assert (=> b!457654 (= lt!204007 (lemmaDropApply!286 lt!204009 0))))

(declare-fun drop!315 (List!4451 Int) List!4451)

(declare-fun apply!1139 (List!4451 Int) Token!1470)

(assert (=> b!457654 (= (head!1114 (drop!315 lt!204009 0)) (apply!1139 lt!204009 0))))

(declare-fun lt!204008 () Unit!8029)

(assert (=> b!457654 (= lt!204008 lt!204007)))

(declare-fun lt!204010 () List!4451)

(assert (=> b!457654 (= lt!204010 (list!1974 lt!203853))))

(declare-fun lt!204006 () Unit!8029)

(declare-fun lemmaDropTail!278 (List!4451 Int) Unit!8029)

(assert (=> b!457654 (= lt!204006 (lemmaDropTail!278 lt!204010 0))))

(declare-fun tail!640 (List!4451) List!4451)

(assert (=> b!457654 (= (tail!640 (drop!315 lt!204010 0)) (drop!315 lt!204010 (+ 0 1)))))

(declare-fun lt!204005 () Unit!8029)

(assert (=> b!457654 (= lt!204005 lt!204006)))

(assert (= (and d!174695 res!203478) b!457652))

(assert (= (and d!174695 c!92398) b!457653))

(assert (= (and d!174695 (not c!92398)) b!457654))

(declare-fun m!725041 () Bool)

(assert (=> d!174695 m!725041))

(declare-fun m!725043 () Bool)

(assert (=> d!174695 m!725043))

(assert (=> d!174695 m!725041))

(declare-fun m!725045 () Bool)

(assert (=> d!174695 m!725045))

(declare-fun m!725047 () Bool)

(assert (=> d!174695 m!725047))

(assert (=> d!174695 m!725045))

(declare-fun m!725049 () Bool)

(assert (=> d!174695 m!725049))

(assert (=> b!457652 m!725049))

(declare-fun m!725051 () Bool)

(assert (=> b!457654 m!725051))

(declare-fun m!725053 () Bool)

(assert (=> b!457654 m!725053))

(declare-fun m!725055 () Bool)

(assert (=> b!457654 m!725055))

(declare-fun m!725057 () Bool)

(assert (=> b!457654 m!725057))

(declare-fun m!725059 () Bool)

(assert (=> b!457654 m!725059))

(declare-fun m!725061 () Bool)

(assert (=> b!457654 m!725061))

(declare-fun m!725063 () Bool)

(assert (=> b!457654 m!725063))

(assert (=> b!457654 m!725055))

(declare-fun m!725065 () Bool)

(assert (=> b!457654 m!725065))

(assert (=> b!457654 m!725037))

(declare-fun m!725067 () Bool)

(assert (=> b!457654 m!725067))

(declare-fun m!725069 () Bool)

(assert (=> b!457654 m!725069))

(declare-fun m!725071 () Bool)

(assert (=> b!457654 m!725071))

(assert (=> b!457654 m!725059))

(assert (=> b!457654 m!725065))

(declare-fun m!725073 () Bool)

(assert (=> b!457654 m!725073))

(assert (=> b!457654 m!725073))

(assert (=> b!457654 m!725051))

(assert (=> b!457463 d!174695))

(declare-fun d!174697 () Bool)

(declare-fun list!1975 (Conc!1548) List!4449)

(assert (=> d!174697 (= (list!1971 lt!203857) (list!1975 (c!92354 lt!203857)))))

(declare-fun bs!56765 () Bool)

(assert (= bs!56765 d!174697))

(declare-fun m!725075 () Bool)

(assert (=> bs!56765 m!725075))

(assert (=> b!457463 d!174697))

(declare-fun d!174699 () Bool)

(declare-fun e!280119 () Bool)

(assert (=> d!174699 e!280119))

(declare-fun res!203481 () Bool)

(assert (=> d!174699 (=> (not res!203481) (not e!280119))))

(declare-fun lt!204014 () BalanceConc!3106)

(assert (=> d!174699 (= res!203481 (= (list!1974 lt!204014) (Cons!4441 (h!9838 tokens!465) Nil!4441)))))

(declare-fun singleton!196 (Token!1470) BalanceConc!3106)

(assert (=> d!174699 (= lt!204014 (singleton!196 (h!9838 tokens!465)))))

(assert (=> d!174699 (= (singletonSeq!409 (h!9838 tokens!465)) lt!204014)))

(declare-fun b!457657 () Bool)

(declare-fun isBalanced!475 (Conc!1549) Bool)

(assert (=> b!457657 (= e!280119 (isBalanced!475 (c!92356 lt!204014)))))

(assert (= (and d!174699 res!203481) b!457657))

(declare-fun m!725077 () Bool)

(assert (=> d!174699 m!725077))

(declare-fun m!725079 () Bool)

(assert (=> d!174699 m!725079))

(declare-fun m!725081 () Bool)

(assert (=> b!457657 m!725081))

(assert (=> b!457463 d!174699))

(declare-fun d!174701 () Bool)

(declare-fun c!92401 () Bool)

(assert (=> d!174701 (= c!92401 ((_ is Cons!4441) (Cons!4441 (h!9838 tokens!465) Nil!4441)))))

(declare-fun e!280122 () List!4449)

(assert (=> d!174701 (= (printList!423 thiss!17480 (Cons!4441 (h!9838 tokens!465) Nil!4441)) e!280122)))

(declare-fun b!457662 () Bool)

(assert (=> b!457662 (= e!280122 (++!1294 (list!1971 (charsOf!506 (h!9838 (Cons!4441 (h!9838 tokens!465) Nil!4441)))) (printList!423 thiss!17480 (t!71615 (Cons!4441 (h!9838 tokens!465) Nil!4441)))))))

(declare-fun b!457663 () Bool)

(assert (=> b!457663 (= e!280122 Nil!4439)))

(assert (= (and d!174701 c!92401) b!457662))

(assert (= (and d!174701 (not c!92401)) b!457663))

(declare-fun m!725083 () Bool)

(assert (=> b!457662 m!725083))

(assert (=> b!457662 m!725083))

(declare-fun m!725085 () Bool)

(assert (=> b!457662 m!725085))

(declare-fun m!725087 () Bool)

(assert (=> b!457662 m!725087))

(assert (=> b!457662 m!725085))

(assert (=> b!457662 m!725087))

(declare-fun m!725089 () Bool)

(assert (=> b!457662 m!725089))

(assert (=> b!457463 d!174701))

(declare-fun b!457692 () Bool)

(declare-fun res!203499 () Bool)

(declare-fun e!280138 () Bool)

(assert (=> b!457692 (=> res!203499 e!280138)))

(declare-fun e!280140 () Bool)

(assert (=> b!457692 (= res!203499 e!280140)))

(declare-fun res!203502 () Bool)

(assert (=> b!457692 (=> (not res!203502) (not e!280140))))

(declare-fun lt!204017 () Bool)

(assert (=> b!457692 (= res!203502 lt!204017)))

(declare-fun d!174703 () Bool)

(declare-fun e!280141 () Bool)

(assert (=> d!174703 e!280141))

(declare-fun c!92410 () Bool)

(assert (=> d!174703 (= c!92410 ((_ is EmptyExpr!1087) (regex!863 (rule!1558 (h!9838 tokens!465)))))))

(declare-fun e!280137 () Bool)

(assert (=> d!174703 (= lt!204017 e!280137)))

(declare-fun c!92408 () Bool)

(assert (=> d!174703 (= c!92408 (isEmpty!3411 lt!203855))))

(declare-fun validRegex!320 (Regex!1087) Bool)

(assert (=> d!174703 (validRegex!320 (regex!863 (rule!1558 (h!9838 tokens!465))))))

(assert (=> d!174703 (= (matchR!405 (regex!863 (rule!1558 (h!9838 tokens!465))) lt!203855) lt!204017)))

(declare-fun bm!31699 () Bool)

(declare-fun call!31704 () Bool)

(assert (=> bm!31699 (= call!31704 (isEmpty!3411 lt!203855))))

(declare-fun b!457693 () Bool)

(assert (=> b!457693 (= e!280141 (= lt!204017 call!31704))))

(declare-fun b!457694 () Bool)

(declare-fun e!280142 () Bool)

(assert (=> b!457694 (= e!280142 (not lt!204017))))

(declare-fun b!457695 () Bool)

(declare-fun res!203500 () Bool)

(assert (=> b!457695 (=> (not res!203500) (not e!280140))))

(declare-fun tail!641 (List!4449) List!4449)

(assert (=> b!457695 (= res!203500 (isEmpty!3411 (tail!641 lt!203855)))))

(declare-fun b!457696 () Bool)

(declare-fun head!1115 (List!4449) C!3096)

(assert (=> b!457696 (= e!280140 (= (head!1115 lt!203855) (c!92355 (regex!863 (rule!1558 (h!9838 tokens!465))))))))

(declare-fun b!457697 () Bool)

(declare-fun e!280143 () Bool)

(assert (=> b!457697 (= e!280138 e!280143)))

(declare-fun res!203503 () Bool)

(assert (=> b!457697 (=> (not res!203503) (not e!280143))))

(assert (=> b!457697 (= res!203503 (not lt!204017))))

(declare-fun b!457698 () Bool)

(declare-fun res!203504 () Bool)

(declare-fun e!280139 () Bool)

(assert (=> b!457698 (=> res!203504 e!280139)))

(assert (=> b!457698 (= res!203504 (not (isEmpty!3411 (tail!641 lt!203855))))))

(declare-fun b!457699 () Bool)

(declare-fun derivativeStep!211 (Regex!1087 C!3096) Regex!1087)

(assert (=> b!457699 (= e!280137 (matchR!405 (derivativeStep!211 (regex!863 (rule!1558 (h!9838 tokens!465))) (head!1115 lt!203855)) (tail!641 lt!203855)))))

(declare-fun b!457700 () Bool)

(declare-fun res!203501 () Bool)

(assert (=> b!457700 (=> (not res!203501) (not e!280140))))

(assert (=> b!457700 (= res!203501 (not call!31704))))

(declare-fun b!457701 () Bool)

(declare-fun nullable!245 (Regex!1087) Bool)

(assert (=> b!457701 (= e!280137 (nullable!245 (regex!863 (rule!1558 (h!9838 tokens!465)))))))

(declare-fun b!457702 () Bool)

(assert (=> b!457702 (= e!280139 (not (= (head!1115 lt!203855) (c!92355 (regex!863 (rule!1558 (h!9838 tokens!465)))))))))

(declare-fun b!457703 () Bool)

(declare-fun res!203505 () Bool)

(assert (=> b!457703 (=> res!203505 e!280138)))

(assert (=> b!457703 (= res!203505 (not ((_ is ElementMatch!1087) (regex!863 (rule!1558 (h!9838 tokens!465))))))))

(assert (=> b!457703 (= e!280142 e!280138)))

(declare-fun b!457704 () Bool)

(assert (=> b!457704 (= e!280141 e!280142)))

(declare-fun c!92409 () Bool)

(assert (=> b!457704 (= c!92409 ((_ is EmptyLang!1087) (regex!863 (rule!1558 (h!9838 tokens!465)))))))

(declare-fun b!457705 () Bool)

(assert (=> b!457705 (= e!280143 e!280139)))

(declare-fun res!203498 () Bool)

(assert (=> b!457705 (=> res!203498 e!280139)))

(assert (=> b!457705 (= res!203498 call!31704)))

(assert (= (and d!174703 c!92408) b!457701))

(assert (= (and d!174703 (not c!92408)) b!457699))

(assert (= (and d!174703 c!92410) b!457693))

(assert (= (and d!174703 (not c!92410)) b!457704))

(assert (= (and b!457704 c!92409) b!457694))

(assert (= (and b!457704 (not c!92409)) b!457703))

(assert (= (and b!457703 (not res!203505)) b!457692))

(assert (= (and b!457692 res!203502) b!457700))

(assert (= (and b!457700 res!203501) b!457695))

(assert (= (and b!457695 res!203500) b!457696))

(assert (= (and b!457692 (not res!203499)) b!457697))

(assert (= (and b!457697 res!203503) b!457705))

(assert (= (and b!457705 (not res!203498)) b!457698))

(assert (= (and b!457698 (not res!203504)) b!457702))

(assert (= (or b!457693 b!457700 b!457705) bm!31699))

(declare-fun m!725091 () Bool)

(assert (=> b!457701 m!725091))

(declare-fun m!725093 () Bool)

(assert (=> d!174703 m!725093))

(declare-fun m!725095 () Bool)

(assert (=> d!174703 m!725095))

(declare-fun m!725097 () Bool)

(assert (=> b!457695 m!725097))

(assert (=> b!457695 m!725097))

(declare-fun m!725099 () Bool)

(assert (=> b!457695 m!725099))

(declare-fun m!725101 () Bool)

(assert (=> b!457696 m!725101))

(assert (=> bm!31699 m!725093))

(assert (=> b!457702 m!725101))

(assert (=> b!457699 m!725101))

(assert (=> b!457699 m!725101))

(declare-fun m!725103 () Bool)

(assert (=> b!457699 m!725103))

(assert (=> b!457699 m!725097))

(assert (=> b!457699 m!725103))

(assert (=> b!457699 m!725097))

(declare-fun m!725105 () Bool)

(assert (=> b!457699 m!725105))

(assert (=> b!457698 m!725097))

(assert (=> b!457698 m!725097))

(assert (=> b!457698 m!725099))

(assert (=> b!457441 d!174703))

(declare-fun d!174705 () Bool)

(declare-fun res!203510 () Bool)

(declare-fun e!280148 () Bool)

(assert (=> d!174705 (=> res!203510 e!280148)))

(assert (=> d!174705 (= res!203510 ((_ is Nil!4441) (t!71615 tokens!465)))))

(assert (=> d!174705 (= (forall!1290 (t!71615 tokens!465) lambda!13405) e!280148)))

(declare-fun b!457710 () Bool)

(declare-fun e!280149 () Bool)

(assert (=> b!457710 (= e!280148 e!280149)))

(declare-fun res!203511 () Bool)

(assert (=> b!457710 (=> (not res!203511) (not e!280149))))

(declare-fun dynLambda!2701 (Int Token!1470) Bool)

(assert (=> b!457710 (= res!203511 (dynLambda!2701 lambda!13405 (h!9838 (t!71615 tokens!465))))))

(declare-fun b!457711 () Bool)

(assert (=> b!457711 (= e!280149 (forall!1290 (t!71615 (t!71615 tokens!465)) lambda!13405))))

(assert (= (and d!174705 (not res!203510)) b!457710))

(assert (= (and b!457710 res!203511) b!457711))

(declare-fun b_lambda!18975 () Bool)

(assert (=> (not b_lambda!18975) (not b!457710)))

(declare-fun m!725107 () Bool)

(assert (=> b!457710 m!725107))

(declare-fun m!725109 () Bool)

(assert (=> b!457711 m!725109))

(assert (=> b!457446 d!174705))

(declare-fun b!457728 () Bool)

(declare-fun e!280164 () Bool)

(declare-fun inv!17 (TokenValue!885) Bool)

(assert (=> b!457728 (= e!280164 (inv!17 (value!28911 (h!9838 tokens!465))))))

(declare-fun b!457729 () Bool)

(declare-fun e!280162 () Bool)

(declare-fun inv!16 (TokenValue!885) Bool)

(assert (=> b!457729 (= e!280162 (inv!16 (value!28911 (h!9838 tokens!465))))))

(declare-fun d!174707 () Bool)

(declare-fun c!92418 () Bool)

(assert (=> d!174707 (= c!92418 ((_ is IntegerValue!2655) (value!28911 (h!9838 tokens!465))))))

(assert (=> d!174707 (= (inv!21 (value!28911 (h!9838 tokens!465))) e!280162)))

(declare-fun b!457730 () Bool)

(assert (=> b!457730 (= e!280162 e!280164)))

(declare-fun c!92417 () Bool)

(assert (=> b!457730 (= c!92417 ((_ is IntegerValue!2656) (value!28911 (h!9838 tokens!465))))))

(declare-fun b!457731 () Bool)

(declare-fun res!203518 () Bool)

(declare-fun e!280163 () Bool)

(assert (=> b!457731 (=> res!203518 e!280163)))

(assert (=> b!457731 (= res!203518 (not ((_ is IntegerValue!2657) (value!28911 (h!9838 tokens!465)))))))

(assert (=> b!457731 (= e!280164 e!280163)))

(declare-fun b!457732 () Bool)

(declare-fun inv!15 (TokenValue!885) Bool)

(assert (=> b!457732 (= e!280163 (inv!15 (value!28911 (h!9838 tokens!465))))))

(assert (= (and d!174707 c!92418) b!457729))

(assert (= (and d!174707 (not c!92418)) b!457730))

(assert (= (and b!457730 c!92417) b!457728))

(assert (= (and b!457730 (not c!92417)) b!457731))

(assert (= (and b!457731 (not res!203518)) b!457732))

(declare-fun m!725111 () Bool)

(assert (=> b!457728 m!725111))

(declare-fun m!725113 () Bool)

(assert (=> b!457729 m!725113))

(declare-fun m!725115 () Bool)

(assert (=> b!457732 m!725115))

(assert (=> b!457445 d!174707))

(declare-fun d!174709 () Bool)

(assert (=> d!174709 (= (list!1971 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203849 separatorToken!170 0)) (list!1975 (c!92354 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203849 separatorToken!170 0))))))

(declare-fun bs!56766 () Bool)

(assert (= bs!56766 d!174709))

(declare-fun m!725117 () Bool)

(assert (=> bs!56766 m!725117))

(assert (=> b!457465 d!174709))

(declare-fun bs!56793 () Bool)

(declare-fun d!174711 () Bool)

(assert (= bs!56793 (and d!174711 b!457452)))

(declare-fun lambda!13428 () Int)

(assert (=> bs!56793 (= lambda!13428 lambda!13405)))

(declare-fun bs!56794 () Bool)

(assert (= bs!56794 (and d!174711 b!457450)))

(assert (=> bs!56794 (not (= lambda!13428 lambda!13406))))

(declare-fun bs!56795 () Bool)

(assert (= bs!56795 (and d!174711 d!174673)))

(assert (=> bs!56795 (not (= lambda!13428 lambda!13420))))

(declare-fun bs!56796 () Bool)

(declare-fun b!457908 () Bool)

(assert (= bs!56796 (and b!457908 b!457452)))

(declare-fun lambda!13429 () Int)

(assert (=> bs!56796 (not (= lambda!13429 lambda!13405))))

(declare-fun bs!56797 () Bool)

(assert (= bs!56797 (and b!457908 b!457450)))

(assert (=> bs!56797 (= lambda!13429 lambda!13406)))

(declare-fun bs!56798 () Bool)

(assert (= bs!56798 (and b!457908 d!174673)))

(assert (=> bs!56798 (= lambda!13429 lambda!13420)))

(declare-fun bs!56799 () Bool)

(assert (= bs!56799 (and b!457908 d!174711)))

(assert (=> bs!56799 (not (= lambda!13429 lambda!13428))))

(declare-fun b!457917 () Bool)

(declare-fun e!280278 () Bool)

(assert (=> b!457917 (= e!280278 true)))

(declare-fun b!457916 () Bool)

(declare-fun e!280277 () Bool)

(assert (=> b!457916 (= e!280277 e!280278)))

(declare-fun b!457915 () Bool)

(declare-fun e!280276 () Bool)

(assert (=> b!457915 (= e!280276 e!280277)))

(assert (=> b!457908 e!280276))

(assert (= b!457916 b!457917))

(assert (= b!457915 b!457916))

(assert (= (and b!457908 ((_ is Cons!4440) rules!1920)) b!457915))

(assert (=> b!457917 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13429))))

(assert (=> b!457917 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13429))))

(assert (=> b!457908 true))

(declare-fun b!457904 () Bool)

(declare-fun e!280271 () BalanceConc!3104)

(declare-fun call!31734 () Token!1470)

(assert (=> b!457904 (= e!280271 (charsOf!506 call!31734))))

(declare-fun lt!204119 () BalanceConc!3104)

(assert (=> d!174711 (= (list!1971 lt!204119) (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 (dropList!246 lt!203849 0) separatorToken!170))))

(declare-fun e!280274 () BalanceConc!3104)

(assert (=> d!174711 (= lt!204119 e!280274)))

(declare-fun c!92455 () Bool)

(assert (=> d!174711 (= c!92455 (>= 0 (size!3639 lt!203849)))))

(declare-fun lt!204121 () Unit!8029)

(declare-fun lemmaContentSubsetPreservesForall!190 (List!4451 List!4451 Int) Unit!8029)

(assert (=> d!174711 (= lt!204121 (lemmaContentSubsetPreservesForall!190 (list!1974 lt!203849) (dropList!246 lt!203849 0) lambda!13428))))

(declare-fun e!280270 () Bool)

(assert (=> d!174711 e!280270))

(declare-fun res!203605 () Bool)

(assert (=> d!174711 (=> (not res!203605) (not e!280270))))

(assert (=> d!174711 (= res!203605 (>= 0 0))))

(assert (=> d!174711 (= (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203849 separatorToken!170 0) lt!204119)))

(declare-fun bm!31726 () Bool)

(declare-fun call!31732 () Token!1470)

(assert (=> bm!31726 (= call!31734 call!31732)))

(declare-fun call!31733 () BalanceConc!3104)

(declare-fun bm!31727 () Bool)

(declare-fun c!92456 () Bool)

(declare-fun c!92458 () Bool)

(assert (=> bm!31727 (= call!31733 (charsOf!506 (ite c!92458 call!31732 (ite c!92456 separatorToken!170 call!31734))))))

(declare-fun b!457905 () Bool)

(assert (=> b!457905 (= e!280270 (<= 0 (size!3639 lt!203849)))))

(declare-fun b!457906 () Bool)

(declare-fun e!280272 () BalanceConc!3104)

(assert (=> b!457906 (= e!280272 (BalanceConc!3105 Empty!1548))))

(assert (=> b!457906 (= (print!474 thiss!17480 (singletonSeq!409 call!31734)) (printTailRec!435 thiss!17480 (singletonSeq!409 call!31734) 0 (BalanceConc!3105 Empty!1548)))))

(declare-fun lt!204122 () Unit!8029)

(declare-fun Unit!8039 () Unit!8029)

(assert (=> b!457906 (= lt!204122 Unit!8039)))

(declare-fun call!31735 () BalanceConc!3104)

(declare-fun lt!204109 () BalanceConc!3104)

(declare-fun lt!204111 () Unit!8029)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!194 (LexerInterface!749 List!4450 List!4449 List!4449) Unit!8029)

(assert (=> b!457906 (= lt!204111 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!194 thiss!17480 rules!1920 (list!1971 call!31735) (list!1971 lt!204109)))))

(assert (=> b!457906 false))

(declare-fun lt!204110 () Unit!8029)

(declare-fun Unit!8040 () Unit!8029)

(assert (=> b!457906 (= lt!204110 Unit!8040)))

(declare-fun b!457907 () Bool)

(declare-fun call!31731 () BalanceConc!3104)

(assert (=> b!457907 (= e!280272 (++!1296 call!31731 lt!204109))))

(declare-fun e!280275 () BalanceConc!3104)

(assert (=> b!457908 (= e!280274 e!280275)))

(declare-fun lt!204115 () List!4451)

(assert (=> b!457908 (= lt!204115 (list!1974 lt!203849))))

(declare-fun lt!204117 () Unit!8029)

(assert (=> b!457908 (= lt!204117 (lemmaDropApply!286 lt!204115 0))))

(assert (=> b!457908 (= (head!1114 (drop!315 lt!204115 0)) (apply!1139 lt!204115 0))))

(declare-fun lt!204120 () Unit!8029)

(assert (=> b!457908 (= lt!204120 lt!204117)))

(declare-fun lt!204118 () List!4451)

(assert (=> b!457908 (= lt!204118 (list!1974 lt!203849))))

(declare-fun lt!204113 () Unit!8029)

(assert (=> b!457908 (= lt!204113 (lemmaDropTail!278 lt!204118 0))))

(assert (=> b!457908 (= (tail!640 (drop!315 lt!204118 0)) (drop!315 lt!204118 (+ 0 1)))))

(declare-fun lt!204114 () Unit!8029)

(assert (=> b!457908 (= lt!204114 lt!204113)))

(declare-fun lt!204112 () Unit!8029)

(assert (=> b!457908 (= lt!204112 (forallContained!416 (list!1974 lt!203849) lambda!13429 (apply!1138 lt!203849 0)))))

(assert (=> b!457908 (= lt!204109 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203849 separatorToken!170 (+ 0 1)))))

(declare-fun lt!204116 () Option!1161)

(assert (=> b!457908 (= lt!204116 (maxPrefixZipperSequence!428 thiss!17480 rules!1920 (++!1296 (charsOf!506 (apply!1138 lt!203849 0)) lt!204109)))))

(declare-fun res!203606 () Bool)

(assert (=> b!457908 (= res!203606 ((_ is Some!1160) lt!204116))))

(declare-fun e!280273 () Bool)

(assert (=> b!457908 (=> (not res!203606) (not e!280273))))

(assert (=> b!457908 (= c!92458 e!280273)))

(declare-fun bm!31728 () Bool)

(assert (=> bm!31728 (= call!31735 call!31733)))

(declare-fun b!457909 () Bool)

(declare-fun e!280269 () Bool)

(assert (=> b!457909 (= e!280269 (not (= (_1!2921 (v!15491 lt!204116)) call!31732)))))

(declare-fun b!457910 () Bool)

(assert (=> b!457910 (= e!280273 (= (_1!2921 (v!15491 lt!204116)) (apply!1138 lt!203849 0)))))

(declare-fun b!457911 () Bool)

(assert (=> b!457911 (= e!280271 call!31733)))

(declare-fun b!457912 () Bool)

(assert (=> b!457912 (= e!280275 call!31731)))

(declare-fun b!457913 () Bool)

(assert (=> b!457913 (= c!92456 e!280269)))

(declare-fun res!203604 () Bool)

(assert (=> b!457913 (=> (not res!203604) (not e!280269))))

(assert (=> b!457913 (= res!203604 ((_ is Some!1160) lt!204116))))

(assert (=> b!457913 (= e!280275 e!280272)))

(declare-fun bm!31729 () Bool)

(declare-fun c!92457 () Bool)

(assert (=> bm!31729 (= c!92457 c!92458)))

(assert (=> bm!31729 (= call!31731 (++!1296 e!280271 (ite c!92458 lt!204109 call!31735)))))

(declare-fun b!457914 () Bool)

(assert (=> b!457914 (= e!280274 (BalanceConc!3105 Empty!1548))))

(declare-fun bm!31730 () Bool)

(assert (=> bm!31730 (= call!31732 (apply!1138 lt!203849 0))))

(assert (= (and d!174711 res!203605) b!457905))

(assert (= (and d!174711 c!92455) b!457914))

(assert (= (and d!174711 (not c!92455)) b!457908))

(assert (= (and b!457908 res!203606) b!457910))

(assert (= (and b!457908 c!92458) b!457912))

(assert (= (and b!457908 (not c!92458)) b!457913))

(assert (= (and b!457913 res!203604) b!457909))

(assert (= (and b!457913 c!92456) b!457907))

(assert (= (and b!457913 (not c!92456)) b!457906))

(assert (= (or b!457907 b!457906) bm!31726))

(assert (= (or b!457907 b!457906) bm!31728))

(assert (= (or b!457912 bm!31726 b!457909) bm!31730))

(assert (= (or b!457912 bm!31728) bm!31727))

(assert (= (or b!457912 b!457907) bm!31729))

(assert (= (and bm!31729 c!92457) b!457911))

(assert (= (and bm!31729 (not c!92457)) b!457904))

(declare-fun m!725371 () Bool)

(assert (=> b!457904 m!725371))

(declare-fun m!725373 () Bool)

(assert (=> b!457905 m!725373))

(declare-fun m!725375 () Bool)

(assert (=> bm!31729 m!725375))

(declare-fun m!725377 () Bool)

(assert (=> bm!31727 m!725377))

(declare-fun m!725379 () Bool)

(assert (=> b!457907 m!725379))

(declare-fun m!725381 () Bool)

(assert (=> d!174711 m!725381))

(declare-fun m!725383 () Bool)

(assert (=> d!174711 m!725383))

(assert (=> d!174711 m!725373))

(declare-fun m!725385 () Bool)

(assert (=> d!174711 m!725385))

(assert (=> d!174711 m!724959))

(assert (=> d!174711 m!725381))

(declare-fun m!725387 () Bool)

(assert (=> d!174711 m!725387))

(assert (=> d!174711 m!724959))

(assert (=> d!174711 m!725381))

(declare-fun m!725389 () Bool)

(assert (=> b!457910 m!725389))

(declare-fun m!725391 () Bool)

(assert (=> b!457906 m!725391))

(declare-fun m!725393 () Bool)

(assert (=> b!457906 m!725393))

(declare-fun m!725395 () Bool)

(assert (=> b!457906 m!725395))

(declare-fun m!725397 () Bool)

(assert (=> b!457906 m!725397))

(assert (=> b!457906 m!725391))

(assert (=> b!457906 m!725397))

(declare-fun m!725399 () Bool)

(assert (=> b!457906 m!725399))

(assert (=> b!457906 m!725393))

(declare-fun m!725401 () Bool)

(assert (=> b!457906 m!725401))

(assert (=> b!457906 m!725393))

(assert (=> bm!31730 m!725389))

(declare-fun m!725403 () Bool)

(assert (=> b!457908 m!725403))

(declare-fun m!725405 () Bool)

(assert (=> b!457908 m!725405))

(declare-fun m!725407 () Bool)

(assert (=> b!457908 m!725407))

(declare-fun m!725409 () Bool)

(assert (=> b!457908 m!725409))

(assert (=> b!457908 m!725389))

(declare-fun m!725411 () Bool)

(assert (=> b!457908 m!725411))

(assert (=> b!457908 m!725403))

(declare-fun m!725413 () Bool)

(assert (=> b!457908 m!725413))

(declare-fun m!725415 () Bool)

(assert (=> b!457908 m!725415))

(assert (=> b!457908 m!725415))

(declare-fun m!725417 () Bool)

(assert (=> b!457908 m!725417))

(assert (=> b!457908 m!724959))

(declare-fun m!725419 () Bool)

(assert (=> b!457908 m!725419))

(declare-fun m!725421 () Bool)

(assert (=> b!457908 m!725421))

(declare-fun m!725423 () Bool)

(assert (=> b!457908 m!725423))

(declare-fun m!725425 () Bool)

(assert (=> b!457908 m!725425))

(assert (=> b!457908 m!725419))

(assert (=> b!457908 m!725389))

(assert (=> b!457908 m!725425))

(assert (=> b!457908 m!724959))

(assert (=> b!457908 m!725389))

(declare-fun m!725427 () Bool)

(assert (=> b!457908 m!725427))

(assert (=> b!457465 d!174711))

(declare-fun bs!56801 () Bool)

(declare-fun b!457964 () Bool)

(assert (= bs!56801 (and b!457964 d!174711)))

(declare-fun lambda!13432 () Int)

(assert (=> bs!56801 (not (= lambda!13432 lambda!13428))))

(declare-fun bs!56802 () Bool)

(assert (= bs!56802 (and b!457964 b!457452)))

(assert (=> bs!56802 (not (= lambda!13432 lambda!13405))))

(declare-fun bs!56803 () Bool)

(assert (= bs!56803 (and b!457964 b!457450)))

(assert (=> bs!56803 (= lambda!13432 lambda!13406)))

(declare-fun bs!56804 () Bool)

(assert (= bs!56804 (and b!457964 b!457908)))

(assert (=> bs!56804 (= lambda!13432 lambda!13429)))

(declare-fun bs!56805 () Bool)

(assert (= bs!56805 (and b!457964 d!174673)))

(assert (=> bs!56805 (= lambda!13432 lambda!13420)))

(declare-fun b!457967 () Bool)

(declare-fun e!280305 () Bool)

(assert (=> b!457967 (= e!280305 true)))

(declare-fun b!457966 () Bool)

(declare-fun e!280304 () Bool)

(assert (=> b!457966 (= e!280304 e!280305)))

(declare-fun b!457965 () Bool)

(declare-fun e!280303 () Bool)

(assert (=> b!457965 (= e!280303 e!280304)))

(assert (=> b!457964 e!280303))

(assert (= b!457966 b!457967))

(assert (= b!457965 b!457966))

(assert (= (and b!457964 ((_ is Cons!4440) rules!1920)) b!457965))

(assert (=> b!457967 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13432))))

(assert (=> b!457967 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13432))))

(assert (=> b!457964 true))

(declare-fun b!457957 () Bool)

(declare-fun e!280299 () BalanceConc!3104)

(assert (=> b!457957 (= e!280299 (charsOf!506 separatorToken!170))))

(declare-fun b!457958 () Bool)

(declare-fun e!280301 () List!4449)

(assert (=> b!457958 (= e!280301 Nil!4439)))

(declare-fun bm!31742 () Bool)

(declare-fun c!92472 () Bool)

(declare-fun call!31749 () BalanceConc!3104)

(declare-fun call!31748 () List!4449)

(declare-fun call!31751 () BalanceConc!3104)

(assert (=> bm!31742 (= call!31748 (list!1971 (ite c!92472 call!31749 call!31751)))))

(declare-fun b!457959 () Bool)

(declare-fun e!280300 () List!4449)

(declare-fun call!31750 () List!4449)

(assert (=> b!457959 (= e!280300 call!31750)))

(declare-fun b!457960 () Bool)

(assert (=> b!457960 (= e!280299 call!31751)))

(declare-fun bm!31743 () Bool)

(declare-fun call!31747 () List!4449)

(assert (=> bm!31743 (= call!31747 (list!1971 e!280299))))

(declare-fun c!92471 () Bool)

(declare-fun c!92470 () Bool)

(assert (=> bm!31743 (= c!92471 c!92470)))

(declare-fun b!457961 () Bool)

(declare-fun e!280302 () List!4449)

(assert (=> b!457961 (= e!280302 Nil!4439)))

(assert (=> b!457961 (= (print!474 thiss!17480 (singletonSeq!409 (h!9838 tokens!465))) (printTailRec!435 thiss!17480 (singletonSeq!409 (h!9838 tokens!465)) 0 (BalanceConc!3105 Empty!1548)))))

(declare-fun lt!204152 () Unit!8029)

(declare-fun Unit!8041 () Unit!8029)

(assert (=> b!457961 (= lt!204152 Unit!8041)))

(declare-fun lt!204147 () List!4449)

(declare-fun lt!204151 () Unit!8029)

(assert (=> b!457961 (= lt!204151 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!194 thiss!17480 rules!1920 call!31747 lt!204147))))

(assert (=> b!457961 false))

(declare-fun lt!204150 () Unit!8029)

(declare-fun Unit!8042 () Unit!8029)

(assert (=> b!457961 (= lt!204150 Unit!8042)))

(declare-fun bm!31744 () Bool)

(assert (=> bm!31744 (= call!31751 call!31749)))

(declare-fun d!174765 () Bool)

(declare-fun c!92469 () Bool)

(assert (=> d!174765 (= c!92469 ((_ is Cons!4441) tokens!465))))

(assert (=> d!174765 (= (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!280301)))

(declare-fun b!457962 () Bool)

(declare-fun lt!204148 () Option!1160)

(assert (=> b!457962 (= c!92470 (and ((_ is Some!1159) lt!204148) (not (= (_1!2919 (v!15490 lt!204148)) (h!9838 tokens!465)))))))

(assert (=> b!457962 (= e!280300 e!280302)))

(declare-fun bm!31745 () Bool)

(assert (=> bm!31745 (= call!31749 (charsOf!506 (h!9838 tokens!465)))))

(declare-fun b!457963 () Bool)

(assert (=> b!457963 (= e!280302 (++!1294 call!31750 lt!204147))))

(assert (=> b!457964 (= e!280301 e!280300)))

(declare-fun lt!204149 () Unit!8029)

(assert (=> b!457964 (= lt!204149 (forallContained!416 tokens!465 lambda!13432 (h!9838 tokens!465)))))

(assert (=> b!457964 (= lt!204147 (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 (t!71615 tokens!465) separatorToken!170))))

(assert (=> b!457964 (= lt!204148 (maxPrefix!465 thiss!17480 rules!1920 (++!1294 (list!1971 (charsOf!506 (h!9838 tokens!465))) lt!204147)))))

(assert (=> b!457964 (= c!92472 (and ((_ is Some!1159) lt!204148) (= (_1!2919 (v!15490 lt!204148)) (h!9838 tokens!465))))))

(declare-fun bm!31746 () Bool)

(assert (=> bm!31746 (= call!31750 (++!1294 call!31748 (ite c!92472 lt!204147 call!31747)))))

(assert (= (and d!174765 c!92469) b!457964))

(assert (= (and d!174765 (not c!92469)) b!457958))

(assert (= (and b!457964 c!92472) b!457959))

(assert (= (and b!457964 (not c!92472)) b!457962))

(assert (= (and b!457962 c!92470) b!457963))

(assert (= (and b!457962 (not c!92470)) b!457961))

(assert (= (or b!457963 b!457961) bm!31744))

(assert (= (or b!457963 b!457961) bm!31743))

(assert (= (and bm!31743 c!92471) b!457957))

(assert (= (and bm!31743 (not c!92471)) b!457960))

(assert (= (or b!457959 bm!31744) bm!31745))

(assert (= (or b!457959 b!457963) bm!31742))

(assert (= (or b!457959 b!457963) bm!31746))

(assert (=> bm!31745 m!724743))

(declare-fun m!725491 () Bool)

(assert (=> b!457964 m!725491))

(declare-fun m!725493 () Bool)

(assert (=> b!457964 m!725493))

(assert (=> b!457964 m!724745))

(assert (=> b!457964 m!725491))

(assert (=> b!457964 m!724743))

(assert (=> b!457964 m!724745))

(declare-fun m!725495 () Bool)

(assert (=> b!457964 m!725495))

(assert (=> b!457964 m!724733))

(assert (=> b!457964 m!724743))

(declare-fun m!725497 () Bool)

(assert (=> bm!31746 m!725497))

(assert (=> b!457957 m!724739))

(declare-fun m!725499 () Bool)

(assert (=> b!457963 m!725499))

(assert (=> b!457961 m!724667))

(assert (=> b!457961 m!724667))

(assert (=> b!457961 m!725001))

(assert (=> b!457961 m!724667))

(declare-fun m!725501 () Bool)

(assert (=> b!457961 m!725501))

(declare-fun m!725503 () Bool)

(assert (=> b!457961 m!725503))

(declare-fun m!725505 () Bool)

(assert (=> bm!31743 m!725505))

(declare-fun m!725507 () Bool)

(assert (=> bm!31742 m!725507))

(assert (=> b!457465 d!174765))

(declare-fun d!174779 () Bool)

(assert (=> d!174779 (= (list!1971 (seqFromList!1091 lt!203862)) (list!1975 (c!92354 (seqFromList!1091 lt!203862))))))

(declare-fun bs!56806 () Bool)

(assert (= bs!56806 d!174779))

(declare-fun m!725509 () Bool)

(assert (=> bs!56806 m!725509))

(assert (=> b!457448 d!174779))

(declare-fun d!174781 () Bool)

(declare-fun fromListB!487 (List!4449) BalanceConc!3104)

(assert (=> d!174781 (= (seqFromList!1091 lt!203862) (fromListB!487 lt!203862))))

(declare-fun bs!56807 () Bool)

(assert (= bs!56807 d!174781))

(declare-fun m!725511 () Bool)

(assert (=> bs!56807 m!725511))

(assert (=> b!457448 d!174781))

(declare-fun lt!204155 () Bool)

(declare-fun d!174783 () Bool)

(assert (=> d!174783 (= lt!204155 (isEmpty!3412 (list!1974 (_1!2920 (lex!541 thiss!17480 rules!1920 (seqFromList!1091 lt!203855))))))))

(declare-fun isEmpty!3418 (Conc!1549) Bool)

(assert (=> d!174783 (= lt!204155 (isEmpty!3418 (c!92356 (_1!2920 (lex!541 thiss!17480 rules!1920 (seqFromList!1091 lt!203855))))))))

(assert (=> d!174783 (= (isEmpty!3410 (_1!2920 (lex!541 thiss!17480 rules!1920 (seqFromList!1091 lt!203855)))) lt!204155)))

(declare-fun bs!56808 () Bool)

(assert (= bs!56808 d!174783))

(declare-fun m!725513 () Bool)

(assert (=> bs!56808 m!725513))

(assert (=> bs!56808 m!725513))

(declare-fun m!725515 () Bool)

(assert (=> bs!56808 m!725515))

(declare-fun m!725517 () Bool)

(assert (=> bs!56808 m!725517))

(assert (=> b!457447 d!174783))

(declare-fun b!458004 () Bool)

(declare-fun res!203652 () Bool)

(declare-fun e!280338 () Bool)

(assert (=> b!458004 (=> (not res!203652) (not e!280338))))

(declare-fun lt!204164 () tuple2!5408)

(declare-datatypes ((tuple2!5414 0))(
  ( (tuple2!5415 (_1!2923 List!4451) (_2!2923 List!4449)) )
))
(declare-fun lexList!293 (LexerInterface!749 List!4450 List!4449) tuple2!5414)

(assert (=> b!458004 (= res!203652 (= (list!1974 (_1!2920 lt!204164)) (_1!2923 (lexList!293 thiss!17480 rules!1920 (list!1971 (seqFromList!1091 lt!203855))))))))

(declare-fun b!458005 () Bool)

(declare-fun e!280337 () Bool)

(assert (=> b!458005 (= e!280337 (= (_2!2920 lt!204164) (seqFromList!1091 lt!203855)))))

(declare-fun b!458007 () Bool)

(declare-fun e!280336 () Bool)

(assert (=> b!458007 (= e!280337 e!280336)))

(declare-fun res!203654 () Bool)

(declare-fun size!3641 (BalanceConc!3104) Int)

(assert (=> b!458007 (= res!203654 (< (size!3641 (_2!2920 lt!204164)) (size!3641 (seqFromList!1091 lt!203855))))))

(assert (=> b!458007 (=> (not res!203654) (not e!280336))))

(declare-fun b!458008 () Bool)

(assert (=> b!458008 (= e!280338 (= (list!1971 (_2!2920 lt!204164)) (_2!2923 (lexList!293 thiss!17480 rules!1920 (list!1971 (seqFromList!1091 lt!203855))))))))

(declare-fun d!174785 () Bool)

(assert (=> d!174785 e!280338))

(declare-fun res!203653 () Bool)

(assert (=> d!174785 (=> (not res!203653) (not e!280338))))

(assert (=> d!174785 (= res!203653 e!280337)))

(declare-fun c!92475 () Bool)

(assert (=> d!174785 (= c!92475 (> (size!3639 (_1!2920 lt!204164)) 0))))

(declare-fun lexTailRecV2!258 (LexerInterface!749 List!4450 BalanceConc!3104 BalanceConc!3104 BalanceConc!3104 BalanceConc!3106) tuple2!5408)

(assert (=> d!174785 (= lt!204164 (lexTailRecV2!258 thiss!17480 rules!1920 (seqFromList!1091 lt!203855) (BalanceConc!3105 Empty!1548) (seqFromList!1091 lt!203855) (BalanceConc!3107 Empty!1549)))))

(assert (=> d!174785 (= (lex!541 thiss!17480 rules!1920 (seqFromList!1091 lt!203855)) lt!204164)))

(declare-fun b!458006 () Bool)

(assert (=> b!458006 (= e!280336 (not (isEmpty!3410 (_1!2920 lt!204164))))))

(assert (= (and d!174785 c!92475) b!458007))

(assert (= (and d!174785 (not c!92475)) b!458005))

(assert (= (and b!458007 res!203654) b!458006))

(assert (= (and d!174785 res!203653) b!458004))

(assert (= (and b!458004 res!203652) b!458008))

(declare-fun m!725563 () Bool)

(assert (=> b!458006 m!725563))

(declare-fun m!725565 () Bool)

(assert (=> b!458008 m!725565))

(assert (=> b!458008 m!724687))

(declare-fun m!725567 () Bool)

(assert (=> b!458008 m!725567))

(assert (=> b!458008 m!725567))

(declare-fun m!725569 () Bool)

(assert (=> b!458008 m!725569))

(declare-fun m!725571 () Bool)

(assert (=> d!174785 m!725571))

(assert (=> d!174785 m!724687))

(assert (=> d!174785 m!724687))

(declare-fun m!725573 () Bool)

(assert (=> d!174785 m!725573))

(declare-fun m!725575 () Bool)

(assert (=> b!458004 m!725575))

(assert (=> b!458004 m!724687))

(assert (=> b!458004 m!725567))

(assert (=> b!458004 m!725567))

(assert (=> b!458004 m!725569))

(declare-fun m!725577 () Bool)

(assert (=> b!458007 m!725577))

(assert (=> b!458007 m!724687))

(declare-fun m!725579 () Bool)

(assert (=> b!458007 m!725579))

(assert (=> b!457447 d!174785))

(declare-fun d!174811 () Bool)

(assert (=> d!174811 (= (seqFromList!1091 lt!203855) (fromListB!487 lt!203855))))

(declare-fun bs!56827 () Bool)

(assert (= bs!56827 d!174811))

(declare-fun m!725581 () Bool)

(assert (=> bs!56827 m!725581))

(assert (=> b!457447 d!174811))

(declare-fun d!174813 () Bool)

(declare-fun isEmpty!3419 (Option!1160) Bool)

(assert (=> d!174813 (= (isDefined!1000 lt!203864) (not (isEmpty!3419 lt!203864)))))

(declare-fun bs!56828 () Bool)

(assert (= bs!56828 d!174813))

(declare-fun m!725583 () Bool)

(assert (=> bs!56828 m!725583))

(assert (=> b!457468 d!174813))

(declare-fun b!458027 () Bool)

(declare-fun e!280346 () Option!1160)

(declare-fun lt!204178 () Option!1160)

(declare-fun lt!204176 () Option!1160)

(assert (=> b!458027 (= e!280346 (ite (and ((_ is None!1159) lt!204178) ((_ is None!1159) lt!204176)) None!1159 (ite ((_ is None!1159) lt!204176) lt!204178 (ite ((_ is None!1159) lt!204178) lt!204176 (ite (>= (size!3635 (_1!2919 (v!15490 lt!204178))) (size!3635 (_1!2919 (v!15490 lt!204176)))) lt!204178 lt!204176)))))))

(declare-fun call!31754 () Option!1160)

(assert (=> b!458027 (= lt!204178 call!31754)))

(assert (=> b!458027 (= lt!204176 (maxPrefix!465 thiss!17480 (t!71614 rules!1920) lt!203862))))

(declare-fun d!174815 () Bool)

(declare-fun e!280347 () Bool)

(assert (=> d!174815 e!280347))

(declare-fun res!203669 () Bool)

(assert (=> d!174815 (=> res!203669 e!280347)))

(declare-fun lt!204179 () Option!1160)

(assert (=> d!174815 (= res!203669 (isEmpty!3419 lt!204179))))

(assert (=> d!174815 (= lt!204179 e!280346)))

(declare-fun c!92478 () Bool)

(assert (=> d!174815 (= c!92478 (and ((_ is Cons!4440) rules!1920) ((_ is Nil!4440) (t!71614 rules!1920))))))

(declare-fun lt!204175 () Unit!8029)

(declare-fun lt!204177 () Unit!8029)

(assert (=> d!174815 (= lt!204175 lt!204177)))

(declare-fun isPrefix!515 (List!4449 List!4449) Bool)

(assert (=> d!174815 (isPrefix!515 lt!203862 lt!203862)))

(declare-fun lemmaIsPrefixRefl!289 (List!4449 List!4449) Unit!8029)

(assert (=> d!174815 (= lt!204177 (lemmaIsPrefixRefl!289 lt!203862 lt!203862))))

(declare-fun rulesValidInductive!284 (LexerInterface!749 List!4450) Bool)

(assert (=> d!174815 (rulesValidInductive!284 thiss!17480 rules!1920)))

(assert (=> d!174815 (= (maxPrefix!465 thiss!17480 rules!1920 lt!203862) lt!204179)))

(declare-fun b!458028 () Bool)

(declare-fun res!203670 () Bool)

(declare-fun e!280345 () Bool)

(assert (=> b!458028 (=> (not res!203670) (not e!280345))))

(assert (=> b!458028 (= res!203670 (= (list!1971 (charsOf!506 (_1!2919 (get!1628 lt!204179)))) (originalCharacters!906 (_1!2919 (get!1628 lt!204179)))))))

(declare-fun b!458029 () Bool)

(declare-fun res!203673 () Bool)

(assert (=> b!458029 (=> (not res!203673) (not e!280345))))

(declare-fun apply!1140 (TokenValueInjection!1542 BalanceConc!3104) TokenValue!885)

(assert (=> b!458029 (= res!203673 (= (value!28911 (_1!2919 (get!1628 lt!204179))) (apply!1140 (transformation!863 (rule!1558 (_1!2919 (get!1628 lt!204179)))) (seqFromList!1091 (originalCharacters!906 (_1!2919 (get!1628 lt!204179)))))))))

(declare-fun bm!31749 () Bool)

(declare-fun maxPrefixOneRule!223 (LexerInterface!749 Rule!1526 List!4449) Option!1160)

(assert (=> bm!31749 (= call!31754 (maxPrefixOneRule!223 thiss!17480 (h!9837 rules!1920) lt!203862))))

(declare-fun b!458030 () Bool)

(declare-fun contains!996 (List!4450 Rule!1526) Bool)

(assert (=> b!458030 (= e!280345 (contains!996 rules!1920 (rule!1558 (_1!2919 (get!1628 lt!204179)))))))

(declare-fun b!458031 () Bool)

(assert (=> b!458031 (= e!280346 call!31754)))

(declare-fun b!458032 () Bool)

(declare-fun res!203671 () Bool)

(assert (=> b!458032 (=> (not res!203671) (not e!280345))))

(assert (=> b!458032 (= res!203671 (matchR!405 (regex!863 (rule!1558 (_1!2919 (get!1628 lt!204179)))) (list!1971 (charsOf!506 (_1!2919 (get!1628 lt!204179))))))))

(declare-fun b!458033 () Bool)

(declare-fun res!203674 () Bool)

(assert (=> b!458033 (=> (not res!203674) (not e!280345))))

(assert (=> b!458033 (= res!203674 (= (++!1294 (list!1971 (charsOf!506 (_1!2919 (get!1628 lt!204179)))) (_2!2919 (get!1628 lt!204179))) lt!203862))))

(declare-fun b!458034 () Bool)

(assert (=> b!458034 (= e!280347 e!280345)))

(declare-fun res!203675 () Bool)

(assert (=> b!458034 (=> (not res!203675) (not e!280345))))

(assert (=> b!458034 (= res!203675 (isDefined!1000 lt!204179))))

(declare-fun b!458035 () Bool)

(declare-fun res!203672 () Bool)

(assert (=> b!458035 (=> (not res!203672) (not e!280345))))

(assert (=> b!458035 (= res!203672 (< (size!3640 (_2!2919 (get!1628 lt!204179))) (size!3640 lt!203862)))))

(assert (= (and d!174815 c!92478) b!458031))

(assert (= (and d!174815 (not c!92478)) b!458027))

(assert (= (or b!458031 b!458027) bm!31749))

(assert (= (and d!174815 (not res!203669)) b!458034))

(assert (= (and b!458034 res!203675) b!458028))

(assert (= (and b!458028 res!203670) b!458035))

(assert (= (and b!458035 res!203672) b!458033))

(assert (= (and b!458033 res!203674) b!458029))

(assert (= (and b!458029 res!203673) b!458032))

(assert (= (and b!458032 res!203671) b!458030))

(declare-fun m!725585 () Bool)

(assert (=> b!458033 m!725585))

(declare-fun m!725587 () Bool)

(assert (=> b!458033 m!725587))

(assert (=> b!458033 m!725587))

(declare-fun m!725589 () Bool)

(assert (=> b!458033 m!725589))

(assert (=> b!458033 m!725589))

(declare-fun m!725591 () Bool)

(assert (=> b!458033 m!725591))

(assert (=> b!458028 m!725585))

(assert (=> b!458028 m!725587))

(assert (=> b!458028 m!725587))

(assert (=> b!458028 m!725589))

(declare-fun m!725593 () Bool)

(assert (=> bm!31749 m!725593))

(assert (=> b!458035 m!725585))

(declare-fun m!725595 () Bool)

(assert (=> b!458035 m!725595))

(declare-fun m!725597 () Bool)

(assert (=> b!458035 m!725597))

(declare-fun m!725599 () Bool)

(assert (=> b!458034 m!725599))

(assert (=> b!458032 m!725585))

(assert (=> b!458032 m!725587))

(assert (=> b!458032 m!725587))

(assert (=> b!458032 m!725589))

(assert (=> b!458032 m!725589))

(declare-fun m!725601 () Bool)

(assert (=> b!458032 m!725601))

(declare-fun m!725603 () Bool)

(assert (=> d!174815 m!725603))

(declare-fun m!725605 () Bool)

(assert (=> d!174815 m!725605))

(declare-fun m!725607 () Bool)

(assert (=> d!174815 m!725607))

(declare-fun m!725609 () Bool)

(assert (=> d!174815 m!725609))

(assert (=> b!458030 m!725585))

(declare-fun m!725611 () Bool)

(assert (=> b!458030 m!725611))

(declare-fun m!725613 () Bool)

(assert (=> b!458027 m!725613))

(assert (=> b!458029 m!725585))

(declare-fun m!725615 () Bool)

(assert (=> b!458029 m!725615))

(assert (=> b!458029 m!725615))

(declare-fun m!725617 () Bool)

(assert (=> b!458029 m!725617))

(assert (=> b!457468 d!174815))

(declare-fun d!174817 () Bool)

(assert (=> d!174817 (= (inv!5516 (tag!1123 (rule!1558 (h!9838 tokens!465)))) (= (mod (str.len (value!28910 (tag!1123 (rule!1558 (h!9838 tokens!465))))) 2) 0))))

(assert (=> b!457451 d!174817))

(declare-fun d!174819 () Bool)

(declare-fun res!203678 () Bool)

(declare-fun e!280350 () Bool)

(assert (=> d!174819 (=> (not res!203678) (not e!280350))))

(declare-fun semiInverseModEq!343 (Int Int) Bool)

(assert (=> d!174819 (= res!203678 (semiInverseModEq!343 (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (toValue!1682 (transformation!863 (rule!1558 (h!9838 tokens!465))))))))

(assert (=> d!174819 (= (inv!5519 (transformation!863 (rule!1558 (h!9838 tokens!465)))) e!280350)))

(declare-fun b!458038 () Bool)

(declare-fun equivClasses!326 (Int Int) Bool)

(assert (=> b!458038 (= e!280350 (equivClasses!326 (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (toValue!1682 (transformation!863 (rule!1558 (h!9838 tokens!465))))))))

(assert (= (and d!174819 res!203678) b!458038))

(declare-fun m!725619 () Bool)

(assert (=> d!174819 m!725619))

(declare-fun m!725621 () Bool)

(assert (=> b!458038 m!725621))

(assert (=> b!457451 d!174819))

(declare-fun d!174821 () Bool)

(declare-fun isEmpty!3421 (Option!1161) Bool)

(assert (=> d!174821 (= (isDefined!999 (maxPrefixZipperSequence!428 thiss!17480 rules!1920 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465))))) (not (isEmpty!3421 (maxPrefixZipperSequence!428 thiss!17480 rules!1920 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))))

(declare-fun bs!56829 () Bool)

(assert (= bs!56829 d!174821))

(assert (=> bs!56829 m!724757))

(declare-fun m!725623 () Bool)

(assert (=> bs!56829 m!725623))

(assert (=> b!457450 d!174821))

(declare-fun b!458117 () Bool)

(declare-fun e!280414 () Bool)

(declare-fun e!280413 () Bool)

(assert (=> b!458117 (= e!280414 e!280413)))

(declare-fun res!203698 () Bool)

(assert (=> b!458117 (=> (not res!203698) (not e!280413))))

(declare-fun lt!204197 () Option!1161)

(declare-fun get!1630 (Option!1161) tuple2!5410)

(assert (=> b!458117 (= res!203698 (= (_1!2921 (get!1630 lt!204197)) (_1!2919 (get!1628 (maxPrefix!465 thiss!17480 rules!1920 (list!1971 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))))))

(declare-fun b!458118 () Bool)

(declare-fun e!280412 () Option!1161)

(declare-fun lt!204198 () Option!1161)

(declare-fun lt!204203 () Option!1161)

(assert (=> b!458118 (= e!280412 (ite (and ((_ is None!1160) lt!204198) ((_ is None!1160) lt!204203)) None!1160 (ite ((_ is None!1160) lt!204203) lt!204198 (ite ((_ is None!1160) lt!204198) lt!204203 (ite (>= (size!3635 (_1!2921 (v!15491 lt!204198))) (size!3635 (_1!2921 (v!15491 lt!204203)))) lt!204198 lt!204203)))))))

(declare-fun call!31757 () Option!1161)

(assert (=> b!458118 (= lt!204198 call!31757)))

(assert (=> b!458118 (= lt!204203 (maxPrefixZipperSequence!428 thiss!17480 (t!71614 rules!1920) (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))

(declare-fun b!458119 () Bool)

(assert (=> b!458119 (= e!280413 (= (list!1971 (_2!2921 (get!1630 lt!204197))) (_2!2919 (get!1628 (maxPrefix!465 thiss!17480 rules!1920 (list!1971 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))))))

(declare-fun b!458120 () Bool)

(declare-fun e!280415 () Bool)

(declare-fun maxPrefixZipper!192 (LexerInterface!749 List!4450 List!4449) Option!1160)

(assert (=> b!458120 (= e!280415 (= (list!1971 (_2!2921 (get!1630 lt!204197))) (_2!2919 (get!1628 (maxPrefixZipper!192 thiss!17480 rules!1920 (list!1971 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))))))

(declare-fun b!458121 () Bool)

(assert (=> b!458121 (= e!280412 call!31757)))

(declare-fun b!458122 () Bool)

(declare-fun e!280416 () Bool)

(assert (=> b!458122 (= e!280416 e!280414)))

(declare-fun res!203700 () Bool)

(assert (=> b!458122 (=> res!203700 e!280414)))

(assert (=> b!458122 (= res!203700 (not (isDefined!999 lt!204197)))))

(declare-fun b!458123 () Bool)

(declare-fun e!280411 () Bool)

(assert (=> b!458123 (= e!280411 e!280415)))

(declare-fun res!203699 () Bool)

(assert (=> b!458123 (=> (not res!203699) (not e!280415))))

(assert (=> b!458123 (= res!203699 (= (_1!2921 (get!1630 lt!204197)) (_1!2919 (get!1628 (maxPrefixZipper!192 thiss!17480 rules!1920 (list!1971 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))))))

(declare-fun d!174823 () Bool)

(assert (=> d!174823 e!280416))

(declare-fun res!203701 () Bool)

(assert (=> d!174823 (=> (not res!203701) (not e!280416))))

(assert (=> d!174823 (= res!203701 (= (isDefined!999 lt!204197) (isDefined!1000 (maxPrefixZipper!192 thiss!17480 rules!1920 (list!1971 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465))))))))))

(assert (=> d!174823 (= lt!204197 e!280412)))

(declare-fun c!92481 () Bool)

(assert (=> d!174823 (= c!92481 (and ((_ is Cons!4440) rules!1920) ((_ is Nil!4440) (t!71614 rules!1920))))))

(declare-fun lt!204200 () Unit!8029)

(declare-fun lt!204202 () Unit!8029)

(assert (=> d!174823 (= lt!204200 lt!204202)))

(declare-fun lt!204199 () List!4449)

(declare-fun lt!204201 () List!4449)

(assert (=> d!174823 (isPrefix!515 lt!204199 lt!204201)))

(assert (=> d!174823 (= lt!204202 (lemmaIsPrefixRefl!289 lt!204199 lt!204201))))

(assert (=> d!174823 (= lt!204201 (list!1971 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))

(assert (=> d!174823 (= lt!204199 (list!1971 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))

(assert (=> d!174823 (rulesValidInductive!284 thiss!17480 rules!1920)))

(assert (=> d!174823 (= (maxPrefixZipperSequence!428 thiss!17480 rules!1920 (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))) lt!204197)))

(declare-fun bm!31752 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!193 (LexerInterface!749 Rule!1526 BalanceConc!3104) Option!1161)

(assert (=> bm!31752 (= call!31757 (maxPrefixOneRuleZipperSequence!193 thiss!17480 (h!9837 rules!1920) (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465)))))))

(declare-fun b!458124 () Bool)

(declare-fun res!203702 () Bool)

(assert (=> b!458124 (=> (not res!203702) (not e!280416))))

(assert (=> b!458124 (= res!203702 e!280411)))

(declare-fun res!203697 () Bool)

(assert (=> b!458124 (=> res!203697 e!280411)))

(assert (=> b!458124 (= res!203697 (not (isDefined!999 lt!204197)))))

(assert (= (and d!174823 c!92481) b!458121))

(assert (= (and d!174823 (not c!92481)) b!458118))

(assert (= (or b!458121 b!458118) bm!31752))

(assert (= (and d!174823 res!203701) b!458124))

(assert (= (and b!458124 (not res!203697)) b!458123))

(assert (= (and b!458123 res!203699) b!458120))

(assert (= (and b!458124 res!203702) b!458122))

(assert (= (and b!458122 (not res!203700)) b!458117))

(assert (= (and b!458117 res!203698) b!458119))

(declare-fun m!725645 () Bool)

(assert (=> b!458124 m!725645))

(assert (=> b!458118 m!724755))

(declare-fun m!725647 () Bool)

(assert (=> b!458118 m!725647))

(declare-fun m!725649 () Bool)

(assert (=> b!458120 m!725649))

(declare-fun m!725651 () Bool)

(assert (=> b!458120 m!725651))

(declare-fun m!725653 () Bool)

(assert (=> b!458120 m!725653))

(assert (=> b!458120 m!725653))

(declare-fun m!725655 () Bool)

(assert (=> b!458120 m!725655))

(assert (=> b!458120 m!724755))

(assert (=> b!458120 m!725651))

(declare-fun m!725657 () Bool)

(assert (=> b!458120 m!725657))

(assert (=> b!458122 m!725645))

(assert (=> bm!31752 m!724755))

(declare-fun m!725659 () Bool)

(assert (=> bm!31752 m!725659))

(assert (=> d!174823 m!725645))

(declare-fun m!725661 () Bool)

(assert (=> d!174823 m!725661))

(assert (=> d!174823 m!725609))

(assert (=> d!174823 m!725651))

(assert (=> d!174823 m!725653))

(declare-fun m!725663 () Bool)

(assert (=> d!174823 m!725663))

(assert (=> d!174823 m!724755))

(assert (=> d!174823 m!725651))

(assert (=> d!174823 m!725653))

(declare-fun m!725665 () Bool)

(assert (=> d!174823 m!725665))

(assert (=> b!458123 m!725649))

(assert (=> b!458123 m!724755))

(assert (=> b!458123 m!725651))

(assert (=> b!458123 m!725651))

(assert (=> b!458123 m!725653))

(assert (=> b!458123 m!725653))

(assert (=> b!458123 m!725655))

(assert (=> b!458119 m!725651))

(declare-fun m!725667 () Bool)

(assert (=> b!458119 m!725667))

(assert (=> b!458119 m!725649))

(assert (=> b!458119 m!725667))

(declare-fun m!725669 () Bool)

(assert (=> b!458119 m!725669))

(assert (=> b!458119 m!724755))

(assert (=> b!458119 m!725651))

(assert (=> b!458119 m!725657))

(assert (=> b!458117 m!725649))

(assert (=> b!458117 m!724755))

(assert (=> b!458117 m!725651))

(assert (=> b!458117 m!725651))

(assert (=> b!458117 m!725667))

(assert (=> b!458117 m!725667))

(assert (=> b!458117 m!725669))

(assert (=> b!457450 d!174823))

(declare-fun d!174831 () Bool)

(assert (=> d!174831 (= (seqFromList!1091 (originalCharacters!906 (h!9838 tokens!465))) (fromListB!487 (originalCharacters!906 (h!9838 tokens!465))))))

(declare-fun bs!56833 () Bool)

(assert (= bs!56833 d!174831))

(declare-fun m!725671 () Bool)

(assert (=> bs!56833 m!725671))

(assert (=> b!457450 d!174831))

(declare-fun d!174833 () Bool)

(assert (=> d!174833 (dynLambda!2701 lambda!13406 (h!9838 tokens!465))))

(declare-fun lt!204206 () Unit!8029)

(declare-fun choose!3444 (List!4451 Int Token!1470) Unit!8029)

(assert (=> d!174833 (= lt!204206 (choose!3444 tokens!465 lambda!13406 (h!9838 tokens!465)))))

(declare-fun e!280419 () Bool)

(assert (=> d!174833 e!280419))

(declare-fun res!203705 () Bool)

(assert (=> d!174833 (=> (not res!203705) (not e!280419))))

(assert (=> d!174833 (= res!203705 (forall!1290 tokens!465 lambda!13406))))

(assert (=> d!174833 (= (forallContained!416 tokens!465 lambda!13406 (h!9838 tokens!465)) lt!204206)))

(declare-fun b!458127 () Bool)

(declare-fun contains!997 (List!4451 Token!1470) Bool)

(assert (=> b!458127 (= e!280419 (contains!997 tokens!465 (h!9838 tokens!465)))))

(assert (= (and d!174833 res!203705) b!458127))

(declare-fun b_lambda!19005 () Bool)

(assert (=> (not b_lambda!19005) (not d!174833)))

(declare-fun m!725673 () Bool)

(assert (=> d!174833 m!725673))

(declare-fun m!725675 () Bool)

(assert (=> d!174833 m!725675))

(declare-fun m!725677 () Bool)

(assert (=> d!174833 m!725677))

(declare-fun m!725679 () Bool)

(assert (=> b!458127 m!725679))

(assert (=> b!457450 d!174833))

(declare-fun d!174835 () Bool)

(declare-fun e!280420 () Bool)

(assert (=> d!174835 e!280420))

(declare-fun res!203707 () Bool)

(assert (=> d!174835 (=> (not res!203707) (not e!280420))))

(declare-fun lt!204207 () List!4449)

(assert (=> d!174835 (= res!203707 (= (content!743 lt!204207) ((_ map or) (content!743 (++!1294 lt!203855 lt!203848)) (content!743 lt!203860))))))

(declare-fun e!280421 () List!4449)

(assert (=> d!174835 (= lt!204207 e!280421)))

(declare-fun c!92482 () Bool)

(assert (=> d!174835 (= c!92482 ((_ is Nil!4439) (++!1294 lt!203855 lt!203848)))))

(assert (=> d!174835 (= (++!1294 (++!1294 lt!203855 lt!203848) lt!203860) lt!204207)))

(declare-fun b!458131 () Bool)

(assert (=> b!458131 (= e!280420 (or (not (= lt!203860 Nil!4439)) (= lt!204207 (++!1294 lt!203855 lt!203848))))))

(declare-fun b!458128 () Bool)

(assert (=> b!458128 (= e!280421 lt!203860)))

(declare-fun b!458130 () Bool)

(declare-fun res!203706 () Bool)

(assert (=> b!458130 (=> (not res!203706) (not e!280420))))

(assert (=> b!458130 (= res!203706 (= (size!3640 lt!204207) (+ (size!3640 (++!1294 lt!203855 lt!203848)) (size!3640 lt!203860))))))

(declare-fun b!458129 () Bool)

(assert (=> b!458129 (= e!280421 (Cons!4439 (h!9836 (++!1294 lt!203855 lt!203848)) (++!1294 (t!71613 (++!1294 lt!203855 lt!203848)) lt!203860)))))

(assert (= (and d!174835 c!92482) b!458128))

(assert (= (and d!174835 (not c!92482)) b!458129))

(assert (= (and d!174835 res!203707) b!458130))

(assert (= (and b!458130 res!203706) b!458131))

(declare-fun m!725681 () Bool)

(assert (=> d!174835 m!725681))

(assert (=> d!174835 m!724735))

(declare-fun m!725683 () Bool)

(assert (=> d!174835 m!725683))

(assert (=> d!174835 m!725025))

(declare-fun m!725685 () Bool)

(assert (=> b!458130 m!725685))

(assert (=> b!458130 m!724735))

(declare-fun m!725687 () Bool)

(assert (=> b!458130 m!725687))

(assert (=> b!458130 m!725031))

(declare-fun m!725689 () Bool)

(assert (=> b!458129 m!725689))

(assert (=> b!457471 d!174835))

(declare-fun d!174837 () Bool)

(assert (=> d!174837 (= (seqFromList!1092 (t!71615 tokens!465)) (fromListB!486 (t!71615 tokens!465)))))

(declare-fun bs!56834 () Bool)

(assert (= bs!56834 d!174837))

(declare-fun m!725691 () Bool)

(assert (=> bs!56834 m!725691))

(assert (=> b!457471 d!174837))

(declare-fun d!174839 () Bool)

(declare-fun e!280422 () Bool)

(assert (=> d!174839 e!280422))

(declare-fun res!203709 () Bool)

(assert (=> d!174839 (=> (not res!203709) (not e!280422))))

(declare-fun lt!204208 () List!4449)

(assert (=> d!174839 (= res!203709 (= (content!743 lt!204208) ((_ map or) (content!743 lt!203855) (content!743 lt!203848))))))

(declare-fun e!280423 () List!4449)

(assert (=> d!174839 (= lt!204208 e!280423)))

(declare-fun c!92483 () Bool)

(assert (=> d!174839 (= c!92483 ((_ is Nil!4439) lt!203855))))

(assert (=> d!174839 (= (++!1294 lt!203855 lt!203848) lt!204208)))

(declare-fun b!458135 () Bool)

(assert (=> b!458135 (= e!280422 (or (not (= lt!203848 Nil!4439)) (= lt!204208 lt!203855)))))

(declare-fun b!458132 () Bool)

(assert (=> b!458132 (= e!280423 lt!203848)))

(declare-fun b!458134 () Bool)

(declare-fun res!203708 () Bool)

(assert (=> b!458134 (=> (not res!203708) (not e!280422))))

(assert (=> b!458134 (= res!203708 (= (size!3640 lt!204208) (+ (size!3640 lt!203855) (size!3640 lt!203848))))))

(declare-fun b!458133 () Bool)

(assert (=> b!458133 (= e!280423 (Cons!4439 (h!9836 lt!203855) (++!1294 (t!71613 lt!203855) lt!203848)))))

(assert (= (and d!174839 c!92483) b!458132))

(assert (= (and d!174839 (not c!92483)) b!458133))

(assert (= (and d!174839 res!203709) b!458134))

(assert (= (and b!458134 res!203708) b!458135))

(declare-fun m!725693 () Bool)

(assert (=> d!174839 m!725693))

(assert (=> d!174839 m!725023))

(declare-fun m!725695 () Bool)

(assert (=> d!174839 m!725695))

(declare-fun m!725697 () Bool)

(assert (=> b!458134 m!725697))

(assert (=> b!458134 m!725029))

(declare-fun m!725699 () Bool)

(assert (=> b!458134 m!725699))

(declare-fun m!725701 () Bool)

(assert (=> b!458133 m!725701))

(assert (=> b!457471 d!174839))

(declare-fun bs!56835 () Bool)

(declare-fun d!174841 () Bool)

(assert (= bs!56835 (and d!174841 d!174711)))

(declare-fun lambda!13439 () Int)

(assert (=> bs!56835 (= lambda!13439 lambda!13428)))

(declare-fun bs!56836 () Bool)

(assert (= bs!56836 (and d!174841 b!457452)))

(assert (=> bs!56836 (= lambda!13439 lambda!13405)))

(declare-fun bs!56837 () Bool)

(assert (= bs!56837 (and d!174841 b!457964)))

(assert (=> bs!56837 (not (= lambda!13439 lambda!13432))))

(declare-fun bs!56838 () Bool)

(assert (= bs!56838 (and d!174841 b!457450)))

(assert (=> bs!56838 (not (= lambda!13439 lambda!13406))))

(declare-fun bs!56839 () Bool)

(assert (= bs!56839 (and d!174841 b!457908)))

(assert (=> bs!56839 (not (= lambda!13439 lambda!13429))))

(declare-fun bs!56840 () Bool)

(assert (= bs!56840 (and d!174841 d!174673)))

(assert (=> bs!56840 (not (= lambda!13439 lambda!13420))))

(declare-fun bs!56841 () Bool)

(declare-fun b!458140 () Bool)

(assert (= bs!56841 (and b!458140 d!174711)))

(declare-fun lambda!13440 () Int)

(assert (=> bs!56841 (not (= lambda!13440 lambda!13428))))

(declare-fun bs!56842 () Bool)

(assert (= bs!56842 (and b!458140 b!457452)))

(assert (=> bs!56842 (not (= lambda!13440 lambda!13405))))

(declare-fun bs!56843 () Bool)

(assert (= bs!56843 (and b!458140 b!457964)))

(assert (=> bs!56843 (= lambda!13440 lambda!13432)))

(declare-fun bs!56844 () Bool)

(assert (= bs!56844 (and b!458140 d!174841)))

(assert (=> bs!56844 (not (= lambda!13440 lambda!13439))))

(declare-fun bs!56845 () Bool)

(assert (= bs!56845 (and b!458140 b!457450)))

(assert (=> bs!56845 (= lambda!13440 lambda!13406)))

(declare-fun bs!56846 () Bool)

(assert (= bs!56846 (and b!458140 b!457908)))

(assert (=> bs!56846 (= lambda!13440 lambda!13429)))

(declare-fun bs!56847 () Bool)

(assert (= bs!56847 (and b!458140 d!174673)))

(assert (=> bs!56847 (= lambda!13440 lambda!13420)))

(declare-fun b!458149 () Bool)

(declare-fun e!280433 () Bool)

(assert (=> b!458149 (= e!280433 true)))

(declare-fun b!458148 () Bool)

(declare-fun e!280432 () Bool)

(assert (=> b!458148 (= e!280432 e!280433)))

(declare-fun b!458147 () Bool)

(declare-fun e!280431 () Bool)

(assert (=> b!458147 (= e!280431 e!280432)))

(assert (=> b!458140 e!280431))

(assert (= b!458148 b!458149))

(assert (= b!458147 b!458148))

(assert (= (and b!458140 ((_ is Cons!4440) rules!1920)) b!458147))

(assert (=> b!458149 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13440))))

(assert (=> b!458149 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13440))))

(assert (=> b!458140 true))

(declare-fun b!458136 () Bool)

(declare-fun e!280426 () BalanceConc!3104)

(declare-fun call!31761 () Token!1470)

(assert (=> b!458136 (= e!280426 (charsOf!506 call!31761))))

(declare-fun lt!204219 () BalanceConc!3104)

(assert (=> d!174841 (= (list!1971 lt!204219) (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 (dropList!246 lt!203865 0) separatorToken!170))))

(declare-fun e!280429 () BalanceConc!3104)

(assert (=> d!174841 (= lt!204219 e!280429)))

(declare-fun c!92484 () Bool)

(assert (=> d!174841 (= c!92484 (>= 0 (size!3639 lt!203865)))))

(declare-fun lt!204221 () Unit!8029)

(assert (=> d!174841 (= lt!204221 (lemmaContentSubsetPreservesForall!190 (list!1974 lt!203865) (dropList!246 lt!203865 0) lambda!13439))))

(declare-fun e!280425 () Bool)

(assert (=> d!174841 e!280425))

(declare-fun res!203711 () Bool)

(assert (=> d!174841 (=> (not res!203711) (not e!280425))))

(assert (=> d!174841 (= res!203711 (>= 0 0))))

(assert (=> d!174841 (= (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203865 separatorToken!170 0) lt!204219)))

(declare-fun bm!31753 () Bool)

(declare-fun call!31759 () Token!1470)

(assert (=> bm!31753 (= call!31761 call!31759)))

(declare-fun bm!31754 () Bool)

(declare-fun call!31760 () BalanceConc!3104)

(declare-fun c!92485 () Bool)

(declare-fun c!92487 () Bool)

(assert (=> bm!31754 (= call!31760 (charsOf!506 (ite c!92487 call!31759 (ite c!92485 separatorToken!170 call!31761))))))

(declare-fun b!458137 () Bool)

(assert (=> b!458137 (= e!280425 (<= 0 (size!3639 lt!203865)))))

(declare-fun b!458138 () Bool)

(declare-fun e!280427 () BalanceConc!3104)

(assert (=> b!458138 (= e!280427 (BalanceConc!3105 Empty!1548))))

(assert (=> b!458138 (= (print!474 thiss!17480 (singletonSeq!409 call!31761)) (printTailRec!435 thiss!17480 (singletonSeq!409 call!31761) 0 (BalanceConc!3105 Empty!1548)))))

(declare-fun lt!204222 () Unit!8029)

(declare-fun Unit!8043 () Unit!8029)

(assert (=> b!458138 (= lt!204222 Unit!8043)))

(declare-fun lt!204209 () BalanceConc!3104)

(declare-fun call!31762 () BalanceConc!3104)

(declare-fun lt!204211 () Unit!8029)

(assert (=> b!458138 (= lt!204211 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!194 thiss!17480 rules!1920 (list!1971 call!31762) (list!1971 lt!204209)))))

(assert (=> b!458138 false))

(declare-fun lt!204210 () Unit!8029)

(declare-fun Unit!8044 () Unit!8029)

(assert (=> b!458138 (= lt!204210 Unit!8044)))

(declare-fun b!458139 () Bool)

(declare-fun call!31758 () BalanceConc!3104)

(assert (=> b!458139 (= e!280427 (++!1296 call!31758 lt!204209))))

(declare-fun e!280430 () BalanceConc!3104)

(assert (=> b!458140 (= e!280429 e!280430)))

(declare-fun lt!204215 () List!4451)

(assert (=> b!458140 (= lt!204215 (list!1974 lt!203865))))

(declare-fun lt!204217 () Unit!8029)

(assert (=> b!458140 (= lt!204217 (lemmaDropApply!286 lt!204215 0))))

(assert (=> b!458140 (= (head!1114 (drop!315 lt!204215 0)) (apply!1139 lt!204215 0))))

(declare-fun lt!204220 () Unit!8029)

(assert (=> b!458140 (= lt!204220 lt!204217)))

(declare-fun lt!204218 () List!4451)

(assert (=> b!458140 (= lt!204218 (list!1974 lt!203865))))

(declare-fun lt!204213 () Unit!8029)

(assert (=> b!458140 (= lt!204213 (lemmaDropTail!278 lt!204218 0))))

(assert (=> b!458140 (= (tail!640 (drop!315 lt!204218 0)) (drop!315 lt!204218 (+ 0 1)))))

(declare-fun lt!204214 () Unit!8029)

(assert (=> b!458140 (= lt!204214 lt!204213)))

(declare-fun lt!204212 () Unit!8029)

(assert (=> b!458140 (= lt!204212 (forallContained!416 (list!1974 lt!203865) lambda!13440 (apply!1138 lt!203865 0)))))

(assert (=> b!458140 (= lt!204209 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203865 separatorToken!170 (+ 0 1)))))

(declare-fun lt!204216 () Option!1161)

(assert (=> b!458140 (= lt!204216 (maxPrefixZipperSequence!428 thiss!17480 rules!1920 (++!1296 (charsOf!506 (apply!1138 lt!203865 0)) lt!204209)))))

(declare-fun res!203712 () Bool)

(assert (=> b!458140 (= res!203712 ((_ is Some!1160) lt!204216))))

(declare-fun e!280428 () Bool)

(assert (=> b!458140 (=> (not res!203712) (not e!280428))))

(assert (=> b!458140 (= c!92487 e!280428)))

(declare-fun bm!31755 () Bool)

(assert (=> bm!31755 (= call!31762 call!31760)))

(declare-fun b!458141 () Bool)

(declare-fun e!280424 () Bool)

(assert (=> b!458141 (= e!280424 (not (= (_1!2921 (v!15491 lt!204216)) call!31759)))))

(declare-fun b!458142 () Bool)

(assert (=> b!458142 (= e!280428 (= (_1!2921 (v!15491 lt!204216)) (apply!1138 lt!203865 0)))))

(declare-fun b!458143 () Bool)

(assert (=> b!458143 (= e!280426 call!31760)))

(declare-fun b!458144 () Bool)

(assert (=> b!458144 (= e!280430 call!31758)))

(declare-fun b!458145 () Bool)

(assert (=> b!458145 (= c!92485 e!280424)))

(declare-fun res!203710 () Bool)

(assert (=> b!458145 (=> (not res!203710) (not e!280424))))

(assert (=> b!458145 (= res!203710 ((_ is Some!1160) lt!204216))))

(assert (=> b!458145 (= e!280430 e!280427)))

(declare-fun bm!31756 () Bool)

(declare-fun c!92486 () Bool)

(assert (=> bm!31756 (= c!92486 c!92487)))

(assert (=> bm!31756 (= call!31758 (++!1296 e!280426 (ite c!92487 lt!204209 call!31762)))))

(declare-fun b!458146 () Bool)

(assert (=> b!458146 (= e!280429 (BalanceConc!3105 Empty!1548))))

(declare-fun bm!31757 () Bool)

(assert (=> bm!31757 (= call!31759 (apply!1138 lt!203865 0))))

(assert (= (and d!174841 res!203711) b!458137))

(assert (= (and d!174841 c!92484) b!458146))

(assert (= (and d!174841 (not c!92484)) b!458140))

(assert (= (and b!458140 res!203712) b!458142))

(assert (= (and b!458140 c!92487) b!458144))

(assert (= (and b!458140 (not c!92487)) b!458145))

(assert (= (and b!458145 res!203710) b!458141))

(assert (= (and b!458145 c!92485) b!458139))

(assert (= (and b!458145 (not c!92485)) b!458138))

(assert (= (or b!458139 b!458138) bm!31753))

(assert (= (or b!458139 b!458138) bm!31755))

(assert (= (or b!458144 bm!31753 b!458141) bm!31757))

(assert (= (or b!458144 bm!31755) bm!31754))

(assert (= (or b!458144 b!458139) bm!31756))

(assert (= (and bm!31756 c!92486) b!458143))

(assert (= (and bm!31756 (not c!92486)) b!458136))

(declare-fun m!725703 () Bool)

(assert (=> b!458136 m!725703))

(declare-fun m!725705 () Bool)

(assert (=> b!458137 m!725705))

(declare-fun m!725707 () Bool)

(assert (=> bm!31756 m!725707))

(declare-fun m!725709 () Bool)

(assert (=> bm!31754 m!725709))

(declare-fun m!725711 () Bool)

(assert (=> b!458139 m!725711))

(declare-fun m!725713 () Bool)

(assert (=> d!174841 m!725713))

(declare-fun m!725715 () Bool)

(assert (=> d!174841 m!725715))

(assert (=> d!174841 m!725705))

(declare-fun m!725717 () Bool)

(assert (=> d!174841 m!725717))

(declare-fun m!725719 () Bool)

(assert (=> d!174841 m!725719))

(assert (=> d!174841 m!725713))

(declare-fun m!725721 () Bool)

(assert (=> d!174841 m!725721))

(assert (=> d!174841 m!725719))

(assert (=> d!174841 m!725713))

(declare-fun m!725723 () Bool)

(assert (=> b!458142 m!725723))

(declare-fun m!725725 () Bool)

(assert (=> b!458138 m!725725))

(declare-fun m!725727 () Bool)

(assert (=> b!458138 m!725727))

(declare-fun m!725729 () Bool)

(assert (=> b!458138 m!725729))

(declare-fun m!725731 () Bool)

(assert (=> b!458138 m!725731))

(assert (=> b!458138 m!725725))

(assert (=> b!458138 m!725731))

(declare-fun m!725733 () Bool)

(assert (=> b!458138 m!725733))

(assert (=> b!458138 m!725727))

(declare-fun m!725735 () Bool)

(assert (=> b!458138 m!725735))

(assert (=> b!458138 m!725727))

(assert (=> bm!31757 m!725723))

(declare-fun m!725737 () Bool)

(assert (=> b!458140 m!725737))

(declare-fun m!725739 () Bool)

(assert (=> b!458140 m!725739))

(declare-fun m!725741 () Bool)

(assert (=> b!458140 m!725741))

(declare-fun m!725743 () Bool)

(assert (=> b!458140 m!725743))

(assert (=> b!458140 m!725723))

(declare-fun m!725745 () Bool)

(assert (=> b!458140 m!725745))

(assert (=> b!458140 m!725737))

(declare-fun m!725747 () Bool)

(assert (=> b!458140 m!725747))

(declare-fun m!725749 () Bool)

(assert (=> b!458140 m!725749))

(assert (=> b!458140 m!725749))

(declare-fun m!725751 () Bool)

(assert (=> b!458140 m!725751))

(assert (=> b!458140 m!725719))

(declare-fun m!725753 () Bool)

(assert (=> b!458140 m!725753))

(declare-fun m!725755 () Bool)

(assert (=> b!458140 m!725755))

(declare-fun m!725757 () Bool)

(assert (=> b!458140 m!725757))

(declare-fun m!725759 () Bool)

(assert (=> b!458140 m!725759))

(assert (=> b!458140 m!725753))

(assert (=> b!458140 m!725723))

(assert (=> b!458140 m!725759))

(assert (=> b!458140 m!725719))

(assert (=> b!458140 m!725723))

(declare-fun m!725761 () Bool)

(assert (=> b!458140 m!725761))

(assert (=> b!457471 d!174841))

(declare-fun d!174843 () Bool)

(declare-fun lt!204225 () BalanceConc!3104)

(assert (=> d!174843 (= (list!1971 lt!204225) (originalCharacters!906 separatorToken!170))))

(declare-fun dynLambda!2702 (Int TokenValue!885) BalanceConc!3104)

(assert (=> d!174843 (= lt!204225 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (value!28911 separatorToken!170)))))

(assert (=> d!174843 (= (charsOf!506 separatorToken!170) lt!204225)))

(declare-fun b_lambda!19007 () Bool)

(assert (=> (not b_lambda!19007) (not d!174843)))

(declare-fun t!71661 () Bool)

(declare-fun tb!45981 () Bool)

(assert (=> (and b!457467 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170)))) t!71661) tb!45981))

(declare-fun b!458154 () Bool)

(declare-fun e!280436 () Bool)

(declare-fun tp!126904 () Bool)

(declare-fun inv!5523 (Conc!1548) Bool)

(assert (=> b!458154 (= e!280436 (and (inv!5523 (c!92354 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (value!28911 separatorToken!170)))) tp!126904))))

(declare-fun result!50594 () Bool)

(declare-fun inv!5524 (BalanceConc!3104) Bool)

(assert (=> tb!45981 (= result!50594 (and (inv!5524 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (value!28911 separatorToken!170))) e!280436))))

(assert (= tb!45981 b!458154))

(declare-fun m!725763 () Bool)

(assert (=> b!458154 m!725763))

(declare-fun m!725765 () Bool)

(assert (=> tb!45981 m!725765))

(assert (=> d!174843 t!71661))

(declare-fun b_and!49237 () Bool)

(assert (= b_and!49195 (and (=> t!71661 result!50594) b_and!49237)))

(declare-fun t!71663 () Bool)

(declare-fun tb!45983 () Bool)

(assert (=> (and b!457470 (= (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170)))) t!71663) tb!45983))

(declare-fun result!50598 () Bool)

(assert (= result!50598 result!50594))

(assert (=> d!174843 t!71663))

(declare-fun b_and!49239 () Bool)

(assert (= b_and!49199 (and (=> t!71663 result!50598) b_and!49239)))

(declare-fun t!71665 () Bool)

(declare-fun tb!45985 () Bool)

(assert (=> (and b!457444 (= (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170)))) t!71665) tb!45985))

(declare-fun result!50600 () Bool)

(assert (= result!50600 result!50594))

(assert (=> d!174843 t!71665))

(declare-fun b_and!49241 () Bool)

(assert (= b_and!49203 (and (=> t!71665 result!50600) b_and!49241)))

(declare-fun m!725767 () Bool)

(assert (=> d!174843 m!725767))

(declare-fun m!725769 () Bool)

(assert (=> d!174843 m!725769))

(assert (=> b!457471 d!174843))

(declare-fun d!174845 () Bool)

(declare-fun e!280437 () Bool)

(assert (=> d!174845 e!280437))

(declare-fun res!203714 () Bool)

(assert (=> d!174845 (=> (not res!203714) (not e!280437))))

(declare-fun lt!204226 () List!4449)

(assert (=> d!174845 (= res!203714 (= (content!743 lt!204226) ((_ map or) (content!743 lt!203855) (content!743 lt!203859))))))

(declare-fun e!280438 () List!4449)

(assert (=> d!174845 (= lt!204226 e!280438)))

(declare-fun c!92488 () Bool)

(assert (=> d!174845 (= c!92488 ((_ is Nil!4439) lt!203855))))

(assert (=> d!174845 (= (++!1294 lt!203855 lt!203859) lt!204226)))

(declare-fun b!458158 () Bool)

(assert (=> b!458158 (= e!280437 (or (not (= lt!203859 Nil!4439)) (= lt!204226 lt!203855)))))

(declare-fun b!458155 () Bool)

(assert (=> b!458155 (= e!280438 lt!203859)))

(declare-fun b!458157 () Bool)

(declare-fun res!203713 () Bool)

(assert (=> b!458157 (=> (not res!203713) (not e!280437))))

(assert (=> b!458157 (= res!203713 (= (size!3640 lt!204226) (+ (size!3640 lt!203855) (size!3640 lt!203859))))))

(declare-fun b!458156 () Bool)

(assert (=> b!458156 (= e!280438 (Cons!4439 (h!9836 lt!203855) (++!1294 (t!71613 lt!203855) lt!203859)))))

(assert (= (and d!174845 c!92488) b!458155))

(assert (= (and d!174845 (not c!92488)) b!458156))

(assert (= (and d!174845 res!203714) b!458157))

(assert (= (and b!458157 res!203713) b!458158))

(declare-fun m!725771 () Bool)

(assert (=> d!174845 m!725771))

(assert (=> d!174845 m!725023))

(declare-fun m!725773 () Bool)

(assert (=> d!174845 m!725773))

(declare-fun m!725775 () Bool)

(assert (=> b!458157 m!725775))

(assert (=> b!458157 m!725029))

(declare-fun m!725777 () Bool)

(assert (=> b!458157 m!725777))

(declare-fun m!725779 () Bool)

(assert (=> b!458156 m!725779))

(assert (=> b!457471 d!174845))

(declare-fun d!174847 () Bool)

(assert (=> d!174847 (= (list!1971 (charsOf!506 (h!9838 tokens!465))) (list!1975 (c!92354 (charsOf!506 (h!9838 tokens!465)))))))

(declare-fun bs!56848 () Bool)

(assert (= bs!56848 d!174847))

(declare-fun m!725781 () Bool)

(assert (=> bs!56848 m!725781))

(assert (=> b!457471 d!174847))

(declare-fun d!174849 () Bool)

(declare-fun lt!204227 () BalanceConc!3104)

(assert (=> d!174849 (= (list!1971 lt!204227) (originalCharacters!906 (h!9838 tokens!465)))))

(assert (=> d!174849 (= lt!204227 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (value!28911 (h!9838 tokens!465))))))

(assert (=> d!174849 (= (charsOf!506 (h!9838 tokens!465)) lt!204227)))

(declare-fun b_lambda!19009 () Bool)

(assert (=> (not b_lambda!19009) (not d!174849)))

(declare-fun t!71667 () Bool)

(declare-fun tb!45987 () Bool)

(assert (=> (and b!457467 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465))))) t!71667) tb!45987))

(declare-fun b!458159 () Bool)

(declare-fun e!280439 () Bool)

(declare-fun tp!126905 () Bool)

(assert (=> b!458159 (= e!280439 (and (inv!5523 (c!92354 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (value!28911 (h!9838 tokens!465))))) tp!126905))))

(declare-fun result!50602 () Bool)

(assert (=> tb!45987 (= result!50602 (and (inv!5524 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (value!28911 (h!9838 tokens!465)))) e!280439))))

(assert (= tb!45987 b!458159))

(declare-fun m!725783 () Bool)

(assert (=> b!458159 m!725783))

(declare-fun m!725785 () Bool)

(assert (=> tb!45987 m!725785))

(assert (=> d!174849 t!71667))

(declare-fun b_and!49243 () Bool)

(assert (= b_and!49237 (and (=> t!71667 result!50602) b_and!49243)))

(declare-fun tb!45989 () Bool)

(declare-fun t!71669 () Bool)

(assert (=> (and b!457470 (= (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465))))) t!71669) tb!45989))

(declare-fun result!50604 () Bool)

(assert (= result!50604 result!50602))

(assert (=> d!174849 t!71669))

(declare-fun b_and!49245 () Bool)

(assert (= b_and!49239 (and (=> t!71669 result!50604) b_and!49245)))

(declare-fun tb!45991 () Bool)

(declare-fun t!71671 () Bool)

(assert (=> (and b!457444 (= (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465))))) t!71671) tb!45991))

(declare-fun result!50606 () Bool)

(assert (= result!50606 result!50602))

(assert (=> d!174849 t!71671))

(declare-fun b_and!49247 () Bool)

(assert (= b_and!49241 (and (=> t!71671 result!50606) b_and!49247)))

(declare-fun m!725787 () Bool)

(assert (=> d!174849 m!725787))

(declare-fun m!725789 () Bool)

(assert (=> d!174849 m!725789))

(assert (=> b!457471 d!174849))

(declare-fun d!174851 () Bool)

(declare-fun e!280440 () Bool)

(assert (=> d!174851 e!280440))

(declare-fun res!203716 () Bool)

(assert (=> d!174851 (=> (not res!203716) (not e!280440))))

(declare-fun lt!204228 () List!4449)

(assert (=> d!174851 (= res!203716 (= (content!743 lt!204228) ((_ map or) (content!743 lt!203848) (content!743 lt!203860))))))

(declare-fun e!280441 () List!4449)

(assert (=> d!174851 (= lt!204228 e!280441)))

(declare-fun c!92489 () Bool)

(assert (=> d!174851 (= c!92489 ((_ is Nil!4439) lt!203848))))

(assert (=> d!174851 (= (++!1294 lt!203848 lt!203860) lt!204228)))

(declare-fun b!458163 () Bool)

(assert (=> b!458163 (= e!280440 (or (not (= lt!203860 Nil!4439)) (= lt!204228 lt!203848)))))

(declare-fun b!458160 () Bool)

(assert (=> b!458160 (= e!280441 lt!203860)))

(declare-fun b!458162 () Bool)

(declare-fun res!203715 () Bool)

(assert (=> b!458162 (=> (not res!203715) (not e!280440))))

(assert (=> b!458162 (= res!203715 (= (size!3640 lt!204228) (+ (size!3640 lt!203848) (size!3640 lt!203860))))))

(declare-fun b!458161 () Bool)

(assert (=> b!458161 (= e!280441 (Cons!4439 (h!9836 lt!203848) (++!1294 (t!71613 lt!203848) lt!203860)))))

(assert (= (and d!174851 c!92489) b!458160))

(assert (= (and d!174851 (not c!92489)) b!458161))

(assert (= (and d!174851 res!203716) b!458162))

(assert (= (and b!458162 res!203715) b!458163))

(declare-fun m!725791 () Bool)

(assert (=> d!174851 m!725791))

(assert (=> d!174851 m!725695))

(assert (=> d!174851 m!725025))

(declare-fun m!725793 () Bool)

(assert (=> b!458162 m!725793))

(assert (=> b!458162 m!725699))

(assert (=> b!458162 m!725031))

(declare-fun m!725795 () Bool)

(assert (=> b!458161 m!725795))

(assert (=> b!457471 d!174851))

(declare-fun d!174853 () Bool)

(assert (=> d!174853 (= (list!1971 (charsOf!506 separatorToken!170)) (list!1975 (c!92354 (charsOf!506 separatorToken!170))))))

(declare-fun bs!56849 () Bool)

(assert (= bs!56849 d!174853))

(declare-fun m!725797 () Bool)

(assert (=> bs!56849 m!725797))

(assert (=> b!457471 d!174853))

(declare-fun d!174855 () Bool)

(assert (=> d!174855 (= (++!1294 (++!1294 lt!203855 lt!203848) lt!203860) (++!1294 lt!203855 (++!1294 lt!203848 lt!203860)))))

(declare-fun lt!204231 () Unit!8029)

(declare-fun choose!3446 (List!4449 List!4449 List!4449) Unit!8029)

(assert (=> d!174855 (= lt!204231 (choose!3446 lt!203855 lt!203848 lt!203860))))

(assert (=> d!174855 (= (lemmaConcatAssociativity!600 lt!203855 lt!203848 lt!203860) lt!204231)))

(declare-fun bs!56850 () Bool)

(assert (= bs!56850 d!174855))

(declare-fun m!725799 () Bool)

(assert (=> bs!56850 m!725799))

(assert (=> bs!56850 m!724735))

(assert (=> bs!56850 m!724737))

(assert (=> bs!56850 m!724747))

(assert (=> bs!56850 m!724735))

(assert (=> bs!56850 m!724747))

(declare-fun m!725801 () Bool)

(assert (=> bs!56850 m!725801))

(assert (=> b!457471 d!174855))

(declare-fun d!174857 () Bool)

(assert (=> d!174857 (= (list!1971 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203865 separatorToken!170 0)) (list!1975 (c!92354 (printWithSeparatorTokenWhenNeededRec!422 thiss!17480 rules!1920 lt!203865 separatorToken!170 0))))))

(declare-fun bs!56851 () Bool)

(assert (= bs!56851 d!174857))

(declare-fun m!725803 () Bool)

(assert (=> bs!56851 m!725803))

(assert (=> b!457471 d!174857))

(declare-fun bs!56852 () Bool)

(declare-fun b!458171 () Bool)

(assert (= bs!56852 (and b!458171 b!458140)))

(declare-fun lambda!13441 () Int)

(assert (=> bs!56852 (= lambda!13441 lambda!13440)))

(declare-fun bs!56853 () Bool)

(assert (= bs!56853 (and b!458171 d!174711)))

(assert (=> bs!56853 (not (= lambda!13441 lambda!13428))))

(declare-fun bs!56854 () Bool)

(assert (= bs!56854 (and b!458171 b!457452)))

(assert (=> bs!56854 (not (= lambda!13441 lambda!13405))))

(declare-fun bs!56855 () Bool)

(assert (= bs!56855 (and b!458171 b!457964)))

(assert (=> bs!56855 (= lambda!13441 lambda!13432)))

(declare-fun bs!56856 () Bool)

(assert (= bs!56856 (and b!458171 d!174841)))

(assert (=> bs!56856 (not (= lambda!13441 lambda!13439))))

(declare-fun bs!56857 () Bool)

(assert (= bs!56857 (and b!458171 b!457450)))

(assert (=> bs!56857 (= lambda!13441 lambda!13406)))

(declare-fun bs!56858 () Bool)

(assert (= bs!56858 (and b!458171 b!457908)))

(assert (=> bs!56858 (= lambda!13441 lambda!13429)))

(declare-fun bs!56859 () Bool)

(assert (= bs!56859 (and b!458171 d!174673)))

(assert (=> bs!56859 (= lambda!13441 lambda!13420)))

(declare-fun b!458174 () Bool)

(declare-fun e!280448 () Bool)

(assert (=> b!458174 (= e!280448 true)))

(declare-fun b!458173 () Bool)

(declare-fun e!280447 () Bool)

(assert (=> b!458173 (= e!280447 e!280448)))

(declare-fun b!458172 () Bool)

(declare-fun e!280446 () Bool)

(assert (=> b!458172 (= e!280446 e!280447)))

(assert (=> b!458171 e!280446))

(assert (= b!458173 b!458174))

(assert (= b!458172 b!458173))

(assert (= (and b!458171 ((_ is Cons!4440) rules!1920)) b!458172))

(assert (=> b!458174 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13441))))

(assert (=> b!458174 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13441))))

(assert (=> b!458171 true))

(declare-fun b!458164 () Bool)

(declare-fun e!280442 () BalanceConc!3104)

(assert (=> b!458164 (= e!280442 (charsOf!506 separatorToken!170))))

(declare-fun b!458165 () Bool)

(declare-fun e!280444 () List!4449)

(assert (=> b!458165 (= e!280444 Nil!4439)))

(declare-fun c!92493 () Bool)

(declare-fun call!31767 () BalanceConc!3104)

(declare-fun call!31765 () BalanceConc!3104)

(declare-fun call!31764 () List!4449)

(declare-fun bm!31758 () Bool)

(assert (=> bm!31758 (= call!31764 (list!1971 (ite c!92493 call!31765 call!31767)))))

(declare-fun b!458166 () Bool)

(declare-fun e!280443 () List!4449)

(declare-fun call!31766 () List!4449)

(assert (=> b!458166 (= e!280443 call!31766)))

(declare-fun b!458167 () Bool)

(assert (=> b!458167 (= e!280442 call!31767)))

(declare-fun bm!31759 () Bool)

(declare-fun call!31763 () List!4449)

(assert (=> bm!31759 (= call!31763 (list!1971 e!280442))))

(declare-fun c!92492 () Bool)

(declare-fun c!92491 () Bool)

(assert (=> bm!31759 (= c!92492 c!92491)))

(declare-fun b!458168 () Bool)

(declare-fun e!280445 () List!4449)

(assert (=> b!458168 (= e!280445 Nil!4439)))

(assert (=> b!458168 (= (print!474 thiss!17480 (singletonSeq!409 (h!9838 (t!71615 tokens!465)))) (printTailRec!435 thiss!17480 (singletonSeq!409 (h!9838 (t!71615 tokens!465))) 0 (BalanceConc!3105 Empty!1548)))))

(declare-fun lt!204237 () Unit!8029)

(declare-fun Unit!8045 () Unit!8029)

(assert (=> b!458168 (= lt!204237 Unit!8045)))

(declare-fun lt!204236 () Unit!8029)

(declare-fun lt!204232 () List!4449)

(assert (=> b!458168 (= lt!204236 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!194 thiss!17480 rules!1920 call!31763 lt!204232))))

(assert (=> b!458168 false))

(declare-fun lt!204235 () Unit!8029)

(declare-fun Unit!8046 () Unit!8029)

(assert (=> b!458168 (= lt!204235 Unit!8046)))

(declare-fun bm!31760 () Bool)

(assert (=> bm!31760 (= call!31767 call!31765)))

(declare-fun d!174859 () Bool)

(declare-fun c!92490 () Bool)

(assert (=> d!174859 (= c!92490 ((_ is Cons!4441) (t!71615 tokens!465)))))

(assert (=> d!174859 (= (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 (t!71615 tokens!465) separatorToken!170) e!280444)))

(declare-fun b!458169 () Bool)

(declare-fun lt!204233 () Option!1160)

(assert (=> b!458169 (= c!92491 (and ((_ is Some!1159) lt!204233) (not (= (_1!2919 (v!15490 lt!204233)) (h!9838 (t!71615 tokens!465))))))))

(assert (=> b!458169 (= e!280443 e!280445)))

(declare-fun bm!31761 () Bool)

(assert (=> bm!31761 (= call!31765 (charsOf!506 (h!9838 (t!71615 tokens!465))))))

(declare-fun b!458170 () Bool)

(assert (=> b!458170 (= e!280445 (++!1294 call!31766 lt!204232))))

(assert (=> b!458171 (= e!280444 e!280443)))

(declare-fun lt!204234 () Unit!8029)

(assert (=> b!458171 (= lt!204234 (forallContained!416 (t!71615 tokens!465) lambda!13441 (h!9838 (t!71615 tokens!465))))))

(assert (=> b!458171 (= lt!204232 (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 (t!71615 (t!71615 tokens!465)) separatorToken!170))))

(assert (=> b!458171 (= lt!204233 (maxPrefix!465 thiss!17480 rules!1920 (++!1294 (list!1971 (charsOf!506 (h!9838 (t!71615 tokens!465)))) lt!204232)))))

(assert (=> b!458171 (= c!92493 (and ((_ is Some!1159) lt!204233) (= (_1!2919 (v!15490 lt!204233)) (h!9838 (t!71615 tokens!465)))))))

(declare-fun bm!31762 () Bool)

(assert (=> bm!31762 (= call!31766 (++!1294 call!31764 (ite c!92493 lt!204232 call!31763)))))

(assert (= (and d!174859 c!92490) b!458171))

(assert (= (and d!174859 (not c!92490)) b!458165))

(assert (= (and b!458171 c!92493) b!458166))

(assert (= (and b!458171 (not c!92493)) b!458169))

(assert (= (and b!458169 c!92491) b!458170))

(assert (= (and b!458169 (not c!92491)) b!458168))

(assert (= (or b!458170 b!458168) bm!31760))

(assert (= (or b!458170 b!458168) bm!31759))

(assert (= (and bm!31759 c!92492) b!458164))

(assert (= (and bm!31759 (not c!92492)) b!458167))

(assert (= (or b!458166 bm!31760) bm!31761))

(assert (= (or b!458166 b!458170) bm!31758))

(assert (= (or b!458166 b!458170) bm!31762))

(declare-fun m!725805 () Bool)

(assert (=> bm!31761 m!725805))

(declare-fun m!725807 () Bool)

(assert (=> b!458171 m!725807))

(declare-fun m!725809 () Bool)

(assert (=> b!458171 m!725809))

(declare-fun m!725811 () Bool)

(assert (=> b!458171 m!725811))

(assert (=> b!458171 m!725807))

(assert (=> b!458171 m!725805))

(assert (=> b!458171 m!725811))

(declare-fun m!725813 () Bool)

(assert (=> b!458171 m!725813))

(declare-fun m!725815 () Bool)

(assert (=> b!458171 m!725815))

(assert (=> b!458171 m!725805))

(declare-fun m!725817 () Bool)

(assert (=> bm!31762 m!725817))

(assert (=> b!458164 m!724739))

(declare-fun m!725819 () Bool)

(assert (=> b!458170 m!725819))

(declare-fun m!725821 () Bool)

(assert (=> b!458168 m!725821))

(assert (=> b!458168 m!725821))

(declare-fun m!725823 () Bool)

(assert (=> b!458168 m!725823))

(assert (=> b!458168 m!725821))

(declare-fun m!725825 () Bool)

(assert (=> b!458168 m!725825))

(declare-fun m!725827 () Bool)

(assert (=> b!458168 m!725827))

(declare-fun m!725829 () Bool)

(assert (=> bm!31759 m!725829))

(declare-fun m!725831 () Bool)

(assert (=> bm!31758 m!725831))

(assert (=> b!457471 d!174859))

(declare-fun b!458175 () Bool)

(declare-fun e!280451 () Bool)

(assert (=> b!458175 (= e!280451 (inv!17 (value!28911 separatorToken!170)))))

(declare-fun b!458176 () Bool)

(declare-fun e!280449 () Bool)

(assert (=> b!458176 (= e!280449 (inv!16 (value!28911 separatorToken!170)))))

(declare-fun d!174861 () Bool)

(declare-fun c!92495 () Bool)

(assert (=> d!174861 (= c!92495 ((_ is IntegerValue!2655) (value!28911 separatorToken!170)))))

(assert (=> d!174861 (= (inv!21 (value!28911 separatorToken!170)) e!280449)))

(declare-fun b!458177 () Bool)

(assert (=> b!458177 (= e!280449 e!280451)))

(declare-fun c!92494 () Bool)

(assert (=> b!458177 (= c!92494 ((_ is IntegerValue!2656) (value!28911 separatorToken!170)))))

(declare-fun b!458178 () Bool)

(declare-fun res!203717 () Bool)

(declare-fun e!280450 () Bool)

(assert (=> b!458178 (=> res!203717 e!280450)))

(assert (=> b!458178 (= res!203717 (not ((_ is IntegerValue!2657) (value!28911 separatorToken!170))))))

(assert (=> b!458178 (= e!280451 e!280450)))

(declare-fun b!458179 () Bool)

(assert (=> b!458179 (= e!280450 (inv!15 (value!28911 separatorToken!170)))))

(assert (= (and d!174861 c!92495) b!458176))

(assert (= (and d!174861 (not c!92495)) b!458177))

(assert (= (and b!458177 c!92494) b!458175))

(assert (= (and b!458177 (not c!92494)) b!458178))

(assert (= (and b!458178 (not res!203717)) b!458179))

(declare-fun m!725833 () Bool)

(assert (=> b!458175 m!725833))

(declare-fun m!725835 () Bool)

(assert (=> b!458176 m!725835))

(declare-fun m!725837 () Bool)

(assert (=> b!458179 m!725837))

(assert (=> b!457449 d!174861))

(declare-fun d!174863 () Bool)

(assert (=> d!174863 (= (isEmpty!3411 (_2!2919 lt!203851)) ((_ is Nil!4439) (_2!2919 lt!203851)))))

(assert (=> b!457453 d!174863))

(declare-fun d!174865 () Bool)

(declare-fun res!203718 () Bool)

(declare-fun e!280452 () Bool)

(assert (=> d!174865 (=> res!203718 e!280452)))

(assert (=> d!174865 (= res!203718 ((_ is Nil!4441) tokens!465))))

(assert (=> d!174865 (= (forall!1290 tokens!465 lambda!13405) e!280452)))

(declare-fun b!458180 () Bool)

(declare-fun e!280453 () Bool)

(assert (=> b!458180 (= e!280452 e!280453)))

(declare-fun res!203719 () Bool)

(assert (=> b!458180 (=> (not res!203719) (not e!280453))))

(assert (=> b!458180 (= res!203719 (dynLambda!2701 lambda!13405 (h!9838 tokens!465)))))

(declare-fun b!458181 () Bool)

(assert (=> b!458181 (= e!280453 (forall!1290 (t!71615 tokens!465) lambda!13405))))

(assert (= (and d!174865 (not res!203718)) b!458180))

(assert (= (and b!458180 res!203719) b!458181))

(declare-fun b_lambda!19011 () Bool)

(assert (=> (not b_lambda!19011) (not b!458180)))

(declare-fun m!725839 () Bool)

(assert (=> b!458180 m!725839))

(assert (=> b!458181 m!724773))

(assert (=> b!457452 d!174865))

(declare-fun d!174867 () Bool)

(assert (=> d!174867 (= (isEmpty!3413 rules!1920) ((_ is Nil!4440) rules!1920))))

(assert (=> b!457473 d!174867))

(declare-fun d!174869 () Bool)

(declare-fun res!203724 () Bool)

(declare-fun e!280456 () Bool)

(assert (=> d!174869 (=> (not res!203724) (not e!280456))))

(assert (=> d!174869 (= res!203724 (not (isEmpty!3411 (originalCharacters!906 (h!9838 tokens!465)))))))

(assert (=> d!174869 (= (inv!5520 (h!9838 tokens!465)) e!280456)))

(declare-fun b!458186 () Bool)

(declare-fun res!203725 () Bool)

(assert (=> b!458186 (=> (not res!203725) (not e!280456))))

(assert (=> b!458186 (= res!203725 (= (originalCharacters!906 (h!9838 tokens!465)) (list!1971 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (value!28911 (h!9838 tokens!465))))))))

(declare-fun b!458187 () Bool)

(assert (=> b!458187 (= e!280456 (= (size!3635 (h!9838 tokens!465)) (size!3640 (originalCharacters!906 (h!9838 tokens!465)))))))

(assert (= (and d!174869 res!203724) b!458186))

(assert (= (and b!458186 res!203725) b!458187))

(declare-fun b_lambda!19013 () Bool)

(assert (=> (not b_lambda!19013) (not b!458186)))

(assert (=> b!458186 t!71667))

(declare-fun b_and!49249 () Bool)

(assert (= b_and!49243 (and (=> t!71667 result!50602) b_and!49249)))

(assert (=> b!458186 t!71669))

(declare-fun b_and!49251 () Bool)

(assert (= b_and!49245 (and (=> t!71669 result!50604) b_and!49251)))

(assert (=> b!458186 t!71671))

(declare-fun b_and!49253 () Bool)

(assert (= b_and!49247 (and (=> t!71671 result!50606) b_and!49253)))

(declare-fun m!725841 () Bool)

(assert (=> d!174869 m!725841))

(assert (=> b!458186 m!725789))

(assert (=> b!458186 m!725789))

(declare-fun m!725843 () Bool)

(assert (=> b!458186 m!725843))

(declare-fun m!725845 () Bool)

(assert (=> b!458187 m!725845))

(assert (=> b!457456 d!174869))

(declare-fun d!174871 () Bool)

(assert (=> d!174871 (= (inv!5516 (tag!1123 (h!9837 rules!1920))) (= (mod (str.len (value!28910 (tag!1123 (h!9837 rules!1920)))) 2) 0))))

(assert (=> b!457455 d!174871))

(declare-fun d!174873 () Bool)

(declare-fun res!203726 () Bool)

(declare-fun e!280457 () Bool)

(assert (=> d!174873 (=> (not res!203726) (not e!280457))))

(assert (=> d!174873 (= res!203726 (semiInverseModEq!343 (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toValue!1682 (transformation!863 (h!9837 rules!1920)))))))

(assert (=> d!174873 (= (inv!5519 (transformation!863 (h!9837 rules!1920))) e!280457)))

(declare-fun b!458188 () Bool)

(assert (=> b!458188 (= e!280457 (equivClasses!326 (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toValue!1682 (transformation!863 (h!9837 rules!1920)))))))

(assert (= (and d!174873 res!203726) b!458188))

(declare-fun m!725847 () Bool)

(assert (=> d!174873 m!725847))

(declare-fun m!725849 () Bool)

(assert (=> b!458188 m!725849))

(assert (=> b!457455 d!174873))

(declare-fun d!174875 () Bool)

(declare-fun res!203727 () Bool)

(declare-fun e!280458 () Bool)

(assert (=> d!174875 (=> (not res!203727) (not e!280458))))

(assert (=> d!174875 (= res!203727 (not (isEmpty!3411 (originalCharacters!906 separatorToken!170))))))

(assert (=> d!174875 (= (inv!5520 separatorToken!170) e!280458)))

(declare-fun b!458189 () Bool)

(declare-fun res!203728 () Bool)

(assert (=> b!458189 (=> (not res!203728) (not e!280458))))

(assert (=> b!458189 (= res!203728 (= (originalCharacters!906 separatorToken!170) (list!1971 (dynLambda!2702 (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (value!28911 separatorToken!170)))))))

(declare-fun b!458190 () Bool)

(assert (=> b!458190 (= e!280458 (= (size!3635 separatorToken!170) (size!3640 (originalCharacters!906 separatorToken!170))))))

(assert (= (and d!174875 res!203727) b!458189))

(assert (= (and b!458189 res!203728) b!458190))

(declare-fun b_lambda!19015 () Bool)

(assert (=> (not b_lambda!19015) (not b!458189)))

(assert (=> b!458189 t!71661))

(declare-fun b_and!49255 () Bool)

(assert (= b_and!49249 (and (=> t!71661 result!50594) b_and!49255)))

(assert (=> b!458189 t!71663))

(declare-fun b_and!49257 () Bool)

(assert (= b_and!49251 (and (=> t!71663 result!50598) b_and!49257)))

(assert (=> b!458189 t!71665))

(declare-fun b_and!49259 () Bool)

(assert (= b_and!49253 (and (=> t!71665 result!50600) b_and!49259)))

(declare-fun m!725851 () Bool)

(assert (=> d!174875 m!725851))

(assert (=> b!458189 m!725769))

(assert (=> b!458189 m!725769))

(declare-fun m!725853 () Bool)

(assert (=> b!458189 m!725853))

(declare-fun m!725855 () Bool)

(assert (=> b!458190 m!725855))

(assert (=> start!43382 d!174875))

(declare-fun d!174877 () Bool)

(assert (=> d!174877 (= (inv!5516 (tag!1123 (rule!1558 separatorToken!170))) (= (mod (str.len (value!28910 (tag!1123 (rule!1558 separatorToken!170)))) 2) 0))))

(assert (=> b!457459 d!174877))

(declare-fun d!174879 () Bool)

(declare-fun res!203729 () Bool)

(declare-fun e!280459 () Bool)

(assert (=> d!174879 (=> (not res!203729) (not e!280459))))

(assert (=> d!174879 (= res!203729 (semiInverseModEq!343 (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (toValue!1682 (transformation!863 (rule!1558 separatorToken!170)))))))

(assert (=> d!174879 (= (inv!5519 (transformation!863 (rule!1558 separatorToken!170))) e!280459)))

(declare-fun b!458191 () Bool)

(assert (=> b!458191 (= e!280459 (equivClasses!326 (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (toValue!1682 (transformation!863 (rule!1558 separatorToken!170)))))))

(assert (= (and d!174879 res!203729) b!458191))

(declare-fun m!725857 () Bool)

(assert (=> d!174879 m!725857))

(declare-fun m!725859 () Bool)

(assert (=> b!458191 m!725859))

(assert (=> b!457459 d!174879))

(declare-fun d!174881 () Bool)

(assert (=> d!174881 (= (get!1628 lt!203850) (v!15490 lt!203850))))

(assert (=> b!457458 d!174881))

(declare-fun d!174883 () Bool)

(assert (=> d!174883 (= (isDefined!1000 lt!203850) (not (isEmpty!3419 lt!203850)))))

(declare-fun bs!56860 () Bool)

(assert (= bs!56860 d!174883))

(declare-fun m!725861 () Bool)

(assert (=> bs!56860 m!725861))

(assert (=> b!457458 d!174883))

(declare-fun b!458192 () Bool)

(declare-fun e!280461 () Option!1160)

(declare-fun lt!204241 () Option!1160)

(declare-fun lt!204239 () Option!1160)

(assert (=> b!458192 (= e!280461 (ite (and ((_ is None!1159) lt!204241) ((_ is None!1159) lt!204239)) None!1159 (ite ((_ is None!1159) lt!204239) lt!204241 (ite ((_ is None!1159) lt!204241) lt!204239 (ite (>= (size!3635 (_1!2919 (v!15490 lt!204241))) (size!3635 (_1!2919 (v!15490 lt!204239)))) lt!204241 lt!204239)))))))

(declare-fun call!31768 () Option!1160)

(assert (=> b!458192 (= lt!204241 call!31768)))

(assert (=> b!458192 (= lt!204239 (maxPrefix!465 thiss!17480 (t!71614 rules!1920) lt!203855))))

(declare-fun d!174885 () Bool)

(declare-fun e!280462 () Bool)

(assert (=> d!174885 e!280462))

(declare-fun res!203730 () Bool)

(assert (=> d!174885 (=> res!203730 e!280462)))

(declare-fun lt!204242 () Option!1160)

(assert (=> d!174885 (= res!203730 (isEmpty!3419 lt!204242))))

(assert (=> d!174885 (= lt!204242 e!280461)))

(declare-fun c!92496 () Bool)

(assert (=> d!174885 (= c!92496 (and ((_ is Cons!4440) rules!1920) ((_ is Nil!4440) (t!71614 rules!1920))))))

(declare-fun lt!204238 () Unit!8029)

(declare-fun lt!204240 () Unit!8029)

(assert (=> d!174885 (= lt!204238 lt!204240)))

(assert (=> d!174885 (isPrefix!515 lt!203855 lt!203855)))

(assert (=> d!174885 (= lt!204240 (lemmaIsPrefixRefl!289 lt!203855 lt!203855))))

(assert (=> d!174885 (rulesValidInductive!284 thiss!17480 rules!1920)))

(assert (=> d!174885 (= (maxPrefix!465 thiss!17480 rules!1920 lt!203855) lt!204242)))

(declare-fun b!458193 () Bool)

(declare-fun res!203731 () Bool)

(declare-fun e!280460 () Bool)

(assert (=> b!458193 (=> (not res!203731) (not e!280460))))

(assert (=> b!458193 (= res!203731 (= (list!1971 (charsOf!506 (_1!2919 (get!1628 lt!204242)))) (originalCharacters!906 (_1!2919 (get!1628 lt!204242)))))))

(declare-fun b!458194 () Bool)

(declare-fun res!203734 () Bool)

(assert (=> b!458194 (=> (not res!203734) (not e!280460))))

(assert (=> b!458194 (= res!203734 (= (value!28911 (_1!2919 (get!1628 lt!204242))) (apply!1140 (transformation!863 (rule!1558 (_1!2919 (get!1628 lt!204242)))) (seqFromList!1091 (originalCharacters!906 (_1!2919 (get!1628 lt!204242)))))))))

(declare-fun bm!31763 () Bool)

(assert (=> bm!31763 (= call!31768 (maxPrefixOneRule!223 thiss!17480 (h!9837 rules!1920) lt!203855))))

(declare-fun b!458195 () Bool)

(assert (=> b!458195 (= e!280460 (contains!996 rules!1920 (rule!1558 (_1!2919 (get!1628 lt!204242)))))))

(declare-fun b!458196 () Bool)

(assert (=> b!458196 (= e!280461 call!31768)))

(declare-fun b!458197 () Bool)

(declare-fun res!203732 () Bool)

(assert (=> b!458197 (=> (not res!203732) (not e!280460))))

(assert (=> b!458197 (= res!203732 (matchR!405 (regex!863 (rule!1558 (_1!2919 (get!1628 lt!204242)))) (list!1971 (charsOf!506 (_1!2919 (get!1628 lt!204242))))))))

(declare-fun b!458198 () Bool)

(declare-fun res!203735 () Bool)

(assert (=> b!458198 (=> (not res!203735) (not e!280460))))

(assert (=> b!458198 (= res!203735 (= (++!1294 (list!1971 (charsOf!506 (_1!2919 (get!1628 lt!204242)))) (_2!2919 (get!1628 lt!204242))) lt!203855))))

(declare-fun b!458199 () Bool)

(assert (=> b!458199 (= e!280462 e!280460)))

(declare-fun res!203736 () Bool)

(assert (=> b!458199 (=> (not res!203736) (not e!280460))))

(assert (=> b!458199 (= res!203736 (isDefined!1000 lt!204242))))

(declare-fun b!458200 () Bool)

(declare-fun res!203733 () Bool)

(assert (=> b!458200 (=> (not res!203733) (not e!280460))))

(assert (=> b!458200 (= res!203733 (< (size!3640 (_2!2919 (get!1628 lt!204242))) (size!3640 lt!203855)))))

(assert (= (and d!174885 c!92496) b!458196))

(assert (= (and d!174885 (not c!92496)) b!458192))

(assert (= (or b!458196 b!458192) bm!31763))

(assert (= (and d!174885 (not res!203730)) b!458199))

(assert (= (and b!458199 res!203736) b!458193))

(assert (= (and b!458193 res!203731) b!458200))

(assert (= (and b!458200 res!203733) b!458198))

(assert (= (and b!458198 res!203735) b!458194))

(assert (= (and b!458194 res!203734) b!458197))

(assert (= (and b!458197 res!203732) b!458195))

(declare-fun m!725863 () Bool)

(assert (=> b!458198 m!725863))

(declare-fun m!725865 () Bool)

(assert (=> b!458198 m!725865))

(assert (=> b!458198 m!725865))

(declare-fun m!725867 () Bool)

(assert (=> b!458198 m!725867))

(assert (=> b!458198 m!725867))

(declare-fun m!725869 () Bool)

(assert (=> b!458198 m!725869))

(assert (=> b!458193 m!725863))

(assert (=> b!458193 m!725865))

(assert (=> b!458193 m!725865))

(assert (=> b!458193 m!725867))

(declare-fun m!725871 () Bool)

(assert (=> bm!31763 m!725871))

(assert (=> b!458200 m!725863))

(declare-fun m!725873 () Bool)

(assert (=> b!458200 m!725873))

(assert (=> b!458200 m!725029))

(declare-fun m!725875 () Bool)

(assert (=> b!458199 m!725875))

(assert (=> b!458197 m!725863))

(assert (=> b!458197 m!725865))

(assert (=> b!458197 m!725865))

(assert (=> b!458197 m!725867))

(assert (=> b!458197 m!725867))

(declare-fun m!725877 () Bool)

(assert (=> b!458197 m!725877))

(declare-fun m!725879 () Bool)

(assert (=> d!174885 m!725879))

(declare-fun m!725881 () Bool)

(assert (=> d!174885 m!725881))

(declare-fun m!725883 () Bool)

(assert (=> d!174885 m!725883))

(assert (=> d!174885 m!725609))

(assert (=> b!458195 m!725863))

(declare-fun m!725885 () Bool)

(assert (=> b!458195 m!725885))

(declare-fun m!725887 () Bool)

(assert (=> b!458192 m!725887))

(assert (=> b!458194 m!725863))

(declare-fun m!725889 () Bool)

(assert (=> b!458194 m!725889))

(assert (=> b!458194 m!725889))

(declare-fun m!725891 () Bool)

(assert (=> b!458194 m!725891))

(assert (=> b!457458 d!174885))

(declare-fun bs!56861 () Bool)

(declare-fun d!174887 () Bool)

(assert (= bs!56861 (and d!174887 b!458140)))

(declare-fun lambda!13442 () Int)

(assert (=> bs!56861 (= lambda!13442 lambda!13440)))

(declare-fun bs!56862 () Bool)

(assert (= bs!56862 (and d!174887 b!457452)))

(assert (=> bs!56862 (not (= lambda!13442 lambda!13405))))

(declare-fun bs!56863 () Bool)

(assert (= bs!56863 (and d!174887 b!457964)))

(assert (=> bs!56863 (= lambda!13442 lambda!13432)))

(declare-fun bs!56864 () Bool)

(assert (= bs!56864 (and d!174887 d!174841)))

(assert (=> bs!56864 (not (= lambda!13442 lambda!13439))))

(declare-fun bs!56865 () Bool)

(assert (= bs!56865 (and d!174887 b!457450)))

(assert (=> bs!56865 (= lambda!13442 lambda!13406)))

(declare-fun bs!56866 () Bool)

(assert (= bs!56866 (and d!174887 b!457908)))

(assert (=> bs!56866 (= lambda!13442 lambda!13429)))

(declare-fun bs!56867 () Bool)

(assert (= bs!56867 (and d!174887 d!174673)))

(assert (=> bs!56867 (= lambda!13442 lambda!13420)))

(declare-fun bs!56868 () Bool)

(assert (= bs!56868 (and d!174887 b!458171)))

(assert (=> bs!56868 (= lambda!13442 lambda!13441)))

(declare-fun bs!56869 () Bool)

(assert (= bs!56869 (and d!174887 d!174711)))

(assert (=> bs!56869 (not (= lambda!13442 lambda!13428))))

(declare-fun b!458204 () Bool)

(declare-fun e!280466 () Bool)

(assert (=> b!458204 (= e!280466 true)))

(declare-fun b!458203 () Bool)

(declare-fun e!280465 () Bool)

(assert (=> b!458203 (= e!280465 e!280466)))

(declare-fun b!458202 () Bool)

(declare-fun e!280464 () Bool)

(assert (=> b!458202 (= e!280464 e!280465)))

(assert (=> d!174887 e!280464))

(assert (= b!458203 b!458204))

(assert (= b!458202 b!458203))

(assert (= (and d!174887 ((_ is Cons!4440) rules!1920)) b!458202))

(assert (=> b!458204 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13442))))

(assert (=> b!458204 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 rules!1920)))) (dynLambda!2697 order!3939 lambda!13442))))

(assert (=> d!174887 true))

(declare-fun e!280463 () Bool)

(assert (=> d!174887 e!280463))

(declare-fun res!203737 () Bool)

(assert (=> d!174887 (=> (not res!203737) (not e!280463))))

(declare-fun lt!204243 () Bool)

(assert (=> d!174887 (= res!203737 (= lt!204243 (forall!1290 (list!1974 lt!203865) lambda!13442)))))

(assert (=> d!174887 (= lt!204243 (forall!1291 lt!203865 lambda!13442))))

(assert (=> d!174887 (not (isEmpty!3413 rules!1920))))

(assert (=> d!174887 (= (rulesProduceEachTokenIndividually!541 thiss!17480 rules!1920 lt!203865) lt!204243)))

(declare-fun b!458201 () Bool)

(assert (=> b!458201 (= e!280463 (= lt!204243 (rulesProduceEachTokenIndividuallyList!320 thiss!17480 rules!1920 (list!1974 lt!203865))))))

(assert (= (and d!174887 res!203737) b!458201))

(assert (=> d!174887 m!725719))

(assert (=> d!174887 m!725719))

(declare-fun m!725893 () Bool)

(assert (=> d!174887 m!725893))

(declare-fun m!725895 () Bool)

(assert (=> d!174887 m!725895))

(assert (=> d!174887 m!724719))

(assert (=> b!458201 m!725719))

(assert (=> b!458201 m!725719))

(declare-fun m!725897 () Bool)

(assert (=> b!458201 m!725897))

(assert (=> b!457457 d!174887))

(declare-fun d!174889 () Bool)

(assert (=> d!174889 (= (isEmpty!3412 tokens!465) ((_ is Nil!4441) tokens!465))))

(assert (=> b!457457 d!174889))

(declare-fun d!174891 () Bool)

(declare-fun e!280471 () Bool)

(assert (=> d!174891 e!280471))

(declare-fun res!203742 () Bool)

(assert (=> d!174891 (=> res!203742 e!280471)))

(assert (=> d!174891 (= res!203742 (isEmpty!3412 tokens!465))))

(declare-fun lt!204246 () Unit!8029)

(declare-fun choose!3447 (LexerInterface!749 List!4450 List!4451 Token!1470) Unit!8029)

(assert (=> d!174891 (= lt!204246 (choose!3447 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!174891 (not (isEmpty!3413 rules!1920))))

(assert (=> d!174891 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!264 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!204246)))

(declare-fun b!458209 () Bool)

(declare-fun e!280472 () Bool)

(assert (=> b!458209 (= e!280471 e!280472)))

(declare-fun res!203743 () Bool)

(assert (=> b!458209 (=> (not res!203743) (not e!280472))))

(assert (=> b!458209 (= res!203743 (isDefined!1000 (maxPrefix!465 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!458210 () Bool)

(assert (=> b!458210 (= e!280472 (= (_1!2919 (get!1628 (maxPrefix!465 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!430 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1114 tokens!465)))))

(assert (= (and d!174891 (not res!203742)) b!458209))

(assert (= (and b!458209 res!203743) b!458210))

(assert (=> d!174891 m!724725))

(declare-fun m!725899 () Bool)

(assert (=> d!174891 m!725899))

(assert (=> d!174891 m!724719))

(assert (=> b!458209 m!724707))

(assert (=> b!458209 m!724707))

(declare-fun m!725901 () Bool)

(assert (=> b!458209 m!725901))

(assert (=> b!458209 m!725901))

(declare-fun m!725903 () Bool)

(assert (=> b!458209 m!725903))

(assert (=> b!458210 m!724707))

(assert (=> b!458210 m!724707))

(assert (=> b!458210 m!725901))

(assert (=> b!458210 m!725901))

(declare-fun m!725905 () Bool)

(assert (=> b!458210 m!725905))

(assert (=> b!458210 m!724699))

(assert (=> b!457457 d!174891))

(declare-fun b!458221 () Bool)

(declare-fun e!280475 () Bool)

(declare-fun tp_is_empty!1983 () Bool)

(assert (=> b!458221 (= e!280475 tp_is_empty!1983)))

(declare-fun b!458223 () Bool)

(declare-fun tp!126917 () Bool)

(assert (=> b!458223 (= e!280475 tp!126917)))

(declare-fun b!458224 () Bool)

(declare-fun tp!126916 () Bool)

(declare-fun tp!126920 () Bool)

(assert (=> b!458224 (= e!280475 (and tp!126916 tp!126920))))

(declare-fun b!458222 () Bool)

(declare-fun tp!126918 () Bool)

(declare-fun tp!126919 () Bool)

(assert (=> b!458222 (= e!280475 (and tp!126918 tp!126919))))

(assert (=> b!457451 (= tp!126834 e!280475)))

(assert (= (and b!457451 ((_ is ElementMatch!1087) (regex!863 (rule!1558 (h!9838 tokens!465))))) b!458221))

(assert (= (and b!457451 ((_ is Concat!1973) (regex!863 (rule!1558 (h!9838 tokens!465))))) b!458222))

(assert (= (and b!457451 ((_ is Star!1087) (regex!863 (rule!1558 (h!9838 tokens!465))))) b!458223))

(assert (= (and b!457451 ((_ is Union!1087) (regex!863 (rule!1558 (h!9838 tokens!465))))) b!458224))

(declare-fun b!458235 () Bool)

(declare-fun b_free!12773 () Bool)

(declare-fun b_next!12773 () Bool)

(assert (=> b!458235 (= b_free!12773 (not b_next!12773))))

(declare-fun tp!126931 () Bool)

(declare-fun b_and!49261 () Bool)

(assert (=> b!458235 (= tp!126931 b_and!49261)))

(declare-fun b_free!12775 () Bool)

(declare-fun b_next!12775 () Bool)

(assert (=> b!458235 (= b_free!12775 (not b_next!12775))))

(declare-fun t!71673 () Bool)

(declare-fun tb!45993 () Bool)

(assert (=> (and b!458235 (= (toChars!1541 (transformation!863 (h!9837 (t!71614 rules!1920)))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170)))) t!71673) tb!45993))

(declare-fun result!50612 () Bool)

(assert (= result!50612 result!50594))

(assert (=> d!174843 t!71673))

(declare-fun tb!45995 () Bool)

(declare-fun t!71675 () Bool)

(assert (=> (and b!458235 (= (toChars!1541 (transformation!863 (h!9837 (t!71614 rules!1920)))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465))))) t!71675) tb!45995))

(declare-fun result!50614 () Bool)

(assert (= result!50614 result!50602))

(assert (=> d!174849 t!71675))

(assert (=> b!458186 t!71675))

(assert (=> b!458189 t!71673))

(declare-fun tp!126929 () Bool)

(declare-fun b_and!49263 () Bool)

(assert (=> b!458235 (= tp!126929 (and (=> t!71673 result!50612) (=> t!71675 result!50614) b_and!49263))))

(declare-fun e!280487 () Bool)

(assert (=> b!458235 (= e!280487 (and tp!126931 tp!126929))))

(declare-fun b!458234 () Bool)

(declare-fun e!280485 () Bool)

(declare-fun tp!126932 () Bool)

(assert (=> b!458234 (= e!280485 (and tp!126932 (inv!5516 (tag!1123 (h!9837 (t!71614 rules!1920)))) (inv!5519 (transformation!863 (h!9837 (t!71614 rules!1920)))) e!280487))))

(declare-fun b!458233 () Bool)

(declare-fun e!280486 () Bool)

(declare-fun tp!126930 () Bool)

(assert (=> b!458233 (= e!280486 (and e!280485 tp!126930))))

(assert (=> b!457472 (= tp!126837 e!280486)))

(assert (= b!458234 b!458235))

(assert (= b!458233 b!458234))

(assert (= (and b!457472 ((_ is Cons!4440) (t!71614 rules!1920))) b!458233))

(declare-fun m!725907 () Bool)

(assert (=> b!458234 m!725907))

(declare-fun m!725909 () Bool)

(assert (=> b!458234 m!725909))

(declare-fun b!458240 () Bool)

(declare-fun e!280490 () Bool)

(declare-fun tp!126935 () Bool)

(assert (=> b!458240 (= e!280490 (and tp_is_empty!1983 tp!126935))))

(assert (=> b!457449 (= tp!126833 e!280490)))

(assert (= (and b!457449 ((_ is Cons!4439) (originalCharacters!906 separatorToken!170))) b!458240))

(declare-fun b!458243 () Bool)

(declare-fun e!280493 () Bool)

(assert (=> b!458243 (= e!280493 true)))

(declare-fun b!458242 () Bool)

(declare-fun e!280492 () Bool)

(assert (=> b!458242 (= e!280492 e!280493)))

(declare-fun b!458241 () Bool)

(declare-fun e!280491 () Bool)

(assert (=> b!458241 (= e!280491 e!280492)))

(assert (=> b!457482 e!280491))

(assert (= b!458242 b!458243))

(assert (= b!458241 b!458242))

(assert (= (and b!457482 ((_ is Cons!4440) (t!71614 rules!1920))) b!458241))

(assert (=> b!458243 (< (dynLambda!2696 order!3937 (toValue!1682 (transformation!863 (h!9837 (t!71614 rules!1920))))) (dynLambda!2697 order!3939 lambda!13406))))

(assert (=> b!458243 (< (dynLambda!2698 order!3941 (toChars!1541 (transformation!863 (h!9837 (t!71614 rules!1920))))) (dynLambda!2697 order!3939 lambda!13406))))

(declare-fun b!458257 () Bool)

(declare-fun b_free!12777 () Bool)

(declare-fun b_next!12777 () Bool)

(assert (=> b!458257 (= b_free!12777 (not b_next!12777))))

(declare-fun tp!126947 () Bool)

(declare-fun b_and!49265 () Bool)

(assert (=> b!458257 (= tp!126947 b_and!49265)))

(declare-fun b_free!12779 () Bool)

(declare-fun b_next!12779 () Bool)

(assert (=> b!458257 (= b_free!12779 (not b_next!12779))))

(declare-fun t!71677 () Bool)

(declare-fun tb!45997 () Bool)

(assert (=> (and b!458257 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 (t!71615 tokens!465))))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170)))) t!71677) tb!45997))

(declare-fun result!50620 () Bool)

(assert (= result!50620 result!50594))

(assert (=> d!174843 t!71677))

(declare-fun t!71679 () Bool)

(declare-fun tb!45999 () Bool)

(assert (=> (and b!458257 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 (t!71615 tokens!465))))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465))))) t!71679) tb!45999))

(declare-fun result!50622 () Bool)

(assert (= result!50622 result!50602))

(assert (=> d!174849 t!71679))

(assert (=> b!458186 t!71679))

(assert (=> b!458189 t!71677))

(declare-fun b_and!49267 () Bool)

(declare-fun tp!126949 () Bool)

(assert (=> b!458257 (= tp!126949 (and (=> t!71677 result!50620) (=> t!71679 result!50622) b_and!49267))))

(declare-fun tp!126948 () Bool)

(declare-fun b!458256 () Bool)

(declare-fun e!280506 () Bool)

(declare-fun e!280507 () Bool)

(assert (=> b!458256 (= e!280506 (and tp!126948 (inv!5516 (tag!1123 (rule!1558 (h!9838 (t!71615 tokens!465))))) (inv!5519 (transformation!863 (rule!1558 (h!9838 (t!71615 tokens!465))))) e!280507))))

(declare-fun e!280510 () Bool)

(assert (=> b!457456 (= tp!126831 e!280510)))

(assert (=> b!458257 (= e!280507 (and tp!126947 tp!126949))))

(declare-fun b!458254 () Bool)

(declare-fun e!280509 () Bool)

(declare-fun tp!126946 () Bool)

(assert (=> b!458254 (= e!280510 (and (inv!5520 (h!9838 (t!71615 tokens!465))) e!280509 tp!126946))))

(declare-fun b!458255 () Bool)

(declare-fun tp!126950 () Bool)

(assert (=> b!458255 (= e!280509 (and (inv!21 (value!28911 (h!9838 (t!71615 tokens!465)))) e!280506 tp!126950))))

(assert (= b!458256 b!458257))

(assert (= b!458255 b!458256))

(assert (= b!458254 b!458255))

(assert (= (and b!457456 ((_ is Cons!4441) (t!71615 tokens!465))) b!458254))

(declare-fun m!725911 () Bool)

(assert (=> b!458256 m!725911))

(declare-fun m!725913 () Bool)

(assert (=> b!458256 m!725913))

(declare-fun m!725915 () Bool)

(assert (=> b!458254 m!725915))

(declare-fun m!725917 () Bool)

(assert (=> b!458255 m!725917))

(declare-fun b!458258 () Bool)

(declare-fun e!280512 () Bool)

(declare-fun tp!126951 () Bool)

(assert (=> b!458258 (= e!280512 (and tp_is_empty!1983 tp!126951))))

(assert (=> b!457445 (= tp!126830 e!280512)))

(assert (= (and b!457445 ((_ is Cons!4439) (originalCharacters!906 (h!9838 tokens!465)))) b!458258))

(declare-fun b!458259 () Bool)

(declare-fun e!280513 () Bool)

(assert (=> b!458259 (= e!280513 tp_is_empty!1983)))

(declare-fun b!458261 () Bool)

(declare-fun tp!126953 () Bool)

(assert (=> b!458261 (= e!280513 tp!126953)))

(declare-fun b!458262 () Bool)

(declare-fun tp!126952 () Bool)

(declare-fun tp!126956 () Bool)

(assert (=> b!458262 (= e!280513 (and tp!126952 tp!126956))))

(declare-fun b!458260 () Bool)

(declare-fun tp!126954 () Bool)

(declare-fun tp!126955 () Bool)

(assert (=> b!458260 (= e!280513 (and tp!126954 tp!126955))))

(assert (=> b!457455 (= tp!126840 e!280513)))

(assert (= (and b!457455 ((_ is ElementMatch!1087) (regex!863 (h!9837 rules!1920)))) b!458259))

(assert (= (and b!457455 ((_ is Concat!1973) (regex!863 (h!9837 rules!1920)))) b!458260))

(assert (= (and b!457455 ((_ is Star!1087) (regex!863 (h!9837 rules!1920)))) b!458261))

(assert (= (and b!457455 ((_ is Union!1087) (regex!863 (h!9837 rules!1920)))) b!458262))

(declare-fun b!458263 () Bool)

(declare-fun e!280514 () Bool)

(assert (=> b!458263 (= e!280514 tp_is_empty!1983)))

(declare-fun b!458265 () Bool)

(declare-fun tp!126958 () Bool)

(assert (=> b!458265 (= e!280514 tp!126958)))

(declare-fun b!458266 () Bool)

(declare-fun tp!126957 () Bool)

(declare-fun tp!126961 () Bool)

(assert (=> b!458266 (= e!280514 (and tp!126957 tp!126961))))

(declare-fun b!458264 () Bool)

(declare-fun tp!126959 () Bool)

(declare-fun tp!126960 () Bool)

(assert (=> b!458264 (= e!280514 (and tp!126959 tp!126960))))

(assert (=> b!457459 (= tp!126841 e!280514)))

(assert (= (and b!457459 ((_ is ElementMatch!1087) (regex!863 (rule!1558 separatorToken!170)))) b!458263))

(assert (= (and b!457459 ((_ is Concat!1973) (regex!863 (rule!1558 separatorToken!170)))) b!458264))

(assert (= (and b!457459 ((_ is Star!1087) (regex!863 (rule!1558 separatorToken!170)))) b!458265))

(assert (= (and b!457459 ((_ is Union!1087) (regex!863 (rule!1558 separatorToken!170)))) b!458266))

(declare-fun b_lambda!19017 () Bool)

(assert (= b_lambda!18975 (or b!457452 b_lambda!19017)))

(declare-fun bs!56870 () Bool)

(declare-fun d!174893 () Bool)

(assert (= bs!56870 (and d!174893 b!457452)))

(assert (=> bs!56870 (= (dynLambda!2701 lambda!13405 (h!9838 (t!71615 tokens!465))) (not (isSeparator!863 (rule!1558 (h!9838 (t!71615 tokens!465))))))))

(assert (=> b!457710 d!174893))

(declare-fun b_lambda!19019 () Bool)

(assert (= b_lambda!19011 (or b!457452 b_lambda!19019)))

(declare-fun bs!56871 () Bool)

(declare-fun d!174895 () Bool)

(assert (= bs!56871 (and d!174895 b!457452)))

(assert (=> bs!56871 (= (dynLambda!2701 lambda!13405 (h!9838 tokens!465)) (not (isSeparator!863 (rule!1558 (h!9838 tokens!465)))))))

(assert (=> b!458180 d!174895))

(declare-fun b_lambda!19021 () Bool)

(assert (= b_lambda!19013 (or (and b!457467 b_free!12755) (and b!457444 b_free!12763 (= (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) (and b!458235 b_free!12775 (= (toChars!1541 (transformation!863 (h!9837 (t!71614 rules!1920)))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) (and b!458257 b_free!12779 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 (t!71615 tokens!465))))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) (and b!457470 b_free!12759 (= (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) b_lambda!19021)))

(declare-fun b_lambda!19023 () Bool)

(assert (= b_lambda!19015 (or (and b!457444 b_free!12763 (= (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) (and b!458257 b_free!12779 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 (t!71615 tokens!465))))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) (and b!457470 b_free!12759) (and b!458235 b_free!12775 (= (toChars!1541 (transformation!863 (h!9837 (t!71614 rules!1920)))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) (and b!457467 b_free!12755 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) b_lambda!19023)))

(declare-fun b_lambda!19025 () Bool)

(assert (= b_lambda!19009 (or (and b!457467 b_free!12755) (and b!457444 b_free!12763 (= (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) (and b!458235 b_free!12775 (= (toChars!1541 (transformation!863 (h!9837 (t!71614 rules!1920)))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) (and b!458257 b_free!12779 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 (t!71615 tokens!465))))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) (and b!457470 b_free!12759 (= (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))) (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))))) b_lambda!19025)))

(declare-fun b_lambda!19027 () Bool)

(assert (= b_lambda!19005 (or b!457450 b_lambda!19027)))

(declare-fun bs!56872 () Bool)

(declare-fun d!174897 () Bool)

(assert (= bs!56872 (and d!174897 b!457450)))

(assert (=> bs!56872 (= (dynLambda!2701 lambda!13406 (h!9838 tokens!465)) (rulesProduceIndividualToken!498 thiss!17480 rules!1920 (h!9838 tokens!465)))))

(assert (=> bs!56872 m!724771))

(assert (=> d!174833 d!174897))

(declare-fun b_lambda!19029 () Bool)

(assert (= b_lambda!19007 (or (and b!457444 b_free!12763 (= (toChars!1541 (transformation!863 (h!9837 rules!1920))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) (and b!458257 b_free!12779 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 (t!71615 tokens!465))))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) (and b!457470 b_free!12759) (and b!458235 b_free!12775 (= (toChars!1541 (transformation!863 (h!9837 (t!71614 rules!1920)))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) (and b!457467 b_free!12755 (= (toChars!1541 (transformation!863 (rule!1558 (h!9838 tokens!465)))) (toChars!1541 (transformation!863 (rule!1558 separatorToken!170))))) b_lambda!19029)))

(check-sat (not b!458156) (not d!174653) (not b!458006) (not b!457965) (not b!457961) (not b!457652) (not b!457907) (not bm!31762) (not b!458157) (not b!458241) b_and!49201 (not bm!31729) (not d!174781) (not bm!31757) (not d!174879) (not bm!31752) (not b!458197) (not b!457699) (not b!458134) (not d!174779) (not d!174785) (not b!457644) (not b!458258) (not b!457632) (not b_lambda!19019) (not b!457631) (not d!174837) (not b_next!12761) (not d!174849) (not d!174687) (not b!458133) (not d!174883) (not b!458175) (not b!457904) (not b!458004) (not b!458181) (not bm!31730) (not b!458172) (not b!458029) (not b!458161) (not b!458255) (not bm!31761) (not b!458139) (not d!174833) (not d!174847) (not b!457957) (not b!458195) (not d!174891) (not b!458154) (not b!458191) (not b_next!12773) b_and!49255 (not bm!31756) (not b!457906) (not b_lambda!19023) (not b_next!12757) (not bm!31727) (not d!174673) (not b!457964) (not b!458034) (not d!174887) (not d!174675) (not d!174845) (not d!174869) (not d!174843) (not bm!31759) (not d!174851) (not b!458176) (not d!174699) (not b!458117) (not b!458187) (not d!174885) (not b!458233) (not bm!31754) (not b!458123) (not b!458192) b_and!49261 (not b!458193) (not d!174697) (not b!457607) (not bm!31763) (not d!174835) (not b!457711) (not b_next!12777) (not d!174783) (not b!458119) (not b!458147) (not b!458118) (not b!458168) (not b!458171) b_and!49267 (not b!457603) (not b!457908) (not d!174839) (not b_next!12763) (not b!458189) (not b!458224) (not bm!31745) (not b!457696) b_and!49193 (not b!457662) (not b!458202) (not b!458138) (not d!174855) (not b!458120) (not b!457729) b_and!49259 (not tb!45987) (not b!458033) (not bs!56872) (not b!458127) (not b_next!12759) (not d!174823) b_and!49265 (not b!458028) (not d!174853) (not d!174819) (not bm!31749) (not b_lambda!19025) (not b!458200) (not b!458008) (not b!458136) (not b!458201) (not bm!31699) (not b!457701) (not bm!31743) (not b!458137) (not b!458124) (not d!174655) (not b!458038) (not b!458188) (not d!174813) (not b!458223) (not d!174821) (not d!174693) (not b!458140) (not d!174695) (not b!458199) (not b!457528) (not b!457643) (not b!458198) (not b!457702) b_and!49197 (not bm!31746) (not b!458209) (not b!457657) (not b!458130) (not b!457698) (not b!458210) (not b!458162) (not b!458194) (not b!457575) (not b!457905) (not b!458122) (not b_lambda!19017) (not b!458261) (not b_next!12779) (not b!458159) (not b!457630) (not b!457910) (not b!458260) (not b!458179) (not bm!31742) b_and!49257 (not b_lambda!19021) (not b!458262) (not b!458265) (not b!457695) (not b!457732) (not b!457633) (not b_next!12775) (not b!457629) (not b!458254) (not b!458256) (not b!458032) (not d!174815) (not b!457576) (not d!174831) (not b!458234) (not d!174857) (not b!458240) (not b_lambda!19027) (not b!457654) (not d!174711) (not b!458129) (not bm!31758) (not d!174691) (not b!458030) (not b!458186) (not b!457574) (not d!174873) (not d!174703) (not b!458264) tp_is_empty!1983 (not b!458164) (not tb!45981) (not b!457963) b_and!49263 (not b_next!12753) (not d!174841) (not b!458027) (not b!458007) (not b!458266) (not b!458142) (not d!174811) (not b!458222) (not b!457728) (not b!458035) (not b!457915) (not d!174709) (not b_next!12755) (not b!458170) (not d!174875) (not b_lambda!19029) (not b!458190))
(check-sat b_and!49201 (not b_next!12761) (not b_next!12773) b_and!49261 (not b_next!12777) b_and!49267 b_and!49259 (not b_next!12759) b_and!49265 b_and!49197 (not b_next!12779) (not b_next!12755) b_and!49255 (not b_next!12757) (not b_next!12763) b_and!49193 b_and!49257 (not b_next!12775) (not b_next!12753) b_and!49263)
