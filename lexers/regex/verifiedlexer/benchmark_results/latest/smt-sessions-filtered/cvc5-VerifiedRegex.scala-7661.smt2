; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404152 () Bool)

(assert start!404152)

(declare-fun b!4226558 () Bool)

(declare-fun b_free!124539 () Bool)

(declare-fun b_next!125243 () Bool)

(assert (=> b!4226558 (= b_free!124539 (not b_next!125243))))

(declare-fun tp!1294009 () Bool)

(declare-fun b_and!333773 () Bool)

(assert (=> b!4226558 (= tp!1294009 b_and!333773)))

(declare-fun b_free!124541 () Bool)

(declare-fun b_next!125245 () Bool)

(assert (=> b!4226558 (= b_free!124541 (not b_next!125245))))

(declare-fun tp!1294006 () Bool)

(declare-fun b_and!333775 () Bool)

(assert (=> b!4226558 (= tp!1294006 b_and!333775)))

(declare-fun b!4226563 () Bool)

(declare-fun b_free!124543 () Bool)

(declare-fun b_next!125247 () Bool)

(assert (=> b!4226563 (= b_free!124543 (not b_next!125247))))

(declare-fun tp!1294011 () Bool)

(declare-fun b_and!333777 () Bool)

(assert (=> b!4226563 (= tp!1294011 b_and!333777)))

(declare-fun b_free!124545 () Bool)

(declare-fun b_next!125249 () Bool)

(assert (=> b!4226563 (= b_free!124545 (not b_next!125249))))

(declare-fun tp!1294008 () Bool)

(declare-fun b_and!333779 () Bool)

(assert (=> b!4226563 (= tp!1294008 b_and!333779)))

(declare-fun e!2624150 () Bool)

