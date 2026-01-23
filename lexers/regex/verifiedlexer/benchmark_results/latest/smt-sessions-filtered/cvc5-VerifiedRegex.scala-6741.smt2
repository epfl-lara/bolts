; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!352168 () Bool)

(assert start!352168)

(declare-fun b!3750825 () Bool)

(declare-fun b_free!100381 () Bool)

(declare-fun b_next!101085 () Bool)

(assert (=> b!3750825 (= b_free!100381 (not b_next!101085))))

(declare-fun tp!1145334 () Bool)

(declare-fun b_and!278759 () Bool)

(assert (=> b!3750825 (= tp!1145334 b_and!278759)))

(declare-fun b_free!100383 () Bool)

(declare-fun b_next!101087 () Bool)

(assert (=> b!3750825 (= b_free!100383 (not b_next!101087))))

(declare-fun tp!1145331 () Bool)

(declare-fun b_and!278761 () Bool)

(assert (=> b!3750825 (= tp!1145331 b_and!278761)))

(declare-fun b!3750842 () Bool)

(declare-fun e!2320093 () Bool)

(assert (=> b!3750842 (= e!2320093 true)))

(declare-fun b!3750841 () Bool)

(declare-fun e!2320092 () Bool)

(assert (=> b!3750841 (= e!2320092 e!2320093)))

(declare-fun b!3750840 () Bool)

(declare-fun e!2320091 () Bool)

(assert (=> b!3750840 (= e!2320091 e!2320092)))

(declare-fun b!3750829 () Bool)

(assert (=> b!3750829 e!2320091))

(assert (= b!3750841 b!3750842))

(assert (= b!3750840 b!3750841))

(declare-datatypes ((List!40107 0))(
  ( (Nil!39983) (Cons!39983 (h!45403 (_ BitVec 16)) (t!303066 List!40107)) )
))
(declare-datatypes ((TokenValue!6345 0))(
  ( (FloatLiteralValue!12690 (text!44860 List!40107)) (TokenValueExt!6344 (__x!24907 Int)) (Broken!31725 (value!194818 List!40107)) (Object!6468) (End!6345) (Def!6345) (Underscore!6345) (Match!6345) (Else!6345) (Error!6345) (Case!6345) (If!6345) (Extends!6345) (Abstract!6345) (Class!6345) (Val!6345) (DelimiterValue!12690 (del!6405 List!40107)) (KeywordValue!6351 (value!194819 List!40107)) (CommentValue!12690 (value!194820 List!40107)) (WhitespaceValue!12690 (value!194821 List!40107)) (IndentationValue!6345 (value!194822 List!40107)) (String!45352) (Int32!6345) (Broken!31726 (value!194823 List!40107)) (Boolean!6346) (Unit!57724) (OperatorValue!6348 (op!6405 List!40107)) (IdentifierValue!12690 (value!194824 List!40107)) (IdentifierValue!12691 (value!194825 List!40107)) (WhitespaceValue!12691 (value!194826 List!40107)) (True!12690) (False!12690) (Broken!31727 (value!194827 List!40107)) (Broken!31728 (value!194828 List!40107)) (True!12691) (RightBrace!6345) (RightBracket!6345) (Colon!6345) (Null!6345) (Comma!6345) (LeftBracket!6345) (False!12691) (LeftBrace!6345) (ImaginaryLiteralValue!6345 (text!44861 List!40107)) (StringLiteralValue!19035 (value!194829 List!40107)) (EOFValue!6345 (value!194830 List!40107)) (IdentValue!6345 (value!194831 List!40107)) (DelimiterValue!12691 (value!194832 List!40107)) (DedentValue!6345 (value!194833 List!40107)) (NewLineValue!6345 (value!194834 List!40107)) (IntegerValue!19035 (value!194835 (_ BitVec 32)) (text!44862 List!40107)) (IntegerValue!19036 (value!194836 Int) (text!44863 List!40107)) (Times!6345) (Or!6345) (Equal!6345) (Minus!6345) (Broken!31729 (value!194837 List!40107)) (And!6345) (Div!6345) (LessEqual!6345) (Mod!6345) (Concat!17365) (Not!6345) (Plus!6345) (SpaceValue!6345 (value!194838 List!40107)) (IntegerValue!19037 (value!194839 Int) (text!44864 List!40107)) (StringLiteralValue!19036 (text!44865 List!40107)) (FloatLiteralValue!12691 (text!44866 List!40107)) (BytesLiteralValue!6345 (value!194840 List!40107)) (CommentValue!12691 (value!194841 List!40107)) (StringLiteralValue!19037 (value!194842 List!40107)) (ErrorTokenValue!6345 (msg!6406 List!40107)) )
))
(declare-datatypes ((C!22226 0))(
  ( (C!22227 (val!13161 Int)) )
))
(declare-datatypes ((Regex!11020 0))(
  ( (ElementMatch!11020 (c!649204 C!22226)) (Concat!17366 (regOne!22552 Regex!11020) (regTwo!22552 Regex!11020)) (EmptyExpr!11020) (Star!11020 (reg!11349 Regex!11020)) (EmptyLang!11020) (Union!11020 (regOne!22553 Regex!11020) (regTwo!22553 Regex!11020)) )
))
(declare-datatypes ((String!45353 0))(
  ( (String!45354 (value!194843 String)) )
))
(declare-datatypes ((List!40108 0))(
  ( (Nil!39984) (Cons!39984 (h!45404 C!22226) (t!303067 List!40108)) )
))
(declare-datatypes ((IArray!24441 0))(
  ( (IArray!24442 (innerList!12278 List!40108)) )
))
(declare-datatypes ((Conc!12218 0))(
  ( (Node!12218 (left!30945 Conc!12218) (right!31275 Conc!12218) (csize!24666 Int) (cheight!12429 Int)) (Leaf!18960 (xs!15420 IArray!24441) (csize!24667 Int)) (Empty!12218) )
))
(declare-datatypes ((BalanceConc!24050 0))(
  ( (BalanceConc!24051 (c!649205 Conc!12218)) )
))
(declare-datatypes ((TokenValueInjection!12118 0))(
  ( (TokenValueInjection!12119 (toValue!8463 Int) (toChars!8322 Int)) )
))
(declare-datatypes ((Rule!12030 0))(
  ( (Rule!12031 (regex!6115 Regex!11020) (tag!6975 String!45353) (isSeparator!6115 Bool) (transformation!6115 TokenValueInjection!12118)) )
))
(declare-datatypes ((List!40109 0))(
  ( (Nil!39985) (Cons!39985 (h!45405 Rule!12030) (t!303068 List!40109)) )
))
(declare-fun rs!167 () List!40109)

