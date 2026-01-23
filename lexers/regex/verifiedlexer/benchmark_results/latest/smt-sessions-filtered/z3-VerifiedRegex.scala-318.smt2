; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10330 () Bool)

(assert start!10330)

(declare-fun b!104592 () Bool)

(declare-fun b_free!3137 () Bool)

(declare-fun b_next!3137 () Bool)

(assert (=> b!104592 (= b_free!3137 (not b_next!3137))))

(declare-fun tp!58137 () Bool)

(declare-fun b_and!4655 () Bool)

(assert (=> b!104592 (= tp!58137 b_and!4655)))

(declare-fun b_free!3139 () Bool)

(declare-fun b_next!3139 () Bool)

(assert (=> b!104592 (= b_free!3139 (not b_next!3139))))

(declare-fun tp!58135 () Bool)

(declare-fun b_and!4657 () Bool)

(assert (=> b!104592 (= tp!58135 b_and!4657)))

(declare-fun e!58017 () Bool)

(declare-fun e!58018 () Bool)

(declare-fun tp!58134 () Bool)

(declare-datatypes ((List!1686 0))(
  ( (Nil!1680) (Cons!1680 (h!7077 (_ BitVec 16)) (t!21371 List!1686)) )
))
(declare-datatypes ((TokenValue!357 0))(
  ( (FloatLiteralValue!714 (text!2944 List!1686)) (TokenValueExt!356 (__x!1809 Int)) (Broken!1785 (value!13323 List!1686)) (Object!362) (End!357) (Def!357) (Underscore!357) (Match!357) (Else!357) (Error!357) (Case!357) (If!357) (Extends!357) (Abstract!357) (Class!357) (Val!357) (DelimiterValue!714 (del!417 List!1686)) (KeywordValue!363 (value!13324 List!1686)) (CommentValue!714 (value!13325 List!1686)) (WhitespaceValue!714 (value!13326 List!1686)) (IndentationValue!357 (value!13327 List!1686)) (String!2176) (Int32!357) (Broken!1786 (value!13328 List!1686)) (Boolean!358) (Unit!1113) (OperatorValue!360 (op!417 List!1686)) (IdentifierValue!714 (value!13329 List!1686)) (IdentifierValue!715 (value!13330 List!1686)) (WhitespaceValue!715 (value!13331 List!1686)) (True!714) (False!714) (Broken!1787 (value!13332 List!1686)) (Broken!1788 (value!13333 List!1686)) (True!715) (RightBrace!357) (RightBracket!357) (Colon!357) (Null!357) (Comma!357) (LeftBracket!357) (False!715) (LeftBrace!357) (ImaginaryLiteralValue!357 (text!2945 List!1686)) (StringLiteralValue!1071 (value!13334 List!1686)) (EOFValue!357 (value!13335 List!1686)) (IdentValue!357 (value!13336 List!1686)) (DelimiterValue!715 (value!13337 List!1686)) (DedentValue!357 (value!13338 List!1686)) (NewLineValue!357 (value!13339 List!1686)) (IntegerValue!1071 (value!13340 (_ BitVec 32)) (text!2946 List!1686)) (IntegerValue!1072 (value!13341 Int) (text!2947 List!1686)) (Times!357) (Or!357) (Equal!357) (Minus!357) (Broken!1789 (value!13342 List!1686)) (And!357) (Div!357) (LessEqual!357) (Mod!357) (Concat!792) (Not!357) (Plus!357) (SpaceValue!357 (value!13343 List!1686)) (IntegerValue!1073 (value!13344 Int) (text!2948 List!1686)) (StringLiteralValue!1072 (text!2949 List!1686)) (FloatLiteralValue!715 (text!2950 List!1686)) (BytesLiteralValue!357 (value!13345 List!1686)) (CommentValue!715 (value!13346 List!1686)) (StringLiteralValue!1073 (value!13347 List!1686)) (ErrorTokenValue!357 (msg!418 List!1686)) )
))
(declare-datatypes ((C!1792 0))(
  ( (C!1793 (val!503 Int)) )
))
(declare-datatypes ((List!1687 0))(
  ( (Nil!1681) (Cons!1681 (h!7078 C!1792) (t!21372 List!1687)) )
))
(declare-datatypes ((IArray!1061 0))(
  ( (IArray!1062 (innerList!588 List!1687)) )
))
(declare-datatypes ((Conc!530 0))(
  ( (Node!530 (left!1286 Conc!530) (right!1616 Conc!530) (csize!1290 Int) (cheight!741 Int)) (Leaf!849 (xs!3121 IArray!1061) (csize!1291 Int)) (Empty!530) )
))
(declare-datatypes ((BalanceConc!1064 0))(
  ( (BalanceConc!1065 (c!25248 Conc!530)) )
))
(declare-datatypes ((Regex!435 0))(
  ( (ElementMatch!435 (c!25249 C!1792)) (Concat!793 (regOne!1382 Regex!435) (regTwo!1382 Regex!435)) (EmptyExpr!435) (Star!435 (reg!764 Regex!435)) (EmptyLang!435) (Union!435 (regOne!1383 Regex!435) (regTwo!1383 Regex!435)) )
))
(declare-datatypes ((String!2177 0))(
  ( (String!2178 (value!13348 String)) )
))
(declare-datatypes ((TokenValueInjection!538 0))(
  ( (TokenValueInjection!539 (toValue!950 Int) (toChars!809 Int)) )
))
(declare-datatypes ((Rule!534 0))(
  ( (Rule!535 (regex!367 Regex!435) (tag!545 String!2177) (isSeparator!367 Bool) (transformation!367 TokenValueInjection!538)) )
))
(declare-datatypes ((List!1688 0))(
  ( (Nil!1682) (Cons!1682 (h!7079 Rule!534) (t!21373 List!1688)) )
))
(declare-fun rules!1152 () List!1688)

