; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111830 () Bool)

(assert start!111830)

(declare-fun b!1281903 () Bool)

(declare-fun b_free!29843 () Bool)

(declare-fun b_next!30547 () Bool)

(assert (=> b!1281903 (= b_free!29843 (not b_next!30547))))

(declare-fun tp!371866 () Bool)

(declare-fun b_and!84987 () Bool)

(assert (=> b!1281903 (= tp!371866 b_and!84987)))

(declare-fun b_free!29845 () Bool)

(declare-fun b_next!30549 () Bool)

(assert (=> b!1281903 (= b_free!29845 (not b_next!30549))))

(declare-fun tp!371868 () Bool)

(declare-fun b_and!84989 () Bool)

(assert (=> b!1281903 (= tp!371868 b_and!84989)))

(declare-fun b!1281897 () Bool)

(declare-fun e!821669 () Bool)

(assert (=> b!1281897 (= e!821669 false)))

(declare-fun lt!423097 () Bool)

(declare-datatypes ((List!12728 0))(
  ( (Nil!12662) (Cons!12662 (h!18063 (_ BitVec 16)) (t!116552 List!12728)) )
))
(declare-datatypes ((TokenValue!2266 0))(
  ( (FloatLiteralValue!4532 (text!16307 List!12728)) (TokenValueExt!2265 (__x!8304 Int)) (Broken!11330 (value!71621 List!12728)) (Object!2331) (End!2266) (Def!2266) (Underscore!2266) (Match!2266) (Else!2266) (Error!2266) (Case!2266) (If!2266) (Extends!2266) (Abstract!2266) (Class!2266) (Val!2266) (DelimiterValue!4532 (del!2326 List!12728)) (KeywordValue!2272 (value!71622 List!12728)) (CommentValue!4532 (value!71623 List!12728)) (WhitespaceValue!4532 (value!71624 List!12728)) (IndentationValue!2266 (value!71625 List!12728)) (String!15563) (Int32!2266) (Broken!11331 (value!71626 List!12728)) (Boolean!2267) (Unit!18958) (OperatorValue!2269 (op!2326 List!12728)) (IdentifierValue!4532 (value!71627 List!12728)) (IdentifierValue!4533 (value!71628 List!12728)) (WhitespaceValue!4533 (value!71629 List!12728)) (True!4532) (False!4532) (Broken!11332 (value!71630 List!12728)) (Broken!11333 (value!71631 List!12728)) (True!4533) (RightBrace!2266) (RightBracket!2266) (Colon!2266) (Null!2266) (Comma!2266) (LeftBracket!2266) (False!4533) (LeftBrace!2266) (ImaginaryLiteralValue!2266 (text!16308 List!12728)) (StringLiteralValue!6798 (value!71632 List!12728)) (EOFValue!2266 (value!71633 List!12728)) (IdentValue!2266 (value!71634 List!12728)) (DelimiterValue!4533 (value!71635 List!12728)) (DedentValue!2266 (value!71636 List!12728)) (NewLineValue!2266 (value!71637 List!12728)) (IntegerValue!6798 (value!71638 (_ BitVec 32)) (text!16309 List!12728)) (IntegerValue!6799 (value!71639 Int) (text!16310 List!12728)) (Times!2266) (Or!2266) (Equal!2266) (Minus!2266) (Broken!11334 (value!71640 List!12728)) (And!2266) (Div!2266) (LessEqual!2266) (Mod!2266) (Concat!5755) (Not!2266) (Plus!2266) (SpaceValue!2266 (value!71641 List!12728)) (IntegerValue!6800 (value!71642 Int) (text!16311 List!12728)) (StringLiteralValue!6799 (text!16312 List!12728)) (FloatLiteralValue!4533 (text!16313 List!12728)) (BytesLiteralValue!2266 (value!71643 List!12728)) (CommentValue!4533 (value!71644 List!12728)) (StringLiteralValue!6800 (value!71645 List!12728)) (ErrorTokenValue!2266 (msg!2327 List!12728)) )
))
(declare-datatypes ((C!7268 0))(
  ( (C!7269 (val!4194 Int)) )
))
(declare-datatypes ((List!12729 0))(
  ( (Nil!12663) (Cons!12663 (h!18064 C!7268) (t!116553 List!12729)) )
))
(declare-datatypes ((String!15564 0))(
  ( (String!15565 (value!71646 String)) )
))
(declare-datatypes ((IArray!8329 0))(
  ( (IArray!8330 (innerList!4222 List!12729)) )
))
(declare-datatypes ((Conc!4162 0))(
  ( (Node!4162 (left!10953 Conc!4162) (right!11283 Conc!4162) (csize!8554 Int) (cheight!4373 Int)) (Leaf!6446 (xs!6873 IArray!8329) (csize!8555 Int)) (Empty!4162) )
))
(declare-datatypes ((BalanceConc!8264 0))(
  ( (BalanceConc!8265 (c!211377 Conc!4162)) )
))
(declare-datatypes ((Regex!3489 0))(
  ( (ElementMatch!3489 (c!211378 C!7268)) (Concat!5756 (regOne!7490 Regex!3489) (regTwo!7490 Regex!3489)) (EmptyExpr!3489) (Star!3489 (reg!3818 Regex!3489)) (EmptyLang!3489) (Union!3489 (regOne!7491 Regex!3489) (regTwo!7491 Regex!3489)) )
))
(declare-datatypes ((TokenValueInjection!4192 0))(
  ( (TokenValueInjection!4193 (toValue!3343 Int) (toChars!3202 Int)) )
))
(declare-datatypes ((Rule!4152 0))(
  ( (Rule!4153 (regex!2176 Regex!3489) (tag!2438 String!15564) (isSeparator!2176 Bool) (transformation!2176 TokenValueInjection!4192)) )
))
(declare-datatypes ((Token!4014 0))(
  ( (Token!4015 (value!71647 TokenValue!2266) (rule!3915 Rule!4152) (size!10332 Int) (originalCharacters!3038 List!12729)) )
))
(declare-datatypes ((List!12730 0))(
  ( (Nil!12664) (Cons!12664 (h!18065 Token!4014) (t!116554 List!12730)) )
))
(declare-datatypes ((IArray!8331 0))(
  ( (IArray!8332 (innerList!4223 List!12730)) )
))
(declare-datatypes ((Conc!4163 0))(
  ( (Node!4163 (left!10954 Conc!4163) (right!11284 Conc!4163) (csize!8556 Int) (cheight!4374 Int)) (Leaf!6447 (xs!6874 IArray!8331) (csize!8557 Int)) (Empty!4163) )
))
(declare-datatypes ((BalanceConc!8266 0))(
  ( (BalanceConc!8267 (c!211379 Conc!4163)) )
))
(declare-fun ts!110 () BalanceConc!8266)

