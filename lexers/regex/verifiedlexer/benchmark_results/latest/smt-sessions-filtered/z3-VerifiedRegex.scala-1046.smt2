; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52336 () Bool)

(assert start!52336)

(declare-fun b!567566 () Bool)

(declare-fun b_free!15829 () Bool)

(declare-fun b_next!15845 () Bool)

(assert (=> b!567566 (= b_free!15829 (not b_next!15845))))

(declare-fun tp!178827 () Bool)

(declare-fun b_and!55283 () Bool)

(assert (=> b!567566 (= tp!178827 b_and!55283)))

(declare-fun b_free!15831 () Bool)

(declare-fun b_next!15847 () Bool)

(assert (=> b!567566 (= b_free!15831 (not b_next!15847))))

(declare-fun tp!178826 () Bool)

(declare-fun b_and!55285 () Bool)

(assert (=> b!567566 (= tp!178826 b_and!55285)))

(declare-fun b!567553 () Bool)

(declare-fun b_free!15833 () Bool)

(declare-fun b_next!15849 () Bool)

(assert (=> b!567553 (= b_free!15833 (not b_next!15849))))

(declare-fun tp!178828 () Bool)

(declare-fun b_and!55287 () Bool)

(assert (=> b!567553 (= tp!178828 b_and!55287)))

(declare-fun b_free!15835 () Bool)

(declare-fun b_next!15851 () Bool)

(assert (=> b!567553 (= b_free!15835 (not b_next!15851))))

(declare-fun tp!178822 () Bool)

(declare-fun b_and!55289 () Bool)

(assert (=> b!567553 (= tp!178822 b_and!55289)))

(declare-fun e!342997 () Bool)

(declare-fun b!567538 () Bool)

(declare-datatypes ((C!3748 0))(
  ( (C!3749 (val!2100 Int)) )
))
(declare-datatypes ((Regex!1413 0))(
  ( (ElementMatch!1413 (c!106403 C!3748)) (Concat!2516 (regOne!3338 Regex!1413) (regTwo!3338 Regex!1413)) (EmptyExpr!1413) (Star!1413 (reg!1742 Regex!1413)) (EmptyLang!1413) (Union!1413 (regOne!3339 Regex!1413) (regTwo!3339 Regex!1413)) )
))
(declare-datatypes ((String!7258 0))(
  ( (String!7259 (value!35592 String)) )
))
(declare-datatypes ((List!5608 0))(
  ( (Nil!5598) (Cons!5598 (h!10999 (_ BitVec 16)) (t!76387 List!5608)) )
))
(declare-datatypes ((TokenValue!1103 0))(
  ( (FloatLiteralValue!2206 (text!8166 List!5608)) (TokenValueExt!1102 (__x!4104 Int)) (Broken!5515 (value!35593 List!5608)) (Object!1112) (End!1103) (Def!1103) (Underscore!1103) (Match!1103) (Else!1103) (Error!1103) (Case!1103) (If!1103) (Extends!1103) (Abstract!1103) (Class!1103) (Val!1103) (DelimiterValue!2206 (del!1163 List!5608)) (KeywordValue!1109 (value!35594 List!5608)) (CommentValue!2206 (value!35595 List!5608)) (WhitespaceValue!2206 (value!35596 List!5608)) (IndentationValue!1103 (value!35597 List!5608)) (String!7260) (Int32!1103) (Broken!5516 (value!35598 List!5608)) (Boolean!1104) (Unit!10014) (OperatorValue!1106 (op!1163 List!5608)) (IdentifierValue!2206 (value!35599 List!5608)) (IdentifierValue!2207 (value!35600 List!5608)) (WhitespaceValue!2207 (value!35601 List!5608)) (True!2206) (False!2206) (Broken!5517 (value!35602 List!5608)) (Broken!5518 (value!35603 List!5608)) (True!2207) (RightBrace!1103) (RightBracket!1103) (Colon!1103) (Null!1103) (Comma!1103) (LeftBracket!1103) (False!2207) (LeftBrace!1103) (ImaginaryLiteralValue!1103 (text!8167 List!5608)) (StringLiteralValue!3309 (value!35604 List!5608)) (EOFValue!1103 (value!35605 List!5608)) (IdentValue!1103 (value!35606 List!5608)) (DelimiterValue!2207 (value!35607 List!5608)) (DedentValue!1103 (value!35608 List!5608)) (NewLineValue!1103 (value!35609 List!5608)) (IntegerValue!3309 (value!35610 (_ BitVec 32)) (text!8168 List!5608)) (IntegerValue!3310 (value!35611 Int) (text!8169 List!5608)) (Times!1103) (Or!1103) (Equal!1103) (Minus!1103) (Broken!5519 (value!35612 List!5608)) (And!1103) (Div!1103) (LessEqual!1103) (Mod!1103) (Concat!2517) (Not!1103) (Plus!1103) (SpaceValue!1103 (value!35613 List!5608)) (IntegerValue!3311 (value!35614 Int) (text!8170 List!5608)) (StringLiteralValue!3310 (text!8171 List!5608)) (FloatLiteralValue!2207 (text!8172 List!5608)) (BytesLiteralValue!1103 (value!35615 List!5608)) (CommentValue!2207 (value!35616 List!5608)) (StringLiteralValue!3311 (value!35617 List!5608)) (ErrorTokenValue!1103 (msg!1164 List!5608)) )
))
(declare-datatypes ((List!5609 0))(
  ( (Nil!5599) (Cons!5599 (h!11000 C!3748) (t!76388 List!5609)) )
))
(declare-datatypes ((IArray!3593 0))(
  ( (IArray!3594 (innerList!1854 List!5609)) )
))
(declare-datatypes ((Conc!1796 0))(
  ( (Node!1796 (left!4580 Conc!1796) (right!4910 Conc!1796) (csize!3822 Int) (cheight!2007 Int)) (Leaf!2843 (xs!4433 IArray!3593) (csize!3823 Int)) (Empty!1796) )
))
(declare-datatypes ((BalanceConc!3600 0))(
  ( (BalanceConc!3601 (c!106404 Conc!1796)) )
))
(declare-datatypes ((TokenValueInjection!1974 0))(
  ( (TokenValueInjection!1975 (toValue!1934 Int) (toChars!1793 Int)) )
))
(declare-datatypes ((Rule!1958 0))(
  ( (Rule!1959 (regex!1079 Regex!1413) (tag!1341 String!7258) (isSeparator!1079 Bool) (transformation!1079 TokenValueInjection!1974)) )
))
(declare-datatypes ((List!5610 0))(
  ( (Nil!5600) (Cons!5600 (h!11001 Rule!1958) (t!76389 List!5610)) )
))
(declare-fun rules!3103 () List!5610)

