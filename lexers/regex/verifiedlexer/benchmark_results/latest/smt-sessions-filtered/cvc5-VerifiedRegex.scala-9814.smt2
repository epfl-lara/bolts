; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!513582 () Bool)

(assert start!513582)

(declare-fun b!4901758 () Bool)

(declare-fun b_free!131751 () Bool)

(declare-fun b_next!132541 () Bool)

(assert (=> b!4901758 (= b_free!131751 (not b_next!132541))))

(declare-fun tp!1379185 () Bool)

(declare-fun b_and!346143 () Bool)

(assert (=> b!4901758 (= tp!1379185 b_and!346143)))

(declare-fun b_free!131753 () Bool)

(declare-fun b_next!132543 () Bool)

(assert (=> b!4901758 (= b_free!131753 (not b_next!132543))))

(declare-fun tp!1379187 () Bool)

(declare-fun b_and!346145 () Bool)

(assert (=> b!4901758 (= tp!1379187 b_and!346145)))

(declare-fun e!3064008 () Bool)

(declare-fun b!4901754 () Bool)

(declare-fun tp!1379184 () Bool)

(declare-datatypes ((C!26738 0))(
  ( (C!26739 (val!22703 Int)) )
))
(declare-datatypes ((Regex!13270 0))(
  ( (ElementMatch!13270 (c!833141 C!26738)) (Concat!21775 (regOne!27052 Regex!13270) (regTwo!27052 Regex!13270)) (EmptyExpr!13270) (Star!13270 (reg!13599 Regex!13270)) (EmptyLang!13270) (Union!13270 (regOne!27053 Regex!13270) (regTwo!27053 Regex!13270)) )
))
(declare-datatypes ((String!63968 0))(
  ( (String!63969 (value!262677 String)) )
))
(declare-datatypes ((List!56588 0))(
  ( (Nil!56464) (Cons!56464 (h!62912 (_ BitVec 16)) (t!366680 List!56588)) )
))
(declare-datatypes ((TokenValue!8505 0))(
  ( (FloatLiteralValue!17010 (text!59980 List!56588)) (TokenValueExt!8504 (__x!34303 Int)) (Broken!42525 (value!262678 List!56588)) (Object!8628) (End!8505) (Def!8505) (Underscore!8505) (Match!8505) (Else!8505) (Error!8505) (Case!8505) (If!8505) (Extends!8505) (Abstract!8505) (Class!8505) (Val!8505) (DelimiterValue!17010 (del!8565 List!56588)) (KeywordValue!8511 (value!262679 List!56588)) (CommentValue!17010 (value!262680 List!56588)) (WhitespaceValue!17010 (value!262681 List!56588)) (IndentationValue!8505 (value!262682 List!56588)) (String!63970) (Int32!8505) (Broken!42526 (value!262683 List!56588)) (Boolean!8506) (Unit!146561) (OperatorValue!8508 (op!8565 List!56588)) (IdentifierValue!17010 (value!262684 List!56588)) (IdentifierValue!17011 (value!262685 List!56588)) (WhitespaceValue!17011 (value!262686 List!56588)) (True!17010) (False!17010) (Broken!42527 (value!262687 List!56588)) (Broken!42528 (value!262688 List!56588)) (True!17011) (RightBrace!8505) (RightBracket!8505) (Colon!8505) (Null!8505) (Comma!8505) (LeftBracket!8505) (False!17011) (LeftBrace!8505) (ImaginaryLiteralValue!8505 (text!59981 List!56588)) (StringLiteralValue!25515 (value!262689 List!56588)) (EOFValue!8505 (value!262690 List!56588)) (IdentValue!8505 (value!262691 List!56588)) (DelimiterValue!17011 (value!262692 List!56588)) (DedentValue!8505 (value!262693 List!56588)) (NewLineValue!8505 (value!262694 List!56588)) (IntegerValue!25515 (value!262695 (_ BitVec 32)) (text!59982 List!56588)) (IntegerValue!25516 (value!262696 Int) (text!59983 List!56588)) (Times!8505) (Or!8505) (Equal!8505) (Minus!8505) (Broken!42529 (value!262697 List!56588)) (And!8505) (Div!8505) (LessEqual!8505) (Mod!8505) (Concat!21776) (Not!8505) (Plus!8505) (SpaceValue!8505 (value!262698 List!56588)) (IntegerValue!25517 (value!262699 Int) (text!59984 List!56588)) (StringLiteralValue!25516 (text!59985 List!56588)) (FloatLiteralValue!17011 (text!59986 List!56588)) (BytesLiteralValue!8505 (value!262700 List!56588)) (CommentValue!17011 (value!262701 List!56588)) (StringLiteralValue!25517 (value!262702 List!56588)) (ErrorTokenValue!8505 (msg!8566 List!56588)) )
))
(declare-datatypes ((List!56589 0))(
  ( (Nil!56465) (Cons!56465 (h!62913 C!26738) (t!366681 List!56589)) )
))
(declare-datatypes ((IArray!29587 0))(
  ( (IArray!29588 (innerList!14851 List!56589)) )
))
(declare-datatypes ((Conc!14763 0))(
  ( (Node!14763 (left!41035 Conc!14763) (right!41365 Conc!14763) (csize!29756 Int) (cheight!14974 Int)) (Leaf!24578 (xs!18079 IArray!29587) (csize!29757 Int)) (Empty!14763) )
))
(declare-datatypes ((BalanceConc!28956 0))(
  ( (BalanceConc!28957 (c!833142 Conc!14763)) )
))
(declare-datatypes ((TokenValueInjection!16318 0))(
  ( (TokenValueInjection!16319 (toValue!11106 Int) (toChars!10965 Int)) )
))
(declare-datatypes ((Rule!16190 0))(
  ( (Rule!16191 (regex!8195 Regex!13270) (tag!9059 String!63968) (isSeparator!8195 Bool) (transformation!8195 TokenValueInjection!16318)) )
))
(declare-fun rule!164 () Rule!16190)