(declare-fun b!104586 () Bool)

(declare-fun inv!2041 (String!2177) Bool)

(declare-fun inv!2045 (TokenValueInjection!538) Bool)

(assert (=> b!104586 (= e!58017 (and tp!58134 (inv!2041 (tag!545 (h!7079 rules!1152))) (inv!2045 (transformation!367 (h!7079 rules!1152))) e!58018))))

(declare-fun b!104587 () Bool)

(declare-fun e!58022 () Bool)

(assert (=> b!104587 (= e!58022 false)))

(declare-fun lt!29025 () List!1687)

(declare-fun input!576 () BalanceConc!1064)

(declare-fun list!711 (BalanceConc!1064) List!1687)

(assert (=> b!104587 (= lt!29025 (list!711 input!576))))

(declare-fun b!104588 () Bool)

(declare-fun e!58019 () Bool)

(declare-datatypes ((Token!482 0))(
  ( (Token!483 (value!13349 TokenValue!357) (rule!872 Rule!534) (size!1494 Int) (originalCharacters!412 List!1687)) )
))
(declare-datatypes ((List!1689 0))(
  ( (Nil!1683) (Cons!1683 (h!7080 Token!482) (t!21374 List!1689)) )
))
(declare-datatypes ((IArray!1063 0))(
  ( (IArray!1064 (innerList!589 List!1689)) )
))
(declare-datatypes ((Conc!531 0))(
  ( (Node!531 (left!1287 Conc!531) (right!1617 Conc!531) (csize!1292 Int) (cheight!742 Int)) (Leaf!850 (xs!3122 IArray!1063) (csize!1293 Int)) (Empty!531) )
))
(declare-datatypes ((BalanceConc!1066 0))(
  ( (BalanceConc!1067 (c!25250 Conc!531)) )
))
(declare-datatypes ((tuple2!1842 0))(
  ( (tuple2!1843 (_1!1128 BalanceConc!1066) (_2!1128 BalanceConc!1064)) )
))
(declare-fun lt!29026 () tuple2!1842)

(declare-fun isEmpty!781 (BalanceConc!1066) Bool)

(assert (=> b!104588 (= e!58019 (not (isEmpty!781 (_1!1128 lt!29026))))))

(declare-fun b!104589 () Bool)

(declare-fun e!58021 () Bool)

(declare-fun tp!58138 () Bool)

(declare-fun inv!2046 (Conc!530) Bool)

(assert (=> b!104589 (= e!58021 (and (inv!2046 (c!25248 input!576)) tp!58138))))

(declare-fun b!104590 () Bool)

(declare-fun res!50361 () Bool)

(declare-fun e!58015 () Bool)

(assert (=> b!104590 (=> (not res!50361) (not e!58015))))

(declare-datatypes ((LexerInterface!259 0))(
  ( (LexerInterfaceExt!256 (__x!1810 Int)) (Lexer!257) )
))
(declare-fun thiss!11428 () LexerInterface!259)

(declare-fun rulesInvariant!253 (LexerInterface!259 List!1688) Bool)

(assert (=> b!104590 (= res!50361 (rulesInvariant!253 thiss!11428 rules!1152))))

(assert (=> b!104592 (= e!58018 (and tp!58137 tp!58135))))