(declare-fun e!342991 () Bool)

(declare-fun tp!178824 () Bool)

(declare-fun inv!7033 (String!7258) Bool)

(declare-fun inv!7036 (TokenValueInjection!1974) Bool)

(assert (=> b!567538 (= e!342991 (and tp!178824 (inv!7033 (tag!1341 (h!11001 rules!3103))) (inv!7036 (transformation!1079 (h!11001 rules!3103))) e!342997))))

(declare-fun b!567539 () Bool)

(declare-fun e!343003 () Bool)

(declare-fun e!343005 () Bool)

(assert (=> b!567539 (= e!343003 e!343005)))

(declare-fun res!243599 () Bool)

(assert (=> b!567539 (=> (not res!243599) (not e!343005))))

(declare-datatypes ((Token!1894 0))(
  ( (Token!1895 (value!35618 TokenValue!1103) (rule!1819 Rule!1958) (size!4460 Int) (originalCharacters!1118 List!5609)) )
))
(declare-datatypes ((tuple2!6592 0))(
  ( (tuple2!6593 (_1!3560 Token!1894) (_2!3560 List!5609)) )
))
(declare-fun lt!239381 () tuple2!6592)

(declare-fun suffix!1342 () List!5609)

(declare-fun token!491 () Token!1894)

(assert (=> b!567539 (= res!243599 (and (= (_1!3560 lt!239381) token!491) (= (_2!3560 lt!239381) suffix!1342)))))

(declare-datatypes ((Option!1430 0))(
  ( (None!1429) (Some!1429 (v!16278 tuple2!6592)) )
))
(declare-fun lt!239410 () Option!1430)

(declare-fun get!2133 (Option!1430) tuple2!6592)

(assert (=> b!567539 (= lt!239381 (get!2133 lt!239410))))

(declare-fun b!567540 () Bool)

(declare-fun e!342988 () Bool)

(declare-fun input!2705 () List!5609)

(declare-fun lt!239390 () Int)

(declare-fun size!4461 (List!5609) Int)

(assert (=> b!567540 (= e!342988 (> (size!4461 input!2705) lt!239390))))

(declare-fun b!567541 () Bool)

(declare-fun res!243591 () Bool)

(declare-fun e!342995 () Bool)

(assert (=> b!567541 (=> (not res!243591) (not e!342995))))

(declare-fun lt!239401 () Option!1430)

(assert (=> b!567541 (= res!243591 (= (size!4460 (_1!3560 (v!16278 lt!239401))) (size!4461 (originalCharacters!1118 (_1!3560 (v!16278 lt!239401))))))))

(declare-fun b!567542 () Bool)

(declare-fun res!243609 () Bool)

(declare-fun e!343009 () Bool)

(assert (=> b!567542 (=> (not res!243609) (not e!343009))))

(declare-datatypes ((LexerInterface!965 0))(
  ( (LexerInterfaceExt!962 (__x!4105 Int)) (Lexer!963) )
))
(declare-fun thiss!22590 () LexerInterface!965)

(declare-fun rulesInvariant!928 (LexerInterface!965 List!5610) Bool)

(assert (=> b!567542 (= res!243609 (rulesInvariant!928 thiss!22590 rules!3103))))

(declare-fun e!343002 () Bool)

(declare-fun tp!178823 () Bool)

