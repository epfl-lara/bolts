; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352488 () Bool)

(assert start!352488)

(declare-fun b!3753504 () Bool)

(declare-fun b_free!100461 () Bool)

(declare-fun b_next!101165 () Bool)

(assert (=> b!3753504 (= b_free!100461 (not b_next!101165))))

(declare-fun tp!1146129 () Bool)

(declare-fun b_and!278943 () Bool)

(assert (=> b!3753504 (= tp!1146129 b_and!278943)))

(declare-fun b_free!100463 () Bool)

(declare-fun b_next!101167 () Bool)

(assert (=> b!3753504 (= b_free!100463 (not b_next!101167))))

(declare-fun tp!1146132 () Bool)

(declare-fun b_and!278945 () Bool)

(assert (=> b!3753504 (= tp!1146132 b_and!278945)))

(declare-fun b!3753500 () Bool)

(declare-fun e!2321912 () Bool)

(declare-datatypes ((List!40161 0))(
  ( (Nil!40037) (Cons!40037 (h!45457 (_ BitVec 16)) (t!303264 List!40161)) )
))
(declare-datatypes ((TokenValue!6356 0))(
  ( (FloatLiteralValue!12712 (text!44937 List!40161)) (TokenValueExt!6355 (__x!24929 Int)) (Broken!31780 (value!195154 List!40161)) (Object!6479) (End!6356) (Def!6356) (Underscore!6356) (Match!6356) (Else!6356) (Error!6356) (Case!6356) (If!6356) (Extends!6356) (Abstract!6356) (Class!6356) (Val!6356) (DelimiterValue!12712 (del!6416 List!40161)) (KeywordValue!6362 (value!195155 List!40161)) (CommentValue!12712 (value!195156 List!40161)) (WhitespaceValue!12712 (value!195157 List!40161)) (IndentationValue!6356 (value!195158 List!40161)) (String!45437) (Int32!6356) (Broken!31781 (value!195159 List!40161)) (Boolean!6357) (Unit!57765) (OperatorValue!6359 (op!6416 List!40161)) (IdentifierValue!12712 (value!195160 List!40161)) (IdentifierValue!12713 (value!195161 List!40161)) (WhitespaceValue!12713 (value!195162 List!40161)) (True!12712) (False!12712) (Broken!31782 (value!195163 List!40161)) (Broken!31783 (value!195164 List!40161)) (True!12713) (RightBrace!6356) (RightBracket!6356) (Colon!6356) (Null!6356) (Comma!6356) (LeftBracket!6356) (False!12713) (LeftBrace!6356) (ImaginaryLiteralValue!6356 (text!44938 List!40161)) (StringLiteralValue!19068 (value!195165 List!40161)) (EOFValue!6356 (value!195166 List!40161)) (IdentValue!6356 (value!195167 List!40161)) (DelimiterValue!12713 (value!195168 List!40161)) (DedentValue!6356 (value!195169 List!40161)) (NewLineValue!6356 (value!195170 List!40161)) (IntegerValue!19068 (value!195171 (_ BitVec 32)) (text!44939 List!40161)) (IntegerValue!19069 (value!195172 Int) (text!44940 List!40161)) (Times!6356) (Or!6356) (Equal!6356) (Minus!6356) (Broken!31784 (value!195173 List!40161)) (And!6356) (Div!6356) (LessEqual!6356) (Mod!6356) (Concat!17387) (Not!6356) (Plus!6356) (SpaceValue!6356 (value!195174 List!40161)) (IntegerValue!19070 (value!195175 Int) (text!44941 List!40161)) (StringLiteralValue!19069 (text!44942 List!40161)) (FloatLiteralValue!12713 (text!44943 List!40161)) (BytesLiteralValue!6356 (value!195176 List!40161)) (CommentValue!12713 (value!195177 List!40161)) (StringLiteralValue!19070 (value!195178 List!40161)) (ErrorTokenValue!6356 (msg!6417 List!40161)) )
))
(declare-datatypes ((C!22248 0))(
  ( (C!22249 (val!13188 Int)) )
))
(declare-datatypes ((List!40162 0))(
  ( (Nil!40038) (Cons!40038 (h!45458 C!22248) (t!303265 List!40162)) )
))
(declare-datatypes ((IArray!24509 0))(
  ( (IArray!24510 (innerList!12312 List!40162)) )
))
(declare-datatypes ((Conc!12252 0))(
  ( (Node!12252 (left!30998 Conc!12252) (right!31328 Conc!12252) (csize!24734 Int) (cheight!12463 Int)) (Leaf!19007 (xs!15454 IArray!24509) (csize!24735 Int)) (Empty!12252) )
))
(declare-datatypes ((BalanceConc!24098 0))(
  ( (BalanceConc!24099 (c!649729 Conc!12252)) )
))
(declare-datatypes ((TokenValueInjection!12140 0))(
  ( (TokenValueInjection!12141 (toValue!8474 Int) (toChars!8333 Int)) )
))
(declare-datatypes ((Regex!11031 0))(
  ( (ElementMatch!11031 (c!649730 C!22248)) (Concat!17388 (regOne!22574 Regex!11031) (regTwo!22574 Regex!11031)) (EmptyExpr!11031) (Star!11031 (reg!11360 Regex!11031)) (EmptyLang!11031) (Union!11031 (regOne!22575 Regex!11031) (regTwo!22575 Regex!11031)) )
))
(declare-datatypes ((String!45438 0))(
  ( (String!45439 (value!195179 String)) )
))
(declare-datatypes ((Rule!12052 0))(
  ( (Rule!12053 (regex!6126 Regex!11031) (tag!6986 String!45438) (isSeparator!6126 Bool) (transformation!6126 TokenValueInjection!12140)) )
))
(declare-datatypes ((Token!11390 0))(
  ( (Token!11391 (value!195180 TokenValue!6356) (rule!8890 Rule!12052) (size!30127 Int) (originalCharacters!6726 List!40162)) )
))
(declare-datatypes ((List!40163 0))(
  ( (Nil!40039) (Cons!40039 (h!45459 Token!11390) (t!303266 List!40163)) )
))
(declare-datatypes ((IArray!24511 0))(
  ( (IArray!24512 (innerList!12313 List!40163)) )
))
(declare-datatypes ((Conc!12253 0))(
  ( (Node!12253 (left!30999 Conc!12253) (right!31329 Conc!12253) (csize!24736 Int) (cheight!12464 Int)) (Leaf!19008 (xs!15455 IArray!24511) (csize!24737 Int)) (Empty!12253) )
))
(declare-datatypes ((BalanceConc!24100 0))(
  ( (BalanceConc!24101 (c!649731 Conc!12253)) )
))
(declare-fun v!6366 () BalanceConc!24100)

