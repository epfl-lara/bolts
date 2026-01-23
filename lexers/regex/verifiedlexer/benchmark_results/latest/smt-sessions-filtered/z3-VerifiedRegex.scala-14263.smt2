; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745500 () Bool)

(assert start!745500)

(declare-fun b!7902422 () Bool)

(declare-fun b_free!134759 () Bool)

(declare-fun b_next!135549 () Bool)

(assert (=> b!7902422 (= b_free!134759 (not b_next!135549))))

(declare-fun tp!2354249 () Bool)

(declare-fun b_and!352787 () Bool)

(assert (=> b!7902422 (= tp!2354249 b_and!352787)))

(declare-fun b_free!134761 () Bool)

(declare-fun b_next!135551 () Bool)

(assert (=> b!7902422 (= b_free!134761 (not b_next!135551))))

(declare-fun tp!2354250 () Bool)

(declare-fun b_and!352789 () Bool)

(assert (=> b!7902422 (= tp!2354250 b_and!352789)))

(declare-fun b!7902420 () Bool)

(declare-fun e!4664548 () Bool)

(declare-fun e!4664544 () Bool)

(assert (=> b!7902420 (= e!4664548 e!4664544)))

(declare-fun res!3135413 () Bool)

(assert (=> b!7902420 (=> res!3135413 e!4664544)))

(declare-datatypes ((C!42920 0))(
  ( (C!42921 (val!31924 Int)) )
))
(declare-datatypes ((List!74296 0))(
  ( (Nil!74172) (Cons!74172 (h!80620 C!42920) (t!389301 List!74296)) )
))
(declare-datatypes ((IArray!31593 0))(
  ( (IArray!31594 (innerList!15854 List!74296)) )
))
(declare-datatypes ((Conc!15766 0))(
  ( (Node!15766 (left!56585 Conc!15766) (right!56915 Conc!15766) (csize!31762 Int) (cheight!15977 Int)) (Leaf!30030 (xs!19148 IArray!31593) (csize!31763 Int)) (Empty!15766) )
))
(declare-datatypes ((BalanceConc!30650 0))(
  ( (BalanceConc!30651 (c!1450217 Conc!15766)) )
))
(declare-datatypes ((List!74297 0))(
  ( (Nil!74173) (Cons!74173 (h!80621 (_ BitVec 16)) (t!389302 List!74297)) )
))
(declare-datatypes ((TokenValue!8908 0))(
  ( (FloatLiteralValue!17816 (text!62801 List!74297)) (TokenValueExt!8907 (__x!35103 Int)) (Broken!44540 (value!286827 List!74297)) (Object!9031) (End!8908) (Def!8908) (Underscore!8908) (Match!8908) (Else!8908) (Error!8908) (Case!8908) (If!8908) (Extends!8908) (Abstract!8908) (Class!8908) (Val!8908) (DelimiterValue!17816 (del!8968 List!74297)) (KeywordValue!8914 (value!286828 List!74297)) (CommentValue!17816 (value!286829 List!74297)) (WhitespaceValue!17816 (value!286830 List!74297)) (IndentationValue!8908 (value!286831 List!74297)) (String!82961) (Int32!8908) (Broken!44541 (value!286832 List!74297)) (Boolean!8909) (Unit!169202) (OperatorValue!8911 (op!8968 List!74297)) (IdentifierValue!17816 (value!286833 List!74297)) (IdentifierValue!17817 (value!286834 List!74297)) (WhitespaceValue!17817 (value!286835 List!74297)) (True!17816) (False!17816) (Broken!44542 (value!286836 List!74297)) (Broken!44543 (value!286837 List!74297)) (True!17817) (RightBrace!8908) (RightBracket!8908) (Colon!8908) (Null!8908) (Comma!8908) (LeftBracket!8908) (False!17817) (LeftBrace!8908) (ImaginaryLiteralValue!8908 (text!62802 List!74297)) (StringLiteralValue!26724 (value!286838 List!74297)) (EOFValue!8908 (value!286839 List!74297)) (IdentValue!8908 (value!286840 List!74297)) (DelimiterValue!17817 (value!286841 List!74297)) (DedentValue!8908 (value!286842 List!74297)) (NewLineValue!8908 (value!286843 List!74297)) (IntegerValue!26724 (value!286844 (_ BitVec 32)) (text!62803 List!74297)) (IntegerValue!26725 (value!286845 Int) (text!62804 List!74297)) (Times!8908) (Or!8908) (Equal!8908) (Minus!8908) (Broken!44544 (value!286846 List!74297)) (And!8908) (Div!8908) (LessEqual!8908) (Mod!8908) (Concat!30203) (Not!8908) (Plus!8908) (SpaceValue!8908 (value!286847 List!74297)) (IntegerValue!26726 (value!286848 Int) (text!62805 List!74297)) (StringLiteralValue!26725 (text!62806 List!74297)) (FloatLiteralValue!17817 (text!62807 List!74297)) (BytesLiteralValue!8908 (value!286849 List!74297)) (CommentValue!17817 (value!286850 List!74297)) (StringLiteralValue!26726 (value!286851 List!74297)) (ErrorTokenValue!8908 (msg!8969 List!74297)) )
))
(declare-datatypes ((Regex!21295 0))(
  ( (ElementMatch!21295 (c!1450218 C!42920)) (Concat!30204 (regOne!43102 Regex!21295) (regTwo!43102 Regex!21295)) (EmptyExpr!21295) (Star!21295 (reg!21624 Regex!21295)) (EmptyLang!21295) (Union!21295 (regOne!43103 Regex!21295) (regTwo!43103 Regex!21295)) )
))
(declare-datatypes ((String!82962 0))(
  ( (String!82963 (value!286852 String)) )
))
(declare-datatypes ((TokenValueInjection!17124 0))(
  ( (TokenValueInjection!17125 (toValue!11641 Int) (toChars!11500 Int)) )
))
(declare-datatypes ((Rule!16984 0))(
  ( (Rule!16985 (regex!8592 Regex!21295) (tag!9456 String!82962) (isSeparator!8592 Bool) (transformation!8592 TokenValueInjection!17124)) )
))
(declare-datatypes ((Token!15604 0))(
  ( (Token!15605 (value!286853 TokenValue!8908) (rule!11880 Rule!16984) (size!42978 Int) (originalCharacters!8833 List!74296)) )
))
(declare-datatypes ((tuple2!70210 0))(
  ( (tuple2!70211 (_1!38408 Token!15604) (_2!38408 List!74296)) )
))
(declare-fun lt!2683819 () tuple2!70210)