(declare-fun e!342993 () Bool)

(declare-fun b!567543 () Bool)

(assert (=> b!567543 (= e!342993 (and tp!178823 (inv!7033 (tag!1341 (rule!1819 token!491))) (inv!7036 (transformation!1079 (rule!1819 token!491))) e!343002))))

(declare-fun b!567544 () Bool)

(declare-fun e!343000 () Bool)

(declare-fun e!342989 () Bool)

(assert (=> b!567544 (= e!343000 e!342989)))

(declare-fun res!243595 () Bool)

(assert (=> b!567544 (=> (not res!243595) (not e!342989))))

(declare-fun lt!239393 () List!5609)

(declare-fun lt!239376 () List!5609)

(assert (=> b!567544 (= res!243595 (= lt!239393 lt!239376))))

(declare-fun lt!239403 () List!5609)

(declare-fun ++!1567 (List!5609 List!5609) List!5609)

(assert (=> b!567544 (= lt!239393 (++!1567 lt!239403 suffix!1342))))

(declare-fun res!243611 () Bool)

(assert (=> start!52336 (=> (not res!243611) (not e!343009))))

(get-info :version)

(assert (=> start!52336 (= res!243611 ((_ is Lexer!963) thiss!22590))))

(assert (=> start!52336 e!343009))

(declare-fun e!343001 () Bool)

(assert (=> start!52336 e!343001))

(declare-fun e!343011 () Bool)

(assert (=> start!52336 e!343011))

(declare-fun e!342998 () Bool)

(declare-fun inv!7037 (Token!1894) Bool)

(assert (=> start!52336 (and (inv!7037 token!491) e!342998)))

(assert (=> start!52336 true))

(declare-fun e!343008 () Bool)

(assert (=> start!52336 e!343008))

(declare-fun b!567545 () Bool)

(declare-fun tp!178819 () Bool)

(assert (=> b!567545 (= e!343011 (and e!342991 tp!178819))))

(declare-fun b!567546 () Bool)

(declare-fun e!342996 () Bool)

(assert (=> b!567546 (= e!342996 e!342988)))

(declare-fun res!243601 () Bool)

(assert (=> b!567546 (=> res!243601 e!342988)))

(declare-fun lt!239392 () Token!1894)

(declare-fun lt!239405 () Option!1430)

(declare-fun lt!239408 () List!5609)

(assert (=> b!567546 (= res!243601 (not (= lt!239405 (Some!1429 (tuple2!6593 lt!239392 lt!239408)))))))

(declare-datatypes ((Unit!10015 0))(
  ( (Unit!10016) )
))
(declare-fun lt!239404 () Unit!10015)

(declare-fun lt!239382 () BalanceConc!3600)

(declare-fun lemmaSemiInverse!182 (TokenValueInjection!1974 BalanceConc!3600) Unit!10015)

(assert (=> b!567546 (= lt!239404 (lemmaSemiInverse!182 (transformation!1079 (rule!1819 (_1!3560 (v!16278 lt!239401)))) lt!239382))))

(declare-fun b!567547 () Bool)

(declare-fun e!343007 () Bool)

(assert (=> b!567547 (= e!343007 e!342996)))

(declare-fun res!243602 () Bool)

(assert (=> b!567547 (=> res!243602 e!342996)))

(declare-fun contains!1313 (List!5610 Rule!1958) Bool)

(assert (=> b!567547 (= res!243602 (not (contains!1313 rules!3103 (rule!1819 (_1!3560 (v!16278 lt!239401))))))))

(assert (=> b!567547 (= lt!239408 (_2!3560 (v!16278 lt!239401)))))

(declare-fun b!567548 () Bool)

(declare-fun res!243614 () Bool)

(declare-fun e!343006 () Bool)

(assert (=> b!567548 (=> (not res!243614) (not e!343006))))

(assert (=> b!567548 (= res!243614 (= (size!4460 token!491) (size!4461 (originalCharacters!1118 token!491))))))

(declare-fun b!567549 () Bool)

(declare-fun e!342992 () Bool)

(assert (=> b!567549 (= e!343009 e!342992)))

(declare-fun res!243600 () Bool)

(assert (=> b!567549 (=> (not res!243600) (not e!342992))))

(assert (=> b!567549 (= res!243600 (= lt!239403 input!2705))))

(declare-fun list!2323 (BalanceConc!3600) List!5609)

(declare-fun charsOf!708 (Token!1894) BalanceConc!3600)

(assert (=> b!567549 (= lt!239403 (list!2323 (charsOf!708 token!491)))))

(declare-fun b!567550 () Bool)

(declare-fun e!342987 () Bool)

(assert (=> b!567550 (= e!342987 (= (_1!3560 (get!2133 lt!239401)) (_1!3560 (v!16278 lt!239401))))))

(declare-fun b!567551 () Bool)

(declare-fun res!243598 () Bool)

(assert (=> b!567551 (=> res!243598 e!343007)))

(declare-fun lt!239407 () List!5609)