(declare-datatypes ((C!25674 0))(
  ( (C!25675 (val!14999 Int)) )
))
(declare-datatypes ((List!46708 0))(
  ( (Nil!46584) (Cons!46584 (h!52004 C!25674) (t!349325 List!46708)) )
))
(declare-datatypes ((IArray!28097 0))(
  ( (IArray!28098 (innerList!14106 List!46708)) )
))
(declare-datatypes ((Conc!14046 0))(
  ( (Node!14046 (left!34639 Conc!14046) (right!34969 Conc!14046) (csize!28322 Int) (cheight!14257 Int)) (Leaf!21708 (xs!17352 IArray!28097) (csize!28323 Int)) (Empty!14046) )
))
(declare-datatypes ((List!46709 0))(
  ( (Nil!46585) (Cons!46585 (h!52005 (_ BitVec 16)) (t!349326 List!46709)) )
))
(declare-datatypes ((TokenValue!8065 0))(
  ( (FloatLiteralValue!16130 (text!56900 List!46709)) (TokenValueExt!8064 (__x!28353 Int)) (Broken!40325 (value!243794 List!46709)) (Object!8188) (End!8065) (Def!8065) (Underscore!8065) (Match!8065) (Else!8065) (Error!8065) (Case!8065) (If!8065) (Extends!8065) (Abstract!8065) (Class!8065) (Val!8065) (DelimiterValue!16130 (del!8125 List!46709)) (KeywordValue!8071 (value!243795 List!46709)) (CommentValue!16130 (value!243796 List!46709)) (WhitespaceValue!16130 (value!243797 List!46709)) (IndentationValue!8065 (value!243798 List!46709)) (String!54196) (Int32!8065) (Broken!40326 (value!243799 List!46709)) (Boolean!8066) (Unit!65731) (OperatorValue!8068 (op!8125 List!46709)) (IdentifierValue!16130 (value!243800 List!46709)) (IdentifierValue!16131 (value!243801 List!46709)) (WhitespaceValue!16131 (value!243802 List!46709)) (True!16130) (False!16130) (Broken!40327 (value!243803 List!46709)) (Broken!40328 (value!243804 List!46709)) (True!16131) (RightBrace!8065) (RightBracket!8065) (Colon!8065) (Null!8065) (Comma!8065) (LeftBracket!8065) (False!16131) (LeftBrace!8065) (ImaginaryLiteralValue!8065 (text!56901 List!46709)) (StringLiteralValue!24195 (value!243805 List!46709)) (EOFValue!8065 (value!243806 List!46709)) (IdentValue!8065 (value!243807 List!46709)) (DelimiterValue!16131 (value!243808 List!46709)) (DedentValue!8065 (value!243809 List!46709)) (NewLineValue!8065 (value!243810 List!46709)) (IntegerValue!24195 (value!243811 (_ BitVec 32)) (text!56902 List!46709)) (IntegerValue!24196 (value!243812 Int) (text!56903 List!46709)) (Times!8065) (Or!8065) (Equal!8065) (Minus!8065) (Broken!40329 (value!243813 List!46709)) (And!8065) (Div!8065) (LessEqual!8065) (Mod!8065) (Concat!20805) (Not!8065) (Plus!8065) (SpaceValue!8065 (value!243814 List!46709)) (IntegerValue!24197 (value!243815 Int) (text!56904 List!46709)) (StringLiteralValue!24196 (text!56905 List!46709)) (FloatLiteralValue!16131 (text!56906 List!46709)) (BytesLiteralValue!8065 (value!243816 List!46709)) (CommentValue!16131 (value!243817 List!46709)) (StringLiteralValue!24197 (value!243818 List!46709)) (ErrorTokenValue!8065 (msg!8126 List!46709)) )
))
(declare-datatypes ((BalanceConc!27686 0))(
  ( (BalanceConc!27687 (c!718686 Conc!14046)) )
))
(declare-datatypes ((TokenValueInjection!15558 0))(
  ( (TokenValueInjection!15559 (toValue!10563 Int) (toChars!10422 Int)) )
))
(declare-datatypes ((Regex!12740 0))(
  ( (ElementMatch!12740 (c!718687 C!25674)) (Concat!20806 (regOne!25992 Regex!12740) (regTwo!25992 Regex!12740)) (EmptyExpr!12740) (Star!12740 (reg!13069 Regex!12740)) (EmptyLang!12740) (Union!12740 (regOne!25993 Regex!12740) (regTwo!25993 Regex!12740)) )
))
(declare-datatypes ((String!54197 0))(
  ( (String!54198 (value!243819 String)) )
))
(declare-datatypes ((Rule!15470 0))(
  ( (Rule!15471 (regex!7835 Regex!12740) (tag!8699 String!54197) (isSeparator!7835 Bool) (transformation!7835 TokenValueInjection!15558)) )
))
(declare-datatypes ((List!46710 0))(
  ( (Nil!46586) (Cons!46586 (h!52006 Rule!15470) (t!349327 List!46710)) )
))
(declare-fun rules!4024 () List!46710)

(declare-fun b!4226555 () Bool)

(declare-fun tp!1294005 () Bool)

(declare-fun e!2624153 () Bool)

(declare-fun inv!61244 (String!54197) Bool)

(declare-fun inv!61247 (TokenValueInjection!15558) Bool)

(assert (=> b!4226555 (= e!2624153 (and tp!1294005 (inv!61244 (tag!8699 (h!52006 rules!4024))) (inv!61247 (transformation!7835 (h!52006 rules!4024))) e!2624150))))

(declare-fun b!4226557 () Bool)

(declare-fun e!2624151 () Bool)

(assert (=> b!4226557 (= e!2624151 false)))

(declare-fun lt!1503181 () Bool)

(declare-datatypes ((LexerInterface!7430 0))(
  ( (LexerInterfaceExt!7427 (__x!28354 Int)) (Lexer!7428) )
))
(declare-fun thiss!26827 () LexerInterface!7430)

(declare-fun rulesValidInductive!2937 (LexerInterface!7430 List!46710) Bool)

(assert (=> b!4226557 (= lt!1503181 (rulesValidInductive!2937 thiss!26827 (t!349327 rules!4024)))))

(assert (=> b!4226558 (= e!2624150 (and tp!1294009 tp!1294006))))

(declare-fun b!4226559 () Bool)

(declare-fun res!1737926 () Bool)

(assert (=> b!4226559 (=> (not res!1737926) (not e!2624151))))

(assert (=> b!4226559 (= res!1737926 (rulesValidInductive!2937 thiss!26827 rules!4024))))

(declare-fun tp!1294010 () Bool)

(declare-fun r!4367 () Rule!15470)