(assert (= (and b!3750829 (is-Cons!39985 rs!167)) b!3750840))

(declare-fun order!21849 () Int)

(declare-fun lambda!125232 () Int)

(declare-fun order!21847 () Int)

(declare-fun dynLambda!17280 (Int Int) Int)

(declare-fun dynLambda!17281 (Int Int) Int)

(assert (=> b!3750842 (< (dynLambda!17280 order!21847 (toValue!8463 (transformation!6115 (h!45405 rs!167)))) (dynLambda!17281 order!21849 lambda!125232))))

(declare-fun order!21851 () Int)

(declare-fun dynLambda!17282 (Int Int) Int)

(assert (=> b!3750842 (< (dynLambda!17282 order!21851 (toChars!8322 (transformation!6115 (h!45405 rs!167)))) (dynLambda!17281 order!21849 lambda!125232))))

(assert (=> b!3750829 true))

(declare-fun e!2320081 () Bool)

(assert (=> b!3750825 (= e!2320081 (and tp!1145334 tp!1145331))))

(declare-fun b!3750826 () Bool)

(declare-fun res!1520190 () Bool)

(declare-fun e!2320079 () Bool)

(assert (=> b!3750826 (=> (not res!1520190) (not e!2320079))))

(declare-fun isEmpty!23552 (List!40109) Bool)

(assert (=> b!3750826 (= res!1520190 (not (isEmpty!23552 rs!167)))))

(declare-fun b!3750827 () Bool)

(declare-fun e!2320080 () Bool)

(declare-fun e!2320083 () Bool)

(declare-fun tp!1145335 () Bool)

(assert (=> b!3750827 (= e!2320080 (and e!2320083 tp!1145335))))

(declare-fun res!1520191 () Bool)

(assert (=> start!352168 (=> (not res!1520191) (not e!2320079))))

(declare-datatypes ((LexerInterface!5704 0))(
  ( (LexerInterfaceExt!5701 (__x!24908 Int)) (Lexer!5702) )
))
(declare-fun thiss!10925 () LexerInterface!5704)

(assert (=> start!352168 (= res!1520191 (is-Lexer!5702 thiss!10925))))

(assert (=> start!352168 e!2320079))

(assert (=> start!352168 true))

(assert (=> start!352168 e!2320080))

