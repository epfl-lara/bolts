; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345638 () Bool)

(assert start!345638)

(declare-fun b!3682523 () Bool)

(declare-fun b_free!97581 () Bool)

(declare-fun b_next!98285 () Bool)

(assert (=> b!3682523 (= b_free!97581 (not b_next!98285))))

(declare-fun tp!1119231 () Bool)

(declare-fun b_and!275231 () Bool)

(assert (=> b!3682523 (= tp!1119231 b_and!275231)))

(declare-fun b_free!97583 () Bool)

(declare-fun b_next!98287 () Bool)

(assert (=> b!3682523 (= b_free!97583 (not b_next!98287))))

(declare-fun tp!1119230 () Bool)

(declare-fun b_and!275233 () Bool)

(assert (=> b!3682523 (= tp!1119230 b_and!275233)))

(declare-fun b!3682518 () Bool)

(declare-fun e!2280295 () Bool)

(declare-fun tp_is_empty!18305 () Bool)

(declare-fun tp!1119232 () Bool)

(assert (=> b!3682518 (= e!2280295 (and tp_is_empty!18305 tp!1119232))))

(declare-fun b!3682519 () Bool)

(declare-fun e!2280294 () Bool)

(declare-fun tp!1119229 () Bool)

(declare-datatypes ((List!38968 0))(
  ( (Nil!38844) (Cons!38844 (h!44264 (_ BitVec 16)) (t!300863 List!38968)) )
))
(declare-datatypes ((TokenValue!6082 0))(
  ( (FloatLiteralValue!12164 (text!43019 List!38968)) (TokenValueExt!6081 (__x!24381 Int)) (Broken!30410 (value!187216 List!38968)) (Object!6205) (End!6082) (Def!6082) (Underscore!6082) (Match!6082) (Else!6082) (Error!6082) (Case!6082) (If!6082) (Extends!6082) (Abstract!6082) (Class!6082) (Val!6082) (DelimiterValue!12164 (del!6142 List!38968)) (KeywordValue!6088 (value!187217 List!38968)) (CommentValue!12164 (value!187218 List!38968)) (WhitespaceValue!12164 (value!187219 List!38968)) (IndentationValue!6082 (value!187220 List!38968)) (String!43743) (Int32!6082) (Broken!30411 (value!187221 List!38968)) (Boolean!6083) (Unit!56953) (OperatorValue!6085 (op!6142 List!38968)) (IdentifierValue!12164 (value!187222 List!38968)) (IdentifierValue!12165 (value!187223 List!38968)) (WhitespaceValue!12165 (value!187224 List!38968)) (True!12164) (False!12164) (Broken!30412 (value!187225 List!38968)) (Broken!30413 (value!187226 List!38968)) (True!12165) (RightBrace!6082) (RightBracket!6082) (Colon!6082) (Null!6082) (Comma!6082) (LeftBracket!6082) (False!12165) (LeftBrace!6082) (ImaginaryLiteralValue!6082 (text!43020 List!38968)) (StringLiteralValue!18246 (value!187227 List!38968)) (EOFValue!6082 (value!187228 List!38968)) (IdentValue!6082 (value!187229 List!38968)) (DelimiterValue!12165 (value!187230 List!38968)) (DedentValue!6082 (value!187231 List!38968)) (NewLineValue!6082 (value!187232 List!38968)) (IntegerValue!18246 (value!187233 (_ BitVec 32)) (text!43021 List!38968)) (IntegerValue!18247 (value!187234 Int) (text!43022 List!38968)) (Times!6082) (Or!6082) (Equal!6082) (Minus!6082) (Broken!30414 (value!187235 List!38968)) (And!6082) (Div!6082) (LessEqual!6082) (Mod!6082) (Concat!16693) (Not!6082) (Plus!6082) (SpaceValue!6082 (value!187236 List!38968)) (IntegerValue!18248 (value!187237 Int) (text!43023 List!38968)) (StringLiteralValue!18247 (text!43024 List!38968)) (FloatLiteralValue!12165 (text!43025 List!38968)) (BytesLiteralValue!6082 (value!187238 List!38968)) (CommentValue!12165 (value!187239 List!38968)) (StringLiteralValue!18248 (value!187240 List!38968)) (ErrorTokenValue!6082 (msg!6143 List!38968)) )
))
(declare-datatypes ((C!21408 0))(
  ( (C!21409 (val!12752 Int)) )
))
(declare-datatypes ((List!38969 0))(
  ( (Nil!38845) (Cons!38845 (h!44265 C!21408) (t!300864 List!38969)) )
))
(declare-datatypes ((IArray!23793 0))(
  ( (IArray!23794 (innerList!11954 List!38969)) )
))
(declare-datatypes ((Regex!10611 0))(
  ( (ElementMatch!10611 (c!637035 C!21408)) (Concat!16694 (regOne!21734 Regex!10611) (regTwo!21734 Regex!10611)) (EmptyExpr!10611) (Star!10611 (reg!10940 Regex!10611)) (EmptyLang!10611) (Union!10611 (regOne!21735 Regex!10611) (regTwo!21735 Regex!10611)) )
))
(declare-datatypes ((Conc!11894 0))(
  ( (Node!11894 (left!30310 Conc!11894) (right!30640 Conc!11894) (csize!24018 Int) (cheight!12105 Int)) (Leaf!18431 (xs!15096 IArray!23793) (csize!24019 Int)) (Empty!11894) )
))
(declare-datatypes ((BalanceConc!23402 0))(
  ( (BalanceConc!23403 (c!637036 Conc!11894)) )
))
(declare-datatypes ((String!43744 0))(
  ( (String!43745 (value!187241 String)) )
))
(declare-datatypes ((TokenValueInjection!11592 0))(
  ( (TokenValueInjection!11593 (toValue!8148 Int) (toChars!8007 Int)) )
))
(declare-datatypes ((Rule!11504 0))(
  ( (Rule!11505 (regex!5852 Regex!10611) (tag!6658 String!43744) (isSeparator!5852 Bool) (transformation!5852 TokenValueInjection!11592)) )
))
(declare-datatypes ((List!38970 0))(
  ( (Nil!38846) (Cons!38846 (h!44266 Rule!11504) (t!300865 List!38970)) )
))
(declare-fun rules!3568 () List!38970)

