; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405922 () Bool)

(assert start!405922)

(declare-fun b!4241478 () Bool)

(declare-fun b_free!125647 () Bool)

(declare-fun b_next!126351 () Bool)

(assert (=> b!4241478 (= b_free!125647 (not b_next!126351))))

(declare-fun tp!1300227 () Bool)

(declare-fun b_and!335609 () Bool)

(assert (=> b!4241478 (= tp!1300227 b_and!335609)))

(declare-fun b_free!125649 () Bool)

(declare-fun b_next!126353 () Bool)

(assert (=> b!4241478 (= b_free!125649 (not b_next!126353))))

(declare-fun tp!1300239 () Bool)

(declare-fun b_and!335611 () Bool)

(assert (=> b!4241478 (= tp!1300239 b_and!335611)))

(declare-fun b!4241486 () Bool)

(declare-fun b_free!125651 () Bool)

(declare-fun b_next!126355 () Bool)

(assert (=> b!4241486 (= b_free!125651 (not b_next!126355))))

(declare-fun tp!1300238 () Bool)

(declare-fun b_and!335613 () Bool)

(assert (=> b!4241486 (= tp!1300238 b_and!335613)))

(declare-fun b_free!125653 () Bool)

(declare-fun b_next!126357 () Bool)

(assert (=> b!4241486 (= b_free!125653 (not b_next!126357))))

(declare-fun tp!1300237 () Bool)

(declare-fun b_and!335615 () Bool)

(assert (=> b!4241486 (= tp!1300237 b_and!335615)))

(declare-fun b!4241487 () Bool)

(declare-fun b_free!125655 () Bool)

(declare-fun b_next!126359 () Bool)

(assert (=> b!4241487 (= b_free!125655 (not b_next!126359))))

(declare-fun tp!1300226 () Bool)

(declare-fun b_and!335617 () Bool)

(assert (=> b!4241487 (= tp!1300226 b_and!335617)))

(declare-fun b_free!125657 () Bool)

(declare-fun b_next!126361 () Bool)

(assert (=> b!4241487 (= b_free!125657 (not b_next!126361))))

(declare-fun tp!1300230 () Bool)

(declare-fun b_and!335619 () Bool)

(assert (=> b!4241487 (= tp!1300230 b_and!335619)))

(declare-fun e!2634065 () Bool)

(assert (=> b!4241478 (= e!2634065 (and tp!1300227 tp!1300239))))

(declare-fun b!4241479 () Bool)

(declare-fun e!2634057 () Bool)

(declare-fun e!2634071 () Bool)

(assert (=> b!4241479 (= e!2634057 e!2634071)))

(declare-fun res!1743996 () Bool)

(assert (=> b!4241479 (=> (not res!1743996) (not e!2634071))))

(declare-datatypes ((List!47034 0))(
  ( (Nil!46910) (Cons!46910 (h!52330 (_ BitVec 16)) (t!350905 List!47034)) )
))
(declare-datatypes ((TokenValue!8162 0))(
  ( (FloatLiteralValue!16324 (text!57579 List!47034)) (TokenValueExt!8161 (__x!28547 Int)) (Broken!40810 (value!246572 List!47034)) (Object!8285) (End!8162) (Def!8162) (Underscore!8162) (Match!8162) (Else!8162) (Error!8162) (Case!8162) (If!8162) (Extends!8162) (Abstract!8162) (Class!8162) (Val!8162) (DelimiterValue!16324 (del!8222 List!47034)) (KeywordValue!8168 (value!246573 List!47034)) (CommentValue!16324 (value!246574 List!47034)) (WhitespaceValue!16324 (value!246575 List!47034)) (IndentationValue!8162 (value!246576 List!47034)) (String!54739) (Int32!8162) (Broken!40811 (value!246577 List!47034)) (Boolean!8163) (Unit!65976) (OperatorValue!8165 (op!8222 List!47034)) (IdentifierValue!16324 (value!246578 List!47034)) (IdentifierValue!16325 (value!246579 List!47034)) (WhitespaceValue!16325 (value!246580 List!47034)) (True!16324) (False!16324) (Broken!40812 (value!246581 List!47034)) (Broken!40813 (value!246582 List!47034)) (True!16325) (RightBrace!8162) (RightBracket!8162) (Colon!8162) (Null!8162) (Comma!8162) (LeftBracket!8162) (False!16325) (LeftBrace!8162) (ImaginaryLiteralValue!8162 (text!57580 List!47034)) (StringLiteralValue!24486 (value!246583 List!47034)) (EOFValue!8162 (value!246584 List!47034)) (IdentValue!8162 (value!246585 List!47034)) (DelimiterValue!16325 (value!246586 List!47034)) (DedentValue!8162 (value!246587 List!47034)) (NewLineValue!8162 (value!246588 List!47034)) (IntegerValue!24486 (value!246589 (_ BitVec 32)) (text!57581 List!47034)) (IntegerValue!24487 (value!246590 Int) (text!57582 List!47034)) (Times!8162) (Or!8162) (Equal!8162) (Minus!8162) (Broken!40814 (value!246591 List!47034)) (And!8162) (Div!8162) (LessEqual!8162) (Mod!8162) (Concat!20999) (Not!8162) (Plus!8162) (SpaceValue!8162 (value!246592 List!47034)) (IntegerValue!24488 (value!246593 Int) (text!57583 List!47034)) (StringLiteralValue!24487 (text!57584 List!47034)) (FloatLiteralValue!16325 (text!57585 List!47034)) (BytesLiteralValue!8162 (value!246594 List!47034)) (CommentValue!16325 (value!246595 List!47034)) (StringLiteralValue!24488 (value!246596 List!47034)) (ErrorTokenValue!8162 (msg!8223 List!47034)) )
))
(declare-datatypes ((C!25872 0))(
  ( (C!25873 (val!15126 Int)) )
))
(declare-datatypes ((Regex!12837 0))(
  ( (ElementMatch!12837 (c!720622 C!25872)) (Concat!21000 (regOne!26186 Regex!12837) (regTwo!26186 Regex!12837)) (EmptyExpr!12837) (Star!12837 (reg!13166 Regex!12837)) (EmptyLang!12837) (Union!12837 (regOne!26187 Regex!12837) (regTwo!26187 Regex!12837)) )
))
(declare-datatypes ((String!54740 0))(
  ( (String!54741 (value!246597 String)) )
))
(declare-datatypes ((List!47035 0))(
  ( (Nil!46911) (Cons!46911 (h!52331 C!25872) (t!350906 List!47035)) )
))
(declare-datatypes ((IArray!28291 0))(
  ( (IArray!28292 (innerList!14203 List!47035)) )
))
(declare-datatypes ((Conc!14143 0))(
  ( (Node!14143 (left!34855 Conc!14143) (right!35185 Conc!14143) (csize!28516 Int) (cheight!14354 Int)) (Leaf!21868 (xs!17449 IArray!28291) (csize!28517 Int)) (Empty!14143) )
))
(declare-datatypes ((BalanceConc!27880 0))(
  ( (BalanceConc!27881 (c!720623 Conc!14143)) )
))
(declare-datatypes ((TokenValueInjection!15752 0))(
  ( (TokenValueInjection!15753 (toValue!10688 Int) (toChars!10547 Int)) )
))
(declare-datatypes ((Rule!15664 0))(
  ( (Rule!15665 (regex!7932 Regex!12837) (tag!8796 String!54740) (isSeparator!7932 Bool) (transformation!7932 TokenValueInjection!15752)) )
))
(declare-datatypes ((Token!14490 0))(
  ( (Token!14491 (value!246598 TokenValue!8162) (rule!11060 Rule!15664) (size!34363 Int) (originalCharacters!8276 List!47035)) )
))
(declare-datatypes ((tuple2!44486 0))(
  ( (tuple2!44487 (_1!25377 Token!14490) (_2!25377 List!47035)) )
))
(declare-datatypes ((Option!10068 0))(
  ( (None!10067) (Some!10067 (v!41019 tuple2!44486)) )
))
(declare-fun lt!1506681 () Option!10068)

(declare-fun lt!1506680 () Option!10068)

(get-info :version)

(assert (=> b!4241479 (= res!1743996 (and ((_ is Some!10067) lt!1506681) ((_ is Some!10067) lt!1506680)))))

(declare-datatypes ((LexerInterface!7527 0))(
  ( (LexerInterfaceExt!7524 (__x!28548 Int)) (Lexer!7525) )
))
(declare-fun thiss!21540 () LexerInterface!7527)

(declare-datatypes ((List!47036 0))(
  ( (Nil!46912) (Cons!46912 (h!52332 Rule!15664) (t!350907 List!47036)) )
))
(declare-fun rules!2932 () List!47036)

(declare-fun shorterInput!51 () List!47035)

(declare-fun maxPrefix!4485 (LexerInterface!7527 List!47036 List!47035) Option!10068)

(assert (=> b!4241479 (= lt!1506680 (maxPrefix!4485 thiss!21540 rules!2932 shorterInput!51))))

(declare-fun longerInput!51 () List!47035)

(assert (=> b!4241479 (= lt!1506681 (maxPrefix!4485 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4241480 () Bool)

(declare-fun e!2634053 () Bool)

(declare-fun e!2634067 () Bool)

(declare-fun tp!1300228 () Bool)

(assert (=> b!4241480 (= e!2634053 (and e!2634067 tp!1300228))))

(declare-fun tp!1300241 () Bool)

(declare-datatypes ((List!47037 0))(
  ( (Nil!46913) (Cons!46913 (h!52333 Token!14490) (t!350908 List!47037)) )
))
(declare-fun addTokens!17 () List!47037)

(declare-fun e!2634061 () Bool)

(declare-fun e!2634054 () Bool)

(declare-fun b!4241481 () Bool)

(declare-fun inv!61659 (Token!14490) Bool)

(assert (=> b!4241481 (= e!2634054 (and (inv!61659 (h!52333 addTokens!17)) e!2634061 tp!1300241))))

(declare-fun b!4241482 () Bool)

(declare-fun res!1743994 () Bool)

(declare-fun e!2634073 () Bool)

(assert (=> b!4241482 (=> (not res!1743994) (not e!2634073))))

(declare-fun rulesInvariant!6638 (LexerInterface!7527 List!47036) Bool)

(assert (=> b!4241482 (= res!1743994 (rulesInvariant!6638 thiss!21540 rules!2932))))

(declare-fun b!4241483 () Bool)

(declare-fun res!1743993 () Bool)

(assert (=> b!4241483 (=> (not res!1743993) (not e!2634073))))

(declare-fun isEmpty!27733 (List!47035) Bool)

(assert (=> b!4241483 (= res!1743993 (not (isEmpty!27733 longerInput!51)))))

(declare-fun res!1743997 () Bool)

(assert (=> start!405922 (=> (not res!1743997) (not e!2634073))))

(assert (=> start!405922 (= res!1743997 ((_ is Lexer!7525) thiss!21540))))

(assert (=> start!405922 e!2634073))

(assert (=> start!405922 true))

(assert (=> start!405922 e!2634053))

(assert (=> start!405922 e!2634054))

(declare-fun e!2634064 () Bool)

(assert (=> start!405922 e!2634064))

(declare-fun e!2634060 () Bool)

(assert (=> start!405922 e!2634060))

(declare-fun e!2634070 () Bool)

(assert (=> start!405922 e!2634070))

(declare-fun e!2634063 () Bool)

(assert (=> start!405922 e!2634063))

(declare-fun b!4241484 () Bool)

(declare-fun e!2634055 () Bool)

(declare-fun e!2634058 () Bool)

(declare-fun tp!1300232 () Bool)

(declare-fun inv!61656 (String!54740) Bool)

(declare-fun inv!61660 (TokenValueInjection!15752) Bool)

(assert (=> b!4241484 (= e!2634055 (and tp!1300232 (inv!61656 (tag!8796 (rule!11060 (h!52333 addTokens!17)))) (inv!61660 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) e!2634058))))

(declare-fun b!4241485 () Bool)

(declare-fun e!2634059 () Bool)

(declare-fun e!2634072 () Bool)

(declare-fun tp!1300235 () Bool)

(declare-fun tokens!581 () List!47037)

(assert (=> b!4241485 (= e!2634059 (and tp!1300235 (inv!61656 (tag!8796 (rule!11060 (h!52333 tokens!581)))) (inv!61660 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) e!2634072))))

(assert (=> b!4241486 (= e!2634072 (and tp!1300238 tp!1300237))))

(assert (=> b!4241487 (= e!2634058 (and tp!1300226 tp!1300230))))

(declare-fun b!4241488 () Bool)

(declare-fun tp_is_empty!22665 () Bool)

(declare-fun tp!1300229 () Bool)

(assert (=> b!4241488 (= e!2634060 (and tp_is_empty!22665 tp!1300229))))

(declare-fun b!4241489 () Bool)

(declare-fun res!1743995 () Bool)

(assert (=> b!4241489 (=> (not res!1743995) (not e!2634057))))

(declare-fun isEmpty!27734 (List!47037) Bool)

(assert (=> b!4241489 (= res!1743995 (not (isEmpty!27734 addTokens!17)))))

(declare-fun tp!1300234 () Bool)

(declare-fun b!4241490 () Bool)

(assert (=> b!4241490 (= e!2634067 (and tp!1300234 (inv!61656 (tag!8796 (h!52332 rules!2932))) (inv!61660 (transformation!7932 (h!52332 rules!2932))) e!2634065))))

(declare-fun b!4241491 () Bool)

(declare-fun res!1743998 () Bool)

(assert (=> b!4241491 (=> (not res!1743998) (not e!2634073))))

(declare-fun isEmpty!27735 (List!47036) Bool)

(assert (=> b!4241491 (= res!1743998 (not (isEmpty!27735 rules!2932)))))

(declare-fun b!4241492 () Bool)

(declare-fun res!1743992 () Bool)

(assert (=> b!4241492 (=> (not res!1743992) (not e!2634071))))

(declare-fun ++!11941 (List!47035 List!47035) List!47035)

(declare-fun list!16913 (BalanceConc!27880) List!47035)

(declare-fun charsOf!5282 (Token!14490) BalanceConc!27880)

(assert (=> b!4241492 (= res!1743992 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))) (_2!25377 (v!41019 lt!1506681))) longerInput!51))))

(declare-fun b!4241493 () Bool)

(declare-fun lt!1506682 () Int)

(declare-fun size!34364 (List!47035) Int)

(assert (=> b!4241493 (= e!2634071 (<= lt!1506682 (size!34364 (_2!25377 (v!41019 lt!1506680)))))))

(declare-fun b!4241494 () Bool)

(declare-fun res!1743999 () Bool)

(assert (=> b!4241494 (=> (not res!1743999) (not e!2634071))))

(assert (=> b!4241494 (= res!1743999 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))) (_2!25377 (v!41019 lt!1506680))) shorterInput!51))))

(declare-fun b!4241495 () Bool)

(declare-fun tp!1300242 () Bool)

(assert (=> b!4241495 (= e!2634063 (and tp_is_empty!22665 tp!1300242))))

(declare-fun b!4241496 () Bool)

(declare-fun res!1743991 () Bool)

(assert (=> b!4241496 (=> (not res!1743991) (not e!2634057))))

(declare-fun size!34365 (List!47037) Int)

(assert (=> b!4241496 (= res!1743991 (> (size!34365 addTokens!17) 0))))

(declare-fun tp!1300231 () Bool)

(declare-fun e!2634074 () Bool)

(declare-fun b!4241497 () Bool)

(declare-fun inv!21 (TokenValue!8162) Bool)

(assert (=> b!4241497 (= e!2634074 (and (inv!21 (value!246598 (h!52333 tokens!581))) e!2634059 tp!1300231))))

(declare-fun b!4241498 () Bool)

(declare-fun res!1743990 () Bool)

(assert (=> b!4241498 (=> (not res!1743990) (not e!2634057))))

(declare-fun suffix!1262 () List!47035)

(declare-datatypes ((tuple2!44488 0))(
  ( (tuple2!44489 (_1!25378 List!47037) (_2!25378 List!47035)) )
))
(declare-fun lexList!2033 (LexerInterface!7527 List!47036 List!47035) tuple2!44488)

(assert (=> b!4241498 (= res!1743990 (= (lexList!2033 thiss!21540 rules!2932 longerInput!51) (tuple2!44489 tokens!581 suffix!1262)))))

(declare-fun b!4241499 () Bool)

(declare-fun tp!1300240 () Bool)

(assert (=> b!4241499 (= e!2634070 (and (inv!61659 (h!52333 tokens!581)) e!2634074 tp!1300240))))

(declare-fun b!4241500 () Bool)

(declare-fun tp!1300233 () Bool)

(assert (=> b!4241500 (= e!2634061 (and (inv!21 (value!246598 (h!52333 addTokens!17))) e!2634055 tp!1300233))))

(declare-fun b!4241501 () Bool)

(assert (=> b!4241501 (= e!2634073 e!2634057)))

(declare-fun res!1744000 () Bool)

(assert (=> b!4241501 (=> (not res!1744000) (not e!2634057))))

(assert (=> b!4241501 (= res!1744000 (> lt!1506682 (size!34364 shorterInput!51)))))

(assert (=> b!4241501 (= lt!1506682 (size!34364 longerInput!51))))

(declare-fun b!4241502 () Bool)

(declare-fun tp!1300236 () Bool)

(assert (=> b!4241502 (= e!2634064 (and tp_is_empty!22665 tp!1300236))))

(assert (= (and start!405922 res!1743997) b!4241491))

(assert (= (and b!4241491 res!1743998) b!4241482))

(assert (= (and b!4241482 res!1743994) b!4241483))

(assert (= (and b!4241483 res!1743993) b!4241501))

(assert (= (and b!4241501 res!1744000) b!4241498))

(assert (= (and b!4241498 res!1743990) b!4241489))

(assert (= (and b!4241489 res!1743995) b!4241496))

(assert (= (and b!4241496 res!1743991) b!4241479))

(assert (= (and b!4241479 res!1743996) b!4241492))

(assert (= (and b!4241492 res!1743992) b!4241494))

(assert (= (and b!4241494 res!1743999) b!4241493))

(assert (= b!4241490 b!4241478))

(assert (= b!4241480 b!4241490))

(assert (= (and start!405922 ((_ is Cons!46912) rules!2932)) b!4241480))

(assert (= b!4241484 b!4241487))

(assert (= b!4241500 b!4241484))

(assert (= b!4241481 b!4241500))

(assert (= (and start!405922 ((_ is Cons!46913) addTokens!17)) b!4241481))

(assert (= (and start!405922 ((_ is Cons!46911) shorterInput!51)) b!4241502))

(assert (= (and start!405922 ((_ is Cons!46911) suffix!1262)) b!4241488))

(assert (= b!4241485 b!4241486))

(assert (= b!4241497 b!4241485))

(assert (= b!4241499 b!4241497))

(assert (= (and start!405922 ((_ is Cons!46913) tokens!581)) b!4241499))

(assert (= (and start!405922 ((_ is Cons!46911) longerInput!51)) b!4241495))

(declare-fun m!4826761 () Bool)

(assert (=> b!4241500 m!4826761))

(declare-fun m!4826763 () Bool)

(assert (=> b!4241501 m!4826763))

(declare-fun m!4826765 () Bool)

(assert (=> b!4241501 m!4826765))

(declare-fun m!4826767 () Bool)

(assert (=> b!4241497 m!4826767))

(declare-fun m!4826769 () Bool)

(assert (=> b!4241489 m!4826769))

(declare-fun m!4826771 () Bool)

(assert (=> b!4241481 m!4826771))

(declare-fun m!4826773 () Bool)

(assert (=> b!4241479 m!4826773))

(declare-fun m!4826775 () Bool)

(assert (=> b!4241479 m!4826775))

(declare-fun m!4826777 () Bool)

(assert (=> b!4241485 m!4826777))

(declare-fun m!4826779 () Bool)

(assert (=> b!4241485 m!4826779))

(declare-fun m!4826781 () Bool)

(assert (=> b!4241484 m!4826781))

(declare-fun m!4826783 () Bool)

(assert (=> b!4241484 m!4826783))

(declare-fun m!4826785 () Bool)

(assert (=> b!4241490 m!4826785))

(declare-fun m!4826787 () Bool)

(assert (=> b!4241490 m!4826787))

(declare-fun m!4826789 () Bool)

(assert (=> b!4241494 m!4826789))

(assert (=> b!4241494 m!4826789))

(declare-fun m!4826791 () Bool)

(assert (=> b!4241494 m!4826791))

(assert (=> b!4241494 m!4826791))

(declare-fun m!4826793 () Bool)

(assert (=> b!4241494 m!4826793))

(declare-fun m!4826795 () Bool)

(assert (=> b!4241492 m!4826795))

(assert (=> b!4241492 m!4826795))

(declare-fun m!4826797 () Bool)

(assert (=> b!4241492 m!4826797))

(assert (=> b!4241492 m!4826797))

(declare-fun m!4826799 () Bool)

(assert (=> b!4241492 m!4826799))

(declare-fun m!4826801 () Bool)

(assert (=> b!4241498 m!4826801))

(declare-fun m!4826803 () Bool)

(assert (=> b!4241482 m!4826803))

(declare-fun m!4826805 () Bool)

(assert (=> b!4241496 m!4826805))

(declare-fun m!4826807 () Bool)

(assert (=> b!4241483 m!4826807))

(declare-fun m!4826809 () Bool)

(assert (=> b!4241493 m!4826809))

(declare-fun m!4826811 () Bool)

(assert (=> b!4241491 m!4826811))

(declare-fun m!4826813 () Bool)

(assert (=> b!4241499 m!4826813))

(check-sat (not b_next!126351) (not b!4241480) (not b!4241491) (not b!4241492) (not b!4241479) b_and!335615 (not b!4241496) (not b!4241483) b_and!335619 (not b!4241484) (not b!4241495) (not b!4241482) (not b_next!126353) (not b!4241481) tp_is_empty!22665 (not b!4241485) (not b!4241497) (not b!4241501) b_and!335611 (not b_next!126361) (not b!4241500) (not b_next!126355) (not b!4241488) (not b!4241489) (not b!4241499) (not b!4241494) (not b!4241493) b_and!335609 (not b_next!126359) (not b!4241502) (not b!4241490) b_and!335617 (not b_next!126357) b_and!335613 (not b!4241498))
(check-sat (not b_next!126351) b_and!335615 (not b_next!126355) b_and!335609 (not b_next!126359) b_and!335619 b_and!335613 (not b_next!126353) b_and!335611 (not b_next!126361) b_and!335617 (not b_next!126357))
(get-model)

(declare-fun d!1247789 () Bool)

(assert (=> d!1247789 (= (inv!61656 (tag!8796 (rule!11060 (h!52333 addTokens!17)))) (= (mod (str.len (value!246597 (tag!8796 (rule!11060 (h!52333 addTokens!17))))) 2) 0))))

(assert (=> b!4241484 d!1247789))

(declare-fun d!1247791 () Bool)

(declare-fun res!1744015 () Bool)

(declare-fun e!2634090 () Bool)

(assert (=> d!1247791 (=> (not res!1744015) (not e!2634090))))

(declare-fun semiInverseModEq!3453 (Int Int) Bool)

(assert (=> d!1247791 (= res!1744015 (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))))))

(assert (=> d!1247791 (= (inv!61660 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) e!2634090)))

(declare-fun b!4241530 () Bool)

(declare-fun equivClasses!3352 (Int Int) Bool)

(assert (=> b!4241530 (= e!2634090 (equivClasses!3352 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))))))

(assert (= (and d!1247791 res!1744015) b!4241530))

(declare-fun m!4826833 () Bool)

(assert (=> d!1247791 m!4826833))

(declare-fun m!4826835 () Bool)

(assert (=> b!4241530 m!4826835))

(assert (=> b!4241484 d!1247791))

(declare-fun b!4241540 () Bool)

(declare-fun e!2634095 () List!47035)

(assert (=> b!4241540 (= e!2634095 (Cons!46911 (h!52331 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) (++!11941 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) (_2!25377 (v!41019 lt!1506680)))))))

(declare-fun b!4241539 () Bool)

(assert (=> b!4241539 (= e!2634095 (_2!25377 (v!41019 lt!1506680)))))

(declare-fun b!4241542 () Bool)

(declare-fun e!2634096 () Bool)

(declare-fun lt!1506692 () List!47035)

(assert (=> b!4241542 (= e!2634096 (or (not (= (_2!25377 (v!41019 lt!1506680)) Nil!46911)) (= lt!1506692 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))))))

(declare-fun b!4241541 () Bool)

(declare-fun res!1744021 () Bool)

(assert (=> b!4241541 (=> (not res!1744021) (not e!2634096))))

(assert (=> b!4241541 (= res!1744021 (= (size!34364 lt!1506692) (+ (size!34364 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) (size!34364 (_2!25377 (v!41019 lt!1506680))))))))

(declare-fun d!1247793 () Bool)

(assert (=> d!1247793 e!2634096))

(declare-fun res!1744020 () Bool)

(assert (=> d!1247793 (=> (not res!1744020) (not e!2634096))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7375 (List!47035) (InoxSet C!25872))

(assert (=> d!1247793 (= res!1744020 (= (content!7375 lt!1506692) ((_ map or) (content!7375 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) (content!7375 (_2!25377 (v!41019 lt!1506680))))))))

(assert (=> d!1247793 (= lt!1506692 e!2634095)))

(declare-fun c!720633 () Bool)

(assert (=> d!1247793 (= c!720633 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))

(assert (=> d!1247793 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))) (_2!25377 (v!41019 lt!1506680))) lt!1506692)))

(assert (= (and d!1247793 c!720633) b!4241539))

(assert (= (and d!1247793 (not c!720633)) b!4241540))

(assert (= (and d!1247793 res!1744020) b!4241541))

(assert (= (and b!4241541 res!1744021) b!4241542))

(declare-fun m!4826837 () Bool)

(assert (=> b!4241540 m!4826837))

(declare-fun m!4826839 () Bool)

(assert (=> b!4241541 m!4826839))

(assert (=> b!4241541 m!4826791))

(declare-fun m!4826841 () Bool)

(assert (=> b!4241541 m!4826841))

(assert (=> b!4241541 m!4826809))

(declare-fun m!4826843 () Bool)

(assert (=> d!1247793 m!4826843))

(assert (=> d!1247793 m!4826791))

(declare-fun m!4826845 () Bool)

(assert (=> d!1247793 m!4826845))

(declare-fun m!4826847 () Bool)

(assert (=> d!1247793 m!4826847))

(assert (=> b!4241494 d!1247793))

(declare-fun d!1247795 () Bool)

(declare-fun list!16915 (Conc!14143) List!47035)

(assert (=> d!1247795 (= (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))) (list!16915 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))

(declare-fun bs!598372 () Bool)

(assert (= bs!598372 d!1247795))

(declare-fun m!4826849 () Bool)

(assert (=> bs!598372 m!4826849))

(assert (=> b!4241494 d!1247795))

(declare-fun d!1247797 () Bool)

(declare-fun lt!1506695 () BalanceConc!27880)

(assert (=> d!1247797 (= (list!16913 lt!1506695) (originalCharacters!8276 (_1!25377 (v!41019 lt!1506680))))))

(declare-fun dynLambda!20114 (Int TokenValue!8162) BalanceConc!27880)

(assert (=> d!1247797 (= lt!1506695 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))))

(assert (=> d!1247797 (= (charsOf!5282 (_1!25377 (v!41019 lt!1506680))) lt!1506695)))

(declare-fun b_lambda!124893 () Bool)

(assert (=> (not b_lambda!124893) (not d!1247797)))

(declare-fun t!350916 () Bool)

(declare-fun tb!255065 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!350916) tb!255065))

(declare-fun b!4241551 () Bool)

(declare-fun e!2634101 () Bool)

(declare-fun tp!1300248 () Bool)

(declare-fun inv!61663 (Conc!14143) Bool)

(assert (=> b!4241551 (= e!2634101 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))) tp!1300248))))

(declare-fun result!311060 () Bool)

(declare-fun inv!61664 (BalanceConc!27880) Bool)

(assert (=> tb!255065 (= result!311060 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))) e!2634101))))

(assert (= tb!255065 b!4241551))

(declare-fun m!4826851 () Bool)

(assert (=> b!4241551 m!4826851))

(declare-fun m!4826853 () Bool)

(assert (=> tb!255065 m!4826853))

(assert (=> d!1247797 t!350916))

(declare-fun b_and!335627 () Bool)

(assert (= b_and!335611 (and (=> t!350916 result!311060) b_and!335627)))

(declare-fun tb!255067 () Bool)

(declare-fun t!350918 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!350918) tb!255067))

(declare-fun result!311064 () Bool)

(assert (= result!311064 result!311060))

(assert (=> d!1247797 t!350918))

(declare-fun b_and!335629 () Bool)

(assert (= b_and!335615 (and (=> t!350918 result!311064) b_and!335629)))

(declare-fun tb!255069 () Bool)

(declare-fun t!350920 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!350920) tb!255069))

(declare-fun result!311066 () Bool)

(assert (= result!311066 result!311060))

(assert (=> d!1247797 t!350920))

(declare-fun b_and!335631 () Bool)

(assert (= b_and!335619 (and (=> t!350920 result!311066) b_and!335631)))

(declare-fun m!4826855 () Bool)

(assert (=> d!1247797 m!4826855))

(declare-fun m!4826857 () Bool)

(assert (=> d!1247797 m!4826857))

(assert (=> b!4241494 d!1247797))

(declare-fun d!1247799 () Bool)

(assert (=> d!1247799 (= (isEmpty!27733 longerInput!51) ((_ is Nil!46911) longerInput!51))))

(assert (=> b!4241483 d!1247799))

(declare-fun d!1247801 () Bool)

(declare-fun lt!1506708 () Int)

(assert (=> d!1247801 (>= lt!1506708 0)))

(declare-fun e!2634108 () Int)

(assert (=> d!1247801 (= lt!1506708 e!2634108)))

(declare-fun c!720638 () Bool)

(assert (=> d!1247801 (= c!720638 ((_ is Nil!46911) (_2!25377 (v!41019 lt!1506680))))))

(assert (=> d!1247801 (= (size!34364 (_2!25377 (v!41019 lt!1506680))) lt!1506708)))

(declare-fun b!4241570 () Bool)

(assert (=> b!4241570 (= e!2634108 0)))

(declare-fun b!4241571 () Bool)

(assert (=> b!4241571 (= e!2634108 (+ 1 (size!34364 (t!350906 (_2!25377 (v!41019 lt!1506680))))))))

(assert (= (and d!1247801 c!720638) b!4241570))

(assert (= (and d!1247801 (not c!720638)) b!4241571))

(declare-fun m!4826859 () Bool)

(assert (=> b!4241571 m!4826859))

(assert (=> b!4241493 d!1247801))

(declare-fun d!1247803 () Bool)

(declare-fun res!1744052 () Bool)

(declare-fun e!2634117 () Bool)

(assert (=> d!1247803 (=> (not res!1744052) (not e!2634117))))

(declare-fun rulesValid!3076 (LexerInterface!7527 List!47036) Bool)

(assert (=> d!1247803 (= res!1744052 (rulesValid!3076 thiss!21540 rules!2932))))

(assert (=> d!1247803 (= (rulesInvariant!6638 thiss!21540 rules!2932) e!2634117)))

(declare-fun b!4241592 () Bool)

(declare-datatypes ((List!47039 0))(
  ( (Nil!46915) (Cons!46915 (h!52335 String!54740) (t!351006 List!47039)) )
))
(declare-fun noDuplicateTag!3237 (LexerInterface!7527 List!47036 List!47039) Bool)

(assert (=> b!4241592 (= e!2634117 (noDuplicateTag!3237 thiss!21540 rules!2932 Nil!46915))))

(assert (= (and d!1247803 res!1744052) b!4241592))

(declare-fun m!4826923 () Bool)

(assert (=> d!1247803 m!4826923))

(declare-fun m!4826925 () Bool)

(assert (=> b!4241592 m!4826925))

(assert (=> b!4241482 d!1247803))

(declare-fun b!4241618 () Bool)

(declare-fun e!2634133 () Bool)

(declare-fun inv!15 (TokenValue!8162) Bool)

(assert (=> b!4241618 (= e!2634133 (inv!15 (value!246598 (h!52333 tokens!581))))))

(declare-fun b!4241619 () Bool)

(declare-fun res!1744064 () Bool)

(assert (=> b!4241619 (=> res!1744064 e!2634133)))

(assert (=> b!4241619 (= res!1744064 (not ((_ is IntegerValue!24488) (value!246598 (h!52333 tokens!581)))))))

(declare-fun e!2634134 () Bool)

(assert (=> b!4241619 (= e!2634134 e!2634133)))

(declare-fun b!4241620 () Bool)

(declare-fun e!2634135 () Bool)

(assert (=> b!4241620 (= e!2634135 e!2634134)))

(declare-fun c!720648 () Bool)

(assert (=> b!4241620 (= c!720648 ((_ is IntegerValue!24487) (value!246598 (h!52333 tokens!581))))))

(declare-fun b!4241621 () Bool)

(declare-fun inv!17 (TokenValue!8162) Bool)

(assert (=> b!4241621 (= e!2634134 (inv!17 (value!246598 (h!52333 tokens!581))))))

(declare-fun b!4241622 () Bool)

(declare-fun inv!16 (TokenValue!8162) Bool)

(assert (=> b!4241622 (= e!2634135 (inv!16 (value!246598 (h!52333 tokens!581))))))

(declare-fun d!1247811 () Bool)

(declare-fun c!720649 () Bool)

(assert (=> d!1247811 (= c!720649 ((_ is IntegerValue!24486) (value!246598 (h!52333 tokens!581))))))

(assert (=> d!1247811 (= (inv!21 (value!246598 (h!52333 tokens!581))) e!2634135)))

(assert (= (and d!1247811 c!720649) b!4241622))

(assert (= (and d!1247811 (not c!720649)) b!4241620))

(assert (= (and b!4241620 c!720648) b!4241621))

(assert (= (and b!4241620 (not c!720648)) b!4241619))

(assert (= (and b!4241619 (not res!1744064)) b!4241618))

(declare-fun m!4826947 () Bool)

(assert (=> b!4241618 m!4826947))

(declare-fun m!4826949 () Bool)

(assert (=> b!4241621 m!4826949))

(declare-fun m!4826951 () Bool)

(assert (=> b!4241622 m!4826951))

(assert (=> b!4241497 d!1247811))

(declare-fun d!1247819 () Bool)

(declare-fun lt!1506727 () Int)

(assert (=> d!1247819 (>= lt!1506727 0)))

(declare-fun e!2634140 () Int)

(assert (=> d!1247819 (= lt!1506727 e!2634140)))

(declare-fun c!720652 () Bool)

(assert (=> d!1247819 (= c!720652 ((_ is Nil!46913) addTokens!17))))

(assert (=> d!1247819 (= (size!34365 addTokens!17) lt!1506727)))

(declare-fun b!4241629 () Bool)

(assert (=> b!4241629 (= e!2634140 0)))

(declare-fun b!4241630 () Bool)

(assert (=> b!4241630 (= e!2634140 (+ 1 (size!34365 (t!350908 addTokens!17))))))

(assert (= (and d!1247819 c!720652) b!4241629))

(assert (= (and d!1247819 (not c!720652)) b!4241630))

(declare-fun m!4826965 () Bool)

(assert (=> b!4241630 m!4826965))

(assert (=> b!4241496 d!1247819))

(declare-fun d!1247831 () Bool)

(assert (=> d!1247831 (= (inv!61656 (tag!8796 (rule!11060 (h!52333 tokens!581)))) (= (mod (str.len (value!246597 (tag!8796 (rule!11060 (h!52333 tokens!581))))) 2) 0))))

(assert (=> b!4241485 d!1247831))

(declare-fun d!1247833 () Bool)

(declare-fun res!1744068 () Bool)

(declare-fun e!2634147 () Bool)

(assert (=> d!1247833 (=> (not res!1744068) (not e!2634147))))

(assert (=> d!1247833 (= res!1744068 (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581))))))))

(assert (=> d!1247833 (= (inv!61660 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) e!2634147)))

(declare-fun b!4241641 () Bool)

(assert (=> b!4241641 (= e!2634147 (equivClasses!3352 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581))))))))

(assert (= (and d!1247833 res!1744068) b!4241641))

(declare-fun m!4826967 () Bool)

(assert (=> d!1247833 m!4826967))

(declare-fun m!4826969 () Bool)

(assert (=> b!4241641 m!4826969))

(assert (=> b!4241485 d!1247833))

(declare-fun b!4241642 () Bool)

(declare-fun e!2634148 () Bool)

(assert (=> b!4241642 (= e!2634148 (inv!15 (value!246598 (h!52333 addTokens!17))))))

(declare-fun b!4241643 () Bool)

(declare-fun res!1744069 () Bool)

(assert (=> b!4241643 (=> res!1744069 e!2634148)))

(assert (=> b!4241643 (= res!1744069 (not ((_ is IntegerValue!24488) (value!246598 (h!52333 addTokens!17)))))))

(declare-fun e!2634149 () Bool)

(assert (=> b!4241643 (= e!2634149 e!2634148)))

(declare-fun b!4241644 () Bool)

(declare-fun e!2634150 () Bool)

(assert (=> b!4241644 (= e!2634150 e!2634149)))

(declare-fun c!720657 () Bool)

(assert (=> b!4241644 (= c!720657 ((_ is IntegerValue!24487) (value!246598 (h!52333 addTokens!17))))))

(declare-fun b!4241645 () Bool)

(assert (=> b!4241645 (= e!2634149 (inv!17 (value!246598 (h!52333 addTokens!17))))))

(declare-fun b!4241646 () Bool)

(assert (=> b!4241646 (= e!2634150 (inv!16 (value!246598 (h!52333 addTokens!17))))))

(declare-fun d!1247835 () Bool)

(declare-fun c!720658 () Bool)

(assert (=> d!1247835 (= c!720658 ((_ is IntegerValue!24486) (value!246598 (h!52333 addTokens!17))))))