(declare-datatypes ((Token!11368 0))(
  ( (Token!11369 (value!194844 TokenValue!6345) (rule!8879 Rule!12030) (size!30091 Int) (originalCharacters!6715 List!40108)) )
))
(declare-datatypes ((List!40110 0))(
  ( (Nil!39986) (Cons!39986 (h!45406 Token!11368) (t!303069 List!40110)) )
))
(declare-datatypes ((IArray!24443 0))(
  ( (IArray!24444 (innerList!12279 List!40110)) )
))
(declare-datatypes ((Conc!12219 0))(
  ( (Node!12219 (left!30946 Conc!12219) (right!31276 Conc!12219) (csize!24668 Int) (cheight!12430 Int)) (Leaf!18961 (xs!15421 IArray!24443) (csize!24669 Int)) (Empty!12219) )
))
(declare-datatypes ((BalanceConc!24052 0))(
  ( (BalanceConc!24053 (c!649206 Conc!12219)) )
))
(declare-fun ts!107 () BalanceConc!24052)

(declare-fun e!2320082 () Bool)

(declare-fun inv!53496 (BalanceConc!24052) Bool)

(assert (=> start!352168 (and (inv!53496 ts!107) e!2320082)))

(declare-fun b!3750828 () Bool)

(declare-fun tp!1145332 () Bool)

(declare-fun inv!53497 (Conc!12219) Bool)

(assert (=> b!3750828 (= e!2320082 (and (inv!53497 (c!649206 ts!107)) tp!1145332))))

(assert (=> b!3750829 (= e!2320079 false)))

(declare-fun lt!1299826 () Bool)

(declare-fun forall!8205 (List!40110 Int) Bool)

(declare-fun list!14720 (BalanceConc!24052) List!40110)

(assert (=> b!3750829 (= lt!1299826 (forall!8205 (list!14720 ts!107) lambda!125232))))

(declare-fun lt!1299825 () Bool)

(declare-fun forall!8206 (BalanceConc!24052 Int) Bool)

(assert (=> b!3750829 (= lt!1299825 (forall!8206 ts!107 lambda!125232))))

(declare-fun b!3750830 () Bool)

(declare-fun res!1520192 () Bool)

(assert (=> b!3750830 (=> (not res!1520192) (not e!2320079))))

(declare-fun rulesInvariant!5101 (LexerInterface!5704 List!40109) Bool)

(assert (=> b!3750830 (= res!1520192 (rulesInvariant!5101 thiss!10925 rs!167))))

(declare-fun b!3750831 () Bool)

(declare-fun tp!1145333 () Bool)

(declare-fun inv!53493 (String!45353) Bool)

(declare-fun inv!53498 (TokenValueInjection!12118) Bool)

(assert (=> b!3750831 (= e!2320083 (and tp!1145333 (inv!53493 (tag!6975 (h!45405 rs!167))) (inv!53498 (transformation!6115 (h!45405 rs!167))) e!2320081))))

(assert (= (and start!352168 res!1520191) b!3750826))

(assert (= (and b!3750826 res!1520190) b!3750830))

(assert (= (and b!3750830 res!1520192) b!3750829))

(assert (= b!3750831 b!3750825))

(assert (= b!3750827 b!3750831))

(assert (= (and start!352168 (is-Cons!39985 rs!167)) b!3750827))

(assert (= start!352168 b!3750828))

(declare-fun m!4241781 () Bool)

(assert (=> b!3750826 m!4241781))

(declare-fun m!4241783 () Bool)

(assert (=> b!3750828 m!4241783))

(declare-fun m!4241785 () Bool)

(assert (=> b!3750831 m!4241785))

(declare-fun m!4241787 () Bool)

(assert (=> b!3750831 m!4241787))

(declare-fun m!4241789 () Bool)

(assert (=> b!3750830 m!4241789))

(declare-fun m!4241791 () Bool)

(assert (=> b!3750829 m!4241791))

(assert (=> b!3750829 m!4241791))

(declare-fun m!4241793 () Bool)

(assert (=> b!3750829 m!4241793))

(declare-fun m!4241795 () Bool)

(assert (=> b!3750829 m!4241795))

(declare-fun m!4241797 () Bool)

(assert (=> start!352168 m!4241797))

(push 1)

(assert (not b!3750827))

(assert (not b!3750831))

(assert (not b_next!101087))

(assert (not start!352168))

(assert (not b!3750828))

(assert b_and!278759)

(assert b_and!278761)

(assert (not b_next!101085))

(assert (not b!3750826))

(assert (not b!3750829))

(assert (not b!3750830))

(assert (not b!3750840))

(check-sat)

(pop 1)

(push 1)

(assert b_and!278761)

(assert b_and!278759)

(assert (not b_next!101087))

(assert (not b_next!101085))

(check-sat)

(pop 1)