(declare-fun isEmpty!7529 (BalanceConc!8266) Bool)

(assert (=> b!1281897 (= lt!423097 (isEmpty!7529 ts!110))))

(declare-fun res!575302 () Bool)

(assert (=> start!111830 (=> (not res!575302) (not e!821669))))

(declare-datatypes ((LexerInterface!1871 0))(
  ( (LexerInterfaceExt!1868 (__x!8305 Int)) (Lexer!1869) )
))
(declare-fun thiss!10944 () LexerInterface!1871)

(get-info :version)

(assert (=> start!111830 (= res!575302 ((_ is Lexer!1869) thiss!10944))))

(assert (=> start!111830 e!821669))

(assert (=> start!111830 true))

(declare-fun e!821667 () Bool)

(assert (=> start!111830 e!821667))

(declare-fun e!821668 () Bool)

(declare-fun inv!17056 (BalanceConc!8266) Bool)

(assert (=> start!111830 (and (inv!17056 ts!110) e!821668)))

(declare-fun b!1281898 () Bool)

(declare-fun res!575301 () Bool)

(assert (=> b!1281898 (=> (not res!575301) (not e!821669))))

(declare-datatypes ((List!12731 0))(
  ( (Nil!12665) (Cons!12665 (h!18066 Rule!4152) (t!116555 List!12731)) )
))
(declare-fun rs!174 () List!12731)

(declare-fun rulesInvariant!1744 (LexerInterface!1871 List!12731) Bool)

(assert (=> b!1281898 (= res!575301 (rulesInvariant!1744 thiss!10944 rs!174))))

(declare-fun b!1281899 () Bool)

(declare-fun e!821666 () Bool)

(declare-fun tp!371870 () Bool)

(assert (=> b!1281899 (= e!821667 (and e!821666 tp!371870))))

(declare-fun b!1281900 () Bool)

(declare-fun tp!371869 () Bool)

(declare-fun inv!17057 (Conc!4163) Bool)

(assert (=> b!1281900 (= e!821668 (and (inv!17057 (c!211379 ts!110)) tp!371869))))

(declare-fun b!1281901 () Bool)

(declare-fun res!575300 () Bool)

(assert (=> b!1281901 (=> (not res!575300) (not e!821669))))

(declare-fun isEmpty!7530 (List!12731) Bool)

(assert (=> b!1281901 (= res!575300 (not (isEmpty!7530 rs!174)))))

(declare-fun tp!371867 () Bool)

(declare-fun e!821670 () Bool)

(declare-fun b!1281902 () Bool)

(declare-fun inv!17052 (String!15564) Bool)

(declare-fun inv!17058 (TokenValueInjection!4192) Bool)

(assert (=> b!1281902 (= e!821666 (and tp!371867 (inv!17052 (tag!2438 (h!18066 rs!174))) (inv!17058 (transformation!2176 (h!18066 rs!174))) e!821670))))

(assert (=> b!1281903 (= e!821670 (and tp!371866 tp!371868))))

(assert (= (and start!111830 res!575302) b!1281901))

(assert (= (and b!1281901 res!575300) b!1281898))

(assert (= (and b!1281898 res!575301) b!1281897))

(assert (= b!1281902 b!1281903))

(assert (= b!1281899 b!1281902))

(assert (= (and start!111830 ((_ is Cons!12665) rs!174)) b!1281899))

(assert (= start!111830 b!1281900))

(declare-fun m!1432647 () Bool)

(assert (=> b!1281897 m!1432647))

(declare-fun m!1432649 () Bool)

(assert (=> b!1281901 m!1432649))

(declare-fun m!1432651 () Bool)

(assert (=> b!1281898 m!1432651))

(declare-fun m!1432653 () Bool)

(assert (=> b!1281900 m!1432653))

(declare-fun m!1432655 () Bool)

(assert (=> start!111830 m!1432655))

(declare-fun m!1432657 () Bool)

(assert (=> b!1281902 m!1432657))

(declare-fun m!1432659 () Bool)

(assert (=> b!1281902 m!1432659))

(check-sat (not b!1281902) (not b!1281901) b_and!84987 b_and!84989 (not b!1281900) (not b!1281899) (not b_next!30547) (not start!111830) (not b!1281898) (not b_next!30549) (not b!1281897))
(check-sat b_and!84987 b_and!84989 (not b_next!30547) (not b_next!30549))