(declare-fun e!3064005 () Bool)

(declare-fun inv!72807 (String!63968) Bool)

(declare-fun inv!72810 (TokenValueInjection!16318) Bool)

(assert (=> b!4901754 (= e!3064005 (and tp!1379184 (inv!72807 (tag!9059 rule!164)) (inv!72810 (transformation!8195 rule!164)) e!3064008))))

(declare-fun b!4901755 () Bool)

(declare-fun res!2093685 () Bool)

(declare-fun e!3064006 () Bool)

(assert (=> b!4901755 (=> (not res!2093685) (not e!3064006))))

(declare-fun input!1509 () BalanceConc!28956)

(declare-fun isEmpty!30329 (BalanceConc!28956) Bool)

(declare-datatypes ((tuple2!60548 0))(
  ( (tuple2!60549 (_1!33577 BalanceConc!28956) (_2!33577 BalanceConc!28956)) )
))
(declare-fun findLongestMatchWithZipperSequence!283 (Regex!13270 BalanceConc!28956) tuple2!60548)

(assert (=> b!4901755 (= res!2093685 (isEmpty!30329 (_1!33577 (findLongestMatchWithZipperSequence!283 (regex!8195 rule!164) input!1509))))))

(declare-fun b!4901756 () Bool)

(declare-fun e!3064009 () Bool)

(declare-fun tp!1379186 () Bool)

(declare-fun inv!72811 (Conc!14763) Bool)

(assert (=> b!4901756 (= e!3064009 (and (inv!72811 (c!833142 input!1509)) tp!1379186))))

(declare-fun res!2093684 () Bool)

(assert (=> start!513582 (=> (not res!2093684) (not e!3064006))))

(declare-datatypes ((LexerInterface!7787 0))(
  ( (LexerInterfaceExt!7784 (__x!34304 Int)) (Lexer!7785) )
))
(declare-fun thiss!15943 () LexerInterface!7787)

(assert (=> start!513582 (= res!2093684 (is-Lexer!7785 thiss!15943))))

(assert (=> start!513582 e!3064006))

(assert (=> start!513582 true))

(assert (=> start!513582 e!3064005))

(declare-fun inv!72812 (BalanceConc!28956) Bool)

(assert (=> start!513582 (and (inv!72812 input!1509) e!3064009)))

(declare-fun b!4901757 () Bool)

(declare-fun res!2093682 () Bool)

(assert (=> b!4901757 (=> (not res!2093682) (not e!3064006))))

(declare-fun ruleValid!3692 (LexerInterface!7787 Rule!16190) Bool)

(assert (=> b!4901757 (= res!2093682 (ruleValid!3692 thiss!15943 rule!164))))

(assert (=> b!4901758 (= e!3064008 (and tp!1379185 tp!1379187))))

(declare-fun b!4901759 () Bool)

(declare-fun e!3064010 () Bool)

(declare-fun lt!2009983 () Bool)

(assert (=> b!4901759 (= e!3064010 (not lt!2009983))))