(declare-fun b!104593 () Bool)

(declare-fun res!50362 () Bool)

(assert (=> b!104593 (=> (not res!50362) (not e!58015))))

(declare-fun isEmpty!782 (List!1688) Bool)

(assert (=> b!104593 (= res!50362 (not (isEmpty!782 rules!1152)))))

(declare-fun b!104594 () Bool)

(declare-fun e!58020 () Bool)

(assert (=> b!104594 (= e!58020 (= (_2!1128 lt!29026) input!576))))

(declare-fun b!104595 () Bool)

(assert (=> b!104595 (= e!58015 e!58022)))

(declare-fun res!50365 () Bool)

(assert (=> b!104595 (=> (not res!50365) (not e!58022))))

(assert (=> b!104595 (= res!50365 e!58020)))

(declare-fun c!25247 () Bool)

(declare-fun size!1495 (BalanceConc!1066) Int)

(assert (=> b!104595 (= c!25247 (> (size!1495 (_1!1128 lt!29026)) 0))))

(declare-fun lexTailRec!2 (LexerInterface!259 List!1688 BalanceConc!1064 BalanceConc!1064 BalanceConc!1064 BalanceConc!1066) tuple2!1842)

(assert (=> b!104595 (= lt!29026 (lexTailRec!2 thiss!11428 rules!1152 input!576 (BalanceConc!1065 Empty!530) input!576 (BalanceConc!1067 Empty!531)))))

(declare-fun b!104596 () Bool)

(declare-fun e!58014 () Bool)

(declare-fun tp!58136 () Bool)

(assert (=> b!104596 (= e!58014 (and e!58017 tp!58136))))

(declare-fun res!50364 () Bool)

(assert (=> start!10330 (=> (not res!50364) (not e!58015))))

(get-info :version)

(assert (=> start!10330 (= res!50364 ((_ is Lexer!257) thiss!11428))))

(assert (=> start!10330 e!58015))

(assert (=> start!10330 true))

(assert (=> start!10330 e!58014))

(declare-fun inv!2047 (BalanceConc!1064) Bool)

(assert (=> start!10330 (and (inv!2047 input!576) e!58021)))

(declare-fun b!104591 () Bool)

(assert (=> b!104591 (= e!58020 e!58019)))

(declare-fun res!50363 () Bool)

(declare-fun size!1496 (BalanceConc!1064) Int)

(assert (=> b!104591 (= res!50363 (< (size!1496 (_2!1128 lt!29026)) (size!1496 input!576)))))

(assert (=> b!104591 (=> (not res!50363) (not e!58019))))

(assert (= (and start!10330 res!50364) b!104593))

(assert (= (and b!104593 res!50362) b!104590))

(assert (= (and b!104590 res!50361) b!104595))

(assert (= (and b!104595 c!25247) b!104591))

(assert (= (and b!104595 (not c!25247)) b!104594))

(assert (= (and b!104591 res!50363) b!104588))

(assert (= (and b!104595 res!50365) b!104587))

(assert (= b!104586 b!104592))

(assert (= b!104596 b!104586))

(assert (= (and start!10330 ((_ is Cons!1682) rules!1152)) b!104596))

(assert (= start!10330 b!104589))

(declare-fun m!91110 () Bool)

(assert (=> b!104588 m!91110))

(declare-fun m!91112 () Bool)

(assert (=> start!10330 m!91112))

(declare-fun m!91114 () Bool)

(assert (=> b!104590 m!91114))

(declare-fun m!91116 () Bool)

(assert (=> b!104586 m!91116))

(declare-fun m!91118 () Bool)

(assert (=> b!104586 m!91118))

(declare-fun m!91120 () Bool)

(assert (=> b!104595 m!91120))

(declare-fun m!91122 () Bool)

(assert (=> b!104595 m!91122))

(declare-fun m!91124 () Bool)

(assert (=> b!104589 m!91124))

(declare-fun m!91126 () Bool)

(assert (=> b!104587 m!91126))

(declare-fun m!91128 () Bool)

(assert (=> b!104591 m!91128))

(declare-fun m!91130 () Bool)

(assert (=> b!104591 m!91130))

(declare-fun m!91132 () Bool)

(assert (=> b!104593 m!91132))

(check-sat b_and!4657 (not b!104593) (not b_next!3137) (not b!104595) (not b!104591) (not b!104589) (not b!104587) (not b_next!3139) (not b!104590) b_and!4655 (not b!104586) (not b!104596) (not start!10330) (not b!104588))
(check-sat b_and!4657 b_and!4655 (not b_next!3139) (not b_next!3137))
