; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262804 () Bool)

(assert start!262804)

(declare-fun b!2706803 () Bool)

(declare-fun b_free!76409 () Bool)

(declare-fun b_next!77113 () Bool)

(assert (=> b!2706803 (= b_free!76409 (not b_next!77113))))

(declare-fun tp!856091 () Bool)

(declare-fun b_and!199841 () Bool)

(assert (=> b!2706803 (= tp!856091 b_and!199841)))

(declare-fun b_free!76411 () Bool)

(declare-fun b_next!77115 () Bool)

(assert (=> b!2706803 (= b_free!76411 (not b_next!77115))))

(declare-fun tp!856094 () Bool)

(declare-fun b_and!199843 () Bool)

(assert (=> b!2706803 (= tp!856094 b_and!199843)))

(declare-fun b!2706792 () Bool)

(declare-fun e!1706635 () Bool)

(declare-datatypes ((List!31349 0))(
  ( (Nil!31249) (Cons!31249 (h!36669 (_ BitVec 16)) (t!225797 List!31349)) )
))
(declare-datatypes ((TokenValue!4995 0))(
  ( (FloatLiteralValue!9990 (text!35410 List!31349)) (TokenValueExt!4994 (__x!20125 Int)) (Broken!24975 (value!153617 List!31349)) (Object!5094) (End!4995) (Def!4995) (Underscore!4995) (Match!4995) (Else!4995) (Error!4995) (Case!4995) (If!4995) (Extends!4995) (Abstract!4995) (Class!4995) (Val!4995) (DelimiterValue!9990 (del!5055 List!31349)) (KeywordValue!5001 (value!153618 List!31349)) (CommentValue!9990 (value!153619 List!31349)) (WhitespaceValue!9990 (value!153620 List!31349)) (IndentationValue!4995 (value!153621 List!31349)) (String!34874) (Int32!4995) (Broken!24976 (value!153622 List!31349)) (Boolean!4996) (Unit!45300) (OperatorValue!4998 (op!5055 List!31349)) (IdentifierValue!9990 (value!153623 List!31349)) (IdentifierValue!9991 (value!153624 List!31349)) (WhitespaceValue!9991 (value!153625 List!31349)) (True!9990) (False!9990) (Broken!24977 (value!153626 List!31349)) (Broken!24978 (value!153627 List!31349)) (True!9991) (RightBrace!4995) (RightBracket!4995) (Colon!4995) (Null!4995) (Comma!4995) (LeftBracket!4995) (False!9991) (LeftBrace!4995) (ImaginaryLiteralValue!4995 (text!35411 List!31349)) (StringLiteralValue!14985 (value!153628 List!31349)) (EOFValue!4995 (value!153629 List!31349)) (IdentValue!4995 (value!153630 List!31349)) (DelimiterValue!9991 (value!153631 List!31349)) (DedentValue!4995 (value!153632 List!31349)) (NewLineValue!4995 (value!153633 List!31349)) (IntegerValue!14985 (value!153634 (_ BitVec 32)) (text!35412 List!31349)) (IntegerValue!14986 (value!153635 Int) (text!35413 List!31349)) (Times!4995) (Or!4995) (Equal!4995) (Minus!4995) (Broken!24979 (value!153636 List!31349)) (And!4995) (Div!4995) (LessEqual!4995) (Mod!4995) (Concat!12920) (Not!4995) (Plus!4995) (SpaceValue!4995 (value!153637 List!31349)) (IntegerValue!14987 (value!153638 Int) (text!35414 List!31349)) (StringLiteralValue!14986 (text!35415 List!31349)) (FloatLiteralValue!9991 (text!35416 List!31349)) (BytesLiteralValue!4995 (value!153639 List!31349)) (CommentValue!9991 (value!153640 List!31349)) (StringLiteralValue!14987 (value!153641 List!31349)) (ErrorTokenValue!4995 (msg!5056 List!31349)) )
))
(declare-datatypes ((C!16008 0))(
  ( (C!16009 (val!9938 Int)) )
))
(declare-datatypes ((Regex!7925 0))(
  ( (ElementMatch!7925 (c!436758 C!16008)) (Concat!12921 (regOne!16362 Regex!7925) (regTwo!16362 Regex!7925)) (EmptyExpr!7925) (Star!7925 (reg!8254 Regex!7925)) (EmptyLang!7925) (Union!7925 (regOne!16363 Regex!7925) (regTwo!16363 Regex!7925)) )
))
(declare-datatypes ((String!34875 0))(
  ( (String!34876 (value!153642 String)) )
))
(declare-datatypes ((List!31350 0))(
  ( (Nil!31250) (Cons!31250 (h!36670 C!16008) (t!225798 List!31350)) )
))
(declare-datatypes ((IArray!19551 0))(
  ( (IArray!19552 (innerList!9833 List!31350)) )
))
(declare-datatypes ((Conc!9773 0))(
  ( (Node!9773 (left!24037 Conc!9773) (right!24367 Conc!9773) (csize!19776 Int) (cheight!9984 Int)) (Leaf!14904 (xs!12825 IArray!19551) (csize!19777 Int)) (Empty!9773) )
))
(declare-datatypes ((BalanceConc!19160 0))(
  ( (BalanceConc!19161 (c!436759 Conc!9773)) )
))
(declare-datatypes ((TokenValueInjection!9430 0))(
  ( (TokenValueInjection!9431 (toValue!6739 Int) (toChars!6598 Int)) )
))
(declare-datatypes ((Rule!9346 0))(
  ( (Rule!9347 (regex!4773 Regex!7925) (tag!5277 String!34875) (isSeparator!4773 Bool) (transformation!4773 TokenValueInjection!9430)) )
))
(declare-datatypes ((Token!9008 0))(
  ( (Token!9009 (value!153643 TokenValue!4995) (rule!7193 Rule!9346) (size!24119 Int) (originalCharacters!5535 List!31350)) )
))
(declare-datatypes ((List!31351 0))(
  ( (Nil!31251) (Cons!31251 (h!36671 Token!9008) (t!225799 List!31351)) )
))
(declare-datatypes ((IArray!19553 0))(
  ( (IArray!19554 (innerList!9834 List!31351)) )
))
(declare-datatypes ((Conc!9774 0))(
  ( (Node!9774 (left!24038 Conc!9774) (right!24368 Conc!9774) (csize!19778 Int) (cheight!9985 Int)) (Leaf!14905 (xs!12826 IArray!19553) (csize!19779 Int)) (Empty!9774) )
))
(declare-datatypes ((BalanceConc!19162 0))(
  ( (BalanceConc!19163 (c!436760 Conc!9774)) )
))
(declare-fun acc!331 () BalanceConc!19162)