(declare-fun b!4901760 () Bool)

(assert (=> b!4901760 (= e!3064006 e!3064010)))

(declare-fun res!2093681 () Bool)

(assert (=> b!4901760 (=> (not res!2093681) (not e!3064010))))

(declare-fun lt!2009984 () Bool)

(assert (=> b!4901760 (= res!2093681 (and (= lt!2009984 lt!2009983) lt!2009984))))

(declare-datatypes ((Token!14942 0))(
  ( (Token!14943 (value!262703 TokenValue!8505) (rule!11403 Rule!16190) (size!37185 Int) (originalCharacters!8502 List!56589)) )
))
(declare-datatypes ((tuple2!60550 0))(
  ( (tuple2!60551 (_1!33578 Token!14942) (_2!33578 List!56589)) )
))
(declare-datatypes ((Option!14051 0))(
  ( (None!14050) (Some!14050 (v!50012 tuple2!60550)) )
))
(declare-fun lt!2009982 () Option!14051)

(declare-fun isDefined!11062 (Option!14051) Bool)

(assert (=> b!4901760 (= lt!2009983 (isDefined!11062 lt!2009982))))

(assert (=> b!4901760 (= lt!2009984 false)))

(declare-fun maxPrefixOneRule!3544 (LexerInterface!7787 Rule!16190 List!56589) Option!14051)

(declare-fun list!17765 (BalanceConc!28956) List!56589)

(assert (=> b!4901760 (= lt!2009982 (maxPrefixOneRule!3544 thiss!15943 rule!164 (list!17765 input!1509)))))

(declare-fun b!4901761 () Bool)

(declare-fun res!2093683 () Bool)

(assert (=> b!4901761 (=> (not res!2093683) (not e!3064010))))

(declare-datatypes ((tuple2!60552 0))(
  ( (tuple2!60553 (_1!33579 Token!14942) (_2!33579 BalanceConc!28956)) )
))
(declare-datatypes ((Option!14052 0))(
  ( (None!14051) (Some!14051 (v!50013 tuple2!60552)) )
))
(declare-fun get!19511 (Option!14052) tuple2!60552)

(declare-fun get!19512 (Option!14051) tuple2!60550)

(assert (=> b!4901761 (= res!2093683 (= (_1!33579 (get!19511 None!14051)) (_1!33578 (get!19512 lt!2009982))))))

(assert (= (and start!513582 res!2093684) b!4901757))

(assert (= (and b!4901757 res!2093682) b!4901755))

(assert (= (and b!4901755 res!2093685) b!4901760))

(assert (= (and b!4901760 res!2093681) b!4901761))

(assert (= (and b!4901761 res!2093683) b!4901759))

(assert (= b!4901754 b!4901758))

(assert (= start!513582 b!4901754))

(assert (= start!513582 b!4901756))

(declare-fun m!5910394 () Bool)

(assert (=> b!4901754 m!5910394))

(declare-fun m!5910396 () Bool)

(assert (=> b!4901754 m!5910396))

(declare-fun m!5910398 () Bool)

(assert (=> b!4901761 m!5910398))

(declare-fun m!5910400 () Bool)

(assert (=> b!4901761 m!5910400))

(declare-fun m!5910402 () Bool)

(assert (=> b!4901757 m!5910402))

(declare-fun m!5910404 () Bool)

(assert (=> b!4901755 m!5910404))

(declare-fun m!5910406 () Bool)

(assert (=> b!4901755 m!5910406))

(declare-fun m!5910408 () Bool)

(assert (=> start!513582 m!5910408))

(declare-fun m!5910410 () Bool)

(assert (=> b!4901760 m!5910410))

(declare-fun m!5910412 () Bool)

(assert (=> b!4901760 m!5910412))

(assert (=> b!4901760 m!5910412))

(declare-fun m!5910414 () Bool)

(assert (=> b!4901760 m!5910414))

(declare-fun m!5910416 () Bool)

(assert (=> b!4901756 m!5910416))

(push 1)

(assert b_and!346145)

(assert b_and!346143)

(assert (not b!4901756))

(assert (not b_next!132541))

(assert (not b!4901760))

(assert (not b!4901755))

(assert (not b!4901757))

(assert (not b_next!132543))

(assert (not b!4901754))

(assert (not start!513582))

(assert (not b!4901761))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346145)

(assert b_and!346143)

(assert (not b_next!132543))

(assert (not b_next!132541))

(check-sat)

(pop 1)