(declare-fun list!19219 (BalanceConc!30650) List!74296)

(declare-fun charsOf!5536 (Token!15604) BalanceConc!30650)

(assert (=> b!7902420 (= res!3135413 (not (= (list!19219 (charsOf!5536 (_1!38408 lt!2683819))) (originalCharacters!8833 (_1!38408 lt!2683819)))))))

(declare-datatypes ((Option!17874 0))(
  ( (None!17873) (Some!17873 (v!55014 tuple2!70210)) )
))
(declare-fun lt!2683823 () Option!17874)

(declare-fun get!26642 (Option!17874) tuple2!70210)

(assert (=> b!7902420 (= lt!2683819 (get!26642 lt!2683823))))

(declare-fun b!7902421 () Bool)

(declare-fun e!4664540 () Bool)

(declare-fun e!4664547 () Bool)

(assert (=> b!7902421 (= e!4664540 (not e!4664547))))

(declare-fun res!3135412 () Bool)

(assert (=> b!7902421 (=> res!3135412 e!4664547)))

(declare-datatypes ((List!74298 0))(
  ( (Nil!74174) (Cons!74174 (h!80622 Rule!16984) (t!389303 List!74298)) )
))
(declare-fun rulesArg!141 () List!74298)

(get-info :version)

(assert (=> b!7902421 (= res!3135412 (or (and ((_ is Cons!74174) rulesArg!141) ((_ is Nil!74174) (t!389303 rulesArg!141))) (not ((_ is Cons!74174) rulesArg!141))))))