(declare-fun tp!856093 () Bool)

(declare-fun inv!42365 (Conc!9774) Bool)

(assert (=> b!2706792 (= e!1706635 (and (inv!42365 (c!436760 acc!331)) tp!856093))))

(declare-fun b!2706793 () Bool)

(declare-fun e!1706627 () Bool)

(declare-fun treated!9 () BalanceConc!19160)

(declare-fun tp!856090 () Bool)

(declare-fun inv!42366 (Conc!9773) Bool)

(assert (=> b!2706793 (= e!1706627 (and (inv!42366 (c!436759 treated!9)) tp!856090))))

(declare-fun b!2706794 () Bool)

(declare-fun res!1136688 () Bool)

(declare-fun e!1706630 () Bool)

(assert (=> b!2706794 (=> (not res!1136688) (not e!1706630))))

(declare-datatypes ((tuple2!30874 0))(
  ( (tuple2!30875 (_1!18069 BalanceConc!19162) (_2!18069 BalanceConc!19160)) )
))
(declare-fun lt!956996 () tuple2!30874)

(declare-fun isEmpty!17797 (List!31350) Bool)

(declare-fun list!11804 (BalanceConc!19160) List!31350)

(assert (=> b!2706794 (= res!1136688 (isEmpty!17797 (list!11804 (_2!18069 lt!956996))))))

(declare-fun b!2706795 () Bool)

(declare-fun res!1136690 () Bool)

(declare-fun e!1706634 () Bool)

(assert (=> b!2706795 (=> (not res!1136690) (not e!1706634))))

(declare-datatypes ((List!31352 0))(
  ( (Nil!31252) (Cons!31252 (h!36672 Rule!9346) (t!225800 List!31352)) )
))
(declare-fun rules!1182 () List!31352)

(declare-fun isEmpty!17798 (List!31352) Bool)

(assert (=> b!2706795 (= res!1136690 (not (isEmpty!17798 rules!1182)))))

(declare-fun b!2706796 () Bool)

(declare-fun e!1706629 () Bool)

(assert (=> b!2706796 (= e!1706629 false)))

(declare-fun lt!956995 () Bool)

(declare-datatypes ((LexerInterface!4369 0))(
  ( (LexerInterfaceExt!4366 (__x!20126 Int)) (Lexer!4367) )
))
(declare-fun thiss!11556 () LexerInterface!4369)

(declare-fun rulesValidInductive!1659 (LexerInterface!4369 List!31352) Bool)

(assert (=> b!2706796 (= lt!956995 (rulesValidInductive!1659 thiss!11556 rules!1182))))

