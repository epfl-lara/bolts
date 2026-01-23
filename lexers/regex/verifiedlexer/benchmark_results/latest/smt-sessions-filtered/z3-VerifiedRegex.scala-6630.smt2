; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349526 () Bool)

(assert start!349526)

(declare-fun b!3705890 () Bool)

(declare-fun b_free!99149 () Bool)

(declare-fun b_next!99853 () Bool)

(assert (=> b!3705890 (= b_free!99149 (not b_next!99853))))

(declare-fun tp!1127350 () Bool)

(declare-fun b_and!277383 () Bool)

(assert (=> b!3705890 (= tp!1127350 b_and!277383)))

(declare-fun b_free!99151 () Bool)

(declare-fun b_next!99855 () Bool)

(assert (=> b!3705890 (= b_free!99151 (not b_next!99855))))

(declare-fun tp!1127347 () Bool)

(declare-fun b_and!277385 () Bool)

(assert (=> b!3705890 (= tp!1127347 b_and!277385)))

(declare-fun b!3705883 () Bool)

(declare-fun b_free!99153 () Bool)

(declare-fun b_next!99857 () Bool)

(assert (=> b!3705883 (= b_free!99153 (not b_next!99857))))

(declare-fun tp!1127351 () Bool)

(declare-fun b_and!277387 () Bool)

(assert (=> b!3705883 (= tp!1127351 b_and!277387)))

(declare-fun b_free!99155 () Bool)

(declare-fun b_next!99859 () Bool)

(assert (=> b!3705883 (= b_free!99155 (not b_next!99859))))

(declare-fun tp!1127349 () Bool)

(declare-fun b_and!277389 () Bool)

(assert (=> b!3705883 (= tp!1127349 b_and!277389)))

(declare-fun b!3705880 () Bool)

(declare-fun e!2295760 () Bool)

(declare-fun e!2295766 () Bool)

(assert (=> b!3705880 (= e!2295760 e!2295766)))

(declare-fun e!2295756 () Bool)

(declare-fun b!3705881 () Bool)

(declare-datatypes ((List!39678 0))(
  ( (Nil!39554) (Cons!39554 (h!44974 (_ BitVec 16)) (t!302361 List!39678)) )
))
(declare-datatypes ((TokenValue!6270 0))(
  ( (FloatLiteralValue!12540 (text!44335 List!39678)) (TokenValueExt!6269 (__x!24757 Int)) (Broken!31350 (value!192513 List!39678)) (Object!6393) (End!6270) (Def!6270) (Underscore!6270) (Match!6270) (Else!6270) (Error!6270) (Case!6270) (If!6270) (Extends!6270) (Abstract!6270) (Class!6270) (Val!6270) (DelimiterValue!12540 (del!6330 List!39678)) (KeywordValue!6276 (value!192514 List!39678)) (CommentValue!12540 (value!192515 List!39678)) (WhitespaceValue!12540 (value!192516 List!39678)) (IndentationValue!6270 (value!192517 List!39678)) (String!44683) (Int32!6270) (Broken!31351 (value!192518 List!39678)) (Boolean!6271) (Unit!57437) (OperatorValue!6273 (op!6330 List!39678)) (IdentifierValue!12540 (value!192519 List!39678)) (IdentifierValue!12541 (value!192520 List!39678)) (WhitespaceValue!12541 (value!192521 List!39678)) (True!12540) (False!12540) (Broken!31352 (value!192522 List!39678)) (Broken!31353 (value!192523 List!39678)) (True!12541) (RightBrace!6270) (RightBracket!6270) (Colon!6270) (Null!6270) (Comma!6270) (LeftBracket!6270) (False!12541) (LeftBrace!6270) (ImaginaryLiteralValue!6270 (text!44336 List!39678)) (StringLiteralValue!18810 (value!192524 List!39678)) (EOFValue!6270 (value!192525 List!39678)) (IdentValue!6270 (value!192526 List!39678)) (DelimiterValue!12541 (value!192527 List!39678)) (DedentValue!6270 (value!192528 List!39678)) (NewLineValue!6270 (value!192529 List!39678)) (IntegerValue!18810 (value!192530 (_ BitVec 32)) (text!44337 List!39678)) (IntegerValue!18811 (value!192531 Int) (text!44338 List!39678)) (Times!6270) (Or!6270) (Equal!6270) (Minus!6270) (Broken!31354 (value!192532 List!39678)) (And!6270) (Div!6270) (LessEqual!6270) (Mod!6270) (Concat!17069) (Not!6270) (Plus!6270) (SpaceValue!6270 (value!192533 List!39678)) (IntegerValue!18812 (value!192534 Int) (text!44339 List!39678)) (StringLiteralValue!18811 (text!44340 List!39678)) (FloatLiteralValue!12541 (text!44341 List!39678)) (BytesLiteralValue!6270 (value!192535 List!39678)) (CommentValue!12541 (value!192536 List!39678)) (StringLiteralValue!18812 (value!192537 List!39678)) (ErrorTokenValue!6270 (msg!6331 List!39678)) )
))
(declare-datatypes ((C!21784 0))(
  ( (C!21785 (val!12940 Int)) )
))
(declare-datatypes ((List!39679 0))(
  ( (Nil!39555) (Cons!39555 (h!44975 C!21784) (t!302362 List!39679)) )
))
(declare-datatypes ((IArray!24279 0))(
  ( (IArray!24280 (innerList!12197 List!39679)) )
))
(declare-datatypes ((Conc!12137 0))(
  ( (Node!12137 (left!30715 Conc!12137) (right!31045 Conc!12137) (csize!24504 Int) (cheight!12348 Int)) (Leaf!18768 (xs!15339 IArray!24279) (csize!24505 Int)) (Empty!12137) )
))
(declare-datatypes ((BalanceConc!23888 0))(
  ( (BalanceConc!23889 (c!640050 Conc!12137)) )
))
(declare-datatypes ((Regex!10799 0))(
  ( (ElementMatch!10799 (c!640051 C!21784)) (Concat!17070 (regOne!22110 Regex!10799) (regTwo!22110 Regex!10799)) (EmptyExpr!10799) (Star!10799 (reg!11128 Regex!10799)) (EmptyLang!10799) (Union!10799 (regOne!22111 Regex!10799) (regTwo!22111 Regex!10799)) )
))
(declare-datatypes ((String!44684 0))(
  ( (String!44685 (value!192538 String)) )
))
(declare-datatypes ((TokenValueInjection!11968 0))(
  ( (TokenValueInjection!11969 (toValue!8384 Int) (toChars!8243 Int)) )
))
(declare-datatypes ((Rule!11880 0))(
  ( (Rule!11881 (regex!6040 Regex!10799) (tag!6900 String!44684) (isSeparator!6040 Bool) (transformation!6040 TokenValueInjection!11968)) )
))
(declare-datatypes ((Option!8568 0))(
  ( (None!8567) (Some!8567 (v!38555 Rule!11880)) )
))
(declare-fun err!4185 () Option!8568)

