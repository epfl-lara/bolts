; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511658 () Bool)

(assert start!511658)

(declare-fun b!4888062 () Bool)

(declare-fun b_free!131363 () Bool)

(declare-fun b_next!132153 () Bool)

(assert (=> b!4888062 (= b_free!131363 (not b_next!132153))))

(declare-fun tp!1375659 () Bool)

(declare-fun b_and!344195 () Bool)

(assert (=> b!4888062 (= tp!1375659 b_and!344195)))

(declare-fun b_free!131365 () Bool)

(declare-fun b_next!132155 () Bool)

(assert (=> b!4888062 (= b_free!131365 (not b_next!132155))))

(declare-fun tp!1375660 () Bool)

(declare-fun b_and!344197 () Bool)

(assert (=> b!4888062 (= tp!1375660 b_and!344197)))

(declare-fun res!2087544 () Bool)

(declare-fun e!3055691 () Bool)

(assert (=> start!511658 (=> (not res!2087544) (not e!3055691))))

(declare-datatypes ((LexerInterface!7745 0))(
  ( (LexerInterfaceExt!7742 (__x!34219 Int)) (Lexer!7743) )
))
(declare-fun thiss!14805 () LexerInterface!7745)

(assert (=> start!511658 (= res!2087544 (is-Lexer!7743 thiss!14805))))

(assert (=> start!511658 e!3055691))

(assert (=> start!511658 true))

(declare-fun e!3055688 () Bool)

(assert (=> start!511658 e!3055688))

(declare-datatypes ((C!26654 0))(
  ( (C!26655 (val!22661 Int)) )
))
(declare-datatypes ((List!56464 0))(
  ( (Nil!56340) (Cons!56340 (h!62788 C!26654) (t!365110 List!56464)) )
))
(declare-datatypes ((IArray!29503 0))(
  ( (IArray!29504 (innerList!14809 List!56464)) )
))
(declare-datatypes ((Conc!14721 0))(
  ( (Node!14721 (left!40924 Conc!14721) (right!41254 Conc!14721) (csize!29672 Int) (cheight!14932 Int)) (Leaf!24515 (xs!18037 IArray!29503) (csize!29673 Int)) (Empty!14721) )
))
(declare-datatypes ((BalanceConc!28872 0))(
  ( (BalanceConc!28873 (c!830880 Conc!14721)) )
))
(declare-fun input!1236 () BalanceConc!28872)

(declare-fun e!3055693 () Bool)

(declare-fun inv!72553 (BalanceConc!28872) Bool)

(assert (=> start!511658 (and (inv!72553 input!1236) e!3055693)))

(declare-fun e!3055690 () Bool)

(assert (=> b!4888062 (= e!3055690 (and tp!1375659 tp!1375660))))

(declare-fun b!4888063 () Bool)

(declare-fun tp!1375658 () Bool)

(declare-fun inv!72554 (Conc!14721) Bool)

(assert (=> b!4888063 (= e!3055693 (and (inv!72554 (c!830880 input!1236)) tp!1375658))))

(declare-fun b!4888064 () Bool)

(declare-fun res!2087545 () Bool)

(assert (=> b!4888064 (=> (not res!2087545) (not e!3055691))))