(assert (=> b!567551 (= res!243598 (not (= (++!1567 lt!239407 lt!239408) input!2705)))))

(declare-fun b!567552 () Bool)

(declare-fun tp_is_empty!3181 () Bool)

(declare-fun tp!178820 () Bool)

(assert (=> b!567552 (= e!343008 (and tp_is_empty!3181 tp!178820))))

(assert (=> b!567553 (= e!342997 (and tp!178828 tp!178822))))

(declare-fun lt!239377 () TokenValue!1103)

(declare-fun lt!239396 () List!5609)

(declare-fun lt!239400 () Int)

(declare-fun b!567554 () Bool)

(assert (=> b!567554 (= e!343006 (and (= (size!4460 token!491) lt!239400) (= (originalCharacters!1118 token!491) lt!239403) (= (tuple2!6593 token!491 suffix!1342) (tuple2!6593 (Token!1895 lt!239377 (rule!1819 token!491) lt!239400 lt!239403) lt!239396))))))

(declare-fun b!567555 () Bool)

(declare-fun e!342994 () Unit!10015)

(declare-fun Unit!10017 () Unit!10015)

(assert (=> b!567555 (= e!342994 Unit!10017)))

(declare-fun lt!239388 () TokenValue!1103)

(declare-fun lt!239380 () tuple2!6592)

(declare-fun b!567556 () Bool)

(assert (=> b!567556 (= e!342995 (and (= (size!4460 (_1!3560 (v!16278 lt!239401))) lt!239390) (= (originalCharacters!1118 (_1!3560 (v!16278 lt!239401))) lt!239407) (= lt!239380 (tuple2!6593 (Token!1895 lt!239388 (rule!1819 (_1!3560 (v!16278 lt!239401))) lt!239390 lt!239407) lt!239408))))))

(declare-fun b!567557 () Bool)

(declare-fun e!342999 () Bool)

(assert (=> b!567557 (= e!342999 e!342987)))

(declare-fun res!243594 () Bool)

(assert (=> b!567557 (=> (not res!243594) (not e!342987))))

(declare-fun isDefined!1241 (Option!1430) Bool)

(assert (=> b!567557 (= res!243594 (isDefined!1241 lt!239401))))

(declare-fun b!567558 () Bool)

(declare-fun e!343010 () Bool)

(assert (=> b!567558 (= e!343010 e!342999)))

(declare-fun res!243607 () Bool)

(assert (=> b!567558 (=> res!243607 e!342999)))

(assert (=> b!567558 (= res!243607 (>= lt!239390 lt!239400))))

(declare-fun b!567559 () Bool)

(assert (=> b!567559 (= e!342992 e!343003)))

(declare-fun res!243590 () Bool)

(assert (=> b!567559 (=> (not res!243590) (not e!343003))))

(assert (=> b!567559 (= res!243590 (isDefined!1241 lt!239410))))

(declare-fun maxPrefix!663 (LexerInterface!965 List!5610 List!5609) Option!1430)

(assert (=> b!567559 (= lt!239410 (maxPrefix!663 thiss!22590 rules!3103 lt!239376))))

(assert (=> b!567559 (= lt!239376 (++!1567 input!2705 suffix!1342))))

(declare-fun b!567560 () Bool)

(declare-fun res!243587 () Bool)

(assert (=> b!567560 (=> res!243587 e!343007)))

(assert (=> b!567560 (= res!243587 (not (contains!1313 rules!3103 (rule!1819 token!491))))))

(declare-fun b!567561 () Bool)

(assert (=> b!567561 (= e!343005 e!343000)))

(declare-fun res!243597 () Bool)

(assert (=> b!567561 (=> (not res!243597) (not e!343000))))

(assert (=> b!567561 (= res!243597 ((_ is Some!1429) lt!239401))))

(assert (=> b!567561 (= lt!239401 (maxPrefix!663 thiss!22590 rules!3103 input!2705))))

(declare-fun b!567562 () Bool)

(declare-fun e!342990 () Bool)

(assert (=> b!567562 (= e!342990 e!343007)))

(declare-fun res!243593 () Bool)

(assert (=> b!567562 (=> res!243593 e!343007)))

(assert (=> b!567562 (= res!243593 (>= lt!239390 lt!239400))))

(assert (=> b!567562 e!343010))

(declare-fun res!243605 () Bool)

(assert (=> b!567562 (=> (not res!243605) (not e!343010))))

(declare-fun maxPrefixOneRule!364 (LexerInterface!965 Rule!1958 List!5609) Option!1430)

(assert (=> b!567562 (= res!243605 (= (maxPrefixOneRule!364 thiss!22590 (rule!1819 token!491) lt!239376) (Some!1429 (tuple2!6593 (Token!1895 lt!239377 (rule!1819 token!491) lt!239400 lt!239403) suffix!1342))))))

(declare-fun lt!239385 () Unit!10015)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!114 (LexerInterface!965 List!5610 List!5609 List!5609 List!5609 Rule!1958) Unit!10015)

