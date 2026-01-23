; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348998 () Bool)

(assert start!348998)

(declare-fun b!3703062 () Bool)

(declare-fun b_free!98745 () Bool)

(declare-fun b_next!99449 () Bool)

(assert (=> b!3703062 (= b_free!98745 (not b_next!99449))))

(declare-fun tp!1125660 () Bool)

(declare-fun b_and!276979 () Bool)

(assert (=> b!3703062 (= tp!1125660 b_and!276979)))

(declare-fun b_free!98747 () Bool)

(declare-fun b_next!99451 () Bool)

(assert (=> b!3703062 (= b_free!98747 (not b_next!99451))))

(declare-fun tp!1125655 () Bool)

(declare-fun b_and!276981 () Bool)

(assert (=> b!3703062 (= tp!1125655 b_and!276981)))

(declare-fun b!3703057 () Bool)

(declare-fun b_free!98749 () Bool)

(declare-fun b_next!99453 () Bool)

(assert (=> b!3703057 (= b_free!98749 (not b_next!99453))))

(declare-fun tp!1125658 () Bool)

(declare-fun b_and!276983 () Bool)

(assert (=> b!3703057 (= tp!1125658 b_and!276983)))

(declare-fun b_free!98751 () Bool)

(declare-fun b_next!99455 () Bool)

(assert (=> b!3703057 (= b_free!98751 (not b_next!99455))))

(declare-fun tp!1125657 () Bool)

(declare-fun b_and!276985 () Bool)

(assert (=> b!3703057 (= tp!1125657 b_and!276985)))

(declare-fun b!3703056 () Bool)

(declare-fun res!1506384 () Bool)

(declare-fun e!2293367 () Bool)

(assert (=> b!3703056 (=> (not res!1506384) (not e!2293367))))

(declare-datatypes ((LexerInterface!5577 0))(
  ( (LexerInterfaceExt!5574 (__x!24653 Int)) (Lexer!5575) )
))
(declare-fun thiss!25522 () LexerInterface!5577)

(declare-datatypes ((List!39492 0))(
  ( (Nil!39368) (Cons!39368 (h!44788 (_ BitVec 16)) (t!302175 List!39492)) )
))
(declare-datatypes ((TokenValue!6218 0))(
  ( (FloatLiteralValue!12436 (text!43971 List!39492)) (TokenValueExt!6217 (__x!24654 Int)) (Broken!31090 (value!191083 List!39492)) (Object!6341) (End!6218) (Def!6218) (Underscore!6218) (Match!6218) (Else!6218) (Error!6218) (Case!6218) (If!6218) (Extends!6218) (Abstract!6218) (Class!6218) (Val!6218) (DelimiterValue!12436 (del!6278 List!39492)) (KeywordValue!6224 (value!191084 List!39492)) (CommentValue!12436 (value!191085 List!39492)) (WhitespaceValue!12436 (value!191086 List!39492)) (IndentationValue!6218 (value!191087 List!39492)) (String!44423) (Int32!6218) (Broken!31091 (value!191088 List!39492)) (Boolean!6219) (Unit!57331) (OperatorValue!6221 (op!6278 List!39492)) (IdentifierValue!12436 (value!191089 List!39492)) (IdentifierValue!12437 (value!191090 List!39492)) (WhitespaceValue!12437 (value!191091 List!39492)) (True!12436) (False!12436) (Broken!31092 (value!191092 List!39492)) (Broken!31093 (value!191093 List!39492)) (True!12437) (RightBrace!6218) (RightBracket!6218) (Colon!6218) (Null!6218) (Comma!6218) (LeftBracket!6218) (False!12437) (LeftBrace!6218) (ImaginaryLiteralValue!6218 (text!43972 List!39492)) (StringLiteralValue!18654 (value!191094 List!39492)) (EOFValue!6218 (value!191095 List!39492)) (IdentValue!6218 (value!191096 List!39492)) (DelimiterValue!12437 (value!191097 List!39492)) (DedentValue!6218 (value!191098 List!39492)) (NewLineValue!6218 (value!191099 List!39492)) (IntegerValue!18654 (value!191100 (_ BitVec 32)) (text!43973 List!39492)) (IntegerValue!18655 (value!191101 Int) (text!43974 List!39492)) (Times!6218) (Or!6218) (Equal!6218) (Minus!6218) (Broken!31094 (value!191102 List!39492)) (And!6218) (Div!6218) (LessEqual!6218) (Mod!6218) (Concat!16965) (Not!6218) (Plus!6218) (SpaceValue!6218 (value!191103 List!39492)) (IntegerValue!18656 (value!191104 Int) (text!43975 List!39492)) (StringLiteralValue!18655 (text!43976 List!39492)) (FloatLiteralValue!12437 (text!43977 List!39492)) (BytesLiteralValue!6218 (value!191105 List!39492)) (CommentValue!12437 (value!191106 List!39492)) (StringLiteralValue!18656 (value!191107 List!39492)) (ErrorTokenValue!6218 (msg!6279 List!39492)) )
))
(declare-datatypes ((C!21680 0))(
  ( (C!21681 (val!12888 Int)) )
))
(declare-datatypes ((List!39493 0))(
  ( (Nil!39369) (Cons!39369 (h!44789 C!21680) (t!302176 List!39493)) )
))
(declare-datatypes ((IArray!24175 0))(
  ( (IArray!24176 (innerList!12145 List!39493)) )
))
(declare-datatypes ((Conc!12085 0))(
  ( (Node!12085 (left!30633 Conc!12085) (right!30963 Conc!12085) (csize!24400 Int) (cheight!12296 Int)) (Leaf!18690 (xs!15287 IArray!24175) (csize!24401 Int)) (Empty!12085) )
))
(declare-datatypes ((BalanceConc!23784 0))(
  ( (BalanceConc!23785 (c!639818 Conc!12085)) )
))
(declare-datatypes ((TokenValueInjection!11864 0))(
  ( (TokenValueInjection!11865 (toValue!8328 Int) (toChars!8187 Int)) )
))
(declare-datatypes ((String!44424 0))(
  ( (String!44425 (value!191108 String)) )
))
(declare-datatypes ((Regex!10747 0))(
  ( (ElementMatch!10747 (c!639819 C!21680)) (Concat!16966 (regOne!22006 Regex!10747) (regTwo!22006 Regex!10747)) (EmptyExpr!10747) (Star!10747 (reg!11076 Regex!10747)) (EmptyLang!10747) (Union!10747 (regOne!22007 Regex!10747) (regTwo!22007 Regex!10747)) )
))
(declare-datatypes ((Rule!11776 0))(
  ( (Rule!11777 (regex!5988 Regex!10747) (tag!6828 String!44424) (isSeparator!5988 Bool) (transformation!5988 TokenValueInjection!11864)) )
))
(declare-fun newHd!19 () Rule!11776)