(declare-fun input!1184 () List!74296)

(declare-fun isPrefix!6425 (List!74296 List!74296) Bool)

(assert (=> b!7902421 (isPrefix!6425 input!1184 input!1184)))

(declare-datatypes ((Unit!169203 0))(
  ( (Unit!169204) )
))
(declare-fun lt!2683821 () Unit!169203)

(declare-fun lemmaIsPrefixRefl!3936 (List!74296 List!74296) Unit!169203)

(assert (=> b!7902421 (= lt!2683821 (lemmaIsPrefixRefl!3936 input!1184 input!1184))))

(declare-fun e!4664541 () Bool)

(assert (=> b!7902422 (= e!4664541 (and tp!2354249 tp!2354250))))

(declare-fun b!7902423 () Bool)

(declare-fun e!4664546 () Bool)

(declare-fun e!4664542 () Bool)

(declare-fun tp!2354246 () Bool)

(assert (=> b!7902423 (= e!4664546 (and e!4664542 tp!2354246))))

(declare-fun b!7902419 () Bool)

(assert (=> b!7902419 (= e!4664544 true)))

(declare-fun lt!2683822 () Int)

(declare-fun size!42979 (List!74296) Int)

(assert (=> b!7902419 (= lt!2683822 (size!42979 input!1184))))

(declare-fun lt!2683820 () Int)

(assert (=> b!7902419 (= lt!2683820 (size!42979 (_2!38408 lt!2683819)))))

(declare-fun res!3135410 () Bool)

(assert (=> start!745500 (=> (not res!3135410) (not e!4664540))))

(declare-datatypes ((LexerInterface!8184 0))(
  ( (LexerInterfaceExt!8181 (__x!35104 Int)) (Lexer!8182) )
))
(declare-fun thiss!14377 () LexerInterface!8184)

(assert (=> start!745500 (= res!3135410 ((_ is Lexer!8182) thiss!14377))))

(assert (=> start!745500 e!4664540))

(assert (=> start!745500 true))

(assert (=> start!745500 e!4664546))

(declare-fun e!4664545 () Bool)

(assert (=> start!745500 e!4664545))

(declare-fun b!7902424 () Bool)

(declare-fun res!3135409 () Bool)

(assert (=> b!7902424 (=> res!3135409 e!4664548)))

(declare-fun isDefined!14450 (Option!17874) Bool)

(assert (=> b!7902424 (= res!3135409 (not (isDefined!14450 lt!2683823)))))

(declare-fun b!7902425 () Bool)

(assert (=> b!7902425 (= e!4664547 e!4664548)))

(declare-fun res!3135407 () Bool)

(assert (=> b!7902425 (=> res!3135407 e!4664548)))

(declare-fun lt!2683824 () Option!17874)

(assert (=> b!7902425 (= res!3135407 (or (and ((_ is None!17873) lt!2683823) ((_ is None!17873) lt!2683824)) ((_ is None!17873) lt!2683824) ((_ is None!17873) lt!2683823) (< (size!42978 (_1!38408 (v!55014 lt!2683823))) (size!42978 (_1!38408 (v!55014 lt!2683824))))))))

(declare-fun maxPrefix!4725 (LexerInterface!8184 List!74298 List!74296) Option!17874)