(declare-datatypes ((List!56465 0))(
  ( (Nil!56341) (Cons!56341 (h!62789 (_ BitVec 16)) (t!365111 List!56465)) )
))
(declare-datatypes ((TokenValue!8463 0))(
  ( (FloatLiteralValue!16926 (text!59686 List!56465)) (TokenValueExt!8462 (__x!34220 Int)) (Broken!42315 (value!261488 List!56465)) (Object!8586) (End!8463) (Def!8463) (Underscore!8463) (Match!8463) (Else!8463) (Error!8463) (Case!8463) (If!8463) (Extends!8463) (Abstract!8463) (Class!8463) (Val!8463) (DelimiterValue!16926 (del!8523 List!56465)) (KeywordValue!8469 (value!261489 List!56465)) (CommentValue!16926 (value!261490 List!56465)) (WhitespaceValue!16926 (value!261491 List!56465)) (IndentationValue!8463 (value!261492 List!56465)) (String!63758) (Int32!8463) (Broken!42316 (value!261493 List!56465)) (Boolean!8464) (Unit!146330) (OperatorValue!8466 (op!8523 List!56465)) (IdentifierValue!16926 (value!261494 List!56465)) (IdentifierValue!16927 (value!261495 List!56465)) (WhitespaceValue!16927 (value!261496 List!56465)) (True!16926) (False!16926) (Broken!42317 (value!261497 List!56465)) (Broken!42318 (value!261498 List!56465)) (True!16927) (RightBrace!8463) (RightBracket!8463) (Colon!8463) (Null!8463) (Comma!8463) (LeftBracket!8463) (False!16927) (LeftBrace!8463) (ImaginaryLiteralValue!8463 (text!59687 List!56465)) (StringLiteralValue!25389 (value!261499 List!56465)) (EOFValue!8463 (value!261500 List!56465)) (IdentValue!8463 (value!261501 List!56465)) (DelimiterValue!16927 (value!261502 List!56465)) (DedentValue!8463 (value!261503 List!56465)) (NewLineValue!8463 (value!261504 List!56465)) (IntegerValue!25389 (value!261505 (_ BitVec 32)) (text!59688 List!56465)) (IntegerValue!25390 (value!261506 Int) (text!59689 List!56465)) (Times!8463) (Or!8463) (Equal!8463) (Minus!8463) (Broken!42319 (value!261507 List!56465)) (And!8463) (Div!8463) (LessEqual!8463) (Mod!8463) (Concat!21691) (Not!8463) (Plus!8463) (SpaceValue!8463 (value!261508 List!56465)) (IntegerValue!25391 (value!261509 Int) (text!59690 List!56465)) (StringLiteralValue!25390 (text!59691 List!56465)) (FloatLiteralValue!16927 (text!59692 List!56465)) (BytesLiteralValue!8463 (value!261510 List!56465)) (CommentValue!16927 (value!261511 List!56465)) (StringLiteralValue!25391 (value!261512 List!56465)) (ErrorTokenValue!8463 (msg!8524 List!56465)) )
))
(declare-datatypes ((Regex!13228 0))(
  ( (ElementMatch!13228 (c!830881 C!26654)) (Concat!21692 (regOne!26968 Regex!13228) (regTwo!26968 Regex!13228)) (EmptyExpr!13228) (Star!13228 (reg!13557 Regex!13228)) (EmptyLang!13228) (Union!13228 (regOne!26969 Regex!13228) (regTwo!26969 Regex!13228)) )
))
(declare-datatypes ((String!63759 0))(
  ( (String!63760 (value!261513 String)) )
))
(declare-datatypes ((TokenValueInjection!16234 0))(
  ( (TokenValueInjection!16235 (toValue!11040 Int) (toChars!10899 Int)) )
))
(declare-datatypes ((Rule!16106 0))(
  ( (Rule!16107 (regex!8153 Regex!13228) (tag!9017 String!63759) (isSeparator!8153 Bool) (transformation!8153 TokenValueInjection!16234)) )
))
(declare-datatypes ((List!56466 0))(
  ( (Nil!56342) (Cons!56342 (h!62790 Rule!16106) (t!365112 List!56466)) )
))
(declare-fun rulesArg!165 () List!56466)

(declare-fun isEmpty!30207 (List!56466) Bool)

(assert (=> b!4888064 (= res!2087545 (not (isEmpty!30207 rulesArg!165)))))

(declare-fun b!4888065 () Bool)

(declare-fun res!2087543 () Bool)

(assert (=> b!4888065 (=> (not res!2087543) (not e!3055691))))

(declare-fun rulesValidInductive!3132 (LexerInterface!7745 List!56466) Bool)

(assert (=> b!4888065 (= res!2087543 (rulesValidInductive!3132 thiss!14805 rulesArg!165))))

(declare-fun b!4888066 () Bool)

(declare-fun tp!1375662 () Bool)

(declare-fun e!3055687 () Bool)

(declare-fun inv!72550 (String!63759) Bool)

(declare-fun inv!72555 (TokenValueInjection!16234) Bool)

(assert (=> b!4888066 (= e!3055687 (and tp!1375662 (inv!72550 (tag!9017 (h!62790 rulesArg!165))) (inv!72555 (transformation!8153 (h!62790 rulesArg!165))) e!3055690))))

(declare-fun b!4888067 () Bool)

