; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347970 () Bool)

(assert start!347970)

(declare-fun b!3695124 () Bool)

(declare-fun b_free!98201 () Bool)

(declare-fun b_next!98905 () Bool)

(assert (=> b!3695124 (= b_free!98201 (not b_next!98905))))

(declare-fun tp!1122991 () Bool)

(declare-fun b_and!276123 () Bool)

(assert (=> b!3695124 (= tp!1122991 b_and!276123)))

(declare-fun b_free!98203 () Bool)

(declare-fun b_next!98907 () Bool)

(assert (=> b!3695124 (= b_free!98203 (not b_next!98907))))

(declare-fun tp!1122990 () Bool)

(declare-fun b_and!276125 () Bool)

(assert (=> b!3695124 (= tp!1122990 b_and!276125)))

(declare-fun b!3695129 () Bool)

(declare-fun b_free!98205 () Bool)

(declare-fun b_next!98909 () Bool)

(assert (=> b!3695129 (= b_free!98205 (not b_next!98909))))

(declare-fun tp!1122995 () Bool)

(declare-fun b_and!276127 () Bool)

(assert (=> b!3695129 (= tp!1122995 b_and!276127)))

(declare-fun b_free!98207 () Bool)

(declare-fun b_next!98911 () Bool)

(assert (=> b!3695129 (= b_free!98207 (not b_next!98911))))

(declare-fun tp!1122997 () Bool)

(declare-fun b_and!276129 () Bool)

(assert (=> b!3695129 (= tp!1122997 b_and!276129)))

(declare-fun b!3695119 () Bool)

(declare-fun e!2288128 () Bool)

(declare-fun tp_is_empty!18461 () Bool)

(declare-fun tp!1122996 () Bool)

(assert (=> b!3695119 (= e!2288128 (and tp_is_empty!18461 tp!1122996))))

(declare-fun e!2288135 () Bool)

