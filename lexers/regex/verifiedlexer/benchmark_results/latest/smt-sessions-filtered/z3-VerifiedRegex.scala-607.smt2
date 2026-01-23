; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19334 () Bool)

(assert start!19334)

(declare-fun b!178493 () Bool)

(declare-fun b_free!6857 () Bool)

(declare-fun b_next!6857 () Bool)

(assert (=> b!178493 (= b_free!6857 (not b_next!6857))))

(declare-fun tp!85751 () Bool)

(declare-fun b_and!12125 () Bool)

(assert (=> b!178493 (= tp!85751 b_and!12125)))

(declare-fun b_free!6859 () Bool)

(declare-fun b_next!6859 () Bool)

(assert (=> b!178493 (= b_free!6859 (not b_next!6859))))

(declare-fun tp!85750 () Bool)

(declare-fun b_and!12127 () Bool)

(assert (=> b!178493 (= tp!85750 b_and!12127)))

(declare-fun b!178487 () Bool)

(declare-fun b_free!6861 () Bool)

(declare-fun b_next!6861 () Bool)

(assert (=> b!178487 (= b_free!6861 (not b_next!6861))))

(declare-fun tp!85755 () Bool)

(declare-fun b_and!12129 () Bool)

(assert (=> b!178487 (= tp!85755 b_and!12129)))

(declare-fun b_free!6863 () Bool)

(declare-fun b_next!6863 () Bool)

(assert (=> b!178487 (= b_free!6863 (not b_next!6863))))

(declare-fun tp!85749 () Bool)

(declare-fun b_and!12131 () Bool)

(assert (=> b!178487 (= tp!85749 b_and!12131)))

(declare-fun b!178468 () Bool)

(declare-fun b_free!6865 () Bool)

(declare-fun b_next!6865 () Bool)

(assert (=> b!178468 (= b_free!6865 (not b_next!6865))))

(declare-fun tp!85747 () Bool)

(declare-fun b_and!12133 () Bool)

(assert (=> b!178468 (= tp!85747 b_and!12133)))

(declare-fun b_free!6867 () Bool)

(declare-fun b_next!6867 () Bool)

(assert (=> b!178468 (= b_free!6867 (not b_next!6867))))

(declare-fun tp!85752 () Bool)

(declare-fun b_and!12135 () Bool)

(assert (=> b!178468 (= tp!85752 b_and!12135)))

(declare-fun bs!17828 () Bool)

(declare-fun b!178486 () Bool)

(declare-fun b!178484 () Bool)

(assert (= bs!17828 (and b!178486 b!178484)))

(declare-fun lambda!5224 () Int)

(declare-fun lambda!5223 () Int)

(assert (=> bs!17828 (not (= lambda!5224 lambda!5223))))

(declare-fun b!178510 () Bool)

(declare-fun e!108457 () Bool)

(assert (=> b!178510 (= e!108457 true)))

(declare-fun b!178509 () Bool)

(declare-fun e!108456 () Bool)

(assert (=> b!178509 (= e!108456 e!108457)))

(declare-fun b!178508 () Bool)

(declare-fun e!108455 () Bool)

(assert (=> b!178508 (= e!108455 e!108456)))

(assert (=> b!178486 e!108455))

(assert (= b!178509 b!178510))

(assert (= b!178508 b!178509))