(assert (=> d!1247835 (= (inv!21 (value!246598 (h!52333 addTokens!17))) e!2634150)))

(assert (= (and d!1247835 c!720658) b!4241646))

(assert (= (and d!1247835 (not c!720658)) b!4241644))

(assert (= (and b!4241644 c!720657) b!4241645))

(assert (= (and b!4241644 (not c!720657)) b!4241643))

(assert (= (and b!4241643 (not res!1744069)) b!4241642))

(declare-fun m!4826971 () Bool)

(assert (=> b!4241642 m!4826971))

(declare-fun m!4826973 () Bool)

(assert (=> b!4241645 m!4826973))

(declare-fun m!4826975 () Bool)

(assert (=> b!4241646 m!4826975))

(assert (=> b!4241500 d!1247835))

(declare-fun d!1247837 () Bool)

(assert (=> d!1247837 (= (isEmpty!27734 addTokens!17) ((_ is Nil!46913) addTokens!17))))

(assert (=> b!4241489 d!1247837))

(declare-fun d!1247845 () Bool)

(declare-fun res!1744084 () Bool)

(declare-fun e!2634169 () Bool)

(assert (=> d!1247845 (=> (not res!1744084) (not e!2634169))))

(assert (=> d!1247845 (= res!1744084 (not (isEmpty!27733 (originalCharacters!8276 (h!52333 tokens!581)))))))

(assert (=> d!1247845 (= (inv!61659 (h!52333 tokens!581)) e!2634169)))

(declare-fun b!4241675 () Bool)

(declare-fun res!1744085 () Bool)

(assert (=> b!4241675 (=> (not res!1744085) (not e!2634169))))

(assert (=> b!4241675 (= res!1744085 (= (originalCharacters!8276 (h!52333 tokens!581)) (list!16913 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))))))

(declare-fun b!4241676 () Bool)

(assert (=> b!4241676 (= e!2634169 (= (size!34363 (h!52333 tokens!581)) (size!34364 (originalCharacters!8276 (h!52333 tokens!581)))))))

(assert (= (and d!1247845 res!1744084) b!4241675))

(assert (= (and b!4241675 res!1744085) b!4241676))

(declare-fun b_lambda!124901 () Bool)

(assert (=> (not b_lambda!124901) (not b!4241675)))

(declare-fun tb!255089 () Bool)

(declare-fun t!350940 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!350940) tb!255089))

(declare-fun b!4241677 () Bool)

(declare-fun e!2634170 () Bool)

(declare-fun tp!1300252 () Bool)

(assert (=> b!4241677 (= e!2634170 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))) tp!1300252))))

(declare-fun result!311086 () Bool)

(assert (=> tb!255089 (= result!311086 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))) e!2634170))))

(assert (= tb!255089 b!4241677))

(declare-fun m!4827033 () Bool)

(assert (=> b!4241677 m!4827033))

(declare-fun m!4827035 () Bool)

(assert (=> tb!255089 m!4827035))

(assert (=> b!4241675 t!350940))

(declare-fun b_and!335651 () Bool)

(assert (= b_and!335627 (and (=> t!350940 result!311086) b_and!335651)))

(declare-fun t!350942 () Bool)

(declare-fun tb!255091 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!350942) tb!255091))

(declare-fun result!311088 () Bool)

(assert (= result!311088 result!311086))

(assert (=> b!4241675 t!350942))

(declare-fun b_and!335653 () Bool)

(assert (= b_and!335629 (and (=> t!350942 result!311088) b_and!335653)))

(declare-fun tb!255093 () Bool)

(declare-fun t!350944 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!350944) tb!255093))

(declare-fun result!311090 () Bool)

(assert (= result!311090 result!311086))

(assert (=> b!4241675 t!350944))

(declare-fun b_and!335655 () Bool)

(assert (= b_and!335631 (and (=> t!350944 result!311090) b_and!335655)))

(declare-fun m!4827037 () Bool)

(assert (=> d!1247845 m!4827037))

(declare-fun m!4827039 () Bool)

(assert (=> b!4241675 m!4827039))

(assert (=> b!4241675 m!4827039))

(declare-fun m!4827041 () Bool)

(assert (=> b!4241675 m!4827041))

(declare-fun m!4827043 () Bool)

(assert (=> b!4241676 m!4827043))

(assert (=> b!4241499 d!1247845))

(declare-fun b!4241764 () Bool)

(declare-fun e!2634234 () tuple2!44488)

(declare-fun lt!1506746 () Option!10068)

(declare-fun lt!1506747 () tuple2!44488)

(assert (=> b!4241764 (= e!2634234 (tuple2!44489 (Cons!46913 (_1!25377 (v!41019 lt!1506746)) (_1!25378 lt!1506747)) (_2!25378 lt!1506747)))))

(assert (=> b!4241764 (= lt!1506747 (lexList!2033 thiss!21540 rules!2932 (_2!25377 (v!41019 lt!1506746))))))

(declare-fun b!4241765 () Bool)

(declare-fun e!2634236 () Bool)

(declare-fun e!2634235 () Bool)

(assert (=> b!4241765 (= e!2634236 e!2634235)))

(declare-fun res!1744091 () Bool)

(declare-fun lt!1506748 () tuple2!44488)

(assert (=> b!4241765 (= res!1744091 (< (size!34364 (_2!25378 lt!1506748)) (size!34364 longerInput!51)))))

(assert (=> b!4241765 (=> (not res!1744091) (not e!2634235))))

(declare-fun b!4241766 () Bool)

(assert (=> b!4241766 (= e!2634235 (not (isEmpty!27734 (_1!25378 lt!1506748))))))

(declare-fun b!4241767 () Bool)

(assert (=> b!4241767 (= e!2634236 (= (_2!25378 lt!1506748) longerInput!51))))

(declare-fun b!4241763 () Bool)

(assert (=> b!4241763 (= e!2634234 (tuple2!44489 Nil!46913 longerInput!51))))

(declare-fun d!1247861 () Bool)

(assert (=> d!1247861 e!2634236))

(declare-fun c!720676 () Bool)

(assert (=> d!1247861 (= c!720676 (> (size!34365 (_1!25378 lt!1506748)) 0))))

(assert (=> d!1247861 (= lt!1506748 e!2634234)))

(declare-fun c!720675 () Bool)

(assert (=> d!1247861 (= c!720675 ((_ is Some!10067) lt!1506746))))

(assert (=> d!1247861 (= lt!1506746 (maxPrefix!4485 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1247861 (= (lexList!2033 thiss!21540 rules!2932 longerInput!51) lt!1506748)))

(assert (= (and d!1247861 c!720675) b!4241764))

(assert (= (and d!1247861 (not c!720675)) b!4241763))

(assert (= (and d!1247861 c!720676) b!4241765))

(assert (= (and d!1247861 (not c!720676)) b!4241767))

(assert (= (and b!4241765 res!1744091) b!4241766))

(declare-fun m!4827073 () Bool)

(assert (=> b!4241764 m!4827073))

(declare-fun m!4827075 () Bool)

(assert (=> b!4241765 m!4827075))

(assert (=> b!4241765 m!4826765))

(declare-fun m!4827077 () Bool)

(assert (=> b!4241766 m!4827077))

(declare-fun m!4827079 () Bool)

(assert (=> d!1247861 m!4827079))

(assert (=> d!1247861 m!4826775))

(assert (=> b!4241498 d!1247861))

(declare-fun b!4241769 () Bool)

(declare-fun e!2634237 () List!47035)

(assert (=> b!4241769 (= e!2634237 (Cons!46911 (h!52331 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) (++!11941 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) (_2!25377 (v!41019 lt!1506681)))))))

(declare-fun b!4241768 () Bool)

(assert (=> b!4241768 (= e!2634237 (_2!25377 (v!41019 lt!1506681)))))

(declare-fun b!4241771 () Bool)

(declare-fun e!2634238 () Bool)

(declare-fun lt!1506749 () List!47035)

(assert (=> b!4241771 (= e!2634238 (or (not (= (_2!25377 (v!41019 lt!1506681)) Nil!46911)) (= lt!1506749 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))))))

(declare-fun b!4241770 () Bool)

(declare-fun res!1744093 () Bool)

(assert (=> b!4241770 (=> (not res!1744093) (not e!2634238))))

(assert (=> b!4241770 (= res!1744093 (= (size!34364 lt!1506749) (+ (size!34364 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) (size!34364 (_2!25377 (v!41019 lt!1506681))))))))

(declare-fun d!1247863 () Bool)

(assert (=> d!1247863 e!2634238))

(declare-fun res!1744092 () Bool)

(assert (=> d!1247863 (=> (not res!1744092) (not e!2634238))))

(assert (=> d!1247863 (= res!1744092 (= (content!7375 lt!1506749) ((_ map or) (content!7375 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) (content!7375 (_2!25377 (v!41019 lt!1506681))))))))

(assert (=> d!1247863 (= lt!1506749 e!2634237)))

(declare-fun c!720677 () Bool)

(assert (=> d!1247863 (= c!720677 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))

(assert (=> d!1247863 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))) (_2!25377 (v!41019 lt!1506681))) lt!1506749)))

(assert (= (and d!1247863 c!720677) b!4241768))

(assert (= (and d!1247863 (not c!720677)) b!4241769))

(assert (= (and d!1247863 res!1744092) b!4241770))

(assert (= (and b!4241770 res!1744093) b!4241771))

(declare-fun m!4827081 () Bool)

(assert (=> b!4241769 m!4827081))

(declare-fun m!4827083 () Bool)

(assert (=> b!4241770 m!4827083))

(assert (=> b!4241770 m!4826797))

(declare-fun m!4827085 () Bool)

(assert (=> b!4241770 m!4827085))

(declare-fun m!4827087 () Bool)

(assert (=> b!4241770 m!4827087))

(declare-fun m!4827089 () Bool)

(assert (=> d!1247863 m!4827089))

(assert (=> d!1247863 m!4826797))

(declare-fun m!4827091 () Bool)

(assert (=> d!1247863 m!4827091))

(declare-fun m!4827093 () Bool)

(assert (=> d!1247863 m!4827093))

(assert (=> b!4241492 d!1247863))

(declare-fun d!1247865 () Bool)

(assert (=> d!1247865 (= (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))) (list!16915 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))

(declare-fun bs!598375 () Bool)

(assert (= bs!598375 d!1247865))

(declare-fun m!4827095 () Bool)

(assert (=> bs!598375 m!4827095))

(assert (=> b!4241492 d!1247865))

(declare-fun d!1247867 () Bool)

(declare-fun lt!1506750 () BalanceConc!27880)

(assert (=> d!1247867 (= (list!16913 lt!1506750) (originalCharacters!8276 (_1!25377 (v!41019 lt!1506681))))))

(assert (=> d!1247867 (= lt!1506750 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))))

(assert (=> d!1247867 (= (charsOf!5282 (_1!25377 (v!41019 lt!1506681))) lt!1506750)))

(declare-fun b_lambda!124907 () Bool)

(assert (=> (not b_lambda!124907) (not d!1247867)))

(declare-fun tb!255119 () Bool)

(declare-fun t!350970 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!350970) tb!255119))

(declare-fun b!4241772 () Bool)

(declare-fun e!2634239 () Bool)

(declare-fun tp!1300317 () Bool)

(assert (=> b!4241772 (= e!2634239 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))) tp!1300317))))

(declare-fun result!311124 () Bool)

(assert (=> tb!255119 (= result!311124 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))) e!2634239))))

(assert (= tb!255119 b!4241772))

(declare-fun m!4827097 () Bool)

(assert (=> b!4241772 m!4827097))

(declare-fun m!4827099 () Bool)

(assert (=> tb!255119 m!4827099))

(assert (=> d!1247867 t!350970))

(declare-fun b_and!335669 () Bool)

(assert (= b_and!335651 (and (=> t!350970 result!311124) b_and!335669)))

(declare-fun tb!255121 () Bool)

(declare-fun t!350972 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!350972) tb!255121))

(declare-fun result!311126 () Bool)

(assert (= result!311126 result!311124))

(assert (=> d!1247867 t!350972))

(declare-fun b_and!335671 () Bool)

(assert (= b_and!335653 (and (=> t!350972 result!311126) b_and!335671)))

(declare-fun tb!255123 () Bool)

(declare-fun t!350974 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!350974) tb!255123))

(declare-fun result!311128 () Bool)

(assert (= result!311128 result!311124))

(assert (=> d!1247867 t!350974))

(declare-fun b_and!335673 () Bool)

(assert (= b_and!335655 (and (=> t!350974 result!311128) b_and!335673)))

(declare-fun m!4827101 () Bool)

(assert (=> d!1247867 m!4827101))

(declare-fun m!4827103 () Bool)

(assert (=> d!1247867 m!4827103))

(assert (=> b!4241492 d!1247867))

(declare-fun d!1247869 () Bool)

(declare-fun res!1744094 () Bool)

(declare-fun e!2634240 () Bool)

(assert (=> d!1247869 (=> (not res!1744094) (not e!2634240))))

(assert (=> d!1247869 (= res!1744094 (not (isEmpty!27733 (originalCharacters!8276 (h!52333 addTokens!17)))))))

(assert (=> d!1247869 (= (inv!61659 (h!52333 addTokens!17)) e!2634240)))

(declare-fun b!4241773 () Bool)

(declare-fun res!1744095 () Bool)

(assert (=> b!4241773 (=> (not res!1744095) (not e!2634240))))

(assert (=> b!4241773 (= res!1744095 (= (originalCharacters!8276 (h!52333 addTokens!17)) (list!16913 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))))))

(declare-fun b!4241774 () Bool)

(assert (=> b!4241774 (= e!2634240 (= (size!34363 (h!52333 addTokens!17)) (size!34364 (originalCharacters!8276 (h!52333 addTokens!17)))))))

(assert (= (and d!1247869 res!1744094) b!4241773))

(assert (= (and b!4241773 res!1744095) b!4241774))

(declare-fun b_lambda!124909 () Bool)

(assert (=> (not b_lambda!124909) (not b!4241773)))

(declare-fun t!350976 () Bool)

(declare-fun tb!255125 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!350976) tb!255125))

(declare-fun b!4241775 () Bool)

(declare-fun e!2634241 () Bool)

(declare-fun tp!1300318 () Bool)

(assert (=> b!4241775 (= e!2634241 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))) tp!1300318))))

(declare-fun result!311130 () Bool)

(assert (=> tb!255125 (= result!311130 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))) e!2634241))))

(assert (= tb!255125 b!4241775))

(declare-fun m!4827105 () Bool)

(assert (=> b!4241775 m!4827105))

(declare-fun m!4827107 () Bool)

(assert (=> tb!255125 m!4827107))

(assert (=> b!4241773 t!350976))

(declare-fun b_and!335675 () Bool)

(assert (= b_and!335669 (and (=> t!350976 result!311130) b_and!335675)))

(declare-fun tb!255127 () Bool)

(declare-fun t!350978 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!350978) tb!255127))

(declare-fun result!311132 () Bool)

(assert (= result!311132 result!311130))

(assert (=> b!4241773 t!350978))

(declare-fun b_and!335677 () Bool)

(assert (= b_and!335671 (and (=> t!350978 result!311132) b_and!335677)))

(declare-fun t!350980 () Bool)

(declare-fun tb!255129 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!350980) tb!255129))

(declare-fun result!311134 () Bool)

(assert (= result!311134 result!311130))

(assert (=> b!4241773 t!350980))

(declare-fun b_and!335679 () Bool)

(assert (= b_and!335673 (and (=> t!350980 result!311134) b_and!335679)))

(declare-fun m!4827109 () Bool)

(assert (=> d!1247869 m!4827109))

(declare-fun m!4827111 () Bool)

(assert (=> b!4241773 m!4827111))

(assert (=> b!4241773 m!4827111))

(declare-fun m!4827113 () Bool)

(assert (=> b!4241773 m!4827113))

(declare-fun m!4827115 () Bool)

(assert (=> b!4241774 m!4827115))

(assert (=> b!4241481 d!1247869))

(declare-fun d!1247871 () Bool)

(assert (=> d!1247871 (= (isEmpty!27735 rules!2932) ((_ is Nil!46912) rules!2932))))

(assert (=> b!4241491 d!1247871))

(declare-fun d!1247873 () Bool)

(declare-fun lt!1506751 () Int)

(assert (=> d!1247873 (>= lt!1506751 0)))

(declare-fun e!2634242 () Int)

(assert (=> d!1247873 (= lt!1506751 e!2634242)))

(declare-fun c!720678 () Bool)

(assert (=> d!1247873 (= c!720678 ((_ is Nil!46911) shorterInput!51))))

(assert (=> d!1247873 (= (size!34364 shorterInput!51) lt!1506751)))

(declare-fun b!4241776 () Bool)

(assert (=> b!4241776 (= e!2634242 0)))

(declare-fun b!4241777 () Bool)

(assert (=> b!4241777 (= e!2634242 (+ 1 (size!34364 (t!350906 shorterInput!51))))))

(assert (= (and d!1247873 c!720678) b!4241776))

(assert (= (and d!1247873 (not c!720678)) b!4241777))

(declare-fun m!4827117 () Bool)

(assert (=> b!4241777 m!4827117))

(assert (=> b!4241501 d!1247873))

(declare-fun d!1247875 () Bool)

(declare-fun lt!1506752 () Int)

(assert (=> d!1247875 (>= lt!1506752 0)))

(declare-fun e!2634243 () Int)

(assert (=> d!1247875 (= lt!1506752 e!2634243)))

(declare-fun c!720679 () Bool)

(assert (=> d!1247875 (= c!720679 ((_ is Nil!46911) longerInput!51))))

(assert (=> d!1247875 (= (size!34364 longerInput!51) lt!1506752)))

(declare-fun b!4241778 () Bool)

(assert (=> b!4241778 (= e!2634243 0)))

(declare-fun b!4241779 () Bool)

(assert (=> b!4241779 (= e!2634243 (+ 1 (size!34364 (t!350906 longerInput!51))))))

(assert (= (and d!1247875 c!720679) b!4241778))

(assert (= (and d!1247875 (not c!720679)) b!4241779))

(declare-fun m!4827119 () Bool)

(assert (=> b!4241779 m!4827119))

(assert (=> b!4241501 d!1247875))

(declare-fun d!1247877 () Bool)

(assert (=> d!1247877 (= (inv!61656 (tag!8796 (h!52332 rules!2932))) (= (mod (str.len (value!246597 (tag!8796 (h!52332 rules!2932)))) 2) 0))))

(assert (=> b!4241490 d!1247877))

(declare-fun d!1247879 () Bool)

(declare-fun res!1744096 () Bool)

(declare-fun e!2634244 () Bool)

(assert (=> d!1247879 (=> (not res!1744096) (not e!2634244))))

(assert (=> d!1247879 (= res!1744096 (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (h!52332 rules!2932)))))))

(assert (=> d!1247879 (= (inv!61660 (transformation!7932 (h!52332 rules!2932))) e!2634244)))

(declare-fun b!4241780 () Bool)

(assert (=> b!4241780 (= e!2634244 (equivClasses!3352 (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (h!52332 rules!2932)))))))

(assert (= (and d!1247879 res!1744096) b!4241780))

(declare-fun m!4827121 () Bool)

(assert (=> d!1247879 m!4827121))

(declare-fun m!4827123 () Bool)

(assert (=> b!4241780 m!4827123))

(assert (=> b!4241490 d!1247879))

(declare-fun b!4241799 () Bool)

(declare-fun e!2634251 () Option!10068)

(declare-fun call!293845 () Option!10068)

(assert (=> b!4241799 (= e!2634251 call!293845)))

(declare-fun b!4241800 () Bool)

(declare-fun e!2634253 () Bool)

(declare-fun e!2634252 () Bool)

(assert (=> b!4241800 (= e!2634253 e!2634252)))

(declare-fun res!1744113 () Bool)

(assert (=> b!4241800 (=> (not res!1744113) (not e!2634252))))

(declare-fun lt!1506764 () Option!10068)

(declare-fun isDefined!7440 (Option!10068) Bool)

(assert (=> b!4241800 (= res!1744113 (isDefined!7440 lt!1506764))))

(declare-fun b!4241801 () Bool)

(declare-fun contains!9729 (List!47036 Rule!15664) Bool)

(declare-fun get!15248 (Option!10068) tuple2!44486)

(assert (=> b!4241801 (= e!2634252 (contains!9729 rules!2932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))))

(declare-fun bm!293840 () Bool)

(declare-fun maxPrefixOneRule!3450 (LexerInterface!7527 Rule!15664 List!47035) Option!10068)

(assert (=> bm!293840 (= call!293845 (maxPrefixOneRule!3450 thiss!21540 (h!52332 rules!2932) shorterInput!51))))

(declare-fun b!4241802 () Bool)

(declare-fun res!1744116 () Bool)

(assert (=> b!4241802 (=> (not res!1744116) (not e!2634252))))

(assert (=> b!4241802 (= res!1744116 (= (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))) (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764)))))))

(declare-fun b!4241803 () Bool)

(declare-fun res!1744112 () Bool)

(assert (=> b!4241803 (=> (not res!1744112) (not e!2634252))))

(declare-fun apply!10752 (TokenValueInjection!15752 BalanceConc!27880) TokenValue!8162)

(declare-fun seqFromList!5812 (List!47035) BalanceConc!27880)

(assert (=> b!4241803 (= res!1744112 (= (value!246598 (_1!25377 (get!15248 lt!1506764))) (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764)))))))))

(declare-fun b!4241804 () Bool)

(declare-fun res!1744114 () Bool)

(assert (=> b!4241804 (=> (not res!1744114) (not e!2634252))))

(assert (=> b!4241804 (= res!1744114 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))) (_2!25377 (get!15248 lt!1506764))) shorterInput!51))))

(declare-fun b!4241805 () Bool)

(declare-fun lt!1506765 () Option!10068)

(declare-fun lt!1506767 () Option!10068)

(assert (=> b!4241805 (= e!2634251 (ite (and ((_ is None!10067) lt!1506765) ((_ is None!10067) lt!1506767)) None!10067 (ite ((_ is None!10067) lt!1506767) lt!1506765 (ite ((_ is None!10067) lt!1506765) lt!1506767 (ite (>= (size!34363 (_1!25377 (v!41019 lt!1506765))) (size!34363 (_1!25377 (v!41019 lt!1506767)))) lt!1506765 lt!1506767)))))))

(assert (=> b!4241805 (= lt!1506765 call!293845)))

(assert (=> b!4241805 (= lt!1506767 (maxPrefix!4485 thiss!21540 (t!350907 rules!2932) shorterInput!51))))

(declare-fun b!4241806 () Bool)

(declare-fun res!1744117 () Bool)

(assert (=> b!4241806 (=> (not res!1744117) (not e!2634252))))

(declare-fun matchR!6447 (Regex!12837 List!47035) Bool)

(assert (=> b!4241806 (= res!1744117 (matchR!6447 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))))))

(declare-fun b!4241807 () Bool)

(declare-fun res!1744111 () Bool)

(assert (=> b!4241807 (=> (not res!1744111) (not e!2634252))))

(assert (=> b!4241807 (= res!1744111 (< (size!34364 (_2!25377 (get!15248 lt!1506764))) (size!34364 shorterInput!51)))))

(declare-fun d!1247881 () Bool)

(assert (=> d!1247881 e!2634253))

(declare-fun res!1744115 () Bool)

(assert (=> d!1247881 (=> res!1744115 e!2634253)))

(declare-fun isEmpty!27737 (Option!10068) Bool)

(assert (=> d!1247881 (= res!1744115 (isEmpty!27737 lt!1506764))))

(assert (=> d!1247881 (= lt!1506764 e!2634251)))

(declare-fun c!720682 () Bool)

(assert (=> d!1247881 (= c!720682 (and ((_ is Cons!46912) rules!2932) ((_ is Nil!46912) (t!350907 rules!2932))))))

(declare-datatypes ((Unit!65979 0))(
  ( (Unit!65980) )
))
(declare-fun lt!1506766 () Unit!65979)

(declare-fun lt!1506763 () Unit!65979)

(assert (=> d!1247881 (= lt!1506766 lt!1506763)))

(declare-fun isPrefix!4725 (List!47035 List!47035) Bool)

(assert (=> d!1247881 (isPrefix!4725 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3122 (List!47035 List!47035) Unit!65979)

(assert (=> d!1247881 (= lt!1506763 (lemmaIsPrefixRefl!3122 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2974 (LexerInterface!7527 List!47036) Bool)

(assert (=> d!1247881 (rulesValidInductive!2974 thiss!21540 rules!2932)))

(assert (=> d!1247881 (= (maxPrefix!4485 thiss!21540 rules!2932 shorterInput!51) lt!1506764)))

(assert (= (and d!1247881 c!720682) b!4241799))

(assert (= (and d!1247881 (not c!720682)) b!4241805))

(assert (= (or b!4241799 b!4241805) bm!293840))

(assert (= (and d!1247881 (not res!1744115)) b!4241800))

(assert (= (and b!4241800 res!1744113) b!4241802))

(assert (= (and b!4241802 res!1744116) b!4241807))

(assert (= (and b!4241807 res!1744111) b!4241804))

(assert (= (and b!4241804 res!1744114) b!4241803))

(assert (= (and b!4241803 res!1744112) b!4241806))

(assert (= (and b!4241806 res!1744117) b!4241801))

(declare-fun m!4827125 () Bool)

(assert (=> b!4241806 m!4827125))

(declare-fun m!4827127 () Bool)

(assert (=> b!4241806 m!4827127))

(assert (=> b!4241806 m!4827127))

(declare-fun m!4827129 () Bool)

(assert (=> b!4241806 m!4827129))

(assert (=> b!4241806 m!4827129))

(declare-fun m!4827131 () Bool)

(assert (=> b!4241806 m!4827131))

(assert (=> b!4241804 m!4827125))

(assert (=> b!4241804 m!4827127))

(assert (=> b!4241804 m!4827127))

(assert (=> b!4241804 m!4827129))

(assert (=> b!4241804 m!4827129))

(declare-fun m!4827133 () Bool)

(assert (=> b!4241804 m!4827133))

(declare-fun m!4827135 () Bool)

(assert (=> b!4241800 m!4827135))

(declare-fun m!4827137 () Bool)

(assert (=> d!1247881 m!4827137))

(declare-fun m!4827139 () Bool)

(assert (=> d!1247881 m!4827139))

(declare-fun m!4827141 () Bool)

(assert (=> d!1247881 m!4827141))

(declare-fun m!4827143 () Bool)

(assert (=> d!1247881 m!4827143))

(declare-fun m!4827145 () Bool)

(assert (=> bm!293840 m!4827145))

(declare-fun m!4827147 () Bool)

(assert (=> b!4241805 m!4827147))

(assert (=> b!4241802 m!4827125))

(assert (=> b!4241802 m!4827127))

(assert (=> b!4241802 m!4827127))

(assert (=> b!4241802 m!4827129))

(assert (=> b!4241803 m!4827125))

(declare-fun m!4827149 () Bool)

(assert (=> b!4241803 m!4827149))

(assert (=> b!4241803 m!4827149))

(declare-fun m!4827151 () Bool)

(assert (=> b!4241803 m!4827151))

(assert (=> b!4241801 m!4827125))

(declare-fun m!4827153 () Bool)

(assert (=> b!4241801 m!4827153))

(assert (=> b!4241807 m!4827125))

(declare-fun m!4827155 () Bool)

(assert (=> b!4241807 m!4827155))

(assert (=> b!4241807 m!4826763))

(assert (=> b!4241479 d!1247881))

(declare-fun b!4241808 () Bool)

(declare-fun e!2634254 () Option!10068)

(declare-fun call!293846 () Option!10068)

(assert (=> b!4241808 (= e!2634254 call!293846)))

(declare-fun b!4241809 () Bool)

(declare-fun e!2634256 () Bool)

(declare-fun e!2634255 () Bool)

(assert (=> b!4241809 (= e!2634256 e!2634255)))

(declare-fun res!1744120 () Bool)

(assert (=> b!4241809 (=> (not res!1744120) (not e!2634255))))

(declare-fun lt!1506769 () Option!10068)

(assert (=> b!4241809 (= res!1744120 (isDefined!7440 lt!1506769))))

(declare-fun b!4241810 () Bool)

(assert (=> b!4241810 (= e!2634255 (contains!9729 rules!2932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))))

(declare-fun bm!293841 () Bool)

(assert (=> bm!293841 (= call!293846 (maxPrefixOneRule!3450 thiss!21540 (h!52332 rules!2932) longerInput!51))))

(declare-fun b!4241811 () Bool)

(declare-fun res!1744123 () Bool)

(assert (=> b!4241811 (=> (not res!1744123) (not e!2634255))))

(assert (=> b!4241811 (= res!1744123 (= (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))) (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769)))))))

(declare-fun b!4241812 () Bool)

(declare-fun res!1744119 () Bool)

(assert (=> b!4241812 (=> (not res!1744119) (not e!2634255))))

(assert (=> b!4241812 (= res!1744119 (= (value!246598 (_1!25377 (get!15248 lt!1506769))) (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769)))))))))

(declare-fun b!4241813 () Bool)

(declare-fun res!1744121 () Bool)

(assert (=> b!4241813 (=> (not res!1744121) (not e!2634255))))

(assert (=> b!4241813 (= res!1744121 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))) (_2!25377 (get!15248 lt!1506769))) longerInput!51))))

(declare-fun b!4241814 () Bool)

(declare-fun lt!1506770 () Option!10068)

(declare-fun lt!1506772 () Option!10068)

(assert (=> b!4241814 (= e!2634254 (ite (and ((_ is None!10067) lt!1506770) ((_ is None!10067) lt!1506772)) None!10067 (ite ((_ is None!10067) lt!1506772) lt!1506770 (ite ((_ is None!10067) lt!1506770) lt!1506772 (ite (>= (size!34363 (_1!25377 (v!41019 lt!1506770))) (size!34363 (_1!25377 (v!41019 lt!1506772)))) lt!1506770 lt!1506772)))))))

(assert (=> b!4241814 (= lt!1506770 call!293846)))

(assert (=> b!4241814 (= lt!1506772 (maxPrefix!4485 thiss!21540 (t!350907 rules!2932) longerInput!51))))

(declare-fun b!4241815 () Bool)

(declare-fun res!1744124 () Bool)

(assert (=> b!4241815 (=> (not res!1744124) (not e!2634255))))

(assert (=> b!4241815 (= res!1744124 (matchR!6447 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))))))

(declare-fun b!4241816 () Bool)

(declare-fun res!1744118 () Bool)

(assert (=> b!4241816 (=> (not res!1744118) (not e!2634255))))

(assert (=> b!4241816 (= res!1744118 (< (size!34364 (_2!25377 (get!15248 lt!1506769))) (size!34364 longerInput!51)))))

(declare-fun d!1247883 () Bool)

(assert (=> d!1247883 e!2634256))

(declare-fun res!1744122 () Bool)

(assert (=> d!1247883 (=> res!1744122 e!2634256)))

(assert (=> d!1247883 (= res!1744122 (isEmpty!27737 lt!1506769))))

(assert (=> d!1247883 (= lt!1506769 e!2634254)))

(declare-fun c!720683 () Bool)

(assert (=> d!1247883 (= c!720683 (and ((_ is Cons!46912) rules!2932) ((_ is Nil!46912) (t!350907 rules!2932))))))

(declare-fun lt!1506771 () Unit!65979)

(declare-fun lt!1506768 () Unit!65979)

(assert (=> d!1247883 (= lt!1506771 lt!1506768)))

(assert (=> d!1247883 (isPrefix!4725 longerInput!51 longerInput!51)))

(assert (=> d!1247883 (= lt!1506768 (lemmaIsPrefixRefl!3122 longerInput!51 longerInput!51))))

(assert (=> d!1247883 (rulesValidInductive!2974 thiss!21540 rules!2932)))

(assert (=> d!1247883 (= (maxPrefix!4485 thiss!21540 rules!2932 longerInput!51) lt!1506769)))

(assert (= (and d!1247883 c!720683) b!4241808))

(assert (= (and d!1247883 (not c!720683)) b!4241814))

(assert (= (or b!4241808 b!4241814) bm!293841))

(assert (= (and d!1247883 (not res!1744122)) b!4241809))

(assert (= (and b!4241809 res!1744120) b!4241811))

(assert (= (and b!4241811 res!1744123) b!4241816))

(assert (= (and b!4241816 res!1744118) b!4241813))

(assert (= (and b!4241813 res!1744121) b!4241812))

(assert (= (and b!4241812 res!1744119) b!4241815))

(assert (= (and b!4241815 res!1744124) b!4241810))

(declare-fun m!4827157 () Bool)

(assert (=> b!4241815 m!4827157))

(declare-fun m!4827159 () Bool)

(assert (=> b!4241815 m!4827159))

(assert (=> b!4241815 m!4827159))

(declare-fun m!4827161 () Bool)

(assert (=> b!4241815 m!4827161))

(assert (=> b!4241815 m!4827161))

(declare-fun m!4827163 () Bool)

(assert (=> b!4241815 m!4827163))

(assert (=> b!4241813 m!4827157))

(assert (=> b!4241813 m!4827159))

(assert (=> b!4241813 m!4827159))

(assert (=> b!4241813 m!4827161))

(assert (=> b!4241813 m!4827161))

(declare-fun m!4827165 () Bool)

(assert (=> b!4241813 m!4827165))

(declare-fun m!4827167 () Bool)

(assert (=> b!4241809 m!4827167))

(declare-fun m!4827169 () Bool)

(assert (=> d!1247883 m!4827169))

(declare-fun m!4827171 () Bool)

(assert (=> d!1247883 m!4827171))

(declare-fun m!4827173 () Bool)

(assert (=> d!1247883 m!4827173))

(assert (=> d!1247883 m!4827143))

(declare-fun m!4827175 () Bool)

(assert (=> bm!293841 m!4827175))

(declare-fun m!4827177 () Bool)

(assert (=> b!4241814 m!4827177))

(assert (=> b!4241811 m!4827157))

(assert (=> b!4241811 m!4827159))

(assert (=> b!4241811 m!4827159))

(assert (=> b!4241811 m!4827161))

(assert (=> b!4241812 m!4827157))

(declare-fun m!4827179 () Bool)

(assert (=> b!4241812 m!4827179))

(assert (=> b!4241812 m!4827179))

(declare-fun m!4827181 () Bool)

(assert (=> b!4241812 m!4827181))

(assert (=> b!4241810 m!4827157))

(declare-fun m!4827183 () Bool)

(assert (=> b!4241810 m!4827183))

(assert (=> b!4241816 m!4827157))

(declare-fun m!4827185 () Bool)

(assert (=> b!4241816 m!4827185))

(assert (=> b!4241816 m!4826765))

(assert (=> b!4241479 d!1247883))

(declare-fun e!2634259 () Bool)

(assert (=> b!4241484 (= tp!1300232 e!2634259)))

(declare-fun b!4241827 () Bool)

(assert (=> b!4241827 (= e!2634259 tp_is_empty!22665)))

(declare-fun b!4241829 () Bool)

(declare-fun tp!1300329 () Bool)

(assert (=> b!4241829 (= e!2634259 tp!1300329)))

(declare-fun b!4241828 () Bool)

(declare-fun tp!1300330 () Bool)

(declare-fun tp!1300333 () Bool)

(assert (=> b!4241828 (= e!2634259 (and tp!1300330 tp!1300333))))

(declare-fun b!4241830 () Bool)

(declare-fun tp!1300332 () Bool)

(declare-fun tp!1300331 () Bool)

(assert (=> b!4241830 (= e!2634259 (and tp!1300332 tp!1300331))))

(assert (= (and b!4241484 ((_ is ElementMatch!12837) (regex!7932 (rule!11060 (h!52333 addTokens!17))))) b!4241827))

(assert (= (and b!4241484 ((_ is Concat!21000) (regex!7932 (rule!11060 (h!52333 addTokens!17))))) b!4241828))

(assert (= (and b!4241484 ((_ is Star!12837) (regex!7932 (rule!11060 (h!52333 addTokens!17))))) b!4241829))

(assert (= (and b!4241484 ((_ is Union!12837) (regex!7932 (rule!11060 (h!52333 addTokens!17))))) b!4241830))

(declare-fun b!4241835 () Bool)

(declare-fun e!2634262 () Bool)

(declare-fun tp!1300336 () Bool)

(assert (=> b!4241835 (= e!2634262 (and tp_is_empty!22665 tp!1300336))))

(assert (=> b!4241497 (= tp!1300231 e!2634262)))

(assert (= (and b!4241497 ((_ is Cons!46911) (originalCharacters!8276 (h!52333 tokens!581)))) b!4241835))

(declare-fun e!2634263 () Bool)

(assert (=> b!4241485 (= tp!1300235 e!2634263)))

(declare-fun b!4241836 () Bool)

(assert (=> b!4241836 (= e!2634263 tp_is_empty!22665)))

(declare-fun b!4241838 () Bool)

(declare-fun tp!1300337 () Bool)

(assert (=> b!4241838 (= e!2634263 tp!1300337)))

(declare-fun b!4241837 () Bool)

(declare-fun tp!1300338 () Bool)

(declare-fun tp!1300341 () Bool)

(assert (=> b!4241837 (= e!2634263 (and tp!1300338 tp!1300341))))

(declare-fun b!4241839 () Bool)

(declare-fun tp!1300340 () Bool)

(declare-fun tp!1300339 () Bool)

(assert (=> b!4241839 (= e!2634263 (and tp!1300340 tp!1300339))))

(assert (= (and b!4241485 ((_ is ElementMatch!12837) (regex!7932 (rule!11060 (h!52333 tokens!581))))) b!4241836))

(assert (= (and b!4241485 ((_ is Concat!21000) (regex!7932 (rule!11060 (h!52333 tokens!581))))) b!4241837))

(assert (= (and b!4241485 ((_ is Star!12837) (regex!7932 (rule!11060 (h!52333 tokens!581))))) b!4241838))

(assert (= (and b!4241485 ((_ is Union!12837) (regex!7932 (rule!11060 (h!52333 tokens!581))))) b!4241839))