(declare-fun tp!1146128 () Bool)

(declare-fun inv!53642 (Conc!12253) Bool)

(assert (=> b!3753500 (= e!2321912 (and (inv!53642 (c!649731 v!6366)) tp!1146128))))

(declare-fun b!3753501 () Bool)

(declare-fun e!2321918 () Bool)

(declare-fun acc!419 () BalanceConc!24098)

(declare-fun tp!1146130 () Bool)

(declare-fun inv!53643 (Conc!12252) Bool)

(assert (=> b!3753501 (= e!2321918 (and (inv!53643 (c!649729 acc!419)) tp!1146130))))

(declare-fun tp!1146131 () Bool)

(declare-fun e!2321914 () Bool)

(declare-fun e!2321916 () Bool)

(declare-fun b!3753502 () Bool)

(declare-fun separatorToken!144 () Token!11390)

(declare-fun inv!53635 (String!45438) Bool)

(declare-fun inv!53644 (TokenValueInjection!12140) Bool)

(assert (=> b!3753502 (= e!2321916 (and tp!1146131 (inv!53635 (tag!6986 (rule!8890 separatorToken!144))) (inv!53644 (transformation!6126 (rule!8890 separatorToken!144))) e!2321914))))

(assert (=> b!3753504 (= e!2321914 (and tp!1146129 tp!1146132))))

(declare-fun e!2321915 () Bool)