(declare-fun e!2280296 () Bool)

(declare-fun inv!52341 (String!43744) Bool)

(declare-fun inv!52343 (TokenValueInjection!11592) Bool)

(assert (=> b!3682519 (= e!2280294 (and tp!1119229 (inv!52341 (tag!6658 (h!44266 rules!3568))) (inv!52343 (transformation!5852 (h!44266 rules!3568))) e!2280296))))

(declare-fun b!3682520 () Bool)

(declare-fun res!1496221 () Bool)

(declare-fun e!2280297 () Bool)

(assert (=> b!3682520 (=> (not res!1496221) (not e!2280297))))

(declare-datatypes ((LexerInterface!5441 0))(
  ( (LexerInterfaceExt!5438 (__x!24382 Int)) (Lexer!5439) )
))
(declare-fun thiss!25197 () LexerInterface!5441)

(declare-fun rulesInvariant!4838 (LexerInterface!5441 List!38970) Bool)

(assert (=> b!3682520 (= res!1496221 (rulesInvariant!4838 thiss!25197 rules!3568))))

(declare-fun res!1496222 () Bool)

(assert (=> start!345638 (=> (not res!1496222) (not e!2280297))))

(get-info :version)

(assert (=> start!345638 (= res!1496222 ((_ is Lexer!5439) thiss!25197))))

(assert (=> start!345638 e!2280297))

(assert (=> start!345638 true))

(declare-fun e!2280293 () Bool)

(assert (=> start!345638 e!2280293))

(assert (=> start!345638 e!2280295))