(declare-fun b!4241840 () Bool)

(declare-fun e!2634264 () Bool)

(declare-fun tp!1300342 () Bool)

(assert (=> b!4241840 (= e!2634264 (and tp_is_empty!22665 tp!1300342))))

(assert (=> b!4241495 (= tp!1300242 e!2634264)))

(assert (= (and b!4241495 ((_ is Cons!46911) (t!350906 longerInput!51))) b!4241840))

(declare-fun b!4241841 () Bool)

(declare-fun e!2634265 () Bool)

(declare-fun tp!1300343 () Bool)

(assert (=> b!4241841 (= e!2634265 (and tp_is_empty!22665 tp!1300343))))

(assert (=> b!4241500 (= tp!1300233 e!2634265)))

(assert (= (and b!4241500 ((_ is Cons!46911) (originalCharacters!8276 (h!52333 addTokens!17)))) b!4241841))

(declare-fun b!4241855 () Bool)

(declare-fun b_free!125671 () Bool)

(declare-fun b_next!126375 () Bool)

(assert (=> b!4241855 (= b_free!125671 (not b_next!126375))))

(declare-fun tp!1300354 () Bool)

(declare-fun b_and!335681 () Bool)

(assert (=> b!4241855 (= tp!1300354 b_and!335681)))

(declare-fun b_free!125673 () Bool)

(declare-fun b_next!126377 () Bool)

(assert (=> b!4241855 (= b_free!125673 (not b_next!126377))))

(declare-fun t!350983 () Bool)

(declare-fun tb!255131 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!350983) tb!255131))

(declare-fun result!311142 () Bool)

(assert (= result!311142 result!311060))

(assert (=> d!1247797 t!350983))

(declare-fun t!350985 () Bool)

(declare-fun tb!255133 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!350985) tb!255133))

(declare-fun result!311144 () Bool)

(assert (= result!311144 result!311086))

(assert (=> b!4241675 t!350985))

(declare-fun t!350987 () Bool)

(declare-fun tb!255135 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!350987) tb!255135))

(declare-fun result!311146 () Bool)

(assert (= result!311146 result!311124))

(assert (=> d!1247867 t!350987))

(declare-fun t!350989 () Bool)

(declare-fun tb!255137 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!350989) tb!255137))

(declare-fun result!311148 () Bool)

(assert (= result!311148 result!311130))

(assert (=> b!4241773 t!350989))

(declare-fun b_and!335683 () Bool)

(declare-fun tp!1300358 () Bool)

(assert (=> b!4241855 (= tp!1300358 (and (=> t!350983 result!311142) (=> t!350985 result!311144) (=> t!350987 result!311146) (=> t!350989 result!311148) b_and!335683))))

(declare-fun tp!1300357 () Bool)

(declare-fun b!4241854 () Bool)

(declare-fun e!2634279 () Bool)

(declare-fun e!2634280 () Bool)

(assert (=> b!4241854 (= e!2634279 (and tp!1300357 (inv!61656 (tag!8796 (rule!11060 (h!52333 (t!350908 tokens!581))))) (inv!61660 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) e!2634280))))

(declare-fun b!4241853 () Bool)

(declare-fun e!2634283 () Bool)

(declare-fun tp!1300355 () Bool)

(assert (=> b!4241853 (= e!2634283 (and (inv!21 (value!246598 (h!52333 (t!350908 tokens!581)))) e!2634279 tp!1300355))))

(declare-fun e!2634278 () Bool)

(assert (=> b!4241499 (= tp!1300240 e!2634278)))

(assert (=> b!4241855 (= e!2634280 (and tp!1300354 tp!1300358))))

(declare-fun b!4241852 () Bool)

(declare-fun tp!1300356 () Bool)

(assert (=> b!4241852 (= e!2634278 (and (inv!61659 (h!52333 (t!350908 tokens!581))) e!2634283 tp!1300356))))

(assert (= b!4241854 b!4241855))

(assert (= b!4241853 b!4241854))

(assert (= b!4241852 b!4241853))

(assert (= (and b!4241499 ((_ is Cons!46913) (t!350908 tokens!581))) b!4241852))

(declare-fun m!4827187 () Bool)

(assert (=> b!4241854 m!4827187))

(declare-fun m!4827189 () Bool)

(assert (=> b!4241854 m!4827189))

(declare-fun m!4827191 () Bool)

(assert (=> b!4241853 m!4827191))

(declare-fun m!4827193 () Bool)

(assert (=> b!4241852 m!4827193))

(declare-fun b!4241856 () Bool)

(declare-fun e!2634284 () Bool)

(declare-fun tp!1300359 () Bool)

(assert (=> b!4241856 (= e!2634284 (and tp_is_empty!22665 tp!1300359))))

(assert (=> b!4241488 (= tp!1300229 e!2634284)))

(assert (= (and b!4241488 ((_ is Cons!46911) (t!350906 suffix!1262))) b!4241856))

(declare-fun b!4241860 () Bool)

(declare-fun b_free!125675 () Bool)

(declare-fun b_next!126379 () Bool)

(assert (=> b!4241860 (= b_free!125675 (not b_next!126379))))

(declare-fun tp!1300360 () Bool)

(declare-fun b_and!335685 () Bool)

(assert (=> b!4241860 (= tp!1300360 b_and!335685)))

(declare-fun b_free!125677 () Bool)

(declare-fun b_next!126381 () Bool)

(assert (=> b!4241860 (= b_free!125677 (not b_next!126381))))

(declare-fun tb!255139 () Bool)

(declare-fun t!350991 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!350991) tb!255139))

(declare-fun result!311150 () Bool)

(assert (= result!311150 result!311060))

(assert (=> d!1247797 t!350991))

(declare-fun t!350993 () Bool)

(declare-fun tb!255141 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!350993) tb!255141))

(declare-fun result!311152 () Bool)

(assert (= result!311152 result!311086))

(assert (=> b!4241675 t!350993))

(declare-fun t!350995 () Bool)

(declare-fun tb!255143 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!350995) tb!255143))

(declare-fun result!311154 () Bool)

(assert (= result!311154 result!311124))

(assert (=> d!1247867 t!350995))

(declare-fun t!350997 () Bool)

(declare-fun tb!255145 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!350997) tb!255145))

(declare-fun result!311156 () Bool)

(assert (= result!311156 result!311130))

(assert (=> b!4241773 t!350997))

(declare-fun b_and!335687 () Bool)

(declare-fun tp!1300364 () Bool)

(assert (=> b!4241860 (= tp!1300364 (and (=> t!350991 result!311150) (=> t!350993 result!311152) (=> t!350995 result!311154) (=> t!350997 result!311156) b_and!335687))))

(declare-fun tp!1300363 () Bool)

(declare-fun b!4241859 () Bool)

(declare-fun e!2634287 () Bool)

(declare-fun e!2634286 () Bool)

(assert (=> b!4241859 (= e!2634286 (and tp!1300363 (inv!61656 (tag!8796 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (inv!61660 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) e!2634287))))

(declare-fun b!4241858 () Bool)

(declare-fun e!2634290 () Bool)

(declare-fun tp!1300361 () Bool)

(assert (=> b!4241858 (= e!2634290 (and (inv!21 (value!246598 (h!52333 (t!350908 addTokens!17)))) e!2634286 tp!1300361))))

(declare-fun e!2634285 () Bool)

(assert (=> b!4241481 (= tp!1300241 e!2634285)))

(assert (=> b!4241860 (= e!2634287 (and tp!1300360 tp!1300364))))

(declare-fun tp!1300362 () Bool)

(declare-fun b!4241857 () Bool)

(assert (=> b!4241857 (= e!2634285 (and (inv!61659 (h!52333 (t!350908 addTokens!17))) e!2634290 tp!1300362))))

(assert (= b!4241859 b!4241860))

(assert (= b!4241858 b!4241859))

(assert (= b!4241857 b!4241858))

(assert (= (and b!4241481 ((_ is Cons!46913) (t!350908 addTokens!17))) b!4241857))

(declare-fun m!4827195 () Bool)

(assert (=> b!4241859 m!4827195))

(declare-fun m!4827197 () Bool)

(assert (=> b!4241859 m!4827197))

(declare-fun m!4827199 () Bool)

(assert (=> b!4241858 m!4827199))

(declare-fun m!4827201 () Bool)

(assert (=> b!4241857 m!4827201))

(declare-fun b!4241861 () Bool)

(declare-fun e!2634291 () Bool)

(declare-fun tp!1300365 () Bool)

(assert (=> b!4241861 (= e!2634291 (and tp_is_empty!22665 tp!1300365))))

(assert (=> b!4241502 (= tp!1300236 e!2634291)))

(assert (= (and b!4241502 ((_ is Cons!46911) (t!350906 shorterInput!51))) b!4241861))

(declare-fun b!4241872 () Bool)

(declare-fun b_free!125679 () Bool)

(declare-fun b_next!126383 () Bool)

(assert (=> b!4241872 (= b_free!125679 (not b_next!126383))))

(declare-fun tp!1300375 () Bool)

(declare-fun b_and!335689 () Bool)

(assert (=> b!4241872 (= tp!1300375 b_and!335689)))

(declare-fun b_free!125681 () Bool)

(declare-fun b_next!126385 () Bool)

(assert (=> b!4241872 (= b_free!125681 (not b_next!126385))))

(declare-fun t!350999 () Bool)

(declare-fun tb!255147 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!350999) tb!255147))

(declare-fun result!311160 () Bool)

(assert (= result!311160 result!311060))

(assert (=> d!1247797 t!350999))

(declare-fun tb!255149 () Bool)

(declare-fun t!351001 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!351001) tb!255149))

(declare-fun result!311162 () Bool)

(assert (= result!311162 result!311086))

(assert (=> b!4241675 t!351001))

(declare-fun t!351003 () Bool)

(declare-fun tb!255151 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!351003) tb!255151))

(declare-fun result!311164 () Bool)

(assert (= result!311164 result!311124))

(assert (=> d!1247867 t!351003))

(declare-fun tb!255153 () Bool)

(declare-fun t!351005 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!351005) tb!255153))

(declare-fun result!311166 () Bool)

(assert (= result!311166 result!311130))

(assert (=> b!4241773 t!351005))

(declare-fun tp!1300374 () Bool)

(declare-fun b_and!335691 () Bool)

(assert (=> b!4241872 (= tp!1300374 (and (=> t!350999 result!311160) (=> t!351001 result!311162) (=> t!351003 result!311164) (=> t!351005 result!311166) b_and!335691))))

(declare-fun e!2634302 () Bool)

(assert (=> b!4241872 (= e!2634302 (and tp!1300375 tp!1300374))))

(declare-fun tp!1300377 () Bool)

(declare-fun b!4241871 () Bool)

(declare-fun e!2634301 () Bool)

(assert (=> b!4241871 (= e!2634301 (and tp!1300377 (inv!61656 (tag!8796 (h!52332 (t!350907 rules!2932)))) (inv!61660 (transformation!7932 (h!52332 (t!350907 rules!2932)))) e!2634302))))

(declare-fun b!4241870 () Bool)

(declare-fun e!2634300 () Bool)

(declare-fun tp!1300376 () Bool)

(assert (=> b!4241870 (= e!2634300 (and e!2634301 tp!1300376))))

(assert (=> b!4241480 (= tp!1300228 e!2634300)))

(assert (= b!4241871 b!4241872))

(assert (= b!4241870 b!4241871))

(assert (= (and b!4241480 ((_ is Cons!46912) (t!350907 rules!2932))) b!4241870))

(declare-fun m!4827203 () Bool)

(assert (=> b!4241871 m!4827203))

(declare-fun m!4827205 () Bool)

(assert (=> b!4241871 m!4827205))

(declare-fun e!2634304 () Bool)

(assert (=> b!4241490 (= tp!1300234 e!2634304)))

(declare-fun b!4241873 () Bool)

(assert (=> b!4241873 (= e!2634304 tp_is_empty!22665)))

(declare-fun b!4241875 () Bool)

(declare-fun tp!1300378 () Bool)

(assert (=> b!4241875 (= e!2634304 tp!1300378)))

(declare-fun b!4241874 () Bool)

(declare-fun tp!1300379 () Bool)

(declare-fun tp!1300382 () Bool)

(assert (=> b!4241874 (= e!2634304 (and tp!1300379 tp!1300382))))

(declare-fun b!4241876 () Bool)

(declare-fun tp!1300381 () Bool)

(declare-fun tp!1300380 () Bool)

(assert (=> b!4241876 (= e!2634304 (and tp!1300381 tp!1300380))))

(assert (= (and b!4241490 ((_ is ElementMatch!12837) (regex!7932 (h!52332 rules!2932)))) b!4241873))

(assert (= (and b!4241490 ((_ is Concat!21000) (regex!7932 (h!52332 rules!2932)))) b!4241874))

(assert (= (and b!4241490 ((_ is Star!12837) (regex!7932 (h!52332 rules!2932)))) b!4241875))

(assert (= (and b!4241490 ((_ is Union!12837) (regex!7932 (h!52332 rules!2932)))) b!4241876))

(declare-fun b_lambda!124911 () Bool)

(assert (= b_lambda!124901 (or (and b!4241487 b_free!125657 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))))) (and b!4241860 b_free!125677 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))))) (and b!4241486 b_free!125653) (and b!4241872 b_free!125681 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))))) (and b!4241478 b_free!125649 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))))) (and b!4241855 b_free!125673 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))))) b_lambda!124911)))

(declare-fun b_lambda!124913 () Bool)

(assert (= b_lambda!124909 (or (and b!4241855 b_free!125673 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))))) (and b!4241487 b_free!125657) (and b!4241872 b_free!125681 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))))) (and b!4241486 b_free!125653 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))))) (and b!4241478 b_free!125649 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))))) (and b!4241860 b_free!125677 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))))) b_lambda!124913)))

(check-sat (not b_next!126351) (not b!4241769) (not d!1247881) (not b_next!126375) (not b!4241859) tp_is_empty!22665 (not tb!255065) (not b!4241772) (not b!4241541) (not b!4241805) (not b!4241858) (not b!4241876) (not b!4241838) (not b_next!126377) (not b!4241774) (not d!1247865) (not b!4241875) (not d!1247883) (not b!4241841) (not b!4241621) (not tb!255089) (not b!4241800) (not b!4241807) (not b!4241777) (not b!4241804) (not b!4241779) (not d!1247791) (not b_next!126361) b_and!335681 b_and!335683 (not b!4241551) (not d!1247861) (not tb!255119) (not bm!293840) (not b!4241816) (not b!4241856) (not b!4241840) (not b!4241622) (not b!4241675) (not b!4241871) (not d!1247867) (not b_next!126355) (not b!4241814) b_and!335691 (not b_lambda!124911) b_and!335679 (not d!1247833) (not b_next!126385) (not b!4241630) b_and!335687 (not b_next!126379) (not d!1247797) (not d!1247869) (not b!4241642) (not b!4241857) (not b!4241802) (not b_lambda!124893) (not b!4241835) (not d!1247879) (not d!1247845) b_and!335609 (not d!1247803) (not b!4241810) (not b!4241829) (not b_lambda!124913) (not b!4241641) (not b_next!126359) (not b_next!126381) (not b!4241811) (not d!1247863) (not b!4241853) b_and!335685 (not b!4241618) (not b!4241645) (not b!4241646) (not b!4241852) (not b!4241870) (not b!4241530) (not b!4241764) (not b!4241780) b_and!335617 (not b_next!126357) (not b!4241677) (not b!4241809) b_and!335689 (not b!4241592) (not tb!255125) (not b_lambda!124907) (not b!4241770) (not bm!293841) (not b!4241861) (not b!4241676) (not b!4241765) (not b!4241815) b_and!335675 (not b!4241828) (not b!4241775) (not b!4241874) (not b!4241540) b_and!335613 (not b!4241801) (not b!4241571) (not b_next!126383) (not b!4241812) (not b!4241773) b_and!335677 (not b!4241813) (not b!4241837) (not b!4241766) (not b!4241854) (not d!1247793) (not b!4241803) (not d!1247795) (not b!4241830) (not b_next!126353) (not b!4241806) (not b!4241839))
(check-sat (not b_next!126375) (not b_next!126351) (not b_next!126377) (not b_next!126361) b_and!335609 b_and!335685 b_and!335689 b_and!335675 b_and!335677 (not b_next!126353) b_and!335681 b_and!335683 (not b_next!126355) b_and!335691 b_and!335679 (not b_next!126385) b_and!335687 (not b_next!126379) (not b_next!126359) (not b_next!126381) b_and!335617 (not b_next!126357) b_and!335613 (not b_next!126383))
(get-model)

(declare-fun d!1247903 () Bool)

(assert (=> d!1247903 (= (isEmpty!27737 lt!1506764) (not ((_ is Some!10067) lt!1506764)))))

(assert (=> d!1247881 d!1247903))

(declare-fun b!4241912 () Bool)

(declare-fun res!1744151 () Bool)

(declare-fun e!2634327 () Bool)

(assert (=> b!4241912 (=> (not res!1744151) (not e!2634327))))

(declare-fun head!8989 (List!47035) C!25872)

(assert (=> b!4241912 (= res!1744151 (= (head!8989 shorterInput!51) (head!8989 shorterInput!51)))))

(declare-fun b!4241914 () Bool)

(declare-fun e!2634328 () Bool)

(assert (=> b!4241914 (= e!2634328 (>= (size!34364 shorterInput!51) (size!34364 shorterInput!51)))))

(declare-fun d!1247905 () Bool)

(assert (=> d!1247905 e!2634328))

(declare-fun res!1744153 () Bool)

(assert (=> d!1247905 (=> res!1744153 e!2634328)))

(declare-fun lt!1506776 () Bool)

(assert (=> d!1247905 (= res!1744153 (not lt!1506776))))

(declare-fun e!2634326 () Bool)

(assert (=> d!1247905 (= lt!1506776 e!2634326)))

(declare-fun res!1744152 () Bool)

(assert (=> d!1247905 (=> res!1744152 e!2634326)))

(assert (=> d!1247905 (= res!1744152 ((_ is Nil!46911) shorterInput!51))))

(assert (=> d!1247905 (= (isPrefix!4725 shorterInput!51 shorterInput!51) lt!1506776)))

(declare-fun b!4241913 () Bool)

(declare-fun tail!6842 (List!47035) List!47035)

(assert (=> b!4241913 (= e!2634327 (isPrefix!4725 (tail!6842 shorterInput!51) (tail!6842 shorterInput!51)))))

(declare-fun b!4241911 () Bool)

(assert (=> b!4241911 (= e!2634326 e!2634327)))

(declare-fun res!1744150 () Bool)

(assert (=> b!4241911 (=> (not res!1744150) (not e!2634327))))

(assert (=> b!4241911 (= res!1744150 (not ((_ is Nil!46911) shorterInput!51)))))

(assert (= (and d!1247905 (not res!1744152)) b!4241911))

(assert (= (and b!4241911 res!1744150) b!4241912))

(assert (= (and b!4241912 res!1744151) b!4241913))

(assert (= (and d!1247905 (not res!1744153)) b!4241914))

(declare-fun m!4827235 () Bool)

(assert (=> b!4241912 m!4827235))

(assert (=> b!4241912 m!4827235))

(assert (=> b!4241914 m!4826763))

(assert (=> b!4241914 m!4826763))

(declare-fun m!4827237 () Bool)

(assert (=> b!4241913 m!4827237))

(assert (=> b!4241913 m!4827237))

(assert (=> b!4241913 m!4827237))

(assert (=> b!4241913 m!4827237))

(declare-fun m!4827239 () Bool)

(assert (=> b!4241913 m!4827239))

(assert (=> d!1247881 d!1247905))

(declare-fun d!1247907 () Bool)

(assert (=> d!1247907 (isPrefix!4725 shorterInput!51 shorterInput!51)))

(declare-fun lt!1506779 () Unit!65979)

(declare-fun choose!25949 (List!47035 List!47035) Unit!65979)

(assert (=> d!1247907 (= lt!1506779 (choose!25949 shorterInput!51 shorterInput!51))))

(assert (=> d!1247907 (= (lemmaIsPrefixRefl!3122 shorterInput!51 shorterInput!51) lt!1506779)))

(declare-fun bs!598378 () Bool)

(assert (= bs!598378 d!1247907))

(assert (=> bs!598378 m!4827139))

(declare-fun m!4827241 () Bool)

(assert (=> bs!598378 m!4827241))

(assert (=> d!1247881 d!1247907))

(declare-fun d!1247909 () Bool)

(assert (=> d!1247909 true))

(declare-fun lt!1506857 () Bool)

(declare-fun lambda!130162 () Int)

(declare-fun forall!8538 (List!47036 Int) Bool)

(assert (=> d!1247909 (= lt!1506857 (forall!8538 rules!2932 lambda!130162))))

(declare-fun e!2634507 () Bool)

(assert (=> d!1247909 (= lt!1506857 e!2634507)))

(declare-fun res!1744290 () Bool)

(assert (=> d!1247909 (=> res!1744290 e!2634507)))

(assert (=> d!1247909 (= res!1744290 (not ((_ is Cons!46912) rules!2932)))))

(assert (=> d!1247909 (= (rulesValidInductive!2974 thiss!21540 rules!2932) lt!1506857)))

(declare-fun b!4242239 () Bool)

(declare-fun e!2634506 () Bool)

(assert (=> b!4242239 (= e!2634507 e!2634506)))

(declare-fun res!1744291 () Bool)

(assert (=> b!4242239 (=> (not res!1744291) (not e!2634506))))

(declare-fun ruleValid!3601 (LexerInterface!7527 Rule!15664) Bool)

(assert (=> b!4242239 (= res!1744291 (ruleValid!3601 thiss!21540 (h!52332 rules!2932)))))

(declare-fun b!4242240 () Bool)

(assert (=> b!4242240 (= e!2634506 (rulesValidInductive!2974 thiss!21540 (t!350907 rules!2932)))))

(assert (= (and d!1247909 (not res!1744290)) b!4242239))

(assert (= (and b!4242239 res!1744291) b!4242240))

(declare-fun m!4827691 () Bool)

(assert (=> d!1247909 m!4827691))

(declare-fun m!4827693 () Bool)

(assert (=> b!4242239 m!4827693))

(declare-fun m!4827695 () Bool)

(assert (=> b!4242240 m!4827695))

(assert (=> d!1247881 d!1247909))

(declare-fun d!1248081 () Bool)

(assert (=> d!1248081 (= (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))) (list!16915 (c!720623 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))))))

(declare-fun bs!598413 () Bool)

(assert (= bs!598413 d!1248081))

(declare-fun m!4827705 () Bool)

(assert (=> bs!598413 m!4827705))

(assert (=> b!4241802 d!1248081))

(declare-fun d!1248083 () Bool)

(declare-fun lt!1506858 () BalanceConc!27880)

(assert (=> d!1248083 (= (list!16913 lt!1506858) (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764))))))

(assert (=> d!1248083 (= lt!1506858 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))) (value!246598 (_1!25377 (get!15248 lt!1506764)))))))

(assert (=> d!1248083 (= (charsOf!5282 (_1!25377 (get!15248 lt!1506764))) lt!1506858)))

(declare-fun b_lambda!124927 () Bool)

(assert (=> (not b_lambda!124927) (not d!1248083)))

(declare-fun t!351101 () Bool)

(declare-fun tb!255247 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351101) tb!255247))

(declare-fun b!4242259 () Bool)

(declare-fun e!2634513 () Bool)

(declare-fun tp!1300486 () Bool)

(assert (=> b!4242259 (= e!2634513 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))) (value!246598 (_1!25377 (get!15248 lt!1506764)))))) tp!1300486))))

(declare-fun result!311264 () Bool)

(assert (=> tb!255247 (= result!311264 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))) (value!246598 (_1!25377 (get!15248 lt!1506764))))) e!2634513))))

(assert (= tb!255247 b!4242259))

(declare-fun m!4827707 () Bool)

(assert (=> b!4242259 m!4827707))

(declare-fun m!4827709 () Bool)

(assert (=> tb!255247 m!4827709))

(assert (=> d!1248083 t!351101))

(declare-fun b_and!335769 () Bool)

(assert (= b_and!335675 (and (=> t!351101 result!311264) b_and!335769)))

(declare-fun tb!255249 () Bool)

(declare-fun t!351103 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351103) tb!255249))

(declare-fun result!311266 () Bool)

(assert (= result!311266 result!311264))

(assert (=> d!1248083 t!351103))

(declare-fun b_and!335771 () Bool)

(assert (= b_and!335691 (and (=> t!351103 result!311266) b_and!335771)))

(declare-fun tb!255251 () Bool)

(declare-fun t!351105 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351105) tb!255251))

(declare-fun result!311268 () Bool)

(assert (= result!311268 result!311264))

(assert (=> d!1248083 t!351105))

(declare-fun b_and!335773 () Bool)

(assert (= b_and!335683 (and (=> t!351105 result!311268) b_and!335773)))

(declare-fun t!351107 () Bool)

(declare-fun tb!255253 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351107) tb!255253))

(declare-fun result!311270 () Bool)

(assert (= result!311270 result!311264))

(assert (=> d!1248083 t!351107))

(declare-fun b_and!335775 () Bool)

(assert (= b_and!335687 (and (=> t!351107 result!311270) b_and!335775)))

(declare-fun t!351109 () Bool)

(declare-fun tb!255255 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351109) tb!255255))

(declare-fun result!311272 () Bool)

(assert (= result!311272 result!311264))

(assert (=> d!1248083 t!351109))

(declare-fun b_and!335777 () Bool)

(assert (= b_and!335677 (and (=> t!351109 result!311272) b_and!335777)))

(declare-fun tb!255257 () Bool)

(declare-fun t!351111 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351111) tb!255257))

(declare-fun result!311274 () Bool)

(assert (= result!311274 result!311264))

(assert (=> d!1248083 t!351111))

(declare-fun b_and!335779 () Bool)

(assert (= b_and!335679 (and (=> t!351111 result!311274) b_and!335779)))

(declare-fun m!4827711 () Bool)

(assert (=> d!1248083 m!4827711))

(declare-fun m!4827713 () Bool)

(assert (=> d!1248083 m!4827713))

(assert (=> b!4241802 d!1248083))

(declare-fun d!1248085 () Bool)

(assert (=> d!1248085 (= (get!15248 lt!1506764) (v!41019 lt!1506764))))

(assert (=> b!4241802 d!1248085))

(declare-fun b!4242276 () Bool)

(declare-fun e!2634522 () tuple2!44488)

(declare-fun lt!1506859 () Option!10068)

(declare-fun lt!1506860 () tuple2!44488)

(assert (=> b!4242276 (= e!2634522 (tuple2!44489 (Cons!46913 (_1!25377 (v!41019 lt!1506859)) (_1!25378 lt!1506860)) (_2!25378 lt!1506860)))))

(assert (=> b!4242276 (= lt!1506860 (lexList!2033 thiss!21540 rules!2932 (_2!25377 (v!41019 lt!1506859))))))

(declare-fun b!4242277 () Bool)

(declare-fun e!2634524 () Bool)

(declare-fun e!2634523 () Bool)

(assert (=> b!4242277 (= e!2634524 e!2634523)))

(declare-fun res!1744292 () Bool)

(declare-fun lt!1506861 () tuple2!44488)

(assert (=> b!4242277 (= res!1744292 (< (size!34364 (_2!25378 lt!1506861)) (size!34364 (_2!25377 (v!41019 lt!1506746)))))))

(assert (=> b!4242277 (=> (not res!1744292) (not e!2634523))))

(declare-fun b!4242278 () Bool)

(assert (=> b!4242278 (= e!2634523 (not (isEmpty!27734 (_1!25378 lt!1506861))))))

(declare-fun b!4242279 () Bool)

(assert (=> b!4242279 (= e!2634524 (= (_2!25378 lt!1506861) (_2!25377 (v!41019 lt!1506746))))))

(declare-fun b!4242275 () Bool)

(assert (=> b!4242275 (= e!2634522 (tuple2!44489 Nil!46913 (_2!25377 (v!41019 lt!1506746))))))

(declare-fun d!1248087 () Bool)

(assert (=> d!1248087 e!2634524))

(declare-fun c!720750 () Bool)

(assert (=> d!1248087 (= c!720750 (> (size!34365 (_1!25378 lt!1506861)) 0))))

(assert (=> d!1248087 (= lt!1506861 e!2634522)))

(declare-fun c!720749 () Bool)

(assert (=> d!1248087 (= c!720749 ((_ is Some!10067) lt!1506859))))

(assert (=> d!1248087 (= lt!1506859 (maxPrefix!4485 thiss!21540 rules!2932 (_2!25377 (v!41019 lt!1506746))))))

(assert (=> d!1248087 (= (lexList!2033 thiss!21540 rules!2932 (_2!25377 (v!41019 lt!1506746))) lt!1506861)))

(assert (= (and d!1248087 c!720749) b!4242276))

(assert (= (and d!1248087 (not c!720749)) b!4242275))

(assert (= (and d!1248087 c!720750) b!4242277))

(assert (= (and d!1248087 (not c!720750)) b!4242279))

(assert (= (and b!4242277 res!1744292) b!4242278))

(declare-fun m!4827721 () Bool)

(assert (=> b!4242276 m!4827721))

(declare-fun m!4827723 () Bool)

(assert (=> b!4242277 m!4827723))

(declare-fun m!4827725 () Bool)

(assert (=> b!4242277 m!4827725))

(declare-fun m!4827727 () Bool)

(assert (=> b!4242278 m!4827727))

(declare-fun m!4827731 () Bool)

(assert (=> d!1248087 m!4827731))

(declare-fun m!4827735 () Bool)

(assert (=> d!1248087 m!4827735))

(assert (=> b!4241764 d!1248087))

(declare-fun d!1248089 () Bool)

(declare-fun charsToBigInt!0 (List!47034 Int) Int)

(assert (=> d!1248089 (= (inv!15 (value!246598 (h!52333 tokens!581))) (= (charsToBigInt!0 (text!57583 (value!246598 (h!52333 tokens!581))) 0) (value!246593 (value!246598 (h!52333 tokens!581)))))))

(declare-fun bs!598414 () Bool)

(assert (= bs!598414 d!1248089))

(declare-fun m!4827745 () Bool)

(assert (=> bs!598414 m!4827745))

(assert (=> b!4241618 d!1248089))

(declare-fun b!4242294 () Bool)

(declare-fun e!2634534 () List!47035)

(assert (=> b!4242294 (= e!2634534 (Cons!46911 (h!52331 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))) (++!11941 (t!350906 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))) (_2!25377 (v!41019 lt!1506681)))))))

(declare-fun b!4242293 () Bool)

(assert (=> b!4242293 (= e!2634534 (_2!25377 (v!41019 lt!1506681)))))

(declare-fun b!4242296 () Bool)

(declare-fun e!2634535 () Bool)

(declare-fun lt!1506862 () List!47035)

(assert (=> b!4242296 (= e!2634535 (or (not (= (_2!25377 (v!41019 lt!1506681)) Nil!46911)) (= lt!1506862 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))))

(declare-fun b!4242295 () Bool)

(declare-fun res!1744294 () Bool)

(assert (=> b!4242295 (=> (not res!1744294) (not e!2634535))))

(assert (=> b!4242295 (= res!1744294 (= (size!34364 lt!1506862) (+ (size!34364 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))) (size!34364 (_2!25377 (v!41019 lt!1506681))))))))

(declare-fun d!1248091 () Bool)

(assert (=> d!1248091 e!2634535))

(declare-fun res!1744293 () Bool)

(assert (=> d!1248091 (=> (not res!1744293) (not e!2634535))))

(assert (=> d!1248091 (= res!1744293 (= (content!7375 lt!1506862) ((_ map or) (content!7375 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))) (content!7375 (_2!25377 (v!41019 lt!1506681))))))))

(assert (=> d!1248091 (= lt!1506862 e!2634534)))

(declare-fun c!720751 () Bool)

(assert (=> d!1248091 (= c!720751 ((_ is Nil!46911) (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))))))

(assert (=> d!1248091 (= (++!11941 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) (_2!25377 (v!41019 lt!1506681))) lt!1506862)))

(assert (= (and d!1248091 c!720751) b!4242293))

(assert (= (and d!1248091 (not c!720751)) b!4242294))

(assert (= (and d!1248091 res!1744293) b!4242295))

(assert (= (and b!4242295 res!1744294) b!4242296))

(declare-fun m!4827747 () Bool)

(assert (=> b!4242294 m!4827747))

(declare-fun m!4827749 () Bool)

(assert (=> b!4242295 m!4827749))

(declare-fun m!4827751 () Bool)

(assert (=> b!4242295 m!4827751))

(assert (=> b!4242295 m!4827087))

(declare-fun m!4827753 () Bool)

(assert (=> d!1248091 m!4827753))

(declare-fun m!4827755 () Bool)

(assert (=> d!1248091 m!4827755))

(assert (=> d!1248091 m!4827093))

(assert (=> b!4241769 d!1248091))

(declare-fun d!1248093 () Bool)

(assert (=> d!1248093 true))

(declare-fun order!24701 () Int)

(declare-fun lambda!130165 () Int)

(declare-fun order!24699 () Int)

(declare-fun dynLambda!20119 (Int Int) Int)

(declare-fun dynLambda!20120 (Int Int) Int)

(assert (=> d!1248093 (< (dynLambda!20119 order!24699 (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (dynLambda!20120 order!24701 lambda!130165))))

(declare-fun Forall2!1197 (Int) Bool)

(assert (=> d!1248093 (= (equivClasses!3352 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (Forall2!1197 lambda!130165))))

(declare-fun bs!598415 () Bool)

(assert (= bs!598415 d!1248093))

(declare-fun m!4827757 () Bool)

(assert (=> bs!598415 m!4827757))

(assert (=> b!4241530 d!1248093))

(declare-fun d!1248095 () Bool)

(declare-fun lt!1506865 () Bool)

(declare-fun content!7377 (List!47036) (InoxSet Rule!15664))

(assert (=> d!1248095 (= lt!1506865 (select (content!7377 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506764)))))))

(declare-fun e!2634543 () Bool)

(assert (=> d!1248095 (= lt!1506865 e!2634543)))

(declare-fun res!1744302 () Bool)

(assert (=> d!1248095 (=> (not res!1744302) (not e!2634543))))

(assert (=> d!1248095 (= res!1744302 ((_ is Cons!46912) rules!2932))))

(assert (=> d!1248095 (= (contains!9729 rules!2932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))) lt!1506865)))

(declare-fun b!4242305 () Bool)

(declare-fun e!2634542 () Bool)

(assert (=> b!4242305 (= e!2634543 e!2634542)))

(declare-fun res!1744301 () Bool)

(assert (=> b!4242305 (=> res!1744301 e!2634542)))

(assert (=> b!4242305 (= res!1744301 (= (h!52332 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506764)))))))

(declare-fun b!4242306 () Bool)

(assert (=> b!4242306 (= e!2634542 (contains!9729 (t!350907 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506764)))))))

(assert (= (and d!1248095 res!1744302) b!4242305))

(assert (= (and b!4242305 (not res!1744301)) b!4242306))

(declare-fun m!4827759 () Bool)

(assert (=> d!1248095 m!4827759))

(declare-fun m!4827761 () Bool)

(assert (=> d!1248095 m!4827761))

(declare-fun m!4827763 () Bool)

(assert (=> b!4242306 m!4827763))

(assert (=> b!4241801 d!1248095))

(assert (=> b!4241801 d!1248085))

(declare-fun b!4242308 () Bool)

(declare-fun e!2634544 () List!47035)

(assert (=> b!4242308 (= e!2634544 (Cons!46911 (h!52331 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))) (++!11941 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))) (_2!25377 (get!15248 lt!1506764)))))))

(declare-fun b!4242307 () Bool)

(assert (=> b!4242307 (= e!2634544 (_2!25377 (get!15248 lt!1506764)))))

(declare-fun b!4242310 () Bool)

(declare-fun e!2634545 () Bool)

(declare-fun lt!1506866 () List!47035)

(assert (=> b!4242310 (= e!2634545 (or (not (= (_2!25377 (get!15248 lt!1506764)) Nil!46911)) (= lt!1506866 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))))))))

(declare-fun b!4242309 () Bool)

(declare-fun res!1744304 () Bool)

(assert (=> b!4242309 (=> (not res!1744304) (not e!2634545))))

(assert (=> b!4242309 (= res!1744304 (= (size!34364 lt!1506866) (+ (size!34364 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))) (size!34364 (_2!25377 (get!15248 lt!1506764))))))))

(declare-fun d!1248097 () Bool)

(assert (=> d!1248097 e!2634545))

(declare-fun res!1744303 () Bool)

(assert (=> d!1248097 (=> (not res!1744303) (not e!2634545))))

(assert (=> d!1248097 (= res!1744303 (= (content!7375 lt!1506866) ((_ map or) (content!7375 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))) (content!7375 (_2!25377 (get!15248 lt!1506764))))))))

(assert (=> d!1248097 (= lt!1506866 e!2634544)))

(declare-fun c!720752 () Bool)

(assert (=> d!1248097 (= c!720752 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))))))

(assert (=> d!1248097 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))) (_2!25377 (get!15248 lt!1506764))) lt!1506866)))

(assert (= (and d!1248097 c!720752) b!4242307))

(assert (= (and d!1248097 (not c!720752)) b!4242308))

(assert (= (and d!1248097 res!1744303) b!4242309))

(assert (= (and b!4242309 res!1744304) b!4242310))

(declare-fun m!4827765 () Bool)

(assert (=> b!4242308 m!4827765))

(declare-fun m!4827767 () Bool)

(assert (=> b!4242309 m!4827767))

(assert (=> b!4242309 m!4827129))

(declare-fun m!4827769 () Bool)

(assert (=> b!4242309 m!4827769))

(assert (=> b!4242309 m!4827155))

(declare-fun m!4827771 () Bool)

(assert (=> d!1248097 m!4827771))

(assert (=> d!1248097 m!4827129))

(declare-fun m!4827773 () Bool)

(assert (=> d!1248097 m!4827773))

(declare-fun m!4827775 () Bool)