(declare-fun b!3753505 () Bool)

(declare-fun tp!1146127 () Bool)

(declare-fun inv!21 (TokenValue!6356) Bool)

(assert (=> b!3753505 (= e!2321915 (and (inv!21 (value!195180 separatorToken!144)) e!2321916 tp!1146127))))

(declare-fun b!3753506 () Bool)

(declare-fun e!2321911 () Bool)

(assert (=> b!3753506 (= e!2321911 (not true))))

(declare-fun lt!1300289 () List!40162)

(declare-fun list!14757 (BalanceConc!24098) List!40162)

(assert (=> b!3753506 (= lt!1300289 (list!14757 acc!419))))

(declare-fun lt!1300286 () List!40163)

(declare-fun from!856 () Int)

(declare-fun dropList!1265 (BalanceConc!24100 Int) List!40163)

(assert (=> b!3753506 (= lt!1300286 (dropList!1265 v!6366 from!856))))

(declare-fun lt!1300288 () BalanceConc!24098)

(declare-datatypes ((LexerInterface!5715 0))(
  ( (LexerInterfaceExt!5712 (__x!24930 Int)) (Lexer!5713) )
))
(declare-fun thiss!14060 () LexerInterface!5715)

(declare-fun printWithSeparatorTokenTailRec!80 (LexerInterface!5715 BalanceConc!24100 Token!11390 Int BalanceConc!24098) BalanceConc!24098)

(declare-fun ++!9915 (BalanceConc!24098 BalanceConc!24098) BalanceConc!24098)

(declare-fun charsOf!3979 (Token!11390) BalanceConc!24098)

(declare-fun apply!9424 (BalanceConc!24100 Int) Token!11390)

(assert (=> b!3753506 (= lt!1300288 (printWithSeparatorTokenTailRec!80 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9915 (++!9915 acc!419 (charsOf!3979 (apply!9424 v!6366 from!856))) (charsOf!3979 separatorToken!144))))))

(declare-fun lt!1300282 () List!40163)

(declare-fun lt!1300287 () List!40163)

(declare-fun tail!5758 (List!40163) List!40163)

(declare-fun drop!2087 (List!40163 Int) List!40163)

(assert (=> b!3753506 (= (tail!5758 lt!1300282) (drop!2087 lt!1300287 (+ 1 from!856)))))

(declare-datatypes ((Unit!57766 0))(
  ( (Unit!57767) )
))
(declare-fun lt!1300284 () Unit!57766)

(declare-fun lemmaDropTail!1109 (List!40163 Int) Unit!57766)

(assert (=> b!3753506 (= lt!1300284 (lemmaDropTail!1109 lt!1300287 from!856))))

(declare-fun head!8031 (List!40163) Token!11390)

(declare-fun apply!9425 (List!40163 Int) Token!11390)

(assert (=> b!3753506 (= (head!8031 lt!1300282) (apply!9425 lt!1300287 from!856))))

(assert (=> b!3753506 (= lt!1300282 (drop!2087 lt!1300287 from!856))))

(declare-fun lt!1300285 () Unit!57766)

(declare-fun lemmaDropApply!1225 (List!40163 Int) Unit!57766)

(assert (=> b!3753506 (= lt!1300285 (lemmaDropApply!1225 lt!1300287 from!856))))

(declare-fun list!14758 (BalanceConc!24100) List!40163)

(assert (=> b!3753506 (= lt!1300287 (list!14758 v!6366))))

(declare-fun b!3753503 () Bool)

(declare-fun e!2321917 () Bool)

(assert (=> b!3753503 (= e!2321917 e!2321911)))

(declare-fun res!1521055 () Bool)

(assert (=> b!3753503 (=> (not res!1521055) (not e!2321911))))

(declare-fun lt!1300283 () Int)

(assert (=> b!3753503 (= res!1521055 (and (<= from!856 lt!1300283) (isSeparator!6126 (rule!8890 separatorToken!144)) (< from!856 lt!1300283)))))

(declare-fun size!30128 (BalanceConc!24100) Int)

(assert (=> b!3753503 (= lt!1300283 (size!30128 v!6366))))