(declare-fun b!3682521 () Bool)

(declare-fun res!1496220 () Bool)

(assert (=> b!3682521 (=> (not res!1496220) (not e!2280297))))

(declare-fun isEmpty!23074 (List!38970) Bool)

(assert (=> b!3682521 (= res!1496220 (not (isEmpty!23074 rules!3568)))))

(declare-fun b!3682522 () Bool)

(assert (=> b!3682522 (= e!2280297 false)))

(declare-fun input!3129 () List!38969)

(declare-fun lt!1288016 () Bool)

(declare-datatypes ((Token!11070 0))(
  ( (Token!11071 (value!187242 TokenValue!6082) (rule!8692 Rule!11504) (size!29701 Int) (originalCharacters!6566 List!38969)) )
))
(declare-datatypes ((List!38971 0))(
  ( (Nil!38847) (Cons!38847 (h!44267 Token!11070) (t!300866 List!38971)) )
))
(declare-datatypes ((IArray!23795 0))(
  ( (IArray!23796 (innerList!11955 List!38971)) )
))
(declare-datatypes ((Conc!11895 0))(
  ( (Node!11895 (left!30311 Conc!11895) (right!30641 Conc!11895) (csize!24020 Int) (cheight!12106 Int)) (Leaf!18432 (xs!15097 IArray!23795) (csize!24021 Int)) (Empty!11895) )
))
(declare-datatypes ((BalanceConc!23404 0))(
  ( (BalanceConc!23405 (c!637037 Conc!11895)) )
))
(declare-fun isEmpty!23075 (BalanceConc!23404) Bool)

(declare-datatypes ((tuple2!38712 0))(
  ( (tuple2!38713 (_1!22490 BalanceConc!23404) (_2!22490 BalanceConc!23402)) )
))
(declare-fun lex!2582 (LexerInterface!5441 List!38970 BalanceConc!23402) tuple2!38712)

(declare-fun seqFromList!4401 (List!38969) BalanceConc!23402)

(assert (=> b!3682522 (= lt!1288016 (isEmpty!23075 (_1!22490 (lex!2582 thiss!25197 rules!3568 (seqFromList!4401 input!3129)))))))

(assert (=> b!3682523 (= e!2280296 (and tp!1119231 tp!1119230))))

(declare-fun b!3682524 () Bool)

(declare-fun tp!1119228 () Bool)

(assert (=> b!3682524 (= e!2280293 (and e!2280294 tp!1119228))))

(assert (= (and start!345638 res!1496222) b!3682521))

(assert (= (and b!3682521 res!1496220) b!3682520))

(assert (= (and b!3682520 res!1496221) b!3682522))

(assert (= b!3682519 b!3682523))

(assert (= b!3682524 b!3682519))

(assert (= (and start!345638 ((_ is Cons!38846) rules!3568)) b!3682524))

(assert (= (and start!345638 ((_ is Cons!38845) input!3129)) b!3682518))

(declare-fun m!4193547 () Bool)

(assert (=> b!3682519 m!4193547))

(declare-fun m!4193549 () Bool)

(assert (=> b!3682519 m!4193549))

(declare-fun m!4193551 () Bool)

(assert (=> b!3682520 m!4193551))

(declare-fun m!4193553 () Bool)

(assert (=> b!3682521 m!4193553))

(declare-fun m!4193555 () Bool)

(assert (=> b!3682522 m!4193555))

(assert (=> b!3682522 m!4193555))

(declare-fun m!4193557 () Bool)

(assert (=> b!3682522 m!4193557))

(declare-fun m!4193559 () Bool)

(assert (=> b!3682522 m!4193559))

(check-sat (not b!3682518) (not b_next!98285) (not b!3682519) (not b_next!98287) (not b!3682524) (not b!3682520) (not b!3682521) b_and!275233 b_and!275231 tp_is_empty!18305 (not b!3682522))
(check-sat b_and!275231 b_and!275233 (not b_next!98287) (not b_next!98285))