(assert (=> b!567562 (= lt!239385 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!114 thiss!22590 rules!3103 lt!239403 lt!239376 suffix!1342 (rule!1819 token!491)))))

(assert (=> b!567562 (= lt!239405 (Some!1429 (tuple2!6593 lt!239392 (_2!3560 (v!16278 lt!239401)))))))

(assert (=> b!567562 (= lt!239405 (maxPrefixOneRule!364 thiss!22590 (rule!1819 (_1!3560 (v!16278 lt!239401))) input!2705))))

(declare-fun lt!239384 () Unit!10015)

(assert (=> b!567562 (= lt!239384 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!114 thiss!22590 rules!3103 lt!239407 input!2705 (_2!3560 (v!16278 lt!239401)) (rule!1819 (_1!3560 (v!16278 lt!239401)))))))

(assert (=> b!567562 e!343006))

(declare-fun res!243606 () Bool)

(assert (=> b!567562 (=> (not res!243606) (not e!343006))))

(assert (=> b!567562 (= res!243606 (= (value!35618 token!491) lt!239377))))

(declare-fun apply!1344 (TokenValueInjection!1974 BalanceConc!3600) TokenValue!1103)

(declare-fun seqFromList!1267 (List!5609) BalanceConc!3600)

(assert (=> b!567562 (= lt!239377 (apply!1344 (transformation!1079 (rule!1819 token!491)) (seqFromList!1267 lt!239403)))))

(assert (=> b!567562 (= suffix!1342 lt!239396)))

(declare-fun lt!239409 () Unit!10015)

(declare-fun lemmaSamePrefixThenSameSuffix!436 (List!5609 List!5609 List!5609 List!5609 List!5609) Unit!10015)

(assert (=> b!567562 (= lt!239409 (lemmaSamePrefixThenSameSuffix!436 lt!239403 suffix!1342 lt!239403 lt!239396 lt!239376))))

(declare-fun getSuffix!232 (List!5609 List!5609) List!5609)

(assert (=> b!567562 (= lt!239396 (getSuffix!232 lt!239376 lt!239403))))

(declare-fun b!567563 () Bool)

(declare-fun Unit!10018 () Unit!10015)

(assert (=> b!567563 (= e!342994 Unit!10018)))

(assert (=> b!567563 false))

(declare-fun b!567564 () Bool)

(declare-fun tp!178825 () Bool)

(assert (=> b!567564 (= e!343001 (and tp_is_empty!3181 tp!178825))))

(declare-fun b!567565 () Bool)

(declare-fun res!243604 () Bool)

(assert (=> b!567565 (=> (not res!243604) (not e!343009))))

(declare-fun isEmpty!4041 (List!5609) Bool)

(assert (=> b!567565 (= res!243604 (not (isEmpty!4041 input!2705)))))

(assert (=> b!567566 (= e!343002 (and tp!178827 tp!178826))))

(declare-fun b!567567 () Bool)

(declare-fun tp!178821 () Bool)

(declare-fun inv!21 (TokenValue!1103) Bool)

(assert (=> b!567567 (= e!342998 (and (inv!21 (value!35618 token!491)) e!342993 tp!178821))))

(declare-fun b!567568 () Bool)

(declare-fun res!243588 () Bool)

(assert (=> b!567568 (=> res!243588 e!343007)))

(assert (=> b!567568 (= res!243588 (not (= (getSuffix!232 input!2705 input!2705) Nil!5599)))))

(declare-fun b!567569 () Bool)

(declare-fun res!243592 () Bool)

(assert (=> b!567569 (=> res!243592 e!343007)))

(declare-fun isPrefix!713 (List!5609 List!5609) Bool)

(assert (=> b!567569 (= res!243592 (not (isPrefix!713 lt!239407 input!2705)))))

(declare-fun b!567570 () Bool)

(declare-fun res!243610 () Bool)

(assert (=> b!567570 (=> (not res!243610) (not e!343009))))

(declare-fun isEmpty!4042 (List!5610) Bool)

(assert (=> b!567570 (= res!243610 (not (isEmpty!4042 rules!3103)))))

(declare-fun b!567571 () Bool)

(declare-fun res!243603 () Bool)

(assert (=> b!567571 (=> res!243603 e!343007)))

(declare-fun lt!239402 () List!5609)

(assert (=> b!567571 (= res!243603 (not (= lt!239402 input!2705)))))

(declare-fun b!567572 () Bool)

(declare-fun res!243589 () Bool)

(assert (=> b!567572 (=> res!243589 e!343007)))

(assert (=> b!567572 (= res!243589 (not (isPrefix!713 lt!239403 input!2705)))))

(declare-fun b!567573 () Bool)

(declare-fun res!243612 () Bool)

(assert (=> b!567573 (=> res!243612 e!343007)))

(declare-fun matchR!560 (Regex!1413 List!5609) Bool)

(assert (=> b!567573 (= res!243612 (not (matchR!560 (regex!1079 (rule!1819 token!491)) input!2705)))))

(declare-fun b!567574 () Bool)

(declare-fun res!243608 () Bool)