(declare-fun res!1521054 () Bool)

(assert (=> start!352488 (=> (not res!1521054) (not e!2321917))))

(get-info :version)

(assert (=> start!352488 (= res!1521054 (and ((_ is Lexer!5713) thiss!14060) (>= from!856 0)))))

(assert (=> start!352488 e!2321917))

(declare-fun inv!53645 (BalanceConc!24098) Bool)

(assert (=> start!352488 (and (inv!53645 acc!419) e!2321918)))

(assert (=> start!352488 true))

(declare-fun inv!53646 (Token!11390) Bool)

(assert (=> start!352488 (and (inv!53646 separatorToken!144) e!2321915)))

(declare-fun inv!53647 (BalanceConc!24100) Bool)

(assert (=> start!352488 (and (inv!53647 v!6366) e!2321912)))

(assert (= (and start!352488 res!1521054) b!3753503))

(assert (= (and b!3753503 res!1521055) b!3753506))

(assert (= start!352488 b!3753501))

(assert (= b!3753502 b!3753504))

(assert (= b!3753505 b!3753502))

(assert (= start!352488 b!3753505))

(assert (= start!352488 b!3753500))

(declare-fun m!4245399 () Bool)

(assert (=> b!3753505 m!4245399))

(declare-fun m!4245401 () Bool)

(assert (=> b!3753506 m!4245401))

(declare-fun m!4245403 () Bool)

(assert (=> b!3753506 m!4245403))

(declare-fun m!4245405 () Bool)

(assert (=> b!3753506 m!4245405))

(declare-fun m!4245407 () Bool)

(assert (=> b!3753506 m!4245407))

(declare-fun m!4245409 () Bool)

(assert (=> b!3753506 m!4245409))

(declare-fun m!4245411 () Bool)

(assert (=> b!3753506 m!4245411))

(declare-fun m!4245413 () Bool)

(assert (=> b!3753506 m!4245413))

(declare-fun m!4245415 () Bool)

(assert (=> b!3753506 m!4245415))

(declare-fun m!4245417 () Bool)

(assert (=> b!3753506 m!4245417))

(assert (=> b!3753506 m!4245415))

(assert (=> b!3753506 m!4245411))

(declare-fun m!4245419 () Bool)

(assert (=> b!3753506 m!4245419))

(declare-fun m!4245421 () Bool)

(assert (=> b!3753506 m!4245421))

(assert (=> b!3753506 m!4245413))

(assert (=> b!3753506 m!4245417))

(assert (=> b!3753506 m!4245403))

(declare-fun m!4245423 () Bool)

(assert (=> b!3753506 m!4245423))

(declare-fun m!4245425 () Bool)

(assert (=> b!3753506 m!4245425))

(declare-fun m!4245427 () Bool)

(assert (=> b!3753506 m!4245427))

(declare-fun m!4245429 () Bool)

(assert (=> b!3753506 m!4245429))

(declare-fun m!4245431 () Bool)

(assert (=> b!3753506 m!4245431))

(declare-fun m!4245433 () Bool)

(assert (=> b!3753500 m!4245433))

(declare-fun m!4245435 () Bool)

(assert (=> b!3753503 m!4245435))

(declare-fun m!4245437 () Bool)

(assert (=> start!352488 m!4245437))

(declare-fun m!4245439 () Bool)

(assert (=> start!352488 m!4245439))

(declare-fun m!4245441 () Bool)

(assert (=> start!352488 m!4245441))

(declare-fun m!4245443 () Bool)

(assert (=> b!3753502 m!4245443))

(declare-fun m!4245445 () Bool)

(assert (=> b!3753502 m!4245445))

(declare-fun m!4245447 () Bool)

(assert (=> b!3753501 m!4245447))

(check-sat (not b!3753500) b_and!278943 (not b!3753501) (not b!3753502) (not b_next!101167) b_and!278945 (not b!3753505) (not b!3753503) (not b_next!101165) (not start!352488) (not b!3753506))
(check-sat b_and!278945 b_and!278943 (not b_next!101167) (not b_next!101165))
