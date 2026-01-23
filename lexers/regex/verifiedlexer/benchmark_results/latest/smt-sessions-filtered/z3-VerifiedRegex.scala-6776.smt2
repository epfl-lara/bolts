; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353440 () Bool)

(assert start!353440)

(declare-fun b!3764101 () Bool)

(declare-fun e!2327936 () Bool)

(declare-fun e!2327935 () Bool)

(assert (=> b!3764101 (= e!2327936 e!2327935)))

(declare-fun res!1523961 () Bool)

(assert (=> b!3764101 (=> (not res!1523961) (not e!2327935))))

(declare-fun from!841 () Int)

(declare-fun lt!1302523 () Int)

(assert (=> b!3764101 (= res!1523961 (and (<= from!841 lt!1302523) (< from!841 lt!1302523)))))

(declare-datatypes ((List!40269 0))(
  ( (Nil!40145) (Cons!40145 (h!45565 (_ BitVec 16)) (t!304246 List!40269)) )
))
(declare-datatypes ((TokenValue!6388 0))(
  ( (FloatLiteralValue!12776 (text!45161 List!40269)) (TokenValueExt!6387 (__x!24993 Int)) (Broken!31940 (value!196084 List!40269)) (Object!6511) (End!6388) (Def!6388) (Underscore!6388) (Match!6388) (Else!6388) (Error!6388) (Case!6388) (If!6388) (Extends!6388) (Abstract!6388) (Class!6388) (Val!6388) (DelimiterValue!12776 (del!6448 List!40269)) (KeywordValue!6394 (value!196085 List!40269)) (CommentValue!12776 (value!196086 List!40269)) (WhitespaceValue!12776 (value!196087 List!40269)) (IndentationValue!6388 (value!196088 List!40269)) (String!45621) (Int32!6388) (Broken!31941 (value!196089 List!40269)) (Boolean!6389) (Unit!57869) (OperatorValue!6391 (op!6448 List!40269)) (IdentifierValue!12776 (value!196090 List!40269)) (IdentifierValue!12777 (value!196091 List!40269)) (WhitespaceValue!12777 (value!196092 List!40269)) (True!12776) (False!12776) (Broken!31942 (value!196093 List!40269)) (Broken!31943 (value!196094 List!40269)) (True!12777) (RightBrace!6388) (RightBracket!6388) (Colon!6388) (Null!6388) (Comma!6388) (LeftBracket!6388) (False!12777) (LeftBrace!6388) (ImaginaryLiteralValue!6388 (text!45162 List!40269)) (StringLiteralValue!19164 (value!196095 List!40269)) (EOFValue!6388 (value!196096 List!40269)) (IdentValue!6388 (value!196097 List!40269)) (DelimiterValue!12777 (value!196098 List!40269)) (DedentValue!6388 (value!196099 List!40269)) (NewLineValue!6388 (value!196100 List!40269)) (IntegerValue!19164 (value!196101 (_ BitVec 32)) (text!45163 List!40269)) (IntegerValue!19165 (value!196102 Int) (text!45164 List!40269)) (Times!6388) (Or!6388) (Equal!6388) (Minus!6388) (Broken!31944 (value!196103 List!40269)) (And!6388) (Div!6388) (LessEqual!6388) (Mod!6388) (Concat!17451) (Not!6388) (Plus!6388) (SpaceValue!6388 (value!196104 List!40269)) (IntegerValue!19166 (value!196105 Int) (text!45165 List!40269)) (StringLiteralValue!19165 (text!45166 List!40269)) (FloatLiteralValue!12777 (text!45167 List!40269)) (BytesLiteralValue!6388 (value!196106 List!40269)) (CommentValue!12777 (value!196107 List!40269)) (StringLiteralValue!19166 (value!196108 List!40269)) (ErrorTokenValue!6388 (msg!6449 List!40269)) )
))
(declare-datatypes ((C!22312 0))(
  ( (C!22313 (val!13232 Int)) )
))
(declare-datatypes ((Regex!11063 0))(
  ( (ElementMatch!11063 (c!651977 C!22312)) (Concat!17452 (regOne!22638 Regex!11063) (regTwo!22638 Regex!11063)) (EmptyExpr!11063) (Star!11063 (reg!11392 Regex!11063)) (EmptyLang!11063) (Union!11063 (regOne!22639 Regex!11063) (regTwo!22639 Regex!11063)) )
))
(declare-datatypes ((String!45622 0))(
  ( (String!45623 (value!196109 String)) )
))
(declare-datatypes ((List!40270 0))(
  ( (Nil!40146) (Cons!40146 (h!45566 C!22312) (t!304247 List!40270)) )
))
(declare-datatypes ((IArray!24609 0))(
  ( (IArray!24610 (innerList!12362 List!40270)) )
))
(declare-datatypes ((Conc!12302 0))(
  ( (Node!12302 (left!31082 Conc!12302) (right!31412 Conc!12302) (csize!24834 Int) (cheight!12513 Int)) (Leaf!19079 (xs!15508 IArray!24609) (csize!24835 Int)) (Empty!12302) )
))
(declare-datatypes ((BalanceConc!24198 0))(
  ( (BalanceConc!24199 (c!651978 Conc!12302)) )
))
(declare-datatypes ((TokenValueInjection!12204 0))(
  ( (TokenValueInjection!12205 (toValue!8518 Int) (toChars!8377 Int)) )
))
(declare-datatypes ((Rule!12116 0))(
  ( (Rule!12117 (regex!6158 Regex!11063) (tag!7018 String!45622) (isSeparator!6158 Bool) (transformation!6158 TokenValueInjection!12204)) )
))
(declare-datatypes ((Token!11454 0))(
  ( (Token!11455 (value!196110 TokenValue!6388) (rule!8922 Rule!12116) (size!30218 Int) (originalCharacters!6758 List!40270)) )
))
(declare-datatypes ((List!40271 0))(
  ( (Nil!40147) (Cons!40147 (h!45567 Token!11454) (t!304248 List!40271)) )
))
(declare-datatypes ((IArray!24611 0))(
  ( (IArray!24612 (innerList!12363 List!40271)) )
))
(declare-datatypes ((Conc!12303 0))(
  ( (Node!12303 (left!31083 Conc!12303) (right!31413 Conc!12303) (csize!24836 Int) (cheight!12514 Int)) (Leaf!19080 (xs!15509 IArray!24611) (csize!24837 Int)) (Empty!12303) )
))
(declare-datatypes ((BalanceConc!24200 0))(
  ( (BalanceConc!24201 (c!651979 Conc!12303)) )
))
(declare-fun v!6347 () BalanceConc!24200)