(declare-fun e!3055689 () Bool)

(assert (=> b!4888067 (= e!3055691 (not e!3055689))))

(declare-fun res!2087546 () Bool)

(assert (=> b!4888067 (=> res!2087546 e!3055689)))

(assert (=> b!4888067 (= res!2087546 (or (and (is-Cons!56342 rulesArg!165) (is-Nil!56342 (t!365112 rulesArg!165))) (is-Cons!56342 rulesArg!165)))))

(declare-fun lt!2003385 () List!56464)

(declare-fun isPrefix!4875 (List!56464 List!56464) Bool)

(assert (=> b!4888067 (isPrefix!4875 lt!2003385 lt!2003385)))

(declare-datatypes ((Unit!146331 0))(
  ( (Unit!146332) )
))
(declare-fun lt!2003386 () Unit!146331)

(declare-fun lemmaIsPrefixRefl!3272 (List!56464 List!56464) Unit!146331)

(assert (=> b!4888067 (= lt!2003386 (lemmaIsPrefixRefl!3272 lt!2003385 lt!2003385))))

(declare-fun list!17693 (BalanceConc!28872) List!56464)

(assert (=> b!4888067 (= lt!2003385 (list!17693 input!1236))))

(declare-fun b!4888068 () Bool)

(declare-fun tp!1375661 () Bool)

(assert (=> b!4888068 (= e!3055688 (and e!3055687 tp!1375661))))

(declare-fun b!4888069 () Bool)

(assert (=> b!4888069 (= e!3055689 true)))

(declare-datatypes ((Token!14874 0))(
  ( (Token!14875 (value!261514 TokenValue!8463) (rule!11331 Rule!16106) (size!37099 Int) (originalCharacters!8468 List!56464)) )
))
(declare-datatypes ((tuple2!60356 0))(
  ( (tuple2!60357 (_1!33481 Token!14874) (_2!33481 List!56464)) )
))
(declare-datatypes ((Option!13989 0))(
  ( (None!13988) (Some!13988 (v!49938 tuple2!60356)) )
))
(declare-fun lt!2003384 () Option!13989)

(declare-fun maxPrefixZipper!656 (LexerInterface!7745 List!56466 List!56464) Option!13989)

(assert (=> b!4888069 (= lt!2003384 (maxPrefixZipper!656 thiss!14805 rulesArg!165 lt!2003385))))

(assert (= (and start!511658 res!2087544) b!4888065))

(assert (= (and b!4888065 res!2087543) b!4888064))

(assert (= (and b!4888064 res!2087545) b!4888067))

(assert (= (and b!4888067 (not res!2087546)) b!4888069))

(assert (= b!4888066 b!4888062))

(assert (= b!4888068 b!4888066))

(assert (= (and start!511658 (is-Cons!56342 rulesArg!165)) b!4888068))

(assert (= start!511658 b!4888063))

(declare-fun m!5891748 () Bool)

(assert (=> b!4888063 m!5891748))

(declare-fun m!5891750 () Bool)

(assert (=> start!511658 m!5891750))

(declare-fun m!5891752 () Bool)

(assert (=> b!4888065 m!5891752))

(declare-fun m!5891754 () Bool)

(assert (=> b!4888064 m!5891754))

(declare-fun m!5891756 () Bool)

(assert (=> b!4888069 m!5891756))

(declare-fun m!5891758 () Bool)

(assert (=> b!4888067 m!5891758))

(declare-fun m!5891760 () Bool)

(assert (=> b!4888067 m!5891760))

(declare-fun m!5891762 () Bool)

(assert (=> b!4888067 m!5891762))

(declare-fun m!5891764 () Bool)

(assert (=> b!4888066 m!5891764))

(declare-fun m!5891766 () Bool)

(assert (=> b!4888066 m!5891766))

(push 1)

(assert b_and!344195)

(assert (not b!4888067))

(assert (not start!511658))

(assert (not b!4888065))

(assert (not b!4888064))

(assert (not b_next!132153))

(assert (not b!4888069))

(assert b_and!344197)

(assert (not b!4888063))

(assert (not b!4888066))

(assert (not b!4888068))

(assert (not b_next!132155))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344197)

(assert b_and!344195)

(assert (not b_next!132153))

(assert (not b_next!132155))

(check-sat)

(pop 1)