(assert (=> d!1248097 m!4827775))

(assert (=> b!4241804 d!1248097))

(assert (=> b!4241804 d!1248081))

(assert (=> b!4241804 d!1248083))

(assert (=> b!4241804 d!1248085))

(declare-fun d!1248099 () Bool)

(assert (=> d!1248099 (= (isEmpty!27734 (_1!25378 lt!1506748)) ((_ is Nil!46913) (_1!25378 lt!1506748)))))

(assert (=> b!4241766 d!1248099))

(declare-fun d!1248101 () Bool)

(declare-fun res!1744305 () Bool)

(declare-fun e!2634546 () Bool)

(assert (=> d!1248101 (=> (not res!1744305) (not e!2634546))))

(assert (=> d!1248101 (= res!1744305 (not (isEmpty!27733 (originalCharacters!8276 (h!52333 (t!350908 addTokens!17))))))))

(assert (=> d!1248101 (= (inv!61659 (h!52333 (t!350908 addTokens!17))) e!2634546)))

(declare-fun b!4242311 () Bool)

(declare-fun res!1744306 () Bool)

(assert (=> b!4242311 (=> (not res!1744306) (not e!2634546))))

(assert (=> b!4242311 (= res!1744306 (= (originalCharacters!8276 (h!52333 (t!350908 addTokens!17))) (list!16913 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (value!246598 (h!52333 (t!350908 addTokens!17)))))))))

(declare-fun b!4242312 () Bool)

(assert (=> b!4242312 (= e!2634546 (= (size!34363 (h!52333 (t!350908 addTokens!17))) (size!34364 (originalCharacters!8276 (h!52333 (t!350908 addTokens!17))))))))

(assert (= (and d!1248101 res!1744305) b!4242311))

(assert (= (and b!4242311 res!1744306) b!4242312))

(declare-fun b_lambda!124937 () Bool)

(assert (=> (not b_lambda!124937) (not b!4242311)))

(declare-fun tb!255299 () Bool)

(declare-fun t!351153 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351153) tb!255299))

(declare-fun b!4242313 () Bool)

(declare-fun e!2634547 () Bool)

(declare-fun tp!1300517 () Bool)

(assert (=> b!4242313 (= e!2634547 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (value!246598 (h!52333 (t!350908 addTokens!17)))))) tp!1300517))))

(declare-fun result!311316 () Bool)

(assert (=> tb!255299 (= result!311316 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (value!246598 (h!52333 (t!350908 addTokens!17))))) e!2634547))))

(assert (= tb!255299 b!4242313))

(declare-fun m!4827777 () Bool)

(assert (=> b!4242313 m!4827777))

(declare-fun m!4827779 () Bool)

(assert (=> tb!255299 m!4827779))

(assert (=> b!4242311 t!351153))

(declare-fun b_and!335789 () Bool)

(assert (= b_and!335773 (and (=> t!351153 result!311316) b_and!335789)))

(declare-fun tb!255301 () Bool)

(declare-fun t!351155 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351155) tb!255301))

(declare-fun result!311318 () Bool)

(assert (= result!311318 result!311316))

(assert (=> b!4242311 t!351155))

(declare-fun b_and!335791 () Bool)

(assert (= b_and!335771 (and (=> t!351155 result!311318) b_and!335791)))

(declare-fun t!351157 () Bool)

(declare-fun tb!255303 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351157) tb!255303))

(declare-fun result!311320 () Bool)

(assert (= result!311320 result!311316))

(assert (=> b!4242311 t!351157))

(declare-fun b_and!335793 () Bool)

(assert (= b_and!335775 (and (=> t!351157 result!311320) b_and!335793)))

(declare-fun tb!255305 () Bool)

(declare-fun t!351159 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351159) tb!255305))

(declare-fun result!311322 () Bool)

(assert (= result!311322 result!311316))

(assert (=> b!4242311 t!351159))

(declare-fun b_and!335795 () Bool)

(assert (= b_and!335777 (and (=> t!351159 result!311322) b_and!335795)))

(declare-fun t!351161 () Bool)

(declare-fun tb!255307 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351161) tb!255307))

(declare-fun result!311324 () Bool)

(assert (= result!311324 result!311316))

(assert (=> b!4242311 t!351161))

(declare-fun b_and!335797 () Bool)

(assert (= b_and!335779 (and (=> t!351161 result!311324) b_and!335797)))

(declare-fun t!351163 () Bool)

(declare-fun tb!255309 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351163) tb!255309))

(declare-fun result!311326 () Bool)

(assert (= result!311326 result!311316))

(assert (=> b!4242311 t!351163))

(declare-fun b_and!335799 () Bool)

(assert (= b_and!335769 (and (=> t!351163 result!311326) b_and!335799)))

(declare-fun m!4827781 () Bool)

(assert (=> d!1248101 m!4827781))

(declare-fun m!4827783 () Bool)

(assert (=> b!4242311 m!4827783))

(assert (=> b!4242311 m!4827783))

(declare-fun m!4827785 () Bool)

(assert (=> b!4242311 m!4827785))

(declare-fun m!4827787 () Bool)

(assert (=> b!4242312 m!4827787))

(assert (=> b!4241857 d!1248101))

(declare-fun d!1248103 () Bool)

(assert (=> d!1248103 (= (isEmpty!27733 (originalCharacters!8276 (h!52333 addTokens!17))) ((_ is Nil!46911) (originalCharacters!8276 (h!52333 addTokens!17))))))

(assert (=> d!1247869 d!1248103))

(declare-fun d!1248105 () Bool)

(declare-fun isBalanced!3760 (Conc!14143) Bool)

(assert (=> d!1248105 (= (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))) (isBalanced!3760 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))))))

(declare-fun bs!598416 () Bool)

(assert (= bs!598416 d!1248105))

(declare-fun m!4827789 () Bool)

(assert (=> bs!598416 m!4827789))

(assert (=> tb!255089 d!1248105))

(declare-fun d!1248107 () Bool)

(assert (=> d!1248107 (= (inv!15 (value!246598 (h!52333 addTokens!17))) (= (charsToBigInt!0 (text!57583 (value!246598 (h!52333 addTokens!17))) 0) (value!246593 (value!246598 (h!52333 addTokens!17)))))))

(declare-fun bs!598417 () Bool)

(assert (= bs!598417 d!1248107))

(declare-fun m!4827791 () Bool)

(assert (=> bs!598417 m!4827791))

(assert (=> b!4241642 d!1248107))

(declare-fun d!1248109 () Bool)

(declare-fun lt!1506867 () Bool)

(assert (=> d!1248109 (= lt!1506867 (select (content!7377 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506769)))))))

(declare-fun e!2634549 () Bool)

(assert (=> d!1248109 (= lt!1506867 e!2634549)))

(declare-fun res!1744308 () Bool)

(assert (=> d!1248109 (=> (not res!1744308) (not e!2634549))))

(assert (=> d!1248109 (= res!1744308 ((_ is Cons!46912) rules!2932))))

(assert (=> d!1248109 (= (contains!9729 rules!2932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))) lt!1506867)))

(declare-fun b!4242314 () Bool)

(declare-fun e!2634548 () Bool)

(assert (=> b!4242314 (= e!2634549 e!2634548)))

(declare-fun res!1744307 () Bool)

(assert (=> b!4242314 (=> res!1744307 e!2634548)))

(assert (=> b!4242314 (= res!1744307 (= (h!52332 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506769)))))))

(declare-fun b!4242315 () Bool)

(assert (=> b!4242315 (= e!2634548 (contains!9729 (t!350907 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506769)))))))

(assert (= (and d!1248109 res!1744308) b!4242314))

(assert (= (and b!4242314 (not res!1744307)) b!4242315))

(assert (=> d!1248109 m!4827759))

(declare-fun m!4827793 () Bool)

(assert (=> d!1248109 m!4827793))

(declare-fun m!4827795 () Bool)

(assert (=> b!4242315 m!4827795))

(assert (=> b!4241810 d!1248109))

(declare-fun d!1248111 () Bool)

(assert (=> d!1248111 (= (get!15248 lt!1506769) (v!41019 lt!1506769))))

(assert (=> b!4241810 d!1248111))

(declare-fun d!1248113 () Bool)

(assert (=> d!1248113 (= (inv!61656 (tag!8796 (h!52332 (t!350907 rules!2932)))) (= (mod (str.len (value!246597 (tag!8796 (h!52332 (t!350907 rules!2932))))) 2) 0))))

(assert (=> b!4241871 d!1248113))

(declare-fun d!1248115 () Bool)

(declare-fun res!1744309 () Bool)

(declare-fun e!2634550 () Bool)

(assert (=> d!1248115 (=> (not res!1744309) (not e!2634550))))

(assert (=> d!1248115 (= res!1744309 (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toValue!10688 (transformation!7932 (h!52332 (t!350907 rules!2932))))))))

(assert (=> d!1248115 (= (inv!61660 (transformation!7932 (h!52332 (t!350907 rules!2932)))) e!2634550)))

(declare-fun b!4242316 () Bool)

(assert (=> b!4242316 (= e!2634550 (equivClasses!3352 (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toValue!10688 (transformation!7932 (h!52332 (t!350907 rules!2932))))))))

(assert (= (and d!1248115 res!1744309) b!4242316))

(declare-fun m!4827797 () Bool)

(assert (=> d!1248115 m!4827797))

(declare-fun m!4827799 () Bool)

(assert (=> b!4242316 m!4827799))

(assert (=> b!4241871 d!1248115))

(declare-fun b!4242317 () Bool)

(declare-fun e!2634551 () Bool)

(assert (=> b!4242317 (= e!2634551 (inv!15 (value!246598 (h!52333 (t!350908 tokens!581)))))))

(declare-fun b!4242318 () Bool)

(declare-fun res!1744310 () Bool)

(assert (=> b!4242318 (=> res!1744310 e!2634551)))

(assert (=> b!4242318 (= res!1744310 (not ((_ is IntegerValue!24488) (value!246598 (h!52333 (t!350908 tokens!581))))))))

(declare-fun e!2634552 () Bool)

(assert (=> b!4242318 (= e!2634552 e!2634551)))

(declare-fun b!4242319 () Bool)

(declare-fun e!2634553 () Bool)

(assert (=> b!4242319 (= e!2634553 e!2634552)))

(declare-fun c!720753 () Bool)

(assert (=> b!4242319 (= c!720753 ((_ is IntegerValue!24487) (value!246598 (h!52333 (t!350908 tokens!581)))))))

(declare-fun b!4242320 () Bool)

(assert (=> b!4242320 (= e!2634552 (inv!17 (value!246598 (h!52333 (t!350908 tokens!581)))))))

(declare-fun b!4242321 () Bool)

(assert (=> b!4242321 (= e!2634553 (inv!16 (value!246598 (h!52333 (t!350908 tokens!581)))))))

(declare-fun d!1248117 () Bool)

(declare-fun c!720754 () Bool)

(assert (=> d!1248117 (= c!720754 ((_ is IntegerValue!24486) (value!246598 (h!52333 (t!350908 tokens!581)))))))

(assert (=> d!1248117 (= (inv!21 (value!246598 (h!52333 (t!350908 tokens!581)))) e!2634553)))

(assert (= (and d!1248117 c!720754) b!4242321))

(assert (= (and d!1248117 (not c!720754)) b!4242319))

(assert (= (and b!4242319 c!720753) b!4242320))

(assert (= (and b!4242319 (not c!720753)) b!4242318))

(assert (= (and b!4242318 (not res!1744310)) b!4242317))

(declare-fun m!4827801 () Bool)

(assert (=> b!4242317 m!4827801))

(declare-fun m!4827803 () Bool)

(assert (=> b!4242320 m!4827803))

(declare-fun m!4827805 () Bool)

(assert (=> b!4242321 m!4827805))

(assert (=> b!4241853 d!1248117))

(declare-fun d!1248119 () Bool)

(declare-fun c!720757 () Bool)

(assert (=> d!1248119 (= c!720757 ((_ is Nil!46911) lt!1506692))))

(declare-fun e!2634556 () (InoxSet C!25872))

(assert (=> d!1248119 (= (content!7375 lt!1506692) e!2634556)))

(declare-fun b!4242326 () Bool)

(assert (=> b!4242326 (= e!2634556 ((as const (Array C!25872 Bool)) false))))

(declare-fun b!4242327 () Bool)

(assert (=> b!4242327 (= e!2634556 ((_ map or) (store ((as const (Array C!25872 Bool)) false) (h!52331 lt!1506692) true) (content!7375 (t!350906 lt!1506692))))))

(assert (= (and d!1248119 c!720757) b!4242326))

(assert (= (and d!1248119 (not c!720757)) b!4242327))

(declare-fun m!4827807 () Bool)

(assert (=> b!4242327 m!4827807))

(declare-fun m!4827809 () Bool)

(assert (=> b!4242327 m!4827809))

(assert (=> d!1247793 d!1248119))

(declare-fun d!1248121 () Bool)

(declare-fun c!720758 () Bool)

(assert (=> d!1248121 (= c!720758 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))

(declare-fun e!2634557 () (InoxSet C!25872))

(assert (=> d!1248121 (= (content!7375 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) e!2634557)))

(declare-fun b!4242328 () Bool)

(assert (=> b!4242328 (= e!2634557 ((as const (Array C!25872 Bool)) false))))

(declare-fun b!4242329 () Bool)

(assert (=> b!4242329 (= e!2634557 ((_ map or) (store ((as const (Array C!25872 Bool)) false) (h!52331 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) true) (content!7375 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))))

(assert (= (and d!1248121 c!720758) b!4242328))

(assert (= (and d!1248121 (not c!720758)) b!4242329))

(declare-fun m!4827811 () Bool)

(assert (=> b!4242329 m!4827811))

(declare-fun m!4827813 () Bool)

(assert (=> b!4242329 m!4827813))

(assert (=> d!1247793 d!1248121))

(declare-fun d!1248123 () Bool)

(declare-fun c!720759 () Bool)

(assert (=> d!1248123 (= c!720759 ((_ is Nil!46911) (_2!25377 (v!41019 lt!1506680))))))

(declare-fun e!2634558 () (InoxSet C!25872))

(assert (=> d!1248123 (= (content!7375 (_2!25377 (v!41019 lt!1506680))) e!2634558)))

(declare-fun b!4242330 () Bool)

(assert (=> b!4242330 (= e!2634558 ((as const (Array C!25872 Bool)) false))))

(declare-fun b!4242331 () Bool)

(assert (=> b!4242331 (= e!2634558 ((_ map or) (store ((as const (Array C!25872 Bool)) false) (h!52331 (_2!25377 (v!41019 lt!1506680))) true) (content!7375 (t!350906 (_2!25377 (v!41019 lt!1506680))))))))

(assert (= (and d!1248123 c!720759) b!4242330))

(assert (= (and d!1248123 (not c!720759)) b!4242331))

(declare-fun m!4827815 () Bool)

(assert (=> b!4242331 m!4827815))

(declare-fun m!4827817 () Bool)

(assert (=> b!4242331 m!4827817))

(assert (=> d!1247793 d!1248123))

(declare-fun d!1248125 () Bool)

(declare-fun charsToInt!0 (List!47034) (_ BitVec 32))

(assert (=> d!1248125 (= (inv!16 (value!246598 (h!52333 addTokens!17))) (= (charsToInt!0 (text!57581 (value!246598 (h!52333 addTokens!17)))) (value!246589 (value!246598 (h!52333 addTokens!17)))))))

(declare-fun bs!598418 () Bool)

(assert (= bs!598418 d!1248125))

(declare-fun m!4827819 () Bool)

(assert (=> bs!598418 m!4827819))

(assert (=> b!4241646 d!1248125))

(declare-fun b!4242333 () Bool)

(declare-fun e!2634559 () List!47035)

(assert (=> b!4242333 (= e!2634559 (Cons!46911 (h!52331 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))) (++!11941 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))) (_2!25377 (get!15248 lt!1506769)))))))

(declare-fun b!4242332 () Bool)

(assert (=> b!4242332 (= e!2634559 (_2!25377 (get!15248 lt!1506769)))))

(declare-fun b!4242335 () Bool)

(declare-fun e!2634560 () Bool)

(declare-fun lt!1506868 () List!47035)

(assert (=> b!4242335 (= e!2634560 (or (not (= (_2!25377 (get!15248 lt!1506769)) Nil!46911)) (= lt!1506868 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))))))))

(declare-fun b!4242334 () Bool)

(declare-fun res!1744312 () Bool)

(assert (=> b!4242334 (=> (not res!1744312) (not e!2634560))))

(assert (=> b!4242334 (= res!1744312 (= (size!34364 lt!1506868) (+ (size!34364 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))) (size!34364 (_2!25377 (get!15248 lt!1506769))))))))

(declare-fun d!1248127 () Bool)

(assert (=> d!1248127 e!2634560))

(declare-fun res!1744311 () Bool)

(assert (=> d!1248127 (=> (not res!1744311) (not e!2634560))))

(assert (=> d!1248127 (= res!1744311 (= (content!7375 lt!1506868) ((_ map or) (content!7375 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))) (content!7375 (_2!25377 (get!15248 lt!1506769))))))))

(assert (=> d!1248127 (= lt!1506868 e!2634559)))

(declare-fun c!720760 () Bool)

(assert (=> d!1248127 (= c!720760 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))))))

(assert (=> d!1248127 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))) (_2!25377 (get!15248 lt!1506769))) lt!1506868)))

(assert (= (and d!1248127 c!720760) b!4242332))

(assert (= (and d!1248127 (not c!720760)) b!4242333))

(assert (= (and d!1248127 res!1744311) b!4242334))

(assert (= (and b!4242334 res!1744312) b!4242335))

(declare-fun m!4827821 () Bool)

(assert (=> b!4242333 m!4827821))

(declare-fun m!4827823 () Bool)

(assert (=> b!4242334 m!4827823))

(assert (=> b!4242334 m!4827161))

(declare-fun m!4827825 () Bool)

(assert (=> b!4242334 m!4827825))

(assert (=> b!4242334 m!4827185))

(declare-fun m!4827827 () Bool)

(assert (=> d!1248127 m!4827827))

(assert (=> d!1248127 m!4827161))

(declare-fun m!4827829 () Bool)

(assert (=> d!1248127 m!4827829))

(declare-fun m!4827831 () Bool)

(assert (=> d!1248127 m!4827831))

(assert (=> b!4241813 d!1248127))

(declare-fun d!1248129 () Bool)

(assert (=> d!1248129 (= (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))) (list!16915 (c!720623 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))))))

(declare-fun bs!598419 () Bool)

(assert (= bs!598419 d!1248129))

(declare-fun m!4827833 () Bool)

(assert (=> bs!598419 m!4827833))

(assert (=> b!4241813 d!1248129))

(declare-fun d!1248131 () Bool)

(declare-fun lt!1506869 () BalanceConc!27880)

(assert (=> d!1248131 (= (list!16913 lt!1506869) (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769))))))

(assert (=> d!1248131 (= lt!1506869 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))) (value!246598 (_1!25377 (get!15248 lt!1506769)))))))

(assert (=> d!1248131 (= (charsOf!5282 (_1!25377 (get!15248 lt!1506769))) lt!1506869)))

(declare-fun b_lambda!124939 () Bool)

(assert (=> (not b_lambda!124939) (not d!1248131)))

(declare-fun t!351165 () Bool)

(declare-fun tb!255311 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351165) tb!255311))

(declare-fun b!4242336 () Bool)

(declare-fun e!2634561 () Bool)

(declare-fun tp!1300518 () Bool)

(assert (=> b!4242336 (= e!2634561 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))) (value!246598 (_1!25377 (get!15248 lt!1506769)))))) tp!1300518))))

(declare-fun result!311328 () Bool)

(assert (=> tb!255311 (= result!311328 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))) (value!246598 (_1!25377 (get!15248 lt!1506769))))) e!2634561))))

(assert (= tb!255311 b!4242336))

(declare-fun m!4827835 () Bool)

(assert (=> b!4242336 m!4827835))

(declare-fun m!4827837 () Bool)

(assert (=> tb!255311 m!4827837))

(assert (=> d!1248131 t!351165))

(declare-fun b_and!335801 () Bool)

(assert (= b_and!335799 (and (=> t!351165 result!311328) b_and!335801)))

(declare-fun tb!255313 () Bool)

(declare-fun t!351167 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351167) tb!255313))

(declare-fun result!311330 () Bool)

(assert (= result!311330 result!311328))

(assert (=> d!1248131 t!351167))

(declare-fun b_and!335803 () Bool)

(assert (= b_and!335793 (and (=> t!351167 result!311330) b_and!335803)))

(declare-fun t!351169 () Bool)

(declare-fun tb!255315 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351169) tb!255315))

(declare-fun result!311332 () Bool)

(assert (= result!311332 result!311328))

(assert (=> d!1248131 t!351169))

(declare-fun b_and!335805 () Bool)

(assert (= b_and!335795 (and (=> t!351169 result!311332) b_and!335805)))

(declare-fun tb!255317 () Bool)

(declare-fun t!351171 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351171) tb!255317))

(declare-fun result!311334 () Bool)

(assert (= result!311334 result!311328))

(assert (=> d!1248131 t!351171))

(declare-fun b_and!335807 () Bool)

(assert (= b_and!335797 (and (=> t!351171 result!311334) b_and!335807)))

(declare-fun t!351173 () Bool)

(declare-fun tb!255319 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351173) tb!255319))

(declare-fun result!311336 () Bool)

(assert (= result!311336 result!311328))

(assert (=> d!1248131 t!351173))

(declare-fun b_and!335809 () Bool)

(assert (= b_and!335789 (and (=> t!351173 result!311336) b_and!335809)))

(declare-fun tb!255321 () Bool)

(declare-fun t!351175 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351175) tb!255321))

(declare-fun result!311338 () Bool)

(assert (= result!311338 result!311328))

(assert (=> d!1248131 t!351175))

(declare-fun b_and!335811 () Bool)

(assert (= b_and!335791 (and (=> t!351175 result!311338) b_and!335811)))

(declare-fun m!4827839 () Bool)

(assert (=> d!1248131 m!4827839))

(declare-fun m!4827841 () Bool)

(assert (=> d!1248131 m!4827841))

(assert (=> b!4241813 d!1248131))

(assert (=> b!4241813 d!1248111))

(declare-fun d!1248133 () Bool)

(assert (=> d!1248133 (= (list!16913 lt!1506750) (list!16915 (c!720623 lt!1506750)))))

(declare-fun bs!598420 () Bool)

(assert (= bs!598420 d!1248133))

(declare-fun m!4827843 () Bool)

(assert (=> bs!598420 m!4827843))

(assert (=> d!1247867 d!1248133))

(assert (=> b!4241811 d!1248129))

(assert (=> b!4241811 d!1248131))

(assert (=> b!4241811 d!1248111))

(declare-fun b!4242365 () Bool)

(declare-fun e!2634577 () Bool)

(declare-fun lt!1506872 () Bool)

(assert (=> b!4242365 (= e!2634577 (not lt!1506872))))

(declare-fun b!4242366 () Bool)

(declare-fun res!1744332 () Bool)

(declare-fun e!2634582 () Bool)

(assert (=> b!4242366 (=> res!1744332 e!2634582)))

(assert (=> b!4242366 (= res!1744332 (not ((_ is ElementMatch!12837) (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))))))

(assert (=> b!4242366 (= e!2634577 e!2634582)))

(declare-fun b!4242367 () Bool)

(declare-fun e!2634576 () Bool)

(assert (=> b!4242367 (= e!2634576 e!2634577)))

(declare-fun c!720769 () Bool)

(assert (=> b!4242367 (= c!720769 ((_ is EmptyLang!12837) (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))))))

(declare-fun b!4242368 () Bool)

(declare-fun e!2634578 () Bool)

(declare-fun nullable!4520 (Regex!12837) Bool)

(assert (=> b!4242368 (= e!2634578 (nullable!4520 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))))))

(declare-fun b!4242369 () Bool)

(declare-fun e!2634580 () Bool)

(assert (=> b!4242369 (= e!2634582 e!2634580)))

(declare-fun res!1744330 () Bool)

(assert (=> b!4242369 (=> (not res!1744330) (not e!2634580))))

(assert (=> b!4242369 (= res!1744330 (not lt!1506872))))

(declare-fun b!4242370 () Bool)

(declare-fun e!2634579 () Bool)

(assert (=> b!4242370 (= e!2634580 e!2634579)))

(declare-fun res!1744333 () Bool)

(assert (=> b!4242370 (=> res!1744333 e!2634579)))

(declare-fun call!293855 () Bool)

(assert (=> b!4242370 (= res!1744333 call!293855)))

(declare-fun b!4242371 () Bool)

(declare-fun derivativeStep!3851 (Regex!12837 C!25872) Regex!12837)

(assert (=> b!4242371 (= e!2634578 (matchR!6447 (derivativeStep!3851 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))) (head!8989 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))))) (tail!6842 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))))))))

(declare-fun b!4242372 () Bool)

(declare-fun res!1744329 () Bool)

(assert (=> b!4242372 (=> res!1744329 e!2634582)))

(declare-fun e!2634581 () Bool)

(assert (=> b!4242372 (= res!1744329 e!2634581)))

(declare-fun res!1744331 () Bool)

(assert (=> b!4242372 (=> (not res!1744331) (not e!2634581))))

(assert (=> b!4242372 (= res!1744331 lt!1506872)))

(declare-fun b!4242373 () Bool)

(declare-fun res!1744336 () Bool)

(assert (=> b!4242373 (=> (not res!1744336) (not e!2634581))))

(assert (=> b!4242373 (= res!1744336 (isEmpty!27733 (tail!6842 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764)))))))))

(declare-fun b!4242374 () Bool)

(assert (=> b!4242374 (= e!2634579 (not (= (head!8989 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))) (c!720622 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))))))))

(declare-fun d!1248135 () Bool)

(assert (=> d!1248135 e!2634576))

(declare-fun c!720768 () Bool)

(assert (=> d!1248135 (= c!720768 ((_ is EmptyExpr!12837) (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))))))

(assert (=> d!1248135 (= lt!1506872 e!2634578)))

(declare-fun c!720767 () Bool)

(assert (=> d!1248135 (= c!720767 (isEmpty!27733 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))))))

(declare-fun validRegex!5827 (Regex!12837) Bool)

(assert (=> d!1248135 (validRegex!5827 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))))

(assert (=> d!1248135 (= (matchR!6447 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))) lt!1506872)))

(declare-fun b!4242375 () Bool)

(declare-fun res!1744334 () Bool)

(assert (=> b!4242375 (=> res!1744334 e!2634579)))

(assert (=> b!4242375 (= res!1744334 (not (isEmpty!27733 (tail!6842 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))))))))

(declare-fun b!4242376 () Bool)

(declare-fun res!1744335 () Bool)

(assert (=> b!4242376 (=> (not res!1744335) (not e!2634581))))

(assert (=> b!4242376 (= res!1744335 (not call!293855))))

(declare-fun b!4242377 () Bool)

(assert (=> b!4242377 (= e!2634576 (= lt!1506872 call!293855))))

(declare-fun bm!293850 () Bool)

(assert (=> bm!293850 (= call!293855 (isEmpty!27733 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))))))

(declare-fun b!4242378 () Bool)

(assert (=> b!4242378 (= e!2634581 (= (head!8989 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506764))))) (c!720622 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))))))

(assert (= (and d!1248135 c!720767) b!4242368))

(assert (= (and d!1248135 (not c!720767)) b!4242371))

(assert (= (and d!1248135 c!720768) b!4242377))

(assert (= (and d!1248135 (not c!720768)) b!4242367))

(assert (= (and b!4242367 c!720769) b!4242365))

(assert (= (and b!4242367 (not c!720769)) b!4242366))

(assert (= (and b!4242366 (not res!1744332)) b!4242372))

(assert (= (and b!4242372 res!1744331) b!4242376))

(assert (= (and b!4242376 res!1744335) b!4242373))

(assert (= (and b!4242373 res!1744336) b!4242378))

(assert (= (and b!4242372 (not res!1744329)) b!4242369))

(assert (= (and b!4242369 res!1744330) b!4242370))

(assert (= (and b!4242370 (not res!1744333)) b!4242375))

(assert (= (and b!4242375 (not res!1744334)) b!4242374))

(assert (= (or b!4242377 b!4242376 b!4242370) bm!293850))

(assert (=> d!1248135 m!4827129))

(declare-fun m!4827845 () Bool)

(assert (=> d!1248135 m!4827845))

(declare-fun m!4827847 () Bool)

(assert (=> d!1248135 m!4827847))

(assert (=> b!4242375 m!4827129))

(declare-fun m!4827849 () Bool)

(assert (=> b!4242375 m!4827849))

(assert (=> b!4242375 m!4827849))

(declare-fun m!4827851 () Bool)

(assert (=> b!4242375 m!4827851))

(assert (=> b!4242378 m!4827129))

(declare-fun m!4827853 () Bool)

(assert (=> b!4242378 m!4827853))

(assert (=> b!4242373 m!4827129))

(assert (=> b!4242373 m!4827849))

(assert (=> b!4242373 m!4827849))

(assert (=> b!4242373 m!4827851))

(assert (=> b!4242374 m!4827129))

(assert (=> b!4242374 m!4827853))

(assert (=> b!4242371 m!4827129))

(assert (=> b!4242371 m!4827853))

(assert (=> b!4242371 m!4827853))

(declare-fun m!4827855 () Bool)

(assert (=> b!4242371 m!4827855))

(assert (=> b!4242371 m!4827129))

(assert (=> b!4242371 m!4827849))

(assert (=> b!4242371 m!4827855))

(assert (=> b!4242371 m!4827849))

(declare-fun m!4827857 () Bool)

(assert (=> b!4242371 m!4827857))

(assert (=> bm!293850 m!4827129))

(assert (=> bm!293850 m!4827845))

(declare-fun m!4827859 () Bool)

(assert (=> b!4242368 m!4827859))

(assert (=> b!4241806 d!1248135))

(assert (=> b!4241806 d!1248085))

(assert (=> b!4241806 d!1248081))

(assert (=> b!4241806 d!1248083))

(declare-fun d!1248137 () Bool)

(assert (=> d!1248137 (= (inv!61656 (tag!8796 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (= (mod (str.len (value!246597 (tag!8796 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) 2) 0))))

(assert (=> b!4241859 d!1248137))

(declare-fun d!1248139 () Bool)

(declare-fun res!1744337 () Bool)

(declare-fun e!2634583 () Bool)

(assert (=> d!1248139 (=> (not res!1744337) (not e!2634583))))

(assert (=> d!1248139 (= res!1744337 (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))))))

(assert (=> d!1248139 (= (inv!61660 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) e!2634583)))

(declare-fun b!4242379 () Bool)

(assert (=> b!4242379 (= e!2634583 (equivClasses!3352 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))))))

(assert (= (and d!1248139 res!1744337) b!4242379))

(declare-fun m!4827861 () Bool)

(assert (=> d!1248139 m!4827861))

(declare-fun m!4827863 () Bool)

(assert (=> b!4242379 m!4827863))

(assert (=> b!4241859 d!1248139))

(declare-fun d!1248141 () Bool)

(assert (=> d!1248141 (= (inv!16 (value!246598 (h!52333 tokens!581))) (= (charsToInt!0 (text!57581 (value!246598 (h!52333 tokens!581)))) (value!246589 (value!246598 (h!52333 tokens!581)))))))

(declare-fun bs!598421 () Bool)

(assert (= bs!598421 d!1248141))

(declare-fun m!4827865 () Bool)

(assert (=> bs!598421 m!4827865))

(assert (=> b!4241622 d!1248141))

(declare-fun b!4242380 () Bool)

(declare-fun e!2634585 () Bool)

(declare-fun lt!1506873 () Bool)

(assert (=> b!4242380 (= e!2634585 (not lt!1506873))))

(declare-fun b!4242381 () Bool)

(declare-fun res!1744341 () Bool)

(declare-fun e!2634590 () Bool)

(assert (=> b!4242381 (=> res!1744341 e!2634590)))

(assert (=> b!4242381 (= res!1744341 (not ((_ is ElementMatch!12837) (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))))))

(assert (=> b!4242381 (= e!2634585 e!2634590)))

(declare-fun b!4242382 () Bool)

(declare-fun e!2634584 () Bool)

(assert (=> b!4242382 (= e!2634584 e!2634585)))

(declare-fun c!720772 () Bool)

(assert (=> b!4242382 (= c!720772 ((_ is EmptyLang!12837) (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))))))

(declare-fun b!4242383 () Bool)

(declare-fun e!2634586 () Bool)

(assert (=> b!4242383 (= e!2634586 (nullable!4520 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))))))

(declare-fun b!4242384 () Bool)

(declare-fun e!2634588 () Bool)

(assert (=> b!4242384 (= e!2634590 e!2634588)))

(declare-fun res!1744339 () Bool)

(assert (=> b!4242384 (=> (not res!1744339) (not e!2634588))))

(assert (=> b!4242384 (= res!1744339 (not lt!1506873))))

(declare-fun b!4242385 () Bool)

(declare-fun e!2634587 () Bool)

(assert (=> b!4242385 (= e!2634588 e!2634587)))

(declare-fun res!1744342 () Bool)

(assert (=> b!4242385 (=> res!1744342 e!2634587)))

(declare-fun call!293856 () Bool)

(assert (=> b!4242385 (= res!1744342 call!293856)))

(declare-fun b!4242386 () Bool)

(assert (=> b!4242386 (= e!2634586 (matchR!6447 (derivativeStep!3851 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))) (head!8989 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))))) (tail!6842 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))))))))

(declare-fun b!4242387 () Bool)

(declare-fun res!1744338 () Bool)

(assert (=> b!4242387 (=> res!1744338 e!2634590)))

(declare-fun e!2634589 () Bool)

(assert (=> b!4242387 (= res!1744338 e!2634589)))

(declare-fun res!1744340 () Bool)

(assert (=> b!4242387 (=> (not res!1744340) (not e!2634589))))

(assert (=> b!4242387 (= res!1744340 lt!1506873)))

(declare-fun b!4242388 () Bool)

(declare-fun res!1744345 () Bool)

(assert (=> b!4242388 (=> (not res!1744345) (not e!2634589))))

(assert (=> b!4242388 (= res!1744345 (isEmpty!27733 (tail!6842 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769)))))))))

(declare-fun b!4242389 () Bool)

(assert (=> b!4242389 (= e!2634587 (not (= (head!8989 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))) (c!720622 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))))))))

(declare-fun d!1248143 () Bool)

(assert (=> d!1248143 e!2634584))

(declare-fun c!720771 () Bool)

(assert (=> d!1248143 (= c!720771 ((_ is EmptyExpr!12837) (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))))))

(assert (=> d!1248143 (= lt!1506873 e!2634586)))

(declare-fun c!720770 () Bool)

(assert (=> d!1248143 (= c!720770 (isEmpty!27733 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))))))

(assert (=> d!1248143 (validRegex!5827 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))))

(assert (=> d!1248143 (= (matchR!6447 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))) lt!1506873)))

(declare-fun b!4242390 () Bool)

(declare-fun res!1744343 () Bool)

(assert (=> b!4242390 (=> res!1744343 e!2634587)))

(assert (=> b!4242390 (= res!1744343 (not (isEmpty!27733 (tail!6842 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))))))))

(declare-fun b!4242391 () Bool)

(declare-fun res!1744344 () Bool)

(assert (=> b!4242391 (=> (not res!1744344) (not e!2634589))))

(assert (=> b!4242391 (= res!1744344 (not call!293856))))

(declare-fun b!4242392 () Bool)

(assert (=> b!4242392 (= e!2634584 (= lt!1506873 call!293856))))

(declare-fun bm!293851 () Bool)

(assert (=> bm!293851 (= call!293856 (isEmpty!27733 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))))))

(declare-fun b!4242393 () Bool)

(assert (=> b!4242393 (= e!2634589 (= (head!8989 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506769))))) (c!720622 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))))))

(assert (= (and d!1248143 c!720770) b!4242383))

(assert (= (and d!1248143 (not c!720770)) b!4242386))

(assert (= (and d!1248143 c!720771) b!4242392))

(assert (= (and d!1248143 (not c!720771)) b!4242382))

(assert (= (and b!4242382 c!720772) b!4242380))

(assert (= (and b!4242382 (not c!720772)) b!4242381))

(assert (= (and b!4242381 (not res!1744341)) b!4242387))

(assert (= (and b!4242387 res!1744340) b!4242391))

(assert (= (and b!4242391 res!1744344) b!4242388))

(assert (= (and b!4242388 res!1744345) b!4242393))

(assert (= (and b!4242387 (not res!1744338)) b!4242384))

(assert (= (and b!4242384 res!1744339) b!4242385))

(assert (= (and b!4242385 (not res!1744342)) b!4242390))

(assert (= (and b!4242390 (not res!1744343)) b!4242389))

(assert (= (or b!4242392 b!4242391 b!4242385) bm!293851))

(assert (=> d!1248143 m!4827161))

(declare-fun m!4827867 () Bool)

(assert (=> d!1248143 m!4827867))

(declare-fun m!4827869 () Bool)

(assert (=> d!1248143 m!4827869))

(assert (=> b!4242390 m!4827161))

(declare-fun m!4827871 () Bool)

(assert (=> b!4242390 m!4827871))

(assert (=> b!4242390 m!4827871))

(declare-fun m!4827873 () Bool)

(assert (=> b!4242390 m!4827873))

(assert (=> b!4242393 m!4827161))

(declare-fun m!4827875 () Bool)

(assert (=> b!4242393 m!4827875))

(assert (=> b!4242388 m!4827161))

(assert (=> b!4242388 m!4827871))

(assert (=> b!4242388 m!4827871))

(assert (=> b!4242388 m!4827873))

(assert (=> b!4242389 m!4827161))

(assert (=> b!4242389 m!4827875))

(assert (=> b!4242386 m!4827161))

(assert (=> b!4242386 m!4827875))

(assert (=> b!4242386 m!4827875))

(declare-fun m!4827877 () Bool)

(assert (=> b!4242386 m!4827877))