(declare-fun size!30219 (BalanceConc!24200) Int)

(assert (=> b!3764101 (= lt!1302523 (size!30219 v!6347))))

(declare-fun b!3764102 () Bool)

(assert (=> b!3764102 (= e!2327935 (not (< (- lt!1302523 (+ 1 from!841)) (- lt!1302523 from!841))))))

(declare-fun acc!400 () BalanceConc!24198)

(declare-fun lt!1302524 () BalanceConc!24198)

(declare-fun ++!9958 (BalanceConc!24198 BalanceConc!24198) BalanceConc!24198)

(declare-fun charsOf!4008 (Token!11454) BalanceConc!24198)

(declare-fun apply!9452 (BalanceConc!24200 Int) Token!11454)

(assert (=> b!3764102 (= lt!1302524 (++!9958 acc!400 (charsOf!4008 (apply!9452 v!6347 from!841))))))

(declare-fun lt!1302525 () List!40271)

(declare-fun lt!1302522 () List!40271)

(declare-fun tail!5775 (List!40271) List!40271)

(declare-fun drop!2103 (List!40271 Int) List!40271)

(assert (=> b!3764102 (= (tail!5775 lt!1302525) (drop!2103 lt!1302522 (+ 1 from!841)))))

(declare-datatypes ((Unit!57870 0))(
  ( (Unit!57871) )
))
(declare-fun lt!1302520 () Unit!57870)

(declare-fun lemmaDropTail!1121 (List!40271 Int) Unit!57870)

(assert (=> b!3764102 (= lt!1302520 (lemmaDropTail!1121 lt!1302522 from!841))))

(declare-fun head!8048 (List!40271) Token!11454)