(declare-fun tp!856097 () Bool)

(declare-fun b!2706797 () Bool)

(declare-fun e!1706632 () Bool)

(declare-fun e!1706626 () Bool)

(declare-fun inv!42359 (String!34875) Bool)

(declare-fun inv!42367 (TokenValueInjection!9430) Bool)

(assert (=> b!2706797 (= e!1706632 (and tp!856097 (inv!42359 (tag!5277 (h!36672 rules!1182))) (inv!42367 (transformation!4773 (h!36672 rules!1182))) e!1706626))))

(declare-fun b!2706798 () Bool)

(declare-fun res!1136693 () Bool)

(assert (=> b!2706798 (=> (not res!1136693) (not e!1706629))))

(declare-fun lt!956994 () tuple2!30874)

(declare-fun lt!956997 () tuple2!30874)

(assert (=> b!2706798 (= res!1136693 (= (list!11804 (_2!18069 lt!956994)) (list!11804 (_2!18069 lt!956997))))))

(declare-fun b!2706799 () Bool)

(declare-fun e!1706625 () Bool)

(declare-fun tp!856096 () Bool)

(assert (=> b!2706799 (= e!1706625 (and e!1706632 tp!856096))))

(declare-fun res!1136687 () Bool)

(assert (=> start!262804 (=> (not res!1136687) (not e!1706634))))

(get-info :version)

(assert (=> start!262804 (= res!1136687 ((_ is Lexer!4367) thiss!11556))))

(assert (=> start!262804 e!1706634))

(declare-fun inv!42368 (BalanceConc!19160) Bool)

(assert (=> start!262804 (and (inv!42368 treated!9) e!1706627)))

(declare-fun input!603 () BalanceConc!19160)

(declare-fun e!1706633 () Bool)

(assert (=> start!262804 (and (inv!42368 input!603) e!1706633)))

(assert (=> start!262804 true))

(assert (=> start!262804 e!1706625))

(declare-fun totalInput!328 () BalanceConc!19160)

(declare-fun e!1706631 () Bool)

(assert (=> start!262804 (and (inv!42368 totalInput!328) e!1706631)))

(declare-fun inv!42369 (BalanceConc!19162) Bool)

(assert (=> start!262804 (and (inv!42369 acc!331) e!1706635)))

(declare-fun b!2706800 () Bool)

(declare-fun tp!856092 () Bool)

(assert (=> b!2706800 (= e!1706633 (and (inv!42366 (c!436759 input!603)) tp!856092))))

(declare-fun b!2706801 () Bool)

(declare-fun tp!856095 () Bool)

(assert (=> b!2706801 (= e!1706631 (and (inv!42366 (c!436759 totalInput!328)) tp!856095))))

(declare-fun b!2706802 () Bool)

(assert (=> b!2706802 (= e!1706634 e!1706630)))

(declare-fun res!1136692 () Bool)

(assert (=> b!2706802 (=> (not res!1136692) (not e!1706630))))

(declare-fun list!11805 (BalanceConc!19162) List!31351)

(assert (=> b!2706802 (= res!1136692 (= (list!11805 (_1!18069 lt!956996)) (list!11805 acc!331)))))

(declare-fun lexRec!629 (LexerInterface!4369 List!31352 BalanceConc!19160) tuple2!30874)

(assert (=> b!2706802 (= lt!956996 (lexRec!629 thiss!11556 rules!1182 treated!9))))

(assert (=> b!2706803 (= e!1706626 (and tp!856091 tp!856094))))

(declare-fun b!2706804 () Bool)

(declare-fun res!1136691 () Bool)

(assert (=> b!2706804 (=> (not res!1136691) (not e!1706634))))

(declare-fun ++!7698 (List!31350 List!31350) List!31350)

(assert (=> b!2706804 (= res!1136691 (= (list!11804 totalInput!328) (++!7698 (list!11804 treated!9) (list!11804 input!603))))))

(declare-fun b!2706805 () Bool)

(assert (=> b!2706805 (= e!1706630 e!1706629)))

(declare-fun res!1136686 () Bool)

(assert (=> b!2706805 (=> (not res!1136686) (not e!1706629))))

(declare-fun ++!7699 (BalanceConc!19162 BalanceConc!19162) BalanceConc!19162)

(assert (=> b!2706805 (= res!1136686 (= (list!11805 (_1!18069 lt!956994)) (list!11805 (++!7699 acc!331 (_1!18069 lt!956997)))))))

(assert (=> b!2706805 (= lt!956997 (lexRec!629 thiss!11556 rules!1182 input!603))))