(declare-fun tp!1127346 () Bool)

(declare-fun inv!53038 (String!44684) Bool)

(declare-fun inv!53040 (TokenValueInjection!11968) Bool)

(assert (=> b!3705881 (= e!2295766 (and tp!1127346 (inv!53038 (tag!6900 (v!38555 err!4185))) (inv!53040 (transformation!6040 (v!38555 err!4185))) e!2295756))))

(declare-fun b!3705882 () Bool)

(declare-fun e!2295762 () Bool)

(declare-fun e!2295763 () Bool)

(assert (=> b!3705882 (= e!2295762 e!2295763)))

(declare-fun res!1507605 () Bool)

(assert (=> b!3705882 (=> res!1507605 e!2295763)))

(declare-datatypes ((List!39680 0))(
  ( (Nil!39556) (Cons!39556 (h!44976 Rule!11880) (t!302363 List!39680)) )
))
(declare-fun rules!2525 () List!39680)

(declare-fun lt!1296394 () Rule!11880)

(declare-fun contains!7892 (List!39680 Rule!11880) Bool)

(assert (=> b!3705882 (= res!1507605 (not (contains!7892 rules!2525 lt!1296394)))))

(declare-fun lt!1296393 () Option!8568)

(declare-fun get!13168 (Option!8568) Rule!11880)

(assert (=> b!3705882 (= lt!1296394 (get!13168 lt!1296393))))

(declare-fun e!2295759 () Bool)

(assert (=> b!3705883 (= e!2295759 (and tp!1127351 tp!1127349))))

(declare-fun res!1507608 () Bool)

(declare-fun e!2295758 () Bool)

(assert (=> start!349526 (=> (not res!1507608) (not e!2295758))))

(declare-datatypes ((LexerInterface!5629 0))(
  ( (LexerInterfaceExt!5626 (__x!24758 Int)) (Lexer!5627) )
))
(declare-fun thiss!19663 () LexerInterface!5629)

(get-info :version)

(assert (=> start!349526 (= res!1507608 ((_ is Lexer!5627) thiss!19663))))

(assert (=> start!349526 e!2295758))