(declare-datatypes ((List!2989 0))(
  ( (Nil!2979) (Cons!2979 (h!8376 (_ BitVec 16)) (t!28115 List!2989)) )
))
(declare-datatypes ((TokenValue!559 0))(
  ( (FloatLiteralValue!1118 (text!4358 List!2989)) (TokenValueExt!558 (__x!2605 Int)) (Broken!2795 (value!19594 List!2989)) (Object!568) (End!559) (Def!559) (Underscore!559) (Match!559) (Else!559) (Error!559) (Case!559) (If!559) (Extends!559) (Abstract!559) (Class!559) (Val!559) (DelimiterValue!1118 (del!619 List!2989)) (KeywordValue!565 (value!19595 List!2989)) (CommentValue!1118 (value!19596 List!2989)) (WhitespaceValue!1118 (value!19597 List!2989)) (IndentationValue!559 (value!19598 List!2989)) (String!3874) (Int32!559) (Broken!2796 (value!19599 List!2989)) (Boolean!560) (Unit!2717) (OperatorValue!562 (op!619 List!2989)) (IdentifierValue!1118 (value!19600 List!2989)) (IdentifierValue!1119 (value!19601 List!2989)) (WhitespaceValue!1119 (value!19602 List!2989)) (True!1118) (False!1118) (Broken!2797 (value!19603 List!2989)) (Broken!2798 (value!19604 List!2989)) (True!1119) (RightBrace!559) (RightBracket!559) (Colon!559) (Null!559) (Comma!559) (LeftBracket!559) (False!1119) (LeftBrace!559) (ImaginaryLiteralValue!559 (text!4359 List!2989)) (StringLiteralValue!1677 (value!19605 List!2989)) (EOFValue!559 (value!19606 List!2989)) (IdentValue!559 (value!19607 List!2989)) (DelimiterValue!1119 (value!19608 List!2989)) (DedentValue!559 (value!19609 List!2989)) (NewLineValue!559 (value!19610 List!2989)) (IntegerValue!1677 (value!19611 (_ BitVec 32)) (text!4360 List!2989)) (IntegerValue!1678 (value!19612 Int) (text!4361 List!2989)) (Times!559) (Or!559) (Equal!559) (Minus!559) (Broken!2799 (value!19613 List!2989)) (And!559) (Div!559) (LessEqual!559) (Mod!559) (Concat!1320) (Not!559) (Plus!559) (SpaceValue!559 (value!19614 List!2989)) (IntegerValue!1679 (value!19615 Int) (text!4362 List!2989)) (StringLiteralValue!1678 (text!4363 List!2989)) (FloatLiteralValue!1119 (text!4364 List!2989)) (BytesLiteralValue!559 (value!19616 List!2989)) (CommentValue!1119 (value!19617 List!2989)) (StringLiteralValue!1679 (value!19618 List!2989)) (ErrorTokenValue!559 (msg!620 List!2989)) )
))
(declare-datatypes ((C!2444 0))(
  ( (C!2445 (val!1108 Int)) )
))
(declare-datatypes ((List!2990 0))(
  ( (Nil!2980) (Cons!2980 (h!8377 C!2444) (t!28116 List!2990)) )
))
(declare-datatypes ((IArray!1793 0))(
  ( (IArray!1794 (innerList!954 List!2990)) )
))
(declare-datatypes ((Conc!896 0))(
  ( (Node!896 (left!2295 Conc!896) (right!2625 Conc!896) (csize!2022 Int) (cheight!1107 Int)) (Leaf!1504 (xs!3491 IArray!1793) (csize!2023 Int)) (Empty!896) )
))
(declare-datatypes ((BalanceConc!1800 0))(
  ( (BalanceConc!1801 (c!35125 Conc!896)) )
))
(declare-datatypes ((Regex!761 0))(
  ( (ElementMatch!761 (c!35126 C!2444)) (Concat!1321 (regOne!2034 Regex!761) (regTwo!2034 Regex!761)) (EmptyExpr!761) (Star!761 (reg!1090 Regex!761)) (EmptyLang!761) (Union!761 (regOne!2035 Regex!761) (regTwo!2035 Regex!761)) )
))
(declare-datatypes ((String!3875 0))(
  ( (String!3876 (value!19619 String)) )
))
(declare-datatypes ((TokenValueInjection!890 0))(
  ( (TokenValueInjection!891 (toValue!1208 Int) (toChars!1067 Int)) )
))
(declare-datatypes ((Rule!874 0))(
  ( (Rule!875 (regex!537 Regex!761) (tag!715 String!3875) (isSeparator!537 Bool) (transformation!537 TokenValueInjection!890)) )
))
(declare-datatypes ((List!2991 0))(
  ( (Nil!2981) (Cons!2981 (h!8378 Rule!874) (t!28117 List!2991)) )
))
(declare-fun rules!1920 () List!2991)

(get-info :version)

(assert (= (and b!178486 ((_ is Cons!2981) rules!1920)) b!178508))

(declare-fun order!1699 () Int)

(declare-fun order!1697 () Int)

(declare-fun dynLambda!1173 (Int Int) Int)

(declare-fun dynLambda!1174 (Int Int) Int)

(assert (=> b!178510 (< (dynLambda!1173 order!1697 (toValue!1208 (transformation!537 (h!8378 rules!1920)))) (dynLambda!1174 order!1699 lambda!5224))))

(declare-fun order!1701 () Int)

(declare-fun dynLambda!1175 (Int Int) Int)

(assert (=> b!178510 (< (dynLambda!1175 order!1701 (toChars!1067 (transformation!537 (h!8378 rules!1920)))) (dynLambda!1174 order!1699 lambda!5224))))