(assert (=> b!4242386 m!4827161))

(assert (=> b!4242386 m!4827871))

(assert (=> b!4242386 m!4827877))

(assert (=> b!4242386 m!4827871))

(declare-fun m!4827879 () Bool)

(assert (=> b!4242386 m!4827879))

(assert (=> bm!293851 m!4827161))

(assert (=> bm!293851 m!4827867))

(declare-fun m!4827881 () Bool)

(assert (=> b!4242383 m!4827881))

(assert (=> b!4241815 d!1248143))

(assert (=> b!4241815 d!1248111))

(assert (=> b!4241815 d!1248129))

(assert (=> b!4241815 d!1248131))

(declare-fun d!1248145 () Bool)

(declare-fun lt!1506874 () Int)

(assert (=> d!1248145 (>= lt!1506874 0)))

(declare-fun e!2634591 () Int)

(assert (=> d!1248145 (= lt!1506874 e!2634591)))

(declare-fun c!720773 () Bool)

(assert (=> d!1248145 (= c!720773 ((_ is Nil!46911) (t!350906 longerInput!51)))))

(assert (=> d!1248145 (= (size!34364 (t!350906 longerInput!51)) lt!1506874)))

(declare-fun b!4242394 () Bool)

(assert (=> b!4242394 (= e!2634591 0)))

(declare-fun b!4242395 () Bool)

(assert (=> b!4242395 (= e!2634591 (+ 1 (size!34364 (t!350906 (t!350906 longerInput!51)))))))

(assert (= (and d!1248145 c!720773) b!4242394))

(assert (= (and d!1248145 (not c!720773)) b!4242395))

(declare-fun m!4827883 () Bool)

(assert (=> b!4242395 m!4827883))

(assert (=> b!4241779 d!1248145))

(declare-fun d!1248147 () Bool)

(assert (=> d!1248147 (= (list!16913 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))) (list!16915 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))))))

(declare-fun bs!598422 () Bool)

(assert (= bs!598422 d!1248147))

(declare-fun m!4827885 () Bool)

(assert (=> bs!598422 m!4827885))

(assert (=> b!4241773 d!1248147))

(declare-fun d!1248149 () Bool)

(declare-fun c!720776 () Bool)

(assert (=> d!1248149 (= c!720776 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))))))

(declare-fun e!2634596 () Bool)

(assert (=> d!1248149 (= (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))) e!2634596)))

(declare-fun b!4242402 () Bool)

(declare-fun inv!61667 (Conc!14143) Bool)

(assert (=> b!4242402 (= e!2634596 (inv!61667 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))))))

(declare-fun b!4242403 () Bool)

(declare-fun e!2634597 () Bool)

(assert (=> b!4242403 (= e!2634596 e!2634597)))

(declare-fun res!1744348 () Bool)

(assert (=> b!4242403 (= res!1744348 (not ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))))))))

(assert (=> b!4242403 (=> res!1744348 e!2634597)))

(declare-fun b!4242404 () Bool)

(declare-fun inv!61668 (Conc!14143) Bool)

(assert (=> b!4242404 (= e!2634597 (inv!61668 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))))))

(assert (= (and d!1248149 c!720776) b!4242402))

(assert (= (and d!1248149 (not c!720776)) b!4242403))

(assert (= (and b!4242403 (not res!1744348)) b!4242404))

(declare-fun m!4827887 () Bool)

(assert (=> b!4242402 m!4827887))

(declare-fun m!4827889 () Bool)

(assert (=> b!4242404 m!4827889))

(assert (=> b!4241551 d!1248149))

(declare-fun d!1248151 () Bool)

(assert (=> d!1248151 (= (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))) (isBalanced!3760 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))))))

(declare-fun bs!598423 () Bool)

(assert (= bs!598423 d!1248151))

(declare-fun m!4827891 () Bool)

(assert (=> bs!598423 m!4827891))

(assert (=> tb!255119 d!1248151))

(declare-fun d!1248153 () Bool)

(assert (=> d!1248153 (= (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))) (isBalanced!3760 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))))))

(declare-fun bs!598424 () Bool)

(assert (= bs!598424 d!1248153))

(declare-fun m!4827893 () Bool)

(assert (=> bs!598424 m!4827893))

(assert (=> tb!255065 d!1248153))

(declare-fun d!1248155 () Bool)

(declare-fun c!720777 () Bool)

(assert (=> d!1248155 (= c!720777 ((_ is Nil!46911) lt!1506749))))

(declare-fun e!2634598 () (InoxSet C!25872))

(assert (=> d!1248155 (= (content!7375 lt!1506749) e!2634598)))

(declare-fun b!4242405 () Bool)

(assert (=> b!4242405 (= e!2634598 ((as const (Array C!25872 Bool)) false))))

(declare-fun b!4242406 () Bool)

(assert (=> b!4242406 (= e!2634598 ((_ map or) (store ((as const (Array C!25872 Bool)) false) (h!52331 lt!1506749) true) (content!7375 (t!350906 lt!1506749))))))

(assert (= (and d!1248155 c!720777) b!4242405))

(assert (= (and d!1248155 (not c!720777)) b!4242406))

(declare-fun m!4827895 () Bool)

(assert (=> b!4242406 m!4827895))

(declare-fun m!4827897 () Bool)

(assert (=> b!4242406 m!4827897))

(assert (=> d!1247863 d!1248155))

(declare-fun d!1248157 () Bool)

(declare-fun c!720778 () Bool)

(assert (=> d!1248157 (= c!720778 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))

(declare-fun e!2634599 () (InoxSet C!25872))

(assert (=> d!1248157 (= (content!7375 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) e!2634599)))

(declare-fun b!4242407 () Bool)

(assert (=> b!4242407 (= e!2634599 ((as const (Array C!25872 Bool)) false))))

(declare-fun b!4242408 () Bool)

(assert (=> b!4242408 (= e!2634599 ((_ map or) (store ((as const (Array C!25872 Bool)) false) (h!52331 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) true) (content!7375 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))))

(assert (= (and d!1248157 c!720778) b!4242407))

(assert (= (and d!1248157 (not c!720778)) b!4242408))

(declare-fun m!4827899 () Bool)

(assert (=> b!4242408 m!4827899))

(assert (=> b!4242408 m!4827755))

(assert (=> d!1247863 d!1248157))

(declare-fun d!1248159 () Bool)

(declare-fun c!720779 () Bool)

(assert (=> d!1248159 (= c!720779 ((_ is Nil!46911) (_2!25377 (v!41019 lt!1506681))))))

(declare-fun e!2634600 () (InoxSet C!25872))

(assert (=> d!1248159 (= (content!7375 (_2!25377 (v!41019 lt!1506681))) e!2634600)))

(declare-fun b!4242409 () Bool)

(assert (=> b!4242409 (= e!2634600 ((as const (Array C!25872 Bool)) false))))

(declare-fun b!4242410 () Bool)

(assert (=> b!4242410 (= e!2634600 ((_ map or) (store ((as const (Array C!25872 Bool)) false) (h!52331 (_2!25377 (v!41019 lt!1506681))) true) (content!7375 (t!350906 (_2!25377 (v!41019 lt!1506681))))))))

(assert (= (and d!1248159 c!720779) b!4242409))

(assert (= (and d!1248159 (not c!720779)) b!4242410))

(declare-fun m!4827901 () Bool)

(assert (=> b!4242410 m!4827901))

(declare-fun m!4827903 () Bool)

(assert (=> b!4242410 m!4827903))

(assert (=> d!1247863 d!1248159))

(declare-fun b!4242412 () Bool)

(declare-fun e!2634601 () List!47035)

(assert (=> b!4242412 (= e!2634601 (Cons!46911 (h!52331 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))) (++!11941 (t!350906 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))) (_2!25377 (v!41019 lt!1506680)))))))

(declare-fun b!4242411 () Bool)

(assert (=> b!4242411 (= e!2634601 (_2!25377 (v!41019 lt!1506680)))))

(declare-fun b!4242414 () Bool)

(declare-fun e!2634602 () Bool)

(declare-fun lt!1506875 () List!47035)

(assert (=> b!4242414 (= e!2634602 (or (not (= (_2!25377 (v!41019 lt!1506680)) Nil!46911)) (= lt!1506875 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))))

(declare-fun b!4242413 () Bool)

(declare-fun res!1744350 () Bool)

(assert (=> b!4242413 (=> (not res!1744350) (not e!2634602))))

(assert (=> b!4242413 (= res!1744350 (= (size!34364 lt!1506875) (+ (size!34364 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))) (size!34364 (_2!25377 (v!41019 lt!1506680))))))))

(declare-fun d!1248161 () Bool)

(assert (=> d!1248161 e!2634602))

(declare-fun res!1744349 () Bool)

(assert (=> d!1248161 (=> (not res!1744349) (not e!2634602))))

(assert (=> d!1248161 (= res!1744349 (= (content!7375 lt!1506875) ((_ map or) (content!7375 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))) (content!7375 (_2!25377 (v!41019 lt!1506680))))))))

(assert (=> d!1248161 (= lt!1506875 e!2634601)))

(declare-fun c!720780 () Bool)

(assert (=> d!1248161 (= c!720780 ((_ is Nil!46911) (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))))))

(assert (=> d!1248161 (= (++!11941 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) (_2!25377 (v!41019 lt!1506680))) lt!1506875)))

(assert (= (and d!1248161 c!720780) b!4242411))

(assert (= (and d!1248161 (not c!720780)) b!4242412))

(assert (= (and d!1248161 res!1744349) b!4242413))

(assert (= (and b!4242413 res!1744350) b!4242414))

(declare-fun m!4827905 () Bool)

(assert (=> b!4242412 m!4827905))

(declare-fun m!4827907 () Bool)

(assert (=> b!4242413 m!4827907))

(declare-fun m!4827909 () Bool)

(assert (=> b!4242413 m!4827909))

(assert (=> b!4242413 m!4826809))

(declare-fun m!4827911 () Bool)

(assert (=> d!1248161 m!4827911))

(assert (=> d!1248161 m!4827813))

(assert (=> d!1248161 m!4826847))

(assert (=> b!4241540 d!1248161))

(declare-fun d!1248163 () Bool)

(assert (=> d!1248163 (= (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))) (isBalanced!3760 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))))))

(declare-fun bs!598425 () Bool)

(assert (= bs!598425 d!1248163))

(declare-fun m!4827913 () Bool)

(assert (=> bs!598425 m!4827913))

(assert (=> tb!255125 d!1248163))

(declare-fun bs!598426 () Bool)

(declare-fun d!1248165 () Bool)

(assert (= bs!598426 (and d!1248165 d!1248093)))

(declare-fun lambda!130166 () Int)

(assert (=> bs!598426 (= (= (toValue!10688 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (= lambda!130166 lambda!130165))))

(assert (=> d!1248165 true))

(assert (=> d!1248165 (< (dynLambda!20119 order!24699 (toValue!10688 (transformation!7932 (h!52332 rules!2932)))) (dynLambda!20120 order!24701 lambda!130166))))

(assert (=> d!1248165 (= (equivClasses!3352 (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (h!52332 rules!2932)))) (Forall2!1197 lambda!130166))))

(declare-fun bs!598427 () Bool)

(assert (= bs!598427 d!1248165))

(declare-fun m!4827915 () Bool)

(assert (=> bs!598427 m!4827915))

(assert (=> b!4241780 d!1248165))

(declare-fun d!1248167 () Bool)

(declare-fun lt!1506876 () Int)

(assert (=> d!1248167 (>= lt!1506876 0)))

(declare-fun e!2634603 () Int)

(assert (=> d!1248167 (= lt!1506876 e!2634603)))

(declare-fun c!720781 () Bool)

(assert (=> d!1248167 (= c!720781 ((_ is Nil!46911) (originalCharacters!8276 (h!52333 tokens!581))))))

(assert (=> d!1248167 (= (size!34364 (originalCharacters!8276 (h!52333 tokens!581))) lt!1506876)))

(declare-fun b!4242415 () Bool)

(assert (=> b!4242415 (= e!2634603 0)))

(declare-fun b!4242416 () Bool)

(assert (=> b!4242416 (= e!2634603 (+ 1 (size!34364 (t!350906 (originalCharacters!8276 (h!52333 tokens!581))))))))

(assert (= (and d!1248167 c!720781) b!4242415))

(assert (= (and d!1248167 (not c!720781)) b!4242416))

(declare-fun m!4827917 () Bool)

(assert (=> b!4242416 m!4827917))

(assert (=> b!4241676 d!1248167))

(declare-fun d!1248169 () Bool)

(declare-fun c!720782 () Bool)

(assert (=> d!1248169 (= c!720782 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))))))

(declare-fun e!2634604 () Bool)

(assert (=> d!1248169 (= (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))) e!2634604)))

(declare-fun b!4242417 () Bool)

(assert (=> b!4242417 (= e!2634604 (inv!61667 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))))))

(declare-fun b!4242418 () Bool)

(declare-fun e!2634605 () Bool)

(assert (=> b!4242418 (= e!2634604 e!2634605)))

(declare-fun res!1744351 () Bool)

(assert (=> b!4242418 (= res!1744351 (not ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))))))))

(assert (=> b!4242418 (=> res!1744351 e!2634605)))

(declare-fun b!4242419 () Bool)

(assert (=> b!4242419 (= e!2634605 (inv!61668 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))))))

(assert (= (and d!1248169 c!720782) b!4242417))

(assert (= (and d!1248169 (not c!720782)) b!4242418))

(assert (= (and b!4242418 (not res!1744351)) b!4242419))

(declare-fun m!4827919 () Bool)

(assert (=> b!4242417 m!4827919))

(declare-fun m!4827921 () Bool)

(assert (=> b!4242419 m!4827921))

(assert (=> b!4241772 d!1248169))

(declare-fun b!4242438 () Bool)

(declare-fun e!2634614 () Bool)

(declare-fun lt!1506891 () Option!10068)

(assert (=> b!4242438 (= e!2634614 (= (size!34363 (_1!25377 (get!15248 lt!1506891))) (size!34364 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506891))))))))

(declare-fun b!4242439 () Bool)

(declare-fun e!2634617 () Option!10068)

(declare-datatypes ((tuple2!44492 0))(
  ( (tuple2!44493 (_1!25380 List!47035) (_2!25380 List!47035)) )
))
(declare-fun lt!1506889 () tuple2!44492)

(declare-fun size!34367 (BalanceConc!27880) Int)

(assert (=> b!4242439 (= e!2634617 (Some!10067 (tuple2!44487 (Token!14491 (apply!10752 (transformation!7932 (h!52332 rules!2932)) (seqFromList!5812 (_1!25380 lt!1506889))) (h!52332 rules!2932) (size!34367 (seqFromList!5812 (_1!25380 lt!1506889))) (_1!25380 lt!1506889)) (_2!25380 lt!1506889))))))

(declare-fun lt!1506890 () Unit!65979)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1669 (Regex!12837 List!47035) Unit!65979)

(assert (=> b!4242439 (= lt!1506890 (longestMatchIsAcceptedByMatchOrIsEmpty!1669 (regex!7932 (h!52332 rules!2932)) shorterInput!51))))

(declare-fun res!1744367 () Bool)

(declare-fun findLongestMatchInner!1706 (Regex!12837 List!47035 Int List!47035 List!47035 Int) tuple2!44492)

(assert (=> b!4242439 (= res!1744367 (isEmpty!27733 (_1!25380 (findLongestMatchInner!1706 (regex!7932 (h!52332 rules!2932)) Nil!46911 (size!34364 Nil!46911) shorterInput!51 shorterInput!51 (size!34364 shorterInput!51)))))))

(declare-fun e!2634615 () Bool)

(assert (=> b!4242439 (=> res!1744367 e!2634615)))

(assert (=> b!4242439 e!2634615))

(declare-fun lt!1506887 () Unit!65979)

(assert (=> b!4242439 (= lt!1506887 lt!1506890)))

(declare-fun lt!1506888 () Unit!65979)

(declare-fun lemmaSemiInverse!2537 (TokenValueInjection!15752 BalanceConc!27880) Unit!65979)

(assert (=> b!4242439 (= lt!1506888 (lemmaSemiInverse!2537 (transformation!7932 (h!52332 rules!2932)) (seqFromList!5812 (_1!25380 lt!1506889))))))

(declare-fun b!4242440 () Bool)

(declare-fun res!1744368 () Bool)

(assert (=> b!4242440 (=> (not res!1744368) (not e!2634614))))

(assert (=> b!4242440 (= res!1744368 (= (rule!11060 (_1!25377 (get!15248 lt!1506891))) (h!52332 rules!2932)))))

(declare-fun b!4242441 () Bool)

(declare-fun res!1744371 () Bool)

(assert (=> b!4242441 (=> (not res!1744371) (not e!2634614))))

(assert (=> b!4242441 (= res!1744371 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506891)))) (_2!25377 (get!15248 lt!1506891))) shorterInput!51))))

(declare-fun b!4242442 () Bool)

(declare-fun res!1744370 () Bool)

(assert (=> b!4242442 (=> (not res!1744370) (not e!2634614))))

(assert (=> b!4242442 (= res!1744370 (< (size!34364 (_2!25377 (get!15248 lt!1506891))) (size!34364 shorterInput!51)))))

(declare-fun d!1248171 () Bool)

(declare-fun e!2634616 () Bool)

(assert (=> d!1248171 e!2634616))

(declare-fun res!1744372 () Bool)

(assert (=> d!1248171 (=> res!1744372 e!2634616)))

(assert (=> d!1248171 (= res!1744372 (isEmpty!27737 lt!1506891))))

(assert (=> d!1248171 (= lt!1506891 e!2634617)))

(declare-fun c!720785 () Bool)

(assert (=> d!1248171 (= c!720785 (isEmpty!27733 (_1!25380 lt!1506889)))))

(declare-fun findLongestMatch!1609 (Regex!12837 List!47035) tuple2!44492)

(assert (=> d!1248171 (= lt!1506889 (findLongestMatch!1609 (regex!7932 (h!52332 rules!2932)) shorterInput!51))))

(assert (=> d!1248171 (ruleValid!3601 thiss!21540 (h!52332 rules!2932))))

(assert (=> d!1248171 (= (maxPrefixOneRule!3450 thiss!21540 (h!52332 rules!2932) shorterInput!51) lt!1506891)))

(declare-fun b!4242443 () Bool)

(assert (=> b!4242443 (= e!2634616 e!2634614)))

(declare-fun res!1744366 () Bool)

(assert (=> b!4242443 (=> (not res!1744366) (not e!2634614))))

(assert (=> b!4242443 (= res!1744366 (matchR!6447 (regex!7932 (h!52332 rules!2932)) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506891))))))))

(declare-fun b!4242444 () Bool)

(assert (=> b!4242444 (= e!2634615 (matchR!6447 (regex!7932 (h!52332 rules!2932)) (_1!25380 (findLongestMatchInner!1706 (regex!7932 (h!52332 rules!2932)) Nil!46911 (size!34364 Nil!46911) shorterInput!51 shorterInput!51 (size!34364 shorterInput!51)))))))

(declare-fun b!4242445 () Bool)

(assert (=> b!4242445 (= e!2634617 None!10067)))

(declare-fun b!4242446 () Bool)

(declare-fun res!1744369 () Bool)

(assert (=> b!4242446 (=> (not res!1744369) (not e!2634614))))

(assert (=> b!4242446 (= res!1744369 (= (value!246598 (_1!25377 (get!15248 lt!1506891))) (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506891)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506891)))))))))

(assert (= (and d!1248171 c!720785) b!4242445))

(assert (= (and d!1248171 (not c!720785)) b!4242439))

(assert (= (and b!4242439 (not res!1744367)) b!4242444))

(assert (= (and d!1248171 (not res!1744372)) b!4242443))

(assert (= (and b!4242443 res!1744366) b!4242441))

(assert (= (and b!4242441 res!1744371) b!4242442))

(assert (= (and b!4242442 res!1744370) b!4242440))

(assert (= (and b!4242440 res!1744368) b!4242446))

(assert (= (and b!4242446 res!1744369) b!4242438))

(declare-fun m!4827923 () Bool)

(assert (=> b!4242439 m!4827923))

(declare-fun m!4827925 () Bool)

(assert (=> b!4242439 m!4827925))

(declare-fun m!4827927 () Bool)

(assert (=> b!4242439 m!4827927))

(assert (=> b!4242439 m!4826763))

(assert (=> b!4242439 m!4827923))

(declare-fun m!4827929 () Bool)

(assert (=> b!4242439 m!4827929))

(assert (=> b!4242439 m!4827927))

(assert (=> b!4242439 m!4826763))

(declare-fun m!4827931 () Bool)

(assert (=> b!4242439 m!4827931))

(assert (=> b!4242439 m!4827923))

(declare-fun m!4827933 () Bool)

(assert (=> b!4242439 m!4827933))

(declare-fun m!4827935 () Bool)

(assert (=> b!4242439 m!4827935))

(assert (=> b!4242439 m!4827923))

(declare-fun m!4827937 () Bool)

(assert (=> b!4242439 m!4827937))

(declare-fun m!4827939 () Bool)

(assert (=> b!4242442 m!4827939))

(declare-fun m!4827941 () Bool)

(assert (=> b!4242442 m!4827941))

(assert (=> b!4242442 m!4826763))

(assert (=> b!4242446 m!4827939))

(declare-fun m!4827943 () Bool)

(assert (=> b!4242446 m!4827943))

(assert (=> b!4242446 m!4827943))

(declare-fun m!4827945 () Bool)

(assert (=> b!4242446 m!4827945))

(assert (=> b!4242444 m!4827927))

(assert (=> b!4242444 m!4826763))

(assert (=> b!4242444 m!4827927))

(assert (=> b!4242444 m!4826763))

(assert (=> b!4242444 m!4827931))

(declare-fun m!4827947 () Bool)

(assert (=> b!4242444 m!4827947))

(assert (=> b!4242440 m!4827939))

(assert (=> b!4242438 m!4827939))

(declare-fun m!4827949 () Bool)

(assert (=> b!4242438 m!4827949))

(declare-fun m!4827951 () Bool)

(assert (=> d!1248171 m!4827951))

(declare-fun m!4827953 () Bool)

(assert (=> d!1248171 m!4827953))

(declare-fun m!4827955 () Bool)

(assert (=> d!1248171 m!4827955))

(assert (=> d!1248171 m!4827693))

(assert (=> b!4242443 m!4827939))

(declare-fun m!4827957 () Bool)

(assert (=> b!4242443 m!4827957))

(assert (=> b!4242443 m!4827957))

(declare-fun m!4827959 () Bool)

(assert (=> b!4242443 m!4827959))

(assert (=> b!4242443 m!4827959))

(declare-fun m!4827961 () Bool)

(assert (=> b!4242443 m!4827961))

(assert (=> b!4242441 m!4827939))

(assert (=> b!4242441 m!4827957))

(assert (=> b!4242441 m!4827957))

(assert (=> b!4242441 m!4827959))

(assert (=> b!4242441 m!4827959))

(declare-fun m!4827963 () Bool)

(assert (=> b!4242441 m!4827963))

(assert (=> bm!293840 d!1248171))

(declare-fun d!1248173 () Bool)

(assert (=> d!1248173 (= (isDefined!7440 lt!1506769) (not (isEmpty!27737 lt!1506769)))))

(declare-fun bs!598428 () Bool)

(assert (= bs!598428 d!1248173))

(assert (=> bs!598428 m!4827169))

(assert (=> b!4241809 d!1248173))

(declare-fun d!1248175 () Bool)

(declare-fun res!1744377 () Bool)

(declare-fun e!2634622 () Bool)

(assert (=> d!1248175 (=> res!1744377 e!2634622)))

(assert (=> d!1248175 (= res!1744377 ((_ is Nil!46912) rules!2932))))

(assert (=> d!1248175 (= (noDuplicateTag!3237 thiss!21540 rules!2932 Nil!46915) e!2634622)))

(declare-fun b!4242451 () Bool)

(declare-fun e!2634623 () Bool)

(assert (=> b!4242451 (= e!2634622 e!2634623)))

(declare-fun res!1744378 () Bool)

(assert (=> b!4242451 (=> (not res!1744378) (not e!2634623))))

(declare-fun contains!9730 (List!47039 String!54740) Bool)

(assert (=> b!4242451 (= res!1744378 (not (contains!9730 Nil!46915 (tag!8796 (h!52332 rules!2932)))))))

(declare-fun b!4242452 () Bool)

(assert (=> b!4242452 (= e!2634623 (noDuplicateTag!3237 thiss!21540 (t!350907 rules!2932) (Cons!46915 (tag!8796 (h!52332 rules!2932)) Nil!46915)))))

(assert (= (and d!1248175 (not res!1744377)) b!4242451))

(assert (= (and b!4242451 res!1744378) b!4242452))

(declare-fun m!4827965 () Bool)

(assert (=> b!4242451 m!4827965))

(declare-fun m!4827967 () Bool)

(assert (=> b!4242452 m!4827967))

(assert (=> b!4241592 d!1248175))

(declare-fun b!4242461 () Bool)

(declare-fun e!2634628 () List!47035)

(assert (=> b!4242461 (= e!2634628 Nil!46911)))

(declare-fun b!4242462 () Bool)

(declare-fun e!2634629 () List!47035)

(assert (=> b!4242462 (= e!2634628 e!2634629)))

(declare-fun c!720791 () Bool)

(assert (=> b!4242462 (= c!720791 ((_ is Leaf!21868) (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))

(declare-fun d!1248177 () Bool)

(declare-fun c!720790 () Bool)

(assert (=> d!1248177 (= c!720790 ((_ is Empty!14143) (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))

(assert (=> d!1248177 (= (list!16915 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) e!2634628)))

(declare-fun b!4242464 () Bool)

(assert (=> b!4242464 (= e!2634629 (++!11941 (list!16915 (left!34855 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))) (list!16915 (right!35185 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))))

(declare-fun b!4242463 () Bool)

(declare-fun list!16917 (IArray!28291) List!47035)

(assert (=> b!4242463 (= e!2634629 (list!16917 (xs!17449 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506681)))))))))

(assert (= (and d!1248177 c!720790) b!4242461))

(assert (= (and d!1248177 (not c!720790)) b!4242462))

(assert (= (and b!4242462 c!720791) b!4242463))

(assert (= (and b!4242462 (not c!720791)) b!4242464))

(declare-fun m!4827969 () Bool)

(assert (=> b!4242464 m!4827969))

(declare-fun m!4827971 () Bool)

(assert (=> b!4242464 m!4827971))

(assert (=> b!4242464 m!4827969))

(assert (=> b!4242464 m!4827971))

(declare-fun m!4827973 () Bool)

(assert (=> b!4242464 m!4827973))

(declare-fun m!4827975 () Bool)

(assert (=> b!4242463 m!4827975))

(assert (=> d!1247865 d!1248177))

(declare-fun d!1248179 () Bool)

(declare-fun charsToBigInt!1 (List!47034) Int)

(assert (=> d!1248179 (= (inv!17 (value!246598 (h!52333 tokens!581))) (= (charsToBigInt!1 (text!57582 (value!246598 (h!52333 tokens!581)))) (value!246590 (value!246598 (h!52333 tokens!581)))))))

(declare-fun bs!598429 () Bool)

(assert (= bs!598429 d!1248179))

(declare-fun m!4827977 () Bool)

(assert (=> bs!598429 m!4827977))

(assert (=> b!4241621 d!1248179))

(declare-fun b!4242465 () Bool)

(declare-fun e!2634630 () Bool)

(declare-fun lt!1506896 () Option!10068)

(assert (=> b!4242465 (= e!2634630 (= (size!34363 (_1!25377 (get!15248 lt!1506896))) (size!34364 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506896))))))))

(declare-fun b!4242466 () Bool)

(declare-fun e!2634633 () Option!10068)

(declare-fun lt!1506894 () tuple2!44492)

(assert (=> b!4242466 (= e!2634633 (Some!10067 (tuple2!44487 (Token!14491 (apply!10752 (transformation!7932 (h!52332 rules!2932)) (seqFromList!5812 (_1!25380 lt!1506894))) (h!52332 rules!2932) (size!34367 (seqFromList!5812 (_1!25380 lt!1506894))) (_1!25380 lt!1506894)) (_2!25380 lt!1506894))))))

(declare-fun lt!1506895 () Unit!65979)

(assert (=> b!4242466 (= lt!1506895 (longestMatchIsAcceptedByMatchOrIsEmpty!1669 (regex!7932 (h!52332 rules!2932)) longerInput!51))))

(declare-fun res!1744380 () Bool)

(assert (=> b!4242466 (= res!1744380 (isEmpty!27733 (_1!25380 (findLongestMatchInner!1706 (regex!7932 (h!52332 rules!2932)) Nil!46911 (size!34364 Nil!46911) longerInput!51 longerInput!51 (size!34364 longerInput!51)))))))

(declare-fun e!2634631 () Bool)

(assert (=> b!4242466 (=> res!1744380 e!2634631)))

(assert (=> b!4242466 e!2634631))

(declare-fun lt!1506892 () Unit!65979)

(assert (=> b!4242466 (= lt!1506892 lt!1506895)))

(declare-fun lt!1506893 () Unit!65979)

(assert (=> b!4242466 (= lt!1506893 (lemmaSemiInverse!2537 (transformation!7932 (h!52332 rules!2932)) (seqFromList!5812 (_1!25380 lt!1506894))))))

(declare-fun b!4242467 () Bool)

(declare-fun res!1744381 () Bool)

(assert (=> b!4242467 (=> (not res!1744381) (not e!2634630))))

(assert (=> b!4242467 (= res!1744381 (= (rule!11060 (_1!25377 (get!15248 lt!1506896))) (h!52332 rules!2932)))))

(declare-fun b!4242468 () Bool)

(declare-fun res!1744384 () Bool)

(assert (=> b!4242468 (=> (not res!1744384) (not e!2634630))))

(assert (=> b!4242468 (= res!1744384 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506896)))) (_2!25377 (get!15248 lt!1506896))) longerInput!51))))

(declare-fun b!4242469 () Bool)

(declare-fun res!1744383 () Bool)

(assert (=> b!4242469 (=> (not res!1744383) (not e!2634630))))

(assert (=> b!4242469 (= res!1744383 (< (size!34364 (_2!25377 (get!15248 lt!1506896))) (size!34364 longerInput!51)))))

(declare-fun d!1248181 () Bool)

(declare-fun e!2634632 () Bool)

(assert (=> d!1248181 e!2634632))

(declare-fun res!1744385 () Bool)

(assert (=> d!1248181 (=> res!1744385 e!2634632)))

(assert (=> d!1248181 (= res!1744385 (isEmpty!27737 lt!1506896))))

(assert (=> d!1248181 (= lt!1506896 e!2634633)))

(declare-fun c!720792 () Bool)

(assert (=> d!1248181 (= c!720792 (isEmpty!27733 (_1!25380 lt!1506894)))))

(assert (=> d!1248181 (= lt!1506894 (findLongestMatch!1609 (regex!7932 (h!52332 rules!2932)) longerInput!51))))

(assert (=> d!1248181 (ruleValid!3601 thiss!21540 (h!52332 rules!2932))))

(assert (=> d!1248181 (= (maxPrefixOneRule!3450 thiss!21540 (h!52332 rules!2932) longerInput!51) lt!1506896)))

(declare-fun b!4242470 () Bool)

(assert (=> b!4242470 (= e!2634632 e!2634630)))

(declare-fun res!1744379 () Bool)

(assert (=> b!4242470 (=> (not res!1744379) (not e!2634630))))

(assert (=> b!4242470 (= res!1744379 (matchR!6447 (regex!7932 (h!52332 rules!2932)) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506896))))))))

(declare-fun b!4242471 () Bool)

(assert (=> b!4242471 (= e!2634631 (matchR!6447 (regex!7932 (h!52332 rules!2932)) (_1!25380 (findLongestMatchInner!1706 (regex!7932 (h!52332 rules!2932)) Nil!46911 (size!34364 Nil!46911) longerInput!51 longerInput!51 (size!34364 longerInput!51)))))))

(declare-fun b!4242472 () Bool)

(assert (=> b!4242472 (= e!2634633 None!10067)))

(declare-fun b!4242473 () Bool)

(declare-fun res!1744382 () Bool)

(assert (=> b!4242473 (=> (not res!1744382) (not e!2634630))))

(assert (=> b!4242473 (= res!1744382 (= (value!246598 (_1!25377 (get!15248 lt!1506896))) (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506896)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506896)))))))))

(assert (= (and d!1248181 c!720792) b!4242472))

(assert (= (and d!1248181 (not c!720792)) b!4242466))

(assert (= (and b!4242466 (not res!1744380)) b!4242471))

(assert (= (and d!1248181 (not res!1744385)) b!4242470))

(assert (= (and b!4242470 res!1744379) b!4242468))

(assert (= (and b!4242468 res!1744384) b!4242469))

(assert (= (and b!4242469 res!1744383) b!4242467))

(assert (= (and b!4242467 res!1744381) b!4242473))

(assert (= (and b!4242473 res!1744382) b!4242465))

(declare-fun m!4827979 () Bool)

(assert (=> b!4242466 m!4827979))

(declare-fun m!4827981 () Bool)

(assert (=> b!4242466 m!4827981))

(assert (=> b!4242466 m!4827927))

(assert (=> b!4242466 m!4826765))

(assert (=> b!4242466 m!4827979))

(declare-fun m!4827983 () Bool)

(assert (=> b!4242466 m!4827983))

(assert (=> b!4242466 m!4827927))

(assert (=> b!4242466 m!4826765))

(declare-fun m!4827985 () Bool)

(assert (=> b!4242466 m!4827985))

(assert (=> b!4242466 m!4827979))

(declare-fun m!4827987 () Bool)

(assert (=> b!4242466 m!4827987))

(declare-fun m!4827989 () Bool)

(assert (=> b!4242466 m!4827989))

(assert (=> b!4242466 m!4827979))

(declare-fun m!4827991 () Bool)

(assert (=> b!4242466 m!4827991))

(declare-fun m!4827993 () Bool)

(assert (=> b!4242469 m!4827993))

(declare-fun m!4827995 () Bool)

(assert (=> b!4242469 m!4827995))

(assert (=> b!4242469 m!4826765))

(assert (=> b!4242473 m!4827993))

(declare-fun m!4827997 () Bool)

(assert (=> b!4242473 m!4827997))

(assert (=> b!4242473 m!4827997))

(declare-fun m!4827999 () Bool)

(assert (=> b!4242473 m!4827999))

(assert (=> b!4242471 m!4827927))

(assert (=> b!4242471 m!4826765))

(assert (=> b!4242471 m!4827927))

(assert (=> b!4242471 m!4826765))

(assert (=> b!4242471 m!4827985))

(declare-fun m!4828001 () Bool)

(assert (=> b!4242471 m!4828001))

(assert (=> b!4242467 m!4827993))

(assert (=> b!4242465 m!4827993))

(declare-fun m!4828003 () Bool)

(assert (=> b!4242465 m!4828003))

(declare-fun m!4828005 () Bool)

(assert (=> d!1248181 m!4828005))

(declare-fun m!4828007 () Bool)

(assert (=> d!1248181 m!4828007))

(declare-fun m!4828009 () Bool)

(assert (=> d!1248181 m!4828009))

(assert (=> d!1248181 m!4827693))

(assert (=> b!4242470 m!4827993))

(declare-fun m!4828011 () Bool)

(assert (=> b!4242470 m!4828011))

(assert (=> b!4242470 m!4828011))

(declare-fun m!4828013 () Bool)

(assert (=> b!4242470 m!4828013))

(assert (=> b!4242470 m!4828013))

(declare-fun m!4828015 () Bool)

(assert (=> b!4242470 m!4828015))

(assert (=> b!4242468 m!4827993))

(assert (=> b!4242468 m!4828011))

(assert (=> b!4242468 m!4828011))

(assert (=> b!4242468 m!4828013))

(assert (=> b!4242468 m!4828013))

(declare-fun m!4828017 () Bool)

(assert (=> b!4242468 m!4828017))

(assert (=> bm!293841 d!1248181))

(declare-fun d!1248183 () Bool)

(assert (=> d!1248183 (= (isEmpty!27737 lt!1506769) (not ((_ is Some!10067) lt!1506769)))))

(assert (=> d!1247883 d!1248183))

(declare-fun b!4242475 () Bool)

(declare-fun res!1744387 () Bool)

(declare-fun e!2634635 () Bool)

(assert (=> b!4242475 (=> (not res!1744387) (not e!2634635))))

(assert (=> b!4242475 (= res!1744387 (= (head!8989 longerInput!51) (head!8989 longerInput!51)))))

(declare-fun b!4242477 () Bool)

(declare-fun e!2634636 () Bool)

(assert (=> b!4242477 (= e!2634636 (>= (size!34364 longerInput!51) (size!34364 longerInput!51)))))

(declare-fun d!1248185 () Bool)

(assert (=> d!1248185 e!2634636))

(declare-fun res!1744389 () Bool)

(assert (=> d!1248185 (=> res!1744389 e!2634636)))

(declare-fun lt!1506897 () Bool)

(assert (=> d!1248185 (= res!1744389 (not lt!1506897))))

(declare-fun e!2634634 () Bool)

(assert (=> d!1248185 (= lt!1506897 e!2634634)))

(declare-fun res!1744388 () Bool)

(assert (=> d!1248185 (=> res!1744388 e!2634634)))

(assert (=> d!1248185 (= res!1744388 ((_ is Nil!46911) longerInput!51))))

(assert (=> d!1248185 (= (isPrefix!4725 longerInput!51 longerInput!51) lt!1506897)))

(declare-fun b!4242476 () Bool)

(assert (=> b!4242476 (= e!2634635 (isPrefix!4725 (tail!6842 longerInput!51) (tail!6842 longerInput!51)))))

(declare-fun b!4242474 () Bool)

(assert (=> b!4242474 (= e!2634634 e!2634635)))

(declare-fun res!1744386 () Bool)

(assert (=> b!4242474 (=> (not res!1744386) (not e!2634635))))