(assert (=> b!567574 (=> res!243608 e!342996)))

(assert (=> b!567574 (= res!243608 (not (matchR!560 (regex!1079 (rule!1819 (_1!3560 (v!16278 lt!239401)))) lt!239407)))))

(declare-fun b!567575 () Bool)

(assert (=> b!567575 (= e!342989 (not e!342990))))

(declare-fun res!243596 () Bool)

(assert (=> b!567575 (=> res!243596 e!342990)))

(assert (=> b!567575 (= res!243596 (not (isPrefix!713 input!2705 lt!239393)))))

(assert (=> b!567575 (isPrefix!713 lt!239403 lt!239393)))

(declare-fun lt!239399 () Unit!10015)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!560 (List!5609 List!5609) Unit!10015)

(assert (=> b!567575 (= lt!239399 (lemmaConcatTwoListThenFirstIsPrefix!560 lt!239403 suffix!1342))))

(assert (=> b!567575 (isPrefix!713 input!2705 lt!239376)))

(declare-fun lt!239395 () Unit!10015)

(assert (=> b!567575 (= lt!239395 (lemmaConcatTwoListThenFirstIsPrefix!560 input!2705 suffix!1342))))

(assert (=> b!567575 (= lt!239392 (Token!1895 lt!239388 (rule!1819 (_1!3560 (v!16278 lt!239401))) lt!239390 lt!239407))))

(assert (=> b!567575 e!342995))

(declare-fun res!243613 () Bool)

(assert (=> b!567575 (=> (not res!243613) (not e!342995))))

(assert (=> b!567575 (= res!243613 (= (value!35618 (_1!3560 (v!16278 lt!239401))) lt!239388))))

(assert (=> b!567575 (= lt!239388 (apply!1344 (transformation!1079 (rule!1819 (_1!3560 (v!16278 lt!239401)))) lt!239382))))

(assert (=> b!567575 (= lt!239382 (seqFromList!1267 lt!239407))))

(declare-fun lt!239379 () Unit!10015)

(declare-fun lemmaInv!215 (TokenValueInjection!1974) Unit!10015)

(assert (=> b!567575 (= lt!239379 (lemmaInv!215 (transformation!1079 (rule!1819 token!491))))))

(declare-fun lt!239391 () Unit!10015)

(assert (=> b!567575 (= lt!239391 (lemmaInv!215 (transformation!1079 (rule!1819 (_1!3560 (v!16278 lt!239401))))))))

(declare-fun ruleValid!289 (LexerInterface!965 Rule!1958) Bool)

(assert (=> b!567575 (ruleValid!289 thiss!22590 (rule!1819 token!491))))

(declare-fun lt!239406 () Unit!10015)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!146 (LexerInterface!965 Rule!1958 List!5610) Unit!10015)

(assert (=> b!567575 (= lt!239406 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!146 thiss!22590 (rule!1819 token!491) rules!3103))))

(assert (=> b!567575 (ruleValid!289 thiss!22590 (rule!1819 (_1!3560 (v!16278 lt!239401))))))

(declare-fun lt!239398 () Unit!10015)

(assert (=> b!567575 (= lt!239398 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!146 thiss!22590 (rule!1819 (_1!3560 (v!16278 lt!239401))) rules!3103))))

(assert (=> b!567575 (isPrefix!713 input!2705 input!2705)))

(declare-fun lt!239394 () Unit!10015)

(declare-fun lemmaIsPrefixRefl!451 (List!5609 List!5609) Unit!10015)

(assert (=> b!567575 (= lt!239394 (lemmaIsPrefixRefl!451 input!2705 input!2705))))

(assert (=> b!567575 (= (_2!3560 (v!16278 lt!239401)) lt!239408)))

(declare-fun lt!239378 () Unit!10015)

(assert (=> b!567575 (= lt!239378 (lemmaSamePrefixThenSameSuffix!436 lt!239407 (_2!3560 (v!16278 lt!239401)) lt!239407 lt!239408 input!2705))))

(assert (=> b!567575 (= lt!239408 (getSuffix!232 input!2705 lt!239407))))

(assert (=> b!567575 (isPrefix!713 lt!239407 lt!239402)))

(assert (=> b!567575 (= lt!239402 (++!1567 lt!239407 (_2!3560 (v!16278 lt!239401))))))

(declare-fun lt!239387 () Unit!10015)

(assert (=> b!567575 (= lt!239387 (lemmaConcatTwoListThenFirstIsPrefix!560 lt!239407 (_2!3560 (v!16278 lt!239401))))))

(declare-fun lt!239397 () Unit!10015)

(declare-fun lemmaCharactersSize!146 (Token!1894) Unit!10015)

(assert (=> b!567575 (= lt!239397 (lemmaCharactersSize!146 token!491))))

(declare-fun lt!239383 () Unit!10015)

(assert (=> b!567575 (= lt!239383 (lemmaCharactersSize!146 (_1!3560 (v!16278 lt!239401))))))

(declare-fun lt!239386 () Unit!10015)