(assert (=> b!2706805 (= lt!956994 (lexRec!629 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2706806 () Bool)

(declare-fun res!1136689 () Bool)

(assert (=> b!2706806 (=> (not res!1136689) (not e!1706634))))

(declare-fun rulesInvariant!3854 (LexerInterface!4369 List!31352) Bool)

(assert (=> b!2706806 (= res!1136689 (rulesInvariant!3854 thiss!11556 rules!1182))))

(assert (= (and start!262804 res!1136687) b!2706795))

(assert (= (and b!2706795 res!1136690) b!2706806))

(assert (= (and b!2706806 res!1136689) b!2706804))

(assert (= (and b!2706804 res!1136691) b!2706802))

(assert (= (and b!2706802 res!1136692) b!2706794))

(assert (= (and b!2706794 res!1136688) b!2706805))

(assert (= (and b!2706805 res!1136686) b!2706798))

(assert (= (and b!2706798 res!1136693) b!2706796))

(assert (= start!262804 b!2706793))

(assert (= start!262804 b!2706800))

(assert (= b!2706797 b!2706803))

(assert (= b!2706799 b!2706797))

(assert (= (and start!262804 ((_ is Cons!31252) rules!1182)) b!2706799))

(assert (= start!262804 b!2706801))

(assert (= start!262804 b!2706792))

(declare-fun m!3097001 () Bool)

(assert (=> b!2706806 m!3097001))

(declare-fun m!3097003 () Bool)

(assert (=> b!2706801 m!3097003))

(declare-fun m!3097005 () Bool)

(assert (=> b!2706796 m!3097005))

(declare-fun m!3097007 () Bool)

(assert (=> b!2706805 m!3097007))

(declare-fun m!3097009 () Bool)

(assert (=> b!2706805 m!3097009))

(declare-fun m!3097011 () Bool)

(assert (=> b!2706805 m!3097011))

(declare-fun m!3097013 () Bool)

(assert (=> b!2706805 m!3097013))

(assert (=> b!2706805 m!3097009))

(declare-fun m!3097015 () Bool)

(assert (=> b!2706805 m!3097015))

(declare-fun m!3097017 () Bool)

(assert (=> b!2706804 m!3097017))

(declare-fun m!3097019 () Bool)

(assert (=> b!2706804 m!3097019))

(declare-fun m!3097021 () Bool)

(assert (=> b!2706804 m!3097021))

(assert (=> b!2706804 m!3097019))

(assert (=> b!2706804 m!3097021))

(declare-fun m!3097023 () Bool)

(assert (=> b!2706804 m!3097023))

(declare-fun m!3097025 () Bool)

(assert (=> b!2706792 m!3097025))

(declare-fun m!3097027 () Bool)

(assert (=> start!262804 m!3097027))

(declare-fun m!3097029 () Bool)

(assert (=> start!262804 m!3097029))

(declare-fun m!3097031 () Bool)

(assert (=> start!262804 m!3097031))

(declare-fun m!3097033 () Bool)

(assert (=> start!262804 m!3097033))

(declare-fun m!3097035 () Bool)

(assert (=> b!2706798 m!3097035))

(declare-fun m!3097037 () Bool)

(assert (=> b!2706798 m!3097037))

(declare-fun m!3097039 () Bool)

(assert (=> b!2706802 m!3097039))

(declare-fun m!3097041 () Bool)

(assert (=> b!2706802 m!3097041))

(declare-fun m!3097043 () Bool)

(assert (=> b!2706802 m!3097043))

(declare-fun m!3097045 () Bool)

(assert (=> b!2706797 m!3097045))

(declare-fun m!3097047 () Bool)

(assert (=> b!2706797 m!3097047))

(declare-fun m!3097049 () Bool)

(assert (=> b!2706800 m!3097049))

(declare-fun m!3097051 () Bool)

(assert (=> b!2706795 m!3097051))

(declare-fun m!3097053 () Bool)

(assert (=> b!2706793 m!3097053))

(declare-fun m!3097055 () Bool)

(assert (=> b!2706794 m!3097055))

(assert (=> b!2706794 m!3097055))

(declare-fun m!3097057 () Bool)

(assert (=> b!2706794 m!3097057))

(check-sat (not b!2706792) (not b!2706799) (not start!262804) (not b!2706805) (not b!2706801) (not b!2706795) (not b_next!77113) (not b!2706800) (not b!2706804) (not b_next!77115) (not b!2706794) b_and!199843 (not b!2706797) b_and!199841 (not b!2706798) (not b!2706806) (not b!2706793) (not b!2706796) (not b!2706802))
(check-sat b_and!199843 b_and!199841 (not b_next!77115) (not b_next!77113))