(assert (=> b!4242474 (= res!1744386 (not ((_ is Nil!46911) longerInput!51)))))

(assert (= (and d!1248185 (not res!1744388)) b!4242474))

(assert (= (and b!4242474 res!1744386) b!4242475))

(assert (= (and b!4242475 res!1744387) b!4242476))

(assert (= (and d!1248185 (not res!1744389)) b!4242477))

(declare-fun m!4828019 () Bool)

(assert (=> b!4242475 m!4828019))

(assert (=> b!4242475 m!4828019))

(assert (=> b!4242477 m!4826765))

(assert (=> b!4242477 m!4826765))

(declare-fun m!4828021 () Bool)

(assert (=> b!4242476 m!4828021))

(assert (=> b!4242476 m!4828021))

(assert (=> b!4242476 m!4828021))

(assert (=> b!4242476 m!4828021))

(declare-fun m!4828023 () Bool)

(assert (=> b!4242476 m!4828023))

(assert (=> d!1247883 d!1248185))

(declare-fun d!1248187 () Bool)

(assert (=> d!1248187 (isPrefix!4725 longerInput!51 longerInput!51)))

(declare-fun lt!1506898 () Unit!65979)

(assert (=> d!1248187 (= lt!1506898 (choose!25949 longerInput!51 longerInput!51))))

(assert (=> d!1248187 (= (lemmaIsPrefixRefl!3122 longerInput!51 longerInput!51) lt!1506898)))

(declare-fun bs!598430 () Bool)

(assert (= bs!598430 d!1248187))

(assert (=> bs!598430 m!4827171))

(declare-fun m!4828025 () Bool)

(assert (=> bs!598430 m!4828025))

(assert (=> d!1247883 d!1248187))

(assert (=> d!1247883 d!1247909))

(declare-fun b!4242478 () Bool)

(declare-fun e!2634637 () Bool)

(assert (=> b!4242478 (= e!2634637 (inv!15 (value!246598 (h!52333 (t!350908 addTokens!17)))))))

(declare-fun b!4242479 () Bool)

(declare-fun res!1744390 () Bool)

(assert (=> b!4242479 (=> res!1744390 e!2634637)))

(assert (=> b!4242479 (= res!1744390 (not ((_ is IntegerValue!24488) (value!246598 (h!52333 (t!350908 addTokens!17))))))))

(declare-fun e!2634638 () Bool)

(assert (=> b!4242479 (= e!2634638 e!2634637)))

(declare-fun b!4242480 () Bool)

(declare-fun e!2634639 () Bool)

(assert (=> b!4242480 (= e!2634639 e!2634638)))

(declare-fun c!720793 () Bool)

(assert (=> b!4242480 (= c!720793 ((_ is IntegerValue!24487) (value!246598 (h!52333 (t!350908 addTokens!17)))))))

(declare-fun b!4242481 () Bool)

(assert (=> b!4242481 (= e!2634638 (inv!17 (value!246598 (h!52333 (t!350908 addTokens!17)))))))

(declare-fun b!4242482 () Bool)

(assert (=> b!4242482 (= e!2634639 (inv!16 (value!246598 (h!52333 (t!350908 addTokens!17)))))))

(declare-fun d!1248189 () Bool)

(declare-fun c!720794 () Bool)

(assert (=> d!1248189 (= c!720794 ((_ is IntegerValue!24486) (value!246598 (h!52333 (t!350908 addTokens!17)))))))

(assert (=> d!1248189 (= (inv!21 (value!246598 (h!52333 (t!350908 addTokens!17)))) e!2634639)))

(assert (= (and d!1248189 c!720794) b!4242482))

(assert (= (and d!1248189 (not c!720794)) b!4242480))

(assert (= (and b!4242480 c!720793) b!4242481))

(assert (= (and b!4242480 (not c!720793)) b!4242479))

(assert (= (and b!4242479 (not res!1744390)) b!4242478))

(declare-fun m!4828027 () Bool)

(assert (=> b!4242478 m!4828027))

(declare-fun m!4828029 () Bool)

(assert (=> b!4242481 m!4828029))

(declare-fun m!4828031 () Bool)

(assert (=> b!4242482 m!4828031))

(assert (=> b!4241858 d!1248189))

(declare-fun d!1248191 () Bool)

(declare-fun lt!1506899 () Int)

(assert (=> d!1248191 (>= lt!1506899 0)))

(declare-fun e!2634640 () Int)

(assert (=> d!1248191 (= lt!1506899 e!2634640)))

(declare-fun c!720795 () Bool)

(assert (=> d!1248191 (= c!720795 ((_ is Nil!46911) lt!1506749))))

(assert (=> d!1248191 (= (size!34364 lt!1506749) lt!1506899)))

(declare-fun b!4242483 () Bool)

(assert (=> b!4242483 (= e!2634640 0)))

(declare-fun b!4242484 () Bool)

(assert (=> b!4242484 (= e!2634640 (+ 1 (size!34364 (t!350906 lt!1506749))))))

(assert (= (and d!1248191 c!720795) b!4242483))

(assert (= (and d!1248191 (not c!720795)) b!4242484))

(declare-fun m!4828033 () Bool)

(assert (=> b!4242484 m!4828033))

(assert (=> b!4241770 d!1248191))

(declare-fun d!1248193 () Bool)

(declare-fun lt!1506900 () Int)

(assert (=> d!1248193 (>= lt!1506900 0)))

(declare-fun e!2634641 () Int)

(assert (=> d!1248193 (= lt!1506900 e!2634641)))

(declare-fun c!720796 () Bool)

(assert (=> d!1248193 (= c!720796 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))

(assert (=> d!1248193 (= (size!34364 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))) lt!1506900)))

(declare-fun b!4242485 () Bool)

(assert (=> b!4242485 (= e!2634641 0)))

(declare-fun b!4242486 () Bool)

(assert (=> b!4242486 (= e!2634641 (+ 1 (size!34364 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506681))))))))))

(assert (= (and d!1248193 c!720796) b!4242485))

(assert (= (and d!1248193 (not c!720796)) b!4242486))

(assert (=> b!4242486 m!4827751))

(assert (=> b!4241770 d!1248193))

(declare-fun d!1248195 () Bool)

(declare-fun lt!1506901 () Int)

(assert (=> d!1248195 (>= lt!1506901 0)))

(declare-fun e!2634642 () Int)

(assert (=> d!1248195 (= lt!1506901 e!2634642)))

(declare-fun c!720797 () Bool)

(assert (=> d!1248195 (= c!720797 ((_ is Nil!46911) (_2!25377 (v!41019 lt!1506681))))))

(assert (=> d!1248195 (= (size!34364 (_2!25377 (v!41019 lt!1506681))) lt!1506901)))

(declare-fun b!4242487 () Bool)

(assert (=> b!4242487 (= e!2634642 0)))

(declare-fun b!4242488 () Bool)

(assert (=> b!4242488 (= e!2634642 (+ 1 (size!34364 (t!350906 (_2!25377 (v!41019 lt!1506681))))))))

(assert (= (and d!1248195 c!720797) b!4242487))

(assert (= (and d!1248195 (not c!720797)) b!4242488))

(declare-fun m!4828035 () Bool)

(assert (=> b!4242488 m!4828035))

(assert (=> b!4241770 d!1248195))

(assert (=> b!4241803 d!1248085))

(declare-fun d!1248197 () Bool)

(declare-fun dynLambda!20122 (Int BalanceConc!27880) TokenValue!8162)

(assert (=> d!1248197 (= (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764))))) (dynLambda!20122 (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764))))))))

(declare-fun b_lambda!124941 () Bool)

(assert (=> (not b_lambda!124941) (not d!1248197)))

(declare-fun tb!255323 () Bool)

(declare-fun t!351178 () Bool)

(assert (=> (and b!4241478 (= (toValue!10688 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351178) tb!255323))

(declare-fun result!311340 () Bool)

(assert (=> tb!255323 (= result!311340 (inv!21 (dynLambda!20122 (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764))))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764)))))))))

(declare-fun m!4828037 () Bool)

(assert (=> tb!255323 m!4828037))

(assert (=> d!1248197 t!351178))

(declare-fun b_and!335813 () Bool)

(assert (= b_and!335609 (and (=> t!351178 result!311340) b_and!335813)))

(declare-fun t!351180 () Bool)

(declare-fun tb!255325 () Bool)

(assert (=> (and b!4241855 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351180) tb!255325))

(declare-fun result!311344 () Bool)

(assert (= result!311344 result!311340))

(assert (=> d!1248197 t!351180))

(declare-fun b_and!335815 () Bool)

(assert (= b_and!335681 (and (=> t!351180 result!311344) b_and!335815)))

(declare-fun tb!255327 () Bool)

(declare-fun t!351182 () Bool)

(assert (=> (and b!4241487 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351182) tb!255327))

(declare-fun result!311346 () Bool)

(assert (= result!311346 result!311340))

(assert (=> d!1248197 t!351182))

(declare-fun b_and!335817 () Bool)

(assert (= b_and!335617 (and (=> t!351182 result!311346) b_and!335817)))

(declare-fun t!351184 () Bool)

(declare-fun tb!255329 () Bool)

(assert (=> (and b!4241872 (= (toValue!10688 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351184) tb!255329))

(declare-fun result!311348 () Bool)

(assert (= result!311348 result!311340))

(assert (=> d!1248197 t!351184))

(declare-fun b_and!335819 () Bool)

(assert (= b_and!335689 (and (=> t!351184 result!311348) b_and!335819)))

(declare-fun t!351186 () Bool)

(declare-fun tb!255331 () Bool)

(assert (=> (and b!4241860 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351186) tb!255331))

(declare-fun result!311350 () Bool)

(assert (= result!311350 result!311340))

(assert (=> d!1248197 t!351186))

(declare-fun b_and!335821 () Bool)

(assert (= b_and!335685 (and (=> t!351186 result!311350) b_and!335821)))

(declare-fun t!351188 () Bool)

(declare-fun tb!255333 () Bool)

(assert (=> (and b!4241486 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351188) tb!255333))

(declare-fun result!311352 () Bool)

(assert (= result!311352 result!311340))

(assert (=> d!1248197 t!351188))

(declare-fun b_and!335823 () Bool)

(assert (= b_and!335613 (and (=> t!351188 result!311352) b_and!335823)))

(assert (=> d!1248197 m!4827149))

(declare-fun m!4828039 () Bool)

(assert (=> d!1248197 m!4828039))

(assert (=> b!4241803 d!1248197))

(declare-fun d!1248199 () Bool)

(declare-fun fromListB!2650 (List!47035) BalanceConc!27880)

(assert (=> d!1248199 (= (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764)))) (fromListB!2650 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506764)))))))

(declare-fun bs!598431 () Bool)

(assert (= bs!598431 d!1248199))

(declare-fun m!4828041 () Bool)

(assert (=> bs!598431 m!4828041))

(assert (=> b!4241803 d!1248199))

(declare-fun d!1248201 () Bool)

(declare-fun lt!1506902 () Int)

(assert (=> d!1248201 (>= lt!1506902 0)))

(declare-fun e!2634646 () Int)

(assert (=> d!1248201 (= lt!1506902 e!2634646)))

(declare-fun c!720798 () Bool)

(assert (=> d!1248201 (= c!720798 ((_ is Nil!46911) (_2!25378 lt!1506748)))))

(assert (=> d!1248201 (= (size!34364 (_2!25378 lt!1506748)) lt!1506902)))

(declare-fun b!4242491 () Bool)

(assert (=> b!4242491 (= e!2634646 0)))

(declare-fun b!4242492 () Bool)

(assert (=> b!4242492 (= e!2634646 (+ 1 (size!34364 (t!350906 (_2!25378 lt!1506748)))))))

(assert (= (and d!1248201 c!720798) b!4242491))

(assert (= (and d!1248201 (not c!720798)) b!4242492))

(declare-fun m!4828043 () Bool)

(assert (=> b!4242492 m!4828043))

(assert (=> b!4241765 d!1248201))

(assert (=> b!4241765 d!1247875))

(declare-fun d!1248203 () Bool)

(assert (=> d!1248203 (= (isEmpty!27733 (originalCharacters!8276 (h!52333 tokens!581))) ((_ is Nil!46911) (originalCharacters!8276 (h!52333 tokens!581))))))

(assert (=> d!1247845 d!1248203))

(declare-fun d!1248205 () Bool)

(declare-fun lt!1506903 () Int)

(assert (=> d!1248205 (>= lt!1506903 0)))

(declare-fun e!2634647 () Int)

(assert (=> d!1248205 (= lt!1506903 e!2634647)))

(declare-fun c!720799 () Bool)

(assert (=> d!1248205 (= c!720799 ((_ is Nil!46911) (_2!25377 (get!15248 lt!1506764))))))

(assert (=> d!1248205 (= (size!34364 (_2!25377 (get!15248 lt!1506764))) lt!1506903)))

(declare-fun b!4242493 () Bool)

(assert (=> b!4242493 (= e!2634647 0)))

(declare-fun b!4242494 () Bool)

(assert (=> b!4242494 (= e!2634647 (+ 1 (size!34364 (t!350906 (_2!25377 (get!15248 lt!1506764))))))))

(assert (= (and d!1248205 c!720799) b!4242493))

(assert (= (and d!1248205 (not c!720799)) b!4242494))

(declare-fun m!4828045 () Bool)

(assert (=> b!4242494 m!4828045))

(assert (=> b!4241807 d!1248205))

(assert (=> b!4241807 d!1248085))

(assert (=> b!4241807 d!1247873))

(declare-fun b!4242495 () Bool)

(declare-fun e!2634648 () Option!10068)

(declare-fun call!293857 () Option!10068)

(assert (=> b!4242495 (= e!2634648 call!293857)))

(declare-fun b!4242496 () Bool)

(declare-fun e!2634650 () Bool)

(declare-fun e!2634649 () Bool)

(assert (=> b!4242496 (= e!2634650 e!2634649)))

(declare-fun res!1744393 () Bool)

(assert (=> b!4242496 (=> (not res!1744393) (not e!2634649))))

(declare-fun lt!1506905 () Option!10068)

(assert (=> b!4242496 (= res!1744393 (isDefined!7440 lt!1506905))))

(declare-fun b!4242497 () Bool)

(assert (=> b!4242497 (= e!2634649 (contains!9729 (t!350907 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506905)))))))

(declare-fun bm!293852 () Bool)

(assert (=> bm!293852 (= call!293857 (maxPrefixOneRule!3450 thiss!21540 (h!52332 (t!350907 rules!2932)) shorterInput!51))))

(declare-fun b!4242498 () Bool)

(declare-fun res!1744396 () Bool)

(assert (=> b!4242498 (=> (not res!1744396) (not e!2634649))))

(assert (=> b!4242498 (= res!1744396 (= (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506905)))) (originalCharacters!8276 (_1!25377 (get!15248 lt!1506905)))))))

(declare-fun b!4242499 () Bool)

(declare-fun res!1744392 () Bool)

(assert (=> b!4242499 (=> (not res!1744392) (not e!2634649))))

(assert (=> b!4242499 (= res!1744392 (= (value!246598 (_1!25377 (get!15248 lt!1506905))) (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506905)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506905)))))))))

(declare-fun b!4242500 () Bool)

(declare-fun res!1744394 () Bool)

(assert (=> b!4242500 (=> (not res!1744394) (not e!2634649))))

(assert (=> b!4242500 (= res!1744394 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506905)))) (_2!25377 (get!15248 lt!1506905))) shorterInput!51))))

(declare-fun b!4242501 () Bool)

(declare-fun lt!1506906 () Option!10068)

(declare-fun lt!1506908 () Option!10068)

(assert (=> b!4242501 (= e!2634648 (ite (and ((_ is None!10067) lt!1506906) ((_ is None!10067) lt!1506908)) None!10067 (ite ((_ is None!10067) lt!1506908) lt!1506906 (ite ((_ is None!10067) lt!1506906) lt!1506908 (ite (>= (size!34363 (_1!25377 (v!41019 lt!1506906))) (size!34363 (_1!25377 (v!41019 lt!1506908)))) lt!1506906 lt!1506908)))))))

(assert (=> b!4242501 (= lt!1506906 call!293857)))

(assert (=> b!4242501 (= lt!1506908 (maxPrefix!4485 thiss!21540 (t!350907 (t!350907 rules!2932)) shorterInput!51))))

(declare-fun b!4242502 () Bool)

(declare-fun res!1744397 () Bool)

(assert (=> b!4242502 (=> (not res!1744397) (not e!2634649))))

(assert (=> b!4242502 (= res!1744397 (matchR!6447 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506905)))) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506905))))))))

(declare-fun b!4242503 () Bool)

(declare-fun res!1744391 () Bool)

(assert (=> b!4242503 (=> (not res!1744391) (not e!2634649))))

(assert (=> b!4242503 (= res!1744391 (< (size!34364 (_2!25377 (get!15248 lt!1506905))) (size!34364 shorterInput!51)))))

(declare-fun d!1248207 () Bool)

(assert (=> d!1248207 e!2634650))

(declare-fun res!1744395 () Bool)

(assert (=> d!1248207 (=> res!1744395 e!2634650)))

(assert (=> d!1248207 (= res!1744395 (isEmpty!27737 lt!1506905))))

(assert (=> d!1248207 (= lt!1506905 e!2634648)))

(declare-fun c!720800 () Bool)

(assert (=> d!1248207 (= c!720800 (and ((_ is Cons!46912) (t!350907 rules!2932)) ((_ is Nil!46912) (t!350907 (t!350907 rules!2932)))))))

(declare-fun lt!1506907 () Unit!65979)

(declare-fun lt!1506904 () Unit!65979)

(assert (=> d!1248207 (= lt!1506907 lt!1506904)))

(assert (=> d!1248207 (isPrefix!4725 shorterInput!51 shorterInput!51)))

(assert (=> d!1248207 (= lt!1506904 (lemmaIsPrefixRefl!3122 shorterInput!51 shorterInput!51))))

(assert (=> d!1248207 (rulesValidInductive!2974 thiss!21540 (t!350907 rules!2932))))

(assert (=> d!1248207 (= (maxPrefix!4485 thiss!21540 (t!350907 rules!2932) shorterInput!51) lt!1506905)))

(assert (= (and d!1248207 c!720800) b!4242495))

(assert (= (and d!1248207 (not c!720800)) b!4242501))

(assert (= (or b!4242495 b!4242501) bm!293852))

(assert (= (and d!1248207 (not res!1744395)) b!4242496))

(assert (= (and b!4242496 res!1744393) b!4242498))

(assert (= (and b!4242498 res!1744396) b!4242503))

(assert (= (and b!4242503 res!1744391) b!4242500))

(assert (= (and b!4242500 res!1744394) b!4242499))

(assert (= (and b!4242499 res!1744392) b!4242502))

(assert (= (and b!4242502 res!1744397) b!4242497))

(declare-fun m!4828047 () Bool)

(assert (=> b!4242502 m!4828047))

(declare-fun m!4828049 () Bool)

(assert (=> b!4242502 m!4828049))

(assert (=> b!4242502 m!4828049))

(declare-fun m!4828051 () Bool)

(assert (=> b!4242502 m!4828051))

(assert (=> b!4242502 m!4828051))

(declare-fun m!4828053 () Bool)

(assert (=> b!4242502 m!4828053))

(assert (=> b!4242500 m!4828047))

(assert (=> b!4242500 m!4828049))

(assert (=> b!4242500 m!4828049))

(assert (=> b!4242500 m!4828051))

(assert (=> b!4242500 m!4828051))

(declare-fun m!4828055 () Bool)

(assert (=> b!4242500 m!4828055))

(declare-fun m!4828057 () Bool)

(assert (=> b!4242496 m!4828057))

(declare-fun m!4828059 () Bool)

(assert (=> d!1248207 m!4828059))

(assert (=> d!1248207 m!4827139))

(assert (=> d!1248207 m!4827141))

(assert (=> d!1248207 m!4827695))

(declare-fun m!4828061 () Bool)

(assert (=> bm!293852 m!4828061))

(declare-fun m!4828063 () Bool)

(assert (=> b!4242501 m!4828063))

(assert (=> b!4242498 m!4828047))

(assert (=> b!4242498 m!4828049))

(assert (=> b!4242498 m!4828049))

(assert (=> b!4242498 m!4828051))

(assert (=> b!4242499 m!4828047))

(declare-fun m!4828065 () Bool)

(assert (=> b!4242499 m!4828065))

(assert (=> b!4242499 m!4828065))

(declare-fun m!4828067 () Bool)

(assert (=> b!4242499 m!4828067))

(assert (=> b!4242497 m!4828047))

(declare-fun m!4828069 () Bool)

(assert (=> b!4242497 m!4828069))

(assert (=> b!4242503 m!4828047))

(declare-fun m!4828071 () Bool)

(assert (=> b!4242503 m!4828071))

(assert (=> b!4242503 m!4826763))

(assert (=> b!4241805 d!1248207))

(declare-fun d!1248209 () Bool)

(assert (=> d!1248209 (= (inv!17 (value!246598 (h!52333 addTokens!17))) (= (charsToBigInt!1 (text!57582 (value!246598 (h!52333 addTokens!17)))) (value!246590 (value!246598 (h!52333 addTokens!17)))))))

(declare-fun bs!598432 () Bool)

(assert (= bs!598432 d!1248209))

(declare-fun m!4828073 () Bool)

(assert (=> bs!598432 m!4828073))

(assert (=> b!4241645 d!1248209))

(assert (=> b!4241812 d!1248111))

(declare-fun d!1248211 () Bool)

(assert (=> d!1248211 (= (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769))))) (dynLambda!20122 (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769))))))))

(declare-fun b_lambda!124943 () Bool)

(assert (=> (not b_lambda!124943) (not d!1248211)))

(declare-fun tb!255335 () Bool)

(declare-fun t!351190 () Bool)

(assert (=> (and b!4241855 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351190) tb!255335))

(declare-fun result!311354 () Bool)

(assert (=> tb!255335 (= result!311354 (inv!21 (dynLambda!20122 (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769))))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769)))))))))

(declare-fun m!4828075 () Bool)

(assert (=> tb!255335 m!4828075))

(assert (=> d!1248211 t!351190))

(declare-fun b_and!335825 () Bool)

(assert (= b_and!335815 (and (=> t!351190 result!311354) b_and!335825)))

(declare-fun t!351192 () Bool)

(declare-fun tb!255337 () Bool)

(assert (=> (and b!4241478 (= (toValue!10688 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351192) tb!255337))

(declare-fun result!311356 () Bool)

(assert (= result!311356 result!311354))

(assert (=> d!1248211 t!351192))

(declare-fun b_and!335827 () Bool)

(assert (= b_and!335813 (and (=> t!351192 result!311356) b_and!335827)))

(declare-fun t!351194 () Bool)

(declare-fun tb!255339 () Bool)

(assert (=> (and b!4241860 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351194) tb!255339))

(declare-fun result!311358 () Bool)

(assert (= result!311358 result!311354))

(assert (=> d!1248211 t!351194))

(declare-fun b_and!335829 () Bool)

(assert (= b_and!335821 (and (=> t!351194 result!311358) b_and!335829)))

(declare-fun t!351196 () Bool)

(declare-fun tb!255341 () Bool)

(assert (=> (and b!4241487 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351196) tb!255341))

(declare-fun result!311360 () Bool)

(assert (= result!311360 result!311354))

(assert (=> d!1248211 t!351196))

(declare-fun b_and!335831 () Bool)

(assert (= b_and!335817 (and (=> t!351196 result!311360) b_and!335831)))

(declare-fun t!351198 () Bool)

(declare-fun tb!255343 () Bool)

(assert (=> (and b!4241486 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351198) tb!255343))

(declare-fun result!311362 () Bool)

(assert (= result!311362 result!311354))

(assert (=> d!1248211 t!351198))

(declare-fun b_and!335833 () Bool)

(assert (= b_and!335823 (and (=> t!351198 result!311362) b_and!335833)))

(declare-fun t!351200 () Bool)

(declare-fun tb!255345 () Bool)

(assert (=> (and b!4241872 (= (toValue!10688 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351200) tb!255345))

(declare-fun result!311364 () Bool)

(assert (= result!311364 result!311354))

(assert (=> d!1248211 t!351200))

(declare-fun b_and!335835 () Bool)

(assert (= b_and!335819 (and (=> t!351200 result!311364) b_and!335835)))

(assert (=> d!1248211 m!4827179))

(declare-fun m!4828077 () Bool)

(assert (=> d!1248211 m!4828077))

(assert (=> b!4241812 d!1248211))

(declare-fun d!1248213 () Bool)

(assert (=> d!1248213 (= (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769)))) (fromListB!2650 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506769)))))))

(declare-fun bs!598433 () Bool)

(assert (= bs!598433 d!1248213))

(declare-fun m!4828079 () Bool)

(assert (=> bs!598433 m!4828079))

(assert (=> b!4241812 d!1248213))

(declare-fun d!1248215 () Bool)

(declare-fun res!1744398 () Bool)

(declare-fun e!2634652 () Bool)

(assert (=> d!1248215 (=> (not res!1744398) (not e!2634652))))

(assert (=> d!1248215 (= res!1744398 (not (isEmpty!27733 (originalCharacters!8276 (h!52333 (t!350908 tokens!581))))))))

(assert (=> d!1248215 (= (inv!61659 (h!52333 (t!350908 tokens!581))) e!2634652)))

(declare-fun b!4242504 () Bool)

(declare-fun res!1744399 () Bool)

(assert (=> b!4242504 (=> (not res!1744399) (not e!2634652))))

(assert (=> b!4242504 (= res!1744399 (= (originalCharacters!8276 (h!52333 (t!350908 tokens!581))) (list!16913 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (value!246598 (h!52333 (t!350908 tokens!581)))))))))

(declare-fun b!4242505 () Bool)

(assert (=> b!4242505 (= e!2634652 (= (size!34363 (h!52333 (t!350908 tokens!581))) (size!34364 (originalCharacters!8276 (h!52333 (t!350908 tokens!581))))))))

(assert (= (and d!1248215 res!1744398) b!4242504))

(assert (= (and b!4242504 res!1744399) b!4242505))

(declare-fun b_lambda!124945 () Bool)

(assert (=> (not b_lambda!124945) (not b!4242504)))

(declare-fun t!351202 () Bool)

(declare-fun tb!255347 () Bool)

(assert (=> (and b!4241872 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351202) tb!255347))

(declare-fun b!4242506 () Bool)

(declare-fun e!2634653 () Bool)

(declare-fun tp!1300519 () Bool)

(assert (=> b!4242506 (= e!2634653 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (value!246598 (h!52333 (t!350908 tokens!581)))))) tp!1300519))))

(declare-fun result!311366 () Bool)

(assert (=> tb!255347 (= result!311366 (and (inv!61664 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (value!246598 (h!52333 (t!350908 tokens!581))))) e!2634653))))

(assert (= tb!255347 b!4242506))

(declare-fun m!4828081 () Bool)

(assert (=> b!4242506 m!4828081))

(declare-fun m!4828083 () Bool)

(assert (=> tb!255347 m!4828083))

(assert (=> b!4242504 t!351202))

(declare-fun b_and!335837 () Bool)

(assert (= b_and!335811 (and (=> t!351202 result!311366) b_and!335837)))

(declare-fun t!351204 () Bool)

(declare-fun tb!255349 () Bool)

(assert (=> (and b!4241486 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351204) tb!255349))

(declare-fun result!311368 () Bool)

(assert (= result!311368 result!311366))

(assert (=> b!4242504 t!351204))

(declare-fun b_and!335839 () Bool)

(assert (= b_and!335805 (and (=> t!351204 result!311368) b_and!335839)))

(declare-fun t!351206 () Bool)

(declare-fun tb!255351 () Bool)

(assert (=> (and b!4241478 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351206) tb!255351))

(declare-fun result!311370 () Bool)

(assert (= result!311370 result!311366))

(assert (=> b!4242504 t!351206))

(declare-fun b_and!335841 () Bool)

(assert (= b_and!335801 (and (=> t!351206 result!311370) b_and!335841)))

(declare-fun t!351208 () Bool)

(declare-fun tb!255353 () Bool)

(assert (=> (and b!4241860 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351208) tb!255353))

(declare-fun result!311372 () Bool)

(assert (= result!311372 result!311366))

(assert (=> b!4242504 t!351208))

(declare-fun b_and!335843 () Bool)

(assert (= b_and!335803 (and (=> t!351208 result!311372) b_and!335843)))

(declare-fun t!351210 () Bool)

(declare-fun tb!255355 () Bool)

(assert (=> (and b!4241487 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351210) tb!255355))

(declare-fun result!311374 () Bool)

(assert (= result!311374 result!311366))

(assert (=> b!4242504 t!351210))

(declare-fun b_and!335845 () Bool)

(assert (= b_and!335807 (and (=> t!351210 result!311374) b_and!335845)))

(declare-fun t!351212 () Bool)

(declare-fun tb!255357 () Bool)

(assert (=> (and b!4241855 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351212) tb!255357))

(declare-fun result!311376 () Bool)

(assert (= result!311376 result!311366))

(assert (=> b!4242504 t!351212))

(declare-fun b_and!335847 () Bool)

(assert (= b_and!335809 (and (=> t!351212 result!311376) b_and!335847)))

(declare-fun m!4828085 () Bool)

(assert (=> d!1248215 m!4828085))

(declare-fun m!4828087 () Bool)

(assert (=> b!4242504 m!4828087))

(assert (=> b!4242504 m!4828087))

(declare-fun m!4828089 () Bool)

(assert (=> b!4242504 m!4828089))

(declare-fun m!4828091 () Bool)

(assert (=> b!4242505 m!4828091))

(assert (=> b!4241852 d!1248215))

(declare-fun d!1248217 () Bool)

(assert (=> d!1248217 true))

(declare-fun order!24703 () Int)

(declare-fun lambda!130169 () Int)

(declare-fun order!24705 () Int)

(declare-fun dynLambda!20123 (Int Int) Int)

(declare-fun dynLambda!20124 (Int Int) Int)

(assert (=> d!1248217 (< (dynLambda!20123 order!24703 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (dynLambda!20124 order!24705 lambda!130169))))

(assert (=> d!1248217 true))

(assert (=> d!1248217 (< (dynLambda!20119 order!24699 (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (dynLambda!20124 order!24705 lambda!130169))))

(declare-fun Forall!1598 (Int) Bool)

(assert (=> d!1248217 (= (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (Forall!1598 lambda!130169))))

(declare-fun bs!598434 () Bool)

(assert (= bs!598434 d!1248217))

(declare-fun m!4828093 () Bool)

(assert (=> bs!598434 m!4828093))

(assert (=> d!1247791 d!1248217))

(declare-fun d!1248219 () Bool)

(declare-fun lt!1506909 () Int)

(assert (=> d!1248219 (>= lt!1506909 0)))

(declare-fun e!2634654 () Int)

(assert (=> d!1248219 (= lt!1506909 e!2634654)))

(declare-fun c!720801 () Bool)

(assert (=> d!1248219 (= c!720801 ((_ is Nil!46911) (_2!25377 (get!15248 lt!1506769))))))

(assert (=> d!1248219 (= (size!34364 (_2!25377 (get!15248 lt!1506769))) lt!1506909)))

(declare-fun b!4242511 () Bool)

(assert (=> b!4242511 (= e!2634654 0)))

(declare-fun b!4242512 () Bool)

(assert (=> b!4242512 (= e!2634654 (+ 1 (size!34364 (t!350906 (_2!25377 (get!15248 lt!1506769))))))))

(assert (= (and d!1248219 c!720801) b!4242511))

(assert (= (and d!1248219 (not c!720801)) b!4242512))

(declare-fun m!4828095 () Bool)

(assert (=> b!4242512 m!4828095))

(assert (=> b!4241816 d!1248219))

(assert (=> b!4241816 d!1248111))

(assert (=> b!4241816 d!1247875))

(declare-fun d!1248221 () Bool)

(declare-fun lt!1506910 () Int)

(assert (=> d!1248221 (>= lt!1506910 0)))

(declare-fun e!2634655 () Int)

(assert (=> d!1248221 (= lt!1506910 e!2634655)))

(declare-fun c!720802 () Bool)

(assert (=> d!1248221 (= c!720802 ((_ is Nil!46911) (originalCharacters!8276 (h!52333 addTokens!17))))))

(assert (=> d!1248221 (= (size!34364 (originalCharacters!8276 (h!52333 addTokens!17))) lt!1506910)))

(declare-fun b!4242513 () Bool)

(assert (=> b!4242513 (= e!2634655 0)))

(declare-fun b!4242514 () Bool)

(assert (=> b!4242514 (= e!2634655 (+ 1 (size!34364 (t!350906 (originalCharacters!8276 (h!52333 addTokens!17))))))))

(assert (= (and d!1248221 c!720802) b!4242513))

(assert (= (and d!1248221 (not c!720802)) b!4242514))

(declare-fun m!4828097 () Bool)

(assert (=> b!4242514 m!4828097))

(assert (=> b!4241774 d!1248221))

(declare-fun bs!598435 () Bool)

(declare-fun d!1248223 () Bool)

(assert (= bs!598435 (and d!1248223 d!1248217)))

(declare-fun lambda!130170 () Int)

(assert (=> bs!598435 (= (and (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))))) (= lambda!130170 lambda!130169))))

(assert (=> d!1248223 true))

(assert (=> d!1248223 (< (dynLambda!20123 order!24703 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) (dynLambda!20124 order!24705 lambda!130170))))

(assert (=> d!1248223 true))

(assert (=> d!1248223 (< (dynLambda!20119 order!24699 (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) (dynLambda!20124 order!24705 lambda!130170))))

(assert (=> d!1248223 (= (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) (Forall!1598 lambda!130170))))

(declare-fun bs!598436 () Bool)

(assert (= bs!598436 d!1248223))

(declare-fun m!4828099 () Bool)

(assert (=> bs!598436 m!4828099))

(assert (=> d!1247833 d!1248223))

(declare-fun b!4242515 () Bool)

(declare-fun e!2634656 () Option!10068)

(declare-fun call!293858 () Option!10068)

(assert (=> b!4242515 (= e!2634656 call!293858)))

(declare-fun b!4242516 () Bool)

(declare-fun e!2634658 () Bool)

(declare-fun e!2634657 () Bool)

(assert (=> b!4242516 (= e!2634658 e!2634657)))

(declare-fun res!1744402 () Bool)

(assert (=> b!4242516 (=> (not res!1744402) (not e!2634657))))

(declare-fun lt!1506912 () Option!10068)

(assert (=> b!4242516 (= res!1744402 (isDefined!7440 lt!1506912))))

(declare-fun b!4242517 () Bool)

(assert (=> b!4242517 (= e!2634657 (contains!9729 (t!350907 rules!2932) (rule!11060 (_1!25377 (get!15248 lt!1506912)))))))

(declare-fun bm!293853 () Bool)

(assert (=> bm!293853 (= call!293858 (maxPrefixOneRule!3450 thiss!21540 (h!52332 (t!350907 rules!2932)) longerInput!51))))

(declare-fun b!4242518 () Bool)

(declare-fun res!1744405 () Bool)

(assert (=> b!4242518 (=> (not res!1744405) (not e!2634657))))

(assert (=> b!4242518 (= res!1744405 (= (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506912)))) (originalCharacters!8276 (_1!25377 (get!15248 lt!1506912)))))))

(declare-fun b!4242519 () Bool)

(declare-fun res!1744401 () Bool)

(assert (=> b!4242519 (=> (not res!1744401) (not e!2634657))))

(assert (=> b!4242519 (= res!1744401 (= (value!246598 (_1!25377 (get!15248 lt!1506912))) (apply!10752 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506912)))) (seqFromList!5812 (originalCharacters!8276 (_1!25377 (get!15248 lt!1506912)))))))))

(declare-fun b!4242520 () Bool)

(declare-fun res!1744403 () Bool)

(assert (=> b!4242520 (=> (not res!1744403) (not e!2634657))))

(assert (=> b!4242520 (= res!1744403 (= (++!11941 (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506912)))) (_2!25377 (get!15248 lt!1506912))) longerInput!51))))

(declare-fun b!4242521 () Bool)

(declare-fun lt!1506913 () Option!10068)

(declare-fun lt!1506915 () Option!10068)

(assert (=> b!4242521 (= e!2634656 (ite (and ((_ is None!10067) lt!1506913) ((_ is None!10067) lt!1506915)) None!10067 (ite ((_ is None!10067) lt!1506915) lt!1506913 (ite ((_ is None!10067) lt!1506913) lt!1506915 (ite (>= (size!34363 (_1!25377 (v!41019 lt!1506913))) (size!34363 (_1!25377 (v!41019 lt!1506915)))) lt!1506913 lt!1506915)))))))

(assert (=> b!4242521 (= lt!1506913 call!293858)))

(assert (=> b!4242521 (= lt!1506915 (maxPrefix!4485 thiss!21540 (t!350907 (t!350907 rules!2932)) longerInput!51))))

(declare-fun b!4242522 () Bool)

(declare-fun res!1744406 () Bool)

(assert (=> b!4242522 (=> (not res!1744406) (not e!2634657))))

(assert (=> b!4242522 (= res!1744406 (matchR!6447 (regex!7932 (rule!11060 (_1!25377 (get!15248 lt!1506912)))) (list!16913 (charsOf!5282 (_1!25377 (get!15248 lt!1506912))))))))

(declare-fun b!4242523 () Bool)

(declare-fun res!1744400 () Bool)

(assert (=> b!4242523 (=> (not res!1744400) (not e!2634657))))

(assert (=> b!4242523 (= res!1744400 (< (size!34364 (_2!25377 (get!15248 lt!1506912))) (size!34364 longerInput!51)))))

(declare-fun d!1248225 () Bool)

(assert (=> d!1248225 e!2634658))

(declare-fun res!1744404 () Bool)

(assert (=> d!1248225 (=> res!1744404 e!2634658)))

(assert (=> d!1248225 (= res!1744404 (isEmpty!27737 lt!1506912))))

(assert (=> d!1248225 (= lt!1506912 e!2634656)))