(declare-fun apply!9453 (List!40271 Int) Token!11454)

(assert (=> b!3764102 (= (head!8048 lt!1302525) (apply!9453 lt!1302522 from!841))))

(assert (=> b!3764102 (= lt!1302525 (drop!2103 lt!1302522 from!841))))

(declare-fun lt!1302521 () Unit!57870)

(declare-fun lemmaDropApply!1237 (List!40271 Int) Unit!57870)

(assert (=> b!3764102 (= lt!1302521 (lemmaDropApply!1237 lt!1302522 from!841))))

(declare-fun list!14828 (BalanceConc!24200) List!40271)

(assert (=> b!3764102 (= lt!1302522 (list!14828 v!6347))))

(declare-fun b!3764103 () Bool)

(declare-fun e!2327934 () Bool)

(declare-fun tp!1150010 () Bool)

(declare-fun inv!53878 (Conc!12303) Bool)

(assert (=> b!3764103 (= e!2327934 (and (inv!53878 (c!651979 v!6347)) tp!1150010))))

(declare-fun b!3764104 () Bool)

(declare-fun e!2327933 () Bool)

(declare-fun tp!1150009 () Bool)

(declare-fun inv!53879 (Conc!12302) Bool)

(assert (=> b!3764104 (= e!2327933 (and (inv!53879 (c!651978 acc!400)) tp!1150009))))

(declare-fun res!1523962 () Bool)

(assert (=> start!353440 (=> (not res!1523962) (not e!2327936))))

(declare-datatypes ((LexerInterface!5747 0))(
  ( (LexerInterfaceExt!5744 (__x!24994 Int)) (Lexer!5745) )
))
(declare-fun thiss!13650 () LexerInterface!5747)

(get-info :version)

(assert (=> start!353440 (= res!1523962 (and ((_ is Lexer!5745) thiss!13650) (>= from!841 0)))))

(assert (=> start!353440 e!2327936))

(assert (=> start!353440 true))

(declare-fun inv!53880 (BalanceConc!24200) Bool)

(assert (=> start!353440 (and (inv!53880 v!6347) e!2327934)))

(declare-fun inv!53881 (BalanceConc!24198) Bool)

(assert (=> start!353440 (and (inv!53881 acc!400) e!2327933)))

(assert (= (and start!353440 res!1523962) b!3764101))

(assert (= (and b!3764101 res!1523961) b!3764102))

(assert (= start!353440 b!3764103))

(assert (= start!353440 b!3764104))

(declare-fun m!4259821 () Bool)

(assert (=> b!3764104 m!4259821))

(declare-fun m!4259823 () Bool)

(assert (=> b!3764101 m!4259823))

(declare-fun m!4259825 () Bool)

(assert (=> start!353440 m!4259825))

(declare-fun m!4259827 () Bool)

(assert (=> start!353440 m!4259827))

(declare-fun m!4259829 () Bool)

(assert (=> b!3764103 m!4259829))

(declare-fun m!4259831 () Bool)

(assert (=> b!3764102 m!4259831))

(declare-fun m!4259833 () Bool)

(assert (=> b!3764102 m!4259833))

(declare-fun m!4259835 () Bool)

(assert (=> b!3764102 m!4259835))

(assert (=> b!3764102 m!4259831))

(declare-fun m!4259837 () Bool)

(assert (=> b!3764102 m!4259837))

(declare-fun m!4259839 () Bool)

(assert (=> b!3764102 m!4259839))

(declare-fun m!4259841 () Bool)

(assert (=> b!3764102 m!4259841))

(assert (=> b!3764102 m!4259835))

(declare-fun m!4259843 () Bool)

(assert (=> b!3764102 m!4259843))

(declare-fun m!4259845 () Bool)

(assert (=> b!3764102 m!4259845))

(declare-fun m!4259847 () Bool)

(assert (=> b!3764102 m!4259847))

(declare-fun m!4259849 () Bool)

(assert (=> b!3764102 m!4259849))

(declare-fun m!4259851 () Bool)

(assert (=> b!3764102 m!4259851))

(check-sat (not b!3764103) (not b!3764101) (not b!3764102) (not start!353440) (not b!3764104))
(check-sat)