(assert (=> b!178486 true))

(declare-fun res!80667 () Bool)

(declare-fun e!108440 () Bool)

(assert (=> start!19334 (=> (not res!80667) (not e!108440))))

(declare-datatypes ((LexerInterface!423 0))(
  ( (LexerInterfaceExt!420 (__x!2606 Int)) (Lexer!421) )
))
(declare-fun thiss!17480 () LexerInterface!423)

(assert (=> start!19334 (= res!80667 ((_ is Lexer!421) thiss!17480))))

(assert (=> start!19334 e!108440))

(assert (=> start!19334 true))

(declare-fun e!108428 () Bool)

(assert (=> start!19334 e!108428))

(declare-datatypes ((Token!818 0))(
  ( (Token!819 (value!19620 TokenValue!559) (rule!1052 Rule!874) (size!2455 Int) (originalCharacters!580 List!2990)) )
))
(declare-fun separatorToken!170 () Token!818)

(declare-fun e!108446 () Bool)

(declare-fun inv!3816 (Token!818) Bool)

(assert (=> start!19334 (and (inv!3816 separatorToken!170) e!108446)))

(declare-fun e!108424 () Bool)

(assert (=> start!19334 e!108424))

(declare-fun b!178467 () Bool)

(declare-fun res!80660 () Bool)

(declare-fun e!108426 () Bool)

(assert (=> b!178467 (=> (not res!80660) (not e!108426))))

(declare-datatypes ((tuple2!2938 0))(
  ( (tuple2!2939 (_1!1685 Token!818) (_2!1685 List!2990)) )
))
(declare-fun lt!58246 () tuple2!2938)

(declare-fun isEmpty!1322 (List!2990) Bool)

(assert (=> b!178467 (= res!80660 (isEmpty!1322 (_2!1685 lt!58246)))))

(declare-fun e!108445 () Bool)

(assert (=> b!178468 (= e!108445 (and tp!85747 tp!85752))))

(declare-fun b!178469 () Bool)

(declare-fun e!108434 () Bool)

(declare-datatypes ((List!2992 0))(
  ( (Nil!2982) (Cons!2982 (h!8379 Token!818) (t!28118 List!2992)) )
))
(declare-fun tokens!465 () List!2992)

(declare-fun forall!601 (List!2992 Int) Bool)

(assert (=> b!178469 (= e!108434 (forall!601 tokens!465 lambda!5223))))

(declare-fun b!178470 () Bool)

(declare-fun e!108429 () Bool)

(declare-fun tp!85753 () Bool)

(assert (=> b!178470 (= e!108428 (and e!108429 tp!85753))))

(declare-fun b!178471 () Bool)

(declare-fun e!108425 () Bool)

(declare-fun e!108448 () Bool)

(assert (=> b!178471 (= e!108425 e!108448)))

(declare-fun res!80675 () Bool)

(assert (=> b!178471 (=> res!80675 e!108448)))

(declare-fun lt!58260 () List!2990)

(declare-fun lt!58262 () List!2990)

(declare-fun lt!58255 () List!2990)

(assert (=> b!178471 (= res!80675 (or (not (= lt!58260 lt!58255)) (not (= lt!58255 lt!58262)) (not (= lt!58260 lt!58262))))))

(declare-fun printList!107 (LexerInterface!423 List!2992) List!2990)

(assert (=> b!178471 (= lt!58255 (printList!107 thiss!17480 (Cons!2982 (h!8379 tokens!465) Nil!2982)))))

(declare-fun lt!58245 () BalanceConc!1800)

(declare-fun list!1095 (BalanceConc!1800) List!2990)

(assert (=> b!178471 (= lt!58260 (list!1095 lt!58245))))

(declare-datatypes ((IArray!1795 0))(
  ( (IArray!1796 (innerList!955 List!2992)) )
))
(declare-datatypes ((Conc!897 0))(
  ( (Node!897 (left!2296 Conc!897) (right!2626 Conc!897) (csize!2024 Int) (cheight!1108 Int)) (Leaf!1505 (xs!3492 IArray!1795) (csize!2025 Int)) (Empty!897) )
))
(declare-datatypes ((BalanceConc!1802 0))(
  ( (BalanceConc!1803 (c!35127 Conc!897)) )
))
(declare-fun lt!58249 () BalanceConc!1802)

(declare-fun printTailRec!117 (LexerInterface!423 BalanceConc!1802 Int BalanceConc!1800) BalanceConc!1800)