(declare-fun c!720803 () Bool)

(assert (=> d!1248225 (= c!720803 (and ((_ is Cons!46912) (t!350907 rules!2932)) ((_ is Nil!46912) (t!350907 (t!350907 rules!2932)))))))

(declare-fun lt!1506914 () Unit!65979)

(declare-fun lt!1506911 () Unit!65979)

(assert (=> d!1248225 (= lt!1506914 lt!1506911)))

(assert (=> d!1248225 (isPrefix!4725 longerInput!51 longerInput!51)))

(assert (=> d!1248225 (= lt!1506911 (lemmaIsPrefixRefl!3122 longerInput!51 longerInput!51))))

(assert (=> d!1248225 (rulesValidInductive!2974 thiss!21540 (t!350907 rules!2932))))

(assert (=> d!1248225 (= (maxPrefix!4485 thiss!21540 (t!350907 rules!2932) longerInput!51) lt!1506912)))

(assert (= (and d!1248225 c!720803) b!4242515))

(assert (= (and d!1248225 (not c!720803)) b!4242521))

(assert (= (or b!4242515 b!4242521) bm!293853))

(assert (= (and d!1248225 (not res!1744404)) b!4242516))

(assert (= (and b!4242516 res!1744402) b!4242518))

(assert (= (and b!4242518 res!1744405) b!4242523))

(assert (= (and b!4242523 res!1744400) b!4242520))

(assert (= (and b!4242520 res!1744403) b!4242519))

(assert (= (and b!4242519 res!1744401) b!4242522))

(assert (= (and b!4242522 res!1744406) b!4242517))

(declare-fun m!4828101 () Bool)

(assert (=> b!4242522 m!4828101))

(declare-fun m!4828103 () Bool)

(assert (=> b!4242522 m!4828103))

(assert (=> b!4242522 m!4828103))

(declare-fun m!4828105 () Bool)

(assert (=> b!4242522 m!4828105))

(assert (=> b!4242522 m!4828105))

(declare-fun m!4828107 () Bool)

(assert (=> b!4242522 m!4828107))

(assert (=> b!4242520 m!4828101))

(assert (=> b!4242520 m!4828103))

(assert (=> b!4242520 m!4828103))

(assert (=> b!4242520 m!4828105))

(assert (=> b!4242520 m!4828105))

(declare-fun m!4828109 () Bool)

(assert (=> b!4242520 m!4828109))

(declare-fun m!4828111 () Bool)

(assert (=> b!4242516 m!4828111))

(declare-fun m!4828113 () Bool)

(assert (=> d!1248225 m!4828113))

(assert (=> d!1248225 m!4827171))

(assert (=> d!1248225 m!4827173))

(assert (=> d!1248225 m!4827695))

(declare-fun m!4828115 () Bool)

(assert (=> bm!293853 m!4828115))

(declare-fun m!4828117 () Bool)

(assert (=> b!4242521 m!4828117))

(assert (=> b!4242518 m!4828101))

(assert (=> b!4242518 m!4828103))

(assert (=> b!4242518 m!4828103))

(assert (=> b!4242518 m!4828105))

(assert (=> b!4242519 m!4828101))

(declare-fun m!4828119 () Bool)

(assert (=> b!4242519 m!4828119))

(assert (=> b!4242519 m!4828119))

(declare-fun m!4828121 () Bool)

(assert (=> b!4242519 m!4828121))

(assert (=> b!4242517 m!4828101))

(declare-fun m!4828123 () Bool)

(assert (=> b!4242517 m!4828123))

(assert (=> b!4242523 m!4828101))

(declare-fun m!4828125 () Bool)

(assert (=> b!4242523 m!4828125))

(assert (=> b!4242523 m!4826765))

(assert (=> b!4241814 d!1248225))

(declare-fun d!1248227 () Bool)

(assert (=> d!1248227 (= (inv!61656 (tag!8796 (rule!11060 (h!52333 (t!350908 tokens!581))))) (= (mod (str.len (value!246597 (tag!8796 (rule!11060 (h!52333 (t!350908 tokens!581)))))) 2) 0))))

(assert (=> b!4241854 d!1248227))

(declare-fun d!1248229 () Bool)

(declare-fun res!1744407 () Bool)

(declare-fun e!2634659 () Bool)

(assert (=> d!1248229 (=> (not res!1744407) (not e!2634659))))

(assert (=> d!1248229 (= res!1744407 (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))))))

(assert (=> d!1248229 (= (inv!61660 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) e!2634659)))

(declare-fun b!4242524 () Bool)

(assert (=> b!4242524 (= e!2634659 (equivClasses!3352 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))))))

(assert (= (and d!1248229 res!1744407) b!4242524))

(declare-fun m!4828127 () Bool)

(assert (=> d!1248229 m!4828127))

(declare-fun m!4828129 () Bool)

(assert (=> b!4242524 m!4828129))

(assert (=> b!4241854 d!1248229))

(declare-fun d!1248231 () Bool)

(declare-fun c!720804 () Bool)

(assert (=> d!1248231 (= c!720804 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))))))

(declare-fun e!2634660 () Bool)

(assert (=> d!1248231 (= (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))) e!2634660)))

(declare-fun b!4242525 () Bool)

(assert (=> b!4242525 (= e!2634660 (inv!61667 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))))))

(declare-fun b!4242526 () Bool)

(declare-fun e!2634661 () Bool)

(assert (=> b!4242526 (= e!2634660 e!2634661)))

(declare-fun res!1744408 () Bool)

(assert (=> b!4242526 (= res!1744408 (not ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))))))))

(assert (=> b!4242526 (=> res!1744408 e!2634661)))

(declare-fun b!4242527 () Bool)

(assert (=> b!4242527 (= e!2634661 (inv!61668 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))))))

(assert (= (and d!1248231 c!720804) b!4242525))

(assert (= (and d!1248231 (not c!720804)) b!4242526))

(assert (= (and b!4242526 (not res!1744408)) b!4242527))

(declare-fun m!4828131 () Bool)

(assert (=> b!4242525 m!4828131))

(declare-fun m!4828133 () Bool)

(assert (=> b!4242527 m!4828133))

(assert (=> b!4241677 d!1248231))

(declare-fun b!4242528 () Bool)

(declare-fun e!2634662 () List!47035)

(assert (=> b!4242528 (= e!2634662 Nil!46911)))

(declare-fun b!4242529 () Bool)

(declare-fun e!2634663 () List!47035)

(assert (=> b!4242529 (= e!2634662 e!2634663)))

(declare-fun c!720806 () Bool)

(assert (=> b!4242529 (= c!720806 ((_ is Leaf!21868) (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))

(declare-fun d!1248233 () Bool)

(declare-fun c!720805 () Bool)

(assert (=> d!1248233 (= c!720805 ((_ is Empty!14143) (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))

(assert (=> d!1248233 (= (list!16915 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) e!2634662)))

(declare-fun b!4242531 () Bool)

(assert (=> b!4242531 (= e!2634663 (++!11941 (list!16915 (left!34855 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))) (list!16915 (right!35185 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))))

(declare-fun b!4242530 () Bool)

(assert (=> b!4242530 (= e!2634663 (list!16917 (xs!17449 (c!720623 (charsOf!5282 (_1!25377 (v!41019 lt!1506680)))))))))

(assert (= (and d!1248233 c!720805) b!4242528))

(assert (= (and d!1248233 (not c!720805)) b!4242529))

(assert (= (and b!4242529 c!720806) b!4242530))

(assert (= (and b!4242529 (not c!720806)) b!4242531))

(declare-fun m!4828135 () Bool)

(assert (=> b!4242531 m!4828135))

(declare-fun m!4828137 () Bool)

(assert (=> b!4242531 m!4828137))

(assert (=> b!4242531 m!4828135))

(assert (=> b!4242531 m!4828137))

(declare-fun m!4828139 () Bool)

(assert (=> b!4242531 m!4828139))

(declare-fun m!4828141 () Bool)

(assert (=> b!4242530 m!4828141))

(assert (=> d!1247795 d!1248233))

(declare-fun bs!598437 () Bool)

(declare-fun d!1248235 () Bool)

(assert (= bs!598437 (and d!1248235 d!1248093)))

(declare-fun lambda!130171 () Int)

(assert (=> bs!598437 (= (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (= lambda!130171 lambda!130165))))

(declare-fun bs!598438 () Bool)

(assert (= bs!598438 (and d!1248235 d!1248165)))

(assert (=> bs!598438 (= (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (h!52332 rules!2932)))) (= lambda!130171 lambda!130166))))

(assert (=> d!1248235 true))

(assert (=> d!1248235 (< (dynLambda!20119 order!24699 (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) (dynLambda!20120 order!24701 lambda!130171))))

(assert (=> d!1248235 (= (equivClasses!3352 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) (Forall2!1197 lambda!130171))))

(declare-fun bs!598439 () Bool)

(assert (= bs!598439 d!1248235))

(declare-fun m!4828143 () Bool)

(assert (=> bs!598439 m!4828143))

(assert (=> b!4241641 d!1248235))

(declare-fun d!1248237 () Bool)

(declare-fun lt!1506916 () Int)

(assert (=> d!1248237 (>= lt!1506916 0)))

(declare-fun e!2634664 () Int)

(assert (=> d!1248237 (= lt!1506916 e!2634664)))

(declare-fun c!720807 () Bool)

(assert (=> d!1248237 (= c!720807 ((_ is Nil!46911) (t!350906 (_2!25377 (v!41019 lt!1506680)))))))

(assert (=> d!1248237 (= (size!34364 (t!350906 (_2!25377 (v!41019 lt!1506680)))) lt!1506916)))

(declare-fun b!4242532 () Bool)

(assert (=> b!4242532 (= e!2634664 0)))

(declare-fun b!4242533 () Bool)

(assert (=> b!4242533 (= e!2634664 (+ 1 (size!34364 (t!350906 (t!350906 (_2!25377 (v!41019 lt!1506680)))))))))

(assert (= (and d!1248237 c!720807) b!4242532))

(assert (= (and d!1248237 (not c!720807)) b!4242533))

(declare-fun m!4828145 () Bool)

(assert (=> b!4242533 m!4828145))

(assert (=> b!4241571 d!1248237))

(declare-fun bs!598440 () Bool)

(declare-fun d!1248239 () Bool)

(assert (= bs!598440 (and d!1248239 d!1248217)))

(declare-fun lambda!130172 () Int)

(assert (=> bs!598440 (= (and (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) (= (toValue!10688 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))))) (= lambda!130172 lambda!130169))))

(declare-fun bs!598441 () Bool)

(assert (= bs!598441 (and d!1248239 d!1248223)))

(assert (=> bs!598441 (= (and (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) (= (toValue!10688 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (rule!11060 (h!52333 tokens!581)))))) (= lambda!130172 lambda!130170))))

(assert (=> d!1248239 true))

(assert (=> d!1248239 (< (dynLambda!20123 order!24703 (toChars!10547 (transformation!7932 (h!52332 rules!2932)))) (dynLambda!20124 order!24705 lambda!130172))))

(assert (=> d!1248239 true))

(assert (=> d!1248239 (< (dynLambda!20119 order!24699 (toValue!10688 (transformation!7932 (h!52332 rules!2932)))) (dynLambda!20124 order!24705 lambda!130172))))

(assert (=> d!1248239 (= (semiInverseModEq!3453 (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toValue!10688 (transformation!7932 (h!52332 rules!2932)))) (Forall!1598 lambda!130172))))

(declare-fun bs!598442 () Bool)

(assert (= bs!598442 d!1248239))

(declare-fun m!4828147 () Bool)

(assert (=> bs!598442 m!4828147))

(assert (=> d!1247879 d!1248239))

(declare-fun d!1248241 () Bool)

(declare-fun lt!1506917 () Int)

(assert (=> d!1248241 (>= lt!1506917 0)))

(declare-fun e!2634665 () Int)

(assert (=> d!1248241 (= lt!1506917 e!2634665)))

(declare-fun c!720808 () Bool)

(assert (=> d!1248241 (= c!720808 ((_ is Nil!46911) lt!1506692))))

(assert (=> d!1248241 (= (size!34364 lt!1506692) lt!1506917)))

(declare-fun b!4242534 () Bool)

(assert (=> b!4242534 (= e!2634665 0)))

(declare-fun b!4242535 () Bool)

(assert (=> b!4242535 (= e!2634665 (+ 1 (size!34364 (t!350906 lt!1506692))))))

(assert (= (and d!1248241 c!720808) b!4242534))

(assert (= (and d!1248241 (not c!720808)) b!4242535))

(declare-fun m!4828149 () Bool)

(assert (=> b!4242535 m!4828149))

(assert (=> b!4241541 d!1248241))

(declare-fun d!1248243 () Bool)

(declare-fun lt!1506918 () Int)

(assert (=> d!1248243 (>= lt!1506918 0)))

(declare-fun e!2634666 () Int)

(assert (=> d!1248243 (= lt!1506918 e!2634666)))

(declare-fun c!720809 () Bool)

(assert (=> d!1248243 (= c!720809 ((_ is Nil!46911) (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))

(assert (=> d!1248243 (= (size!34364 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))) lt!1506918)))

(declare-fun b!4242536 () Bool)

(assert (=> b!4242536 (= e!2634666 0)))

(declare-fun b!4242537 () Bool)

(assert (=> b!4242537 (= e!2634666 (+ 1 (size!34364 (t!350906 (list!16913 (charsOf!5282 (_1!25377 (v!41019 lt!1506680))))))))))

(assert (= (and d!1248243 c!720809) b!4242536))

(assert (= (and d!1248243 (not c!720809)) b!4242537))

(assert (=> b!4242537 m!4827909))

(assert (=> b!4241541 d!1248243))

(assert (=> b!4241541 d!1247801))

(declare-fun d!1248245 () Bool)

(assert (=> d!1248245 (= (list!16913 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))) (list!16915 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))))))

(declare-fun bs!598443 () Bool)

(assert (= bs!598443 d!1248245))

(declare-fun m!4828151 () Bool)

(assert (=> bs!598443 m!4828151))

(assert (=> b!4241675 d!1248245))

(declare-fun d!1248247 () Bool)

(declare-fun lt!1506919 () Int)

(assert (=> d!1248247 (>= lt!1506919 0)))

(declare-fun e!2634667 () Int)

(assert (=> d!1248247 (= lt!1506919 e!2634667)))

(declare-fun c!720810 () Bool)

(assert (=> d!1248247 (= c!720810 ((_ is Nil!46911) (t!350906 shorterInput!51)))))

(assert (=> d!1248247 (= (size!34364 (t!350906 shorterInput!51)) lt!1506919)))

(declare-fun b!4242538 () Bool)

(assert (=> b!4242538 (= e!2634667 0)))

(declare-fun b!4242539 () Bool)

(assert (=> b!4242539 (= e!2634667 (+ 1 (size!34364 (t!350906 (t!350906 shorterInput!51)))))))

(assert (= (and d!1248247 c!720810) b!4242538))

(assert (= (and d!1248247 (not c!720810)) b!4242539))

(declare-fun m!4828153 () Bool)

(assert (=> b!4242539 m!4828153))

(assert (=> b!4241777 d!1248247))

(declare-fun d!1248249 () Bool)

(assert (=> d!1248249 (= (list!16913 lt!1506695) (list!16915 (c!720623 lt!1506695)))))

(declare-fun bs!598444 () Bool)

(assert (= bs!598444 d!1248249))

(declare-fun m!4828155 () Bool)

(assert (=> bs!598444 m!4828155))

(assert (=> d!1247797 d!1248249))

(declare-fun d!1248251 () Bool)

(declare-fun c!720811 () Bool)

(assert (=> d!1248251 (= c!720811 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))))))

(declare-fun e!2634668 () Bool)

(assert (=> d!1248251 (= (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))) e!2634668)))

(declare-fun b!4242540 () Bool)

(assert (=> b!4242540 (= e!2634668 (inv!61667 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))))))

(declare-fun b!4242541 () Bool)

(declare-fun e!2634669 () Bool)

(assert (=> b!4242541 (= e!2634668 e!2634669)))

(declare-fun res!1744409 () Bool)

(assert (=> b!4242541 (= res!1744409 (not ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))))))))

(assert (=> b!4242541 (=> res!1744409 e!2634669)))

(declare-fun b!4242542 () Bool)

(assert (=> b!4242542 (= e!2634669 (inv!61668 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))))))

(assert (= (and d!1248251 c!720811) b!4242540))

(assert (= (and d!1248251 (not c!720811)) b!4242541))

(assert (= (and b!4242541 (not res!1744409)) b!4242542))

(declare-fun m!4828157 () Bool)

(assert (=> b!4242540 m!4828157))

(declare-fun m!4828159 () Bool)

(assert (=> b!4242542 m!4828159))

(assert (=> b!4241775 d!1248251))

(declare-fun d!1248253 () Bool)

(declare-fun lt!1506920 () Int)

(assert (=> d!1248253 (>= lt!1506920 0)))

(declare-fun e!2634670 () Int)

(assert (=> d!1248253 (= lt!1506920 e!2634670)))

(declare-fun c!720812 () Bool)

(assert (=> d!1248253 (= c!720812 ((_ is Nil!46913) (t!350908 addTokens!17)))))

(assert (=> d!1248253 (= (size!34365 (t!350908 addTokens!17)) lt!1506920)))

(declare-fun b!4242543 () Bool)

(assert (=> b!4242543 (= e!2634670 0)))

(declare-fun b!4242544 () Bool)

(assert (=> b!4242544 (= e!2634670 (+ 1 (size!34365 (t!350908 (t!350908 addTokens!17)))))))

(assert (= (and d!1248253 c!720812) b!4242543))

(assert (= (and d!1248253 (not c!720812)) b!4242544))

(declare-fun m!4828161 () Bool)

(assert (=> b!4242544 m!4828161))

(assert (=> b!4241630 d!1248253))

(declare-fun d!1248255 () Bool)

(assert (=> d!1248255 (= (isDefined!7440 lt!1506764) (not (isEmpty!27737 lt!1506764)))))

(declare-fun bs!598445 () Bool)

(assert (= bs!598445 d!1248255))

(assert (=> bs!598445 m!4827137))

(assert (=> b!4241800 d!1248255))

(declare-fun bs!598446 () Bool)

(declare-fun d!1248257 () Bool)

(assert (= bs!598446 (and d!1248257 d!1247909)))

(declare-fun lambda!130175 () Int)

(assert (=> bs!598446 (= lambda!130175 lambda!130162)))

(assert (=> d!1248257 true))

(declare-fun lt!1506923 () Bool)

(assert (=> d!1248257 (= lt!1506923 (rulesValidInductive!2974 thiss!21540 rules!2932))))

(assert (=> d!1248257 (= lt!1506923 (forall!8538 rules!2932 lambda!130175))))

(assert (=> d!1248257 (= (rulesValid!3076 thiss!21540 rules!2932) lt!1506923)))

(declare-fun bs!598447 () Bool)

(assert (= bs!598447 d!1248257))

(assert (=> bs!598447 m!4827143))

(declare-fun m!4828163 () Bool)

(assert (=> bs!598447 m!4828163))

(assert (=> d!1247803 d!1248257))

(declare-fun d!1248259 () Bool)

(declare-fun lt!1506924 () Int)

(assert (=> d!1248259 (>= lt!1506924 0)))

(declare-fun e!2634671 () Int)

(assert (=> d!1248259 (= lt!1506924 e!2634671)))

(declare-fun c!720813 () Bool)

(assert (=> d!1248259 (= c!720813 ((_ is Nil!46913) (_1!25378 lt!1506748)))))

(assert (=> d!1248259 (= (size!34365 (_1!25378 lt!1506748)) lt!1506924)))

(declare-fun b!4242545 () Bool)

(assert (=> b!4242545 (= e!2634671 0)))

(declare-fun b!4242546 () Bool)

(assert (=> b!4242546 (= e!2634671 (+ 1 (size!34365 (t!350908 (_1!25378 lt!1506748)))))))

(assert (= (and d!1248259 c!720813) b!4242545))

(assert (= (and d!1248259 (not c!720813)) b!4242546))

(declare-fun m!4828165 () Bool)

(assert (=> b!4242546 m!4828165))

(assert (=> d!1247861 d!1248259))

(assert (=> d!1247861 d!1247883))

(declare-fun b!4242547 () Bool)

(declare-fun e!2634672 () Bool)

(declare-fun tp!1300520 () Bool)

(assert (=> b!4242547 (= e!2634672 (and tp_is_empty!22665 tp!1300520))))

(assert (=> b!4241841 (= tp!1300343 e!2634672)))

(assert (= (and b!4241841 ((_ is Cons!46911) (t!350906 (originalCharacters!8276 (h!52333 addTokens!17))))) b!4242547))

(declare-fun b!4242551 () Bool)

(declare-fun b_free!125695 () Bool)

(declare-fun b_next!126399 () Bool)

(assert (=> b!4242551 (= b_free!125695 (not b_next!126399))))

(declare-fun tb!255359 () Bool)

(declare-fun t!351214 () Bool)

(assert (=> (and b!4242551 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351214) tb!255359))

(declare-fun result!311378 () Bool)

(assert (= result!311378 result!311340))

(assert (=> d!1248197 t!351214))

(declare-fun tb!255361 () Bool)

(declare-fun t!351216 () Bool)

(assert (=> (and b!4242551 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351216) tb!255361))

(declare-fun result!311380 () Bool)

(assert (= result!311380 result!311354))

(assert (=> d!1248211 t!351216))

(declare-fun b_and!335849 () Bool)

(declare-fun tp!1300521 () Bool)

(assert (=> b!4242551 (= tp!1300521 (and (=> t!351214 result!311378) (=> t!351216 result!311380) b_and!335849))))

(declare-fun b_free!125697 () Bool)

(declare-fun b_next!126401 () Bool)

(assert (=> b!4242551 (= b_free!125697 (not b_next!126401))))

(declare-fun tb!255363 () Bool)

(declare-fun t!351218 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!351218) tb!255363))

(declare-fun result!311382 () Bool)

(assert (= result!311382 result!311086))

(assert (=> b!4241675 t!351218))

(declare-fun t!351220 () Bool)

(declare-fun tb!255365 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351220) tb!255365))

(declare-fun result!311384 () Bool)

(assert (= result!311384 result!311328))

(assert (=> d!1248131 t!351220))

(declare-fun tb!255367 () Bool)

(declare-fun t!351222 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!351222) tb!255367))

(declare-fun result!311386 () Bool)

(assert (= result!311386 result!311124))

(assert (=> d!1247867 t!351222))

(declare-fun t!351224 () Bool)

(declare-fun tb!255369 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351224) tb!255369))

(declare-fun result!311388 () Bool)

(assert (= result!311388 result!311366))

(assert (=> b!4242504 t!351224))

(declare-fun t!351226 () Bool)

(declare-fun tb!255371 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351226) tb!255371))

(declare-fun result!311390 () Bool)

(assert (= result!311390 result!311316))

(assert (=> b!4242311 t!351226))

(declare-fun t!351228 () Bool)

(declare-fun tb!255373 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!351228) tb!255373))

(declare-fun result!311392 () Bool)

(assert (= result!311392 result!311130))

(assert (=> b!4241773 t!351228))

(declare-fun tb!255375 () Bool)

(declare-fun t!351230 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!351230) tb!255375))

(declare-fun result!311394 () Bool)

(assert (= result!311394 result!311060))

(assert (=> d!1247797 t!351230))

(declare-fun tb!255377 () Bool)

(declare-fun t!351232 () Bool)

(assert (=> (and b!4242551 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351232) tb!255377))

(declare-fun result!311396 () Bool)

(assert (= result!311396 result!311264))

(assert (=> d!1248083 t!351232))

(declare-fun tp!1300525 () Bool)

(declare-fun b_and!335851 () Bool)

(assert (=> b!4242551 (= tp!1300525 (and (=> t!351222 result!311386) (=> t!351230 result!311394) (=> t!351228 result!311392) (=> t!351226 result!311390) (=> t!351218 result!311382) (=> t!351232 result!311396) (=> t!351224 result!311388) (=> t!351220 result!311384) b_and!335851))))

(declare-fun tp!1300524 () Bool)

(declare-fun e!2634674 () Bool)

(declare-fun e!2634675 () Bool)

(declare-fun b!4242550 () Bool)

(assert (=> b!4242550 (= e!2634674 (and tp!1300524 (inv!61656 (tag!8796 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (inv!61660 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) e!2634675))))

(declare-fun tp!1300522 () Bool)

(declare-fun e!2634678 () Bool)

(declare-fun b!4242549 () Bool)

(assert (=> b!4242549 (= e!2634678 (and (inv!21 (value!246598 (h!52333 (t!350908 (t!350908 addTokens!17))))) e!2634674 tp!1300522))))

(declare-fun e!2634673 () Bool)

(assert (=> b!4241857 (= tp!1300362 e!2634673)))

(assert (=> b!4242551 (= e!2634675 (and tp!1300521 tp!1300525))))

(declare-fun tp!1300523 () Bool)

(declare-fun b!4242548 () Bool)

(assert (=> b!4242548 (= e!2634673 (and (inv!61659 (h!52333 (t!350908 (t!350908 addTokens!17)))) e!2634678 tp!1300523))))

(assert (= b!4242550 b!4242551))

(assert (= b!4242549 b!4242550))

(assert (= b!4242548 b!4242549))

(assert (= (and b!4241857 ((_ is Cons!46913) (t!350908 (t!350908 addTokens!17)))) b!4242548))

(declare-fun m!4828167 () Bool)

(assert (=> b!4242550 m!4828167))

(declare-fun m!4828169 () Bool)

(assert (=> b!4242550 m!4828169))

(declare-fun m!4828171 () Bool)

(assert (=> b!4242549 m!4828171))

(declare-fun m!4828173 () Bool)

(assert (=> b!4242548 m!4828173))

(declare-fun b!4242552 () Bool)

(declare-fun e!2634679 () Bool)

(declare-fun tp!1300526 () Bool)

(assert (=> b!4242552 (= e!2634679 (and tp_is_empty!22665 tp!1300526))))

(assert (=> b!4241858 (= tp!1300361 e!2634679)))

(assert (= (and b!4241858 ((_ is Cons!46911) (originalCharacters!8276 (h!52333 (t!350908 addTokens!17))))) b!4242552))

(declare-fun e!2634680 () Bool)

(assert (=> b!4241871 (= tp!1300377 e!2634680)))

(declare-fun b!4242553 () Bool)

(assert (=> b!4242553 (= e!2634680 tp_is_empty!22665)))

(declare-fun b!4242555 () Bool)

(declare-fun tp!1300527 () Bool)

(assert (=> b!4242555 (= e!2634680 tp!1300527)))

(declare-fun b!4242554 () Bool)

(declare-fun tp!1300528 () Bool)

(declare-fun tp!1300531 () Bool)

(assert (=> b!4242554 (= e!2634680 (and tp!1300528 tp!1300531))))

(declare-fun b!4242556 () Bool)

(declare-fun tp!1300530 () Bool)

(declare-fun tp!1300529 () Bool)

(assert (=> b!4242556 (= e!2634680 (and tp!1300530 tp!1300529))))

(assert (= (and b!4241871 ((_ is ElementMatch!12837) (regex!7932 (h!52332 (t!350907 rules!2932))))) b!4242553))

(assert (= (and b!4241871 ((_ is Concat!21000) (regex!7932 (h!52332 (t!350907 rules!2932))))) b!4242554))

(assert (= (and b!4241871 ((_ is Star!12837) (regex!7932 (h!52332 (t!350907 rules!2932))))) b!4242555))

(assert (= (and b!4241871 ((_ is Union!12837) (regex!7932 (h!52332 (t!350907 rules!2932))))) b!4242556))

(declare-fun b!4242557 () Bool)

(declare-fun e!2634681 () Bool)

(declare-fun tp!1300532 () Bool)

(assert (=> b!4242557 (= e!2634681 (and tp_is_empty!22665 tp!1300532))))

(assert (=> b!4241853 (= tp!1300355 e!2634681)))

(assert (= (and b!4241853 ((_ is Cons!46911) (originalCharacters!8276 (h!52333 (t!350908 tokens!581))))) b!4242557))

(declare-fun b!4242560 () Bool)

(declare-fun b_free!125699 () Bool)

(declare-fun b_next!126403 () Bool)

(assert (=> b!4242560 (= b_free!125699 (not b_next!126403))))

(declare-fun tb!255379 () Bool)

(declare-fun t!351234 () Bool)

(assert (=> (and b!4242560 (= (toValue!10688 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351234) tb!255379))

(declare-fun result!311398 () Bool)

(assert (= result!311398 result!311340))

(assert (=> d!1248197 t!351234))

(declare-fun t!351236 () Bool)

(declare-fun tb!255381 () Bool)

(assert (=> (and b!4242560 (= (toValue!10688 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351236) tb!255381))

(declare-fun result!311400 () Bool)

(assert (= result!311400 result!311354))

(assert (=> d!1248211 t!351236))

(declare-fun tp!1300534 () Bool)

(declare-fun b_and!335853 () Bool)

(assert (=> b!4242560 (= tp!1300534 (and (=> t!351234 result!311398) (=> t!351236 result!311400) b_and!335853))))

(declare-fun b_free!125701 () Bool)

(declare-fun b_next!126405 () Bool)

(assert (=> b!4242560 (= b_free!125701 (not b_next!126405))))

(declare-fun tb!255383 () Bool)

(declare-fun t!351238 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!351238) tb!255383))

(declare-fun result!311402 () Bool)

(assert (= result!311402 result!311086))

(assert (=> b!4241675 t!351238))

(declare-fun t!351240 () Bool)

(declare-fun tb!255385 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351240) tb!255385))

(declare-fun result!311404 () Bool)

(assert (= result!311404 result!311328))

(assert (=> d!1248131 t!351240))

(declare-fun t!351242 () Bool)

(declare-fun tb!255387 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!351242) tb!255387))

(declare-fun result!311406 () Bool)

(assert (= result!311406 result!311124))

(assert (=> d!1247867 t!351242))

(declare-fun tb!255389 () Bool)

(declare-fun t!351244 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351244) tb!255389))

(declare-fun result!311408 () Bool)

(assert (= result!311408 result!311366))

(assert (=> b!4242504 t!351244))

(declare-fun t!351246 () Bool)

(declare-fun tb!255391 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351246) tb!255391))

(declare-fun result!311410 () Bool)

(assert (= result!311410 result!311316))

(assert (=> b!4242311 t!351246))

(declare-fun t!351248 () Bool)

(declare-fun tb!255393 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!351248) tb!255393))

(declare-fun result!311412 () Bool)

(assert (= result!311412 result!311130))

(assert (=> b!4241773 t!351248))

(declare-fun tb!255395 () Bool)

(declare-fun t!351250 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!351250) tb!255395))

(declare-fun result!311414 () Bool)

(assert (= result!311414 result!311060))

(assert (=> d!1247797 t!351250))

(declare-fun t!351252 () Bool)

(declare-fun tb!255397 () Bool)

(assert (=> (and b!4242560 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351252) tb!255397))

(declare-fun result!311416 () Bool)

(assert (= result!311416 result!311264))

(assert (=> d!1248083 t!351252))

(declare-fun tp!1300533 () Bool)

(declare-fun b_and!335855 () Bool)

(assert (=> b!4242560 (= tp!1300533 (and (=> t!351250 result!311414) (=> t!351242 result!311406) (=> t!351240 result!311404) (=> t!351244 result!311408) (=> t!351252 result!311416) (=> t!351238 result!311402) (=> t!351248 result!311412) (=> t!351246 result!311410) b_and!335855))))

(declare-fun e!2634684 () Bool)

(assert (=> b!4242560 (= e!2634684 (and tp!1300534 tp!1300533))))

(declare-fun tp!1300536 () Bool)

(declare-fun e!2634683 () Bool)

(declare-fun b!4242559 () Bool)

(assert (=> b!4242559 (= e!2634683 (and tp!1300536 (inv!61656 (tag!8796 (h!52332 (t!350907 (t!350907 rules!2932))))) (inv!61660 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) e!2634684))))

(declare-fun b!4242558 () Bool)

(declare-fun e!2634682 () Bool)

(declare-fun tp!1300535 () Bool)

(assert (=> b!4242558 (= e!2634682 (and e!2634683 tp!1300535))))

(assert (=> b!4241870 (= tp!1300376 e!2634682)))

(assert (= b!4242559 b!4242560))

(assert (= b!4242558 b!4242559))

(assert (= (and b!4241870 ((_ is Cons!46912) (t!350907 (t!350907 rules!2932)))) b!4242558))

(declare-fun m!4828175 () Bool)

(assert (=> b!4242559 m!4828175))

(declare-fun m!4828177 () Bool)

(assert (=> b!4242559 m!4828177))

(declare-fun b!4242561 () Bool)

(declare-fun e!2634686 () Bool)

(declare-fun tp!1300537 () Bool)

(assert (=> b!4242561 (= e!2634686 (and tp_is_empty!22665 tp!1300537))))

(assert (=> b!4241835 (= tp!1300336 e!2634686)))

(assert (= (and b!4241835 ((_ is Cons!46911) (t!350906 (originalCharacters!8276 (h!52333 tokens!581))))) b!4242561))

(declare-fun b!4242565 () Bool)

(declare-fun b_free!125703 () Bool)

(declare-fun b_next!126407 () Bool)

(assert (=> b!4242565 (= b_free!125703 (not b_next!126407))))

(declare-fun tb!255399 () Bool)

(declare-fun t!351254 () Bool)

(assert (=> (and b!4242565 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351254) tb!255399))

(declare-fun result!311418 () Bool)

(assert (= result!311418 result!311340))

(assert (=> d!1248197 t!351254))

(declare-fun tb!255401 () Bool)

(declare-fun t!351256 () Bool)

(assert (=> (and b!4242565 (= (toValue!10688 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toValue!10688 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351256) tb!255401))

(declare-fun result!311420 () Bool)

(assert (= result!311420 result!311354))

(assert (=> d!1248211 t!351256))

(declare-fun tp!1300538 () Bool)

(declare-fun b_and!335857 () Bool)

(assert (=> b!4242565 (= tp!1300538 (and (=> t!351254 result!311418) (=> t!351256 result!311420) b_and!335857))))

(declare-fun b_free!125705 () Bool)

(declare-fun b_next!126409 () Bool)

(assert (=> b!4242565 (= b_free!125705 (not b_next!126409))))

(declare-fun t!351258 () Bool)

(declare-fun tb!255403 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581))))) t!351258) tb!255403))

(declare-fun result!311422 () Bool)

(assert (= result!311422 result!311086))

(assert (=> b!4241675 t!351258))

(declare-fun t!351260 () Bool)

(declare-fun tb!255405 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506769)))))) t!351260) tb!255405))

(declare-fun result!311424 () Bool)

(assert (= result!311424 result!311328))

(assert (=> d!1248131 t!351260))

(declare-fun t!351262 () Bool)

(declare-fun tb!255407 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681)))))) t!351262) tb!255407))

(declare-fun result!311426 () Bool)

(assert (= result!311426 result!311124))

(assert (=> d!1247867 t!351262))

(declare-fun t!351264 () Bool)

(declare-fun tb!255409 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) t!351264) tb!255409))

(declare-fun result!311428 () Bool)

(assert (= result!311428 result!311366))

(assert (=> b!4242504 t!351264))

(declare-fun tb!255411 () Bool)

(declare-fun t!351266 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) t!351266) tb!255411))

(declare-fun result!311430 () Bool)

(assert (= result!311430 result!311316))

(assert (=> b!4242311 t!351266))

(declare-fun t!351268 () Bool)

(declare-fun tb!255413 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17))))) t!351268) tb!255413))

(declare-fun result!311432 () Bool)

(assert (= result!311432 result!311130))

(assert (=> b!4241773 t!351268))

(declare-fun tb!255415 () Bool)

(declare-fun t!351270 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680)))))) t!351270) tb!255415))

(declare-fun result!311434 () Bool)

(assert (= result!311434 result!311060))

(assert (=> d!1247797 t!351270))

(declare-fun tb!255417 () Bool)

(declare-fun t!351272 () Bool)

(assert (=> (and b!4242565 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (get!15248 lt!1506764)))))) t!351272) tb!255417))

(declare-fun result!311436 () Bool)

(assert (= result!311436 result!311264))

(assert (=> d!1248083 t!351272))

(declare-fun b_and!335859 () Bool)

(declare-fun tp!1300542 () Bool)

(assert (=> b!4242565 (= tp!1300542 (and (=> t!351266 result!311430) (=> t!351262 result!311426) (=> t!351264 result!311428) (=> t!351268 result!311432) (=> t!351260 result!311424) (=> t!351258 result!311422) (=> t!351272 result!311436) (=> t!351270 result!311434) b_and!335859))))

(declare-fun tp!1300541 () Bool)

(declare-fun e!2634688 () Bool)

(declare-fun b!4242564 () Bool)

(declare-fun e!2634689 () Bool)