(declare-datatypes ((List!39494 0))(
  ( (Nil!39370) (Cons!39370 (h!44790 Rule!11776) (t!302177 List!39494)) )
))
(declare-fun rules!3698 () List!39494)

(declare-fun rulesInvariant!4974 (LexerInterface!5577 List!39494) Bool)

(assert (=> b!3703056 (= res!1506384 (rulesInvariant!4974 thiss!25522 (Cons!39370 newHd!19 rules!3698)))))

(declare-fun e!2293366 () Bool)

(assert (=> b!3703057 (= e!2293366 (and tp!1125658 tp!1125657))))

(declare-fun e!2293368 () Bool)

(declare-fun tp!1125659 () Bool)

(declare-fun e!2293365 () Bool)

(declare-fun b!3703058 () Bool)

(declare-fun inv!52908 (String!44424) Bool)

(declare-fun inv!52910 (TokenValueInjection!11864) Bool)

(assert (=> b!3703058 (= e!2293365 (and tp!1125659 (inv!52908 (tag!6828 (h!44790 rules!3698))) (inv!52910 (transformation!5988 (h!44790 rules!3698))) e!2293368))))

(declare-fun b!3703059 () Bool)

(declare-fun e!2293369 () Bool)

(declare-fun tp!1125656 () Bool)

(assert (=> b!3703059 (= e!2293369 (and tp!1125656 (inv!52908 (tag!6828 newHd!19)) (inv!52910 (transformation!5988 newHd!19)) e!2293366))))

(declare-fun b!3703060 () Bool)

(assert (=> b!3703060 (= e!2293367 (not true))))

(assert (=> b!3703060 (rulesInvariant!4974 thiss!25522 rules!3698)))

(declare-datatypes ((Unit!57332 0))(
  ( (Unit!57333) )
))
(declare-fun lt!1295772 () Unit!57332)

(declare-fun lemmaInvariantOnRulesThenOnTail!680 (LexerInterface!5577 Rule!11776 List!39494) Unit!57332)

(assert (=> b!3703060 (= lt!1295772 (lemmaInvariantOnRulesThenOnTail!680 thiss!25522 newHd!19 rules!3698))))

(declare-fun res!1506385 () Bool)

(assert (=> start!348998 (=> (not res!1506385) (not e!2293367))))

(get-info :version)

(assert (=> start!348998 (= res!1506385 ((_ is Lexer!5575) thiss!25522))))

(assert (=> start!348998 e!2293367))

(assert (=> start!348998 true))

(assert (=> start!348998 e!2293369))

(declare-fun e!2293363 () Bool)

(assert (=> start!348998 e!2293363))

(declare-fun b!3703061 () Bool)

(declare-fun tp!1125654 () Bool)

(assert (=> b!3703061 (= e!2293363 (and e!2293365 tp!1125654))))

(assert (=> b!3703062 (= e!2293368 (and tp!1125660 tp!1125655))))

(assert (= (and start!348998 res!1506385) b!3703056))

(assert (= (and b!3703056 res!1506384) b!3703060))

(assert (= b!3703059 b!3703057))

(assert (= start!348998 b!3703059))

(assert (= b!3703058 b!3703062))

(assert (= b!3703061 b!3703058))

(assert (= (and start!348998 ((_ is Cons!39370) rules!3698)) b!3703061))

(declare-fun m!4214019 () Bool)

(assert (=> b!3703056 m!4214019))

(declare-fun m!4214021 () Bool)

(assert (=> b!3703058 m!4214021))

(declare-fun m!4214023 () Bool)

(assert (=> b!3703058 m!4214023))

(declare-fun m!4214025 () Bool)

(assert (=> b!3703059 m!4214025))

(declare-fun m!4214027 () Bool)

(assert (=> b!3703059 m!4214027))

(declare-fun m!4214029 () Bool)

(assert (=> b!3703060 m!4214029))

(declare-fun m!4214031 () Bool)

(assert (=> b!3703060 m!4214031))

(check-sat (not b_next!99453) b_and!276983 b_and!276981 (not b_next!99451) b_and!276985 (not b!3703059) (not b!3703061) (not b!3703060) (not b!3703058) b_and!276979 (not b_next!99449) (not b_next!99455) (not b!3703056))
(check-sat (not b_next!99453) b_and!276983 b_and!276981 (not b_next!99455) (not b_next!99451) b_and!276985 b_and!276979 (not b_next!99449))