(assert (=> b!7902425 (= lt!2683824 (maxPrefix!4725 thiss!14377 (t!389303 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3772 (LexerInterface!8184 Rule!16984 List!74296) Option!17874)

(assert (=> b!7902425 (= lt!2683823 (maxPrefixOneRule!3772 thiss!14377 (h!80622 rulesArg!141) input!1184))))

(declare-fun b!7902426 () Bool)

(declare-fun res!3135406 () Bool)

(assert (=> b!7902426 (=> res!3135406 e!4664548)))

(declare-fun isEmpty!42552 (Option!17874) Bool)

(assert (=> b!7902426 (= res!3135406 (isEmpty!42552 lt!2683823))))

(declare-fun b!7902427 () Bool)

(declare-fun res!3135411 () Bool)

(assert (=> b!7902427 (=> (not res!3135411) (not e!4664540))))

(declare-fun rulesValidInductive!3403 (LexerInterface!8184 List!74298) Bool)

(assert (=> b!7902427 (= res!3135411 (rulesValidInductive!3403 thiss!14377 rulesArg!141))))

(declare-fun b!7902428 () Bool)

(declare-fun tp_is_empty!52965 () Bool)

(declare-fun tp!2354247 () Bool)

(assert (=> b!7902428 (= e!4664545 (and tp_is_empty!52965 tp!2354247))))

(declare-fun b!7902429 () Bool)

(declare-fun res!3135408 () Bool)

(assert (=> b!7902429 (=> (not res!3135408) (not e!4664540))))

(declare-fun isEmpty!42553 (List!74298) Bool)

(assert (=> b!7902429 (= res!3135408 (not (isEmpty!42553 rulesArg!141)))))

(declare-fun tp!2354248 () Bool)

(declare-fun b!7902430 () Bool)

(declare-fun inv!95162 (String!82962) Bool)

(declare-fun inv!95164 (TokenValueInjection!17124) Bool)

(assert (=> b!7902430 (= e!4664542 (and tp!2354248 (inv!95162 (tag!9456 (h!80622 rulesArg!141))) (inv!95164 (transformation!8592 (h!80622 rulesArg!141))) e!4664541))))

(assert (= (and start!745500 res!3135410) b!7902427))

(assert (= (and b!7902427 res!3135411) b!7902429))

(assert (= (and b!7902429 res!3135408) b!7902421))

(assert (= (and b!7902421 (not res!3135412)) b!7902425))

(assert (= (and b!7902425 (not res!3135407)) b!7902426))

(assert (= (and b!7902426 (not res!3135406)) b!7902424))

(assert (= (and b!7902424 (not res!3135409)) b!7902420))

(assert (= (and b!7902420 (not res!3135413)) b!7902419))

(assert (= b!7902430 b!7902422))

(assert (= b!7902423 b!7902430))

(assert (= (and start!745500 ((_ is Cons!74174) rulesArg!141)) b!7902423))

(assert (= (and start!745500 ((_ is Cons!74172) input!1184)) b!7902428))

(declare-fun m!8277118 () Bool)

(assert (=> b!7902426 m!8277118))

(declare-fun m!8277120 () Bool)

(assert (=> b!7902421 m!8277120))

(declare-fun m!8277122 () Bool)

(assert (=> b!7902421 m!8277122))

(declare-fun m!8277124 () Bool)

(assert (=> b!7902425 m!8277124))

(declare-fun m!8277126 () Bool)

(assert (=> b!7902425 m!8277126))

(declare-fun m!8277128 () Bool)

(assert (=> b!7902424 m!8277128))

(declare-fun m!8277130 () Bool)

(assert (=> b!7902429 m!8277130))

(declare-fun m!8277132 () Bool)

(assert (=> b!7902420 m!8277132))

(assert (=> b!7902420 m!8277132))

(declare-fun m!8277134 () Bool)

(assert (=> b!7902420 m!8277134))

(declare-fun m!8277136 () Bool)

(assert (=> b!7902420 m!8277136))

(declare-fun m!8277138 () Bool)

(assert (=> b!7902419 m!8277138))

(declare-fun m!8277140 () Bool)

(assert (=> b!7902419 m!8277140))

(declare-fun m!8277142 () Bool)

(assert (=> b!7902430 m!8277142))

(declare-fun m!8277144 () Bool)

(assert (=> b!7902430 m!8277144))

(declare-fun m!8277146 () Bool)

(assert (=> b!7902427 m!8277146))

(check-sat (not b!7902424) (not b!7902421) (not b!7902420) (not b!7902426) tp_is_empty!52965 (not b!7902429) (not b!7902428) (not b!7902427) (not b!7902419) (not b!7902430) (not b!7902425) (not b_next!135549) b_and!352789 (not b_next!135551) (not b!7902423) b_and!352787)
(check-sat b_and!352789 b_and!352787 (not b_next!135551) (not b_next!135549))