(assert (=> b!4242564 (= e!2634688 (and tp!1300541 (inv!61656 (tag!8796 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (inv!61660 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) e!2634689))))

(declare-fun tp!1300539 () Bool)

(declare-fun e!2634692 () Bool)

(declare-fun b!4242563 () Bool)

(assert (=> b!4242563 (= e!2634692 (and (inv!21 (value!246598 (h!52333 (t!350908 (t!350908 tokens!581))))) e!2634688 tp!1300539))))

(declare-fun e!2634687 () Bool)

(assert (=> b!4241852 (= tp!1300356 e!2634687)))

(assert (=> b!4242565 (= e!2634689 (and tp!1300538 tp!1300542))))

(declare-fun b!4242562 () Bool)

(declare-fun tp!1300540 () Bool)

(assert (=> b!4242562 (= e!2634687 (and (inv!61659 (h!52333 (t!350908 (t!350908 tokens!581)))) e!2634692 tp!1300540))))

(assert (= b!4242564 b!4242565))

(assert (= b!4242563 b!4242564))

(assert (= b!4242562 b!4242563))

(assert (= (and b!4241852 ((_ is Cons!46913) (t!350908 (t!350908 tokens!581)))) b!4242562))

(declare-fun m!4828179 () Bool)

(assert (=> b!4242564 m!4828179))

(declare-fun m!4828181 () Bool)

(assert (=> b!4242564 m!4828181))

(declare-fun m!4828183 () Bool)

(assert (=> b!4242563 m!4828183))

(declare-fun m!4828185 () Bool)

(assert (=> b!4242562 m!4828185))

(declare-fun e!2634693 () Bool)

(assert (=> b!4241859 (= tp!1300363 e!2634693)))

(declare-fun b!4242566 () Bool)

(assert (=> b!4242566 (= e!2634693 tp_is_empty!22665)))

(declare-fun b!4242568 () Bool)

(declare-fun tp!1300543 () Bool)

(assert (=> b!4242568 (= e!2634693 tp!1300543)))

(declare-fun b!4242567 () Bool)

(declare-fun tp!1300544 () Bool)

(declare-fun tp!1300547 () Bool)

(assert (=> b!4242567 (= e!2634693 (and tp!1300544 tp!1300547))))

(declare-fun b!4242569 () Bool)

(declare-fun tp!1300546 () Bool)

(declare-fun tp!1300545 () Bool)

(assert (=> b!4242569 (= e!2634693 (and tp!1300546 tp!1300545))))

(assert (= (and b!4241859 ((_ is ElementMatch!12837) (regex!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) b!4242566))

(assert (= (and b!4241859 ((_ is Concat!21000) (regex!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) b!4242567))

(assert (= (and b!4241859 ((_ is Star!12837) (regex!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) b!4242568))

(assert (= (and b!4241859 ((_ is Union!12837) (regex!7932 (rule!11060 (h!52333 (t!350908 addTokens!17)))))) b!4242569))

(declare-fun e!2634694 () Bool)

(assert (=> b!4241828 (= tp!1300330 e!2634694)))

(declare-fun b!4242570 () Bool)

(assert (=> b!4242570 (= e!2634694 tp_is_empty!22665)))

(declare-fun b!4242572 () Bool)

(declare-fun tp!1300548 () Bool)

(assert (=> b!4242572 (= e!2634694 tp!1300548)))

(declare-fun b!4242571 () Bool)

(declare-fun tp!1300549 () Bool)

(declare-fun tp!1300552 () Bool)

(assert (=> b!4242571 (= e!2634694 (and tp!1300549 tp!1300552))))

(declare-fun b!4242573 () Bool)

(declare-fun tp!1300551 () Bool)

(declare-fun tp!1300550 () Bool)

(assert (=> b!4242573 (= e!2634694 (and tp!1300551 tp!1300550))))

(assert (= (and b!4241828 ((_ is ElementMatch!12837) (regOne!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242570))

(assert (= (and b!4241828 ((_ is Concat!21000) (regOne!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242571))

(assert (= (and b!4241828 ((_ is Star!12837) (regOne!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242572))

(assert (= (and b!4241828 ((_ is Union!12837) (regOne!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242573))

(declare-fun e!2634695 () Bool)

(assert (=> b!4241828 (= tp!1300333 e!2634695)))

(declare-fun b!4242574 () Bool)

(assert (=> b!4242574 (= e!2634695 tp_is_empty!22665)))

(declare-fun b!4242576 () Bool)

(declare-fun tp!1300553 () Bool)

(assert (=> b!4242576 (= e!2634695 tp!1300553)))

(declare-fun b!4242575 () Bool)

(declare-fun tp!1300554 () Bool)

(declare-fun tp!1300557 () Bool)

(assert (=> b!4242575 (= e!2634695 (and tp!1300554 tp!1300557))))

(declare-fun b!4242577 () Bool)

(declare-fun tp!1300556 () Bool)

(declare-fun tp!1300555 () Bool)

(assert (=> b!4242577 (= e!2634695 (and tp!1300556 tp!1300555))))

(assert (= (and b!4241828 ((_ is ElementMatch!12837) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242574))

(assert (= (and b!4241828 ((_ is Concat!21000) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242575))

(assert (= (and b!4241828 ((_ is Star!12837) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242576))

(assert (= (and b!4241828 ((_ is Union!12837) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242577))

(declare-fun e!2634696 () Bool)

(assert (=> b!4241854 (= tp!1300357 e!2634696)))

(declare-fun b!4242578 () Bool)

(assert (=> b!4242578 (= e!2634696 tp_is_empty!22665)))

(declare-fun b!4242580 () Bool)

(declare-fun tp!1300558 () Bool)

(assert (=> b!4242580 (= e!2634696 tp!1300558)))

(declare-fun b!4242579 () Bool)

(declare-fun tp!1300559 () Bool)

(declare-fun tp!1300562 () Bool)

(assert (=> b!4242579 (= e!2634696 (and tp!1300559 tp!1300562))))

(declare-fun b!4242581 () Bool)

(declare-fun tp!1300561 () Bool)

(declare-fun tp!1300560 () Bool)

(assert (=> b!4242581 (= e!2634696 (and tp!1300561 tp!1300560))))

(assert (= (and b!4241854 ((_ is ElementMatch!12837) (regex!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) b!4242578))

(assert (= (and b!4241854 ((_ is Concat!21000) (regex!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) b!4242579))

(assert (= (and b!4241854 ((_ is Star!12837) (regex!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) b!4242580))

(assert (= (and b!4241854 ((_ is Union!12837) (regex!7932 (rule!11060 (h!52333 (t!350908 tokens!581)))))) b!4242581))

(declare-fun tp!1300569 () Bool)

(declare-fun e!2634701 () Bool)

(declare-fun b!4242590 () Bool)

(declare-fun tp!1300571 () Bool)

(assert (=> b!4242590 (= e!2634701 (and (inv!61663 (left!34855 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))))) tp!1300569 (inv!61663 (right!35185 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))))) tp!1300571))))

(declare-fun b!4242592 () Bool)

(declare-fun e!2634702 () Bool)

(declare-fun tp!1300570 () Bool)

(assert (=> b!4242592 (= e!2634702 tp!1300570)))

(declare-fun b!4242591 () Bool)

(declare-fun inv!61670 (IArray!28291) Bool)

(assert (=> b!4242591 (= e!2634701 (and (inv!61670 (xs!17449 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))))) e!2634702))))

(assert (=> b!4241677 (= tp!1300252 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581))))) e!2634701))))

(assert (= (and b!4241677 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))))) b!4242590))

(assert (= b!4242591 b!4242592))

(assert (= (and b!4241677 ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (value!246598 (h!52333 tokens!581)))))) b!4242591))

(declare-fun m!4828187 () Bool)

(assert (=> b!4242590 m!4828187))

(declare-fun m!4828189 () Bool)

(assert (=> b!4242590 m!4828189))

(declare-fun m!4828191 () Bool)

(assert (=> b!4242591 m!4828191))

(assert (=> b!4241677 m!4827033))

(declare-fun e!2634703 () Bool)

(assert (=> b!4241830 (= tp!1300332 e!2634703)))

(declare-fun b!4242593 () Bool)

(assert (=> b!4242593 (= e!2634703 tp_is_empty!22665)))

(declare-fun b!4242595 () Bool)

(declare-fun tp!1300572 () Bool)

(assert (=> b!4242595 (= e!2634703 tp!1300572)))

(declare-fun b!4242594 () Bool)

(declare-fun tp!1300573 () Bool)

(declare-fun tp!1300576 () Bool)

(assert (=> b!4242594 (= e!2634703 (and tp!1300573 tp!1300576))))

(declare-fun b!4242596 () Bool)

(declare-fun tp!1300575 () Bool)

(declare-fun tp!1300574 () Bool)

(assert (=> b!4242596 (= e!2634703 (and tp!1300575 tp!1300574))))

(assert (= (and b!4241830 ((_ is ElementMatch!12837) (regOne!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242593))

(assert (= (and b!4241830 ((_ is Concat!21000) (regOne!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242594))

(assert (= (and b!4241830 ((_ is Star!12837) (regOne!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242595))

(assert (= (and b!4241830 ((_ is Union!12837) (regOne!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242596))

(declare-fun e!2634704 () Bool)

(assert (=> b!4241830 (= tp!1300331 e!2634704)))

(declare-fun b!4242597 () Bool)

(assert (=> b!4242597 (= e!2634704 tp_is_empty!22665)))

(declare-fun b!4242599 () Bool)

(declare-fun tp!1300577 () Bool)

(assert (=> b!4242599 (= e!2634704 tp!1300577)))

(declare-fun b!4242598 () Bool)

(declare-fun tp!1300578 () Bool)

(declare-fun tp!1300581 () Bool)

(assert (=> b!4242598 (= e!2634704 (and tp!1300578 tp!1300581))))

(declare-fun b!4242600 () Bool)

(declare-fun tp!1300580 () Bool)

(declare-fun tp!1300579 () Bool)

(assert (=> b!4242600 (= e!2634704 (and tp!1300580 tp!1300579))))

(assert (= (and b!4241830 ((_ is ElementMatch!12837) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242597))

(assert (= (and b!4241830 ((_ is Concat!21000) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242598))

(assert (= (and b!4241830 ((_ is Star!12837) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242599))

(assert (= (and b!4241830 ((_ is Union!12837) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242600))

(declare-fun tp!1300582 () Bool)

(declare-fun tp!1300584 () Bool)

(declare-fun b!4242601 () Bool)

(declare-fun e!2634705 () Bool)

(assert (=> b!4242601 (= e!2634705 (and (inv!61663 (left!34855 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))))) tp!1300582 (inv!61663 (right!35185 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))))) tp!1300584))))

(declare-fun b!4242603 () Bool)

(declare-fun e!2634706 () Bool)

(declare-fun tp!1300583 () Bool)

(assert (=> b!4242603 (= e!2634706 tp!1300583)))

(declare-fun b!4242602 () Bool)

(assert (=> b!4242602 (= e!2634705 (and (inv!61670 (xs!17449 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))))) e!2634706))))

(assert (=> b!4241551 (= tp!1300248 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680)))))) e!2634705))))

(assert (= (and b!4241551 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))))) b!4242601))

(assert (= b!4242602 b!4242603))

(assert (= (and b!4241551 ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))) (value!246598 (_1!25377 (v!41019 lt!1506680))))))) b!4242602))

(declare-fun m!4828193 () Bool)

(assert (=> b!4242601 m!4828193))

(declare-fun m!4828195 () Bool)

(assert (=> b!4242601 m!4828195))

(declare-fun m!4828197 () Bool)

(assert (=> b!4242602 m!4828197))

(assert (=> b!4241551 m!4826851))

(declare-fun e!2634707 () Bool)

(assert (=> b!4241874 (= tp!1300379 e!2634707)))

(declare-fun b!4242604 () Bool)

(assert (=> b!4242604 (= e!2634707 tp_is_empty!22665)))

(declare-fun b!4242606 () Bool)

(declare-fun tp!1300585 () Bool)

(assert (=> b!4242606 (= e!2634707 tp!1300585)))

(declare-fun b!4242605 () Bool)

(declare-fun tp!1300586 () Bool)

(declare-fun tp!1300589 () Bool)

(assert (=> b!4242605 (= e!2634707 (and tp!1300586 tp!1300589))))

(declare-fun b!4242607 () Bool)

(declare-fun tp!1300588 () Bool)

(declare-fun tp!1300587 () Bool)

(assert (=> b!4242607 (= e!2634707 (and tp!1300588 tp!1300587))))

(assert (= (and b!4241874 ((_ is ElementMatch!12837) (regOne!26186 (regex!7932 (h!52332 rules!2932))))) b!4242604))

(assert (= (and b!4241874 ((_ is Concat!21000) (regOne!26186 (regex!7932 (h!52332 rules!2932))))) b!4242605))

(assert (= (and b!4241874 ((_ is Star!12837) (regOne!26186 (regex!7932 (h!52332 rules!2932))))) b!4242606))

(assert (= (and b!4241874 ((_ is Union!12837) (regOne!26186 (regex!7932 (h!52332 rules!2932))))) b!4242607))

(declare-fun e!2634708 () Bool)

(assert (=> b!4241874 (= tp!1300382 e!2634708)))

(declare-fun b!4242608 () Bool)

(assert (=> b!4242608 (= e!2634708 tp_is_empty!22665)))

(declare-fun b!4242610 () Bool)

(declare-fun tp!1300590 () Bool)

(assert (=> b!4242610 (= e!2634708 tp!1300590)))

(declare-fun b!4242609 () Bool)

(declare-fun tp!1300591 () Bool)

(declare-fun tp!1300594 () Bool)

(assert (=> b!4242609 (= e!2634708 (and tp!1300591 tp!1300594))))

(declare-fun b!4242611 () Bool)

(declare-fun tp!1300593 () Bool)

(declare-fun tp!1300592 () Bool)

(assert (=> b!4242611 (= e!2634708 (and tp!1300593 tp!1300592))))

(assert (= (and b!4241874 ((_ is ElementMatch!12837) (regTwo!26186 (regex!7932 (h!52332 rules!2932))))) b!4242608))

(assert (= (and b!4241874 ((_ is Concat!21000) (regTwo!26186 (regex!7932 (h!52332 rules!2932))))) b!4242609))

(assert (= (and b!4241874 ((_ is Star!12837) (regTwo!26186 (regex!7932 (h!52332 rules!2932))))) b!4242610))

(assert (= (and b!4241874 ((_ is Union!12837) (regTwo!26186 (regex!7932 (h!52332 rules!2932))))) b!4242611))

(declare-fun e!2634709 () Bool)

(assert (=> b!4241829 (= tp!1300329 e!2634709)))

(declare-fun b!4242612 () Bool)

(assert (=> b!4242612 (= e!2634709 tp_is_empty!22665)))

(declare-fun b!4242614 () Bool)

(declare-fun tp!1300595 () Bool)

(assert (=> b!4242614 (= e!2634709 tp!1300595)))

(declare-fun b!4242613 () Bool)

(declare-fun tp!1300596 () Bool)

(declare-fun tp!1300599 () Bool)

(assert (=> b!4242613 (= e!2634709 (and tp!1300596 tp!1300599))))

(declare-fun b!4242615 () Bool)

(declare-fun tp!1300598 () Bool)

(declare-fun tp!1300597 () Bool)

(assert (=> b!4242615 (= e!2634709 (and tp!1300598 tp!1300597))))

(assert (= (and b!4241829 ((_ is ElementMatch!12837) (reg!13166 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242612))

(assert (= (and b!4241829 ((_ is Concat!21000) (reg!13166 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242613))

(assert (= (and b!4241829 ((_ is Star!12837) (reg!13166 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242614))

(assert (= (and b!4241829 ((_ is Union!12837) (reg!13166 (regex!7932 (rule!11060 (h!52333 addTokens!17)))))) b!4242615))

(declare-fun b!4242616 () Bool)

(declare-fun e!2634710 () Bool)

(declare-fun tp!1300600 () Bool)

(assert (=> b!4242616 (= e!2634710 (and tp_is_empty!22665 tp!1300600))))

(assert (=> b!4241861 (= tp!1300365 e!2634710)))

(assert (= (and b!4241861 ((_ is Cons!46911) (t!350906 (t!350906 shorterInput!51)))) b!4242616))

(declare-fun e!2634711 () Bool)

(assert (=> b!4241876 (= tp!1300381 e!2634711)))

(declare-fun b!4242617 () Bool)

(assert (=> b!4242617 (= e!2634711 tp_is_empty!22665)))

(declare-fun b!4242619 () Bool)

(declare-fun tp!1300601 () Bool)

(assert (=> b!4242619 (= e!2634711 tp!1300601)))

(declare-fun b!4242618 () Bool)

(declare-fun tp!1300602 () Bool)

(declare-fun tp!1300605 () Bool)

(assert (=> b!4242618 (= e!2634711 (and tp!1300602 tp!1300605))))

(declare-fun b!4242620 () Bool)

(declare-fun tp!1300604 () Bool)

(declare-fun tp!1300603 () Bool)

(assert (=> b!4242620 (= e!2634711 (and tp!1300604 tp!1300603))))

(assert (= (and b!4241876 ((_ is ElementMatch!12837) (regOne!26187 (regex!7932 (h!52332 rules!2932))))) b!4242617))

(assert (= (and b!4241876 ((_ is Concat!21000) (regOne!26187 (regex!7932 (h!52332 rules!2932))))) b!4242618))

(assert (= (and b!4241876 ((_ is Star!12837) (regOne!26187 (regex!7932 (h!52332 rules!2932))))) b!4242619))

(assert (= (and b!4241876 ((_ is Union!12837) (regOne!26187 (regex!7932 (h!52332 rules!2932))))) b!4242620))

(declare-fun e!2634712 () Bool)

(assert (=> b!4241876 (= tp!1300380 e!2634712)))

(declare-fun b!4242621 () Bool)

(assert (=> b!4242621 (= e!2634712 tp_is_empty!22665)))

(declare-fun b!4242623 () Bool)

(declare-fun tp!1300606 () Bool)

(assert (=> b!4242623 (= e!2634712 tp!1300606)))

(declare-fun b!4242622 () Bool)

(declare-fun tp!1300607 () Bool)

(declare-fun tp!1300610 () Bool)

(assert (=> b!4242622 (= e!2634712 (and tp!1300607 tp!1300610))))

(declare-fun b!4242624 () Bool)

(declare-fun tp!1300609 () Bool)

(declare-fun tp!1300608 () Bool)

(assert (=> b!4242624 (= e!2634712 (and tp!1300609 tp!1300608))))

(assert (= (and b!4241876 ((_ is ElementMatch!12837) (regTwo!26187 (regex!7932 (h!52332 rules!2932))))) b!4242621))

(assert (= (and b!4241876 ((_ is Concat!21000) (regTwo!26187 (regex!7932 (h!52332 rules!2932))))) b!4242622))

(assert (= (and b!4241876 ((_ is Star!12837) (regTwo!26187 (regex!7932 (h!52332 rules!2932))))) b!4242623))

(assert (= (and b!4241876 ((_ is Union!12837) (regTwo!26187 (regex!7932 (h!52332 rules!2932))))) b!4242624))

(declare-fun e!2634713 () Bool)

(assert (=> b!4241838 (= tp!1300337 e!2634713)))

(declare-fun b!4242625 () Bool)

(assert (=> b!4242625 (= e!2634713 tp_is_empty!22665)))

(declare-fun b!4242627 () Bool)

(declare-fun tp!1300611 () Bool)

(assert (=> b!4242627 (= e!2634713 tp!1300611)))

(declare-fun b!4242626 () Bool)

(declare-fun tp!1300612 () Bool)

(declare-fun tp!1300615 () Bool)

(assert (=> b!4242626 (= e!2634713 (and tp!1300612 tp!1300615))))

(declare-fun b!4242628 () Bool)

(declare-fun tp!1300614 () Bool)

(declare-fun tp!1300613 () Bool)

(assert (=> b!4242628 (= e!2634713 (and tp!1300614 tp!1300613))))

(assert (= (and b!4241838 ((_ is ElementMatch!12837) (reg!13166 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242625))

(assert (= (and b!4241838 ((_ is Concat!21000) (reg!13166 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242626))

(assert (= (and b!4241838 ((_ is Star!12837) (reg!13166 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242627))

(assert (= (and b!4241838 ((_ is Union!12837) (reg!13166 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242628))

(declare-fun b!4242629 () Bool)

(declare-fun e!2634714 () Bool)

(declare-fun tp!1300616 () Bool)

(assert (=> b!4242629 (= e!2634714 (and tp_is_empty!22665 tp!1300616))))

(assert (=> b!4241856 (= tp!1300359 e!2634714)))

(assert (= (and b!4241856 ((_ is Cons!46911) (t!350906 (t!350906 suffix!1262)))) b!4242629))

(declare-fun e!2634715 () Bool)

(assert (=> b!4241875 (= tp!1300378 e!2634715)))

(declare-fun b!4242630 () Bool)

(assert (=> b!4242630 (= e!2634715 tp_is_empty!22665)))

(declare-fun b!4242632 () Bool)

(declare-fun tp!1300617 () Bool)

(assert (=> b!4242632 (= e!2634715 tp!1300617)))

(declare-fun b!4242631 () Bool)

(declare-fun tp!1300618 () Bool)

(declare-fun tp!1300621 () Bool)

(assert (=> b!4242631 (= e!2634715 (and tp!1300618 tp!1300621))))

(declare-fun b!4242633 () Bool)

(declare-fun tp!1300620 () Bool)

(declare-fun tp!1300619 () Bool)

(assert (=> b!4242633 (= e!2634715 (and tp!1300620 tp!1300619))))

(assert (= (and b!4241875 ((_ is ElementMatch!12837) (reg!13166 (regex!7932 (h!52332 rules!2932))))) b!4242630))

(assert (= (and b!4241875 ((_ is Concat!21000) (reg!13166 (regex!7932 (h!52332 rules!2932))))) b!4242631))

(assert (= (and b!4241875 ((_ is Star!12837) (reg!13166 (regex!7932 (h!52332 rules!2932))))) b!4242632))

(assert (= (and b!4241875 ((_ is Union!12837) (reg!13166 (regex!7932 (h!52332 rules!2932))))) b!4242633))

(declare-fun e!2634716 () Bool)

(assert (=> b!4241837 (= tp!1300338 e!2634716)))

(declare-fun b!4242634 () Bool)

(assert (=> b!4242634 (= e!2634716 tp_is_empty!22665)))

(declare-fun b!4242636 () Bool)

(declare-fun tp!1300622 () Bool)

(assert (=> b!4242636 (= e!2634716 tp!1300622)))

(declare-fun b!4242635 () Bool)

(declare-fun tp!1300623 () Bool)

(declare-fun tp!1300626 () Bool)

(assert (=> b!4242635 (= e!2634716 (and tp!1300623 tp!1300626))))

(declare-fun b!4242637 () Bool)

(declare-fun tp!1300625 () Bool)

(declare-fun tp!1300624 () Bool)

(assert (=> b!4242637 (= e!2634716 (and tp!1300625 tp!1300624))))

(assert (= (and b!4241837 ((_ is ElementMatch!12837) (regOne!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242634))

(assert (= (and b!4241837 ((_ is Concat!21000) (regOne!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242635))

(assert (= (and b!4241837 ((_ is Star!12837) (regOne!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242636))

(assert (= (and b!4241837 ((_ is Union!12837) (regOne!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242637))

(declare-fun e!2634717 () Bool)

(assert (=> b!4241837 (= tp!1300341 e!2634717)))

(declare-fun b!4242638 () Bool)

(assert (=> b!4242638 (= e!2634717 tp_is_empty!22665)))

(declare-fun b!4242640 () Bool)

(declare-fun tp!1300627 () Bool)

(assert (=> b!4242640 (= e!2634717 tp!1300627)))

(declare-fun b!4242639 () Bool)

(declare-fun tp!1300628 () Bool)

(declare-fun tp!1300631 () Bool)

(assert (=> b!4242639 (= e!2634717 (and tp!1300628 tp!1300631))))

(declare-fun b!4242641 () Bool)

(declare-fun tp!1300630 () Bool)

(declare-fun tp!1300629 () Bool)

(assert (=> b!4242641 (= e!2634717 (and tp!1300630 tp!1300629))))

(assert (= (and b!4241837 ((_ is ElementMatch!12837) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242638))

(assert (= (and b!4241837 ((_ is Concat!21000) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242639))

(assert (= (and b!4241837 ((_ is Star!12837) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242640))

(assert (= (and b!4241837 ((_ is Union!12837) (regTwo!26186 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242641))

(declare-fun e!2634718 () Bool)

(assert (=> b!4241839 (= tp!1300340 e!2634718)))

(declare-fun b!4242642 () Bool)

(assert (=> b!4242642 (= e!2634718 tp_is_empty!22665)))

(declare-fun b!4242644 () Bool)

(declare-fun tp!1300632 () Bool)

(assert (=> b!4242644 (= e!2634718 tp!1300632)))

(declare-fun b!4242643 () Bool)

(declare-fun tp!1300633 () Bool)

(declare-fun tp!1300636 () Bool)

(assert (=> b!4242643 (= e!2634718 (and tp!1300633 tp!1300636))))

(declare-fun b!4242645 () Bool)

(declare-fun tp!1300635 () Bool)

(declare-fun tp!1300634 () Bool)

(assert (=> b!4242645 (= e!2634718 (and tp!1300635 tp!1300634))))

(assert (= (and b!4241839 ((_ is ElementMatch!12837) (regOne!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242642))

(assert (= (and b!4241839 ((_ is Concat!21000) (regOne!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242643))

(assert (= (and b!4241839 ((_ is Star!12837) (regOne!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242644))

(assert (= (and b!4241839 ((_ is Union!12837) (regOne!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242645))

(declare-fun e!2634719 () Bool)

(assert (=> b!4241839 (= tp!1300339 e!2634719)))

(declare-fun b!4242646 () Bool)

(assert (=> b!4242646 (= e!2634719 tp_is_empty!22665)))

(declare-fun b!4242648 () Bool)

(declare-fun tp!1300637 () Bool)

(assert (=> b!4242648 (= e!2634719 tp!1300637)))

(declare-fun b!4242647 () Bool)

(declare-fun tp!1300638 () Bool)

(declare-fun tp!1300641 () Bool)

(assert (=> b!4242647 (= e!2634719 (and tp!1300638 tp!1300641))))

(declare-fun b!4242649 () Bool)

(declare-fun tp!1300640 () Bool)

(declare-fun tp!1300639 () Bool)

(assert (=> b!4242649 (= e!2634719 (and tp!1300640 tp!1300639))))

(assert (= (and b!4241839 ((_ is ElementMatch!12837) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242646))

(assert (= (and b!4241839 ((_ is Concat!21000) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242647))

(assert (= (and b!4241839 ((_ is Star!12837) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242648))

(assert (= (and b!4241839 ((_ is Union!12837) (regTwo!26187 (regex!7932 (rule!11060 (h!52333 tokens!581)))))) b!4242649))

(declare-fun tp!1300644 () Bool)

(declare-fun b!4242650 () Bool)

(declare-fun tp!1300642 () Bool)

(declare-fun e!2634720 () Bool)

(assert (=> b!4242650 (= e!2634720 (and (inv!61663 (left!34855 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))))) tp!1300642 (inv!61663 (right!35185 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))))) tp!1300644))))

(declare-fun b!4242652 () Bool)

(declare-fun e!2634721 () Bool)

(declare-fun tp!1300643 () Bool)

(assert (=> b!4242652 (= e!2634721 tp!1300643)))

(declare-fun b!4242651 () Bool)

(assert (=> b!4242651 (= e!2634720 (and (inv!61670 (xs!17449 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))))) e!2634721))))

(assert (=> b!4241775 (= tp!1300318 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17))))) e!2634720))))

(assert (= (and b!4241775 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))))) b!4242650))

(assert (= b!4242651 b!4242652))

(assert (= (and b!4241775 ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (value!246598 (h!52333 addTokens!17)))))) b!4242651))

(declare-fun m!4828199 () Bool)

(assert (=> b!4242650 m!4828199))

(declare-fun m!4828201 () Bool)

(assert (=> b!4242650 m!4828201))

(declare-fun m!4828203 () Bool)

(assert (=> b!4242651 m!4828203))

(assert (=> b!4241775 m!4827105))

(declare-fun b!4242653 () Bool)

(declare-fun tp!1300645 () Bool)

(declare-fun e!2634722 () Bool)

(declare-fun tp!1300647 () Bool)

(assert (=> b!4242653 (= e!2634722 (and (inv!61663 (left!34855 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))))) tp!1300645 (inv!61663 (right!35185 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))))) tp!1300647))))

(declare-fun b!4242655 () Bool)

(declare-fun e!2634723 () Bool)

(declare-fun tp!1300646 () Bool)

(assert (=> b!4242655 (= e!2634723 tp!1300646)))

(declare-fun b!4242654 () Bool)

(assert (=> b!4242654 (= e!2634722 (and (inv!61670 (xs!17449 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))))) e!2634723))))

(assert (=> b!4241772 (= tp!1300317 (and (inv!61663 (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681)))))) e!2634722))))

(assert (= (and b!4241772 ((_ is Node!14143) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))))) b!4242653))

(assert (= b!4242654 b!4242655))

(assert (= (and b!4241772 ((_ is Leaf!21868) (c!720623 (dynLambda!20114 (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))) (value!246598 (_1!25377 (v!41019 lt!1506681))))))) b!4242654))

(declare-fun m!4828205 () Bool)

(assert (=> b!4242653 m!4828205))

(declare-fun m!4828207 () Bool)

(assert (=> b!4242653 m!4828207))

(declare-fun m!4828209 () Bool)

(assert (=> b!4242654 m!4828209))

(assert (=> b!4241772 m!4827097))

(declare-fun b!4242656 () Bool)

(declare-fun e!2634724 () Bool)

(declare-fun tp!1300648 () Bool)

(assert (=> b!4242656 (= e!2634724 (and tp_is_empty!22665 tp!1300648))))

(assert (=> b!4241840 (= tp!1300342 e!2634724)))

(assert (= (and b!4241840 ((_ is Cons!46911) (t!350906 (t!350906 longerInput!51)))) b!4242656))

(declare-fun b_lambda!124947 () Bool)

(assert (= b_lambda!124945 (or (and b!4241486 b_free!125653 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) (and b!4242565 b_free!125705 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) (and b!4241872 b_free!125681 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) (and b!4242560 b_free!125701 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) (and b!4241487 b_free!125657 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) (and b!4241855 b_free!125673) (and b!4241478 b_free!125649 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) (and b!4242551 b_free!125697 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) (and b!4241860 b_free!125677 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))))) b_lambda!124947)))

(declare-fun b_lambda!124949 () Bool)

(assert (= b_lambda!124907 (or (and b!4242565 b_free!125705 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4241478 b_free!125649 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4241860 b_free!125677 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4241855 b_free!125673 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4241487 b_free!125657 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4242560 b_free!125701 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4241872 b_free!125681 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4242551 b_free!125697 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) (and b!4241486 b_free!125653 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506681))))))) b_lambda!124949)))

(declare-fun b_lambda!124951 () Bool)

(assert (= b_lambda!124893 (or (and b!4241860 b_free!125677 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4242560 b_free!125701 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4241478 b_free!125649 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4242565 b_free!125705 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4241487 b_free!125657 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4241855 b_free!125673 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4242551 b_free!125697 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4241486 b_free!125653 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) (and b!4241872 b_free!125681 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (_1!25377 (v!41019 lt!1506680))))))) b_lambda!124951)))

(declare-fun b_lambda!124953 () Bool)

(assert (= b_lambda!124937 (or (and b!4242551 b_free!125697 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 addTokens!17)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4241486 b_free!125653 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 tokens!581)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4241872 b_free!125681 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 rules!2932)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4241855 b_free!125673 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 tokens!581))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4242560 b_free!125701 (= (toChars!10547 (transformation!7932 (h!52332 (t!350907 (t!350907 rules!2932))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4241487 b_free!125657 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 addTokens!17)))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4242565 b_free!125705 (= (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 (t!350908 tokens!581)))))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4241478 b_free!125649 (= (toChars!10547 (transformation!7932 (h!52332 rules!2932))) (toChars!10547 (transformation!7932 (rule!11060 (h!52333 (t!350908 addTokens!17))))))) (and b!4241860 b_free!125677) b_lambda!124953)))

(check-sat (not b!4242602) (not b!4242309) (not b!4242390) (not b_next!126375) (not b!4242619) b_and!335859 (not b!4242294) tp_is_empty!22665 (not d!1248163) (not b!4242636) (not b!4242408) (not b!4242417) (not b!4242592) (not bm!293851) (not b_lambda!124941) (not d!1248105) (not b!4242419) (not b!4242239) (not b!4242240) (not d!1248125) (not b_next!126407) (not b!4242573) (not b!4242524) (not b_next!126405) (not b_next!126351) (not b!4242500) (not b!4242278) (not b!4242547) b_and!335843 (not b!4241772) (not b!4242317) (not b!4242389) (not b!4242443) (not d!1248091) b_and!335829 b_and!335849 (not b!4242561) (not b!4242618) (not b!4242503) (not b!4242613) (not d!1248249) (not d!1247907) (not b!4242463) (not b!4242648) (not b!4242627) (not b!4242552) (not b!4242562) (not b!4242590) (not b!4242484) (not b!4242446) (not b!4242320) (not d!1248207) (not b_next!126377) (not b!4242488) (not b!4242478) (not d!1248143) (not b!4242402) (not b!4242631) (not b!4242504) (not b!4242492) b_and!335833 (not b!4242440) (not b!4242276) (not b!4242481) (not b!4242316) (not b!4242615) (not b!4242467) (not b_lambda!124943) (not b!4242557) (not b!4242521) (not b!4242575) (not b!4242514) (not b!4242471) (not tb!255347) (not b!4242650) (not b!4242329) (not b!4242386) (not b!4242639) (not b!4242505) (not b!4242548) (not b!4242550) (not b!4242594) (not b!4242331) (not b!4242554) (not b!4242395) (not b!4242477) (not b!4242616) (not b!4242494) (not b!4242336) (not b!4242564) (not b!4242555) (not b!4242518) (not d!1248239) (not b!4242623) (not b!4242576) (not b!4242393) (not b!4242451) (not b!4242567) (not b_next!126361) b_and!335851 (not tb!255247) (not b!4242413) (not b!4242544) (not b!4242581) (not b!4242295) (not b!4242644) (not b!4241551) (not d!1248087) (not d!1248229) (not b!4242556) (not b!4242580) (not d!1248235) (not b!4242512) (not b_lambda!124951) (not b!4242379) (not b!4242601) (not b!4242558) (not d!1248109) (not b!4242439) (not b!4242374) (not b!4242603) (not b!4242596) (not b!4242308) (not d!1248107) (not b!4242410) (not b!4242607) (not b_next!126355) (not d!1248083) (not d!1248217) (not b!4242641) b_and!335841 (not b!4242517) (not b!4242620) (not d!1248213) (not b_lambda!124939) (not b!4242373) (not b_lambda!124911) (not d!1248129) (not b_next!126385) (not b_lambda!124927) (not b!4242569) (not b!4242572) (not b!4242499) (not b!4242609) (not b!4242259) (not b!4242452) (not b!4242516) (not b_next!126379) (not b!4242645) (not tb!255299) (not b!4242624) (not bm!293850) b_and!335845 (not b!4242651) (not b!4242438) (not b!4242497) (not d!1248095) (not b!4242416) (not b!4241912) (not b!4242378) (not b!4242531) (not b!4242626) (not b!4242610) (not b!4242520) (not d!1248181) (not b_lambda!124953) (not b!4242563) (not b!4242441) (not b!4242643) (not b!4242388) (not b!4242470) (not d!1248223) (not b_lambda!124913) (not b_next!126381) (not tb!255323) (not d!1248115) (not b!4242334) (not b!4242655) (not b!4242530) (not d!1248101) (not b!4242444) (not b_next!126399) (not b_next!126359) (not d!1248187) (not d!1248153) (not b!4242464) (not d!1248139) (not d!1248131) b_and!335847 (not b!4242540) (not b!4242539) (not b!4242637) (not b!4242312) (not b!4242368) (not d!1248215) (not b!4242311) (not b!4242599) (not b!4242306) (not b!4242315) (not d!1248141) b_and!335839 (not b!4242482) (not b!4242640) b_and!335827 (not b!4242523) (not b!4242571) b_and!335857 (not b_next!126357) (not b!4242468) (not d!1248097) (not b!4241677) (not b!4242653) b_and!335825 (not d!1248081) (not b!4242277) (not d!1248127) (not b_lambda!124949) (not b!4242635) (not b!4242633) (not b!4242546) (not d!1248179) (not b!4242622) (not b_next!126401) b_and!335855 (not b!4242611) (not b!4242606) (not b!4242628) (not b!4242549) (not d!1248209) (not d!1248173) (not b!4242406) (not b!4242519) (not bm!293853) (not b!4242533) (not b!4242383) (not b!4242313) (not b!4242371) (not b!4242525) (not d!1248199) (not b!4242321) (not b!4241913) (not d!1248147) (not b!4242498) (not b!4242486) (not b_next!126409) (not b!4242375) (not b!4242537) b_and!335831 (not b!4242465) (not d!1248135) (not d!1248255) (not b!4241775) (not b!4242647) (not b!4242605) (not b!4242577) (not tb!255335) (not b!4242656) (not b!4242527) (not d!1248225) (not b!4242559) (not b!4242579) (not b!4242542) (not b!4242469) (not d!1248161) (not b!4242473) b_and!335837 (not b!4242501) (not b!4242496) (not b!4242412) (not b_lambda!124947) (not b!4242502) (not b!4242506) (not b!4242598) (not b_next!126403) (not b!4242632) (not b_next!126383) (not d!1248257) (not b!4242649) (not b!4242600) (not b!4242466) (not tb!255311) (not d!1248245) (not b!4242404) (not b!4242654) (not b!4242652) (not b!4242629) (not d!1248151) (not d!1248093) (not d!1248089) (not b!4242614) (not b!4242333) (not d!1247909) (not b!4241914) b_and!335835 (not b!4242476) (not b!4242535) b_and!335853 (not b!4242327) (not b!4242522) (not d!1248165) (not b!4242568) (not b!4242595) (not b_next!126353) (not b!4242442) (not d!1248171) (not b!4242591) (not bm!293852) (not d!1248133) (not b!4242475))
(check-sat b_and!335843 (not b_next!126385) b_and!335847 b_and!335855 b_and!335835 b_and!335853 (not b_next!126353) (not b_next!126375) b_and!335859 (not b_next!126407) (not b_next!126405) (not b_next!126351) b_and!335829 b_and!335849 (not b_next!126377) b_and!335833 (not b_next!126361) b_and!335851 (not b_next!126355) b_and!335841 (not b_next!126379) b_and!335845 (not b_next!126381) (not b_next!126399) (not b_next!126359) b_and!335839 b_and!335827 b_and!335857 (not b_next!126357) (not b_next!126401) b_and!335825 (not b_next!126409) b_and!335831 b_and!335837 (not b_next!126403) (not b_next!126383))