(assert (=> b!567575 (= lt!239386 e!342994)))

(declare-fun c!106402 () Bool)

(assert (=> b!567575 (= c!106402 (> lt!239390 lt!239400))))

(assert (=> b!567575 (= lt!239400 (size!4461 lt!239403))))

(assert (=> b!567575 (= lt!239390 (size!4461 lt!239407))))

(assert (=> b!567575 (= lt!239407 (list!2323 (charsOf!708 (_1!3560 (v!16278 lt!239401)))))))

(assert (=> b!567575 (= lt!239401 (Some!1429 lt!239380))))

(assert (=> b!567575 (= lt!239380 (tuple2!6593 (_1!3560 (v!16278 lt!239401)) (_2!3560 (v!16278 lt!239401))))))

(declare-fun lt!239389 () Unit!10015)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!156 (List!5609 List!5609 List!5609 List!5609) Unit!10015)

(assert (=> b!567575 (= lt!239389 (lemmaConcatSameAndSameSizesThenSameLists!156 lt!239403 suffix!1342 input!2705 suffix!1342))))

(assert (= (and start!52336 res!243611) b!567570))

(assert (= (and b!567570 res!243610) b!567542))

(assert (= (and b!567542 res!243609) b!567565))

(assert (= (and b!567565 res!243604) b!567549))

(assert (= (and b!567549 res!243600) b!567559))

(assert (= (and b!567559 res!243590) b!567539))

(assert (= (and b!567539 res!243599) b!567561))

(assert (= (and b!567561 res!243597) b!567544))

(assert (= (and b!567544 res!243595) b!567575))

(assert (= (and b!567575 c!106402) b!567563))

(assert (= (and b!567575 (not c!106402)) b!567555))

(assert (= (and b!567575 res!243613) b!567541))

(assert (= (and b!567541 res!243591) b!567556))

(assert (= (and b!567575 (not res!243596)) b!567562))

(assert (= (and b!567562 res!243606) b!567548))

(assert (= (and b!567548 res!243614) b!567554))

(assert (= (and b!567562 res!243605) b!567558))

(assert (= (and b!567558 (not res!243607)) b!567557))

(assert (= (and b!567557 res!243594) b!567550))

(assert (= (and b!567562 (not res!243593)) b!567560))

(assert (= (and b!567560 (not res!243587)) b!567573))

(assert (= (and b!567573 (not res!243612)) b!567572))

(assert (= (and b!567572 (not res!243589)) b!567568))

(assert (= (and b!567568 (not res!243588)) b!567571))

(assert (= (and b!567571 (not res!243603)) b!567569))

(assert (= (and b!567569 (not res!243592)) b!567551))

(assert (= (and b!567551 (not res!243598)) b!567547))

(assert (= (and b!567547 (not res!243602)) b!567574))

(assert (= (and b!567574 (not res!243608)) b!567546))

(assert (= (and b!567546 (not res!243601)) b!567540))

(assert (= (and start!52336 ((_ is Cons!5599) suffix!1342)) b!567564))

(assert (= b!567538 b!567553))

(assert (= b!567545 b!567538))

(assert (= (and start!52336 ((_ is Cons!5600) rules!3103)) b!567545))

(assert (= b!567543 b!567566))

(assert (= b!567567 b!567543))

(assert (= start!52336 b!567567))

(assert (= (and start!52336 ((_ is Cons!5599) input!2705)) b!567552))

(declare-fun m!821429 () Bool)

(assert (=> b!567567 m!821429))

(declare-fun m!821431 () Bool)

(assert (=> b!567560 m!821431))

(declare-fun m!821433 () Bool)

(assert (=> b!567575 m!821433))

(declare-fun m!821435 () Bool)

(assert (=> b!567575 m!821435))

(declare-fun m!821437 () Bool)

(assert (=> b!567575 m!821437))

(declare-fun m!821439 () Bool)

(assert (=> b!567575 m!821439))

(declare-fun m!821441 () Bool)

(assert (=> b!567575 m!821441))

(declare-fun m!821443 () Bool)

(assert (=> b!567575 m!821443))

(declare-fun m!821445 () Bool)

(assert (=> b!567575 m!821445))

(declare-fun m!821447 () Bool)

(assert (=> b!567575 m!821447))

(declare-fun m!821449 () Bool)

(assert (=> b!567575 m!821449))

(declare-fun m!821451 () Bool)

(assert (=> b!567575 m!821451))

(declare-fun m!821453 () Bool)

(assert (=> b!567575 m!821453))

(declare-fun m!821455 () Bool)

(assert (=> b!567575 m!821455))

(declare-fun m!821457 () Bool)

(assert (=> b!567575 m!821457))

(declare-fun m!821459 () Bool)

(assert (=> b!567575 m!821459))

(declare-fun m!821461 () Bool)

(assert (=> b!567575 m!821461))

(declare-fun m!821463 () Bool)

(assert (=> b!567575 m!821463))

(declare-fun m!821465 () Bool)

(assert (=> b!567575 m!821465))

(declare-fun m!821467 () Bool)