(assert (=> b!178471 (= lt!58245 (printTailRec!117 thiss!17480 lt!58249 0 (BalanceConc!1801 Empty!896)))))

(declare-fun print!154 (LexerInterface!423 BalanceConc!1802) BalanceConc!1800)

(assert (=> b!178471 (= lt!58245 (print!154 thiss!17480 lt!58249))))

(declare-fun singletonSeq!89 (Token!818) BalanceConc!1802)

(assert (=> b!178471 (= lt!58249 (singletonSeq!89 (h!8379 tokens!465)))))

(declare-fun b!178472 () Bool)

(declare-fun res!80664 () Bool)

(declare-fun e!108432 () Bool)

(assert (=> b!178472 (=> (not res!80664) (not e!108432))))

(declare-fun lt!58252 () List!2990)

(declare-fun lt!58247 () List!2990)

(declare-fun seqFromList!451 (List!2990) BalanceConc!1800)

(assert (=> b!178472 (= res!80664 (= (list!1095 (seqFromList!451 lt!58252)) lt!58247))))

(declare-fun b!178473 () Bool)

(declare-fun matchR!99 (Regex!761 List!2990) Bool)

(assert (=> b!178473 (= e!108426 (matchR!99 (regex!537 (rule!1052 (h!8379 tokens!465))) lt!58262))))

(declare-fun b!178474 () Bool)

(declare-fun res!80672 () Bool)

(assert (=> b!178474 (=> res!80672 e!108434)))

(assert (=> b!178474 (= res!80672 (not (forall!601 tokens!465 lambda!5223)))))

(declare-fun b!178475 () Bool)

(declare-fun e!108431 () Bool)

(declare-fun tp!85745 () Bool)

(declare-fun e!108437 () Bool)

(declare-fun inv!21 (TokenValue!559) Bool)

(assert (=> b!178475 (= e!108431 (and (inv!21 (value!19620 (h!8379 tokens!465))) e!108437 tp!85745))))

(declare-fun tp!85746 () Bool)

(declare-fun b!178476 () Bool)

(declare-fun inv!3813 (String!3875) Bool)

(declare-fun inv!3817 (TokenValueInjection!890) Bool)

(assert (=> b!178476 (= e!108429 (and tp!85746 (inv!3813 (tag!715 (h!8378 rules!1920))) (inv!3817 (transformation!537 (h!8378 rules!1920))) e!108445))))

(declare-fun b!178477 () Bool)

(declare-fun res!80666 () Bool)

(assert (=> b!178477 (=> res!80666 e!108448)))

(declare-fun rulesProduceIndividualToken!172 (LexerInterface!423 List!2991 Token!818) Bool)

(assert (=> b!178477 (= res!80666 (not (rulesProduceIndividualToken!172 thiss!17480 rules!1920 (h!8379 tokens!465))))))

(declare-fun b!178478 () Bool)

(declare-fun res!80665 () Bool)

(assert (=> b!178478 (=> (not res!80665) (not e!108440))))

(declare-fun rulesInvariant!389 (LexerInterface!423 List!2991) Bool)

(assert (=> b!178478 (= res!80665 (rulesInvariant!389 thiss!17480 rules!1920))))

(declare-fun b!178479 () Bool)

(declare-fun res!80663 () Bool)

(declare-fun e!108442 () Bool)

(assert (=> b!178479 (=> (not res!80663) (not e!108442))))

(declare-fun sepAndNonSepRulesDisjointChars!126 (List!2991 List!2991) Bool)

(assert (=> b!178479 (= res!80663 (sepAndNonSepRulesDisjointChars!126 rules!1920 rules!1920))))

(declare-fun b!178480 () Bool)

(declare-fun res!80676 () Bool)

(assert (=> b!178480 (=> (not res!80676) (not e!108440))))

(declare-fun isEmpty!1323 (List!2991) Bool)

(assert (=> b!178480 (= res!80676 (not (isEmpty!1323 rules!1920)))))

(declare-fun b!178481 () Bool)

(declare-fun res!80678 () Bool)

(assert (=> b!178481 (=> (not res!80678) (not e!108442))))