(assert (=> start!349526 true))

(declare-fun e!2295765 () Bool)

(assert (=> start!349526 e!2295765))

(declare-fun tag!164 () String!44684)

(assert (=> start!349526 (inv!53038 tag!164)))

(declare-fun b!3705884 () Bool)

(assert (=> b!3705884 (= e!2295758 e!2295762)))

(declare-fun res!1507606 () Bool)

(assert (=> b!3705884 (=> (not res!1507606) (not e!2295762))))

(declare-fun isEmpty!23488 (Option!8568) Bool)

(assert (=> b!3705884 (= res!1507606 (not (isEmpty!23488 lt!1296393)))))

(assert (=> b!3705884 (= lt!1296393 err!4185)))

(assert (=> b!3705884 true))

(assert (=> b!3705884 e!2295760))

(declare-fun b!3705885 () Bool)

(declare-fun tp!1127352 () Bool)

(declare-fun e!2295755 () Bool)

(assert (=> b!3705885 (= e!2295755 (and tp!1127352 (inv!53038 (tag!6900 (h!44976 rules!2525))) (inv!53040 (transformation!6040 (h!44976 rules!2525))) e!2295759))))

(declare-fun b!3705886 () Bool)

(declare-fun tp!1127348 () Bool)

(assert (=> b!3705886 (= e!2295765 (and e!2295755 tp!1127348))))

(declare-fun b!3705887 () Bool)

(declare-fun res!1507604 () Bool)

(assert (=> b!3705887 (=> (not res!1507604) (not e!2295758))))

(declare-fun rulesInvariant!5026 (LexerInterface!5629 List!39680) Bool)

(assert (=> b!3705887 (= res!1507604 (rulesInvariant!5026 thiss!19663 rules!2525))))

(declare-fun b!3705888 () Bool)

(assert (=> b!3705888 (= e!2295763 (not (= (tag!6900 lt!1296394) tag!164)))))

(declare-fun b!3705889 () Bool)

(declare-fun res!1507607 () Bool)

(assert (=> b!3705889 (=> (not res!1507607) (not e!2295758))))

(assert (=> b!3705889 (= res!1507607 (and (or (not ((_ is Cons!39556) rules!2525)) (not (= (tag!6900 (h!44976 rules!2525)) tag!164))) (or (not ((_ is Cons!39556) rules!2525)) (= (tag!6900 (h!44976 rules!2525)) tag!164)) (not ((_ is Nil!39556) rules!2525))))))

(assert (=> b!3705890 (= e!2295756 (and tp!1127350 tp!1127347))))

(assert (= (and start!349526 res!1507608) b!3705887))

(assert (= (and b!3705887 res!1507604) b!3705889))

(assert (= (and b!3705889 res!1507607) b!3705884))

(assert (= b!3705881 b!3705890))

(assert (= b!3705880 b!3705881))

(assert (= (and b!3705884 ((_ is Some!8567) err!4185)) b!3705880))

(assert (= (and b!3705884 res!1507606) b!3705882))

(assert (= (and b!3705882 (not res!1507605)) b!3705888))

(assert (= b!3705885 b!3705883))

(assert (= b!3705886 b!3705885))

(assert (= (and start!349526 ((_ is Cons!39556) rules!2525)) b!3705886))

(declare-fun m!4216031 () Bool)

(assert (=> start!349526 m!4216031))

(declare-fun m!4216033 () Bool)

(assert (=> b!3705882 m!4216033))

(declare-fun m!4216035 () Bool)

(assert (=> b!3705882 m!4216035))

(declare-fun m!4216037 () Bool)

(assert (=> b!3705887 m!4216037))

(declare-fun m!4216039 () Bool)

(assert (=> b!3705884 m!4216039))

(declare-fun m!4216041 () Bool)

(assert (=> b!3705881 m!4216041))

(declare-fun m!4216043 () Bool)

(assert (=> b!3705881 m!4216043))

(declare-fun m!4216045 () Bool)

(assert (=> b!3705885 m!4216045))

(declare-fun m!4216047 () Bool)

(assert (=> b!3705885 m!4216047))

(check-sat (not b_next!99853) (not start!349526) b_and!277383 b_and!277389 (not b!3705884) b_and!277387 (not b_next!99857) (not b!3705887) (not b!3705886) (not b_next!99855) b_and!277385 (not b_next!99859) (not b!3705885) (not b!3705882) (not b!3705881))
(check-sat (not b_next!99853) b_and!277383 (not b_next!99859) b_and!277389 b_and!277387 (not b_next!99857) (not b_next!99855) b_and!277385)