(declare-datatypes ((List!39306 0))(
  ( (Nil!39182) (Cons!39182 (h!44602 (_ BitVec 16)) (t!301641 List!39306)) )
))
(declare-datatypes ((TokenValue!6164 0))(
  ( (FloatLiteralValue!12328 (text!43593 List!39306)) (TokenValueExt!6163 (__x!24545 Int)) (Broken!30820 (value!189547 List!39306)) (Object!6287) (End!6164) (Def!6164) (Underscore!6164) (Match!6164) (Else!6164) (Error!6164) (Case!6164) (If!6164) (Extends!6164) (Abstract!6164) (Class!6164) (Val!6164) (DelimiterValue!12328 (del!6224 List!39306)) (KeywordValue!6170 (value!189548 List!39306)) (CommentValue!12328 (value!189549 List!39306)) (WhitespaceValue!12328 (value!189550 List!39306)) (IndentationValue!6164 (value!189551 List!39306)) (String!44153) (Int32!6164) (Broken!30821 (value!189552 List!39306)) (Boolean!6165) (Unit!57179) (OperatorValue!6167 (op!6224 List!39306)) (IdentifierValue!12328 (value!189553 List!39306)) (IdentifierValue!12329 (value!189554 List!39306)) (WhitespaceValue!12329 (value!189555 List!39306)) (True!12328) (False!12328) (Broken!30822 (value!189556 List!39306)) (Broken!30823 (value!189557 List!39306)) (True!12329) (RightBrace!6164) (RightBracket!6164) (Colon!6164) (Null!6164) (Comma!6164) (LeftBracket!6164) (False!12329) (LeftBrace!6164) (ImaginaryLiteralValue!6164 (text!43594 List!39306)) (StringLiteralValue!18492 (value!189558 List!39306)) (EOFValue!6164 (value!189559 List!39306)) (IdentValue!6164 (value!189560 List!39306)) (DelimiterValue!12329 (value!189561 List!39306)) (DedentValue!6164 (value!189562 List!39306)) (NewLineValue!6164 (value!189563 List!39306)) (IntegerValue!18492 (value!189564 (_ BitVec 32)) (text!43595 List!39306)) (IntegerValue!18493 (value!189565 Int) (text!43596 List!39306)) (Times!6164) (Or!6164) (Equal!6164) (Minus!6164) (Broken!30824 (value!189566 List!39306)) (And!6164) (Div!6164) (LessEqual!6164) (Mod!6164) (Concat!16857) (Not!6164) (Plus!6164) (SpaceValue!6164 (value!189567 List!39306)) (IntegerValue!18494 (value!189568 Int) (text!43597 List!39306)) (StringLiteralValue!18493 (text!43598 List!39306)) (FloatLiteralValue!12329 (text!43599 List!39306)) (BytesLiteralValue!6164 (value!189569 List!39306)) (CommentValue!12329 (value!189570 List!39306)) (StringLiteralValue!18494 (value!189571 List!39306)) (ErrorTokenValue!6164 (msg!6225 List!39306)) )
))
(declare-datatypes ((C!21572 0))(
  ( (C!21573 (val!12834 Int)) )
))
(declare-datatypes ((List!39307 0))(
  ( (Nil!39183) (Cons!39183 (h!44603 C!21572) (t!301642 List!39307)) )
))
(declare-datatypes ((IArray!24067 0))(
  ( (IArray!24068 (innerList!12091 List!39307)) )
))
(declare-datatypes ((Conc!12031 0))(
  ( (Node!12031 (left!30544 Conc!12031) (right!30874 Conc!12031) (csize!24292 Int) (cheight!12242 Int)) (Leaf!18609 (xs!15233 IArray!24067) (csize!24293 Int)) (Empty!12031) )
))
(declare-datatypes ((BalanceConc!23676 0))(
  ( (BalanceConc!23677 (c!638810 Conc!12031)) )
))
(declare-datatypes ((String!44154 0))(
  ( (String!44155 (value!189572 String)) )
))
(declare-datatypes ((TokenValueInjection!11756 0))(
  ( (TokenValueInjection!11757 (toValue!8266 Int) (toChars!8125 Int)) )
))
(declare-datatypes ((Regex!10693 0))(
  ( (ElementMatch!10693 (c!638811 C!21572)) (Concat!16858 (regOne!21898 Regex!10693) (regTwo!21898 Regex!10693)) (EmptyExpr!10693) (Star!10693 (reg!11022 Regex!10693)) (EmptyLang!10693) (Union!10693 (regOne!21899 Regex!10693) (regTwo!21899 Regex!10693)) )
))
(declare-datatypes ((Rule!11668 0))(
  ( (Rule!11669 (regex!5934 Regex!10693) (tag!6758 String!44154) (isSeparator!5934 Bool) (transformation!5934 TokenValueInjection!11756)) )
))
(declare-datatypes ((Token!11222 0))(
  ( (Token!11223 (value!189573 TokenValue!6164) (rule!8788 Rule!11668) (size!29912 Int) (originalCharacters!6642 List!39307)) )
))
(declare-fun token!544 () Token!11222)

(declare-fun tp!1122992 () Bool)

(declare-fun b!3695120 () Bool)

(declare-fun e!2288131 () Bool)

(declare-fun inv!21 (TokenValue!6164) Bool)

(assert (=> b!3695120 (= e!2288135 (and (inv!21 (value!189573 token!544)) e!2288131 tp!1122992))))

(declare-fun b!3695121 () Bool)

(declare-fun e!2288129 () Bool)

(declare-fun e!2288142 () Bool)

(assert (=> b!3695121 (= e!2288129 e!2288142)))

(declare-fun res!1502427 () Bool)

(assert (=> b!3695121 (=> (not res!1502427) (not e!2288142))))