(assert (=> b!178481 (= res!80678 (rulesProduceIndividualToken!172 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!178482 () Bool)

(assert (=> b!178482 (= e!108442 e!108432)))

(declare-fun res!80673 () Bool)

(assert (=> b!178482 (=> (not res!80673) (not e!108432))))

(assert (=> b!178482 (= res!80673 (= lt!58252 lt!58247))))

(declare-fun lt!58256 () BalanceConc!1802)

(declare-fun printWithSeparatorTokenWhenNeededRec!106 (LexerInterface!423 List!2991 BalanceConc!1802 Token!818 Int) BalanceConc!1800)

(assert (=> b!178482 (= lt!58247 (list!1095 (printWithSeparatorTokenWhenNeededRec!106 thiss!17480 rules!1920 lt!58256 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!116 (LexerInterface!423 List!2991 List!2992 Token!818) List!2990)

(assert (=> b!178482 (= lt!58252 (printWithSeparatorTokenWhenNeededList!116 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!178483 () Bool)

(declare-fun res!80658 () Bool)

(assert (=> b!178483 (=> res!80658 e!108448)))

(declare-fun isEmpty!1324 (BalanceConc!1802) Bool)

(declare-datatypes ((tuple2!2940 0))(
  ( (tuple2!2941 (_1!1686 BalanceConc!1802) (_2!1686 BalanceConc!1800)) )
))
(declare-fun lex!223 (LexerInterface!423 List!2991 BalanceConc!1800) tuple2!2940)

(assert (=> b!178483 (= res!80658 (isEmpty!1324 (_1!1686 (lex!223 thiss!17480 rules!1920 (seqFromList!451 lt!58262)))))))

(declare-fun res!80656 () Bool)

(assert (=> b!178484 (=> (not res!80656) (not e!108442))))

(assert (=> b!178484 (= res!80656 (forall!601 tokens!465 lambda!5223))))

(declare-fun lt!58250 () List!2990)

(declare-fun b!178485 () Bool)

(declare-fun e!108435 () Bool)

(declare-fun ++!698 (List!2990 List!2990) List!2990)

(assert (=> b!178485 (= e!108435 (not (= lt!58252 (++!698 lt!58262 lt!58250))))))

(declare-fun e!108444 () Bool)

(assert (=> b!178486 (= e!108448 e!108444)))

(declare-fun res!80668 () Bool)

(assert (=> b!178486 (=> res!80668 e!108444)))

(declare-datatypes ((tuple2!2942 0))(
  ( (tuple2!2943 (_1!1687 Token!818) (_2!1687 BalanceConc!1800)) )
))
(declare-datatypes ((Option!352 0))(
  ( (None!351) (Some!351 (v!13820 tuple2!2942)) )
))
(declare-fun isDefined!203 (Option!352) Bool)

(declare-fun maxPrefixZipperSequence!116 (LexerInterface!423 List!2991 BalanceConc!1800) Option!352)

(assert (=> b!178486 (= res!80668 (not (isDefined!203 (maxPrefixZipperSequence!116 thiss!17480 rules!1920 (seqFromList!451 (originalCharacters!580 (h!8379 tokens!465)))))))))

(declare-datatypes ((Unit!2718 0))(
  ( (Unit!2719) )
))
(declare-fun lt!58259 () Unit!2718)

(declare-fun forallContained!104 (List!2992 Int Token!818) Unit!2718)

(assert (=> b!178486 (= lt!58259 (forallContained!104 tokens!465 lambda!5224 (h!8379 tokens!465)))))

(assert (=> b!178486 (= lt!58262 (originalCharacters!580 (h!8379 tokens!465)))))

(declare-fun e!108436 () Bool)

(assert (=> b!178487 (= e!108436 (and tp!85755 tp!85749))))

(declare-fun b!178488 () Bool)

(assert (=> b!178488 (= e!108444 e!108434)))

(declare-fun res!80669 () Bool)

(assert (=> b!178488 (=> res!80669 e!108434)))

(declare-fun lt!58254 () Bool)

(assert (=> b!178488 (= res!80669 (not lt!58254))))

(assert (=> b!178488 e!108426))

(declare-fun res!80662 () Bool)

(assert (=> b!178488 (=> (not res!80662) (not e!108426))))

(assert (=> b!178488 (= res!80662 (= (_1!1685 lt!58246) (h!8379 tokens!465)))))

(declare-datatypes ((Option!353 0))(
  ( (None!352) (Some!352 (v!13821 tuple2!2938)) )
))
(declare-fun lt!58253 () Option!353)

(declare-fun get!832 (Option!353) tuple2!2938)

(assert (=> b!178488 (= lt!58246 (get!832 lt!58253))))

(declare-fun isDefined!204 (Option!353) Bool)

(assert (=> b!178488 (isDefined!204 lt!58253)))

(declare-fun maxPrefix!153 (LexerInterface!423 List!2991 List!2990) Option!353)

(assert (=> b!178488 (= lt!58253 (maxPrefix!153 thiss!17480 rules!1920 lt!58262))))

(declare-fun b!178489 () Bool)

(declare-fun tp!85754 () Bool)

(declare-fun e!108427 () Bool)

(assert (=> b!178489 (= e!108427 (and tp!85754 (inv!3813 (tag!715 (rule!1052 separatorToken!170))) (inv!3817 (transformation!537 (rule!1052 separatorToken!170))) e!108436))))

(declare-fun b!178490 () Bool)

(declare-fun e!108447 () Bool)

(assert (=> b!178490 (= e!108432 (not e!108447))))

(declare-fun res!80661 () Bool)

(assert (=> b!178490 (=> res!80661 e!108447)))

(declare-fun seqFromList!452 (List!2992) BalanceConc!1802)

(assert (=> b!178490 (= res!80661 (not (= lt!58250 (list!1095 (printWithSeparatorTokenWhenNeededRec!106 thiss!17480 rules!1920 (seqFromList!452 (t!28118 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!58257 () List!2990)

(declare-fun lt!58258 () List!2990)

(assert (=> b!178490 (= lt!58257 lt!58258)))

(declare-fun lt!58251 () List!2990)

(assert (=> b!178490 (= lt!58258 (++!698 lt!58262 lt!58251))))

(declare-fun lt!58248 () List!2990)

(assert (=> b!178490 (= lt!58257 (++!698 (++!698 lt!58262 lt!58248) lt!58250))))

(declare-fun lt!58261 () Unit!2718)

(declare-fun lemmaConcatAssociativity!226 (List!2990 List!2990 List!2990) Unit!2718)

(assert (=> b!178490 (= lt!58261 (lemmaConcatAssociativity!226 lt!58262 lt!58248 lt!58250))))

(declare-fun charsOf!192 (Token!818) BalanceConc!1800)

(assert (=> b!178490 (= lt!58262 (list!1095 (charsOf!192 (h!8379 tokens!465))))))

(assert (=> b!178490 (= lt!58251 (++!698 lt!58248 lt!58250))))

(assert (=> b!178490 (= lt!58250 (printWithSeparatorTokenWhenNeededList!116 thiss!17480 rules!1920 (t!28118 tokens!465) separatorToken!170))))

(assert (=> b!178490 (= lt!58248 (list!1095 (charsOf!192 separatorToken!170)))))

(declare-fun tp!85748 () Bool)

(declare-fun b!178491 () Bool)

(assert (=> b!178491 (= e!108424 (and (inv!3816 (h!8379 tokens!465)) e!108431 tp!85748))))

(declare-fun tp!85757 () Bool)

(declare-fun b!178492 () Bool)

(assert (=> b!178492 (= e!108446 (and (inv!21 (value!19620 separatorToken!170)) e!108427 tp!85757))))

(declare-fun e!108439 () Bool)

(assert (=> b!178493 (= e!108439 (and tp!85751 tp!85750))))

(declare-fun b!178494 () Bool)

(assert (=> b!178494 (= e!108440 e!108442)))

(declare-fun res!80657 () Bool)

(assert (=> b!178494 (=> (not res!80657) (not e!108442))))

(declare-fun rulesProduceEachTokenIndividually!215 (LexerInterface!423 List!2991 BalanceConc!1802) Bool)

(assert (=> b!178494 (= res!80657 (rulesProduceEachTokenIndividually!215 thiss!17480 rules!1920 lt!58256))))

(assert (=> b!178494 (= lt!58256 (seqFromList!452 tokens!465))))

(declare-fun b!178495 () Bool)

(assert (=> b!178495 (= e!108447 e!108425)))

(declare-fun res!80674 () Bool)

(assert (=> b!178495 (=> res!80674 e!108425)))

(assert (=> b!178495 (= res!80674 e!108435)))

(declare-fun res!80670 () Bool)

(assert (=> b!178495 (=> (not res!80670) (not e!108435))))

(assert (=> b!178495 (= res!80670 (not lt!58254))))

(assert (=> b!178495 (= lt!58254 (= lt!58252 lt!58258))))

(declare-fun tp!85756 () Bool)

(declare-fun b!178496 () Bool)

(assert (=> b!178496 (= e!108437 (and tp!85756 (inv!3813 (tag!715 (rule!1052 (h!8379 tokens!465)))) (inv!3817 (transformation!537 (rule!1052 (h!8379 tokens!465)))) e!108439))))

(declare-fun b!178497 () Bool)

(declare-fun res!80659 () Bool)

(assert (=> b!178497 (=> (not res!80659) (not e!108442))))

(assert (=> b!178497 (= res!80659 (isSeparator!537 (rule!1052 separatorToken!170)))))

(declare-fun b!178498 () Bool)

(declare-fun res!80677 () Bool)

(assert (=> b!178498 (=> res!80677 e!108434)))

(declare-fun rulesProduceEachTokenIndividuallyList!125 (LexerInterface!423 List!2991 List!2992) Bool)

(assert (=> b!178498 (= res!80677 (not (rulesProduceEachTokenIndividuallyList!125 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!178499 () Bool)

(declare-fun res!80671 () Bool)

(assert (=> b!178499 (=> (not res!80671) (not e!108442))))

(assert (=> b!178499 (= res!80671 ((_ is Cons!2982) tokens!465))))

(assert (= (and start!19334 res!80667) b!178480))

(assert (= (and b!178480 res!80676) b!178478))

(assert (= (and b!178478 res!80665) b!178494))

(assert (= (and b!178494 res!80657) b!178481))

(assert (= (and b!178481 res!80678) b!178497))

(assert (= (and b!178497 res!80659) b!178484))

(assert (= (and b!178484 res!80656) b!178479))

(assert (= (and b!178479 res!80663) b!178499))

(assert (= (and b!178499 res!80671) b!178482))

(assert (= (and b!178482 res!80673) b!178472))

(assert (= (and b!178472 res!80664) b!178490))

(assert (= (and b!178490 (not res!80661)) b!178495))

(assert (= (and b!178495 res!80670) b!178485))

(assert (= (and b!178495 (not res!80674)) b!178471))

(assert (= (and b!178471 (not res!80675)) b!178477))

(assert (= (and b!178477 (not res!80666)) b!178483))

(assert (= (and b!178483 (not res!80658)) b!178486))

(assert (= (and b!178486 (not res!80668)) b!178488))

(assert (= (and b!178488 res!80662) b!178467))

(assert (= (and b!178467 res!80660) b!178473))

(assert (= (and b!178488 (not res!80669)) b!178498))

(assert (= (and b!178498 (not res!80677)) b!178474))

(assert (= (and b!178474 (not res!80672)) b!178469))

(assert (= b!178476 b!178468))

(assert (= b!178470 b!178476))

(assert (= (and start!19334 ((_ is Cons!2981) rules!1920)) b!178470))

(assert (= b!178489 b!178487))

(assert (= b!178492 b!178489))

(assert (= start!19334 b!178492))

(assert (= b!178496 b!178493))

(assert (= b!178475 b!178496))

(assert (= b!178491 b!178475))

(assert (= (and start!19334 ((_ is Cons!2982) tokens!465)) b!178491))

(declare-fun m!180321 () Bool)

(assert (=> b!178492 m!180321))

(declare-fun m!180323 () Bool)

(assert (=> b!178478 m!180323))

(declare-fun m!180325 () Bool)

(assert (=> b!178485 m!180325))

(declare-fun m!180327 () Bool)

(assert (=> b!178469 m!180327))

(declare-fun m!180329 () Bool)

(assert (=> b!178480 m!180329))

(declare-fun m!180331 () Bool)

(assert (=> b!178467 m!180331))

(declare-fun m!180333 () Bool)

(assert (=> b!178481 m!180333))

(declare-fun m!180335 () Bool)

(assert (=> b!178498 m!180335))

(declare-fun m!180337 () Bool)

(assert (=> b!178479 m!180337))

(declare-fun m!180339 () Bool)

(assert (=> b!178483 m!180339))

(assert (=> b!178483 m!180339))

(declare-fun m!180341 () Bool)

(assert (=> b!178483 m!180341))

(declare-fun m!180343 () Bool)

(assert (=> b!178483 m!180343))

(declare-fun m!180345 () Bool)

(assert (=> b!178472 m!180345))

(assert (=> b!178472 m!180345))

(declare-fun m!180347 () Bool)

(assert (=> b!178472 m!180347))

(assert (=> b!178484 m!180327))

(declare-fun m!180349 () Bool)

(assert (=> b!178486 m!180349))

(assert (=> b!178486 m!180349))

(declare-fun m!180351 () Bool)

(assert (=> b!178486 m!180351))

(assert (=> b!178486 m!180351))

(declare-fun m!180353 () Bool)

(assert (=> b!178486 m!180353))

(declare-fun m!180355 () Bool)

(assert (=> b!178486 m!180355))

(declare-fun m!180357 () Bool)

(assert (=> start!19334 m!180357))

(declare-fun m!180359 () Bool)

(assert (=> b!178496 m!180359))

(declare-fun m!180361 () Bool)

(assert (=> b!178496 m!180361))

(assert (=> b!178474 m!180327))

(declare-fun m!180363 () Bool)

(assert (=> b!178488 m!180363))

(declare-fun m!180365 () Bool)

(assert (=> b!178488 m!180365))

(declare-fun m!180367 () Bool)

(assert (=> b!178488 m!180367))

(declare-fun m!180369 () Bool)

(assert (=> b!178473 m!180369))

(declare-fun m!180371 () Bool)

(assert (=> b!178476 m!180371))

(declare-fun m!180373 () Bool)

(assert (=> b!178476 m!180373))

(declare-fun m!180375 () Bool)

(assert (=> b!178482 m!180375))

(assert (=> b!178482 m!180375))

(declare-fun m!180377 () Bool)

(assert (=> b!178482 m!180377))

(declare-fun m!180379 () Bool)

(assert (=> b!178482 m!180379))

(declare-fun m!180381 () Bool)

(assert (=> b!178477 m!180381))

(declare-fun m!180383 () Bool)

(assert (=> b!178489 m!180383))

(declare-fun m!180385 () Bool)

(assert (=> b!178489 m!180385))

(declare-fun m!180387 () Bool)

(assert (=> b!178491 m!180387))

(declare-fun m!180389 () Bool)

(assert (=> b!178494 m!180389))

(declare-fun m!180391 () Bool)

(assert (=> b!178494 m!180391))

(declare-fun m!180393 () Bool)

(assert (=> b!178475 m!180393))

(declare-fun m!180395 () Bool)

(assert (=> b!178471 m!180395))

(declare-fun m!180397 () Bool)

(assert (=> b!178471 m!180397))

(declare-fun m!180399 () Bool)

(assert (=> b!178471 m!180399))

(declare-fun m!180401 () Bool)

(assert (=> b!178471 m!180401))

(declare-fun m!180403 () Bool)

(assert (=> b!178471 m!180403))

(declare-fun m!180405 () Bool)

(assert (=> b!178490 m!180405))

(declare-fun m!180407 () Bool)

(assert (=> b!178490 m!180407))

(declare-fun m!180409 () Bool)

(assert (=> b!178490 m!180409))

(declare-fun m!180411 () Bool)

(assert (=> b!178490 m!180411))

(declare-fun m!180413 () Bool)

(assert (=> b!178490 m!180413))

(assert (=> b!178490 m!180411))

(declare-fun m!180415 () Bool)

(assert (=> b!178490 m!180415))

(assert (=> b!178490 m!180405))

(declare-fun m!180417 () Bool)

(assert (=> b!178490 m!180417))

(declare-fun m!180419 () Bool)

(assert (=> b!178490 m!180419))

(declare-fun m!180421 () Bool)

(assert (=> b!178490 m!180421))

(assert (=> b!178490 m!180419))

(declare-fun m!180423 () Bool)

(assert (=> b!178490 m!180423))

(assert (=> b!178490 m!180417))

(declare-fun m!180425 () Bool)

(assert (=> b!178490 m!180425))

(declare-fun m!180427 () Bool)

(assert (=> b!178490 m!180427))

(assert (=> b!178490 m!180421))

(declare-fun m!180429 () Bool)

(assert (=> b!178490 m!180429))

(check-sat (not b!178486) (not b!178492) (not b!178469) (not b!178480) (not b!178488) (not start!19334) (not b!178467) (not b!178508) (not b!178479) (not b_next!6867) (not b!178476) (not b!178477) b_and!12129 (not b!178470) (not b!178482) (not b!178485) (not b_next!6857) (not b_next!6859) b_and!12127 (not b!178475) (not b!178494) (not b_next!6865) (not b_next!6863) (not b!178478) (not b!178491) (not b!178489) (not b!178473) b_and!12135 (not b!178474) (not b!178490) (not b!178496) (not b!178472) b_and!12125 b_and!12131 (not b_next!6861) (not b!178483) (not b!178484) (not b!178471) (not b!178481) b_and!12133 (not b!178498))
(check-sat b_and!12129 b_and!12127 (not b_next!6865) (not b_next!6863) b_and!12135 (not b_next!6861) b_and!12133 (not b_next!6867) (not b_next!6857) (not b_next!6859) b_and!12125 b_and!12131)