(declare-fun e!2624149 () Bool)

(declare-fun b!4226560 () Bool)

(declare-fun e!2624155 () Bool)

(assert (=> b!4226560 (= e!2624155 (and tp!1294010 (inv!61244 (tag!8699 r!4367)) (inv!61247 (transformation!7835 r!4367)) e!2624149))))

(declare-fun b!4226561 () Bool)

(declare-fun res!1737925 () Bool)

(assert (=> b!4226561 (=> (not res!1737925) (not e!2624151))))

(declare-fun contains!9658 (List!46710 Rule!15470) Bool)

(assert (=> b!4226561 (= res!1737925 (contains!9658 (t!349327 rules!4024) r!4367))))

(declare-fun b!4226562 () Bool)

(declare-fun e!2624154 () Bool)

(declare-fun tp!1294007 () Bool)

(assert (=> b!4226562 (= e!2624154 (and e!2624153 tp!1294007))))

(declare-fun b!4226556 () Bool)

(declare-fun res!1737922 () Bool)

(assert (=> b!4226556 (=> (not res!1737922) (not e!2624151))))

(assert (=> b!4226556 (= res!1737922 (contains!9658 rules!4024 r!4367))))

(declare-fun res!1737923 () Bool)

(assert (=> start!404152 (=> (not res!1737923) (not e!2624151))))

(assert (=> start!404152 (= res!1737923 (is-Lexer!7428 thiss!26827))))

(assert (=> start!404152 e!2624151))

(assert (=> start!404152 true))

(assert (=> start!404152 e!2624154))

(assert (=> start!404152 e!2624155))

(assert (=> b!4226563 (= e!2624149 (and tp!1294011 tp!1294008))))

(declare-fun b!4226564 () Bool)

(declare-fun res!1737924 () Bool)

(assert (=> b!4226564 (=> (not res!1737924) (not e!2624151))))

(assert (=> b!4226564 (= res!1737924 (and (or (not (is-Cons!46586 rules!4024)) (not (= (h!52006 rules!4024) r!4367))) (is-Cons!46586 rules!4024) (not (= (h!52006 rules!4024) r!4367))))))

(assert (= (and start!404152 res!1737923) b!4226556))

(assert (= (and b!4226556 res!1737922) b!4226559))

(assert (= (and b!4226559 res!1737926) b!4226564))

(assert (= (and b!4226564 res!1737924) b!4226561))

(assert (= (and b!4226561 res!1737925) b!4226557))

(assert (= b!4226555 b!4226558))

(assert (= b!4226562 b!4226555))

(assert (= (and start!404152 (is-Cons!46586 rules!4024)) b!4226562))

(assert (= b!4226560 b!4226563))

(assert (= start!404152 b!4226560))

(declare-fun m!4814411 () Bool)

(assert (=> b!4226555 m!4814411))

(declare-fun m!4814413 () Bool)

(assert (=> b!4226555 m!4814413))

(declare-fun m!4814415 () Bool)

(assert (=> b!4226557 m!4814415))

(declare-fun m!4814417 () Bool)

(assert (=> b!4226559 m!4814417))

(declare-fun m!4814419 () Bool)

(assert (=> b!4226560 m!4814419))

(declare-fun m!4814421 () Bool)

(assert (=> b!4226560 m!4814421))

(declare-fun m!4814423 () Bool)

(assert (=> b!4226556 m!4814423))

(declare-fun m!4814425 () Bool)

(assert (=> b!4226561 m!4814425))

(push 1)

(assert (not b!4226560))

(assert (not b_next!125249))

(assert b_and!333775)

(assert (not b_next!125245))

(assert (not b!4226562))

(assert (not b!4226556))

(assert b_and!333773)

(assert (not b!4226561))

(assert (not b!4226555))

(assert (not b!4226557))

(assert b_and!333779)

(assert (not b!4226559))

(assert b_and!333777)

(assert (not b_next!125247))

(assert (not b_next!125243))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125249))

(assert b_and!333775)

(assert (not b_next!125245))

(assert b_and!333773)

(assert b_and!333777)

(assert b_and!333779)

(assert (not b_next!125247))

(assert (not b_next!125243))

(check-sat)

(pop 1)