(assert (=> b!567575 m!821467))

(declare-fun m!821469 () Bool)

(assert (=> b!567575 m!821469))

(declare-fun m!821471 () Bool)

(assert (=> b!567575 m!821471))

(declare-fun m!821473 () Bool)

(assert (=> b!567575 m!821473))

(assert (=> b!567575 m!821443))

(declare-fun m!821475 () Bool)

(assert (=> b!567575 m!821475))

(declare-fun m!821477 () Bool)

(assert (=> b!567575 m!821477))

(declare-fun m!821479 () Bool)

(assert (=> b!567575 m!821479))

(declare-fun m!821481 () Bool)

(assert (=> b!567575 m!821481))

(declare-fun m!821483 () Bool)

(assert (=> b!567575 m!821483))

(declare-fun m!821485 () Bool)

(assert (=> b!567575 m!821485))

(declare-fun m!821487 () Bool)

(assert (=> b!567549 m!821487))

(assert (=> b!567549 m!821487))

(declare-fun m!821489 () Bool)

(assert (=> b!567549 m!821489))

(declare-fun m!821491 () Bool)

(assert (=> b!567548 m!821491))

(declare-fun m!821493 () Bool)

(assert (=> b!567570 m!821493))

(declare-fun m!821495 () Bool)

(assert (=> b!567568 m!821495))

(declare-fun m!821497 () Bool)

(assert (=> b!567574 m!821497))

(declare-fun m!821499 () Bool)

(assert (=> start!52336 m!821499))

(declare-fun m!821501 () Bool)

(assert (=> b!567547 m!821501))

(declare-fun m!821503 () Bool)

(assert (=> b!567542 m!821503))

(declare-fun m!821505 () Bool)

(assert (=> b!567561 m!821505))

(declare-fun m!821507 () Bool)

(assert (=> b!567544 m!821507))

(declare-fun m!821509 () Bool)

(assert (=> b!567562 m!821509))

(declare-fun m!821511 () Bool)

(assert (=> b!567562 m!821511))

(declare-fun m!821513 () Bool)

(assert (=> b!567562 m!821513))

(declare-fun m!821515 () Bool)

(assert (=> b!567562 m!821515))

(declare-fun m!821517 () Bool)

(assert (=> b!567562 m!821517))

(declare-fun m!821519 () Bool)

(assert (=> b!567562 m!821519))

(declare-fun m!821521 () Bool)

(assert (=> b!567562 m!821521))

(assert (=> b!567562 m!821515))

(declare-fun m!821523 () Bool)

(assert (=> b!567562 m!821523))

(declare-fun m!821525 () Bool)

(assert (=> b!567557 m!821525))

(declare-fun m!821527 () Bool)

(assert (=> b!567559 m!821527))

(declare-fun m!821529 () Bool)

(assert (=> b!567559 m!821529))

(declare-fun m!821531 () Bool)

(assert (=> b!567559 m!821531))

(declare-fun m!821533 () Bool)

(assert (=> b!567573 m!821533))

(declare-fun m!821535 () Bool)

(assert (=> b!567551 m!821535))

(declare-fun m!821537 () Bool)

(assert (=> b!567565 m!821537))

(declare-fun m!821539 () Bool)

(assert (=> b!567546 m!821539))

(declare-fun m!821541 () Bool)

(assert (=> b!567550 m!821541))

(declare-fun m!821543 () Bool)

(assert (=> b!567539 m!821543))

(declare-fun m!821545 () Bool)

(assert (=> b!567540 m!821545))

(declare-fun m!821547 () Bool)

(assert (=> b!567569 m!821547))

(declare-fun m!821549 () Bool)

(assert (=> b!567538 m!821549))

(declare-fun m!821551 () Bool)

(assert (=> b!567538 m!821551))

(declare-fun m!821553 () Bool)

(assert (=> b!567541 m!821553))

(declare-fun m!821555 () Bool)

(assert (=> b!567543 m!821555))

(declare-fun m!821557 () Bool)

(assert (=> b!567543 m!821557))

(declare-fun m!821559 () Bool)

(assert (=> b!567572 m!821559))

(check-sat b_and!55283 (not b!567565) (not b!567572) (not b!567574) (not b!567540) (not b!567567) (not b!567568) (not b!567569) (not b!567559) (not b!567557) tp_is_empty!3181 (not b!567561) (not b!567539) b_and!55287 (not b_next!15847) (not b!567573) b_and!55289 (not b!567542) (not b!567547) (not b_next!15845) (not b!567570) (not b!567551) (not b!567552) (not b!567544) b_and!55285 (not b!567549) (not b_next!15851) (not b!567538) (not b!567548) (not b!567545) (not b!567550) (not b!567562) (not start!52336) (not b!567564) (not b_next!15849) (not b!567541) (not b!567543) (not b!567575) (not b!567560) (not b!567546))
(check-sat b_and!55283 (not b_next!15845) (not b_next!15849) b_and!55287 (not b_next!15847) b_and!55289 b_and!55285 (not b_next!15851))