(declare-datatypes ((tuple2!39076 0))(
  ( (tuple2!39077 (_1!22672 Token!11222) (_2!22672 List!39307)) )
))
(declare-datatypes ((Option!8451 0))(
  ( (None!8450) (Some!8450 (v!38408 tuple2!39076)) )
))
(declare-fun lt!1293416 () Option!8451)

(declare-fun isDefined!6642 (Option!8451) Bool)

(assert (=> b!3695121 (= res!1502427 (isDefined!6642 lt!1293416))))

(declare-fun input!3172 () List!39307)

(declare-datatypes ((List!39308 0))(
  ( (Nil!39184) (Cons!39184 (h!44604 Rule!11668) (t!301643 List!39308)) )
))
(declare-fun rules!3598 () List!39308)

(declare-datatypes ((LexerInterface!5523 0))(
  ( (LexerInterfaceExt!5520 (__x!24546 Int)) (Lexer!5521) )
))
(declare-fun thiss!25322 () LexerInterface!5523)

(declare-fun maxPrefix!3045 (LexerInterface!5523 List!39308 List!39307) Option!8451)

(assert (=> b!3695121 (= lt!1293416 (maxPrefix!3045 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3695122 () Bool)

(declare-fun res!1502430 () Bool)

(assert (=> b!3695122 (=> (not res!1502430) (not e!2288129))))

(declare-fun isEmpty!23354 (List!39308) Bool)

(assert (=> b!3695122 (= res!1502430 (not (isEmpty!23354 rules!3598)))))

(declare-fun b!3695123 () Bool)

(declare-fun res!1502432 () Bool)

(assert (=> b!3695123 (=> (not res!1502432) (not e!2288129))))

(declare-fun rulesInvariant!4920 (LexerInterface!5523 List!39308) Bool)

(assert (=> b!3695123 (= res!1502432 (rulesInvariant!4920 thiss!25322 rules!3598))))

(declare-fun b!3695125 () Bool)

(declare-fun e!2288139 () Bool)

(declare-fun tp!1122998 () Bool)

(declare-fun e!2288132 () Bool)

(declare-fun inv!52662 (String!44154) Bool)

(declare-fun inv!52665 (TokenValueInjection!11756) Bool)

(assert (=> b!3695125 (= e!2288139 (and tp!1122998 (inv!52662 (tag!6758 (h!44604 rules!3598))) (inv!52665 (transformation!5934 (h!44604 rules!3598))) e!2288132))))

(declare-fun tp!1122994 () Bool)

(declare-fun b!3695126 () Bool)

(declare-fun e!2288136 () Bool)

(assert (=> b!3695126 (= e!2288131 (and tp!1122994 (inv!52662 (tag!6758 (rule!8788 token!544))) (inv!52665 (transformation!5934 (rule!8788 token!544))) e!2288136))))

(declare-fun b!3695127 () Bool)

(declare-fun res!1502423 () Bool)

(assert (=> b!3695127 (=> (not res!1502423) (not e!2288142))))

(declare-fun get!13007 (Option!8451) tuple2!39076)

(assert (=> b!3695127 (= res!1502423 (= (_1!22672 (get!13007 lt!1293416)) token!544))))

(declare-fun b!3695128 () Bool)

(declare-fun e!2288137 () Bool)

(declare-fun e!2288133 () Bool)

(assert (=> b!3695128 (= e!2288137 e!2288133)))

(declare-fun res!1502424 () Bool)

(assert (=> b!3695128 (=> (not res!1502424) (not e!2288133))))

(declare-fun lt!1293414 () List!39307)

(declare-fun matchR!5236 (Regex!10693 List!39307) Bool)

(assert (=> b!3695128 (= res!1502424 (matchR!5236 (regex!5934 (h!44604 rules!3598)) lt!1293414))))

(declare-fun list!14646 (BalanceConc!23676) List!39307)

(declare-fun charsOf!3933 (Token!11222) BalanceConc!23676)

(assert (=> b!3695128 (= lt!1293414 (list!14646 (charsOf!3933 token!544)))))

(assert (=> b!3695129 (= e!2288136 (and tp!1122995 tp!1122997))))

(declare-fun b!3695130 () Bool)

(declare-fun e!2288140 () Bool)

(assert (=> b!3695130 (= e!2288133 e!2288140)))

(declare-fun res!1502425 () Bool)

(assert (=> b!3695130 (=> (not res!1502425) (not e!2288140))))

(declare-datatypes ((Option!8452 0))(
  ( (None!8451) (Some!8451 (v!38409 Rule!11668)) )
))
(declare-fun lt!1293413 () Option!8452)

(declare-fun isDefined!6643 (Option!8452) Bool)

(assert (=> b!3695130 (= res!1502425 (isDefined!6643 lt!1293413))))

(declare-fun getRuleFromTag!1494 (LexerInterface!5523 List!39308 String!44154) Option!8452)

(assert (=> b!3695130 (= lt!1293413 (getRuleFromTag!1494 thiss!25322 rules!3598 (tag!6758 (rule!8788 token!544))))))

(declare-fun b!3695131 () Bool)

(declare-fun e!2288138 () Bool)

(declare-fun tp!1122993 () Bool)

(assert (=> b!3695131 (= e!2288138 (and e!2288139 tp!1122993))))

(declare-fun b!3695132 () Bool)

(assert (=> b!3695132 (= e!2288140 false)))

(declare-fun lt!1293412 () Bool)

(declare-fun get!13008 (Option!8452) Rule!11668)

(assert (=> b!3695132 (= lt!1293412 (matchR!5236 (regex!5934 (get!13008 lt!1293413)) lt!1293414))))

(declare-fun res!1502426 () Bool)

(assert (=> start!347970 (=> (not res!1502426) (not e!2288129))))

(get-info :version)

(assert (=> start!347970 (= res!1502426 ((_ is Lexer!5521) thiss!25322))))

(assert (=> start!347970 e!2288129))

(assert (=> start!347970 true))

(assert (=> start!347970 e!2288138))

(declare-fun inv!52666 (Token!11222) Bool)

(assert (=> start!347970 (and (inv!52666 token!544) e!2288135)))

(assert (=> start!347970 e!2288128))

(assert (=> b!3695124 (= e!2288132 (and tp!1122991 tp!1122990))))

(declare-fun b!3695133 () Bool)

(assert (=> b!3695133 (= e!2288142 e!2288137)))

(declare-fun res!1502428 () Bool)

(assert (=> b!3695133 (=> (not res!1502428) (not e!2288137))))

(declare-fun lt!1293415 () Option!8451)

(assert (=> b!3695133 (= res!1502428 (isDefined!6642 lt!1293415))))

(declare-fun maxPrefixOneRule!2159 (LexerInterface!5523 Rule!11668 List!39307) Option!8451)

(assert (=> b!3695133 (= lt!1293415 (maxPrefixOneRule!2159 thiss!25322 (h!44604 rules!3598) input!3172))))

(declare-fun b!3695134 () Bool)

(declare-fun res!1502429 () Bool)

(assert (=> b!3695134 (=> (not res!1502429) (not e!2288137))))

(assert (=> b!3695134 (= res!1502429 (= (h!44604 rules!3598) (rule!8788 token!544)))))

(declare-fun b!3695135 () Bool)

(declare-fun res!1502431 () Bool)

(assert (=> b!3695135 (=> (not res!1502431) (not e!2288137))))

(assert (=> b!3695135 (= res!1502431 (= (_1!22672 (get!13007 lt!1293415)) token!544))))

(declare-fun b!3695136 () Bool)

(declare-fun res!1502433 () Bool)

(assert (=> b!3695136 (=> (not res!1502433) (not e!2288142))))

(assert (=> b!3695136 (= res!1502433 ((_ is Cons!39184) rules!3598))))

(assert (= (and start!347970 res!1502426) b!3695123))

(assert (= (and b!3695123 res!1502432) b!3695122))

(assert (= (and b!3695122 res!1502430) b!3695121))

(assert (= (and b!3695121 res!1502427) b!3695127))

(assert (= (and b!3695127 res!1502423) b!3695136))

(assert (= (and b!3695136 res!1502433) b!3695133))

(assert (= (and b!3695133 res!1502428) b!3695135))

(assert (= (and b!3695135 res!1502431) b!3695134))

(assert (= (and b!3695134 res!1502429) b!3695128))

(assert (= (and b!3695128 res!1502424) b!3695130))

(assert (= (and b!3695130 res!1502425) b!3695132))

(assert (= b!3695125 b!3695124))

(assert (= b!3695131 b!3695125))

(assert (= (and start!347970 ((_ is Cons!39184) rules!3598)) b!3695131))

(assert (= b!3695126 b!3695129))

(assert (= b!3695120 b!3695126))

(assert (= start!347970 b!3695120))

(assert (= (and start!347970 ((_ is Cons!39183) input!3172)) b!3695119))

(declare-fun m!4206963 () Bool)

(assert (=> b!3695123 m!4206963))

(declare-fun m!4206965 () Bool)

(assert (=> b!3695133 m!4206965))

(declare-fun m!4206967 () Bool)

(assert (=> b!3695133 m!4206967))

(declare-fun m!4206969 () Bool)

(assert (=> b!3695132 m!4206969))

(declare-fun m!4206971 () Bool)

(assert (=> b!3695132 m!4206971))

(declare-fun m!4206973 () Bool)

(assert (=> b!3695120 m!4206973))

(declare-fun m!4206975 () Bool)

(assert (=> b!3695121 m!4206975))

(declare-fun m!4206977 () Bool)

(assert (=> b!3695121 m!4206977))

(declare-fun m!4206979 () Bool)

(assert (=> b!3695125 m!4206979))

(declare-fun m!4206981 () Bool)

(assert (=> b!3695125 m!4206981))

(declare-fun m!4206983 () Bool)

(assert (=> b!3695126 m!4206983))

(declare-fun m!4206985 () Bool)

(assert (=> b!3695126 m!4206985))

(declare-fun m!4206987 () Bool)

(assert (=> b!3695127 m!4206987))

(declare-fun m!4206989 () Bool)

(assert (=> b!3695122 m!4206989))

(declare-fun m!4206991 () Bool)

(assert (=> start!347970 m!4206991))

(declare-fun m!4206993 () Bool)

(assert (=> b!3695128 m!4206993))

(declare-fun m!4206995 () Bool)

(assert (=> b!3695128 m!4206995))

(assert (=> b!3695128 m!4206995))

(declare-fun m!4206997 () Bool)

(assert (=> b!3695128 m!4206997))

(declare-fun m!4206999 () Bool)

(assert (=> b!3695130 m!4206999))

(declare-fun m!4207001 () Bool)

(assert (=> b!3695130 m!4207001))

(declare-fun m!4207003 () Bool)

(assert (=> b!3695135 m!4207003))

(check-sat (not b_next!98907) (not b!3695130) b_and!276127 (not b_next!98909) (not b!3695126) (not b_next!98911) (not b_next!98905) b_and!276129 tp_is_empty!18461 b_and!276125 (not b!3695128) b_and!276123 (not b!3695133) (not b!3695119) (not b!3695135) (not start!347970) (not b!3695127) (not b!3695125) (not b!3695121) (not b!3695120) (not b!3695131) (not b!3695123) (not b!3695132) (not b!3695122))
(check-sat (not b_next!98907) b_and!276127 (not b_next!98909) (not b_next!98911) (not b_next!98905) b_and!276129 b_and!276125 b_and!276123)
